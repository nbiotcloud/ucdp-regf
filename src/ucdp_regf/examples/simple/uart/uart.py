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
"""UART Example."""

from typing import ClassVar

import ucdp as u
from fileliststandard import HdlFileList
from glbl.bus import BusType
from glbl.clk_gate import ClkGateMod
from glbl.regf import RegfMod


class UartIoType(u.AStructType):
    """UART IO."""

    title: str = "UART"
    comment: str = "RX/TX"

    def _build(self) -> None:
        self._add("rx", u.BitType(), u.BWD)
        self._add("tx", u.BitType(), u.FWD)


class UartMod(u.AMod):
    """A Simple UART."""

    filelists: ClassVar[u.ModFileLists] = (HdlFileList(gen="full"),)

    def _build(self) -> None:
        self.add_port(u.ClkRstAnType(), "main_i")
        self.add_port(UartIoType(), "uart_o")
        self.add_port(BusType(), "bus_i")

        # Power-Save Clock Gate
        clkgate = ClkGateMod(self, "u_clk_gate")
        clkgate.con("clk_i", "main_clk_i")
        clkgate.con("clk_o", "create(clk_s)")

        # Register File
        regf = RegfMod(self, "u_regf")
        regf.con("main_i", "main_i")

        word = regf.add_word("ctrl")
        word.add_field("ena", u.EnaType(), "RW", route="u_clk_gate/ena_i")
        word.add_field("busy", u.BusyType(), "RO", align=4, route="create(u_core/busy_o)")

        # Core
        core = UartCoreMod(self, "u_core")
        core.add_port(u.ClkRstAnType(), "main_i")
        core.con("main_clk_i", "clk_s")
        core.con("main_rst_an_i", "main_rst_an_i")


class UartCoreMod(u.ACoreMod):
    """Core Layer."""

    filelists: ClassVar[u.ModFileLists] = (HdlFileList(gen="inplace"),)
