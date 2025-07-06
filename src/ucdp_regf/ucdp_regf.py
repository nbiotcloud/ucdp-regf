#
# MIT License
#
# Copyright (c) 2024-2025 nbiotcloud
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#

"""
Register File.

TODO: example
"""

import re
from functools import cached_property
from typing import ClassVar, Literal, NamedTuple, TypeAlias

import ucdp as u
import ucdp_addr as ua
from icdutil.num import calc_unsigned_width
from pydantic import PositiveInt
from tabulate import tabulate
from ucdp_glbl.mem import MemIoType, SliceWidths, calc_slicewidths

# ACCESSES: TypeAlias = ua.ACCESSES
Access: TypeAlias = ua.Access
ReadOp: TypeAlias = ua.ReadOp
WriteOp: TypeAlias = ua.WriteOp

Prio = Literal["bus", "core"]

# TODO: double check these defaults...
_IN_REGF_DEFAULTS = {
    ua.access.RO: False,
    ua.access.WO: False,
    ua.access.RW: True,
}

GrdErrMode = Literal[None, "W", "C"]


class Field(ua.Field):
    """Field."""

    portgroups: tuple[str, ...] | None = None
    """Portgroups."""
    in_regf: bool
    """Implementation within Regf."""
    upd_prio: Prio | None = None
    """Update Priority: None, 'b'us or 'c'core."""
    upd_strb: bool = False
    """Update strobe towards core."""
    wr_guard: str | None = None
    """Write guard name (must be unique)."""
    guard_err: GrdErrMode = None
    """Bus error on write to guarded/write-once field."""
    signame: str
    """Signal Basename to Core."""
    route: u.Routeables | None = None
    """Optional Route."""
    is_alias: bool = False
    """Used as Alias for Wordio."""

    @property
    def bus_prio(self) -> bool:
        """Update prioriy for bus."""
        if self.upd_prio == "bus":
            return True
        if self.upd_prio == "core":
            return False
        if self.bus and (self.bus.write or (self.bus.read and self.bus.read.data is not None)):
            return True
        return False

    @cached_property
    def valname(self) -> str:
        """Reference to Current Value."""
        if self.in_regf:
            if self.is_alias:
                return f"wvec_{self.signame}_s"
            return f"data_{self.signame}_{'c' if self.is_const else 'r'}"
        basename = "regf"  # TODO: may change depending on 'is_alias'
        if self.portgroups:
            # from core: handle special naming; non-in_regf field cannot be part of more than 1 portgroup
            return f"{basename}_{self.portgroups[0]}_{self.signame}_rbus_i"
        return f"{basename}_{self.signame}_rbus_i"  # from core: std names

    @staticmethod
    def from_word(word: "Word", **kwargs) -> "Field":
        """Create Field Containing Word."""
        type_ = u.UintType(word.width)
        core = word.core
        if core is None:
            core = ua.get_counteraccess(word.bus)
        in_regf = word.in_regf
        if in_regf is None:
            in_regf = get_in_regf(word.bus, core)

        return Field(
            name=word.name,
            type_=type_,
            bus=ua.RW,  # word.bus,
            core=ua.RO,  # core,
            offset=0,
            portgroups=word.portgroups,
            in_regf=True,  # in_regf,
            # upd_prio=word.upd_prio,
            upd_strb=word.upd_strb,
            # wr_guard=word.wr_guard,
            signame=word.name,
            doc=word.doc,
            is_alias=True,
            # attrs=word.attrs,
            # **kwargs,
        )


class Word(ua.Word):
    """Word."""

    portgroups: tuple[str, ...] | None = None
    """Default Portgroups for Fields."""
    in_regf: bool | None = None
    """Default Implementation within Regf."""
    upd_prio: Prio | None = None
    """Update Priority: None, 'b'us or 'c'core."""
    upd_strb: bool = False
    """Update strobe towards core."""
    wr_guard: str | None = None
    """Write guard name (must be unique)."""
    guard_err: GrdErrMode = None
    """Bus error on write to word with guarded/write-once fields."""
    wordio: bool = False
    """Create Word-Based Interface Towards Core."""
    fieldio: bool = True
    """Create Field-Based Interface Towards Core."""

    def _create_field(
        self,
        name,
        bus,
        core,
        portgroups=None,
        signame=None,
        in_regf=None,
        upd_prio=None,
        upd_strb=None,
        wr_guard=None,
        guard_err=None,
        **kwargs,
    ) -> Field:
        if portgroups is None:
            portgroups = self.portgroups
        if signame is None:
            signame = f"{self.name}_{name}"
        if in_regf is None:
            in_regf = self.in_regf
        if core is None:
            core = ua.get_counteraccess(bus)
        if in_regf is None:
            in_regf = get_in_regf(bus, core)
        if upd_prio is None:
            upd_prio = self.upd_prio
        if upd_strb is None:
            upd_strb = self.upd_strb
        if wr_guard is None:
            wr_guard = self.wr_guard
        if guard_err is None:
            guard_err = self.guard_err
        field = Field(
            name=name,
            bus=bus,
            core=core,
            portgroups=portgroups,
            signame=signame,
            in_regf=in_regf,
            upd_prio=upd_prio,
            upd_strb=upd_strb,
            wr_guard=wr_guard,
            guard_err=guard_err,
            **kwargs,
        )
        check_field(self.name, field)
        return field


def get_in_regf(bus: Access, core: Access) -> bool:
    """Calculate whether field is in regf."""
    if bus == ua.access.RO and core == ua.access.RO:
        return True
    return _IN_REGF_DEFAULTS.get(bus, True)


def check_field(wordname: str, field: Field) -> None:
    """Check for Corner Cases On Field."""
    # Multiple Portgroups are not allowed for driven fields
    multigrp = field.portgroups and (len(field.portgroups) > 1)
    provide_coreval = False
    if field.in_regf:
        if field.core and field.core.write and field.core.write.write is not None:
            provide_coreval = True
    elif field.bus and field.bus.read:
        provide_coreval = True
    if multigrp and provide_coreval:
        raise ValueError(
            f"Field '{wordname}.{field.name}' cannot be part of multiple portgroups when core provides a value!"
        )
    # constant value with two locations
    if field.is_const and not field.in_regf:
        raise ValueError(f"Field '{wordname}.{field.name}' with constant value must be in_regf.")
    # unobservable fields
    if (field.bus is None or not field.bus.read) and (field.core is None or not field.core.read):
        raise ValueError(
            f"Field '{wordname}.{field.name}' with access '{field.access!s}' is unobservable (read nowhere)."
        )


class Words(ua.addrspace.Words):
    """Set of Words."""

    def _add_field(self, name: str, type_: u.BaseScalarType, *args, **kwargs):
        signame = kwargs.pop("signame", None) or f"{self.name}_{name}"
        self.word.add_field(name, type_, *args, signame=signame, **kwargs)


class Addrspace(ua.Addrspace):
    """Address Space."""

    portgroups: tuple[str, ...] | None = None
    """Default Portgroups for Words."""
    in_regf: bool | None = None
    """Default Implementation within Regf."""
    upd_prio: Prio | None = None
    """Update Priority: None, 'bus' or 'core'."""
    upd_strb: bool = False
    """Update strobe towards core."""
    wr_guard: str | None = None
    """Write guard name (must be unique)."""
    guard_err: GrdErrMode = None
    """Bus error on write to words with guarded/write-once fields."""

    @cached_property
    def addr_width(self) -> int:
        """Returns derived Address Width for Addrspace."""
        return calc_unsigned_width(self.depth - 1)

    def _create_word(
        self, portgroups=None, in_regf=None, upd_prio=None, upd_strb=None, wr_guard=None, guard_err=None, **kwargs
    ) -> Word:
        if portgroups is None:
            portgroups = self.portgroups
        if in_regf is None:
            in_regf = self.in_regf
        if upd_prio is None:
            upd_prio = self.upd_prio
        if upd_strb is None:
            upd_strb = self.upd_strb
        if wr_guard is None:
            wr_guard = self.wr_guard
        if guard_err is None:
            guard_err = self.guard_err
        return Word(
            portgroups=portgroups,
            in_regf=in_regf,
            upd_prio=upd_prio,
            upd_strb=upd_strb,
            wr_guard=wr_guard,
            guard_err=guard_err,
            **kwargs,
        )

    def _create_words(self, **kwargs) -> Words:
        return Words.create(**kwargs)


def filter_busacc(field: Field) -> bool:
    """Bus accessible Fields."""
    return field.bus and (field.bus.write or field.bus.read)


def filter_regf_flipflops(field: Field) -> bool:
    """In-Regf Flop Fields."""
    return field.in_regf and not field.is_const


def filter_buswrite(field: Field) -> bool:
    """Writable Bus Fields."""
    return field.bus and field.bus.write


def filter_buswriteonce(field: Field) -> bool:
    """Write-Once Bus Fields."""
    return field.bus and field.bus.write and field.bus.write.once


def filter_busread(field: Field) -> bool:
    """Bus-Readable Fields."""
    return field.bus and field.bus.read


def filter_busrdmod(field: Field) -> bool:
    """Modify-on-read Fields in Regf."""
    return field.bus and field.bus.read and field.bus.read.data is not None


def filter_busgrderr(field: Field) -> bool:
    """Fields with conditional Modify Access."""
    return (
        field.bus
        and (
            (field.bus.write and field.bus.write.once)
            or (field.bus.read and field.bus.read.data)
            or (field.wr_guard is not None)
        )
        and (field.guard_err is not None)
    )


def filter_coreacc(field: Field) -> bool:
    """Core-Accessible Fields."""
    return not field.in_regf or (field.core and (field.core.write or field.core.read))


def filter_coreread(field: Field) -> bool:
    """Core-Readable Fields."""
    return field.core and field.core.read


wfp_ident = re.compile(r"((?P<word>\w+)\.(?P<field>\w+))|(?P<port>\w+_i)")


class SigExprTuple(NamedTuple):
    """Used for Guard Management."""

    signame: str
    sigexpr: str


class GrdSlcTuple(NamedTuple):
    """Used for Guard Management."""

    grd: str | None
    slc: str | None


GuardDict: TypeAlias = dict[str, SigExprTuple]
WrdOnceDict: TypeAlias = dict[str, dict[GrdSlcTuple, str]]
FldOnceDict: TypeAlias = dict[str, str]


class UcdpRegfMod(u.ATailoredMod):
    """Register File."""

    width: int = 32
    """Width in Bits."""
    depth: int = 1024
    """Number of words."""
    slicing: PositiveInt | SliceWidths | None = None
    """Use sliced write enables (of same or individual widths)."""

    # Replicated from Addrspace
    portgroups: tuple[str, ...] | None = None
    """Default Portgroups for Words."""
    in_regf: bool | None = None
    """Default Implementation within Regf."""
    upd_prio: Prio | None = None
    """Update Priority: None, 'bus' or 'core'."""
    upd_strb: bool = False
    """Update strobe towards core."""
    wr_guard: str | None = None
    """Write guard name (must be unique)."""
    guard_err: GrdErrMode = None
    """Bus error on write to words with guarded/write-once fields."""

    filelists: ClassVar[u.ModFileLists] = (
        u.ModFileList(
            name="hdl",
            gen="full",
            template_filepaths=("ucdp_regf.sv.mako", "sv.mako"),
        ),
    )

    _soft_rst: str = u.PrivateField(default=None)
    _guards: GuardDict = u.PrivateField(default_factory=dict)
    _wrdonce: WrdOnceDict = u.PrivateField(default_factory=dict)
    _fldonce: FldOnceDict = u.PrivateField(default_factory=dict)

    @cached_property
    def addrspace(self) -> Addrspace:
        """Address Space."""
        return Addrspace(
            name=self.hiername,
            width=self.width,
            depth=self.depth,
            portgroups=self.portgroups,
            in_regf=self.in_regf,
            upd_prio=self.upd_prio,
            upd_strb=self.upd_strb,
            wr_guard=self.wr_guard,
            guard_err=self.guard_err,
        )

    @cached_property
    def _bus_slices(self) -> list[u.Slice]:
        """List of Slices for Bus Write Enables."""
        slicing = self.slicing
        if not slicing:
            return [u.Slice(width=self.width)]
        if isinstance(slicing, int):
            return [u.Slice(right=(idx * slicing), width=slicing) for idx in range(self.width // slicing)]
        right = 0
        slices = []
        for slc in slicing:
            assert slc > 0, f"Illegal value smaller than 1 detected for slicing tuple for '{self.name}'!"
            slices.append(u.Slice(right=right, width=slc))
            right += slc
        return slices

    @cached_property
    def regfiotype(self) -> u.DynamicStructType:
        """IO-Type With All Field-Wise Core Signals ."""
        return get_regfiotype(self.addrspace, (self.slicing is not None))

    @cached_property
    def regfwordiotype(self) -> u.DynamicStructType:
        """IO-Type With All Word-Wise Core Signals ."""
        return get_regfwordiotype(self.addrspace, (self.slicing is not None))

    @cached_property
    def memiotype(self) -> MemIoType:
        """Memory IO-Type."""
        addrwidth = calc_unsigned_width(self.depth - 1)
        slicing = self.slicing
        if slicing is not None and isinstance(slicing, int):
            slicing = calc_slicewidths(self.width, self.slicing)
        return MemIoType(
            datawidth=self.width, addrwidth=addrwidth, writable=True, err=True, slicewidths=slicing, addressing="data"
        )

    def _build(self):
        self.add_port(u.ClkRstAnType(), "main_i")
        self.add_port(self.memiotype, "mem_i")

    def _build_dep(self):
        self.add_port(self.regfiotype, "regf_o")
        self.add_port(self.regfwordiotype, "regfword_o")
        if self.parent:
            _create_route(self, self.addrspace)
        self._prep_guards()
        self._prep_wronce()
        self._add_const_decls()
        self._add_ff_decls()
        self._add_bus_word_en_decls()
        self._add_wrguard_decls()
        self._add_grderr_decls()
        self._add_word_vector_decls()
        self._handle_soft_reset()
        if self.slicing:
            self.add_signal(u.UintType(self.width), "bit_en_s")

    def _handle_soft_reset(self):  # noqa: C901
        if self._soft_rst is None:
            return
        wfp = wfp_ident.match(self._soft_rst)
        if wfp is None or (wfp.group() != self._soft_rst):
            raise ValueError(f"Illegal identifier '{self._soft_rst}' for soft reset.")
        wname = wfp.group("word")
        fname = wfp.group("field")
        pname = wfp.group("port")
        if pname:
            p = self.ports.get(pname, None)
            if p is None:
                self.add_port(u.RstType(), pname)
            elif p.type_ != u.RstType():
                raise ValueError(f"Illegal type '{p.type_}' instead of 'RstType()' for soft reset input '{pname}'.")
            self._soft_rst = SigExprTuple(pname, None)
        else:
            try:
                thefield = self.addrspace.words[wname].fields[fname]
            except KeyError:
                raise ValueError(f"There is no register/field of name '{wname}/{fname}'.") from None
            if not isinstance(thefield.type_, u.RstType):
                raise ValueError(f"Soft reset from {wname}/{fname} is not of type 'RstType()' but '{thefield.type_}'.")
            if self.addrspace.words[wname].depth:
                raise ValueError(f"Soft reset from {wname}/{fname} must not have 'depth'>0 in word.")
            if thefield.in_regf:  # i.e. WO
                raise ValueError(f"Soft reset from {wname}/{fname} must not have 'in_regf=True'.")
            rstname = f"bus_{wname}_{fname}_rst_s"
            rstexpr = f"bus_{wname}_wren_s & mem_wdata_i[{thefield.slice}]"
            if thefield.wr_guard:
                rstexpr += f" & {self._guards[thefield.wr_guard].signame}"
            if (once := self._fldonce.get(thefield.signame, None)) is not None:
                rstexpr += f" & {once}"
            self._soft_rst = SigExprTuple(rstname, rstexpr)
            self.add_signal(u.RstType(), rstname)

    def _add_const_decls(self):
        def filter_regf_consts(field: Field):
            return field.in_regf and field.is_const

        for word, fields in self.addrspace.iter(fieldfilter=filter_regf_consts):
            for field in fields:
                type_ = field.type_
                if word.depth:
                    type_ = u.ArrayType(type_, word.depth)
                signame = f"data_{field.signame}_c"
                self.add_const(type_, signame, comment=f"{word.name} / {field.name}")

    def _add_ff_decls(self):  # noqa: C901
        for word, fields in self.addrspace.iter():
            cmt = f"Word {word.name}"
            for field in fields:  # regular in-regf filed flops
                if not filter_regf_flipflops(field):
                    continue
                type_ = field.type_
                if word.depth:
                    type_ = u.ArrayType(type_, word.depth)
                signame = f"data_{field.signame}_r"
                self.add_signal(type_, signame, comment=cmt)
                cmt = None
            # special purpose flops
            wrotype_ = u.BitType(default=1)
            strbtype_ = u.BitType()
            if word.depth:
                wrotype_ = u.ArrayType(wrotype_, word.depth)
                strbtype_ = u.ArrayType(strbtype_, word.depth)
            if (once := self._wrdonce.get(word.name, None)) is not None:
                for signame in once.values():
                    self.add_signal(wrotype_, signame)
            if word.upd_strb:
                self.add_signal(strbtype_, f"upd_strb_{word.name}_r")
            for field in fields:
                if field.upd_strb:
                    self.add_signal(strbtype_, f"upd_strb_{field.signame}_r")

    def _add_bus_word_en_decls(self):
        cmt = "bus word write enables"
        for word, _ in self.addrspace.iter(fieldfilter=filter_buswrite):
            signame = f"bus_{word.name}_wren_s"
            type_ = u.BitType()
            if word.depth:
                type_ = u.ArrayType(type_, word.depth)
            self.add_signal(type_, signame, comment=cmt)
            cmt = None
        cmt = "bus word read-modify enables"
        for word, _ in self.addrspace.iter(fieldfilter=filter_busrdmod):
            signame = f"bus_{word.name}_rden_s"
            type_ = u.BitType()
            if word.depth:
                type_ = u.ArrayType(type_, word.depth)
            self.add_signal(type_, signame, comment=cmt)
            cmt = None

    def _add_word_vector_decls(self):
        cmt = "word vectors"
        for word, fields in self.addrspace.iter():
            if not (word.wordio or any(filter_busread(field) for field in fields)):
                continue
            signame = f"wvec_{word.name}_s"
            type_ = u.UintType(self.width)
            if word.depth:
                type_ = u.ArrayType(type_, word.depth)
            self.add_signal(type_, signame, comment=cmt)
            cmt = None

    def _add_grderr_decls(self):
        cmt = "guard errors"
        for word, _ in self.addrspace.iter(fieldfilter=filter_busgrderr):
            signame = f"bus_{word.name}_grderr_s"
            type_ = u.BitType()
            if word.depth:
                type_ = u.ArrayType(type_, word.depth)
            self.add_signal(type_, signame, comment=cmt)
            cmt = None

    def _prep_guards(self):
        idx = 0
        for _, fields in self.addrspace.iter(fieldfilter=filter_buswrite):  # TODO: busmodify?
            for field in fields:
                if field.wr_guard:
                    if self._guards.get(field.wr_guard, None) is not None:  # already known
                        continue
                    signame = f"bus_wrguard_{idx}_s"
                    sigexpr = wrguard = field.wr_guard
                    for wfp in wfp_ident.finditer(wrguard):
                        wname = wfp.group("word")
                        fname = wfp.group("field")
                        pname = wfp.group("port")
                        if pname:
                            # check for port already known and for correct type
                            p = self.ports.get(pname, None)
                            if p is not None:
                                if p.type_.bits != 1:
                                    raise ValueError(
                                        f"Illegal type '{p.type_}' for existing signal '{pname}' in wr_guard."
                                    )
                                continue
                            self.add_port(u.BitType(), pname)
                            continue  # no translation necessary for port
                        # translate word/field symnames to their respective signals
                        thefield = self.addrspace.words[wname].fields[fname]
                        sigexpr = sigexpr.replace(wfp.group(), thefield.valname)
                    self._guards[field.wr_guard] = SigExprTuple(signame, sigexpr)
                    idx += 1

    def _prep_wronce(self):
        rslvr = u.ExprResolver(namespace=self.namespace)
        fldonce = {}
        for word, fields in self.addrspace.iter(fieldfilter=filter_buswriteonce):
            wrdonce = {}
            for field in fields:
                guard = field.wr_guard and self._guards[field.wr_guard].signame
                for slcidx, bslc in enumerate(self._bus_slices):
                    if (field.slice.mask & bslc.mask) == field.slice.mask:
                        # field completely covered by bus slice
                        once = f"mem_sel_i[{slcidx}]"
                        break
                else:
                    once = f"bit_en_s{rslvr.resolve_slice(field.slice)}"
                    if field.slice.left != field.slice.right:
                        once = f"(|{once})"
                fldonce[field.signame] = wrdonce.setdefault(
                    GrdSlcTuple(guard, (self.slicing and once)), f"bus_wronce_{word.name}_flg{len(wrdonce)}_r"
                )
            self._wrdonce[word.name] = wrdonce
        self._fldonce = fldonce

    def _add_wrguard_decls(self):
        cmt = "write guards"
        for signame, _ in self._guards.values():
            self.add_signal(u.BitType(), signame, comment=cmt)
            cmt = None

    def add_word(self, *args, **kwargs):
        """Add Word."""
        return self.addrspace.add_word(*args, **kwargs)

    def add_words(self, *args, **kwargs):
        """Add Words."""
        return self.addrspace.add_words(*args, **kwargs)

    def add_soft_rst(self, soft_reset: str = "soft_rst_i"):
        """
        Add Soft Reset.

        Calling w/o argument results in adding input 'soft_rst_i.
        Calling with a string will be treated as soft reset input port name and checked for name and type conformance.
        calling with a string '<word>.<field>' will use this field as soft reset.
        """
        if self._soft_rst is not None:
            raise ValueError(f"Soft reset has been already defined as '{self._soft_rst}'.")
        self._soft_rst = soft_reset

    def get_overview(self) -> str:
        """Overview."""
        data = []
        fldaccs = set()
        rslvr = u.ExprResolver(namespace=self.namespace)
        for word in self.addrspace.words:
            data.append((f"+{word.slice}", word.name, "", "", "", "", ""))
            for field in word.fields:
                impl = "regf" if field.in_regf else "core"
                data.append(
                    (
                        "",
                        rslvr.resolve_slice(field.slice).replace(" ", ""),
                        f".{field.name}",
                        str(field.access),
                        rslvr.resolve_value(field.type_),
                        f"{field.is_const}",
                        impl,
                    )
                )
                if fbus := field.bus:
                    fldaccs.add(fbus)
                if fcore := field.core:
                    fldaccs.add(fcore)
        headers: tuple[str, ...] = ("Offset", "Word", "Field", "Bus/Core", "Reset", "Const", "Impl")
        regovr = tabulate(data, headers=headers)
        accs = [
            (
                fldacc.name,
                (fldacc.read and fldacc.read.title) or "",
                (fldacc.write and fldacc.write.title) or "",
            )
            for fldacc in sorted(fldaccs, key=lambda fldacc: fldacc.name)
        ]
        headers = ("Mnemonic", "ReadOp", "WriteOp")
        accovr = tabulate(accs, headers=headers)
        addrspace = self.addrspace
        addressing = f"Addressing-Width: {self.memiotype.addressing}"
        size = f"Size:             {addrspace.depth}x{addrspace.width} ({addrspace.size})"
        return f"{addressing}\n{size}\n\n\n{regovr}\n\n\n{accovr}"

    def get_addrspaces(self, defines: ua.Defines | None = None) -> ua.Addrspaces:
        """Yield Address Space."""
        yield self.addrspace


Portgroupmap: TypeAlias = dict[str | None, u.DynamicStructType]


def get_regfiotype(addrspace: Addrspace, sliced_en: bool = False) -> u.DynamicStructType:
    """Determine IO-Type for fields in `addrspace`."""
    portgroupmap: Portgroupmap = {None: u.DynamicStructType()}
    for word, fields in addrspace.iter(fieldfilter=filter_coreacc):
        if not word.fieldio:
            assert word.wordio, f"Word {word.name} requires core connection, either 'fieldio' or 'wordio' must be set!"
            continue
        for field in fields:
            _add_field(portgroupmap, field, sliced_en, word.depth)
    return portgroupmap[None]


def get_regfwordiotype(addrspace: Addrspace, sliced_en: bool = False) -> u.DynamicStructType:
    """Determine IO-Type for words in `addrspace`."""
    portgroupmap: Portgroupmap = {None: u.DynamicStructType()}
    for word in addrspace.words:
        if not word.wordio:
            continue
        field = Field.from_word(word)
        _add_field(portgroupmap, field, sliced_en, word.depth)
    return portgroupmap[None]


def _add_field(portgroupmap: Portgroupmap, field: Field, sliced_en: bool, depth: int | None = None):
    for portgroup in field.portgroups or [None]:
        try:
            iotype = portgroupmap[portgroup]
        except KeyError:
            portgroupmap[portgroup] = iotype = u.DynamicStructType()
            portgroupmap[None].add(portgroup, iotype)
        comment = f"bus={field.bus} core={field.core} in_regf={field.in_regf}"
        fieldiotype = FieldIoType(field=field, sliced_en=sliced_en)
        if depth:
            fieldiotype = u.ArrayType(fieldiotype, depth)
        iotype.add(field.signame, fieldiotype, comment=comment)


def _create_route(mod: u.BaseMod, addrspace: Addrspace) -> None:
    for word in addrspace.words:
        for field in word.fields:
            if field.route:
                regfportname = get_regfportname(field)
                mod.parent.route(u.RoutePath(expr=regfportname, path=mod.name), field.route)


def get_regfportname(field: Field, direction: u.Direction = u.OUT) -> str:
    """Determine Name of Portname."""
    portgroups = field.portgroups
    basename = f"regf_{field.signame}_" if not portgroups else f"regf_{portgroups[0]}_{field.signame}_"
    iotype = FieldIoType(field=field)
    for name in ("wval", "rval", "wbus", "rbus"):
        try:
            valitem = iotype[name]
        except KeyError:
            continue
        itemdirection = direction * valitem.orientation
        return f"{basename}{name}{itemdirection.suffix}"
    raise ValueError(f"Field '{field.name}' has no core access for route.")


class FieldIoType(u.AStructType):
    """Field IO Type."""

    field: Field
    sliced_en: bool = False

    def _build(self):  # noqa: C901, PLR0912
        field = self.field
        if field.in_regf:
            if field.core:
                corerd = field.core.read
                corewr = field.core.write
                if corerd:
                    self._add("rval", field.type_, comment="Core Read Value")
                    if corerd.data is not None:
                        self._add("rd", u.BitType(), u.BWD, comment="Core Read Strobe")
                if corewr:  # TODO: check whether field is read at all (regf or core)
                    if corewr.write is not None:
                        self._add("wval", field.type_, u.BWD, comment="Core Write Value")
                    if corewr.write is not None or corewr.op is not None:
                        self._add("wr", u.BitType(), u.BWD, comment="Core Write Strobe")
                if field.upd_strb:
                    self._add("upd", u.BitType(), comment="Update Strobe")
        elif field.bus:
            busrd = field.bus.read
            buswr = field.bus.write
            if busrd or (buswr and buswr.data is not None and buswr.data == ""):
                self._add("rbus", field.type_, u.BWD, comment="Bus Read Value")
            if busrd and busrd.data is not None:
                self._add("rd", u.BitType(), comment="Bus Read Strobe")
            if buswr:
                self._add("wbus", field.type_, comment="Bus Write Value")
                if self.sliced_en:  # write strobe as bit mask
                    self._add("wr", u.UintType(field.type_.bits), comment="Bus Bit-Write Strobe")
                else:
                    self._add("wr", u.BitType(), comment="Bus Write Strobe")


# def offset2addr(offset: int, width: int, addrwidth: int) -> u.Hex:
#     """
#     Offset to Address.

#     Example:

#         >>> offset2addr(0, 32, 12)
#         Hex('0x000')
#         >>> offset2addr(1, 32, 12)
#         Hex('0x004')
#         >>> offset2addr(2, 32, 12)
#         Hex('0x008')
#         >>> offset2addr(4, 32, 12)
#         Hex('0x010')
#         >>> offset2addr(4, 15, 12)
#         Hex('0x007')
#     """
#     return u.Hex(offset * width / 8, width=addrwidth)


# def offsetslice2addrslice(slice: u.Slice, width: int, addrwidth: int) -> u.Slice:
#     """
#     Offset Slice to Address Slice.

#     >>> offsetslice2addrslice(u.Slice(left=3, right=1), 32, 12)
#     Slice('0x00C:0x004')
#     """
#     return u.Slice(left=offset2addr(slice.left, width, addrwidth), right=offset2addr(slice.right, width, addrwidth))


# TODO:
# define semantics of W(0|1)(C|S|T) for enum types!
