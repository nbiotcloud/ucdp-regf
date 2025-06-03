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
// Module:     uart.uart
// Data Model: uart.uart.UartMod
//
// =============================================================================

`begin_keywords "1800-2009"
`default_nettype none  // implicit wires are forbidden

module uart ( // uart.uart.UartMod
  // main_i: Clock and Reset
  input  wire         main_clk_i,    // Clock
  input  wire         main_rst_an_i, // Async Reset (Low-Active)
  // uart_o: RX/TX
  input  wire         uart_rx_i,
  output logic        uart_tx_o,
  // bus_i
  input  wire  [1:0]  bus_trans_i,
  input  wire  [31:0] bus_addr_i,
  input  wire         bus_write_i,
  input  wire  [31:0] bus_wdata_i,
  output logic        bus_ready_o,
  output logic        bus_resp_o,
  output logic [31:0] bus_rdata_o
);



  // ------------------------------------------------------
  //  Signals
  // ------------------------------------------------------
  logic clk_s;                        // Clock
  logic regf_regf_ctrl_ena_rval_o_s;  // Enable
  logic regf_regf_ctrl_busy_rbus_i_s; // Busy


  // ------------------------------------------------------
  //  glbl.clk_gate: u_clk_gate
  // ------------------------------------------------------
  clk_gate u_clk_gate (
    .clk_i(main_clk_i                 ), // Clock
    .clk_o(clk_s                      ), // Clock
    .ena_i(regf_regf_ctrl_ena_rval_o_s)  // Enable
  );


  // ------------------------------------------------------
  //  uart.uart_regf: u_regf
  // ------------------------------------------------------
  uart_regf u_regf (
    .main_clk_i           (main_clk_i                  ), // Clock
    .main_rst_an_i        (main_rst_an_i               ), // Async Reset (Low-Active)
    .mem_ena_i            (1'b0                        ), // TODO - Memory Access Enable
    .mem_addr_i           (10'h000                     ), // TODO - Memory Address
    .mem_wena_i           (1'b0                        ), // TODO - Memory Write Enable
    .mem_wdata_i          (32'h00000000                ), // TODO - Memory Write Data
    .mem_rdata_o          (                            ), // TODO - Memory Read Data
    .mem_err_o            (                            ), // TODO - Memory Access Failed.
    .regf_ctrl_ena_rval_o (regf_regf_ctrl_ena_rval_o_s ), // Core Read Value
    .regf_ctrl_busy_rbus_i(regf_regf_ctrl_busy_rbus_i_s)  // Bus Read Value
  );


  // ------------------------------------------------------
  //  uart.uart_core: u_core
  // ------------------------------------------------------
  uart_core u_core (
    .main_clk_i   (clk_s                       ), // Clock
    .main_rst_an_i(main_rst_an_i               ), // Async Reset (Low-Active)
    .busy_o       (regf_regf_ctrl_busy_rbus_i_s)  // Busy
  );

endmodule // uart

`default_nettype wire
`end_keywords

// =============================================================================
//
//   @generated @fully-generated
//
//   THIS FILE IS GENERATED!!! DO NOT EDIT MANUALLY. CHANGES ARE LOST.
//
// =============================================================================
