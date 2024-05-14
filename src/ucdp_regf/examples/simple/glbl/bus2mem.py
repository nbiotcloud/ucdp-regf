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
"""Example Bus Infrastructure."""

from typing import ClassVar

import ucdp as u
from fileliststandard import HdlFileList
from ucdp_glbl.mem import MemIoType

from glbl.bus import BusType


class Bus2MemMod(u.AMod):
    """Bus-To-Memory Adapter."""

    filelists: ClassVar[u.ModFileLists] = (HdlFileList(gen="inplace"),)

    def _build(self):
        datawidth_p = self.add_param(u.IntegerType(), "datawidth_p")
        addrwidth_p = self.add_param(u.IntegerType(), "addrwidth_p")
        memiotype = MemIoType(datawidth=datawidth_p, addrwidth=addrwidth_p, writable=True, err=True)
        self.add_port(BusType(), "bus_i")
        self.add_port(memiotype, "mem_o")
