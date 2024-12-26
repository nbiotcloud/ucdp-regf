##
## MIT License
##
## Copyright (c) 2024 nbiotcloud
##
## Permission is hereby granted, free of charge, to any person obtaining a copy
## of this software and associated documentation files (the "Software"), to deal
## in the Software without restriction, including without limitation the rights
## to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
## copies of the Software, and to permit persons to whom the Software is
## furnished to do so, subject to the following conditions:
##
## The above copyright notice and this permission notice shall be included in all
## copies or substantial portions of the Software.
##
## THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
## IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
## FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
## AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
## LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
## OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
## SOFTWARE.
##

<%!
import ucdp as u
import ucdpsv as usv
from aligntext import Align
from ucdp_regf.ucdp_regf import Field, Word, Addrspace, Access, WriteOp, ReadOp
from collections.abc import Iterator

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

def iter_pgrp_names(field: Field) -> Iterator[str]:
    """Iterate over port group names."""
    if field.portgroups:
      for grp in field.portgroups:
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
    ff_dly = f"#{rslvr.ff_dly} " if rslvr.ff_dly else ""

    aligntext = Align(rtrim=True)
    aligntext.set_separators(f" <= {ff_dly}", first=" "*6)
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
      grdonce = {}
      signame = f"bus_{word.name}_{{os}}once_r"
      type_ = u.BitType(default=1)
      if word.depth:
        type_ = u.ArrayType(type_, word.depth)
      defval = f"{rslvr.get_default(type_)};"
      for field in fields:
        if field.upd_strb:
          type_ = u.BitType()
          if word.depth:
            type_ = u.ArrayType(type_, word.depth)
          defval = f"{rslvr.get_default(type_)};"
          aligntext.add_row(f"upd_strb_{field.signame}_r", defval)
        if not filter_buswriteonce(field):
          continue
        if field.bus.write.once and field.wr_guard:
          grdidx = grdonce.setdefault(field.wr_guard, len(grdonce))
          oncespec = f"grd{grdidx}"
          aligntext.add_row(signame.format(os=oncespec), defval)
        elif field.bus.write.once and not wordonce:
          wordonce = True
          aligntext.add_row(signame.format(os="wr"), defval)
    return aligntext


def get_bus_word_wren_defaults(rslvr: usv.SvExprResolver, addrspace: Addrspace) -> Align:
    aligntext = Align(rtrim=True)
    aligntext.set_separators(" = ", first=" "*4)
    for word, _ in addrspace.iter(fieldfilter=filter_buswrite):
      signame = f"bus_{word.name}_wren_s"
      if word.depth:
        defval = f"'{{{word.depth}{{1'b0}}}};"
      else:
        defval = "1'b0;"
      aligntext.add_row(signame, defval)
    return aligntext


def get_bus_word_rden_defaults(rslvr: usv.SvExprResolver, addrspace: Addrspace) -> Align:
  aligntext = Align(rtrim=True)
  aligntext.set_separators(" = ", first=" "*4)
  for word, _ in addrspace.iter(fieldfilter=filter_busrdmod):
    signame = f"bus_{word.name}_rden_s"
    if word.depth:
      defval = f"'{{{word.depth}{{1'b0}}}};"
    else:
      defval = "1'b0;"
    aligntext.add_row(signame, defval)
  return aligntext


def get_rd_vec(rslvr: usv.SvExprResolver, width: int, fields: [Field], idx: None | int = None) -> str:
  offs = 0
  vec = []
  slc = f"[{idx}]" if idx is not None else ""
  for field in fields:
    if (r := field.slice.right) > offs:  # leading rsvd bits
      vec.append(rslvr._get_uint_value(0, r-offs))
    if isinstance(field.type_, u.IntegerType) or isinstance(field.type_, u.SintType):
      flddata = "unsigned'({fldval})"
    else:
      flddata = "{fldval}"
    if field.in_regf:
      vec.append(flddata.format(fldval=f"data_{field.signame}_{'c' if field.is_const else 'r'}{slc}"))
    elif field.portgroups:  # from core: handle special naming; non-in_regf field cannot be part of more than 1 portgroup
      vec.append(flddata.format(fldval=f"regf_{field.portgroups[0]}_{field.signame}_rbus_i{slc}"))
    else:  # from core: std names
      vec.append(flddata.format(fldval=f"regf_{field.signame}_rbus_i{slc}"))
    offs = field.slice.left + 1
  if offs < width:  # trailing rsvd bits
    vec.append(rslvr._get_uint_value(0, width-offs))
  if len(vec) > 1:
    return f"{{{', '.join(reversed(vec))}}};"
  else:
    return f"{vec[0]};"


def get_wrexpr(rslvr: usv.SvExprResolver, type_:u.BaseScalarType, write_acc: WriteOp, dataexpr: str, writeexpr: str) -> str:
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

def get_rdexpr(rslvr: usv.SvExprResolver, type_:u.BaseScalarType, read_acc: ReadOp, dataexpr: str) -> str:
  return rslvr.get_ident_expr(type_, dataexpr, read_acc.data)


def iter_field_updates(rslvr: usv.SvExprResolver, addrspace: Addrspace, guards: dict[str, tuple[str, str]], indent: int = 0) -> Iterator[str]:
  pre = " " * indent
  ff_dly = f"#{rslvr.ff_dly} " if rslvr.ff_dly else ""
  for word in addrspace.words:
    slc = ""
    grdonce = {}
    cndname = f"bus_{word.name}_{{os}}once_r"
    for field in word.fields:
      if not field.in_regf:
        continue
      upd_bus = []
      upd_core = []
      upd_strb = []
      if field.bus and field.bus.write:
        buswren = [f"(bus_{word.name}_wren_s{{slc}} == 1'b1)"]
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
          buswren = f"({' && '.join(buswren)})"
        else:
          buswren = buswren[0]
        memwdata = f"mem_wdata_i{rslvr.resolve_slice(field.slice)}"
        if isinstance(field.type_, u.IntegerType) or isinstance(field.type_, u.SintType):
          memwdata = f"signed'({memwdata})"
        wrexpr = get_wrexpr(rslvr, field.type_, field.bus.write, f"data_{field.signame}_r{{slc}}", memwdata)
        upd_bus.append(f"if {buswren} begin\n  data_{field.signame}_r{{slc}} <= {ff_dly}{wrexpr};\nend")
        upd_strb.append(f"bus_{word.name}_wren_s{{slc}}")
      if field.bus and field.bus.read and field.bus.read.data is not None:
        rdexpr = get_rdexpr(rslvr, field.type_, field.bus.read, f"data_{field.signame}_r{{slc}}")
        upd_bus.append(f"if (bus_{word.name}_rden_s{{slc}} == 1'b1) begin\n  data_{field.signame}_r{{slc}} <= {ff_dly}{rdexpr};\nend")
        upd_strb.append(f"bus_{word.name}_rden_s{{slc}}")

      if field.portgroups:
        grpname = f"{field.portgroups[0]}_"  # if field updates from core it cannot be in more than one portgroup
      else:
        grpname = ""
      basename = f"regf_{grpname}{field.signame}"
      if field.core and field.core.write:
        wrexpr = get_wrexpr(rslvr, field.type_, field.core.write, f"data_{field.signame}_r{{slc}}", f"{basename}_wval_i{{slc}}")
        upd_core.append(f"if ({basename}_wr_i{{slc}} == 1'b1) begin\n  data_{field.signame}_r{{slc}} <= {ff_dly}{wrexpr};\nend")
        upd_strb.append(f"{basename}_wr_i{{slc}}")
      if field.core and field.core.read and field.core.read.data is not None:
        rdexpr = get_rdexpr(rslvr, field.type_, field.core.read, f"data_{field.signame}_r{{slc}}")
        upd_core.append(f"if ({basename}_rd_i{{slc}} == 1'b1) begin\n  data_{field.signame}_r{{slc}} <= {ff_dly}{rdexpr};\nend")
        upd_strb.append(f"{basename}_rd_i{{slc}}")
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
            strbs = " | ".join(upd_strb)
            lines.append(f"upd_strb_{field.signame}_r{slc} <= {ff_dly}{strbs.format(slc=slc)};")
      else:
        slc = ""
        lines = (" else ".join(upd)).format(slc=slc).splitlines()
        if field.upd_strb:
          strbs = " | ".join(upd_strb)
          lines.append(f"upd_strb_{field.signame}_r <= {ff_dly}{strbs.format(slc=slc)};")
      for ln in lines:
        yield f"{pre}{ln}"


def iter_wronce_updates(rslvr: usv.SvExprResolver, addrspace: Addrspace, guards: dict[str, tuple[str, str]], indent: int = 0) -> Iterator[str]:
  pre = " " * indent
  ff_dly = f"#{rslvr.ff_dly} " if rslvr.ff_dly else ""
  for word, fields in addrspace.iter(fieldfilter=filter_buswriteonce):
    wordonce = False
    grdonce = {}
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
        buswren = f"({' && '.join(buswren)})"
      else:
        buswren = buswren[0]
      upd = f"if {buswren} begin\n  {target}{{slc}} <= 1'b0;\nend"
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
  aligntext = Align(rtrim=True)
  aligntext.set_separators(first=" "*indent)
  for signame, expr in guards.values():
    aligntext.add_row("assign", signame, f"= {expr};")
  return aligntext

def get_outp_assigns(rslvr: usv.SvExprResolver, addrspace: Addrspace, guards: dict[str, tuple[str, str]], wronce_guards: dict[str, int], indent: int = 0) -> Align:
  aligntext = Align(rtrim=True)
  aligntext.set_separators(first=" "*indent)
  for word, fields in addrspace.iter(): # BOZO coreread?!?
    cndname = f"bus_{word.name}_{{os}}once_r"
    for field in fields:
      post = "c" if field.is_const else "r"
      if field.in_regf:
        if field.core and field.core.read:
          for gn in iter_pgrp_names(field):
            aligntext.add_row("assign", f"regf_{gn}{field.signame}_rval_o", f"= data_{field.signame}_{post};")
        if field.upd_strb:
          for gn in iter_pgrp_names(field):
            aligntext.add_row("assign", f"regf_{gn}{field.signame}_upd_o", f"= upd_strb_{field.signame}_r;")
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
            buswren = f"({' && '.join(buswren)})"
          else:
            buswren = buswren[0]
          wbus_o = f"regf_{{grp}}{field.signame}_wbus_o{{slc}}"
          wr_o = f"regf_{{grp}}{field.signame}_wr_o{{slc}}"
          zval = f"{rslvr._resolve_value(field.type_, value=0)}"
          memwdata = f"mem_wdata_i{rslvr.resolve_slice(field.slice)}"
          if isinstance(field.type_, u.IntegerType) or isinstance(field.type_, u.SintType):
            memwdata = f"signed'({memwdata})"
          for gn in iter_pgrp_names(field):
            wrexpr = get_wrexpr(rslvr, field.type_, field.bus.write, f"regf_{gn}{field.signame}_rbus_i", memwdata)
            for slc in iter_word_depth(word):
              wrencond = buswren.format(slc=slc)
              aligntext.add_row("assign", f"regf_{gn}{field.signame}_wbus_o{slc}", f"= {wrencond} ? {wrexpr} : {zval};")
              aligntext.add_row("assign", f"regf_{gn}{field.signame}_wr_o{slc}", f"= {wrencond} ? 1'b1 : 1'b0;")
        if field.bus and field.bus.read and field.bus.read.data is not None:
          busrden = f"= (bus_{word.name}_rden_s{{slc}} == 1'b1) ? 1'b1 : 1'b0;"
          for gn in iter_pgrp_names(field):
            for slc in iter_word_depth(word):
              aligntext.add_row("assign", f"regf_{gn}{field.signame}_rd_o", busrden.format(slc=slc))
  return aligntext

def get_soft_rst_assign(soft_rst: str, addrspace: Addrspace, guards: dict[str, tuple[str, str]], wronce_guards: dict[str, int]) -> str:
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
      buswren = f"{' & '.join(buswren)}"
      return buswren

def map_wronce_guards(addrspace: Addrspace, guards: dict[str, tuple[str, str]]) -> dict[str, int]:
  wronce_guards = {}
  for word, fields in addrspace.iter(fieldfilter=filter_buswriteonce):
    grdonce = {}
    for field in fields:
      if field.bus.write.once and field.wr_guard:
        grdidx = grdonce.setdefault(field.wr_guard, len(grdonce))
        wronce_guards[field.signame] = grdidx
  return wronce_guards

%>
<%inherit file="sv.mako"/>

<%def name="logic(indent=0, skip=None)">\
<%
  rslvr = usv.get_resolver(mod)
  mem_addr_width = mod.ports['mem_addr_i'].type_.width
  mem_data_width = mod.ports['mem_wdata_i'].type_.width
  guards = mod._guards
  wronce_guards = map_wronce_guards(mod.addrspace, guards)
  soft_rst = mod._soft_rst
%>
${parent.logic(indent=indent, skip=skip)}\

  always_comb begin: proc_bus_addr_dec
    // defaults
    mem_err_o = 1'b0;
${get_bus_word_wren_defaults(rslvr, mod.addrspace).get()}
${get_bus_word_rden_defaults(rslvr, mod.addrspace).get()}

    // decode address
    if (mem_ena_i == 1'b1) begin
      case (mem_addr_i)
% for word, fields in mod.addrspace.iter(fieldfilter=filter_busacc):
<%
    wrflds = [field for field in fields if field.bus.write]
    rdflds = [field for field in fields if field.bus.read]
    rdmodflds = [field for field in rdflds if field.bus.read.data is not None]
    declns = []
    if wrflds and rdflds:
      declns.append("mem_err_o = 0")
    elif wrflds:
      declns.append("mem_err_o = ~mem_wena_i")
    else:
      declns.append("mem_err_o = mem_wena_i")
    if wrflds:
      declns.append(f"bus_{word.name}_wren_s{{idx}} = mem_wena_i")
    else:
      declns.append(None)
    if rdmodflds:
      declns.append(f"bus_{word.name}_rden_s{{idx}} = ~mem_wena_i")
    else:
      declns.append(None)
%>\
%   if word.depth:
%     for idx in range(word.depth):
        ${rslvr._get_uint_value((word.offset+idx), mem_addr_width)}: begin
          ${declns[0]};
%       if declns[1]:
          ${declns[1].format(idx=f"[{idx}]")};
%       endif
%       if declns[2]:
          ${declns[2].format(idx=f"[{idx}]")};
%       endif
        end
%     endfor
%   else:
        ${rslvr._get_uint_value(word.offset, mem_addr_width)}: begin
          ${declns[0]};
%     if declns[1]:
          ${declns[1].format(idx="")};
%     endif
%     if declns[2]:
          ${declns[2].format(idx="")};
%     endif
        end
%   endif
% endfor
        default: begin
          mem_err_o = 1'b1;
        end
      endcase
    end

  end

% if srst := get_soft_rst_assign(soft_rst, mod.addrspace, guards, wronce_guards):
  // ------------------------------------------------------
  // soft reset condition
  // ------------------------------------------------------
  assign ${soft_rst} = ${srst};

% endif
% if len(wgasgn := get_wrguard_assigns(guards, indent=2)):
  // ------------------------------------------------------
  // write guard expressions
  // ------------------------------------------------------
${wgasgn.get()}

% endif
  // ------------------------------------------------------
  // in-regf storage
  // ------------------------------------------------------
  always_ff @ (posedge main_clk_i or negedge main_rst_an_i) begin: proc_regf_flops
    if (main_rst_an_i == 1'b0) begin
${get_ff_rst_values(rslvr, mod.addrspace).get()}
% if soft_rst:
    end else if (${soft_rst} == 1'b1) begin
${get_ff_rst_values(rslvr, mod.addrspace).get()}
% endif
    end else begin
% for upd in iter_field_updates(rslvr, mod.addrspace, guards, indent=6):
${upd}
% endfor
% for upd in iter_wronce_updates(rslvr, mod.addrspace, guards, indent=6):
${upd}
% endfor
    end
  end

  // ------------------------------------------------------
  //  Bus Read-Mux
  // ------------------------------------------------------
  always_comb begin: proc_bus_rd
    if ((mem_ena_i == 1'b1) && (mem_wena_i == 1'b0)) begin
      case (mem_addr_i)
% for word, fields in mod.addrspace.iter(fieldfilter=filter_busread):
%   if word.depth:
%     for idx in range(word.depth):
        ${rslvr._get_uint_value((word.offset+idx), mem_addr_width)}: begin
          mem_rdata_o = ${get_rd_vec(rslvr, mem_data_width, fields, idx)}
        end
%     endfor
%   else:
        ${rslvr._get_uint_value(word.offset, mem_addr_width)}: begin
          mem_rdata_o = ${get_rd_vec(rslvr, mem_data_width, fields)}
        end
%   endif
% endfor
        default: begin
          mem_rdata_o = ${rslvr._get_uint_value(0, mem_data_width)};
        end
      endcase
    end else begin
      mem_rdata_o = ${rslvr._get_uint_value(0, mem_data_width)};
    end
  end

  // ------------------------------------------------------
  //  Output Assignments
  // ------------------------------------------------------
${get_outp_assigns(rslvr, mod.addrspace, guards, wronce_guards, indent=2).get()}
</%def>
