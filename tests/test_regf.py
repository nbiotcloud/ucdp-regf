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
"""Regf Tests."""

import re
from collections.abc import Callable

import ucdp as u
import ucdp_addr as ua
from pytest import fixture, raises

from ucdp_regf.ucdp_regf import UcdpRegfMod, Word


@fixture
def word():
    """Example Word."""
    yield Word(name="word", offset=0, width=32)


@fixture
def regf():
    """Example Regf."""
    yield UcdpRegfMod(None, "u_regf")


def test_field_bus_prio_rw(word):
    """Field Bus Prio."""
    field0 = word.add_field("field0", u.UintType(4), "RW")
    assert field0.bus_prio is True
    field1 = word.add_field("field1", u.UintType(4), "RW", upd_prio="core")
    assert field1.bus_prio is False
    field2 = word.add_field("field2", u.UintType(4), "RW", upd_prio="bus")
    assert field2.bus_prio is True


def test_field_bus_prio_ro(word):
    """Field Bus Prio."""
    field0 = word.add_field("field0", u.UintType(4), "RO")
    assert field0.bus_prio is False
    field1 = word.add_field("field1", u.UintType(4), "RO", upd_prio="core")
    assert field1.bus_prio is False
    field2 = word.add_field("field2", u.UintType(4), "RO", upd_prio="bus")
    assert field2.bus_prio is True


def test_field_bus_prio_na(word):
    """Field Bus Prio."""
    field0 = word.add_field("field0", u.UintType(4), None)
    assert field0.bus_prio is False
    field1 = word.add_field("field1", u.UintType(4), None, upd_prio="core")
    assert field1.bus_prio is False
    field2 = word.add_field("field2", u.UintType(4), None, upd_prio="bus")
    assert field2.bus_prio is True


def test_addspc(regf):
    """Test 'get_addrspaces'."""
    word = regf.add_word("w0")
    word.add_field("chk", u.BitType(), bus="RW", core="RO")
    aspc = regf.get_addrspaces()
    assert f"{tuple(aspc)}" == "(Addrspace(name='regf', size=Bytesize('4 KB')),)"


def test_field_exc(regf):
    """Test Field Error-Handling."""
    # assert regf.is_locked is False
    word = regf.add_word("w0")
    with raises(
        ValueError, match=re.escape("Field 'w0.chk' cannot be part of multiple portgroups when core provides a value!")
    ):
        word.add_field(
            "chk",
            u.BitType(),
            bus="RO",
            core="WO",
            portgroups=(
                "grpa",
                "grpb",
            ),
        )

    with raises(ValueError, match=re.escape("Field 'w0.chk' with constant value must be in_regf.")):
        word.add_field("chk", u.BitType(), bus="RO", core="RO", in_regf=False)

    with raises(ValueError, match=re.escape("Field 'w0.chk' with access 'WO/WO' is unobservable (read nowhere).")):
        word.add_field("chk", u.BitType(), bus="WO", core="WO")


def test_regf_exc():  # noqa: C901, PLR0915
    """Test Regf Error Handling."""

    class ExMod(u.AMod):
        tst_cond: Callable | None = None

        def _build(self):
            regf = UcdpRegfMod(self, "u_regf")
            if self.tst_cond is not None:
                self.tst_cond(regf)

    def exc_rstname(regf: UcdpRegfMod) -> None:
        regf.add_soft_rst("foo")

    with raises(ValueError, match=re.escape("Illegal identifier 'foo' for soft reset.")):
        ExMod(tst_cond=exc_rstname).get_inst("u_regf")

    def exc_rstportnm(regf: UcdpRegfMod) -> None:
        regf.add_soft_rst("foo_i")

    with raises(ValueError, match=re.escape("Illegal name 'foo_i' for soft reset input port.")):
        ExMod(tst_cond=exc_rstportnm).get_inst("u_regf")

    def exc_rfname(regf: UcdpRegfMod) -> None:
        word = regf.add_word("w0")
        word.add_field("chk", u.BitType(), bus="RW", core="RO")
        regf.add_soft_rst("ctrl.clrall")

    with raises(ValueError, match=re.escape("There is no register/field of name 'ctrl/clrall'.")):
        ExMod(tst_cond=exc_rfname).get_inst("u_regf")

    def exc_rsttype(regf: UcdpRegfMod) -> None:
        word = regf.add_word("ctrl")
        word.add_field("clrall", u.BitType(), bus="WO", core="RO")
        regf.add_soft_rst("ctrl.clrall")

    with raises(ValueError, match=re.escape("Soft reset from ctrl/clrall is not of type 'RstType()' but 'BitType()'.")):
        ExMod(tst_cond=exc_rsttype).get_inst("u_regf")

    def exc_depth(regf: UcdpRegfMod) -> None:
        word = regf.add_word("ctrl", depth=3)
        word.add_field("clrall", u.RstType(), bus="WO", core="RO")
        regf.add_soft_rst("ctrl.clrall")

    with raises(ValueError, match=re.escape("Soft reset from ctrl/clrall must not have 'depth'>0 in word.")):
        ExMod(tst_cond=exc_depth).get_inst("u_regf")

    def exc_inregf(regf: UcdpRegfMod) -> None:
        word = regf.add_word("ctrl")
        word.add_field("clrall", u.RstType(), bus="RW", core="RO")
        regf.add_soft_rst("ctrl.clrall")

    with raises(ValueError, match=re.escape("Soft reset from ctrl/clrall must not have 'in_regf=True'.")):
        ExMod(tst_cond=exc_inregf).get_inst("u_regf")

    def exc_rstdupl(regf: UcdpRegfMod) -> None:
        word = regf.add_word("ctrl")
        word.add_field("clrall", u.RstType(), bus="WO", core="RO")
        regf.add_soft_rst("ctrl.clrall")
        regf.add_soft_rst("soft_rst_i")

    with raises(ValueError, match=re.escape("Soft reset has been already defined.")):
        ExMod(tst_cond=exc_rstdupl).get_inst("u_regf")

    def exc_wrgrd(regf: UcdpRegfMod) -> None:
        word = regf.add_word("w0")
        word.add_field("chk", u.BitType(), "RW", wr_guard="foo_i")
        regf.add_port(u.UintType(3), "foo_i")

    with raises(ValueError, match=re.escape("Illegal type 'UintType(3)' for existing signal 'foo_i' in wr_guard.")):
        ExMod(tst_cond=exc_wrgrd).get_inst("u_regf")

    def exc_route(regf: UcdpRegfMod) -> None:
        word = regf.add_word("w0")
        word.add_field("chk", u.BitType(), bus="RW", core=ua.access.NA, route="chk_s")

    with raises(ValueError, match=re.escape("Field 'chk' has no core access for route.")):
        ExMod(tst_cond=exc_route).get_inst("u_regf")
