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
// Module:     tests.byte_en_byte_en
// Data Model: tests.test_svmako.RegfMod
//
//
// Offset    Word     Field    Bus/Core    Reset    Const    Impl
// --------  -------  -------  ----------  -------  -------  ------
// +0        w0
//           [12:0]   .f0      RW/RO       0x0      False    regf
//           [15:13]  .f1      RW/RO       0x0      False    regf
//           [28:16]  .f2      WO/RO       0x0      False    core
//           [31:29]  .f3      RO/RW       0x0      False    core
// +1        w1
//           [6:0]    .f0      RW/RO       0x0      False    core
//           [19:7]   .f2      RWL/-       0x0      False    core
//
//
// Mnemonic    ReadOp    WriteOp
// ----------  --------  ------------
// RO          Read
// RW          Read      Write
// RWL         Read      Write Locked
// WO                    Write
//
// =============================================================================

`begin_keywords "1800-2009"
`default_nettype none  // implicit wires are forbidden

module byte_en_byte_en ( // tests.test_svmako.RegfMod
  // main_i
  input  wire         main_clk_i,
  input  wire         main_rst_an_i,     // Async Reset (Low-Active)
  // mem_i
  input  wire         mem_ena_i,
  input  wire  [12:0] mem_addr_i,
  input  wire         mem_wena_i,
  input  wire  [31:0] mem_wdata_i,
  output logic [31:0] mem_rdata_o,
  input  wire  [3:0]  mem_sel_i,
  output logic        mem_err_o,
  // regf_o
  // regf_w0_f0_o: bus=RW core=RO in_regf=True
  output logic [12:0] regf_w0_f0_rval_o, // Core Read Value
  // regf_w0_f1_o: bus=RW core=RO in_regf=True
  output logic [2:0]  regf_w0_f1_rval_o, // Core Read Value
  // regf_w0_f2_o: bus=WO core=RO in_regf=False
  output logic [12:0] regf_w0_f2_wbus_o, // Bus Write Value
  output logic [12:0] regf_w0_f2_wr_o,   // Bus Bit-Write Strobe
  // regf_w0_f3_o: bus=RO core=RW in_regf=False
  input  wire  [2:0]  regf_w0_f3_rbus_i, // Bus Read Value
  // regf_w1_f0_o: bus=RW core=RO in_regf=False
  input  wire  [6:0]  regf_w1_f0_rbus_i, // Bus Read Value
  output logic [6:0]  regf_w1_f0_wbus_o, // Bus Write Value
  output logic [6:0]  regf_w1_f0_wr_o,   // Bus Bit-Write Strobe
  // regf_w1_f2_o: bus=RWL core=None in_regf=False
  input  wire  [12:0] regf_w1_f2_rbus_i, // Bus Read Value
  output logic [12:0] regf_w1_f2_wbus_o, // Bus Write Value
  output logic [12:0] regf_w1_f2_wr_o    // Bus Bit-Write Strobe
);




  // ------------------------------------------------------
  //  Signals
  // ------------------------------------------------------
  logic [12:0] data_w0_f0_r;    // Word w0
  logic [2:0]  data_w0_f1_r;
  logic        bus_w1_wronce_r;
  logic        bus_w0_wren_s;   // bus word write enables
  logic        bus_w1_wren_s;
  logic [31:0] bit_en_s;

  always_comb begin: proc_bus_addr_dec
    // defaults
    mem_err_o = 1'b0;
    bus_w0_wren_s = 1'b0;
    bus_w1_wren_s = 1'b0;


    // decode address
    if (mem_ena_i == 1'b1) begin
      case (mem_addr_i)
        13'h0000: begin
          mem_err_o = 0;
          bus_w0_wren_s = mem_wena_i;
        end
        13'h0001: begin
          mem_err_o = 0;
          bus_w1_wren_s = mem_wena_i;
        end
        default: begin
          mem_err_o = 1'b1;
        end
      endcase
    end

    bit_en_s = {{8{mem_sel_i[3]}}, {8{mem_sel_i[2]}}, {8{mem_sel_i[1]}}, {8{mem_sel_i[0]}}};
  end

  // ------------------------------------------------------
  // in-regf storage
  // ------------------------------------------------------
  always_ff @ (posedge main_clk_i or negedge main_rst_an_i) begin: proc_regf_flops
    if (main_rst_an_i == 1'b0) begin
      // Word: w0
      data_w0_f0_r    <= 13'h0000;
      data_w0_f1_r    <= 3'h0;
      // Word: w1
      bus_w1_wronce_r <= 1'b1;
    end else begin
      if (bus_w0_wren_s == 1'b1) begin
        data_w0_f0_r <= mem_wdata_i[12:0];
      end
      if (bus_w0_wren_s == 1'b1) begin
        data_w0_f1_r <= mem_wdata_i[15:13];
      end
      if (bus_w1_wren_s == 1'b1) begin
        bus_w1_wronce_r <= 1'b0;
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
          mem_rdata_o = {regf_w0_f3_rbus_i, 13'h0000, data_w0_f1_r, data_w0_f0_r};
        end
        13'h0001: begin
          mem_rdata_o = {12'h000, regf_w1_f2_rbus_i, regf_w1_f0_rbus_i};
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
  assign regf_w0_f0_rval_o = data_w0_f0_r;
  assign regf_w0_f1_rval_o = data_w0_f1_r;
  assign regf_w0_f2_wbus_o = (bus_w0_wren_s == 1'b1) ? mem_wdata_i[28:16] : 13'h0000;
  assign regf_w0_f2_wr_o   = bit_en_s[28:16];
  assign regf_w1_f0_wbus_o = (bus_w1_wren_s == 1'b1) ? mem_wdata_i[6:0] : 7'h00;
  assign regf_w1_f0_wr_o   = bit_en_s[6:0];
  assign regf_w1_f2_wbus_o = ((bus_w1_wren_s == 1'b1) && (bus_w1_wronce_r == 1'b1)) ? mem_wdata_i[19:7] : 13'h0000;
  assign regf_w1_f2_wr_o   = bit_en_s[19:7];

endmodule // byte_en_byte_en

`default_nettype wire
`end_keywords
