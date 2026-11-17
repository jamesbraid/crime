# Readings: `usr/lib64/libXsgivc.so`

One entry per routine, filed here from the reading batches by binary.

- `XSGIvcQueryChannelInfo` in `usr/lib64/libXsgivc.so` at 0x2003250 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2003250-0x2003900 (1712 bytes).
  It occupies 1712 bytes.
  2 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x2003298, `ld` at 0x2003310.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x20032a4, `ld` at 0x2003360, `ld` at 0x2003420.
  The `ld` at 0x20032b0 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x20032bc, `ld` at 0x20032f4, `ld` at 0x200387c.
  The `ld` at 0x20032c0 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x20032d8 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x20032e0 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x20032e8, `sb` at 0x200333c.
  The `ld` at 0x20032ec loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x20032fc stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x200330c stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `lw` at 0x2003318 loads 4 bytes from [ret(find_display)+16]:8 +0x4.
  The `sw` at 0x200331c stores 4 bytes to [a0+176]:8 +0x8.
  The `sw` at 0x2003324 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2003330 stores 1 byte to [a0+176]:8 +0x1.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x0, including `sd` at 0x200335c, `sd` at 0x20034d8.
  4 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x200336c, `ld` at 0x200342c, `ld` at 0x2003490.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2003378, `ld` at 0x2003438, `ld` at 0x200349c.
  The `sw` at 0x20034e0 stores 4 bytes to ret(malloc) +0x0.
  The `swc1` at 0x2003504 stores 4 bytes to ret(malloc) +0x4.
  The `swc1` at 0x2003524 stores 4 bytes to ret(malloc) +0x8.
  The `swc1` at 0x2003544 stores 4 bytes to ret(malloc) +0x10.
  The `swc1` at 0x2003564 stores 4 bytes to ret(malloc) +0xc.
  The `sw` at 0x200356c stores 4 bytes to ret(malloc) +0x118.
  The `sw` at 0x2003574 stores 4 bytes to ret(malloc) +0x11c.
  The `sw` at 0x200357c stores 4 bytes to ret(malloc) +0x120.
  The `sw` at 0x2003584 stores 4 bytes to ret(malloc) +0x124.
  The `swc1` at 0x20035a8 stores 4 bytes to ret(malloc) +0x128.
  The `swc1` at 0x20035cc stores 4 bytes to ret(malloc) +0x12c.
  The `sw` at 0x20035d4 stores 4 bytes to ret(malloc) +0x130.
  The `sw` at 0x20035dc stores 4 bytes to ret(malloc) +0x134.
  The `sw` at 0x20035e4 stores 4 bytes to ret(malloc) +0x138.
  The `sw` at 0x20035ec stores 4 bytes to ret(malloc) +0x13c.
  The `sw` at 0x20035f4 stores 4 bytes to ret(malloc) +0x140.
  The `sw` at 0x20035fc stores 4 bytes to ret(malloc) +0x144.
  The `sd` at 0x2003608 stores 8 bytes to ret(malloc) +0x150.
  The `sd` at 0x2003614 stores 8 bytes to ret(malloc) +0x158.
  The `sw` at 0x200361c stores 4 bytes to ret(malloc) +0x168.
  The `sw` at 0x2003624 stores 4 bytes to ret(malloc) +0x16c.
  The `sw` at 0x200362c stores 4 bytes to ret(malloc) +0x170.
  The `sw` at 0x2003634 stores 4 bytes to ret(malloc) +0x174.
  The `sw` at 0x200363c stores 4 bytes to ret(malloc) +0x178.
  The `sw` at 0x2003644 stores 4 bytes to ret(malloc) +0x17c.
  The `sw` at 0x200364c stores 4 bytes to ret(malloc) +0x180.
  The `sw` at 0x2003654 stores 4 bytes to ret(malloc) +0x184.
  The `sw` at 0x200365c stores 4 bytes to ret(malloc) +0x188.
  The `sw` at 0x2003664 stores 4 bytes to ret(malloc) +0x18c.
  The `sw` at 0x200366c stores 4 bytes to ret(malloc) +0x190.
  The `sw` at 0x2003674 stores 4 bytes to ret(malloc) +0x194.
  The `sw` at 0x200367c stores 4 bytes to ret(malloc) +0x198.
  The `sw` at 0x2003684 stores 4 bytes to ret(malloc) +0x1b0.
  The `sw` at 0x200368c stores 4 bytes to ret(malloc) +0x19c.
  The `sw` at 0x2003694 stores 4 bytes to ret(malloc) +0x1a0.
  2 such `sd` accesses store 8 bytes to ret(malloc) +0x148, including `sd` at 0x20036f4, `sd` at 0x20038f4.
  2 such `sd` accesses store 8 bytes to ret(malloc) +0x160, including `sd` at 0x2003768, `sd` at 0x2003784.
  2 such `sd` accesses store 8 bytes to ret(malloc) +0x1a8, including `sd` at 0x20037a0, `sd` at 0x20038fc.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x2003804, `sw` at 0x2003814.
  The `sd` at 0x2003834 stores 8 bytes to ?.
  The `bgezall` at 0x2003288 calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x20032b4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2003338 calls _XReply with a0=a0 at entry (arg0), a1=sp-256, a2=0x17, a3=0x0, a4=[[ret(find_display)+16]:8+4], a5=0x8, a6=a1 at entry (arg1), a7=a2 at entry (arg2).
  The `jalr` at 0x2003370 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2003384 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2003410 calls malloc with a0=(table(0x1b8) << 0x0), a1=0x1b8, a2=?, a3=-0x8.
  The `jalr` at 0x2003430 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2003448 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x200347c calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2003494 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20034a8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20036dc calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc)+24, a2=?, a3=-0x4.
  The `bgezall` at 0x2003728 calls ReadFieldInfo [0x2005920] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2003774 calls _XRead with a0=a0 at entry (arg0), a1=table(0x1b8), a2=?, a3=?.
  The `jalr` at 0x20037f4 calls _XRead with a0=a0 at entry (arg0), a1=sp-128, a2=0x8, a3=?.
  The `jalr` at 0x2003828 calls _XRead with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2003870 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2003890 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20038a4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20038d0 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x2003290 targets 0x20038c4, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x200329c targets 0x20038c8, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x20032a8 targets 0x20032bc, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `bne` branch at 0x20032d0 targets 0x200386c, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+12) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+12) (unsigned).
  The `beq` branch at 0x2003340 targets 0x2003880, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bne` branch at 0x200334c targets 0x20033a8, is taken when t3(?) != v0(=-0x1), and falls through when t3(?) == v0(=-0x1).
  The `bne` branch at 0x2003354 targets 0x20033a8, is taken when t8(?) != v0(=-0x1), and falls through when t8(?) == v0(=-0x1).
  The `beq` branch at 0x2003364 targets 0x2003378, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x200337c targets 0x2003390, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `bne` branch at 0x2003418 targets 0x20034d4, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0x2003424 targets 0x2003438, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2003440 targets 0x2003450, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `blez` branch at 0x2003470 targets 0x2003484, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0x2003488 targets 0x200349c, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x20034a0 targets 0x20034b4, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x20036b4 targets 0x20036e4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x20036e8 targets 0x20038f0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x20036fc targets 0x2003754, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x2003740 targets 0x2003720, is taken when s2(?) < ra(?) (unsigned), and falls through when s2(?) >= ra(?) (unsigned).
  The `beq` branch at 0x2003754 targets 0x2003784, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x200377c targets 0x200378c and is always taken.
  The `blez` branch at 0x200378c targets 0x20038f8, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `blez` branch at 0x20037a8 targets 0x2003470, is taken when a4(?) <= 0 (signed), and falls through when a4(?) > 0 (signed).
  The `beq` branch at 0x20037bc targets 0x20037e8 and is always taken.
  The `beq` branch at 0x20037e0 targets 0x2003468, is taken when s2(?) >= t9(?) (signed), and falls through when s2(?) < t9(?) (signed).
  The `bne` branch at 0x2003858 targets 0x20037d0, is taken when (t8(?) & 0x1) != 0, and falls through when (t8(?) & 0x1) == 0.
  The `beq` branch at 0x2003864 targets 0x20037d8 and is always taken.
  The `beq` branch at 0x2003878 targets 0x20032d4 and is always taken.
  The `beq` branch at 0x2003884 targets 0x2003898, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x200389c targets 0x20038ac, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x20038f0 targets 0x2003750 and is always taken.
  The `beq` branch at 0x20038f8 targets 0x2003470 and is always taken.
  The return at 0x20033a0 has v0 = 0x0.
  The return at 0x2003460 has v0 = 0x0.
  The return at 0x20034cc has v0 = 0x1.
  The return at 0x20038bc has v0 = 0x0.
  The return at 0x20038e8 has v0 = 0x0.
  The instructions from 0x20037c4 to 0x20037cc are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcQueryOutputBlanking` in `usr/lib64/libXsgivc.so` at 0x2003900 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2003900-0x2003940 (64 bytes).
  It occupies 64 bytes.
  The `bgezall` at 0x2003928 calls QueryOneControl [0x2009250] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0xb, a4=a3 at entry (arg3).
  The return at 0x2003938 has v0 = ret(QueryOneControl).

- `XSGIvcSetOutputPedestal` in `usr/lib64/libXsgivc.so` at 0x2003940 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2003940-0x2003980 (64 bytes).
  It occupies 64 bytes.
  The `bgezall` at 0x2003968 calls SetOneControl [0x2009730] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x6, a4=a3 at entry (arg3).
  The return at 0x2003978 has v0 = ret(SetOneControl).

- `XSGIvcSetScreenExternalSyncSource` in `usr/lib64/libXsgivc.so` at 0x2003980 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2003980-0x2003ac4 (324 bytes).
  It occupies 324 bytes.
  2 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x20039c4, `ld` at 0x2003a3c.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x20039d0, `ld` at 0x2003a58.
  The `ld` at 0x20039dc loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x20039e8, `ld` at 0x2003a24, `ld` at 0x2003aa8.
  The `ld` at 0x20039ec loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2003a08 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2003a10 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2003a18, `sb` at 0x2003a54.
  The `ld` at 0x2003a1c loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2003a30 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2003a38 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `lw` at 0x2003a44 loads 4 bytes from [ret(find_display)+16]:8 +0x4.
  The `sw` at 0x2003a48 stores 4 bytes to [a0+176]:8 +0x8.
  The `sw` at 0x2003a4c stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2003a50 stores 1 byte to [a0+176]:8 +0x1.
  The `ld` at 0x2003a64 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x2003a70 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `bgezall` at 0x20039b4 calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x20039e0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x2003a68 calls (unknown callee) with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a1 at entry (arg1), a3=0x1b, a4=[[ret(find_display)+16]:8+4], a5=[a0+2408]:8, a6=0x1, a7=[a0+176]:8+12.
  The `jalr` at 0x2003a7c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2003a9c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2003ab4 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x20039bc targets 0x2003aac, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x20039c8 targets 0x2003ab0, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x20039d4 targets 0x20039e8, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `bne` branch at 0x20039fc targets 0x2003a9c, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+12) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+12) (unsigned).
  The `beq` branch at 0x2003a5c targets 0x2003a70, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2003a74 targets 0x2003a88, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2003aa4 targets 0x2003a04 and is always taken.
  The `beq` branch at 0x2003abc targets 0x2003a88 and is always taken.
  The return at 0x2003a94 has v0 = one of ?, ret(?), ret(XMissingExtension).

- `XSGIvcSetPlatformParameter` in `usr/lib64/libXsgivc.so` at 0x2003ad0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2003ad0-0x2003ca0 (464 bytes).
  It occupies 464 bytes.
  2 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x2003b24, `ld` at 0x2003bac.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2003b30, `ld` at 0x2003c30.
  The `ld` at 0x2003b3c loads 8 bytes from [a0+2408]:8 +0x0.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2003b48, `ld` at 0x2003b94, `ld` at 0x2003bdc.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb8, including `ld` at 0x2003b4c, `ld` at 0x2003be0.
  The `sd` at 0x2003b78 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  2 such `sh` accesses store 2 bytes to [a0+176]:8 +0x2, including `sh` at 0x2003b80, `sh` at 0x2003bd4.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2003b88, `sb` at 0x2003bd8.
  The `ld` at 0x2003b8c loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2003ba0 stores 8 bytes to a0 (arg0 at entry) +0x98.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0xb0, including `sd` at 0x2003ba8, `sd` at 0x2003c1c.
  The `lhu` at 0x2003bb0 loads 2 bytes from [a0+176]:8 +0x2.
  The `lw` at 0x2003bb4 loads 4 bytes from [ret(find_display)+16]:8 +0x4.
  The `sb` at 0x2003bb8 stores 1 byte to [a0+176]:8 +0x1.
  The `sw` at 0x2003bbc stores 4 bytes to [a0+176]:8 +0x4.
  The `sw` at 0x2003bc0 stores 4 bytes to [a0+176]:8 +0x8.
  The `sw` at 0x2003bc4 stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0x2003bcc stores 4 bytes to [a0+176]:8 +0x10.
  The `ld` at 0x2003c3c loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x2003c48 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `bgezall` at 0x2003b14 calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2003b40 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2003bfc calls memcpy with a0=[a0+176]:8, a1=a4 at entry (arg4), a2=a5 at entry (arg5), a3=(a5 + [a0+176]:8), a6=a3 at entry (arg3), a7=a2 at entry (arg2).
  The `jalr` at 0x2003c28 calls _XSend with a0=a0 at entry (arg0), a1=a4 at entry (arg4), a2=a5 at entry (arg5), a3=(a5 + [a0+176]:8), a6=a3 at entry (arg3), a7=a2 at entry (arg2).
  The `jalr` at 0x2003c40 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2003c54 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2003c78 calls _XFlush with a0=a0 at entry (arg0), a1=[a0+176]:8+20, a2=?, a3=?.
  The `jalr` at 0x2003c90 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x2003b1c targets 0x2003c88, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x2003b28 targets 0x2003c8c, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x2003b34 targets 0x2003b48, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2003b5c targets 0x2003c78, is taken when v1(=[a0+184]:8) < a1(=[a0+176]:8+20) (unsigned), and falls through when v1(=[a0+184]:8) >= a1(=[a0+176]:8+20) (unsigned).
  The `bne` branch at 0x2003bec targets 0x2003c20, is taken when a2(=[a0+184]:8) < a3(=(a5 + [a0+176]:8)) (unsigned), and falls through when a2(=[a0+184]:8) >= a3(=(a5 + [a0+176]:8)) (unsigned).
  The `beq` branch at 0x2003c18 targets 0x2003c30 and is always taken.
  The `beq` branch at 0x2003c34 targets 0x2003c48, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2003c4c targets 0x2003c60, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2003c80 targets 0x2003b64 and is always taken.
  The `beq` branch at 0x2003c98 targets 0x2003c60 and is always taken.
  The return at 0x2003c70 has v0 = one of ?, ret(?), ret(XMissingExtension).

- `XSGIvcNVLoadVideoFormatCombination` in `usr/lib64/libXsgivc.so` at 0x2003ca0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2003ca0-0x2003fac (780 bytes).
  It occupies 780 bytes.
  3 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x2003ce8, `ld` at 0x2003d60, `ld` at 0x2003d8c.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2003cf4, `ld` at 0x2003ed0.
  The `ld` at 0x2003d00 loads 8 bytes from [a0+2408]:8 +0x0.
  9 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2003d0c, `ld` at 0x2003d48, `ld` at 0x2003df4.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb8, including `ld` at 0x2003d10, `ld` at 0x2003df8, `ld` at 0x2003e4c.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0xa0, including `sd` at 0x2003d28, `sd` at 0x2003e64.
  2 such `sh` accesses store 2 bytes to [a0+176]:8 +0x2, including `sh` at 0x2003d30, `sh` at 0x2003df0.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2003d38, `sb` at 0x2003d70.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x98, including `ld` at 0x2003d40, `ld` at 0x2003d74, `ld` at 0x2003d7c.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x98, including `sd` at 0x2003d54, `sd` at 0x2003e9c.
  3 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0xb0, including `sd` at 0x2003d5c, `sd` at 0x2003e34, `sd` at 0x2003ea8.
  2 such `lw` accesses load 4 bytes from [ret(find_display)+16]:8 +0x4, including `lw` at 0x2003d68, `lw` at 0x2003d94.
  The `sb` at 0x2003d6c stores 1 byte to [a0+176]:8 +0x1.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x958, including `ld` at 0x2003da4, `ld` at 0x2003eac.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x958, including `sd` at 0x2003dbc, `sd` at 0x2003ebc.
  The `sw` at 0x2003dc8 stores 4 bytes to [a0+176]:8 +0x4.
  The `lhu` at 0x2003dd8 loads 2 bytes from [a0+176]:8 +0x2.
  The `sw` at 0x2003ddc stores 4 bytes to [a0+176]:8 +0x8.
  The `sh` at 0x2003e6c stores 2 bytes to ?.
  The `sb` at 0x2003e74 stores 1 byte to ?.
  The `ld` at 0x2003edc loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x2003ee8 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `bgezall` at 0x2003cd8 calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2003d04 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2003dc4 calls strlen with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=sp-120, a3=sym(_XAsyncErrorHandler), a4=[a0+2392]:8, a5=0x21, a6=[a0+176]:8, a7=[[ret(find_display)+16]:8+4].
  The `jalr` at 0x2003e18 calls memcpy with a0=[a0+176]:8, a1=a2 at entry (arg2), a2=(ret(strlen)+1 << 0x0), a3=?, a6=[a0+176]:8.
  The `jalr` at 0x2003e40 calls _XSend with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=(ret(strlen)+1 << 0x0), a3=?, a6=[a0+176]:8.
  The `jalr` at 0x2003ea4 calls _XReply with a0=a0 at entry (arg0), a1=sp-88, a2=0x0, a3=0x1.
  The `jalr` at 0x2003ec8 calls _XDeqAsyncHandler with a0=a0 at entry (arg0), a1=sp-144, a2=?, a3=?.
  The `jalr` at 0x2003ee0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2003ef8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2003f38 calls _XFlush with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a6=[a0+176]:8.
  The `jalr` at 0x2003f4c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2003f88 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x2003ce0 targets 0x2003f7c, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x2003cec targets 0x2003f80, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x2003cf8 targets 0x2003d0c, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2003d20 targets 0x2003f34, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+12) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+12) (unsigned).
  The `blez` branch at 0x2003de0 targets 0x2003f5c, is taken when a2(=(ret(strlen)+1 << 0x0)) <= 0 (signed), and falls through when a2(=(ret(strlen)+1 << 0x0)) > 0 (signed).
  The `bne` branch at 0x2003e04 targets 0x2003e38, is taken when a0(=[a0+184]:8) < a1(=((ret(strlen)+1 << 0x0) + [a0+176]:8)) (unsigned), and falls through when a0(=[a0+184]:8) >= a1(=((ret(strlen)+1 << 0x0) + [a0+176]:8)) (unsigned).
  The `beq` branch at 0x2003e30 targets 0x2003e4c and is always taken.
  The `bne` branch at 0x2003e5c targets 0x2003f4c, is taken when t0(=[a0+184]:8) < t1(=table(0x4)) (unsigned), and falls through when t0(=[a0+184]:8) >= t1(=table(0x4)) (unsigned).
  The `bne` branch at 0x2003eb0 targets 0x2003ec0, is taken when v0(=[a0+2392]:8) != s3(=sp-144), and falls through when v0(=[a0+2392]:8) == s3(=sp-144).
  The `beq` branch at 0x2003eb8 targets 0x2003ed0 and is always taken.
  The `beq` branch at 0x2003ed4 targets 0x2003ee8, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2003ef0 targets 0x2003f00, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2003f10 targets 0x2003f68, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x2003f44 targets 0x2003d24 and is always taken.
  The `beq` branch at 0x2003f54 targets 0x2003e64 and is always taken.
  The `beq` branch at 0x2003f60 targets 0x2003e4c and is always taken.
  The return at 0x2003f2c has v0 = 0x0.
  The return at 0x2003f74 has v0 = 0x1.
  The return at 0x2003fa4 has v0 = 0x0.

- `XSGIvcQueryOutputGain` in `usr/lib64/libXsgivc.so` at 0x2003fb0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2003fb0-0x20040a0 (240 bytes).
  It occupies 240 bytes.
  The `swc1` at 0x200405c stores 4 bytes to a4 (arg4 at entry) +0x0.
  The `bgezall` at 0x2004018 calls QueryOneControl [0x2009250] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?, a4=sp-32.
  The `beq` branch at 0x2003fc4 targets 0x2004000, is taken when a3 == v0(=0x1), and falls through when a3 != v0(=0x1).
  The `beq` branch at 0x2003fd0 targets 0x2004070, is taken when a3 == v0(=0x2), and falls through when a3 != v0(=0x2).
  The `beq` branch at 0x2003fd8 targets 0x2004080, is taken when a3 == v1(=0x3), and falls through when a3 != v1(=0x3).
  The `beq` branch at 0x2003fe4 targets 0x2004090, is taken when a3 == a5(=0x4), and falls through when a3 != a5(=0x4).
  The `beq` branch at 0x2003fec targets 0x2004060, is taken when a3 == a6(=0x5), and falls through when a3 != a6(=0x5).
  The `beq` branch at 0x2004068 targets 0x200400c and is always taken.
  The `beq` branch at 0x2004078 targets 0x200400c and is always taken.
  The `beq` branch at 0x2004088 targets 0x200400c and is always taken.
  The `beq` branch at 0x2004098 targets 0x200400c and is always taken.
  The return at 0x2003ff8 has v0 = 0x2.
  The return at 0x2004058 has v0 = ret(QueryOneControl).

- `XSGIvcLoadVideoFormat` in `usr/lib64/libXsgivc.so` at 0x20040a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x20040a0-0x2004350 (688 bytes).
  It occupies 688 bytes.
  3 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x20040f4, `ld` at 0x2004170, `ld` at 0x20041a0.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2004108, `ld` at 0x2004290.
  The `ld` at 0x2004114 loads 8 bytes from [a0+2408]:8 +0x0.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2004120, `ld` at 0x2004158, `ld` at 0x2004204.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb8, including `ld` at 0x2004124, `ld` at 0x2004208.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0xa0, including `sd` at 0x2004140, `sd` at 0x2004224.
  2 such `sh` accesses store 2 bytes to [a0+176]:8 +0x2, including `sh` at 0x2004148, `sh` at 0x200422c.
  3 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x200414c, `sb` at 0x2004180, `sb` at 0x2004234.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x98, including `ld` at 0x2004150, `ld` at 0x2004184, `ld` at 0x2004190.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x98, including `sd` at 0x2004164, `sd` at 0x200425c.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0xb0, including `sd` at 0x200416c, `sd` at 0x2004268.
  2 such `lw` accesses load 4 bytes from [ret(find_display)+16]:8 +0x4, including `lw` at 0x2004178, `lw` at 0x20041a8.
  The `sb` at 0x200417c stores 1 byte to [a0+176]:8 +0x1.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x958, including `ld` at 0x20041b8, `ld` at 0x200426c.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x958, including `sd` at 0x20041cc, `sd` at 0x200427c.
  The `sw` at 0x20041d0 stores 4 bytes to [a0+176]:8 +0x10.
  The `sb` at 0x20041dc stores 1 byte to [a0+176]:8 +0xc.
  The `sw` at 0x20041e8 stores 4 bytes to [a0+176]:8 +0x8.
  The `sw` at 0x2004200 stores 4 bytes to [a0+176]:8 +0x4.
  The `ld` at 0x200429c loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x20042a8 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `bgezall` at 0x20040e4 calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2004118 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0x20041fc calls GenerateVFList [0x20078b0] with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=(a4 << 0x0), a3=[a0+176]:8+2, a4=a1 at entry (arg1), a6=[[ret(find_display)+16]:8+4], a7=[a0+152]:8+1.
  The `jalr` at 0x2004264 calls _XReply with a0=a0 at entry (arg0), a1=sp-104, a2=0x0, a3=0x1, a4=0x1, a5=0x2b.
  The `jalr` at 0x2004288 calls _XDeqAsyncHandler with a0=a0 at entry (arg0), a1=sp-160, a2=?, a3=?, a6=[a0+2392]:8.
  The `jalr` at 0x20042a0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20042b4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2004304 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2004318 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2004340 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x20040ec targets 0x2004330, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x20040f8 targets 0x2004334, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x2004100 targets 0x20042e0, is taken when s2(=a3) == 0, and falls through when s2(=a3) != 0.
  The `beq` branch at 0x200410c targets 0x2004120, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2004134 targets 0x2004300, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+20) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+20) (unsigned).
  The `bne` branch at 0x200421c targets 0x2004314, is taken when t8(=[a0+184]:8) < t9(=[a0+176]:8+4) (unsigned), and falls through when t8(=[a0+184]:8) >= t9(=[a0+176]:8+4) (unsigned).
  The `bne` branch at 0x2004270 targets 0x2004280, is taken when a6(=[a0+2392]:8) != sp(=sp-160), and falls through when a6(=[a0+2392]:8) == sp(=sp-160).
  The `beq` branch at 0x2004278 targets 0x2004290 and is always taken.
  The `beq` branch at 0x2004294 targets 0x20042a8, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x20042ac targets 0x20042c0, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x20042c0 targets 0x2004328, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x200430c targets 0x2004138 and is always taken.
  The `beq` branch at 0x2004320 targets 0x2004224 and is always taken.
  The `beq` branch at 0x2004328 targets 0x20042d0 and is always taken.
  The `beq` branch at 0x2004348 targets 0x20042cc and is always taken.
  The return at 0x20042d8 has v0 = one of 0x0, 0x1.
  The return at 0x20042f8 has v0 = 0x0.

- `XSGIvcSendMonitorCommand` in `usr/lib64/libXsgivc.so` at 0x2004350 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2004350-0x2004518 (456 bytes).
  It occupies 456 bytes.
  2 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x20043a0, `ld` at 0x2004420.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x20043ac, `ld` at 0x20044a4.
  The `ld` at 0x20043b8 loads 8 bytes from [a0+2408]:8 +0x0.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x20043c4, `ld` at 0x2004408, `ld` at 0x2004450.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb8, including `ld` at 0x20043c8, `ld` at 0x2004454.
  The `sd` at 0x20043ec stores 8 bytes to a0 (arg0 at entry) +0xa0.
  2 such `sh` accesses store 2 bytes to [a0+176]:8 +0x2, including `sh` at 0x20043f4, `sh` at 0x2004444.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x20043fc, `sb` at 0x200444c.
  The `ld` at 0x2004400 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2004414 stores 8 bytes to a0 (arg0 at entry) +0x98.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0xb0, including `sd` at 0x200441c, `sd` at 0x2004490.
  The `lhu` at 0x2004424 loads 2 bytes from [a0+176]:8 +0x2.
  The `lw` at 0x2004428 loads 4 bytes from [ret(find_display)+16]:8 +0x4.
  The `sb` at 0x200442c stores 1 byte to [a0+176]:8 +0x1.
  The `sw` at 0x2004430 stores 4 bytes to [a0+176]:8 +0x4.
  The `sw` at 0x2004434 stores 4 bytes to [a0+176]:8 +0x8.
  The `sw` at 0x200443c stores 4 bytes to [a0+176]:8 +0xc.
  The `sb` at 0x2004448 stores 1 byte to [a0+176]:8 +0x10.
  The `ld` at 0x20044b0 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x20044bc loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `bgezall` at 0x2004390 calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x20043bc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2004470 calls memcpy with a0=[a0+176]:8, a1=a3 at entry (arg3), a2=a4 at entry (arg4), a3=(a4 + [a0+176]:8), a6=a2 at entry (arg2), a7=a1 at entry (arg1).
  The `jalr` at 0x200449c calls _XSend with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=a4 at entry (arg4), a3=(a4 + [a0+176]:8), a6=a2 at entry (arg2), a7=a1 at entry (arg1).
  The `jalr` at 0x20044b4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20044c8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20044f0 calls _XFlush with a0=a0 at entry (arg0), a1=[a0+176]:8+20, a2=?, a3=?, a5=a4+3.
  The `jalr` at 0x2004508 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x2004398 targets 0x2004500, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x20043a4 targets 0x2004504, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x20043b0 targets 0x20043c4, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `bne` branch at 0x20043d8 targets 0x20044ec, is taken when v1(=[a0+184]:8) < a1(=[a0+176]:8+20) (unsigned), and falls through when v1(=[a0+184]:8) >= a1(=[a0+176]:8+20) (unsigned).
  The `bne` branch at 0x2004460 targets 0x2004494, is taken when a2(=[a0+184]:8) < a3(=(a4 + [a0+176]:8)) (unsigned), and falls through when a2(=[a0+184]:8) >= a3(=(a4 + [a0+176]:8)) (unsigned).
  The `beq` branch at 0x200448c targets 0x20044a4 and is always taken.
  The `beq` branch at 0x20044a8 targets 0x20044bc, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x20044c0 targets 0x20044d4, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x20044f8 targets 0x20043dc and is always taken.
  The `beq` branch at 0x2004510 targets 0x20044d4 and is always taken.
  The return at 0x20044e4 has v0 = one of ?, ret(?), ret(XMissingExtension).

- `XSGIvcQueryOutputPhaseV` in `usr/lib64/libXsgivc.so` at 0x2004520 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2004520-0x2004560 (64 bytes).
  It occupies 64 bytes.
  The `bgezall` at 0x2004548 calls QueryOneControl [0x2009250] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x9, a4=a3 at entry (arg3).
  The return at 0x2004558 has v0 = ret(QueryOneControl).

- `XSGIvcQueryOutputPhaseH` in `usr/lib64/libXsgivc.so` at 0x2004560 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2004560-0x20045a0 (64 bytes).
  It occupies 64 bytes.
  The `bgezall` at 0x2004588 calls QueryOneControl [0x2009250] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x7, a4=a3 at entry (arg3).
  The return at 0x2004598 has v0 = ret(QueryOneControl).

- `XSGIvcLoadVideoFormatCombination` in `usr/lib64/libXsgivc.so` at 0x20045a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x20045a0-0x20048ac (780 bytes).
  It occupies 780 bytes.
  3 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x20045e8, `ld` at 0x2004664, `ld` at 0x2004690.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x20045f4, `ld` at 0x20047d4.
  The `ld` at 0x2004600 loads 8 bytes from [a0+2408]:8 +0x0.
  9 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x200460c, `ld` at 0x200464c, `ld` at 0x20046f8.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb8, including `ld` at 0x2004610, `ld` at 0x20046fc, `ld` at 0x2004750.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0xa0, including `sd` at 0x200462c, `sd` at 0x2004768.
  2 such `sh` accesses store 2 bytes to [a0+176]:8 +0x2, including `sh` at 0x2004634, `sh` at 0x20046f4.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x200463c, `sb` at 0x2004674.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x98, including `ld` at 0x2004644, `ld` at 0x2004678, `ld` at 0x2004680.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x98, including `sd` at 0x2004658, `sd` at 0x20047a0.
  3 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0xb0, including `sd` at 0x2004660, `sd` at 0x2004738, `sd` at 0x20047ac.
  2 such `lw` accesses load 4 bytes from [ret(find_display)+16]:8 +0x4, including `lw` at 0x200466c, `lw` at 0x2004698.
  The `sb` at 0x2004670 stores 1 byte to [a0+176]:8 +0x1.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x958, including `ld` at 0x20046a8, `ld` at 0x20047b0.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x958, including `sd` at 0x20046c0, `sd` at 0x20047c0.
  The `sw` at 0x20046cc stores 4 bytes to [a0+176]:8 +0x4.
  The `lhu` at 0x20046dc loads 2 bytes from [a0+176]:8 +0x2.
  The `sw` at 0x20046e0 stores 4 bytes to [a0+176]:8 +0x8.
  The `sh` at 0x2004770 stores 2 bytes to ?.
  The `sb` at 0x2004778 stores 1 byte to ?.
  The `ld` at 0x20047e0 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x20047ec loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `bgezall` at 0x20045d8 calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2004604 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20046c8 calls strlen with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=sp-120, a3=sym(_XAsyncErrorHandler), a4=[a0+2392]:8, a5=0x6, a6=[a0+176]:8, a7=[[ret(find_display)+16]:8+4].
  The `jalr` at 0x200471c calls memcpy with a0=[a0+176]:8, a1=a2 at entry (arg2), a2=(ret(strlen)+1 << 0x0), a3=?, a6=[a0+176]:8.
  The `jalr` at 0x2004744 calls _XSend with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=(ret(strlen)+1 << 0x0), a3=?, a6=[a0+176]:8.
  The `jalr` at 0x20047a8 calls _XReply with a0=a0 at entry (arg0), a1=sp-88, a2=0x0, a3=0x1.
  The `jalr` at 0x20047cc calls _XDeqAsyncHandler with a0=a0 at entry (arg0), a1=sp-144, a2=?, a3=?.
  The `jalr` at 0x20047e4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20047fc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2004838 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+176]:8.
  The `jalr` at 0x200484c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2004888 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x20045e0 targets 0x200487c, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x20045ec targets 0x2004880, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x20045f8 targets 0x200460c, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2004620 targets 0x2004838, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+12) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+12) (unsigned).
  The `blez` branch at 0x20046e4 targets 0x200485c, is taken when a2(=(ret(strlen)+1 << 0x0)) <= 0 (signed), and falls through when a2(=(ret(strlen)+1 << 0x0)) > 0 (signed).
  The `bne` branch at 0x2004708 targets 0x200473c, is taken when a0(=[a0+184]:8) < a1(=((ret(strlen)+1 << 0x0) + [a0+176]:8)) (unsigned), and falls through when a0(=[a0+184]:8) >= a1(=((ret(strlen)+1 << 0x0) + [a0+176]:8)) (unsigned).
  The `beq` branch at 0x2004734 targets 0x2004750 and is always taken.
  The `bne` branch at 0x2004760 targets 0x200484c, is taken when t0(=[a0+184]:8) < t1(=table(0x4)) (unsigned), and falls through when t0(=[a0+184]:8) >= t1(=table(0x4)) (unsigned).
  The `bne` branch at 0x20047b4 targets 0x20047c4, is taken when v0(=[a0+2392]:8) != s3(=sp-144), and falls through when v0(=[a0+2392]:8) == s3(=sp-144).
  The `beq` branch at 0x20047bc targets 0x20047d4 and is always taken.
  The `beq` branch at 0x20047d8 targets 0x20047ec, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x20047f4 targets 0x2004804, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2004814 targets 0x2004868, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x2004844 targets 0x2004628 and is always taken.
  The `beq` branch at 0x2004854 targets 0x2004768 and is always taken.
  The `beq` branch at 0x2004860 targets 0x2004750 and is always taken.
  The return at 0x2004830 has v0 = 0x0.
  The return at 0x2004874 has v0 = 0x1.
  The return at 0x20048a4 has v0 = 0x0.

- `XSGIvcFreeVideoFormatInfo` in `usr/lib64/libXsgivc.so` at 0x20048b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x20048b0-0x20048ec (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0x20048dc calls free with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x20048c0 targets 0x20048d4, is taken when a0 != 0, and falls through when a0 == 0.
  The `beq` branch at 0x20048e4 targets 0x20048c8 and is always taken.
  The return at 0x20048cc has v0 = one of ?, ret(free).

- `XSGIvcListVideoFormats` in `usr/lib64/libXsgivc.so` at 0x20048f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x20048f0-0x2004c7c (908 bytes).
  It occupies 908 bytes.
  2 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x2004950, `ld` at 0x20049d8.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2004964, `ld` at 0x2004a54, `ld` at 0x2004b40.
  The `ld` at 0x2004970 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x200497c, `ld` at 0x20049c0, `ld` at 0x2004bc0.
  The `ld` at 0x2004980 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x20049a4 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x20049ac stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x20049b4, `sb` at 0x2004a20.
  The `ld` at 0x20049b8 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x20049cc stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x20049d4 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `lw` at 0x20049e0 loads 4 bytes from [ret(find_display)+16]:8 +0x4.
  The `sw` at 0x20049e4 stores 4 bytes to [a0+176]:8 +0x8.
  The `sb` at 0x20049e8 stores 1 byte to [a0+176]:8 +0x1.
  The `sw` at 0x20049ec stores 4 bytes to [a0+176]:8 +0x14.
  The `sw` at 0x20049f0 stores 4 bytes to [a0+176]:8 +0x10.
  The `sb` at 0x2004a08 stores 1 byte to [a0+176]:8 +0xc.
  The `sw` at 0x2004a14 stores 4 bytes to [a0+176]:8 +0x4.
  The `sw` at 0x2004a50 stores 4 bytes to a7 (arg7 at entry) +0x0.
  5 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2004a60, `ld` at 0x2004b4c, `ld` at 0x2004bd0.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2004a6c, `ld` at 0x2004b58, `ld` at 0x2004bdc.
  2 such `lw` accesses load 4 bytes from a7 (arg7 at entry) +0x0, including `lw` at 0x2004adc, `lw` at 0x2004b20.
  The `bgezall` at 0x2004940 calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2004974 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+2408]:8.
  The `bgezall` at 0x2004a1c calls GenerateVFList [0x20078b0] with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=(a4 << 0x0), a3=[a0+176]:8+2, a4=[[ret(find_display)+16]:8+4], a5=0x2, a6=a1 at entry (arg1), a7=0x1.
  The `jalr` at 0x2004a34 calls _XReply with a0=a0 at entry (arg0), a1=sp-208, a2=0x0, a3=0x0.
  The `jalr` at 0x2004a64 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+2408]:8.
  The `jalr` at 0x2004a78 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2004acc calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0x2004b18 calls ReadFormatInfo [0x2006730] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2004b50 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+2408]:8.
  The `jalr` at 0x2004b64 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2004bb4 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2004bd4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2004be8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2004c08 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2004c1c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2004c38 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `jalr` at 0x2004c58 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+2408]:8.
  The `jalr` at 0x2004c6c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2004948 targets 0x2004c2c, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x2004954 targets 0x2004c30, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x200495c targets 0x2004b8c, is taken when s2(=a3) == 0, and falls through when s2(=a3) != 0.
  The `beq` branch at 0x2004968 targets 0x200497c, is taken when a3(=[a0+2408]:8) == 0, and falls through when a3(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2004990 targets 0x2004bb0, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+24) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+24) (unsigned).
  The `beq` branch at 0x2004a3c targets 0x2004bc4, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0x2004a44 targets 0x2004bf8, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bgtz` branch at 0x2004a4c targets 0x2004aa0, is taken when t8(?) > 0 (signed), and falls through when t8(?) <= 0 (signed).
  The `beq` branch at 0x2004a58 targets 0x2004a6c, is taken when a3(=[a0+2408]:8) == 0, and falls through when a3(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2004a70 targets 0x2004a80, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2004ad4 targets 0x2004c48, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `blez` branch at 0x2004ae4 targets 0x2004b40, is taken when t9(=[a7]) <= 0 (signed), and falls through when t9(=[a7]) > 0 (signed).
  The `bne` branch at 0x2004b34 targets 0x2004b10, is taken when s3(?) < ra(=[a7]) (signed), and falls through when s3(?) >= ra(=[a7]) (signed).
  The `beq` branch at 0x2004b44 targets 0x2004b58, is taken when a3(=[a0+2408]:8) == 0, and falls through when a3(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2004b5c targets 0x2004b70, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2004bbc targets 0x2004994 and is always taken.
  The `beq` branch at 0x2004bc8 targets 0x2004bdc, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2004be0 targets 0x2004bf0, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2004bf0 targets 0x2004b70 and is always taken.
  The `beq` branch at 0x2004bfc targets 0x2004c10, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2004c14 targets 0x2004c24, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2004c24 targets 0x2004b70 and is always taken.
  The `beq` branch at 0x2004c40 targets 0x2004b70 and is always taken.
  The `beq` branch at 0x2004c4c targets 0x2004c60, is taken when a3(=[a0+2408]:8) == 0, and falls through when a3(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2004c64 targets 0x2004c74, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2004c74 targets 0x2004b70 and is always taken.
  The return at 0x2004a98 has v0 = 0x0.
  The return at 0x2004b84 has v0 = one of ?, 0x0.
  The return at 0x2004ba8 has v0 = 0x0.

- `XSGIvcDisableChannel` in `usr/lib64/libXsgivc.so` at 0x2004c80 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2004c80-0x2004ee0 (608 bytes).
  It occupies 608 bytes.
  3 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x2004cc4, `ld` at 0x2004d3c, `ld` at 0x2004d68.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2004cd0, `ld` at 0x2004e2c.
  The `ld` at 0x2004cdc loads 8 bytes from [a0+2408]:8 +0x0.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2004ce8, `ld` at 0x2004d24, `ld` at 0x2004da0.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb8, including `ld` at 0x2004cec, `ld` at 0x2004da8.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0xa0, including `sd` at 0x2004d08, `sd` at 0x2004dbc.
  2 such `sh` accesses store 2 bytes to [a0+176]:8 +0x2, including `sh` at 0x2004d10, `sh` at 0x2004dcc.
  3 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2004d18, `sb` at 0x2004d4c, `sb` at 0x2004dc4.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x98, including `ld` at 0x2004d1c, `ld` at 0x2004d50, `ld` at 0x2004d58.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x98, including `sd` at 0x2004d30, `sd` at 0x2004df8.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0xb0, including `sd` at 0x2004d38, `sd` at 0x2004e04.
  2 such `lw` accesses load 4 bytes from [ret(find_display)+16]:8 +0x4, including `lw` at 0x2004d44, `lw` at 0x2004d70.
  The `sb` at 0x2004d48 stores 1 byte to [a0+176]:8 +0x1.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x958, including `ld` at 0x2004d80, `ld` at 0x2004e08.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x958, including `sd` at 0x2004d94, `sd` at 0x2004e18.
  The `sw` at 0x2004d98 stores 4 bytes to [a0+176]:8 +0x4.
  The `sw` at 0x2004d9c stores 4 bytes to [a0+176]:8 +0x8.
  The `ld` at 0x2004e38 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x2004e44 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `bgezall` at 0x2004cb4 calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2004ce0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2004e00 calls _XReply with a0=a0 at entry (arg0), a1=sp-88, a2=0x0, a3=0x1, a4=[a0+176]:8+4, a5=0x4, a6=[a0+152]:8+1, a7=0x1.
  The `jalr` at 0x2004e24 calls _XDeqAsyncHandler with a0=a0 at entry (arg0), a1=sp-144, a2=?, a3=?.
  The `jalr` at 0x2004e3c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2004e50 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2004e88 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+176]:8.
  The `jalr` at 0x2004e98 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=[a0+176]:8+4, a3=a2 at entry (arg2), a4=a1 at entry (arg1), a5=sp-120, a6=[a0+176]:8, a7=sym(_XAsyncErrorHandler).
  The `jalr` at 0x2004ec0 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x2004cbc targets 0x2004eb4, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x2004cc8 targets 0x2004eb8, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x2004cd4 targets 0x2004ce8, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2004cfc targets 0x2004e88, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+12) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+12) (unsigned).
  The `bne` branch at 0x2004db4 targets 0x2004e98, is taken when a1(=[a0+184]:8) < a2(=[a0+176]:8+4) (unsigned), and falls through when a1(=[a0+184]:8) >= a2(=[a0+176]:8+4) (unsigned).
  The `bne` branch at 0x2004e0c targets 0x2004e1c, is taken when t1(=[a0+2392]:8) != s1(=sp-144), and falls through when t1(=[a0+2392]:8) == s1(=sp-144).
  The `beq` branch at 0x2004e14 targets 0x2004e2c and is always taken.
  The `beq` branch at 0x2004e30 targets 0x2004e44, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2004e48 targets 0x2004e58, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2004e68 targets 0x2004ea8, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x2004e90 targets 0x2004d04 and is always taken.
  The `beq` branch at 0x2004ea0 targets 0x2004dbc and is always taken.
  The return at 0x2004e80 has v0 = 0x0.
  The return at 0x2004eac has v0 = 0x1.
  The return at 0x2004ed8 has v0 = 0x0.

- `XSGIvcQueryOutputPhaseSCH` in `usr/lib64/libXsgivc.so` at 0x2004ee0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2004ee0-0x2004f20 (64 bytes).
  It occupies 64 bytes.
  The `bgezall` at 0x2004f08 calls QueryOneControl [0x2009250] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x8, a4=a3 at entry (arg3).
  The return at 0x2004f18 has v0 = ret(QueryOneControl).

- `XSGIvcQueryOutputPedestal` in `usr/lib64/libXsgivc.so` at 0x2004f20 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2004f20-0x2004f60 (64 bytes).
  It occupies 64 bytes.
  The `bgezall` at 0x2004f48 calls QueryOneControl [0x2009250] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x6, a4=a3 at entry (arg3).
  The return at 0x2004f58 has v0 = ret(QueryOneControl).

- `XSGIvcQueryScreenGammaMaps` in `usr/lib64/libXsgivc.so` at 0x2004f60 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2004f60-0x200511c (444 bytes).
  It occupies 444 bytes.
  2 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x2004fa4, `ld` at 0x200501c.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2004fb0, `ld` at 0x2005058, `ld` at 0x20050ac.
  The `ld` at 0x2004fbc loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2004fc8, `ld` at 0x2005004, `ld` at 0x20050a8.
  The `ld` at 0x2004fcc loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2004fe8 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2004ff0 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2004ff8, `sb` at 0x2005044.
  The `ld` at 0x2004ffc loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2005010 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2005018 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `lw` at 0x2005024 loads 4 bytes from [ret(find_display)+16]:8 +0x4.
  The `sw` at 0x200502c stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2005038 stores 1 byte to [a0+176]:8 +0x1.
  The `sw` at 0x2005054 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2005064, `ld` at 0x20050b8.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2005070, `ld` at 0x20050c4.
  The `bgezall` at 0x2004f94 calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2004fc0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x2005040 calls _XReply with a0=a0 at entry (arg0), a1=sp-80, a2=0x0, a3=0x1, a4=[[ret(find_display)+16]:8+4], a5=0x12, a6=a1 at entry (arg1), a7=0x1.
  The `jalr` at 0x2005068 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x200507c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x200509c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20050bc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x20050d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20050fc calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x2004f9c targets 0x20050f0, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x2004fa8 targets 0x20050f4, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x2004fb4 targets 0x2004fc8, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2004fdc targets 0x200509c, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+8) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+8) (unsigned).
  The `beq` branch at 0x2005048 targets 0x20050ac, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0x200505c targets 0x2005070, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2005074 targets 0x2005084, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x20050a4 targets 0x2004fe4 and is always taken.
  The `beq` branch at 0x20050b0 targets 0x20050c4, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `beq` branch at 0x20050c8 targets 0x20050d8, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The return at 0x2005094 has v0 = ?.
  The return at 0x20050e8 has v0 = 0x0.
  The return at 0x2005114 has v0 = 0x0.

- `XSGIvcNVLoadVideoFormatByName` in `usr/lib64/libXsgivc.so` at 0x2005120 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2005120-0x200541c (764 bytes).
  It occupies 764 bytes.
  3 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x2005168, `ld` at 0x20051ec, `ld` at 0x2005218.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2005174, `ld` at 0x200536c.
  The `ld` at 0x2005180 loads 8 bytes from [a0+2408]:8 +0x0.
  9 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x200518c, `ld` at 0x20051d4, `ld` at 0x2005290.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb8, including `ld` at 0x2005190, `ld` at 0x2005294, `ld` at 0x20052e4.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0xa0, including `sd` at 0x20051ac, `sd` at 0x20052fc.
  The `sh` at 0x20051b4 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x20051c8, `sb` at 0x20051fc.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x98, including `ld` at 0x20051cc, `ld` at 0x2005200, `ld` at 0x2005208.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x98, including `sd` at 0x20051e0, `sd` at 0x2005338.
  3 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0xb0, including `sd` at 0x20051e8, `sd` at 0x20052cc, `sd` at 0x2005344.
  2 such `lw` accesses load 4 bytes from [ret(find_display)+16]:8 +0x4, including `lw` at 0x20051f4, `lw` at 0x2005220.
  The `sb` at 0x20051f8 stores 1 byte to [a0+176]:8 +0x1.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x958, including `ld` at 0x2005230, `ld` at 0x2005348.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x958, including `sd` at 0x2005244, `sd` at 0x2005358.
  The `sw` at 0x200524c stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0x2005250 stores 4 bytes to [a0+176]:8 +0x8.
  The `sw` at 0x2005258 stores 4 bytes to [a0+176]:8 +0x4.
  The `lhu` at 0x2005270 loads 2 bytes from ?.
  The `sw` at 0x2005274 stores 4 bytes to ?.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x200528c, `sh` at 0x2005304.
  The `sb` at 0x200530c stores 1 byte to ?.
  The `ld` at 0x2005378 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x2005384 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `bgezall` at 0x2005158 calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2005184 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2005254 calls strlen with a0=a3 at entry (arg3), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?, a4=0x1, a5=sp-136, a6=[a0+176]:8, a7=sym(_XAsyncErrorHandler).
  The `jalr` at 0x20052ac calls memcpy with a0=[a0+176]:8, a1=a3 at entry (arg3), a2=(ret(strlen)+1 << 0x0), a3=ret(strlen)+1, a5=((ret(strlen)+1 << 0x0) + [a0+176]:8), a6=[a0+176]:8.
  The `jalr` at 0x20052d8 calls _XSend with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=(ret(strlen)+1 << 0x0), a3=ret(strlen)+1, a5=((ret(strlen)+1 << 0x0) + [a0+176]:8), a6=[a0+176]:8.
  The `jalr` at 0x2005340 calls _XReply with a0=a0 at entry (arg0), a1=sp-104, a2=0x0, a3=0x1.
  The `jalr` at 0x2005364 calls _XDeqAsyncHandler with a0=a0 at entry (arg0), a1=sp-160, a2=?, a3=?.
  The `jalr` at 0x200537c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2005390 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20053d0 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+176]:8.
  The `jalr` at 0x20053e0 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x200540c calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x2005160 targets 0x2005400, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x200516c targets 0x2005404, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x2005178 targets 0x200518c, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `bne` branch at 0x20051a0 targets 0x20053d0, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+20) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+20) (unsigned).
  The `blez` branch at 0x2005278 targets 0x20053f0, is taken when a2(=(ret(strlen)+1 << 0x0)) <= 0 (signed), and falls through when a2(=(ret(strlen)+1 << 0x0)) > 0 (signed).
  The `bne` branch at 0x20052a0 targets 0x20052d0, is taken when a4(=[a0+184]:8) < a5(=((ret(strlen)+1 << 0x0) + [a0+176]:8)) (unsigned), and falls through when a4(=[a0+184]:8) >= a5(=((ret(strlen)+1 << 0x0) + [a0+176]:8)) (unsigned).
  The `beq` branch at 0x20052c8 targets 0x20052e4 and is always taken.
  The `bne` branch at 0x20052f4 targets 0x20053e0, is taken when t1(=[a0+184]:8) < t2(=table(0x4)) (unsigned), and falls through when t1(=[a0+184]:8) >= t2(=table(0x4)) (unsigned).
  The `bne` branch at 0x200534c targets 0x200535c, is taken when a0(=[a0+2392]:8) != sp(=sp-160), and falls through when a0(=[a0+2392]:8) == sp(=sp-160).
  The `beq` branch at 0x2005354 targets 0x200536c and is always taken.
  The `beq` branch at 0x2005370 targets 0x2005384, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2005388 targets 0x200539c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x200539c targets 0x20053f8, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x20053d8 targets 0x20051a8 and is always taken.
  The `beq` branch at 0x20053e8 targets 0x20052fc and is always taken.
  The `beq` branch at 0x20053f0 targets 0x20052e4 and is always taken.
  The `beq` branch at 0x20053f8 targets 0x20053c0 and is always taken.
  The `beq` branch at 0x2005414 targets 0x20053bc and is always taken.
  The return at 0x20053b4 has v0 = 0x0.
  The return at 0x20053c8 has v0 = one of 0x0, 0x1.

- `XSGIvcStoreGammaColors16` in `usr/lib64/libXsgivc.so` at 0x2005420 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2005420-0x20055f8 (472 bytes).
  It occupies 472 bytes.
  2 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x2005470, `ld` at 0x20054f8.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x200547c, `ld` at 0x2005588.
  The `ld` at 0x2005488 loads 8 bytes from [a0+2408]:8 +0x0.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2005494, `ld` at 0x20054e0, `ld` at 0x200552c.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb8, including `ld` at 0x2005498, `ld` at 0x2005534.
  The `sd` at 0x20054c4 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  2 such `sh` accesses store 2 bytes to [a0+176]:8 +0x2, including `sh` at 0x20054cc, `sh` at 0x2005524.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x20054d4, `sb` at 0x2005528.
  The `ld` at 0x20054d8 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x20054ec stores 8 bytes to a0 (arg0 at entry) +0x98.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0xb0, including `sd` at 0x20054f4, `sd` at 0x2005570.
  The `lhu` at 0x20054fc loads 2 bytes from [a0+176]:8 +0x2.
  The `lw` at 0x2005500 loads 4 bytes from [ret(find_display)+16]:8 +0x4.
  The `sb` at 0x2005504 stores 1 byte to [a0+176]:8 +0x1.
  The `sw` at 0x2005508 stores 4 bytes to [a0+176]:8 +0x4.
  The `sw` at 0x200550c stores 4 bytes to [a0+176]:8 +0x8.
  The `sw` at 0x2005514 stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0x200551c stores 4 bytes to [a0+176]:8 +0x10.
  The `ld` at 0x2005594 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x20055a0 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `bgezall` at 0x2005460 calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x200548c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x200554c calls memcpy with a0=[a0+176]:8, a1=a5 at entry (arg5), a2=(a3 + a3), a3=([a0+176]:8 + (a3 + a3)), a4=[a0+176]:8+20, a5=0x14, a6=0x5.
  The `jalr` at 0x2005580 calls _XSend with a0=a0 at entry (arg0), a1=a5 at entry (arg5), a2=(a3 + a3), a3=([a0+176]:8 + (a3 + a3)), a4=[a0+176]:8+20, a5=0x14, a6=0x5.
  The `jalr` at 0x2005598 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20055ac calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20055cc calls _XFlush with a0=a0 at entry (arg0), a1=[a0+176]:8+20, a2=?, a3=?.
  The `jalr` at 0x20055e8 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x2005468 targets 0x20055e0, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x2005474 targets 0x20055e4, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x2005480 targets 0x2005494, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `bne` branch at 0x20054a8 targets 0x20055cc, is taken when v1(=[a0+184]:8) < a1(=[a0+176]:8+20) (unsigned), and falls through when v1(=[a0+184]:8) >= a1(=[a0+176]:8+20) (unsigned).
  The `bne` branch at 0x2005540 targets 0x2005574, is taken when a2(=[a0+184]:8) < a3(=([a0+176]:8 + (a3 + a3))) (unsigned), and falls through when a2(=[a0+184]:8) >= a3(=([a0+176]:8 + (a3 + a3))) (unsigned).
  The `beq` branch at 0x200556c targets 0x2005588 and is always taken.
  The `beq` branch at 0x200558c targets 0x20055a0, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x20055a4 targets 0x20055b4, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x20055d8 targets 0x20054b0 and is always taken.
  The `beq` branch at 0x20055f0 targets 0x20055b8 and is always taken.
  The return at 0x20055c4 has v0 = one of ?, ret(XMissingExtension).

- `XSGIvcQueryVersion` in `usr/lib64/libXsgivc.so` at 0x2005600 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2005600-0x20057c8 (456 bytes).
  It occupies 456 bytes.
  2 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x2005644, `ld` at 0x20056b4.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2005650, `ld` at 0x2005708, `ld` at 0x200578c.
  The `ld` at 0x200565c loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2005668, `ld` at 0x200569c, `ld` at 0x2005788.
  The `ld` at 0x200566c loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2005684 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x200568c stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2005690, `sb` at 0x20056e4.
  The `ld` at 0x2005694 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x20056a8 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x20056b0 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `lw` at 0x20056bc loads 4 bytes from [ret(find_display)+16]:8 +0x4.
  The `sh` at 0x20056c4 stores 2 bytes to [a0+176]:8 +0x6.
  The `sh` at 0x20056cc stores 2 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x20056d8 stores 1 byte to [a0+176]:8 +0x1.
  The `sw` at 0x20056fc stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0x2005704 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2005714, `ld` at 0x2005798.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2005720, `ld` at 0x20057a4.
  The `lw` at 0x2005738 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `bgezall` at 0x2005634 calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2005660 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20056e0 calls _XReply with a0=a0 at entry (arg0), a1=sp-80, a2=0x0, a3=0x1, a4=[[ret(find_display)+16]:8+4], a5=0x3, a6=0x1, a7=[a0+176]:8+8.
  The `jalr` at 0x2005718 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x200572c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x200577c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x200579c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20057b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x200563c targets 0x2005760, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x2005648 targets 0x2005764, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x2005654 targets 0x2005668, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `bne` branch at 0x200567c targets 0x200577c, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+8) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+8) (unsigned).
  The `beq` branch at 0x20056e8 targets 0x200578c, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0x200570c targets 0x2005720, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2005724 targets 0x2005738, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2005740 targets 0x20057c0, is taken when ra(=[a1]) == at(=0x1), and falls through when ra(=[a1]) != at(=0x1).
  The `beq` branch at 0x2005784 targets 0x2005684 and is always taken.
  The `beq` branch at 0x2005790 targets 0x20057a4, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x20057a8 targets 0x20057b8, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x20057b8 targets 0x200574c and is always taken.
  The `beq` branch at 0x20057c0 targets 0x2005750 and is always taken.
  The return at 0x2005758 has v0 = one of 0x0, 0x1.
  The return at 0x2005774 has v0 = 0x0.

- `XSGIvcInitMonitorBaseProtocol` in `usr/lib64/libXsgivc.so` at 0x20057d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x20057d0-0x2005914 (324 bytes).
  It occupies 324 bytes.
  2 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x2005814, `ld` at 0x2005888.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2005820, `ld` at 0x20058a4.
  The `ld` at 0x200582c loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2005838, `ld` at 0x2005870, `ld` at 0x20058f8.
  The `ld` at 0x200583c loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2005854 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x200585c stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2005864, `sb` at 0x20058a0.
  The `ld` at 0x2005868 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x200587c stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2005884 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `lw` at 0x2005890 loads 4 bytes from [ret(find_display)+16]:8 +0x4.
  The `sw` at 0x2005894 stores 4 bytes to [a0+176]:8 +0x8.
  The `sw` at 0x2005898 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x200589c stores 1 byte to [a0+176]:8 +0x1.
  The `ld` at 0x20058b0 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x20058bc loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `bgezall` at 0x2005804 calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2005830 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x20058b4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a1 at entry (arg1), a3=0x23, a4=[[ret(find_display)+16]:8+4], a5=[a0+2408]:8, a6=0x1, a7=[a0+176]:8+12.
  The `jalr` at 0x20058c8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20058ec calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0x2005904 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x200580c targets 0x20058fc, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x2005818 targets 0x2005900, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x2005824 targets 0x2005838, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `bne` branch at 0x200584c targets 0x20058e8, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+12) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+12) (unsigned).
  The `beq` branch at 0x20058a8 targets 0x20058bc, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `beq` branch at 0x20058c0 targets 0x20058d4, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x20058f4 targets 0x2005850 and is always taken.
  The `beq` branch at 0x200590c targets 0x20058d4 and is always taken.
  The return at 0x20058e0 has v0 = one of ?, ret(?), ret(XMissingExtension).

- `ReadFieldInfo` in `usr/lib64/libXsgivc.so` at 0x2005920 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2005920-0x2005998 (120 bytes).
  It occupies 120 bytes.
  The `sw` at 0x2005948 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0x2005950 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `sw` at 0x2005958 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `sw` at 0x2005960 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `sw` at 0x2005968 stores 4 bytes to a1 (arg1 at entry) +0x10.
  The `sw` at 0x2005970 stores 4 bytes to a1 (arg1 at entry) +0x14.
  The `sw` at 0x2005978 stores 4 bytes to a1 (arg1 at entry) +0x18.
  The `sd` at 0x2005980 stores 8 bytes to a1 (arg1 at entry) +0x20.
  The `sd` at 0x2005988 stores 8 bytes to a1 (arg1 at entry) +0x28.
  The `jalr` at 0x2005938 calls _XRead with a0=a0 at entry (arg0), a1=sp-64, a2=0x24, a3=a3 at entry (arg3).
  The return at 0x2005990 has v0 = ?.

- `XSGIvcLoadVideoFormatByName` in `usr/lib64/libXsgivc.so` at 0x20059a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x20059a0-0x2005cbc (796 bytes).
  It occupies 796 bytes.
  3 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x20059ec, `ld` at 0x2005a68, `ld` at 0x2005a94.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x20059f8, `ld` at 0x2005be0.
  The `ld` at 0x2005a04 loads 8 bytes from [a0+2408]:8 +0x0.
  9 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2005a10, `ld` at 0x2005a50, `ld` at 0x2005b04.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb8, including `ld` at 0x2005a14, `ld` at 0x2005b08, `ld` at 0x2005b5c.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0xa0, including `sd` at 0x2005a34, `sd` at 0x2005b74.
  2 such `sh` accesses store 2 bytes to [a0+176]:8 +0x2, including `sh` at 0x2005a3c, `sh` at 0x2005b00.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2005a44, `sb` at 0x2005a78.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x98, including `ld` at 0x2005a48, `ld` at 0x2005a7c, `ld` at 0x2005a84.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x98, including `sd` at 0x2005a5c, `sd` at 0x2005bac.
  3 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0xb0, including `sd` at 0x2005a64, `sd` at 0x2005b40, `sd` at 0x2005bb8.
  2 such `lw` accesses load 4 bytes from [ret(find_display)+16]:8 +0x4, including `lw` at 0x2005a70, `lw` at 0x2005a9c.
  The `sb` at 0x2005a74 stores 1 byte to [a0+176]:8 +0x1.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x958, including `ld` at 0x2005aac, `ld` at 0x2005bbc.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x958, including `sd` at 0x2005ac0, `sd` at 0x2005bcc.
  The `sw` at 0x2005ac4 stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0x2005acc stores 4 bytes to [a0+176]:8 +0x8.
  The `sw` at 0x2005ad8 stores 4 bytes to [a0+176]:8 +0x4.
  The `lhu` at 0x2005ae8 loads 2 bytes from [a0+176]:8 +0x2.
  The `sw` at 0x2005aec stores 4 bytes to [a0+176]:8 +0x10.
  The `sh` at 0x2005b7c stores 2 bytes to ?.
  The `sb` at 0x2005b84 stores 1 byte to ?.
  The `ld` at 0x2005bec loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x2005bf8 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `bgezall` at 0x20059dc calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2005a08 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2005ad4 calls strlen with a0=a3 at entry (arg3), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=sp-136, a4=sym(_XAsyncErrorHandler), a5=[a0+2392]:8, a6=[a0+176]:8, a7=0x22.
  The `jalr` at 0x2005b24 calls memcpy with a0=[a0+176]:8, a1=a3 at entry (arg3), a2=(ret(strlen)+1 << 0x0), a3=?, a6=[a0+176]:8.
  The `jalr` at 0x2005b50 calls _XSend with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=(ret(strlen)+1 << 0x0), a3=?, a6=[a0+176]:8.
  The `jalr` at 0x2005bb4 calls _XReply with a0=a0 at entry (arg0), a1=sp-104, a2=0x0, a3=0x1.
  The `jalr` at 0x2005bd8 calls _XDeqAsyncHandler with a0=a0 at entry (arg0), a1=sp-160, a2=?, a3=?.
  The `jalr` at 0x2005bf0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2005c08 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2005c48 calls _XFlush with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a6=[a0+176]:8.
  The `jalr` at 0x2005c5c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2005c98 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x20059e4 targets 0x2005c8c, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x20059f0 targets 0x2005c90, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x20059fc targets 0x2005a10, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2005a24 targets 0x2005c44, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+20) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+20) (unsigned).
  The `blez` branch at 0x2005af0 targets 0x2005c6c, is taken when a2(=(ret(strlen)+1 << 0x0)) <= 0 (signed), and falls through when a2(=(ret(strlen)+1 << 0x0)) > 0 (signed).
  The `bne` branch at 0x2005b14 targets 0x2005b44, is taken when a0(=[a0+184]:8) < a1(=((ret(strlen)+1 << 0x0) + [a0+176]:8)) (unsigned), and falls through when a0(=[a0+184]:8) >= a1(=((ret(strlen)+1 << 0x0) + [a0+176]:8)) (unsigned).
  The `beq` branch at 0x2005b3c targets 0x2005b5c and is always taken.
  The `bne` branch at 0x2005b6c targets 0x2005c5c, is taken when t0(=[a0+184]:8) < t1(=table(0x4)) (unsigned), and falls through when t0(=[a0+184]:8) >= t1(=table(0x4)) (unsigned).
  The `bne` branch at 0x2005bc0 targets 0x2005bd0, is taken when v0(=[a0+2392]:8) != s3(=sp-160), and falls through when v0(=[a0+2392]:8) == s3(=sp-160).
  The `beq` branch at 0x2005bc8 targets 0x2005be0 and is always taken.
  The `beq` branch at 0x2005be4 targets 0x2005bf8, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2005c00 targets 0x2005c10, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2005c20 targets 0x2005c78, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x2005c54 targets 0x2005a28 and is always taken.
  The `beq` branch at 0x2005c64 targets 0x2005b74 and is always taken.
  The `beq` branch at 0x2005c70 targets 0x2005b5c and is always taken.
  The return at 0x2005c3c has v0 = 0x0.
  The return at 0x2005c84 has v0 = 0x1.
  The return at 0x2005cb4 has v0 = 0x0.

- `XSGIvcNVListVideoFormats` in `usr/lib64/libXsgivc.so` at 0x2005cc0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2005cc0-0x2006044 (900 bytes).
  It occupies 900 bytes.
  2 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x2005d1c, `ld` at 0x2005dac.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2005d30, `ld` at 0x2005e30, `ld` at 0x2005f14.
  The `ld` at 0x2005d3c loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2005d48, `ld` at 0x2005d98, `ld` at 0x2005f8c.
  The `ld` at 0x2005d4c loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2005d6c stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2005d74 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2005d7c, `sb` at 0x2005df8.
  The `ld` at 0x2005d80 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2005da0 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2005da8 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `lw` at 0x2005db4 loads 4 bytes from [ret(find_display)+16]:8 +0x4.
  The `sw` at 0x2005db8 stores 4 bytes to [a0+176]:8 +0x10.
  The `sw` at 0x2005dbc stores 4 bytes to [a0+176]:8 +0x8.
  The `sb` at 0x2005dc0 stores 1 byte to [a0+176]:8 +0x1.
  The `sw` at 0x2005dc4 stores 4 bytes to [a0+176]:8 +0x14.
  The `sb` at 0x2005dc8 stores 1 byte to [a0+176]:8 +0xd.
  The `sb` at 0x2005de0 stores 1 byte to [a0+176]:8 +0xc.
  The `sw` at 0x2005dec stores 4 bytes to [a0+176]:8 +0x4.
  The `sw` at 0x2005e2c stores 4 bytes to ?.
  5 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2005e3c, `ld` at 0x2005f20, `ld` at 0x2005f9c.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2005e48, `ld` at 0x2005f2c, `ld` at 0x2005fa8.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x2005eb4, `lw` at 0x2005ef4.
  The `bgezall` at 0x2005d0c calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2005d40 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+2408]:8.
  The `bgezall` at 0x2005df4 calls GenerateVFList [0x20078b0] with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=(a4 << 0x0), a3=[a0+176]:8+2, a4=[[ret(find_display)+16]:8+4], a5=0x1e, a6=a1 at entry (arg1).
  The `jalr` at 0x2005e0c calls _XReply with a0=a0 at entry (arg0), a1=sp-208, a2=0x0, a3=0x0.
  The `jalr` at 0x2005e40 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+2408]:8.
  The `jalr` at 0x2005e54 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2005ea4 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0x2005ee8 calls ReadFormatInfo [0x2006730] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2005f24 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+2408]:8.
  The `jalr` at 0x2005f38 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2005f80 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2005fa0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2005fb4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2005fd4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2005fe8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2006000 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `jalr` at 0x2006020 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+2408]:8.
  The `jalr` at 0x2006034 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2005d14 targets 0x2005ff8, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x2005d20 targets 0x2005ffc, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x2005d28 targets 0x2005f60, is taken when s2(=a3) == 0, and falls through when s2(=a3) != 0.
  The `beq` branch at 0x2005d34 targets 0x2005d48, is taken when a3(=[a0+2408]:8) == 0, and falls through when a3(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2005d5c targets 0x2005f80, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+24) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+24) (unsigned).
  The `beq` branch at 0x2005e14 targets 0x2005f90, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0x2005e1c targets 0x2005fc4, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bgtz` branch at 0x2005e28 targets 0x2005e78, is taken when t8(?) > 0 (signed), and falls through when t8(?) <= 0 (signed).
  The `beq` branch at 0x2005e34 targets 0x2005e48, is taken when a3(=[a0+2408]:8) == 0, and falls through when a3(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2005e4c targets 0x2005e5c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2005eac targets 0x2006010, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `blez` branch at 0x2005ebc targets 0x2005f14, is taken when t9(?) <= 0 (signed), and falls through when t9(?) > 0 (signed).
  The `bne` branch at 0x2005f08 targets 0x2005ee0, is taken when s3(?) < ra(?) (signed), and falls through when s3(?) >= ra(?) (signed).
  The `beq` branch at 0x2005f18 targets 0x2005f2c, is taken when a3(=[a0+2408]:8) == 0, and falls through when a3(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2005f30 targets 0x2005f44, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2005f88 targets 0x2005d64 and is always taken.
  The `beq` branch at 0x2005f94 targets 0x2005fa8, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2005fac targets 0x2005fbc, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2005fbc targets 0x2005f44 and is always taken.
  The `beq` branch at 0x2005fc8 targets 0x2005fdc, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2005fe0 targets 0x2005ff0, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2005ff0 targets 0x2005f44 and is always taken.
  The `beq` branch at 0x2006008 targets 0x2005f44 and is always taken.
  The `beq` branch at 0x2006014 targets 0x2006028, is taken when a3(=[a0+2408]:8) == 0, and falls through when a3(=[a0+2408]:8) != 0.
  The `beq` branch at 0x200602c targets 0x200603c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x200603c targets 0x2005f44 and is always taken.
  The return at 0x2005e70 has v0 = 0x0.
  The return at 0x2005f58 has v0 = one of ?, 0x0.
  The return at 0x2005f78 has v0 = 0x0.

- `XSGIvcSetChannelGammaMap` in `usr/lib64/libXsgivc.so` at 0x2006050 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2006050-0x2006090 (64 bytes).
  It occupies 64 bytes.
  The `bgezall` at 0x2006078 calls SetOneControl [0x2009730] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0xa, a4=a3 at entry (arg3).
  The return at 0x2006088 has v0 = ret(SetOneControl).

- `XSGIvcQueryOutputSync` in `usr/lib64/libXsgivc.so` at 0x2006090 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2006090-0x2006260 (464 bytes).
  It occupies 464 bytes.
  2 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x20060dc, `ld` at 0x200615c.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x20060e8, `ld` at 0x20061a0, `ld` at 0x2006200.
  The `ld` at 0x20060f4 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2006100, `ld` at 0x2006148, `ld` at 0x20061fc.
  The `ld` at 0x2006104 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x200611c stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2006124 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x200612c, `sb` at 0x200618c.
  The `ld` at 0x2006130 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2006140 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2006158 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `lw` at 0x2006164 loads 4 bytes from [ret(find_display)+16]:8 +0x4.
  The `sw` at 0x2006168 stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0x200616c stores 4 bytes to [a0+176]:8 +0x4.
  The `sw` at 0x2006174 stores 4 bytes to [a0+176]:8 +0x8.
  The `sb` at 0x2006180 stores 1 byte to [a0+176]:8 +0x1.
  The `sw` at 0x200619c stores 4 bytes to a4 (arg4 at entry) +0x0.
  2 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x20061ac, `ld` at 0x200620c.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x20061b8, `ld` at 0x2006218.
  The `bgezall` at 0x20060cc calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x20060f8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=[a0+2408]:8.
  The `jalr` at 0x2006188 calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x1, a4=[[ret(find_display)+16]:8+4], a5=0xd, a6=a2 at entry (arg2), a7=a1 at entry (arg1).
  The `jalr` at 0x20061b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=[a0+2408]:8.
  The `jalr` at 0x20061c4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20061f0 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2006210 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=[a0+2408]:8.
  The `jalr` at 0x2006224 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2006248 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x20060d4 targets 0x200623c, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x20060e0 targets 0x2006240, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x20060ec targets 0x2006100, is taken when a7(=[a0+2408]:8) == 0, and falls through when a7(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2006114 targets 0x20061f0, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+16) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+16) (unsigned).
  The `beq` branch at 0x2006190 targets 0x2006200, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0x20061a4 targets 0x20061b8, is taken when a7(=[a0+2408]:8) == 0, and falls through when a7(=[a0+2408]:8) != 0.
  The `beq` branch at 0x20061bc targets 0x20061cc, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x20061f8 targets 0x200611c and is always taken.
  The `beq` branch at 0x2006204 targets 0x2006218, is taken when a7(=[a0+2408]:8) == 0, and falls through when a7(=[a0+2408]:8) != 0.
  The `beq` branch at 0x200621c targets 0x200622c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2006234 targets 0x20061e4 and is always taken.
  The `beq` branch at 0x2006258 targets 0x20061e4 and is always taken.
  The return at 0x20061dc has v0 = ?.
  The return at 0x20061e8 has v0 = 0x0.

- `XSGIvcQueryGammaColors` in `usr/lib64/libXsgivc.so` at 0x2006260 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2006260-0x2006530 (720 bytes).
  It occupies 720 bytes.
  2 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x20062b4, `ld` at 0x200633c.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x20062d0, `ld` at 0x2006390, `ld` at 0x200641c.
  The `ld` at 0x20062dc loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x20062e8, `ld` at 0x2006320, `ld` at 0x2006460.
  The `ld` at 0x20062ec loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2006304 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x200630c stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2006314, `sb` at 0x200636c.
  The `ld` at 0x2006318 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2006328 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2006338 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `lw` at 0x2006344 loads 4 bytes from [ret(find_display)+16]:8 +0x4.
  The `sw` at 0x2006348 stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0x200634c stores 4 bytes to [a0+176]:8 +0x8.
  The `sw` at 0x2006354 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2006360 stores 1 byte to [a0+176]:8 +0x1.
  The `sw` at 0x200638c stores 4 bytes to a4 (arg4 at entry) +0x0.
  5 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x200639c, `ld` at 0x2006428, `ld` at 0x2006470.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x20063a8, `ld` at 0x2006434, `ld` at 0x200647c.
  The `sd` at 0x2006418 stores 8 bytes to a5 (arg5 at entry) +0x0.
  The `bgezall` at 0x20062a4 calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x20062e0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2006368 calls _XReply with a0=a0 at entry (arg0), a1=sp-112, a2=0x0, a3=0x0, a4=[[ret(find_display)+16]:8+4], a5=0x16, a6=a1 at entry (arg1), a7=a2 at entry (arg2).
  The `jalr` at 0x20063a0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20063b4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x200640c calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x200642c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2006440 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2006454 calls _XFlush with a0=a0 at entry (arg0), a1=[a0+176]:8+16, a2=?, a3=?.
  The `jalr` at 0x2006474 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2006488 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20064a8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20064bc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20064d8 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `jalr` at 0x20064f4 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0x200650c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2006520 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x20062ac targets 0x20064cc, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x20062b8 targets 0x20064d0, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `blez` branch at 0x20062c0 targets 0x20063d8, is taken when s1(=a3) <= 0 (signed), and falls through when s1(=a3) > 0 (signed).
  The `beq` branch at 0x20062c8 targets 0x20063d8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x20062d4 targets 0x20062e8, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `bne` branch at 0x20062fc targets 0x2006450, is taken when a0(=[a0+184]:8) < a1(=[a0+176]:8+16) (unsigned), and falls through when a0(=[a0+184]:8) >= a1(=[a0+176]:8+16) (unsigned).
  The `beq` branch at 0x2006370 targets 0x2006464, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0x200637c targets 0x2006498, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bgtz` branch at 0x2006388 targets 0x20063f8, is taken when t8(?) > 0 (signed), and falls through when t8(?) <= 0 (signed).
  The `beq` branch at 0x2006394 targets 0x20063a8, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x20063ac targets 0x20063c0, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `bne` branch at 0x2006414 targets 0x20064e8, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0x2006420 targets 0x2006434, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2006438 targets 0x2006448, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2006448 targets 0x20063e0 and is always taken.
  The `beq` branch at 0x200645c targets 0x2006300 and is always taken.
  The `beq` branch at 0x2006468 targets 0x200647c, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2006480 targets 0x2006490, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2006490 targets 0x20063e0 and is always taken.
  The `beq` branch at 0x200649c targets 0x20064b0, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x20064b4 targets 0x20064c4, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x20064c4 targets 0x20063e0 and is always taken.
  The `beq` branch at 0x20064e0 targets 0x20063e0 and is always taken.
  The `beq` branch at 0x2006500 targets 0x2006514, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2006518 targets 0x2006528, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2006528 targets 0x20063e0 and is always taken.
  The return at 0x20063d0 has v0 = 0x0.
  The return at 0x20063f0 has v0 = one of 0x0, 0x1.

- `XSGIvcQueryGammaMap` in `usr/lib64/libXsgivc.so` at 0x2006530 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2006530-0x2006714 (484 bytes).
  It occupies 484 bytes.
  2 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x2006580, `ld` at 0x20065fc.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x200658c, `ld` at 0x2006654, `ld` at 0x20066b4.
  The `ld` at 0x2006598 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x20065a4, `ld` at 0x20065e0, `ld` at 0x20066b0.
  The `ld` at 0x20065a8 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x20065c4 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x20065cc stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x20065d4, `sb` at 0x2006628.
  The `ld` at 0x20065d8 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x20065e8 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x20065f8 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `lw` at 0x2006604 loads 4 bytes from [ret(find_display)+16]:8 +0x4.
  The `sw` at 0x2006608 stores 4 bytes to [a0+176]:8 +0x8.
  The `sw` at 0x2006610 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x200661c stores 1 byte to [a0+176]:8 +0x1.
  The `sw` at 0x2006640 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `sw` at 0x2006648 stores 4 bytes to a4 (arg4 at entry) +0x0.
  The `sw` at 0x2006650 stores 4 bytes to a5 (arg5 at entry) +0x0.
  2 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2006660, `ld` at 0x20066c0.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x200666c, `ld` at 0x20066cc.
  The `bgezall` at 0x2006570 calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x200659c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2006624 calls _XReply with a0=a0 at entry (arg0), a1=sp-112, a2=0x0, a3=0x1, a4=[[ret(find_display)+16]:8+4], a5=0x13, a6=a1 at entry (arg1), a7=a2 at entry (arg2).
  The `jalr` at 0x2006664 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2006678 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20066a4 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20066c4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20066d8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20066fc calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x2006578 targets 0x20066f0, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x2006584 targets 0x20066f4, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x2006590 targets 0x20065a4, is taken when t0(=[a0+2408]:8) == 0, and falls through when t0(=[a0+2408]:8) != 0.
  The `bne` branch at 0x20065b8 targets 0x20066a4, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+12) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+12) (unsigned).
  The `beq` branch at 0x200662c targets 0x20066b4, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0x2006658 targets 0x200666c, is taken when t0(=[a0+2408]:8) == 0, and falls through when t0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2006670 targets 0x2006680, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x20066ac targets 0x20065c0 and is always taken.
  The `beq` branch at 0x20066b8 targets 0x20066cc, is taken when t0(=[a0+2408]:8) == 0, and falls through when t0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x20066d0 targets 0x20066e0, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x20066e8 targets 0x2006698 and is always taken.
  The `beq` branch at 0x200670c targets 0x2006698 and is always taken.
  The return at 0x2006690 has v0 = ?.
  The return at 0x200669c has v0 = 0x0.

- `error_string` in `usr/lib64/libXsgivc.so` at 0x2006720 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2006720-0x2006728 (8 bytes).
  It occupies 8 bytes.
  The return at 0x2006720 has v0 = 0x0.

- `ReadFormatInfo` in `usr/lib64/libXsgivc.so` at 0x2006730 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2006730-0x20068a4 (372 bytes).
  It occupies 372 bytes.
  The `sw` at 0x2006764 stores 4 bytes to a1 (arg1 at entry) +0x104.
  The `sw` at 0x200676c stores 4 bytes to a1 (arg1 at entry) +0x100.
  The `sw` at 0x2006774 stores 4 bytes to a1 (arg1 at entry) +0x10c.
  The `sw` at 0x200677c stores 4 bytes to a1 (arg1 at entry) +0x108.
  The `swc1` at 0x20067a0 stores 4 bytes to a1 (arg1 at entry) +0x110.
  The `swc1` at 0x20067c4 stores 4 bytes to a1 (arg1 at entry) +0x114.
  The `sw` at 0x20067cc stores 4 bytes to a1 (arg1 at entry) +0x118.
  The `sw` at 0x20067d4 stores 4 bytes to a1 (arg1 at entry) +0x11c.
  The `sw` at 0x20067dc stores 4 bytes to a1 (arg1 at entry) +0x120.
  The `sw` at 0x20067e4 stores 4 bytes to a1 (arg1 at entry) +0x124.
  The `sw` at 0x20067ec stores 4 bytes to a1 (arg1 at entry) +0x128.
  The `sd` at 0x20067f4 stores 8 bytes to a1 (arg1 at entry) +0x138.
  The `sw` at 0x2006800 stores 4 bytes to a1 (arg1 at entry) +0x12c.
  The `sd` at 0x2006874 stores 8 bytes to a1 (arg1 at entry) +0x130.
  The `jalr` at 0x2006758 calls _XRead with a0=a0 at entry (arg0), a1=sp-112, a2=0x30, a3=a3 at entry (arg3).
  The `jalr` at 0x2006808 calls _XReadPad with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `bgezall` at 0x2006848 calls ReadFieldInfo [0x2005920] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2006814 targets 0x2006874, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x2006860 targets 0x2006840, is taken when s2(?) < ra(?) (unsigned), and falls through when s2(?) >= ra(?) (unsigned).
  The return at 0x200689c has v0 = ?.

- `close_display` in `usr/lib64/libXsgivc.so` at 0x20068b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x20068b0-0x20068e8 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0x20068d0 calls XextRemoveDisplay with a0=[0x200c258]:8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x20068e0 has v0 = ret(XextRemoveDisplay).

- `XSGIvcListVideoFormatsInCombination` in `usr/lib64/libXsgivc.so` at 0x20068f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x20068f0-0x2006c5c (876 bytes).
  It occupies 876 bytes.
  2 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x2006940, `ld` at 0x20069bc.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x200694c, `ld` at 0x2006a4c, `ld` at 0x2006b30.
  The `ld` at 0x2006958 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2006964, `ld` at 0x20069a4, `ld` at 0x2006b88.
  The `ld` at 0x2006968 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2006988 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2006990 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2006998, `sb` at 0x20069d8.
  The `ld` at 0x200699c loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x20069b0 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x20069b8 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `lw` at 0x20069c4 loads 4 bytes from [ret(find_display)+16]:8 +0x4.
  The `sw` at 0x20069c8 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x20069cc stores 1 byte to [a0+176]:8 +0x1.
  The `lhu` at 0x20069f8 loads 2 bytes from ?.
  The `sw` at 0x2006a08 stores 4 bytes to ?.
  The `sh` at 0x2006a18 stores 2 bytes to ?.
  The `sw` at 0x2006a48 stores 4 bytes to a3 (arg3 at entry) +0x0.
  5 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2006a58, `ld` at 0x2006b3c, `ld` at 0x2006b98.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2006a64, `ld` at 0x2006b48, `ld` at 0x2006ba4.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lw` at 0x2006ad4, `lw` at 0x2006b10.
  The `bgezall` at 0x2006930 calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x200695c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x20069d4 calls strlen with a0=a2 at entry (arg2), a1=[[ret(find_display)+16]:8+4], a2=0x4, a3=a1 at entry (arg1), a4=0x1, a5=[a0+176]:8+12, a6=0xc, a7=0x3.
  The `jalr` at 0x2006a14 calls _XSend with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0x2006a2c calls _XReply with a0=a0 at entry (arg0), a1=sp-112, a2=0x0, a3=0x0.
  The `jalr` at 0x2006a5c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2006a70 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2006ac4 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0x2006b08 calls ReadFormatInfo [0x2006730] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2006b40 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2006b54 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2006b7c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2006b9c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2006bb0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2006be8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2006bfc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2006c18 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `jalr` at 0x2006c38 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2006c4c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2006938 targets 0x2006c0c, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x2006944 targets 0x2006c10, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x2006950 targets 0x2006964, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2006978 targets 0x2006b7c, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+12) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+12) (unsigned).
  The `beq` branch at 0x2006a34 targets 0x2006b8c, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0x2006a3c targets 0x2006bd8, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bgtz` branch at 0x2006a44 targets 0x2006a98, is taken when ra(?) > 0 (signed), and falls through when ra(?) <= 0 (signed).
  The `beq` branch at 0x2006a50 targets 0x2006a64, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2006a68 targets 0x2006a78, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2006acc targets 0x2006c28, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `blez` branch at 0x2006adc targets 0x2006b30, is taken when t9(=[a3]) <= 0 (signed), and falls through when t9(=[a3]) > 0 (signed).
  The `bne` branch at 0x2006b24 targets 0x2006b00, is taken when s3(?) < ra(=[a3]) (signed), and falls through when s3(?) >= ra(=[a3]) (signed).
  The `beq` branch at 0x2006b34 targets 0x2006b48, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2006b4c targets 0x2006b60, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2006b84 targets 0x2006980 and is always taken.
  The `beq` branch at 0x2006b90 targets 0x2006ba4, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2006ba8 targets 0x2006bb8, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2006bdc targets 0x2006bf0, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2006bf4 targets 0x2006c04, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2006c04 targets 0x2006b60 and is always taken.
  The `beq` branch at 0x2006c20 targets 0x2006b60 and is always taken.
  The `beq` branch at 0x2006c2c targets 0x2006c40, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2006c44 targets 0x2006c54, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2006c54 targets 0x2006b60 and is always taken.
  The return at 0x2006a90 has v0 = 0x0.
  The return at 0x2006b74 has v0 = one of ?, 0x0.
  The return at 0x2006bd0 has v0 = 0x0.

- `XSGIvcQueryMonitorName` in `usr/lib64/libXsgivc.so` at 0x2006c60 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2006c60-0x2006ecc (620 bytes).
  It occupies 620 bytes.
  2 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x2006ca8, `ld` at 0x2006d20.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2006cb4, `ld` at 0x2006d64, `ld` at 0x2006e24.
  The `ld` at 0x2006cc0 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2006ccc, `ld` at 0x2006d04, `ld` at 0x2006e78.
  The `ld` at 0x2006cd0 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2006ce8 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2006cf0 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2006cf8, `sb` at 0x2006d4c.
  The `ld` at 0x2006cfc loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2006d0c stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2006d1c stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `lw` at 0x2006d28 loads 4 bytes from [ret(find_display)+16]:8 +0x4.
  The `sw` at 0x2006d2c stores 4 bytes to [a0+176]:8 +0x8.
  The `sw` at 0x2006d34 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2006d40 stores 1 byte to [a0+176]:8 +0x1.
  3 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2006d70, `ld` at 0x2006e30, `ld` at 0x2006e88.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2006d7c, `ld` at 0x2006e3c, `ld` at 0x2006e94.
  The `sb` at 0x2006df0 stores 1 byte to ?.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x0, including `sd` at 0x2006df8, `sd` at 0x2006e20.
  The `bgezall` at 0x2006c98 calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2006cc4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2006d48 calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0, a4=[[ret(find_display)+16]:8+4], a5=0x9, a6=a1 at entry (arg1), a7=a2 at entry (arg2).
  The `jalr` at 0x2006d74 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2006d88 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2006db4 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2006dd8 calls _XReadPad with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0x2006e14 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=-0x4, a3=?.
  The `jalr` at 0x2006e34 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2006e48 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2006e6c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2006e8c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2006ea0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2006ebc calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x2006ca0 targets 0x2006eb0, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x2006cac targets 0x2006eb4, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x2006cb8 targets 0x2006ccc, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2006ce0 targets 0x2006e68, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+12) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+12) (unsigned).
  The `beq` branch at 0x2006d50 targets 0x2006e7c, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bne` branch at 0x2006d5c targets 0x2006da8, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x2006d68 targets 0x2006d7c, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2006d80 targets 0x2006d94, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2006dc0 targets 0x2006dfc, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `beq` branch at 0x2006df4 targets 0x2006e24 and is always taken.
  The `beq` branch at 0x2006e28 targets 0x2006e3c, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2006e40 targets 0x2006e54, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2006e74 targets 0x2006ce4 and is always taken.
  The `beq` branch at 0x2006e80 targets 0x2006e94, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2006e98 targets 0x2006ea8, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2006ea8 targets 0x2006e54 and is always taken.
  The `beq` branch at 0x2006ec4 targets 0x2006e54 and is always taken.
  The return at 0x2006da0 has v0 = 0x0.
  The return at 0x2006e60 has v0 = one of 0x0, 0x1.

- `XSGIvcNVListVideoFormatCombinations` in `usr/lib64/libXsgivc.so` at 0x2006ee0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2006ee0-0x2007250 (880 bytes).
  It occupies 880 bytes.
  2 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x2006f38, `ld` at 0x2006fbc.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2006f4c, `ld` at 0x2007008, `ld` at 0x200709c.
  The `ld` at 0x2006f58 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2006f64, `ld` at 0x2006fa0, `ld` at 0x20071bc.
  The `ld` at 0x2006f68 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2006f84 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2006f8c stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2006f94, `sb` at 0x2006fec.
  The `ld` at 0x2006f98 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2006fa8 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2006fb8 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `lw` at 0x2006fc4 loads 4 bytes from [ret(find_display)+16]:8 +0x4.
  The `sb` at 0x2006fc8 stores 1 byte to [a0+176]:8 +0xc.
  The `sw` at 0x2006fcc stores 4 bytes to [a0+176]:8 +0x8.
  The `sw` at 0x2006fd4 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2006fe0 stores 1 byte to [a0+176]:8 +0x1.
  4 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2007014, `ld` at 0x20070a8, `ld` at 0x20071d0.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2007020, `ld` at 0x20070b4, `ld` at 0x20071dc.
  2 such `sw` accesses store 4 bytes to a5 (arg5 at entry) +0x0, including `sw` at 0x20070cc, `sw` at 0x2007120.
  The `lw` at 0x2007118 loads 4 bytes from a5 (arg5 at entry) +0x0.
  The `sd` at 0x2007128 stores 8 bytes to ?.
  The `bgezall` at 0x2006f28 calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2006f5c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2006fe8 calls _XReply with a0=a0 at entry (arg0), a1=sp-176, a2=0x0, a3=0x0, a4=[[ret(find_display)+16]:8+4], a5=0x1f, a6=a1 at entry (arg1), a7=a3 at entry (arg3).
  The `jalr` at 0x2007018 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x200702c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x200706c calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2007094 calls _XRead with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20070ac calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x20070c0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2007100 calls matchWild with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `jalr` at 0x2007134 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x20071b0 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20071d4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20071e8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2007208 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2007220 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2007240 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x2006f30 targets 0x2007230, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x2006f3c targets 0x2007234, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x2006f44 targets 0x200718c, is taken when s2(=a2) == 0, and falls through when s2(=a2) != 0.
  The `beq` branch at 0x2006f50 targets 0x2006f64, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2006f78 targets 0x20071b0, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+16) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+16) (unsigned).
  The `beq` branch at 0x2006ff0 targets 0x20071c0, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0x2006ff8 targets 0x20071f8, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x2007000 targets 0x2007058, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x200700c targets 0x2007020, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2007024 targets 0x2007038, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x20070a0 targets 0x20070b4, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x20070b8 targets 0x20070cc, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x20070d4 targets 0x2007168, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x20070dc targets 0x2007168, is taken when s3(=a4) == 0, and falls through when s3(=a4) != 0.
  The `beq` branch at 0x2007108 targets 0x2007134, is taken when v0(=ret(matchWild)) == 0, and falls through when v0(=ret(matchWild)) != 0.
  The `beq` branch at 0x2007150 targets 0x2007160, is taken when s4(?) >= t9(?) (unsigned), and falls through when s4(?) < t9(?) (unsigned).
  The `bne` branch at 0x2007158 targets 0x20070fc, is taken when s3(=a4) != s1(?), and falls through when s3(=a4) == s1(?).
  The `beq` branch at 0x20071b8 targets 0x2006f80 and is always taken.
  The `beq` branch at 0x20071c8 targets 0x20071dc, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x20071e0 targets 0x20071f0, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x20071f0 targets 0x2007174 and is always taken.
  The `beq` branch at 0x20071fc targets 0x2007210, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2007218 targets 0x2007228, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2007228 targets 0x2007174 and is always taken.
  The `beq` branch at 0x2007248 targets 0x2007174 and is always taken.
  The return at 0x2007050 has v0 = 0x0.
  The return at 0x2007184 has v0 = one of ?, 0x0.
  The return at 0x20071a8 has v0 = 0x0.

- `XSGIvcQueryMonitorBaseProtocol` in `usr/lib64/libXsgivc.so` at 0x2007250 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2007250-0x2007404 (436 bytes).
  It occupies 436 bytes.
  2 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x2007294, `ld` at 0x200730c.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x20072a0, `ld` at 0x2007340.
  The `ld` at 0x20072ac loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x20072b8, `ld` at 0x20072f0, `ld` at 0x2007394.
  The `ld` at 0x20072bc loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x20072d4 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x20072dc stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x20072e4, `sb` at 0x2007338.
  The `ld` at 0x20072e8 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x20072f8 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2007308 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `lw` at 0x2007314 loads 4 bytes from [ret(find_display)+16]:8 +0x4.
  The `sw` at 0x2007318 stores 4 bytes to [a0+176]:8 +0x8.
  The `sw` at 0x2007320 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x200732c stores 1 byte to [a0+176]:8 +0x1.
  2 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x200734c, `ld` at 0x20073a0.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2007358, `ld` at 0x20073ac.
  The `bgezall` at 0x2007284 calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x20072b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x2007334 calls _XReply with a0=a0 at entry (arg0), a1=sp-80, a2=0x0, a3=0x1, a4=[[ret(find_display)+16]:8+4], a5=0x1a, a6=a1 at entry (arg1), a7=a2 at entry (arg2).
  The `jalr` at 0x2007350 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x2007364 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2007388 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20073a4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x20073b8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20073e4 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x200728c targets 0x20073d8, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x2007298 targets 0x20073dc, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x20072a4 targets 0x20072b8, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `bne` branch at 0x20072cc targets 0x2007384, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+12) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+12) (unsigned).
  The `beq` branch at 0x200733c targets 0x2007398, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0x2007344 targets 0x2007358, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `beq` branch at 0x200735c targets 0x200736c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2007390 targets 0x20072d0 and is always taken.
  The `beq` branch at 0x2007398 targets 0x20073ac, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `beq` branch at 0x20073b0 targets 0x20073c0, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The return at 0x200737c has v0 = ?.
  The return at 0x20073d0 has v0 = 0x0.
  The return at 0x20073fc has v0 = -0x1.

- `matchWild` in `usr/lib64/libXsgivc.so` at 0x2007410 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2007410-0x200764c (572 bytes).
  It occupies 572 bytes.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x2007470, `lbu` at 0x20074cc, `lbu` at 0x20074d4.
  2 such `lbu` accesses load 1 byte from table(0x1) +0x0, including `lbu` at 0x2007574, `lbu` at 0x20075a0.
  The `lbu` at 0x20075b8 loads 1 byte from table(0x2) +0x0.
  The `lbu` at 0x20075d0 loads 1 byte from table(0x3) +0x0.
  The `lbu` at 0x20075e4 loads 1 byte from table(0x4) +0x0.
  The `jalr` at 0x2007434 calls strlen with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2007448 calls strlen with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `blez` branch at 0x2007454 targets 0x200748c, is taken when a0(=(ret(strlen) << 0x0)) <= 0 (signed), and falls through when a0(=(ret(strlen) << 0x0)) > 0 (signed).
  The `beq` branch at 0x2007474 targets 0x2007520, is taken when a6(=0x2a) == a4(?), and falls through when a6(=0x2a) != a4(?).
  The `beq` branch at 0x200747c targets 0x2007520, is taken when a7(=0x3f) == a4(?), and falls through when a7(=0x3f) != a4(?).
  The `bne` branch at 0x2007484 targets 0x2007470, is taken when v0(?) != a5(=((ret(strlen) << 0x0) + a1)), and falls through when v0(?) == a5(=((ret(strlen) << 0x0) + a1)).
  The `blez` branch at 0x2007490 targets 0x2007600, is taken when a1(=(ret(strlen) << 0x0)) <= 0 (signed), and falls through when a1(=(ret(strlen) << 0x0)) > 0 (signed).
  The `blez` branch at 0x2007498 targets 0x2007610, is taken when a0(=(ret(strlen) << 0x0)) <= 0 (signed), and falls through when a0(=(ret(strlen) << 0x0)) > 0 (signed).
  The `bne` branch at 0x20074dc targets 0x2007544, is taken when t8(?) != t0(?), and falls through when t8(?) == t0(?).
  The `beq` branch at 0x20074f8 targets 0x2007504, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x2007500 targets 0x20074cc, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0x2007508 targets 0x2007610, is taken when t8(?) != v1(=(ret(strlen) << 0x0)), and falls through when t8(?) == v1(=(ret(strlen) << 0x0)).
  The `bne` branch at 0x2007510 targets 0x2007610, is taken when a0(=(ret(strlen) << 0x0)) != a4(?), and falls through when a0(=(ret(strlen) << 0x0)) == a4(?).
  The `beq` branch at 0x2007518 targets 0x2007534 and is always taken.
  The `beq` branch at 0x2007544 targets 0x2007628, is taken when a7(=0x3f) == t0(?), and falls through when a7(=0x3f) != t0(?).
  The `bne` branch at 0x200754c targets 0x2007620, is taken when a6(=0x2a) != t0(?), and falls through when a6(=0x2a) == t0(?).
  The `beq` branch at 0x2007554 targets 0x2007644, is taken when a1(?) == t9(=(a0 + (ret(strlen) << 0x0)-1)), and falls through when a1(?) != t9(=(a0 + (ret(strlen) << 0x0)-1)).
  The `beq` branch at 0x200756c targets 0x20074f4, is taken when a4(?) >= a0(=(ret(strlen) << 0x0)) (signed), and falls through when a4(?) < a0(=(ret(strlen) << 0x0)) (signed).
  The `beq` branch at 0x2007588 targets 0x20075f8, is taken when at(?) == t0(=entry(0x1)), and falls through when at(?) != t0(=entry(0x1)).
  The `beq` branch at 0x2007598 targets 0x20075f8, is taken when v0(=table(0x1)) == a5(=((ret(strlen) << 0x0) + a1)), and falls through when v0(=table(0x1)) != a5(=((ret(strlen) << 0x0) + a1)).
  The `beq` branch at 0x20075a8 targets 0x20075f8, is taken when a2(=entry(0x1)) == t0(=entry(0x1)), and falls through when a2(=entry(0x1)) != t0(=entry(0x1)).
  The `beq` branch at 0x20075b0 targets 0x20075f8, is taken when v0(=table(0x2)) == a5(=((ret(strlen) << 0x0) + a1)), and falls through when v0(=table(0x2)) != a5(=((ret(strlen) << 0x0) + a1)).
  The `beq` branch at 0x20075c0 targets 0x20075f8, is taken when at(=entry(0x2)) == t0(=entry(0x1)), and falls through when at(=entry(0x2)) != t0(=entry(0x1)).
  The `beq` branch at 0x20075c8 targets 0x20075f8, is taken when v0(=table(0x3)) == a5(=((ret(strlen) << 0x0) + a1)), and falls through when v0(=table(0x3)) != a5(=((ret(strlen) << 0x0) + a1)).
  The `beq` branch at 0x20075d4 targets 0x20075f8, is taken when a2(=entry(0x3)) == t0(=entry(0x1)), and falls through when a2(=entry(0x3)) != t0(=entry(0x1)).
  The `beq` branch at 0x20075dc targets 0x20075f8, is taken when v0(=table(0x4)) == a5(=((ret(strlen) << 0x0) + a1)), and falls through when v0(=table(0x4)) != a5(=((ret(strlen) << 0x0) + a1)).
  The `beq` branch at 0x20075e8 targets 0x20075f8, is taken when at(=entry(0x4)) == t0(=entry(0x1)), and falls through when at(=entry(0x4)) != t0(=entry(0x1)).
  The `bne` branch at 0x20075f0 targets 0x2007580, is taken when v0(=table(0x5)) != a5(=((ret(strlen) << 0x0) + a1)), and falls through when v0(=table(0x5)) == a5(=((ret(strlen) << 0x0) + a1)).
  The `beq` branch at 0x20075f8 targets 0x20074f8 and is always taken.
  The `bne` branch at 0x2007600 targets 0x2007610, is taken when a1(=(ret(strlen) << 0x0)) != 0, and falls through when a1(=(ret(strlen) << 0x0)) == 0.
  The `beq` branch at 0x2007608 targets 0x2007518, is taken when a0(=(ret(strlen) << 0x0)) == 0, and falls through when a0(=(ret(strlen) << 0x0)) != 0.
  The `beq` branch at 0x2007620 targets 0x2007534 and is always taken.
  The `beq` branch at 0x200763c targets 0x20074f4 and is always taken.
  The `beq` branch at 0x2007644 targets 0x2007534 and is always taken.
  The return at 0x200752c has v0 = 0x0.
  The return at 0x200753c has v0 = one of 0x0, 0x1.
  The return at 0x2007618 has v0 = 0x0.

- `XSGIvcQueryScreenInputSyncSource` in `usr/lib64/libXsgivc.so` at 0x2007650 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2007650-0x2007828 (472 bytes).
  It occupies 472 bytes.
  2 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x200769c, `ld` at 0x2007710.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x20076a8, `ld` at 0x2007764, `ld` at 0x20077c8.
  The `ld` at 0x20076b4 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x20076c0, `ld` at 0x20076f8, `ld` at 0x20077c4.
  The `ld` at 0x20076c4 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x20076dc stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x20076e4 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x20076ec, `sb` at 0x2007738.
  The `ld` at 0x20076f0 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2007704 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x200770c stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `lw` at 0x2007718 loads 4 bytes from [ret(find_display)+16]:8 +0x4.
  The `sw` at 0x2007720 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x200772c stores 1 byte to [a0+176]:8 +0x1.
  The `sw` at 0x2007750 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `sw` at 0x2007758 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `sw` at 0x2007760 stores 4 bytes to a4 (arg4 at entry) +0x0.
  2 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2007770, `ld` at 0x20077d4.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x200777c, `ld` at 0x20077e0.
  The `bgezall` at 0x200768c calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x20076b8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=[a0+2408]:8.
  The `jalr` at 0x2007734 calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x1, a4=[[ret(find_display)+16]:8+4], a5=0xf, a6=a1 at entry (arg1), a7=0x1.
  The `jalr` at 0x2007774 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=[a0+2408]:8.
  The `jalr` at 0x2007788 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20077b8 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20077d8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=[a0+2408]:8.
  The `jalr` at 0x20077ec calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2007810 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x2007694 targets 0x2007804, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x20076a0 targets 0x2007808, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x20076ac targets 0x20076c0, is taken when a7(=[a0+2408]:8) == 0, and falls through when a7(=[a0+2408]:8) != 0.
  The `bne` branch at 0x20076d4 targets 0x20077b4, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+8) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+8) (unsigned).
  The `beq` branch at 0x200773c targets 0x20077c8, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0x2007768 targets 0x200777c, is taken when a7(=[a0+2408]:8) == 0, and falls through when a7(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2007780 targets 0x2007790, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x20077c0 targets 0x20076d8 and is always taken.
  The `beq` branch at 0x20077cc targets 0x20077e0, is taken when a7(=[a0+2408]:8) == 0, and falls through when a7(=[a0+2408]:8) != 0.
  The `beq` branch at 0x20077e4 targets 0x20077f4, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x20077fc targets 0x20077a8 and is always taken.
  The `beq` branch at 0x2007820 targets 0x20077a8 and is always taken.
  The return at 0x20077a0 has v0 = ?.
  The return at 0x20077ac has v0 = 0x0.

- `XSGIvcSetOutputBlanking` in `usr/lib64/libXsgivc.so` at 0x2007830 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2007830-0x2007870 (64 bytes).
  It occupies 64 bytes.
  The `bgezall` at 0x2007858 calls SetOneControl [0x2009730] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0xb, a4=a3 at entry (arg3).
  The return at 0x2007868 has v0 = ret(SetOneControl).

- `XSGIvcSetOutputPhaseSCH` in `usr/lib64/libXsgivc.so` at 0x2007870 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2007870-0x20078b0 (64 bytes).
  It occupies 64 bytes.
  The `bgezall` at 0x2007898 calls SetOneControl [0x2009730] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x8, a4=a3 at entry (arg3).
  The return at 0x20078a8 has v0 = ret(SetOneControl).

- `GenerateVFList` in `usr/lib64/libXsgivc.so` at 0x20078b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x20078b0-0x20079e0 (304 bytes).
  It occupies 304 bytes.
  The `lw` at 0x20078d4 loads 4 bytes from a1 (arg1 at entry) +0x100.
  The `lw` at 0x20078fc loads 4 bytes from a1 (arg1 at entry) +0x104.
  The `sd` at 0x2007900 stores 8 bytes to (sp + one of -0x60, -0x58) +0x0.
  The `lw` at 0x2007914 loads 4 bytes from a1 (arg1 at entry) +0x108.
  The `sd` at 0x2007918 stores 8 bytes to (sp + one of -0x60, -0x58, -0x50) +0x0.
  The `lw` at 0x2007934 loads 4 bytes from a1 (arg1 at entry) +0x10c.
  The `sd` at 0x2007938 stores 8 bytes to (sp + one of -0x60, -0x58, -0x50, -0x48) +0x0.
  The `lwc1` at 0x2007944 loads 4 bytes from a1 (arg1 at entry) +0x110.
  2 such `sdc1` accesses store 8 bytes to table(0x0) +0x0, including `sdc1` at 0x2007954, `sdc1` at 0x200797c.
  The `lwc1` at 0x200796c loads 4 bytes from a1 (arg1 at entry) +0x114.
  The `lw` at 0x200798c loads 4 bytes from a1 (arg1 at entry) +0x118.
  2 such `sd` accesses store 8 bytes to table(0x0) +0x0, including `sd` at 0x2007990, `sd` at 0x20079a8.
  The `ld` at 0x20079a4 loads 8 bytes from a1 (arg1 at entry) +0x138.
  The `lhu` at 0x20079b8 loads 2 bytes from a3 (arg3 at entry) +0x0.
  The `sh` at 0x20079d0 stores 2 bytes to a3 (arg3 at entry) +0x0.
  The `jalr` at 0x20079cc calls _XData32 with a0=a0 at entry (arg0), a1=sp-96, a2=?, a3=a3 at entry (arg3), a4=0x8, a7=sp-96.
  The `beq` branch at 0x20078c8 targets 0x20078e4, is taken when (a6(?) & 0x2) == 0, and falls through when (a6(?) & 0x2) != 0.
  The `beq` branch at 0x20078f0 targets 0x2007904, is taken when (a6(?) & 0x4) == 0, and falls through when (a6(?) & 0x4) != 0.
  The `beq` branch at 0x2007908 targets 0x200791c, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x2007928 targets 0x200793c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x200793c targets 0x2007958, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x2007964 targets 0x2007980, is taken when (a6(?) & 0x40) == 0, and falls through when (a6(?) & 0x40) != 0.
  The `beq` branch at 0x2007980 targets 0x2007998, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x2007998 targets 0x20079b0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The return at 0x20079d8 has v0 = ret(_XData32).

- `XSGIvcSendMonitorQuery` in `usr/lib64/libXsgivc.so` at 0x20079e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x20079e0-0x2007c88 (680 bytes).
  It occupies 680 bytes.
  2 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x2007a34, `ld` at 0x2007ab8.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2007a40, `ld` at 0x2007b24, `ld` at 0x2007be0.
  The `ld` at 0x2007a4c loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2007a58, `ld` at 0x2007aa4, `ld` at 0x2007c34.
  The `ld` at 0x2007a5c loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2007a74 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  2 such `sh` accesses store 2 bytes to [a0+176]:8 +0x2, including `sh` at 0x2007a7c, `sh` at 0x2007ad8.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2007a84, `sb` at 0x2007af4.
  The `ld` at 0x2007a88 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2007a98 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2007ab4 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `lhu` at 0x2007abc loads 2 bytes from [a0+176]:8 +0x2.
  The `lw` at 0x2007ac4 loads 4 bytes from [ret(find_display)+16]:8 +0x4.
  The `sb` at 0x2007ad0 stores 1 byte to [a0+176]:8 +0x10.
  The `sw` at 0x2007adc stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0x2007ae0 stores 4 bytes to [a0+176]:8 +0x8.
  The `sw` at 0x2007ae4 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2007ae8 stores 1 byte to [a0+176]:8 +0x1.
  3 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2007b30, `ld` at 0x2007bec, `ld` at 0x2007c44.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2007b3c, `ld` at 0x2007bf8, `ld` at 0x2007c50.
  2 such `sd` accesses store 8 bytes to a5 (arg5 at entry) +0x0, including `sd` at 0x2007ba0, `sd` at 0x2007bd8.
  2 such `sw` accesses store 4 bytes to a6 (arg6 at entry) +0x0, including `sw` at 0x2007bac, `sw` at 0x2007bdc.
  The `bgezall` at 0x2007a24 calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2007a50 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2007af0 calls _XSend with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=a4 at entry (arg4), a3=[[ret(find_display)+16]:8+4], a4=0x19, a5=a1 at entry (arg1), a6=a2 at entry (arg2).
  The `jalr` at 0x2007b0c calls _XReply with a0=a0 at entry (arg0), a1=sp-128, a2=0x0, a3=0x0.
  The `jalr` at 0x2007b34 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2007b48 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2007b68 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2007b8c calls _XReadPad with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0x2007bc8 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=-0x4, a3=?.
  The `jalr` at 0x2007bf0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2007c04 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2007c28 calls _XFlush with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=?, a3=?.
  The `jalr` at 0x2007c48 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2007c5c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2007c78 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x2007a2c targets 0x2007c6c, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x2007a38 targets 0x2007c70, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x2007a44 targets 0x2007a58, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2007a6c targets 0x2007c24, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+20) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+20) (unsigned).
  The `beq` branch at 0x2007b14 targets 0x2007c38, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bne` branch at 0x2007b1c targets 0x2007b68, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x2007b28 targets 0x2007b3c, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2007b40 targets 0x2007b54, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2007b74 targets 0x2007bb0, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `beq` branch at 0x2007ba8 targets 0x2007be0 and is always taken.
  The `beq` branch at 0x2007be4 targets 0x2007bf8, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2007bfc targets 0x2007c10, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2007c30 targets 0x2007a70 and is always taken.
  The `beq` branch at 0x2007c3c targets 0x2007c50, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2007c54 targets 0x2007c64, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2007c64 targets 0x2007c10 and is always taken.
  The `beq` branch at 0x2007c80 targets 0x2007c10 and is always taken.
  The return at 0x2007b60 has v0 = 0x0.
  The return at 0x2007c1c has v0 = one of 0x0, 0x1.

- `XSGIvcQueryScreenExternalSyncSource` in `usr/lib64/libXsgivc.so` at 0x2007c90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2007c90-0x2007e4c (444 bytes).
  It occupies 444 bytes.
  2 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x2007cd4, `ld` at 0x2007d48.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2007ce0, `ld` at 0x2007d84, `ld` at 0x2007ddc.
  The `ld` at 0x2007cec loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2007cf8, `ld` at 0x2007d30, `ld` at 0x2007dd8.
  The `ld` at 0x2007cfc loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2007d14 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2007d1c stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2007d24, `sb` at 0x2007d70.
  The `ld` at 0x2007d28 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2007d3c stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2007d44 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `lw` at 0x2007d50 loads 4 bytes from [ret(find_display)+16]:8 +0x4.
  The `sw` at 0x2007d58 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2007d64 stores 1 byte to [a0+176]:8 +0x1.
  The `sw` at 0x2007d80 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2007d90, `ld` at 0x2007de8.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2007d9c, `ld` at 0x2007df4.
  The `bgezall` at 0x2007cc4 calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2007cf0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x2007d6c calls _XReply with a0=a0 at entry (arg0), a1=sp-80, a2=0x0, a3=0x1, a4=[[ret(find_display)+16]:8+4], a5=0x1c, a6=a1 at entry (arg1), a7=0x1.
  The `jalr` at 0x2007d94 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x2007da8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2007dcc calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2007dec calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x2007e00 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2007e2c calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x2007ccc targets 0x2007e20, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x2007cd8 targets 0x2007e24, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x2007ce4 targets 0x2007cf8, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2007d0c targets 0x2007dc8, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+8) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+8) (unsigned).
  The `beq` branch at 0x2007d74 targets 0x2007ddc, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0x2007d88 targets 0x2007d9c, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2007da0 targets 0x2007db0, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2007dd4 targets 0x2007d10 and is always taken.
  The `beq` branch at 0x2007de0 targets 0x2007df4, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2007df8 targets 0x2007e08, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The return at 0x2007dc0 has v0 = ?.
  The return at 0x2007e18 has v0 = 0x0.
  The return at 0x2007e44 has v0 = 0x0.

- `find_display` in `usr/lib64/libXsgivc.so` at 0x2007e50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2007e50-0x2007eec (156 bytes).
  It occupies 156 bytes.
  The `jalr` at 0x2007e70 calls XextFindDisplay with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x2007ea0 calls XextAddDisplay with a0=[0x200c258]:8, a1=a0 at entry (arg0), a2=[0x200c260]:8, a3=0x200c080, a4=0x1, a5=0x0, a6=-0x3f80.
  The `jalr` at 0x2007ec4 calls XextCreateExtension with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[0x200c258]:8.
  The `beq` branch at 0x2007e60 targets 0x2007ec0, is taken when a4(=[0x200c258]:8) == 0, and falls through when a4(=[0x200c258]:8) != 0.
  The `bne` branch at 0x2007e78 targets 0x2007eac, is taken when v0(=ret(XextFindDisplay)) != 0, and falls through when v0(=ret(XextFindDisplay)) == 0.
  The `bne` branch at 0x2007ed0 targets 0x2007e68, is taken when v0(=ret(XextCreateExtension)) != 0, and falls through when v0(=ret(XextCreateExtension)) == 0.
  The return at 0x2007eb8 has v0 = one of ret(XextFindDisplay), ret(XextAddDisplay).
  The return at 0x2007ee4 has v0 = 0x0.

- `XSGIvcQueryVideoScreenInfo` in `usr/lib64/libXsgivc.so` at 0x2007ef0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2007ef0-0x2008124 (564 bytes).
  It occupies 564 bytes.
  2 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x2007f34, `ld` at 0x2007fa8.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2007f40, `ld` at 0x200800c, `ld` at 0x200806c.
  The `ld` at 0x2007f4c loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2007f58, `ld` at 0x2007f8c, `ld` at 0x20080c0.
  The `ld` at 0x2007f5c loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2007f74 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2007f7c stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2007f84, `sb` at 0x2007fd0.
  The `ld` at 0x2007f88 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2007f9c stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2007fa4 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `lw` at 0x2007fb0 loads 4 bytes from [ret(find_display)+16]:8 +0x4.
  The `sw` at 0x2007fb8 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2007fc4 stores 1 byte to [a0+176]:8 +0x1.
  The `sw` at 0x2007fe4 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `sd` at 0x2007fec stores 8 bytes to a2 (arg2 at entry) +0x8.
  The `sw` at 0x2007ff4 stores 4 bytes to a2 (arg2 at entry) +0x10.
  The `sw` at 0x2007ffc stores 4 bytes to a2 (arg2 at entry) +0x34.
  3 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2008018, `ld` at 0x2008078, `ld` at 0x20080d0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2008024, `ld` at 0x2008084, `ld` at 0x20080dc.
  The `bgezall` at 0x2007f24 calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2007f50 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x2007fcc calls _XReply with a0=a0 at entry (arg0), a1=sp-80, a2=0x0, a3=0x0, a4=[[ret(find_display)+16]:8+4], a5=0x1, a6=a1 at entry (arg1), a7=0x1.
  The `jalr` at 0x200801c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x2008030 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2008064 calls _XRead with a0=a0 at entry (arg0), a1=a2+20, a2=?, a3=0x14.
  The `jalr` at 0x200807c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x2008090 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20080b4 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20080d4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x20080e8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2008114 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x2007f2c targets 0x2008108, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x2007f38 targets 0x200810c, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x2007f44 targets 0x2007f58, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2007f6c targets 0x20080b0, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+8) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+8) (unsigned).
  The `beq` branch at 0x2007fd4 targets 0x20080c4, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bne` branch at 0x2008004 targets 0x2008050, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x2008010 targets 0x2008024, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2008028 targets 0x200803c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2008070 targets 0x2008084, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2008088 targets 0x200809c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x20080bc targets 0x2007f70 and is always taken.
  The `beq` branch at 0x20080c8 targets 0x20080dc, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `beq` branch at 0x20080e0 targets 0x20080f4, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x200811c targets 0x200809c and is always taken.
  The return at 0x2008048 has v0 = 0x0.
  The return at 0x20080a8 has v0 = one of 0x0, 0x1.
  The return at 0x2008100 has v0 = 0x0.

- `XSGIvcNVLoadVideoFormat` in `usr/lib64/libXsgivc.so` at 0x2008130 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2008130-0x20083fc (716 bytes).
  It occupies 716 bytes.
  3 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x200818c, `ld` at 0x2008218, `ld` at 0x2008244.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x20081a0, `ld` at 0x2008340.
  The `ld` at 0x20081ac loads 8 bytes from [a0+2408]:8 +0x0.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x20081b8, `ld` at 0x2008200, `ld` at 0x20082b4.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb8, including `ld` at 0x20081bc, `ld` at 0x20082b8.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0xa0, including `sd` at 0x20081e4, `sd` at 0x20082d4.
  2 such `sh` accesses store 2 bytes to [a0+176]:8 +0x2, including `sh` at 0x20081ec, `sh` at 0x20082dc.
  3 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x20081f4, `sb` at 0x2008228, `sb` at 0x20082e4.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x98, including `ld` at 0x20081f8, `ld` at 0x200822c, `ld` at 0x2008234.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x98, including `sd` at 0x200820c, `sd` at 0x200830c.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0xb0, including `sd` at 0x2008214, `sd` at 0x2008318.
  2 such `lw` accesses load 4 bytes from [ret(find_display)+16]:8 +0x4, including `lw` at 0x2008220, `lw` at 0x200824c.
  The `sb` at 0x2008224 stores 1 byte to [a0+176]:8 +0x1.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x958, including `ld` at 0x200825c, `ld` at 0x200831c.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x958, including `sd` at 0x2008270, `sd` at 0x200832c.
  The `sw` at 0x2008274 stores 4 bytes to [a0+176]:8 +0x18.
  The `sw` at 0x2008278 stores 4 bytes to [a0+176]:8 +0x14.
  The `sw` at 0x200827c stores 4 bytes to [a0+176]:8 +0x10.
  The `sb` at 0x2008284 stores 1 byte to [a0+176]:8 +0xc.
  The `sw` at 0x2008298 stores 4 bytes to [a0+176]:8 +0x8.
  The `sw` at 0x20082b0 stores 4 bytes to [a0+176]:8 +0x4.
  The `ld` at 0x200834c loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x2008358 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `bgezall` at 0x200817c calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x20081b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0x20082ac calls GenerateVFList [0x20078b0] with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=(a4 << 0x0), a3=[a0+176]:8+2, a4=a1 at entry (arg1), a6=[a0+152]:8, a7=[a0+152]:8.
  The `jalr` at 0x2008314 calls _XReply with a0=a0 at entry (arg0), a1=sp-120, a2=0x0, a3=0x1, a4=0x4, a5=[a0+152]:8+1, a6=0x1, a7=0x2b.
  The `jalr` at 0x2008338 calls _XDeqAsyncHandler with a0=a0 at entry (arg0), a1=sp-176, a2=?, a3=?.
  The `jalr` at 0x2008350 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2008364 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20083b0 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20083c4 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20083ec calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x2008184 targets 0x20083dc, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x2008190 targets 0x20083e0, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x2008198 targets 0x2008390, is taken when s2(=a3) == 0, and falls through when s2(=a3) != 0.
  The `beq` branch at 0x20081a4 targets 0x20081b8, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `bne` branch at 0x20081cc targets 0x20083b0, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+28) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+28) (unsigned).
  The `bne` branch at 0x20082cc targets 0x20083c0, is taken when at(=[a0+184]:8) < v0(=[a0+176]:8+4) (unsigned), and falls through when at(=[a0+184]:8) >= v0(=[a0+176]:8+4) (unsigned).
  The `bne` branch at 0x2008320 targets 0x2008330, is taken when t0(=[a0+2392]:8) != sp(=sp-176), and falls through when t0(=[a0+2392]:8) == sp(=sp-176).
  The `beq` branch at 0x2008328 targets 0x2008340 and is always taken.
  The `beq` branch at 0x2008344 targets 0x2008358, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x200835c targets 0x2008370, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2008370 targets 0x20083d4, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x20083b8 targets 0x20081d4 and is always taken.
  The `beq` branch at 0x20083cc targets 0x20082d4 and is always taken.
  The `beq` branch at 0x20083d4 targets 0x2008380 and is always taken.
  The `beq` branch at 0x20083f4 targets 0x200837c and is always taken.
  The return at 0x2008388 has v0 = one of 0x0, 0x1.
  The return at 0x20083a8 has v0 = 0x0.

- `XSGIvcMultiCursorSetMode` in `usr/lib64/libXsgivc.so` at 0x2008400 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2008400-0x2008558 (344 bytes).
  It occupies 344 bytes.
  2 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x2008440, `ld` at 0x20084b8.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x200844c, `ld` at 0x20084d8.
  The `ld` at 0x2008458 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2008464, `ld` at 0x20084a0, `ld` at 0x2008528.
  The `ld` at 0x2008468 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2008484 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x200848c stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2008494, `sb` at 0x20084d4.
  The `ld` at 0x2008498 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x20084ac stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x20084b4 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `lw` at 0x20084c0 loads 4 bytes from [ret(find_display)+16]:8 +0x4.
  The `sb` at 0x20084c4 stores 1 byte to [a0+176]:8 +0x4.
  The `sb` at 0x20084c8 stores 1 byte to [a0+176]:8 +0x1.
  The `ld` at 0x20084e4 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x20084f0 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `bgezall` at 0x2008430 calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x200845c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0x20084d0 calls _XFlush with a0=a0 at entry (arg0), a1=[[ret(find_display)+16]:8+4], a2=0x24, a3=a1 at entry (arg1), a4=0x1, a5=[a0+176]:8+8, a6=0x8, a7=0x2.
  The `jalr` at 0x20084e8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0x20084fc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x200851c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2008538 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x2008438 targets 0x200852c, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x2008444 targets 0x2008530, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x2008450 targets 0x2008464, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2008478 targets 0x200851c, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+8) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+8) (unsigned).
  The `beq` branch at 0x20084dc targets 0x20084f0, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `beq` branch at 0x20084f4 targets 0x2008504, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2008524 targets 0x2008480 and is always taken.
  The return at 0x2008514 has v0 = 0x1.
  The return at 0x2008550 has v0 = 0x0.

- `XSGIvcSetOutputSync` in `usr/lib64/libXsgivc.so` at 0x2008560 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2008560-0x20086bc (348 bytes).
  It occupies 348 bytes.
  2 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x20085ac, `ld` at 0x2008628.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x20085b8, `ld` at 0x200864c.
  The `ld` at 0x20085c4 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x20085d0, `ld` at 0x2008610, `ld` at 0x20086a0.
  The `ld` at 0x20085d4 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x20085f4 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x20085fc stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2008604, `sb` at 0x2008648.
  The `ld` at 0x2008608 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x200861c stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2008624 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `lw` at 0x2008630 loads 4 bytes from [ret(find_display)+16]:8 +0x4.
  The `sw` at 0x2008634 stores 4 bytes to [a0+176]:8 +0x10.
  The `sw` at 0x2008638 stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0x200863c stores 4 bytes to [a0+176]:8 +0x8.
  The `sw` at 0x2008640 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2008644 stores 1 byte to [a0+176]:8 +0x1.
  The `ld` at 0x2008658 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x2008664 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `bgezall` at 0x200859c calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x20085c8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=[a0+2408]:8.
  The `jalr` at 0x200865c calls (unknown callee) with a0=a0 at entry (arg0), a1=a4 at entry (arg4), a2=a3 at entry (arg3), a3=a2 at entry (arg2), a4=a1 at entry (arg1), a5=0xc, a6=[[ret(find_display)+16]:8+4], a7=[a0+2408]:8.
  The `jalr` at 0x2008670 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2008694 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=a1 at entry (arg1).
  The `jalr` at 0x20086ac calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x20085a4 targets 0x20086a4, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x20085b0 targets 0x20086a8, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x20085bc targets 0x20085d0, is taken when a7(=[a0+2408]:8) == 0, and falls through when a7(=[a0+2408]:8) != 0.
  The `bne` branch at 0x20085e4 targets 0x2008690, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+20) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+20) (unsigned).
  The `beq` branch at 0x2008650 targets 0x2008664, is taken when a7(=[a0+2408]:8) == 0, and falls through when a7(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2008668 targets 0x200867c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x200869c targets 0x20085e8 and is always taken.
  The `beq` branch at 0x20086b4 targets 0x200867c and is always taken.
  The return at 0x2008688 has v0 = one of ?, ret(?), ret(XMissingExtension).

- `XSGIvcQueryChannelGammaMap` in `usr/lib64/libXsgivc.so` at 0x20086c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x20086c0-0x2008700 (64 bytes).
  It occupies 64 bytes.
  The `bgezall` at 0x20086e8 calls QueryOneControl [0x2009250] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0xa, a4=a3 at entry (arg3).
  The return at 0x20086f8 has v0 = ret(QueryOneControl).

- `XSGIvcQueryPlatformParameter` in `usr/lib64/libXsgivc.so` at 0x2008700 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2008700-0x2008948 (584 bytes).
  It occupies 584 bytes.
  2 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x2008754, `ld` at 0x20087dc.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2008768, `ld` at 0x2008850, `ld` at 0x20088a8.
  The `ld` at 0x2008774 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2008780, `ld` at 0x20087c8, `ld` at 0x20088a4.
  The `ld` at 0x2008784 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x200879c stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x20087a4 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x20087ac, `sb` at 0x2008810.
  The `ld` at 0x20087b0 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x20087c0 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x20087d8 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `lw` at 0x20087e4 loads 4 bytes from [ret(find_display)+16]:8 +0x4.
  The `sw` at 0x20087e8 stores 4 bytes to [a0+176]:8 +0x10.
  The `sw` at 0x20087ec stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0x20087f0 stores 4 bytes to [a0+176]:8 +0x8.
  The `sw` at 0x20087f8 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2008804 stores 1 byte to [a0+176]:8 +0x1.
  3 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x200885c, `ld` at 0x20088b4, `ld` at 0x20088fc.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2008868, `ld` at 0x20088c0, `ld` at 0x2008908.
  The `bgezall` at 0x2008744 calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2008778 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x200880c calls _XReply with a0=a0 at entry (arg0), a1=sp-112, a2=0x0, a3=0x0, a4=[[ret(find_display)+16]:8+4], a5=0x11, a6=a1 at entry (arg1), a7=a2 at entry (arg2).
  The `jalr` at 0x2008848 calls _XRead with a0=a0 at entry (arg0), a1=a4 at entry (arg4), a2=?, a3=?.
  The `jalr` at 0x2008860 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2008874 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2008898 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20088b8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20088cc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2008900 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2008914 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2008930 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x200874c targets 0x2008924, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x2008758 targets 0x2008928, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x2008760 targets 0x2008940, is taken when s1(=a5) == 0, and falls through when s1(=a5) != 0.
  The `beq` branch at 0x200876c targets 0x2008780, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2008794 targets 0x2008898, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+20) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+20) (unsigned).
  The `beq` branch at 0x2008814 targets 0x20088a8, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0x2008820 targets 0x20088f0, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x200882c targets 0x2008838, is taken when s1(=a5) < a5(?) (unsigned), and falls through when s1(=a5) >= a5(?) (unsigned).
  The `blez` branch at 0x2008838 targets 0x2008850, is taken when s1(?) <= 0 (signed), and falls through when s1(?) > 0 (signed).
  The `beq` branch at 0x2008854 targets 0x2008868, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x200886c targets 0x2008880, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x20088a0 targets 0x200879c and is always taken.
  The `beq` branch at 0x20088ac targets 0x20088c0, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x20088c4 targets 0x20088d8, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x20088f4 targets 0x2008908, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x200890c targets 0x200891c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x200891c targets 0x2008880 and is always taken.
  The `beq` branch at 0x2008938 targets 0x2008880 and is always taken.
  The `beq` branch at 0x2008940 targets 0x2008880 and is always taken.
  The return at 0x2008890 has v0 = one of 0x0, 0x1, 0x10.
  The return at 0x20088e8 has v0 = 0x0.

- `XSGIvcSetChannelInputRectangle` in `usr/lib64/libXsgivc.so` at 0x2008950 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2008950-0x2008b0c (444 bytes).
  It occupies 444 bytes.
  2 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x200899c, `ld` at 0x2008a24.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x20089a8, `ld` at 0x2008aa0.
  The `ld` at 0x20089b4 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x20089c0, `ld` at 0x20089f4, `ld` at 0x2008af0.
  The `ld` at 0x20089c4 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x20089dc stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x20089e4 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x20089ec, `sb` at 0x2008a94.
  The `ld` at 0x20089fc loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2008a14 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2008a20 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `lw` at 0x2008a2c loads 4 bytes from [ret(find_display)+16]:8 +0x4.
  The `swc1` at 0x2008a34 stores 4 bytes to [a0+176]:8 +0xc.
  The `swc1` at 0x2008a4c stores 4 bytes to [a0+176]:8 +0x10.
  The `swc1` at 0x2008a64 stores 4 bytes to [a0+176]:8 +0x14.
  The `sb` at 0x2008a7c stores 1 byte to [a0+176]:8 +0x1c.
  The `sw` at 0x2008a84 stores 4 bytes to [a0+176]:8 +0x8.
  The `sw` at 0x2008a88 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2008a90 stores 1 byte to [a0+176]:8 +0x1.
  The `swc1` at 0x2008a9c stores 4 bytes to [a0+176]:8 +0x18.
  The `ld` at 0x2008aac loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x2008ab8 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `bgezall` at 0x200898c calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x20089b8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x2008ab0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x1, a2=a2 at entry (arg2), a3=a1 at entry (arg1), a4=0x18, a5=[a0+2408]:8, a6=[a0+152]:8+1, a7=0x1.
  The `jalr` at 0x2008ac4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2008ae4 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2008afc calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x2008994 targets 0x2008af4, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x20089a0 targets 0x2008af8, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x20089ac targets 0x20089c0, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `bne` branch at 0x20089d4 targets 0x2008ae4, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+32) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+32) (unsigned).
  The `beq` branch at 0x2008aa4 targets 0x2008ab8, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2008abc targets 0x2008ad0, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2008aec targets 0x20089dc and is always taken.
  The `beq` branch at 0x2008b04 targets 0x2008ad0 and is always taken.
  The return at 0x2008adc has v0 = one of ?, ret(?), ret(XMissingExtension).

- `wire_to_event` in `usr/lib64/libXsgivc.so` at 0x2008b10 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2008b10-0x2009244 (1844 bytes).
  It occupies 1844 bytes.
  The `lbu` at 0x2008b54 loads 1 byte from a2 (arg2 at entry) +0x1.
  The `ld` at 0x2008b60 loads 8 bytes from ret(find_display) +0x10.
  The `lw` at 0x2008b74 loads 4 bytes from [ret(find_display)+16]:8 +0x8.
  The `ld` at 0x2008b80 loads 8 bytes from table(0x200c000) +0x0.
  13 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x28, including `sw` at 0x2008b98, `sw` at 0x2008c18, `sw` at 0x2008c90.
  13 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0x2008ba4, `sw` at 0x2008c24, `sw` at 0x2008c9c.
  13 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x8, including `sd` at 0x2008ba8, `sd` at 0x2008c28, `sd` at 0x2008ca0.
  13 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0x0, including `lbu` at 0x2008bac, `lbu` at 0x2008c2c, `lbu` at 0x2008ca4.
  13 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x18, including `sd` at 0x2008bb0, `sd` at 0x2008c30, `sd` at 0x2008ca8.
  13 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x10, including `sw` at 0x2008bbc, `sw` at 0x2008c3c, `sw` at 0x2008cb4.
  13 such `lwu` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwu` at 0x2008bc0, `lwu` at 0x2008c40, `lwu` at 0x2008cb8.
  13 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xe8, including `ld` at 0x2008bc4, `ld` at 0x2008c44, `ld` at 0x2008cbc.
  13 such `ld` accesses load 8 bytes from ([a0+232]:8 + ([a2+4] << 0x7)) +0x10, including `ld` at 0x2008bd0, `ld` at 0x2008c58, `ld` at 0x2008cc8.
  13 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x20, including `sd` at 0x2008bd4, `sd` at 0x2008c5c, `sd` at 0x2008ccc.
  13 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0x2008bd8, `lw` at 0x2008c60, `lw` at 0x2008cd0.
  13 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x2c, including `sw` at 0x2008bdc, `sw` at 0x2008c64, `sw` at 0x2008cd4.
  13 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0x2008be0, `lw` at 0x2008c68, `lw` at 0x2008cd8.
  13 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x30, including `sw` at 0x2008be4, `sw` at 0x2008c78, `sw` at 0x2008cdc.
  9 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lw` at 0x2008be8, `lw` at 0x2008ce0, `lw` at 0x2008e70.
  10 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x34, including `sw` at 0x2008bec, `sw` at 0x2008df8, `sw` at 0x2008e7c.
  The `swc1` at 0x2008d00 stores 4 bytes to a1 (arg1 at entry) +0x34.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lw` at 0x2008d04, `lw` at 0x2008f7c, `lw` at 0x2009154.
  2 such `swc1` accesses store 4 bytes to a1 (arg1 at entry) +0x38, including `swc1` at 0x2008d20, `swc1` at 0x2009178.
  The `lw` at 0x2008d24 loads 4 bytes from a2 (arg2 at entry) +0x14.
  The `swc1` at 0x2008d40 stores 4 bytes to a1 (arg1 at entry) +0x40.
  The `lw` at 0x2008d44 loads 4 bytes from a2 (arg2 at entry) +0x18.
  The `swc1` at 0x2008d74 stores 4 bytes to a1 (arg1 at entry) +0x3c.
  2 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0xc, including `lbu` at 0x2008dec, `lbu` at 0x20090e4.
  The `sw` at 0x2008f8c stores 4 bytes to a1 (arg1 at entry) +0x38.
  The `bgezall` at 0x2008b4c calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2008ba0 calls _XSetLastRequestRead with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[[ret(find_display)+16]:8+8], a3=entry(0x200c000), a4=0x5.
  The `jalr` at 0x2008c20 calls _XSetLastRequestRead with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[[ret(find_display)+16]:8+8], a3=entry(0x200c000), a4=-0x4000.
  The `jalr` at 0x2008c98 calls _XSetLastRequestRead with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[[ret(find_display)+16]:8+8], a3=entry(0x200c000), a4=-0x4000.
  The `jalr` at 0x2008d98 calls _XSetLastRequestRead with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[[ret(find_display)+16]:8+8], a3=entry(0x200c000), a4=-0x4000, a7=0xb.
  The `jalr` at 0x2008e1c calls _XSetLastRequestRead with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[[ret(find_display)+16]:8+8], a3=entry(0x200c000), a4=-0x4000.
  The `jalr` at 0x2008ea0 calls _XSetLastRequestRead with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[[ret(find_display)+16]:8+8], a3=0x9, a4=-0x4000.
  The `jalr` at 0x2008f24 calls _XSetLastRequestRead with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[[ret(find_display)+16]:8+8], a3=entry(0x200c000), a4=-0x4000.
  The `jalr` at 0x2008fb0 calls _XSetLastRequestRead with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[[ret(find_display)+16]:8+8], a3=entry(0x200c000), a4=-0x4000.
  The `jalr` at 0x2009034 calls _XSetLastRequestRead with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[[ret(find_display)+16]:8+8], a3=entry(0x200c000), a4=-0x4000, a6=0x6.
  The `jalr` at 0x200909c calls _XSetLastRequestRead with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[[ret(find_display)+16]:8+8], a3=entry(0x200c000), a4=-0x4000.
  The `jalr` at 0x2009104 calls _XSetLastRequestRead with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[[ret(find_display)+16]:8+8], a3=0x3, a4=-0x4000.
  The `jalr` at 0x2009190 calls _XSetLastRequestRead with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[[ret(find_display)+16]:8+8], a3=entry(0x200c000), a4=-0x4000.
  The `jalr` at 0x20091f0 calls _XSetLastRequestRead with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[[ret(find_display)+16]:8+8], a3=entry(0x200c000), a4=-0x4000.
  The `beq` branch at 0x2008b78 targets 0x2008bf0, is taken when a1(?) >= 0xd (unsigned), and falls through when a1(?) < 0xd (unsigned).
  The `beq` branch at 0x2009080 targets 0x2008bf0 and is always taken.
  The `beq` branch at 0x20090e8 targets 0x2008bf0 and is always taken.
  The `beq` branch at 0x2009174 targets 0x2008bf0 and is always taken.
  The `beq` branch at 0x20091d4 targets 0x2008bf0 and is always taken.
  The `beq` branch at 0x200923c targets 0x2008bf0 and is always taken.
  The return at 0x2008c08 has v0 = 0x1.
  The return at 0x2008c80 has v0 = 0x1.
  The return at 0x2008d7c has v0 = 0x1.
  The return at 0x2008e00 has v0 = 0x1.
  The return at 0x2008e84 has v0 = 0x1.
  The return at 0x2008f08 has v0 = 0x1.
  The return at 0x2008f94 has v0 = 0x1.
  The return at 0x2009018 has v0 = 0x1.
  The indirect jump at 0x2008b84 uses the jump table at 0x200c000 with targets 0x2008c10, 0x20091dc, 0x200917c, 0x20090f0, 0x2009088, 0x2008b8c, 0x2009020, 0x2008f9c, 0x2008f10, 0x2008e8c, 0x2008e08, 0x2008d84, 0x2008c88.

- `QueryOneControl` in `usr/lib64/libXsgivc.so` at 0x2009250 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2009250-0x2009408 (440 bytes).
  It occupies 440 bytes.
  2 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x200928c, `ld` at 0x200930c.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2009298, `ld` at 0x2009350, `ld` at 0x20093a8.
  The `ld` at 0x20092a4 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x20092b0, `ld` at 0x20092f8, `ld` at 0x20093a4.
  The `ld` at 0x20092b4 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x20092cc stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x20092d4 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x20092dc, `sb` at 0x200933c.
  The `ld` at 0x20092e0 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x20092f0 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2009308 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `lw` at 0x2009314 loads 4 bytes from [ret(find_display)+16]:8 +0x4.
  The `sw` at 0x2009318 stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0x200931c stores 4 bytes to [a0+176]:8 +0x8.
  The `sw` at 0x2009324 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2009330 stores 1 byte to [a0+176]:8 +0x1.
  The `sw` at 0x200934c stores 4 bytes to a4 (arg4 at entry) +0x0.
  2 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x200935c, `ld` at 0x20093b4.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2009368, `ld` at 0x20093c0.
  The `bgezall` at 0x200927c calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x20092a8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=[a0+2408]:8.
  The `jalr` at 0x2009338 calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x1, a4=[[ret(find_display)+16]:8+4], a5=0xb, a6=a1 at entry (arg1), a7=a2 at entry (arg2).
  The `jalr` at 0x2009360 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=[a0+2408]:8.
  The `jalr` at 0x2009374 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2009398 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20093b8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=[a0+2408]:8.
  The `jalr` at 0x20093cc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20093f0 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x2009284 targets 0x20093e4, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x2009290 targets 0x20093e8, is taken when at(=[ret(find_display)+16]:8) == 0, and falls through when at(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x200929c targets 0x20092b0, is taken when a7(=[a0+2408]:8) == 0, and falls through when a7(=[a0+2408]:8) != 0.
  The `bne` branch at 0x20092c4 targets 0x2009398, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+16) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+16) (unsigned).
  The `beq` branch at 0x2009340 targets 0x20093a8, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0x2009354 targets 0x2009368, is taken when a7(=[a0+2408]:8) == 0, and falls through when a7(=[a0+2408]:8) != 0.
  The `beq` branch at 0x200936c targets 0x200937c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x20093a0 targets 0x20092cc and is always taken.
  The `beq` branch at 0x20093ac targets 0x20093c0, is taken when a7(=[a0+2408]:8) == 0, and falls through when a7(=[a0+2408]:8) != 0.
  The `beq` branch at 0x20093c4 targets 0x20093d4, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x20093dc targets 0x2009390 and is always taken.
  The `beq` branch at 0x2009400 targets 0x2009390 and is always taken.
  The return at 0x2009388 has v0 = ?.
  The return at 0x2009390 has v0 = 0x0.

- `XSGIvcStoreGammaColors8` in `usr/lib64/libXsgivc.so` at 0x2009410 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2009410-0x20095e0 (464 bytes).
  It occupies 464 bytes.
  2 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x2009464, `ld` at 0x20094e4.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2009470, `ld` at 0x2009570.
  The `ld` at 0x200947c loads 8 bytes from [a0+2408]:8 +0x0.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2009488, `ld` at 0x20094cc, `ld` at 0x2009518.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb8, including `ld` at 0x200948c, `ld` at 0x200951c.
  The `sd` at 0x20094b0 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  2 such `sh` accesses store 2 bytes to [a0+176]:8 +0x2, including `sh` at 0x20094b8, `sh` at 0x2009510.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x20094c0, `sb` at 0x2009514.
  The `ld` at 0x20094c4 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x20094d8 stores 8 bytes to a0 (arg0 at entry) +0x98.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0xb0, including `sd` at 0x20094e0, `sd` at 0x2009558.
  The `lhu` at 0x20094e8 loads 2 bytes from [a0+176]:8 +0x2.
  The `lw` at 0x20094ec loads 4 bytes from [ret(find_display)+16]:8 +0x4.
  The `sb` at 0x20094f0 stores 1 byte to [a0+176]:8 +0x1.
  The `sw` at 0x20094f4 stores 4 bytes to [a0+176]:8 +0x4.
  The `sw` at 0x20094f8 stores 4 bytes to [a0+176]:8 +0x8.
  The `sw` at 0x2009500 stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0x2009508 stores 4 bytes to [a0+176]:8 +0x10.
  The `ld` at 0x200957c loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x2009588 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `bgezall` at 0x2009454 calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2009480 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2009534 calls memcpy with a0=[a0+176]:8, a1=a5 at entry (arg5), a2=a3 at entry (arg3), a3=(a3 + [a0+176]:8), a6=a4 at entry (arg4), a7=a2 at entry (arg2).
  The `jalr` at 0x2009568 calls _XSend with a0=a0 at entry (arg0), a1=a5 at entry (arg5), a2=a3 at entry (arg3), a3=(a3 + [a0+176]:8), a6=a4 at entry (arg4), a7=a2 at entry (arg2).
  The `jalr` at 0x2009580 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2009594 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20095b8 calls _XFlush with a0=a0 at entry (arg0), a1=[a0+176]:8+20, a2=?, a3=?.
  The `jalr` at 0x20095d0 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x200945c targets 0x20095c8, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x2009468 targets 0x20095cc, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x2009474 targets 0x2009488, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `bne` branch at 0x200949c targets 0x20095b8, is taken when v1(=[a0+184]:8) < a1(=[a0+176]:8+20) (unsigned), and falls through when v1(=[a0+184]:8) >= a1(=[a0+176]:8+20) (unsigned).
  The `bne` branch at 0x2009528 targets 0x200955c, is taken when a2(=[a0+184]:8) < a3(=(a3 + [a0+176]:8)) (unsigned), and falls through when a2(=[a0+184]:8) >= a3(=(a3 + [a0+176]:8)) (unsigned).
  The `beq` branch at 0x2009554 targets 0x2009570 and is always taken.
  The `beq` branch at 0x2009574 targets 0x2009588, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x200958c targets 0x20095a0, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x20095c0 targets 0x20094a4 and is always taken.
  The `beq` branch at 0x20095d8 targets 0x20095a0 and is always taken.
  The return at 0x20095b0 has v0 = one of ?, ret(?), ret(XMissingExtension).

- `XSGIvcSetScreenInputSyncSource` in `usr/lib64/libXsgivc.so` at 0x20095e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x20095e0-0x2009730 (336 bytes).
  It occupies 336 bytes.
  2 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x2009628, `ld` at 0x20096a4.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2009634, `ld` at 0x20096c4.
  The `ld` at 0x2009640 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x200964c, `ld` at 0x200968c, `ld` at 0x2009714.
  The `ld` at 0x2009650 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2009670 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2009678 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2009680, `sb` at 0x20096c0.
  The `ld` at 0x2009684 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2009698 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x20096a0 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `lw` at 0x20096ac loads 4 bytes from [ret(find_display)+16]:8 +0x4.
  The `sw` at 0x20096b0 stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0x20096b4 stores 4 bytes to [a0+176]:8 +0x8.
  The `sw` at 0x20096b8 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x20096bc stores 1 byte to [a0+176]:8 +0x1.
  The `ld` at 0x20096d0 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x20096dc loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `bgezall` at 0x2009618 calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2009644 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+2408]:8.
  The `jalr` at 0x20096d4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=a2 at entry (arg2), a3=a1 at entry (arg1), a4=0xe, a5=[[ret(find_display)+16]:8+4], a6=[a0+2408]:8, a7=0x1.
  The `jalr` at 0x20096e8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2009708 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2009720 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x2009620 targets 0x2009718, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x200962c targets 0x200971c, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x2009638 targets 0x200964c, is taken when a6(=[a0+2408]:8) == 0, and falls through when a6(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2009660 targets 0x2009708, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+16) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+16) (unsigned).
  The `beq` branch at 0x20096c8 targets 0x20096dc, is taken when a6(=[a0+2408]:8) == 0, and falls through when a6(=[a0+2408]:8) != 0.
  The `beq` branch at 0x20096e0 targets 0x20096f4, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2009710 targets 0x2009668 and is always taken.
  The `beq` branch at 0x2009728 targets 0x20096f4 and is always taken.
  The return at 0x2009700 has v0 = one of ?, ret(?), ret(XMissingExtension).

- `SetOneControl` in `usr/lib64/libXsgivc.so` at 0x2009730 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2009730-0x200987c (332 bytes).
  It occupies 332 bytes.
  2 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x200976c, `ld` at 0x20097ec.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2009778, `ld` at 0x2009810.
  The `ld` at 0x2009784 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2009790, `ld` at 0x20097d4, `ld` at 0x2009858.
  The `ld` at 0x2009794 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x20097b8 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x20097c0 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x20097c8, `sb` at 0x200980c.
  The `ld` at 0x20097cc loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x20097e0 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x20097e8 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `lw` at 0x20097f4 loads 4 bytes from [ret(find_display)+16]:8 +0x4.
  The `sw` at 0x20097f8 stores 4 bytes to [a0+176]:8 +0x10.
  The `sw` at 0x20097fc stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0x2009800 stores 4 bytes to [a0+176]:8 +0x8.
  The `sw` at 0x2009804 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2009808 stores 1 byte to [a0+176]:8 +0x1.
  The `ld` at 0x200981c loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x2009828 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `bgezall` at 0x200975c calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2009788 calls (unknown callee) with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?, a7=[a0+2408]:8.
  The `jalr` at 0x2009820 calls (unknown callee) with a0=a0 at entry (arg0), a1=a4 at entry (arg4), a2=a3 at entry (arg3), a3=a2 at entry (arg2), a4=a1 at entry (arg1), a5=0xa, a6=[[ret(find_display)+16]:8+4], a7=[a0+2408]:8.
  The `jalr` at 0x2009834 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x200984c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  Calls XMissingExtension via got with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=? (`jr` at 0x2009874).
  The `beq` branch at 0x2009764 targets 0x200985c, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x2009770 targets 0x2009860, is taken when at(=[ret(find_display)+16]:8) == 0, and falls through when at(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x200977c targets 0x2009790, is taken when a7(=[a0+2408]:8) == 0, and falls through when a7(=[a0+2408]:8) != 0.
  The `bne` branch at 0x20097a4 targets 0x200984c, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+20) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+20) (unsigned).
  The `beq` branch at 0x2009814 targets 0x2009828, is taken when a7(=[a0+2408]:8) == 0, and falls through when a7(=[a0+2408]:8) != 0.
  The `beq` branch at 0x200982c targets 0x200983c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2009854 targets 0x20097ac and is always taken.
  The return at 0x2009844 has v0 = one of ?, ret(?).

- `XSGIvcListVideoFormatCombinations` in `usr/lib64/libXsgivc.so` at 0x2009880 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2009880-0x2009bdc (860 bytes).
  It occupies 860 bytes.
  2 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x20098d4, `ld` at 0x200994c.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x20098e8, `ld` at 0x2009994, `ld` at 0x2009a28.
  The `ld` at 0x20098f4 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2009900, `ld` at 0x2009934, `ld` at 0x2009b48.
  The `ld` at 0x2009904 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x200991c stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2009924 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2009928, `sb` at 0x2009978.
  The `ld` at 0x200992c loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2009940 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2009948 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `lw` at 0x2009954 loads 4 bytes from [ret(find_display)+16]:8 +0x4.
  The `sw` at 0x2009958 stores 4 bytes to [a0+176]:8 +0x8.
  The `sw` at 0x2009960 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x200996c stores 1 byte to [a0+176]:8 +0x1.
  4 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x20099a0, `ld` at 0x2009a34, `ld` at 0x2009b5c.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x20099ac, `ld` at 0x2009a40, `ld` at 0x2009b68.
  2 such `sw` accesses store 4 bytes to a4 (arg4 at entry) +0x0, including `sw` at 0x2009a58, `sw` at 0x2009aa8.
  The `lw` at 0x2009aa0 loads 4 bytes from a4 (arg4 at entry) +0x0.
  The `sd` at 0x2009ab0 stores 8 bytes to ?.
  The `bgezall` at 0x20098c4 calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x20098f8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2009974 calls _XReply with a0=a0 at entry (arg0), a1=sp-160, a2=0x0, a3=0x0, a4=[[ret(find_display)+16]:8+4], a5=0x3, a6=a1 at entry (arg1), a7=0x1.
  The `jalr` at 0x20099a4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20099b8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x20099f8 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2009a20 calls _XRead with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2009a38 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2009a4c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2009a8c calls matchWild with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `jalr` at 0x2009abc calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2009b3c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2009b60 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2009b74 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2009b94 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2009bac calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2009bcc calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x20098cc targets 0x2009bbc, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x20098d8 targets 0x2009bc0, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x20098e0 targets 0x2009b14, is taken when s2(=a2) == 0, and falls through when s2(=a2) != 0.
  The `beq` branch at 0x20098ec targets 0x2009900, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2009914 targets 0x2009b38, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+12) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+12) (unsigned).
  The `beq` branch at 0x200997c targets 0x2009b4c, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0x2009984 targets 0x2009b84, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x200998c targets 0x20099e4, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x2009998 targets 0x20099ac, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x20099b0 targets 0x20099c4, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2009a2c targets 0x2009a40, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2009a44 targets 0x2009a58, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2009a60 targets 0x2009af0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x2009a68 targets 0x2009af0, is taken when s3(=a3) == 0, and falls through when s3(=a3) != 0.
  The `beq` branch at 0x2009a94 targets 0x2009ab8, is taken when v0(=ret(matchWild)) == 0, and falls through when v0(=ret(matchWild)) != 0.
  The `beq` branch at 0x2009ad8 targets 0x2009ae8, is taken when s4(?) >= t9(?) (unsigned), and falls through when s4(?) < t9(?) (unsigned).
  The `bne` branch at 0x2009ae0 targets 0x2009a88, is taken when s3(=a3) != s1(?), and falls through when s3(=a3) == s1(?).
  The `beq` branch at 0x2009b44 targets 0x2009918 and is always taken.
  The `beq` branch at 0x2009b54 targets 0x2009b68, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2009b6c targets 0x2009b7c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2009b7c targets 0x2009afc and is always taken.
  The `beq` branch at 0x2009b88 targets 0x2009b9c, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2009ba4 targets 0x2009bb4, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2009bb4 targets 0x2009afc and is always taken.
  The `beq` branch at 0x2009bd4 targets 0x2009afc and is always taken.
  The return at 0x20099dc has v0 = 0x0.
  The return at 0x2009b0c has v0 = one of ?, 0x0.
  The return at 0x2009b30 has v0 = 0x0.

- `XSGIvcQueryBestChannelRectangle` in `usr/lib64/libXsgivc.so` at 0x2009be0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2009be0-0x2009e98 (696 bytes).
  It occupies 696 bytes.
  2 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x2009c30, `ld` at 0x2009cb8.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2009c3c, `ld` at 0x2009dd4, `ld` at 0x2009e28.
  The `ld` at 0x2009c48 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2009c54, `ld` at 0x2009c88, `ld` at 0x2009e24.
  The `ld` at 0x2009c58 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2009c70 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2009c78 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2009c80, `sb` at 0x2009d34.
  The `ld` at 0x2009c90 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2009ca8 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2009cb4 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `lw` at 0x2009cc0 loads 4 bytes from [ret(find_display)+16]:8 +0x4.
  The `swc1` at 0x2009cc8 stores 4 bytes to [a0+176]:8 +0xc.
  The `swc1` at 0x2009ce0 stores 4 bytes to [a0+176]:8 +0x10.
  The `swc1` at 0x2009cf8 stores 4 bytes to [a0+176]:8 +0x14.
  The `sb` at 0x2009d10 stores 1 byte to [a0+176]:8 +0x1c.
  The `sw` at 0x2009d18 stores 4 bytes to [a0+176]:8 +0x8.
  The `sw` at 0x2009d1c stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2009d28 stores 1 byte to [a0+176]:8 +0x1.
  The `swc1` at 0x2009d44 stores 4 bytes to [a0+176]:8 +0x18.
  The `swc1` at 0x2009d70 stores 4 bytes to a5 (arg5 at entry) +0x0.
  The `swc1` at 0x2009d90 stores 4 bytes to a5 (arg5 at entry) +0x4.
  The `swc1` at 0x2009db0 stores 4 bytes to a5 (arg5 at entry) +0xc.
  The `swc1` at 0x2009dd0 stores 4 bytes to a5 (arg5 at entry) +0x8.
  2 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2009de0, `ld` at 0x2009e34.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2009dec, `ld` at 0x2009e40.
  The `bgezall` at 0x2009c20 calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2009c4c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+2408]:8.
  The `jalr` at 0x2009d40 calls _XReply with a0=a0 at entry (arg0), a1=sp-144, a2=0x0, a3=0x1, a4=[[ret(find_display)+16]:8+4], a5=0x18, a6=a1 at entry (arg1), a7=a2 at entry (arg2).
  The `jalr` at 0x2009de4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+2408]:8.
  The `jalr` at 0x2009df8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2009e18 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2009e38 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+2408]:8.
  The `jalr` at 0x2009e4c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2009e78 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x2009c28 targets 0x2009e6c, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x2009c34 targets 0x2009e70, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x2009c40 targets 0x2009c54, is taken when a6(=[a0+2408]:8) == 0, and falls through when a6(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2009c68 targets 0x2009e18, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+32) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+32) (unsigned).
  The `beq` branch at 0x2009d48 targets 0x2009e28, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0x2009dd8 targets 0x2009dec, is taken when a6(=[a0+2408]:8) == 0, and falls through when a6(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2009df0 targets 0x2009e00, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2009e20 targets 0x2009c70 and is always taken.
  The `beq` branch at 0x2009e2c targets 0x2009e40, is taken when a6(=[a0+2408]:8) == 0, and falls through when a6(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2009e44 targets 0x2009e54, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The return at 0x2009e10 has v0 = ?.
  The return at 0x2009e64 has v0 = 0x0.
  The return at 0x2009e90 has v0 = 0x0.

- `XSGIvcQueryExternalSyncSourceName` in `usr/lib64/libXsgivc.so` at 0x2009ea0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x2009ea0-0x200a110 (624 bytes).
  It occupies 624 bytes.
  2 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x2009ee4, `ld` at 0x2009f5c.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2009ef0, `ld` at 0x2009fa0, `ld` at 0x200a058.
  The `ld` at 0x2009efc loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2009f08, `ld` at 0x2009f40, `ld` at 0x200a0ac.
  The `ld` at 0x2009f0c loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2009f24 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2009f2c stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2009f34, `sb` at 0x2009f88.
  The `ld` at 0x2009f38 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2009f48 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2009f58 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `lw` at 0x2009f64 loads 4 bytes from [ret(find_display)+16]:8 +0x4.
  The `sw` at 0x2009f68 stores 4 bytes to [a0+176]:8 +0x8.
  The `sw` at 0x2009f70 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2009f7c stores 1 byte to [a0+176]:8 +0x1.
  3 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2009fac, `ld` at 0x200a064, `ld` at 0x200a0bc.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2009fb8, `ld` at 0x200a070, `ld` at 0x200a0c8.
  The `sb` at 0x200a030 stores 1 byte to ?.
  The `bgezall` at 0x2009ed4 calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2009f00 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x2009f84 calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0, a4=[[ret(find_display)+16]:8+4], a5=0x1d, a6=a1 at entry (arg1), a7=a2 at entry (arg2).
  The `jalr` at 0x2009fb0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2009fc4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2009ff0 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x200a018 calls _XReadPad with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0x200a04c calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=-0x4, a3=?.
  The `jalr` at 0x200a068 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x200a07c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x200a0a0 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x200a0c0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x200a0d4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x200a100 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x2009edc targets 0x200a0f4, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x2009ee8 targets 0x200a0f8, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x2009ef4 targets 0x2009f08, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2009f1c targets 0x200a09c, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+12) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+12) (unsigned).
  The `beq` branch at 0x2009f8c targets 0x200a0b0, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bne` branch at 0x2009f98 targets 0x2009fe4, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x2009fa4 targets 0x2009fb8, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2009fbc targets 0x2009fd0, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x200a000 targets 0x200a034, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `beq` branch at 0x200a02c targets 0x200a058 and is always taken.
  The `beq` branch at 0x200a05c targets 0x200a070, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `beq` branch at 0x200a074 targets 0x200a088, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x200a0a8 targets 0x2009f20 and is always taken.
  The `beq` branch at 0x200a0b4 targets 0x200a0c8, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x200a0cc targets 0x200a0e0, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x200a108 targets 0x200a088 and is always taken.
  The return at 0x2009fdc has v0 = 0x0.
  The return at 0x200a094 has v0 = one of ?, 0x0.
  The return at 0x200a0ec has v0 = 0x0.

- `XSGIvcSetOutputPhaseH` in `usr/lib64/libXsgivc.so` at 0x200a110 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x200a110-0x200a150 (64 bytes).
  It occupies 64 bytes.
  The `bgezall` at 0x200a138 calls SetOneControl [0x2009730] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x7, a4=a3 at entry (arg3).
  The return at 0x200a148 has v0 = ret(SetOneControl).

- `XSGIvcSetOutputPhaseV` in `usr/lib64/libXsgivc.so` at 0x200a150 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x200a150-0x200a190 (64 bytes).
  It occupies 64 bytes.
  The `bgezall` at 0x200a178 calls SetOneControl [0x2009730] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x9, a4=a3 at entry (arg3).
  The return at 0x200a188 has v0 = ret(SetOneControl).

- `XSGIvcSelectInput` in `usr/lib64/libXsgivc.so` at 0x200a190 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x200a190-0x200a2d4 (324 bytes).
  It occupies 324 bytes.
  2 such `ld` accesses load 8 bytes from ret(find_display) +0x10, including `ld` at 0x200a1d4, `ld` at 0x200a248.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x200a1e0, `ld` at 0x200a264.
  The `ld` at 0x200a1ec loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x200a1f8, `ld` at 0x200a230, `ld` at 0x200a2b8.
  The `ld` at 0x200a1fc loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x200a214 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x200a21c stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x200a224, `sb` at 0x200a260.
  The `ld` at 0x200a228 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x200a23c stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x200a244 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `lw` at 0x200a250 loads 4 bytes from [ret(find_display)+16]:8 +0x4.
  The `sw` at 0x200a254 stores 4 bytes to [a0+176]:8 +0x8.
  The `sw` at 0x200a258 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x200a25c stores 1 byte to [a0+176]:8 +0x1.
  The `ld` at 0x200a270 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x200a27c loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `bgezall` at 0x200a1c4 calls find_display [0x2007e50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x200a1f0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x200a274 calls (unknown callee) with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a1 at entry (arg1), a3=0x17, a4=[[ret(find_display)+16]:8+4], a5=[a0+2408]:8, a6=0x1, a7=[a0+176]:8+12.
  The `jalr` at 0x200a288 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x200a2ac calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0x200a2c4 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0x200c260]:8, a2=?, a3=?.
  The `beq` branch at 0x200a1cc targets 0x200a2bc, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0x200a1d8 targets 0x200a2c0, is taken when v0(=[ret(find_display)+16]:8) == 0, and falls through when v0(=[ret(find_display)+16]:8) != 0.
  The `beq` branch at 0x200a1e4 targets 0x200a1f8, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `bne` branch at 0x200a20c targets 0x200a2a8, is taken when v1(=[a0+184]:8) < a0(=[a0+176]:8+12) (unsigned), and falls through when v1(=[a0+184]:8) >= a0(=[a0+176]:8+12) (unsigned).
  The `beq` branch at 0x200a268 targets 0x200a27c, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `beq` branch at 0x200a280 targets 0x200a294, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x200a2b4 targets 0x200a210 and is always taken.
  The `beq` branch at 0x200a2cc targets 0x200a294 and is always taken.
  The return at 0x200a2a0 has v0 = one of ?, ret(?), ret(XMissingExtension).

- `XSGIvcSetOutputGain` in `usr/lib64/libXsgivc.so` at 0x200a2e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/lib64/libXsgivc.so`.
  Range: 0x200a2e0-0x200a390 (176 bytes).
  It occupies 176 bytes.
  The `bgezall` at 0x200a360 calls SetOneControl [0x2009730] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?, a5=0x4, a6=0x5.
  The `beq` branch at 0x200a300 targets 0x200a334, is taken when a3 == at(=0x1), and falls through when a3 != at(=0x1).
  The `beq` branch at 0x200a30c targets 0x200a378, is taken when a3 == v1(=0x2), and falls through when a3 != v1(=0x2).
  The `beq` branch at 0x200a314 targets 0x200a380, is taken when a3 == a4(=0x3), and falls through when a3 != a4(=0x3).
  The `beq` branch at 0x200a31c targets 0x200a388, is taken when a3 == a5(=0x4), and falls through when a3 != a5(=0x4).
  The `bne` branch at 0x200a324 targets 0x200a36c, is taken when a3 != a6(=0x5), and falls through when a3 == a6(=0x5).
  The `beq` branch at 0x200a32c targets 0x200a338 and is always taken.
  The `beq` branch at 0x200a378 targets 0x200a338 and is always taken.
  The `beq` branch at 0x200a380 targets 0x200a338 and is always taken.
  The `beq` branch at 0x200a388 targets 0x200a338 and is always taken.
  The return at 0x200a370 has v0 = one of 0x9de8, ret(SetOneControl).
