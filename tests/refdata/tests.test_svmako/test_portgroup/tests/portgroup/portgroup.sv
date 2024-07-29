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
// Module:     tests.portgroup
// Data Model: tests.test_svmako.PortgroupMod
//
// =============================================================================

`begin_keywords "1800-2009"
`default_nettype none  // implicit wires are forbidden

module portgroup #( // tests.test_svmako.PortgroupMod
  parameter integer width_p = 1
) (
  // main_i
  input wire main_clk_i,
  input wire main_rst_an_i // Async Reset (Low-Active)
);



  // ------------------------------------------------------
  //  Signals
  // ------------------------------------------------------
  // regf_regf_rx_o_s
  // regf_regf_rx_o_ctrl_ena_o: bus=RW core=RO in_regf=True
  logic               regf_regf_rx_o_ctrl_ena_rval_o; // Core Read Value
  // regf_regf_rx_o_rx_data0_o: bus=RO core=RW in_regf=False
  logic [width_p-1:0] regf_regf_rx_o_rx_data0_rbus_i; // Bus Read Value
  // regf_regf_rx_o_rx_data1_o: bus=RO core=RW in_regf=False
  logic [width_p-1:0] regf_regf_rx_o_rx_data1_rbus_i; // Bus Read Value
  // regf_regf_rx_o_rx_data2_o: bus=RO core=RW in_regf=False
  logic [width_p-1:0] regf_regf_rx_o_rx_data2_rbus_i; // Bus Read Value
  // regf_regf_tx_o_s
  // regf_regf_tx_o_ctrl_ena_o: bus=RW core=RO in_regf=True
  logic               regf_regf_tx_o_ctrl_ena_rval_o; // Core Read Value
  // regf_regf_tx_o_tx_data0_o: bus=RW core=RO in_regf=True
  logic [width_p-1:0] regf_regf_tx_o_tx_data0_rval_o; // Core Read Value


  // ------------------------------------------------------
  //  tests.portgroup_regf: u_regf
  // ------------------------------------------------------
  portgroup_regf #(
    .width_p(1)
  ) u_regf (
    // main_i
    .main_clk_i               (main_clk_i                    ),
    .main_rst_an_i            (main_rst_an_i                 ), // Async Reset (Low-Active)
    // mem_i
    .mem_ena_i                (1'b0                          ), // TODO
    .mem_addr_i               (13'h0000                      ), // TODO
    .mem_wena_i               (1'b0                          ), // TODO
    .mem_wdata_i              (32'h00000000                  ), // TODO
    .mem_rdata_o              (                              ), // TODO
    .mem_err_o                (                              ), // TODO
    // regf_o
    // regf_top_o
    // regf_top_ctrl_ena_o: bus=RW core=RO in_regf=True
    .regf_top_ctrl_ena_rval_o (                              ), // TODO - Core Read Value
    // regf_top_ctrl_busy_o: bus=RO core=RW in_regf=False
    .regf_top_ctrl_busy_rbus_i(1'b0                          ), // TODO - Bus Read Value
    // regf_rx_o
    // regf_rx_ctrl_ena_o: bus=RW core=RO in_regf=True
    .regf_rx_ctrl_ena_rval_o  (regf_regf_rx_o_ctrl_ena_rval_o), // Core Read Value
    // regf_rx_rx_data0_o: bus=RO core=RW in_regf=False
    .regf_rx_rx_data0_rbus_i  (regf_regf_rx_o_rx_data0_rbus_i), // Bus Read Value
    // regf_rx_rx_data1_o: bus=RO core=RW in_regf=False
    .regf_rx_rx_data1_rbus_i  (regf_regf_rx_o_rx_data1_rbus_i), // Bus Read Value
    // regf_rx_rx_data2_o: bus=RO core=RW in_regf=False
    .regf_rx_rx_data2_rbus_i  (regf_regf_rx_o_rx_data2_rbus_i), // Bus Read Value
    // regf_tx_o
    // regf_tx_ctrl_ena_o: bus=RW core=RO in_regf=True
    .regf_tx_ctrl_ena_rval_o  (regf_regf_tx_o_ctrl_ena_rval_o), // Core Read Value
    // regf_tx_tx_data0_o: bus=RW core=RO in_regf=True
    .regf_tx_tx_data0_rval_o  (regf_regf_tx_o_tx_data0_rval_o)  // Core Read Value
  );


  // ------------------------------------------------------
  //  tests.portgroup_rx: u_rx
  // ------------------------------------------------------
  portgroup_rx #(
    .width_p(1)
  ) u_rx (
    // main_i
    .main_clk_i          (main_clk_i                    ),
    .main_rst_an_i       (main_rst_an_i                 ), // Async Reset (Low-Active)
    // regf_i
    // regf_ctrl_ena_i: bus=RW core=RO in_regf=True
    .regf_ctrl_ena_rval_i(regf_regf_rx_o_ctrl_ena_rval_o), // Core Read Value
    // regf_rx_data0_i: bus=RO core=RW in_regf=False
    .regf_rx_data0_rbus_o(regf_regf_rx_o_rx_data0_rbus_i), // Bus Read Value
    // regf_rx_data1_i: bus=RO core=RW in_regf=False
    .regf_rx_data1_rbus_o(regf_regf_rx_o_rx_data1_rbus_i), // Bus Read Value
    // regf_rx_data2_i: bus=RO core=RW in_regf=False
    .regf_rx_data2_rbus_o(regf_regf_rx_o_rx_data2_rbus_i)  // Bus Read Value
  );


  // ------------------------------------------------------
  //  tests.portgroup_tx: u_tx
  // ------------------------------------------------------
  portgroup_tx #(
    .width_p(1)
  ) u_tx (
    // main_i
    .main_clk_i          (main_clk_i                    ),
    .main_rst_an_i       (main_rst_an_i                 ), // Async Reset (Low-Active)
    // regf_i
    // regf_ctrl_ena_i: bus=RW core=RO in_regf=True
    .regf_ctrl_ena_rval_i(regf_regf_tx_o_ctrl_ena_rval_o), // Core Read Value
    // regf_tx_data0_i: bus=RW core=RO in_regf=True
    .regf_tx_data0_rval_i(regf_regf_tx_o_tx_data0_rval_o)  // Core Read Value
  );

endmodule // portgroup

`default_nettype wire
`end_keywords
