// =============================================================================
//
// Module:     uart.uart
// Data Model: uart.uart.UartMod
//
// =============================================================================


module uart ( // uart.uart.UartMod
  // main_i
  input  wire           main_clk_i,
  input  wire           main_rst_an_i, // Async Reset (Low-Active)
  // uart_o: RX/TX
  input  wire           uart_rx_i,
  output logic          uart_tx_o,
  // bus_i
  input  wire  [2-1:0]  bus_trans_i,
  input  wire  [32-1:0] bus_addr_i,
  input  wire           bus_write_i,
  input  wire  [32-1:0] bus_wdata_i,
  output logic          bus_ready_o,
  output logic          bus_resp_o,
  output logic [32-1:0] bus_rdata_o
);



  // ------------------------------------------------------
  //  Signals
  // ------------------------------------------------------
         logic clk_s;
  output logic regf_regf_ctrl_ena_rval_o_s;
  output logic regf_regf_ctrl_busy_rbus_i_s;


  // ------------------------------------------------------
  //  glbl.clk_gate: u_clk_gate
  // ------------------------------------------------------
  clk_gate u_clk_gate (
    .clk_i(main_clk_i                 ),
    .clk_o(clk_s                      ),
    .ena_i(regf_regf_ctrl_ena_rval_o_s)
  );


  // ------------------------------------------------------
  //  uart.uart_regf: u_regf
  // ------------------------------------------------------
  uart_regf u_regf (
    // main_i
    .main_clk_i           (main_clk_i                  ),
    .main_rst_an_i        (main_rst_an_i               ), // Async Reset (Low-Active)
    // mem_i
    .mem_ena_i            (1'b0                        ), // TODO
    .mem_addr_i           (16'h0000                    ), // TODO
    .mem_wena_i           (1'b0                        ), // TODO
    .mem_wdata_i          (32'h00000000                ), // TODO
    .mem_rdata_o          (                            ), // TODO
    .mem_err_i            (1'b0                        ), // TODO
    // regf_o
    // regf_ctrl_ena_o: bus=RW core=RO in_regf=True
    .regf_ctrl_ena_rval_o (regf_regf_ctrl_ena_rval_o_s ), // Core Read Value
    // regf_ctrl_busy_o: bus=RO core=RW in_regf=False
    .regf_ctrl_busy_rbus_i(regf_regf_ctrl_busy_rbus_i_s)  // Bus Read Value
  );


  // ------------------------------------------------------
  //  uart.uart_core: u_core
  // ------------------------------------------------------
  uart_core u_core (
    // main_i
    .main_clk_i   (clk_s                       ),
    .main_rst_an_i(main_rst_an_i               ), // Async Reset (Low-Active)
    .busy_o       (regf_regf_ctrl_busy_rbus_i_s)
  );

endmodule // uart
