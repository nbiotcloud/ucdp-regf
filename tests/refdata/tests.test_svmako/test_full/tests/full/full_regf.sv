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
// Module:     tests.full_regf
// Data Model: tests.test_svmako.RegfMod
//
//
// Offset    Word     Field    Bus/Core    Reset    Const    Impl
// --------  -------  -------  ----------  -------  -------  ------
// +0        w0
//           [1:0]    .f0      -/RO        0x0      True     regf
//           [3:2]    .f2      -/RC        0x0      False    core
//           [5:4]    .f4      -/RC        0x0      False    regf
//           [7:6]    .f6      -/RS        0x0      False    core
//           [9:8]    .f8      -/RS        0x0      False    regf
//           [11:10]  .f10     -/RT        0x0      False    core
//           [13:12]  .f12     -/RT        0x0      False    regf
//           [15:14]  .f14     -/RP        0x0      True     regf
//           [17:16]  .f16     -/WO        0x0      False    core
//           [19:18]  .f18     -/WO        0x0      False    regf
//           [21:20]  .f20     -/W0C       0x0      False    core
//           [23:22]  .f22     -/W0C       0x0      False    regf
//           [25:24]  .f24     -/W0S       0x0      False    core
//           [27:26]  .f26     -/W0S       0x0      False    regf
//           [29:28]  .f28     -/W1C       0x0      False    core
//           [31:30]  .f30     -/W1C       0x0      False    regf
// +1        w1
//           [1:0]    .f0      -/W1S       0x0      False    core
//           [3:2]    .f2      -/W1S       0x0      False    regf
//           [5:4]    .f4      -/WL        0x0      False    core
//           [7:6]    .f6      -/WL        0x0      False    regf
//           [9:8]    .f8      -/RW        0x0      False    core
//           [11:10]  .f10     -/RW        0x0      False    regf
//           [13:12]  .f12     -/RW0C      0x0      False    core
//           [15:14]  .f14     -/RW0C      0x0      False    regf
//           [17:16]  .f16     -/RW0S      0x0      False    core
//           [19:18]  .f18     -/RW0S      0x0      False    regf
//           [21:20]  .f20     -/RW1C      0x0      False    core
//           [23:22]  .f22     -/RW1C      0x0      False    regf
//           [25:24]  .f24     -/RW1S      0x0      False    core
//           [27:26]  .f26     -/RW1S      0x0      False    regf
//           [29:28]  .f28     -/RWL       0x0      False    core
//           [31:30]  .f30     -/RWL       0x0      False    regf
// +2        w2
//           [1:0]    .f0      RO/RO       0x0      True     regf
//           [3:2]    .f2      RO/RC       0x0      False    core
//           [5:4]    .f4      RO/RC       0x0      False    regf
//           [7:6]    .f6      RO/RS       0x0      False    core
//           [9:8]    .f8      RO/RS       0x0      False    regf
//           [11:10]  .f10     RO/RT       0x0      False    core
//           [13:12]  .f12     RO/RT       0x0      False    regf
//           [15:14]  .f14     RO/RP       0x0      True     regf
//           [17:16]  .f16     RO/WO       0x0      False    core
//           [19:18]  .f18     RO/WO       0x0      False    regf
//           [21:20]  .f20     RO/W0C      0x0      False    core
//           [23:22]  .f22     RO/W0C      0x0      False    regf
//           [25:24]  .f24     RO/W0S      0x0      False    core
//           [27:26]  .f26     RO/W0S      0x0      False    regf
//           [29:28]  .f28     RO/W1C      0x0      False    core
//           [31:30]  .f30     RO/W1C      0x0      False    regf
// +3        w3
//           [1:0]    .f0      RO/W1S      0x0      False    core
//           [3:2]    .f2      RO/W1S      0x0      False    regf
//           [5:4]    .f4      RO/WL       0x0      False    core
//           [7:6]    .f6      RO/WL       0x0      False    regf
//           [9:8]    .f8      RO/RW       0x0      False    core
//           [11:10]  .f10     RO/RW       0x0      False    regf
//           [13:12]  .f12     RO/RW0C     0x0      False    core
//           [15:14]  .f14     RO/RW0C     0x0      False    regf
//           [17:16]  .f16     RO/RW0S     0x0      False    core
//           [19:18]  .f18     RO/RW0S     0x0      False    regf
//           [21:20]  .f20     RO/RW1C     0x0      False    core
//           [23:22]  .f22     RO/RW1C     0x0      False    regf
//           [25:24]  .f24     RO/RW1S     0x0      False    core
//           [27:26]  .f26     RO/RW1S     0x0      False    regf
//           [29:28]  .f28     RO/RWL      0x0      False    core
//           [31:30]  .f30     RO/RWL      0x0      False    regf
// +4        w4
//           [1:0]    .f0      RC/RO       0x0      False    core
//           [3:2]    .f2      RC/RO       0x0      False    regf
//           [5:4]    .f4      RC/RC       0x0      False    core
//           [7:6]    .f6      RC/RC       0x0      False    regf
//           [9:8]    .f8      RC/RS       0x0      False    core
//           [11:10]  .f10     RC/RS       0x0      False    regf
//           [13:12]  .f12     RC/RT       0x0      False    core
//           [15:14]  .f14     RC/RT       0x0      False    regf
//           [17:16]  .f16     RC/RP       0x0      False    core
//           [19:18]  .f18     RC/RP       0x0      False    regf
//           [21:20]  .f20     RC/WO       0x0      False    core
//           [23:22]  .f22     RC/WO       0x0      False    regf
//           [25:24]  .f24     RC/W0C      0x0      False    core
//           [27:26]  .f26     RC/W0C      0x0      False    regf
//           [29:28]  .f28     RC/W0S      0x0      False    core
//           [31:30]  .f30     RC/W0S      0x0      False    regf
// +5        w5
//           [1:0]    .f0      RC/W1C      0x0      False    core
//           [3:2]    .f2      RC/W1C      0x0      False    regf
//           [5:4]    .f4      RC/W1S      0x0      False    core
//           [7:6]    .f6      RC/W1S      0x0      False    regf
//           [9:8]    .f8      RC/WL       0x0      False    core
//           [11:10]  .f10     RC/WL       0x0      False    regf
//           [13:12]  .f12     RC/RW       0x0      False    core
//           [15:14]  .f14     RC/RW       0x0      False    regf
//           [17:16]  .f16     RC/RW0C     0x0      False    core
//           [19:18]  .f18     RC/RW0C     0x0      False    regf
//           [21:20]  .f20     RC/RW0S     0x0      False    core
//           [23:22]  .f22     RC/RW0S     0x0      False    regf
//           [25:24]  .f24     RC/RW1C     0x0      False    core
//           [27:26]  .f26     RC/RW1C     0x0      False    regf
//           [29:28]  .f28     RC/RW1S     0x0      False    core
//           [31:30]  .f30     RC/RW1S     0x0      False    regf
// +6        w6
//           [1:0]    .f0      RC/RWL      0x0      False    core
//           [3:2]    .f2      RC/RWL      0x0      False    regf
//           [5:4]    .f4      RS/RO       0x0      False    core
//           [7:6]    .f6      RS/RO       0x0      False    regf
//           [9:8]    .f8      RS/RC       0x0      False    core
//           [11:10]  .f10     RS/RC       0x0      False    regf
//           [13:12]  .f12     RS/RS       0x0      False    core
//           [15:14]  .f14     RS/RS       0x0      False    regf
//           [17:16]  .f16     RS/RT       0x0      False    core
//           [19:18]  .f18     RS/RT       0x0      False    regf
//           [21:20]  .f20     RS/RP       0x0      False    core
//           [23:22]  .f22     RS/RP       0x0      False    regf
//           [25:24]  .f24     RS/WO       0x0      False    core
//           [27:26]  .f26     RS/WO       0x0      False    regf
//           [29:28]  .f28     RS/W0C      0x0      False    core
//           [31:30]  .f30     RS/W0C      0x0      False    regf
// +7        w7
//           [1:0]    .f0      RS/W0S      0x0      False    core
//           [3:2]    .f2      RS/W0S      0x0      False    regf
//           [5:4]    .f4      RS/W1C      0x0      False    core
//           [7:6]    .f6      RS/W1C      0x0      False    regf
//           [9:8]    .f8      RS/W1S      0x0      False    core
//           [11:10]  .f10     RS/W1S      0x0      False    regf
//           [13:12]  .f12     RS/WL       0x0      False    core
//           [15:14]  .f14     RS/WL       0x0      False    regf
//           [17:16]  .f16     RS/RW       0x0      False    core
//           [19:18]  .f18     RS/RW       0x0      False    regf
//           [21:20]  .f20     RS/RW0C     0x0      False    core
//           [23:22]  .f22     RS/RW0C     0x0      False    regf
//           [25:24]  .f24     RS/RW0S     0x0      False    core
//           [27:26]  .f26     RS/RW0S     0x0      False    regf
//           [29:28]  .f28     RS/RW1C     0x0      False    core
//           [31:30]  .f30     RS/RW1C     0x0      False    regf
// +8        w8
//           [1:0]    .f0      RS/RW1S     0x0      False    core
//           [3:2]    .f2      RS/RW1S     0x0      False    regf
//           [5:4]    .f4      RS/RWL      0x0      False    core
//           [7:6]    .f6      RS/RWL      0x0      False    regf
//           [9:8]    .f8      RT/RO       0x0      False    core
//           [11:10]  .f10     RT/RO       0x0      False    regf
//           [13:12]  .f12     RT/RC       0x0      False    core
//           [15:14]  .f14     RT/RC       0x0      False    regf
//           [17:16]  .f16     RT/RS       0x0      False    core
//           [19:18]  .f18     RT/RS       0x0      False    regf
//           [21:20]  .f20     RT/RT       0x0      False    core
//           [23:22]  .f22     RT/RT       0x0      False    regf
//           [25:24]  .f24     RT/RP       0x0      False    core
//           [27:26]  .f26     RT/RP       0x0      False    regf
//           [29:28]  .f28     RT/WO       0x0      False    core
//           [31:30]  .f30     RT/WO       0x0      False    regf
// +9        w9
//           [1:0]    .f0      RT/W0C      0x0      False    core
//           [3:2]    .f2      RT/W0C      0x0      False    regf
//           [5:4]    .f4      RT/W0S      0x0      False    core
//           [7:6]    .f6      RT/W0S      0x0      False    regf
//           [9:8]    .f8      RT/W1C      0x0      False    core
//           [11:10]  .f10     RT/W1C      0x0      False    regf
//           [13:12]  .f12     RT/W1S      0x0      False    core
//           [15:14]  .f14     RT/W1S      0x0      False    regf
//           [17:16]  .f16     RT/WL       0x0      False    core
//           [19:18]  .f18     RT/WL       0x0      False    regf
//           [21:20]  .f20     RT/RW       0x0      False    core
//           [23:22]  .f22     RT/RW       0x0      False    regf
//           [25:24]  .f24     RT/RW0C     0x0      False    core
//           [27:26]  .f26     RT/RW0C     0x0      False    regf
//           [29:28]  .f28     RT/RW0S     0x0      False    core
//           [31:30]  .f30     RT/RW0S     0x0      False    regf
// +10       w10
//           [1:0]    .f0      RT/RW1C     0x0      False    core
//           [3:2]    .f2      RT/RW1C     0x0      False    regf
//           [5:4]    .f4      RT/RW1S     0x0      False    core
//           [7:6]    .f6      RT/RW1S     0x0      False    regf
//           [9:8]    .f8      RT/RWL      0x0      False    core
//           [11:10]  .f10     RT/RWL      0x0      False    regf
//           [13:12]  .f12     RP/RO       0x0      True     regf
//           [15:14]  .f14     RP/RC       0x0      False    core
//           [17:16]  .f16     RP/RC       0x0      False    regf
//           [19:18]  .f18     RP/RS       0x0      False    core
//           [21:20]  .f20     RP/RS       0x0      False    regf
//           [23:22]  .f22     RP/RT       0x0      False    core
//           [25:24]  .f24     RP/RT       0x0      False    regf
//           [27:26]  .f26     RP/RP       0x0      True     regf
//           [29:28]  .f28     RP/WO       0x0      False    core
//           [31:30]  .f30     RP/WO       0x0      False    regf
// +11       w11
//           [1:0]    .f0      RP/W0C      0x0      False    core
//           [3:2]    .f2      RP/W0C      0x0      False    regf
//           [5:4]    .f4      RP/W0S      0x0      False    core
//           [7:6]    .f6      RP/W0S      0x0      False    regf
//           [9:8]    .f8      RP/W1C      0x0      False    core
//           [11:10]  .f10     RP/W1C      0x0      False    regf
//           [13:12]  .f12     RP/W1S      0x0      False    core
//           [15:14]  .f14     RP/W1S      0x0      False    regf
//           [17:16]  .f16     RP/WL       0x0      False    core
//           [19:18]  .f18     RP/WL       0x0      False    regf
//           [21:20]  .f20     RP/RW       0x0      False    core
//           [23:22]  .f22     RP/RW       0x0      False    regf
//           [25:24]  .f24     RP/RW0C     0x0      False    core
//           [27:26]  .f26     RP/RW0C     0x0      False    regf
//           [29:28]  .f28     RP/RW0S     0x0      False    core
//           [31:30]  .f30     RP/RW0S     0x0      False    regf
// +12       w12
//           [1:0]    .f0      RP/RW1C     0x0      False    core
//           [3:2]    .f2      RP/RW1C     0x0      False    regf
//           [5:4]    .f4      RP/RW1S     0x0      False    core
//           [7:6]    .f6      RP/RW1S     0x0      False    regf
//           [9:8]    .f8      RP/RWL      0x0      False    core
//           [11:10]  .f10     RP/RWL      0x0      False    regf
//           [13:12]  .f12     WO/RO       0x0      False    core
//           [15:14]  .f14     WO/RO       0x0      False    regf
//           [17:16]  .f16     WO/RC       0x0      False    core
//           [19:18]  .f18     WO/RC       0x0      False    regf
//           [21:20]  .f20     WO/RS       0x0      False    core
//           [23:22]  .f22     WO/RS       0x0      False    regf
//           [25:24]  .f24     WO/RT       0x0      False    core
//           [27:26]  .f26     WO/RT       0x0      False    regf
//           [29:28]  .f28     WO/RP       0x0      False    core
//           [31:30]  .f30     WO/RP       0x0      False    regf
// +13       w13
//           [1:0]    .f0      WO/WO       0x0      False    core
//           [3:2]    .f2      WO/WO       0x0      False    regf
//           [5:4]    .f4      WO/W0C      0x0      False    core
//           [7:6]    .f6      WO/W0C      0x0      False    regf
//           [9:8]    .f8      WO/W0S      0x0      False    core
//           [11:10]  .f10     WO/W0S      0x0      False    regf
//           [13:12]  .f12     WO/W1C      0x0      False    core
//           [15:14]  .f14     WO/W1C      0x0      False    regf
//           [17:16]  .f16     WO/W1S      0x0      False    core
//           [19:18]  .f18     WO/W1S      0x0      False    regf
//           [21:20]  .f20     WO/WL       0x0      False    core
//           [23:22]  .f22     WO/WL       0x0      False    regf
//           [25:24]  .f24     WO/RW       0x0      False    core
//           [27:26]  .f26     WO/RW       0x0      False    regf
//           [29:28]  .f28     WO/RW0C     0x0      False    core
//           [31:30]  .f30     WO/RW0C     0x0      False    regf
// +14       w14
//           [1:0]    .f0      WO/RW0S     0x0      False    core
//           [3:2]    .f2      WO/RW0S     0x0      False    regf
//           [5:4]    .f4      WO/RW1C     0x0      False    core
//           [7:6]    .f6      WO/RW1C     0x0      False    regf
//           [9:8]    .f8      WO/RW1S     0x0      False    core
//           [11:10]  .f10     WO/RW1S     0x0      False    regf
//           [13:12]  .f12     WO/RWL      0x0      False    core
//           [15:14]  .f14     WO/RWL      0x0      False    regf
//           [17:16]  .f16     W0C/RO      0x0      False    core
//           [19:18]  .f18     W0C/RO      0x0      False    regf
//           [21:20]  .f20     W0C/RC      0x0      False    core
//           [23:22]  .f22     W0C/RC      0x0      False    regf
//           [25:24]  .f24     W0C/RS      0x0      False    core
//           [27:26]  .f26     W0C/RS      0x0      False    regf
//           [29:28]  .f28     W0C/RT      0x0      False    core
//           [31:30]  .f30     W0C/RT      0x0      False    regf
// +15       w15
//           [1:0]    .f0      W0C/RP      0x0      False    core
//           [3:2]    .f2      W0C/RP      0x0      False    regf
//           [5:4]    .f4      W0C/WO      0x0      False    core
//           [7:6]    .f6      W0C/WO      0x0      False    regf
//           [9:8]    .f8      W0C/W0C     0x0      False    core
//           [11:10]  .f10     W0C/W0C     0x0      False    regf
//           [13:12]  .f12     W0C/W0S     0x0      False    core
//           [15:14]  .f14     W0C/W0S     0x0      False    regf
//           [17:16]  .f16     W0C/W1C     0x0      False    core
//           [19:18]  .f18     W0C/W1C     0x0      False    regf
//           [21:20]  .f20     W0C/W1S     0x0      False    core
//           [23:22]  .f22     W0C/W1S     0x0      False    regf
//           [25:24]  .f24     W0C/WL      0x0      False    core
//           [27:26]  .f26     W0C/WL      0x0      False    regf
//           [29:28]  .f28     W0C/RW      0x0      False    core
//           [31:30]  .f30     W0C/RW      0x0      False    regf
// +16       w16
//           [1:0]    .f0      W0C/RW0C    0x0      False    core
//           [3:2]    .f2      W0C/RW0C    0x0      False    regf
//           [5:4]    .f4      W0C/RW0S    0x0      False    core
//           [7:6]    .f6      W0C/RW0S    0x0      False    regf
//           [9:8]    .f8      W0C/RW1C    0x0      False    core
//           [11:10]  .f10     W0C/RW1C    0x0      False    regf
//           [13:12]  .f12     W0C/RW1S    0x0      False    core
//           [15:14]  .f14     W0C/RW1S    0x0      False    regf
//           [17:16]  .f16     W0C/RWL     0x0      False    core
//           [19:18]  .f18     W0C/RWL     0x0      False    regf
//           [21:20]  .f20     W0S/RO      0x0      False    core
//           [23:22]  .f22     W0S/RO      0x0      False    regf
//           [25:24]  .f24     W0S/RC      0x0      False    core
//           [27:26]  .f26     W0S/RC      0x0      False    regf
//           [29:28]  .f28     W0S/RS      0x0      False    core
//           [31:30]  .f30     W0S/RS      0x0      False    regf
// +17       w17
//           [1:0]    .f0      W0S/RT      0x0      False    core
//           [3:2]    .f2      W0S/RT      0x0      False    regf
//           [5:4]    .f4      W0S/RP      0x0      False    core
//           [7:6]    .f6      W0S/RP      0x0      False    regf
//           [9:8]    .f8      W0S/WO      0x0      False    core
//           [11:10]  .f10     W0S/WO      0x0      False    regf
//           [13:12]  .f12     W0S/W0C     0x0      False    core
//           [15:14]  .f14     W0S/W0C     0x0      False    regf
//           [17:16]  .f16     W0S/W0S     0x0      False    core
//           [19:18]  .f18     W0S/W0S     0x0      False    regf
//           [21:20]  .f20     W0S/W1C     0x0      False    core
//           [23:22]  .f22     W0S/W1C     0x0      False    regf
//           [25:24]  .f24     W0S/W1S     0x0      False    core
//           [27:26]  .f26     W0S/W1S     0x0      False    regf
//           [29:28]  .f28     W0S/WL      0x0      False    core
//           [31:30]  .f30     W0S/WL      0x0      False    regf
// +18       w18
//           [1:0]    .f0      W0S/RW      0x0      False    core
//           [3:2]    .f2      W0S/RW      0x0      False    regf
//           [5:4]    .f4      W0S/RW0C    0x0      False    core
//           [7:6]    .f6      W0S/RW0C    0x0      False    regf
//           [9:8]    .f8      W0S/RW0S    0x0      False    core
//           [11:10]  .f10     W0S/RW0S    0x0      False    regf
//           [13:12]  .f12     W0S/RW1C    0x0      False    core
//           [15:14]  .f14     W0S/RW1C    0x0      False    regf
//           [17:16]  .f16     W0S/RW1S    0x0      False    core
//           [19:18]  .f18     W0S/RW1S    0x0      False    regf
//           [21:20]  .f20     W0S/RWL     0x0      False    core
//           [23:22]  .f22     W0S/RWL     0x0      False    regf
//           [25:24]  .f24     W1C/RO      0x0      False    core
//           [27:26]  .f26     W1C/RO      0x0      False    regf
//           [29:28]  .f28     W1C/RC      0x0      False    core
//           [31:30]  .f30     W1C/RC      0x0      False    regf
// +19       w19
//           [1:0]    .f0      W1C/RS      0x0      False    core
//           [3:2]    .f2      W1C/RS      0x0      False    regf
//           [5:4]    .f4      W1C/RT      0x0      False    core
//           [7:6]    .f6      W1C/RT      0x0      False    regf
//           [9:8]    .f8      W1C/RP      0x0      False    core
//           [11:10]  .f10     W1C/RP      0x0      False    regf
//           [13:12]  .f12     W1C/WO      0x0      False    core
//           [15:14]  .f14     W1C/WO      0x0      False    regf
//           [17:16]  .f16     W1C/W0C     0x0      False    core
//           [19:18]  .f18     W1C/W0C     0x0      False    regf
//           [21:20]  .f20     W1C/W0S     0x0      False    core
//           [23:22]  .f22     W1C/W0S     0x0      False    regf
//           [25:24]  .f24     W1C/W1C     0x0      False    core
//           [27:26]  .f26     W1C/W1C     0x0      False    regf
//           [29:28]  .f28     W1C/W1S     0x0      False    core
//           [31:30]  .f30     W1C/W1S     0x0      False    regf
// +20       w20
//           [1:0]    .f0      W1C/WL      0x0      False    core
//           [3:2]    .f2      W1C/WL      0x0      False    regf
//           [5:4]    .f4      W1C/RW      0x0      False    core
//           [7:6]    .f6      W1C/RW      0x0      False    regf
//           [9:8]    .f8      W1C/RW0C    0x0      False    core
//           [11:10]  .f10     W1C/RW0C    0x0      False    regf
//           [13:12]  .f12     W1C/RW0S    0x0      False    core
//           [15:14]  .f14     W1C/RW0S    0x0      False    regf
//           [17:16]  .f16     W1C/RW1C    0x0      False    core
//           [19:18]  .f18     W1C/RW1C    0x0      False    regf
//           [21:20]  .f20     W1C/RW1S    0x0      False    core
//           [23:22]  .f22     W1C/RW1S    0x0      False    regf
//           [25:24]  .f24     W1C/RWL     0x0      False    core
//           [27:26]  .f26     W1C/RWL     0x0      False    regf
//           [29:28]  .f28     W1S/RO      0x0      False    core
//           [31:30]  .f30     W1S/RO      0x0      False    regf
// +21       w21
//           [1:0]    .f0      W1S/RC      0x0      False    core
//           [3:2]    .f2      W1S/RC      0x0      False    regf
//           [5:4]    .f4      W1S/RS      0x0      False    core
//           [7:6]    .f6      W1S/RS      0x0      False    regf
//           [9:8]    .f8      W1S/RT      0x0      False    core
//           [11:10]  .f10     W1S/RT      0x0      False    regf
//           [13:12]  .f12     W1S/RP      0x0      False    core
//           [15:14]  .f14     W1S/RP      0x0      False    regf
//           [17:16]  .f16     W1S/WO      0x0      False    core
//           [19:18]  .f18     W1S/WO      0x0      False    regf
//           [21:20]  .f20     W1S/W0C     0x0      False    core
//           [23:22]  .f22     W1S/W0C     0x0      False    regf
//           [25:24]  .f24     W1S/W0S     0x0      False    core
//           [27:26]  .f26     W1S/W0S     0x0      False    regf
//           [29:28]  .f28     W1S/W1C     0x0      False    core
//           [31:30]  .f30     W1S/W1C     0x0      False    regf
// +22       w22
//           [1:0]    .f0      W1S/W1S     0x0      False    core
//           [3:2]    .f2      W1S/W1S     0x0      False    regf
//           [5:4]    .f4      W1S/WL      0x0      False    core
//           [7:6]    .f6      W1S/WL      0x0      False    regf
//           [9:8]    .f8      W1S/RW      0x0      False    core
//           [11:10]  .f10     W1S/RW      0x0      False    regf
//           [13:12]  .f12     W1S/RW0C    0x0      False    core
//           [15:14]  .f14     W1S/RW0C    0x0      False    regf
//           [17:16]  .f16     W1S/RW0S    0x0      False    core
//           [19:18]  .f18     W1S/RW0S    0x0      False    regf
//           [21:20]  .f20     W1S/RW1C    0x0      False    core
//           [23:22]  .f22     W1S/RW1C    0x0      False    regf
//           [25:24]  .f24     W1S/RW1S    0x0      False    core
//           [27:26]  .f26     W1S/RW1S    0x0      False    regf
//           [29:28]  .f28     W1S/RWL     0x0      False    core
//           [31:30]  .f30     W1S/RWL     0x0      False    regf
// +23       w23
//           [1:0]    .f0      WL/RO       0x0      False    core
//           [3:2]    .f2      WL/RO       0x0      False    regf
//           [5:4]    .f4      WL/RC       0x0      False    core
//           [7:6]    .f6      WL/RC       0x0      False    regf
//           [9:8]    .f8      WL/RS       0x0      False    core
//           [11:10]  .f10     WL/RS       0x0      False    regf
//           [13:12]  .f12     WL/RT       0x0      False    core
//           [15:14]  .f14     WL/RT       0x0      False    regf
//           [17:16]  .f16     WL/RP       0x0      False    core
//           [19:18]  .f18     WL/RP       0x0      False    regf
//           [21:20]  .f20     WL/WO       0x0      False    core
//           [23:22]  .f22     WL/WO       0x0      False    regf
//           [25:24]  .f24     WL/W0C      0x0      False    core
//           [27:26]  .f26     WL/W0C      0x0      False    regf
//           [29:28]  .f28     WL/W0S      0x0      False    core
//           [31:30]  .f30     WL/W0S      0x0      False    regf
// +24       w24
//           [1:0]    .f0      WL/W1C      0x0      False    core
//           [3:2]    .f2      WL/W1C      0x0      False    regf
//           [5:4]    .f4      WL/W1S      0x0      False    core
//           [7:6]    .f6      WL/W1S      0x0      False    regf
//           [9:8]    .f8      WL/WL       0x0      False    core
//           [11:10]  .f10     WL/WL       0x0      False    regf
//           [13:12]  .f12     WL/RW       0x0      False    core
//           [15:14]  .f14     WL/RW       0x0      False    regf
//           [17:16]  .f16     WL/RW0C     0x0      False    core
//           [19:18]  .f18     WL/RW0C     0x0      False    regf
//           [21:20]  .f20     WL/RW0S     0x0      False    core
//           [23:22]  .f22     WL/RW0S     0x0      False    regf
//           [25:24]  .f24     WL/RW1C     0x0      False    core
//           [27:26]  .f26     WL/RW1C     0x0      False    regf
//           [29:28]  .f28     WL/RW1S     0x0      False    core
//           [31:30]  .f30     WL/RW1S     0x0      False    regf
// +25       w25
//           [1:0]    .f0      WL/RWL      0x0      False    core
//           [3:2]    .f2      WL/RWL      0x0      False    regf
//           [5:4]    .f4      RW/RO       0x0      False    core
//           [7:6]    .f6      RW/RO       0x0      False    regf
//           [9:8]    .f8      RW/RC       0x0      False    core
//           [11:10]  .f10     RW/RC       0x0      False    regf
//           [13:12]  .f12     RW/RS       0x0      False    core
//           [15:14]  .f14     RW/RS       0x0      False    regf
//           [17:16]  .f16     RW/RT       0x0      False    core
//           [19:18]  .f18     RW/RT       0x0      False    regf
//           [21:20]  .f20     RW/RP       0x0      False    core
//           [23:22]  .f22     RW/RP       0x0      False    regf
//           [25:24]  .f24     RW/WO       0x0      False    core
//           [27:26]  .f26     RW/WO       0x0      False    regf
//           [29:28]  .f28     RW/W0C      0x0      False    core
//           [31:30]  .f30     RW/W0C      0x0      False    regf
// +26       w26
//           [1:0]    .f0      RW/W0S      0x0      False    core
//           [3:2]    .f2      RW/W0S      0x0      False    regf
//           [5:4]    .f4      RW/W1C      0x0      False    core
//           [7:6]    .f6      RW/W1C      0x0      False    regf
//           [9:8]    .f8      RW/W1S      0x0      False    core
//           [11:10]  .f10     RW/W1S      0x0      False    regf
//           [13:12]  .f12     RW/WL       0x0      False    core
//           [15:14]  .f14     RW/WL       0x0      False    regf
//           [17:16]  .f16     RW/RW       0x0      False    core
//           [19:18]  .f18     RW/RW       0x0      False    regf
//           [21:20]  .f20     RW/RW0C     0x0      False    core
//           [23:22]  .f22     RW/RW0C     0x0      False    regf
//           [25:24]  .f24     RW/RW0S     0x0      False    core
//           [27:26]  .f26     RW/RW0S     0x0      False    regf
//           [29:28]  .f28     RW/RW1C     0x0      False    core
//           [31:30]  .f30     RW/RW1C     0x0      False    regf
// +27       w27
//           [1:0]    .f0      RW/RW1S     0x0      False    core
//           [3:2]    .f2      RW/RW1S     0x0      False    regf
//           [5:4]    .f4      RW/RWL      0x0      False    core
//           [7:6]    .f6      RW/RWL      0x0      False    regf
//           [9:8]    .f8      RW0C/RO     0x0      False    core
//           [11:10]  .f10     RW0C/RO     0x0      False    regf
//           [13:12]  .f12     RW0C/RC     0x0      False    core
//           [15:14]  .f14     RW0C/RC     0x0      False    regf
//           [17:16]  .f16     RW0C/RS     0x0      False    core
//           [19:18]  .f18     RW0C/RS     0x0      False    regf
//           [21:20]  .f20     RW0C/RT     0x0      False    core
//           [23:22]  .f22     RW0C/RT     0x0      False    regf
//           [25:24]  .f24     RW0C/RP     0x0      False    core
//           [27:26]  .f26     RW0C/RP     0x0      False    regf
//           [29:28]  .f28     RW0C/WO     0x0      False    core
//           [31:30]  .f30     RW0C/WO     0x0      False    regf
// +28       w28
//           [1:0]    .f0      RW0C/W0C    0x0      False    core
//           [3:2]    .f2      RW0C/W0C    0x0      False    regf
//           [5:4]    .f4      RW0C/W0S    0x0      False    core
//           [7:6]    .f6      RW0C/W0S    0x0      False    regf
//           [9:8]    .f8      RW0C/W1C    0x0      False    core
//           [11:10]  .f10     RW0C/W1C    0x0      False    regf
//           [13:12]  .f12     RW0C/W1S    0x0      False    core
//           [15:14]  .f14     RW0C/W1S    0x0      False    regf
//           [17:16]  .f16     RW0C/WL     0x0      False    core
//           [19:18]  .f18     RW0C/WL     0x0      False    regf
//           [21:20]  .f20     RW0C/RW     0x0      False    core
//           [23:22]  .f22     RW0C/RW     0x0      False    regf
//           [25:24]  .f24     RW0C/RW0C   0x0      False    core
//           [27:26]  .f26     RW0C/RW0C   0x0      False    regf
//           [29:28]  .f28     RW0C/RW0S   0x0      False    core
//           [31:30]  .f30     RW0C/RW0S   0x0      False    regf
// +29       w29
//           [1:0]    .f0      RW0C/RW1C   0x0      False    core
//           [3:2]    .f2      RW0C/RW1C   0x0      False    regf
//           [5:4]    .f4      RW0C/RW1S   0x0      False    core
//           [7:6]    .f6      RW0C/RW1S   0x0      False    regf
//           [9:8]    .f8      RW0C/RWL    0x0      False    core
//           [11:10]  .f10     RW0C/RWL    0x0      False    regf
//           [13:12]  .f12     RW0S/RO     0x0      False    core
//           [15:14]  .f14     RW0S/RO     0x0      False    regf
//           [17:16]  .f16     RW0S/RC     0x0      False    core
//           [19:18]  .f18     RW0S/RC     0x0      False    regf
//           [21:20]  .f20     RW0S/RS     0x0      False    core
//           [23:22]  .f22     RW0S/RS     0x0      False    regf
//           [25:24]  .f24     RW0S/RT     0x0      False    core
//           [27:26]  .f26     RW0S/RT     0x0      False    regf
//           [29:28]  .f28     RW0S/RP     0x0      False    core
//           [31:30]  .f30     RW0S/RP     0x0      False    regf
// +30       w30
//           [1:0]    .f0      RW0S/WO     0x0      False    core
//           [3:2]    .f2      RW0S/WO     0x0      False    regf
//           [5:4]    .f4      RW0S/W0C    0x0      False    core
//           [7:6]    .f6      RW0S/W0C    0x0      False    regf
//           [9:8]    .f8      RW0S/W0S    0x0      False    core
//           [11:10]  .f10     RW0S/W0S    0x0      False    regf
//           [13:12]  .f12     RW0S/W1C    0x0      False    core
//           [15:14]  .f14     RW0S/W1C    0x0      False    regf
//           [17:16]  .f16     RW0S/W1S    0x0      False    core
//           [19:18]  .f18     RW0S/W1S    0x0      False    regf
//           [21:20]  .f20     RW0S/WL     0x0      False    core
//           [23:22]  .f22     RW0S/WL     0x0      False    regf
//           [25:24]  .f24     RW0S/RW     0x0      False    core
//           [27:26]  .f26     RW0S/RW     0x0      False    regf
//           [29:28]  .f28     RW0S/RW0C   0x0      False    core
//           [31:30]  .f30     RW0S/RW0C   0x0      False    regf
// +31       w31
//           [1:0]    .f0      RW0S/RW0S   0x0      False    core
//           [3:2]    .f2      RW0S/RW0S   0x0      False    regf
//           [5:4]    .f4      RW0S/RW1C   0x0      False    core
//           [7:6]    .f6      RW0S/RW1C   0x0      False    regf
//           [9:8]    .f8      RW0S/RW1S   0x0      False    core
//           [11:10]  .f10     RW0S/RW1S   0x0      False    regf
//           [13:12]  .f12     RW0S/RWL    0x0      False    core
//           [15:14]  .f14     RW0S/RWL    0x0      False    regf
//           [17:16]  .f16     RW1C/RO     0x0      False    core
//           [19:18]  .f18     RW1C/RO     0x0      False    regf
//           [21:20]  .f20     RW1C/RC     0x0      False    core
//           [23:22]  .f22     RW1C/RC     0x0      False    regf
//           [25:24]  .f24     RW1C/RS     0x0      False    core
//           [27:26]  .f26     RW1C/RS     0x0      False    regf
//           [29:28]  .f28     RW1C/RT     0x0      False    core
//           [31:30]  .f30     RW1C/RT     0x0      False    regf
// +32       w32
//           [1:0]    .f0      RW1C/RP     0x0      False    core
//           [3:2]    .f2      RW1C/RP     0x0      False    regf
//           [5:4]    .f4      RW1C/WO     0x0      False    core
//           [7:6]    .f6      RW1C/WO     0x0      False    regf
//           [9:8]    .f8      RW1C/W0C    0x0      False    core
//           [11:10]  .f10     RW1C/W0C    0x0      False    regf
//           [13:12]  .f12     RW1C/W0S    0x0      False    core
//           [15:14]  .f14     RW1C/W0S    0x0      False    regf
//           [17:16]  .f16     RW1C/W1C    0x0      False    core
//           [19:18]  .f18     RW1C/W1C    0x0      False    regf
//           [21:20]  .f20     RW1C/W1S    0x0      False    core
//           [23:22]  .f22     RW1C/W1S    0x0      False    regf
//           [25:24]  .f24     RW1C/WL     0x0      False    core
//           [27:26]  .f26     RW1C/WL     0x0      False    regf
//           [29:28]  .f28     RW1C/RW     0x0      False    core
//           [31:30]  .f30     RW1C/RW     0x0      False    regf
// +33       w33
//           [1:0]    .f0      RW1C/RW0C   0x0      False    core
//           [3:2]    .f2      RW1C/RW0C   0x0      False    regf
//           [5:4]    .f4      RW1C/RW0S   0x0      False    core
//           [7:6]    .f6      RW1C/RW0S   0x0      False    regf
//           [9:8]    .f8      RW1C/RW1C   0x0      False    core
//           [11:10]  .f10     RW1C/RW1C   0x0      False    regf
//           [13:12]  .f12     RW1C/RW1S   0x0      False    core
//           [15:14]  .f14     RW1C/RW1S   0x0      False    regf
//           [17:16]  .f16     RW1C/RWL    0x0      False    core
//           [19:18]  .f18     RW1C/RWL    0x0      False    regf
//           [21:20]  .f20     RW1S/RO     0x0      False    core
//           [23:22]  .f22     RW1S/RO     0x0      False    regf
//           [25:24]  .f24     RW1S/RC     0x0      False    core
//           [27:26]  .f26     RW1S/RC     0x0      False    regf
//           [29:28]  .f28     RW1S/RS     0x0      False    core
//           [31:30]  .f30     RW1S/RS     0x0      False    regf
// +34       w34
//           [1:0]    .f0      RW1S/RT     0x0      False    core
//           [3:2]    .f2      RW1S/RT     0x0      False    regf
//           [5:4]    .f4      RW1S/RP     0x0      False    core
//           [7:6]    .f6      RW1S/RP     0x0      False    regf
//           [9:8]    .f8      RW1S/WO     0x0      False    core
//           [11:10]  .f10     RW1S/WO     0x0      False    regf
//           [13:12]  .f12     RW1S/W0C    0x0      False    core
//           [15:14]  .f14     RW1S/W0C    0x0      False    regf
//           [17:16]  .f16     RW1S/W0S    0x0      False    core
//           [19:18]  .f18     RW1S/W0S    0x0      False    regf
//           [21:20]  .f20     RW1S/W1C    0x0      False    core
//           [23:22]  .f22     RW1S/W1C    0x0      False    regf
//           [25:24]  .f24     RW1S/W1S    0x0      False    core
//           [27:26]  .f26     RW1S/W1S    0x0      False    regf
//           [29:28]  .f28     RW1S/WL     0x0      False    core
//           [31:30]  .f30     RW1S/WL     0x0      False    regf
// +35       w35
//           [1:0]    .f0      RW1S/RW     0x0      False    core
//           [3:2]    .f2      RW1S/RW     0x0      False    regf
//           [5:4]    .f4      RW1S/RW0C   0x0      False    core
//           [7:6]    .f6      RW1S/RW0C   0x0      False    regf
//           [9:8]    .f8      RW1S/RW0S   0x0      False    core
//           [11:10]  .f10     RW1S/RW0S   0x0      False    regf
//           [13:12]  .f12     RW1S/RW1C   0x0      False    core
//           [15:14]  .f14     RW1S/RW1C   0x0      False    regf
//           [17:16]  .f16     RW1S/RW1S   0x0      False    core
//           [19:18]  .f18     RW1S/RW1S   0x0      False    regf
//           [21:20]  .f20     RW1S/RWL    0x0      False    core
//           [23:22]  .f22     RW1S/RWL    0x0      False    regf
//           [25:24]  .f24     RWL/RO      0x0      False    core
//           [27:26]  .f26     RWL/RO      0x0      False    regf
//           [29:28]  .f28     RWL/RC      0x0      False    core
//           [31:30]  .f30     RWL/RC      0x0      False    regf
// +36       w36
//           [1:0]    .f0      RWL/RS      0x0      False    core
//           [3:2]    .f2      RWL/RS      0x0      False    regf
//           [5:4]    .f4      RWL/RT      0x0      False    core
//           [7:6]    .f6      RWL/RT      0x0      False    regf
//           [9:8]    .f8      RWL/RP      0x0      False    core
//           [11:10]  .f10     RWL/RP      0x0      False    regf
//           [13:12]  .f12     RWL/WO      0x0      False    core
//           [15:14]  .f14     RWL/WO      0x0      False    regf
//           [17:16]  .f16     RWL/W0C     0x0      False    core
//           [19:18]  .f18     RWL/W0C     0x0      False    regf
//           [21:20]  .f20     RWL/W0S     0x0      False    core
//           [23:22]  .f22     RWL/W0S     0x0      False    regf
//           [25:24]  .f24     RWL/W1C     0x0      False    core
//           [27:26]  .f26     RWL/W1C     0x0      False    regf
//           [29:28]  .f28     RWL/W1S     0x0      False    core
//           [31:30]  .f30     RWL/W1S     0x0      False    regf
// +37       w37
//           [1:0]    .f0      RWL/WL      0x0      False    core
//           [3:2]    .f2      RWL/WL      0x0      False    regf
//           [5:4]    .f4      RWL/RW      0x0      False    core
//           [7:6]    .f6      RWL/RW      0x0      False    regf
//           [9:8]    .f8      RWL/RW0C    0x0      False    core
//           [11:10]  .f10     RWL/RW0C    0x0      False    regf
//           [13:12]  .f12     RWL/RW0S    0x0      False    core
//           [15:14]  .f14     RWL/RW0S    0x0      False    regf
//           [17:16]  .f16     RWL/RW1C    0x0      False    core
//           [19:18]  .f18     RWL/RW1C    0x0      False    regf
//           [21:20]  .f20     RWL/RW1S    0x0      False    core
//           [23:22]  .f22     RWL/RW1S    0x0      False    regf
//           [25:24]  .f24     RWL/RWL     0x0      False    core
//           [27:26]  .f26     RWL/RWL     0x0      False    regf
//
// =============================================================================

`begin_keywords "1800-2009"
`default_nettype none

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
  // regf_w0_f0_o: bus=None core=RO in_regf=True
  output logic [1:0]  regf_w0_f0_rval_o,   // Core Read Value
  // regf_w0_f2_o: bus=None core=RC in_regf=False
  // regf_w0_f4_o: bus=None core=RC in_regf=True
  output logic [1:0]  regf_w0_f4_rval_o,   // Core Read Value
  input  wire         regf_w0_f4_rd_i,     // Core Read Strobe
  // regf_w0_f6_o: bus=None core=RS in_regf=False
  // regf_w0_f8_o: bus=None core=RS in_regf=True
  output logic [1:0]  regf_w0_f8_rval_o,   // Core Read Value
  input  wire         regf_w0_f8_rd_i,     // Core Read Strobe
  // regf_w0_f10_o: bus=None core=RT in_regf=False
  // regf_w0_f12_o: bus=None core=RT in_regf=True
  output logic [1:0]  regf_w0_f12_rval_o,  // Core Read Value
  input  wire         regf_w0_f12_rd_i,    // Core Read Strobe
  // regf_w0_f14_o: bus=None core=RP in_regf=True
  output logic [1:0]  regf_w0_f14_rval_o,  // Core Read Value
  // regf_w0_f16_o: bus=None core=WO in_regf=False
  // regf_w0_f18_o: bus=None core=WO in_regf=True
  input  wire  [1:0]  regf_w0_f18_wval_i,  // Core Write Value
  input  wire         regf_w0_f18_wr_i,    // Core Write Strobe
  // regf_w0_f20_o: bus=None core=W0C in_regf=False
  // regf_w0_f22_o: bus=None core=W0C in_regf=True
  input  wire  [1:0]  regf_w0_f22_wval_i,  // Core Write Value
  input  wire         regf_w0_f22_wr_i,    // Core Write Strobe
  // regf_w0_f24_o: bus=None core=W0S in_regf=False
  // regf_w0_f26_o: bus=None core=W0S in_regf=True
  input  wire  [1:0]  regf_w0_f26_wval_i,  // Core Write Value
  input  wire         regf_w0_f26_wr_i,    // Core Write Strobe
  // regf_w0_f28_o: bus=None core=W1C in_regf=False
  // regf_w0_f30_o: bus=None core=W1C in_regf=True
  input  wire  [1:0]  regf_w0_f30_wval_i,  // Core Write Value
  input  wire         regf_w0_f30_wr_i,    // Core Write Strobe
  // regf_w1_f0_o: bus=None core=W1S in_regf=False
  // regf_w1_f2_o: bus=None core=W1S in_regf=True
  input  wire  [1:0]  regf_w1_f2_wval_i,   // Core Write Value
  input  wire         regf_w1_f2_wr_i,     // Core Write Strobe
  // regf_w1_f4_o: bus=None core=WL in_regf=False
  // regf_w1_f6_o: bus=None core=WL in_regf=True
  input  wire  [1:0]  regf_w1_f6_wval_i,   // Core Write Value
  input  wire         regf_w1_f6_wr_i,     // Core Write Strobe
  // regf_w1_f8_o: bus=None core=RW in_regf=False
  // regf_w1_f10_o: bus=None core=RW in_regf=True
  output logic [1:0]  regf_w1_f10_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w1_f10_wval_i,  // Core Write Value
  input  wire         regf_w1_f10_wr_i,    // Core Write Strobe
  // regf_w1_f12_o: bus=None core=RW0C in_regf=False
  // regf_w1_f14_o: bus=None core=RW0C in_regf=True
  output logic [1:0]  regf_w1_f14_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w1_f14_wval_i,  // Core Write Value
  input  wire         regf_w1_f14_wr_i,    // Core Write Strobe
  // regf_w1_f16_o: bus=None core=RW0S in_regf=False
  // regf_w1_f18_o: bus=None core=RW0S in_regf=True
  output logic [1:0]  regf_w1_f18_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w1_f18_wval_i,  // Core Write Value
  input  wire         regf_w1_f18_wr_i,    // Core Write Strobe
  // regf_w1_f20_o: bus=None core=RW1C in_regf=False
  // regf_w1_f22_o: bus=None core=RW1C in_regf=True
  output logic [1:0]  regf_w1_f22_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w1_f22_wval_i,  // Core Write Value
  input  wire         regf_w1_f22_wr_i,    // Core Write Strobe
  // regf_w1_f24_o: bus=None core=RW1S in_regf=False
  // regf_w1_f26_o: bus=None core=RW1S in_regf=True
  output logic [1:0]  regf_w1_f26_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w1_f26_wval_i,  // Core Write Value
  input  wire         regf_w1_f26_wr_i,    // Core Write Strobe
  // regf_w1_f28_o: bus=None core=RWL in_regf=False
  // regf_w1_f30_o: bus=None core=RWL in_regf=True
  output logic [1:0]  regf_w1_f30_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w1_f30_wval_i,  // Core Write Value
  input  wire         regf_w1_f30_wr_i,    // Core Write Strobe
  // regf_w2_f0_o: bus=RO core=RO in_regf=True
  output logic [1:0]  regf_w2_f0_rval_o,   // Core Read Value
  // regf_w2_f2_o: bus=RO core=RC in_regf=False
  input  wire  [1:0]  regf_w2_f2_rbus_i,   // Bus Read Value
  // regf_w2_f4_o: bus=RO core=RC in_regf=True
  output logic [1:0]  regf_w2_f4_rval_o,   // Core Read Value
  input  wire         regf_w2_f4_rd_i,     // Core Read Strobe
  // regf_w2_f6_o: bus=RO core=RS in_regf=False
  input  wire  [1:0]  regf_w2_f6_rbus_i,   // Bus Read Value
  // regf_w2_f8_o: bus=RO core=RS in_regf=True
  output logic [1:0]  regf_w2_f8_rval_o,   // Core Read Value
  input  wire         regf_w2_f8_rd_i,     // Core Read Strobe
  // regf_w2_f10_o: bus=RO core=RT in_regf=False
  input  wire  [1:0]  regf_w2_f10_rbus_i,  // Bus Read Value
  // regf_w2_f12_o: bus=RO core=RT in_regf=True
  output logic [1:0]  regf_w2_f12_rval_o,  // Core Read Value
  input  wire         regf_w2_f12_rd_i,    // Core Read Strobe
  // regf_w2_f14_o: bus=RO core=RP in_regf=True
  output logic [1:0]  regf_w2_f14_rval_o,  // Core Read Value
  // regf_w2_f16_o: bus=RO core=WO in_regf=False
  input  wire  [1:0]  regf_w2_f16_rbus_i,  // Bus Read Value
  // regf_w2_f18_o: bus=RO core=WO in_regf=True
  input  wire  [1:0]  regf_w2_f18_wval_i,  // Core Write Value
  input  wire         regf_w2_f18_wr_i,    // Core Write Strobe
  // regf_w2_f20_o: bus=RO core=W0C in_regf=False
  input  wire  [1:0]  regf_w2_f20_rbus_i,  // Bus Read Value
  // regf_w2_f22_o: bus=RO core=W0C in_regf=True
  input  wire  [1:0]  regf_w2_f22_wval_i,  // Core Write Value
  input  wire         regf_w2_f22_wr_i,    // Core Write Strobe
  // regf_w2_f24_o: bus=RO core=W0S in_regf=False
  input  wire  [1:0]  regf_w2_f24_rbus_i,  // Bus Read Value
  // regf_w2_f26_o: bus=RO core=W0S in_regf=True
  input  wire  [1:0]  regf_w2_f26_wval_i,  // Core Write Value
  input  wire         regf_w2_f26_wr_i,    // Core Write Strobe
  // regf_w2_f28_o: bus=RO core=W1C in_regf=False
  input  wire  [1:0]  regf_w2_f28_rbus_i,  // Bus Read Value
  // regf_w2_f30_o: bus=RO core=W1C in_regf=True
  input  wire  [1:0]  regf_w2_f30_wval_i,  // Core Write Value
  input  wire         regf_w2_f30_wr_i,    // Core Write Strobe
  // regf_w3_f0_o: bus=RO core=W1S in_regf=False
  input  wire  [1:0]  regf_w3_f0_rbus_i,   // Bus Read Value
  // regf_w3_f2_o: bus=RO core=W1S in_regf=True
  input  wire  [1:0]  regf_w3_f2_wval_i,   // Core Write Value
  input  wire         regf_w3_f2_wr_i,     // Core Write Strobe
  // regf_w3_f4_o: bus=RO core=WL in_regf=False
  input  wire  [1:0]  regf_w3_f4_rbus_i,   // Bus Read Value
  // regf_w3_f6_o: bus=RO core=WL in_regf=True
  input  wire  [1:0]  regf_w3_f6_wval_i,   // Core Write Value
  input  wire         regf_w3_f6_wr_i,     // Core Write Strobe
  // regf_w3_f8_o: bus=RO core=RW in_regf=False
  input  wire  [1:0]  regf_w3_f8_rbus_i,   // Bus Read Value
  // regf_w3_f10_o: bus=RO core=RW in_regf=True
  output logic [1:0]  regf_w3_f10_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w3_f10_wval_i,  // Core Write Value
  input  wire         regf_w3_f10_wr_i,    // Core Write Strobe
  // regf_w3_f12_o: bus=RO core=RW0C in_regf=False
  input  wire  [1:0]  regf_w3_f12_rbus_i,  // Bus Read Value
  // regf_w3_f14_o: bus=RO core=RW0C in_regf=True
  output logic [1:0]  regf_w3_f14_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w3_f14_wval_i,  // Core Write Value
  input  wire         regf_w3_f14_wr_i,    // Core Write Strobe
  // regf_w3_f16_o: bus=RO core=RW0S in_regf=False
  input  wire  [1:0]  regf_w3_f16_rbus_i,  // Bus Read Value
  // regf_w3_f18_o: bus=RO core=RW0S in_regf=True
  output logic [1:0]  regf_w3_f18_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w3_f18_wval_i,  // Core Write Value
  input  wire         regf_w3_f18_wr_i,    // Core Write Strobe
  // regf_w3_f20_o: bus=RO core=RW1C in_regf=False
  input  wire  [1:0]  regf_w3_f20_rbus_i,  // Bus Read Value
  // regf_w3_f22_o: bus=RO core=RW1C in_regf=True
  output logic [1:0]  regf_w3_f22_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w3_f22_wval_i,  // Core Write Value
  input  wire         regf_w3_f22_wr_i,    // Core Write Strobe
  // regf_w3_f24_o: bus=RO core=RW1S in_regf=False
  input  wire  [1:0]  regf_w3_f24_rbus_i,  // Bus Read Value
  // regf_w3_f26_o: bus=RO core=RW1S in_regf=True
  output logic [1:0]  regf_w3_f26_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w3_f26_wval_i,  // Core Write Value
  input  wire         regf_w3_f26_wr_i,    // Core Write Strobe
  // regf_w3_f28_o: bus=RO core=RWL in_regf=False
  input  wire  [1:0]  regf_w3_f28_rbus_i,  // Bus Read Value
  // regf_w3_f30_o: bus=RO core=RWL in_regf=True
  output logic [1:0]  regf_w3_f30_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w3_f30_wval_i,  // Core Write Value
  input  wire         regf_w3_f30_wr_i,    // Core Write Strobe
  // regf_w4_f0_o: bus=RC core=RO in_regf=False
  input  wire  [1:0]  regf_w4_f0_rbus_i,   // Bus Read Value
  output logic        regf_w4_f0_rd_o,     // Bus Read Strobe
  // regf_w4_f2_o: bus=RC core=RO in_regf=True
  output logic [1:0]  regf_w4_f2_rval_o,   // Core Read Value
  // regf_w4_f4_o: bus=RC core=RC in_regf=False
  input  wire  [1:0]  regf_w4_f4_rbus_i,   // Bus Read Value
  output logic        regf_w4_f4_rd_o,     // Bus Read Strobe
  // regf_w4_f6_o: bus=RC core=RC in_regf=True
  output logic [1:0]  regf_w4_f6_rval_o,   // Core Read Value
  input  wire         regf_w4_f6_rd_i,     // Core Read Strobe
  // regf_w4_f8_o: bus=RC core=RS in_regf=False
  input  wire  [1:0]  regf_w4_f8_rbus_i,   // Bus Read Value
  output logic        regf_w4_f8_rd_o,     // Bus Read Strobe
  // regf_w4_f10_o: bus=RC core=RS in_regf=True
  output logic [1:0]  regf_w4_f10_rval_o,  // Core Read Value
  input  wire         regf_w4_f10_rd_i,    // Core Read Strobe
  // regf_w4_f12_o: bus=RC core=RT in_regf=False
  input  wire  [1:0]  regf_w4_f12_rbus_i,  // Bus Read Value
  output logic        regf_w4_f12_rd_o,    // Bus Read Strobe
  // regf_w4_f14_o: bus=RC core=RT in_regf=True
  output logic [1:0]  regf_w4_f14_rval_o,  // Core Read Value
  input  wire         regf_w4_f14_rd_i,    // Core Read Strobe
  // regf_w4_f16_o: bus=RC core=RP in_regf=False
  input  wire  [1:0]  regf_w4_f16_rbus_i,  // Bus Read Value
  output logic        regf_w4_f16_rd_o,    // Bus Read Strobe
  // regf_w4_f18_o: bus=RC core=RP in_regf=True
  output logic [1:0]  regf_w4_f18_rval_o,  // Core Read Value
  // regf_w4_f20_o: bus=RC core=WO in_regf=False
  input  wire  [1:0]  regf_w4_f20_rbus_i,  // Bus Read Value
  output logic        regf_w4_f20_rd_o,    // Bus Read Strobe
  // regf_w4_f22_o: bus=RC core=WO in_regf=True
  input  wire  [1:0]  regf_w4_f22_wval_i,  // Core Write Value
  input  wire         regf_w4_f22_wr_i,    // Core Write Strobe
  // regf_w4_f24_o: bus=RC core=W0C in_regf=False
  input  wire  [1:0]  regf_w4_f24_rbus_i,  // Bus Read Value
  output logic        regf_w4_f24_rd_o,    // Bus Read Strobe
  // regf_w4_f26_o: bus=RC core=W0C in_regf=True
  input  wire  [1:0]  regf_w4_f26_wval_i,  // Core Write Value
  input  wire         regf_w4_f26_wr_i,    // Core Write Strobe
  // regf_w4_f28_o: bus=RC core=W0S in_regf=False
  input  wire  [1:0]  regf_w4_f28_rbus_i,  // Bus Read Value
  output logic        regf_w4_f28_rd_o,    // Bus Read Strobe
  // regf_w4_f30_o: bus=RC core=W0S in_regf=True
  input  wire  [1:0]  regf_w4_f30_wval_i,  // Core Write Value
  input  wire         regf_w4_f30_wr_i,    // Core Write Strobe
  // regf_w5_f0_o: bus=RC core=W1C in_regf=False
  input  wire  [1:0]  regf_w5_f0_rbus_i,   // Bus Read Value
  output logic        regf_w5_f0_rd_o,     // Bus Read Strobe
  // regf_w5_f2_o: bus=RC core=W1C in_regf=True
  input  wire  [1:0]  regf_w5_f2_wval_i,   // Core Write Value
  input  wire         regf_w5_f2_wr_i,     // Core Write Strobe
  // regf_w5_f4_o: bus=RC core=W1S in_regf=False
  input  wire  [1:0]  regf_w5_f4_rbus_i,   // Bus Read Value
  output logic        regf_w5_f4_rd_o,     // Bus Read Strobe
  // regf_w5_f6_o: bus=RC core=W1S in_regf=True
  input  wire  [1:0]  regf_w5_f6_wval_i,   // Core Write Value
  input  wire         regf_w5_f6_wr_i,     // Core Write Strobe
  // regf_w5_f8_o: bus=RC core=WL in_regf=False
  input  wire  [1:0]  regf_w5_f8_rbus_i,   // Bus Read Value
  output logic        regf_w5_f8_rd_o,     // Bus Read Strobe
  // regf_w5_f10_o: bus=RC core=WL in_regf=True
  input  wire  [1:0]  regf_w5_f10_wval_i,  // Core Write Value
  input  wire         regf_w5_f10_wr_i,    // Core Write Strobe
  // regf_w5_f12_o: bus=RC core=RW in_regf=False
  input  wire  [1:0]  regf_w5_f12_rbus_i,  // Bus Read Value
  output logic        regf_w5_f12_rd_o,    // Bus Read Strobe
  // regf_w5_f14_o: bus=RC core=RW in_regf=True
  output logic [1:0]  regf_w5_f14_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w5_f14_wval_i,  // Core Write Value
  input  wire         regf_w5_f14_wr_i,    // Core Write Strobe
  // regf_w5_f16_o: bus=RC core=RW0C in_regf=False
  input  wire  [1:0]  regf_w5_f16_rbus_i,  // Bus Read Value
  output logic        regf_w5_f16_rd_o,    // Bus Read Strobe
  // regf_w5_f18_o: bus=RC core=RW0C in_regf=True
  output logic [1:0]  regf_w5_f18_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w5_f18_wval_i,  // Core Write Value
  input  wire         regf_w5_f18_wr_i,    // Core Write Strobe
  // regf_w5_f20_o: bus=RC core=RW0S in_regf=False
  input  wire  [1:0]  regf_w5_f20_rbus_i,  // Bus Read Value
  output logic        regf_w5_f20_rd_o,    // Bus Read Strobe
  // regf_w5_f22_o: bus=RC core=RW0S in_regf=True
  output logic [1:0]  regf_w5_f22_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w5_f22_wval_i,  // Core Write Value
  input  wire         regf_w5_f22_wr_i,    // Core Write Strobe
  // regf_w5_f24_o: bus=RC core=RW1C in_regf=False
  input  wire  [1:0]  regf_w5_f24_rbus_i,  // Bus Read Value
  output logic        regf_w5_f24_rd_o,    // Bus Read Strobe
  // regf_w5_f26_o: bus=RC core=RW1C in_regf=True
  output logic [1:0]  regf_w5_f26_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w5_f26_wval_i,  // Core Write Value
  input  wire         regf_w5_f26_wr_i,    // Core Write Strobe
  // regf_w5_f28_o: bus=RC core=RW1S in_regf=False
  input  wire  [1:0]  regf_w5_f28_rbus_i,  // Bus Read Value
  output logic        regf_w5_f28_rd_o,    // Bus Read Strobe
  // regf_w5_f30_o: bus=RC core=RW1S in_regf=True
  output logic [1:0]  regf_w5_f30_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w5_f30_wval_i,  // Core Write Value
  input  wire         regf_w5_f30_wr_i,    // Core Write Strobe
  // regf_w6_f0_o: bus=RC core=RWL in_regf=False
  input  wire  [1:0]  regf_w6_f0_rbus_i,   // Bus Read Value
  output logic        regf_w6_f0_rd_o,     // Bus Read Strobe
  // regf_w6_f2_o: bus=RC core=RWL in_regf=True
  output logic [1:0]  regf_w6_f2_rval_o,   // Core Read Value
  input  wire  [1:0]  regf_w6_f2_wval_i,   // Core Write Value
  input  wire         regf_w6_f2_wr_i,     // Core Write Strobe
  // regf_w6_f4_o: bus=RS core=RO in_regf=False
  input  wire  [1:0]  regf_w6_f4_rbus_i,   // Bus Read Value
  output logic        regf_w6_f4_rd_o,     // Bus Read Strobe
  // regf_w6_f6_o: bus=RS core=RO in_regf=True
  output logic [1:0]  regf_w6_f6_rval_o,   // Core Read Value
  // regf_w6_f8_o: bus=RS core=RC in_regf=False
  input  wire  [1:0]  regf_w6_f8_rbus_i,   // Bus Read Value
  output logic        regf_w6_f8_rd_o,     // Bus Read Strobe
  // regf_w6_f10_o: bus=RS core=RC in_regf=True
  output logic [1:0]  regf_w6_f10_rval_o,  // Core Read Value
  input  wire         regf_w6_f10_rd_i,    // Core Read Strobe
  // regf_w6_f12_o: bus=RS core=RS in_regf=False
  input  wire  [1:0]  regf_w6_f12_rbus_i,  // Bus Read Value
  output logic        regf_w6_f12_rd_o,    // Bus Read Strobe
  // regf_w6_f14_o: bus=RS core=RS in_regf=True
  output logic [1:0]  regf_w6_f14_rval_o,  // Core Read Value
  input  wire         regf_w6_f14_rd_i,    // Core Read Strobe
  // regf_w6_f16_o: bus=RS core=RT in_regf=False
  input  wire  [1:0]  regf_w6_f16_rbus_i,  // Bus Read Value
  output logic        regf_w6_f16_rd_o,    // Bus Read Strobe
  // regf_w6_f18_o: bus=RS core=RT in_regf=True
  output logic [1:0]  regf_w6_f18_rval_o,  // Core Read Value
  input  wire         regf_w6_f18_rd_i,    // Core Read Strobe
  // regf_w6_f20_o: bus=RS core=RP in_regf=False
  input  wire  [1:0]  regf_w6_f20_rbus_i,  // Bus Read Value
  output logic        regf_w6_f20_rd_o,    // Bus Read Strobe
  // regf_w6_f22_o: bus=RS core=RP in_regf=True
  output logic [1:0]  regf_w6_f22_rval_o,  // Core Read Value
  // regf_w6_f24_o: bus=RS core=WO in_regf=False
  input  wire  [1:0]  regf_w6_f24_rbus_i,  // Bus Read Value
  output logic        regf_w6_f24_rd_o,    // Bus Read Strobe
  // regf_w6_f26_o: bus=RS core=WO in_regf=True
  input  wire  [1:0]  regf_w6_f26_wval_i,  // Core Write Value
  input  wire         regf_w6_f26_wr_i,    // Core Write Strobe
  // regf_w6_f28_o: bus=RS core=W0C in_regf=False
  input  wire  [1:0]  regf_w6_f28_rbus_i,  // Bus Read Value
  output logic        regf_w6_f28_rd_o,    // Bus Read Strobe
  // regf_w6_f30_o: bus=RS core=W0C in_regf=True
  input  wire  [1:0]  regf_w6_f30_wval_i,  // Core Write Value
  input  wire         regf_w6_f30_wr_i,    // Core Write Strobe
  // regf_w7_f0_o: bus=RS core=W0S in_regf=False
  input  wire  [1:0]  regf_w7_f0_rbus_i,   // Bus Read Value
  output logic        regf_w7_f0_rd_o,     // Bus Read Strobe
  // regf_w7_f2_o: bus=RS core=W0S in_regf=True
  input  wire  [1:0]  regf_w7_f2_wval_i,   // Core Write Value
  input  wire         regf_w7_f2_wr_i,     // Core Write Strobe
  // regf_w7_f4_o: bus=RS core=W1C in_regf=False
  input  wire  [1:0]  regf_w7_f4_rbus_i,   // Bus Read Value
  output logic        regf_w7_f4_rd_o,     // Bus Read Strobe
  // regf_w7_f6_o: bus=RS core=W1C in_regf=True
  input  wire  [1:0]  regf_w7_f6_wval_i,   // Core Write Value
  input  wire         regf_w7_f6_wr_i,     // Core Write Strobe
  // regf_w7_f8_o: bus=RS core=W1S in_regf=False
  input  wire  [1:0]  regf_w7_f8_rbus_i,   // Bus Read Value
  output logic        regf_w7_f8_rd_o,     // Bus Read Strobe
  // regf_w7_f10_o: bus=RS core=W1S in_regf=True
  input  wire  [1:0]  regf_w7_f10_wval_i,  // Core Write Value
  input  wire         regf_w7_f10_wr_i,    // Core Write Strobe
  // regf_w7_f12_o: bus=RS core=WL in_regf=False
  input  wire  [1:0]  regf_w7_f12_rbus_i,  // Bus Read Value
  output logic        regf_w7_f12_rd_o,    // Bus Read Strobe
  // regf_w7_f14_o: bus=RS core=WL in_regf=True
  input  wire  [1:0]  regf_w7_f14_wval_i,  // Core Write Value
  input  wire         regf_w7_f14_wr_i,    // Core Write Strobe
  // regf_w7_f16_o: bus=RS core=RW in_regf=False
  input  wire  [1:0]  regf_w7_f16_rbus_i,  // Bus Read Value
  output logic        regf_w7_f16_rd_o,    // Bus Read Strobe
  // regf_w7_f18_o: bus=RS core=RW in_regf=True
  output logic [1:0]  regf_w7_f18_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w7_f18_wval_i,  // Core Write Value
  input  wire         regf_w7_f18_wr_i,    // Core Write Strobe
  // regf_w7_f20_o: bus=RS core=RW0C in_regf=False
  input  wire  [1:0]  regf_w7_f20_rbus_i,  // Bus Read Value
  output logic        regf_w7_f20_rd_o,    // Bus Read Strobe
  // regf_w7_f22_o: bus=RS core=RW0C in_regf=True
  output logic [1:0]  regf_w7_f22_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w7_f22_wval_i,  // Core Write Value
  input  wire         regf_w7_f22_wr_i,    // Core Write Strobe
  // regf_w7_f24_o: bus=RS core=RW0S in_regf=False
  input  wire  [1:0]  regf_w7_f24_rbus_i,  // Bus Read Value
  output logic        regf_w7_f24_rd_o,    // Bus Read Strobe
  // regf_w7_f26_o: bus=RS core=RW0S in_regf=True
  output logic [1:0]  regf_w7_f26_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w7_f26_wval_i,  // Core Write Value
  input  wire         regf_w7_f26_wr_i,    // Core Write Strobe
  // regf_w7_f28_o: bus=RS core=RW1C in_regf=False
  input  wire  [1:0]  regf_w7_f28_rbus_i,  // Bus Read Value
  output logic        regf_w7_f28_rd_o,    // Bus Read Strobe
  // regf_w7_f30_o: bus=RS core=RW1C in_regf=True
  output logic [1:0]  regf_w7_f30_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w7_f30_wval_i,  // Core Write Value
  input  wire         regf_w7_f30_wr_i,    // Core Write Strobe
  // regf_w8_f0_o: bus=RS core=RW1S in_regf=False
  input  wire  [1:0]  regf_w8_f0_rbus_i,   // Bus Read Value
  output logic        regf_w8_f0_rd_o,     // Bus Read Strobe
  // regf_w8_f2_o: bus=RS core=RW1S in_regf=True
  output logic [1:0]  regf_w8_f2_rval_o,   // Core Read Value
  input  wire  [1:0]  regf_w8_f2_wval_i,   // Core Write Value
  input  wire         regf_w8_f2_wr_i,     // Core Write Strobe
  // regf_w8_f4_o: bus=RS core=RWL in_regf=False
  input  wire  [1:0]  regf_w8_f4_rbus_i,   // Bus Read Value
  output logic        regf_w8_f4_rd_o,     // Bus Read Strobe
  // regf_w8_f6_o: bus=RS core=RWL in_regf=True
  output logic [1:0]  regf_w8_f6_rval_o,   // Core Read Value
  input  wire  [1:0]  regf_w8_f6_wval_i,   // Core Write Value
  input  wire         regf_w8_f6_wr_i,     // Core Write Strobe
  // regf_w8_f8_o: bus=RT core=RO in_regf=False
  input  wire  [1:0]  regf_w8_f8_rbus_i,   // Bus Read Value
  output logic        regf_w8_f8_rd_o,     // Bus Read Strobe
  // regf_w8_f10_o: bus=RT core=RO in_regf=True
  output logic [1:0]  regf_w8_f10_rval_o,  // Core Read Value
  // regf_w8_f12_o: bus=RT core=RC in_regf=False
  input  wire  [1:0]  regf_w8_f12_rbus_i,  // Bus Read Value
  output logic        regf_w8_f12_rd_o,    // Bus Read Strobe
  // regf_w8_f14_o: bus=RT core=RC in_regf=True
  output logic [1:0]  regf_w8_f14_rval_o,  // Core Read Value
  input  wire         regf_w8_f14_rd_i,    // Core Read Strobe
  // regf_w8_f16_o: bus=RT core=RS in_regf=False
  input  wire  [1:0]  regf_w8_f16_rbus_i,  // Bus Read Value
  output logic        regf_w8_f16_rd_o,    // Bus Read Strobe
  // regf_w8_f18_o: bus=RT core=RS in_regf=True
  output logic [1:0]  regf_w8_f18_rval_o,  // Core Read Value
  input  wire         regf_w8_f18_rd_i,    // Core Read Strobe
  // regf_w8_f20_o: bus=RT core=RT in_regf=False
  input  wire  [1:0]  regf_w8_f20_rbus_i,  // Bus Read Value
  output logic        regf_w8_f20_rd_o,    // Bus Read Strobe
  // regf_w8_f22_o: bus=RT core=RT in_regf=True
  output logic [1:0]  regf_w8_f22_rval_o,  // Core Read Value
  input  wire         regf_w8_f22_rd_i,    // Core Read Strobe
  // regf_w8_f24_o: bus=RT core=RP in_regf=False
  input  wire  [1:0]  regf_w8_f24_rbus_i,  // Bus Read Value
  output logic        regf_w8_f24_rd_o,    // Bus Read Strobe
  // regf_w8_f26_o: bus=RT core=RP in_regf=True
  output logic [1:0]  regf_w8_f26_rval_o,  // Core Read Value
  // regf_w8_f28_o: bus=RT core=WO in_regf=False
  input  wire  [1:0]  regf_w8_f28_rbus_i,  // Bus Read Value
  output logic        regf_w8_f28_rd_o,    // Bus Read Strobe
  // regf_w8_f30_o: bus=RT core=WO in_regf=True
  input  wire  [1:0]  regf_w8_f30_wval_i,  // Core Write Value
  input  wire         regf_w8_f30_wr_i,    // Core Write Strobe
  // regf_w9_f0_o: bus=RT core=W0C in_regf=False
  input  wire  [1:0]  regf_w9_f0_rbus_i,   // Bus Read Value
  output logic        regf_w9_f0_rd_o,     // Bus Read Strobe
  // regf_w9_f2_o: bus=RT core=W0C in_regf=True
  input  wire  [1:0]  regf_w9_f2_wval_i,   // Core Write Value
  input  wire         regf_w9_f2_wr_i,     // Core Write Strobe
  // regf_w9_f4_o: bus=RT core=W0S in_regf=False
  input  wire  [1:0]  regf_w9_f4_rbus_i,   // Bus Read Value
  output logic        regf_w9_f4_rd_o,     // Bus Read Strobe
  // regf_w9_f6_o: bus=RT core=W0S in_regf=True
  input  wire  [1:0]  regf_w9_f6_wval_i,   // Core Write Value
  input  wire         regf_w9_f6_wr_i,     // Core Write Strobe
  // regf_w9_f8_o: bus=RT core=W1C in_regf=False
  input  wire  [1:0]  regf_w9_f8_rbus_i,   // Bus Read Value
  output logic        regf_w9_f8_rd_o,     // Bus Read Strobe
  // regf_w9_f10_o: bus=RT core=W1C in_regf=True
  input  wire  [1:0]  regf_w9_f10_wval_i,  // Core Write Value
  input  wire         regf_w9_f10_wr_i,    // Core Write Strobe
  // regf_w9_f12_o: bus=RT core=W1S in_regf=False
  input  wire  [1:0]  regf_w9_f12_rbus_i,  // Bus Read Value
  output logic        regf_w9_f12_rd_o,    // Bus Read Strobe
  // regf_w9_f14_o: bus=RT core=W1S in_regf=True
  input  wire  [1:0]  regf_w9_f14_wval_i,  // Core Write Value
  input  wire         regf_w9_f14_wr_i,    // Core Write Strobe
  // regf_w9_f16_o: bus=RT core=WL in_regf=False
  input  wire  [1:0]  regf_w9_f16_rbus_i,  // Bus Read Value
  output logic        regf_w9_f16_rd_o,    // Bus Read Strobe
  // regf_w9_f18_o: bus=RT core=WL in_regf=True
  input  wire  [1:0]  regf_w9_f18_wval_i,  // Core Write Value
  input  wire         regf_w9_f18_wr_i,    // Core Write Strobe
  // regf_w9_f20_o: bus=RT core=RW in_regf=False
  input  wire  [1:0]  regf_w9_f20_rbus_i,  // Bus Read Value
  output logic        regf_w9_f20_rd_o,    // Bus Read Strobe
  // regf_w9_f22_o: bus=RT core=RW in_regf=True
  output logic [1:0]  regf_w9_f22_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w9_f22_wval_i,  // Core Write Value
  input  wire         regf_w9_f22_wr_i,    // Core Write Strobe
  // regf_w9_f24_o: bus=RT core=RW0C in_regf=False
  input  wire  [1:0]  regf_w9_f24_rbus_i,  // Bus Read Value
  output logic        regf_w9_f24_rd_o,    // Bus Read Strobe
  // regf_w9_f26_o: bus=RT core=RW0C in_regf=True
  output logic [1:0]  regf_w9_f26_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w9_f26_wval_i,  // Core Write Value
  input  wire         regf_w9_f26_wr_i,    // Core Write Strobe
  // regf_w9_f28_o: bus=RT core=RW0S in_regf=False
  input  wire  [1:0]  regf_w9_f28_rbus_i,  // Bus Read Value
  output logic        regf_w9_f28_rd_o,    // Bus Read Strobe
  // regf_w9_f30_o: bus=RT core=RW0S in_regf=True
  output logic [1:0]  regf_w9_f30_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w9_f30_wval_i,  // Core Write Value
  input  wire         regf_w9_f30_wr_i,    // Core Write Strobe
  // regf_w10_f0_o: bus=RT core=RW1C in_regf=False
  input  wire  [1:0]  regf_w10_f0_rbus_i,  // Bus Read Value
  output logic        regf_w10_f0_rd_o,    // Bus Read Strobe
  // regf_w10_f2_o: bus=RT core=RW1C in_regf=True
  output logic [1:0]  regf_w10_f2_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w10_f2_wval_i,  // Core Write Value
  input  wire         regf_w10_f2_wr_i,    // Core Write Strobe
  // regf_w10_f4_o: bus=RT core=RW1S in_regf=False
  input  wire  [1:0]  regf_w10_f4_rbus_i,  // Bus Read Value
  output logic        regf_w10_f4_rd_o,    // Bus Read Strobe
  // regf_w10_f6_o: bus=RT core=RW1S in_regf=True
  output logic [1:0]  regf_w10_f6_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w10_f6_wval_i,  // Core Write Value
  input  wire         regf_w10_f6_wr_i,    // Core Write Strobe
  // regf_w10_f8_o: bus=RT core=RWL in_regf=False
  input  wire  [1:0]  regf_w10_f8_rbus_i,  // Bus Read Value
  output logic        regf_w10_f8_rd_o,    // Bus Read Strobe
  // regf_w10_f10_o: bus=RT core=RWL in_regf=True
  output logic [1:0]  regf_w10_f10_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w10_f10_wval_i, // Core Write Value
  input  wire         regf_w10_f10_wr_i,   // Core Write Strobe
  // regf_w10_f12_o: bus=RP core=RO in_regf=True
  output logic [1:0]  regf_w10_f12_rval_o, // Core Read Value
  // regf_w10_f14_o: bus=RP core=RC in_regf=False
  input  wire  [1:0]  regf_w10_f14_rbus_i, // Bus Read Value
  // regf_w10_f16_o: bus=RP core=RC in_regf=True
  output logic [1:0]  regf_w10_f16_rval_o, // Core Read Value
  input  wire         regf_w10_f16_rd_i,   // Core Read Strobe
  // regf_w10_f18_o: bus=RP core=RS in_regf=False
  input  wire  [1:0]  regf_w10_f18_rbus_i, // Bus Read Value
  // regf_w10_f20_o: bus=RP core=RS in_regf=True
  output logic [1:0]  regf_w10_f20_rval_o, // Core Read Value
  input  wire         regf_w10_f20_rd_i,   // Core Read Strobe
  // regf_w10_f22_o: bus=RP core=RT in_regf=False
  input  wire  [1:0]  regf_w10_f22_rbus_i, // Bus Read Value
  // regf_w10_f24_o: bus=RP core=RT in_regf=True
  output logic [1:0]  regf_w10_f24_rval_o, // Core Read Value
  input  wire         regf_w10_f24_rd_i,   // Core Read Strobe
  // regf_w10_f26_o: bus=RP core=RP in_regf=True
  output logic [1:0]  regf_w10_f26_rval_o, // Core Read Value
  // regf_w10_f28_o: bus=RP core=WO in_regf=False
  input  wire  [1:0]  regf_w10_f28_rbus_i, // Bus Read Value
  // regf_w10_f30_o: bus=RP core=WO in_regf=True
  input  wire  [1:0]  regf_w10_f30_wval_i, // Core Write Value
  input  wire         regf_w10_f30_wr_i,   // Core Write Strobe
  // regf_w11_f0_o: bus=RP core=W0C in_regf=False
  input  wire  [1:0]  regf_w11_f0_rbus_i,  // Bus Read Value
  // regf_w11_f2_o: bus=RP core=W0C in_regf=True
  input  wire  [1:0]  regf_w11_f2_wval_i,  // Core Write Value
  input  wire         regf_w11_f2_wr_i,    // Core Write Strobe
  // regf_w11_f4_o: bus=RP core=W0S in_regf=False
  input  wire  [1:0]  regf_w11_f4_rbus_i,  // Bus Read Value
  // regf_w11_f6_o: bus=RP core=W0S in_regf=True
  input  wire  [1:0]  regf_w11_f6_wval_i,  // Core Write Value
  input  wire         regf_w11_f6_wr_i,    // Core Write Strobe
  // regf_w11_f8_o: bus=RP core=W1C in_regf=False
  input  wire  [1:0]  regf_w11_f8_rbus_i,  // Bus Read Value
  // regf_w11_f10_o: bus=RP core=W1C in_regf=True
  input  wire  [1:0]  regf_w11_f10_wval_i, // Core Write Value
  input  wire         regf_w11_f10_wr_i,   // Core Write Strobe
  // regf_w11_f12_o: bus=RP core=W1S in_regf=False
  input  wire  [1:0]  regf_w11_f12_rbus_i, // Bus Read Value
  // regf_w11_f14_o: bus=RP core=W1S in_regf=True
  input  wire  [1:0]  regf_w11_f14_wval_i, // Core Write Value
  input  wire         regf_w11_f14_wr_i,   // Core Write Strobe
  // regf_w11_f16_o: bus=RP core=WL in_regf=False
  input  wire  [1:0]  regf_w11_f16_rbus_i, // Bus Read Value
  // regf_w11_f18_o: bus=RP core=WL in_regf=True
  input  wire  [1:0]  regf_w11_f18_wval_i, // Core Write Value
  input  wire         regf_w11_f18_wr_i,   // Core Write Strobe
  // regf_w11_f20_o: bus=RP core=RW in_regf=False
  input  wire  [1:0]  regf_w11_f20_rbus_i, // Bus Read Value
  // regf_w11_f22_o: bus=RP core=RW in_regf=True
  output logic [1:0]  regf_w11_f22_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w11_f22_wval_i, // Core Write Value
  input  wire         regf_w11_f22_wr_i,   // Core Write Strobe
  // regf_w11_f24_o: bus=RP core=RW0C in_regf=False
  input  wire  [1:0]  regf_w11_f24_rbus_i, // Bus Read Value
  // regf_w11_f26_o: bus=RP core=RW0C in_regf=True
  output logic [1:0]  regf_w11_f26_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w11_f26_wval_i, // Core Write Value
  input  wire         regf_w11_f26_wr_i,   // Core Write Strobe
  // regf_w11_f28_o: bus=RP core=RW0S in_regf=False
  input  wire  [1:0]  regf_w11_f28_rbus_i, // Bus Read Value
  // regf_w11_f30_o: bus=RP core=RW0S in_regf=True
  output logic [1:0]  regf_w11_f30_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w11_f30_wval_i, // Core Write Value
  input  wire         regf_w11_f30_wr_i,   // Core Write Strobe
  // regf_w12_f0_o: bus=RP core=RW1C in_regf=False
  input  wire  [1:0]  regf_w12_f0_rbus_i,  // Bus Read Value
  // regf_w12_f2_o: bus=RP core=RW1C in_regf=True
  output logic [1:0]  regf_w12_f2_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w12_f2_wval_i,  // Core Write Value
  input  wire         regf_w12_f2_wr_i,    // Core Write Strobe
  // regf_w12_f4_o: bus=RP core=RW1S in_regf=False
  input  wire  [1:0]  regf_w12_f4_rbus_i,  // Bus Read Value
  // regf_w12_f6_o: bus=RP core=RW1S in_regf=True
  output logic [1:0]  regf_w12_f6_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w12_f6_wval_i,  // Core Write Value
  input  wire         regf_w12_f6_wr_i,    // Core Write Strobe
  // regf_w12_f8_o: bus=RP core=RWL in_regf=False
  input  wire  [1:0]  regf_w12_f8_rbus_i,  // Bus Read Value
  // regf_w12_f10_o: bus=RP core=RWL in_regf=True
  output logic [1:0]  regf_w12_f10_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w12_f10_wval_i, // Core Write Value
  input  wire         regf_w12_f10_wr_i,   // Core Write Strobe
  // regf_w12_f12_o: bus=WO core=RO in_regf=False
  output logic [1:0]  regf_w12_f12_wbus_o, // Bus Write Value
  output logic        regf_w12_f12_wr_o,   // Bus Write Strobe
  // regf_w12_f14_o: bus=WO core=RO in_regf=True
  output logic [1:0]  regf_w12_f14_rval_o, // Core Read Value
  // regf_w12_f16_o: bus=WO core=RC in_regf=False
  output logic [1:0]  regf_w12_f16_wbus_o, // Bus Write Value
  output logic        regf_w12_f16_wr_o,   // Bus Write Strobe
  // regf_w12_f18_o: bus=WO core=RC in_regf=True
  output logic [1:0]  regf_w12_f18_rval_o, // Core Read Value
  input  wire         regf_w12_f18_rd_i,   // Core Read Strobe
  // regf_w12_f20_o: bus=WO core=RS in_regf=False
  output logic [1:0]  regf_w12_f20_wbus_o, // Bus Write Value
  output logic        regf_w12_f20_wr_o,   // Bus Write Strobe
  // regf_w12_f22_o: bus=WO core=RS in_regf=True
  output logic [1:0]  regf_w12_f22_rval_o, // Core Read Value
  input  wire         regf_w12_f22_rd_i,   // Core Read Strobe
  // regf_w12_f24_o: bus=WO core=RT in_regf=False
  output logic [1:0]  regf_w12_f24_wbus_o, // Bus Write Value
  output logic        regf_w12_f24_wr_o,   // Bus Write Strobe
  // regf_w12_f26_o: bus=WO core=RT in_regf=True
  output logic [1:0]  regf_w12_f26_rval_o, // Core Read Value
  input  wire         regf_w12_f26_rd_i,   // Core Read Strobe
  // regf_w12_f28_o: bus=WO core=RP in_regf=False
  output logic [1:0]  regf_w12_f28_wbus_o, // Bus Write Value
  output logic        regf_w12_f28_wr_o,   // Bus Write Strobe
  // regf_w12_f30_o: bus=WO core=RP in_regf=True
  output logic [1:0]  regf_w12_f30_rval_o, // Core Read Value
  // regf_w13_f0_o: bus=WO core=WO in_regf=False
  output logic [1:0]  regf_w13_f0_wbus_o,  // Bus Write Value
  output logic        regf_w13_f0_wr_o,    // Bus Write Strobe
  // regf_w13_f2_o: bus=WO core=WO in_regf=True
  input  wire  [1:0]  regf_w13_f2_wval_i,  // Core Write Value
  input  wire         regf_w13_f2_wr_i,    // Core Write Strobe
  // regf_w13_f4_o: bus=WO core=W0C in_regf=False
  output logic [1:0]  regf_w13_f4_wbus_o,  // Bus Write Value
  output logic        regf_w13_f4_wr_o,    // Bus Write Strobe
  // regf_w13_f6_o: bus=WO core=W0C in_regf=True
  input  wire  [1:0]  regf_w13_f6_wval_i,  // Core Write Value
  input  wire         regf_w13_f6_wr_i,    // Core Write Strobe
  // regf_w13_f8_o: bus=WO core=W0S in_regf=False
  output logic [1:0]  regf_w13_f8_wbus_o,  // Bus Write Value
  output logic        regf_w13_f8_wr_o,    // Bus Write Strobe
  // regf_w13_f10_o: bus=WO core=W0S in_regf=True
  input  wire  [1:0]  regf_w13_f10_wval_i, // Core Write Value
  input  wire         regf_w13_f10_wr_i,   // Core Write Strobe
  // regf_w13_f12_o: bus=WO core=W1C in_regf=False
  output logic [1:0]  regf_w13_f12_wbus_o, // Bus Write Value
  output logic        regf_w13_f12_wr_o,   // Bus Write Strobe
  // regf_w13_f14_o: bus=WO core=W1C in_regf=True
  input  wire  [1:0]  regf_w13_f14_wval_i, // Core Write Value
  input  wire         regf_w13_f14_wr_i,   // Core Write Strobe
  // regf_w13_f16_o: bus=WO core=W1S in_regf=False
  output logic [1:0]  regf_w13_f16_wbus_o, // Bus Write Value
  output logic        regf_w13_f16_wr_o,   // Bus Write Strobe
  // regf_w13_f18_o: bus=WO core=W1S in_regf=True
  input  wire  [1:0]  regf_w13_f18_wval_i, // Core Write Value
  input  wire         regf_w13_f18_wr_i,   // Core Write Strobe
  // regf_w13_f20_o: bus=WO core=WL in_regf=False
  output logic [1:0]  regf_w13_f20_wbus_o, // Bus Write Value
  output logic        regf_w13_f20_wr_o,   // Bus Write Strobe
  // regf_w13_f22_o: bus=WO core=WL in_regf=True
  input  wire  [1:0]  regf_w13_f22_wval_i, // Core Write Value
  input  wire         regf_w13_f22_wr_i,   // Core Write Strobe
  // regf_w13_f24_o: bus=WO core=RW in_regf=False
  output logic [1:0]  regf_w13_f24_wbus_o, // Bus Write Value
  output logic        regf_w13_f24_wr_o,   // Bus Write Strobe
  // regf_w13_f26_o: bus=WO core=RW in_regf=True
  output logic [1:0]  regf_w13_f26_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w13_f26_wval_i, // Core Write Value
  input  wire         regf_w13_f26_wr_i,   // Core Write Strobe
  // regf_w13_f28_o: bus=WO core=RW0C in_regf=False
  output logic [1:0]  regf_w13_f28_wbus_o, // Bus Write Value
  output logic        regf_w13_f28_wr_o,   // Bus Write Strobe
  // regf_w13_f30_o: bus=WO core=RW0C in_regf=True
  output logic [1:0]  regf_w13_f30_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w13_f30_wval_i, // Core Write Value
  input  wire         regf_w13_f30_wr_i,   // Core Write Strobe
  // regf_w14_f0_o: bus=WO core=RW0S in_regf=False
  output logic [1:0]  regf_w14_f0_wbus_o,  // Bus Write Value
  output logic        regf_w14_f0_wr_o,    // Bus Write Strobe
  // regf_w14_f2_o: bus=WO core=RW0S in_regf=True
  output logic [1:0]  regf_w14_f2_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w14_f2_wval_i,  // Core Write Value
  input  wire         regf_w14_f2_wr_i,    // Core Write Strobe
  // regf_w14_f4_o: bus=WO core=RW1C in_regf=False
  output logic [1:0]  regf_w14_f4_wbus_o,  // Bus Write Value
  output logic        regf_w14_f4_wr_o,    // Bus Write Strobe
  // regf_w14_f6_o: bus=WO core=RW1C in_regf=True
  output logic [1:0]  regf_w14_f6_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w14_f6_wval_i,  // Core Write Value
  input  wire         regf_w14_f6_wr_i,    // Core Write Strobe
  // regf_w14_f8_o: bus=WO core=RW1S in_regf=False
  output logic [1:0]  regf_w14_f8_wbus_o,  // Bus Write Value
  output logic        regf_w14_f8_wr_o,    // Bus Write Strobe
  // regf_w14_f10_o: bus=WO core=RW1S in_regf=True
  output logic [1:0]  regf_w14_f10_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w14_f10_wval_i, // Core Write Value
  input  wire         regf_w14_f10_wr_i,   // Core Write Strobe
  // regf_w14_f12_o: bus=WO core=RWL in_regf=False
  output logic [1:0]  regf_w14_f12_wbus_o, // Bus Write Value
  output logic        regf_w14_f12_wr_o,   // Bus Write Strobe
  // regf_w14_f14_o: bus=WO core=RWL in_regf=True
  output logic [1:0]  regf_w14_f14_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w14_f14_wval_i, // Core Write Value
  input  wire         regf_w14_f14_wr_i,   // Core Write Strobe
  // regf_w14_f16_o: bus=W0C core=RO in_regf=False
  output logic [1:0]  regf_w14_f16_wbus_o, // Bus Write Value
  output logic        regf_w14_f16_wr_o,   // Bus Write Strobe
  // regf_w14_f18_o: bus=W0C core=RO in_regf=True
  output logic [1:0]  regf_w14_f18_rval_o, // Core Read Value
  // regf_w14_f20_o: bus=W0C core=RC in_regf=False
  output logic [1:0]  regf_w14_f20_wbus_o, // Bus Write Value
  output logic        regf_w14_f20_wr_o,   // Bus Write Strobe
  // regf_w14_f22_o: bus=W0C core=RC in_regf=True
  output logic [1:0]  regf_w14_f22_rval_o, // Core Read Value
  input  wire         regf_w14_f22_rd_i,   // Core Read Strobe
  // regf_w14_f24_o: bus=W0C core=RS in_regf=False
  output logic [1:0]  regf_w14_f24_wbus_o, // Bus Write Value
  output logic        regf_w14_f24_wr_o,   // Bus Write Strobe
  // regf_w14_f26_o: bus=W0C core=RS in_regf=True
  output logic [1:0]  regf_w14_f26_rval_o, // Core Read Value
  input  wire         regf_w14_f26_rd_i,   // Core Read Strobe
  // regf_w14_f28_o: bus=W0C core=RT in_regf=False
  output logic [1:0]  regf_w14_f28_wbus_o, // Bus Write Value
  output logic        regf_w14_f28_wr_o,   // Bus Write Strobe
  // regf_w14_f30_o: bus=W0C core=RT in_regf=True
  output logic [1:0]  regf_w14_f30_rval_o, // Core Read Value
  input  wire         regf_w14_f30_rd_i,   // Core Read Strobe
  // regf_w15_f0_o: bus=W0C core=RP in_regf=False
  output logic [1:0]  regf_w15_f0_wbus_o,  // Bus Write Value
  output logic        regf_w15_f0_wr_o,    // Bus Write Strobe
  // regf_w15_f2_o: bus=W0C core=RP in_regf=True
  output logic [1:0]  regf_w15_f2_rval_o,  // Core Read Value
  // regf_w15_f4_o: bus=W0C core=WO in_regf=False
  output logic [1:0]  regf_w15_f4_wbus_o,  // Bus Write Value
  output logic        regf_w15_f4_wr_o,    // Bus Write Strobe
  // regf_w15_f6_o: bus=W0C core=WO in_regf=True
  input  wire  [1:0]  regf_w15_f6_wval_i,  // Core Write Value
  input  wire         regf_w15_f6_wr_i,    // Core Write Strobe
  // regf_w15_f8_o: bus=W0C core=W0C in_regf=False
  output logic [1:0]  regf_w15_f8_wbus_o,  // Bus Write Value
  output logic        regf_w15_f8_wr_o,    // Bus Write Strobe
  // regf_w15_f10_o: bus=W0C core=W0C in_regf=True
  input  wire  [1:0]  regf_w15_f10_wval_i, // Core Write Value
  input  wire         regf_w15_f10_wr_i,   // Core Write Strobe
  // regf_w15_f12_o: bus=W0C core=W0S in_regf=False
  output logic [1:0]  regf_w15_f12_wbus_o, // Bus Write Value
  output logic        regf_w15_f12_wr_o,   // Bus Write Strobe
  // regf_w15_f14_o: bus=W0C core=W0S in_regf=True
  input  wire  [1:0]  regf_w15_f14_wval_i, // Core Write Value
  input  wire         regf_w15_f14_wr_i,   // Core Write Strobe
  // regf_w15_f16_o: bus=W0C core=W1C in_regf=False
  output logic [1:0]  regf_w15_f16_wbus_o, // Bus Write Value
  output logic        regf_w15_f16_wr_o,   // Bus Write Strobe
  // regf_w15_f18_o: bus=W0C core=W1C in_regf=True
  input  wire  [1:0]  regf_w15_f18_wval_i, // Core Write Value
  input  wire         regf_w15_f18_wr_i,   // Core Write Strobe
  // regf_w15_f20_o: bus=W0C core=W1S in_regf=False
  output logic [1:0]  regf_w15_f20_wbus_o, // Bus Write Value
  output logic        regf_w15_f20_wr_o,   // Bus Write Strobe
  // regf_w15_f22_o: bus=W0C core=W1S in_regf=True
  input  wire  [1:0]  regf_w15_f22_wval_i, // Core Write Value
  input  wire         regf_w15_f22_wr_i,   // Core Write Strobe
  // regf_w15_f24_o: bus=W0C core=WL in_regf=False
  output logic [1:0]  regf_w15_f24_wbus_o, // Bus Write Value
  output logic        regf_w15_f24_wr_o,   // Bus Write Strobe
  // regf_w15_f26_o: bus=W0C core=WL in_regf=True
  input  wire  [1:0]  regf_w15_f26_wval_i, // Core Write Value
  input  wire         regf_w15_f26_wr_i,   // Core Write Strobe
  // regf_w15_f28_o: bus=W0C core=RW in_regf=False
  output logic [1:0]  regf_w15_f28_wbus_o, // Bus Write Value
  output logic        regf_w15_f28_wr_o,   // Bus Write Strobe
  // regf_w15_f30_o: bus=W0C core=RW in_regf=True
  output logic [1:0]  regf_w15_f30_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w15_f30_wval_i, // Core Write Value
  input  wire         regf_w15_f30_wr_i,   // Core Write Strobe
  // regf_w16_f0_o: bus=W0C core=RW0C in_regf=False
  output logic [1:0]  regf_w16_f0_wbus_o,  // Bus Write Value
  output logic        regf_w16_f0_wr_o,    // Bus Write Strobe
  // regf_w16_f2_o: bus=W0C core=RW0C in_regf=True
  output logic [1:0]  regf_w16_f2_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w16_f2_wval_i,  // Core Write Value
  input  wire         regf_w16_f2_wr_i,    // Core Write Strobe
  // regf_w16_f4_o: bus=W0C core=RW0S in_regf=False
  output logic [1:0]  regf_w16_f4_wbus_o,  // Bus Write Value
  output logic        regf_w16_f4_wr_o,    // Bus Write Strobe
  // regf_w16_f6_o: bus=W0C core=RW0S in_regf=True
  output logic [1:0]  regf_w16_f6_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w16_f6_wval_i,  // Core Write Value
  input  wire         regf_w16_f6_wr_i,    // Core Write Strobe
  // regf_w16_f8_o: bus=W0C core=RW1C in_regf=False
  output logic [1:0]  regf_w16_f8_wbus_o,  // Bus Write Value
  output logic        regf_w16_f8_wr_o,    // Bus Write Strobe
  // regf_w16_f10_o: bus=W0C core=RW1C in_regf=True
  output logic [1:0]  regf_w16_f10_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w16_f10_wval_i, // Core Write Value
  input  wire         regf_w16_f10_wr_i,   // Core Write Strobe
  // regf_w16_f12_o: bus=W0C core=RW1S in_regf=False
  output logic [1:0]  regf_w16_f12_wbus_o, // Bus Write Value
  output logic        regf_w16_f12_wr_o,   // Bus Write Strobe
  // regf_w16_f14_o: bus=W0C core=RW1S in_regf=True
  output logic [1:0]  regf_w16_f14_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w16_f14_wval_i, // Core Write Value
  input  wire         regf_w16_f14_wr_i,   // Core Write Strobe
  // regf_w16_f16_o: bus=W0C core=RWL in_regf=False
  output logic [1:0]  regf_w16_f16_wbus_o, // Bus Write Value
  output logic        regf_w16_f16_wr_o,   // Bus Write Strobe
  // regf_w16_f18_o: bus=W0C core=RWL in_regf=True
  output logic [1:0]  regf_w16_f18_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w16_f18_wval_i, // Core Write Value
  input  wire         regf_w16_f18_wr_i,   // Core Write Strobe
  // regf_w16_f20_o: bus=W0S core=RO in_regf=False
  output logic [1:0]  regf_w16_f20_wbus_o, // Bus Write Value
  output logic        regf_w16_f20_wr_o,   // Bus Write Strobe
  // regf_w16_f22_o: bus=W0S core=RO in_regf=True
  output logic [1:0]  regf_w16_f22_rval_o, // Core Read Value
  // regf_w16_f24_o: bus=W0S core=RC in_regf=False
  output logic [1:0]  regf_w16_f24_wbus_o, // Bus Write Value
  output logic        regf_w16_f24_wr_o,   // Bus Write Strobe
  // regf_w16_f26_o: bus=W0S core=RC in_regf=True
  output logic [1:0]  regf_w16_f26_rval_o, // Core Read Value
  input  wire         regf_w16_f26_rd_i,   // Core Read Strobe
  // regf_w16_f28_o: bus=W0S core=RS in_regf=False
  output logic [1:0]  regf_w16_f28_wbus_o, // Bus Write Value
  output logic        regf_w16_f28_wr_o,   // Bus Write Strobe
  // regf_w16_f30_o: bus=W0S core=RS in_regf=True
  output logic [1:0]  regf_w16_f30_rval_o, // Core Read Value
  input  wire         regf_w16_f30_rd_i,   // Core Read Strobe
  // regf_w17_f0_o: bus=W0S core=RT in_regf=False
  output logic [1:0]  regf_w17_f0_wbus_o,  // Bus Write Value
  output logic        regf_w17_f0_wr_o,    // Bus Write Strobe
  // regf_w17_f2_o: bus=W0S core=RT in_regf=True
  output logic [1:0]  regf_w17_f2_rval_o,  // Core Read Value
  input  wire         regf_w17_f2_rd_i,    // Core Read Strobe
  // regf_w17_f4_o: bus=W0S core=RP in_regf=False
  output logic [1:0]  regf_w17_f4_wbus_o,  // Bus Write Value
  output logic        regf_w17_f4_wr_o,    // Bus Write Strobe
  // regf_w17_f6_o: bus=W0S core=RP in_regf=True
  output logic [1:0]  regf_w17_f6_rval_o,  // Core Read Value
  // regf_w17_f8_o: bus=W0S core=WO in_regf=False
  output logic [1:0]  regf_w17_f8_wbus_o,  // Bus Write Value
  output logic        regf_w17_f8_wr_o,    // Bus Write Strobe
  // regf_w17_f10_o: bus=W0S core=WO in_regf=True
  input  wire  [1:0]  regf_w17_f10_wval_i, // Core Write Value
  input  wire         regf_w17_f10_wr_i,   // Core Write Strobe
  // regf_w17_f12_o: bus=W0S core=W0C in_regf=False
  output logic [1:0]  regf_w17_f12_wbus_o, // Bus Write Value
  output logic        regf_w17_f12_wr_o,   // Bus Write Strobe
  // regf_w17_f14_o: bus=W0S core=W0C in_regf=True
  input  wire  [1:0]  regf_w17_f14_wval_i, // Core Write Value
  input  wire         regf_w17_f14_wr_i,   // Core Write Strobe
  // regf_w17_f16_o: bus=W0S core=W0S in_regf=False
  output logic [1:0]  regf_w17_f16_wbus_o, // Bus Write Value
  output logic        regf_w17_f16_wr_o,   // Bus Write Strobe
  // regf_w17_f18_o: bus=W0S core=W0S in_regf=True
  input  wire  [1:0]  regf_w17_f18_wval_i, // Core Write Value
  input  wire         regf_w17_f18_wr_i,   // Core Write Strobe
  // regf_w17_f20_o: bus=W0S core=W1C in_regf=False
  output logic [1:0]  regf_w17_f20_wbus_o, // Bus Write Value
  output logic        regf_w17_f20_wr_o,   // Bus Write Strobe
  // regf_w17_f22_o: bus=W0S core=W1C in_regf=True
  input  wire  [1:0]  regf_w17_f22_wval_i, // Core Write Value
  input  wire         regf_w17_f22_wr_i,   // Core Write Strobe
  // regf_w17_f24_o: bus=W0S core=W1S in_regf=False
  output logic [1:0]  regf_w17_f24_wbus_o, // Bus Write Value
  output logic        regf_w17_f24_wr_o,   // Bus Write Strobe
  // regf_w17_f26_o: bus=W0S core=W1S in_regf=True
  input  wire  [1:0]  regf_w17_f26_wval_i, // Core Write Value
  input  wire         regf_w17_f26_wr_i,   // Core Write Strobe
  // regf_w17_f28_o: bus=W0S core=WL in_regf=False
  output logic [1:0]  regf_w17_f28_wbus_o, // Bus Write Value
  output logic        regf_w17_f28_wr_o,   // Bus Write Strobe
  // regf_w17_f30_o: bus=W0S core=WL in_regf=True
  input  wire  [1:0]  regf_w17_f30_wval_i, // Core Write Value
  input  wire         regf_w17_f30_wr_i,   // Core Write Strobe
  // regf_w18_f0_o: bus=W0S core=RW in_regf=False
  output logic [1:0]  regf_w18_f0_wbus_o,  // Bus Write Value
  output logic        regf_w18_f0_wr_o,    // Bus Write Strobe
  // regf_w18_f2_o: bus=W0S core=RW in_regf=True
  output logic [1:0]  regf_w18_f2_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w18_f2_wval_i,  // Core Write Value
  input  wire         regf_w18_f2_wr_i,    // Core Write Strobe
  // regf_w18_f4_o: bus=W0S core=RW0C in_regf=False
  output logic [1:0]  regf_w18_f4_wbus_o,  // Bus Write Value
  output logic        regf_w18_f4_wr_o,    // Bus Write Strobe
  // regf_w18_f6_o: bus=W0S core=RW0C in_regf=True
  output logic [1:0]  regf_w18_f6_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w18_f6_wval_i,  // Core Write Value
  input  wire         regf_w18_f6_wr_i,    // Core Write Strobe
  // regf_w18_f8_o: bus=W0S core=RW0S in_regf=False
  output logic [1:0]  regf_w18_f8_wbus_o,  // Bus Write Value
  output logic        regf_w18_f8_wr_o,    // Bus Write Strobe
  // regf_w18_f10_o: bus=W0S core=RW0S in_regf=True
  output logic [1:0]  regf_w18_f10_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w18_f10_wval_i, // Core Write Value
  input  wire         regf_w18_f10_wr_i,   // Core Write Strobe
  // regf_w18_f12_o: bus=W0S core=RW1C in_regf=False
  output logic [1:0]  regf_w18_f12_wbus_o, // Bus Write Value
  output logic        regf_w18_f12_wr_o,   // Bus Write Strobe
  // regf_w18_f14_o: bus=W0S core=RW1C in_regf=True
  output logic [1:0]  regf_w18_f14_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w18_f14_wval_i, // Core Write Value
  input  wire         regf_w18_f14_wr_i,   // Core Write Strobe
  // regf_w18_f16_o: bus=W0S core=RW1S in_regf=False
  output logic [1:0]  regf_w18_f16_wbus_o, // Bus Write Value
  output logic        regf_w18_f16_wr_o,   // Bus Write Strobe
  // regf_w18_f18_o: bus=W0S core=RW1S in_regf=True
  output logic [1:0]  regf_w18_f18_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w18_f18_wval_i, // Core Write Value
  input  wire         regf_w18_f18_wr_i,   // Core Write Strobe
  // regf_w18_f20_o: bus=W0S core=RWL in_regf=False
  output logic [1:0]  regf_w18_f20_wbus_o, // Bus Write Value
  output logic        regf_w18_f20_wr_o,   // Bus Write Strobe
  // regf_w18_f22_o: bus=W0S core=RWL in_regf=True
  output logic [1:0]  regf_w18_f22_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w18_f22_wval_i, // Core Write Value
  input  wire         regf_w18_f22_wr_i,   // Core Write Strobe
  // regf_w18_f24_o: bus=W1C core=RO in_regf=False
  output logic [1:0]  regf_w18_f24_wbus_o, // Bus Write Value
  output logic        regf_w18_f24_wr_o,   // Bus Write Strobe
  // regf_w18_f26_o: bus=W1C core=RO in_regf=True
  output logic [1:0]  regf_w18_f26_rval_o, // Core Read Value
  // regf_w18_f28_o: bus=W1C core=RC in_regf=False
  output logic [1:0]  regf_w18_f28_wbus_o, // Bus Write Value
  output logic        regf_w18_f28_wr_o,   // Bus Write Strobe
  // regf_w18_f30_o: bus=W1C core=RC in_regf=True
  output logic [1:0]  regf_w18_f30_rval_o, // Core Read Value
  input  wire         regf_w18_f30_rd_i,   // Core Read Strobe
  // regf_w19_f0_o: bus=W1C core=RS in_regf=False
  output logic [1:0]  regf_w19_f0_wbus_o,  // Bus Write Value
  output logic        regf_w19_f0_wr_o,    // Bus Write Strobe
  // regf_w19_f2_o: bus=W1C core=RS in_regf=True
  output logic [1:0]  regf_w19_f2_rval_o,  // Core Read Value
  input  wire         regf_w19_f2_rd_i,    // Core Read Strobe
  // regf_w19_f4_o: bus=W1C core=RT in_regf=False
  output logic [1:0]  regf_w19_f4_wbus_o,  // Bus Write Value
  output logic        regf_w19_f4_wr_o,    // Bus Write Strobe
  // regf_w19_f6_o: bus=W1C core=RT in_regf=True
  output logic [1:0]  regf_w19_f6_rval_o,  // Core Read Value
  input  wire         regf_w19_f6_rd_i,    // Core Read Strobe
  // regf_w19_f8_o: bus=W1C core=RP in_regf=False
  output logic [1:0]  regf_w19_f8_wbus_o,  // Bus Write Value
  output logic        regf_w19_f8_wr_o,    // Bus Write Strobe
  // regf_w19_f10_o: bus=W1C core=RP in_regf=True
  output logic [1:0]  regf_w19_f10_rval_o, // Core Read Value
  // regf_w19_f12_o: bus=W1C core=WO in_regf=False
  output logic [1:0]  regf_w19_f12_wbus_o, // Bus Write Value
  output logic        regf_w19_f12_wr_o,   // Bus Write Strobe
  // regf_w19_f14_o: bus=W1C core=WO in_regf=True
  input  wire  [1:0]  regf_w19_f14_wval_i, // Core Write Value
  input  wire         regf_w19_f14_wr_i,   // Core Write Strobe
  // regf_w19_f16_o: bus=W1C core=W0C in_regf=False
  output logic [1:0]  regf_w19_f16_wbus_o, // Bus Write Value
  output logic        regf_w19_f16_wr_o,   // Bus Write Strobe
  // regf_w19_f18_o: bus=W1C core=W0C in_regf=True
  input  wire  [1:0]  regf_w19_f18_wval_i, // Core Write Value
  input  wire         regf_w19_f18_wr_i,   // Core Write Strobe
  // regf_w19_f20_o: bus=W1C core=W0S in_regf=False
  output logic [1:0]  regf_w19_f20_wbus_o, // Bus Write Value
  output logic        regf_w19_f20_wr_o,   // Bus Write Strobe
  // regf_w19_f22_o: bus=W1C core=W0S in_regf=True
  input  wire  [1:0]  regf_w19_f22_wval_i, // Core Write Value
  input  wire         regf_w19_f22_wr_i,   // Core Write Strobe
  // regf_w19_f24_o: bus=W1C core=W1C in_regf=False
  output logic [1:0]  regf_w19_f24_wbus_o, // Bus Write Value
  output logic        regf_w19_f24_wr_o,   // Bus Write Strobe
  // regf_w19_f26_o: bus=W1C core=W1C in_regf=True
  input  wire  [1:0]  regf_w19_f26_wval_i, // Core Write Value
  input  wire         regf_w19_f26_wr_i,   // Core Write Strobe
  // regf_w19_f28_o: bus=W1C core=W1S in_regf=False
  output logic [1:0]  regf_w19_f28_wbus_o, // Bus Write Value
  output logic        regf_w19_f28_wr_o,   // Bus Write Strobe
  // regf_w19_f30_o: bus=W1C core=W1S in_regf=True
  input  wire  [1:0]  regf_w19_f30_wval_i, // Core Write Value
  input  wire         regf_w19_f30_wr_i,   // Core Write Strobe
  // regf_w20_f0_o: bus=W1C core=WL in_regf=False
  output logic [1:0]  regf_w20_f0_wbus_o,  // Bus Write Value
  output logic        regf_w20_f0_wr_o,    // Bus Write Strobe
  // regf_w20_f2_o: bus=W1C core=WL in_regf=True
  input  wire  [1:0]  regf_w20_f2_wval_i,  // Core Write Value
  input  wire         regf_w20_f2_wr_i,    // Core Write Strobe
  // regf_w20_f4_o: bus=W1C core=RW in_regf=False
  output logic [1:0]  regf_w20_f4_wbus_o,  // Bus Write Value
  output logic        regf_w20_f4_wr_o,    // Bus Write Strobe
  // regf_w20_f6_o: bus=W1C core=RW in_regf=True
  output logic [1:0]  regf_w20_f6_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w20_f6_wval_i,  // Core Write Value
  input  wire         regf_w20_f6_wr_i,    // Core Write Strobe
  // regf_w20_f8_o: bus=W1C core=RW0C in_regf=False
  output logic [1:0]  regf_w20_f8_wbus_o,  // Bus Write Value
  output logic        regf_w20_f8_wr_o,    // Bus Write Strobe
  // regf_w20_f10_o: bus=W1C core=RW0C in_regf=True
  output logic [1:0]  regf_w20_f10_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w20_f10_wval_i, // Core Write Value
  input  wire         regf_w20_f10_wr_i,   // Core Write Strobe
  // regf_w20_f12_o: bus=W1C core=RW0S in_regf=False
  output logic [1:0]  regf_w20_f12_wbus_o, // Bus Write Value
  output logic        regf_w20_f12_wr_o,   // Bus Write Strobe
  // regf_w20_f14_o: bus=W1C core=RW0S in_regf=True
  output logic [1:0]  regf_w20_f14_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w20_f14_wval_i, // Core Write Value
  input  wire         regf_w20_f14_wr_i,   // Core Write Strobe
  // regf_w20_f16_o: bus=W1C core=RW1C in_regf=False
  output logic [1:0]  regf_w20_f16_wbus_o, // Bus Write Value
  output logic        regf_w20_f16_wr_o,   // Bus Write Strobe
  // regf_w20_f18_o: bus=W1C core=RW1C in_regf=True
  output logic [1:0]  regf_w20_f18_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w20_f18_wval_i, // Core Write Value
  input  wire         regf_w20_f18_wr_i,   // Core Write Strobe
  // regf_w20_f20_o: bus=W1C core=RW1S in_regf=False
  output logic [1:0]  regf_w20_f20_wbus_o, // Bus Write Value
  output logic        regf_w20_f20_wr_o,   // Bus Write Strobe
  // regf_w20_f22_o: bus=W1C core=RW1S in_regf=True
  output logic [1:0]  regf_w20_f22_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w20_f22_wval_i, // Core Write Value
  input  wire         regf_w20_f22_wr_i,   // Core Write Strobe
  // regf_w20_f24_o: bus=W1C core=RWL in_regf=False
  output logic [1:0]  regf_w20_f24_wbus_o, // Bus Write Value
  output logic        regf_w20_f24_wr_o,   // Bus Write Strobe
  // regf_w20_f26_o: bus=W1C core=RWL in_regf=True
  output logic [1:0]  regf_w20_f26_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w20_f26_wval_i, // Core Write Value
  input  wire         regf_w20_f26_wr_i,   // Core Write Strobe
  // regf_w20_f28_o: bus=W1S core=RO in_regf=False
  output logic [1:0]  regf_w20_f28_wbus_o, // Bus Write Value
  output logic        regf_w20_f28_wr_o,   // Bus Write Strobe
  // regf_w20_f30_o: bus=W1S core=RO in_regf=True
  output logic [1:0]  regf_w20_f30_rval_o, // Core Read Value
  // regf_w21_f0_o: bus=W1S core=RC in_regf=False
  output logic [1:0]  regf_w21_f0_wbus_o,  // Bus Write Value
  output logic        regf_w21_f0_wr_o,    // Bus Write Strobe
  // regf_w21_f2_o: bus=W1S core=RC in_regf=True
  output logic [1:0]  regf_w21_f2_rval_o,  // Core Read Value
  input  wire         regf_w21_f2_rd_i,    // Core Read Strobe
  // regf_w21_f4_o: bus=W1S core=RS in_regf=False
  output logic [1:0]  regf_w21_f4_wbus_o,  // Bus Write Value
  output logic        regf_w21_f4_wr_o,    // Bus Write Strobe
  // regf_w21_f6_o: bus=W1S core=RS in_regf=True
  output logic [1:0]  regf_w21_f6_rval_o,  // Core Read Value
  input  wire         regf_w21_f6_rd_i,    // Core Read Strobe
  // regf_w21_f8_o: bus=W1S core=RT in_regf=False
  output logic [1:0]  regf_w21_f8_wbus_o,  // Bus Write Value
  output logic        regf_w21_f8_wr_o,    // Bus Write Strobe
  // regf_w21_f10_o: bus=W1S core=RT in_regf=True
  output logic [1:0]  regf_w21_f10_rval_o, // Core Read Value
  input  wire         regf_w21_f10_rd_i,   // Core Read Strobe
  // regf_w21_f12_o: bus=W1S core=RP in_regf=False
  output logic [1:0]  regf_w21_f12_wbus_o, // Bus Write Value
  output logic        regf_w21_f12_wr_o,   // Bus Write Strobe
  // regf_w21_f14_o: bus=W1S core=RP in_regf=True
  output logic [1:0]  regf_w21_f14_rval_o, // Core Read Value
  // regf_w21_f16_o: bus=W1S core=WO in_regf=False
  output logic [1:0]  regf_w21_f16_wbus_o, // Bus Write Value
  output logic        regf_w21_f16_wr_o,   // Bus Write Strobe
  // regf_w21_f18_o: bus=W1S core=WO in_regf=True
  input  wire  [1:0]  regf_w21_f18_wval_i, // Core Write Value
  input  wire         regf_w21_f18_wr_i,   // Core Write Strobe
  // regf_w21_f20_o: bus=W1S core=W0C in_regf=False
  output logic [1:0]  regf_w21_f20_wbus_o, // Bus Write Value
  output logic        regf_w21_f20_wr_o,   // Bus Write Strobe
  // regf_w21_f22_o: bus=W1S core=W0C in_regf=True
  input  wire  [1:0]  regf_w21_f22_wval_i, // Core Write Value
  input  wire         regf_w21_f22_wr_i,   // Core Write Strobe
  // regf_w21_f24_o: bus=W1S core=W0S in_regf=False
  output logic [1:0]  regf_w21_f24_wbus_o, // Bus Write Value
  output logic        regf_w21_f24_wr_o,   // Bus Write Strobe
  // regf_w21_f26_o: bus=W1S core=W0S in_regf=True
  input  wire  [1:0]  regf_w21_f26_wval_i, // Core Write Value
  input  wire         regf_w21_f26_wr_i,   // Core Write Strobe
  // regf_w21_f28_o: bus=W1S core=W1C in_regf=False
  output logic [1:0]  regf_w21_f28_wbus_o, // Bus Write Value
  output logic        regf_w21_f28_wr_o,   // Bus Write Strobe
  // regf_w21_f30_o: bus=W1S core=W1C in_regf=True
  input  wire  [1:0]  regf_w21_f30_wval_i, // Core Write Value
  input  wire         regf_w21_f30_wr_i,   // Core Write Strobe
  // regf_w22_f0_o: bus=W1S core=W1S in_regf=False
  output logic [1:0]  regf_w22_f0_wbus_o,  // Bus Write Value
  output logic        regf_w22_f0_wr_o,    // Bus Write Strobe
  // regf_w22_f2_o: bus=W1S core=W1S in_regf=True
  input  wire  [1:0]  regf_w22_f2_wval_i,  // Core Write Value
  input  wire         regf_w22_f2_wr_i,    // Core Write Strobe
  // regf_w22_f4_o: bus=W1S core=WL in_regf=False
  output logic [1:0]  regf_w22_f4_wbus_o,  // Bus Write Value
  output logic        regf_w22_f4_wr_o,    // Bus Write Strobe
  // regf_w22_f6_o: bus=W1S core=WL in_regf=True
  input  wire  [1:0]  regf_w22_f6_wval_i,  // Core Write Value
  input  wire         regf_w22_f6_wr_i,    // Core Write Strobe
  // regf_w22_f8_o: bus=W1S core=RW in_regf=False
  output logic [1:0]  regf_w22_f8_wbus_o,  // Bus Write Value
  output logic        regf_w22_f8_wr_o,    // Bus Write Strobe
  // regf_w22_f10_o: bus=W1S core=RW in_regf=True
  output logic [1:0]  regf_w22_f10_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w22_f10_wval_i, // Core Write Value
  input  wire         regf_w22_f10_wr_i,   // Core Write Strobe
  // regf_w22_f12_o: bus=W1S core=RW0C in_regf=False
  output logic [1:0]  regf_w22_f12_wbus_o, // Bus Write Value
  output logic        regf_w22_f12_wr_o,   // Bus Write Strobe
  // regf_w22_f14_o: bus=W1S core=RW0C in_regf=True
  output logic [1:0]  regf_w22_f14_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w22_f14_wval_i, // Core Write Value
  input  wire         regf_w22_f14_wr_i,   // Core Write Strobe
  // regf_w22_f16_o: bus=W1S core=RW0S in_regf=False
  output logic [1:0]  regf_w22_f16_wbus_o, // Bus Write Value
  output logic        regf_w22_f16_wr_o,   // Bus Write Strobe
  // regf_w22_f18_o: bus=W1S core=RW0S in_regf=True
  output logic [1:0]  regf_w22_f18_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w22_f18_wval_i, // Core Write Value
  input  wire         regf_w22_f18_wr_i,   // Core Write Strobe
  // regf_w22_f20_o: bus=W1S core=RW1C in_regf=False
  output logic [1:0]  regf_w22_f20_wbus_o, // Bus Write Value
  output logic        regf_w22_f20_wr_o,   // Bus Write Strobe
  // regf_w22_f22_o: bus=W1S core=RW1C in_regf=True
  output logic [1:0]  regf_w22_f22_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w22_f22_wval_i, // Core Write Value
  input  wire         regf_w22_f22_wr_i,   // Core Write Strobe
  // regf_w22_f24_o: bus=W1S core=RW1S in_regf=False
  output logic [1:0]  regf_w22_f24_wbus_o, // Bus Write Value
  output logic        regf_w22_f24_wr_o,   // Bus Write Strobe
  // regf_w22_f26_o: bus=W1S core=RW1S in_regf=True
  output logic [1:0]  regf_w22_f26_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w22_f26_wval_i, // Core Write Value
  input  wire         regf_w22_f26_wr_i,   // Core Write Strobe
  // regf_w22_f28_o: bus=W1S core=RWL in_regf=False
  output logic [1:0]  regf_w22_f28_wbus_o, // Bus Write Value
  output logic        regf_w22_f28_wr_o,   // Bus Write Strobe
  // regf_w22_f30_o: bus=W1S core=RWL in_regf=True
  output logic [1:0]  regf_w22_f30_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w22_f30_wval_i, // Core Write Value
  input  wire         regf_w22_f30_wr_i,   // Core Write Strobe
  // regf_w23_f0_o: bus=WL core=RO in_regf=False
  output logic [1:0]  regf_w23_f0_wbus_o,  // Bus Write Value
  output logic        regf_w23_f0_wr_o,    // Bus Write Strobe
  // regf_w23_f2_o: bus=WL core=RO in_regf=True
  output logic [1:0]  regf_w23_f2_rval_o,  // Core Read Value
  // regf_w23_f4_o: bus=WL core=RC in_regf=False
  output logic [1:0]  regf_w23_f4_wbus_o,  // Bus Write Value
  output logic        regf_w23_f4_wr_o,    // Bus Write Strobe
  // regf_w23_f6_o: bus=WL core=RC in_regf=True
  output logic [1:0]  regf_w23_f6_rval_o,  // Core Read Value
  input  wire         regf_w23_f6_rd_i,    // Core Read Strobe
  // regf_w23_f8_o: bus=WL core=RS in_regf=False
  output logic [1:0]  regf_w23_f8_wbus_o,  // Bus Write Value
  output logic        regf_w23_f8_wr_o,    // Bus Write Strobe
  // regf_w23_f10_o: bus=WL core=RS in_regf=True
  output logic [1:0]  regf_w23_f10_rval_o, // Core Read Value
  input  wire         regf_w23_f10_rd_i,   // Core Read Strobe
  // regf_w23_f12_o: bus=WL core=RT in_regf=False
  output logic [1:0]  regf_w23_f12_wbus_o, // Bus Write Value
  output logic        regf_w23_f12_wr_o,   // Bus Write Strobe
  // regf_w23_f14_o: bus=WL core=RT in_regf=True
  output logic [1:0]  regf_w23_f14_rval_o, // Core Read Value
  input  wire         regf_w23_f14_rd_i,   // Core Read Strobe
  // regf_w23_f16_o: bus=WL core=RP in_regf=False
  output logic [1:0]  regf_w23_f16_wbus_o, // Bus Write Value
  output logic        regf_w23_f16_wr_o,   // Bus Write Strobe
  // regf_w23_f18_o: bus=WL core=RP in_regf=True
  output logic [1:0]  regf_w23_f18_rval_o, // Core Read Value
  // regf_w23_f20_o: bus=WL core=WO in_regf=False
  output logic [1:0]  regf_w23_f20_wbus_o, // Bus Write Value
  output logic        regf_w23_f20_wr_o,   // Bus Write Strobe
  // regf_w23_f22_o: bus=WL core=WO in_regf=True
  input  wire  [1:0]  regf_w23_f22_wval_i, // Core Write Value
  input  wire         regf_w23_f22_wr_i,   // Core Write Strobe
  // regf_w23_f24_o: bus=WL core=W0C in_regf=False
  output logic [1:0]  regf_w23_f24_wbus_o, // Bus Write Value
  output logic        regf_w23_f24_wr_o,   // Bus Write Strobe
  // regf_w23_f26_o: bus=WL core=W0C in_regf=True
  input  wire  [1:0]  regf_w23_f26_wval_i, // Core Write Value
  input  wire         regf_w23_f26_wr_i,   // Core Write Strobe
  // regf_w23_f28_o: bus=WL core=W0S in_regf=False
  output logic [1:0]  regf_w23_f28_wbus_o, // Bus Write Value
  output logic        regf_w23_f28_wr_o,   // Bus Write Strobe
  // regf_w23_f30_o: bus=WL core=W0S in_regf=True
  input  wire  [1:0]  regf_w23_f30_wval_i, // Core Write Value
  input  wire         regf_w23_f30_wr_i,   // Core Write Strobe
  // regf_w24_f0_o: bus=WL core=W1C in_regf=False
  output logic [1:0]  regf_w24_f0_wbus_o,  // Bus Write Value
  output logic        regf_w24_f0_wr_o,    // Bus Write Strobe
  // regf_w24_f2_o: bus=WL core=W1C in_regf=True
  input  wire  [1:0]  regf_w24_f2_wval_i,  // Core Write Value
  input  wire         regf_w24_f2_wr_i,    // Core Write Strobe
  // regf_w24_f4_o: bus=WL core=W1S in_regf=False
  output logic [1:0]  regf_w24_f4_wbus_o,  // Bus Write Value
  output logic        regf_w24_f4_wr_o,    // Bus Write Strobe
  // regf_w24_f6_o: bus=WL core=W1S in_regf=True
  input  wire  [1:0]  regf_w24_f6_wval_i,  // Core Write Value
  input  wire         regf_w24_f6_wr_i,    // Core Write Strobe
  // regf_w24_f8_o: bus=WL core=WL in_regf=False
  output logic [1:0]  regf_w24_f8_wbus_o,  // Bus Write Value
  output logic        regf_w24_f8_wr_o,    // Bus Write Strobe
  // regf_w24_f10_o: bus=WL core=WL in_regf=True
  input  wire  [1:0]  regf_w24_f10_wval_i, // Core Write Value
  input  wire         regf_w24_f10_wr_i,   // Core Write Strobe
  // regf_w24_f12_o: bus=WL core=RW in_regf=False
  output logic [1:0]  regf_w24_f12_wbus_o, // Bus Write Value
  output logic        regf_w24_f12_wr_o,   // Bus Write Strobe
  // regf_w24_f14_o: bus=WL core=RW in_regf=True
  output logic [1:0]  regf_w24_f14_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w24_f14_wval_i, // Core Write Value
  input  wire         regf_w24_f14_wr_i,   // Core Write Strobe
  // regf_w24_f16_o: bus=WL core=RW0C in_regf=False
  output logic [1:0]  regf_w24_f16_wbus_o, // Bus Write Value
  output logic        regf_w24_f16_wr_o,   // Bus Write Strobe
  // regf_w24_f18_o: bus=WL core=RW0C in_regf=True
  output logic [1:0]  regf_w24_f18_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w24_f18_wval_i, // Core Write Value
  input  wire         regf_w24_f18_wr_i,   // Core Write Strobe
  // regf_w24_f20_o: bus=WL core=RW0S in_regf=False
  output logic [1:0]  regf_w24_f20_wbus_o, // Bus Write Value
  output logic        regf_w24_f20_wr_o,   // Bus Write Strobe
  // regf_w24_f22_o: bus=WL core=RW0S in_regf=True
  output logic [1:0]  regf_w24_f22_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w24_f22_wval_i, // Core Write Value
  input  wire         regf_w24_f22_wr_i,   // Core Write Strobe
  // regf_w24_f24_o: bus=WL core=RW1C in_regf=False
  output logic [1:0]  regf_w24_f24_wbus_o, // Bus Write Value
  output logic        regf_w24_f24_wr_o,   // Bus Write Strobe
  // regf_w24_f26_o: bus=WL core=RW1C in_regf=True
  output logic [1:0]  regf_w24_f26_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w24_f26_wval_i, // Core Write Value
  input  wire         regf_w24_f26_wr_i,   // Core Write Strobe
  // regf_w24_f28_o: bus=WL core=RW1S in_regf=False
  output logic [1:0]  regf_w24_f28_wbus_o, // Bus Write Value
  output logic        regf_w24_f28_wr_o,   // Bus Write Strobe
  // regf_w24_f30_o: bus=WL core=RW1S in_regf=True
  output logic [1:0]  regf_w24_f30_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w24_f30_wval_i, // Core Write Value
  input  wire         regf_w24_f30_wr_i,   // Core Write Strobe
  // regf_w25_f0_o: bus=WL core=RWL in_regf=False
  output logic [1:0]  regf_w25_f0_wbus_o,  // Bus Write Value
  output logic        regf_w25_f0_wr_o,    // Bus Write Strobe
  // regf_w25_f2_o: bus=WL core=RWL in_regf=True
  output logic [1:0]  regf_w25_f2_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w25_f2_wval_i,  // Core Write Value
  input  wire         regf_w25_f2_wr_i,    // Core Write Strobe
  // regf_w25_f4_o: bus=RW core=RO in_regf=False
  input  wire  [1:0]  regf_w25_f4_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w25_f4_wbus_o,  // Bus Write Value
  output logic        regf_w25_f4_wr_o,    // Bus Write Strobe
  // regf_w25_f6_o: bus=RW core=RO in_regf=True
  output logic [1:0]  regf_w25_f6_rval_o,  // Core Read Value
  // regf_w25_f8_o: bus=RW core=RC in_regf=False
  input  wire  [1:0]  regf_w25_f8_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w25_f8_wbus_o,  // Bus Write Value
  output logic        regf_w25_f8_wr_o,    // Bus Write Strobe
  // regf_w25_f10_o: bus=RW core=RC in_regf=True
  output logic [1:0]  regf_w25_f10_rval_o, // Core Read Value
  input  wire         regf_w25_f10_rd_i,   // Core Read Strobe
  // regf_w25_f12_o: bus=RW core=RS in_regf=False
  input  wire  [1:0]  regf_w25_f12_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w25_f12_wbus_o, // Bus Write Value
  output logic        regf_w25_f12_wr_o,   // Bus Write Strobe
  // regf_w25_f14_o: bus=RW core=RS in_regf=True
  output logic [1:0]  regf_w25_f14_rval_o, // Core Read Value
  input  wire         regf_w25_f14_rd_i,   // Core Read Strobe
  // regf_w25_f16_o: bus=RW core=RT in_regf=False
  input  wire  [1:0]  regf_w25_f16_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w25_f16_wbus_o, // Bus Write Value
  output logic        regf_w25_f16_wr_o,   // Bus Write Strobe
  // regf_w25_f18_o: bus=RW core=RT in_regf=True
  output logic [1:0]  regf_w25_f18_rval_o, // Core Read Value
  input  wire         regf_w25_f18_rd_i,   // Core Read Strobe
  // regf_w25_f20_o: bus=RW core=RP in_regf=False
  input  wire  [1:0]  regf_w25_f20_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w25_f20_wbus_o, // Bus Write Value
  output logic        regf_w25_f20_wr_o,   // Bus Write Strobe
  // regf_w25_f22_o: bus=RW core=RP in_regf=True
  output logic [1:0]  regf_w25_f22_rval_o, // Core Read Value
  // regf_w25_f24_o: bus=RW core=WO in_regf=False
  input  wire  [1:0]  regf_w25_f24_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w25_f24_wbus_o, // Bus Write Value
  output logic        regf_w25_f24_wr_o,   // Bus Write Strobe
  // regf_w25_f26_o: bus=RW core=WO in_regf=True
  input  wire  [1:0]  regf_w25_f26_wval_i, // Core Write Value
  input  wire         regf_w25_f26_wr_i,   // Core Write Strobe
  // regf_w25_f28_o: bus=RW core=W0C in_regf=False
  input  wire  [1:0]  regf_w25_f28_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w25_f28_wbus_o, // Bus Write Value
  output logic        regf_w25_f28_wr_o,   // Bus Write Strobe
  // regf_w25_f30_o: bus=RW core=W0C in_regf=True
  input  wire  [1:0]  regf_w25_f30_wval_i, // Core Write Value
  input  wire         regf_w25_f30_wr_i,   // Core Write Strobe
  // regf_w26_f0_o: bus=RW core=W0S in_regf=False
  input  wire  [1:0]  regf_w26_f0_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w26_f0_wbus_o,  // Bus Write Value
  output logic        regf_w26_f0_wr_o,    // Bus Write Strobe
  // regf_w26_f2_o: bus=RW core=W0S in_regf=True
  input  wire  [1:0]  regf_w26_f2_wval_i,  // Core Write Value
  input  wire         regf_w26_f2_wr_i,    // Core Write Strobe
  // regf_w26_f4_o: bus=RW core=W1C in_regf=False
  input  wire  [1:0]  regf_w26_f4_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w26_f4_wbus_o,  // Bus Write Value
  output logic        regf_w26_f4_wr_o,    // Bus Write Strobe
  // regf_w26_f6_o: bus=RW core=W1C in_regf=True
  input  wire  [1:0]  regf_w26_f6_wval_i,  // Core Write Value
  input  wire         regf_w26_f6_wr_i,    // Core Write Strobe
  // regf_w26_f8_o: bus=RW core=W1S in_regf=False
  input  wire  [1:0]  regf_w26_f8_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w26_f8_wbus_o,  // Bus Write Value
  output logic        regf_w26_f8_wr_o,    // Bus Write Strobe
  // regf_w26_f10_o: bus=RW core=W1S in_regf=True
  input  wire  [1:0]  regf_w26_f10_wval_i, // Core Write Value
  input  wire         regf_w26_f10_wr_i,   // Core Write Strobe
  // regf_w26_f12_o: bus=RW core=WL in_regf=False
  input  wire  [1:0]  regf_w26_f12_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w26_f12_wbus_o, // Bus Write Value
  output logic        regf_w26_f12_wr_o,   // Bus Write Strobe
  // regf_w26_f14_o: bus=RW core=WL in_regf=True
  input  wire  [1:0]  regf_w26_f14_wval_i, // Core Write Value
  input  wire         regf_w26_f14_wr_i,   // Core Write Strobe
  // regf_w26_f16_o: bus=RW core=RW in_regf=False
  input  wire  [1:0]  regf_w26_f16_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w26_f16_wbus_o, // Bus Write Value
  output logic        regf_w26_f16_wr_o,   // Bus Write Strobe
  // regf_w26_f18_o: bus=RW core=RW in_regf=True
  output logic [1:0]  regf_w26_f18_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w26_f18_wval_i, // Core Write Value
  input  wire         regf_w26_f18_wr_i,   // Core Write Strobe
  // regf_w26_f20_o: bus=RW core=RW0C in_regf=False
  input  wire  [1:0]  regf_w26_f20_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w26_f20_wbus_o, // Bus Write Value
  output logic        regf_w26_f20_wr_o,   // Bus Write Strobe
  // regf_w26_f22_o: bus=RW core=RW0C in_regf=True
  output logic [1:0]  regf_w26_f22_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w26_f22_wval_i, // Core Write Value
  input  wire         regf_w26_f22_wr_i,   // Core Write Strobe
  // regf_w26_f24_o: bus=RW core=RW0S in_regf=False
  input  wire  [1:0]  regf_w26_f24_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w26_f24_wbus_o, // Bus Write Value
  output logic        regf_w26_f24_wr_o,   // Bus Write Strobe
  // regf_w26_f26_o: bus=RW core=RW0S in_regf=True
  output logic [1:0]  regf_w26_f26_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w26_f26_wval_i, // Core Write Value
  input  wire         regf_w26_f26_wr_i,   // Core Write Strobe
  // regf_w26_f28_o: bus=RW core=RW1C in_regf=False
  input  wire  [1:0]  regf_w26_f28_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w26_f28_wbus_o, // Bus Write Value
  output logic        regf_w26_f28_wr_o,   // Bus Write Strobe
  // regf_w26_f30_o: bus=RW core=RW1C in_regf=True
  output logic [1:0]  regf_w26_f30_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w26_f30_wval_i, // Core Write Value
  input  wire         regf_w26_f30_wr_i,   // Core Write Strobe
  // regf_w27_f0_o: bus=RW core=RW1S in_regf=False
  input  wire  [1:0]  regf_w27_f0_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w27_f0_wbus_o,  // Bus Write Value
  output logic        regf_w27_f0_wr_o,    // Bus Write Strobe
  // regf_w27_f2_o: bus=RW core=RW1S in_regf=True
  output logic [1:0]  regf_w27_f2_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w27_f2_wval_i,  // Core Write Value
  input  wire         regf_w27_f2_wr_i,    // Core Write Strobe
  // regf_w27_f4_o: bus=RW core=RWL in_regf=False
  input  wire  [1:0]  regf_w27_f4_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w27_f4_wbus_o,  // Bus Write Value
  output logic        regf_w27_f4_wr_o,    // Bus Write Strobe
  // regf_w27_f6_o: bus=RW core=RWL in_regf=True
  output logic [1:0]  regf_w27_f6_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w27_f6_wval_i,  // Core Write Value
  input  wire         regf_w27_f6_wr_i,    // Core Write Strobe
  // regf_w27_f8_o: bus=RW0C core=RO in_regf=False
  input  wire  [1:0]  regf_w27_f8_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w27_f8_wbus_o,  // Bus Write Value
  output logic        regf_w27_f8_wr_o,    // Bus Write Strobe
  // regf_w27_f10_o: bus=RW0C core=RO in_regf=True
  output logic [1:0]  regf_w27_f10_rval_o, // Core Read Value
  // regf_w27_f12_o: bus=RW0C core=RC in_regf=False
  input  wire  [1:0]  regf_w27_f12_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w27_f12_wbus_o, // Bus Write Value
  output logic        regf_w27_f12_wr_o,   // Bus Write Strobe
  // regf_w27_f14_o: bus=RW0C core=RC in_regf=True
  output logic [1:0]  regf_w27_f14_rval_o, // Core Read Value
  input  wire         regf_w27_f14_rd_i,   // Core Read Strobe
  // regf_w27_f16_o: bus=RW0C core=RS in_regf=False
  input  wire  [1:0]  regf_w27_f16_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w27_f16_wbus_o, // Bus Write Value
  output logic        regf_w27_f16_wr_o,   // Bus Write Strobe
  // regf_w27_f18_o: bus=RW0C core=RS in_regf=True
  output logic [1:0]  regf_w27_f18_rval_o, // Core Read Value
  input  wire         regf_w27_f18_rd_i,   // Core Read Strobe
  // regf_w27_f20_o: bus=RW0C core=RT in_regf=False
  input  wire  [1:0]  regf_w27_f20_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w27_f20_wbus_o, // Bus Write Value
  output logic        regf_w27_f20_wr_o,   // Bus Write Strobe
  // regf_w27_f22_o: bus=RW0C core=RT in_regf=True
  output logic [1:0]  regf_w27_f22_rval_o, // Core Read Value
  input  wire         regf_w27_f22_rd_i,   // Core Read Strobe
  // regf_w27_f24_o: bus=RW0C core=RP in_regf=False
  input  wire  [1:0]  regf_w27_f24_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w27_f24_wbus_o, // Bus Write Value
  output logic        regf_w27_f24_wr_o,   // Bus Write Strobe
  // regf_w27_f26_o: bus=RW0C core=RP in_regf=True
  output logic [1:0]  regf_w27_f26_rval_o, // Core Read Value
  // regf_w27_f28_o: bus=RW0C core=WO in_regf=False
  input  wire  [1:0]  regf_w27_f28_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w27_f28_wbus_o, // Bus Write Value
  output logic        regf_w27_f28_wr_o,   // Bus Write Strobe
  // regf_w27_f30_o: bus=RW0C core=WO in_regf=True
  input  wire  [1:0]  regf_w27_f30_wval_i, // Core Write Value
  input  wire         regf_w27_f30_wr_i,   // Core Write Strobe
  // regf_w28_f0_o: bus=RW0C core=W0C in_regf=False
  input  wire  [1:0]  regf_w28_f0_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w28_f0_wbus_o,  // Bus Write Value
  output logic        regf_w28_f0_wr_o,    // Bus Write Strobe
  // regf_w28_f2_o: bus=RW0C core=W0C in_regf=True
  input  wire  [1:0]  regf_w28_f2_wval_i,  // Core Write Value
  input  wire         regf_w28_f2_wr_i,    // Core Write Strobe
  // regf_w28_f4_o: bus=RW0C core=W0S in_regf=False
  input  wire  [1:0]  regf_w28_f4_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w28_f4_wbus_o,  // Bus Write Value
  output logic        regf_w28_f4_wr_o,    // Bus Write Strobe
  // regf_w28_f6_o: bus=RW0C core=W0S in_regf=True
  input  wire  [1:0]  regf_w28_f6_wval_i,  // Core Write Value
  input  wire         regf_w28_f6_wr_i,    // Core Write Strobe
  // regf_w28_f8_o: bus=RW0C core=W1C in_regf=False
  input  wire  [1:0]  regf_w28_f8_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w28_f8_wbus_o,  // Bus Write Value
  output logic        regf_w28_f8_wr_o,    // Bus Write Strobe
  // regf_w28_f10_o: bus=RW0C core=W1C in_regf=True
  input  wire  [1:0]  regf_w28_f10_wval_i, // Core Write Value
  input  wire         regf_w28_f10_wr_i,   // Core Write Strobe
  // regf_w28_f12_o: bus=RW0C core=W1S in_regf=False
  input  wire  [1:0]  regf_w28_f12_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w28_f12_wbus_o, // Bus Write Value
  output logic        regf_w28_f12_wr_o,   // Bus Write Strobe
  // regf_w28_f14_o: bus=RW0C core=W1S in_regf=True
  input  wire  [1:0]  regf_w28_f14_wval_i, // Core Write Value
  input  wire         regf_w28_f14_wr_i,   // Core Write Strobe
  // regf_w28_f16_o: bus=RW0C core=WL in_regf=False
  input  wire  [1:0]  regf_w28_f16_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w28_f16_wbus_o, // Bus Write Value
  output logic        regf_w28_f16_wr_o,   // Bus Write Strobe
  // regf_w28_f18_o: bus=RW0C core=WL in_regf=True
  input  wire  [1:0]  regf_w28_f18_wval_i, // Core Write Value
  input  wire         regf_w28_f18_wr_i,   // Core Write Strobe
  // regf_w28_f20_o: bus=RW0C core=RW in_regf=False
  input  wire  [1:0]  regf_w28_f20_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w28_f20_wbus_o, // Bus Write Value
  output logic        regf_w28_f20_wr_o,   // Bus Write Strobe
  // regf_w28_f22_o: bus=RW0C core=RW in_regf=True
  output logic [1:0]  regf_w28_f22_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w28_f22_wval_i, // Core Write Value
  input  wire         regf_w28_f22_wr_i,   // Core Write Strobe
  // regf_w28_f24_o: bus=RW0C core=RW0C in_regf=False
  input  wire  [1:0]  regf_w28_f24_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w28_f24_wbus_o, // Bus Write Value
  output logic        regf_w28_f24_wr_o,   // Bus Write Strobe
  // regf_w28_f26_o: bus=RW0C core=RW0C in_regf=True
  output logic [1:0]  regf_w28_f26_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w28_f26_wval_i, // Core Write Value
  input  wire         regf_w28_f26_wr_i,   // Core Write Strobe
  // regf_w28_f28_o: bus=RW0C core=RW0S in_regf=False
  input  wire  [1:0]  regf_w28_f28_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w28_f28_wbus_o, // Bus Write Value
  output logic        regf_w28_f28_wr_o,   // Bus Write Strobe
  // regf_w28_f30_o: bus=RW0C core=RW0S in_regf=True
  output logic [1:0]  regf_w28_f30_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w28_f30_wval_i, // Core Write Value
  input  wire         regf_w28_f30_wr_i,   // Core Write Strobe
  // regf_w29_f0_o: bus=RW0C core=RW1C in_regf=False
  input  wire  [1:0]  regf_w29_f0_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w29_f0_wbus_o,  // Bus Write Value
  output logic        regf_w29_f0_wr_o,    // Bus Write Strobe
  // regf_w29_f2_o: bus=RW0C core=RW1C in_regf=True
  output logic [1:0]  regf_w29_f2_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w29_f2_wval_i,  // Core Write Value
  input  wire         regf_w29_f2_wr_i,    // Core Write Strobe
  // regf_w29_f4_o: bus=RW0C core=RW1S in_regf=False
  input  wire  [1:0]  regf_w29_f4_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w29_f4_wbus_o,  // Bus Write Value
  output logic        regf_w29_f4_wr_o,    // Bus Write Strobe
  // regf_w29_f6_o: bus=RW0C core=RW1S in_regf=True
  output logic [1:0]  regf_w29_f6_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w29_f6_wval_i,  // Core Write Value
  input  wire         regf_w29_f6_wr_i,    // Core Write Strobe
  // regf_w29_f8_o: bus=RW0C core=RWL in_regf=False
  input  wire  [1:0]  regf_w29_f8_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w29_f8_wbus_o,  // Bus Write Value
  output logic        regf_w29_f8_wr_o,    // Bus Write Strobe
  // regf_w29_f10_o: bus=RW0C core=RWL in_regf=True
  output logic [1:0]  regf_w29_f10_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w29_f10_wval_i, // Core Write Value
  input  wire         regf_w29_f10_wr_i,   // Core Write Strobe
  // regf_w29_f12_o: bus=RW0S core=RO in_regf=False
  input  wire  [1:0]  regf_w29_f12_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w29_f12_wbus_o, // Bus Write Value
  output logic        regf_w29_f12_wr_o,   // Bus Write Strobe
  // regf_w29_f14_o: bus=RW0S core=RO in_regf=True
  output logic [1:0]  regf_w29_f14_rval_o, // Core Read Value
  // regf_w29_f16_o: bus=RW0S core=RC in_regf=False
  input  wire  [1:0]  regf_w29_f16_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w29_f16_wbus_o, // Bus Write Value
  output logic        regf_w29_f16_wr_o,   // Bus Write Strobe
  // regf_w29_f18_o: bus=RW0S core=RC in_regf=True
  output logic [1:0]  regf_w29_f18_rval_o, // Core Read Value
  input  wire         regf_w29_f18_rd_i,   // Core Read Strobe
  // regf_w29_f20_o: bus=RW0S core=RS in_regf=False
  input  wire  [1:0]  regf_w29_f20_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w29_f20_wbus_o, // Bus Write Value
  output logic        regf_w29_f20_wr_o,   // Bus Write Strobe
  // regf_w29_f22_o: bus=RW0S core=RS in_regf=True
  output logic [1:0]  regf_w29_f22_rval_o, // Core Read Value
  input  wire         regf_w29_f22_rd_i,   // Core Read Strobe
  // regf_w29_f24_o: bus=RW0S core=RT in_regf=False
  input  wire  [1:0]  regf_w29_f24_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w29_f24_wbus_o, // Bus Write Value
  output logic        regf_w29_f24_wr_o,   // Bus Write Strobe
  // regf_w29_f26_o: bus=RW0S core=RT in_regf=True
  output logic [1:0]  regf_w29_f26_rval_o, // Core Read Value
  input  wire         regf_w29_f26_rd_i,   // Core Read Strobe
  // regf_w29_f28_o: bus=RW0S core=RP in_regf=False
  input  wire  [1:0]  regf_w29_f28_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w29_f28_wbus_o, // Bus Write Value
  output logic        regf_w29_f28_wr_o,   // Bus Write Strobe
  // regf_w29_f30_o: bus=RW0S core=RP in_regf=True
  output logic [1:0]  regf_w29_f30_rval_o, // Core Read Value
  // regf_w30_f0_o: bus=RW0S core=WO in_regf=False
  input  wire  [1:0]  regf_w30_f0_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w30_f0_wbus_o,  // Bus Write Value
  output logic        regf_w30_f0_wr_o,    // Bus Write Strobe
  // regf_w30_f2_o: bus=RW0S core=WO in_regf=True
  input  wire  [1:0]  regf_w30_f2_wval_i,  // Core Write Value
  input  wire         regf_w30_f2_wr_i,    // Core Write Strobe
  // regf_w30_f4_o: bus=RW0S core=W0C in_regf=False
  input  wire  [1:0]  regf_w30_f4_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w30_f4_wbus_o,  // Bus Write Value
  output logic        regf_w30_f4_wr_o,    // Bus Write Strobe
  // regf_w30_f6_o: bus=RW0S core=W0C in_regf=True
  input  wire  [1:0]  regf_w30_f6_wval_i,  // Core Write Value
  input  wire         regf_w30_f6_wr_i,    // Core Write Strobe
  // regf_w30_f8_o: bus=RW0S core=W0S in_regf=False
  input  wire  [1:0]  regf_w30_f8_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w30_f8_wbus_o,  // Bus Write Value
  output logic        regf_w30_f8_wr_o,    // Bus Write Strobe
  // regf_w30_f10_o: bus=RW0S core=W0S in_regf=True
  input  wire  [1:0]  regf_w30_f10_wval_i, // Core Write Value
  input  wire         regf_w30_f10_wr_i,   // Core Write Strobe
  // regf_w30_f12_o: bus=RW0S core=W1C in_regf=False
  input  wire  [1:0]  regf_w30_f12_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w30_f12_wbus_o, // Bus Write Value
  output logic        regf_w30_f12_wr_o,   // Bus Write Strobe
  // regf_w30_f14_o: bus=RW0S core=W1C in_regf=True
  input  wire  [1:0]  regf_w30_f14_wval_i, // Core Write Value
  input  wire         regf_w30_f14_wr_i,   // Core Write Strobe
  // regf_w30_f16_o: bus=RW0S core=W1S in_regf=False
  input  wire  [1:0]  regf_w30_f16_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w30_f16_wbus_o, // Bus Write Value
  output logic        regf_w30_f16_wr_o,   // Bus Write Strobe
  // regf_w30_f18_o: bus=RW0S core=W1S in_regf=True
  input  wire  [1:0]  regf_w30_f18_wval_i, // Core Write Value
  input  wire         regf_w30_f18_wr_i,   // Core Write Strobe
  // regf_w30_f20_o: bus=RW0S core=WL in_regf=False
  input  wire  [1:0]  regf_w30_f20_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w30_f20_wbus_o, // Bus Write Value
  output logic        regf_w30_f20_wr_o,   // Bus Write Strobe
  // regf_w30_f22_o: bus=RW0S core=WL in_regf=True
  input  wire  [1:0]  regf_w30_f22_wval_i, // Core Write Value
  input  wire         regf_w30_f22_wr_i,   // Core Write Strobe
  // regf_w30_f24_o: bus=RW0S core=RW in_regf=False
  input  wire  [1:0]  regf_w30_f24_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w30_f24_wbus_o, // Bus Write Value
  output logic        regf_w30_f24_wr_o,   // Bus Write Strobe
  // regf_w30_f26_o: bus=RW0S core=RW in_regf=True
  output logic [1:0]  regf_w30_f26_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w30_f26_wval_i, // Core Write Value
  input  wire         regf_w30_f26_wr_i,   // Core Write Strobe
  // regf_w30_f28_o: bus=RW0S core=RW0C in_regf=False
  input  wire  [1:0]  regf_w30_f28_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w30_f28_wbus_o, // Bus Write Value
  output logic        regf_w30_f28_wr_o,   // Bus Write Strobe
  // regf_w30_f30_o: bus=RW0S core=RW0C in_regf=True
  output logic [1:0]  regf_w30_f30_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w30_f30_wval_i, // Core Write Value
  input  wire         regf_w30_f30_wr_i,   // Core Write Strobe
  // regf_w31_f0_o: bus=RW0S core=RW0S in_regf=False
  input  wire  [1:0]  regf_w31_f0_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w31_f0_wbus_o,  // Bus Write Value
  output logic        regf_w31_f0_wr_o,    // Bus Write Strobe
  // regf_w31_f2_o: bus=RW0S core=RW0S in_regf=True
  output logic [1:0]  regf_w31_f2_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w31_f2_wval_i,  // Core Write Value
  input  wire         regf_w31_f2_wr_i,    // Core Write Strobe
  // regf_w31_f4_o: bus=RW0S core=RW1C in_regf=False
  input  wire  [1:0]  regf_w31_f4_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w31_f4_wbus_o,  // Bus Write Value
  output logic        regf_w31_f4_wr_o,    // Bus Write Strobe
  // regf_w31_f6_o: bus=RW0S core=RW1C in_regf=True
  output logic [1:0]  regf_w31_f6_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w31_f6_wval_i,  // Core Write Value
  input  wire         regf_w31_f6_wr_i,    // Core Write Strobe
  // regf_w31_f8_o: bus=RW0S core=RW1S in_regf=False
  input  wire  [1:0]  regf_w31_f8_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w31_f8_wbus_o,  // Bus Write Value
  output logic        regf_w31_f8_wr_o,    // Bus Write Strobe
  // regf_w31_f10_o: bus=RW0S core=RW1S in_regf=True
  output logic [1:0]  regf_w31_f10_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w31_f10_wval_i, // Core Write Value
  input  wire         regf_w31_f10_wr_i,   // Core Write Strobe
  // regf_w31_f12_o: bus=RW0S core=RWL in_regf=False
  input  wire  [1:0]  regf_w31_f12_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w31_f12_wbus_o, // Bus Write Value
  output logic        regf_w31_f12_wr_o,   // Bus Write Strobe
  // regf_w31_f14_o: bus=RW0S core=RWL in_regf=True
  output logic [1:0]  regf_w31_f14_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w31_f14_wval_i, // Core Write Value
  input  wire         regf_w31_f14_wr_i,   // Core Write Strobe
  // regf_w31_f16_o: bus=RW1C core=RO in_regf=False
  input  wire  [1:0]  regf_w31_f16_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w31_f16_wbus_o, // Bus Write Value
  output logic        regf_w31_f16_wr_o,   // Bus Write Strobe
  // regf_w31_f18_o: bus=RW1C core=RO in_regf=True
  output logic [1:0]  regf_w31_f18_rval_o, // Core Read Value
  // regf_w31_f20_o: bus=RW1C core=RC in_regf=False
  input  wire  [1:0]  regf_w31_f20_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w31_f20_wbus_o, // Bus Write Value
  output logic        regf_w31_f20_wr_o,   // Bus Write Strobe
  // regf_w31_f22_o: bus=RW1C core=RC in_regf=True
  output logic [1:0]  regf_w31_f22_rval_o, // Core Read Value
  input  wire         regf_w31_f22_rd_i,   // Core Read Strobe
  // regf_w31_f24_o: bus=RW1C core=RS in_regf=False
  input  wire  [1:0]  regf_w31_f24_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w31_f24_wbus_o, // Bus Write Value
  output logic        regf_w31_f24_wr_o,   // Bus Write Strobe
  // regf_w31_f26_o: bus=RW1C core=RS in_regf=True
  output logic [1:0]  regf_w31_f26_rval_o, // Core Read Value
  input  wire         regf_w31_f26_rd_i,   // Core Read Strobe
  // regf_w31_f28_o: bus=RW1C core=RT in_regf=False
  input  wire  [1:0]  regf_w31_f28_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w31_f28_wbus_o, // Bus Write Value
  output logic        regf_w31_f28_wr_o,   // Bus Write Strobe
  // regf_w31_f30_o: bus=RW1C core=RT in_regf=True
  output logic [1:0]  regf_w31_f30_rval_o, // Core Read Value
  input  wire         regf_w31_f30_rd_i,   // Core Read Strobe
  // regf_w32_f0_o: bus=RW1C core=RP in_regf=False
  input  wire  [1:0]  regf_w32_f0_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w32_f0_wbus_o,  // Bus Write Value
  output logic        regf_w32_f0_wr_o,    // Bus Write Strobe
  // regf_w32_f2_o: bus=RW1C core=RP in_regf=True
  output logic [1:0]  regf_w32_f2_rval_o,  // Core Read Value
  // regf_w32_f4_o: bus=RW1C core=WO in_regf=False
  input  wire  [1:0]  regf_w32_f4_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w32_f4_wbus_o,  // Bus Write Value
  output logic        regf_w32_f4_wr_o,    // Bus Write Strobe
  // regf_w32_f6_o: bus=RW1C core=WO in_regf=True
  input  wire  [1:0]  regf_w32_f6_wval_i,  // Core Write Value
  input  wire         regf_w32_f6_wr_i,    // Core Write Strobe
  // regf_w32_f8_o: bus=RW1C core=W0C in_regf=False
  input  wire  [1:0]  regf_w32_f8_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w32_f8_wbus_o,  // Bus Write Value
  output logic        regf_w32_f8_wr_o,    // Bus Write Strobe
  // regf_w32_f10_o: bus=RW1C core=W0C in_regf=True
  input  wire  [1:0]  regf_w32_f10_wval_i, // Core Write Value
  input  wire         regf_w32_f10_wr_i,   // Core Write Strobe
  // regf_w32_f12_o: bus=RW1C core=W0S in_regf=False
  input  wire  [1:0]  regf_w32_f12_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w32_f12_wbus_o, // Bus Write Value
  output logic        regf_w32_f12_wr_o,   // Bus Write Strobe
  // regf_w32_f14_o: bus=RW1C core=W0S in_regf=True
  input  wire  [1:0]  regf_w32_f14_wval_i, // Core Write Value
  input  wire         regf_w32_f14_wr_i,   // Core Write Strobe
  // regf_w32_f16_o: bus=RW1C core=W1C in_regf=False
  input  wire  [1:0]  regf_w32_f16_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w32_f16_wbus_o, // Bus Write Value
  output logic        regf_w32_f16_wr_o,   // Bus Write Strobe
  // regf_w32_f18_o: bus=RW1C core=W1C in_regf=True
  input  wire  [1:0]  regf_w32_f18_wval_i, // Core Write Value
  input  wire         regf_w32_f18_wr_i,   // Core Write Strobe
  // regf_w32_f20_o: bus=RW1C core=W1S in_regf=False
  input  wire  [1:0]  regf_w32_f20_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w32_f20_wbus_o, // Bus Write Value
  output logic        regf_w32_f20_wr_o,   // Bus Write Strobe
  // regf_w32_f22_o: bus=RW1C core=W1S in_regf=True
  input  wire  [1:0]  regf_w32_f22_wval_i, // Core Write Value
  input  wire         regf_w32_f22_wr_i,   // Core Write Strobe
  // regf_w32_f24_o: bus=RW1C core=WL in_regf=False
  input  wire  [1:0]  regf_w32_f24_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w32_f24_wbus_o, // Bus Write Value
  output logic        regf_w32_f24_wr_o,   // Bus Write Strobe
  // regf_w32_f26_o: bus=RW1C core=WL in_regf=True
  input  wire  [1:0]  regf_w32_f26_wval_i, // Core Write Value
  input  wire         regf_w32_f26_wr_i,   // Core Write Strobe
  // regf_w32_f28_o: bus=RW1C core=RW in_regf=False
  input  wire  [1:0]  regf_w32_f28_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w32_f28_wbus_o, // Bus Write Value
  output logic        regf_w32_f28_wr_o,   // Bus Write Strobe
  // regf_w32_f30_o: bus=RW1C core=RW in_regf=True
  output logic [1:0]  regf_w32_f30_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w32_f30_wval_i, // Core Write Value
  input  wire         regf_w32_f30_wr_i,   // Core Write Strobe
  // regf_w33_f0_o: bus=RW1C core=RW0C in_regf=False
  input  wire  [1:0]  regf_w33_f0_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w33_f0_wbus_o,  // Bus Write Value
  output logic        regf_w33_f0_wr_o,    // Bus Write Strobe
  // regf_w33_f2_o: bus=RW1C core=RW0C in_regf=True
  output logic [1:0]  regf_w33_f2_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w33_f2_wval_i,  // Core Write Value
  input  wire         regf_w33_f2_wr_i,    // Core Write Strobe
  // regf_w33_f4_o: bus=RW1C core=RW0S in_regf=False
  input  wire  [1:0]  regf_w33_f4_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w33_f4_wbus_o,  // Bus Write Value
  output logic        regf_w33_f4_wr_o,    // Bus Write Strobe
  // regf_w33_f6_o: bus=RW1C core=RW0S in_regf=True
  output logic [1:0]  regf_w33_f6_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w33_f6_wval_i,  // Core Write Value
  input  wire         regf_w33_f6_wr_i,    // Core Write Strobe
  // regf_w33_f8_o: bus=RW1C core=RW1C in_regf=False
  input  wire  [1:0]  regf_w33_f8_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w33_f8_wbus_o,  // Bus Write Value
  output logic        regf_w33_f8_wr_o,    // Bus Write Strobe
  // regf_w33_f10_o: bus=RW1C core=RW1C in_regf=True
  output logic [1:0]  regf_w33_f10_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w33_f10_wval_i, // Core Write Value
  input  wire         regf_w33_f10_wr_i,   // Core Write Strobe
  // regf_w33_f12_o: bus=RW1C core=RW1S in_regf=False
  input  wire  [1:0]  regf_w33_f12_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w33_f12_wbus_o, // Bus Write Value
  output logic        regf_w33_f12_wr_o,   // Bus Write Strobe
  // regf_w33_f14_o: bus=RW1C core=RW1S in_regf=True
  output logic [1:0]  regf_w33_f14_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w33_f14_wval_i, // Core Write Value
  input  wire         regf_w33_f14_wr_i,   // Core Write Strobe
  // regf_w33_f16_o: bus=RW1C core=RWL in_regf=False
  input  wire  [1:0]  regf_w33_f16_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w33_f16_wbus_o, // Bus Write Value
  output logic        regf_w33_f16_wr_o,   // Bus Write Strobe
  // regf_w33_f18_o: bus=RW1C core=RWL in_regf=True
  output logic [1:0]  regf_w33_f18_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w33_f18_wval_i, // Core Write Value
  input  wire         regf_w33_f18_wr_i,   // Core Write Strobe
  // regf_w33_f20_o: bus=RW1S core=RO in_regf=False
  input  wire  [1:0]  regf_w33_f20_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w33_f20_wbus_o, // Bus Write Value
  output logic        regf_w33_f20_wr_o,   // Bus Write Strobe
  // regf_w33_f22_o: bus=RW1S core=RO in_regf=True
  output logic [1:0]  regf_w33_f22_rval_o, // Core Read Value
  // regf_w33_f24_o: bus=RW1S core=RC in_regf=False
  input  wire  [1:0]  regf_w33_f24_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w33_f24_wbus_o, // Bus Write Value
  output logic        regf_w33_f24_wr_o,   // Bus Write Strobe
  // regf_w33_f26_o: bus=RW1S core=RC in_regf=True
  output logic [1:0]  regf_w33_f26_rval_o, // Core Read Value
  input  wire         regf_w33_f26_rd_i,   // Core Read Strobe
  // regf_w33_f28_o: bus=RW1S core=RS in_regf=False
  input  wire  [1:0]  regf_w33_f28_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w33_f28_wbus_o, // Bus Write Value
  output logic        regf_w33_f28_wr_o,   // Bus Write Strobe
  // regf_w33_f30_o: bus=RW1S core=RS in_regf=True
  output logic [1:0]  regf_w33_f30_rval_o, // Core Read Value
  input  wire         regf_w33_f30_rd_i,   // Core Read Strobe
  // regf_w34_f0_o: bus=RW1S core=RT in_regf=False
  input  wire  [1:0]  regf_w34_f0_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w34_f0_wbus_o,  // Bus Write Value
  output logic        regf_w34_f0_wr_o,    // Bus Write Strobe
  // regf_w34_f2_o: bus=RW1S core=RT in_regf=True
  output logic [1:0]  regf_w34_f2_rval_o,  // Core Read Value
  input  wire         regf_w34_f2_rd_i,    // Core Read Strobe
  // regf_w34_f4_o: bus=RW1S core=RP in_regf=False
  input  wire  [1:0]  regf_w34_f4_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w34_f4_wbus_o,  // Bus Write Value
  output logic        regf_w34_f4_wr_o,    // Bus Write Strobe
  // regf_w34_f6_o: bus=RW1S core=RP in_regf=True
  output logic [1:0]  regf_w34_f6_rval_o,  // Core Read Value
  // regf_w34_f8_o: bus=RW1S core=WO in_regf=False
  input  wire  [1:0]  regf_w34_f8_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w34_f8_wbus_o,  // Bus Write Value
  output logic        regf_w34_f8_wr_o,    // Bus Write Strobe
  // regf_w34_f10_o: bus=RW1S core=WO in_regf=True
  input  wire  [1:0]  regf_w34_f10_wval_i, // Core Write Value
  input  wire         regf_w34_f10_wr_i,   // Core Write Strobe
  // regf_w34_f12_o: bus=RW1S core=W0C in_regf=False
  input  wire  [1:0]  regf_w34_f12_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w34_f12_wbus_o, // Bus Write Value
  output logic        regf_w34_f12_wr_o,   // Bus Write Strobe
  // regf_w34_f14_o: bus=RW1S core=W0C in_regf=True
  input  wire  [1:0]  regf_w34_f14_wval_i, // Core Write Value
  input  wire         regf_w34_f14_wr_i,   // Core Write Strobe
  // regf_w34_f16_o: bus=RW1S core=W0S in_regf=False
  input  wire  [1:0]  regf_w34_f16_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w34_f16_wbus_o, // Bus Write Value
  output logic        regf_w34_f16_wr_o,   // Bus Write Strobe
  // regf_w34_f18_o: bus=RW1S core=W0S in_regf=True
  input  wire  [1:0]  regf_w34_f18_wval_i, // Core Write Value
  input  wire         regf_w34_f18_wr_i,   // Core Write Strobe
  // regf_w34_f20_o: bus=RW1S core=W1C in_regf=False
  input  wire  [1:0]  regf_w34_f20_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w34_f20_wbus_o, // Bus Write Value
  output logic        regf_w34_f20_wr_o,   // Bus Write Strobe
  // regf_w34_f22_o: bus=RW1S core=W1C in_regf=True
  input  wire  [1:0]  regf_w34_f22_wval_i, // Core Write Value
  input  wire         regf_w34_f22_wr_i,   // Core Write Strobe
  // regf_w34_f24_o: bus=RW1S core=W1S in_regf=False
  input  wire  [1:0]  regf_w34_f24_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w34_f24_wbus_o, // Bus Write Value
  output logic        regf_w34_f24_wr_o,   // Bus Write Strobe
  // regf_w34_f26_o: bus=RW1S core=W1S in_regf=True
  input  wire  [1:0]  regf_w34_f26_wval_i, // Core Write Value
  input  wire         regf_w34_f26_wr_i,   // Core Write Strobe
  // regf_w34_f28_o: bus=RW1S core=WL in_regf=False
  input  wire  [1:0]  regf_w34_f28_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w34_f28_wbus_o, // Bus Write Value
  output logic        regf_w34_f28_wr_o,   // Bus Write Strobe
  // regf_w34_f30_o: bus=RW1S core=WL in_regf=True
  input  wire  [1:0]  regf_w34_f30_wval_i, // Core Write Value
  input  wire         regf_w34_f30_wr_i,   // Core Write Strobe
  // regf_w35_f0_o: bus=RW1S core=RW in_regf=False
  input  wire  [1:0]  regf_w35_f0_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w35_f0_wbus_o,  // Bus Write Value
  output logic        regf_w35_f0_wr_o,    // Bus Write Strobe
  // regf_w35_f2_o: bus=RW1S core=RW in_regf=True
  output logic [1:0]  regf_w35_f2_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w35_f2_wval_i,  // Core Write Value
  input  wire         regf_w35_f2_wr_i,    // Core Write Strobe
  // regf_w35_f4_o: bus=RW1S core=RW0C in_regf=False
  input  wire  [1:0]  regf_w35_f4_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w35_f4_wbus_o,  // Bus Write Value
  output logic        regf_w35_f4_wr_o,    // Bus Write Strobe
  // regf_w35_f6_o: bus=RW1S core=RW0C in_regf=True
  output logic [1:0]  regf_w35_f6_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w35_f6_wval_i,  // Core Write Value
  input  wire         regf_w35_f6_wr_i,    // Core Write Strobe
  // regf_w35_f8_o: bus=RW1S core=RW0S in_regf=False
  input  wire  [1:0]  regf_w35_f8_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w35_f8_wbus_o,  // Bus Write Value
  output logic        regf_w35_f8_wr_o,    // Bus Write Strobe
  // regf_w35_f10_o: bus=RW1S core=RW0S in_regf=True
  output logic [1:0]  regf_w35_f10_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w35_f10_wval_i, // Core Write Value
  input  wire         regf_w35_f10_wr_i,   // Core Write Strobe
  // regf_w35_f12_o: bus=RW1S core=RW1C in_regf=False
  input  wire  [1:0]  regf_w35_f12_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w35_f12_wbus_o, // Bus Write Value
  output logic        regf_w35_f12_wr_o,   // Bus Write Strobe
  // regf_w35_f14_o: bus=RW1S core=RW1C in_regf=True
  output logic [1:0]  regf_w35_f14_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w35_f14_wval_i, // Core Write Value
  input  wire         regf_w35_f14_wr_i,   // Core Write Strobe
  // regf_w35_f16_o: bus=RW1S core=RW1S in_regf=False
  input  wire  [1:0]  regf_w35_f16_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w35_f16_wbus_o, // Bus Write Value
  output logic        regf_w35_f16_wr_o,   // Bus Write Strobe
  // regf_w35_f18_o: bus=RW1S core=RW1S in_regf=True
  output logic [1:0]  regf_w35_f18_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w35_f18_wval_i, // Core Write Value
  input  wire         regf_w35_f18_wr_i,   // Core Write Strobe
  // regf_w35_f20_o: bus=RW1S core=RWL in_regf=False
  input  wire  [1:0]  regf_w35_f20_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w35_f20_wbus_o, // Bus Write Value
  output logic        regf_w35_f20_wr_o,   // Bus Write Strobe
  // regf_w35_f22_o: bus=RW1S core=RWL in_regf=True
  output logic [1:0]  regf_w35_f22_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w35_f22_wval_i, // Core Write Value
  input  wire         regf_w35_f22_wr_i,   // Core Write Strobe
  // regf_w35_f24_o: bus=RWL core=RO in_regf=False
  input  wire  [1:0]  regf_w35_f24_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w35_f24_wbus_o, // Bus Write Value
  output logic        regf_w35_f24_wr_o,   // Bus Write Strobe
  // regf_w35_f26_o: bus=RWL core=RO in_regf=True
  output logic [1:0]  regf_w35_f26_rval_o, // Core Read Value
  // regf_w35_f28_o: bus=RWL core=RC in_regf=False
  input  wire  [1:0]  regf_w35_f28_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w35_f28_wbus_o, // Bus Write Value
  output logic        regf_w35_f28_wr_o,   // Bus Write Strobe
  // regf_w35_f30_o: bus=RWL core=RC in_regf=True
  output logic [1:0]  regf_w35_f30_rval_o, // Core Read Value
  input  wire         regf_w35_f30_rd_i,   // Core Read Strobe
  // regf_w36_f0_o: bus=RWL core=RS in_regf=False
  input  wire  [1:0]  regf_w36_f0_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w36_f0_wbus_o,  // Bus Write Value
  output logic        regf_w36_f0_wr_o,    // Bus Write Strobe
  // regf_w36_f2_o: bus=RWL core=RS in_regf=True
  output logic [1:0]  regf_w36_f2_rval_o,  // Core Read Value
  input  wire         regf_w36_f2_rd_i,    // Core Read Strobe
  // regf_w36_f4_o: bus=RWL core=RT in_regf=False
  input  wire  [1:0]  regf_w36_f4_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w36_f4_wbus_o,  // Bus Write Value
  output logic        regf_w36_f4_wr_o,    // Bus Write Strobe
  // regf_w36_f6_o: bus=RWL core=RT in_regf=True
  output logic [1:0]  regf_w36_f6_rval_o,  // Core Read Value
  input  wire         regf_w36_f6_rd_i,    // Core Read Strobe
  // regf_w36_f8_o: bus=RWL core=RP in_regf=False
  input  wire  [1:0]  regf_w36_f8_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w36_f8_wbus_o,  // Bus Write Value
  output logic        regf_w36_f8_wr_o,    // Bus Write Strobe
  // regf_w36_f10_o: bus=RWL core=RP in_regf=True
  output logic [1:0]  regf_w36_f10_rval_o, // Core Read Value
  // regf_w36_f12_o: bus=RWL core=WO in_regf=False
  input  wire  [1:0]  regf_w36_f12_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w36_f12_wbus_o, // Bus Write Value
  output logic        regf_w36_f12_wr_o,   // Bus Write Strobe
  // regf_w36_f14_o: bus=RWL core=WO in_regf=True
  input  wire  [1:0]  regf_w36_f14_wval_i, // Core Write Value
  input  wire         regf_w36_f14_wr_i,   // Core Write Strobe
  // regf_w36_f16_o: bus=RWL core=W0C in_regf=False
  input  wire  [1:0]  regf_w36_f16_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w36_f16_wbus_o, // Bus Write Value
  output logic        regf_w36_f16_wr_o,   // Bus Write Strobe
  // regf_w36_f18_o: bus=RWL core=W0C in_regf=True
  input  wire  [1:0]  regf_w36_f18_wval_i, // Core Write Value
  input  wire         regf_w36_f18_wr_i,   // Core Write Strobe
  // regf_w36_f20_o: bus=RWL core=W0S in_regf=False
  input  wire  [1:0]  regf_w36_f20_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w36_f20_wbus_o, // Bus Write Value
  output logic        regf_w36_f20_wr_o,   // Bus Write Strobe
  // regf_w36_f22_o: bus=RWL core=W0S in_regf=True
  input  wire  [1:0]  regf_w36_f22_wval_i, // Core Write Value
  input  wire         regf_w36_f22_wr_i,   // Core Write Strobe
  // regf_w36_f24_o: bus=RWL core=W1C in_regf=False
  input  wire  [1:0]  regf_w36_f24_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w36_f24_wbus_o, // Bus Write Value
  output logic        regf_w36_f24_wr_o,   // Bus Write Strobe
  // regf_w36_f26_o: bus=RWL core=W1C in_regf=True
  input  wire  [1:0]  regf_w36_f26_wval_i, // Core Write Value
  input  wire         regf_w36_f26_wr_i,   // Core Write Strobe
  // regf_w36_f28_o: bus=RWL core=W1S in_regf=False
  input  wire  [1:0]  regf_w36_f28_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w36_f28_wbus_o, // Bus Write Value
  output logic        regf_w36_f28_wr_o,   // Bus Write Strobe
  // regf_w36_f30_o: bus=RWL core=W1S in_regf=True
  input  wire  [1:0]  regf_w36_f30_wval_i, // Core Write Value
  input  wire         regf_w36_f30_wr_i,   // Core Write Strobe
  // regf_w37_f0_o: bus=RWL core=WL in_regf=False
  input  wire  [1:0]  regf_w37_f0_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w37_f0_wbus_o,  // Bus Write Value
  output logic        regf_w37_f0_wr_o,    // Bus Write Strobe
  // regf_w37_f2_o: bus=RWL core=WL in_regf=True
  input  wire  [1:0]  regf_w37_f2_wval_i,  // Core Write Value
  input  wire         regf_w37_f2_wr_i,    // Core Write Strobe
  // regf_w37_f4_o: bus=RWL core=RW in_regf=False
  input  wire  [1:0]  regf_w37_f4_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w37_f4_wbus_o,  // Bus Write Value
  output logic        regf_w37_f4_wr_o,    // Bus Write Strobe
  // regf_w37_f6_o: bus=RWL core=RW in_regf=True
  output logic [1:0]  regf_w37_f6_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w37_f6_wval_i,  // Core Write Value
  input  wire         regf_w37_f6_wr_i,    // Core Write Strobe
  // regf_w37_f8_o: bus=RWL core=RW0C in_regf=False
  input  wire  [1:0]  regf_w37_f8_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w37_f8_wbus_o,  // Bus Write Value
  output logic        regf_w37_f8_wr_o,    // Bus Write Strobe
  // regf_w37_f10_o: bus=RWL core=RW0C in_regf=True
  output logic [1:0]  regf_w37_f10_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w37_f10_wval_i, // Core Write Value
  input  wire         regf_w37_f10_wr_i,   // Core Write Strobe
  // regf_w37_f12_o: bus=RWL core=RW0S in_regf=False
  input  wire  [1:0]  regf_w37_f12_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w37_f12_wbus_o, // Bus Write Value
  output logic        regf_w37_f12_wr_o,   // Bus Write Strobe
  // regf_w37_f14_o: bus=RWL core=RW0S in_regf=True
  output logic [1:0]  regf_w37_f14_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w37_f14_wval_i, // Core Write Value
  input  wire         regf_w37_f14_wr_i,   // Core Write Strobe
  // regf_w37_f16_o: bus=RWL core=RW1C in_regf=False
  input  wire  [1:0]  regf_w37_f16_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w37_f16_wbus_o, // Bus Write Value
  output logic        regf_w37_f16_wr_o,   // Bus Write Strobe
  // regf_w37_f18_o: bus=RWL core=RW1C in_regf=True
  output logic [1:0]  regf_w37_f18_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w37_f18_wval_i, // Core Write Value
  input  wire         regf_w37_f18_wr_i,   // Core Write Strobe
  // regf_w37_f20_o: bus=RWL core=RW1S in_regf=False
  input  wire  [1:0]  regf_w37_f20_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w37_f20_wbus_o, // Bus Write Value
  output logic        regf_w37_f20_wr_o,   // Bus Write Strobe
  // regf_w37_f22_o: bus=RWL core=RW1S in_regf=True
  output logic [1:0]  regf_w37_f22_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w37_f22_wval_i, // Core Write Value
  input  wire         regf_w37_f22_wr_i,   // Core Write Strobe
  // regf_w37_f24_o: bus=RWL core=RWL in_regf=False
  input  wire  [1:0]  regf_w37_f24_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w37_f24_wbus_o, // Bus Write Value
  output logic        regf_w37_f24_wr_o,   // Bus Write Strobe
  // regf_w37_f26_o: bus=RWL core=RWL in_regf=True
  output logic [1:0]  regf_w37_f26_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w37_f26_wval_i, // Core Write Value
  input  wire         regf_w37_f26_wr_i    // Core Write Strobe
);




  // ------------------------------------------------------
  //  Local Parameter
  // ------------------------------------------------------
  localparam [1:0] data_w0_f0_c   = 2'h0; // w0 / f0
  localparam [1:0] data_w0_f14_c  = 2'h0; // w0 / f14
  localparam [1:0] data_w2_f0_c   = 2'h0; // w2 / f0
  localparam [1:0] data_w2_f14_c  = 2'h0; // w2 / f14
  localparam [1:0] data_w10_f12_c = 2'h0; // w10 / f12
  localparam [1:0] data_w10_f26_c = 2'h0; // w10 / f26


  // ------------------------------------------------------
  //  Signals
  // ------------------------------------------------------
  logic [1:0] data_w0_f4_r;     // Word w0
  logic [1:0] data_w0_f8_r;
  logic [1:0] data_w0_f12_r;
  logic [1:0] data_w0_f18_r;
  logic [1:0] data_w0_f22_r;
  logic [1:0] data_w0_f26_r;
  logic [1:0] data_w0_f30_r;
  logic [1:0] data_w1_f2_r;     // Word w1
  logic [1:0] data_w1_f6_r;
  logic [1:0] data_w1_f10_r;
  logic [1:0] data_w1_f14_r;
  logic [1:0] data_w1_f18_r;
  logic [1:0] data_w1_f22_r;
  logic [1:0] data_w1_f26_r;
  logic [1:0] data_w1_f30_r;
  logic [1:0] data_w2_f4_r;     // Word w2
  logic [1:0] data_w2_f8_r;
  logic [1:0] data_w2_f12_r;
  logic [1:0] data_w2_f18_r;
  logic [1:0] data_w2_f22_r;
  logic [1:0] data_w2_f26_r;
  logic [1:0] data_w2_f30_r;
  logic [1:0] data_w3_f2_r;     // Word w3
  logic [1:0] data_w3_f6_r;
  logic [1:0] data_w3_f10_r;
  logic [1:0] data_w3_f14_r;
  logic [1:0] data_w3_f18_r;
  logic [1:0] data_w3_f22_r;
  logic [1:0] data_w3_f26_r;
  logic [1:0] data_w3_f30_r;
  logic [1:0] data_w4_f2_r;     // Word w4
  logic [1:0] data_w4_f6_r;
  logic [1:0] data_w4_f10_r;
  logic [1:0] data_w4_f14_r;
  logic [1:0] data_w4_f18_r;
  logic [1:0] data_w4_f22_r;
  logic [1:0] data_w4_f26_r;
  logic [1:0] data_w4_f30_r;
  logic [1:0] data_w5_f2_r;     // Word w5
  logic [1:0] data_w5_f6_r;
  logic [1:0] data_w5_f10_r;
  logic [1:0] data_w5_f14_r;
  logic [1:0] data_w5_f18_r;
  logic [1:0] data_w5_f22_r;
  logic [1:0] data_w5_f26_r;
  logic [1:0] data_w5_f30_r;
  logic [1:0] data_w6_f2_r;     // Word w6
  logic [1:0] data_w6_f6_r;
  logic [1:0] data_w6_f10_r;
  logic [1:0] data_w6_f14_r;
  logic [1:0] data_w6_f18_r;
  logic [1:0] data_w6_f22_r;
  logic [1:0] data_w6_f26_r;
  logic [1:0] data_w6_f30_r;
  logic [1:0] data_w7_f2_r;     // Word w7
  logic [1:0] data_w7_f6_r;
  logic [1:0] data_w7_f10_r;
  logic [1:0] data_w7_f14_r;
  logic [1:0] data_w7_f18_r;
  logic [1:0] data_w7_f22_r;
  logic [1:0] data_w7_f26_r;
  logic [1:0] data_w7_f30_r;
  logic [1:0] data_w8_f2_r;     // Word w8
  logic [1:0] data_w8_f6_r;
  logic [1:0] data_w8_f10_r;
  logic [1:0] data_w8_f14_r;
  logic [1:0] data_w8_f18_r;
  logic [1:0] data_w8_f22_r;
  logic [1:0] data_w8_f26_r;
  logic [1:0] data_w8_f30_r;
  logic [1:0] data_w9_f2_r;     // Word w9
  logic [1:0] data_w9_f6_r;
  logic [1:0] data_w9_f10_r;
  logic [1:0] data_w9_f14_r;
  logic [1:0] data_w9_f18_r;
  logic [1:0] data_w9_f22_r;
  logic [1:0] data_w9_f26_r;
  logic [1:0] data_w9_f30_r;
  logic [1:0] data_w10_f2_r;    // Word w10
  logic [1:0] data_w10_f6_r;
  logic [1:0] data_w10_f10_r;
  logic [1:0] data_w10_f16_r;
  logic [1:0] data_w10_f20_r;
  logic [1:0] data_w10_f24_r;
  logic [1:0] data_w10_f30_r;
  logic [1:0] data_w11_f2_r;    // Word w11
  logic [1:0] data_w11_f6_r;
  logic [1:0] data_w11_f10_r;
  logic [1:0] data_w11_f14_r;
  logic [1:0] data_w11_f18_r;
  logic [1:0] data_w11_f22_r;
  logic [1:0] data_w11_f26_r;
  logic [1:0] data_w11_f30_r;
  logic [1:0] data_w12_f2_r;    // Word w12
  logic [1:0] data_w12_f6_r;
  logic [1:0] data_w12_f10_r;
  logic [1:0] data_w12_f14_r;
  logic [1:0] data_w12_f18_r;
  logic [1:0] data_w12_f22_r;
  logic [1:0] data_w12_f26_r;
  logic [1:0] data_w12_f30_r;
  logic [1:0] data_w13_f2_r;    // Word w13
  logic [1:0] data_w13_f6_r;
  logic [1:0] data_w13_f10_r;
  logic [1:0] data_w13_f14_r;
  logic [1:0] data_w13_f18_r;
  logic [1:0] data_w13_f22_r;
  logic [1:0] data_w13_f26_r;
  logic [1:0] data_w13_f30_r;
  logic [1:0] data_w14_f2_r;    // Word w14
  logic [1:0] data_w14_f6_r;
  logic [1:0] data_w14_f10_r;
  logic [1:0] data_w14_f14_r;
  logic [1:0] data_w14_f18_r;
  logic [1:0] data_w14_f22_r;
  logic [1:0] data_w14_f26_r;
  logic [1:0] data_w14_f30_r;
  logic [1:0] data_w15_f2_r;    // Word w15
  logic [1:0] data_w15_f6_r;
  logic [1:0] data_w15_f10_r;
  logic [1:0] data_w15_f14_r;
  logic [1:0] data_w15_f18_r;
  logic [1:0] data_w15_f22_r;
  logic [1:0] data_w15_f26_r;
  logic [1:0] data_w15_f30_r;
  logic [1:0] data_w16_f2_r;    // Word w16
  logic [1:0] data_w16_f6_r;
  logic [1:0] data_w16_f10_r;
  logic [1:0] data_w16_f14_r;
  logic [1:0] data_w16_f18_r;
  logic [1:0] data_w16_f22_r;
  logic [1:0] data_w16_f26_r;
  logic [1:0] data_w16_f30_r;
  logic [1:0] data_w17_f2_r;    // Word w17
  logic [1:0] data_w17_f6_r;
  logic [1:0] data_w17_f10_r;
  logic [1:0] data_w17_f14_r;
  logic [1:0] data_w17_f18_r;
  logic [1:0] data_w17_f22_r;
  logic [1:0] data_w17_f26_r;
  logic [1:0] data_w17_f30_r;
  logic [1:0] data_w18_f2_r;    // Word w18
  logic [1:0] data_w18_f6_r;
  logic [1:0] data_w18_f10_r;
  logic [1:0] data_w18_f14_r;
  logic [1:0] data_w18_f18_r;
  logic [1:0] data_w18_f22_r;
  logic [1:0] data_w18_f26_r;
  logic [1:0] data_w18_f30_r;
  logic [1:0] data_w19_f2_r;    // Word w19
  logic [1:0] data_w19_f6_r;
  logic [1:0] data_w19_f10_r;
  logic [1:0] data_w19_f14_r;
  logic [1:0] data_w19_f18_r;
  logic [1:0] data_w19_f22_r;
  logic [1:0] data_w19_f26_r;
  logic [1:0] data_w19_f30_r;
  logic [1:0] data_w20_f2_r;    // Word w20
  logic [1:0] data_w20_f6_r;
  logic [1:0] data_w20_f10_r;
  logic [1:0] data_w20_f14_r;
  logic [1:0] data_w20_f18_r;
  logic [1:0] data_w20_f22_r;
  logic [1:0] data_w20_f26_r;
  logic [1:0] data_w20_f30_r;
  logic [1:0] data_w21_f2_r;    // Word w21
  logic [1:0] data_w21_f6_r;
  logic [1:0] data_w21_f10_r;
  logic [1:0] data_w21_f14_r;
  logic [1:0] data_w21_f18_r;
  logic [1:0] data_w21_f22_r;
  logic [1:0] data_w21_f26_r;
  logic [1:0] data_w21_f30_r;
  logic [1:0] data_w22_f2_r;    // Word w22
  logic [1:0] data_w22_f6_r;
  logic [1:0] data_w22_f10_r;
  logic [1:0] data_w22_f14_r;
  logic [1:0] data_w22_f18_r;
  logic [1:0] data_w22_f22_r;
  logic [1:0] data_w22_f26_r;
  logic [1:0] data_w22_f30_r;
  logic [1:0] data_w23_f2_r;    // Word w23
  logic [1:0] data_w23_f6_r;
  logic [1:0] data_w23_f10_r;
  logic [1:0] data_w23_f14_r;
  logic [1:0] data_w23_f18_r;
  logic [1:0] data_w23_f22_r;
  logic [1:0] data_w23_f26_r;
  logic [1:0] data_w23_f30_r;
  logic       bus_w23_wronce_r;
  logic [1:0] data_w24_f2_r;    // Word w24
  logic [1:0] data_w24_f6_r;
  logic [1:0] data_w24_f10_r;
  logic [1:0] data_w24_f14_r;
  logic [1:0] data_w24_f18_r;
  logic [1:0] data_w24_f22_r;
  logic [1:0] data_w24_f26_r;
  logic [1:0] data_w24_f30_r;
  logic       bus_w24_wronce_r;
  logic [1:0] data_w25_f2_r;    // Word w25
  logic [1:0] data_w25_f6_r;
  logic [1:0] data_w25_f10_r;
  logic [1:0] data_w25_f14_r;
  logic [1:0] data_w25_f18_r;
  logic [1:0] data_w25_f22_r;
  logic [1:0] data_w25_f26_r;
  logic [1:0] data_w25_f30_r;
  logic       bus_w25_wronce_r;
  logic [1:0] data_w26_f2_r;    // Word w26
  logic [1:0] data_w26_f6_r;
  logic [1:0] data_w26_f10_r;
  logic [1:0] data_w26_f14_r;
  logic [1:0] data_w26_f18_r;
  logic [1:0] data_w26_f22_r;
  logic [1:0] data_w26_f26_r;
  logic [1:0] data_w26_f30_r;
  logic [1:0] data_w27_f2_r;    // Word w27
  logic [1:0] data_w27_f6_r;
  logic [1:0] data_w27_f10_r;
  logic [1:0] data_w27_f14_r;
  logic [1:0] data_w27_f18_r;
  logic [1:0] data_w27_f22_r;
  logic [1:0] data_w27_f26_r;
  logic [1:0] data_w27_f30_r;
  logic [1:0] data_w28_f2_r;    // Word w28
  logic [1:0] data_w28_f6_r;
  logic [1:0] data_w28_f10_r;
  logic [1:0] data_w28_f14_r;
  logic [1:0] data_w28_f18_r;
  logic [1:0] data_w28_f22_r;
  logic [1:0] data_w28_f26_r;
  logic [1:0] data_w28_f30_r;
  logic [1:0] data_w29_f2_r;    // Word w29
  logic [1:0] data_w29_f6_r;
  logic [1:0] data_w29_f10_r;
  logic [1:0] data_w29_f14_r;
  logic [1:0] data_w29_f18_r;
  logic [1:0] data_w29_f22_r;
  logic [1:0] data_w29_f26_r;
  logic [1:0] data_w29_f30_r;
  logic [1:0] data_w30_f2_r;    // Word w30
  logic [1:0] data_w30_f6_r;
  logic [1:0] data_w30_f10_r;
  logic [1:0] data_w30_f14_r;
  logic [1:0] data_w30_f18_r;
  logic [1:0] data_w30_f22_r;
  logic [1:0] data_w30_f26_r;
  logic [1:0] data_w30_f30_r;
  logic [1:0] data_w31_f2_r;    // Word w31
  logic [1:0] data_w31_f6_r;
  logic [1:0] data_w31_f10_r;
  logic [1:0] data_w31_f14_r;
  logic [1:0] data_w31_f18_r;
  logic [1:0] data_w31_f22_r;
  logic [1:0] data_w31_f26_r;
  logic [1:0] data_w31_f30_r;
  logic [1:0] data_w32_f2_r;    // Word w32
  logic [1:0] data_w32_f6_r;
  logic [1:0] data_w32_f10_r;
  logic [1:0] data_w32_f14_r;
  logic [1:0] data_w32_f18_r;
  logic [1:0] data_w32_f22_r;
  logic [1:0] data_w32_f26_r;
  logic [1:0] data_w32_f30_r;
  logic [1:0] data_w33_f2_r;    // Word w33
  logic [1:0] data_w33_f6_r;
  logic [1:0] data_w33_f10_r;
  logic [1:0] data_w33_f14_r;
  logic [1:0] data_w33_f18_r;
  logic [1:0] data_w33_f22_r;
  logic [1:0] data_w33_f26_r;
  logic [1:0] data_w33_f30_r;
  logic [1:0] data_w34_f2_r;    // Word w34
  logic [1:0] data_w34_f6_r;
  logic [1:0] data_w34_f10_r;
  logic [1:0] data_w34_f14_r;
  logic [1:0] data_w34_f18_r;
  logic [1:0] data_w34_f22_r;
  logic [1:0] data_w34_f26_r;
  logic [1:0] data_w34_f30_r;
  logic [1:0] data_w35_f2_r;    // Word w35
  logic [1:0] data_w35_f6_r;
  logic [1:0] data_w35_f10_r;
  logic [1:0] data_w35_f14_r;
  logic [1:0] data_w35_f18_r;
  logic [1:0] data_w35_f22_r;
  logic [1:0] data_w35_f26_r;
  logic [1:0] data_w35_f30_r;
  logic       bus_w35_wronce_r;
  logic [1:0] data_w36_f2_r;    // Word w36
  logic [1:0] data_w36_f6_r;
  logic [1:0] data_w36_f10_r;
  logic [1:0] data_w36_f14_r;
  logic [1:0] data_w36_f18_r;
  logic [1:0] data_w36_f22_r;
  logic [1:0] data_w36_f26_r;
  logic [1:0] data_w36_f30_r;
  logic       bus_w36_wronce_r;
  logic [1:0] data_w37_f2_r;    // Word w37
  logic [1:0] data_w37_f6_r;
  logic [1:0] data_w37_f10_r;
  logic [1:0] data_w37_f14_r;
  logic [1:0] data_w37_f18_r;
  logic [1:0] data_w37_f22_r;
  logic [1:0] data_w37_f26_r;
  logic       bus_w37_wronce_r;
  logic       bus_w12_wren_s;   // bus word write enables
  logic       bus_w13_wren_s;
  logic       bus_w14_wren_s;
  logic       bus_w15_wren_s;
  logic       bus_w16_wren_s;
  logic       bus_w17_wren_s;
  logic       bus_w18_wren_s;
  logic       bus_w19_wren_s;
  logic       bus_w20_wren_s;
  logic       bus_w21_wren_s;
  logic       bus_w22_wren_s;
  logic       bus_w23_wren_s;
  logic       bus_w24_wren_s;
  logic       bus_w25_wren_s;
  logic       bus_w26_wren_s;
  logic       bus_w27_wren_s;
  logic       bus_w28_wren_s;
  logic       bus_w29_wren_s;
  logic       bus_w30_wren_s;
  logic       bus_w31_wren_s;
  logic       bus_w32_wren_s;
  logic       bus_w33_wren_s;
  logic       bus_w34_wren_s;
  logic       bus_w35_wren_s;
  logic       bus_w36_wren_s;
  logic       bus_w37_wren_s;
  logic       bus_w2_rden_s;    // bus word read enables
  logic       bus_w3_rden_s;
  logic       bus_w4_rden_s;
  logic       bus_w5_rden_s;
  logic       bus_w6_rden_s;
  logic       bus_w7_rden_s;
  logic       bus_w8_rden_s;
  logic       bus_w9_rden_s;
  logic       bus_w10_rden_s;
  logic       bus_w11_rden_s;
  logic       bus_w12_rden_s;
  logic       bus_w25_rden_s;
  logic       bus_w26_rden_s;
  logic       bus_w27_rden_s;
  logic       bus_w28_rden_s;
  logic       bus_w29_rden_s;
  logic       bus_w30_rden_s;
  logic       bus_w31_rden_s;
  logic       bus_w32_rden_s;
  logic       bus_w33_rden_s;
  logic       bus_w34_rden_s;
  logic       bus_w35_rden_s;
  logic       bus_w36_rden_s;
  logic       bus_w37_rden_s;

  always_comb begin: proc_bus_addr_dec
    // defaults
    mem_err_o = 1'b0;
    bus_w12_wren_s = 1'b0;
    bus_w13_wren_s = 1'b0;
    bus_w14_wren_s = 1'b0;
    bus_w15_wren_s = 1'b0;
    bus_w16_wren_s = 1'b0;
    bus_w17_wren_s = 1'b0;
    bus_w18_wren_s = 1'b0;
    bus_w19_wren_s = 1'b0;
    bus_w20_wren_s = 1'b0;
    bus_w21_wren_s = 1'b0;
    bus_w22_wren_s = 1'b0;
    bus_w23_wren_s = 1'b0;
    bus_w24_wren_s = 1'b0;
    bus_w25_wren_s = 1'b0;
    bus_w26_wren_s = 1'b0;
    bus_w27_wren_s = 1'b0;
    bus_w28_wren_s = 1'b0;
    bus_w29_wren_s = 1'b0;
    bus_w30_wren_s = 1'b0;
    bus_w31_wren_s = 1'b0;
    bus_w32_wren_s = 1'b0;
    bus_w33_wren_s = 1'b0;
    bus_w34_wren_s = 1'b0;
    bus_w35_wren_s = 1'b0;
    bus_w36_wren_s = 1'b0;
    bus_w37_wren_s = 1'b0;
    bus_w2_rden_s  = 1'b0;
    bus_w3_rden_s  = 1'b0;
    bus_w4_rden_s  = 1'b0;
    bus_w5_rden_s  = 1'b0;
    bus_w6_rden_s  = 1'b0;
    bus_w7_rden_s  = 1'b0;
    bus_w8_rden_s  = 1'b0;
    bus_w9_rden_s  = 1'b0;
    bus_w10_rden_s = 1'b0;
    bus_w11_rden_s = 1'b0;
    bus_w12_rden_s = 1'b0;
    bus_w25_rden_s = 1'b0;
    bus_w26_rden_s = 1'b0;
    bus_w27_rden_s = 1'b0;
    bus_w28_rden_s = 1'b0;
    bus_w29_rden_s = 1'b0;
    bus_w30_rden_s = 1'b0;
    bus_w31_rden_s = 1'b0;
    bus_w32_rden_s = 1'b0;
    bus_w33_rden_s = 1'b0;
    bus_w34_rden_s = 1'b0;
    bus_w35_rden_s = 1'b0;
    bus_w36_rden_s = 1'b0;
    bus_w37_rden_s = 1'b0;

    // write decode
    if ((mem_ena_i == 1'b1) && (mem_wena_i == 1'b1)) begin
      case (mem_addr_i)
        13'h0030: begin
          bus_w12_wren_s = 1'b1;
        end
        13'h0034: begin
          bus_w13_wren_s = 1'b1;
        end
        13'h0038: begin
          bus_w14_wren_s = 1'b1;
        end
        13'h003C: begin
          bus_w15_wren_s = 1'b1;
        end
        13'h0040: begin
          bus_w16_wren_s = 1'b1;
        end
        13'h0044: begin
          bus_w17_wren_s = 1'b1;
        end
        13'h0048: begin
          bus_w18_wren_s = 1'b1;
        end
        13'h004C: begin
          bus_w19_wren_s = 1'b1;
        end
        13'h0050: begin
          bus_w20_wren_s = 1'b1;
        end
        13'h0054: begin
          bus_w21_wren_s = 1'b1;
        end
        13'h0058: begin
          bus_w22_wren_s = 1'b1;
        end
        13'h005C: begin
          bus_w23_wren_s = 1'b1;
        end
        13'h0060: begin
          bus_w24_wren_s = 1'b1;
        end
        13'h0064: begin
          bus_w25_wren_s = 1'b1;
        end
        13'h0068: begin
          bus_w26_wren_s = 1'b1;
        end
        13'h006C: begin
          bus_w27_wren_s = 1'b1;
        end
        13'h0070: begin
          bus_w28_wren_s = 1'b1;
        end
        13'h0074: begin
          bus_w29_wren_s = 1'b1;
        end
        13'h0078: begin
          bus_w30_wren_s = 1'b1;
        end
        13'h007C: begin
          bus_w31_wren_s = 1'b1;
        end
        13'h0080: begin
          bus_w32_wren_s = 1'b1;
        end
        13'h0084: begin
          bus_w33_wren_s = 1'b1;
        end
        13'h0088: begin
          bus_w34_wren_s = 1'b1;
        end
        13'h008C: begin
          bus_w35_wren_s = 1'b1;
        end
        13'h0090: begin
          bus_w36_wren_s = 1'b1;
        end
        13'h0094: begin
          bus_w37_wren_s = 1'b1;
        end
        default: begin
          mem_err_o = 1'b1;
        end
      endcase
    end

    // read decode
    if ((mem_ena_i == 1'b1) && (mem_wena_i == 1'b0)) begin
      case (mem_addr_i)
        13'h0008: begin
          bus_w2_rden_s = 1'b1;
        end
        13'h000C: begin
          bus_w3_rden_s = 1'b1;
        end
        13'h0010: begin
          bus_w4_rden_s = 1'b1;
        end
        13'h0014: begin
          bus_w5_rden_s = 1'b1;
        end
        13'h0018: begin
          bus_w6_rden_s = 1'b1;
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
        13'h0030: begin
          bus_w12_rden_s = 1'b1;
        end
        13'h0064: begin
          bus_w25_rden_s = 1'b1;
        end
        13'h0068: begin
          bus_w26_rden_s = 1'b1;
        end
        13'h006C: begin
          bus_w27_rden_s = 1'b1;
        end
        13'h0070: begin
          bus_w28_rden_s = 1'b1;
        end
        13'h0074: begin
          bus_w29_rden_s = 1'b1;
        end
        13'h0078: begin
          bus_w30_rden_s = 1'b1;
        end
        13'h007C: begin
          bus_w31_rden_s = 1'b1;
        end
        13'h0080: begin
          bus_w32_rden_s = 1'b1;
        end
        13'h0084: begin
          bus_w33_rden_s = 1'b1;
        end
        13'h0088: begin
          bus_w34_rden_s = 1'b1;
        end
        13'h008C: begin
          bus_w35_rden_s = 1'b1;
        end
        13'h0090: begin
          bus_w36_rden_s = 1'b1;
        end
        13'h0094: begin
          bus_w37_rden_s = 1'b1;
        end
        default: begin
          mem_err_o = 1'b1;
        end
      endcase
    end
  end

  // ------------------------------------------------------
  // in-regf storage
  // ------------------------------------------------------
  always_ff @ (posedge main_clk_i or negedge main_rst_an_i) begin: proc_regf_flops
    if (main_rst_an_i == 1'b1) begin
      // Word: w0
      data_w0_f4_r     <= 2'h0;
      data_w0_f8_r     <= 2'h0;
      data_w0_f12_r    <= 2'h0;
      data_w0_f18_r    <= 2'h0;
      data_w0_f22_r    <= 2'h0;
      data_w0_f26_r    <= 2'h0;
      data_w0_f30_r    <= 2'h0;
      // Word: w1
      data_w1_f2_r     <= 2'h0;
      data_w1_f6_r     <= 2'h0;
      data_w1_f10_r    <= 2'h0;
      data_w1_f14_r    <= 2'h0;
      data_w1_f18_r    <= 2'h0;
      data_w1_f22_r    <= 2'h0;
      data_w1_f26_r    <= 2'h0;
      data_w1_f30_r    <= 2'h0;
      // Word: w2
      data_w2_f4_r     <= 2'h0;
      data_w2_f8_r     <= 2'h0;
      data_w2_f12_r    <= 2'h0;
      data_w2_f18_r    <= 2'h0;
      data_w2_f22_r    <= 2'h0;
      data_w2_f26_r    <= 2'h0;
      data_w2_f30_r    <= 2'h0;
      // Word: w3
      data_w3_f2_r     <= 2'h0;
      data_w3_f6_r     <= 2'h0;
      data_w3_f10_r    <= 2'h0;
      data_w3_f14_r    <= 2'h0;
      data_w3_f18_r    <= 2'h0;
      data_w3_f22_r    <= 2'h0;
      data_w3_f26_r    <= 2'h0;
      data_w3_f30_r    <= 2'h0;
      // Word: w4
      data_w4_f2_r     <= 2'h0;
      data_w4_f6_r     <= 2'h0;
      data_w4_f10_r    <= 2'h0;
      data_w4_f14_r    <= 2'h0;
      data_w4_f18_r    <= 2'h0;
      data_w4_f22_r    <= 2'h0;
      data_w4_f26_r    <= 2'h0;
      data_w4_f30_r    <= 2'h0;
      // Word: w5
      data_w5_f2_r     <= 2'h0;
      data_w5_f6_r     <= 2'h0;
      data_w5_f10_r    <= 2'h0;
      data_w5_f14_r    <= 2'h0;
      data_w5_f18_r    <= 2'h0;
      data_w5_f22_r    <= 2'h0;
      data_w5_f26_r    <= 2'h0;
      data_w5_f30_r    <= 2'h0;
      // Word: w6
      data_w6_f2_r     <= 2'h0;
      data_w6_f6_r     <= 2'h0;
      data_w6_f10_r    <= 2'h0;
      data_w6_f14_r    <= 2'h0;
      data_w6_f18_r    <= 2'h0;
      data_w6_f22_r    <= 2'h0;
      data_w6_f26_r    <= 2'h0;
      data_w6_f30_r    <= 2'h0;
      // Word: w7
      data_w7_f2_r     <= 2'h0;
      data_w7_f6_r     <= 2'h0;
      data_w7_f10_r    <= 2'h0;
      data_w7_f14_r    <= 2'h0;
      data_w7_f18_r    <= 2'h0;
      data_w7_f22_r    <= 2'h0;
      data_w7_f26_r    <= 2'h0;
      data_w7_f30_r    <= 2'h0;
      // Word: w8
      data_w8_f2_r     <= 2'h0;
      data_w8_f6_r     <= 2'h0;
      data_w8_f10_r    <= 2'h0;
      data_w8_f14_r    <= 2'h0;
      data_w8_f18_r    <= 2'h0;
      data_w8_f22_r    <= 2'h0;
      data_w8_f26_r    <= 2'h0;
      data_w8_f30_r    <= 2'h0;
      // Word: w9
      data_w9_f2_r     <= 2'h0;
      data_w9_f6_r     <= 2'h0;
      data_w9_f10_r    <= 2'h0;
      data_w9_f14_r    <= 2'h0;
      data_w9_f18_r    <= 2'h0;
      data_w9_f22_r    <= 2'h0;
      data_w9_f26_r    <= 2'h0;
      data_w9_f30_r    <= 2'h0;
      // Word: w10
      data_w10_f2_r    <= 2'h0;
      data_w10_f6_r    <= 2'h0;
      data_w10_f10_r   <= 2'h0;
      data_w10_f16_r   <= 2'h0;
      data_w10_f20_r   <= 2'h0;
      data_w10_f24_r   <= 2'h0;
      data_w10_f30_r   <= 2'h0;
      // Word: w11
      data_w11_f2_r    <= 2'h0;
      data_w11_f6_r    <= 2'h0;
      data_w11_f10_r   <= 2'h0;
      data_w11_f14_r   <= 2'h0;
      data_w11_f18_r   <= 2'h0;
      data_w11_f22_r   <= 2'h0;
      data_w11_f26_r   <= 2'h0;
      data_w11_f30_r   <= 2'h0;
      // Word: w12
      data_w12_f2_r    <= 2'h0;
      data_w12_f6_r    <= 2'h0;
      data_w12_f10_r   <= 2'h0;
      data_w12_f14_r   <= 2'h0;
      data_w12_f18_r   <= 2'h0;
      data_w12_f22_r   <= 2'h0;
      data_w12_f26_r   <= 2'h0;
      data_w12_f30_r   <= 2'h0;
      // Word: w13
      data_w13_f2_r    <= 2'h0;
      data_w13_f6_r    <= 2'h0;
      data_w13_f10_r   <= 2'h0;
      data_w13_f14_r   <= 2'h0;
      data_w13_f18_r   <= 2'h0;
      data_w13_f22_r   <= 2'h0;
      data_w13_f26_r   <= 2'h0;
      data_w13_f30_r   <= 2'h0;
      // Word: w14
      data_w14_f2_r    <= 2'h0;
      data_w14_f6_r    <= 2'h0;
      data_w14_f10_r   <= 2'h0;
      data_w14_f14_r   <= 2'h0;
      data_w14_f18_r   <= 2'h0;
      data_w14_f22_r   <= 2'h0;
      data_w14_f26_r   <= 2'h0;
      data_w14_f30_r   <= 2'h0;
      // Word: w15
      data_w15_f2_r    <= 2'h0;
      data_w15_f6_r    <= 2'h0;
      data_w15_f10_r   <= 2'h0;
      data_w15_f14_r   <= 2'h0;
      data_w15_f18_r   <= 2'h0;
      data_w15_f22_r   <= 2'h0;
      data_w15_f26_r   <= 2'h0;
      data_w15_f30_r   <= 2'h0;
      // Word: w16
      data_w16_f2_r    <= 2'h0;
      data_w16_f6_r    <= 2'h0;
      data_w16_f10_r   <= 2'h0;
      data_w16_f14_r   <= 2'h0;
      data_w16_f18_r   <= 2'h0;
      data_w16_f22_r   <= 2'h0;
      data_w16_f26_r   <= 2'h0;
      data_w16_f30_r   <= 2'h0;
      // Word: w17
      data_w17_f2_r    <= 2'h0;
      data_w17_f6_r    <= 2'h0;
      data_w17_f10_r   <= 2'h0;
      data_w17_f14_r   <= 2'h0;
      data_w17_f18_r   <= 2'h0;
      data_w17_f22_r   <= 2'h0;
      data_w17_f26_r   <= 2'h0;
      data_w17_f30_r   <= 2'h0;
      // Word: w18
      data_w18_f2_r    <= 2'h0;
      data_w18_f6_r    <= 2'h0;
      data_w18_f10_r   <= 2'h0;
      data_w18_f14_r   <= 2'h0;
      data_w18_f18_r   <= 2'h0;
      data_w18_f22_r   <= 2'h0;
      data_w18_f26_r   <= 2'h0;
      data_w18_f30_r   <= 2'h0;
      // Word: w19
      data_w19_f2_r    <= 2'h0;
      data_w19_f6_r    <= 2'h0;
      data_w19_f10_r   <= 2'h0;
      data_w19_f14_r   <= 2'h0;
      data_w19_f18_r   <= 2'h0;
      data_w19_f22_r   <= 2'h0;
      data_w19_f26_r   <= 2'h0;
      data_w19_f30_r   <= 2'h0;
      // Word: w20
      data_w20_f2_r    <= 2'h0;
      data_w20_f6_r    <= 2'h0;
      data_w20_f10_r   <= 2'h0;
      data_w20_f14_r   <= 2'h0;
      data_w20_f18_r   <= 2'h0;
      data_w20_f22_r   <= 2'h0;
      data_w20_f26_r   <= 2'h0;
      data_w20_f30_r   <= 2'h0;
      // Word: w21
      data_w21_f2_r    <= 2'h0;
      data_w21_f6_r    <= 2'h0;
      data_w21_f10_r   <= 2'h0;
      data_w21_f14_r   <= 2'h0;
      data_w21_f18_r   <= 2'h0;
      data_w21_f22_r   <= 2'h0;
      data_w21_f26_r   <= 2'h0;
      data_w21_f30_r   <= 2'h0;
      // Word: w22
      data_w22_f2_r    <= 2'h0;
      data_w22_f6_r    <= 2'h0;
      data_w22_f10_r   <= 2'h0;
      data_w22_f14_r   <= 2'h0;
      data_w22_f18_r   <= 2'h0;
      data_w22_f22_r   <= 2'h0;
      data_w22_f26_r   <= 2'h0;
      data_w22_f30_r   <= 2'h0;
      // Word: w23
      data_w23_f2_r    <= 2'h0;
      data_w23_f6_r    <= 2'h0;
      data_w23_f10_r   <= 2'h0;
      data_w23_f14_r   <= 2'h0;
      data_w23_f18_r   <= 2'h0;
      data_w23_f22_r   <= 2'h0;
      data_w23_f26_r   <= 2'h0;
      data_w23_f30_r   <= 2'h0;
      bus_w23_wronce_r <= 1'b1;
      // Word: w24
      data_w24_f2_r    <= 2'h0;
      data_w24_f6_r    <= 2'h0;
      data_w24_f10_r   <= 2'h0;
      data_w24_f14_r   <= 2'h0;
      data_w24_f18_r   <= 2'h0;
      data_w24_f22_r   <= 2'h0;
      data_w24_f26_r   <= 2'h0;
      data_w24_f30_r   <= 2'h0;
      bus_w24_wronce_r <= 1'b1;
      // Word: w25
      data_w25_f2_r    <= 2'h0;
      data_w25_f6_r    <= 2'h0;
      data_w25_f10_r   <= 2'h0;
      data_w25_f14_r   <= 2'h0;
      data_w25_f18_r   <= 2'h0;
      data_w25_f22_r   <= 2'h0;
      data_w25_f26_r   <= 2'h0;
      data_w25_f30_r   <= 2'h0;
      bus_w25_wronce_r <= 1'b1;
      // Word: w26
      data_w26_f2_r    <= 2'h0;
      data_w26_f6_r    <= 2'h0;
      data_w26_f10_r   <= 2'h0;
      data_w26_f14_r   <= 2'h0;
      data_w26_f18_r   <= 2'h0;
      data_w26_f22_r   <= 2'h0;
      data_w26_f26_r   <= 2'h0;
      data_w26_f30_r   <= 2'h0;
      // Word: w27
      data_w27_f2_r    <= 2'h0;
      data_w27_f6_r    <= 2'h0;
      data_w27_f10_r   <= 2'h0;
      data_w27_f14_r   <= 2'h0;
      data_w27_f18_r   <= 2'h0;
      data_w27_f22_r   <= 2'h0;
      data_w27_f26_r   <= 2'h0;
      data_w27_f30_r   <= 2'h0;
      // Word: w28
      data_w28_f2_r    <= 2'h0;
      data_w28_f6_r    <= 2'h0;
      data_w28_f10_r   <= 2'h0;
      data_w28_f14_r   <= 2'h0;
      data_w28_f18_r   <= 2'h0;
      data_w28_f22_r   <= 2'h0;
      data_w28_f26_r   <= 2'h0;
      data_w28_f30_r   <= 2'h0;
      // Word: w29
      data_w29_f2_r    <= 2'h0;
      data_w29_f6_r    <= 2'h0;
      data_w29_f10_r   <= 2'h0;
      data_w29_f14_r   <= 2'h0;
      data_w29_f18_r   <= 2'h0;
      data_w29_f22_r   <= 2'h0;
      data_w29_f26_r   <= 2'h0;
      data_w29_f30_r   <= 2'h0;
      // Word: w30
      data_w30_f2_r    <= 2'h0;
      data_w30_f6_r    <= 2'h0;
      data_w30_f10_r   <= 2'h0;
      data_w30_f14_r   <= 2'h0;
      data_w30_f18_r   <= 2'h0;
      data_w30_f22_r   <= 2'h0;
      data_w30_f26_r   <= 2'h0;
      data_w30_f30_r   <= 2'h0;
      // Word: w31
      data_w31_f2_r    <= 2'h0;
      data_w31_f6_r    <= 2'h0;
      data_w31_f10_r   <= 2'h0;
      data_w31_f14_r   <= 2'h0;
      data_w31_f18_r   <= 2'h0;
      data_w31_f22_r   <= 2'h0;
      data_w31_f26_r   <= 2'h0;
      data_w31_f30_r   <= 2'h0;
      // Word: w32
      data_w32_f2_r    <= 2'h0;
      data_w32_f6_r    <= 2'h0;
      data_w32_f10_r   <= 2'h0;
      data_w32_f14_r   <= 2'h0;
      data_w32_f18_r   <= 2'h0;
      data_w32_f22_r   <= 2'h0;
      data_w32_f26_r   <= 2'h0;
      data_w32_f30_r   <= 2'h0;
      // Word: w33
      data_w33_f2_r    <= 2'h0;
      data_w33_f6_r    <= 2'h0;
      data_w33_f10_r   <= 2'h0;
      data_w33_f14_r   <= 2'h0;
      data_w33_f18_r   <= 2'h0;
      data_w33_f22_r   <= 2'h0;
      data_w33_f26_r   <= 2'h0;
      data_w33_f30_r   <= 2'h0;
      // Word: w34
      data_w34_f2_r    <= 2'h0;
      data_w34_f6_r    <= 2'h0;
      data_w34_f10_r   <= 2'h0;
      data_w34_f14_r   <= 2'h0;
      data_w34_f18_r   <= 2'h0;
      data_w34_f22_r   <= 2'h0;
      data_w34_f26_r   <= 2'h0;
      data_w34_f30_r   <= 2'h0;
      // Word: w35
      data_w35_f2_r    <= 2'h0;
      data_w35_f6_r    <= 2'h0;
      data_w35_f10_r   <= 2'h0;
      data_w35_f14_r   <= 2'h0;
      data_w35_f18_r   <= 2'h0;
      data_w35_f22_r   <= 2'h0;
      data_w35_f26_r   <= 2'h0;
      data_w35_f30_r   <= 2'h0;
      bus_w35_wronce_r <= 1'b1;
      // Word: w36
      data_w36_f2_r    <= 2'h0;
      data_w36_f6_r    <= 2'h0;
      data_w36_f10_r   <= 2'h0;
      data_w36_f14_r   <= 2'h0;
      data_w36_f18_r   <= 2'h0;
      data_w36_f22_r   <= 2'h0;
      data_w36_f26_r   <= 2'h0;
      data_w36_f30_r   <= 2'h0;
      bus_w36_wronce_r <= 1'b1;
      // Word: w37
      data_w37_f2_r    <= 2'h0;
      data_w37_f6_r    <= 2'h0;
      data_w37_f10_r   <= 2'h0;
      data_w37_f14_r   <= 2'h0;
      data_w37_f18_r   <= 2'h0;
      data_w37_f22_r   <= 2'h0;
      data_w37_f26_r   <= 2'h0;
      bus_w37_wronce_r <= 1'b1;
    end else begin
      if (regf_w0_f4_rd_i == 1'b1) begin
        data_w0_f4_r <= 2'h0;
      end
      if (regf_w0_f8_rd_i == 1'b1) begin
        data_w0_f8_r <= 2'h3;
      end
      if (regf_w0_f12_rd_i == 1'b1) begin
        data_w0_f12_r <= ~data_w0_f12_r;
      end
      if (regf_w0_f18_wr_i == 1'b1) begin
        data_w0_f18_r <= regf_w0_f18_wval_i;
      end
      if (regf_w0_f22_wr_i == 1'b1) begin
        data_w0_f22_r <= data_w0_f22_r & regf_w0_f22_wval_i;
      end
      if (regf_w0_f26_wr_i == 1'b1) begin
        data_w0_f26_r <= data_w0_f26_r | ~regf_w0_f26_wval_i;
      end
      if (regf_w0_f30_wr_i == 1'b1) begin
        data_w0_f30_r <= data_w0_f30_r & ~regf_w0_f30_wval_i;
      end
      if (regf_w1_f2_wr_i == 1'b1) begin
        data_w1_f2_r <= data_w1_f2_r | regf_w1_f2_wval_i;
      end
      if (regf_w1_f6_wr_i == 1'b1) begin
        data_w1_f6_r <= regf_w1_f6_wval_i;
      end
      if (regf_w1_f10_wr_i == 1'b1) begin
        data_w1_f10_r <= regf_w1_f10_wval_i;
      end
      if (regf_w1_f14_wr_i == 1'b1) begin
        data_w1_f14_r <= data_w1_f14_r & regf_w1_f14_wval_i;
      end
      if (regf_w1_f18_wr_i == 1'b1) begin
        data_w1_f18_r <= data_w1_f18_r | ~regf_w1_f18_wval_i;
      end
      if (regf_w1_f22_wr_i == 1'b1) begin
        data_w1_f22_r <= data_w1_f22_r & ~regf_w1_f22_wval_i;
      end
      if (regf_w1_f26_wr_i == 1'b1) begin
        data_w1_f26_r <= data_w1_f26_r | regf_w1_f26_wval_i;
      end
      if (regf_w1_f30_wr_i == 1'b1) begin
        data_w1_f30_r <= regf_w1_f30_wval_i;
      end
      if (regf_w2_f4_rd_i == 1'b1) begin
        data_w2_f4_r <= 2'h0;
      end
      if (regf_w2_f8_rd_i == 1'b1) begin
        data_w2_f8_r <= 2'h3;
      end
      if (regf_w2_f12_rd_i == 1'b1) begin
        data_w2_f12_r <= ~data_w2_f12_r;
      end
      if (regf_w2_f18_wr_i == 1'b1) begin
        data_w2_f18_r <= regf_w2_f18_wval_i;
      end
      if (regf_w2_f22_wr_i == 1'b1) begin
        data_w2_f22_r <= data_w2_f22_r & regf_w2_f22_wval_i;
      end
      if (regf_w2_f26_wr_i == 1'b1) begin
        data_w2_f26_r <= data_w2_f26_r | ~regf_w2_f26_wval_i;
      end
      if (regf_w2_f30_wr_i == 1'b1) begin
        data_w2_f30_r <= data_w2_f30_r & ~regf_w2_f30_wval_i;
      end
      if (regf_w3_f2_wr_i == 1'b1) begin
        data_w3_f2_r <= data_w3_f2_r | regf_w3_f2_wval_i;
      end
      if (regf_w3_f6_wr_i == 1'b1) begin
        data_w3_f6_r <= regf_w3_f6_wval_i;
      end
      if (regf_w3_f10_wr_i == 1'b1) begin
        data_w3_f10_r <= regf_w3_f10_wval_i;
      end
      if (regf_w3_f14_wr_i == 1'b1) begin
        data_w3_f14_r <= data_w3_f14_r & regf_w3_f14_wval_i;
      end
      if (regf_w3_f18_wr_i == 1'b1) begin
        data_w3_f18_r <= data_w3_f18_r | ~regf_w3_f18_wval_i;
      end
      if (regf_w3_f22_wr_i == 1'b1) begin
        data_w3_f22_r <= data_w3_f22_r & ~regf_w3_f22_wval_i;
      end
      if (regf_w3_f26_wr_i == 1'b1) begin
        data_w3_f26_r <= data_w3_f26_r | regf_w3_f26_wval_i;
      end
      if (regf_w3_f30_wr_i == 1'b1) begin
        data_w3_f30_r <= regf_w3_f30_wval_i;
      end
      if (bus_w4_rden_s == 1'b1) begin
        data_w4_f2_r <= 2'h0;
      end
      if (bus_w4_rden_s == 1'b1) begin
        data_w4_f6_r <= 2'h0;
      end else if (regf_w4_f6_rd_i == 1'b1) begin
        data_w4_f6_r <= 2'h0;
      end
      if (bus_w4_rden_s == 1'b1) begin
        data_w4_f10_r <= 2'h0;
      end else if (regf_w4_f10_rd_i == 1'b1) begin
        data_w4_f10_r <= 2'h3;
      end
      if (bus_w4_rden_s == 1'b1) begin
        data_w4_f14_r <= 2'h0;
      end else if (regf_w4_f14_rd_i == 1'b1) begin
        data_w4_f14_r <= ~data_w4_f14_r;
      end
      if (bus_w4_rden_s == 1'b1) begin
        data_w4_f18_r <= 2'h0;
      end
      if (bus_w4_rden_s == 1'b1) begin
        data_w4_f22_r <= 2'h0;
      end else if (regf_w4_f22_wr_i == 1'b1) begin
        data_w4_f22_r <= regf_w4_f22_wval_i;
      end
      if (bus_w4_rden_s == 1'b1) begin
        data_w4_f26_r <= 2'h0;
      end else if (regf_w4_f26_wr_i == 1'b1) begin
        data_w4_f26_r <= data_w4_f26_r & regf_w4_f26_wval_i;
      end
      if (bus_w4_rden_s == 1'b1) begin
        data_w4_f30_r <= 2'h0;
      end else if (regf_w4_f30_wr_i == 1'b1) begin
        data_w4_f30_r <= data_w4_f30_r | ~regf_w4_f30_wval_i;
      end
      if (bus_w5_rden_s == 1'b1) begin
        data_w5_f2_r <= 2'h0;
      end else if (regf_w5_f2_wr_i == 1'b1) begin
        data_w5_f2_r <= data_w5_f2_r & ~regf_w5_f2_wval_i;
      end
      if (bus_w5_rden_s == 1'b1) begin
        data_w5_f6_r <= 2'h0;
      end else if (regf_w5_f6_wr_i == 1'b1) begin
        data_w5_f6_r <= data_w5_f6_r | regf_w5_f6_wval_i;
      end
      if (bus_w5_rden_s == 1'b1) begin
        data_w5_f10_r <= 2'h0;
      end else if (regf_w5_f10_wr_i == 1'b1) begin
        data_w5_f10_r <= regf_w5_f10_wval_i;
      end
      if (bus_w5_rden_s == 1'b1) begin
        data_w5_f14_r <= 2'h0;
      end else if (regf_w5_f14_wr_i == 1'b1) begin
        data_w5_f14_r <= regf_w5_f14_wval_i;
      end
      if (bus_w5_rden_s == 1'b1) begin
        data_w5_f18_r <= 2'h0;
      end else if (regf_w5_f18_wr_i == 1'b1) begin
        data_w5_f18_r <= data_w5_f18_r & regf_w5_f18_wval_i;
      end
      if (bus_w5_rden_s == 1'b1) begin
        data_w5_f22_r <= 2'h0;
      end else if (regf_w5_f22_wr_i == 1'b1) begin
        data_w5_f22_r <= data_w5_f22_r | ~regf_w5_f22_wval_i;
      end
      if (bus_w5_rden_s == 1'b1) begin
        data_w5_f26_r <= 2'h0;
      end else if (regf_w5_f26_wr_i == 1'b1) begin
        data_w5_f26_r <= data_w5_f26_r & ~regf_w5_f26_wval_i;
      end
      if (bus_w5_rden_s == 1'b1) begin
        data_w5_f30_r <= 2'h0;
      end else if (regf_w5_f30_wr_i == 1'b1) begin
        data_w5_f30_r <= data_w5_f30_r | regf_w5_f30_wval_i;
      end
      if (bus_w6_rden_s == 1'b1) begin
        data_w6_f2_r <= 2'h0;
      end else if (regf_w6_f2_wr_i == 1'b1) begin
        data_w6_f2_r <= regf_w6_f2_wval_i;
      end
      if (bus_w6_rden_s == 1'b1) begin
        data_w6_f6_r <= 2'h3;
      end
      if (bus_w6_rden_s == 1'b1) begin
        data_w6_f10_r <= 2'h3;
      end else if (regf_w6_f10_rd_i == 1'b1) begin
        data_w6_f10_r <= 2'h0;
      end
      if (bus_w6_rden_s == 1'b1) begin
        data_w6_f14_r <= 2'h3;
      end else if (regf_w6_f14_rd_i == 1'b1) begin
        data_w6_f14_r <= 2'h3;
      end
      if (bus_w6_rden_s == 1'b1) begin
        data_w6_f18_r <= 2'h3;
      end else if (regf_w6_f18_rd_i == 1'b1) begin
        data_w6_f18_r <= ~data_w6_f18_r;
      end
      if (bus_w6_rden_s == 1'b1) begin
        data_w6_f22_r <= 2'h3;
      end
      if (bus_w6_rden_s == 1'b1) begin
        data_w6_f26_r <= 2'h3;
      end else if (regf_w6_f26_wr_i == 1'b1) begin
        data_w6_f26_r <= regf_w6_f26_wval_i;
      end
      if (bus_w6_rden_s == 1'b1) begin
        data_w6_f30_r <= 2'h3;
      end else if (regf_w6_f30_wr_i == 1'b1) begin
        data_w6_f30_r <= data_w6_f30_r & regf_w6_f30_wval_i;
      end
      if (bus_w7_rden_s == 1'b1) begin
        data_w7_f2_r <= 2'h3;
      end else if (regf_w7_f2_wr_i == 1'b1) begin
        data_w7_f2_r <= data_w7_f2_r | ~regf_w7_f2_wval_i;
      end
      if (bus_w7_rden_s == 1'b1) begin
        data_w7_f6_r <= 2'h3;
      end else if (regf_w7_f6_wr_i == 1'b1) begin
        data_w7_f6_r <= data_w7_f6_r & ~regf_w7_f6_wval_i;
      end
      if (bus_w7_rden_s == 1'b1) begin
        data_w7_f10_r <= 2'h3;
      end else if (regf_w7_f10_wr_i == 1'b1) begin
        data_w7_f10_r <= data_w7_f10_r | regf_w7_f10_wval_i;
      end
      if (bus_w7_rden_s == 1'b1) begin
        data_w7_f14_r <= 2'h3;
      end else if (regf_w7_f14_wr_i == 1'b1) begin
        data_w7_f14_r <= regf_w7_f14_wval_i;
      end
      if (bus_w7_rden_s == 1'b1) begin
        data_w7_f18_r <= 2'h3;
      end else if (regf_w7_f18_wr_i == 1'b1) begin
        data_w7_f18_r <= regf_w7_f18_wval_i;
      end
      if (bus_w7_rden_s == 1'b1) begin
        data_w7_f22_r <= 2'h3;
      end else if (regf_w7_f22_wr_i == 1'b1) begin
        data_w7_f22_r <= data_w7_f22_r & regf_w7_f22_wval_i;
      end
      if (bus_w7_rden_s == 1'b1) begin
        data_w7_f26_r <= 2'h3;
      end else if (regf_w7_f26_wr_i == 1'b1) begin
        data_w7_f26_r <= data_w7_f26_r | ~regf_w7_f26_wval_i;
      end
      if (bus_w7_rden_s == 1'b1) begin
        data_w7_f30_r <= 2'h3;
      end else if (regf_w7_f30_wr_i == 1'b1) begin
        data_w7_f30_r <= data_w7_f30_r & ~regf_w7_f30_wval_i;
      end
      if (bus_w8_rden_s == 1'b1) begin
        data_w8_f2_r <= 2'h3;
      end else if (regf_w8_f2_wr_i == 1'b1) begin
        data_w8_f2_r <= data_w8_f2_r | regf_w8_f2_wval_i;
      end
      if (bus_w8_rden_s == 1'b1) begin
        data_w8_f6_r <= 2'h3;
      end else if (regf_w8_f6_wr_i == 1'b1) begin
        data_w8_f6_r <= regf_w8_f6_wval_i;
      end
      if (bus_w8_rden_s == 1'b1) begin
        data_w8_f10_r <= ~data_w8_f10_r;
      end
      if (bus_w8_rden_s == 1'b1) begin
        data_w8_f14_r <= ~data_w8_f14_r;
      end else if (regf_w8_f14_rd_i == 1'b1) begin
        data_w8_f14_r <= 2'h0;
      end
      if (bus_w8_rden_s == 1'b1) begin
        data_w8_f18_r <= ~data_w8_f18_r;
      end else if (regf_w8_f18_rd_i == 1'b1) begin
        data_w8_f18_r <= 2'h3;
      end
      if (bus_w8_rden_s == 1'b1) begin
        data_w8_f22_r <= ~data_w8_f22_r;
      end else if (regf_w8_f22_rd_i == 1'b1) begin
        data_w8_f22_r <= ~data_w8_f22_r;
      end
      if (bus_w8_rden_s == 1'b1) begin
        data_w8_f26_r <= ~data_w8_f26_r;
      end
      if (bus_w8_rden_s == 1'b1) begin
        data_w8_f30_r <= ~data_w8_f30_r;
      end else if (regf_w8_f30_wr_i == 1'b1) begin
        data_w8_f30_r <= regf_w8_f30_wval_i;
      end
      if (bus_w9_rden_s == 1'b1) begin
        data_w9_f2_r <= ~data_w9_f2_r;
      end else if (regf_w9_f2_wr_i == 1'b1) begin
        data_w9_f2_r <= data_w9_f2_r & regf_w9_f2_wval_i;
      end
      if (bus_w9_rden_s == 1'b1) begin
        data_w9_f6_r <= ~data_w9_f6_r;
      end else if (regf_w9_f6_wr_i == 1'b1) begin
        data_w9_f6_r <= data_w9_f6_r | ~regf_w9_f6_wval_i;
      end
      if (bus_w9_rden_s == 1'b1) begin
        data_w9_f10_r <= ~data_w9_f10_r;
      end else if (regf_w9_f10_wr_i == 1'b1) begin
        data_w9_f10_r <= data_w9_f10_r & ~regf_w9_f10_wval_i;
      end
      if (bus_w9_rden_s == 1'b1) begin
        data_w9_f14_r <= ~data_w9_f14_r;
      end else if (regf_w9_f14_wr_i == 1'b1) begin
        data_w9_f14_r <= data_w9_f14_r | regf_w9_f14_wval_i;
      end
      if (bus_w9_rden_s == 1'b1) begin
        data_w9_f18_r <= ~data_w9_f18_r;
      end else if (regf_w9_f18_wr_i == 1'b1) begin
        data_w9_f18_r <= regf_w9_f18_wval_i;
      end
      if (bus_w9_rden_s == 1'b1) begin
        data_w9_f22_r <= ~data_w9_f22_r;
      end else if (regf_w9_f22_wr_i == 1'b1) begin
        data_w9_f22_r <= regf_w9_f22_wval_i;
      end
      if (bus_w9_rden_s == 1'b1) begin
        data_w9_f26_r <= ~data_w9_f26_r;
      end else if (regf_w9_f26_wr_i == 1'b1) begin
        data_w9_f26_r <= data_w9_f26_r & regf_w9_f26_wval_i;
      end
      if (bus_w9_rden_s == 1'b1) begin
        data_w9_f30_r <= ~data_w9_f30_r;
      end else if (regf_w9_f30_wr_i == 1'b1) begin
        data_w9_f30_r <= data_w9_f30_r | ~regf_w9_f30_wval_i;
      end
      if (bus_w10_rden_s == 1'b1) begin
        data_w10_f2_r <= ~data_w10_f2_r;
      end else if (regf_w10_f2_wr_i == 1'b1) begin
        data_w10_f2_r <= data_w10_f2_r & ~regf_w10_f2_wval_i;
      end
      if (bus_w10_rden_s == 1'b1) begin
        data_w10_f6_r <= ~data_w10_f6_r;
      end else if (regf_w10_f6_wr_i == 1'b1) begin
        data_w10_f6_r <= data_w10_f6_r | regf_w10_f6_wval_i;
      end
      if (bus_w10_rden_s == 1'b1) begin
        data_w10_f10_r <= ~data_w10_f10_r;
      end else if (regf_w10_f10_wr_i == 1'b1) begin
        data_w10_f10_r <= regf_w10_f10_wval_i;
      end
      if (regf_w10_f16_rd_i == 1'b1) begin
        data_w10_f16_r <= 2'h0;
      end
      if (regf_w10_f20_rd_i == 1'b1) begin
        data_w10_f20_r <= 2'h3;
      end
      if (regf_w10_f24_rd_i == 1'b1) begin
        data_w10_f24_r <= ~data_w10_f24_r;
      end
      if (regf_w10_f30_wr_i == 1'b1) begin
        data_w10_f30_r <= regf_w10_f30_wval_i;
      end
      if (regf_w11_f2_wr_i == 1'b1) begin
        data_w11_f2_r <= data_w11_f2_r & regf_w11_f2_wval_i;
      end
      if (regf_w11_f6_wr_i == 1'b1) begin
        data_w11_f6_r <= data_w11_f6_r | ~regf_w11_f6_wval_i;
      end
      if (regf_w11_f10_wr_i == 1'b1) begin
        data_w11_f10_r <= data_w11_f10_r & ~regf_w11_f10_wval_i;
      end
      if (regf_w11_f14_wr_i == 1'b1) begin
        data_w11_f14_r <= data_w11_f14_r | regf_w11_f14_wval_i;
      end
      if (regf_w11_f18_wr_i == 1'b1) begin
        data_w11_f18_r <= regf_w11_f18_wval_i;
      end
      if (regf_w11_f22_wr_i == 1'b1) begin
        data_w11_f22_r <= regf_w11_f22_wval_i;
      end
      if (regf_w11_f26_wr_i == 1'b1) begin
        data_w11_f26_r <= data_w11_f26_r & regf_w11_f26_wval_i;
      end
      if (regf_w11_f30_wr_i == 1'b1) begin
        data_w11_f30_r <= data_w11_f30_r | ~regf_w11_f30_wval_i;
      end
      if (regf_w12_f2_wr_i == 1'b1) begin
        data_w12_f2_r <= data_w12_f2_r & ~regf_w12_f2_wval_i;
      end
      if (regf_w12_f6_wr_i == 1'b1) begin
        data_w12_f6_r <= data_w12_f6_r | regf_w12_f6_wval_i;
      end
      if (regf_w12_f10_wr_i == 1'b1) begin
        data_w12_f10_r <= regf_w12_f10_wval_i;
      end
      if (bus_w12_wren_s == 1'b1) begin
        data_w12_f14_r <= mem_wdata_i[15:14];
      end
      if (bus_w12_wren_s == 1'b1) begin
        data_w12_f18_r <= mem_wdata_i[19:18];
      end else if (regf_w12_f18_rd_i == 1'b1) begin
        data_w12_f18_r <= 2'h0;
      end
      if (bus_w12_wren_s == 1'b1) begin
        data_w12_f22_r <= mem_wdata_i[23:22];
      end else if (regf_w12_f22_rd_i == 1'b1) begin
        data_w12_f22_r <= 2'h3;
      end
      if (bus_w12_wren_s == 1'b1) begin
        data_w12_f26_r <= mem_wdata_i[27:26];
      end else if (regf_w12_f26_rd_i == 1'b1) begin
        data_w12_f26_r <= ~data_w12_f26_r;
      end
      if (bus_w12_wren_s == 1'b1) begin
        data_w12_f30_r <= mem_wdata_i[31:30];
      end
      if (bus_w13_wren_s == 1'b1) begin
        data_w13_f2_r <= mem_wdata_i[3:2];
      end else if (regf_w13_f2_wr_i == 1'b1) begin
        data_w13_f2_r <= regf_w13_f2_wval_i;
      end
      if (bus_w13_wren_s == 1'b1) begin
        data_w13_f6_r <= mem_wdata_i[7:6];
      end else if (regf_w13_f6_wr_i == 1'b1) begin
        data_w13_f6_r <= data_w13_f6_r & regf_w13_f6_wval_i;
      end
      if (bus_w13_wren_s == 1'b1) begin
        data_w13_f10_r <= mem_wdata_i[11:10];
      end else if (regf_w13_f10_wr_i == 1'b1) begin
        data_w13_f10_r <= data_w13_f10_r | ~regf_w13_f10_wval_i;
      end
      if (bus_w13_wren_s == 1'b1) begin
        data_w13_f14_r <= mem_wdata_i[15:14];
      end else if (regf_w13_f14_wr_i == 1'b1) begin
        data_w13_f14_r <= data_w13_f14_r & ~regf_w13_f14_wval_i;
      end
      if (bus_w13_wren_s == 1'b1) begin
        data_w13_f18_r <= mem_wdata_i[19:18];
      end else if (regf_w13_f18_wr_i == 1'b1) begin
        data_w13_f18_r <= data_w13_f18_r | regf_w13_f18_wval_i;
      end
      if (bus_w13_wren_s == 1'b1) begin
        data_w13_f22_r <= mem_wdata_i[23:22];
      end else if (regf_w13_f22_wr_i == 1'b1) begin
        data_w13_f22_r <= regf_w13_f22_wval_i;
      end
      if (bus_w13_wren_s == 1'b1) begin
        data_w13_f26_r <= mem_wdata_i[27:26];
      end else if (regf_w13_f26_wr_i == 1'b1) begin
        data_w13_f26_r <= regf_w13_f26_wval_i;
      end
      if (bus_w13_wren_s == 1'b1) begin
        data_w13_f30_r <= mem_wdata_i[31:30];
      end else if (regf_w13_f30_wr_i == 1'b1) begin
        data_w13_f30_r <= data_w13_f30_r & regf_w13_f30_wval_i;
      end
      if (bus_w14_wren_s == 1'b1) begin
        data_w14_f2_r <= mem_wdata_i[3:2];
      end else if (regf_w14_f2_wr_i == 1'b1) begin
        data_w14_f2_r <= data_w14_f2_r | ~regf_w14_f2_wval_i;
      end
      if (bus_w14_wren_s == 1'b1) begin
        data_w14_f6_r <= mem_wdata_i[7:6];
      end else if (regf_w14_f6_wr_i == 1'b1) begin
        data_w14_f6_r <= data_w14_f6_r & ~regf_w14_f6_wval_i;
      end
      if (bus_w14_wren_s == 1'b1) begin
        data_w14_f10_r <= mem_wdata_i[11:10];
      end else if (regf_w14_f10_wr_i == 1'b1) begin
        data_w14_f10_r <= data_w14_f10_r | regf_w14_f10_wval_i;
      end
      if (bus_w14_wren_s == 1'b1) begin
        data_w14_f14_r <= mem_wdata_i[15:14];
      end else if (regf_w14_f14_wr_i == 1'b1) begin
        data_w14_f14_r <= regf_w14_f14_wval_i;
      end
      if (bus_w14_wren_s == 1'b1) begin
        data_w14_f18_r <= data_w14_f18_r & mem_wdata_i[19:18];
      end
      if (bus_w14_wren_s == 1'b1) begin
        data_w14_f22_r <= data_w14_f22_r & mem_wdata_i[23:22];
      end else if (regf_w14_f22_rd_i == 1'b1) begin
        data_w14_f22_r <= 2'h0;
      end
      if (bus_w14_wren_s == 1'b1) begin
        data_w14_f26_r <= data_w14_f26_r & mem_wdata_i[27:26];
      end else if (regf_w14_f26_rd_i == 1'b1) begin
        data_w14_f26_r <= 2'h3;
      end
      if (bus_w14_wren_s == 1'b1) begin
        data_w14_f30_r <= data_w14_f30_r & mem_wdata_i[31:30];
      end else if (regf_w14_f30_rd_i == 1'b1) begin
        data_w14_f30_r <= ~data_w14_f30_r;
      end
      if (bus_w15_wren_s == 1'b1) begin
        data_w15_f2_r <= data_w15_f2_r & mem_wdata_i[3:2];
      end
      if (bus_w15_wren_s == 1'b1) begin
        data_w15_f6_r <= data_w15_f6_r & mem_wdata_i[7:6];
      end else if (regf_w15_f6_wr_i == 1'b1) begin
        data_w15_f6_r <= regf_w15_f6_wval_i;
      end
      if (bus_w15_wren_s == 1'b1) begin
        data_w15_f10_r <= data_w15_f10_r & mem_wdata_i[11:10];
      end else if (regf_w15_f10_wr_i == 1'b1) begin
        data_w15_f10_r <= data_w15_f10_r & regf_w15_f10_wval_i;
      end
      if (bus_w15_wren_s == 1'b1) begin
        data_w15_f14_r <= data_w15_f14_r & mem_wdata_i[15:14];
      end else if (regf_w15_f14_wr_i == 1'b1) begin
        data_w15_f14_r <= data_w15_f14_r | ~regf_w15_f14_wval_i;
      end
      if (bus_w15_wren_s == 1'b1) begin
        data_w15_f18_r <= data_w15_f18_r & mem_wdata_i[19:18];
      end else if (regf_w15_f18_wr_i == 1'b1) begin
        data_w15_f18_r <= data_w15_f18_r & ~regf_w15_f18_wval_i;
      end
      if (bus_w15_wren_s == 1'b1) begin
        data_w15_f22_r <= data_w15_f22_r & mem_wdata_i[23:22];
      end else if (regf_w15_f22_wr_i == 1'b1) begin
        data_w15_f22_r <= data_w15_f22_r | regf_w15_f22_wval_i;
      end
      if (bus_w15_wren_s == 1'b1) begin
        data_w15_f26_r <= data_w15_f26_r & mem_wdata_i[27:26];
      end else if (regf_w15_f26_wr_i == 1'b1) begin
        data_w15_f26_r <= regf_w15_f26_wval_i;
      end
      if (bus_w15_wren_s == 1'b1) begin
        data_w15_f30_r <= data_w15_f30_r & mem_wdata_i[31:30];
      end else if (regf_w15_f30_wr_i == 1'b1) begin
        data_w15_f30_r <= regf_w15_f30_wval_i;
      end
      if (bus_w16_wren_s == 1'b1) begin
        data_w16_f2_r <= data_w16_f2_r & mem_wdata_i[3:2];
      end else if (regf_w16_f2_wr_i == 1'b1) begin
        data_w16_f2_r <= data_w16_f2_r & regf_w16_f2_wval_i;
      end
      if (bus_w16_wren_s == 1'b1) begin
        data_w16_f6_r <= data_w16_f6_r & mem_wdata_i[7:6];
      end else if (regf_w16_f6_wr_i == 1'b1) begin
        data_w16_f6_r <= data_w16_f6_r | ~regf_w16_f6_wval_i;
      end
      if (bus_w16_wren_s == 1'b1) begin
        data_w16_f10_r <= data_w16_f10_r & mem_wdata_i[11:10];
      end else if (regf_w16_f10_wr_i == 1'b1) begin
        data_w16_f10_r <= data_w16_f10_r & ~regf_w16_f10_wval_i;
      end
      if (bus_w16_wren_s == 1'b1) begin
        data_w16_f14_r <= data_w16_f14_r & mem_wdata_i[15:14];
      end else if (regf_w16_f14_wr_i == 1'b1) begin
        data_w16_f14_r <= data_w16_f14_r | regf_w16_f14_wval_i;
      end
      if (bus_w16_wren_s == 1'b1) begin
        data_w16_f18_r <= data_w16_f18_r & mem_wdata_i[19:18];
      end else if (regf_w16_f18_wr_i == 1'b1) begin
        data_w16_f18_r <= regf_w16_f18_wval_i;
      end
      if (bus_w16_wren_s == 1'b1) begin
        data_w16_f22_r <= data_w16_f22_r | ~mem_wdata_i[23:22];
      end
      if (bus_w16_wren_s == 1'b1) begin
        data_w16_f26_r <= data_w16_f26_r | ~mem_wdata_i[27:26];
      end else if (regf_w16_f26_rd_i == 1'b1) begin
        data_w16_f26_r <= 2'h0;
      end
      if (bus_w16_wren_s == 1'b1) begin
        data_w16_f30_r <= data_w16_f30_r | ~mem_wdata_i[31:30];
      end else if (regf_w16_f30_rd_i == 1'b1) begin
        data_w16_f30_r <= 2'h3;
      end
      if (bus_w17_wren_s == 1'b1) begin
        data_w17_f2_r <= data_w17_f2_r | ~mem_wdata_i[3:2];
      end else if (regf_w17_f2_rd_i == 1'b1) begin
        data_w17_f2_r <= ~data_w17_f2_r;
      end
      if (bus_w17_wren_s == 1'b1) begin
        data_w17_f6_r <= data_w17_f6_r | ~mem_wdata_i[7:6];
      end
      if (bus_w17_wren_s == 1'b1) begin
        data_w17_f10_r <= data_w17_f10_r | ~mem_wdata_i[11:10];
      end else if (regf_w17_f10_wr_i == 1'b1) begin
        data_w17_f10_r <= regf_w17_f10_wval_i;
      end
      if (bus_w17_wren_s == 1'b1) begin
        data_w17_f14_r <= data_w17_f14_r | ~mem_wdata_i[15:14];
      end else if (regf_w17_f14_wr_i == 1'b1) begin
        data_w17_f14_r <= data_w17_f14_r & regf_w17_f14_wval_i;
      end
      if (bus_w17_wren_s == 1'b1) begin
        data_w17_f18_r <= data_w17_f18_r | ~mem_wdata_i[19:18];
      end else if (regf_w17_f18_wr_i == 1'b1) begin
        data_w17_f18_r <= data_w17_f18_r | ~regf_w17_f18_wval_i;
      end
      if (bus_w17_wren_s == 1'b1) begin
        data_w17_f22_r <= data_w17_f22_r | ~mem_wdata_i[23:22];
      end else if (regf_w17_f22_wr_i == 1'b1) begin
        data_w17_f22_r <= data_w17_f22_r & ~regf_w17_f22_wval_i;
      end
      if (bus_w17_wren_s == 1'b1) begin
        data_w17_f26_r <= data_w17_f26_r | ~mem_wdata_i[27:26];
      end else if (regf_w17_f26_wr_i == 1'b1) begin
        data_w17_f26_r <= data_w17_f26_r | regf_w17_f26_wval_i;
      end
      if (bus_w17_wren_s == 1'b1) begin
        data_w17_f30_r <= data_w17_f30_r | ~mem_wdata_i[31:30];
      end else if (regf_w17_f30_wr_i == 1'b1) begin
        data_w17_f30_r <= regf_w17_f30_wval_i;
      end
      if (bus_w18_wren_s == 1'b1) begin
        data_w18_f2_r <= data_w18_f2_r | ~mem_wdata_i[3:2];
      end else if (regf_w18_f2_wr_i == 1'b1) begin
        data_w18_f2_r <= regf_w18_f2_wval_i;
      end
      if (bus_w18_wren_s == 1'b1) begin
        data_w18_f6_r <= data_w18_f6_r | ~mem_wdata_i[7:6];
      end else if (regf_w18_f6_wr_i == 1'b1) begin
        data_w18_f6_r <= data_w18_f6_r & regf_w18_f6_wval_i;
      end
      if (bus_w18_wren_s == 1'b1) begin
        data_w18_f10_r <= data_w18_f10_r | ~mem_wdata_i[11:10];
      end else if (regf_w18_f10_wr_i == 1'b1) begin
        data_w18_f10_r <= data_w18_f10_r | ~regf_w18_f10_wval_i;
      end
      if (bus_w18_wren_s == 1'b1) begin
        data_w18_f14_r <= data_w18_f14_r | ~mem_wdata_i[15:14];
      end else if (regf_w18_f14_wr_i == 1'b1) begin
        data_w18_f14_r <= data_w18_f14_r & ~regf_w18_f14_wval_i;
      end
      if (bus_w18_wren_s == 1'b1) begin
        data_w18_f18_r <= data_w18_f18_r | ~mem_wdata_i[19:18];
      end else if (regf_w18_f18_wr_i == 1'b1) begin
        data_w18_f18_r <= data_w18_f18_r | regf_w18_f18_wval_i;
      end
      if (bus_w18_wren_s == 1'b1) begin
        data_w18_f22_r <= data_w18_f22_r | ~mem_wdata_i[23:22];
      end else if (regf_w18_f22_wr_i == 1'b1) begin
        data_w18_f22_r <= regf_w18_f22_wval_i;
      end
      if (bus_w18_wren_s == 1'b1) begin
        data_w18_f26_r <= data_w18_f26_r & ~mem_wdata_i[27:26];
      end
      if (bus_w18_wren_s == 1'b1) begin
        data_w18_f30_r <= data_w18_f30_r & ~mem_wdata_i[31:30];
      end else if (regf_w18_f30_rd_i == 1'b1) begin
        data_w18_f30_r <= 2'h0;
      end
      if (bus_w19_wren_s == 1'b1) begin
        data_w19_f2_r <= data_w19_f2_r & ~mem_wdata_i[3:2];
      end else if (regf_w19_f2_rd_i == 1'b1) begin
        data_w19_f2_r <= 2'h3;
      end
      if (bus_w19_wren_s == 1'b1) begin
        data_w19_f6_r <= data_w19_f6_r & ~mem_wdata_i[7:6];
      end else if (regf_w19_f6_rd_i == 1'b1) begin
        data_w19_f6_r <= ~data_w19_f6_r;
      end
      if (bus_w19_wren_s == 1'b1) begin
        data_w19_f10_r <= data_w19_f10_r & ~mem_wdata_i[11:10];
      end
      if (bus_w19_wren_s == 1'b1) begin
        data_w19_f14_r <= data_w19_f14_r & ~mem_wdata_i[15:14];
      end else if (regf_w19_f14_wr_i == 1'b1) begin
        data_w19_f14_r <= regf_w19_f14_wval_i;
      end
      if (bus_w19_wren_s == 1'b1) begin
        data_w19_f18_r <= data_w19_f18_r & ~mem_wdata_i[19:18];
      end else if (regf_w19_f18_wr_i == 1'b1) begin
        data_w19_f18_r <= data_w19_f18_r & regf_w19_f18_wval_i;
      end
      if (bus_w19_wren_s == 1'b1) begin
        data_w19_f22_r <= data_w19_f22_r & ~mem_wdata_i[23:22];
      end else if (regf_w19_f22_wr_i == 1'b1) begin
        data_w19_f22_r <= data_w19_f22_r | ~regf_w19_f22_wval_i;
      end
      if (bus_w19_wren_s == 1'b1) begin
        data_w19_f26_r <= data_w19_f26_r & ~mem_wdata_i[27:26];
      end else if (regf_w19_f26_wr_i == 1'b1) begin
        data_w19_f26_r <= data_w19_f26_r & ~regf_w19_f26_wval_i;
      end
      if (bus_w19_wren_s == 1'b1) begin
        data_w19_f30_r <= data_w19_f30_r & ~mem_wdata_i[31:30];
      end else if (regf_w19_f30_wr_i == 1'b1) begin
        data_w19_f30_r <= data_w19_f30_r | regf_w19_f30_wval_i;
      end
      if (bus_w20_wren_s == 1'b1) begin
        data_w20_f2_r <= data_w20_f2_r & ~mem_wdata_i[3:2];
      end else if (regf_w20_f2_wr_i == 1'b1) begin
        data_w20_f2_r <= regf_w20_f2_wval_i;
      end
      if (bus_w20_wren_s == 1'b1) begin
        data_w20_f6_r <= data_w20_f6_r & ~mem_wdata_i[7:6];
      end else if (regf_w20_f6_wr_i == 1'b1) begin
        data_w20_f6_r <= regf_w20_f6_wval_i;
      end
      if (bus_w20_wren_s == 1'b1) begin
        data_w20_f10_r <= data_w20_f10_r & ~mem_wdata_i[11:10];
      end else if (regf_w20_f10_wr_i == 1'b1) begin
        data_w20_f10_r <= data_w20_f10_r & regf_w20_f10_wval_i;
      end
      if (bus_w20_wren_s == 1'b1) begin
        data_w20_f14_r <= data_w20_f14_r & ~mem_wdata_i[15:14];
      end else if (regf_w20_f14_wr_i == 1'b1) begin
        data_w20_f14_r <= data_w20_f14_r | ~regf_w20_f14_wval_i;
      end
      if (bus_w20_wren_s == 1'b1) begin
        data_w20_f18_r <= data_w20_f18_r & ~mem_wdata_i[19:18];
      end else if (regf_w20_f18_wr_i == 1'b1) begin
        data_w20_f18_r <= data_w20_f18_r & ~regf_w20_f18_wval_i;
      end
      if (bus_w20_wren_s == 1'b1) begin
        data_w20_f22_r <= data_w20_f22_r & ~mem_wdata_i[23:22];
      end else if (regf_w20_f22_wr_i == 1'b1) begin
        data_w20_f22_r <= data_w20_f22_r | regf_w20_f22_wval_i;
      end
      if (bus_w20_wren_s == 1'b1) begin
        data_w20_f26_r <= data_w20_f26_r & ~mem_wdata_i[27:26];
      end else if (regf_w20_f26_wr_i == 1'b1) begin
        data_w20_f26_r <= regf_w20_f26_wval_i;
      end
      if (bus_w20_wren_s == 1'b1) begin
        data_w20_f30_r <= data_w20_f30_r | mem_wdata_i[31:30];
      end
      if (bus_w21_wren_s == 1'b1) begin
        data_w21_f2_r <= data_w21_f2_r | mem_wdata_i[3:2];
      end else if (regf_w21_f2_rd_i == 1'b1) begin
        data_w21_f2_r <= 2'h0;
      end
      if (bus_w21_wren_s == 1'b1) begin
        data_w21_f6_r <= data_w21_f6_r | mem_wdata_i[7:6];
      end else if (regf_w21_f6_rd_i == 1'b1) begin
        data_w21_f6_r <= 2'h3;
      end
      if (bus_w21_wren_s == 1'b1) begin
        data_w21_f10_r <= data_w21_f10_r | mem_wdata_i[11:10];
      end else if (regf_w21_f10_rd_i == 1'b1) begin
        data_w21_f10_r <= ~data_w21_f10_r;
      end
      if (bus_w21_wren_s == 1'b1) begin
        data_w21_f14_r <= data_w21_f14_r | mem_wdata_i[15:14];
      end
      if (bus_w21_wren_s == 1'b1) begin
        data_w21_f18_r <= data_w21_f18_r | mem_wdata_i[19:18];
      end else if (regf_w21_f18_wr_i == 1'b1) begin
        data_w21_f18_r <= regf_w21_f18_wval_i;
      end
      if (bus_w21_wren_s == 1'b1) begin
        data_w21_f22_r <= data_w21_f22_r | mem_wdata_i[23:22];
      end else if (regf_w21_f22_wr_i == 1'b1) begin
        data_w21_f22_r <= data_w21_f22_r & regf_w21_f22_wval_i;
      end
      if (bus_w21_wren_s == 1'b1) begin
        data_w21_f26_r <= data_w21_f26_r | mem_wdata_i[27:26];
      end else if (regf_w21_f26_wr_i == 1'b1) begin
        data_w21_f26_r <= data_w21_f26_r | ~regf_w21_f26_wval_i;
      end
      if (bus_w21_wren_s == 1'b1) begin
        data_w21_f30_r <= data_w21_f30_r | mem_wdata_i[31:30];
      end else if (regf_w21_f30_wr_i == 1'b1) begin
        data_w21_f30_r <= data_w21_f30_r & ~regf_w21_f30_wval_i;
      end
      if (bus_w22_wren_s == 1'b1) begin
        data_w22_f2_r <= data_w22_f2_r | mem_wdata_i[3:2];
      end else if (regf_w22_f2_wr_i == 1'b1) begin
        data_w22_f2_r <= data_w22_f2_r | regf_w22_f2_wval_i;
      end
      if (bus_w22_wren_s == 1'b1) begin
        data_w22_f6_r <= data_w22_f6_r | mem_wdata_i[7:6];
      end else if (regf_w22_f6_wr_i == 1'b1) begin
        data_w22_f6_r <= regf_w22_f6_wval_i;
      end
      if (bus_w22_wren_s == 1'b1) begin
        data_w22_f10_r <= data_w22_f10_r | mem_wdata_i[11:10];
      end else if (regf_w22_f10_wr_i == 1'b1) begin
        data_w22_f10_r <= regf_w22_f10_wval_i;
      end
      if (bus_w22_wren_s == 1'b1) begin
        data_w22_f14_r <= data_w22_f14_r | mem_wdata_i[15:14];
      end else if (regf_w22_f14_wr_i == 1'b1) begin
        data_w22_f14_r <= data_w22_f14_r & regf_w22_f14_wval_i;
      end
      if (bus_w22_wren_s == 1'b1) begin
        data_w22_f18_r <= data_w22_f18_r | mem_wdata_i[19:18];
      end else if (regf_w22_f18_wr_i == 1'b1) begin
        data_w22_f18_r <= data_w22_f18_r | ~regf_w22_f18_wval_i;
      end
      if (bus_w22_wren_s == 1'b1) begin
        data_w22_f22_r <= data_w22_f22_r | mem_wdata_i[23:22];
      end else if (regf_w22_f22_wr_i == 1'b1) begin
        data_w22_f22_r <= data_w22_f22_r & ~regf_w22_f22_wval_i;
      end
      if (bus_w22_wren_s == 1'b1) begin
        data_w22_f26_r <= data_w22_f26_r | mem_wdata_i[27:26];
      end else if (regf_w22_f26_wr_i == 1'b1) begin
        data_w22_f26_r <= data_w22_f26_r | regf_w22_f26_wval_i;
      end
      if (bus_w22_wren_s == 1'b1) begin
        data_w22_f30_r <= data_w22_f30_r | mem_wdata_i[31:30];
      end else if (regf_w22_f30_wr_i == 1'b1) begin
        data_w22_f30_r <= regf_w22_f30_wval_i;
      end
      if ((bus_w23_wren_s == 1'b1) && (bus_w23_wronce_r == 1'b1)) begin
        data_w23_f2_r <= mem_wdata_i[3:2];
      end
      if ((bus_w23_wren_s == 1'b1) && (bus_w23_wronce_r == 1'b1)) begin
        data_w23_f6_r <= mem_wdata_i[7:6];
      end else if (regf_w23_f6_rd_i == 1'b1) begin
        data_w23_f6_r <= 2'h0;
      end
      if ((bus_w23_wren_s == 1'b1) && (bus_w23_wronce_r == 1'b1)) begin
        data_w23_f10_r <= mem_wdata_i[11:10];
      end else if (regf_w23_f10_rd_i == 1'b1) begin
        data_w23_f10_r <= 2'h3;
      end
      if ((bus_w23_wren_s == 1'b1) && (bus_w23_wronce_r == 1'b1)) begin
        data_w23_f14_r <= mem_wdata_i[15:14];
      end else if (regf_w23_f14_rd_i == 1'b1) begin
        data_w23_f14_r <= ~data_w23_f14_r;
      end
      if ((bus_w23_wren_s == 1'b1) && (bus_w23_wronce_r == 1'b1)) begin
        data_w23_f18_r <= mem_wdata_i[19:18];
      end
      if ((bus_w23_wren_s == 1'b1) && (bus_w23_wronce_r == 1'b1)) begin
        data_w23_f22_r <= mem_wdata_i[23:22];
      end else if (regf_w23_f22_wr_i == 1'b1) begin
        data_w23_f22_r <= regf_w23_f22_wval_i;
      end
      if ((bus_w23_wren_s == 1'b1) && (bus_w23_wronce_r == 1'b1)) begin
        data_w23_f26_r <= mem_wdata_i[27:26];
      end else if (regf_w23_f26_wr_i == 1'b1) begin
        data_w23_f26_r <= data_w23_f26_r & regf_w23_f26_wval_i;
      end
      if ((bus_w23_wren_s == 1'b1) && (bus_w23_wronce_r == 1'b1)) begin
        data_w23_f30_r <= mem_wdata_i[31:30];
      end else if (regf_w23_f30_wr_i == 1'b1) begin
        data_w23_f30_r <= data_w23_f30_r | ~regf_w23_f30_wval_i;
      end
      if ((bus_w24_wren_s == 1'b1) && (bus_w24_wronce_r == 1'b1)) begin
        data_w24_f2_r <= mem_wdata_i[3:2];
      end else if (regf_w24_f2_wr_i == 1'b1) begin
        data_w24_f2_r <= data_w24_f2_r & ~regf_w24_f2_wval_i;
      end
      if ((bus_w24_wren_s == 1'b1) && (bus_w24_wronce_r == 1'b1)) begin
        data_w24_f6_r <= mem_wdata_i[7:6];
      end else if (regf_w24_f6_wr_i == 1'b1) begin
        data_w24_f6_r <= data_w24_f6_r | regf_w24_f6_wval_i;
      end
      if ((bus_w24_wren_s == 1'b1) && (bus_w24_wronce_r == 1'b1)) begin
        data_w24_f10_r <= mem_wdata_i[11:10];
      end else if (regf_w24_f10_wr_i == 1'b1) begin
        data_w24_f10_r <= regf_w24_f10_wval_i;
      end
      if ((bus_w24_wren_s == 1'b1) && (bus_w24_wronce_r == 1'b1)) begin
        data_w24_f14_r <= mem_wdata_i[15:14];
      end else if (regf_w24_f14_wr_i == 1'b1) begin
        data_w24_f14_r <= regf_w24_f14_wval_i;
      end
      if ((bus_w24_wren_s == 1'b1) && (bus_w24_wronce_r == 1'b1)) begin
        data_w24_f18_r <= mem_wdata_i[19:18];
      end else if (regf_w24_f18_wr_i == 1'b1) begin
        data_w24_f18_r <= data_w24_f18_r & regf_w24_f18_wval_i;
      end
      if ((bus_w24_wren_s == 1'b1) && (bus_w24_wronce_r == 1'b1)) begin
        data_w24_f22_r <= mem_wdata_i[23:22];
      end else if (regf_w24_f22_wr_i == 1'b1) begin
        data_w24_f22_r <= data_w24_f22_r | ~regf_w24_f22_wval_i;
      end
      if ((bus_w24_wren_s == 1'b1) && (bus_w24_wronce_r == 1'b1)) begin
        data_w24_f26_r <= mem_wdata_i[27:26];
      end else if (regf_w24_f26_wr_i == 1'b1) begin
        data_w24_f26_r <= data_w24_f26_r & ~regf_w24_f26_wval_i;
      end
      if ((bus_w24_wren_s == 1'b1) && (bus_w24_wronce_r == 1'b1)) begin
        data_w24_f30_r <= mem_wdata_i[31:30];
      end else if (regf_w24_f30_wr_i == 1'b1) begin
        data_w24_f30_r <= data_w24_f30_r | regf_w24_f30_wval_i;
      end
      if ((bus_w25_wren_s == 1'b1) && (bus_w25_wronce_r == 1'b1)) begin
        data_w25_f2_r <= mem_wdata_i[3:2];
      end else if (regf_w25_f2_wr_i == 1'b1) begin
        data_w25_f2_r <= regf_w25_f2_wval_i;
      end
      if (bus_w25_wren_s == 1'b1) begin
        data_w25_f6_r <= mem_wdata_i[7:6];
      end
      if (bus_w25_wren_s == 1'b1) begin
        data_w25_f10_r <= mem_wdata_i[11:10];
      end else if (regf_w25_f10_rd_i == 1'b1) begin
        data_w25_f10_r <= 2'h0;
      end
      if (bus_w25_wren_s == 1'b1) begin
        data_w25_f14_r <= mem_wdata_i[15:14];
      end else if (regf_w25_f14_rd_i == 1'b1) begin
        data_w25_f14_r <= 2'h3;
      end
      if (bus_w25_wren_s == 1'b1) begin
        data_w25_f18_r <= mem_wdata_i[19:18];
      end else if (regf_w25_f18_rd_i == 1'b1) begin
        data_w25_f18_r <= ~data_w25_f18_r;
      end
      if (bus_w25_wren_s == 1'b1) begin
        data_w25_f22_r <= mem_wdata_i[23:22];
      end
      if (bus_w25_wren_s == 1'b1) begin
        data_w25_f26_r <= mem_wdata_i[27:26];
      end else if (regf_w25_f26_wr_i == 1'b1) begin
        data_w25_f26_r <= regf_w25_f26_wval_i;
      end
      if (bus_w25_wren_s == 1'b1) begin
        data_w25_f30_r <= mem_wdata_i[31:30];
      end else if (regf_w25_f30_wr_i == 1'b1) begin
        data_w25_f30_r <= data_w25_f30_r & regf_w25_f30_wval_i;
      end
      if (bus_w26_wren_s == 1'b1) begin
        data_w26_f2_r <= mem_wdata_i[3:2];
      end else if (regf_w26_f2_wr_i == 1'b1) begin
        data_w26_f2_r <= data_w26_f2_r | ~regf_w26_f2_wval_i;
      end
      if (bus_w26_wren_s == 1'b1) begin
        data_w26_f6_r <= mem_wdata_i[7:6];
      end else if (regf_w26_f6_wr_i == 1'b1) begin
        data_w26_f6_r <= data_w26_f6_r & ~regf_w26_f6_wval_i;
      end
      if (bus_w26_wren_s == 1'b1) begin
        data_w26_f10_r <= mem_wdata_i[11:10];
      end else if (regf_w26_f10_wr_i == 1'b1) begin
        data_w26_f10_r <= data_w26_f10_r | regf_w26_f10_wval_i;
      end
      if (bus_w26_wren_s == 1'b1) begin
        data_w26_f14_r <= mem_wdata_i[15:14];
      end else if (regf_w26_f14_wr_i == 1'b1) begin
        data_w26_f14_r <= regf_w26_f14_wval_i;
      end
      if (bus_w26_wren_s == 1'b1) begin
        data_w26_f18_r <= mem_wdata_i[19:18];
      end else if (regf_w26_f18_wr_i == 1'b1) begin
        data_w26_f18_r <= regf_w26_f18_wval_i;
      end
      if (bus_w26_wren_s == 1'b1) begin
        data_w26_f22_r <= mem_wdata_i[23:22];
      end else if (regf_w26_f22_wr_i == 1'b1) begin
        data_w26_f22_r <= data_w26_f22_r & regf_w26_f22_wval_i;
      end
      if (bus_w26_wren_s == 1'b1) begin
        data_w26_f26_r <= mem_wdata_i[27:26];
      end else if (regf_w26_f26_wr_i == 1'b1) begin
        data_w26_f26_r <= data_w26_f26_r | ~regf_w26_f26_wval_i;
      end
      if (bus_w26_wren_s == 1'b1) begin
        data_w26_f30_r <= mem_wdata_i[31:30];
      end else if (regf_w26_f30_wr_i == 1'b1) begin
        data_w26_f30_r <= data_w26_f30_r & ~regf_w26_f30_wval_i;
      end
      if (bus_w27_wren_s == 1'b1) begin
        data_w27_f2_r <= mem_wdata_i[3:2];
      end else if (regf_w27_f2_wr_i == 1'b1) begin
        data_w27_f2_r <= data_w27_f2_r | regf_w27_f2_wval_i;
      end
      if (bus_w27_wren_s == 1'b1) begin
        data_w27_f6_r <= mem_wdata_i[7:6];
      end else if (regf_w27_f6_wr_i == 1'b1) begin
        data_w27_f6_r <= regf_w27_f6_wval_i;
      end
      if (bus_w27_wren_s == 1'b1) begin
        data_w27_f10_r <= data_w27_f10_r & mem_wdata_i[11:10];
      end
      if (bus_w27_wren_s == 1'b1) begin
        data_w27_f14_r <= data_w27_f14_r & mem_wdata_i[15:14];
      end else if (regf_w27_f14_rd_i == 1'b1) begin
        data_w27_f14_r <= 2'h0;
      end
      if (bus_w27_wren_s == 1'b1) begin
        data_w27_f18_r <= data_w27_f18_r & mem_wdata_i[19:18];
      end else if (regf_w27_f18_rd_i == 1'b1) begin
        data_w27_f18_r <= 2'h3;
      end
      if (bus_w27_wren_s == 1'b1) begin
        data_w27_f22_r <= data_w27_f22_r & mem_wdata_i[23:22];
      end else if (regf_w27_f22_rd_i == 1'b1) begin
        data_w27_f22_r <= ~data_w27_f22_r;
      end
      if (bus_w27_wren_s == 1'b1) begin
        data_w27_f26_r <= data_w27_f26_r & mem_wdata_i[27:26];
      end
      if (bus_w27_wren_s == 1'b1) begin
        data_w27_f30_r <= data_w27_f30_r & mem_wdata_i[31:30];
      end else if (regf_w27_f30_wr_i == 1'b1) begin
        data_w27_f30_r <= regf_w27_f30_wval_i;
      end
      if (bus_w28_wren_s == 1'b1) begin
        data_w28_f2_r <= data_w28_f2_r & mem_wdata_i[3:2];
      end else if (regf_w28_f2_wr_i == 1'b1) begin
        data_w28_f2_r <= data_w28_f2_r & regf_w28_f2_wval_i;
      end
      if (bus_w28_wren_s == 1'b1) begin
        data_w28_f6_r <= data_w28_f6_r & mem_wdata_i[7:6];
      end else if (regf_w28_f6_wr_i == 1'b1) begin
        data_w28_f6_r <= data_w28_f6_r | ~regf_w28_f6_wval_i;
      end
      if (bus_w28_wren_s == 1'b1) begin
        data_w28_f10_r <= data_w28_f10_r & mem_wdata_i[11:10];
      end else if (regf_w28_f10_wr_i == 1'b1) begin
        data_w28_f10_r <= data_w28_f10_r & ~regf_w28_f10_wval_i;
      end
      if (bus_w28_wren_s == 1'b1) begin
        data_w28_f14_r <= data_w28_f14_r & mem_wdata_i[15:14];
      end else if (regf_w28_f14_wr_i == 1'b1) begin
        data_w28_f14_r <= data_w28_f14_r | regf_w28_f14_wval_i;
      end
      if (bus_w28_wren_s == 1'b1) begin
        data_w28_f18_r <= data_w28_f18_r & mem_wdata_i[19:18];
      end else if (regf_w28_f18_wr_i == 1'b1) begin
        data_w28_f18_r <= regf_w28_f18_wval_i;
      end
      if (bus_w28_wren_s == 1'b1) begin
        data_w28_f22_r <= data_w28_f22_r & mem_wdata_i[23:22];
      end else if (regf_w28_f22_wr_i == 1'b1) begin
        data_w28_f22_r <= regf_w28_f22_wval_i;
      end
      if (bus_w28_wren_s == 1'b1) begin
        data_w28_f26_r <= data_w28_f26_r & mem_wdata_i[27:26];
      end else if (regf_w28_f26_wr_i == 1'b1) begin
        data_w28_f26_r <= data_w28_f26_r & regf_w28_f26_wval_i;
      end
      if (bus_w28_wren_s == 1'b1) begin
        data_w28_f30_r <= data_w28_f30_r & mem_wdata_i[31:30];
      end else if (regf_w28_f30_wr_i == 1'b1) begin
        data_w28_f30_r <= data_w28_f30_r | ~regf_w28_f30_wval_i;
      end
      if (bus_w29_wren_s == 1'b1) begin
        data_w29_f2_r <= data_w29_f2_r & mem_wdata_i[3:2];
      end else if (regf_w29_f2_wr_i == 1'b1) begin
        data_w29_f2_r <= data_w29_f2_r & ~regf_w29_f2_wval_i;
      end
      if (bus_w29_wren_s == 1'b1) begin
        data_w29_f6_r <= data_w29_f6_r & mem_wdata_i[7:6];
      end else if (regf_w29_f6_wr_i == 1'b1) begin
        data_w29_f6_r <= data_w29_f6_r | regf_w29_f6_wval_i;
      end
      if (bus_w29_wren_s == 1'b1) begin
        data_w29_f10_r <= data_w29_f10_r & mem_wdata_i[11:10];
      end else if (regf_w29_f10_wr_i == 1'b1) begin
        data_w29_f10_r <= regf_w29_f10_wval_i;
      end
      if (bus_w29_wren_s == 1'b1) begin
        data_w29_f14_r <= data_w29_f14_r | ~mem_wdata_i[15:14];
      end
      if (bus_w29_wren_s == 1'b1) begin
        data_w29_f18_r <= data_w29_f18_r | ~mem_wdata_i[19:18];
      end else if (regf_w29_f18_rd_i == 1'b1) begin
        data_w29_f18_r <= 2'h0;
      end
      if (bus_w29_wren_s == 1'b1) begin
        data_w29_f22_r <= data_w29_f22_r | ~mem_wdata_i[23:22];
      end else if (regf_w29_f22_rd_i == 1'b1) begin
        data_w29_f22_r <= 2'h3;
      end
      if (bus_w29_wren_s == 1'b1) begin
        data_w29_f26_r <= data_w29_f26_r | ~mem_wdata_i[27:26];
      end else if (regf_w29_f26_rd_i == 1'b1) begin
        data_w29_f26_r <= ~data_w29_f26_r;
      end
      if (bus_w29_wren_s == 1'b1) begin
        data_w29_f30_r <= data_w29_f30_r | ~mem_wdata_i[31:30];
      end
      if (bus_w30_wren_s == 1'b1) begin
        data_w30_f2_r <= data_w30_f2_r | ~mem_wdata_i[3:2];
      end else if (regf_w30_f2_wr_i == 1'b1) begin
        data_w30_f2_r <= regf_w30_f2_wval_i;
      end
      if (bus_w30_wren_s == 1'b1) begin
        data_w30_f6_r <= data_w30_f6_r | ~mem_wdata_i[7:6];
      end else if (regf_w30_f6_wr_i == 1'b1) begin
        data_w30_f6_r <= data_w30_f6_r & regf_w30_f6_wval_i;
      end
      if (bus_w30_wren_s == 1'b1) begin
        data_w30_f10_r <= data_w30_f10_r | ~mem_wdata_i[11:10];
      end else if (regf_w30_f10_wr_i == 1'b1) begin
        data_w30_f10_r <= data_w30_f10_r | ~regf_w30_f10_wval_i;
      end
      if (bus_w30_wren_s == 1'b1) begin
        data_w30_f14_r <= data_w30_f14_r | ~mem_wdata_i[15:14];
      end else if (regf_w30_f14_wr_i == 1'b1) begin
        data_w30_f14_r <= data_w30_f14_r & ~regf_w30_f14_wval_i;
      end
      if (bus_w30_wren_s == 1'b1) begin
        data_w30_f18_r <= data_w30_f18_r | ~mem_wdata_i[19:18];
      end else if (regf_w30_f18_wr_i == 1'b1) begin
        data_w30_f18_r <= data_w30_f18_r | regf_w30_f18_wval_i;
      end
      if (bus_w30_wren_s == 1'b1) begin
        data_w30_f22_r <= data_w30_f22_r | ~mem_wdata_i[23:22];
      end else if (regf_w30_f22_wr_i == 1'b1) begin
        data_w30_f22_r <= regf_w30_f22_wval_i;
      end
      if (bus_w30_wren_s == 1'b1) begin
        data_w30_f26_r <= data_w30_f26_r | ~mem_wdata_i[27:26];
      end else if (regf_w30_f26_wr_i == 1'b1) begin
        data_w30_f26_r <= regf_w30_f26_wval_i;
      end
      if (bus_w30_wren_s == 1'b1) begin
        data_w30_f30_r <= data_w30_f30_r | ~mem_wdata_i[31:30];
      end else if (regf_w30_f30_wr_i == 1'b1) begin
        data_w30_f30_r <= data_w30_f30_r & regf_w30_f30_wval_i;
      end
      if (bus_w31_wren_s == 1'b1) begin
        data_w31_f2_r <= data_w31_f2_r | ~mem_wdata_i[3:2];
      end else if (regf_w31_f2_wr_i == 1'b1) begin
        data_w31_f2_r <= data_w31_f2_r | ~regf_w31_f2_wval_i;
      end
      if (bus_w31_wren_s == 1'b1) begin
        data_w31_f6_r <= data_w31_f6_r | ~mem_wdata_i[7:6];
      end else if (regf_w31_f6_wr_i == 1'b1) begin
        data_w31_f6_r <= data_w31_f6_r & ~regf_w31_f6_wval_i;
      end
      if (bus_w31_wren_s == 1'b1) begin
        data_w31_f10_r <= data_w31_f10_r | ~mem_wdata_i[11:10];
      end else if (regf_w31_f10_wr_i == 1'b1) begin
        data_w31_f10_r <= data_w31_f10_r | regf_w31_f10_wval_i;
      end
      if (bus_w31_wren_s == 1'b1) begin
        data_w31_f14_r <= data_w31_f14_r | ~mem_wdata_i[15:14];
      end else if (regf_w31_f14_wr_i == 1'b1) begin
        data_w31_f14_r <= regf_w31_f14_wval_i;
      end
      if (bus_w31_wren_s == 1'b1) begin
        data_w31_f18_r <= data_w31_f18_r & ~mem_wdata_i[19:18];
      end
      if (bus_w31_wren_s == 1'b1) begin
        data_w31_f22_r <= data_w31_f22_r & ~mem_wdata_i[23:22];
      end else if (regf_w31_f22_rd_i == 1'b1) begin
        data_w31_f22_r <= 2'h0;
      end
      if (bus_w31_wren_s == 1'b1) begin
        data_w31_f26_r <= data_w31_f26_r & ~mem_wdata_i[27:26];
      end else if (regf_w31_f26_rd_i == 1'b1) begin
        data_w31_f26_r <= 2'h3;
      end
      if (bus_w31_wren_s == 1'b1) begin
        data_w31_f30_r <= data_w31_f30_r & ~mem_wdata_i[31:30];
      end else if (regf_w31_f30_rd_i == 1'b1) begin
        data_w31_f30_r <= ~data_w31_f30_r;
      end
      if (bus_w32_wren_s == 1'b1) begin
        data_w32_f2_r <= data_w32_f2_r & ~mem_wdata_i[3:2];
      end
      if (bus_w32_wren_s == 1'b1) begin
        data_w32_f6_r <= data_w32_f6_r & ~mem_wdata_i[7:6];
      end else if (regf_w32_f6_wr_i == 1'b1) begin
        data_w32_f6_r <= regf_w32_f6_wval_i;
      end
      if (bus_w32_wren_s == 1'b1) begin
        data_w32_f10_r <= data_w32_f10_r & ~mem_wdata_i[11:10];
      end else if (regf_w32_f10_wr_i == 1'b1) begin
        data_w32_f10_r <= data_w32_f10_r & regf_w32_f10_wval_i;
      end
      if (bus_w32_wren_s == 1'b1) begin
        data_w32_f14_r <= data_w32_f14_r & ~mem_wdata_i[15:14];
      end else if (regf_w32_f14_wr_i == 1'b1) begin
        data_w32_f14_r <= data_w32_f14_r | ~regf_w32_f14_wval_i;
      end
      if (bus_w32_wren_s == 1'b1) begin
        data_w32_f18_r <= data_w32_f18_r & ~mem_wdata_i[19:18];
      end else if (regf_w32_f18_wr_i == 1'b1) begin
        data_w32_f18_r <= data_w32_f18_r & ~regf_w32_f18_wval_i;
      end
      if (bus_w32_wren_s == 1'b1) begin
        data_w32_f22_r <= data_w32_f22_r & ~mem_wdata_i[23:22];
      end else if (regf_w32_f22_wr_i == 1'b1) begin
        data_w32_f22_r <= data_w32_f22_r | regf_w32_f22_wval_i;
      end
      if (bus_w32_wren_s == 1'b1) begin
        data_w32_f26_r <= data_w32_f26_r & ~mem_wdata_i[27:26];
      end else if (regf_w32_f26_wr_i == 1'b1) begin
        data_w32_f26_r <= regf_w32_f26_wval_i;
      end
      if (bus_w32_wren_s == 1'b1) begin
        data_w32_f30_r <= data_w32_f30_r & ~mem_wdata_i[31:30];
      end else if (regf_w32_f30_wr_i == 1'b1) begin
        data_w32_f30_r <= regf_w32_f30_wval_i;
      end
      if (bus_w33_wren_s == 1'b1) begin
        data_w33_f2_r <= data_w33_f2_r & ~mem_wdata_i[3:2];
      end else if (regf_w33_f2_wr_i == 1'b1) begin
        data_w33_f2_r <= data_w33_f2_r & regf_w33_f2_wval_i;
      end
      if (bus_w33_wren_s == 1'b1) begin
        data_w33_f6_r <= data_w33_f6_r & ~mem_wdata_i[7:6];
      end else if (regf_w33_f6_wr_i == 1'b1) begin
        data_w33_f6_r <= data_w33_f6_r | ~regf_w33_f6_wval_i;
      end
      if (bus_w33_wren_s == 1'b1) begin
        data_w33_f10_r <= data_w33_f10_r & ~mem_wdata_i[11:10];
      end else if (regf_w33_f10_wr_i == 1'b1) begin
        data_w33_f10_r <= data_w33_f10_r & ~regf_w33_f10_wval_i;
      end
      if (bus_w33_wren_s == 1'b1) begin
        data_w33_f14_r <= data_w33_f14_r & ~mem_wdata_i[15:14];
      end else if (regf_w33_f14_wr_i == 1'b1) begin
        data_w33_f14_r <= data_w33_f14_r | regf_w33_f14_wval_i;
      end
      if (bus_w33_wren_s == 1'b1) begin
        data_w33_f18_r <= data_w33_f18_r & ~mem_wdata_i[19:18];
      end else if (regf_w33_f18_wr_i == 1'b1) begin
        data_w33_f18_r <= regf_w33_f18_wval_i;
      end
      if (bus_w33_wren_s == 1'b1) begin
        data_w33_f22_r <= data_w33_f22_r | mem_wdata_i[23:22];
      end
      if (bus_w33_wren_s == 1'b1) begin
        data_w33_f26_r <= data_w33_f26_r | mem_wdata_i[27:26];
      end else if (regf_w33_f26_rd_i == 1'b1) begin
        data_w33_f26_r <= 2'h0;
      end
      if (bus_w33_wren_s == 1'b1) begin
        data_w33_f30_r <= data_w33_f30_r | mem_wdata_i[31:30];
      end else if (regf_w33_f30_rd_i == 1'b1) begin
        data_w33_f30_r <= 2'h3;
      end
      if (bus_w34_wren_s == 1'b1) begin
        data_w34_f2_r <= data_w34_f2_r | mem_wdata_i[3:2];
      end else if (regf_w34_f2_rd_i == 1'b1) begin
        data_w34_f2_r <= ~data_w34_f2_r;
      end
      if (bus_w34_wren_s == 1'b1) begin
        data_w34_f6_r <= data_w34_f6_r | mem_wdata_i[7:6];
      end
      if (bus_w34_wren_s == 1'b1) begin
        data_w34_f10_r <= data_w34_f10_r | mem_wdata_i[11:10];
      end else if (regf_w34_f10_wr_i == 1'b1) begin
        data_w34_f10_r <= regf_w34_f10_wval_i;
      end
      if (bus_w34_wren_s == 1'b1) begin
        data_w34_f14_r <= data_w34_f14_r | mem_wdata_i[15:14];
      end else if (regf_w34_f14_wr_i == 1'b1) begin
        data_w34_f14_r <= data_w34_f14_r & regf_w34_f14_wval_i;
      end
      if (bus_w34_wren_s == 1'b1) begin
        data_w34_f18_r <= data_w34_f18_r | mem_wdata_i[19:18];
      end else if (regf_w34_f18_wr_i == 1'b1) begin
        data_w34_f18_r <= data_w34_f18_r | ~regf_w34_f18_wval_i;
      end
      if (bus_w34_wren_s == 1'b1) begin
        data_w34_f22_r <= data_w34_f22_r | mem_wdata_i[23:22];
      end else if (regf_w34_f22_wr_i == 1'b1) begin
        data_w34_f22_r <= data_w34_f22_r & ~regf_w34_f22_wval_i;
      end
      if (bus_w34_wren_s == 1'b1) begin
        data_w34_f26_r <= data_w34_f26_r | mem_wdata_i[27:26];
      end else if (regf_w34_f26_wr_i == 1'b1) begin
        data_w34_f26_r <= data_w34_f26_r | regf_w34_f26_wval_i;
      end
      if (bus_w34_wren_s == 1'b1) begin
        data_w34_f30_r <= data_w34_f30_r | mem_wdata_i[31:30];
      end else if (regf_w34_f30_wr_i == 1'b1) begin
        data_w34_f30_r <= regf_w34_f30_wval_i;
      end
      if (bus_w35_wren_s == 1'b1) begin
        data_w35_f2_r <= data_w35_f2_r | mem_wdata_i[3:2];
      end else if (regf_w35_f2_wr_i == 1'b1) begin
        data_w35_f2_r <= regf_w35_f2_wval_i;
      end
      if (bus_w35_wren_s == 1'b1) begin
        data_w35_f6_r <= data_w35_f6_r | mem_wdata_i[7:6];
      end else if (regf_w35_f6_wr_i == 1'b1) begin
        data_w35_f6_r <= data_w35_f6_r & regf_w35_f6_wval_i;
      end
      if (bus_w35_wren_s == 1'b1) begin
        data_w35_f10_r <= data_w35_f10_r | mem_wdata_i[11:10];
      end else if (regf_w35_f10_wr_i == 1'b1) begin
        data_w35_f10_r <= data_w35_f10_r | ~regf_w35_f10_wval_i;
      end
      if (bus_w35_wren_s == 1'b1) begin
        data_w35_f14_r <= data_w35_f14_r | mem_wdata_i[15:14];
      end else if (regf_w35_f14_wr_i == 1'b1) begin
        data_w35_f14_r <= data_w35_f14_r & ~regf_w35_f14_wval_i;
      end
      if (bus_w35_wren_s == 1'b1) begin
        data_w35_f18_r <= data_w35_f18_r | mem_wdata_i[19:18];
      end else if (regf_w35_f18_wr_i == 1'b1) begin
        data_w35_f18_r <= data_w35_f18_r | regf_w35_f18_wval_i;
      end
      if (bus_w35_wren_s == 1'b1) begin
        data_w35_f22_r <= data_w35_f22_r | mem_wdata_i[23:22];
      end else if (regf_w35_f22_wr_i == 1'b1) begin
        data_w35_f22_r <= regf_w35_f22_wval_i;
      end
      if ((bus_w35_wren_s == 1'b1) && (bus_w35_wronce_r == 1'b1)) begin
        data_w35_f26_r <= mem_wdata_i[27:26];
      end
      if ((bus_w35_wren_s == 1'b1) && (bus_w35_wronce_r == 1'b1)) begin
        data_w35_f30_r <= mem_wdata_i[31:30];
      end else if (regf_w35_f30_rd_i == 1'b1) begin
        data_w35_f30_r <= 2'h0;
      end
      if ((bus_w36_wren_s == 1'b1) && (bus_w36_wronce_r == 1'b1)) begin
        data_w36_f2_r <= mem_wdata_i[3:2];
      end else if (regf_w36_f2_rd_i == 1'b1) begin
        data_w36_f2_r <= 2'h3;
      end
      if ((bus_w36_wren_s == 1'b1) && (bus_w36_wronce_r == 1'b1)) begin
        data_w36_f6_r <= mem_wdata_i[7:6];
      end else if (regf_w36_f6_rd_i == 1'b1) begin
        data_w36_f6_r <= ~data_w36_f6_r;
      end
      if ((bus_w36_wren_s == 1'b1) && (bus_w36_wronce_r == 1'b1)) begin
        data_w36_f10_r <= mem_wdata_i[11:10];
      end
      if ((bus_w36_wren_s == 1'b1) && (bus_w36_wronce_r == 1'b1)) begin
        data_w36_f14_r <= mem_wdata_i[15:14];
      end else if (regf_w36_f14_wr_i == 1'b1) begin
        data_w36_f14_r <= regf_w36_f14_wval_i;
      end
      if ((bus_w36_wren_s == 1'b1) && (bus_w36_wronce_r == 1'b1)) begin
        data_w36_f18_r <= mem_wdata_i[19:18];
      end else if (regf_w36_f18_wr_i == 1'b1) begin
        data_w36_f18_r <= data_w36_f18_r & regf_w36_f18_wval_i;
      end
      if ((bus_w36_wren_s == 1'b1) && (bus_w36_wronce_r == 1'b1)) begin
        data_w36_f22_r <= mem_wdata_i[23:22];
      end else if (regf_w36_f22_wr_i == 1'b1) begin
        data_w36_f22_r <= data_w36_f22_r | ~regf_w36_f22_wval_i;
      end
      if ((bus_w36_wren_s == 1'b1) && (bus_w36_wronce_r == 1'b1)) begin
        data_w36_f26_r <= mem_wdata_i[27:26];
      end else if (regf_w36_f26_wr_i == 1'b1) begin
        data_w36_f26_r <= data_w36_f26_r & ~regf_w36_f26_wval_i;
      end
      if ((bus_w36_wren_s == 1'b1) && (bus_w36_wronce_r == 1'b1)) begin
        data_w36_f30_r <= mem_wdata_i[31:30];
      end else if (regf_w36_f30_wr_i == 1'b1) begin
        data_w36_f30_r <= data_w36_f30_r | regf_w36_f30_wval_i;
      end
      if ((bus_w37_wren_s == 1'b1) && (bus_w37_wronce_r == 1'b1)) begin
        data_w37_f2_r <= mem_wdata_i[3:2];
      end else if (regf_w37_f2_wr_i == 1'b1) begin
        data_w37_f2_r <= regf_w37_f2_wval_i;
      end
      if ((bus_w37_wren_s == 1'b1) && (bus_w37_wronce_r == 1'b1)) begin
        data_w37_f6_r <= mem_wdata_i[7:6];
      end else if (regf_w37_f6_wr_i == 1'b1) begin
        data_w37_f6_r <= regf_w37_f6_wval_i;
      end
      if ((bus_w37_wren_s == 1'b1) && (bus_w37_wronce_r == 1'b1)) begin
        data_w37_f10_r <= mem_wdata_i[11:10];
      end else if (regf_w37_f10_wr_i == 1'b1) begin
        data_w37_f10_r <= data_w37_f10_r & regf_w37_f10_wval_i;
      end
      if ((bus_w37_wren_s == 1'b1) && (bus_w37_wronce_r == 1'b1)) begin
        data_w37_f14_r <= mem_wdata_i[15:14];
      end else if (regf_w37_f14_wr_i == 1'b1) begin
        data_w37_f14_r <= data_w37_f14_r | ~regf_w37_f14_wval_i;
      end
      if ((bus_w37_wren_s == 1'b1) && (bus_w37_wronce_r == 1'b1)) begin
        data_w37_f18_r <= mem_wdata_i[19:18];
      end else if (regf_w37_f18_wr_i == 1'b1) begin
        data_w37_f18_r <= data_w37_f18_r & ~regf_w37_f18_wval_i;
      end
      if ((bus_w37_wren_s == 1'b1) && (bus_w37_wronce_r == 1'b1)) begin
        data_w37_f22_r <= mem_wdata_i[23:22];
      end else if (regf_w37_f22_wr_i == 1'b1) begin
        data_w37_f22_r <= data_w37_f22_r | regf_w37_f22_wval_i;
      end
      if ((bus_w37_wren_s == 1'b1) && (bus_w37_wronce_r == 1'b1)) begin
        data_w37_f26_r <= mem_wdata_i[27:26];
      end else if (regf_w37_f26_wr_i == 1'b1) begin
        data_w37_f26_r <= regf_w37_f26_wval_i;
      end
      if (bus_w23_wren_s == 1'b1) begin
        bus_w23_wronce_r <= 1'b0;
      end
      if (bus_w24_wren_s == 1'b1) begin
        bus_w24_wronce_r <= 1'b0;
      end
      if (bus_w25_wren_s == 1'b1) begin
        bus_w25_wronce_r <= 1'b0;
      end
      if (bus_w35_wren_s == 1'b1) begin
        bus_w35_wronce_r <= 1'b0;
      end
      if (bus_w36_wren_s == 1'b1) begin
        bus_w36_wronce_r <= 1'b0;
      end
      if (bus_w37_wren_s == 1'b1) begin
        bus_w37_wronce_r <= 1'b0;
      end
    end
  end

  // ------------------------------------------------------
  //  Bus Read-Mux
  // ------------------------------------------------------
  always_comb begin: proc_bus_rd
    if ((mem_ena_i == 1'b1) && (mem_wena_i == 1'b0)) begin
      case (mem_addr_i)
        13'h0008: begin
          mem_rdata_o = {data_w2_f30_r, regf_w2_f28_rbus_i, data_w2_f26_r, regf_w2_f24_rbus_i, data_w2_f22_r, regf_w2_f20_rbus_i, data_w2_f18_r, regf_w2_f16_rbus_i, data_w2_f14_c, data_w2_f12_r, regf_w2_f10_rbus_i, data_w2_f8_r, regf_w2_f6_rbus_i, data_w2_f4_r, regf_w2_f2_rbus_i, data_w2_f0_c};
        end
        13'h000C: begin
          mem_rdata_o = {data_w3_f30_r, regf_w3_f28_rbus_i, data_w3_f26_r, regf_w3_f24_rbus_i, data_w3_f22_r, regf_w3_f20_rbus_i, data_w3_f18_r, regf_w3_f16_rbus_i, data_w3_f14_r, regf_w3_f12_rbus_i, data_w3_f10_r, regf_w3_f8_rbus_i, data_w3_f6_r, regf_w3_f4_rbus_i, data_w3_f2_r, regf_w3_f0_rbus_i};
        end
        13'h0010: begin
          mem_rdata_o = {data_w4_f30_r, regf_w4_f28_rbus_i, data_w4_f26_r, regf_w4_f24_rbus_i, data_w4_f22_r, regf_w4_f20_rbus_i, data_w4_f18_r, regf_w4_f16_rbus_i, data_w4_f14_r, regf_w4_f12_rbus_i, data_w4_f10_r, regf_w4_f8_rbus_i, data_w4_f6_r, regf_w4_f4_rbus_i, data_w4_f2_r, regf_w4_f0_rbus_i};
        end
        13'h0014: begin
          mem_rdata_o = {data_w5_f30_r, regf_w5_f28_rbus_i, data_w5_f26_r, regf_w5_f24_rbus_i, data_w5_f22_r, regf_w5_f20_rbus_i, data_w5_f18_r, regf_w5_f16_rbus_i, data_w5_f14_r, regf_w5_f12_rbus_i, data_w5_f10_r, regf_w5_f8_rbus_i, data_w5_f6_r, regf_w5_f4_rbus_i, data_w5_f2_r, regf_w5_f0_rbus_i};
        end
        13'h0018: begin
          mem_rdata_o = {data_w6_f30_r, regf_w6_f28_rbus_i, data_w6_f26_r, regf_w6_f24_rbus_i, data_w6_f22_r, regf_w6_f20_rbus_i, data_w6_f18_r, regf_w6_f16_rbus_i, data_w6_f14_r, regf_w6_f12_rbus_i, data_w6_f10_r, regf_w6_f8_rbus_i, data_w6_f6_r, regf_w6_f4_rbus_i, data_w6_f2_r, regf_w6_f0_rbus_i};
        end
        13'h001C: begin
          mem_rdata_o = {data_w7_f30_r, regf_w7_f28_rbus_i, data_w7_f26_r, regf_w7_f24_rbus_i, data_w7_f22_r, regf_w7_f20_rbus_i, data_w7_f18_r, regf_w7_f16_rbus_i, data_w7_f14_r, regf_w7_f12_rbus_i, data_w7_f10_r, regf_w7_f8_rbus_i, data_w7_f6_r, regf_w7_f4_rbus_i, data_w7_f2_r, regf_w7_f0_rbus_i};
        end
        13'h0020: begin
          mem_rdata_o = {data_w8_f30_r, regf_w8_f28_rbus_i, data_w8_f26_r, regf_w8_f24_rbus_i, data_w8_f22_r, regf_w8_f20_rbus_i, data_w8_f18_r, regf_w8_f16_rbus_i, data_w8_f14_r, regf_w8_f12_rbus_i, data_w8_f10_r, regf_w8_f8_rbus_i, data_w8_f6_r, regf_w8_f4_rbus_i, data_w8_f2_r, regf_w8_f0_rbus_i};
        end
        13'h0024: begin
          mem_rdata_o = {data_w9_f30_r, regf_w9_f28_rbus_i, data_w9_f26_r, regf_w9_f24_rbus_i, data_w9_f22_r, regf_w9_f20_rbus_i, data_w9_f18_r, regf_w9_f16_rbus_i, data_w9_f14_r, regf_w9_f12_rbus_i, data_w9_f10_r, regf_w9_f8_rbus_i, data_w9_f6_r, regf_w9_f4_rbus_i, data_w9_f2_r, regf_w9_f0_rbus_i};
        end
        13'h0028: begin
          mem_rdata_o = {data_w10_f30_r, regf_w10_f28_rbus_i, data_w10_f26_c, data_w10_f24_r, regf_w10_f22_rbus_i, data_w10_f20_r, regf_w10_f18_rbus_i, data_w10_f16_r, regf_w10_f14_rbus_i, data_w10_f12_c, data_w10_f10_r, regf_w10_f8_rbus_i, data_w10_f6_r, regf_w10_f4_rbus_i, data_w10_f2_r, regf_w10_f0_rbus_i};
        end
        13'h002C: begin
          mem_rdata_o = {data_w11_f30_r, regf_w11_f28_rbus_i, data_w11_f26_r, regf_w11_f24_rbus_i, data_w11_f22_r, regf_w11_f20_rbus_i, data_w11_f18_r, regf_w11_f16_rbus_i, data_w11_f14_r, regf_w11_f12_rbus_i, data_w11_f10_r, regf_w11_f8_rbus_i, data_w11_f6_r, regf_w11_f4_rbus_i, data_w11_f2_r, regf_w11_f0_rbus_i};
        end
        13'h0030: begin
          mem_rdata_o = {20'h00000, data_w12_f10_r, regf_w12_f8_rbus_i, data_w12_f6_r, regf_w12_f4_rbus_i, data_w12_f2_r, regf_w12_f0_rbus_i};
        end
        13'h0064: begin
          mem_rdata_o = {data_w25_f30_r, regf_w25_f28_rbus_i, data_w25_f26_r, regf_w25_f24_rbus_i, data_w25_f22_r, regf_w25_f20_rbus_i, data_w25_f18_r, regf_w25_f16_rbus_i, data_w25_f14_r, regf_w25_f12_rbus_i, data_w25_f10_r, regf_w25_f8_rbus_i, data_w25_f6_r, regf_w25_f4_rbus_i, 4'h0};
        end
        13'h0068: begin
          mem_rdata_o = {data_w26_f30_r, regf_w26_f28_rbus_i, data_w26_f26_r, regf_w26_f24_rbus_i, data_w26_f22_r, regf_w26_f20_rbus_i, data_w26_f18_r, regf_w26_f16_rbus_i, data_w26_f14_r, regf_w26_f12_rbus_i, data_w26_f10_r, regf_w26_f8_rbus_i, data_w26_f6_r, regf_w26_f4_rbus_i, data_w26_f2_r, regf_w26_f0_rbus_i};
        end
        13'h006C: begin
          mem_rdata_o = {data_w27_f30_r, regf_w27_f28_rbus_i, data_w27_f26_r, regf_w27_f24_rbus_i, data_w27_f22_r, regf_w27_f20_rbus_i, data_w27_f18_r, regf_w27_f16_rbus_i, data_w27_f14_r, regf_w27_f12_rbus_i, data_w27_f10_r, regf_w27_f8_rbus_i, data_w27_f6_r, regf_w27_f4_rbus_i, data_w27_f2_r, regf_w27_f0_rbus_i};
        end
        13'h0070: begin
          mem_rdata_o = {data_w28_f30_r, regf_w28_f28_rbus_i, data_w28_f26_r, regf_w28_f24_rbus_i, data_w28_f22_r, regf_w28_f20_rbus_i, data_w28_f18_r, regf_w28_f16_rbus_i, data_w28_f14_r, regf_w28_f12_rbus_i, data_w28_f10_r, regf_w28_f8_rbus_i, data_w28_f6_r, regf_w28_f4_rbus_i, data_w28_f2_r, regf_w28_f0_rbus_i};
        end
        13'h0074: begin
          mem_rdata_o = {data_w29_f30_r, regf_w29_f28_rbus_i, data_w29_f26_r, regf_w29_f24_rbus_i, data_w29_f22_r, regf_w29_f20_rbus_i, data_w29_f18_r, regf_w29_f16_rbus_i, data_w29_f14_r, regf_w29_f12_rbus_i, data_w29_f10_r, regf_w29_f8_rbus_i, data_w29_f6_r, regf_w29_f4_rbus_i, data_w29_f2_r, regf_w29_f0_rbus_i};
        end
        13'h0078: begin
          mem_rdata_o = {data_w30_f30_r, regf_w30_f28_rbus_i, data_w30_f26_r, regf_w30_f24_rbus_i, data_w30_f22_r, regf_w30_f20_rbus_i, data_w30_f18_r, regf_w30_f16_rbus_i, data_w30_f14_r, regf_w30_f12_rbus_i, data_w30_f10_r, regf_w30_f8_rbus_i, data_w30_f6_r, regf_w30_f4_rbus_i, data_w30_f2_r, regf_w30_f0_rbus_i};
        end
        13'h007C: begin
          mem_rdata_o = {data_w31_f30_r, regf_w31_f28_rbus_i, data_w31_f26_r, regf_w31_f24_rbus_i, data_w31_f22_r, regf_w31_f20_rbus_i, data_w31_f18_r, regf_w31_f16_rbus_i, data_w31_f14_r, regf_w31_f12_rbus_i, data_w31_f10_r, regf_w31_f8_rbus_i, data_w31_f6_r, regf_w31_f4_rbus_i, data_w31_f2_r, regf_w31_f0_rbus_i};
        end
        13'h0080: begin
          mem_rdata_o = {data_w32_f30_r, regf_w32_f28_rbus_i, data_w32_f26_r, regf_w32_f24_rbus_i, data_w32_f22_r, regf_w32_f20_rbus_i, data_w32_f18_r, regf_w32_f16_rbus_i, data_w32_f14_r, regf_w32_f12_rbus_i, data_w32_f10_r, regf_w32_f8_rbus_i, data_w32_f6_r, regf_w32_f4_rbus_i, data_w32_f2_r, regf_w32_f0_rbus_i};
        end
        13'h0084: begin
          mem_rdata_o = {data_w33_f30_r, regf_w33_f28_rbus_i, data_w33_f26_r, regf_w33_f24_rbus_i, data_w33_f22_r, regf_w33_f20_rbus_i, data_w33_f18_r, regf_w33_f16_rbus_i, data_w33_f14_r, regf_w33_f12_rbus_i, data_w33_f10_r, regf_w33_f8_rbus_i, data_w33_f6_r, regf_w33_f4_rbus_i, data_w33_f2_r, regf_w33_f0_rbus_i};
        end
        13'h0088: begin
          mem_rdata_o = {data_w34_f30_r, regf_w34_f28_rbus_i, data_w34_f26_r, regf_w34_f24_rbus_i, data_w34_f22_r, regf_w34_f20_rbus_i, data_w34_f18_r, regf_w34_f16_rbus_i, data_w34_f14_r, regf_w34_f12_rbus_i, data_w34_f10_r, regf_w34_f8_rbus_i, data_w34_f6_r, regf_w34_f4_rbus_i, data_w34_f2_r, regf_w34_f0_rbus_i};
        end
        13'h008C: begin
          mem_rdata_o = {data_w35_f30_r, regf_w35_f28_rbus_i, data_w35_f26_r, regf_w35_f24_rbus_i, data_w35_f22_r, regf_w35_f20_rbus_i, data_w35_f18_r, regf_w35_f16_rbus_i, data_w35_f14_r, regf_w35_f12_rbus_i, data_w35_f10_r, regf_w35_f8_rbus_i, data_w35_f6_r, regf_w35_f4_rbus_i, data_w35_f2_r, regf_w35_f0_rbus_i};
        end
        13'h0090: begin
          mem_rdata_o = {data_w36_f30_r, regf_w36_f28_rbus_i, data_w36_f26_r, regf_w36_f24_rbus_i, data_w36_f22_r, regf_w36_f20_rbus_i, data_w36_f18_r, regf_w36_f16_rbus_i, data_w36_f14_r, regf_w36_f12_rbus_i, data_w36_f10_r, regf_w36_f8_rbus_i, data_w36_f6_r, regf_w36_f4_rbus_i, data_w36_f2_r, regf_w36_f0_rbus_i};
        end
        13'h0094: begin
          mem_rdata_o = {4'h0, data_w37_f26_r, regf_w37_f24_rbus_i, data_w37_f22_r, regf_w37_f20_rbus_i, data_w37_f18_r, regf_w37_f16_rbus_i, data_w37_f14_r, regf_w37_f12_rbus_i, data_w37_f10_r, regf_w37_f8_rbus_i, data_w37_f6_r, regf_w37_f4_rbus_i, data_w37_f2_r, regf_w37_f0_rbus_i};
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
  assign regf_w0_f0_rval_o   = data_w0_f0_c;
  assign regf_w0_f4_rval_o   = data_w0_f4_r;
  assign regf_w0_f8_rval_o   = data_w0_f8_r;
  assign regf_w0_f12_rval_o  = data_w0_f12_r;
  assign regf_w0_f14_rval_o  = data_w0_f14_c;
  assign regf_w1_f10_rval_o  = data_w1_f10_r;
  assign regf_w1_f14_rval_o  = data_w1_f14_r;
  assign regf_w1_f18_rval_o  = data_w1_f18_r;
  assign regf_w1_f22_rval_o  = data_w1_f22_r;
  assign regf_w1_f26_rval_o  = data_w1_f26_r;
  assign regf_w1_f30_rval_o  = data_w1_f30_r;
  assign regf_w2_f0_rval_o   = data_w2_f0_c;
  assign regf_w2_f4_rval_o   = data_w2_f4_r;
  assign regf_w2_f8_rval_o   = data_w2_f8_r;
  assign regf_w2_f12_rval_o  = data_w2_f12_r;
  assign regf_w2_f14_rval_o  = data_w2_f14_c;
  assign regf_w3_f10_rval_o  = data_w3_f10_r;
  assign regf_w3_f14_rval_o  = data_w3_f14_r;
  assign regf_w3_f18_rval_o  = data_w3_f18_r;
  assign regf_w3_f22_rval_o  = data_w3_f22_r;
  assign regf_w3_f26_rval_o  = data_w3_f26_r;
  assign regf_w3_f30_rval_o  = data_w3_f30_r;
  assign regf_w4_f2_rval_o   = data_w4_f2_r;
  assign regf_w4_f6_rval_o   = data_w4_f6_r;
  assign regf_w4_f10_rval_o  = data_w4_f10_r;
  assign regf_w4_f14_rval_o  = data_w4_f14_r;
  assign regf_w4_f18_rval_o  = data_w4_f18_r;
  assign regf_w5_f14_rval_o  = data_w5_f14_r;
  assign regf_w5_f18_rval_o  = data_w5_f18_r;
  assign regf_w5_f22_rval_o  = data_w5_f22_r;
  assign regf_w5_f26_rval_o  = data_w5_f26_r;
  assign regf_w5_f30_rval_o  = data_w5_f30_r;
  assign regf_w6_f2_rval_o   = data_w6_f2_r;
  assign regf_w6_f6_rval_o   = data_w6_f6_r;
  assign regf_w6_f10_rval_o  = data_w6_f10_r;
  assign regf_w6_f14_rval_o  = data_w6_f14_r;
  assign regf_w6_f18_rval_o  = data_w6_f18_r;
  assign regf_w6_f22_rval_o  = data_w6_f22_r;
  assign regf_w7_f18_rval_o  = data_w7_f18_r;
  assign regf_w7_f22_rval_o  = data_w7_f22_r;
  assign regf_w7_f26_rval_o  = data_w7_f26_r;
  assign regf_w7_f30_rval_o  = data_w7_f30_r;
  assign regf_w8_f2_rval_o   = data_w8_f2_r;
  assign regf_w8_f6_rval_o   = data_w8_f6_r;
  assign regf_w8_f10_rval_o  = data_w8_f10_r;
  assign regf_w8_f14_rval_o  = data_w8_f14_r;
  assign regf_w8_f18_rval_o  = data_w8_f18_r;
  assign regf_w8_f22_rval_o  = data_w8_f22_r;
  assign regf_w8_f26_rval_o  = data_w8_f26_r;
  assign regf_w9_f22_rval_o  = data_w9_f22_r;
  assign regf_w9_f26_rval_o  = data_w9_f26_r;
  assign regf_w9_f30_rval_o  = data_w9_f30_r;
  assign regf_w10_f2_rval_o  = data_w10_f2_r;
  assign regf_w10_f6_rval_o  = data_w10_f6_r;
  assign regf_w10_f10_rval_o = data_w10_f10_r;
  assign regf_w10_f12_rval_o = data_w10_f12_c;
  assign regf_w10_f16_rval_o = data_w10_f16_r;
  assign regf_w10_f20_rval_o = data_w10_f20_r;
  assign regf_w10_f24_rval_o = data_w10_f24_r;
  assign regf_w10_f26_rval_o = data_w10_f26_c;
  assign regf_w11_f22_rval_o = data_w11_f22_r;
  assign regf_w11_f26_rval_o = data_w11_f26_r;
  assign regf_w11_f30_rval_o = data_w11_f30_r;
  assign regf_w12_f2_rval_o  = data_w12_f2_r;
  assign regf_w12_f6_rval_o  = data_w12_f6_r;
  assign regf_w12_f10_rval_o = data_w12_f10_r;
  assign regf_w12_f12_wbus_o = (bus_w12_wren_s == 1'b1) ? mem_wdata_i[13:12] : 2'h0;
  assign regf_w12_f12_wr_o   = (bus_w12_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w12_f14_rval_o = data_w12_f14_r;
  assign regf_w12_f16_wbus_o = (bus_w12_wren_s == 1'b1) ? mem_wdata_i[17:16] : 2'h0;
  assign regf_w12_f16_wr_o   = (bus_w12_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w12_f18_rval_o = data_w12_f18_r;
  assign regf_w12_f20_wbus_o = (bus_w12_wren_s == 1'b1) ? mem_wdata_i[21:20] : 2'h0;
  assign regf_w12_f20_wr_o   = (bus_w12_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w12_f22_rval_o = data_w12_f22_r;
  assign regf_w12_f24_wbus_o = (bus_w12_wren_s == 1'b1) ? mem_wdata_i[25:24] : 2'h0;
  assign regf_w12_f24_wr_o   = (bus_w12_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w12_f26_rval_o = data_w12_f26_r;
  assign regf_w12_f28_wbus_o = (bus_w12_wren_s == 1'b1) ? mem_wdata_i[29:28] : 2'h0;
  assign regf_w12_f28_wr_o   = (bus_w12_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w12_f30_rval_o = data_w12_f30_r;
  assign regf_w13_f24_wbus_o = (bus_w13_wren_s == 1'b1) ? mem_wdata_i[25:24] : 2'h0;
  assign regf_w13_f24_wr_o   = (bus_w13_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w13_f26_rval_o = data_w13_f26_r;
  assign regf_w13_f28_wbus_o = (bus_w13_wren_s == 1'b1) ? mem_wdata_i[29:28] : 2'h0;
  assign regf_w13_f28_wr_o   = (bus_w13_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w13_f30_rval_o = data_w13_f30_r;
  assign regf_w14_f0_wbus_o  = (bus_w14_wren_s == 1'b1) ? mem_wdata_i[1:0] : 2'h0;
  assign regf_w14_f0_wr_o    = (bus_w14_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w14_f2_rval_o  = data_w14_f2_r;
  assign regf_w14_f4_wbus_o  = (bus_w14_wren_s == 1'b1) ? mem_wdata_i[5:4] : 2'h0;
  assign regf_w14_f4_wr_o    = (bus_w14_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w14_f6_rval_o  = data_w14_f6_r;
  assign regf_w14_f8_wbus_o  = (bus_w14_wren_s == 1'b1) ? mem_wdata_i[9:8] : 2'h0;
  assign regf_w14_f8_wr_o    = (bus_w14_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w14_f10_rval_o = data_w14_f10_r;
  assign regf_w14_f12_wbus_o = (bus_w14_wren_s == 1'b1) ? mem_wdata_i[13:12] : 2'h0;
  assign regf_w14_f12_wr_o   = (bus_w14_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w14_f14_rval_o = data_w14_f14_r;
  assign regf_w14_f16_wbus_o = (bus_w14_wren_s == 1'b1) ? regf_w14_f16_rbus_i & mem_wdata_i[17:16] : 2'h0;
  assign regf_w14_f16_wr_o   = (bus_w14_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w14_f18_rval_o = data_w14_f18_r;
  assign regf_w14_f20_wbus_o = (bus_w14_wren_s == 1'b1) ? regf_w14_f20_rbus_i & mem_wdata_i[21:20] : 2'h0;
  assign regf_w14_f20_wr_o   = (bus_w14_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w14_f22_rval_o = data_w14_f22_r;
  assign regf_w14_f24_wbus_o = (bus_w14_wren_s == 1'b1) ? regf_w14_f24_rbus_i & mem_wdata_i[25:24] : 2'h0;
  assign regf_w14_f24_wr_o   = (bus_w14_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w14_f26_rval_o = data_w14_f26_r;
  assign regf_w14_f28_wbus_o = (bus_w14_wren_s == 1'b1) ? regf_w14_f28_rbus_i & mem_wdata_i[29:28] : 2'h0;
  assign regf_w14_f28_wr_o   = (bus_w14_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w14_f30_rval_o = data_w14_f30_r;
  assign regf_w15_f0_wbus_o  = (bus_w15_wren_s == 1'b1) ? regf_w15_f0_rbus_i & mem_wdata_i[1:0] : 2'h0;
  assign regf_w15_f0_wr_o    = (bus_w15_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w15_f2_rval_o  = data_w15_f2_r;
  assign regf_w15_f28_wbus_o = (bus_w15_wren_s == 1'b1) ? regf_w15_f28_rbus_i & mem_wdata_i[29:28] : 2'h0;
  assign regf_w15_f28_wr_o   = (bus_w15_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w15_f30_rval_o = data_w15_f30_r;
  assign regf_w16_f0_wbus_o  = (bus_w16_wren_s == 1'b1) ? regf_w16_f0_rbus_i & mem_wdata_i[1:0] : 2'h0;
  assign regf_w16_f0_wr_o    = (bus_w16_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w16_f2_rval_o  = data_w16_f2_r;
  assign regf_w16_f4_wbus_o  = (bus_w16_wren_s == 1'b1) ? regf_w16_f4_rbus_i & mem_wdata_i[5:4] : 2'h0;
  assign regf_w16_f4_wr_o    = (bus_w16_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w16_f6_rval_o  = data_w16_f6_r;
  assign regf_w16_f8_wbus_o  = (bus_w16_wren_s == 1'b1) ? regf_w16_f8_rbus_i & mem_wdata_i[9:8] : 2'h0;
  assign regf_w16_f8_wr_o    = (bus_w16_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w16_f10_rval_o = data_w16_f10_r;
  assign regf_w16_f12_wbus_o = (bus_w16_wren_s == 1'b1) ? regf_w16_f12_rbus_i & mem_wdata_i[13:12] : 2'h0;
  assign regf_w16_f12_wr_o   = (bus_w16_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w16_f14_rval_o = data_w16_f14_r;
  assign regf_w16_f16_wbus_o = (bus_w16_wren_s == 1'b1) ? regf_w16_f16_rbus_i & mem_wdata_i[17:16] : 2'h0;
  assign regf_w16_f16_wr_o   = (bus_w16_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w16_f18_rval_o = data_w16_f18_r;
  assign regf_w16_f20_wbus_o = (bus_w16_wren_s == 1'b1) ? regf_w16_f20_rbus_i | ~mem_wdata_i[21:20] : 2'h0;
  assign regf_w16_f20_wr_o   = (bus_w16_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w16_f22_rval_o = data_w16_f22_r;
  assign regf_w16_f24_wbus_o = (bus_w16_wren_s == 1'b1) ? regf_w16_f24_rbus_i | ~mem_wdata_i[25:24] : 2'h0;
  assign regf_w16_f24_wr_o   = (bus_w16_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w16_f26_rval_o = data_w16_f26_r;
  assign regf_w16_f28_wbus_o = (bus_w16_wren_s == 1'b1) ? regf_w16_f28_rbus_i | ~mem_wdata_i[29:28] : 2'h0;
  assign regf_w16_f28_wr_o   = (bus_w16_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w16_f30_rval_o = data_w16_f30_r;
  assign regf_w17_f0_wbus_o  = (bus_w17_wren_s == 1'b1) ? regf_w17_f0_rbus_i | ~mem_wdata_i[1:0] : 2'h0;
  assign regf_w17_f0_wr_o    = (bus_w17_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w17_f2_rval_o  = data_w17_f2_r;
  assign regf_w17_f4_wbus_o  = (bus_w17_wren_s == 1'b1) ? regf_w17_f4_rbus_i | ~mem_wdata_i[5:4] : 2'h0;
  assign regf_w17_f4_wr_o    = (bus_w17_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w17_f6_rval_o  = data_w17_f6_r;
  assign regf_w18_f0_wbus_o  = (bus_w18_wren_s == 1'b1) ? regf_w18_f0_rbus_i | ~mem_wdata_i[1:0] : 2'h0;
  assign regf_w18_f0_wr_o    = (bus_w18_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w18_f2_rval_o  = data_w18_f2_r;
  assign regf_w18_f4_wbus_o  = (bus_w18_wren_s == 1'b1) ? regf_w18_f4_rbus_i | ~mem_wdata_i[5:4] : 2'h0;
  assign regf_w18_f4_wr_o    = (bus_w18_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w18_f6_rval_o  = data_w18_f6_r;
  assign regf_w18_f8_wbus_o  = (bus_w18_wren_s == 1'b1) ? regf_w18_f8_rbus_i | ~mem_wdata_i[9:8] : 2'h0;
  assign regf_w18_f8_wr_o    = (bus_w18_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w18_f10_rval_o = data_w18_f10_r;
  assign regf_w18_f12_wbus_o = (bus_w18_wren_s == 1'b1) ? regf_w18_f12_rbus_i | ~mem_wdata_i[13:12] : 2'h0;
  assign regf_w18_f12_wr_o   = (bus_w18_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w18_f14_rval_o = data_w18_f14_r;
  assign regf_w18_f16_wbus_o = (bus_w18_wren_s == 1'b1) ? regf_w18_f16_rbus_i | ~mem_wdata_i[17:16] : 2'h0;
  assign regf_w18_f16_wr_o   = (bus_w18_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w18_f18_rval_o = data_w18_f18_r;
  assign regf_w18_f20_wbus_o = (bus_w18_wren_s == 1'b1) ? regf_w18_f20_rbus_i | ~mem_wdata_i[21:20] : 2'h0;
  assign regf_w18_f20_wr_o   = (bus_w18_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w18_f22_rval_o = data_w18_f22_r;
  assign regf_w18_f24_wbus_o = (bus_w18_wren_s == 1'b1) ? regf_w18_f24_rbus_i & ~mem_wdata_i[25:24] : 2'h0;
  assign regf_w18_f24_wr_o   = (bus_w18_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w18_f26_rval_o = data_w18_f26_r;
  assign regf_w18_f28_wbus_o = (bus_w18_wren_s == 1'b1) ? regf_w18_f28_rbus_i & ~mem_wdata_i[29:28] : 2'h0;
  assign regf_w18_f28_wr_o   = (bus_w18_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w18_f30_rval_o = data_w18_f30_r;
  assign regf_w19_f0_wbus_o  = (bus_w19_wren_s == 1'b1) ? regf_w19_f0_rbus_i & ~mem_wdata_i[1:0] : 2'h0;
  assign regf_w19_f0_wr_o    = (bus_w19_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w19_f2_rval_o  = data_w19_f2_r;
  assign regf_w19_f4_wbus_o  = (bus_w19_wren_s == 1'b1) ? regf_w19_f4_rbus_i & ~mem_wdata_i[5:4] : 2'h0;
  assign regf_w19_f4_wr_o    = (bus_w19_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w19_f6_rval_o  = data_w19_f6_r;
  assign regf_w19_f8_wbus_o  = (bus_w19_wren_s == 1'b1) ? regf_w19_f8_rbus_i & ~mem_wdata_i[9:8] : 2'h0;
  assign regf_w19_f8_wr_o    = (bus_w19_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w19_f10_rval_o = data_w19_f10_r;
  assign regf_w20_f4_wbus_o  = (bus_w20_wren_s == 1'b1) ? regf_w20_f4_rbus_i & ~mem_wdata_i[5:4] : 2'h0;
  assign regf_w20_f4_wr_o    = (bus_w20_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w20_f6_rval_o  = data_w20_f6_r;
  assign regf_w20_f8_wbus_o  = (bus_w20_wren_s == 1'b1) ? regf_w20_f8_rbus_i & ~mem_wdata_i[9:8] : 2'h0;
  assign regf_w20_f8_wr_o    = (bus_w20_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w20_f10_rval_o = data_w20_f10_r;
  assign regf_w20_f12_wbus_o = (bus_w20_wren_s == 1'b1) ? regf_w20_f12_rbus_i & ~mem_wdata_i[13:12] : 2'h0;
  assign regf_w20_f12_wr_o   = (bus_w20_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w20_f14_rval_o = data_w20_f14_r;
  assign regf_w20_f16_wbus_o = (bus_w20_wren_s == 1'b1) ? regf_w20_f16_rbus_i & ~mem_wdata_i[17:16] : 2'h0;
  assign regf_w20_f16_wr_o   = (bus_w20_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w20_f18_rval_o = data_w20_f18_r;
  assign regf_w20_f20_wbus_o = (bus_w20_wren_s == 1'b1) ? regf_w20_f20_rbus_i & ~mem_wdata_i[21:20] : 2'h0;
  assign regf_w20_f20_wr_o   = (bus_w20_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w20_f22_rval_o = data_w20_f22_r;
  assign regf_w20_f24_wbus_o = (bus_w20_wren_s == 1'b1) ? regf_w20_f24_rbus_i & ~mem_wdata_i[25:24] : 2'h0;
  assign regf_w20_f24_wr_o   = (bus_w20_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w20_f26_rval_o = data_w20_f26_r;
  assign regf_w20_f28_wbus_o = (bus_w20_wren_s == 1'b1) ? regf_w20_f28_rbus_i | mem_wdata_i[29:28] : 2'h0;
  assign regf_w20_f28_wr_o   = (bus_w20_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w20_f30_rval_o = data_w20_f30_r;
  assign regf_w21_f0_wbus_o  = (bus_w21_wren_s == 1'b1) ? regf_w21_f0_rbus_i | mem_wdata_i[1:0] : 2'h0;
  assign regf_w21_f0_wr_o    = (bus_w21_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w21_f2_rval_o  = data_w21_f2_r;
  assign regf_w21_f4_wbus_o  = (bus_w21_wren_s == 1'b1) ? regf_w21_f4_rbus_i | mem_wdata_i[5:4] : 2'h0;
  assign regf_w21_f4_wr_o    = (bus_w21_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w21_f6_rval_o  = data_w21_f6_r;
  assign regf_w21_f8_wbus_o  = (bus_w21_wren_s == 1'b1) ? regf_w21_f8_rbus_i | mem_wdata_i[9:8] : 2'h0;
  assign regf_w21_f8_wr_o    = (bus_w21_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w21_f10_rval_o = data_w21_f10_r;
  assign regf_w21_f12_wbus_o = (bus_w21_wren_s == 1'b1) ? regf_w21_f12_rbus_i | mem_wdata_i[13:12] : 2'h0;
  assign regf_w21_f12_wr_o   = (bus_w21_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w21_f14_rval_o = data_w21_f14_r;
  assign regf_w22_f8_wbus_o  = (bus_w22_wren_s == 1'b1) ? regf_w22_f8_rbus_i | mem_wdata_i[9:8] : 2'h0;
  assign regf_w22_f8_wr_o    = (bus_w22_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w22_f10_rval_o = data_w22_f10_r;
  assign regf_w22_f12_wbus_o = (bus_w22_wren_s == 1'b1) ? regf_w22_f12_rbus_i | mem_wdata_i[13:12] : 2'h0;
  assign regf_w22_f12_wr_o   = (bus_w22_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w22_f14_rval_o = data_w22_f14_r;
  assign regf_w22_f16_wbus_o = (bus_w22_wren_s == 1'b1) ? regf_w22_f16_rbus_i | mem_wdata_i[17:16] : 2'h0;
  assign regf_w22_f16_wr_o   = (bus_w22_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w22_f18_rval_o = data_w22_f18_r;
  assign regf_w22_f20_wbus_o = (bus_w22_wren_s == 1'b1) ? regf_w22_f20_rbus_i | mem_wdata_i[21:20] : 2'h0;
  assign regf_w22_f20_wr_o   = (bus_w22_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w22_f22_rval_o = data_w22_f22_r;
  assign regf_w22_f24_wbus_o = (bus_w22_wren_s == 1'b1) ? regf_w22_f24_rbus_i | mem_wdata_i[25:24] : 2'h0;
  assign regf_w22_f24_wr_o   = (bus_w22_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w22_f26_rval_o = data_w22_f26_r;
  assign regf_w22_f28_wbus_o = (bus_w22_wren_s == 1'b1) ? regf_w22_f28_rbus_i | mem_wdata_i[29:28] : 2'h0;
  assign regf_w22_f28_wr_o   = (bus_w22_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w22_f30_rval_o = data_w22_f30_r;
  assign regf_w23_f0_wbus_o  = ((bus_w23_wren_s == 1'b1) && (bus_w23_wronce_r == 1'b1)) ? mem_wdata_i[1:0] : 2'h0;
  assign regf_w23_f0_wr_o    = ((bus_w23_wren_s == 1'b1) && (bus_w23_wronce_r == 1'b1)) ? 1'b1 : 1'b0;
  assign regf_w23_f2_rval_o  = data_w23_f2_r;
  assign regf_w23_f4_wbus_o  = ((bus_w23_wren_s == 1'b1) && (bus_w23_wronce_r == 1'b1)) ? mem_wdata_i[5:4] : 2'h0;
  assign regf_w23_f4_wr_o    = ((bus_w23_wren_s == 1'b1) && (bus_w23_wronce_r == 1'b1)) ? 1'b1 : 1'b0;
  assign regf_w23_f6_rval_o  = data_w23_f6_r;
  assign regf_w23_f8_wbus_o  = ((bus_w23_wren_s == 1'b1) && (bus_w23_wronce_r == 1'b1)) ? mem_wdata_i[9:8] : 2'h0;
  assign regf_w23_f8_wr_o    = ((bus_w23_wren_s == 1'b1) && (bus_w23_wronce_r == 1'b1)) ? 1'b1 : 1'b0;
  assign regf_w23_f10_rval_o = data_w23_f10_r;
  assign regf_w23_f12_wbus_o = ((bus_w23_wren_s == 1'b1) && (bus_w23_wronce_r == 1'b1)) ? mem_wdata_i[13:12] : 2'h0;
  assign regf_w23_f12_wr_o   = ((bus_w23_wren_s == 1'b1) && (bus_w23_wronce_r == 1'b1)) ? 1'b1 : 1'b0;
  assign regf_w23_f14_rval_o = data_w23_f14_r;
  assign regf_w23_f16_wbus_o = ((bus_w23_wren_s == 1'b1) && (bus_w23_wronce_r == 1'b1)) ? mem_wdata_i[17:16] : 2'h0;
  assign regf_w23_f16_wr_o   = ((bus_w23_wren_s == 1'b1) && (bus_w23_wronce_r == 1'b1)) ? 1'b1 : 1'b0;
  assign regf_w23_f18_rval_o = data_w23_f18_r;
  assign regf_w24_f12_wbus_o = ((bus_w24_wren_s == 1'b1) && (bus_w24_wronce_r == 1'b1)) ? mem_wdata_i[13:12] : 2'h0;
  assign regf_w24_f12_wr_o   = ((bus_w24_wren_s == 1'b1) && (bus_w24_wronce_r == 1'b1)) ? 1'b1 : 1'b0;
  assign regf_w24_f14_rval_o = data_w24_f14_r;
  assign regf_w24_f16_wbus_o = ((bus_w24_wren_s == 1'b1) && (bus_w24_wronce_r == 1'b1)) ? mem_wdata_i[17:16] : 2'h0;
  assign regf_w24_f16_wr_o   = ((bus_w24_wren_s == 1'b1) && (bus_w24_wronce_r == 1'b1)) ? 1'b1 : 1'b0;
  assign regf_w24_f18_rval_o = data_w24_f18_r;
  assign regf_w24_f20_wbus_o = ((bus_w24_wren_s == 1'b1) && (bus_w24_wronce_r == 1'b1)) ? mem_wdata_i[21:20] : 2'h0;
  assign regf_w24_f20_wr_o   = ((bus_w24_wren_s == 1'b1) && (bus_w24_wronce_r == 1'b1)) ? 1'b1 : 1'b0;
  assign regf_w24_f22_rval_o = data_w24_f22_r;
  assign regf_w24_f24_wbus_o = ((bus_w24_wren_s == 1'b1) && (bus_w24_wronce_r == 1'b1)) ? mem_wdata_i[25:24] : 2'h0;
  assign regf_w24_f24_wr_o   = ((bus_w24_wren_s == 1'b1) && (bus_w24_wronce_r == 1'b1)) ? 1'b1 : 1'b0;
  assign regf_w24_f26_rval_o = data_w24_f26_r;
  assign regf_w24_f28_wbus_o = ((bus_w24_wren_s == 1'b1) && (bus_w24_wronce_r == 1'b1)) ? mem_wdata_i[29:28] : 2'h0;
  assign regf_w24_f28_wr_o   = ((bus_w24_wren_s == 1'b1) && (bus_w24_wronce_r == 1'b1)) ? 1'b1 : 1'b0;
  assign regf_w24_f30_rval_o = data_w24_f30_r;
  assign regf_w25_f0_wbus_o  = ((bus_w25_wren_s == 1'b1) && (bus_w25_wronce_r == 1'b1)) ? mem_wdata_i[1:0] : 2'h0;
  assign regf_w25_f0_wr_o    = ((bus_w25_wren_s == 1'b1) && (bus_w25_wronce_r == 1'b1)) ? 1'b1 : 1'b0;
  assign regf_w25_f2_rval_o  = data_w25_f2_r;
  assign regf_w25_f4_wbus_o  = (bus_w25_wren_s == 1'b1) ? mem_wdata_i[5:4] : 2'h0;
  assign regf_w25_f4_wr_o    = (bus_w25_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w25_f6_rval_o  = data_w25_f6_r;
  assign regf_w25_f8_wbus_o  = (bus_w25_wren_s == 1'b1) ? mem_wdata_i[9:8] : 2'h0;
  assign regf_w25_f8_wr_o    = (bus_w25_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w25_f10_rval_o = data_w25_f10_r;
  assign regf_w25_f12_wbus_o = (bus_w25_wren_s == 1'b1) ? mem_wdata_i[13:12] : 2'h0;
  assign regf_w25_f12_wr_o   = (bus_w25_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w25_f14_rval_o = data_w25_f14_r;
  assign regf_w25_f16_wbus_o = (bus_w25_wren_s == 1'b1) ? mem_wdata_i[17:16] : 2'h0;
  assign regf_w25_f16_wr_o   = (bus_w25_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w25_f18_rval_o = data_w25_f18_r;
  assign regf_w25_f20_wbus_o = (bus_w25_wren_s == 1'b1) ? mem_wdata_i[21:20] : 2'h0;
  assign regf_w25_f20_wr_o   = (bus_w25_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w25_f22_rval_o = data_w25_f22_r;
  assign regf_w26_f16_wbus_o = (bus_w26_wren_s == 1'b1) ? mem_wdata_i[17:16] : 2'h0;
  assign regf_w26_f16_wr_o   = (bus_w26_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w26_f18_rval_o = data_w26_f18_r;
  assign regf_w26_f20_wbus_o = (bus_w26_wren_s == 1'b1) ? mem_wdata_i[21:20] : 2'h0;
  assign regf_w26_f20_wr_o   = (bus_w26_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w26_f22_rval_o = data_w26_f22_r;
  assign regf_w26_f24_wbus_o = (bus_w26_wren_s == 1'b1) ? mem_wdata_i[25:24] : 2'h0;
  assign regf_w26_f24_wr_o   = (bus_w26_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w26_f26_rval_o = data_w26_f26_r;
  assign regf_w26_f28_wbus_o = (bus_w26_wren_s == 1'b1) ? mem_wdata_i[29:28] : 2'h0;
  assign regf_w26_f28_wr_o   = (bus_w26_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w26_f30_rval_o = data_w26_f30_r;
  assign regf_w27_f0_wbus_o  = (bus_w27_wren_s == 1'b1) ? mem_wdata_i[1:0] : 2'h0;
  assign regf_w27_f0_wr_o    = (bus_w27_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w27_f2_rval_o  = data_w27_f2_r;
  assign regf_w27_f4_wbus_o  = (bus_w27_wren_s == 1'b1) ? mem_wdata_i[5:4] : 2'h0;
  assign regf_w27_f4_wr_o    = (bus_w27_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w27_f6_rval_o  = data_w27_f6_r;
  assign regf_w27_f8_wbus_o  = (bus_w27_wren_s == 1'b1) ? regf_w27_f8_rbus_i & mem_wdata_i[9:8] : 2'h0;
  assign regf_w27_f8_wr_o    = (bus_w27_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w27_f10_rval_o = data_w27_f10_r;
  assign regf_w27_f12_wbus_o = (bus_w27_wren_s == 1'b1) ? regf_w27_f12_rbus_i & mem_wdata_i[13:12] : 2'h0;
  assign regf_w27_f12_wr_o   = (bus_w27_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w27_f14_rval_o = data_w27_f14_r;
  assign regf_w27_f16_wbus_o = (bus_w27_wren_s == 1'b1) ? regf_w27_f16_rbus_i & mem_wdata_i[17:16] : 2'h0;
  assign regf_w27_f16_wr_o   = (bus_w27_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w27_f18_rval_o = data_w27_f18_r;
  assign regf_w27_f20_wbus_o = (bus_w27_wren_s == 1'b1) ? regf_w27_f20_rbus_i & mem_wdata_i[21:20] : 2'h0;
  assign regf_w27_f20_wr_o   = (bus_w27_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w27_f22_rval_o = data_w27_f22_r;
  assign regf_w27_f24_wbus_o = (bus_w27_wren_s == 1'b1) ? regf_w27_f24_rbus_i & mem_wdata_i[25:24] : 2'h0;
  assign regf_w27_f24_wr_o   = (bus_w27_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w27_f26_rval_o = data_w27_f26_r;
  assign regf_w28_f20_wbus_o = (bus_w28_wren_s == 1'b1) ? regf_w28_f20_rbus_i & mem_wdata_i[21:20] : 2'h0;
  assign regf_w28_f20_wr_o   = (bus_w28_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w28_f22_rval_o = data_w28_f22_r;
  assign regf_w28_f24_wbus_o = (bus_w28_wren_s == 1'b1) ? regf_w28_f24_rbus_i & mem_wdata_i[25:24] : 2'h0;
  assign regf_w28_f24_wr_o   = (bus_w28_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w28_f26_rval_o = data_w28_f26_r;
  assign regf_w28_f28_wbus_o = (bus_w28_wren_s == 1'b1) ? regf_w28_f28_rbus_i & mem_wdata_i[29:28] : 2'h0;
  assign regf_w28_f28_wr_o   = (bus_w28_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w28_f30_rval_o = data_w28_f30_r;
  assign regf_w29_f0_wbus_o  = (bus_w29_wren_s == 1'b1) ? regf_w29_f0_rbus_i & mem_wdata_i[1:0] : 2'h0;
  assign regf_w29_f0_wr_o    = (bus_w29_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w29_f2_rval_o  = data_w29_f2_r;
  assign regf_w29_f4_wbus_o  = (bus_w29_wren_s == 1'b1) ? regf_w29_f4_rbus_i & mem_wdata_i[5:4] : 2'h0;
  assign regf_w29_f4_wr_o    = (bus_w29_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w29_f6_rval_o  = data_w29_f6_r;
  assign regf_w29_f8_wbus_o  = (bus_w29_wren_s == 1'b1) ? regf_w29_f8_rbus_i & mem_wdata_i[9:8] : 2'h0;
  assign regf_w29_f8_wr_o    = (bus_w29_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w29_f10_rval_o = data_w29_f10_r;
  assign regf_w29_f12_wbus_o = (bus_w29_wren_s == 1'b1) ? regf_w29_f12_rbus_i | ~mem_wdata_i[13:12] : 2'h0;
  assign regf_w29_f12_wr_o   = (bus_w29_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w29_f14_rval_o = data_w29_f14_r;
  assign regf_w29_f16_wbus_o = (bus_w29_wren_s == 1'b1) ? regf_w29_f16_rbus_i | ~mem_wdata_i[17:16] : 2'h0;
  assign regf_w29_f16_wr_o   = (bus_w29_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w29_f18_rval_o = data_w29_f18_r;
  assign regf_w29_f20_wbus_o = (bus_w29_wren_s == 1'b1) ? regf_w29_f20_rbus_i | ~mem_wdata_i[21:20] : 2'h0;
  assign regf_w29_f20_wr_o   = (bus_w29_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w29_f22_rval_o = data_w29_f22_r;
  assign regf_w29_f24_wbus_o = (bus_w29_wren_s == 1'b1) ? regf_w29_f24_rbus_i | ~mem_wdata_i[25:24] : 2'h0;
  assign regf_w29_f24_wr_o   = (bus_w29_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w29_f26_rval_o = data_w29_f26_r;
  assign regf_w29_f28_wbus_o = (bus_w29_wren_s == 1'b1) ? regf_w29_f28_rbus_i | ~mem_wdata_i[29:28] : 2'h0;
  assign regf_w29_f28_wr_o   = (bus_w29_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w29_f30_rval_o = data_w29_f30_r;
  assign regf_w30_f24_wbus_o = (bus_w30_wren_s == 1'b1) ? regf_w30_f24_rbus_i | ~mem_wdata_i[25:24] : 2'h0;
  assign regf_w30_f24_wr_o   = (bus_w30_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w30_f26_rval_o = data_w30_f26_r;
  assign regf_w30_f28_wbus_o = (bus_w30_wren_s == 1'b1) ? regf_w30_f28_rbus_i | ~mem_wdata_i[29:28] : 2'h0;
  assign regf_w30_f28_wr_o   = (bus_w30_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w30_f30_rval_o = data_w30_f30_r;
  assign regf_w31_f0_wbus_o  = (bus_w31_wren_s == 1'b1) ? regf_w31_f0_rbus_i | ~mem_wdata_i[1:0] : 2'h0;
  assign regf_w31_f0_wr_o    = (bus_w31_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w31_f2_rval_o  = data_w31_f2_r;
  assign regf_w31_f4_wbus_o  = (bus_w31_wren_s == 1'b1) ? regf_w31_f4_rbus_i | ~mem_wdata_i[5:4] : 2'h0;
  assign regf_w31_f4_wr_o    = (bus_w31_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w31_f6_rval_o  = data_w31_f6_r;
  assign regf_w31_f8_wbus_o  = (bus_w31_wren_s == 1'b1) ? regf_w31_f8_rbus_i | ~mem_wdata_i[9:8] : 2'h0;
  assign regf_w31_f8_wr_o    = (bus_w31_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w31_f10_rval_o = data_w31_f10_r;
  assign regf_w31_f12_wbus_o = (bus_w31_wren_s == 1'b1) ? regf_w31_f12_rbus_i | ~mem_wdata_i[13:12] : 2'h0;
  assign regf_w31_f12_wr_o   = (bus_w31_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w31_f14_rval_o = data_w31_f14_r;
  assign regf_w31_f16_wbus_o = (bus_w31_wren_s == 1'b1) ? regf_w31_f16_rbus_i & ~mem_wdata_i[17:16] : 2'h0;
  assign regf_w31_f16_wr_o   = (bus_w31_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w31_f18_rval_o = data_w31_f18_r;
  assign regf_w31_f20_wbus_o = (bus_w31_wren_s == 1'b1) ? regf_w31_f20_rbus_i & ~mem_wdata_i[21:20] : 2'h0;
  assign regf_w31_f20_wr_o   = (bus_w31_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w31_f22_rval_o = data_w31_f22_r;
  assign regf_w31_f24_wbus_o = (bus_w31_wren_s == 1'b1) ? regf_w31_f24_rbus_i & ~mem_wdata_i[25:24] : 2'h0;
  assign regf_w31_f24_wr_o   = (bus_w31_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w31_f26_rval_o = data_w31_f26_r;
  assign regf_w31_f28_wbus_o = (bus_w31_wren_s == 1'b1) ? regf_w31_f28_rbus_i & ~mem_wdata_i[29:28] : 2'h0;
  assign regf_w31_f28_wr_o   = (bus_w31_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w31_f30_rval_o = data_w31_f30_r;
  assign regf_w32_f0_wbus_o  = (bus_w32_wren_s == 1'b1) ? regf_w32_f0_rbus_i & ~mem_wdata_i[1:0] : 2'h0;
  assign regf_w32_f0_wr_o    = (bus_w32_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w32_f2_rval_o  = data_w32_f2_r;
  assign regf_w32_f28_wbus_o = (bus_w32_wren_s == 1'b1) ? regf_w32_f28_rbus_i & ~mem_wdata_i[29:28] : 2'h0;
  assign regf_w32_f28_wr_o   = (bus_w32_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w32_f30_rval_o = data_w32_f30_r;
  assign regf_w33_f0_wbus_o  = (bus_w33_wren_s == 1'b1) ? regf_w33_f0_rbus_i & ~mem_wdata_i[1:0] : 2'h0;
  assign regf_w33_f0_wr_o    = (bus_w33_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w33_f2_rval_o  = data_w33_f2_r;
  assign regf_w33_f4_wbus_o  = (bus_w33_wren_s == 1'b1) ? regf_w33_f4_rbus_i & ~mem_wdata_i[5:4] : 2'h0;
  assign regf_w33_f4_wr_o    = (bus_w33_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w33_f6_rval_o  = data_w33_f6_r;
  assign regf_w33_f8_wbus_o  = (bus_w33_wren_s == 1'b1) ? regf_w33_f8_rbus_i & ~mem_wdata_i[9:8] : 2'h0;
  assign regf_w33_f8_wr_o    = (bus_w33_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w33_f10_rval_o = data_w33_f10_r;
  assign regf_w33_f12_wbus_o = (bus_w33_wren_s == 1'b1) ? regf_w33_f12_rbus_i & ~mem_wdata_i[13:12] : 2'h0;
  assign regf_w33_f12_wr_o   = (bus_w33_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w33_f14_rval_o = data_w33_f14_r;
  assign regf_w33_f16_wbus_o = (bus_w33_wren_s == 1'b1) ? regf_w33_f16_rbus_i & ~mem_wdata_i[17:16] : 2'h0;
  assign regf_w33_f16_wr_o   = (bus_w33_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w33_f18_rval_o = data_w33_f18_r;
  assign regf_w33_f20_wbus_o = (bus_w33_wren_s == 1'b1) ? regf_w33_f20_rbus_i | mem_wdata_i[21:20] : 2'h0;
  assign regf_w33_f20_wr_o   = (bus_w33_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w33_f22_rval_o = data_w33_f22_r;
  assign regf_w33_f24_wbus_o = (bus_w33_wren_s == 1'b1) ? regf_w33_f24_rbus_i | mem_wdata_i[25:24] : 2'h0;
  assign regf_w33_f24_wr_o   = (bus_w33_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w33_f26_rval_o = data_w33_f26_r;
  assign regf_w33_f28_wbus_o = (bus_w33_wren_s == 1'b1) ? regf_w33_f28_rbus_i | mem_wdata_i[29:28] : 2'h0;
  assign regf_w33_f28_wr_o   = (bus_w33_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w33_f30_rval_o = data_w33_f30_r;
  assign regf_w34_f0_wbus_o  = (bus_w34_wren_s == 1'b1) ? regf_w34_f0_rbus_i | mem_wdata_i[1:0] : 2'h0;
  assign regf_w34_f0_wr_o    = (bus_w34_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w34_f2_rval_o  = data_w34_f2_r;
  assign regf_w34_f4_wbus_o  = (bus_w34_wren_s == 1'b1) ? regf_w34_f4_rbus_i | mem_wdata_i[5:4] : 2'h0;
  assign regf_w34_f4_wr_o    = (bus_w34_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w34_f6_rval_o  = data_w34_f6_r;
  assign regf_w35_f0_wbus_o  = (bus_w35_wren_s == 1'b1) ? regf_w35_f0_rbus_i | mem_wdata_i[1:0] : 2'h0;
  assign regf_w35_f0_wr_o    = (bus_w35_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w35_f2_rval_o  = data_w35_f2_r;
  assign regf_w35_f4_wbus_o  = (bus_w35_wren_s == 1'b1) ? regf_w35_f4_rbus_i | mem_wdata_i[5:4] : 2'h0;
  assign regf_w35_f4_wr_o    = (bus_w35_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w35_f6_rval_o  = data_w35_f6_r;
  assign regf_w35_f8_wbus_o  = (bus_w35_wren_s == 1'b1) ? regf_w35_f8_rbus_i | mem_wdata_i[9:8] : 2'h0;
  assign regf_w35_f8_wr_o    = (bus_w35_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w35_f10_rval_o = data_w35_f10_r;
  assign regf_w35_f12_wbus_o = (bus_w35_wren_s == 1'b1) ? regf_w35_f12_rbus_i | mem_wdata_i[13:12] : 2'h0;
  assign regf_w35_f12_wr_o   = (bus_w35_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w35_f14_rval_o = data_w35_f14_r;
  assign regf_w35_f16_wbus_o = (bus_w35_wren_s == 1'b1) ? regf_w35_f16_rbus_i | mem_wdata_i[17:16] : 2'h0;
  assign regf_w35_f16_wr_o   = (bus_w35_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w35_f18_rval_o = data_w35_f18_r;
  assign regf_w35_f20_wbus_o = (bus_w35_wren_s == 1'b1) ? regf_w35_f20_rbus_i | mem_wdata_i[21:20] : 2'h0;
  assign regf_w35_f20_wr_o   = (bus_w35_wren_s == 1'b1) ? 1'b1 : 1'b0;
  assign regf_w35_f22_rval_o = data_w35_f22_r;
  assign regf_w35_f24_wbus_o = ((bus_w35_wren_s == 1'b1) && (bus_w35_wronce_r == 1'b1)) ? mem_wdata_i[25:24] : 2'h0;
  assign regf_w35_f24_wr_o   = ((bus_w35_wren_s == 1'b1) && (bus_w35_wronce_r == 1'b1)) ? 1'b1 : 1'b0;
  assign regf_w35_f26_rval_o = data_w35_f26_r;
  assign regf_w35_f28_wbus_o = ((bus_w35_wren_s == 1'b1) && (bus_w35_wronce_r == 1'b1)) ? mem_wdata_i[29:28] : 2'h0;
  assign regf_w35_f28_wr_o   = ((bus_w35_wren_s == 1'b1) && (bus_w35_wronce_r == 1'b1)) ? 1'b1 : 1'b0;
  assign regf_w35_f30_rval_o = data_w35_f30_r;
  assign regf_w36_f0_wbus_o  = ((bus_w36_wren_s == 1'b1) && (bus_w36_wronce_r == 1'b1)) ? mem_wdata_i[1:0] : 2'h0;
  assign regf_w36_f0_wr_o    = ((bus_w36_wren_s == 1'b1) && (bus_w36_wronce_r == 1'b1)) ? 1'b1 : 1'b0;
  assign regf_w36_f2_rval_o  = data_w36_f2_r;
  assign regf_w36_f4_wbus_o  = ((bus_w36_wren_s == 1'b1) && (bus_w36_wronce_r == 1'b1)) ? mem_wdata_i[5:4] : 2'h0;
  assign regf_w36_f4_wr_o    = ((bus_w36_wren_s == 1'b1) && (bus_w36_wronce_r == 1'b1)) ? 1'b1 : 1'b0;
  assign regf_w36_f6_rval_o  = data_w36_f6_r;
  assign regf_w36_f8_wbus_o  = ((bus_w36_wren_s == 1'b1) && (bus_w36_wronce_r == 1'b1)) ? mem_wdata_i[9:8] : 2'h0;
  assign regf_w36_f8_wr_o    = ((bus_w36_wren_s == 1'b1) && (bus_w36_wronce_r == 1'b1)) ? 1'b1 : 1'b0;
  assign regf_w36_f10_rval_o = data_w36_f10_r;
  assign regf_w37_f4_wbus_o  = ((bus_w37_wren_s == 1'b1) && (bus_w37_wronce_r == 1'b1)) ? mem_wdata_i[5:4] : 2'h0;
  assign regf_w37_f4_wr_o    = ((bus_w37_wren_s == 1'b1) && (bus_w37_wronce_r == 1'b1)) ? 1'b1 : 1'b0;
  assign regf_w37_f6_rval_o  = data_w37_f6_r;
  assign regf_w37_f8_wbus_o  = ((bus_w37_wren_s == 1'b1) && (bus_w37_wronce_r == 1'b1)) ? mem_wdata_i[9:8] : 2'h0;
  assign regf_w37_f8_wr_o    = ((bus_w37_wren_s == 1'b1) && (bus_w37_wronce_r == 1'b1)) ? 1'b1 : 1'b0;
  assign regf_w37_f10_rval_o = data_w37_f10_r;
  assign regf_w37_f12_wbus_o = ((bus_w37_wren_s == 1'b1) && (bus_w37_wronce_r == 1'b1)) ? mem_wdata_i[13:12] : 2'h0;
  assign regf_w37_f12_wr_o   = ((bus_w37_wren_s == 1'b1) && (bus_w37_wronce_r == 1'b1)) ? 1'b1 : 1'b0;
  assign regf_w37_f14_rval_o = data_w37_f14_r;
  assign regf_w37_f16_wbus_o = ((bus_w37_wren_s == 1'b1) && (bus_w37_wronce_r == 1'b1)) ? mem_wdata_i[17:16] : 2'h0;
  assign regf_w37_f16_wr_o   = ((bus_w37_wren_s == 1'b1) && (bus_w37_wronce_r == 1'b1)) ? 1'b1 : 1'b0;
  assign regf_w37_f18_rval_o = data_w37_f18_r;
  assign regf_w37_f20_wbus_o = ((bus_w37_wren_s == 1'b1) && (bus_w37_wronce_r == 1'b1)) ? mem_wdata_i[21:20] : 2'h0;
  assign regf_w37_f20_wr_o   = ((bus_w37_wren_s == 1'b1) && (bus_w37_wronce_r == 1'b1)) ? 1'b1 : 1'b0;
  assign regf_w37_f22_rval_o = data_w37_f22_r;
  assign regf_w37_f24_wbus_o = ((bus_w37_wren_s == 1'b1) && (bus_w37_wronce_r == 1'b1)) ? mem_wdata_i[25:24] : 2'h0;
  assign regf_w37_f24_wr_o   = ((bus_w37_wren_s == 1'b1) && (bus_w37_wronce_r == 1'b1)) ? 1'b1 : 1'b0;
  assign regf_w37_f26_rval_o = data_w37_f26_r;

endmodule // full_regf

`default_nettype wire
`end_keywords
