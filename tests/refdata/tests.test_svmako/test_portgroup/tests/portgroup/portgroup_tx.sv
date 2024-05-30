// =============================================================================
//
// Module:     tests.portgroup_tx
// Data Model: tests.test_svmako.CoreMod
//
// =============================================================================


module portgroup_tx #( // tests.test_svmako.CoreMod
  parameter integer width_p = width_p
) (
  // main_i
  input wire             main_clk_i,
  input wire             main_rst_an_i,        // Async Reset (Low-Active)
  // regf_i
  // regf_ctrl_ena_i: bus=RW core=RO in_regf=True
  input wire             regf_ctrl_ena_rval_i, // Core Read Value
  // regf_tx_data0_i: bus=RW core=RO in_regf=True
  input wire [width_p-1] regf_tx_data0_rval_i  // Core Read Value
);


endmodule // portgroup_tx
