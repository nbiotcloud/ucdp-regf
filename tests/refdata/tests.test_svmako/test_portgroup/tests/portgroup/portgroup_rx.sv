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
// Module:     tests.portgroup_rx
// Data Model: tests.test_svmako.CoreMod
//
// =============================================================================

`begin_keywords "1800-2009"
`default_nettype none  // implicit wires are forbidden

module portgroup_rx #( // tests.test_svmako.CoreMod
  parameter integer width_p = 1
) (
  // main_i
  input  wire                main_clk_i,
  input  wire                main_rst_an_i,        // Async Reset (Low-Active)
  // regf_i
  // regf_ctrl_ena_i: bus=RW core=RO in_regf=True
  input  wire                regf_ctrl_ena_rval_i, // Core Read Value
  // regf_rx_data0_i: bus=RO core=RW in_regf=False
  output logic [width_p-1:0] regf_rx_data0_rbus_o, // Bus Read Value
  // regf_rx_data1_i: bus=RO core=RW in_regf=False
  output logic [width_p-1:0] regf_rx_data1_rbus_o, // Bus Read Value
  // regf_rx_data2_i: bus=RO core=RW in_regf=False
  output logic [width_p-1:0] regf_rx_data2_rbus_o  // Bus Read Value
);


endmodule // portgroup_rx

`default_nettype wire
`end_keywords
