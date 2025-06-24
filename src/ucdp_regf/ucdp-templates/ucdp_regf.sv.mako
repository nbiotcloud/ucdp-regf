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
from ucdp_regf import util
%>
<%inherit file="sv.mako"/>

<%def name="logic(indent=0, skip=None)">\
<%
  rslvr = usv.get_resolver(mod)
  mem_addr_width = mod.ports['mem_addr_i'].type_.width
  mem_data_width = mod.ports['mem_wdata_i'].type_.width
  guards = mod._guards
  wronce_guards = util.map_wronce_guards(mod.addrspace, guards)
  soft_rst = mod._soft_rst
  slicing = mod.slicing
  sliced_en = slicing is not None
%>
${parent.logic(indent=indent, skip=skip)}\

  always_comb begin: proc_bus_addr_dec
    // defaults
    mem_err_o = 1'b0;
${util.get_bus_word_wren_defaults(rslvr, mod.addrspace).get()}
${util.get_bus_word_rden_defaults(rslvr, mod.addrspace).get()}

    // decode address
    if (mem_ena_i == 1'b1) begin
      case (mem_addr_i)
% for word, fields in mod.addrspace.iter(fieldfilter=util.filter_busacc):
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

% if sliced_en:
    bit_en_s = ${util.get_bit_enables(mem_data_width, slicing)};
% endif
  end

% if srst := util.get_soft_rst_assign(soft_rst, mod.addrspace, guards, wronce_guards):
  // ------------------------------------------------------
  // soft reset condition
  // ------------------------------------------------------
  assign ${soft_rst} = ${srst};

% endif
% if len(wgasgn := util.get_wrguard_assigns(guards, indent=2)):
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
${util.get_ff_rst_values(rslvr, mod.addrspace).get()}
% if soft_rst:
    end else if (${soft_rst} == 1'b1) begin
${util.get_ff_rst_values(rslvr, mod.addrspace).get()}
% endif
    end else begin
% for upd in util.iter_field_updates(rslvr, mod.addrspace, guards, sliced_en, indent=6):
${upd}
% endfor
% for upd in util.iter_wronce_updates(rslvr, mod.addrspace, guards, indent=6):
${upd}
% endfor
    end
  end

  // ------------------------------------------------------
  //  Collect word vectors
  // ------------------------------------------------------
${util.get_word_vecs(rslvr, mod.addrspace, indent=2).get()}

  // ------------------------------------------------------
  //  Bus Read-Mux
  // ------------------------------------------------------
  always_comb begin: proc_bus_rd
    if ((mem_ena_i == 1'b1) && (mem_wena_i == 1'b0)) begin
      case (mem_addr_i)
% for word, fields in mod.addrspace.iter(fieldfilter=util.filter_busread):
%   if word.depth:
%     for idx in range(word.depth):
        ${rslvr._get_uint_value((word.offset+idx), mem_addr_width)}: begin
          mem_rdata_o = ${f"wvec_{word.name}_s[{idx}]"};
        end
%     endfor
%   else:
        ${rslvr._get_uint_value(word.offset, mem_addr_width)}: begin
          mem_rdata_o = ${f"wvec_{word.name}_s"};
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
${util.get_outp_assigns(rslvr, mod.addrspace, guards, wronce_guards, sliced_en, indent=2).get()}
</%def>
