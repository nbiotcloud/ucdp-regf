<%!
import ucdp as u
import ucdpsv as usv
from aligntext import Align
from ucdp_regf.ucdp_regf import Field, Addrspace, Access, WriteOp, ReadOp
from collections.abc import Iterator

def filter_regf_consts(field: Field):
    return field.in_regf and field.is_const

def filter_regf_flipflops(field: Field):
    return field.in_regf and not field.is_const

def filter_buswrite(field: Field):
    """Writable Bus Fields."""
    return field.bus and field.bus.write

def filter_busread(field: Field):
    """Readable Bus Fields."""
    return field.bus and field.bus.read

def filter_coreread(field: Field):
    return field.core and field.core.read


def get_const_decls(rslvr: usv.SvExprResolver, addrspace: Addrspace) -> Align:
    aligntext = Align(rtrim=True)
    aligntext.set_separators(first="  ")
    for word, fields in addrspace.iter(fieldfilter=filter_regf_consts):
      aligntext.add_spacer(f"// Word: {word.name}")
      for field in fields:
        type_ = field.type_
        if word.depth:
          type_ = u.ArrayType(type_, word.depth)
        signame = f"data_{field.signame}_c"
        dims = rslvr.get_dims(type_)
        default = rslvr.get_default(type_) + ";"
        aligntext.add_row(("logic", *rslvr.get_decl(type_), signame, dims, "=", default))
    return aligntext

def add_ff_decls(rslvr: usv.SvExprResolver, addrspace: Addrspace, aligntext: Align) -> None:
    for word, fields in addrspace.iter(fieldfilter=filter_regf_flipflops):
      aligntext.add_spacer(f"  // Word: {word.name}")
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
        aligntext.add_row(("logic", *rslvr.get_decl(type_), signame, dims))

def get_ff_rst_values(rslvr: usv.SvExprResolver, addrspace: Addrspace) -> Align:
    ff_dly = f"#{rslvr.ff_dly} " if rslvr.ff_dly else ""

    aligntext = Align(rtrim=True)
    aligntext.set_separators(f" <= {ff_dly}", first=" "*6)
    for word, fields in addrspace.iter(fieldfilter=filter_regf_flipflops):
      aligntext.add_spacer(f"      // Word: {word.name}")
      for field in fields:
        type_ = field.type_
        signame = f"data_{field.signame}_r"
        if word.depth:
          type_ = u.ArrayType(type_, word.depth)
        defval = f"{rslvr.get_default(type_)};"
        aligntext.add_row(signame, defval)
    return aligntext


def add_bus_word_wren_decls(rslvr: usv.SvExprResolver, addrspace: Addrspace, aligntext: Align) -> Align:
    spcr = False
    for word, _ in addrspace.iter(fieldfilter=filter_buswrite):
      signame = f"bus_{word.name}_wren_s"
      if not spcr:
        aligntext.add_spacer(f"  // bus word write enables")
        spcr = True
      if word.depth:
        aligntext.add_row("logic", "", "", signame, f"[0:{word.depth-1}];")
      else:
        aligntext.add_row("logic", "", "", signame + ";")

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


def add_bus_word_rden_decls(rslvr: usv.SvExprResolver, addrspace: Addrspace, aligntext: Align) -> Align:
    spcr = False
    for word, _ in addrspace.iter(fieldfilter=filter_busread):
      signame = f"bus_{word.name}_rden_s"
      if not spcr:
        aligntext.add_spacer(f"  // bus word read enables")
        spcr = True
      if word.depth:
        aligntext.add_row("logic", "", "", signame, f"[0:{word.depth-1}];")
      else:
        aligntext.add_row("logic", "", "", signame + ";")

def get_bus_word_rden_defaults(rslvr: usv.SvExprResolver, addrspace: Addrspace) -> Align:
    aligntext = Align(rtrim=True)
    aligntext.set_separators(" = ", first=" "*4)
    for word, _ in addrspace.iter(fieldfilter=filter_busread):
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
  if idx is not None:
    slc = f"[{idx}]"
  else:
    slc = ""
  for field in fields:
    if (r := field.slice.right) > offs:  # leading rsvd bits
      vec.append(rslvr._get_uint_value(0, r-offs))
    if field.in_regf:
      if field.is_const:
        vec.append(f"data_{field.signame}_c{slc}")
      else:
        vec.append(f"data_{field.signame}_r{slc}")
    elif field.portgroups:  # from core: handle special naming; non-in_regf field cannot be part of more than 1 portgroup
      vec.append(f"regf_{field.portgroups[0]}_{field.signame}_rbus_i{slc}")
    else:  # from core: std names
      vec.append(f"regf_{field.signame}_rbus_i{slc}")
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

def iter_field_updates(rslvr: usv.SvExprResolver, addrspace: Addrspace, indent: int = 0) -> Iterator[str]:
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
        wrexpr = get_wrexpr(rslvr, field.type_, field.bus.write, f"data_{field.signame}_r{{slc}}", f"mem_wdata_i{rslvr.resolve_slice(field.slice)}")
        upd_bus.append(f"if (bus_{word.name}_wren_s{{slc}} == 1'b1) begin\n  data_{field.signame}_r{{slc}} <= {ff_dly}{wrexpr};\nend")
      if field.bus and field.bus.read and field.bus.read.data is not None:
        rdexpr = get_rdexpr(rslvr, field.type_, field.bus.read, f"data_{field.signame}_r{{slc}}")
        upd_bus.append(f"if (bus_{word.name}_rden_s{{slc}} == 1'b1) begin\n  data_{field.signame}_r{{slc}} <= {ff_dly}{rdexpr};\nend")

      if field.portgroups:
        grpname = f"{field.portgroups[0]}_"  # if field updates from core it cannot be in more than one portgroup
      else:
        grpname = ""
      basename = f"regf_{grpname}{field.signame}"
      if field.core and field.core.write:
        wrexpr = get_wrexpr(rslvr, field.type_, field.core.write, f"data_{field.signame}_r{{slc}}", f"{basename}_wval_i{{slc}}")
        upd_core.append(f"if ({basename}_wr_i{{slc}} == 1'b1) begin\n  data_{field.signame}_r{{slc}} <= {ff_dly}{wrexpr};\nend")
      if field.core and field.core.read and field.core.read.data is not None:
        rdexpr = get_rdexpr(rslvr, field.type_, field.core.read, f"data_{field.signame}_r{{slc}}")
        upd_core.append(f"if ({basename}_rd_i{{slc}} == 1'b1) begin\n  data_{field.signame}_r{{slc}} <= {ff_dly}{rdexpr};\nend")

      if field.bus_prio:
        upd = upd_bus + upd_core
      else:
        upd = upd_core + upd_bus

      if word.depth:
        lines = []
        for idx in range(word.depth):
          lines.extend((" else ".join(upd)).format(slc=f"[{idx}]").splitlines())
      else:
        lines = (" else ".join(upd)).format(slc="").splitlines()
      for ln in lines:
        yield f"{pre}{ln}"


def get_outp_assigns(rslvr: usv.SvExprResolver, addrspace: Addrspace, indent: int = 0) -> Align:
    aligntext = Align(rtrim=True)
    aligntext.set_separators(first=" "*indent)
    for word, fields in addrspace.iter(fieldfilter=filter_coreread):
      for field in fields:
        post = "c" if field.is_const else "r"
        if field.in_regf:
          if field.portgroups:
            for grp in field.portgroups:
              aligntext.add_row("assign", f"regf_{grp}_{field.signame}_rval_o", f"= data_{field.signame}_{post};")
          else:
            aligntext.add_row("assign", f"regf_{field.signame}_rval_o", f"= data_{field.signame}_{post};")
        else:  # in core
          if field.bus and field.bus.write:
            if field.portgroups:
              for grp in field.portgroups:
                wrexpr = get_wrexpr(rslvr, field.type_, field.bus.write, f"regf_{grp}_{field.signame}_rbus_i", f"mem_wdata_i[{field.slice}]")
                if word.depth:
                  aligntext.add_row("assign", f"regf_{grp}_{field.signame}_wbus_o", f"= '{{{word.depth}{{{wrexpr}}}}};")
                else:
                  aligntext.add_row("assign", f"regf_{grp}_{field.signame}_wbus_o", f"= {wrexpr};")
                aligntext.add_row("assign", f"regf_{grp}_{field.signame}_wr_o", f"= bus_{word.name}_wren_s;")
            else:
              wrexpr = get_wrexpr(rslvr, field.type_, field.bus.write, f"regf_{field.signame}_rbus_i", f"mem_wdata_i[{field.slice}]")
              if word.depth:
                aligntext.add_row("assign", f"regf_{field.signame}_wbus_o", f"= '{{{word.depth}{{{wrexpr}}}}};")
              else:
                aligntext.add_row("assign", f"regf_{field.signame}_wbus_o", f"= {wrexpr};")
              aligntext.add_row("assign", f"regf_{field.signame}_wr_o", f"= bus_{word.name}_wren_s;")
    return aligntext
%>
<%inherit file="sv.mako"/>

<%def name="logic(indent=0, skip=None)">\
<%
  rslvr = usv.get_resolver(mod)
  stride = mod.width // 8
  ## mem_addr_width = mod.ports['mem_i'].type_['addr'].type_.width
  mem_addr_width = mod.ports['mem_addr_i'].type_.width
  mem_data_width = mod.ports['mem_wdata_i'].type_.width

  lcl_sigs = Align(rtrim=True)
  lcl_sigs.set_separators(first="  ")

  add_ff_decls(rslvr, mod.addrspace, lcl_sigs)
  add_bus_word_wren_decls(rslvr, mod.addrspace, lcl_sigs)
  add_bus_word_rden_decls(rslvr, mod.addrspace, lcl_sigs)

%>
${parent.logic(indent=indent, skip=skip)}\
  // ===================================
  // local signals
  // ===================================
${lcl_sigs.get()}

% if len(get_const_decls(rslvr, mod.addrspace)):
  // ===================================
  //  Constant Declarations
  // ===================================
${get_const_decls(rslvr, mod.addrspace).get()}
% endif


  always_comb begin: proc_bus_addr_dec
    // defaults
    mem_err_o = 1'b0;
${get_bus_word_wren_defaults(rslvr, mod.addrspace).get()}
${get_bus_word_rden_defaults(rslvr, mod.addrspace).get()}

    // write decode
    if ((mem_ena_i == 1'b1) && (mem_wena_i == 1'b1)) begin
      case (mem_addr_i)
% for word, _ in mod.addrspace.iter(fieldfilter=filter_buswrite):
%   if word.depth:
%     for idx in range(word.depth):
        ${rslvr._get_uint_value((word.offset+idx)*stride, mem_addr_width)}: begin
          bus_${word.name}_wren_s[${idx}] = 1'b1;
        end
%     endfor
%   else:
        ${rslvr._get_uint_value(word.offset*stride, mem_addr_width)}: begin
          bus_${word.name}_wren_s = 1'b1;
        end
%   endif
% endfor
        default: begin
          mem_err_o = 1'b1;
        end
      endcase
    end

    // read decode
    if ((mem_ena_i == 1'b1) && (mem_wena_i == 1'b0)) begin
      case (mem_addr_i)
% for word, _ in mod.addrspace.iter(fieldfilter=filter_busread):
%   if word.depth:
%     for idx in range(word.depth):
        ${rslvr._get_uint_value((word.offset+idx)*stride, mem_addr_width)}: begin
          bus_${word.name}_rden_s[${idx}] = 1'b1;
        end
%     endfor
%   else:
        ${rslvr._get_uint_value(word.offset*stride, mem_addr_width)}: begin
          bus_${word.name}_rden_s = 1'b1;
        end
%   endif
% endfor
        default: begin
          mem_err_o = 1'b1;
        end
      endcase
    end
  end

  // ===================================
  // in-regf storage
  // ===================================
  always_ff @ (posedge main_clk_i or negedge main_rst_an_i) begin: proc_regf_flops
    if (main_rst_an_i == 1'b1) begin
${get_ff_rst_values(rslvr, mod.addrspace).get()}
    end else begin
% for upd in iter_field_updates(rslvr, mod.addrspace, indent=6):
${upd}
% endfor
    end
  end

  // ===================================
  //  Bus Read-Mux
  // ===================================
  always_comb begin: proc_bus_rd
    if ((mem_ena_i == 1'b1) && (mem_wena_i == 1'b0)) begin
      case (mem_addr_i)
% for word, fields in mod.addrspace.iter(fieldfilter=filter_busread):
%   if word.depth:
%     for idx in range(word.depth):
        ${rslvr._get_uint_value((word.offset+idx)*stride, mem_addr_width)}: begin
          mem_rdata_o = ${get_rd_vec(rslvr, mod.width, fields, idx)}
        end
%     endfor
%   else:
        ${rslvr._get_uint_value(word.offset*stride, mem_addr_width)}: begin
          mem_rdata_o = ${get_rd_vec(rslvr, mod.width, fields)}
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

  // ===================================
  //  Output Assignments
  // ===================================
${get_outp_assigns(rslvr, mod.addrspace, indent=2).get()}
</%def>
