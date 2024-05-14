// =============================================================================
//
// Module:     uart.uart_regf
// Data Model: glbl.regf.RegfMod
//
//  Overview
//
//  Offset    Word    Field    Bits    Bus/Core    Const    Impl
//  --------  ------  -------  ------  ----------  -------  ------
//  +0        ctrl
//                    .ena     0       RW/RO       False    regf
//                    .busy    4       RO/RW       False    core
//
//
// =============================================================================


module uart_regf ( // glbl.regf.RegfMod
  // main_i
  input  wire           main_clk_i,
  input  wire           main_rst_an_i,        // Async Reset (Low-Active)
  // mem_i
  input  wire           mem_ena_i,
  input  wire  [16-1:0] mem_addr_i,
  input  wire           mem_wena_i,
  input  wire  [32-1:0] mem_wdata_i,
  output logic [32-1:0] mem_rdata_o,
  input  wire           mem_err_i,
  // regf_o
  // regf_ctrl_ena_o: bus=RW core=RO in_regf=True
  output logic          regf_ctrl_ena_rval_o, // Core Read Value
  // regf_ctrl_busy_o: bus=RO core=RW in_regf=False
  input  wire           regf_ctrl_busy_rbus_i // Bus Read Value
);



  // ===================================
  //  Constant Declarations
  // ===================================


  // ===================================
  //  Flip-Flop Declarations
  // ===================================
// Word: ctrl
  wire   data_ctrl_ena_r;

  // ===================================
  //  Memory Matrix
  // ===================================
  // Word: +0 ctrl
    // Field ena RW/RO regf
      // if bus_ctrl_wr_s: mem_wdata_i[0]


  // ===================================
  //  Bus Strobe-Mux
  // ===================================
  // Word: +0 ctrl

  // ===================================
  //  Bus Read-Mux
  // ===================================
  // Word: +0 ctrl

endmodule // uart_regf
