#
# MIT License
#
# Copyright (c) 2024 nbiotcloud
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

Accesses
"""

from functools import cached_property
from typing import ClassVar

import ucdp as u
from icdutil.num import calc_unsigned_width
from tabulate import tabulate
from ucdp_glbl import addrspace as _addrspace
from ucdp_glbl.mem import MemIoType

ACCESSES = _addrspace.ACCESSES
Access = _addrspace.Access
ReadOp = _addrspace.ReadOp
WriteOp = _addrspace.WriteOp

_IN_REGF_DEFAULTS = {
    _addrspace.RO: False,
    _addrspace.WO: False,
    _addrspace.RW: True,
}


class Field(_addrspace.Field):
    """Field."""

    portgroups: tuple[str, ...] | None = None
    """Portgroups."""
    in_regf: bool
    """Implementation within Regf."""
    signame: str
    """Signal Basename to Core."""
    route: u.Routeables | None = None


class Word(_addrspace.Word):
    """Word."""

    portgroups: tuple[str, ...] | None = None
    """Default Portgroups for Fields."""
    in_regf: bool | None = None
    """Default Implementation within Regf."""

    def _create_field(self, name, bus, portgroups=None, signame=None, in_regf=None, **kwargs) -> Field:
        if portgroups is None:
            portgroups = self.portgroups
        if signame is None:
            signame = f"{self.name}_{name}"
        if in_regf is None:
            in_regf = self.in_regf
        if in_regf is None:
            in_regf = _IN_REGF_DEFAULTS.get(bus, True)
        return Field(name=name, bus=bus, portgroups=portgroups, signame=signame, in_regf=in_regf, **kwargs)


class Addrspace(_addrspace.Addrspace):
    """Address Space."""

    portgroups: tuple[str, ...] | None = None
    """Default Portgroups for Words."""

    def _create_word(self, portgroups=None, **kwargs) -> Word:
        if portgroups is None:
            portgroups = self.portgroups
        return Word(portgroups=portgroups, **kwargs)


class UcdpRegfMod(u.ATailoredMod):
    """Register File."""

    width: int = 32
    """Width in Bits."""
    depth: int = 1024
    """Number of words."""

    filelists: ClassVar[u.ModFileLists] = (
        u.ModFileList(
            name="hdl",
            gen="full",
            template_filepaths=("ucdp_regf.sv.mako", "sv.mako"),
        ),
    )

    @cached_property
    def addrspace(self) -> Addrspace:
        """Address Space."""
        return Addrspace(name=self.hiername, width=self.width, depth=self.depth)

    def _build(self):
        self.add_port(u.ClkRstAnType(), "main_i")
        addrwidth = calc_unsigned_width(self.addrspace.size)
        memiotype = MemIoType(datawidth=self.width, addrwidth=addrwidth, writable=True, err=True)
        self.add_port(memiotype, "mem_i")

    def _build_dep(self):
        regfiotype = _get_regfiotype(self.addrspace)
        self.add_port(regfiotype, "regf_o")
        if self.parent:
            _create_route(self, self.addrspace)

    def add_word(self, *args, **kwargs):
        """Add Word."""
        return self.addrspace.add_word(*args, **kwargs)

    def get_overview(self) -> str:
        """Overview."""
        data = []
        for word in self.addrspace.words:
            data.append((f"+{word.slice}", word.name, "", "", "", "", ""))
            for field in word.fields:
                impl = "regf" if field.in_regf else "core"
                data.append(
                    (
                        "",
                        "",
                        f".{field.name}",
                        str(field.slice),
                        str(field.access),
                        f"{field.is_const}",
                        impl,
                    )
                )
        headers = ("Offset", "Word", "Field", "Bits", "Bus/Core", "Const", "Impl")
        return tabulate(data, headers=headers)


def _get_regfiotype(addrspace: Addrspace) -> u.DynamicStructType:
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
                iotype.add(field.signame, FieldIoType(field=field), comment=comment)
    return regfiotype


def _create_route(mod: u.BaseMod, addrspace: Addrspace) -> None:
    for word in addrspace.words:
        for field in word.fields:
            if field.route:
                regfportname = _get_route_regfportname(field)
                mod.parent.route(u.RoutePath(expr=regfportname, path=mod.name), field.route)


def _get_route_regfportname(field: Field) -> str:
    portgroups = field.portgroups
    basename = f"regf_{field.signame}_" if not portgroups else f"regf_{portgroups[0]}_{field.signame}_"
    iotype = FieldIoType(field=field)
    for name in ("wval", "rval", "wbus", "rbus"):
        try:
            valitem = iotype[name]
        except KeyError:
            continue
        direction = u.OUT * valitem.orientation
        return f"{basename}{name}{direction.suffix}"
    raise ValueError(f"Field {field.name} has no core access for route")


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
                if corewr:
                    if corewr.write is not None:
                        self._add("wval", field.type_, u.BWD, comment="Core Write Value")
                    if corewr.write is not None or corewr.op is not None:
                        self._add("wr", u.BitType(), u.BWD, comment="Core Write Strobe")
        elif field.bus:
            busrd = field.bus.read
            buswr = field.bus.write
            if busrd:
                self._add("rbus", field.type_, u.BWD, comment="Bus Read Value")
                if busrd.data is not None:
                    self._add("rd", u.BitType(), comment="Bus Read Strobe")
            if buswr:
                self._add("wbus", field.type_, comment="Bus Write Value")
                self._add("wr", u.BitType(), comment="Bus Write Strobe")
