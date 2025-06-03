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
Address Space.

TODO: example
"""

import re
from functools import cached_property
from typing import ClassVar, Literal, TypeAlias

import ucdp as u
import ucdp_addr as ua
from icdutil.num import calc_unsigned_width
from tabulate import tabulate
from ucdp_glbl.mem import MemIoType

ACCESSES: TypeAlias = ua.ACCESSES
Access: TypeAlias = ua.Access
ReadOp: TypeAlias = ua.ReadOp
WriteOp: TypeAlias = ua.WriteOp

Prio = Literal["bus", "core"]

_IN_REGF_DEFAULTS = {
    ua.access.RO: False,
    ua.access.WO: False,
    ua.access.RW: True,
}


class Field(ua.Field):
    """Field."""

    portgroups: tuple[str, ...] | None = None
    """Portgroups."""
    in_regf: bool
    """Implementation within Regf."""
    upd_prio: Prio | None
    """Update Priority: None, 'b'us or 'c'core."""
    upd_strb: bool = False
    """Update strobe towards core."""
    wr_guard: str | None = None
    """Write guard name (must be unique)."""
    signame: str
    """Signal Basename to Core."""
    route: u.Routeables | None = None

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

    def _create_word(
        self, portgroups=None, in_regf=None, upd_prio=None, upd_strb=None, wr_guard=None, **kwargs
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
        return Word(
            portgroups=portgroups, in_regf=in_regf, upd_prio=upd_prio, upd_strb=upd_strb, wr_guard=wr_guard, **kwargs
        )

    def _create_words(self, **kwargs) -> Words:
        return Words.create(**kwargs)


def filter_regf_flipflops(field: Field):
    """In-Regf Flop Fields."""
    return field.in_regf and not field.is_const


def filter_buswrite(field: Field):
    """Writable Bus Fields."""
    return field.bus and field.bus.write


def filter_buswriteonce(field: Field):
    """Write-Once Bus Fields."""
    return field.bus and field.bus.write and field.bus.write.once


def filter_rdmod(field: Field):
    """Fields requiring extra read-enable."""
    return field.bus and field.bus.read and field.bus.read.data is not None


wfp_ident = re.compile(r"((?P<word>\w+)\.(?P<field>\w+))|(?P<import>\w+_i)")


class UcdpRegfMod(u.ATailoredMod):
    """Register File."""

    width: int = 32
    """Width in Bits."""
    depth: int = 1024
    """Number of words."""

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

    filelists: ClassVar[u.ModFileLists] = (
        u.ModFileList(
            name="hdl",
            gen="full",
            template_filepaths=("ucdp_regf.sv.mako", "sv.mako"),
        ),
    )

    _guards: dict[str, tuple[str, str]] = u.PrivateField(default_factory=dict)
    _soft_rst: str = u.PrivateField(default=None)

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
        )

    @cached_property
    def regfiotype(self) -> u.DynamicStructType:
        """IO-Type With All Core Signals."""
        return get_regfiotype(self.addrspace)

    @cached_property
    def memiotype(self) -> MemIoType:
        """Memory IO-Type."""
        addrwidth = calc_unsigned_width(self.depth - 1)
        return MemIoType(datawidth=self.width, addrwidth=addrwidth, writable=True, err=True, addressing="data")

    def _build(self):
        self.add_port(u.ClkRstAnType(), "main_i")
        self.add_port(self.memiotype, "mem_i")

    def _build_dep(self):
        self.add_port(self.regfiotype, "regf_o")
        if self.parent:
            _create_route(self, self.addrspace)
        self._add_const_decls()
        self._add_ff_decls()
        self._add_bus_word_en_decls()
        self._prep_guards()
        self._add_wrguard_decls()
        self._handle_soft_reset()

    def _handle_soft_reset(self):
        if self._soft_rst is None:
            return
        wfp = wfp_ident.match(self._soft_rst)
        if wfp is None or (wfp.group() != self._soft_rst):
            raise ValueError(f"Illegal identifier '{self._soft_rst}' for soft reset.")
        wname = wfp.group("word")
        fname = wfp.group("field")
        pname = wfp.group("import")
        if pname:
            if pname != "soft_rst_i":
                raise ValueError(f"Illegal name '{self._soft_rst}' for soft reset input port.")
            self.add_port(u.RstType(), self._soft_rst)
        else:
            try:
                thefield = self.addrspace.words[wname].fields[fname]
            except KeyError:
                raise ValueError(f"There is no register/field of name '{wname}/{fname}'.") from None
            if not isinstance(thefield.type_, u.RstType):
                raise ValueError(f"Soft reset from {wname}/{fname} is not of type 'RstType()' but '{thefield.type_}'.")
            if self.addrspace.words[wname].depth:
                raise ValueError(f"Soft reset from {wname}/{fname} must not have 'depth'>0 in word.")
            if thefield.in_regf:
                raise ValueError(f"Soft reset from {wname}/{fname} must not have 'in_regf=True'.")
            self._soft_rst = f"bus_{wname}_{fname}_rst_s"
            self.add_signal(u.RstType(), self._soft_rst)

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

    def _add_ff_decls(self):
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
            self._add_special_ff_decls(word)

    def _add_special_ff_decls(self, word: Word):
        wordonce = False
        grdonce: list[str] = []
        signame = f"bus_{word.name}_{{os}}once_r"
        type_ = u.BitType(default=1)
        strbtype_ = u.BitType()
        if word.depth:
            type_ = u.ArrayType(type_, word.depth)
            strbtype_ = u.ArrayType(strbtype_, word.depth)
        for field in word.fields:
            if field.upd_strb:
                self.add_signal(strbtype_, f"upd_strb_{field.signame}_r")
            if not filter_buswriteonce(field):
                continue
            if field.wr_guard:
                if field.wr_guard in grdonce:
                    continue
                grdidx = len(grdonce)
                grdonce.append(field.wr_guard)
                oncespec = f"grd{grdidx}"
                self.add_signal(type_, signame.format(os=oncespec))
            elif not wordonce:
                wordonce = True
                self.add_signal(type_, signame.format(os="wr"))

    def _add_bus_word_en_decls(self):
        cmt = "bus word write enables"
        for word, _ in self.addrspace.iter(fieldfilter=filter_buswrite):
            signame = f"bus_{word.name}_wren_s"
            type_ = u.BitType()
            if word.depth:
                type_ = u.ArrayType(type_, word.depth)
            self.add_signal(type_, signame, comment=cmt)
            cmt = None
        cmt = "bus word read enables"
        for word, _ in self.addrspace.iter(fieldfilter=filter_rdmod):
            signame = f"bus_{word.name}_rden_s"
            type_ = u.BitType()
            if word.depth:
                type_ = u.ArrayType(type_, word.depth)
            self.add_signal(type_, signame, comment=cmt)
            cmt = None

    def _prep_guards(self):  # noqa: C901
        idx = 0
        for _, fields in self.addrspace.iter(fieldfilter=filter_buswrite):
            for field in fields:
                if field.wr_guard:
                    if self._guards.get(field.wr_guard, None) is not None:  # already known
                        continue
                    signame = f"bus_wrguard_{idx}_s"
                    sigexpr = wrguard = field.wr_guard
                    for wfp in wfp_ident.finditer(wrguard):
                        wname = wfp.group("word")
                        fname = wfp.group("field")
                        pname = wfp.group("import")
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
                        if thefield.in_regf:
                            rplc = f"data_{thefield.signame}_r"
                        elif thefield.portgroups:
                            rplc = f"regf_{thefield.portgroups[0]}_{thefield.signame}_rbus_i"
                        else:
                            rplc = f"regf_{thefield.signame}_rbus_i"
                        sigexpr = sigexpr.replace(wfp.group(), rplc)
                    self._guards[field.wr_guard] = (signame, sigexpr)
                    idx += 1

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
        calling with a string '<word>.<field>' will use this field as soft reset.
        Calling with any other string will be an error.
        """
        if self._soft_rst is not None:
            raise ValueError("Soft reset has been already defined.")
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


def get_regfiotype(addrspace: Addrspace) -> u.DynamicStructType:
    """Determine IO-Type for fields in `addrspace`."""
    portgroupmap: dict[str | None, u.DynamicStrucType] = {}
    portgroupmap[None] = regfiotype = u.DynamicStructType()
    for word in addrspace.words:
        for field in word.fields:
            for portgroup in field.portgroups or [None]:
                try:
                    iotype = portgroupmap[portgroup]
                except KeyError:
                    portgroupmap[portgroup] = iotype = u.DynamicStructType()
                    regfiotype.add(portgroup, iotype)
                comment = f"bus={field.bus} core={field.core} in_regf={field.in_regf}"
                fieldiotype = FieldIoType(field=field)
                if word.depth:
                    fieldiotype = u.ArrayType(fieldiotype, word.depth)
                iotype.add(field.signame, fieldiotype, comment=comment)
    return regfiotype


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

    def _build(self):  # noqa: C901
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
                self._add("wr", u.BitType(), comment="Bus Write Strobe")


# TODO:
# define semantics of W(0|1)(C|S|T) for enum types!
