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
// Module:     tests.reset
// Data Model: tests.test_svmako.ResetMod
//
// =============================================================================

`begin_keywords "1800-2009"
`default_nettype none  // implicit wires are forbidden

module reset ( // tests.test_svmako.ResetMod
  // main_i: Clock and Reset
  input wire main_clk_i,   // Clock
  input wire main_rst_an_i // Async Reset (Low-Active)
);



  // ------------------------------------------------------
  //  Signals
  // ------------------------------------------------------
  logic busy1_s; // Busy
  logic busy2_s; // Busy


  // ------------------------------------------------------
  //  tests.reset_softrst: u_softrst
  // ------------------------------------------------------
  reset_softrst u_softrst (
    .main_clk_i           (main_clk_i   ), // Clock
    .main_rst_an_i        (main_rst_an_i), // Async Reset (Low-Active)
    .mem_ena_i            (1'b0         ), // TODO - Memory Access Enable
    .mem_addr_i           (10'h000      ), // TODO - Memory Address
    .mem_wena_i           (1'b0         ), // TODO - Memory Write Enable
    .mem_wdata_i          (32'h00000000 ), // TODO - Memory Write Data
    .mem_rdata_o          (             ), // TODO - Memory Read Data
    .mem_err_o            (             ), // TODO - Memory Access Failed.
    .regf_ctrl_ena_rval_o (             ), // TODO - Core Read Value
    .regf_ctrl_busy_rbus_i(busy1_s      ), // Bus Read Value
    .soft_rst_i           (1'b0         )  // TODO - Synchronous Reset
  );


  // ------------------------------------------------------
  //  tests.reset_regrst: u_regrst
  // ------------------------------------------------------
  reset_regrst u_regrst (
    .main_clk_i             (main_clk_i   ), // Clock
    .main_rst_an_i          (main_rst_an_i), // Async Reset (Low-Active)
    .mem_ena_i              (1'b0         ), // TODO - Memory Access Enable
    .mem_addr_i             (10'h000      ), // TODO - Memory Address
    .mem_wena_i             (1'b0         ), // TODO - Memory Write Enable
    .mem_wdata_i            (32'h00000000 ), // TODO - Memory Write Data
    .mem_rdata_o            (             ), // TODO - Memory Read Data
    .mem_err_o              (             ), // TODO - Memory Access Failed.
    .regf_ctrl_clrall_wbus_o(             ), // TODO - Bus Write Value
    .regf_ctrl_clrall_wr_o  (             ), // TODO - Bus Write Strobe
    .regf_ctrl_ena_rval_o   (             ), // TODO - Core Read Value
    .regf_ctrl_busy_rbus_i  (busy2_s      )  // Bus Read Value
  );

endmodule // reset

`default_nettype wire
`end_keywords

// =============================================================================
//
//   @generated @fully-generated
//
//   THIS FILE IS GENERATED!!! DO NOT EDIT MANUALLY. CHANGES ARE LOST.
//
// =============================================================================
