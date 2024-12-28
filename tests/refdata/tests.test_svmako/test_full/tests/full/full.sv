// =============================================================================
//
// THIS FILE IS GENERATED!!! DO NOT EDIT MANUALLY. CHANGES ARE LOST.
//
// =============================================================================
//
//  MIT License
//
//  Copyright (c) 2024 nbiotcloud
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
    // main_i
    .main_clk_i         (1'b0        ), // TODO
    .main_rst_an_i      (1'b0        ), // TODO - Async Reset (Low-Active)
    // mem_i
    .mem_ena_i          (1'b0        ), // TODO
    .mem_addr_i         (13'h0000    ), // TODO
    .mem_wena_i         (1'b0        ), // TODO
    .mem_wdata_i        (32'h00000000), // TODO
    .mem_rdata_o        (            ), // TODO
    .mem_err_o          (            ), // TODO
    // regf_o
    // regf_w0_f0_o: bus=None core=RO in_regf=True
    .regf_w0_f0_rval_o  (            ), // TODO - Core Read Value
    // regf_w0_f2_o: bus=None core=RC in_regf=False
    // regf_w0_f4_o: bus=None core=RC in_regf=True
    .regf_w0_f4_rval_o  (            ), // TODO - Core Read Value
    .regf_w0_f4_rd_i    (1'b0        ), // TODO - Core Read Strobe
    // regf_w0_f6_o: bus=None core=RS in_regf=False
    // regf_w0_f8_o: bus=None core=RS in_regf=True
    .regf_w0_f8_rval_o  (            ), // TODO - Core Read Value
    .regf_w0_f8_rd_i    (1'b0        ), // TODO - Core Read Strobe
    // regf_w0_f10_o: bus=None core=RT in_regf=False
    // regf_w0_f12_o: bus=None core=RT in_regf=True
    .regf_w0_f12_rval_o (            ), // TODO - Core Read Value
    .regf_w0_f12_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w0_f14_o: bus=None core=RP in_regf=True
    .regf_w0_f14_rval_o (            ), // TODO - Core Read Value
    // regf_w0_f16_o: bus=None core=RW in_regf=False
    // regf_w0_f18_o: bus=None core=RW in_regf=True
    .regf_w0_f18_rval_o (            ), // TODO - Core Read Value
    .regf_w0_f18_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w0_f18_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w0_f20_o: bus=None core=RW0C in_regf=False
    // regf_w0_f22_o: bus=None core=RW0C in_regf=True
    .regf_w0_f22_rval_o (            ), // TODO - Core Read Value
    .regf_w0_f22_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w0_f22_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w0_f24_o: bus=None core=RW0S in_regf=False
    // regf_w0_f26_o: bus=None core=RW0S in_regf=True
    .regf_w0_f26_rval_o (            ), // TODO - Core Read Value
    .regf_w0_f26_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w0_f26_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w0_f28_o: bus=None core=RW1C in_regf=False
    // regf_w0_f30_o: bus=None core=RW1C in_regf=True
    .regf_w0_f30_rval_o (            ), // TODO - Core Read Value
    .regf_w0_f30_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w0_f30_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w1_f0_o: bus=None core=RW1S in_regf=False
    // regf_w1_f2_o: bus=None core=RW1S in_regf=True
    .regf_w1_f2_rval_o  (            ), // TODO - Core Read Value
    .regf_w1_f2_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w1_f2_wr_i    (1'b0        ), // TODO - Core Write Strobe
    // regf_w1_f4_o: bus=None core=RWL in_regf=False
    // regf_w1_f6_o: bus=None core=RWL in_regf=True
    .regf_w1_f6_rval_o  (            ), // TODO - Core Read Value
    .regf_w1_f6_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w1_f6_wr_i    (1'b0        ), // TODO - Core Write Strobe
    // regf_w1_f8_o: bus=RO core=RO in_regf=True
    .regf_w1_f8_rval_o  (            ), // TODO - Core Read Value
    // regf_w1_f10_o: bus=RO core=RC in_regf=False
    .regf_w1_f10_rbus_i (2'h0        ), // TODO - Bus Read Value
    // regf_w1_f12_o: bus=RO core=RC in_regf=True
    .regf_w1_f12_rval_o (            ), // TODO - Core Read Value
    .regf_w1_f12_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w1_f14_o: bus=RO core=RS in_regf=False
    .regf_w1_f14_rbus_i (2'h0        ), // TODO - Bus Read Value
    // regf_w1_f16_o: bus=RO core=RS in_regf=True
    .regf_w1_f16_rval_o (            ), // TODO - Core Read Value
    .regf_w1_f16_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w1_f18_o: bus=RO core=RT in_regf=False
    .regf_w1_f18_rbus_i (2'h0        ), // TODO - Bus Read Value
    // regf_w1_f20_o: bus=RO core=RT in_regf=True
    .regf_w1_f20_rval_o (            ), // TODO - Core Read Value
    .regf_w1_f20_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w1_f22_o: bus=RO core=RP in_regf=True
    .regf_w1_f22_rval_o (            ), // TODO - Core Read Value
    // regf_w1_f24_o: bus=RO core=WO in_regf=False
    .regf_w1_f24_rbus_i (2'h0        ), // TODO - Bus Read Value
    // regf_w1_f26_o: bus=RO core=WO in_regf=True
    .regf_w1_f26_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w1_f26_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w1_f28_o: bus=RO core=W0C in_regf=False
    .regf_w1_f28_rbus_i (2'h0        ), // TODO - Bus Read Value
    // regf_w1_f30_o: bus=RO core=W0C in_regf=True
    .regf_w1_f30_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w1_f30_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w2_f0_o: bus=RO core=W0S in_regf=False
    .regf_w2_f0_rbus_i  (2'h0        ), // TODO - Bus Read Value
    // regf_w2_f2_o: bus=RO core=W0S in_regf=True
    .regf_w2_f2_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w2_f2_wr_i    (1'b0        ), // TODO - Core Write Strobe
    // regf_w2_f4_o: bus=RO core=W1C in_regf=False
    .regf_w2_f4_rbus_i  (2'h0        ), // TODO - Bus Read Value
    // regf_w2_f6_o: bus=RO core=W1C in_regf=True
    .regf_w2_f6_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w2_f6_wr_i    (1'b0        ), // TODO - Core Write Strobe
    // regf_w2_f8_o: bus=RO core=W1S in_regf=False
    .regf_w2_f8_rbus_i  (2'h0        ), // TODO - Bus Read Value
    // regf_w2_f10_o: bus=RO core=W1S in_regf=True
    .regf_w2_f10_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w2_f10_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w2_f12_o: bus=RO core=WL in_regf=False
    .regf_w2_f12_rbus_i (2'h0        ), // TODO - Bus Read Value
    // regf_w2_f14_o: bus=RO core=WL in_regf=True
    .regf_w2_f14_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w2_f14_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w2_f16_o: bus=RO core=RW in_regf=False
    .regf_w2_f16_rbus_i (2'h0        ), // TODO - Bus Read Value
    // regf_w2_f18_o: bus=RO core=RW in_regf=True
    .regf_w2_f18_rval_o (            ), // TODO - Core Read Value
    .regf_w2_f18_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w2_f18_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w2_f20_o: bus=RO core=RW0C in_regf=False
    .regf_w2_f20_rbus_i (2'h0        ), // TODO - Bus Read Value
    // regf_w2_f22_o: bus=RO core=RW0C in_regf=True
    .regf_w2_f22_rval_o (            ), // TODO - Core Read Value
    .regf_w2_f22_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w2_f22_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w2_f24_o: bus=RO core=RW0S in_regf=False
    .regf_w2_f24_rbus_i (2'h0        ), // TODO - Bus Read Value
    // regf_w2_f26_o: bus=RO core=RW0S in_regf=True
    .regf_w2_f26_rval_o (            ), // TODO - Core Read Value
    .regf_w2_f26_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w2_f26_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w2_f28_o: bus=RO core=RW1C in_regf=False
    .regf_w2_f28_rbus_i (2'h0        ), // TODO - Bus Read Value
    // regf_w2_f30_o: bus=RO core=RW1C in_regf=True
    .regf_w2_f30_rval_o (            ), // TODO - Core Read Value
    .regf_w2_f30_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w2_f30_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w3_f0_o: bus=RO core=RW1S in_regf=False
    .regf_w3_f0_rbus_i  (2'h0        ), // TODO - Bus Read Value
    // regf_w3_f2_o: bus=RO core=RW1S in_regf=True
    .regf_w3_f2_rval_o  (            ), // TODO - Core Read Value
    .regf_w3_f2_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w3_f2_wr_i    (1'b0        ), // TODO - Core Write Strobe
    // regf_w3_f4_o: bus=RO core=RWL in_regf=False
    .regf_w3_f4_rbus_i  (2'h0        ), // TODO - Bus Read Value
    // regf_w3_f6_o: bus=RO core=RWL in_regf=True
    .regf_w3_f6_rval_o  (            ), // TODO - Core Read Value
    .regf_w3_f6_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w3_f6_wr_i    (1'b0        ), // TODO - Core Write Strobe
    // regf_w3_f8_o: bus=RC core=RO in_regf=False
    .regf_w3_f8_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w3_f8_rd_o    (            ), // TODO - Bus Read Strobe
    // regf_w3_f10_o: bus=RC core=RO in_regf=True
    .regf_w3_f10_rval_o (            ), // TODO - Core Read Value
    // regf_w3_f12_o: bus=RC core=RC in_regf=False
    .regf_w3_f12_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w3_f12_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w3_f14_o: bus=RC core=RC in_regf=True
    .regf_w3_f14_rval_o (            ), // TODO - Core Read Value
    .regf_w3_f14_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w3_f16_o: bus=RC core=RS in_regf=False
    .regf_w3_f16_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w3_f16_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w3_f18_o: bus=RC core=RS in_regf=True
    .regf_w3_f18_rval_o (            ), // TODO - Core Read Value
    .regf_w3_f18_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w3_f20_o: bus=RC core=RT in_regf=False
    .regf_w3_f20_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w3_f20_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w3_f22_o: bus=RC core=RT in_regf=True
    .regf_w3_f22_rval_o (            ), // TODO - Core Read Value
    .regf_w3_f22_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w3_f24_o: bus=RC core=RP in_regf=False
    .regf_w3_f24_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w3_f24_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w3_f26_o: bus=RC core=RP in_regf=True
    .regf_w3_f26_rval_o (            ), // TODO - Core Read Value
    // regf_w3_f28_o: bus=RC core=WO in_regf=False
    .regf_w3_f28_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w3_f28_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w3_f30_o: bus=RC core=WO in_regf=True
    .regf_w3_f30_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w3_f30_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w4_f0_o: bus=RC core=W0C in_regf=False
    .regf_w4_f0_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w4_f0_rd_o    (            ), // TODO - Bus Read Strobe
    // regf_w4_f2_o: bus=RC core=W0C in_regf=True
    .regf_w4_f2_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w4_f2_wr_i    (1'b0        ), // TODO - Core Write Strobe
    // regf_w4_f4_o: bus=RC core=W0S in_regf=False
    .regf_w4_f4_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w4_f4_rd_o    (            ), // TODO - Bus Read Strobe
    // regf_w4_f6_o: bus=RC core=W0S in_regf=True
    .regf_w4_f6_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w4_f6_wr_i    (1'b0        ), // TODO - Core Write Strobe
    // regf_w4_f8_o: bus=RC core=W1C in_regf=False
    .regf_w4_f8_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w4_f8_rd_o    (            ), // TODO - Bus Read Strobe
    // regf_w4_f10_o: bus=RC core=W1C in_regf=True
    .regf_w4_f10_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w4_f10_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w4_f12_o: bus=RC core=W1S in_regf=False
    .regf_w4_f12_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w4_f12_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w4_f14_o: bus=RC core=W1S in_regf=True
    .regf_w4_f14_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w4_f14_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w4_f16_o: bus=RC core=WL in_regf=False
    .regf_w4_f16_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w4_f16_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w4_f18_o: bus=RC core=WL in_regf=True
    .regf_w4_f18_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w4_f18_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w4_f20_o: bus=RC core=RW in_regf=False
    .regf_w4_f20_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w4_f20_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w4_f22_o: bus=RC core=RW in_regf=True
    .regf_w4_f22_rval_o (            ), // TODO - Core Read Value
    .regf_w4_f22_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w4_f22_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w4_f24_o: bus=RC core=RW0C in_regf=False
    .regf_w4_f24_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w4_f24_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w4_f26_o: bus=RC core=RW0C in_regf=True
    .regf_w4_f26_rval_o (            ), // TODO - Core Read Value
    .regf_w4_f26_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w4_f26_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w4_f28_o: bus=RC core=RW0S in_regf=False
    .regf_w4_f28_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w4_f28_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w4_f30_o: bus=RC core=RW0S in_regf=True
    .regf_w4_f30_rval_o (            ), // TODO - Core Read Value
    .regf_w4_f30_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w4_f30_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w5_f0_o: bus=RC core=RW1C in_regf=False
    .regf_w5_f0_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w5_f0_rd_o    (            ), // TODO - Bus Read Strobe
    // regf_w5_f2_o: bus=RC core=RW1C in_regf=True
    .regf_w5_f2_rval_o  (            ), // TODO - Core Read Value
    .regf_w5_f2_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w5_f2_wr_i    (1'b0        ), // TODO - Core Write Strobe
    // regf_w5_f4_o: bus=RC core=RW1S in_regf=False
    .regf_w5_f4_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w5_f4_rd_o    (            ), // TODO - Bus Read Strobe
    // regf_w5_f6_o: bus=RC core=RW1S in_regf=True
    .regf_w5_f6_rval_o  (            ), // TODO - Core Read Value
    .regf_w5_f6_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w5_f6_wr_i    (1'b0        ), // TODO - Core Write Strobe
    // regf_w5_f8_o: bus=RC core=RWL in_regf=False
    .regf_w5_f8_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w5_f8_rd_o    (            ), // TODO - Bus Read Strobe
    // regf_w5_f10_o: bus=RC core=RWL in_regf=True
    .regf_w5_f10_rval_o (            ), // TODO - Core Read Value
    .regf_w5_f10_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w5_f10_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w5_f12_o: bus=RS core=RO in_regf=False
    .regf_w5_f12_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w5_f12_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w5_f14_o: bus=RS core=RO in_regf=True
    .regf_w5_f14_rval_o (            ), // TODO - Core Read Value
    // regf_w5_f16_o: bus=RS core=RC in_regf=False
    .regf_w5_f16_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w5_f16_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w5_f18_o: bus=RS core=RC in_regf=True
    .regf_w5_f18_rval_o (            ), // TODO - Core Read Value
    .regf_w5_f18_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w5_f20_o: bus=RS core=RS in_regf=False
    .regf_w5_f20_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w5_f20_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w5_f22_o: bus=RS core=RS in_regf=True
    .regf_w5_f22_rval_o (            ), // TODO - Core Read Value
    .regf_w5_f22_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w5_f24_o: bus=RS core=RT in_regf=False
    .regf_w5_f24_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w5_f24_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w5_f26_o: bus=RS core=RT in_regf=True
    .regf_w5_f26_rval_o (            ), // TODO - Core Read Value
    .regf_w5_f26_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w5_f28_o: bus=RS core=RP in_regf=False
    .regf_w5_f28_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w5_f28_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w5_f30_o: bus=RS core=RP in_regf=True
    .regf_w5_f30_rval_o (            ), // TODO - Core Read Value
    // regf_w6_f0_o: bus=RS core=WO in_regf=False
    .regf_w6_f0_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w6_f0_rd_o    (            ), // TODO - Bus Read Strobe
    // regf_w6_f2_o: bus=RS core=WO in_regf=True
    .regf_w6_f2_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w6_f2_wr_i    (1'b0        ), // TODO - Core Write Strobe
    // regf_w6_f4_o: bus=RS core=W0C in_regf=False
    .regf_w6_f4_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w6_f4_rd_o    (            ), // TODO - Bus Read Strobe
    // regf_w6_f6_o: bus=RS core=W0C in_regf=True
    .regf_w6_f6_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w6_f6_wr_i    (1'b0        ), // TODO - Core Write Strobe
    // regf_w6_f8_o: bus=RS core=W0S in_regf=False
    .regf_w6_f8_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w6_f8_rd_o    (            ), // TODO - Bus Read Strobe
    // regf_w6_f10_o: bus=RS core=W0S in_regf=True
    .regf_w6_f10_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w6_f10_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w6_f12_o: bus=RS core=W1C in_regf=False
    .regf_w6_f12_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w6_f12_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w6_f14_o: bus=RS core=W1C in_regf=True
    .regf_w6_f14_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w6_f14_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w6_f16_o: bus=RS core=W1S in_regf=False
    .regf_w6_f16_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w6_f16_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w6_f18_o: bus=RS core=W1S in_regf=True
    .regf_w6_f18_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w6_f18_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w6_f20_o: bus=RS core=WL in_regf=False
    .regf_w6_f20_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w6_f20_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w6_f22_o: bus=RS core=WL in_regf=True
    .regf_w6_f22_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w6_f22_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w6_f24_o: bus=RS core=RW in_regf=False
    .regf_w6_f24_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w6_f24_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w6_f26_o: bus=RS core=RW in_regf=True
    .regf_w6_f26_rval_o (            ), // TODO - Core Read Value
    .regf_w6_f26_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w6_f26_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w6_f28_o: bus=RS core=RW0C in_regf=False
    .regf_w6_f28_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w6_f28_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w6_f30_o: bus=RS core=RW0C in_regf=True
    .regf_w6_f30_rval_o (            ), // TODO - Core Read Value
    .regf_w6_f30_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w6_f30_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w7_f0_o: bus=RS core=RW0S in_regf=False
    .regf_w7_f0_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w7_f0_rd_o    (            ), // TODO - Bus Read Strobe
    // regf_w7_f2_o: bus=RS core=RW0S in_regf=True
    .regf_w7_f2_rval_o  (            ), // TODO - Core Read Value
    .regf_w7_f2_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w7_f2_wr_i    (1'b0        ), // TODO - Core Write Strobe
    // regf_w7_f4_o: bus=RS core=RW1C in_regf=False
    .regf_w7_f4_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w7_f4_rd_o    (            ), // TODO - Bus Read Strobe
    // regf_w7_f6_o: bus=RS core=RW1C in_regf=True
    .regf_w7_f6_rval_o  (            ), // TODO - Core Read Value
    .regf_w7_f6_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w7_f6_wr_i    (1'b0        ), // TODO - Core Write Strobe
    // regf_w7_f8_o: bus=RS core=RW1S in_regf=False
    .regf_w7_f8_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w7_f8_rd_o    (            ), // TODO - Bus Read Strobe
    // regf_w7_f10_o: bus=RS core=RW1S in_regf=True
    .regf_w7_f10_rval_o (            ), // TODO - Core Read Value
    .regf_w7_f10_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w7_f10_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w7_f12_o: bus=RS core=RWL in_regf=False
    .regf_w7_f12_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w7_f12_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w7_f14_o: bus=RS core=RWL in_regf=True
    .regf_w7_f14_rval_o (            ), // TODO - Core Read Value
    .regf_w7_f14_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w7_f14_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w7_f16_o: bus=RT core=RO in_regf=False
    .regf_w7_f16_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w7_f16_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w7_f18_o: bus=RT core=RO in_regf=True
    .regf_w7_f18_rval_o (            ), // TODO - Core Read Value
    // regf_w7_f20_o: bus=RT core=RC in_regf=False
    .regf_w7_f20_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w7_f20_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w7_f22_o: bus=RT core=RC in_regf=True
    .regf_w7_f22_rval_o (            ), // TODO - Core Read Value
    .regf_w7_f22_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w7_f24_o: bus=RT core=RS in_regf=False
    .regf_w7_f24_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w7_f24_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w7_f26_o: bus=RT core=RS in_regf=True
    .regf_w7_f26_rval_o (            ), // TODO - Core Read Value
    .regf_w7_f26_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w7_f28_o: bus=RT core=RT in_regf=False
    .regf_w7_f28_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w7_f28_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w7_f30_o: bus=RT core=RT in_regf=True
    .regf_w7_f30_rval_o (            ), // TODO - Core Read Value
    .regf_w7_f30_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w8_f0_o: bus=RT core=RP in_regf=False
    .regf_w8_f0_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w8_f0_rd_o    (            ), // TODO - Bus Read Strobe
    // regf_w8_f2_o: bus=RT core=RP in_regf=True
    .regf_w8_f2_rval_o  (            ), // TODO - Core Read Value
    // regf_w8_f4_o: bus=RT core=WO in_regf=False
    .regf_w8_f4_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w8_f4_rd_o    (            ), // TODO - Bus Read Strobe
    // regf_w8_f6_o: bus=RT core=WO in_regf=True
    .regf_w8_f6_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w8_f6_wr_i    (1'b0        ), // TODO - Core Write Strobe
    // regf_w8_f8_o: bus=RT core=W0C in_regf=False
    .regf_w8_f8_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w8_f8_rd_o    (            ), // TODO - Bus Read Strobe
    // regf_w8_f10_o: bus=RT core=W0C in_regf=True
    .regf_w8_f10_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w8_f10_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w8_f12_o: bus=RT core=W0S in_regf=False
    .regf_w8_f12_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w8_f12_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w8_f14_o: bus=RT core=W0S in_regf=True
    .regf_w8_f14_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w8_f14_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w8_f16_o: bus=RT core=W1C in_regf=False
    .regf_w8_f16_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w8_f16_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w8_f18_o: bus=RT core=W1C in_regf=True
    .regf_w8_f18_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w8_f18_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w8_f20_o: bus=RT core=W1S in_regf=False
    .regf_w8_f20_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w8_f20_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w8_f22_o: bus=RT core=W1S in_regf=True
    .regf_w8_f22_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w8_f22_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w8_f24_o: bus=RT core=WL in_regf=False
    .regf_w8_f24_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w8_f24_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w8_f26_o: bus=RT core=WL in_regf=True
    .regf_w8_f26_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w8_f26_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w8_f28_o: bus=RT core=RW in_regf=False
    .regf_w8_f28_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w8_f28_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w8_f30_o: bus=RT core=RW in_regf=True
    .regf_w8_f30_rval_o (            ), // TODO - Core Read Value
    .regf_w8_f30_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w8_f30_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w9_f0_o: bus=RT core=RW0C in_regf=False
    .regf_w9_f0_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w9_f0_rd_o    (            ), // TODO - Bus Read Strobe
    // regf_w9_f2_o: bus=RT core=RW0C in_regf=True
    .regf_w9_f2_rval_o  (            ), // TODO - Core Read Value
    .regf_w9_f2_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w9_f2_wr_i    (1'b0        ), // TODO - Core Write Strobe
    // regf_w9_f4_o: bus=RT core=RW0S in_regf=False
    .regf_w9_f4_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w9_f4_rd_o    (            ), // TODO - Bus Read Strobe
    // regf_w9_f6_o: bus=RT core=RW0S in_regf=True
    .regf_w9_f6_rval_o  (            ), // TODO - Core Read Value
    .regf_w9_f6_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w9_f6_wr_i    (1'b0        ), // TODO - Core Write Strobe
    // regf_w9_f8_o: bus=RT core=RW1C in_regf=False
    .regf_w9_f8_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w9_f8_rd_o    (            ), // TODO - Bus Read Strobe
    // regf_w9_f10_o: bus=RT core=RW1C in_regf=True
    .regf_w9_f10_rval_o (            ), // TODO - Core Read Value
    .regf_w9_f10_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w9_f10_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w9_f12_o: bus=RT core=RW1S in_regf=False
    .regf_w9_f12_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w9_f12_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w9_f14_o: bus=RT core=RW1S in_regf=True
    .regf_w9_f14_rval_o (            ), // TODO - Core Read Value
    .regf_w9_f14_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w9_f14_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w9_f16_o: bus=RT core=RWL in_regf=False
    .regf_w9_f16_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w9_f16_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w9_f18_o: bus=RT core=RWL in_regf=True
    .regf_w9_f18_rval_o (            ), // TODO - Core Read Value
    .regf_w9_f18_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w9_f18_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w9_f20_o: bus=RP core=RO in_regf=True
    .regf_w9_f20_rval_o (            ), // TODO - Core Read Value
    // regf_w9_f22_o: bus=RP core=RC in_regf=False
    .regf_w9_f22_rbus_i (2'h0        ), // TODO - Bus Read Value
    // regf_w9_f24_o: bus=RP core=RC in_regf=True
    .regf_w9_f24_rval_o (            ), // TODO - Core Read Value
    .regf_w9_f24_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w9_f26_o: bus=RP core=RS in_regf=False
    .regf_w9_f26_rbus_i (2'h0        ), // TODO - Bus Read Value
    // regf_w9_f28_o: bus=RP core=RS in_regf=True
    .regf_w9_f28_rval_o (            ), // TODO - Core Read Value
    .regf_w9_f28_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w9_f30_o: bus=RP core=RT in_regf=False
    .regf_w9_f30_rbus_i (2'h0        ), // TODO - Bus Read Value
    // regf_w10_f0_o: bus=RP core=RT in_regf=True
    .regf_w10_f0_rval_o (            ), // TODO - Core Read Value
    .regf_w10_f0_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w10_f2_o: bus=RP core=RP in_regf=True
    .regf_w10_f2_rval_o (            ), // TODO - Core Read Value
    // regf_w10_f4_o: bus=RP core=WO in_regf=False
    .regf_w10_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    // regf_w10_f6_o: bus=RP core=WO in_regf=True
    .regf_w10_f6_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w10_f6_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w10_f8_o: bus=RP core=W0C in_regf=False
    .regf_w10_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    // regf_w10_f10_o: bus=RP core=W0C in_regf=True
    .regf_w10_f10_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w10_f10_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w10_f12_o: bus=RP core=W0S in_regf=False
    .regf_w10_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    // regf_w10_f14_o: bus=RP core=W0S in_regf=True
    .regf_w10_f14_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w10_f14_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w10_f16_o: bus=RP core=W1C in_regf=False
    .regf_w10_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    // regf_w10_f18_o: bus=RP core=W1C in_regf=True
    .regf_w10_f18_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w10_f18_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w10_f20_o: bus=RP core=W1S in_regf=False
    .regf_w10_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    // regf_w10_f22_o: bus=RP core=W1S in_regf=True
    .regf_w10_f22_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w10_f22_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w10_f24_o: bus=RP core=WL in_regf=False
    .regf_w10_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    // regf_w10_f26_o: bus=RP core=WL in_regf=True
    .regf_w10_f26_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w10_f26_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w10_f28_o: bus=RP core=RW in_regf=False
    .regf_w10_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    // regf_w10_f30_o: bus=RP core=RW in_regf=True
    .regf_w10_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w10_f30_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w10_f30_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w11_f0_o: bus=RP core=RW0C in_regf=False
    .regf_w11_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    // regf_w11_f2_o: bus=RP core=RW0C in_regf=True
    .regf_w11_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w11_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w11_f2_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w11_f4_o: bus=RP core=RW0S in_regf=False
    .regf_w11_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    // regf_w11_f6_o: bus=RP core=RW0S in_regf=True
    .regf_w11_f6_rval_o (            ), // TODO - Core Read Value
    .regf_w11_f6_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w11_f6_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w11_f8_o: bus=RP core=RW1C in_regf=False
    .regf_w11_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    // regf_w11_f10_o: bus=RP core=RW1C in_regf=True
    .regf_w11_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w11_f10_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w11_f10_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w11_f12_o: bus=RP core=RW1S in_regf=False
    .regf_w11_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    // regf_w11_f14_o: bus=RP core=RW1S in_regf=True
    .regf_w11_f14_rval_o(            ), // TODO - Core Read Value
    .regf_w11_f14_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w11_f14_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w11_f16_o: bus=RP core=RWL in_regf=False
    .regf_w11_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    // regf_w11_f18_o: bus=RP core=RWL in_regf=True
    .regf_w11_f18_rval_o(            ), // TODO - Core Read Value
    .regf_w11_f18_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w11_f18_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w11_f20_o: bus=WO core=RO in_regf=False
    .regf_w11_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w11_f20_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w11_f22_o: bus=WO core=RO in_regf=True
    .regf_w11_f22_rval_o(            ), // TODO - Core Read Value
    // regf_w11_f24_o: bus=WO core=RC in_regf=False
    .regf_w11_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w11_f24_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w11_f26_o: bus=WO core=RC in_regf=True
    .regf_w11_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w11_f26_rd_i  (1'b0        ), // TODO - Core Read Strobe
    // regf_w11_f28_o: bus=WO core=RS in_regf=False
    .regf_w11_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w11_f28_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w11_f30_o: bus=WO core=RS in_regf=True
    .regf_w11_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w11_f30_rd_i  (1'b0        ), // TODO - Core Read Strobe
    // regf_w12_f0_o: bus=WO core=RT in_regf=False
    .regf_w12_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w12_f0_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w12_f2_o: bus=WO core=RT in_regf=True
    .regf_w12_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w12_f2_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w12_f4_o: bus=WO core=RP in_regf=False
    .regf_w12_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w12_f4_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w12_f6_o: bus=WO core=RP in_regf=True
    .regf_w12_f6_rval_o (            ), // TODO - Core Read Value
    // regf_w12_f8_o: bus=WO core=RW in_regf=False
    .regf_w12_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w12_f8_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w12_f10_o: bus=WO core=RW in_regf=True
    .regf_w12_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w12_f10_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w12_f10_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w12_f12_o: bus=WO core=RW0C in_regf=False
    .regf_w12_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w12_f12_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w12_f14_o: bus=WO core=RW0C in_regf=True
    .regf_w12_f14_rval_o(            ), // TODO - Core Read Value
    .regf_w12_f14_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w12_f14_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w12_f16_o: bus=WO core=RW0S in_regf=False
    .regf_w12_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w12_f16_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w12_f18_o: bus=WO core=RW0S in_regf=True
    .regf_w12_f18_rval_o(            ), // TODO - Core Read Value
    .regf_w12_f18_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w12_f18_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w12_f20_o: bus=WO core=RW1C in_regf=False
    .regf_w12_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w12_f20_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w12_f22_o: bus=WO core=RW1C in_regf=True
    .regf_w12_f22_rval_o(            ), // TODO - Core Read Value
    .regf_w12_f22_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w12_f22_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w12_f24_o: bus=WO core=RW1S in_regf=False
    .regf_w12_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w12_f24_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w12_f26_o: bus=WO core=RW1S in_regf=True
    .regf_w12_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w12_f26_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w12_f26_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w12_f28_o: bus=WO core=RWL in_regf=False
    .regf_w12_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w12_f28_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w12_f30_o: bus=WO core=RWL in_regf=True
    .regf_w12_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w12_f30_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w12_f30_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w13_f0_o: bus=W0C core=RO in_regf=False
    .regf_w13_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w13_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w13_f0_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w13_f2_o: bus=W0C core=RO in_regf=True
    .regf_w13_f2_rval_o (            ), // TODO - Core Read Value
    // regf_w13_f4_o: bus=W0C core=RC in_regf=False
    .regf_w13_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w13_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w13_f4_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w13_f6_o: bus=W0C core=RC in_regf=True
    .regf_w13_f6_rval_o (            ), // TODO - Core Read Value
    .regf_w13_f6_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w13_f8_o: bus=W0C core=RS in_regf=False
    .regf_w13_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w13_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w13_f8_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w13_f10_o: bus=W0C core=RS in_regf=True
    .regf_w13_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w13_f10_rd_i  (1'b0        ), // TODO - Core Read Strobe
    // regf_w13_f12_o: bus=W0C core=RT in_regf=False
    .regf_w13_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w13_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w13_f12_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w13_f14_o: bus=W0C core=RT in_regf=True
    .regf_w13_f14_rval_o(            ), // TODO - Core Read Value
    .regf_w13_f14_rd_i  (1'b0        ), // TODO - Core Read Strobe
    // regf_w13_f16_o: bus=W0C core=RP in_regf=False
    .regf_w13_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w13_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w13_f16_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w13_f18_o: bus=W0C core=RP in_regf=True
    .regf_w13_f18_rval_o(            ), // TODO - Core Read Value
    // regf_w13_f20_o: bus=W0C core=RW in_regf=False
    .regf_w13_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w13_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w13_f20_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w13_f22_o: bus=W0C core=RW in_regf=True
    .regf_w13_f22_rval_o(            ), // TODO - Core Read Value
    .regf_w13_f22_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w13_f22_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w13_f24_o: bus=W0C core=RW0C in_regf=False
    .regf_w13_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w13_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w13_f24_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w13_f26_o: bus=W0C core=RW0C in_regf=True
    .regf_w13_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w13_f26_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w13_f26_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w13_f28_o: bus=W0C core=RW0S in_regf=False
    .regf_w13_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w13_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w13_f28_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w13_f30_o: bus=W0C core=RW0S in_regf=True
    .regf_w13_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w13_f30_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w13_f30_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w14_f0_o: bus=W0C core=RW1C in_regf=False
    .regf_w14_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w14_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w14_f0_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w14_f2_o: bus=W0C core=RW1C in_regf=True
    .regf_w14_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w14_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w14_f2_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w14_f4_o: bus=W0C core=RW1S in_regf=False
    .regf_w14_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w14_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w14_f4_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w14_f6_o: bus=W0C core=RW1S in_regf=True
    .regf_w14_f6_rval_o (            ), // TODO - Core Read Value
    .regf_w14_f6_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w14_f6_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w14_f8_o: bus=W0C core=RWL in_regf=False
    .regf_w14_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w14_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w14_f8_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w14_f10_o: bus=W0C core=RWL in_regf=True
    .regf_w14_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w14_f10_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w14_f10_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w14_f12_o: bus=W0S core=RO in_regf=False
    .regf_w14_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w14_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w14_f12_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w14_f14_o: bus=W0S core=RO in_regf=True
    .regf_w14_f14_rval_o(            ), // TODO - Core Read Value
    // regf_w14_f16_o: bus=W0S core=RC in_regf=False
    .regf_w14_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w14_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w14_f16_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w14_f18_o: bus=W0S core=RC in_regf=True
    .regf_w14_f18_rval_o(            ), // TODO - Core Read Value
    .regf_w14_f18_rd_i  (1'b0        ), // TODO - Core Read Strobe
    // regf_w14_f20_o: bus=W0S core=RS in_regf=False
    .regf_w14_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w14_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w14_f20_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w14_f22_o: bus=W0S core=RS in_regf=True
    .regf_w14_f22_rval_o(            ), // TODO - Core Read Value
    .regf_w14_f22_rd_i  (1'b0        ), // TODO - Core Read Strobe
    // regf_w14_f24_o: bus=W0S core=RT in_regf=False
    .regf_w14_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w14_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w14_f24_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w14_f26_o: bus=W0S core=RT in_regf=True
    .regf_w14_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w14_f26_rd_i  (1'b0        ), // TODO - Core Read Strobe
    // regf_w14_f28_o: bus=W0S core=RP in_regf=False
    .regf_w14_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w14_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w14_f28_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w14_f30_o: bus=W0S core=RP in_regf=True
    .regf_w14_f30_rval_o(            ), // TODO - Core Read Value
    // regf_w15_f0_o: bus=W0S core=RW in_regf=False
    .regf_w15_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w15_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w15_f0_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w15_f2_o: bus=W0S core=RW in_regf=True
    .regf_w15_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w15_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w15_f2_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w15_f4_o: bus=W0S core=RW0C in_regf=False
    .regf_w15_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w15_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w15_f4_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w15_f6_o: bus=W0S core=RW0C in_regf=True
    .regf_w15_f6_rval_o (            ), // TODO - Core Read Value
    .regf_w15_f6_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w15_f6_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w15_f8_o: bus=W0S core=RW0S in_regf=False
    .regf_w15_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w15_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w15_f8_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w15_f10_o: bus=W0S core=RW0S in_regf=True
    .regf_w15_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w15_f10_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w15_f10_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w15_f12_o: bus=W0S core=RW1C in_regf=False
    .regf_w15_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w15_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w15_f12_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w15_f14_o: bus=W0S core=RW1C in_regf=True
    .regf_w15_f14_rval_o(            ), // TODO - Core Read Value
    .regf_w15_f14_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w15_f14_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w15_f16_o: bus=W0S core=RW1S in_regf=False
    .regf_w15_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w15_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w15_f16_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w15_f18_o: bus=W0S core=RW1S in_regf=True
    .regf_w15_f18_rval_o(            ), // TODO - Core Read Value
    .regf_w15_f18_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w15_f18_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w15_f20_o: bus=W0S core=RWL in_regf=False
    .regf_w15_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w15_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w15_f20_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w15_f22_o: bus=W0S core=RWL in_regf=True
    .regf_w15_f22_rval_o(            ), // TODO - Core Read Value
    .regf_w15_f22_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w15_f22_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w15_f24_o: bus=W1C core=RO in_regf=False
    .regf_w15_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w15_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w15_f24_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w15_f26_o: bus=W1C core=RO in_regf=True
    .regf_w15_f26_rval_o(            ), // TODO - Core Read Value
    // regf_w15_f28_o: bus=W1C core=RC in_regf=False
    .regf_w15_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w15_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w15_f28_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w15_f30_o: bus=W1C core=RC in_regf=True
    .regf_w15_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w15_f30_rd_i  (1'b0        ), // TODO - Core Read Strobe
    // regf_w16_f0_o: bus=W1C core=RS in_regf=False
    .regf_w16_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w16_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w16_f0_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w16_f2_o: bus=W1C core=RS in_regf=True
    .regf_w16_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w16_f2_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w16_f4_o: bus=W1C core=RT in_regf=False
    .regf_w16_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w16_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w16_f4_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w16_f6_o: bus=W1C core=RT in_regf=True
    .regf_w16_f6_rval_o (            ), // TODO - Core Read Value
    .regf_w16_f6_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w16_f8_o: bus=W1C core=RP in_regf=False
    .regf_w16_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w16_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w16_f8_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w16_f10_o: bus=W1C core=RP in_regf=True
    .regf_w16_f10_rval_o(            ), // TODO - Core Read Value
    // regf_w16_f12_o: bus=W1C core=RW in_regf=False
    .regf_w16_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w16_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w16_f12_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w16_f14_o: bus=W1C core=RW in_regf=True
    .regf_w16_f14_rval_o(            ), // TODO - Core Read Value
    .regf_w16_f14_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w16_f14_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w16_f16_o: bus=W1C core=RW0C in_regf=False
    .regf_w16_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w16_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w16_f16_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w16_f18_o: bus=W1C core=RW0C in_regf=True
    .regf_w16_f18_rval_o(            ), // TODO - Core Read Value
    .regf_w16_f18_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w16_f18_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w16_f20_o: bus=W1C core=RW0S in_regf=False
    .regf_w16_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w16_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w16_f20_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w16_f22_o: bus=W1C core=RW0S in_regf=True
    .regf_w16_f22_rval_o(            ), // TODO - Core Read Value
    .regf_w16_f22_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w16_f22_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w16_f24_o: bus=W1C core=RW1C in_regf=False
    .regf_w16_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w16_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w16_f24_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w16_f26_o: bus=W1C core=RW1C in_regf=True
    .regf_w16_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w16_f26_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w16_f26_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w16_f28_o: bus=W1C core=RW1S in_regf=False
    .regf_w16_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w16_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w16_f28_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w16_f30_o: bus=W1C core=RW1S in_regf=True
    .regf_w16_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w16_f30_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w16_f30_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w17_f0_o: bus=W1C core=RWL in_regf=False
    .regf_w17_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w17_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w17_f0_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w17_f2_o: bus=W1C core=RWL in_regf=True
    .regf_w17_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w17_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w17_f2_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w17_f4_o: bus=W1S core=RO in_regf=False
    .regf_w17_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w17_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w17_f4_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w17_f6_o: bus=W1S core=RO in_regf=True
    .regf_w17_f6_rval_o (            ), // TODO - Core Read Value
    // regf_w17_f8_o: bus=W1S core=RC in_regf=False
    .regf_w17_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w17_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w17_f8_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w17_f10_o: bus=W1S core=RC in_regf=True
    .regf_w17_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w17_f10_rd_i  (1'b0        ), // TODO - Core Read Strobe
    // regf_w17_f12_o: bus=W1S core=RS in_regf=False
    .regf_w17_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w17_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w17_f12_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w17_f14_o: bus=W1S core=RS in_regf=True
    .regf_w17_f14_rval_o(            ), // TODO - Core Read Value
    .regf_w17_f14_rd_i  (1'b0        ), // TODO - Core Read Strobe
    // regf_w17_f16_o: bus=W1S core=RT in_regf=False
    .regf_w17_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w17_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w17_f16_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w17_f18_o: bus=W1S core=RT in_regf=True
    .regf_w17_f18_rval_o(            ), // TODO - Core Read Value
    .regf_w17_f18_rd_i  (1'b0        ), // TODO - Core Read Strobe
    // regf_w17_f20_o: bus=W1S core=RP in_regf=False
    .regf_w17_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w17_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w17_f20_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w17_f22_o: bus=W1S core=RP in_regf=True
    .regf_w17_f22_rval_o(            ), // TODO - Core Read Value
    // regf_w17_f24_o: bus=W1S core=RW in_regf=False
    .regf_w17_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w17_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w17_f24_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w17_f26_o: bus=W1S core=RW in_regf=True
    .regf_w17_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w17_f26_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w17_f26_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w17_f28_o: bus=W1S core=RW0C in_regf=False
    .regf_w17_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w17_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w17_f28_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w17_f30_o: bus=W1S core=RW0C in_regf=True
    .regf_w17_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w17_f30_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w17_f30_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w18_f0_o: bus=W1S core=RW0S in_regf=False
    .regf_w18_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w18_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w18_f0_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w18_f2_o: bus=W1S core=RW0S in_regf=True
    .regf_w18_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w18_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w18_f2_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w18_f4_o: bus=W1S core=RW1C in_regf=False
    .regf_w18_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w18_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w18_f4_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w18_f6_o: bus=W1S core=RW1C in_regf=True
    .regf_w18_f6_rval_o (            ), // TODO - Core Read Value
    .regf_w18_f6_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w18_f6_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w18_f8_o: bus=W1S core=RW1S in_regf=False
    .regf_w18_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w18_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w18_f8_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w18_f10_o: bus=W1S core=RW1S in_regf=True
    .regf_w18_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w18_f10_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w18_f10_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w18_f12_o: bus=W1S core=RWL in_regf=False
    .regf_w18_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w18_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w18_f12_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w18_f14_o: bus=W1S core=RWL in_regf=True
    .regf_w18_f14_rval_o(            ), // TODO - Core Read Value
    .regf_w18_f14_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w18_f14_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w18_f16_o: bus=WL core=RO in_regf=False
    .regf_w18_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w18_f16_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w18_f18_o: bus=WL core=RO in_regf=True
    .regf_w18_f18_rval_o(            ), // TODO - Core Read Value
    // regf_w18_f20_o: bus=WL core=RC in_regf=False
    .regf_w18_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w18_f20_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w18_f22_o: bus=WL core=RC in_regf=True
    .regf_w18_f22_rval_o(            ), // TODO - Core Read Value
    .regf_w18_f22_rd_i  (1'b0        ), // TODO - Core Read Strobe
    // regf_w18_f24_o: bus=WL core=RS in_regf=False
    .regf_w18_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w18_f24_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w18_f26_o: bus=WL core=RS in_regf=True
    .regf_w18_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w18_f26_rd_i  (1'b0        ), // TODO - Core Read Strobe
    // regf_w18_f28_o: bus=WL core=RT in_regf=False
    .regf_w18_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w18_f28_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w18_f30_o: bus=WL core=RT in_regf=True
    .regf_w18_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w18_f30_rd_i  (1'b0        ), // TODO - Core Read Strobe
    // regf_w19_f0_o: bus=WL core=RP in_regf=False
    .regf_w19_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w19_f0_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w19_f2_o: bus=WL core=RP in_regf=True
    .regf_w19_f2_rval_o (            ), // TODO - Core Read Value
    // regf_w19_f4_o: bus=WL core=RW in_regf=False
    .regf_w19_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w19_f4_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w19_f6_o: bus=WL core=RW in_regf=True
    .regf_w19_f6_rval_o (            ), // TODO - Core Read Value
    .regf_w19_f6_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w19_f6_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w19_f8_o: bus=WL core=RW0C in_regf=False
    .regf_w19_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w19_f8_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w19_f10_o: bus=WL core=RW0C in_regf=True
    .regf_w19_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w19_f10_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w19_f10_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w19_f12_o: bus=WL core=RW0S in_regf=False
    .regf_w19_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w19_f12_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w19_f14_o: bus=WL core=RW0S in_regf=True
    .regf_w19_f14_rval_o(            ), // TODO - Core Read Value
    .regf_w19_f14_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w19_f14_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w19_f16_o: bus=WL core=RW1C in_regf=False
    .regf_w19_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w19_f16_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w19_f18_o: bus=WL core=RW1C in_regf=True
    .regf_w19_f18_rval_o(            ), // TODO - Core Read Value
    .regf_w19_f18_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w19_f18_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w19_f20_o: bus=WL core=RW1S in_regf=False
    .regf_w19_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w19_f20_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w19_f22_o: bus=WL core=RW1S in_regf=True
    .regf_w19_f22_rval_o(            ), // TODO - Core Read Value
    .regf_w19_f22_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w19_f22_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w19_f24_o: bus=WL core=RWL in_regf=False
    .regf_w19_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w19_f24_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w19_f26_o: bus=WL core=RWL in_regf=True
    .regf_w19_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w19_f26_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w19_f26_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w19_f28_o: bus=RW core=RO in_regf=False
    .regf_w19_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w19_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w19_f28_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w19_f30_o: bus=RW core=RO in_regf=True
    .regf_w19_f30_rval_o(            ), // TODO - Core Read Value
    // regf_w20_f0_o: bus=RW core=RC in_regf=False
    .regf_w20_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w20_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w20_f0_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w20_f2_o: bus=RW core=RC in_regf=True
    .regf_w20_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w20_f2_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w20_f4_o: bus=RW core=RS in_regf=False
    .regf_w20_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w20_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w20_f4_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w20_f6_o: bus=RW core=RS in_regf=True
    .regf_w20_f6_rval_o (            ), // TODO - Core Read Value
    .regf_w20_f6_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w20_f8_o: bus=RW core=RT in_regf=False
    .regf_w20_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w20_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w20_f8_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w20_f10_o: bus=RW core=RT in_regf=True
    .regf_w20_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w20_f10_rd_i  (1'b0        ), // TODO - Core Read Strobe
    // regf_w20_f12_o: bus=RW core=RP in_regf=False
    .regf_w20_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w20_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w20_f12_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w20_f14_o: bus=RW core=RP in_regf=True
    .regf_w20_f14_rval_o(            ), // TODO - Core Read Value
    // regf_w20_f16_o: bus=RW core=WO in_regf=False
    .regf_w20_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w20_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w20_f16_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w20_f18_o: bus=RW core=WO in_regf=True
    .regf_w20_f18_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w20_f18_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w20_f20_o: bus=RW core=W0C in_regf=False
    .regf_w20_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w20_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w20_f20_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w20_f22_o: bus=RW core=W0C in_regf=True
    .regf_w20_f22_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w20_f22_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w20_f24_o: bus=RW core=W0S in_regf=False
    .regf_w20_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w20_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w20_f24_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w20_f26_o: bus=RW core=W0S in_regf=True
    .regf_w20_f26_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w20_f26_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w20_f28_o: bus=RW core=W1C in_regf=False
    .regf_w20_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w20_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w20_f28_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w20_f30_o: bus=RW core=W1C in_regf=True
    .regf_w20_f30_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w20_f30_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w21_f0_o: bus=RW core=W1S in_regf=False
    .regf_w21_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w21_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w21_f0_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w21_f2_o: bus=RW core=W1S in_regf=True
    .regf_w21_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w21_f2_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w21_f4_o: bus=RW core=WL in_regf=False
    .regf_w21_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w21_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w21_f4_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w21_f6_o: bus=RW core=WL in_regf=True
    .regf_w21_f6_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w21_f6_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w21_f8_o: bus=RW core=RW in_regf=False
    .regf_w21_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w21_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w21_f8_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w21_f10_o: bus=RW core=RW in_regf=True
    .regf_w21_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w21_f10_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w21_f10_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w21_f12_o: bus=RW core=RW0C in_regf=False
    .regf_w21_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w21_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w21_f12_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w21_f14_o: bus=RW core=RW0C in_regf=True
    .regf_w21_f14_rval_o(            ), // TODO - Core Read Value
    .regf_w21_f14_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w21_f14_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w21_f16_o: bus=RW core=RW0S in_regf=False
    .regf_w21_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w21_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w21_f16_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w21_f18_o: bus=RW core=RW0S in_regf=True
    .regf_w21_f18_rval_o(            ), // TODO - Core Read Value
    .regf_w21_f18_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w21_f18_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w21_f20_o: bus=RW core=RW1C in_regf=False
    .regf_w21_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w21_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w21_f20_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w21_f22_o: bus=RW core=RW1C in_regf=True
    .regf_w21_f22_rval_o(            ), // TODO - Core Read Value
    .regf_w21_f22_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w21_f22_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w21_f24_o: bus=RW core=RW1S in_regf=False
    .regf_w21_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w21_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w21_f24_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w21_f26_o: bus=RW core=RW1S in_regf=True
    .regf_w21_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w21_f26_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w21_f26_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w21_f28_o: bus=RW core=RWL in_regf=False
    .regf_w21_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w21_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w21_f28_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w21_f30_o: bus=RW core=RWL in_regf=True
    .regf_w21_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w21_f30_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w21_f30_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w22_f0_o: bus=RW0C core=RO in_regf=False
    .regf_w22_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w22_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w22_f0_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w22_f2_o: bus=RW0C core=RO in_regf=True
    .regf_w22_f2_rval_o (            ), // TODO - Core Read Value
    // regf_w22_f4_o: bus=RW0C core=RC in_regf=False
    .regf_w22_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w22_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w22_f4_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w22_f6_o: bus=RW0C core=RC in_regf=True
    .regf_w22_f6_rval_o (            ), // TODO - Core Read Value
    .regf_w22_f6_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w22_f8_o: bus=RW0C core=RS in_regf=False
    .regf_w22_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w22_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w22_f8_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w22_f10_o: bus=RW0C core=RS in_regf=True
    .regf_w22_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w22_f10_rd_i  (1'b0        ), // TODO - Core Read Strobe
    // regf_w22_f12_o: bus=RW0C core=RT in_regf=False
    .regf_w22_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w22_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w22_f12_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w22_f14_o: bus=RW0C core=RT in_regf=True
    .regf_w22_f14_rval_o(            ), // TODO - Core Read Value
    .regf_w22_f14_rd_i  (1'b0        ), // TODO - Core Read Strobe
    // regf_w22_f16_o: bus=RW0C core=RP in_regf=False
    .regf_w22_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w22_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w22_f16_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w22_f18_o: bus=RW0C core=RP in_regf=True
    .regf_w22_f18_rval_o(            ), // TODO - Core Read Value
    // regf_w22_f20_o: bus=RW0C core=WO in_regf=False
    .regf_w22_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w22_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w22_f20_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w22_f22_o: bus=RW0C core=WO in_regf=True
    .regf_w22_f22_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w22_f22_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w22_f24_o: bus=RW0C core=W0C in_regf=False
    .regf_w22_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w22_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w22_f24_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w22_f26_o: bus=RW0C core=W0C in_regf=True
    .regf_w22_f26_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w22_f26_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w22_f28_o: bus=RW0C core=W0S in_regf=False
    .regf_w22_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w22_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w22_f28_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w22_f30_o: bus=RW0C core=W0S in_regf=True
    .regf_w22_f30_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w22_f30_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w23_f0_o: bus=RW0C core=W1C in_regf=False
    .regf_w23_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w23_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w23_f0_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w23_f2_o: bus=RW0C core=W1C in_regf=True
    .regf_w23_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w23_f2_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w23_f4_o: bus=RW0C core=W1S in_regf=False
    .regf_w23_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w23_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w23_f4_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w23_f6_o: bus=RW0C core=W1S in_regf=True
    .regf_w23_f6_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w23_f6_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w23_f8_o: bus=RW0C core=WL in_regf=False
    .regf_w23_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w23_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w23_f8_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w23_f10_o: bus=RW0C core=WL in_regf=True
    .regf_w23_f10_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w23_f10_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w23_f12_o: bus=RW0C core=RW in_regf=False
    .regf_w23_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w23_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w23_f12_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w23_f14_o: bus=RW0C core=RW in_regf=True
    .regf_w23_f14_rval_o(            ), // TODO - Core Read Value
    .regf_w23_f14_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w23_f14_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w23_f16_o: bus=RW0C core=RW0C in_regf=False
    .regf_w23_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w23_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w23_f16_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w23_f18_o: bus=RW0C core=RW0C in_regf=True
    .regf_w23_f18_rval_o(            ), // TODO - Core Read Value
    .regf_w23_f18_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w23_f18_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w23_f20_o: bus=RW0C core=RW0S in_regf=False
    .regf_w23_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w23_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w23_f20_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w23_f22_o: bus=RW0C core=RW0S in_regf=True
    .regf_w23_f22_rval_o(            ), // TODO - Core Read Value
    .regf_w23_f22_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w23_f22_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w23_f24_o: bus=RW0C core=RW1C in_regf=False
    .regf_w23_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w23_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w23_f24_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w23_f26_o: bus=RW0C core=RW1C in_regf=True
    .regf_w23_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w23_f26_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w23_f26_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w23_f28_o: bus=RW0C core=RW1S in_regf=False
    .regf_w23_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w23_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w23_f28_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w23_f30_o: bus=RW0C core=RW1S in_regf=True
    .regf_w23_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w23_f30_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w23_f30_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w24_f0_o: bus=RW0C core=RWL in_regf=False
    .regf_w24_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w24_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w24_f0_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w24_f2_o: bus=RW0C core=RWL in_regf=True
    .regf_w24_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w24_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w24_f2_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w24_f4_o: bus=RW0S core=RO in_regf=False
    .regf_w24_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w24_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w24_f4_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w24_f6_o: bus=RW0S core=RO in_regf=True
    .regf_w24_f6_rval_o (            ), // TODO - Core Read Value
    // regf_w24_f8_o: bus=RW0S core=RC in_regf=False
    .regf_w24_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w24_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w24_f8_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w24_f10_o: bus=RW0S core=RC in_regf=True
    .regf_w24_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w24_f10_rd_i  (1'b0        ), // TODO - Core Read Strobe
    // regf_w24_f12_o: bus=RW0S core=RS in_regf=False
    .regf_w24_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w24_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w24_f12_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w24_f14_o: bus=RW0S core=RS in_regf=True
    .regf_w24_f14_rval_o(            ), // TODO - Core Read Value
    .regf_w24_f14_rd_i  (1'b0        ), // TODO - Core Read Strobe
    // regf_w24_f16_o: bus=RW0S core=RT in_regf=False
    .regf_w24_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w24_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w24_f16_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w24_f18_o: bus=RW0S core=RT in_regf=True
    .regf_w24_f18_rval_o(            ), // TODO - Core Read Value
    .regf_w24_f18_rd_i  (1'b0        ), // TODO - Core Read Strobe
    // regf_w24_f20_o: bus=RW0S core=RP in_regf=False
    .regf_w24_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w24_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w24_f20_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w24_f22_o: bus=RW0S core=RP in_regf=True
    .regf_w24_f22_rval_o(            ), // TODO - Core Read Value
    // regf_w24_f24_o: bus=RW0S core=WO in_regf=False
    .regf_w24_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w24_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w24_f24_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w24_f26_o: bus=RW0S core=WO in_regf=True
    .regf_w24_f26_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w24_f26_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w24_f28_o: bus=RW0S core=W0C in_regf=False
    .regf_w24_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w24_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w24_f28_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w24_f30_o: bus=RW0S core=W0C in_regf=True
    .regf_w24_f30_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w24_f30_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w25_f0_o: bus=RW0S core=W0S in_regf=False
    .regf_w25_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w25_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w25_f0_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w25_f2_o: bus=RW0S core=W0S in_regf=True
    .regf_w25_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w25_f2_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w25_f4_o: bus=RW0S core=W1C in_regf=False
    .regf_w25_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w25_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w25_f4_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w25_f6_o: bus=RW0S core=W1C in_regf=True
    .regf_w25_f6_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w25_f6_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w25_f8_o: bus=RW0S core=W1S in_regf=False
    .regf_w25_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w25_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w25_f8_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w25_f10_o: bus=RW0S core=W1S in_regf=True
    .regf_w25_f10_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w25_f10_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w25_f12_o: bus=RW0S core=WL in_regf=False
    .regf_w25_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w25_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w25_f12_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w25_f14_o: bus=RW0S core=WL in_regf=True
    .regf_w25_f14_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w25_f14_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w25_f16_o: bus=RW0S core=RW in_regf=False
    .regf_w25_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w25_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w25_f16_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w25_f18_o: bus=RW0S core=RW in_regf=True
    .regf_w25_f18_rval_o(            ), // TODO - Core Read Value
    .regf_w25_f18_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w25_f18_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w25_f20_o: bus=RW0S core=RW0C in_regf=False
    .regf_w25_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w25_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w25_f20_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w25_f22_o: bus=RW0S core=RW0C in_regf=True
    .regf_w25_f22_rval_o(            ), // TODO - Core Read Value
    .regf_w25_f22_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w25_f22_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w25_f24_o: bus=RW0S core=RW0S in_regf=False
    .regf_w25_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w25_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w25_f24_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w25_f26_o: bus=RW0S core=RW0S in_regf=True
    .regf_w25_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w25_f26_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w25_f26_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w25_f28_o: bus=RW0S core=RW1C in_regf=False
    .regf_w25_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w25_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w25_f28_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w25_f30_o: bus=RW0S core=RW1C in_regf=True
    .regf_w25_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w25_f30_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w25_f30_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w26_f0_o: bus=RW0S core=RW1S in_regf=False
    .regf_w26_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w26_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w26_f0_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w26_f2_o: bus=RW0S core=RW1S in_regf=True
    .regf_w26_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w26_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w26_f2_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w26_f4_o: bus=RW0S core=RWL in_regf=False
    .regf_w26_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w26_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w26_f4_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w26_f6_o: bus=RW0S core=RWL in_regf=True
    .regf_w26_f6_rval_o (            ), // TODO - Core Read Value
    .regf_w26_f6_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w26_f6_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w26_f8_o: bus=RW1C core=RO in_regf=False
    .regf_w26_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w26_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w26_f8_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w26_f10_o: bus=RW1C core=RO in_regf=True
    .regf_w26_f10_rval_o(            ), // TODO - Core Read Value
    // regf_w26_f12_o: bus=RW1C core=RC in_regf=False
    .regf_w26_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w26_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w26_f12_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w26_f14_o: bus=RW1C core=RC in_regf=True
    .regf_w26_f14_rval_o(            ), // TODO - Core Read Value
    .regf_w26_f14_rd_i  (1'b0        ), // TODO - Core Read Strobe
    // regf_w26_f16_o: bus=RW1C core=RS in_regf=False
    .regf_w26_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w26_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w26_f16_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w26_f18_o: bus=RW1C core=RS in_regf=True
    .regf_w26_f18_rval_o(            ), // TODO - Core Read Value
    .regf_w26_f18_rd_i  (1'b0        ), // TODO - Core Read Strobe
    // regf_w26_f20_o: bus=RW1C core=RT in_regf=False
    .regf_w26_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w26_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w26_f20_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w26_f22_o: bus=RW1C core=RT in_regf=True
    .regf_w26_f22_rval_o(            ), // TODO - Core Read Value
    .regf_w26_f22_rd_i  (1'b0        ), // TODO - Core Read Strobe
    // regf_w26_f24_o: bus=RW1C core=RP in_regf=False
    .regf_w26_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w26_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w26_f24_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w26_f26_o: bus=RW1C core=RP in_regf=True
    .regf_w26_f26_rval_o(            ), // TODO - Core Read Value
    // regf_w26_f28_o: bus=RW1C core=WO in_regf=False
    .regf_w26_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w26_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w26_f28_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w26_f30_o: bus=RW1C core=WO in_regf=True
    .regf_w26_f30_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w26_f30_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w27_f0_o: bus=RW1C core=W0C in_regf=False
    .regf_w27_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w27_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w27_f0_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w27_f2_o: bus=RW1C core=W0C in_regf=True
    .regf_w27_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w27_f2_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w27_f4_o: bus=RW1C core=W0S in_regf=False
    .regf_w27_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w27_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w27_f4_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w27_f6_o: bus=RW1C core=W0S in_regf=True
    .regf_w27_f6_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w27_f6_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w27_f8_o: bus=RW1C core=W1C in_regf=False
    .regf_w27_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w27_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w27_f8_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w27_f10_o: bus=RW1C core=W1C in_regf=True
    .regf_w27_f10_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w27_f10_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w27_f12_o: bus=RW1C core=W1S in_regf=False
    .regf_w27_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w27_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w27_f12_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w27_f14_o: bus=RW1C core=W1S in_regf=True
    .regf_w27_f14_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w27_f14_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w27_f16_o: bus=RW1C core=WL in_regf=False
    .regf_w27_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w27_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w27_f16_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w27_f18_o: bus=RW1C core=WL in_regf=True
    .regf_w27_f18_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w27_f18_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w27_f20_o: bus=RW1C core=RW in_regf=False
    .regf_w27_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w27_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w27_f20_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w27_f22_o: bus=RW1C core=RW in_regf=True
    .regf_w27_f22_rval_o(            ), // TODO - Core Read Value
    .regf_w27_f22_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w27_f22_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w27_f24_o: bus=RW1C core=RW0C in_regf=False
    .regf_w27_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w27_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w27_f24_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w27_f26_o: bus=RW1C core=RW0C in_regf=True
    .regf_w27_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w27_f26_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w27_f26_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w27_f28_o: bus=RW1C core=RW0S in_regf=False
    .regf_w27_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w27_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w27_f28_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w27_f30_o: bus=RW1C core=RW0S in_regf=True
    .regf_w27_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w27_f30_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w27_f30_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w28_f0_o: bus=RW1C core=RW1C in_regf=False
    .regf_w28_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w28_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w28_f0_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w28_f2_o: bus=RW1C core=RW1C in_regf=True
    .regf_w28_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w28_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w28_f2_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w28_f4_o: bus=RW1C core=RW1S in_regf=False
    .regf_w28_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w28_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w28_f4_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w28_f6_o: bus=RW1C core=RW1S in_regf=True
    .regf_w28_f6_rval_o (            ), // TODO - Core Read Value
    .regf_w28_f6_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w28_f6_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w28_f8_o: bus=RW1C core=RWL in_regf=False
    .regf_w28_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w28_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w28_f8_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w28_f10_o: bus=RW1C core=RWL in_regf=True
    .regf_w28_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w28_f10_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w28_f10_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w28_f12_o: bus=RW1S core=RO in_regf=False
    .regf_w28_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w28_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w28_f12_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w28_f14_o: bus=RW1S core=RO in_regf=True
    .regf_w28_f14_rval_o(            ), // TODO - Core Read Value
    // regf_w28_f16_o: bus=RW1S core=RC in_regf=False
    .regf_w28_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w28_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w28_f16_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w28_f18_o: bus=RW1S core=RC in_regf=True
    .regf_w28_f18_rval_o(            ), // TODO - Core Read Value
    .regf_w28_f18_rd_i  (1'b0        ), // TODO - Core Read Strobe
    // regf_w28_f20_o: bus=RW1S core=RS in_regf=False
    .regf_w28_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w28_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w28_f20_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w28_f22_o: bus=RW1S core=RS in_regf=True
    .regf_w28_f22_rval_o(            ), // TODO - Core Read Value
    .regf_w28_f22_rd_i  (1'b0        ), // TODO - Core Read Strobe
    // regf_w28_f24_o: bus=RW1S core=RT in_regf=False
    .regf_w28_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w28_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w28_f24_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w28_f26_o: bus=RW1S core=RT in_regf=True
    .regf_w28_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w28_f26_rd_i  (1'b0        ), // TODO - Core Read Strobe
    // regf_w28_f28_o: bus=RW1S core=RP in_regf=False
    .regf_w28_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w28_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w28_f28_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w28_f30_o: bus=RW1S core=RP in_regf=True
    .regf_w28_f30_rval_o(            ), // TODO - Core Read Value
    // regf_w29_f0_o: bus=RW1S core=WO in_regf=False
    .regf_w29_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w29_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w29_f0_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w29_f2_o: bus=RW1S core=WO in_regf=True
    .regf_w29_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w29_f2_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w29_f4_o: bus=RW1S core=W0C in_regf=False
    .regf_w29_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w29_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w29_f4_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w29_f6_o: bus=RW1S core=W0C in_regf=True
    .regf_w29_f6_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w29_f6_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w29_f8_o: bus=RW1S core=W0S in_regf=False
    .regf_w29_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w29_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w29_f8_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w29_f10_o: bus=RW1S core=W0S in_regf=True
    .regf_w29_f10_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w29_f10_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w29_f12_o: bus=RW1S core=W1C in_regf=False
    .regf_w29_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w29_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w29_f12_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w29_f14_o: bus=RW1S core=W1C in_regf=True
    .regf_w29_f14_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w29_f14_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w29_f16_o: bus=RW1S core=W1S in_regf=False
    .regf_w29_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w29_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w29_f16_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w29_f18_o: bus=RW1S core=W1S in_regf=True
    .regf_w29_f18_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w29_f18_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w29_f20_o: bus=RW1S core=WL in_regf=False
    .regf_w29_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w29_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w29_f20_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w29_f22_o: bus=RW1S core=WL in_regf=True
    .regf_w29_f22_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w29_f22_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w29_f24_o: bus=RW1S core=RW in_regf=False
    .regf_w29_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w29_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w29_f24_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w29_f26_o: bus=RW1S core=RW in_regf=True
    .regf_w29_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w29_f26_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w29_f26_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w29_f28_o: bus=RW1S core=RW0C in_regf=False
    .regf_w29_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w29_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w29_f28_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w29_f30_o: bus=RW1S core=RW0C in_regf=True
    .regf_w29_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w29_f30_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w29_f30_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w30_f0_o: bus=RW1S core=RW0S in_regf=False
    .regf_w30_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w30_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w30_f0_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w30_f2_o: bus=RW1S core=RW0S in_regf=True
    .regf_w30_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w30_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w30_f2_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w30_f4_o: bus=RW1S core=RW1C in_regf=False
    .regf_w30_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w30_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w30_f4_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w30_f6_o: bus=RW1S core=RW1C in_regf=True
    .regf_w30_f6_rval_o (            ), // TODO - Core Read Value
    .regf_w30_f6_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w30_f6_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w30_f8_o: bus=RW1S core=RW1S in_regf=False
    .regf_w30_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w30_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w30_f8_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w30_f10_o: bus=RW1S core=RW1S in_regf=True
    .regf_w30_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w30_f10_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w30_f10_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w30_f12_o: bus=RW1S core=RWL in_regf=False
    .regf_w30_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w30_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w30_f12_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w30_f14_o: bus=RW1S core=RWL in_regf=True
    .regf_w30_f14_rval_o(            ), // TODO - Core Read Value
    .regf_w30_f14_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w30_f14_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w30_f16_o: bus=RWL core=RO in_regf=False
    .regf_w30_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w30_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w30_f16_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w30_f18_o: bus=RWL core=RO in_regf=True
    .regf_w30_f18_rval_o(            ), // TODO - Core Read Value
    // regf_w30_f20_o: bus=RWL core=RC in_regf=False
    .regf_w30_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w30_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w30_f20_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w30_f22_o: bus=RWL core=RC in_regf=True
    .regf_w30_f22_rval_o(            ), // TODO - Core Read Value
    .regf_w30_f22_rd_i  (1'b0        ), // TODO - Core Read Strobe
    // regf_w30_f24_o: bus=RWL core=RS in_regf=False
    .regf_w30_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w30_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w30_f24_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w30_f26_o: bus=RWL core=RS in_regf=True
    .regf_w30_f26_rval_o(            ), // TODO - Core Read Value
    .regf_w30_f26_rd_i  (1'b0        ), // TODO - Core Read Strobe
    // regf_w30_f28_o: bus=RWL core=RT in_regf=False
    .regf_w30_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w30_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w30_f28_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w30_f30_o: bus=RWL core=RT in_regf=True
    .regf_w30_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w30_f30_rd_i  (1'b0        ), // TODO - Core Read Strobe
    // regf_w31_f0_o: bus=RWL core=RP in_regf=False
    .regf_w31_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w31_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w31_f0_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w31_f2_o: bus=RWL core=RP in_regf=True
    .regf_w31_f2_rval_o (            ), // TODO - Core Read Value
    // regf_w31_f4_o: bus=RWL core=WO in_regf=False
    .regf_w31_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w31_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w31_f4_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w31_f6_o: bus=RWL core=WO in_regf=True
    .regf_w31_f6_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w31_f6_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w31_f8_o: bus=RWL core=W0C in_regf=False
    .regf_w31_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w31_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w31_f8_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w31_f10_o: bus=RWL core=W0C in_regf=True
    .regf_w31_f10_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w31_f10_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w31_f12_o: bus=RWL core=W0S in_regf=False
    .regf_w31_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w31_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w31_f12_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w31_f14_o: bus=RWL core=W0S in_regf=True
    .regf_w31_f14_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w31_f14_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w31_f16_o: bus=RWL core=W1C in_regf=False
    .regf_w31_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w31_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w31_f16_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w31_f18_o: bus=RWL core=W1C in_regf=True
    .regf_w31_f18_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w31_f18_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w31_f20_o: bus=RWL core=W1S in_regf=False
    .regf_w31_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w31_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w31_f20_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w31_f22_o: bus=RWL core=W1S in_regf=True
    .regf_w31_f22_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w31_f22_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w31_f24_o: bus=RWL core=WL in_regf=False
    .regf_w31_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w31_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w31_f24_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w31_f26_o: bus=RWL core=WL in_regf=True
    .regf_w31_f26_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w31_f26_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w31_f28_o: bus=RWL core=RW in_regf=False
    .regf_w31_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w31_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w31_f28_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w31_f30_o: bus=RWL core=RW in_regf=True
    .regf_w31_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w31_f30_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w31_f30_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w32_f0_o: bus=RWL core=RW0C in_regf=False
    .regf_w32_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w32_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w32_f0_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w32_f2_o: bus=RWL core=RW0C in_regf=True
    .regf_w32_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w32_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w32_f2_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w32_f4_o: bus=RWL core=RW0S in_regf=False
    .regf_w32_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w32_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w32_f4_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w32_f6_o: bus=RWL core=RW0S in_regf=True
    .regf_w32_f6_rval_o (            ), // TODO - Core Read Value
    .regf_w32_f6_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w32_f6_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w32_f8_o: bus=RWL core=RW1C in_regf=False
    .regf_w32_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w32_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w32_f8_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w32_f10_o: bus=RWL core=RW1C in_regf=True
    .regf_w32_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w32_f10_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w32_f10_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w32_f12_o: bus=RWL core=RW1S in_regf=False
    .regf_w32_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w32_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w32_f12_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w32_f14_o: bus=RWL core=RW1S in_regf=True
    .regf_w32_f14_rval_o(            ), // TODO - Core Read Value
    .regf_w32_f14_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w32_f14_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w32_f16_o: bus=RWL core=RWL in_regf=False
    .regf_w32_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w32_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w32_f16_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w32_f18_o: bus=RWL core=RWL in_regf=True
    .regf_w32_f18_rval_o(            ), // TODO - Core Read Value
    .regf_w32_f18_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w32_f18_wr_i  (1'b0        )  // TODO - Core Write Strobe
  );

endmodule // full

`default_nettype wire
`end_keywords
