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
from ucdp_regf.ucdp_regf import filter_busread
from ucdp_regf import util
%>
<%inherit file="sv.mako"/>

<%def name="logic(indent=0, skip=None)">\
<%
  rslvr = usv.get_resolver(mod)
  mem_addr_width = mod.ports['mem_addr_i'].type_.width
  mem_data_width = mod.ports['mem_wdata_i'].type_.width
  addrspace = mod.addrspace
  guards = mod._guards
  fldonce = mod._fldonce
  wrdonce = mod._wrdonce
  soft_rst = mod._soft_rst
  slicing = mod.slicing
  sliced_en = slicing is not None
%>
${parent.logic(indent=indent, skip=skip)}\

  always_comb begin: proc_bus_addr_dec
    // defaults
    mem_err_o = 1'b0;
${util.get_bus_decode_defaults(rslvr, addrspace).get()}

    // decode address
    if (mem_ena_i == 1'b1) begin
      case (mem_addr_i)
% for adec in util.iter_addr_decode(rslvr, addrspace, indent=8):
${adec}
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

% if soft_rst and soft_rst.sigexpr:
  // ------------------------------------------------------
  // soft reset condition
  // ------------------------------------------------------
  assign ${soft_rst.signame} = ${soft_rst.sigexpr};

% endif
% if len(wgasgn := util.get_wrguard_assigns(guards, indent=2)):
  // ------------------------------------------------------
  // write guard expressions
  // ------------------------------------------------------
${wgasgn.get()}

% endif
% if len(grderrs := util.get_guard_errors(rslvr, addrspace, guards, fldonce, sliced_en=sliced_en, indent=2)):
  // ------------------------------------------------------
  // write guard errors
  // ------------------------------------------------------
${grderrs.get()}

% endif
  // ------------------------------------------------------
  // in-regf storage
  // ------------------------------------------------------
  always_ff @ (posedge main_clk_i or negedge main_rst_an_i) begin: proc_regf_flops
    if (main_rst_an_i == 1'b0) begin
${util.get_ff_rst_values(rslvr, addrspace, wrdonce).get()}
% if soft_rst:
    end else if (${soft_rst.signame} == 1'b1) begin
${util.get_ff_rst_values(rslvr, addrspace, wrdonce).get()}
% endif
    end else begin
% for upd in util.iter_field_updates(rslvr, addrspace, guards, fldonce, sliced_en, indent=6):
${upd}
% endfor
% for upd in util.iter_wronce_updates(rslvr, addrspace, wrdonce, indent=6):
${upd}
% endfor
    end
  end

% if len(wvecs := util.get_word_vecs(rslvr, addrspace, indent=2)):
  // ------------------------------------------------------
  //  Collect wordio vectors
  // ------------------------------------------------------
${wvecs.get()}
% endif

  // ------------------------------------------------------
  //  Bus Read-Mux
  // ------------------------------------------------------
  always_comb begin: proc_bus_rd
    if ((mem_ena_i == 1'b1) && (mem_wena_i == 1'b0)) begin
      case (mem_addr_i)
% for rdbus in util.iter_read_bus(rslvr, addrspace, indent=8):
${rdbus}
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
${util.get_outp_assigns(rslvr, addrspace, guards, fldonce, sliced_en, indent=2).get()}
</%def>
