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
// Module:     word_field
// Data Model: WordFieldMod
//             tests/test_svmako.py
//
// =============================================================================

`begin_keywords "1800-2009"
`default_nettype none  // implicit wires are forbidden

module word_field();



  // ------------------------------------------------------
  //  tests.word_field_regf: u_regf
  // ------------------------------------------------------
  word_field_regf u_regf (
    .main_clk_i                              (1'b0        ), // TODO - Clock
    .main_rst_an_i                           (1'b0        ), // TODO - Async Reset (Low-Active)
    .mem_ena_i                               (1'b0        ), // TODO - Memory Access Enable
    .mem_addr_i                              (10'h000     ), // TODO - Memory Address
    .mem_wena_i                              (1'b0        ), // TODO - Memory Write Enable
    .mem_wdata_i                             (32'h00000000), // TODO - Memory Write Data
    .mem_rdata_o                             (            ), // TODO - Memory Read Data
    .mem_err_o                               (            ), // TODO - Memory Access Failed.
    .regf_word0_bRW_cNone_iNone_d0_a_rval_o  (            ), // TODO - Core Read Value
    .regf_word0_bRW_cNone_iNone_d0_b_rval_o  (            ), // TODO - Core Read Value
    .regf_word0_bRW_cNone_iNone_d0_s0_rval_o (            ), // TODO - Core Read Value
    .regf_word0_bRW_cNone_iNone_d0_s1_rval_o (            ), // TODO - Core Read Value
    .regf_word0_bRW_cNone_iNone_d0_s2_rval_o (            ), // TODO - Core Read Value
    .regf_word0_bRW_cNone_iNone_d0_s2_upd_o  (            ), // TODO - Update Strobe
    .regf_word0_bRO_cNone_iNone_d0_a_rbus_i  (6'h03       ), // TODO - Bus Read Value
    .regf_word0_bRO_cNone_iNone_d0_b_rbus_i  (1'b0        ), // TODO - Bus Read Value
    .regf_word0_bRO_cNone_iNone_d0_s0_rbus_i (1'b0        ), // TODO - Bus Read Value
    .regf_word0_bRO_cNone_iNone_d0_s1_rbus_i (1'b0        ), // TODO - Bus Read Value
    .regf_word0_bRO_cNone_iNone_d0_s2_rbus_i (1'b0        ), // TODO - Bus Read Value
    .regf_word1_bRW_cNone_iNone_d0_a_rval_o  (            ), // TODO - Core Read Value
    .regf_word1_bRW_cNone_iNone_d0_b_rval_o  (            ), // TODO - Core Read Value
    .regf_word1_bRW_cNone_iNone_d0_s0_rval_o (            ), // TODO - Core Read Value
    .regf_word1_bRW_cNone_iNone_d0_s1_rval_o (            ), // TODO - Core Read Value
    .regf_word1_bRW_cNone_iNone_d0_s2_rval_o (            ), // TODO - Core Read Value
    .regf_word1_bRW_cNone_iNone_d0_s2_upd_o  (            ), // TODO - Update Strobe
    .regf_word1_bRO_cNone_iNone_d0_a_rbus_i  (6'h03       ), // TODO - Bus Read Value
    .regf_word1_bRO_cNone_iNone_d0_b_rbus_i  (1'b0        ), // TODO - Bus Read Value
    .regf_word1_bRO_cNone_iNone_d0_s0_rbus_i (1'b0        ), // TODO - Bus Read Value
    .regf_word1_bRO_cNone_iNone_d0_s1_rbus_i (1'b0        ), // TODO - Bus Read Value
    .regf_word1_bRO_cNone_iNone_d0_s2_rbus_i (1'b0        ), // TODO - Bus Read Value
    .regf_word2_bRW_cNone_iNone_d0_a_rval_o  (            ), // TODO - Core Read Value
    .regf_word2_bRW_cNone_iNone_d0_a_upd_o   (            ), // TODO - Update Strobe
    .regf_word2_bRW_cNone_iNone_d0_b_rval_o  (            ), // TODO - Core Read Value
    .regf_word2_bRW_cNone_iNone_d0_b_upd_o   (            ), // TODO - Update Strobe
    .regf_word2_bRW_cNone_iNone_d0_s0_rval_o (            ), // TODO - Core Read Value
    .regf_word2_bRW_cNone_iNone_d0_s0_upd_o  (            ), // TODO - Update Strobe
    .regf_word2_bRW_cNone_iNone_d0_s1_rval_o (            ), // TODO - Core Read Value
    .regf_word2_bRW_cNone_iNone_d0_s2_rval_o (            ), // TODO - Core Read Value
    .regf_word2_bRW_cNone_iNone_d0_s2_upd_o  (            ), // TODO - Update Strobe
    .regf_word0_bRW_cNone_iNone_d1_a_rval_o  (            ), // TODO - Core Read Value
    .regf_word0_bRW_cNone_iNone_d1_b_rval_o  (            ), // TODO - Core Read Value
    .regf_word0_bRW_cNone_iNone_d1_s0_rval_o (            ), // TODO - Core Read Value
    .regf_word0_bRW_cNone_iNone_d1_s1_rval_o (            ), // TODO - Core Read Value
    .regf_word0_bRW_cNone_iNone_d1_s2_upd_o  (            ), // TODO - Update Strobe
    .regf_word0_bRW_cNone_iNone_d1_s2_rval_o (            ), // TODO - Core Read Value
    .regf_word0_bRO_cNone_iNone_d1_a_rbus_i  ('{1{6'h03}} ), // TODO - Bus Read Value
    .regf_word0_bRO_cNone_iNone_d1_b_rbus_i  ('{1{1'b0}}  ), // TODO - Bus Read Value
    .regf_word0_bRO_cNone_iNone_d1_s0_rbus_i ('{1{1'b0}}  ), // TODO - Bus Read Value
    .regf_word0_bRO_cNone_iNone_d1_s1_rbus_i ('{1{1'b0}}  ), // TODO - Bus Read Value
    .regf_word0_bRO_cNone_iNone_d1_s2_rbus_i ('{1{1'b0}}  ), // TODO - Bus Read Value
    .regf_word1_bRW_cNone_iNone_d1_a_rval_o  (            ), // TODO - Core Read Value
    .regf_word1_bRW_cNone_iNone_d1_b_rval_o  (            ), // TODO - Core Read Value
    .regf_word1_bRW_cNone_iNone_d1_s0_rval_o (            ), // TODO - Core Read Value
    .regf_word1_bRW_cNone_iNone_d1_s1_rval_o (            ), // TODO - Core Read Value
    .regf_word1_bRW_cNone_iNone_d1_s2_upd_o  (            ), // TODO - Update Strobe
    .regf_word1_bRW_cNone_iNone_d1_s2_rval_o (            ), // TODO - Core Read Value
    .regf_word1_bRO_cNone_iNone_d1_a_rbus_i  ('{1{6'h03}} ), // TODO - Bus Read Value
    .regf_word1_bRO_cNone_iNone_d1_b_rbus_i  ('{1{1'b0}}  ), // TODO - Bus Read Value
    .regf_word1_bRO_cNone_iNone_d1_s0_rbus_i ('{1{1'b0}}  ), // TODO - Bus Read Value
    .regf_word1_bRO_cNone_iNone_d1_s1_rbus_i ('{1{1'b0}}  ), // TODO - Bus Read Value
    .regf_word1_bRO_cNone_iNone_d1_s2_rbus_i ('{1{1'b0}}  ), // TODO - Bus Read Value
    .regf_word2_bRW_cNone_iNone_d1_a_upd_o   (            ), // TODO - Update Strobe
    .regf_word2_bRW_cNone_iNone_d1_a_rval_o  (            ), // TODO - Core Read Value
    .regf_word2_bRW_cNone_iNone_d1_b_upd_o   (            ), // TODO - Update Strobe
    .regf_word2_bRW_cNone_iNone_d1_b_rval_o  (            ), // TODO - Core Read Value
    .regf_word2_bRW_cNone_iNone_d1_s0_upd_o  (            ), // TODO - Update Strobe
    .regf_word2_bRW_cNone_iNone_d1_s0_rval_o (            ), // TODO - Core Read Value
    .regf_word2_bRW_cNone_iNone_d1_s1_rval_o (            ), // TODO - Core Read Value
    .regf_word2_bRW_cNone_iNone_d1_s2_upd_o  (            ), // TODO - Update Strobe
    .regf_word2_bRW_cNone_iNone_d1_s2_rval_o (            ), // TODO - Core Read Value
    .regf_word0_bRW_cNone_iNone_d5_a_rval_o  (            ), // TODO - Core Read Value
    .regf_word0_bRW_cNone_iNone_d5_b_rval_o  (            ), // TODO - Core Read Value
    .regf_word0_bRW_cNone_iNone_d5_s0_rval_o (            ), // TODO - Core Read Value
    .regf_word0_bRW_cNone_iNone_d5_s1_rval_o (            ), // TODO - Core Read Value
    .regf_word0_bRW_cNone_iNone_d5_s2_upd_o  (            ), // TODO - Update Strobe
    .regf_word0_bRW_cNone_iNone_d5_s2_rval_o (            ), // TODO - Core Read Value
    .regf_word0_bRO_cNone_iNone_d5_a_rbus_i  ('{5{6'h03}} ), // TODO - Bus Read Value
    .regf_word0_bRO_cNone_iNone_d5_b_rbus_i  ('{5{1'b0}}  ), // TODO - Bus Read Value
    .regf_word0_bRO_cNone_iNone_d5_s0_rbus_i ('{5{1'b0}}  ), // TODO - Bus Read Value
    .regf_word0_bRO_cNone_iNone_d5_s1_rbus_i ('{5{1'b0}}  ), // TODO - Bus Read Value
    .regf_word0_bRO_cNone_iNone_d5_s2_rbus_i ('{5{1'b0}}  ), // TODO - Bus Read Value
    .regf_word1_bRW_cNone_iNone_d5_a_rval_o  (            ), // TODO - Core Read Value
    .regf_word1_bRW_cNone_iNone_d5_b_rval_o  (            ), // TODO - Core Read Value
    .regf_word1_bRW_cNone_iNone_d5_s0_rval_o (            ), // TODO - Core Read Value
    .regf_word1_bRW_cNone_iNone_d5_s1_rval_o (            ), // TODO - Core Read Value
    .regf_word1_bRW_cNone_iNone_d5_s2_upd_o  (            ), // TODO - Update Strobe
    .regf_word1_bRW_cNone_iNone_d5_s2_rval_o (            ), // TODO - Core Read Value
    .regf_word1_bRO_cNone_iNone_d5_a_rbus_i  ('{5{6'h03}} ), // TODO - Bus Read Value
    .regf_word1_bRO_cNone_iNone_d5_b_rbus_i  ('{5{1'b0}}  ), // TODO - Bus Read Value
    .regf_word1_bRO_cNone_iNone_d5_s0_rbus_i ('{5{1'b0}}  ), // TODO - Bus Read Value
    .regf_word1_bRO_cNone_iNone_d5_s1_rbus_i ('{5{1'b0}}  ), // TODO - Bus Read Value
    .regf_word1_bRO_cNone_iNone_d5_s2_rbus_i ('{5{1'b0}}  ), // TODO - Bus Read Value
    .regf_word2_bRW_cNone_iNone_d5_a_upd_o   (            ), // TODO - Update Strobe
    .regf_word2_bRW_cNone_iNone_d5_a_rval_o  (            ), // TODO - Core Read Value
    .regf_word2_bRW_cNone_iNone_d5_b_upd_o   (            ), // TODO - Update Strobe
    .regf_word2_bRW_cNone_iNone_d5_b_rval_o  (            ), // TODO - Core Read Value
    .regf_word2_bRW_cNone_iNone_d5_s0_upd_o  (            ), // TODO - Update Strobe
    .regf_word2_bRW_cNone_iNone_d5_s0_rval_o (            ), // TODO - Core Read Value
    .regf_word2_bRW_cNone_iNone_d5_s1_rval_o (            ), // TODO - Core Read Value
    .regf_word2_bRW_cNone_iNone_d5_s2_upd_o  (            ), // TODO - Update Strobe
    .regf_word2_bRW_cNone_iNone_d5_s2_rval_o (            ), // TODO - Core Read Value
    .regf_foo_www_a_rval_o                   (            ), // TODO - Core Read Value
    .regf_foo_www_b_rval_o                   (            ), // TODO - Core Read Value
    .regf_bar_www_a_rval_o                   (            ), // TODO - Core Read Value
    .regf_bar_www_b_rval_o                   (            ), // TODO - Core Read Value
    .regfword_word1_bRW_cNone_iNone_d0_rval_o(            ), // TODO - Core Read Value
    .regfword_word1_bRO_cNone_iNone_d0_rval_o(            ), // TODO - Core Read Value
    .regfword_word2_bRW_cNone_iNone_d0_rval_o(            ), // TODO - Core Read Value
    .regfword_word2_bRW_cNone_iNone_d0_upd_o (            ), // TODO - Update Strobe
    .regfword_word1_bRW_cNone_iNone_d1_rval_o(            ), // TODO - Core Read Value
    .regfword_word1_bRO_cNone_iNone_d1_rval_o(            ), // TODO - Core Read Value
    .regfword_word2_bRW_cNone_iNone_d1_upd_o (            ), // TODO - Update Strobe
    .regfword_word2_bRW_cNone_iNone_d1_rval_o(            ), // TODO - Core Read Value
    .regfword_word1_bRW_cNone_iNone_d5_rval_o(            ), // TODO - Core Read Value
    .regfword_word1_bRO_cNone_iNone_d5_rval_o(            ), // TODO - Core Read Value
    .regfword_word2_bRW_cNone_iNone_d5_upd_o (            ), // TODO - Update Strobe
    .regfword_word2_bRW_cNone_iNone_d5_rval_o(            ), // TODO - Core Read Value
    .regfword_foo_www_rval_o                 (            ), // TODO - Core Read Value
    .regfword_foo_www_upd_o                  (            ), // TODO - Update Strobe
    .regfword_bar_www_rval_o                 (            ), // TODO - Core Read Value
    .regfword_bar_www_upd_o                  (            )  // TODO - Update Strobe
  );

endmodule // word_field

`default_nettype wire
`end_keywords

// =============================================================================
//
//   @generated @fully-generated
//
//   THIS FILE IS GENERATED!!! DO NOT EDIT MANUALLY. CHANGES ARE LOST.
//
// =============================================================================
