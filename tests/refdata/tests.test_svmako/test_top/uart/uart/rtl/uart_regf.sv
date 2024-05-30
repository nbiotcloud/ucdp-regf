// =============================================================================
//
// Module:     uart.uart_regf
// Data Model: glbl.regf.RegfMod
//
//  Overview
//
//  Offset    Word    Field    Bus/Core    Const    Impl
//  --------  ------  -------  ----------  -------  ------
//  +0        ctrl
//            [0]     .ena     RW/RO       False    regf
//            [4]     .busy    RO/RW       False    core
//
//
// =============================================================================


module uart_regf ( // glbl.regf.RegfMod
  // main_i
  input  wire         main_clk_i,
  input  wire         main_rst_an_i,        // Async Reset (Low-Active)
  // mem_i
  input  wire         mem_ena_i,
  input  wire  [12:0] mem_addr_i,
  input  wire         mem_wena_i,
  input  wire  [31:0] mem_wdata_i,
  output logic [31:0] mem_rdata_o,
  output logic        mem_err_o,
  // regf_o
  // regf_ctrl_ena_o: bus=RW core=RO in_regf=True
  output logic        regf_ctrl_ena_rval_o, // Core Read Value
  // regf_ctrl_busy_o: bus=RO core=RW in_regf=False
  input  wire         regf_ctrl_busy_rbus_i // Bus Read Value
);


  // ===================================
  // local signals
  // ===================================
  // Word: ctrl
  logic   data_ctrl_ena_r;
  // bus word write enables
  logic   bus_ctrl_wren_s;
  // bus word read enables
  logic   bus_ctrl_rden_s;



  always_comb begin: proc_bus_addr_dec
    // defaults
    mem_err_o = 1'b0;
    bus_ctrl_wren_s = 1'b0;
    bus_ctrl_rden_s = 1'b0;

    // write decode
    if ((mem_ena_i == 1'b1) && (mem_wena_i == 1'b1)) begin
      case (mem_addr_i)
        13'h0000: begin
          bus_ctrl_wren_s = 1'b1;
        end
        default: begin
          mem_err_o = 1'b1;
        end
      endcase
    end

    // read decode
    if ((mem_ena_i == 1'b1) && (mem_wena_i == 1'b0)) begin
      case (mem_addr_i)
        13'h0000: begin
          bus_ctrl_rden_s = 1'b1;
        end
        default: begin
          mem_err_o = 1'b1;
        end
      endcase
    end
  end

  // ===================================
  // in-regf storage
  // ===================================
  always_ff @ (posedge main_clk_i or negedge main_rst_an_i) begin: proc_regf_flops
    if (main_rst_an_i == 1'b1) begin
      // Word: ctrl
      data_ctrl_ena_r <= 1'b0;
    end else begin
      if (bus_ctrl_wren_s == 1'b1) begin
        data_ctrl_ena_r <= mem_wdata_i[0];
      end
    end
  end

  // ===================================
  //  Bus Read-Mux
  // ===================================
  always_comb begin: proc_bus_rd
    if ((mem_ena_i == 1'b1) && (mem_wena_i == 1'b0)) begin
      case (mem_addr_i)
        13'h0000: begin
          mem_rdata_o = {27'h0000000, regf_ctrl_busy_rbus_i, 3'h0, data_ctrl_ena_r};
        end
        default: begin
          mem_rdata_o = 32'h00000000;
        end
      endcase
    end else begin
      mem_rdata_o = 32'h00000000;
    end
  end

  // ===================================
  //  Output Assignments
  // ===================================
  assign regf_ctrl_ena_rval_o = data_ctrl_ena_r;

endmodule // uart_regf
