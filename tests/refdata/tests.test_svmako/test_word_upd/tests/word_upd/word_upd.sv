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
// Module:     word_upd
// Data Model: WordUpdMod
//             tests/test_svmako.py
//
// =============================================================================

`begin_keywords "1800-2009"
`default_nettype none  // implicit wires are forbidden

module word_upd();



  // ------------------------------------------------------
  //  tests.word_upd_regf: u_regf
  // ------------------------------------------------------
  word_upd_regf u_regf (
    .main_clk_i                (1'b0        ), // TODO - Clock
    .main_rst_an_i             (1'b0        ), // TODO - Async Reset (Low-Active)
    .mem_ena_i                 (1'b0        ), // TODO - Memory Access Enable
    .mem_addr_i                (10'h000     ), // TODO - Memory Address
    .mem_wena_i                (1'b0        ), // TODO - Memory Write Enable
    .mem_wdata_i               (32'h00000000), // TODO - Memory Write Data
    .mem_rdata_o               (            ), // TODO - Memory Read Data
    .mem_err_o                 (            ), // TODO - Memory Access Failed.
    .regf_wup_f0_rval_o        (            ), // TODO - Core Read Value
    .regf_wup_f1_rval_o        (            ), // TODO - Core Read Value
    .regf_wup_upd_o            (            ), // TODO - wup update strobe
    .regf_grpc_wupgrp_f0_rval_o(            ), // TODO - Core Read Value
    .regf_grpa_wupgrp_upd_o    (            ), // TODO - wupgrp update strobe
    .regf_grpb_wupgrp_upd_o    (            ), // TODO - wupgrp update strobe
    .regf_grpd_ugr_f0_rval_o   (            ), // TODO - Core Read Value
    .regf_grpw_ugr_f0_upd_o    (            )  // TODO - Update Strobe
  );

endmodule // word_upd

`default_nettype wire
`end_keywords

// =============================================================================
//
//   @generated @fully-generated
//
//   THIS FILE IS GENERATED!!! DO NOT EDIT MANUALLY. CHANGES ARE LOST.
//
// =============================================================================
