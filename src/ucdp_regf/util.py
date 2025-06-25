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
Utilities.
"""

# ruff: noqa: C901, PERF401, PLR0912, PLR0915

from collections.abc import Iterator
from typing import TypeAlias

import ucdp as u
import ucdpsv as usv
from aligntext import Align
from ucdp_glbl.mem import SliceWidths

from ucdp_regf.ucdp_regf import Addrspace, Field, ReadOp, Word, WriteOp

Guards: TypeAlias = dict[str, tuple[str, str]]
WrOnceGuards: TypeAlias = dict[str, int]


def filter_regf_flipflops(field: Field) -> bool:
    """In-Regf Flop Fields."""
    return field.in_regf and not field.is_const


def filter_buswrite(field: Field) -> bool:
    """Writable Bus Fields."""
    return field.bus and field.bus.write


def filter_buswriteonce(field: Field) -> bool:
    """Write-Once Bus Fields."""
    return field.bus and field.bus.write and field.bus.write.once


def filter_busread(field: Field) -> bool:
    """Bus-Readable Fields."""
    return field.bus and field.bus.read


def filter_busacc(field: Field) -> bool:
    """Bus accessible Fields."""
    return field.bus


def filter_busrdmod(field: Field) -> bool:
    """Modify-on-read Fields in Regf."""
    return field.bus and field.bus.read and field.bus.read.data is not None


def filter_coreread(field: Field) -> bool:
    """Core-Readable Fields."""
    return field.core and field.core.read


def iter_pgrp_names(obj: Field | Word) -> Iterator[str]:
    """Iterate over port group names."""
    if obj.portgroups:
        for grp in obj.portgroups:
            yield f"{grp}_"
    else:
        yield ""


def iter_word_depth(word: Word) -> Iterator[str]:
    """Iterate of word indices."""
    if word.depth:
        for idx in range(word.depth):
            yield f"[{idx}]"
    else:
        yield ""


def get_ff_rst_values(rslvr: usv.SvExprResolver, addrspace: Addrspace) -> Align:
    """Get Flip-Flop Reset Values."""
    ff_dly = f"#{rslvr.ff_dly} " if rslvr.ff_dly else ""

    aligntext = Align(rtrim=True)
    aligntext.set_separators(f" <= {ff_dly}", first=" " * 6)
    for word, fields in addrspace.iter():
        aligntext.add_spacer(f"      // Word: {word.name}")
        for field in fields:  # regular in-regf filed flops
            if not filter_regf_flipflops(field):
                continue
            signame = f"data_{field.signame}_r"
            type_ = field.type_
            if word.depth:
                type_ = u.ArrayType(type_, word.depth)
            defval = f"{rslvr.get_default(type_)};"
            aligntext.add_row(signame, defval)
        # special purpose flops
        wordonce = False
        grdonce: dict[str, int] = {}
        wroname = f"bus_{word.name}_{{os}}once_r"
        wrotype = u.BitType(default=1)
        updtype = u.BitType()
        if word.depth:
            wrotype = u.ArrayType(wrotype, word.depth)
            updtype = u.ArrayType(updtype, word.depth)
        wrodef = f"{rslvr.get_default(wrotype)};"
        upddef = f"{rslvr.get_default(updtype)};"
        if word.upd_strb:  # TODO: no FF-strb when all fields are WO or in-core...
            aligntext.add_row(f"upd_strb_{word.name}_r", upddef)
        for field in fields:
            if field.upd_strb:
                aligntext.add_row(f"upd_strb_{field.signame}_r", upddef)
            if not filter_buswriteonce(field):
                continue
            if field.bus.write.once and field.wr_guard:
                grdidx = grdonce.setdefault(field.wr_guard, len(grdonce))
                oncespec = f"grd{grdidx}"
                aligntext.add_row(wroname.format(os=oncespec), wrodef)
            elif field.bus.write.once and not wordonce:
                wordonce = True
                aligntext.add_row(wroname.format(os="wr"), wrodef)
    return aligntext


def get_bus_word_wren_defaults(rslvr: usv.SvExprResolver, addrspace: Addrspace) -> Align:
    """Get Bus Word Write Enable Values."""
    aligntext = Align(rtrim=True)
    aligntext.set_separators(" = ", first=" " * 4)
    for word, _ in addrspace.iter(fieldfilter=filter_buswrite):
        signame = f"bus_{word.name}_wren_s"
        if word.depth:
            defval = f"'{{{word.depth}{{1'b0}}}};"
        else:
            defval = "1'b0;"
        aligntext.add_row(signame, defval)
    return aligntext


def get_bus_word_rden_defaults(rslvr: usv.SvExprResolver, addrspace: Addrspace) -> Align:
    """Get Bus Word Read Enable Values."""
    aligntext = Align(rtrim=True)
    aligntext.set_separators(" = ", first=" " * 4)
    for word, _ in addrspace.iter(fieldfilter=filter_busrdmod):
        signame = f"bus_{word.name}_rden_s"
        if word.depth:
            defval = f"'{{{word.depth}{{1'b0}}}};"
        else:
            defval = "1'b0;"
        aligntext.add_row(signame, defval)
    return aligntext


def get_bit_enables(width: int, slicing: int | SliceWidths) -> str:
    """Get Bit Enables."""
    vec = []
    if isinstance(slicing, int):
        if slicing == 1:  # bit enables
            return "mem_sel_i"
        for idx in range((width // slicing) - 1, -1, -1):
            vec.append(f"{{{slicing}{{mem_sel_i[{idx}]}}}}")
    else:
        for idx, slc in reversed(list(enumerate(slicing))):
            if slc > 1:
                vec.append(f"{{{slc}{{mem_sel_i[{idx}]}}}}")
            else:
                vec.append(f"mem_sel_i[{idx}]")
    vecstr = ", ".join(vec)
    return f"{{{vecstr}}}"


def get_word_vecs(rslvr: usv.SvExprResolver, addrspace: Addrspace, indent: int = 0) -> Align:
    """Get Word Vectors for Busread and wordio."""
    aligntext = Align(rtrim=True)
    aligntext.set_separators(first=" " * indent)
    for word, fields in addrspace.iter(fieldfilter=filter_busread):
        if not (word.wordio or any(filter_busread(field) for field in fields)):
            continue
        signame = f"wvec_{word.name}_s"
        if word.depth:
            for idx in range(word.depth):
                wvec = _get_rd_vec(rslvr=rslvr, basename="regf", fields=fields, width=addrspace.width, slc=f"[{idx}]")
                aligntext.add_row("assign", f"{signame}[{idx}]", f"= {wvec};")
        else:
            wvec = _get_rd_vec(rslvr=rslvr, basename="regf", fields=fields, width=addrspace.width)
            aligntext.add_row("assign", signame, f"= {wvec};")
    return aligntext


# def get_rd_vec(rslvr: usv.SvExprResolver, width: int, word: Word, fields: list[Field], idx: None | int = None) -> str:
#     """Read Vector."""
#     slc = f"[{idx}]" if idx is not None else ""
#     if word.fieldio:
#         return _get_rd_vec(rslvr, "regf", fields, width, slc)
#     if word.wordio:
#         field = Field.from_word(word)
#         if filter_busread(field):
#             return _get_rd_vec(rslvr, "regfword", [field], width, slc, srcfields=fields)
#     return _get_rd_vec(rslvr, "", [], width, slc)


def _get_rd_vec(
    rslvr: usv.SvExprResolver,
    basename: str,
    fields: list[Field],
    width: int,
    slc: str = "",
) -> str:
    offs = 0
    vec = []
    for field in fields:
        if (r := field.slice.right) > offs:  # leading rsvd bits
            vec.append(rslvr._get_uint_value(0, r - offs))
        if isinstance(field.type_, u.IntegerType) or isinstance(field.type_, u.SintType):
            flddata = "unsigned'({fldval})"
        else:
            flddata = "{fldval}"
        if field.in_regf:
            vec.append(flddata.format(fldval=f"data_{field.signame}_{'c' if field.is_const else 'r'}{slc}"))
        elif field.portgroups:
            # from core: handle special naming; non-in_regf field cannot be part of more than 1 portgroup
            vec.append(flddata.format(fldval=f"{basename}_{field.portgroups[0]}_{field.signame}_rbus_i{slc}"))
        else:  # from core: std names
            vec.append(flddata.format(fldval=f"{basename}_{field.signame}_rbus_i{slc}"))
        offs = field.slice.left + 1
    if offs < width:  # trailing rsvd bits
        vec.append(rslvr._get_uint_value(0, width - offs))
    if len(vec) > 1:
        return f"{{{', '.join(reversed(vec))}}}"
    return f"{vec[0]}"


def get_wrexpr(
    rslvr: usv.SvExprResolver, type_: u.BaseScalarType, write_acc: WriteOp, dataexpr: str, writeexpr: str
) -> str:
    """Get Write Expression."""
    if write_acc.op in ("0", "1"):
        return rslvr.get_ident_expr(type_, dataexpr, write_acc)
    wrexpr = []
    if dataexpr := rslvr.get_ident_expr(type_, dataexpr, write_acc.data):
        wrexpr.append(dataexpr)
    if op := write_acc.op:
        wrexpr.append(op)
    if writeexpr := rslvr.get_ident_expr(type_, writeexpr, write_acc.write):
        wrexpr.append(writeexpr)
    return " ".join(wrexpr)


def get_rdexpr(rslvr: usv.SvExprResolver, type_: u.BaseScalarType, read_acc: ReadOp, dataexpr: str) -> str:
    """Get Read Expression."""
    return rslvr.get_ident_expr(type_, dataexpr, read_acc.data)


def iter_field_updates(
    rslvr: usv.SvExprResolver,
    addrspace: Addrspace,
    guards: dict[str, tuple[str, str]],
    sliced_en: bool = False,
    indent: int = 0,
) -> Iterator[str]:
    """Iterate over Field Updates."""
    pre = " " * indent
    ff_dly = f"#{rslvr.ff_dly} " if rslvr.ff_dly else ""
    for word in addrspace.words:
        slc = ""
        grdonce: dict[str, int] = {}
        cndname = f"bus_{word.name}_{{os}}once_r"
        for field in word.fields:
            if not field.in_regf:
                continue
            upd_bus = []
            upd_core = []
            # upd_strb = []
            if field.bus and field.bus.write:
                buswren = [f"(bus_{word.name}_wren_s{{slc}} == 1'b1)"]
                busmask = f"bit_en_s{rslvr.resolve_slice(field.slice)}"  # in case of sliced access
                if field.bus.write.once and field.wr_guard:
                    grdidx = grdonce.setdefault(field.wr_guard, len(grdonce))
                    oncespec = f"grd{grdidx}"
                    buswren.append(f"({cndname.format(os=oncespec)}{{slc}} == 1'b1)")
                elif field.bus.write.once:
                    oncespec = "wr"
                    buswren.append(f"({cndname.format(os=oncespec)}{{slc}} == 1'b1)")
                elif field.wr_guard:
                    buswren.append(f"({guards[field.wr_guard][0]} == 1'b1)")
                if len(buswren) > 1:
                    buswrenexpr = f"({' && '.join(buswren)})"
                else:
                    buswrenexpr = buswren[0]
                memwdata = f"mem_wdata_i{rslvr.resolve_slice(field.slice)}"
                if isinstance(field.type_, u.IntegerType) or isinstance(field.type_, u.SintType):
                    memwdata = f"signed'({memwdata})"
                    busmask = f"signed'({busmask})"
                wrexpr = get_wrexpr(rslvr, field.type_, field.bus.write, f"data_{field.signame}_r{{slc}}", memwdata)
                if sliced_en:
                    wrexpr = f"(data_{field.signame}_r{{slc}} & ~{busmask}) | ({wrexpr} & {busmask})"
                upd_bus.append(f"if {buswrenexpr} begin\n  data_{field.signame}_r{{slc}} <= {ff_dly}{wrexpr};\nend")
                # upd_strb.append(f"bus_{word.name}_wren_s{{slc}}")
            if field.bus and field.bus.read and field.bus.read.data is not None:
                rdexpr = get_rdexpr(rslvr, field.type_, field.bus.read, f"data_{field.signame}_r{{slc}}")
                upd_bus.append(
                    f"if (bus_{word.name}_rden_s{{slc}} == 1'b1) begin\n  "
                    f"data_{field.signame}_r{{slc}} <= {ff_dly}{rdexpr};\nend"
                )
                # upd_strb.append(f"bus_{word.name}_rden_s{{slc}}")

            if field.portgroups:
                grpname = (
                    f"{field.portgroups[0]}_"  # if field updates from core it cannot be in more than one portgroup
                )
            else:
                grpname = ""
            basename = f"regf_{grpname}{field.signame}"
            if field.core and field.core.write:  # no slice-enables from core, though
                wrexpr = get_wrexpr(
                    rslvr, field.type_, field.core.write, f"data_{field.signame}_r{{slc}}", f"{basename}_wval_i{{slc}}"
                )
                upd_core.append(
                    f"if ({basename}_wr_i{{slc}} == 1'b1) begin\n  "
                    f"data_{field.signame}_r{{slc}} <= {ff_dly}{wrexpr};\nend"
                )
                # upd_strb.append(f"{basename}_wr_i{{slc}}")
            if field.core and field.core.read and field.core.read.data is not None:
                rdexpr = get_rdexpr(rslvr, field.type_, field.core.read, f"data_{field.signame}_r{{slc}}")
                upd_core.append(
                    f"if ({basename}_rd_i{{slc}} == 1'b1) begin\n  "
                    f"data_{field.signame}_r{{slc}} <= {ff_dly}{rdexpr};\nend"
                )
                # upd_strb.append(f"{basename}_rd_i{{slc}}")
            if field.bus_prio:
                upd = upd_bus + upd_core
            else:
                upd = upd_core + upd_bus

            if word.depth:
                lines = []
                for idx in range(word.depth):
                    slc = f"[{idx}]"
                    lines.extend((" else ".join(upd)).format(slc=slc).splitlines())
                    if field.upd_strb:
                        lines.append(f"upd_strb_{field.signame}_r{slc} <= {buswrenexpr.format(slc=slc)} ? 1'b1 : 1'b0;")
            else:
                slc = ""
                lines = (" else ".join(upd)).format(slc=slc).splitlines()
                if field.upd_strb:
                    lines.append(f"upd_strb_{field.signame}_r <= {ff_dly}{buswrenexpr.format(slc=slc)} ? 1'b1 : 1'b0;")
            for ln in lines:
                yield f"{pre}{ln}"
        if word.upd_strb:
            buswren = [f"(bus_{word.name}_wren_s{{slc}} == 1'b1)"]
            if word.wr_guard:
                buswren.append(f"({guards[word.wr_guard][0]} == 1'b1)")
            if len(buswren) > 1:
                buswrenexpr = f"({' && '.join(buswren)})"
            else:
                buswrenexpr = buswren[0]
            if word.depth:
                for idx in range(word.depth):
                    slc = f"[{idx}]"
                    yield f"{pre}upd_strb_{word.name}_r[{idx}] <= {ff_dly}{buswrenexpr.format(slc=slc)} ? 1'b1 : 1'b0;"
            else:
                slc = ""
                yield f"{pre}upd_strb_{word.name}_r <= {ff_dly}{buswrenexpr.format(slc=slc)} ? 1'b1 : 1'b0;"


def iter_wronce_updates(
    rslvr: usv.SvExprResolver, addrspace: Addrspace, guards: dict[str, tuple[str, str]], indent: int = 0
) -> Iterator[str]:
    """Write Once Updates."""
    pre = " " * indent
    # ff_dly = f"#{rslvr.ff_dly} " if rslvr.ff_dly else ""
    for word, fields in addrspace.iter(fieldfilter=filter_buswriteonce):
        wordonce = False
        grdonce: dict[str, int] = {}
        cndname = f"bus_{word.name}_{{os}}once_r"
        for field in fields:
            buswren = [f"(bus_{word.name}_wren_s{{slc}} == 1'b1)"]
            if field.wr_guard:
                buswren.append(f"({guards[field.wr_guard][0]} == 1'b1)")
                grdidx = grdonce.setdefault(field.wr_guard, len(grdonce))
                oncespec = f"grd{grdidx}"
                target = cndname.format(os=oncespec)
            elif not wordonce:
                wordonce = True
                oncespec = "wr"
                target = cndname.format(os=oncespec)
            else:  # another simple wr-once field
                continue
            if len(buswren) > 1:
                buswrenexpr = f"({' && '.join(buswren)})"
            else:
                buswrenexpr = buswren[0]
            upd = f"if {buswrenexpr} begin\n  {target}{{slc}} <= 1'b0;\nend"
            if word.depth:
                lines = []
                for idx in range(word.depth):
                    slc = f"[{idx}]"
                    lines.extend((upd.format(slc=slc)).splitlines())
            else:
                lines = (upd.format(slc="")).splitlines()
            for ln in lines:
                yield f"{pre}{ln}"


def get_wrguard_assigns(guards: dict[str, tuple[str, str]], indent: int = 0) -> Align:
    """Write Guard Assignments."""
    aligntext = Align(rtrim=True)
    aligntext.set_separators(first=" " * indent)
    for signame, expr in guards.values():
        aligntext.add_row("assign", signame, f"= {expr};")
    return aligntext


def get_outp_assigns(
    rslvr: usv.SvExprResolver,
    addrspace: Addrspace,
    guards: Guards,
    wronce_guards: WrOnceGuards,
    sliced_en: bool = False,
    indent: int = 0,
) -> Align:
    """Output Assignments."""
    aligntext = Align(rtrim=True)
    aligntext.set_separators(first=" " * indent)
    for word, fields in addrspace.iter():  # BOZO coreread?!?
        if word.fieldio:
            for field in fields:
                _add_outp_assigns(rslvr, aligntext, "regf", word, field, guards, wronce_guards, sliced_en)
        if word.wordio:
            for gn in iter_pgrp_names(word):
                aligntext.add_row("assign", f"regfword_{gn}{word.name}_rval_o", f"= wvec_{word.name}_s;")
                if word.upd_strb:
                    aligntext.add_row("assign", f"regfword_{gn}{word.name}_upd_o", f"= upd_strb_{word.name}_r;")
            # field = Field.from_word(word)
            # _add_outp_assigns(
            #     rslvr, aligntext, "regfword", word, field, guards, wronce_guards, sliced_en, #srcfields=fields
            # )
    return aligntext


def _add_outp_assigns(
    rslvr: usv.SvExprResolver,
    aligntext: Align,
    basename: str,
    word: Word,
    field: Field,
    guards: Guards,
    wronce_guards: WrOnceGuards,
    sliced_en: bool = False,
    # srcfields: list[Field] | None = None,
) -> None:
    cndname = f"bus_{word.name}_{{os}}once_r"
    post = "c" if field.is_const else "r"
    if field.in_regf:
        if field.core and field.core.read:
            for gn in iter_pgrp_names(field):
                # if srcfields:  # == wordio
                #     for slc in iter_word_depth(word):
                #         vec = _get_rd_vec(rslvr, "regfword", [field], word.width, slc, srcfields=srcfields)
                #         aligntext.add_row("assign", f"{basename}_{gn}{field.signame}_rval_o{slc}", f"= {vec};")
                # else:
                vec = f"data_{field.signame}_{post}"
                aligntext.add_row("assign", f"{basename}_{gn}{field.signame}_rval_o", f"= {vec};")
        if field.upd_strb:
            for gn in iter_pgrp_names(field):
                # if srcfields:  # == wordio
                #     for slc in iter_word_depth(word):
                #         strb = (
                #             " | ".join(f"upd_strb_{field.signame}_r{slc}" for field in srcfields if field.upd_strb)
                #             or "1'b0"
                #         )
                #         aligntext.add_row("assign", f"{basename}_{gn}{word.name}_upd_o{slc}", f"= {strb};")
                # else:
                aligntext.add_row("assign", f"{basename}_{gn}{field.signame}_upd_o", f"= upd_strb_{field.signame}_r;")
    else:  # in core
        if field.bus and field.bus.write:
            buswren = [f"(bus_{word.name}_wren_s{{slc}} == 1'b1)"]
            if field.bus.write.once and field.wr_guard:
                oncespec = f"grd{wronce_guards[field.signame]}"
                buswren.append(f"({cndname.format(os=oncespec)}{{slc}} == 1'b1)")
            elif field.bus.write.once:
                oncespec = "wr"
                buswren.append(f"({cndname.format(os=oncespec)}{{slc}} == 1'b1)")
            elif field.wr_guard:
                buswren.append(f"({guards[field.wr_guard][0]} == 1'b1)")
            if len(buswren) > 1:
                buswrenexpr = f"({' && '.join(buswren)})"
            else:
                buswrenexpr = buswren[0]
            # wbus_o = f"{basename}_{{grp}}{field.signame}_wbus_o{{slc}}"
            # wr_o = f"{basename}_{{grp}}{field.signame}_wr_o{{slc}}"
            zval = f"{rslvr._resolve_value(field.type_, value=0)}"
            memwdata = f"mem_wdata_i{rslvr.resolve_slice(field.slice)}"
            memwmask = f"bit_en_s{rslvr.resolve_slice(field.slice)}"
            if isinstance(field.type_, u.IntegerType) or isinstance(field.type_, u.SintType):
                memwdata = f"signed'({memwdata})"
            for gn in iter_pgrp_names(field):
                wrexpr = get_wrexpr(
                    rslvr, field.type_, field.bus.write, f"{basename}_{gn}{field.signame}_rbus_i", memwdata
                )
                for slc in iter_word_depth(word):
                    wrencond = buswrenexpr.format(slc=slc)
                    aligntext.add_row(
                        "assign", f"{basename}_{gn}{field.signame}_wbus_o{slc}", f"= {wrencond} ? {wrexpr} : {zval};"
                    )
                    if sliced_en:
                        aligntext.add_row("assign", f"{basename}_{gn}{field.signame}_wr_o{slc}", f"= {memwmask};")
                    else:
                        aligntext.add_row(
                            "assign", f"{basename}_{gn}{field.signame}_wr_o{slc}", f"= {wrencond} ? 1'b1 : 1'b0;"
                        )
        if field.bus and field.bus.read and field.bus.read.data is not None:
            busrden = f"= (bus_{word.name}_rden_s{{slc}} == 1'b1) ? 1'b1 : 1'b0;"
            for gn in iter_pgrp_names(field):
                for slc in iter_word_depth(word):
                    aligntext.add_row("assign", f"{basename}_{gn}{field.signame}_rd_o", busrden.format(slc=slc))


def get_soft_rst_assign(
    soft_rst: str, addrspace: Addrspace, guards: dict[str, tuple[str, str]], wronce_guards: dict[str, int]
) -> str:
    """Soft Reset Assignments."""
    if soft_rst is None or not soft_rst.endswith("_s"):
        return ""
    for word, fields in addrspace.iter(fieldfilter=filter_coreread):
        cndname = f"bus_{word.name}_{{os}}once_r"
        for field in fields:
            if f"bus_{field.signame}_rst_s" != soft_rst:
                continue
            buswren = [f"mem_wdata_i[{field.slice}]"]
            buswren.append(f"bus_{word.name}_wren_s")
            if field.bus.write.once and field.wr_guard:
                oncespec = f"grd{wronce_guards[field.signame]}"
                buswren.append(f"{cndname.format(os=oncespec)}{{slc}}")
            elif field.bus.write.once:
                oncespec = "wr"
                buswren.append(f"{cndname.format(os=oncespec)}")
            elif field.wr_guard:
                buswren.append(f"{guards[field.wr_guard][0]}")
            return f"{' & '.join(buswren)}"
    return ""


def map_wronce_guards(addrspace: Addrspace, guards: dict[str, tuple[str, str]]) -> dict[str, int]:
    """Map Write Once Guards."""
    wronce_guards = {}
    for _word, fields in addrspace.iter(fieldfilter=filter_buswriteonce):
        grdonce: dict[str, int] = {}
        for field in fields:
            if field.bus.write.once and field.wr_guard:
                grdidx = grdonce.setdefault(field.wr_guard, len(grdonce))
                wronce_guards[field.signame] = grdidx
    return wronce_guards
