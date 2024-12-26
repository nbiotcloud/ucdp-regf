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
// Module:     tests.reset_regrst
// Data Model: tests.test_svmako.RegfMod
//
//
// Offset    Word    Field    Bus/Core    Reset    Const    Impl
// --------  ------  -------  ----------  -------  -------  ------
// +0        ctrl
//           [0]     .clrall  WO/RO       0        False    core
//           [1]     .ena     RW/RO       0        False    regf
//           [4]     .busy    RO/RW       0        False    core
//
//
// Mnemonic    ReadOp    WriteOp
// ----------  --------  ---------
// RO          Read
// RW          Read      Write
// WO                    Write
//
// =============================================================================

`begin_keywords "1800-2009"
`default_nettype none  // implicit wires are forbidden

module reset_regrst ( // tests.test_svmako.RegfMod
  // main_i
  input  wire         main_clk_i,
  input  wire         main_rst_an_i,           // Async Reset (Low-Active)
  // mem_i
  input  wire         mem_ena_i,
  input  wire  [12:0] mem_addr_i,
  input  wire         mem_wena_i,
  input  wire  [31:0] mem_wdata_i,
  output logic [31:0] mem_rdata_o,
  output logic        mem_err_o,
  // regf_o
  // regf_ctrl_clrall_o: bus=WO core=RO in_regf=False
  output logic        regf_ctrl_clrall_wbus_o, // Bus Write Value
  output logic        regf_ctrl_clrall_wr_o,   // Bus Write Strobe
  // regf_ctrl_ena_o: bus=RW core=RO in_regf=True
  output logic        regf_ctrl_ena_rval_o,    // Core Read Value
  // regf_ctrl_busy_o: bus=RO core=RW in_regf=False
  input  wire         regf_ctrl_busy_rbus_i    // Bus Read Value
);




  // ------------------------------------------------------
  //  Signals
  // ------------------------------------------------------
  logic data_ctrl_ena_r;       // Word ctrl
  logic bus_ctrl_wren_s;       // bus word write enables
  logic bus_ctrl_clrall_rst_s;

  always_comb begin: proc_bus_addr_dec
    // defaults
    mem_err_o = 1'b0;
    bus_ctrl_wren_s = 1'b0;


    // decode address
    if (mem_ena_i == 1'b1) begin
      case (mem_addr_i)
        13'h0000: begin
          mem_err_o = 0;
          bus_ctrl_wren_s = mem_wena_i;
        end
        default: begin
          mem_err_o = 1'b1;
        end
      endcase
    end

  end

  // ------------------------------------------------------
  // soft reset condition
  // ------------------------------------------------------
  assign bus_ctrl_clrall_rst_s = mem_wdata_i[0] & bus_ctrl_wren_s;

  // ------------------------------------------------------
  // in-regf storage
  // ------------------------------------------------------
  always_ff @ (posedge main_clk_i or negedge main_rst_an_i) begin: proc_regf_flops
    if (main_rst_an_i == 1'b0) begin
      // Word: ctrl
      data_ctrl_ena_r <= 1'b0;
    end else if (bus_ctrl_clrall_rst_s == 1'b1) begin
      // Word: ctrl
      data_ctrl_ena_r <= 1'b0;
    end else begin
      if (bus_ctrl_wren_s == 1'b1) begin
        data_ctrl_ena_r <= mem_wdata_i[1];
      end
    end
  end

  // ------------------------------------------------------
  //  Bus Read-Mux
  // ------------------------------------------------------
  always_comb begin: proc_bus_rd
    if ((mem_ena_i == 1'b1) && (mem_wena_i == 1'b0)) begin
      case (mem_addr_i)
        13'h0000: begin
          mem_rdata_o = {27'h0000000, regf_ctrl_busy_rbus_i, 2'h0, data_ctrl_ena_r, 1'h0};
        end
        default: begin
          mem_rdata_o = 32'h00000000;
        end
      endcase
    end else begin
      mem_rdata_o = 32'h00000000;
    end
  end

  // ------------------------------------------------------
  //  Output Assignments
  // ------------------------------------------------------
  assign regf_ctrl_clrall_wbus_o = (bus_ctrl_wren_s == 1'b1) ? mem_wdata_i[0] : 1'b0;
  assign regf_ctrl_clrall_wr_o   = (bus_ctrl_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_ctrl_ena_rval_o    = data_ctrl_ena_r;

endmodule // reset_regrst

`default_nettype wire
`end_keywords
