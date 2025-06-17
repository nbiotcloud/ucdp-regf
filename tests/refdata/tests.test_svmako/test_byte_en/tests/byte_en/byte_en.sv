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
// Library:    tests
// Module:     byte_en
// Data Model: ByteEnMod
//             tests/test_svmako.py
//
// =============================================================================

`begin_keywords "1800-2009"
`default_nettype none  // implicit wires are forbidden

module byte_en (
  // main_i: Clock and Reset
  input wire main_clk_i,   // Clock
  input wire main_rst_an_i // Async Reset (Low-Active)
);



  // ------------------------------------------------------
  //  tests.byte_en_byte_en: u_byte_en
  // ------------------------------------------------------
  byte_en_byte_en u_byte_en (
    .main_clk_i       (main_clk_i   ), // Clock
    .main_rst_an_i    (main_rst_an_i), // Async Reset (Low-Active)
    .mem_ena_i        (1'b0         ), // TODO - Memory Access Enable
    .mem_addr_i       (10'h000      ), // TODO - Memory Address
    .mem_wena_i       (1'b0         ), // TODO - Memory Write Enable
    .mem_wdata_i      (32'h00000000 ), // TODO - Memory Write Data
    .mem_rdata_o      (             ), // TODO - Memory Read Data
    .mem_sel_i        (4'h0         ), // TODO - Slice Selects
    .mem_err_o        (             ), // TODO - Memory Access Failed.
    .regf_w0_f0_rval_o(             ), // TODO - Core Read Value
    .regf_w0_f1_rval_o(             ), // TODO - Core Read Value
    .regf_w0_f2_wbus_o(             ), // TODO - Bus Write Value
    .regf_w0_f2_wr_o  (             ), // TODO - Bus Bit-Write Strobe
    .regf_w0_f3_rbus_i(3'h0         ), // TODO - Bus Read Value
    .regf_w1_f0_rbus_i(7'h00        ), // TODO - Bus Read Value
    .regf_w1_f0_wbus_o(             ), // TODO - Bus Write Value
    .regf_w1_f0_wr_o  (             ), // TODO - Bus Bit-Write Strobe
    .regf_w1_f2_rbus_i(13'h0000     ), // TODO - Bus Read Value
    .regf_w1_f2_wbus_o(             ), // TODO - Bus Write Value
    .regf_w1_f2_wr_o  (             ), // TODO - Bus Bit-Write Strobe
    .regf_w2_f1_rval_o(             )  // TODO - Core Read Value
  );

endmodule // byte_en

`default_nettype wire
`end_keywords

// =============================================================================
//
//   @generated @fully-generated
//
//   THIS FILE IS GENERATED!!! DO NOT EDIT MANUALLY. CHANGES ARE LOST.
//
// =============================================================================
