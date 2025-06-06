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
"""File List Standards."""

import ucdp as u


class HdlFileList(u.ModFileList):
    """HDL File Lists."""

    name: str = "hdl"
    filepaths: u.ToPaths = (
        # Path is relative to Module Python File
        # Environment variables are supported too
        # Wildcards are supported. Also in combination with environment variables!
        "$PRJROOT/{mod.libname}/{mod.topmodname}/{view}/{mod.modname}.sv",
    )
    template_filepaths: u.ToPaths = ("sv.mako",)

    @staticmethod
    def get_mod_placeholder(mod, **kwargs) -> u.Placeholder:
        """Get Module Placeholder."""
        view = "tb" if mod.is_tb else "rtl"
        return {
            "mod": mod,
            "view": view,
            **kwargs,
        }
