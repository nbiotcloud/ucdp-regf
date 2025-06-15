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
// Module:     tests.full
// Data Model: tests.test_svmako.FullMod
//
// =============================================================================

`begin_keywords "1800-2009"
`default_nettype none  // implicit wires are forbidden

module full();



  // ------------------------------------------------------
  //  tests.full_regf: u_regf
  // ------------------------------------------------------
  full_regf u_regf (
    .main_clk_i         (1'b0        ), // TODO - Clock
    .main_rst_an_i      (1'b0        ), // TODO - Async Reset (Low-Active)
    .mem_ena_i          (1'b0        ), // TODO - Memory Access Enable
    .mem_addr_i         (10'h000     ), // TODO - Memory Address
    .mem_wena_i         (1'b0        ), // TODO - Memory Write Enable
    .mem_wdata_i        (32'h00000000), // TODO - Memory Write Data
    .mem_rdata_o        (            ), // TODO - Memory Read Data
    .mem_err_o          (            ), // TODO - Memory Access Failed.
    .regf_w0_f2_rval_o  (            ), // TODO - Core Read Value
    .regf_w0_f2_rd_i    (1'b0        ), // TODO - Core Read Strobe
    .regf_w0_f4_rval_o  (            ), // TODO - Core Read Value
    .regf_w0_f6_rval_o  (            ), // TODO - Core Read Value
    .regf_w0_f10_rval_o (            ), // TODO - Core Read Value
    .regf_w0_f10_rd_i   (1'b0        ), // TODO - Core Read Strobe
    .regf_w0_f14_rval_o (            ), // TODO - Core Read Value
    .regf_w0_f14_rd_i   (1'b0        ), // TODO - Core Read Strobe
    .regf_w0_f18_rval_o (            ), // TODO - Core Read Value
    .regf_w0_f18_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w0_f18_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w0_f22_rval_o (            ), // TODO - Core Read Value
    .regf_w0_f22_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w0_f22_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w0_f26_rval_o (            ), // TODO - Core Read Value
    .regf_w0_f26_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w0_f26_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w0_f30_rval_o (            ), // TODO - Core Read Value
    .regf_w0_f30_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w0_f30_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w1_f2_rval_o  (            ), // TODO - Core Read Value
    .regf_w1_f2_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w1_f2_wr_i    (1'b0        ), // TODO - Core Write Strobe
    .regf_w1_f6_rval_o  (            ), // TODO - Core Read Value
    .regf_w1_f6_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w1_f6_wr_i    (1'b0        ), // TODO - Core Write Strobe
    .regf_w1_f10_rval_o (            ), // TODO - Core Read Value
    .regf_w1_f10_rd_i   (1'b0        ), // TODO - Core Read Strobe
    .regf_w1_f12_rval_o (            ), // TODO - Core Read Value
    .regf_w1_f14_rval_o (            ), // TODO - Core Read Value
    .regf_w1_f18_rval_o (            ), // TODO - Core Read Value
    .regf_w1_f18_rd_i   (1'b0        ), // TODO - Core Read Strobe
    .regf_w1_f22_rval_o (            ), // TODO - Core Read Value
    .regf_w1_f22_rd_i   (1'b0        ), // TODO - Core Read Strobe
    .regf_w1_f26_rval_o (            ), // TODO - Core Read Value
    .regf_w1_f26_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w1_f26_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w1_f30_rval_o (            ), // TODO - Core Read Value
    .regf_w1_f30_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w1_f30_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w2_f2_rval_o  (            ), // TODO - Core Read Value
    .regf_w2_f2_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w2_f2_wr_i    (1'b0        ), // TODO - Core Write Strobe
    .regf_w2_f6_rval_o  (            ), // TODO - Core Read Value
    .regf_w2_f6_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w2_f6_wr_i    (1'b0        ), // TODO - Core Write Strobe
    .regf_w2_f10_rval_o (            ), // TODO - Core Read Value
    .regf_w2_f10_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w2_f10_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w2_f14_rval_o (            ), // TODO - Core Read Value
    .regf_w2_f14_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w2_f14_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w2_f16_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w2_f16_rd_o   (            ), // TODO - Bus Read Strobe
    .regf_w2_f20_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w2_f20_rd_o   (            ), // TODO - Bus Read Strobe
    .regf_w2_f22_rval_o (            ), // TODO - Core Read Value
    .regf_w2_f22_rd_i   (1'b0        ), // TODO - Core Read Strobe
    .regf_w2_f24_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w2_f24_rd_o   (            ), // TODO - Bus Read Strobe
    .regf_w2_f26_rval_o (            ), // TODO - Core Read Value
    .regf_w2_f28_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w2_f28_rd_o   (            ), // TODO - Bus Read Strobe
    .regf_w2_f30_rval_o (            ), // TODO - Core Read Value
    .regf_w3_f0_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w3_f0_rd_o    (            ), // TODO - Bus Read Strobe
    .regf_w3_f2_rval_o  (            ), // TODO - Core Read Value
    .regf_w3_f2_rd_i    (1'b0        ), // TODO - Core Read Strobe
    .regf_w3_f4_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w3_f4_rd_o    (            ), // TODO - Bus Read Strobe
    .regf_w3_f6_rval_o  (            ), // TODO - Core Read Value
    .regf_w3_f6_rd_i    (1'b0        ), // TODO - Core Read Strobe
    .regf_w3_f8_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w3_f8_rd_o    (            ), // TODO - Bus Read Strobe
    .regf_w3_f10_rval_o (            ), // TODO - Core Read Value
    .regf_w3_f10_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w3_f10_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w3_f12_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w3_f12_rd_o   (            ), // TODO - Bus Read Strobe
    .regf_w3_f14_rval_o (            ), // TODO - Core Read Value
    .regf_w3_f14_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w3_f14_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w3_f16_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w3_f16_rd_o   (            ), // TODO - Bus Read Strobe
    .regf_w3_f18_rval_o (            ), // TODO - Core Read Value
    .regf_w3_f18_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w3_f18_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w3_f20_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w3_f20_rd_o   (            ), // TODO - Bus Read Strobe
    .regf_w3_f22_rval_o (            ), // TODO - Core Read Value
    .regf_w3_f22_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w3_f22_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w3_f24_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w3_f24_rd_o   (            ), // TODO - Bus Read Strobe
    .regf_w3_f26_rval_o (            ), // TODO - Core Read Value
    .regf_w3_f26_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w3_f26_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w3_f28_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w3_f28_rd_o   (            ), // TODO - Bus Read Strobe
    .regf_w3_f30_rval_o (            ), // TODO - Core Read Value
    .regf_w3_f30_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w3_f30_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w4_f0_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w4_f0_rd_o    (            ), // TODO - Bus Read Strobe
    .regf_w4_f2_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w4_f2_wr_i    (1'b0        ), // TODO - Core Write Strobe
    .regf_w4_f4_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w4_f4_rd_o    (            ), // TODO - Bus Read Strobe
    .regf_w4_f6_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w4_f6_wr_i    (1'b0        ), // TODO - Core Write Strobe
    .regf_w4_f8_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w4_f8_rd_o    (            ), // TODO - Bus Read Strobe
    .regf_w4_f10_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w4_f10_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w4_f12_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w4_f12_rd_o   (            ), // TODO - Bus Read Strobe
    .regf_w4_f14_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w4_f14_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w4_f16_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w4_f16_rd_o   (            ), // TODO - Bus Read Strobe
    .regf_w4_f18_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w4_f18_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w4_f20_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w4_f20_rd_o   (            ), // TODO - Bus Read Strobe
    .regf_w4_f22_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w4_f22_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w4_f26_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w4_f28_rval_o (            ), // TODO - Core Read Value
    .regf_w4_f28_rd_i   (1'b0        ), // TODO - Core Read Strobe
    .regf_w4_f30_rval_o (            ), // TODO - Core Read Value
    .regf_w5_f0_rval_o  (            ), // TODO - Core Read Value
    .regf_w5_f2_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w5_f4_rval_o  (            ), // TODO - Core Read Value
    .regf_w5_f4_rd_i    (1'b0        ), // TODO - Core Read Strobe
    .regf_w5_f6_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w5_f8_rval_o  (            ), // TODO - Core Read Value
    .regf_w5_f8_rd_i    (1'b0        ), // TODO - Core Read Strobe
    .regf_w5_f10_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w5_f12_rval_o (            ), // TODO - Core Read Value
    .regf_w5_f12_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w5_f12_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w5_f14_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w5_f16_rval_o (            ), // TODO - Core Read Value
    .regf_w5_f16_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w5_f16_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w5_f18_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w5_f20_rval_o (            ), // TODO - Core Read Value
    .regf_w5_f20_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w5_f20_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w5_f22_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w5_f24_rval_o (            ), // TODO - Core Read Value
    .regf_w5_f24_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w5_f24_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w5_f26_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w5_f28_rval_o (            ), // TODO - Core Read Value
    .regf_w5_f28_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w5_f28_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w5_f30_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w6_f0_rval_o  (            ), // TODO - Core Read Value
    .regf_w6_f0_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w6_f0_wr_i    (1'b0        ), // TODO - Core Write Strobe
    .regf_w6_f2_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w6_f4_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w6_f4_wr_i    (1'b0        ), // TODO - Core Write Strobe
    .regf_w6_f6_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w6_f8_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w6_f8_wr_i    (1'b0        ), // TODO - Core Write Strobe
    .regf_w6_f10_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w6_f12_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w6_f12_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w6_f14_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w6_f16_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w6_f16_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w6_f18_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w6_f20_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w6_f20_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w6_f22_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w6_f24_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w6_f24_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w6_f28_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w6_f30_rval_o (            ), // TODO - Core Read Value
    .regf_w6_f30_rd_i   (1'b0        ), // TODO - Core Read Strobe
    .regf_w7_f0_rval_o  (            ), // TODO - Core Read Value
    .regf_w7_f2_rval_o  (            ), // TODO - Core Read Value
    .regf_w7_f4_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w7_f6_rval_o  (            ), // TODO - Core Read Value
    .regf_w7_f6_rd_i    (1'b0        ), // TODO - Core Read Strobe
    .regf_w7_f8_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w7_f10_rval_o (            ), // TODO - Core Read Value
    .regf_w7_f10_rd_i   (1'b0        ), // TODO - Core Read Strobe
    .regf_w7_f12_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w7_f14_rval_o (            ), // TODO - Core Read Value
    .regf_w7_f14_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w7_f14_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w7_f16_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w7_f18_rval_o (            ), // TODO - Core Read Value
    .regf_w7_f18_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w7_f18_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w7_f20_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w7_f22_rval_o (            ), // TODO - Core Read Value
    .regf_w7_f22_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w7_f22_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w7_f24_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w7_f26_rval_o (            ), // TODO - Core Read Value
    .regf_w7_f26_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w7_f26_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w7_f28_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w7_f30_rval_o (            ), // TODO - Core Read Value
    .regf_w7_f30_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w7_f30_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w8_f0_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w8_f2_rval_o  (            ), // TODO - Core Read Value
    .regf_w8_f2_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w8_f2_wr_i    (1'b0        ), // TODO - Core Write Strobe
    .regf_w8_f4_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w8_f6_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w8_f6_wr_i    (1'b0        ), // TODO - Core Write Strobe
    .regf_w8_f8_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w8_f10_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w8_f10_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w8_f12_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w8_f14_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w8_f14_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w8_f16_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w8_f18_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w8_f18_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w8_f20_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w8_f22_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w8_f22_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w8_f24_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w8_f26_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w8_f26_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w8_f28_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w8_f28_rd_o   (            ), // TODO - Bus Read Strobe
    .regf_w9_f0_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w9_f0_rd_o    (            ), // TODO - Bus Read Strobe
    .regf_w9_f2_rval_o  (            ), // TODO - Core Read Value
    .regf_w9_f2_rd_i    (1'b0        ), // TODO - Core Read Strobe
    .regf_w9_f4_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w9_f4_rd_o    (            ), // TODO - Bus Read Strobe
    .regf_w9_f6_rval_o  (            ), // TODO - Core Read Value
    .regf_w9_f8_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w9_f8_rd_o    (            ), // TODO - Bus Read Strobe
    .regf_w9_f10_rval_o (            ), // TODO - Core Read Value
    .regf_w9_f12_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w9_f12_rd_o   (            ), // TODO - Bus Read Strobe
    .regf_w9_f14_rval_o (            ), // TODO - Core Read Value
    .regf_w9_f14_rd_i   (1'b0        ), // TODO - Core Read Strobe
    .regf_w9_f16_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w9_f16_rd_o   (            ), // TODO - Bus Read Strobe
    .regf_w9_f18_rval_o (            ), // TODO - Core Read Value
    .regf_w9_f18_rd_i   (1'b0        ), // TODO - Core Read Strobe
    .regf_w9_f20_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w9_f20_rd_o   (            ), // TODO - Bus Read Strobe
    .regf_w9_f22_rval_o (            ), // TODO - Core Read Value
    .regf_w9_f22_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w9_f22_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w9_f24_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w9_f24_rd_o   (            ), // TODO - Bus Read Strobe
    .regf_w9_f26_rval_o (            ), // TODO - Core Read Value
    .regf_w9_f26_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w9_f26_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w9_f28_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w9_f28_rd_o   (            ), // TODO - Bus Read Strobe
    .regf_w9_f30_rval_o (            ), // TODO - Core Read Value
    .regf_w9_f30_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w9_f30_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w10_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w10_f0_rd_o   (            ), // TODO - Bus Read Strobe
    .regf_w10_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w10_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w10_f2_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w10_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w10_f4_rd_o   (            ), // TODO - Bus Read Strobe
    .regf_w10_f6_rval_o (            ), // TODO - Core Read Value
    .regf_w10_f6_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w10_f6_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w10_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w10_f8_rd_o   (            ), // TODO - Bus Read Strobe
    .regf_w10_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w10_f10_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w10_f10_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w10_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w10_f12_rd_o  (            ), // TODO - Bus Read Strobe
    .regf_w10_f14_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w10_f14_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w10_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w10_f16_rd_o  (            ), // TODO - Bus Read Strobe
    .regf_w10_f18_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w10_f18_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w10_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w10_f20_rd_o  (            ), // TODO - Bus Read Strobe
    .regf_w10_f22_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w10_f22_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w10_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w10_f24_rd_o  (            ), // TODO - Bus Read Strobe
    .regf_w10_f26_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w10_f26_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w10_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w10_f28_rd_o  (            ), // TODO - Bus Read Strobe
    .regf_w10_f30_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w10_f30_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w11_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w11_f0_rd_o   (            ), // TODO - Bus Read Strobe
    .regf_w11_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w11_f2_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w11_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w11_f4_rd_o   (            ), // TODO - Bus Read Strobe
    .regf_w11_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w11_f8_rd_o   (            ), // TODO - Bus Read Strobe
    .regf_w11_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w11_f10_rd_i  (1'b0        ), // TODO - Core Read Strobe
    .regf_w11_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w11_f12_rd_o  (            ), // TODO - Bus Read Strobe
    .regf_w11_f14_rval_o(            ), // TODO - Core Read Value
    .regf_w11_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w11_f16_rd_o  (            ), // TODO - Bus Read Strobe
    .regf_w11_f18_rval_o(            ), // TODO - Core Read Value
    .regf_w11_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w11_f20_rd_o  (            ), // TODO - Bus Read Strobe
    .regf_w11_f22_rval_o(            ), // TODO - Core Read Value
    .regf_w11_f22_rd_i  (1'b0        ), // TODO - Core Read Strobe
    .regf_w11_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w11_f24_rd_o  (            ), // TODO - Bus Read Strobe
    .regf_w11_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w11_f26_rd_i  (1'b0        ), // TODO - Core Read Strobe
    .regf_w11_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w11_f28_rd_o  (            ), // TODO - Bus Read Strobe
    .regf_w11_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w11_f30_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w11_f30_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w12_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w12_f0_rd_o   (            ), // TODO - Bus Read Strobe
    .regf_w12_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w12_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w12_f2_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w12_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w12_f4_rd_o   (            ), // TODO - Bus Read Strobe
    .regf_w12_f6_rval_o (            ), // TODO - Core Read Value
    .regf_w12_f6_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w12_f6_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w12_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w12_f8_rd_o   (            ), // TODO - Bus Read Strobe
    .regf_w12_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w12_f10_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w12_f10_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w12_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w12_f12_rd_o  (            ), // TODO - Bus Read Strobe
    .regf_w12_f14_rval_o(            ), // TODO - Core Read Value
    .regf_w12_f14_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w12_f14_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w12_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w12_f16_rd_o  (            ), // TODO - Bus Read Strobe
    .regf_w12_f18_rval_o(            ), // TODO - Core Read Value
    .regf_w12_f18_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w12_f18_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w12_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w12_f20_rd_o  (            ), // TODO - Bus Read Strobe
    .regf_w12_f22_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w12_f22_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w12_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w12_f24_rd_o  (            ), // TODO - Bus Read Strobe
    .regf_w12_f26_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w12_f26_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w12_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w12_f28_rd_o  (            ), // TODO - Bus Read Strobe
    .regf_w12_f30_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w12_f30_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w13_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w13_f0_rd_o   (            ), // TODO - Bus Read Strobe
    .regf_w13_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w13_f2_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w13_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w13_f4_rd_o   (            ), // TODO - Bus Read Strobe
    .regf_w13_f6_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w13_f6_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w13_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w13_f8_rd_o   (            ), // TODO - Bus Read Strobe
    .regf_w13_f10_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w13_f10_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w13_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w13_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w13_f12_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w13_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w13_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w13_f16_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w13_f18_rval_o(            ), // TODO - Core Read Value
    .regf_w13_f18_rd_i  (1'b0        ), // TODO - Core Read Strobe
    .regf_w13_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w13_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w13_f20_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w13_f22_rval_o(            ), // TODO - Core Read Value
    .regf_w13_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w13_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w13_f24_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w13_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w13_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w13_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w13_f28_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w13_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w13_f30_rd_i  (1'b0        ), // TODO - Core Read Strobe
    .regf_w14_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w14_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w14_f0_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w14_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w14_f2_rd_i   (1'b0        ), // TODO - Core Read Strobe
    .regf_w14_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w14_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w14_f4_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w14_f6_rval_o (            ), // TODO - Core Read Value
    .regf_w14_f6_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w14_f6_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w14_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w14_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w14_f8_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w14_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w14_f10_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w14_f10_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w14_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w14_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w14_f12_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w14_f14_rval_o(            ), // TODO - Core Read Value
    .regf_w14_f14_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w14_f14_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w14_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w14_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w14_f16_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w14_f18_rval_o(            ), // TODO - Core Read Value
    .regf_w14_f18_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w14_f18_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w14_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w14_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w14_f20_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w14_f22_rval_o(            ), // TODO - Core Read Value
    .regf_w14_f22_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w14_f22_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w14_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w14_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w14_f24_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w14_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w14_f26_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w14_f26_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w14_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w14_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w14_f28_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w14_f30_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w14_f30_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w15_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w15_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w15_f0_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w15_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w15_f2_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w15_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w15_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w15_f4_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w15_f6_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w15_f6_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w15_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w15_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w15_f8_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w15_f10_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w15_f10_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w15_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w15_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w15_f12_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w15_f14_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w15_f14_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w15_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w15_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w15_f16_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w15_f18_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w15_f18_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w15_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w15_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w15_f20_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w15_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w15_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w15_f24_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w15_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w15_f26_rd_i  (1'b0        ), // TODO - Core Read Strobe
    .regf_w15_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w15_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w15_f28_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w15_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w16_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w16_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w16_f0_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w16_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w16_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w16_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w16_f4_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w16_f6_rval_o (            ), // TODO - Core Read Value
    .regf_w16_f6_rd_i   (1'b0        ), // TODO - Core Read Strobe
    .regf_w16_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w16_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w16_f8_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w16_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w16_f10_rd_i  (1'b0        ), // TODO - Core Read Strobe
    .regf_w16_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w16_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w16_f12_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w16_f14_rval_o(            ), // TODO - Core Read Value
    .regf_w16_f14_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w16_f14_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w16_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w16_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w16_f16_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w16_f18_rval_o(            ), // TODO - Core Read Value
    .regf_w16_f18_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w16_f18_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w16_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w16_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w16_f20_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w16_f22_rval_o(            ), // TODO - Core Read Value
    .regf_w16_f22_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w16_f22_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w16_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w16_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w16_f24_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w16_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w16_f26_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w16_f26_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w16_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w16_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w16_f28_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w16_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w16_f30_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w16_f30_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w17_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w17_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w17_f0_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w17_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w17_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w17_f2_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w17_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w17_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w17_f4_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w17_f6_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w17_f6_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w17_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w17_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w17_f8_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w17_f10_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w17_f10_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w17_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w17_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w17_f12_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w17_f14_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w17_f14_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w17_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w17_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w17_f16_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w17_f18_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w17_f18_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w17_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w17_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w17_f20_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w17_f22_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w17_f22_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w17_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w17_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w17_f24_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w17_f26_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w17_f26_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w17_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w17_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w17_f28_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w18_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w18_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w18_f0_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w18_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w18_f2_rd_i   (1'b0        ), // TODO - Core Read Strobe
    .regf_w18_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w18_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w18_f4_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w18_f6_rval_o (            ), // TODO - Core Read Value
    .regf_w18_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w18_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w18_f8_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w18_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w18_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w18_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w18_f12_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w18_f14_rval_o(            ), // TODO - Core Read Value
    .regf_w18_f14_rd_i  (1'b0        ), // TODO - Core Read Strobe
    .regf_w18_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w18_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w18_f16_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w18_f18_rval_o(            ), // TODO - Core Read Value
    .regf_w18_f18_rd_i  (1'b0        ), // TODO - Core Read Strobe
    .regf_w18_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w18_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w18_f20_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w18_f22_rval_o(            ), // TODO - Core Read Value
    .regf_w18_f22_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w18_f22_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w18_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w18_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w18_f24_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w18_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w18_f26_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w18_f26_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w18_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w18_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w18_f28_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w18_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w18_f30_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w18_f30_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w19_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w19_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w19_f0_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w19_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w19_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w19_f2_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w19_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w19_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w19_f4_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w19_f6_rval_o (            ), // TODO - Core Read Value
    .regf_w19_f6_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w19_f6_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w19_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w19_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w19_f8_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w19_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w19_f10_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w19_f10_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w19_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w19_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w19_f12_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w19_f14_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w19_f14_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w19_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w19_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w19_f16_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w19_f18_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w19_f18_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w19_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w19_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w19_f20_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w19_f22_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w19_f22_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w19_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w19_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w19_f24_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w19_f26_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w19_f26_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w19_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w19_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w19_f28_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w19_f30_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w19_f30_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w20_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w20_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w20_f0_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w20_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w20_f2_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w20_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w20_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w20_f4_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w20_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w20_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w20_f8_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w20_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w20_f10_rd_i  (1'b0        ), // TODO - Core Read Strobe
    .regf_w20_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w20_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w20_f12_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w20_f14_rval_o(            ), // TODO - Core Read Value
    .regf_w20_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w20_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w20_f16_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w20_f18_rval_o(            ), // TODO - Core Read Value
    .regf_w20_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w20_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w20_f20_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w20_f22_rval_o(            ), // TODO - Core Read Value
    .regf_w20_f22_rd_i  (1'b0        ), // TODO - Core Read Strobe
    .regf_w20_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w20_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w20_f24_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w20_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w20_f26_rd_i  (1'b0        ), // TODO - Core Read Strobe
    .regf_w20_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w20_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w20_f28_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w20_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w20_f30_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w20_f30_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w21_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w21_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w21_f0_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w21_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w21_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w21_f2_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w21_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w21_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w21_f4_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w21_f6_rval_o (            ), // TODO - Core Read Value
    .regf_w21_f6_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w21_f6_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w21_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w21_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w21_f8_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w21_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w21_f10_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w21_f10_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w21_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w21_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w21_f12_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w21_f14_rval_o(            ), // TODO - Core Read Value
    .regf_w21_f14_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w21_f14_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w21_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w21_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w21_f16_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w21_f18_rval_o(            ), // TODO - Core Read Value
    .regf_w21_f18_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w21_f18_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w21_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w21_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w21_f20_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w21_f22_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w21_f22_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w21_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w21_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w21_f24_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w21_f26_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w21_f26_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w21_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w21_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w21_f28_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w21_f30_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w21_f30_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w22_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w22_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w22_f0_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w22_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w22_f2_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w22_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w22_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w22_f4_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w22_f6_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w22_f6_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w22_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w22_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w22_f8_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w22_f10_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w22_f10_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w22_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w22_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w22_f12_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w22_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w22_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w22_f16_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w22_f18_rval_o(            ), // TODO - Core Read Value
    .regf_w22_f18_rd_i  (1'b0        ), // TODO - Core Read Strobe
    .regf_w22_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w22_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w22_f20_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w22_f22_rval_o(            ), // TODO - Core Read Value
    .regf_w22_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w22_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w22_f24_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w22_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w22_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w22_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w22_f28_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w22_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w22_f30_rd_i  (1'b0        ), // TODO - Core Read Strobe
    .regf_w23_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w23_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w23_f0_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w23_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w23_f2_rd_i   (1'b0        ), // TODO - Core Read Strobe
    .regf_w23_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w23_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w23_f4_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w23_f6_rval_o (            ), // TODO - Core Read Value
    .regf_w23_f6_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w23_f6_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w23_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w23_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w23_f8_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w23_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w23_f10_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w23_f10_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w23_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w23_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w23_f12_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w23_f14_rval_o(            ), // TODO - Core Read Value
    .regf_w23_f14_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w23_f14_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w23_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w23_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w23_f16_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w23_f18_rval_o(            ), // TODO - Core Read Value
    .regf_w23_f18_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w23_f18_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w23_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w23_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w23_f20_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w23_f22_rval_o(            ), // TODO - Core Read Value
    .regf_w23_f22_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w23_f22_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w23_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w23_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w23_f24_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w23_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w23_f26_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w23_f26_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w23_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w23_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w23_f28_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w23_f30_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w23_f30_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w24_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w24_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w24_f0_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w24_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w24_f2_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w24_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w24_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w24_f4_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w24_f6_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w24_f6_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w24_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w24_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w24_f8_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w24_f10_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w24_f10_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w24_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w24_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w24_f12_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w24_f14_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w24_f14_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w24_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w24_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w24_f16_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w24_f18_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w24_f18_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w24_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w24_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w24_f20_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w24_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w24_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w24_f24_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w24_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w24_f26_rd_i  (1'b0        ), // TODO - Core Read Strobe
    .regf_w24_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w24_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w24_f28_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w24_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w25_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w25_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w25_f0_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w25_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w25_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w25_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w25_f4_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w25_f6_rval_o (            ), // TODO - Core Read Value
    .regf_w25_f6_rd_i   (1'b0        ), // TODO - Core Read Strobe
    .regf_w25_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w25_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w25_f8_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w25_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w25_f10_rd_i  (1'b0        ), // TODO - Core Read Strobe
    .regf_w25_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w25_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w25_f12_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w25_f14_rval_o(            ), // TODO - Core Read Value
    .regf_w25_f14_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w25_f14_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w25_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w25_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w25_f16_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w25_f18_rval_o(            ), // TODO - Core Read Value
    .regf_w25_f18_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w25_f18_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w25_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w25_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w25_f20_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w25_f22_rval_o(            ), // TODO - Core Read Value
    .regf_w25_f22_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w25_f22_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w25_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w25_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w25_f24_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w25_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w25_f26_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w25_f26_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w25_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w25_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w25_f28_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w25_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w25_f30_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w25_f30_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w26_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w26_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w26_f0_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w26_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w26_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w26_f2_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w26_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w26_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w26_f4_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w26_f6_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w26_f6_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w26_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w26_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w26_f8_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w26_f10_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w26_f10_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w26_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w26_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w26_f12_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w26_f14_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w26_f14_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w26_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w26_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w26_f16_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w26_f18_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w26_f18_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w26_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w26_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w26_f20_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w26_f22_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w26_f22_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w26_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w26_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w26_f24_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w26_f26_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w26_f26_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w26_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w26_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w26_f28_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w26_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w26_f30_rd_i  (1'b0        ), // TODO - Core Read Strobe
    .regf_w27_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w27_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w27_f0_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w27_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w27_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w27_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w27_f4_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w27_f6_rval_o (            ), // TODO - Core Read Value
    .regf_w27_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w27_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w27_f8_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w27_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w27_f10_rd_i  (1'b0        ), // TODO - Core Read Strobe
    .regf_w27_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w27_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w27_f12_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w27_f14_rval_o(            ), // TODO - Core Read Value
    .regf_w27_f14_rd_i  (1'b0        ), // TODO - Core Read Strobe
    .regf_w27_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w27_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w27_f16_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w27_f18_rval_o(            ), // TODO - Core Read Value
    .regf_w27_f18_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w27_f18_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w27_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w27_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w27_f20_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w27_f22_rval_o(            ), // TODO - Core Read Value
    .regf_w27_f22_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w27_f22_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w27_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w27_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w27_f24_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w27_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w27_f26_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w27_f26_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w27_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w27_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w27_f28_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w27_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w27_f30_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w27_f30_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w28_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w28_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w28_f0_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w28_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w28_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w28_f2_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w28_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w28_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w28_f4_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w28_f6_rval_o (            ), // TODO - Core Read Value
    .regf_w28_f6_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w28_f6_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w28_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w28_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w28_f8_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w28_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w28_f10_rd_i  (1'b0        ), // TODO - Core Read Strobe
    .regf_w28_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w28_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w28_f12_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w28_f14_rval_o(            ), // TODO - Core Read Value
    .regf_w28_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w28_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w28_f16_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w28_f18_rval_o(            ), // TODO - Core Read Value
    .regf_w28_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w28_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w28_f20_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w28_f22_rval_o(            ), // TODO - Core Read Value
    .regf_w28_f22_rd_i  (1'b0        ), // TODO - Core Read Strobe
    .regf_w28_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w28_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w28_f24_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w28_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w28_f26_rd_i  (1'b0        ), // TODO - Core Read Strobe
    .regf_w28_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w28_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w28_f28_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w28_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w28_f30_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w28_f30_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w29_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w29_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w29_f0_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w29_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w29_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w29_f2_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w29_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w29_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w29_f4_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w29_f6_rval_o (            ), // TODO - Core Read Value
    .regf_w29_f6_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w29_f6_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w29_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w29_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w29_f8_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w29_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w29_f10_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w29_f10_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w29_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w29_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w29_f12_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w29_f14_rval_o(            ), // TODO - Core Read Value
    .regf_w29_f14_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w29_f14_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w29_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w29_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w29_f16_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w29_f18_rval_o(            ), // TODO - Core Read Value
    .regf_w29_f18_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w29_f18_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w29_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w29_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w29_f20_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w29_f22_rval_o(            ), // TODO - Core Read Value
    .regf_w29_f22_rd_i  (1'b0        ), // TODO - Core Read Strobe
    .regf_w29_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w29_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w29_f24_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w29_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w29_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w29_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w29_f28_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w29_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w30_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w30_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w30_f0_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w30_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w30_f2_rd_i   (1'b0        ), // TODO - Core Read Strobe
    .regf_w30_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w30_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w30_f4_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w30_f6_rval_o (            ), // TODO - Core Read Value
    .regf_w30_f6_rd_i   (1'b0        ), // TODO - Core Read Strobe
    .regf_w30_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w30_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w30_f8_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w30_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w30_f10_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w30_f10_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w30_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w30_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w30_f12_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w30_f14_rval_o(            ), // TODO - Core Read Value
    .regf_w30_f14_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w30_f14_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w30_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w30_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w30_f16_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w30_f18_rval_o(            ), // TODO - Core Read Value
    .regf_w30_f18_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w30_f18_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w30_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w30_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w30_f20_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w30_f22_rval_o(            ), // TODO - Core Read Value
    .regf_w30_f22_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w30_f22_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w30_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w30_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w30_f24_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w30_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w30_f26_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w30_f26_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w30_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w30_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w30_f28_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w30_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w30_f30_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w30_f30_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w31_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w31_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w31_f0_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w31_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w31_f2_rd_i   (1'b0        ), // TODO - Core Read Strobe
    .regf_w31_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w31_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w31_f4_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w31_f6_rval_o (            ), // TODO - Core Read Value
    .regf_w31_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w31_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w31_f8_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w31_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w31_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w31_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w31_f12_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w31_f14_rval_o(            ), // TODO - Core Read Value
    .regf_w31_f14_rd_i  (1'b0        ), // TODO - Core Read Strobe
    .regf_w31_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w31_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w31_f16_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w31_f18_rval_o(            ), // TODO - Core Read Value
    .regf_w31_f18_rd_i  (1'b0        ), // TODO - Core Read Strobe
    .regf_w31_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w31_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w31_f20_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w31_f22_rval_o(            ), // TODO - Core Read Value
    .regf_w31_f22_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w31_f22_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w31_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w31_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w31_f24_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w31_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w31_f26_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w31_f26_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w31_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w31_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w31_f28_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w31_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w31_f30_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w31_f30_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w32_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w32_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w32_f0_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w32_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w32_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w32_f2_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w32_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w32_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w32_f4_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w32_f6_rval_o (            ), // TODO - Core Read Value
    .regf_w32_f6_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w32_f6_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w32_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w32_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w32_f8_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w32_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w32_f10_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w32_f10_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w32_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w32_f12_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w32_f14_rval_o(            ), // TODO - Core Read Value
    .regf_w32_f14_rd_i  (1'b0        ), // TODO - Core Read Strobe
    .regf_w32_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w32_f16_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w32_f18_rval_o(            ), // TODO - Core Read Value
    .regf_w32_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w32_f20_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w32_f22_rval_o(            ), // TODO - Core Read Value
    .regf_w32_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w32_f24_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w32_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w32_f26_rd_i  (1'b0        ), // TODO - Core Read Strobe
    .regf_w32_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w32_f28_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w32_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w32_f30_rd_i  (1'b0        ), // TODO - Core Read Strobe
    .regf_w33_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w33_f0_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w33_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w33_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w33_f2_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w33_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w33_f4_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w33_f6_rval_o (            ), // TODO - Core Read Value
    .regf_w33_f6_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w33_f6_wr_i   (1'b0        ), // TODO - Core Write Strobe
    .regf_w33_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w33_f8_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w33_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w33_f10_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w33_f10_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w33_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w33_f12_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w33_f14_rval_o(            ), // TODO - Core Read Value
    .regf_w33_f14_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w33_f14_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w33_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w33_f16_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w33_f18_rval_o(            ), // TODO - Core Read Value
    .regf_w33_f18_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w33_f18_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w33_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w33_f20_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w33_f22_rval_o(            ), // TODO - Core Read Value
    .regf_w33_f22_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w33_f22_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w33_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w33_f24_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w33_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w33_f26_rd_i  (1'b0        ), // TODO - Core Read Strobe
    .regf_w33_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w33_f28_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w33_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w34_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w34_f0_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w34_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w34_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w34_f4_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w34_f6_rval_o (            ), // TODO - Core Read Value
    .regf_w34_f6_rd_i   (1'b0        ), // TODO - Core Read Strobe
    .regf_w34_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w34_f8_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w34_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w34_f10_rd_i  (1'b0        ), // TODO - Core Read Strobe
    .regf_w34_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w34_f12_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w34_f14_rval_o(            ), // TODO - Core Read Value
    .regf_w34_f14_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w34_f14_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w34_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w34_f16_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w34_f18_rval_o(            ), // TODO - Core Read Value
    .regf_w34_f18_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w34_f18_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w34_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w34_f20_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w34_f22_rval_o(            ), // TODO - Core Read Value
    .regf_w34_f22_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w34_f22_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w34_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w34_f24_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w34_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w34_f26_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w34_f26_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w34_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w34_f28_wr_o  (            ), // TODO - Bus Write Strobe
    .regf_w34_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w34_f30_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w34_f30_wr_i  (1'b0        ), // TODO - Core Write Strobe
    .regf_w35_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w35_f0_wr_o   (            ), // TODO - Bus Write Strobe
    .regf_w35_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w35_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w35_f2_wr_i   (1'b0        )  // TODO - Core Write Strobe
  );

endmodule // full

`default_nettype wire
`end_keywords

// =============================================================================
//
//   @generated @fully-generated
//
//   THIS FILE IS GENERATED!!! DO NOT EDIT MANUALLY. CHANGES ARE LOST.
//
// =============================================================================
