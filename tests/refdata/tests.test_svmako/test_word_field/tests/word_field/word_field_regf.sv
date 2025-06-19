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
// Module:     word_field_regf
// Data Model: RegfMod
//             tests/test_svmako.py
//
//
// Addressing-Width: data
// Size:             1024x32 (4 KB)
//
//
// Offset    Word         Field    Bus/Core    Reset    Const    Impl
// --------  -----------  -------  ----------  -------  -------  ------
// +0        word0_rw_d0
//           [6:0]        .a       RW/RO       0x3      False    regf
//           [7]          .b       RW/RO       0        False    regf
// +1        word0_ro_d0
//           [6:0]        .a       RO/RW       0x3      False    core
//           [7]          .b       RO/RW       0        False    core
// +2        word1_rw_d0
//           [6:0]        .a       RW/RO       0x3      False    regf
//           [7]          .b       RW/RO       0        False    regf
// +3        word1_ro_d0
//           [6:0]        .a       RO/RW       0x3      False    core
//           [7]          .b       RO/RW       0        False    core
// +4        word2_rw_d0
//           [6:0]        .a       RW/RO       0x3      False    regf
//           [7]          .b       RW/RO       0        False    regf
// +5        word2_ro_d0
//           [6:0]        .a       RO/RW       0x3      False    core
//           [7]          .b       RO/RW       0        False    core
// +6        word0_rw_d1
//           [6:0]        .a       RW/RO       0x3      False    regf
//           [7]          .b       RW/RO       0        False    regf
// +7        word0_ro_d1
//           [6:0]        .a       RO/RW       0x3      False    core
//           [7]          .b       RO/RW       0        False    core
// +8        word1_rw_d1
//           [6:0]        .a       RW/RO       0x3      False    regf
//           [7]          .b       RW/RO       0        False    regf
// +9        word1_ro_d1
//           [6:0]        .a       RO/RW       0x3      False    core
//           [7]          .b       RO/RW       0        False    core
// +10       word2_rw_d1
//           [6:0]        .a       RW/RO       0x3      False    regf
//           [7]          .b       RW/RO       0        False    regf
// +11       word2_ro_d1
//           [6:0]        .a       RO/RW       0x3      False    core
//           [7]          .b       RO/RW       0        False    core
// +16:12    word0_rw_d5
//           [6:0]        .a       RW/RO       0x3      False    regf
//           [7]          .b       RW/RO       0        False    regf
// +21:17    word0_ro_d5
//           [6:0]        .a       RO/RW       0x3      False    core
//           [7]          .b       RO/RW       0        False    core
// +26:22    word1_rw_d5
//           [6:0]        .a       RW/RO       0x3      False    regf
//           [7]          .b       RW/RO       0        False    regf
// +31:27    word1_ro_d5
//           [6:0]        .a       RO/RW       0x3      False    core
//           [7]          .b       RO/RW       0        False    core
// +36:32    word2_rw_d5
//           [6:0]        .a       RW/RO       0x3      False    regf
//           [7]          .b       RW/RO       0        False    regf
// +41:37    word2_ro_d5
//           [6:0]        .a       RO/RW       0x3      False    core
//           [7]          .b       RO/RW       0        False    core
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

module word_field_regf (
  // main_i: Clock and Reset
  input  wire         main_clk_i,                         // Clock
  input  wire         main_rst_an_i,                      // Async Reset (Low-Active)
  // mem_i
  input  wire         mem_ena_i,                          // Memory Access Enable
  input  wire  [9:0]  mem_addr_i,                         // Memory Address
  input  wire         mem_wena_i,                         // Memory Write Enable
  input  wire  [31:0] mem_wdata_i,                        // Memory Write Data
  output logic [31:0] mem_rdata_o,                        // Memory Read Data
  output logic        mem_err_o,                          // Memory Access Failed.
  // regf_o
  //   regf_word0_rw_d0_a_o: bus=RW core=RO in_regf=True
  output logic [6:0]  regf_word0_rw_d0_a_rval_o,          // Core Read Value
  //   regf_word0_rw_d0_b_o: bus=RW core=RO in_regf=True
  output logic        regf_word0_rw_d0_b_rval_o,          // Core Read Value
  //   regf_word0_ro_d0_a_o: bus=RO core=RW in_regf=False
  input  wire  [6:0]  regf_word0_ro_d0_a_rbus_i,          // Bus Read Value
  //   regf_word0_ro_d0_b_o: bus=RO core=RW in_regf=False
  input  wire         regf_word0_ro_d0_b_rbus_i,          // Bus Read Value
  //   regf_word1_rw_d0_a_o: bus=RW core=RO in_regf=True
  output logic [6:0]  regf_word1_rw_d0_a_rval_o,          // Core Read Value
  //   regf_word1_rw_d0_b_o: bus=RW core=RO in_regf=True
  output logic        regf_word1_rw_d0_b_rval_o,          // Core Read Value
  //   regf_word1_ro_d0_a_o: bus=RO core=RW in_regf=False
  input  wire  [6:0]  regf_word1_ro_d0_a_rbus_i,          // Bus Read Value
  //   regf_word1_ro_d0_b_o: bus=RO core=RW in_regf=False
  input  wire         regf_word1_ro_d0_b_rbus_i,          // Bus Read Value
  //   regf_word0_rw_d1_a_o: bus=RW core=RO in_regf=True
  output logic [6:0]  regf_word0_rw_d1_a_rval_o    [0:0], // Core Read Value
  //   regf_word0_rw_d1_b_o: bus=RW core=RO in_regf=True
  output logic        regf_word0_rw_d1_b_rval_o    [0:0], // Core Read Value
  //   regf_word0_ro_d1_a_o: bus=RO core=RW in_regf=False
  input  wire  [6:0]  regf_word0_ro_d1_a_rbus_i    [0:0], // Bus Read Value
  //   regf_word0_ro_d1_b_o: bus=RO core=RW in_regf=False
  input  wire         regf_word0_ro_d1_b_rbus_i    [0:0], // Bus Read Value
  //   regf_word1_rw_d1_a_o: bus=RW core=RO in_regf=True
  output logic [6:0]  regf_word1_rw_d1_a_rval_o    [0:0], // Core Read Value
  //   regf_word1_rw_d1_b_o: bus=RW core=RO in_regf=True
  output logic        regf_word1_rw_d1_b_rval_o    [0:0], // Core Read Value
  //   regf_word1_ro_d1_a_o: bus=RO core=RW in_regf=False
  input  wire  [6:0]  regf_word1_ro_d1_a_rbus_i    [0:0], // Bus Read Value
  //   regf_word1_ro_d1_b_o: bus=RO core=RW in_regf=False
  input  wire         regf_word1_ro_d1_b_rbus_i    [0:0], // Bus Read Value
  //   regf_word0_rw_d5_a_o: bus=RW core=RO in_regf=True
  output logic [6:0]  regf_word0_rw_d5_a_rval_o    [0:4], // Core Read Value
  //   regf_word0_rw_d5_b_o: bus=RW core=RO in_regf=True
  output logic        regf_word0_rw_d5_b_rval_o    [0:4], // Core Read Value
  //   regf_word0_ro_d5_a_o: bus=RO core=RW in_regf=False
  input  wire  [6:0]  regf_word0_ro_d5_a_rbus_i    [0:4], // Bus Read Value
  //   regf_word0_ro_d5_b_o: bus=RO core=RW in_regf=False
  input  wire         regf_word0_ro_d5_b_rbus_i    [0:4], // Bus Read Value
  //   regf_word1_rw_d5_a_o: bus=RW core=RO in_regf=True
  output logic [6:0]  regf_word1_rw_d5_a_rval_o    [0:4], // Core Read Value
  //   regf_word1_rw_d5_b_o: bus=RW core=RO in_regf=True
  output logic        regf_word1_rw_d5_b_rval_o    [0:4], // Core Read Value
  //   regf_word1_ro_d5_a_o: bus=RO core=RW in_regf=False
  input  wire  [6:0]  regf_word1_ro_d5_a_rbus_i    [0:4], // Bus Read Value
  //   regf_word1_ro_d5_b_o: bus=RO core=RW in_regf=False
  input  wire         regf_word1_ro_d5_b_rbus_i    [0:4], // Bus Read Value
  // regfword_o
  //   regfword_word1_rw_d0_o: bus=RW core=RO in_regf=True
  output logic [31:0] regfword_word1_rw_d0_rval_o,        // Core Read Value
  //   regfword_word1_ro_d0_o: bus=RO core=RW in_regf=False
  input  wire  [31:0] regfword_word1_ro_d0_rbus_i,        // Bus Read Value
  //   regfword_word2_rw_d0_o: bus=RW core=RO in_regf=True
  output logic [31:0] regfword_word2_rw_d0_rval_o,        // Core Read Value
  //   regfword_word2_ro_d0_o: bus=RO core=RW in_regf=False
  input  wire  [31:0] regfword_word2_ro_d0_rbus_i,        // Bus Read Value
  //   regfword_word1_rw_d1_o: bus=RW core=RO in_regf=True
  output logic [31:0] regfword_word1_rw_d1_rval_o  [0:0], // Core Read Value
  //   regfword_word1_ro_d1_o: bus=RO core=RW in_regf=False
  input  wire  [31:0] regfword_word1_ro_d1_rbus_i  [0:0], // Bus Read Value
  //   regfword_word2_rw_d1_o: bus=RW core=RO in_regf=True
  output logic [31:0] regfword_word2_rw_d1_rval_o  [0:0], // Core Read Value
  //   regfword_word2_ro_d1_o: bus=RO core=RW in_regf=False
  input  wire  [31:0] regfword_word2_ro_d1_rbus_i  [0:0], // Bus Read Value
  //   regfword_word1_rw_d5_o: bus=RW core=RO in_regf=True
  output logic [31:0] regfword_word1_rw_d5_rval_o  [0:4], // Core Read Value
  //   regfword_word1_ro_d5_o: bus=RO core=RW in_regf=False
  input  wire  [31:0] regfword_word1_ro_d5_rbus_i  [0:4], // Bus Read Value
  //   regfword_word2_rw_d5_o: bus=RW core=RO in_regf=True
  output logic [31:0] regfword_word2_rw_d5_rval_o  [0:4], // Core Read Value
  //   regfword_word2_ro_d5_o: bus=RO core=RW in_regf=False
  input  wire  [31:0] regfword_word2_ro_d5_rbus_i  [0:4]  // Bus Read Value
);




  // ------------------------------------------------------
  //  Signals
  // ------------------------------------------------------
  logic [6:0] data_word0_rw_d0_a_r;          // Word word0_rw_d0
  logic       data_word0_rw_d0_b_r;
  logic [6:0] data_word1_rw_d0_a_r;          // Word word1_rw_d0
  logic       data_word1_rw_d0_b_r;
  logic [6:0] data_word2_rw_d0_a_r;          // Word word2_rw_d0
  logic       data_word2_rw_d0_b_r;
  logic [6:0] data_word0_rw_d1_a_r    [0:0]; // Word word0_rw_d1
  logic       data_word0_rw_d1_b_r    [0:0];
  logic [6:0] data_word1_rw_d1_a_r    [0:0]; // Word word1_rw_d1
  logic       data_word1_rw_d1_b_r    [0:0];
  logic [6:0] data_word2_rw_d1_a_r    [0:0]; // Word word2_rw_d1
  logic       data_word2_rw_d1_b_r    [0:0];
  logic [6:0] data_word0_rw_d5_a_r    [0:4]; // Word word0_rw_d5
  logic       data_word0_rw_d5_b_r    [0:4];
  logic [6:0] data_word1_rw_d5_a_r    [0:4]; // Word word1_rw_d5
  logic       data_word1_rw_d5_b_r    [0:4];
  logic [6:0] data_word2_rw_d5_a_r    [0:4]; // Word word2_rw_d5
  logic       data_word2_rw_d5_b_r    [0:4];
  logic       bus_word0_rw_d0_wren_s;        // bus word write enables
  logic       bus_word1_rw_d0_wren_s;
  logic       bus_word2_rw_d0_wren_s;
  logic       bus_word0_rw_d1_wren_s  [0:0];
  logic       bus_word1_rw_d1_wren_s  [0:0];
  logic       bus_word2_rw_d1_wren_s  [0:0];
  logic       bus_word0_rw_d5_wren_s  [0:4];
  logic       bus_word1_rw_d5_wren_s  [0:4];
  logic       bus_word2_rw_d5_wren_s  [0:4];

  always_comb begin: proc_bus_addr_dec
    // defaults
    mem_err_o = 1'b0;
    bus_word0_rw_d0_wren_s = 1'b0;
    bus_word1_rw_d0_wren_s = 1'b0;
    bus_word2_rw_d0_wren_s = 1'b0;
    bus_word0_rw_d1_wren_s = '{1{1'b0}};
    bus_word1_rw_d1_wren_s = '{1{1'b0}};
    bus_word2_rw_d1_wren_s = '{1{1'b0}};
    bus_word0_rw_d5_wren_s = '{5{1'b0}};
    bus_word1_rw_d5_wren_s = '{5{1'b0}};
    bus_word2_rw_d5_wren_s = '{5{1'b0}};


    // decode address
    if (mem_ena_i == 1'b1) begin
      case (mem_addr_i)
        10'h000: begin
          mem_err_o = 0;
          bus_word0_rw_d0_wren_s = mem_wena_i;
        end
        10'h001: begin
          mem_err_o = mem_wena_i;
        end
        10'h002: begin
          mem_err_o = 0;
          bus_word1_rw_d0_wren_s = mem_wena_i;
        end
        10'h003: begin
          mem_err_o = mem_wena_i;
        end
        10'h004: begin
          mem_err_o = 0;
          bus_word2_rw_d0_wren_s = mem_wena_i;
        end
        10'h005: begin
          mem_err_o = mem_wena_i;
        end
        10'h006: begin
          mem_err_o = 0;
          bus_word0_rw_d1_wren_s[0] = mem_wena_i;
        end
        10'h007: begin
          mem_err_o = mem_wena_i;
        end
        10'h008: begin
          mem_err_o = 0;
          bus_word1_rw_d1_wren_s[0] = mem_wena_i;
        end
        10'h009: begin
          mem_err_o = mem_wena_i;
        end
        10'h00A: begin
          mem_err_o = 0;
          bus_word2_rw_d1_wren_s[0] = mem_wena_i;
        end
        10'h00B: begin
          mem_err_o = mem_wena_i;
        end
        10'h00C: begin
          mem_err_o = 0;
          bus_word0_rw_d5_wren_s[0] = mem_wena_i;
        end
        10'h00D: begin
          mem_err_o = 0;
          bus_word0_rw_d5_wren_s[1] = mem_wena_i;
        end
        10'h00E: begin
          mem_err_o = 0;
          bus_word0_rw_d5_wren_s[2] = mem_wena_i;
        end
        10'h00F: begin
          mem_err_o = 0;
          bus_word0_rw_d5_wren_s[3] = mem_wena_i;
        end
        10'h010: begin
          mem_err_o = 0;
          bus_word0_rw_d5_wren_s[4] = mem_wena_i;
        end
        10'h011: begin
          mem_err_o = mem_wena_i;
        end
        10'h012: begin
          mem_err_o = mem_wena_i;
        end
        10'h013: begin
          mem_err_o = mem_wena_i;
        end
        10'h014: begin
          mem_err_o = mem_wena_i;
        end
        10'h015: begin
          mem_err_o = mem_wena_i;
        end
        10'h016: begin
          mem_err_o = 0;
          bus_word1_rw_d5_wren_s[0] = mem_wena_i;
        end
        10'h017: begin
          mem_err_o = 0;
          bus_word1_rw_d5_wren_s[1] = mem_wena_i;
        end
        10'h018: begin
          mem_err_o = 0;
          bus_word1_rw_d5_wren_s[2] = mem_wena_i;
        end
        10'h019: begin
          mem_err_o = 0;
          bus_word1_rw_d5_wren_s[3] = mem_wena_i;
        end
        10'h01A: begin
          mem_err_o = 0;
          bus_word1_rw_d5_wren_s[4] = mem_wena_i;
        end
        10'h01B: begin
          mem_err_o = mem_wena_i;
        end
        10'h01C: begin
          mem_err_o = mem_wena_i;
        end
        10'h01D: begin
          mem_err_o = mem_wena_i;
        end
        10'h01E: begin
          mem_err_o = mem_wena_i;
        end
        10'h01F: begin
          mem_err_o = mem_wena_i;
        end
        10'h020: begin
          mem_err_o = 0;
          bus_word2_rw_d5_wren_s[0] = mem_wena_i;
        end
        10'h021: begin
          mem_err_o = 0;
          bus_word2_rw_d5_wren_s[1] = mem_wena_i;
        end
        10'h022: begin
          mem_err_o = 0;
          bus_word2_rw_d5_wren_s[2] = mem_wena_i;
        end
        10'h023: begin
          mem_err_o = 0;
          bus_word2_rw_d5_wren_s[3] = mem_wena_i;
        end
        10'h024: begin
          mem_err_o = 0;
          bus_word2_rw_d5_wren_s[4] = mem_wena_i;
        end
        10'h025: begin
          mem_err_o = mem_wena_i;
        end
        10'h026: begin
          mem_err_o = mem_wena_i;
        end
        10'h027: begin
          mem_err_o = mem_wena_i;
        end
        10'h028: begin
          mem_err_o = mem_wena_i;
        end
        10'h029: begin
          mem_err_o = mem_wena_i;
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
      // Word: word0_rw_d0
      data_word0_rw_d0_a_r <= 7'h03;
      data_word0_rw_d0_b_r <= 1'b0;
      // Word: word0_ro_d0
      // Word: word1_rw_d0
      data_word1_rw_d0_a_r <= 7'h03;
      data_word1_rw_d0_b_r <= 1'b0;
      // Word: word1_ro_d0
      // Word: word2_rw_d0
      data_word2_rw_d0_a_r <= 7'h03;
      data_word2_rw_d0_b_r <= 1'b0;
      // Word: word2_ro_d0
      // Word: word0_rw_d1
      data_word0_rw_d1_a_r <= '{1{7'h03}};
      data_word0_rw_d1_b_r <= '{1{1'b0}};
      // Word: word0_ro_d1
      // Word: word1_rw_d1
      data_word1_rw_d1_a_r <= '{1{7'h03}};
      data_word1_rw_d1_b_r <= '{1{1'b0}};
      // Word: word1_ro_d1
      // Word: word2_rw_d1
      data_word2_rw_d1_a_r <= '{1{7'h03}};
      data_word2_rw_d1_b_r <= '{1{1'b0}};
      // Word: word2_ro_d1
      // Word: word0_rw_d5
      data_word0_rw_d5_a_r <= '{5{7'h03}};
      data_word0_rw_d5_b_r <= '{5{1'b0}};
      // Word: word0_ro_d5
      // Word: word1_rw_d5
      data_word1_rw_d5_a_r <= '{5{7'h03}};
      data_word1_rw_d5_b_r <= '{5{1'b0}};
      // Word: word1_ro_d5
      // Word: word2_rw_d5
      data_word2_rw_d5_a_r <= '{5{7'h03}};
      data_word2_rw_d5_b_r <= '{5{1'b0}};
      // Word: word2_ro_d5
    end else begin
      if (bus_word0_rw_d0_wren_s == 1'b1) begin
        data_word0_rw_d0_a_r <= mem_wdata_i[6:0];
      end
      if (bus_word0_rw_d0_wren_s == 1'b1) begin
        data_word0_rw_d0_b_r <= mem_wdata_i[7];
      end
      if (bus_word1_rw_d0_wren_s == 1'b1) begin
        data_word1_rw_d0_a_r <= mem_wdata_i[6:0];
      end
      if (bus_word1_rw_d0_wren_s == 1'b1) begin
        data_word1_rw_d0_b_r <= mem_wdata_i[7];
      end
      if (bus_word2_rw_d0_wren_s == 1'b1) begin
        data_word2_rw_d0_a_r <= mem_wdata_i[6:0];
      end
      if (bus_word2_rw_d0_wren_s == 1'b1) begin
        data_word2_rw_d0_b_r <= mem_wdata_i[7];
      end
      if (bus_word0_rw_d1_wren_s[0] == 1'b1) begin
        data_word0_rw_d1_a_r[0] <= mem_wdata_i[6:0];
      end
      if (bus_word0_rw_d1_wren_s[0] == 1'b1) begin
        data_word0_rw_d1_b_r[0] <= mem_wdata_i[7];
      end
      if (bus_word1_rw_d1_wren_s[0] == 1'b1) begin
        data_word1_rw_d1_a_r[0] <= mem_wdata_i[6:0];
      end
      if (bus_word1_rw_d1_wren_s[0] == 1'b1) begin
        data_word1_rw_d1_b_r[0] <= mem_wdata_i[7];
      end
      if (bus_word2_rw_d1_wren_s[0] == 1'b1) begin
        data_word2_rw_d1_a_r[0] <= mem_wdata_i[6:0];
      end
      if (bus_word2_rw_d1_wren_s[0] == 1'b1) begin
        data_word2_rw_d1_b_r[0] <= mem_wdata_i[7];
      end
      if (bus_word0_rw_d5_wren_s[0] == 1'b1) begin
        data_word0_rw_d5_a_r[0] <= mem_wdata_i[6:0];
      end
      if (bus_word0_rw_d5_wren_s[1] == 1'b1) begin
        data_word0_rw_d5_a_r[1] <= mem_wdata_i[6:0];
      end
      if (bus_word0_rw_d5_wren_s[2] == 1'b1) begin
        data_word0_rw_d5_a_r[2] <= mem_wdata_i[6:0];
      end
      if (bus_word0_rw_d5_wren_s[3] == 1'b1) begin
        data_word0_rw_d5_a_r[3] <= mem_wdata_i[6:0];
      end
      if (bus_word0_rw_d5_wren_s[4] == 1'b1) begin
        data_word0_rw_d5_a_r[4] <= mem_wdata_i[6:0];
      end
      if (bus_word0_rw_d5_wren_s[0] == 1'b1) begin
        data_word0_rw_d5_b_r[0] <= mem_wdata_i[7];
      end
      if (bus_word0_rw_d5_wren_s[1] == 1'b1) begin
        data_word0_rw_d5_b_r[1] <= mem_wdata_i[7];
      end
      if (bus_word0_rw_d5_wren_s[2] == 1'b1) begin
        data_word0_rw_d5_b_r[2] <= mem_wdata_i[7];
      end
      if (bus_word0_rw_d5_wren_s[3] == 1'b1) begin
        data_word0_rw_d5_b_r[3] <= mem_wdata_i[7];
      end
      if (bus_word0_rw_d5_wren_s[4] == 1'b1) begin
        data_word0_rw_d5_b_r[4] <= mem_wdata_i[7];
      end
      if (bus_word1_rw_d5_wren_s[0] == 1'b1) begin
        data_word1_rw_d5_a_r[0] <= mem_wdata_i[6:0];
      end
      if (bus_word1_rw_d5_wren_s[1] == 1'b1) begin
        data_word1_rw_d5_a_r[1] <= mem_wdata_i[6:0];
      end
      if (bus_word1_rw_d5_wren_s[2] == 1'b1) begin
        data_word1_rw_d5_a_r[2] <= mem_wdata_i[6:0];
      end
      if (bus_word1_rw_d5_wren_s[3] == 1'b1) begin
        data_word1_rw_d5_a_r[3] <= mem_wdata_i[6:0];
      end
      if (bus_word1_rw_d5_wren_s[4] == 1'b1) begin
        data_word1_rw_d5_a_r[4] <= mem_wdata_i[6:0];
      end
      if (bus_word1_rw_d5_wren_s[0] == 1'b1) begin
        data_word1_rw_d5_b_r[0] <= mem_wdata_i[7];
      end
      if (bus_word1_rw_d5_wren_s[1] == 1'b1) begin
        data_word1_rw_d5_b_r[1] <= mem_wdata_i[7];
      end
      if (bus_word1_rw_d5_wren_s[2] == 1'b1) begin
        data_word1_rw_d5_b_r[2] <= mem_wdata_i[7];
      end
      if (bus_word1_rw_d5_wren_s[3] == 1'b1) begin
        data_word1_rw_d5_b_r[3] <= mem_wdata_i[7];
      end
      if (bus_word1_rw_d5_wren_s[4] == 1'b1) begin
        data_word1_rw_d5_b_r[4] <= mem_wdata_i[7];
      end
      if (bus_word2_rw_d5_wren_s[0] == 1'b1) begin
        data_word2_rw_d5_a_r[0] <= mem_wdata_i[6:0];
      end
      if (bus_word2_rw_d5_wren_s[1] == 1'b1) begin
        data_word2_rw_d5_a_r[1] <= mem_wdata_i[6:0];
      end
      if (bus_word2_rw_d5_wren_s[2] == 1'b1) begin
        data_word2_rw_d5_a_r[2] <= mem_wdata_i[6:0];
      end
      if (bus_word2_rw_d5_wren_s[3] == 1'b1) begin
        data_word2_rw_d5_a_r[3] <= mem_wdata_i[6:0];
      end
      if (bus_word2_rw_d5_wren_s[4] == 1'b1) begin
        data_word2_rw_d5_a_r[4] <= mem_wdata_i[6:0];
      end
      if (bus_word2_rw_d5_wren_s[0] == 1'b1) begin
        data_word2_rw_d5_b_r[0] <= mem_wdata_i[7];
      end
      if (bus_word2_rw_d5_wren_s[1] == 1'b1) begin
        data_word2_rw_d5_b_r[1] <= mem_wdata_i[7];
      end
      if (bus_word2_rw_d5_wren_s[2] == 1'b1) begin
        data_word2_rw_d5_b_r[2] <= mem_wdata_i[7];
      end
      if (bus_word2_rw_d5_wren_s[3] == 1'b1) begin
        data_word2_rw_d5_b_r[3] <= mem_wdata_i[7];
      end
      if (bus_word2_rw_d5_wren_s[4] == 1'b1) begin
        data_word2_rw_d5_b_r[4] <= mem_wdata_i[7];
      end
    end
  end

  // ------------------------------------------------------
  //  Bus Read-Mux
  // ------------------------------------------------------
  always_comb begin: proc_bus_rd
    if ((mem_ena_i == 1'b1) && (mem_wena_i == 1'b0)) begin
      case (mem_addr_i)
        10'h000: begin
          mem_rdata_o = {24'h000000, data_word0_rw_d0_b_r, data_word0_rw_d0_a_r};
        end
        10'h001: begin
          mem_rdata_o = {24'h000000, regf_word0_ro_d0_b_rbus_i, regf_word0_ro_d0_a_rbus_i};
        end
        10'h002: begin
          mem_rdata_o = {24'h000000, data_word1_rw_d0_b_r, data_word1_rw_d0_a_r};
        end
        10'h003: begin
          mem_rdata_o = {24'h000000, regf_word1_ro_d0_b_rbus_i, regf_word1_ro_d0_a_rbus_i};
        end
        10'h004: begin
          mem_rdata_o = {24'h000000, data_word2_rw_d0_b_r, data_word2_rw_d0_a_r};
        end
        10'h005: begin
          mem_rdata_o = {24'h000000, regf_word2_ro_d0_b_rbus_i, regf_word2_ro_d0_a_rbus_i};
        end
        10'h006: begin
          mem_rdata_o = {24'h000000, data_word0_rw_d1_b_r[0], data_word0_rw_d1_a_r[0]};
        end
        10'h007: begin
          mem_rdata_o = {24'h000000, regf_word0_ro_d1_b_rbus_i[0], regf_word0_ro_d1_a_rbus_i[0]};
        end
        10'h008: begin
          mem_rdata_o = {24'h000000, data_word1_rw_d1_b_r[0], data_word1_rw_d1_a_r[0]};
        end
        10'h009: begin
          mem_rdata_o = {24'h000000, regf_word1_ro_d1_b_rbus_i[0], regf_word1_ro_d1_a_rbus_i[0]};
        end
        10'h00A: begin
          mem_rdata_o = {24'h000000, data_word2_rw_d1_b_r[0], data_word2_rw_d1_a_r[0]};
        end
        10'h00B: begin
          mem_rdata_o = {24'h000000, regf_word2_ro_d1_b_rbus_i[0], regf_word2_ro_d1_a_rbus_i[0]};
        end
        10'h00C: begin
          mem_rdata_o = {24'h000000, data_word0_rw_d5_b_r[0], data_word0_rw_d5_a_r[0]};
        end
        10'h00D: begin
          mem_rdata_o = {24'h000000, data_word0_rw_d5_b_r[1], data_word0_rw_d5_a_r[1]};
        end
        10'h00E: begin
          mem_rdata_o = {24'h000000, data_word0_rw_d5_b_r[2], data_word0_rw_d5_a_r[2]};
        end
        10'h00F: begin
          mem_rdata_o = {24'h000000, data_word0_rw_d5_b_r[3], data_word0_rw_d5_a_r[3]};
        end
        10'h010: begin
          mem_rdata_o = {24'h000000, data_word0_rw_d5_b_r[4], data_word0_rw_d5_a_r[4]};
        end
        10'h011: begin
          mem_rdata_o = {24'h000000, regf_word0_ro_d5_b_rbus_i[0], regf_word0_ro_d5_a_rbus_i[0]};
        end
        10'h012: begin
          mem_rdata_o = {24'h000000, regf_word0_ro_d5_b_rbus_i[1], regf_word0_ro_d5_a_rbus_i[1]};
        end
        10'h013: begin
          mem_rdata_o = {24'h000000, regf_word0_ro_d5_b_rbus_i[2], regf_word0_ro_d5_a_rbus_i[2]};
        end
        10'h014: begin
          mem_rdata_o = {24'h000000, regf_word0_ro_d5_b_rbus_i[3], regf_word0_ro_d5_a_rbus_i[3]};
        end
        10'h015: begin
          mem_rdata_o = {24'h000000, regf_word0_ro_d5_b_rbus_i[4], regf_word0_ro_d5_a_rbus_i[4]};
        end
        10'h016: begin
          mem_rdata_o = {24'h000000, data_word1_rw_d5_b_r[0], data_word1_rw_d5_a_r[0]};
        end
        10'h017: begin
          mem_rdata_o = {24'h000000, data_word1_rw_d5_b_r[1], data_word1_rw_d5_a_r[1]};
        end
        10'h018: begin
          mem_rdata_o = {24'h000000, data_word1_rw_d5_b_r[2], data_word1_rw_d5_a_r[2]};
        end
        10'h019: begin
          mem_rdata_o = {24'h000000, data_word1_rw_d5_b_r[3], data_word1_rw_d5_a_r[3]};
        end
        10'h01A: begin
          mem_rdata_o = {24'h000000, data_word1_rw_d5_b_r[4], data_word1_rw_d5_a_r[4]};
        end
        10'h01B: begin
          mem_rdata_o = {24'h000000, regf_word1_ro_d5_b_rbus_i[0], regf_word1_ro_d5_a_rbus_i[0]};
        end
        10'h01C: begin
          mem_rdata_o = {24'h000000, regf_word1_ro_d5_b_rbus_i[1], regf_word1_ro_d5_a_rbus_i[1]};
        end
        10'h01D: begin
          mem_rdata_o = {24'h000000, regf_word1_ro_d5_b_rbus_i[2], regf_word1_ro_d5_a_rbus_i[2]};
        end
        10'h01E: begin
          mem_rdata_o = {24'h000000, regf_word1_ro_d5_b_rbus_i[3], regf_word1_ro_d5_a_rbus_i[3]};
        end
        10'h01F: begin
          mem_rdata_o = {24'h000000, regf_word1_ro_d5_b_rbus_i[4], regf_word1_ro_d5_a_rbus_i[4]};
        end
        10'h020: begin
          mem_rdata_o = {24'h000000, data_word2_rw_d5_b_r[0], data_word2_rw_d5_a_r[0]};
        end
        10'h021: begin
          mem_rdata_o = {24'h000000, data_word2_rw_d5_b_r[1], data_word2_rw_d5_a_r[1]};
        end
        10'h022: begin
          mem_rdata_o = {24'h000000, data_word2_rw_d5_b_r[2], data_word2_rw_d5_a_r[2]};
        end
        10'h023: begin
          mem_rdata_o = {24'h000000, data_word2_rw_d5_b_r[3], data_word2_rw_d5_a_r[3]};
        end
        10'h024: begin
          mem_rdata_o = {24'h000000, data_word2_rw_d5_b_r[4], data_word2_rw_d5_a_r[4]};
        end
        10'h025: begin
          mem_rdata_o = {24'h000000, regf_word2_ro_d5_b_rbus_i[0], regf_word2_ro_d5_a_rbus_i[0]};
        end
        10'h026: begin
          mem_rdata_o = {24'h000000, regf_word2_ro_d5_b_rbus_i[1], regf_word2_ro_d5_a_rbus_i[1]};
        end
        10'h027: begin
          mem_rdata_o = {24'h000000, regf_word2_ro_d5_b_rbus_i[2], regf_word2_ro_d5_a_rbus_i[2]};
        end
        10'h028: begin
          mem_rdata_o = {24'h000000, regf_word2_ro_d5_b_rbus_i[3], regf_word2_ro_d5_a_rbus_i[3]};
        end
        10'h029: begin
          mem_rdata_o = {24'h000000, regf_word2_ro_d5_b_rbus_i[4], regf_word2_ro_d5_a_rbus_i[4]};
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
  assign regf_word0_rw_d0_a_rval_o = data_word0_rw_d0_a_r;
  assign regf_word0_rw_d0_b_rval_o = data_word0_rw_d0_b_r;
  assign regf_word1_rw_d0_a_rval_o = data_word1_rw_d0_a_r;
  assign regf_word1_rw_d0_b_rval_o = data_word1_rw_d0_b_r;
  assign regf_word2_rw_d0_a_rval_o = data_word2_rw_d0_a_r;
  assign regf_word2_rw_d0_b_rval_o = data_word2_rw_d0_b_r;
  assign regf_word0_rw_d1_a_rval_o = data_word0_rw_d1_a_r;
  assign regf_word0_rw_d1_b_rval_o = data_word0_rw_d1_b_r;
  assign regf_word1_rw_d1_a_rval_o = data_word1_rw_d1_a_r;
  assign regf_word1_rw_d1_b_rval_o = data_word1_rw_d1_b_r;
  assign regf_word2_rw_d1_a_rval_o = data_word2_rw_d1_a_r;
  assign regf_word2_rw_d1_b_rval_o = data_word2_rw_d1_b_r;
  assign regf_word0_rw_d5_a_rval_o = data_word0_rw_d5_a_r;
  assign regf_word0_rw_d5_b_rval_o = data_word0_rw_d5_b_r;
  assign regf_word1_rw_d5_a_rval_o = data_word1_rw_d5_a_r;
  assign regf_word1_rw_d5_b_rval_o = data_word1_rw_d5_b_r;
  assign regf_word2_rw_d5_a_rval_o = data_word2_rw_d5_a_r;
  assign regf_word2_rw_d5_b_rval_o = data_word2_rw_d5_b_r;

endmodule // word_field_regf

`default_nettype wire
`end_keywords

// =============================================================================
//
//   @generated @fully-generated
//
//   THIS FILE IS GENERATED!!! DO NOT EDIT MANUALLY. CHANGES ARE LOST.
//
// =============================================================================
