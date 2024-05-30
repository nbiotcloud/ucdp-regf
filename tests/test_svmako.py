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
"""Test sv.mako."""

import os
from shutil import copytree
from typing import ClassVar
from unittest import mock

import ucdp as u
from test2ref import assert_refdata
from ucdp_glbl import addrspace as _addrspace
from ucdp_regf.ucdp_regf import ACCESSES, UcdpRegfMod


def test_top(example_simple, tmp_path):
    """Top Module."""
    copytree(example_simple / "src", tmp_path, dirs_exist_ok=True)
    top = u.load("uart.uart")
    with mock.patch.dict(os.environ, {"PRJROOT": str(tmp_path)}):
        u.generate(top.mod, "hdl")
    assert_refdata(test_top, tmp_path)


class HdlFileList(u.ModFileList):
    """HDL File Lists."""

    name: str = "hdl"
    filepaths: u.ToPaths = ("$PRJROOT/{mod.libname}/{mod.topmodname}/{mod.modname}.sv",)
    template_filepaths: u.ToPaths = ("sv.mako",)


class RegfMod(UcdpRegfMod):
    """Register File."""

    filelists: ClassVar[u.ModFileLists] = (
        HdlFileList(
            gen="full",
            template_filepaths=("ucdp_regf.sv.mako", "sv.mako"),
        ),
    )


class CoreMod(u.ACoreMod):
    """Example Core Module."""

    filelists: ClassVar[u.ModFileLists] = (HdlFileList(gen="full"),)


class FullMod(u.AMod):
    """A Simple UART."""

    filelists: ClassVar[u.ModFileLists] = (HdlFileList(gen="full"),)

    def _build(self) -> None:
        regf = RegfMod(self, "u_regf")
        widx = 0
        word = regf.add_word(f"w{widx}")
        fidx = 0
        for bus in (None, *ACCESSES):
            for core in ACCESSES:
                for in_regf in (False, True):
                    if bus == _addrspace.RO and core == _addrspace.RO and not in_regf:
                        continue
                    word.add_field(f"f{fidx}", u.UintType(2), bus, core=core, in_regf=in_regf)
                    fidx += 2
                    if fidx >= word.width:
                        widx += 1
                        word = regf.add_word(f"w{widx}")
                        fidx = 0


def test_full(tmp_path):
    """Register File with All Combinations."""
    mod = FullMod()
    with mock.patch.dict(os.environ, {"PRJROOT": str(tmp_path)}):
        u.generate(mod, "hdl")
    assert_refdata(test_full, tmp_path)


class CornerMod(u.AMod):
    """Some Manual Corner Cases."""

    filelists: ClassVar[u.ModFileLists] = (HdlFileList(gen="full"),)

    def _build(self) -> None:
        self.add_port(u.ClkRstAnType(), "main_i")

        # Register File
        regf = RegfMod(self, "u_regf")
        regf.con("main_i", "main_i")

        regf.add_port(u.ArrayType(u.ArrayType(u.UintType(5), 3), 7), "spec_i")

        word = regf.add_word("ctrl")
        word.add_field("ena", u.EnaType(), "RW")
        word.add_field("busy", u.BusyType(), "RO", align=4, route="create(busy_s)")
        word.add_field(
            "start",
            u.BitType(),
            "RW",
            portgroups=(
                "grpa",
                "grpb",
            ),
        )
        word.add_field("status", u.BitType(), "RO", portgroups=("grpa",))
        word.add_field("ver", u.UintType(4, default=12), bus="RO", core="RO")
        word.add_field("spec1", u.BitType(), bus="RC", core="RW", portgroups=("grpc",))

        word = regf.add_word("txdata", depth=5)
        word.add_field("bytes", u.UintType(8), "RW")

        word = regf.add_word("dims", depth=3)
        word.add_field("roval", u.BusyType(), "RO")
        word.add_field("wrval", u.EnaType(), "RW")
        word.add_field("spec2", u.BitType(), bus="RW", core="RC", portgroups=("grpc",), in_regf=False)
        word.add_field(
            "spec3",
            u.BitType(),
            bus="RC",
            core="RW",
            portgroups=("grpc",),
            in_regf=True,
            upd_prio="core",
        )


def test_corner(tmp_path):
    """Register File with Some Manual Corner Cases."""
    mod = CornerMod()
    with mock.patch.dict(os.environ, {"PRJROOT": str(tmp_path)}):
        u.generate(mod, "hdl")
    assert_refdata(test_corner, tmp_path)


class PortgroupMod(u.AMod):
    """Portgroup Usage."""

    filelists: ClassVar[u.ModFileLists] = (HdlFileList(gen="full"),)

    def _build(self) -> None:
        width_p = self.add_param(u.IntegerType(default=1), "width_p")
        self.add_port(u.ClkRstAnType(), "main_i")

        regf = RegfMod(self, "u_regf", paramdict={"width_p": width_p})
        regf.add_param(width_p)
        regf.con("main_i", "main_i")
        regf.con("regf_rx_o", "create(u_rx/regf_i)")
        regf.con("regf_tx_o", "create(u_tx/regf_i)")

        word = regf.add_word("ctrl", portgroups=("top", "rx", "tx"))
        word.add_field("ena", u.EnaType(), "RW")
        word.add_field("busy", u.BusyType(), "RO", portgroups=("top",))

        word = regf.add_word("rx", portgroups=("rx",))
        word.add_field("data0", u.UintType(width_p), "RO")
        word.add_field("data1", u.UintType(width_p), "RO", offset=width_p)

        word = regf.add_word("tx", portgroups=("tx",))
        word.add_field("data0", u.UintType(width_p), "RW")

        rx = CoreMod(self, "u_rx", paramdict={"width_p": width_p})
        rx.add_param(width_p)
        rx.con("create(main_i)", "main_i")

        tx = CoreMod(self, "u_tx", paramdict={"width_p": width_p})
        tx.add_param(width_p)
        tx.con("create(main_i)", "main_i")


def test_portgroup(tmp_path):
    """Port Group Combinations."""
    mod = PortgroupMod()
    with mock.patch.dict(os.environ, {"PRJROOT": str(tmp_path)}):
        u.generate(mod, "hdl")
    assert_refdata(test_portgroup, tmp_path)
