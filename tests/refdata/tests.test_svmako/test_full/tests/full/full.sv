// =============================================================================
//
// Module:     tests.full
// Data Model: tests.test_svmako.FullMod
//
// =============================================================================


module full();



  // ------------------------------------------------------
  //  tests.full_regf: u_regf
  // ------------------------------------------------------
  full_regf u_regf (
    // main_i
    .main_clk_i         (1'b0        ), // TODO
    .main_rst_an_i      (1'b0        ), // TODO - Async Reset (Low-Active)
    // mem_i
    .mem_ena_i          (1'b0        ), // TODO
    .mem_addr_i         (16'h0000    ), // TODO
    .mem_wena_i         (1'b0        ), // TODO
    .mem_wdata_i        (32'h00000000), // TODO
    .mem_rdata_o        (            ), // TODO
    .mem_err_i          (1'b0        ), // TODO
    // regf_o
    // regf_w0_f0_o: bus=None core=RO in_regf=False
    // regf_w0_f2_o: bus=None core=RO in_regf=True
    .regf_w0_f2_rval_o  (            ), // TODO - Core Read Value
    // regf_w0_f4_o: bus=None core=RC in_regf=False
    // regf_w0_f6_o: bus=None core=RC in_regf=True
    .regf_w0_f6_rval_o  (            ), // TODO - Core Read Value
    .regf_w0_f6_rd_i    (1'b0        ), // TODO - Core Read Strobe
    // regf_w0_f8_o: bus=None core=RS in_regf=False
    // regf_w0_f10_o: bus=None core=RS in_regf=True
    .regf_w0_f10_rval_o (            ), // TODO - Core Read Value
    .regf_w0_f10_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w0_f12_o: bus=None core=WO in_regf=False
    // regf_w0_f14_o: bus=None core=WO in_regf=True
    .regf_w0_f14_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w0_f14_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w0_f16_o: bus=None core=W1C in_regf=False
    // regf_w0_f18_o: bus=None core=W1C in_regf=True
    .regf_w0_f18_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w0_f18_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w0_f20_o: bus=None core=W1S in_regf=False
    // regf_w0_f22_o: bus=None core=W1S in_regf=True
    .regf_w0_f22_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w0_f22_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w0_f24_o: bus=None core=RW in_regf=False
    // regf_w0_f26_o: bus=None core=RW in_regf=True
    .regf_w0_f26_rval_o (            ), // TODO - Core Read Value
    .regf_w0_f26_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w0_f26_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w0_f28_o: bus=None core=RW1C in_regf=False
    // regf_w0_f30_o: bus=None core=RW1C in_regf=True
    .regf_w0_f30_rval_o (            ), // TODO - Core Read Value
    .regf_w0_f30_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w0_f30_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w1_f0_o: bus=None core=RW1S in_regf=False
    // regf_w1_f2_o: bus=None core=RW1S in_regf=True
    .regf_w1_f2_rval_o  (            ), // TODO - Core Read Value
    .regf_w1_f2_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w1_f2_wr_i    (1'b0        ), // TODO - Core Write Strobe
    // regf_w1_f4_o: bus=RO core=RO in_regf=False
    .regf_w1_f4_rbus_i  (2'h0        ), // TODO - Bus Read Value
    // regf_w1_f6_o: bus=RO core=RO in_regf=True
    .regf_w1_f6_rval_o  (            ), // TODO - Core Read Value
    // regf_w1_f8_o: bus=RO core=RC in_regf=False
    .regf_w1_f8_rbus_i  (2'h0        ), // TODO - Bus Read Value
    // regf_w1_f10_o: bus=RO core=RC in_regf=True
    .regf_w1_f10_rval_o (            ), // TODO - Core Read Value
    .regf_w1_f10_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w1_f12_o: bus=RO core=RS in_regf=False
    .regf_w1_f12_rbus_i (2'h0        ), // TODO - Bus Read Value
    // regf_w1_f14_o: bus=RO core=RS in_regf=True
    .regf_w1_f14_rval_o (            ), // TODO - Core Read Value
    .regf_w1_f14_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w1_f16_o: bus=RO core=WO in_regf=False
    .regf_w1_f16_rbus_i (2'h0        ), // TODO - Bus Read Value
    // regf_w1_f18_o: bus=RO core=WO in_regf=True
    .regf_w1_f18_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w1_f18_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w1_f20_o: bus=RO core=W1C in_regf=False
    .regf_w1_f20_rbus_i (2'h0        ), // TODO - Bus Read Value
    // regf_w1_f22_o: bus=RO core=W1C in_regf=True
    .regf_w1_f22_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w1_f22_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w1_f24_o: bus=RO core=W1S in_regf=False
    .regf_w1_f24_rbus_i (2'h0        ), // TODO - Bus Read Value
    // regf_w1_f26_o: bus=RO core=W1S in_regf=True
    .regf_w1_f26_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w1_f26_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w1_f28_o: bus=RO core=RW in_regf=False
    .regf_w1_f28_rbus_i (2'h0        ), // TODO - Bus Read Value
    // regf_w1_f30_o: bus=RO core=RW in_regf=True
    .regf_w1_f30_rval_o (            ), // TODO - Core Read Value
    .regf_w1_f30_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w1_f30_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w2_f0_o: bus=RO core=RW1C in_regf=False
    .regf_w2_f0_rbus_i  (2'h0        ), // TODO - Bus Read Value
    // regf_w2_f2_o: bus=RO core=RW1C in_regf=True
    .regf_w2_f2_rval_o  (            ), // TODO - Core Read Value
    .regf_w2_f2_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w2_f2_wr_i    (1'b0        ), // TODO - Core Write Strobe
    // regf_w2_f4_o: bus=RO core=RW1S in_regf=False
    .regf_w2_f4_rbus_i  (2'h0        ), // TODO - Bus Read Value
    // regf_w2_f6_o: bus=RO core=RW1S in_regf=True
    .regf_w2_f6_rval_o  (            ), // TODO - Core Read Value
    .regf_w2_f6_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w2_f6_wr_i    (1'b0        ), // TODO - Core Write Strobe
    // regf_w2_f8_o: bus=RC core=RO in_regf=False
    .regf_w2_f8_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w2_f8_rd_o    (            ), // TODO - Bus Read Strobe
    // regf_w2_f10_o: bus=RC core=RO in_regf=True
    .regf_w2_f10_rval_o (            ), // TODO - Core Read Value
    // regf_w2_f12_o: bus=RC core=RC in_regf=False
    .regf_w2_f12_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w2_f12_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w2_f14_o: bus=RC core=RC in_regf=True
    .regf_w2_f14_rval_o (            ), // TODO - Core Read Value
    .regf_w2_f14_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w2_f16_o: bus=RC core=RS in_regf=False
    .regf_w2_f16_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w2_f16_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w2_f18_o: bus=RC core=RS in_regf=True
    .regf_w2_f18_rval_o (            ), // TODO - Core Read Value
    .regf_w2_f18_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w2_f20_o: bus=RC core=WO in_regf=False
    .regf_w2_f20_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w2_f20_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w2_f22_o: bus=RC core=WO in_regf=True
    .regf_w2_f22_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w2_f22_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w2_f24_o: bus=RC core=W1C in_regf=False
    .regf_w2_f24_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w2_f24_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w2_f26_o: bus=RC core=W1C in_regf=True
    .regf_w2_f26_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w2_f26_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w2_f28_o: bus=RC core=W1S in_regf=False
    .regf_w2_f28_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w2_f28_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w2_f30_o: bus=RC core=W1S in_regf=True
    .regf_w2_f30_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w2_f30_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w3_f0_o: bus=RC core=RW in_regf=False
    .regf_w3_f0_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w3_f0_rd_o    (            ), // TODO - Bus Read Strobe
    // regf_w3_f2_o: bus=RC core=RW in_regf=True
    .regf_w3_f2_rval_o  (            ), // TODO - Core Read Value
    .regf_w3_f2_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w3_f2_wr_i    (1'b0        ), // TODO - Core Write Strobe
    // regf_w3_f4_o: bus=RC core=RW1C in_regf=False
    .regf_w3_f4_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w3_f4_rd_o    (            ), // TODO - Bus Read Strobe
    // regf_w3_f6_o: bus=RC core=RW1C in_regf=True
    .regf_w3_f6_rval_o  (            ), // TODO - Core Read Value
    .regf_w3_f6_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w3_f6_wr_i    (1'b0        ), // TODO - Core Write Strobe
    // regf_w3_f8_o: bus=RC core=RW1S in_regf=False
    .regf_w3_f8_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w3_f8_rd_o    (            ), // TODO - Bus Read Strobe
    // regf_w3_f10_o: bus=RC core=RW1S in_regf=True
    .regf_w3_f10_rval_o (            ), // TODO - Core Read Value
    .regf_w3_f10_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w3_f10_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w3_f12_o: bus=RS core=RO in_regf=False
    .regf_w3_f12_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w3_f12_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w3_f14_o: bus=RS core=RO in_regf=True
    .regf_w3_f14_rval_o (            ), // TODO - Core Read Value
    // regf_w3_f16_o: bus=RS core=RC in_regf=False
    .regf_w3_f16_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w3_f16_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w3_f18_o: bus=RS core=RC in_regf=True
    .regf_w3_f18_rval_o (            ), // TODO - Core Read Value
    .regf_w3_f18_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w3_f20_o: bus=RS core=RS in_regf=False
    .regf_w3_f20_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w3_f20_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w3_f22_o: bus=RS core=RS in_regf=True
    .regf_w3_f22_rval_o (            ), // TODO - Core Read Value
    .regf_w3_f22_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w3_f24_o: bus=RS core=WO in_regf=False
    .regf_w3_f24_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w3_f24_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w3_f26_o: bus=RS core=WO in_regf=True
    .regf_w3_f26_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w3_f26_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w3_f28_o: bus=RS core=W1C in_regf=False
    .regf_w3_f28_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w3_f28_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w3_f30_o: bus=RS core=W1C in_regf=True
    .regf_w3_f30_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w3_f30_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w4_f0_o: bus=RS core=W1S in_regf=False
    .regf_w4_f0_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w4_f0_rd_o    (            ), // TODO - Bus Read Strobe
    // regf_w4_f2_o: bus=RS core=W1S in_regf=True
    .regf_w4_f2_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w4_f2_wr_i    (1'b0        ), // TODO - Core Write Strobe
    // regf_w4_f4_o: bus=RS core=RW in_regf=False
    .regf_w4_f4_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w4_f4_rd_o    (            ), // TODO - Bus Read Strobe
    // regf_w4_f6_o: bus=RS core=RW in_regf=True
    .regf_w4_f6_rval_o  (            ), // TODO - Core Read Value
    .regf_w4_f6_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w4_f6_wr_i    (1'b0        ), // TODO - Core Write Strobe
    // regf_w4_f8_o: bus=RS core=RW1C in_regf=False
    .regf_w4_f8_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w4_f8_rd_o    (            ), // TODO - Bus Read Strobe
    // regf_w4_f10_o: bus=RS core=RW1C in_regf=True
    .regf_w4_f10_rval_o (            ), // TODO - Core Read Value
    .regf_w4_f10_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w4_f10_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w4_f12_o: bus=RS core=RW1S in_regf=False
    .regf_w4_f12_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w4_f12_rd_o   (            ), // TODO - Bus Read Strobe
    // regf_w4_f14_o: bus=RS core=RW1S in_regf=True
    .regf_w4_f14_rval_o (            ), // TODO - Core Read Value
    .regf_w4_f14_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w4_f14_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w4_f16_o: bus=WO core=RO in_regf=False
    .regf_w4_f16_wbus_o (            ), // TODO - Bus Write Value
    .regf_w4_f16_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w4_f18_o: bus=WO core=RO in_regf=True
    .regf_w4_f18_rval_o (            ), // TODO - Core Read Value
    // regf_w4_f20_o: bus=WO core=RC in_regf=False
    .regf_w4_f20_wbus_o (            ), // TODO - Bus Write Value
    .regf_w4_f20_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w4_f22_o: bus=WO core=RC in_regf=True
    .regf_w4_f22_rval_o (            ), // TODO - Core Read Value
    .regf_w4_f22_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w4_f24_o: bus=WO core=RS in_regf=False
    .regf_w4_f24_wbus_o (            ), // TODO - Bus Write Value
    .regf_w4_f24_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w4_f26_o: bus=WO core=RS in_regf=True
    .regf_w4_f26_rval_o (            ), // TODO - Core Read Value
    .regf_w4_f26_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w4_f28_o: bus=WO core=WO in_regf=False
    .regf_w4_f28_wbus_o (            ), // TODO - Bus Write Value
    .regf_w4_f28_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w4_f30_o: bus=WO core=WO in_regf=True
    .regf_w4_f30_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w4_f30_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w5_f0_o: bus=WO core=W1C in_regf=False
    .regf_w5_f0_wbus_o  (            ), // TODO - Bus Write Value
    .regf_w5_f0_wr_o    (            ), // TODO - Bus Write Strobe
    // regf_w5_f2_o: bus=WO core=W1C in_regf=True
    .regf_w5_f2_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w5_f2_wr_i    (1'b0        ), // TODO - Core Write Strobe
    // regf_w5_f4_o: bus=WO core=W1S in_regf=False
    .regf_w5_f4_wbus_o  (            ), // TODO - Bus Write Value
    .regf_w5_f4_wr_o    (            ), // TODO - Bus Write Strobe
    // regf_w5_f6_o: bus=WO core=W1S in_regf=True
    .regf_w5_f6_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w5_f6_wr_i    (1'b0        ), // TODO - Core Write Strobe
    // regf_w5_f8_o: bus=WO core=RW in_regf=False
    .regf_w5_f8_wbus_o  (            ), // TODO - Bus Write Value
    .regf_w5_f8_wr_o    (            ), // TODO - Bus Write Strobe
    // regf_w5_f10_o: bus=WO core=RW in_regf=True
    .regf_w5_f10_rval_o (            ), // TODO - Core Read Value
    .regf_w5_f10_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w5_f10_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w5_f12_o: bus=WO core=RW1C in_regf=False
    .regf_w5_f12_wbus_o (            ), // TODO - Bus Write Value
    .regf_w5_f12_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w5_f14_o: bus=WO core=RW1C in_regf=True
    .regf_w5_f14_rval_o (            ), // TODO - Core Read Value
    .regf_w5_f14_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w5_f14_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w5_f16_o: bus=WO core=RW1S in_regf=False
    .regf_w5_f16_wbus_o (            ), // TODO - Bus Write Value
    .regf_w5_f16_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w5_f18_o: bus=WO core=RW1S in_regf=True
    .regf_w5_f18_rval_o (            ), // TODO - Core Read Value
    .regf_w5_f18_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w5_f18_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w5_f20_o: bus=W1C core=RO in_regf=False
    .regf_w5_f20_wbus_o (            ), // TODO - Bus Write Value
    .regf_w5_f20_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w5_f22_o: bus=W1C core=RO in_regf=True
    .regf_w5_f22_rval_o (            ), // TODO - Core Read Value
    // regf_w5_f24_o: bus=W1C core=RC in_regf=False
    .regf_w5_f24_wbus_o (            ), // TODO - Bus Write Value
    .regf_w5_f24_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w5_f26_o: bus=W1C core=RC in_regf=True
    .regf_w5_f26_rval_o (            ), // TODO - Core Read Value
    .regf_w5_f26_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w5_f28_o: bus=W1C core=RS in_regf=False
    .regf_w5_f28_wbus_o (            ), // TODO - Bus Write Value
    .regf_w5_f28_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w5_f30_o: bus=W1C core=RS in_regf=True
    .regf_w5_f30_rval_o (            ), // TODO - Core Read Value
    .regf_w5_f30_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w6_f0_o: bus=W1C core=WO in_regf=False
    .regf_w6_f0_wbus_o  (            ), // TODO - Bus Write Value
    .regf_w6_f0_wr_o    (            ), // TODO - Bus Write Strobe
    // regf_w6_f2_o: bus=W1C core=WO in_regf=True
    .regf_w6_f2_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w6_f2_wr_i    (1'b0        ), // TODO - Core Write Strobe
    // regf_w6_f4_o: bus=W1C core=W1C in_regf=False
    .regf_w6_f4_wbus_o  (            ), // TODO - Bus Write Value
    .regf_w6_f4_wr_o    (            ), // TODO - Bus Write Strobe
    // regf_w6_f6_o: bus=W1C core=W1C in_regf=True
    .regf_w6_f6_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w6_f6_wr_i    (1'b0        ), // TODO - Core Write Strobe
    // regf_w6_f8_o: bus=W1C core=W1S in_regf=False
    .regf_w6_f8_wbus_o  (            ), // TODO - Bus Write Value
    .regf_w6_f8_wr_o    (            ), // TODO - Bus Write Strobe
    // regf_w6_f10_o: bus=W1C core=W1S in_regf=True
    .regf_w6_f10_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w6_f10_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w6_f12_o: bus=W1C core=RW in_regf=False
    .regf_w6_f12_wbus_o (            ), // TODO - Bus Write Value
    .regf_w6_f12_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w6_f14_o: bus=W1C core=RW in_regf=True
    .regf_w6_f14_rval_o (            ), // TODO - Core Read Value
    .regf_w6_f14_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w6_f14_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w6_f16_o: bus=W1C core=RW1C in_regf=False
    .regf_w6_f16_wbus_o (            ), // TODO - Bus Write Value
    .regf_w6_f16_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w6_f18_o: bus=W1C core=RW1C in_regf=True
    .regf_w6_f18_rval_o (            ), // TODO - Core Read Value
    .regf_w6_f18_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w6_f18_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w6_f20_o: bus=W1C core=RW1S in_regf=False
    .regf_w6_f20_wbus_o (            ), // TODO - Bus Write Value
    .regf_w6_f20_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w6_f22_o: bus=W1C core=RW1S in_regf=True
    .regf_w6_f22_rval_o (            ), // TODO - Core Read Value
    .regf_w6_f22_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w6_f22_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w6_f24_o: bus=W1S core=RO in_regf=False
    .regf_w6_f24_wbus_o (            ), // TODO - Bus Write Value
    .regf_w6_f24_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w6_f26_o: bus=W1S core=RO in_regf=True
    .regf_w6_f26_rval_o (            ), // TODO - Core Read Value
    // regf_w6_f28_o: bus=W1S core=RC in_regf=False
    .regf_w6_f28_wbus_o (            ), // TODO - Bus Write Value
    .regf_w6_f28_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w6_f30_o: bus=W1S core=RC in_regf=True
    .regf_w6_f30_rval_o (            ), // TODO - Core Read Value
    .regf_w6_f30_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w7_f0_o: bus=W1S core=RS in_regf=False
    .regf_w7_f0_wbus_o  (            ), // TODO - Bus Write Value
    .regf_w7_f0_wr_o    (            ), // TODO - Bus Write Strobe
    // regf_w7_f2_o: bus=W1S core=RS in_regf=True
    .regf_w7_f2_rval_o  (            ), // TODO - Core Read Value
    .regf_w7_f2_rd_i    (1'b0        ), // TODO - Core Read Strobe
    // regf_w7_f4_o: bus=W1S core=WO in_regf=False
    .regf_w7_f4_wbus_o  (            ), // TODO - Bus Write Value
    .regf_w7_f4_wr_o    (            ), // TODO - Bus Write Strobe
    // regf_w7_f6_o: bus=W1S core=WO in_regf=True
    .regf_w7_f6_wval_i  (2'h0        ), // TODO - Core Write Value
    .regf_w7_f6_wr_i    (1'b0        ), // TODO - Core Write Strobe
    // regf_w7_f8_o: bus=W1S core=W1C in_regf=False
    .regf_w7_f8_wbus_o  (            ), // TODO - Bus Write Value
    .regf_w7_f8_wr_o    (            ), // TODO - Bus Write Strobe
    // regf_w7_f10_o: bus=W1S core=W1C in_regf=True
    .regf_w7_f10_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w7_f10_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w7_f12_o: bus=W1S core=W1S in_regf=False
    .regf_w7_f12_wbus_o (            ), // TODO - Bus Write Value
    .regf_w7_f12_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w7_f14_o: bus=W1S core=W1S in_regf=True
    .regf_w7_f14_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w7_f14_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w7_f16_o: bus=W1S core=RW in_regf=False
    .regf_w7_f16_wbus_o (            ), // TODO - Bus Write Value
    .regf_w7_f16_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w7_f18_o: bus=W1S core=RW in_regf=True
    .regf_w7_f18_rval_o (            ), // TODO - Core Read Value
    .regf_w7_f18_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w7_f18_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w7_f20_o: bus=W1S core=RW1C in_regf=False
    .regf_w7_f20_wbus_o (            ), // TODO - Bus Write Value
    .regf_w7_f20_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w7_f22_o: bus=W1S core=RW1C in_regf=True
    .regf_w7_f22_rval_o (            ), // TODO - Core Read Value
    .regf_w7_f22_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w7_f22_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w7_f24_o: bus=W1S core=RW1S in_regf=False
    .regf_w7_f24_wbus_o (            ), // TODO - Bus Write Value
    .regf_w7_f24_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w7_f26_o: bus=W1S core=RW1S in_regf=True
    .regf_w7_f26_rval_o (            ), // TODO - Core Read Value
    .regf_w7_f26_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w7_f26_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w7_f28_o: bus=RW core=RO in_regf=False
    .regf_w7_f28_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w7_f28_wbus_o (            ), // TODO - Bus Write Value
    .regf_w7_f28_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w7_f30_o: bus=RW core=RO in_regf=True
    .regf_w7_f30_rval_o (            ), // TODO - Core Read Value
    // regf_w8_f0_o: bus=RW core=RC in_regf=False
    .regf_w8_f0_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w8_f0_wbus_o  (            ), // TODO - Bus Write Value
    .regf_w8_f0_wr_o    (            ), // TODO - Bus Write Strobe
    // regf_w8_f2_o: bus=RW core=RC in_regf=True
    .regf_w8_f2_rval_o  (            ), // TODO - Core Read Value
    .regf_w8_f2_rd_i    (1'b0        ), // TODO - Core Read Strobe
    // regf_w8_f4_o: bus=RW core=RS in_regf=False
    .regf_w8_f4_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w8_f4_wbus_o  (            ), // TODO - Bus Write Value
    .regf_w8_f4_wr_o    (            ), // TODO - Bus Write Strobe
    // regf_w8_f6_o: bus=RW core=RS in_regf=True
    .regf_w8_f6_rval_o  (            ), // TODO - Core Read Value
    .regf_w8_f6_rd_i    (1'b0        ), // TODO - Core Read Strobe
    // regf_w8_f8_o: bus=RW core=WO in_regf=False
    .regf_w8_f8_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w8_f8_wbus_o  (            ), // TODO - Bus Write Value
    .regf_w8_f8_wr_o    (            ), // TODO - Bus Write Strobe
    // regf_w8_f10_o: bus=RW core=WO in_regf=True
    .regf_w8_f10_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w8_f10_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w8_f12_o: bus=RW core=W1C in_regf=False
    .regf_w8_f12_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w8_f12_wbus_o (            ), // TODO - Bus Write Value
    .regf_w8_f12_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w8_f14_o: bus=RW core=W1C in_regf=True
    .regf_w8_f14_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w8_f14_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w8_f16_o: bus=RW core=W1S in_regf=False
    .regf_w8_f16_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w8_f16_wbus_o (            ), // TODO - Bus Write Value
    .regf_w8_f16_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w8_f18_o: bus=RW core=W1S in_regf=True
    .regf_w8_f18_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w8_f18_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w8_f20_o: bus=RW core=RW in_regf=False
    .regf_w8_f20_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w8_f20_wbus_o (            ), // TODO - Bus Write Value
    .regf_w8_f20_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w8_f22_o: bus=RW core=RW in_regf=True
    .regf_w8_f22_rval_o (            ), // TODO - Core Read Value
    .regf_w8_f22_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w8_f22_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w8_f24_o: bus=RW core=RW1C in_regf=False
    .regf_w8_f24_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w8_f24_wbus_o (            ), // TODO - Bus Write Value
    .regf_w8_f24_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w8_f26_o: bus=RW core=RW1C in_regf=True
    .regf_w8_f26_rval_o (            ), // TODO - Core Read Value
    .regf_w8_f26_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w8_f26_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w8_f28_o: bus=RW core=RW1S in_regf=False
    .regf_w8_f28_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w8_f28_wbus_o (            ), // TODO - Bus Write Value
    .regf_w8_f28_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w8_f30_o: bus=RW core=RW1S in_regf=True
    .regf_w8_f30_rval_o (            ), // TODO - Core Read Value
    .regf_w8_f30_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w8_f30_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w9_f0_o: bus=RW1C core=RO in_regf=False
    .regf_w9_f0_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w9_f0_wbus_o  (            ), // TODO - Bus Write Value
    .regf_w9_f0_wr_o    (            ), // TODO - Bus Write Strobe
    // regf_w9_f2_o: bus=RW1C core=RO in_regf=True
    .regf_w9_f2_rval_o  (            ), // TODO - Core Read Value
    // regf_w9_f4_o: bus=RW1C core=RC in_regf=False
    .regf_w9_f4_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w9_f4_wbus_o  (            ), // TODO - Bus Write Value
    .regf_w9_f4_wr_o    (            ), // TODO - Bus Write Strobe
    // regf_w9_f6_o: bus=RW1C core=RC in_regf=True
    .regf_w9_f6_rval_o  (            ), // TODO - Core Read Value
    .regf_w9_f6_rd_i    (1'b0        ), // TODO - Core Read Strobe
    // regf_w9_f8_o: bus=RW1C core=RS in_regf=False
    .regf_w9_f8_rbus_i  (2'h0        ), // TODO - Bus Read Value
    .regf_w9_f8_wbus_o  (            ), // TODO - Bus Write Value
    .regf_w9_f8_wr_o    (            ), // TODO - Bus Write Strobe
    // regf_w9_f10_o: bus=RW1C core=RS in_regf=True
    .regf_w9_f10_rval_o (            ), // TODO - Core Read Value
    .regf_w9_f10_rd_i   (1'b0        ), // TODO - Core Read Strobe
    // regf_w9_f12_o: bus=RW1C core=WO in_regf=False
    .regf_w9_f12_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w9_f12_wbus_o (            ), // TODO - Bus Write Value
    .regf_w9_f12_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w9_f14_o: bus=RW1C core=WO in_regf=True
    .regf_w9_f14_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w9_f14_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w9_f16_o: bus=RW1C core=W1C in_regf=False
    .regf_w9_f16_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w9_f16_wbus_o (            ), // TODO - Bus Write Value
    .regf_w9_f16_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w9_f18_o: bus=RW1C core=W1C in_regf=True
    .regf_w9_f18_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w9_f18_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w9_f20_o: bus=RW1C core=W1S in_regf=False
    .regf_w9_f20_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w9_f20_wbus_o (            ), // TODO - Bus Write Value
    .regf_w9_f20_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w9_f22_o: bus=RW1C core=W1S in_regf=True
    .regf_w9_f22_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w9_f22_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w9_f24_o: bus=RW1C core=RW in_regf=False
    .regf_w9_f24_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w9_f24_wbus_o (            ), // TODO - Bus Write Value
    .regf_w9_f24_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w9_f26_o: bus=RW1C core=RW in_regf=True
    .regf_w9_f26_rval_o (            ), // TODO - Core Read Value
    .regf_w9_f26_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w9_f26_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w9_f28_o: bus=RW1C core=RW1C in_regf=False
    .regf_w9_f28_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w9_f28_wbus_o (            ), // TODO - Bus Write Value
    .regf_w9_f28_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w9_f30_o: bus=RW1C core=RW1C in_regf=True
    .regf_w9_f30_rval_o (            ), // TODO - Core Read Value
    .regf_w9_f30_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w9_f30_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w10_f0_o: bus=RW1C core=RW1S in_regf=False
    .regf_w10_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w10_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w10_f0_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w10_f2_o: bus=RW1C core=RW1S in_regf=True
    .regf_w10_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w10_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w10_f2_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w10_f4_o: bus=RW1S core=RO in_regf=False
    .regf_w10_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w10_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w10_f4_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w10_f6_o: bus=RW1S core=RO in_regf=True
    .regf_w10_f6_rval_o (            ), // TODO - Core Read Value
    // regf_w10_f8_o: bus=RW1S core=RC in_regf=False
    .regf_w10_f8_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w10_f8_wbus_o (            ), // TODO - Bus Write Value
    .regf_w10_f8_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w10_f10_o: bus=RW1S core=RC in_regf=True
    .regf_w10_f10_rval_o(            ), // TODO - Core Read Value
    .regf_w10_f10_rd_i  (1'b0        ), // TODO - Core Read Strobe
    // regf_w10_f12_o: bus=RW1S core=RS in_regf=False
    .regf_w10_f12_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w10_f12_wbus_o(            ), // TODO - Bus Write Value
    .regf_w10_f12_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w10_f14_o: bus=RW1S core=RS in_regf=True
    .regf_w10_f14_rval_o(            ), // TODO - Core Read Value
    .regf_w10_f14_rd_i  (1'b0        ), // TODO - Core Read Strobe
    // regf_w10_f16_o: bus=RW1S core=WO in_regf=False
    .regf_w10_f16_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w10_f16_wbus_o(            ), // TODO - Bus Write Value
    .regf_w10_f16_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w10_f18_o: bus=RW1S core=WO in_regf=True
    .regf_w10_f18_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w10_f18_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w10_f20_o: bus=RW1S core=W1C in_regf=False
    .regf_w10_f20_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w10_f20_wbus_o(            ), // TODO - Bus Write Value
    .regf_w10_f20_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w10_f22_o: bus=RW1S core=W1C in_regf=True
    .regf_w10_f22_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w10_f22_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w10_f24_o: bus=RW1S core=W1S in_regf=False
    .regf_w10_f24_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w10_f24_wbus_o(            ), // TODO - Bus Write Value
    .regf_w10_f24_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w10_f26_o: bus=RW1S core=W1S in_regf=True
    .regf_w10_f26_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w10_f26_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w10_f28_o: bus=RW1S core=RW in_regf=False
    .regf_w10_f28_rbus_i(2'h0        ), // TODO - Bus Read Value
    .regf_w10_f28_wbus_o(            ), // TODO - Bus Write Value
    .regf_w10_f28_wr_o  (            ), // TODO - Bus Write Strobe
    // regf_w10_f30_o: bus=RW1S core=RW in_regf=True
    .regf_w10_f30_rval_o(            ), // TODO - Core Read Value
    .regf_w10_f30_wval_i(2'h0        ), // TODO - Core Write Value
    .regf_w10_f30_wr_i  (1'b0        ), // TODO - Core Write Strobe
    // regf_w11_f0_o: bus=RW1S core=RW1C in_regf=False
    .regf_w11_f0_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w11_f0_wbus_o (            ), // TODO - Bus Write Value
    .regf_w11_f0_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w11_f2_o: bus=RW1S core=RW1C in_regf=True
    .regf_w11_f2_rval_o (            ), // TODO - Core Read Value
    .regf_w11_f2_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w11_f2_wr_i   (1'b0        ), // TODO - Core Write Strobe
    // regf_w11_f4_o: bus=RW1S core=RW1S in_regf=False
    .regf_w11_f4_rbus_i (2'h0        ), // TODO - Bus Read Value
    .regf_w11_f4_wbus_o (            ), // TODO - Bus Write Value
    .regf_w11_f4_wr_o   (            ), // TODO - Bus Write Strobe
    // regf_w11_f6_o: bus=RW1S core=RW1S in_regf=True
    .regf_w11_f6_rval_o (            ), // TODO - Core Read Value
    .regf_w11_f6_wval_i (2'h0        ), // TODO - Core Write Value
    .regf_w11_f6_wr_i   (1'b0        )  // TODO - Core Write Strobe
  );

endmodule // full
