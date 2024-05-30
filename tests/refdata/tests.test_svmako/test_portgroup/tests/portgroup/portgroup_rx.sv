// =============================================================================
//
// Module:     tests.portgroup_rx
// Data Model: tests.test_svmako.CoreMod
//
// =============================================================================


module portgroup_rx #( // tests.test_svmako.CoreMod
  parameter integer width_p = width_p
) (
  // main_i
  input  wire              main_clk_i,
  input  wire              main_rst_an_i,        // Async Reset (Low-Active)
  // regf_i
  // regf_ctrl_ena_i: bus=RW core=RO in_regf=True
  input  wire              regf_ctrl_ena_rval_i, // Core Read Value
  // regf_rx_data0_i: bus=RO core=RW in_regf=False
  output logic [width_p-1] regf_rx_data0_rbus_o, // Bus Read Value
  // regf_rx_data1_i: bus=RO core=RW in_regf=False
  output logic [width_p-1] regf_rx_data1_rbus_o  // Bus Read Value
);


endmodule // portgroup_rx
