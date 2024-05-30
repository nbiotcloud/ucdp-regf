// =============================================================================
//
// Module:     tests.corner
// Data Model: tests.test_svmako.CornerMod
//
// =============================================================================


module corner ( // tests.test_svmako.CornerMod
  // main_i
  input wire main_clk_i,
  input wire main_rst_an_i // Async Reset (Low-Active)
);



  // ------------------------------------------------------
  //  Signals
  // ------------------------------------------------------
  logic busy_s;


  // ------------------------------------------------------
  //  tests.corner_regf: u_regf
  // ------------------------------------------------------
  corner_regf u_regf (
    // main_i
    .main_clk_i                  (main_clk_i       ),
    .main_rst_an_i               (main_rst_an_i    ), // Async Reset (Low-Active)
    // mem_i
    .mem_ena_i                   (1'b0             ), // TODO
    .mem_addr_i                  (13'h0000         ), // TODO
    .mem_wena_i                  (1'b0             ), // TODO
    .mem_wdata_i                 (32'h00000000     ), // TODO
    .mem_rdata_o                 (                 ), // TODO
    .mem_err_o                   (                 ), // TODO
    .spec_i                      ('{7{'{3{5'h00}}}}), // TODO
    // regf_o
    // regf_ctrl_ena_o: bus=RW core=RO in_regf=True
    .regf_ctrl_ena_rval_o        (                 ), // TODO - Core Read Value
    // regf_ctrl_busy_o: bus=RO core=RW in_regf=False
    .regf_ctrl_busy_rbus_i       (busy_s           ), // Bus Read Value
    // regf_grpa_o
    // regf_grpa_ctrl_start_o: bus=RW core=RO in_regf=True
    .regf_grpa_ctrl_start_rval_o (                 ), // TODO - Core Read Value
    // regf_grpa_ctrl_status_o: bus=RO core=RW in_regf=False
    .regf_grpa_ctrl_status_rbus_i(1'b0             ), // TODO - Bus Read Value
    // regf_grpb_o
    // regf_grpb_ctrl_start_o: bus=RW core=RO in_regf=True
    .regf_grpb_ctrl_start_rval_o (                 ), // TODO - Core Read Value
    // regf_ctrl_ver_o: bus=RO core=RO in_regf=True
    .regf_ctrl_ver_rval_o        (                 ), // TODO - Core Read Value
    // regf_grpc_o
    // regf_grpc_ctrl_spec1_o: bus=RC core=RW in_regf=True
    .regf_grpc_ctrl_spec1_rval_o (                 ), // TODO - Core Read Value
    .regf_grpc_ctrl_spec1_wval_i (1'b0             ), // TODO - Core Write Value
    .regf_grpc_ctrl_spec1_wr_i   (1'b0             ), // TODO - Core Write Strobe
    // regf_grpc_dims_spec2_o: bus=RW core=RC in_regf=False
    .regf_grpc_dims_spec2_wr_o   (                 ), // TODO - Bus Write Strobe
    .regf_grpc_dims_spec2_wbus_o (                 ), // TODO - Bus Write Value
    .regf_grpc_dims_spec2_rbus_i ('{3{1'b0}}       ), // TODO - Bus Read Value
    // regf_grpc_dims_spec3_o: bus=RC core=RW in_regf=True
    .regf_grpc_dims_spec3_wr_i   ('{3{1'b0}}       ), // TODO - Core Write Strobe
    .regf_grpc_dims_spec3_wval_i ('{3{1'b0}}       ), // TODO - Core Write Value
    .regf_grpc_dims_spec3_rval_o (                 ), // TODO - Core Read Value
    // regf_txdata_bytes_o: bus=RW core=RO in_regf=True
    .regf_txdata_bytes_rval_o    (                 ), // TODO - Core Read Value
    // regf_dims_roval_o: bus=RO core=RW in_regf=False
    .regf_dims_roval_rbus_i      ('{3{1'b0}}       ), // TODO - Bus Read Value
    // regf_dims_wrval_o: bus=RW core=RO in_regf=True
    .regf_dims_wrval_rval_o      (                 )  // TODO - Core Read Value
  );

endmodule // corner
