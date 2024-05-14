// =============================================================================
//
// Module:     tests.full_regf
// Data Model: tests.test_svmako.RegfMod
//
//  Overview
//
//  Offset    Word    Field    Bits    Bus/Core    Const    Impl
//  --------  ------  -------  ------  ----------  -------  ------
//  +0        w0
//                    .f0      1:0     -/RO        True     core
//                    .f2      3:2     -/RO        True     regf
//                    .f4      5:4     -/RC        False    core
//                    .f6      7:6     -/RC        False    regf
//                    .f8      9:8     -/RS        False    core
//                    .f10     11:10   -/RS        False    regf
//                    .f12     13:12   -/WO        False    core
//                    .f14     15:14   -/WO        False    regf
//                    .f16     17:16   -/W1C       False    core
//                    .f18     19:18   -/W1C       False    regf
//                    .f20     21:20   -/W1S       False    core
//                    .f22     23:22   -/W1S       False    regf
//                    .f24     25:24   -/RW        False    core
//                    .f26     27:26   -/RW        False    regf
//                    .f28     29:28   -/RW1C      False    core
//                    .f30     31:30   -/RW1C      False    regf
//  +1        w1
//                    .f0      1:0     -/RW1S      False    core
//                    .f2      3:2     -/RW1S      False    regf
//                    .f4      5:4     RO/RO       True     core
//                    .f6      7:6     RO/RO       True     regf
//                    .f8      9:8     RO/RC       False    core
//                    .f10     11:10   RO/RC       False    regf
//                    .f12     13:12   RO/RS       False    core
//                    .f14     15:14   RO/RS       False    regf
//                    .f16     17:16   RO/WO       False    core
//                    .f18     19:18   RO/WO       False    regf
//                    .f20     21:20   RO/W1C      False    core
//                    .f22     23:22   RO/W1C      False    regf
//                    .f24     25:24   RO/W1S      False    core
//                    .f26     27:26   RO/W1S      False    regf
//                    .f28     29:28   RO/RW       False    core
//                    .f30     31:30   RO/RW       False    regf
//  +2        w2
//                    .f0      1:0     RO/RW1C     False    core
//                    .f2      3:2     RO/RW1C     False    regf
//                    .f4      5:4     RO/RW1S     False    core
//                    .f6      7:6     RO/RW1S     False    regf
//                    .f8      9:8     RC/RO       False    core
//                    .f10     11:10   RC/RO       False    regf
//                    .f12     13:12   RC/RC       False    core
//                    .f14     15:14   RC/RC       False    regf
//                    .f16     17:16   RC/RS       False    core
//                    .f18     19:18   RC/RS       False    regf
//                    .f20     21:20   RC/WO       False    core
//                    .f22     23:22   RC/WO       False    regf
//                    .f24     25:24   RC/W1C      False    core
//                    .f26     27:26   RC/W1C      False    regf
//                    .f28     29:28   RC/W1S      False    core
//                    .f30     31:30   RC/W1S      False    regf
//  +3        w3
//                    .f0      1:0     RC/RW       False    core
//                    .f2      3:2     RC/RW       False    regf
//                    .f4      5:4     RC/RW1C     False    core
//                    .f6      7:6     RC/RW1C     False    regf
//                    .f8      9:8     RC/RW1S     False    core
//                    .f10     11:10   RC/RW1S     False    regf
//                    .f12     13:12   RS/RO       False    core
//                    .f14     15:14   RS/RO       False    regf
//                    .f16     17:16   RS/RC       False    core
//                    .f18     19:18   RS/RC       False    regf
//                    .f20     21:20   RS/RS       False    core
//                    .f22     23:22   RS/RS       False    regf
//                    .f24     25:24   RS/WO       False    core
//                    .f26     27:26   RS/WO       False    regf
//                    .f28     29:28   RS/W1C      False    core
//                    .f30     31:30   RS/W1C      False    regf
//  +4        w4
//                    .f0      1:0     RS/W1S      False    core
//                    .f2      3:2     RS/W1S      False    regf
//                    .f4      5:4     RS/RW       False    core
//                    .f6      7:6     RS/RW       False    regf
//                    .f8      9:8     RS/RW1C     False    core
//                    .f10     11:10   RS/RW1C     False    regf
//                    .f12     13:12   RS/RW1S     False    core
//                    .f14     15:14   RS/RW1S     False    regf
//                    .f16     17:16   WO/RO       False    core
//                    .f18     19:18   WO/RO       False    regf
//                    .f20     21:20   WO/RC       False    core
//                    .f22     23:22   WO/RC       False    regf
//                    .f24     25:24   WO/RS       False    core
//                    .f26     27:26   WO/RS       False    regf
//                    .f28     29:28   WO/WO       False    core
//                    .f30     31:30   WO/WO       False    regf
//  +5        w5
//                    .f0      1:0     WO/W1C      False    core
//                    .f2      3:2     WO/W1C      False    regf
//                    .f4      5:4     WO/W1S      False    core
//                    .f6      7:6     WO/W1S      False    regf
//                    .f8      9:8     WO/RW       False    core
//                    .f10     11:10   WO/RW       False    regf
//                    .f12     13:12   WO/RW1C     False    core
//                    .f14     15:14   WO/RW1C     False    regf
//                    .f16     17:16   WO/RW1S     False    core
//                    .f18     19:18   WO/RW1S     False    regf
//                    .f20     21:20   W1C/RO      False    core
//                    .f22     23:22   W1C/RO      False    regf
//                    .f24     25:24   W1C/RC      False    core
//                    .f26     27:26   W1C/RC      False    regf
//                    .f28     29:28   W1C/RS      False    core
//                    .f30     31:30   W1C/RS      False    regf
//  +6        w6
//                    .f0      1:0     W1C/WO      False    core
//                    .f2      3:2     W1C/WO      False    regf
//                    .f4      5:4     W1C/W1C     False    core
//                    .f6      7:6     W1C/W1C     False    regf
//                    .f8      9:8     W1C/W1S     False    core
//                    .f10     11:10   W1C/W1S     False    regf
//                    .f12     13:12   W1C/RW      False    core
//                    .f14     15:14   W1C/RW      False    regf
//                    .f16     17:16   W1C/RW1C    False    core
//                    .f18     19:18   W1C/RW1C    False    regf
//                    .f20     21:20   W1C/RW1S    False    core
//                    .f22     23:22   W1C/RW1S    False    regf
//                    .f24     25:24   W1S/RO      False    core
//                    .f26     27:26   W1S/RO      False    regf
//                    .f28     29:28   W1S/RC      False    core
//                    .f30     31:30   W1S/RC      False    regf
//  +7        w7
//                    .f0      1:0     W1S/RS      False    core
//                    .f2      3:2     W1S/RS      False    regf
//                    .f4      5:4     W1S/WO      False    core
//                    .f6      7:6     W1S/WO      False    regf
//                    .f8      9:8     W1S/W1C     False    core
//                    .f10     11:10   W1S/W1C     False    regf
//                    .f12     13:12   W1S/W1S     False    core
//                    .f14     15:14   W1S/W1S     False    regf
//                    .f16     17:16   W1S/RW      False    core
//                    .f18     19:18   W1S/RW      False    regf
//                    .f20     21:20   W1S/RW1C    False    core
//                    .f22     23:22   W1S/RW1C    False    regf
//                    .f24     25:24   W1S/RW1S    False    core
//                    .f26     27:26   W1S/RW1S    False    regf
//                    .f28     29:28   RW/RO       False    core
//                    .f30     31:30   RW/RO       False    regf
//  +8        w8
//                    .f0      1:0     RW/RC       False    core
//                    .f2      3:2     RW/RC       False    regf
//                    .f4      5:4     RW/RS       False    core
//                    .f6      7:6     RW/RS       False    regf
//                    .f8      9:8     RW/WO       False    core
//                    .f10     11:10   RW/WO       False    regf
//                    .f12     13:12   RW/W1C      False    core
//                    .f14     15:14   RW/W1C      False    regf
//                    .f16     17:16   RW/W1S      False    core
//                    .f18     19:18   RW/W1S      False    regf
//                    .f20     21:20   RW/RW       False    core
//                    .f22     23:22   RW/RW       False    regf
//                    .f24     25:24   RW/RW1C     False    core
//                    .f26     27:26   RW/RW1C     False    regf
//                    .f28     29:28   RW/RW1S     False    core
//                    .f30     31:30   RW/RW1S     False    regf
//  +9        w9
//                    .f0      1:0     RW1C/RO     False    core
//                    .f2      3:2     RW1C/RO     False    regf
//                    .f4      5:4     RW1C/RC     False    core
//                    .f6      7:6     RW1C/RC     False    regf
//                    .f8      9:8     RW1C/RS     False    core
//                    .f10     11:10   RW1C/RS     False    regf
//                    .f12     13:12   RW1C/WO     False    core
//                    .f14     15:14   RW1C/WO     False    regf
//                    .f16     17:16   RW1C/W1C    False    core
//                    .f18     19:18   RW1C/W1C    False    regf
//                    .f20     21:20   RW1C/W1S    False    core
//                    .f22     23:22   RW1C/W1S    False    regf
//                    .f24     25:24   RW1C/RW     False    core
//                    .f26     27:26   RW1C/RW     False    regf
//                    .f28     29:28   RW1C/RW1C   False    core
//                    .f30     31:30   RW1C/RW1C   False    regf
//  +10       w10
//                    .f0      1:0     RW1C/RW1S   False    core
//                    .f2      3:2     RW1C/RW1S   False    regf
//                    .f4      5:4     RW1S/RO     False    core
//                    .f6      7:6     RW1S/RO     False    regf
//                    .f8      9:8     RW1S/RC     False    core
//                    .f10     11:10   RW1S/RC     False    regf
//                    .f12     13:12   RW1S/RS     False    core
//                    .f14     15:14   RW1S/RS     False    regf
//                    .f16     17:16   RW1S/WO     False    core
//                    .f18     19:18   RW1S/WO     False    regf
//                    .f20     21:20   RW1S/W1C    False    core
//                    .f22     23:22   RW1S/W1C    False    regf
//                    .f24     25:24   RW1S/W1S    False    core
//                    .f26     27:26   RW1S/W1S    False    regf
//                    .f28     29:28   RW1S/RW     False    core
//                    .f30     31:30   RW1S/RW     False    regf
//  +11       w11
//                    .f0      1:0     RW1S/RW1C   False    core
//                    .f2      3:2     RW1S/RW1C   False    regf
//                    .f4      5:4     RW1S/RW1S   False    core
//                    .f6      7:6     RW1S/RW1S   False    regf
//
//
// =============================================================================


module full_regf ( // tests.test_svmako.RegfMod
  // main_i
  input  wire           main_clk_i,
  input  wire           main_rst_an_i,       // Async Reset (Low-Active)
  // mem_i
  input  wire           mem_ena_i,
  input  wire  [16-1:0] mem_addr_i,
  input  wire           mem_wena_i,
  input  wire  [32-1:0] mem_wdata_i,
  output logic [32-1:0] mem_rdata_o,
  input  wire           mem_err_i,
  // regf_o
  // regf_w0_f0_o: bus=None core=RO in_regf=False
  // regf_w0_f2_o: bus=None core=RO in_regf=True
  output logic [2-1:0]  regf_w0_f2_rval_o,   // Core Read Value
  // regf_w0_f4_o: bus=None core=RC in_regf=False
  // regf_w0_f6_o: bus=None core=RC in_regf=True
  output logic [2-1:0]  regf_w0_f6_rval_o,   // Core Read Value
  input  wire           regf_w0_f6_rd_i,     // Core Read Strobe
  // regf_w0_f8_o: bus=None core=RS in_regf=False
  // regf_w0_f10_o: bus=None core=RS in_regf=True
  output logic [2-1:0]  regf_w0_f10_rval_o,  // Core Read Value
  input  wire           regf_w0_f10_rd_i,    // Core Read Strobe
  // regf_w0_f12_o: bus=None core=WO in_regf=False
  // regf_w0_f14_o: bus=None core=WO in_regf=True
  input  wire  [2-1:0]  regf_w0_f14_wval_i,  // Core Write Value
  input  wire           regf_w0_f14_wr_i,    // Core Write Strobe
  // regf_w0_f16_o: bus=None core=W1C in_regf=False
  // regf_w0_f18_o: bus=None core=W1C in_regf=True
  input  wire  [2-1:0]  regf_w0_f18_wval_i,  // Core Write Value
  input  wire           regf_w0_f18_wr_i,    // Core Write Strobe
  // regf_w0_f20_o: bus=None core=W1S in_regf=False
  // regf_w0_f22_o: bus=None core=W1S in_regf=True
  input  wire  [2-1:0]  regf_w0_f22_wval_i,  // Core Write Value
  input  wire           regf_w0_f22_wr_i,    // Core Write Strobe
  // regf_w0_f24_o: bus=None core=RW in_regf=False
  // regf_w0_f26_o: bus=None core=RW in_regf=True
  output logic [2-1:0]  regf_w0_f26_rval_o,  // Core Read Value
  input  wire  [2-1:0]  regf_w0_f26_wval_i,  // Core Write Value
  input  wire           regf_w0_f26_wr_i,    // Core Write Strobe
  // regf_w0_f28_o: bus=None core=RW1C in_regf=False
  // regf_w0_f30_o: bus=None core=RW1C in_regf=True
  output logic [2-1:0]  regf_w0_f30_rval_o,  // Core Read Value
  input  wire  [2-1:0]  regf_w0_f30_wval_i,  // Core Write Value
  input  wire           regf_w0_f30_wr_i,    // Core Write Strobe
  // regf_w1_f0_o: bus=None core=RW1S in_regf=False
  // regf_w1_f2_o: bus=None core=RW1S in_regf=True
  output logic [2-1:0]  regf_w1_f2_rval_o,   // Core Read Value
  input  wire  [2-1:0]  regf_w1_f2_wval_i,   // Core Write Value
  input  wire           regf_w1_f2_wr_i,     // Core Write Strobe
  // regf_w1_f4_o: bus=RO core=RO in_regf=False
  input  wire  [2-1:0]  regf_w1_f4_rbus_i,   // Bus Read Value
  // regf_w1_f6_o: bus=RO core=RO in_regf=True
  output logic [2-1:0]  regf_w1_f6_rval_o,   // Core Read Value
  // regf_w1_f8_o: bus=RO core=RC in_regf=False
  input  wire  [2-1:0]  regf_w1_f8_rbus_i,   // Bus Read Value
  // regf_w1_f10_o: bus=RO core=RC in_regf=True
  output logic [2-1:0]  regf_w1_f10_rval_o,  // Core Read Value
  input  wire           regf_w1_f10_rd_i,    // Core Read Strobe
  // regf_w1_f12_o: bus=RO core=RS in_regf=False
  input  wire  [2-1:0]  regf_w1_f12_rbus_i,  // Bus Read Value
  // regf_w1_f14_o: bus=RO core=RS in_regf=True
  output logic [2-1:0]  regf_w1_f14_rval_o,  // Core Read Value
  input  wire           regf_w1_f14_rd_i,    // Core Read Strobe
  // regf_w1_f16_o: bus=RO core=WO in_regf=False
  input  wire  [2-1:0]  regf_w1_f16_rbus_i,  // Bus Read Value
  // regf_w1_f18_o: bus=RO core=WO in_regf=True
  input  wire  [2-1:0]  regf_w1_f18_wval_i,  // Core Write Value
  input  wire           regf_w1_f18_wr_i,    // Core Write Strobe
  // regf_w1_f20_o: bus=RO core=W1C in_regf=False
  input  wire  [2-1:0]  regf_w1_f20_rbus_i,  // Bus Read Value
  // regf_w1_f22_o: bus=RO core=W1C in_regf=True
  input  wire  [2-1:0]  regf_w1_f22_wval_i,  // Core Write Value
  input  wire           regf_w1_f22_wr_i,    // Core Write Strobe
  // regf_w1_f24_o: bus=RO core=W1S in_regf=False
  input  wire  [2-1:0]  regf_w1_f24_rbus_i,  // Bus Read Value
  // regf_w1_f26_o: bus=RO core=W1S in_regf=True
  input  wire  [2-1:0]  regf_w1_f26_wval_i,  // Core Write Value
  input  wire           regf_w1_f26_wr_i,    // Core Write Strobe
  // regf_w1_f28_o: bus=RO core=RW in_regf=False
  input  wire  [2-1:0]  regf_w1_f28_rbus_i,  // Bus Read Value
  // regf_w1_f30_o: bus=RO core=RW in_regf=True
  output logic [2-1:0]  regf_w1_f30_rval_o,  // Core Read Value
  input  wire  [2-1:0]  regf_w1_f30_wval_i,  // Core Write Value
  input  wire           regf_w1_f30_wr_i,    // Core Write Strobe
  // regf_w2_f0_o: bus=RO core=RW1C in_regf=False
  input  wire  [2-1:0]  regf_w2_f0_rbus_i,   // Bus Read Value
  // regf_w2_f2_o: bus=RO core=RW1C in_regf=True
  output logic [2-1:0]  regf_w2_f2_rval_o,   // Core Read Value
  input  wire  [2-1:0]  regf_w2_f2_wval_i,   // Core Write Value
  input  wire           regf_w2_f2_wr_i,     // Core Write Strobe
  // regf_w2_f4_o: bus=RO core=RW1S in_regf=False
  input  wire  [2-1:0]  regf_w2_f4_rbus_i,   // Bus Read Value
  // regf_w2_f6_o: bus=RO core=RW1S in_regf=True
  output logic [2-1:0]  regf_w2_f6_rval_o,   // Core Read Value
  input  wire  [2-1:0]  regf_w2_f6_wval_i,   // Core Write Value
  input  wire           regf_w2_f6_wr_i,     // Core Write Strobe
  // regf_w2_f8_o: bus=RC core=RO in_regf=False
  input  wire  [2-1:0]  regf_w2_f8_rbus_i,   // Bus Read Value
  output logic          regf_w2_f8_rd_o,     // Bus Read Strobe
  // regf_w2_f10_o: bus=RC core=RO in_regf=True
  output logic [2-1:0]  regf_w2_f10_rval_o,  // Core Read Value
  // regf_w2_f12_o: bus=RC core=RC in_regf=False
  input  wire  [2-1:0]  regf_w2_f12_rbus_i,  // Bus Read Value
  output logic          regf_w2_f12_rd_o,    // Bus Read Strobe
  // regf_w2_f14_o: bus=RC core=RC in_regf=True
  output logic [2-1:0]  regf_w2_f14_rval_o,  // Core Read Value
  input  wire           regf_w2_f14_rd_i,    // Core Read Strobe
  // regf_w2_f16_o: bus=RC core=RS in_regf=False
  input  wire  [2-1:0]  regf_w2_f16_rbus_i,  // Bus Read Value
  output logic          regf_w2_f16_rd_o,    // Bus Read Strobe
  // regf_w2_f18_o: bus=RC core=RS in_regf=True
  output logic [2-1:0]  regf_w2_f18_rval_o,  // Core Read Value
  input  wire           regf_w2_f18_rd_i,    // Core Read Strobe
  // regf_w2_f20_o: bus=RC core=WO in_regf=False
  input  wire  [2-1:0]  regf_w2_f20_rbus_i,  // Bus Read Value
  output logic          regf_w2_f20_rd_o,    // Bus Read Strobe
  // regf_w2_f22_o: bus=RC core=WO in_regf=True
  input  wire  [2-1:0]  regf_w2_f22_wval_i,  // Core Write Value
  input  wire           regf_w2_f22_wr_i,    // Core Write Strobe
  // regf_w2_f24_o: bus=RC core=W1C in_regf=False
  input  wire  [2-1:0]  regf_w2_f24_rbus_i,  // Bus Read Value
  output logic          regf_w2_f24_rd_o,    // Bus Read Strobe
  // regf_w2_f26_o: bus=RC core=W1C in_regf=True
  input  wire  [2-1:0]  regf_w2_f26_wval_i,  // Core Write Value
  input  wire           regf_w2_f26_wr_i,    // Core Write Strobe
  // regf_w2_f28_o: bus=RC core=W1S in_regf=False
  input  wire  [2-1:0]  regf_w2_f28_rbus_i,  // Bus Read Value
  output logic          regf_w2_f28_rd_o,    // Bus Read Strobe
  // regf_w2_f30_o: bus=RC core=W1S in_regf=True
  input  wire  [2-1:0]  regf_w2_f30_wval_i,  // Core Write Value
  input  wire           regf_w2_f30_wr_i,    // Core Write Strobe
  // regf_w3_f0_o: bus=RC core=RW in_regf=False
  input  wire  [2-1:0]  regf_w3_f0_rbus_i,   // Bus Read Value
  output logic          regf_w3_f0_rd_o,     // Bus Read Strobe
  // regf_w3_f2_o: bus=RC core=RW in_regf=True
  output logic [2-1:0]  regf_w3_f2_rval_o,   // Core Read Value
  input  wire  [2-1:0]  regf_w3_f2_wval_i,   // Core Write Value
  input  wire           regf_w3_f2_wr_i,     // Core Write Strobe
  // regf_w3_f4_o: bus=RC core=RW1C in_regf=False
  input  wire  [2-1:0]  regf_w3_f4_rbus_i,   // Bus Read Value
  output logic          regf_w3_f4_rd_o,     // Bus Read Strobe
  // regf_w3_f6_o: bus=RC core=RW1C in_regf=True
  output logic [2-1:0]  regf_w3_f6_rval_o,   // Core Read Value
  input  wire  [2-1:0]  regf_w3_f6_wval_i,   // Core Write Value
  input  wire           regf_w3_f6_wr_i,     // Core Write Strobe
  // regf_w3_f8_o: bus=RC core=RW1S in_regf=False
  input  wire  [2-1:0]  regf_w3_f8_rbus_i,   // Bus Read Value
  output logic          regf_w3_f8_rd_o,     // Bus Read Strobe
  // regf_w3_f10_o: bus=RC core=RW1S in_regf=True
  output logic [2-1:0]  regf_w3_f10_rval_o,  // Core Read Value
  input  wire  [2-1:0]  regf_w3_f10_wval_i,  // Core Write Value
  input  wire           regf_w3_f10_wr_i,    // Core Write Strobe
  // regf_w3_f12_o: bus=RS core=RO in_regf=False
  input  wire  [2-1:0]  regf_w3_f12_rbus_i,  // Bus Read Value
  output logic          regf_w3_f12_rd_o,    // Bus Read Strobe
  // regf_w3_f14_o: bus=RS core=RO in_regf=True
  output logic [2-1:0]  regf_w3_f14_rval_o,  // Core Read Value
  // regf_w3_f16_o: bus=RS core=RC in_regf=False
  input  wire  [2-1:0]  regf_w3_f16_rbus_i,  // Bus Read Value
  output logic          regf_w3_f16_rd_o,    // Bus Read Strobe
  // regf_w3_f18_o: bus=RS core=RC in_regf=True
  output logic [2-1:0]  regf_w3_f18_rval_o,  // Core Read Value
  input  wire           regf_w3_f18_rd_i,    // Core Read Strobe
  // regf_w3_f20_o: bus=RS core=RS in_regf=False
  input  wire  [2-1:0]  regf_w3_f20_rbus_i,  // Bus Read Value
  output logic          regf_w3_f20_rd_o,    // Bus Read Strobe
  // regf_w3_f22_o: bus=RS core=RS in_regf=True
  output logic [2-1:0]  regf_w3_f22_rval_o,  // Core Read Value
  input  wire           regf_w3_f22_rd_i,    // Core Read Strobe
  // regf_w3_f24_o: bus=RS core=WO in_regf=False
  input  wire  [2-1:0]  regf_w3_f24_rbus_i,  // Bus Read Value
  output logic          regf_w3_f24_rd_o,    // Bus Read Strobe
  // regf_w3_f26_o: bus=RS core=WO in_regf=True
  input  wire  [2-1:0]  regf_w3_f26_wval_i,  // Core Write Value
  input  wire           regf_w3_f26_wr_i,    // Core Write Strobe
  // regf_w3_f28_o: bus=RS core=W1C in_regf=False
  input  wire  [2-1:0]  regf_w3_f28_rbus_i,  // Bus Read Value
  output logic          regf_w3_f28_rd_o,    // Bus Read Strobe
  // regf_w3_f30_o: bus=RS core=W1C in_regf=True
  input  wire  [2-1:0]  regf_w3_f30_wval_i,  // Core Write Value
  input  wire           regf_w3_f30_wr_i,    // Core Write Strobe
  // regf_w4_f0_o: bus=RS core=W1S in_regf=False
  input  wire  [2-1:0]  regf_w4_f0_rbus_i,   // Bus Read Value
  output logic          regf_w4_f0_rd_o,     // Bus Read Strobe
  // regf_w4_f2_o: bus=RS core=W1S in_regf=True
  input  wire  [2-1:0]  regf_w4_f2_wval_i,   // Core Write Value
  input  wire           regf_w4_f2_wr_i,     // Core Write Strobe
  // regf_w4_f4_o: bus=RS core=RW in_regf=False
  input  wire  [2-1:0]  regf_w4_f4_rbus_i,   // Bus Read Value
  output logic          regf_w4_f4_rd_o,     // Bus Read Strobe
  // regf_w4_f6_o: bus=RS core=RW in_regf=True
  output logic [2-1:0]  regf_w4_f6_rval_o,   // Core Read Value
  input  wire  [2-1:0]  regf_w4_f6_wval_i,   // Core Write Value
  input  wire           regf_w4_f6_wr_i,     // Core Write Strobe
  // regf_w4_f8_o: bus=RS core=RW1C in_regf=False
  input  wire  [2-1:0]  regf_w4_f8_rbus_i,   // Bus Read Value
  output logic          regf_w4_f8_rd_o,     // Bus Read Strobe
  // regf_w4_f10_o: bus=RS core=RW1C in_regf=True
  output logic [2-1:0]  regf_w4_f10_rval_o,  // Core Read Value
  input  wire  [2-1:0]  regf_w4_f10_wval_i,  // Core Write Value
  input  wire           regf_w4_f10_wr_i,    // Core Write Strobe
  // regf_w4_f12_o: bus=RS core=RW1S in_regf=False
  input  wire  [2-1:0]  regf_w4_f12_rbus_i,  // Bus Read Value
  output logic          regf_w4_f12_rd_o,    // Bus Read Strobe
  // regf_w4_f14_o: bus=RS core=RW1S in_regf=True
  output logic [2-1:0]  regf_w4_f14_rval_o,  // Core Read Value
  input  wire  [2-1:0]  regf_w4_f14_wval_i,  // Core Write Value
  input  wire           regf_w4_f14_wr_i,    // Core Write Strobe
  // regf_w4_f16_o: bus=WO core=RO in_regf=False
  output logic [2-1:0]  regf_w4_f16_wbus_o,  // Bus Write Value
  output logic          regf_w4_f16_wr_o,    // Bus Write Strobe
  // regf_w4_f18_o: bus=WO core=RO in_regf=True
  output logic [2-1:0]  regf_w4_f18_rval_o,  // Core Read Value
  // regf_w4_f20_o: bus=WO core=RC in_regf=False
  output logic [2-1:0]  regf_w4_f20_wbus_o,  // Bus Write Value
  output logic          regf_w4_f20_wr_o,    // Bus Write Strobe
  // regf_w4_f22_o: bus=WO core=RC in_regf=True
  output logic [2-1:0]  regf_w4_f22_rval_o,  // Core Read Value
  input  wire           regf_w4_f22_rd_i,    // Core Read Strobe
  // regf_w4_f24_o: bus=WO core=RS in_regf=False
  output logic [2-1:0]  regf_w4_f24_wbus_o,  // Bus Write Value
  output logic          regf_w4_f24_wr_o,    // Bus Write Strobe
  // regf_w4_f26_o: bus=WO core=RS in_regf=True
  output logic [2-1:0]  regf_w4_f26_rval_o,  // Core Read Value
  input  wire           regf_w4_f26_rd_i,    // Core Read Strobe
  // regf_w4_f28_o: bus=WO core=WO in_regf=False
  output logic [2-1:0]  regf_w4_f28_wbus_o,  // Bus Write Value
  output logic          regf_w4_f28_wr_o,    // Bus Write Strobe
  // regf_w4_f30_o: bus=WO core=WO in_regf=True
  input  wire  [2-1:0]  regf_w4_f30_wval_i,  // Core Write Value
  input  wire           regf_w4_f30_wr_i,    // Core Write Strobe
  // regf_w5_f0_o: bus=WO core=W1C in_regf=False
  output logic [2-1:0]  regf_w5_f0_wbus_o,   // Bus Write Value
  output logic          regf_w5_f0_wr_o,     // Bus Write Strobe
  // regf_w5_f2_o: bus=WO core=W1C in_regf=True
  input  wire  [2-1:0]  regf_w5_f2_wval_i,   // Core Write Value
  input  wire           regf_w5_f2_wr_i,     // Core Write Strobe
  // regf_w5_f4_o: bus=WO core=W1S in_regf=False
  output logic [2-1:0]  regf_w5_f4_wbus_o,   // Bus Write Value
  output logic          regf_w5_f4_wr_o,     // Bus Write Strobe
  // regf_w5_f6_o: bus=WO core=W1S in_regf=True
  input  wire  [2-1:0]  regf_w5_f6_wval_i,   // Core Write Value
  input  wire           regf_w5_f6_wr_i,     // Core Write Strobe
  // regf_w5_f8_o: bus=WO core=RW in_regf=False
  output logic [2-1:0]  regf_w5_f8_wbus_o,   // Bus Write Value
  output logic          regf_w5_f8_wr_o,     // Bus Write Strobe
  // regf_w5_f10_o: bus=WO core=RW in_regf=True
  output logic [2-1:0]  regf_w5_f10_rval_o,  // Core Read Value
  input  wire  [2-1:0]  regf_w5_f10_wval_i,  // Core Write Value
  input  wire           regf_w5_f10_wr_i,    // Core Write Strobe
  // regf_w5_f12_o: bus=WO core=RW1C in_regf=False
  output logic [2-1:0]  regf_w5_f12_wbus_o,  // Bus Write Value
  output logic          regf_w5_f12_wr_o,    // Bus Write Strobe
  // regf_w5_f14_o: bus=WO core=RW1C in_regf=True
  output logic [2-1:0]  regf_w5_f14_rval_o,  // Core Read Value
  input  wire  [2-1:0]  regf_w5_f14_wval_i,  // Core Write Value
  input  wire           regf_w5_f14_wr_i,    // Core Write Strobe
  // regf_w5_f16_o: bus=WO core=RW1S in_regf=False
  output logic [2-1:0]  regf_w5_f16_wbus_o,  // Bus Write Value
  output logic          regf_w5_f16_wr_o,    // Bus Write Strobe
  // regf_w5_f18_o: bus=WO core=RW1S in_regf=True
  output logic [2-1:0]  regf_w5_f18_rval_o,  // Core Read Value
  input  wire  [2-1:0]  regf_w5_f18_wval_i,  // Core Write Value
  input  wire           regf_w5_f18_wr_i,    // Core Write Strobe
  // regf_w5_f20_o: bus=W1C core=RO in_regf=False
  output logic [2-1:0]  regf_w5_f20_wbus_o,  // Bus Write Value
  output logic          regf_w5_f20_wr_o,    // Bus Write Strobe
  // regf_w5_f22_o: bus=W1C core=RO in_regf=True
  output logic [2-1:0]  regf_w5_f22_rval_o,  // Core Read Value
  // regf_w5_f24_o: bus=W1C core=RC in_regf=False
  output logic [2-1:0]  regf_w5_f24_wbus_o,  // Bus Write Value
  output logic          regf_w5_f24_wr_o,    // Bus Write Strobe
  // regf_w5_f26_o: bus=W1C core=RC in_regf=True
  output logic [2-1:0]  regf_w5_f26_rval_o,  // Core Read Value
  input  wire           regf_w5_f26_rd_i,    // Core Read Strobe
  // regf_w5_f28_o: bus=W1C core=RS in_regf=False
  output logic [2-1:0]  regf_w5_f28_wbus_o,  // Bus Write Value
  output logic          regf_w5_f28_wr_o,    // Bus Write Strobe
  // regf_w5_f30_o: bus=W1C core=RS in_regf=True
  output logic [2-1:0]  regf_w5_f30_rval_o,  // Core Read Value
  input  wire           regf_w5_f30_rd_i,    // Core Read Strobe
  // regf_w6_f0_o: bus=W1C core=WO in_regf=False
  output logic [2-1:0]  regf_w6_f0_wbus_o,   // Bus Write Value
  output logic          regf_w6_f0_wr_o,     // Bus Write Strobe
  // regf_w6_f2_o: bus=W1C core=WO in_regf=True
  input  wire  [2-1:0]  regf_w6_f2_wval_i,   // Core Write Value
  input  wire           regf_w6_f2_wr_i,     // Core Write Strobe
  // regf_w6_f4_o: bus=W1C core=W1C in_regf=False
  output logic [2-1:0]  regf_w6_f4_wbus_o,   // Bus Write Value
  output logic          regf_w6_f4_wr_o,     // Bus Write Strobe
  // regf_w6_f6_o: bus=W1C core=W1C in_regf=True
  input  wire  [2-1:0]  regf_w6_f6_wval_i,   // Core Write Value
  input  wire           regf_w6_f6_wr_i,     // Core Write Strobe
  // regf_w6_f8_o: bus=W1C core=W1S in_regf=False
  output logic [2-1:0]  regf_w6_f8_wbus_o,   // Bus Write Value
  output logic          regf_w6_f8_wr_o,     // Bus Write Strobe
  // regf_w6_f10_o: bus=W1C core=W1S in_regf=True
  input  wire  [2-1:0]  regf_w6_f10_wval_i,  // Core Write Value
  input  wire           regf_w6_f10_wr_i,    // Core Write Strobe
  // regf_w6_f12_o: bus=W1C core=RW in_regf=False
  output logic [2-1:0]  regf_w6_f12_wbus_o,  // Bus Write Value
  output logic          regf_w6_f12_wr_o,    // Bus Write Strobe
  // regf_w6_f14_o: bus=W1C core=RW in_regf=True
  output logic [2-1:0]  regf_w6_f14_rval_o,  // Core Read Value
  input  wire  [2-1:0]  regf_w6_f14_wval_i,  // Core Write Value
  input  wire           regf_w6_f14_wr_i,    // Core Write Strobe
  // regf_w6_f16_o: bus=W1C core=RW1C in_regf=False
  output logic [2-1:0]  regf_w6_f16_wbus_o,  // Bus Write Value
  output logic          regf_w6_f16_wr_o,    // Bus Write Strobe
  // regf_w6_f18_o: bus=W1C core=RW1C in_regf=True
  output logic [2-1:0]  regf_w6_f18_rval_o,  // Core Read Value
  input  wire  [2-1:0]  regf_w6_f18_wval_i,  // Core Write Value
  input  wire           regf_w6_f18_wr_i,    // Core Write Strobe
  // regf_w6_f20_o: bus=W1C core=RW1S in_regf=False
  output logic [2-1:0]  regf_w6_f20_wbus_o,  // Bus Write Value
  output logic          regf_w6_f20_wr_o,    // Bus Write Strobe
  // regf_w6_f22_o: bus=W1C core=RW1S in_regf=True
  output logic [2-1:0]  regf_w6_f22_rval_o,  // Core Read Value
  input  wire  [2-1:0]  regf_w6_f22_wval_i,  // Core Write Value
  input  wire           regf_w6_f22_wr_i,    // Core Write Strobe
  // regf_w6_f24_o: bus=W1S core=RO in_regf=False
  output logic [2-1:0]  regf_w6_f24_wbus_o,  // Bus Write Value
  output logic          regf_w6_f24_wr_o,    // Bus Write Strobe
  // regf_w6_f26_o: bus=W1S core=RO in_regf=True
  output logic [2-1:0]  regf_w6_f26_rval_o,  // Core Read Value
  // regf_w6_f28_o: bus=W1S core=RC in_regf=False
  output logic [2-1:0]  regf_w6_f28_wbus_o,  // Bus Write Value
  output logic          regf_w6_f28_wr_o,    // Bus Write Strobe
  // regf_w6_f30_o: bus=W1S core=RC in_regf=True
  output logic [2-1:0]  regf_w6_f30_rval_o,  // Core Read Value
  input  wire           regf_w6_f30_rd_i,    // Core Read Strobe
  // regf_w7_f0_o: bus=W1S core=RS in_regf=False
  output logic [2-1:0]  regf_w7_f0_wbus_o,   // Bus Write Value
  output logic          regf_w7_f0_wr_o,     // Bus Write Strobe
  // regf_w7_f2_o: bus=W1S core=RS in_regf=True
  output logic [2-1:0]  regf_w7_f2_rval_o,   // Core Read Value
  input  wire           regf_w7_f2_rd_i,     // Core Read Strobe
  // regf_w7_f4_o: bus=W1S core=WO in_regf=False
  output logic [2-1:0]  regf_w7_f4_wbus_o,   // Bus Write Value
  output logic          regf_w7_f4_wr_o,     // Bus Write Strobe
  // regf_w7_f6_o: bus=W1S core=WO in_regf=True
  input  wire  [2-1:0]  regf_w7_f6_wval_i,   // Core Write Value
  input  wire           regf_w7_f6_wr_i,     // Core Write Strobe
  // regf_w7_f8_o: bus=W1S core=W1C in_regf=False
  output logic [2-1:0]  regf_w7_f8_wbus_o,   // Bus Write Value
  output logic          regf_w7_f8_wr_o,     // Bus Write Strobe
  // regf_w7_f10_o: bus=W1S core=W1C in_regf=True
  input  wire  [2-1:0]  regf_w7_f10_wval_i,  // Core Write Value
  input  wire           regf_w7_f10_wr_i,    // Core Write Strobe
  // regf_w7_f12_o: bus=W1S core=W1S in_regf=False
  output logic [2-1:0]  regf_w7_f12_wbus_o,  // Bus Write Value
  output logic          regf_w7_f12_wr_o,    // Bus Write Strobe
  // regf_w7_f14_o: bus=W1S core=W1S in_regf=True
  input  wire  [2-1:0]  regf_w7_f14_wval_i,  // Core Write Value
  input  wire           regf_w7_f14_wr_i,    // Core Write Strobe
  // regf_w7_f16_o: bus=W1S core=RW in_regf=False
  output logic [2-1:0]  regf_w7_f16_wbus_o,  // Bus Write Value
  output logic          regf_w7_f16_wr_o,    // Bus Write Strobe
  // regf_w7_f18_o: bus=W1S core=RW in_regf=True
  output logic [2-1:0]  regf_w7_f18_rval_o,  // Core Read Value
  input  wire  [2-1:0]  regf_w7_f18_wval_i,  // Core Write Value
  input  wire           regf_w7_f18_wr_i,    // Core Write Strobe
  // regf_w7_f20_o: bus=W1S core=RW1C in_regf=False
  output logic [2-1:0]  regf_w7_f20_wbus_o,  // Bus Write Value
  output logic          regf_w7_f20_wr_o,    // Bus Write Strobe
  // regf_w7_f22_o: bus=W1S core=RW1C in_regf=True
  output logic [2-1:0]  regf_w7_f22_rval_o,  // Core Read Value
  input  wire  [2-1:0]  regf_w7_f22_wval_i,  // Core Write Value
  input  wire           regf_w7_f22_wr_i,    // Core Write Strobe
  // regf_w7_f24_o: bus=W1S core=RW1S in_regf=False
  output logic [2-1:0]  regf_w7_f24_wbus_o,  // Bus Write Value
  output logic          regf_w7_f24_wr_o,    // Bus Write Strobe
  // regf_w7_f26_o: bus=W1S core=RW1S in_regf=True
  output logic [2-1:0]  regf_w7_f26_rval_o,  // Core Read Value
  input  wire  [2-1:0]  regf_w7_f26_wval_i,  // Core Write Value
  input  wire           regf_w7_f26_wr_i,    // Core Write Strobe
  // regf_w7_f28_o: bus=RW core=RO in_regf=False
  input  wire  [2-1:0]  regf_w7_f28_rbus_i,  // Bus Read Value
  output logic [2-1:0]  regf_w7_f28_wbus_o,  // Bus Write Value
  output logic          regf_w7_f28_wr_o,    // Bus Write Strobe
  // regf_w7_f30_o: bus=RW core=RO in_regf=True
  output logic [2-1:0]  regf_w7_f30_rval_o,  // Core Read Value
  // regf_w8_f0_o: bus=RW core=RC in_regf=False
  input  wire  [2-1:0]  regf_w8_f0_rbus_i,   // Bus Read Value
  output logic [2-1:0]  regf_w8_f0_wbus_o,   // Bus Write Value
  output logic          regf_w8_f0_wr_o,     // Bus Write Strobe
  // regf_w8_f2_o: bus=RW core=RC in_regf=True
  output logic [2-1:0]  regf_w8_f2_rval_o,   // Core Read Value
  input  wire           regf_w8_f2_rd_i,     // Core Read Strobe
  // regf_w8_f4_o: bus=RW core=RS in_regf=False
  input  wire  [2-1:0]  regf_w8_f4_rbus_i,   // Bus Read Value
  output logic [2-1:0]  regf_w8_f4_wbus_o,   // Bus Write Value
  output logic          regf_w8_f4_wr_o,     // Bus Write Strobe
  // regf_w8_f6_o: bus=RW core=RS in_regf=True
  output logic [2-1:0]  regf_w8_f6_rval_o,   // Core Read Value
  input  wire           regf_w8_f6_rd_i,     // Core Read Strobe
  // regf_w8_f8_o: bus=RW core=WO in_regf=False
  input  wire  [2-1:0]  regf_w8_f8_rbus_i,   // Bus Read Value
  output logic [2-1:0]  regf_w8_f8_wbus_o,   // Bus Write Value
  output logic          regf_w8_f8_wr_o,     // Bus Write Strobe
  // regf_w8_f10_o: bus=RW core=WO in_regf=True
  input  wire  [2-1:0]  regf_w8_f10_wval_i,  // Core Write Value
  input  wire           regf_w8_f10_wr_i,    // Core Write Strobe
  // regf_w8_f12_o: bus=RW core=W1C in_regf=False
  input  wire  [2-1:0]  regf_w8_f12_rbus_i,  // Bus Read Value
  output logic [2-1:0]  regf_w8_f12_wbus_o,  // Bus Write Value
  output logic          regf_w8_f12_wr_o,    // Bus Write Strobe
  // regf_w8_f14_o: bus=RW core=W1C in_regf=True
  input  wire  [2-1:0]  regf_w8_f14_wval_i,  // Core Write Value
  input  wire           regf_w8_f14_wr_i,    // Core Write Strobe
  // regf_w8_f16_o: bus=RW core=W1S in_regf=False
  input  wire  [2-1:0]  regf_w8_f16_rbus_i,  // Bus Read Value
  output logic [2-1:0]  regf_w8_f16_wbus_o,  // Bus Write Value
  output logic          regf_w8_f16_wr_o,    // Bus Write Strobe
  // regf_w8_f18_o: bus=RW core=W1S in_regf=True
  input  wire  [2-1:0]  regf_w8_f18_wval_i,  // Core Write Value
  input  wire           regf_w8_f18_wr_i,    // Core Write Strobe
  // regf_w8_f20_o: bus=RW core=RW in_regf=False
  input  wire  [2-1:0]  regf_w8_f20_rbus_i,  // Bus Read Value
  output logic [2-1:0]  regf_w8_f20_wbus_o,  // Bus Write Value
  output logic          regf_w8_f20_wr_o,    // Bus Write Strobe
  // regf_w8_f22_o: bus=RW core=RW in_regf=True
  output logic [2-1:0]  regf_w8_f22_rval_o,  // Core Read Value
  input  wire  [2-1:0]  regf_w8_f22_wval_i,  // Core Write Value
  input  wire           regf_w8_f22_wr_i,    // Core Write Strobe
  // regf_w8_f24_o: bus=RW core=RW1C in_regf=False
  input  wire  [2-1:0]  regf_w8_f24_rbus_i,  // Bus Read Value
  output logic [2-1:0]  regf_w8_f24_wbus_o,  // Bus Write Value
  output logic          regf_w8_f24_wr_o,    // Bus Write Strobe
  // regf_w8_f26_o: bus=RW core=RW1C in_regf=True
  output logic [2-1:0]  regf_w8_f26_rval_o,  // Core Read Value
  input  wire  [2-1:0]  regf_w8_f26_wval_i,  // Core Write Value
  input  wire           regf_w8_f26_wr_i,    // Core Write Strobe
  // regf_w8_f28_o: bus=RW core=RW1S in_regf=False
  input  wire  [2-1:0]  regf_w8_f28_rbus_i,  // Bus Read Value
  output logic [2-1:0]  regf_w8_f28_wbus_o,  // Bus Write Value
  output logic          regf_w8_f28_wr_o,    // Bus Write Strobe
  // regf_w8_f30_o: bus=RW core=RW1S in_regf=True
  output logic [2-1:0]  regf_w8_f30_rval_o,  // Core Read Value
  input  wire  [2-1:0]  regf_w8_f30_wval_i,  // Core Write Value
  input  wire           regf_w8_f30_wr_i,    // Core Write Strobe
  // regf_w9_f0_o: bus=RW1C core=RO in_regf=False
  input  wire  [2-1:0]  regf_w9_f0_rbus_i,   // Bus Read Value
  output logic [2-1:0]  regf_w9_f0_wbus_o,   // Bus Write Value
  output logic          regf_w9_f0_wr_o,     // Bus Write Strobe
  // regf_w9_f2_o: bus=RW1C core=RO in_regf=True
  output logic [2-1:0]  regf_w9_f2_rval_o,   // Core Read Value
  // regf_w9_f4_o: bus=RW1C core=RC in_regf=False
  input  wire  [2-1:0]  regf_w9_f4_rbus_i,   // Bus Read Value
  output logic [2-1:0]  regf_w9_f4_wbus_o,   // Bus Write Value
  output logic          regf_w9_f4_wr_o,     // Bus Write Strobe
  // regf_w9_f6_o: bus=RW1C core=RC in_regf=True
  output logic [2-1:0]  regf_w9_f6_rval_o,   // Core Read Value
  input  wire           regf_w9_f6_rd_i,     // Core Read Strobe
  // regf_w9_f8_o: bus=RW1C core=RS in_regf=False
  input  wire  [2-1:0]  regf_w9_f8_rbus_i,   // Bus Read Value
  output logic [2-1:0]  regf_w9_f8_wbus_o,   // Bus Write Value
  output logic          regf_w9_f8_wr_o,     // Bus Write Strobe
  // regf_w9_f10_o: bus=RW1C core=RS in_regf=True
  output logic [2-1:0]  regf_w9_f10_rval_o,  // Core Read Value
  input  wire           regf_w9_f10_rd_i,    // Core Read Strobe
  // regf_w9_f12_o: bus=RW1C core=WO in_regf=False
  input  wire  [2-1:0]  regf_w9_f12_rbus_i,  // Bus Read Value
  output logic [2-1:0]  regf_w9_f12_wbus_o,  // Bus Write Value
  output logic          regf_w9_f12_wr_o,    // Bus Write Strobe
  // regf_w9_f14_o: bus=RW1C core=WO in_regf=True
  input  wire  [2-1:0]  regf_w9_f14_wval_i,  // Core Write Value
  input  wire           regf_w9_f14_wr_i,    // Core Write Strobe
  // regf_w9_f16_o: bus=RW1C core=W1C in_regf=False
  input  wire  [2-1:0]  regf_w9_f16_rbus_i,  // Bus Read Value
  output logic [2-1:0]  regf_w9_f16_wbus_o,  // Bus Write Value
  output logic          regf_w9_f16_wr_o,    // Bus Write Strobe
  // regf_w9_f18_o: bus=RW1C core=W1C in_regf=True
  input  wire  [2-1:0]  regf_w9_f18_wval_i,  // Core Write Value
  input  wire           regf_w9_f18_wr_i,    // Core Write Strobe
  // regf_w9_f20_o: bus=RW1C core=W1S in_regf=False
  input  wire  [2-1:0]  regf_w9_f20_rbus_i,  // Bus Read Value
  output logic [2-1:0]  regf_w9_f20_wbus_o,  // Bus Write Value
  output logic          regf_w9_f20_wr_o,    // Bus Write Strobe
  // regf_w9_f22_o: bus=RW1C core=W1S in_regf=True
  input  wire  [2-1:0]  regf_w9_f22_wval_i,  // Core Write Value
  input  wire           regf_w9_f22_wr_i,    // Core Write Strobe
  // regf_w9_f24_o: bus=RW1C core=RW in_regf=False
  input  wire  [2-1:0]  regf_w9_f24_rbus_i,  // Bus Read Value
  output logic [2-1:0]  regf_w9_f24_wbus_o,  // Bus Write Value
  output logic          regf_w9_f24_wr_o,    // Bus Write Strobe
  // regf_w9_f26_o: bus=RW1C core=RW in_regf=True
  output logic [2-1:0]  regf_w9_f26_rval_o,  // Core Read Value
  input  wire  [2-1:0]  regf_w9_f26_wval_i,  // Core Write Value
  input  wire           regf_w9_f26_wr_i,    // Core Write Strobe
  // regf_w9_f28_o: bus=RW1C core=RW1C in_regf=False
  input  wire  [2-1:0]  regf_w9_f28_rbus_i,  // Bus Read Value
  output logic [2-1:0]  regf_w9_f28_wbus_o,  // Bus Write Value
  output logic          regf_w9_f28_wr_o,    // Bus Write Strobe
  // regf_w9_f30_o: bus=RW1C core=RW1C in_regf=True
  output logic [2-1:0]  regf_w9_f30_rval_o,  // Core Read Value
  input  wire  [2-1:0]  regf_w9_f30_wval_i,  // Core Write Value
  input  wire           regf_w9_f30_wr_i,    // Core Write Strobe
  // regf_w10_f0_o: bus=RW1C core=RW1S in_regf=False
  input  wire  [2-1:0]  regf_w10_f0_rbus_i,  // Bus Read Value
  output logic [2-1:0]  regf_w10_f0_wbus_o,  // Bus Write Value
  output logic          regf_w10_f0_wr_o,    // Bus Write Strobe
  // regf_w10_f2_o: bus=RW1C core=RW1S in_regf=True
  output logic [2-1:0]  regf_w10_f2_rval_o,  // Core Read Value
  input  wire  [2-1:0]  regf_w10_f2_wval_i,  // Core Write Value
  input  wire           regf_w10_f2_wr_i,    // Core Write Strobe
  // regf_w10_f4_o: bus=RW1S core=RO in_regf=False
  input  wire  [2-1:0]  regf_w10_f4_rbus_i,  // Bus Read Value
  output logic [2-1:0]  regf_w10_f4_wbus_o,  // Bus Write Value
  output logic          regf_w10_f4_wr_o,    // Bus Write Strobe
  // regf_w10_f6_o: bus=RW1S core=RO in_regf=True
  output logic [2-1:0]  regf_w10_f6_rval_o,  // Core Read Value
  // regf_w10_f8_o: bus=RW1S core=RC in_regf=False
  input  wire  [2-1:0]  regf_w10_f8_rbus_i,  // Bus Read Value
  output logic [2-1:0]  regf_w10_f8_wbus_o,  // Bus Write Value
  output logic          regf_w10_f8_wr_o,    // Bus Write Strobe
  // regf_w10_f10_o: bus=RW1S core=RC in_regf=True
  output logic [2-1:0]  regf_w10_f10_rval_o, // Core Read Value
  input  wire           regf_w10_f10_rd_i,   // Core Read Strobe
  // regf_w10_f12_o: bus=RW1S core=RS in_regf=False
  input  wire  [2-1:0]  regf_w10_f12_rbus_i, // Bus Read Value
  output logic [2-1:0]  regf_w10_f12_wbus_o, // Bus Write Value
  output logic          regf_w10_f12_wr_o,   // Bus Write Strobe
  // regf_w10_f14_o: bus=RW1S core=RS in_regf=True
  output logic [2-1:0]  regf_w10_f14_rval_o, // Core Read Value
  input  wire           regf_w10_f14_rd_i,   // Core Read Strobe
  // regf_w10_f16_o: bus=RW1S core=WO in_regf=False
  input  wire  [2-1:0]  regf_w10_f16_rbus_i, // Bus Read Value
  output logic [2-1:0]  regf_w10_f16_wbus_o, // Bus Write Value
  output logic          regf_w10_f16_wr_o,   // Bus Write Strobe
  // regf_w10_f18_o: bus=RW1S core=WO in_regf=True
  input  wire  [2-1:0]  regf_w10_f18_wval_i, // Core Write Value
  input  wire           regf_w10_f18_wr_i,   // Core Write Strobe
  // regf_w10_f20_o: bus=RW1S core=W1C in_regf=False
  input  wire  [2-1:0]  regf_w10_f20_rbus_i, // Bus Read Value
  output logic [2-1:0]  regf_w10_f20_wbus_o, // Bus Write Value
  output logic          regf_w10_f20_wr_o,   // Bus Write Strobe
  // regf_w10_f22_o: bus=RW1S core=W1C in_regf=True
  input  wire  [2-1:0]  regf_w10_f22_wval_i, // Core Write Value
  input  wire           regf_w10_f22_wr_i,   // Core Write Strobe
  // regf_w10_f24_o: bus=RW1S core=W1S in_regf=False
  input  wire  [2-1:0]  regf_w10_f24_rbus_i, // Bus Read Value
  output logic [2-1:0]  regf_w10_f24_wbus_o, // Bus Write Value
  output logic          regf_w10_f24_wr_o,   // Bus Write Strobe
  // regf_w10_f26_o: bus=RW1S core=W1S in_regf=True
  input  wire  [2-1:0]  regf_w10_f26_wval_i, // Core Write Value
  input  wire           regf_w10_f26_wr_i,   // Core Write Strobe
  // regf_w10_f28_o: bus=RW1S core=RW in_regf=False
  input  wire  [2-1:0]  regf_w10_f28_rbus_i, // Bus Read Value
  output logic [2-1:0]  regf_w10_f28_wbus_o, // Bus Write Value
  output logic          regf_w10_f28_wr_o,   // Bus Write Strobe
  // regf_w10_f30_o: bus=RW1S core=RW in_regf=True
  output logic [2-1:0]  regf_w10_f30_rval_o, // Core Read Value
  input  wire  [2-1:0]  regf_w10_f30_wval_i, // Core Write Value
  input  wire           regf_w10_f30_wr_i,   // Core Write Strobe
  // regf_w11_f0_o: bus=RW1S core=RW1C in_regf=False
  input  wire  [2-1:0]  regf_w11_f0_rbus_i,  // Bus Read Value
  output logic [2-1:0]  regf_w11_f0_wbus_o,  // Bus Write Value
  output logic          regf_w11_f0_wr_o,    // Bus Write Strobe
  // regf_w11_f2_o: bus=RW1S core=RW1C in_regf=True
  output logic [2-1:0]  regf_w11_f2_rval_o,  // Core Read Value
  input  wire  [2-1:0]  regf_w11_f2_wval_i,  // Core Write Value
  input  wire           regf_w11_f2_wr_i,    // Core Write Strobe
  // regf_w11_f4_o: bus=RW1S core=RW1S in_regf=False
  input  wire  [2-1:0]  regf_w11_f4_rbus_i,  // Bus Read Value
  output logic [2-1:0]  regf_w11_f4_wbus_o,  // Bus Write Value
  output logic          regf_w11_f4_wr_o,    // Bus Write Strobe
  // regf_w11_f6_o: bus=RW1S core=RW1S in_regf=True
  output logic [2-1:0]  regf_w11_f6_rval_o,  // Core Read Value
  input  wire  [2-1:0]  regf_w11_f6_wval_i,  // Core Write Value
  input  wire           regf_w11_f6_wr_i     // Core Write Strobe
);



  // ===================================
  //  Constant Declarations
  // ===================================
// Word: w0
  wire  [2-1:0] data_w0_f2_r  = 2'h0;
// Word: w1
  wire  [2-1:0] data_w1_f6_r  = 2'h0;

  // ===================================
  //  Flip-Flop Declarations
  // ===================================
// Word: w0
  wire  [2-1:0] data_w0_f6_r;
  wire  [2-1:0] data_w0_f10_r;
  wire  [2-1:0] data_w0_f14_r;
  wire  [2-1:0] data_w0_f18_r;
  wire  [2-1:0] data_w0_f22_r;
  wire  [2-1:0] data_w0_f26_r;
  wire  [2-1:0] data_w0_f30_r;
// Word: w1
  wire  [2-1:0] data_w1_f2_r;
  wire  [2-1:0] data_w1_f10_r;
  wire  [2-1:0] data_w1_f14_r;
  wire  [2-1:0] data_w1_f18_r;
  wire  [2-1:0] data_w1_f22_r;
  wire  [2-1:0] data_w1_f26_r;
  wire  [2-1:0] data_w1_f30_r;
// Word: w2
  wire  [2-1:0] data_w2_f2_r;
  wire  [2-1:0] data_w2_f6_r;
  wire  [2-1:0] data_w2_f10_r;
  wire  [2-1:0] data_w2_f14_r;
  wire  [2-1:0] data_w2_f18_r;
  wire  [2-1:0] data_w2_f22_r;
  wire  [2-1:0] data_w2_f26_r;
  wire  [2-1:0] data_w2_f30_r;
// Word: w3
  wire  [2-1:0] data_w3_f2_r;
  wire  [2-1:0] data_w3_f6_r;
  wire  [2-1:0] data_w3_f10_r;
  wire  [2-1:0] data_w3_f14_r;
  wire  [2-1:0] data_w3_f18_r;
  wire  [2-1:0] data_w3_f22_r;
  wire  [2-1:0] data_w3_f26_r;
  wire  [2-1:0] data_w3_f30_r;
// Word: w4
  wire  [2-1:0] data_w4_f2_r;
  wire  [2-1:0] data_w4_f6_r;
  wire  [2-1:0] data_w4_f10_r;
  wire  [2-1:0] data_w4_f14_r;
  wire  [2-1:0] data_w4_f18_r;
  wire  [2-1:0] data_w4_f22_r;
  wire  [2-1:0] data_w4_f26_r;
  wire  [2-1:0] data_w4_f30_r;
// Word: w5
  wire  [2-1:0] data_w5_f2_r;
  wire  [2-1:0] data_w5_f6_r;
  wire  [2-1:0] data_w5_f10_r;
  wire  [2-1:0] data_w5_f14_r;
  wire  [2-1:0] data_w5_f18_r;
  wire  [2-1:0] data_w5_f22_r;
  wire  [2-1:0] data_w5_f26_r;
  wire  [2-1:0] data_w5_f30_r;
// Word: w6
  wire  [2-1:0] data_w6_f2_r;
  wire  [2-1:0] data_w6_f6_r;
  wire  [2-1:0] data_w6_f10_r;
  wire  [2-1:0] data_w6_f14_r;
  wire  [2-1:0] data_w6_f18_r;
  wire  [2-1:0] data_w6_f22_r;
  wire  [2-1:0] data_w6_f26_r;
  wire  [2-1:0] data_w6_f30_r;
// Word: w7
  wire  [2-1:0] data_w7_f2_r;
  wire  [2-1:0] data_w7_f6_r;
  wire  [2-1:0] data_w7_f10_r;
  wire  [2-1:0] data_w7_f14_r;
  wire  [2-1:0] data_w7_f18_r;
  wire  [2-1:0] data_w7_f22_r;
  wire  [2-1:0] data_w7_f26_r;
  wire  [2-1:0] data_w7_f30_r;
// Word: w8
  wire  [2-1:0] data_w8_f2_r;
  wire  [2-1:0] data_w8_f6_r;
  wire  [2-1:0] data_w8_f10_r;
  wire  [2-1:0] data_w8_f14_r;
  wire  [2-1:0] data_w8_f18_r;
  wire  [2-1:0] data_w8_f22_r;
  wire  [2-1:0] data_w8_f26_r;
  wire  [2-1:0] data_w8_f30_r;
// Word: w9
  wire  [2-1:0] data_w9_f2_r;
  wire  [2-1:0] data_w9_f6_r;
  wire  [2-1:0] data_w9_f10_r;
  wire  [2-1:0] data_w9_f14_r;
  wire  [2-1:0] data_w9_f18_r;
  wire  [2-1:0] data_w9_f22_r;
  wire  [2-1:0] data_w9_f26_r;
  wire  [2-1:0] data_w9_f30_r;
// Word: w10
  wire  [2-1:0] data_w10_f2_r;
  wire  [2-1:0] data_w10_f6_r;
  wire  [2-1:0] data_w10_f10_r;
  wire  [2-1:0] data_w10_f14_r;
  wire  [2-1:0] data_w10_f18_r;
  wire  [2-1:0] data_w10_f22_r;
  wire  [2-1:0] data_w10_f26_r;
  wire  [2-1:0] data_w10_f30_r;
// Word: w11
  wire  [2-1:0] data_w11_f2_r;
  wire  [2-1:0] data_w11_f6_r;

  // ===================================
  //  Memory Matrix
  // ===================================
  // Word: +0 w0
    // Field f6 -/RC regf
      // if regf_w0_f6_rd_i: 2'h0
    // Field f10 -/RS regf
      // if regf_w0_f10_rd_i: 2'h3
    // Field f14 -/WO regf
      // if regf_w0_f14_wr_i: regf_w0_f14_wval_i
    // Field f18 -/W1C regf
      // if regf_w0_f18_wr_i: data_w0_f18_r&~regf_w0_f18_wval_i
    // Field f22 -/W1S regf
      // if regf_w0_f22_wr_i: data_w0_f22_r|regf_w0_f22_wval_i
    // Field f26 -/RW regf
      // if regf_w0_f26_wr_i: regf_w0_f26_wval_i
    // Field f30 -/RW1C regf
      // if regf_w0_f30_wr_i: data_w0_f30_r&~regf_w0_f30_wval_i
  // Word: +1 w1
    // Field f2 -/RW1S regf
      // if regf_w1_f2_wr_i: data_w1_f2_r|regf_w1_f2_wval_i
    // Field f10 RO/RC regf
      // if regf_w1_f10_rd_i: 2'h0
    // Field f14 RO/RS regf
      // if regf_w1_f14_rd_i: 2'h3
    // Field f18 RO/WO regf
      // if regf_w1_f18_wr_i: regf_w1_f18_wval_i
    // Field f22 RO/W1C regf
      // if regf_w1_f22_wr_i: data_w1_f22_r&~regf_w1_f22_wval_i
    // Field f26 RO/W1S regf
      // if regf_w1_f26_wr_i: data_w1_f26_r|regf_w1_f26_wval_i
    // Field f30 RO/RW regf
      // if regf_w1_f30_wr_i: regf_w1_f30_wval_i
  // Word: +2 w2
    // Field f2 RO/RW1C regf
      // if regf_w2_f2_wr_i: data_w2_f2_r&~regf_w2_f2_wval_i
    // Field f6 RO/RW1S regf
      // if regf_w2_f6_wr_i: data_w2_f6_r|regf_w2_f6_wval_i
    // Field f10 RC/RO regf
      // if bus_w2_rd_s: 2'h0
    // Field f14 RC/RC regf
      // if bus_w2_rd_s: 2'h0
      // if regf_w2_f14_rd_i: 2'h0
    // Field f18 RC/RS regf
      // if bus_w2_rd_s: 2'h0
      // if regf_w2_f18_rd_i: 2'h3
    // Field f22 RC/WO regf
      // if bus_w2_rd_s: 2'h0
      // if regf_w2_f22_wr_i: regf_w2_f22_wval_i
    // Field f26 RC/W1C regf
      // if bus_w2_rd_s: 2'h0
      // if regf_w2_f26_wr_i: data_w2_f26_r&~regf_w2_f26_wval_i
    // Field f30 RC/W1S regf
      // if bus_w2_rd_s: 2'h0
      // if regf_w2_f30_wr_i: data_w2_f30_r|regf_w2_f30_wval_i
  // Word: +3 w3
    // Field f2 RC/RW regf
      // if bus_w3_rd_s: 2'h0
      // if regf_w3_f2_wr_i: regf_w3_f2_wval_i
    // Field f6 RC/RW1C regf
      // if bus_w3_rd_s: 2'h0
      // if regf_w3_f6_wr_i: data_w3_f6_r&~regf_w3_f6_wval_i
    // Field f10 RC/RW1S regf
      // if bus_w3_rd_s: 2'h0
      // if regf_w3_f10_wr_i: data_w3_f10_r|regf_w3_f10_wval_i
    // Field f14 RS/RO regf
      // if bus_w3_rd_s: 2'h3
    // Field f18 RS/RC regf
      // if bus_w3_rd_s: 2'h3
      // if regf_w3_f18_rd_i: 2'h0
    // Field f22 RS/RS regf
      // if bus_w3_rd_s: 2'h3
      // if regf_w3_f22_rd_i: 2'h3
    // Field f26 RS/WO regf
      // if bus_w3_rd_s: 2'h3
      // if regf_w3_f26_wr_i: regf_w3_f26_wval_i
    // Field f30 RS/W1C regf
      // if bus_w3_rd_s: 2'h3
      // if regf_w3_f30_wr_i: data_w3_f30_r&~regf_w3_f30_wval_i
  // Word: +4 w4
    // Field f2 RS/W1S regf
      // if bus_w4_rd_s: 2'h3
      // if regf_w4_f2_wr_i: data_w4_f2_r|regf_w4_f2_wval_i
    // Field f6 RS/RW regf
      // if bus_w4_rd_s: 2'h3
      // if regf_w4_f6_wr_i: regf_w4_f6_wval_i
    // Field f10 RS/RW1C regf
      // if bus_w4_rd_s: 2'h3
      // if regf_w4_f10_wr_i: data_w4_f10_r&~regf_w4_f10_wval_i
    // Field f14 RS/RW1S regf
      // if bus_w4_rd_s: 2'h3
      // if regf_w4_f14_wr_i: data_w4_f14_r|regf_w4_f14_wval_i
    // Field f18 WO/RO regf
      // if bus_w4_wr_s: mem_wdata_i[19:18]
    // Field f22 WO/RC regf
      // if bus_w4_wr_s: mem_wdata_i[23:22]
      // if regf_w4_f22_rd_i: 2'h0
    // Field f26 WO/RS regf
      // if bus_w4_wr_s: mem_wdata_i[27:26]
      // if regf_w4_f26_rd_i: 2'h3
    // Field f30 WO/WO regf
      // if bus_w4_wr_s: mem_wdata_i[31:30]
      // if regf_w4_f30_wr_i: regf_w4_f30_wval_i
  // Word: +5 w5
    // Field f2 WO/W1C regf
      // if bus_w5_wr_s: mem_wdata_i[3:2]
      // if regf_w5_f2_wr_i: data_w5_f2_r&~regf_w5_f2_wval_i
    // Field f6 WO/W1S regf
      // if bus_w5_wr_s: mem_wdata_i[7:6]
      // if regf_w5_f6_wr_i: data_w5_f6_r|regf_w5_f6_wval_i
    // Field f10 WO/RW regf
      // if bus_w5_wr_s: mem_wdata_i[11:10]
      // if regf_w5_f10_wr_i: regf_w5_f10_wval_i
    // Field f14 WO/RW1C regf
      // if bus_w5_wr_s: mem_wdata_i[15:14]
      // if regf_w5_f14_wr_i: data_w5_f14_r&~regf_w5_f14_wval_i
    // Field f18 WO/RW1S regf
      // if bus_w5_wr_s: mem_wdata_i[19:18]
      // if regf_w5_f18_wr_i: data_w5_f18_r|regf_w5_f18_wval_i
    // Field f22 W1C/RO regf
      // if bus_w5_wr_s: data_w5_f22_r&~mem_wdata_i[23:22]
    // Field f26 W1C/RC regf
      // if bus_w5_wr_s: data_w5_f26_r&~mem_wdata_i[27:26]
      // if regf_w5_f26_rd_i: 2'h0
    // Field f30 W1C/RS regf
      // if bus_w5_wr_s: data_w5_f30_r&~mem_wdata_i[31:30]
      // if regf_w5_f30_rd_i: 2'h3
  // Word: +6 w6
    // Field f2 W1C/WO regf
      // if bus_w6_wr_s: data_w6_f2_r&~mem_wdata_i[3:2]
      // if regf_w6_f2_wr_i: regf_w6_f2_wval_i
    // Field f6 W1C/W1C regf
      // if bus_w6_wr_s: data_w6_f6_r&~mem_wdata_i[7:6]
      // if regf_w6_f6_wr_i: data_w6_f6_r&~regf_w6_f6_wval_i
    // Field f10 W1C/W1S regf
      // if bus_w6_wr_s: data_w6_f10_r&~mem_wdata_i[11:10]
      // if regf_w6_f10_wr_i: data_w6_f10_r|regf_w6_f10_wval_i
    // Field f14 W1C/RW regf
      // if bus_w6_wr_s: data_w6_f14_r&~mem_wdata_i[15:14]
      // if regf_w6_f14_wr_i: regf_w6_f14_wval_i
    // Field f18 W1C/RW1C regf
      // if bus_w6_wr_s: data_w6_f18_r&~mem_wdata_i[19:18]
      // if regf_w6_f18_wr_i: data_w6_f18_r&~regf_w6_f18_wval_i
    // Field f22 W1C/RW1S regf
      // if bus_w6_wr_s: data_w6_f22_r&~mem_wdata_i[23:22]
      // if regf_w6_f22_wr_i: data_w6_f22_r|regf_w6_f22_wval_i
    // Field f26 W1S/RO regf
      // if bus_w6_wr_s: data_w6_f26_r|mem_wdata_i[27:26]
    // Field f30 W1S/RC regf
      // if bus_w6_wr_s: data_w6_f30_r|mem_wdata_i[31:30]
      // if regf_w6_f30_rd_i: 2'h0
  // Word: +7 w7
    // Field f2 W1S/RS regf
      // if bus_w7_wr_s: data_w7_f2_r|mem_wdata_i[3:2]
      // if regf_w7_f2_rd_i: 2'h3
    // Field f6 W1S/WO regf
      // if bus_w7_wr_s: data_w7_f6_r|mem_wdata_i[7:6]
      // if regf_w7_f6_wr_i: regf_w7_f6_wval_i
    // Field f10 W1S/W1C regf
      // if bus_w7_wr_s: data_w7_f10_r|mem_wdata_i[11:10]
      // if regf_w7_f10_wr_i: data_w7_f10_r&~regf_w7_f10_wval_i
    // Field f14 W1S/W1S regf
      // if bus_w7_wr_s: data_w7_f14_r|mem_wdata_i[15:14]
      // if regf_w7_f14_wr_i: data_w7_f14_r|regf_w7_f14_wval_i
    // Field f18 W1S/RW regf
      // if bus_w7_wr_s: data_w7_f18_r|mem_wdata_i[19:18]
      // if regf_w7_f18_wr_i: regf_w7_f18_wval_i
    // Field f22 W1S/RW1C regf
      // if bus_w7_wr_s: data_w7_f22_r|mem_wdata_i[23:22]
      // if regf_w7_f22_wr_i: data_w7_f22_r&~regf_w7_f22_wval_i
    // Field f26 W1S/RW1S regf
      // if bus_w7_wr_s: data_w7_f26_r|mem_wdata_i[27:26]
      // if regf_w7_f26_wr_i: data_w7_f26_r|regf_w7_f26_wval_i
    // Field f30 RW/RO regf
      // if bus_w7_wr_s: mem_wdata_i[31:30]
  // Word: +8 w8
    // Field f2 RW/RC regf
      // if bus_w8_wr_s: mem_wdata_i[3:2]
      // if regf_w8_f2_rd_i: 2'h0
    // Field f6 RW/RS regf
      // if bus_w8_wr_s: mem_wdata_i[7:6]
      // if regf_w8_f6_rd_i: 2'h3
    // Field f10 RW/WO regf
      // if bus_w8_wr_s: mem_wdata_i[11:10]
      // if regf_w8_f10_wr_i: regf_w8_f10_wval_i
    // Field f14 RW/W1C regf
      // if bus_w8_wr_s: mem_wdata_i[15:14]
      // if regf_w8_f14_wr_i: data_w8_f14_r&~regf_w8_f14_wval_i
    // Field f18 RW/W1S regf
      // if bus_w8_wr_s: mem_wdata_i[19:18]
      // if regf_w8_f18_wr_i: data_w8_f18_r|regf_w8_f18_wval_i
    // Field f22 RW/RW regf
      // if bus_w8_wr_s: mem_wdata_i[23:22]
      // if regf_w8_f22_wr_i: regf_w8_f22_wval_i
    // Field f26 RW/RW1C regf
      // if bus_w8_wr_s: mem_wdata_i[27:26]
      // if regf_w8_f26_wr_i: data_w8_f26_r&~regf_w8_f26_wval_i
    // Field f30 RW/RW1S regf
      // if bus_w8_wr_s: mem_wdata_i[31:30]
      // if regf_w8_f30_wr_i: data_w8_f30_r|regf_w8_f30_wval_i
  // Word: +9 w9
    // Field f2 RW1C/RO regf
      // if bus_w9_wr_s: data_w9_f2_r&~mem_wdata_i[3:2]
    // Field f6 RW1C/RC regf
      // if bus_w9_wr_s: data_w9_f6_r&~mem_wdata_i[7:6]
      // if regf_w9_f6_rd_i: 2'h0
    // Field f10 RW1C/RS regf
      // if bus_w9_wr_s: data_w9_f10_r&~mem_wdata_i[11:10]
      // if regf_w9_f10_rd_i: 2'h3
    // Field f14 RW1C/WO regf
      // if bus_w9_wr_s: data_w9_f14_r&~mem_wdata_i[15:14]
      // if regf_w9_f14_wr_i: regf_w9_f14_wval_i
    // Field f18 RW1C/W1C regf
      // if bus_w9_wr_s: data_w9_f18_r&~mem_wdata_i[19:18]
      // if regf_w9_f18_wr_i: data_w9_f18_r&~regf_w9_f18_wval_i
    // Field f22 RW1C/W1S regf
      // if bus_w9_wr_s: data_w9_f22_r&~mem_wdata_i[23:22]
      // if regf_w9_f22_wr_i: data_w9_f22_r|regf_w9_f22_wval_i
    // Field f26 RW1C/RW regf
      // if bus_w9_wr_s: data_w9_f26_r&~mem_wdata_i[27:26]
      // if regf_w9_f26_wr_i: regf_w9_f26_wval_i
    // Field f30 RW1C/RW1C regf
      // if bus_w9_wr_s: data_w9_f30_r&~mem_wdata_i[31:30]
      // if regf_w9_f30_wr_i: data_w9_f30_r&~regf_w9_f30_wval_i
  // Word: +10 w10
    // Field f2 RW1C/RW1S regf
      // if bus_w10_wr_s: data_w10_f2_r&~mem_wdata_i[3:2]
      // if regf_w10_f2_wr_i: data_w10_f2_r|regf_w10_f2_wval_i
    // Field f6 RW1S/RO regf
      // if bus_w10_wr_s: data_w10_f6_r|mem_wdata_i[7:6]
    // Field f10 RW1S/RC regf
      // if bus_w10_wr_s: data_w10_f10_r|mem_wdata_i[11:10]
      // if regf_w10_f10_rd_i: 2'h0
    // Field f14 RW1S/RS regf
      // if bus_w10_wr_s: data_w10_f14_r|mem_wdata_i[15:14]
      // if regf_w10_f14_rd_i: 2'h3
    // Field f18 RW1S/WO regf
      // if bus_w10_wr_s: data_w10_f18_r|mem_wdata_i[19:18]
      // if regf_w10_f18_wr_i: regf_w10_f18_wval_i
    // Field f22 RW1S/W1C regf
      // if bus_w10_wr_s: data_w10_f22_r|mem_wdata_i[23:22]
      // if regf_w10_f22_wr_i: data_w10_f22_r&~regf_w10_f22_wval_i
    // Field f26 RW1S/W1S regf
      // if bus_w10_wr_s: data_w10_f26_r|mem_wdata_i[27:26]
      // if regf_w10_f26_wr_i: data_w10_f26_r|regf_w10_f26_wval_i
    // Field f30 RW1S/RW regf
      // if bus_w10_wr_s: data_w10_f30_r|mem_wdata_i[31:30]
      // if regf_w10_f30_wr_i: regf_w10_f30_wval_i
  // Word: +11 w11
    // Field f2 RW1S/RW1C regf
      // if bus_w11_wr_s: data_w11_f2_r|mem_wdata_i[3:2]
      // if regf_w11_f2_wr_i: data_w11_f2_r&~regf_w11_f2_wval_i
    // Field f6 RW1S/RW1S regf
      // if bus_w11_wr_s: data_w11_f6_r|mem_wdata_i[7:6]
      // if regf_w11_f6_wr_i: data_w11_f6_r|regf_w11_f6_wval_i


  // ===================================
  //  Bus Strobe-Mux
  // ===================================
  // Word: +3 w3
  // Word: +4 w4
  // Word: +5 w5
  // Word: +6 w6
  // Word: +7 w7
  // Word: +8 w8
  // Word: +9 w9
  // Word: +10 w10
  // Word: +11 w11

  // ===================================
  //  Bus Read-Mux
  // ===================================
  // Word: +1 w1
  // Word: +2 w2
  // Word: +3 w3
  // Word: +4 w4
  // Word: +7 w7
  // Word: +8 w8
  // Word: +9 w9
  // Word: +10 w10
  // Word: +11 w11

endmodule // full_regf
