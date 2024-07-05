// =============================================================================
//
// THIS FILE IS GENERATED!!! DO NOT EDIT MANUALLY. CHANGES ARE LOST.
//
// =============================================================================
//
//  MIT License
//
//  Copyright (c) 2024 nbiotcloud
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//
// =============================================================================
//
// Module:     tests.corner_regf
// Data Model: tests.test_svmako.RegfMod
//
//
// Offset    Word     Field      Bus/Core    Reset    Const    Impl
// --------  -------  ---------  ----------  -------  -------  ------
// +0        ctrl
//           [0]      .ena       RW/RO       0        False    regf
//           [4]      .busy      RO/RW       0        False    core
//           [5]      .start     RW/RO       0        False    regf
//           [6]      .status    RO/RW       0        False    core
//           [10:7]   .ver       RO/RO       0xC      True     regf
//           [11]     .spec1     RC/RW       0        False    core
// +5:1      txdata
//           [7:0]    .bytes     RW/RO       0x0      False    regf
// +8:6      dims
//           [0]      .roval     RO/RW       0        False    core
//           [1]      .wrval     RW/RO       0        False    regf
//           [2]      .spec2     RW/RC       0        False    core
//           [3]      .spec3     RC/RW       0        False    regf
// +8        guards
//           [0]      .once      WP/RO       0        False    regf
//           [1]      .coreonce  WP/RO       0        False    core
//           [2]      .busonce   WP/RO       0        False    core
//           [3]      .single    WP/RO       0        False    regf
//           [4]      .onetime   WP/RO       0        False    regf
//           [8:5]    .guard_a   RW/RO       0x0      False    regf
//           [12:9]   .guard_b   RW/RO       0x0      False    regf
//           [16:13]  .guard_c   RW/RO       0x0      False    regf
//           [17]     .cprio     RW/RW       0        False    regf
//           [18]     .bprio     RW/RW       0        False    regf
// +10:9     grddim
//           [11:0]   .num       RW/RO       0x0      False    core
//           [14:12]  .const     RO/RO       0x5      True     regf
//           [26:15]  .int       RW/RO       0x0      False    core
//
// =============================================================================

`begin_keywords "1800-2009"
`default_nettype none

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
  // regf_grpa_grddim_int_o: bus=RW core=RO in_regf=False
  output logic        regf_grpa_grddim_int_wr_o     [0:1],      // Bus Write Strobe
  output logic [11:0] regf_grpa_grddim_int_wbus_o   [0:1],      // Bus Write Value
  input  wire  [11:0] regf_grpa_grddim_int_rbus_i   [0:1],      // Bus Read Value
  // regf_grpb_o
  // regf_grpb_ctrl_start_o: bus=RW core=RO in_regf=True
  output logic        regf_grpb_ctrl_start_rval_o,              // Core Read Value
  // regf_ctrl_ver_o: bus=RO core=RO in_regf=True
  output logic [3:0]  regf_ctrl_ver_rval_o,                     // Core Read Value
  // regf_grpc_o
  // regf_grpc_ctrl_spec1_o: bus=RC core=RW in_regf=False
  input  wire         regf_grpc_ctrl_spec1_rbus_i,              // Bus Read Value
  output logic        regf_grpc_ctrl_spec1_rd_o,                // Bus Read Strobe
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
  output logic        regf_dims_wrval_upd_o         [0:2],      // Update Strobe
  output logic        regf_dims_wrval_rval_o        [0:2],      // Core Read Value
  // regf_guards_once_o: bus=WP core=RO in_regf=True
  output logic        regf_guards_once_rval_o,                  // Core Read Value
  // regf_guards_coreonce_o: bus=WP core=RO in_regf=False
  input  wire         regf_guards_coreonce_rbus_i,              // Bus Read Value
  output logic        regf_guards_coreonce_wbus_o,              // Bus Write Value
  output logic        regf_guards_coreonce_wr_o,                // Bus Write Strobe
  // regf_guards_busonce_o: bus=WP core=RO in_regf=False
  input  wire         regf_guards_busonce_rbus_i,               // Bus Read Value
  output logic        regf_guards_busonce_wbus_o,               // Bus Write Value
  output logic        regf_guards_busonce_wr_o,                 // Bus Write Strobe
  // regf_guards_single_o: bus=WP core=RO in_regf=True
  output logic        regf_guards_single_rval_o,                // Core Read Value
  // regf_guards_onetime_o: bus=WP core=RO in_regf=True
  output logic        regf_guards_onetime_rval_o,               // Core Read Value
  // regf_guards_guard_a_o: bus=RW core=RO in_regf=True
  output logic [3:0]  regf_guards_guard_a_rval_o,               // Core Read Value
  // regf_guards_guard_b_o: bus=RW core=RO in_regf=True
  output logic [3:0]  regf_guards_guard_b_rval_o,               // Core Read Value
  // regf_guards_guard_c_o: bus=RW core=RO in_regf=True
  output logic [3:0]  regf_guards_guard_c_rval_o,               // Core Read Value
  // regf_guards_cprio_o: bus=RW core=RW in_regf=True
  output logic        regf_guards_cprio_rval_o,                 // Core Read Value
  input  wire         regf_guards_cprio_wval_i,                 // Core Write Value
  input  wire         regf_guards_cprio_wr_i,                   // Core Write Strobe
  // regf_guards_bprio_o: bus=RW core=RW in_regf=True
  output logic        regf_guards_bprio_rval_o,                 // Core Read Value
  input  wire         regf_guards_bprio_wval_i,                 // Core Write Value
  input  wire         regf_guards_bprio_wr_i,                   // Core Write Strobe
  // regf_grddim_num_o: bus=RW core=RO in_regf=False
  output logic        regf_grddim_num_wr_o          [0:1],      // Bus Write Strobe
  output logic [11:0] regf_grddim_num_wbus_o        [0:1],      // Bus Write Value
  input  wire  [11:0] regf_grddim_num_rbus_i        [0:1],      // Bus Read Value
  // regf_grddim_const_o: bus=RO core=RO in_regf=True
  output logic [2:0]  regf_grddim_const_rval_o      [0:1]       // Core Read Value
);




  // ------------------------------------------------------
  //  Local Parameter
  // ------------------------------------------------------
  localparam [3:0] data_ctrl_ver_c           = 4'hC;       // ctrl / ver
  localparam [2:0] data_grddim_const_c [0:1] = '{2{3'h5}}; // grddim / const


  // ------------------------------------------------------
  //  Signals
  // ------------------------------------------------------
  logic       data_ctrl_ena_r;              // Word ctrl
  logic       data_ctrl_start_r;
  logic [7:0] data_txdata_bytes_r    [0:4]; // Word txdata
  logic       data_dims_wrval_r      [0:2]; // Word dims
  logic       data_dims_spec3_r      [0:2];
  logic       data_guards_once_r;           // Word guards
  logic       data_guards_single_r;
  logic       data_guards_onetime_r;
  logic [3:0] data_guards_guard_a_r;
  logic [3:0] data_guards_guard_b_r;
  logic [3:0] data_guards_guard_c_r;
  logic       data_guards_cprio_r;
  logic       data_guards_bprio_r;
  logic       bus_guards_grd0once_r;
  logic       bus_guards_grd1once_r;
  logic       bus_guards_wronce_r;
  logic       bus_ctrl_wren_s;              // bus word write enables
  logic       bus_txdata_wren_s      [0:4];
  logic       bus_dims_wren_s        [0:2];
  logic       bus_guards_wren_s;
  logic       bus_grddim_wren_s      [0:1];
  logic       bus_ctrl_rden_s;              // bus word read enables
  logic       bus_txdata_rden_s      [0:4];
  logic       bus_dims_rden_s        [0:2];
  logic       bus_guards_rden_s;
  logic       bus_grddim_rden_s      [0:1];
  logic       bus_wrguard_0_s;              // write guards
  logic       bus_wrguard_1_s;
  logic       bus_wrguard_2_s;

  always_comb begin: proc_bus_addr_dec
    // defaults
    mem_err_o = 1'b0;
    bus_ctrl_wren_s   = 1'b0;
    bus_txdata_wren_s = '{5{1'b0}};
    bus_dims_wren_s   = '{3{1'b0}};
    bus_guards_wren_s = 1'b0;
    bus_grddim_wren_s = '{2{1'b0}};
    bus_ctrl_rden_s   = 1'b0;
    bus_txdata_rden_s = '{5{1'b0}};
    bus_dims_rden_s   = '{3{1'b0}};
    bus_guards_rden_s = 1'b0;
    bus_grddim_rden_s = '{2{1'b0}};

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
        13'h0024: begin
          bus_guards_wren_s = 1'b1;
        end
        13'h0024: begin
          bus_grddim_wren_s[0] = 1'b1;
        end
        13'h0028: begin
          bus_grddim_wren_s[1] = 1'b1;
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
        13'h0024: begin
          bus_guards_rden_s = 1'b1;
        end
        13'h0024: begin
          bus_grddim_rden_s[0] = 1'b1;
        end
        13'h0028: begin
          bus_grddim_rden_s[1] = 1'b1;
        end
        default: begin
          mem_err_o = 1'b1;
        end
      endcase
    end
  end

  // ------------------------------------------------------
  // write guard expressions
  // ------------------------------------------------------
  assign bus_wrguard_0_s = data_ctrl_ena_r & regf_ctrl_busy_rbus_i;
  assign bus_wrguard_1_s = regf_ctrl_busy_rbus_i;
  assign bus_wrguard_2_s = regf_grpc_ctrl_spec1_rbus_i;

  // ------------------------------------------------------
  // in-regf storage
  // ------------------------------------------------------
  always_ff @ (posedge main_clk_i or negedge main_rst_an_i) begin: proc_regf_flops
    if (main_rst_an_i == 1'b1) begin
      // Word: ctrl
      data_ctrl_ena_r       <= 1'b0;
      data_ctrl_start_r     <= 1'b0;
      // Word: txdata
      data_txdata_bytes_r   <= '{5{8'h00}};
      // Word: dims
      data_dims_wrval_r     <= '{3{1'b0}};
      upd_strb_dims_wrval_r <= 1'b0;
      data_dims_spec3_r     <= '{3{1'b0}};
      // Word: guards
      data_guards_once_r    <= 1'b0;
      data_guards_single_r  <= 1'b0;
      data_guards_onetime_r <= 1'b0;
      data_guards_guard_a_r <= 4'h0;
      data_guards_guard_b_r <= 4'h0;
      data_guards_guard_c_r <= 4'h0;
      data_guards_cprio_r   <= 1'b0;
      data_guards_bprio_r   <= 1'b0;
      bus_guards_grd0once_r <= 1'b1;
      bus_guards_grd1once_r <= 1'b1;
      bus_guards_grd1once_r <= 1'b1;
      bus_guards_wronce_r   <= 1'b1;
      // Word: grddim
    end else begin
      if (bus_ctrl_wren_s == 1'b1) begin
        data_ctrl_ena_r <= mem_wdata_i[0];
      end
      if (bus_ctrl_wren_s == 1'b1) begin
        data_ctrl_start_r <= mem_wdata_i[5];
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
      upd_strb_dims_wrval_r <= bus_dims_wren_s[0];
      if (bus_dims_wren_s[1] == 1'b1) begin
        data_dims_wrval_r[1] <= mem_wdata_i[1];
      end
      upd_strb_dims_wrval_r <= bus_dims_wren_s[1];
      if (bus_dims_wren_s[2] == 1'b1) begin
        data_dims_wrval_r[2] <= mem_wdata_i[1];
      end
      upd_strb_dims_wrval_r <= bus_dims_wren_s[2];
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
      if ((bus_guards_wren_s == 1'b1) && (bus_guards_grd0once_r == 1'b1)) begin
        data_guards_once_r <= mem_wdata_i[0];
      end
      if ((bus_guards_wren_s == 1'b1) && (bus_guards_wronce_r == 1'b1)) begin
        data_guards_single_r <= mem_wdata_i[3];
      end
      if ((bus_guards_wren_s == 1'b1) && (bus_guards_wronce_r == 1'b1)) begin
        data_guards_onetime_r <= mem_wdata_i[4];
      end
      if ((bus_guards_wren_s == 1'b1) && (bus_wrguard_0_s == 1'b1)) begin
        data_guards_guard_a_r <= mem_wdata_i[8:5];
      end
      if ((bus_guards_wren_s == 1'b1) && (bus_wrguard_1_s == 1'b1)) begin
        data_guards_guard_b_r <= mem_wdata_i[12:9];
      end
      if ((bus_guards_wren_s == 1'b1) && (bus_wrguard_1_s == 1'b1)) begin
        data_guards_guard_c_r <= mem_wdata_i[16:13];
      end
      if (regf_guards_cprio_wr_i == 1'b1) begin
        data_guards_cprio_r <= regf_guards_cprio_wval_i;
      end else if (bus_guards_wren_s == 1'b1) begin
        data_guards_cprio_r <= mem_wdata_i[17];
      end
      if (bus_guards_wren_s == 1'b1) begin
        data_guards_bprio_r <= mem_wdata_i[18];
      end else if (regf_guards_bprio_wr_i == 1'b1) begin
        data_guards_bprio_r <= regf_guards_bprio_wval_i;
      end
      if ((bus_guards_wren_s == 1'b1) && (bus_wrguard_0_s == 1'b1)) begin
        bus_guards_grd0once_r <= 1'b0;
      end
      if ((bus_guards_wren_s == 1'b1) && (bus_wrguard_1_s == 1'b1)) begin
        bus_guards_grd1once_r <= 1'b0;
      end
      if ((bus_guards_wren_s == 1'b1) && (bus_wrguard_1_s == 1'b1)) begin
        bus_guards_grd1once_r <= 1'b0;
      end
      if (bus_guards_wren_s == 1'b1) begin
        bus_guards_wronce_r <= 1'b0;
      end
    end
  end

  // ------------------------------------------------------
  //  Bus Read-Mux
  // ------------------------------------------------------
  always_comb begin: proc_bus_rd
    if ((mem_ena_i == 1'b1) && (mem_wena_i == 1'b0)) begin
      case (mem_addr_i)
        13'h0000: begin
          mem_rdata_o = {20'h00000, regf_grpc_ctrl_spec1_rbus_i, data_ctrl_ver_c, regf_grpa_ctrl_status_rbus_i, data_ctrl_start_r, regf_ctrl_busy_rbus_i, 3'h0, data_ctrl_ena_r};
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
        13'h0024: begin
          mem_rdata_o = {13'h0000, data_guards_bprio_r, data_guards_cprio_r, data_guards_guard_c_r, data_guards_guard_b_r, data_guards_guard_a_r, data_guards_onetime_r, data_guards_single_r, regf_guards_busonce_rbus_i, regf_guards_coreonce_rbus_i, data_guards_once_r};
        end
        13'h0024: begin
          mem_rdata_o = {5'h00, regf_grpa_grddim_int_rbus_i[0], data_grddim_const_c[0], regf_grddim_num_rbus_i[0]};
        end
        13'h0028: begin
          mem_rdata_o = {5'h00, regf_grpa_grddim_int_rbus_i[1], data_grddim_const_c[1], regf_grddim_num_rbus_i[1]};
        end
        default: begin
          mem_rdata_o = 32'h00000000;
        end
      endcase
    end else begin
      mem_rdata_o = 32'h00000000;
    end
  end

  // ------------------------------------------------------
  //  Output Assignments
  // ------------------------------------------------------
  assign regf_ctrl_ena_rval_o           = data_ctrl_ena_r;
  assign regf_grpa_ctrl_start_rval_o    = data_ctrl_start_r;
  assign regf_grpb_ctrl_start_rval_o    = data_ctrl_start_r;
  assign regf_ctrl_ver_rval_o           = data_ctrl_ver_c;
  assign regf_txdata_bytes_rval_o       = data_txdata_bytes_r;
  assign regf_dims_wrval_rval_o         = data_dims_wrval_r;
  assign regf_dims_wrval_upd_o          = upd_strb_dims_wrval_r;
  assign regf_grpc_dims_spec2_wbus_o[0] = (bus_dims_wren_s[0] == 1'b1) ? mem_wdata_i[2] : 1'h0;
  assign regf_grpc_dims_spec2_wr_o[0]   = (bus_dims_wren_s[0] == 1'b1) ? 1'b1 : 1'b0;
  assign regf_grpc_dims_spec2_wbus_o[1] = (bus_dims_wren_s[1] == 1'b1) ? mem_wdata_i[2] : 1'h0;
  assign regf_grpc_dims_spec2_wr_o[1]   = (bus_dims_wren_s[1] == 1'b1) ? 1'b1 : 1'b0;
  assign regf_grpc_dims_spec2_wbus_o[2] = (bus_dims_wren_s[2] == 1'b1) ? mem_wdata_i[2] : 1'h0;
  assign regf_grpc_dims_spec2_wr_o[2]   = (bus_dims_wren_s[2] == 1'b1) ? 1'b1 : 1'b0;
  assign regf_grpc_dims_spec3_rval_o    = data_dims_spec3_r;
  assign regf_guards_once_rval_o        = data_guards_once_r;
  assign regf_guards_coreonce_wbus_o    = ((bus_guards_wren_s == 1'b1) && (bus_guards_grd1once_r == 1'b1)) ? mem_wdata_i[1] : 1'h0;
  assign regf_guards_coreonce_wr_o      = ((bus_guards_wren_s == 1'b1) && (bus_guards_grd1once_r == 1'b1)) ? 1'b1 : 1'b0;
  assign regf_guards_busonce_wbus_o     = ((bus_guards_wren_s == 1'b1) && (bus_guards_grd1once_r == 1'b1)) ? mem_wdata_i[2] : 1'h0;
  assign regf_guards_busonce_wr_o       = ((bus_guards_wren_s == 1'b1) && (bus_guards_grd1once_r == 1'b1)) ? 1'b1 : 1'b0;
  assign regf_guards_single_rval_o      = data_guards_single_r;
  assign regf_guards_onetime_rval_o     = data_guards_onetime_r;
  assign regf_guards_guard_a_rval_o     = data_guards_guard_a_r;
  assign regf_guards_guard_b_rval_o     = data_guards_guard_b_r;
  assign regf_guards_guard_c_rval_o     = data_guards_guard_c_r;
  assign regf_guards_cprio_rval_o       = data_guards_cprio_r;
  assign regf_guards_bprio_rval_o       = data_guards_bprio_r;
  assign regf_grddim_num_wbus_o[0]      = ((bus_grddim_wren_s[0] == 1'b1) && (bus_wrguard_1_s == 1'b1)) ? mem_wdata_i[11:0] : 12'h000;
  assign regf_grddim_num_wr_o[0]        = ((bus_grddim_wren_s[0] == 1'b1) && (bus_wrguard_1_s == 1'b1)) ? 1'b1 : 1'b0;
  assign regf_grddim_num_wbus_o[1]      = ((bus_grddim_wren_s[1] == 1'b1) && (bus_wrguard_1_s == 1'b1)) ? mem_wdata_i[11:0] : 12'h000;
  assign regf_grddim_num_wr_o[1]        = ((bus_grddim_wren_s[1] == 1'b1) && (bus_wrguard_1_s == 1'b1)) ? 1'b1 : 1'b0;
  assign regf_grddim_const_rval_o       = data_grddim_const_c;
  assign regf_grpa_grddim_int_wbus_o[0] = ((bus_grddim_wren_s[0] == 1'b1) && (bus_wrguard_2_s == 1'b1)) ? mem_wdata_i[26:15] : 12'h000;
  assign regf_grpa_grddim_int_wr_o[0]   = ((bus_grddim_wren_s[0] == 1'b1) && (bus_wrguard_2_s == 1'b1)) ? 1'b1 : 1'b0;
  assign regf_grpa_grddim_int_wbus_o[1] = ((bus_grddim_wren_s[1] == 1'b1) && (bus_wrguard_2_s == 1'b1)) ? mem_wdata_i[26:15] : 12'h000;
  assign regf_grpa_grddim_int_wr_o[1]   = ((bus_grddim_wren_s[1] == 1'b1) && (bus_wrguard_2_s == 1'b1)) ? 1'b1 : 1'b0;

endmodule // corner_regf

`default_nettype wire
`end_keywords
