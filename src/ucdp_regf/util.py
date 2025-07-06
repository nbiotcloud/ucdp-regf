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
Utilities for Regf.

General Field Update Conditions/Behavior:

slicing wrguard wronce  grderr      write-ena               new fdata                           reset wronce    buserr
0       0       0       -           addr                    wdata
0       0       1       0           addr & wronce           wdata                               addr
0       0       1       W           addr & wronce           wdata                               addr            ~wronce
0       0       1       C           addr & wronce           wdata                               addr            ~wronce & (fdata != wdata)
0       1       0       0           addr & guard            wdata
0       1       0       W           addr & guard            wdata                                               ~guard
0       1       0       C           addr & guard            wdata                                               ~guard & (fdata != wdata)
0       1       1       0           addr & guard & wronce   wdata                               addr
0       1       1       W           addr & guard & wronce   wdata                               addr            ~guard | ~wronce
0       1       1       C           addr & guard & wronce   wdata                               addr            (~guard | ~wronce) & (fdata != wdata)
1       0       0       -           addr                    (fdata & ~slc) | (wdata & slc)
1       0       1       0           addr & wronce           (fdata & ~slc) | (wdata & slc)      addr & (|slc)
1       0       1       W           addr & wronce           (fdata & ~slc) | (wdata & slc)      addr & (|slc)   ~wronce & (|slc)
1       0       1       C           addr & wronce           (fdata & ~slc) | (wdata & slc)      addr & (|slc)   ~wronce & (|slc) & ((fdata & slc) != (wdata & slc))
1       1       0       0           addr & guard            (fdata & ~slc) | (wdata & slc)
1       1       0       W           addr & guard            (fdata & ~slc) | (wdata & slc)                      ~guard & (|slc)
1       1       0       C           addr & guard            (fdata & ~slc) | (wdata & slc)                      ~guard & (|slc) & ((fdata & slc) != (wdata & slc))
1       1       1       0           addr & guard & wronce   (fdata & ~slc) | (wdata & slc)      addr & (|slc)
1       1       1       W           addr & guard & wronce   (fdata & ~slc) | (wdata & slc)      addr & (|slc)   (~guard | ~wronce) & (|slc)

"""  # noqa: E501

# ruff: noqa: C901, PERF401, PLR0912, PLR0915

from collections.abc import Iterator

import ucdp as u
import ucdpsv as usv
from aligntext import Align
from ucdp_glbl.mem import SliceWidths

from ucdp_regf.ucdp_regf import (
    Addrspace,
    Field,
    FldOnceDict,
    GuardDict,
    ReadOp,
    Word,
    WrdOnceDict,
    WriteOp,
    filter_busacc,
    filter_busgrderr,
    filter_busrdmod,
    filter_busread,
    filter_buswrite,
    filter_buswriteonce,
    filter_coreacc,
    filter_coreread,
    filter_regf_flipflops,
)


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


def get_ff_rst_values(rslvr: usv.SvExprResolver, addrspace: Addrspace, wrdonce: WrdOnceDict) -> Align:
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
        wrotype = u.BitType(default=1)
        updtype = u.BitType()
        if word.depth:
            wrotype = u.ArrayType(wrotype, word.depth)
            updtype = u.ArrayType(updtype, word.depth)
        wrodef = f"{rslvr.get_default(wrotype)};"
        upddef = f"{rslvr.get_default(updtype)};"
        if (once := wrdonce.get(word.name, None)) is not None:
            for signame in once.values():
                aligntext.add_row(signame, wrodef)
        if word.upd_strb:  # TODO: no FF-strb when all fields are WO or in-core...
            aligntext.add_row(f"upd_strb_{word.name}_r", upddef)
        for field in fields:
            if field.upd_strb:
                aligntext.add_row(f"upd_strb_{field.signame}_r", upddef)
    return aligntext


def get_bus_decode_defaults(rslvr: usv.SvExprResolver, addrspace: Addrspace) -> Align:
    """Get Bus Word Write and Read-Modify Enable Values."""
    aligntext = Align(rtrim=True)
    aligntext.set_separators(" = ", first=" " * 4)
    for word in addrspace.words:
        wentype = u.BitType()
        if word.depth:
            wentype = u.ArrayType(wentype, word.depth)
        defval = f"{rslvr.get_default(wentype)};"
        if any(field for field in word.fields if filter_buswrite(field)):
            aligntext.add_row(f"bus_{word.name}_wren_s", defval)
        if any(field for field in word.fields if filter_busrdmod(field)):
            aligntext.add_row(f"bus_{word.name}_rden_s", defval)
    return aligntext


def iter_addr_decode(rslvr: usv.SvExprResolver, addrspace: Addrspace, indent: int = 0) -> Iterator[str]:
    """Iterate over Address Decoding."""
    pre = " " * indent
    for word, fields in addrspace.iter(fieldfilter=filter_busacc):
        has_wr = any(field for field in fields if field.bus.write)
        has_rd = any(field for field in fields if field.bus.read)
        has_rdmod = any(field for field in fields if filter_busrdmod(field))
        has_grderr = any(field for field in fields if filter_busgrderr(field))

        mwr = mrd = merr = ""
        if has_wr:
            mwr = f"bus_{word.name}_wren_s{{idx}} = mem_wena_i"
        if has_rdmod:
            mrd = f"bus_{word.name}_rden_s{{idx}} = ~mem_wena_i"
        if has_wr and not has_rd:
            merr = "mem_err_o = ~mem_wena_i"
        elif not has_wr and has_rd:
            merr = "mem_err_o = mem_wena_i"
        if has_grderr:
            if merr:
                merr += f" | bus_{word.name}_grderr_s{{idx}}"
            else:
                merr = f"mem_err_o = bus_{word.name}_grderr_s{{idx}}"

        if word.depth:
            for idx in range(word.depth):
                yield f"{pre}{rslvr._get_uint_value((word.offset + idx), addrspace.addr_width)}: begin"
                if merr:
                    yield f"{pre}  {merr.format(idx=f'[{idx}]')};"
                if mwr:
                    yield f"{pre}  {mwr.format(idx=f'[{idx}]')};"
                if mrd:
                    yield f"{pre}  {mrd.format(idx=f'[{idx}]')};"
                yield f"{pre}end"
        else:
            yield f"{pre}{rslvr._get_uint_value((word.offset), addrspace.addr_width)}: begin"
            if merr:
                yield f"{pre}  {merr.format(idx='')};"
            if mwr:
                yield f"{pre}  {mwr.format(idx='')};"
            if mrd:
                yield f"{pre}  {mrd.format(idx='')};"
            yield f"{pre}end"


def iter_read_bus(rslvr: usv.SvExprResolver, addrspace: Addrspace, indent: int = 0) -> Iterator[str]:
    """Iterate over bus read-backs."""
    pre = " " * indent
    for word, fields in addrspace.iter(fieldfilter=filter_busread):
        wvec = get_word_vec(rslvr=rslvr, fields=fields, width=addrspace.width)
        if word.depth:
            for idx in range(word.depth):
                yield f"{pre}{rslvr._get_uint_value((word.offset + idx), addrspace.addr_width)}: begin"
                yield f"{pre}  mem_rdata_o = {wvec.replace('{slc}', f'[{idx}]')};"
                yield f"{pre}end"
        else:
            yield f"{pre}{rslvr._get_uint_value((word.offset), addrspace.addr_width)}: begin"
            yield f"{pre}  mem_rdata_o = {wvec.replace('{slc}', '')};"
            yield f"{pre}end"


def get_guard_errors(  # TODO: errors on read-modify
    rslvr: usv.SvExprResolver,
    addrspace: Addrspace,
    guards: GuardDict,
    fldonce: FldOnceDict,
    sliced_en: bool = False,
    indent: int = 0,
) -> Align:
    """Get Error Conditiones for Guarded Fields."""
    aligntext = Align(rtrim=True)
    aligntext.set_separators(first=" " * indent)
    for word, fields in addrspace.iter(fieldfilter=filter_busgrderr):
        signame = f"bus_{word.name}_grderr_s{{idx}}"
        flderrlst = []
        for field in fields:
            cnd = []
            fslc = rslvr.resolve_slice(field.slice)
            if field.wr_guard and filter_buswriteonce(field):
                cnd.append(f"(~{guards[field.wr_guard].signame} | ~{fldonce[field.signame]}{{idx}})")
            elif field.wr_guard:
                cnd.append(f"~{guards[field.wr_guard].signame}")
            elif filter_buswriteonce(field):
                cnd.append(f"~{fldonce[field.signame]}{{idx}}")
            else:  # no reason for guard error
                continue
            if sliced_en:
                cnd.append(f"(|bit_en_s{fslc})")

            if field.guard_err == "C":  # C only for fields where valsig is defined...
                if sliced_en:
                    cnd.append(f"(|({field.valname}{{idx}} & bit_en_s{fslc}) ^ (mem_wdata_i{fslc} & bit_en_s{fslc}))")
                else:
                    cnd.append(f"(|({field.valname}{{idx}} ^ mem_wdata_i{fslc}))")
            if len(cnd) > 1:
                flderr = f"({' & '.join(cnd)})"
            else:
                flderr = cnd[0]
            if flderr not in flderrlst:  # avoid duplicate conditions
                flderrlst.append(flderr)

        if len(flderrlst) == 1:
            flderrs = f"{flderrlst[0]};"
        else:
            flderrs = " |\n  ".join(flderrlst)
            flderrs = f"( {flderrs} );"

        if word.depth:
            for idx in range(word.depth):
                aligntext.add_row(
                    "assign", signame.format(idx=f"[{idx}]"), "=", "mem_wena_i &", flderrs.format(idx=f"[{idx}]")
                )
        else:
            aligntext.add_row("assign", signame.format(idx=""), "=", "mem_wena_i & ", flderrs.format(idx=""))
    return aligntext


def get_bit_enables(width: int, slicing: int | SliceWidths) -> str:
    """Get Bit Enables."""
    vec = []
    if isinstance(slicing, int):
        if slicing == 1:  # bit enables
            return "mem_sel_i"
        for idx in range((width // slicing) - 1, -1, -1):
            vec.append(f"{{{slicing}{{mem_sel_i[{idx}]}}}}")
    elif max(slicing) == 1:
        return "mem_sel_i"
    else:
        for idx, slc in reversed(list(enumerate(slicing))):
            if slc > 1:
                vec.append(f"{{{slc}{{mem_sel_i[{idx}]}}}}")
            else:
                vec.append(f"mem_sel_i[{idx}]")
    vecstr = ", ".join(vec)
    return f"{{{vecstr}}}"


def get_word_vecs(rslvr: usv.SvExprResolver, addrspace: Addrspace, indent: int = 0) -> Align:
    """Get Word Vectors for wordio."""
    aligntext = Align(rtrim=True)
    aligntext.set_separators(first=" " * indent)
    for word, fields in addrspace.iter(fieldfilter=filter_coreread):
        if not word.wordio:
            continue
        signame = f"wvec_{word.name}_s"
        wvec = get_word_vec(rslvr=rslvr, fields=fields, width=addrspace.width)
        # we need to use replace below due to some curly brackets from concatenate/replicate operators inside
        if word.depth:
            for idx in range(word.depth):
                aligntext.add_row("assign", f"{signame}[{idx}]", f"= {wvec.replace('{slc}', f'[{idx}]')};")
        else:
            aligntext.add_row("assign", signame, f"= {wvec.replace('{slc}', '')};")
    return aligntext


def get_word_vec(rslvr: usv.SvExprResolver, fields: list[Field], width: int) -> str:
    """Collect all fields into concatenated vector."""
    offs = 0
    vec = []
    for field in fields:
        if (r := field.slice.right) > offs:  # leading rsvd bits
            vec.append(rslvr._get_uint_value(0, r - offs))
        if isinstance(field.type_, u.IntegerType) or isinstance(field.type_, u.SintType):
            flddata = "unsigned'({fldval})"
        else:
            flddata = "{fldval}"
        vec.append(flddata.format(fldval=f"{field.valname}{{slc}}"))
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
    if write_acc.op in (0, 1):
        return rslvr.get_ident_expr(type_, dataexpr, write_acc.op)
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
    guards: GuardDict,
    fldonce: dict[str, str],
    sliced_en: bool = False,
    indent: int = 0,
) -> Iterator[str]:
    """Iterate over Field Updates."""
    pre = " " * indent
    ff_dly = f"#{rslvr.ff_dly} " if rslvr.ff_dly else ""
    for word in addrspace.words:
        slc = ""
        for field in word.fields:
            if not field.in_regf:
                continue
            upd_bus = []
            upd_core = []
            if field.bus and field.bus.write:
                buswren = [f"(bus_{word.name}_wren_s{{slc}} == 1'b1)"]
                busmask = f"bit_en_s{rslvr.resolve_slice(field.slice)}"  # in case of sliced access
                if field.wr_guard:
                    buswren.append(f"({guards[field.wr_guard].signame} == 1'b1)")
                if field.bus.write.once:
                    buswren.append(f"({fldonce[field.signame]}{{slc}} == 1'b1)")
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
            if field.bus and field.bus.read and field.bus.read.data is not None:
                rdexpr = get_rdexpr(rslvr, field.type_, field.bus.read, f"data_{field.signame}_r{{slc}}")
                upd_bus.append(
                    f"if (bus_{word.name}_rden_s{{slc}} == 1'b1) begin\n  "
                    f"data_{field.signame}_r{{slc}} <= {ff_dly}{rdexpr};\nend"
                )

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
            if field.core and field.core.read and field.core.read.data is not None:
                rdexpr = get_rdexpr(rslvr, field.type_, field.core.read, f"data_{field.signame}_r{{slc}}")
                upd_core.append(
                    f"if ({basename}_rd_i{{slc}} == 1'b1) begin\n  "
                    f"data_{field.signame}_r{{slc}} <= {ff_dly}{rdexpr};\nend"
                )
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
                buswren.append(f"({guards[word.wr_guard].signame} == 1'b1)")
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
    rslvr: usv.SvExprResolver, addrspace: Addrspace, wrdonce: WrdOnceDict, indent: int = 0
) -> Iterator[str]:
    """Write Once Updates."""
    pre = " " * indent
    ff_dly = f"#{rslvr.ff_dly} " if rslvr.ff_dly else ""
    for word, _ in addrspace.iter(fieldfilter=filter_buswriteonce):
        for grdslc, signame in wrdonce[word.name].items():
            buswren = [f"(bus_{word.name}_wren_s{{slc}} == 1'b1)"]
            if grdslc.grd:
                buswren.append(f"({grdslc.grd} == 1'b1)")
            if grdslc.slc:
                buswren.append(f"({grdslc.slc} == 1'b1)")
            if len(buswren) > 1:
                buswrenexpr = f"({' && '.join(buswren)})"
            else:
                buswrenexpr = buswren[0]
            upd = f"if {buswrenexpr} begin\n  {signame}{{slc}} <= {ff_dly}1'b0;\nend"
            if word.depth:
                lines = []
                for idx in range(word.depth):
                    slc = f"[{idx}]"
                    lines.extend((upd.format(slc=slc)).splitlines())
            else:
                lines = (upd.format(slc="")).splitlines()
            for ln in lines:
                yield f"{pre}{ln}"


def get_wrguard_assigns(guards: GuardDict, indent: int = 0) -> Align:
    """Write Guard Assignments."""
    aligntext = Align(rtrim=True)
    aligntext.set_separators(first=" " * indent)
    for signame, expr in guards.values():
        aligntext.add_row("assign", signame, f"= {expr};")
    return aligntext


def get_outp_assigns(
    rslvr: usv.SvExprResolver,
    addrspace: Addrspace,
    guards: GuardDict,
    fldonce: FldOnceDict,
    sliced_en: bool = False,
    indent: int = 0,
) -> Align:
    """Output Assignments."""
    aligntext = Align(rtrim=True)
    aligntext.set_separators(first=" " * indent)
    for word, fields in addrspace.iter(fieldfilter=filter_coreacc):  # BOZO coreread?!?
        if word.fieldio:
            for field in fields:
                _add_outp_assigns(rslvr, aligntext, word, field, guards, fldonce, sliced_en)
        if word.wordio:
            field = Field.from_word(word)
            _add_outp_assigns(rslvr, aligntext, word, field, guards, fldonce, sliced_en)
    return aligntext


def _add_outp_assigns(
    rslvr: usv.SvExprResolver,
    aligntext: Align,
    word: Word,
    field: Field,
    guards: GuardDict,
    fldonce: FldOnceDict,
    sliced_en: bool = False,
) -> None:
    basename = "regfword" if field.is_alias else "regf"
    if field.in_regf:
        if field.core and field.core.read:
            for gn in iter_pgrp_names(field):
                aligntext.add_row("assign", f"{basename}_{gn}{field.signame}_rval_o", f"= {field.valname};")
        if field.upd_strb:
            for gn in iter_pgrp_names(field):
                aligntext.add_row("assign", f"{basename}_{gn}{field.signame}_upd_o", f"= upd_strb_{field.signame}_r;")
    else:  # in core
        if field.bus and field.bus.write:
            buswren = [f"(bus_{word.name}_wren_s{{slc}} == 1'b1)"]
            if field.wr_guard:
                buswren.append(f"({guards[field.wr_guard].signame} == 1'b1)")
            if field.bus.write.once:
                buswren.append(f"({fldonce[field.signame]}{{slc}} == 1'b1)")
            if len(buswren) > 1:
                buswrenexpr = f"({' && '.join(buswren)})"
            else:
                buswrenexpr = buswren[0]
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
        if filter_busrdmod(field):
            busrden = f"= (bus_{word.name}_rden_s{{slc}} == 1'b1) ? 1'b1 : 1'b0;"
            for gn in iter_pgrp_names(field):
                for slc in iter_word_depth(word):
                    aligntext.add_row("assign", f"{basename}_{gn}{field.signame}_rd_o", busrden.format(slc=slc))
