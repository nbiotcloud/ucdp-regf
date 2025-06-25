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
"""Test sv.mako."""

import os
from typing import ClassVar
from unittest import mock

import ucdp as u
import ucdp_addr as ua
from test2ref import assert_refdata, configure

from ucdp_regf.ucdp_regf import Access, UcdpRegfMod

configure(add_excludes=(".lint",))


# def test_top(example_simple, tmp_path):
#     """Top Module."""
#     top = u.load("uart.uart")

#     corefile = tmp_path / "uart/uart/rtl/uart_core.sv"
#     corefile.parent.mkdir(parents=True)
#     corefile.write_text("""\
# // GENERATE INPLACE BEGIN fileheader()
# //
# // GENERATE INPLACE END fileheader

# // GENERATE INPLACE BEGIN beginmod()
# // GENERATE INPLACE END beginmod

# // GENERATE INPLACE BEGIN endmod()
# // GENERATE INPLACE END endmod
# """)
#     with mock.patch.dict(os.environ, {"PRJROOT": str(tmp_path)}):
#         u.generate(top.mod, "hdl")
#     assert_refdata(test_top, tmp_path)


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


def get_is_const(bus: Access | None, core: Access | None) -> bool:
    """Calc Is Constant Flag based on Accesses."""
    if bus is not None:
        if bus.write is not None:
            return False
        if bus.read and bus.read.data is not None:
            return False
    if core is not None:
        if core.read and core.read.data is not None:
            return False
        if core.write is not None:
            return False
    return True


def get_is_unobservable(bus: Access | None, core: Access | None) -> bool:
    """Check for unobservable fields (not read anywhere)."""
    if bus is not None and bus.read:
        return False
    if core is not None and core.read:
        return False
    return True


class FullMod(u.AMod):
    """A Simple UART."""

    filelists: ClassVar[u.ModFileLists] = (HdlFileList(gen="full"),)

    def _build(self) -> None:
        regf = RegfMod(self, "u_regf")
        widx = 0
        word = regf.add_word(f"w{widx}")
        fidx = 0
        for bus in (None, *ua.ACCESSES):
            for core in ua.ACCESSES:
                for in_regf in (False, True):
                    if get_is_const(bus, core) and not in_regf:
                        continue
                    if get_is_unobservable(bus, core):
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
        regf.add_port(u.EnaType(), "grd_i")

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
        word.add_field("spec1", u.BitType(), bus="RC", core="RW", portgroups=("grpc",), in_regf=False)

        word = regf.add_word("txdata", depth=5)
        word.add_field("bytes", u.UintType(8), "RW")

        word = regf.add_word("dims", depth=3)
        word.add_field("roval", u.BusyType(), "RO")
        word.add_field("wrval", u.EnaType(), "RW", upd_strb=True)
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

        word = regf.add_word("guards", in_regf=True, depth=1)
        word.add_field("once", u.BitType(), bus="WL", core="RO", wr_guard="ctrl.ena & ctrl.busy")
        word.add_field("coreonce", u.BitType(), bus="WL", core="RO", wr_guard="ctrl.busy", in_regf=False)
        word.add_field("busonce", u.BitType(), bus="WL", core="RO", wr_guard="ctrl.busy", in_regf=False)
        word.add_field(
            "single",
            u.BitType(),
            bus="WL",
            core="RO",
        )
        word.add_field(
            "onetime",
            u.BitType(),
            bus="WL",
            core="RO",
        )
        word.add_field("guard_a", u.UintType(4), "RW", wr_guard="ctrl.ena & ctrl.busy")
        word.add_field("guard_b", u.UintType(4), "RW", wr_guard="ctrl.busy")
        word.add_field("guard_c", u.UintType(4), "RW", wr_guard="ctrl.busy", upd_strb=True)
        word.add_field("cprio", u.BitType(), bus="RW", core="RW", upd_prio="core")
        word.add_field("bprio", u.BitType(), bus="RW", core="RW", upd_prio="bus")
        word.add_field("grdport", u.BitType(), "RW", wr_guard="~(grd_i & ctrl.busy & another_grd_i)")

        word = regf.add_word("grddim", in_regf=False, depth=2)
        word.add_field("num", u.UintType(12), "RW", wr_guard="ctrl.busy", upd_strb=True)
        word.add_field("const", u.UintType(3, default=5), bus="RO", core="RO", in_regf=True)
        word.add_field("int", u.UintType(12), "RW", wr_guard="ctrl.spec1", portgroups=("grpa",))

        word = regf.add_word("mixint")
        word.add_field("r_int", u.SintType(4), "RW")
        word.add_field("r_uint", u.UintType(4), "RW")
        word.add_field("c_int", u.SintType(4, default=-3), "RW", in_regf=False)

        word = regf.add_words("wide")
        word.add_field("a", u.UintType(16), "RW")
        word.add_field("b", u.UintType(16), "RW")
        word.add_field("c", u.UintType(16), "RW", signame="base")
        word.add_field("d", u.UintType(16), "RW")


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
        word.add_field("data2", u.UintType(width_p), "RO", offset=3 * width_p)

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


class ResetMod(u.AMod):
    """Regf with Soft Reset."""

    filelists: ClassVar[u.ModFileLists] = (HdlFileList(gen="full"),)

    def _build(self) -> None:
        self.add_port(u.ClkRstAnType(), "main_i")

        # Register File 1
        regf = RegfMod(self, "u_softrst")
        regf.con("main_i", "main_i")
        word = regf.add_word("ctrl")
        word.add_field("ena", u.EnaType(), "RW")
        word.add_field("busy", u.BusyType(), "RO", align=4, route="create(busy1_s)")
        regf.add_soft_rst()

        # Register File 2
        regf = RegfMod(self, "u_regrst")
        regf.con("main_i", "main_i")
        word = regf.add_word("ctrl")
        word.add_field("clrall", u.RstType(), "WO")
        word.add_field("ena", u.EnaType(), "RW")
        word.add_field("busy", u.BusyType(), "RO", align=4, route="create(busy2_s)")
        regf.add_soft_rst("ctrl.clrall")


def test_reset(tmp_path):
    """Soft Reset."""
    mod = ResetMod()
    with mock.patch.dict(os.environ, {"PRJROOT": str(tmp_path)}):
        u.generate(mod, "hdl")
    assert_refdata(test_reset, tmp_path)


class ByteEnMod(u.AMod):
    """Regfile with Byte Enables."""

    filelists: ClassVar[u.ModFileLists] = (HdlFileList(gen="full"),)

    def _build(self) -> None:
        self.add_port(u.ClkRstAnType(), "main_i")

        regf = RegfMod(self, "u_byte_en", slicing=8)
        regf.con("main_i", "main_i")

        word = regf.add_word("w0")
        word.add_field("f0", u.UintType(13), "RW")
        word.add_field("f1", u.UintType(3), "RW")
        word.add_field("f2", u.UintType(13), "WO")
        word.add_field("f3", u.UintType(3), "RO")

        word = regf.add_word("w1")
        word.add_field("f0", u.UintType(7), "RW", in_regf=False)
        word.add_field("f1", u.UintType(3), "RW1C")
        word.add_field("f2", u.UintType(13), "RWL", in_regf=False)

        word = regf.add_word("w2")
        word.add_field("f1", u.SintType(13), "RW")


def test_byte_en(tmp_path):
    """Byte Enables."""
    mod = ByteEnMod()
    with mock.patch.dict(os.environ, {"PRJROOT": str(tmp_path)}):
        u.generate(mod, "hdl")
    assert_refdata(test_byte_en, tmp_path)


class SliceEnMod(u.AMod):
    """Regfile with Sliced Enables."""

    filelists: ClassVar[u.ModFileLists] = (HdlFileList(gen="full"),)

    def _build(self) -> None:
        self.add_port(u.ClkRstAnType(), "main_i")

        regf = RegfMod(self, "u_slice_en", slicing=(1, 2, 1, 4, 8, 16))
        regf.con("main_i", "main_i")

        word = regf.add_word("w0")
        word.add_field("f0", u.UintType(13), "RW")
        word.add_field("f1", u.UintType(3), "RW")
        word.add_field("f2", u.UintType(13), "WO")
        word.add_field("f3", u.UintType(3), "RO")

        word = regf.add_word("w1")
        word.add_field("f0", u.UintType(7), "RW", in_regf=False)
        word.add_field("f1", u.UintType(3), "RW1C")
        word.add_field("f2", u.UintType(13), "RWL", in_regf=False)

        word = regf.add_word("w2")
        word.add_field("f1", u.SintType(13), "RW")


def test_slice_en(tmp_path):
    """Sliced Enables."""
    mod = SliceEnMod()
    with mock.patch.dict(os.environ, {"PRJROOT": str(tmp_path)}):
        u.generate(mod, "hdl")
    assert_refdata(test_slice_en, tmp_path)


class BitEnMod(u.AMod):
    """Regfile with Sliced Enables."""

    filelists: ClassVar[u.ModFileLists] = (HdlFileList(gen="full"),)

    def _build(self) -> None:
        self.add_port(u.ClkRstAnType(), "main_i")

        regf = RegfMod(self, "u_bit_en", slicing=1)
        regf.con("main_i", "main_i")

        word = regf.add_word("w0")
        word.add_field("f0", u.UintType(13), "RW")
        word.add_field("f1", u.UintType(3), "RW")
        word.add_field("f2", u.UintType(13), "WO")
        word.add_field("f3", u.UintType(3), "RO")

        word = regf.add_word("w1")
        word.add_field("f0", u.UintType(7), "RW", in_regf=False)
        word.add_field("f1", u.UintType(3), "RW1C")
        word.add_field("f2", u.UintType(13), "RWL", in_regf=False)

        word = regf.add_word("w2")
        word.add_field("f1", u.SintType(13), "RW")


def test_bit_en(tmp_path):
    """Bit Enables."""
    mod = BitEnMod()
    with mock.patch.dict(os.environ, {"PRJROOT": str(tmp_path)}):
        u.generate(mod, "hdl")
    assert_refdata(test_bit_en, tmp_path)


class WordFieldMod(u.AMod):
    """A Simple UART."""

    filelists: ClassVar[u.ModFileLists] = (HdlFileList(gen="full"),)

    def _build(self) -> None:
        regf = RegfMod(self, "u_regf")

        wordkwargs = (
            {},
            {"wordio": True},
            {"wordio": True, "upd_strb": True},
            # {"wordio": True, "fieldio": False}, # bus=RO with fieldio=False is missing the value inputs!
            # {"wordio": True, "fieldio": False, "upd_strb": True},
        )  # type: ignore[var-annotated]
        # TODO: support all these
        # variants = (("RW", None, None), ("RW", "RO", None), ("RW", "RO", False),
        # ("RO", "RW", None), ("RO", "RW", True))
        variants = (("RW", None, None), ("RO", None, None))
        for depth in (None, 1, 5):
            for kidx, kwargs in enumerate(wordkwargs):
                for bus, core, in_regf in variants:
                    # bus=RO can't have an upd_strb as it's not written from bus
                    if (bus == "RO") and kwargs.get("upd_strb", False):
                        continue
                    word = regf.add_word(
                        f"word{kidx}_b{bus}_c{core}_i{in_regf}_d{depth or 0}",
                        bus=bus,
                        core=core,
                        in_regf=in_regf,
                        depth=depth,
                        **kwargs,
                    )
                    word.add_field("a", u.UintType(6, default=3))
                    word.add_field("b", u.BitType(), align=4)
                    for sidx, upd_strb in enumerate((None, False, True)):
                        # for cidx, fin_regf in enumerate((None, False, True)):
                        # word.add_field(f"s{sidx}_c{cidx}", u.BitType(), upd_strb=upd_strb, in_regf=fin_regf)
                        word.add_field(f"s{sidx}", u.BitType(), upd_strb=upd_strb)
        word = regf.add_word(
            "www",
            bus=ua.RW,
            wordio=True,
            portgroups=(
                "foo",
                "bar",
            ),
            upd_strb=True,
        )
        word.add_field("a", u.UintType(6, default=3), upd_strb=False)
        word.add_field("b", u.BitType(), align=4, upd_strb=False)


def test_word_field(tmp_path):
    """Register File with All Combinations."""
    mod = WordFieldMod()
    with mock.patch.dict(os.environ, {"PRJROOT": str(tmp_path)}):
        u.generate(mod, "hdl")
    assert_refdata(test_word_field, tmp_path)
