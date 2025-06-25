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
// Offset    Word                      Field    Bus/Core    Reset    Const    Impl
// --------  ------------------------  -------  ----------  -------  -------  ------
// +0        word0_bRW_cNone_iNone_d0
//           [5:0]                     .a       RW/RO       0x3      False    regf
//           [8]                       .b       RW/RO       0        False    regf
//           [9]                       .s0      RW/RO       0        False    regf
//           [10]                      .s1      RW/RO       0        False    regf
//           [11]                      .s2      RW/RO       0        False    regf
// +1        word0_bRO_cNone_iNone_d0
//           [5:0]                     .a       RO/RW       0x3      False    core
//           [8]                       .b       RO/RW       0        False    core
//           [9]                       .s0      RO/RW       0        False    core
//           [10]                      .s1      RO/RW       0        False    core
//           [11]                      .s2      RO/RW       0        False    core
// +2        word1_bRW_cNone_iNone_d0
//           [5:0]                     .a       RW/RO       0x3      False    regf
//           [8]                       .b       RW/RO       0        False    regf
//           [9]                       .s0      RW/RO       0        False    regf
//           [10]                      .s1      RW/RO       0        False    regf
//           [11]                      .s2      RW/RO       0        False    regf
// +3        word1_bRO_cNone_iNone_d0
//           [5:0]                     .a       RO/RW       0x3      False    core
//           [8]                       .b       RO/RW       0        False    core
//           [9]                       .s0      RO/RW       0        False    core
//           [10]                      .s1      RO/RW       0        False    core
//           [11]                      .s2      RO/RW       0        False    core
// +4        word2_bRW_cNone_iNone_d0
//           [5:0]                     .a       RW/RO       0x3      False    regf
//           [8]                       .b       RW/RO       0        False    regf
//           [9]                       .s0      RW/RO       0        False    regf
//           [10]                      .s1      RW/RO       0        False    regf
//           [11]                      .s2      RW/RO       0        False    regf
// +5        word0_bRW_cNone_iNone_d1
//           [5:0]                     .a       RW/RO       0x3      False    regf
//           [8]                       .b       RW/RO       0        False    regf
//           [9]                       .s0      RW/RO       0        False    regf
//           [10]                      .s1      RW/RO       0        False    regf
//           [11]                      .s2      RW/RO       0        False    regf
// +6        word0_bRO_cNone_iNone_d1
//           [5:0]                     .a       RO/RW       0x3      False    core
//           [8]                       .b       RO/RW       0        False    core
//           [9]                       .s0      RO/RW       0        False    core
//           [10]                      .s1      RO/RW       0        False    core
//           [11]                      .s2      RO/RW       0        False    core
// +7        word1_bRW_cNone_iNone_d1
//           [5:0]                     .a       RW/RO       0x3      False    regf
//           [8]                       .b       RW/RO       0        False    regf
//           [9]                       .s0      RW/RO       0        False    regf
//           [10]                      .s1      RW/RO       0        False    regf
//           [11]                      .s2      RW/RO       0        False    regf
// +8        word1_bRO_cNone_iNone_d1
//           [5:0]                     .a       RO/RW       0x3      False    core
//           [8]                       .b       RO/RW       0        False    core
//           [9]                       .s0      RO/RW       0        False    core
//           [10]                      .s1      RO/RW       0        False    core
//           [11]                      .s2      RO/RW       0        False    core
// +9        word2_bRW_cNone_iNone_d1
//           [5:0]                     .a       RW/RO       0x3      False    regf
//           [8]                       .b       RW/RO       0        False    regf
//           [9]                       .s0      RW/RO       0        False    regf
//           [10]                      .s1      RW/RO       0        False    regf
//           [11]                      .s2      RW/RO       0        False    regf
// +14:10    word0_bRW_cNone_iNone_d5
//           [5:0]                     .a       RW/RO       0x3      False    regf
//           [8]                       .b       RW/RO       0        False    regf
//           [9]                       .s0      RW/RO       0        False    regf
//           [10]                      .s1      RW/RO       0        False    regf
//           [11]                      .s2      RW/RO       0        False    regf
// +19:15    word0_bRO_cNone_iNone_d5
//           [5:0]                     .a       RO/RW       0x3      False    core
//           [8]                       .b       RO/RW       0        False    core
//           [9]                       .s0      RO/RW       0        False    core
//           [10]                      .s1      RO/RW       0        False    core
//           [11]                      .s2      RO/RW       0        False    core
// +24:20    word1_bRW_cNone_iNone_d5
//           [5:0]                     .a       RW/RO       0x3      False    regf
//           [8]                       .b       RW/RO       0        False    regf
//           [9]                       .s0      RW/RO       0        False    regf
//           [10]                      .s1      RW/RO       0        False    regf
//           [11]                      .s2      RW/RO       0        False    regf
// +29:25    word1_bRO_cNone_iNone_d5
//           [5:0]                     .a       RO/RW       0x3      False    core
//           [8]                       .b       RO/RW       0        False    core
//           [9]                       .s0      RO/RW       0        False    core
//           [10]                      .s1      RO/RW       0        False    core
//           [11]                      .s2      RO/RW       0        False    core
// +34:30    word2_bRW_cNone_iNone_d5
//           [5:0]                     .a       RW/RO       0x3      False    regf
//           [8]                       .b       RW/RO       0        False    regf
//           [9]                       .s0      RW/RO       0        False    regf
//           [10]                      .s1      RW/RO       0        False    regf
//           [11]                      .s2      RW/RO       0        False    regf
// +35       www
//           [5:0]                     .a       RW/RO       0x3      False    regf
//           [8]                       .b       RW/RO       0        False    regf
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
  input  wire         main_clk_i,                                      // Clock
  input  wire         main_rst_an_i,                                   // Async Reset (Low-Active)
  // mem_i
  input  wire         mem_ena_i,                                       // Memory Access Enable
  input  wire  [9:0]  mem_addr_i,                                      // Memory Address
  input  wire         mem_wena_i,                                      // Memory Write Enable
  input  wire  [31:0] mem_wdata_i,                                     // Memory Write Data
  output logic [31:0] mem_rdata_o,                                     // Memory Read Data
  output logic        mem_err_o,                                       // Memory Access Failed.
  // regf_o
  //   regf_word0_bRW_cNone_iNone_d0_a_o: bus=RW core=RO in_regf=True
  output logic [5:0]  regf_word0_bRW_cNone_iNone_d0_a_rval_o,          // Core Read Value
  //   regf_word0_bRW_cNone_iNone_d0_b_o: bus=RW core=RO in_regf=True
  output logic        regf_word0_bRW_cNone_iNone_d0_b_rval_o,          // Core Read Value
  //   regf_word0_bRW_cNone_iNone_d0_s0_o: bus=RW core=RO in_regf=True
  output logic        regf_word0_bRW_cNone_iNone_d0_s0_rval_o,         // Core Read Value
  //   regf_word0_bRW_cNone_iNone_d0_s1_o: bus=RW core=RO in_regf=True
  output logic        regf_word0_bRW_cNone_iNone_d0_s1_rval_o,         // Core Read Value
  //   regf_word0_bRW_cNone_iNone_d0_s2_o: bus=RW core=RO in_regf=True
  output logic        regf_word0_bRW_cNone_iNone_d0_s2_rval_o,         // Core Read Value
  output logic        regf_word0_bRW_cNone_iNone_d0_s2_upd_o,          // Update Strobe
  //   regf_word0_bRO_cNone_iNone_d0_a_o: bus=RO core=RW in_regf=False
  input  wire  [5:0]  regf_word0_bRO_cNone_iNone_d0_a_rbus_i,          // Bus Read Value
  //   regf_word0_bRO_cNone_iNone_d0_b_o: bus=RO core=RW in_regf=False
  input  wire         regf_word0_bRO_cNone_iNone_d0_b_rbus_i,          // Bus Read Value
  //   regf_word0_bRO_cNone_iNone_d0_s0_o: bus=RO core=RW in_regf=False
  input  wire         regf_word0_bRO_cNone_iNone_d0_s0_rbus_i,         // Bus Read Value
  //   regf_word0_bRO_cNone_iNone_d0_s1_o: bus=RO core=RW in_regf=False
  input  wire         regf_word0_bRO_cNone_iNone_d0_s1_rbus_i,         // Bus Read Value
  //   regf_word0_bRO_cNone_iNone_d0_s2_o: bus=RO core=RW in_regf=False
  input  wire         regf_word0_bRO_cNone_iNone_d0_s2_rbus_i,         // Bus Read Value
  //   regf_word1_bRW_cNone_iNone_d0_a_o: bus=RW core=RO in_regf=True
  output logic [5:0]  regf_word1_bRW_cNone_iNone_d0_a_rval_o,          // Core Read Value
  //   regf_word1_bRW_cNone_iNone_d0_b_o: bus=RW core=RO in_regf=True
  output logic        regf_word1_bRW_cNone_iNone_d0_b_rval_o,          // Core Read Value
  //   regf_word1_bRW_cNone_iNone_d0_s0_o: bus=RW core=RO in_regf=True
  output logic        regf_word1_bRW_cNone_iNone_d0_s0_rval_o,         // Core Read Value
  //   regf_word1_bRW_cNone_iNone_d0_s1_o: bus=RW core=RO in_regf=True
  output logic        regf_word1_bRW_cNone_iNone_d0_s1_rval_o,         // Core Read Value
  //   regf_word1_bRW_cNone_iNone_d0_s2_o: bus=RW core=RO in_regf=True
  output logic        regf_word1_bRW_cNone_iNone_d0_s2_rval_o,         // Core Read Value
  output logic        regf_word1_bRW_cNone_iNone_d0_s2_upd_o,          // Update Strobe
  //   regf_word1_bRO_cNone_iNone_d0_a_o: bus=RO core=RW in_regf=False
  input  wire  [5:0]  regf_word1_bRO_cNone_iNone_d0_a_rbus_i,          // Bus Read Value
  //   regf_word1_bRO_cNone_iNone_d0_b_o: bus=RO core=RW in_regf=False
  input  wire         regf_word1_bRO_cNone_iNone_d0_b_rbus_i,          // Bus Read Value
  //   regf_word1_bRO_cNone_iNone_d0_s0_o: bus=RO core=RW in_regf=False
  input  wire         regf_word1_bRO_cNone_iNone_d0_s0_rbus_i,         // Bus Read Value
  //   regf_word1_bRO_cNone_iNone_d0_s1_o: bus=RO core=RW in_regf=False
  input  wire         regf_word1_bRO_cNone_iNone_d0_s1_rbus_i,         // Bus Read Value
  //   regf_word1_bRO_cNone_iNone_d0_s2_o: bus=RO core=RW in_regf=False
  input  wire         regf_word1_bRO_cNone_iNone_d0_s2_rbus_i,         // Bus Read Value
  //   regf_word2_bRW_cNone_iNone_d0_a_o: bus=RW core=RO in_regf=True
  output logic [5:0]  regf_word2_bRW_cNone_iNone_d0_a_rval_o,          // Core Read Value
  output logic        regf_word2_bRW_cNone_iNone_d0_a_upd_o,           // Update Strobe
  //   regf_word2_bRW_cNone_iNone_d0_b_o: bus=RW core=RO in_regf=True
  output logic        regf_word2_bRW_cNone_iNone_d0_b_rval_o,          // Core Read Value
  output logic        regf_word2_bRW_cNone_iNone_d0_b_upd_o,           // Update Strobe
  //   regf_word2_bRW_cNone_iNone_d0_s0_o: bus=RW core=RO in_regf=True
  output logic        regf_word2_bRW_cNone_iNone_d0_s0_rval_o,         // Core Read Value
  output logic        regf_word2_bRW_cNone_iNone_d0_s0_upd_o,          // Update Strobe
  //   regf_word2_bRW_cNone_iNone_d0_s1_o: bus=RW core=RO in_regf=True
  output logic        regf_word2_bRW_cNone_iNone_d0_s1_rval_o,         // Core Read Value
  //   regf_word2_bRW_cNone_iNone_d0_s2_o: bus=RW core=RO in_regf=True
  output logic        regf_word2_bRW_cNone_iNone_d0_s2_rval_o,         // Core Read Value
  output logic        regf_word2_bRW_cNone_iNone_d0_s2_upd_o,          // Update Strobe
  //   regf_word0_bRW_cNone_iNone_d1_a_o: bus=RW core=RO in_regf=True
  output logic [5:0]  regf_word0_bRW_cNone_iNone_d1_a_rval_o    [0:0], // Core Read Value
  //   regf_word0_bRW_cNone_iNone_d1_b_o: bus=RW core=RO in_regf=True
  output logic        regf_word0_bRW_cNone_iNone_d1_b_rval_o    [0:0], // Core Read Value
  //   regf_word0_bRW_cNone_iNone_d1_s0_o: bus=RW core=RO in_regf=True
  output logic        regf_word0_bRW_cNone_iNone_d1_s0_rval_o   [0:0], // Core Read Value
  //   regf_word0_bRW_cNone_iNone_d1_s1_o: bus=RW core=RO in_regf=True
  output logic        regf_word0_bRW_cNone_iNone_d1_s1_rval_o   [0:0], // Core Read Value
  //   regf_word0_bRW_cNone_iNone_d1_s2_o: bus=RW core=RO in_regf=True
  output logic        regf_word0_bRW_cNone_iNone_d1_s2_upd_o    [0:0], // Update Strobe
  output logic        regf_word0_bRW_cNone_iNone_d1_s2_rval_o   [0:0], // Core Read Value
  //   regf_word0_bRO_cNone_iNone_d1_a_o: bus=RO core=RW in_regf=False
  input  wire  [5:0]  regf_word0_bRO_cNone_iNone_d1_a_rbus_i    [0:0], // Bus Read Value
  //   regf_word0_bRO_cNone_iNone_d1_b_o: bus=RO core=RW in_regf=False
  input  wire         regf_word0_bRO_cNone_iNone_d1_b_rbus_i    [0:0], // Bus Read Value
  //   regf_word0_bRO_cNone_iNone_d1_s0_o: bus=RO core=RW in_regf=False
  input  wire         regf_word0_bRO_cNone_iNone_d1_s0_rbus_i   [0:0], // Bus Read Value
  //   regf_word0_bRO_cNone_iNone_d1_s1_o: bus=RO core=RW in_regf=False
  input  wire         regf_word0_bRO_cNone_iNone_d1_s1_rbus_i   [0:0], // Bus Read Value
  //   regf_word0_bRO_cNone_iNone_d1_s2_o: bus=RO core=RW in_regf=False
  input  wire         regf_word0_bRO_cNone_iNone_d1_s2_rbus_i   [0:0], // Bus Read Value
  //   regf_word1_bRW_cNone_iNone_d1_a_o: bus=RW core=RO in_regf=True
  output logic [5:0]  regf_word1_bRW_cNone_iNone_d1_a_rval_o    [0:0], // Core Read Value
  //   regf_word1_bRW_cNone_iNone_d1_b_o: bus=RW core=RO in_regf=True
  output logic        regf_word1_bRW_cNone_iNone_d1_b_rval_o    [0:0], // Core Read Value
  //   regf_word1_bRW_cNone_iNone_d1_s0_o: bus=RW core=RO in_regf=True
  output logic        regf_word1_bRW_cNone_iNone_d1_s0_rval_o   [0:0], // Core Read Value
  //   regf_word1_bRW_cNone_iNone_d1_s1_o: bus=RW core=RO in_regf=True
  output logic        regf_word1_bRW_cNone_iNone_d1_s1_rval_o   [0:0], // Core Read Value
  //   regf_word1_bRW_cNone_iNone_d1_s2_o: bus=RW core=RO in_regf=True
  output logic        regf_word1_bRW_cNone_iNone_d1_s2_upd_o    [0:0], // Update Strobe
  output logic        regf_word1_bRW_cNone_iNone_d1_s2_rval_o   [0:0], // Core Read Value
  //   regf_word1_bRO_cNone_iNone_d1_a_o: bus=RO core=RW in_regf=False
  input  wire  [5:0]  regf_word1_bRO_cNone_iNone_d1_a_rbus_i    [0:0], // Bus Read Value
  //   regf_word1_bRO_cNone_iNone_d1_b_o: bus=RO core=RW in_regf=False
  input  wire         regf_word1_bRO_cNone_iNone_d1_b_rbus_i    [0:0], // Bus Read Value
  //   regf_word1_bRO_cNone_iNone_d1_s0_o: bus=RO core=RW in_regf=False
  input  wire         regf_word1_bRO_cNone_iNone_d1_s0_rbus_i   [0:0], // Bus Read Value
  //   regf_word1_bRO_cNone_iNone_d1_s1_o: bus=RO core=RW in_regf=False
  input  wire         regf_word1_bRO_cNone_iNone_d1_s1_rbus_i   [0:0], // Bus Read Value
  //   regf_word1_bRO_cNone_iNone_d1_s2_o: bus=RO core=RW in_regf=False
  input  wire         regf_word1_bRO_cNone_iNone_d1_s2_rbus_i   [0:0], // Bus Read Value
  //   regf_word2_bRW_cNone_iNone_d1_a_o: bus=RW core=RO in_regf=True
  output logic        regf_word2_bRW_cNone_iNone_d1_a_upd_o     [0:0], // Update Strobe
  output logic [5:0]  regf_word2_bRW_cNone_iNone_d1_a_rval_o    [0:0], // Core Read Value
  //   regf_word2_bRW_cNone_iNone_d1_b_o: bus=RW core=RO in_regf=True
  output logic        regf_word2_bRW_cNone_iNone_d1_b_upd_o     [0:0], // Update Strobe
  output logic        regf_word2_bRW_cNone_iNone_d1_b_rval_o    [0:0], // Core Read Value
  //   regf_word2_bRW_cNone_iNone_d1_s0_o: bus=RW core=RO in_regf=True
  output logic        regf_word2_bRW_cNone_iNone_d1_s0_upd_o    [0:0], // Update Strobe
  output logic        regf_word2_bRW_cNone_iNone_d1_s0_rval_o   [0:0], // Core Read Value
  //   regf_word2_bRW_cNone_iNone_d1_s1_o: bus=RW core=RO in_regf=True
  output logic        regf_word2_bRW_cNone_iNone_d1_s1_rval_o   [0:0], // Core Read Value
  //   regf_word2_bRW_cNone_iNone_d1_s2_o: bus=RW core=RO in_regf=True
  output logic        regf_word2_bRW_cNone_iNone_d1_s2_upd_o    [0:0], // Update Strobe
  output logic        regf_word2_bRW_cNone_iNone_d1_s2_rval_o   [0:0], // Core Read Value
  //   regf_word0_bRW_cNone_iNone_d5_a_o: bus=RW core=RO in_regf=True
  output logic [5:0]  regf_word0_bRW_cNone_iNone_d5_a_rval_o    [0:4], // Core Read Value
  //   regf_word0_bRW_cNone_iNone_d5_b_o: bus=RW core=RO in_regf=True
  output logic        regf_word0_bRW_cNone_iNone_d5_b_rval_o    [0:4], // Core Read Value
  //   regf_word0_bRW_cNone_iNone_d5_s0_o: bus=RW core=RO in_regf=True
  output logic        regf_word0_bRW_cNone_iNone_d5_s0_rval_o   [0:4], // Core Read Value
  //   regf_word0_bRW_cNone_iNone_d5_s1_o: bus=RW core=RO in_regf=True
  output logic        regf_word0_bRW_cNone_iNone_d5_s1_rval_o   [0:4], // Core Read Value
  //   regf_word0_bRW_cNone_iNone_d5_s2_o: bus=RW core=RO in_regf=True
  output logic        regf_word0_bRW_cNone_iNone_d5_s2_upd_o    [0:4], // Update Strobe
  output logic        regf_word0_bRW_cNone_iNone_d5_s2_rval_o   [0:4], // Core Read Value
  //   regf_word0_bRO_cNone_iNone_d5_a_o: bus=RO core=RW in_regf=False
  input  wire  [5:0]  regf_word0_bRO_cNone_iNone_d5_a_rbus_i    [0:4], // Bus Read Value
  //   regf_word0_bRO_cNone_iNone_d5_b_o: bus=RO core=RW in_regf=False
  input  wire         regf_word0_bRO_cNone_iNone_d5_b_rbus_i    [0:4], // Bus Read Value
  //   regf_word0_bRO_cNone_iNone_d5_s0_o: bus=RO core=RW in_regf=False
  input  wire         regf_word0_bRO_cNone_iNone_d5_s0_rbus_i   [0:4], // Bus Read Value
  //   regf_word0_bRO_cNone_iNone_d5_s1_o: bus=RO core=RW in_regf=False
  input  wire         regf_word0_bRO_cNone_iNone_d5_s1_rbus_i   [0:4], // Bus Read Value
  //   regf_word0_bRO_cNone_iNone_d5_s2_o: bus=RO core=RW in_regf=False
  input  wire         regf_word0_bRO_cNone_iNone_d5_s2_rbus_i   [0:4], // Bus Read Value
  //   regf_word1_bRW_cNone_iNone_d5_a_o: bus=RW core=RO in_regf=True
  output logic [5:0]  regf_word1_bRW_cNone_iNone_d5_a_rval_o    [0:4], // Core Read Value
  //   regf_word1_bRW_cNone_iNone_d5_b_o: bus=RW core=RO in_regf=True
  output logic        regf_word1_bRW_cNone_iNone_d5_b_rval_o    [0:4], // Core Read Value
  //   regf_word1_bRW_cNone_iNone_d5_s0_o: bus=RW core=RO in_regf=True
  output logic        regf_word1_bRW_cNone_iNone_d5_s0_rval_o   [0:4], // Core Read Value
  //   regf_word1_bRW_cNone_iNone_d5_s1_o: bus=RW core=RO in_regf=True
  output logic        regf_word1_bRW_cNone_iNone_d5_s1_rval_o   [0:4], // Core Read Value
  //   regf_word1_bRW_cNone_iNone_d5_s2_o: bus=RW core=RO in_regf=True
  output logic        regf_word1_bRW_cNone_iNone_d5_s2_upd_o    [0:4], // Update Strobe
  output logic        regf_word1_bRW_cNone_iNone_d5_s2_rval_o   [0:4], // Core Read Value
  //   regf_word1_bRO_cNone_iNone_d5_a_o: bus=RO core=RW in_regf=False
  input  wire  [5:0]  regf_word1_bRO_cNone_iNone_d5_a_rbus_i    [0:4], // Bus Read Value
  //   regf_word1_bRO_cNone_iNone_d5_b_o: bus=RO core=RW in_regf=False
  input  wire         regf_word1_bRO_cNone_iNone_d5_b_rbus_i    [0:4], // Bus Read Value
  //   regf_word1_bRO_cNone_iNone_d5_s0_o: bus=RO core=RW in_regf=False
  input  wire         regf_word1_bRO_cNone_iNone_d5_s0_rbus_i   [0:4], // Bus Read Value
  //   regf_word1_bRO_cNone_iNone_d5_s1_o: bus=RO core=RW in_regf=False
  input  wire         regf_word1_bRO_cNone_iNone_d5_s1_rbus_i   [0:4], // Bus Read Value
  //   regf_word1_bRO_cNone_iNone_d5_s2_o: bus=RO core=RW in_regf=False
  input  wire         regf_word1_bRO_cNone_iNone_d5_s2_rbus_i   [0:4], // Bus Read Value
  //   regf_word2_bRW_cNone_iNone_d5_a_o: bus=RW core=RO in_regf=True
  output logic        regf_word2_bRW_cNone_iNone_d5_a_upd_o     [0:4], // Update Strobe
  output logic [5:0]  regf_word2_bRW_cNone_iNone_d5_a_rval_o    [0:4], // Core Read Value
  //   regf_word2_bRW_cNone_iNone_d5_b_o: bus=RW core=RO in_regf=True
  output logic        regf_word2_bRW_cNone_iNone_d5_b_upd_o     [0:4], // Update Strobe
  output logic        regf_word2_bRW_cNone_iNone_d5_b_rval_o    [0:4], // Core Read Value
  //   regf_word2_bRW_cNone_iNone_d5_s0_o: bus=RW core=RO in_regf=True
  output logic        regf_word2_bRW_cNone_iNone_d5_s0_upd_o    [0:4], // Update Strobe
  output logic        regf_word2_bRW_cNone_iNone_d5_s0_rval_o   [0:4], // Core Read Value
  //   regf_word2_bRW_cNone_iNone_d5_s1_o: bus=RW core=RO in_regf=True
  output logic        regf_word2_bRW_cNone_iNone_d5_s1_rval_o   [0:4], // Core Read Value
  //   regf_word2_bRW_cNone_iNone_d5_s2_o: bus=RW core=RO in_regf=True
  output logic        regf_word2_bRW_cNone_iNone_d5_s2_upd_o    [0:4], // Update Strobe
  output logic        regf_word2_bRW_cNone_iNone_d5_s2_rval_o   [0:4], // Core Read Value
  //   regf_foo_o
  //     regf_foo_www_a_o: bus=RW core=RO in_regf=True
  output logic [5:0]  regf_foo_www_a_rval_o,                           // Core Read Value
  //     regf_foo_www_b_o: bus=RW core=RO in_regf=True
  output logic        regf_foo_www_b_rval_o,                           // Core Read Value
  //   regf_bar_o
  //     regf_bar_www_a_o: bus=RW core=RO in_regf=True
  output logic [5:0]  regf_bar_www_a_rval_o,                           // Core Read Value
  //     regf_bar_www_b_o: bus=RW core=RO in_regf=True
  output logic        regf_bar_www_b_rval_o,                           // Core Read Value
  // regfword_o
  //   regfword_word1_bRW_cNone_iNone_d0_o: bus=RW core=RO in_regf=True
  output logic [31:0] regfword_word1_bRW_cNone_iNone_d0_rval_o,        // Core Read Value
  //   regfword_word1_bRO_cNone_iNone_d0_o: bus=RW core=RO in_regf=True
  output logic [31:0] regfword_word1_bRO_cNone_iNone_d0_rval_o,        // Core Read Value
  //   regfword_word2_bRW_cNone_iNone_d0_o: bus=RW core=RO in_regf=True
  output logic [31:0] regfword_word2_bRW_cNone_iNone_d0_rval_o,        // Core Read Value
  output logic        regfword_word2_bRW_cNone_iNone_d0_upd_o,         // Update Strobe
  //   regfword_word1_bRW_cNone_iNone_d1_o: bus=RW core=RO in_regf=True
  output logic [31:0] regfword_word1_bRW_cNone_iNone_d1_rval_o  [0:0], // Core Read Value
  //   regfword_word1_bRO_cNone_iNone_d1_o: bus=RW core=RO in_regf=True
  output logic [31:0] regfword_word1_bRO_cNone_iNone_d1_rval_o  [0:0], // Core Read Value
  //   regfword_word2_bRW_cNone_iNone_d1_o: bus=RW core=RO in_regf=True
  output logic        regfword_word2_bRW_cNone_iNone_d1_upd_o   [0:0], // Update Strobe
  output logic [31:0] regfword_word2_bRW_cNone_iNone_d1_rval_o  [0:0], // Core Read Value
  //   regfword_word1_bRW_cNone_iNone_d5_o: bus=RW core=RO in_regf=True
  output logic [31:0] regfword_word1_bRW_cNone_iNone_d5_rval_o  [0:4], // Core Read Value
  //   regfword_word1_bRO_cNone_iNone_d5_o: bus=RW core=RO in_regf=True
  output logic [31:0] regfword_word1_bRO_cNone_iNone_d5_rval_o  [0:4], // Core Read Value
  //   regfword_word2_bRW_cNone_iNone_d5_o: bus=RW core=RO in_regf=True
  output logic        regfword_word2_bRW_cNone_iNone_d5_upd_o   [0:4], // Update Strobe
  output logic [31:0] regfword_word2_bRW_cNone_iNone_d5_rval_o  [0:4], // Core Read Value
  //   regfword_foo_o
  //     regfword_foo_www_o: bus=RW core=RO in_regf=True
  output logic [31:0] regfword_foo_www_rval_o,                         // Core Read Value
  output logic        regfword_foo_www_upd_o,                          // Update Strobe
  //   regfword_bar_o
  //     regfword_bar_www_o: bus=RW core=RO in_regf=True
  output logic [31:0] regfword_bar_www_rval_o,                         // Core Read Value
  output logic        regfword_bar_www_upd_o                           // Update Strobe
);




  // ------------------------------------------------------
  //  Signals
  // ------------------------------------------------------
  logic [5:0]  data_word0_bRW_cNone_iNone_d0_a_r;             // Word word0_bRW_cNone_iNone_d0
  logic        data_word0_bRW_cNone_iNone_d0_b_r;
  logic        data_word0_bRW_cNone_iNone_d0_s0_r;
  logic        data_word0_bRW_cNone_iNone_d0_s1_r;
  logic        data_word0_bRW_cNone_iNone_d0_s2_r;
  logic        upd_strb_word0_bRW_cNone_iNone_d0_s2_r;
  logic        upd_strb_word0_bRO_cNone_iNone_d0_s2_r;
  logic [5:0]  data_word1_bRW_cNone_iNone_d0_a_r;             // Word word1_bRW_cNone_iNone_d0
  logic        data_word1_bRW_cNone_iNone_d0_b_r;
  logic        data_word1_bRW_cNone_iNone_d0_s0_r;
  logic        data_word1_bRW_cNone_iNone_d0_s1_r;
  logic        data_word1_bRW_cNone_iNone_d0_s2_r;
  logic        upd_strb_word1_bRW_cNone_iNone_d0_s2_r;
  logic        upd_strb_word1_bRO_cNone_iNone_d0_s2_r;
  logic [5:0]  data_word2_bRW_cNone_iNone_d0_a_r;             // Word word2_bRW_cNone_iNone_d0
  logic        data_word2_bRW_cNone_iNone_d0_b_r;
  logic        data_word2_bRW_cNone_iNone_d0_s0_r;
  logic        data_word2_bRW_cNone_iNone_d0_s1_r;
  logic        data_word2_bRW_cNone_iNone_d0_s2_r;
  logic        upd_strb_word2_bRW_cNone_iNone_d0_r;
  logic        upd_strb_word2_bRW_cNone_iNone_d0_a_r;
  logic        upd_strb_word2_bRW_cNone_iNone_d0_b_r;
  logic        upd_strb_word2_bRW_cNone_iNone_d0_s0_r;
  logic        upd_strb_word2_bRW_cNone_iNone_d0_s2_r;
  logic [5:0]  data_word0_bRW_cNone_iNone_d1_a_r       [0:0]; // Word word0_bRW_cNone_iNone_d1
  logic        data_word0_bRW_cNone_iNone_d1_b_r       [0:0];
  logic        data_word0_bRW_cNone_iNone_d1_s0_r      [0:0];
  logic        data_word0_bRW_cNone_iNone_d1_s1_r      [0:0];
  logic        data_word0_bRW_cNone_iNone_d1_s2_r      [0:0];
  logic        upd_strb_word0_bRW_cNone_iNone_d1_s2_r  [0:0];
  logic        upd_strb_word0_bRO_cNone_iNone_d1_s2_r  [0:0];
  logic [5:0]  data_word1_bRW_cNone_iNone_d1_a_r       [0:0]; // Word word1_bRW_cNone_iNone_d1
  logic        data_word1_bRW_cNone_iNone_d1_b_r       [0:0];
  logic        data_word1_bRW_cNone_iNone_d1_s0_r      [0:0];
  logic        data_word1_bRW_cNone_iNone_d1_s1_r      [0:0];
  logic        data_word1_bRW_cNone_iNone_d1_s2_r      [0:0];
  logic        upd_strb_word1_bRW_cNone_iNone_d1_s2_r  [0:0];
  logic        upd_strb_word1_bRO_cNone_iNone_d1_s2_r  [0:0];
  logic [5:0]  data_word2_bRW_cNone_iNone_d1_a_r       [0:0]; // Word word2_bRW_cNone_iNone_d1
  logic        data_word2_bRW_cNone_iNone_d1_b_r       [0:0];
  logic        data_word2_bRW_cNone_iNone_d1_s0_r      [0:0];
  logic        data_word2_bRW_cNone_iNone_d1_s1_r      [0:0];
  logic        data_word2_bRW_cNone_iNone_d1_s2_r      [0:0];
  logic        upd_strb_word2_bRW_cNone_iNone_d1_r     [0:0];
  logic        upd_strb_word2_bRW_cNone_iNone_d1_a_r   [0:0];
  logic        upd_strb_word2_bRW_cNone_iNone_d1_b_r   [0:0];
  logic        upd_strb_word2_bRW_cNone_iNone_d1_s0_r  [0:0];
  logic        upd_strb_word2_bRW_cNone_iNone_d1_s2_r  [0:0];
  logic [5:0]  data_word0_bRW_cNone_iNone_d5_a_r       [0:4]; // Word word0_bRW_cNone_iNone_d5
  logic        data_word0_bRW_cNone_iNone_d5_b_r       [0:4];
  logic        data_word0_bRW_cNone_iNone_d5_s0_r      [0:4];
  logic        data_word0_bRW_cNone_iNone_d5_s1_r      [0:4];
  logic        data_word0_bRW_cNone_iNone_d5_s2_r      [0:4];
  logic        upd_strb_word0_bRW_cNone_iNone_d5_s2_r  [0:4];
  logic        upd_strb_word0_bRO_cNone_iNone_d5_s2_r  [0:4];
  logic [5:0]  data_word1_bRW_cNone_iNone_d5_a_r       [0:4]; // Word word1_bRW_cNone_iNone_d5
  logic        data_word1_bRW_cNone_iNone_d5_b_r       [0:4];
  logic        data_word1_bRW_cNone_iNone_d5_s0_r      [0:4];
  logic        data_word1_bRW_cNone_iNone_d5_s1_r      [0:4];
  logic        data_word1_bRW_cNone_iNone_d5_s2_r      [0:4];
  logic        upd_strb_word1_bRW_cNone_iNone_d5_s2_r  [0:4];
  logic        upd_strb_word1_bRO_cNone_iNone_d5_s2_r  [0:4];
  logic [5:0]  data_word2_bRW_cNone_iNone_d5_a_r       [0:4]; // Word word2_bRW_cNone_iNone_d5
  logic        data_word2_bRW_cNone_iNone_d5_b_r       [0:4];
  logic        data_word2_bRW_cNone_iNone_d5_s0_r      [0:4];
  logic        data_word2_bRW_cNone_iNone_d5_s1_r      [0:4];
  logic        data_word2_bRW_cNone_iNone_d5_s2_r      [0:4];
  logic        upd_strb_word2_bRW_cNone_iNone_d5_r     [0:4];
  logic        upd_strb_word2_bRW_cNone_iNone_d5_a_r   [0:4];
  logic        upd_strb_word2_bRW_cNone_iNone_d5_b_r   [0:4];
  logic        upd_strb_word2_bRW_cNone_iNone_d5_s0_r  [0:4];
  logic        upd_strb_word2_bRW_cNone_iNone_d5_s2_r  [0:4];
  logic [5:0]  data_www_a_r;                                  // Word www
  logic        data_www_b_r;
  logic        upd_strb_www_r;
  logic        bus_word0_bRW_cNone_iNone_d0_wren_s;           // bus word write enables
  logic        bus_word1_bRW_cNone_iNone_d0_wren_s;
  logic        bus_word2_bRW_cNone_iNone_d0_wren_s;
  logic        bus_word0_bRW_cNone_iNone_d1_wren_s     [0:0];
  logic        bus_word1_bRW_cNone_iNone_d1_wren_s     [0:0];
  logic        bus_word2_bRW_cNone_iNone_d1_wren_s     [0:0];
  logic        bus_word0_bRW_cNone_iNone_d5_wren_s     [0:4];
  logic        bus_word1_bRW_cNone_iNone_d5_wren_s     [0:4];
  logic        bus_word2_bRW_cNone_iNone_d5_wren_s     [0:4];
  logic        bus_www_wren_s;
  logic [31:0] wvec_word0_bRW_cNone_iNone_d0_s;               // word vectors
  logic [31:0] wvec_word0_bRO_cNone_iNone_d0_s;
  logic [31:0] wvec_word1_bRW_cNone_iNone_d0_s;
  logic [31:0] wvec_word1_bRO_cNone_iNone_d0_s;
  logic [31:0] wvec_word2_bRW_cNone_iNone_d0_s;
  logic [31:0] wvec_word0_bRW_cNone_iNone_d1_s         [0:0];
  logic [31:0] wvec_word0_bRO_cNone_iNone_d1_s         [0:0];
  logic [31:0] wvec_word1_bRW_cNone_iNone_d1_s         [0:0];
  logic [31:0] wvec_word1_bRO_cNone_iNone_d1_s         [0:0];
  logic [31:0] wvec_word2_bRW_cNone_iNone_d1_s         [0:0];
  logic [31:0] wvec_word0_bRW_cNone_iNone_d5_s         [0:4];
  logic [31:0] wvec_word0_bRO_cNone_iNone_d5_s         [0:4];
  logic [31:0] wvec_word1_bRW_cNone_iNone_d5_s         [0:4];
  logic [31:0] wvec_word1_bRO_cNone_iNone_d5_s         [0:4];
  logic [31:0] wvec_word2_bRW_cNone_iNone_d5_s         [0:4];
  logic [31:0] wvec_www_s;

  always_comb begin: proc_bus_addr_dec
    // defaults
    mem_err_o = 1'b0;
    bus_word0_bRW_cNone_iNone_d0_wren_s = 1'b0;
    bus_word1_bRW_cNone_iNone_d0_wren_s = 1'b0;
    bus_word2_bRW_cNone_iNone_d0_wren_s = 1'b0;
    bus_word0_bRW_cNone_iNone_d1_wren_s = '{1{1'b0}};
    bus_word1_bRW_cNone_iNone_d1_wren_s = '{1{1'b0}};
    bus_word2_bRW_cNone_iNone_d1_wren_s = '{1{1'b0}};
    bus_word0_bRW_cNone_iNone_d5_wren_s = '{5{1'b0}};
    bus_word1_bRW_cNone_iNone_d5_wren_s = '{5{1'b0}};
    bus_word2_bRW_cNone_iNone_d5_wren_s = '{5{1'b0}};
    bus_www_wren_s                      = 1'b0;


    // decode address
    if (mem_ena_i == 1'b1) begin
      case (mem_addr_i)
        10'h000: begin
          mem_err_o = 0;
          bus_word0_bRW_cNone_iNone_d0_wren_s = mem_wena_i;
        end
        10'h001: begin
          mem_err_o = mem_wena_i;
        end
        10'h002: begin
          mem_err_o = 0;
          bus_word1_bRW_cNone_iNone_d0_wren_s = mem_wena_i;
        end
        10'h003: begin
          mem_err_o = mem_wena_i;
        end
        10'h004: begin
          mem_err_o = 0;
          bus_word2_bRW_cNone_iNone_d0_wren_s = mem_wena_i;
        end
        10'h005: begin
          mem_err_o = 0;
          bus_word0_bRW_cNone_iNone_d1_wren_s[0] = mem_wena_i;
        end
        10'h006: begin
          mem_err_o = mem_wena_i;
        end
        10'h007: begin
          mem_err_o = 0;
          bus_word1_bRW_cNone_iNone_d1_wren_s[0] = mem_wena_i;
        end
        10'h008: begin
          mem_err_o = mem_wena_i;
        end
        10'h009: begin
          mem_err_o = 0;
          bus_word2_bRW_cNone_iNone_d1_wren_s[0] = mem_wena_i;
        end
        10'h00A: begin
          mem_err_o = 0;
          bus_word0_bRW_cNone_iNone_d5_wren_s[0] = mem_wena_i;
        end
        10'h00B: begin
          mem_err_o = 0;
          bus_word0_bRW_cNone_iNone_d5_wren_s[1] = mem_wena_i;
        end
        10'h00C: begin
          mem_err_o = 0;
          bus_word0_bRW_cNone_iNone_d5_wren_s[2] = mem_wena_i;
        end
        10'h00D: begin
          mem_err_o = 0;
          bus_word0_bRW_cNone_iNone_d5_wren_s[3] = mem_wena_i;
        end
        10'h00E: begin
          mem_err_o = 0;
          bus_word0_bRW_cNone_iNone_d5_wren_s[4] = mem_wena_i;
        end
        10'h00F: begin
          mem_err_o = mem_wena_i;
        end
        10'h010: begin
          mem_err_o = mem_wena_i;
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
          mem_err_o = 0;
          bus_word1_bRW_cNone_iNone_d5_wren_s[0] = mem_wena_i;
        end
        10'h015: begin
          mem_err_o = 0;
          bus_word1_bRW_cNone_iNone_d5_wren_s[1] = mem_wena_i;
        end
        10'h016: begin
          mem_err_o = 0;
          bus_word1_bRW_cNone_iNone_d5_wren_s[2] = mem_wena_i;
        end
        10'h017: begin
          mem_err_o = 0;
          bus_word1_bRW_cNone_iNone_d5_wren_s[3] = mem_wena_i;
        end
        10'h018: begin
          mem_err_o = 0;
          bus_word1_bRW_cNone_iNone_d5_wren_s[4] = mem_wena_i;
        end
        10'h019: begin
          mem_err_o = mem_wena_i;
        end
        10'h01A: begin
          mem_err_o = mem_wena_i;
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
          mem_err_o = 0;
          bus_word2_bRW_cNone_iNone_d5_wren_s[0] = mem_wena_i;
        end
        10'h01F: begin
          mem_err_o = 0;
          bus_word2_bRW_cNone_iNone_d5_wren_s[1] = mem_wena_i;
        end
        10'h020: begin
          mem_err_o = 0;
          bus_word2_bRW_cNone_iNone_d5_wren_s[2] = mem_wena_i;
        end
        10'h021: begin
          mem_err_o = 0;
          bus_word2_bRW_cNone_iNone_d5_wren_s[3] = mem_wena_i;
        end
        10'h022: begin
          mem_err_o = 0;
          bus_word2_bRW_cNone_iNone_d5_wren_s[4] = mem_wena_i;
        end
        10'h023: begin
          mem_err_o = 0;
          bus_www_wren_s = mem_wena_i;
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
      // Word: word0_bRW_cNone_iNone_d0
      data_word0_bRW_cNone_iNone_d0_a_r      <= 6'h03;
      data_word0_bRW_cNone_iNone_d0_b_r      <= 1'b0;
      data_word0_bRW_cNone_iNone_d0_s0_r     <= 1'b0;
      data_word0_bRW_cNone_iNone_d0_s1_r     <= 1'b0;
      data_word0_bRW_cNone_iNone_d0_s2_r     <= 1'b0;
      upd_strb_word0_bRW_cNone_iNone_d0_s2_r <= 1'b0;
      // Word: word0_bRO_cNone_iNone_d0
      upd_strb_word0_bRO_cNone_iNone_d0_s2_r <= 1'b0;
      // Word: word1_bRW_cNone_iNone_d0
      data_word1_bRW_cNone_iNone_d0_a_r      <= 6'h03;
      data_word1_bRW_cNone_iNone_d0_b_r      <= 1'b0;
      data_word1_bRW_cNone_iNone_d0_s0_r     <= 1'b0;
      data_word1_bRW_cNone_iNone_d0_s1_r     <= 1'b0;
      data_word1_bRW_cNone_iNone_d0_s2_r     <= 1'b0;
      upd_strb_word1_bRW_cNone_iNone_d0_s2_r <= 1'b0;
      // Word: word1_bRO_cNone_iNone_d0
      upd_strb_word1_bRO_cNone_iNone_d0_s2_r <= 1'b0;
      // Word: word2_bRW_cNone_iNone_d0
      data_word2_bRW_cNone_iNone_d0_a_r      <= 6'h03;
      data_word2_bRW_cNone_iNone_d0_b_r      <= 1'b0;
      data_word2_bRW_cNone_iNone_d0_s0_r     <= 1'b0;
      data_word2_bRW_cNone_iNone_d0_s1_r     <= 1'b0;
      data_word2_bRW_cNone_iNone_d0_s2_r     <= 1'b0;
      upd_strb_word2_bRW_cNone_iNone_d0_r    <= 1'b0;
      upd_strb_word2_bRW_cNone_iNone_d0_a_r  <= 1'b0;
      upd_strb_word2_bRW_cNone_iNone_d0_b_r  <= 1'b0;
      upd_strb_word2_bRW_cNone_iNone_d0_s0_r <= 1'b0;
      upd_strb_word2_bRW_cNone_iNone_d0_s2_r <= 1'b0;
      // Word: word0_bRW_cNone_iNone_d1
      data_word0_bRW_cNone_iNone_d1_a_r      <= '{1{6'h03}};
      data_word0_bRW_cNone_iNone_d1_b_r      <= '{1{1'b0}};
      data_word0_bRW_cNone_iNone_d1_s0_r     <= '{1{1'b0}};
      data_word0_bRW_cNone_iNone_d1_s1_r     <= '{1{1'b0}};
      data_word0_bRW_cNone_iNone_d1_s2_r     <= '{1{1'b0}};
      upd_strb_word0_bRW_cNone_iNone_d1_s2_r <= '{1{1'b0}};
      // Word: word0_bRO_cNone_iNone_d1
      upd_strb_word0_bRO_cNone_iNone_d1_s2_r <= '{1{1'b0}};
      // Word: word1_bRW_cNone_iNone_d1
      data_word1_bRW_cNone_iNone_d1_a_r      <= '{1{6'h03}};
      data_word1_bRW_cNone_iNone_d1_b_r      <= '{1{1'b0}};
      data_word1_bRW_cNone_iNone_d1_s0_r     <= '{1{1'b0}};
      data_word1_bRW_cNone_iNone_d1_s1_r     <= '{1{1'b0}};
      data_word1_bRW_cNone_iNone_d1_s2_r     <= '{1{1'b0}};
      upd_strb_word1_bRW_cNone_iNone_d1_s2_r <= '{1{1'b0}};
      // Word: word1_bRO_cNone_iNone_d1
      upd_strb_word1_bRO_cNone_iNone_d1_s2_r <= '{1{1'b0}};
      // Word: word2_bRW_cNone_iNone_d1
      data_word2_bRW_cNone_iNone_d1_a_r      <= '{1{6'h03}};
      data_word2_bRW_cNone_iNone_d1_b_r      <= '{1{1'b0}};
      data_word2_bRW_cNone_iNone_d1_s0_r     <= '{1{1'b0}};
      data_word2_bRW_cNone_iNone_d1_s1_r     <= '{1{1'b0}};
      data_word2_bRW_cNone_iNone_d1_s2_r     <= '{1{1'b0}};
      upd_strb_word2_bRW_cNone_iNone_d1_r    <= '{1{1'b0}};
      upd_strb_word2_bRW_cNone_iNone_d1_a_r  <= '{1{1'b0}};
      upd_strb_word2_bRW_cNone_iNone_d1_b_r  <= '{1{1'b0}};
      upd_strb_word2_bRW_cNone_iNone_d1_s0_r <= '{1{1'b0}};
      upd_strb_word2_bRW_cNone_iNone_d1_s2_r <= '{1{1'b0}};
      // Word: word0_bRW_cNone_iNone_d5
      data_word0_bRW_cNone_iNone_d5_a_r      <= '{5{6'h03}};
      data_word0_bRW_cNone_iNone_d5_b_r      <= '{5{1'b0}};
      data_word0_bRW_cNone_iNone_d5_s0_r     <= '{5{1'b0}};
      data_word0_bRW_cNone_iNone_d5_s1_r     <= '{5{1'b0}};
      data_word0_bRW_cNone_iNone_d5_s2_r     <= '{5{1'b0}};
      upd_strb_word0_bRW_cNone_iNone_d5_s2_r <= '{5{1'b0}};
      // Word: word0_bRO_cNone_iNone_d5
      upd_strb_word0_bRO_cNone_iNone_d5_s2_r <= '{5{1'b0}};
      // Word: word1_bRW_cNone_iNone_d5
      data_word1_bRW_cNone_iNone_d5_a_r      <= '{5{6'h03}};
      data_word1_bRW_cNone_iNone_d5_b_r      <= '{5{1'b0}};
      data_word1_bRW_cNone_iNone_d5_s0_r     <= '{5{1'b0}};
      data_word1_bRW_cNone_iNone_d5_s1_r     <= '{5{1'b0}};
      data_word1_bRW_cNone_iNone_d5_s2_r     <= '{5{1'b0}};
      upd_strb_word1_bRW_cNone_iNone_d5_s2_r <= '{5{1'b0}};
      // Word: word1_bRO_cNone_iNone_d5
      upd_strb_word1_bRO_cNone_iNone_d5_s2_r <= '{5{1'b0}};
      // Word: word2_bRW_cNone_iNone_d5
      data_word2_bRW_cNone_iNone_d5_a_r      <= '{5{6'h03}};
      data_word2_bRW_cNone_iNone_d5_b_r      <= '{5{1'b0}};
      data_word2_bRW_cNone_iNone_d5_s0_r     <= '{5{1'b0}};
      data_word2_bRW_cNone_iNone_d5_s1_r     <= '{5{1'b0}};
      data_word2_bRW_cNone_iNone_d5_s2_r     <= '{5{1'b0}};
      upd_strb_word2_bRW_cNone_iNone_d5_r    <= '{5{1'b0}};
      upd_strb_word2_bRW_cNone_iNone_d5_a_r  <= '{5{1'b0}};
      upd_strb_word2_bRW_cNone_iNone_d5_b_r  <= '{5{1'b0}};
      upd_strb_word2_bRW_cNone_iNone_d5_s0_r <= '{5{1'b0}};
      upd_strb_word2_bRW_cNone_iNone_d5_s2_r <= '{5{1'b0}};
      // Word: www
      data_www_a_r                           <= 6'h03;
      data_www_b_r                           <= 1'b0;
      upd_strb_www_r                         <= 1'b0;
    end else begin
      if (bus_word0_bRW_cNone_iNone_d0_wren_s == 1'b1) begin
        data_word0_bRW_cNone_iNone_d0_a_r <= mem_wdata_i[5:0];
      end
      if (bus_word0_bRW_cNone_iNone_d0_wren_s == 1'b1) begin
        data_word0_bRW_cNone_iNone_d0_b_r <= mem_wdata_i[8];
      end
      if (bus_word0_bRW_cNone_iNone_d0_wren_s == 1'b1) begin
        data_word0_bRW_cNone_iNone_d0_s0_r <= mem_wdata_i[9];
      end
      if (bus_word0_bRW_cNone_iNone_d0_wren_s == 1'b1) begin
        data_word0_bRW_cNone_iNone_d0_s1_r <= mem_wdata_i[10];
      end
      if (bus_word0_bRW_cNone_iNone_d0_wren_s == 1'b1) begin
        data_word0_bRW_cNone_iNone_d0_s2_r <= mem_wdata_i[11];
      end
      upd_strb_word0_bRW_cNone_iNone_d0_s2_r <= (bus_word0_bRW_cNone_iNone_d0_wren_s == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word1_bRW_cNone_iNone_d0_wren_s == 1'b1) begin
        data_word1_bRW_cNone_iNone_d0_a_r <= mem_wdata_i[5:0];
      end
      if (bus_word1_bRW_cNone_iNone_d0_wren_s == 1'b1) begin
        data_word1_bRW_cNone_iNone_d0_b_r <= mem_wdata_i[8];
      end
      if (bus_word1_bRW_cNone_iNone_d0_wren_s == 1'b1) begin
        data_word1_bRW_cNone_iNone_d0_s0_r <= mem_wdata_i[9];
      end
      if (bus_word1_bRW_cNone_iNone_d0_wren_s == 1'b1) begin
        data_word1_bRW_cNone_iNone_d0_s1_r <= mem_wdata_i[10];
      end
      if (bus_word1_bRW_cNone_iNone_d0_wren_s == 1'b1) begin
        data_word1_bRW_cNone_iNone_d0_s2_r <= mem_wdata_i[11];
      end
      upd_strb_word1_bRW_cNone_iNone_d0_s2_r <= (bus_word1_bRW_cNone_iNone_d0_wren_s == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word2_bRW_cNone_iNone_d0_wren_s == 1'b1) begin
        data_word2_bRW_cNone_iNone_d0_a_r <= mem_wdata_i[5:0];
      end
      upd_strb_word2_bRW_cNone_iNone_d0_a_r <= (bus_word2_bRW_cNone_iNone_d0_wren_s == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word2_bRW_cNone_iNone_d0_wren_s == 1'b1) begin
        data_word2_bRW_cNone_iNone_d0_b_r <= mem_wdata_i[8];
      end
      upd_strb_word2_bRW_cNone_iNone_d0_b_r <= (bus_word2_bRW_cNone_iNone_d0_wren_s == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word2_bRW_cNone_iNone_d0_wren_s == 1'b1) begin
        data_word2_bRW_cNone_iNone_d0_s0_r <= mem_wdata_i[9];
      end
      upd_strb_word2_bRW_cNone_iNone_d0_s0_r <= (bus_word2_bRW_cNone_iNone_d0_wren_s == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word2_bRW_cNone_iNone_d0_wren_s == 1'b1) begin
        data_word2_bRW_cNone_iNone_d0_s1_r <= mem_wdata_i[10];
      end
      if (bus_word2_bRW_cNone_iNone_d0_wren_s == 1'b1) begin
        data_word2_bRW_cNone_iNone_d0_s2_r <= mem_wdata_i[11];
      end
      upd_strb_word2_bRW_cNone_iNone_d0_s2_r <= (bus_word2_bRW_cNone_iNone_d0_wren_s == 1'b1) ? 1'b1 : 1'b0;
      upd_strb_word2_bRW_cNone_iNone_d0_r <= (bus_word2_bRW_cNone_iNone_d0_wren_s == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word0_bRW_cNone_iNone_d1_wren_s[0] == 1'b1) begin
        data_word0_bRW_cNone_iNone_d1_a_r[0] <= mem_wdata_i[5:0];
      end
      if (bus_word0_bRW_cNone_iNone_d1_wren_s[0] == 1'b1) begin
        data_word0_bRW_cNone_iNone_d1_b_r[0] <= mem_wdata_i[8];
      end
      if (bus_word0_bRW_cNone_iNone_d1_wren_s[0] == 1'b1) begin
        data_word0_bRW_cNone_iNone_d1_s0_r[0] <= mem_wdata_i[9];
      end
      if (bus_word0_bRW_cNone_iNone_d1_wren_s[0] == 1'b1) begin
        data_word0_bRW_cNone_iNone_d1_s1_r[0] <= mem_wdata_i[10];
      end
      if (bus_word0_bRW_cNone_iNone_d1_wren_s[0] == 1'b1) begin
        data_word0_bRW_cNone_iNone_d1_s2_r[0] <= mem_wdata_i[11];
      end
      upd_strb_word0_bRW_cNone_iNone_d1_s2_r[0] <= (bus_word0_bRW_cNone_iNone_d1_wren_s[0] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word1_bRW_cNone_iNone_d1_wren_s[0] == 1'b1) begin
        data_word1_bRW_cNone_iNone_d1_a_r[0] <= mem_wdata_i[5:0];
      end
      if (bus_word1_bRW_cNone_iNone_d1_wren_s[0] == 1'b1) begin
        data_word1_bRW_cNone_iNone_d1_b_r[0] <= mem_wdata_i[8];
      end
      if (bus_word1_bRW_cNone_iNone_d1_wren_s[0] == 1'b1) begin
        data_word1_bRW_cNone_iNone_d1_s0_r[0] <= mem_wdata_i[9];
      end
      if (bus_word1_bRW_cNone_iNone_d1_wren_s[0] == 1'b1) begin
        data_word1_bRW_cNone_iNone_d1_s1_r[0] <= mem_wdata_i[10];
      end
      if (bus_word1_bRW_cNone_iNone_d1_wren_s[0] == 1'b1) begin
        data_word1_bRW_cNone_iNone_d1_s2_r[0] <= mem_wdata_i[11];
      end
      upd_strb_word1_bRW_cNone_iNone_d1_s2_r[0] <= (bus_word1_bRW_cNone_iNone_d1_wren_s[0] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word2_bRW_cNone_iNone_d1_wren_s[0] == 1'b1) begin
        data_word2_bRW_cNone_iNone_d1_a_r[0] <= mem_wdata_i[5:0];
      end
      upd_strb_word2_bRW_cNone_iNone_d1_a_r[0] <= (bus_word2_bRW_cNone_iNone_d1_wren_s[0] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word2_bRW_cNone_iNone_d1_wren_s[0] == 1'b1) begin
        data_word2_bRW_cNone_iNone_d1_b_r[0] <= mem_wdata_i[8];
      end
      upd_strb_word2_bRW_cNone_iNone_d1_b_r[0] <= (bus_word2_bRW_cNone_iNone_d1_wren_s[0] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word2_bRW_cNone_iNone_d1_wren_s[0] == 1'b1) begin
        data_word2_bRW_cNone_iNone_d1_s0_r[0] <= mem_wdata_i[9];
      end
      upd_strb_word2_bRW_cNone_iNone_d1_s0_r[0] <= (bus_word2_bRW_cNone_iNone_d1_wren_s[0] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word2_bRW_cNone_iNone_d1_wren_s[0] == 1'b1) begin
        data_word2_bRW_cNone_iNone_d1_s1_r[0] <= mem_wdata_i[10];
      end
      if (bus_word2_bRW_cNone_iNone_d1_wren_s[0] == 1'b1) begin
        data_word2_bRW_cNone_iNone_d1_s2_r[0] <= mem_wdata_i[11];
      end
      upd_strb_word2_bRW_cNone_iNone_d1_s2_r[0] <= (bus_word2_bRW_cNone_iNone_d1_wren_s[0] == 1'b1) ? 1'b1 : 1'b0;
      upd_strb_word2_bRW_cNone_iNone_d1_r[0] <= (bus_word2_bRW_cNone_iNone_d1_wren_s[0] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word0_bRW_cNone_iNone_d5_wren_s[0] == 1'b1) begin
        data_word0_bRW_cNone_iNone_d5_a_r[0] <= mem_wdata_i[5:0];
      end
      if (bus_word0_bRW_cNone_iNone_d5_wren_s[1] == 1'b1) begin
        data_word0_bRW_cNone_iNone_d5_a_r[1] <= mem_wdata_i[5:0];
      end
      if (bus_word0_bRW_cNone_iNone_d5_wren_s[2] == 1'b1) begin
        data_word0_bRW_cNone_iNone_d5_a_r[2] <= mem_wdata_i[5:0];
      end
      if (bus_word0_bRW_cNone_iNone_d5_wren_s[3] == 1'b1) begin
        data_word0_bRW_cNone_iNone_d5_a_r[3] <= mem_wdata_i[5:0];
      end
      if (bus_word0_bRW_cNone_iNone_d5_wren_s[4] == 1'b1) begin
        data_word0_bRW_cNone_iNone_d5_a_r[4] <= mem_wdata_i[5:0];
      end
      if (bus_word0_bRW_cNone_iNone_d5_wren_s[0] == 1'b1) begin
        data_word0_bRW_cNone_iNone_d5_b_r[0] <= mem_wdata_i[8];
      end
      if (bus_word0_bRW_cNone_iNone_d5_wren_s[1] == 1'b1) begin
        data_word0_bRW_cNone_iNone_d5_b_r[1] <= mem_wdata_i[8];
      end
      if (bus_word0_bRW_cNone_iNone_d5_wren_s[2] == 1'b1) begin
        data_word0_bRW_cNone_iNone_d5_b_r[2] <= mem_wdata_i[8];
      end
      if (bus_word0_bRW_cNone_iNone_d5_wren_s[3] == 1'b1) begin
        data_word0_bRW_cNone_iNone_d5_b_r[3] <= mem_wdata_i[8];
      end
      if (bus_word0_bRW_cNone_iNone_d5_wren_s[4] == 1'b1) begin
        data_word0_bRW_cNone_iNone_d5_b_r[4] <= mem_wdata_i[8];
      end
      if (bus_word0_bRW_cNone_iNone_d5_wren_s[0] == 1'b1) begin
        data_word0_bRW_cNone_iNone_d5_s0_r[0] <= mem_wdata_i[9];
      end
      if (bus_word0_bRW_cNone_iNone_d5_wren_s[1] == 1'b1) begin
        data_word0_bRW_cNone_iNone_d5_s0_r[1] <= mem_wdata_i[9];
      end
      if (bus_word0_bRW_cNone_iNone_d5_wren_s[2] == 1'b1) begin
        data_word0_bRW_cNone_iNone_d5_s0_r[2] <= mem_wdata_i[9];
      end
      if (bus_word0_bRW_cNone_iNone_d5_wren_s[3] == 1'b1) begin
        data_word0_bRW_cNone_iNone_d5_s0_r[3] <= mem_wdata_i[9];
      end
      if (bus_word0_bRW_cNone_iNone_d5_wren_s[4] == 1'b1) begin
        data_word0_bRW_cNone_iNone_d5_s0_r[4] <= mem_wdata_i[9];
      end
      if (bus_word0_bRW_cNone_iNone_d5_wren_s[0] == 1'b1) begin
        data_word0_bRW_cNone_iNone_d5_s1_r[0] <= mem_wdata_i[10];
      end
      if (bus_word0_bRW_cNone_iNone_d5_wren_s[1] == 1'b1) begin
        data_word0_bRW_cNone_iNone_d5_s1_r[1] <= mem_wdata_i[10];
      end
      if (bus_word0_bRW_cNone_iNone_d5_wren_s[2] == 1'b1) begin
        data_word0_bRW_cNone_iNone_d5_s1_r[2] <= mem_wdata_i[10];
      end
      if (bus_word0_bRW_cNone_iNone_d5_wren_s[3] == 1'b1) begin
        data_word0_bRW_cNone_iNone_d5_s1_r[3] <= mem_wdata_i[10];
      end
      if (bus_word0_bRW_cNone_iNone_d5_wren_s[4] == 1'b1) begin
        data_word0_bRW_cNone_iNone_d5_s1_r[4] <= mem_wdata_i[10];
      end
      if (bus_word0_bRW_cNone_iNone_d5_wren_s[0] == 1'b1) begin
        data_word0_bRW_cNone_iNone_d5_s2_r[0] <= mem_wdata_i[11];
      end
      upd_strb_word0_bRW_cNone_iNone_d5_s2_r[0] <= (bus_word0_bRW_cNone_iNone_d5_wren_s[0] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word0_bRW_cNone_iNone_d5_wren_s[1] == 1'b1) begin
        data_word0_bRW_cNone_iNone_d5_s2_r[1] <= mem_wdata_i[11];
      end
      upd_strb_word0_bRW_cNone_iNone_d5_s2_r[1] <= (bus_word0_bRW_cNone_iNone_d5_wren_s[1] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word0_bRW_cNone_iNone_d5_wren_s[2] == 1'b1) begin
        data_word0_bRW_cNone_iNone_d5_s2_r[2] <= mem_wdata_i[11];
      end
      upd_strb_word0_bRW_cNone_iNone_d5_s2_r[2] <= (bus_word0_bRW_cNone_iNone_d5_wren_s[2] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word0_bRW_cNone_iNone_d5_wren_s[3] == 1'b1) begin
        data_word0_bRW_cNone_iNone_d5_s2_r[3] <= mem_wdata_i[11];
      end
      upd_strb_word0_bRW_cNone_iNone_d5_s2_r[3] <= (bus_word0_bRW_cNone_iNone_d5_wren_s[3] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word0_bRW_cNone_iNone_d5_wren_s[4] == 1'b1) begin
        data_word0_bRW_cNone_iNone_d5_s2_r[4] <= mem_wdata_i[11];
      end
      upd_strb_word0_bRW_cNone_iNone_d5_s2_r[4] <= (bus_word0_bRW_cNone_iNone_d5_wren_s[4] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word1_bRW_cNone_iNone_d5_wren_s[0] == 1'b1) begin
        data_word1_bRW_cNone_iNone_d5_a_r[0] <= mem_wdata_i[5:0];
      end
      if (bus_word1_bRW_cNone_iNone_d5_wren_s[1] == 1'b1) begin
        data_word1_bRW_cNone_iNone_d5_a_r[1] <= mem_wdata_i[5:0];
      end
      if (bus_word1_bRW_cNone_iNone_d5_wren_s[2] == 1'b1) begin
        data_word1_bRW_cNone_iNone_d5_a_r[2] <= mem_wdata_i[5:0];
      end
      if (bus_word1_bRW_cNone_iNone_d5_wren_s[3] == 1'b1) begin
        data_word1_bRW_cNone_iNone_d5_a_r[3] <= mem_wdata_i[5:0];
      end
      if (bus_word1_bRW_cNone_iNone_d5_wren_s[4] == 1'b1) begin
        data_word1_bRW_cNone_iNone_d5_a_r[4] <= mem_wdata_i[5:0];
      end
      if (bus_word1_bRW_cNone_iNone_d5_wren_s[0] == 1'b1) begin
        data_word1_bRW_cNone_iNone_d5_b_r[0] <= mem_wdata_i[8];
      end
      if (bus_word1_bRW_cNone_iNone_d5_wren_s[1] == 1'b1) begin
        data_word1_bRW_cNone_iNone_d5_b_r[1] <= mem_wdata_i[8];
      end
      if (bus_word1_bRW_cNone_iNone_d5_wren_s[2] == 1'b1) begin
        data_word1_bRW_cNone_iNone_d5_b_r[2] <= mem_wdata_i[8];
      end
      if (bus_word1_bRW_cNone_iNone_d5_wren_s[3] == 1'b1) begin
        data_word1_bRW_cNone_iNone_d5_b_r[3] <= mem_wdata_i[8];
      end
      if (bus_word1_bRW_cNone_iNone_d5_wren_s[4] == 1'b1) begin
        data_word1_bRW_cNone_iNone_d5_b_r[4] <= mem_wdata_i[8];
      end
      if (bus_word1_bRW_cNone_iNone_d5_wren_s[0] == 1'b1) begin
        data_word1_bRW_cNone_iNone_d5_s0_r[0] <= mem_wdata_i[9];
      end
      if (bus_word1_bRW_cNone_iNone_d5_wren_s[1] == 1'b1) begin
        data_word1_bRW_cNone_iNone_d5_s0_r[1] <= mem_wdata_i[9];
      end
      if (bus_word1_bRW_cNone_iNone_d5_wren_s[2] == 1'b1) begin
        data_word1_bRW_cNone_iNone_d5_s0_r[2] <= mem_wdata_i[9];
      end
      if (bus_word1_bRW_cNone_iNone_d5_wren_s[3] == 1'b1) begin
        data_word1_bRW_cNone_iNone_d5_s0_r[3] <= mem_wdata_i[9];
      end
      if (bus_word1_bRW_cNone_iNone_d5_wren_s[4] == 1'b1) begin
        data_word1_bRW_cNone_iNone_d5_s0_r[4] <= mem_wdata_i[9];
      end
      if (bus_word1_bRW_cNone_iNone_d5_wren_s[0] == 1'b1) begin
        data_word1_bRW_cNone_iNone_d5_s1_r[0] <= mem_wdata_i[10];
      end
      if (bus_word1_bRW_cNone_iNone_d5_wren_s[1] == 1'b1) begin
        data_word1_bRW_cNone_iNone_d5_s1_r[1] <= mem_wdata_i[10];
      end
      if (bus_word1_bRW_cNone_iNone_d5_wren_s[2] == 1'b1) begin
        data_word1_bRW_cNone_iNone_d5_s1_r[2] <= mem_wdata_i[10];
      end
      if (bus_word1_bRW_cNone_iNone_d5_wren_s[3] == 1'b1) begin
        data_word1_bRW_cNone_iNone_d5_s1_r[3] <= mem_wdata_i[10];
      end
      if (bus_word1_bRW_cNone_iNone_d5_wren_s[4] == 1'b1) begin
        data_word1_bRW_cNone_iNone_d5_s1_r[4] <= mem_wdata_i[10];
      end
      if (bus_word1_bRW_cNone_iNone_d5_wren_s[0] == 1'b1) begin
        data_word1_bRW_cNone_iNone_d5_s2_r[0] <= mem_wdata_i[11];
      end
      upd_strb_word1_bRW_cNone_iNone_d5_s2_r[0] <= (bus_word1_bRW_cNone_iNone_d5_wren_s[0] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word1_bRW_cNone_iNone_d5_wren_s[1] == 1'b1) begin
        data_word1_bRW_cNone_iNone_d5_s2_r[1] <= mem_wdata_i[11];
      end
      upd_strb_word1_bRW_cNone_iNone_d5_s2_r[1] <= (bus_word1_bRW_cNone_iNone_d5_wren_s[1] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word1_bRW_cNone_iNone_d5_wren_s[2] == 1'b1) begin
        data_word1_bRW_cNone_iNone_d5_s2_r[2] <= mem_wdata_i[11];
      end
      upd_strb_word1_bRW_cNone_iNone_d5_s2_r[2] <= (bus_word1_bRW_cNone_iNone_d5_wren_s[2] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word1_bRW_cNone_iNone_d5_wren_s[3] == 1'b1) begin
        data_word1_bRW_cNone_iNone_d5_s2_r[3] <= mem_wdata_i[11];
      end
      upd_strb_word1_bRW_cNone_iNone_d5_s2_r[3] <= (bus_word1_bRW_cNone_iNone_d5_wren_s[3] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word1_bRW_cNone_iNone_d5_wren_s[4] == 1'b1) begin
        data_word1_bRW_cNone_iNone_d5_s2_r[4] <= mem_wdata_i[11];
      end
      upd_strb_word1_bRW_cNone_iNone_d5_s2_r[4] <= (bus_word1_bRW_cNone_iNone_d5_wren_s[4] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word2_bRW_cNone_iNone_d5_wren_s[0] == 1'b1) begin
        data_word2_bRW_cNone_iNone_d5_a_r[0] <= mem_wdata_i[5:0];
      end
      upd_strb_word2_bRW_cNone_iNone_d5_a_r[0] <= (bus_word2_bRW_cNone_iNone_d5_wren_s[0] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word2_bRW_cNone_iNone_d5_wren_s[1] == 1'b1) begin
        data_word2_bRW_cNone_iNone_d5_a_r[1] <= mem_wdata_i[5:0];
      end
      upd_strb_word2_bRW_cNone_iNone_d5_a_r[1] <= (bus_word2_bRW_cNone_iNone_d5_wren_s[1] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word2_bRW_cNone_iNone_d5_wren_s[2] == 1'b1) begin
        data_word2_bRW_cNone_iNone_d5_a_r[2] <= mem_wdata_i[5:0];
      end
      upd_strb_word2_bRW_cNone_iNone_d5_a_r[2] <= (bus_word2_bRW_cNone_iNone_d5_wren_s[2] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word2_bRW_cNone_iNone_d5_wren_s[3] == 1'b1) begin
        data_word2_bRW_cNone_iNone_d5_a_r[3] <= mem_wdata_i[5:0];
      end
      upd_strb_word2_bRW_cNone_iNone_d5_a_r[3] <= (bus_word2_bRW_cNone_iNone_d5_wren_s[3] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word2_bRW_cNone_iNone_d5_wren_s[4] == 1'b1) begin
        data_word2_bRW_cNone_iNone_d5_a_r[4] <= mem_wdata_i[5:0];
      end
      upd_strb_word2_bRW_cNone_iNone_d5_a_r[4] <= (bus_word2_bRW_cNone_iNone_d5_wren_s[4] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word2_bRW_cNone_iNone_d5_wren_s[0] == 1'b1) begin
        data_word2_bRW_cNone_iNone_d5_b_r[0] <= mem_wdata_i[8];
      end
      upd_strb_word2_bRW_cNone_iNone_d5_b_r[0] <= (bus_word2_bRW_cNone_iNone_d5_wren_s[0] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word2_bRW_cNone_iNone_d5_wren_s[1] == 1'b1) begin
        data_word2_bRW_cNone_iNone_d5_b_r[1] <= mem_wdata_i[8];
      end
      upd_strb_word2_bRW_cNone_iNone_d5_b_r[1] <= (bus_word2_bRW_cNone_iNone_d5_wren_s[1] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word2_bRW_cNone_iNone_d5_wren_s[2] == 1'b1) begin
        data_word2_bRW_cNone_iNone_d5_b_r[2] <= mem_wdata_i[8];
      end
      upd_strb_word2_bRW_cNone_iNone_d5_b_r[2] <= (bus_word2_bRW_cNone_iNone_d5_wren_s[2] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word2_bRW_cNone_iNone_d5_wren_s[3] == 1'b1) begin
        data_word2_bRW_cNone_iNone_d5_b_r[3] <= mem_wdata_i[8];
      end
      upd_strb_word2_bRW_cNone_iNone_d5_b_r[3] <= (bus_word2_bRW_cNone_iNone_d5_wren_s[3] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word2_bRW_cNone_iNone_d5_wren_s[4] == 1'b1) begin
        data_word2_bRW_cNone_iNone_d5_b_r[4] <= mem_wdata_i[8];
      end
      upd_strb_word2_bRW_cNone_iNone_d5_b_r[4] <= (bus_word2_bRW_cNone_iNone_d5_wren_s[4] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word2_bRW_cNone_iNone_d5_wren_s[0] == 1'b1) begin
        data_word2_bRW_cNone_iNone_d5_s0_r[0] <= mem_wdata_i[9];
      end
      upd_strb_word2_bRW_cNone_iNone_d5_s0_r[0] <= (bus_word2_bRW_cNone_iNone_d5_wren_s[0] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word2_bRW_cNone_iNone_d5_wren_s[1] == 1'b1) begin
        data_word2_bRW_cNone_iNone_d5_s0_r[1] <= mem_wdata_i[9];
      end
      upd_strb_word2_bRW_cNone_iNone_d5_s0_r[1] <= (bus_word2_bRW_cNone_iNone_d5_wren_s[1] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word2_bRW_cNone_iNone_d5_wren_s[2] == 1'b1) begin
        data_word2_bRW_cNone_iNone_d5_s0_r[2] <= mem_wdata_i[9];
      end
      upd_strb_word2_bRW_cNone_iNone_d5_s0_r[2] <= (bus_word2_bRW_cNone_iNone_d5_wren_s[2] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word2_bRW_cNone_iNone_d5_wren_s[3] == 1'b1) begin
        data_word2_bRW_cNone_iNone_d5_s0_r[3] <= mem_wdata_i[9];
      end
      upd_strb_word2_bRW_cNone_iNone_d5_s0_r[3] <= (bus_word2_bRW_cNone_iNone_d5_wren_s[3] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word2_bRW_cNone_iNone_d5_wren_s[4] == 1'b1) begin
        data_word2_bRW_cNone_iNone_d5_s0_r[4] <= mem_wdata_i[9];
      end
      upd_strb_word2_bRW_cNone_iNone_d5_s0_r[4] <= (bus_word2_bRW_cNone_iNone_d5_wren_s[4] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word2_bRW_cNone_iNone_d5_wren_s[0] == 1'b1) begin
        data_word2_bRW_cNone_iNone_d5_s1_r[0] <= mem_wdata_i[10];
      end
      if (bus_word2_bRW_cNone_iNone_d5_wren_s[1] == 1'b1) begin
        data_word2_bRW_cNone_iNone_d5_s1_r[1] <= mem_wdata_i[10];
      end
      if (bus_word2_bRW_cNone_iNone_d5_wren_s[2] == 1'b1) begin
        data_word2_bRW_cNone_iNone_d5_s1_r[2] <= mem_wdata_i[10];
      end
      if (bus_word2_bRW_cNone_iNone_d5_wren_s[3] == 1'b1) begin
        data_word2_bRW_cNone_iNone_d5_s1_r[3] <= mem_wdata_i[10];
      end
      if (bus_word2_bRW_cNone_iNone_d5_wren_s[4] == 1'b1) begin
        data_word2_bRW_cNone_iNone_d5_s1_r[4] <= mem_wdata_i[10];
      end
      if (bus_word2_bRW_cNone_iNone_d5_wren_s[0] == 1'b1) begin
        data_word2_bRW_cNone_iNone_d5_s2_r[0] <= mem_wdata_i[11];
      end
      upd_strb_word2_bRW_cNone_iNone_d5_s2_r[0] <= (bus_word2_bRW_cNone_iNone_d5_wren_s[0] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word2_bRW_cNone_iNone_d5_wren_s[1] == 1'b1) begin
        data_word2_bRW_cNone_iNone_d5_s2_r[1] <= mem_wdata_i[11];
      end
      upd_strb_word2_bRW_cNone_iNone_d5_s2_r[1] <= (bus_word2_bRW_cNone_iNone_d5_wren_s[1] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word2_bRW_cNone_iNone_d5_wren_s[2] == 1'b1) begin
        data_word2_bRW_cNone_iNone_d5_s2_r[2] <= mem_wdata_i[11];
      end
      upd_strb_word2_bRW_cNone_iNone_d5_s2_r[2] <= (bus_word2_bRW_cNone_iNone_d5_wren_s[2] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word2_bRW_cNone_iNone_d5_wren_s[3] == 1'b1) begin
        data_word2_bRW_cNone_iNone_d5_s2_r[3] <= mem_wdata_i[11];
      end
      upd_strb_word2_bRW_cNone_iNone_d5_s2_r[3] <= (bus_word2_bRW_cNone_iNone_d5_wren_s[3] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_word2_bRW_cNone_iNone_d5_wren_s[4] == 1'b1) begin
        data_word2_bRW_cNone_iNone_d5_s2_r[4] <= mem_wdata_i[11];
      end
      upd_strb_word2_bRW_cNone_iNone_d5_s2_r[4] <= (bus_word2_bRW_cNone_iNone_d5_wren_s[4] == 1'b1) ? 1'b1 : 1'b0;
      upd_strb_word2_bRW_cNone_iNone_d5_r[0] <= (bus_word2_bRW_cNone_iNone_d5_wren_s[0] == 1'b1) ? 1'b1 : 1'b0;
      upd_strb_word2_bRW_cNone_iNone_d5_r[1] <= (bus_word2_bRW_cNone_iNone_d5_wren_s[1] == 1'b1) ? 1'b1 : 1'b0;
      upd_strb_word2_bRW_cNone_iNone_d5_r[2] <= (bus_word2_bRW_cNone_iNone_d5_wren_s[2] == 1'b1) ? 1'b1 : 1'b0;
      upd_strb_word2_bRW_cNone_iNone_d5_r[3] <= (bus_word2_bRW_cNone_iNone_d5_wren_s[3] == 1'b1) ? 1'b1 : 1'b0;
      upd_strb_word2_bRW_cNone_iNone_d5_r[4] <= (bus_word2_bRW_cNone_iNone_d5_wren_s[4] == 1'b1) ? 1'b1 : 1'b0;
      if (bus_www_wren_s == 1'b1) begin
        data_www_a_r <= mem_wdata_i[5:0];
      end
      if (bus_www_wren_s == 1'b1) begin
        data_www_b_r <= mem_wdata_i[8];
      end
      upd_strb_www_r <= (bus_www_wren_s == 1'b1) ? 1'b1 : 1'b0;
    end
  end

  // ------------------------------------------------------
  //  Collect word vectors
  // ------------------------------------------------------
  assign wvec_word0_bRW_cNone_iNone_d0_s    = {20'h00000, data_word0_bRW_cNone_iNone_d0_s2_r, data_word0_bRW_cNone_iNone_d0_s1_r, data_word0_bRW_cNone_iNone_d0_s0_r, data_word0_bRW_cNone_iNone_d0_b_r, 2'h0, data_word0_bRW_cNone_iNone_d0_a_r};
  assign wvec_word0_bRO_cNone_iNone_d0_s    = {20'h00000, regf_word0_bRO_cNone_iNone_d0_s2_rbus_i, regf_word0_bRO_cNone_iNone_d0_s1_rbus_i, regf_word0_bRO_cNone_iNone_d0_s0_rbus_i, regf_word0_bRO_cNone_iNone_d0_b_rbus_i, 2'h0, regf_word0_bRO_cNone_iNone_d0_a_rbus_i};
  assign wvec_word1_bRW_cNone_iNone_d0_s    = {20'h00000, data_word1_bRW_cNone_iNone_d0_s2_r, data_word1_bRW_cNone_iNone_d0_s1_r, data_word1_bRW_cNone_iNone_d0_s0_r, data_word1_bRW_cNone_iNone_d0_b_r, 2'h0, data_word1_bRW_cNone_iNone_d0_a_r};
  assign wvec_word1_bRO_cNone_iNone_d0_s    = {20'h00000, regf_word1_bRO_cNone_iNone_d0_s2_rbus_i, regf_word1_bRO_cNone_iNone_d0_s1_rbus_i, regf_word1_bRO_cNone_iNone_d0_s0_rbus_i, regf_word1_bRO_cNone_iNone_d0_b_rbus_i, 2'h0, regf_word1_bRO_cNone_iNone_d0_a_rbus_i};
  assign wvec_word2_bRW_cNone_iNone_d0_s    = {20'h00000, data_word2_bRW_cNone_iNone_d0_s2_r, data_word2_bRW_cNone_iNone_d0_s1_r, data_word2_bRW_cNone_iNone_d0_s0_r, data_word2_bRW_cNone_iNone_d0_b_r, 2'h0, data_word2_bRW_cNone_iNone_d0_a_r};
  assign wvec_word0_bRW_cNone_iNone_d1_s[0] = {20'h00000, data_word0_bRW_cNone_iNone_d1_s2_r[0], data_word0_bRW_cNone_iNone_d1_s1_r[0], data_word0_bRW_cNone_iNone_d1_s0_r[0], data_word0_bRW_cNone_iNone_d1_b_r[0], 2'h0, data_word0_bRW_cNone_iNone_d1_a_r[0]};
  assign wvec_word0_bRO_cNone_iNone_d1_s[0] = {20'h00000, regf_word0_bRO_cNone_iNone_d1_s2_rbus_i[0], regf_word0_bRO_cNone_iNone_d1_s1_rbus_i[0], regf_word0_bRO_cNone_iNone_d1_s0_rbus_i[0], regf_word0_bRO_cNone_iNone_d1_b_rbus_i[0], 2'h0, regf_word0_bRO_cNone_iNone_d1_a_rbus_i[0]};
  assign wvec_word1_bRW_cNone_iNone_d1_s[0] = {20'h00000, data_word1_bRW_cNone_iNone_d1_s2_r[0], data_word1_bRW_cNone_iNone_d1_s1_r[0], data_word1_bRW_cNone_iNone_d1_s0_r[0], data_word1_bRW_cNone_iNone_d1_b_r[0], 2'h0, data_word1_bRW_cNone_iNone_d1_a_r[0]};
  assign wvec_word1_bRO_cNone_iNone_d1_s[0] = {20'h00000, regf_word1_bRO_cNone_iNone_d1_s2_rbus_i[0], regf_word1_bRO_cNone_iNone_d1_s1_rbus_i[0], regf_word1_bRO_cNone_iNone_d1_s0_rbus_i[0], regf_word1_bRO_cNone_iNone_d1_b_rbus_i[0], 2'h0, regf_word1_bRO_cNone_iNone_d1_a_rbus_i[0]};
  assign wvec_word2_bRW_cNone_iNone_d1_s[0] = {20'h00000, data_word2_bRW_cNone_iNone_d1_s2_r[0], data_word2_bRW_cNone_iNone_d1_s1_r[0], data_word2_bRW_cNone_iNone_d1_s0_r[0], data_word2_bRW_cNone_iNone_d1_b_r[0], 2'h0, data_word2_bRW_cNone_iNone_d1_a_r[0]};
  assign wvec_word0_bRW_cNone_iNone_d5_s[0] = {20'h00000, data_word0_bRW_cNone_iNone_d5_s2_r[0], data_word0_bRW_cNone_iNone_d5_s1_r[0], data_word0_bRW_cNone_iNone_d5_s0_r[0], data_word0_bRW_cNone_iNone_d5_b_r[0], 2'h0, data_word0_bRW_cNone_iNone_d5_a_r[0]};
  assign wvec_word0_bRW_cNone_iNone_d5_s[1] = {20'h00000, data_word0_bRW_cNone_iNone_d5_s2_r[1], data_word0_bRW_cNone_iNone_d5_s1_r[1], data_word0_bRW_cNone_iNone_d5_s0_r[1], data_word0_bRW_cNone_iNone_d5_b_r[1], 2'h0, data_word0_bRW_cNone_iNone_d5_a_r[1]};
  assign wvec_word0_bRW_cNone_iNone_d5_s[2] = {20'h00000, data_word0_bRW_cNone_iNone_d5_s2_r[2], data_word0_bRW_cNone_iNone_d5_s1_r[2], data_word0_bRW_cNone_iNone_d5_s0_r[2], data_word0_bRW_cNone_iNone_d5_b_r[2], 2'h0, data_word0_bRW_cNone_iNone_d5_a_r[2]};
  assign wvec_word0_bRW_cNone_iNone_d5_s[3] = {20'h00000, data_word0_bRW_cNone_iNone_d5_s2_r[3], data_word0_bRW_cNone_iNone_d5_s1_r[3], data_word0_bRW_cNone_iNone_d5_s0_r[3], data_word0_bRW_cNone_iNone_d5_b_r[3], 2'h0, data_word0_bRW_cNone_iNone_d5_a_r[3]};
  assign wvec_word0_bRW_cNone_iNone_d5_s[4] = {20'h00000, data_word0_bRW_cNone_iNone_d5_s2_r[4], data_word0_bRW_cNone_iNone_d5_s1_r[4], data_word0_bRW_cNone_iNone_d5_s0_r[4], data_word0_bRW_cNone_iNone_d5_b_r[4], 2'h0, data_word0_bRW_cNone_iNone_d5_a_r[4]};
  assign wvec_word0_bRO_cNone_iNone_d5_s[0] = {20'h00000, regf_word0_bRO_cNone_iNone_d5_s2_rbus_i[0], regf_word0_bRO_cNone_iNone_d5_s1_rbus_i[0], regf_word0_bRO_cNone_iNone_d5_s0_rbus_i[0], regf_word0_bRO_cNone_iNone_d5_b_rbus_i[0], 2'h0, regf_word0_bRO_cNone_iNone_d5_a_rbus_i[0]};
  assign wvec_word0_bRO_cNone_iNone_d5_s[1] = {20'h00000, regf_word0_bRO_cNone_iNone_d5_s2_rbus_i[1], regf_word0_bRO_cNone_iNone_d5_s1_rbus_i[1], regf_word0_bRO_cNone_iNone_d5_s0_rbus_i[1], regf_word0_bRO_cNone_iNone_d5_b_rbus_i[1], 2'h0, regf_word0_bRO_cNone_iNone_d5_a_rbus_i[1]};
  assign wvec_word0_bRO_cNone_iNone_d5_s[2] = {20'h00000, regf_word0_bRO_cNone_iNone_d5_s2_rbus_i[2], regf_word0_bRO_cNone_iNone_d5_s1_rbus_i[2], regf_word0_bRO_cNone_iNone_d5_s0_rbus_i[2], regf_word0_bRO_cNone_iNone_d5_b_rbus_i[2], 2'h0, regf_word0_bRO_cNone_iNone_d5_a_rbus_i[2]};
  assign wvec_word0_bRO_cNone_iNone_d5_s[3] = {20'h00000, regf_word0_bRO_cNone_iNone_d5_s2_rbus_i[3], regf_word0_bRO_cNone_iNone_d5_s1_rbus_i[3], regf_word0_bRO_cNone_iNone_d5_s0_rbus_i[3], regf_word0_bRO_cNone_iNone_d5_b_rbus_i[3], 2'h0, regf_word0_bRO_cNone_iNone_d5_a_rbus_i[3]};
  assign wvec_word0_bRO_cNone_iNone_d5_s[4] = {20'h00000, regf_word0_bRO_cNone_iNone_d5_s2_rbus_i[4], regf_word0_bRO_cNone_iNone_d5_s1_rbus_i[4], regf_word0_bRO_cNone_iNone_d5_s0_rbus_i[4], regf_word0_bRO_cNone_iNone_d5_b_rbus_i[4], 2'h0, regf_word0_bRO_cNone_iNone_d5_a_rbus_i[4]};
  assign wvec_word1_bRW_cNone_iNone_d5_s[0] = {20'h00000, data_word1_bRW_cNone_iNone_d5_s2_r[0], data_word1_bRW_cNone_iNone_d5_s1_r[0], data_word1_bRW_cNone_iNone_d5_s0_r[0], data_word1_bRW_cNone_iNone_d5_b_r[0], 2'h0, data_word1_bRW_cNone_iNone_d5_a_r[0]};
  assign wvec_word1_bRW_cNone_iNone_d5_s[1] = {20'h00000, data_word1_bRW_cNone_iNone_d5_s2_r[1], data_word1_bRW_cNone_iNone_d5_s1_r[1], data_word1_bRW_cNone_iNone_d5_s0_r[1], data_word1_bRW_cNone_iNone_d5_b_r[1], 2'h0, data_word1_bRW_cNone_iNone_d5_a_r[1]};
  assign wvec_word1_bRW_cNone_iNone_d5_s[2] = {20'h00000, data_word1_bRW_cNone_iNone_d5_s2_r[2], data_word1_bRW_cNone_iNone_d5_s1_r[2], data_word1_bRW_cNone_iNone_d5_s0_r[2], data_word1_bRW_cNone_iNone_d5_b_r[2], 2'h0, data_word1_bRW_cNone_iNone_d5_a_r[2]};
  assign wvec_word1_bRW_cNone_iNone_d5_s[3] = {20'h00000, data_word1_bRW_cNone_iNone_d5_s2_r[3], data_word1_bRW_cNone_iNone_d5_s1_r[3], data_word1_bRW_cNone_iNone_d5_s0_r[3], data_word1_bRW_cNone_iNone_d5_b_r[3], 2'h0, data_word1_bRW_cNone_iNone_d5_a_r[3]};
  assign wvec_word1_bRW_cNone_iNone_d5_s[4] = {20'h00000, data_word1_bRW_cNone_iNone_d5_s2_r[4], data_word1_bRW_cNone_iNone_d5_s1_r[4], data_word1_bRW_cNone_iNone_d5_s0_r[4], data_word1_bRW_cNone_iNone_d5_b_r[4], 2'h0, data_word1_bRW_cNone_iNone_d5_a_r[4]};
  assign wvec_word1_bRO_cNone_iNone_d5_s[0] = {20'h00000, regf_word1_bRO_cNone_iNone_d5_s2_rbus_i[0], regf_word1_bRO_cNone_iNone_d5_s1_rbus_i[0], regf_word1_bRO_cNone_iNone_d5_s0_rbus_i[0], regf_word1_bRO_cNone_iNone_d5_b_rbus_i[0], 2'h0, regf_word1_bRO_cNone_iNone_d5_a_rbus_i[0]};
  assign wvec_word1_bRO_cNone_iNone_d5_s[1] = {20'h00000, regf_word1_bRO_cNone_iNone_d5_s2_rbus_i[1], regf_word1_bRO_cNone_iNone_d5_s1_rbus_i[1], regf_word1_bRO_cNone_iNone_d5_s0_rbus_i[1], regf_word1_bRO_cNone_iNone_d5_b_rbus_i[1], 2'h0, regf_word1_bRO_cNone_iNone_d5_a_rbus_i[1]};
  assign wvec_word1_bRO_cNone_iNone_d5_s[2] = {20'h00000, regf_word1_bRO_cNone_iNone_d5_s2_rbus_i[2], regf_word1_bRO_cNone_iNone_d5_s1_rbus_i[2], regf_word1_bRO_cNone_iNone_d5_s0_rbus_i[2], regf_word1_bRO_cNone_iNone_d5_b_rbus_i[2], 2'h0, regf_word1_bRO_cNone_iNone_d5_a_rbus_i[2]};
  assign wvec_word1_bRO_cNone_iNone_d5_s[3] = {20'h00000, regf_word1_bRO_cNone_iNone_d5_s2_rbus_i[3], regf_word1_bRO_cNone_iNone_d5_s1_rbus_i[3], regf_word1_bRO_cNone_iNone_d5_s0_rbus_i[3], regf_word1_bRO_cNone_iNone_d5_b_rbus_i[3], 2'h0, regf_word1_bRO_cNone_iNone_d5_a_rbus_i[3]};
  assign wvec_word1_bRO_cNone_iNone_d5_s[4] = {20'h00000, regf_word1_bRO_cNone_iNone_d5_s2_rbus_i[4], regf_word1_bRO_cNone_iNone_d5_s1_rbus_i[4], regf_word1_bRO_cNone_iNone_d5_s0_rbus_i[4], regf_word1_bRO_cNone_iNone_d5_b_rbus_i[4], 2'h0, regf_word1_bRO_cNone_iNone_d5_a_rbus_i[4]};
  assign wvec_word2_bRW_cNone_iNone_d5_s[0] = {20'h00000, data_word2_bRW_cNone_iNone_d5_s2_r[0], data_word2_bRW_cNone_iNone_d5_s1_r[0], data_word2_bRW_cNone_iNone_d5_s0_r[0], data_word2_bRW_cNone_iNone_d5_b_r[0], 2'h0, data_word2_bRW_cNone_iNone_d5_a_r[0]};
  assign wvec_word2_bRW_cNone_iNone_d5_s[1] = {20'h00000, data_word2_bRW_cNone_iNone_d5_s2_r[1], data_word2_bRW_cNone_iNone_d5_s1_r[1], data_word2_bRW_cNone_iNone_d5_s0_r[1], data_word2_bRW_cNone_iNone_d5_b_r[1], 2'h0, data_word2_bRW_cNone_iNone_d5_a_r[1]};
  assign wvec_word2_bRW_cNone_iNone_d5_s[2] = {20'h00000, data_word2_bRW_cNone_iNone_d5_s2_r[2], data_word2_bRW_cNone_iNone_d5_s1_r[2], data_word2_bRW_cNone_iNone_d5_s0_r[2], data_word2_bRW_cNone_iNone_d5_b_r[2], 2'h0, data_word2_bRW_cNone_iNone_d5_a_r[2]};
  assign wvec_word2_bRW_cNone_iNone_d5_s[3] = {20'h00000, data_word2_bRW_cNone_iNone_d5_s2_r[3], data_word2_bRW_cNone_iNone_d5_s1_r[3], data_word2_bRW_cNone_iNone_d5_s0_r[3], data_word2_bRW_cNone_iNone_d5_b_r[3], 2'h0, data_word2_bRW_cNone_iNone_d5_a_r[3]};
  assign wvec_word2_bRW_cNone_iNone_d5_s[4] = {20'h00000, data_word2_bRW_cNone_iNone_d5_s2_r[4], data_word2_bRW_cNone_iNone_d5_s1_r[4], data_word2_bRW_cNone_iNone_d5_s0_r[4], data_word2_bRW_cNone_iNone_d5_b_r[4], 2'h0, data_word2_bRW_cNone_iNone_d5_a_r[4]};
  assign wvec_www_s                         = {23'h000000, data_www_b_r, 2'h0, data_www_a_r};

  // ------------------------------------------------------
  //  Bus Read-Mux
  // ------------------------------------------------------
  always_comb begin: proc_bus_rd
    if ((mem_ena_i == 1'b1) && (mem_wena_i == 1'b0)) begin
      case (mem_addr_i)
        10'h000: begin
          mem_rdata_o = wvec_word0_bRW_cNone_iNone_d0_s;
        end
        10'h001: begin
          mem_rdata_o = wvec_word0_bRO_cNone_iNone_d0_s;
        end
        10'h002: begin
          mem_rdata_o = wvec_word1_bRW_cNone_iNone_d0_s;
        end
        10'h003: begin
          mem_rdata_o = wvec_word1_bRO_cNone_iNone_d0_s;
        end
        10'h004: begin
          mem_rdata_o = wvec_word2_bRW_cNone_iNone_d0_s;
        end
        10'h005: begin
          mem_rdata_o = wvec_word0_bRW_cNone_iNone_d1_s[0];
        end
        10'h006: begin
          mem_rdata_o = wvec_word0_bRO_cNone_iNone_d1_s[0];
        end
        10'h007: begin
          mem_rdata_o = wvec_word1_bRW_cNone_iNone_d1_s[0];
        end
        10'h008: begin
          mem_rdata_o = wvec_word1_bRO_cNone_iNone_d1_s[0];
        end
        10'h009: begin
          mem_rdata_o = wvec_word2_bRW_cNone_iNone_d1_s[0];
        end
        10'h00A: begin
          mem_rdata_o = wvec_word0_bRW_cNone_iNone_d5_s[0];
        end
        10'h00B: begin
          mem_rdata_o = wvec_word0_bRW_cNone_iNone_d5_s[1];
        end
        10'h00C: begin
          mem_rdata_o = wvec_word0_bRW_cNone_iNone_d5_s[2];
        end
        10'h00D: begin
          mem_rdata_o = wvec_word0_bRW_cNone_iNone_d5_s[3];
        end
        10'h00E: begin
          mem_rdata_o = wvec_word0_bRW_cNone_iNone_d5_s[4];
        end
        10'h00F: begin
          mem_rdata_o = wvec_word0_bRO_cNone_iNone_d5_s[0];
        end
        10'h010: begin
          mem_rdata_o = wvec_word0_bRO_cNone_iNone_d5_s[1];
        end
        10'h011: begin
          mem_rdata_o = wvec_word0_bRO_cNone_iNone_d5_s[2];
        end
        10'h012: begin
          mem_rdata_o = wvec_word0_bRO_cNone_iNone_d5_s[3];
        end
        10'h013: begin
          mem_rdata_o = wvec_word0_bRO_cNone_iNone_d5_s[4];
        end
        10'h014: begin
          mem_rdata_o = wvec_word1_bRW_cNone_iNone_d5_s[0];
        end
        10'h015: begin
          mem_rdata_o = wvec_word1_bRW_cNone_iNone_d5_s[1];
        end
        10'h016: begin
          mem_rdata_o = wvec_word1_bRW_cNone_iNone_d5_s[2];
        end
        10'h017: begin
          mem_rdata_o = wvec_word1_bRW_cNone_iNone_d5_s[3];
        end
        10'h018: begin
          mem_rdata_o = wvec_word1_bRW_cNone_iNone_d5_s[4];
        end
        10'h019: begin
          mem_rdata_o = wvec_word1_bRO_cNone_iNone_d5_s[0];
        end
        10'h01A: begin
          mem_rdata_o = wvec_word1_bRO_cNone_iNone_d5_s[1];
        end
        10'h01B: begin
          mem_rdata_o = wvec_word1_bRO_cNone_iNone_d5_s[2];
        end
        10'h01C: begin
          mem_rdata_o = wvec_word1_bRO_cNone_iNone_d5_s[3];
        end
        10'h01D: begin
          mem_rdata_o = wvec_word1_bRO_cNone_iNone_d5_s[4];
        end
        10'h01E: begin
          mem_rdata_o = wvec_word2_bRW_cNone_iNone_d5_s[0];
        end
        10'h01F: begin
          mem_rdata_o = wvec_word2_bRW_cNone_iNone_d5_s[1];
        end
        10'h020: begin
          mem_rdata_o = wvec_word2_bRW_cNone_iNone_d5_s[2];
        end
        10'h021: begin
          mem_rdata_o = wvec_word2_bRW_cNone_iNone_d5_s[3];
        end
        10'h022: begin
          mem_rdata_o = wvec_word2_bRW_cNone_iNone_d5_s[4];
        end
        10'h023: begin
          mem_rdata_o = wvec_www_s;
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
  assign regf_word0_bRW_cNone_iNone_d0_a_rval_o   = data_word0_bRW_cNone_iNone_d0_a_r;
  assign regf_word0_bRW_cNone_iNone_d0_b_rval_o   = data_word0_bRW_cNone_iNone_d0_b_r;
  assign regf_word0_bRW_cNone_iNone_d0_s0_rval_o  = data_word0_bRW_cNone_iNone_d0_s0_r;
  assign regf_word0_bRW_cNone_iNone_d0_s1_rval_o  = data_word0_bRW_cNone_iNone_d0_s1_r;
  assign regf_word0_bRW_cNone_iNone_d0_s2_rval_o  = data_word0_bRW_cNone_iNone_d0_s2_r;
  assign regf_word0_bRW_cNone_iNone_d0_s2_upd_o   = upd_strb_word0_bRW_cNone_iNone_d0_s2_r;
  assign regf_word1_bRW_cNone_iNone_d0_a_rval_o   = data_word1_bRW_cNone_iNone_d0_a_r;
  assign regf_word1_bRW_cNone_iNone_d0_b_rval_o   = data_word1_bRW_cNone_iNone_d0_b_r;
  assign regf_word1_bRW_cNone_iNone_d0_s0_rval_o  = data_word1_bRW_cNone_iNone_d0_s0_r;
  assign regf_word1_bRW_cNone_iNone_d0_s1_rval_o  = data_word1_bRW_cNone_iNone_d0_s1_r;
  assign regf_word1_bRW_cNone_iNone_d0_s2_rval_o  = data_word1_bRW_cNone_iNone_d0_s2_r;
  assign regf_word1_bRW_cNone_iNone_d0_s2_upd_o   = upd_strb_word1_bRW_cNone_iNone_d0_s2_r;
  assign regfword_word1_bRW_cNone_iNone_d0_rval_o = wvec_word1_bRW_cNone_iNone_d0_s;
  assign regfword_word1_bRO_cNone_iNone_d0_rval_o = wvec_word1_bRO_cNone_iNone_d0_s;
  assign regf_word2_bRW_cNone_iNone_d0_a_rval_o   = data_word2_bRW_cNone_iNone_d0_a_r;
  assign regf_word2_bRW_cNone_iNone_d0_a_upd_o    = upd_strb_word2_bRW_cNone_iNone_d0_a_r;
  assign regf_word2_bRW_cNone_iNone_d0_b_rval_o   = data_word2_bRW_cNone_iNone_d0_b_r;
  assign regf_word2_bRW_cNone_iNone_d0_b_upd_o    = upd_strb_word2_bRW_cNone_iNone_d0_b_r;
  assign regf_word2_bRW_cNone_iNone_d0_s0_rval_o  = data_word2_bRW_cNone_iNone_d0_s0_r;
  assign regf_word2_bRW_cNone_iNone_d0_s0_upd_o   = upd_strb_word2_bRW_cNone_iNone_d0_s0_r;
  assign regf_word2_bRW_cNone_iNone_d0_s1_rval_o  = data_word2_bRW_cNone_iNone_d0_s1_r;
  assign regf_word2_bRW_cNone_iNone_d0_s2_rval_o  = data_word2_bRW_cNone_iNone_d0_s2_r;
  assign regf_word2_bRW_cNone_iNone_d0_s2_upd_o   = upd_strb_word2_bRW_cNone_iNone_d0_s2_r;
  assign regfword_word2_bRW_cNone_iNone_d0_rval_o = wvec_word2_bRW_cNone_iNone_d0_s;
  assign regfword_word2_bRW_cNone_iNone_d0_upd_o  = upd_strb_word2_bRW_cNone_iNone_d0_r;
  assign regf_word0_bRW_cNone_iNone_d1_a_rval_o   = data_word0_bRW_cNone_iNone_d1_a_r;
  assign regf_word0_bRW_cNone_iNone_d1_b_rval_o   = data_word0_bRW_cNone_iNone_d1_b_r;
  assign regf_word0_bRW_cNone_iNone_d1_s0_rval_o  = data_word0_bRW_cNone_iNone_d1_s0_r;
  assign regf_word0_bRW_cNone_iNone_d1_s1_rval_o  = data_word0_bRW_cNone_iNone_d1_s1_r;
  assign regf_word0_bRW_cNone_iNone_d1_s2_rval_o  = data_word0_bRW_cNone_iNone_d1_s2_r;
  assign regf_word0_bRW_cNone_iNone_d1_s2_upd_o   = upd_strb_word0_bRW_cNone_iNone_d1_s2_r;
  assign regf_word1_bRW_cNone_iNone_d1_a_rval_o   = data_word1_bRW_cNone_iNone_d1_a_r;
  assign regf_word1_bRW_cNone_iNone_d1_b_rval_o   = data_word1_bRW_cNone_iNone_d1_b_r;
  assign regf_word1_bRW_cNone_iNone_d1_s0_rval_o  = data_word1_bRW_cNone_iNone_d1_s0_r;
  assign regf_word1_bRW_cNone_iNone_d1_s1_rval_o  = data_word1_bRW_cNone_iNone_d1_s1_r;
  assign regf_word1_bRW_cNone_iNone_d1_s2_rval_o  = data_word1_bRW_cNone_iNone_d1_s2_r;
  assign regf_word1_bRW_cNone_iNone_d1_s2_upd_o   = upd_strb_word1_bRW_cNone_iNone_d1_s2_r;
  assign regfword_word1_bRW_cNone_iNone_d1_rval_o = wvec_word1_bRW_cNone_iNone_d1_s;
  assign regfword_word1_bRO_cNone_iNone_d1_rval_o = wvec_word1_bRO_cNone_iNone_d1_s;
  assign regf_word2_bRW_cNone_iNone_d1_a_rval_o   = data_word2_bRW_cNone_iNone_d1_a_r;
  assign regf_word2_bRW_cNone_iNone_d1_a_upd_o    = upd_strb_word2_bRW_cNone_iNone_d1_a_r;
  assign regf_word2_bRW_cNone_iNone_d1_b_rval_o   = data_word2_bRW_cNone_iNone_d1_b_r;
  assign regf_word2_bRW_cNone_iNone_d1_b_upd_o    = upd_strb_word2_bRW_cNone_iNone_d1_b_r;
  assign regf_word2_bRW_cNone_iNone_d1_s0_rval_o  = data_word2_bRW_cNone_iNone_d1_s0_r;
  assign regf_word2_bRW_cNone_iNone_d1_s0_upd_o   = upd_strb_word2_bRW_cNone_iNone_d1_s0_r;
  assign regf_word2_bRW_cNone_iNone_d1_s1_rval_o  = data_word2_bRW_cNone_iNone_d1_s1_r;
  assign regf_word2_bRW_cNone_iNone_d1_s2_rval_o  = data_word2_bRW_cNone_iNone_d1_s2_r;
  assign regf_word2_bRW_cNone_iNone_d1_s2_upd_o   = upd_strb_word2_bRW_cNone_iNone_d1_s2_r;
  assign regfword_word2_bRW_cNone_iNone_d1_rval_o = wvec_word2_bRW_cNone_iNone_d1_s;
  assign regfword_word2_bRW_cNone_iNone_d1_upd_o  = upd_strb_word2_bRW_cNone_iNone_d1_r;
  assign regf_word0_bRW_cNone_iNone_d5_a_rval_o   = data_word0_bRW_cNone_iNone_d5_a_r;
  assign regf_word0_bRW_cNone_iNone_d5_b_rval_o   = data_word0_bRW_cNone_iNone_d5_b_r;
  assign regf_word0_bRW_cNone_iNone_d5_s0_rval_o  = data_word0_bRW_cNone_iNone_d5_s0_r;
  assign regf_word0_bRW_cNone_iNone_d5_s1_rval_o  = data_word0_bRW_cNone_iNone_d5_s1_r;
  assign regf_word0_bRW_cNone_iNone_d5_s2_rval_o  = data_word0_bRW_cNone_iNone_d5_s2_r;
  assign regf_word0_bRW_cNone_iNone_d5_s2_upd_o   = upd_strb_word0_bRW_cNone_iNone_d5_s2_r;
  assign regf_word1_bRW_cNone_iNone_d5_a_rval_o   = data_word1_bRW_cNone_iNone_d5_a_r;
  assign regf_word1_bRW_cNone_iNone_d5_b_rval_o   = data_word1_bRW_cNone_iNone_d5_b_r;
  assign regf_word1_bRW_cNone_iNone_d5_s0_rval_o  = data_word1_bRW_cNone_iNone_d5_s0_r;
  assign regf_word1_bRW_cNone_iNone_d5_s1_rval_o  = data_word1_bRW_cNone_iNone_d5_s1_r;
  assign regf_word1_bRW_cNone_iNone_d5_s2_rval_o  = data_word1_bRW_cNone_iNone_d5_s2_r;
  assign regf_word1_bRW_cNone_iNone_d5_s2_upd_o   = upd_strb_word1_bRW_cNone_iNone_d5_s2_r;
  assign regfword_word1_bRW_cNone_iNone_d5_rval_o = wvec_word1_bRW_cNone_iNone_d5_s;
  assign regfword_word1_bRO_cNone_iNone_d5_rval_o = wvec_word1_bRO_cNone_iNone_d5_s;
  assign regf_word2_bRW_cNone_iNone_d5_a_rval_o   = data_word2_bRW_cNone_iNone_d5_a_r;
  assign regf_word2_bRW_cNone_iNone_d5_a_upd_o    = upd_strb_word2_bRW_cNone_iNone_d5_a_r;
  assign regf_word2_bRW_cNone_iNone_d5_b_rval_o   = data_word2_bRW_cNone_iNone_d5_b_r;
  assign regf_word2_bRW_cNone_iNone_d5_b_upd_o    = upd_strb_word2_bRW_cNone_iNone_d5_b_r;
  assign regf_word2_bRW_cNone_iNone_d5_s0_rval_o  = data_word2_bRW_cNone_iNone_d5_s0_r;
  assign regf_word2_bRW_cNone_iNone_d5_s0_upd_o   = upd_strb_word2_bRW_cNone_iNone_d5_s0_r;
  assign regf_word2_bRW_cNone_iNone_d5_s1_rval_o  = data_word2_bRW_cNone_iNone_d5_s1_r;
  assign regf_word2_bRW_cNone_iNone_d5_s2_rval_o  = data_word2_bRW_cNone_iNone_d5_s2_r;
  assign regf_word2_bRW_cNone_iNone_d5_s2_upd_o   = upd_strb_word2_bRW_cNone_iNone_d5_s2_r;
  assign regfword_word2_bRW_cNone_iNone_d5_rval_o = wvec_word2_bRW_cNone_iNone_d5_s;
  assign regfword_word2_bRW_cNone_iNone_d5_upd_o  = upd_strb_word2_bRW_cNone_iNone_d5_r;
  assign regf_foo_www_a_rval_o                    = data_www_a_r;
  assign regf_bar_www_a_rval_o                    = data_www_a_r;
  assign regf_foo_www_b_rval_o                    = data_www_b_r;
  assign regf_bar_www_b_rval_o                    = data_www_b_r;
  assign regfword_foo_www_rval_o                  = wvec_www_s;
  assign regfword_foo_www_upd_o                   = upd_strb_www_r;
  assign regfword_bar_www_rval_o                  = wvec_www_s;
  assign regfword_bar_www_upd_o                   = upd_strb_www_r;

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
