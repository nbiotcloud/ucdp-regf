// =============================================================================
//
// Module:     tests.reset1
// Data Model: tests.test_svmako.Reset1Mod
//
// =============================================================================

`begin_keywords 1800-2009

module reset1 ( // tests.test_svmako.Reset1Mod
  // main_i
  input wire main_clk_i,
  input wire main_rst_an_i // Async Reset (Low-Active)
);



  // ------------------------------------------------------
  //  Signals
  // ------------------------------------------------------
  logic busy_s;


  // ------------------------------------------------------
  //  tests.reset1_regf: u_regf
  // ------------------------------------------------------
  reset1_regf u_regf (
    // main_i
    .main_clk_i           (main_clk_i   ),
    .main_rst_an_i        (main_rst_an_i), // Async Reset (Low-Active)
    // mem_i
    .mem_ena_i            (1'b0         ), // TODO
    .mem_addr_i           (13'h0000     ), // TODO
    .mem_wena_i           (1'b0         ), // TODO
    .mem_wdata_i          (32'h00000000 ), // TODO
    .mem_rdata_o          (             ), // TODO
    .mem_err_o            (             ), // TODO
    // regf_o
    // regf_ctrl_ena_o: bus=RW core=RO in_regf=True
    .regf_ctrl_ena_rval_o (             ), // TODO - Core Read Value
    // regf_ctrl_busy_o: bus=RO core=RW in_regf=False
    .regf_ctrl_busy_rbus_i(busy_s       ), // Bus Read Value
    .soft_rst_i           (1'b0         )  // TODO
  );

endmodule // reset1

`end_keywords
