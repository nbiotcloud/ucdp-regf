// =============================================================================
//
// Module:     tests.full_regf
// Data Model: tests.test_svmako.RegfMod
//
//  Overview
//
//  Offset    Word     Field    Bus/Core    Const    Impl
//  --------  -------  -------  ----------  -------  ------
//  +0        w0
//            [1:0]    .f0      -/RO        True     core
//            [3:2]    .f2      -/RO        True     regf
//            [5:4]    .f4      -/RC        False    core
//            [7:6]    .f6      -/RC        False    regf
//            [9:8]    .f8      -/RS        False    core
//            [11:10]  .f10     -/RS        False    regf
//            [13:12]  .f12     -/WO        False    core
//            [15:14]  .f14     -/WO        False    regf
//            [17:16]  .f16     -/W1C       False    core
//            [19:18]  .f18     -/W1C       False    regf
//            [21:20]  .f20     -/W1S       False    core
//            [23:22]  .f22     -/W1S       False    regf
//            [25:24]  .f24     -/RW        False    core
//            [27:26]  .f26     -/RW        False    regf
//            [29:28]  .f28     -/RW1C      False    core
//            [31:30]  .f30     -/RW1C      False    regf
//  +1        w1
//            [1:0]    .f0      -/RW1S      False    core
//            [3:2]    .f2      -/RW1S      False    regf
//            [5:4]    .f4      RO/RO       True     regf
//            [7:6]    .f6      RO/RC       False    core
//            [9:8]    .f8      RO/RC       False    regf
//            [11:10]  .f10     RO/RS       False    core
//            [13:12]  .f12     RO/RS       False    regf
//            [15:14]  .f14     RO/WO       False    core
//            [17:16]  .f16     RO/WO       False    regf
//            [19:18]  .f18     RO/W1C      False    core
//            [21:20]  .f20     RO/W1C      False    regf
//            [23:22]  .f22     RO/W1S      False    core
//            [25:24]  .f24     RO/W1S      False    regf
//            [27:26]  .f26     RO/RW       False    core
//            [29:28]  .f28     RO/RW       False    regf
//            [31:30]  .f30     RO/RW1C     False    core
//  +2        w2
//            [1:0]    .f0      RO/RW1C     False    regf
//            [3:2]    .f2      RO/RW1S     False    core
//            [5:4]    .f4      RO/RW1S     False    regf
//            [7:6]    .f6      RC/RO       False    core
//            [9:8]    .f8      RC/RO       False    regf
//            [11:10]  .f10     RC/RC       False    core
//            [13:12]  .f12     RC/RC       False    regf
//            [15:14]  .f14     RC/RS       False    core
//            [17:16]  .f16     RC/RS       False    regf
//            [19:18]  .f18     RC/WO       False    core
//            [21:20]  .f20     RC/WO       False    regf
//            [23:22]  .f22     RC/W1C      False    core
//            [25:24]  .f24     RC/W1C      False    regf
//            [27:26]  .f26     RC/W1S      False    core
//            [29:28]  .f28     RC/W1S      False    regf
//            [31:30]  .f30     RC/RW       False    core
//  +3        w3
//            [1:0]    .f0      RC/RW       False    regf
//            [3:2]    .f2      RC/RW1C     False    core
//            [5:4]    .f4      RC/RW1C     False    regf
//            [7:6]    .f6      RC/RW1S     False    core
//            [9:8]    .f8      RC/RW1S     False    regf
//            [11:10]  .f10     RS/RO       False    core
//            [13:12]  .f12     RS/RO       False    regf
//            [15:14]  .f14     RS/RC       False    core
//            [17:16]  .f16     RS/RC       False    regf
//            [19:18]  .f18     RS/RS       False    core
//            [21:20]  .f20     RS/RS       False    regf
//            [23:22]  .f22     RS/WO       False    core
//            [25:24]  .f24     RS/WO       False    regf
//            [27:26]  .f26     RS/W1C      False    core
//            [29:28]  .f28     RS/W1C      False    regf
//            [31:30]  .f30     RS/W1S      False    core
//  +4        w4
//            [1:0]    .f0      RS/W1S      False    regf
//            [3:2]    .f2      RS/RW       False    core
//            [5:4]    .f4      RS/RW       False    regf
//            [7:6]    .f6      RS/RW1C     False    core
//            [9:8]    .f8      RS/RW1C     False    regf
//            [11:10]  .f10     RS/RW1S     False    core
//            [13:12]  .f12     RS/RW1S     False    regf
//            [15:14]  .f14     WO/RO       False    core
//            [17:16]  .f16     WO/RO       False    regf
//            [19:18]  .f18     WO/RC       False    core
//            [21:20]  .f20     WO/RC       False    regf
//            [23:22]  .f22     WO/RS       False    core
//            [25:24]  .f24     WO/RS       False    regf
//            [27:26]  .f26     WO/WO       False    core
//            [29:28]  .f28     WO/WO       False    regf
//            [31:30]  .f30     WO/W1C      False    core
//  +5        w5
//            [1:0]    .f0      WO/W1C      False    regf
//            [3:2]    .f2      WO/W1S      False    core
//            [5:4]    .f4      WO/W1S      False    regf
//            [7:6]    .f6      WO/RW       False    core
//            [9:8]    .f8      WO/RW       False    regf
//            [11:10]  .f10     WO/RW1C     False    core
//            [13:12]  .f12     WO/RW1C     False    regf
//            [15:14]  .f14     WO/RW1S     False    core
//            [17:16]  .f16     WO/RW1S     False    regf
//            [19:18]  .f18     W1C/RO      False    core
//            [21:20]  .f20     W1C/RO      False    regf
//            [23:22]  .f22     W1C/RC      False    core
//            [25:24]  .f24     W1C/RC      False    regf
//            [27:26]  .f26     W1C/RS      False    core
//            [29:28]  .f28     W1C/RS      False    regf
//            [31:30]  .f30     W1C/WO      False    core
//  +6        w6
//            [1:0]    .f0      W1C/WO      False    regf
//            [3:2]    .f2      W1C/W1C     False    core
//            [5:4]    .f4      W1C/W1C     False    regf
//            [7:6]    .f6      W1C/W1S     False    core
//            [9:8]    .f8      W1C/W1S     False    regf
//            [11:10]  .f10     W1C/RW      False    core
//            [13:12]  .f12     W1C/RW      False    regf
//            [15:14]  .f14     W1C/RW1C    False    core
//            [17:16]  .f16     W1C/RW1C    False    regf
//            [19:18]  .f18     W1C/RW1S    False    core
//            [21:20]  .f20     W1C/RW1S    False    regf
//            [23:22]  .f22     W1S/RO      False    core
//            [25:24]  .f24     W1S/RO      False    regf
//            [27:26]  .f26     W1S/RC      False    core
//            [29:28]  .f28     W1S/RC      False    regf
//            [31:30]  .f30     W1S/RS      False    core
//  +7        w7
//            [1:0]    .f0      W1S/RS      False    regf
//            [3:2]    .f2      W1S/WO      False    core
//            [5:4]    .f4      W1S/WO      False    regf
//            [7:6]    .f6      W1S/W1C     False    core
//            [9:8]    .f8      W1S/W1C     False    regf
//            [11:10]  .f10     W1S/W1S     False    core
//            [13:12]  .f12     W1S/W1S     False    regf
//            [15:14]  .f14     W1S/RW      False    core
//            [17:16]  .f16     W1S/RW      False    regf
//            [19:18]  .f18     W1S/RW1C    False    core
//            [21:20]  .f20     W1S/RW1C    False    regf
//            [23:22]  .f22     W1S/RW1S    False    core
//            [25:24]  .f24     W1S/RW1S    False    regf
//            [27:26]  .f26     RW/RO       False    core
//            [29:28]  .f28     RW/RO       False    regf
//            [31:30]  .f30     RW/RC       False    core
//  +8        w8
//            [1:0]    .f0      RW/RC       False    regf
//            [3:2]    .f2      RW/RS       False    core
//            [5:4]    .f4      RW/RS       False    regf
//            [7:6]    .f6      RW/WO       False    core
//            [9:8]    .f8      RW/WO       False    regf
//            [11:10]  .f10     RW/W1C      False    core
//            [13:12]  .f12     RW/W1C      False    regf
//            [15:14]  .f14     RW/W1S      False    core
//            [17:16]  .f16     RW/W1S      False    regf
//            [19:18]  .f18     RW/RW       False    core
//            [21:20]  .f20     RW/RW       False    regf
//            [23:22]  .f22     RW/RW1C     False    core
//            [25:24]  .f24     RW/RW1C     False    regf
//            [27:26]  .f26     RW/RW1S     False    core
//            [29:28]  .f28     RW/RW1S     False    regf
//            [31:30]  .f30     RW1C/RO     False    core
//  +9        w9
//            [1:0]    .f0      RW1C/RO     False    regf
//            [3:2]    .f2      RW1C/RC     False    core
//            [5:4]    .f4      RW1C/RC     False    regf
//            [7:6]    .f6      RW1C/RS     False    core
//            [9:8]    .f8      RW1C/RS     False    regf
//            [11:10]  .f10     RW1C/WO     False    core
//            [13:12]  .f12     RW1C/WO     False    regf
//            [15:14]  .f14     RW1C/W1C    False    core
//            [17:16]  .f16     RW1C/W1C    False    regf
//            [19:18]  .f18     RW1C/W1S    False    core
//            [21:20]  .f20     RW1C/W1S    False    regf
//            [23:22]  .f22     RW1C/RW     False    core
//            [25:24]  .f24     RW1C/RW     False    regf
//            [27:26]  .f26     RW1C/RW1C   False    core
//            [29:28]  .f28     RW1C/RW1C   False    regf
//            [31:30]  .f30     RW1C/RW1S   False    core
//  +10       w10
//            [1:0]    .f0      RW1C/RW1S   False    regf
//            [3:2]    .f2      RW1S/RO     False    core
//            [5:4]    .f4      RW1S/RO     False    regf
//            [7:6]    .f6      RW1S/RC     False    core
//            [9:8]    .f8      RW1S/RC     False    regf
//            [11:10]  .f10     RW1S/RS     False    core
//            [13:12]  .f12     RW1S/RS     False    regf
//            [15:14]  .f14     RW1S/WO     False    core
//            [17:16]  .f16     RW1S/WO     False    regf
//            [19:18]  .f18     RW1S/W1C    False    core
//            [21:20]  .f20     RW1S/W1C    False    regf
//            [23:22]  .f22     RW1S/W1S    False    core
//            [25:24]  .f24     RW1S/W1S    False    regf
//            [27:26]  .f26     RW1S/RW     False    core
//            [29:28]  .f28     RW1S/RW     False    regf
//            [31:30]  .f30     RW1S/RW1C   False    core
//  +11       w11
//            [1:0]    .f0      RW1S/RW1C   False    regf
//            [3:2]    .f2      RW1S/RW1S   False    core
//            [5:4]    .f4      RW1S/RW1S   False    regf
//
//
// =============================================================================


module full_regf ( // tests.test_svmako.RegfMod
  // main_i
  input  wire         main_clk_i,
  input  wire         main_rst_an_i,       // Async Reset (Low-Active)
  // mem_i
  input  wire         mem_ena_i,
  input  wire  [12:0] mem_addr_i,
  input  wire         mem_wena_i,
  input  wire  [31:0] mem_wdata_i,
  output logic [31:0] mem_rdata_o,
  output logic        mem_err_o,
  // regf_o
  // regf_w0_f0_o: bus=None core=RO in_regf=False
  // regf_w0_f2_o: bus=None core=RO in_regf=True
  output logic [1:0]  regf_w0_f2_rval_o,   // Core Read Value
  // regf_w0_f4_o: bus=None core=RC in_regf=False
  // regf_w0_f6_o: bus=None core=RC in_regf=True
  output logic [1:0]  regf_w0_f6_rval_o,   // Core Read Value
  input  wire         regf_w0_f6_rd_i,     // Core Read Strobe
  // regf_w0_f8_o: bus=None core=RS in_regf=False
  // regf_w0_f10_o: bus=None core=RS in_regf=True
  output logic [1:0]  regf_w0_f10_rval_o,  // Core Read Value
  input  wire         regf_w0_f10_rd_i,    // Core Read Strobe
  // regf_w0_f12_o: bus=None core=WO in_regf=False
  // regf_w0_f14_o: bus=None core=WO in_regf=True
  input  wire  [1:0]  regf_w0_f14_wval_i,  // Core Write Value
  input  wire         regf_w0_f14_wr_i,    // Core Write Strobe
  // regf_w0_f16_o: bus=None core=W1C in_regf=False
  // regf_w0_f18_o: bus=None core=W1C in_regf=True
  input  wire  [1:0]  regf_w0_f18_wval_i,  // Core Write Value
  input  wire         regf_w0_f18_wr_i,    // Core Write Strobe
  // regf_w0_f20_o: bus=None core=W1S in_regf=False
  // regf_w0_f22_o: bus=None core=W1S in_regf=True
  input  wire  [1:0]  regf_w0_f22_wval_i,  // Core Write Value
  input  wire         regf_w0_f22_wr_i,    // Core Write Strobe
  // regf_w0_f24_o: bus=None core=RW in_regf=False
  // regf_w0_f26_o: bus=None core=RW in_regf=True
  output logic [1:0]  regf_w0_f26_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w0_f26_wval_i,  // Core Write Value
  input  wire         regf_w0_f26_wr_i,    // Core Write Strobe
  // regf_w0_f28_o: bus=None core=RW1C in_regf=False
  // regf_w0_f30_o: bus=None core=RW1C in_regf=True
  output logic [1:0]  regf_w0_f30_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w0_f30_wval_i,  // Core Write Value
  input  wire         regf_w0_f30_wr_i,    // Core Write Strobe
  // regf_w1_f0_o: bus=None core=RW1S in_regf=False
  // regf_w1_f2_o: bus=None core=RW1S in_regf=True
  output logic [1:0]  regf_w1_f2_rval_o,   // Core Read Value
  input  wire  [1:0]  regf_w1_f2_wval_i,   // Core Write Value
  input  wire         regf_w1_f2_wr_i,     // Core Write Strobe
  // regf_w1_f4_o: bus=RO core=RO in_regf=True
  output logic [1:0]  regf_w1_f4_rval_o,   // Core Read Value
  // regf_w1_f6_o: bus=RO core=RC in_regf=False
  input  wire  [1:0]  regf_w1_f6_rbus_i,   // Bus Read Value
  // regf_w1_f8_o: bus=RO core=RC in_regf=True
  output logic [1:0]  regf_w1_f8_rval_o,   // Core Read Value
  input  wire         regf_w1_f8_rd_i,     // Core Read Strobe
  // regf_w1_f10_o: bus=RO core=RS in_regf=False
  input  wire  [1:0]  regf_w1_f10_rbus_i,  // Bus Read Value
  // regf_w1_f12_o: bus=RO core=RS in_regf=True
  output logic [1:0]  regf_w1_f12_rval_o,  // Core Read Value
  input  wire         regf_w1_f12_rd_i,    // Core Read Strobe
  // regf_w1_f14_o: bus=RO core=WO in_regf=False
  input  wire  [1:0]  regf_w1_f14_rbus_i,  // Bus Read Value
  // regf_w1_f16_o: bus=RO core=WO in_regf=True
  input  wire  [1:0]  regf_w1_f16_wval_i,  // Core Write Value
  input  wire         regf_w1_f16_wr_i,    // Core Write Strobe
  // regf_w1_f18_o: bus=RO core=W1C in_regf=False
  input  wire  [1:0]  regf_w1_f18_rbus_i,  // Bus Read Value
  // regf_w1_f20_o: bus=RO core=W1C in_regf=True
  input  wire  [1:0]  regf_w1_f20_wval_i,  // Core Write Value
  input  wire         regf_w1_f20_wr_i,    // Core Write Strobe
  // regf_w1_f22_o: bus=RO core=W1S in_regf=False
  input  wire  [1:0]  regf_w1_f22_rbus_i,  // Bus Read Value
  // regf_w1_f24_o: bus=RO core=W1S in_regf=True
  input  wire  [1:0]  regf_w1_f24_wval_i,  // Core Write Value
  input  wire         regf_w1_f24_wr_i,    // Core Write Strobe
  // regf_w1_f26_o: bus=RO core=RW in_regf=False
  input  wire  [1:0]  regf_w1_f26_rbus_i,  // Bus Read Value
  // regf_w1_f28_o: bus=RO core=RW in_regf=True
  output logic [1:0]  regf_w1_f28_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w1_f28_wval_i,  // Core Write Value
  input  wire         regf_w1_f28_wr_i,    // Core Write Strobe
  // regf_w1_f30_o: bus=RO core=RW1C in_regf=False
  input  wire  [1:0]  regf_w1_f30_rbus_i,  // Bus Read Value
  // regf_w2_f0_o: bus=RO core=RW1C in_regf=True
  output logic [1:0]  regf_w2_f0_rval_o,   // Core Read Value
  input  wire  [1:0]  regf_w2_f0_wval_i,   // Core Write Value
  input  wire         regf_w2_f0_wr_i,     // Core Write Strobe
  // regf_w2_f2_o: bus=RO core=RW1S in_regf=False
  input  wire  [1:0]  regf_w2_f2_rbus_i,   // Bus Read Value
  // regf_w2_f4_o: bus=RO core=RW1S in_regf=True
  output logic [1:0]  regf_w2_f4_rval_o,   // Core Read Value
  input  wire  [1:0]  regf_w2_f4_wval_i,   // Core Write Value
  input  wire         regf_w2_f4_wr_i,     // Core Write Strobe
  // regf_w2_f6_o: bus=RC core=RO in_regf=False
  input  wire  [1:0]  regf_w2_f6_rbus_i,   // Bus Read Value
  output logic        regf_w2_f6_rd_o,     // Bus Read Strobe
  // regf_w2_f8_o: bus=RC core=RO in_regf=True
  output logic [1:0]  regf_w2_f8_rval_o,   // Core Read Value
  // regf_w2_f10_o: bus=RC core=RC in_regf=False
  input  wire  [1:0]  regf_w2_f10_rbus_i,  // Bus Read Value
  output logic        regf_w2_f10_rd_o,    // Bus Read Strobe
  // regf_w2_f12_o: bus=RC core=RC in_regf=True
  output logic [1:0]  regf_w2_f12_rval_o,  // Core Read Value
  input  wire         regf_w2_f12_rd_i,    // Core Read Strobe
  // regf_w2_f14_o: bus=RC core=RS in_regf=False
  input  wire  [1:0]  regf_w2_f14_rbus_i,  // Bus Read Value
  output logic        regf_w2_f14_rd_o,    // Bus Read Strobe
  // regf_w2_f16_o: bus=RC core=RS in_regf=True
  output logic [1:0]  regf_w2_f16_rval_o,  // Core Read Value
  input  wire         regf_w2_f16_rd_i,    // Core Read Strobe
  // regf_w2_f18_o: bus=RC core=WO in_regf=False
  input  wire  [1:0]  regf_w2_f18_rbus_i,  // Bus Read Value
  output logic        regf_w2_f18_rd_o,    // Bus Read Strobe
  // regf_w2_f20_o: bus=RC core=WO in_regf=True
  input  wire  [1:0]  regf_w2_f20_wval_i,  // Core Write Value
  input  wire         regf_w2_f20_wr_i,    // Core Write Strobe
  // regf_w2_f22_o: bus=RC core=W1C in_regf=False
  input  wire  [1:0]  regf_w2_f22_rbus_i,  // Bus Read Value
  output logic        regf_w2_f22_rd_o,    // Bus Read Strobe
  // regf_w2_f24_o: bus=RC core=W1C in_regf=True
  input  wire  [1:0]  regf_w2_f24_wval_i,  // Core Write Value
  input  wire         regf_w2_f24_wr_i,    // Core Write Strobe
  // regf_w2_f26_o: bus=RC core=W1S in_regf=False
  input  wire  [1:0]  regf_w2_f26_rbus_i,  // Bus Read Value
  output logic        regf_w2_f26_rd_o,    // Bus Read Strobe
  // regf_w2_f28_o: bus=RC core=W1S in_regf=True
  input  wire  [1:0]  regf_w2_f28_wval_i,  // Core Write Value
  input  wire         regf_w2_f28_wr_i,    // Core Write Strobe
  // regf_w2_f30_o: bus=RC core=RW in_regf=False
  input  wire  [1:0]  regf_w2_f30_rbus_i,  // Bus Read Value
  output logic        regf_w2_f30_rd_o,    // Bus Read Strobe
  // regf_w3_f0_o: bus=RC core=RW in_regf=True
  output logic [1:0]  regf_w3_f0_rval_o,   // Core Read Value
  input  wire  [1:0]  regf_w3_f0_wval_i,   // Core Write Value
  input  wire         regf_w3_f0_wr_i,     // Core Write Strobe
  // regf_w3_f2_o: bus=RC core=RW1C in_regf=False
  input  wire  [1:0]  regf_w3_f2_rbus_i,   // Bus Read Value
  output logic        regf_w3_f2_rd_o,     // Bus Read Strobe
  // regf_w3_f4_o: bus=RC core=RW1C in_regf=True
  output logic [1:0]  regf_w3_f4_rval_o,   // Core Read Value
  input  wire  [1:0]  regf_w3_f4_wval_i,   // Core Write Value
  input  wire         regf_w3_f4_wr_i,     // Core Write Strobe
  // regf_w3_f6_o: bus=RC core=RW1S in_regf=False
  input  wire  [1:0]  regf_w3_f6_rbus_i,   // Bus Read Value
  output logic        regf_w3_f6_rd_o,     // Bus Read Strobe
  // regf_w3_f8_o: bus=RC core=RW1S in_regf=True
  output logic [1:0]  regf_w3_f8_rval_o,   // Core Read Value
  input  wire  [1:0]  regf_w3_f8_wval_i,   // Core Write Value
  input  wire         regf_w3_f8_wr_i,     // Core Write Strobe
  // regf_w3_f10_o: bus=RS core=RO in_regf=False
  input  wire  [1:0]  regf_w3_f10_rbus_i,  // Bus Read Value
  output logic        regf_w3_f10_rd_o,    // Bus Read Strobe
  // regf_w3_f12_o: bus=RS core=RO in_regf=True
  output logic [1:0]  regf_w3_f12_rval_o,  // Core Read Value
  // regf_w3_f14_o: bus=RS core=RC in_regf=False
  input  wire  [1:0]  regf_w3_f14_rbus_i,  // Bus Read Value
  output logic        regf_w3_f14_rd_o,    // Bus Read Strobe
  // regf_w3_f16_o: bus=RS core=RC in_regf=True
  output logic [1:0]  regf_w3_f16_rval_o,  // Core Read Value
  input  wire         regf_w3_f16_rd_i,    // Core Read Strobe
  // regf_w3_f18_o: bus=RS core=RS in_regf=False
  input  wire  [1:0]  regf_w3_f18_rbus_i,  // Bus Read Value
  output logic        regf_w3_f18_rd_o,    // Bus Read Strobe
  // regf_w3_f20_o: bus=RS core=RS in_regf=True
  output logic [1:0]  regf_w3_f20_rval_o,  // Core Read Value
  input  wire         regf_w3_f20_rd_i,    // Core Read Strobe
  // regf_w3_f22_o: bus=RS core=WO in_regf=False
  input  wire  [1:0]  regf_w3_f22_rbus_i,  // Bus Read Value
  output logic        regf_w3_f22_rd_o,    // Bus Read Strobe
  // regf_w3_f24_o: bus=RS core=WO in_regf=True
  input  wire  [1:0]  regf_w3_f24_wval_i,  // Core Write Value
  input  wire         regf_w3_f24_wr_i,    // Core Write Strobe
  // regf_w3_f26_o: bus=RS core=W1C in_regf=False
  input  wire  [1:0]  regf_w3_f26_rbus_i,  // Bus Read Value
  output logic        regf_w3_f26_rd_o,    // Bus Read Strobe
  // regf_w3_f28_o: bus=RS core=W1C in_regf=True
  input  wire  [1:0]  regf_w3_f28_wval_i,  // Core Write Value
  input  wire         regf_w3_f28_wr_i,    // Core Write Strobe
  // regf_w3_f30_o: bus=RS core=W1S in_regf=False
  input  wire  [1:0]  regf_w3_f30_rbus_i,  // Bus Read Value
  output logic        regf_w3_f30_rd_o,    // Bus Read Strobe
  // regf_w4_f0_o: bus=RS core=W1S in_regf=True
  input  wire  [1:0]  regf_w4_f0_wval_i,   // Core Write Value
  input  wire         regf_w4_f0_wr_i,     // Core Write Strobe
  // regf_w4_f2_o: bus=RS core=RW in_regf=False
  input  wire  [1:0]  regf_w4_f2_rbus_i,   // Bus Read Value
  output logic        regf_w4_f2_rd_o,     // Bus Read Strobe
  // regf_w4_f4_o: bus=RS core=RW in_regf=True
  output logic [1:0]  regf_w4_f4_rval_o,   // Core Read Value
  input  wire  [1:0]  regf_w4_f4_wval_i,   // Core Write Value
  input  wire         regf_w4_f4_wr_i,     // Core Write Strobe
  // regf_w4_f6_o: bus=RS core=RW1C in_regf=False
  input  wire  [1:0]  regf_w4_f6_rbus_i,   // Bus Read Value
  output logic        regf_w4_f6_rd_o,     // Bus Read Strobe
  // regf_w4_f8_o: bus=RS core=RW1C in_regf=True
  output logic [1:0]  regf_w4_f8_rval_o,   // Core Read Value
  input  wire  [1:0]  regf_w4_f8_wval_i,   // Core Write Value
  input  wire         regf_w4_f8_wr_i,     // Core Write Strobe
  // regf_w4_f10_o: bus=RS core=RW1S in_regf=False
  input  wire  [1:0]  regf_w4_f10_rbus_i,  // Bus Read Value
  output logic        regf_w4_f10_rd_o,    // Bus Read Strobe
  // regf_w4_f12_o: bus=RS core=RW1S in_regf=True
  output logic [1:0]  regf_w4_f12_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w4_f12_wval_i,  // Core Write Value
  input  wire         regf_w4_f12_wr_i,    // Core Write Strobe
  // regf_w4_f14_o: bus=WO core=RO in_regf=False
  output logic [1:0]  regf_w4_f14_wbus_o,  // Bus Write Value
  output logic        regf_w4_f14_wr_o,    // Bus Write Strobe
  // regf_w4_f16_o: bus=WO core=RO in_regf=True
  output logic [1:0]  regf_w4_f16_rval_o,  // Core Read Value
  // regf_w4_f18_o: bus=WO core=RC in_regf=False
  output logic [1:0]  regf_w4_f18_wbus_o,  // Bus Write Value
  output logic        regf_w4_f18_wr_o,    // Bus Write Strobe
  // regf_w4_f20_o: bus=WO core=RC in_regf=True
  output logic [1:0]  regf_w4_f20_rval_o,  // Core Read Value
  input  wire         regf_w4_f20_rd_i,    // Core Read Strobe
  // regf_w4_f22_o: bus=WO core=RS in_regf=False
  output logic [1:0]  regf_w4_f22_wbus_o,  // Bus Write Value
  output logic        regf_w4_f22_wr_o,    // Bus Write Strobe
  // regf_w4_f24_o: bus=WO core=RS in_regf=True
  output logic [1:0]  regf_w4_f24_rval_o,  // Core Read Value
  input  wire         regf_w4_f24_rd_i,    // Core Read Strobe
  // regf_w4_f26_o: bus=WO core=WO in_regf=False
  output logic [1:0]  regf_w4_f26_wbus_o,  // Bus Write Value
  output logic        regf_w4_f26_wr_o,    // Bus Write Strobe
  // regf_w4_f28_o: bus=WO core=WO in_regf=True
  input  wire  [1:0]  regf_w4_f28_wval_i,  // Core Write Value
  input  wire         regf_w4_f28_wr_i,    // Core Write Strobe
  // regf_w4_f30_o: bus=WO core=W1C in_regf=False
  output logic [1:0]  regf_w4_f30_wbus_o,  // Bus Write Value
  output logic        regf_w4_f30_wr_o,    // Bus Write Strobe
  // regf_w5_f0_o: bus=WO core=W1C in_regf=True
  input  wire  [1:0]  regf_w5_f0_wval_i,   // Core Write Value
  input  wire         regf_w5_f0_wr_i,     // Core Write Strobe
  // regf_w5_f2_o: bus=WO core=W1S in_regf=False
  output logic [1:0]  regf_w5_f2_wbus_o,   // Bus Write Value
  output logic        regf_w5_f2_wr_o,     // Bus Write Strobe
  // regf_w5_f4_o: bus=WO core=W1S in_regf=True
  input  wire  [1:0]  regf_w5_f4_wval_i,   // Core Write Value
  input  wire         regf_w5_f4_wr_i,     // Core Write Strobe
  // regf_w5_f6_o: bus=WO core=RW in_regf=False
  output logic [1:0]  regf_w5_f6_wbus_o,   // Bus Write Value
  output logic        regf_w5_f6_wr_o,     // Bus Write Strobe
  // regf_w5_f8_o: bus=WO core=RW in_regf=True
  output logic [1:0]  regf_w5_f8_rval_o,   // Core Read Value
  input  wire  [1:0]  regf_w5_f8_wval_i,   // Core Write Value
  input  wire         regf_w5_f8_wr_i,     // Core Write Strobe
  // regf_w5_f10_o: bus=WO core=RW1C in_regf=False
  output logic [1:0]  regf_w5_f10_wbus_o,  // Bus Write Value
  output logic        regf_w5_f10_wr_o,    // Bus Write Strobe
  // regf_w5_f12_o: bus=WO core=RW1C in_regf=True
  output logic [1:0]  regf_w5_f12_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w5_f12_wval_i,  // Core Write Value
  input  wire         regf_w5_f12_wr_i,    // Core Write Strobe
  // regf_w5_f14_o: bus=WO core=RW1S in_regf=False
  output logic [1:0]  regf_w5_f14_wbus_o,  // Bus Write Value
  output logic        regf_w5_f14_wr_o,    // Bus Write Strobe
  // regf_w5_f16_o: bus=WO core=RW1S in_regf=True
  output logic [1:0]  regf_w5_f16_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w5_f16_wval_i,  // Core Write Value
  input  wire         regf_w5_f16_wr_i,    // Core Write Strobe
  // regf_w5_f18_o: bus=W1C core=RO in_regf=False
  output logic [1:0]  regf_w5_f18_wbus_o,  // Bus Write Value
  output logic        regf_w5_f18_wr_o,    // Bus Write Strobe
  // regf_w5_f20_o: bus=W1C core=RO in_regf=True
  output logic [1:0]  regf_w5_f20_rval_o,  // Core Read Value
  // regf_w5_f22_o: bus=W1C core=RC in_regf=False
  output logic [1:0]  regf_w5_f22_wbus_o,  // Bus Write Value
  output logic        regf_w5_f22_wr_o,    // Bus Write Strobe
  // regf_w5_f24_o: bus=W1C core=RC in_regf=True
  output logic [1:0]  regf_w5_f24_rval_o,  // Core Read Value
  input  wire         regf_w5_f24_rd_i,    // Core Read Strobe
  // regf_w5_f26_o: bus=W1C core=RS in_regf=False
  output logic [1:0]  regf_w5_f26_wbus_o,  // Bus Write Value
  output logic        regf_w5_f26_wr_o,    // Bus Write Strobe
  // regf_w5_f28_o: bus=W1C core=RS in_regf=True
  output logic [1:0]  regf_w5_f28_rval_o,  // Core Read Value
  input  wire         regf_w5_f28_rd_i,    // Core Read Strobe
  // regf_w5_f30_o: bus=W1C core=WO in_regf=False
  output logic [1:0]  regf_w5_f30_wbus_o,  // Bus Write Value
  output logic        regf_w5_f30_wr_o,    // Bus Write Strobe
  // regf_w6_f0_o: bus=W1C core=WO in_regf=True
  input  wire  [1:0]  regf_w6_f0_wval_i,   // Core Write Value
  input  wire         regf_w6_f0_wr_i,     // Core Write Strobe
  // regf_w6_f2_o: bus=W1C core=W1C in_regf=False
  output logic [1:0]  regf_w6_f2_wbus_o,   // Bus Write Value
  output logic        regf_w6_f2_wr_o,     // Bus Write Strobe
  // regf_w6_f4_o: bus=W1C core=W1C in_regf=True
  input  wire  [1:0]  regf_w6_f4_wval_i,   // Core Write Value
  input  wire         regf_w6_f4_wr_i,     // Core Write Strobe
  // regf_w6_f6_o: bus=W1C core=W1S in_regf=False
  output logic [1:0]  regf_w6_f6_wbus_o,   // Bus Write Value
  output logic        regf_w6_f6_wr_o,     // Bus Write Strobe
  // regf_w6_f8_o: bus=W1C core=W1S in_regf=True
  input  wire  [1:0]  regf_w6_f8_wval_i,   // Core Write Value
  input  wire         regf_w6_f8_wr_i,     // Core Write Strobe
  // regf_w6_f10_o: bus=W1C core=RW in_regf=False
  output logic [1:0]  regf_w6_f10_wbus_o,  // Bus Write Value
  output logic        regf_w6_f10_wr_o,    // Bus Write Strobe
  // regf_w6_f12_o: bus=W1C core=RW in_regf=True
  output logic [1:0]  regf_w6_f12_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w6_f12_wval_i,  // Core Write Value
  input  wire         regf_w6_f12_wr_i,    // Core Write Strobe
  // regf_w6_f14_o: bus=W1C core=RW1C in_regf=False
  output logic [1:0]  regf_w6_f14_wbus_o,  // Bus Write Value
  output logic        regf_w6_f14_wr_o,    // Bus Write Strobe
  // regf_w6_f16_o: bus=W1C core=RW1C in_regf=True
  output logic [1:0]  regf_w6_f16_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w6_f16_wval_i,  // Core Write Value
  input  wire         regf_w6_f16_wr_i,    // Core Write Strobe
  // regf_w6_f18_o: bus=W1C core=RW1S in_regf=False
  output logic [1:0]  regf_w6_f18_wbus_o,  // Bus Write Value
  output logic        regf_w6_f18_wr_o,    // Bus Write Strobe
  // regf_w6_f20_o: bus=W1C core=RW1S in_regf=True
  output logic [1:0]  regf_w6_f20_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w6_f20_wval_i,  // Core Write Value
  input  wire         regf_w6_f20_wr_i,    // Core Write Strobe
  // regf_w6_f22_o: bus=W1S core=RO in_regf=False
  output logic [1:0]  regf_w6_f22_wbus_o,  // Bus Write Value
  output logic        regf_w6_f22_wr_o,    // Bus Write Strobe
  // regf_w6_f24_o: bus=W1S core=RO in_regf=True
  output logic [1:0]  regf_w6_f24_rval_o,  // Core Read Value
  // regf_w6_f26_o: bus=W1S core=RC in_regf=False
  output logic [1:0]  regf_w6_f26_wbus_o,  // Bus Write Value
  output logic        regf_w6_f26_wr_o,    // Bus Write Strobe
  // regf_w6_f28_o: bus=W1S core=RC in_regf=True
  output logic [1:0]  regf_w6_f28_rval_o,  // Core Read Value
  input  wire         regf_w6_f28_rd_i,    // Core Read Strobe
  // regf_w6_f30_o: bus=W1S core=RS in_regf=False
  output logic [1:0]  regf_w6_f30_wbus_o,  // Bus Write Value
  output logic        regf_w6_f30_wr_o,    // Bus Write Strobe
  // regf_w7_f0_o: bus=W1S core=RS in_regf=True
  output logic [1:0]  regf_w7_f0_rval_o,   // Core Read Value
  input  wire         regf_w7_f0_rd_i,     // Core Read Strobe
  // regf_w7_f2_o: bus=W1S core=WO in_regf=False
  output logic [1:0]  regf_w7_f2_wbus_o,   // Bus Write Value
  output logic        regf_w7_f2_wr_o,     // Bus Write Strobe
  // regf_w7_f4_o: bus=W1S core=WO in_regf=True
  input  wire  [1:0]  regf_w7_f4_wval_i,   // Core Write Value
  input  wire         regf_w7_f4_wr_i,     // Core Write Strobe
  // regf_w7_f6_o: bus=W1S core=W1C in_regf=False
  output logic [1:0]  regf_w7_f6_wbus_o,   // Bus Write Value
  output logic        regf_w7_f6_wr_o,     // Bus Write Strobe
  // regf_w7_f8_o: bus=W1S core=W1C in_regf=True
  input  wire  [1:0]  regf_w7_f8_wval_i,   // Core Write Value
  input  wire         regf_w7_f8_wr_i,     // Core Write Strobe
  // regf_w7_f10_o: bus=W1S core=W1S in_regf=False
  output logic [1:0]  regf_w7_f10_wbus_o,  // Bus Write Value
  output logic        regf_w7_f10_wr_o,    // Bus Write Strobe
  // regf_w7_f12_o: bus=W1S core=W1S in_regf=True
  input  wire  [1:0]  regf_w7_f12_wval_i,  // Core Write Value
  input  wire         regf_w7_f12_wr_i,    // Core Write Strobe
  // regf_w7_f14_o: bus=W1S core=RW in_regf=False
  output logic [1:0]  regf_w7_f14_wbus_o,  // Bus Write Value
  output logic        regf_w7_f14_wr_o,    // Bus Write Strobe
  // regf_w7_f16_o: bus=W1S core=RW in_regf=True
  output logic [1:0]  regf_w7_f16_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w7_f16_wval_i,  // Core Write Value
  input  wire         regf_w7_f16_wr_i,    // Core Write Strobe
  // regf_w7_f18_o: bus=W1S core=RW1C in_regf=False
  output logic [1:0]  regf_w7_f18_wbus_o,  // Bus Write Value
  output logic        regf_w7_f18_wr_o,    // Bus Write Strobe
  // regf_w7_f20_o: bus=W1S core=RW1C in_regf=True
  output logic [1:0]  regf_w7_f20_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w7_f20_wval_i,  // Core Write Value
  input  wire         regf_w7_f20_wr_i,    // Core Write Strobe
  // regf_w7_f22_o: bus=W1S core=RW1S in_regf=False
  output logic [1:0]  regf_w7_f22_wbus_o,  // Bus Write Value
  output logic        regf_w7_f22_wr_o,    // Bus Write Strobe
  // regf_w7_f24_o: bus=W1S core=RW1S in_regf=True
  output logic [1:0]  regf_w7_f24_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w7_f24_wval_i,  // Core Write Value
  input  wire         regf_w7_f24_wr_i,    // Core Write Strobe
  // regf_w7_f26_o: bus=RW core=RO in_regf=False
  input  wire  [1:0]  regf_w7_f26_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w7_f26_wbus_o,  // Bus Write Value
  output logic        regf_w7_f26_wr_o,    // Bus Write Strobe
  // regf_w7_f28_o: bus=RW core=RO in_regf=True
  output logic [1:0]  regf_w7_f28_rval_o,  // Core Read Value
  // regf_w7_f30_o: bus=RW core=RC in_regf=False
  input  wire  [1:0]  regf_w7_f30_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w7_f30_wbus_o,  // Bus Write Value
  output logic        regf_w7_f30_wr_o,    // Bus Write Strobe
  // regf_w8_f0_o: bus=RW core=RC in_regf=True
  output logic [1:0]  regf_w8_f0_rval_o,   // Core Read Value
  input  wire         regf_w8_f0_rd_i,     // Core Read Strobe
  // regf_w8_f2_o: bus=RW core=RS in_regf=False
  input  wire  [1:0]  regf_w8_f2_rbus_i,   // Bus Read Value
  output logic [1:0]  regf_w8_f2_wbus_o,   // Bus Write Value
  output logic        regf_w8_f2_wr_o,     // Bus Write Strobe
  // regf_w8_f4_o: bus=RW core=RS in_regf=True
  output logic [1:0]  regf_w8_f4_rval_o,   // Core Read Value
  input  wire         regf_w8_f4_rd_i,     // Core Read Strobe
  // regf_w8_f6_o: bus=RW core=WO in_regf=False
  input  wire  [1:0]  regf_w8_f6_rbus_i,   // Bus Read Value
  output logic [1:0]  regf_w8_f6_wbus_o,   // Bus Write Value
  output logic        regf_w8_f6_wr_o,     // Bus Write Strobe
  // regf_w8_f8_o: bus=RW core=WO in_regf=True
  input  wire  [1:0]  regf_w8_f8_wval_i,   // Core Write Value
  input  wire         regf_w8_f8_wr_i,     // Core Write Strobe
  // regf_w8_f10_o: bus=RW core=W1C in_regf=False
  input  wire  [1:0]  regf_w8_f10_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w8_f10_wbus_o,  // Bus Write Value
  output logic        regf_w8_f10_wr_o,    // Bus Write Strobe
  // regf_w8_f12_o: bus=RW core=W1C in_regf=True
  input  wire  [1:0]  regf_w8_f12_wval_i,  // Core Write Value
  input  wire         regf_w8_f12_wr_i,    // Core Write Strobe
  // regf_w8_f14_o: bus=RW core=W1S in_regf=False
  input  wire  [1:0]  regf_w8_f14_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w8_f14_wbus_o,  // Bus Write Value
  output logic        regf_w8_f14_wr_o,    // Bus Write Strobe
  // regf_w8_f16_o: bus=RW core=W1S in_regf=True
  input  wire  [1:0]  regf_w8_f16_wval_i,  // Core Write Value
  input  wire         regf_w8_f16_wr_i,    // Core Write Strobe
  // regf_w8_f18_o: bus=RW core=RW in_regf=False
  input  wire  [1:0]  regf_w8_f18_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w8_f18_wbus_o,  // Bus Write Value
  output logic        regf_w8_f18_wr_o,    // Bus Write Strobe
  // regf_w8_f20_o: bus=RW core=RW in_regf=True
  output logic [1:0]  regf_w8_f20_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w8_f20_wval_i,  // Core Write Value
  input  wire         regf_w8_f20_wr_i,    // Core Write Strobe
  // regf_w8_f22_o: bus=RW core=RW1C in_regf=False
  input  wire  [1:0]  regf_w8_f22_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w8_f22_wbus_o,  // Bus Write Value
  output logic        regf_w8_f22_wr_o,    // Bus Write Strobe
  // regf_w8_f24_o: bus=RW core=RW1C in_regf=True
  output logic [1:0]  regf_w8_f24_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w8_f24_wval_i,  // Core Write Value
  input  wire         regf_w8_f24_wr_i,    // Core Write Strobe
  // regf_w8_f26_o: bus=RW core=RW1S in_regf=False
  input  wire  [1:0]  regf_w8_f26_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w8_f26_wbus_o,  // Bus Write Value
  output logic        regf_w8_f26_wr_o,    // Bus Write Strobe
  // regf_w8_f28_o: bus=RW core=RW1S in_regf=True
  output logic [1:0]  regf_w8_f28_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w8_f28_wval_i,  // Core Write Value
  input  wire         regf_w8_f28_wr_i,    // Core Write Strobe
  // regf_w8_f30_o: bus=RW1C core=RO in_regf=False
  input  wire  [1:0]  regf_w8_f30_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w8_f30_wbus_o,  // Bus Write Value
  output logic        regf_w8_f30_wr_o,    // Bus Write Strobe
  // regf_w9_f0_o: bus=RW1C core=RO in_regf=True
  output logic [1:0]  regf_w9_f0_rval_o,   // Core Read Value
  // regf_w9_f2_o: bus=RW1C core=RC in_regf=False
  input  wire  [1:0]  regf_w9_f2_rbus_i,   // Bus Read Value
  output logic [1:0]  regf_w9_f2_wbus_o,   // Bus Write Value
  output logic        regf_w9_f2_wr_o,     // Bus Write Strobe
  // regf_w9_f4_o: bus=RW1C core=RC in_regf=True
  output logic [1:0]  regf_w9_f4_rval_o,   // Core Read Value
  input  wire         regf_w9_f4_rd_i,     // Core Read Strobe
  // regf_w9_f6_o: bus=RW1C core=RS in_regf=False
  input  wire  [1:0]  regf_w9_f6_rbus_i,   // Bus Read Value
  output logic [1:0]  regf_w9_f6_wbus_o,   // Bus Write Value
  output logic        regf_w9_f6_wr_o,     // Bus Write Strobe
  // regf_w9_f8_o: bus=RW1C core=RS in_regf=True
  output logic [1:0]  regf_w9_f8_rval_o,   // Core Read Value
  input  wire         regf_w9_f8_rd_i,     // Core Read Strobe
  // regf_w9_f10_o: bus=RW1C core=WO in_regf=False
  input  wire  [1:0]  regf_w9_f10_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w9_f10_wbus_o,  // Bus Write Value
  output logic        regf_w9_f10_wr_o,    // Bus Write Strobe
  // regf_w9_f12_o: bus=RW1C core=WO in_regf=True
  input  wire  [1:0]  regf_w9_f12_wval_i,  // Core Write Value
  input  wire         regf_w9_f12_wr_i,    // Core Write Strobe
  // regf_w9_f14_o: bus=RW1C core=W1C in_regf=False
  input  wire  [1:0]  regf_w9_f14_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w9_f14_wbus_o,  // Bus Write Value
  output logic        regf_w9_f14_wr_o,    // Bus Write Strobe
  // regf_w9_f16_o: bus=RW1C core=W1C in_regf=True
  input  wire  [1:0]  regf_w9_f16_wval_i,  // Core Write Value
  input  wire         regf_w9_f16_wr_i,    // Core Write Strobe
  // regf_w9_f18_o: bus=RW1C core=W1S in_regf=False
  input  wire  [1:0]  regf_w9_f18_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w9_f18_wbus_o,  // Bus Write Value
  output logic        regf_w9_f18_wr_o,    // Bus Write Strobe
  // regf_w9_f20_o: bus=RW1C core=W1S in_regf=True
  input  wire  [1:0]  regf_w9_f20_wval_i,  // Core Write Value
  input  wire         regf_w9_f20_wr_i,    // Core Write Strobe
  // regf_w9_f22_o: bus=RW1C core=RW in_regf=False
  input  wire  [1:0]  regf_w9_f22_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w9_f22_wbus_o,  // Bus Write Value
  output logic        regf_w9_f22_wr_o,    // Bus Write Strobe
  // regf_w9_f24_o: bus=RW1C core=RW in_regf=True
  output logic [1:0]  regf_w9_f24_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w9_f24_wval_i,  // Core Write Value
  input  wire         regf_w9_f24_wr_i,    // Core Write Strobe
  // regf_w9_f26_o: bus=RW1C core=RW1C in_regf=False
  input  wire  [1:0]  regf_w9_f26_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w9_f26_wbus_o,  // Bus Write Value
  output logic        regf_w9_f26_wr_o,    // Bus Write Strobe
  // regf_w9_f28_o: bus=RW1C core=RW1C in_regf=True
  output logic [1:0]  regf_w9_f28_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w9_f28_wval_i,  // Core Write Value
  input  wire         regf_w9_f28_wr_i,    // Core Write Strobe
  // regf_w9_f30_o: bus=RW1C core=RW1S in_regf=False
  input  wire  [1:0]  regf_w9_f30_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w9_f30_wbus_o,  // Bus Write Value
  output logic        regf_w9_f30_wr_o,    // Bus Write Strobe
  // regf_w10_f0_o: bus=RW1C core=RW1S in_regf=True
  output logic [1:0]  regf_w10_f0_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w10_f0_wval_i,  // Core Write Value
  input  wire         regf_w10_f0_wr_i,    // Core Write Strobe
  // regf_w10_f2_o: bus=RW1S core=RO in_regf=False
  input  wire  [1:0]  regf_w10_f2_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w10_f2_wbus_o,  // Bus Write Value
  output logic        regf_w10_f2_wr_o,    // Bus Write Strobe
  // regf_w10_f4_o: bus=RW1S core=RO in_regf=True
  output logic [1:0]  regf_w10_f4_rval_o,  // Core Read Value
  // regf_w10_f6_o: bus=RW1S core=RC in_regf=False
  input  wire  [1:0]  regf_w10_f6_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w10_f6_wbus_o,  // Bus Write Value
  output logic        regf_w10_f6_wr_o,    // Bus Write Strobe
  // regf_w10_f8_o: bus=RW1S core=RC in_regf=True
  output logic [1:0]  regf_w10_f8_rval_o,  // Core Read Value
  input  wire         regf_w10_f8_rd_i,    // Core Read Strobe
  // regf_w10_f10_o: bus=RW1S core=RS in_regf=False
  input  wire  [1:0]  regf_w10_f10_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w10_f10_wbus_o, // Bus Write Value
  output logic        regf_w10_f10_wr_o,   // Bus Write Strobe
  // regf_w10_f12_o: bus=RW1S core=RS in_regf=True
  output logic [1:0]  regf_w10_f12_rval_o, // Core Read Value
  input  wire         regf_w10_f12_rd_i,   // Core Read Strobe
  // regf_w10_f14_o: bus=RW1S core=WO in_regf=False
  input  wire  [1:0]  regf_w10_f14_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w10_f14_wbus_o, // Bus Write Value
  output logic        regf_w10_f14_wr_o,   // Bus Write Strobe
  // regf_w10_f16_o: bus=RW1S core=WO in_regf=True
  input  wire  [1:0]  regf_w10_f16_wval_i, // Core Write Value
  input  wire         regf_w10_f16_wr_i,   // Core Write Strobe
  // regf_w10_f18_o: bus=RW1S core=W1C in_regf=False
  input  wire  [1:0]  regf_w10_f18_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w10_f18_wbus_o, // Bus Write Value
  output logic        regf_w10_f18_wr_o,   // Bus Write Strobe
  // regf_w10_f20_o: bus=RW1S core=W1C in_regf=True
  input  wire  [1:0]  regf_w10_f20_wval_i, // Core Write Value
  input  wire         regf_w10_f20_wr_i,   // Core Write Strobe
  // regf_w10_f22_o: bus=RW1S core=W1S in_regf=False
  input  wire  [1:0]  regf_w10_f22_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w10_f22_wbus_o, // Bus Write Value
  output logic        regf_w10_f22_wr_o,   // Bus Write Strobe
  // regf_w10_f24_o: bus=RW1S core=W1S in_regf=True
  input  wire  [1:0]  regf_w10_f24_wval_i, // Core Write Value
  input  wire         regf_w10_f24_wr_i,   // Core Write Strobe
  // regf_w10_f26_o: bus=RW1S core=RW in_regf=False
  input  wire  [1:0]  regf_w10_f26_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w10_f26_wbus_o, // Bus Write Value
  output logic        regf_w10_f26_wr_o,   // Bus Write Strobe
  // regf_w10_f28_o: bus=RW1S core=RW in_regf=True
  output logic [1:0]  regf_w10_f28_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w10_f28_wval_i, // Core Write Value
  input  wire         regf_w10_f28_wr_i,   // Core Write Strobe
  // regf_w10_f30_o: bus=RW1S core=RW1C in_regf=False
  input  wire  [1:0]  regf_w10_f30_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w10_f30_wbus_o, // Bus Write Value
  output logic        regf_w10_f30_wr_o,   // Bus Write Strobe
  // regf_w11_f0_o: bus=RW1S core=RW1C in_regf=True
  output logic [1:0]  regf_w11_f0_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w11_f0_wval_i,  // Core Write Value
  input  wire         regf_w11_f0_wr_i,    // Core Write Strobe
  // regf_w11_f2_o: bus=RW1S core=RW1S in_regf=False
  input  wire  [1:0]  regf_w11_f2_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w11_f2_wbus_o,  // Bus Write Value
  output logic        regf_w11_f2_wr_o,    // Bus Write Strobe
  // regf_w11_f4_o: bus=RW1S core=RW1S in_regf=True
  output logic [1:0]  regf_w11_f4_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w11_f4_wval_i,  // Core Write Value
  input  wire         regf_w11_f4_wr_i     // Core Write Strobe
);


  // ===================================
  // local signals
  // ===================================
  // Word: w0
  logic  [1:0] data_w0_f6_r;
  logic  [1:0] data_w0_f10_r;
  logic  [1:0] data_w0_f14_r;
  logic  [1:0] data_w0_f18_r;
  logic  [1:0] data_w0_f22_r;
  logic  [1:0] data_w0_f26_r;
  logic  [1:0] data_w0_f30_r;
  // Word: w1
  logic  [1:0] data_w1_f2_r;
  logic  [1:0] data_w1_f8_r;
  logic  [1:0] data_w1_f12_r;
  logic  [1:0] data_w1_f16_r;
  logic  [1:0] data_w1_f20_r;
  logic  [1:0] data_w1_f24_r;
  logic  [1:0] data_w1_f28_r;
  // Word: w2
  logic  [1:0] data_w2_f0_r;
  logic  [1:0] data_w2_f4_r;
  logic  [1:0] data_w2_f8_r;
  logic  [1:0] data_w2_f12_r;
  logic  [1:0] data_w2_f16_r;
  logic  [1:0] data_w2_f20_r;
  logic  [1:0] data_w2_f24_r;
  logic  [1:0] data_w2_f28_r;
  // Word: w3
  logic  [1:0] data_w3_f0_r;
  logic  [1:0] data_w3_f4_r;
  logic  [1:0] data_w3_f8_r;
  logic  [1:0] data_w3_f12_r;
  logic  [1:0] data_w3_f16_r;
  logic  [1:0] data_w3_f20_r;
  logic  [1:0] data_w3_f24_r;
  logic  [1:0] data_w3_f28_r;
  // Word: w4
  logic  [1:0] data_w4_f0_r;
  logic  [1:0] data_w4_f4_r;
  logic  [1:0] data_w4_f8_r;
  logic  [1:0] data_w4_f12_r;
  logic  [1:0] data_w4_f16_r;
  logic  [1:0] data_w4_f20_r;
  logic  [1:0] data_w4_f24_r;
  logic  [1:0] data_w4_f28_r;
  // Word: w5
  logic  [1:0] data_w5_f0_r;
  logic  [1:0] data_w5_f4_r;
  logic  [1:0] data_w5_f8_r;
  logic  [1:0] data_w5_f12_r;
  logic  [1:0] data_w5_f16_r;
  logic  [1:0] data_w5_f20_r;
  logic  [1:0] data_w5_f24_r;
  logic  [1:0] data_w5_f28_r;
  // Word: w6
  logic  [1:0] data_w6_f0_r;
  logic  [1:0] data_w6_f4_r;
  logic  [1:0] data_w6_f8_r;
  logic  [1:0] data_w6_f12_r;
  logic  [1:0] data_w6_f16_r;
  logic  [1:0] data_w6_f20_r;
  logic  [1:0] data_w6_f24_r;
  logic  [1:0] data_w6_f28_r;
  // Word: w7
  logic  [1:0] data_w7_f0_r;
  logic  [1:0] data_w7_f4_r;
  logic  [1:0] data_w7_f8_r;
  logic  [1:0] data_w7_f12_r;
  logic  [1:0] data_w7_f16_r;
  logic  [1:0] data_w7_f20_r;
  logic  [1:0] data_w7_f24_r;
  logic  [1:0] data_w7_f28_r;
  // Word: w8
  logic  [1:0] data_w8_f0_r;
  logic  [1:0] data_w8_f4_r;
  logic  [1:0] data_w8_f8_r;
  logic  [1:0] data_w8_f12_r;
  logic  [1:0] data_w8_f16_r;
  logic  [1:0] data_w8_f20_r;
  logic  [1:0] data_w8_f24_r;
  logic  [1:0] data_w8_f28_r;
  // Word: w9
  logic  [1:0] data_w9_f0_r;
  logic  [1:0] data_w9_f4_r;
  logic  [1:0] data_w9_f8_r;
  logic  [1:0] data_w9_f12_r;
  logic  [1:0] data_w9_f16_r;
  logic  [1:0] data_w9_f20_r;
  logic  [1:0] data_w9_f24_r;
  logic  [1:0] data_w9_f28_r;
  // Word: w10
  logic  [1:0] data_w10_f0_r;
  logic  [1:0] data_w10_f4_r;
  logic  [1:0] data_w10_f8_r;
  logic  [1:0] data_w10_f12_r;
  logic  [1:0] data_w10_f16_r;
  logic  [1:0] data_w10_f20_r;
  logic  [1:0] data_w10_f24_r;
  logic  [1:0] data_w10_f28_r;
  // Word: w11
  logic  [1:0] data_w11_f0_r;
  logic  [1:0] data_w11_f4_r;
  // bus word write enables
  logic        bus_w4_wren_s;
  logic        bus_w5_wren_s;
  logic        bus_w6_wren_s;
  logic        bus_w7_wren_s;
  logic        bus_w8_wren_s;
  logic        bus_w9_wren_s;
  logic        bus_w10_wren_s;
  logic        bus_w11_wren_s;
  // bus word read enables
  logic        bus_w1_rden_s;
  logic        bus_w2_rden_s;
  logic        bus_w3_rden_s;
  logic        bus_w4_rden_s;
  logic        bus_w7_rden_s;
  logic        bus_w8_rden_s;
  logic        bus_w9_rden_s;
  logic        bus_w10_rden_s;
  logic        bus_w11_rden_s;

  // ===================================
  //  Constant Declarations
  // ===================================
// Word: w0
  logic  [1:0] data_w0_f2_c  = 2'h0;
// Word: w1
  logic  [1:0] data_w1_f4_c  = 2'h0;


  always_comb begin: proc_bus_addr_dec
    // defaults
    mem_err_o = 1'b0;
    bus_w4_wren_s  = 1'b0;
    bus_w5_wren_s  = 1'b0;
    bus_w6_wren_s  = 1'b0;
    bus_w7_wren_s  = 1'b0;
    bus_w8_wren_s  = 1'b0;
    bus_w9_wren_s  = 1'b0;
    bus_w10_wren_s = 1'b0;
    bus_w11_wren_s = 1'b0;
    bus_w1_rden_s  = 1'b0;
    bus_w2_rden_s  = 1'b0;
    bus_w3_rden_s  = 1'b0;
    bus_w4_rden_s  = 1'b0;
    bus_w7_rden_s  = 1'b0;
    bus_w8_rden_s  = 1'b0;
    bus_w9_rden_s  = 1'b0;
    bus_w10_rden_s = 1'b0;
    bus_w11_rden_s = 1'b0;

    // write decode
    if ((mem_ena_i == 1'b1) && (mem_wena_i == 1'b1)) begin
      case (mem_addr_i)
        13'h0010: begin
          bus_w4_wren_s = 1'b1;
        end
        13'h0014: begin
          bus_w5_wren_s = 1'b1;
        end
        13'h0018: begin
          bus_w6_wren_s = 1'b1;
        end
        13'h001C: begin
          bus_w7_wren_s = 1'b1;
        end
        13'h0020: begin
          bus_w8_wren_s = 1'b1;
        end
        13'h0024: begin
          bus_w9_wren_s = 1'b1;
        end
        13'h0028: begin
          bus_w10_wren_s = 1'b1;
        end
        13'h002C: begin
          bus_w11_wren_s = 1'b1;
        end
        default: begin
          mem_err_o = 1'b1;
        end
      endcase
    end

    // read decode
    if ((mem_ena_i == 1'b1) && (mem_wena_i == 1'b0)) begin
      case (mem_addr_i)
        13'h0004: begin
          bus_w1_rden_s = 1'b1;
        end
        13'h0008: begin
          bus_w2_rden_s = 1'b1;
        end
        13'h000C: begin
          bus_w3_rden_s = 1'b1;
        end
        13'h0010: begin
          bus_w4_rden_s = 1'b1;
        end
        13'h001C: begin
          bus_w7_rden_s = 1'b1;
        end
        13'h0020: begin
          bus_w8_rden_s = 1'b1;
        end
        13'h0024: begin
          bus_w9_rden_s = 1'b1;
        end
        13'h0028: begin
          bus_w10_rden_s = 1'b1;
        end
        13'h002C: begin
          bus_w11_rden_s = 1'b1;
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
      // Word: w0
      data_w0_f6_r   <= 2'h0;
      data_w0_f10_r  <= 2'h0;
      data_w0_f14_r  <= 2'h0;
      data_w0_f18_r  <= 2'h0;
      data_w0_f22_r  <= 2'h0;
      data_w0_f26_r  <= 2'h0;
      data_w0_f30_r  <= 2'h0;
      // Word: w1
      data_w1_f2_r   <= 2'h0;
      data_w1_f8_r   <= 2'h0;
      data_w1_f12_r  <= 2'h0;
      data_w1_f16_r  <= 2'h0;
      data_w1_f20_r  <= 2'h0;
      data_w1_f24_r  <= 2'h0;
      data_w1_f28_r  <= 2'h0;
      // Word: w2
      data_w2_f0_r   <= 2'h0;
      data_w2_f4_r   <= 2'h0;
      data_w2_f8_r   <= 2'h0;
      data_w2_f12_r  <= 2'h0;
      data_w2_f16_r  <= 2'h0;
      data_w2_f20_r  <= 2'h0;
      data_w2_f24_r  <= 2'h0;
      data_w2_f28_r  <= 2'h0;
      // Word: w3
      data_w3_f0_r   <= 2'h0;
      data_w3_f4_r   <= 2'h0;
      data_w3_f8_r   <= 2'h0;
      data_w3_f12_r  <= 2'h0;
      data_w3_f16_r  <= 2'h0;
      data_w3_f20_r  <= 2'h0;
      data_w3_f24_r  <= 2'h0;
      data_w3_f28_r  <= 2'h0;
      // Word: w4
      data_w4_f0_r   <= 2'h0;
      data_w4_f4_r   <= 2'h0;
      data_w4_f8_r   <= 2'h0;
      data_w4_f12_r  <= 2'h0;
      data_w4_f16_r  <= 2'h0;
      data_w4_f20_r  <= 2'h0;
      data_w4_f24_r  <= 2'h0;
      data_w4_f28_r  <= 2'h0;
      // Word: w5
      data_w5_f0_r   <= 2'h0;
      data_w5_f4_r   <= 2'h0;
      data_w5_f8_r   <= 2'h0;
      data_w5_f12_r  <= 2'h0;
      data_w5_f16_r  <= 2'h0;
      data_w5_f20_r  <= 2'h0;
      data_w5_f24_r  <= 2'h0;
      data_w5_f28_r  <= 2'h0;
      // Word: w6
      data_w6_f0_r   <= 2'h0;
      data_w6_f4_r   <= 2'h0;
      data_w6_f8_r   <= 2'h0;
      data_w6_f12_r  <= 2'h0;
      data_w6_f16_r  <= 2'h0;
      data_w6_f20_r  <= 2'h0;
      data_w6_f24_r  <= 2'h0;
      data_w6_f28_r  <= 2'h0;
      // Word: w7
      data_w7_f0_r   <= 2'h0;
      data_w7_f4_r   <= 2'h0;
      data_w7_f8_r   <= 2'h0;
      data_w7_f12_r  <= 2'h0;
      data_w7_f16_r  <= 2'h0;
      data_w7_f20_r  <= 2'h0;
      data_w7_f24_r  <= 2'h0;
      data_w7_f28_r  <= 2'h0;
      // Word: w8
      data_w8_f0_r   <= 2'h0;
      data_w8_f4_r   <= 2'h0;
      data_w8_f8_r   <= 2'h0;
      data_w8_f12_r  <= 2'h0;
      data_w8_f16_r  <= 2'h0;
      data_w8_f20_r  <= 2'h0;
      data_w8_f24_r  <= 2'h0;
      data_w8_f28_r  <= 2'h0;
      // Word: w9
      data_w9_f0_r   <= 2'h0;
      data_w9_f4_r   <= 2'h0;
      data_w9_f8_r   <= 2'h0;
      data_w9_f12_r  <= 2'h0;
      data_w9_f16_r  <= 2'h0;
      data_w9_f20_r  <= 2'h0;
      data_w9_f24_r  <= 2'h0;
      data_w9_f28_r  <= 2'h0;
      // Word: w10
      data_w10_f0_r  <= 2'h0;
      data_w10_f4_r  <= 2'h0;
      data_w10_f8_r  <= 2'h0;
      data_w10_f12_r <= 2'h0;
      data_w10_f16_r <= 2'h0;
      data_w10_f20_r <= 2'h0;
      data_w10_f24_r <= 2'h0;
      data_w10_f28_r <= 2'h0;
      // Word: w11
      data_w11_f0_r  <= 2'h0;
      data_w11_f4_r  <= 2'h0;
    end else begin
      if (regf_w0_f6_rd_i == 1'b1) begin
        data_w0_f6_r <= 2'h0;
      end
      if (regf_w0_f10_rd_i == 1'b1) begin
        data_w0_f10_r <= 2'h3;
      end
      if (regf_w0_f14_wr_i == 1'b1) begin
        data_w0_f14_r <= regf_w0_f14_wval_i;
      end
      if (regf_w0_f18_wr_i == 1'b1) begin
        data_w0_f18_r <= data_w0_f18_r & ~regf_w0_f18_wval_i;
      end
      if (regf_w0_f22_wr_i == 1'b1) begin
        data_w0_f22_r <= data_w0_f22_r | regf_w0_f22_wval_i;
      end
      if (regf_w0_f26_wr_i == 1'b1) begin
        data_w0_f26_r <= regf_w0_f26_wval_i;
      end
      if (regf_w0_f30_wr_i == 1'b1) begin
        data_w0_f30_r <= data_w0_f30_r & ~regf_w0_f30_wval_i;
      end
      if (regf_w1_f2_wr_i == 1'b1) begin
        data_w1_f2_r <= data_w1_f2_r | regf_w1_f2_wval_i;
      end
      if (regf_w1_f8_rd_i == 1'b1) begin
        data_w1_f8_r <= 2'h0;
      end
      if (regf_w1_f12_rd_i == 1'b1) begin
        data_w1_f12_r <= 2'h3;
      end
      if (regf_w1_f16_wr_i == 1'b1) begin
        data_w1_f16_r <= regf_w1_f16_wval_i;
      end
      if (regf_w1_f20_wr_i == 1'b1) begin
        data_w1_f20_r <= data_w1_f20_r & ~regf_w1_f20_wval_i;
      end
      if (regf_w1_f24_wr_i == 1'b1) begin
        data_w1_f24_r <= data_w1_f24_r | regf_w1_f24_wval_i;
      end
      if (regf_w1_f28_wr_i == 1'b1) begin
        data_w1_f28_r <= regf_w1_f28_wval_i;
      end
      if (regf_w2_f0_wr_i == 1'b1) begin
        data_w2_f0_r <= data_w2_f0_r & ~regf_w2_f0_wval_i;
      end
      if (regf_w2_f4_wr_i == 1'b1) begin
        data_w2_f4_r <= data_w2_f4_r | regf_w2_f4_wval_i;
      end
      if (bus_w2_rden_s == 1'b1) begin
        data_w2_f8_r <= 2'h0;
      end
      if (bus_w2_rden_s == 1'b1) begin
        data_w2_f12_r <= 2'h0;
      end else if (regf_w2_f12_rd_i == 1'b1) begin
        data_w2_f12_r <= 2'h0;
      end
      if (bus_w2_rden_s == 1'b1) begin
        data_w2_f16_r <= 2'h0;
      end else if (regf_w2_f16_rd_i == 1'b1) begin
        data_w2_f16_r <= 2'h3;
      end
      if (bus_w2_rden_s == 1'b1) begin
        data_w2_f20_r <= 2'h0;
      end else if (regf_w2_f20_wr_i == 1'b1) begin
        data_w2_f20_r <= regf_w2_f20_wval_i;
      end
      if (bus_w2_rden_s == 1'b1) begin
        data_w2_f24_r <= 2'h0;
      end else if (regf_w2_f24_wr_i == 1'b1) begin
        data_w2_f24_r <= data_w2_f24_r & ~regf_w2_f24_wval_i;
      end
      if (bus_w2_rden_s == 1'b1) begin
        data_w2_f28_r <= 2'h0;
      end else if (regf_w2_f28_wr_i == 1'b1) begin
        data_w2_f28_r <= data_w2_f28_r | regf_w2_f28_wval_i;
      end
      if (bus_w3_rden_s == 1'b1) begin
        data_w3_f0_r <= 2'h0;
      end else if (regf_w3_f0_wr_i == 1'b1) begin
        data_w3_f0_r <= regf_w3_f0_wval_i;
      end
      if (bus_w3_rden_s == 1'b1) begin
        data_w3_f4_r <= 2'h0;
      end else if (regf_w3_f4_wr_i == 1'b1) begin
        data_w3_f4_r <= data_w3_f4_r & ~regf_w3_f4_wval_i;
      end
      if (bus_w3_rden_s == 1'b1) begin
        data_w3_f8_r <= 2'h0;
      end else if (regf_w3_f8_wr_i == 1'b1) begin
        data_w3_f8_r <= data_w3_f8_r | regf_w3_f8_wval_i;
      end
      if (bus_w3_rden_s == 1'b1) begin
        data_w3_f12_r <= 2'h3;
      end
      if (bus_w3_rden_s == 1'b1) begin
        data_w3_f16_r <= 2'h3;
      end else if (regf_w3_f16_rd_i == 1'b1) begin
        data_w3_f16_r <= 2'h0;
      end
      if (bus_w3_rden_s == 1'b1) begin
        data_w3_f20_r <= 2'h3;
      end else if (regf_w3_f20_rd_i == 1'b1) begin
        data_w3_f20_r <= 2'h3;
      end
      if (bus_w3_rden_s == 1'b1) begin
        data_w3_f24_r <= 2'h3;
      end else if (regf_w3_f24_wr_i == 1'b1) begin
        data_w3_f24_r <= regf_w3_f24_wval_i;
      end
      if (bus_w3_rden_s == 1'b1) begin
        data_w3_f28_r <= 2'h3;
      end else if (regf_w3_f28_wr_i == 1'b1) begin
        data_w3_f28_r <= data_w3_f28_r & ~regf_w3_f28_wval_i;
      end
      if (bus_w4_rden_s == 1'b1) begin
        data_w4_f0_r <= 2'h3;
      end else if (regf_w4_f0_wr_i == 1'b1) begin
        data_w4_f0_r <= data_w4_f0_r | regf_w4_f0_wval_i;
      end
      if (bus_w4_rden_s == 1'b1) begin
        data_w4_f4_r <= 2'h3;
      end else if (regf_w4_f4_wr_i == 1'b1) begin
        data_w4_f4_r <= regf_w4_f4_wval_i;
      end
      if (bus_w4_rden_s == 1'b1) begin
        data_w4_f8_r <= 2'h3;
      end else if (regf_w4_f8_wr_i == 1'b1) begin
        data_w4_f8_r <= data_w4_f8_r & ~regf_w4_f8_wval_i;
      end
      if (bus_w4_rden_s == 1'b1) begin
        data_w4_f12_r <= 2'h3;
      end else if (regf_w4_f12_wr_i == 1'b1) begin
        data_w4_f12_r <= data_w4_f12_r | regf_w4_f12_wval_i;
      end
      if (bus_w4_wren_s == 1'b1) begin
        data_w4_f16_r <= mem_wdata_i[17:16];
      end
      if (bus_w4_wren_s == 1'b1) begin
        data_w4_f20_r <= mem_wdata_i[21:20];
      end else if (regf_w4_f20_rd_i == 1'b1) begin
        data_w4_f20_r <= 2'h0;
      end
      if (bus_w4_wren_s == 1'b1) begin
        data_w4_f24_r <= mem_wdata_i[25:24];
      end else if (regf_w4_f24_rd_i == 1'b1) begin
        data_w4_f24_r <= 2'h3;
      end
      if (bus_w4_wren_s == 1'b1) begin
        data_w4_f28_r <= mem_wdata_i[29:28];
      end else if (regf_w4_f28_wr_i == 1'b1) begin
        data_w4_f28_r <= regf_w4_f28_wval_i;
      end
      if (bus_w5_wren_s == 1'b1) begin
        data_w5_f0_r <= mem_wdata_i[1:0];
      end else if (regf_w5_f0_wr_i == 1'b1) begin
        data_w5_f0_r <= data_w5_f0_r & ~regf_w5_f0_wval_i;
      end
      if (bus_w5_wren_s == 1'b1) begin
        data_w5_f4_r <= mem_wdata_i[5:4];
      end else if (regf_w5_f4_wr_i == 1'b1) begin
        data_w5_f4_r <= data_w5_f4_r | regf_w5_f4_wval_i;
      end
      if (bus_w5_wren_s == 1'b1) begin
        data_w5_f8_r <= mem_wdata_i[9:8];
      end else if (regf_w5_f8_wr_i == 1'b1) begin
        data_w5_f8_r <= regf_w5_f8_wval_i;
      end
      if (bus_w5_wren_s == 1'b1) begin
        data_w5_f12_r <= mem_wdata_i[13:12];
      end else if (regf_w5_f12_wr_i == 1'b1) begin
        data_w5_f12_r <= data_w5_f12_r & ~regf_w5_f12_wval_i;
      end
      if (bus_w5_wren_s == 1'b1) begin
        data_w5_f16_r <= mem_wdata_i[17:16];
      end else if (regf_w5_f16_wr_i == 1'b1) begin
        data_w5_f16_r <= data_w5_f16_r | regf_w5_f16_wval_i;
      end
      if (bus_w5_wren_s == 1'b1) begin
        data_w5_f20_r <= data_w5_f20_r & ~mem_wdata_i[21:20];
      end
      if (bus_w5_wren_s == 1'b1) begin
        data_w5_f24_r <= data_w5_f24_r & ~mem_wdata_i[25:24];
      end else if (regf_w5_f24_rd_i == 1'b1) begin
        data_w5_f24_r <= 2'h0;
      end
      if (bus_w5_wren_s == 1'b1) begin
        data_w5_f28_r <= data_w5_f28_r & ~mem_wdata_i[29:28];
      end else if (regf_w5_f28_rd_i == 1'b1) begin
        data_w5_f28_r <= 2'h3;
      end
      if (bus_w6_wren_s == 1'b1) begin
        data_w6_f0_r <= data_w6_f0_r & ~mem_wdata_i[1:0];
      end else if (regf_w6_f0_wr_i == 1'b1) begin
        data_w6_f0_r <= regf_w6_f0_wval_i;
      end
      if (bus_w6_wren_s == 1'b1) begin
        data_w6_f4_r <= data_w6_f4_r & ~mem_wdata_i[5:4];
      end else if (regf_w6_f4_wr_i == 1'b1) begin
        data_w6_f4_r <= data_w6_f4_r & ~regf_w6_f4_wval_i;
      end
      if (bus_w6_wren_s == 1'b1) begin
        data_w6_f8_r <= data_w6_f8_r & ~mem_wdata_i[9:8];
      end else if (regf_w6_f8_wr_i == 1'b1) begin
        data_w6_f8_r <= data_w6_f8_r | regf_w6_f8_wval_i;
      end
      if (bus_w6_wren_s == 1'b1) begin
        data_w6_f12_r <= data_w6_f12_r & ~mem_wdata_i[13:12];
      end else if (regf_w6_f12_wr_i == 1'b1) begin
        data_w6_f12_r <= regf_w6_f12_wval_i;
      end
      if (bus_w6_wren_s == 1'b1) begin
        data_w6_f16_r <= data_w6_f16_r & ~mem_wdata_i[17:16];
      end else if (regf_w6_f16_wr_i == 1'b1) begin
        data_w6_f16_r <= data_w6_f16_r & ~regf_w6_f16_wval_i;
      end
      if (bus_w6_wren_s == 1'b1) begin
        data_w6_f20_r <= data_w6_f20_r & ~mem_wdata_i[21:20];
      end else if (regf_w6_f20_wr_i == 1'b1) begin
        data_w6_f20_r <= data_w6_f20_r | regf_w6_f20_wval_i;
      end
      if (bus_w6_wren_s == 1'b1) begin
        data_w6_f24_r <= data_w6_f24_r | mem_wdata_i[25:24];
      end
      if (bus_w6_wren_s == 1'b1) begin
        data_w6_f28_r <= data_w6_f28_r | mem_wdata_i[29:28];
      end else if (regf_w6_f28_rd_i == 1'b1) begin
        data_w6_f28_r <= 2'h0;
      end
      if (bus_w7_wren_s == 1'b1) begin
        data_w7_f0_r <= data_w7_f0_r | mem_wdata_i[1:0];
      end else if (regf_w7_f0_rd_i == 1'b1) begin
        data_w7_f0_r <= 2'h3;
      end
      if (bus_w7_wren_s == 1'b1) begin
        data_w7_f4_r <= data_w7_f4_r | mem_wdata_i[5:4];
      end else if (regf_w7_f4_wr_i == 1'b1) begin
        data_w7_f4_r <= regf_w7_f4_wval_i;
      end
      if (bus_w7_wren_s == 1'b1) begin
        data_w7_f8_r <= data_w7_f8_r | mem_wdata_i[9:8];
      end else if (regf_w7_f8_wr_i == 1'b1) begin
        data_w7_f8_r <= data_w7_f8_r & ~regf_w7_f8_wval_i;
      end
      if (bus_w7_wren_s == 1'b1) begin
        data_w7_f12_r <= data_w7_f12_r | mem_wdata_i[13:12];
      end else if (regf_w7_f12_wr_i == 1'b1) begin
        data_w7_f12_r <= data_w7_f12_r | regf_w7_f12_wval_i;
      end
      if (bus_w7_wren_s == 1'b1) begin
        data_w7_f16_r <= data_w7_f16_r | mem_wdata_i[17:16];
      end else if (regf_w7_f16_wr_i == 1'b1) begin
        data_w7_f16_r <= regf_w7_f16_wval_i;
      end
      if (bus_w7_wren_s == 1'b1) begin
        data_w7_f20_r <= data_w7_f20_r | mem_wdata_i[21:20];
      end else if (regf_w7_f20_wr_i == 1'b1) begin
        data_w7_f20_r <= data_w7_f20_r & ~regf_w7_f20_wval_i;
      end
      if (bus_w7_wren_s == 1'b1) begin
        data_w7_f24_r <= data_w7_f24_r | mem_wdata_i[25:24];
      end else if (regf_w7_f24_wr_i == 1'b1) begin
        data_w7_f24_r <= data_w7_f24_r | regf_w7_f24_wval_i;
      end
      if (bus_w7_wren_s == 1'b1) begin
        data_w7_f28_r <= mem_wdata_i[29:28];
      end
      if (bus_w8_wren_s == 1'b1) begin
        data_w8_f0_r <= mem_wdata_i[1:0];
      end else if (regf_w8_f0_rd_i == 1'b1) begin
        data_w8_f0_r <= 2'h0;
      end
      if (bus_w8_wren_s == 1'b1) begin
        data_w8_f4_r <= mem_wdata_i[5:4];
      end else if (regf_w8_f4_rd_i == 1'b1) begin
        data_w8_f4_r <= 2'h3;
      end
      if (bus_w8_wren_s == 1'b1) begin
        data_w8_f8_r <= mem_wdata_i[9:8];
      end else if (regf_w8_f8_wr_i == 1'b1) begin
        data_w8_f8_r <= regf_w8_f8_wval_i;
      end
      if (bus_w8_wren_s == 1'b1) begin
        data_w8_f12_r <= mem_wdata_i[13:12];
      end else if (regf_w8_f12_wr_i == 1'b1) begin
        data_w8_f12_r <= data_w8_f12_r & ~regf_w8_f12_wval_i;
      end
      if (bus_w8_wren_s == 1'b1) begin
        data_w8_f16_r <= mem_wdata_i[17:16];
      end else if (regf_w8_f16_wr_i == 1'b1) begin
        data_w8_f16_r <= data_w8_f16_r | regf_w8_f16_wval_i;
      end
      if (bus_w8_wren_s == 1'b1) begin
        data_w8_f20_r <= mem_wdata_i[21:20];
      end else if (regf_w8_f20_wr_i == 1'b1) begin
        data_w8_f20_r <= regf_w8_f20_wval_i;
      end
      if (bus_w8_wren_s == 1'b1) begin
        data_w8_f24_r <= mem_wdata_i[25:24];
      end else if (regf_w8_f24_wr_i == 1'b1) begin
        data_w8_f24_r <= data_w8_f24_r & ~regf_w8_f24_wval_i;
      end
      if (bus_w8_wren_s == 1'b1) begin
        data_w8_f28_r <= mem_wdata_i[29:28];
      end else if (regf_w8_f28_wr_i == 1'b1) begin
        data_w8_f28_r <= data_w8_f28_r | regf_w8_f28_wval_i;
      end
      if (bus_w9_wren_s == 1'b1) begin
        data_w9_f0_r <= data_w9_f0_r & ~mem_wdata_i[1:0];
      end
      if (bus_w9_wren_s == 1'b1) begin
        data_w9_f4_r <= data_w9_f4_r & ~mem_wdata_i[5:4];
      end else if (regf_w9_f4_rd_i == 1'b1) begin
        data_w9_f4_r <= 2'h0;
      end
      if (bus_w9_wren_s == 1'b1) begin
        data_w9_f8_r <= data_w9_f8_r & ~mem_wdata_i[9:8];
      end else if (regf_w9_f8_rd_i == 1'b1) begin
        data_w9_f8_r <= 2'h3;
      end
      if (bus_w9_wren_s == 1'b1) begin
        data_w9_f12_r <= data_w9_f12_r & ~mem_wdata_i[13:12];
      end else if (regf_w9_f12_wr_i == 1'b1) begin
        data_w9_f12_r <= regf_w9_f12_wval_i;
      end
      if (bus_w9_wren_s == 1'b1) begin
        data_w9_f16_r <= data_w9_f16_r & ~mem_wdata_i[17:16];
      end else if (regf_w9_f16_wr_i == 1'b1) begin
        data_w9_f16_r <= data_w9_f16_r & ~regf_w9_f16_wval_i;
      end
      if (bus_w9_wren_s == 1'b1) begin
        data_w9_f20_r <= data_w9_f20_r & ~mem_wdata_i[21:20];
      end else if (regf_w9_f20_wr_i == 1'b1) begin
        data_w9_f20_r <= data_w9_f20_r | regf_w9_f20_wval_i;
      end
      if (bus_w9_wren_s == 1'b1) begin
        data_w9_f24_r <= data_w9_f24_r & ~mem_wdata_i[25:24];
      end else if (regf_w9_f24_wr_i == 1'b1) begin
        data_w9_f24_r <= regf_w9_f24_wval_i;
      end
      if (bus_w9_wren_s == 1'b1) begin
        data_w9_f28_r <= data_w9_f28_r & ~mem_wdata_i[29:28];
      end else if (regf_w9_f28_wr_i == 1'b1) begin
        data_w9_f28_r <= data_w9_f28_r & ~regf_w9_f28_wval_i;
      end
      if (bus_w10_wren_s == 1'b1) begin
        data_w10_f0_r <= data_w10_f0_r & ~mem_wdata_i[1:0];
      end else if (regf_w10_f0_wr_i == 1'b1) begin
        data_w10_f0_r <= data_w10_f0_r | regf_w10_f0_wval_i;
      end
      if (bus_w10_wren_s == 1'b1) begin
        data_w10_f4_r <= data_w10_f4_r | mem_wdata_i[5:4];
      end
      if (bus_w10_wren_s == 1'b1) begin
        data_w10_f8_r <= data_w10_f8_r | mem_wdata_i[9:8];
      end else if (regf_w10_f8_rd_i == 1'b1) begin
        data_w10_f8_r <= 2'h0;
      end
      if (bus_w10_wren_s == 1'b1) begin
        data_w10_f12_r <= data_w10_f12_r | mem_wdata_i[13:12];
      end else if (regf_w10_f12_rd_i == 1'b1) begin
        data_w10_f12_r <= 2'h3;
      end
      if (bus_w10_wren_s == 1'b1) begin
        data_w10_f16_r <= data_w10_f16_r | mem_wdata_i[17:16];
      end else if (regf_w10_f16_wr_i == 1'b1) begin
        data_w10_f16_r <= regf_w10_f16_wval_i;
      end
      if (bus_w10_wren_s == 1'b1) begin
        data_w10_f20_r <= data_w10_f20_r | mem_wdata_i[21:20];
      end else if (regf_w10_f20_wr_i == 1'b1) begin
        data_w10_f20_r <= data_w10_f20_r & ~regf_w10_f20_wval_i;
      end
      if (bus_w10_wren_s == 1'b1) begin
        data_w10_f24_r <= data_w10_f24_r | mem_wdata_i[25:24];
      end else if (regf_w10_f24_wr_i == 1'b1) begin
        data_w10_f24_r <= data_w10_f24_r | regf_w10_f24_wval_i;
      end
      if (bus_w10_wren_s == 1'b1) begin
        data_w10_f28_r <= data_w10_f28_r | mem_wdata_i[29:28];
      end else if (regf_w10_f28_wr_i == 1'b1) begin
        data_w10_f28_r <= regf_w10_f28_wval_i;
      end
      if (bus_w11_wren_s == 1'b1) begin
        data_w11_f0_r <= data_w11_f0_r | mem_wdata_i[1:0];
      end else if (regf_w11_f0_wr_i == 1'b1) begin
        data_w11_f0_r <= data_w11_f0_r & ~regf_w11_f0_wval_i;
      end
      if (bus_w11_wren_s == 1'b1) begin
        data_w11_f4_r <= data_w11_f4_r | mem_wdata_i[5:4];
      end else if (regf_w11_f4_wr_i == 1'b1) begin
        data_w11_f4_r <= data_w11_f4_r | regf_w11_f4_wval_i;
      end
    end
  end

  // ===================================
  //  Bus Read-Mux
  // ===================================
  always_comb begin: proc_bus_rd
    if ((mem_ena_i == 1'b1) && (mem_wena_i == 1'b0)) begin
      case (mem_addr_i)
        13'h0004: begin
          mem_rdata_o = {regf_w1_f30_rbus_i, data_w1_f28_r, regf_w1_f26_rbus_i, data_w1_f24_r, regf_w1_f22_rbus_i, data_w1_f20_r, regf_w1_f18_rbus_i, data_w1_f16_r, regf_w1_f14_rbus_i, data_w1_f12_r, regf_w1_f10_rbus_i, data_w1_f8_r, regf_w1_f6_rbus_i, data_w1_f4_c, 4'h0};
        end
        13'h0008: begin
          mem_rdata_o = {regf_w2_f30_rbus_i, data_w2_f28_r, regf_w2_f26_rbus_i, data_w2_f24_r, regf_w2_f22_rbus_i, data_w2_f20_r, regf_w2_f18_rbus_i, data_w2_f16_r, regf_w2_f14_rbus_i, data_w2_f12_r, regf_w2_f10_rbus_i, data_w2_f8_r, regf_w2_f6_rbus_i, data_w2_f4_r, regf_w2_f2_rbus_i, data_w2_f0_r};
        end
        13'h000C: begin
          mem_rdata_o = {regf_w3_f30_rbus_i, data_w3_f28_r, regf_w3_f26_rbus_i, data_w3_f24_r, regf_w3_f22_rbus_i, data_w3_f20_r, regf_w3_f18_rbus_i, data_w3_f16_r, regf_w3_f14_rbus_i, data_w3_f12_r, regf_w3_f10_rbus_i, data_w3_f8_r, regf_w3_f6_rbus_i, data_w3_f4_r, regf_w3_f2_rbus_i, data_w3_f0_r};
        end
        13'h0010: begin
          mem_rdata_o = {18'h00000, data_w4_f12_r, regf_w4_f10_rbus_i, data_w4_f8_r, regf_w4_f6_rbus_i, data_w4_f4_r, regf_w4_f2_rbus_i, data_w4_f0_r};
        end
        13'h001C: begin
          mem_rdata_o = {regf_w7_f30_rbus_i, data_w7_f28_r, regf_w7_f26_rbus_i, 26'h0000000};
        end
        13'h0020: begin
          mem_rdata_o = {regf_w8_f30_rbus_i, data_w8_f28_r, regf_w8_f26_rbus_i, data_w8_f24_r, regf_w8_f22_rbus_i, data_w8_f20_r, regf_w8_f18_rbus_i, data_w8_f16_r, regf_w8_f14_rbus_i, data_w8_f12_r, regf_w8_f10_rbus_i, data_w8_f8_r, regf_w8_f6_rbus_i, data_w8_f4_r, regf_w8_f2_rbus_i, data_w8_f0_r};
        end
        13'h0024: begin
          mem_rdata_o = {regf_w9_f30_rbus_i, data_w9_f28_r, regf_w9_f26_rbus_i, data_w9_f24_r, regf_w9_f22_rbus_i, data_w9_f20_r, regf_w9_f18_rbus_i, data_w9_f16_r, regf_w9_f14_rbus_i, data_w9_f12_r, regf_w9_f10_rbus_i, data_w9_f8_r, regf_w9_f6_rbus_i, data_w9_f4_r, regf_w9_f2_rbus_i, data_w9_f0_r};
        end
        13'h0028: begin
          mem_rdata_o = {regf_w10_f30_rbus_i, data_w10_f28_r, regf_w10_f26_rbus_i, data_w10_f24_r, regf_w10_f22_rbus_i, data_w10_f20_r, regf_w10_f18_rbus_i, data_w10_f16_r, regf_w10_f14_rbus_i, data_w10_f12_r, regf_w10_f10_rbus_i, data_w10_f8_r, regf_w10_f6_rbus_i, data_w10_f4_r, regf_w10_f2_rbus_i, data_w10_f0_r};
        end
        13'h002C: begin
          mem_rdata_o = {26'h0000000, data_w11_f4_r, regf_w11_f2_rbus_i, data_w11_f0_r};
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
  assign regf_w0_f2_rval_o   = data_w0_f2_c;
  assign regf_w0_f6_rval_o   = data_w0_f6_r;
  assign regf_w0_f10_rval_o  = data_w0_f10_r;
  assign regf_w0_f26_rval_o  = data_w0_f26_r;
  assign regf_w0_f30_rval_o  = data_w0_f30_r;
  assign regf_w1_f2_rval_o   = data_w1_f2_r;
  assign regf_w1_f4_rval_o   = data_w1_f4_c;
  assign regf_w1_f8_rval_o   = data_w1_f8_r;
  assign regf_w1_f12_rval_o  = data_w1_f12_r;
  assign regf_w1_f28_rval_o  = data_w1_f28_r;
  assign regf_w2_f0_rval_o   = data_w2_f0_r;
  assign regf_w2_f4_rval_o   = data_w2_f4_r;
  assign regf_w2_f8_rval_o   = data_w2_f8_r;
  assign regf_w2_f12_rval_o  = data_w2_f12_r;
  assign regf_w2_f16_rval_o  = data_w2_f16_r;
  assign regf_w3_f0_rval_o   = data_w3_f0_r;
  assign regf_w3_f4_rval_o   = data_w3_f4_r;
  assign regf_w3_f8_rval_o   = data_w3_f8_r;
  assign regf_w3_f12_rval_o  = data_w3_f12_r;
  assign regf_w3_f16_rval_o  = data_w3_f16_r;
  assign regf_w3_f20_rval_o  = data_w3_f20_r;
  assign regf_w4_f4_rval_o   = data_w4_f4_r;
  assign regf_w4_f8_rval_o   = data_w4_f8_r;
  assign regf_w4_f12_rval_o  = data_w4_f12_r;
  assign regf_w4_f14_wbus_o  = mem_wdata_i[15:14];
  assign regf_w4_f14_wr_o    = bus_w4_wren_s;
  assign regf_w4_f16_rval_o  = data_w4_f16_r;
  assign regf_w4_f18_wbus_o  = mem_wdata_i[19:18];
  assign regf_w4_f18_wr_o    = bus_w4_wren_s;
  assign regf_w4_f20_rval_o  = data_w4_f20_r;
  assign regf_w4_f22_wbus_o  = mem_wdata_i[23:22];
  assign regf_w4_f22_wr_o    = bus_w4_wren_s;
  assign regf_w4_f24_rval_o  = data_w4_f24_r;
  assign regf_w5_f6_wbus_o   = mem_wdata_i[7:6];
  assign regf_w5_f6_wr_o     = bus_w5_wren_s;
  assign regf_w5_f8_rval_o   = data_w5_f8_r;
  assign regf_w5_f10_wbus_o  = mem_wdata_i[11:10];
  assign regf_w5_f10_wr_o    = bus_w5_wren_s;
  assign regf_w5_f12_rval_o  = data_w5_f12_r;
  assign regf_w5_f14_wbus_o  = mem_wdata_i[15:14];
  assign regf_w5_f14_wr_o    = bus_w5_wren_s;
  assign regf_w5_f16_rval_o  = data_w5_f16_r;
  assign regf_w5_f18_wbus_o  = regf_w5_f18_rbus_i & ~mem_wdata_i[19:18];
  assign regf_w5_f18_wr_o    = bus_w5_wren_s;
  assign regf_w5_f20_rval_o  = data_w5_f20_r;
  assign regf_w5_f22_wbus_o  = regf_w5_f22_rbus_i & ~mem_wdata_i[23:22];
  assign regf_w5_f22_wr_o    = bus_w5_wren_s;
  assign regf_w5_f24_rval_o  = data_w5_f24_r;
  assign regf_w5_f26_wbus_o  = regf_w5_f26_rbus_i & ~mem_wdata_i[27:26];
  assign regf_w5_f26_wr_o    = bus_w5_wren_s;
  assign regf_w5_f28_rval_o  = data_w5_f28_r;
  assign regf_w6_f10_wbus_o  = regf_w6_f10_rbus_i & ~mem_wdata_i[11:10];
  assign regf_w6_f10_wr_o    = bus_w6_wren_s;
  assign regf_w6_f12_rval_o  = data_w6_f12_r;
  assign regf_w6_f14_wbus_o  = regf_w6_f14_rbus_i & ~mem_wdata_i[15:14];
  assign regf_w6_f14_wr_o    = bus_w6_wren_s;
  assign regf_w6_f16_rval_o  = data_w6_f16_r;
  assign regf_w6_f18_wbus_o  = regf_w6_f18_rbus_i & ~mem_wdata_i[19:18];
  assign regf_w6_f18_wr_o    = bus_w6_wren_s;
  assign regf_w6_f20_rval_o  = data_w6_f20_r;
  assign regf_w6_f22_wbus_o  = regf_w6_f22_rbus_i | mem_wdata_i[23:22];
  assign regf_w6_f22_wr_o    = bus_w6_wren_s;
  assign regf_w6_f24_rval_o  = data_w6_f24_r;
  assign regf_w6_f26_wbus_o  = regf_w6_f26_rbus_i | mem_wdata_i[27:26];
  assign regf_w6_f26_wr_o    = bus_w6_wren_s;
  assign regf_w6_f28_rval_o  = data_w6_f28_r;
  assign regf_w6_f30_wbus_o  = regf_w6_f30_rbus_i | mem_wdata_i[31:30];
  assign regf_w6_f30_wr_o    = bus_w6_wren_s;
  assign regf_w7_f0_rval_o   = data_w7_f0_r;
  assign regf_w7_f14_wbus_o  = regf_w7_f14_rbus_i | mem_wdata_i[15:14];
  assign regf_w7_f14_wr_o    = bus_w7_wren_s;
  assign regf_w7_f16_rval_o  = data_w7_f16_r;
  assign regf_w7_f18_wbus_o  = regf_w7_f18_rbus_i | mem_wdata_i[19:18];
  assign regf_w7_f18_wr_o    = bus_w7_wren_s;
  assign regf_w7_f20_rval_o  = data_w7_f20_r;
  assign regf_w7_f22_wbus_o  = regf_w7_f22_rbus_i | mem_wdata_i[23:22];
  assign regf_w7_f22_wr_o    = bus_w7_wren_s;
  assign regf_w7_f24_rval_o  = data_w7_f24_r;
  assign regf_w7_f26_wbus_o  = mem_wdata_i[27:26];
  assign regf_w7_f26_wr_o    = bus_w7_wren_s;
  assign regf_w7_f28_rval_o  = data_w7_f28_r;
  assign regf_w7_f30_wbus_o  = mem_wdata_i[31:30];
  assign regf_w7_f30_wr_o    = bus_w7_wren_s;
  assign regf_w8_f0_rval_o   = data_w8_f0_r;
  assign regf_w8_f2_wbus_o   = mem_wdata_i[3:2];
  assign regf_w8_f2_wr_o     = bus_w8_wren_s;
  assign regf_w8_f4_rval_o   = data_w8_f4_r;
  assign regf_w8_f18_wbus_o  = mem_wdata_i[19:18];
  assign regf_w8_f18_wr_o    = bus_w8_wren_s;
  assign regf_w8_f20_rval_o  = data_w8_f20_r;
  assign regf_w8_f22_wbus_o  = mem_wdata_i[23:22];
  assign regf_w8_f22_wr_o    = bus_w8_wren_s;
  assign regf_w8_f24_rval_o  = data_w8_f24_r;
  assign regf_w8_f26_wbus_o  = mem_wdata_i[27:26];
  assign regf_w8_f26_wr_o    = bus_w8_wren_s;
  assign regf_w8_f28_rval_o  = data_w8_f28_r;
  assign regf_w8_f30_wbus_o  = regf_w8_f30_rbus_i & ~mem_wdata_i[31:30];
  assign regf_w8_f30_wr_o    = bus_w8_wren_s;
  assign regf_w9_f0_rval_o   = data_w9_f0_r;
  assign regf_w9_f2_wbus_o   = regf_w9_f2_rbus_i & ~mem_wdata_i[3:2];
  assign regf_w9_f2_wr_o     = bus_w9_wren_s;
  assign regf_w9_f4_rval_o   = data_w9_f4_r;
  assign regf_w9_f6_wbus_o   = regf_w9_f6_rbus_i & ~mem_wdata_i[7:6];
  assign regf_w9_f6_wr_o     = bus_w9_wren_s;
  assign regf_w9_f8_rval_o   = data_w9_f8_r;
  assign regf_w9_f22_wbus_o  = regf_w9_f22_rbus_i & ~mem_wdata_i[23:22];
  assign regf_w9_f22_wr_o    = bus_w9_wren_s;
  assign regf_w9_f24_rval_o  = data_w9_f24_r;
  assign regf_w9_f26_wbus_o  = regf_w9_f26_rbus_i & ~mem_wdata_i[27:26];
  assign regf_w9_f26_wr_o    = bus_w9_wren_s;
  assign regf_w9_f28_rval_o  = data_w9_f28_r;
  assign regf_w9_f30_wbus_o  = regf_w9_f30_rbus_i & ~mem_wdata_i[31:30];
  assign regf_w9_f30_wr_o    = bus_w9_wren_s;
  assign regf_w10_f0_rval_o  = data_w10_f0_r;
  assign regf_w10_f2_wbus_o  = regf_w10_f2_rbus_i | mem_wdata_i[3:2];
  assign regf_w10_f2_wr_o    = bus_w10_wren_s;
  assign regf_w10_f4_rval_o  = data_w10_f4_r;
  assign regf_w10_f6_wbus_o  = regf_w10_f6_rbus_i | mem_wdata_i[7:6];
  assign regf_w10_f6_wr_o    = bus_w10_wren_s;
  assign regf_w10_f8_rval_o  = data_w10_f8_r;
  assign regf_w10_f10_wbus_o = regf_w10_f10_rbus_i | mem_wdata_i[11:10];
  assign regf_w10_f10_wr_o   = bus_w10_wren_s;
  assign regf_w10_f12_rval_o = data_w10_f12_r;
  assign regf_w10_f26_wbus_o = regf_w10_f26_rbus_i | mem_wdata_i[27:26];
  assign regf_w10_f26_wr_o   = bus_w10_wren_s;
  assign regf_w10_f28_rval_o = data_w10_f28_r;
  assign regf_w10_f30_wbus_o = regf_w10_f30_rbus_i | mem_wdata_i[31:30];
  assign regf_w10_f30_wr_o   = bus_w10_wren_s;
  assign regf_w11_f0_rval_o  = data_w11_f0_r;
  assign regf_w11_f2_wbus_o  = regf_w11_f2_rbus_i | mem_wdata_i[3:2];
  assign regf_w11_f2_wr_o    = bus_w11_wren_s;
  assign regf_w11_f4_rval_o  = data_w11_f4_r;

endmodule // full_regf
