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
// Module:     word_upd_regf
// Data Model: RegfMod
//             tests/test_svmako.py
//
//
// Addressing-Width: data
// Size:             1024x32 (4 KB)
//
//
// Offset       Word    Field    Bus/Core    Reset    Const    Impl
// dec / hex
// -----------  ------  -------  ----------  -------  -------  ------
// 0 / 0        wup
//              [3:0]   .f0      RW/RO       0x0      False    regf
//              [8:4]   .f1      RW/RO       0x0      False    regf
// 3:1 / 3:1    wupgrp
//              [1:0]   .f0      RW/RO       0x0      False    regf
//
//
// Mnemonic    ReadOp    WriteOp
// ----------  --------  ---------
// RO          Read
// RW          Read      Write
//
// =============================================================================

`begin_keywords "1800-2009"
`default_nettype none  // implicit wires are forbidden

module word_upd_regf (
  // main_i: Clock and Reset
  input  wire         main_clk_i,                       // Clock
  input  wire         main_rst_an_i,                    // Async Reset (Low-Active)
  // mem_i
  input  wire         mem_ena_i,                        // Memory Access Enable
  input  wire  [9:0]  mem_addr_i,                       // Memory Address
  input  wire         mem_wena_i,                       // Memory Write Enable
  input  wire  [31:0] mem_wdata_i,                      // Memory Write Data
  output logic [31:0] mem_rdata_o,                      // Memory Read Data
  output logic        mem_err_o,                        // Memory Access Failed.
  // regf_o
  //   regf_wup_f0_o: bus=RW core=RO in_regf=True
  output logic [3:0]  regf_wup_f0_rval_o,               // Core Read Value
  //   regf_wup_f1_o: bus=RW core=RO in_regf=True
  output logic [4:0]  regf_wup_f1_rval_o,               // Core Read Value
  //   -
  output logic        regf_wup_upd_o,                   // wup update strobe
  //   regf_grpc_o
  //     regf_grpc_wupgrp_f0_o: bus=RW core=RO in_regf=True
  output logic [1:0]  regf_grpc_wupgrp_f0_rval_o [0:2], // Core Read Value
  //   regf_grpa_o
  output logic        regf_grpa_wupgrp_upd_o     [0:2], // wupgrp update strobe
  //   regf_grpb_o
  output logic        regf_grpb_wupgrp_upd_o     [0:2]  // wupgrp update strobe
  // regfword_o
);




  // ------------------------------------------------------
  //  Signals
  // ------------------------------------------------------
  logic [3:0] data_wup_f0_r;           // Word wup
  logic [4:0] data_wup_f1_r;
  logic       upd_strb_wup_r;
  logic [1:0] data_wupgrp_f0_r  [0:2]; // Word wupgrp
  logic       upd_strb_wupgrp_r [0:2];
  logic       bus_wup_wren_s;          // bus word write enables
  logic       bus_wupgrp_wren_s [0:2];

  // ------------------------------------------------------
  // address decoding
  // ------------------------------------------------------
  always_comb begin: proc_bus_addr_dec
    // defaults
    mem_err_o = 1'b0;
    bus_wup_wren_s    = 1'b0;
    bus_wupgrp_wren_s = '{3{1'b0}};

    // decode address
    if (mem_ena_i == 1'b1) begin
      case (mem_addr_i)
        10'h000: begin
          bus_wup_wren_s = mem_wena_i;
        end
        10'h001: begin
          bus_wupgrp_wren_s[0] = mem_wena_i;
        end
        10'h002: begin
          bus_wupgrp_wren_s[1] = mem_wena_i;
        end
        10'h003: begin
          bus_wupgrp_wren_s[2] = mem_wena_i;
        end
        default: begin
          mem_err_o = 1'b1;
        end
      endcase
    end
  end

  // ------------------------------------------------------
  // in-regf storage
  // ------------------------------------------------------
  always_ff @ (posedge main_clk_i or negedge main_rst_an_i) begin: proc_regf_flops
    if (main_rst_an_i == 1'b0) begin
      // Word: wup
      data_wup_f0_r     <= 4'h0;
      data_wup_f1_r     <= 5'h00;
      upd_strb_wup_r    <= 1'b0;
      // Word: wupgrp
      data_wupgrp_f0_r  <= '{3{2'h0}};
      upd_strb_wupgrp_r <= '{3{1'b0}};
    end else begin
      if (bus_wup_wren_s == 1'b1) begin
        data_wup_f0_r <= mem_wdata_i[3:0];
      end
      if (bus_wup_wren_s == 1'b1) begin
        data_wup_f1_r <= mem_wdata_i[8:4];
      end
      upd_strb_wup_r <= bus_wup_wren_s;
      if (bus_wupgrp_wren_s[0] == 1'b1) begin
        data_wupgrp_f0_r[0] <= mem_wdata_i[1:0];
      end
      if (bus_wupgrp_wren_s[1] == 1'b1) begin
        data_wupgrp_f0_r[1] <= mem_wdata_i[1:0];
      end
      if (bus_wupgrp_wren_s[2] == 1'b1) begin
        data_wupgrp_f0_r[2] <= mem_wdata_i[1:0];
      end
      upd_strb_wupgrp_r[0] <= bus_wupgrp_wren_s[0];
      upd_strb_wupgrp_r[1] <= bus_wupgrp_wren_s[1];
      upd_strb_wupgrp_r[2] <= bus_wupgrp_wren_s[2];
    end
  end


  // ------------------------------------------------------
  //  Bus Read-Mux
  // ------------------------------------------------------
  always_comb begin: proc_bus_rd
    if ((mem_ena_i == 1'b1) && (mem_wena_i == 1'b0)) begin
      case (mem_addr_i)
        10'h000: begin
          mem_rdata_o = {23'h000000, data_wup_f1_r, data_wup_f0_r};
        end
        10'h001: begin
          mem_rdata_o = {30'h00000000, data_wupgrp_f0_r[0]};
        end
        10'h002: begin
          mem_rdata_o = {30'h00000000, data_wupgrp_f0_r[1]};
        end
        10'h003: begin
          mem_rdata_o = {30'h00000000, data_wupgrp_f0_r[2]};
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
  assign regf_wup_f0_rval_o         = data_wup_f0_r;
  assign regf_wup_f1_rval_o         = data_wup_f1_r;
  assign regf_wup_upd_o             = upd_strb_wup_r;
  assign regf_grpc_wupgrp_f0_rval_o = data_wupgrp_f0_r;
  assign regf_grpa_wupgrp_upd_o     = upd_strb_wupgrp_r;
  assign regf_grpb_wupgrp_upd_o     = upd_strb_wupgrp_r;

endmodule // word_upd_regf

`default_nettype wire
`end_keywords

// =============================================================================
//
//   @generated @fully-generated
//
//   THIS FILE IS GENERATED!!! DO NOT EDIT MANUALLY. CHANGES ARE LOST.
//
// =============================================================================
