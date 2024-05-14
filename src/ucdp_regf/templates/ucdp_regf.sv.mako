<%!
import ucdp as u
import ucdpsv as usv
from aligntext import Align
from ucdp_regf.ucdp_regf import Field, Addrspace, Access

def filter_regf_consts(field: Field):
    return field.in_regf and field.is_const


def filter_regf_flipflips(field: Field):
    return field.in_regf and not field.is_const


def filter_readmux(field: Field):
    """Readable Bus Fields."""
    return field.bus and field.bus.read


def filter_strobemux(field: Field):
    """Modified Bus Fields."""
    if field.bus is None:
        return False
    if field.bus.write:
        return True
    if field.bus.read and field.bus.read.data:
        return True
    return False


def get_const_decls(rslvr: usv.SvExprResolver, addrspace: Addrspace) -> Align:
    aligntext = Align(rtrim=True)
    aligntext.set_separators(first="  ")
    for word, fields in addrspace.iter(fieldfilter=filter_regf_consts):
      aligntext.add_spacer(f"// Word: {word.name}")
      for field in fields:
        type_ = field.type_
        if word.depth:
          type_ = u.ArrayType(type_, word.depth)
        signame = f"data_{field.signame}_r"
        dims = rslvr.get_dims(type_)
        default = rslvr.get_default(type_) + ";"
        aligntext.add_row(("wire", *rslvr.get_decl(type_), signame, dims, "=", default))
    return aligntext


def get_flipflop_decls(rslvr: usv.SvExprResolver, addrspace: Addrspace) -> Align:
    aligntext = Align(rtrim=True)
    aligntext.set_separators(first="  ")
    for word, fields in addrspace.iter(fieldfilter=filter_regf_flipflips):
      aligntext.add_spacer(f"// Word: {word.name}")
      for field in fields:
        type_ = field.type_
        if word.depth:
          type_ = u.ArrayType(type_, word.depth)
        signame = f"data_{field.signame}_r"
        dims = rslvr.get_dims(type_)
        if dims:
          dims = f"{dims};"
        else:
          signame = f"{signame};"
        aligntext.add_row(("wire", *rslvr.get_decl(type_), signame, dims))
    return aligntext


def get_readexpr(rslvr: usv.SvExprResolver, type_:u.BaseScalarType, access: Access, dataexpr: str) -> str:
  if access is None:
    return ""
  read = access.read
  if read is None or read.data is None:
    return ""
  return rslvr.get_ident_expr(type_, dataexpr, read.data) or ""


def get_writeexpr(rslvr: usv.SvExprResolver, type_:u.BaseScalarType, access: Access, dataexpr: str, writeexpr: str) -> str:
  if access is None or access.write is None:
    return ""
  write = access.write
  if write.op in ("0", "1"):
    return rslvr.get_ident_expr(type_, data, write.op)
  dataexpr = rslvr.get_ident_expr(type_, dataexpr, write.data) or ""
  writeexpr = rslvr.get_ident_expr(type_, writeexpr, write.write) or ""
  op = write.op or ""
  return f"{dataexpr}{op}{writeexpr}"

%>
<%inherit file="sv.mako"/>

<%def name="logic(indent=0, skip=None)">\
<%
  rslvr = usv.get_resolver(mod)
%>
${parent.logic(indent=indent, skip=skip)}\

  // ===================================
  //  Constant Declarations
  // ===================================
${get_const_decls(rslvr, mod.addrspace).get()}

  // ===================================
  //  Flip-Flop Declarations
  // ===================================
${get_flipflop_decls(rslvr, mod.addrspace).get()}

  // ===================================
  //  Memory Matrix
  // ===================================
% for word, fields in mod.addrspace.iter(fieldfilter=filter_regf_flipflips):
  // Word: +${word.slice} ${word.name}
%   for field in fields:
    // Field ${field.name} ${field.access} ${"regf" if field.in_regf else "core"}
<%
busreadexpr = get_readexpr(rslvr, field.type_, field.bus, f"data_{field.signame}_r")
buswriteexpr = get_writeexpr(rslvr, field.type_, field.bus, f"data_{field.signame}_r", f"mem_wdata_i[{field.slice}]")
%>\
%     if busreadexpr:
      // if bus_${word.name}_rd_s: ${busreadexpr}
%     endif
%     if buswriteexpr:
      // if bus_${word.name}_wr_s: ${buswriteexpr}
%     endif
%     for portgroup in field.portgroups or [""]:
<%
basename = f"regf_{field.signame}" if not portgroup else f"regf_{portgroup}_{field.signame}"
corereadexpr = get_readexpr(rslvr, field.type_, field.core, f"data_{field.signame}_r")
corewriteexpr = get_writeexpr(rslvr, field.type_, field.core, f"data_{field.signame}_r", f"{basename}_wval_i")
%>\
%       if corereadexpr:
      // if ${basename}_rd_i: ${corereadexpr}
%       endif
%       if corewriteexpr:
      // if ${basename}_wr_i: ${corewriteexpr}
%       endif
%     endfor
%   endfor
% endfor


  // ===================================
  //  Bus Strobe-Mux
  // ===================================
% for word, fields in mod.addrspace.iter(fieldfilter=filter_strobemux):
  // Word: +${word.slice} ${word.name}
% endfor

  // ===================================
  //  Bus Read-Mux
  // ===================================
% for word, fields in mod.addrspace.iter(fieldfilter=filter_readmux):
  // Word: +${word.slice} ${word.name}
% endfor
</%def>
