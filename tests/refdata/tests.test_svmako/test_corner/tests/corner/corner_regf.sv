// =============================================================================
//
// Module:     tests.corner_regf
// Data Model: tests.test_svmako.RegfMod
//
//  Overview
//
//  Offset    Word    Field    Bus/Core    Const    Impl
//  --------  ------  -------  ----------  -------  ------
//  +0        ctrl
//            [0]     .ena     RW/RO       False    regf
//            [4]     .busy    RO/RW       False    core
//            [5]     .start   RW/RO       False    regf
//            [6]     .status  RO/RW       False    core
//            [10:7]  .ver     RO/RO       True     regf
//            [11]    .spec1   RC/RW       False    regf
//  +5:1      txdata
//            [7:0]   .bytes   RW/RO       False    regf
//  +8:6      dims
//            [0]     .roval   RO/RW       False    core
//            [1]     .wrval   RW/RO       False    regf
//            [2]     .spec2   RW/RC       False    core
//            [3]     .spec3   RC/RW       False    regf
//
//
// =============================================================================


module corner_regf ( // tests.test_svmako.RegfMod
  // main_i
  input  wire         main_clk_i,
  input  wire         main_rst_an_i,                            // Async Reset (Low-Active)
  // mem_i
  input  wire         mem_ena_i,
  input  wire  [12:0] mem_addr_i,
  input  wire         mem_wena_i,
  input  wire  [31:0] mem_wdata_i,
  output logic [31:0] mem_rdata_o,
  output logic        mem_err_o,
  input  wire  [4:0]  spec_i                        [0:6][0:2],
  // regf_o
  // regf_ctrl_ena_o: bus=RW core=RO in_regf=True
  output logic        regf_ctrl_ena_rval_o,                     // Core Read Value
  // regf_ctrl_busy_o: bus=RO core=RW in_regf=False
  input  wire         regf_ctrl_busy_rbus_i,                    // Bus Read Value
  // regf_grpa_o
  // regf_grpa_ctrl_start_o: bus=RW core=RO in_regf=True
  output logic        regf_grpa_ctrl_start_rval_o,              // Core Read Value
  // regf_grpa_ctrl_status_o: bus=RO core=RW in_regf=False
  input  wire         regf_grpa_ctrl_status_rbus_i,             // Bus Read Value
  // regf_grpb_o
  // regf_grpb_ctrl_start_o: bus=RW core=RO in_regf=True
  output logic        regf_grpb_ctrl_start_rval_o,              // Core Read Value
  // regf_ctrl_ver_o: bus=RO core=RO in_regf=True
  output logic [3:0]  regf_ctrl_ver_rval_o,                     // Core Read Value
  // regf_grpc_o
  // regf_grpc_ctrl_spec1_o: bus=RC core=RW in_regf=True
  output logic        regf_grpc_ctrl_spec1_rval_o,              // Core Read Value
  input  wire         regf_grpc_ctrl_spec1_wval_i,              // Core Write Value
  input  wire         regf_grpc_ctrl_spec1_wr_i,                // Core Write Strobe
  // regf_grpc_dims_spec2_o: bus=RW core=RC in_regf=False
  output logic        regf_grpc_dims_spec2_wr_o     [0:2],      // Bus Write Strobe
  output logic        regf_grpc_dims_spec2_wbus_o   [0:2],      // Bus Write Value
  input  wire         regf_grpc_dims_spec2_rbus_i   [0:2],      // Bus Read Value
  // regf_grpc_dims_spec3_o: bus=RC core=RW in_regf=True
  input  wire         regf_grpc_dims_spec3_wr_i     [0:2],      // Core Write Strobe
  input  wire         regf_grpc_dims_spec3_wval_i   [0:2],      // Core Write Value
  output logic        regf_grpc_dims_spec3_rval_o   [0:2],      // Core Read Value
  // regf_txdata_bytes_o: bus=RW core=RO in_regf=True
  output logic [7:0]  regf_txdata_bytes_rval_o      [0:4],      // Core Read Value
  // regf_dims_roval_o: bus=RO core=RW in_regf=False
  input  wire         regf_dims_roval_rbus_i        [0:2],      // Bus Read Value
  // regf_dims_wrval_o: bus=RW core=RO in_regf=True
  output logic        regf_dims_wrval_rval_o        [0:2]       // Core Read Value
);


  // ===================================
  // local signals
  // ===================================
  // Word: ctrl
  logic        data_ctrl_ena_r;
  logic        data_ctrl_start_r;
  logic        data_ctrl_spec1_r;
  // Word: txdata
  logic  [7:0] data_txdata_bytes_r [0:4];
  // Word: dims
  logic        data_dims_wrval_r   [0:2];
  logic        data_dims_spec3_r   [0:2];
  // bus word write enables
  logic        bus_ctrl_wren_s;
  logic        bus_txdata_wren_s   [0:4];
  logic        bus_dims_wren_s     [0:2];
  // bus word read enables
  logic        bus_ctrl_rden_s;
  logic        bus_txdata_rden_s   [0:4];
  logic        bus_dims_rden_s     [0:2];

  // ===================================
  //  Constant Declarations
  // ===================================
// Word: ctrl
  logic  [3:0] data_ctrl_ver_c  = 4'hC;


  always_comb begin: proc_bus_addr_dec
    // defaults
    mem_err_o = 1'b0;
    bus_ctrl_wren_s   = 1'b0;
    bus_txdata_wren_s = '{5{1'b0}};
    bus_dims_wren_s   = '{3{1'b0}};
    bus_ctrl_rden_s   = 1'b0;
    bus_txdata_rden_s = '{5{1'b0}};
    bus_dims_rden_s   = '{3{1'b0}};

    // write decode
    if ((mem_ena_i == 1'b1) && (mem_wena_i == 1'b1)) begin
      case (mem_addr_i)
        13'h0000: begin
          bus_ctrl_wren_s = 1'b1;
        end
        13'h0004: begin
          bus_txdata_wren_s[0] = 1'b1;
        end
        13'h0008: begin
          bus_txdata_wren_s[1] = 1'b1;
        end
        13'h000C: begin
          bus_txdata_wren_s[2] = 1'b1;
        end
        13'h0010: begin
          bus_txdata_wren_s[3] = 1'b1;
        end
        13'h0014: begin
          bus_txdata_wren_s[4] = 1'b1;
        end
        13'h0018: begin
          bus_dims_wren_s[0] = 1'b1;
        end
        13'h001C: begin
          bus_dims_wren_s[1] = 1'b1;
        end
        13'h0020: begin
          bus_dims_wren_s[2] = 1'b1;
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
          bus_txdata_rden_s[0] = 1'b1;
        end
        13'h0008: begin
          bus_txdata_rden_s[1] = 1'b1;
        end
        13'h000C: begin
          bus_txdata_rden_s[2] = 1'b1;
        end
        13'h0010: begin
          bus_txdata_rden_s[3] = 1'b1;
        end
        13'h0014: begin
          bus_txdata_rden_s[4] = 1'b1;
        end
        13'h0018: begin
          bus_dims_rden_s[0] = 1'b1;
        end
        13'h001C: begin
          bus_dims_rden_s[1] = 1'b1;
        end
        13'h0020: begin
          bus_dims_rden_s[2] = 1'b1;
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
      data_ctrl_ena_r     <= 1'b0;
      data_ctrl_start_r   <= 1'b0;
      data_ctrl_spec1_r   <= 1'b0;
      // Word: txdata
      data_txdata_bytes_r <= '{5{8'h00}};
      // Word: dims
      data_dims_wrval_r   <= '{3{1'b0}};
      data_dims_spec3_r   <= '{3{1'b0}};
    end else begin
      if (bus_ctrl_wren_s == 1'b1) begin
        data_ctrl_ena_r <= mem_wdata_i[0];
      end
      if (bus_ctrl_wren_s == 1'b1) begin
        data_ctrl_start_r <= mem_wdata_i[5];
      end
      if (bus_ctrl_rden_s == 1'b1) begin
        data_ctrl_spec1_r <= 1'b0;
      end else if (regf_grpc_ctrl_spec1_wr_i == 1'b1) begin
        data_ctrl_spec1_r <= regf_grpc_ctrl_spec1_wval_i;
      end
      if (bus_txdata_wren_s[0] == 1'b1) begin
        data_txdata_bytes_r[0] <= mem_wdata_i[7:0];
      end
      if (bus_txdata_wren_s[1] == 1'b1) begin
        data_txdata_bytes_r[1] <= mem_wdata_i[7:0];
      end
      if (bus_txdata_wren_s[2] == 1'b1) begin
        data_txdata_bytes_r[2] <= mem_wdata_i[7:0];
      end
      if (bus_txdata_wren_s[3] == 1'b1) begin
        data_txdata_bytes_r[3] <= mem_wdata_i[7:0];
      end
      if (bus_txdata_wren_s[4] == 1'b1) begin
        data_txdata_bytes_r[4] <= mem_wdata_i[7:0];
      end
      if (bus_dims_wren_s[0] == 1'b1) begin
        data_dims_wrval_r[0] <= mem_wdata_i[1];
      end
      if (bus_dims_wren_s[1] == 1'b1) begin
        data_dims_wrval_r[1] <= mem_wdata_i[1];
      end
      if (bus_dims_wren_s[2] == 1'b1) begin
        data_dims_wrval_r[2] <= mem_wdata_i[1];
      end
      if (regf_grpc_dims_spec3_wr_i[0] == 1'b1) begin
        data_dims_spec3_r[0] <= regf_grpc_dims_spec3_wval_i[0];
      end else if (bus_dims_rden_s[0] == 1'b1) begin
        data_dims_spec3_r[0] <= 1'b0;
      end
      if (regf_grpc_dims_spec3_wr_i[1] == 1'b1) begin
        data_dims_spec3_r[1] <= regf_grpc_dims_spec3_wval_i[1];
      end else if (bus_dims_rden_s[1] == 1'b1) begin
        data_dims_spec3_r[1] <= 1'b0;
      end
      if (regf_grpc_dims_spec3_wr_i[2] == 1'b1) begin
        data_dims_spec3_r[2] <= regf_grpc_dims_spec3_wval_i[2];
      end else if (bus_dims_rden_s[2] == 1'b1) begin
        data_dims_spec3_r[2] <= 1'b0;
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
          mem_rdata_o = {20'h00000, data_ctrl_spec1_r, data_ctrl_ver_c, regf_grpa_ctrl_status_rbus_i, data_ctrl_start_r, regf_ctrl_busy_rbus_i, 3'h0, data_ctrl_ena_r};
        end
        13'h0004: begin
          mem_rdata_o = {24'h000000, data_txdata_bytes_r[0]};
        end
        13'h0008: begin
          mem_rdata_o = {24'h000000, data_txdata_bytes_r[1]};
        end
        13'h000C: begin
          mem_rdata_o = {24'h000000, data_txdata_bytes_r[2]};
        end
        13'h0010: begin
          mem_rdata_o = {24'h000000, data_txdata_bytes_r[3]};
        end
        13'h0014: begin
          mem_rdata_o = {24'h000000, data_txdata_bytes_r[4]};
        end
        13'h0018: begin
          mem_rdata_o = {28'h0000000, data_dims_spec3_r[0], regf_grpc_dims_spec2_rbus_i[0], data_dims_wrval_r[0], regf_dims_roval_rbus_i[0]};
        end
        13'h001C: begin
          mem_rdata_o = {28'h0000000, data_dims_spec3_r[1], regf_grpc_dims_spec2_rbus_i[1], data_dims_wrval_r[1], regf_dims_roval_rbus_i[1]};
        end
        13'h0020: begin
          mem_rdata_o = {28'h0000000, data_dims_spec3_r[2], regf_grpc_dims_spec2_rbus_i[2], data_dims_wrval_r[2], regf_dims_roval_rbus_i[2]};
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
  assign regf_ctrl_ena_rval_o        = data_ctrl_ena_r;
  assign regf_grpa_ctrl_start_rval_o = data_ctrl_start_r;
  assign regf_grpb_ctrl_start_rval_o = data_ctrl_start_r;
  assign regf_ctrl_ver_rval_o        = data_ctrl_ver_c;
  assign regf_grpc_ctrl_spec1_rval_o = data_ctrl_spec1_r;
  assign regf_txdata_bytes_rval_o    = data_txdata_bytes_r;
  assign regf_dims_wrval_rval_o      = data_dims_wrval_r;
  assign regf_grpc_dims_spec2_wbus_o = '{3{mem_wdata_i[2]}};
  assign regf_grpc_dims_spec2_wr_o   = bus_dims_wren_s;
  assign regf_grpc_dims_spec3_rval_o = data_dims_spec3_r;

endmodule // corner_regf
