# Readings: `usr/lib/libXsgivc.so`

One entry per routine, filed here from the reading batches by binary.

- `find_display` in `usr/lib/libXsgivc.so` at 0xf4019c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf4019c0-0xf401a8c (204 bytes).
  It occupies 204 bytes.
  2 such `lw` accesses load 4 bytes from abs 0xf40c000, including `lw` at 0xf4019dc, `lw` at 0xf401a58.
  The `sw` at 0xf401a10 stores 4 bytes to abs 0xf40c000.
  The `lw` at 0xf401a64 loads 4 bytes from abs 0xf40c004.
  The `jalr` at 0xf4019f4 calls XextCreateExtension with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[0xf40c000], a3=a3 at entry (arg3).
  The `jalr` at 0xf401a28 calls XextFindDisplay with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xf401a68 calls XextAddDisplay with a0=[0xf40c000], a1=a0 at entry (arg0), a2=[0xf40c004], a3=0xf40c008.
  The `bne` branch at 0xf4019e8 targets 0xf401a1c, is taken when a2(=[0xf40c000]) != 0, and falls through when a2(=[0xf40c000]) == 0.
  The `bne` branch at 0xf401a0c targets 0xf401a1c, is taken when v0(=ret(XextCreateExtension)) != 0, and falls through when v0(=ret(XextCreateExtension)) == 0.
  The `beq` branch at 0xf401a14 targets 0xf401a7c and is always taken.
  The `bne` branch at 0xf401a44 targets 0xf401a78, is taken when v0(=ret(XextFindDisplay)) != 0, and falls through when v0(=ret(XextFindDisplay)) == 0.
  The return at 0xf401a84 has v0 = one of 0x0, ?.

- `close_display` in `usr/lib/libXsgivc.so` at 0xf401a8c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf401a8c-0xf401ad4 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xf401abc loads 4 bytes from abs 0xf40c000.
  The `jalr` at 0xf401ab8 calls XextRemoveDisplay with a0=[0xf40c000], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xf401acc has v0 = ret(XextRemoveDisplay).

- `error_string` in `usr/lib/libXsgivc.so` at 0xf401ad4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf401ad4-0xf401b90 (188 bytes).
  It occupies 188 bytes.
  The `lw` at 0xf401af8 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lw` at 0xf401b2c loads 4 bytes from abs 0xf40c004.
  The `lw` at 0xf401b50 loads 4 bytes from table(0xf40c034) +0x0.
  The `jalr` at 0xf401b28 calls sprintf with a0=sp-256, a1=0xf408f64, a2=[0xf40c004], a3=?.
  The `jalr` at 0xf401b68 calls XGetErrorDatabaseText with a0=a0 at entry (arg0), a1=0xf408f6c, a2=sp-256, a3=entry(0xf40c034).
  The `bltz` branch at 0xf401b04 targets 0xf401b7c, is taken when s0(?) < 0 (signed), and falls through when s0(?) >= 0 (signed).
  The `bgez` branch at 0xf401b0c targets 0xf401b7c, is taken when s0(?) >= 0 (signed), and falls through when s0(?) < 0 (signed).
  The `beq` branch at 0xf401b74 targets 0xf401b7c and is always taken.
  The return at 0xf401b88 has v0 = one of 0x0, a3.

- `wire_to_event` in `usr/lib/libXsgivc.so` at 0xf401b90 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf401b90-0xf402704 (2932 bytes).
  It occupies 2932 bytes.
  The `lbu` at 0xf401bcc loads 1 byte from a2 (arg2 at entry) +0x1.
  The `lw` at 0xf401bd0 loads 4 bytes from ret(find_display) +0x8.
  The `lw` at 0xf401be0 loads 4 bytes from [ret(find_display)+8] +0x8.
  The `lw` at 0xf401bf0 loads 4 bytes from ([a2+1]:1 << 0x2) +0xf408f78.
  The `jalr` at 0xf401bc4 calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  Calls (unknown callee) via register with a0=?, a1=?, a2=?, a3=? (`jr` at 0xf401bf8).
  The `beq` branch at 0xf401bdc targets 0xf4022b8, is taken when t8(=[a2+1]:1) >= 0xd (unsigned), and falls through when t8(=[a2+1]:1) < 0xd (unsigned).
  The return at 0xf4022cc has v0 = 0x1.
  The instructions from 0xf401c00 to 0xf4022b4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xf4022d4 to 0xf402700 are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcQueryVersion` in `usr/lib/libXsgivc.so` at 0xf4022d4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf4022d4-0xf4024b4 (480 bytes).
  It occupies 480 bytes.
  The `lw` at 0xf402314 loads 4 bytes from ret(find_display) +0x8.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf40231c, `lw` at 0xf4023e8, `lw` at 0xf402444.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf402330, `lw` at 0xf402348, `lw` at 0xf402374.
  The `lw` at 0xf402334 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xf40234c loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf40235c, `sw` at 0xf402378.
  The `sh` at 0xf402380 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf402384, `sb` at 0xf4023cc.
  The `lw` at 0xf402388 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf40239c stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xf4023a0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xf4023b0, `lw` at 0xf4023bc.
  The `sb` at 0xf4023c0 stores 1 byte to [a0+108] +0x1.
  The `sh` at 0xf4023c4 stores 2 bytes to [a0+108] +0x4.
  The `sh` at 0xf4023c8 stores 2 bytes to [a0+108] +0x6.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf4023f0, `lw` at 0xf402408, `lw` at 0xf40244c.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf4023f4, `lw` at 0xf402450.
  The `sw` at 0xf402434 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0xf402440 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `lw` at 0xf40248c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `jalr` at 0xf402300 calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf40233c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf402368 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4023d8 calls _XReply with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x1.
  The `jalr` at 0xf4023fc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf402418 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf402458 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf402474 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf40230c targets 0xf402320, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bnel` branch at 0xf402318 targets 0xf40232c, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0; its branch-likely delay slot `lw v0,1232(s0)` at 0xf40231c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf402320 targets 0xf4024a0 and is always taken.
  The `beql` branch at 0xf40232c targets 0xf40234c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xf402330 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf402358 targets 0xf40237c, is taken when t7(=[a0+112]) >= t8(=[a0+108]+8) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+8) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xf40235c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf4023e0 targets 0xf40242c, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xf4023ec targets 0xf40240c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf4023f0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf402410 targets 0xf402424, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf402424 targets 0xf4024a0 and is always taken.
  The `beql` branch at 0xf402448 targets 0xf402468, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf40244c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf40246c targets 0xf402484, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw t4,84(sp)` at 0xf402470 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf402490 targets 0xf4024a0, is taken when t5(=[a1]) == at(=0x1), and falls through when t5(=[a1]) != at(=0x1).
  The `beq` branch at 0xf402498 targets 0xf4024a0 and is always taken.
  The return at 0xf4024ac has v0 = one of 0x0, 0x1.
  The instructions from 0xf402328 to 0xf402328 are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcQueryVideoScreenInfo` in `usr/lib/libXsgivc.so` at 0xf4024b4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf4024b4-0xf402704 (592 bytes).
  It occupies 592 bytes.
  The `lw` at 0xf4024f4 loads 4 bytes from ret(find_display) +0x8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf4024fc, `lw` at 0xf4025e0, `lw` at 0xf402654.
  The `lw` at 0xf402510 loads 4 bytes from abs 0xf40c004.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf402528, `lw` at 0xf402540, `lw` at 0xf40256c.
  The `lw` at 0xf40252c loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xf402544 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf402554, `sw` at 0xf402570.
  The `sh` at 0xf40257c stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf402580, `sb` at 0xf4025bc.
  The `lw` at 0xf402584 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf402598 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xf40259c stores 4 bytes to a0 (arg0 at entry) +0x60.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xf4025ac, `lw` at 0xf4025b4.
  The `sb` at 0xf4025b8 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf4025c4 stores 4 bytes to [a0+108] +0x4.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf4025e8, `lw` at 0xf402600, `lw` at 0xf40265c.
  3 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf4025ec, `lw` at 0xf402660, `lw` at 0xf4026bc.
  The `sw` at 0xf40262c stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `sw` at 0xf402634 stores 4 bytes to a2 (arg2 at entry) +0x4.
  The `sw` at 0xf40263c stores 4 bytes to a2 (arg2 at entry) +0x8.
  The `sw` at 0xf402644 stores 4 bytes to a2 (arg2 at entry) +0x2c.
  The `jalr` at 0xf4024e0 calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf40250c calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf402534 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf402560 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4025cc calls _XReply with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x0.
  The `jalr` at 0xf4025f4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf402610 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf402668 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf402684 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4026a4 calls _XRead with a0=a0 at entry (arg0), a1=a2+12, a2=?, a3=?.
  The `jalr` at 0xf4026c4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4026e0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf4024ec targets 0xf402500, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bnel` branch at 0xf4024f8 targets 0xf402524, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xf4024fc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf402518 targets 0xf4026f0 and is always taken.
  The `beql` branch at 0xf402524 targets 0xf402544, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xf402528 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf402550 targets 0xf402574, is taken when t7(=[a0+112]) >= t8(=[a0+108]+8) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+8) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xf402554 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf4025d8 targets 0xf402624, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xf4025e4 targets 0xf402604, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf4025e8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf402608 targets 0xf40261c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf40261c targets 0xf4026f0 and is always taken.
  The `bne` branch at 0xf40264c targets 0xf402698, is taken when t7(?) != 0, and falls through when t7(?) == 0.
  The `beql` branch at 0xf402658 targets 0xf402678, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf40265c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf40267c targets 0xf402690, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf402690 targets 0xf4026f0 and is always taken.
  The `beql` branch at 0xf4026b4 targets 0xf4026d4, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf4026b8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf4026d8 targets 0xf4026f0, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `addiu v0,zero,1` at 0xf4026dc runs only when taken and is annulled on fall-through.
  The return at 0xf4026fc has v0 = one of 0x0, 0x1.
  The instructions from 0xf402520 to 0xf402520 are not reached by any path from the entry, and their branches are not listed.

- `GenerateVFList` in `usr/lib/libXsgivc.so` at 0xf402704 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf402704-0xf402890 (396 bytes).
  It occupies 396 bytes.
  The `lw` at 0xf40272c loads 4 bytes from a1 (arg1 at entry) +0x100.
  The `lw` at 0xf402744 loads 4 bytes from a1 (arg1 at entry) +0x104.
  The `sw` at 0xf40274c stores 4 bytes to (sp + one of -0x28, -0x24) +0x0.
  The `lw` at 0xf402758 loads 4 bytes from a1 (arg1 at entry) +0x108.
  The `sw` at 0xf402760 stores 4 bytes to (sp + one of -0x28, -0x24, -0x20) +0x0.
  The `lw` at 0xf40276c loads 4 bytes from a1 (arg1 at entry) +0x10c.
  The `sw` at 0xf402774 stores 4 bytes to (sp + one of -0x28, -0x24, -0x20, -0x1c) +0x0.
  The `lwc1` at 0xf402788 loads 4 bytes from a1 (arg1 at entry) +0x110.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xf4027a0, `sw` at 0xf4027cc, `sw` at 0xf4027e0.
  The `lwc1` at 0xf4027b4 loads 4 bytes from a1 (arg1 at entry) +0x114.
  The `lw` at 0xf4027d8 loads 4 bytes from a1 (arg1 at entry) +0x118.
  The `lw` at 0xf4027ec loads 4 bytes from a1 (arg1 at entry) +0x134.
  The `lhu` at 0xf4027f8 loads 2 bytes from a3 (arg3 at entry) +0x0.
  The `sh` at 0xf402808 stores 2 bytes to a3 (arg3 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf402814, `lw` at 0xf40284c.
  The `lw` at 0xf402818 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf402864 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `jalr` at 0xf402838 calls memcpy with a0=[a0+108], a1=sp-40, a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xf402874 calls _XSend with a0=a0 at entry (arg0), a1=sp-40, a2=?, a3=a3 at entry (arg3).
  The `beq` branch at 0xf402724 targets 0xf402738, is taken when (a2 & 0x2) == 0, and falls through when (a2 & 0x2) != 0.
  The `beq` branch at 0xf40273c targets 0xf402750, is taken when (a2 & 0x4) == 0, and falls through when (a2 & 0x4) != 0.
  The `beq` branch at 0xf402750 targets 0xf402764, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xf402764 targets 0xf402778, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0xf402778 targets 0xf4027a4, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `beq` branch at 0xf4027a4 targets 0xf4027d0, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xf4027d0 targets 0xf4027e4, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xf4027e4 targets 0xf4027f8, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0xf402824 targets 0xf402868, is taken when t8(=[a0+112]) < t9(?) (unsigned), and falls through when t8(=[a0+112]) >= t9(?) (unsigned).
  The `beq` branch at 0xf402860 targets 0xf402880 and is always taken.
  The return at 0xf402888 has v0 = one of a0, ret(_XSend).

- `ReadFieldInfo` in `usr/lib/libXsgivc.so` at 0xf402890 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf402890-0xf402920 (144 bytes).
  It occupies 144 bytes.
  The `sw` at 0xf4028cc stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0xf4028d4 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `sw` at 0xf4028dc stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `sw` at 0xf4028e4 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `sw` at 0xf4028ec stores 4 bytes to a1 (arg1 at entry) +0x10.
  The `sw` at 0xf4028f4 stores 4 bytes to a1 (arg1 at entry) +0x14.
  The `sw` at 0xf4028fc stores 4 bytes to a1 (arg1 at entry) +0x18.
  The `sw` at 0xf402904 stores 4 bytes to a1 (arg1 at entry) +0x1c.
  The `sw` at 0xf40290c stores 4 bytes to a1 (arg1 at entry) +0x20.
  The `jalr` at 0xf4028b8 calls _XRead with a0=a0 at entry (arg0), a1=sp-36, a2=0x24, a3=a1 at entry (arg1).
  The return at 0xf402918 has v0 = ret(_XRead).

- `ReadFormatInfo` in `usr/lib/libXsgivc.so` at 0xf402920 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf402920-0xf40486c (8012 bytes).
  It occupies 8012 bytes.
  The `sw` at 0xf402970 stores 4 bytes to a1 (arg1 at entry) +0x104.
  The `sw` at 0xf402980 stores 4 bytes to a1 (arg1 at entry) +0x100.
  The `sw` at 0xf402988 stores 4 bytes to a1 (arg1 at entry) +0x10c.
  The `sw` at 0xf402990 stores 4 bytes to a1 (arg1 at entry) +0x108.
  The `swc1` at 0xf4029b8 stores 4 bytes to a1 (arg1 at entry) +0x110.
  The `swc1` at 0xf4029e4 stores 4 bytes to a1 (arg1 at entry) +0x114.
  The `sw` at 0xf4029ec stores 4 bytes to a1 (arg1 at entry) +0x118.
  The `sw` at 0xf4029f4 stores 4 bytes to a1 (arg1 at entry) +0x11c.
  The `sw` at 0xf4029fc stores 4 bytes to a1 (arg1 at entry) +0x120.
  The `sw` at 0xf402a04 stores 4 bytes to a1 (arg1 at entry) +0x124.
  The `sw` at 0xf402a0c stores 4 bytes to a1 (arg1 at entry) +0x128.
  The `sw` at 0xf402a14 stores 4 bytes to a1 (arg1 at entry) +0x134.
  The `sw` at 0xf402a1c stores 4 bytes to a1 (arg1 at entry) +0x12c.
  The `sw` at 0xf402a78 stores 4 bytes to a1 (arg1 at entry) +0x130.
  The `jalr` at 0xf40295c calls _XRead with a0=a0 at entry (arg0), a1=sp-48, a2=0x30, a3=a3 at entry (arg3).
  The `jalr` at 0xf402a28 calls _XReadPad with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xf402a54 calls ReadFieldInfo [0xf402890] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgez` branch at 0xf40299c targets 0xf4029b0, is taken when t0(?) >= 0 (signed), and falls through when t0(?) < 0 (signed).
  The `bgez` branch at 0xf4029c4 targets 0xf4029d8, is taken when t1(?) >= 0 (signed), and falls through when t1(?) < 0 (signed).
  The `beq` branch at 0xf402a3c targets 0xf402a74, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0xf402a6c targets 0xf402a44, is taken when s0(?) < t0(?) (unsigned), and falls through when s0(?) >= t0(?) (unsigned).
  The return at 0xf402aa8 has v0 = ?.
  The instructions from 0xf402ab0 to 0xf404868 are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcListVideoFormats` in `usr/lib/libXsgivc.so` at 0xf402ab0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf402ab0-0xf402e54 (932 bytes).
  It occupies 932 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf402afc, `lw` at 0xf402bbc.
  The `lw` at 0xf402b18 loads 4 bytes from abs 0xf40c004.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf402b2c, `lw` at 0xf402c2c, `lw` at 0xf402c84.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf402b40, `lw` at 0xf402b58, `lw` at 0xf402b84.
  The `lw` at 0xf402b44 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xf402b5c loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf402b8c stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xf402b98 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf402b9c, `sb` at 0xf402bd0.
  The `lw` at 0xf402ba0 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf402bb4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xf402bb8 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `lw` at 0xf402bc8 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sb` at 0xf402bcc stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf402bdc stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf402be8 stores 4 bytes to [a0+108] +0x8.
  The `sb` at 0xf402bf0 stores 1 byte to [a0+108] +0xc.
  The `sw` at 0xf402bf8 stores 4 bytes to [a0+108] +0x14.
  The `sw` at 0xf402c00 stores 4 bytes to [a0+108] +0x10.
  10 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf402c34, `lw` at 0xf402c4c, `lw` at 0xf402c8c.
  5 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf402c38, `lw` at 0xf402c90, `lw` at 0xf402cdc.
  The `sw` at 0xf402ccc stores 4 bytes to ?.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xf402dac, `lw` at 0xf402de4.
  The `jalr` at 0xf402ae8 calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf402b14 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf402b4c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf402b78 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf402bfc calls GenerateVFList [0xf402704] with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=?, a3=[a0+108]+2.
  The `jalr` at 0xf402c1c calls _XReply with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x0.
  The `jalr` at 0xf402c40 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf402c5c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf402c98 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf402cb4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf402ce4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf402d00 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf402d48 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xf402d70 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf402d8c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf402dd0 calls ReadFormatInfo [0xf402920] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf402e10 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf402e2c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf402af4 targets 0xf402b08, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bne` branch at 0xf402b00 targets 0xf402b28, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0.
  The `beq` branch at 0xf402b20 targets 0xf402e3c and is always taken.
  The `bnel` branch at 0xf402b28 targets 0xf402b3c, is taken when s1(=a3) != 0, and falls through when s1(=a3) == 0; its branch-likely delay slot `lw v0,1232(s2)` at 0xf402b2c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf402b30 targets 0xf402e3c and is always taken.
  The `beql` branch at 0xf402b3c targets 0xf402b5c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s2)` at 0xf402b40 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf402b68 targets 0xf402b8c, is taken when t7(=[a0+112]) >= t8(=[a0+108]+24) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+24) (unsigned); its branch-likely delay slot `lw a2,128(sp)` at 0xf402b6c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf402c24 targets 0xf402c70, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xf402c30 targets 0xf402c50, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s2)` at 0xf402c34 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf402c54 targets 0xf402c68, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf402c68 targets 0xf402e3c and is always taken.
  The `bne` branch at 0xf402c7c targets 0xf402cc8, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beql` branch at 0xf402c88 targets 0xf402ca8, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s2)` at 0xf402c8c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf402cac targets 0xf402cc0, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf402cc0 targets 0xf402e3c and is always taken.
  The `bgtz` branch at 0xf402cc8 targets 0xf402d14, is taken when v0(?) > 0 (signed), and falls through when v0(?) <= 0 (signed).
  The `beql` branch at 0xf402cd4 targets 0xf402cf4, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s2)` at 0xf402cd8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf402cf8 targets 0xf402d0c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf402d0c targets 0xf402e3c and is always taken.
  The `bne` branch at 0xf402d54 targets 0xf402da0, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beql` branch at 0xf402d60 targets 0xf402d80, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s2)` at 0xf402d64 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf402d84 targets 0xf402d98, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf402d98 targets 0xf402e3c and is always taken.
  The `blezl` branch at 0xf402db4 targets 0xf402e00, is taken when t1(?) <= 0 (signed), and falls through when t1(?) > 0 (signed); its branch-likely delay slot `lw v0,1232(s2)` at 0xf402db8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf402df4 targets 0xf402dbc, is taken when v1(?) < t3(?) (signed), and falls through when v1(?) >= t3(?) (signed).
  The `beql` branch at 0xf402e00 targets 0xf402e20, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s2)` at 0xf402e04 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf402e24 targets 0xf402e3c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw v0,56(sp)` at 0xf402e28 runs only when taken and is annulled on fall-through.
  The return at 0xf402e4c has v0 = one of 0x0, ret(malloc).
  The instructions from 0xf402b38 to 0xf402b38 are not reached by any path from the entry, and their branches are not listed.

- `matchWild` in `usr/lib/libXsgivc.so` at 0xf402e54 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf402e54-0xf402fd8 (388 bytes).
  It occupies 388 bytes.
  5 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xf402eb8, `lbu` at 0xf402f08, `lbu` at 0xf402f68.
  The `lbu` at 0xf402f04 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xf402e74 calls strlen with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf402e8c calls strlen with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `blez` branch at 0xf402ea4 targets 0xf402ee8, is taken when v0(=ret(strlen)) <= 0 (signed), and falls through when v0(=ret(strlen)) > 0 (signed).
  The `beq` branch at 0xf402ec4 targets 0xf402ed4, is taken when t2(=0x2a) == a0(?), and falls through when t2(=0x2a) != a0(?).
  The `bne` branch at 0xf402ecc targets 0xf402edc, is taken when t3(=0x3f) != a0(?), and falls through when t3(=0x3f) == a0(?).
  The `beq` branch at 0xf402ed4 targets 0xf402fc8 and is always taken.
  The `bne` branch at 0xf402edc targets 0xf402eb8, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `blez` branch at 0xf402ef0 targets 0xf402fac, is taken when t1(=ret(strlen)) <= 0 (signed), and falls through when t1(=ret(strlen)) > 0 (signed).
  The `blez` branch at 0xf402ef8 targets 0xf402fac, is taken when v0(=ret(strlen)) <= 0 (signed), and falls through when v0(=ret(strlen)) > 0 (signed).
  The `bne` branch at 0xf402f0c targets 0xf402f28, is taken when a0(?) != t7(?), and falls through when a0(?) == t7(?).
  The `beq` branch at 0xf402f20 targets 0xf402f98 and is always taken.
  The `bne` branch at 0xf402f28 targets 0xf402f44, is taken when t3(=0x3f) != a0(?), and falls through when t3(=0x3f) == a0(?).
  The `beq` branch at 0xf402f3c targets 0xf402f98 and is always taken.
  The `bne` branch at 0xf402f44 targets 0xf402f90, is taken when t2(=0x2a) != a0(?), and falls through when t2(=0x2a) == a0(?).
  The `bne` branch at 0xf402f50 targets 0xf402f60, is taken when t1(=ret(strlen)) != a0(?), and falls through when t1(=ret(strlen)) == a0(?).
  The `beq` branch at 0xf402f58 targets 0xf402fc8 and is always taken.
  The `beq` branch at 0xf402f60 targets 0xf402f98, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beql` branch at 0xf402f70 targets 0xf402f9c, is taken when t8(?) == a0(?), and falls through when t8(?) != a0(?); its branch-likely delay slot `slt at,t0,t1` at 0xf402f74 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf402f80 targets 0xf402f6c, is taken when a1(?) < a2(=ret(strlen)) (signed), and falls through when a1(?) >= a2(=ret(strlen)) (signed).
  The `beq` branch at 0xf402f88 targets 0xf402f9c and is always taken.
  The `beq` branch at 0xf402f90 targets 0xf402fc8 and is always taken.
  The `beq` branch at 0xf402f9c targets 0xf402fac, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bnel` branch at 0xf402fa4 targets 0xf402f08, is taken when at(?) != 0, and falls through when at(?) == 0; its branch-likely delay slot `lbu a0,0(a3)` at 0xf402fa8 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xf402fac targets 0xf402fc8, is taken when t0(?) != t1(=ret(strlen)), and falls through when t0(?) == t1(=ret(strlen)); its branch-likely delay slot `or v0,zero,zero` at 0xf402fb0 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xf402fb4 targets 0xf402fc8, is taken when a1(?) != v0(=ret(strlen)), and falls through when a1(?) == v0(=ret(strlen)); its branch-likely delay slot `or v0,zero,zero` at 0xf402fb8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf402fbc targets 0xf402fc8 and is always taken.
  The return at 0xf402fd0 has v0 = one of 0x0, 0x1.
  The instructions from 0xf402fc4 to 0xf402fc4 are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcListVideoFormatCombinations` in `usr/lib/libXsgivc.so` at 0xf402fd8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf402fd8-0xf403340 (872 bytes).
  It occupies 872 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf403028, `lw` at 0xf4030e4.
  The `lw` at 0xf403048 loads 4 bytes from abs 0xf40c004.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf40305c, `lw` at 0xf403120, `lw` at 0xf403174.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf403070, `lw` at 0xf403088, `lw` at 0xf4030b4.
  The `lw` at 0xf403074 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xf40308c loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf4030bc stores 4 bytes to a0 (arg0 at entry) +0x64.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf4030c0, `sb` at 0xf4030fc.
  The `sh` at 0xf4030c4 stores 2 bytes to [a0+108] +0x2.
  The `lw` at 0xf4030c8 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf4030dc stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xf4030e0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `lw` at 0xf4030f0 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sb` at 0xf4030f4 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf4030f8 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf403108 stores 4 bytes to [a0+108] +0x8.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf403128, `lw` at 0xf403140, `lw` at 0xf40317c.
  4 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf40312c, `lw` at 0xf403180, `lw` at 0xf4031cc.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0xf403290, `sw` at 0xf4032d8, `sw` at 0xf4032e4.
  The `lw` at 0xf4032c8 loads 4 bytes from ?.
  The `jalr` at 0xf403014 calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf403044 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf40307c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4030a8 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403110 calls _XReply with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x0.
  The `jalr` at 0xf403134 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403150 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403188 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4031a4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4031d4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4031f0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403210 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xf40323c calls _XRead with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40325c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403278 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4032b8 calls matchWild with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4032f0 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xf403020 targets 0xf403038, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bne` branch at 0xf403030 targets 0xf403058, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0.
  The `beq` branch at 0xf403050 targets 0xf403324 and is always taken.
  The `bnel` branch at 0xf403058 targets 0xf40306c, is taken when t7(=a2) != 0, and falls through when t7(=a2) == 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xf40305c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf403060 targets 0xf403324 and is always taken.
  The `beql` branch at 0xf40306c targets 0xf40308c, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xf403070 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf403098 targets 0xf4030bc, is taken when t8(=[a0+112]) >= t1(=[a0+108]+12) (unsigned), and falls through when t8(=[a0+112]) < t1(=[a0+108]+12) (unsigned); its branch-likely delay slot `addiu t0,zero,3` at 0xf40309c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf403118 targets 0xf403164, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xf403124 targets 0xf403144, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf403128 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf403148 targets 0xf40315c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf40315c targets 0xf403324 and is always taken.
  The `bne` branch at 0xf40316c targets 0xf4031b8, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beql` branch at 0xf403178 targets 0xf403198, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf40317c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf40319c targets 0xf4031b0, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf4031b0 targets 0xf403324 and is always taken.
  The `bne` branch at 0xf4031b8 targets 0xf403204, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beql` branch at 0xf4031c4 targets 0xf4031e4, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf4031c8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf4031e8 targets 0xf4031fc, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf4031fc targets 0xf403324 and is always taken.
  The `beql` branch at 0xf40324c targets 0xf40326c, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf403250 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf403270 targets 0xf403288, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw s3,136(sp)` at 0xf403274 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf40329c targets 0xf403324, is taken when t6(?) == 0, and falls through when t6(?) != 0; its branch-likely delay slot `lw v0,72(sp)` at 0xf4032a0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf4032a4 targets 0xf403324, is taken when t7(=a3) == 0, and falls through when t7(=a3) != 0; its branch-likely delay slot `lw v0,72(sp)` at 0xf4032a8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf4032c0 targets 0xf4032e8, is taken when v0(=ret(matchWild)) == 0, and falls through when v0(=ret(matchWild)) != 0.
  The `beq` branch at 0xf40330c targets 0xf403320, is taken when s1(?) >= t5(?) (unsigned), and falls through when s1(?) < t5(?) (unsigned).
  The `bne` branch at 0xf403318 targets 0xf4032ac, is taken when s0(?) != t9(=a3), and falls through when s0(?) == t9(=a3).
  The return at 0xf403338 has v0 = one of 0x0, ret(malloc).
  The instructions from 0xf403068 to 0xf403068 are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcListVideoFormatsInCombination` in `usr/lib/libXsgivc.so` at 0xf403340 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf403340-0xf4036e4 (932 bytes).
  It occupies 932 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf40338c, `lw` at 0xf403438.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf403394, `lw` at 0xf4034bc, `lw` at 0xf403514.
  The `lw` at 0xf4033a8 loads 4 bytes from abs 0xf40c004.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf4033c0, `lw` at 0xf4033d8, `lw` at 0xf403404.
  The `lw` at 0xf4033c4 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xf4033dc loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf4033ec, `sw` at 0xf403408.
  2 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xf403414, `sh` at 0xf40347c.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf403418, `sb` at 0xf403444.
  The `lw` at 0xf40341c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf403430 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xf403434 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `lw` at 0xf40343c loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sb` at 0xf403440 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf40344c stores 4 bytes to [a0+108] +0x4.
  The `lhu` at 0xf403460 loads 2 bytes from [a0+108] +0x2.
  The `sw` at 0xf403478 stores 4 bytes to [a0+108] +0x8.
  10 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf4034c4, `lw` at 0xf4034dc, `lw` at 0xf40351c.
  5 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf4034c8, `lw` at 0xf403520, `lw` at 0xf40356c.
  The `sw` at 0xf40355c stores 4 bytes to a3 (arg3 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lw` at 0xf40363c, `lw` at 0xf403674.
  The `jalr` at 0xf403378 calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf4033a4 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf4033cc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4033f8 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403458 calls strlen with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40348c calls _XSend with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=ret(strlen)+1, a3=?.
  The `jalr` at 0xf4034ac calls _XReply with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x0.
  The `jalr` at 0xf4034d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4034ec calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403528 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403544 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403574 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403590 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4035d8 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xf403600 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40361c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403660 calls ReadFormatInfo [0xf402920] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4036a0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4036bc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf403384 targets 0xf403398, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bnel` branch at 0xf403390 targets 0xf4033bc, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0; its branch-likely delay slot `lw v0,1232(s2)` at 0xf403394 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf4033b0 targets 0xf4036cc and is always taken.
  The `beql` branch at 0xf4033bc targets 0xf4033dc, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,108(s2)` at 0xf4033c0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf4033e8 targets 0xf40340c, is taken when t7(=[a0+112]) >= t8(=[a0+108]+12) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+12) (unsigned); its branch-likely delay slot `sw v0,100(s2)` at 0xf4033ec runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf4034b4 targets 0xf403500, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xf4034c0 targets 0xf4034e0, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s2)` at 0xf4034c4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf4034e4 targets 0xf4034f8, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf4034f8 targets 0xf4036cc and is always taken.
  The `bne` branch at 0xf40350c targets 0xf403558, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beql` branch at 0xf403518 targets 0xf403538, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s2)` at 0xf40351c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf40353c targets 0xf403550, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf403550 targets 0xf4036cc and is always taken.
  The `bgtz` branch at 0xf403558 targets 0xf4035a4, is taken when s0(?) > 0 (signed), and falls through when s0(?) <= 0 (signed).
  The `beql` branch at 0xf403564 targets 0xf403584, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s2)` at 0xf403568 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf403588 targets 0xf40359c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf40359c targets 0xf4036cc and is always taken.
  The `bne` branch at 0xf4035e4 targets 0xf403630, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beql` branch at 0xf4035f0 targets 0xf403610, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s2)` at 0xf4035f4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf403614 targets 0xf403628, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf403628 targets 0xf4036cc and is always taken.
  The `blezl` branch at 0xf403644 targets 0xf403690, is taken when t7(=[a3]) <= 0 (signed), and falls through when t7(=[a3]) > 0 (signed); its branch-likely delay slot `lw v0,1232(s2)` at 0xf403648 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf403684 targets 0xf40364c, is taken when v1(?) < t1(=[a3]) (signed), and falls through when v1(?) >= t1(=[a3]) (signed).
  The `beql` branch at 0xf403690 targets 0xf4036b0, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s2)` at 0xf403694 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf4036b4 targets 0xf4036cc, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw v0,56(sp)` at 0xf4036b8 runs only when taken and is annulled on fall-through.
  The return at 0xf4036dc has v0 = one of 0x0, ret(malloc).
  The instructions from 0xf4033b8 to 0xf4033b8 are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcLoadVideoFormat` in `usr/lib/libXsgivc.so` at 0xf4036e4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf4036e4-0xf403994 (688 bytes).
  It occupies 688 bytes.
  The `lw` at 0xf403728 loads 4 bytes from ret(find_display) +0x8.
  The `lw` at 0xf403748 loads 4 bytes from abs 0xf40c004.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf40375c, `lw` at 0xf40392c.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf403770, `lw` at 0xf403790, `lw` at 0xf4037c4.
  The `lw` at 0xf403778 loads 4 bytes from [a0+1232] +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xf403794, `lw` at 0xf403888.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf4037cc, `sw` at 0xf40389c, `sw` at 0xf4038b8.
  3 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf4037d4, `sb` at 0xf403810, `sb` at 0xf4038c8.
  2 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xf4037d8, `sh` at 0xf4038c4.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0xf4037dc, `lw` at 0xf403814, `lw` at 0xf403820.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xf4037f0, `sw` at 0xf4038e0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x60, including `sw` at 0xf4037f4, `sw` at 0xf4038e4.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xf4037f8, `lw` at 0xf403804, `lw` at 0xf403830.
  The `sb` at 0xf403808 stores 1 byte to [a0+108] +0x1.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c8, including `lw` at 0xf403844, `lw` at 0xf4038fc.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4c8, including `sw` at 0xf403854, `sw` at 0xf403914.
  The `sw` at 0xf403860 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf40386c stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf403874 stores 4 bytes to [a0+108] +0x10.
  The `sb` at 0xf403878 stores 1 byte to [a0+108] +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf403934, `lw` at 0xf40394c.
  The `lw` at 0xf403938 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xf403714 calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf403744 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf403780 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4037b4 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40387c calls GenerateVFList [0xf402704] with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=?, a3=[a0+108]+2.
  The `jalr` at 0xf4038a8 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4038f4 calls _XReply with a0=a0 at entry (arg0), a1=sp-120, a2=0x0, a3=0x1.
  The `jalr` at 0xf403920 calls _XDeqAsyncHandler with a0=a0 at entry (arg0), a1=sp-64, a2=?, a3=?.
  The `jalr` at 0xf403940 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40395c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf403720 targets 0xf403738, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bne` branch at 0xf403730 targets 0xf403758, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0.
  The `beq` branch at 0xf403750 targets 0xf403980 and is always taken.
  The `bnel` branch at 0xf403758 targets 0xf40376c, is taken when t7(=a3) != 0, and falls through when t7(=a3) == 0; its branch-likely delay slot `lw v0,1232(s0)` at 0xf40375c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf403760 targets 0xf403980 and is always taken.
  The `beql` branch at 0xf40376c targets 0xf403794, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xf403770 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf4037a0 targets 0xf4037cc, is taken when t8(=[a0+112]) >= t2(=[a0+108]+20) (unsigned), and falls through when t8(=[a0+112]) < t2(=[a0+108]+20) (unsigned); its branch-likely delay slot `lw a2,184(sp)` at 0xf4037a4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf403898 targets 0xf4038bc, is taken when t5(=[a0+112]) >= t6(=[a0+108]+4) (unsigned), and falls through when t5(=[a0+112]) < t6(=[a0+108]+4) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xf40389c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf403908 targets 0xf403918, is taken when a1(=sp-64) != t5(=[a0+1224]), and falls through when a1(=sp-64) == t5(=[a0+1224]).
  The `beq` branch at 0xf403910 targets 0xf40392c and is always taken.
  The `beql` branch at 0xf403930 targets 0xf403950, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf403934 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf403954 targets 0xf40396c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw t7,100(sp)` at 0xf403958 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf403970 targets 0xf403980, is taken when t7(?) != 0, and falls through when t7(?) == 0.
  The `beq` branch at 0xf403978 targets 0xf403980 and is always taken.
  The return at 0xf40398c has v0 = one of 0x0, 0x1.
  The instructions from 0xf403768 to 0xf403768 are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcLoadVideoFormatCombination` in `usr/lib/libXsgivc.so` at 0xf403994 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf403994-0xf403ca8 (788 bytes).
  It occupies 788 bytes.
  The `lw` at 0xf4039d8 loads 4 bytes from ret(find_display) +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf4039e0, `lw` at 0xf403c40.
  The `lw` at 0xf4039f4 loads 4 bytes from abs 0xf40c004.
  9 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf403a0c, `lw` at 0xf403a2c, `lw` at 0xf403a60.
  The `lw` at 0xf403a14 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xf403a30, `lw` at 0xf403b38, `lw` at 0xf403ba0.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf403a40, `sw` at 0xf403a64, `sw` at 0xf403bb0.
  2 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xf403a70, `sh` at 0xf403bd8.
  3 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf403a74, `sb` at 0xf403aac, `sb` at 0xf403bdc.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0xf403a78, `lw` at 0xf403ab0, `lw` at 0xf403ab8.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xf403a8c, `sw` at 0xf403b80, `sw` at 0xf403bf4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x60, including `sw` at 0xf403a90, `sw` at 0xf403bf8.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xf403a94, `lw` at 0xf403aa0, `lw` at 0xf403ac4.
  The `sb` at 0xf403aa4 stores 1 byte to [a0+108] +0x1.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c8, including `lw` at 0xf403ad8, `lw` at 0xf403c10.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4c8, including `sw` at 0xf403ae8, `sw` at 0xf403c28.
  The `sw` at 0xf403af0 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf403b1c stores 4 bytes to ?.
  The `lhu` at 0xf403b20 loads 2 bytes from ?.
  The `sh` at 0xf403b30 stores 2 bytes to ?.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf403c48, `lw` at 0xf403c60.
  The `lw` at 0xf403c4c loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xf4039c4 calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf4039f0 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf403a1c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403a50 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403b00 calls strlen with a0=a2 at entry (arg2), a1=?, a2=0x6, a3=?.
  The `jalr` at 0xf403b58 calls memcpy with a0=[a0+108], a1=a2 at entry (arg2), a2=ret(strlen)+1, a3=?.
  The `jalr` at 0xf403b90 calls _XSend with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=ret(strlen)+1, a3=?.
  The `jalr` at 0xf403bbc calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403c08 calls _XReply with a0=a0 at entry (arg0), a1=sp-76, a2=0x0, a3=0x1.
  The `jalr` at 0xf403c34 calls _XDeqAsyncHandler with a0=a0 at entry (arg0), a1=sp-16, a2=?, a3=?.
  The `jalr` at 0xf403c54 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403c70 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf4039d0 targets 0xf4039e4, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bnel` branch at 0xf4039dc targets 0xf403a08, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0; its branch-likely delay slot `lw v0,1232(s0)` at 0xf4039e0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf4039fc targets 0xf403c94 and is always taken.
  The `beql` branch at 0xf403a08 targets 0xf403a30, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw s1,108(s0)` at 0xf403a0c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf403a3c targets 0xf403a68, is taken when t7(=[a0+112]) >= t8(=[a0+108]+12) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+12) (unsigned); its branch-likely delay slot `sw s1,100(s0)` at 0xf403a40 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xf403b18 targets 0xf403b9c, is taken when v1(=ret(strlen)+1) <= 0 (signed), and falls through when v1(=ret(strlen)+1) > 0 (signed).
  The `bne` branch at 0xf403b44 targets 0xf403b84, is taken when t1(=[a0+112]) < t2(=([a0+108] + ret(strlen)+1)) (unsigned), and falls through when t1(=[a0+112]) >= t2(=([a0+108] + ret(strlen)+1)) (unsigned).
  The `beq` branch at 0xf403b7c targets 0xf403b9c and is always taken.
  The `beql` branch at 0xf403bac targets 0xf403bd0, is taken when t7(=[a0+112]) >= t9(=[a0+108]+4) (unsigned), and falls through when t7(=[a0+112]) < t9(=[a0+108]+4) (unsigned); its branch-likely delay slot `sw s1,100(s0)` at 0xf403bb0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf403c1c targets 0xf403c2c, is taken when a1(=sp-16) != t5(=[a0+1224]), and falls through when a1(=sp-16) == t5(=[a0+1224]).
  The `beq` branch at 0xf403c24 targets 0xf403c40 and is always taken.
  The `beql` branch at 0xf403c44 targets 0xf403c64, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf403c48 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf403c68 targets 0xf403c80, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw t7,116(sp)` at 0xf403c6c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf403c84 targets 0xf403c94, is taken when t7(?) != 0, and falls through when t7(?) == 0.
  The `beq` branch at 0xf403c8c targets 0xf403c94 and is always taken.
  The return at 0xf403ca0 has v0 = one of 0x0, 0x1.
  The instructions from 0xf403a04 to 0xf403a04 are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcDisableChannel` in `usr/lib/libXsgivc.so` at 0xf403ca8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf403ca8-0xf403f1c (628 bytes).
  It occupies 628 bytes.
  The `lw` at 0xf403ce8 loads 4 bytes from ret(find_display) +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf403cf0, `lw` at 0xf403eb4.
  The `lw` at 0xf403d04 loads 4 bytes from abs 0xf40c004.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf403d1c, `lw` at 0xf403d3c, `lw` at 0xf403d70.
  The `lw` at 0xf403d24 loads 4 bytes from [a0+1232] +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xf403d40, `lw` at 0xf403e10.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf403d50, `sw` at 0xf403d74, `sw` at 0xf403e20.
  2 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xf403d80, `sh` at 0xf403e48.
  3 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf403d84, `sb` at 0xf403dbc, `sb` at 0xf403e4c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0xf403d8c, `lw` at 0xf403dc0, `lw` at 0xf403dc8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x60, including `sw` at 0xf403d9c, `sw` at 0xf403e68.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xf403da0, `sw` at 0xf403e64.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xf403da4, `lw` at 0xf403db0, `lw` at 0xf403dd4.
  The `sb` at 0xf403db4 stores 1 byte to [a0+108] +0x1.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c8, including `lw` at 0xf403de8, `lw` at 0xf403e80.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4c8, including `sw` at 0xf403df8, `sw` at 0xf403e98.
  The `sw` at 0xf403e00 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf403e08 stores 4 bytes to [a0+108] +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf403ebc, `lw` at 0xf403ed4.
  The `lw` at 0xf403ec0 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xf403cd4 calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf403d00 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf403d2c calls (unknown callee) with a0=a0 at entry (arg0), a1=ret(find_display), a2=?, a3=?.
  The `jalr` at 0xf403d60 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403e2c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403e78 calls _XReply with a0=a0 at entry (arg0), a1=sp-72, a2=0x0, a3=0x1.
  The `jalr` at 0xf403ea8 calls _XDeqAsyncHandler with a0=a0 at entry (arg0), a1=sp-16, a2=?, a3=?.
  The `jalr` at 0xf403ec8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403ee4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf403ce0 targets 0xf403cf4, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bnel` branch at 0xf403cec targets 0xf403d18, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0; its branch-likely delay slot `lw v0,1232(s0)` at 0xf403cf0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf403d0c targets 0xf403f08 and is always taken.
  The `beql` branch at 0xf403d18 targets 0xf403d40, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xf403d1c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf403d4c targets 0xf403d78, is taken when t7(=[a0+112]) >= t8(=[a0+108]+12) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+12) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xf403d50 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf403e1c targets 0xf403e40, is taken when t7(=[a0+112]) >= t8(=[a0+108]+4) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+4) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xf403e20 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf403e8c targets 0xf403e9c, is taken when t6(=sp-16) != t9(=[a0+1224]), and falls through when t6(=sp-16) == t9(=[a0+1224]).
  The `beq` branch at 0xf403e94 targets 0xf403eb4 and is always taken.
  The `beql` branch at 0xf403eb8 targets 0xf403ed8, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf403ebc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf403edc targets 0xf403ef4, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw t8,100(sp)` at 0xf403ee0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf403ef8 targets 0xf403f08, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0xf403f00 targets 0xf403f08 and is always taken.
  The return at 0xf403f14 has v0 = one of 0x0, 0x1.
  The instructions from 0xf403d14 to 0xf403d14 are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcQueryChannelInfo` in `usr/lib/libXsgivc.so` at 0xf403f1c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf403f1c-0xf4045d8 (1724 bytes).
  It occupies 1724 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf403f68, `lw` at 0xf404014.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf403f70, `lw` at 0xf404050, `lw` at 0xf4040b4.
  The `lw` at 0xf403f84 loads 4 bytes from abs 0xf40c004.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf403f9c, `lw` at 0xf403fb4, `lw` at 0xf403fe0.
  The `lw` at 0xf403fa0 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xf403fb8 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf403fc8, `sw` at 0xf403fe4.
  The `sh` at 0xf403ff0 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf403ff4, `sb` at 0xf40402c.
  The `lw` at 0xf403ff8 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf40400c stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xf404010 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `lw` at 0xf404020 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sb` at 0xf404024 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf404028 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf404038 stores 4 bytes to [a0+108] +0x8.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf404058, `lw` at 0xf404070, `lw` at 0xf4040bc.
  4 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf40405c, `lw` at 0xf4040c0, `lw` at 0xf40416c.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xf4040b0, `sw` at 0xf4041b0.
  The `sw` at 0xf4041c0 stores 4 bytes to ret(malloc) +0x0.
  The `swc1` at 0xf4041f4 stores 4 bytes to ret(malloc) +0x4.
  The `swc1` at 0xf404214 stores 4 bytes to ret(malloc) +0x8.
  The `swc1` at 0xf404234 stores 4 bytes to ret(malloc) +0x10.
  The `swc1` at 0xf40425c stores 4 bytes to ret(malloc) +0xc.
  The `sw` at 0xf404264 stores 4 bytes to ret(malloc) +0x114.
  The `sw` at 0xf40426c stores 4 bytes to ret(malloc) +0x118.
  The `sw` at 0xf404274 stores 4 bytes to ret(malloc) +0x11c.
  The `sw` at 0xf40427c stores 4 bytes to ret(malloc) +0x120.
  The `swc1` at 0xf4042ac stores 4 bytes to ret(malloc) +0x124.
  The `swc1` at 0xf4042d0 stores 4 bytes to ret(malloc) +0x128.
  The `sw` at 0xf4042d8 stores 4 bytes to ret(malloc) +0x12c.
  The `sw` at 0xf4042e0 stores 4 bytes to ret(malloc) +0x130.
  The `sw` at 0xf4042e8 stores 4 bytes to ret(malloc) +0x134.
  The `sw` at 0xf4042f0 stores 4 bytes to ret(malloc) +0x138.
  The `sw` at 0xf4042f8 stores 4 bytes to ret(malloc) +0x13c.
  The `sw` at 0xf404300 stores 4 bytes to ret(malloc) +0x140.
  The `sw` at 0xf404308 stores 4 bytes to ret(malloc) +0x148.
  The `sw` at 0xf404310 stores 4 bytes to ret(malloc) +0x14c.
  The `sw` at 0xf404318 stores 4 bytes to ret(malloc) +0x154.
  The `sw` at 0xf404320 stores 4 bytes to ret(malloc) +0x158.
  The `sw` at 0xf404328 stores 4 bytes to ret(malloc) +0x15c.
  The `sw` at 0xf404330 stores 4 bytes to ret(malloc) +0x160.
  The `sw` at 0xf404338 stores 4 bytes to ret(malloc) +0x164.
  The `sw` at 0xf404340 stores 4 bytes to ret(malloc) +0x168.
  The `sw` at 0xf404348 stores 4 bytes to ret(malloc) +0x16c.
  The `sw` at 0xf404350 stores 4 bytes to ret(malloc) +0x170.
  The `sw` at 0xf404358 stores 4 bytes to ret(malloc) +0x174.
  The `sw` at 0xf404360 stores 4 bytes to ret(malloc) +0x178.
  The `sw` at 0xf404368 stores 4 bytes to ret(malloc) +0x17c.
  The `sw` at 0xf404370 stores 4 bytes to ret(malloc) +0x180.
  The `sw` at 0xf404378 stores 4 bytes to ret(malloc) +0x184.
  The `sw` at 0xf404380 stores 4 bytes to ret(malloc) +0x194.
  The `sw` at 0xf404388 stores 4 bytes to ret(malloc) +0x188.
  The `sw` at 0xf404390 stores 4 bytes to ret(malloc) +0x18c.
  9 such `sw` accesses store 4 bytes to ?, including `sw` at 0xf4043c8, `sw` at 0xf4043cc, `sw` at 0xf404440.
  The `jalr` at 0xf403f54 calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf403f80 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf403fa8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403fd4 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf404040 calls _XReply with a0=a0 at entry (arg0), a1=sp-132, a2=0x17, a3=0x0.
  The `jalr` at 0xf404064 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf404080 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4040c8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4040e4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40414c calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xf404174 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf404190 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4043ac calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc)+20, a2=?, a3=?.
  The `jalr` at 0xf4043f8 calls ReadFieldInfo [0xf402890] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf404450 calls _XRead with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4044b4 calls _XRead with a0=a0 at entry (arg0), a1=sp-196, a2=0x8, a3=?.
  The `jalr` at 0xf4044f4 calls _XRead with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf404574 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf404594 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4045b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf403f60 targets 0xf403f74, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bnel` branch at 0xf403f6c targets 0xf403f98, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0; its branch-likely delay slot `lw v0,1232(s2)` at 0xf403f70 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf403f8c targets 0xf4045c0 and is always taken.
  The `beql` branch at 0xf403f98 targets 0xf403fb8, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s2)` at 0xf403f9c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf403fc4 targets 0xf403fe8, is taken when t7(=[a0+112]) >= t8(=[a0+108]+12) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+12) (unsigned); its branch-likely delay slot `sw v1,100(s2)` at 0xf403fc8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf404048 targets 0xf404094, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xf404054 targets 0xf404074, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s2)` at 0xf404058 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf404078 targets 0xf40408c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf40408c targets 0xf4045c0 and is always taken.
  The `bnel` branch at 0xf4040a0 targets 0xf4040fc, is taken when t8(?) != v0(=-0x1), and falls through when t8(?) == v0(=-0x1); its branch-likely delay slot `lw v0,252(sp)` at 0xf4040a4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf4040a8 targets 0xf4040f8, is taken when t1(?) != v0(=-0x1), and falls through when t1(?) == v0(=-0x1).
  The `beql` branch at 0xf4040b8 targets 0xf4040d8, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s2)` at 0xf4040bc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf4040dc targets 0xf4040f0, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf4040f0 targets 0xf4045c0 and is always taken.
  The `bne` branch at 0xf404158 targets 0xf4041a4, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beql` branch at 0xf404164 targets 0xf404184, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s2)` at 0xf404168 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf404188 targets 0xf40419c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf40419c targets 0xf4045c0 and is always taken.
  The `bgez` branch at 0xf404288 targets 0xf40429c, is taken when t3(?) >= 0 (signed), and falls through when t3(?) < 0 (signed).
  The `bgez` branch at 0xf4042b8 targets 0xf4042cc, is taken when t4(?) >= 0 (signed), and falls through when t4(?) < 0 (signed).
  The `beq` branch at 0xf404398 targets 0xf4043bc, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beql` branch at 0xf4043c4 targets 0xf404428, is taken when t3(?) == 0, and falls through when t3(?) != 0; its branch-likely delay slot `sw zero,324(v1)` at 0xf4043c8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf4043dc targets 0xf40442c, is taken when t4(?) == 0, and falls through when t4(?) != 0; its branch-likely delay slot `lw t9,160(sp)` at 0xf4043e0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf404414 targets 0xf4043e8, is taken when s0(?) < t5(?) (unsigned), and falls through when s0(?) >= t5(?) (unsigned).
  The `beq` branch at 0xf40441c targets 0xf404428 and is always taken.
  The `beq` branch at 0xf404434 targets 0xf404464, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xf40445c targets 0xf404468 and is always taken.
  The `blez` branch at 0xf404474 targets 0xf40455c, is taken when t7(?) <= 0 (signed), and falls through when t7(?) > 0 (signed).
  The `blez` branch at 0xf404498 targets 0xf404560, is taken when t3(?) <= 0 (signed), and falls through when t3(?) > 0 (signed).
  The `beq` branch at 0xf404520 targets 0xf404538, is taken when (t7(?) & 0x1) == 0, and falls through when (t7(?) & 0x1) != 0.
  The `beq` branch at 0xf404530 targets 0xf404544 and is always taken.
  The `bne` branch at 0xf40454c targets 0xf4044a0, is taken when s0(?) < t4(?) (signed), and falls through when s0(?) >= t4(?) (signed).
  The `beq` branch at 0xf404554 targets 0xf404560 and is always taken.
  The `blezl` branch at 0xf404560 targets 0xf404584, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed); its branch-likely delay slot `lw v0,1232(s2)` at 0xf404564 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf404584 targets 0xf4045a4, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s2)` at 0xf404588 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf4045a8 targets 0xf4045c0, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `addiu v0,zero,1` at 0xf4045ac runs only when taken and is annulled on fall-through.
  The return at 0xf4045d0 has v0 = one of 0x0, 0x1.
  The instructions from 0xf403f94 to 0xf403f94 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xf404424 to 0xf404424 are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcQueryMonitorName` in `usr/lib/libXsgivc.so` at 0xf4045d8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf4045d8-0xf40486c (660 bytes).
  It occupies 660 bytes.
  The `lw` at 0xf40461c loads 4 bytes from ret(find_display) +0x8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf404624, `lw` at 0xf40470c, `lw` at 0xf40475c.
  The `lw` at 0xf404638 loads 4 bytes from abs 0xf40c004.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf404650, `lw` at 0xf404668, `lw` at 0xf404694.
  The `lw` at 0xf404654 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xf40466c loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf40467c, `sw` at 0xf404698.
  The `sh` at 0xf4046a4 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf4046a8, `sb` at 0xf4046e4.
  The `lw` at 0xf4046ac loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf4046c0 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xf4046c4 stores 4 bytes to a0 (arg0 at entry) +0x60.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xf4046d4, `lw` at 0xf4046dc.
  The `sb` at 0xf4046e0 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf4046ec stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf4046f4 stores 4 bytes to [a0+108] +0x8.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf404714, `lw` at 0xf40472c, `lw` at 0xf404764.
  3 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf404718, `lw` at 0xf404768, `lw` at 0xf404824.
  The `sb` at 0xf4047e0 stores 1 byte to ?.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xf4047ec, `sw` at 0xf404814.
  The `jalr` at 0xf404608 calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf404634 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf40465c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf404688 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4046fc calls _XReply with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x0.
  The `jalr` at 0xf404720 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40473c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf404770 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40478c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4047a8 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xf4047c8 calls _XReadPad with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xf404804 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40482c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf404848 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf404614 targets 0xf404628, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bnel` branch at 0xf404620 targets 0xf40464c, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0; its branch-likely delay slot `lw v0,1232(s0)` at 0xf404624 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf404640 targets 0xf404858 and is always taken.
  The `beql` branch at 0xf40464c targets 0xf40466c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xf404650 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf404678 targets 0xf40469c, is taken when t7(=[a0+112]) >= t8(=[a0+108]+12) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+12) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xf40467c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf404704 targets 0xf404750, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xf404710 targets 0xf404730, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf404714 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf404734 targets 0xf404748, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf404748 targets 0xf404858 and is always taken.
  The `bne` branch at 0xf404754 targets 0xf4047a0, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beql` branch at 0xf404760 targets 0xf404780, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf404764 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf404784 targets 0xf404798, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf404798 targets 0xf404858 and is always taken.
  The `beq` branch at 0xf4047b4 targets 0xf4047f0, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `beq` branch at 0xf4047e8 targets 0xf404818 and is always taken.
  The `beql` branch at 0xf40481c targets 0xf40483c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf404820 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf404840 targets 0xf404858, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `addiu v0,zero,1` at 0xf404844 runs only when taken and is annulled on fall-through.
  The return at 0xf404864 has v0 = one of 0x0, 0x1.
  The instructions from 0xf404648 to 0xf404648 are not reached by any path from the entry, and their branches are not listed.

- `SetOneControl` in `usr/lib/libXsgivc.so` at 0xf40486c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf40486c-0xf404cc4 (1112 bytes).
  It occupies 1112 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf4048b0, `lw` at 0xf404958.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf4048b8, `lw` at 0xf404988.
  The `lw` at 0xf4048cc loads 4 bytes from abs 0xf40c004.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf4048e0, `lw` at 0xf4048f8, `lw` at 0xf404924.
  The `lw` at 0xf4048e4 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xf4048fc loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf40490c, `sw` at 0xf404928.
  The `sh` at 0xf404934 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf404938, `sb` at 0xf404964.
  The `lw` at 0xf40493c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf40494c stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xf404950 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `lw` at 0xf40495c loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sb` at 0xf404960 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf40496c stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf404974 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf40497c stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xf404984 stores 4 bytes to [a0+108] +0x10.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf404990, `lw` at 0xf4049a8.
  The `lw` at 0xf404994 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xf40489c calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf4048c8 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf4048ec calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf404918 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40499c calls (unknown callee) with a0=a0 at entry (arg0), a1=0xa, a2=?, a3=?.
  The `jalr` at 0xf4049b8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf4048a8 targets 0xf4048bc, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bnel` branch at 0xf4048b4 targets 0xf4048dc, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xf4048b8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf4048d0 targets 0xf4049c4 and is always taken.
  The `beql` branch at 0xf4048dc targets 0xf4048fc, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xf4048e0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf404908 targets 0xf40492c, is taken when t7(=[a0+112]) >= t8(=[a0+108]+20) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+20) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xf40490c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf40498c targets 0xf4049ac, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf404990 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf4049b0 targets 0xf4049c8, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xf4049b4 runs only when taken and is annulled on fall-through.
  The return at 0xf4049d0 has v0 = one of [a0+124], ?.
  The instructions from 0xf4048d8 to 0xf4048d8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xf4049d8 to 0xf404cc0 are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcSetOutputGain` in `usr/lib/libXsgivc.so` at 0xf4049d8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf4049d8-0xf404b14 (316 bytes).
  It occupies 316 bytes.
  The `lw` at 0xf404a08 loads 4 bytes from (a3-1 << 0x2) +0xf408fac.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xf404a10).
  The `beq` branch at 0xf4049f4 targets 0xf404b04, is taken when t6(=a3-1) >= 0x5 (unsigned), and falls through when t6(=a3-1) < 0x5 (unsigned).
  The return at 0xf404b0c has v0 = ?.
  The instructions from 0xf404a18 to 0xf404b00 are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcSetOutputPedestal` in `usr/lib/libXsgivc.so` at 0xf404b14 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf404b14-0xf404b5c (72 bytes).
  It occupies 72 bytes.
  The `jalr` at 0xf404b40 calls SetOneControl [0xf40486c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x6.
  The return at 0xf404b54 has v0 = ret(SetOneControl).

- `XSGIvcSetOutputPhaseH` in `usr/lib/libXsgivc.so` at 0xf404b5c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf404b5c-0xf404ba4 (72 bytes).
  It occupies 72 bytes.
  The `jalr` at 0xf404b88 calls SetOneControl [0xf40486c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x7.
  The return at 0xf404b9c has v0 = ret(SetOneControl).

- `XSGIvcSetOutputPhaseSCH` in `usr/lib/libXsgivc.so` at 0xf404ba4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf404ba4-0xf404bec (72 bytes).
  It occupies 72 bytes.
  The `jalr` at 0xf404bd0 calls SetOneControl [0xf40486c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x8.
  The return at 0xf404be4 has v0 = ret(SetOneControl).

- `XSGIvcSetOutputPhaseV` in `usr/lib/libXsgivc.so` at 0xf404bec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf404bec-0xf404c34 (72 bytes).
  It occupies 72 bytes.
  The `jalr` at 0xf404c18 calls SetOneControl [0xf40486c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x9.
  The return at 0xf404c2c has v0 = ret(SetOneControl).

- `XSGIvcSetChannelGammaMap` in `usr/lib/libXsgivc.so` at 0xf404c34 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf404c34-0xf404c7c (72 bytes).
  It occupies 72 bytes.
  The `jalr` at 0xf404c60 calls SetOneControl [0xf40486c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0xa.
  The return at 0xf404c74 has v0 = ret(SetOneControl).

- `XSGIvcSetOutputBlanking` in `usr/lib/libXsgivc.so` at 0xf404c7c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf404c7c-0xf404cc4 (72 bytes).
  It occupies 72 bytes.
  The `jalr` at 0xf404ca8 calls SetOneControl [0xf40486c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0xb.
  The return at 0xf404cbc has v0 = ret(SetOneControl).

- `QueryOneControl` in `usr/lib/libXsgivc.so` at 0xf404cc4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf404cc4-0xf408f50 (17036 bytes).
  It occupies 17036 bytes.
  The `lw` at 0xf404d08 loads 4 bytes from ret(find_display) +0x8.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf404d10, `lw` at 0xf404e00, `lw` at 0xf404e50.
  The `lw` at 0xf404d24 loads 4 bytes from abs 0xf40c004.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf404d3c, `lw` at 0xf404d54, `lw` at 0xf404d80.
  The `lw` at 0xf404d40 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xf404d58 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf404d68, `sw` at 0xf404d84.
  The `sh` at 0xf404d90 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf404d94, `sb` at 0xf404dd0.
  The `lw` at 0xf404d98 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf404dac stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xf404db0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xf404dc0, `lw` at 0xf404dc8.
  The `sb` at 0xf404dcc stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf404dd8 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf404de0 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf404de8 stores 4 bytes to [a0+108] +0xc.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf404e08, `lw` at 0xf404e20, `lw` at 0xf404e58.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf404e0c, `lw` at 0xf404e5c.
  The `sw` at 0xf404e4c stores 4 bytes to ?.
  The `jalr` at 0xf404cf4 calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf404d20 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf404d48 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf404d74 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf404df0 calls _XReply with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x1.
  The `jalr` at 0xf404e14 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf404e30 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf404e64 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf404e80 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf404d00 targets 0xf404d14, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bnel` branch at 0xf404d0c targets 0xf404d38, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0; its branch-likely delay slot `lw v0,1232(s0)` at 0xf404d10 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf404d2c targets 0xf404e90 and is always taken.
  The `beql` branch at 0xf404d38 targets 0xf404d58, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xf404d3c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf404d64 targets 0xf404d88, is taken when t7(=[a0+112]) >= t8(=[a0+108]+16) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xf404d68 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf404df8 targets 0xf404e44, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xf404e04 targets 0xf404e24, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf404e08 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf404e28 targets 0xf404e3c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf404e3c targets 0xf404e90 and is always taken.
  The `beql` branch at 0xf404e54 targets 0xf404e74, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf404e58 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf404e78 targets 0xf404e90, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lbu v0,41(sp)` at 0xf404e7c runs only when taken and is annulled on fall-through.
  The return at 0xf404e9c has v0 = one of 0x0, ?.
  The instructions from 0xf404d34 to 0xf404d34 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xf404ea4 to 0xf408f4c are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcQueryOutputGain` in `usr/lib/libXsgivc.so` at 0xf404ea4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf404ea4-0xf404f80 (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0xf404ed4 loads 4 bytes from (a3-1 << 0x2) +0xf408fc0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xf404edc).
  The `beq` branch at 0xf404ec0 targets 0xf404f0c, is taken when t6(=a3-1) >= 0x5 (unsigned), and falls through when t6(=a3-1) < 0x5 (unsigned).
  The `beq` branch at 0xf404f0c targets 0xf404f70 and is always taken.
  The return at 0xf404f78 has v0 = 0x2.
  The instructions from 0xf404ee4 to 0xf404f08 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xf404f14 to 0xf404f6c are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcQueryOutputPedestal` in `usr/lib/libXsgivc.so` at 0xf404f80 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf404f80-0xf404fc8 (72 bytes).
  It occupies 72 bytes.
  The `jalr` at 0xf404fac calls QueryOneControl [0xf404cc4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x6.
  The return at 0xf404fc0 has v0 = ret(QueryOneControl).

- `XSGIvcQueryOutputPhaseH` in `usr/lib/libXsgivc.so` at 0xf404fc8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf404fc8-0xf405010 (72 bytes).
  It occupies 72 bytes.
  The `jalr` at 0xf404ff4 calls QueryOneControl [0xf404cc4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x7.
  The return at 0xf405008 has v0 = ret(QueryOneControl).

- `XSGIvcQueryOutputPhaseSCH` in `usr/lib/libXsgivc.so` at 0xf405010 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf405010-0xf405058 (72 bytes).
  It occupies 72 bytes.
  The `jalr` at 0xf40503c calls QueryOneControl [0xf404cc4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x8.
  The return at 0xf405050 has v0 = ret(QueryOneControl).

- `XSGIvcQueryOutputPhaseV` in `usr/lib/libXsgivc.so` at 0xf405058 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf405058-0xf4050a0 (72 bytes).
  It occupies 72 bytes.
  The `jalr` at 0xf405084 calls QueryOneControl [0xf404cc4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x9.
  The return at 0xf405098 has v0 = ret(QueryOneControl).

- `XSGIvcQueryChannelGammaMap` in `usr/lib/libXsgivc.so` at 0xf4050a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf4050a0-0xf4050e8 (72 bytes).
  It occupies 72 bytes.
  The `jalr` at 0xf4050cc calls QueryOneControl [0xf404cc4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0xa.
  The return at 0xf4050e0 has v0 = ret(QueryOneControl).

- `XSGIvcQueryOutputBlanking` in `usr/lib/libXsgivc.so` at 0xf4050e8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf4050e8-0xf405130 (72 bytes).
  It occupies 72 bytes.
  The `jalr` at 0xf405114 calls QueryOneControl [0xf404cc4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0xb.
  The return at 0xf405128 has v0 = ret(QueryOneControl).

- `XSGIvcSetOutputSync` in `usr/lib/libXsgivc.so` at 0xf405130 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf405130-0xf40529c (364 bytes).
  It occupies 364 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf405174, `lw` at 0xf40521c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf40517c, `lw` at 0xf40524c.
  The `lw` at 0xf405190 loads 4 bytes from abs 0xf40c004.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf4051a4, `lw` at 0xf4051bc, `lw` at 0xf4051e8.
  The `lw` at 0xf4051a8 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xf4051c0 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf4051d0, `sw` at 0xf4051ec.
  The `sh` at 0xf4051f8 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf4051fc, `sb` at 0xf405228.
  The `lw` at 0xf405200 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf405210 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xf405214 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `lw` at 0xf405220 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sb` at 0xf405224 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf405230 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf405238 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf405240 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xf405248 stores 4 bytes to [a0+108] +0x10.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf405254, `lw` at 0xf40526c.
  The `lw` at 0xf405258 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xf405160 calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf40518c calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf4051b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4051dc calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405260 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xc, a2=?, a3=?.
  The `jalr` at 0xf40527c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf40516c targets 0xf405180, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bnel` branch at 0xf405178 targets 0xf4051a0, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xf40517c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf405194 targets 0xf405288 and is always taken.
  The `beql` branch at 0xf4051a0 targets 0xf4051c0, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xf4051a4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf4051cc targets 0xf4051f0, is taken when t7(=[a0+112]) >= t8(=[a0+108]+20) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+20) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xf4051d0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf405250 targets 0xf405270, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf405254 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf405274 targets 0xf40528c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xf405278 runs only when taken and is annulled on fall-through.
  The return at 0xf405294 has v0 = one of [a0+124], ?.
  The instructions from 0xf40519c to 0xf40519c are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcQueryOutputSync` in `usr/lib/libXsgivc.so` at 0xf40529c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf40529c-0xf40547c (480 bytes).
  It occupies 480 bytes.
  The `lw` at 0xf4052e0 loads 4 bytes from ret(find_display) +0x8.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf4052e8, `lw` at 0xf4053d8, `lw` at 0xf405428.
  The `lw` at 0xf4052fc loads 4 bytes from abs 0xf40c004.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf405314, `lw` at 0xf40532c, `lw` at 0xf405358.
  The `lw` at 0xf405318 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xf405330 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf405340, `sw` at 0xf40535c.
  The `sh` at 0xf405368 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf40536c, `sb` at 0xf4053a8.
  The `lw` at 0xf405370 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf405384 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xf405388 stores 4 bytes to a0 (arg0 at entry) +0x60.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xf405398, `lw` at 0xf4053a0.
  The `sb` at 0xf4053a4 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf4053b0 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf4053b8 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf4053c0 stores 4 bytes to [a0+108] +0xc.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf4053e0, `lw` at 0xf4053f8, `lw` at 0xf405430.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf4053e4, `lw` at 0xf405434.
  The `sw` at 0xf405424 stores 4 bytes to ?.
  The `jalr` at 0xf4052cc calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf4052f8 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf405320 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40534c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4053c8 calls _XReply with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x1.
  The `jalr` at 0xf4053ec calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405408 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40543c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405458 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf4052d8 targets 0xf4052ec, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bnel` branch at 0xf4052e4 targets 0xf405310, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0; its branch-likely delay slot `lw v0,1232(s0)` at 0xf4052e8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf405304 targets 0xf405468 and is always taken.
  The `beql` branch at 0xf405310 targets 0xf405330, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xf405314 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf40533c targets 0xf405360, is taken when t7(=[a0+112]) >= t8(=[a0+108]+16) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xf405340 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf4053d0 targets 0xf40541c, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xf4053dc targets 0xf4053fc, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf4053e0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf405400 targets 0xf405414, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf405414 targets 0xf405468 and is always taken.
  The `beql` branch at 0xf40542c targets 0xf40544c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf405430 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf405450 targets 0xf405468, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lbu v0,41(sp)` at 0xf405454 runs only when taken and is annulled on fall-through.
  The return at 0xf405474 has v0 = one of 0x0, ?.
  The instructions from 0xf40530c to 0xf40530c are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcSetScreenInputSyncSource` in `usr/lib/libXsgivc.so` at 0xf40547c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf40547c-0xf4055e0 (356 bytes).
  It occupies 356 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf4054c0, `lw` at 0xf405568.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf4054c8, `lw` at 0xf405590.
  The `lw` at 0xf4054dc loads 4 bytes from abs 0xf40c004.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf4054f0, `lw` at 0xf405508, `lw` at 0xf405534.
  The `lw` at 0xf4054f4 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xf40550c loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf40551c, `sw` at 0xf405538.
  The `sh` at 0xf405544 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf405548, `sb` at 0xf405574.
  The `lw` at 0xf40554c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf40555c stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xf405560 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `lw` at 0xf40556c loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sb` at 0xf405570 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf40557c stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf405584 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf40558c stores 4 bytes to [a0+108] +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf405598, `lw` at 0xf4055b0.
  The `lw` at 0xf40559c loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xf4054ac calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf4054d8 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf4054fc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405528 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4055a4 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xe, a2=?, a3=?.
  The `jalr` at 0xf4055c0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf4054b8 targets 0xf4054cc, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bnel` branch at 0xf4054c4 targets 0xf4054ec, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xf4054c8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf4054e0 targets 0xf4055cc and is always taken.
  The `beql` branch at 0xf4054ec targets 0xf40550c, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xf4054f0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf405518 targets 0xf40553c, is taken when t7(=[a0+112]) >= t8(=[a0+108]+16) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+16) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xf40551c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf405594 targets 0xf4055b4, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf405598 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf4055b8 targets 0xf4055d0, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xf4055bc runs only when taken and is annulled on fall-through.
  The return at 0xf4055d8 has v0 = one of [a0+124], ?.
  The instructions from 0xf4054e8 to 0xf4054e8 are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcQueryScreenInputSyncSource` in `usr/lib/libXsgivc.so` at 0xf4055e0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf4055e0-0xf4057c8 (488 bytes).
  It occupies 488 bytes.
  The `lw` at 0xf405624 loads 4 bytes from ret(find_display) +0x8.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf40562c, `lw` at 0xf40570c, `lw` at 0xf405774.
  The `lw` at 0xf405640 loads 4 bytes from abs 0xf40c004.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf405658, `lw` at 0xf405670, `lw` at 0xf40569c.
  The `lw` at 0xf40565c loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xf405674 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf405684, `sw` at 0xf4056a0.
  The `sh` at 0xf4056ac stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf4056b0, `sb` at 0xf4056ec.
  The `lw` at 0xf4056b4 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf4056c8 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xf4056cc stores 4 bytes to a0 (arg0 at entry) +0x60.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xf4056dc, `lw` at 0xf4056e4.
  The `sb` at 0xf4056e8 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf4056f4 stores 4 bytes to [a0+108] +0x4.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf405714, `lw` at 0xf40572c, `lw` at 0xf40577c.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf405718, `lw` at 0xf405780.
  The `sw` at 0xf405758 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `sw` at 0xf405764 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `sw` at 0xf405770 stores 4 bytes to ?.
  The `jalr` at 0xf405610 calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf40563c calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf405664 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405690 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4056fc calls _XReply with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x1.
  The `jalr` at 0xf405720 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40573c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405788 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4057a4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf40561c targets 0xf405630, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bnel` branch at 0xf405628 targets 0xf405654, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0; its branch-likely delay slot `lw v0,1232(s0)` at 0xf40562c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf405648 targets 0xf4057b4 and is always taken.
  The `beql` branch at 0xf405654 targets 0xf405674, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xf405658 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf405680 targets 0xf4056a4, is taken when t7(=[a0+112]) >= t8(=[a0+108]+8) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+8) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xf405684 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf405704 targets 0xf405750, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xf405710 targets 0xf405730, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf405714 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf405734 targets 0xf405748, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf405748 targets 0xf4057b4 and is always taken.
  The `beql` branch at 0xf405778 targets 0xf405798, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf40577c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf40579c targets 0xf4057b4, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lbu v0,41(sp)` at 0xf4057a0 runs only when taken and is annulled on fall-through.
  The return at 0xf4057c0 has v0 = one of 0x0, ?.
  The instructions from 0xf405650 to 0xf405650 are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcSetPlatformParameter` in `usr/lib/libXsgivc.so` at 0xf4057c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf4057c8-0xf4059ac (484 bytes).
  It occupies 484 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf40580c, `lw` at 0xf4058c4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf405814, `lw` at 0xf40595c.
  The `lw` at 0xf405828 loads 4 bytes from abs 0xf40c004.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf40583c, `lw` at 0xf405854, `lw` at 0xf405880.
  The `lw` at 0xf405840 loads 4 bytes from [a0+1232] +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xf405858, `lw` at 0xf4058fc.
  The `sw` at 0xf405888 stores 4 bytes to a0 (arg0 at entry) +0x64.
  2 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xf405894, `sh` at 0xf4058ec.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf405898, `sb` at 0xf4058d4.
  The `lw` at 0xf4058a0 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf4058b0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xf4058b4, `sw` at 0xf405940.
  The `lhu` at 0xf4058bc loads 2 bytes from [a0+108] +0x2.
  The `lw` at 0xf4058cc loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sb` at 0xf4058d0 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf4058dc stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf4058e4 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf4058f0 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xf4058f4 stores 4 bytes to [a0+108] +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf405964, `lw` at 0xf40597c.
  The `lw` at 0xf405968 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xf4057f8 calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf405824 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf405848 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405874 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40591c calls memcpy with a0=[a0+108], a1=?, a2=?, a3=?.
  The `jalr` at 0xf405950 calls _XSend with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405970 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40598c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf405804 targets 0xf405818, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bnel` branch at 0xf405810 targets 0xf405838, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0; its branch-likely delay slot `lw v0,1232(s0)` at 0xf405814 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf40582c targets 0xf405998 and is always taken.
  The `beql` branch at 0xf405838 targets 0xf405858, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xf40583c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf405864 targets 0xf405888, is taken when t7(=[a0+112]) >= t8(=[a0+108]+20) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+20) (unsigned); its branch-likely delay slot `lw a2,76(sp)` at 0xf405868 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf405908 targets 0xf405944, is taken when t4(=[a0+112]) < t5(?) (unsigned), and falls through when t4(=[a0+112]) >= t5(?) (unsigned).
  The `beq` branch at 0xf40593c targets 0xf40595c and is always taken.
  The `beql` branch at 0xf405960 targets 0xf405980, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf405964 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf405984 targets 0xf40599c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xf405988 runs only when taken and is annulled on fall-through.
  The return at 0xf4059a4 has v0 = one of [a0+124], ?.
  The instructions from 0xf405834 to 0xf405834 are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcQueryPlatformParameter` in `usr/lib/libXsgivc.so` at 0xf4059ac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf4059ac-0xf405c2c (640 bytes).
  It occupies 640 bytes.
  The `lw` at 0xf4059f4 loads 4 bytes from ret(find_display) +0x8.
  The `lw` at 0xf405a14 loads 4 bytes from abs 0xf40c004.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf405a28, `lw` at 0xf405b08, `lw` at 0xf405b60.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf405a3c, `lw` at 0xf405a54, `lw` at 0xf405a80.
  The `lw` at 0xf405a40 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xf405a58 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf405a68, `sw` at 0xf405a84.
  The `sh` at 0xf405a90 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf405a94, `sb` at 0xf405ad0.
  The `lw` at 0xf405a98 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf405aac stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xf405ab0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xf405ac0, `lw` at 0xf405ac8.
  The `sb` at 0xf405acc stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf405ad8 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf405ae0 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf405ae8 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xf405af0 stores 4 bytes to [a0+108] +0x10.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf405b10, `lw` at 0xf405b28, `lw` at 0xf405b68.
  3 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf405b14, `lw` at 0xf405b6c, `lw` at 0xf405be4.
  The `jalr` at 0xf4059e0 calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf405a10 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf405a48 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405a74 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405af8 calls _XReply with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x0.
  The `jalr` at 0xf405b1c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405b38 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405b74 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405b90 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405bcc calls _XRead with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405bec calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405c08 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf4059ec targets 0xf405a04, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bne` branch at 0xf4059fc targets 0xf405a24, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0.
  The `beq` branch at 0xf405a1c targets 0xf405c18 and is always taken.
  The `bnel` branch at 0xf405a24 targets 0xf405a38, is taken when t7(?) != 0, and falls through when t7(?) == 0; its branch-likely delay slot `lw v0,1232(s1)` at 0xf405a28 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf405a2c targets 0xf405c18 and is always taken.
  The `beql` branch at 0xf405a38 targets 0xf405a58, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,108(s1)` at 0xf405a3c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf405a64 targets 0xf405a88, is taken when t8(=[a0+112]) >= t0(=[a0+108]+20) (unsigned), and falls through when t8(=[a0+112]) < t0(=[a0+108]+20) (unsigned); its branch-likely delay slot `sw v0,100(s1)` at 0xf405a68 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf405b00 targets 0xf405b4c, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xf405b0c targets 0xf405b2c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xf405b10 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf405b30 targets 0xf405b44, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf405b44 targets 0xf405c18 and is always taken.
  The `bnel` branch at 0xf405b58 targets 0xf405ba8, is taken when t3(?) != 0, and falls through when t3(?) == 0; its branch-likely delay slot `sltu at,t4,v0` at 0xf405b5c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf405b64 targets 0xf405b84, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xf405b68 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf405b88 targets 0xf405b9c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf405b9c targets 0xf405c18 and is always taken.
  The `beq` branch at 0xf405ba8 targets 0xf405bb8, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xf405bb0 targets 0xf405bb8 and is always taken.
  The `blezl` branch at 0xf405bb8 targets 0xf405bdc, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed); its branch-likely delay slot `lw v0,1232(s1)` at 0xf405bbc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf405bdc targets 0xf405bfc, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xf405be0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf405c00 targets 0xf405c18, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `addiu v0,zero,1` at 0xf405c04 runs only when taken and is annulled on fall-through.
  The return at 0xf405c24 has v0 = one of 0x0, 0x1, 0x10.
  The instructions from 0xf405a34 to 0xf405a34 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xf405ba4 to 0xf405ba4 are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcQueryScreenGammaMaps` in `usr/lib/libXsgivc.so` at 0xf405c2c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf405c2c-0xf405df8 (460 bytes).
  It occupies 460 bytes.
  The `lw` at 0xf405c6c loads 4 bytes from ret(find_display) +0x8.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf405c74, `lw` at 0xf405d54, `lw` at 0xf405da4.
  The `lw` at 0xf405c88 loads 4 bytes from abs 0xf40c004.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf405ca0, `lw` at 0xf405cb8, `lw` at 0xf405ce4.
  The `lw` at 0xf405ca4 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xf405cbc loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf405ccc, `sw` at 0xf405ce8.
  The `sh` at 0xf405cf4 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf405cf8, `sb` at 0xf405d34.
  The `lw` at 0xf405cfc loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf405d10 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xf405d14 stores 4 bytes to a0 (arg0 at entry) +0x60.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xf405d24, `lw` at 0xf405d2c.
  The `sb` at 0xf405d30 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf405d3c stores 4 bytes to [a0+108] +0x4.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf405d5c, `lw` at 0xf405d74, `lw` at 0xf405dac.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf405d60, `lw` at 0xf405db0.
  The `sw` at 0xf405da0 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jalr` at 0xf405c58 calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf405c84 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf405cac calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405cd8 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405d44 calls _XReply with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x1.
  The `jalr` at 0xf405d68 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405d84 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405db8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405dd4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf405c64 targets 0xf405c78, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bnel` branch at 0xf405c70 targets 0xf405c9c, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0; its branch-likely delay slot `lw v0,1232(s0)` at 0xf405c74 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf405c90 targets 0xf405de4 and is always taken.
  The `beql` branch at 0xf405c9c targets 0xf405cbc, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xf405ca0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf405cc8 targets 0xf405cec, is taken when t7(=[a0+112]) >= t8(=[a0+108]+8) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+8) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xf405ccc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf405d4c targets 0xf405d98, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xf405d58 targets 0xf405d78, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf405d5c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf405d7c targets 0xf405d90, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf405d90 targets 0xf405de4 and is always taken.
  The `beql` branch at 0xf405da8 targets 0xf405dc8, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf405dac runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf405dcc targets 0xf405de4, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lbu v0,41(sp)` at 0xf405dd0 runs only when taken and is annulled on fall-through.
  The return at 0xf405df0 has v0 = one of 0x0, ?.
  The instructions from 0xf405c98 to 0xf405c98 are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcQueryGammaMap` in `usr/lib/libXsgivc.so` at 0xf405df8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf405df8-0xf405fe8 (496 bytes).
  It occupies 496 bytes.
  The `lw` at 0xf405e3c loads 4 bytes from ret(find_display) +0x8.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf405e44, `lw` at 0xf405f2c, `lw` at 0xf405f94.
  The `lw` at 0xf405e58 loads 4 bytes from abs 0xf40c004.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf405e70, `lw` at 0xf405e88, `lw` at 0xf405eb4.
  The `lw` at 0xf405e74 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xf405e8c loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf405e9c, `sw` at 0xf405eb8.
  The `sh` at 0xf405ec4 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf405ec8, `sb` at 0xf405f04.
  The `lw` at 0xf405ecc loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf405ee0 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xf405ee4 stores 4 bytes to a0 (arg0 at entry) +0x60.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xf405ef4, `lw` at 0xf405efc.
  The `sb` at 0xf405f00 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf405f0c stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf405f14 stores 4 bytes to [a0+108] +0x8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf405f34, `lw` at 0xf405f4c, `lw` at 0xf405f9c.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf405f38, `lw` at 0xf405fa0.
  The `sw` at 0xf405f78 stores 4 bytes to a3 (arg3 at entry) +0x0.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xf405f84, `sw` at 0xf405f90.
  The `jalr` at 0xf405e28 calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf405e54 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf405e7c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405ea8 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405f1c calls _XReply with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x1.
  The `jalr` at 0xf405f40 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405f5c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405fa8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405fc4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf405e34 targets 0xf405e48, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bnel` branch at 0xf405e40 targets 0xf405e6c, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0; its branch-likely delay slot `lw v0,1232(s0)` at 0xf405e44 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf405e60 targets 0xf405fd4 and is always taken.
  The `beql` branch at 0xf405e6c targets 0xf405e8c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xf405e70 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf405e98 targets 0xf405ebc, is taken when t7(=[a0+112]) >= t8(=[a0+108]+12) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+12) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xf405e9c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf405f24 targets 0xf405f70, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xf405f30 targets 0xf405f50, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf405f34 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf405f54 targets 0xf405f68, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf405f68 targets 0xf405fd4 and is always taken.
  The `beql` branch at 0xf405f98 targets 0xf405fb8, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf405f9c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf405fbc targets 0xf405fd4, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lbu v0,41(sp)` at 0xf405fc0 runs only when taken and is annulled on fall-through.
  The return at 0xf405fe0 has v0 = one of 0x0, ?.
  The instructions from 0xf405e68 to 0xf405e68 are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcStoreGammaColors8` in `usr/lib/libXsgivc.so` at 0xf405fe8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf405fe8-0xf4061d0 (488 bytes).
  It occupies 488 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf40602c, `lw` at 0xf4060e0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf406034, `lw` at 0xf406180.
  The `lw` at 0xf406048 loads 4 bytes from abs 0xf40c004.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf40605c, `lw` at 0xf406074, `lw` at 0xf4060a0.
  The `lw` at 0xf406060 loads 4 bytes from [a0+1232] +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xf406078, `lw` at 0xf40611c.
  The `sw` at 0xf4060a8 stores 4 bytes to a0 (arg0 at entry) +0x64.
  2 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xf4060b4, `sh` at 0xf406110.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf4060b8, `sb` at 0xf4060f4.
  The `lw` at 0xf4060c0 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf4060cc stores 4 bytes to a0 (arg0 at entry) +0x60.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xf4060d0, `sw` at 0xf406164.
  The `lhu` at 0xf4060d8 loads 2 bytes from [a0+108] +0x2.
  The `lw` at 0xf4060ec loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sb` at 0xf4060f0 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf4060fc stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf406104 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xf406108 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf406114 stores 4 bytes to [a0+108] +0x10.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf406188, `lw` at 0xf4061a0.
  The `lw` at 0xf40618c loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xf406018 calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf406044 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf406068 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406094 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40613c calls memcpy with a0=[a0+108], a1=?, a2=a3 at entry (arg3), a3=a3 at entry (arg3).
  The `jalr` at 0xf406174 calls _XSend with a0=a0 at entry (arg0), a1=?, a2=a3 at entry (arg3), a3=a3 at entry (arg3).
  The `jalr` at 0xf406194 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4061b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf406024 targets 0xf406038, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bnel` branch at 0xf406030 targets 0xf406058, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0; its branch-likely delay slot `lw v0,1232(s0)` at 0xf406034 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf40604c targets 0xf4061bc and is always taken.
  The `beql` branch at 0xf406058 targets 0xf406078, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xf40605c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf406084 targets 0xf4060a8, is taken when t7(=[a0+112]) >= t8(=[a0+108]+20) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+20) (unsigned); its branch-likely delay slot `lw a3,68(sp)` at 0xf406088 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf406128 targets 0xf406168, is taken when t5(=[a0+112]) < t6(=([a0+108] + a3)) (unsigned), and falls through when t5(=[a0+112]) >= t6(=([a0+108] + a3)) (unsigned).
  The `beq` branch at 0xf406160 targets 0xf406180 and is always taken.
  The `beql` branch at 0xf406184 targets 0xf4061a4, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf406188 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf4061a8 targets 0xf4061c0, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xf4061ac runs only when taken and is annulled on fall-through.
  The return at 0xf4061c8 has v0 = one of [a0+124], ?.
  The instructions from 0xf406054 to 0xf406054 are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcStoreGammaColors16` in `usr/lib/libXsgivc.so` at 0xf4061d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf4061d0-0xf4063bc (492 bytes).
  It occupies 492 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf406214, `lw` at 0xf4062cc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf40621c, `lw` at 0xf40636c.
  The `lw` at 0xf406230 loads 4 bytes from abs 0xf40c004.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf406244, `lw` at 0xf40625c, `lw` at 0xf406288.
  The `lw` at 0xf406248 loads 4 bytes from [a0+1232] +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xf406260, `lw` at 0xf406308.
  The `sw` at 0xf406290 stores 4 bytes to a0 (arg0 at entry) +0x64.
  2 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xf40629c, `sh` at 0xf4062fc.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf4062a0, `sb` at 0xf4062e0.
  The `lw` at 0xf4062a8 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf4062b8 stores 4 bytes to a0 (arg0 at entry) +0x60.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xf4062bc, `sw` at 0xf406350.
  The `lhu` at 0xf4062c4 loads 2 bytes from [a0+108] +0x2.
  The `lw` at 0xf4062d8 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sb` at 0xf4062dc stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf4062e8 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf4062f0 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xf4062f4 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf406300 stores 4 bytes to [a0+108] +0x10.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf406374, `lw` at 0xf40638c.
  The `lw` at 0xf406378 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xf406200 calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf40622c calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf406250 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40627c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406328 calls memcpy with a0=[a0+108], a1=?, a2=(a3 << 0x1), a3=(a3 << 0x1).
  The `jalr` at 0xf406360 calls _XSend with a0=a0 at entry (arg0), a1=?, a2=(a3 << 0x1), a3=(a3 << 0x1).
  The `jalr` at 0xf406380 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40639c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf40620c targets 0xf406220, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bnel` branch at 0xf406218 targets 0xf406240, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0; its branch-likely delay slot `lw v0,1232(s0)` at 0xf40621c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf406234 targets 0xf4063a8 and is always taken.
  The `beql` branch at 0xf406240 targets 0xf406260, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xf406244 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf40626c targets 0xf406290, is taken when t7(=[a0+112]) >= t8(=[a0+108]+20) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+20) (unsigned); its branch-likely delay slot `lw a1,68(sp)` at 0xf406270 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf406314 targets 0xf406354, is taken when t5(=[a0+112]) < t6(=([a0+108] + (a3 << 0x1))) (unsigned), and falls through when t5(=[a0+112]) >= t6(=([a0+108] + (a3 << 0x1))) (unsigned).
  The `beq` branch at 0xf40634c targets 0xf40636c and is always taken.
  The `beql` branch at 0xf406370 targets 0xf406390, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf406374 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf406394 targets 0xf4063ac, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xf406398 runs only when taken and is annulled on fall-through.
  The return at 0xf4063b4 has v0 = one of [a0+124], ?.
  The instructions from 0xf40623c to 0xf40623c are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcQueryGammaColors` in `usr/lib/libXsgivc.so` at 0xf4063bc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf4063bc-0xf4066d0 (788 bytes).
  It occupies 788 bytes.
  The `lw` at 0xf406400 loads 4 bytes from ret(find_display) +0x8.
  The `lw` at 0xf406420 loads 4 bytes from abs 0xf40c004.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf40643c, `lw` at 0xf406514, `lw` at 0xf40656c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf406450, `lw` at 0xf406468, `lw` at 0xf406494.
  The `lw` at 0xf406454 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xf40646c loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf40647c, `sw` at 0xf406498.
  The `sh` at 0xf4064a4 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf4064a8, `sb` at 0xf4064e4.
  The `lw` at 0xf4064ac loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf4064c0 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xf4064c4 stores 4 bytes to a0 (arg0 at entry) +0x60.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xf4064d4, `lw` at 0xf4064dc, `lw` at 0xf40666c.
  The `sb` at 0xf4064e0 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf4064ec stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf4064f4 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf4064fc stores 4 bytes to [a0+108] +0xc.
  10 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf40651c, `lw` at 0xf406534, `lw` at 0xf406574.
  5 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf406520, `lw` at 0xf406578, `lw` at 0xf4065c4.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xf4065b4, `sw` at 0xf40661c.
  The `jalr` at 0xf4063ec calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf40641c calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf40645c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406488 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406504 calls _XReply with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x0.
  The `jalr` at 0xf406528 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406544 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406580 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40659c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4065cc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4065e8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406608 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xf406634 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406650 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406670 calls _XRead with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406690 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4066ac calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf4063f8 targets 0xf406410, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bne` branch at 0xf406408 targets 0xf406430, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0.
  The `beq` branch at 0xf406428 targets 0xf4066bc and is always taken.
  The `blez` branch at 0xf406430 targets 0xf406440, is taken when t7(=a3) <= 0 (signed), and falls through when t7(=a3) > 0 (signed).
  The `bnel` branch at 0xf406438 targets 0xf40644c, is taken when at(?) != 0, and falls through when at(?) == 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xf40643c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf406440 targets 0xf4066bc and is always taken.
  The `beql` branch at 0xf40644c targets 0xf40646c, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xf406450 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf406478 targets 0xf40649c, is taken when t8(=[a0+112]) >= t1(=[a0+108]+16) (unsigned), and falls through when t8(=[a0+112]) < t1(=[a0+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xf40647c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf40650c targets 0xf406558, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xf406518 targets 0xf406538, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf40651c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf40653c targets 0xf406550, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf406550 targets 0xf4066bc and is always taken.
  The `bne` branch at 0xf406564 targets 0xf4065b0, is taken when t4(?) != 0, and falls through when t4(?) == 0.
  The `beql` branch at 0xf406570 targets 0xf406590, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf406574 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf406594 targets 0xf4065a8, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf4065a8 targets 0xf4066bc and is always taken.
  The `bgtz` branch at 0xf4065b0 targets 0xf4065fc, is taken when v0(?) > 0 (signed), and falls through when v0(?) <= 0 (signed).
  The `beql` branch at 0xf4065bc targets 0xf4065dc, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf4065c0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf4065e0 targets 0xf4065f4, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf4065f4 targets 0xf4066bc and is always taken.
  The `bne` branch at 0xf406618 targets 0xf406664, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beql` branch at 0xf406624 targets 0xf406644, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf406628 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf406648 targets 0xf40665c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf40665c targets 0xf4066bc and is always taken.
  The `beql` branch at 0xf406680 targets 0xf4066a0, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf406684 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf4066a4 targets 0xf4066bc, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `addiu v0,zero,1` at 0xf4066a8 runs only when taken and is annulled on fall-through.
  The return at 0xf4066c8 has v0 = one of 0x0, 0x1.
  The instructions from 0xf406448 to 0xf406448 are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcSelectInput` in `usr/lib/libXsgivc.so` at 0xf4066d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf4066d0-0xf406828 (344 bytes).
  It occupies 344 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf406710, `lw` at 0xf4067b8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf406718, `lw` at 0xf4067d8.
  The `lw` at 0xf40672c loads 4 bytes from abs 0xf40c004.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf406740, `lw` at 0xf406758, `lw` at 0xf406784.
  The `lw` at 0xf406744 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xf40675c loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf40676c, `sw` at 0xf406788.
  The `sh` at 0xf406794 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf406798, `sb` at 0xf4067c4.
  The `lw` at 0xf40679c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf4067ac stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xf4067b0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `lw` at 0xf4067bc loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sb` at 0xf4067c0 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf4067cc stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf4067d4 stores 4 bytes to [a0+108] +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf4067e0, `lw` at 0xf4067f8.
  The `lw` at 0xf4067e4 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xf4066fc calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf406728 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf40674c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406778 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4067ec calls (unknown callee) with a0=a0 at entry (arg0), a1=0x17, a2=?, a3=?.
  The `jalr` at 0xf406808 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf406708 targets 0xf40671c, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bnel` branch at 0xf406714 targets 0xf40673c, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xf406718 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf406730 targets 0xf406814 and is always taken.
  The `beql` branch at 0xf40673c targets 0xf40675c, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xf406740 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf406768 targets 0xf40678c, is taken when t7(=[a0+112]) >= t8(=[a0+108]+12) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+12) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xf40676c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf4067dc targets 0xf4067fc, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf4067e0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf406800 targets 0xf406818, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xf406804 runs only when taken and is annulled on fall-through.
  The return at 0xf406820 has v0 = one of [a0+124], ?.
  The instructions from 0xf406738 to 0xf406738 are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcFreeVideoFormatInfo` in `usr/lib/libXsgivc.so` at 0xf406828 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf406828-0xf406864 (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xf406848 calls free with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xf40683c targets 0xf406854, is taken when a0 == 0, and falls through when a0 != 0.
  The return at 0xf40685c has v0 = one of ?, ret(free).

- `XSGIvcSetChannelInputRectangle` in `usr/lib/libXsgivc.so` at 0xf406864 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf406864-0xf406a40 (476 bytes).
  It occupies 476 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf4068a8, `lw` at 0xf40695c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf4068b0, `lw` at 0xf4069f0.
  The `lw` at 0xf4068c4 loads 4 bytes from abs 0xf40c004.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf4068d8, `lw` at 0xf4068f0, `lw` at 0xf40691c.
  The `lw` at 0xf4068dc loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xf4068f4 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf406904, `sw` at 0xf406920.
  The `sh` at 0xf40692c stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf406930, `sb` at 0xf406974.
  The `lw` at 0xf406934 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf406948 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xf40694c stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `lw` at 0xf406968 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sb` at 0xf40696c stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf406980 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf406988 stores 4 bytes to [a0+108] +0x8.
  The `swc1` at 0xf4069a0 stores 4 bytes to [a0+108] +0xc.
  The `swc1` at 0xf4069b8 stores 4 bytes to [a0+108] +0x10.
  The `swc1` at 0xf4069d0 stores 4 bytes to [a0+108] +0x14.
  The `sb` at 0xf4069d8 stores 1 byte to [a0+108] +0x1c.
  The `swc1` at 0xf4069ec stores 4 bytes to [a0+108] +0x18.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf4069f8, `lw` at 0xf406a10.
  The `lw` at 0xf4069fc loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xf406894 calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf4068c0 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf4068e4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406910 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406a04 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x18, a2=?, a3=?.
  The `jalr` at 0xf406a20 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf4068a0 targets 0xf4068b4, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bnel` branch at 0xf4068ac targets 0xf4068d4, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xf4068b0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf4068c8 targets 0xf406a2c and is always taken.
  The `beql` branch at 0xf4068d4 targets 0xf4068f4, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xf4068d8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf406900 targets 0xf406924, is taken when t7(=[a0+112]) >= t8(=[a0+108]+32) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+32) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xf406904 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf4069f4 targets 0xf406a14, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf4069f8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf406a18 targets 0xf406a30, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xf406a1c runs only when taken and is annulled on fall-through.
  The return at 0xf406a38 has v0 = one of [a0+124], ?.
  The instructions from 0xf4068d0 to 0xf4068d0 are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcQueryBestChannelRectangle` in `usr/lib/libXsgivc.so` at 0xf406a40 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf406a40-0xf406d14 (724 bytes).
  It occupies 724 bytes.
  The `lw` at 0xf406a84 loads 4 bytes from ret(find_display) +0x8.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf406a8c, `lw` at 0xf406bf0, `lw` at 0xf406cc0.
  The `lw` at 0xf406aa0 loads 4 bytes from abs 0xf40c004.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf406ab8, `lw` at 0xf406ad0, `lw` at 0xf406afc.
  The `lw` at 0xf406abc loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xf406ad4 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf406ae4, `sw` at 0xf406b00.
  The `sh` at 0xf406b0c stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf406b10, `sb` at 0xf406b54.
  The `lw` at 0xf406b14 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf406b28 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xf406b2c stores 4 bytes to a0 (arg0 at entry) +0x60.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xf406b3c, `lw` at 0xf406b48.
  The `sb` at 0xf406b4c stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf406b64 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf406b74 stores 4 bytes to [a0+108] +0x8.
  The `swc1` at 0xf406b8c stores 4 bytes to [a0+108] +0xc.
  The `swc1` at 0xf406ba4 stores 4 bytes to [a0+108] +0x10.
  The `swc1` at 0xf406bbc stores 4 bytes to [a0+108] +0x14.
  The `sb` at 0xf406bc4 stores 1 byte to [a0+108] +0x1c.
  The `swc1` at 0xf406bd8 stores 4 bytes to [a0+108] +0x18.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf406bf8, `lw` at 0xf406c10, `lw` at 0xf406cc8.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf406bfc, `lw` at 0xf406ccc.
  4 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xf406c5c, `swc1` at 0xf406c7c, `swc1` at 0xf406c9c.
  The `jalr` at 0xf406a70 calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf406a9c calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf406ac4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406af0 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406be0 calls _XReply with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x1.
  The `jalr` at 0xf406c04 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406c20 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406cd4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406cf0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf406a7c targets 0xf406a90, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bnel` branch at 0xf406a88 targets 0xf406ab4, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0; its branch-likely delay slot `lw v0,1232(s0)` at 0xf406a8c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf406aa8 targets 0xf406d00 and is always taken.
  The `beql` branch at 0xf406ab4 targets 0xf406ad4, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xf406ab8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf406ae0 targets 0xf406b04, is taken when t7(=[a0+112]) >= t8(=[a0+108]+32) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+32) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xf406ae4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf406be8 targets 0xf406c34, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xf406bf4 targets 0xf406c14, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf406bf8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf406c18 targets 0xf406c2c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf406c2c targets 0xf406d00 and is always taken.
  The `beql` branch at 0xf406cc4 targets 0xf406ce4, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf406cc8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf406ce8 targets 0xf406d00, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lbu v0,41(sp)` at 0xf406cec runs only when taken and is annulled on fall-through.
  The return at 0xf406d0c has v0 = one of 0x0, ?.
  The instructions from 0xf406ab0 to 0xf406ab0 are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcSendMonitorCommand` in `usr/lib/libXsgivc.so` at 0xf406d14 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf406d14-0xf406ef4 (480 bytes).
  It occupies 480 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf406d58, `lw` at 0xf406e10.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf406d60, `lw` at 0xf406ea4.
  The `lw` at 0xf406d74 loads 4 bytes from abs 0xf40c004.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf406d88, `lw` at 0xf406da0, `lw` at 0xf406dcc.
  The `lw` at 0xf406d8c loads 4 bytes from [a0+1232] +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xf406da4, `lw` at 0xf406e44.
  The `sw` at 0xf406dd4 stores 4 bytes to a0 (arg0 at entry) +0x64.
  2 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xf406de0, `sh` at 0xf406e30.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf406de4, `sb` at 0xf406e20.
  The `lw` at 0xf406dec loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf406dfc stores 4 bytes to a0 (arg0 at entry) +0x60.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xf406e00, `sw` at 0xf406e88.
  The `lhu` at 0xf406e08 loads 2 bytes from [a0+108] +0x2.
  The `lw` at 0xf406e18 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sb` at 0xf406e1c stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf406e28 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xf406e34 stores 1 byte to [a0+108] +0x10.
  The `sw` at 0xf406e38 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xf406e3c stores 4 bytes to [a0+108] +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf406eac, `lw` at 0xf406ec4.
  The `lw` at 0xf406eb0 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xf406d44 calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf406d70 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf406d94 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406dc0 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406e64 calls memcpy with a0=[a0+108], a1=a3 at entry (arg3), a2=?, a3=?.
  The `jalr` at 0xf406e98 calls _XSend with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=?, a3=?.
  The `jalr` at 0xf406eb8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406ed4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf406d50 targets 0xf406d64, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bnel` branch at 0xf406d5c targets 0xf406d84, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0; its branch-likely delay slot `lw v0,1232(s0)` at 0xf406d60 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf406d78 targets 0xf406ee0 and is always taken.
  The `beql` branch at 0xf406d84 targets 0xf406da4, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xf406d88 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf406db0 targets 0xf406dd4, is taken when t7(=[a0+112]) >= t8(=[a0+108]+20) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+20) (unsigned); its branch-likely delay slot `lw a2,72(sp)` at 0xf406db4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf406e50 targets 0xf406e8c, is taken when t3(=[a0+112]) < t4(?) (unsigned), and falls through when t3(=[a0+112]) >= t4(?) (unsigned).
  The `beq` branch at 0xf406e84 targets 0xf406ea4 and is always taken.
  The `beql` branch at 0xf406ea8 targets 0xf406ec8, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf406eac runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf406ecc targets 0xf406ee4, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xf406ed0 runs only when taken and is annulled on fall-through.
  The return at 0xf406eec has v0 = one of [a0+124], ?.
  The instructions from 0xf406d80 to 0xf406d80 are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcSendMonitorQuery` in `usr/lib/libXsgivc.so` at 0xf406ef4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf406ef4-0xf4071cc (728 bytes).
  It occupies 728 bytes.
  The `lw` at 0xf406f38 loads 4 bytes from ret(find_display) +0x8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf406f40, `lw` at 0xf407064, `lw` at 0xf4070b4.
  The `lw` at 0xf406f54 loads 4 bytes from abs 0xf40c004.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf406f6c, `lw` at 0xf406f84, `lw` at 0xf406fb0.
  The `lw` at 0xf406f70 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xf406f88 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf406fb8 stores 4 bytes to a0 (arg0 at entry) +0x64.
  2 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xf406fc4, `sh` at 0xf40701c.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf406fc8, `sb` at 0xf40700c.
  The `lw` at 0xf406fcc loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf406fe0 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xf406fe4 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `lhu` at 0xf406fec loads 2 bytes from [a0+108] +0x2.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xf406ff4, `lw` at 0xf407000.
  The `sb` at 0xf407004 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf407014 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xf407020 stores 1 byte to [a0+108] +0x10.
  The `sw` at 0xf407024 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xf407028 stores 4 bytes to [a0+108] +0x8.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf40706c, `lw` at 0xf407084, `lw` at 0xf4070bc.
  3 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf407070, `lw` at 0xf4070c0, `lw` at 0xf407184.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xf407134, `sw` at 0xf407144, `sw` at 0xf40716c.
  The `jalr` at 0xf406f24 calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf406f50 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf406f78 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406fa4 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407034 calls _XSend with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=?, a3=0x19.
  The `jalr` at 0xf407054 calls _XReply with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x0.
  The `jalr` at 0xf407078 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407094 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4070c8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4070e4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407100 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xf407120 calls _XReadPad with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xf40715c calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40718c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4071a8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf406f30 targets 0xf406f44, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bnel` branch at 0xf406f3c targets 0xf406f68, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0; its branch-likely delay slot `lw v0,1232(s0)` at 0xf406f40 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf406f5c targets 0xf4071b8 and is always taken.
  The `beql` branch at 0xf406f68 targets 0xf406f88, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xf406f6c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf406f94 targets 0xf406fb8, is taken when t7(=[a0+112]) >= t8(=[a0+108]+20) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+20) (unsigned); its branch-likely delay slot `lw a2,104(sp)` at 0xf406f98 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf40705c targets 0xf4070a8, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xf407068 targets 0xf407088, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf40706c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf40708c targets 0xf4070a0, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf4070a0 targets 0xf4071b8 and is always taken.
  The `bne` branch at 0xf4070ac targets 0xf4070f8, is taken when t5(?) != 0, and falls through when t5(?) == 0.
  The `beql` branch at 0xf4070b8 targets 0xf4070d8, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf4070bc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf4070dc targets 0xf4070f0, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf4070f0 targets 0xf4071b8 and is always taken.
  The `beq` branch at 0xf40710c targets 0xf407148, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `beq` branch at 0xf407140 targets 0xf407178 and is always taken.
  The `beql` branch at 0xf40717c targets 0xf40719c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf407180 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf4071a0 targets 0xf4071b8, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `addiu v0,zero,1` at 0xf4071a4 runs only when taken and is annulled on fall-through.
  The return at 0xf4071c4 has v0 = one of 0x0, 0x1.
  The instructions from 0xf406f64 to 0xf406f64 are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcQueryMonitorBaseProtocol` in `usr/lib/libXsgivc.so` at 0xf4071cc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf4071cc-0xf407394 (456 bytes).
  It occupies 456 bytes.
  The `lw` at 0xf40720c loads 4 bytes from ret(find_display) +0x8.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf407214, `lw` at 0xf4072fc, `lw` at 0xf407340.
  The `lw` at 0xf407228 loads 4 bytes from abs 0xf40c004.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf407240, `lw` at 0xf407258, `lw` at 0xf407284.
  The `lw` at 0xf407244 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xf40725c loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf40726c, `sw` at 0xf407288.
  The `sh` at 0xf407294 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf407298, `sb` at 0xf4072d4.
  The `lw` at 0xf40729c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf4072b0 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xf4072b4 stores 4 bytes to a0 (arg0 at entry) +0x60.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xf4072c4, `lw` at 0xf4072cc.
  The `sb` at 0xf4072d0 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf4072dc stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf4072e4 stores 4 bytes to [a0+108] +0x8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf407304, `lw` at 0xf40731c, `lw` at 0xf407348.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf407308, `lw` at 0xf40734c.
  The `jalr` at 0xf4071f8 calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf407224 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf40724c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407278 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4072ec calls _XReply with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x1.
  The `jalr` at 0xf407310 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40732c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407354 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407370 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf407204 targets 0xf407218, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bnel` branch at 0xf407210 targets 0xf40723c, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0; its branch-likely delay slot `lw v0,1232(s0)` at 0xf407214 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf407230 targets 0xf407380 and is always taken.
  The `beql` branch at 0xf40723c targets 0xf40725c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xf407240 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf407268 targets 0xf40728c, is taken when t7(=[a0+112]) >= t8(=[a0+108]+12) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+12) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xf40726c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf4072f4 targets 0xf407340, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xf407300 targets 0xf407320, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf407304 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf407324 targets 0xf407338, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf407338 targets 0xf407380 and is always taken.
  The `beql` branch at 0xf407344 targets 0xf407364, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf407348 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf407368 targets 0xf407380, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw v0,48(sp)` at 0xf40736c runs only when taken and is annulled on fall-through.
  The return at 0xf40738c has v0 = one of -0x1, 0x0, ?.
  The instructions from 0xf407238 to 0xf407238 are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcInitMonitorBaseProtocol` in `usr/lib/libXsgivc.so` at 0xf407394 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf407394-0xf4074ec (344 bytes).
  It occupies 344 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf4073d4, `lw` at 0xf40747c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf4073dc, `lw` at 0xf40749c.
  The `lw` at 0xf4073f0 loads 4 bytes from abs 0xf40c004.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf407404, `lw` at 0xf40741c, `lw` at 0xf407448.
  The `lw` at 0xf407408 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xf407420 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf407430, `sw` at 0xf40744c.
  The `sh` at 0xf407458 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf40745c, `sb` at 0xf407488.
  The `lw` at 0xf407460 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf407470 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xf407474 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `lw` at 0xf407480 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sb` at 0xf407484 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf407490 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf407498 stores 4 bytes to [a0+108] +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf4074a4, `lw` at 0xf4074bc.
  The `lw` at 0xf4074a8 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xf4073c0 calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf4073ec calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf407410 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40743c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4074b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x23, a2=?, a3=?.
  The `jalr` at 0xf4074cc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf4073cc targets 0xf4073e0, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bnel` branch at 0xf4073d8 targets 0xf407400, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xf4073dc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf4073f4 targets 0xf4074d8 and is always taken.
  The `beql` branch at 0xf407400 targets 0xf407420, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xf407404 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf40742c targets 0xf407450, is taken when t7(=[a0+112]) >= t8(=[a0+108]+12) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+12) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xf407430 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf4074a0 targets 0xf4074c0, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf4074a4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf4074c4 targets 0xf4074dc, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xf4074c8 runs only when taken and is annulled on fall-through.
  The return at 0xf4074e4 has v0 = one of [a0+124], ?.
  The instructions from 0xf4073fc to 0xf4073fc are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcSetScreenExternalSyncSource` in `usr/lib/libXsgivc.so` at 0xf4074ec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf4074ec-0xf407644 (344 bytes).
  It occupies 344 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf40752c, `lw` at 0xf4075d4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf407534, `lw` at 0xf4075f4.
  The `lw` at 0xf407548 loads 4 bytes from abs 0xf40c004.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf40755c, `lw` at 0xf407574, `lw` at 0xf4075a0.
  The `lw` at 0xf407560 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xf407578 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf407588, `sw` at 0xf4075a4.
  The `sh` at 0xf4075b0 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf4075b4, `sb` at 0xf4075e0.
  The `lw` at 0xf4075b8 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf4075c8 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xf4075cc stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `lw` at 0xf4075d8 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sb` at 0xf4075dc stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf4075e8 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf4075f0 stores 4 bytes to [a0+108] +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf4075fc, `lw` at 0xf407614.
  The `lw` at 0xf407600 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xf407518 calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf407544 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf407568 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407594 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407608 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x1b, a2=?, a3=?.
  The `jalr` at 0xf407624 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf407524 targets 0xf407538, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bnel` branch at 0xf407530 targets 0xf407558, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xf407534 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf40754c targets 0xf407630 and is always taken.
  The `beql` branch at 0xf407558 targets 0xf407578, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xf40755c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf407584 targets 0xf4075a8, is taken when t7(=[a0+112]) >= t8(=[a0+108]+12) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+12) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xf407588 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf4075f8 targets 0xf407618, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf4075fc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf40761c targets 0xf407634, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xf407620 runs only when taken and is annulled on fall-through.
  The return at 0xf40763c has v0 = one of [a0+124], ?.
  The instructions from 0xf407554 to 0xf407554 are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcQueryScreenExternalSyncSource` in `usr/lib/libXsgivc.so` at 0xf407644 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf407644-0xf407810 (460 bytes).
  It occupies 460 bytes.
  The `lw` at 0xf407684 loads 4 bytes from ret(find_display) +0x8.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf40768c, `lw` at 0xf40776c, `lw` at 0xf4077bc.
  The `lw` at 0xf4076a0 loads 4 bytes from abs 0xf40c004.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf4076b8, `lw` at 0xf4076d0, `lw` at 0xf4076fc.
  The `lw` at 0xf4076bc loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xf4076d4 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf4076e4, `sw` at 0xf407700.
  The `sh` at 0xf40770c stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf407710, `sb` at 0xf40774c.
  The `lw` at 0xf407714 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf407728 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xf40772c stores 4 bytes to a0 (arg0 at entry) +0x60.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xf40773c, `lw` at 0xf407744.
  The `sb` at 0xf407748 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf407754 stores 4 bytes to [a0+108] +0x4.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf407774, `lw` at 0xf40778c, `lw` at 0xf4077c4.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf407778, `lw` at 0xf4077c8.
  The `sw` at 0xf4077b8 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jalr` at 0xf407670 calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf40769c calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf4076c4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4076f0 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40775c calls _XReply with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x1.
  The `jalr` at 0xf407780 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40779c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4077d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4077ec calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf40767c targets 0xf407690, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bnel` branch at 0xf407688 targets 0xf4076b4, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0; its branch-likely delay slot `lw v0,1232(s0)` at 0xf40768c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf4076a8 targets 0xf4077fc and is always taken.
  The `beql` branch at 0xf4076b4 targets 0xf4076d4, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xf4076b8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf4076e0 targets 0xf407704, is taken when t7(=[a0+112]) >= t8(=[a0+108]+8) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+8) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xf4076e4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf407764 targets 0xf4077b0, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xf407770 targets 0xf407790, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf407774 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf407794 targets 0xf4077a8, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf4077a8 targets 0xf4077fc and is always taken.
  The `beql` branch at 0xf4077c0 targets 0xf4077e0, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf4077c4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf4077e4 targets 0xf4077fc, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lbu v0,41(sp)` at 0xf4077e8 runs only when taken and is annulled on fall-through.
  The return at 0xf407808 has v0 = one of 0x0, ?.
  The instructions from 0xf4076b0 to 0xf4076b0 are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcQueryExternalSyncSourceName` in `usr/lib/libXsgivc.so` at 0xf407810 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf407810-0xf407aa4 (660 bytes).
  It occupies 660 bytes.
  The `lw` at 0xf407850 loads 4 bytes from ret(find_display) +0x8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf407858, `lw` at 0xf407940, `lw` at 0xf407990.
  The `lw` at 0xf40786c loads 4 bytes from abs 0xf40c004.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf407884, `lw` at 0xf40789c, `lw` at 0xf4078c8.
  The `lw` at 0xf407888 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xf4078a0 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf4078b0, `sw` at 0xf4078cc.
  The `sh` at 0xf4078d8 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf4078dc, `sb` at 0xf407918.
  The `lw` at 0xf4078e0 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf4078f4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xf4078f8 stores 4 bytes to a0 (arg0 at entry) +0x60.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xf407908, `lw` at 0xf407910.
  The `sb` at 0xf407914 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf407920 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf407928 stores 4 bytes to [a0+108] +0x8.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf407948, `lw` at 0xf407960, `lw` at 0xf407998.
  3 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf40794c, `lw` at 0xf40799c, `lw` at 0xf407a50.
  The `sb` at 0xf407a18 stores 1 byte to ?.
  The `jalr` at 0xf40783c calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf407868 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf407890 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4078bc calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407930 calls _XReply with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x0.
  The `jalr` at 0xf407954 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407970 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4079a4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4079c0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4079dc calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xf4079fc calls _XReadPad with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xf407a30 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407a58 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407a7c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf407848 targets 0xf40785c, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bnel` branch at 0xf407854 targets 0xf407880, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0; its branch-likely delay slot `lw v0,1232(s0)` at 0xf407858 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf407874 targets 0xf407a90 and is always taken.
  The `beql` branch at 0xf407880 targets 0xf4078a0, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xf407884 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf4078ac targets 0xf4078d0, is taken when t7(=[a0+112]) >= t8(=[a0+108]+12) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+12) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xf4078b0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf407938 targets 0xf407984, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xf407944 targets 0xf407964, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf407948 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf407968 targets 0xf40797c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf40797c targets 0xf407a90 and is always taken.
  The `bne` branch at 0xf407988 targets 0xf4079d4, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beql` branch at 0xf407994 targets 0xf4079b4, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf407998 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf4079b8 targets 0xf4079cc, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf4079cc targets 0xf407a90 and is always taken.
  The `beq` branch at 0xf4079e8 targets 0xf407a1c, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `beq` branch at 0xf407a14 targets 0xf407a40 and is always taken.
  The `beql` branch at 0xf407a44 targets 0xf407a6c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf407a48 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf407a70 targets 0xf407a90, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `or v0,a1,zero` at 0xf407a74 runs only when taken and is annulled on fall-through.
  The return at 0xf407a9c has v0 = one of 0x0, ?.
  The instructions from 0xf40787c to 0xf40787c are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcNVListVideoFormats` in `usr/lib/libXsgivc.so` at 0xf407aa4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf407aa4-0xf407e50 (940 bytes).
  It occupies 940 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf407af0, `lw` at 0xf407bb0.
  The `lw` at 0xf407b0c loads 4 bytes from abs 0xf40c004.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf407b20, `lw` at 0xf407c28, `lw` at 0xf407c80.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf407b34, `lw` at 0xf407b4c, `lw` at 0xf407b78.
  The `lw` at 0xf407b38 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xf407b50 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf407b80 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xf407b8c stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf407b90, `sb` at 0xf407bc4.
  The `lw` at 0xf407b94 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf407ba8 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xf407bac stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `lw` at 0xf407bbc loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sb` at 0xf407bc0 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf407bd0 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf407bdc stores 4 bytes to [a0+108] +0x8.
  The `sb` at 0xf407be4 stores 1 byte to [a0+108] +0xc.
  The `sb` at 0xf407bec stores 1 byte to [a0+108] +0xd.
  The `sw` at 0xf407bf4 stores 4 bytes to [a0+108] +0x14.
  The `sw` at 0xf407bfc stores 4 bytes to [a0+108] +0x10.
  10 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf407c30, `lw` at 0xf407c48, `lw` at 0xf407c88.
  5 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf407c34, `lw` at 0xf407c8c, `lw` at 0xf407cd8.
  The `sw` at 0xf407cc8 stores 4 bytes to ?.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xf407da8, `lw` at 0xf407de0.
  The `jalr` at 0xf407adc calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf407b08 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf407b40 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407b6c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407bf8 calls GenerateVFList [0xf402704] with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=?, a3=[a0+108]+2.
  The `jalr` at 0xf407c18 calls _XReply with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x0.
  The `jalr` at 0xf407c3c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407c58 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407c94 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407cb0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407ce0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407cfc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407d44 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xf407d6c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407d88 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407dcc calls ReadFormatInfo [0xf402920] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407e0c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407e28 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf407ae8 targets 0xf407afc, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bne` branch at 0xf407af4 targets 0xf407b1c, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0.
  The `beq` branch at 0xf407b14 targets 0xf407e38 and is always taken.
  The `bnel` branch at 0xf407b1c targets 0xf407b30, is taken when s1(=a3) != 0, and falls through when s1(=a3) == 0; its branch-likely delay slot `lw v0,1232(s2)` at 0xf407b20 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf407b24 targets 0xf407e38 and is always taken.
  The `beql` branch at 0xf407b30 targets 0xf407b50, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s2)` at 0xf407b34 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf407b5c targets 0xf407b80, is taken when t7(=[a0+112]) >= t8(=[a0+108]+24) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+24) (unsigned); its branch-likely delay slot `lw a2,128(sp)` at 0xf407b60 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf407c20 targets 0xf407c6c, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xf407c2c targets 0xf407c4c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s2)` at 0xf407c30 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf407c50 targets 0xf407c64, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf407c64 targets 0xf407e38 and is always taken.
  The `bne` branch at 0xf407c78 targets 0xf407cc4, is taken when t4(?) != 0, and falls through when t4(?) == 0.
  The `beql` branch at 0xf407c84 targets 0xf407ca4, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s2)` at 0xf407c88 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf407ca8 targets 0xf407cbc, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf407cbc targets 0xf407e38 and is always taken.
  The `bgtz` branch at 0xf407cc4 targets 0xf407d10, is taken when v0(?) > 0 (signed), and falls through when v0(?) <= 0 (signed).
  The `beql` branch at 0xf407cd0 targets 0xf407cf0, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s2)` at 0xf407cd4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf407cf4 targets 0xf407d08, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf407d08 targets 0xf407e38 and is always taken.
  The `bne` branch at 0xf407d50 targets 0xf407d9c, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beql` branch at 0xf407d5c targets 0xf407d7c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s2)` at 0xf407d60 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf407d80 targets 0xf407d94, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf407d94 targets 0xf407e38 and is always taken.
  The `blezl` branch at 0xf407db0 targets 0xf407dfc, is taken when t2(?) <= 0 (signed), and falls through when t2(?) > 0 (signed); its branch-likely delay slot `lw v0,1232(s2)` at 0xf407db4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf407df0 targets 0xf407db8, is taken when v1(?) < t4(?) (signed), and falls through when v1(?) >= t4(?) (signed).
  The `beql` branch at 0xf407dfc targets 0xf407e1c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s2)` at 0xf407e00 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf407e20 targets 0xf407e38, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw v0,56(sp)` at 0xf407e24 runs only when taken and is annulled on fall-through.
  The return at 0xf407e48 has v0 = one of 0x0, ret(malloc).
  The instructions from 0xf407b2c to 0xf407b2c are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcNVListVideoFormatCombinations` in `usr/lib/libXsgivc.so` at 0xf407e50 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf407e50-0xf4081c0 (880 bytes).
  It occupies 880 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf407ea0, `lw` at 0xf407f60.
  The `lw` at 0xf407ec0 loads 4 bytes from abs 0xf40c004.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf407ed4, `lw` at 0xf407fa0, `lw` at 0xf407ff4.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf407ee8, `lw` at 0xf407f00, `lw` at 0xf407f2c.
  The `lw` at 0xf407eec loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xf407f04 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf407f14, `sw` at 0xf407f30.
  The `sh` at 0xf407f3c stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf407f40, `sb` at 0xf407f78.
  The `lw` at 0xf407f44 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf407f58 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xf407f5c stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `lw` at 0xf407f6c loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sb` at 0xf407f70 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf407f74 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xf407f80 stores 1 byte to [a0+108] +0xc.
  The `sw` at 0xf407f88 stores 4 bytes to [a0+108] +0x8.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf407fa8, `lw` at 0xf407fc0, `lw` at 0xf407ffc.
  4 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf407fac, `lw` at 0xf408000, `lw` at 0xf40804c.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0xf408110, `sw` at 0xf408158, `sw` at 0xf408164.
  The `lw` at 0xf408148 loads 4 bytes from ?.
  The `jalr` at 0xf407e8c calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf407ebc calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf407ef4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407f20 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407f90 calls _XReply with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x0.
  The `jalr` at 0xf407fb4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407fd0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf408008 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf408024 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf408054 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf408070 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf408090 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xf4080bc calls _XRead with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4080dc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4080f8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf408138 calls matchWild with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `jalr` at 0xf408170 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xf407e98 targets 0xf407eb0, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bne` branch at 0xf407ea8 targets 0xf407ed0, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0.
  The `beq` branch at 0xf407ec8 targets 0xf4081a4 and is always taken.
  The `bnel` branch at 0xf407ed0 targets 0xf407ee4, is taken when t7(=a2) != 0, and falls through when t7(=a2) == 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xf407ed4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf407ed8 targets 0xf4081a4 and is always taken.
  The `beql` branch at 0xf407ee4 targets 0xf407f04, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xf407ee8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf407f10 targets 0xf407f34, is taken when t8(=[a0+112]) >= t1(=[a0+108]+16) (unsigned), and falls through when t8(=[a0+112]) < t1(=[a0+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xf407f14 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf407f98 targets 0xf407fe4, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xf407fa4 targets 0xf407fc4, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf407fa8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf407fc8 targets 0xf407fdc, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf407fdc targets 0xf4081a4 and is always taken.
  The `bne` branch at 0xf407fec targets 0xf408038, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beql` branch at 0xf407ff8 targets 0xf408018, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf407ffc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf40801c targets 0xf408030, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf408030 targets 0xf4081a4 and is always taken.
  The `bne` branch at 0xf408038 targets 0xf408084, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beql` branch at 0xf408044 targets 0xf408064, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf408048 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf408068 targets 0xf40807c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xf40807c targets 0xf4081a4 and is always taken.
  The `beql` branch at 0xf4080cc targets 0xf4080ec, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf4080d0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf4080f0 targets 0xf408108, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw s3,140(sp)` at 0xf4080f4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf40811c targets 0xf4081a4, is taken when t7(?) == 0, and falls through when t7(?) != 0; its branch-likely delay slot `lw v0,72(sp)` at 0xf408120 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf408124 targets 0xf4081a4, is taken when t8(?) == 0, and falls through when t8(?) != 0; its branch-likely delay slot `lw v0,72(sp)` at 0xf408128 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf408140 targets 0xf408168, is taken when v0(=ret(matchWild)) == 0, and falls through when v0(=ret(matchWild)) != 0.
  The `beq` branch at 0xf40818c targets 0xf4081a0, is taken when s1(?) >= t6(?) (unsigned), and falls through when s1(?) < t6(?) (unsigned).
  The `bne` branch at 0xf408198 targets 0xf40812c, is taken when s0(?) != t9(?), and falls through when s0(?) == t9(?).
  The return at 0xf4081b8 has v0 = one of 0x0, ret(malloc).
  The instructions from 0xf407ee0 to 0xf407ee0 are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcNVLoadVideoFormat` in `usr/lib/libXsgivc.so` at 0xf4081c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf4081c0-0xf408484 (708 bytes).
  It occupies 708 bytes.
  The `lw` at 0xf408204 loads 4 bytes from ret(find_display) +0x8.
  The `lw` at 0xf408224 loads 4 bytes from abs 0xf40c004.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf408238, `lw` at 0xf40841c.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf40824c, `lw` at 0xf40826c, `lw` at 0xf4082a0.
  The `lw` at 0xf408254 loads 4 bytes from [a0+1232] +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xf408270, `lw` at 0xf408378.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf408280, `sw` at 0xf4082a4, `sw` at 0xf40838c.
  2 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xf4082b0, `sh` at 0xf4083b4.
  3 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf4082b4, `sb` at 0xf4082ec, `sb` at 0xf4083b8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0xf4082b8, `lw` at 0xf4082f0, `lw` at 0xf4082fc.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xf4082cc, `sw` at 0xf4083d0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x60, including `sw` at 0xf4082d0, `sw` at 0xf4083d4.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xf4082d4, `lw` at 0xf4082e0, `lw` at 0xf408308.
  The `sb` at 0xf4082e4 stores 1 byte to [a0+108] +0x1.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c8, including `lw` at 0xf40831c, `lw` at 0xf4083ec.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4c8, including `sw` at 0xf40832c, `sw` at 0xf408404.
  The `sw` at 0xf408338 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf408340 stores 4 bytes to [a0+108] +0x8.
  The `sb` at 0xf40834c stores 1 byte to [a0+108] +0xc.
  The `sw` at 0xf408358 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xf408360 stores 4 bytes to [a0+108] +0x14.
  The `sw` at 0xf408368 stores 4 bytes to [a0+108] +0x18.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf408424, `lw` at 0xf40843c.
  The `lw` at 0xf408428 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xf4081f0 calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf408220 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf40825c calls (unknown callee) with a0=a0 at entry (arg0), a1=ret(find_display), a2=?, a3=?.
  The `jalr` at 0xf408290 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40836c calls GenerateVFList [0xf402704] with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=?, a3=[a0+108]+2.
  The `jalr` at 0xf408398 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4083e4 calls _XReply with a0=a0 at entry (arg0), a1=sp-120, a2=0x0, a3=0x1.
  The `jalr` at 0xf408410 calls _XDeqAsyncHandler with a0=a0 at entry (arg0), a1=sp-64, a2=?, a3=?.
  The `jalr` at 0xf408430 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40844c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf4081fc targets 0xf408214, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bne` branch at 0xf40820c targets 0xf408234, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0.
  The `beq` branch at 0xf40822c targets 0xf408470 and is always taken.
  The `bnel` branch at 0xf408234 targets 0xf408248, is taken when t7(=a3) != 0, and falls through when t7(=a3) == 0; its branch-likely delay slot `lw v0,1232(s0)` at 0xf408238 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf40823c targets 0xf408470 and is always taken.
  The `beql` branch at 0xf408248 targets 0xf408270, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xf40824c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf40827c targets 0xf4082a8, is taken when t8(=[a0+112]) >= t0(=[a0+108]+28) (unsigned), and falls through when t8(=[a0+112]) < t0(=[a0+108]+28) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xf408280 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf408388 targets 0xf4083ac, is taken when t3(=[a0+112]) >= t4(=[a0+108]+4) (unsigned), and falls through when t3(=[a0+112]) < t4(=[a0+108]+4) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xf40838c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf4083f8 targets 0xf408408, is taken when a1(=sp-64) != t1(=[a0+1224]), and falls through when a1(=sp-64) == t1(=[a0+1224]).
  The `beq` branch at 0xf408400 targets 0xf40841c and is always taken.
  The `beql` branch at 0xf408420 targets 0xf408440, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf408424 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf408444 targets 0xf40845c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw t3,100(sp)` at 0xf408448 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf408460 targets 0xf408470, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0xf408468 targets 0xf408470 and is always taken.
  The return at 0xf40847c has v0 = one of 0x0, 0x1.
  The instructions from 0xf408244 to 0xf408244 are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcNVLoadVideoFormatCombination` in `usr/lib/libXsgivc.so` at 0xf408484 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf408484-0xf408798 (788 bytes).
  It occupies 788 bytes.
  The `lw` at 0xf4084c8 loads 4 bytes from ret(find_display) +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf4084d0, `lw` at 0xf408730.
  The `lw` at 0xf4084e4 loads 4 bytes from abs 0xf40c004.
  9 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf4084fc, `lw` at 0xf40851c, `lw` at 0xf408550.
  The `lw` at 0xf408504 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xf408520, `lw` at 0xf408628, `lw` at 0xf408690.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf408530, `sw` at 0xf408554, `sw` at 0xf4086a0.
  2 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xf408560, `sh` at 0xf4086c8.
  3 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf408564, `sb` at 0xf40859c, `sb` at 0xf4086cc.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0xf408568, `lw` at 0xf4085a0, `lw` at 0xf4085a8.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xf40857c, `sw` at 0xf408670, `sw` at 0xf4086e4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x60, including `sw` at 0xf408580, `sw` at 0xf4086e8.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xf408584, `lw` at 0xf408590, `lw` at 0xf4085b4.
  The `sb` at 0xf408594 stores 1 byte to [a0+108] +0x1.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c8, including `lw` at 0xf4085c8, `lw` at 0xf408700.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4c8, including `sw` at 0xf4085d8, `sw` at 0xf408718.
  The `sw` at 0xf4085e0 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf40860c stores 4 bytes to ?.
  The `lhu` at 0xf408610 loads 2 bytes from ?.
  The `sh` at 0xf408620 stores 2 bytes to ?.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf408738, `lw` at 0xf408750.
  The `lw` at 0xf40873c loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xf4084b4 calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf4084e0 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf40850c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf408540 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4085f0 calls strlen with a0=a2 at entry (arg2), a1=?, a2=0x21, a3=?.
  The `jalr` at 0xf408648 calls memcpy with a0=[a0+108], a1=a2 at entry (arg2), a2=ret(strlen)+1, a3=?.
  The `jalr` at 0xf408680 calls _XSend with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=ret(strlen)+1, a3=?.
  The `jalr` at 0xf4086ac calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4086f8 calls _XReply with a0=a0 at entry (arg0), a1=sp-76, a2=0x0, a3=0x1.
  The `jalr` at 0xf408724 calls _XDeqAsyncHandler with a0=a0 at entry (arg0), a1=sp-16, a2=?, a3=?.
  The `jalr` at 0xf408744 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf408760 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf4084c0 targets 0xf4084d4, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bnel` branch at 0xf4084cc targets 0xf4084f8, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0; its branch-likely delay slot `lw v0,1232(s0)` at 0xf4084d0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf4084ec targets 0xf408784 and is always taken.
  The `beql` branch at 0xf4084f8 targets 0xf408520, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw s1,108(s0)` at 0xf4084fc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf40852c targets 0xf408558, is taken when t7(=[a0+112]) >= t8(=[a0+108]+12) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+12) (unsigned); its branch-likely delay slot `sw s1,100(s0)` at 0xf408530 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xf408608 targets 0xf40868c, is taken when v1(=ret(strlen)+1) <= 0 (signed), and falls through when v1(=ret(strlen)+1) > 0 (signed).
  The `bne` branch at 0xf408634 targets 0xf408674, is taken when t1(=[a0+112]) < t2(=([a0+108] + ret(strlen)+1)) (unsigned), and falls through when t1(=[a0+112]) >= t2(=([a0+108] + ret(strlen)+1)) (unsigned).
  The `beq` branch at 0xf40866c targets 0xf40868c and is always taken.
  The `beql` branch at 0xf40869c targets 0xf4086c0, is taken when t7(=[a0+112]) >= t9(=[a0+108]+4) (unsigned), and falls through when t7(=[a0+112]) < t9(=[a0+108]+4) (unsigned); its branch-likely delay slot `sw s1,100(s0)` at 0xf4086a0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf40870c targets 0xf40871c, is taken when a1(=sp-16) != t5(=[a0+1224]), and falls through when a1(=sp-16) == t5(=[a0+1224]).
  The `beq` branch at 0xf408714 targets 0xf408730 and is always taken.
  The `beql` branch at 0xf408734 targets 0xf408754, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf408738 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf408758 targets 0xf408770, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw t7,116(sp)` at 0xf40875c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf408774 targets 0xf408784, is taken when t7(?) != 0, and falls through when t7(?) == 0.
  The `beq` branch at 0xf40877c targets 0xf408784 and is always taken.
  The return at 0xf408790 has v0 = one of 0x0, 0x1.
  The instructions from 0xf4084f4 to 0xf4084f4 are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcLoadVideoFormatByName` in `usr/lib/libXsgivc.so` at 0xf408798 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf408798-0xf408abc (804 bytes).
  It occupies 804 bytes.
  The `lw` at 0xf4087e0 loads 4 bytes from ret(find_display) +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf4087e8, `lw` at 0xf408a54.
  The `lw` at 0xf4087fc loads 4 bytes from abs 0xf40c004.
  9 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf408814, `lw` at 0xf408834, `lw` at 0xf408868.
  The `lw` at 0xf40881c loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xf408838, `lw` at 0xf40894c, `lw` at 0xf4089b4.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf408848, `sw` at 0xf40886c, `sw` at 0xf4089c4.
  2 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xf408878, `sh` at 0xf4089ec.
  3 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf40887c, `sb` at 0xf4088b4, `sb` at 0xf4089f0.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0xf408880, `lw` at 0xf4088b8, `lw` at 0xf4088c0.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xf408894, `sw` at 0xf408994, `sw` at 0xf408a08.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x60, including `sw` at 0xf408898, `sw` at 0xf408a0c.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xf40889c, `lw` at 0xf4088a8, `lw` at 0xf4088cc.
  The `sb` at 0xf4088ac stores 1 byte to [a0+108] +0x1.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c8, including `lw` at 0xf4088e0, `lw` at 0xf408a24.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4c8, including `sw` at 0xf4088f0, `sw` at 0xf408a3c.
  The `sw` at 0xf4088f8 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf408900 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xf408904 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf408930 stores 4 bytes to ?.
  The `lhu` at 0xf408934 loads 2 bytes from ?.
  The `sh` at 0xf408944 stores 2 bytes to ?.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf408a5c, `lw` at 0xf408a74.
  The `lw` at 0xf408a60 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xf4087cc calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf4087f8 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf408824 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf408858 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf408914 calls strlen with a0=a3 at entry (arg3), a1=?, a2=0x22, a3=?.
  The `jalr` at 0xf40896c calls memcpy with a0=[a0+108], a1=a3 at entry (arg3), a2=ret(strlen)+1, a3=?.
  The `jalr` at 0xf4089a4 calls _XSend with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=ret(strlen)+1, a3=?.
  The `jalr` at 0xf4089d0 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf408a1c calls _XReply with a0=a0 at entry (arg0), a1=sp-76, a2=0x0, a3=0x1.
  The `jalr` at 0xf408a48 calls _XDeqAsyncHandler with a0=a0 at entry (arg0), a1=sp-16, a2=?, a3=?.
  The `jalr` at 0xf408a68 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf408a84 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf4087d8 targets 0xf4087ec, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bnel` branch at 0xf4087e4 targets 0xf408810, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0; its branch-likely delay slot `lw v0,1232(s0)` at 0xf4087e8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf408804 targets 0xf408aa8 and is always taken.
  The `beql` branch at 0xf408810 targets 0xf408838, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw s1,108(s0)` at 0xf408814 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf408844 targets 0xf408870, is taken when t7(=[a0+112]) >= t8(=[a0+108]+20) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+20) (unsigned); its branch-likely delay slot `sw s1,100(s0)` at 0xf408848 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xf40892c targets 0xf4089b0, is taken when v1(=ret(strlen)+1) <= 0 (signed), and falls through when v1(=ret(strlen)+1) > 0 (signed).
  The `bne` branch at 0xf408958 targets 0xf408998, is taken when t2(=[a0+112]) < t3(=([a0+108] + ret(strlen)+1)) (unsigned), and falls through when t2(=[a0+112]) >= t3(=([a0+108] + ret(strlen)+1)) (unsigned).
  The `beq` branch at 0xf408990 targets 0xf4089b0 and is always taken.
  The `beql` branch at 0xf4089c0 targets 0xf4089e4, is taken when t8(=[a0+112]) >= t7(=[a0+108]+4) (unsigned), and falls through when t8(=[a0+112]) < t7(=[a0+108]+4) (unsigned); its branch-likely delay slot `sw s1,100(s0)` at 0xf4089c4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf408a30 targets 0xf408a40, is taken when a1(=sp-16) != t6(=[a0+1224]), and falls through when a1(=sp-16) == t6(=[a0+1224]).
  The `beq` branch at 0xf408a38 targets 0xf408a54 and is always taken.
  The `beql` branch at 0xf408a58 targets 0xf408a78, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf408a5c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf408a7c targets 0xf408a94, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw t8,116(sp)` at 0xf408a80 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf408a98 targets 0xf408aa8, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0xf408aa0 targets 0xf408aa8 and is always taken.
  The return at 0xf408ab4 has v0 = one of 0x0, 0x1.
  The instructions from 0xf40880c to 0xf40880c are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcNVLoadVideoFormatByName` in `usr/lib/libXsgivc.so` at 0xf408abc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf408abc-0xf408de4 (808 bytes).
  It occupies 808 bytes.
  The `lw` at 0xf408b04 loads 4 bytes from ret(find_display) +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf408b0c, `lw` at 0xf408d7c.
  The `lw` at 0xf408b20 loads 4 bytes from abs 0xf40c004.
  9 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf408b38, `lw` at 0xf408b58, `lw` at 0xf408b8c.
  The `lw` at 0xf408b40 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xf408b5c, `lw` at 0xf408c74, `lw` at 0xf408cdc.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf408b6c, `sw` at 0xf408b90, `sw` at 0xf408cec.
  2 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xf408b9c, `sh` at 0xf408d14.
  3 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf408ba0, `sb` at 0xf408bd8, `sb` at 0xf408d18.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0xf408ba4, `lw` at 0xf408bdc, `lw` at 0xf408be4.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xf408bb8, `sw` at 0xf408cbc, `sw` at 0xf408d30.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x60, including `sw` at 0xf408bbc, `sw` at 0xf408d34.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xf408bc0, `lw` at 0xf408bcc, `lw` at 0xf408bf0.
  The `sb` at 0xf408bd0 stores 1 byte to [a0+108] +0x1.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c8, including `lw` at 0xf408c08, `lw` at 0xf408d4c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4c8, including `sw` at 0xf408c18, `sw` at 0xf408d64.
  The `sw` at 0xf408c20 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf408c28 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xf408c2c stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf408c58 stores 4 bytes to ?.
  The `lhu` at 0xf408c5c loads 2 bytes from ?.
  The `sh` at 0xf408c6c stores 2 bytes to ?.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf408d84, `lw` at 0xf408d9c.
  The `lw` at 0xf408d88 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xf408af0 calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf408b1c calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf408b48 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf408b7c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf408c3c calls strlen with a0=a3 at entry (arg3), a1=?, a2=0x22, a3=?.
  The `jalr` at 0xf408c94 calls memcpy with a0=[a0+108], a1=a3 at entry (arg3), a2=ret(strlen)+1, a3=?.
  The `jalr` at 0xf408ccc calls _XSend with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=ret(strlen)+1, a3=?.
  The `jalr` at 0xf408cf8 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf408d44 calls _XReply with a0=a0 at entry (arg0), a1=sp-76, a2=0x0, a3=0x1.
  The `jalr` at 0xf408d70 calls _XDeqAsyncHandler with a0=a0 at entry (arg0), a1=sp-16, a2=?, a3=?.
  The `jalr` at 0xf408d90 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf408dac calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf408afc targets 0xf408b10, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bnel` branch at 0xf408b08 targets 0xf408b34, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0; its branch-likely delay slot `lw v0,1232(s0)` at 0xf408b0c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf408b28 targets 0xf408dd0 and is always taken.
  The `beql` branch at 0xf408b34 targets 0xf408b5c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw s1,108(s0)` at 0xf408b38 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf408b68 targets 0xf408b94, is taken when t7(=[a0+112]) >= t8(=[a0+108]+20) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+20) (unsigned); its branch-likely delay slot `sw s1,100(s0)` at 0xf408b6c runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xf408c54 targets 0xf408cd8, is taken when v1(=ret(strlen)+1) <= 0 (signed), and falls through when v1(=ret(strlen)+1) > 0 (signed).
  The `bne` branch at 0xf408c80 targets 0xf408cc0, is taken when t3(=[a0+112]) < t4(=([a0+108] + ret(strlen)+1)) (unsigned), and falls through when t3(=[a0+112]) >= t4(=([a0+108] + ret(strlen)+1)) (unsigned).
  The `beq` branch at 0xf408cb8 targets 0xf408cd8 and is always taken.
  The `beql` branch at 0xf408ce8 targets 0xf408d0c, is taken when t0(=[a0+112]) >= t8(=[a0+108]+4) (unsigned), and falls through when t0(=[a0+112]) < t8(=[a0+108]+4) (unsigned); its branch-likely delay slot `sw s1,100(s0)` at 0xf408cec runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf408d58 targets 0xf408d68, is taken when a1(=sp-16) != t9(=[a0+1224]), and falls through when a1(=sp-16) == t9(=[a0+1224]).
  The `beq` branch at 0xf408d60 targets 0xf408d7c and is always taken.
  The `beql` branch at 0xf408d80 targets 0xf408da0, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf408d84 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf408da4 targets 0xf408dbc, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw t0,116(sp)` at 0xf408da8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xf408dc0 targets 0xf408dd0, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xf408dc8 targets 0xf408dd0 and is always taken.
  The return at 0xf408ddc has v0 = one of 0x0, 0x1.
  The instructions from 0xf408b30 to 0xf408b30 are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcMultiCursorSetMode` in `usr/lib/libXsgivc.so` at 0xf408de4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/libXsgivc.so`.
  Range: 0xf408de4-0xf408f4c (360 bytes).
  It occupies 360 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf408e20, `lw` at 0xf408ed0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf408e28, `lw` at 0xf408ef4.
  The `lw` at 0xf408e3c loads 4 bytes from abs 0xf40c004.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf408e54, `lw` at 0xf408e6c, `lw` at 0xf408e98.
  The `lw` at 0xf408e58 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xf408e70 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf408e80, `sw` at 0xf408e9c.
  The `sh` at 0xf408ea8 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf408eac, `sb` at 0xf408edc.
  The `lw` at 0xf408eb0 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf408ec4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xf408ec8 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `lw` at 0xf408ed4 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sb` at 0xf408ed8 stores 1 byte to [a0+108] +0x1.
  The `sb` at 0xf408ee4 stores 1 byte to [a0+108] +0x4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf408f00, `lw` at 0xf408f18.
  The `lw` at 0xf408f04 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xf408e0c calls find_display [0xf4019c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf408e38 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c004], a2=?, a3=?.
  The `jalr` at 0xf408e60 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf408e8c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf408eec calls _XFlush with a0=a0 at entry (arg0), a1=0x24, a2=?, a3=?.
  The `jalr` at 0xf408f0c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf408f28 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf408e18 targets 0xf408e2c, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `bnel` branch at 0xf408e24 targets 0xf408e50, is taken when t6(=[ret(find_display)+8]) != 0, and falls through when t6(=[ret(find_display)+8]) == 0; its branch-likely delay slot `lw v0,1232(s0)` at 0xf408e28 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf408e44 targets 0xf408f38 and is always taken.
  The `beql` branch at 0xf408e50 targets 0xf408e70, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xf408e54 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf408e7c targets 0xf408ea0, is taken when t7(=[a0+112]) >= t8(=[a0+108]+8) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+8) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xf408e80 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf408efc targets 0xf408f1c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xf408f00 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xf408f20 targets 0xf408f38, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `addiu v0,zero,1` at 0xf408f24 runs only when taken and is annulled on fall-through.
  The return at 0xf408f44 has v0 = one of 0x0, 0x1.
  The instructions from 0xf408e4c to 0xf408e4c are not reached by any path from the entry, and their branches are not listed.
