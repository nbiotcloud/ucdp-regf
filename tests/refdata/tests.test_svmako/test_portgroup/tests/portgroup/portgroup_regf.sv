// =============================================================================
//
// Module:     tests.portgroup_regf
// Data Model: tests.test_svmako.RegfMod
//
//  Overview
//
//  Offset    Word                       Field    Bus/Core    Const    Impl
//  --------  -------------------------  -------  ----------  -------  ------
//  +0        ctrl
//            [0]                        .ena     RW/RO       False    regf
//            [1]                        .busy    RO/RW       False    core
//  +1        rx
//            [width_p - 1]              .data0   RO/RW       False    core
//            [(width_p - 1) + width_p]  .data1   RO/RW       False    core
//  +2        tx
//            [width_p - 1]              .data0   RW/RO       False    regf
//
//
// =============================================================================


module portgroup_regf #( // tests.test_svmako.RegfMod
  parameter integer width_p = width_p
) (
  // main_i
  input  wire              main_clk_i,
  input  wire              main_rst_an_i,             // Async Reset (Low-Active)
  // mem_i
  input  wire              mem_ena_i,
  input  wire  [12:0]      mem_addr_i,
  input  wire              mem_wena_i,
  input  wire  [31:0]      mem_wdata_i,
  output logic [31:0]      mem_rdata_o,
  output logic             mem_err_o,
  // regf_o
  // regf_top_o
  // regf_top_ctrl_ena_o: bus=RW core=RO in_regf=True
  output logic             regf_top_ctrl_ena_rval_o,  // Core Read Value
  // regf_top_ctrl_busy_o: bus=RO core=RW in_regf=False
  input  wire              regf_top_ctrl_busy_rbus_i, // Bus Read Value
  // regf_rx_o
  // regf_rx_ctrl_ena_o: bus=RW core=RO in_regf=True
  output logic             regf_rx_ctrl_ena_rval_o,   // Core Read Value
  // regf_rx_rx_data0_o: bus=RO core=RW in_regf=False
  input  wire  [width_p-1] regf_rx_rx_data0_rbus_i,   // Bus Read Value
  // regf_rx_rx_data1_o: bus=RO core=RW in_regf=False
  input  wire  [width_p-1] regf_rx_rx_data1_rbus_i,   // Bus Read Value
  // regf_tx_o
  // regf_tx_ctrl_ena_o: bus=RW core=RO in_regf=True
  output logic             regf_tx_ctrl_ena_rval_o,   // Core Read Value
  // regf_tx_tx_data0_o: bus=RW core=RO in_regf=True
  output logic [width_p-1] regf_tx_tx_data0_rval_o    // Core Read Value
);


  // ===================================
  // local signals
  // ===================================
  // Word: ctrl
  logic              data_ctrl_ena_r;
  // Word: tx
  logic  [width_p-1] data_tx_data0_r;
  // bus word write enables
  logic              bus_ctrl_wren_s;
  logic              bus_tx_wren_s;
  // bus word read enables
  logic              bus_ctrl_rden_s;
  logic              bus_rx_rden_s;
  logic              bus_tx_rden_s;



  always_comb begin: proc_bus_addr_dec
    // defaults
    mem_err_o = 1'b0;
    bus_ctrl_wren_s = 1'b0;
    bus_tx_wren_s   = 1'b0;
    bus_ctrl_rden_s = 1'b0;
    bus_rx_rden_s   = 1'b0;
    bus_tx_rden_s   = 1'b0;

    // write decode
    if ((mem_ena_i == 1'b1) && (mem_wena_i == 1'b1)) begin
      case (mem_addr_i)
        13'h0000: begin
          bus_ctrl_wren_s = 1'b1;
        end
        13'h0008: begin
          bus_tx_wren_s = 1'b1;
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
        13'h0004: begin
          bus_rx_rden_s = 1'b1;
        end
        13'h0008: begin
          bus_tx_rden_s = 1'b1;
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
      // Word: tx
      data_tx_data0_r <= {width_p {1'b0}};
    end else begin
      if (bus_ctrl_wren_s == 1'b1) begin
        data_ctrl_ena_r <= mem_wdata_i[0];
      end
      if (bus_tx_wren_s == 1'b1) begin
        data_tx_data0_r <= mem_wdata_i[width_p - 1];
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
          mem_rdata_o = {30'h00000000, regf_top_ctrl_busy_rbus_i, data_ctrl_ena_r};
        end
        13'h0004: begin
          mem_rdata_o = {{32 - (((width_p - 1) + width_p) + 1) {1'b0}}, regf_rx_rx_data1_rbus_i, regf_rx_rx_data0_rbus_i};
        end
        13'h0008: begin
          mem_rdata_o = {{32 - ((width_p - 1) + 1) {1'b0}}, data_tx_data0_r};
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
  assign regf_top_ctrl_ena_rval_o = data_ctrl_ena_r;
  assign regf_rx_ctrl_ena_rval_o  = data_ctrl_ena_r;
  assign regf_tx_ctrl_ena_rval_o  = data_ctrl_ena_r;
  assign regf_tx_tx_data0_rval_o  = data_tx_data0_r;

endmodule // portgroup_regf
