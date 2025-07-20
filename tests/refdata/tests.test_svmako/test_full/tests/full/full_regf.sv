// =============================================================================
//
//   @generated @fully-generated
//
//   THIS FILE IS GENERATED!!! DO NOT EDIT MANUALLY. CHANGES ARE LOST.
//
// =============================================================================
//
//  MIT License
//
//  Copyright (c) 2024-2025 nbiotcloud
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
// Library:    tests
// Module:     full_regf
// Data Model: RegfMod
//             tests/test_svmako.py
//
//
// Addressing-Width: data
// Size:             1024x32 (4 KB)
//
//
// Offset       Word     Field    Bus/Core    Reset    Const    Impl
// dec / hex
// -----------  -------  -------  ----------  -------  -------  ------
// 0 / 0        w0
//              [1:0]    .f0      -/RC        0x0      False    core
//              [3:2]    .f2      -/RC        0x0      False    regf
//              [5:4]    .f4      -/RO        0x0      True     regf
//              [7:6]    .f6      -/RP        0x0      True     regf
//              [9:8]    .f8      -/RS        0x0      False    core
//              [11:10]  .f10     -/RS        0x0      False    regf
//              [13:12]  .f12     -/RT        0x0      False    core
//              [15:14]  .f14     -/RT        0x0      False    regf
//              [17:16]  .f16     -/RW        0x0      False    core
//              [19:18]  .f18     -/RW        0x0      False    regf
//              [21:20]  .f20     -/RW0C      0x0      False    core
//              [23:22]  .f22     -/RW0C      0x0      False    regf
//              [25:24]  .f24     -/RW0S      0x0      False    core
//              [27:26]  .f26     -/RW0S      0x0      False    regf
//              [29:28]  .f28     -/RW1C      0x0      False    core
//              [31:30]  .f30     -/RW1C      0x0      False    regf
// 1 / 1        w1
//              [1:0]    .f0      -/RW1S      0x0      False    core
//              [3:2]    .f2      -/RW1S      0x0      False    regf
//              [5:4]    .f4      -/RWL       0x0      False    core
//              [7:6]    .f6      -/RWL       0x0      False    regf
//              [9:8]    .f8      NA/RC       0x0      False    core
//              [11:10]  .f10     NA/RC       0x0      False    regf
//              [13:12]  .f12     NA/RO       0x0      True     regf
//              [15:14]  .f14     NA/RP       0x0      True     regf
//              [17:16]  .f16     NA/RS       0x0      False    core
//              [19:18]  .f18     NA/RS       0x0      False    regf
//              [21:20]  .f20     NA/RT       0x0      False    core
//              [23:22]  .f22     NA/RT       0x0      False    regf
//              [25:24]  .f24     NA/RW       0x0      False    core
//              [27:26]  .f26     NA/RW       0x0      False    regf
//              [29:28]  .f28     NA/RW0C     0x0      False    core
//              [31:30]  .f30     NA/RW0C     0x0      False    regf
// 2 / 2        w2
//              [1:0]    .f0      NA/RW0S     0x0      False    core
//              [3:2]    .f2      NA/RW0S     0x0      False    regf
//              [5:4]    .f4      NA/RW1C     0x0      False    core
//              [7:6]    .f6      NA/RW1C     0x0      False    regf
//              [9:8]    .f8      NA/RW1S     0x0      False    core
//              [11:10]  .f10     NA/RW1S     0x0      False    regf
//              [13:12]  .f12     NA/RWL      0x0      False    core
//              [15:14]  .f14     NA/RWL      0x0      False    regf
//              [17:16]  .f16     RC/NA       0x0      False    core
//              [19:18]  .f18     RC/NA       0x0      False    regf
//              [21:20]  .f20     RC/RC       0x0      False    core
//              [23:22]  .f22     RC/RC       0x0      False    regf
//              [25:24]  .f24     RC/RO       0x0      False    core
//              [27:26]  .f26     RC/RO       0x0      False    regf
//              [29:28]  .f28     RC/RP       0x0      False    core
//              [31:30]  .f30     RC/RP       0x0      False    regf
// 3 / 3        w3
//              [1:0]    .f0      RC/RS       0x0      False    core
//              [3:2]    .f2      RC/RS       0x0      False    regf
//              [5:4]    .f4      RC/RT       0x0      False    core
//              [7:6]    .f6      RC/RT       0x0      False    regf
//              [9:8]    .f8      RC/RW       0x0      False    core
//              [11:10]  .f10     RC/RW       0x0      False    regf
//              [13:12]  .f12     RC/RW0C     0x0      False    core
//              [15:14]  .f14     RC/RW0C     0x0      False    regf
//              [17:16]  .f16     RC/RW0S     0x0      False    core
//              [19:18]  .f18     RC/RW0S     0x0      False    regf
//              [21:20]  .f20     RC/RW1C     0x0      False    core
//              [23:22]  .f22     RC/RW1C     0x0      False    regf
//              [25:24]  .f24     RC/RW1S     0x0      False    core
//              [27:26]  .f26     RC/RW1S     0x0      False    regf
//              [29:28]  .f28     RC/RWL      0x0      False    core
//              [31:30]  .f30     RC/RWL      0x0      False    regf
// 4 / 4        w4
//              [1:0]    .f0      RC/W0C      0x0      False    core
//              [3:2]    .f2      RC/W0C      0x0      False    regf
//              [5:4]    .f4      RC/W0S      0x0      False    core
//              [7:6]    .f6      RC/W0S      0x0      False    regf
//              [9:8]    .f8      RC/W1C      0x0      False    core
//              [11:10]  .f10     RC/W1C      0x0      False    regf
//              [13:12]  .f12     RC/W1S      0x0      False    core
//              [15:14]  .f14     RC/W1S      0x0      False    regf
//              [17:16]  .f16     RC/WL       0x0      False    core
//              [19:18]  .f18     RC/WL       0x0      False    regf
//              [21:20]  .f20     RC/WO       0x0      False    core
//              [23:22]  .f22     RC/WO       0x0      False    regf
//              [25:24]  .f24     RO/NA       0x0      True     regf
//              [27:26]  .f26     RO/RC       0x0      False    core
//              [29:28]  .f28     RO/RC       0x0      False    regf
//              [31:30]  .f30     RO/RO       0x0      True     regf
// 5 / 5        w5
//              [1:0]    .f0      RO/RP       0x0      True     regf
//              [3:2]    .f2      RO/RS       0x0      False    core
//              [5:4]    .f4      RO/RS       0x0      False    regf
//              [7:6]    .f6      RO/RT       0x0      False    core
//              [9:8]    .f8      RO/RT       0x0      False    regf
//              [11:10]  .f10     RO/RW       0x0      False    core
//              [13:12]  .f12     RO/RW       0x0      False    regf
//              [15:14]  .f14     RO/RW0C     0x0      False    core
//              [17:16]  .f16     RO/RW0C     0x0      False    regf
//              [19:18]  .f18     RO/RW0S     0x0      False    core
//              [21:20]  .f20     RO/RW0S     0x0      False    regf
//              [23:22]  .f22     RO/RW1C     0x0      False    core
//              [25:24]  .f24     RO/RW1C     0x0      False    regf
//              [27:26]  .f26     RO/RW1S     0x0      False    core
//              [29:28]  .f28     RO/RW1S     0x0      False    regf
//              [31:30]  .f30     RO/RWL      0x0      False    core
// 6 / 6        w6
//              [1:0]    .f0      RO/RWL      0x0      False    regf
//              [3:2]    .f2      RO/W0C      0x0      False    core
//              [5:4]    .f4      RO/W0C      0x0      False    regf
//              [7:6]    .f6      RO/W0S      0x0      False    core
//              [9:8]    .f8      RO/W0S      0x0      False    regf
//              [11:10]  .f10     RO/W1C      0x0      False    core
//              [13:12]  .f12     RO/W1C      0x0      False    regf
//              [15:14]  .f14     RO/W1S      0x0      False    core
//              [17:16]  .f16     RO/W1S      0x0      False    regf
//              [19:18]  .f18     RO/WL       0x0      False    core
//              [21:20]  .f20     RO/WL       0x0      False    regf
//              [23:22]  .f22     RO/WO       0x0      False    core
//              [25:24]  .f24     RO/WO       0x0      False    regf
//              [27:26]  .f26     RP/NA       0x0      True     regf
//              [29:28]  .f28     RP/RC       0x0      False    core
//              [31:30]  .f30     RP/RC       0x0      False    regf
// 7 / 7        w7
//              [1:0]    .f0      RP/RO       0x0      True     regf
//              [3:2]    .f2      RP/RP       0x0      True     regf
//              [5:4]    .f4      RP/RS       0x0      False    core
//              [7:6]    .f6      RP/RS       0x0      False    regf
//              [9:8]    .f8      RP/RT       0x0      False    core
//              [11:10]  .f10     RP/RT       0x0      False    regf
//              [13:12]  .f12     RP/RW       0x0      False    core
//              [15:14]  .f14     RP/RW       0x0      False    regf
//              [17:16]  .f16     RP/RW0C     0x0      False    core
//              [19:18]  .f18     RP/RW0C     0x0      False    regf
//              [21:20]  .f20     RP/RW0S     0x0      False    core
//              [23:22]  .f22     RP/RW0S     0x0      False    regf
//              [25:24]  .f24     RP/RW1C     0x0      False    core
//              [27:26]  .f26     RP/RW1C     0x0      False    regf
//              [29:28]  .f28     RP/RW1S     0x0      False    core
//              [31:30]  .f30     RP/RW1S     0x0      False    regf
// 8 / 8        w8
//              [1:0]    .f0      RP/RWL      0x0      False    core
//              [3:2]    .f2      RP/RWL      0x0      False    regf
//              [5:4]    .f4      RP/W0C      0x0      False    core
//              [7:6]    .f6      RP/W0C      0x0      False    regf
//              [9:8]    .f8      RP/W0S      0x0      False    core
//              [11:10]  .f10     RP/W0S      0x0      False    regf
//              [13:12]  .f12     RP/W1C      0x0      False    core
//              [15:14]  .f14     RP/W1C      0x0      False    regf
//              [17:16]  .f16     RP/W1S      0x0      False    core
//              [19:18]  .f18     RP/W1S      0x0      False    regf
//              [21:20]  .f20     RP/WL       0x0      False    core
//              [23:22]  .f22     RP/WL       0x0      False    regf
//              [25:24]  .f24     RP/WO       0x0      False    core
//              [27:26]  .f26     RP/WO       0x0      False    regf
//              [29:28]  .f28     RS/NA       0x0      False    core
//              [31:30]  .f30     RS/NA       0x0      False    regf
// 9 / 9        w9
//              [1:0]    .f0      RS/RC       0x0      False    core
//              [3:2]    .f2      RS/RC       0x0      False    regf
//              [5:4]    .f4      RS/RO       0x0      False    core
//              [7:6]    .f6      RS/RO       0x0      False    regf
//              [9:8]    .f8      RS/RP       0x0      False    core
//              [11:10]  .f10     RS/RP       0x0      False    regf
//              [13:12]  .f12     RS/RS       0x0      False    core
//              [15:14]  .f14     RS/RS       0x0      False    regf
//              [17:16]  .f16     RS/RT       0x0      False    core
//              [19:18]  .f18     RS/RT       0x0      False    regf
//              [21:20]  .f20     RS/RW       0x0      False    core
//              [23:22]  .f22     RS/RW       0x0      False    regf
//              [25:24]  .f24     RS/RW0C     0x0      False    core
//              [27:26]  .f26     RS/RW0C     0x0      False    regf
//              [29:28]  .f28     RS/RW0S     0x0      False    core
//              [31:30]  .f30     RS/RW0S     0x0      False    regf
// 10 / A       w10
//              [1:0]    .f0      RS/RW1C     0x0      False    core
//              [3:2]    .f2      RS/RW1C     0x0      False    regf
//              [5:4]    .f4      RS/RW1S     0x0      False    core
//              [7:6]    .f6      RS/RW1S     0x0      False    regf
//              [9:8]    .f8      RS/RWL      0x0      False    core
//              [11:10]  .f10     RS/RWL      0x0      False    regf
//              [13:12]  .f12     RS/W0C      0x0      False    core
//              [15:14]  .f14     RS/W0C      0x0      False    regf
//              [17:16]  .f16     RS/W0S      0x0      False    core
//              [19:18]  .f18     RS/W0S      0x0      False    regf
//              [21:20]  .f20     RS/W1C      0x0      False    core
//              [23:22]  .f22     RS/W1C      0x0      False    regf
//              [25:24]  .f24     RS/W1S      0x0      False    core
//              [27:26]  .f26     RS/W1S      0x0      False    regf
//              [29:28]  .f28     RS/WL       0x0      False    core
//              [31:30]  .f30     RS/WL       0x0      False    regf
// 11 / B       w11
//              [1:0]    .f0      RS/WO       0x0      False    core
//              [3:2]    .f2      RS/WO       0x0      False    regf
//              [5:4]    .f4      RT/NA       0x0      False    core
//              [7:6]    .f6      RT/NA       0x0      False    regf
//              [9:8]    .f8      RT/RC       0x0      False    core
//              [11:10]  .f10     RT/RC       0x0      False    regf
//              [13:12]  .f12     RT/RO       0x0      False    core
//              [15:14]  .f14     RT/RO       0x0      False    regf
//              [17:16]  .f16     RT/RP       0x0      False    core
//              [19:18]  .f18     RT/RP       0x0      False    regf
//              [21:20]  .f20     RT/RS       0x0      False    core
//              [23:22]  .f22     RT/RS       0x0      False    regf
//              [25:24]  .f24     RT/RT       0x0      False    core
//              [27:26]  .f26     RT/RT       0x0      False    regf
//              [29:28]  .f28     RT/RW       0x0      False    core
//              [31:30]  .f30     RT/RW       0x0      False    regf
// 12 / C       w12
//              [1:0]    .f0      RT/RW0C     0x0      False    core
//              [3:2]    .f2      RT/RW0C     0x0      False    regf
//              [5:4]    .f4      RT/RW0S     0x0      False    core
//              [7:6]    .f6      RT/RW0S     0x0      False    regf
//              [9:8]    .f8      RT/RW1C     0x0      False    core
//              [11:10]  .f10     RT/RW1C     0x0      False    regf
//              [13:12]  .f12     RT/RW1S     0x0      False    core
//              [15:14]  .f14     RT/RW1S     0x0      False    regf
//              [17:16]  .f16     RT/RWL      0x0      False    core
//              [19:18]  .f18     RT/RWL      0x0      False    regf
//              [21:20]  .f20     RT/W0C      0x0      False    core
//              [23:22]  .f22     RT/W0C      0x0      False    regf
//              [25:24]  .f24     RT/W0S      0x0      False    core
//              [27:26]  .f26     RT/W0S      0x0      False    regf
//              [29:28]  .f28     RT/W1C      0x0      False    core
//              [31:30]  .f30     RT/W1C      0x0      False    regf
// 13 / D       w13
//              [1:0]    .f0      RT/W1S      0x0      False    core
//              [3:2]    .f2      RT/W1S      0x0      False    regf
//              [5:4]    .f4      RT/WL       0x0      False    core
//              [7:6]    .f6      RT/WL       0x0      False    regf
//              [9:8]    .f8      RT/WO       0x0      False    core
//              [11:10]  .f10     RT/WO       0x0      False    regf
//              [13:12]  .f12     RW/NA       0x0      False    core
//              [15:14]  .f14     RW/NA       0x0      False    regf
//              [17:16]  .f16     RW/RC       0x0      False    core
//              [19:18]  .f18     RW/RC       0x0      False    regf
//              [21:20]  .f20     RW/RO       0x0      False    core
//              [23:22]  .f22     RW/RO       0x0      False    regf
//              [25:24]  .f24     RW/RP       0x0      False    core
//              [27:26]  .f26     RW/RP       0x0      False    regf
//              [29:28]  .f28     RW/RS       0x0      False    core
//              [31:30]  .f30     RW/RS       0x0      False    regf
// 14 / E       w14
//              [1:0]    .f0      RW/RT       0x0      False    core
//              [3:2]    .f2      RW/RT       0x0      False    regf
//              [5:4]    .f4      RW/RW       0x0      False    core
//              [7:6]    .f6      RW/RW       0x0      False    regf
//              [9:8]    .f8      RW/RW0C     0x0      False    core
//              [11:10]  .f10     RW/RW0C     0x0      False    regf
//              [13:12]  .f12     RW/RW0S     0x0      False    core
//              [15:14]  .f14     RW/RW0S     0x0      False    regf
//              [17:16]  .f16     RW/RW1C     0x0      False    core
//              [19:18]  .f18     RW/RW1C     0x0      False    regf
//              [21:20]  .f20     RW/RW1S     0x0      False    core
//              [23:22]  .f22     RW/RW1S     0x0      False    regf
//              [25:24]  .f24     RW/RWL      0x0      False    core
//              [27:26]  .f26     RW/RWL      0x0      False    regf
//              [29:28]  .f28     RW/W0C      0x0      False    core
//              [31:30]  .f30     RW/W0C      0x0      False    regf
// 15 / F       w15
//              [1:0]    .f0      RW/W0S      0x0      False    core
//              [3:2]    .f2      RW/W0S      0x0      False    regf
//              [5:4]    .f4      RW/W1C      0x0      False    core
//              [7:6]    .f6      RW/W1C      0x0      False    regf
//              [9:8]    .f8      RW/W1S      0x0      False    core
//              [11:10]  .f10     RW/W1S      0x0      False    regf
//              [13:12]  .f12     RW/WL       0x0      False    core
//              [15:14]  .f14     RW/WL       0x0      False    regf
//              [17:16]  .f16     RW/WO       0x0      False    core
//              [19:18]  .f18     RW/WO       0x0      False    regf
//              [21:20]  .f20     RW0C/NA     0x0      False    core
//              [23:22]  .f22     RW0C/NA     0x0      False    regf
//              [25:24]  .f24     RW0C/RC     0x0      False    core
//              [27:26]  .f26     RW0C/RC     0x0      False    regf
//              [29:28]  .f28     RW0C/RO     0x0      False    core
//              [31:30]  .f30     RW0C/RO     0x0      False    regf
// 16 / 10      w16
//              [1:0]    .f0      RW0C/RP     0x0      False    core
//              [3:2]    .f2      RW0C/RP     0x0      False    regf
//              [5:4]    .f4      RW0C/RS     0x0      False    core
//              [7:6]    .f6      RW0C/RS     0x0      False    regf
//              [9:8]    .f8      RW0C/RT     0x0      False    core
//              [11:10]  .f10     RW0C/RT     0x0      False    regf
//              [13:12]  .f12     RW0C/RW     0x0      False    core
//              [15:14]  .f14     RW0C/RW     0x0      False    regf
//              [17:16]  .f16     RW0C/RW0C   0x0      False    core
//              [19:18]  .f18     RW0C/RW0C   0x0      False    regf
//              [21:20]  .f20     RW0C/RW0S   0x0      False    core
//              [23:22]  .f22     RW0C/RW0S   0x0      False    regf
//              [25:24]  .f24     RW0C/RW1C   0x0      False    core
//              [27:26]  .f26     RW0C/RW1C   0x0      False    regf
//              [29:28]  .f28     RW0C/RW1S   0x0      False    core
//              [31:30]  .f30     RW0C/RW1S   0x0      False    regf
// 17 / 11      w17
//              [1:0]    .f0      RW0C/RWL    0x0      False    core
//              [3:2]    .f2      RW0C/RWL    0x0      False    regf
//              [5:4]    .f4      RW0C/W0C    0x0      False    core
//              [7:6]    .f6      RW0C/W0C    0x0      False    regf
//              [9:8]    .f8      RW0C/W0S    0x0      False    core
//              [11:10]  .f10     RW0C/W0S    0x0      False    regf
//              [13:12]  .f12     RW0C/W1C    0x0      False    core
//              [15:14]  .f14     RW0C/W1C    0x0      False    regf
//              [17:16]  .f16     RW0C/W1S    0x0      False    core
//              [19:18]  .f18     RW0C/W1S    0x0      False    regf
//              [21:20]  .f20     RW0C/WL     0x0      False    core
//              [23:22]  .f22     RW0C/WL     0x0      False    regf
//              [25:24]  .f24     RW0C/WO     0x0      False    core
//              [27:26]  .f26     RW0C/WO     0x0      False    regf
//              [29:28]  .f28     RW0S/NA     0x0      False    core
//              [31:30]  .f30     RW0S/NA     0x0      False    regf
// 18 / 12      w18
//              [1:0]    .f0      RW0S/RC     0x0      False    core
//              [3:2]    .f2      RW0S/RC     0x0      False    regf
//              [5:4]    .f4      RW0S/RO     0x0      False    core
//              [7:6]    .f6      RW0S/RO     0x0      False    regf
//              [9:8]    .f8      RW0S/RP     0x0      False    core
//              [11:10]  .f10     RW0S/RP     0x0      False    regf
//              [13:12]  .f12     RW0S/RS     0x0      False    core
//              [15:14]  .f14     RW0S/RS     0x0      False    regf
//              [17:16]  .f16     RW0S/RT     0x0      False    core
//              [19:18]  .f18     RW0S/RT     0x0      False    regf
//              [21:20]  .f20     RW0S/RW     0x0      False    core
//              [23:22]  .f22     RW0S/RW     0x0      False    regf
//              [25:24]  .f24     RW0S/RW0C   0x0      False    core
//              [27:26]  .f26     RW0S/RW0C   0x0      False    regf
//              [29:28]  .f28     RW0S/RW0S   0x0      False    core
//              [31:30]  .f30     RW0S/RW0S   0x0      False    regf
// 19 / 13      w19
//              [1:0]    .f0      RW0S/RW1C   0x0      False    core
//              [3:2]    .f2      RW0S/RW1C   0x0      False    regf
//              [5:4]    .f4      RW0S/RW1S   0x0      False    core
//              [7:6]    .f6      RW0S/RW1S   0x0      False    regf
//              [9:8]    .f8      RW0S/RWL    0x0      False    core
//              [11:10]  .f10     RW0S/RWL    0x0      False    regf
//              [13:12]  .f12     RW0S/W0C    0x0      False    core
//              [15:14]  .f14     RW0S/W0C    0x0      False    regf
//              [17:16]  .f16     RW0S/W0S    0x0      False    core
//              [19:18]  .f18     RW0S/W0S    0x0      False    regf
//              [21:20]  .f20     RW0S/W1C    0x0      False    core
//              [23:22]  .f22     RW0S/W1C    0x0      False    regf
//              [25:24]  .f24     RW0S/W1S    0x0      False    core
//              [27:26]  .f26     RW0S/W1S    0x0      False    regf
//              [29:28]  .f28     RW0S/WL     0x0      False    core
//              [31:30]  .f30     RW0S/WL     0x0      False    regf
// 20 / 14      w20
//              [1:0]    .f0      RW0S/WO     0x0      False    core
//              [3:2]    .f2      RW0S/WO     0x0      False    regf
//              [5:4]    .f4      RW1C/NA     0x0      False    core
//              [7:6]    .f6      RW1C/NA     0x0      False    regf
//              [9:8]    .f8      RW1C/RC     0x0      False    core
//              [11:10]  .f10     RW1C/RC     0x0      False    regf
//              [13:12]  .f12     RW1C/RO     0x0      False    core
//              [15:14]  .f14     RW1C/RO     0x0      False    regf
//              [17:16]  .f16     RW1C/RP     0x0      False    core
//              [19:18]  .f18     RW1C/RP     0x0      False    regf
//              [21:20]  .f20     RW1C/RS     0x0      False    core
//              [23:22]  .f22     RW1C/RS     0x0      False    regf
//              [25:24]  .f24     RW1C/RT     0x0      False    core
//              [27:26]  .f26     RW1C/RT     0x0      False    regf
//              [29:28]  .f28     RW1C/RW     0x0      False    core
//              [31:30]  .f30     RW1C/RW     0x0      False    regf
// 21 / 15      w21
//              [1:0]    .f0      RW1C/RW0C   0x0      False    core
//              [3:2]    .f2      RW1C/RW0C   0x0      False    regf
//              [5:4]    .f4      RW1C/RW0S   0x0      False    core
//              [7:6]    .f6      RW1C/RW0S   0x0      False    regf
//              [9:8]    .f8      RW1C/RW1C   0x0      False    core
//              [11:10]  .f10     RW1C/RW1C   0x0      False    regf
//              [13:12]  .f12     RW1C/RW1S   0x0      False    core
//              [15:14]  .f14     RW1C/RW1S   0x0      False    regf
//              [17:16]  .f16     RW1C/RWL    0x0      False    core
//              [19:18]  .f18     RW1C/RWL    0x0      False    regf
//              [21:20]  .f20     RW1C/W0C    0x0      False    core
//              [23:22]  .f22     RW1C/W0C    0x0      False    regf
//              [25:24]  .f24     RW1C/W0S    0x0      False    core
//              [27:26]  .f26     RW1C/W0S    0x0      False    regf
//              [29:28]  .f28     RW1C/W1C    0x0      False    core
//              [31:30]  .f30     RW1C/W1C    0x0      False    regf
// 22 / 16      w22
//              [1:0]    .f0      RW1C/W1S    0x0      False    core
//              [3:2]    .f2      RW1C/W1S    0x0      False    regf
//              [5:4]    .f4      RW1C/WL     0x0      False    core
//              [7:6]    .f6      RW1C/WL     0x0      False    regf
//              [9:8]    .f8      RW1C/WO     0x0      False    core
//              [11:10]  .f10     RW1C/WO     0x0      False    regf
//              [13:12]  .f12     RW1S/NA     0x0      False    core
//              [15:14]  .f14     RW1S/NA     0x0      False    regf
//              [17:16]  .f16     RW1S/RC     0x0      False    core
//              [19:18]  .f18     RW1S/RC     0x0      False    regf
//              [21:20]  .f20     RW1S/RO     0x0      False    core
//              [23:22]  .f22     RW1S/RO     0x0      False    regf
//              [25:24]  .f24     RW1S/RP     0x0      False    core
//              [27:26]  .f26     RW1S/RP     0x0      False    regf
//              [29:28]  .f28     RW1S/RS     0x0      False    core
//              [31:30]  .f30     RW1S/RS     0x0      False    regf
// 23 / 17      w23
//              [1:0]    .f0      RW1S/RT     0x0      False    core
//              [3:2]    .f2      RW1S/RT     0x0      False    regf
//              [5:4]    .f4      RW1S/RW     0x0      False    core
//              [7:6]    .f6      RW1S/RW     0x0      False    regf
//              [9:8]    .f8      RW1S/RW0C   0x0      False    core
//              [11:10]  .f10     RW1S/RW0C   0x0      False    regf
//              [13:12]  .f12     RW1S/RW0S   0x0      False    core
//              [15:14]  .f14     RW1S/RW0S   0x0      False    regf
//              [17:16]  .f16     RW1S/RW1C   0x0      False    core
//              [19:18]  .f18     RW1S/RW1C   0x0      False    regf
//              [21:20]  .f20     RW1S/RW1S   0x0      False    core
//              [23:22]  .f22     RW1S/RW1S   0x0      False    regf
//              [25:24]  .f24     RW1S/RWL    0x0      False    core
//              [27:26]  .f26     RW1S/RWL    0x0      False    regf
//              [29:28]  .f28     RW1S/W0C    0x0      False    core
//              [31:30]  .f30     RW1S/W0C    0x0      False    regf
// 24 / 18      w24
//              [1:0]    .f0      RW1S/W0S    0x0      False    core
//              [3:2]    .f2      RW1S/W0S    0x0      False    regf
//              [5:4]    .f4      RW1S/W1C    0x0      False    core
//              [7:6]    .f6      RW1S/W1C    0x0      False    regf
//              [9:8]    .f8      RW1S/W1S    0x0      False    core
//              [11:10]  .f10     RW1S/W1S    0x0      False    regf
//              [13:12]  .f12     RW1S/WL     0x0      False    core
//              [15:14]  .f14     RW1S/WL     0x0      False    regf
//              [17:16]  .f16     RW1S/WO     0x0      False    core
//              [19:18]  .f18     RW1S/WO     0x0      False    regf
//              [21:20]  .f20     RWL/NA      0x0      False    core
//              [23:22]  .f22     RWL/NA      0x0      False    regf
//              [25:24]  .f24     RWL/RC      0x0      False    core
//              [27:26]  .f26     RWL/RC      0x0      False    regf
//              [29:28]  .f28     RWL/RO      0x0      False    core
//              [31:30]  .f30     RWL/RO      0x0      False    regf
// 25 / 19      w25
//              [1:0]    .f0      RWL/RP      0x0      False    core
//              [3:2]    .f2      RWL/RP      0x0      False    regf
//              [5:4]    .f4      RWL/RS      0x0      False    core
//              [7:6]    .f6      RWL/RS      0x0      False    regf
//              [9:8]    .f8      RWL/RT      0x0      False    core
//              [11:10]  .f10     RWL/RT      0x0      False    regf
//              [13:12]  .f12     RWL/RW      0x0      False    core
//              [15:14]  .f14     RWL/RW      0x0      False    regf
//              [17:16]  .f16     RWL/RW0C    0x0      False    core
//              [19:18]  .f18     RWL/RW0C    0x0      False    regf
//              [21:20]  .f20     RWL/RW0S    0x0      False    core
//              [23:22]  .f22     RWL/RW0S    0x0      False    regf
//              [25:24]  .f24     RWL/RW1C    0x0      False    core
//              [27:26]  .f26     RWL/RW1C    0x0      False    regf
//              [29:28]  .f28     RWL/RW1S    0x0      False    core
//              [31:30]  .f30     RWL/RW1S    0x0      False    regf
// 26 / 1A      w26
//              [1:0]    .f0      RWL/RWL     0x0      False    core
//              [3:2]    .f2      RWL/RWL     0x0      False    regf
//              [5:4]    .f4      RWL/W0C     0x0      False    core
//              [7:6]    .f6      RWL/W0C     0x0      False    regf
//              [9:8]    .f8      RWL/W0S     0x0      False    core
//              [11:10]  .f10     RWL/W0S     0x0      False    regf
//              [13:12]  .f12     RWL/W1C     0x0      False    core
//              [15:14]  .f14     RWL/W1C     0x0      False    regf
//              [17:16]  .f16     RWL/W1S     0x0      False    core
//              [19:18]  .f18     RWL/W1S     0x0      False    regf
//              [21:20]  .f20     RWL/WL      0x0      False    core
//              [23:22]  .f22     RWL/WL      0x0      False    regf
//              [25:24]  .f24     RWL/WO      0x0      False    core
//              [27:26]  .f26     RWL/WO      0x0      False    regf
//              [29:28]  .f28     W0C/RC      0x0      False    core
//              [31:30]  .f30     W0C/RC      0x0      False    regf
// 27 / 1B      w27
//              [1:0]    .f0      W0C/RO      0x0      False    core
//              [3:2]    .f2      W0C/RO      0x0      False    regf
//              [5:4]    .f4      W0C/RP      0x0      False    core
//              [7:6]    .f6      W0C/RP      0x0      False    regf
//              [9:8]    .f8      W0C/RS      0x0      False    core
//              [11:10]  .f10     W0C/RS      0x0      False    regf
//              [13:12]  .f12     W0C/RT      0x0      False    core
//              [15:14]  .f14     W0C/RT      0x0      False    regf
//              [17:16]  .f16     W0C/RW      0x0      False    core
//              [19:18]  .f18     W0C/RW      0x0      False    regf
//              [21:20]  .f20     W0C/RW0C    0x0      False    core
//              [23:22]  .f22     W0C/RW0C    0x0      False    regf
//              [25:24]  .f24     W0C/RW0S    0x0      False    core
//              [27:26]  .f26     W0C/RW0S    0x0      False    regf
//              [29:28]  .f28     W0C/RW1C    0x0      False    core
//              [31:30]  .f30     W0C/RW1C    0x0      False    regf
// 28 / 1C      w28
//              [1:0]    .f0      W0C/RW1S    0x0      False    core
//              [3:2]    .f2      W0C/RW1S    0x0      False    regf
//              [5:4]    .f4      W0C/RWL     0x0      False    core
//              [7:6]    .f6      W0C/RWL     0x0      False    regf
//              [9:8]    .f8      W0S/RC      0x0      False    core
//              [11:10]  .f10     W0S/RC      0x0      False    regf
//              [13:12]  .f12     W0S/RO      0x0      False    core
//              [15:14]  .f14     W0S/RO      0x0      False    regf
//              [17:16]  .f16     W0S/RP      0x0      False    core
//              [19:18]  .f18     W0S/RP      0x0      False    regf
//              [21:20]  .f20     W0S/RS      0x0      False    core
//              [23:22]  .f22     W0S/RS      0x0      False    regf
//              [25:24]  .f24     W0S/RT      0x0      False    core
//              [27:26]  .f26     W0S/RT      0x0      False    regf
//              [29:28]  .f28     W0S/RW      0x0      False    core
//              [31:30]  .f30     W0S/RW      0x0      False    regf
// 29 / 1D      w29
//              [1:0]    .f0      W0S/RW0C    0x0      False    core
//              [3:2]    .f2      W0S/RW0C    0x0      False    regf
//              [5:4]    .f4      W0S/RW0S    0x0      False    core
//              [7:6]    .f6      W0S/RW0S    0x0      False    regf
//              [9:8]    .f8      W0S/RW1C    0x0      False    core
//              [11:10]  .f10     W0S/RW1C    0x0      False    regf
//              [13:12]  .f12     W0S/RW1S    0x0      False    core
//              [15:14]  .f14     W0S/RW1S    0x0      False    regf
//              [17:16]  .f16     W0S/RWL     0x0      False    core
//              [19:18]  .f18     W0S/RWL     0x0      False    regf
//              [21:20]  .f20     W1C/RC      0x0      False    core
//              [23:22]  .f22     W1C/RC      0x0      False    regf
//              [25:24]  .f24     W1C/RO      0x0      False    core
//              [27:26]  .f26     W1C/RO      0x0      False    regf
//              [29:28]  .f28     W1C/RP      0x0      False    core
//              [31:30]  .f30     W1C/RP      0x0      False    regf
// 30 / 1E      w30
//              [1:0]    .f0      W1C/RS      0x0      False    core
//              [3:2]    .f2      W1C/RS      0x0      False    regf
//              [5:4]    .f4      W1C/RT      0x0      False    core
//              [7:6]    .f6      W1C/RT      0x0      False    regf
//              [9:8]    .f8      W1C/RW      0x0      False    core
//              [11:10]  .f10     W1C/RW      0x0      False    regf
//              [13:12]  .f12     W1C/RW0C    0x0      False    core
//              [15:14]  .f14     W1C/RW0C    0x0      False    regf
//              [17:16]  .f16     W1C/RW0S    0x0      False    core
//              [19:18]  .f18     W1C/RW0S    0x0      False    regf
//              [21:20]  .f20     W1C/RW1C    0x0      False    core
//              [23:22]  .f22     W1C/RW1C    0x0      False    regf
//              [25:24]  .f24     W1C/RW1S    0x0      False    core
//              [27:26]  .f26     W1C/RW1S    0x0      False    regf
//              [29:28]  .f28     W1C/RWL     0x0      False    core
//              [31:30]  .f30     W1C/RWL     0x0      False    regf
// 31 / 1F      w31
//              [1:0]    .f0      W1S/RC      0x0      False    core
//              [3:2]    .f2      W1S/RC      0x0      False    regf
//              [5:4]    .f4      W1S/RO      0x0      False    core
//              [7:6]    .f6      W1S/RO      0x0      False    regf
//              [9:8]    .f8      W1S/RP      0x0      False    core
//              [11:10]  .f10     W1S/RP      0x0      False    regf
//              [13:12]  .f12     W1S/RS      0x0      False    core
//              [15:14]  .f14     W1S/RS      0x0      False    regf
//              [17:16]  .f16     W1S/RT      0x0      False    core
//              [19:18]  .f18     W1S/RT      0x0      False    regf
//              [21:20]  .f20     W1S/RW      0x0      False    core
//              [23:22]  .f22     W1S/RW      0x0      False    regf
//              [25:24]  .f24     W1S/RW0C    0x0      False    core
//              [27:26]  .f26     W1S/RW0C    0x0      False    regf
//              [29:28]  .f28     W1S/RW0S    0x0      False    core
//              [31:30]  .f30     W1S/RW0S    0x0      False    regf
// 32 / 20      w32
//              [1:0]    .f0      W1S/RW1C    0x0      False    core
//              [3:2]    .f2      W1S/RW1C    0x0      False    regf
//              [5:4]    .f4      W1S/RW1S    0x0      False    core
//              [7:6]    .f6      W1S/RW1S    0x0      False    regf
//              [9:8]    .f8      W1S/RWL     0x0      False    core
//              [11:10]  .f10     W1S/RWL     0x0      False    regf
//              [13:12]  .f12     WL/RC       0x0      False    core
//              [15:14]  .f14     WL/RC       0x0      False    regf
//              [17:16]  .f16     WL/RO       0x0      False    core
//              [19:18]  .f18     WL/RO       0x0      False    regf
//              [21:20]  .f20     WL/RP       0x0      False    core
//              [23:22]  .f22     WL/RP       0x0      False    regf
//              [25:24]  .f24     WL/RS       0x0      False    core
//              [27:26]  .f26     WL/RS       0x0      False    regf
//              [29:28]  .f28     WL/RT       0x0      False    core
//              [31:30]  .f30     WL/RT       0x0      False    regf
// 33 / 21      w33
//              [1:0]    .f0      WL/RW       0x0      False    core
//              [3:2]    .f2      WL/RW       0x0      False    regf
//              [5:4]    .f4      WL/RW0C     0x0      False    core
//              [7:6]    .f6      WL/RW0C     0x0      False    regf
//              [9:8]    .f8      WL/RW0S     0x0      False    core
//              [11:10]  .f10     WL/RW0S     0x0      False    regf
//              [13:12]  .f12     WL/RW1C     0x0      False    core
//              [15:14]  .f14     WL/RW1C     0x0      False    regf
//              [17:16]  .f16     WL/RW1S     0x0      False    core
//              [19:18]  .f18     WL/RW1S     0x0      False    regf
//              [21:20]  .f20     WL/RWL      0x0      False    core
//              [23:22]  .f22     WL/RWL      0x0      False    regf
//              [25:24]  .f24     WO/RC       0x0      False    core
//              [27:26]  .f26     WO/RC       0x0      False    regf
//              [29:28]  .f28     WO/RO       0x0      False    core
//              [31:30]  .f30     WO/RO       0x0      False    regf
// 34 / 22      w34
//              [1:0]    .f0      WO/RP       0x0      False    core
//              [3:2]    .f2      WO/RP       0x0      False    regf
//              [5:4]    .f4      WO/RS       0x0      False    core
//              [7:6]    .f6      WO/RS       0x0      False    regf
//              [9:8]    .f8      WO/RT       0x0      False    core
//              [11:10]  .f10     WO/RT       0x0      False    regf
//              [13:12]  .f12     WO/RW       0x0      False    core
//              [15:14]  .f14     WO/RW       0x0      False    regf
//              [17:16]  .f16     WO/RW0C     0x0      False    core
//              [19:18]  .f18     WO/RW0C     0x0      False    regf
//              [21:20]  .f20     WO/RW0S     0x0      False    core
//              [23:22]  .f22     WO/RW0S     0x0      False    regf
//              [25:24]  .f24     WO/RW1C     0x0      False    core
//              [27:26]  .f26     WO/RW1C     0x0      False    regf
//              [29:28]  .f28     WO/RW1S     0x0      False    core
//              [31:30]  .f30     WO/RW1S     0x0      False    regf
// 35 / 23      w35
//              [1:0]    .f0      WO/RWL      0x0      False    core
//              [3:2]    .f2      WO/RWL      0x0      False    regf
//
//
// Mnemonic    ReadOp          WriteOp
// ----------  --------------  ----------------
// NA
// RC          Read-Clear
// RO          Read
// RP          Read-Protected
// RS          Read-Set
// RT          Read-Toggle
// RW          Read            Write
// RW0C        Read            Write-Zero-Clear
// RW0S        Read            Write-Zero-Set
// RW1C        Read            Write-One-Clear
// RW1S        Read            Write-One-Set
// RWL         Read            Write Locked
// W0C                         Write-Zero-Clear
// W0S                         Write-Zero-Set
// W1C                         Write-One-Clear
// W1S                         Write-One-Set
// WL                          Write Locked
// WO                          Write
//
// =============================================================================

`begin_keywords "1800-2009"
`default_nettype none  // implicit wires are forbidden

module full_regf (
  // main_i: Clock and Reset
  input  wire         main_clk_i,          // Clock
  input  wire         main_rst_an_i,       // Async Reset (Low-Active)
  // mem_i
  input  wire         mem_ena_i,           // Memory Access Enable
  input  wire  [9:0]  mem_addr_i,          // Memory Address
  input  wire         mem_wena_i,          // Memory Write Enable
  input  wire  [31:0] mem_wdata_i,         // Memory Write Data
  output logic [31:0] mem_rdata_o,         // Memory Read Data
  output logic        mem_err_o,           // Memory Access Failed.
  // regf_o
  //   regf_w0_f0_o: bus=None core=RC in_regf=False
  //   regf_w0_f2_o: bus=None core=RC in_regf=True
  output logic [1:0]  regf_w0_f2_rval_o,   // Core Read Value
  input  wire         regf_w0_f2_rd_i,     // Core Read Strobe
  //   regf_w0_f4_o: bus=None core=RO in_regf=True
  output logic [1:0]  regf_w0_f4_rval_o,   // Core Read Value
  //   regf_w0_f6_o: bus=None core=RP in_regf=True
  output logic [1:0]  regf_w0_f6_rval_o,   // Core Read Value
  //   regf_w0_f8_o: bus=None core=RS in_regf=False
  //   regf_w0_f10_o: bus=None core=RS in_regf=True
  output logic [1:0]  regf_w0_f10_rval_o,  // Core Read Value
  input  wire         regf_w0_f10_rd_i,    // Core Read Strobe
  //   regf_w0_f12_o: bus=None core=RT in_regf=False
  //   regf_w0_f14_o: bus=None core=RT in_regf=True
  output logic [1:0]  regf_w0_f14_rval_o,  // Core Read Value
  input  wire         regf_w0_f14_rd_i,    // Core Read Strobe
  //   regf_w0_f16_o: bus=None core=RW in_regf=False
  //   regf_w0_f18_o: bus=None core=RW in_regf=True
  output logic [1:0]  regf_w0_f18_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w0_f18_wval_i,  // Core Write Value
  input  wire         regf_w0_f18_wr_i,    // Core Write Strobe
  //   regf_w0_f20_o: bus=None core=RW0C in_regf=False
  //   regf_w0_f22_o: bus=None core=RW0C in_regf=True
  output logic [1:0]  regf_w0_f22_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w0_f22_wval_i,  // Core Write Value
  input  wire         regf_w0_f22_wr_i,    // Core Write Strobe
  //   regf_w0_f24_o: bus=None core=RW0S in_regf=False
  //   regf_w0_f26_o: bus=None core=RW0S in_regf=True
  output logic [1:0]  regf_w0_f26_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w0_f26_wval_i,  // Core Write Value
  input  wire         regf_w0_f26_wr_i,    // Core Write Strobe
  //   regf_w0_f28_o: bus=None core=RW1C in_regf=False
  //   regf_w0_f30_o: bus=None core=RW1C in_regf=True
  output logic [1:0]  regf_w0_f30_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w0_f30_wval_i,  // Core Write Value
  input  wire         regf_w0_f30_wr_i,    // Core Write Strobe
  //   regf_w1_f0_o: bus=None core=RW1S in_regf=False
  //   regf_w1_f2_o: bus=None core=RW1S in_regf=True
  output logic [1:0]  regf_w1_f2_rval_o,   // Core Read Value
  input  wire  [1:0]  regf_w1_f2_wval_i,   // Core Write Value
  input  wire         regf_w1_f2_wr_i,     // Core Write Strobe
  //   regf_w1_f4_o: bus=None core=RWL in_regf=False
  //   regf_w1_f6_o: bus=None core=RWL in_regf=True
  output logic [1:0]  regf_w1_f6_rval_o,   // Core Read Value
  input  wire  [1:0]  regf_w1_f6_wval_i,   // Core Write Value
  input  wire         regf_w1_f6_wr_i,     // Core Write Strobe
  //   regf_w1_f8_o: bus=NA core=RC in_regf=False
  //   regf_w1_f10_o: bus=NA core=RC in_regf=True
  output logic [1:0]  regf_w1_f10_rval_o,  // Core Read Value
  input  wire         regf_w1_f10_rd_i,    // Core Read Strobe
  //   regf_w1_f12_o: bus=NA core=RO in_regf=True
  output logic [1:0]  regf_w1_f12_rval_o,  // Core Read Value
  //   regf_w1_f14_o: bus=NA core=RP in_regf=True
  output logic [1:0]  regf_w1_f14_rval_o,  // Core Read Value
  //   regf_w1_f16_o: bus=NA core=RS in_regf=False
  //   regf_w1_f18_o: bus=NA core=RS in_regf=True
  output logic [1:0]  regf_w1_f18_rval_o,  // Core Read Value
  input  wire         regf_w1_f18_rd_i,    // Core Read Strobe
  //   regf_w1_f20_o: bus=NA core=RT in_regf=False
  //   regf_w1_f22_o: bus=NA core=RT in_regf=True
  output logic [1:0]  regf_w1_f22_rval_o,  // Core Read Value
  input  wire         regf_w1_f22_rd_i,    // Core Read Strobe
  //   regf_w1_f24_o: bus=NA core=RW in_regf=False
  //   regf_w1_f26_o: bus=NA core=RW in_regf=True
  output logic [1:0]  regf_w1_f26_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w1_f26_wval_i,  // Core Write Value
  input  wire         regf_w1_f26_wr_i,    // Core Write Strobe
  //   regf_w1_f28_o: bus=NA core=RW0C in_regf=False
  //   regf_w1_f30_o: bus=NA core=RW0C in_regf=True
  output logic [1:0]  regf_w1_f30_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w1_f30_wval_i,  // Core Write Value
  input  wire         regf_w1_f30_wr_i,    // Core Write Strobe
  //   regf_w2_f0_o: bus=NA core=RW0S in_regf=False
  //   regf_w2_f2_o: bus=NA core=RW0S in_regf=True
  output logic [1:0]  regf_w2_f2_rval_o,   // Core Read Value
  input  wire  [1:0]  regf_w2_f2_wval_i,   // Core Write Value
  input  wire         regf_w2_f2_wr_i,     // Core Write Strobe
  //   regf_w2_f4_o: bus=NA core=RW1C in_regf=False
  //   regf_w2_f6_o: bus=NA core=RW1C in_regf=True
  output logic [1:0]  regf_w2_f6_rval_o,   // Core Read Value
  input  wire  [1:0]  regf_w2_f6_wval_i,   // Core Write Value
  input  wire         regf_w2_f6_wr_i,     // Core Write Strobe
  //   regf_w2_f8_o: bus=NA core=RW1S in_regf=False
  //   regf_w2_f10_o: bus=NA core=RW1S in_regf=True
  output logic [1:0]  regf_w2_f10_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w2_f10_wval_i,  // Core Write Value
  input  wire         regf_w2_f10_wr_i,    // Core Write Strobe
  //   regf_w2_f12_o: bus=NA core=RWL in_regf=False
  //   regf_w2_f14_o: bus=NA core=RWL in_regf=True
  output logic [1:0]  regf_w2_f14_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w2_f14_wval_i,  // Core Write Value
  input  wire         regf_w2_f14_wr_i,    // Core Write Strobe
  //   regf_w2_f16_o: bus=RC core=NA in_regf=False
  input  wire  [1:0]  regf_w2_f16_rbus_i,  // Bus Read Value
  output logic        regf_w2_f16_rd_o,    // Bus Read Strobe
  //   regf_w2_f20_o: bus=RC core=RC in_regf=False
  input  wire  [1:0]  regf_w2_f20_rbus_i,  // Bus Read Value
  output logic        regf_w2_f20_rd_o,    // Bus Read Strobe
  //   regf_w2_f22_o: bus=RC core=RC in_regf=True
  output logic [1:0]  regf_w2_f22_rval_o,  // Core Read Value
  input  wire         regf_w2_f22_rd_i,    // Core Read Strobe
  //   regf_w2_f24_o: bus=RC core=RO in_regf=False
  input  wire  [1:0]  regf_w2_f24_rbus_i,  // Bus Read Value
  output logic        regf_w2_f24_rd_o,    // Bus Read Strobe
  //   regf_w2_f26_o: bus=RC core=RO in_regf=True
  output logic [1:0]  regf_w2_f26_rval_o,  // Core Read Value
  //   regf_w2_f28_o: bus=RC core=RP in_regf=False
  input  wire  [1:0]  regf_w2_f28_rbus_i,  // Bus Read Value
  output logic        regf_w2_f28_rd_o,    // Bus Read Strobe
  //   regf_w2_f30_o: bus=RC core=RP in_regf=True
  output logic [1:0]  regf_w2_f30_rval_o,  // Core Read Value
  //   regf_w3_f0_o: bus=RC core=RS in_regf=False
  input  wire  [1:0]  regf_w3_f0_rbus_i,   // Bus Read Value
  output logic        regf_w3_f0_rd_o,     // Bus Read Strobe
  //   regf_w3_f2_o: bus=RC core=RS in_regf=True
  output logic [1:0]  regf_w3_f2_rval_o,   // Core Read Value
  input  wire         regf_w3_f2_rd_i,     // Core Read Strobe
  //   regf_w3_f4_o: bus=RC core=RT in_regf=False
  input  wire  [1:0]  regf_w3_f4_rbus_i,   // Bus Read Value
  output logic        regf_w3_f4_rd_o,     // Bus Read Strobe
  //   regf_w3_f6_o: bus=RC core=RT in_regf=True
  output logic [1:0]  regf_w3_f6_rval_o,   // Core Read Value
  input  wire         regf_w3_f6_rd_i,     // Core Read Strobe
  //   regf_w3_f8_o: bus=RC core=RW in_regf=False
  input  wire  [1:0]  regf_w3_f8_rbus_i,   // Bus Read Value
  output logic        regf_w3_f8_rd_o,     // Bus Read Strobe
  //   regf_w3_f10_o: bus=RC core=RW in_regf=True
  output logic [1:0]  regf_w3_f10_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w3_f10_wval_i,  // Core Write Value
  input  wire         regf_w3_f10_wr_i,    // Core Write Strobe
  //   regf_w3_f12_o: bus=RC core=RW0C in_regf=False
  input  wire  [1:0]  regf_w3_f12_rbus_i,  // Bus Read Value
  output logic        regf_w3_f12_rd_o,    // Bus Read Strobe
  //   regf_w3_f14_o: bus=RC core=RW0C in_regf=True
  output logic [1:0]  regf_w3_f14_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w3_f14_wval_i,  // Core Write Value
  input  wire         regf_w3_f14_wr_i,    // Core Write Strobe
  //   regf_w3_f16_o: bus=RC core=RW0S in_regf=False
  input  wire  [1:0]  regf_w3_f16_rbus_i,  // Bus Read Value
  output logic        regf_w3_f16_rd_o,    // Bus Read Strobe
  //   regf_w3_f18_o: bus=RC core=RW0S in_regf=True
  output logic [1:0]  regf_w3_f18_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w3_f18_wval_i,  // Core Write Value
  input  wire         regf_w3_f18_wr_i,    // Core Write Strobe
  //   regf_w3_f20_o: bus=RC core=RW1C in_regf=False
  input  wire  [1:0]  regf_w3_f20_rbus_i,  // Bus Read Value
  output logic        regf_w3_f20_rd_o,    // Bus Read Strobe
  //   regf_w3_f22_o: bus=RC core=RW1C in_regf=True
  output logic [1:0]  regf_w3_f22_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w3_f22_wval_i,  // Core Write Value
  input  wire         regf_w3_f22_wr_i,    // Core Write Strobe
  //   regf_w3_f24_o: bus=RC core=RW1S in_regf=False
  input  wire  [1:0]  regf_w3_f24_rbus_i,  // Bus Read Value
  output logic        regf_w3_f24_rd_o,    // Bus Read Strobe
  //   regf_w3_f26_o: bus=RC core=RW1S in_regf=True
  output logic [1:0]  regf_w3_f26_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w3_f26_wval_i,  // Core Write Value
  input  wire         regf_w3_f26_wr_i,    // Core Write Strobe
  //   regf_w3_f28_o: bus=RC core=RWL in_regf=False
  input  wire  [1:0]  regf_w3_f28_rbus_i,  // Bus Read Value
  output logic        regf_w3_f28_rd_o,    // Bus Read Strobe
  //   regf_w3_f30_o: bus=RC core=RWL in_regf=True
  output logic [1:0]  regf_w3_f30_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w3_f30_wval_i,  // Core Write Value
  input  wire         regf_w3_f30_wr_i,    // Core Write Strobe
  //   regf_w4_f0_o: bus=RC core=W0C in_regf=False
  input  wire  [1:0]  regf_w4_f0_rbus_i,   // Bus Read Value
  output logic        regf_w4_f0_rd_o,     // Bus Read Strobe
  //   regf_w4_f2_o: bus=RC core=W0C in_regf=True
  input  wire  [1:0]  regf_w4_f2_wval_i,   // Core Write Value
  input  wire         regf_w4_f2_wr_i,     // Core Write Strobe
  //   regf_w4_f4_o: bus=RC core=W0S in_regf=False
  input  wire  [1:0]  regf_w4_f4_rbus_i,   // Bus Read Value
  output logic        regf_w4_f4_rd_o,     // Bus Read Strobe
  //   regf_w4_f6_o: bus=RC core=W0S in_regf=True
  input  wire  [1:0]  regf_w4_f6_wval_i,   // Core Write Value
  input  wire         regf_w4_f6_wr_i,     // Core Write Strobe
  //   regf_w4_f8_o: bus=RC core=W1C in_regf=False
  input  wire  [1:0]  regf_w4_f8_rbus_i,   // Bus Read Value
  output logic        regf_w4_f8_rd_o,     // Bus Read Strobe
  //   regf_w4_f10_o: bus=RC core=W1C in_regf=True
  input  wire  [1:0]  regf_w4_f10_wval_i,  // Core Write Value
  input  wire         regf_w4_f10_wr_i,    // Core Write Strobe
  //   regf_w4_f12_o: bus=RC core=W1S in_regf=False
  input  wire  [1:0]  regf_w4_f12_rbus_i,  // Bus Read Value
  output logic        regf_w4_f12_rd_o,    // Bus Read Strobe
  //   regf_w4_f14_o: bus=RC core=W1S in_regf=True
  input  wire  [1:0]  regf_w4_f14_wval_i,  // Core Write Value
  input  wire         regf_w4_f14_wr_i,    // Core Write Strobe
  //   regf_w4_f16_o: bus=RC core=WL in_regf=False
  input  wire  [1:0]  regf_w4_f16_rbus_i,  // Bus Read Value
  output logic        regf_w4_f16_rd_o,    // Bus Read Strobe
  //   regf_w4_f18_o: bus=RC core=WL in_regf=True
  input  wire  [1:0]  regf_w4_f18_wval_i,  // Core Write Value
  input  wire         regf_w4_f18_wr_i,    // Core Write Strobe
  //   regf_w4_f20_o: bus=RC core=WO in_regf=False
  input  wire  [1:0]  regf_w4_f20_rbus_i,  // Bus Read Value
  output logic        regf_w4_f20_rd_o,    // Bus Read Strobe
  //   regf_w4_f22_o: bus=RC core=WO in_regf=True
  input  wire  [1:0]  regf_w4_f22_wval_i,  // Core Write Value
  input  wire         regf_w4_f22_wr_i,    // Core Write Strobe
  //   regf_w4_f26_o: bus=RO core=RC in_regf=False
  input  wire  [1:0]  regf_w4_f26_rbus_i,  // Bus Read Value
  //   regf_w4_f28_o: bus=RO core=RC in_regf=True
  output logic [1:0]  regf_w4_f28_rval_o,  // Core Read Value
  input  wire         regf_w4_f28_rd_i,    // Core Read Strobe
  //   regf_w4_f30_o: bus=RO core=RO in_regf=True
  output logic [1:0]  regf_w4_f30_rval_o,  // Core Read Value
  //   regf_w5_f0_o: bus=RO core=RP in_regf=True
  output logic [1:0]  regf_w5_f0_rval_o,   // Core Read Value
  //   regf_w5_f2_o: bus=RO core=RS in_regf=False
  input  wire  [1:0]  regf_w5_f2_rbus_i,   // Bus Read Value
  //   regf_w5_f4_o: bus=RO core=RS in_regf=True
  output logic [1:0]  regf_w5_f4_rval_o,   // Core Read Value
  input  wire         regf_w5_f4_rd_i,     // Core Read Strobe
  //   regf_w5_f6_o: bus=RO core=RT in_regf=False
  input  wire  [1:0]  regf_w5_f6_rbus_i,   // Bus Read Value
  //   regf_w5_f8_o: bus=RO core=RT in_regf=True
  output logic [1:0]  regf_w5_f8_rval_o,   // Core Read Value
  input  wire         regf_w5_f8_rd_i,     // Core Read Strobe
  //   regf_w5_f10_o: bus=RO core=RW in_regf=False
  input  wire  [1:0]  regf_w5_f10_rbus_i,  // Bus Read Value
  //   regf_w5_f12_o: bus=RO core=RW in_regf=True
  output logic [1:0]  regf_w5_f12_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w5_f12_wval_i,  // Core Write Value
  input  wire         regf_w5_f12_wr_i,    // Core Write Strobe
  //   regf_w5_f14_o: bus=RO core=RW0C in_regf=False
  input  wire  [1:0]  regf_w5_f14_rbus_i,  // Bus Read Value
  //   regf_w5_f16_o: bus=RO core=RW0C in_regf=True
  output logic [1:0]  regf_w5_f16_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w5_f16_wval_i,  // Core Write Value
  input  wire         regf_w5_f16_wr_i,    // Core Write Strobe
  //   regf_w5_f18_o: bus=RO core=RW0S in_regf=False
  input  wire  [1:0]  regf_w5_f18_rbus_i,  // Bus Read Value
  //   regf_w5_f20_o: bus=RO core=RW0S in_regf=True
  output logic [1:0]  regf_w5_f20_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w5_f20_wval_i,  // Core Write Value
  input  wire         regf_w5_f20_wr_i,    // Core Write Strobe
  //   regf_w5_f22_o: bus=RO core=RW1C in_regf=False
  input  wire  [1:0]  regf_w5_f22_rbus_i,  // Bus Read Value
  //   regf_w5_f24_o: bus=RO core=RW1C in_regf=True
  output logic [1:0]  regf_w5_f24_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w5_f24_wval_i,  // Core Write Value
  input  wire         regf_w5_f24_wr_i,    // Core Write Strobe
  //   regf_w5_f26_o: bus=RO core=RW1S in_regf=False
  input  wire  [1:0]  regf_w5_f26_rbus_i,  // Bus Read Value
  //   regf_w5_f28_o: bus=RO core=RW1S in_regf=True
  output logic [1:0]  regf_w5_f28_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w5_f28_wval_i,  // Core Write Value
  input  wire         regf_w5_f28_wr_i,    // Core Write Strobe
  //   regf_w5_f30_o: bus=RO core=RWL in_regf=False
  input  wire  [1:0]  regf_w5_f30_rbus_i,  // Bus Read Value
  //   regf_w6_f0_o: bus=RO core=RWL in_regf=True
  output logic [1:0]  regf_w6_f0_rval_o,   // Core Read Value
  input  wire  [1:0]  regf_w6_f0_wval_i,   // Core Write Value
  input  wire         regf_w6_f0_wr_i,     // Core Write Strobe
  //   regf_w6_f2_o: bus=RO core=W0C in_regf=False
  input  wire  [1:0]  regf_w6_f2_rbus_i,   // Bus Read Value
  //   regf_w6_f4_o: bus=RO core=W0C in_regf=True
  input  wire  [1:0]  regf_w6_f4_wval_i,   // Core Write Value
  input  wire         regf_w6_f4_wr_i,     // Core Write Strobe
  //   regf_w6_f6_o: bus=RO core=W0S in_regf=False
  input  wire  [1:0]  regf_w6_f6_rbus_i,   // Bus Read Value
  //   regf_w6_f8_o: bus=RO core=W0S in_regf=True
  input  wire  [1:0]  regf_w6_f8_wval_i,   // Core Write Value
  input  wire         regf_w6_f8_wr_i,     // Core Write Strobe
  //   regf_w6_f10_o: bus=RO core=W1C in_regf=False
  input  wire  [1:0]  regf_w6_f10_rbus_i,  // Bus Read Value
  //   regf_w6_f12_o: bus=RO core=W1C in_regf=True
  input  wire  [1:0]  regf_w6_f12_wval_i,  // Core Write Value
  input  wire         regf_w6_f12_wr_i,    // Core Write Strobe
  //   regf_w6_f14_o: bus=RO core=W1S in_regf=False
  input  wire  [1:0]  regf_w6_f14_rbus_i,  // Bus Read Value
  //   regf_w6_f16_o: bus=RO core=W1S in_regf=True
  input  wire  [1:0]  regf_w6_f16_wval_i,  // Core Write Value
  input  wire         regf_w6_f16_wr_i,    // Core Write Strobe
  //   regf_w6_f18_o: bus=RO core=WL in_regf=False
  input  wire  [1:0]  regf_w6_f18_rbus_i,  // Bus Read Value
  //   regf_w6_f20_o: bus=RO core=WL in_regf=True
  input  wire  [1:0]  regf_w6_f20_wval_i,  // Core Write Value
  input  wire         regf_w6_f20_wr_i,    // Core Write Strobe
  //   regf_w6_f22_o: bus=RO core=WO in_regf=False
  input  wire  [1:0]  regf_w6_f22_rbus_i,  // Bus Read Value
  //   regf_w6_f24_o: bus=RO core=WO in_regf=True
  input  wire  [1:0]  regf_w6_f24_wval_i,  // Core Write Value
  input  wire         regf_w6_f24_wr_i,    // Core Write Strobe
  //   regf_w6_f28_o: bus=RP core=RC in_regf=False
  input  wire  [1:0]  regf_w6_f28_rbus_i,  // Bus Read Value
  //   regf_w6_f30_o: bus=RP core=RC in_regf=True
  output logic [1:0]  regf_w6_f30_rval_o,  // Core Read Value
  input  wire         regf_w6_f30_rd_i,    // Core Read Strobe
  //   regf_w7_f0_o: bus=RP core=RO in_regf=True
  output logic [1:0]  regf_w7_f0_rval_o,   // Core Read Value
  //   regf_w7_f2_o: bus=RP core=RP in_regf=True
  output logic [1:0]  regf_w7_f2_rval_o,   // Core Read Value
  //   regf_w7_f4_o: bus=RP core=RS in_regf=False
  input  wire  [1:0]  regf_w7_f4_rbus_i,   // Bus Read Value
  //   regf_w7_f6_o: bus=RP core=RS in_regf=True
  output logic [1:0]  regf_w7_f6_rval_o,   // Core Read Value
  input  wire         regf_w7_f6_rd_i,     // Core Read Strobe
  //   regf_w7_f8_o: bus=RP core=RT in_regf=False
  input  wire  [1:0]  regf_w7_f8_rbus_i,   // Bus Read Value
  //   regf_w7_f10_o: bus=RP core=RT in_regf=True
  output logic [1:0]  regf_w7_f10_rval_o,  // Core Read Value
  input  wire         regf_w7_f10_rd_i,    // Core Read Strobe
  //   regf_w7_f12_o: bus=RP core=RW in_regf=False
  input  wire  [1:0]  regf_w7_f12_rbus_i,  // Bus Read Value
  //   regf_w7_f14_o: bus=RP core=RW in_regf=True
  output logic [1:0]  regf_w7_f14_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w7_f14_wval_i,  // Core Write Value
  input  wire         regf_w7_f14_wr_i,    // Core Write Strobe
  //   regf_w7_f16_o: bus=RP core=RW0C in_regf=False
  input  wire  [1:0]  regf_w7_f16_rbus_i,  // Bus Read Value
  //   regf_w7_f18_o: bus=RP core=RW0C in_regf=True
  output logic [1:0]  regf_w7_f18_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w7_f18_wval_i,  // Core Write Value
  input  wire         regf_w7_f18_wr_i,    // Core Write Strobe
  //   regf_w7_f20_o: bus=RP core=RW0S in_regf=False
  input  wire  [1:0]  regf_w7_f20_rbus_i,  // Bus Read Value
  //   regf_w7_f22_o: bus=RP core=RW0S in_regf=True
  output logic [1:0]  regf_w7_f22_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w7_f22_wval_i,  // Core Write Value
  input  wire         regf_w7_f22_wr_i,    // Core Write Strobe
  //   regf_w7_f24_o: bus=RP core=RW1C in_regf=False
  input  wire  [1:0]  regf_w7_f24_rbus_i,  // Bus Read Value
  //   regf_w7_f26_o: bus=RP core=RW1C in_regf=True
  output logic [1:0]  regf_w7_f26_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w7_f26_wval_i,  // Core Write Value
  input  wire         regf_w7_f26_wr_i,    // Core Write Strobe
  //   regf_w7_f28_o: bus=RP core=RW1S in_regf=False
  input  wire  [1:0]  regf_w7_f28_rbus_i,  // Bus Read Value
  //   regf_w7_f30_o: bus=RP core=RW1S in_regf=True
  output logic [1:0]  regf_w7_f30_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w7_f30_wval_i,  // Core Write Value
  input  wire         regf_w7_f30_wr_i,    // Core Write Strobe
  //   regf_w8_f0_o: bus=RP core=RWL in_regf=False
  input  wire  [1:0]  regf_w8_f0_rbus_i,   // Bus Read Value
  //   regf_w8_f2_o: bus=RP core=RWL in_regf=True
  output logic [1:0]  regf_w8_f2_rval_o,   // Core Read Value
  input  wire  [1:0]  regf_w8_f2_wval_i,   // Core Write Value
  input  wire         regf_w8_f2_wr_i,     // Core Write Strobe
  //   regf_w8_f4_o: bus=RP core=W0C in_regf=False
  input  wire  [1:0]  regf_w8_f4_rbus_i,   // Bus Read Value
  //   regf_w8_f6_o: bus=RP core=W0C in_regf=True
  input  wire  [1:0]  regf_w8_f6_wval_i,   // Core Write Value
  input  wire         regf_w8_f6_wr_i,     // Core Write Strobe
  //   regf_w8_f8_o: bus=RP core=W0S in_regf=False
  input  wire  [1:0]  regf_w8_f8_rbus_i,   // Bus Read Value
  //   regf_w8_f10_o: bus=RP core=W0S in_regf=True
  input  wire  [1:0]  regf_w8_f10_wval_i,  // Core Write Value
  input  wire         regf_w8_f10_wr_i,    // Core Write Strobe
  //   regf_w8_f12_o: bus=RP core=W1C in_regf=False
  input  wire  [1:0]  regf_w8_f12_rbus_i,  // Bus Read Value
  //   regf_w8_f14_o: bus=RP core=W1C in_regf=True
  input  wire  [1:0]  regf_w8_f14_wval_i,  // Core Write Value
  input  wire         regf_w8_f14_wr_i,    // Core Write Strobe
  //   regf_w8_f16_o: bus=RP core=W1S in_regf=False
  input  wire  [1:0]  regf_w8_f16_rbus_i,  // Bus Read Value
  //   regf_w8_f18_o: bus=RP core=W1S in_regf=True
  input  wire  [1:0]  regf_w8_f18_wval_i,  // Core Write Value
  input  wire         regf_w8_f18_wr_i,    // Core Write Strobe
  //   regf_w8_f20_o: bus=RP core=WL in_regf=False
  input  wire  [1:0]  regf_w8_f20_rbus_i,  // Bus Read Value
  //   regf_w8_f22_o: bus=RP core=WL in_regf=True
  input  wire  [1:0]  regf_w8_f22_wval_i,  // Core Write Value
  input  wire         regf_w8_f22_wr_i,    // Core Write Strobe
  //   regf_w8_f24_o: bus=RP core=WO in_regf=False
  input  wire  [1:0]  regf_w8_f24_rbus_i,  // Bus Read Value
  //   regf_w8_f26_o: bus=RP core=WO in_regf=True
  input  wire  [1:0]  regf_w8_f26_wval_i,  // Core Write Value
  input  wire         regf_w8_f26_wr_i,    // Core Write Strobe
  //   regf_w8_f28_o: bus=RS core=NA in_regf=False
  input  wire  [1:0]  regf_w8_f28_rbus_i,  // Bus Read Value
  output logic        regf_w8_f28_rd_o,    // Bus Read Strobe
  //   regf_w9_f0_o: bus=RS core=RC in_regf=False
  input  wire  [1:0]  regf_w9_f0_rbus_i,   // Bus Read Value
  output logic        regf_w9_f0_rd_o,     // Bus Read Strobe
  //   regf_w9_f2_o: bus=RS core=RC in_regf=True
  output logic [1:0]  regf_w9_f2_rval_o,   // Core Read Value
  input  wire         regf_w9_f2_rd_i,     // Core Read Strobe
  //   regf_w9_f4_o: bus=RS core=RO in_regf=False
  input  wire  [1:0]  regf_w9_f4_rbus_i,   // Bus Read Value
  output logic        regf_w9_f4_rd_o,     // Bus Read Strobe
  //   regf_w9_f6_o: bus=RS core=RO in_regf=True
  output logic [1:0]  regf_w9_f6_rval_o,   // Core Read Value
  //   regf_w9_f8_o: bus=RS core=RP in_regf=False
  input  wire  [1:0]  regf_w9_f8_rbus_i,   // Bus Read Value
  output logic        regf_w9_f8_rd_o,     // Bus Read Strobe
  //   regf_w9_f10_o: bus=RS core=RP in_regf=True
  output logic [1:0]  regf_w9_f10_rval_o,  // Core Read Value
  //   regf_w9_f12_o: bus=RS core=RS in_regf=False
  input  wire  [1:0]  regf_w9_f12_rbus_i,  // Bus Read Value
  output logic        regf_w9_f12_rd_o,    // Bus Read Strobe
  //   regf_w9_f14_o: bus=RS core=RS in_regf=True
  output logic [1:0]  regf_w9_f14_rval_o,  // Core Read Value
  input  wire         regf_w9_f14_rd_i,    // Core Read Strobe
  //   regf_w9_f16_o: bus=RS core=RT in_regf=False
  input  wire  [1:0]  regf_w9_f16_rbus_i,  // Bus Read Value
  output logic        regf_w9_f16_rd_o,    // Bus Read Strobe
  //   regf_w9_f18_o: bus=RS core=RT in_regf=True
  output logic [1:0]  regf_w9_f18_rval_o,  // Core Read Value
  input  wire         regf_w9_f18_rd_i,    // Core Read Strobe
  //   regf_w9_f20_o: bus=RS core=RW in_regf=False
  input  wire  [1:0]  regf_w9_f20_rbus_i,  // Bus Read Value
  output logic        regf_w9_f20_rd_o,    // Bus Read Strobe
  //   regf_w9_f22_o: bus=RS core=RW in_regf=True
  output logic [1:0]  regf_w9_f22_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w9_f22_wval_i,  // Core Write Value
  input  wire         regf_w9_f22_wr_i,    // Core Write Strobe
  //   regf_w9_f24_o: bus=RS core=RW0C in_regf=False
  input  wire  [1:0]  regf_w9_f24_rbus_i,  // Bus Read Value
  output logic        regf_w9_f24_rd_o,    // Bus Read Strobe
  //   regf_w9_f26_o: bus=RS core=RW0C in_regf=True
  output logic [1:0]  regf_w9_f26_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w9_f26_wval_i,  // Core Write Value
  input  wire         regf_w9_f26_wr_i,    // Core Write Strobe
  //   regf_w9_f28_o: bus=RS core=RW0S in_regf=False
  input  wire  [1:0]  regf_w9_f28_rbus_i,  // Bus Read Value
  output logic        regf_w9_f28_rd_o,    // Bus Read Strobe
  //   regf_w9_f30_o: bus=RS core=RW0S in_regf=True
  output logic [1:0]  regf_w9_f30_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w9_f30_wval_i,  // Core Write Value
  input  wire         regf_w9_f30_wr_i,    // Core Write Strobe
  //   regf_w10_f0_o: bus=RS core=RW1C in_regf=False
  input  wire  [1:0]  regf_w10_f0_rbus_i,  // Bus Read Value
  output logic        regf_w10_f0_rd_o,    // Bus Read Strobe
  //   regf_w10_f2_o: bus=RS core=RW1C in_regf=True
  output logic [1:0]  regf_w10_f2_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w10_f2_wval_i,  // Core Write Value
  input  wire         regf_w10_f2_wr_i,    // Core Write Strobe
  //   regf_w10_f4_o: bus=RS core=RW1S in_regf=False
  input  wire  [1:0]  regf_w10_f4_rbus_i,  // Bus Read Value
  output logic        regf_w10_f4_rd_o,    // Bus Read Strobe
  //   regf_w10_f6_o: bus=RS core=RW1S in_regf=True
  output logic [1:0]  regf_w10_f6_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w10_f6_wval_i,  // Core Write Value
  input  wire         regf_w10_f6_wr_i,    // Core Write Strobe
  //   regf_w10_f8_o: bus=RS core=RWL in_regf=False
  input  wire  [1:0]  regf_w10_f8_rbus_i,  // Bus Read Value
  output logic        regf_w10_f8_rd_o,    // Bus Read Strobe
  //   regf_w10_f10_o: bus=RS core=RWL in_regf=True
  output logic [1:0]  regf_w10_f10_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w10_f10_wval_i, // Core Write Value
  input  wire         regf_w10_f10_wr_i,   // Core Write Strobe
  //   regf_w10_f12_o: bus=RS core=W0C in_regf=False
  input  wire  [1:0]  regf_w10_f12_rbus_i, // Bus Read Value
  output logic        regf_w10_f12_rd_o,   // Bus Read Strobe
  //   regf_w10_f14_o: bus=RS core=W0C in_regf=True
  input  wire  [1:0]  regf_w10_f14_wval_i, // Core Write Value
  input  wire         regf_w10_f14_wr_i,   // Core Write Strobe
  //   regf_w10_f16_o: bus=RS core=W0S in_regf=False
  input  wire  [1:0]  regf_w10_f16_rbus_i, // Bus Read Value
  output logic        regf_w10_f16_rd_o,   // Bus Read Strobe
  //   regf_w10_f18_o: bus=RS core=W0S in_regf=True
  input  wire  [1:0]  regf_w10_f18_wval_i, // Core Write Value
  input  wire         regf_w10_f18_wr_i,   // Core Write Strobe
  //   regf_w10_f20_o: bus=RS core=W1C in_regf=False
  input  wire  [1:0]  regf_w10_f20_rbus_i, // Bus Read Value
  output logic        regf_w10_f20_rd_o,   // Bus Read Strobe
  //   regf_w10_f22_o: bus=RS core=W1C in_regf=True
  input  wire  [1:0]  regf_w10_f22_wval_i, // Core Write Value
  input  wire         regf_w10_f22_wr_i,   // Core Write Strobe
  //   regf_w10_f24_o: bus=RS core=W1S in_regf=False
  input  wire  [1:0]  regf_w10_f24_rbus_i, // Bus Read Value
  output logic        regf_w10_f24_rd_o,   // Bus Read Strobe
  //   regf_w10_f26_o: bus=RS core=W1S in_regf=True
  input  wire  [1:0]  regf_w10_f26_wval_i, // Core Write Value
  input  wire         regf_w10_f26_wr_i,   // Core Write Strobe
  //   regf_w10_f28_o: bus=RS core=WL in_regf=False
  input  wire  [1:0]  regf_w10_f28_rbus_i, // Bus Read Value
  output logic        regf_w10_f28_rd_o,   // Bus Read Strobe
  //   regf_w10_f30_o: bus=RS core=WL in_regf=True
  input  wire  [1:0]  regf_w10_f30_wval_i, // Core Write Value
  input  wire         regf_w10_f30_wr_i,   // Core Write Strobe
  //   regf_w11_f0_o: bus=RS core=WO in_regf=False
  input  wire  [1:0]  regf_w11_f0_rbus_i,  // Bus Read Value
  output logic        regf_w11_f0_rd_o,    // Bus Read Strobe
  //   regf_w11_f2_o: bus=RS core=WO in_regf=True
  input  wire  [1:0]  regf_w11_f2_wval_i,  // Core Write Value
  input  wire         regf_w11_f2_wr_i,    // Core Write Strobe
  //   regf_w11_f4_o: bus=RT core=NA in_regf=False
  input  wire  [1:0]  regf_w11_f4_rbus_i,  // Bus Read Value
  output logic        regf_w11_f4_rd_o,    // Bus Read Strobe
  //   regf_w11_f8_o: bus=RT core=RC in_regf=False
  input  wire  [1:0]  regf_w11_f8_rbus_i,  // Bus Read Value
  output logic        regf_w11_f8_rd_o,    // Bus Read Strobe
  //   regf_w11_f10_o: bus=RT core=RC in_regf=True
  output logic [1:0]  regf_w11_f10_rval_o, // Core Read Value
  input  wire         regf_w11_f10_rd_i,   // Core Read Strobe
  //   regf_w11_f12_o: bus=RT core=RO in_regf=False
  input  wire  [1:0]  regf_w11_f12_rbus_i, // Bus Read Value
  output logic        regf_w11_f12_rd_o,   // Bus Read Strobe
  //   regf_w11_f14_o: bus=RT core=RO in_regf=True
  output logic [1:0]  regf_w11_f14_rval_o, // Core Read Value
  //   regf_w11_f16_o: bus=RT core=RP in_regf=False
  input  wire  [1:0]  regf_w11_f16_rbus_i, // Bus Read Value
  output logic        regf_w11_f16_rd_o,   // Bus Read Strobe
  //   regf_w11_f18_o: bus=RT core=RP in_regf=True
  output logic [1:0]  regf_w11_f18_rval_o, // Core Read Value
  //   regf_w11_f20_o: bus=RT core=RS in_regf=False
  input  wire  [1:0]  regf_w11_f20_rbus_i, // Bus Read Value
  output logic        regf_w11_f20_rd_o,   // Bus Read Strobe
  //   regf_w11_f22_o: bus=RT core=RS in_regf=True
  output logic [1:0]  regf_w11_f22_rval_o, // Core Read Value
  input  wire         regf_w11_f22_rd_i,   // Core Read Strobe
  //   regf_w11_f24_o: bus=RT core=RT in_regf=False
  input  wire  [1:0]  regf_w11_f24_rbus_i, // Bus Read Value
  output logic        regf_w11_f24_rd_o,   // Bus Read Strobe
  //   regf_w11_f26_o: bus=RT core=RT in_regf=True
  output logic [1:0]  regf_w11_f26_rval_o, // Core Read Value
  input  wire         regf_w11_f26_rd_i,   // Core Read Strobe
  //   regf_w11_f28_o: bus=RT core=RW in_regf=False
  input  wire  [1:0]  regf_w11_f28_rbus_i, // Bus Read Value
  output logic        regf_w11_f28_rd_o,   // Bus Read Strobe
  //   regf_w11_f30_o: bus=RT core=RW in_regf=True
  output logic [1:0]  regf_w11_f30_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w11_f30_wval_i, // Core Write Value
  input  wire         regf_w11_f30_wr_i,   // Core Write Strobe
  //   regf_w12_f0_o: bus=RT core=RW0C in_regf=False
  input  wire  [1:0]  regf_w12_f0_rbus_i,  // Bus Read Value
  output logic        regf_w12_f0_rd_o,    // Bus Read Strobe
  //   regf_w12_f2_o: bus=RT core=RW0C in_regf=True
  output logic [1:0]  regf_w12_f2_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w12_f2_wval_i,  // Core Write Value
  input  wire         regf_w12_f2_wr_i,    // Core Write Strobe
  //   regf_w12_f4_o: bus=RT core=RW0S in_regf=False
  input  wire  [1:0]  regf_w12_f4_rbus_i,  // Bus Read Value
  output logic        regf_w12_f4_rd_o,    // Bus Read Strobe
  //   regf_w12_f6_o: bus=RT core=RW0S in_regf=True
  output logic [1:0]  regf_w12_f6_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w12_f6_wval_i,  // Core Write Value
  input  wire         regf_w12_f6_wr_i,    // Core Write Strobe
  //   regf_w12_f8_o: bus=RT core=RW1C in_regf=False
  input  wire  [1:0]  regf_w12_f8_rbus_i,  // Bus Read Value
  output logic        regf_w12_f8_rd_o,    // Bus Read Strobe
  //   regf_w12_f10_o: bus=RT core=RW1C in_regf=True
  output logic [1:0]  regf_w12_f10_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w12_f10_wval_i, // Core Write Value
  input  wire         regf_w12_f10_wr_i,   // Core Write Strobe
  //   regf_w12_f12_o: bus=RT core=RW1S in_regf=False
  input  wire  [1:0]  regf_w12_f12_rbus_i, // Bus Read Value
  output logic        regf_w12_f12_rd_o,   // Bus Read Strobe
  //   regf_w12_f14_o: bus=RT core=RW1S in_regf=True
  output logic [1:0]  regf_w12_f14_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w12_f14_wval_i, // Core Write Value
  input  wire         regf_w12_f14_wr_i,   // Core Write Strobe
  //   regf_w12_f16_o: bus=RT core=RWL in_regf=False
  input  wire  [1:0]  regf_w12_f16_rbus_i, // Bus Read Value
  output logic        regf_w12_f16_rd_o,   // Bus Read Strobe
  //   regf_w12_f18_o: bus=RT core=RWL in_regf=True
  output logic [1:0]  regf_w12_f18_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w12_f18_wval_i, // Core Write Value
  input  wire         regf_w12_f18_wr_i,   // Core Write Strobe
  //   regf_w12_f20_o: bus=RT core=W0C in_regf=False
  input  wire  [1:0]  regf_w12_f20_rbus_i, // Bus Read Value
  output logic        regf_w12_f20_rd_o,   // Bus Read Strobe
  //   regf_w12_f22_o: bus=RT core=W0C in_regf=True
  input  wire  [1:0]  regf_w12_f22_wval_i, // Core Write Value
  input  wire         regf_w12_f22_wr_i,   // Core Write Strobe
  //   regf_w12_f24_o: bus=RT core=W0S in_regf=False
  input  wire  [1:0]  regf_w12_f24_rbus_i, // Bus Read Value
  output logic        regf_w12_f24_rd_o,   // Bus Read Strobe
  //   regf_w12_f26_o: bus=RT core=W0S in_regf=True
  input  wire  [1:0]  regf_w12_f26_wval_i, // Core Write Value
  input  wire         regf_w12_f26_wr_i,   // Core Write Strobe
  //   regf_w12_f28_o: bus=RT core=W1C in_regf=False
  input  wire  [1:0]  regf_w12_f28_rbus_i, // Bus Read Value
  output logic        regf_w12_f28_rd_o,   // Bus Read Strobe
  //   regf_w12_f30_o: bus=RT core=W1C in_regf=True
  input  wire  [1:0]  regf_w12_f30_wval_i, // Core Write Value
  input  wire         regf_w12_f30_wr_i,   // Core Write Strobe
  //   regf_w13_f0_o: bus=RT core=W1S in_regf=False
  input  wire  [1:0]  regf_w13_f0_rbus_i,  // Bus Read Value
  output logic        regf_w13_f0_rd_o,    // Bus Read Strobe
  //   regf_w13_f2_o: bus=RT core=W1S in_regf=True
  input  wire  [1:0]  regf_w13_f2_wval_i,  // Core Write Value
  input  wire         regf_w13_f2_wr_i,    // Core Write Strobe
  //   regf_w13_f4_o: bus=RT core=WL in_regf=False
  input  wire  [1:0]  regf_w13_f4_rbus_i,  // Bus Read Value
  output logic        regf_w13_f4_rd_o,    // Bus Read Strobe
  //   regf_w13_f6_o: bus=RT core=WL in_regf=True
  input  wire  [1:0]  regf_w13_f6_wval_i,  // Core Write Value
  input  wire         regf_w13_f6_wr_i,    // Core Write Strobe
  //   regf_w13_f8_o: bus=RT core=WO in_regf=False
  input  wire  [1:0]  regf_w13_f8_rbus_i,  // Bus Read Value
  output logic        regf_w13_f8_rd_o,    // Bus Read Strobe
  //   regf_w13_f10_o: bus=RT core=WO in_regf=True
  input  wire  [1:0]  regf_w13_f10_wval_i, // Core Write Value
  input  wire         regf_w13_f10_wr_i,   // Core Write Strobe
  //   regf_w13_f12_o: bus=RW core=NA in_regf=False
  input  wire  [1:0]  regf_w13_f12_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w13_f12_wbus_o, // Bus Write Value
  output logic        regf_w13_f12_wr_o,   // Bus Write Strobe
  //   regf_w13_f16_o: bus=RW core=RC in_regf=False
  input  wire  [1:0]  regf_w13_f16_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w13_f16_wbus_o, // Bus Write Value
  output logic        regf_w13_f16_wr_o,   // Bus Write Strobe
  //   regf_w13_f18_o: bus=RW core=RC in_regf=True
  output logic [1:0]  regf_w13_f18_rval_o, // Core Read Value
  input  wire         regf_w13_f18_rd_i,   // Core Read Strobe
  //   regf_w13_f20_o: bus=RW core=RO in_regf=False
  input  wire  [1:0]  regf_w13_f20_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w13_f20_wbus_o, // Bus Write Value
  output logic        regf_w13_f20_wr_o,   // Bus Write Strobe
  //   regf_w13_f22_o: bus=RW core=RO in_regf=True
  output logic [1:0]  regf_w13_f22_rval_o, // Core Read Value
  //   regf_w13_f24_o: bus=RW core=RP in_regf=False
  input  wire  [1:0]  regf_w13_f24_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w13_f24_wbus_o, // Bus Write Value
  output logic        regf_w13_f24_wr_o,   // Bus Write Strobe
  //   regf_w13_f26_o: bus=RW core=RP in_regf=True
  output logic [1:0]  regf_w13_f26_rval_o, // Core Read Value
  //   regf_w13_f28_o: bus=RW core=RS in_regf=False
  input  wire  [1:0]  regf_w13_f28_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w13_f28_wbus_o, // Bus Write Value
  output logic        regf_w13_f28_wr_o,   // Bus Write Strobe
  //   regf_w13_f30_o: bus=RW core=RS in_regf=True
  output logic [1:0]  regf_w13_f30_rval_o, // Core Read Value
  input  wire         regf_w13_f30_rd_i,   // Core Read Strobe
  //   regf_w14_f0_o: bus=RW core=RT in_regf=False
  input  wire  [1:0]  regf_w14_f0_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w14_f0_wbus_o,  // Bus Write Value
  output logic        regf_w14_f0_wr_o,    // Bus Write Strobe
  //   regf_w14_f2_o: bus=RW core=RT in_regf=True
  output logic [1:0]  regf_w14_f2_rval_o,  // Core Read Value
  input  wire         regf_w14_f2_rd_i,    // Core Read Strobe
  //   regf_w14_f4_o: bus=RW core=RW in_regf=False
  input  wire  [1:0]  regf_w14_f4_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w14_f4_wbus_o,  // Bus Write Value
  output logic        regf_w14_f4_wr_o,    // Bus Write Strobe
  //   regf_w14_f6_o: bus=RW core=RW in_regf=True
  output logic [1:0]  regf_w14_f6_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w14_f6_wval_i,  // Core Write Value
  input  wire         regf_w14_f6_wr_i,    // Core Write Strobe
  //   regf_w14_f8_o: bus=RW core=RW0C in_regf=False
  input  wire  [1:0]  regf_w14_f8_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w14_f8_wbus_o,  // Bus Write Value
  output logic        regf_w14_f8_wr_o,    // Bus Write Strobe
  //   regf_w14_f10_o: bus=RW core=RW0C in_regf=True
  output logic [1:0]  regf_w14_f10_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w14_f10_wval_i, // Core Write Value
  input  wire         regf_w14_f10_wr_i,   // Core Write Strobe
  //   regf_w14_f12_o: bus=RW core=RW0S in_regf=False
  input  wire  [1:0]  regf_w14_f12_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w14_f12_wbus_o, // Bus Write Value
  output logic        regf_w14_f12_wr_o,   // Bus Write Strobe
  //   regf_w14_f14_o: bus=RW core=RW0S in_regf=True
  output logic [1:0]  regf_w14_f14_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w14_f14_wval_i, // Core Write Value
  input  wire         regf_w14_f14_wr_i,   // Core Write Strobe
  //   regf_w14_f16_o: bus=RW core=RW1C in_regf=False
  input  wire  [1:0]  regf_w14_f16_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w14_f16_wbus_o, // Bus Write Value
  output logic        regf_w14_f16_wr_o,   // Bus Write Strobe
  //   regf_w14_f18_o: bus=RW core=RW1C in_regf=True
  output logic [1:0]  regf_w14_f18_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w14_f18_wval_i, // Core Write Value
  input  wire         regf_w14_f18_wr_i,   // Core Write Strobe
  //   regf_w14_f20_o: bus=RW core=RW1S in_regf=False
  input  wire  [1:0]  regf_w14_f20_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w14_f20_wbus_o, // Bus Write Value
  output logic        regf_w14_f20_wr_o,   // Bus Write Strobe
  //   regf_w14_f22_o: bus=RW core=RW1S in_regf=True
  output logic [1:0]  regf_w14_f22_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w14_f22_wval_i, // Core Write Value
  input  wire         regf_w14_f22_wr_i,   // Core Write Strobe
  //   regf_w14_f24_o: bus=RW core=RWL in_regf=False
  input  wire  [1:0]  regf_w14_f24_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w14_f24_wbus_o, // Bus Write Value
  output logic        regf_w14_f24_wr_o,   // Bus Write Strobe
  //   regf_w14_f26_o: bus=RW core=RWL in_regf=True
  output logic [1:0]  regf_w14_f26_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w14_f26_wval_i, // Core Write Value
  input  wire         regf_w14_f26_wr_i,   // Core Write Strobe
  //   regf_w14_f28_o: bus=RW core=W0C in_regf=False
  input  wire  [1:0]  regf_w14_f28_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w14_f28_wbus_o, // Bus Write Value
  output logic        regf_w14_f28_wr_o,   // Bus Write Strobe
  //   regf_w14_f30_o: bus=RW core=W0C in_regf=True
  input  wire  [1:0]  regf_w14_f30_wval_i, // Core Write Value
  input  wire         regf_w14_f30_wr_i,   // Core Write Strobe
  //   regf_w15_f0_o: bus=RW core=W0S in_regf=False
  input  wire  [1:0]  regf_w15_f0_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w15_f0_wbus_o,  // Bus Write Value
  output logic        regf_w15_f0_wr_o,    // Bus Write Strobe
  //   regf_w15_f2_o: bus=RW core=W0S in_regf=True
  input  wire  [1:0]  regf_w15_f2_wval_i,  // Core Write Value
  input  wire         regf_w15_f2_wr_i,    // Core Write Strobe
  //   regf_w15_f4_o: bus=RW core=W1C in_regf=False
  input  wire  [1:0]  regf_w15_f4_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w15_f4_wbus_o,  // Bus Write Value
  output logic        regf_w15_f4_wr_o,    // Bus Write Strobe
  //   regf_w15_f6_o: bus=RW core=W1C in_regf=True
  input  wire  [1:0]  regf_w15_f6_wval_i,  // Core Write Value
  input  wire         regf_w15_f6_wr_i,    // Core Write Strobe
  //   regf_w15_f8_o: bus=RW core=W1S in_regf=False
  input  wire  [1:0]  regf_w15_f8_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w15_f8_wbus_o,  // Bus Write Value
  output logic        regf_w15_f8_wr_o,    // Bus Write Strobe
  //   regf_w15_f10_o: bus=RW core=W1S in_regf=True
  input  wire  [1:0]  regf_w15_f10_wval_i, // Core Write Value
  input  wire         regf_w15_f10_wr_i,   // Core Write Strobe
  //   regf_w15_f12_o: bus=RW core=WL in_regf=False
  input  wire  [1:0]  regf_w15_f12_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w15_f12_wbus_o, // Bus Write Value
  output logic        regf_w15_f12_wr_o,   // Bus Write Strobe
  //   regf_w15_f14_o: bus=RW core=WL in_regf=True
  input  wire  [1:0]  regf_w15_f14_wval_i, // Core Write Value
  input  wire         regf_w15_f14_wr_i,   // Core Write Strobe
  //   regf_w15_f16_o: bus=RW core=WO in_regf=False
  input  wire  [1:0]  regf_w15_f16_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w15_f16_wbus_o, // Bus Write Value
  output logic        regf_w15_f16_wr_o,   // Bus Write Strobe
  //   regf_w15_f18_o: bus=RW core=WO in_regf=True
  input  wire  [1:0]  regf_w15_f18_wval_i, // Core Write Value
  input  wire         regf_w15_f18_wr_i,   // Core Write Strobe
  //   regf_w15_f20_o: bus=RW0C core=NA in_regf=False
  input  wire  [1:0]  regf_w15_f20_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w15_f20_wbus_o, // Bus Write Value
  output logic        regf_w15_f20_wr_o,   // Bus Write Strobe
  //   regf_w15_f24_o: bus=RW0C core=RC in_regf=False
  input  wire  [1:0]  regf_w15_f24_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w15_f24_wbus_o, // Bus Write Value
  output logic        regf_w15_f24_wr_o,   // Bus Write Strobe
  //   regf_w15_f26_o: bus=RW0C core=RC in_regf=True
  output logic [1:0]  regf_w15_f26_rval_o, // Core Read Value
  input  wire         regf_w15_f26_rd_i,   // Core Read Strobe
  //   regf_w15_f28_o: bus=RW0C core=RO in_regf=False
  input  wire  [1:0]  regf_w15_f28_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w15_f28_wbus_o, // Bus Write Value
  output logic        regf_w15_f28_wr_o,   // Bus Write Strobe
  //   regf_w15_f30_o: bus=RW0C core=RO in_regf=True
  output logic [1:0]  regf_w15_f30_rval_o, // Core Read Value
  //   regf_w16_f0_o: bus=RW0C core=RP in_regf=False
  input  wire  [1:0]  regf_w16_f0_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w16_f0_wbus_o,  // Bus Write Value
  output logic        regf_w16_f0_wr_o,    // Bus Write Strobe
  //   regf_w16_f2_o: bus=RW0C core=RP in_regf=True
  output logic [1:0]  regf_w16_f2_rval_o,  // Core Read Value
  //   regf_w16_f4_o: bus=RW0C core=RS in_regf=False
  input  wire  [1:0]  regf_w16_f4_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w16_f4_wbus_o,  // Bus Write Value
  output logic        regf_w16_f4_wr_o,    // Bus Write Strobe
  //   regf_w16_f6_o: bus=RW0C core=RS in_regf=True
  output logic [1:0]  regf_w16_f6_rval_o,  // Core Read Value
  input  wire         regf_w16_f6_rd_i,    // Core Read Strobe
  //   regf_w16_f8_o: bus=RW0C core=RT in_regf=False
  input  wire  [1:0]  regf_w16_f8_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w16_f8_wbus_o,  // Bus Write Value
  output logic        regf_w16_f8_wr_o,    // Bus Write Strobe
  //   regf_w16_f10_o: bus=RW0C core=RT in_regf=True
  output logic [1:0]  regf_w16_f10_rval_o, // Core Read Value
  input  wire         regf_w16_f10_rd_i,   // Core Read Strobe
  //   regf_w16_f12_o: bus=RW0C core=RW in_regf=False
  input  wire  [1:0]  regf_w16_f12_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w16_f12_wbus_o, // Bus Write Value
  output logic        regf_w16_f12_wr_o,   // Bus Write Strobe
  //   regf_w16_f14_o: bus=RW0C core=RW in_regf=True
  output logic [1:0]  regf_w16_f14_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w16_f14_wval_i, // Core Write Value
  input  wire         regf_w16_f14_wr_i,   // Core Write Strobe
  //   regf_w16_f16_o: bus=RW0C core=RW0C in_regf=False
  input  wire  [1:0]  regf_w16_f16_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w16_f16_wbus_o, // Bus Write Value
  output logic        regf_w16_f16_wr_o,   // Bus Write Strobe
  //   regf_w16_f18_o: bus=RW0C core=RW0C in_regf=True
  output logic [1:0]  regf_w16_f18_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w16_f18_wval_i, // Core Write Value
  input  wire         regf_w16_f18_wr_i,   // Core Write Strobe
  //   regf_w16_f20_o: bus=RW0C core=RW0S in_regf=False
  input  wire  [1:0]  regf_w16_f20_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w16_f20_wbus_o, // Bus Write Value
  output logic        regf_w16_f20_wr_o,   // Bus Write Strobe
  //   regf_w16_f22_o: bus=RW0C core=RW0S in_regf=True
  output logic [1:0]  regf_w16_f22_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w16_f22_wval_i, // Core Write Value
  input  wire         regf_w16_f22_wr_i,   // Core Write Strobe
  //   regf_w16_f24_o: bus=RW0C core=RW1C in_regf=False
  input  wire  [1:0]  regf_w16_f24_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w16_f24_wbus_o, // Bus Write Value
  output logic        regf_w16_f24_wr_o,   // Bus Write Strobe
  //   regf_w16_f26_o: bus=RW0C core=RW1C in_regf=True
  output logic [1:0]  regf_w16_f26_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w16_f26_wval_i, // Core Write Value
  input  wire         regf_w16_f26_wr_i,   // Core Write Strobe
  //   regf_w16_f28_o: bus=RW0C core=RW1S in_regf=False
  input  wire  [1:0]  regf_w16_f28_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w16_f28_wbus_o, // Bus Write Value
  output logic        regf_w16_f28_wr_o,   // Bus Write Strobe
  //   regf_w16_f30_o: bus=RW0C core=RW1S in_regf=True
  output logic [1:0]  regf_w16_f30_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w16_f30_wval_i, // Core Write Value
  input  wire         regf_w16_f30_wr_i,   // Core Write Strobe
  //   regf_w17_f0_o: bus=RW0C core=RWL in_regf=False
  input  wire  [1:0]  regf_w17_f0_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w17_f0_wbus_o,  // Bus Write Value
  output logic        regf_w17_f0_wr_o,    // Bus Write Strobe
  //   regf_w17_f2_o: bus=RW0C core=RWL in_regf=True
  output logic [1:0]  regf_w17_f2_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w17_f2_wval_i,  // Core Write Value
  input  wire         regf_w17_f2_wr_i,    // Core Write Strobe
  //   regf_w17_f4_o: bus=RW0C core=W0C in_regf=False
  input  wire  [1:0]  regf_w17_f4_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w17_f4_wbus_o,  // Bus Write Value
  output logic        regf_w17_f4_wr_o,    // Bus Write Strobe
  //   regf_w17_f6_o: bus=RW0C core=W0C in_regf=True
  input  wire  [1:0]  regf_w17_f6_wval_i,  // Core Write Value
  input  wire         regf_w17_f6_wr_i,    // Core Write Strobe
  //   regf_w17_f8_o: bus=RW0C core=W0S in_regf=False
  input  wire  [1:0]  regf_w17_f8_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w17_f8_wbus_o,  // Bus Write Value
  output logic        regf_w17_f8_wr_o,    // Bus Write Strobe
  //   regf_w17_f10_o: bus=RW0C core=W0S in_regf=True
  input  wire  [1:0]  regf_w17_f10_wval_i, // Core Write Value
  input  wire         regf_w17_f10_wr_i,   // Core Write Strobe
  //   regf_w17_f12_o: bus=RW0C core=W1C in_regf=False
  input  wire  [1:0]  regf_w17_f12_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w17_f12_wbus_o, // Bus Write Value
  output logic        regf_w17_f12_wr_o,   // Bus Write Strobe
  //   regf_w17_f14_o: bus=RW0C core=W1C in_regf=True
  input  wire  [1:0]  regf_w17_f14_wval_i, // Core Write Value
  input  wire         regf_w17_f14_wr_i,   // Core Write Strobe
  //   regf_w17_f16_o: bus=RW0C core=W1S in_regf=False
  input  wire  [1:0]  regf_w17_f16_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w17_f16_wbus_o, // Bus Write Value
  output logic        regf_w17_f16_wr_o,   // Bus Write Strobe
  //   regf_w17_f18_o: bus=RW0C core=W1S in_regf=True
  input  wire  [1:0]  regf_w17_f18_wval_i, // Core Write Value
  input  wire         regf_w17_f18_wr_i,   // Core Write Strobe
  //   regf_w17_f20_o: bus=RW0C core=WL in_regf=False
  input  wire  [1:0]  regf_w17_f20_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w17_f20_wbus_o, // Bus Write Value
  output logic        regf_w17_f20_wr_o,   // Bus Write Strobe
  //   regf_w17_f22_o: bus=RW0C core=WL in_regf=True
  input  wire  [1:0]  regf_w17_f22_wval_i, // Core Write Value
  input  wire         regf_w17_f22_wr_i,   // Core Write Strobe
  //   regf_w17_f24_o: bus=RW0C core=WO in_regf=False
  input  wire  [1:0]  regf_w17_f24_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w17_f24_wbus_o, // Bus Write Value
  output logic        regf_w17_f24_wr_o,   // Bus Write Strobe
  //   regf_w17_f26_o: bus=RW0C core=WO in_regf=True
  input  wire  [1:0]  regf_w17_f26_wval_i, // Core Write Value
  input  wire         regf_w17_f26_wr_i,   // Core Write Strobe
  //   regf_w17_f28_o: bus=RW0S core=NA in_regf=False
  input  wire  [1:0]  regf_w17_f28_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w17_f28_wbus_o, // Bus Write Value
  output logic        regf_w17_f28_wr_o,   // Bus Write Strobe
  //   regf_w18_f0_o: bus=RW0S core=RC in_regf=False
  input  wire  [1:0]  regf_w18_f0_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w18_f0_wbus_o,  // Bus Write Value
  output logic        regf_w18_f0_wr_o,    // Bus Write Strobe
  //   regf_w18_f2_o: bus=RW0S core=RC in_regf=True
  output logic [1:0]  regf_w18_f2_rval_o,  // Core Read Value
  input  wire         regf_w18_f2_rd_i,    // Core Read Strobe
  //   regf_w18_f4_o: bus=RW0S core=RO in_regf=False
  input  wire  [1:0]  regf_w18_f4_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w18_f4_wbus_o,  // Bus Write Value
  output logic        regf_w18_f4_wr_o,    // Bus Write Strobe
  //   regf_w18_f6_o: bus=RW0S core=RO in_regf=True
  output logic [1:0]  regf_w18_f6_rval_o,  // Core Read Value
  //   regf_w18_f8_o: bus=RW0S core=RP in_regf=False
  input  wire  [1:0]  regf_w18_f8_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w18_f8_wbus_o,  // Bus Write Value
  output logic        regf_w18_f8_wr_o,    // Bus Write Strobe
  //   regf_w18_f10_o: bus=RW0S core=RP in_regf=True
  output logic [1:0]  regf_w18_f10_rval_o, // Core Read Value
  //   regf_w18_f12_o: bus=RW0S core=RS in_regf=False
  input  wire  [1:0]  regf_w18_f12_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w18_f12_wbus_o, // Bus Write Value
  output logic        regf_w18_f12_wr_o,   // Bus Write Strobe
  //   regf_w18_f14_o: bus=RW0S core=RS in_regf=True
  output logic [1:0]  regf_w18_f14_rval_o, // Core Read Value
  input  wire         regf_w18_f14_rd_i,   // Core Read Strobe
  //   regf_w18_f16_o: bus=RW0S core=RT in_regf=False
  input  wire  [1:0]  regf_w18_f16_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w18_f16_wbus_o, // Bus Write Value
  output logic        regf_w18_f16_wr_o,   // Bus Write Strobe
  //   regf_w18_f18_o: bus=RW0S core=RT in_regf=True
  output logic [1:0]  regf_w18_f18_rval_o, // Core Read Value
  input  wire         regf_w18_f18_rd_i,   // Core Read Strobe
  //   regf_w18_f20_o: bus=RW0S core=RW in_regf=False
  input  wire  [1:0]  regf_w18_f20_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w18_f20_wbus_o, // Bus Write Value
  output logic        regf_w18_f20_wr_o,   // Bus Write Strobe
  //   regf_w18_f22_o: bus=RW0S core=RW in_regf=True
  output logic [1:0]  regf_w18_f22_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w18_f22_wval_i, // Core Write Value
  input  wire         regf_w18_f22_wr_i,   // Core Write Strobe
  //   regf_w18_f24_o: bus=RW0S core=RW0C in_regf=False
  input  wire  [1:0]  regf_w18_f24_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w18_f24_wbus_o, // Bus Write Value
  output logic        regf_w18_f24_wr_o,   // Bus Write Strobe
  //   regf_w18_f26_o: bus=RW0S core=RW0C in_regf=True
  output logic [1:0]  regf_w18_f26_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w18_f26_wval_i, // Core Write Value
  input  wire         regf_w18_f26_wr_i,   // Core Write Strobe
  //   regf_w18_f28_o: bus=RW0S core=RW0S in_regf=False
  input  wire  [1:0]  regf_w18_f28_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w18_f28_wbus_o, // Bus Write Value
  output logic        regf_w18_f28_wr_o,   // Bus Write Strobe
  //   regf_w18_f30_o: bus=RW0S core=RW0S in_regf=True
  output logic [1:0]  regf_w18_f30_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w18_f30_wval_i, // Core Write Value
  input  wire         regf_w18_f30_wr_i,   // Core Write Strobe
  //   regf_w19_f0_o: bus=RW0S core=RW1C in_regf=False
  input  wire  [1:0]  regf_w19_f0_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w19_f0_wbus_o,  // Bus Write Value
  output logic        regf_w19_f0_wr_o,    // Bus Write Strobe
  //   regf_w19_f2_o: bus=RW0S core=RW1C in_regf=True
  output logic [1:0]  regf_w19_f2_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w19_f2_wval_i,  // Core Write Value
  input  wire         regf_w19_f2_wr_i,    // Core Write Strobe
  //   regf_w19_f4_o: bus=RW0S core=RW1S in_regf=False
  input  wire  [1:0]  regf_w19_f4_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w19_f4_wbus_o,  // Bus Write Value
  output logic        regf_w19_f4_wr_o,    // Bus Write Strobe
  //   regf_w19_f6_o: bus=RW0S core=RW1S in_regf=True
  output logic [1:0]  regf_w19_f6_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w19_f6_wval_i,  // Core Write Value
  input  wire         regf_w19_f6_wr_i,    // Core Write Strobe
  //   regf_w19_f8_o: bus=RW0S core=RWL in_regf=False
  input  wire  [1:0]  regf_w19_f8_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w19_f8_wbus_o,  // Bus Write Value
  output logic        regf_w19_f8_wr_o,    // Bus Write Strobe
  //   regf_w19_f10_o: bus=RW0S core=RWL in_regf=True
  output logic [1:0]  regf_w19_f10_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w19_f10_wval_i, // Core Write Value
  input  wire         regf_w19_f10_wr_i,   // Core Write Strobe
  //   regf_w19_f12_o: bus=RW0S core=W0C in_regf=False
  input  wire  [1:0]  regf_w19_f12_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w19_f12_wbus_o, // Bus Write Value
  output logic        regf_w19_f12_wr_o,   // Bus Write Strobe
  //   regf_w19_f14_o: bus=RW0S core=W0C in_regf=True
  input  wire  [1:0]  regf_w19_f14_wval_i, // Core Write Value
  input  wire         regf_w19_f14_wr_i,   // Core Write Strobe
  //   regf_w19_f16_o: bus=RW0S core=W0S in_regf=False
  input  wire  [1:0]  regf_w19_f16_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w19_f16_wbus_o, // Bus Write Value
  output logic        regf_w19_f16_wr_o,   // Bus Write Strobe
  //   regf_w19_f18_o: bus=RW0S core=W0S in_regf=True
  input  wire  [1:0]  regf_w19_f18_wval_i, // Core Write Value
  input  wire         regf_w19_f18_wr_i,   // Core Write Strobe
  //   regf_w19_f20_o: bus=RW0S core=W1C in_regf=False
  input  wire  [1:0]  regf_w19_f20_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w19_f20_wbus_o, // Bus Write Value
  output logic        regf_w19_f20_wr_o,   // Bus Write Strobe
  //   regf_w19_f22_o: bus=RW0S core=W1C in_regf=True
  input  wire  [1:0]  regf_w19_f22_wval_i, // Core Write Value
  input  wire         regf_w19_f22_wr_i,   // Core Write Strobe
  //   regf_w19_f24_o: bus=RW0S core=W1S in_regf=False
  input  wire  [1:0]  regf_w19_f24_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w19_f24_wbus_o, // Bus Write Value
  output logic        regf_w19_f24_wr_o,   // Bus Write Strobe
  //   regf_w19_f26_o: bus=RW0S core=W1S in_regf=True
  input  wire  [1:0]  regf_w19_f26_wval_i, // Core Write Value
  input  wire         regf_w19_f26_wr_i,   // Core Write Strobe
  //   regf_w19_f28_o: bus=RW0S core=WL in_regf=False
  input  wire  [1:0]  regf_w19_f28_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w19_f28_wbus_o, // Bus Write Value
  output logic        regf_w19_f28_wr_o,   // Bus Write Strobe
  //   regf_w19_f30_o: bus=RW0S core=WL in_regf=True
  input  wire  [1:0]  regf_w19_f30_wval_i, // Core Write Value
  input  wire         regf_w19_f30_wr_i,   // Core Write Strobe
  //   regf_w20_f0_o: bus=RW0S core=WO in_regf=False
  input  wire  [1:0]  regf_w20_f0_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w20_f0_wbus_o,  // Bus Write Value
  output logic        regf_w20_f0_wr_o,    // Bus Write Strobe
  //   regf_w20_f2_o: bus=RW0S core=WO in_regf=True
  input  wire  [1:0]  regf_w20_f2_wval_i,  // Core Write Value
  input  wire         regf_w20_f2_wr_i,    // Core Write Strobe
  //   regf_w20_f4_o: bus=RW1C core=NA in_regf=False
  input  wire  [1:0]  regf_w20_f4_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w20_f4_wbus_o,  // Bus Write Value
  output logic        regf_w20_f4_wr_o,    // Bus Write Strobe
  //   regf_w20_f8_o: bus=RW1C core=RC in_regf=False
  input  wire  [1:0]  regf_w20_f8_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w20_f8_wbus_o,  // Bus Write Value
  output logic        regf_w20_f8_wr_o,    // Bus Write Strobe
  //   regf_w20_f10_o: bus=RW1C core=RC in_regf=True
  output logic [1:0]  regf_w20_f10_rval_o, // Core Read Value
  input  wire         regf_w20_f10_rd_i,   // Core Read Strobe
  //   regf_w20_f12_o: bus=RW1C core=RO in_regf=False
  input  wire  [1:0]  regf_w20_f12_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w20_f12_wbus_o, // Bus Write Value
  output logic        regf_w20_f12_wr_o,   // Bus Write Strobe
  //   regf_w20_f14_o: bus=RW1C core=RO in_regf=True
  output logic [1:0]  regf_w20_f14_rval_o, // Core Read Value
  //   regf_w20_f16_o: bus=RW1C core=RP in_regf=False
  input  wire  [1:0]  regf_w20_f16_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w20_f16_wbus_o, // Bus Write Value
  output logic        regf_w20_f16_wr_o,   // Bus Write Strobe
  //   regf_w20_f18_o: bus=RW1C core=RP in_regf=True
  output logic [1:0]  regf_w20_f18_rval_o, // Core Read Value
  //   regf_w20_f20_o: bus=RW1C core=RS in_regf=False
  input  wire  [1:0]  regf_w20_f20_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w20_f20_wbus_o, // Bus Write Value
  output logic        regf_w20_f20_wr_o,   // Bus Write Strobe
  //   regf_w20_f22_o: bus=RW1C core=RS in_regf=True
  output logic [1:0]  regf_w20_f22_rval_o, // Core Read Value
  input  wire         regf_w20_f22_rd_i,   // Core Read Strobe
  //   regf_w20_f24_o: bus=RW1C core=RT in_regf=False
  input  wire  [1:0]  regf_w20_f24_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w20_f24_wbus_o, // Bus Write Value
  output logic        regf_w20_f24_wr_o,   // Bus Write Strobe
  //   regf_w20_f26_o: bus=RW1C core=RT in_regf=True
  output logic [1:0]  regf_w20_f26_rval_o, // Core Read Value
  input  wire         regf_w20_f26_rd_i,   // Core Read Strobe
  //   regf_w20_f28_o: bus=RW1C core=RW in_regf=False
  input  wire  [1:0]  regf_w20_f28_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w20_f28_wbus_o, // Bus Write Value
  output logic        regf_w20_f28_wr_o,   // Bus Write Strobe
  //   regf_w20_f30_o: bus=RW1C core=RW in_regf=True
  output logic [1:0]  regf_w20_f30_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w20_f30_wval_i, // Core Write Value
  input  wire         regf_w20_f30_wr_i,   // Core Write Strobe
  //   regf_w21_f0_o: bus=RW1C core=RW0C in_regf=False
  input  wire  [1:0]  regf_w21_f0_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w21_f0_wbus_o,  // Bus Write Value
  output logic        regf_w21_f0_wr_o,    // Bus Write Strobe
  //   regf_w21_f2_o: bus=RW1C core=RW0C in_regf=True
  output logic [1:0]  regf_w21_f2_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w21_f2_wval_i,  // Core Write Value
  input  wire         regf_w21_f2_wr_i,    // Core Write Strobe
  //   regf_w21_f4_o: bus=RW1C core=RW0S in_regf=False
  input  wire  [1:0]  regf_w21_f4_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w21_f4_wbus_o,  // Bus Write Value
  output logic        regf_w21_f4_wr_o,    // Bus Write Strobe
  //   regf_w21_f6_o: bus=RW1C core=RW0S in_regf=True
  output logic [1:0]  regf_w21_f6_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w21_f6_wval_i,  // Core Write Value
  input  wire         regf_w21_f6_wr_i,    // Core Write Strobe
  //   regf_w21_f8_o: bus=RW1C core=RW1C in_regf=False
  input  wire  [1:0]  regf_w21_f8_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w21_f8_wbus_o,  // Bus Write Value
  output logic        regf_w21_f8_wr_o,    // Bus Write Strobe
  //   regf_w21_f10_o: bus=RW1C core=RW1C in_regf=True
  output logic [1:0]  regf_w21_f10_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w21_f10_wval_i, // Core Write Value
  input  wire         regf_w21_f10_wr_i,   // Core Write Strobe
  //   regf_w21_f12_o: bus=RW1C core=RW1S in_regf=False
  input  wire  [1:0]  regf_w21_f12_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w21_f12_wbus_o, // Bus Write Value
  output logic        regf_w21_f12_wr_o,   // Bus Write Strobe
  //   regf_w21_f14_o: bus=RW1C core=RW1S in_regf=True
  output logic [1:0]  regf_w21_f14_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w21_f14_wval_i, // Core Write Value
  input  wire         regf_w21_f14_wr_i,   // Core Write Strobe
  //   regf_w21_f16_o: bus=RW1C core=RWL in_regf=False
  input  wire  [1:0]  regf_w21_f16_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w21_f16_wbus_o, // Bus Write Value
  output logic        regf_w21_f16_wr_o,   // Bus Write Strobe
  //   regf_w21_f18_o: bus=RW1C core=RWL in_regf=True
  output logic [1:0]  regf_w21_f18_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w21_f18_wval_i, // Core Write Value
  input  wire         regf_w21_f18_wr_i,   // Core Write Strobe
  //   regf_w21_f20_o: bus=RW1C core=W0C in_regf=False
  input  wire  [1:0]  regf_w21_f20_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w21_f20_wbus_o, // Bus Write Value
  output logic        regf_w21_f20_wr_o,   // Bus Write Strobe
  //   regf_w21_f22_o: bus=RW1C core=W0C in_regf=True
  input  wire  [1:0]  regf_w21_f22_wval_i, // Core Write Value
  input  wire         regf_w21_f22_wr_i,   // Core Write Strobe
  //   regf_w21_f24_o: bus=RW1C core=W0S in_regf=False
  input  wire  [1:0]  regf_w21_f24_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w21_f24_wbus_o, // Bus Write Value
  output logic        regf_w21_f24_wr_o,   // Bus Write Strobe
  //   regf_w21_f26_o: bus=RW1C core=W0S in_regf=True
  input  wire  [1:0]  regf_w21_f26_wval_i, // Core Write Value
  input  wire         regf_w21_f26_wr_i,   // Core Write Strobe
  //   regf_w21_f28_o: bus=RW1C core=W1C in_regf=False
  input  wire  [1:0]  regf_w21_f28_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w21_f28_wbus_o, // Bus Write Value
  output logic        regf_w21_f28_wr_o,   // Bus Write Strobe
  //   regf_w21_f30_o: bus=RW1C core=W1C in_regf=True
  input  wire  [1:0]  regf_w21_f30_wval_i, // Core Write Value
  input  wire         regf_w21_f30_wr_i,   // Core Write Strobe
  //   regf_w22_f0_o: bus=RW1C core=W1S in_regf=False
  input  wire  [1:0]  regf_w22_f0_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w22_f0_wbus_o,  // Bus Write Value
  output logic        regf_w22_f0_wr_o,    // Bus Write Strobe
  //   regf_w22_f2_o: bus=RW1C core=W1S in_regf=True
  input  wire  [1:0]  regf_w22_f2_wval_i,  // Core Write Value
  input  wire         regf_w22_f2_wr_i,    // Core Write Strobe
  //   regf_w22_f4_o: bus=RW1C core=WL in_regf=False
  input  wire  [1:0]  regf_w22_f4_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w22_f4_wbus_o,  // Bus Write Value
  output logic        regf_w22_f4_wr_o,    // Bus Write Strobe
  //   regf_w22_f6_o: bus=RW1C core=WL in_regf=True
  input  wire  [1:0]  regf_w22_f6_wval_i,  // Core Write Value
  input  wire         regf_w22_f6_wr_i,    // Core Write Strobe
  //   regf_w22_f8_o: bus=RW1C core=WO in_regf=False
  input  wire  [1:0]  regf_w22_f8_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w22_f8_wbus_o,  // Bus Write Value
  output logic        regf_w22_f8_wr_o,    // Bus Write Strobe
  //   regf_w22_f10_o: bus=RW1C core=WO in_regf=True
  input  wire  [1:0]  regf_w22_f10_wval_i, // Core Write Value
  input  wire         regf_w22_f10_wr_i,   // Core Write Strobe
  //   regf_w22_f12_o: bus=RW1S core=NA in_regf=False
  input  wire  [1:0]  regf_w22_f12_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w22_f12_wbus_o, // Bus Write Value
  output logic        regf_w22_f12_wr_o,   // Bus Write Strobe
  //   regf_w22_f16_o: bus=RW1S core=RC in_regf=False
  input  wire  [1:0]  regf_w22_f16_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w22_f16_wbus_o, // Bus Write Value
  output logic        regf_w22_f16_wr_o,   // Bus Write Strobe
  //   regf_w22_f18_o: bus=RW1S core=RC in_regf=True
  output logic [1:0]  regf_w22_f18_rval_o, // Core Read Value
  input  wire         regf_w22_f18_rd_i,   // Core Read Strobe
  //   regf_w22_f20_o: bus=RW1S core=RO in_regf=False
  input  wire  [1:0]  regf_w22_f20_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w22_f20_wbus_o, // Bus Write Value
  output logic        regf_w22_f20_wr_o,   // Bus Write Strobe
  //   regf_w22_f22_o: bus=RW1S core=RO in_regf=True
  output logic [1:0]  regf_w22_f22_rval_o, // Core Read Value
  //   regf_w22_f24_o: bus=RW1S core=RP in_regf=False
  input  wire  [1:0]  regf_w22_f24_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w22_f24_wbus_o, // Bus Write Value
  output logic        regf_w22_f24_wr_o,   // Bus Write Strobe
  //   regf_w22_f26_o: bus=RW1S core=RP in_regf=True
  output logic [1:0]  regf_w22_f26_rval_o, // Core Read Value
  //   regf_w22_f28_o: bus=RW1S core=RS in_regf=False
  input  wire  [1:0]  regf_w22_f28_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w22_f28_wbus_o, // Bus Write Value
  output logic        regf_w22_f28_wr_o,   // Bus Write Strobe
  //   regf_w22_f30_o: bus=RW1S core=RS in_regf=True
  output logic [1:0]  regf_w22_f30_rval_o, // Core Read Value
  input  wire         regf_w22_f30_rd_i,   // Core Read Strobe
  //   regf_w23_f0_o: bus=RW1S core=RT in_regf=False
  input  wire  [1:0]  regf_w23_f0_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w23_f0_wbus_o,  // Bus Write Value
  output logic        regf_w23_f0_wr_o,    // Bus Write Strobe
  //   regf_w23_f2_o: bus=RW1S core=RT in_regf=True
  output logic [1:0]  regf_w23_f2_rval_o,  // Core Read Value
  input  wire         regf_w23_f2_rd_i,    // Core Read Strobe
  //   regf_w23_f4_o: bus=RW1S core=RW in_regf=False
  input  wire  [1:0]  regf_w23_f4_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w23_f4_wbus_o,  // Bus Write Value
  output logic        regf_w23_f4_wr_o,    // Bus Write Strobe
  //   regf_w23_f6_o: bus=RW1S core=RW in_regf=True
  output logic [1:0]  regf_w23_f6_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w23_f6_wval_i,  // Core Write Value
  input  wire         regf_w23_f6_wr_i,    // Core Write Strobe
  //   regf_w23_f8_o: bus=RW1S core=RW0C in_regf=False
  input  wire  [1:0]  regf_w23_f8_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w23_f8_wbus_o,  // Bus Write Value
  output logic        regf_w23_f8_wr_o,    // Bus Write Strobe
  //   regf_w23_f10_o: bus=RW1S core=RW0C in_regf=True
  output logic [1:0]  regf_w23_f10_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w23_f10_wval_i, // Core Write Value
  input  wire         regf_w23_f10_wr_i,   // Core Write Strobe
  //   regf_w23_f12_o: bus=RW1S core=RW0S in_regf=False
  input  wire  [1:0]  regf_w23_f12_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w23_f12_wbus_o, // Bus Write Value
  output logic        regf_w23_f12_wr_o,   // Bus Write Strobe
  //   regf_w23_f14_o: bus=RW1S core=RW0S in_regf=True
  output logic [1:0]  regf_w23_f14_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w23_f14_wval_i, // Core Write Value
  input  wire         regf_w23_f14_wr_i,   // Core Write Strobe
  //   regf_w23_f16_o: bus=RW1S core=RW1C in_regf=False
  input  wire  [1:0]  regf_w23_f16_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w23_f16_wbus_o, // Bus Write Value
  output logic        regf_w23_f16_wr_o,   // Bus Write Strobe
  //   regf_w23_f18_o: bus=RW1S core=RW1C in_regf=True
  output logic [1:0]  regf_w23_f18_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w23_f18_wval_i, // Core Write Value
  input  wire         regf_w23_f18_wr_i,   // Core Write Strobe
  //   regf_w23_f20_o: bus=RW1S core=RW1S in_regf=False
  input  wire  [1:0]  regf_w23_f20_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w23_f20_wbus_o, // Bus Write Value
  output logic        regf_w23_f20_wr_o,   // Bus Write Strobe
  //   regf_w23_f22_o: bus=RW1S core=RW1S in_regf=True
  output logic [1:0]  regf_w23_f22_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w23_f22_wval_i, // Core Write Value
  input  wire         regf_w23_f22_wr_i,   // Core Write Strobe
  //   regf_w23_f24_o: bus=RW1S core=RWL in_regf=False
  input  wire  [1:0]  regf_w23_f24_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w23_f24_wbus_o, // Bus Write Value
  output logic        regf_w23_f24_wr_o,   // Bus Write Strobe
  //   regf_w23_f26_o: bus=RW1S core=RWL in_regf=True
  output logic [1:0]  regf_w23_f26_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w23_f26_wval_i, // Core Write Value
  input  wire         regf_w23_f26_wr_i,   // Core Write Strobe
  //   regf_w23_f28_o: bus=RW1S core=W0C in_regf=False
  input  wire  [1:0]  regf_w23_f28_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w23_f28_wbus_o, // Bus Write Value
  output logic        regf_w23_f28_wr_o,   // Bus Write Strobe
  //   regf_w23_f30_o: bus=RW1S core=W0C in_regf=True
  input  wire  [1:0]  regf_w23_f30_wval_i, // Core Write Value
  input  wire         regf_w23_f30_wr_i,   // Core Write Strobe
  //   regf_w24_f0_o: bus=RW1S core=W0S in_regf=False
  input  wire  [1:0]  regf_w24_f0_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w24_f0_wbus_o,  // Bus Write Value
  output logic        regf_w24_f0_wr_o,    // Bus Write Strobe
  //   regf_w24_f2_o: bus=RW1S core=W0S in_regf=True
  input  wire  [1:0]  regf_w24_f2_wval_i,  // Core Write Value
  input  wire         regf_w24_f2_wr_i,    // Core Write Strobe
  //   regf_w24_f4_o: bus=RW1S core=W1C in_regf=False
  input  wire  [1:0]  regf_w24_f4_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w24_f4_wbus_o,  // Bus Write Value
  output logic        regf_w24_f4_wr_o,    // Bus Write Strobe
  //   regf_w24_f6_o: bus=RW1S core=W1C in_regf=True
  input  wire  [1:0]  regf_w24_f6_wval_i,  // Core Write Value
  input  wire         regf_w24_f6_wr_i,    // Core Write Strobe
  //   regf_w24_f8_o: bus=RW1S core=W1S in_regf=False
  input  wire  [1:0]  regf_w24_f8_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w24_f8_wbus_o,  // Bus Write Value
  output logic        regf_w24_f8_wr_o,    // Bus Write Strobe
  //   regf_w24_f10_o: bus=RW1S core=W1S in_regf=True
  input  wire  [1:0]  regf_w24_f10_wval_i, // Core Write Value
  input  wire         regf_w24_f10_wr_i,   // Core Write Strobe
  //   regf_w24_f12_o: bus=RW1S core=WL in_regf=False
  input  wire  [1:0]  regf_w24_f12_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w24_f12_wbus_o, // Bus Write Value
  output logic        regf_w24_f12_wr_o,   // Bus Write Strobe
  //   regf_w24_f14_o: bus=RW1S core=WL in_regf=True
  input  wire  [1:0]  regf_w24_f14_wval_i, // Core Write Value
  input  wire         regf_w24_f14_wr_i,   // Core Write Strobe
  //   regf_w24_f16_o: bus=RW1S core=WO in_regf=False
  input  wire  [1:0]  regf_w24_f16_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w24_f16_wbus_o, // Bus Write Value
  output logic        regf_w24_f16_wr_o,   // Bus Write Strobe
  //   regf_w24_f18_o: bus=RW1S core=WO in_regf=True
  input  wire  [1:0]  regf_w24_f18_wval_i, // Core Write Value
  input  wire         regf_w24_f18_wr_i,   // Core Write Strobe
  //   regf_w24_f20_o: bus=RWL core=NA in_regf=False
  input  wire  [1:0]  regf_w24_f20_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w24_f20_wbus_o, // Bus Write Value
  output logic        regf_w24_f20_wr_o,   // Bus Write Strobe
  //   regf_w24_f24_o: bus=RWL core=RC in_regf=False
  input  wire  [1:0]  regf_w24_f24_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w24_f24_wbus_o, // Bus Write Value
  output logic        regf_w24_f24_wr_o,   // Bus Write Strobe
  //   regf_w24_f26_o: bus=RWL core=RC in_regf=True
  output logic [1:0]  regf_w24_f26_rval_o, // Core Read Value
  input  wire         regf_w24_f26_rd_i,   // Core Read Strobe
  //   regf_w24_f28_o: bus=RWL core=RO in_regf=False
  input  wire  [1:0]  regf_w24_f28_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w24_f28_wbus_o, // Bus Write Value
  output logic        regf_w24_f28_wr_o,   // Bus Write Strobe
  //   regf_w24_f30_o: bus=RWL core=RO in_regf=True
  output logic [1:0]  regf_w24_f30_rval_o, // Core Read Value
  //   regf_w25_f0_o: bus=RWL core=RP in_regf=False
  input  wire  [1:0]  regf_w25_f0_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w25_f0_wbus_o,  // Bus Write Value
  output logic        regf_w25_f0_wr_o,    // Bus Write Strobe
  //   regf_w25_f2_o: bus=RWL core=RP in_regf=True
  output logic [1:0]  regf_w25_f2_rval_o,  // Core Read Value
  //   regf_w25_f4_o: bus=RWL core=RS in_regf=False
  input  wire  [1:0]  regf_w25_f4_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w25_f4_wbus_o,  // Bus Write Value
  output logic        regf_w25_f4_wr_o,    // Bus Write Strobe
  //   regf_w25_f6_o: bus=RWL core=RS in_regf=True
  output logic [1:0]  regf_w25_f6_rval_o,  // Core Read Value
  input  wire         regf_w25_f6_rd_i,    // Core Read Strobe
  //   regf_w25_f8_o: bus=RWL core=RT in_regf=False
  input  wire  [1:0]  regf_w25_f8_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w25_f8_wbus_o,  // Bus Write Value
  output logic        regf_w25_f8_wr_o,    // Bus Write Strobe
  //   regf_w25_f10_o: bus=RWL core=RT in_regf=True
  output logic [1:0]  regf_w25_f10_rval_o, // Core Read Value
  input  wire         regf_w25_f10_rd_i,   // Core Read Strobe
  //   regf_w25_f12_o: bus=RWL core=RW in_regf=False
  input  wire  [1:0]  regf_w25_f12_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w25_f12_wbus_o, // Bus Write Value
  output logic        regf_w25_f12_wr_o,   // Bus Write Strobe
  //   regf_w25_f14_o: bus=RWL core=RW in_regf=True
  output logic [1:0]  regf_w25_f14_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w25_f14_wval_i, // Core Write Value
  input  wire         regf_w25_f14_wr_i,   // Core Write Strobe
  //   regf_w25_f16_o: bus=RWL core=RW0C in_regf=False
  input  wire  [1:0]  regf_w25_f16_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w25_f16_wbus_o, // Bus Write Value
  output logic        regf_w25_f16_wr_o,   // Bus Write Strobe
  //   regf_w25_f18_o: bus=RWL core=RW0C in_regf=True
  output logic [1:0]  regf_w25_f18_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w25_f18_wval_i, // Core Write Value
  input  wire         regf_w25_f18_wr_i,   // Core Write Strobe
  //   regf_w25_f20_o: bus=RWL core=RW0S in_regf=False
  input  wire  [1:0]  regf_w25_f20_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w25_f20_wbus_o, // Bus Write Value
  output logic        regf_w25_f20_wr_o,   // Bus Write Strobe
  //   regf_w25_f22_o: bus=RWL core=RW0S in_regf=True
  output logic [1:0]  regf_w25_f22_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w25_f22_wval_i, // Core Write Value
  input  wire         regf_w25_f22_wr_i,   // Core Write Strobe
  //   regf_w25_f24_o: bus=RWL core=RW1C in_regf=False
  input  wire  [1:0]  regf_w25_f24_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w25_f24_wbus_o, // Bus Write Value
  output logic        regf_w25_f24_wr_o,   // Bus Write Strobe
  //   regf_w25_f26_o: bus=RWL core=RW1C in_regf=True
  output logic [1:0]  regf_w25_f26_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w25_f26_wval_i, // Core Write Value
  input  wire         regf_w25_f26_wr_i,   // Core Write Strobe
  //   regf_w25_f28_o: bus=RWL core=RW1S in_regf=False
  input  wire  [1:0]  regf_w25_f28_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w25_f28_wbus_o, // Bus Write Value
  output logic        regf_w25_f28_wr_o,   // Bus Write Strobe
  //   regf_w25_f30_o: bus=RWL core=RW1S in_regf=True
  output logic [1:0]  regf_w25_f30_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w25_f30_wval_i, // Core Write Value
  input  wire         regf_w25_f30_wr_i,   // Core Write Strobe
  //   regf_w26_f0_o: bus=RWL core=RWL in_regf=False
  input  wire  [1:0]  regf_w26_f0_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w26_f0_wbus_o,  // Bus Write Value
  output logic        regf_w26_f0_wr_o,    // Bus Write Strobe
  //   regf_w26_f2_o: bus=RWL core=RWL in_regf=True
  output logic [1:0]  regf_w26_f2_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w26_f2_wval_i,  // Core Write Value
  input  wire         regf_w26_f2_wr_i,    // Core Write Strobe
  //   regf_w26_f4_o: bus=RWL core=W0C in_regf=False
  input  wire  [1:0]  regf_w26_f4_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w26_f4_wbus_o,  // Bus Write Value
  output logic        regf_w26_f4_wr_o,    // Bus Write Strobe
  //   regf_w26_f6_o: bus=RWL core=W0C in_regf=True
  input  wire  [1:0]  regf_w26_f6_wval_i,  // Core Write Value
  input  wire         regf_w26_f6_wr_i,    // Core Write Strobe
  //   regf_w26_f8_o: bus=RWL core=W0S in_regf=False
  input  wire  [1:0]  regf_w26_f8_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w26_f8_wbus_o,  // Bus Write Value
  output logic        regf_w26_f8_wr_o,    // Bus Write Strobe
  //   regf_w26_f10_o: bus=RWL core=W0S in_regf=True
  input  wire  [1:0]  regf_w26_f10_wval_i, // Core Write Value
  input  wire         regf_w26_f10_wr_i,   // Core Write Strobe
  //   regf_w26_f12_o: bus=RWL core=W1C in_regf=False
  input  wire  [1:0]  regf_w26_f12_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w26_f12_wbus_o, // Bus Write Value
  output logic        regf_w26_f12_wr_o,   // Bus Write Strobe
  //   regf_w26_f14_o: bus=RWL core=W1C in_regf=True
  input  wire  [1:0]  regf_w26_f14_wval_i, // Core Write Value
  input  wire         regf_w26_f14_wr_i,   // Core Write Strobe
  //   regf_w26_f16_o: bus=RWL core=W1S in_regf=False
  input  wire  [1:0]  regf_w26_f16_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w26_f16_wbus_o, // Bus Write Value
  output logic        regf_w26_f16_wr_o,   // Bus Write Strobe
  //   regf_w26_f18_o: bus=RWL core=W1S in_regf=True
  input  wire  [1:0]  regf_w26_f18_wval_i, // Core Write Value
  input  wire         regf_w26_f18_wr_i,   // Core Write Strobe
  //   regf_w26_f20_o: bus=RWL core=WL in_regf=False
  input  wire  [1:0]  regf_w26_f20_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w26_f20_wbus_o, // Bus Write Value
  output logic        regf_w26_f20_wr_o,   // Bus Write Strobe
  //   regf_w26_f22_o: bus=RWL core=WL in_regf=True
  input  wire  [1:0]  regf_w26_f22_wval_i, // Core Write Value
  input  wire         regf_w26_f22_wr_i,   // Core Write Strobe
  //   regf_w26_f24_o: bus=RWL core=WO in_regf=False
  input  wire  [1:0]  regf_w26_f24_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w26_f24_wbus_o, // Bus Write Value
  output logic        regf_w26_f24_wr_o,   // Bus Write Strobe
  //   regf_w26_f26_o: bus=RWL core=WO in_regf=True
  input  wire  [1:0]  regf_w26_f26_wval_i, // Core Write Value
  input  wire         regf_w26_f26_wr_i,   // Core Write Strobe
  //   regf_w26_f28_o: bus=W0C core=RC in_regf=False
  input  wire  [1:0]  regf_w26_f28_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w26_f28_wbus_o, // Bus Write Value
  output logic        regf_w26_f28_wr_o,   // Bus Write Strobe
  //   regf_w26_f30_o: bus=W0C core=RC in_regf=True
  output logic [1:0]  regf_w26_f30_rval_o, // Core Read Value
  input  wire         regf_w26_f30_rd_i,   // Core Read Strobe
  //   regf_w27_f0_o: bus=W0C core=RO in_regf=False
  input  wire  [1:0]  regf_w27_f0_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w27_f0_wbus_o,  // Bus Write Value
  output logic        regf_w27_f0_wr_o,    // Bus Write Strobe
  //   regf_w27_f2_o: bus=W0C core=RO in_regf=True
  output logic [1:0]  regf_w27_f2_rval_o,  // Core Read Value
  //   regf_w27_f4_o: bus=W0C core=RP in_regf=False
  input  wire  [1:0]  regf_w27_f4_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w27_f4_wbus_o,  // Bus Write Value
  output logic        regf_w27_f4_wr_o,    // Bus Write Strobe
  //   regf_w27_f6_o: bus=W0C core=RP in_regf=True
  output logic [1:0]  regf_w27_f6_rval_o,  // Core Read Value
  //   regf_w27_f8_o: bus=W0C core=RS in_regf=False
  input  wire  [1:0]  regf_w27_f8_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w27_f8_wbus_o,  // Bus Write Value
  output logic        regf_w27_f8_wr_o,    // Bus Write Strobe
  //   regf_w27_f10_o: bus=W0C core=RS in_regf=True
  output logic [1:0]  regf_w27_f10_rval_o, // Core Read Value
  input  wire         regf_w27_f10_rd_i,   // Core Read Strobe
  //   regf_w27_f12_o: bus=W0C core=RT in_regf=False
  input  wire  [1:0]  regf_w27_f12_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w27_f12_wbus_o, // Bus Write Value
  output logic        regf_w27_f12_wr_o,   // Bus Write Strobe
  //   regf_w27_f14_o: bus=W0C core=RT in_regf=True
  output logic [1:0]  regf_w27_f14_rval_o, // Core Read Value
  input  wire         regf_w27_f14_rd_i,   // Core Read Strobe
  //   regf_w27_f16_o: bus=W0C core=RW in_regf=False
  input  wire  [1:0]  regf_w27_f16_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w27_f16_wbus_o, // Bus Write Value
  output logic        regf_w27_f16_wr_o,   // Bus Write Strobe
  //   regf_w27_f18_o: bus=W0C core=RW in_regf=True
  output logic [1:0]  regf_w27_f18_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w27_f18_wval_i, // Core Write Value
  input  wire         regf_w27_f18_wr_i,   // Core Write Strobe
  //   regf_w27_f20_o: bus=W0C core=RW0C in_regf=False
  input  wire  [1:0]  regf_w27_f20_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w27_f20_wbus_o, // Bus Write Value
  output logic        regf_w27_f20_wr_o,   // Bus Write Strobe
  //   regf_w27_f22_o: bus=W0C core=RW0C in_regf=True
  output logic [1:0]  regf_w27_f22_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w27_f22_wval_i, // Core Write Value
  input  wire         regf_w27_f22_wr_i,   // Core Write Strobe
  //   regf_w27_f24_o: bus=W0C core=RW0S in_regf=False
  input  wire  [1:0]  regf_w27_f24_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w27_f24_wbus_o, // Bus Write Value
  output logic        regf_w27_f24_wr_o,   // Bus Write Strobe
  //   regf_w27_f26_o: bus=W0C core=RW0S in_regf=True
  output logic [1:0]  regf_w27_f26_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w27_f26_wval_i, // Core Write Value
  input  wire         regf_w27_f26_wr_i,   // Core Write Strobe
  //   regf_w27_f28_o: bus=W0C core=RW1C in_regf=False
  input  wire  [1:0]  regf_w27_f28_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w27_f28_wbus_o, // Bus Write Value
  output logic        regf_w27_f28_wr_o,   // Bus Write Strobe
  //   regf_w27_f30_o: bus=W0C core=RW1C in_regf=True
  output logic [1:0]  regf_w27_f30_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w27_f30_wval_i, // Core Write Value
  input  wire         regf_w27_f30_wr_i,   // Core Write Strobe
  //   regf_w28_f0_o: bus=W0C core=RW1S in_regf=False
  input  wire  [1:0]  regf_w28_f0_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w28_f0_wbus_o,  // Bus Write Value
  output logic        regf_w28_f0_wr_o,    // Bus Write Strobe
  //   regf_w28_f2_o: bus=W0C core=RW1S in_regf=True
  output logic [1:0]  regf_w28_f2_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w28_f2_wval_i,  // Core Write Value
  input  wire         regf_w28_f2_wr_i,    // Core Write Strobe
  //   regf_w28_f4_o: bus=W0C core=RWL in_regf=False
  input  wire  [1:0]  regf_w28_f4_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w28_f4_wbus_o,  // Bus Write Value
  output logic        regf_w28_f4_wr_o,    // Bus Write Strobe
  //   regf_w28_f6_o: bus=W0C core=RWL in_regf=True
  output logic [1:0]  regf_w28_f6_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w28_f6_wval_i,  // Core Write Value
  input  wire         regf_w28_f6_wr_i,    // Core Write Strobe
  //   regf_w28_f8_o: bus=W0S core=RC in_regf=False
  input  wire  [1:0]  regf_w28_f8_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w28_f8_wbus_o,  // Bus Write Value
  output logic        regf_w28_f8_wr_o,    // Bus Write Strobe
  //   regf_w28_f10_o: bus=W0S core=RC in_regf=True
  output logic [1:0]  regf_w28_f10_rval_o, // Core Read Value
  input  wire         regf_w28_f10_rd_i,   // Core Read Strobe
  //   regf_w28_f12_o: bus=W0S core=RO in_regf=False
  input  wire  [1:0]  regf_w28_f12_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w28_f12_wbus_o, // Bus Write Value
  output logic        regf_w28_f12_wr_o,   // Bus Write Strobe
  //   regf_w28_f14_o: bus=W0S core=RO in_regf=True
  output logic [1:0]  regf_w28_f14_rval_o, // Core Read Value
  //   regf_w28_f16_o: bus=W0S core=RP in_regf=False
  input  wire  [1:0]  regf_w28_f16_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w28_f16_wbus_o, // Bus Write Value
  output logic        regf_w28_f16_wr_o,   // Bus Write Strobe
  //   regf_w28_f18_o: bus=W0S core=RP in_regf=True
  output logic [1:0]  regf_w28_f18_rval_o, // Core Read Value
  //   regf_w28_f20_o: bus=W0S core=RS in_regf=False
  input  wire  [1:0]  regf_w28_f20_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w28_f20_wbus_o, // Bus Write Value
  output logic        regf_w28_f20_wr_o,   // Bus Write Strobe
  //   regf_w28_f22_o: bus=W0S core=RS in_regf=True
  output logic [1:0]  regf_w28_f22_rval_o, // Core Read Value
  input  wire         regf_w28_f22_rd_i,   // Core Read Strobe
  //   regf_w28_f24_o: bus=W0S core=RT in_regf=False
  input  wire  [1:0]  regf_w28_f24_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w28_f24_wbus_o, // Bus Write Value
  output logic        regf_w28_f24_wr_o,   // Bus Write Strobe
  //   regf_w28_f26_o: bus=W0S core=RT in_regf=True
  output logic [1:0]  regf_w28_f26_rval_o, // Core Read Value
  input  wire         regf_w28_f26_rd_i,   // Core Read Strobe
  //   regf_w28_f28_o: bus=W0S core=RW in_regf=False
  input  wire  [1:0]  regf_w28_f28_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w28_f28_wbus_o, // Bus Write Value
  output logic        regf_w28_f28_wr_o,   // Bus Write Strobe
  //   regf_w28_f30_o: bus=W0S core=RW in_regf=True
  output logic [1:0]  regf_w28_f30_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w28_f30_wval_i, // Core Write Value
  input  wire         regf_w28_f30_wr_i,   // Core Write Strobe
  //   regf_w29_f0_o: bus=W0S core=RW0C in_regf=False
  input  wire  [1:0]  regf_w29_f0_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w29_f0_wbus_o,  // Bus Write Value
  output logic        regf_w29_f0_wr_o,    // Bus Write Strobe
  //   regf_w29_f2_o: bus=W0S core=RW0C in_regf=True
  output logic [1:0]  regf_w29_f2_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w29_f2_wval_i,  // Core Write Value
  input  wire         regf_w29_f2_wr_i,    // Core Write Strobe
  //   regf_w29_f4_o: bus=W0S core=RW0S in_regf=False
  input  wire  [1:0]  regf_w29_f4_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w29_f4_wbus_o,  // Bus Write Value
  output logic        regf_w29_f4_wr_o,    // Bus Write Strobe
  //   regf_w29_f6_o: bus=W0S core=RW0S in_regf=True
  output logic [1:0]  regf_w29_f6_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w29_f6_wval_i,  // Core Write Value
  input  wire         regf_w29_f6_wr_i,    // Core Write Strobe
  //   regf_w29_f8_o: bus=W0S core=RW1C in_regf=False
  input  wire  [1:0]  regf_w29_f8_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w29_f8_wbus_o,  // Bus Write Value
  output logic        regf_w29_f8_wr_o,    // Bus Write Strobe
  //   regf_w29_f10_o: bus=W0S core=RW1C in_regf=True
  output logic [1:0]  regf_w29_f10_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w29_f10_wval_i, // Core Write Value
  input  wire         regf_w29_f10_wr_i,   // Core Write Strobe
  //   regf_w29_f12_o: bus=W0S core=RW1S in_regf=False
  input  wire  [1:0]  regf_w29_f12_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w29_f12_wbus_o, // Bus Write Value
  output logic        regf_w29_f12_wr_o,   // Bus Write Strobe
  //   regf_w29_f14_o: bus=W0S core=RW1S in_regf=True
  output logic [1:0]  regf_w29_f14_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w29_f14_wval_i, // Core Write Value
  input  wire         regf_w29_f14_wr_i,   // Core Write Strobe
  //   regf_w29_f16_o: bus=W0S core=RWL in_regf=False
  input  wire  [1:0]  regf_w29_f16_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w29_f16_wbus_o, // Bus Write Value
  output logic        regf_w29_f16_wr_o,   // Bus Write Strobe
  //   regf_w29_f18_o: bus=W0S core=RWL in_regf=True
  output logic [1:0]  regf_w29_f18_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w29_f18_wval_i, // Core Write Value
  input  wire         regf_w29_f18_wr_i,   // Core Write Strobe
  //   regf_w29_f20_o: bus=W1C core=RC in_regf=False
  input  wire  [1:0]  regf_w29_f20_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w29_f20_wbus_o, // Bus Write Value
  output logic        regf_w29_f20_wr_o,   // Bus Write Strobe
  //   regf_w29_f22_o: bus=W1C core=RC in_regf=True
  output logic [1:0]  regf_w29_f22_rval_o, // Core Read Value
  input  wire         regf_w29_f22_rd_i,   // Core Read Strobe
  //   regf_w29_f24_o: bus=W1C core=RO in_regf=False
  input  wire  [1:0]  regf_w29_f24_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w29_f24_wbus_o, // Bus Write Value
  output logic        regf_w29_f24_wr_o,   // Bus Write Strobe
  //   regf_w29_f26_o: bus=W1C core=RO in_regf=True
  output logic [1:0]  regf_w29_f26_rval_o, // Core Read Value
  //   regf_w29_f28_o: bus=W1C core=RP in_regf=False
  input  wire  [1:0]  regf_w29_f28_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w29_f28_wbus_o, // Bus Write Value
  output logic        regf_w29_f28_wr_o,   // Bus Write Strobe
  //   regf_w29_f30_o: bus=W1C core=RP in_regf=True
  output logic [1:0]  regf_w29_f30_rval_o, // Core Read Value
  //   regf_w30_f0_o: bus=W1C core=RS in_regf=False
  input  wire  [1:0]  regf_w30_f0_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w30_f0_wbus_o,  // Bus Write Value
  output logic        regf_w30_f0_wr_o,    // Bus Write Strobe
  //   regf_w30_f2_o: bus=W1C core=RS in_regf=True
  output logic [1:0]  regf_w30_f2_rval_o,  // Core Read Value
  input  wire         regf_w30_f2_rd_i,    // Core Read Strobe
  //   regf_w30_f4_o: bus=W1C core=RT in_regf=False
  input  wire  [1:0]  regf_w30_f4_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w30_f4_wbus_o,  // Bus Write Value
  output logic        regf_w30_f4_wr_o,    // Bus Write Strobe
  //   regf_w30_f6_o: bus=W1C core=RT in_regf=True
  output logic [1:0]  regf_w30_f6_rval_o,  // Core Read Value
  input  wire         regf_w30_f6_rd_i,    // Core Read Strobe
  //   regf_w30_f8_o: bus=W1C core=RW in_regf=False
  input  wire  [1:0]  regf_w30_f8_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w30_f8_wbus_o,  // Bus Write Value
  output logic        regf_w30_f8_wr_o,    // Bus Write Strobe
  //   regf_w30_f10_o: bus=W1C core=RW in_regf=True
  output logic [1:0]  regf_w30_f10_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w30_f10_wval_i, // Core Write Value
  input  wire         regf_w30_f10_wr_i,   // Core Write Strobe
  //   regf_w30_f12_o: bus=W1C core=RW0C in_regf=False
  input  wire  [1:0]  regf_w30_f12_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w30_f12_wbus_o, // Bus Write Value
  output logic        regf_w30_f12_wr_o,   // Bus Write Strobe
  //   regf_w30_f14_o: bus=W1C core=RW0C in_regf=True
  output logic [1:0]  regf_w30_f14_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w30_f14_wval_i, // Core Write Value
  input  wire         regf_w30_f14_wr_i,   // Core Write Strobe
  //   regf_w30_f16_o: bus=W1C core=RW0S in_regf=False
  input  wire  [1:0]  regf_w30_f16_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w30_f16_wbus_o, // Bus Write Value
  output logic        regf_w30_f16_wr_o,   // Bus Write Strobe
  //   regf_w30_f18_o: bus=W1C core=RW0S in_regf=True
  output logic [1:0]  regf_w30_f18_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w30_f18_wval_i, // Core Write Value
  input  wire         regf_w30_f18_wr_i,   // Core Write Strobe
  //   regf_w30_f20_o: bus=W1C core=RW1C in_regf=False
  input  wire  [1:0]  regf_w30_f20_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w30_f20_wbus_o, // Bus Write Value
  output logic        regf_w30_f20_wr_o,   // Bus Write Strobe
  //   regf_w30_f22_o: bus=W1C core=RW1C in_regf=True
  output logic [1:0]  regf_w30_f22_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w30_f22_wval_i, // Core Write Value
  input  wire         regf_w30_f22_wr_i,   // Core Write Strobe
  //   regf_w30_f24_o: bus=W1C core=RW1S in_regf=False
  input  wire  [1:0]  regf_w30_f24_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w30_f24_wbus_o, // Bus Write Value
  output logic        regf_w30_f24_wr_o,   // Bus Write Strobe
  //   regf_w30_f26_o: bus=W1C core=RW1S in_regf=True
  output logic [1:0]  regf_w30_f26_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w30_f26_wval_i, // Core Write Value
  input  wire         regf_w30_f26_wr_i,   // Core Write Strobe
  //   regf_w30_f28_o: bus=W1C core=RWL in_regf=False
  input  wire  [1:0]  regf_w30_f28_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w30_f28_wbus_o, // Bus Write Value
  output logic        regf_w30_f28_wr_o,   // Bus Write Strobe
  //   regf_w30_f30_o: bus=W1C core=RWL in_regf=True
  output logic [1:0]  regf_w30_f30_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w30_f30_wval_i, // Core Write Value
  input  wire         regf_w30_f30_wr_i,   // Core Write Strobe
  //   regf_w31_f0_o: bus=W1S core=RC in_regf=False
  input  wire  [1:0]  regf_w31_f0_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w31_f0_wbus_o,  // Bus Write Value
  output logic        regf_w31_f0_wr_o,    // Bus Write Strobe
  //   regf_w31_f2_o: bus=W1S core=RC in_regf=True
  output logic [1:0]  regf_w31_f2_rval_o,  // Core Read Value
  input  wire         regf_w31_f2_rd_i,    // Core Read Strobe
  //   regf_w31_f4_o: bus=W1S core=RO in_regf=False
  input  wire  [1:0]  regf_w31_f4_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w31_f4_wbus_o,  // Bus Write Value
  output logic        regf_w31_f4_wr_o,    // Bus Write Strobe
  //   regf_w31_f6_o: bus=W1S core=RO in_regf=True
  output logic [1:0]  regf_w31_f6_rval_o,  // Core Read Value
  //   regf_w31_f8_o: bus=W1S core=RP in_regf=False
  input  wire  [1:0]  regf_w31_f8_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w31_f8_wbus_o,  // Bus Write Value
  output logic        regf_w31_f8_wr_o,    // Bus Write Strobe
  //   regf_w31_f10_o: bus=W1S core=RP in_regf=True
  output logic [1:0]  regf_w31_f10_rval_o, // Core Read Value
  //   regf_w31_f12_o: bus=W1S core=RS in_regf=False
  input  wire  [1:0]  regf_w31_f12_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w31_f12_wbus_o, // Bus Write Value
  output logic        regf_w31_f12_wr_o,   // Bus Write Strobe
  //   regf_w31_f14_o: bus=W1S core=RS in_regf=True
  output logic [1:0]  regf_w31_f14_rval_o, // Core Read Value
  input  wire         regf_w31_f14_rd_i,   // Core Read Strobe
  //   regf_w31_f16_o: bus=W1S core=RT in_regf=False
  input  wire  [1:0]  regf_w31_f16_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w31_f16_wbus_o, // Bus Write Value
  output logic        regf_w31_f16_wr_o,   // Bus Write Strobe
  //   regf_w31_f18_o: bus=W1S core=RT in_regf=True
  output logic [1:0]  regf_w31_f18_rval_o, // Core Read Value
  input  wire         regf_w31_f18_rd_i,   // Core Read Strobe
  //   regf_w31_f20_o: bus=W1S core=RW in_regf=False
  input  wire  [1:0]  regf_w31_f20_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w31_f20_wbus_o, // Bus Write Value
  output logic        regf_w31_f20_wr_o,   // Bus Write Strobe
  //   regf_w31_f22_o: bus=W1S core=RW in_regf=True
  output logic [1:0]  regf_w31_f22_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w31_f22_wval_i, // Core Write Value
  input  wire         regf_w31_f22_wr_i,   // Core Write Strobe
  //   regf_w31_f24_o: bus=W1S core=RW0C in_regf=False
  input  wire  [1:0]  regf_w31_f24_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w31_f24_wbus_o, // Bus Write Value
  output logic        regf_w31_f24_wr_o,   // Bus Write Strobe
  //   regf_w31_f26_o: bus=W1S core=RW0C in_regf=True
  output logic [1:0]  regf_w31_f26_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w31_f26_wval_i, // Core Write Value
  input  wire         regf_w31_f26_wr_i,   // Core Write Strobe
  //   regf_w31_f28_o: bus=W1S core=RW0S in_regf=False
  input  wire  [1:0]  regf_w31_f28_rbus_i, // Bus Read Value
  output logic [1:0]  regf_w31_f28_wbus_o, // Bus Write Value
  output logic        regf_w31_f28_wr_o,   // Bus Write Strobe
  //   regf_w31_f30_o: bus=W1S core=RW0S in_regf=True
  output logic [1:0]  regf_w31_f30_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w31_f30_wval_i, // Core Write Value
  input  wire         regf_w31_f30_wr_i,   // Core Write Strobe
  //   regf_w32_f0_o: bus=W1S core=RW1C in_regf=False
  input  wire  [1:0]  regf_w32_f0_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w32_f0_wbus_o,  // Bus Write Value
  output logic        regf_w32_f0_wr_o,    // Bus Write Strobe
  //   regf_w32_f2_o: bus=W1S core=RW1C in_regf=True
  output logic [1:0]  regf_w32_f2_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w32_f2_wval_i,  // Core Write Value
  input  wire         regf_w32_f2_wr_i,    // Core Write Strobe
  //   regf_w32_f4_o: bus=W1S core=RW1S in_regf=False
  input  wire  [1:0]  regf_w32_f4_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w32_f4_wbus_o,  // Bus Write Value
  output logic        regf_w32_f4_wr_o,    // Bus Write Strobe
  //   regf_w32_f6_o: bus=W1S core=RW1S in_regf=True
  output logic [1:0]  regf_w32_f6_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w32_f6_wval_i,  // Core Write Value
  input  wire         regf_w32_f6_wr_i,    // Core Write Strobe
  //   regf_w32_f8_o: bus=W1S core=RWL in_regf=False
  input  wire  [1:0]  regf_w32_f8_rbus_i,  // Bus Read Value
  output logic [1:0]  regf_w32_f8_wbus_o,  // Bus Write Value
  output logic        regf_w32_f8_wr_o,    // Bus Write Strobe
  //   regf_w32_f10_o: bus=W1S core=RWL in_regf=True
  output logic [1:0]  regf_w32_f10_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w32_f10_wval_i, // Core Write Value
  input  wire         regf_w32_f10_wr_i,   // Core Write Strobe
  //   regf_w32_f12_o: bus=WL core=RC in_regf=False
  output logic [1:0]  regf_w32_f12_wbus_o, // Bus Write Value
  output logic        regf_w32_f12_wr_o,   // Bus Write Strobe
  //   regf_w32_f14_o: bus=WL core=RC in_regf=True
  output logic [1:0]  regf_w32_f14_rval_o, // Core Read Value
  input  wire         regf_w32_f14_rd_i,   // Core Read Strobe
  //   regf_w32_f16_o: bus=WL core=RO in_regf=False
  output logic [1:0]  regf_w32_f16_wbus_o, // Bus Write Value
  output logic        regf_w32_f16_wr_o,   // Bus Write Strobe
  //   regf_w32_f18_o: bus=WL core=RO in_regf=True
  output logic [1:0]  regf_w32_f18_rval_o, // Core Read Value
  //   regf_w32_f20_o: bus=WL core=RP in_regf=False
  output logic [1:0]  regf_w32_f20_wbus_o, // Bus Write Value
  output logic        regf_w32_f20_wr_o,   // Bus Write Strobe
  //   regf_w32_f22_o: bus=WL core=RP in_regf=True
  output logic [1:0]  regf_w32_f22_rval_o, // Core Read Value
  //   regf_w32_f24_o: bus=WL core=RS in_regf=False
  output logic [1:0]  regf_w32_f24_wbus_o, // Bus Write Value
  output logic        regf_w32_f24_wr_o,   // Bus Write Strobe
  //   regf_w32_f26_o: bus=WL core=RS in_regf=True
  output logic [1:0]  regf_w32_f26_rval_o, // Core Read Value
  input  wire         regf_w32_f26_rd_i,   // Core Read Strobe
  //   regf_w32_f28_o: bus=WL core=RT in_regf=False
  output logic [1:0]  regf_w32_f28_wbus_o, // Bus Write Value
  output logic        regf_w32_f28_wr_o,   // Bus Write Strobe
  //   regf_w32_f30_o: bus=WL core=RT in_regf=True
  output logic [1:0]  regf_w32_f30_rval_o, // Core Read Value
  input  wire         regf_w32_f30_rd_i,   // Core Read Strobe
  //   regf_w33_f0_o: bus=WL core=RW in_regf=False
  output logic [1:0]  regf_w33_f0_wbus_o,  // Bus Write Value
  output logic        regf_w33_f0_wr_o,    // Bus Write Strobe
  //   regf_w33_f2_o: bus=WL core=RW in_regf=True
  output logic [1:0]  regf_w33_f2_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w33_f2_wval_i,  // Core Write Value
  input  wire         regf_w33_f2_wr_i,    // Core Write Strobe
  //   regf_w33_f4_o: bus=WL core=RW0C in_regf=False
  output logic [1:0]  regf_w33_f4_wbus_o,  // Bus Write Value
  output logic        regf_w33_f4_wr_o,    // Bus Write Strobe
  //   regf_w33_f6_o: bus=WL core=RW0C in_regf=True
  output logic [1:0]  regf_w33_f6_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w33_f6_wval_i,  // Core Write Value
  input  wire         regf_w33_f6_wr_i,    // Core Write Strobe
  //   regf_w33_f8_o: bus=WL core=RW0S in_regf=False
  output logic [1:0]  regf_w33_f8_wbus_o,  // Bus Write Value
  output logic        regf_w33_f8_wr_o,    // Bus Write Strobe
  //   regf_w33_f10_o: bus=WL core=RW0S in_regf=True
  output logic [1:0]  regf_w33_f10_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w33_f10_wval_i, // Core Write Value
  input  wire         regf_w33_f10_wr_i,   // Core Write Strobe
  //   regf_w33_f12_o: bus=WL core=RW1C in_regf=False
  output logic [1:0]  regf_w33_f12_wbus_o, // Bus Write Value
  output logic        regf_w33_f12_wr_o,   // Bus Write Strobe
  //   regf_w33_f14_o: bus=WL core=RW1C in_regf=True
  output logic [1:0]  regf_w33_f14_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w33_f14_wval_i, // Core Write Value
  input  wire         regf_w33_f14_wr_i,   // Core Write Strobe
  //   regf_w33_f16_o: bus=WL core=RW1S in_regf=False
  output logic [1:0]  regf_w33_f16_wbus_o, // Bus Write Value
  output logic        regf_w33_f16_wr_o,   // Bus Write Strobe
  //   regf_w33_f18_o: bus=WL core=RW1S in_regf=True
  output logic [1:0]  regf_w33_f18_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w33_f18_wval_i, // Core Write Value
  input  wire         regf_w33_f18_wr_i,   // Core Write Strobe
  //   regf_w33_f20_o: bus=WL core=RWL in_regf=False
  output logic [1:0]  regf_w33_f20_wbus_o, // Bus Write Value
  output logic        regf_w33_f20_wr_o,   // Bus Write Strobe
  //   regf_w33_f22_o: bus=WL core=RWL in_regf=True
  output logic [1:0]  regf_w33_f22_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w33_f22_wval_i, // Core Write Value
  input  wire         regf_w33_f22_wr_i,   // Core Write Strobe
  //   regf_w33_f24_o: bus=WO core=RC in_regf=False
  output logic [1:0]  regf_w33_f24_wbus_o, // Bus Write Value
  output logic        regf_w33_f24_wr_o,   // Bus Write Strobe
  //   regf_w33_f26_o: bus=WO core=RC in_regf=True
  output logic [1:0]  regf_w33_f26_rval_o, // Core Read Value
  input  wire         regf_w33_f26_rd_i,   // Core Read Strobe
  //   regf_w33_f28_o: bus=WO core=RO in_regf=False
  output logic [1:0]  regf_w33_f28_wbus_o, // Bus Write Value
  output logic        regf_w33_f28_wr_o,   // Bus Write Strobe
  //   regf_w33_f30_o: bus=WO core=RO in_regf=True
  output logic [1:0]  regf_w33_f30_rval_o, // Core Read Value
  //   regf_w34_f0_o: bus=WO core=RP in_regf=False
  output logic [1:0]  regf_w34_f0_wbus_o,  // Bus Write Value
  output logic        regf_w34_f0_wr_o,    // Bus Write Strobe
  //   regf_w34_f2_o: bus=WO core=RP in_regf=True
  output logic [1:0]  regf_w34_f2_rval_o,  // Core Read Value
  //   regf_w34_f4_o: bus=WO core=RS in_regf=False
  output logic [1:0]  regf_w34_f4_wbus_o,  // Bus Write Value
  output logic        regf_w34_f4_wr_o,    // Bus Write Strobe
  //   regf_w34_f6_o: bus=WO core=RS in_regf=True
  output logic [1:0]  regf_w34_f6_rval_o,  // Core Read Value
  input  wire         regf_w34_f6_rd_i,    // Core Read Strobe
  //   regf_w34_f8_o: bus=WO core=RT in_regf=False
  output logic [1:0]  regf_w34_f8_wbus_o,  // Bus Write Value
  output logic        regf_w34_f8_wr_o,    // Bus Write Strobe
  //   regf_w34_f10_o: bus=WO core=RT in_regf=True
  output logic [1:0]  regf_w34_f10_rval_o, // Core Read Value
  input  wire         regf_w34_f10_rd_i,   // Core Read Strobe
  //   regf_w34_f12_o: bus=WO core=RW in_regf=False
  output logic [1:0]  regf_w34_f12_wbus_o, // Bus Write Value
  output logic        regf_w34_f12_wr_o,   // Bus Write Strobe
  //   regf_w34_f14_o: bus=WO core=RW in_regf=True
  output logic [1:0]  regf_w34_f14_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w34_f14_wval_i, // Core Write Value
  input  wire         regf_w34_f14_wr_i,   // Core Write Strobe
  //   regf_w34_f16_o: bus=WO core=RW0C in_regf=False
  output logic [1:0]  regf_w34_f16_wbus_o, // Bus Write Value
  output logic        regf_w34_f16_wr_o,   // Bus Write Strobe
  //   regf_w34_f18_o: bus=WO core=RW0C in_regf=True
  output logic [1:0]  regf_w34_f18_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w34_f18_wval_i, // Core Write Value
  input  wire         regf_w34_f18_wr_i,   // Core Write Strobe
  //   regf_w34_f20_o: bus=WO core=RW0S in_regf=False
  output logic [1:0]  regf_w34_f20_wbus_o, // Bus Write Value
  output logic        regf_w34_f20_wr_o,   // Bus Write Strobe
  //   regf_w34_f22_o: bus=WO core=RW0S in_regf=True
  output logic [1:0]  regf_w34_f22_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w34_f22_wval_i, // Core Write Value
  input  wire         regf_w34_f22_wr_i,   // Core Write Strobe
  //   regf_w34_f24_o: bus=WO core=RW1C in_regf=False
  output logic [1:0]  regf_w34_f24_wbus_o, // Bus Write Value
  output logic        regf_w34_f24_wr_o,   // Bus Write Strobe
  //   regf_w34_f26_o: bus=WO core=RW1C in_regf=True
  output logic [1:0]  regf_w34_f26_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w34_f26_wval_i, // Core Write Value
  input  wire         regf_w34_f26_wr_i,   // Core Write Strobe
  //   regf_w34_f28_o: bus=WO core=RW1S in_regf=False
  output logic [1:0]  regf_w34_f28_wbus_o, // Bus Write Value
  output logic        regf_w34_f28_wr_o,   // Bus Write Strobe
  //   regf_w34_f30_o: bus=WO core=RW1S in_regf=True
  output logic [1:0]  regf_w34_f30_rval_o, // Core Read Value
  input  wire  [1:0]  regf_w34_f30_wval_i, // Core Write Value
  input  wire         regf_w34_f30_wr_i,   // Core Write Strobe
  //   regf_w35_f0_o: bus=WO core=RWL in_regf=False
  output logic [1:0]  regf_w35_f0_wbus_o,  // Bus Write Value
  output logic        regf_w35_f0_wr_o,    // Bus Write Strobe
  //   regf_w35_f2_o: bus=WO core=RWL in_regf=True
  output logic [1:0]  regf_w35_f2_rval_o,  // Core Read Value
  input  wire  [1:0]  regf_w35_f2_wval_i,  // Core Write Value
  input  wire         regf_w35_f2_wr_i     // Core Write Strobe
  // regfword_o
);




  // ------------------------------------------------------
  //  Local Parameter
  // ------------------------------------------------------
  localparam logic [1:0] data_w0_f4_c  = 2'h0; // w0 / f4
  localparam logic [1:0] data_w0_f6_c  = 2'h0; // w0 / f6
  localparam logic [1:0] data_w1_f12_c = 2'h0; // w1 / f12
  localparam logic [1:0] data_w1_f14_c = 2'h0; // w1 / f14
  localparam logic [1:0] data_w4_f24_c = 2'h0; // w4 / f24
  localparam logic [1:0] data_w4_f30_c = 2'h0; // w4 / f30
  localparam logic [1:0] data_w5_f0_c  = 2'h0; // w5 / f0
  localparam logic [1:0] data_w6_f26_c = 2'h0; // w6 / f26
  localparam logic [1:0] data_w7_f0_c  = 2'h0; // w7 / f0
  localparam logic [1:0] data_w7_f2_c  = 2'h0; // w7 / f2


  // ------------------------------------------------------
  //  Signals
  // ------------------------------------------------------
  logic [1:0] data_w0_f2_r;          // Word w0
  logic [1:0] data_w0_f10_r;
  logic [1:0] data_w0_f14_r;
  logic [1:0] data_w0_f18_r;
  logic [1:0] data_w0_f22_r;
  logic [1:0] data_w0_f26_r;
  logic [1:0] data_w0_f30_r;
  logic [1:0] data_w1_f2_r;          // Word w1
  logic [1:0] data_w1_f6_r;
  logic [1:0] data_w1_f10_r;
  logic [1:0] data_w1_f18_r;
  logic [1:0] data_w1_f22_r;
  logic [1:0] data_w1_f26_r;
  logic [1:0] data_w1_f30_r;
  logic [1:0] data_w2_f2_r;          // Word w2
  logic [1:0] data_w2_f6_r;
  logic [1:0] data_w2_f10_r;
  logic [1:0] data_w2_f14_r;
  logic [1:0] data_w2_f18_r;
  logic [1:0] data_w2_f22_r;
  logic [1:0] data_w2_f26_r;
  logic [1:0] data_w2_f30_r;
  logic [1:0] data_w3_f2_r;          // Word w3
  logic [1:0] data_w3_f6_r;
  logic [1:0] data_w3_f10_r;
  logic [1:0] data_w3_f14_r;
  logic [1:0] data_w3_f18_r;
  logic [1:0] data_w3_f22_r;
  logic [1:0] data_w3_f26_r;
  logic [1:0] data_w3_f30_r;
  logic [1:0] data_w4_f2_r;          // Word w4
  logic [1:0] data_w4_f6_r;
  logic [1:0] data_w4_f10_r;
  logic [1:0] data_w4_f14_r;
  logic [1:0] data_w4_f18_r;
  logic [1:0] data_w4_f22_r;
  logic [1:0] data_w4_f28_r;
  logic [1:0] data_w5_f4_r;          // Word w5
  logic [1:0] data_w5_f8_r;
  logic [1:0] data_w5_f12_r;
  logic [1:0] data_w5_f16_r;
  logic [1:0] data_w5_f20_r;
  logic [1:0] data_w5_f24_r;
  logic [1:0] data_w5_f28_r;
  logic [1:0] data_w6_f0_r;          // Word w6
  logic [1:0] data_w6_f4_r;
  logic [1:0] data_w6_f8_r;
  logic [1:0] data_w6_f12_r;
  logic [1:0] data_w6_f16_r;
  logic [1:0] data_w6_f20_r;
  logic [1:0] data_w6_f24_r;
  logic [1:0] data_w6_f30_r;
  logic [1:0] data_w7_f6_r;          // Word w7
  logic [1:0] data_w7_f10_r;
  logic [1:0] data_w7_f14_r;
  logic [1:0] data_w7_f18_r;
  logic [1:0] data_w7_f22_r;
  logic [1:0] data_w7_f26_r;
  logic [1:0] data_w7_f30_r;
  logic [1:0] data_w8_f2_r;          // Word w8
  logic [1:0] data_w8_f6_r;
  logic [1:0] data_w8_f10_r;
  logic [1:0] data_w8_f14_r;
  logic [1:0] data_w8_f18_r;
  logic [1:0] data_w8_f22_r;
  logic [1:0] data_w8_f26_r;
  logic [1:0] data_w8_f30_r;
  logic [1:0] data_w9_f2_r;          // Word w9
  logic [1:0] data_w9_f6_r;
  logic [1:0] data_w9_f10_r;
  logic [1:0] data_w9_f14_r;
  logic [1:0] data_w9_f18_r;
  logic [1:0] data_w9_f22_r;
  logic [1:0] data_w9_f26_r;
  logic [1:0] data_w9_f30_r;
  logic [1:0] data_w10_f2_r;         // Word w10
  logic [1:0] data_w10_f6_r;
  logic [1:0] data_w10_f10_r;
  logic [1:0] data_w10_f14_r;
  logic [1:0] data_w10_f18_r;
  logic [1:0] data_w10_f22_r;
  logic [1:0] data_w10_f26_r;
  logic [1:0] data_w10_f30_r;
  logic [1:0] data_w11_f2_r;         // Word w11
  logic [1:0] data_w11_f6_r;
  logic [1:0] data_w11_f10_r;
  logic [1:0] data_w11_f14_r;
  logic [1:0] data_w11_f18_r;
  logic [1:0] data_w11_f22_r;
  logic [1:0] data_w11_f26_r;
  logic [1:0] data_w11_f30_r;
  logic [1:0] data_w12_f2_r;         // Word w12
  logic [1:0] data_w12_f6_r;
  logic [1:0] data_w12_f10_r;
  logic [1:0] data_w12_f14_r;
  logic [1:0] data_w12_f18_r;
  logic [1:0] data_w12_f22_r;
  logic [1:0] data_w12_f26_r;
  logic [1:0] data_w12_f30_r;
  logic [1:0] data_w13_f2_r;         // Word w13
  logic [1:0] data_w13_f6_r;
  logic [1:0] data_w13_f10_r;
  logic [1:0] data_w13_f14_r;
  logic [1:0] data_w13_f18_r;
  logic [1:0] data_w13_f22_r;
  logic [1:0] data_w13_f26_r;
  logic [1:0] data_w13_f30_r;
  logic [1:0] data_w14_f2_r;         // Word w14
  logic [1:0] data_w14_f6_r;
  logic [1:0] data_w14_f10_r;
  logic [1:0] data_w14_f14_r;
  logic [1:0] data_w14_f18_r;
  logic [1:0] data_w14_f22_r;
  logic [1:0] data_w14_f26_r;
  logic [1:0] data_w14_f30_r;
  logic [1:0] data_w15_f2_r;         // Word w15
  logic [1:0] data_w15_f6_r;
  logic [1:0] data_w15_f10_r;
  logic [1:0] data_w15_f14_r;
  logic [1:0] data_w15_f18_r;
  logic [1:0] data_w15_f22_r;
  logic [1:0] data_w15_f26_r;
  logic [1:0] data_w15_f30_r;
  logic [1:0] data_w16_f2_r;         // Word w16
  logic [1:0] data_w16_f6_r;
  logic [1:0] data_w16_f10_r;
  logic [1:0] data_w16_f14_r;
  logic [1:0] data_w16_f18_r;
  logic [1:0] data_w16_f22_r;
  logic [1:0] data_w16_f26_r;
  logic [1:0] data_w16_f30_r;
  logic [1:0] data_w17_f2_r;         // Word w17
  logic [1:0] data_w17_f6_r;
  logic [1:0] data_w17_f10_r;
  logic [1:0] data_w17_f14_r;
  logic [1:0] data_w17_f18_r;
  logic [1:0] data_w17_f22_r;
  logic [1:0] data_w17_f26_r;
  logic [1:0] data_w17_f30_r;
  logic [1:0] data_w18_f2_r;         // Word w18
  logic [1:0] data_w18_f6_r;
  logic [1:0] data_w18_f10_r;
  logic [1:0] data_w18_f14_r;
  logic [1:0] data_w18_f18_r;
  logic [1:0] data_w18_f22_r;
  logic [1:0] data_w18_f26_r;
  logic [1:0] data_w18_f30_r;
  logic [1:0] data_w19_f2_r;         // Word w19
  logic [1:0] data_w19_f6_r;
  logic [1:0] data_w19_f10_r;
  logic [1:0] data_w19_f14_r;
  logic [1:0] data_w19_f18_r;
  logic [1:0] data_w19_f22_r;
  logic [1:0] data_w19_f26_r;
  logic [1:0] data_w19_f30_r;
  logic [1:0] data_w20_f2_r;         // Word w20
  logic [1:0] data_w20_f6_r;
  logic [1:0] data_w20_f10_r;
  logic [1:0] data_w20_f14_r;
  logic [1:0] data_w20_f18_r;
  logic [1:0] data_w20_f22_r;
  logic [1:0] data_w20_f26_r;
  logic [1:0] data_w20_f30_r;
  logic [1:0] data_w21_f2_r;         // Word w21
  logic [1:0] data_w21_f6_r;
  logic [1:0] data_w21_f10_r;
  logic [1:0] data_w21_f14_r;
  logic [1:0] data_w21_f18_r;
  logic [1:0] data_w21_f22_r;
  logic [1:0] data_w21_f26_r;
  logic [1:0] data_w21_f30_r;
  logic [1:0] data_w22_f2_r;         // Word w22
  logic [1:0] data_w22_f6_r;
  logic [1:0] data_w22_f10_r;
  logic [1:0] data_w22_f14_r;
  logic [1:0] data_w22_f18_r;
  logic [1:0] data_w22_f22_r;
  logic [1:0] data_w22_f26_r;
  logic [1:0] data_w22_f30_r;
  logic [1:0] data_w23_f2_r;         // Word w23
  logic [1:0] data_w23_f6_r;
  logic [1:0] data_w23_f10_r;
  logic [1:0] data_w23_f14_r;
  logic [1:0] data_w23_f18_r;
  logic [1:0] data_w23_f22_r;
  logic [1:0] data_w23_f26_r;
  logic [1:0] data_w23_f30_r;
  logic [1:0] data_w24_f2_r;         // Word w24
  logic [1:0] data_w24_f6_r;
  logic [1:0] data_w24_f10_r;
  logic [1:0] data_w24_f14_r;
  logic [1:0] data_w24_f18_r;
  logic [1:0] data_w24_f22_r;
  logic [1:0] data_w24_f26_r;
  logic [1:0] data_w24_f30_r;
  logic       bus_wronce_w24_flg0_r;
  logic [1:0] data_w25_f2_r;         // Word w25
  logic [1:0] data_w25_f6_r;
  logic [1:0] data_w25_f10_r;
  logic [1:0] data_w25_f14_r;
  logic [1:0] data_w25_f18_r;
  logic [1:0] data_w25_f22_r;
  logic [1:0] data_w25_f26_r;
  logic [1:0] data_w25_f30_r;
  logic       bus_wronce_w25_flg0_r;
  logic [1:0] data_w26_f2_r;         // Word w26
  logic [1:0] data_w26_f6_r;
  logic [1:0] data_w26_f10_r;
  logic [1:0] data_w26_f14_r;
  logic [1:0] data_w26_f18_r;
  logic [1:0] data_w26_f22_r;
  logic [1:0] data_w26_f26_r;
  logic [1:0] data_w26_f30_r;
  logic       bus_wronce_w26_flg0_r;
  logic [1:0] data_w27_f2_r;         // Word w27
  logic [1:0] data_w27_f6_r;
  logic [1:0] data_w27_f10_r;
  logic [1:0] data_w27_f14_r;
  logic [1:0] data_w27_f18_r;
  logic [1:0] data_w27_f22_r;
  logic [1:0] data_w27_f26_r;
  logic [1:0] data_w27_f30_r;
  logic [1:0] data_w28_f2_r;         // Word w28
  logic [1:0] data_w28_f6_r;
  logic [1:0] data_w28_f10_r;
  logic [1:0] data_w28_f14_r;
  logic [1:0] data_w28_f18_r;
  logic [1:0] data_w28_f22_r;
  logic [1:0] data_w28_f26_r;
  logic [1:0] data_w28_f30_r;
  logic [1:0] data_w29_f2_r;         // Word w29
  logic [1:0] data_w29_f6_r;
  logic [1:0] data_w29_f10_r;
  logic [1:0] data_w29_f14_r;
  logic [1:0] data_w29_f18_r;
  logic [1:0] data_w29_f22_r;
  logic [1:0] data_w29_f26_r;
  logic [1:0] data_w29_f30_r;
  logic [1:0] data_w30_f2_r;         // Word w30
  logic [1:0] data_w30_f6_r;
  logic [1:0] data_w30_f10_r;
  logic [1:0] data_w30_f14_r;
  logic [1:0] data_w30_f18_r;
  logic [1:0] data_w30_f22_r;
  logic [1:0] data_w30_f26_r;
  logic [1:0] data_w30_f30_r;
  logic [1:0] data_w31_f2_r;         // Word w31
  logic [1:0] data_w31_f6_r;
  logic [1:0] data_w31_f10_r;
  logic [1:0] data_w31_f14_r;
  logic [1:0] data_w31_f18_r;
  logic [1:0] data_w31_f22_r;
  logic [1:0] data_w31_f26_r;
  logic [1:0] data_w31_f30_r;
  logic [1:0] data_w32_f2_r;         // Word w32
  logic [1:0] data_w32_f6_r;
  logic [1:0] data_w32_f10_r;
  logic [1:0] data_w32_f14_r;
  logic [1:0] data_w32_f18_r;
  logic [1:0] data_w32_f22_r;
  logic [1:0] data_w32_f26_r;
  logic [1:0] data_w32_f30_r;
  logic       bus_wronce_w32_flg0_r;
  logic [1:0] data_w33_f2_r;         // Word w33
  logic [1:0] data_w33_f6_r;
  logic [1:0] data_w33_f10_r;
  logic [1:0] data_w33_f14_r;
  logic [1:0] data_w33_f18_r;
  logic [1:0] data_w33_f22_r;
  logic [1:0] data_w33_f26_r;
  logic [1:0] data_w33_f30_r;
  logic       bus_wronce_w33_flg0_r;
  logic [1:0] data_w34_f2_r;         // Word w34
  logic [1:0] data_w34_f6_r;
  logic [1:0] data_w34_f10_r;
  logic [1:0] data_w34_f14_r;
  logic [1:0] data_w34_f18_r;
  logic [1:0] data_w34_f22_r;
  logic [1:0] data_w34_f26_r;
  logic [1:0] data_w34_f30_r;
  logic [1:0] data_w35_f2_r;         // Word w35
  logic       bus_w13_wren_s;        // bus word write enables
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
  logic       bus_w2_rden_s;         // bus word read-modify enables
  logic       bus_w3_rden_s;
  logic       bus_w4_rden_s;
  logic       bus_w8_rden_s;
  logic       bus_w9_rden_s;
  logic       bus_w10_rden_s;
  logic       bus_w11_rden_s;
  logic       bus_w12_rden_s;
  logic       bus_w13_rden_s;
  logic       bus_w24_flg0_wren_s;   // special update condition signals
  logic       bus_w25_flg0_wren_s;
  logic       bus_w26_flg0_wren_s;
  logic       bus_w32_flg0_wren_s;
  logic       bus_w33_flg0_wren_s;
  logic [1:0] w13_f12_wbus_s;        // intermediate signals for bus-writes to in-core fields
  logic [1:0] w13_f16_wbus_s;
  logic [1:0] w13_f20_wbus_s;
  logic [1:0] w13_f24_wbus_s;
  logic [1:0] w13_f28_wbus_s;
  logic [1:0] w14_f0_wbus_s;
  logic [1:0] w14_f4_wbus_s;
  logic [1:0] w14_f8_wbus_s;
  logic [1:0] w14_f12_wbus_s;
  logic [1:0] w14_f16_wbus_s;
  logic [1:0] w14_f20_wbus_s;
  logic [1:0] w14_f24_wbus_s;
  logic [1:0] w14_f28_wbus_s;
  logic [1:0] w15_f0_wbus_s;
  logic [1:0] w15_f4_wbus_s;
  logic [1:0] w15_f8_wbus_s;
  logic [1:0] w15_f12_wbus_s;
  logic [1:0] w15_f16_wbus_s;
  logic [1:0] w15_f20_wbus_s;
  logic [1:0] w15_f24_wbus_s;
  logic [1:0] w15_f28_wbus_s;
  logic [1:0] w16_f0_wbus_s;
  logic [1:0] w16_f4_wbus_s;
  logic [1:0] w16_f8_wbus_s;
  logic [1:0] w16_f12_wbus_s;
  logic [1:0] w16_f16_wbus_s;
  logic [1:0] w16_f20_wbus_s;
  logic [1:0] w16_f24_wbus_s;
  logic [1:0] w16_f28_wbus_s;
  logic [1:0] w17_f0_wbus_s;
  logic [1:0] w17_f4_wbus_s;
  logic [1:0] w17_f8_wbus_s;
  logic [1:0] w17_f12_wbus_s;
  logic [1:0] w17_f16_wbus_s;
  logic [1:0] w17_f20_wbus_s;
  logic [1:0] w17_f24_wbus_s;
  logic [1:0] w17_f28_wbus_s;
  logic [1:0] w18_f0_wbus_s;
  logic [1:0] w18_f4_wbus_s;
  logic [1:0] w18_f8_wbus_s;
  logic [1:0] w18_f12_wbus_s;
  logic [1:0] w18_f16_wbus_s;
  logic [1:0] w18_f20_wbus_s;
  logic [1:0] w18_f24_wbus_s;
  logic [1:0] w18_f28_wbus_s;
  logic [1:0] w19_f0_wbus_s;
  logic [1:0] w19_f4_wbus_s;
  logic [1:0] w19_f8_wbus_s;
  logic [1:0] w19_f12_wbus_s;
  logic [1:0] w19_f16_wbus_s;
  logic [1:0] w19_f20_wbus_s;
  logic [1:0] w19_f24_wbus_s;
  logic [1:0] w19_f28_wbus_s;
  logic [1:0] w20_f0_wbus_s;
  logic [1:0] w20_f4_wbus_s;
  logic [1:0] w20_f8_wbus_s;
  logic [1:0] w20_f12_wbus_s;
  logic [1:0] w20_f16_wbus_s;
  logic [1:0] w20_f20_wbus_s;
  logic [1:0] w20_f24_wbus_s;
  logic [1:0] w20_f28_wbus_s;
  logic [1:0] w21_f0_wbus_s;
  logic [1:0] w21_f4_wbus_s;
  logic [1:0] w21_f8_wbus_s;
  logic [1:0] w21_f12_wbus_s;
  logic [1:0] w21_f16_wbus_s;
  logic [1:0] w21_f20_wbus_s;
  logic [1:0] w21_f24_wbus_s;
  logic [1:0] w21_f28_wbus_s;
  logic [1:0] w22_f0_wbus_s;
  logic [1:0] w22_f4_wbus_s;
  logic [1:0] w22_f8_wbus_s;
  logic [1:0] w22_f12_wbus_s;
  logic [1:0] w22_f16_wbus_s;
  logic [1:0] w22_f20_wbus_s;
  logic [1:0] w22_f24_wbus_s;
  logic [1:0] w22_f28_wbus_s;
  logic [1:0] w23_f0_wbus_s;
  logic [1:0] w23_f4_wbus_s;
  logic [1:0] w23_f8_wbus_s;
  logic [1:0] w23_f12_wbus_s;
  logic [1:0] w23_f16_wbus_s;
  logic [1:0] w23_f20_wbus_s;
  logic [1:0] w23_f24_wbus_s;
  logic [1:0] w23_f28_wbus_s;
  logic [1:0] w24_f0_wbus_s;
  logic [1:0] w24_f4_wbus_s;
  logic [1:0] w24_f8_wbus_s;
  logic [1:0] w24_f12_wbus_s;
  logic [1:0] w24_f16_wbus_s;
  logic [1:0] w24_f20_wbus_s;
  logic [1:0] w24_f24_wbus_s;
  logic [1:0] w24_f28_wbus_s;
  logic [1:0] w25_f0_wbus_s;
  logic [1:0] w25_f4_wbus_s;
  logic [1:0] w25_f8_wbus_s;
  logic [1:0] w25_f12_wbus_s;
  logic [1:0] w25_f16_wbus_s;
  logic [1:0] w25_f20_wbus_s;
  logic [1:0] w25_f24_wbus_s;
  logic [1:0] w25_f28_wbus_s;
  logic [1:0] w26_f0_wbus_s;
  logic [1:0] w26_f4_wbus_s;
  logic [1:0] w26_f8_wbus_s;
  logic [1:0] w26_f12_wbus_s;
  logic [1:0] w26_f16_wbus_s;
  logic [1:0] w26_f20_wbus_s;
  logic [1:0] w26_f24_wbus_s;
  logic [1:0] w26_f28_wbus_s;
  logic [1:0] w27_f0_wbus_s;
  logic [1:0] w27_f4_wbus_s;
  logic [1:0] w27_f8_wbus_s;
  logic [1:0] w27_f12_wbus_s;
  logic [1:0] w27_f16_wbus_s;
  logic [1:0] w27_f20_wbus_s;
  logic [1:0] w27_f24_wbus_s;
  logic [1:0] w27_f28_wbus_s;
  logic [1:0] w28_f0_wbus_s;
  logic [1:0] w28_f4_wbus_s;
  logic [1:0] w28_f8_wbus_s;
  logic [1:0] w28_f12_wbus_s;
  logic [1:0] w28_f16_wbus_s;
  logic [1:0] w28_f20_wbus_s;
  logic [1:0] w28_f24_wbus_s;
  logic [1:0] w28_f28_wbus_s;
  logic [1:0] w29_f0_wbus_s;
  logic [1:0] w29_f4_wbus_s;
  logic [1:0] w29_f8_wbus_s;
  logic [1:0] w29_f12_wbus_s;
  logic [1:0] w29_f16_wbus_s;
  logic [1:0] w29_f20_wbus_s;
  logic [1:0] w29_f24_wbus_s;
  logic [1:0] w29_f28_wbus_s;
  logic [1:0] w30_f0_wbus_s;
  logic [1:0] w30_f4_wbus_s;
  logic [1:0] w30_f8_wbus_s;
  logic [1:0] w30_f12_wbus_s;
  logic [1:0] w30_f16_wbus_s;
  logic [1:0] w30_f20_wbus_s;
  logic [1:0] w30_f24_wbus_s;
  logic [1:0] w30_f28_wbus_s;
  logic [1:0] w31_f0_wbus_s;
  logic [1:0] w31_f4_wbus_s;
  logic [1:0] w31_f8_wbus_s;
  logic [1:0] w31_f12_wbus_s;
  logic [1:0] w31_f16_wbus_s;
  logic [1:0] w31_f20_wbus_s;
  logic [1:0] w31_f24_wbus_s;
  logic [1:0] w31_f28_wbus_s;
  logic [1:0] w32_f0_wbus_s;
  logic [1:0] w32_f4_wbus_s;
  logic [1:0] w32_f8_wbus_s;
  logic [1:0] w32_f12_wbus_s;
  logic [1:0] w32_f16_wbus_s;
  logic [1:0] w32_f20_wbus_s;
  logic [1:0] w32_f24_wbus_s;
  logic [1:0] w32_f28_wbus_s;
  logic [1:0] w33_f0_wbus_s;
  logic [1:0] w33_f4_wbus_s;
  logic [1:0] w33_f8_wbus_s;
  logic [1:0] w33_f12_wbus_s;
  logic [1:0] w33_f16_wbus_s;
  logic [1:0] w33_f20_wbus_s;
  logic [1:0] w33_f24_wbus_s;
  logic [1:0] w33_f28_wbus_s;
  logic [1:0] w34_f0_wbus_s;
  logic [1:0] w34_f4_wbus_s;
  logic [1:0] w34_f8_wbus_s;
  logic [1:0] w34_f12_wbus_s;
  logic [1:0] w34_f16_wbus_s;
  logic [1:0] w34_f20_wbus_s;
  logic [1:0] w34_f24_wbus_s;
  logic [1:0] w34_f28_wbus_s;
  logic [1:0] w35_f0_wbus_s;

  // ------------------------------------------------------
  // address decoding
  // ------------------------------------------------------
  always_comb begin: proc_bus_addr_dec
    // defaults
    mem_err_o = 1'b0;
    bus_w2_rden_s  = 1'b0;
    bus_w3_rden_s  = 1'b0;
    bus_w4_rden_s  = 1'b0;
    bus_w8_rden_s  = 1'b0;
    bus_w9_rden_s  = 1'b0;
    bus_w10_rden_s = 1'b0;
    bus_w11_rden_s = 1'b0;
    bus_w12_rden_s = 1'b0;
    bus_w13_wren_s = 1'b0;
    bus_w13_rden_s = 1'b0;
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

    // decode address
    if (mem_ena_i == 1'b1) begin
      case (mem_addr_i)
        10'h002: begin
          mem_err_o = mem_wena_i;
          bus_w2_rden_s = ~mem_wena_i;
        end
        10'h003: begin
          mem_err_o = mem_wena_i;
          bus_w3_rden_s = ~mem_wena_i;
        end
        10'h004: begin
          mem_err_o = mem_wena_i;
          bus_w4_rden_s = ~mem_wena_i;
        end
        10'h005: begin
          mem_err_o = mem_wena_i;
        end
        10'h006: begin
          mem_err_o = mem_wena_i;
        end
        10'h007: begin
          mem_err_o = mem_wena_i;
        end
        10'h008: begin
          mem_err_o = mem_wena_i;
          bus_w8_rden_s = ~mem_wena_i;
        end
        10'h009: begin
          mem_err_o = mem_wena_i;
          bus_w9_rden_s = ~mem_wena_i;
        end
        10'h00A: begin
          mem_err_o = mem_wena_i;
          bus_w10_rden_s = ~mem_wena_i;
        end
        10'h00B: begin
          mem_err_o = mem_wena_i;
          bus_w11_rden_s = ~mem_wena_i;
        end
        10'h00C: begin
          mem_err_o = mem_wena_i;
          bus_w12_rden_s = ~mem_wena_i;
        end
        10'h00D: begin
          bus_w13_wren_s = mem_wena_i;
          bus_w13_rden_s = ~mem_wena_i;
        end
        10'h00E: begin
          bus_w14_wren_s = mem_wena_i;
        end
        10'h00F: begin
          bus_w15_wren_s = mem_wena_i;
        end
        10'h010: begin
          bus_w16_wren_s = mem_wena_i;
        end
        10'h011: begin
          bus_w17_wren_s = mem_wena_i;
        end
        10'h012: begin
          bus_w18_wren_s = mem_wena_i;
        end
        10'h013: begin
          bus_w19_wren_s = mem_wena_i;
        end
        10'h014: begin
          bus_w20_wren_s = mem_wena_i;
        end
        10'h015: begin
          bus_w21_wren_s = mem_wena_i;
        end
        10'h016: begin
          bus_w22_wren_s = mem_wena_i;
        end
        10'h017: begin
          bus_w23_wren_s = mem_wena_i;
        end
        10'h018: begin
          bus_w24_wren_s = mem_wena_i;
        end
        10'h019: begin
          bus_w25_wren_s = mem_wena_i;
        end
        10'h01A: begin
          bus_w26_wren_s = mem_wena_i;
        end
        10'h01B: begin
          mem_err_o = ~mem_wena_i;
          bus_w27_wren_s = mem_wena_i;
        end
        10'h01C: begin
          mem_err_o = ~mem_wena_i;
          bus_w28_wren_s = mem_wena_i;
        end
        10'h01D: begin
          mem_err_o = ~mem_wena_i;
          bus_w29_wren_s = mem_wena_i;
        end
        10'h01E: begin
          mem_err_o = ~mem_wena_i;
          bus_w30_wren_s = mem_wena_i;
        end
        10'h01F: begin
          mem_err_o = ~mem_wena_i;
          bus_w31_wren_s = mem_wena_i;
        end
        10'h020: begin
          mem_err_o = ~mem_wena_i;
          bus_w32_wren_s = mem_wena_i;
        end
        10'h021: begin
          mem_err_o = ~mem_wena_i;
          bus_w33_wren_s = mem_wena_i;
        end
        10'h022: begin
          mem_err_o = ~mem_wena_i;
          bus_w34_wren_s = mem_wena_i;
        end
        10'h023: begin
          mem_err_o = ~mem_wena_i;
          bus_w35_wren_s = mem_wena_i;
        end
        default: begin
          mem_err_o = 1'b1;
        end
      endcase
    end
  end

  // ------------------------------------------------------
  // special update conditions
  // ------------------------------------------------------
  assign bus_w24_flg0_wren_s  = bus_w24_wren_s & bus_wronce_w24_flg0_r;
  assign bus_w25_flg0_wren_s  = bus_w25_wren_s & bus_wronce_w25_flg0_r;
  assign bus_w26_flg0_wren_s  = bus_w26_wren_s & bus_wronce_w26_flg0_r;
  assign bus_w32_flg0_wren_s  = bus_w32_wren_s & bus_wronce_w32_flg0_r;
  assign bus_w33_flg0_wren_s  = bus_w33_wren_s & bus_wronce_w33_flg0_r;

  // ------------------------------------------------------
  // in-regf storage
  // ------------------------------------------------------
  always_ff @ (posedge main_clk_i or negedge main_rst_an_i) begin: proc_regf_flops
    if (main_rst_an_i == 1'b0) begin
      // Word: w0
      data_w0_f2_r          <= 2'h0;
      data_w0_f10_r         <= 2'h0;
      data_w0_f14_r         <= 2'h0;
      data_w0_f18_r         <= 2'h0;
      data_w0_f22_r         <= 2'h0;
      data_w0_f26_r         <= 2'h0;
      data_w0_f30_r         <= 2'h0;
      // Word: w1
      data_w1_f2_r          <= 2'h0;
      data_w1_f6_r          <= 2'h0;
      data_w1_f10_r         <= 2'h0;
      data_w1_f18_r         <= 2'h0;
      data_w1_f22_r         <= 2'h0;
      data_w1_f26_r         <= 2'h0;
      data_w1_f30_r         <= 2'h0;
      // Word: w2
      data_w2_f2_r          <= 2'h0;
      data_w2_f6_r          <= 2'h0;
      data_w2_f10_r         <= 2'h0;
      data_w2_f14_r         <= 2'h0;
      data_w2_f18_r         <= 2'h0;
      data_w2_f22_r         <= 2'h0;
      data_w2_f26_r         <= 2'h0;
      data_w2_f30_r         <= 2'h0;
      // Word: w3
      data_w3_f2_r          <= 2'h0;
      data_w3_f6_r          <= 2'h0;
      data_w3_f10_r         <= 2'h0;
      data_w3_f14_r         <= 2'h0;
      data_w3_f18_r         <= 2'h0;
      data_w3_f22_r         <= 2'h0;
      data_w3_f26_r         <= 2'h0;
      data_w3_f30_r         <= 2'h0;
      // Word: w4
      data_w4_f2_r          <= 2'h0;
      data_w4_f6_r          <= 2'h0;
      data_w4_f10_r         <= 2'h0;
      data_w4_f14_r         <= 2'h0;
      data_w4_f18_r         <= 2'h0;
      data_w4_f22_r         <= 2'h0;
      data_w4_f28_r         <= 2'h0;
      // Word: w5
      data_w5_f4_r          <= 2'h0;
      data_w5_f8_r          <= 2'h0;
      data_w5_f12_r         <= 2'h0;
      data_w5_f16_r         <= 2'h0;
      data_w5_f20_r         <= 2'h0;
      data_w5_f24_r         <= 2'h0;
      data_w5_f28_r         <= 2'h0;
      // Word: w6
      data_w6_f0_r          <= 2'h0;
      data_w6_f4_r          <= 2'h0;
      data_w6_f8_r          <= 2'h0;
      data_w6_f12_r         <= 2'h0;
      data_w6_f16_r         <= 2'h0;
      data_w6_f20_r         <= 2'h0;
      data_w6_f24_r         <= 2'h0;
      data_w6_f30_r         <= 2'h0;
      // Word: w7
      data_w7_f6_r          <= 2'h0;
      data_w7_f10_r         <= 2'h0;
      data_w7_f14_r         <= 2'h0;
      data_w7_f18_r         <= 2'h0;
      data_w7_f22_r         <= 2'h0;
      data_w7_f26_r         <= 2'h0;
      data_w7_f30_r         <= 2'h0;
      // Word: w8
      data_w8_f2_r          <= 2'h0;
      data_w8_f6_r          <= 2'h0;
      data_w8_f10_r         <= 2'h0;
      data_w8_f14_r         <= 2'h0;
      data_w8_f18_r         <= 2'h0;
      data_w8_f22_r         <= 2'h0;
      data_w8_f26_r         <= 2'h0;
      data_w8_f30_r         <= 2'h0;
      // Word: w9
      data_w9_f2_r          <= 2'h0;
      data_w9_f6_r          <= 2'h0;
      data_w9_f10_r         <= 2'h0;
      data_w9_f14_r         <= 2'h0;
      data_w9_f18_r         <= 2'h0;
      data_w9_f22_r         <= 2'h0;
      data_w9_f26_r         <= 2'h0;
      data_w9_f30_r         <= 2'h0;
      // Word: w10
      data_w10_f2_r         <= 2'h0;
      data_w10_f6_r         <= 2'h0;
      data_w10_f10_r        <= 2'h0;
      data_w10_f14_r        <= 2'h0;
      data_w10_f18_r        <= 2'h0;
      data_w10_f22_r        <= 2'h0;
      data_w10_f26_r        <= 2'h0;
      data_w10_f30_r        <= 2'h0;
      // Word: w11
      data_w11_f2_r         <= 2'h0;
      data_w11_f6_r         <= 2'h0;
      data_w11_f10_r        <= 2'h0;
      data_w11_f14_r        <= 2'h0;
      data_w11_f18_r        <= 2'h0;
      data_w11_f22_r        <= 2'h0;
      data_w11_f26_r        <= 2'h0;
      data_w11_f30_r        <= 2'h0;
      // Word: w12
      data_w12_f2_r         <= 2'h0;
      data_w12_f6_r         <= 2'h0;
      data_w12_f10_r        <= 2'h0;
      data_w12_f14_r        <= 2'h0;
      data_w12_f18_r        <= 2'h0;
      data_w12_f22_r        <= 2'h0;
      data_w12_f26_r        <= 2'h0;
      data_w12_f30_r        <= 2'h0;
      // Word: w13
      data_w13_f2_r         <= 2'h0;
      data_w13_f6_r         <= 2'h0;
      data_w13_f10_r        <= 2'h0;
      data_w13_f14_r        <= 2'h0;
      data_w13_f18_r        <= 2'h0;
      data_w13_f22_r        <= 2'h0;
      data_w13_f26_r        <= 2'h0;
      data_w13_f30_r        <= 2'h0;
      // Word: w14
      data_w14_f2_r         <= 2'h0;
      data_w14_f6_r         <= 2'h0;
      data_w14_f10_r        <= 2'h0;
      data_w14_f14_r        <= 2'h0;
      data_w14_f18_r        <= 2'h0;
      data_w14_f22_r        <= 2'h0;
      data_w14_f26_r        <= 2'h0;
      data_w14_f30_r        <= 2'h0;
      // Word: w15
      data_w15_f2_r         <= 2'h0;
      data_w15_f6_r         <= 2'h0;
      data_w15_f10_r        <= 2'h0;
      data_w15_f14_r        <= 2'h0;
      data_w15_f18_r        <= 2'h0;
      data_w15_f22_r        <= 2'h0;
      data_w15_f26_r        <= 2'h0;
      data_w15_f30_r        <= 2'h0;
      // Word: w16
      data_w16_f2_r         <= 2'h0;
      data_w16_f6_r         <= 2'h0;
      data_w16_f10_r        <= 2'h0;
      data_w16_f14_r        <= 2'h0;
      data_w16_f18_r        <= 2'h0;
      data_w16_f22_r        <= 2'h0;
      data_w16_f26_r        <= 2'h0;
      data_w16_f30_r        <= 2'h0;
      // Word: w17
      data_w17_f2_r         <= 2'h0;
      data_w17_f6_r         <= 2'h0;
      data_w17_f10_r        <= 2'h0;
      data_w17_f14_r        <= 2'h0;
      data_w17_f18_r        <= 2'h0;
      data_w17_f22_r        <= 2'h0;
      data_w17_f26_r        <= 2'h0;
      data_w17_f30_r        <= 2'h0;
      // Word: w18
      data_w18_f2_r         <= 2'h0;
      data_w18_f6_r         <= 2'h0;
      data_w18_f10_r        <= 2'h0;
      data_w18_f14_r        <= 2'h0;
      data_w18_f18_r        <= 2'h0;
      data_w18_f22_r        <= 2'h0;
      data_w18_f26_r        <= 2'h0;
      data_w18_f30_r        <= 2'h0;
      // Word: w19
      data_w19_f2_r         <= 2'h0;
      data_w19_f6_r         <= 2'h0;
      data_w19_f10_r        <= 2'h0;
      data_w19_f14_r        <= 2'h0;
      data_w19_f18_r        <= 2'h0;
      data_w19_f22_r        <= 2'h0;
      data_w19_f26_r        <= 2'h0;
      data_w19_f30_r        <= 2'h0;
      // Word: w20
      data_w20_f2_r         <= 2'h0;
      data_w20_f6_r         <= 2'h0;
      data_w20_f10_r        <= 2'h0;
      data_w20_f14_r        <= 2'h0;
      data_w20_f18_r        <= 2'h0;
      data_w20_f22_r        <= 2'h0;
      data_w20_f26_r        <= 2'h0;
      data_w20_f30_r        <= 2'h0;
      // Word: w21
      data_w21_f2_r         <= 2'h0;
      data_w21_f6_r         <= 2'h0;
      data_w21_f10_r        <= 2'h0;
      data_w21_f14_r        <= 2'h0;
      data_w21_f18_r        <= 2'h0;
      data_w21_f22_r        <= 2'h0;
      data_w21_f26_r        <= 2'h0;
      data_w21_f30_r        <= 2'h0;
      // Word: w22
      data_w22_f2_r         <= 2'h0;
      data_w22_f6_r         <= 2'h0;
      data_w22_f10_r        <= 2'h0;
      data_w22_f14_r        <= 2'h0;
      data_w22_f18_r        <= 2'h0;
      data_w22_f22_r        <= 2'h0;
      data_w22_f26_r        <= 2'h0;
      data_w22_f30_r        <= 2'h0;
      // Word: w23
      data_w23_f2_r         <= 2'h0;
      data_w23_f6_r         <= 2'h0;
      data_w23_f10_r        <= 2'h0;
      data_w23_f14_r        <= 2'h0;
      data_w23_f18_r        <= 2'h0;
      data_w23_f22_r        <= 2'h0;
      data_w23_f26_r        <= 2'h0;
      data_w23_f30_r        <= 2'h0;
      // Word: w24
      data_w24_f2_r         <= 2'h0;
      data_w24_f6_r         <= 2'h0;
      data_w24_f10_r        <= 2'h0;
      data_w24_f14_r        <= 2'h0;
      data_w24_f18_r        <= 2'h0;
      data_w24_f22_r        <= 2'h0;
      data_w24_f26_r        <= 2'h0;
      data_w24_f30_r        <= 2'h0;
      bus_wronce_w24_flg0_r <= 1'b1;
      // Word: w25
      data_w25_f2_r         <= 2'h0;
      data_w25_f6_r         <= 2'h0;
      data_w25_f10_r        <= 2'h0;
      data_w25_f14_r        <= 2'h0;
      data_w25_f18_r        <= 2'h0;
      data_w25_f22_r        <= 2'h0;
      data_w25_f26_r        <= 2'h0;
      data_w25_f30_r        <= 2'h0;
      bus_wronce_w25_flg0_r <= 1'b1;
      // Word: w26
      data_w26_f2_r         <= 2'h0;
      data_w26_f6_r         <= 2'h0;
      data_w26_f10_r        <= 2'h0;
      data_w26_f14_r        <= 2'h0;
      data_w26_f18_r        <= 2'h0;
      data_w26_f22_r        <= 2'h0;
      data_w26_f26_r        <= 2'h0;
      data_w26_f30_r        <= 2'h0;
      bus_wronce_w26_flg0_r <= 1'b1;
      // Word: w27
      data_w27_f2_r         <= 2'h0;
      data_w27_f6_r         <= 2'h0;
      data_w27_f10_r        <= 2'h0;
      data_w27_f14_r        <= 2'h0;
      data_w27_f18_r        <= 2'h0;
      data_w27_f22_r        <= 2'h0;
      data_w27_f26_r        <= 2'h0;
      data_w27_f30_r        <= 2'h0;
      // Word: w28
      data_w28_f2_r         <= 2'h0;
      data_w28_f6_r         <= 2'h0;
      data_w28_f10_r        <= 2'h0;
      data_w28_f14_r        <= 2'h0;
      data_w28_f18_r        <= 2'h0;
      data_w28_f22_r        <= 2'h0;
      data_w28_f26_r        <= 2'h0;
      data_w28_f30_r        <= 2'h0;
      // Word: w29
      data_w29_f2_r         <= 2'h0;
      data_w29_f6_r         <= 2'h0;
      data_w29_f10_r        <= 2'h0;
      data_w29_f14_r        <= 2'h0;
      data_w29_f18_r        <= 2'h0;
      data_w29_f22_r        <= 2'h0;
      data_w29_f26_r        <= 2'h0;
      data_w29_f30_r        <= 2'h0;
      // Word: w30
      data_w30_f2_r         <= 2'h0;
      data_w30_f6_r         <= 2'h0;
      data_w30_f10_r        <= 2'h0;
      data_w30_f14_r        <= 2'h0;
      data_w30_f18_r        <= 2'h0;
      data_w30_f22_r        <= 2'h0;
      data_w30_f26_r        <= 2'h0;
      data_w30_f30_r        <= 2'h0;
      // Word: w31
      data_w31_f2_r         <= 2'h0;
      data_w31_f6_r         <= 2'h0;
      data_w31_f10_r        <= 2'h0;
      data_w31_f14_r        <= 2'h0;
      data_w31_f18_r        <= 2'h0;
      data_w31_f22_r        <= 2'h0;
      data_w31_f26_r        <= 2'h0;
      data_w31_f30_r        <= 2'h0;
      // Word: w32
      data_w32_f2_r         <= 2'h0;
      data_w32_f6_r         <= 2'h0;
      data_w32_f10_r        <= 2'h0;
      data_w32_f14_r        <= 2'h0;
      data_w32_f18_r        <= 2'h0;
      data_w32_f22_r        <= 2'h0;
      data_w32_f26_r        <= 2'h0;
      data_w32_f30_r        <= 2'h0;
      bus_wronce_w32_flg0_r <= 1'b1;
      // Word: w33
      data_w33_f2_r         <= 2'h0;
      data_w33_f6_r         <= 2'h0;
      data_w33_f10_r        <= 2'h0;
      data_w33_f14_r        <= 2'h0;
      data_w33_f18_r        <= 2'h0;
      data_w33_f22_r        <= 2'h0;
      data_w33_f26_r        <= 2'h0;
      data_w33_f30_r        <= 2'h0;
      bus_wronce_w33_flg0_r <= 1'b1;
      // Word: w34
      data_w34_f2_r         <= 2'h0;
      data_w34_f6_r         <= 2'h0;
      data_w34_f10_r        <= 2'h0;
      data_w34_f14_r        <= 2'h0;
      data_w34_f18_r        <= 2'h0;
      data_w34_f22_r        <= 2'h0;
      data_w34_f26_r        <= 2'h0;
      data_w34_f30_r        <= 2'h0;
      // Word: w35
      data_w35_f2_r         <= 2'h0;
    end else begin
      if (regf_w0_f2_rd_i == 1'b1) begin
        data_w0_f2_r <= 2'h0;
      end
      if (regf_w0_f10_rd_i == 1'b1) begin
        data_w0_f10_r <= 2'h3;
      end
      if (regf_w0_f14_rd_i == 1'b1) begin
        data_w0_f14_r <= ~data_w0_f14_r;
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
      if (regf_w1_f10_rd_i == 1'b1) begin
        data_w1_f10_r <= 2'h0;
      end
      if (regf_w1_f18_rd_i == 1'b1) begin
        data_w1_f18_r <= 2'h3;
      end
      if (regf_w1_f22_rd_i == 1'b1) begin
        data_w1_f22_r <= ~data_w1_f22_r;
      end
      if (regf_w1_f26_wr_i == 1'b1) begin
        data_w1_f26_r <= regf_w1_f26_wval_i;
      end
      if (regf_w1_f30_wr_i == 1'b1) begin
        data_w1_f30_r <= data_w1_f30_r & regf_w1_f30_wval_i;
      end
      if (regf_w2_f2_wr_i == 1'b1) begin
        data_w2_f2_r <= data_w2_f2_r | ~regf_w2_f2_wval_i;
      end
      if (regf_w2_f6_wr_i == 1'b1) begin
        data_w2_f6_r <= data_w2_f6_r & ~regf_w2_f6_wval_i;
      end
      if (regf_w2_f10_wr_i == 1'b1) begin
        data_w2_f10_r <= data_w2_f10_r | regf_w2_f10_wval_i;
      end
      if (regf_w2_f14_wr_i == 1'b1) begin
        data_w2_f14_r <= regf_w2_f14_wval_i;
      end
      if (bus_w2_rden_s == 1'b1) begin
        data_w2_f18_r <= 2'h0;
      end
      if (bus_w2_rden_s == 1'b1) begin
        data_w2_f22_r <= 2'h0;
      end else if (regf_w2_f22_rd_i == 1'b1) begin
        data_w2_f22_r <= 2'h0;
      end
      if (bus_w2_rden_s == 1'b1) begin
        data_w2_f26_r <= 2'h0;
      end
      if (bus_w2_rden_s == 1'b1) begin
        data_w2_f30_r <= 2'h0;
      end
      if (bus_w3_rden_s == 1'b1) begin
        data_w3_f2_r <= 2'h0;
      end else if (regf_w3_f2_rd_i == 1'b1) begin
        data_w3_f2_r <= 2'h3;
      end
      if (bus_w3_rden_s == 1'b1) begin
        data_w3_f6_r <= 2'h0;
      end else if (regf_w3_f6_rd_i == 1'b1) begin
        data_w3_f6_r <= ~data_w3_f6_r;
      end
      if (bus_w3_rden_s == 1'b1) begin
        data_w3_f10_r <= 2'h0;
      end else if (regf_w3_f10_wr_i == 1'b1) begin
        data_w3_f10_r <= regf_w3_f10_wval_i;
      end
      if (bus_w3_rden_s == 1'b1) begin
        data_w3_f14_r <= 2'h0;
      end else if (regf_w3_f14_wr_i == 1'b1) begin
        data_w3_f14_r <= data_w3_f14_r & regf_w3_f14_wval_i;
      end
      if (bus_w3_rden_s == 1'b1) begin
        data_w3_f18_r <= 2'h0;
      end else if (regf_w3_f18_wr_i == 1'b1) begin
        data_w3_f18_r <= data_w3_f18_r | ~regf_w3_f18_wval_i;
      end
      if (bus_w3_rden_s == 1'b1) begin
        data_w3_f22_r <= 2'h0;
      end else if (regf_w3_f22_wr_i == 1'b1) begin
        data_w3_f22_r <= data_w3_f22_r & ~regf_w3_f22_wval_i;
      end
      if (bus_w3_rden_s == 1'b1) begin
        data_w3_f26_r <= 2'h0;
      end else if (regf_w3_f26_wr_i == 1'b1) begin
        data_w3_f26_r <= data_w3_f26_r | regf_w3_f26_wval_i;
      end
      if (bus_w3_rden_s == 1'b1) begin
        data_w3_f30_r <= 2'h0;
      end else if (regf_w3_f30_wr_i == 1'b1) begin
        data_w3_f30_r <= regf_w3_f30_wval_i;
      end
      if (bus_w4_rden_s == 1'b1) begin
        data_w4_f2_r <= 2'h0;
      end else if (regf_w4_f2_wr_i == 1'b1) begin
        data_w4_f2_r <= data_w4_f2_r & regf_w4_f2_wval_i;
      end
      if (bus_w4_rden_s == 1'b1) begin
        data_w4_f6_r <= 2'h0;
      end else if (regf_w4_f6_wr_i == 1'b1) begin
        data_w4_f6_r <= data_w4_f6_r | ~regf_w4_f6_wval_i;
      end
      if (bus_w4_rden_s == 1'b1) begin
        data_w4_f10_r <= 2'h0;
      end else if (regf_w4_f10_wr_i == 1'b1) begin
        data_w4_f10_r <= data_w4_f10_r & ~regf_w4_f10_wval_i;
      end
      if (bus_w4_rden_s == 1'b1) begin
        data_w4_f14_r <= 2'h0;
      end else if (regf_w4_f14_wr_i == 1'b1) begin
        data_w4_f14_r <= data_w4_f14_r | regf_w4_f14_wval_i;
      end
      if (bus_w4_rden_s == 1'b1) begin
        data_w4_f18_r <= 2'h0;
      end else if (regf_w4_f18_wr_i == 1'b1) begin
        data_w4_f18_r <= regf_w4_f18_wval_i;
      end
      if (bus_w4_rden_s == 1'b1) begin
        data_w4_f22_r <= 2'h0;
      end else if (regf_w4_f22_wr_i == 1'b1) begin
        data_w4_f22_r <= regf_w4_f22_wval_i;
      end
      if (regf_w4_f28_rd_i == 1'b1) begin
        data_w4_f28_r <= 2'h0;
      end
      if (regf_w5_f4_rd_i == 1'b1) begin
        data_w5_f4_r <= 2'h3;
      end
      if (regf_w5_f8_rd_i == 1'b1) begin
        data_w5_f8_r <= ~data_w5_f8_r;
      end
      if (regf_w5_f12_wr_i == 1'b1) begin
        data_w5_f12_r <= regf_w5_f12_wval_i;
      end
      if (regf_w5_f16_wr_i == 1'b1) begin
        data_w5_f16_r <= data_w5_f16_r & regf_w5_f16_wval_i;
      end
      if (regf_w5_f20_wr_i == 1'b1) begin
        data_w5_f20_r <= data_w5_f20_r | ~regf_w5_f20_wval_i;
      end
      if (regf_w5_f24_wr_i == 1'b1) begin
        data_w5_f24_r <= data_w5_f24_r & ~regf_w5_f24_wval_i;
      end
      if (regf_w5_f28_wr_i == 1'b1) begin
        data_w5_f28_r <= data_w5_f28_r | regf_w5_f28_wval_i;
      end
      if (regf_w6_f0_wr_i == 1'b1) begin
        data_w6_f0_r <= regf_w6_f0_wval_i;
      end
      if (regf_w6_f4_wr_i == 1'b1) begin
        data_w6_f4_r <= data_w6_f4_r & regf_w6_f4_wval_i;
      end
      if (regf_w6_f8_wr_i == 1'b1) begin
        data_w6_f8_r <= data_w6_f8_r | ~regf_w6_f8_wval_i;
      end
      if (regf_w6_f12_wr_i == 1'b1) begin
        data_w6_f12_r <= data_w6_f12_r & ~regf_w6_f12_wval_i;
      end
      if (regf_w6_f16_wr_i == 1'b1) begin
        data_w6_f16_r <= data_w6_f16_r | regf_w6_f16_wval_i;
      end
      if (regf_w6_f20_wr_i == 1'b1) begin
        data_w6_f20_r <= regf_w6_f20_wval_i;
      end
      if (regf_w6_f24_wr_i == 1'b1) begin
        data_w6_f24_r <= regf_w6_f24_wval_i;
      end
      if (regf_w6_f30_rd_i == 1'b1) begin
        data_w6_f30_r <= 2'h0;
      end
      if (regf_w7_f6_rd_i == 1'b1) begin
        data_w7_f6_r <= 2'h3;
      end
      if (regf_w7_f10_rd_i == 1'b1) begin
        data_w7_f10_r <= ~data_w7_f10_r;
      end
      if (regf_w7_f14_wr_i == 1'b1) begin
        data_w7_f14_r <= regf_w7_f14_wval_i;
      end
      if (regf_w7_f18_wr_i == 1'b1) begin
        data_w7_f18_r <= data_w7_f18_r & regf_w7_f18_wval_i;
      end
      if (regf_w7_f22_wr_i == 1'b1) begin
        data_w7_f22_r <= data_w7_f22_r | ~regf_w7_f22_wval_i;
      end
      if (regf_w7_f26_wr_i == 1'b1) begin
        data_w7_f26_r <= data_w7_f26_r & ~regf_w7_f26_wval_i;
      end
      if (regf_w7_f30_wr_i == 1'b1) begin
        data_w7_f30_r <= data_w7_f30_r | regf_w7_f30_wval_i;
      end
      if (regf_w8_f2_wr_i == 1'b1) begin
        data_w8_f2_r <= regf_w8_f2_wval_i;
      end
      if (regf_w8_f6_wr_i == 1'b1) begin
        data_w8_f6_r <= data_w8_f6_r & regf_w8_f6_wval_i;
      end
      if (regf_w8_f10_wr_i == 1'b1) begin
        data_w8_f10_r <= data_w8_f10_r | ~regf_w8_f10_wval_i;
      end
      if (regf_w8_f14_wr_i == 1'b1) begin
        data_w8_f14_r <= data_w8_f14_r & ~regf_w8_f14_wval_i;
      end
      if (regf_w8_f18_wr_i == 1'b1) begin
        data_w8_f18_r <= data_w8_f18_r | regf_w8_f18_wval_i;
      end
      if (regf_w8_f22_wr_i == 1'b1) begin
        data_w8_f22_r <= regf_w8_f22_wval_i;
      end
      if (regf_w8_f26_wr_i == 1'b1) begin
        data_w8_f26_r <= regf_w8_f26_wval_i;
      end
      if (bus_w8_rden_s == 1'b1) begin
        data_w8_f30_r <= 2'h3;
      end
      if (bus_w9_rden_s == 1'b1) begin
        data_w9_f2_r <= 2'h3;
      end else if (regf_w9_f2_rd_i == 1'b1) begin
        data_w9_f2_r <= 2'h0;
      end
      if (bus_w9_rden_s == 1'b1) begin
        data_w9_f6_r <= 2'h3;
      end
      if (bus_w9_rden_s == 1'b1) begin
        data_w9_f10_r <= 2'h3;
      end
      if (bus_w9_rden_s == 1'b1) begin
        data_w9_f14_r <= 2'h3;
      end else if (regf_w9_f14_rd_i == 1'b1) begin
        data_w9_f14_r <= 2'h3;
      end
      if (bus_w9_rden_s == 1'b1) begin
        data_w9_f18_r <= 2'h3;
      end else if (regf_w9_f18_rd_i == 1'b1) begin
        data_w9_f18_r <= ~data_w9_f18_r;
      end
      if (bus_w9_rden_s == 1'b1) begin
        data_w9_f22_r <= 2'h3;
      end else if (regf_w9_f22_wr_i == 1'b1) begin
        data_w9_f22_r <= regf_w9_f22_wval_i;
      end
      if (bus_w9_rden_s == 1'b1) begin
        data_w9_f26_r <= 2'h3;
      end else if (regf_w9_f26_wr_i == 1'b1) begin
        data_w9_f26_r <= data_w9_f26_r & regf_w9_f26_wval_i;
      end
      if (bus_w9_rden_s == 1'b1) begin
        data_w9_f30_r <= 2'h3;
      end else if (regf_w9_f30_wr_i == 1'b1) begin
        data_w9_f30_r <= data_w9_f30_r | ~regf_w9_f30_wval_i;
      end
      if (bus_w10_rden_s == 1'b1) begin
        data_w10_f2_r <= 2'h3;
      end else if (regf_w10_f2_wr_i == 1'b1) begin
        data_w10_f2_r <= data_w10_f2_r & ~regf_w10_f2_wval_i;
      end
      if (bus_w10_rden_s == 1'b1) begin
        data_w10_f6_r <= 2'h3;
      end else if (regf_w10_f6_wr_i == 1'b1) begin
        data_w10_f6_r <= data_w10_f6_r | regf_w10_f6_wval_i;
      end
      if (bus_w10_rden_s == 1'b1) begin
        data_w10_f10_r <= 2'h3;
      end else if (regf_w10_f10_wr_i == 1'b1) begin
        data_w10_f10_r <= regf_w10_f10_wval_i;
      end
      if (bus_w10_rden_s == 1'b1) begin
        data_w10_f14_r <= 2'h3;
      end else if (regf_w10_f14_wr_i == 1'b1) begin
        data_w10_f14_r <= data_w10_f14_r & regf_w10_f14_wval_i;
      end
      if (bus_w10_rden_s == 1'b1) begin
        data_w10_f18_r <= 2'h3;
      end else if (regf_w10_f18_wr_i == 1'b1) begin
        data_w10_f18_r <= data_w10_f18_r | ~regf_w10_f18_wval_i;
      end
      if (bus_w10_rden_s == 1'b1) begin
        data_w10_f22_r <= 2'h3;
      end else if (regf_w10_f22_wr_i == 1'b1) begin
        data_w10_f22_r <= data_w10_f22_r & ~regf_w10_f22_wval_i;
      end
      if (bus_w10_rden_s == 1'b1) begin
        data_w10_f26_r <= 2'h3;
      end else if (regf_w10_f26_wr_i == 1'b1) begin
        data_w10_f26_r <= data_w10_f26_r | regf_w10_f26_wval_i;
      end
      if (bus_w10_rden_s == 1'b1) begin
        data_w10_f30_r <= 2'h3;
      end else if (regf_w10_f30_wr_i == 1'b1) begin
        data_w10_f30_r <= regf_w10_f30_wval_i;
      end
      if (bus_w11_rden_s == 1'b1) begin
        data_w11_f2_r <= 2'h3;
      end else if (regf_w11_f2_wr_i == 1'b1) begin
        data_w11_f2_r <= regf_w11_f2_wval_i;
      end
      if (bus_w11_rden_s == 1'b1) begin
        data_w11_f6_r <= ~data_w11_f6_r;
      end
      if (bus_w11_rden_s == 1'b1) begin
        data_w11_f10_r <= ~data_w11_f10_r;
      end else if (regf_w11_f10_rd_i == 1'b1) begin
        data_w11_f10_r <= 2'h0;
      end
      if (bus_w11_rden_s == 1'b1) begin
        data_w11_f14_r <= ~data_w11_f14_r;
      end
      if (bus_w11_rden_s == 1'b1) begin
        data_w11_f18_r <= ~data_w11_f18_r;
      end
      if (bus_w11_rden_s == 1'b1) begin
        data_w11_f22_r <= ~data_w11_f22_r;
      end else if (regf_w11_f22_rd_i == 1'b1) begin
        data_w11_f22_r <= 2'h3;
      end
      if (bus_w11_rden_s == 1'b1) begin
        data_w11_f26_r <= ~data_w11_f26_r;
      end else if (regf_w11_f26_rd_i == 1'b1) begin
        data_w11_f26_r <= ~data_w11_f26_r;
      end
      if (bus_w11_rden_s == 1'b1) begin
        data_w11_f30_r <= ~data_w11_f30_r;
      end else if (regf_w11_f30_wr_i == 1'b1) begin
        data_w11_f30_r <= regf_w11_f30_wval_i;
      end
      if (bus_w12_rden_s == 1'b1) begin
        data_w12_f2_r <= ~data_w12_f2_r;
      end else if (regf_w12_f2_wr_i == 1'b1) begin
        data_w12_f2_r <= data_w12_f2_r & regf_w12_f2_wval_i;
      end
      if (bus_w12_rden_s == 1'b1) begin
        data_w12_f6_r <= ~data_w12_f6_r;
      end else if (regf_w12_f6_wr_i == 1'b1) begin
        data_w12_f6_r <= data_w12_f6_r | ~regf_w12_f6_wval_i;
      end
      if (bus_w12_rden_s == 1'b1) begin
        data_w12_f10_r <= ~data_w12_f10_r;
      end else if (regf_w12_f10_wr_i == 1'b1) begin
        data_w12_f10_r <= data_w12_f10_r & ~regf_w12_f10_wval_i;
      end
      if (bus_w12_rden_s == 1'b1) begin
        data_w12_f14_r <= ~data_w12_f14_r;
      end else if (regf_w12_f14_wr_i == 1'b1) begin
        data_w12_f14_r <= data_w12_f14_r | regf_w12_f14_wval_i;
      end
      if (bus_w12_rden_s == 1'b1) begin
        data_w12_f18_r <= ~data_w12_f18_r;
      end else if (regf_w12_f18_wr_i == 1'b1) begin
        data_w12_f18_r <= regf_w12_f18_wval_i;
      end
      if (bus_w12_rden_s == 1'b1) begin
        data_w12_f22_r <= ~data_w12_f22_r;
      end else if (regf_w12_f22_wr_i == 1'b1) begin
        data_w12_f22_r <= data_w12_f22_r & regf_w12_f22_wval_i;
      end
      if (bus_w12_rden_s == 1'b1) begin
        data_w12_f26_r <= ~data_w12_f26_r;
      end else if (regf_w12_f26_wr_i == 1'b1) begin
        data_w12_f26_r <= data_w12_f26_r | ~regf_w12_f26_wval_i;
      end
      if (bus_w12_rden_s == 1'b1) begin
        data_w12_f30_r <= ~data_w12_f30_r;
      end else if (regf_w12_f30_wr_i == 1'b1) begin
        data_w12_f30_r <= data_w12_f30_r & ~regf_w12_f30_wval_i;
      end
      if (bus_w13_rden_s == 1'b1) begin
        data_w13_f2_r <= ~data_w13_f2_r;
      end else if (regf_w13_f2_wr_i == 1'b1) begin
        data_w13_f2_r <= data_w13_f2_r | regf_w13_f2_wval_i;
      end
      if (bus_w13_rden_s == 1'b1) begin
        data_w13_f6_r <= ~data_w13_f6_r;
      end else if (regf_w13_f6_wr_i == 1'b1) begin
        data_w13_f6_r <= regf_w13_f6_wval_i;
      end
      if (bus_w13_rden_s == 1'b1) begin
        data_w13_f10_r <= ~data_w13_f10_r;
      end else if (regf_w13_f10_wr_i == 1'b1) begin
        data_w13_f10_r <= regf_w13_f10_wval_i;
      end
      if (bus_w13_wren_s == 1'b1) begin
        data_w13_f14_r <= mem_wdata_i[15:14];
      end
      if (bus_w13_wren_s == 1'b1) begin
        data_w13_f18_r <= mem_wdata_i[19:18];
      end else if (regf_w13_f18_rd_i == 1'b1) begin
        data_w13_f18_r <= 2'h0;
      end
      if (bus_w13_wren_s == 1'b1) begin
        data_w13_f22_r <= mem_wdata_i[23:22];
      end
      if (bus_w13_wren_s == 1'b1) begin
        data_w13_f26_r <= mem_wdata_i[27:26];
      end
      if (bus_w13_wren_s == 1'b1) begin
        data_w13_f30_r <= mem_wdata_i[31:30];
      end else if (regf_w13_f30_rd_i == 1'b1) begin
        data_w13_f30_r <= 2'h3;
      end
      if (bus_w14_wren_s == 1'b1) begin
        data_w14_f2_r <= mem_wdata_i[3:2];
      end else if (regf_w14_f2_rd_i == 1'b1) begin
        data_w14_f2_r <= ~data_w14_f2_r;
      end
      if (bus_w14_wren_s == 1'b1) begin
        data_w14_f6_r <= mem_wdata_i[7:6];
      end else if (regf_w14_f6_wr_i == 1'b1) begin
        data_w14_f6_r <= regf_w14_f6_wval_i;
      end
      if (bus_w14_wren_s == 1'b1) begin
        data_w14_f10_r <= mem_wdata_i[11:10];
      end else if (regf_w14_f10_wr_i == 1'b1) begin
        data_w14_f10_r <= data_w14_f10_r & regf_w14_f10_wval_i;
      end
      if (bus_w14_wren_s == 1'b1) begin
        data_w14_f14_r <= mem_wdata_i[15:14];
      end else if (regf_w14_f14_wr_i == 1'b1) begin
        data_w14_f14_r <= data_w14_f14_r | ~regf_w14_f14_wval_i;
      end
      if (bus_w14_wren_s == 1'b1) begin
        data_w14_f18_r <= mem_wdata_i[19:18];
      end else if (regf_w14_f18_wr_i == 1'b1) begin
        data_w14_f18_r <= data_w14_f18_r & ~regf_w14_f18_wval_i;
      end
      if (bus_w14_wren_s == 1'b1) begin
        data_w14_f22_r <= mem_wdata_i[23:22];
      end else if (regf_w14_f22_wr_i == 1'b1) begin
        data_w14_f22_r <= data_w14_f22_r | regf_w14_f22_wval_i;
      end
      if (bus_w14_wren_s == 1'b1) begin
        data_w14_f26_r <= mem_wdata_i[27:26];
      end else if (regf_w14_f26_wr_i == 1'b1) begin
        data_w14_f26_r <= regf_w14_f26_wval_i;
      end
      if (bus_w14_wren_s == 1'b1) begin
        data_w14_f30_r <= mem_wdata_i[31:30];
      end else if (regf_w14_f30_wr_i == 1'b1) begin
        data_w14_f30_r <= data_w14_f30_r & regf_w14_f30_wval_i;
      end
      if (bus_w15_wren_s == 1'b1) begin
        data_w15_f2_r <= mem_wdata_i[3:2];
      end else if (regf_w15_f2_wr_i == 1'b1) begin
        data_w15_f2_r <= data_w15_f2_r | ~regf_w15_f2_wval_i;
      end
      if (bus_w15_wren_s == 1'b1) begin
        data_w15_f6_r <= mem_wdata_i[7:6];
      end else if (regf_w15_f6_wr_i == 1'b1) begin
        data_w15_f6_r <= data_w15_f6_r & ~regf_w15_f6_wval_i;
      end
      if (bus_w15_wren_s == 1'b1) begin
        data_w15_f10_r <= mem_wdata_i[11:10];
      end else if (regf_w15_f10_wr_i == 1'b1) begin
        data_w15_f10_r <= data_w15_f10_r | regf_w15_f10_wval_i;
      end
      if (bus_w15_wren_s == 1'b1) begin
        data_w15_f14_r <= mem_wdata_i[15:14];
      end else if (regf_w15_f14_wr_i == 1'b1) begin
        data_w15_f14_r <= regf_w15_f14_wval_i;
      end
      if (bus_w15_wren_s == 1'b1) begin
        data_w15_f18_r <= mem_wdata_i[19:18];
      end else if (regf_w15_f18_wr_i == 1'b1) begin
        data_w15_f18_r <= regf_w15_f18_wval_i;
      end
      if (bus_w15_wren_s == 1'b1) begin
        data_w15_f22_r <= data_w15_f22_r & mem_wdata_i[23:22];
      end
      if (bus_w15_wren_s == 1'b1) begin
        data_w15_f26_r <= data_w15_f26_r & mem_wdata_i[27:26];
      end else if (regf_w15_f26_rd_i == 1'b1) begin
        data_w15_f26_r <= 2'h0;
      end
      if (bus_w15_wren_s == 1'b1) begin
        data_w15_f30_r <= data_w15_f30_r & mem_wdata_i[31:30];
      end
      if (bus_w16_wren_s == 1'b1) begin
        data_w16_f2_r <= data_w16_f2_r & mem_wdata_i[3:2];
      end
      if (bus_w16_wren_s == 1'b1) begin
        data_w16_f6_r <= data_w16_f6_r & mem_wdata_i[7:6];
      end else if (regf_w16_f6_rd_i == 1'b1) begin
        data_w16_f6_r <= 2'h3;
      end
      if (bus_w16_wren_s == 1'b1) begin
        data_w16_f10_r <= data_w16_f10_r & mem_wdata_i[11:10];
      end else if (regf_w16_f10_rd_i == 1'b1) begin
        data_w16_f10_r <= ~data_w16_f10_r;
      end
      if (bus_w16_wren_s == 1'b1) begin
        data_w16_f14_r <= data_w16_f14_r & mem_wdata_i[15:14];
      end else if (regf_w16_f14_wr_i == 1'b1) begin
        data_w16_f14_r <= regf_w16_f14_wval_i;
      end
      if (bus_w16_wren_s == 1'b1) begin
        data_w16_f18_r <= data_w16_f18_r & mem_wdata_i[19:18];
      end else if (regf_w16_f18_wr_i == 1'b1) begin
        data_w16_f18_r <= data_w16_f18_r & regf_w16_f18_wval_i;
      end
      if (bus_w16_wren_s == 1'b1) begin
        data_w16_f22_r <= data_w16_f22_r & mem_wdata_i[23:22];
      end else if (regf_w16_f22_wr_i == 1'b1) begin
        data_w16_f22_r <= data_w16_f22_r | ~regf_w16_f22_wval_i;
      end
      if (bus_w16_wren_s == 1'b1) begin
        data_w16_f26_r <= data_w16_f26_r & mem_wdata_i[27:26];
      end else if (regf_w16_f26_wr_i == 1'b1) begin
        data_w16_f26_r <= data_w16_f26_r & ~regf_w16_f26_wval_i;
      end
      if (bus_w16_wren_s == 1'b1) begin
        data_w16_f30_r <= data_w16_f30_r & mem_wdata_i[31:30];
      end else if (regf_w16_f30_wr_i == 1'b1) begin
        data_w16_f30_r <= data_w16_f30_r | regf_w16_f30_wval_i;
      end
      if (bus_w17_wren_s == 1'b1) begin
        data_w17_f2_r <= data_w17_f2_r & mem_wdata_i[3:2];
      end else if (regf_w17_f2_wr_i == 1'b1) begin
        data_w17_f2_r <= regf_w17_f2_wval_i;
      end
      if (bus_w17_wren_s == 1'b1) begin
        data_w17_f6_r <= data_w17_f6_r & mem_wdata_i[7:6];
      end else if (regf_w17_f6_wr_i == 1'b1) begin
        data_w17_f6_r <= data_w17_f6_r & regf_w17_f6_wval_i;
      end
      if (bus_w17_wren_s == 1'b1) begin
        data_w17_f10_r <= data_w17_f10_r & mem_wdata_i[11:10];
      end else if (regf_w17_f10_wr_i == 1'b1) begin
        data_w17_f10_r <= data_w17_f10_r | ~regf_w17_f10_wval_i;
      end
      if (bus_w17_wren_s == 1'b1) begin
        data_w17_f14_r <= data_w17_f14_r & mem_wdata_i[15:14];
      end else if (regf_w17_f14_wr_i == 1'b1) begin
        data_w17_f14_r <= data_w17_f14_r & ~regf_w17_f14_wval_i;
      end
      if (bus_w17_wren_s == 1'b1) begin
        data_w17_f18_r <= data_w17_f18_r & mem_wdata_i[19:18];
      end else if (regf_w17_f18_wr_i == 1'b1) begin
        data_w17_f18_r <= data_w17_f18_r | regf_w17_f18_wval_i;
      end
      if (bus_w17_wren_s == 1'b1) begin
        data_w17_f22_r <= data_w17_f22_r & mem_wdata_i[23:22];
      end else if (regf_w17_f22_wr_i == 1'b1) begin
        data_w17_f22_r <= regf_w17_f22_wval_i;
      end
      if (bus_w17_wren_s == 1'b1) begin
        data_w17_f26_r <= data_w17_f26_r & mem_wdata_i[27:26];
      end else if (regf_w17_f26_wr_i == 1'b1) begin
        data_w17_f26_r <= regf_w17_f26_wval_i;
      end
      if (bus_w17_wren_s == 1'b1) begin
        data_w17_f30_r <= data_w17_f30_r | ~mem_wdata_i[31:30];
      end
      if (bus_w18_wren_s == 1'b1) begin
        data_w18_f2_r <= data_w18_f2_r | ~mem_wdata_i[3:2];
      end else if (regf_w18_f2_rd_i == 1'b1) begin
        data_w18_f2_r <= 2'h0;
      end
      if (bus_w18_wren_s == 1'b1) begin
        data_w18_f6_r <= data_w18_f6_r | ~mem_wdata_i[7:6];
      end
      if (bus_w18_wren_s == 1'b1) begin
        data_w18_f10_r <= data_w18_f10_r | ~mem_wdata_i[11:10];
      end
      if (bus_w18_wren_s == 1'b1) begin
        data_w18_f14_r <= data_w18_f14_r | ~mem_wdata_i[15:14];
      end else if (regf_w18_f14_rd_i == 1'b1) begin
        data_w18_f14_r <= 2'h3;
      end
      if (bus_w18_wren_s == 1'b1) begin
        data_w18_f18_r <= data_w18_f18_r | ~mem_wdata_i[19:18];
      end else if (regf_w18_f18_rd_i == 1'b1) begin
        data_w18_f18_r <= ~data_w18_f18_r;
      end
      if (bus_w18_wren_s == 1'b1) begin
        data_w18_f22_r <= data_w18_f22_r | ~mem_wdata_i[23:22];
      end else if (regf_w18_f22_wr_i == 1'b1) begin
        data_w18_f22_r <= regf_w18_f22_wval_i;
      end
      if (bus_w18_wren_s == 1'b1) begin
        data_w18_f26_r <= data_w18_f26_r | ~mem_wdata_i[27:26];
      end else if (regf_w18_f26_wr_i == 1'b1) begin
        data_w18_f26_r <= data_w18_f26_r & regf_w18_f26_wval_i;
      end
      if (bus_w18_wren_s == 1'b1) begin
        data_w18_f30_r <= data_w18_f30_r | ~mem_wdata_i[31:30];
      end else if (regf_w18_f30_wr_i == 1'b1) begin
        data_w18_f30_r <= data_w18_f30_r | ~regf_w18_f30_wval_i;
      end
      if (bus_w19_wren_s == 1'b1) begin
        data_w19_f2_r <= data_w19_f2_r | ~mem_wdata_i[3:2];
      end else if (regf_w19_f2_wr_i == 1'b1) begin
        data_w19_f2_r <= data_w19_f2_r & ~regf_w19_f2_wval_i;
      end
      if (bus_w19_wren_s == 1'b1) begin
        data_w19_f6_r <= data_w19_f6_r | ~mem_wdata_i[7:6];
      end else if (regf_w19_f6_wr_i == 1'b1) begin
        data_w19_f6_r <= data_w19_f6_r | regf_w19_f6_wval_i;
      end
      if (bus_w19_wren_s == 1'b1) begin
        data_w19_f10_r <= data_w19_f10_r | ~mem_wdata_i[11:10];
      end else if (regf_w19_f10_wr_i == 1'b1) begin
        data_w19_f10_r <= regf_w19_f10_wval_i;
      end
      if (bus_w19_wren_s == 1'b1) begin
        data_w19_f14_r <= data_w19_f14_r | ~mem_wdata_i[15:14];
      end else if (regf_w19_f14_wr_i == 1'b1) begin
        data_w19_f14_r <= data_w19_f14_r & regf_w19_f14_wval_i;
      end
      if (bus_w19_wren_s == 1'b1) begin
        data_w19_f18_r <= data_w19_f18_r | ~mem_wdata_i[19:18];
      end else if (regf_w19_f18_wr_i == 1'b1) begin
        data_w19_f18_r <= data_w19_f18_r | ~regf_w19_f18_wval_i;
      end
      if (bus_w19_wren_s == 1'b1) begin
        data_w19_f22_r <= data_w19_f22_r | ~mem_wdata_i[23:22];
      end else if (regf_w19_f22_wr_i == 1'b1) begin
        data_w19_f22_r <= data_w19_f22_r & ~regf_w19_f22_wval_i;
      end
      if (bus_w19_wren_s == 1'b1) begin
        data_w19_f26_r <= data_w19_f26_r | ~mem_wdata_i[27:26];
      end else if (regf_w19_f26_wr_i == 1'b1) begin
        data_w19_f26_r <= data_w19_f26_r | regf_w19_f26_wval_i;
      end
      if (bus_w19_wren_s == 1'b1) begin
        data_w19_f30_r <= data_w19_f30_r | ~mem_wdata_i[31:30];
      end else if (regf_w19_f30_wr_i == 1'b1) begin
        data_w19_f30_r <= regf_w19_f30_wval_i;
      end
      if (bus_w20_wren_s == 1'b1) begin
        data_w20_f2_r <= data_w20_f2_r | ~mem_wdata_i[3:2];
      end else if (regf_w20_f2_wr_i == 1'b1) begin
        data_w20_f2_r <= regf_w20_f2_wval_i;
      end
      if (bus_w20_wren_s == 1'b1) begin
        data_w20_f6_r <= data_w20_f6_r & ~mem_wdata_i[7:6];
      end
      if (bus_w20_wren_s == 1'b1) begin
        data_w20_f10_r <= data_w20_f10_r & ~mem_wdata_i[11:10];
      end else if (regf_w20_f10_rd_i == 1'b1) begin
        data_w20_f10_r <= 2'h0;
      end
      if (bus_w20_wren_s == 1'b1) begin
        data_w20_f14_r <= data_w20_f14_r & ~mem_wdata_i[15:14];
      end
      if (bus_w20_wren_s == 1'b1) begin
        data_w20_f18_r <= data_w20_f18_r & ~mem_wdata_i[19:18];
      end
      if (bus_w20_wren_s == 1'b1) begin
        data_w20_f22_r <= data_w20_f22_r & ~mem_wdata_i[23:22];
      end else if (regf_w20_f22_rd_i == 1'b1) begin
        data_w20_f22_r <= 2'h3;
      end
      if (bus_w20_wren_s == 1'b1) begin
        data_w20_f26_r <= data_w20_f26_r & ~mem_wdata_i[27:26];
      end else if (regf_w20_f26_rd_i == 1'b1) begin
        data_w20_f26_r <= ~data_w20_f26_r;
      end
      if (bus_w20_wren_s == 1'b1) begin
        data_w20_f30_r <= data_w20_f30_r & ~mem_wdata_i[31:30];
      end else if (regf_w20_f30_wr_i == 1'b1) begin
        data_w20_f30_r <= regf_w20_f30_wval_i;
      end
      if (bus_w21_wren_s == 1'b1) begin
        data_w21_f2_r <= data_w21_f2_r & ~mem_wdata_i[3:2];
      end else if (regf_w21_f2_wr_i == 1'b1) begin
        data_w21_f2_r <= data_w21_f2_r & regf_w21_f2_wval_i;
      end
      if (bus_w21_wren_s == 1'b1) begin
        data_w21_f6_r <= data_w21_f6_r & ~mem_wdata_i[7:6];
      end else if (regf_w21_f6_wr_i == 1'b1) begin
        data_w21_f6_r <= data_w21_f6_r | ~regf_w21_f6_wval_i;
      end
      if (bus_w21_wren_s == 1'b1) begin
        data_w21_f10_r <= data_w21_f10_r & ~mem_wdata_i[11:10];
      end else if (regf_w21_f10_wr_i == 1'b1) begin
        data_w21_f10_r <= data_w21_f10_r & ~regf_w21_f10_wval_i;
      end
      if (bus_w21_wren_s == 1'b1) begin
        data_w21_f14_r <= data_w21_f14_r & ~mem_wdata_i[15:14];
      end else if (regf_w21_f14_wr_i == 1'b1) begin
        data_w21_f14_r <= data_w21_f14_r | regf_w21_f14_wval_i;
      end
      if (bus_w21_wren_s == 1'b1) begin
        data_w21_f18_r <= data_w21_f18_r & ~mem_wdata_i[19:18];
      end else if (regf_w21_f18_wr_i == 1'b1) begin
        data_w21_f18_r <= regf_w21_f18_wval_i;
      end
      if (bus_w21_wren_s == 1'b1) begin
        data_w21_f22_r <= data_w21_f22_r & ~mem_wdata_i[23:22];
      end else if (regf_w21_f22_wr_i == 1'b1) begin
        data_w21_f22_r <= data_w21_f22_r & regf_w21_f22_wval_i;
      end
      if (bus_w21_wren_s == 1'b1) begin
        data_w21_f26_r <= data_w21_f26_r & ~mem_wdata_i[27:26];
      end else if (regf_w21_f26_wr_i == 1'b1) begin
        data_w21_f26_r <= data_w21_f26_r | ~regf_w21_f26_wval_i;
      end
      if (bus_w21_wren_s == 1'b1) begin
        data_w21_f30_r <= data_w21_f30_r & ~mem_wdata_i[31:30];
      end else if (regf_w21_f30_wr_i == 1'b1) begin
        data_w21_f30_r <= data_w21_f30_r & ~regf_w21_f30_wval_i;
      end
      if (bus_w22_wren_s == 1'b1) begin
        data_w22_f2_r <= data_w22_f2_r & ~mem_wdata_i[3:2];
      end else if (regf_w22_f2_wr_i == 1'b1) begin
        data_w22_f2_r <= data_w22_f2_r | regf_w22_f2_wval_i;
      end
      if (bus_w22_wren_s == 1'b1) begin
        data_w22_f6_r <= data_w22_f6_r & ~mem_wdata_i[7:6];
      end else if (regf_w22_f6_wr_i == 1'b1) begin
        data_w22_f6_r <= regf_w22_f6_wval_i;
      end
      if (bus_w22_wren_s == 1'b1) begin
        data_w22_f10_r <= data_w22_f10_r & ~mem_wdata_i[11:10];
      end else if (regf_w22_f10_wr_i == 1'b1) begin
        data_w22_f10_r <= regf_w22_f10_wval_i;
      end
      if (bus_w22_wren_s == 1'b1) begin
        data_w22_f14_r <= data_w22_f14_r | mem_wdata_i[15:14];
      end
      if (bus_w22_wren_s == 1'b1) begin
        data_w22_f18_r <= data_w22_f18_r | mem_wdata_i[19:18];
      end else if (regf_w22_f18_rd_i == 1'b1) begin
        data_w22_f18_r <= 2'h0;
      end
      if (bus_w22_wren_s == 1'b1) begin
        data_w22_f22_r <= data_w22_f22_r | mem_wdata_i[23:22];
      end
      if (bus_w22_wren_s == 1'b1) begin
        data_w22_f26_r <= data_w22_f26_r | mem_wdata_i[27:26];
      end
      if (bus_w22_wren_s == 1'b1) begin
        data_w22_f30_r <= data_w22_f30_r | mem_wdata_i[31:30];
      end else if (regf_w22_f30_rd_i == 1'b1) begin
        data_w22_f30_r <= 2'h3;
      end
      if (bus_w23_wren_s == 1'b1) begin
        data_w23_f2_r <= data_w23_f2_r | mem_wdata_i[3:2];
      end else if (regf_w23_f2_rd_i == 1'b1) begin
        data_w23_f2_r <= ~data_w23_f2_r;
      end
      if (bus_w23_wren_s == 1'b1) begin
        data_w23_f6_r <= data_w23_f6_r | mem_wdata_i[7:6];
      end else if (regf_w23_f6_wr_i == 1'b1) begin
        data_w23_f6_r <= regf_w23_f6_wval_i;
      end
      if (bus_w23_wren_s == 1'b1) begin
        data_w23_f10_r <= data_w23_f10_r | mem_wdata_i[11:10];
      end else if (regf_w23_f10_wr_i == 1'b1) begin
        data_w23_f10_r <= data_w23_f10_r & regf_w23_f10_wval_i;
      end
      if (bus_w23_wren_s == 1'b1) begin
        data_w23_f14_r <= data_w23_f14_r | mem_wdata_i[15:14];
      end else if (regf_w23_f14_wr_i == 1'b1) begin
        data_w23_f14_r <= data_w23_f14_r | ~regf_w23_f14_wval_i;
      end
      if (bus_w23_wren_s == 1'b1) begin
        data_w23_f18_r <= data_w23_f18_r | mem_wdata_i[19:18];
      end else if (regf_w23_f18_wr_i == 1'b1) begin
        data_w23_f18_r <= data_w23_f18_r & ~regf_w23_f18_wval_i;
      end
      if (bus_w23_wren_s == 1'b1) begin
        data_w23_f22_r <= data_w23_f22_r | mem_wdata_i[23:22];
      end else if (regf_w23_f22_wr_i == 1'b1) begin
        data_w23_f22_r <= data_w23_f22_r | regf_w23_f22_wval_i;
      end
      if (bus_w23_wren_s == 1'b1) begin
        data_w23_f26_r <= data_w23_f26_r | mem_wdata_i[27:26];
      end else if (regf_w23_f26_wr_i == 1'b1) begin
        data_w23_f26_r <= regf_w23_f26_wval_i;
      end
      if (bus_w23_wren_s == 1'b1) begin
        data_w23_f30_r <= data_w23_f30_r | mem_wdata_i[31:30];
      end else if (regf_w23_f30_wr_i == 1'b1) begin
        data_w23_f30_r <= data_w23_f30_r & regf_w23_f30_wval_i;
      end
      if (bus_w24_wren_s == 1'b1) begin
        data_w24_f2_r <= data_w24_f2_r | mem_wdata_i[3:2];
      end else if (regf_w24_f2_wr_i == 1'b1) begin
        data_w24_f2_r <= data_w24_f2_r | ~regf_w24_f2_wval_i;
      end
      if (bus_w24_wren_s == 1'b1) begin
        data_w24_f6_r <= data_w24_f6_r | mem_wdata_i[7:6];
      end else if (regf_w24_f6_wr_i == 1'b1) begin
        data_w24_f6_r <= data_w24_f6_r & ~regf_w24_f6_wval_i;
      end
      if (bus_w24_wren_s == 1'b1) begin
        data_w24_f10_r <= data_w24_f10_r | mem_wdata_i[11:10];
      end else if (regf_w24_f10_wr_i == 1'b1) begin
        data_w24_f10_r <= data_w24_f10_r | regf_w24_f10_wval_i;
      end
      if (bus_w24_wren_s == 1'b1) begin
        data_w24_f14_r <= data_w24_f14_r | mem_wdata_i[15:14];
      end else if (regf_w24_f14_wr_i == 1'b1) begin
        data_w24_f14_r <= regf_w24_f14_wval_i;
      end
      if (bus_w24_wren_s == 1'b1) begin
        data_w24_f18_r <= data_w24_f18_r | mem_wdata_i[19:18];
      end else if (regf_w24_f18_wr_i == 1'b1) begin
        data_w24_f18_r <= regf_w24_f18_wval_i;
      end
      if (bus_w24_flg0_wren_s == 1'b1) begin
        data_w24_f22_r <= mem_wdata_i[23:22];
      end
      if (bus_w24_flg0_wren_s == 1'b1) begin
        data_w24_f26_r <= mem_wdata_i[27:26];
      end else if (regf_w24_f26_rd_i == 1'b1) begin
        data_w24_f26_r <= 2'h0;
      end
      if (bus_w24_flg0_wren_s == 1'b1) begin
        data_w24_f30_r <= mem_wdata_i[31:30];
      end
      if (bus_w25_flg0_wren_s == 1'b1) begin
        data_w25_f2_r <= mem_wdata_i[3:2];
      end
      if (bus_w25_flg0_wren_s == 1'b1) begin
        data_w25_f6_r <= mem_wdata_i[7:6];
      end else if (regf_w25_f6_rd_i == 1'b1) begin
        data_w25_f6_r <= 2'h3;
      end
      if (bus_w25_flg0_wren_s == 1'b1) begin
        data_w25_f10_r <= mem_wdata_i[11:10];
      end else if (regf_w25_f10_rd_i == 1'b1) begin
        data_w25_f10_r <= ~data_w25_f10_r;
      end
      if (bus_w25_flg0_wren_s == 1'b1) begin
        data_w25_f14_r <= mem_wdata_i[15:14];
      end else if (regf_w25_f14_wr_i == 1'b1) begin
        data_w25_f14_r <= regf_w25_f14_wval_i;
      end
      if (bus_w25_flg0_wren_s == 1'b1) begin
        data_w25_f18_r <= mem_wdata_i[19:18];
      end else if (regf_w25_f18_wr_i == 1'b1) begin
        data_w25_f18_r <= data_w25_f18_r & regf_w25_f18_wval_i;
      end
      if (bus_w25_flg0_wren_s == 1'b1) begin
        data_w25_f22_r <= mem_wdata_i[23:22];
      end else if (regf_w25_f22_wr_i == 1'b1) begin
        data_w25_f22_r <= data_w25_f22_r | ~regf_w25_f22_wval_i;
      end
      if (bus_w25_flg0_wren_s == 1'b1) begin
        data_w25_f26_r <= mem_wdata_i[27:26];
      end else if (regf_w25_f26_wr_i == 1'b1) begin
        data_w25_f26_r <= data_w25_f26_r & ~regf_w25_f26_wval_i;
      end
      if (bus_w25_flg0_wren_s == 1'b1) begin
        data_w25_f30_r <= mem_wdata_i[31:30];
      end else if (regf_w25_f30_wr_i == 1'b1) begin
        data_w25_f30_r <= data_w25_f30_r | regf_w25_f30_wval_i;
      end
      if (bus_w26_flg0_wren_s == 1'b1) begin
        data_w26_f2_r <= mem_wdata_i[3:2];
      end else if (regf_w26_f2_wr_i == 1'b1) begin
        data_w26_f2_r <= regf_w26_f2_wval_i;
      end
      if (bus_w26_flg0_wren_s == 1'b1) begin
        data_w26_f6_r <= mem_wdata_i[7:6];
      end else if (regf_w26_f6_wr_i == 1'b1) begin
        data_w26_f6_r <= data_w26_f6_r & regf_w26_f6_wval_i;
      end
      if (bus_w26_flg0_wren_s == 1'b1) begin
        data_w26_f10_r <= mem_wdata_i[11:10];
      end else if (regf_w26_f10_wr_i == 1'b1) begin
        data_w26_f10_r <= data_w26_f10_r | ~regf_w26_f10_wval_i;
      end
      if (bus_w26_flg0_wren_s == 1'b1) begin
        data_w26_f14_r <= mem_wdata_i[15:14];
      end else if (regf_w26_f14_wr_i == 1'b1) begin
        data_w26_f14_r <= data_w26_f14_r & ~regf_w26_f14_wval_i;
      end
      if (bus_w26_flg0_wren_s == 1'b1) begin
        data_w26_f18_r <= mem_wdata_i[19:18];
      end else if (regf_w26_f18_wr_i == 1'b1) begin
        data_w26_f18_r <= data_w26_f18_r | regf_w26_f18_wval_i;
      end
      if (bus_w26_flg0_wren_s == 1'b1) begin
        data_w26_f22_r <= mem_wdata_i[23:22];
      end else if (regf_w26_f22_wr_i == 1'b1) begin
        data_w26_f22_r <= regf_w26_f22_wval_i;
      end
      if (bus_w26_flg0_wren_s == 1'b1) begin
        data_w26_f26_r <= mem_wdata_i[27:26];
      end else if (regf_w26_f26_wr_i == 1'b1) begin
        data_w26_f26_r <= regf_w26_f26_wval_i;
      end
      if (bus_w26_wren_s == 1'b1) begin
        data_w26_f30_r <= data_w26_f30_r & mem_wdata_i[31:30];
      end else if (regf_w26_f30_rd_i == 1'b1) begin
        data_w26_f30_r <= 2'h0;
      end
      if (bus_w27_wren_s == 1'b1) begin
        data_w27_f2_r <= data_w27_f2_r & mem_wdata_i[3:2];
      end
      if (bus_w27_wren_s == 1'b1) begin
        data_w27_f6_r <= data_w27_f6_r & mem_wdata_i[7:6];
      end
      if (bus_w27_wren_s == 1'b1) begin
        data_w27_f10_r <= data_w27_f10_r & mem_wdata_i[11:10];
      end else if (regf_w27_f10_rd_i == 1'b1) begin
        data_w27_f10_r <= 2'h3;
      end
      if (bus_w27_wren_s == 1'b1) begin
        data_w27_f14_r <= data_w27_f14_r & mem_wdata_i[15:14];
      end else if (regf_w27_f14_rd_i == 1'b1) begin
        data_w27_f14_r <= ~data_w27_f14_r;
      end
      if (bus_w27_wren_s == 1'b1) begin
        data_w27_f18_r <= data_w27_f18_r & mem_wdata_i[19:18];
      end else if (regf_w27_f18_wr_i == 1'b1) begin
        data_w27_f18_r <= regf_w27_f18_wval_i;
      end
      if (bus_w27_wren_s == 1'b1) begin
        data_w27_f22_r <= data_w27_f22_r & mem_wdata_i[23:22];
      end else if (regf_w27_f22_wr_i == 1'b1) begin
        data_w27_f22_r <= data_w27_f22_r & regf_w27_f22_wval_i;
      end
      if (bus_w27_wren_s == 1'b1) begin
        data_w27_f26_r <= data_w27_f26_r & mem_wdata_i[27:26];
      end else if (regf_w27_f26_wr_i == 1'b1) begin
        data_w27_f26_r <= data_w27_f26_r | ~regf_w27_f26_wval_i;
      end
      if (bus_w27_wren_s == 1'b1) begin
        data_w27_f30_r <= data_w27_f30_r & mem_wdata_i[31:30];
      end else if (regf_w27_f30_wr_i == 1'b1) begin
        data_w27_f30_r <= data_w27_f30_r & ~regf_w27_f30_wval_i;
      end
      if (bus_w28_wren_s == 1'b1) begin
        data_w28_f2_r <= data_w28_f2_r & mem_wdata_i[3:2];
      end else if (regf_w28_f2_wr_i == 1'b1) begin
        data_w28_f2_r <= data_w28_f2_r | regf_w28_f2_wval_i;
      end
      if (bus_w28_wren_s == 1'b1) begin
        data_w28_f6_r <= data_w28_f6_r & mem_wdata_i[7:6];
      end else if (regf_w28_f6_wr_i == 1'b1) begin
        data_w28_f6_r <= regf_w28_f6_wval_i;
      end
      if (bus_w28_wren_s == 1'b1) begin
        data_w28_f10_r <= data_w28_f10_r | ~mem_wdata_i[11:10];
      end else if (regf_w28_f10_rd_i == 1'b1) begin
        data_w28_f10_r <= 2'h0;
      end
      if (bus_w28_wren_s == 1'b1) begin
        data_w28_f14_r <= data_w28_f14_r | ~mem_wdata_i[15:14];
      end
      if (bus_w28_wren_s == 1'b1) begin
        data_w28_f18_r <= data_w28_f18_r | ~mem_wdata_i[19:18];
      end
      if (bus_w28_wren_s == 1'b1) begin
        data_w28_f22_r <= data_w28_f22_r | ~mem_wdata_i[23:22];
      end else if (regf_w28_f22_rd_i == 1'b1) begin
        data_w28_f22_r <= 2'h3;
      end
      if (bus_w28_wren_s == 1'b1) begin
        data_w28_f26_r <= data_w28_f26_r | ~mem_wdata_i[27:26];
      end else if (regf_w28_f26_rd_i == 1'b1) begin
        data_w28_f26_r <= ~data_w28_f26_r;
      end
      if (bus_w28_wren_s == 1'b1) begin
        data_w28_f30_r <= data_w28_f30_r | ~mem_wdata_i[31:30];
      end else if (regf_w28_f30_wr_i == 1'b1) begin
        data_w28_f30_r <= regf_w28_f30_wval_i;
      end
      if (bus_w29_wren_s == 1'b1) begin
        data_w29_f2_r <= data_w29_f2_r | ~mem_wdata_i[3:2];
      end else if (regf_w29_f2_wr_i == 1'b1) begin
        data_w29_f2_r <= data_w29_f2_r & regf_w29_f2_wval_i;
      end
      if (bus_w29_wren_s == 1'b1) begin
        data_w29_f6_r <= data_w29_f6_r | ~mem_wdata_i[7:6];
      end else if (regf_w29_f6_wr_i == 1'b1) begin
        data_w29_f6_r <= data_w29_f6_r | ~regf_w29_f6_wval_i;
      end
      if (bus_w29_wren_s == 1'b1) begin
        data_w29_f10_r <= data_w29_f10_r | ~mem_wdata_i[11:10];
      end else if (regf_w29_f10_wr_i == 1'b1) begin
        data_w29_f10_r <= data_w29_f10_r & ~regf_w29_f10_wval_i;
      end
      if (bus_w29_wren_s == 1'b1) begin
        data_w29_f14_r <= data_w29_f14_r | ~mem_wdata_i[15:14];
      end else if (regf_w29_f14_wr_i == 1'b1) begin
        data_w29_f14_r <= data_w29_f14_r | regf_w29_f14_wval_i;
      end
      if (bus_w29_wren_s == 1'b1) begin
        data_w29_f18_r <= data_w29_f18_r | ~mem_wdata_i[19:18];
      end else if (regf_w29_f18_wr_i == 1'b1) begin
        data_w29_f18_r <= regf_w29_f18_wval_i;
      end
      if (bus_w29_wren_s == 1'b1) begin
        data_w29_f22_r <= data_w29_f22_r & ~mem_wdata_i[23:22];
      end else if (regf_w29_f22_rd_i == 1'b1) begin
        data_w29_f22_r <= 2'h0;
      end
      if (bus_w29_wren_s == 1'b1) begin
        data_w29_f26_r <= data_w29_f26_r & ~mem_wdata_i[27:26];
      end
      if (bus_w29_wren_s == 1'b1) begin
        data_w29_f30_r <= data_w29_f30_r & ~mem_wdata_i[31:30];
      end
      if (bus_w30_wren_s == 1'b1) begin
        data_w30_f2_r <= data_w30_f2_r & ~mem_wdata_i[3:2];
      end else if (regf_w30_f2_rd_i == 1'b1) begin
        data_w30_f2_r <= 2'h3;
      end
      if (bus_w30_wren_s == 1'b1) begin
        data_w30_f6_r <= data_w30_f6_r & ~mem_wdata_i[7:6];
      end else if (regf_w30_f6_rd_i == 1'b1) begin
        data_w30_f6_r <= ~data_w30_f6_r;
      end
      if (bus_w30_wren_s == 1'b1) begin
        data_w30_f10_r <= data_w30_f10_r & ~mem_wdata_i[11:10];
      end else if (regf_w30_f10_wr_i == 1'b1) begin
        data_w30_f10_r <= regf_w30_f10_wval_i;
      end
      if (bus_w30_wren_s == 1'b1) begin
        data_w30_f14_r <= data_w30_f14_r & ~mem_wdata_i[15:14];
      end else if (regf_w30_f14_wr_i == 1'b1) begin
        data_w30_f14_r <= data_w30_f14_r & regf_w30_f14_wval_i;
      end
      if (bus_w30_wren_s == 1'b1) begin
        data_w30_f18_r <= data_w30_f18_r & ~mem_wdata_i[19:18];
      end else if (regf_w30_f18_wr_i == 1'b1) begin
        data_w30_f18_r <= data_w30_f18_r | ~regf_w30_f18_wval_i;
      end
      if (bus_w30_wren_s == 1'b1) begin
        data_w30_f22_r <= data_w30_f22_r & ~mem_wdata_i[23:22];
      end else if (regf_w30_f22_wr_i == 1'b1) begin
        data_w30_f22_r <= data_w30_f22_r & ~regf_w30_f22_wval_i;
      end
      if (bus_w30_wren_s == 1'b1) begin
        data_w30_f26_r <= data_w30_f26_r & ~mem_wdata_i[27:26];
      end else if (regf_w30_f26_wr_i == 1'b1) begin
        data_w30_f26_r <= data_w30_f26_r | regf_w30_f26_wval_i;
      end
      if (bus_w30_wren_s == 1'b1) begin
        data_w30_f30_r <= data_w30_f30_r & ~mem_wdata_i[31:30];
      end else if (regf_w30_f30_wr_i == 1'b1) begin
        data_w30_f30_r <= regf_w30_f30_wval_i;
      end
      if (bus_w31_wren_s == 1'b1) begin
        data_w31_f2_r <= data_w31_f2_r | mem_wdata_i[3:2];
      end else if (regf_w31_f2_rd_i == 1'b1) begin
        data_w31_f2_r <= 2'h0;
      end
      if (bus_w31_wren_s == 1'b1) begin
        data_w31_f6_r <= data_w31_f6_r | mem_wdata_i[7:6];
      end
      if (bus_w31_wren_s == 1'b1) begin
        data_w31_f10_r <= data_w31_f10_r | mem_wdata_i[11:10];
      end
      if (bus_w31_wren_s == 1'b1) begin
        data_w31_f14_r <= data_w31_f14_r | mem_wdata_i[15:14];
      end else if (regf_w31_f14_rd_i == 1'b1) begin
        data_w31_f14_r <= 2'h3;
      end
      if (bus_w31_wren_s == 1'b1) begin
        data_w31_f18_r <= data_w31_f18_r | mem_wdata_i[19:18];
      end else if (regf_w31_f18_rd_i == 1'b1) begin
        data_w31_f18_r <= ~data_w31_f18_r;
      end
      if (bus_w31_wren_s == 1'b1) begin
        data_w31_f22_r <= data_w31_f22_r | mem_wdata_i[23:22];
      end else if (regf_w31_f22_wr_i == 1'b1) begin
        data_w31_f22_r <= regf_w31_f22_wval_i;
      end
      if (bus_w31_wren_s == 1'b1) begin
        data_w31_f26_r <= data_w31_f26_r | mem_wdata_i[27:26];
      end else if (regf_w31_f26_wr_i == 1'b1) begin
        data_w31_f26_r <= data_w31_f26_r & regf_w31_f26_wval_i;
      end
      if (bus_w31_wren_s == 1'b1) begin
        data_w31_f30_r <= data_w31_f30_r | mem_wdata_i[31:30];
      end else if (regf_w31_f30_wr_i == 1'b1) begin
        data_w31_f30_r <= data_w31_f30_r | ~regf_w31_f30_wval_i;
      end
      if (bus_w32_wren_s == 1'b1) begin
        data_w32_f2_r <= data_w32_f2_r | mem_wdata_i[3:2];
      end else if (regf_w32_f2_wr_i == 1'b1) begin
        data_w32_f2_r <= data_w32_f2_r & ~regf_w32_f2_wval_i;
      end
      if (bus_w32_wren_s == 1'b1) begin
        data_w32_f6_r <= data_w32_f6_r | mem_wdata_i[7:6];
      end else if (regf_w32_f6_wr_i == 1'b1) begin
        data_w32_f6_r <= data_w32_f6_r | regf_w32_f6_wval_i;
      end
      if (bus_w32_wren_s == 1'b1) begin
        data_w32_f10_r <= data_w32_f10_r | mem_wdata_i[11:10];
      end else if (regf_w32_f10_wr_i == 1'b1) begin
        data_w32_f10_r <= regf_w32_f10_wval_i;
      end
      if (bus_w32_flg0_wren_s == 1'b1) begin
        data_w32_f14_r <= mem_wdata_i[15:14];
      end else if (regf_w32_f14_rd_i == 1'b1) begin
        data_w32_f14_r <= 2'h0;
      end
      if (bus_w32_flg0_wren_s == 1'b1) begin
        data_w32_f18_r <= mem_wdata_i[19:18];
      end
      if (bus_w32_flg0_wren_s == 1'b1) begin
        data_w32_f22_r <= mem_wdata_i[23:22];
      end
      if (bus_w32_flg0_wren_s == 1'b1) begin
        data_w32_f26_r <= mem_wdata_i[27:26];
      end else if (regf_w32_f26_rd_i == 1'b1) begin
        data_w32_f26_r <= 2'h3;
      end
      if (bus_w32_flg0_wren_s == 1'b1) begin
        data_w32_f30_r <= mem_wdata_i[31:30];
      end else if (regf_w32_f30_rd_i == 1'b1) begin
        data_w32_f30_r <= ~data_w32_f30_r;
      end
      if (bus_w33_flg0_wren_s == 1'b1) begin
        data_w33_f2_r <= mem_wdata_i[3:2];
      end else if (regf_w33_f2_wr_i == 1'b1) begin
        data_w33_f2_r <= regf_w33_f2_wval_i;
      end
      if (bus_w33_flg0_wren_s == 1'b1) begin
        data_w33_f6_r <= mem_wdata_i[7:6];
      end else if (regf_w33_f6_wr_i == 1'b1) begin
        data_w33_f6_r <= data_w33_f6_r & regf_w33_f6_wval_i;
      end
      if (bus_w33_flg0_wren_s == 1'b1) begin
        data_w33_f10_r <= mem_wdata_i[11:10];
      end else if (regf_w33_f10_wr_i == 1'b1) begin
        data_w33_f10_r <= data_w33_f10_r | ~regf_w33_f10_wval_i;
      end
      if (bus_w33_flg0_wren_s == 1'b1) begin
        data_w33_f14_r <= mem_wdata_i[15:14];
      end else if (regf_w33_f14_wr_i == 1'b1) begin
        data_w33_f14_r <= data_w33_f14_r & ~regf_w33_f14_wval_i;
      end
      if (bus_w33_flg0_wren_s == 1'b1) begin
        data_w33_f18_r <= mem_wdata_i[19:18];
      end else if (regf_w33_f18_wr_i == 1'b1) begin
        data_w33_f18_r <= data_w33_f18_r | regf_w33_f18_wval_i;
      end
      if (bus_w33_flg0_wren_s == 1'b1) begin
        data_w33_f22_r <= mem_wdata_i[23:22];
      end else if (regf_w33_f22_wr_i == 1'b1) begin
        data_w33_f22_r <= regf_w33_f22_wval_i;
      end
      if (bus_w33_wren_s == 1'b1) begin
        data_w33_f26_r <= mem_wdata_i[27:26];
      end else if (regf_w33_f26_rd_i == 1'b1) begin
        data_w33_f26_r <= 2'h0;
      end
      if (bus_w33_wren_s == 1'b1) begin
        data_w33_f30_r <= mem_wdata_i[31:30];
      end
      if (bus_w34_wren_s == 1'b1) begin
        data_w34_f2_r <= mem_wdata_i[3:2];
      end
      if (bus_w34_wren_s == 1'b1) begin
        data_w34_f6_r <= mem_wdata_i[7:6];
      end else if (regf_w34_f6_rd_i == 1'b1) begin
        data_w34_f6_r <= 2'h3;
      end
      if (bus_w34_wren_s == 1'b1) begin
        data_w34_f10_r <= mem_wdata_i[11:10];
      end else if (regf_w34_f10_rd_i == 1'b1) begin
        data_w34_f10_r <= ~data_w34_f10_r;
      end
      if (bus_w34_wren_s == 1'b1) begin
        data_w34_f14_r <= mem_wdata_i[15:14];
      end else if (regf_w34_f14_wr_i == 1'b1) begin
        data_w34_f14_r <= regf_w34_f14_wval_i;
      end
      if (bus_w34_wren_s == 1'b1) begin
        data_w34_f18_r <= mem_wdata_i[19:18];
      end else if (regf_w34_f18_wr_i == 1'b1) begin
        data_w34_f18_r <= data_w34_f18_r & regf_w34_f18_wval_i;
      end
      if (bus_w34_wren_s == 1'b1) begin
        data_w34_f22_r <= mem_wdata_i[23:22];
      end else if (regf_w34_f22_wr_i == 1'b1) begin
        data_w34_f22_r <= data_w34_f22_r | ~regf_w34_f22_wval_i;
      end
      if (bus_w34_wren_s == 1'b1) begin
        data_w34_f26_r <= mem_wdata_i[27:26];
      end else if (regf_w34_f26_wr_i == 1'b1) begin
        data_w34_f26_r <= data_w34_f26_r & ~regf_w34_f26_wval_i;
      end
      if (bus_w34_wren_s == 1'b1) begin
        data_w34_f30_r <= mem_wdata_i[31:30];
      end else if (regf_w34_f30_wr_i == 1'b1) begin
        data_w34_f30_r <= data_w34_f30_r | regf_w34_f30_wval_i;
      end
      if (bus_w35_wren_s == 1'b1) begin
        data_w35_f2_r <= mem_wdata_i[3:2];
      end else if (regf_w35_f2_wr_i == 1'b1) begin
        data_w35_f2_r <= regf_w35_f2_wval_i;
      end
      if (bus_w24_wren_s == 1'b1) begin
        bus_wronce_w24_flg0_r <= 1'b0;
      end
      if (bus_w25_wren_s == 1'b1) begin
        bus_wronce_w25_flg0_r <= 1'b0;
      end
      if (bus_w26_wren_s == 1'b1) begin
        bus_wronce_w26_flg0_r <= 1'b0;
      end
      if (bus_w32_wren_s == 1'b1) begin
        bus_wronce_w32_flg0_r <= 1'b0;
      end
      if (bus_w33_wren_s == 1'b1) begin
        bus_wronce_w33_flg0_r <= 1'b0;
      end
    end
  end

  // ------------------------------------------------------
  // intermediate signals for in-core bus-writes
  // ------------------------------------------------------
  assign w13_f12_wbus_s = bus_w13_wren_s ? mem_wdata_i[13:12] : 2'h0;
  assign w13_f16_wbus_s = bus_w13_wren_s ? mem_wdata_i[17:16] : 2'h0;
  assign w13_f20_wbus_s = bus_w13_wren_s ? mem_wdata_i[21:20] : 2'h0;
  assign w13_f24_wbus_s = bus_w13_wren_s ? mem_wdata_i[25:24] : 2'h0;
  assign w13_f28_wbus_s = bus_w13_wren_s ? mem_wdata_i[29:28] : 2'h0;
  assign w14_f0_wbus_s  = bus_w14_wren_s ? mem_wdata_i[1:0] : 2'h0;
  assign w14_f4_wbus_s  = bus_w14_wren_s ? mem_wdata_i[5:4] : 2'h0;
  assign w14_f8_wbus_s  = bus_w14_wren_s ? mem_wdata_i[9:8] : 2'h0;
  assign w14_f12_wbus_s = bus_w14_wren_s ? mem_wdata_i[13:12] : 2'h0;
  assign w14_f16_wbus_s = bus_w14_wren_s ? mem_wdata_i[17:16] : 2'h0;
  assign w14_f20_wbus_s = bus_w14_wren_s ? mem_wdata_i[21:20] : 2'h0;
  assign w14_f24_wbus_s = bus_w14_wren_s ? mem_wdata_i[25:24] : 2'h0;
  assign w14_f28_wbus_s = bus_w14_wren_s ? mem_wdata_i[29:28] : 2'h0;
  assign w15_f0_wbus_s  = bus_w15_wren_s ? mem_wdata_i[1:0] : 2'h0;
  assign w15_f4_wbus_s  = bus_w15_wren_s ? mem_wdata_i[5:4] : 2'h0;
  assign w15_f8_wbus_s  = bus_w15_wren_s ? mem_wdata_i[9:8] : 2'h0;
  assign w15_f12_wbus_s = bus_w15_wren_s ? mem_wdata_i[13:12] : 2'h0;
  assign w15_f16_wbus_s = bus_w15_wren_s ? mem_wdata_i[17:16] : 2'h0;
  assign w15_f20_wbus_s = bus_w15_wren_s ? regf_w15_f20_rbus_i & mem_wdata_i[21:20] : 2'h0;
  assign w15_f24_wbus_s = bus_w15_wren_s ? regf_w15_f24_rbus_i & mem_wdata_i[25:24] : 2'h0;
  assign w15_f28_wbus_s = bus_w15_wren_s ? regf_w15_f28_rbus_i & mem_wdata_i[29:28] : 2'h0;
  assign w16_f0_wbus_s  = bus_w16_wren_s ? regf_w16_f0_rbus_i & mem_wdata_i[1:0] : 2'h0;
  assign w16_f4_wbus_s  = bus_w16_wren_s ? regf_w16_f4_rbus_i & mem_wdata_i[5:4] : 2'h0;
  assign w16_f8_wbus_s  = bus_w16_wren_s ? regf_w16_f8_rbus_i & mem_wdata_i[9:8] : 2'h0;
  assign w16_f12_wbus_s = bus_w16_wren_s ? regf_w16_f12_rbus_i & mem_wdata_i[13:12] : 2'h0;
  assign w16_f16_wbus_s = bus_w16_wren_s ? regf_w16_f16_rbus_i & mem_wdata_i[17:16] : 2'h0;
  assign w16_f20_wbus_s = bus_w16_wren_s ? regf_w16_f20_rbus_i & mem_wdata_i[21:20] : 2'h0;
  assign w16_f24_wbus_s = bus_w16_wren_s ? regf_w16_f24_rbus_i & mem_wdata_i[25:24] : 2'h0;
  assign w16_f28_wbus_s = bus_w16_wren_s ? regf_w16_f28_rbus_i & mem_wdata_i[29:28] : 2'h0;
  assign w17_f0_wbus_s  = bus_w17_wren_s ? regf_w17_f0_rbus_i & mem_wdata_i[1:0] : 2'h0;
  assign w17_f4_wbus_s  = bus_w17_wren_s ? regf_w17_f4_rbus_i & mem_wdata_i[5:4] : 2'h0;
  assign w17_f8_wbus_s  = bus_w17_wren_s ? regf_w17_f8_rbus_i & mem_wdata_i[9:8] : 2'h0;
  assign w17_f12_wbus_s = bus_w17_wren_s ? regf_w17_f12_rbus_i & mem_wdata_i[13:12] : 2'h0;
  assign w17_f16_wbus_s = bus_w17_wren_s ? regf_w17_f16_rbus_i & mem_wdata_i[17:16] : 2'h0;
  assign w17_f20_wbus_s = bus_w17_wren_s ? regf_w17_f20_rbus_i & mem_wdata_i[21:20] : 2'h0;
  assign w17_f24_wbus_s = bus_w17_wren_s ? regf_w17_f24_rbus_i & mem_wdata_i[25:24] : 2'h0;
  assign w17_f28_wbus_s = bus_w17_wren_s ? regf_w17_f28_rbus_i | ~mem_wdata_i[29:28] : 2'h0;
  assign w18_f0_wbus_s  = bus_w18_wren_s ? regf_w18_f0_rbus_i | ~mem_wdata_i[1:0] : 2'h0;
  assign w18_f4_wbus_s  = bus_w18_wren_s ? regf_w18_f4_rbus_i | ~mem_wdata_i[5:4] : 2'h0;
  assign w18_f8_wbus_s  = bus_w18_wren_s ? regf_w18_f8_rbus_i | ~mem_wdata_i[9:8] : 2'h0;
  assign w18_f12_wbus_s = bus_w18_wren_s ? regf_w18_f12_rbus_i | ~mem_wdata_i[13:12] : 2'h0;
  assign w18_f16_wbus_s = bus_w18_wren_s ? regf_w18_f16_rbus_i | ~mem_wdata_i[17:16] : 2'h0;
  assign w18_f20_wbus_s = bus_w18_wren_s ? regf_w18_f20_rbus_i | ~mem_wdata_i[21:20] : 2'h0;
  assign w18_f24_wbus_s = bus_w18_wren_s ? regf_w18_f24_rbus_i | ~mem_wdata_i[25:24] : 2'h0;
  assign w18_f28_wbus_s = bus_w18_wren_s ? regf_w18_f28_rbus_i | ~mem_wdata_i[29:28] : 2'h0;
  assign w19_f0_wbus_s  = bus_w19_wren_s ? regf_w19_f0_rbus_i | ~mem_wdata_i[1:0] : 2'h0;
  assign w19_f4_wbus_s  = bus_w19_wren_s ? regf_w19_f4_rbus_i | ~mem_wdata_i[5:4] : 2'h0;
  assign w19_f8_wbus_s  = bus_w19_wren_s ? regf_w19_f8_rbus_i | ~mem_wdata_i[9:8] : 2'h0;
  assign w19_f12_wbus_s = bus_w19_wren_s ? regf_w19_f12_rbus_i | ~mem_wdata_i[13:12] : 2'h0;
  assign w19_f16_wbus_s = bus_w19_wren_s ? regf_w19_f16_rbus_i | ~mem_wdata_i[17:16] : 2'h0;
  assign w19_f20_wbus_s = bus_w19_wren_s ? regf_w19_f20_rbus_i | ~mem_wdata_i[21:20] : 2'h0;
  assign w19_f24_wbus_s = bus_w19_wren_s ? regf_w19_f24_rbus_i | ~mem_wdata_i[25:24] : 2'h0;
  assign w19_f28_wbus_s = bus_w19_wren_s ? regf_w19_f28_rbus_i | ~mem_wdata_i[29:28] : 2'h0;
  assign w20_f0_wbus_s  = bus_w20_wren_s ? regf_w20_f0_rbus_i | ~mem_wdata_i[1:0] : 2'h0;
  assign w20_f4_wbus_s  = bus_w20_wren_s ? regf_w20_f4_rbus_i & ~mem_wdata_i[5:4] : 2'h0;
  assign w20_f8_wbus_s  = bus_w20_wren_s ? regf_w20_f8_rbus_i & ~mem_wdata_i[9:8] : 2'h0;
  assign w20_f12_wbus_s = bus_w20_wren_s ? regf_w20_f12_rbus_i & ~mem_wdata_i[13:12] : 2'h0;
  assign w20_f16_wbus_s = bus_w20_wren_s ? regf_w20_f16_rbus_i & ~mem_wdata_i[17:16] : 2'h0;
  assign w20_f20_wbus_s = bus_w20_wren_s ? regf_w20_f20_rbus_i & ~mem_wdata_i[21:20] : 2'h0;
  assign w20_f24_wbus_s = bus_w20_wren_s ? regf_w20_f24_rbus_i & ~mem_wdata_i[25:24] : 2'h0;
  assign w20_f28_wbus_s = bus_w20_wren_s ? regf_w20_f28_rbus_i & ~mem_wdata_i[29:28] : 2'h0;
  assign w21_f0_wbus_s  = bus_w21_wren_s ? regf_w21_f0_rbus_i & ~mem_wdata_i[1:0] : 2'h0;
  assign w21_f4_wbus_s  = bus_w21_wren_s ? regf_w21_f4_rbus_i & ~mem_wdata_i[5:4] : 2'h0;
  assign w21_f8_wbus_s  = bus_w21_wren_s ? regf_w21_f8_rbus_i & ~mem_wdata_i[9:8] : 2'h0;
  assign w21_f12_wbus_s = bus_w21_wren_s ? regf_w21_f12_rbus_i & ~mem_wdata_i[13:12] : 2'h0;
  assign w21_f16_wbus_s = bus_w21_wren_s ? regf_w21_f16_rbus_i & ~mem_wdata_i[17:16] : 2'h0;
  assign w21_f20_wbus_s = bus_w21_wren_s ? regf_w21_f20_rbus_i & ~mem_wdata_i[21:20] : 2'h0;
  assign w21_f24_wbus_s = bus_w21_wren_s ? regf_w21_f24_rbus_i & ~mem_wdata_i[25:24] : 2'h0;
  assign w21_f28_wbus_s = bus_w21_wren_s ? regf_w21_f28_rbus_i & ~mem_wdata_i[29:28] : 2'h0;
  assign w22_f0_wbus_s  = bus_w22_wren_s ? regf_w22_f0_rbus_i & ~mem_wdata_i[1:0] : 2'h0;
  assign w22_f4_wbus_s  = bus_w22_wren_s ? regf_w22_f4_rbus_i & ~mem_wdata_i[5:4] : 2'h0;
  assign w22_f8_wbus_s  = bus_w22_wren_s ? regf_w22_f8_rbus_i & ~mem_wdata_i[9:8] : 2'h0;
  assign w22_f12_wbus_s = bus_w22_wren_s ? regf_w22_f12_rbus_i | mem_wdata_i[13:12] : 2'h0;
  assign w22_f16_wbus_s = bus_w22_wren_s ? regf_w22_f16_rbus_i | mem_wdata_i[17:16] : 2'h0;
  assign w22_f20_wbus_s = bus_w22_wren_s ? regf_w22_f20_rbus_i | mem_wdata_i[21:20] : 2'h0;
  assign w22_f24_wbus_s = bus_w22_wren_s ? regf_w22_f24_rbus_i | mem_wdata_i[25:24] : 2'h0;
  assign w22_f28_wbus_s = bus_w22_wren_s ? regf_w22_f28_rbus_i | mem_wdata_i[29:28] : 2'h0;
  assign w23_f0_wbus_s  = bus_w23_wren_s ? regf_w23_f0_rbus_i | mem_wdata_i[1:0] : 2'h0;
  assign w23_f4_wbus_s  = bus_w23_wren_s ? regf_w23_f4_rbus_i | mem_wdata_i[5:4] : 2'h0;
  assign w23_f8_wbus_s  = bus_w23_wren_s ? regf_w23_f8_rbus_i | mem_wdata_i[9:8] : 2'h0;
  assign w23_f12_wbus_s = bus_w23_wren_s ? regf_w23_f12_rbus_i | mem_wdata_i[13:12] : 2'h0;
  assign w23_f16_wbus_s = bus_w23_wren_s ? regf_w23_f16_rbus_i | mem_wdata_i[17:16] : 2'h0;
  assign w23_f20_wbus_s = bus_w23_wren_s ? regf_w23_f20_rbus_i | mem_wdata_i[21:20] : 2'h0;
  assign w23_f24_wbus_s = bus_w23_wren_s ? regf_w23_f24_rbus_i | mem_wdata_i[25:24] : 2'h0;
  assign w23_f28_wbus_s = bus_w23_wren_s ? regf_w23_f28_rbus_i | mem_wdata_i[29:28] : 2'h0;
  assign w24_f0_wbus_s  = bus_w24_wren_s ? regf_w24_f0_rbus_i | mem_wdata_i[1:0] : 2'h0;
  assign w24_f4_wbus_s  = bus_w24_wren_s ? regf_w24_f4_rbus_i | mem_wdata_i[5:4] : 2'h0;
  assign w24_f8_wbus_s  = bus_w24_wren_s ? regf_w24_f8_rbus_i | mem_wdata_i[9:8] : 2'h0;
  assign w24_f12_wbus_s = bus_w24_wren_s ? regf_w24_f12_rbus_i | mem_wdata_i[13:12] : 2'h0;
  assign w24_f16_wbus_s = bus_w24_wren_s ? regf_w24_f16_rbus_i | mem_wdata_i[17:16] : 2'h0;
  assign w24_f20_wbus_s = bus_w24_flg0_wren_s ? mem_wdata_i[21:20] : 2'h0;
  assign w24_f24_wbus_s = bus_w24_flg0_wren_s ? mem_wdata_i[25:24] : 2'h0;
  assign w24_f28_wbus_s = bus_w24_flg0_wren_s ? mem_wdata_i[29:28] : 2'h0;
  assign w25_f0_wbus_s  = bus_w25_flg0_wren_s ? mem_wdata_i[1:0] : 2'h0;
  assign w25_f4_wbus_s  = bus_w25_flg0_wren_s ? mem_wdata_i[5:4] : 2'h0;
  assign w25_f8_wbus_s  = bus_w25_flg0_wren_s ? mem_wdata_i[9:8] : 2'h0;
  assign w25_f12_wbus_s = bus_w25_flg0_wren_s ? mem_wdata_i[13:12] : 2'h0;
  assign w25_f16_wbus_s = bus_w25_flg0_wren_s ? mem_wdata_i[17:16] : 2'h0;
  assign w25_f20_wbus_s = bus_w25_flg0_wren_s ? mem_wdata_i[21:20] : 2'h0;
  assign w25_f24_wbus_s = bus_w25_flg0_wren_s ? mem_wdata_i[25:24] : 2'h0;
  assign w25_f28_wbus_s = bus_w25_flg0_wren_s ? mem_wdata_i[29:28] : 2'h0;
  assign w26_f0_wbus_s  = bus_w26_flg0_wren_s ? mem_wdata_i[1:0] : 2'h0;
  assign w26_f4_wbus_s  = bus_w26_flg0_wren_s ? mem_wdata_i[5:4] : 2'h0;
  assign w26_f8_wbus_s  = bus_w26_flg0_wren_s ? mem_wdata_i[9:8] : 2'h0;
  assign w26_f12_wbus_s = bus_w26_flg0_wren_s ? mem_wdata_i[13:12] : 2'h0;
  assign w26_f16_wbus_s = bus_w26_flg0_wren_s ? mem_wdata_i[17:16] : 2'h0;
  assign w26_f20_wbus_s = bus_w26_flg0_wren_s ? mem_wdata_i[21:20] : 2'h0;
  assign w26_f24_wbus_s = bus_w26_flg0_wren_s ? mem_wdata_i[25:24] : 2'h0;
  assign w26_f28_wbus_s = bus_w26_wren_s ? regf_w26_f28_rbus_i & mem_wdata_i[29:28] : 2'h0;
  assign w27_f0_wbus_s  = bus_w27_wren_s ? regf_w27_f0_rbus_i & mem_wdata_i[1:0] : 2'h0;
  assign w27_f4_wbus_s  = bus_w27_wren_s ? regf_w27_f4_rbus_i & mem_wdata_i[5:4] : 2'h0;
  assign w27_f8_wbus_s  = bus_w27_wren_s ? regf_w27_f8_rbus_i & mem_wdata_i[9:8] : 2'h0;
  assign w27_f12_wbus_s = bus_w27_wren_s ? regf_w27_f12_rbus_i & mem_wdata_i[13:12] : 2'h0;
  assign w27_f16_wbus_s = bus_w27_wren_s ? regf_w27_f16_rbus_i & mem_wdata_i[17:16] : 2'h0;
  assign w27_f20_wbus_s = bus_w27_wren_s ? regf_w27_f20_rbus_i & mem_wdata_i[21:20] : 2'h0;
  assign w27_f24_wbus_s = bus_w27_wren_s ? regf_w27_f24_rbus_i & mem_wdata_i[25:24] : 2'h0;
  assign w27_f28_wbus_s = bus_w27_wren_s ? regf_w27_f28_rbus_i & mem_wdata_i[29:28] : 2'h0;
  assign w28_f0_wbus_s  = bus_w28_wren_s ? regf_w28_f0_rbus_i & mem_wdata_i[1:0] : 2'h0;
  assign w28_f4_wbus_s  = bus_w28_wren_s ? regf_w28_f4_rbus_i & mem_wdata_i[5:4] : 2'h0;
  assign w28_f8_wbus_s  = bus_w28_wren_s ? regf_w28_f8_rbus_i | ~mem_wdata_i[9:8] : 2'h0;
  assign w28_f12_wbus_s = bus_w28_wren_s ? regf_w28_f12_rbus_i | ~mem_wdata_i[13:12] : 2'h0;
  assign w28_f16_wbus_s = bus_w28_wren_s ? regf_w28_f16_rbus_i | ~mem_wdata_i[17:16] : 2'h0;
  assign w28_f20_wbus_s = bus_w28_wren_s ? regf_w28_f20_rbus_i | ~mem_wdata_i[21:20] : 2'h0;
  assign w28_f24_wbus_s = bus_w28_wren_s ? regf_w28_f24_rbus_i | ~mem_wdata_i[25:24] : 2'h0;
  assign w28_f28_wbus_s = bus_w28_wren_s ? regf_w28_f28_rbus_i | ~mem_wdata_i[29:28] : 2'h0;
  assign w29_f0_wbus_s  = bus_w29_wren_s ? regf_w29_f0_rbus_i | ~mem_wdata_i[1:0] : 2'h0;
  assign w29_f4_wbus_s  = bus_w29_wren_s ? regf_w29_f4_rbus_i | ~mem_wdata_i[5:4] : 2'h0;
  assign w29_f8_wbus_s  = bus_w29_wren_s ? regf_w29_f8_rbus_i | ~mem_wdata_i[9:8] : 2'h0;
  assign w29_f12_wbus_s = bus_w29_wren_s ? regf_w29_f12_rbus_i | ~mem_wdata_i[13:12] : 2'h0;
  assign w29_f16_wbus_s = bus_w29_wren_s ? regf_w29_f16_rbus_i | ~mem_wdata_i[17:16] : 2'h0;
  assign w29_f20_wbus_s = bus_w29_wren_s ? regf_w29_f20_rbus_i & ~mem_wdata_i[21:20] : 2'h0;
  assign w29_f24_wbus_s = bus_w29_wren_s ? regf_w29_f24_rbus_i & ~mem_wdata_i[25:24] : 2'h0;
  assign w29_f28_wbus_s = bus_w29_wren_s ? regf_w29_f28_rbus_i & ~mem_wdata_i[29:28] : 2'h0;
  assign w30_f0_wbus_s  = bus_w30_wren_s ? regf_w30_f0_rbus_i & ~mem_wdata_i[1:0] : 2'h0;
  assign w30_f4_wbus_s  = bus_w30_wren_s ? regf_w30_f4_rbus_i & ~mem_wdata_i[5:4] : 2'h0;
  assign w30_f8_wbus_s  = bus_w30_wren_s ? regf_w30_f8_rbus_i & ~mem_wdata_i[9:8] : 2'h0;
  assign w30_f12_wbus_s = bus_w30_wren_s ? regf_w30_f12_rbus_i & ~mem_wdata_i[13:12] : 2'h0;
  assign w30_f16_wbus_s = bus_w30_wren_s ? regf_w30_f16_rbus_i & ~mem_wdata_i[17:16] : 2'h0;
  assign w30_f20_wbus_s = bus_w30_wren_s ? regf_w30_f20_rbus_i & ~mem_wdata_i[21:20] : 2'h0;
  assign w30_f24_wbus_s = bus_w30_wren_s ? regf_w30_f24_rbus_i & ~mem_wdata_i[25:24] : 2'h0;
  assign w30_f28_wbus_s = bus_w30_wren_s ? regf_w30_f28_rbus_i & ~mem_wdata_i[29:28] : 2'h0;
  assign w31_f0_wbus_s  = bus_w31_wren_s ? regf_w31_f0_rbus_i | mem_wdata_i[1:0] : 2'h0;
  assign w31_f4_wbus_s  = bus_w31_wren_s ? regf_w31_f4_rbus_i | mem_wdata_i[5:4] : 2'h0;
  assign w31_f8_wbus_s  = bus_w31_wren_s ? regf_w31_f8_rbus_i | mem_wdata_i[9:8] : 2'h0;
  assign w31_f12_wbus_s = bus_w31_wren_s ? regf_w31_f12_rbus_i | mem_wdata_i[13:12] : 2'h0;
  assign w31_f16_wbus_s = bus_w31_wren_s ? regf_w31_f16_rbus_i | mem_wdata_i[17:16] : 2'h0;
  assign w31_f20_wbus_s = bus_w31_wren_s ? regf_w31_f20_rbus_i | mem_wdata_i[21:20] : 2'h0;
  assign w31_f24_wbus_s = bus_w31_wren_s ? regf_w31_f24_rbus_i | mem_wdata_i[25:24] : 2'h0;
  assign w31_f28_wbus_s = bus_w31_wren_s ? regf_w31_f28_rbus_i | mem_wdata_i[29:28] : 2'h0;
  assign w32_f0_wbus_s  = bus_w32_wren_s ? regf_w32_f0_rbus_i | mem_wdata_i[1:0] : 2'h0;
  assign w32_f4_wbus_s  = bus_w32_wren_s ? regf_w32_f4_rbus_i | mem_wdata_i[5:4] : 2'h0;
  assign w32_f8_wbus_s  = bus_w32_wren_s ? regf_w32_f8_rbus_i | mem_wdata_i[9:8] : 2'h0;
  assign w32_f12_wbus_s = bus_w32_flg0_wren_s ? mem_wdata_i[13:12] : 2'h0;
  assign w32_f16_wbus_s = bus_w32_flg0_wren_s ? mem_wdata_i[17:16] : 2'h0;
  assign w32_f20_wbus_s = bus_w32_flg0_wren_s ? mem_wdata_i[21:20] : 2'h0;
  assign w32_f24_wbus_s = bus_w32_flg0_wren_s ? mem_wdata_i[25:24] : 2'h0;
  assign w32_f28_wbus_s = bus_w32_flg0_wren_s ? mem_wdata_i[29:28] : 2'h0;
  assign w33_f0_wbus_s  = bus_w33_flg0_wren_s ? mem_wdata_i[1:0] : 2'h0;
  assign w33_f4_wbus_s  = bus_w33_flg0_wren_s ? mem_wdata_i[5:4] : 2'h0;
  assign w33_f8_wbus_s  = bus_w33_flg0_wren_s ? mem_wdata_i[9:8] : 2'h0;
  assign w33_f12_wbus_s = bus_w33_flg0_wren_s ? mem_wdata_i[13:12] : 2'h0;
  assign w33_f16_wbus_s = bus_w33_flg0_wren_s ? mem_wdata_i[17:16] : 2'h0;
  assign w33_f20_wbus_s = bus_w33_flg0_wren_s ? mem_wdata_i[21:20] : 2'h0;
  assign w33_f24_wbus_s = bus_w33_wren_s ? mem_wdata_i[25:24] : 2'h0;
  assign w33_f28_wbus_s = bus_w33_wren_s ? mem_wdata_i[29:28] : 2'h0;
  assign w34_f0_wbus_s  = bus_w34_wren_s ? mem_wdata_i[1:0] : 2'h0;
  assign w34_f4_wbus_s  = bus_w34_wren_s ? mem_wdata_i[5:4] : 2'h0;
  assign w34_f8_wbus_s  = bus_w34_wren_s ? mem_wdata_i[9:8] : 2'h0;
  assign w34_f12_wbus_s = bus_w34_wren_s ? mem_wdata_i[13:12] : 2'h0;
  assign w34_f16_wbus_s = bus_w34_wren_s ? mem_wdata_i[17:16] : 2'h0;
  assign w34_f20_wbus_s = bus_w34_wren_s ? mem_wdata_i[21:20] : 2'h0;
  assign w34_f24_wbus_s = bus_w34_wren_s ? mem_wdata_i[25:24] : 2'h0;
  assign w34_f28_wbus_s = bus_w34_wren_s ? mem_wdata_i[29:28] : 2'h0;
  assign w35_f0_wbus_s  = bus_w35_wren_s ? mem_wdata_i[1:0] : 2'h0;

  // ------------------------------------------------------
  //  Bus Read-Mux
  // ------------------------------------------------------
  always_comb begin: proc_bus_rd
    if ((mem_ena_i == 1'b1) && (mem_wena_i == 1'b0)) begin
      case (mem_addr_i)
        10'h002: begin
          mem_rdata_o = {data_w2_f30_r, regf_w2_f28_rbus_i, data_w2_f26_r, regf_w2_f24_rbus_i, data_w2_f22_r, regf_w2_f20_rbus_i, data_w2_f18_r, regf_w2_f16_rbus_i, 16'h0000};
        end
        10'h003: begin
          mem_rdata_o = {data_w3_f30_r, regf_w3_f28_rbus_i, data_w3_f26_r, regf_w3_f24_rbus_i, data_w3_f22_r, regf_w3_f20_rbus_i, data_w3_f18_r, regf_w3_f16_rbus_i, data_w3_f14_r, regf_w3_f12_rbus_i, data_w3_f10_r, regf_w3_f8_rbus_i, data_w3_f6_r, regf_w3_f4_rbus_i, data_w3_f2_r, regf_w3_f0_rbus_i};
        end
        10'h004: begin
          mem_rdata_o = {data_w4_f30_c, data_w4_f28_r, regf_w4_f26_rbus_i, data_w4_f24_c, data_w4_f22_r, regf_w4_f20_rbus_i, data_w4_f18_r, regf_w4_f16_rbus_i, data_w4_f14_r, regf_w4_f12_rbus_i, data_w4_f10_r, regf_w4_f8_rbus_i, data_w4_f6_r, regf_w4_f4_rbus_i, data_w4_f2_r, regf_w4_f0_rbus_i};
        end
        10'h005: begin
          mem_rdata_o = {regf_w5_f30_rbus_i, data_w5_f28_r, regf_w5_f26_rbus_i, data_w5_f24_r, regf_w5_f22_rbus_i, data_w5_f20_r, regf_w5_f18_rbus_i, data_w5_f16_r, regf_w5_f14_rbus_i, data_w5_f12_r, regf_w5_f10_rbus_i, data_w5_f8_r, regf_w5_f6_rbus_i, data_w5_f4_r, regf_w5_f2_rbus_i, data_w5_f0_c};
        end
        10'h006: begin
          mem_rdata_o = {data_w6_f30_r, regf_w6_f28_rbus_i, data_w6_f26_c, data_w6_f24_r, regf_w6_f22_rbus_i, data_w6_f20_r, regf_w6_f18_rbus_i, data_w6_f16_r, regf_w6_f14_rbus_i, data_w6_f12_r, regf_w6_f10_rbus_i, data_w6_f8_r, regf_w6_f6_rbus_i, data_w6_f4_r, regf_w6_f2_rbus_i, data_w6_f0_r};
        end
        10'h007: begin
          mem_rdata_o = {data_w7_f30_r, regf_w7_f28_rbus_i, data_w7_f26_r, regf_w7_f24_rbus_i, data_w7_f22_r, regf_w7_f20_rbus_i, data_w7_f18_r, regf_w7_f16_rbus_i, data_w7_f14_r, regf_w7_f12_rbus_i, data_w7_f10_r, regf_w7_f8_rbus_i, data_w7_f6_r, regf_w7_f4_rbus_i, data_w7_f2_c, data_w7_f0_c};
        end
        10'h008: begin
          mem_rdata_o = {data_w8_f30_r, regf_w8_f28_rbus_i, data_w8_f26_r, regf_w8_f24_rbus_i, data_w8_f22_r, regf_w8_f20_rbus_i, data_w8_f18_r, regf_w8_f16_rbus_i, data_w8_f14_r, regf_w8_f12_rbus_i, data_w8_f10_r, regf_w8_f8_rbus_i, data_w8_f6_r, regf_w8_f4_rbus_i, data_w8_f2_r, regf_w8_f0_rbus_i};
        end
        10'h009: begin
          mem_rdata_o = {data_w9_f30_r, regf_w9_f28_rbus_i, data_w9_f26_r, regf_w9_f24_rbus_i, data_w9_f22_r, regf_w9_f20_rbus_i, data_w9_f18_r, regf_w9_f16_rbus_i, data_w9_f14_r, regf_w9_f12_rbus_i, data_w9_f10_r, regf_w9_f8_rbus_i, data_w9_f6_r, regf_w9_f4_rbus_i, data_w9_f2_r, regf_w9_f0_rbus_i};
        end
        10'h00A: begin
          mem_rdata_o = {data_w10_f30_r, regf_w10_f28_rbus_i, data_w10_f26_r, regf_w10_f24_rbus_i, data_w10_f22_r, regf_w10_f20_rbus_i, data_w10_f18_r, regf_w10_f16_rbus_i, data_w10_f14_r, regf_w10_f12_rbus_i, data_w10_f10_r, regf_w10_f8_rbus_i, data_w10_f6_r, regf_w10_f4_rbus_i, data_w10_f2_r, regf_w10_f0_rbus_i};
        end
        10'h00B: begin
          mem_rdata_o = {data_w11_f30_r, regf_w11_f28_rbus_i, data_w11_f26_r, regf_w11_f24_rbus_i, data_w11_f22_r, regf_w11_f20_rbus_i, data_w11_f18_r, regf_w11_f16_rbus_i, data_w11_f14_r, regf_w11_f12_rbus_i, data_w11_f10_r, regf_w11_f8_rbus_i, data_w11_f6_r, regf_w11_f4_rbus_i, data_w11_f2_r, regf_w11_f0_rbus_i};
        end
        10'h00C: begin
          mem_rdata_o = {data_w12_f30_r, regf_w12_f28_rbus_i, data_w12_f26_r, regf_w12_f24_rbus_i, data_w12_f22_r, regf_w12_f20_rbus_i, data_w12_f18_r, regf_w12_f16_rbus_i, data_w12_f14_r, regf_w12_f12_rbus_i, data_w12_f10_r, regf_w12_f8_rbus_i, data_w12_f6_r, regf_w12_f4_rbus_i, data_w12_f2_r, regf_w12_f0_rbus_i};
        end
        10'h00D: begin
          mem_rdata_o = {data_w13_f30_r, regf_w13_f28_rbus_i, data_w13_f26_r, regf_w13_f24_rbus_i, data_w13_f22_r, regf_w13_f20_rbus_i, data_w13_f18_r, regf_w13_f16_rbus_i, data_w13_f14_r, regf_w13_f12_rbus_i, data_w13_f10_r, regf_w13_f8_rbus_i, data_w13_f6_r, regf_w13_f4_rbus_i, data_w13_f2_r, regf_w13_f0_rbus_i};
        end
        10'h00E: begin
          mem_rdata_o = {data_w14_f30_r, regf_w14_f28_rbus_i, data_w14_f26_r, regf_w14_f24_rbus_i, data_w14_f22_r, regf_w14_f20_rbus_i, data_w14_f18_r, regf_w14_f16_rbus_i, data_w14_f14_r, regf_w14_f12_rbus_i, data_w14_f10_r, regf_w14_f8_rbus_i, data_w14_f6_r, regf_w14_f4_rbus_i, data_w14_f2_r, regf_w14_f0_rbus_i};
        end
        10'h00F: begin
          mem_rdata_o = {data_w15_f30_r, regf_w15_f28_rbus_i, data_w15_f26_r, regf_w15_f24_rbus_i, data_w15_f22_r, regf_w15_f20_rbus_i, data_w15_f18_r, regf_w15_f16_rbus_i, data_w15_f14_r, regf_w15_f12_rbus_i, data_w15_f10_r, regf_w15_f8_rbus_i, data_w15_f6_r, regf_w15_f4_rbus_i, data_w15_f2_r, regf_w15_f0_rbus_i};
        end
        10'h010: begin
          mem_rdata_o = {data_w16_f30_r, regf_w16_f28_rbus_i, data_w16_f26_r, regf_w16_f24_rbus_i, data_w16_f22_r, regf_w16_f20_rbus_i, data_w16_f18_r, regf_w16_f16_rbus_i, data_w16_f14_r, regf_w16_f12_rbus_i, data_w16_f10_r, regf_w16_f8_rbus_i, data_w16_f6_r, regf_w16_f4_rbus_i, data_w16_f2_r, regf_w16_f0_rbus_i};
        end
        10'h011: begin
          mem_rdata_o = {data_w17_f30_r, regf_w17_f28_rbus_i, data_w17_f26_r, regf_w17_f24_rbus_i, data_w17_f22_r, regf_w17_f20_rbus_i, data_w17_f18_r, regf_w17_f16_rbus_i, data_w17_f14_r, regf_w17_f12_rbus_i, data_w17_f10_r, regf_w17_f8_rbus_i, data_w17_f6_r, regf_w17_f4_rbus_i, data_w17_f2_r, regf_w17_f0_rbus_i};
        end
        10'h012: begin
          mem_rdata_o = {data_w18_f30_r, regf_w18_f28_rbus_i, data_w18_f26_r, regf_w18_f24_rbus_i, data_w18_f22_r, regf_w18_f20_rbus_i, data_w18_f18_r, regf_w18_f16_rbus_i, data_w18_f14_r, regf_w18_f12_rbus_i, data_w18_f10_r, regf_w18_f8_rbus_i, data_w18_f6_r, regf_w18_f4_rbus_i, data_w18_f2_r, regf_w18_f0_rbus_i};
        end
        10'h013: begin
          mem_rdata_o = {data_w19_f30_r, regf_w19_f28_rbus_i, data_w19_f26_r, regf_w19_f24_rbus_i, data_w19_f22_r, regf_w19_f20_rbus_i, data_w19_f18_r, regf_w19_f16_rbus_i, data_w19_f14_r, regf_w19_f12_rbus_i, data_w19_f10_r, regf_w19_f8_rbus_i, data_w19_f6_r, regf_w19_f4_rbus_i, data_w19_f2_r, regf_w19_f0_rbus_i};
        end
        10'h014: begin
          mem_rdata_o = {data_w20_f30_r, regf_w20_f28_rbus_i, data_w20_f26_r, regf_w20_f24_rbus_i, data_w20_f22_r, regf_w20_f20_rbus_i, data_w20_f18_r, regf_w20_f16_rbus_i, data_w20_f14_r, regf_w20_f12_rbus_i, data_w20_f10_r, regf_w20_f8_rbus_i, data_w20_f6_r, regf_w20_f4_rbus_i, data_w20_f2_r, regf_w20_f0_rbus_i};
        end
        10'h015: begin
          mem_rdata_o = {data_w21_f30_r, regf_w21_f28_rbus_i, data_w21_f26_r, regf_w21_f24_rbus_i, data_w21_f22_r, regf_w21_f20_rbus_i, data_w21_f18_r, regf_w21_f16_rbus_i, data_w21_f14_r, regf_w21_f12_rbus_i, data_w21_f10_r, regf_w21_f8_rbus_i, data_w21_f6_r, regf_w21_f4_rbus_i, data_w21_f2_r, regf_w21_f0_rbus_i};
        end
        10'h016: begin
          mem_rdata_o = {data_w22_f30_r, regf_w22_f28_rbus_i, data_w22_f26_r, regf_w22_f24_rbus_i, data_w22_f22_r, regf_w22_f20_rbus_i, data_w22_f18_r, regf_w22_f16_rbus_i, data_w22_f14_r, regf_w22_f12_rbus_i, data_w22_f10_r, regf_w22_f8_rbus_i, data_w22_f6_r, regf_w22_f4_rbus_i, data_w22_f2_r, regf_w22_f0_rbus_i};
        end
        10'h017: begin
          mem_rdata_o = {data_w23_f30_r, regf_w23_f28_rbus_i, data_w23_f26_r, regf_w23_f24_rbus_i, data_w23_f22_r, regf_w23_f20_rbus_i, data_w23_f18_r, regf_w23_f16_rbus_i, data_w23_f14_r, regf_w23_f12_rbus_i, data_w23_f10_r, regf_w23_f8_rbus_i, data_w23_f6_r, regf_w23_f4_rbus_i, data_w23_f2_r, regf_w23_f0_rbus_i};
        end
        10'h018: begin
          mem_rdata_o = {data_w24_f30_r, regf_w24_f28_rbus_i, data_w24_f26_r, regf_w24_f24_rbus_i, data_w24_f22_r, regf_w24_f20_rbus_i, data_w24_f18_r, regf_w24_f16_rbus_i, data_w24_f14_r, regf_w24_f12_rbus_i, data_w24_f10_r, regf_w24_f8_rbus_i, data_w24_f6_r, regf_w24_f4_rbus_i, data_w24_f2_r, regf_w24_f0_rbus_i};
        end
        10'h019: begin
          mem_rdata_o = {data_w25_f30_r, regf_w25_f28_rbus_i, data_w25_f26_r, regf_w25_f24_rbus_i, data_w25_f22_r, regf_w25_f20_rbus_i, data_w25_f18_r, regf_w25_f16_rbus_i, data_w25_f14_r, regf_w25_f12_rbus_i, data_w25_f10_r, regf_w25_f8_rbus_i, data_w25_f6_r, regf_w25_f4_rbus_i, data_w25_f2_r, regf_w25_f0_rbus_i};
        end
        10'h01A: begin
          mem_rdata_o = {4'h0, data_w26_f26_r, regf_w26_f24_rbus_i, data_w26_f22_r, regf_w26_f20_rbus_i, data_w26_f18_r, regf_w26_f16_rbus_i, data_w26_f14_r, regf_w26_f12_rbus_i, data_w26_f10_r, regf_w26_f8_rbus_i, data_w26_f6_r, regf_w26_f4_rbus_i, data_w26_f2_r, regf_w26_f0_rbus_i};
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
  assign regf_w0_f2_rval_o   = data_w0_f2_r;
  assign regf_w0_f4_rval_o   = data_w0_f4_c;
  assign regf_w0_f6_rval_o   = data_w0_f6_c;
  assign regf_w0_f10_rval_o  = data_w0_f10_r;
  assign regf_w0_f14_rval_o  = data_w0_f14_r;
  assign regf_w0_f18_rval_o  = data_w0_f18_r;
  assign regf_w0_f22_rval_o  = data_w0_f22_r;
  assign regf_w0_f26_rval_o  = data_w0_f26_r;
  assign regf_w0_f30_rval_o  = data_w0_f30_r;
  assign regf_w1_f2_rval_o   = data_w1_f2_r;
  assign regf_w1_f6_rval_o   = data_w1_f6_r;
  assign regf_w1_f10_rval_o  = data_w1_f10_r;
  assign regf_w1_f12_rval_o  = data_w1_f12_c;
  assign regf_w1_f14_rval_o  = data_w1_f14_c;
  assign regf_w1_f18_rval_o  = data_w1_f18_r;
  assign regf_w1_f22_rval_o  = data_w1_f22_r;
  assign regf_w1_f26_rval_o  = data_w1_f26_r;
  assign regf_w1_f30_rval_o  = data_w1_f30_r;
  assign regf_w2_f2_rval_o   = data_w2_f2_r;
  assign regf_w2_f6_rval_o   = data_w2_f6_r;
  assign regf_w2_f10_rval_o  = data_w2_f10_r;
  assign regf_w2_f14_rval_o  = data_w2_f14_r;
  assign regf_w2_f16_rd_o    = bus_w2_rden_s;
  assign regf_w2_f20_rd_o    = bus_w2_rden_s;
  assign regf_w2_f22_rval_o  = data_w2_f22_r;
  assign regf_w2_f24_rd_o    = bus_w2_rden_s;
  assign regf_w2_f26_rval_o  = data_w2_f26_r;
  assign regf_w2_f28_rd_o    = bus_w2_rden_s;
  assign regf_w2_f30_rval_o  = data_w2_f30_r;
  assign regf_w3_f0_rd_o     = bus_w3_rden_s;
  assign regf_w3_f2_rval_o   = data_w3_f2_r;
  assign regf_w3_f4_rd_o     = bus_w3_rden_s;
  assign regf_w3_f6_rval_o   = data_w3_f6_r;
  assign regf_w3_f8_rd_o     = bus_w3_rden_s;
  assign regf_w3_f10_rval_o  = data_w3_f10_r;
  assign regf_w3_f12_rd_o    = bus_w3_rden_s;
  assign regf_w3_f14_rval_o  = data_w3_f14_r;
  assign regf_w3_f16_rd_o    = bus_w3_rden_s;
  assign regf_w3_f18_rval_o  = data_w3_f18_r;
  assign regf_w3_f20_rd_o    = bus_w3_rden_s;
  assign regf_w3_f22_rval_o  = data_w3_f22_r;
  assign regf_w3_f24_rd_o    = bus_w3_rden_s;
  assign regf_w3_f26_rval_o  = data_w3_f26_r;
  assign regf_w3_f28_rd_o    = bus_w3_rden_s;
  assign regf_w3_f30_rval_o  = data_w3_f30_r;
  assign regf_w4_f0_rd_o     = bus_w4_rden_s;
  assign regf_w4_f4_rd_o     = bus_w4_rden_s;
  assign regf_w4_f8_rd_o     = bus_w4_rden_s;
  assign regf_w4_f12_rd_o    = bus_w4_rden_s;
  assign regf_w4_f16_rd_o    = bus_w4_rden_s;
  assign regf_w4_f20_rd_o    = bus_w4_rden_s;
  assign regf_w4_f28_rval_o  = data_w4_f28_r;
  assign regf_w4_f30_rval_o  = data_w4_f30_c;
  assign regf_w5_f0_rval_o   = data_w5_f0_c;
  assign regf_w5_f4_rval_o   = data_w5_f4_r;
  assign regf_w5_f8_rval_o   = data_w5_f8_r;
  assign regf_w5_f12_rval_o  = data_w5_f12_r;
  assign regf_w5_f16_rval_o  = data_w5_f16_r;
  assign regf_w5_f20_rval_o  = data_w5_f20_r;
  assign regf_w5_f24_rval_o  = data_w5_f24_r;
  assign regf_w5_f28_rval_o  = data_w5_f28_r;
  assign regf_w6_f0_rval_o   = data_w6_f0_r;
  assign regf_w6_f30_rval_o  = data_w6_f30_r;
  assign regf_w7_f0_rval_o   = data_w7_f0_c;
  assign regf_w7_f2_rval_o   = data_w7_f2_c;
  assign regf_w7_f6_rval_o   = data_w7_f6_r;
  assign regf_w7_f10_rval_o  = data_w7_f10_r;
  assign regf_w7_f14_rval_o  = data_w7_f14_r;
  assign regf_w7_f18_rval_o  = data_w7_f18_r;
  assign regf_w7_f22_rval_o  = data_w7_f22_r;
  assign regf_w7_f26_rval_o  = data_w7_f26_r;
  assign regf_w7_f30_rval_o  = data_w7_f30_r;
  assign regf_w8_f2_rval_o   = data_w8_f2_r;
  assign regf_w8_f28_rd_o    = bus_w8_rden_s;
  assign regf_w9_f0_rd_o     = bus_w9_rden_s;
  assign regf_w9_f2_rval_o   = data_w9_f2_r;
  assign regf_w9_f4_rd_o     = bus_w9_rden_s;
  assign regf_w9_f6_rval_o   = data_w9_f6_r;
  assign regf_w9_f8_rd_o     = bus_w9_rden_s;
  assign regf_w9_f10_rval_o  = data_w9_f10_r;
  assign regf_w9_f12_rd_o    = bus_w9_rden_s;
  assign regf_w9_f14_rval_o  = data_w9_f14_r;
  assign regf_w9_f16_rd_o    = bus_w9_rden_s;
  assign regf_w9_f18_rval_o  = data_w9_f18_r;
  assign regf_w9_f20_rd_o    = bus_w9_rden_s;
  assign regf_w9_f22_rval_o  = data_w9_f22_r;
  assign regf_w9_f24_rd_o    = bus_w9_rden_s;
  assign regf_w9_f26_rval_o  = data_w9_f26_r;
  assign regf_w9_f28_rd_o    = bus_w9_rden_s;
  assign regf_w9_f30_rval_o  = data_w9_f30_r;
  assign regf_w10_f0_rd_o    = bus_w10_rden_s;
  assign regf_w10_f2_rval_o  = data_w10_f2_r;
  assign regf_w10_f4_rd_o    = bus_w10_rden_s;
  assign regf_w10_f6_rval_o  = data_w10_f6_r;
  assign regf_w10_f8_rd_o    = bus_w10_rden_s;
  assign regf_w10_f10_rval_o = data_w10_f10_r;
  assign regf_w10_f12_rd_o   = bus_w10_rden_s;
  assign regf_w10_f16_rd_o   = bus_w10_rden_s;
  assign regf_w10_f20_rd_o   = bus_w10_rden_s;
  assign regf_w10_f24_rd_o   = bus_w10_rden_s;
  assign regf_w10_f28_rd_o   = bus_w10_rden_s;
  assign regf_w11_f0_rd_o    = bus_w11_rden_s;
  assign regf_w11_f4_rd_o    = bus_w11_rden_s;
  assign regf_w11_f8_rd_o    = bus_w11_rden_s;
  assign regf_w11_f10_rval_o = data_w11_f10_r;
  assign regf_w11_f12_rd_o   = bus_w11_rden_s;
  assign regf_w11_f14_rval_o = data_w11_f14_r;
  assign regf_w11_f16_rd_o   = bus_w11_rden_s;
  assign regf_w11_f18_rval_o = data_w11_f18_r;
  assign regf_w11_f20_rd_o   = bus_w11_rden_s;
  assign regf_w11_f22_rval_o = data_w11_f22_r;
  assign regf_w11_f24_rd_o   = bus_w11_rden_s;
  assign regf_w11_f26_rval_o = data_w11_f26_r;
  assign regf_w11_f28_rd_o   = bus_w11_rden_s;
  assign regf_w11_f30_rval_o = data_w11_f30_r;
  assign regf_w12_f0_rd_o    = bus_w12_rden_s;
  assign regf_w12_f2_rval_o  = data_w12_f2_r;
  assign regf_w12_f4_rd_o    = bus_w12_rden_s;
  assign regf_w12_f6_rval_o  = data_w12_f6_r;
  assign regf_w12_f8_rd_o    = bus_w12_rden_s;
  assign regf_w12_f10_rval_o = data_w12_f10_r;
  assign regf_w12_f12_rd_o   = bus_w12_rden_s;
  assign regf_w12_f14_rval_o = data_w12_f14_r;
  assign regf_w12_f16_rd_o   = bus_w12_rden_s;
  assign regf_w12_f18_rval_o = data_w12_f18_r;
  assign regf_w12_f20_rd_o   = bus_w12_rden_s;
  assign regf_w12_f24_rd_o   = bus_w12_rden_s;
  assign regf_w12_f28_rd_o   = bus_w12_rden_s;
  assign regf_w13_f0_rd_o    = bus_w13_rden_s;
  assign regf_w13_f4_rd_o    = bus_w13_rden_s;
  assign regf_w13_f8_rd_o    = bus_w13_rden_s;
  assign regf_w13_f12_wbus_o = w13_f12_wbus_s;
  assign regf_w13_f12_wr_o   = bus_w13_wren_s;
  assign regf_w13_f16_wbus_o = w13_f16_wbus_s;
  assign regf_w13_f16_wr_o   = bus_w13_wren_s;
  assign regf_w13_f18_rval_o = data_w13_f18_r;
  assign regf_w13_f20_wbus_o = w13_f20_wbus_s;
  assign regf_w13_f20_wr_o   = bus_w13_wren_s;
  assign regf_w13_f22_rval_o = data_w13_f22_r;
  assign regf_w13_f24_wbus_o = w13_f24_wbus_s;
  assign regf_w13_f24_wr_o   = bus_w13_wren_s;
  assign regf_w13_f26_rval_o = data_w13_f26_r;
  assign regf_w13_f28_wbus_o = w13_f28_wbus_s;
  assign regf_w13_f28_wr_o   = bus_w13_wren_s;
  assign regf_w13_f30_rval_o = data_w13_f30_r;
  assign regf_w14_f0_wbus_o  = w14_f0_wbus_s;
  assign regf_w14_f0_wr_o    = bus_w14_wren_s;
  assign regf_w14_f2_rval_o  = data_w14_f2_r;
  assign regf_w14_f4_wbus_o  = w14_f4_wbus_s;
  assign regf_w14_f4_wr_o    = bus_w14_wren_s;
  assign regf_w14_f6_rval_o  = data_w14_f6_r;
  assign regf_w14_f8_wbus_o  = w14_f8_wbus_s;
  assign regf_w14_f8_wr_o    = bus_w14_wren_s;
  assign regf_w14_f10_rval_o = data_w14_f10_r;
  assign regf_w14_f12_wbus_o = w14_f12_wbus_s;
  assign regf_w14_f12_wr_o   = bus_w14_wren_s;
  assign regf_w14_f14_rval_o = data_w14_f14_r;
  assign regf_w14_f16_wbus_o = w14_f16_wbus_s;
  assign regf_w14_f16_wr_o   = bus_w14_wren_s;
  assign regf_w14_f18_rval_o = data_w14_f18_r;
  assign regf_w14_f20_wbus_o = w14_f20_wbus_s;
  assign regf_w14_f20_wr_o   = bus_w14_wren_s;
  assign regf_w14_f22_rval_o = data_w14_f22_r;
  assign regf_w14_f24_wbus_o = w14_f24_wbus_s;
  assign regf_w14_f24_wr_o   = bus_w14_wren_s;
  assign regf_w14_f26_rval_o = data_w14_f26_r;
  assign regf_w14_f28_wbus_o = w14_f28_wbus_s;
  assign regf_w14_f28_wr_o   = bus_w14_wren_s;
  assign regf_w15_f0_wbus_o  = w15_f0_wbus_s;
  assign regf_w15_f0_wr_o    = bus_w15_wren_s;
  assign regf_w15_f4_wbus_o  = w15_f4_wbus_s;
  assign regf_w15_f4_wr_o    = bus_w15_wren_s;
  assign regf_w15_f8_wbus_o  = w15_f8_wbus_s;
  assign regf_w15_f8_wr_o    = bus_w15_wren_s;
  assign regf_w15_f12_wbus_o = w15_f12_wbus_s;
  assign regf_w15_f12_wr_o   = bus_w15_wren_s;
  assign regf_w15_f16_wbus_o = w15_f16_wbus_s;
  assign regf_w15_f16_wr_o   = bus_w15_wren_s;
  assign regf_w15_f20_wbus_o = w15_f20_wbus_s;
  assign regf_w15_f20_wr_o   = bus_w15_wren_s;
  assign regf_w15_f24_wbus_o = w15_f24_wbus_s;
  assign regf_w15_f24_wr_o   = bus_w15_wren_s;
  assign regf_w15_f26_rval_o = data_w15_f26_r;
  assign regf_w15_f28_wbus_o = w15_f28_wbus_s;
  assign regf_w15_f28_wr_o   = bus_w15_wren_s;
  assign regf_w15_f30_rval_o = data_w15_f30_r;
  assign regf_w16_f0_wbus_o  = w16_f0_wbus_s;
  assign regf_w16_f0_wr_o    = bus_w16_wren_s;
  assign regf_w16_f2_rval_o  = data_w16_f2_r;
  assign regf_w16_f4_wbus_o  = w16_f4_wbus_s;
  assign regf_w16_f4_wr_o    = bus_w16_wren_s;
  assign regf_w16_f6_rval_o  = data_w16_f6_r;
  assign regf_w16_f8_wbus_o  = w16_f8_wbus_s;
  assign regf_w16_f8_wr_o    = bus_w16_wren_s;
  assign regf_w16_f10_rval_o = data_w16_f10_r;
  assign regf_w16_f12_wbus_o = w16_f12_wbus_s;
  assign regf_w16_f12_wr_o   = bus_w16_wren_s;
  assign regf_w16_f14_rval_o = data_w16_f14_r;
  assign regf_w16_f16_wbus_o = w16_f16_wbus_s;
  assign regf_w16_f16_wr_o   = bus_w16_wren_s;
  assign regf_w16_f18_rval_o = data_w16_f18_r;
  assign regf_w16_f20_wbus_o = w16_f20_wbus_s;
  assign regf_w16_f20_wr_o   = bus_w16_wren_s;
  assign regf_w16_f22_rval_o = data_w16_f22_r;
  assign regf_w16_f24_wbus_o = w16_f24_wbus_s;
  assign regf_w16_f24_wr_o   = bus_w16_wren_s;
  assign regf_w16_f26_rval_o = data_w16_f26_r;
  assign regf_w16_f28_wbus_o = w16_f28_wbus_s;
  assign regf_w16_f28_wr_o   = bus_w16_wren_s;
  assign regf_w16_f30_rval_o = data_w16_f30_r;
  assign regf_w17_f0_wbus_o  = w17_f0_wbus_s;
  assign regf_w17_f0_wr_o    = bus_w17_wren_s;
  assign regf_w17_f2_rval_o  = data_w17_f2_r;
  assign regf_w17_f4_wbus_o  = w17_f4_wbus_s;
  assign regf_w17_f4_wr_o    = bus_w17_wren_s;
  assign regf_w17_f8_wbus_o  = w17_f8_wbus_s;
  assign regf_w17_f8_wr_o    = bus_w17_wren_s;
  assign regf_w17_f12_wbus_o = w17_f12_wbus_s;
  assign regf_w17_f12_wr_o   = bus_w17_wren_s;
  assign regf_w17_f16_wbus_o = w17_f16_wbus_s;
  assign regf_w17_f16_wr_o   = bus_w17_wren_s;
  assign regf_w17_f20_wbus_o = w17_f20_wbus_s;
  assign regf_w17_f20_wr_o   = bus_w17_wren_s;
  assign regf_w17_f24_wbus_o = w17_f24_wbus_s;
  assign regf_w17_f24_wr_o   = bus_w17_wren_s;
  assign regf_w17_f28_wbus_o = w17_f28_wbus_s;
  assign regf_w17_f28_wr_o   = bus_w17_wren_s;
  assign regf_w18_f0_wbus_o  = w18_f0_wbus_s;
  assign regf_w18_f0_wr_o    = bus_w18_wren_s;
  assign regf_w18_f2_rval_o  = data_w18_f2_r;
  assign regf_w18_f4_wbus_o  = w18_f4_wbus_s;
  assign regf_w18_f4_wr_o    = bus_w18_wren_s;
  assign regf_w18_f6_rval_o  = data_w18_f6_r;
  assign regf_w18_f8_wbus_o  = w18_f8_wbus_s;
  assign regf_w18_f8_wr_o    = bus_w18_wren_s;
  assign regf_w18_f10_rval_o = data_w18_f10_r;
  assign regf_w18_f12_wbus_o = w18_f12_wbus_s;
  assign regf_w18_f12_wr_o   = bus_w18_wren_s;
  assign regf_w18_f14_rval_o = data_w18_f14_r;
  assign regf_w18_f16_wbus_o = w18_f16_wbus_s;
  assign regf_w18_f16_wr_o   = bus_w18_wren_s;
  assign regf_w18_f18_rval_o = data_w18_f18_r;
  assign regf_w18_f20_wbus_o = w18_f20_wbus_s;
  assign regf_w18_f20_wr_o   = bus_w18_wren_s;
  assign regf_w18_f22_rval_o = data_w18_f22_r;
  assign regf_w18_f24_wbus_o = w18_f24_wbus_s;
  assign regf_w18_f24_wr_o   = bus_w18_wren_s;
  assign regf_w18_f26_rval_o = data_w18_f26_r;
  assign regf_w18_f28_wbus_o = w18_f28_wbus_s;
  assign regf_w18_f28_wr_o   = bus_w18_wren_s;
  assign regf_w18_f30_rval_o = data_w18_f30_r;
  assign regf_w19_f0_wbus_o  = w19_f0_wbus_s;
  assign regf_w19_f0_wr_o    = bus_w19_wren_s;
  assign regf_w19_f2_rval_o  = data_w19_f2_r;
  assign regf_w19_f4_wbus_o  = w19_f4_wbus_s;
  assign regf_w19_f4_wr_o    = bus_w19_wren_s;
  assign regf_w19_f6_rval_o  = data_w19_f6_r;
  assign regf_w19_f8_wbus_o  = w19_f8_wbus_s;
  assign regf_w19_f8_wr_o    = bus_w19_wren_s;
  assign regf_w19_f10_rval_o = data_w19_f10_r;
  assign regf_w19_f12_wbus_o = w19_f12_wbus_s;
  assign regf_w19_f12_wr_o   = bus_w19_wren_s;
  assign regf_w19_f16_wbus_o = w19_f16_wbus_s;
  assign regf_w19_f16_wr_o   = bus_w19_wren_s;
  assign regf_w19_f20_wbus_o = w19_f20_wbus_s;
  assign regf_w19_f20_wr_o   = bus_w19_wren_s;
  assign regf_w19_f24_wbus_o = w19_f24_wbus_s;
  assign regf_w19_f24_wr_o   = bus_w19_wren_s;
  assign regf_w19_f28_wbus_o = w19_f28_wbus_s;
  assign regf_w19_f28_wr_o   = bus_w19_wren_s;
  assign regf_w20_f0_wbus_o  = w20_f0_wbus_s;
  assign regf_w20_f0_wr_o    = bus_w20_wren_s;
  assign regf_w20_f4_wbus_o  = w20_f4_wbus_s;
  assign regf_w20_f4_wr_o    = bus_w20_wren_s;
  assign regf_w20_f8_wbus_o  = w20_f8_wbus_s;
  assign regf_w20_f8_wr_o    = bus_w20_wren_s;
  assign regf_w20_f10_rval_o = data_w20_f10_r;
  assign regf_w20_f12_wbus_o = w20_f12_wbus_s;
  assign regf_w20_f12_wr_o   = bus_w20_wren_s;
  assign regf_w20_f14_rval_o = data_w20_f14_r;
  assign regf_w20_f16_wbus_o = w20_f16_wbus_s;
  assign regf_w20_f16_wr_o   = bus_w20_wren_s;
  assign regf_w20_f18_rval_o = data_w20_f18_r;
  assign regf_w20_f20_wbus_o = w20_f20_wbus_s;
  assign regf_w20_f20_wr_o   = bus_w20_wren_s;
  assign regf_w20_f22_rval_o = data_w20_f22_r;
  assign regf_w20_f24_wbus_o = w20_f24_wbus_s;
  assign regf_w20_f24_wr_o   = bus_w20_wren_s;
  assign regf_w20_f26_rval_o = data_w20_f26_r;
  assign regf_w20_f28_wbus_o = w20_f28_wbus_s;
  assign regf_w20_f28_wr_o   = bus_w20_wren_s;
  assign regf_w20_f30_rval_o = data_w20_f30_r;
  assign regf_w21_f0_wbus_o  = w21_f0_wbus_s;
  assign regf_w21_f0_wr_o    = bus_w21_wren_s;
  assign regf_w21_f2_rval_o  = data_w21_f2_r;
  assign regf_w21_f4_wbus_o  = w21_f4_wbus_s;
  assign regf_w21_f4_wr_o    = bus_w21_wren_s;
  assign regf_w21_f6_rval_o  = data_w21_f6_r;
  assign regf_w21_f8_wbus_o  = w21_f8_wbus_s;
  assign regf_w21_f8_wr_o    = bus_w21_wren_s;
  assign regf_w21_f10_rval_o = data_w21_f10_r;
  assign regf_w21_f12_wbus_o = w21_f12_wbus_s;
  assign regf_w21_f12_wr_o   = bus_w21_wren_s;
  assign regf_w21_f14_rval_o = data_w21_f14_r;
  assign regf_w21_f16_wbus_o = w21_f16_wbus_s;
  assign regf_w21_f16_wr_o   = bus_w21_wren_s;
  assign regf_w21_f18_rval_o = data_w21_f18_r;
  assign regf_w21_f20_wbus_o = w21_f20_wbus_s;
  assign regf_w21_f20_wr_o   = bus_w21_wren_s;
  assign regf_w21_f24_wbus_o = w21_f24_wbus_s;
  assign regf_w21_f24_wr_o   = bus_w21_wren_s;
  assign regf_w21_f28_wbus_o = w21_f28_wbus_s;
  assign regf_w21_f28_wr_o   = bus_w21_wren_s;
  assign regf_w22_f0_wbus_o  = w22_f0_wbus_s;
  assign regf_w22_f0_wr_o    = bus_w22_wren_s;
  assign regf_w22_f4_wbus_o  = w22_f4_wbus_s;
  assign regf_w22_f4_wr_o    = bus_w22_wren_s;
  assign regf_w22_f8_wbus_o  = w22_f8_wbus_s;
  assign regf_w22_f8_wr_o    = bus_w22_wren_s;
  assign regf_w22_f12_wbus_o = w22_f12_wbus_s;
  assign regf_w22_f12_wr_o   = bus_w22_wren_s;
  assign regf_w22_f16_wbus_o = w22_f16_wbus_s;
  assign regf_w22_f16_wr_o   = bus_w22_wren_s;
  assign regf_w22_f18_rval_o = data_w22_f18_r;
  assign regf_w22_f20_wbus_o = w22_f20_wbus_s;
  assign regf_w22_f20_wr_o   = bus_w22_wren_s;
  assign regf_w22_f22_rval_o = data_w22_f22_r;
  assign regf_w22_f24_wbus_o = w22_f24_wbus_s;
  assign regf_w22_f24_wr_o   = bus_w22_wren_s;
  assign regf_w22_f26_rval_o = data_w22_f26_r;
  assign regf_w22_f28_wbus_o = w22_f28_wbus_s;
  assign regf_w22_f28_wr_o   = bus_w22_wren_s;
  assign regf_w22_f30_rval_o = data_w22_f30_r;
  assign regf_w23_f0_wbus_o  = w23_f0_wbus_s;
  assign regf_w23_f0_wr_o    = bus_w23_wren_s;
  assign regf_w23_f2_rval_o  = data_w23_f2_r;
  assign regf_w23_f4_wbus_o  = w23_f4_wbus_s;
  assign regf_w23_f4_wr_o    = bus_w23_wren_s;
  assign regf_w23_f6_rval_o  = data_w23_f6_r;
  assign regf_w23_f8_wbus_o  = w23_f8_wbus_s;
  assign regf_w23_f8_wr_o    = bus_w23_wren_s;
  assign regf_w23_f10_rval_o = data_w23_f10_r;
  assign regf_w23_f12_wbus_o = w23_f12_wbus_s;
  assign regf_w23_f12_wr_o   = bus_w23_wren_s;
  assign regf_w23_f14_rval_o = data_w23_f14_r;
  assign regf_w23_f16_wbus_o = w23_f16_wbus_s;
  assign regf_w23_f16_wr_o   = bus_w23_wren_s;
  assign regf_w23_f18_rval_o = data_w23_f18_r;
  assign regf_w23_f20_wbus_o = w23_f20_wbus_s;
  assign regf_w23_f20_wr_o   = bus_w23_wren_s;
  assign regf_w23_f22_rval_o = data_w23_f22_r;
  assign regf_w23_f24_wbus_o = w23_f24_wbus_s;
  assign regf_w23_f24_wr_o   = bus_w23_wren_s;
  assign regf_w23_f26_rval_o = data_w23_f26_r;
  assign regf_w23_f28_wbus_o = w23_f28_wbus_s;
  assign regf_w23_f28_wr_o   = bus_w23_wren_s;
  assign regf_w24_f0_wbus_o  = w24_f0_wbus_s;
  assign regf_w24_f0_wr_o    = bus_w24_wren_s;
  assign regf_w24_f4_wbus_o  = w24_f4_wbus_s;
  assign regf_w24_f4_wr_o    = bus_w24_wren_s;
  assign regf_w24_f8_wbus_o  = w24_f8_wbus_s;
  assign regf_w24_f8_wr_o    = bus_w24_wren_s;
  assign regf_w24_f12_wbus_o = w24_f12_wbus_s;
  assign regf_w24_f12_wr_o   = bus_w24_wren_s;
  assign regf_w24_f16_wbus_o = w24_f16_wbus_s;
  assign regf_w24_f16_wr_o   = bus_w24_wren_s;
  assign regf_w24_f20_wbus_o = w24_f20_wbus_s;
  assign regf_w24_f20_wr_o   = bus_w24_flg0_wren_s;
  assign regf_w24_f24_wbus_o = w24_f24_wbus_s;
  assign regf_w24_f24_wr_o   = bus_w24_flg0_wren_s;
  assign regf_w24_f26_rval_o = data_w24_f26_r;
  assign regf_w24_f28_wbus_o = w24_f28_wbus_s;
  assign regf_w24_f28_wr_o   = bus_w24_flg0_wren_s;
  assign regf_w24_f30_rval_o = data_w24_f30_r;
  assign regf_w25_f0_wbus_o  = w25_f0_wbus_s;
  assign regf_w25_f0_wr_o    = bus_w25_flg0_wren_s;
  assign regf_w25_f2_rval_o  = data_w25_f2_r;
  assign regf_w25_f4_wbus_o  = w25_f4_wbus_s;
  assign regf_w25_f4_wr_o    = bus_w25_flg0_wren_s;
  assign regf_w25_f6_rval_o  = data_w25_f6_r;
  assign regf_w25_f8_wbus_o  = w25_f8_wbus_s;
  assign regf_w25_f8_wr_o    = bus_w25_flg0_wren_s;
  assign regf_w25_f10_rval_o = data_w25_f10_r;
  assign regf_w25_f12_wbus_o = w25_f12_wbus_s;
  assign regf_w25_f12_wr_o   = bus_w25_flg0_wren_s;
  assign regf_w25_f14_rval_o = data_w25_f14_r;
  assign regf_w25_f16_wbus_o = w25_f16_wbus_s;
  assign regf_w25_f16_wr_o   = bus_w25_flg0_wren_s;
  assign regf_w25_f18_rval_o = data_w25_f18_r;
  assign regf_w25_f20_wbus_o = w25_f20_wbus_s;
  assign regf_w25_f20_wr_o   = bus_w25_flg0_wren_s;
  assign regf_w25_f22_rval_o = data_w25_f22_r;
  assign regf_w25_f24_wbus_o = w25_f24_wbus_s;
  assign regf_w25_f24_wr_o   = bus_w25_flg0_wren_s;
  assign regf_w25_f26_rval_o = data_w25_f26_r;
  assign regf_w25_f28_wbus_o = w25_f28_wbus_s;
  assign regf_w25_f28_wr_o   = bus_w25_flg0_wren_s;
  assign regf_w25_f30_rval_o = data_w25_f30_r;
  assign regf_w26_f0_wbus_o  = w26_f0_wbus_s;
  assign regf_w26_f0_wr_o    = bus_w26_flg0_wren_s;
  assign regf_w26_f2_rval_o  = data_w26_f2_r;
  assign regf_w26_f4_wbus_o  = w26_f4_wbus_s;
  assign regf_w26_f4_wr_o    = bus_w26_flg0_wren_s;
  assign regf_w26_f8_wbus_o  = w26_f8_wbus_s;
  assign regf_w26_f8_wr_o    = bus_w26_flg0_wren_s;
  assign regf_w26_f12_wbus_o = w26_f12_wbus_s;
  assign regf_w26_f12_wr_o   = bus_w26_flg0_wren_s;
  assign regf_w26_f16_wbus_o = w26_f16_wbus_s;
  assign regf_w26_f16_wr_o   = bus_w26_flg0_wren_s;
  assign regf_w26_f20_wbus_o = w26_f20_wbus_s;
  assign regf_w26_f20_wr_o   = bus_w26_flg0_wren_s;
  assign regf_w26_f24_wbus_o = w26_f24_wbus_s;
  assign regf_w26_f24_wr_o   = bus_w26_flg0_wren_s;
  assign regf_w26_f28_wbus_o = w26_f28_wbus_s;
  assign regf_w26_f28_wr_o   = bus_w26_wren_s;
  assign regf_w26_f30_rval_o = data_w26_f30_r;
  assign regf_w27_f0_wbus_o  = w27_f0_wbus_s;
  assign regf_w27_f0_wr_o    = bus_w27_wren_s;
  assign regf_w27_f2_rval_o  = data_w27_f2_r;
  assign regf_w27_f4_wbus_o  = w27_f4_wbus_s;
  assign regf_w27_f4_wr_o    = bus_w27_wren_s;
  assign regf_w27_f6_rval_o  = data_w27_f6_r;
  assign regf_w27_f8_wbus_o  = w27_f8_wbus_s;
  assign regf_w27_f8_wr_o    = bus_w27_wren_s;
  assign regf_w27_f10_rval_o = data_w27_f10_r;
  assign regf_w27_f12_wbus_o = w27_f12_wbus_s;
  assign regf_w27_f12_wr_o   = bus_w27_wren_s;
  assign regf_w27_f14_rval_o = data_w27_f14_r;
  assign regf_w27_f16_wbus_o = w27_f16_wbus_s;
  assign regf_w27_f16_wr_o   = bus_w27_wren_s;
  assign regf_w27_f18_rval_o = data_w27_f18_r;
  assign regf_w27_f20_wbus_o = w27_f20_wbus_s;
  assign regf_w27_f20_wr_o   = bus_w27_wren_s;
  assign regf_w27_f22_rval_o = data_w27_f22_r;
  assign regf_w27_f24_wbus_o = w27_f24_wbus_s;
  assign regf_w27_f24_wr_o   = bus_w27_wren_s;
  assign regf_w27_f26_rval_o = data_w27_f26_r;
  assign regf_w27_f28_wbus_o = w27_f28_wbus_s;
  assign regf_w27_f28_wr_o   = bus_w27_wren_s;
  assign regf_w27_f30_rval_o = data_w27_f30_r;
  assign regf_w28_f0_wbus_o  = w28_f0_wbus_s;
  assign regf_w28_f0_wr_o    = bus_w28_wren_s;
  assign regf_w28_f2_rval_o  = data_w28_f2_r;
  assign regf_w28_f4_wbus_o  = w28_f4_wbus_s;
  assign regf_w28_f4_wr_o    = bus_w28_wren_s;
  assign regf_w28_f6_rval_o  = data_w28_f6_r;
  assign regf_w28_f8_wbus_o  = w28_f8_wbus_s;
  assign regf_w28_f8_wr_o    = bus_w28_wren_s;
  assign regf_w28_f10_rval_o = data_w28_f10_r;
  assign regf_w28_f12_wbus_o = w28_f12_wbus_s;
  assign regf_w28_f12_wr_o   = bus_w28_wren_s;
  assign regf_w28_f14_rval_o = data_w28_f14_r;
  assign regf_w28_f16_wbus_o = w28_f16_wbus_s;
  assign regf_w28_f16_wr_o   = bus_w28_wren_s;
  assign regf_w28_f18_rval_o = data_w28_f18_r;
  assign regf_w28_f20_wbus_o = w28_f20_wbus_s;
  assign regf_w28_f20_wr_o   = bus_w28_wren_s;
  assign regf_w28_f22_rval_o = data_w28_f22_r;
  assign regf_w28_f24_wbus_o = w28_f24_wbus_s;
  assign regf_w28_f24_wr_o   = bus_w28_wren_s;
  assign regf_w28_f26_rval_o = data_w28_f26_r;
  assign regf_w28_f28_wbus_o = w28_f28_wbus_s;
  assign regf_w28_f28_wr_o   = bus_w28_wren_s;
  assign regf_w28_f30_rval_o = data_w28_f30_r;
  assign regf_w29_f0_wbus_o  = w29_f0_wbus_s;
  assign regf_w29_f0_wr_o    = bus_w29_wren_s;
  assign regf_w29_f2_rval_o  = data_w29_f2_r;
  assign regf_w29_f4_wbus_o  = w29_f4_wbus_s;
  assign regf_w29_f4_wr_o    = bus_w29_wren_s;
  assign regf_w29_f6_rval_o  = data_w29_f6_r;
  assign regf_w29_f8_wbus_o  = w29_f8_wbus_s;
  assign regf_w29_f8_wr_o    = bus_w29_wren_s;
  assign regf_w29_f10_rval_o = data_w29_f10_r;
  assign regf_w29_f12_wbus_o = w29_f12_wbus_s;
  assign regf_w29_f12_wr_o   = bus_w29_wren_s;
  assign regf_w29_f14_rval_o = data_w29_f14_r;
  assign regf_w29_f16_wbus_o = w29_f16_wbus_s;
  assign regf_w29_f16_wr_o   = bus_w29_wren_s;
  assign regf_w29_f18_rval_o = data_w29_f18_r;
  assign regf_w29_f20_wbus_o = w29_f20_wbus_s;
  assign regf_w29_f20_wr_o   = bus_w29_wren_s;
  assign regf_w29_f22_rval_o = data_w29_f22_r;
  assign regf_w29_f24_wbus_o = w29_f24_wbus_s;
  assign regf_w29_f24_wr_o   = bus_w29_wren_s;
  assign regf_w29_f26_rval_o = data_w29_f26_r;
  assign regf_w29_f28_wbus_o = w29_f28_wbus_s;
  assign regf_w29_f28_wr_o   = bus_w29_wren_s;
  assign regf_w29_f30_rval_o = data_w29_f30_r;
  assign regf_w30_f0_wbus_o  = w30_f0_wbus_s;
  assign regf_w30_f0_wr_o    = bus_w30_wren_s;
  assign regf_w30_f2_rval_o  = data_w30_f2_r;
  assign regf_w30_f4_wbus_o  = w30_f4_wbus_s;
  assign regf_w30_f4_wr_o    = bus_w30_wren_s;
  assign regf_w30_f6_rval_o  = data_w30_f6_r;
  assign regf_w30_f8_wbus_o  = w30_f8_wbus_s;
  assign regf_w30_f8_wr_o    = bus_w30_wren_s;
  assign regf_w30_f10_rval_o = data_w30_f10_r;
  assign regf_w30_f12_wbus_o = w30_f12_wbus_s;
  assign regf_w30_f12_wr_o   = bus_w30_wren_s;
  assign regf_w30_f14_rval_o = data_w30_f14_r;
  assign regf_w30_f16_wbus_o = w30_f16_wbus_s;
  assign regf_w30_f16_wr_o   = bus_w30_wren_s;
  assign regf_w30_f18_rval_o = data_w30_f18_r;
  assign regf_w30_f20_wbus_o = w30_f20_wbus_s;
  assign regf_w30_f20_wr_o   = bus_w30_wren_s;
  assign regf_w30_f22_rval_o = data_w30_f22_r;
  assign regf_w30_f24_wbus_o = w30_f24_wbus_s;
  assign regf_w30_f24_wr_o   = bus_w30_wren_s;
  assign regf_w30_f26_rval_o = data_w30_f26_r;
  assign regf_w30_f28_wbus_o = w30_f28_wbus_s;
  assign regf_w30_f28_wr_o   = bus_w30_wren_s;
  assign regf_w30_f30_rval_o = data_w30_f30_r;
  assign regf_w31_f0_wbus_o  = w31_f0_wbus_s;
  assign regf_w31_f0_wr_o    = bus_w31_wren_s;
  assign regf_w31_f2_rval_o  = data_w31_f2_r;
  assign regf_w31_f4_wbus_o  = w31_f4_wbus_s;
  assign regf_w31_f4_wr_o    = bus_w31_wren_s;
  assign regf_w31_f6_rval_o  = data_w31_f6_r;
  assign regf_w31_f8_wbus_o  = w31_f8_wbus_s;
  assign regf_w31_f8_wr_o    = bus_w31_wren_s;
  assign regf_w31_f10_rval_o = data_w31_f10_r;
  assign regf_w31_f12_wbus_o = w31_f12_wbus_s;
  assign regf_w31_f12_wr_o   = bus_w31_wren_s;
  assign regf_w31_f14_rval_o = data_w31_f14_r;
  assign regf_w31_f16_wbus_o = w31_f16_wbus_s;
  assign regf_w31_f16_wr_o   = bus_w31_wren_s;
  assign regf_w31_f18_rval_o = data_w31_f18_r;
  assign regf_w31_f20_wbus_o = w31_f20_wbus_s;
  assign regf_w31_f20_wr_o   = bus_w31_wren_s;
  assign regf_w31_f22_rval_o = data_w31_f22_r;
  assign regf_w31_f24_wbus_o = w31_f24_wbus_s;
  assign regf_w31_f24_wr_o   = bus_w31_wren_s;
  assign regf_w31_f26_rval_o = data_w31_f26_r;
  assign regf_w31_f28_wbus_o = w31_f28_wbus_s;
  assign regf_w31_f28_wr_o   = bus_w31_wren_s;
  assign regf_w31_f30_rval_o = data_w31_f30_r;
  assign regf_w32_f0_wbus_o  = w32_f0_wbus_s;
  assign regf_w32_f0_wr_o    = bus_w32_wren_s;
  assign regf_w32_f2_rval_o  = data_w32_f2_r;
  assign regf_w32_f4_wbus_o  = w32_f4_wbus_s;
  assign regf_w32_f4_wr_o    = bus_w32_wren_s;
  assign regf_w32_f6_rval_o  = data_w32_f6_r;
  assign regf_w32_f8_wbus_o  = w32_f8_wbus_s;
  assign regf_w32_f8_wr_o    = bus_w32_wren_s;
  assign regf_w32_f10_rval_o = data_w32_f10_r;
  assign regf_w32_f12_wbus_o = w32_f12_wbus_s;
  assign regf_w32_f12_wr_o   = bus_w32_flg0_wren_s;
  assign regf_w32_f14_rval_o = data_w32_f14_r;
  assign regf_w32_f16_wbus_o = w32_f16_wbus_s;
  assign regf_w32_f16_wr_o   = bus_w32_flg0_wren_s;
  assign regf_w32_f18_rval_o = data_w32_f18_r;
  assign regf_w32_f20_wbus_o = w32_f20_wbus_s;
  assign regf_w32_f20_wr_o   = bus_w32_flg0_wren_s;
  assign regf_w32_f22_rval_o = data_w32_f22_r;
  assign regf_w32_f24_wbus_o = w32_f24_wbus_s;
  assign regf_w32_f24_wr_o   = bus_w32_flg0_wren_s;
  assign regf_w32_f26_rval_o = data_w32_f26_r;
  assign regf_w32_f28_wbus_o = w32_f28_wbus_s;
  assign regf_w32_f28_wr_o   = bus_w32_flg0_wren_s;
  assign regf_w32_f30_rval_o = data_w32_f30_r;
  assign regf_w33_f0_wbus_o  = w33_f0_wbus_s;
  assign regf_w33_f0_wr_o    = bus_w33_flg0_wren_s;
  assign regf_w33_f2_rval_o  = data_w33_f2_r;
  assign regf_w33_f4_wbus_o  = w33_f4_wbus_s;
  assign regf_w33_f4_wr_o    = bus_w33_flg0_wren_s;
  assign regf_w33_f6_rval_o  = data_w33_f6_r;
  assign regf_w33_f8_wbus_o  = w33_f8_wbus_s;
  assign regf_w33_f8_wr_o    = bus_w33_flg0_wren_s;
  assign regf_w33_f10_rval_o = data_w33_f10_r;
  assign regf_w33_f12_wbus_o = w33_f12_wbus_s;
  assign regf_w33_f12_wr_o   = bus_w33_flg0_wren_s;
  assign regf_w33_f14_rval_o = data_w33_f14_r;
  assign regf_w33_f16_wbus_o = w33_f16_wbus_s;
  assign regf_w33_f16_wr_o   = bus_w33_flg0_wren_s;
  assign regf_w33_f18_rval_o = data_w33_f18_r;
  assign regf_w33_f20_wbus_o = w33_f20_wbus_s;
  assign regf_w33_f20_wr_o   = bus_w33_flg0_wren_s;
  assign regf_w33_f22_rval_o = data_w33_f22_r;
  assign regf_w33_f24_wbus_o = w33_f24_wbus_s;
  assign regf_w33_f24_wr_o   = bus_w33_wren_s;
  assign regf_w33_f26_rval_o = data_w33_f26_r;
  assign regf_w33_f28_wbus_o = w33_f28_wbus_s;
  assign regf_w33_f28_wr_o   = bus_w33_wren_s;
  assign regf_w33_f30_rval_o = data_w33_f30_r;
  assign regf_w34_f0_wbus_o  = w34_f0_wbus_s;
  assign regf_w34_f0_wr_o    = bus_w34_wren_s;
  assign regf_w34_f2_rval_o  = data_w34_f2_r;
  assign regf_w34_f4_wbus_o  = w34_f4_wbus_s;
  assign regf_w34_f4_wr_o    = bus_w34_wren_s;
  assign regf_w34_f6_rval_o  = data_w34_f6_r;
  assign regf_w34_f8_wbus_o  = w34_f8_wbus_s;
  assign regf_w34_f8_wr_o    = bus_w34_wren_s;
  assign regf_w34_f10_rval_o = data_w34_f10_r;
  assign regf_w34_f12_wbus_o = w34_f12_wbus_s;
  assign regf_w34_f12_wr_o   = bus_w34_wren_s;
  assign regf_w34_f14_rval_o = data_w34_f14_r;
  assign regf_w34_f16_wbus_o = w34_f16_wbus_s;
  assign regf_w34_f16_wr_o   = bus_w34_wren_s;
  assign regf_w34_f18_rval_o = data_w34_f18_r;
  assign regf_w34_f20_wbus_o = w34_f20_wbus_s;
  assign regf_w34_f20_wr_o   = bus_w34_wren_s;
  assign regf_w34_f22_rval_o = data_w34_f22_r;
  assign regf_w34_f24_wbus_o = w34_f24_wbus_s;
  assign regf_w34_f24_wr_o   = bus_w34_wren_s;
  assign regf_w34_f26_rval_o = data_w34_f26_r;
  assign regf_w34_f28_wbus_o = w34_f28_wbus_s;
  assign regf_w34_f28_wr_o   = bus_w34_wren_s;
  assign regf_w34_f30_rval_o = data_w34_f30_r;
  assign regf_w35_f0_wbus_o  = w35_f0_wbus_s;
  assign regf_w35_f0_wr_o    = bus_w35_wren_s;
  assign regf_w35_f2_rval_o  = data_w35_f2_r;

endmodule // full_regf

`default_nettype wire
`end_keywords

// =============================================================================
//
//   @generated @fully-generated
//
//   THIS FILE IS GENERATED!!! DO NOT EDIT MANUALLY. CHANGES ARE LOST.
//
// =============================================================================
