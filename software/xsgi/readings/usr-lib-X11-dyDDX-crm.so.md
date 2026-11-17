# Readings: `usr/lib/X11/dyDDX/crm.so`

One entry per routine, filed here from the reading batches by binary.

- `cfbFillPoly1RectCopy` in `usr/lib/X11/dyDDX/crm.so` at 0x44cb60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/crm.so`.
  Range: 0x44cb60-0x44dbac (4172 bytes).
  It occupies 4172 bytes.
  The `lw` at 0x44cbac loads 4 bytes from abs 0x5aa8b8 (cfbGCPrivateIndex).
  The `lw` at 0x44cbb0 loads 4 bytes from a1 (arg1 at entry) +0x4c.
  The `lw` at 0x44cbbc loads 4 bytes from ([a1+76] + ([0x5aa8b8] << 0x2)) +0x0.
  The `lw` at 0x44cbc0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x44cbc4 loads 4 bytes from [([a1+76] + ([0x5aa8b8] << 0x2))] +0x8.
  The `lw` at 0x44cbd8 loads 4 bytes from [[([a1+76] + ([0x5aa8b8] << 0x2))]+8] +0x0.
  The `lw` at 0x44cbe4 loads 4 bytes from [[([a1+76] + ([0x5aa8b8] << 0x2))]+8] +0x4.
  The `lw` at 0x44cbf8 loads 4 bytes from [([a1+76] + ([0x5aa8b8] << 0x2))] +0xc.
  2 such `lw` accesses load 4 bytes from a5 (arg5 at entry) +0x0, including `lw` at 0x44cc58, `lw` at 0x44d4b0.
  2 such `lw` accesses load 4 bytes from abs 0x5a9064, including `lw` at 0x44cd5c, `lw` at 0x44daa8.
  26 such `lw` accesses load 4 bytes from ?, including `lw` at 0x44ce00, `lw` at 0x44ce04, `lw` at 0x44cecc.
  The `lbu` at 0x44ce90 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lw` at 0x44cea0 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x44cea4 loads 4 bytes from [a0+16] +0x74.
  The `lh` at 0x44cef0 loads 2 bytes from a0 (arg0 at entry) +0xa.
  36 such `sw` accesses store 4 bytes to ?, including `sw` at 0x44d1dc, `sw` at 0x44d2a4, `sw` at 0x44d2f8.
  The `beq` branch at 0x44cba0 targets 0x44daa0, is taken when a3 == a7(=0x1), and falls through when a3 != a7(=0x1).
  The `beq` branch at 0x44cbfc targets 0x44d470, is taken when s4(=a2) == s2(=0x2), and falls through when s4(=a2) != s2(=0x2).
  The `bne` branch at 0x44cc1c targets 0x44d900, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x44cc4c targets 0x44cc9c, is taken when (a4 & 0x1) == 0, and falls through when (a4 & 0x1) != 0.
  The `beq` branch at 0x44cc84 targets 0x44cc98, is taken when t2(=-0x1) == t1(?), and falls through when t2(=-0x1) != t1(?).
  The `bne` branch at 0x44cca8 targets 0x44ce00, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x44ccfc targets 0x44d440, is taken when s8(?) == s6(?), and falls through when s8(?) != s6(?).
  The `beq` branch at 0x44cd18 targets 0x44ce90, is taken when (a5(?) & t0(=0xffffffff80008000)) == 0, and falls through when (a5(?) & t0(=0xffffffff80008000)) != 0.
  The `bgezl` branch at 0x44cd7c targets 0x4472f0 and is always taken.
  The `beq` branch at 0x44cdd8 targets 0x44cdf8, is taken when t2(?) == t1(?), and falls through when t2(?) != t1(?).
  The `blez` branch at 0x44cde0 targets 0x44ce74, is taken when t9(?) <= 0 (signed), and falls through when t9(?) > 0 (signed).
  The `beq` branch at 0x44cdf8 targets 0x44ccb0, is taken when a7(?) == t3(=((a4 << 0x2) + a5)), and falls through when a7(?) != t3(=((a4 << 0x2) + a5)).
  The `beq` branch at 0x44ce48 targets 0x44cda8, is taken when t2(?) == t1(?), and falls through when t2(?) != t1(?).
  The `bgtz` branch at 0x44ce50 targets 0x44cd90, is taken when t9(?) > 0 (signed), and falls through when t9(?) <= 0 (signed).
  The `beq` branch at 0x44ce6c targets 0x44cda4 and is always taken.
  The `beq` branch at 0x44ce80 targets 0x44cdf4 and is always taken.
  The `beq` branch at 0x44ce98 targets 0x44d8f8, is taken when v0(=0x1) == v1(=[a0]:1), and falls through when v0(=0x1) != v1(=[a0]:1).
  The `beq` branch at 0x44cf54 targets 0x44cf6c and is always taken.
  The `beq` branch at 0x44cf60 targets 0x44d43c, is taken when s8(?) == s6(?), and falls through when s8(?) != s6(?).
  The `bne` branch at 0x44cf70 targets 0x44d3d8, is taken when a1(?) != s6(?), and falls through when a1(?) == s6(?).
  The `beq` branch at 0x44cf78 targets 0x44cfc8 and is always taken.
  The `bne` branch at 0x44cf88 targets 0x44cfb4, is taken when a4(?) < a3(?) (signed), and falls through when a4(?) >= a3(?) (signed).
  The `bne` branch at 0x44cfbc targets 0x44d068, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x44cff4 targets 0x44cfb4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bgez` branch at 0x44d00c targets 0x44cf80, is taken when a4(?) >= 0 (signed), and falls through when a4(?) < 0 (signed).
  The `bne` branch at 0x44d034 targets 0x44cfb4, is taken when a4(?) < a3(?) (signed), and falls through when a4(?) >= a3(?) (signed).
  The `beq` branch at 0x44d060 targets 0x44cfb4 and is always taken.
  The `bne` branch at 0x44d088 targets 0x44d400, is taken when a2(?) != s6(?), and falls through when a2(?) == s6(?).
  The `beq` branch at 0x44d090 targets 0x44d0e4 and is always taken.
  The `bne` branch at 0x44d0a4 targets 0x44d0d8, is taken when a4(?) < a1(?) (signed), and falls through when a4(?) >= a1(?) (signed).
  The `bne` branch at 0x44d0d8 targets 0x44d1a0, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x44d124 targets 0x44d0d8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bgez` branch at 0x44d140 targets 0x44d0a0, is taken when a4(?) >= 0 (signed), and falls through when a4(?) < 0 (signed).
  The `bne` branch at 0x44d168 targets 0x44d0d8, is taken when a4(?) < a1(?) (signed), and falls through when a4(?) >= a1(?) (signed).
  The `beq` branch at 0x44d198 targets 0x44d0d8 and is always taken.
  The `beq` branch at 0x44d1b0 targets 0x44dba0 and is always taken.
  The `beq` branch at 0x44d1e0 targets 0x44cf60, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x44d27c targets 0x44d1c0, is taken when t1(?) < 0x4 (signed), and falls through when t1(?) >= 0x4 (signed).
  The `beq` branch at 0x44d284 targets 0x44d2a8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `blez` branch at 0x44d2e0 targets 0x44d3a0, is taken when s5(?) <= 0 (signed), and falls through when s5(?) > 0 (signed).
  The `beq` branch at 0x44d2e8 targets 0x44d304, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x44d2fc targets 0x44d2f0, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x44d310 targets 0x44d3a0, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x44d318 targets 0x44db78, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x44d350 targets 0x44d3d0, is taken when v0(?) == a1(?), and falls through when v0(?) != a1(?).
  The `bne` branch at 0x44d37c targets 0x44d330, is taken when a0(?) != a1(?), and falls through when a0(?) == a1(?).
  The `beq` branch at 0x44d3a0 targets 0x44d1e0, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x44d3c8 targets 0x44d1e0 and is always taken.
  The `beq` branch at 0x44d3d0 targets 0x44d388 and is always taken.
  The `beq` branch at 0x44d3f8 targets 0x44d074 and is always taken.
  The `beq` branch at 0x44d434 targets 0x44d1b0 and is always taken.
  The `bne` branch at 0x44d474 targets 0x44ce88, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x44d4a4 targets 0x44d4e4, is taken when (a4 & 0x1) == 0, and falls through when (a4 & 0x1) != 0.
  The `beq` branch at 0x44d4e8 targets 0x44ccfc, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x44d4f0 targets 0x44dad0, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x44d650 targets 0x44da38, is taken when a7(?) == t0(=((a4 << 0x2) + a5)-24), and falls through when a7(?) != t0(=((a4 << 0x2) + a5)-24).
  The `beq` branch at 0x44d6c8 targets 0x44d9bc, is taken when t3(?) == t0(=((a4 << 0x2) + a5)-24), and falls through when t3(?) != t0(=((a4 << 0x2) + a5)-24).
  The `beq` branch at 0x44d740 targets 0x44d950, is taken when a2(?) == t0(=((a4 << 0x2) + a5)-24), and falls through when a2(?) != t0(=((a4 << 0x2) + a5)-24).
  The `bne` branch at 0x44d7bc targets 0x44d5e0, is taken when t1(?) != t0(=((a4 << 0x2) + a5)-24), and falls through when t1(?) == t0(=((a4 << 0x2) + a5)-24).
  The `beq` branch at 0x44d8f0 targets 0x44ccfc and is always taken.
  The `beq` branch at 0x44d8f8 targets 0x44cea8 and is always taken.
  The `beq` branch at 0x44d948 targets 0x44cd08 and is always taken.
  The `beq` branch at 0x44d9b4 targets 0x44d838 and is always taken.
  The `beq` branch at 0x44da30 targets 0x44d838 and is always taken.
  The `beq` branch at 0x44da98 targets 0x44d838 and is always taken.
  The `bgezl` branch at 0x44dac8 targets 0x4472f0 and is always taken.
  The `bne` branch at 0x44db58 targets 0x44dae4, is taken when a6(?) != v0(=((a4 << 0x2) + a5)), and falls through when a6(?) == v0(=((a4 << 0x2) + a5)).
  The `beq` branch at 0x44db70 targets 0x44ccfc and is always taken.
  The `beq` branch at 0x44db94 targets 0x44d3a0 and is always taken.
  The `beq` branch at 0x44dba4 targets 0x44d240 and is always taken.
  The return at 0x44d468 has v0 = ?.
  The instructions from 0x44cd84 to 0x44cd8c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x44cf5c to 0x44cf5c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x44d098 to 0x44d09c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x44d1b8 to 0x44d1bc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x44db9c to 0x44db9c are not reached by any path from the entry, and their branches are not listed.

- `cfbDoBitbltCopy` in `usr/lib/X11/dyDDX/crm.so` at 0x45e7f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/crm.so`.
  Range: 0x45e7f0-0x45f9f8 (4616 bytes).
  It occupies 4616 bytes.
  The `lbu` at 0x45e7f8 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lw` at 0x45e818 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x45e81c loads 4 bytes from [a0+16] +0x74.
  118 such `lw` accesses load 4 bytes from ?, including `lw` at 0x45e820, `lw` at 0x45e828, `lw` at 0x45e844.
  The `lbu` at 0x45e824 loads 1 byte from a1 (arg1 at entry) +0x0.
  The `lw` at 0x45e83c loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `lw` at 0x45e840 loads 4 bytes from [a1+16] +0x74.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lw` at 0x45e864, `lw` at 0x45e894.
  2 such `lw` accesses load 4 bytes from [a3+8] +0x4, including `lw` at 0x45e870, `lw` at 0x45e8b4.
  The `lh` at 0x45e898 loads 2 bytes from a4 (arg4 at entry) +0x2.
  The `lh` at 0x45e8a4 loads 2 bytes from [a3+8] +0xa.
  25 such `lh` accesses load 2 bytes from ?, including `lh` at 0x45e974, `lh` at 0x45e988, `lh` at 0x45e98c.
  12 such `sh` accesses store 2 bytes to ?, including `sh` at 0x45ea98, `sh` at 0x45eaa0, `sh` at 0x45eaa8.
  The `lh` at 0x45eb8c loads 2 bytes from a3 (arg3 at entry) +0x2.
  The `lh` at 0x45eb90 loads 2 bytes from a3 (arg3 at entry) +0x0.
  The `lh` at 0x45eb94 loads 2 bytes from a4 (arg4 at entry) +0x0.
  The `lw` at 0x45ed70 loads 4 bytes from table(0x5a5198) +0x0.
  The `lw` at 0x45ed7c loads 4 bytes from table(0x5a51a8) +0x0.
  6 such `lw` accesses load 4 bytes from abs 0x5a8f44, including `lw` at 0x45eee0, `lw` at 0x45f078, `lw` at 0x45f380.
  102 such `sw` accesses store 4 bytes to ?, including `sw` at 0x45eef4, `sw` at 0x45eefc, `sw` at 0x45ef04.
  The `lw` at 0x45f0bc loads 4 bytes from table(0x5a144c) +0x0.
  The `lw` at 0x45f130 loads 4 bytes from abs 0x5a9c54.
  The `lw` at 0x45f1d8 loads 4 bytes from table(0x5a51c8) +0x0.
  The `lw` at 0x45f1dc loads 4 bytes from table(0x5a51b8) +0x0.
  The `lw` at 0x45f400 loads 4 bytes from table(0x5a146c) +0x0.
  Calls (unknown callee) via register with a0=?, a1=?, a2=?, a3=? (`jr` at 0x45f6f8).
  Calls (unknown callee) via register with a0=?, a1=0x5a0000, a2=?, a3=? (`jr` at 0x45f924).
  The `beq` branch at 0x45e810 targets 0x45ea34, is taken when t0(=0x1) == a2(=[a0]:1), and falls through when t0(=0x1) != a2(=[a0]:1).
  The `beq` branch at 0x45e834 targets 0x45ea3c, is taken when t0(=0x1) == t1(=[a1]:1), and falls through when t0(=0x1) != t1(=[a1]:1).
  The `beq` branch at 0x45e854 targets 0x45e894, is taken when a0 == a1, and falls through when a0 != a1.
  The `beq` branch at 0x45e85c targets 0x45e88c, is taken when a2(=[a0]:1) == 0, and falls through when a2(=[a0]:1) != 0.
  The `beq` branch at 0x45e868 targets 0x45eb2c, is taken when v0(=[a3+8]) == 0, and falls through when v0(=[a3+8]) != 0.
  The `beq` branch at 0x45e884 targets 0x45ed30 and is always taken.
  The `bne` branch at 0x45e88c targets 0x45e864, is taken when t1(=[a1]:1) != 0, and falls through when t1(=[a1]:1) == 0.
  The `beq` branch at 0x45e89c targets 0x45eb8c, is taken when v0(=[a3+8]) == 0, and falls through when v0(=[a3+8]) != 0.
  The `beq` branch at 0x45e8b0 targets 0x45e980, is taken when a0(=[a4+2]:2) >= t1(=[[a3+8]+10]:2) (signed), and falls through when a0(=[a4+2]:2) < t1(=[[a3+8]+10]:2) (signed).
  The `bne` branch at 0x45e8d0 targets 0x45eb20, is taken when s0(=[[a3+8]+4]) < 0x2 (signed), and falls through when s0(=[[a3+8]+4]) >= 0x2 (signed).
  The `beq` branch at 0x45e910 targets 0x45e9fc, is taken when sp(?) == 0, and falls through when sp(?) != 0.
  The `beq` branch at 0x45e950 targets 0x45e9fc, is taken when sp(?) == 0, and falls through when sp(?) != 0.
  The `bne` branch at 0x45e968 targets 0x45eb18, is taken when a0(=(([[a3+8]+4] << 0x3) + [a3+8]+8)-8) < a3(=[a3+8]+8) (unsigned), and falls through when a0(=(([[a3+8]+4] << 0x3) + [a3+8]+8)-8) >= a3(=[a3+8]+8) (unsigned).
  The `beq` branch at 0x45e978 targets 0x45ea50 and is always taken.
  The `beq` branch at 0x45e994 targets 0x45e880, is taken when a2(?) >= a5(?) (signed), and falls through when a2(?) < a5(?) (signed).
  The `bne` branch at 0x45e99c targets 0x45ed2c, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x45e9f4 targets 0x45ec0c, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x45ea34 targets 0x45e820 and is always taken.
  The `beq` branch at 0x45ea3c targets 0x45e844 and is always taken.
  The `bne` branch at 0x45ea48 targets 0x45ea60, is taken when v1(?) != v0(?), and falls through when v1(?) == v0(?).
  The `beq` branch at 0x45ea58 targets 0x45ea44, is taken when a0(?) >= a3(=[a3+8]+8) (unsigned), and falls through when a0(?) < a3(=[a3+8]+8) (unsigned).
  The `bne` branch at 0x45ea68 targets 0x45eae8, is taken when t1(?) < t0(?) (unsigned), and falls through when t1(?) >= t0(?) (unsigned).
  The `beq` branch at 0x45ead8 targets 0x45ea94, is taken when t1(?) >= t0(?) (unsigned), and falls through when t1(?) < t0(?) (unsigned).
  The `beq` branch at 0x45eb10 targets 0x45e970, is taken when t3(?) >= a3(=[a3+8]+8) (unsigned), and falls through when t3(?) < a3(=[a3+8]+8) (unsigned).
  The `beq` branch at 0x45eb24 targets 0x45e988 and is always taken.
  The `beq` branch at 0x45eb84 targets 0x45f9e0 and is always taken.
  The `beq` branch at 0x45eba0 targets 0x45ebe8, is taken when a0(=[a4+2]:2) >= a1(=[a3+2]:2) (signed), and falls through when a0(=[a4+2]:2) < a1(=[a3+2]:2) (signed).
  The `beq` branch at 0x45ebe0 targets 0x45eb48 and is always taken.
  The `beq` branch at 0x45ec04 targets 0x45eb48 and is always taken.
  The `beq` branch at 0x45ec2c targets 0x45e9fc, is taken when sp(?) == 0, and falls through when sp(?) != 0.
  The `blez` branch at 0x45ec34 targets 0x45ed20, is taken when a1(=([[a3+8]+4] << 0x3)) <= 0 (signed), and falls through when a1(=([[a3+8]+4] << 0x3)) > 0 (signed).
  The `beq` branch at 0x45ec4c targets 0x45ed00 and is always taken.
  The `bne` branch at 0x45ec64 targets 0x45ec7c, is taken when t3(?) != v0(?), and falls through when t3(?) == v0(?).
  The `bne` branch at 0x45ec74 targets 0x45ec60, is taken when a0(?) < t2(?) (unsigned), and falls through when a0(?) >= t2(?) (unsigned).
  The `beq` branch at 0x45ec80 targets 0x45ece8, is taken when t1(?) == a0(?), and falls through when t1(?) != a0(?).
  The `bne` branch at 0x45ece0 targets 0x45eca0, is taken when t1(?) != a0(?), and falls through when t1(?) == a0(?).
  The `beq` branch at 0x45ecf8 targets 0x45ed14, is taken when t3(?) >= t2(?) (unsigned), and falls through when t3(?) < t2(?) (unsigned).
  The `beq` branch at 0x45ed00 targets 0x45ed64, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x45ed0c targets 0x45ec6c and is always taken.
  The `blez` branch at 0x45ed50 targets 0x45e9fc, is taken when s0(=[[a3+8]+4]) <= 0 (signed), and falls through when s0(=[[a3+8]+4]) > 0 (signed).
  The `beq` branch at 0x45ed5c targets 0x45eb48 and is always taken.
  The `beq` branch at 0x45ed64 targets 0x45ec78 and is always taken.
  The `beq` branch at 0x45eda8 targets 0x45f40c, is taken when a3(=one of -0x1, 0x1) == a2(=0x1), and falls through when a3(=one of -0x1, 0x1) != a2(=0x1).
  The `bne` branch at 0x45ede0 targets 0x45ee54, is taken when ra(?) != s2(?), and falls through when ra(?) == s2(?).
  The `blez` branch at 0x45ede8 targets 0x45f0d0, is taken when s1(?) <= 0 (signed), and falls through when s1(?) > 0 (signed).
  The `beq` branch at 0x45ee4c targets 0x45f9bc and is always taken.
  The `blez` branch at 0x45ee84 targets 0x45f0d0, is taken when s1(?) <= 0 (signed), and falls through when s1(?) > 0 (signed).
  The `beq` branch at 0x45eee8 targets 0x45f9c4 and is always taken.
  The `bltz` branch at 0x45ef28 targets 0x45f030, is taken when s2(?) < 0 (signed), and falls through when s2(?) >= 0 (signed).
  The `bne` branch at 0x45ef34 targets 0x45f978, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x45efd4 targets 0x45f0c8, is taken when a1(?) == v1(?), and falls through when a1(?) != v1(?).
  The `bne` branch at 0x45f020 targets 0x45ef90, is taken when a1(?) != v1(?), and falls through when a1(?) == v1(?).
  The `beq` branch at 0x45f030 targets 0x45f058, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x45f05c targets 0x45f0d0, is taken when ra(?) == s1(?), and falls through when ra(?) != s1(?).
  The `beq` branch at 0x45f07c targets 0x45f0a4, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x45f0b4 targets 0x45ef28, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x45f0c8 targets 0x45f028 and is always taken.
  The `beq` branch at 0x45f0e4 targets 0x45e9fc, is taken when a0(?) == a1(?), and falls through when a0(?) != a1(?).
  The `beq` branch at 0x45f1cc targets 0x45ed6c, is taken when ra(?) >= 0x5 (signed), and falls through when ra(?) < 0x5 (signed).
  The `beq` branch at 0x45f1e0 targets 0x45ed84 and is always taken.
  The `bltz` branch at 0x45f278 targets 0x45f33c, is taken when s2(?) < 0 (signed), and falls through when s2(?) >= 0 (signed).
  The `bne` branch at 0x45f334 targets 0x45f290, is taken when a1(?) != t1(?), and falls through when a1(?) == t1(?).
  The `beq` branch at 0x45f33c targets 0x45f374, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x45f34c targets 0x45f364, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x45f384 targets 0x45f0d0, is taken when ra(?) == s1(?), and falls through when ra(?) != s1(?).
  The `beq` branch at 0x45f394 targets 0x45f3b0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x45f3a0 targets 0x45f3b4, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0x45f3a8 targets 0x45f3e4 and is always taken.
  The `beq` branch at 0x45f3b0 targets 0x45f3e0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x45f3f8 targets 0x45f274, is taken when s3(?) >= 0x8 (unsigned), and falls through when s3(?) < 0x8 (unsigned).
  The `bne` branch at 0x45f42c targets 0x45f48c, is taken when s2(?) != v0(?), and falls through when s2(?) == v0(?).
  The `blez` branch at 0x45f434 targets 0x45f0d0, is taken when s1(?) <= 0 (signed), and falls through when s1(?) > 0 (signed).
  The `beq` branch at 0x45f484 targets 0x45f9cc and is always taken.
  The `blez` branch at 0x45f4c0 targets 0x45f0d0, is taken when s1(?) <= 0 (signed), and falls through when s1(?) > 0 (signed).
  The `beq` branch at 0x45f518 targets 0x45f9d4 and is always taken.
  The `bltz` branch at 0x45f558 targets 0x45f664, is taken when s2(?) < 0 (signed), and falls through when s2(?) >= 0 (signed).
  The `bne` branch at 0x45f560 targets 0x45f934, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x45f604 targets 0x45f700, is taken when a1(?) == v1(?), and falls through when a1(?) != v1(?).
  The `bne` branch at 0x45f650 targets 0x45f5c0, is taken when a1(?) != v1(?), and falls through when a1(?) == v1(?).
  The `beq` branch at 0x45f664 targets 0x45f68c, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x45f694 targets 0x45f0d0, is taken when s0(?) == s1(?), and falls through when s0(?) != s1(?).
  The `beq` branch at 0x45f6b4 targets 0x45f6dc, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x45f6ec targets 0x45f558, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x45f700 targets 0x45f660 and is always taken.
  The `bltz` branch at 0x45f798 targets 0x45f85c, is taken when s2(?) < 0 (signed), and falls through when s2(?) >= 0 (signed).
  The `bne` branch at 0x45f854 targets 0x45f7b0, is taken when a0(?) != t1(?), and falls through when a0(?) == t1(?).
  The `beq` branch at 0x45f85c targets 0x45f894, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x45f86c targets 0x45f884, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x45f8a4 targets 0x45f92c, is taken when ra(?) == s1(?), and falls through when ra(?) != s1(?).
  The `beq` branch at 0x45f8b4 targets 0x45f8d0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x45f8c0 targets 0x45f8d4, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x45f8c8 targets 0x45f904 and is always taken.
  The `beq` branch at 0x45f8d0 targets 0x45f900, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x45f918 targets 0x45f794, is taken when s3(?) >= 0x8 (unsigned), and falls through when s3(?) < 0x8 (unsigned).
  The `beq` branch at 0x45f92c targets 0x45f0d4 and is always taken.
  The `beq` branch at 0x45f970 targets 0x45f664 and is always taken.
  The `beq` branch at 0x45f9b4 targets 0x45f02c and is always taken.
  The `beq` branch at 0x45f9bc targets 0x45f068 and is always taken.
  The `beq` branch at 0x45f9c4 targets 0x45f390 and is always taken.
  The `beq` branch at 0x45f9cc targets 0x45f6a0 and is always taken.
  The `beq` branch at 0x45f9d8 targets 0x45f8b0 and is always taken.
  The `beq` branch at 0x45f9f0 targets 0x45f0f0 and is always taken.
  The return at 0x45ea2c has v0 = one of -0x10, ([[a3+8]+4] << 0x2), ?.
  The instructions from 0x45ec54 to 0x45ec5c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x45f520 to 0x45f554 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x45f708 to 0x45f790 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x45f0c0 uses the jump table at 0x5a144c with targets 0x45ef28, 0x45ef20, 0x45ef18, 0x45ef10, 0x45ef08, 0x45ef00, 0x45eef8, 0x45eef0.
  The indirect jump at 0x45f0c0 uses the jump table at 0x5a144c with targets 0x45ef28, 0x45ef20, 0x45ef18, 0x45ef10, 0x45ef08, 0x45ef00, 0x45eef8, 0x45eef0.
  The indirect jump at 0x45f0c0 uses the jump table at 0x5a144c with targets 0x45ef28, 0x45ef20, 0x45ef18, 0x45ef10, 0x45ef08, 0x45ef00, 0x45eef8, 0x45eef0.
  The indirect jump at 0x45f0c0 uses the jump table at 0x5a144c with targets 0x45ef28, 0x45ef20, 0x45ef18, 0x45ef10, 0x45ef08, 0x45ef00, 0x45eef8, 0x45eef0.
  The indirect jump at 0x45f0c0 uses the jump table at 0x5a144c with targets 0x45ef28, 0x45ef20, 0x45ef18, 0x45ef10, 0x45ef08, 0x45ef00, 0x45eef8, 0x45eef0.
  The indirect jump at 0x45f404 uses the jump table at 0x5a146c with targets 0x45f274, 0x45f260, 0x45f24c, 0x45f238, 0x45f224, 0x45f210, 0x45f1fc, 0x45f1e8.
  The indirect jump at 0x45f404 uses the jump table at 0x5a146c with targets 0x45f274, 0x45f260, 0x45f24c, 0x45f238, 0x45f224, 0x45f210, 0x45f1fc, 0x45f1e8.
  The indirect jump at 0x45f404 uses the jump table at 0x5a146c with targets 0x45f274, 0x45f260, 0x45f24c, 0x45f238, 0x45f224, 0x45f210, 0x45f1fc, 0x45f1e8.
  The indirect jump at 0x45f404 uses the jump table at 0x5a146c with targets 0x45f274, 0x45f260, 0x45f24c, 0x45f238, 0x45f224, 0x45f210, 0x45f1fc, 0x45f1e8.
  The indirect jump at 0x45f404 uses the jump table at 0x5a146c with targets 0x45f274, 0x45f260, 0x45f24c, 0x45f238, 0x45f224, 0x45f210, 0x45f1fc, 0x45f1e8.
  The indirect jump at 0x45f0c0 uses the jump table at 0x5a144c with targets 0x45ef28, 0x45ef20, 0x45ef18, 0x45ef10, 0x45ef08, 0x45ef00, 0x45eef8, 0x45eef0.
  The indirect jump at 0x45f404 uses the jump table at 0x5a146c with targets 0x45f274, 0x45f260, 0x45f24c, 0x45f238, 0x45f224, 0x45f210, 0x45f1fc, 0x45f1e8.
  The indirect jump at 0x45f0c0 uses the jump table at 0x5a144c with targets 0x45ef28, 0x45ef20, 0x45ef18, 0x45ef10, 0x45ef08, 0x45ef00, 0x45eef8, 0x45eef0.
  The indirect jump at 0x45f404 uses the jump table at 0x5a146c with targets 0x45f274, 0x45f260, 0x45f24c, 0x45f238, 0x45f224, 0x45f210, 0x45f1fc, 0x45f1e8.

- `cfb32UnnaturalStippleFS` in `usr/lib/X11/dyDDX/crm.so` at 0x482f00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/crm.so`.
  Range: 0x482f00-0x4838b4 (2484 bytes).
  It occupies 2484 bytes.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x14, including `lw` at 0x482f38, `lw` at 0x48338c, `lw` at 0x4834ec.
  The `lw` at 0x482f68 loads 4 bytes from a1 (arg1 at entry) +0x4c.
  The `lw` at 0x482f74 loads 4 bytes from ([a1+76] + ([0x5aa960] << 0x2)) +0x0.
  The `lw` at 0x482f78 loads 4 bytes from [([a1+76] + ([0x5aa960] << 0x2))] +0x8.
  The `lw` at 0x482f7c loads 4 bytes from [[([a1+76] + ([0x5aa960] << 0x2))]+8] +0x8.
  The `lw` at 0x482f88 loads 4 bytes from [[[([a1+76] + ([0x5aa960] << 0x2))]+8]+8] +0x4.
  5 such `lh` accesses load 2 bytes from ?, including `lh` at 0x482f98, `lh` at 0x482fb4, `lh` at 0x482fd0.
  The `lbu` at 0x483068 loads 1 byte from a1 (arg1 at entry) +0x5.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x10, including `lw` at 0x483078, `lw` at 0x483344.
  The `lw` at 0x483094 loads 4 bytes from a1 (arg1 at entry) +0x18.
  The `lh` at 0x4830a8 loads 2 bytes from a1 (arg1 at entry) +0x28.
  The `lh` at 0x4830bc loads 2 bytes from a1 (arg1 at entry) +0x2a.
  The `lw` at 0x4830c0 loads 4 bytes from a1 (arg1 at entry) +0x1c.
  The `lw` at 0x4830c4 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `lbu` at 0x4830c8 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lhu` at 0x4830cc loads 2 bytes from [a1+36] +0xc.
  The `lw` at 0x4830d4 loads 4 bytes from [a1+36] +0x1c.
  The `lhu` at 0x4830dc loads 2 bytes from [a1+36] +0xe.
  The `lw` at 0x483110 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x483118 loads 4 bytes from [a0+16] +0x1b4.
  The `lw` at 0x483128 loads 4 bytes from ([[a0+16]+436] + ([0x5aa964] << 0x2)) +0x0.
  11 such `lw` accesses load 4 bytes from ?, including `lw` at 0x48317c, `lw` at 0x4831b0, `lw` at 0x48327c.
  The `lh` at 0x48318c loads 2 bytes from a0 (arg0 at entry) +0x8.
  The `lh` at 0x4831a0 loads 2 bytes from a0 (arg0 at entry) +0xa.
  The `lw` at 0x4832a4 loads 4 bytes from [a1+36] +0x20.
  The `sw` at 0x483308 stores 4 bytes to ?.
  The `lw` at 0x4833b8 loads 4 bytes from table(0x5a10bc) +0x0.
  2 such `lw` accesses load 4 bytes from table(0x5a64e8) +0x0, including `lw` at 0x483418, `lw` at 0x4835c8.
  5 such `lw` accesses load 4 bytes from table(0x5a64f0) +0x0, including `lw` at 0x483480, `lw` at 0x4834cc, `lw` at 0x4834f8.
  The `lw` at 0x483644 loads 4 bytes from table(0x5a107c) +0x0.
  The `jalr` at 0x483060 calls miClipSpans [0x449120] with a0=[[([a1+76] + ([0x5aa960] << 0x2))]+8], a1=a3 at entry (arg3), a2=a4 at entry (arg4), a3=a2 at entry (arg2), a6=a5 at entry (arg5).
  The `beq` branch at 0x482f58 targets 0x4831e4, is taken when at(=[a1+20]) == 0, and falls through when at(=[a1+20]) != 0.
  The `beq` branch at 0x482f80 targets 0x482f94, is taken when v0(=[[[([a1+76] + ([0x5aa960] << 0x2))]+8]+8]) == 0, and falls through when v0(=[[[([a1+76] + ([0x5aa960] << 0x2))]+8]+8]) != 0.
  The `blez` branch at 0x482f8c targets 0x4831e4, is taken when t2(=[[[[([a1+76] + ([0x5aa960] << 0x2))]+8]+8]+4]) <= 0 (signed), and falls through when t2(=[[[[([a1+76] + ([0x5aa960] << 0x2))]+8]+8]+4]) > 0 (signed).
  The `beq` branch at 0x482f94 targets 0x482fd4 and is always taken.
  The `blez` branch at 0x482fac targets 0x482fe8, is taken when t2(?) <= 0 (signed), and falls through when t2(?) > 0 (signed).
  The `beq` branch at 0x482fb8 targets 0x482fa4, is taken when a2(?) == t3(?), and falls through when a2(?) != t3(?).
  The `blez` branch at 0x482fc8 targets 0x483000, is taken when t2(?) <= 0 (signed), and falls through when t2(?) > 0 (signed).
  The `blez` branch at 0x482fd4 targets 0x482ff4, is taken when t2(?) <= 0 (signed), and falls through when t2(?) > 0 (signed).
  The `beq` branch at 0x482fe0 targets 0x482fa0 and is always taken.
  The `beq` branch at 0x482fec targets 0x482fc0 and is always taken.
  The `beq` branch at 0x482ff8 targets 0x482fc4 and is always taken.
  The `beq` branch at 0x483010 targets 0x4831e4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x48302c targets 0x4831e4, is taken when sp(?) == 0, and falls through when sp(?) != 0.
  The `beq` branch at 0x48303c targets 0x4831e4, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x4830b4 targets 0x483860, is taken when a7(=0x2) == t0(?), and falls through when a7(=0x2) != t0(?).
  The `beq` branch at 0x483108 targets 0x48388c, is taken when s7(=0x1) == t9(=[a0]:1), and falls through when s7(=0x1) != t9(=[a0]:1).
  The `blez` branch at 0x4831c4 targets 0x4831e4, is taken when v0(=ret(miClipSpans)) <= 0 (signed), and falls through when v0(=ret(miClipSpans)) > 0 (signed).
  The `beq` branch at 0x4831dc targets 0x4838a0 and is always taken.
  The `beq` branch at 0x483230 targets 0x4831e4, is taken when t1(?) == t2(?), and falls through when t1(?) != t2(?).
  The `beq` branch at 0x4832d0 targets 0x483220, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `blez` branch at 0x4832d8 targets 0x483224, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `beq` branch at 0x4832e0 targets 0x483310 and is always taken.
  The `blez` branch at 0x483304 targets 0x483220, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `beq` branch at 0x48337c targets 0x4833d8, is taken when ra(=0x3) == t3(?), and falls through when ra(=0x3) != t3(?).
  The `beq` branch at 0x483384 targets 0x483510, is taken when s4(=0x2) == t3(?), and falls through when s4(=0x2) != t3(?).
  The `beq` branch at 0x483394 targets 0x4832e8, is taken when a2(?) == ra(=0x3), and falls through when a2(?) != ra(=0x3).
  The `beq` branch at 0x4833a0 targets 0x483660, is taken when a2(?) == a4(=0x6), and falls through when a2(?) != a4(=0x6).
  The `beq` branch at 0x4833a8 targets 0x4832f0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x483430 targets 0x4834b0, is taken when a6(?) < 0x20 (signed), and falls through when a6(?) >= 0x20 (signed).
  The `beq` branch at 0x483450 targets 0x483468, is taken when a7(=0x20) >= t0(?) (signed), and falls through when a7(=0x20) < t0(?) (signed).
  The `beq` branch at 0x48348c targets 0x4834d8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x4834a8 targets 0x4834d8 and is always taken.
  The `beq` branch at 0x483508 targets 0x483394 and is always taken.
  The `beq` branch at 0x48354c targets 0x483584, is taken when s3(=0x1f) >= t3(?) (signed), and falls through when s3(=0x1f) < t3(?) (signed).
  The `bne` branch at 0x483564 targets 0x483598, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x48357c targets 0x483598 and is always taken.
  The `beq` branch at 0x483608 targets 0x483668, is taken when at(?) == a2(?), and falls through when at(?) != a2(?).
  The `beq` branch at 0x483610 targets 0x4836e0, is taken when at(?) == ra(=0x3), and falls through when at(?) != ra(=0x3).
  The `beq` branch at 0x48361c targets 0x483788, is taken when v1(?) == a4(=0x6), and falls through when v1(?) != a4(=0x6).
  The `beq` branch at 0x483630 targets 0x4836f0, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x483660 targets 0x4832f0 and is always taken.
  The `beq` branch at 0x48367c targets 0x4836b0, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x483688 targets 0x4836bc, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x4836a8 targets 0x4836bc and is always taken.
  The `beq` branch at 0x4836d8 targets 0x483394 and is always taken.
  The `beq` branch at 0x483700 targets 0x483670 and is always taken.
  The `beq` branch at 0x483708 targets 0x4832f0 and is always taken.
  The `beq` branch at 0x483710 targets 0x4832f0 and is always taken.
  The `beq` branch at 0x48371c targets 0x4832f0 and is always taken.
  The `beq` branch at 0x483724 targets 0x4832f0 and is always taken.
  The `beq` branch at 0x48372c targets 0x4832f0 and is always taken.
  The `beq` branch at 0x483738 targets 0x4832f0 and is always taken.
  The `beq` branch at 0x483740 targets 0x4832f0 and is always taken.
  The `beq` branch at 0x483748 targets 0x4832f0 and is always taken.
  The `beq` branch at 0x483750 targets 0x4832f0 and is always taken.
  The `beq` branch at 0x483758 targets 0x4832f0 and is always taken.
  The `beq` branch at 0x483760 targets 0x4832f0 and is always taken.
  The `beq` branch at 0x48376c targets 0x4832f0 and is always taken.
  The `beq` branch at 0x483778 targets 0x4832f0 and is always taken.
  The `beq` branch at 0x483780 targets 0x4832f0 and is always taken.
  The `beq` branch at 0x483790 targets 0x4836f0 and is always taken.
  The `beq` branch at 0x483798 targets 0x4836f0 and is always taken.
  The `beq` branch at 0x4837a4 targets 0x4836f0 and is always taken.
  The `beq` branch at 0x4837b4 targets 0x4836f0 and is always taken.
  The `beq` branch at 0x4837c4 targets 0x4836f0 and is always taken.
  The `beq` branch at 0x4837d0 targets 0x4836f0 and is always taken.
  The `beq` branch at 0x4837e4 targets 0x4836f0 and is always taken.
  The `beq` branch at 0x4837ec targets 0x4836f0 and is always taken.
  The `beq` branch at 0x4837fc targets 0x4836f0 and is always taken.
  The `beq` branch at 0x48380c targets 0x4836f0 and is always taken.
  The `beq` branch at 0x48381c targets 0x4836f0 and is always taken.
  The `beq` branch at 0x483824 targets 0x4836f0 and is always taken.
  The `beq` branch at 0x483834 targets 0x4836f0 and is always taken.
  The `beq` branch at 0x483848 targets 0x4836f0 and is always taken.
  The `beq` branch at 0x483858 targets 0x4836f0 and is always taken.
  The `beq` branch at 0x483860 targets 0x483898, is taken when a2(=[a1+5]:1) == s7(=0x1), and falls through when a2(=[a1+5]:1) != s7(=0x1).
  The `beq` branch at 0x483868 targets 0x483898, is taken when a2(=[a1+5]:1) == t3(=0x3), and falls through when a2(=[a1+5]:1) != t3(=0x3).
  The `beq` branch at 0x483870 targets 0x483898, is taken when a2(=[a1+5]:1) == a0(=0x5), and falls through when a2(=[a1+5]:1) != a0(=0x5).
  The `beq` branch at 0x483878 targets 0x483898, is taken when a2(=[a1+5]:1) == t9(=0x7), and falls through when a2(=[a1+5]:1) != t9(=0x7).
  The `beq` branch at 0x483884 targets 0x4830bc and is always taken.
  The `beq` branch at 0x483890 targets 0x48312c and is always taken.
  The `beq` branch at 0x483898 targets 0x4830bc and is always taken.
  The `beq` branch at 0x4838ac targets 0x48323c and is always taken.
  The return at 0x483214 has v0 = one of 0x12dfa0, [[[([a1+76] + ([0x5aa960] << 0x2))]+8]+8], ?, ret(miClipSpans).
  The instructions from 0x482f9c to 0x482f9c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x48321c to 0x48321c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x48365c to 0x48365c are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x4833d0 uses the jump table at 0x5a10bc with targets 0x483708, 0x483780, 0x483774, 0x4832f0, 0x483768, 0x483760, 0x4832f0, 0x483758, 0x483750, 0x483748, 0x483740, 0x483734, 0x48372c, 0x483724, 0x483718, 0x483710.
  The indirect jump at 0x483654 uses the jump table at 0x5a107c with targets 0x483798, 0x483850, 0x48383c, 0x4836f0, 0x48382c, 0x483824, 0x4836f0, 0x483814, 0x483804, 0x4837f4, 0x4837ec, 0x4837d8, 0x4837cc, 0x4837bc, 0x4837ac, 0x4837a0.
  The indirect jump at 0x4833d0 uses the jump table at 0x5a10bc with targets 0x483708, 0x483780, 0x483774, 0x4832f0, 0x483768, 0x483760, 0x4832f0, 0x483758, 0x483750, 0x483748, 0x483740, 0x483734, 0x48372c, 0x483724, 0x483718, 0x483710.
  The indirect jump at 0x483654 uses the jump table at 0x5a107c with targets 0x483798, 0x483850, 0x48383c, 0x4836f0, 0x48382c, 0x483824, 0x4836f0, 0x483814, 0x483804, 0x4837f4, 0x4837ec, 0x4837d8, 0x4837cc, 0x4837bc, 0x4837ac, 0x4837a0.
  The indirect jump at 0x4833d0 uses the jump table at 0x5a10bc with targets 0x483708, 0x483780, 0x483774, 0x4832f0, 0x483768, 0x483760, 0x4832f0, 0x483758, 0x483750, 0x483748, 0x483740, 0x483734, 0x48372c, 0x483724, 0x483718, 0x483710.
  The indirect jump at 0x483654 uses the jump table at 0x5a107c with targets 0x483798, 0x483850, 0x48383c, 0x4836f0, 0x48382c, 0x483824, 0x4836f0, 0x483814, 0x483804, 0x4837f4, 0x4837ec, 0x4837d8, 0x4837cc, 0x4837bc, 0x4837ac, 0x4837a0.

- `cfb16UnnaturalStippleFS` in `usr/lib/X11/dyDDX/crm.so` at 0x4871a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/crm.so`.
  Range: 0x4871a0-0x488364 (4548 bytes).
  It occupies 4548 bytes.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x14, including `lw` at 0x4871d8, `lw` at 0x487690, `lw` at 0x4876dc.
  The `lw` at 0x487208 loads 4 bytes from a1 (arg1 at entry) +0x4c.
  The `lw` at 0x487214 loads 4 bytes from ([a1+76] + ([0x5aa96c] << 0x2)) +0x0.
  The `lw` at 0x487218 loads 4 bytes from [([a1+76] + ([0x5aa96c] << 0x2))] +0x8.
  The `lw` at 0x48721c loads 4 bytes from [[([a1+76] + ([0x5aa96c] << 0x2))]+8] +0x8.
  The `lw` at 0x487228 loads 4 bytes from [[[([a1+76] + ([0x5aa96c] << 0x2))]+8]+8] +0x4.
  5 such `lh` accesses load 2 bytes from ?, including `lh` at 0x487238, `lh` at 0x487254, `lh` at 0x487270.
  The `lbu` at 0x487310 loads 1 byte from a1 (arg1 at entry) +0x5.
  The `lh` at 0x48731c loads 2 bytes from a1 (arg1 at entry) +0x28.
  The `lbu` at 0x487330 loads 1 byte from a0 (arg0 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x10, including `lw` at 0x487334, `lw` at 0x487628.
  The `lw` at 0x487348 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `lw` at 0x487374 loads 4 bytes from a1 (arg1 at entry) +0x18.
  The `lw` at 0x487378 loads 4 bytes from a1 (arg1 at entry) +0x1c.
  The `lw` at 0x487384 loads 4 bytes from [a1+36] +0x1c.
  The `lhu` at 0x48739c loads 2 bytes from [a1+36] +0xc.
  The `lhu` at 0x4873a0 loads 2 bytes from [a1+36] +0xe.
  The `lw` at 0x4873c8 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x4873d0 loads 4 bytes from [a0+16] +0x1b4.
  The `lw` at 0x4873dc loads 4 bytes from ([[a0+16]+436] + ([0x5aa970] << 0x2)) +0x0.
  The `lh` at 0x4873f8 loads 2 bytes from a1 (arg1 at entry) +0x2a.
  15 such `lw` accesses load 4 bytes from ?, including `lw` at 0x487438, `lw` at 0x487478, `lw` at 0x48754c.
  The `lh` at 0x487444 loads 2 bytes from a0 (arg0 at entry) +0x8.
  The `lh` at 0x487460 loads 2 bytes from a0 (arg0 at entry) +0xa.
  The `lw` at 0x48757c loads 4 bytes from [a1+36] +0x20.
  2 such `lw` accesses load 4 bytes from table(0x5a64f8) +0x0, including `lw` at 0x4875d8, `lw` at 0x487cec.
  3 such `lw` accesses load 4 bytes from table(0x5a6500) +0x0, including `lw` at 0x4875dc, `lw` at 0x4876f8, `lw` at 0x487ce8.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4875f4, `sw` at 0x4877a4, `sw` at 0x4877d4.
  The `lw` at 0x4876cc loads 4 bytes from table(0x5a09a4) +0x0.
  2 such `lw` accesses load 4 bytes from table(0x5a6508) +0x0, including `lw` at 0x487700, `lw` at 0x487924.
  The `lw` at 0x48774c loads 4 bytes from table(0x5a09e4) +0x0.
  2 such `lw` accesses load 4 bytes from table(0x5a6510) +0x0, including `lw` at 0x487770, `lw` at 0x48792c.
  2 such `lw` accesses load 4 bytes from table(0x5a6518) +0x0, including `lw` at 0x487778, `lw` at 0x487c00.
  The `lw` at 0x4877f0 loads 4 bytes from table(0x5a0a24) +0x0.
  2 such `lw` accesses load 4 bytes from table(0x5a6528) +0x0, including `lw` at 0x487818, `lw` at 0x4879cc.
  5 such `lw` accesses load 4 bytes from table(0x5a6538) +0x0, including `lw` at 0x487874, `lw` at 0x4878bc, `lw` at 0x4878d4.
  The `lw` at 0x487a0c loads 4 bytes from abs 0x5a6508 (cfb16endtab).
  The `lw` at 0x487a20 loads 4 bytes from abs 0x5a6500 (cfb16starttab).
  The `lw` at 0x487a78 loads 4 bytes from table(0x5a08e4) +0x0.
  The `lw` at 0x487bc8 loads 4 bytes from table(0x5a0924) +0x0.
  The `lw` at 0x487bf8 loads 4 bytes from abs 0x5a6510 (cfb16startpartial).
  The `lw` at 0x487c9c loads 4 bytes from table(0x5a0964) +0x0.
  The `jalr` at 0x4872fc calls miClipSpans [0x449120] with a0=[[([a1+76] + ([0x5aa96c] << 0x2))]+8], a1=a3 at entry (arg3), a2=a4 at entry (arg4), a3=a2 at entry (arg2), a6=a5 at entry (arg5).
  The `beq` branch at 0x4871f8 targets 0x4874ac, is taken when at(=[a1+20]) == 0, and falls through when at(=[a1+20]) != 0.
  The `beq` branch at 0x487220 targets 0x487234, is taken when v0(=[[[([a1+76] + ([0x5aa96c] << 0x2))]+8]+8]) == 0, and falls through when v0(=[[[([a1+76] + ([0x5aa96c] << 0x2))]+8]+8]) != 0.
  The `blez` branch at 0x48722c targets 0x4874ac, is taken when t2(=[[[[([a1+76] + ([0x5aa96c] << 0x2))]+8]+8]+4]) <= 0 (signed), and falls through when t2(=[[[[([a1+76] + ([0x5aa96c] << 0x2))]+8]+8]+4]) > 0 (signed).
  The `beq` branch at 0x487234 targets 0x487274 and is always taken.
  The `blez` branch at 0x48724c targets 0x487288, is taken when t2(?) <= 0 (signed), and falls through when t2(?) > 0 (signed).
  The `beq` branch at 0x487258 targets 0x487244, is taken when a2(?) == t3(?), and falls through when a2(?) != t3(?).
  The `blez` branch at 0x487268 targets 0x4872a0, is taken when t2(?) <= 0 (signed), and falls through when t2(?) > 0 (signed).
  The `blez` branch at 0x487274 targets 0x487294, is taken when t2(?) <= 0 (signed), and falls through when t2(?) > 0 (signed).
  The `beq` branch at 0x487280 targets 0x487240 and is always taken.
  The `beq` branch at 0x48728c targets 0x487260 and is always taken.
  The `beq` branch at 0x487298 targets 0x487264 and is always taken.
  The `beq` branch at 0x4872b0 targets 0x4874ac, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x4872cc targets 0x4874ac, is taken when sp(?) == 0, and falls through when sp(?) != 0.
  The `beq` branch at 0x4872dc targets 0x4874ac, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x48736c targets 0x488314, is taken when s2(=0x2) == a5(?), and falls through when s2(=0x2) != a5(?).
  The `beq` branch at 0x4873c0 targets 0x488340, is taken when t2(=0x1) == a7(=[a0]:1), and falls through when t2(=0x1) != a7(=[a0]:1).
  The `blez` branch at 0x48748c targets 0x4874ac, is taken when v0(=ret(miClipSpans)) <= 0 (signed), and falls through when v0(=ret(miClipSpans)) > 0 (signed).
  The `beq` branch at 0x4874a4 targets 0x488350 and is always taken.
  The `beq` branch at 0x487500 targets 0x4874ac, is taken when a1(?) == a2(?), and falls through when a1(?) != a2(?).
  The `beq` branch at 0x4875a0 targets 0x4874f0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `blez` branch at 0x4875a8 targets 0x4874f4, is taken when a6(?) <= 0 (signed), and falls through when a6(?) > 0 (signed).
  The `beq` branch at 0x4875b0 targets 0x487608 and is always taken.
  The `blez` branch at 0x4875fc targets 0x4874f0, is taken when a6(?) <= 0 (signed), and falls through when a6(?) > 0 (signed).
  The `beq` branch at 0x48766c targets 0x4877fc, is taken when ra(=0x3) == a1(?), and falls through when ra(=0x3) != a1(?).
  The `beq` branch at 0x487674 targets 0x4878e0, is taken when s2(=0x2) == a1(?), and falls through when s2(=0x2) != a1(?).
  The `beq` branch at 0x487684 targets 0x4876d8, is taken when a1(?) >= 0x3 (signed), and falls through when a1(?) < 0x3 (signed).
  The `beq` branch at 0x4876a4 targets 0x487758, is taken when a3(?) == ra(=0x3), and falls through when a3(?) != ra(=0x3).
  The `beq` branch at 0x4876ac targets 0x487ac8, is taken when a3(?) == s7(=0x6), and falls through when a3(?) != s7(=0x6).
  The `beq` branch at 0x4876c4 targets 0x487760, is taken when a3(?) >= 0x10 (unsigned), and falls through when a3(?) < 0x10 (unsigned).
  The `beq` branch at 0x48771c targets 0x487a90, is taken when a3(?) == ra(=0x3), and falls through when a3(?) != ra(=0x3).
  The `beq` branch at 0x487724 targets 0x4877a8, is taken when a3(?) == s7(=0x6), and falls through when a3(?) != s7(=0x6).
  The `beq` branch at 0x487740 targets 0x4877c0, is taken when a3(?) >= 0x10 (unsigned), and falls through when a3(?) < 0x10 (unsigned).
  The `beq` branch at 0x4877a0 targets 0x4875f8 and is always taken.
  The `beq` branch at 0x4877d0 targets 0x4875b8, is taken when a3(?) == s7(=0x6), and falls through when a3(?) != s7(=0x6).
  The `beq` branch at 0x4877e8 targets 0x4875d0, is taken when a3(?) >= 0x10 (unsigned), and falls through when a3(?) < 0x10 (unsigned).
  The `bne` branch at 0x487820 targets 0x48789c, is taken when t1(?) < 0x1f (signed), and falls through when t1(?) >= 0x1f (signed).
  The `beq` branch at 0x487840 targets 0x48785c, is taken when a7(=0x20) >= t0(?) (signed), and falls through when a7(=0x20) < t0(?) (signed).
  The `beq` branch at 0x48787c targets 0x4878c4, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x487894 targets 0x4878c4 and is always taken.
  The `beq` branch at 0x4878d8 targets 0x48767c and is always taken.
  The `beq` branch at 0x4878fc targets 0x48790c, is taken when a1(?) >= 0x3 (signed), and falls through when a1(?) < 0x3 (signed).
  The `beq` branch at 0x487904 targets 0x487944 and is always taken.
  The `beq` branch at 0x487964 targets 0x4879a4, is taken when t0(=0x1e) >= t1(?) (signed), and falls through when t0(=0x1e) < t1(?) (signed).
  The `bne` branch at 0x48797c targets 0x4879b8, is taken when at(?) < 0x21 (signed), and falls through when at(?) >= 0x21 (signed).
  The `beq` branch at 0x48799c targets 0x4879b8 and is always taken.
  The `beq` branch at 0x4879f8 targets 0x487ad8, is taken when v1(?) == a3(?), and falls through when v1(?) != a3(?).
  The `beq` branch at 0x487a3c targets 0x487b64, is taken when a2(?) >= 0x3 (signed), and falls through when a2(?) < 0x3 (signed).
  The `beq` branch at 0x487a58 targets 0x487bdc, is taken when at(?) == ra(=0x3), and falls through when at(?) != ra(=0x3).
  The `beq` branch at 0x487a60 targets 0x488038, is taken when at(?) == s7(=0x6), and falls through when at(?) != s7(=0x6).
  The `beq` branch at 0x487a6c targets 0x487bf0, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x487ac0 targets 0x4875d0 and is always taken.
  The `beq` branch at 0x487ad0 targets 0x487760 and is always taken.
  The `beq` branch at 0x487ae4 targets 0x487b20, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x487b04 targets 0x487b30, is taken when v1(?) < 0x21 (signed), and falls through when v1(?) >= 0x21 (signed).
  The `beq` branch at 0x487b18 targets 0x487b30 and is always taken.
  The `beq` branch at 0x487b54 targets 0x4876f0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x487b5c targets 0x4876a4 and is always taken.
  The `beq` branch at 0x487b84 targets 0x487cbc, is taken when v1(?) == ra(=0x3), and falls through when v1(?) != ra(=0x3).
  The `beq` branch at 0x487b8c targets 0x487c38, is taken when v1(?) == s7(=0x6), and falls through when v1(?) != s7(=0x6).
  The `beq` branch at 0x487ba8 targets 0x487c50, is taken when at(?) >= 0x10 (unsigned), and falls through when at(?) < 0x10 (unsigned).
  The `beq` branch at 0x487c30 targets 0x487ae0 and is always taken.
  The `beq` branch at 0x487c68 targets 0x48804c, is taken when at(?) == s7(=0x6), and falls through when at(?) != s7(=0x6).
  The `beq` branch at 0x487c88 targets 0x487ce0, is taken when at(?) >= 0x10 (unsigned), and falls through when at(?) < 0x10 (unsigned).
  The `beq` branch at 0x487d0c targets 0x487ae0 and is always taken.
  The `beq` branch at 0x487d14 targets 0x4877c0 and is always taken.
  The `beq` branch at 0x487d1c targets 0x4877c0 and is always taken.
  The `beq` branch at 0x487d30 targets 0x4877c0 and is always taken.
  The `beq` branch at 0x487d44 targets 0x4877c0 and is always taken.
  The `beq` branch at 0x487d54 targets 0x4877c0 and is always taken.
  The `beq` branch at 0x487d64 targets 0x4877c0 and is always taken.
  The `beq` branch at 0x487d6c targets 0x4877c0 and is always taken.
  The `beq` branch at 0x487d80 targets 0x4877c0 and is always taken.
  The `beq` branch at 0x487d90 targets 0x4877c0 and is always taken.
  The `beq` branch at 0x487da0 targets 0x4877c0 and is always taken.
  The `beq` branch at 0x487da8 targets 0x4877c0 and is always taken.
  The `beq` branch at 0x487dbc targets 0x4877c0 and is always taken.
  The `beq` branch at 0x487dd0 targets 0x4877c0 and is always taken.
  The `beq` branch at 0x487de0 targets 0x4877c0 and is always taken.
  The `beq` branch at 0x487de8 targets 0x4875d0 and is always taken.
  The `beq` branch at 0x487df0 targets 0x4875d0 and is always taken.
  The `beq` branch at 0x487e10 targets 0x4875d0 and is always taken.
  The `beq` branch at 0x487e30 targets 0x4875d0 and is always taken.
  The `beq` branch at 0x487e4c targets 0x4875d0 and is always taken.
  The `beq` branch at 0x487e68 targets 0x4875d0 and is always taken.
  The `beq` branch at 0x487e70 targets 0x4875d0 and is always taken.
  The `beq` branch at 0x487e90 targets 0x4875d0 and is always taken.
  The `beq` branch at 0x487eac targets 0x4875d0 and is always taken.
  The `beq` branch at 0x487ec8 targets 0x4875d0 and is always taken.
  The `beq` branch at 0x487ed0 targets 0x4875d0 and is always taken.
  The `beq` branch at 0x487ef0 targets 0x4875d0 and is always taken.
  The `beq` branch at 0x487f10 targets 0x4875d0 and is always taken.
  The `beq` branch at 0x487f2c targets 0x4875d0 and is always taken.
  The `beq` branch at 0x487f34 targets 0x487760 and is always taken.
  The `beq` branch at 0x487f40 targets 0x487760 and is always taken.
  The `beq` branch at 0x487f58 targets 0x487760 and is always taken.
  The `beq` branch at 0x487f70 targets 0x487760 and is always taken.
  The `beq` branch at 0x487f84 targets 0x487760 and is always taken.
  The `beq` branch at 0x487f9c targets 0x487760 and is always taken.
  The `beq` branch at 0x487fa4 targets 0x487760 and is always taken.
  The `beq` branch at 0x487fbc targets 0x487760 and is always taken.
  The `beq` branch at 0x487fd0 targets 0x487760 and is always taken.
  The `beq` branch at 0x487fe4 targets 0x487760 and is always taken.
  The `beq` branch at 0x487fec targets 0x487760 and is always taken.
  The `beq` branch at 0x488004 targets 0x487760 and is always taken.
  The `beq` branch at 0x48801c targets 0x487760 and is always taken.
  The `beq` branch at 0x488030 targets 0x487760 and is always taken.
  The `beq` branch at 0x488044 targets 0x487bf0 and is always taken.
  The `beq` branch at 0x488058 targets 0x487ce0 and is always taken.
  The `beq` branch at 0x488060 targets 0x487bf0 and is always taken.
  The `beq` branch at 0x488068 targets 0x487bf0 and is always taken.
  The `beq` branch at 0x488074 targets 0x487bf0 and is always taken.
  The `beq` branch at 0x488088 targets 0x487bf0 and is always taken.
  The `beq` branch at 0x488094 targets 0x487bf0 and is always taken.
  The `beq` branch at 0x4880a8 targets 0x487bf0 and is always taken.
  The `beq` branch at 0x4880b8 targets 0x487bf0 and is always taken.
  The `beq` branch at 0x4880cc targets 0x487bf0 and is always taken.
  The `beq` branch at 0x4880e0 targets 0x487bf0 and is always taken.
  The `beq` branch at 0x4880f4 targets 0x487bf0 and is always taken.
  The `beq` branch at 0x488100 targets 0x487bf0 and is always taken.
  The `beq` branch at 0x488114 targets 0x487bf0 and is always taken.
  The `beq` branch at 0x488128 targets 0x487bf0 and is always taken.
  The `beq` branch at 0x48813c targets 0x487bf0 and is always taken.
  The `beq` branch at 0x488144 targets 0x487c50 and is always taken.
  The `beq` branch at 0x48814c targets 0x487c50 and is always taken.
  The `beq` branch at 0x48815c targets 0x487c50 and is always taken.
  The `beq` branch at 0x488170 targets 0x487c50 and is always taken.
  The `beq` branch at 0x48817c targets 0x487c50 and is always taken.
  The `beq` branch at 0x488190 targets 0x487c50 and is always taken.
  The `beq` branch at 0x4881a0 targets 0x487c50 and is always taken.
  The `beq` branch at 0x4881b4 targets 0x487c50 and is always taken.
  The `beq` branch at 0x4881c8 targets 0x487c50 and is always taken.
  The `beq` branch at 0x4881dc targets 0x487c50 and is always taken.
  The `beq` branch at 0x4881e8 targets 0x487c50 and is always taken.
  The `beq` branch at 0x4881fc targets 0x487c50 and is always taken.
  The `beq` branch at 0x488210 targets 0x487c50 and is always taken.
  The `beq` branch at 0x488224 targets 0x487c50 and is always taken.
  The `beq` branch at 0x48822c targets 0x487ce0 and is always taken.
  The `beq` branch at 0x488234 targets 0x487ce0 and is always taken.
  The `beq` branch at 0x488244 targets 0x487ce0 and is always taken.
  The `beq` branch at 0x488258 targets 0x487ce0 and is always taken.
  The `beq` branch at 0x488264 targets 0x487ce0 and is always taken.
  The `beq` branch at 0x488278 targets 0x487ce0 and is always taken.
  The `beq` branch at 0x488288 targets 0x487ce0 and is always taken.
  The `beq` branch at 0x48829c targets 0x487ce0 and is always taken.
  The `beq` branch at 0x4882b0 targets 0x487ce0 and is always taken.
  The `beq` branch at 0x4882c4 targets 0x487ce0 and is always taken.
  The `beq` branch at 0x4882d0 targets 0x487ce0 and is always taken.
  The `beq` branch at 0x4882e4 targets 0x487ce0 and is always taken.
  The `beq` branch at 0x4882f8 targets 0x487ce0 and is always taken.
  The `beq` branch at 0x48830c targets 0x487ce0 and is always taken.
  The `beq` branch at 0x488314 targets 0x488348, is taken when a3(=[a1+5]:1) == t2(=0x1), and falls through when a3(=[a1+5]:1) != t2(=0x1).
  The `beq` branch at 0x48831c targets 0x488348, is taken when a3(=[a1+5]:1) == a5(=0x3), and falls through when a3(=[a1+5]:1) != a5(=0x3).
  The `beq` branch at 0x488324 targets 0x488348, is taken when a3(=[a1+5]:1) == a4(=0x5), and falls through when a3(=[a1+5]:1) != a4(=0x5).
  The `beq` branch at 0x48832c targets 0x488348, is taken when a3(=[a1+5]:1) == a6(=0x7), and falls through when a3(=[a1+5]:1) != a6(=0x7).
  The `beq` branch at 0x488338 targets 0x487374 and is always taken.
  The `beq` branch at 0x488340 targets 0x4873e0 and is always taken.
  The `beq` branch at 0x488348 targets 0x487374 and is always taken.
  The `beq` branch at 0x48835c targets 0x48750c and is always taken.
  The return at 0x4874dc has v0 = one of 0x129d00, [[[([a1+76] + ([0x5aa96c] << 0x2))]+8]+8], ?, ret(miClipSpans).
  The instructions from 0x48723c to 0x48723c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4874e4 to 0x4874ec are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x487a8c to 0x487a8c are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x4876d0 uses the jump table at 0x5a09a4 with targets 0x487f34, 0x488024, 0x48800c, 0x487760, 0x487ff4, 0x487fec, 0x487760, 0x487fd8, 0x487fc4, 0x487fac, 0x487fa4, 0x487f8c, 0x487f78, 0x487f60, 0x487f48, 0x487f3c.
  The indirect jump at 0x487750 uses the jump table at 0x5a09e4 with targets 0x487d14, 0x487dd8, 0x487dc4, 0x4877c0, 0x487db0, 0x487da8, 0x4877c0, 0x487d98, 0x487d88, 0x487d74, 0x487d6c, 0x487d5c, 0x487d4c, 0x487d38, 0x487d24, 0x487d1c.
  The indirect jump at 0x4877f4 uses the jump table at 0x5a0a24 with targets 0x487de8, 0x487f18, 0x487ef8, 0x4875d0, 0x487ed8, 0x487ed0, 0x4875d0, 0x487eb4, 0x487e98, 0x487e78, 0x487e70, 0x487e54, 0x487e38, 0x487e18, 0x487df8, 0x487df0.
  The indirect jump at 0x4877f4 uses the jump table at 0x5a0a24 with targets 0x487de8, 0x487f18, 0x487ef8, 0x4875d0, 0x487ed8, 0x487ed0, 0x4875d0, 0x487eb4, 0x487e98, 0x487e78, 0x487e70, 0x487e54, 0x487e38, 0x487e18, 0x487df8, 0x487df0.
  The indirect jump at 0x487a84 uses the jump table at 0x5a08e4 with targets 0x488060, 0x488130, 0x48811c, 0x487bf0, 0x488108, 0x4880fc, 0x487bf0, 0x4880e8, 0x4880d4, 0x4880c0, 0x4880b0, 0x48809c, 0x488090, 0x48807c, 0x488070, 0x488068.
  The indirect jump at 0x487bd4 uses the jump table at 0x5a0924 with targets 0x488144, 0x488218, 0x488204, 0x487c50, 0x4881f0, 0x4881e4, 0x487c50, 0x4881d0, 0x4881bc, 0x4881a8, 0x488198, 0x488184, 0x488178, 0x488164, 0x488154, 0x48814c.
  The indirect jump at 0x487cb4 uses the jump table at 0x5a0964 with targets 0x48822c, 0x488300, 0x4882ec, 0x487ce0, 0x4882d8, 0x4882cc, 0x487ce0, 0x4882b8, 0x4882a4, 0x488290, 0x488280, 0x48826c, 0x488260, 0x48824c, 0x48823c, 0x488234.
  The indirect jump at 0x487cb4 uses the jump table at 0x5a0964 with targets 0x48822c, 0x488300, 0x4882ec, 0x487ce0, 0x4882d8, 0x4882cc, 0x487ce0, 0x4882b8, 0x4882a4, 0x488290, 0x488280, 0x48826c, 0x488260, 0x48824c, 0x48823c, 0x488234.
  The indirect jump at 0x4876d0 uses the jump table at 0x5a09a4 with targets 0x487f34, 0x488024, 0x48800c, 0x487760, 0x487ff4, 0x487fec, 0x487760, 0x487fd8, 0x487fc4, 0x487fac, 0x487fa4, 0x487f8c, 0x487f78, 0x487f60, 0x487f48, 0x487f3c.
  The indirect jump at 0x487750 uses the jump table at 0x5a09e4 with targets 0x487d14, 0x487dd8, 0x487dc4, 0x4877c0, 0x487db0, 0x487da8, 0x4877c0, 0x487d98, 0x487d88, 0x487d74, 0x487d6c, 0x487d5c, 0x487d4c, 0x487d38, 0x487d24, 0x487d1c.
  The indirect jump at 0x4877f4 uses the jump table at 0x5a0a24 with targets 0x487de8, 0x487f18, 0x487ef8, 0x4875d0, 0x487ed8, 0x487ed0, 0x4875d0, 0x487eb4, 0x487e98, 0x487e78, 0x487e70, 0x487e54, 0x487e38, 0x487e18, 0x487df8, 0x487df0.
  The indirect jump at 0x487a84 uses the jump table at 0x5a08e4 with targets 0x488060, 0x488130, 0x48811c, 0x487bf0, 0x488108, 0x4880fc, 0x487bf0, 0x4880e8, 0x4880d4, 0x4880c0, 0x4880b0, 0x48809c, 0x488090, 0x48807c, 0x488070, 0x488068.
  The indirect jump at 0x487bd4 uses the jump table at 0x5a0924 with targets 0x488144, 0x488218, 0x488204, 0x487c50, 0x4881f0, 0x4881e4, 0x487c50, 0x4881d0, 0x4881bc, 0x4881a8, 0x488198, 0x488184, 0x488178, 0x488164, 0x488154, 0x48814c.
  The indirect jump at 0x487cb4 uses the jump table at 0x5a0964 with targets 0x48822c, 0x488300, 0x4882ec, 0x487ce0, 0x4882d8, 0x4882cc, 0x487ce0, 0x4882b8, 0x4882a4, 0x488290, 0x488280, 0x48826c, 0x488260, 0x48824c, 0x48823c, 0x488234.
  The indirect jump at 0x4876d0 uses the jump table at 0x5a09a4 with targets 0x487f34, 0x488024, 0x48800c, 0x487760, 0x487ff4, 0x487fec, 0x487760, 0x487fd8, 0x487fc4, 0x487fac, 0x487fa4, 0x487f8c, 0x487f78, 0x487f60, 0x487f48, 0x487f3c.
  The indirect jump at 0x487750 uses the jump table at 0x5a09e4 with targets 0x487d14, 0x487dd8, 0x487dc4, 0x4877c0, 0x487db0, 0x487da8, 0x4877c0, 0x487d98, 0x487d88, 0x487d74, 0x487d6c, 0x487d5c, 0x487d4c, 0x487d38, 0x487d24, 0x487d1c.
  The indirect jump at 0x4877f4 uses the jump table at 0x5a0a24 with targets 0x487de8, 0x487f18, 0x487ef8, 0x4875d0, 0x487ed8, 0x487ed0, 0x4875d0, 0x487eb4, 0x487e98, 0x487e78, 0x487e70, 0x487e54, 0x487e38, 0x487e18, 0x487df8, 0x487df0.
  The indirect jump at 0x487a84 uses the jump table at 0x5a08e4 with targets 0x488060, 0x488130, 0x48811c, 0x487bf0, 0x488108, 0x4880fc, 0x487bf0, 0x4880e8, 0x4880d4, 0x4880c0, 0x4880b0, 0x48809c, 0x488090, 0x48807c, 0x488070, 0x488068.
  The indirect jump at 0x487bd4 uses the jump table at 0x5a0924 with targets 0x488144, 0x488218, 0x488204, 0x487c50, 0x4881f0, 0x4881e4, 0x487c50, 0x4881d0, 0x4881bc, 0x4881a8, 0x488198, 0x488184, 0x488178, 0x488164, 0x488154, 0x48814c.
  The indirect jump at 0x487cb4 uses the jump table at 0x5a0964 with targets 0x48822c, 0x488300, 0x4882ec, 0x487ce0, 0x4882d8, 0x4882cc, 0x487ce0, 0x4882b8, 0x4882a4, 0x488290, 0x488280, 0x48826c, 0x488260, 0x48824c, 0x48823c, 0x488234.

- `cfb32LineSS1RectPreviousCopy` in `usr/lib/X11/dyDDX/crm.so` at 0x4984d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/crm.so`.
  Range: 0x4984d0-0x498ac0 (1520 bytes).
  It occupies 1520 bytes.
  The `lw` at 0x4984dc loads 4 bytes from abs 0x5aa888 (miZeroLineScreenIndex).
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x498500, `lw` at 0x498524.
  2 such `lw` accesses load 4 bytes from [a0+16] +0x1b4, including `lw` at 0x498504, `lw` at 0x498548.
  The `lw` at 0x49850c loads 4 bytes from ([[a0+16]+436] + ([0x5aa888] << 0x2)) +0x0.
  The `lh` at 0x498514 loads 2 bytes from a0 (arg0 at entry) +0xa.
  The `lbu` at 0x498518 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lw` at 0x49851c loads 4 bytes from abs 0x5aa960 (cfb32GCPrivateIndex).
  The `lw` at 0x498520 loads 4 bytes from a1 (arg1 at entry) +0x4c.
  The `lw` at 0x498530 loads 4 bytes from abs 0x5aa964 (cfb32ScreenPrivateIndex).
  The `lw` at 0x49853c loads 4 bytes from ([a1+76] + ([0x5aa960] << 0x2)) +0x0.
  The `lw` at 0x498558 loads 4 bytes from ([[a0+16]+436] + ([0x5aa964] << 0x2)) +0x0.
  The `lh` at 0x498564 loads 2 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x49856c loads 4 bytes from a7 (arg7 at entry) +0x0.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x498570, `lw` at 0x498634, `lw` at 0x498738.
  The `lw` at 0x498574 loads 4 bytes from [([a1+76] + ([0x5aa960] << 0x2))] +0x8.
  The `lh` at 0x498580 loads 2 bytes from [[([a1+76] + ([0x5aa960] << 0x2))]+8] +0x2.
  The `lh` at 0x498584 loads 2 bytes from [[([a1+76] + ([0x5aa960] << 0x2))]+8] +0x4.
  The `lh` at 0x498588 loads 2 bytes from [[([a1+76] + ([0x5aa960] << 0x2))]+8] +0x0.
  The `lh` at 0x49858c loads 2 bytes from [[([a1+76] + ([0x5aa960] << 0x2))]+8] +0x6.
  The `lw` at 0x498590 loads 4 bytes from a6 (arg6 at entry) +0x0.
  The `lw` at 0x4985b0 loads 4 bytes from [([a1+76] + ([0x5aa960] << 0x2))] +0xc.
  2 such `lw` accesses load 4 bytes from a4 (arg4 at entry) +0x4, including `lw` at 0x498698, `lw` at 0x498abc.
  12 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4986b0, `sw` at 0x4986cc, `sw` at 0x4986e8.
  The `sw` at 0x4989e8 stores 4 bytes to a7 (arg7 at entry) +0x0.
  The `sw` at 0x498a00 stores 4 bytes to a6 (arg6 at entry) +0x0.
  The `lw` at 0x498a48 loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `lh` at 0x498a74 loads 2 bytes from a5 (arg5 at entry) +0x0.
  The `lh` at 0x498a78 loads 2 bytes from a5 (arg5 at entry) +0x2.
  The `bltz` branch at 0x4984f8 targets 0x498a04, is taken when t2(=[0x5aa888]) < 0 (signed), and falls through when t2(=[0x5aa888]) >= 0 (signed).
  The `beq` branch at 0x498538 targets 0x498a0c, is taken when t0(=0x1) == t1(=[a0]:1), and falls through when t0(=0x1) != t1(=[a0]:1).
  The `bne` branch at 0x4985d4 targets 0x498694, is taken when gp(=[a6]) < ra(?) (signed), and falls through when gp(=[a6]) >= ra(?) (signed).
  The `beq` branch at 0x4985f0 targets 0x498694, is taken when gp(=[a6]) >= v1(?) (signed), and falls through when gp(=[a6]) < v1(?) (signed).
  The `bne` branch at 0x498600 targets 0x498694, is taken when s8(=[a7]) < a0(?) (signed), and falls through when s8(=[a7]) >= a0(?) (signed).
  The `beq` branch at 0x498610 targets 0x498694, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x49865c targets 0x498a20, is taken when v0(=a3) == a2(=0x1), and falls through when v0(=a3) != a2(=0x1).
  The `beq` branch at 0x49868c targets 0x498ab0 and is always taken.
  The `beq` branch at 0x498730 targets 0x498974, is taken when ra(?) == a0(=((a3-1 << 0x2) + a4)+8), and falls through when ra(?) != a0(=((a3-1 << 0x2) + a4)+8).
  The `bne` branch at 0x49877c targets 0x498984, is taken when gp(?) < a1(?) (signed), and falls through when gp(?) >= a1(?) (signed).
  The `beq` branch at 0x498784 targets 0x498984, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x49878c targets 0x498984, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x498798 targets 0x498984, is taken when s1(?) >= a1(?) (signed), and falls through when s1(?) < a1(?) (signed).
  The `bltz` branch at 0x498834 targets 0x4988fc, is taken when s3(?) < 0 (signed), and falls through when s3(?) >= 0 (signed).
  The `bne` branch at 0x4988e4 targets 0x498860, is taken when t3(?) != t8(?), and falls through when t3(?) == t8(?).
  The `beq` branch at 0x498918 targets 0x49893c, is taken when v0(?) == a5(=0x3), and falls through when v0(?) != a5(=0x3).
  The `beq` branch at 0x498920 targets 0x4986dc, is taken when v0(?) == a0(=0x2), and falls through when v0(?) != a0(=0x2).
  The `bne` branch at 0x498928 targets 0x49872c, is taken when v0(?) != a2(=0x1), and falls through when v0(?) == a2(=0x1).
  The `beq` branch at 0x498934 targets 0x49870c and is always taken.
  The `beq` branch at 0x49896c targets 0x4986e0 and is always taken.
  The `beq` branch at 0x4989ac targets 0x498a3c, is taken when v1(=0x1) == a0(?), and falls through when v1(=0x1) != a0(?).
  The `beq` branch at 0x498a04 targets 0x498514 and is always taken.
  The `beq` branch at 0x498a18 targets 0x49855c and is always taken.
  The `beq` branch at 0x498a68 targets 0x498a98, is taken when (t0(?) & 0x3) == 0, and falls through when (t0(?) & 0x3) != 0.
  The `bne` branch at 0x498a7c targets 0x498a94, is taken when a2(=[a5]:2) != gp(?), and falls through when a2(=[a5]:2) == gp(?).
  The `bne` branch at 0x498a84 targets 0x498a94, is taken when a0(=[a5+2]:2) != s8(?), and falls through when a0(=[a5+2]:2) == s8(?).
  The `bne` branch at 0x498a8c targets 0x498a9c, is taken when ra(?) != a1(=a5+8), and falls through when ra(?) == a1(=a5+8).
  The `beq` branch at 0x498ab8 targets 0x49873c and is always taken.
  The return at 0x4986d4 has v0 = 0x1.
  The return at 0x4989fc has v0 = ?.
  The return at 0x498aa8 has v0 = -0x1.

- `cfb16LineSS1RectPreviousCopy` in `usr/lib/X11/dyDDX/crm.so` at 0x498ac0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/crm.so`.
  Range: 0x498ac0-0x4990b8 (1528 bytes).
  It occupies 1528 bytes.
  The `lw` at 0x498acc loads 4 bytes from abs 0x5aa888 (miZeroLineScreenIndex).
  The `lw` at 0x498ae4 loads 4 bytes from abs 0x5aa970 (cfb16ScreenPrivateIndex).
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x498af0, `lw` at 0x498b14.
  2 such `lw` accesses load 4 bytes from [a0+16] +0x1b4, including `lw` at 0x498af4, `lw` at 0x498b30.
  The `lw` at 0x498afc loads 4 bytes from ([[a0+16]+436] + ([0x5aa888] << 0x2)) +0x0.
  The `lbu` at 0x498b08 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lw` at 0x498b0c loads 4 bytes from abs 0x5aa96c (cfb16GCPrivateIndex).
  The `lw` at 0x498b10 loads 4 bytes from a1 (arg1 at entry) +0x4c.
  The `lh` at 0x498b1c loads 2 bytes from a0 (arg0 at entry) +0xa.
  The `lw` at 0x498b28 loads 4 bytes from ([a1+76] + ([0x5aa96c] << 0x2)) +0x0.
  The `lw` at 0x498b40 loads 4 bytes from ([[a0+16]+436] + ([0x5aa970] << 0x2)) +0x0.
  The `lh` at 0x498b4c loads 2 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x498b54 loads 4 bytes from a7 (arg7 at entry) +0x0.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x498b58, `lw` at 0x498c24, `lw` at 0x498d2c.
  The `lw` at 0x498b6c loads 4 bytes from [([a1+76] + ([0x5aa96c] << 0x2))] +0x8.
  The `lw` at 0x498b70 loads 4 bytes from a6 (arg6 at entry) +0x0.
  The `lh` at 0x498b74 loads 2 bytes from [[([a1+76] + ([0x5aa96c] << 0x2))]+8] +0x4.
  The `lh` at 0x498b78 loads 2 bytes from [[([a1+76] + ([0x5aa96c] << 0x2))]+8] +0x2.
  The `lh` at 0x498b7c loads 2 bytes from [[([a1+76] + ([0x5aa96c] << 0x2))]+8] +0x0.
  The `lh` at 0x498b80 loads 2 bytes from [[([a1+76] + ([0x5aa96c] << 0x2))]+8] +0x6.
  The `lw` at 0x498ba4 loads 4 bytes from [([a1+76] + ([0x5aa96c] << 0x2))] +0xc.
  2 such `lw` accesses load 4 bytes from a4 (arg4 at entry) +0x4, including `lw` at 0x498c98, `lw` at 0x4990b4.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0x498cac, `sw` at 0x498cc4, `sw` at 0x498fdc.
  8 such `sh` accesses store 2 bytes to ?, including `sh` at 0x498ce0, `sh` at 0x498d08, `sh` at 0x498e60.
  The `sw` at 0x498fe0 stores 4 bytes to a7 (arg7 at entry) +0x0.
  The `sw` at 0x498ff8 stores 4 bytes to a6 (arg6 at entry) +0x0.
  The `lw` at 0x499044 loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `lh` at 0x499070 loads 2 bytes from a5 (arg5 at entry) +0x0.
  The `lh` at 0x499074 loads 2 bytes from a5 (arg5 at entry) +0x2.
  The `bltz` branch at 0x498ae8 targets 0x498ffc, is taken when t3(=[0x5aa888]) < 0 (signed), and falls through when t3(=[0x5aa888]) >= 0 (signed).
  The `beq` branch at 0x498b24 targets 0x499004, is taken when t0(=0x1) == t1(=[a0]:1), and falls through when t0(=0x1) != t1(=[a0]:1).
  The `bne` branch at 0x498bc4 targets 0x498c94, is taken when s7(=[a6]) < ra(?) (signed), and falls through when s7(=[a6]) >= ra(?) (signed).
  The `beq` branch at 0x498be0 targets 0x498c94, is taken when s7(=[a6]) >= v1(?) (signed), and falls through when s7(=[a6]) < v1(?) (signed).
  The `bne` branch at 0x498bf0 targets 0x498c94, is taken when gp(=[a7]) < a0(?) (signed), and falls through when gp(=[a7]) >= a0(?) (signed).
  The `beq` branch at 0x498c00 targets 0x498c94, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x498c58 targets 0x499014, is taken when v0(=a3) == t0(=0x1), and falls through when v0(=a3) != t0(=0x1).
  The `beq` branch at 0x498c8c targets 0x4990a8 and is always taken.
  The `beq` branch at 0x498d24 targets 0x498f6c, is taken when ra(?) == t2(=((a3-1 << 0x2) + a4)+8), and falls through when ra(?) != t2(=((a3-1 << 0x2) + a4)+8).
  The `bne` branch at 0x498d7c targets 0x498f7c, is taken when t2(?) < gp(?) (signed), and falls through when t2(?) >= gp(?) (signed).
  The `beq` branch at 0x498d84 targets 0x498f7c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x498d8c targets 0x498f7c, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x498d94 targets 0x498f7c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bltz` branch at 0x498e38 targets 0x498ef8, is taken when s3(?) < 0 (signed), and falls through when s3(?) >= 0 (signed).
  The `bne` branch at 0x498ee4 targets 0x498e60, is taken when t3(?) != t8(?), and falls through when t3(?) == t8(?).
  The `beq` branch at 0x498f14 targets 0x498f34, is taken when v0(?) == a5(=0x3), and falls through when v0(?) != a5(=0x3).
  The `beq` branch at 0x498f1c targets 0x498cd4, is taken when v0(?) == a0(=0x2), and falls through when v0(?) != a0(=0x2).
  The `bne` branch at 0x498f24 targets 0x498d1c, is taken when v0(?) != a2(=0x1), and falls through when v0(?) == a2(=0x1).
  The `beq` branch at 0x498f2c targets 0x498d04 and is always taken.
  The `beq` branch at 0x498f64 targets 0x498cd8 and is always taken.
  The `beq` branch at 0x498fa4 targets 0x499034, is taken when v1(=0x1) == a0(?), and falls through when v1(=0x1) != a0(?).
  The `beq` branch at 0x498ffc targets 0x498b04 and is always taken.
  The `beq` branch at 0x49900c targets 0x498b44 and is always taken.
  The `beq` branch at 0x499064 targets 0x499094, is taken when (t0(?) & 0x3) == 0, and falls through when (t0(?) & 0x3) != 0.
  The `bne` branch at 0x499078 targets 0x499090, is taken when a2(=[a5]:2) != s7(?), and falls through when a2(=[a5]:2) == s7(?).
  The `bne` branch at 0x499080 targets 0x499090, is taken when a0(=[a5+2]:2) != gp(?), and falls through when a0(=[a5+2]:2) == gp(?).
  The `bne` branch at 0x499088 targets 0x499098, is taken when ra(?) != a1(=a5+8), and falls through when ra(?) == a1(=a5+8).
  The `beq` branch at 0x4990b0 targets 0x498d30 and is always taken.
  The return at 0x498ccc has v0 = 0x1.
  The return at 0x498ff4 has v0 = ?.
  The return at 0x4990a0 has v0 = -0x1.

- `cfb8LineSS1RectPreviousCopy` in `usr/lib/X11/dyDDX/crm.so` at 0x4990c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/crm.so`.
  Range: 0x4990c0-0x499674 (1460 bytes).
  It occupies 1460 bytes.
  The `lw` at 0x4990cc loads 4 bytes from abs 0x5aa888 (miZeroLineScreenIndex).
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x4990f0, `lw` at 0x499118.
  The `lw` at 0x4990f4 loads 4 bytes from [a0+16] +0x1b4.
  The `lw` at 0x4990fc loads 4 bytes from ([[a0+16]+436] + ([0x5aa888] << 0x2)) +0x0.
  The `lh` at 0x499108 loads 2 bytes from a0 (arg0 at entry) +0xa.
  The `lbu` at 0x49910c loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lw` at 0x499110 loads 4 bytes from abs 0x5aa8b8 (cfbGCPrivateIndex).
  The `lw` at 0x499114 loads 4 bytes from a1 (arg1 at entry) +0x4c.
  The `lh` at 0x499124 loads 2 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x499130 loads 4 bytes from ([a1+76] + ([0x5aa8b8] << 0x2)) +0x0.
  The `lw` at 0x499134 loads 4 bytes from [a0+16] +0x74.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x499144, `lw` at 0x499208, `lw` at 0x499300.
  The `lw` at 0x499154 loads 4 bytes from [([a1+76] + ([0x5aa8b8] << 0x2))] +0xc.
  The `lw` at 0x49915c loads 4 bytes from [([a1+76] + ([0x5aa8b8] << 0x2))] +0x8.
  The `lw` at 0x499160 loads 4 bytes from a6 (arg6 at entry) +0x0.
  The `lh` at 0x499164 loads 2 bytes from [[([a1+76] + ([0x5aa8b8] << 0x2))]+8] +0x4.
  The `lh` at 0x499168 loads 2 bytes from [[([a1+76] + ([0x5aa8b8] << 0x2))]+8] +0x2.
  The `lh` at 0x49916c loads 2 bytes from [[([a1+76] + ([0x5aa8b8] << 0x2))]+8] +0x0.
  The `lh` at 0x499170 loads 2 bytes from [[([a1+76] + ([0x5aa8b8] << 0x2))]+8] +0x6.
  The `lw` at 0x499190 loads 4 bytes from a7 (arg7 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from a4 (arg4 at entry) +0x4, including `lw` at 0x499270, `lw` at 0x499670.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0x499284, `sw` at 0x49929c, `sw` at 0x499598.
  8 such `sb` accesses store 1 byte to ?, including `sb` at 0x4992b4, `sb` at 0x4992dc, `sb` at 0x499420.
  The `sw` at 0x49959c stores 4 bytes to a7 (arg7 at entry) +0x0.
  The `sw` at 0x4995b4 stores 4 bytes to a6 (arg6 at entry) +0x0.
  The `lw` at 0x4995fc loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `lh` at 0x499628 loads 2 bytes from a5 (arg5 at entry) +0x0.
  The `lh` at 0x49962c loads 2 bytes from a5 (arg5 at entry) +0x2.
  The `bltz` branch at 0x4990e8 targets 0x4995b8, is taken when t1(=[0x5aa888]) < 0 (signed), and falls through when t1(=[0x5aa888]) >= 0 (signed).
  The `beq` branch at 0x49912c targets 0x4995c0, is taken when a6(=0x1) == t0(=[a0]:1), and falls through when a6(=0x1) != t0(=[a0]:1).
  The `bne` branch at 0x4991b0 targets 0x499264, is taken when gp(=[a6]) < t3(?) (signed), and falls through when gp(=[a6]) >= t3(?) (signed).
  The `beq` branch at 0x4991c8 targets 0x499264, is taken when gp(=[a6]) >= v1(?) (signed), and falls through when gp(=[a6]) < v1(?) (signed).
  The `bne` branch at 0x4991dc targets 0x499264, is taken when s8(=[a7]) < a0(?) (signed), and falls through when s8(=[a7]) >= a0(?) (signed).
  The `beq` branch at 0x4991ec targets 0x499264, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x49922c targets 0x4995d4, is taken when v0(=a3) == a2(=0x1), and falls through when v0(=a3) != a2(=0x1).
  The `beq` branch at 0x49925c targets 0x499664 and is always taken.
  The `beq` branch at 0x4992f8 targets 0x499528, is taken when ra(?) == t2(=((a3-1 << 0x2) + a4)+8), and falls through when ra(?) != t2(=((a3-1 << 0x2) + a4)+8).
  The `bne` branch at 0x499344 targets 0x499538, is taken when gp(?) < t3(?) (signed), and falls through when gp(?) >= t3(?) (signed).
  The `beq` branch at 0x49934c targets 0x499538, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x49935c targets 0x499538, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x499368 targets 0x499538, is taken when s1(?) >= a1(?) (signed), and falls through when s1(?) < a1(?) (signed).
  The `bltz` branch at 0x499400 targets 0x4994bc, is taken when s3(?) < 0 (signed), and falls through when s3(?) >= 0 (signed).
  The `bne` branch at 0x4994a4 targets 0x499420, is taken when t3(?) != t8(?), and falls through when t3(?) == t8(?).
  The `beq` branch at 0x4994d8 targets 0x4994f8, is taken when v0(?) == a5(=0x3), and falls through when v0(?) != a5(=0x3).
  The `beq` branch at 0x4994e0 targets 0x4992ac, is taken when v0(?) == a0(=0x2), and falls through when v0(?) != a0(=0x2).
  The `bne` branch at 0x4994e8 targets 0x4992f4, is taken when v0(?) != a2(=0x1), and falls through when v0(?) == a2(=0x1).
  The `beq` branch at 0x4994f0 targets 0x4992d8 and is always taken.
  The `beq` branch at 0x499520 targets 0x4992b0 and is always taken.
  The `beq` branch at 0x499560 targets 0x4995f0, is taken when v1(=0x1) == a0(?), and falls through when v1(=0x1) != a0(?).
  The `beq` branch at 0x4995b8 targets 0x499104 and is always taken.
  The `beq` branch at 0x4995cc targets 0x499144 and is always taken.
  The `beq` branch at 0x49961c targets 0x49964c, is taken when (t0(?) & 0x3) == 0, and falls through when (t0(?) & 0x3) != 0.
  The `bne` branch at 0x499630 targets 0x499648, is taken when a2(=[a5]:2) != gp(?), and falls through when a2(=[a5]:2) == gp(?).
  The `bne` branch at 0x499638 targets 0x499648, is taken when a0(=[a5+2]:2) != s8(?), and falls through when a0(=[a5+2]:2) == s8(?).
  The `bne` branch at 0x499640 targets 0x499650, is taken when ra(?) != a1(=a5+8), and falls through when ra(?) == a1(=a5+8).
  The `beq` branch at 0x49966c targets 0x499304 and is always taken.
  The return at 0x4992a4 has v0 = 0x1.
  The return at 0x4995b0 has v0 = ?.
  The return at 0x49965c has v0 = -0x1.

- `cfb32DoBitbltGeneral` in `usr/lib/X11/dyDDX/crm.so` at 0x4ad5d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/crm.so`.
  Range: 0x4ad5d0-0x4ae324 (3412 bytes).
  It occupies 3412 bytes.
  The `lbu` at 0x4ad5fc loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lw` at 0x4ad604 loads 4 bytes from table(0x5b4bc4) +0x0.
  The `lw` at 0x4ad608 loads 4 bytes from table(0x5b4bc0) +0x0.
  The `lw` at 0x4ad610 loads 4 bytes from table(0x5b4bbc) +0x0.
  The `lw` at 0x4ad618 loads 4 bytes from table(0x5b4bb8) +0x0.
  The `lw` at 0x4ad638 loads 4 bytes from a0 (arg0 at entry) +0x10.
  2 such `lw` accesses load 4 bytes from abs 0x5aa964 (cfb32ScreenPrivateIndex), including `lw` at 0x4ad63c, `lw` at 0x4ad674.
  The `lw` at 0x4ad640 loads 4 bytes from [a0+16] +0x1b4.
  The `lw` at 0x4ad64c loads 4 bytes from ([[a0+16]+436] + ([0x5aa964] << 0x2)) +0x0.
  68 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4ad650, `lw` at 0x4ad658, `lw` at 0x4ad688.
  The `lbu` at 0x4ad654 loads 1 byte from a1 (arg1 at entry) +0x0.
  The `lw` at 0x4ad670 loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `lw` at 0x4ad678 loads 4 bytes from [a1+16] +0x1b4.
  The `lw` at 0x4ad684 loads 4 bytes from ([[a1+16]+436] + ([0x5aa964] << 0x2)) +0x0.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lw` at 0x4ad6a8, `lw` at 0x4ad738.
  2 such `lw` accesses load 4 bytes from [a3+8] +0x4, including `lw` at 0x4ad6c4, `lw` at 0x4ad75c.
  The `lh` at 0x4ad73c loads 2 bytes from a4 (arg4 at entry) +0x2.
  The `lh` at 0x4ad74c loads 2 bytes from [a3+8] +0xa.
  24 such `lh` accesses load 2 bytes from ?, including `lh` at 0x4ad804, `lh` at 0x4ad818, `lh` at 0x4ad81c.
  The `lh` at 0x4ad940 loads 2 bytes from a3 (arg3 at entry) +0x2.
  The `lh` at 0x4ad944 loads 2 bytes from a3 (arg3 at entry) +0x0.
  The `lh` at 0x4ad948 loads 2 bytes from a4 (arg4 at entry) +0x0.
  12 such `sh` accesses store 2 bytes to ?, including `sh` at 0x4ada50, `sh` at 0x4ada58, `sh` at 0x4ada60.
  7 such `lw` accesses load 4 bytes from abs 0x5a8f44, including `lw` at 0x4adc08, `lw` at 0x4ade50, `lw` at 0x4ade80.
  32 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4adc34, `sw` at 0x4adc58, `sw` at 0x4adc7c.
  The `lw` at 0x4ae2f4 loads 4 bytes from table(0x5a0ffc) +0x0.
  The `beq` branch at 0x4ad630 targets 0x4ad8b0, is taken when v0(=0x1) == t8(=[a0]:1), and falls through when v0(=0x1) != t8(=[a0]:1).
  The `beq` branch at 0x4ad668 targets 0x4ad8b8, is taken when t9(=0x1) == a7(=[a1]:1), and falls through when t9(=0x1) != a7(=[a1]:1).
  The `beq` branch at 0x4ad698 targets 0x4ad738, is taken when a0 == a1, and falls through when a0 != a1.
  The `beq` branch at 0x4ad6a0 targets 0x4ad730, is taken when t8(=[a0]:1) == 0, and falls through when t8(=[a0]:1) != 0.
  The `beq` branch at 0x4ad6b0 targets 0x4ad934, is taken when a0(=[a3+8]) == 0, and falls through when a0(=[a3+8]) != 0.
  The `blez` branch at 0x4ad6d8 targets 0x4ad9d4, is taken when v1(=[[a3+8]+4]) <= 0 (signed), and falls through when v1(=[[a3+8]+4]) > 0 (signed).
  The `beq` branch at 0x4ad728 targets 0x4ae310 and is always taken.
  The `bne` branch at 0x4ad730 targets 0x4ad6a8, is taken when a7(=[a1]:1) != 0, and falls through when a7(=[a1]:1) == 0.
  The `beq` branch at 0x4ad744 targets 0x4ad940, is taken when a0(=[a3+8]) == 0, and falls through when a0(=[a3+8]) != 0.
  The `beq` branch at 0x4ad758 targets 0x4ad810, is taken when a1(=[a4+2]:2) >= t8(=[[a3+8]+10]:2) (signed), and falls through when a1(=[a4+2]:2) < t8(=[[a3+8]+10]:2) (signed).
  The `bne` branch at 0x4ad778 targets 0x4ad928, is taken when s4(=[[a3+8]+4]) < 0x2 (signed), and falls through when s4(=[[a3+8]+4]) >= 0x2 (signed).
  The `beq` branch at 0x4ad7ac targets 0x4ad9d4, is taken when sp(?) == 0, and falls through when sp(?) != 0.
  The `beq` branch at 0x4ad7e0 targets 0x4ad9d4, is taken when sp(?) == 0, and falls through when sp(?) != 0.
  The `bne` branch at 0x4ad7f8 targets 0x4ad91c, is taken when t8(=(([[a3+8]+4] << 0x3) + [a3+8]+8)-8) < s3(=[a3+8]+8) (unsigned), and falls through when t8(=(([[a3+8]+4] << 0x3) + [a3+8]+8)-8) >= s3(=[a3+8]+8) (unsigned).
  The `beq` branch at 0x4ad808 targets 0x4ad8cc and is always taken.
  The `beq` branch at 0x4ad824 targets 0x4adb70, is taken when v0(?) >= v1(?) (signed), and falls through when v0(?) < v1(?) (signed).
  The `bne` branch at 0x4ad830 targets 0x4ad9b4, is taken when s4(=[[a3+8]+4]) < 0x2 (signed), and falls through when s4(=[[a3+8]+4]) >= 0x2 (signed).
  The `beq` branch at 0x4ad87c targets 0x4ad9d4, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x4ad890 targets 0x4ad9d4, is taken when sp(?) == 0, and falls through when sp(?) != 0.
  The `blez` branch at 0x4ad898 targets 0x4ad99c, is taken when s5(=([[a3+8]+4] << 0x3)) <= 0 (signed), and falls through when s5(=([[a3+8]+4] << 0x3)) > 0 (signed).
  The `beq` branch at 0x4ad8a8 targets 0x4adb50 and is always taken.
  The `beq` branch at 0x4ad8b0 targets 0x4ad650 and is always taken.
  The `beq` branch at 0x4ad8b8 targets 0x4ad688 and is always taken.
  The `bne` branch at 0x4ad8c4 targets 0x4ad8dc, is taken when a6(?) != a0(?), and falls through when a6(?) == a0(?).
  The `beq` branch at 0x4ad8d4 targets 0x4ad8c0, is taken when t8(?) >= s3(=[a3+8]+8) (unsigned), and falls through when t8(?) < s3(=[a3+8]+8) (unsigned).
  The `beq` branch at 0x4ad8e4 targets 0x4ada28, is taken when a3(?) >= a6(?) (unsigned), and falls through when a3(?) < a6(?) (unsigned).
  The `beq` branch at 0x4ad914 targets 0x4ad800, is taken when s0(?) >= s3(=[a3+8]+8) (unsigned), and falls through when s0(?) < s3(=[a3+8]+8) (unsigned).
  The `beq` branch at 0x4ad92c targets 0x4ad818 and is always taken.
  The `beq` branch at 0x4ad938 targets 0x4ad6e0 and is always taken.
  The `beq` branch at 0x4ad958 targets 0x4ada0c, is taken when a1(=[a4+2]:2) >= a5(=[a3+2]:2) (signed), and falls through when a1(=[a4+2]:2) < a5(=[a3+2]:2) (signed).
  The `beq` branch at 0x4ad990 targets 0x4ad6f0 and is always taken.
  The `bgtz` branch at 0x4ad9cc targets 0x4ad6f0, is taken when s4(=[[a3+8]+4]) > 0 (signed), and falls through when s4(=[[a3+8]+4]) <= 0 (signed).
  The `beq` branch at 0x4ada20 targets 0x4ad6f0 and is always taken.
  The `beq` branch at 0x4ada90 targets 0x4ada4c, is taken when a3(?) >= a6(?) (unsigned), and falls through when a3(?) < a6(?) (unsigned).
  The `beq` branch at 0x4ada9c targets 0x4ad8ec and is always taken.
  The `bne` branch at 0x4adab4 targets 0x4adacc, is taken when a3(?) != a0(?), and falls through when a3(?) == a0(?).
  The `bne` branch at 0x4adac4 targets 0x4adab0, is taken when t8(?) < ra(?) (unsigned), and falls through when t8(?) >= ra(?) (unsigned).
  The `beq` branch at 0x4adad0 targets 0x4adb38, is taken when t9(?) == t8(?), and falls through when t9(?) != t8(?).
  The `bne` branch at 0x4adb30 targets 0x4adaf0, is taken when t9(?) != t8(?), and falls through when t9(?) == t8(?).
  The `beq` branch at 0x4adb48 targets 0x4ad998, is taken when s0(?) >= ra(?) (unsigned), and falls through when s0(?) < ra(?) (unsigned).
  The `beq` branch at 0x4adb50 targets 0x4adb64, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x4adb5c targets 0x4adabc and is always taken.
  The `beq` branch at 0x4adb68 targets 0x4adac8 and is always taken.
  The `beq` branch at 0x4adb70 targets 0x4ad9b8 and is always taken.
  The `blez` branch at 0x4adb98 targets 0x4aded0, is taken when s2(?) <= 0 (signed), and falls through when s2(?) > 0 (signed).
  The `beq` branch at 0x4adc0c targets 0x4ae300 and is always taken.
  The `bltz` branch at 0x4add10 targets 0x4ade4c, is taken when s4(?) < 0 (signed), and falls through when s4(?) >= 0 (signed).
  The `bne` branch at 0x4ade44 targets 0x4add20, is taken when a1(?) != a6(?), and falls through when a1(?) == a6(?).
  The `beq` branch at 0x4ade4c targets 0x4ade84, is taken when t9(=one of -0x1, 0x0) == 0, and falls through when t9(=one of -0x1, 0x0) != 0.
  The `beq` branch at 0x4ade9c targets 0x4adec8, is taken when s1(?) == s2(?), and falls through when s1(?) != s2(?).
  The `beq` branch at 0x4adeb4 targets 0x4add10, is taken when s3(?) >= 0x8 (unsigned), and falls through when s3(?) < 0x8 (unsigned).
  The `beq` branch at 0x4adec8 targets 0x4aded4 and is always taken.
  The `beq` branch at 0x4adedc targets 0x4ad9d4, is taken when a3(?) == v1(?), and falls through when a3(?) != v1(?).
  The `beq` branch at 0x4adfd0 targets 0x4adb78, is taken when v0(=one of -0x1, 0x1) == v1(=0x1), and falls through when v0(=one of -0x1, 0x1) != v1(=0x1).
  The `blez` branch at 0x4adfe0 targets 0x4aded0, is taken when s2(?) <= 0 (signed), and falls through when s2(?) > 0 (signed).
  The `beq` branch at 0x4ae02c targets 0x4ae308 and is always taken.
  The `bltz` branch at 0x4ae13c targets 0x4ae280, is taken when s4(?) < 0 (signed), and falls through when s4(?) >= 0 (signed).
  The `bne` branch at 0x4ae274 targets 0x4ae150, is taken when a0(?) != a6(?), and falls through when a0(?) == a6(?).
  The `beq` branch at 0x4ae288 targets 0x4aded0, is taken when a7(?) == s2(?), and falls through when a7(?) != s2(?).
  The `beq` branch at 0x4ae298 targets 0x4ae2d4, is taken when t9(=one of -0x1, 0x0) == 0, and falls through when t9(=one of -0x1, 0x0) != 0.
  The `beq` branch at 0x4ae2ec targets 0x4ae13c, is taken when s3(?) >= 0x8 (unsigned), and falls through when s3(?) < 0x8 (unsigned).
  The `beq` branch at 0x4ae300 targets 0x4adea8 and is always taken.
  The `beq` branch at 0x4ae308 targets 0x4ae294 and is always taken.
  The `beq` branch at 0x4ae31c targets 0x4adee8 and is always taken.
  The return at 0x4ada04 has v0 = s8.
  The instructions from 0x4adaa4 to 0x4adaac are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4ae034 to 0x4ae03c are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x4adec0 uses the jump table at 0x5a0fdc with targets 0x4add10, 0x4adcec, 0x4adcc8, 0x4adca4, 0x4adc80, 0x4adc5c, 0x4adc38, 0x4adc14.
  The indirect jump at 0x4adec0 uses the jump table at 0x5a0fdc with targets 0x4add10, 0x4adcec, 0x4adcc8, 0x4adca4, 0x4adc80, 0x4adc5c, 0x4adc38, 0x4adc14.
  The indirect jump at 0x4adec0 uses the jump table at 0x5a0fdc with targets 0x4add10, 0x4adcec, 0x4adcc8, 0x4adca4, 0x4adc80, 0x4adc5c, 0x4adc38, 0x4adc14.
  The indirect jump at 0x4adec0 uses the jump table at 0x5a0fdc with targets 0x4add10, 0x4adcec, 0x4adcc8, 0x4adca4, 0x4adc80, 0x4adc5c, 0x4adc38, 0x4adc14.
  The indirect jump at 0x4adec0 uses the jump table at 0x5a0fdc with targets 0x4add10, 0x4adcec, 0x4adcc8, 0x4adca4, 0x4adc80, 0x4adc5c, 0x4adc38, 0x4adc14.
  The indirect jump at 0x4adec0 uses the jump table at 0x5a0fdc with targets 0x4add10, 0x4adcec, 0x4adcc8, 0x4adca4, 0x4adc80, 0x4adc5c, 0x4adc38, 0x4adc14.
  The indirect jump at 0x4adec0 uses the jump table at 0x5a0fdc with targets 0x4add10, 0x4adcec, 0x4adcc8, 0x4adca4, 0x4adc80, 0x4adc5c, 0x4adc38, 0x4adc14.
  The indirect jump at 0x4adec0 uses the jump table at 0x5a0fdc with targets 0x4add10, 0x4adcec, 0x4adcc8, 0x4adca4, 0x4adc80, 0x4adc5c, 0x4adc38, 0x4adc14.
  The indirect jump at 0x4adec0 uses the jump table at 0x5a0fdc with targets 0x4add10, 0x4adcec, 0x4adcc8, 0x4adca4, 0x4adc80, 0x4adc5c, 0x4adc38, 0x4adc14.
  The indirect jump at 0x4adec0 uses the jump table at 0x5a0fdc with targets 0x4add10, 0x4adcec, 0x4adcc8, 0x4adca4, 0x4adc80, 0x4adc5c, 0x4adc38, 0x4adc14.
  The indirect jump at 0x4ae2f8 uses the jump table at 0x5a0ffc with targets 0x4ae13c, 0x4ae118, 0x4ae0f4, 0x4ae0d0, 0x4ae0ac, 0x4ae088, 0x4ae064, 0x4ae040.
  The indirect jump at 0x4ae2f8 uses the jump table at 0x5a0ffc with targets 0x4ae13c, 0x4ae118, 0x4ae0f4, 0x4ae0d0, 0x4ae0ac, 0x4ae088, 0x4ae064, 0x4ae040.
  The indirect jump at 0x4ae2f8 uses the jump table at 0x5a0ffc with targets 0x4ae13c, 0x4ae118, 0x4ae0f4, 0x4ae0d0, 0x4ae0ac, 0x4ae088, 0x4ae064, 0x4ae040.
  The indirect jump at 0x4ae2f8 uses the jump table at 0x5a0ffc with targets 0x4ae13c, 0x4ae118, 0x4ae0f4, 0x4ae0d0, 0x4ae0ac, 0x4ae088, 0x4ae064, 0x4ae040.
  The indirect jump at 0x4ae2f8 uses the jump table at 0x5a0ffc with targets 0x4ae13c, 0x4ae118, 0x4ae0f4, 0x4ae0d0, 0x4ae0ac, 0x4ae088, 0x4ae064, 0x4ae040.
  The indirect jump at 0x4adec0 uses the jump table at 0x5a0fdc with targets 0x4add10, 0x4adcec, 0x4adcc8, 0x4adca4, 0x4adc80, 0x4adc5c, 0x4adc38, 0x4adc14.
  The indirect jump at 0x4ae2f8 uses the jump table at 0x5a0ffc with targets 0x4ae13c, 0x4ae118, 0x4ae0f4, 0x4ae0d0, 0x4ae0ac, 0x4ae088, 0x4ae064, 0x4ae040.
  The indirect jump at 0x4adec0 uses the jump table at 0x5a0fdc with targets 0x4add10, 0x4adcec, 0x4adcc8, 0x4adca4, 0x4adc80, 0x4adc5c, 0x4adc38, 0x4adc14.
  The indirect jump at 0x4ae2f8 uses the jump table at 0x5a0ffc with targets 0x4ae13c, 0x4ae118, 0x4ae0f4, 0x4ae0d0, 0x4ae0ac, 0x4ae088, 0x4ae064, 0x4ae040.
  The indirect jump at 0x4adec0 uses the jump table at 0x5a0fdc with targets 0x4add10, 0x4adcec, 0x4adcc8, 0x4adca4, 0x4adc80, 0x4adc5c, 0x4adc38, 0x4adc14.

- `cfb16DoBitbltGeneral` in `usr/lib/X11/dyDDX/crm.so` at 0x4ae330 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/crm.so`.
  Range: 0x4ae330-0x4afb98 (6248 bytes).
  It occupies 6248 bytes.
  The `lbu` at 0x4ae360 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lw` at 0x4ae36c loads 4 bytes from table(0x5b4bc4) +0x0.
  The `lw` at 0x4ae378 loads 4 bytes from table(0x5b4bc0) +0x0.
  The `lw` at 0x4ae384 loads 4 bytes from table(0x5b4bbc) +0x0.
  The `lw` at 0x4ae38c loads 4 bytes from table(0x5b4bb8) +0x0.
  The `lw` at 0x4ae3a4 loads 4 bytes from a0 (arg0 at entry) +0x10.
  2 such `lw` accesses load 4 bytes from abs 0x5aa970 (cfb16ScreenPrivateIndex), including `lw` at 0x4ae3a8, `lw` at 0x4ae3e0.
  The `lw` at 0x4ae3ac loads 4 bytes from [a0+16] +0x1b4.
  The `lw` at 0x4ae3bc loads 4 bytes from ([[a0+16]+436] + ([0x5aa970] << 0x2)) +0x0.
  116 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4ae3c0, `lw` at 0x4ae3c8, `lw` at 0x4ae3f4.
  The `lbu` at 0x4ae3c4 loads 1 byte from a1 (arg1 at entry) +0x0.
  The `lw` at 0x4ae3dc loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `lw` at 0x4ae3e4 loads 4 bytes from [a1+16] +0x1b4.
  The `lw` at 0x4ae3f0 loads 4 bytes from ([[a1+16]+436] + ([0x5aa970] << 0x2)) +0x0.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lw` at 0x4ae414, `lw` at 0x4ae440.
  2 such `lw` accesses load 4 bytes from [a3+8] +0x4, including `lw` at 0x4ae420, `lw` at 0x4ae460.
  The `lh` at 0x4ae444 loads 2 bytes from a4 (arg4 at entry) +0x2.
  The `lh` at 0x4ae450 loads 2 bytes from [a3+8] +0xa.
  25 such `lh` accesses load 2 bytes from ?, including `lh` at 0x4ae518, `lh` at 0x4ae52c, `lh` at 0x4ae530.
  12 such `sh` accesses store 2 bytes to ?, including `sh` at 0x4ae654, `sh` at 0x4ae65c, `sh` at 0x4ae664.
  The `lh` at 0x4ae750 loads 2 bytes from a3 (arg3 at entry) +0x2.
  The `lh` at 0x4ae754 loads 2 bytes from a3 (arg3 at entry) +0x0.
  The `lh` at 0x4ae758 loads 2 bytes from a4 (arg4 at entry) +0x0.
  The `lw` at 0x4ae910 loads 4 bytes from table(0x5a6508) +0x0.
  The `lw` at 0x4ae918 loads 4 bytes from table(0x5a6500) +0x0.
  8 such `lw` accesses load 4 bytes from abs 0x5a8f44, including `lw` at 0x4ae9e8, `lw` at 0x4aed34, `lw` at 0x4af110.
  54 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4aeac0, `sw` at 0x4aeae4, `sw` at 0x4aeb08.
  The `lw` at 0x4aeda0 loads 4 bytes from table(0x5a0aa4) +0x0.
  The `lw` at 0x4af1b4 loads 4 bytes from table(0x5a0ac4) +0x0.
  The `lw` at 0x4af2b0 loads 4 bytes from abs 0x5a9c54.
  The `lw` at 0x4af2dc loads 4 bytes from table(0x5a6518) +0x0.
  The `lw` at 0x4af2e0 loads 4 bytes from table(0x5a6510) +0x0.
  Calls (unknown callee) via register with a0=0x5a0000, a1=?, a2=?, a3=? (`jr` at 0x4af724).
  Calls (unknown callee) via register with a0=?, a1=?, a2=?, a3=? (`jr` at 0x4afb44).
  The `beq` branch at 0x4ae39c targets 0x4ae5d8, is taken when v0(=0x1) == t8(=[a0]:1), and falls through when v0(=0x1) != t8(=[a0]:1).
  The `beq` branch at 0x4ae3d4 targets 0x4ae5e4, is taken when a7(=0x1) == a6(=[a1]:1), and falls through when a7(=0x1) != a6(=[a1]:1).
  The `beq` branch at 0x4ae404 targets 0x4ae440, is taken when a0 == a1, and falls through when a0 != a1.
  The `beq` branch at 0x4ae40c targets 0x4ae438, is taken when t8(=[a0]:1) == 0, and falls through when t8(=[a0]:1) != 0.
  The `beq` branch at 0x4ae418 targets 0x4ae6f4, is taken when a0(=[a3+8]) == 0, and falls through when a0(=[a3+8]) != 0.
  The `beq` branch at 0x4ae430 targets 0x4ae8d8 and is always taken.
  The `bne` branch at 0x4ae438 targets 0x4ae414, is taken when a6(=[a1]:1) != 0, and falls through when a6(=[a1]:1) == 0.
  The `beq` branch at 0x4ae448 targets 0x4ae750, is taken when a0(=[a3+8]) == 0, and falls through when a0(=[a3+8]) != 0.
  The `beq` branch at 0x4ae45c targets 0x4ae524, is taken when a1(=[a4+2]:2) >= v1(=[[a3+8]+10]:2) (signed), and falls through when a1(=[a4+2]:2) < v1(=[[a3+8]+10]:2) (signed).
  The `bne` branch at 0x4ae47c targets 0x4ae6e8, is taken when s4(=[[a3+8]+4]) < 0x2 (signed), and falls through when s4(=[[a3+8]+4]) >= 0x2 (signed).
  The `beq` branch at 0x4ae4b8 targets 0x4ae7c0, is taken when sp(?) == 0, and falls through when sp(?) != 0.
  The `beq` branch at 0x4ae4f4 targets 0x4ae7c0, is taken when sp(?) == 0, and falls through when sp(?) != 0.
  The `bne` branch at 0x4ae50c targets 0x4ae6dc, is taken when a6(=(([[a3+8]+4] << 0x3) + [a3+8]+8)-8) < a3(=[a3+8]+8) (unsigned), and falls through when a6(=(([[a3+8]+4] << 0x3) + [a3+8]+8)-8) >= a3(=[a3+8]+8) (unsigned).
  The `beq` branch at 0x4ae51c targets 0x4ae5f8 and is always taken.
  The `beq` branch at 0x4ae538 targets 0x4ae430, is taken when t9(?) >= v0(?) (signed), and falls through when t9(?) < v0(?) (signed).
  The `bne` branch at 0x4ae540 targets 0x4ae8d8, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x4ae594 targets 0x4ae7c0, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4ae5b0 targets 0x4ae7c0, is taken when sp(?) == 0, and falls through when sp(?) != 0.
  The `blez` branch at 0x4ae5b8 targets 0x4ae8c0, is taken when a0(=([[a3+8]+4] << 0x3)) <= 0 (signed), and falls through when a0(=([[a3+8]+4] << 0x3)) > 0 (signed).
  The `beq` branch at 0x4ae5d0 targets 0x4ae8a0 and is always taken.
  The `beq` branch at 0x4ae5dc targets 0x4ae3c0 and is always taken.
  The `beq` branch at 0x4ae5e4 targets 0x4ae3f4 and is always taken.
  The `bne` branch at 0x4ae5f0 targets 0x4ae608, is taken when v0(?) != a0(?), and falls through when v0(?) == a0(?).
  The `beq` branch at 0x4ae600 targets 0x4ae5ec, is taken when a6(?) >= a3(=[a3+8]+8) (unsigned), and falls through when a6(?) < a3(=[a3+8]+8) (unsigned).
  The `bne` branch at 0x4ae618 targets 0x4ae6ac, is taken when t8(?) < a0(?) (unsigned), and falls through when t8(?) >= a0(?) (unsigned).
  The `beq` branch at 0x4ae694 targets 0x4ae650, is taken when t8(?) >= a4(?) (unsigned), and falls through when t8(?) < a4(?) (unsigned).
  The `beq` branch at 0x4ae6d4 targets 0x4ae514, is taken when s0(?) >= a3(=[a3+8]+8) (unsigned), and falls through when s0(?) < a3(=[a3+8]+8) (unsigned).
  The `beq` branch at 0x4ae6ec targets 0x4ae52c and is always taken.
  The `beq` branch at 0x4ae748 targets 0x4afb84 and is always taken.
  The `beq` branch at 0x4ae764 targets 0x4ae7a4, is taken when a1(=[a4+2]:2) >= a6(=[a3+2]:2) (signed), and falls through when a1(=[a4+2]:2) < a6(=[a3+2]:2) (signed).
  The `beq` branch at 0x4ae79c targets 0x4ae708 and is always taken.
  The `beq` branch at 0x4ae7b8 targets 0x4ae708 and is always taken.
  The `bne` branch at 0x4ae804 targets 0x4ae81c, is taken when a4(?) != a0(?), and falls through when a4(?) == a0(?).
  The `bne` branch at 0x4ae814 targets 0x4ae800, is taken when a6(?) < ra(?) (unsigned), and falls through when a6(?) >= ra(?) (unsigned).
  The `beq` branch at 0x4ae820 targets 0x4ae888, is taken when t9(?) == a6(?), and falls through when t9(?) != a6(?).
  The `bne` branch at 0x4ae880 targets 0x4ae840, is taken when t9(?) != a6(?), and falls through when t9(?) == a6(?).
  The `beq` branch at 0x4ae898 targets 0x4ae8b4, is taken when s0(?) >= ra(?) (unsigned), and falls through when s0(?) < ra(?) (unsigned).
  The `beq` branch at 0x4ae8a0 targets 0x4ae904, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x4ae8ac targets 0x4ae80c and is always taken.
  The `blez` branch at 0x4ae8f4 targets 0x4ae7c0, is taken when s4(=[[a3+8]+4]) <= 0 (signed), and falls through when s4(=[[a3+8]+4]) > 0 (signed).
  The `beq` branch at 0x4ae8fc targets 0x4ae708 and is always taken.
  The `beq` branch at 0x4ae908 targets 0x4ae818 and is always taken.
  The `beq` branch at 0x4ae94c targets 0x4af2fc, is taken when s7(=one of -0x1, 0x1) == s4(=0x1), and falls through when s7(=one of -0x1, 0x1) != s4(=0x1).
  The `bne` branch at 0x4ae97c targets 0x4ae9f8, is taken when a3(?) != s3(?), and falls through when a3(?) == s3(?).
  The `blez` branch at 0x4ae984 targets 0x4af1c0, is taken when s5(?) <= 0 (signed), and falls through when s5(?) > 0 (signed).
  The `beq` branch at 0x4ae9f0 targets 0x4afb54 and is always taken.
  The `blez` branch at 0x4aea20 targets 0x4af1c0, is taken when s5(?) <= 0 (signed), and falls through when s5(?) > 0 (signed).
  The `beq` branch at 0x4aea94 targets 0x4afb5c and is always taken.
  The `bltz` branch at 0x4aeba8 targets 0x4aecec, is taken when s7(?) < 0 (signed), and falls through when s7(?) >= 0 (signed).
  The `bne` branch at 0x4aece4 targets 0x4aebc0, is taken when a1(?) != a6(?), and falls through when a1(?) == a6(?).
  The `beq` branch at 0x4aecec targets 0x4aed30, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4aed30 targets 0x4af2f4, is taken when t9(?) == s5(?), and falls through when t9(?) != s5(?).
  The `beq` branch at 0x4aed44 targets 0x4aed80, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x4aed98 targets 0x4aeb9c, is taken when s6(?) >= 0x8 (unsigned), and falls through when s6(?) < 0x8 (unsigned).
  The `bltz` branch at 0x4aef00 targets 0x4af0b0, is taken when s7(?) < 0 (signed), and falls through when s7(?) >= 0 (signed).
  The `bne` branch at 0x4af0a4 targets 0x4aef20, is taken when a1(?) != t9(?), and falls through when a1(?) == t9(?).
  The `beq` branch at 0x4af0b0 targets 0x4af104, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4af0bc targets 0x4af0d8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x4af114 targets 0x4af1c0, is taken when s3(?) == s5(?), and falls through when s3(?) != s5(?).
  The `beq` branch at 0x4af124 targets 0x4af140, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4af130 targets 0x4af148, is taken when s2(?) != 0, and falls through when s2(?) == 0.
  The `beq` branch at 0x4af138 targets 0x4af190 and is always taken.
  The `beq` branch at 0x4af140 targets 0x4af190, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x4af1ac targets 0x4aeefc, is taken when s6(?) >= 0x8 (unsigned), and falls through when s6(?) < 0x8 (unsigned).
  The `beq` branch at 0x4af1d8 targets 0x4ae7c0, is taken when a0(?) == a1(?), and falls through when a0(?) != a1(?).
  The `beq` branch at 0x4af2d4 targets 0x4ae910, is taken when s4(?) >= 0x3 (signed), and falls through when s4(?) < 0x3 (signed).
  The `beq` branch at 0x4af2ec targets 0x4ae930 and is always taken.
  The `beq` branch at 0x4af2f4 targets 0x4af1c4 and is always taken.
  The `bne` branch at 0x4af31c targets 0x4af38c, is taken when s3(?) != a0(?), and falls through when s3(?) == a0(?).
  The `blez` branch at 0x4af324 targets 0x4af1c0, is taken when s5(?) <= 0 (signed), and falls through when s5(?) > 0 (signed).
  The `beq` branch at 0x4af384 targets 0x4afb70 and is always taken.
  The `blez` branch at 0x4af3b8 targets 0x4af1c0, is taken when s5(?) <= 0 (signed), and falls through when s5(?) > 0 (signed).
  The `beq` branch at 0x4af424 targets 0x4afb78 and is always taken.
  The `bltz` branch at 0x4af534 targets 0x4af66c, is taken when s7(?) < 0 (signed), and falls through when s7(?) >= 0 (signed).
  The `bne` branch at 0x4af664 targets 0x4af540, is taken when a1(?) != a6(?), and falls through when a1(?) == a6(?).
  The `beq` branch at 0x4af66c targets 0x4af6ac, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x4af6b0 targets 0x4af72c, is taken when s3(?) == s5(?), and falls through when s3(?) != s5(?).
  The `beq` branch at 0x4af6c0 targets 0x4af700, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4af718 targets 0x4af528, is taken when s6(?) >= 0x8 (unsigned), and falls through when s6(?) < 0x8 (unsigned).
  The `beq` branch at 0x4af72c targets 0x4af1c4 and is always taken.
  The `bltz` branch at 0x4af888 targets 0x4afa30, is taken when s7(?) < 0 (signed), and falls through when s7(?) >= 0 (signed).
  The `bne` branch at 0x4afa24 targets 0x4af8a0, is taken when a1(?) != t9(?), and falls through when a1(?) == t9(?).
  The `beq` branch at 0x4afa30 targets 0x4afa88, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x4afa40 targets 0x4afa5c, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x4afa98 targets 0x4afb4c, is taken when a3(?) == s5(?), and falls through when a3(?) != s5(?).
  The `beq` branch at 0x4afaa8 targets 0x4afad0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4afab4 targets 0x4afad4, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `beq` branch at 0x4afabc targets 0x4afb1c and is always taken.
  The `beq` branch at 0x4afad0 targets 0x4afb18, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4afb38 targets 0x4af884, is taken when s6(?) >= 0x8 (unsigned), and falls through when s6(?) < 0x8 (unsigned).
  The `beq` branch at 0x4afb4c targets 0x4af1c4 and is always taken.
  The `beq` branch at 0x4afb54 targets 0x4aed3c and is always taken.
  The `beq` branch at 0x4afb68 targets 0x4af120 and is always taken.
  The `beq` branch at 0x4afb70 targets 0x4af6bc and is always taken.
  The `beq` branch at 0x4afb7c targets 0x4afaa4 and is always taken.
  The `beq` branch at 0x4afb90 targets 0x4af1e4 and is always taken.
  The return at 0x4ae7f0 has v0 = one of 0x1, ?.
  The return at 0x4aeda4 has v0 = ?.
  The instructions from 0x4ae7f8 to 0x4ae7fc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4aea9c to 0x4aea9c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4af42c to 0x4af524 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4af734 to 0x4af880 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4afac4 to 0x4afacc are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x4aeda4 uses the jump table at 0x5a0aa4 with targets 0x4aeb9c, 0x4aeb78, 0x4aeb54, 0x4aeb30, 0x4aeb0c, 0x4aeae8, 0x4aeac4, 0x4aeaa0.
  The indirect jump at 0x4aeda4 uses the jump table at 0x5a0aa4 with targets 0x4aeb9c, 0x4aeb78, 0x4aeb54, 0x4aeb30, 0x4aeb0c, 0x4aeae8, 0x4aeac4, 0x4aeaa0.
  The indirect jump at 0x4aeda4 uses the jump table at 0x5a0aa4 with targets 0x4aeb9c, 0x4aeb78, 0x4aeb54, 0x4aeb30, 0x4aeb0c, 0x4aeae8, 0x4aeac4, 0x4aeaa0.
  The indirect jump at 0x4aeda4 uses the jump table at 0x5a0aa4 with targets 0x4aeb9c, 0x4aeb78, 0x4aeb54, 0x4aeb30, 0x4aeb0c, 0x4aeae8, 0x4aeac4, 0x4aeaa0.
  The indirect jump at 0x4aeda4 uses the jump table at 0x5a0aa4 with targets 0x4aeb9c, 0x4aeb78, 0x4aeb54, 0x4aeb30, 0x4aeb0c, 0x4aeae8, 0x4aeac4, 0x4aeaa0.
  The indirect jump at 0x4af1b8 uses the jump table at 0x5a0ac4 with targets 0x4aeefc, 0x4aeecc, 0x4aee9c, 0x4aee6c, 0x4aee3c, 0x4aee0c, 0x4aeddc, 0x4aedac.
  The indirect jump at 0x4af1b8 uses the jump table at 0x5a0ac4 with targets 0x4aeefc, 0x4aeecc, 0x4aee9c, 0x4aee6c, 0x4aee3c, 0x4aee0c, 0x4aeddc, 0x4aedac.
  The indirect jump at 0x4af1b8 uses the jump table at 0x5a0ac4 with targets 0x4aeefc, 0x4aeecc, 0x4aee9c, 0x4aee6c, 0x4aee3c, 0x4aee0c, 0x4aeddc, 0x4aedac.
  The indirect jump at 0x4af1b8 uses the jump table at 0x5a0ac4 with targets 0x4aeefc, 0x4aeecc, 0x4aee9c, 0x4aee6c, 0x4aee3c, 0x4aee0c, 0x4aeddc, 0x4aedac.
  The indirect jump at 0x4af1b8 uses the jump table at 0x5a0ac4 with targets 0x4aeefc, 0x4aeecc, 0x4aee9c, 0x4aee6c, 0x4aee3c, 0x4aee0c, 0x4aeddc, 0x4aedac.
  The indirect jump at 0x4aeda4 uses the jump table at 0x5a0aa4 with targets 0x4aeb9c, 0x4aeb78, 0x4aeb54, 0x4aeb30, 0x4aeb0c, 0x4aeae8, 0x4aeac4, 0x4aeaa0.
  The indirect jump at 0x4af1b8 uses the jump table at 0x5a0ac4 with targets 0x4aeefc, 0x4aeecc, 0x4aee9c, 0x4aee6c, 0x4aee3c, 0x4aee0c, 0x4aeddc, 0x4aedac.
  The indirect jump at 0x4aeda4 uses the jump table at 0x5a0aa4 with targets 0x4aeb9c, 0x4aeb78, 0x4aeb54, 0x4aeb30, 0x4aeb0c, 0x4aeae8, 0x4aeac4, 0x4aeaa0.
  The indirect jump at 0x4af1b8 uses the jump table at 0x5a0ac4 with targets 0x4aeefc, 0x4aeecc, 0x4aee9c, 0x4aee6c, 0x4aee3c, 0x4aee0c, 0x4aeddc, 0x4aedac.

- `cfbDoBitbltGeneral` in `usr/lib/X11/dyDDX/crm.so` at 0x4afba0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/crm.so`.
  Range: 0x4afba0-0x4b13f8 (6232 bytes).
  It occupies 6232 bytes.
  The `lbu` at 0x4afbdc loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lw` at 0x4afbec loads 4 bytes from table(0x5b4bc4) +0x0.
  The `lw` at 0x4afbf8 loads 4 bytes from table(0x5b4bc0) +0x0.
  The `lw` at 0x4afc04 loads 4 bytes from table(0x5b4bbc) +0x0.
  The `lw` at 0x4afc0c loads 4 bytes from table(0x5b4bb8) +0x0.
  The `lw` at 0x4afc24 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x4afc2c loads 4 bytes from [a0+16] +0x74.
  116 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4afc30, `lw` at 0x4afc38, `lw` at 0x4afc54.
  The `lbu` at 0x4afc34 loads 1 byte from a1 (arg1 at entry) +0x0.
  The `lw` at 0x4afc4c loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `lw` at 0x4afc50 loads 4 bytes from [a1+16] +0x74.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lw` at 0x4afc74, `lw` at 0x4afca0.
  2 such `lw` accesses load 4 bytes from [a3+8] +0x4, including `lw` at 0x4afc80, `lw` at 0x4afcc0.
  The `lh` at 0x4afca4 loads 2 bytes from a4 (arg4 at entry) +0x2.
  The `lh` at 0x4afcb0 loads 2 bytes from [a3+8] +0xa.
  25 such `lh` accesses load 2 bytes from ?, including `lh` at 0x4afd78, `lh` at 0x4afd8c, `lh` at 0x4afd90.
  12 such `sh` accesses store 2 bytes to ?, including `sh` at 0x4afeb4, `sh` at 0x4afebc, `sh` at 0x4afec4.
  The `lh` at 0x4affb0 loads 2 bytes from a3 (arg3 at entry) +0x2.
  The `lh` at 0x4affb4 loads 2 bytes from a3 (arg3 at entry) +0x0.
  The `lh` at 0x4affb8 loads 2 bytes from a4 (arg4 at entry) +0x0.
  The `lw` at 0x4b0170 loads 4 bytes from table(0x5a51a8) +0x0.
  The `lw` at 0x4b0178 loads 4 bytes from table(0x5a5198) +0x0.
  8 such `lw` accesses load 4 bytes from abs 0x5a8f44, including `lw` at 0x4b0248, `lw` at 0x4b0594, `lw` at 0x4b0970.
  54 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4b0320, `sw` at 0x4b0344, `sw` at 0x4b0368.
  The `lw` at 0x4b0600 loads 4 bytes from table(0x5a15c8) +0x0.
  The `lw` at 0x4b0a14 loads 4 bytes from table(0x5a15e8) +0x0.
  The `lw` at 0x4b0b10 loads 4 bytes from abs 0x5a9c54.
  The `lw` at 0x4b0b3c loads 4 bytes from table(0x5a51c8) +0x0.
  The `lw` at 0x4b0b40 loads 4 bytes from table(0x5a51b8) +0x0.
  Calls (unknown callee) via register with a0=0x5a0000, a1=?, a2=?, a3=? (`jr` at 0x4b0f84).
  Calls (unknown callee) via register with a0=?, a1=?, a2=?, a3=? (`jr` at 0x4b13a4).
  The `beq` branch at 0x4afc1c targets 0x4afe38, is taken when v0(=0x1) == t8(=[a0]:1), and falls through when v0(=0x1) != t8(=[a0]:1).
  The `beq` branch at 0x4afc44 targets 0x4afe44, is taken when a7(=0x1) == a6(=[a1]:1), and falls through when a7(=0x1) != a6(=[a1]:1).
  The `beq` branch at 0x4afc64 targets 0x4afca0, is taken when a0 == a1, and falls through when a0 != a1.
  The `beq` branch at 0x4afc6c targets 0x4afc98, is taken when t8(=[a0]:1) == 0, and falls through when t8(=[a0]:1) != 0.
  The `beq` branch at 0x4afc78 targets 0x4aff54, is taken when a0(=[a3+8]) == 0, and falls through when a0(=[a3+8]) != 0.
  The `beq` branch at 0x4afc90 targets 0x4b0138 and is always taken.
  The `bne` branch at 0x4afc98 targets 0x4afc74, is taken when a6(=[a1]:1) != 0, and falls through when a6(=[a1]:1) == 0.
  The `beq` branch at 0x4afca8 targets 0x4affb0, is taken when a0(=[a3+8]) == 0, and falls through when a0(=[a3+8]) != 0.
  The `beq` branch at 0x4afcbc targets 0x4afd84, is taken when a1(=[a4+2]:2) >= v1(=[[a3+8]+10]:2) (signed), and falls through when a1(=[a4+2]:2) < v1(=[[a3+8]+10]:2) (signed).
  The `bne` branch at 0x4afcdc targets 0x4aff48, is taken when s4(=[[a3+8]+4]) < 0x2 (signed), and falls through when s4(=[[a3+8]+4]) >= 0x2 (signed).
  The `beq` branch at 0x4afd18 targets 0x4b0020, is taken when sp(?) == 0, and falls through when sp(?) != 0.
  The `beq` branch at 0x4afd54 targets 0x4b0020, is taken when sp(?) == 0, and falls through when sp(?) != 0.
  The `bne` branch at 0x4afd6c targets 0x4aff3c, is taken when a6(=(([[a3+8]+4] << 0x3) + [a3+8]+8)-8) < a3(=[a3+8]+8) (unsigned), and falls through when a6(=(([[a3+8]+4] << 0x3) + [a3+8]+8)-8) >= a3(=[a3+8]+8) (unsigned).
  The `beq` branch at 0x4afd7c targets 0x4afe58 and is always taken.
  The `beq` branch at 0x4afd98 targets 0x4afc90, is taken when t9(?) >= v0(?) (signed), and falls through when t9(?) < v0(?) (signed).
  The `bne` branch at 0x4afda0 targets 0x4b0138, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x4afdf4 targets 0x4b0020, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4afe10 targets 0x4b0020, is taken when sp(?) == 0, and falls through when sp(?) != 0.
  The `blez` branch at 0x4afe18 targets 0x4b0120, is taken when a0(=([[a3+8]+4] << 0x3)) <= 0 (signed), and falls through when a0(=([[a3+8]+4] << 0x3)) > 0 (signed).
  The `beq` branch at 0x4afe30 targets 0x4b0100 and is always taken.
  The `beq` branch at 0x4afe3c targets 0x4afc30 and is always taken.
  The `beq` branch at 0x4afe44 targets 0x4afc54 and is always taken.
  The `bne` branch at 0x4afe50 targets 0x4afe68, is taken when v0(?) != a0(?), and falls through when v0(?) == a0(?).
  The `beq` branch at 0x4afe60 targets 0x4afe4c, is taken when a6(?) >= a3(=[a3+8]+8) (unsigned), and falls through when a6(?) < a3(=[a3+8]+8) (unsigned).
  The `bne` branch at 0x4afe78 targets 0x4aff0c, is taken when t8(?) < a0(?) (unsigned), and falls through when t8(?) >= a0(?) (unsigned).
  The `beq` branch at 0x4afef4 targets 0x4afeb0, is taken when t8(?) >= a4(?) (unsigned), and falls through when t8(?) < a4(?) (unsigned).
  The `beq` branch at 0x4aff34 targets 0x4afd74, is taken when s0(?) >= a3(=[a3+8]+8) (unsigned), and falls through when s0(?) < a3(=[a3+8]+8) (unsigned).
  The `beq` branch at 0x4aff4c targets 0x4afd8c and is always taken.
  The `beq` branch at 0x4affa8 targets 0x4b13e4 and is always taken.
  The `beq` branch at 0x4affc4 targets 0x4b0004, is taken when a1(=[a4+2]:2) >= a6(=[a3+2]:2) (signed), and falls through when a1(=[a4+2]:2) < a6(=[a3+2]:2) (signed).
  The `beq` branch at 0x4afffc targets 0x4aff68 and is always taken.
  The `beq` branch at 0x4b0018 targets 0x4aff68 and is always taken.
  The `bne` branch at 0x4b0064 targets 0x4b007c, is taken when a4(?) != a0(?), and falls through when a4(?) == a0(?).
  The `bne` branch at 0x4b0074 targets 0x4b0060, is taken when a6(?) < ra(?) (unsigned), and falls through when a6(?) >= ra(?) (unsigned).
  The `beq` branch at 0x4b0080 targets 0x4b00e8, is taken when t9(?) == a6(?), and falls through when t9(?) != a6(?).
  The `bne` branch at 0x4b00e0 targets 0x4b00a0, is taken when t9(?) != a6(?), and falls through when t9(?) == a6(?).
  The `beq` branch at 0x4b00f8 targets 0x4b0114, is taken when s0(?) >= ra(?) (unsigned), and falls through when s0(?) < ra(?) (unsigned).
  The `beq` branch at 0x4b0100 targets 0x4b0164, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x4b010c targets 0x4b006c and is always taken.
  The `blez` branch at 0x4b0154 targets 0x4b0020, is taken when s4(=[[a3+8]+4]) <= 0 (signed), and falls through when s4(=[[a3+8]+4]) > 0 (signed).
  The `beq` branch at 0x4b015c targets 0x4aff68 and is always taken.
  The `beq` branch at 0x4b0168 targets 0x4b0078 and is always taken.
  The `beq` branch at 0x4b01ac targets 0x4b0b5c, is taken when s7(=one of -0x1, 0x1) == s4(=0x1), and falls through when s7(=one of -0x1, 0x1) != s4(=0x1).
  The `bne` branch at 0x4b01dc targets 0x4b0258, is taken when a3(?) != s3(?), and falls through when a3(?) == s3(?).
  The `blez` branch at 0x4b01e4 targets 0x4b0a20, is taken when s5(?) <= 0 (signed), and falls through when s5(?) > 0 (signed).
  The `beq` branch at 0x4b0250 targets 0x4b13b4 and is always taken.
  The `blez` branch at 0x4b0280 targets 0x4b0a20, is taken when s5(?) <= 0 (signed), and falls through when s5(?) > 0 (signed).
  The `beq` branch at 0x4b02f4 targets 0x4b13bc and is always taken.
  The `bltz` branch at 0x4b0408 targets 0x4b054c, is taken when s7(?) < 0 (signed), and falls through when s7(?) >= 0 (signed).
  The `bne` branch at 0x4b0544 targets 0x4b0420, is taken when a1(?) != a6(?), and falls through when a1(?) == a6(?).
  The `beq` branch at 0x4b054c targets 0x4b0590, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4b0590 targets 0x4b0b54, is taken when t9(?) == s5(?), and falls through when t9(?) != s5(?).
  The `beq` branch at 0x4b05a4 targets 0x4b05e0, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x4b05f8 targets 0x4b03fc, is taken when s6(?) >= 0x8 (unsigned), and falls through when s6(?) < 0x8 (unsigned).
  The `bltz` branch at 0x4b0760 targets 0x4b0910, is taken when s7(?) < 0 (signed), and falls through when s7(?) >= 0 (signed).
  The `bne` branch at 0x4b0904 targets 0x4b0780, is taken when a1(?) != t9(?), and falls through when a1(?) == t9(?).
  The `beq` branch at 0x4b0910 targets 0x4b0964, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4b091c targets 0x4b0938, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x4b0974 targets 0x4b0a20, is taken when s3(?) == s5(?), and falls through when s3(?) != s5(?).
  The `beq` branch at 0x4b0984 targets 0x4b09a0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4b0990 targets 0x4b09a8, is taken when s2(?) != 0, and falls through when s2(?) == 0.
  The `beq` branch at 0x4b0998 targets 0x4b09f0 and is always taken.
  The `beq` branch at 0x4b09a0 targets 0x4b09f0, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x4b0a0c targets 0x4b075c, is taken when s6(?) >= 0x8 (unsigned), and falls through when s6(?) < 0x8 (unsigned).
  The `beq` branch at 0x4b0a38 targets 0x4b0020, is taken when a0(?) == a1(?), and falls through when a0(?) != a1(?).
  The `beq` branch at 0x4b0b34 targets 0x4b0170, is taken when s4(?) >= 0x5 (signed), and falls through when s4(?) < 0x5 (signed).
  The `beq` branch at 0x4b0b4c targets 0x4b0190 and is always taken.
  The `beq` branch at 0x4b0b54 targets 0x4b0a24 and is always taken.
  The `bne` branch at 0x4b0b7c targets 0x4b0bec, is taken when s3(?) != a0(?), and falls through when s3(?) == a0(?).
  The `blez` branch at 0x4b0b84 targets 0x4b0a20, is taken when s5(?) <= 0 (signed), and falls through when s5(?) > 0 (signed).
  The `beq` branch at 0x4b0be4 targets 0x4b13d0 and is always taken.
  The `blez` branch at 0x4b0c18 targets 0x4b0a20, is taken when s5(?) <= 0 (signed), and falls through when s5(?) > 0 (signed).
  The `beq` branch at 0x4b0c84 targets 0x4b13d8 and is always taken.
  The `bltz` branch at 0x4b0d94 targets 0x4b0ecc, is taken when s7(?) < 0 (signed), and falls through when s7(?) >= 0 (signed).
  The `bne` branch at 0x4b0ec4 targets 0x4b0da0, is taken when a1(?) != a6(?), and falls through when a1(?) == a6(?).
  The `beq` branch at 0x4b0ecc targets 0x4b0f0c, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x4b0f10 targets 0x4b0f8c, is taken when s3(?) == s5(?), and falls through when s3(?) != s5(?).
  The `beq` branch at 0x4b0f20 targets 0x4b0f60, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4b0f78 targets 0x4b0d88, is taken when s6(?) >= 0x8 (unsigned), and falls through when s6(?) < 0x8 (unsigned).
  The `beq` branch at 0x4b0f8c targets 0x4b0a24 and is always taken.
  The `bltz` branch at 0x4b10e8 targets 0x4b1290, is taken when s7(?) < 0 (signed), and falls through when s7(?) >= 0 (signed).
  The `bne` branch at 0x4b1284 targets 0x4b1100, is taken when a1(?) != t9(?), and falls through when a1(?) == t9(?).
  The `beq` branch at 0x4b1290 targets 0x4b12e8, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x4b12a0 targets 0x4b12bc, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x4b12f8 targets 0x4b13ac, is taken when a3(?) == s5(?), and falls through when a3(?) != s5(?).
  The `beq` branch at 0x4b1308 targets 0x4b1330, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4b1314 targets 0x4b1334, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `beq` branch at 0x4b131c targets 0x4b137c and is always taken.
  The `beq` branch at 0x4b1330 targets 0x4b1378, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4b1398 targets 0x4b10e4, is taken when s6(?) >= 0x8 (unsigned), and falls through when s6(?) < 0x8 (unsigned).
  The `beq` branch at 0x4b13ac targets 0x4b0a24 and is always taken.
  The `beq` branch at 0x4b13b4 targets 0x4b059c and is always taken.
  The `beq` branch at 0x4b13c8 targets 0x4b0980 and is always taken.
  The `beq` branch at 0x4b13d0 targets 0x4b0f1c and is always taken.
  The `beq` branch at 0x4b13dc targets 0x4b1304 and is always taken.
  The `beq` branch at 0x4b13f0 targets 0x4b0a44 and is always taken.
  The return at 0x4b0050 has v0 = one of 0x1, ?.
  The return at 0x4b0604 has v0 = ?.
  The instructions from 0x4b0058 to 0x4b005c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4b02fc to 0x4b02fc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4b0c8c to 0x4b0d84 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4b0f94 to 0x4b10e0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4b1324 to 0x4b132c are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x4b0604 uses the jump table at 0x5a15c8 with targets 0x4b03fc, 0x4b03d8, 0x4b03b4, 0x4b0390, 0x4b036c, 0x4b0348, 0x4b0324, 0x4b0300.
  The indirect jump at 0x4b0604 uses the jump table at 0x5a15c8 with targets 0x4b03fc, 0x4b03d8, 0x4b03b4, 0x4b0390, 0x4b036c, 0x4b0348, 0x4b0324, 0x4b0300.
  The indirect jump at 0x4b0604 uses the jump table at 0x5a15c8 with targets 0x4b03fc, 0x4b03d8, 0x4b03b4, 0x4b0390, 0x4b036c, 0x4b0348, 0x4b0324, 0x4b0300.
  The indirect jump at 0x4b0604 uses the jump table at 0x5a15c8 with targets 0x4b03fc, 0x4b03d8, 0x4b03b4, 0x4b0390, 0x4b036c, 0x4b0348, 0x4b0324, 0x4b0300.
  The indirect jump at 0x4b0604 uses the jump table at 0x5a15c8 with targets 0x4b03fc, 0x4b03d8, 0x4b03b4, 0x4b0390, 0x4b036c, 0x4b0348, 0x4b0324, 0x4b0300.
  The indirect jump at 0x4b0a18 uses the jump table at 0x5a15e8 with targets 0x4b075c, 0x4b072c, 0x4b06fc, 0x4b06cc, 0x4b069c, 0x4b066c, 0x4b063c, 0x4b060c.
  The indirect jump at 0x4b0a18 uses the jump table at 0x5a15e8 with targets 0x4b075c, 0x4b072c, 0x4b06fc, 0x4b06cc, 0x4b069c, 0x4b066c, 0x4b063c, 0x4b060c.
  The indirect jump at 0x4b0a18 uses the jump table at 0x5a15e8 with targets 0x4b075c, 0x4b072c, 0x4b06fc, 0x4b06cc, 0x4b069c, 0x4b066c, 0x4b063c, 0x4b060c.
  The indirect jump at 0x4b0a18 uses the jump table at 0x5a15e8 with targets 0x4b075c, 0x4b072c, 0x4b06fc, 0x4b06cc, 0x4b069c, 0x4b066c, 0x4b063c, 0x4b060c.
  The indirect jump at 0x4b0a18 uses the jump table at 0x5a15e8 with targets 0x4b075c, 0x4b072c, 0x4b06fc, 0x4b06cc, 0x4b069c, 0x4b066c, 0x4b063c, 0x4b060c.
  The indirect jump at 0x4b0604 uses the jump table at 0x5a15c8 with targets 0x4b03fc, 0x4b03d8, 0x4b03b4, 0x4b0390, 0x4b036c, 0x4b0348, 0x4b0324, 0x4b0300.
  The indirect jump at 0x4b0a18 uses the jump table at 0x5a15e8 with targets 0x4b075c, 0x4b072c, 0x4b06fc, 0x4b06cc, 0x4b069c, 0x4b066c, 0x4b063c, 0x4b060c.
  The indirect jump at 0x4b0604 uses the jump table at 0x5a15c8 with targets 0x4b03fc, 0x4b03d8, 0x4b03b4, 0x4b0390, 0x4b036c, 0x4b0348, 0x4b0324, 0x4b0300.
  The indirect jump at 0x4b0a18 uses the jump table at 0x5a15e8 with targets 0x4b075c, 0x4b072c, 0x4b06fc, 0x4b06cc, 0x4b069c, 0x4b066c, 0x4b063c, 0x4b060c.

- `cfb8Stipple32FS` in `usr/lib/X11/dyDDX/crm.so` at 0x4c2590 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/crm.so`.
  Range: 0x4c2590-0x4c4aec (9564 bytes).
  It occupies 9564 bytes.
  The `lbu` at 0x4c2594 loads 1 byte from a1 (arg1 at entry) +0x5.
  The `lw` at 0x4c25e8 loads 4 bytes from a1 (arg1 at entry) +0x4c.
  The `lw` at 0x4c2600 loads 4 bytes from ([a1+76] + ([0x5aa8b8] << 0x2)) +0x0.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x14, including `lw` at 0x4c2610, `lw` at 0x4c4428, `lw` at 0x4c447c.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x18, including `lw` at 0x4c2614, `lw` at 0x4c4418.
  The `lw` at 0x4c2648 loads 4 bytes from table(0x5a16a8) +0x0.
  The `lw` at 0x4c26c4 loads 4 bytes from abs 0x5a52e4 (cfb8StippleMasks+4).
  The `lw` at 0x4c26cc loads 4 bytes from abs 0x5a52e0 (cfb8StippleMasks).
  87 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4c26dc, `sw` at 0x4c26f8, `sw` at 0x4c2704.
  32 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4c26e4, `lw` at 0x4c26f0, `lw` at 0x4c271c.
  The `lw` at 0x4c2778 loads 4 bytes from [([a1+76] + ([0x5aa8b8] << 0x2))] +0x8.
  The `lw` at 0x4c277c loads 4 bytes from [[([a1+76] + ([0x5aa8b8] << 0x2))]+8] +0x8.
  The `lw` at 0x4c2788 loads 4 bytes from [[[([a1+76] + ([0x5aa8b8] << 0x2))]+8]+8] +0x4.
  5 such `lh` accesses load 2 bytes from ?, including `lh` at 0x4c27b0, `lh` at 0x4c27cc, `lh` at 0x4c2c98.
  The `lw` at 0x4c2868 loads 4 bytes from [([a1+76] + ([0x5aa8b8] << 0x2))] +0x4.
  The `lbu` at 0x4c286c loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lhu` at 0x4c2870 loads 2 bytes from [[([a1+76] + ([0x5aa8b8] << 0x2))]+4] +0xe.
  The `lw` at 0x4c2878 loads 4 bytes from [[([a1+76] + ([0x5aa8b8] << 0x2))]+4] +0x20.
  The `lw` at 0x4c2890 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x4c2894 loads 4 bytes from [a0+16] +0x74.
  The `lw` at 0x4c2904 loads 4 bytes from table(0x5a5198) +0x0.
  The `lw` at 0x4c2920 loads 4 bytes from table(0x5a51a8) +0x0.
  18 such `lw` accesses load 4 bytes from table(0x5aa8d0) +0x0, including `lw` at 0x4c2940, `lw` at 0x4c2994, `lw` at 0x4c2a10.
  18 such `lw` accesses load 4 bytes from table(0x5aa910) +0x0, including `lw` at 0x4c2948, `lw` at 0x4c299c, `lw` at 0x4c2a14.
  The `lw` at 0x4c2d64 loads 4 bytes from table(0x5a51c8) +0x0.
  The `lw` at 0x4c2d6c loads 4 bytes from table(0x5a51b8) +0x0.
  2 such `lw` accesses load 4 bytes from [([a1+76] + ([0x5aa8b8] << 0x2))] +0xc, including `lw` at 0x4c2e68, `lw` at 0x4c2eac.
  6 such `lw` accesses load 4 bytes from table(0x5a52e0) +0x0, including `lw` at 0x4c2e74, `lw` at 0x4c2ecc, `lw` at 0x4c2f28.
  536 such `sb` accesses store 1 byte to ?, including `sb` at 0x4c305c, `sb` at 0x4c3064, `sb` at 0x4c3078.
  The `lw` at 0x4c3108 loads 4 bytes from table(0x5a1768) +0x0.
  218 such `sh` accesses store 2 bytes to ?, including `sh` at 0x4c31c0, `sh` at 0x4c31e4, `sh` at 0x4c3204.
  The `lw` at 0x4c39e0 loads 4 bytes from table(0x5a16e8) +0x0.
  The `lw` at 0x4c3b78 loads 4 bytes from table(0x5a1728) +0x0.
  The `jalr` at 0x4c2854 calls miClipSpans [0x449120] with a0=[[([a1+76] + ([0x5aa8b8] << 0x2))]+8], a1=a3 at entry (arg3), a2=a4 at entry (arg4), a3=a2 at entry (arg2), a6=a5 at entry (arg5).
  The `beq` branch at 0x4c2608 targets 0x4c4410, is taken when at(=[0x5aa8bc]) == t3(=0x2), and falls through when at(=[0x5aa8bc]) != t3(=0x2).
  The `beq` branch at 0x4c2640 targets 0x4c2654, is taken when t1(=[a1+5]:1) >= 0x10 (unsigned), and falls through when t1(=[a1+5]:1) < 0x10 (unsigned).
  The `beq` branch at 0x4c2678 targets 0x4c4450, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x4c2688 targets 0x4c445c, is taken when a7(=-0x1) == t1(?), and falls through when a7(=-0x1) != t1(?).
  The `beq` branch at 0x4c26d4 targets 0x4c2714 and is always taken.
  The `bne` branch at 0x4c2748 targets 0x4c26dc, is taken when a7(?) != t0(=0x5aa0a8), and falls through when a7(?) == t0(=0x5aa0a8).
  The `beq` branch at 0x4c2780 targets 0x4c4444, is taken when a7(=[[[([a1+76] + ([0x5aa8b8] << 0x2))]+8]+8]) == 0, and falls through when a7(=[[[([a1+76] + ([0x5aa8b8] << 0x2))]+8]+8]) != 0.
  The `blez` branch at 0x4c278c targets 0x4c28c0, is taken when t1(=[[[[([a1+76] + ([0x5aa8b8] << 0x2))]+8]+8]+4]) <= 0 (signed), and falls through when t1(=[[[[([a1+76] + ([0x5aa8b8] << 0x2))]+8]+8]+4]) > 0 (signed).
  The `beq` branch at 0x4c2794 targets 0x4c27cc and is always taken.
  The `blez` branch at 0x4c27a8 targets 0x4c27e4, is taken when t1(?) <= 0 (signed), and falls through when t1(?) > 0 (signed).
  The `beq` branch at 0x4c27b4 targets 0x4c27a0, is taken when t9(?) == t2(?), and falls through when t9(?) != t2(?).
  The `blez` branch at 0x4c27c4 targets 0x4c27fc, is taken when t1(?) <= 0 (signed), and falls through when t1(?) > 0 (signed).
  The `blez` branch at 0x4c27d0 targets 0x4c27f0, is taken when t1(?) <= 0 (signed), and falls through when t1(?) > 0 (signed).
  The `beq` branch at 0x4c27dc targets 0x4c27a0 and is always taken.
  The `beq` branch at 0x4c27e8 targets 0x4c27bc and is always taken.
  The `beq` branch at 0x4c27f4 targets 0x4c27c0 and is always taken.
  The `beq` branch at 0x4c2804 targets 0x4c28c0, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x4c282c targets 0x4c28c0, is taken when sp(?) == 0, and falls through when sp(?) != 0.
  The `beq` branch at 0x4c2834 targets 0x4c28c0, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x4c2884 targets 0x4c4480, is taken when t1(=[a0]:1) == t2(=0x1), and falls through when t1(=[a0]:1) != t2(=0x1).
  The `blez` branch at 0x4c28a8 targets 0x4c28c0, is taken when a2(=ret(miClipSpans)) <= 0 (signed), and falls through when a2(=ret(miClipSpans)) > 0 (signed).
  The `beq` branch at 0x4c28b8 targets 0x4c4ad8 and is always taken.
  The `beq` branch at 0x4c2924 targets 0x4c2e98, is taken when s1(=[0x5aa950]) == t9(=0x3), and falls through when s1(=[0x5aa950]) != t9(=0x3).
  The `beq` branch at 0x4c292c targets 0x4c2968, is taken when t3(=entry(0x5a5198)) == 0, and falls through when t3(=entry(0x5a5198)) != 0.
  The `blez` branch at 0x4c2968 targets 0x4c2c38, is taken when s5(?) <= 0 (signed), and falls through when s5(?) > 0 (signed).
  The `beq` branch at 0x4c297c targets 0x4c29b4, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x4c29b8 targets 0x4c2c38, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x4c29c0 targets 0x4c4a70, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x4c2a88 targets 0x4c2e04, is taken when t0(?) == a7(?), and falls through when t0(?) != a7(?).
  The `beq` branch at 0x4c2ae8 targets 0x4c2dc0, is taken when t2(?) == a7(?), and falls through when t2(?) != a7(?).
  The `bne` branch at 0x4c2b48 targets 0x4c2a30, is taken when a4(?) != a7(?), and falls through when a4(?) == a7(?).
  The `beq` branch at 0x4c2c38 targets 0x4c2c88, is taken when s7(=entry(0x5a51a8)) == 0, and falls through when s7(=entry(0x5a51a8)) != 0.
  The `beq` branch at 0x4c2c90 targets 0x4c28c0, is taken when s2(?) == a3(?), and falls through when s2(?) != a3(?).
  The `beq` branch at 0x4c2d58 targets 0x4c2900, is taken when a6(?) >= 0x5 (signed), and falls through when a6(?) < 0x5 (signed).
  The `beq` branch at 0x4c2d84 targets 0x4c2e4c, is taken when t8(=[0x5aa950]) == t3(=0x3), and falls through when t8(=[0x5aa950]) != t3(=0x3).
  The `beq` branch at 0x4c2d8c targets 0x4c2c88, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x4c2db8 targets 0x4c2c84 and is always taken.
  The `beq` branch at 0x4c2dfc targets 0x4c2b7c and is always taken.
  The `beq` branch at 0x4c2e44 targets 0x4c2b7c and is always taken.
  The `beq` branch at 0x4c2e64 targets 0x4c2f0c, is taken when t1(?) >= 0x40 (signed), and falls through when t1(?) < 0x40 (signed).
  The `beq` branch at 0x4c2e6c targets 0x4c2c88, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x4c2e90 targets 0x4c2c84 and is always taken.
  The `beq` branch at 0x4c2eb0 targets 0x4c2f58, is taken when t1(?) >= 0x40 (signed), and falls through when t1(?) < 0x40 (signed).
  The `beq` branch at 0x4c2eb8 targets 0x4c2ef4, is taken when t3(=entry(0x5a5198)) == 0, and falls through when t3(=entry(0x5a5198)) != 0.
  The `blez` branch at 0x4c2ef4 targets 0x4c4464, is taken when s5(?) <= 0 (signed), and falls through when s5(?) > 0 (signed).
  The `beq` branch at 0x4c2f04 targets 0x4c39c0 and is always taken.
  The `beq` branch at 0x4c2f14 targets 0x4c2f50, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x4c2f50 targets 0x4c3008 and is always taken.
  The `beq` branch at 0x4c2f5c targets 0x4c2f90, is taken when t3(=entry(0x5a5198)) == 0, and falls through when t3(=entry(0x5a5198)) != 0.
  The `bgez` branch at 0x4c2fa0 targets 0x4c2fb4, is taken when a3(?) >= 0 (signed), and falls through when a3(?) < 0 (signed).
  The `beq` branch at 0x4c2fac targets 0x4c3b54 and is always taken.
  The `beq` branch at 0x4c2fc0 targets 0x4c3004, is taken when s7(=entry(0x5a51a8)) == 0, and falls through when s7(=entry(0x5a51a8)) != 0.
  The `beq` branch at 0x4c3004 targets 0x4c2c84, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0x4c3034 targets 0x4c30e4 and is always taken.
  The `beq` branch at 0x4c303c targets 0x4c30d0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x4c304c targets 0x4c3068, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x4c3060 targets 0x4c3054, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x4c3068 targets 0x4c30d0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c3070 targets 0x4c4908, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `bne` branch at 0x4c30b0 targets 0x4c3090, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x4c30dc targets 0x4c2c84, is taken when t2(?) == t3(?), and falls through when t2(?) != t3(?).
  The `beq` branch at 0x4c3100 targets 0x4c30d0, is taken when a4(?) >= 0x10 (unsigned), and falls through when a4(?) < 0x10 (unsigned).
  The `beq` branch at 0x4c3114 targets 0x4c30d0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x4c311c targets 0x4c3134, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c312c targets 0x4c3124, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4c313c targets 0x4c31a0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c3144 targets 0x4c4850, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x4c3180 targets 0x4c3160, is taken when v1(?) != v0(?), and falls through when v1(?) == v0(?).
  The `beq` branch at 0x4c31a0 targets 0x4c30d4 and is always taken.
  The `beq` branch at 0x4c31a8 targets 0x4c30d0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x4c31b0 targets 0x4c31cc, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c31c4 targets 0x4c31b8, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4c31d4 targets 0x4c3240, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c31dc targets 0x4c4874, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x4c3220 targets 0x4c3200, is taken when v1(?) != v0(?), and falls through when v1(?) == v0(?).
  The `beq` branch at 0x4c3240 targets 0x4c30d4 and is always taken.
  The `beq` branch at 0x4c3248 targets 0x4c30d0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x4c3250 targets 0x4c326c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c3264 targets 0x4c3258, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4c3274 targets 0x4c32e0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c327c targets 0x4c4898, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x4c32c0 targets 0x4c32a0, is taken when v1(?) != v0(?), and falls through when v1(?) == v0(?).
  The `beq` branch at 0x4c32e0 targets 0x4c30d4 and is always taken.
  The `beq` branch at 0x4c32e8 targets 0x4c30d0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x4c32f0 targets 0x4c3308, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c3300 targets 0x4c32f8, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4c3310 targets 0x4c3370, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c3318 targets 0x4c48bc, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x4c3350 targets 0x4c3330, is taken when v1(?) != v0(?), and falls through when v1(?) == v0(?).
  The `beq` branch at 0x4c3370 targets 0x4c30d4 and is always taken.
  The `beq` branch at 0x4c3378 targets 0x4c30d0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x4c3380 targets 0x4c339c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c3394 targets 0x4c3388, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4c33a4 targets 0x4c3410, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c33ac targets 0x4c48e0, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x4c33f0 targets 0x4c33d0, is taken when v1(?) != v0(?), and falls through when v1(?) == v0(?).
  The `beq` branch at 0x4c3410 targets 0x4c30d4 and is always taken.
  The `beq` branch at 0x4c3418 targets 0x4c30d0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x4c3420 targets 0x4c343c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c3434 targets 0x4c3428, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4c3444 targets 0x4c34b0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c344c targets 0x4c492c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x4c3490 targets 0x4c3470, is taken when v1(?) != v0(?), and falls through when v1(?) == v0(?).
  The `beq` branch at 0x4c34b0 targets 0x4c30d4 and is always taken.
  The `beq` branch at 0x4c34b8 targets 0x4c30d0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x4c34c0 targets 0x4c34d8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c34d0 targets 0x4c34c8, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4c34e0 targets 0x4c3540, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c34e8 targets 0x4c4950, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x4c3520 targets 0x4c3500, is taken when v1(?) != v0(?), and falls through when v1(?) == v0(?).
  The `beq` branch at 0x4c3540 targets 0x4c30d4 and is always taken.
  The `beq` branch at 0x4c3548 targets 0x4c30d0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x4c3550 targets 0x4c356c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c3564 targets 0x4c3558, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4c3574 targets 0x4c3610, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c357c targets 0x4c4974, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4c35d0 targets 0x4c3998, is taken when v0(?) == a0(?), and falls through when v0(?) != a0(?).
  The `bne` branch at 0x4c35f8 targets 0x4c35b0, is taken when v1(?) != a0(?), and falls through when v1(?) == a0(?).
  The `beq` branch at 0x4c3610 targets 0x4c30d4 and is always taken.
  The `beq` branch at 0x4c3618 targets 0x4c30d0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x4c3628 targets 0x4c3644, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c363c targets 0x4c3630, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4c3644 targets 0x4c36b0, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x4c364c targets 0x4c4998, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x4c3690 targets 0x4c3670, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x4c36b0 targets 0x4c30d4 and is always taken.
  The `beq` branch at 0x4c36b8 targets 0x4c30d0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x4c36c8 targets 0x4c36e4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c36dc targets 0x4c36d0, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4c36e4 targets 0x4c3750, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x4c36ec targets 0x4c49bc, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x4c3730 targets 0x4c3710, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x4c3750 targets 0x4c30d4 and is always taken.
  The `beq` branch at 0x4c3758 targets 0x4c30d0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x4c3768 targets 0x4c3780, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c3778 targets 0x4c3770, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4c3780 targets 0x4c37e0, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x4c3788 targets 0x4c49e0, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x4c37c0 targets 0x4c37a0, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x4c37e0 targets 0x4c30d4 and is always taken.
  The `beq` branch at 0x4c37e8 targets 0x4c30d0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x4c37f8 targets 0x4c3810, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c3808 targets 0x4c3800, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4c3810 targets 0x4c3870, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x4c3818 targets 0x4c4a04, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x4c3850 targets 0x4c3830, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x4c3870 targets 0x4c30d4 and is always taken.
  The `beq` branch at 0x4c3878 targets 0x4c30d0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x4c3888 targets 0x4c38a0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c3898 targets 0x4c3890, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4c38a0 targets 0x4c3900, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x4c38a8 targets 0x4c4a28, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x4c38e0 targets 0x4c38c0, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x4c3900 targets 0x4c30d4 and is always taken.
  The `beq` branch at 0x4c3908 targets 0x4c30d0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x4c3918 targets 0x4c3930, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c3928 targets 0x4c3920, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4c3930 targets 0x4c3990, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x4c3938 targets 0x4c4a4c, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x4c3970 targets 0x4c3950, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x4c3990 targets 0x4c30d4 and is always taken.
  The `beq` branch at 0x4c3998 targets 0x4c3604 and is always taken.
  The `beq` branch at 0x4c39b8 targets 0x4c3a78, is taken when a1(?) == t1(?), and falls through when a1(?) != t1(?).
  The `beq` branch at 0x4c39d8 targets 0x4c39b0, is taken when a3(?) >= 0x10 (unsigned), and falls through when a3(?) < 0x10 (unsigned).
  The `beq` branch at 0x4c39ec targets 0x4c39b0 and is always taken.
  The `beq` branch at 0x4c39f8 targets 0x4c39b0 and is always taken.
  The `beq` branch at 0x4c3a00 targets 0x4c39b0 and is always taken.
  The `beq` branch at 0x4c3a0c targets 0x4c39b0 and is always taken.
  The `beq` branch at 0x4c3a18 targets 0x4c39b0 and is always taken.
  The `beq` branch at 0x4c3a24 targets 0x4c39b0 and is always taken.
  The `beq` branch at 0x4c3a2c targets 0x4c39b0 and is always taken.
  The `beq` branch at 0x4c3a38 targets 0x4c39b0 and is always taken.
  The `beq` branch at 0x4c3a44 targets 0x4c39b0 and is always taken.
  The `beq` branch at 0x4c3a50 targets 0x4c39b0 and is always taken.
  The `beq` branch at 0x4c3a58 targets 0x4c39b0 and is always taken.
  The `beq` branch at 0x4c3a60 targets 0x4c39b0 and is always taken.
  The `beq` branch at 0x4c3a68 targets 0x4c39b0 and is always taken.
  The `beq` branch at 0x4c3a70 targets 0x4c39b0 and is always taken.
  The `beq` branch at 0x4c3a78 targets 0x4c2c84, is taken when s7(=entry(0x5a51a8)) == 0, and falls through when s7(=entry(0x5a51a8)) != 0.
  The `beq` branch at 0x4c3aac targets 0x4c2c84 and is always taken.
  The `bltz` branch at 0x4c3ab4 targets 0x4c3b40, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0x4c3abc targets 0x4c3ad8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x4c3ad0 targets 0x4c3ac4, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x4c3ae0 targets 0x4c3b40, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x4c3ae8 targets 0x4c4658, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x4c3b20 targets 0x4c3b00, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x4c3b4c targets 0x4c2fb8, is taken when t1(?) == a5(?), and falls through when t1(?) != a5(?).
  The `beq` branch at 0x4c3b70 targets 0x4c3b40, is taken when a4(?) >= 0x10 (unsigned), and falls through when a4(?) < 0x10 (unsigned).
  The `bltz` branch at 0x4c3b84 targets 0x4c3b40, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0x4c3b8c targets 0x4c3ba4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c3b9c targets 0x4c3b94, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4c3bac targets 0x4c3c10, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c3bb4 targets 0x4c4634, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x4c3bf0 targets 0x4c3bd0, is taken when v1(?) != v0(?), and falls through when v1(?) == v0(?).
  The `beq` branch at 0x4c3c10 targets 0x4c3b44 and is always taken.
  The `bltz` branch at 0x4c3c18 targets 0x4c3b40, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0x4c3c20 targets 0x4c3c3c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c3c34 targets 0x4c3c28, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4c3c44 targets 0x4c3cb0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c3c4c targets 0x4c467c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x4c3c90 targets 0x4c3c70, is taken when v1(?) != v0(?), and falls through when v1(?) == v0(?).
  The `beq` branch at 0x4c3cb0 targets 0x4c3b44 and is always taken.
  The `bltz` branch at 0x4c3cb8 targets 0x4c3b40, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0x4c3cc0 targets 0x4c3cd8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c3cd0 targets 0x4c3cc8, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4c3ce0 targets 0x4c3d40, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c3ce8 targets 0x4c46a0, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x4c3d20 targets 0x4c3d00, is taken when v1(?) != v0(?), and falls through when v1(?) == v0(?).
  The `beq` branch at 0x4c3d40 targets 0x4c3b44 and is always taken.
  The `bltz` branch at 0x4c3d48 targets 0x4c3b40, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0x4c3d50 targets 0x4c3d6c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c3d64 targets 0x4c3d58, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4c3d74 targets 0x4c3de0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c3d7c targets 0x4c46c4, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x4c3dc0 targets 0x4c3da0, is taken when v1(?) != v0(?), and falls through when v1(?) == v0(?).
  The `beq` branch at 0x4c3de0 targets 0x4c3b44 and is always taken.
  The `bltz` branch at 0x4c3de8 targets 0x4c3b40, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0x4c3df8 targets 0x4c3e14, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c3e0c targets 0x4c3e00, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4c3e14 targets 0x4c3e80, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x4c3e1c targets 0x4c46e8, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `bne` branch at 0x4c3e60 targets 0x4c3e40, is taken when v1(?) != v0(?), and falls through when v1(?) == v0(?).
  The `beq` branch at 0x4c3e80 targets 0x4c3b44 and is always taken.
  The `bltz` branch at 0x4c3e88 targets 0x4c3b40, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0x4c3e90 targets 0x4c3eac, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c3ea4 targets 0x4c3e98, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4c3eb4 targets 0x4c3f20, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c3ebc targets 0x4c470c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x4c3f00 targets 0x4c3ee0, is taken when v1(?) != v0(?), and falls through when v1(?) == v0(?).
  The `beq` branch at 0x4c3f20 targets 0x4c3b44 and is always taken.
  The `bltz` branch at 0x4c3f28 targets 0x4c3b40, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0x4c3f30 targets 0x4c3f48, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c3f40 targets 0x4c3f38, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4c3f50 targets 0x4c3fb0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c3f58 targets 0x4c4730, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x4c3f90 targets 0x4c3f70, is taken when v1(?) != v0(?), and falls through when v1(?) == v0(?).
  The `beq` branch at 0x4c3fb0 targets 0x4c3b44 and is always taken.
  The `bltz` branch at 0x4c3fb8 targets 0x4c3b40, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0x4c3fc0 targets 0x4c3fdc, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c3fd4 targets 0x4c3fc8, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4c3fe4 targets 0x4c4080, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c3fec targets 0x4c4754, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4c4040 targets 0x4c4408, is taken when v0(?) == a0(?), and falls through when v0(?) != a0(?).
  The `bne` branch at 0x4c4068 targets 0x4c4020, is taken when v1(?) != a0(?), and falls through when v1(?) == a0(?).
  The `beq` branch at 0x4c4080 targets 0x4c3b44 and is always taken.
  The `bltz` branch at 0x4c4088 targets 0x4c3b40, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0x4c4098 targets 0x4c40b4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c40ac targets 0x4c40a0, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4c40b4 targets 0x4c4120, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x4c40bc targets 0x4c4778, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `bne` branch at 0x4c4100 targets 0x4c40e0, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x4c4120 targets 0x4c3b44 and is always taken.
  The `bltz` branch at 0x4c4128 targets 0x4c3b40, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0x4c4138 targets 0x4c4154, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c414c targets 0x4c4140, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4c4154 targets 0x4c41c0, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x4c415c targets 0x4c479c, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `bne` branch at 0x4c41a0 targets 0x4c4180, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x4c41c0 targets 0x4c3b44 and is always taken.
  The `bltz` branch at 0x4c41c8 targets 0x4c3b40, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0x4c41d8 targets 0x4c41f0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c41e8 targets 0x4c41e0, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4c41f0 targets 0x4c4250, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x4c41f8 targets 0x4c47c0, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `bne` branch at 0x4c4230 targets 0x4c4210, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x4c4250 targets 0x4c3b44 and is always taken.
  The `bltz` branch at 0x4c4258 targets 0x4c3b40, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0x4c4268 targets 0x4c4280, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c4278 targets 0x4c4270, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4c4280 targets 0x4c42e0, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x4c4288 targets 0x4c47e4, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `bne` branch at 0x4c42c0 targets 0x4c42a0, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x4c42e0 targets 0x4c3b44 and is always taken.
  The `bltz` branch at 0x4c42e8 targets 0x4c3b40, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0x4c42f8 targets 0x4c4310, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c4308 targets 0x4c4300, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4c4310 targets 0x4c4370, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x4c4318 targets 0x4c4808, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `bne` branch at 0x4c4350 targets 0x4c4330, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x4c4370 targets 0x4c3b44 and is always taken.
  The `bltz` branch at 0x4c4378 targets 0x4c3b40, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0x4c4388 targets 0x4c43a0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c4398 targets 0x4c4390, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4c43a0 targets 0x4c4400, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x4c43a8 targets 0x4c482c, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `bne` branch at 0x4c43e0 targets 0x4c43c0, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x4c4400 targets 0x4c3b44 and is always taken.
  The `beq` branch at 0x4c4408 targets 0x4c4074 and is always taken.
  The `bne` branch at 0x4c4414 targets 0x4c4478, is taken when a3(=[0x5aa8c0]) != t1(=[a1+5]:1), and falls through when a3(=[0x5aa8c0]) == t1(=[a1+5]:1).
  The `bne` branch at 0x4c4424 targets 0x4c2618, is taken when a4(=[0x5aa8c4]) != a5(?), and falls through when a4(=[0x5aa8c4]) == a5(?).
  The `beq` branch at 0x4c4434 targets 0x4c2778, is taken when a6(=[0x5aa8c8]) == t2(?), and falls through when a6(=[0x5aa8c8]) != t2(?).
  The `beq` branch at 0x4c443c targets 0x4c261c and is always taken.
  The `beq` branch at 0x4c4448 targets 0x4c2794 and is always taken.
  The `beq` branch at 0x4c4454 targets 0x4c26b0 and is always taken.
  The `beq` branch at 0x4c445c targets 0x4c26b0 and is always taken.
  The `bne` branch at 0x4c4468 targets 0x4c3a80, is taken when s7(=entry(0x5a51a8)) != 0, and falls through when s7(=entry(0x5a51a8)) == 0.
  The `beq` branch at 0x4c4470 targets 0x4c2c88 and is always taken.
  The `beq` branch at 0x4c4478 targets 0x4c2618 and is always taken.
  The `beq` branch at 0x4c4480 targets 0x4c2898 and is always taken.
  The `beq` branch at 0x4c448c targets 0x4c265c and is always taken.
  The `beq` branch at 0x4c4494 targets 0x4c265c and is always taken.
  The `beq` branch at 0x4c44b4 targets 0x4c265c and is always taken.
  The `beq` branch at 0x4c44d4 targets 0x4c265c and is always taken.
  The `beq` branch at 0x4c44f4 targets 0x4c265c and is always taken.
  The `beq` branch at 0x4c4514 targets 0x4c265c and is always taken.
  The `beq` branch at 0x4c4520 targets 0x4c265c and is always taken.
  The `beq` branch at 0x4c4540 targets 0x4c265c and is always taken.
  The `beq` branch at 0x4c4560 targets 0x4c265c and is always taken.
  The `beq` branch at 0x4c4580 targets 0x4c265c and is always taken.
  The `beq` branch at 0x4c45a0 targets 0x4c265c and is always taken.
  The `beq` branch at 0x4c45ac targets 0x4c265c and is always taken.
  The `beq` branch at 0x4c45cc targets 0x4c265c and is always taken.
  The `beq` branch at 0x4c45ec targets 0x4c265c and is always taken.
  The `beq` branch at 0x4c460c targets 0x4c265c and is always taken.
  The `beq` branch at 0x4c462c targets 0x4c265c and is always taken.
  The `beq` branch at 0x4c4650 targets 0x4c3c10 and is always taken.
  The `beq` branch at 0x4c4674 targets 0x4c3b40 and is always taken.
  The `beq` branch at 0x4c4698 targets 0x4c3cb0 and is always taken.
  The `beq` branch at 0x4c46bc targets 0x4c3d40 and is always taken.
  The `beq` branch at 0x4c46e0 targets 0x4c3de0 and is always taken.
  The `beq` branch at 0x4c4704 targets 0x4c3e80 and is always taken.
  The `beq` branch at 0x4c4728 targets 0x4c3f20 and is always taken.
  The `beq` branch at 0x4c474c targets 0x4c3fb0 and is always taken.
  The `beq` branch at 0x4c4770 targets 0x4c4080 and is always taken.
  The `beq` branch at 0x4c4794 targets 0x4c4120 and is always taken.
  The `beq` branch at 0x4c47b8 targets 0x4c41c0 and is always taken.
  The `beq` branch at 0x4c47dc targets 0x4c4250 and is always taken.
  The `beq` branch at 0x4c4800 targets 0x4c42e0 and is always taken.
  The `beq` branch at 0x4c4824 targets 0x4c4370 and is always taken.
  The `beq` branch at 0x4c4848 targets 0x4c4400 and is always taken.
  The `beq` branch at 0x4c486c targets 0x4c31a0 and is always taken.
  The `beq` branch at 0x4c4890 targets 0x4c3240 and is always taken.
  The `beq` branch at 0x4c48b4 targets 0x4c32e0 and is always taken.
  The `beq` branch at 0x4c48d8 targets 0x4c3370 and is always taken.
  The `beq` branch at 0x4c4900 targets 0x4c3410 and is always taken.
  The `beq` branch at 0x4c4924 targets 0x4c30d0 and is always taken.
  The `beq` branch at 0x4c4948 targets 0x4c34b0 and is always taken.
  The `beq` branch at 0x4c496c targets 0x4c3540 and is always taken.
  The `beq` branch at 0x4c4990 targets 0x4c3610 and is always taken.
  The `beq` branch at 0x4c49b4 targets 0x4c36b0 and is always taken.
  The `beq` branch at 0x4c49d8 targets 0x4c3750 and is always taken.
  The `beq` branch at 0x4c49fc targets 0x4c37e0 and is always taken.
  The `beq` branch at 0x4c4a20 targets 0x4c3870 and is always taken.
  The `beq` branch at 0x4c4a44 targets 0x4c3900 and is always taken.
  The `beq` branch at 0x4c4a68 targets 0x4c3990 and is always taken.
  The `beq` branch at 0x4c4ac8 targets 0x4c2c38, is taken when t2(?) == a2(?), and falls through when t2(?) != a2(?).
  The `beq` branch at 0x4c4ad0 targets 0x4c4a70 and is always taken.
  The `beq` branch at 0x4c4ae4 targets 0x4c2c9c and is always taken.
  The return at 0x4c28f0 has v0 = one of ?, ret(miClipSpans).
  The instructions from 0x4c279c to 0x4c279c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4c28f8 to 0x4c28fc are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x4c264c uses the jump table at 0x5a16a8 with targets 0x4c4488, 0x4c4614, 0x4c45f4, 0x4c45d4, 0x4c45b4, 0x4c45a8, 0x4c4588, 0x4c4568, 0x4c4548, 0x4c4528, 0x4c451c, 0x4c44fc, 0x4c44dc, 0x4c44bc, 0x4c449c, 0x4c4494.
  The indirect jump at 0x4c310c uses the jump table at 0x5a1768 with targets 0x4c30d0, 0x4c3908, 0x4c3878, 0x4c37e8, 0x4c3758, 0x4c36b8, 0x4c3618, 0x4c3548, 0x4c34b8, 0x4c3418, 0x4c303c, 0x4c3378, 0x4c32e8, 0x4c3248, 0x4c31a8, 0x4c3114.
  The indirect jump at 0x4c310c uses the jump table at 0x5a1768 with targets 0x4c30d0, 0x4c3908, 0x4c3878, 0x4c37e8, 0x4c3758, 0x4c36b8, 0x4c3618, 0x4c3548, 0x4c34b8, 0x4c3418, 0x4c303c, 0x4c3378, 0x4c32e8, 0x4c3248, 0x4c31a8, 0x4c3114.
  The indirect jump at 0x4c310c uses the jump table at 0x5a1768 with targets 0x4c30d0, 0x4c3908, 0x4c3878, 0x4c37e8, 0x4c3758, 0x4c36b8, 0x4c3618, 0x4c3548, 0x4c34b8, 0x4c3418, 0x4c303c, 0x4c3378, 0x4c32e8, 0x4c3248, 0x4c31a8, 0x4c3114.
  The indirect jump at 0x4c310c uses the jump table at 0x5a1768 with targets 0x4c30d0, 0x4c3908, 0x4c3878, 0x4c37e8, 0x4c3758, 0x4c36b8, 0x4c3618, 0x4c3548, 0x4c34b8, 0x4c3418, 0x4c303c, 0x4c3378, 0x4c32e8, 0x4c3248, 0x4c31a8, 0x4c3114.
  The indirect jump at 0x4c310c uses the jump table at 0x5a1768 with targets 0x4c30d0, 0x4c3908, 0x4c3878, 0x4c37e8, 0x4c3758, 0x4c36b8, 0x4c3618, 0x4c3548, 0x4c34b8, 0x4c3418, 0x4c303c, 0x4c3378, 0x4c32e8, 0x4c3248, 0x4c31a8, 0x4c3114.
  The indirect jump at 0x4c39e4 uses the jump table at 0x5a16e8 with targets 0x4c39b0, 0x4c3a70, 0x4c3a68, 0x4c3a60, 0x4c3a58, 0x4c3a4c, 0x4c3a40, 0x4c3a34, 0x4c3a2c, 0x4c3a20, 0x4c3a14, 0x4c3a08, 0x4c3a00, 0x4c39f4, 0x4c39a0, 0x4c39ec.
  The indirect jump at 0x4c39e4 uses the jump table at 0x5a16e8 with targets 0x4c39b0, 0x4c3a70, 0x4c3a68, 0x4c3a60, 0x4c3a58, 0x4c3a4c, 0x4c3a40, 0x4c3a34, 0x4c3a2c, 0x4c3a20, 0x4c3a14, 0x4c3a08, 0x4c3a00, 0x4c39f4, 0x4c39a0, 0x4c39ec.
  The indirect jump at 0x4c39e4 uses the jump table at 0x5a16e8 with targets 0x4c39b0, 0x4c3a70, 0x4c3a68, 0x4c3a60, 0x4c3a58, 0x4c3a4c, 0x4c3a40, 0x4c3a34, 0x4c3a2c, 0x4c3a20, 0x4c3a14, 0x4c3a08, 0x4c3a00, 0x4c39f4, 0x4c39a0, 0x4c39ec.
  The indirect jump at 0x4c39e4 uses the jump table at 0x5a16e8 with targets 0x4c39b0, 0x4c3a70, 0x4c3a68, 0x4c3a60, 0x4c3a58, 0x4c3a4c, 0x4c3a40, 0x4c3a34, 0x4c3a2c, 0x4c3a20, 0x4c3a14, 0x4c3a08, 0x4c3a00, 0x4c39f4, 0x4c39a0, 0x4c39ec.
  The indirect jump at 0x4c39e4 uses the jump table at 0x5a16e8 with targets 0x4c39b0, 0x4c3a70, 0x4c3a68, 0x4c3a60, 0x4c3a58, 0x4c3a4c, 0x4c3a40, 0x4c3a34, 0x4c3a2c, 0x4c3a20, 0x4c3a14, 0x4c3a08, 0x4c3a00, 0x4c39f4, 0x4c39a0, 0x4c39ec.
  The indirect jump at 0x4c3b7c uses the jump table at 0x5a1728 with targets 0x4c3b40, 0x4c4378, 0x4c42e8, 0x4c4258, 0x4c41c8, 0x4c4128, 0x4c4088, 0x4c3fb8, 0x4c3f28, 0x4c3e88, 0x4c3de8, 0x4c3d48, 0x4c3cb8, 0x4c3c18, 0x4c3ab4, 0x4c3b84.
  The indirect jump at 0x4c3b7c uses the jump table at 0x5a1728 with targets 0x4c3b40, 0x4c4378, 0x4c42e8, 0x4c4258, 0x4c41c8, 0x4c4128, 0x4c4088, 0x4c3fb8, 0x4c3f28, 0x4c3e88, 0x4c3de8, 0x4c3d48, 0x4c3cb8, 0x4c3c18, 0x4c3ab4, 0x4c3b84.
  The indirect jump at 0x4c3b7c uses the jump table at 0x5a1728 with targets 0x4c3b40, 0x4c4378, 0x4c42e8, 0x4c4258, 0x4c41c8, 0x4c4128, 0x4c4088, 0x4c3fb8, 0x4c3f28, 0x4c3e88, 0x4c3de8, 0x4c3d48, 0x4c3cb8, 0x4c3c18, 0x4c3ab4, 0x4c3b84.
  The indirect jump at 0x4c3b7c uses the jump table at 0x5a1728 with targets 0x4c3b40, 0x4c4378, 0x4c42e8, 0x4c4258, 0x4c41c8, 0x4c4128, 0x4c4088, 0x4c3fb8, 0x4c3f28, 0x4c3e88, 0x4c3de8, 0x4c3d48, 0x4c3cb8, 0x4c3c18, 0x4c3ab4, 0x4c3b84.
  The indirect jump at 0x4c3b7c uses the jump table at 0x5a1728 with targets 0x4c3b40, 0x4c4378, 0x4c42e8, 0x4c4258, 0x4c41c8, 0x4c4128, 0x4c4088, 0x4c3fb8, 0x4c3f28, 0x4c3e88, 0x4c3de8, 0x4c3d48, 0x4c3cb8, 0x4c3c18, 0x4c3ab4, 0x4c3b84.
  The indirect jump at 0x4c310c uses the jump table at 0x5a1768 with targets 0x4c30d0, 0x4c3908, 0x4c3878, 0x4c37e8, 0x4c3758, 0x4c36b8, 0x4c3618, 0x4c3548, 0x4c34b8, 0x4c3418, 0x4c303c, 0x4c3378, 0x4c32e8, 0x4c3248, 0x4c31a8, 0x4c3114.
  The indirect jump at 0x4c310c uses the jump table at 0x5a1768 with targets 0x4c30d0, 0x4c3908, 0x4c3878, 0x4c37e8, 0x4c3758, 0x4c36b8, 0x4c3618, 0x4c3548, 0x4c34b8, 0x4c3418, 0x4c303c, 0x4c3378, 0x4c32e8, 0x4c3248, 0x4c31a8, 0x4c3114.
  The indirect jump at 0x4c39e4 uses the jump table at 0x5a16e8 with targets 0x4c39b0, 0x4c3a70, 0x4c3a68, 0x4c3a60, 0x4c3a58, 0x4c3a4c, 0x4c3a40, 0x4c3a34, 0x4c3a2c, 0x4c3a20, 0x4c3a14, 0x4c3a08, 0x4c3a00, 0x4c39f4, 0x4c39a0, 0x4c39ec.
  The indirect jump at 0x4c3b7c uses the jump table at 0x5a1728 with targets 0x4c3b40, 0x4c4378, 0x4c42e8, 0x4c4258, 0x4c41c8, 0x4c4128, 0x4c4088, 0x4c3fb8, 0x4c3f28, 0x4c3e88, 0x4c3de8, 0x4c3d48, 0x4c3cb8, 0x4c3c18, 0x4c3ab4, 0x4c3b84.
  The indirect jump at 0x4c264c uses the jump table at 0x5a16a8 with targets 0x4c4488, 0x4c4614, 0x4c45f4, 0x4c45d4, 0x4c45b4, 0x4c45a8, 0x4c4588, 0x4c4568, 0x4c4548, 0x4c4528, 0x4c451c, 0x4c44fc, 0x4c44dc, 0x4c44bc, 0x4c449c, 0x4c4494.

- `cfb8OpaqueStipple32FS` in `usr/lib/X11/dyDDX/crm.so` at 0x4c4d20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/crm.so`.
  Range: 0x4c4d20-0x4c5c10 (3824 bytes).
  It occupies 3824 bytes.
  The `lbu` at 0x4c4d24 loads 1 byte from a1 (arg1 at entry) +0x5.
  The `lw` at 0x4c4d50 loads 4 bytes from a1 (arg1 at entry) +0x4c.
  The `lw` at 0x4c4d88 loads 4 bytes from ([a1+76] + ([0x5aa8b8] << 0x2)) +0x0.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x14, including `lw` at 0x4c4d8c, `lw` at 0x4c5ac4, `lw` at 0x4c5af0.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x1c, including `lw` at 0x4c4d90, `lw` at 0x4c5ab8, `lw` at 0x4c5af4.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x18, including `lw` at 0x4c4d94, `lw` at 0x4c5a8c.
  The `lw` at 0x4c4dc4 loads 4 bytes from [([a1+76] + ([0x5aa8b8] << 0x2))] +0x8.
  The `lw` at 0x4c4dc8 loads 4 bytes from [[([a1+76] + ([0x5aa8b8] << 0x2))]+8] +0x8.
  The `lw` at 0x4c4dd4 loads 4 bytes from [[[([a1+76] + ([0x5aa8b8] << 0x2))]+8]+8] +0x4.
  5 such `lh` accesses load 2 bytes from ?, including `lh` at 0x4c4e04, `lh` at 0x4c4e20, `lh` at 0x4c524c.
  The `lw` at 0x4c4eb4 loads 4 bytes from [([a1+76] + ([0x5aa8b8] << 0x2))] +0x4.
  The `lbu` at 0x4c4eb8 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lhu` at 0x4c4ebc loads 2 bytes from [[([a1+76] + ([0x5aa8b8] << 0x2))]+4] +0xe.
  The `lw` at 0x4c4ec4 loads 4 bytes from [[([a1+76] + ([0x5aa8b8] << 0x2))]+4] +0x20.
  The `lw` at 0x4c4edc loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x4c4ee0 loads 4 bytes from [a0+16] +0x74.
  26 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4c4ee4, `lw` at 0x4c4ee8, `lw` at 0x4c4f78.
  The `lw` at 0x4c4f54 loads 4 bytes from table(0x5a5198) +0x0.
  The `lw` at 0x4c4f58 loads 4 bytes from table(0x5a51a8) +0x0.
  16 such `lw` accesses load 4 bytes from table(0x5aa8d0) +0x0, including `lw` at 0x4c4f80, `lw` at 0x4c4fd0, `lw` at 0x4c5034.
  49 such `lw` accesses load 4 bytes from table(0x5aa910) +0x0, including `lw` at 0x4c4f84, `lw` at 0x4c4fd8, `lw` at 0x4c5038.
  97 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4c4fa0, `sw` at 0x4c4fec, `sw` at 0x4c505c.
  The `lw` at 0x4c5320 loads 4 bytes from table(0x5a51c8) +0x0.
  The `lw` at 0x4c532c loads 4 bytes from table(0x5a51b8) +0x0.
  The `jalr` at 0x4c4db8 calls cfb8SetOpaqueStipple [0x476700] with a0=[a1+5]:1, a1=[a1+24], a2=[a1+28], a3=[a1+20], a7=[a1+5]:1.
  The `jalr` at 0x4c4ea4 calls miClipSpans [0x449120] with a0=[[([a1+76] + ([0x5aa8b8] << 0x2))]+8], a1=a3 at entry (arg3), a2=a4 at entry (arg4), a3=a2 at entry (arg2), a6=a5 at entry (arg5).
  The `beq` branch at 0x4c4d84 targets 0x4c5a8c, is taken when at(=[0x5aa8bc]) == v0(=0x3), and falls through when at(=[0x5aa8bc]) != v0(=0x3).
  The `beq` branch at 0x4c4dcc targets 0x4c5ae8, is taken when a7(=[[[([a1+76] + ([0x5aa8b8] << 0x2))]+8]+8]) == 0, and falls through when a7(=[[[([a1+76] + ([0x5aa8b8] << 0x2))]+8]+8]) != 0.
  The `blez` branch at 0x4c4dd8 targets 0x4c4f10, is taken when t1(=[[[[([a1+76] + ([0x5aa8b8] << 0x2))]+8]+8]+4]) <= 0 (signed), and falls through when t1(=[[[[([a1+76] + ([0x5aa8b8] << 0x2))]+8]+8]+4]) > 0 (signed).
  The `beq` branch at 0x4c4de0 targets 0x4c4e20 and is always taken.
  The `blez` branch at 0x4c4dfc targets 0x4c4e38, is taken when t1(?) <= 0 (signed), and falls through when t1(?) > 0 (signed).
  The `beq` branch at 0x4c4e08 targets 0x4c4df4, is taken when a1(?) == t2(?), and falls through when a1(?) != t2(?).
  The `blez` branch at 0x4c4e18 targets 0x4c4e50, is taken when t1(?) <= 0 (signed), and falls through when t1(?) > 0 (signed).
  The `blez` branch at 0x4c4e24 targets 0x4c4e44, is taken when t1(?) <= 0 (signed), and falls through when t1(?) > 0 (signed).
  The `beq` branch at 0x4c4e30 targets 0x4c4df0 and is always taken.
  The `beq` branch at 0x4c4e3c targets 0x4c4e10 and is always taken.
  The `beq` branch at 0x4c4e48 targets 0x4c4e14 and is always taken.
  The `beq` branch at 0x4c4e58 targets 0x4c4f10, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x4c4e80 targets 0x4c4f10, is taken when sp(?) == 0, and falls through when sp(?) != 0.
  The `beq` branch at 0x4c4e88 targets 0x4c4f10, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x4c4ed0 targets 0x4c5b00, is taken when t1(=[a0]:1) == t2(=0x1), and falls through when t1(=[a0]:1) != t2(=0x1).
  The `blez` branch at 0x4c4eec targets 0x4c4f10, is taken when a1(=ret(miClipSpans)) <= 0 (signed), and falls through when a1(=ret(miClipSpans)) > 0 (signed).
  The `beq` branch at 0x4c4f08 targets 0x4c5bfc and is always taken.
  The `beq` branch at 0x4c4f60 targets 0x4c53f0, is taken when v0(=[0x5aa950]) == v1(=0x3), and falls through when v0(=[0x5aa950]) != v1(=0x3).
  The `beq` branch at 0x4c4f68 targets 0x4c4fa4, is taken when a4(=entry(0x5a5198)) == 0, and falls through when a4(=entry(0x5a5198)) != 0.
  The `blez` branch at 0x4c4fa4 targets 0x4c51f0, is taken when s2(?) <= 0 (signed), and falls through when s2(?) > 0 (signed).
  The `beq` branch at 0x4c4fb8 targets 0x4c4ff0, is taken when (s2(?) & 0x1) == 0, and falls through when (s2(?) & 0x1) != 0.
  The `beq` branch at 0x4c4ff4 targets 0x4c51f0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x4c4ffc targets 0x4c5b94, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4c50a8 targets 0x4c5390, is taken when t2(?) == a6(?), and falls through when t2(?) != a6(?).
  The `beq` branch at 0x4c5108 targets 0x4c5374, is taken when a7(?) == a6(?), and falls through when a7(?) != a6(?).
  The `bne` branch at 0x4c5168 targets 0x4c5050, is taken when a5(?) != a6(?), and falls through when a5(?) == a6(?).
  The `beq` branch at 0x4c51f0 targets 0x4c5238, is taken when s5(=entry(0x5a51a8)) == 0, and falls through when s5(=entry(0x5a51a8)) != 0.
  The `beq` branch at 0x4c5244 targets 0x4c4f10, is taken when s3(?) == a7(?), and falls through when s3(?) != a7(?).
  The `beq` branch at 0x4c5318 targets 0x4c4f50, is taken when a7(?) >= 0x5 (signed), and falls through when a7(?) < 0x5 (signed).
  The `beq` branch at 0x4c5340 targets 0x4c53b4, is taken when t2(=[0x5aa950]) == a7(=0x3), and falls through when t2(=[0x5aa950]) != a7(=0x3).
  The `beq` branch at 0x4c5348 targets 0x4c523c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x4c536c targets 0x4c5238 and is always taken.
  The `beq` branch at 0x4c5388 targets 0x4c5188 and is always taken.
  The `beq` branch at 0x4c53ac targets 0x4c5188 and is always taken.
  The `beq` branch at 0x4c53c4 targets 0x4c5744, is taken when a6(?) >= 0x40 (signed), and falls through when a6(?) < 0x40 (signed).
  The `beq` branch at 0x4c53cc targets 0x4c523c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x4c53e8 targets 0x4c5238 and is always taken.
  The `beq` branch at 0x4c5400 targets 0x4c5788, is taken when a6(?) >= 0x40 (signed), and falls through when a6(?) < 0x40 (signed).
  The `beq` branch at 0x4c5408 targets 0x4c5434, is taken when a4(=entry(0x5a5198)) == 0, and falls through when a4(=entry(0x5a5198)) != 0.
  The `blez` branch at 0x4c5434 targets 0x4c5700, is taken when s2(?) <= 0 (signed), and falls through when s2(?) > 0 (signed).
  The `beq` branch at 0x4c5448 targets 0x4c5478, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x4c5470 targets 0x4c5450, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x4c5478 targets 0x4c5700, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c5480 targets 0x4c5b14, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x4c5590 targets 0x4c5a20, is taken when a5(?) == a4(?), and falls through when a5(?) != a4(?).
  The `beq` branch at 0x4c5608 targets 0x4c5a54, is taken when a5(?) == a4(?), and falls through when a5(?) != a4(?).
  The `bne` branch at 0x4c5680 targets 0x4c5520, is taken when a5(?) != a4(?), and falls through when a5(?) == a4(?).
  The `beq` branch at 0x4c5700 targets 0x4c5238, is taken when s5(=entry(0x5a51a8)) == 0, and falls through when s5(=entry(0x5a51a8)) != 0.
  The `beq` branch at 0x4c573c targets 0x4c5238 and is always taken.
  The `beq` branch at 0x4c5748 targets 0x4c5774, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x4c5780 targets 0x4c5844 and is always taken.
  The `beq` branch at 0x4c578c targets 0x4c57c0, is taken when a4(=entry(0x5a5198)) == 0, and falls through when a4(=entry(0x5a5198)) != 0.
  The `blez` branch at 0x4c57cc targets 0x4c57ec, is taken when t3(?) <= 0 (signed), and falls through when t3(?) > 0 (signed).
  The `beq` branch at 0x4c57e4 targets 0x4c59b0 and is always taken.
  The `beq` branch at 0x4c5804 targets 0x4c583c, is taken when s5(=entry(0x5a51a8)) == 0, and falls through when s5(=entry(0x5a51a8)) != 0.
  The `beq` branch at 0x4c5840 targets 0x4c5238, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x4c586c targets 0x4c58e0 and is always taken.
  The `bne` branch at 0x4c58b0 targets 0x4c5890, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x4c58d8 targets 0x4c5238, is taken when a7(?) == a3(?), and falls through when a7(?) != a3(?).
  The `beq` branch at 0x4c58e0 targets 0x4c58d0, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4c5904 targets 0x4c591c, is taken when (t8(?) & 0x7) == 0, and falls through when (t8(?) & 0x7) != 0.
  The `bne` branch at 0x4c5914 targets 0x4c590c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x4c591c targets 0x4c58d0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x4c5924 targets 0x4c5880, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x4c5948 targets 0x4c58d0 and is always taken.
  The `bne` branch at 0x4c5980 targets 0x4c5960, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x4c59a8 targets 0x4c57ec, is taken when a7(?) == t3(?), and falls through when a7(?) != t3(?).
  The `bltz` branch at 0x4c59b0 targets 0x4c59a0, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0x4c59d4 targets 0x4c59ec, is taken when (s1(?) & 0x7) == 0, and falls through when (s1(?) & 0x7) != 0.
  The `bne` branch at 0x4c59e4 targets 0x4c59dc, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x4c59ec targets 0x4c59a0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x4c59f4 targets 0x4c5950, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x4c5a18 targets 0x4c59a0 and is always taken.
  The `beq` branch at 0x4c5a4c targets 0x4c56b0 and is always taken.
  The `beq` branch at 0x4c5a84 targets 0x4c56b0 and is always taken.
  The `bne` branch at 0x4c5aa4 targets 0x4c5af0, is taken when t9(=[0x5aa8c0]) != a7(=[a1+5]:1), and falls through when t9(=[0x5aa8c0]) == a7(=[a1+5]:1).
  The `bne` branch at 0x4c5ab4 targets 0x4c5b08, is taken when at(=[0x5aa8c4]) != v0(?), and falls through when at(=[0x5aa8c4]) == v0(?).
  The `bne` branch at 0x4c5ac8 targets 0x4c4db0, is taken when v1(=[0x5aa954]) != a0(?), and falls through when v1(=[0x5aa954]) == a0(?).
  The `beq` branch at 0x4c5ad8 targets 0x4c4dc4, is taken when a1(=[0x5aa8c8]) == a4(?), and falls through when a1(=[0x5aa8c8]) != a4(?).
  The `beq` branch at 0x4c5ae0 targets 0x4c4db4 and is always taken.
  The `beq` branch at 0x4c5ae8 targets 0x4c4de0 and is always taken.
  The `beq` branch at 0x4c5af8 targets 0x4c4db0 and is always taken.
  The `beq` branch at 0x4c5b00 targets 0x4c4ee4 and is always taken.
  The `beq` branch at 0x4c5b0c targets 0x4c4db0 and is always taken.
  The `beq` branch at 0x4c5b84 targets 0x4c5700, is taken when a5(?) == a0(?), and falls through when a5(?) != a0(?).
  The `beq` branch at 0x4c5b8c targets 0x4c5b14 and is always taken.
  The `beq` branch at 0x4c5bec targets 0x4c51f0, is taken when a5(?) == a0(?), and falls through when a5(?) != a0(?).
  The `beq` branch at 0x4c5bf4 targets 0x4c5b94 and is always taken.
  The `beq` branch at 0x4c5c08 targets 0x4c5250 and is always taken.
  The return at 0x4c4f40 has v0 = one of ?, ret(miClipSpans).
  The instructions from 0x4c4de8 to 0x4c4dec are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4c4f48 to 0x4c4f4c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4c5874 to 0x4c587c are not reached by any path from the entry, and their branches are not listed.

- `cfbUnnaturalStippleFS` in `usr/lib/X11/dyDDX/crm.so` at 0x4c5c10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/crm.so`.
  Range: 0x4c5c10-0x4c73a0 (6032 bytes).
  It occupies 6032 bytes.
  The `lw` at 0x4c5c38 loads 4 bytes from a1 (arg1 at entry) +0x10.
  2 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x5, including `lbu` at 0x4c5c80, `lbu` at 0x4c6ef4.
  7 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x14, including `lw` at 0x4c5c84, `lw` at 0x4c6f0c, `lw` at 0x4c6f94.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x1c, including `lw` at 0x4c5c88, `lw` at 0x4c6f7c, `lw` at 0x4c70dc.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x18, including `lw` at 0x4c5c8c, `lw` at 0x4c6f10, `lw` at 0x4c6f58.
  The `lw` at 0x4c5cc4 loads 4 bytes from a1 (arg1 at entry) +0x4c.
  The `lw` at 0x4c5cd0 loads 4 bytes from ([a1+76] + ([0x5aa8b8] << 0x2)) +0x0.
  The `lw` at 0x4c5cd4 loads 4 bytes from [([a1+76] + ([0x5aa8b8] << 0x2))] +0x8.
  The `lw` at 0x4c5cd8 loads 4 bytes from [[([a1+76] + ([0x5aa8b8] << 0x2))]+8] +0x8.
  The `lw` at 0x4c5ce4 loads 4 bytes from [[[([a1+76] + ([0x5aa8b8] << 0x2))]+8]+8] +0x4.
  4 such `lh` accesses load 2 bytes from ?, including `lh` at 0x4c5d10, `lh` at 0x4c5d2c, `lh` at 0x4c5ff0.
  The `lw` at 0x4c5dbc loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `lw` at 0x4c5dc0 loads 4 bytes from [a1+36] +0x20.
  The `lhu` at 0x4c5dc4 loads 2 bytes from [a1+36] +0xe.
  The `lw` at 0x4c5dc8 loads 4 bytes from [a1+36] +0x1c.
  The `lhu` at 0x4c5dcc loads 2 bytes from [a1+36] +0xc.
  The `lbu` at 0x4c5dd0 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lw` at 0x4c5df0 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x4c5df4 loads 4 bytes from [a0+16] +0x74.
  The `lh` at 0x4c5df8 loads 2 bytes from a1 (arg1 at entry) +0x28.
  The `lh` at 0x4c5e10 loads 2 bytes from a1 (arg1 at entry) +0x2a.
  63 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4c5e40, `lw` at 0x4c5e98, `lw` at 0x4c5f2c.
  The `lh` at 0x4c5e44 loads 2 bytes from a0 (arg0 at entry) +0x8.
  The `lh` at 0x4c5e5c loads 2 bytes from a0 (arg0 at entry) +0xa.
  13 such `lw` accesses load 4 bytes from table(0x5a51d8) +0x0, including `lw` at 0x4c5f28, `lw` at 0x4c6158, `lw` at 0x4c66f4.
  The `lw` at 0x4c5fa0 loads 4 bytes from table(0x5a51b8) +0x0.
  The `lw` at 0x4c5fac loads 4 bytes from table(0x5a51c8) +0x0.
  24 such `lw` accesses load 4 bytes from table(0x5aa8d0) +0x0, including `lw` at 0x4c5fb0, `lw` at 0x4c623c, `lw` at 0x4c6298.
  24 such `lw` accesses load 4 bytes from table(0x5aa910) +0x0, including `lw` at 0x4c5fb4, `lw` at 0x4c6244, `lw` at 0x4c629c.
  36 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4c5fd4, `sw` at 0x4c6258, `sw` at 0x4c62b0.
  The `lw` at 0x4c6214 loads 4 bytes from table(0x5a5198) +0x0.
  3 such `lw` accesses load 4 bytes from table(0x5a51a8) +0x0, including `lw` at 0x4c6480, `lw` at 0x4c6744, `lw` at 0x4c6c4c.
  The `lw` at 0x4c6f44 loads 4 bytes from table(0x5a17a8) +0x0.
  The `lw` at 0x4c7020 loads 4 bytes from abs 0x5a52e4 (cfb8StippleMasks+4).
  The `lw` at 0x4c702c loads 4 bytes from abs 0x5a52e0 (cfb8StippleMasks).
  The `jalr` at 0x4c5ca4 calls cfb8SetOpaqueStipple [0x476700] with a0=[a1+5]:1, a1=[a1+24], a2=[a1+28], a3=[a1+20], a7=[a1+5]:1.
  The `jalr` at 0x4c5db4 calls miClipSpans [0x449120] with a0=[[([a1+76] + ([0x5aa8b8] << 0x2))]+8], a1=a3 at entry (arg3), a2=a4 at entry (arg4), a3=a2 at entry (arg2), a6=a5 at entry (arg5).
  The `jalr` at 0x4c61a4 calls FatalError with a0=0x5a53b8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4c5c70 targets 0x4c6ef4, is taken when t2(=0x2) == at(?), and falls through when t2(=0x2) != at(?).
  The `beq` branch at 0x4c5c7c targets 0x4c6f58, is taken when t0(=[0x5aa8bc]) == a0(=0x3), and falls through when t0(=[0x5aa8bc]) != a0(=0x3).
  The `beq` branch at 0x4c5cbc targets 0x4c5ed8, is taken when t1(?) == a1(=0x5), and falls through when t1(?) != a1(=0x5).
  The `beq` branch at 0x4c5cdc targets 0x4c6f50, is taken when a7(=[[[([a1+76] + ([0x5aa8b8] << 0x2))]+8]+8]) == 0, and falls through when a7(=[[[([a1+76] + ([0x5aa8b8] << 0x2))]+8]+8]) != 0.
  The `blez` branch at 0x4c5ce8 targets 0x4c5ed8, is taken when t1(=[[[[([a1+76] + ([0x5aa8b8] << 0x2))]+8]+8]+4]) <= 0 (signed), and falls through when t1(=[[[[([a1+76] + ([0x5aa8b8] << 0x2))]+8]+8]+4]) > 0 (signed).
  The `beq` branch at 0x4c5cf0 targets 0x4c5d2c and is always taken.
  The `blez` branch at 0x4c5d08 targets 0x4c5d44, is taken when t1(?) <= 0 (signed), and falls through when t1(?) > 0 (signed).
  The `beq` branch at 0x4c5d14 targets 0x4c5d00, is taken when t9(?) == t2(?), and falls through when t9(?) != t2(?).
  The `blez` branch at 0x4c5d24 targets 0x4c5d5c, is taken when t1(?) <= 0 (signed), and falls through when t1(?) > 0 (signed).
  The `blez` branch at 0x4c5d30 targets 0x4c5d50, is taken when t1(?) <= 0 (signed), and falls through when t1(?) > 0 (signed).
  The `beq` branch at 0x4c5d3c targets 0x4c5d00 and is always taken.
  The `beq` branch at 0x4c5d48 targets 0x4c5d1c and is always taken.
  The `beq` branch at 0x4c5d54 targets 0x4c5d20 and is always taken.
  The `beq` branch at 0x4c5d64 targets 0x4c5ed8, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x4c5d8c targets 0x4c5ed8, is taken when sp(?) == 0, and falls through when sp(?) != 0.
  The `beq` branch at 0x4c5d94 targets 0x4c5ed8, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x4c5de8 targets 0x4c70e0, is taken when t1(=[a0]:1) == t2(=0x1), and falls through when t1(=[a0]:1) != t2(=0x1).
  The `blez` branch at 0x4c5eac targets 0x4c5ed8, is taken when a2(=ret(miClipSpans)) <= 0 (signed), and falls through when a2(=ret(miClipSpans)) > 0 (signed).
  The `beq` branch at 0x4c5ed0 targets 0x4c5ff0 and is always taken.
  The `beq` branch at 0x4c5f1c targets 0x4c5f38, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x4c5f3c targets 0x4c5f78, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x4c5f44 targets 0x4c5f60, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x4c5f6c targets 0x4c6b1c, is taken when s1(?) < 0x20 (signed), and falls through when s1(?) >= 0x20 (signed).
  The `beq` branch at 0x4c5fe8 targets 0x4c5ed8, is taken when v1(?) == a0(?), and falls through when v1(?) != a0(?).
  The `bne` branch at 0x4c60e0 targets 0x4c613c, is taken when s0(?) < 0x20 (signed), and falls through when s0(?) >= 0x20 (signed).
  The `bne` branch at 0x4c6110 targets 0x4c61cc, is taken when a2(?) < 0x21 (signed), and falls through when a2(?) >= 0x21 (signed).
  The `beq` branch at 0x4c6134 targets 0x4c617c and is always taken.
  The `beq` branch at 0x4c613c targets 0x4c6a10, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x4c6174 targets 0x4c61d0, is taken when s0(?) >= a2(?) (signed), and falls through when s0(?) < a2(?) (signed).
  The `beq` branch at 0x4c61c4 targets 0x4c61d0 and is always taken.
  The `beq` branch at 0x4c61ec targets 0x4c6208, is taken when a7(?) >= 0x5 (signed), and falls through when a7(?) < 0x5 (signed).
  The `bne` branch at 0x4c61f8 targets 0x4c64d0, is taken when a3(?) < 0x4 (signed), and falls through when a3(?) >= 0x4 (signed).
  The `beq` branch at 0x4c6200 targets 0x4c5f90 and is always taken.
  The `beq` branch at 0x4c621c targets 0x4c6518, is taken when a7(?) >= a3(?) (signed), and falls through when a7(?) < a3(?) (signed).
  The `beq` branch at 0x4c6224 targets 0x4c6268, is taken when a6(=entry(0x5a5198)) == 0, and falls through when a6(=entry(0x5a5198)) != 0.
  The `blez` branch at 0x4c6268 targets 0x4c6470, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0x4c6280 targets 0x4c62b4, is taken when (s0(?) & 0x1) == 0, and falls through when (s0(?) & 0x1) != 0.
  The `beq` branch at 0x4c62c0 targets 0x4c646c, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x4c62cc targets 0x4c72f8, is taken when t3(?) < 0x2 (signed), and falls through when t3(?) >= 0x2 (signed).
  The `beq` branch at 0x4c6370 targets 0x4c6a84, is taken when t0(?) == a3(?), and falls through when t0(?) != a3(?).
  The `beq` branch at 0x4c63c8 targets 0x4c6a5c, is taken when a2(?) == a3(?), and falls through when a2(?) != a3(?).
  The `bne` branch at 0x4c6424 targets 0x4c6320, is taken when a4(?) != a3(?), and falls through when a4(?) == a3(?).
  The `beq` branch at 0x4c648c targets 0x4c5fd8, is taken when a1(=entry(0x5a51a8)) == 0, and falls through when a1(=entry(0x5a51a8)) != 0.
  The `beq` branch at 0x4c64c8 targets 0x4c5fd8 and is always taken.
  The `bne` branch at 0x4c64f8 targets 0x4c5f10, is taken when s1(?) < 0x20 (signed), and falls through when s1(?) >= 0x20 (signed).
  The `beq` branch at 0x4c6508 targets 0x4c5f78, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x4c6510 targets 0x4c5f50 and is always taken.
  The `beq` branch at 0x4c6528 targets 0x4c6570, is taken when s1(?) == t9(=[[a1+36]+12]:2), and falls through when s1(?) != t9(=[[a1+36]+12]:2).
  The `beq` branch at 0x4c653c targets 0x4c6570, is taken when a7(?) >= t2(?) (signed), and falls through when a7(?) < t2(?) (signed).
  The `bne` branch at 0x4c6554 targets 0x4c6b38, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x4c655c targets 0x4c6b5c and is always taken.
  The `bne` branch at 0x4c6574 targets 0x4c658c, is taken when a3(?) < 0x4 (signed), and falls through when a3(?) >= 0x4 (signed).
  The `beq` branch at 0x4c6584 targets 0x4c65f0 and is always taken.
  The `bne` branch at 0x4c65ac targets 0x4c6aa0, is taken when a1(?) < 0x20 (signed), and falls through when a1(?) >= 0x20 (signed).
  The `bne` branch at 0x4c65c0 targets 0x4c65d0, is taken when t0(?) < 0x21 (signed), and falls through when t0(?) >= 0x21 (signed).
  The `beq` branch at 0x4c65c8 targets 0x4c6ae0 and is always taken.
  The `beq` branch at 0x4c65f0 targets 0x4c6660, is taken when a6(=entry(0x5a5198)) == 0, and falls through when a6(=entry(0x5a5198)) != 0.
  The `bne` branch at 0x4c6634 targets 0x4c6a20, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x4c663c targets 0x4c6660 and is always taken.
  The `blez` branch at 0x4c6678 targets 0x4c6738, is taken when a6(?) <= 0 (signed), and falls through when a6(?) > 0 (signed).
  The `beq` branch at 0x4c66a0 targets 0x4c6728, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4c66dc targets 0x4c6de0, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x4c66e4 targets 0x4c6728 and is always taken.
  The `beq` branch at 0x4c66ec targets 0x4c6704, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0x4c6728 targets 0x4c7380, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x4c6750 targets 0x4c5fd8, is taken when a1(=entry(0x5a51a8)) == 0, and falls through when a1(=entry(0x5a51a8)) != 0.
  The `beq` branch at 0x4c678c targets 0x4c5fd8 and is always taken.
  The `beq` branch at 0x4c67a0 targets 0x4c67b8, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4c67e8 targets 0x4c6730, is taken when t0(?) == ra(?), and falls through when t0(?) != ra(?).
  The `bne` branch at 0x4c6828 targets 0x4c683c, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x4c6834 targets 0x4c68a4 and is always taken.
  The `bne` branch at 0x4c6840 targets 0x4c6928, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x4c6858 targets 0x4c6a00, is taken when a2(?) < 0x21 (signed), and falls through when a2(?) >= 0x21 (signed).
  The `beq` branch at 0x4c6860 targets 0x4c695c and is always taken.
  The `beq` branch at 0x4c6868 targets 0x4c6880, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0x4c68e8 targets 0x4c68fc, is taken when s0(?) < 0x4 (signed), and falls through when s0(?) >= 0x4 (signed).
  The `beq` branch at 0x4c68f4 targets 0x4c67dc and is always taken.
  The `bne` branch at 0x4c6900 targets 0x4c6994, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x4c6918 targets 0x4c6a08, is taken when a2(?) < 0x21 (signed), and falls through when a2(?) >= 0x21 (signed).
  The `beq` branch at 0x4c6920 targets 0x4c69c8 and is always taken.
  The `beq` branch at 0x4c692c targets 0x4c6944, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4c6948 targets 0x4c6888, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x4c6950 targets 0x4c696c, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x4c697c targets 0x4c6868, is taken when s1(?) < 0x20 (signed), and falls through when s1(?) >= 0x20 (signed).
  The `beq` branch at 0x4c698c targets 0x4c6888 and is always taken.
  The `beq` branch at 0x4c6998 targets 0x4c69b0, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4c69b4 targets 0x4c67c0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x4c69bc targets 0x4c69d8, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x4c69e8 targets 0x4c67a0, is taken when s1(?) < 0x20 (signed), and falls through when s1(?) >= 0x20 (signed).
  The `beq` branch at 0x4c69f8 targets 0x4c67c0 and is always taken.
  The `beq` branch at 0x4c6a00 targets 0x4c6888 and is always taken.
  The `beq` branch at 0x4c6a08 targets 0x4c67c0 and is always taken.
  The `beq` branch at 0x4c6a18 targets 0x4c616c and is always taken.
  The `bne` branch at 0x4c6a38 targets 0x4c6c9c, is taken when s1(?) < 0x20 (signed), and falls through when s1(?) >= 0x20 (signed).
  The `bne` branch at 0x4c6a4c targets 0x4c6644, is taken when a6(?) < 0x21 (signed), and falls through when a6(?) >= 0x21 (signed).
  The `beq` branch at 0x4c6a54 targets 0x4c6cd0 and is always taken.
  The `beq` branch at 0x4c6a7c targets 0x4c6444 and is always taken.
  The `beq` branch at 0x4c6a98 targets 0x4c6444 and is always taken.
  The `beq` branch at 0x4c6aa8 targets 0x4c6ac8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x4c6ad0 targets 0x4c65d4, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `beq` branch at 0x4c6ad8 targets 0x4c6af4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x4c6b04 targets 0x4c6ea0, is taken when s1(?) < 0x20 (signed), and falls through when s1(?) >= 0x20 (signed).
  The `beq` branch at 0x4c6b14 targets 0x4c65d4 and is always taken.
  The `beq` branch at 0x4c6b1c targets 0x4c5f7c, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4c6b30 targets 0x4c5f78 and is always taken.
  The `beq` branch at 0x4c6b60 targets 0x4c6bac, is taken when a6(=entry(0x5a5198)) == 0, and falls through when a6(=entry(0x5a5198)) != 0.
  The `bne` branch at 0x4c6ba0 targets 0x4c6e78, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `blez` branch at 0x4c6bc0 targets 0x4c6c40, is taken when v0(?) <= 0 (signed), and falls through when v0(?) > 0 (signed).
  The `beq` branch at 0x4c6bc8 targets 0x4c6c30, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `bne` branch at 0x4c6bf8 targets 0x4c6c0c, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x4c6c04 targets 0x4c6c30 and is always taken.
  The `bne` branch at 0x4c6c38 targets 0x4c7390, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x4c6c58 targets 0x4c5fd8, is taken when a1(=entry(0x5a51a8)) == 0, and falls through when a1(=entry(0x5a51a8)) != 0.
  The `beq` branch at 0x4c6c94 targets 0x4c5fd8 and is always taken.
  The `beq` branch at 0x4c6ca4 targets 0x4c6cbc, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4c6cc0 targets 0x4c6644, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x4c6cc8 targets 0x4c6ce4, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x4c6cf4 targets 0x4c6ec4, is taken when s1(?) < 0x20 (signed), and falls through when s1(?) >= 0x20 (signed).
  The `beq` branch at 0x4c6d04 targets 0x4c6644 and is always taken.
  The `beq` branch at 0x4c6d44 targets 0x4c6c40, is taken when a7(?) == t0(?), and falls through when a7(?) != t0(?).
  The `bne` branch at 0x4c6d68 targets 0x4c6d7c, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x4c6d74 targets 0x4c6da0 and is always taken.
  The `bne` branch at 0x4c6dcc targets 0x4c6d10, is taken when s0(?) < 0x4 (signed), and falls through when s0(?) >= 0x4 (signed).
  The `beq` branch at 0x4c6dd8 targets 0x4c6d34 and is always taken.
  The `bne` branch at 0x4c6de8 targets 0x4c6e10, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0x4c6e00 targets 0x4c6eec, is taken when a2(?) < 0x21 (signed), and falls through when a2(?) >= 0x21 (signed).
  The `beq` branch at 0x4c6e08 targets 0x4c6e3c and is always taken.
  The `beq` branch at 0x4c6e10 targets 0x4c6e28, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4c6e2c targets 0x4c670c, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x4c6e34 targets 0x4c6e50, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x4c6e60 targets 0x4c66ec, is taken when s1(?) < 0x20 (signed), and falls through when s1(?) >= 0x20 (signed).
  The `beq` branch at 0x4c6e70 targets 0x4c670c and is always taken.
  The `beq` branch at 0x4c6e98 targets 0x4c6bac and is always taken.
  The `beq` branch at 0x4c6ea0 targets 0x4c6eb8, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4c6ebc targets 0x4c65d4 and is always taken.
  The `beq` branch at 0x4c6ec4 targets 0x4c6ee0, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4c6ee4 targets 0x4c6644 and is always taken.
  The `beq` branch at 0x4c6eec targets 0x4c6710 and is always taken.
  The `beq` branch at 0x4c6f04 targets 0x4c70f0, is taken when t0(=[0x5aa8bc]) == t2(=0x2), and falls through when t0(=[0x5aa8bc]) != t2(=0x2).
  The `beq` branch at 0x4c6f3c targets 0x4c6fac, is taken when a7(=[a1+5]:1) >= 0x10 (unsigned), and falls through when a7(=[a1+5]:1) < 0x10 (unsigned).
  The `beq` branch at 0x4c6f50 targets 0x4c5cf0 and is always taken.
  The `bne` branch at 0x4c6f6c targets 0x4c70d4, is taken when t3(=[0x5aa8c0]) != a7(=[a1+5]:1), and falls through when t3(=[0x5aa8c0]) == a7(=[a1+5]:1).
  The `bne` branch at 0x4c6f80 targets 0x4c70e8, is taken when t8(=[0x5aa8c4]) != t9(?), and falls through when t8(=[0x5aa8c4]) == t9(?).
  The `bne` branch at 0x4c6f90 targets 0x4c5ca0, is taken when ra(=[0x5aa954]) != at(?), and falls through when ra(=[0x5aa954]) == at(?).
  The `beq` branch at 0x4c6f9c targets 0x4c5cb0, is taken when t0(=[0x5aa8c8]) == v0(?), and falls through when t0(=[0x5aa8c8]) != v0(?).
  The `beq` branch at 0x4c6fa4 targets 0x4c5ca4 and is always taken.
  The `beq` branch at 0x4c6fd0 targets 0x4c712c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x4c6fe0 targets 0x4c713c, is taken when t0(=-0x1) == t2(?), and falls through when t0(=-0x1) != t2(?).
  The `beq` branch at 0x4c7030 targets 0x4c7070 and is always taken.
  The `bne` branch at 0x4c70a4 targets 0x4c7038, is taken when a7(?) != t0(=0x5aa0a8), and falls through when a7(?) == t0(=0x5aa0a8).
  The `beq` branch at 0x4c70cc targets 0x4c5cb8 and is always taken.
  The `beq` branch at 0x4c70d8 targets 0x4c5ca0 and is always taken.
  The `beq` branch at 0x4c70e0 targets 0x4c5df8 and is always taken.
  The `beq` branch at 0x4c70e8 targets 0x4c5ca0 and is always taken.
  The `bne` branch at 0x4c70f4 targets 0x4c7144, is taken when a0(=[0x5aa8c0]) != a7(=[a1+5]:1), and falls through when a0(=[0x5aa8c0]) == a7(=[a1+5]:1).
  The `bne` branch at 0x4c7104 targets 0x4c6f14, is taken when a2(=[0x5aa8c4]) != a3(?), and falls through when a2(=[0x5aa8c4]) == a3(?).
  The `bne` branch at 0x4c7114 targets 0x4c6f18, is taken when a4(=[0x5aa8c8]) != a5(?), and falls through when a4(=[0x5aa8c8]) == a5(?).
  The `beq` branch at 0x4c7124 targets 0x4c5cb8 and is always taken.
  The `beq` branch at 0x4c7134 targets 0x4c7008 and is always taken.
  The `beq` branch at 0x4c713c targets 0x4c700c and is always taken.
  The `beq` branch at 0x4c7144 targets 0x4c6f14 and is always taken.
  The `beq` branch at 0x4c7150 targets 0x4c6fb4 and is always taken.
  The `beq` branch at 0x4c715c targets 0x4c6fb4 and is always taken.
  The `beq` branch at 0x4c717c targets 0x4c6fb4 and is always taken.
  The `beq` branch at 0x4c719c targets 0x4c6fb4 and is always taken.
  The `beq` branch at 0x4c71bc targets 0x4c6fb4 and is always taken.
  The `beq` branch at 0x4c71d8 targets 0x4c6fb4 and is always taken.
  The `beq` branch at 0x4c71e4 targets 0x4c6fb4 and is always taken.
  The `beq` branch at 0x4c7204 targets 0x4c6fb4 and is always taken.
  The `beq` branch at 0x4c7224 targets 0x4c6fb4 and is always taken.
  The `beq` branch at 0x4c7244 targets 0x4c6fb4 and is always taken.
  The `beq` branch at 0x4c7264 targets 0x4c6fb4 and is always taken.
  The `beq` branch at 0x4c7270 targets 0x4c6fb4 and is always taken.
  The `beq` branch at 0x4c7290 targets 0x4c6fb4 and is always taken.
  The `beq` branch at 0x4c72b0 targets 0x4c6fb4 and is always taken.
  The `beq` branch at 0x4c72d0 targets 0x4c6fb4 and is always taken.
  The `beq` branch at 0x4c72f0 targets 0x4c6fb4 and is always taken.
  The `beq` branch at 0x4c7370 targets 0x4c646c and is always taken.
  The `beq` branch at 0x4c7388 targets 0x4c67f4 and is always taken.
  The `beq` branch at 0x4c7398 targets 0x4c6d50 and is always taken.
  The return at 0x4c5f08 has v0 = ?.
  The instructions from 0x4c5cf8 to 0x4c5cfc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4c6564 to 0x4c656c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4c6794 to 0x4c679c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4c6d0c to 0x4c6d0c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4c7378 to 0x4c737c are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x4c6f48 uses the jump table at 0x5a17a8 with targets 0x4c714c, 0x4c72d8, 0x4c72b8, 0x4c7298, 0x4c7278, 0x4c726c, 0x4c724c, 0x4c722c, 0x4c720c, 0x4c71ec, 0x4c71e0, 0x4c71c4, 0x4c71a4, 0x4c7184, 0x4c7164, 0x4c7158.
  The indirect jump at 0x4c6f48 uses the jump table at 0x5a17a8 with targets 0x4c714c, 0x4c72d8, 0x4c72b8, 0x4c7298, 0x4c7278, 0x4c726c, 0x4c724c, 0x4c722c, 0x4c720c, 0x4c71ec, 0x4c71e0, 0x4c71c4, 0x4c71a4, 0x4c7184, 0x4c7164, 0x4c7158.

- `cfb32FillPoly1RectCopy` in `usr/lib/X11/dyDDX/crm.so` at 0x4dcc50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/crm.so`.
  Range: 0x4dcc50-0x4ddb90 (3904 bytes).
  It occupies 3904 bytes.
  The `lw` at 0x4dcc9c loads 4 bytes from abs 0x5aa960 (cfb32GCPrivateIndex).
  The `lw` at 0x4dcca0 loads 4 bytes from a1 (arg1 at entry) +0x4c.
  The `lw` at 0x4dccac loads 4 bytes from ([a1+76] + ([0x5aa960] << 0x2)) +0x0.
  The `lw` at 0x4dccb0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x4dccb4 loads 4 bytes from [([a1+76] + ([0x5aa960] << 0x2))] +0x8.
  The `lw` at 0x4dccc8 loads 4 bytes from [[([a1+76] + ([0x5aa960] << 0x2))]+8] +0x0.
  The `lw` at 0x4dccd4 loads 4 bytes from [[([a1+76] + ([0x5aa960] << 0x2))]+8] +0x4.
  The `lw` at 0x4dcce8 loads 4 bytes from [([a1+76] + ([0x5aa960] << 0x2))] +0xc.
  2 such `lw` accesses load 4 bytes from a5 (arg5 at entry) +0x0, including `lw` at 0x4dcd48, `lw` at 0x4dd490.
  2 such `lw` accesses load 4 bytes from abs 0x5a9064, including `lw` at 0x4dce4c, `lw` at 0x4dda8c.
  23 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4dcef0, `lw` at 0x4dcef4, `lw` at 0x4dcfe0.
  The `lbu` at 0x4dcf80 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lw` at 0x4dcf90 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x4dcf94 loads 4 bytes from abs 0x5aa964 (cfb32ScreenPrivateIndex).
  The `lw` at 0x4dcf98 loads 4 bytes from [a0+16] +0x1b4.
  The `lw` at 0x4dcfa4 loads 4 bytes from ([[a0+16]+436] + ([0x5aa964] << 0x2)) +0x0.
  The `lh` at 0x4dcfe8 loads 2 bytes from a0 (arg0 at entry) +0xa.
  33 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4dd294, `sw` at 0x4dd334, `sw` at 0x4dd34c.
  Calls miFillPolygon [0x4472f0] via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x4dce6c).
  Calls miFillPolygon [0x4472f0] via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x4ddaac).
  The `beq` branch at 0x4dcc90 targets 0x4dda84, is taken when a3 == t1(=0x1), and falls through when a3 != t1(=0x1).
  The `beq` branch at 0x4dccec targets 0x4dd450, is taken when s3(=a2) == s2(=0x2), and falls through when s3(=a2) != s2(=0x2).
  The `bne` branch at 0x4dcd0c targets 0x4dd8e4, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x4dcd3c targets 0x4dcd8c, is taken when (a4 & 0x1) == 0, and falls through when (a4 & 0x1) != 0.
  The `beq` branch at 0x4dcd74 targets 0x4dcd88, is taken when t2(=-0x1) == t1(?), and falls through when t2(=-0x1) != t1(?).
  The `bne` branch at 0x4dcd98 targets 0x4dcef0, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x4dcdec targets 0x4dd420, is taken when s8(?) == s6(?), and falls through when s8(?) != s6(?).
  The `beq` branch at 0x4dce08 targets 0x4dcf80, is taken when (a5(?) & a7(=0xffffffff80008000)) == 0, and falls through when (a5(?) & a7(=0xffffffff80008000)) != 0.
  The `beq` branch at 0x4dcec8 targets 0x4dcee8, is taken when t2(?) == t1(?), and falls through when t2(?) != t1(?).
  The `blez` branch at 0x4dced0 targets 0x4dcf64, is taken when t8(?) <= 0 (signed), and falls through when t8(?) > 0 (signed).
  The `beq` branch at 0x4dcee8 targets 0x4dcda0, is taken when a6(?) == t3(=((a4 << 0x2) + a5)), and falls through when a6(?) != t3(=((a4 << 0x2) + a5)).
  The `beq` branch at 0x4dcf38 targets 0x4dce98, is taken when t2(?) == t1(?), and falls through when t2(?) != t1(?).
  The `bgtz` branch at 0x4dcf40 targets 0x4dce80, is taken when t8(?) > 0 (signed), and falls through when t8(?) <= 0 (signed).
  The `beq` branch at 0x4dcf5c targets 0x4dce94 and is always taken.
  The `beq` branch at 0x4dcf70 targets 0x4dcee4 and is always taken.
  The `beq` branch at 0x4dcf88 targets 0x4dd8dc, is taken when v0(=0x1) == v1(=[a0]:1), and falls through when v0(=0x1) != v1(=[a0]:1).
  The `beq` branch at 0x4dd040 targets 0x4dd05c and is always taken.
  The `beq` branch at 0x4dd050 targets 0x4dd41c, is taken when s8(?) == s6(?), and falls through when s8(?) != s6(?).
  The `bne` branch at 0x4dd060 targets 0x4dd3c8, is taken when v1(?) != s6(?), and falls through when v1(?) == s6(?).
  The `beq` branch at 0x4dd068 targets 0x4dd0b4 and is always taken.
  The `bne` branch at 0x4dd074 targets 0x4dd0a4, is taken when a3(?) < a5(?) (signed), and falls through when a3(?) >= a5(?) (signed).
  The `bne` branch at 0x4dd0a8 targets 0x4dd154, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x4dd0e0 targets 0x4dd0a0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgez` branch at 0x4dd0fc targets 0x4dd070, is taken when a3(?) >= 0 (signed), and falls through when a3(?) < 0 (signed).
  The `bne` branch at 0x4dd120 targets 0x4dd0a0, is taken when a3(?) < a5(?) (signed), and falls through when a3(?) >= a5(?) (signed).
  The `beq` branch at 0x4dd14c targets 0x4dd0a0 and is always taken.
  The `bne` branch at 0x4dd170 targets 0x4dd3e8, is taken when a2(?) != s6(?), and falls through when a2(?) == s6(?).
  The `beq` branch at 0x4dd178 targets 0x4dd1c0 and is always taken.
  The `bne` branch at 0x4dd188 targets 0x4dd1b4, is taken when a3(?) < a1(?) (signed), and falls through when a3(?) >= a1(?) (signed).
  The `bne` branch at 0x4dd1b4 targets 0x4dd278, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x4dd1fc targets 0x4dd1b4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bgez` branch at 0x4dd21c targets 0x4dd180, is taken when a3(?) >= 0 (signed), and falls through when a3(?) < 0 (signed).
  The `bne` branch at 0x4dd244 targets 0x4dd1b4, is taken when a3(?) < a1(?) (signed), and falls through when a3(?) >= a1(?) (signed).
  The `beq` branch at 0x4dd270 targets 0x4dd1b4 and is always taken.
  The `beq` branch at 0x4dd288 targets 0x4ddb80 and is always taken.
  The `beq` branch at 0x4dd298 targets 0x4dd050, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `blez` branch at 0x4dd304 targets 0x4dd298, is taken when a4(?) <= 0 (signed), and falls through when a4(?) > 0 (signed).
  The `beq` branch at 0x4dd320 targets 0x4dd338, is taken when (a4(?) & 0x7) == 0, and falls through when (a4(?) & 0x7) != 0.
  The `bne` branch at 0x4dd330 targets 0x4dd328, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4dd33c targets 0x4dd298, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0x4dd344 targets 0x4ddb5c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4dd390 targets 0x4dd290, is taken when v0(?) == a1(?), and falls through when v0(?) != a1(?).
  The `bne` branch at 0x4dd3b8 targets 0x4dd370, is taken when a0(?) != a1(?), and falls through when a0(?) == a1(?).
  The `beq` branch at 0x4dd3c0 targets 0x4dd294 and is always taken.
  The `beq` branch at 0x4dd3e0 targets 0x4dd15c and is always taken.
  The `beq` branch at 0x4dd414 targets 0x4dd288 and is always taken.
  The `bne` branch at 0x4dd454 targets 0x4dcf78, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x4dd484 targets 0x4dd4c4, is taken when (a4 & 0x1) == 0, and falls through when (a4 & 0x1) != 0.
  The `beq` branch at 0x4dd4c8 targets 0x4dcdec, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4dd4d0 targets 0x4ddab4, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x4dd640 targets 0x4dda18, is taken when a7(?) == t0(=((a4 << 0x2) + a5)-24), and falls through when a7(?) != t0(=((a4 << 0x2) + a5)-24).
  The `beq` branch at 0x4dd6b8 targets 0x4dd9a0, is taken when t3(?) == t0(=((a4 << 0x2) + a5)-24), and falls through when t3(?) != t0(=((a4 << 0x2) + a5)-24).
  The `beq` branch at 0x4dd730 targets 0x4dd934, is taken when a2(?) == t0(=((a4 << 0x2) + a5)-24), and falls through when a2(?) != t0(=((a4 << 0x2) + a5)-24).
  The `bne` branch at 0x4dd7ac targets 0x4dd5d0, is taken when t1(?) != t0(=((a4 << 0x2) + a5)-24), and falls through when t1(?) == t0(=((a4 << 0x2) + a5)-24).
  The `beq` branch at 0x4dd8d4 targets 0x4dcdec and is always taken.
  The `beq` branch at 0x4dd8dc targets 0x4dcfa8 and is always taken.
  The `beq` branch at 0x4dd92c targets 0x4dcdf8 and is always taken.
  The `beq` branch at 0x4dd998 targets 0x4dd81c and is always taken.
  The `beq` branch at 0x4dda10 targets 0x4dd81c and is always taken.
  The `beq` branch at 0x4dda7c targets 0x4dd81c and is always taken.
  The `bne` branch at 0x4ddb3c targets 0x4ddac8, is taken when a6(?) != a3(=((a4 << 0x2) + a5)), and falls through when a6(?) == a3(=((a4 << 0x2) + a5)).
  The `beq` branch at 0x4ddb54 targets 0x4dcdec and is always taken.
  The `beq` branch at 0x4ddb78 targets 0x4dd298 and is always taken.
  The `beq` branch at 0x4ddb88 targets 0x4dd2ec and is always taken.
  The return at 0x4dd448 has v0 = ?.
  The instructions from 0x4dce74 to 0x4dce7c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4dd048 to 0x4dd04c are not reached by any path from the entry, and their branches are not listed.

- `cfb16FillPoly1RectCopy` in `usr/lib/X11/dyDDX/crm.so` at 0x4ddb90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/crm.so`.
  Range: 0x4ddb90-0x4debfc (4204 bytes).
  It occupies 4204 bytes.
  The `lw` at 0x4ddbdc loads 4 bytes from abs 0x5aa96c (cfb16GCPrivateIndex).
  The `lw` at 0x4ddbe0 loads 4 bytes from a1 (arg1 at entry) +0x4c.
  The `lw` at 0x4ddbec loads 4 bytes from ([a1+76] + ([0x5aa96c] << 0x2)) +0x0.
  The `lw` at 0x4ddbf0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x4ddbf4 loads 4 bytes from [([a1+76] + ([0x5aa96c] << 0x2))] +0x8.
  The `lw` at 0x4ddc08 loads 4 bytes from [[([a1+76] + ([0x5aa96c] << 0x2))]+8] +0x0.
  The `lw` at 0x4ddc14 loads 4 bytes from [[([a1+76] + ([0x5aa96c] << 0x2))]+8] +0x4.
  The `lw` at 0x4ddc28 loads 4 bytes from [([a1+76] + ([0x5aa96c] << 0x2))] +0xc.
  2 such `lw` accesses load 4 bytes from a5 (arg5 at entry) +0x0, including `lw` at 0x4ddc88, `lw` at 0x4de4fc.
  2 such `lw` accesses load 4 bytes from abs 0x5a9064, including `lw` at 0x4ddd8c, `lw` at 0x4deaf8.
  26 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4dde30, `lw` at 0x4dde34, `lw` at 0x4ddf08.
  The `lbu` at 0x4ddec0 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lw` at 0x4dded0 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x4dded4 loads 4 bytes from abs 0x5aa970 (cfb16ScreenPrivateIndex).
  The `lw` at 0x4dded8 loads 4 bytes from [a0+16] +0x1b4.
  The `lw` at 0x4ddee4 loads 4 bytes from ([[a0+16]+436] + ([0x5aa970] << 0x2)) +0x0.
  The `lh` at 0x4ddf20 loads 2 bytes from a0 (arg0 at entry) +0xa.
  36 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4de21c, `sw` at 0x4de2e4, `sw` at 0x4de338.
  Calls miFillPolygon [0x4472f0] via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x4dddac).
  Calls miFillPolygon [0x4472f0] via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=0x1 (`jr` at 0x4deb18).
  The `beq` branch at 0x4ddbd0 targets 0x4deaf0, is taken when a3 == a7(=0x1), and falls through when a3 != a7(=0x1).
  The `beq` branch at 0x4ddc2c targets 0x4de4bc, is taken when s4(=a2) == s2(=0x2), and falls through when s4(=a2) != s2(=0x2).
  The `bne` branch at 0x4ddc4c targets 0x4de950, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x4ddc7c targets 0x4ddccc, is taken when (a4 & 0x1) == 0, and falls through when (a4 & 0x1) != 0.
  The `beq` branch at 0x4ddcb4 targets 0x4ddcc8, is taken when t2(=-0x1) == t1(?), and falls through when t2(=-0x1) != t1(?).
  The `bne` branch at 0x4ddcd8 targets 0x4dde30, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x4ddd2c targets 0x4de48c, is taken when s8(?) == s6(?), and falls through when s8(?) != s6(?).
  The `beq` branch at 0x4ddd48 targets 0x4ddec0, is taken when (a5(?) & t0(=0xffffffff80008000)) == 0, and falls through when (a5(?) & t0(=0xffffffff80008000)) != 0.
  The `beq` branch at 0x4dde08 targets 0x4dde28, is taken when t2(?) == t1(?), and falls through when t2(?) != t1(?).
  The `blez` branch at 0x4dde10 targets 0x4ddea4, is taken when t9(?) <= 0 (signed), and falls through when t9(?) > 0 (signed).
  The `beq` branch at 0x4dde28 targets 0x4ddce0, is taken when a7(?) == t3(=((a4 << 0x2) + a5)), and falls through when a7(?) != t3(=((a4 << 0x2) + a5)).
  The `beq` branch at 0x4dde78 targets 0x4dddd8, is taken when t2(?) == t1(?), and falls through when t2(?) != t1(?).
  The `bgtz` branch at 0x4dde80 targets 0x4dddc0, is taken when t9(?) > 0 (signed), and falls through when t9(?) <= 0 (signed).
  The `beq` branch at 0x4dde9c targets 0x4dddd4 and is always taken.
  The `beq` branch at 0x4ddeb0 targets 0x4dde24 and is always taken.
  The `beq` branch at 0x4ddec8 targets 0x4de948, is taken when v0(=0x1) == v1(=[a0]:1), and falls through when v0(=0x1) != v1(=[a0]:1).
  The `beq` branch at 0x4ddf8c targets 0x4ddfac and is always taken.
  The `beq` branch at 0x4ddfa0 targets 0x4de488, is taken when s8(?) == s6(?), and falls through when s8(?) != s6(?).
  The `bne` branch at 0x4ddfb0 targets 0x4de428, is taken when v1(?) != s6(?), and falls through when v1(?) == s6(?).
  The `beq` branch at 0x4ddfb8 targets 0x4de004 and is always taken.
  The `bne` branch at 0x4ddfc4 targets 0x4ddff0, is taken when a4(?) < a3(?) (signed), and falls through when a4(?) >= a3(?) (signed).
  The `bne` branch at 0x4ddff8 targets 0x4de0a8, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x4de034 targets 0x4ddff0, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bgez` branch at 0x4de04c targets 0x4ddfc0, is taken when a4(?) >= 0 (signed), and falls through when a4(?) < 0 (signed).
  The `bne` branch at 0x4de074 targets 0x4ddff0, is taken when a4(?) < a3(?) (signed), and falls through when a4(?) >= a3(?) (signed).
  The `beq` branch at 0x4de0a0 targets 0x4ddff0 and is always taken.
  The `bne` branch at 0x4de0c8 targets 0x4de450, is taken when a2(?) != s6(?), and falls through when a2(?) == s6(?).
  The `beq` branch at 0x4de0d0 targets 0x4de120 and is always taken.
  The `bne` branch at 0x4de0e4 targets 0x4de114, is taken when a4(?) < a1(?) (signed), and falls through when a4(?) >= a1(?) (signed).
  The `bne` branch at 0x4de114 targets 0x4de1d8, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x4de160 targets 0x4de114, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bgez` branch at 0x4de17c targets 0x4de0e0, is taken when a4(?) >= 0 (signed), and falls through when a4(?) < 0 (signed).
  The `bne` branch at 0x4de1a4 targets 0x4de114, is taken when a4(?) < a1(?) (signed), and falls through when a4(?) >= a1(?) (signed).
  The `beq` branch at 0x4de1d0 targets 0x4de114 and is always taken.
  The `beq` branch at 0x4de1e8 targets 0x4debf0 and is always taken.
  The `beq` branch at 0x4de220 targets 0x4ddfa0, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x4de2ac targets 0x4de1f0, is taken when a3(?) < 0x2 (signed), and falls through when a3(?) >= 0x2 (signed).
  The `beq` branch at 0x4de2b4 targets 0x4de2ec, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `blez` branch at 0x4de320 targets 0x4de3f0, is taken when s4(?) <= 0 (signed), and falls through when s4(?) > 0 (signed).
  The `beq` branch at 0x4de328 targets 0x4de344, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x4de33c targets 0x4de330, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x4de350 targets 0x4de3f0, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x4de358 targets 0x4debc8, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x4de3a0 targets 0x4de420, is taken when v0(?) == a1(?), and falls through when v0(?) != a1(?).
  The `bne` branch at 0x4de3cc targets 0x4de380, is taken when a0(?) != a1(?), and falls through when a0(?) == a1(?).
  The `beq` branch at 0x4de3f0 targets 0x4de220, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0x4de418 targets 0x4de220 and is always taken.
  The `beq` branch at 0x4de420 targets 0x4de3d8 and is always taken.
  The `beq` branch at 0x4de448 targets 0x4de0b4 and is always taken.
  The `beq` branch at 0x4de480 targets 0x4de1e8 and is always taken.
  The `bne` branch at 0x4de4c0 targets 0x4ddeb8, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x4de4f0 targets 0x4de530, is taken when (a4 & 0x1) == 0, and falls through when (a4 & 0x1) != 0.
  The `beq` branch at 0x4de534 targets 0x4ddd2c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4de53c targets 0x4deb20, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0x4de6a0 targets 0x4dea88, is taken when a7(?) == t0(=((a4 << 0x2) + a5)-24), and falls through when a7(?) != t0(=((a4 << 0x2) + a5)-24).
  The `beq` branch at 0x4de718 targets 0x4dea0c, is taken when t3(?) == t0(=((a4 << 0x2) + a5)-24), and falls through when t3(?) != t0(=((a4 << 0x2) + a5)-24).
  The `beq` branch at 0x4de790 targets 0x4de9a0, is taken when a2(?) == t0(=((a4 << 0x2) + a5)-24), and falls through when a2(?) != t0(=((a4 << 0x2) + a5)-24).
  The `bne` branch at 0x4de80c targets 0x4de630, is taken when t1(?) != t0(=((a4 << 0x2) + a5)-24), and falls through when t1(?) == t0(=((a4 << 0x2) + a5)-24).
  The `beq` branch at 0x4de940 targets 0x4ddd2c and is always taken.
  The `beq` branch at 0x4de948 targets 0x4ddee8 and is always taken.
  The `beq` branch at 0x4de998 targets 0x4ddd38 and is always taken.
  The `beq` branch at 0x4dea04 targets 0x4de888 and is always taken.
  The `beq` branch at 0x4dea80 targets 0x4de888 and is always taken.
  The `beq` branch at 0x4deae8 targets 0x4de888 and is always taken.
  The `bne` branch at 0x4deba8 targets 0x4deb34, is taken when a6(?) != v0(=((a4 << 0x2) + a5)), and falls through when a6(?) == v0(=((a4 << 0x2) + a5)).
  The `beq` branch at 0x4debc0 targets 0x4ddd2c and is always taken.
  The `beq` branch at 0x4debe4 targets 0x4de3f0 and is always taken.
  The `beq` branch at 0x4debf4 targets 0x4de27c and is always taken.
  The return at 0x4de4b4 has v0 = ?.
  The instructions from 0x4dddb4 to 0x4dddbc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4ddf94 to 0x4ddf9c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4de0d8 to 0x4de0dc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4debec to 0x4debec are not reached by any path from the entry, and their branches are not listed.

- `cfb32FillPoly1RectGeneral` in `usr/lib/X11/dyDDX/crm.so` at 0x4dec00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/crm.so`.
  Range: 0x4dec00-0x4dfaec (3820 bytes).
  It occupies 3820 bytes.
  The `lw` at 0x4dec4c loads 4 bytes from abs 0x5aa960 (cfb32GCPrivateIndex).
  The `lw` at 0x4dec50 loads 4 bytes from a1 (arg1 at entry) +0x4c.
  The `lw` at 0x4dec60 loads 4 bytes from ([a1+76] + ([0x5aa960] << 0x2)) +0x0.
  The `lw` at 0x4dec64 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x4dec68 loads 4 bytes from [([a1+76] + ([0x5aa960] << 0x2))] +0x8.
  The `lw` at 0x4dec7c loads 4 bytes from [[([a1+76] + ([0x5aa960] << 0x2))]+8] +0x0.
  The `lw` at 0x4dec88 loads 4 bytes from [[([a1+76] + ([0x5aa960] << 0x2))]+8] +0x4.
  The `lw` at 0x4dec98 loads 4 bytes from [([a1+76] + ([0x5aa960] << 0x2))] +0xc.
  The `lw` at 0x4deca4 loads 4 bytes from [([a1+76] + ([0x5aa960] << 0x2))] +0x10.
  2 such `lw` accesses load 4 bytes from a5 (arg5 at entry) +0x0, including `lw` at 0x4ded00, `lw` at 0x4df418.
  2 such `lw` accesses load 4 bytes from abs 0x5a9064, including `lw` at 0x4dee00, `lw` at 0x4dfa0c.
  28 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4deea0, `lw` at 0x4deea4, `lw` at 0x4def84.
  The `lbu` at 0x4def30 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lw` at 0x4def40 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x4def44 loads 4 bytes from abs 0x5aa964 (cfb32ScreenPrivateIndex).
  The `lw` at 0x4def48 loads 4 bytes from [a0+16] +0x1b4.
  The `lw` at 0x4def54 loads 4 bytes from ([[a0+16]+436] + ([0x5aa964] << 0x2)) +0x0.
  The `lh` at 0x4defa0 loads 2 bytes from a0 (arg0 at entry) +0xa.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4df098, `sw` at 0x4df0d0, `sw` at 0x4df0dc.
  Calls miFillPolygon [0x4472f0] via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x4dee20).
  Calls miFillPolygon [0x4472f0] via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=0x1 (`jr` at 0x4dfa2c).
  The `beq` branch at 0x4dec40 targets 0x4dfa04, is taken when a3 == a7(=0x1), and falls through when a3 != a7(=0x1).
  The `beq` branch at 0x4deca8 targets 0x4df3dc, is taken when s3(=a2) == s5(=0x2), and falls through when s3(=a2) != s5(=0x2).
  The `bne` branch at 0x4decc4 targets 0x4df868, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4decf4 targets 0x4ded44, is taken when (a4 & 0x1) == 0, and falls through when (a4 & 0x1) != 0.
  The `beq` branch at 0x4ded2c targets 0x4ded40, is taken when t8(=-0x1) == t3(?), and falls through when t8(=-0x1) != t3(?).
  The `bne` branch at 0x4ded50 targets 0x4deea0, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x4deda4 targets 0x4df3ac, is taken when a5(?) == s6(?), and falls through when a5(?) != s6(?).
  The `beq` branch at 0x4dedc0 targets 0x4def30, is taken when (t1(?) & t0(=0xffffffff80008000)) == 0, and falls through when (t1(?) & t0(=0xffffffff80008000)) != 0.
  The `beq` branch at 0x4dee78 targets 0x4dee98, is taken when t8(?) == t3(?), and falls through when t8(?) != t3(?).
  The `blez` branch at 0x4dee80 targets 0x4def14, is taken when t2(?) <= 0 (signed), and falls through when t2(?) > 0 (signed).
  The `beq` branch at 0x4dee98 targets 0x4ded58, is taken when a7(?) == ra(=((a4 << 0x2) + a5)), and falls through when a7(?) != ra(=((a4 << 0x2) + a5)).
  The `beq` branch at 0x4deee8 targets 0x4dee48, is taken when t8(?) == t3(?), and falls through when t8(?) != t3(?).
  The `bgtz` branch at 0x4deef0 targets 0x4dee30, is taken when t2(?) > 0 (signed), and falls through when t2(?) <= 0 (signed).
  The `beq` branch at 0x4def0c targets 0x4dee44 and is always taken.
  The `beq` branch at 0x4def20 targets 0x4dee94 and is always taken.
  The `beq` branch at 0x4def38 targets 0x4df860, is taken when v1(=0x1) == a0(=[a0]:1), and falls through when v1(=0x1) != a0(=[a0]:1).
  The `beq` branch at 0x4deff8 targets 0x4df10c and is always taken.
  The `blez` branch at 0x4df060 targets 0x4df0f8, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0x4df078 targets 0x4df09c, is taken when (s0(?) & 0x3) == 0, and falls through when (s0(?) & 0x3) != 0.
  The `bne` branch at 0x4df094 targets 0x4df080, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x4df09c targets 0x4df0f8, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0x4df0f0 targets 0x4df0b0, is taken when a1(?) != a2(?), and falls through when a1(?) == a2(?).
  The `bne` branch at 0x4df0f8 targets 0x4df000, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x4df100 targets 0x4df3a8, is taken when a5(?) == s6(?), and falls through when a5(?) != s6(?).
  The `bne` branch at 0x4df110 targets 0x4df350, is taken when a2(?) != s6(?), and falls through when a2(?) == s6(?).
  The `beq` branch at 0x4df118 targets 0x4df164 and is always taken.
  The `bne` branch at 0x4df124 targets 0x4df154, is taken when a4(?) < a3(?) (signed), and falls through when a4(?) >= a3(?) (signed).
  The `bne` branch at 0x4df158 targets 0x4df204, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x4df190 targets 0x4df150, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bgez` branch at 0x4df1ac targets 0x4df120, is taken when a4(?) >= 0 (signed), and falls through when a4(?) < 0 (signed).
  The `bne` branch at 0x4df1d0 targets 0x4df150, is taken when a4(?) < a3(?) (signed), and falls through when a4(?) >= a3(?) (signed).
  The `beq` branch at 0x4df1fc targets 0x4df150 and is always taken.
  The `bne` branch at 0x4df224 targets 0x4df374, is taken when a2(?) != s6(?), and falls through when a2(?) == s6(?).
  The `beq` branch at 0x4df22c targets 0x4df280 and is always taken.
  The `bne` branch at 0x4df248 targets 0x4df274, is taken when ra(?) < a1(?) (signed), and falls through when ra(?) >= a1(?) (signed).
  The `bne` branch at 0x4df274 targets 0x4df338, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x4df2bc targets 0x4df274, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bgez` branch at 0x4df2dc targets 0x4df240, is taken when ra(?) >= 0 (signed), and falls through when ra(?) < 0 (signed).
  The `bne` branch at 0x4df304 targets 0x4df274, is taken when ra(?) < a1(?) (signed), and falls through when ra(?) >= a1(?) (signed).
  The `beq` branch at 0x4df330 targets 0x4df274 and is always taken.
  The `beq` branch at 0x4df348 targets 0x4dfae0 and is always taken.
  The `beq` branch at 0x4df36c targets 0x4df210 and is always taken.
  The `beq` branch at 0x4df3a0 targets 0x4df348 and is always taken.
  The `bne` branch at 0x4df3dc targets 0x4def28, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4df40c targets 0x4df44c, is taken when (a4 & 0x1) == 0, and falls through when (a4 & 0x1) != 0.
  The `beq` branch at 0x4df450 targets 0x4deda4, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x4df458 targets 0x4dfa34, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x4df5c0 targets 0x4df994, is taken when a7(?) == t0(=((a4 << 0x2) + a5)-24), and falls through when a7(?) != t0(=((a4 << 0x2) + a5)-24).
  The `beq` branch at 0x4df638 targets 0x4df928, is taken when t3(?) == t0(=((a4 << 0x2) + a5)-24), and falls through when t3(?) != t0(=((a4 << 0x2) + a5)-24).
  The `beq` branch at 0x4df6b0 targets 0x4df8b8, is taken when a2(?) == t0(=((a4 << 0x2) + a5)-24), and falls through when a2(?) != t0(=((a4 << 0x2) + a5)-24).
  The `bne` branch at 0x4df72c targets 0x4df550, is taken when t1(?) != t0(=((a4 << 0x2) + a5)-24), and falls through when t1(?) == t0(=((a4 << 0x2) + a5)-24).
  The `beq` branch at 0x4df858 targets 0x4deda4 and is always taken.
  The `beq` branch at 0x4df860 targets 0x4def58 and is always taken.
  The `beq` branch at 0x4df8b0 targets 0x4dedb0 and is always taken.
  The `beq` branch at 0x4df920 targets 0x4df798 and is always taken.
  The `beq` branch at 0x4df98c targets 0x4df798 and is always taken.
  The `beq` branch at 0x4df9fc targets 0x4df798 and is always taken.
  The `bne` branch at 0x4dfab8 targets 0x4dfa44, is taken when a6(?) != ra(=((a4 << 0x2) + a5)), and falls through when a6(?) == ra(=((a4 << 0x2) + a5)).
  The `beq` branch at 0x4dfacc targets 0x4deda4 and is always taken.
  The `beq` branch at 0x4dfae4 targets 0x4df04c and is always taken.
  The return at 0x4df3d4 has v0 = ?.
  The instructions from 0x4dee28 to 0x4dee2c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4df234 to 0x4df23c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4dfad4 to 0x4dfadc are not reached by any path from the entry, and their branches are not listed.

- `cfbFillPoly1RectGeneral` in `usr/lib/X11/dyDDX/crm.so` at 0x4dfaf0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/crm.so`.
  Range: 0x4dfaf0-0x4e125c (5996 bytes).
  It occupies 5996 bytes.
  The `lw` at 0x4dfb38 loads 4 bytes from abs 0x5aa8b8 (cfbGCPrivateIndex).
  The `lw` at 0x4dfb3c loads 4 bytes from a1 (arg1 at entry) +0x4c.
  The `lw` at 0x4dfb4c loads 4 bytes from ([a1+76] + ([0x5aa8b8] << 0x2)) +0x0.
  The `lw` at 0x4dfb50 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x4dfb54 loads 4 bytes from [([a1+76] + ([0x5aa8b8] << 0x2))] +0x8.
  The `lw` at 0x4dfb68 loads 4 bytes from [[([a1+76] + ([0x5aa8b8] << 0x2))]+8] +0x0.
  The `lw` at 0x4dfb74 loads 4 bytes from [[([a1+76] + ([0x5aa8b8] << 0x2))]+8] +0x4.
  The `lw` at 0x4dfb84 loads 4 bytes from [([a1+76] + ([0x5aa8b8] << 0x2))] +0xc.
  The `lw` at 0x4dfb90 loads 4 bytes from [([a1+76] + ([0x5aa8b8] << 0x2))] +0x10.
  2 such `lw` accesses load 4 bytes from a5 (arg5 at entry) +0x0, including `lw` at 0x4dfbfc, `lw` at 0x4e0a28.
  2 such `lw` accesses load 4 bytes from abs 0x5a9064, including `lw` at 0x4dfd40, `lw` at 0x4e1054.
  81 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4dfdfc, `lw` at 0x4dfe00, `lw` at 0x4dfeec.
  The `lbu` at 0x4dfeac loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lw` at 0x4dfebc loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x4dfec0 loads 4 bytes from [a0+16] +0x74.
  The `lh` at 0x4dff00 loads 2 bytes from a0 (arg0 at entry) +0xa.
  58 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4e032c, `sw` at 0x4e03e0, `sw` at 0x4e0400.
  Calls miFillPolygon [0x4472f0] via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x4dfd60).
  Calls miFillPolygon [0x4472f0] via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x4e1070).
  The `beq` branch at 0x4dfb2c targets 0x4e104c, is taken when a3 == t0(=0x1), and falls through when a3 != t0(=0x1).
  The `beq` branch at 0x4dfb94 targets 0x4e09e8, is taken when s3(=a2) == s2(=0x2), and falls through when s3(=a2) != s2(=0x2).
  The `bne` branch at 0x4dfbb8 targets 0x4e0e9c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4dfbf0 targets 0x4dfc6c, is taken when (a4 & 0x1) == 0, and falls through when (a4 & 0x1) != 0.
  The `beq` branch at 0x4dfc40 targets 0x4dfc60, is taken when t3(=-0x1) == t2(?), and falls through when t3(=-0x1) != t2(?).
  The `bne` branch at 0x4dfc78 targets 0x4dfdfc, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x4dfce0 targets 0x4e09b4, is taken when a1(?) == a2(?), and falls through when a1(?) != a2(?).
  The `beq` branch at 0x4dfcfc targets 0x4dfeac, is taken when (gp(?) & a5(=0xffffffff80008000)) == 0, and falls through when (gp(?) & a5(=0xffffffff80008000)) != 0.
  The `beq` branch at 0x4dfdcc targets 0x4dfdf4, is taken when t3(?) == t2(?), and falls through when t3(?) != t2(?).
  The `blez` branch at 0x4dfdd8 targets 0x4dfe80, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `beq` branch at 0x4dfdf4 targets 0x4dfc80, is taken when t1(?) == t8(=((a4 << 0x2) + a5)), and falls through when t1(?) != t8(=((a4 << 0x2) + a5)).
  The `beq` branch at 0x4dfe48 targets 0x4dfd94, is taken when t3(?) == t2(?), and falls through when t3(?) != t2(?).
  The `bgtz` branch at 0x4dfe54 targets 0x4dfd70, is taken when v0(?) > 0 (signed), and falls through when v0(?) <= 0 (signed).
  The `beq` branch at 0x4dfe78 targets 0x4dfd90 and is always taken.
  The `beq` branch at 0x4dfe98 targets 0x4dfdf4 and is always taken.
  The `beq` branch at 0x4dfeb4 targets 0x4e0e94, is taken when a2(=0x1) == a5(=[a0]:1), and falls through when a2(=0x1) != a5(=[a0]:1).
  The `beq` branch at 0x4dff6c targets 0x4dff90 and is always taken.
  The `beq` branch at 0x4dff84 targets 0x4e09b4, is taken when v0(?) == v1(?), and falls through when v0(?) != v1(?).
  The `bne` branch at 0x4dff98 targets 0x4e0958, is taken when a1(?) != a2(?), and falls through when a1(?) == a2(?).
  The `beq` branch at 0x4dffa0 targets 0x4dffec and is always taken.
  The `bne` branch at 0x4dffb4 targets 0x4dffdc, is taken when a6(?) < a4(?) (signed), and falls through when a6(?) >= a4(?) (signed).
  The `bne` branch at 0x4dffe0 targets 0x4e00a0, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x4e0028 targets 0x4dffdc, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bgez` branch at 0x4e0044 targets 0x4dffb0, is taken when a6(?) >= 0 (signed), and falls through when a6(?) < 0 (signed).
  The `bne` branch at 0x4e006c targets 0x4dffdc, is taken when a6(?) < a4(?) (signed), and falls through when a6(?) >= a4(?) (signed).
  The `beq` branch at 0x4e0098 targets 0x4dffdc and is always taken.
  The `bne` branch at 0x4e00c4 targets 0x4e097c, is taken when a3(?) != v0(?), and falls through when a3(?) == v0(?).
  The `beq` branch at 0x4e00cc targets 0x4e0120 and is always taken.
  The `bne` branch at 0x4e00e8 targets 0x4e0114, is taken when a6(?) < a2(?) (signed), and falls through when a6(?) >= a2(?) (signed).
  The `bne` branch at 0x4e0114 targets 0x4e01d8, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x4e0160 targets 0x4e0114, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bgez` branch at 0x4e017c targets 0x4e00e0, is taken when a6(?) >= 0 (signed), and falls through when a6(?) < 0 (signed).
  The `bne` branch at 0x4e01a4 targets 0x4e0114, is taken when a6(?) < a2(?) (signed), and falls through when a6(?) >= a2(?) (signed).
  The `beq` branch at 0x4e01d0 targets 0x4e0114 and is always taken.
  The `beq` branch at 0x4e01f0 targets 0x4e1250 and is always taken.
  The `beq` branch at 0x4e0224 targets 0x4dff80, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0x4e02b8 targets 0x4e0200, is taken when t2(?) < 0x4 (signed), and falls through when t2(?) >= 0x4 (signed).
  The `beq` branch at 0x4e02c4 targets 0x4e02f0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `blez` branch at 0x4e02fc targets 0x4e076c, is taken when t2(?) <= 0 (signed), and falls through when t2(?) > 0 (signed).
  The `beq` branch at 0x4e0308 targets 0x4e0330, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e0328 targets 0x4e0310, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e0334 targets 0x4e076c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e033c targets 0x4e1144, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e0448 targets 0x4e08c4, is taken when s5(?) == s1(?), and falls through when s5(?) != s1(?).
  The `beq` branch at 0x4e04d0 targets 0x4e0840, is taken when ra(?) == s1(?), and falls through when ra(?) != s1(?).
  The `beq` branch at 0x4e055c targets 0x4e07ac, is taken when t9(?) == s1(?), and falls through when t9(?) != s1(?).
  The `bne` branch at 0x4e05e4 targets 0x4e03c8, is taken when t3(?) != s1(?), and falls through when t3(?) == s1(?).
  The `beq` branch at 0x4e0780 targets 0x4e0224, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x4e07a4 targets 0x4e0224 and is always taken.
  The `beq` branch at 0x4e0838 targets 0x4e066c and is always taken.
  The `beq` branch at 0x4e08bc targets 0x4e066c and is always taken.
  The `beq` branch at 0x4e0950 targets 0x4e066c and is always taken.
  The `beq` branch at 0x4e0974 targets 0x4e00ac and is always taken.
  The `beq` branch at 0x4e09ac targets 0x4e01e8 and is always taken.
  The `bne` branch at 0x4e09e8 targets 0x4dfea0, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e0a1c targets 0x4e0a6c, is taken when (a4 & 0x1) == 0, and falls through when (a4 & 0x1) != 0.
  The `beq` branch at 0x4e0a70 targets 0x4e0e8c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e0a78 targets 0x4e1078, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x4e0bf0 targets 0x4e0fdc, is taken when a7(?) == t0(=((a4 << 0x2) + a5)-24), and falls through when a7(?) != t0(=((a4 << 0x2) + a5)-24).
  The `beq` branch at 0x4e0c68 targets 0x4e0f74, is taken when t3(?) == t0(=((a4 << 0x2) + a5)-24), and falls through when t3(?) != t0(=((a4 << 0x2) + a5)-24).
  The `beq` branch at 0x4e0ce0 targets 0x4e0ef8, is taken when a2(?) == t0(=((a4 << 0x2) + a5)-24), and falls through when a2(?) != t0(=((a4 << 0x2) + a5)-24).
  The `bne` branch at 0x4e0d5c targets 0x4e0b80, is taken when t1(?) != t0(=((a4 << 0x2) + a5)-24), and falls through when t1(?) == t0(=((a4 << 0x2) + a5)-24).
  The `beq` branch at 0x4e0e8c targets 0x4dfcdc and is always taken.
  The `beq` branch at 0x4e0e94 targets 0x4dfec4 and is always taken.
  The `beq` branch at 0x4e0ef0 targets 0x4dfcec and is always taken.
  The `beq` branch at 0x4e0f6c targets 0x4e0dc4 and is always taken.
  The `beq` branch at 0x4e0fd4 targets 0x4e0dc4 and is always taken.
  The `beq` branch at 0x4e1044 targets 0x4e0dc4 and is always taken.
  The `bne` branch at 0x4e1110 targets 0x4e109c, is taken when a6(?) != t0(=((a4 << 0x2) + a5)), and falls through when a6(?) == t0(=((a4 << 0x2) + a5)).
  The `beq` branch at 0x4e113c targets 0x4e0e8c and is always taken.
  The `beq` branch at 0x4e11dc targets 0x4e076c, is taken when a4(?) == a7(?), and falls through when a4(?) != a7(?).
  The `beq` branch at 0x4e1248 targets 0x4e1148 and is always taken.
  The `beq` branch at 0x4e1254 targets 0x4e027c and is always taken.
  The return at 0x4e09e0 has v0 = ?.
  The instructions from 0x4dfd68 to 0x4dfd6c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4dff74 to 0x4dff7c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4dffa8 to 0x4dffac are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4e00d4 to 0x4e00dc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4e01f8 to 0x4e01fc are not reached by any path from the entry, and their branches are not listed.

- `cfb16FillPoly1RectGeneral` in `usr/lib/X11/dyDDX/crm.so` at 0x4e1260 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/crm.so`.
  Range: 0x4e1260-0x4e2a0c (6060 bytes).
  It occupies 6060 bytes.
  The `lw` at 0x4e12a8 loads 4 bytes from abs 0x5aa96c (cfb16GCPrivateIndex).
  The `lw` at 0x4e12ac loads 4 bytes from a1 (arg1 at entry) +0x4c.
  The `lw` at 0x4e12bc loads 4 bytes from ([a1+76] + ([0x5aa96c] << 0x2)) +0x0.
  The `lw` at 0x4e12c0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x4e12c4 loads 4 bytes from [([a1+76] + ([0x5aa96c] << 0x2))] +0x8.
  The `lw` at 0x4e12d8 loads 4 bytes from [[([a1+76] + ([0x5aa96c] << 0x2))]+8] +0x0.
  The `lw` at 0x4e12e4 loads 4 bytes from [[([a1+76] + ([0x5aa96c] << 0x2))]+8] +0x4.
  The `lw` at 0x4e12f4 loads 4 bytes from [([a1+76] + ([0x5aa96c] << 0x2))] +0xc.
  The `lw` at 0x4e1300 loads 4 bytes from [([a1+76] + ([0x5aa96c] << 0x2))] +0x10.
  2 such `lw` accesses load 4 bytes from a5 (arg5 at entry) +0x0, including `lw` at 0x4e136c, `lw` at 0x4e21c0.
  2 such `lw` accesses load 4 bytes from abs 0x5a9064, including `lw` at 0x4e14ac, `lw` at 0x4e27f8.
  81 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4e156c, `lw` at 0x4e1570, `lw` at 0x4e1668.
  The `lbu` at 0x4e161c loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lw` at 0x4e162c loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x4e1630 loads 4 bytes from abs 0x5aa970 (cfb16ScreenPrivateIndex).
  The `lw` at 0x4e1634 loads 4 bytes from [a0+16] +0x1b4.
  The `lw` at 0x4e1640 loads 4 bytes from ([[a0+16]+436] + ([0x5aa970] << 0x2)) +0x0.
  The `lh` at 0x4e1690 loads 2 bytes from a0 (arg0 at entry) +0xa.
  58 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4e1ab0, `sw` at 0x4e1b68, `sw` at 0x4e1b88.
  Calls miFillPolygon [0x4472f0] via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x4e14cc).
  Calls miFillPolygon [0x4472f0] via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x4e2814).
  The `beq` branch at 0x4e129c targets 0x4e27f0, is taken when a3 == t0(=0x1), and falls through when a3 != t0(=0x1).
  The `beq` branch at 0x4e1304 targets 0x4e2180, is taken when s3(=a2) == s2(=0x2), and falls through when s3(=a2) != s2(=0x2).
  The `bne` branch at 0x4e1328 targets 0x4e2638, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e1360 targets 0x4e13dc, is taken when (a4 & 0x1) == 0, and falls through when (a4 & 0x1) != 0.
  The `beq` branch at 0x4e13b0 targets 0x4e13d0, is taken when t3(=-0x1) == t2(?), and falls through when t3(=-0x1) != t2(?).
  The `bne` branch at 0x4e13e8 targets 0x4e156c, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x4e1450 targets 0x4e214c, is taken when a1(?) == a2(?), and falls through when a1(?) != a2(?).
  The `beq` branch at 0x4e146c targets 0x4e161c, is taken when (gp(?) & a3(=0xffffffff80008000)) == 0, and falls through when (gp(?) & a3(=0xffffffff80008000)) != 0.
  The `beq` branch at 0x4e153c targets 0x4e1564, is taken when t3(?) == t2(?), and falls through when t3(?) != t2(?).
  The `blez` branch at 0x4e1548 targets 0x4e15f0, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `beq` branch at 0x4e1564 targets 0x4e13f0, is taken when t1(?) == t8(=((a4 << 0x2) + a5)), and falls through when t1(?) != t8(=((a4 << 0x2) + a5)).
  The `beq` branch at 0x4e15b8 targets 0x4e1504, is taken when t3(?) == t2(?), and falls through when t3(?) != t2(?).
  The `bgtz` branch at 0x4e15c4 targets 0x4e14e0, is taken when v0(?) > 0 (signed), and falls through when v0(?) <= 0 (signed).
  The `beq` branch at 0x4e15e8 targets 0x4e1500 and is always taken.
  The `beq` branch at 0x4e1608 targets 0x4e1564 and is always taken.
  The `beq` branch at 0x4e1624 targets 0x4e2630, is taken when a2(=0x1) == a3(=[a0]:1), and falls through when a2(=0x1) != a3(=[a0]:1).
  The `beq` branch at 0x4e16ec targets 0x4e1714 and is always taken.
  The `beq` branch at 0x4e1708 targets 0x4e214c, is taken when v0(?) == v1(?), and falls through when v0(?) != v1(?).
  The `bne` branch at 0x4e171c targets 0x4e20f0, is taken when a1(?) != a2(?), and falls through when a1(?) == a2(?).
  The `beq` branch at 0x4e1724 targets 0x4e176c and is always taken.
  The `bne` branch at 0x4e1734 targets 0x4e175c, is taken when a7(?) < a4(?) (signed), and falls through when a7(?) >= a4(?) (signed).
  The `bne` branch at 0x4e1760 targets 0x4e1820, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x4e17a8 targets 0x4e175c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bgez` branch at 0x4e17c4 targets 0x4e1730, is taken when a7(?) >= 0 (signed), and falls through when a7(?) < 0 (signed).
  The `bne` branch at 0x4e17ec targets 0x4e175c, is taken when a7(?) < a4(?) (signed), and falls through when a7(?) >= a4(?) (signed).
  The `beq` branch at 0x4e1818 targets 0x4e175c and is always taken.
  The `bne` branch at 0x4e1844 targets 0x4e2114, is taken when a3(?) != v0(?), and falls through when a3(?) == v0(?).
  The `beq` branch at 0x4e184c targets 0x4e18a0 and is always taken.
  The `bne` branch at 0x4e1868 targets 0x4e1894, is taken when a7(?) < a2(?) (signed), and falls through when a7(?) >= a2(?) (signed).
  The `bne` branch at 0x4e1894 targets 0x4e1958, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x4e18e0 targets 0x4e1894, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bgez` branch at 0x4e18fc targets 0x4e1860, is taken when a7(?) >= 0 (signed), and falls through when a7(?) < 0 (signed).
  The `bne` branch at 0x4e1924 targets 0x4e1894, is taken when a7(?) < a2(?) (signed), and falls through when a7(?) >= a2(?) (signed).
  The `beq` branch at 0x4e1950 targets 0x4e1894 and is always taken.
  The `beq` branch at 0x4e1970 targets 0x4e2a00 and is always taken.
  The `beq` branch at 0x4e19b0 targets 0x4e1700, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0x4e1a38 targets 0x4e1980, is taken when a4(?) < 0x2 (signed), and falls through when a4(?) >= 0x2 (signed).
  The `beq` branch at 0x4e1a40 targets 0x4e1a74, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `blez` branch at 0x4e1a80 targets 0x4e1ef8, is taken when t2(?) <= 0 (signed), and falls through when t2(?) > 0 (signed).
  The `beq` branch at 0x4e1a8c targets 0x4e1ab4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e1aac targets 0x4e1a94, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e1ab8 targets 0x4e1ef8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e1ac0 targets 0x4e28e8, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e1bd0 targets 0x4e2058, is taken when s5(?) == s1(?), and falls through when s5(?) != s1(?).
  The `beq` branch at 0x4e1c58 targets 0x4e1fd0, is taken when ra(?) == s1(?), and falls through when ra(?) != s1(?).
  The `beq` branch at 0x4e1ce4 targets 0x4e1f38, is taken when t9(?) == s1(?), and falls through when t9(?) != s1(?).
  The `bne` branch at 0x4e1d6c targets 0x4e1b50, is taken when t3(?) != s1(?), and falls through when t3(?) == s1(?).
  The `beq` branch at 0x4e1f0c targets 0x4e19b0, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x4e1f30 targets 0x4e19b0 and is always taken.
  The `beq` branch at 0x4e1fc8 targets 0x4e1df8 and is always taken.
  The `beq` branch at 0x4e2050 targets 0x4e1df8 and is always taken.
  The `beq` branch at 0x4e20e8 targets 0x4e1df8 and is always taken.
  The `beq` branch at 0x4e210c targets 0x4e182c and is always taken.
  The `beq` branch at 0x4e2144 targets 0x4e1968 and is always taken.
  The `bne` branch at 0x4e2180 targets 0x4e1610, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e21b4 targets 0x4e2204, is taken when (a4 & 0x1) == 0, and falls through when (a4 & 0x1) != 0.
  The `beq` branch at 0x4e2208 targets 0x4e2628, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e2210 targets 0x4e281c, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x4e2380 targets 0x4e2778, is taken when a7(?) == t0(=((a4 << 0x2) + a5)-24), and falls through when a7(?) != t0(=((a4 << 0x2) + a5)-24).
  The `beq` branch at 0x4e23f8 targets 0x4e2710, is taken when t3(?) == t0(=((a4 << 0x2) + a5)-24), and falls through when t3(?) != t0(=((a4 << 0x2) + a5)-24).
  The `beq` branch at 0x4e2470 targets 0x4e2694, is taken when a2(?) == t0(=((a4 << 0x2) + a5)-24), and falls through when a2(?) != t0(=((a4 << 0x2) + a5)-24).
  The `bne` branch at 0x4e24ec targets 0x4e2310, is taken when t1(?) != t0(=((a4 << 0x2) + a5)-24), and falls through when t1(?) == t0(=((a4 << 0x2) + a5)-24).
  The `beq` branch at 0x4e2628 targets 0x4e144c and is always taken.
  The `beq` branch at 0x4e2630 targets 0x4e1644 and is always taken.
  The `beq` branch at 0x4e268c targets 0x4e145c and is always taken.
  The `beq` branch at 0x4e2708 targets 0x4e2560 and is always taken.
  The `beq` branch at 0x4e2770 targets 0x4e2560 and is always taken.
  The `beq` branch at 0x4e27e8 targets 0x4e2560 and is always taken.
  The `bne` branch at 0x4e28b4 targets 0x4e2840, is taken when a6(?) != ra(=((a4 << 0x2) + a5)), and falls through when a6(?) == ra(=((a4 << 0x2) + a5)).
  The `beq` branch at 0x4e28e0 targets 0x4e2628 and is always taken.
  The `beq` branch at 0x4e2980 targets 0x4e1ef8, is taken when v0(?) == a7(?), and falls through when v0(?) != a7(?).
  The `beq` branch at 0x4e29ec targets 0x4e28ec and is always taken.
  The `beq` branch at 0x4e2a04 targets 0x4e1a04 and is always taken.
  The return at 0x4e2178 has v0 = ?.
  The instructions from 0x4e14d4 to 0x4e14dc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4e16f4 to 0x4e16fc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4e172c to 0x4e172c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4e1854 to 0x4e185c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4e1978 to 0x4e197c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4e29f4 to 0x4e29fc are not reached by any path from the entry, and their branches are not listed.

- `cfb16PolyPoint` in `usr/lib/X11/dyDDX/crm.so` at 0x4e2a10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/crm.so`.
  Range: 0x4e2a10-0x4e2fdc (1484 bytes).
  It occupies 1484 bytes.
  The `lw` at 0x4e2a28 loads 4 bytes from a1 (arg1 at entry) +0x4c.
  The `lw` at 0x4e2a3c loads 4 bytes from ([a1+76] + ([0x5aa96c] << 0x2)) +0x0.
  The `lbu` at 0x4e2a48 loads 1 byte from [([a1+76] + ([0x5aa96c] << 0x2))] +0x0.
  The `lw` at 0x4e2a70 loads 4 bytes from [([a1+76] + ([0x5aa96c] << 0x2))] +0x8.
  The `lw` at 0x4e2a74 loads 4 bytes from [([a1+76] + ([0x5aa96c] << 0x2))] +0xc.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x0, including `lbu` at 0x4e2a80, `lbu` at 0x4e2d5c.
  The `lw` at 0x4e2a88 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x4e2a98 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x4e2aa0 loads 4 bytes from [a0+16] +0x1b4.
  The `lw` at 0x4e2aa8 loads 4 bytes from ([[a0+16]+436] + ([0x5aa970] << 0x2)) +0x0.
  15 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4e2aac, `lw` at 0x4e2ac0, `lw` at 0x4e2b44.
  The `lh` at 0x4e2ab0 loads 2 bytes from a0 (arg0 at entry) +0xa.
  The `lh` at 0x4e2abc loads 2 bytes from a0 (arg0 at entry) +0x8.
  3 such `lw` accesses load 4 bytes from [[([a1+76] + ([0x5aa96c] << 0x2))]+8] +0x8, including `lw` at 0x4e2ae0, `lw` at 0x4e2d84, `lw` at 0x4e2e70.
  The `lw` at 0x4e2af4 loads 4 bytes from [([a1+76] + ([0x5aa96c] << 0x2))] +0x10.
  3 such `lw` accesses load 4 bytes from [[[([a1+76] + ([0x5aa96c] << 0x2))]+8]+8] +0x4, including `lw` at 0x4e2b00, `lw` at 0x4e2d94, `lw` at 0x4e2e7c.
  3 such `lw` accesses load 4 bytes from a4 (arg4 at entry) +0x0, including `lw` at 0x4e2b84, `lw` at 0x4e2dfc, `lw` at 0x4e2f0c.
  3 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x4e2bc0, `lhu` at 0x4e2c3c, `lhu` at 0x4e2c70.
  11 such `sh` accesses store 2 bytes to ?, including `sh` at 0x4e2bd0, `sh` at 0x4e2c4c, `sh` at 0x4e2c80.
  The `lh` at 0x4e2cc8 loads 2 bytes from a4 (arg4 at entry) +0x4.
  The `lh` at 0x4e2ccc loads 2 bytes from a4 (arg4 at entry) +0x6.
  The `lh` at 0x4e2cd0 loads 2 bytes from a4 (arg4 at entry) +0x2.
  The `lh` at 0x4e2cd4 loads 2 bytes from a4 (arg4 at entry) +0x0.
  The `sh` at 0x4e2ce8 stores 2 bytes to a4 (arg4 at entry) +0x6.
  The `sh` at 0x4e2cf4 stores 2 bytes to a4 (arg4 at entry) +0x4.
  8 such `lh` accesses load 2 bytes from ?, including `lh` at 0x4e2d10, `lh` at 0x4e2d14, `lh` at 0x4e2d18.
  The `jalr` at 0x4e2e68 calls ffs with a0=?, a1=?, a2=0xffffffff80008000, a3=0xffffffff80000000, a6=[a0+8], a7=a0 at entry (arg0).
  The `beq` branch at 0x4e2a68 targets 0x4e2c84, is taken when t1(=[[([a1+76] + ([0x5aa96c] << 0x2))]]:1) == at(=0x5), and falls through when t1(=[[([a1+76] + ([0x5aa96c] << 0x2))]]:1) != at(=0x5).
  The `beq` branch at 0x4e2a78 targets 0x4e2ca8, is taken when a2 == t2(=0x1), and falls through when a2 != t2(=0x1).
  The `beq` branch at 0x4e2a94 targets 0x4e2aac, is taken when t2(=0x1) == t8(=[a0]:1), and falls through when t2(=0x1) != t8(=[a0]:1).
  The `beq` branch at 0x4e2ad8 targets 0x4e2d60, is taken when t1(=[[([a1+76] + ([0x5aa96c] << 0x2))]]:1) == t9(=0x3), and falls through when t1(=[[([a1+76] + ([0x5aa96c] << 0x2))]]:1) != t9(=0x3).
  The `beq` branch at 0x4e2af8 targets 0x4e2e4c, is taken when v0(=[[[([a1+76] + ([0x5aa96c] << 0x2))]+8]+8]) == 0, and falls through when v0(=[[[([a1+76] + ([0x5aa96c] << 0x2))]+8]+8]) != 0.
  The `blez` branch at 0x4e2b08 targets 0x4e2c84, is taken when a1(=[[[[([a1+76] + ([0x5aa96c] << 0x2))]+8]+8]+4]) <= 0 (signed), and falls through when a1(=[[[[([a1+76] + ([0x5aa96c] << 0x2))]+8]+8]+4]) > 0 (signed).
  The `beq` branch at 0x4e2b30 targets 0x4e2b50 and is always taken.
  The `bnel` branch at 0x4e2b40 targets 0x4e2c08, is taken when t9(?) != 0, and falls through when t9(?) == 0; its branch-likely delay slot `lw a6,0(v0)` at 0x4e2b44 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x4e2b48 targets 0x4e2c88, is taken when t3(?) == s4(?), and falls through when t3(?) != s4(?).
  The `beq` branch at 0x4e2b74 targets 0x4e2b48, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x4e2b7c targets 0x4e2b40, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x4e2b98 targets 0x4e2b40, is taken when (a2(=0xffffffff80008000) & at(?)) != 0, and falls through when (a2(=0xffffffff80008000) & at(?)) == 0.
  The `beq` branch at 0x4e2bcc targets 0x4e2b40 and is always taken.
  The `beq` branch at 0x4e2bf4 targets 0x4e2c50, is taken when (a2(=0xffffffff80008000) & a1(?)) == 0, and falls through when (a2(=0xffffffff80008000) & a1(?)) != 0.
  The `beq` branch at 0x4e2bfc targets 0x4e2b48, is taken when v0(?) == t1(=((a3 << 0x2) + a4)), and falls through when v0(?) != t1(=((a3 << 0x2) + a4)).
  The `bne` branch at 0x4e2c18 targets 0x4e2be0, is taken when (a2(=0xffffffff80008000) & a5(?)) != 0, and falls through when (a2(=0xffffffff80008000) & a5(?)) == 0.
  The `beq` branch at 0x4e2c48 targets 0x4e2be0 and is always taken.
  The `beq` branch at 0x4e2c7c targets 0x4e2bfc and is always taken.
  The `bne` branch at 0x4e2cb4 targets 0x4e2a80, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x4e2cc0 targets 0x4e2cfc, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x4e2cfc targets 0x4e2d58, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x4e2d50 targets 0x4e2d10, is taken when v0(?) != a2(=((a3-1 << 0x2) + a4)), and falls through when v0(?) == a2(=((a3-1 << 0x2) + a4)).
  The `beq` branch at 0x4e2d58 targets 0x4e2a84 and is always taken.
  The `beq` branch at 0x4e2d78 targets 0x4e2e64, is taken when (a0(?) & a5(?)) == 0, and falls through when (a0(?) & a5(?)) != 0.
  The `beq` branch at 0x4e2d8c targets 0x4e2e5c, is taken when v0(=[[[([a1+76] + ([0x5aa96c] << 0x2))]+8]+8]) == 0, and falls through when v0(=[[[([a1+76] + ([0x5aa96c] << 0x2))]+8]+8]) != 0.
  The `blez` branch at 0x4e2d98 targets 0x4e2c84, is taken when t2(=[[[[([a1+76] + ([0x5aa96c] << 0x2))]+8]+8]+4]) <= 0 (signed), and falls through when t2(=[[[[([a1+76] + ([0x5aa96c] << 0x2))]+8]+8]+4]) > 0 (signed).
  The `beq` branch at 0x4e2dc0 targets 0x4e2dd4 and is always taken.
  The `beq` branch at 0x4e2dd0 targets 0x4e2c84, is taken when t3(?) == a3(?), and falls through when t3(?) != a3(?).
  The `beq` branch at 0x4e2df0 targets 0x4e2dd0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x4e2df8 targets 0x4e2e0c and is always taken.
  The `beq` branch at 0x4e2e00 targets 0x4e2dd0, is taken when v0(?) == t1(=((a3 << 0x2) + a4)), and falls through when v0(?) != t1(=((a3 << 0x2) + a4)).
  The `bne` branch at 0x4e2e1c targets 0x4e2e00, is taken when (a2(=0xffffffff80008000) & t2(?)) != 0, and falls through when (a2(=0xffffffff80008000) & t2(?)) == 0.
  The `beq` branch at 0x4e2e44 targets 0x4e2e00 and is always taken.
  The `beq` branch at 0x4e2e54 targets 0x4e2b10 and is always taken.
  The `beq` branch at 0x4e2e5c targets 0x4e2da4 and is always taken.
  The `beq` branch at 0x4e2e74 targets 0x4e2fd4, is taken when a2(=[[[([a1+76] + ([0x5aa96c] << 0x2))]+8]+8]) == 0, and falls through when a2(=[[[([a1+76] + ([0x5aa96c] << 0x2))]+8]+8]) != 0.
  The `blez` branch at 0x4e2e80 targets 0x4e2c84, is taken when a0(=[[[[([a1+76] + ([0x5aa96c] << 0x2))]+8]+8]+4]) <= 0 (signed), and falls through when a0(=[[[[([a1+76] + ([0x5aa96c] << 0x2))]+8]+8]+4]) > 0 (signed).
  The `beq` branch at 0x4e2ec4 targets 0x4e2ed8 and is always taken.
  The `bnel` branch at 0x4e2ecc targets 0x4e2f78, is taken when t2(?) != 0, and falls through when t2(?) == 0; its branch-likely delay slot `lw a0,0(v0)` at 0x4e2ed0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x4e2ed4 targets 0x4e2c84, is taken when t3(?) == t9(?), and falls through when t3(?) != t9(?).
  The `beq` branch at 0x4e2efc targets 0x4e2ed4, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x4e2f04 targets 0x4e2ecc, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x4e2f20 targets 0x4e2ecc, is taken when (a2(=0xffffffff80008000) & at(?)) != 0, and falls through when (a2(=0xffffffff80008000) & at(?)) == 0.
  The `beq` branch at 0x4e2f44 targets 0x4e2ecc and is always taken.
  The `beq` branch at 0x4e2f64 targets 0x4e2fb0, is taken when (a2(=0xffffffff80008000) & t2(?)) == 0, and falls through when (a2(=0xffffffff80008000) & t2(?)) != 0.
  The `beq` branch at 0x4e2f6c targets 0x4e2ed4, is taken when v0(?) == t1(=((a3 << 0x2) + a4)), and falls through when v0(?) != t1(=((a3 << 0x2) + a4)).
  The `bne` branch at 0x4e2f88 targets 0x4e2f50, is taken when (a2(=0xffffffff80008000) & v1(?)) != 0, and falls through when (a2(=0xffffffff80008000) & v1(?)) == 0.
  The `beq` branch at 0x4e2fa8 targets 0x4e2f50 and is always taken.
  The `beq` branch at 0x4e2fcc targets 0x4e2f6c and is always taken.
  The `beq` branch at 0x4e2fd4 targets 0x4e2e88 and is always taken.
  The return at 0x4e2ca0 has v0 = ?.
  The instructions from 0x4e2b38 to 0x4e2b3c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4e2bd4 to 0x4e2bdc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4e2dc8 to 0x4e2dcc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4e2f4c to 0x4e2f4c are not reached by any path from the entry, and their branches are not listed.

- `cfb32PolyPoint` in `usr/lib/X11/dyDDX/crm.so` at 0x4e2fe0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/crm.so`.
  Range: 0x4e2fe0-0x4e35bc (1500 bytes).
  It occupies 1500 bytes.
  The `lw` at 0x4e2ff8 loads 4 bytes from a1 (arg1 at entry) +0x4c.
  The `lw` at 0x4e300c loads 4 bytes from ([a1+76] + ([0x5aa960] << 0x2)) +0x0.
  The `lbu` at 0x4e3018 loads 1 byte from [([a1+76] + ([0x5aa960] << 0x2))] +0x0.
  The `lw` at 0x4e3040 loads 4 bytes from [([a1+76] + ([0x5aa960] << 0x2))] +0x8.
  The `lw` at 0x4e3044 loads 4 bytes from [([a1+76] + ([0x5aa960] << 0x2))] +0xc.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x0, including `lbu` at 0x4e3050, `lbu` at 0x4e332c.
  The `lw` at 0x4e3058 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x4e3068 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x4e3070 loads 4 bytes from [a0+16] +0x1b4.
  The `lw` at 0x4e3078 loads 4 bytes from ([[a0+16]+436] + ([0x5aa964] << 0x2)) +0x0.
  18 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4e307c, `lw` at 0x4e3090, `lw` at 0x4e3114.
  The `lh` at 0x4e3080 loads 2 bytes from a0 (arg0 at entry) +0xa.
  The `lh` at 0x4e308c loads 2 bytes from a0 (arg0 at entry) +0x8.
  3 such `lw` accesses load 4 bytes from [[([a1+76] + ([0x5aa960] << 0x2))]+8] +0x8, including `lw` at 0x4e30b0, `lw` at 0x4e3354, `lw` at 0x4e3450.
  The `lw` at 0x4e30c4 loads 4 bytes from [([a1+76] + ([0x5aa960] << 0x2))] +0x10.
  3 such `lw` accesses load 4 bytes from [[[([a1+76] + ([0x5aa960] << 0x2))]+8]+8] +0x4, including `lw` at 0x4e30d0, `lw` at 0x4e3364, `lw` at 0x4e345c.
  3 such `lw` accesses load 4 bytes from a4 (arg4 at entry) +0x0, including `lw` at 0x4e3154, `lw` at 0x4e33d0, `lw` at 0x4e34ec.
  7 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4e31a0, `sw` at 0x4e321c, `sw` at 0x4e3250.
  The `lh` at 0x4e3298 loads 2 bytes from a4 (arg4 at entry) +0x4.
  The `lh` at 0x4e329c loads 2 bytes from a4 (arg4 at entry) +0x6.
  The `lh` at 0x4e32a0 loads 2 bytes from a4 (arg4 at entry) +0x2.
  The `lh` at 0x4e32a4 loads 2 bytes from a4 (arg4 at entry) +0x0.
  The `sh` at 0x4e32b8 stores 2 bytes to a4 (arg4 at entry) +0x6.
  The `sh` at 0x4e32c4 stores 2 bytes to a4 (arg4 at entry) +0x4.
  8 such `lh` accesses load 2 bytes from ?, including `lh` at 0x4e32e0, `lh` at 0x4e32e4, `lh` at 0x4e32e8.
  4 such `sh` accesses store 2 bytes to ?, including `sh` at 0x4e32fc, `sh` at 0x4e3304, `sh` at 0x4e3318.
  The `jalr` at 0x4e3448 calls ffs with a0=?, a1=?, a2=0xffffffff80008000, a3=0xffffffff80000000, a6=[a0+8], a7=a0 at entry (arg0).
  The `beq` branch at 0x4e3038 targets 0x4e3254, is taken when t1(=[[([a1+76] + ([0x5aa960] << 0x2))]]:1) == at(=0x5), and falls through when t1(=[[([a1+76] + ([0x5aa960] << 0x2))]]:1) != at(=0x5).
  The `beq` branch at 0x4e3048 targets 0x4e3278, is taken when a2 == t2(=0x1), and falls through when a2 != t2(=0x1).
  The `beq` branch at 0x4e3064 targets 0x4e307c, is taken when t2(=0x1) == t8(=[a0]:1), and falls through when t2(=0x1) != t8(=[a0]:1).
  The `beq` branch at 0x4e30a8 targets 0x4e3330, is taken when t1(=[[([a1+76] + ([0x5aa960] << 0x2))]]:1) == t9(=0x3), and falls through when t1(=[[([a1+76] + ([0x5aa960] << 0x2))]]:1) != t9(=0x3).
  The `beq` branch at 0x4e30c8 targets 0x4e342c, is taken when v0(=[[[([a1+76] + ([0x5aa960] << 0x2))]+8]+8]) == 0, and falls through when v0(=[[[([a1+76] + ([0x5aa960] << 0x2))]+8]+8]) != 0.
  The `blez` branch at 0x4e30d8 targets 0x4e3254, is taken when a1(=[[[[([a1+76] + ([0x5aa960] << 0x2))]+8]+8]+4]) <= 0 (signed), and falls through when a1(=[[[[([a1+76] + ([0x5aa960] << 0x2))]+8]+8]+4]) > 0 (signed).
  The `beq` branch at 0x4e3100 targets 0x4e3120 and is always taken.
  The `bnel` branch at 0x4e3110 targets 0x4e31d8, is taken when t9(?) != 0, and falls through when t9(?) == 0; its branch-likely delay slot `lw a6,0(v0)` at 0x4e3114 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x4e3118 targets 0x4e3258, is taken when t3(?) == s4(?), and falls through when t3(?) != s4(?).
  The `beq` branch at 0x4e3144 targets 0x4e3118, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x4e314c targets 0x4e3110, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x4e3168 targets 0x4e3110, is taken when (a2(=0xffffffff80008000) & at(?)) != 0, and falls through when (a2(=0xffffffff80008000) & at(?)) == 0.
  The `beq` branch at 0x4e319c targets 0x4e3110 and is always taken.
  The `beq` branch at 0x4e31c4 targets 0x4e3220, is taken when (a2(=0xffffffff80008000) & a1(?)) == 0, and falls through when (a2(=0xffffffff80008000) & a1(?)) != 0.
  The `beq` branch at 0x4e31cc targets 0x4e3118, is taken when v0(?) == t1(=((a3 << 0x2) + a4)), and falls through when v0(?) != t1(=((a3 << 0x2) + a4)).
  The `bne` branch at 0x4e31e8 targets 0x4e31b0, is taken when (a2(=0xffffffff80008000) & a5(?)) != 0, and falls through when (a2(=0xffffffff80008000) & a5(?)) == 0.
  The `beq` branch at 0x4e3218 targets 0x4e31b0 and is always taken.
  The `beq` branch at 0x4e324c targets 0x4e31cc and is always taken.
  The `bne` branch at 0x4e3284 targets 0x4e3050, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x4e3290 targets 0x4e32cc, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x4e32cc targets 0x4e3328, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x4e3320 targets 0x4e32e0, is taken when v0(?) != a2(=((a3-1 << 0x2) + a4)), and falls through when v0(?) == a2(=((a3-1 << 0x2) + a4)).
  The `beq` branch at 0x4e3328 targets 0x4e3054 and is always taken.
  The `beq` branch at 0x4e3348 targets 0x4e3444, is taken when (a0(?) & a5(?)) == 0, and falls through when (a0(?) & a5(?)) != 0.
  The `beq` branch at 0x4e335c targets 0x4e343c, is taken when v0(=[[[([a1+76] + ([0x5aa960] << 0x2))]+8]+8]) == 0, and falls through when v0(=[[[([a1+76] + ([0x5aa960] << 0x2))]+8]+8]) != 0.
  The `blez` branch at 0x4e3368 targets 0x4e3254, is taken when t2(=[[[[([a1+76] + ([0x5aa960] << 0x2))]+8]+8]+4]) <= 0 (signed), and falls through when t2(=[[[[([a1+76] + ([0x5aa960] << 0x2))]+8]+8]+4]) > 0 (signed).
  The `beq` branch at 0x4e3390 targets 0x4e33a8 and is always taken.
  The `beq` branch at 0x4e33a0 targets 0x4e3258, is taken when t3(?) == a3(?), and falls through when t3(?) != a3(?).
  The `beq` branch at 0x4e33c4 targets 0x4e33a0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x4e33cc targets 0x4e33ec and is always taken.
  The `beq` branch at 0x4e33e0 targets 0x4e33a0, is taken when v0(?) == t1(=((a3 << 0x2) + a4)), and falls through when v0(?) != t1(=((a3 << 0x2) + a4)).
  The `bne` branch at 0x4e33fc targets 0x4e33e0, is taken when (a2(=0xffffffff80008000) & t2(?)) != 0, and falls through when (a2(=0xffffffff80008000) & t2(?)) == 0.
  The `beq` branch at 0x4e3424 targets 0x4e33e0 and is always taken.
  The `beq` branch at 0x4e3434 targets 0x4e30e0 and is always taken.
  The `beq` branch at 0x4e343c targets 0x4e3374 and is always taken.
  The `beq` branch at 0x4e3454 targets 0x4e35b4, is taken when a2(=[[[([a1+76] + ([0x5aa960] << 0x2))]+8]+8]) == 0, and falls through when a2(=[[[([a1+76] + ([0x5aa960] << 0x2))]+8]+8]) != 0.
  The `blez` branch at 0x4e3460 targets 0x4e3254, is taken when a0(=[[[[([a1+76] + ([0x5aa960] << 0x2))]+8]+8]+4]) <= 0 (signed), and falls through when a0(=[[[[([a1+76] + ([0x5aa960] << 0x2))]+8]+8]+4]) > 0 (signed).
  The `beq` branch at 0x4e34a4 targets 0x4e34b8 and is always taken.
  The `bnel` branch at 0x4e34ac targets 0x4e3558, is taken when t2(?) != 0, and falls through when t2(?) == 0; its branch-likely delay slot `lw a0,0(v0)` at 0x4e34b0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x4e34b4 targets 0x4e3254, is taken when t3(?) == t9(?), and falls through when t3(?) != t9(?).
  The `beq` branch at 0x4e34dc targets 0x4e34b4, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x4e34e4 targets 0x4e34ac, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x4e3500 targets 0x4e34ac, is taken when (a2(=0xffffffff80008000) & at(?)) != 0, and falls through when (a2(=0xffffffff80008000) & at(?)) == 0.
  The `beq` branch at 0x4e3524 targets 0x4e34ac and is always taken.
  The `beq` branch at 0x4e3544 targets 0x4e3590, is taken when (a2(=0xffffffff80008000) & t2(?)) == 0, and falls through when (a2(=0xffffffff80008000) & t2(?)) != 0.
  The `beq` branch at 0x4e354c targets 0x4e34b4, is taken when v0(?) == t1(=((a3 << 0x2) + a4)), and falls through when v0(?) != t1(=((a3 << 0x2) + a4)).
  The `bne` branch at 0x4e3568 targets 0x4e3530, is taken when (a2(=0xffffffff80008000) & v1(?)) != 0, and falls through when (a2(=0xffffffff80008000) & v1(?)) == 0.
  The `beq` branch at 0x4e3588 targets 0x4e3530 and is always taken.
  The `beq` branch at 0x4e35ac targets 0x4e354c and is always taken.
  The `beq` branch at 0x4e35b4 targets 0x4e3468 and is always taken.
  The return at 0x4e3270 has v0 = ?.
  The instructions from 0x4e3108 to 0x4e310c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4e31a4 to 0x4e31ac are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4e3398 to 0x4e339c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4e33d4 to 0x4e33dc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4e352c to 0x4e352c are not reached by any path from the entry, and their branches are not listed.

- `cfbPolyPoint` in `usr/lib/X11/dyDDX/crm.so` at 0x4e35c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/crm.so`.
  Range: 0x4e35c0-0x4e3abc (1276 bytes).
  It occupies 1276 bytes.
  The `lw` at 0x4e35d8 loads 4 bytes from a1 (arg1 at entry) +0x4c.
  The `lw` at 0x4e35ec loads 4 bytes from ([a1+76] + ([0x5aa8b8] << 0x2)) +0x0.
  The `lbu` at 0x4e35f8 loads 1 byte from [([a1+76] + ([0x5aa8b8] << 0x2))] +0x0.
  The `lw` at 0x4e3620 loads 4 bytes from [([a1+76] + ([0x5aa8b8] << 0x2))] +0x8.
  The `lw` at 0x4e3624 loads 4 bytes from [([a1+76] + ([0x5aa8b8] << 0x2))] +0xc.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x0, including `lbu` at 0x4e3630, `lbu` at 0x4e38cc.
  The `lw` at 0x4e3634 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lh` at 0x4e3638 loads 2 bytes from a0 (arg0 at entry) +0xa.
  The `lw` at 0x4e3648 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x4e364c loads 4 bytes from [a0+16] +0x74.
  13 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4e3650, `lw` at 0x4e3658, `lw` at 0x4e36d4.
  The `lh` at 0x4e365c loads 2 bytes from a0 (arg0 at entry) +0x8.
  3 such `lw` accesses load 4 bytes from [[([a1+76] + ([0x5aa8b8] << 0x2))]+8] +0x8, including `lw` at 0x4e3674, `lw` at 0x4e38f4, `lw` at 0x4e39dc.
  The `lw` at 0x4e3688 loads 4 bytes from [([a1+76] + ([0x5aa8b8] << 0x2))] +0x10.
  3 such `lw` accesses load 4 bytes from [[[([a1+76] + ([0x5aa8b8] << 0x2))]+8]+8] +0x4, including `lw` at 0x4e3694, `lw` at 0x4e3904, `lw` at 0x4e39e8.
  3 such `lw` accesses load 4 bytes from a4 (arg4 at entry) +0x0, including `lw` at 0x4e3710, `lw` at 0x4e396c, `lw` at 0x4e3a64.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x4e3748, `lbu` at 0x4e37bc, `lbu` at 0x4e37e8.
  5 such `sb` accesses store 1 byte to ?, including `sb` at 0x4e3758, `sb` at 0x4e37cc, `sb` at 0x4e37f8.
  The `lh` at 0x4e3840 loads 2 bytes from a4 (arg4 at entry) +0x4.
  The `lh` at 0x4e3844 loads 2 bytes from a4 (arg4 at entry) +0x6.
  The `lh` at 0x4e3848 loads 2 bytes from a4 (arg4 at entry) +0x2.
  The `lh` at 0x4e384c loads 2 bytes from a4 (arg4 at entry) +0x0.
  The `sh` at 0x4e3860 stores 2 bytes to a4 (arg4 at entry) +0x6.
  The `sh` at 0x4e386c stores 2 bytes to a4 (arg4 at entry) +0x4.
  8 such `lh` accesses load 2 bytes from ?, including `lh` at 0x4e3880, `lh` at 0x4e3884, `lh` at 0x4e3888.
  4 such `sh` accesses store 2 bytes to ?, including `sh` at 0x4e389c, `sh` at 0x4e38a4, `sh` at 0x4e38b8.
  The `jalr` at 0x4e39d4 calls ffs with a0=?, a1=?, a2=0xffffffff80008000, a3=0xffffffff80000000, a6=[a0+8], a7=a0 at entry (arg0).
  The `beq` branch at 0x4e3618 targets 0x4e37fc, is taken when t1(=[[([a1+76] + ([0x5aa8b8] << 0x2))]]:1) == at(=0x5), and falls through when t1(=[[([a1+76] + ([0x5aa8b8] << 0x2))]]:1) != at(=0x5).
  The `beq` branch at 0x4e3628 targets 0x4e3820, is taken when a2 == t2(=0x1), and falls through when a2 != t2(=0x1).
  The `beq` branch at 0x4e3644 targets 0x4e3650, is taken when t2(=0x1) == t8(=[a0]:1), and falls through when t2(=0x1) != t8(=[a0]:1).
  The `beq` branch at 0x4e366c targets 0x4e38d0, is taken when t1(=[[([a1+76] + ([0x5aa8b8] << 0x2))]]:1) == t9(=0x3), and falls through when t1(=[[([a1+76] + ([0x5aa8b8] << 0x2))]]:1) != t9(=0x3).
  The `beq` branch at 0x4e368c targets 0x4e39b8, is taken when v0(=[[[([a1+76] + ([0x5aa8b8] << 0x2))]+8]+8]) == 0, and falls through when v0(=[[[([a1+76] + ([0x5aa8b8] << 0x2))]+8]+8]) != 0.
  The `blez` branch at 0x4e369c targets 0x4e37fc, is taken when at(=[[[[([a1+76] + ([0x5aa8b8] << 0x2))]+8]+8]+4]) <= 0 (signed), and falls through when at(=[[[[([a1+76] + ([0x5aa8b8] << 0x2))]+8]+8]+4]) > 0 (signed).
  The `beq` branch at 0x4e36c4 targets 0x4e36dc and is always taken.
  The `bnel` branch at 0x4e36d0 targets 0x4e376c, is taken when t9(?) != 0, and falls through when t9(?) == 0; its branch-likely delay slot `lw a6,0(v0)` at 0x4e36d4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x4e36d8 targets 0x4e37fc, is taken when t3(?) == s4(?), and falls through when t3(?) != s4(?).
  The `beq` branch at 0x4e3700 targets 0x4e36d8, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x4e3708 targets 0x4e36d0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x4e3724 targets 0x4e36d0, is taken when (a2(=0xffffffff80008000) & at(?)) != 0, and falls through when (a2(=0xffffffff80008000) & at(?)) == 0.
  The `beq` branch at 0x4e3754 targets 0x4e36d0 and is always taken.
  The `beq` branch at 0x4e3760 targets 0x4e36d8, is taken when v0(?) == t1(=((a3 << 0x2) + a4)), and falls through when v0(?) != t1(=((a3 << 0x2) + a4)).
  The `beq` branch at 0x4e377c targets 0x4e37d0, is taken when (a2(=0xffffffff80008000) & a1(?)) == 0, and falls through when (a2(=0xffffffff80008000) & a1(?)) != 0.
  The `bne` branch at 0x4e3798 targets 0x4e3760, is taken when (a2(=0xffffffff80008000) & a5(?)) != 0, and falls through when (a2(=0xffffffff80008000) & a5(?)) == 0.
  The `beq` branch at 0x4e37c8 targets 0x4e3760 and is always taken.
  The `beq` branch at 0x4e37f4 targets 0x4e3784 and is always taken.
  The `bne` branch at 0x4e382c targets 0x4e3630, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x4e3838 targets 0x4e3874, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x4e3874 targets 0x4e38c8, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x4e38c0 targets 0x4e3880, is taken when v0(?) != a2(=((a3-1 << 0x2) + a4)), and falls through when v0(?) == a2(=((a3-1 << 0x2) + a4)).
  The `beq` branch at 0x4e38c8 targets 0x4e3634 and is always taken.
  The `beq` branch at 0x4e38e8 targets 0x4e39d0, is taken when (a0(?) & a5(?)) == 0, and falls through when (a0(?) & a5(?)) != 0.
  The `beq` branch at 0x4e38fc targets 0x4e39c8, is taken when v0(=[[[([a1+76] + ([0x5aa8b8] << 0x2))]+8]+8]) == 0, and falls through when v0(=[[[([a1+76] + ([0x5aa8b8] << 0x2))]+8]+8]) != 0.
  The `blez` branch at 0x4e3908 targets 0x4e37fc, is taken when t2(=[[[[([a1+76] + ([0x5aa8b8] << 0x2))]+8]+8]+4]) <= 0 (signed), and falls through when t2(=[[[[([a1+76] + ([0x5aa8b8] << 0x2))]+8]+8]+4]) > 0 (signed).
  The `beq` branch at 0x4e3930 targets 0x4e3944 and is always taken.
  The `beq` branch at 0x4e3940 targets 0x4e37fc, is taken when t3(?) == a3(?), and falls through when t3(?) != a3(?).
  The `beq` branch at 0x4e3960 targets 0x4e3940, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x4e3968 targets 0x4e397c and is always taken.
  The `beq` branch at 0x4e3970 targets 0x4e3940, is taken when v0(?) == t1(=((a3 << 0x2) + a4)), and falls through when v0(?) != t1(=((a3 << 0x2) + a4)).
  The `bne` branch at 0x4e398c targets 0x4e3970, is taken when (a2(=0xffffffff80008000) & t2(?)) != 0, and falls through when (a2(=0xffffffff80008000) & t2(?)) == 0.
  The `beq` branch at 0x4e39b0 targets 0x4e3970 and is always taken.
  The `beq` branch at 0x4e39c0 targets 0x4e36a4 and is always taken.
  The `beq` branch at 0x4e39c8 targets 0x4e3914 and is always taken.
  The `beq` branch at 0x4e39e0 targets 0x4e3ab4, is taken when a2(=[[[([a1+76] + ([0x5aa8b8] << 0x2))]+8]+8]) == 0, and falls through when a2(=[[[([a1+76] + ([0x5aa8b8] << 0x2))]+8]+8]) != 0.
  The `blez` branch at 0x4e39ec targets 0x4e37fc, is taken when a0(=[[[[([a1+76] + ([0x5aa8b8] << 0x2))]+8]+8]+4]) <= 0 (signed), and falls through when a0(=[[[[([a1+76] + ([0x5aa8b8] << 0x2))]+8]+8]+4]) > 0 (signed).
  The `beq` branch at 0x4e3a2c targets 0x4e3a3c and is always taken.
  The `beq` branch at 0x4e3a34 targets 0x4e3800, is taken when t3(?) == t0(?), and falls through when t3(?) != t0(?).
  The `beq` branch at 0x4e3a58 targets 0x4e3a34, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x4e3a60 targets 0x4e3a7c and is always taken.
  The `beq` branch at 0x4e3a70 targets 0x4e3a34, is taken when v0(?) == t1(=((a3 << 0x2) + a4)), and falls through when v0(?) != t1(=((a3 << 0x2) + a4)).
  The `bne` branch at 0x4e3a8c targets 0x4e3a70, is taken when (a2(=0xffffffff80008000) & t2(?)) != 0, and falls through when (a2(=0xffffffff80008000) & t2(?)) == 0.
  The `beq` branch at 0x4e3aac targets 0x4e3a70 and is always taken.
  The `beq` branch at 0x4e3ab4 targets 0x4e39f4 and is always taken.
  The return at 0x4e3818 has v0 = ?.
  The instructions from 0x4e36cc to 0x4e36cc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4e375c to 0x4e375c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4e3938 to 0x4e393c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4e3a68 to 0x4e3a6c are not reached by any path from the entry, and their branches are not listed.

- `cfb8FillRectTransparentStippled32` in `usr/lib/X11/dyDDX/crm.so` at 0x4e4a30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/crm.so`.
  Range: 0x4e4a30-0x4e6f20 (9456 bytes).
  It occupies 9456 bytes.
  The `lbu` at 0x4e4a30 loads 1 byte from a1 (arg1 at entry) +0x5.
  The `lw` at 0x4e4a68 loads 4 bytes from abs 0x5aa8b8 (cfbGCPrivateIndex).
  The `lw` at 0x4e4a6c loads 4 bytes from a1 (arg1 at entry) +0x4c.
  The `lw` at 0x4e4a80 loads 4 bytes from ([a1+76] + ([0x5aa8b8] << 0x2)) +0x0.
  The `lw` at 0x4e4a88 loads 4 bytes from [([a1+76] + ([0x5aa8b8] << 0x2))] +0x4.
  The `lw` at 0x4e4a8c loads 4 bytes from abs 0x5aa8bc (cfb8StippleMode).
  The `lhu` at 0x4e4a94 loads 2 bytes from [[([a1+76] + ([0x5aa8b8] << 0x2))]+4] +0xe.
  The `lw` at 0x4e4a9c loads 4 bytes from [[([a1+76] + ([0x5aa8b8] << 0x2))]+4] +0x20.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x14, including `lw` at 0x4e4ab0, `lw` at 0x4e684c, `lw` at 0x4e6898.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x18, including `lw` at 0x4e4ab4, `lw` at 0x4e683c.
  The `sw` at 0x4e4abc stores 4 bytes to abs 0x5aa8c8 (cfb8StipplePm).
  4 such `lw` accesses load 4 bytes from abs 0x5a8f44, including `lw` at 0x4e4ac0, `lw` at 0x4e5330, `lw` at 0x4e55c8.
  The `sw` at 0x4e4ac8 stores 4 bytes to abs 0x5aa8c4 (cfb8StippleFg).
  The `sw` at 0x4e4ad0 stores 4 bytes to abs 0x5aa8c0 (cfb8StippleAlu).
  The `sw` at 0x4e4adc stores 4 bytes to abs 0x5aa8bc (cfb8StippleMode).
  The `lw` at 0x4e4ae8 loads 4 bytes from table(0x5a1290) +0x0.
  6 such `lw` accesses load 4 bytes from abs 0x5a9c54, including `lw` at 0x4e4b50, `lw` at 0x4e4c98, `lw` at 0x4e52b8.
  The `sw` at 0x4e4b58 stores 4 bytes to abs 0x5aa950 (cfb8StippleRRop).
  The `lw` at 0x4e4b64 loads 4 bytes from abs 0x5a52e4 (cfb8StippleMasks+4).
  The `lw` at 0x4e4b70 loads 4 bytes from abs 0x5a52e0 (cfb8StippleMasks).
  81 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4e4b88, `sw` at 0x4e4ba4, `sw` at 0x4e4bb0.
  27 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4e4b90, `lw` at 0x4e4b9c, `lw` at 0x4e4bc8.
  The `lbu` at 0x4e4c24 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lw` at 0x4e4c30 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x4e4c34 loads 4 bytes from [a0+16] +0x74.
  4 such `lh` accesses load 2 bytes from ?, including `lh` at 0x4e4c88, `lh` at 0x4e4c8c, `lh` at 0x4e4cf4.
  The `lw` at 0x4e4cc0 loads 4 bytes from table(0x5a51c8) +0x0.
  The `lw` at 0x4e4cc4 loads 4 bytes from table(0x5a51b8) +0x0.
  The `lw` at 0x4e4cdc loads 4 bytes from table(0x5a5198) +0x0.
  The `lw` at 0x4e4ce8 loads 4 bytes from table(0x5a51a8) +0x0.
  The `lw` at 0x4e4d20 loads 4 bytes from abs 0x5aa950 (cfb8StippleRRop).
  15 such `lw` accesses load 4 bytes from table(0x5aa910) +0x0, including `lw` at 0x4e4de8, `lw` at 0x4e4e14, `lw` at 0x4e4e30.
  15 such `lw` accesses load 4 bytes from table(0x5aa8d0) +0x0, including `lw` at 0x4e4e0c, `lw` at 0x4e4e24, `lw` at 0x4e4e70.
  The `lw` at 0x4e513c loads 4 bytes from [([a1+76] + ([0x5aa8b8] << 0x2))] +0xc.
  4 such `lw` accesses load 4 bytes from table(0x5a52e0) +0x0, including `lw` at 0x4e5244, `lw` at 0x4e52d8, `lw` at 0x4e5470.
  536 such `sb` accesses store 1 byte to ?, including `sb` at 0x4e5314, `sb` at 0x4e536c, `sb` at 0x4e5378.
  The `lw` at 0x4e5350 loads 4 bytes from table(0x5a12d0) +0x0.
  218 such `sh` accesses store 2 bytes to ?, including `sh` at 0x4e5364, `sh` at 0x4e5370, `sh` at 0x4e5380.
  The `lw` at 0x4e55e8 loads 4 bytes from table(0x5a1350) +0x0.
  The `lw` at 0x4e5f58 loads 4 bytes from table(0x5a1310) +0x0.
  The `lw` at 0x4e6834 loads 4 bytes from abs 0x5aa8c0 (cfb8StippleAlu).
  The `lw` at 0x4e6840 loads 4 bytes from abs 0x5aa8c4 (cfb8StippleFg).
  The `lw` at 0x4e6850 loads 4 bytes from abs 0x5aa8c8 (cfb8StipplePm).
  The `beq` branch at 0x4e4aa8 targets 0x4e6834, is taken when v0(=[0x5aa8bc]) == a7(=0x2), and falls through when v0(=[0x5aa8bc]) != a7(=0x2).
  The `beq` branch at 0x4e4ae0 targets 0x4e4af4, is taken when a6(=[a1+5]:1) >= 0x10 (unsigned), and falls through when a6(=[a1+5]:1) < 0x10 (unsigned).
  The `beq` branch at 0x4e4b18 targets 0x4e6874, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x4e4b24 targets 0x4e6888, is taken when a5(=-0x1) == t2(?), and falls through when a5(=-0x1) != t2(?).
  The `beq` branch at 0x4e4b80 targets 0x4e4bc0 and is always taken.
  The `bne` branch at 0x4e4bf4 targets 0x4e4b88, is taken when t0(?) != t1(=0x5aa0a8), and falls through when t0(?) == t1(=0x5aa0a8).
  The `beq` branch at 0x4e4c28 targets 0x4e686c, is taken when s0(=0x1) == a6(=[a0]:1), and falls through when s0(=0x1) != a6(=[a0]:1).
  The `blez` branch at 0x4e4c48 targets 0x4e6800, is taken when ra(=a2) <= 0 (signed), and falls through when ra(=a2) > 0 (signed).
  The `beq` branch at 0x4e4c68 targets 0x4e4c84 and is always taken.
  The `beq` branch at 0x4e4c7c targets 0x4e6800, is taken when t0(?) == t1(=((a2 << 0x3) + a3)), and falls through when t0(?) != t1(=((a2 << 0x3) + a3)).
  The `beq` branch at 0x4e4cb8 targets 0x4e4cd8, is taken when a6(?) >= 0x5 (signed), and falls through when a6(?) < 0x5 (signed).
  The `beq` branch at 0x4e4cd0 targets 0x4e4cf0 and is always taken.
  The `beq` branch at 0x4e4d38 targets 0x4e5130, is taken when t8(=[0x5aa950]) == a1(=0x3), and falls through when t8(=[0x5aa950]) != a1(=0x3).
  The `blez` branch at 0x4e4d44 targets 0x4e4c74, is taken when v0(?) <= 0 (signed), and falls through when v0(?) > 0 (signed).
  The `beq` branch at 0x4e4dbc targets 0x4e6ef0 and is always taken.
  The `beq` branch at 0x4e4e4c targets 0x4e4e8c, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `beq` branch at 0x4e4e98 targets 0x4e4c70, is taken when s3(?) == t1(?), and falls through when s3(?) != t1(?).
  The `beq` branch at 0x4e4edc targets 0x4e4f20, is taken when s6(?) == 0, and falls through when s6(?) != 0.
  The `beq` branch at 0x4e4f2c targets 0x4e4e4c, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x4e4f3c targets 0x4e4f74, is taken when (ra(?) & 0x1) == 0, and falls through when (ra(?) & 0x1) != 0.
  The `beq` branch at 0x4e4f74 targets 0x4e4e4c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e4f7c targets 0x4e6e80, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x4e5028 targets 0x4e4dd0, is taken when t2(?) == a6(?), and falls through when t2(?) != a6(?).
  The `beq` branch at 0x4e5088 targets 0x4e5118, is taken when t0(?) == a6(?), and falls through when t0(?) != a6(?).
  The `bne` branch at 0x4e50e8 targets 0x4e4fd0, is taken when a7(?) != a6(?), and falls through when a7(?) == a6(?).
  The `beq` branch at 0x4e5110 targets 0x4e4de4 and is always taken.
  The `beq` branch at 0x4e5128 targets 0x4e4de4 and is always taken.
  The `beq` branch at 0x4e5138 targets 0x4e518c, is taken when a5(?) >= 0x40 (signed), and falls through when a5(?) < 0x40 (signed).
  The `blez` branch at 0x4e5144 targets 0x4e4c74, is taken when t1(?) <= 0 (signed), and falls through when t1(?) > 0 (signed).
  The `beq` branch at 0x4e5184 targets 0x4e6f00 and is always taken.
  The `blez` branch at 0x4e5190 targets 0x4e4c74, is taken when a5(?) <= 0 (signed), and falls through when a5(?) > 0 (signed).
  The `beq` branch at 0x4e521c targets 0x4e6f10 and is always taken.
  The `beq` branch at 0x4e5230 targets 0x4e5268, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `beq` branch at 0x4e5278 targets 0x4e4c70, is taken when a5(?) == v1(?), and falls through when a5(?) != v1(?).
  The `beq` branch at 0x4e52c0 targets 0x4e5304, is taken when s6(?) == 0, and falls through when s6(?) != 0.
  The `blez` branch at 0x4e5304 targets 0x4e53ec, is taken when ra(?) <= 0 (signed), and falls through when ra(?) > 0 (signed).
  The `beq` branch at 0x4e530c targets 0x4e5330 and is always taken.
  The `beq` branch at 0x4e5328 targets 0x4e5230, is taken when a1(?) == ra(?), and falls through when a1(?) != ra(?).
  The `beq` branch at 0x4e5348 targets 0x4e5320, is taken when a4(?) >= 0x10 (unsigned), and falls through when a4(?) < 0x10 (unsigned).
  The `beq` branch at 0x4e535c targets 0x4e5320 and is always taken.
  The `beq` branch at 0x4e5368 targets 0x4e5320 and is always taken.
  The `beq` branch at 0x4e5374 targets 0x4e5320 and is always taken.
  The `beq` branch at 0x4e537c targets 0x4e5320 and is always taken.
  The `beq` branch at 0x4e5388 targets 0x4e5320 and is always taken.
  The `beq` branch at 0x4e5394 targets 0x4e5320 and is always taken.
  The `beq` branch at 0x4e53a0 targets 0x4e5320 and is always taken.
  The `beq` branch at 0x4e53a8 targets 0x4e5320 and is always taken.
  The `beq` branch at 0x4e53b4 targets 0x4e5320 and is always taken.
  The `beq` branch at 0x4e53c0 targets 0x4e5320 and is always taken.
  The `beq` branch at 0x4e53cc targets 0x4e5320 and is always taken.
  The `beq` branch at 0x4e53d4 targets 0x4e5320 and is always taken.
  The `beq` branch at 0x4e53dc targets 0x4e5320 and is always taken.
  The `beq` branch at 0x4e53e4 targets 0x4e5320 and is always taken.
  The `bne` branch at 0x4e53f0 targets 0x4e5238, is taken when s5(?) != 0, and falls through when s5(?) == 0.
  The `beq` branch at 0x4e53f8 targets 0x4e526c and is always taken.
  The `beq` branch at 0x4e5408 targets 0x4e4c70, is taken when s7(?) == t9(?), and falls through when s7(?) != t9(?).
  The `beq` branch at 0x4e5458 targets 0x4e549c, is taken when s6(?) == 0, and falls through when s6(?) != 0.
  The `bgez` branch at 0x4e54ac targets 0x4e54bc, is taken when t2(?) >= 0 (signed), and falls through when t2(?) < 0 (signed).
  The `beq` branch at 0x4e54b4 targets 0x4e5f34 and is always taken.
  The `beq` branch at 0x4e54d0 targets 0x4e5510, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `beq` branch at 0x4e5510 targets 0x4e5400, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x4e551c targets 0x4e55c4 and is always taken.
  The `beq` branch at 0x4e5524 targets 0x4e55b0, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4e5534 targets 0x4e554c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x4e5544 targets 0x4e553c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x4e554c targets 0x4e55b0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e5554 targets 0x4e6df0, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `bne` branch at 0x4e5590 targets 0x4e5570, is taken when v1(?) != a0(?), and falls through when v1(?) == a0(?).
  The `beq` branch at 0x4e55bc targets 0x4e5400, is taken when t2(?) == t3(?), and falls through when t2(?) != t3(?).
  The `beq` branch at 0x4e55e0 targets 0x4e55b0, is taken when t9(?) >= 0x10 (unsigned), and falls through when t9(?) < 0x10 (unsigned).
  The `beq` branch at 0x4e55f4 targets 0x4e55b0, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4e55fc targets 0x4e5614, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e560c targets 0x4e5604, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e561c targets 0x4e5680, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e5624 targets 0x4e6c64, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x4e5660 targets 0x4e5640, is taken when a0(?) != v1(?), and falls through when a0(?) == v1(?).
  The `beq` branch at 0x4e5680 targets 0x4e55b4 and is always taken.
  The `beq` branch at 0x4e5688 targets 0x4e55b0, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4e5690 targets 0x4e56ac, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e56a4 targets 0x4e5698, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e56b4 targets 0x4e5720, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e56bc targets 0x4e6c88, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x4e5700 targets 0x4e56e0, is taken when a0(?) != v1(?), and falls through when a0(?) == v1(?).
  The `beq` branch at 0x4e5720 targets 0x4e55b4 and is always taken.
  The `beq` branch at 0x4e5728 targets 0x4e55b0, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4e5730 targets 0x4e574c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e5744 targets 0x4e5738, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e5754 targets 0x4e57c0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e575c targets 0x4e6cac, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x4e57a0 targets 0x4e5780, is taken when a0(?) != v1(?), and falls through when a0(?) == v1(?).
  The `beq` branch at 0x4e57c0 targets 0x4e55b4 and is always taken.
  The `beq` branch at 0x4e57c8 targets 0x4e55b0, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4e57d0 targets 0x4e57e8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e57e0 targets 0x4e57d8, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e57f0 targets 0x4e5850, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e57f8 targets 0x4e6cd0, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x4e5830 targets 0x4e5810, is taken when a0(?) != v1(?), and falls through when a0(?) == v1(?).
  The `beq` branch at 0x4e5850 targets 0x4e55b4 and is always taken.
  The `beq` branch at 0x4e5858 targets 0x4e55b0, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4e5860 targets 0x4e587c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e5874 targets 0x4e5868, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e5884 targets 0x4e58f0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e588c targets 0x4e6cf4, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x4e58d0 targets 0x4e58b0, is taken when a0(?) != v1(?), and falls through when a0(?) == v1(?).
  The `beq` branch at 0x4e58f0 targets 0x4e55b4 and is always taken.
  The `beq` branch at 0x4e58f8 targets 0x4e55b0, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4e5908 targets 0x4e5924, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e591c targets 0x4e5910, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e5924 targets 0x4e5990, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `bne` branch at 0x4e592c targets 0x4e6d18, is taken when s3(?) != 0, and falls through when s3(?) == 0.
  The `bne` branch at 0x4e5970 targets 0x4e5950, is taken when a0(?) != v1(?), and falls through when a0(?) == v1(?).
  The `beq` branch at 0x4e5990 targets 0x4e55b4 and is always taken.
  The `beq` branch at 0x4e5998 targets 0x4e55b0, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4e59a0 targets 0x4e59bc, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e59b4 targets 0x4e59a8, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e59c4 targets 0x4e5a30, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e59cc targets 0x4e6d3c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x4e5a10 targets 0x4e59f0, is taken when a0(?) != v1(?), and falls through when a0(?) == v1(?).
  The `beq` branch at 0x4e5a30 targets 0x4e55b4 and is always taken.
  The `beq` branch at 0x4e5a38 targets 0x4e55b0, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4e5a40 targets 0x4e5a58, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e5a50 targets 0x4e5a48, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e5a60 targets 0x4e5ac0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e5a68 targets 0x4e6d60, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x4e5aa0 targets 0x4e5a80, is taken when a0(?) != v1(?), and falls through when a0(?) == v1(?).
  The `beq` branch at 0x4e5ac0 targets 0x4e55b4 and is always taken.
  The `beq` branch at 0x4e5ac8 targets 0x4e55b0, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4e5ad0 targets 0x4e5aec, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e5ae4 targets 0x4e5ad8, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e5af4 targets 0x4e5b90, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e5afc targets 0x4e6d84, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e5b50 targets 0x4e5e88, is taken when v1(?) == a1(?), and falls through when v1(?) != a1(?).
  The `bne` branch at 0x4e5b78 targets 0x4e5b30, is taken when a0(?) != a1(?), and falls through when a0(?) == a1(?).
  The `beq` branch at 0x4e5b90 targets 0x4e55b4 and is always taken.
  The `beq` branch at 0x4e5b98 targets 0x4e55b0, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4e5ba8 targets 0x4e5bc4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e5bbc targets 0x4e5bb0, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e5bc4 targets 0x4e5c30, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `bne` branch at 0x4e5bcc targets 0x4e6da8, is taken when s3(?) != 0, and falls through when s3(?) == 0.
  The `bne` branch at 0x4e5c10 targets 0x4e5bf0, is taken when v1(?) != a0(?), and falls through when v1(?) == a0(?).
  The `beq` branch at 0x4e5c30 targets 0x4e55b4 and is always taken.
  The `beq` branch at 0x4e5c38 targets 0x4e55b0, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4e5c48 targets 0x4e5c64, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e5c5c targets 0x4e5c50, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e5c64 targets 0x4e5cd0, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `bne` branch at 0x4e5c6c targets 0x4e6dcc, is taken when s3(?) != 0, and falls through when s3(?) == 0.
  The `bne` branch at 0x4e5cb0 targets 0x4e5c90, is taken when v1(?) != a0(?), and falls through when v1(?) == a0(?).
  The `beq` branch at 0x4e5cd0 targets 0x4e55b4 and is always taken.
  The `beq` branch at 0x4e5cd8 targets 0x4e55b0, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4e5ce8 targets 0x4e5d00, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e5cf8 targets 0x4e5cf0, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e5d00 targets 0x4e5d60, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `bne` branch at 0x4e5d08 targets 0x4e6e14, is taken when s3(?) != 0, and falls through when s3(?) == 0.
  The `bne` branch at 0x4e5d40 targets 0x4e5d20, is taken when v1(?) != a0(?), and falls through when v1(?) == a0(?).
  The `beq` branch at 0x4e5d60 targets 0x4e55b4 and is always taken.
  The `beq` branch at 0x4e5d68 targets 0x4e55b0, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4e5d78 targets 0x4e5d90, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e5d88 targets 0x4e5d80, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e5d90 targets 0x4e5df0, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `bne` branch at 0x4e5d98 targets 0x4e6e38, is taken when s3(?) != 0, and falls through when s3(?) == 0.
  The `bne` branch at 0x4e5dd0 targets 0x4e5db0, is taken when v1(?) != a0(?), and falls through when v1(?) == a0(?).
  The `beq` branch at 0x4e5df0 targets 0x4e55b4 and is always taken.
  The `beq` branch at 0x4e5df8 targets 0x4e55b0, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4e5e08 targets 0x4e5e20, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e5e18 targets 0x4e5e10, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e5e20 targets 0x4e5e80, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `bne` branch at 0x4e5e28 targets 0x4e6e5c, is taken when s3(?) != 0, and falls through when s3(?) == 0.
  The `bne` branch at 0x4e5e60 targets 0x4e5e40, is taken when v1(?) != a0(?), and falls through when v1(?) == a0(?).
  The `beq` branch at 0x4e5e80 targets 0x4e55b4 and is always taken.
  The `beq` branch at 0x4e5e88 targets 0x4e5b84 and is always taken.
  The `bltz` branch at 0x4e5e90 targets 0x4e5f20, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0x4e5ea0 targets 0x4e5eb8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e5eb0 targets 0x4e5ea8, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e5eb8 targets 0x4e5f20, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x4e5ec0 targets 0x4e6bf8, is taken when s3(?) != 0, and falls through when s3(?) == 0.
  The `bne` branch at 0x4e5f00 targets 0x4e5ee0, is taken when v1(?) != a0(?), and falls through when v1(?) == a0(?).
  The `beq` branch at 0x4e5f2c targets 0x4e54c0, is taken when t1(?) == s0(?), and falls through when t1(?) != s0(?).
  The `beq` branch at 0x4e5f50 targets 0x4e5f20, is taken when t9(?) >= 0x10 (unsigned), and falls through when t9(?) < 0x10 (unsigned).
  The `bltz` branch at 0x4e5f64 targets 0x4e5f20, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0x4e5f6c targets 0x4e5f84, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e5f7c targets 0x4e5f74, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e5f8c targets 0x4e5ff0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e5f94 targets 0x4e6a48, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x4e5fd0 targets 0x4e5fb0, is taken when a0(?) != v1(?), and falls through when a0(?) == v1(?).
  The `beq` branch at 0x4e5ff0 targets 0x4e5f24 and is always taken.
  The `bltz` branch at 0x4e5ff8 targets 0x4e5f20, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0x4e6004 targets 0x4e6020, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e6018 targets 0x4e600c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e6028 targets 0x4e6090, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e6030 targets 0x4e6a6c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x4e6070 targets 0x4e6050, is taken when a0(?) != v1(?), and falls through when a0(?) == v1(?).
  The `beq` branch at 0x4e6090 targets 0x4e5f24 and is always taken.
  The `bltz` branch at 0x4e6098 targets 0x4e5f20, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0x4e60a4 targets 0x4e60c0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e60b8 targets 0x4e60ac, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e60c8 targets 0x4e6130, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e60d0 targets 0x4e6a90, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x4e6110 targets 0x4e60f0, is taken when a0(?) != v1(?), and falls through when a0(?) == v1(?).
  The `beq` branch at 0x4e6130 targets 0x4e5f24 and is always taken.
  The `bltz` branch at 0x4e6138 targets 0x4e5f20, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0x4e6140 targets 0x4e6158, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e6150 targets 0x4e6148, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e6160 targets 0x4e61c0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e6168 targets 0x4e6ab4, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x4e61a0 targets 0x4e6180, is taken when a0(?) != v1(?), and falls through when a0(?) == v1(?).
  The `beq` branch at 0x4e61c0 targets 0x4e5f24 and is always taken.
  The `bltz` branch at 0x4e61c8 targets 0x4e5f20, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0x4e61d0 targets 0x4e61ec, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e61e4 targets 0x4e61d8, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e61f4 targets 0x4e6260, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e61fc targets 0x4e6ad8, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x4e6240 targets 0x4e6220, is taken when a0(?) != v1(?), and falls through when a0(?) == v1(?).
  The `beq` branch at 0x4e6260 targets 0x4e5f24 and is always taken.
  The `bltz` branch at 0x4e6268 targets 0x4e5f20, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0x4e6278 targets 0x4e6294, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e628c targets 0x4e6280, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e6294 targets 0x4e6300, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `bne` branch at 0x4e629c targets 0x4e6afc, is taken when s8(?) != 0, and falls through when s8(?) == 0.
  The `bne` branch at 0x4e62e0 targets 0x4e62c0, is taken when a0(?) != v1(?), and falls through when a0(?) == v1(?).
  The `beq` branch at 0x4e6300 targets 0x4e5f24 and is always taken.
  The `bltz` branch at 0x4e6308 targets 0x4e5f20, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0x4e6310 targets 0x4e632c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e6324 targets 0x4e6318, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e6334 targets 0x4e63a0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e633c targets 0x4e6b20, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x4e6380 targets 0x4e6360, is taken when a0(?) != v1(?), and falls through when a0(?) == v1(?).
  The `beq` branch at 0x4e63a0 targets 0x4e5f24 and is always taken.
  The `bltz` branch at 0x4e63a8 targets 0x4e5f20, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0x4e63b0 targets 0x4e63c8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e63c0 targets 0x4e63b8, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e63d0 targets 0x4e6430, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e63d8 targets 0x4e6b44, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x4e6410 targets 0x4e63f0, is taken when a0(?) != v1(?), and falls through when a0(?) == v1(?).
  The `beq` branch at 0x4e6430 targets 0x4e5f24 and is always taken.
  The `bltz` branch at 0x4e6438 targets 0x4e5f20, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0x4e6444 targets 0x4e6460, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e6458 targets 0x4e644c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e6460 targets 0x4e6500, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `bne` branch at 0x4e6468 targets 0x4e6b68, is taken when s8(?) != 0, and falls through when s8(?) == 0.
  The `beq` branch at 0x4e64c0 targets 0x4e67f8, is taken when v1(?) == a1(?), and falls through when v1(?) != a1(?).
  The `bne` branch at 0x4e64e8 targets 0x4e64a0, is taken when a0(?) != a1(?), and falls through when a0(?) == a1(?).
  The `beq` branch at 0x4e6500 targets 0x4e5f24 and is always taken.
  The `bltz` branch at 0x4e6508 targets 0x4e5f20, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0x4e6518 targets 0x4e6534, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e652c targets 0x4e6520, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e6534 targets 0x4e65a0, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `bne` branch at 0x4e653c targets 0x4e6b8c, is taken when s8(?) != 0, and falls through when s8(?) == 0.
  The `bne` branch at 0x4e6580 targets 0x4e6560, is taken when v1(?) != a0(?), and falls through when v1(?) == a0(?).
  The `beq` branch at 0x4e65a0 targets 0x4e5f24 and is always taken.
  The `bltz` branch at 0x4e65a8 targets 0x4e5f20, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0x4e65b8 targets 0x4e65d4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e65cc targets 0x4e65c0, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e65d4 targets 0x4e6640, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `bne` branch at 0x4e65dc targets 0x4e6bb0, is taken when s8(?) != 0, and falls through when s8(?) == 0.
  The `bne` branch at 0x4e6620 targets 0x4e6600, is taken when v1(?) != a0(?), and falls through when v1(?) == a0(?).
  The `beq` branch at 0x4e6640 targets 0x4e5f24 and is always taken.
  The `bltz` branch at 0x4e6648 targets 0x4e5f20, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0x4e6658 targets 0x4e6670, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e6668 targets 0x4e6660, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e6670 targets 0x4e66d0, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `bne` branch at 0x4e6678 targets 0x4e6bd4, is taken when s8(?) != 0, and falls through when s8(?) == 0.
  The `bne` branch at 0x4e66b0 targets 0x4e6690, is taken when v1(?) != a0(?), and falls through when v1(?) == a0(?).
  The `beq` branch at 0x4e66d0 targets 0x4e5f24 and is always taken.
  The `bltz` branch at 0x4e66d8 targets 0x4e5f20, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0x4e66e8 targets 0x4e6700, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e66f8 targets 0x4e66f0, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e6700 targets 0x4e6760, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `bne` branch at 0x4e6708 targets 0x4e6c1c, is taken when s8(?) != 0, and falls through when s8(?) == 0.
  The `bne` branch at 0x4e6740 targets 0x4e6720, is taken when v1(?) != a0(?), and falls through when v1(?) == a0(?).
  The `beq` branch at 0x4e6760 targets 0x4e5f24 and is always taken.
  The `bltz` branch at 0x4e6768 targets 0x4e5f20, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0x4e6778 targets 0x4e6790, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x4e6788 targets 0x4e6780, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e6790 targets 0x4e67f0, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `bne` branch at 0x4e6798 targets 0x4e6c40, is taken when s8(?) != 0, and falls through when s8(?) == 0.
  The `bne` branch at 0x4e67d0 targets 0x4e67b0, is taken when v1(?) != a0(?), and falls through when v1(?) == a0(?).
  The `beq` branch at 0x4e67f0 targets 0x4e5f24 and is always taken.
  The `beq` branch at 0x4e67f8 targets 0x4e64f4 and is always taken.
  The `bne` branch at 0x4e6838 targets 0x4e6894, is taken when a4(=[0x5aa8c0]) != a6(=[a1+5]:1), and falls through when a4(=[0x5aa8c0]) == a6(=[a1+5]:1).
  The `bne` branch at 0x4e6848 targets 0x4e4ab8, is taken when a5(=[0x5aa8c4]) != t0(?), and falls through when a5(=[0x5aa8c4]) == t0(?).
  The `bne` branch at 0x4e6858 targets 0x4e4abc, is taken when t1(=[0x5aa8c8]) != t2(?), and falls through when t1(=[0x5aa8c8]) == t2(?).
  The `beq` branch at 0x4e6864 targets 0x4e4c24 and is always taken.
  The `beq` branch at 0x4e686c targets 0x4e4c38 and is always taken.
  The `beq` branch at 0x4e6880 targets 0x4e4b50 and is always taken.
  The `beq` branch at 0x4e688c targets 0x4e4b50 and is always taken.
  The `beq` branch at 0x4e6894 targets 0x4e4ab8 and is always taken.
  The `beq` branch at 0x4e689c targets 0x4e4afc and is always taken.
  The `beq` branch at 0x4e68a8 targets 0x4e4afc and is always taken.
  The `beq` branch at 0x4e68c8 targets 0x4e4afc and is always taken.
  The `beq` branch at 0x4e68e8 targets 0x4e4afc and is always taken.
  The `beq` branch at 0x4e6908 targets 0x4e4afc and is always taken.
  The `beq` branch at 0x4e6928 targets 0x4e4afc and is always taken.
  The `beq` branch at 0x4e6934 targets 0x4e4afc and is always taken.
  The `beq` branch at 0x4e6954 targets 0x4e4afc and is always taken.
  The `beq` branch at 0x4e6974 targets 0x4e4afc and is always taken.
  The `beq` branch at 0x4e6994 targets 0x4e4afc and is always taken.
  The `beq` branch at 0x4e69b4 targets 0x4e4afc and is always taken.
  The `beq` branch at 0x4e69c0 targets 0x4e4afc and is always taken.
  The `beq` branch at 0x4e69e0 targets 0x4e4afc and is always taken.
  The `beq` branch at 0x4e6a00 targets 0x4e4afc and is always taken.
  The `beq` branch at 0x4e6a20 targets 0x4e4afc and is always taken.
  The `beq` branch at 0x4e6a40 targets 0x4e4afc and is always taken.
  The `beq` branch at 0x4e6a64 targets 0x4e5ff0 and is always taken.
  The `beq` branch at 0x4e6a88 targets 0x4e6090 and is always taken.
  The `beq` branch at 0x4e6aac targets 0x4e6130 and is always taken.
  The `beq` branch at 0x4e6ad0 targets 0x4e61c0 and is always taken.
  The `beq` branch at 0x4e6af4 targets 0x4e6260 and is always taken.
  The `beq` branch at 0x4e6b18 targets 0x4e6300 and is always taken.
  The `beq` branch at 0x4e6b3c targets 0x4e63a0 and is always taken.
  The `beq` branch at 0x4e6b60 targets 0x4e6430 and is always taken.
  The `beq` branch at 0x4e6b84 targets 0x4e6500 and is always taken.
  The `beq` branch at 0x4e6ba8 targets 0x4e65a0 and is always taken.
  The `beq` branch at 0x4e6bcc targets 0x4e6640 and is always taken.
  The `beq` branch at 0x4e6bf0 targets 0x4e66d0 and is always taken.
  The `beq` branch at 0x4e6c14 targets 0x4e5f20 and is always taken.
  The `beq` branch at 0x4e6c38 targets 0x4e6760 and is always taken.
  The `beq` branch at 0x4e6c5c targets 0x4e67f0 and is always taken.
  The `beq` branch at 0x4e6c80 targets 0x4e5680 and is always taken.
  The `beq` branch at 0x4e6ca4 targets 0x4e5720 and is always taken.
  The `beq` branch at 0x4e6cc8 targets 0x4e57c0 and is always taken.
  The `beq` branch at 0x4e6cec targets 0x4e5850 and is always taken.
  The `beq` branch at 0x4e6d10 targets 0x4e58f0 and is always taken.
  The `beq` branch at 0x4e6d34 targets 0x4e5990 and is always taken.
  The `beq` branch at 0x4e6d58 targets 0x4e5a30 and is always taken.
  The `beq` branch at 0x4e6d7c targets 0x4e5ac0 and is always taken.
  The `beq` branch at 0x4e6da0 targets 0x4e5b90 and is always taken.
  The `beq` branch at 0x4e6dc4 targets 0x4e5c30 and is always taken.
  The `beq` branch at 0x4e6de8 targets 0x4e5cd0 and is always taken.
  The `beq` branch at 0x4e6e0c targets 0x4e55b0 and is always taken.
  The `beq` branch at 0x4e6e30 targets 0x4e5d60 and is always taken.
  The `beq` branch at 0x4e6e54 targets 0x4e5df0 and is always taken.
  The `beq` branch at 0x4e6e78 targets 0x4e5e80 and is always taken.
  The `beq` branch at 0x4e6ed8 targets 0x4e4e4c, is taken when a7(?) == a1(?), and falls through when a7(?) != a1(?).
  The `beq` branch at 0x4e6ee0 targets 0x4e6e80 and is always taken.
  The `beq` branch at 0x4e6ef8 targets 0x4e4ea4 and is always taken.
  The `beq` branch at 0x4e6f08 targets 0x4e5284 and is always taken.
  The `beq` branch at 0x4e6f18 targets 0x4e5414 and is always taken.
  The return at 0x4e682c has v0 = ?.
  The instructions from 0x4e4dc4 to 0x4e4dcc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4e5224 to 0x4e522c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4e6ee8 to 0x4e6eec are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x4e4aec uses the jump table at 0x5a1290 with targets 0x4e689c, 0x4e6a28, 0x4e6a08, 0x4e69e8, 0x4e69c8, 0x4e69bc, 0x4e699c, 0x4e697c, 0x4e695c, 0x4e693c, 0x4e6930, 0x4e6910, 0x4e68f0, 0x4e68d0, 0x4e68b0, 0x4e68a4.
  The indirect jump at 0x4e5354 uses the jump table at 0x5a12d0 with targets 0x4e5320, 0x4e53e4, 0x4e53dc, 0x4e53d4, 0x4e5314, 0x4e53c8, 0x4e53bc, 0x4e53b0, 0x4e53a8, 0x4e539c, 0x4e5390, 0x4e5384, 0x4e537c, 0x4e5370, 0x4e5364, 0x4e535c.
  The indirect jump at 0x4e5354 uses the jump table at 0x5a12d0 with targets 0x4e5320, 0x4e53e4, 0x4e53dc, 0x4e53d4, 0x4e5314, 0x4e53c8, 0x4e53bc, 0x4e53b0, 0x4e53a8, 0x4e539c, 0x4e5390, 0x4e5384, 0x4e537c, 0x4e5370, 0x4e5364, 0x4e535c.
  The indirect jump at 0x4e5354 uses the jump table at 0x5a12d0 with targets 0x4e5320, 0x4e53e4, 0x4e53dc, 0x4e53d4, 0x4e5314, 0x4e53c8, 0x4e53bc, 0x4e53b0, 0x4e53a8, 0x4e539c, 0x4e5390, 0x4e5384, 0x4e537c, 0x4e5370, 0x4e5364, 0x4e535c.
  The indirect jump at 0x4e5354 uses the jump table at 0x5a12d0 with targets 0x4e5320, 0x4e53e4, 0x4e53dc, 0x4e53d4, 0x4e5314, 0x4e53c8, 0x4e53bc, 0x4e53b0, 0x4e53a8, 0x4e539c, 0x4e5390, 0x4e5384, 0x4e537c, 0x4e5370, 0x4e5364, 0x4e535c.
  The indirect jump at 0x4e5354 uses the jump table at 0x5a12d0 with targets 0x4e5320, 0x4e53e4, 0x4e53dc, 0x4e53d4, 0x4e5314, 0x4e53c8, 0x4e53bc, 0x4e53b0, 0x4e53a8, 0x4e539c, 0x4e5390, 0x4e5384, 0x4e537c, 0x4e5370, 0x4e5364, 0x4e535c.
  The indirect jump at 0x4e5354 uses the jump table at 0x5a12d0 with targets 0x4e5320, 0x4e53e4, 0x4e53dc, 0x4e53d4, 0x4e5314, 0x4e53c8, 0x4e53bc, 0x4e53b0, 0x4e53a8, 0x4e539c, 0x4e5390, 0x4e5384, 0x4e537c, 0x4e5370, 0x4e5364, 0x4e535c.
  The indirect jump at 0x4e5354 uses the jump table at 0x5a12d0 with targets 0x4e5320, 0x4e53e4, 0x4e53dc, 0x4e53d4, 0x4e5314, 0x4e53c8, 0x4e53bc, 0x4e53b0, 0x4e53a8, 0x4e539c, 0x4e5390, 0x4e5384, 0x4e537c, 0x4e5370, 0x4e5364, 0x4e535c.
  The indirect jump at 0x4e5354 uses the jump table at 0x5a12d0 with targets 0x4e5320, 0x4e53e4, 0x4e53dc, 0x4e53d4, 0x4e5314, 0x4e53c8, 0x4e53bc, 0x4e53b0, 0x4e53a8, 0x4e539c, 0x4e5390, 0x4e5384, 0x4e537c, 0x4e5370, 0x4e5364, 0x4e535c.
  The indirect jump at 0x4e5354 uses the jump table at 0x5a12d0 with targets 0x4e5320, 0x4e53e4, 0x4e53dc, 0x4e53d4, 0x4e5314, 0x4e53c8, 0x4e53bc, 0x4e53b0, 0x4e53a8, 0x4e539c, 0x4e5390, 0x4e5384, 0x4e537c, 0x4e5370, 0x4e5364, 0x4e535c.
  The indirect jump at 0x4e5f5c uses the jump table at 0x5a1310 with targets 0x4e5f20, 0x4e6768, 0x4e66d8, 0x4e5e90, 0x4e6648, 0x4e65a8, 0x4e6508, 0x4e6438, 0x4e63a8, 0x4e6308, 0x4e6268, 0x4e61c8, 0x4e6138, 0x4e6098, 0x4e5ff8, 0x4e5f64.
  The indirect jump at 0x4e5f5c uses the jump table at 0x5a1310 with targets 0x4e5f20, 0x4e6768, 0x4e66d8, 0x4e5e90, 0x4e6648, 0x4e65a8, 0x4e6508, 0x4e6438, 0x4e63a8, 0x4e6308, 0x4e6268, 0x4e61c8, 0x4e6138, 0x4e6098, 0x4e5ff8, 0x4e5f64.
  The indirect jump at 0x4e5f5c uses the jump table at 0x5a1310 with targets 0x4e5f20, 0x4e6768, 0x4e66d8, 0x4e5e90, 0x4e6648, 0x4e65a8, 0x4e6508, 0x4e6438, 0x4e63a8, 0x4e6308, 0x4e6268, 0x4e61c8, 0x4e6138, 0x4e6098, 0x4e5ff8, 0x4e5f64.
  The indirect jump at 0x4e5f5c uses the jump table at 0x5a1310 with targets 0x4e5f20, 0x4e6768, 0x4e66d8, 0x4e5e90, 0x4e6648, 0x4e65a8, 0x4e6508, 0x4e6438, 0x4e63a8, 0x4e6308, 0x4e6268, 0x4e61c8, 0x4e6138, 0x4e6098, 0x4e5ff8, 0x4e5f64.
  The indirect jump at 0x4e5f5c uses the jump table at 0x5a1310 with targets 0x4e5f20, 0x4e6768, 0x4e66d8, 0x4e5e90, 0x4e6648, 0x4e65a8, 0x4e6508, 0x4e6438, 0x4e63a8, 0x4e6308, 0x4e6268, 0x4e61c8, 0x4e6138, 0x4e6098, 0x4e5ff8, 0x4e5f64.
  The indirect jump at 0x4e55ec uses the jump table at 0x5a1350 with targets 0x4e55b0, 0x4e5df8, 0x4e5d68, 0x4e5cd8, 0x4e5524, 0x4e5c38, 0x4e5b98, 0x4e5ac8, 0x4e5a38, 0x4e5998, 0x4e58f8, 0x4e5858, 0x4e57c8, 0x4e5728, 0x4e5688, 0x4e55f4.
  The indirect jump at 0x4e55ec uses the jump table at 0x5a1350 with targets 0x4e55b0, 0x4e5df8, 0x4e5d68, 0x4e5cd8, 0x4e5524, 0x4e5c38, 0x4e5b98, 0x4e5ac8, 0x4e5a38, 0x4e5998, 0x4e58f8, 0x4e5858, 0x4e57c8, 0x4e5728, 0x4e5688, 0x4e55f4.
  The indirect jump at 0x4e55ec uses the jump table at 0x5a1350 with targets 0x4e55b0, 0x4e5df8, 0x4e5d68, 0x4e5cd8, 0x4e5524, 0x4e5c38, 0x4e5b98, 0x4e5ac8, 0x4e5a38, 0x4e5998, 0x4e58f8, 0x4e5858, 0x4e57c8, 0x4e5728, 0x4e5688, 0x4e55f4.
  The indirect jump at 0x4e55ec uses the jump table at 0x5a1350 with targets 0x4e55b0, 0x4e5df8, 0x4e5d68, 0x4e5cd8, 0x4e5524, 0x4e5c38, 0x4e5b98, 0x4e5ac8, 0x4e5a38, 0x4e5998, 0x4e58f8, 0x4e5858, 0x4e57c8, 0x4e5728, 0x4e5688, 0x4e55f4.
  The indirect jump at 0x4e55ec uses the jump table at 0x5a1350 with targets 0x4e55b0, 0x4e5df8, 0x4e5d68, 0x4e5cd8, 0x4e5524, 0x4e5c38, 0x4e5b98, 0x4e5ac8, 0x4e5a38, 0x4e5998, 0x4e58f8, 0x4e5858, 0x4e57c8, 0x4e5728, 0x4e5688, 0x4e55f4.
  The indirect jump at 0x4e5f5c uses the jump table at 0x5a1310 with targets 0x4e5f20, 0x4e6768, 0x4e66d8, 0x4e5e90, 0x4e6648, 0x4e65a8, 0x4e6508, 0x4e6438, 0x4e63a8, 0x4e6308, 0x4e6268, 0x4e61c8, 0x4e6138, 0x4e6098, 0x4e5ff8, 0x4e5f64.
  The indirect jump at 0x4e55ec uses the jump table at 0x5a1350 with targets 0x4e55b0, 0x4e5df8, 0x4e5d68, 0x4e5cd8, 0x4e5524, 0x4e5c38, 0x4e5b98, 0x4e5ac8, 0x4e5a38, 0x4e5998, 0x4e58f8, 0x4e5858, 0x4e57c8, 0x4e5728, 0x4e5688, 0x4e55f4.
  The indirect jump at 0x4e5f5c uses the jump table at 0x5a1310 with targets 0x4e5f20, 0x4e6768, 0x4e66d8, 0x4e5e90, 0x4e6648, 0x4e65a8, 0x4e6508, 0x4e6438, 0x4e63a8, 0x4e6308, 0x4e6268, 0x4e61c8, 0x4e6138, 0x4e6098, 0x4e5ff8, 0x4e5f64.
  The indirect jump at 0x4e55ec uses the jump table at 0x5a1350 with targets 0x4e55b0, 0x4e5df8, 0x4e5d68, 0x4e5cd8, 0x4e5524, 0x4e5c38, 0x4e5b98, 0x4e5ac8, 0x4e5a38, 0x4e5998, 0x4e58f8, 0x4e5858, 0x4e57c8, 0x4e5728, 0x4e5688, 0x4e55f4.
  The indirect jump at 0x4e5f5c uses the jump table at 0x5a1310 with targets 0x4e5f20, 0x4e6768, 0x4e66d8, 0x4e5e90, 0x4e6648, 0x4e65a8, 0x4e6508, 0x4e6438, 0x4e63a8, 0x4e6308, 0x4e6268, 0x4e61c8, 0x4e6138, 0x4e6098, 0x4e5ff8, 0x4e5f64.
  The indirect jump at 0x4e55ec uses the jump table at 0x5a1350 with targets 0x4e55b0, 0x4e5df8, 0x4e5d68, 0x4e5cd8, 0x4e5524, 0x4e5c38, 0x4e5b98, 0x4e5ac8, 0x4e5a38, 0x4e5998, 0x4e58f8, 0x4e5858, 0x4e57c8, 0x4e5728, 0x4e5688, 0x4e55f4.
  The indirect jump at 0x4e5f5c uses the jump table at 0x5a1310 with targets 0x4e5f20, 0x4e6768, 0x4e66d8, 0x4e5e90, 0x4e6648, 0x4e65a8, 0x4e6508, 0x4e6438, 0x4e63a8, 0x4e6308, 0x4e6268, 0x4e61c8, 0x4e6138, 0x4e6098, 0x4e5ff8, 0x4e5f64.
  The indirect jump at 0x4e55ec uses the jump table at 0x5a1350 with targets 0x4e55b0, 0x4e5df8, 0x4e5d68, 0x4e5cd8, 0x4e5524, 0x4e5c38, 0x4e5b98, 0x4e5ac8, 0x4e5a38, 0x4e5998, 0x4e58f8, 0x4e5858, 0x4e57c8, 0x4e5728, 0x4e5688, 0x4e55f4.
  The indirect jump at 0x4e5f5c uses the jump table at 0x5a1310 with targets 0x4e5f20, 0x4e6768, 0x4e66d8, 0x4e5e90, 0x4e6648, 0x4e65a8, 0x4e6508, 0x4e6438, 0x4e63a8, 0x4e6308, 0x4e6268, 0x4e61c8, 0x4e6138, 0x4e6098, 0x4e5ff8, 0x4e5f64.
  The indirect jump at 0x4e55ec uses the jump table at 0x5a1350 with targets 0x4e55b0, 0x4e5df8, 0x4e5d68, 0x4e5cd8, 0x4e5524, 0x4e5c38, 0x4e5b98, 0x4e5ac8, 0x4e5a38, 0x4e5998, 0x4e58f8, 0x4e5858, 0x4e57c8, 0x4e5728, 0x4e5688, 0x4e55f4.
  The indirect jump at 0x4e5354 uses the jump table at 0x5a12d0 with targets 0x4e5320, 0x4e53e4, 0x4e53dc, 0x4e53d4, 0x4e5314, 0x4e53c8, 0x4e53bc, 0x4e53b0, 0x4e53a8, 0x4e539c, 0x4e5390, 0x4e5384, 0x4e537c, 0x4e5370, 0x4e5364, 0x4e535c.
  The indirect jump at 0x4e5354 uses the jump table at 0x5a12d0 with targets 0x4e5320, 0x4e53e4, 0x4e53dc, 0x4e53d4, 0x4e5314, 0x4e53c8, 0x4e53bc, 0x4e53b0, 0x4e53a8, 0x4e539c, 0x4e5390, 0x4e5384, 0x4e537c, 0x4e5370, 0x4e5364, 0x4e535c.
  The indirect jump at 0x4e5f5c uses the jump table at 0x5a1310 with targets 0x4e5f20, 0x4e6768, 0x4e66d8, 0x4e5e90, 0x4e6648, 0x4e65a8, 0x4e6508, 0x4e6438, 0x4e63a8, 0x4e6308, 0x4e6268, 0x4e61c8, 0x4e6138, 0x4e6098, 0x4e5ff8, 0x4e5f64.
  The indirect jump at 0x4e55ec uses the jump table at 0x5a1350 with targets 0x4e55b0, 0x4e5df8, 0x4e5d68, 0x4e5cd8, 0x4e5524, 0x4e5c38, 0x4e5b98, 0x4e5ac8, 0x4e5a38, 0x4e5998, 0x4e58f8, 0x4e5858, 0x4e57c8, 0x4e5728, 0x4e5688, 0x4e55f4.
  The indirect jump at 0x4e5354 uses the jump table at 0x5a12d0 with targets 0x4e5320, 0x4e53e4, 0x4e53dc, 0x4e53d4, 0x4e5314, 0x4e53c8, 0x4e53bc, 0x4e53b0, 0x4e53a8, 0x4e539c, 0x4e5390, 0x4e5384, 0x4e537c, 0x4e5370, 0x4e5364, 0x4e535c.
  The indirect jump at 0x4e5f5c uses the jump table at 0x5a1310 with targets 0x4e5f20, 0x4e6768, 0x4e66d8, 0x4e5e90, 0x4e6648, 0x4e65a8, 0x4e6508, 0x4e6438, 0x4e63a8, 0x4e6308, 0x4e6268, 0x4e61c8, 0x4e6138, 0x4e6098, 0x4e5ff8, 0x4e5f64.
  The indirect jump at 0x4e55ec uses the jump table at 0x5a1350 with targets 0x4e55b0, 0x4e5df8, 0x4e5d68, 0x4e5cd8, 0x4e5524, 0x4e5c38, 0x4e5b98, 0x4e5ac8, 0x4e5a38, 0x4e5998, 0x4e58f8, 0x4e5858, 0x4e57c8, 0x4e5728, 0x4e5688, 0x4e55f4.
  The indirect jump at 0x4e5354 uses the jump table at 0x5a12d0 with targets 0x4e5320, 0x4e53e4, 0x4e53dc, 0x4e53d4, 0x4e5314, 0x4e53c8, 0x4e53bc, 0x4e53b0, 0x4e53a8, 0x4e539c, 0x4e5390, 0x4e5384, 0x4e537c, 0x4e5370, 0x4e5364, 0x4e535c.
  The indirect jump at 0x4e5f5c uses the jump table at 0x5a1310 with targets 0x4e5f20, 0x4e6768, 0x4e66d8, 0x4e5e90, 0x4e6648, 0x4e65a8, 0x4e6508, 0x4e6438, 0x4e63a8, 0x4e6308, 0x4e6268, 0x4e61c8, 0x4e6138, 0x4e6098, 0x4e5ff8, 0x4e5f64.
  The indirect jump at 0x4e55ec uses the jump table at 0x5a1350 with targets 0x4e55b0, 0x4e5df8, 0x4e5d68, 0x4e5cd8, 0x4e5524, 0x4e5c38, 0x4e5b98, 0x4e5ac8, 0x4e5a38, 0x4e5998, 0x4e58f8, 0x4e5858, 0x4e57c8, 0x4e5728, 0x4e5688, 0x4e55f4.

- `cfb8FillRectOpaqueStippled32` in `usr/lib/X11/dyDDX/crm.so` at 0x4e6f20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/crm.so`.
  Range: 0x4e6f20-0x4e7e18 (3832 bytes).
  It occupies 3832 bytes.
  The `lbu` at 0x4e6f20 loads 1 byte from a1 (arg1 at entry) +0x5.
  The `lw` at 0x4e6f58 loads 4 bytes from a1 (arg1 at entry) +0x4c.
  The `lw` at 0x4e6f70 loads 4 bytes from ([a1+76] + ([0x5aa8b8] << 0x2)) +0x0.
  The `lw` at 0x4e6f88 loads 4 bytes from [([a1+76] + ([0x5aa8b8] << 0x2))] +0x4.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x14, including `lw` at 0x4e6f8c, `lw` at 0x4e7cc0, `lw` at 0x4e7cec.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x1c, including `lw` at 0x4e6f90, `lw` at 0x4e7cb4, `lw` at 0x4e7cf0.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x18, including `lw` at 0x4e6f94, `lw` at 0x4e7c98.
  The `lbu` at 0x4e6fb8 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lw` at 0x4e6fbc loads 4 bytes from [[([a1+76] + ([0x5aa8b8] << 0x2))]+4] +0x20.
  The `lhu` at 0x4e6fc4 loads 2 bytes from [[([a1+76] + ([0x5aa8b8] << 0x2))]+4] +0xe.
  The `lw` at 0x4e6fd4 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x4e6fd8 loads 4 bytes from [a0+16] +0x74.
  24 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4e6fdc, `lw` at 0x4e6fe0, `lw` at 0x4e71e4.
  4 such `lh` accesses load 2 bytes from ?, including `lh` at 0x4e7038, `lh` at 0x4e703c, `lh` at 0x4e7040.
  The `lw` at 0x4e70a0 loads 4 bytes from table(0x5a51b8) +0x0.
  The `lw` at 0x4e70a8 loads 4 bytes from table(0x5a51c8) +0x0.
  The `lw` at 0x4e70c0 loads 4 bytes from table(0x5a5198) +0x0.
  The `lw` at 0x4e70e4 loads 4 bytes from table(0x5a51a8) +0x0.
  46 such `lw` accesses load 4 bytes from table(0x5aa910) +0x0, including `lw` at 0x4e71b0, `lw` at 0x4e71dc, `lw` at 0x4e71f8.
  94 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4e71b4, `sw` at 0x4e71cc, `sw` at 0x4e7200.
  15 such `lw` accesses load 4 bytes from table(0x5aa8d0) +0x0, including `lw` at 0x4e71d4, `lw` at 0x4e71ec, `lw` at 0x4e7238.
  The `jalr` at 0x4e6fac calls cfb8SetOpaqueStipple [0x476700] with a0=[a1+5]:1, a1=[a1+24], a2=[a1+28], a3=[a1+20], a5=[a1+5]:1, a6=[a1+24], a7=a3 at entry (arg3).
  The `beq` branch at 0x4e6f84 targets 0x4e7c94, is taken when at(=[0x5aa8bc]) == v0(=0x3), and falls through when at(=[0x5aa8bc]) != v0(=0x3).
  The `beq` branch at 0x4e6fcc targets 0x4e7ce4, is taken when t3(=[a0]:1) == t8(=0x1), and falls through when t3(=[a0]:1) != t8(=0x1).
  The `blez` branch at 0x4e6fec targets 0x4e7c60, is taken when s0(=a2) <= 0 (signed), and falls through when s0(=a2) > 0 (signed).
  The `beq` branch at 0x4e7014 targets 0x4e7034 and is always taken.
  The `beq` branch at 0x4e702c targets 0x4e7c60, is taken when a7(?) == t0(=((a2 << 0x3) + a3)), and falls through when a7(?) != t0(=((a2 << 0x3) + a3)).
  The `beq` branch at 0x4e708c targets 0x4e70bc, is taken when t1(?) >= 0x5 (signed), and falls through when t1(?) < 0x5 (signed).
  The `beq` branch at 0x4e70b4 targets 0x4e70e8 and is always taken.
  The `beq` branch at 0x4e7124 targets 0x4e74f0, is taken when t8(=[0x5aa950]) == a5(=0x3), and falls through when t8(=[0x5aa950]) != a5(=0x3).
  The `blez` branch at 0x4e712c targets 0x4e7024, is taken when s8(?) <= 0 (signed), and falls through when s8(?) > 0 (signed).
  The `beq` branch at 0x4e7180 targets 0x4e7df0 and is always taken.
  The `beq` branch at 0x4e7214 targets 0x4e7254, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x4e725c targets 0x4e7020, is taken when s1(?) == s8(?), and falls through when s1(?) != s8(?).
  The `beq` branch at 0x4e72a0 targets 0x4e72e4, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `beq` branch at 0x4e72ec targets 0x4e7214, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x4e7308 targets 0x4e7340, is taken when (a7(?) & 0x1) == 0, and falls through when (a7(?) & 0x1) != 0.
  The `beq` branch at 0x4e7340 targets 0x4e7214, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x4e7348 targets 0x4e7d88, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4e73f8 targets 0x4e7190, is taken when t1(?) == a5(?), and falls through when t1(?) != a5(?).
  The `beq` branch at 0x4e7458 targets 0x4e74d0, is taken when a7(?) == a5(?), and falls through when a7(?) != a5(?).
  The `bne` branch at 0x4e74b8 targets 0x4e73a0, is taken when a6(?) != a5(?), and falls through when a6(?) == a5(?).
  The `beq` branch at 0x4e74c8 targets 0x4e71ac and is always taken.
  The `beq` branch at 0x4e74e8 targets 0x4e71ac and is always taken.
  The `beq` branch at 0x4e74f4 targets 0x4e7558, is taken when t0(?) >= 0x40 (signed), and falls through when t0(?) < 0x40 (signed).
  The `blez` branch at 0x4e74fc targets 0x4e7024, is taken when s8(?) <= 0 (signed), and falls through when s8(?) > 0 (signed).
  The `beq` branch at 0x4e7550 targets 0x4e7e00 and is always taken.
  The `blez` branch at 0x4e7558 targets 0x4e7024, is taken when s8(?) <= 0 (signed), and falls through when s8(?) > 0 (signed).
  The `beq` branch at 0x4e75f0 targets 0x4e7e0c and is always taken.
  The `beq` branch at 0x4e7664 targets 0x4e769c, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x4e769c targets 0x4e7020, is taken when s2(?) == s8(?), and falls through when s2(?) != s8(?).
  The `beq` branch at 0x4e76e4 targets 0x4e7720, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `beq` branch at 0x4e772c targets 0x4e7660, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x4e7744 targets 0x4e7774, is taken when (a0(?) & 0x3) == 0, and falls through when (a0(?) & 0x3) != 0.
  The `bne` branch at 0x4e776c targets 0x4e774c, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x4e7774 targets 0x4e7660, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x4e777c targets 0x4e7d08, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x4e7890 targets 0x4e7600, is taken when a5(?) == a4(?), and falls through when a5(?) != a4(?).
  The `beq` branch at 0x4e7908 targets 0x4e7994, is taken when a5(?) == a4(?), and falls through when a5(?) != a4(?).
  The `bne` branch at 0x4e7980 targets 0x4e7820, is taken when a5(?) != a4(?), and falls through when a5(?) == a4(?).
  The `beq` branch at 0x4e798c targets 0x4e7610 and is always taken.
  The `beq` branch at 0x4e79a4 targets 0x4e7610 and is always taken.
  The `beq` branch at 0x4e79b4 targets 0x4e7020, is taken when s6(?) == s8(?), and falls through when s6(?) != s8(?).
  The `beq` branch at 0x4e7a04 targets 0x4e7a3c, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `beq` branch at 0x4e7a48 targets 0x4e7b30, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x4e7a50 targets 0x4e7ac0 and is always taken.
  The `bne` branch at 0x4e7a90 targets 0x4e7a70, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x4e7ab8 targets 0x4e7b30, is taken when a6(?) == t8(?), and falls through when a6(?) != t8(?).
  The `bltz` branch at 0x4e7ac0 targets 0x4e7ab0, is taken when t3(?) < 0 (signed), and falls through when t3(?) >= 0 (signed).
  The `beq` branch at 0x4e7ae4 targets 0x4e7afc, is taken when (s0(?) & 0x7) == 0, and falls through when (s0(?) & 0x7) != 0.
  The `bne` branch at 0x4e7af4 targets 0x4e7aec, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x4e7afc targets 0x4e7ab0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x4e7b04 targets 0x4e7a60, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x4e7b28 targets 0x4e7ab0 and is always taken.
  The `beq` branch at 0x4e7b38 targets 0x4e7b70, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x4e7b74 targets 0x4e79ac, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x4e7b7c targets 0x4e7bf0 and is always taken.
  The `bne` branch at 0x4e7bc0 targets 0x4e7ba0, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x4e7be8 targets 0x4e79ac, is taken when a6(?) == s2(?), and falls through when a6(?) != s2(?).
  The `beq` branch at 0x4e7bf0 targets 0x4e7be0, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x4e7c14 targets 0x4e7c2c, is taken when (t3(?) & 0x7) == 0, and falls through when (t3(?) & 0x7) != 0.
  The `bne` branch at 0x4e7c24 targets 0x4e7c1c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x4e7c2c targets 0x4e7be0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x4e7c34 targets 0x4e7b90, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x4e7c58 targets 0x4e7be0 and is always taken.
  The `bne` branch at 0x4e7ca0 targets 0x4e7cec, is taken when t1(=[0x5aa8c0]) != a5(=[a1+5]:1), and falls through when t1(=[0x5aa8c0]) == a5(=[a1+5]:1).
  The `bne` branch at 0x4e7cb0 targets 0x4e7cfc, is taken when t2(=[0x5aa8c4]) != t3(?), and falls through when t2(=[0x5aa8c4]) == t3(?).
  The `bne` branch at 0x4e7cc4 targets 0x4e6fa4, is taken when t8(=[0x5aa954]) != t9(?), and falls through when t8(=[0x5aa954]) == t9(?).
  The `beq` branch at 0x4e7cd4 targets 0x4e6fb8, is taken when ra(=[0x5aa8c8]) == at(?), and falls through when ra(=[0x5aa8c8]) != at(?).
  The `beq` branch at 0x4e7cdc targets 0x4e6fa8 and is always taken.
  The `beq` branch at 0x4e7ce4 targets 0x4e6fdc and is always taken.
  The `beq` branch at 0x4e7cf4 targets 0x4e6fa4 and is always taken.
  The `beq` branch at 0x4e7d00 targets 0x4e6fa4 and is always taken.
  The `beq` branch at 0x4e7d78 targets 0x4e7660, is taken when a5(?) == a2(?), and falls through when a5(?) != a2(?).
  The `beq` branch at 0x4e7d80 targets 0x4e7d08 and is always taken.
  The `beq` branch at 0x4e7de0 targets 0x4e7214, is taken when a6(?) == a1(?), and falls through when a6(?) != a1(?).
  The `beq` branch at 0x4e7de8 targets 0x4e7d88 and is always taken.
  The `beq` branch at 0x4e7df8 targets 0x4e7268 and is always taken.
  The `beq` branch at 0x4e7e04 targets 0x4e76a8 and is always taken.
  The `beq` branch at 0x4e7e10 targets 0x4e79c0 and is always taken.
  The return at 0x4e7c8c has v0 = ?.
  The instructions from 0x4e701c to 0x4e701c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4e7188 to 0x4e718c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4e75f8 to 0x4e75fc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4e7a58 to 0x4e7a5c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4e7b84 to 0x4e7b8c are not reached by any path from the entry, and their branches are not listed.

- `cfb8FillRectStippledUnnatural` in `usr/lib/X11/dyDDX/crm.so` at 0x4e7e20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/crm.so`.
  Range: 0x4e7e20-0x4e8cf8 (3800 bytes).
  It occupies 3800 bytes.
  The `lw` at 0x4e7e3c loads 4 bytes from a1 (arg1 at entry) +0x10.
  2 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x5, including `lbu` at 0x4e7e84, `lbu` at 0x4e88f8.
  7 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x14, including `lw` at 0x4e7e88, `lw` at 0x4e8908, `lw` at 0x4e8984.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x1c, including `lw` at 0x4e7e8c, `lw` at 0x4e8974, `lw` at 0x4e8acc.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x18, including `lw` at 0x4e7e90, `lw` at 0x4e890c, `lw` at 0x4e8958.
  The `lw` at 0x4e7ec0 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `lw` at 0x4e7ec4 loads 4 bytes from [a1+36] +0x20.
  The `lhu` at 0x4e7ec8 loads 2 bytes from [a1+36] +0xe.
  The `lw` at 0x4e7ecc loads 4 bytes from [a1+36] +0x1c.
  The `lhu` at 0x4e7ed0 loads 2 bytes from [a1+36] +0xc.
  The `lbu` at 0x4e7ed4 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lw` at 0x4e7ef0 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x4e7ef4 loads 4 bytes from [a0+16] +0x74.
  The `lh` at 0x4e7ef8 loads 2 bytes from a1 (arg1 at entry) +0x28.
  The `lh` at 0x4e7f10 loads 2 bytes from a1 (arg1 at entry) +0x2a.
  34 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4e7f50, `lw` at 0x4e7f84, `lw` at 0x4e81bc.
  The `lh` at 0x4e7f54 loads 2 bytes from a0 (arg0 at entry) +0xa.
  The `lh` at 0x4e7f58 loads 2 bytes from a0 (arg0 at entry) +0x8.
  4 such `lh` accesses load 2 bytes from ?, including `lh` at 0x4e7fe8, `lh` at 0x4e800c, `lh` at 0x4e8014.
  The `lw` at 0x4e80d0 loads 4 bytes from table(0x5a51c8) +0x0.
  The `lw` at 0x4e80d4 loads 4 bytes from table(0x5a51b8) +0x0.
  The `lw` at 0x4e80ec loads 4 bytes from table(0x5a51a8) +0x0.
  The `lw` at 0x4e80f4 loads 4 bytes from table(0x5a5198) +0x0.
  11 such `lw` accesses load 4 bytes from table(0x5a51d8) +0x0, including `lw` at 0x4e81b8, `lw` at 0x4e82c8, `lw` at 0x4e838c.
  5 such `lw` accesses load 4 bytes from table(0x5aa8d0) +0x0, including `lw` at 0x4e8220, `lw` at 0x4e8320, `lw` at 0x4e83dc.
  5 such `lw` accesses load 4 bytes from table(0x5aa910) +0x0, including `lw` at 0x4e8228, `lw` at 0x4e832c, `lw` at 0x4e83e8.
  17 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4e8240, `sw` at 0x4e8340, `sw` at 0x4e83fc.
  The `lw` at 0x4e8940 loads 4 bytes from table(0x5a1250) +0x0.
  The `lw` at 0x4e8a10 loads 4 bytes from abs 0x5a52e4 (cfb8StippleMasks+4).
  The `lw` at 0x4e8a1c loads 4 bytes from abs 0x5a52e0 (cfb8StippleMasks).
  The `jalr` at 0x4e7ea0 calls cfb8SetOpaqueStipple [0x476700] with a0=[a1+5]:1, a1=[a1+24], a2=[a1+28], a3=[a1+20].
  The `beq` branch at 0x4e7e74 targets 0x4e88f8, is taken when a7(=0x2) == at(?), and falls through when a7(=0x2) != at(?).
  The `beq` branch at 0x4e7e80 targets 0x4e8954, is taken when a6(=[0x5aa8bc]) == a0(=0x3), and falls through when a6(=[0x5aa8bc]) != a0(=0x3).
  The `beq` branch at 0x4e7eb8 targets 0x4e88c4, is taken when t1(?) == a1(=0x5), and falls through when t1(?) != a1(=0x5).
  The `beq` branch at 0x4e7ee8 targets 0x4e894c, is taken when a2(=[a0]:1) == a3(=0x1), and falls through when a2(=[a0]:1) != a3(=0x1).
  The `blez` branch at 0x4e7f94 targets 0x4e88c4, is taken when s4(=a2) <= 0 (signed), and falls through when s4(=a2) > 0 (signed).
  The `beq` branch at 0x4e7fc8 targets 0x4e7fe4 and is always taken.
  The `beq` branch at 0x4e7fdc targets 0x4e88c4, is taken when at(?) == v0(=((a2 << 0x3) + a3)), and falls through when at(?) != v0(=((a2 << 0x3) + a3)).
  The `beq` branch at 0x4e80c4 targets 0x4e80e8, is taken when a6(?) >= 0x4 (signed), and falls through when a6(?) < 0x4 (signed).
  The `beq` branch at 0x4e80e0 targets 0x4e8108 and is always taken.
  The `blez` branch at 0x4e8118 targets 0x4e7fd0, is taken when a5(?) <= 0 (signed), and falls through when a5(?) > 0 (signed).
  The `beq` branch at 0x4e81a8 targets 0x4e8270 and is always taken.
  The `beq` branch at 0x4e81b0 targets 0x4e81c8, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x4e81ec targets 0x4e8ce0, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x4e820c targets 0x4e8244, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x4e8268 targets 0x4e7fd0, is taken when a4(?) == a5(?), and falls through when a4(?) != a5(?).
  The `beq` branch at 0x4e827c targets 0x4e8830, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x4e82ac targets 0x4e8528, is taken when a6(?) < 0x4 (signed), and falls through when a6(?) >= 0x4 (signed).
  The `beq` branch at 0x4e82b8 targets 0x4e8580 and is always taken.
  The `beq` branch at 0x4e82c0 targets 0x4e82d8, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x4e8310 targets 0x4e81f4, is taken when t1(?) == s3(?), and falls through when t1(?) != s3(?).
  The `bne` branch at 0x4e833c targets 0x4e8354, is taken when v1(?) < 0x4 (signed), and falls through when v1(?) >= 0x4 (signed).
  The `beq` branch at 0x4e834c targets 0x4e83c0 and is always taken.
  The `bne` branch at 0x4e835c targets 0x4e84ac, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x4e8374 targets 0x4e8520, is taken when a2(?) < 0x21 (signed), and falls through when a2(?) >= 0x21 (signed).
  The `beq` branch at 0x4e837c targets 0x4e84dc and is always taken.
  The `beq` branch at 0x4e8384 targets 0x4e839c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x4e83f8 targets 0x4e8410, is taken when v1(?) < 0x4 (signed), and falls through when v1(?) >= 0x4 (signed).
  The `beq` branch at 0x4e8408 targets 0x4e82fc and is always taken.
  The `bne` branch at 0x4e8418 targets 0x4e8440, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x4e8430 targets 0x4e8518, is taken when a2(?) < 0x21 (signed), and falls through when a2(?) >= 0x21 (signed).
  The `beq` branch at 0x4e8438 targets 0x4e8474 and is always taken.
  The `beq` branch at 0x4e8444 targets 0x4e845c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x4e8460 targets 0x4e82e0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x4e8468 targets 0x4e8484, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x4e8494 targets 0x4e82c0, is taken when a0(?) < 0x20 (signed), and falls through when a0(?) >= 0x20 (signed).
  The `beq` branch at 0x4e84a4 targets 0x4e82e0 and is always taken.
  The `beq` branch at 0x4e84b0 targets 0x4e84c8, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x4e84cc targets 0x4e83a4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x4e84d4 targets 0x4e84f0, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x4e8500 targets 0x4e8384, is taken when a0(?) < 0x20 (signed), and falls through when a0(?) >= 0x20 (signed).
  The `beq` branch at 0x4e8510 targets 0x4e83a4 and is always taken.
  The `beq` branch at 0x4e8518 targets 0x4e82e0 and is always taken.
  The `beq` branch at 0x4e8520 targets 0x4e83a8 and is always taken.
  The `bne` branch at 0x4e8538 targets 0x4e86bc, is taken when a0(?) < 0x20 (signed), and falls through when a0(?) >= 0x20 (signed).
  The `bne` branch at 0x4e8550 targets 0x4e8560, is taken when a7(?) < 0x21 (signed), and falls through when a7(?) >= 0x21 (signed).
  The `beq` branch at 0x4e8558 targets 0x4e86f0 and is always taken.
  The `beq` branch at 0x4e85a4 targets 0x4e8610, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x4e85e4 targets 0x4e8688, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x4e85ec targets 0x4e8614 and is always taken.
  The `beq` branch at 0x4e8624 targets 0x4e81f4, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x4e8634 targets 0x4e81ec, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x4e8674 targets 0x4e8798, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x4e8680 targets 0x4e81ec and is always taken.
  The `bne` branch at 0x4e8694 targets 0x4e8728, is taken when a0(?) < 0x20 (signed), and falls through when a0(?) >= 0x20 (signed).
  The `bne` branch at 0x4e86ac targets 0x4e85f4, is taken when a6(?) < 0x21 (signed), and falls through when a6(?) >= 0x21 (signed).
  The `beq` branch at 0x4e86b4 targets 0x4e875c and is always taken.
  The `beq` branch at 0x4e86c0 targets 0x4e86d8, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x4e86dc targets 0x4e8564, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x4e86e4 targets 0x4e8700, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x4e8710 targets 0x4e886c, is taken when a0(?) < 0x20 (signed), and falls through when a0(?) >= 0x20 (signed).
  The `beq` branch at 0x4e8720 targets 0x4e8564 and is always taken.
  The `beq` branch at 0x4e8730 targets 0x4e8748, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x4e874c targets 0x4e85f4, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x4e8754 targets 0x4e8770, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x4e8780 targets 0x4e8894, is taken when a0(?) < 0x20 (signed), and falls through when a0(?) >= 0x20 (signed).
  The `beq` branch at 0x4e8790 targets 0x4e85f4 and is always taken.
  The `bne` branch at 0x4e87a0 targets 0x4e87c8, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bne` branch at 0x4e87b8 targets 0x4e88bc, is taken when a2(?) < 0x21 (signed), and falls through when a2(?) >= 0x21 (signed).
  The `beq` branch at 0x4e87c0 targets 0x4e87f4 and is always taken.
  The `beq` branch at 0x4e87c8 targets 0x4e87e0, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x4e87e4 targets 0x4e81d0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x4e87ec targets 0x4e8808, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x4e8818 targets 0x4e81b0, is taken when a0(?) < 0x20 (signed), and falls through when a0(?) >= 0x20 (signed).
  The `beq` branch at 0x4e8828 targets 0x4e81d0 and is always taken.
  The `beq` branch at 0x4e8844 targets 0x4e8864, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x4e8864 targets 0x4e82a0 and is always taken.
  The `beq` branch at 0x4e886c targets 0x4e8888, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x4e888c targets 0x4e8564 and is always taken.
  The `beq` branch at 0x4e8894 targets 0x4e88b0, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x4e88b4 targets 0x4e85f4 and is always taken.
  The `beq` branch at 0x4e88bc targets 0x4e81d4 and is always taken.
  The `beq` branch at 0x4e8900 targets 0x4e8ad8, is taken when a6(=[0x5aa8bc]) == a7(=0x2), and falls through when a6(=[0x5aa8bc]) != a7(=0x2).
  The `beq` branch at 0x4e8938 targets 0x4e89a0, is taken when a0(=[a1+5]:1) >= 0x10 (unsigned), and falls through when a0(=[a1+5]:1) < 0x10 (unsigned).
  The `beq` branch at 0x4e894c targets 0x4e7ef8 and is always taken.
  The `bne` branch at 0x4e8960 targets 0x4e8ac4, is taken when a2(=[0x5aa8c0]) != a0(=[a1+5]:1), and falls through when a2(=[0x5aa8c0]) == a0(=[a1+5]:1).
  The `bne` branch at 0x4e8970 targets 0x4e8ad0, is taken when a3(=[0x5aa8c4]) != a4(?), and falls through when a3(=[0x5aa8c4]) == a4(?).
  The `bne` branch at 0x4e8980 targets 0x4e7e9c, is taken when a5(=[0x5aa954]) != a6(?), and falls through when a5(=[0x5aa954]) == a6(?).
  The `beq` branch at 0x4e8990 targets 0x4e7eac, is taken when a7(=[0x5aa8c8]) == t0(?), and falls through when a7(=[0x5aa8c8]) != t0(?).
  The `beq` branch at 0x4e8998 targets 0x4e7ea0 and is always taken.
  The `beq` branch at 0x4e89c4 targets 0x4e8b10, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x4e89d0 targets 0x4e8b20, is taken when a1(=-0x1) == t2(?), and falls through when a1(=-0x1) != t2(?).
  The `beq` branch at 0x4e8a20 targets 0x4e8a60 and is always taken.
  The `bne` branch at 0x4e8a94 targets 0x4e8a28, is taken when a7(?) != t0(=0x5aa0a8), and falls through when a7(?) == t0(=0x5aa0a8).
  The `beq` branch at 0x4e8abc targets 0x4e7eb4 and is always taken.
  The `beq` branch at 0x4e8ac8 targets 0x4e7e9c and is always taken.
  The `beq` branch at 0x4e8ad0 targets 0x4e7e9c and is always taken.
  The `bne` branch at 0x4e8adc targets 0x4e8b28, is taken when a1(=[0x5aa8c0]) != a0(=[a1+5]:1), and falls through when a1(=[0x5aa8c0]) == a0(=[a1+5]:1).
  The `bne` branch at 0x4e8aec targets 0x4e8910, is taken when a2(=[0x5aa8c4]) != a3(?), and falls through when a2(=[0x5aa8c4]) == a3(?).
  The `bne` branch at 0x4e8afc targets 0x4e8910, is taken when a4(=[0x5aa8c8]) != a5(?), and falls through when a4(=[0x5aa8c8]) == a5(?).
  The `beq` branch at 0x4e8b08 targets 0x4e7eb4 and is always taken.
  The `beq` branch at 0x4e8b18 targets 0x4e89f8 and is always taken.
  The `beq` branch at 0x4e8b20 targets 0x4e89f8 and is always taken.
  The `beq` branch at 0x4e8b28 targets 0x4e8910 and is always taken.
  The `beq` branch at 0x4e8b34 targets 0x4e89a8 and is always taken.
  The `beq` branch at 0x4e8b40 targets 0x4e89a8 and is always taken.
  The `beq` branch at 0x4e8b60 targets 0x4e89a8 and is always taken.
  The `beq` branch at 0x4e8b80 targets 0x4e89a8 and is always taken.
  The `beq` branch at 0x4e8ba0 targets 0x4e89a8 and is always taken.
  The `beq` branch at 0x4e8bc0 targets 0x4e89a8 and is always taken.
  The `beq` branch at 0x4e8bcc targets 0x4e89a8 and is always taken.
  The `beq` branch at 0x4e8bec targets 0x4e89a8 and is always taken.
  The `beq` branch at 0x4e8c0c targets 0x4e89a8 and is always taken.
  The `beq` branch at 0x4e8c28 targets 0x4e89a8 and is always taken.
  The `beq` branch at 0x4e8c48 targets 0x4e89a8 and is always taken.
  The `beq` branch at 0x4e8c54 targets 0x4e89a8 and is always taken.
  The `beq` branch at 0x4e8c74 targets 0x4e89a8 and is always taken.
  The `beq` branch at 0x4e8c94 targets 0x4e89a8 and is always taken.
  The `beq` branch at 0x4e8cb4 targets 0x4e89a8 and is always taken.
  The `beq` branch at 0x4e8cd4 targets 0x4e89a8 and is always taken.
  The `beq` branch at 0x4e8cf0 targets 0x4e831c and is always taken.
  The return at 0x4e88f0 has v0 = one of ?, ((a2 << 0x3) + a3).
  The instructions from 0x4e8cdc to 0x4e8cdc are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x4e8944 uses the jump table at 0x5a1250 with targets 0x4e8b30, 0x4e8cbc, 0x4e8c9c, 0x4e8c7c, 0x4e8c5c, 0x4e8c50, 0x4e8c30, 0x4e8c14, 0x4e8bf4, 0x4e8bd4, 0x4e8bc8, 0x4e8ba8, 0x4e8b88, 0x4e8b68, 0x4e8b48, 0x4e8b3c.
  The indirect jump at 0x4e8944 uses the jump table at 0x5a1250 with targets 0x4e8b30, 0x4e8cbc, 0x4e8c9c, 0x4e8c7c, 0x4e8c5c, 0x4e8c50, 0x4e8c30, 0x4e8c14, 0x4e8bf4, 0x4e8bd4, 0x4e8bc8, 0x4e8ba8, 0x4e8b88, 0x4e8b68, 0x4e8b48, 0x4e8b3c.

- `nfbLineSD` in `usr/lib/X11/dyDDX/crm.so` at 0x551250 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/crm.so`.
  Range: 0x551250-0x5554a8 (16984 bytes).
  It occupies 16984 bytes.
  The `lw` at 0x55129c loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x5512a0 loads 4 bytes from [a0+16] +0x1b4.
  The `lw` at 0x5512b4 loads 4 bytes from ([[a0+16]+436] + ([0x5aa888] << 0x2)) +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x84, including `lw` at 0x5512bc, `lw` at 0x554c78.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x4c, including `lw` at 0x5512d0, `lw` at 0x553e00, `lw` at 0x55405c.
  2 such `lw` accesses load 4 bytes from ([a0+132] + ([0x5aa0fc] << 0x2)) +0x0, including `lw` at 0x5512e0, `lw` at 0x554c84.
  3 such `lw` accesses load 4 bytes from ([a1+76] + ([0x5aa22c] << 0x2)) +0x0, including `lw` at 0x5512e8, `lw` at 0x553e10, `lw` at 0x554068.
  2 such `lw` accesses load 4 bytes from [([a0+132] + ([0x5aa0fc] << 0x2))] +0x0, including `lw` at 0x5512ec, `lw` at 0x554c88.
  The `lw` at 0x5512f0 loads 4 bytes from [([a1+76] + ([0x5aa22c] << 0x2))] +0x44.
  The `lw` at 0x5512f8 loads 4 bytes from [([a1+76] + ([0x5aa22c] << 0x2))] +0x4c.
  3 such `lw` accesses load 4 bytes from [([a1+76] + ([0x5aa22c] << 0x2))] +0x40, including `lw` at 0x5512fc, `lw` at 0x553e1c, `lw` at 0x554074.
  The `lbu` at 0x551300 loads 1 byte from [([a1+76] + ([0x5aa22c] << 0x2))] +0x48.
  The `lw` at 0x551304 loads 4 bytes from [([a1+76] + ([0x5aa22c] << 0x2))] +0x24.
  The `lw` at 0x551308 loads 4 bytes from [([a1+76] + ([0x5aa22c] << 0x2))] +0x8.
  The `lw` at 0x551310 loads 4 bytes from [[([a1+76] + ([0x5aa22c] << 0x2))]+8] +0x8.
  The `lw` at 0x551314 loads 4 bytes from [[([a0+132] + ([0x5aa0fc] << 0x2))]] +0x4.
  The `lw` at 0x551318 loads 4 bytes from [[([a1+76] + ([0x5aa22c] << 0x2))]+36] +0x8.
  The `lw` at 0x551324 loads 4 bytes from [[[([a1+76] + ([0x5aa22c] << 0x2))]+8]+8] +0x4.
  The `lh` at 0x551330 loads 2 bytes from a0 (arg0 at entry) +0x8.
  The `lh` at 0x551338 loads 2 bytes from a0 (arg0 at entry) +0xa.
  2 such `lh` accesses load 2 bytes from a4 (arg4 at entry) +0x2, including `lh` at 0x551340, `lh` at 0x553f9c.
  The `lhu` at 0x551344 loads 2 bytes from a1 (arg1 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x10, including `lw` at 0x551348, `lw` at 0x553f60.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc, including `lw` at 0x55134c, `lw` at 0x552810, `lw` at 0x552acc.
  The `lbu` at 0x551354 loads 1 byte from [a1+12] +0x0.
  2 such `lh` accesses load 2 bytes from a4 (arg4 at entry) +0x0, including `lh` at 0x551358, `lh` at 0x553f80.
  13 such `lhu` accesses load 2 bytes from a1 (arg1 at entry) +0xa, including `lhu` at 0x551370, `lhu` at 0x552228, `lhu` at 0x552278.
  542 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x5513cc, `lbu` at 0x551404, `lbu` at 0x55140c.
  40 such `lh` accesses load 2 bytes from ?, including `lh` at 0x551a00, `lh` at 0x551a10, `lh` at 0x551a80.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x553a8c, `lw` at 0x553a90, `lw` at 0x553ee8.
  8 such `sw` accesses store 4 bytes to ?, including `sw` at 0x553a94, `sw` at 0x553a98, `sw` at 0x553ad0.
  2 such `lw` accesses load 4 bytes from [([a1+76] + ([0x5aa22c] << 0x2))] +0x28, including `lw` at 0x553e18, `lw` at 0x554070.
  The `lw` at 0x554c90 loads 4 bytes from [[([a0+132] + ([0x5aa0fc] << 0x2))]] +0x18.
  The `jalr` at 0x5539f4 calls (unknown callee) with a0=sp-1608, a1=0x1, a2=?, a3=?, a5=a0 at entry (arg0).
  The `jalr` at 0x553a4c calls (unknown callee) with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x553ab4 calls (unknown callee) with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x553b00 calls (unknown callee) with a0=sp-1608, a1=0x1, a2=?, a3=?, a5=a0 at entry (arg0).
  The `jalr` at 0x553b30 calls (unknown callee) with a0=sp-1600, a1=0x1, a2=?, a3=?, a5=a0 at entry (arg0).
  The `jalr` at 0x553b54 calls (unknown callee) with a0=sp-1600, a1=0x1, a2=?, a3=?, a5=a0 at entry (arg0).
  The `jalr` at 0x553e80 calls (unknown callee) with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x553f0c calls (unknown callee) with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x554cb0 calls (unknown callee) with a0=sp-1592, a1=0x1, a2=?, a3=?, a5=0x0, a6=0x0, a7=a0 at entry (arg0).
  The `bltz` branch at 0x551294 targets 0x554d74, is taken when a6(=[0x5aa888]) < 0 (signed), and falls through when a6(=[0x5aa888]) >= 0 (signed).
  The `beq` branch at 0x55131c targets 0x554d84, is taken when a3(=[[[([a1+76] + ([0x5aa22c] << 0x2))]+8]+8]) == 0, and falls through when a3(=[[[([a1+76] + ([0x5aa22c] << 0x2))]+8]+8]) != 0.
  The `beq` branch at 0x55137c targets 0x55139c, is taken when a4(=[a1+8]:2) >= a5(=[[a1+12]]:1) (signed), and falls through when a4(=[a1+8]:2) < a5(=[[a1+12]]:1) (signed).
  The `beq` branch at 0x55138c targets 0x553fc8, is taken when a6(=0x1) == t2(=a3), and falls through when a6(=0x1) != t2(=a3).
  The `beq` branch at 0x551394 targets 0x55169c and is always taken.
  The `blez` branch at 0x5513a8 targets 0x55503c, is taken when t0(=[a1+10]:2) <= 0 (signed), and falls through when t0(=[a1+10]:2) > 0 (signed).
  The `beq` branch at 0x5513c4 targets 0x5513e4, is taken when (t0(=[a1+10]:2) & 0x7) == 0, and falls through when (t0(=[a1+10]:2) & 0x7) != 0.
  The `bne` branch at 0x5513dc targets 0x5513cc, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x5513e8 targets 0x5515f4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x5513f0 targets 0x55507c, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x551494 targets 0x554df8, is taken when t0(?) == a4(=([a1+10]:2 + [a1+12])-16), and falls through when t0(?) != a4(=([a1+10]:2 + [a1+12])-16).
  The `beq` branch at 0x5514dc targets 0x554d90, is taken when t1(?) == a4(=([a1+10]:2 + [a1+12])-16), and falls through when t1(?) != a4(=([a1+10]:2 + [a1+12])-16).
  The `bne` branch at 0x551528 targets 0x551454, is taken when a5(?) != a4(=([a1+10]:2 + [a1+12])-16), and falls through when a5(?) == a4(=([a1+10]:2 + [a1+12])-16).
  The `bne` branch at 0x5515f8 targets 0x551630, is taken when s4(?) < a4(?) (signed), and falls through when s4(?) >= a4(?) (signed).
  The `bne` branch at 0x55163c targets 0x551680, is taken when s4(?) < a5(?) (signed), and falls through when s4(?) >= a5(?) (signed).
  The `beq` branch at 0x551674 targets 0x551650, is taken when s4(?) >= a5(?) (signed), and falls through when s4(?) < a5(?) (signed).
  The `beq` branch at 0x551694 targets 0x553fc8, is taken when t9(=0x1) == t2(=a3), and falls through when t9(=0x1) != t2(=a3).
  The `beq` branch at 0x551704 targets 0x5519e8 and is always taken.
  The `blez` branch at 0x551730 targets 0x5544b8, is taken when s8(=[a1+10]:2) <= 0 (signed), and falls through when s8(=[a1+10]:2) > 0 (signed).
  The `beq` branch at 0x55173c targets 0x55175c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x551754 targets 0x551744, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x551760 targets 0x55194c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x551768 targets 0x5552e0, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x551810 targets 0x553854, is taken when t0(?) == a4(?), and falls through when t0(?) != a4(?).
  The `beq` branch at 0x551858 targets 0x55389c, is taken when t1(?) == a4(?), and falls through when t1(?) != a4(?).
  The `bne` branch at 0x5518a4 targets 0x5517d0, is taken when a5(?) != a4(?), and falls through when a5(?) == a4(?).
  The `bne` branch at 0x551950 targets 0x55197c, is taken when s3(?) < a4(?) (signed), and falls through when s3(?) >= a4(?) (signed).
  The `bne` branch at 0x551980 targets 0x5519bc, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x5519b4 targets 0x551990, is taken when s3(?) >= a6(?) (signed), and falls through when s3(?) < a6(?) (signed).
  The `beq` branch at 0x5519e0 targets 0x553f5c, is taken when ra(?) == at(?), and falls through when ra(?) != at(?).
  The `bne` branch at 0x551a28 targets 0x551b10, is taken when s2(?) != s1(?), and falls through when s2(?) == s1(?).
  The `beq` branch at 0x551a30 targets 0x5519cc, is taken when s8(?) == s6(?), and falls through when s8(?) != s6(?).
  The `beq` branch at 0x551a70 targets 0x5524ec, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x551a8c targets 0x553028, is taken when t8(?) < t9(?) (signed), and falls through when t8(?) >= t9(?) (signed).
  The `beq` branch at 0x551aa4 targets 0x5524ec, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x551ab4 targets 0x551aa0, is taken when s8(?) >= ra(?) (signed), and falls through when s8(?) < ra(?) (signed).
  The `beq` branch at 0x551abc targets 0x5524ec, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x551ae0 targets 0x5524ec, is taken when a7(?) < at(?) (signed), and falls through when a7(?) >= at(?) (signed).
  The `beq` branch at 0x551afc targets 0x55298c and is always taken.
  The `bne` branch at 0x551b10 targets 0x551bf4, is taken when s8(?) != s6(?), and falls through when s8(?) == s6(?).
  The `beq` branch at 0x551b44 targets 0x552210, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x551b58 targets 0x552ff8, is taken when s8(?) < v1(?) (signed), and falls through when s8(?) >= v1(?) (signed).
  The `beq` branch at 0x551b74 targets 0x552210, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x551b84 targets 0x551b70, is taken when s8(?) >= a0(?) (signed), and falls through when s8(?) < a0(?) (signed).
  The `beq` branch at 0x551b8c targets 0x552210, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x551ba4 targets 0x552210, is taken when s8(?) < a1(?) (signed), and falls through when s8(?) >= a1(?) (signed).
  The `beq` branch at 0x551bec targets 0x5554a0 and is always taken.
  The `beq` branch at 0x551ca8 targets 0x55225c, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x551cf4 targets 0x551d38 and is always taken.
  The `beq` branch at 0x551d08 targets 0x551e04, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x551d18 targets 0x5527ec, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x551d20 targets 0x551e1c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x551d30 targets 0x55225c, is taken when s0(?) == s7(?), and falls through when s0(?) != s7(?).
  The `beq` branch at 0x551d54 targets 0x551da0, is taken when s2(?) >= t2(?) (signed), and falls through when s2(?) < t2(?) (signed).
  The `bne` branch at 0x551d5c targets 0x551db4, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x551d74 targets 0x551de4, is taken when s8(?) >= ra(?) (signed), and falls through when s8(?) < ra(?) (signed).
  The `beq` branch at 0x551d7c targets 0x5520c4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x551d84 targets 0x55210c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x551d8c targets 0x551d28 and is always taken.
  The `beq` branch at 0x551dac targets 0x551dd4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x551db8 targets 0x551d00, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x551dc4 targets 0x551dec, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x551dcc targets 0x551d10 and is always taken.
  The `bne` branch at 0x551ddc targets 0x551db8, is taken when s8(?) < a2(?) (signed), and falls through when s8(?) >= a2(?) (signed).
  The `beq` branch at 0x551de4 targets 0x551db8 and is always taken.
  The `bne` branch at 0x551df4 targets 0x551f5c, is taken when s6(?) < ra(?) (signed), and falls through when s6(?) >= ra(?) (signed).
  The `beq` branch at 0x551dfc targets 0x551e14 and is always taken.
  The `bne` branch at 0x551e0c targets 0x551d18, is taken when s6(?) < a4(?) (signed), and falls through when s6(?) >= a4(?) (signed).
  The `beq` branch at 0x551e14 targets 0x551d14 and is always taken.
  The `beq` branch at 0x551e88 targets 0x551e98, is taken when (t1(?) & t8(?)) == 0, and falls through when (t1(?) & t8(?)) != 0.
  The `beq` branch at 0x551e90 targets 0x551d2c and is always taken.
  The `beq` branch at 0x551e98 targets 0x552a40, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x551efc targets 0x55211c, is taken when (t1(?) & 0x8) == 0, and falls through when (t1(?) & 0x8) != 0.
  The `bne` branch at 0x551f30 targets 0x551f6c, is taken when at(=0x7fff) < v0(?) (unsigned), and falls through when at(=0x7fff) >= v0(?) (unsigned).
  The `beq` branch at 0x551f54 targets 0x551f94 and is always taken.
  The `beq` branch at 0x551f5c targets 0x5521d4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x551f64 targets 0x551d28 and is always taken.
  The `beq` branch at 0x551fc0 targets 0x55218c, is taken when (v1(?) & 0x1) == 0, and falls through when (v1(?) & 0x1) != 0.
  The `beq` branch at 0x552000 targets 0x5521a4, is taken when (v0(?) & 0x2) == 0, and falls through when (v0(?) & 0x2) != 0.
  The `beq` branch at 0x552030 targets 0x5521bc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x5520bc targets 0x551e74 and is always taken.
  The `beq` branch at 0x5520e0 targets 0x5520f0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x5520e8 targets 0x5520f8 and is always taken.
  The `bne` branch at 0x5520fc targets 0x551d28, is taken when (s4(?) & 0x8) != 0, and falls through when (s4(?) & 0x8) == 0.
  The `beq` branch at 0x552104 targets 0x551e2c and is always taken.
  The `bne` branch at 0x55210c targets 0x551f64, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x552114 targets 0x551d2c and is always taken.
  The `beq` branch at 0x55212c targets 0x5537bc, is taken when (t1(?) & 0x2) == 0, and falls through when (t1(?) & 0x2) != 0.
  The `bne` branch at 0x55215c targets 0x5521e0, is taken when a0(=0x7fff) < at(?) (unsigned), and falls through when a0(=0x7fff) >= at(?) (unsigned).
  The `beq` branch at 0x552184 targets 0x552208 and is always taken.
  The `beq` branch at 0x55219c targets 0x551fdc and is always taken.
  The `beq` branch at 0x5521b4 targets 0x552018 and is always taken.
  The `beq` branch at 0x5521cc targets 0x552050 and is always taken.
  The `beq` branch at 0x5521d8 targets 0x551e28 and is always taken.
  The `beq` branch at 0x552208 targets 0x551f98 and is always taken.
  The `beq` branch at 0x55224c targets 0x551710, is taken when t1(?) >= s3(?) (signed), and falls through when t1(?) < s3(?) (signed).
  The `beq` branch at 0x552254 targets 0x5519c0 and is always taken.
  The `beq` branch at 0x552260 targets 0x5519c8, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x55228c targets 0x553950, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x5522a0 targets 0x5522b0, is taken when t9(?) >= ra(?) (signed), and falls through when t9(?) < ra(?) (signed).
  The `beq` branch at 0x5522a8 targets 0x5524e4 and is always taken.
  The `blez` branch at 0x5522dc targets 0x55453c, is taken when s3(=[a1+10]:2) <= 0 (signed), and falls through when s3(=[a1+10]:2) > 0 (signed).
  The `beq` branch at 0x5522e8 targets 0x552304, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x5522fc targets 0x5522f0, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x552304 targets 0x55246c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x55230c targets 0x55544c, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x5523a0 targets 0x553824, is taken when a7(?) == t0(?), and falls through when a7(?) != t0(?).
  The `bne` branch at 0x5523e8 targets 0x552360, is taken when t8(?) != t0(?), and falls through when t8(?) == t0(?).
  The `bne` branch at 0x55246c targets 0x552498, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0x5524a8 targets 0x5524dc, is taken when s2(?) < a6(?) (signed), and falls through when s2(?) >= a6(?) (signed).
  The `beq` branch at 0x5524d4 targets 0x5524b0, is taken when s2(?) >= a6(?) (signed), and falls through when s2(?) < a6(?) (signed).
  The `beq` branch at 0x5524e4 targets 0x5519c8 and is always taken.
  The `beq` branch at 0x552528 targets 0x552538, is taken when t2(?) >= s3(?) (signed), and falls through when t2(?) < s3(?) (signed).
  The `beq` branch at 0x552530 targets 0x5527e0 and is always taken.
  The `blez` branch at 0x552550 targets 0x5544c8, is taken when s7(=[a1+10]:2) <= 0 (signed), and falls through when s7(=[a1+10]:2) > 0 (signed).
  The `beq` branch at 0x552558 targets 0x552578, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x552570 targets 0x552560, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x55257c targets 0x552760, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x552584 targets 0x5551d8, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x552624 targets 0x553914, is taken when t0(?) == a4(?), and falls through when t0(?) != a4(?).
  The `beq` branch at 0x55266c targets 0x5538e0, is taken when t1(?) == a4(?), and falls through when t1(?) != a4(?).
  The `bne` branch at 0x5526b8 targets 0x5525e4, is taken when a5(?) != a4(?), and falls through when a5(?) == a4(?).
  The `bne` branch at 0x552764 targets 0x552790, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x5527a0 targets 0x5527dc, is taken when s3(?) < a6(?) (signed), and falls through when s3(?) >= a6(?) (signed).
  The `beq` branch at 0x5527d4 targets 0x5527b0, is taken when s3(?) >= a6(?) (signed), and falls through when s3(?) < a6(?) (signed).
  The `beq` branch at 0x5527e4 targets 0x5519c8 and is always taken.
  The `bne` branch at 0x55281c targets 0x553df8, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x552824 targets 0x552850 and is always taken.
  The `beq` branch at 0x55282c targets 0x5528f4, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `blez` branch at 0x552848 targets 0x552260, is taken when s3(?) <= 0 (signed), and falls through when s3(?) > 0 (signed).
  The `beq` branch at 0x552864 targets 0x553a0c, is taken when (a1(?) & 0x1) == 0, and falls through when (a1(?) & 0x1) != 0.
  The `bne` branch at 0x55286c targets 0x553a60, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x55288c targets 0x552920, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `blez` branch at 0x552898 targets 0x552260, is taken when s3(?) <= 0 (signed), and falls through when s3(?) > 0 (signed).
  The `bltz` branch at 0x5528bc targets 0x55282c, is taken when a6(?) < 0 (signed), and falls through when a6(?) >= 0 (signed).
  The `bne` branch at 0x5528ec targets 0x552830, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x552918 targets 0x552848 and is always taken.
  The `beq` branch at 0x552950 targets 0x552894 and is always taken.
  The `beq` branch at 0x552974 targets 0x5524ec, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x552984 targets 0x5524f0, is taken when t3(?) < v0(?) (signed), and falls through when t3(?) >= v0(?) (signed).
  The `bne` branch at 0x5529a0 targets 0x552970, is taken when s2(?) < v1(?) (signed), and falls through when s2(?) >= v1(?) (signed).
  The `beq` branch at 0x5529a8 targets 0x552970, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x5529dc targets 0x552970, is taken when a1(?) == t9(?), and falls through when a1(?) != t9(?).
  The `beq` branch at 0x5529ec targets 0x553ffc, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x5529f8 targets 0x552f50, is taken when a3(?) == t9(?), and falls through when a3(?) != t9(?).
  The `beq` branch at 0x552a30 targets 0x552c4c, is taken when t8(?) >= t1(?) (signed), and falls through when t8(?) < t1(?) (signed).
  The `beq` branch at 0x552a38 targets 0x552f48 and is always taken.
  The `beq` branch at 0x552a88 targets 0x553f44, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x552ab0 targets 0x553404, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x552ad4 targets 0x55404c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x552b10 targets 0x5540ec, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x552b5c targets 0x553058, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x552b64 targets 0x5532f4 and is always taken.
  The `beq` branch at 0x552b80 targets 0x552210, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `bne` branch at 0x552b90 targets 0x552210, is taken when a3(?) != a5(?), and falls through when a3(?) == a5(?).
  The `beq` branch at 0x552bac targets 0x552b7c, is taken when t2(?) >= a4(?) (signed), and falls through when t2(?) < a4(?) (signed).
  The `beq` branch at 0x552bb4 targets 0x552210, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x552be4 targets 0x552b7c, is taken when t3(?) == t8(?), and falls through when t3(?) != t8(?).
  The `beq` branch at 0x552c00 targets 0x55445c, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x552c08 targets 0x553718, is taken when s7(?) == t8(?), and falls through when s7(?) != t8(?).
  The `beq` branch at 0x552c3c targets 0x553440, is taken when a1(?) >= s2(?) (signed), and falls through when a1(?) < s2(?) (signed).
  The `beq` branch at 0x552c44 targets 0x553710 and is always taken.
  The `blez` branch at 0x552c6c targets 0x55501c, is taken when t3(=[a1+10]:2) <= 0 (signed), and falls through when t3(=[a1+10]:2) > 0 (signed).
  The `beq` branch at 0x552c78 targets 0x552c98, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `bne` branch at 0x552c90 targets 0x552c80, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x552c98 targets 0x552ecc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x552ca0 targets 0x555100, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x552d54 targets 0x554b94, is taken when t0(?) == a4(?), and falls through when t0(?) != a4(?).
  The `beq` branch at 0x552d9c targets 0x554b1c, is taken when t1(?) == a4(?), and falls through when t1(?) != a4(?).
  The `bne` branch at 0x552de8 targets 0x552d14, is taken when a5(?) != a4(?), and falls through when a5(?) == a4(?).
  The `bne` branch at 0x552ecc targets 0x552ef4, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0x552f04 targets 0x552f3c, is taken when t0(?) < ra(?) (signed), and falls through when t0(?) >= ra(?) (signed).
  The `beq` branch at 0x552f34 targets 0x552f10, is taken when t0(?) >= t1(?) (signed), and falls through when t0(?) < t1(?) (signed).
  The `beq` branch at 0x552f50 targets 0x552f68 and is always taken.
  The `blez` branch at 0x552f60 targets 0x552958, is taken when s7(?) <= 0 (signed), and falls through when s7(?) > 0 (signed).
  The `beq` branch at 0x552f78 targets 0x552fe0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x552f90 targets 0x5539d0, is taken when (a3(?) & 0x1) == 0, and falls through when (a3(?) & 0x1) != 0.
  The `bne` branch at 0x552f98 targets 0x553adc, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bne` branch at 0x552fa4 targets 0x552f60, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x552fd8 targets 0x552f60 and is always taken.
  The `beq` branch at 0x552ff0 targets 0x552f8c and is always taken.
  The `bne` branch at 0x553008 targets 0x552210, is taken when s8(?) < t9(?) (signed), and falls through when s8(?) >= t9(?) (signed).
  The `beq` branch at 0x553020 targets 0x551bc4 and is always taken.
  The `bne` branch at 0x553048 targets 0x5524ec, is taken when a7(?) < at(?) (signed), and falls through when a7(?) >= at(?) (signed).
  The `beq` branch at 0x553050 targets 0x551ae8 and is always taken.
  The `blez` branch at 0x55308c targets 0x554e64, is taken when ra(=[a1+10]:2) <= 0 (signed), and falls through when ra(=[a1+10]:2) > 0 (signed).
  The `beq` branch at 0x553094 targets 0x5530b0, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x5530a8 targets 0x55309c, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x5530b8 targets 0x553280, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x5530c0 targets 0x555394, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x553160 targets 0x554084, is taken when a7(?) == t0(?), and falls through when a7(?) != t0(?).
  The `bne` branch at 0x5531a8 targets 0x553120, is taken when t8(?) != t0(?), and falls through when t8(?) == t0(?).
  The `bne` branch at 0x553284 targets 0x5532ac, is taken when a4(?) < t0(?) (signed), and falls through when a4(?) >= t0(?) (signed).
  The `bne` branch at 0x5532b0 targets 0x5532ec, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x5532e4 targets 0x5532c0, is taken when a4(?) >= t0(?) (signed), and falls through when a4(?) < t0(?) (signed).
  The `bne` branch at 0x553308 targets 0x554054, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x553310 targets 0x553340 and is always taken.
  The `beq` branch at 0x553318 targets 0x5533d8, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `blez` branch at 0x553338 targets 0x553404, is taken when a6(?) <= 0 (signed), and falls through when a6(?) > 0 (signed).
  The `beq` branch at 0x553350 targets 0x553e2c, is taken when (a1(?) & 0x1) == 0, and falls through when (a1(?) & 0x1) != 0.
  The `bne` branch at 0x553358 targets 0x553ea4, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x553370 targets 0x55340c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `blez` branch at 0x553378 targets 0x553404, is taken when a6(?) <= 0 (signed), and falls through when a6(?) > 0 (signed).
  The `bltz` branch at 0x5533a0 targets 0x553318, is taken when t1(?) < 0 (signed), and falls through when t1(?) >= 0 (signed).
  The `bne` branch at 0x5533d0 targets 0x553320, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x5533fc targets 0x553338 and is always taken.
  The `beq` branch at 0x553404 targets 0x551d2c and is always taken.
  The `beq` branch at 0x553438 targets 0x553378 and is always taken.
  The `blez` branch at 0x55345c targets 0x55502c, is taken when t0(=[a1+10]:2) <= 0 (signed), and falls through when t0(=[a1+10]:2) > 0 (signed).
  The `beq` branch at 0x553468 targets 0x553488, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x553480 targets 0x553470, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x553488 targets 0x553698, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `bne` branch at 0x553490 targets 0x555228, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x553538 targets 0x554d18, is taken when t0(?) == a4(?), and falls through when t0(?) != a4(?).
  The `beq` branch at 0x553580 targets 0x554cc0, is taken when t1(?) == a4(?), and falls through when t1(?) != a4(?).
  The `bne` branch at 0x5535cc targets 0x5534f8, is taken when a5(?) != a4(?), and falls through when a5(?) == a4(?).
  The `bne` branch at 0x553698 targets 0x5536c0, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x5536d0 targets 0x55370c, is taken when s8(?) < t2(?) (signed), and falls through when s8(?) >= t2(?) (signed).
  The `beq` branch at 0x553704 targets 0x5536e0, is taken when s8(?) >= t1(?) (signed), and falls through when s8(?) < t1(?) (signed).
  The `beq` branch at 0x553718 targets 0x55372c and is always taken.
  The `blez` branch at 0x553720 targets 0x552b6c, is taken when s3(?) <= 0 (signed), and falls through when s3(?) > 0 (signed).
  The `beq` branch at 0x55373c targets 0x5537a4, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x553754 targets 0x553b18, is taken when (a1(?) & 0x1) == 0, and falls through when (a1(?) & 0x1) != 0.
  The `bne` branch at 0x55375c targets 0x553b40, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x553768 targets 0x553720, is taken when s2(?) != 0, and falls through when s2(?) == 0.
  The `beq` branch at 0x55379c targets 0x553720 and is always taken.
  The `beq` branch at 0x5537b4 targets 0x553750 and is always taken.
  The `beq` branch at 0x5537d0 targets 0x5544d8, is taken when (t1(?) & 0x4) == 0, and falls through when (t1(?) & 0x4) != 0.
  The `bne` branch at 0x5537f8 targets 0x553990, is taken when a0(=0x7fff) < at(?) (unsigned), and falls through when a0(=0x7fff) >= at(?) (unsigned).
  The `beq` branch at 0x55381c targets 0x5539c8 and is always taken.
  The `beq` branch at 0x55384c targets 0x552414 and is always taken.
  The `beq` branch at 0x553894 targets 0x5518fc and is always taken.
  The `beq` branch at 0x5538d8 targets 0x5518fc and is always taken.
  The `beq` branch at 0x55390c targets 0x552710 and is always taken.
  The `beq` branch at 0x553948 targets 0x552710 and is always taken.
  The `beq` branch at 0x553980 targets 0x553b64, is taken when a1(?) >= a2(?) (signed), and falls through when a1(?) < a2(?) (signed).
  The `beq` branch at 0x553988 targets 0x5524e4 and is always taken.
  The `beq` branch at 0x5539c8 targets 0x551f98 and is always taken.
  The `beq` branch at 0x553a04 targets 0x552fa0 and is always taken.
  The `beq` branch at 0x553a58 targets 0x552870 and is always taken.
  The `beq` branch at 0x553ad4 targets 0x552870 and is always taken.
  The `beq` branch at 0x553b10 targets 0x552fa0 and is always taken.
  The `beq` branch at 0x553b38 targets 0x553768 and is always taken.
  The `beq` branch at 0x553b5c targets 0x553768 and is always taken.
  The `blez` branch at 0x553b70 targets 0x554fbc, is taken when s3(=[a1+10]:2) <= 0 (signed), and falls through when s3(=[a1+10]:2) > 0 (signed).
  The `beq` branch at 0x553b78 targets 0x553b98, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x553b90 targets 0x553b80, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x553b9c targets 0x553d6c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x553ba4 targets 0x5553fc, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x553c44 targets 0x554834, is taken when t0(?) == a4(?), and falls through when t0(?) != a4(?).
  The `beq` branch at 0x553c8c targets 0x554870, is taken when t1(?) == a4(?), and falls through when t1(?) != a4(?).
  The `bne` branch at 0x553cd8 targets 0x553c04, is taken when a5(?) != a4(?), and falls through when a5(?) == a4(?).
  The `bne` branch at 0x553d70 targets 0x553d9c, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x553dac targets 0x553dec, is taken when s8(?) < a6(?) (signed), and falls through when s8(?) >= a6(?) (signed).
  The `beq` branch at 0x553de4 targets 0x553dc0, is taken when s8(?) >= a6(?) (signed), and falls through when s8(?) < a6(?) (signed).
  The `beq` branch at 0x553df0 targets 0x5524e0 and is always taken.
  The `beq` branch at 0x553e24 targets 0x552824 and is always taken.
  The `beq` branch at 0x553e9c targets 0x55335c and is always taken.
  The `beq` branch at 0x553f3c targets 0x55335c and is always taken.
  The `beq` branch at 0x553f54 targets 0x552a98 and is always taken.
  The `beq` branch at 0x553f6c targets 0x553fc8, is taken when (a2(?) & 0x3) == 0, and falls through when (a2(?) & 0x3) != 0.
  The `bne` branch at 0x553f8c targets 0x553fb8, is taken when a3(?) != a4(=[a4]:2), and falls through when a3(?) == a4(=[a4]:2).
  The `bne` branch at 0x553fa4 targets 0x553fb4, is taken when a4(?) != a5(=[a4+2]:2), and falls through when a4(?) == a5(=[a4+2]:2).
  The `bne` branch at 0x553fb0 targets 0x553fc8, is taken when a5(?) != a6(=0x1), and falls through when a5(?) == a6(=0x1).
  The `beq` branch at 0x553fbc targets 0x554c08, is taken when (s2(?) & 0x1) == 0, and falls through when (s2(?) & 0x1) != 0.
  The `bne` branch at 0x553fc4 targets 0x554c08, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x553ffc targets 0x552f50, is taken when s8(?) == a1(?), and falls through when s8(?) != a1(?).
  The `beq` branch at 0x55403c targets 0x554590, is taken when t3(?) >= t1(?) (signed), and falls through when t3(?) < t1(?) (signed).
  The `beq` branch at 0x554044 targets 0x554828 and is always taken.
  The `beq` branch at 0x55404c targets 0x5532f8 and is always taken.
  The `beq` branch at 0x55407c targets 0x553310 and is always taken.
  The `beq` branch at 0x5540e4 targets 0x553214 and is always taken.
  The `bne` branch at 0x55413c targets 0x554454, is taken when a4(?) < at(?) (signed), and falls through when a4(?) >= at(?) (signed).
  The `blez` branch at 0x55416c targets 0x55504c, is taken when ra(=[a1+10]:2) <= 0 (signed), and falls through when ra(=[a1+10]:2) > 0 (signed).
  The `beq` branch at 0x554174 targets 0x554194, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x55418c targets 0x55417c, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x554198 targets 0x5543c4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x5541a0 targets 0x555334, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x554254 targets 0x554e74, is taken when t0(?) == a4(?), and falls through when t0(?) != a4(?).
  The `beq` branch at 0x55429c targets 0x554eec, is taken when t1(?) == a4(?), and falls through when t1(?) != a4(?).
  The `bne` branch at 0x5542e8 targets 0x554214, is taken when a5(?) != a4(?), and falls through when a5(?) == a4(?).
  The `bne` branch at 0x5543c8 targets 0x5543f4, is taken when t1(?) < t0(?) (signed), and falls through when t1(?) >= t0(?) (signed).
  The `bne` branch at 0x55440c targets 0x55444c, is taken when t1(?) < a3(?) (signed), and falls through when t1(?) >= a3(?) (signed).
  The `beq` branch at 0x554444 targets 0x554420, is taken when t1(?) >= t0(?) (signed), and falls through when t1(?) < t0(?) (signed).
  The `beq` branch at 0x554454 targets 0x5532f8 and is always taken.
  The `beq` branch at 0x55446c targets 0x553718, is taken when t9(?) == t3(?), and falls through when t9(?) != t3(?).
  The `beq` branch at 0x5544a8 targets 0x5548ac, is taken when a4(?) >= s2(?) (signed), and falls through when a4(?) < s2(?) (signed).
  The `beq` branch at 0x5544b0 targets 0x554b10 and is always taken.
  The `bgez` branch at 0x5544b8 targets 0x551958, is taken when s3(?) >= 0 (signed), and falls through when s3(?) < 0 (signed).
  The `beq` branch at 0x5544c0 targets 0x551980 and is always taken.
  The `bgez` branch at 0x5544c8 targets 0x55276c, is taken when s3(?) >= 0 (signed), and falls through when s3(?) < 0 (signed).
  The `beq` branch at 0x5544d0 targets 0x552794 and is always taken.
  The `beq` branch at 0x5544f0 targets 0x551f98, is taken when (t1(?) & 0x1) == 0, and falls through when (t1(?) & 0x1) != 0.
  The `bne` branch at 0x55451c targets 0x55454c, is taken when a0(=0x7fff) < t9(?) (unsigned), and falls through when a0(=0x7fff) >= t9(?) (unsigned).
  The `beq` branch at 0x554534 targets 0x554588 and is always taken.
  The `bgez` branch at 0x55453c targets 0x552474, is taken when s2(?) >= 0 (signed), and falls through when s2(?) < 0 (signed).
  The `beq` branch at 0x554544 targets 0x55249c and is always taken.
  The `beq` branch at 0x554588 targets 0x551f98 and is always taken.
  The `blez` branch at 0x5545b8 targets 0x55505c, is taken when a5(=[a1+10]:2) <= 0 (signed), and falls through when a5(=[a1+10]:2) > 0 (signed).
  The `beq` branch at 0x5545c8 targets 0x5545e4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x5545dc targets 0x5545d0, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x5545e4 targets 0x5547a4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x5545ec targets 0x55516c, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x554690 targets 0x554f58, is taken when a7(?) == t0(?), and falls through when a7(?) != t0(?).
  The `bne` branch at 0x5546d8 targets 0x554650, is taken when t8(?) != t0(?), and falls through when t8(?) == t0(?).
  The `bne` branch at 0x5547a8 targets 0x5547d0, is taken when t8(?) < t0(?) (signed), and falls through when t8(?) >= t0(?) (signed).
  The `bne` branch at 0x5547d4 targets 0x55481c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x554814 targets 0x5547f0, is taken when t8(?) >= t1(?) (signed), and falls through when t8(?) < t1(?) (signed).
  The `beq` branch at 0x55482c targets 0x552f50 and is always taken.
  The `beq` branch at 0x554868 targets 0x553d1c and is always taken.
  The `beq` branch at 0x5548a4 targets 0x553d1c and is always taken.
  The `blez` branch at 0x5548d8 targets 0x55506c, is taken when v1(=[a1+10]:2) <= 0 (signed), and falls through when v1(=[a1+10]:2) > 0 (signed).
  The `beq` branch at 0x5548e0 targets 0x554900, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x5548f4 targets 0x5548e8, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x554900 targets 0x554a9c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x554908 targets 0x555284, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x5549a0 targets 0x554fcc, is taken when a7(?) == t0(?), and falls through when a7(?) != t0(?).
  The `bne` branch at 0x5549e8 targets 0x554960, is taken when t8(?) != t0(?), and falls through when t8(?) == t0(?).
  The `bne` branch at 0x554aa0 targets 0x554ac8, is taken when s8(?) < t0(?) (signed), and falls through when s8(?) >= t0(?) (signed).
  The `bne` branch at 0x554acc targets 0x554b0c, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x554b04 targets 0x554ae0, is taken when s8(?) >= t1(?) (signed), and falls through when s8(?) < t1(?) (signed).
  The `beq` branch at 0x554b14 targets 0x553718 and is always taken.
  The `beq` branch at 0x554b8c targets 0x552e64 and is always taken.
  The `beq` branch at 0x554c00 targets 0x552e64 and is always taken.
  The `beq` branch at 0x554c08 targets 0x553fc8, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x554c18 targets 0x554c2c and is always taken.
  The `beq` branch at 0x554c24 targets 0x553fcc, is taken when a6(?) == t3(?), and falls through when a6(?) != t3(?).
  The `bne` branch at 0x554c3c targets 0x554c20, is taken when s1(?) < t9(?) (signed), and falls through when s1(?) >= t9(?) (signed).
  The `bne` branch at 0x554c50 targets 0x554c20, is taken when s6(?) < t2(?) (signed), and falls through when s6(?) >= t2(?) (signed).
  The `beq` branch at 0x554c58 targets 0x554c20, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x554c60 targets 0x554c24, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x554cb8 targets 0x553fcc and is always taken.
  The `beq` branch at 0x554d10 targets 0x55363c and is always taken.
  The `beq` branch at 0x554d6c targets 0x55363c and is always taken.
  The `beq` branch at 0x554d7c targets 0x5512bc and is always taken.
  The `beq` branch at 0x554d88 targets 0x551330 and is always taken.
  The `beq` branch at 0x554df0 targets 0x55159c and is always taken.
  The `beq` branch at 0x554e5c targets 0x55159c and is always taken.
  The `bgez` branch at 0x554e64 targets 0x55328c, is taken when a4(?) >= 0 (signed), and falls through when a4(?) < 0 (signed).
  The `beq` branch at 0x554e6c targets 0x5532b0 and is always taken.
  The `beq` branch at 0x554ee4 targets 0x55435c and is always taken.
  The `beq` branch at 0x554f50 targets 0x55435c and is always taken.
  The `beq` branch at 0x554fb4 targets 0x554740 and is always taken.
  The `bgez` branch at 0x554fbc targets 0x553d78, is taken when s8(?) >= 0 (signed), and falls through when s8(?) < 0 (signed).
  The `beq` branch at 0x554fc4 targets 0x553da0 and is always taken.
  The `beq` branch at 0x555014 targets 0x554a44 and is always taken.
  The `bgez` branch at 0x55501c targets 0x552ed4, is taken when t0(?) >= 0 (signed), and falls through when t0(?) < 0 (signed).
  The `beq` branch at 0x555024 targets 0x552ef8 and is always taken.
  The `bgez` branch at 0x55502c targets 0x5536a0, is taken when s8(?) >= 0 (signed), and falls through when s8(?) < 0 (signed).
  The `beq` branch at 0x555034 targets 0x5536c4 and is always taken.
  The `bltz` branch at 0x55503c targets 0x551630, is taken when s4(?) < 0 (signed), and falls through when s4(?) >= 0 (signed).
  The `beq` branch at 0x555044 targets 0x551600 and is always taken.
  The `bgez` branch at 0x55504c targets 0x5543d0, is taken when t1(?) >= 0 (signed), and falls through when t1(?) < 0 (signed).
  The `beq` branch at 0x555054 targets 0x5543f8 and is always taken.
  The `bgez` branch at 0x55505c targets 0x5547b0, is taken when t8(?) >= 0 (signed), and falls through when t8(?) < 0 (signed).
  The `beq` branch at 0x555064 targets 0x5547d4 and is always taken.
  The `bgez` branch at 0x55506c targets 0x554aa8, is taken when s8(?) >= 0 (signed), and falls through when s8(?) < 0 (signed).
  The `beq` branch at 0x555074 targets 0x554acc and is always taken.
  The `bne` branch at 0x5550d8 targets 0x555098, is taken when a7(?) != t8(=([a1+10]:2 + [a1+12])), and falls through when a7(?) == t8(=([a1+10]:2 + [a1+12])).
  The `beq` branch at 0x5550f8 targets 0x5515f4 and is always taken.
  The `bne` branch at 0x555150 targets 0x555110, is taken when t1(?) != a7(?), and falls through when t1(?) == a7(?).
  The `beq` branch at 0x555164 targets 0x552ec8 and is always taken.
  The `bne` branch at 0x5551bc targets 0x55517c, is taken when a5(?) != ra(?), and falls through when a5(?) == ra(?).
  The `beq` branch at 0x5551d0 targets 0x5547a4 and is always taken.
  The `bne` branch at 0x555218 targets 0x5551d8, is taken when t0(?) != ra(?), and falls through when t0(?) == ra(?).
  The `beq` branch at 0x555220 targets 0x552764 and is always taken.
  The `bne` branch at 0x555270 targets 0x555230, is taken when t1(?) != a7(?), and falls through when t1(?) == a7(?).
  The `beq` branch at 0x55527c targets 0x553694 and is always taken.
  The `bne` branch at 0x5552cc targets 0x55528c, is taken when ra(?) != a7(?), and falls through when ra(?) == a7(?).
  The `beq` branch at 0x5552d8 targets 0x554a9c and is always taken.
  The `bne` branch at 0x555324 targets 0x5552e4, is taken when t1(?) != ra(?), and falls through when t1(?) == ra(?).
  The `beq` branch at 0x55532c targets 0x55194c and is always taken.
  The `bne` branch at 0x555380 targets 0x55533c, is taken when t8(?) != t2(?), and falls through when t8(?) == t2(?).
  The `beq` branch at 0x55538c targets 0x5543c4 and is always taken.
  The `bne` branch at 0x5553e4 targets 0x5553a0, is taken when a6(?) != t2(?), and falls through when a6(?) == t2(?).
  The `beq` branch at 0x5553f4 targets 0x553280 and is always taken.
  The `bne` branch at 0x55543c targets 0x5553fc, is taken when t1(?) != ra(?), and falls through when t1(?) == ra(?).
  The `beq` branch at 0x555444 targets 0x553d70 and is always taken.
  The `bne` branch at 0x55548c targets 0x55544c, is taken when t8(?) != ra(?), and falls through when t8(?) == ra(?).
  The `beq` branch at 0x555494 targets 0x55246c and is always taken.
  The `beq` branch at 0x5554a0 targets 0x552b9c and is always taken.
  The return at 0x553ff4 has v0 = one of ?, ret(?).
  The instructions from 0x55170c to 0x55170c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x551b04 to 0x551b0c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x551cfc to 0x551cfc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x551d94 to 0x551d9c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x552f58 to 0x552f5c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x55549c to 0x55549c are not reached by any path from the entry, and their branches are not listed.

- `nfbSetStereoBuffer` in `usr/lib/X11/dyDDX/crm.so` at 0x558ba0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/crm.so`.
  Range: 0x558ba0-0x558d98 (504 bytes).
  It occupies 504 bytes.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x84, including `lw` at 0x558bbc, `lw` at 0x558c28, `lw` at 0x558d50.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1b4, including `lw` at 0x558bc0, `lw` at 0x558cd8.
  The `lw` at 0x558bd0 loads 4 bytes from ([a1+132] + ([0x5aa0fc] << 0x2)) +0x0.
  2 such `lw` accesses load 4 bytes from sym(rrmScreenPrivateIndex) +0x0, including `lw` at 0x558bd4, `lw` at 0x558ccc.
  The `lw` at 0x558bd8 loads 4 bytes from [([a1+132] + ([0x5aa0fc] << 0x2))] +0x34.
  The `lw` at 0x558be4 loads 4 bytes from a0 (arg0 at entry) +0x74.
  2 such `lw` accesses load 4 bytes from ([a0+436] + ([sym(rrmScreenPrivateIndex)] << 0x2)) +0x0, including `lw` at 0x558bf4, `lw` at 0x558ce0.
  2 such `lw` accesses load 4 bytes from [a0+116] +0xdc, including `lw` at 0x558bf8, `lw` at 0x558d3c.
  2 such `lw` accesses load 4 bytes from [([a0+436] + ([sym(rrmScreenPrivateIndex)] << 0x2))] +0x4, including `lw` at 0x558c04, `lw` at 0x558d68.
  2 such `sw` accesses store 4 bytes to [([a1+132] + ([0x5aa0fc] << 0x2))] +0x34, including `sw` at 0x558c1c, `sw` at 0x558d7c.
  The `lw` at 0x558c24 loads 4 bytes from sym(rrmWindowPrivateIndex) +0x0.
  2 such `lw` accesses load 4 bytes from ([a1+132] + ([sym(rrmWindowPrivateIndex)] << 0x2)) +0x0, including `lw` at 0x558c34, `lw` at 0x558d5c.
  The `lhu` at 0x558c40 loads 2 bytes from [([a1+132] + ([sym(rrmWindowPrivateIndex)] << 0x2))] +0x0.
  The `lw` at 0x558c50 loads 4 bytes from [([a1+132] + ([0x5aa0fc] << 0x2))] +0x38.
  The `lbu` at 0x558c5c loads 1 byte from [([a1+132] + ([sym(rrmWindowPrivateIndex)] << 0x2))] +0x4.
  The `lw` at 0x558c74 loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `lw` at 0x558c78 loads 4 bytes from [a1+16] +0x1b4.
  The `lw` at 0x558c7c loads 4 bytes from [([a1+132] + ([sym(rrmWindowPrivateIndex)] << 0x2))] +0x18.
  The `lw` at 0x558c84 loads 4 bytes from ([[a1+16]+436] + ([sym(rrmScreenPrivateIndex)] << 0x2)) +0x0.
  The `lw` at 0x558c90 loads 4 bytes from [([[a1+16]+436] + ([sym(rrmScreenPrivateIndex)] << 0x2))] +0x94.
  The `lw` at 0x558ca0 loads 4 bytes from [([[a1+16]+436] + ([sym(rrmScreenPrivateIndex)] << 0x2))] +0x4.
  The `sw` at 0x558cac stores 4 bytes to [([a1+132] + ([sym(rrmWindowPrivateIndex)] << 0x2))] +0x18.
  The `lw` at 0x558ce4 loads 4 bytes from [([a0+436] + ([sym(rrmScreenPrivateIndex)] << 0x2))] +0x1c.
  The `lw` at 0x558d04 loads 4 bytes from [([[a1+16]+436] + ([sym(rrmScreenPrivateIndex)] << 0x2))] +0x4c.
  The `lw` at 0x558d20 loads 4 bytes from [a1+16] +0x188.
  2 such `sw` accesses store 4 bytes to [([a1+132] + ([0x5aa0fc] << 0x2))] +0x38, including `sw` at 0x558d4c, `sw` at 0x558d94.
  The `lw` at 0x558d60 loads 4 bytes from [([a0+436] + ([sym(rrmScreenPrivateIndex)] << 0x2))] +0x8.
  The `jalr` at 0x558cb4 calls FindFreeCID [0x4656a0] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x558cc0 calls rrmValidateCID [0x466150] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x558ce8 calls (unknown callee) with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a4=([sym(rrmScreenPrivateIndex)] << 0x2).
  The `jalr` at 0x558d14 calls (unknown callee) with a0=a1 at entry (arg1), a1=?, a2=0x0, a3=?, a4=([sym(rrmScreenPrivateIndex)] << 0x2), a5=[([[a1+16]+436] + ([sym(rrmScreenPrivateIndex)] << 0x2))], a6=[a1+16].
  The `jalr` at 0x558d24 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x558bf0 targets 0x558cf0, is taken when t0(=[[([a1+132] + ([0x5aa0fc] << 0x2))]+52]) == a2, and falls through when t0(=[[([a1+132] + ([0x5aa0fc] << 0x2))]+52]) != a2.
  The `beq` branch at 0x558bfc targets 0x558cf4, is taken when t2(=[[a0+116]+220]) == 0, and falls through when t2(=[[a0+116]+220]) != 0.
  The `beq` branch at 0x558c08 targets 0x558c14, is taken when t3(=[[([a0+436] + ([sym(rrmScreenPrivateIndex)] << 0x2))]+4]) == 0, and falls through when t3(=[[([a0+436] + ([sym(rrmScreenPrivateIndex)] << 0x2))]+4]) != 0.
  The `beq` branch at 0x558c10 targets 0x558d34, is taken when t0(=[[([a1+132] + ([0x5aa0fc] << 0x2))]+52]) == 0, and falls through when t0(=[[([a1+132] + ([0x5aa0fc] << 0x2))]+52]) != 0.
  The `beq` branch at 0x558c18 targets 0x558cf0, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x558c38 targets 0x558cf4, is taken when a1(=[([a1+132] + ([sym(rrmWindowPrivateIndex)] << 0x2))]) == 0, and falls through when a1(=[([a1+132] + ([sym(rrmWindowPrivateIndex)] << 0x2))]) != 0.
  The `beq` branch at 0x558c48 targets 0x558d7c, is taken when (a3(=[[([a1+132] + ([sym(rrmWindowPrivateIndex)] << 0x2))]]:2) & 0x1) == 0, and falls through when (a3(=[[([a1+132] + ([sym(rrmWindowPrivateIndex)] << 0x2))]]:2) & 0x1) != 0.
  The `beq` branch at 0x558c54 targets 0x558d3c, is taken when t1(=[[([a1+132] + ([0x5aa0fc] << 0x2))]+56]) == 0, and falls through when t1(=[[([a1+132] + ([0x5aa0fc] << 0x2))]+56]) != 0.
  The `beq` branch at 0x558c64 targets 0x558cf4, is taken when (t2(=[[([a1+132] + ([sym(rrmWindowPrivateIndex)] << 0x2))]+4]:1) & 0x2) == 0, and falls through when (t2(=[[([a1+132] + ([sym(rrmWindowPrivateIndex)] << 0x2))]+4]:1) & 0x2) != 0.
  The `beq` branch at 0x558c6c targets 0x558d60, is taken when t0(=one of 0x0, 0x1) == 0, and falls through when t0(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x558c98 targets 0x558cac, is taken when a2(=[[([a1+132] + ([sym(rrmWindowPrivateIndex)] << 0x2))]+24]) == 0, and falls through when a2(=[[([a1+132] + ([sym(rrmWindowPrivateIndex)] << 0x2))]+24]) != 0.
  The `bne` branch at 0x558ca4 targets 0x558d04, is taken when a2(=[[([a1+132] + ([sym(rrmWindowPrivateIndex)] << 0x2))]+24]) != t0(=[[([[a1+16]+436] + ([sym(rrmScreenPrivateIndex)] << 0x2))]+4]), and falls through when a2(=[[([a1+132] + ([sym(rrmWindowPrivateIndex)] << 0x2))]+24]) == t0(=[[([[a1+16]+436] + ([sym(rrmScreenPrivateIndex)] << 0x2))]+4]).
  The `beq` branch at 0x558d2c targets 0x558cb4 and is always taken.
  The `beq` branch at 0x558d34 targets 0x558c18 and is always taken.
  The `beq` branch at 0x558d44 targets 0x558d90, is taken when a1(=0x1) == ra(=[[a0+116]+220]), and falls through when a1(=0x1) != ra(=[[a0+116]+220]).
  The `beq` branch at 0x558d58 targets 0x558c5c and is always taken.
  The `bne` branch at 0x558d64 targets 0x558cd4, is taken when a2(=[[([a0+436] + ([sym(rrmScreenPrivateIndex)] << 0x2))]+8]) != 0, and falls through when a2(=[[([a0+436] + ([sym(rrmScreenPrivateIndex)] << 0x2))]+8]) == 0.
  The `bne` branch at 0x558d6c targets 0x558c74, is taken when a2(=[[([a0+436] + ([sym(rrmScreenPrivateIndex)] << 0x2))]+4]) != 0, and falls through when a2(=[[([a0+436] + ([sym(rrmScreenPrivateIndex)] << 0x2))]+4]) == 0.
  The `beq` branch at 0x558d74 targets 0x558cd8 and is always taken.
  The `beq` branch at 0x558d90 targets 0x558d50 and is always taken.
  The return at 0x558cfc has v0 = ?.
  The return at 0x558d88 has v0 = ?.
