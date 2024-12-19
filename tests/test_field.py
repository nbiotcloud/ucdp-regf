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
"""Field Tests."""

import ucdp as u
from pytest import fixture

from ucdp_regf.ucdp_regf import Word


@fixture
def word():
    """Example Word."""
    yield Word(name="word", offset=0, width=32)


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
