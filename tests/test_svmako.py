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
from ucdp_regf.ucdp_regf import ACCESSES, UcdpRegfMod


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
                    word.add_field(f"f{fidx}", u.UintType(2), bus, core=core, in_regf=in_regf)
                    fidx += 2
                    if fidx >= word.width:
                        widx += 1
                        word = regf.add_word(f"w{widx}")
                        fidx = 0


def test_top(example_simple, tmp_path):
    """Top Module."""
    copytree(example_simple / "src", tmp_path, dirs_exist_ok=True)
    top = u.load("uart.uart")
    with mock.patch.dict(os.environ, {"PRJROOT": str(tmp_path)}):
        u.generate(top.mod, "hdl")

    assert_refdata(test_top, tmp_path)


def test_full(tmp_path):
    """Register File with All Combinations."""
    mod = FullMod()
    with mock.patch.dict(os.environ, {"PRJROOT": str(tmp_path)}):
        u.generate(mod, "hdl")
    assert_refdata(test_full, tmp_path)
