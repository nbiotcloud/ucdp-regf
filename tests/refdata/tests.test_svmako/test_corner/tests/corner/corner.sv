// =============================================================================
//
//   @generated @fully-generated
//
//   THIS FILE IS GENERATED!!! DO NOT EDIT MANUALLY. CHANGES ARE LOST.
//
// =============================================================================
//
//  MIT License
//
//  Copyright (c) 2024-2025 nbiotcloud
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//
// =============================================================================
//
// Module:     tests.corner
// Data Model: tests.test_svmako.CornerMod
//
// =============================================================================

`begin_keywords "1800-2009"
`default_nettype none  // implicit wires are forbidden

module corner ( // tests.test_svmako.CornerMod
  // main_i: Clock and Reset
  input wire main_clk_i,   // Clock
  input wire main_rst_an_i // Async Reset (Low-Active)
);



  // ------------------------------------------------------
  //  Signals
  // ------------------------------------------------------
  logic busy_s; // Busy


  // ------------------------------------------------------
  //  tests.corner_regf: u_regf
  // ------------------------------------------------------
  corner_regf u_regf (
    .main_clk_i                  (main_clk_i   ), // Clock
    .main_rst_an_i               (main_rst_an_i), // Async Reset (Low-Active)
    .mem_ena_i                   (1'b0         ), // TODO - Memory Access Enable
    .mem_addr_i                  (10'h000      ), // TODO - Memory Address
    .mem_wena_i                  (1'b0         ), // TODO - Memory Write Enable
    .mem_wdata_i                 (32'h00000000 ), // TODO - Memory Write Data
    .mem_rdata_o                 (             ), // TODO - Memory Read Data
    .mem_err_o                   (             ), // TODO - Memory Access Failed.
    .grd_i                       (1'b0         ), // TODO - Enable
    .regf_ctrl_ena_rval_o        (             ), // TODO - Core Read Value
    .regf_ctrl_busy_rbus_i       (busy_s       ), // Bus Read Value
    .regf_grpa_ctrl_start_rval_o (             ), // TODO - Core Read Value
    .regf_grpa_ctrl_status_rbus_i(1'b0         ), // TODO - Bus Read Value
    .regf_grpa_grddim_int_wr_o   (             ), // TODO - Bus Write Strobe
    .regf_grpa_grddim_int_wbus_o (             ), // TODO - Bus Write Value
    .regf_grpa_grddim_int_rbus_i ('{2{12'h000}}), // TODO - Bus Read Value
    .regf_grpb_ctrl_start_rval_o (             ), // TODO - Core Read Value
    .regf_ctrl_ver_rval_o        (             ), // TODO - Core Read Value
    .regf_grpc_ctrl_spec1_rbus_i (1'b0         ), // TODO - Bus Read Value
    .regf_grpc_ctrl_spec1_rd_o   (             ), // TODO - Bus Read Strobe
    .regf_grpc_dims_spec2_wr_o   (             ), // TODO - Bus Write Strobe
    .regf_grpc_dims_spec2_wbus_o (             ), // TODO - Bus Write Value
    .regf_grpc_dims_spec2_rbus_i ('{3{1'b0}}   ), // TODO - Bus Read Value
    .regf_grpc_dims_spec3_wr_i   ('{3{1'b0}}   ), // TODO - Core Write Strobe
    .regf_grpc_dims_spec3_wval_i ('{3{1'b0}}   ), // TODO - Core Write Value
    .regf_grpc_dims_spec3_rval_o (             ), // TODO - Core Read Value
    .regf_txdata_bytes_rval_o    (             ), // TODO - Core Read Value
    .regf_dims_roval_rbus_i      ('{3{1'b0}}   ), // TODO - Bus Read Value
    .regf_dims_wrval_upd_o       (             ), // TODO - Update Strobe
    .regf_dims_wrval_rval_o      (             ), // TODO - Core Read Value
    .regf_guards_once_rval_o     (             ), // TODO - Core Read Value
    .regf_guards_coreonce_wr_o   (             ), // TODO - Bus Write Strobe
    .regf_guards_coreonce_wbus_o (             ), // TODO - Bus Write Value
    .regf_guards_busonce_wr_o    (             ), // TODO - Bus Write Strobe
    .regf_guards_busonce_wbus_o  (             ), // TODO - Bus Write Value
    .regf_guards_single_rval_o   (             ), // TODO - Core Read Value
    .regf_guards_onetime_rval_o  (             ), // TODO - Core Read Value
    .regf_guards_guard_a_rval_o  (             ), // TODO - Core Read Value
    .regf_guards_guard_b_rval_o  (             ), // TODO - Core Read Value
    .regf_guards_guard_c_rval_o  (             ), // TODO - Core Read Value
    .regf_guards_cprio_wr_i      ('{1{1'b0}}   ), // TODO - Core Write Strobe
    .regf_guards_cprio_wval_i    ('{1{1'b0}}   ), // TODO - Core Write Value
    .regf_guards_cprio_rval_o    (             ), // TODO - Core Read Value
    .regf_guards_bprio_wr_i      ('{1{1'b0}}   ), // TODO - Core Write Strobe
    .regf_guards_bprio_wval_i    ('{1{1'b0}}   ), // TODO - Core Write Value
    .regf_guards_bprio_rval_o    (             ), // TODO - Core Read Value
    .regf_guards_grdport_rval_o  (             ), // TODO - Core Read Value
    .regf_grddim_num_wr_o        (             ), // TODO - Bus Write Strobe
    .regf_grddim_num_wbus_o      (             ), // TODO - Bus Write Value
    .regf_grddim_num_rbus_i      ('{2{12'h000}}), // TODO - Bus Read Value
    .regf_grddim_const_rval_o    (             ), // TODO - Core Read Value
    .regf_mixint_r_int_rval_o    (             ), // TODO - Core Read Value
    .regf_mixint_r_uint_rval_o   (             ), // TODO - Core Read Value
    .regf_mixint_c_int_rbus_i    (4'shD        ), // TODO - Bus Read Value
    .regf_mixint_c_int_wbus_o    (             ), // TODO - Bus Write Value
    .regf_mixint_c_int_wr_o      (             ), // TODO - Bus Write Strobe
    .regf_wide_a_rval_o          (             ), // TODO - Core Read Value
    .regf_wide_b_rval_o          (             ), // TODO - Core Read Value
    .regf_base_rval_o            (             ), // TODO - Core Read Value
    .regf_wide_d_rval_o          (             ), // TODO - Core Read Value
    .another_grd_i               (1'b0         )  // TODO
  );

endmodule // corner

`default_nettype wire
`end_keywords

// =============================================================================
//
//   @generated @fully-generated
//
//   THIS FILE IS GENERATED!!! DO NOT EDIT MANUALLY. CHANGES ARE LOST.
//
// =============================================================================
