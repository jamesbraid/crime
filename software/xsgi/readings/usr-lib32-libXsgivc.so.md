# Readings: `usr/lib32/libXsgivc.so`

One entry per routine, filed here from the reading batches by binary.

- `XSGIvcQueryChannelInfo` in `usr/lib32/libXsgivc.so` at 0xf402b30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf402b30-0xf403180 (1616 bytes).
  It occupies 1616 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf402b74, `lw` at 0xf402be0.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf402b80, `lw` at 0xf402c30, `lw` at 0xf402cdc.
  The `lw` at 0xf402b8c loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf402b98, `lw` at 0xf402bc8, `lw` at 0xf403108.
  The `lw` at 0xf402b9c loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf402bb0 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xf402bb8 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf402bc0, `sb` at 0xf402c0c.
  The `lw` at 0xf402bc4 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf402bd0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xf402bdc stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lw` at 0xf402be8 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sw` at 0xf402bec stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf402bf4 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xf402c00 stores 1 byte to [a0+108] +0x1.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xf402c2c, `sw` at 0xf402d8c.
  4 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf402c3c, `lw` at 0xf402ce8, `lw` at 0xf402d4c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf402c48, `lw` at 0xf402cf4, `lw` at 0xf402d58.
  The `sw` at 0xf402d94 stores 4 bytes to ret(malloc) +0x0.
  The `swc1` at 0xf402db8 stores 4 bytes to ret(malloc) +0x4.
  The `swc1` at 0xf402dd8 stores 4 bytes to ret(malloc) +0x8.
  The `swc1` at 0xf402df8 stores 4 bytes to ret(malloc) +0x10.
  The `swc1` at 0xf402e18 stores 4 bytes to ret(malloc) +0xc.
  The `sw` at 0xf402e20 stores 4 bytes to ret(malloc) +0x114.
  The `sw` at 0xf402e28 stores 4 bytes to ret(malloc) +0x118.
  The `sw` at 0xf402e30 stores 4 bytes to ret(malloc) +0x11c.
  The `sw` at 0xf402e38 stores 4 bytes to ret(malloc) +0x120.
  The `swc1` at 0xf402e5c stores 4 bytes to ret(malloc) +0x124.
  The `swc1` at 0xf402e80 stores 4 bytes to ret(malloc) +0x128.
  The `sw` at 0xf402e88 stores 4 bytes to ret(malloc) +0x12c.
  The `sw` at 0xf402e90 stores 4 bytes to ret(malloc) +0x130.
  The `sw` at 0xf402e98 stores 4 bytes to ret(malloc) +0x134.
  The `sw` at 0xf402ea0 stores 4 bytes to ret(malloc) +0x138.
  The `sw` at 0xf402ea8 stores 4 bytes to ret(malloc) +0x13c.
  The `sw` at 0xf402eb0 stores 4 bytes to ret(malloc) +0x140.
  The `sw` at 0xf402ebc stores 4 bytes to ret(malloc) +0x148.
  The `sw` at 0xf402ed8 stores 4 bytes to ret(malloc) +0x14c.
  The `sw` at 0xf402ee0 stores 4 bytes to ret(malloc) +0x154.
  The `sw` at 0xf402ee8 stores 4 bytes to ret(malloc) +0x158.
  The `sw` at 0xf402ef0 stores 4 bytes to ret(malloc) +0x15c.
  The `sw` at 0xf402ef8 stores 4 bytes to ret(malloc) +0x160.
  The `sw` at 0xf402f00 stores 4 bytes to ret(malloc) +0x164.
  The `sw` at 0xf402f08 stores 4 bytes to ret(malloc) +0x168.
  The `sw` at 0xf402f10 stores 4 bytes to ret(malloc) +0x16c.
  The `sw` at 0xf402f18 stores 4 bytes to ret(malloc) +0x170.
  The `sw` at 0xf402f20 stores 4 bytes to ret(malloc) +0x174.
  The `sw` at 0xf402f28 stores 4 bytes to ret(malloc) +0x178.
  The `sw` at 0xf402f30 stores 4 bytes to ret(malloc) +0x17c.
  The `sw` at 0xf402f38 stores 4 bytes to ret(malloc) +0x180.
  The `sw` at 0xf402f40 stores 4 bytes to ret(malloc) +0x184.
  The `sw` at 0xf402f48 stores 4 bytes to ret(malloc) +0x194.
  The `sw` at 0xf402f50 stores 4 bytes to ret(malloc) +0x188.
  The `sw` at 0xf402f58 stores 4 bytes to ret(malloc) +0x18c.
  2 such `sw` accesses store 4 bytes to ret(malloc) +0x144, including `sw` at 0xf402f98, `sw` at 0xf403174.
  7 such `sw` accesses store 4 bytes to ?, including `sw` at 0xf403008, `sw` at 0xf403024, `sw` at 0xf403044.
  The `bgezall` at 0xf402b64 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf402b90 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf402c08 calls _XReply with a0=a0 at entry (arg0), a1=sp-272, a2=0x17, a3=0x0, a4=[[ret(find_display)+8]+4], a5=0x8, a6=a1 at entry (arg1), a7=a2 at entry (arg2).
  The `jalr` at 0xf402c40 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf402c54 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf402ccc calls malloc with a0=?, a1=?, a2=?, a3=?, a4=-0x8.
  The `jalr` at 0xf402cec calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf402d00 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf402d38 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf402d50 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf402d64 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf402f84 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc)+20, a2=?, a3=-0x4.
  The `bgezall` at 0xf402fc8 calls ReadFieldInfo [0xf405080] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403014 calls _XRead with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40308c calls _XRead with a0=a0 at entry (arg0), a1=sp-144, a2=0x8, a3=?.
  The `jalr` at 0xf4030b8 calls _XRead with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4030fc calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40311c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403130 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403158 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf402b6c targets 0xf403150, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf402b78 targets 0xf403154, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf402b84 targets 0xf402b98, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `bne` branch at 0xf402ba8 targets 0xf4030f8, is taken when v1(=[a0+112]) < a0(=[a0+108]+12) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+12) (unsigned).
  The `beq` branch at 0xf402c10 targets 0xf40310c, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bne` branch at 0xf402c1c targets 0xf402c78, is taken when t1(?) != v0(=-0x1), and falls through when t1(?) == v0(=-0x1).
  The `bne` branch at 0xf402c24 targets 0xf402c78, is taken when t2(?) != v0(=-0x1), and falls through when t2(?) == v0(=-0x1).
  The `beq` branch at 0xf402c34 targets 0xf402c48, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf402c4c targets 0xf402c60, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `bne` branch at 0xf402cd4 targets 0xf402d88, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xf402ce0 targets 0xf402cf4, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf402cf8 targets 0xf402d08, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `blez` branch at 0xf402d28 targets 0xf402d40, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0xf402d44 targets 0xf402d58, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf402d5c targets 0xf402d70, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf402f68 targets 0xf402f8c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xf402f90 targets 0xf403168, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xf402fa0 targets 0xf402fec, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0xf402fdc targets 0xf402fc0, is taken when s1(?) < t8(?) (unsigned), and falls through when s1(?) >= t8(?) (unsigned).
  The `beq` branch at 0xf402ff0 targets 0xf403024, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xf40301c targets 0xf40302c and is always taken.
  The `blez` branch at 0xf403030 targets 0xf403178, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `blez` branch at 0xf40304c targets 0xf402d28, is taken when a4(?) <= 0 (signed), and falls through when a4(?) > 0 (signed).
  The `beq` branch at 0xf403060 targets 0xf403080 and is always taken.
  The `beq` branch at 0xf40307c targets 0xf402d20, is taken when s1(?) >= a6(?) (signed), and falls through when s1(?) < a6(?) (signed).
  The `bne` branch at 0xf4030e4 targets 0xf403070, is taken when (a6(?) & 0x1) != 0, and falls through when (a6(?) & 0x1) == 0.
  The `beq` branch at 0xf4030f0 targets 0xf403074 and is always taken.
  The `beq` branch at 0xf403104 targets 0xf402bac and is always taken.
  The `beq` branch at 0xf403110 targets 0xf403124, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf403128 targets 0xf403138, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf403160 targets 0xf402d70 and is always taken.
  The `beq` branch at 0xf403170 targets 0xf402fec and is always taken.
  The `beq` branch at 0xf403178 targets 0xf402d28 and is always taken.
  The return at 0xf402c70 has v0 = 0x0.
  The return at 0xf402d18 has v0 = 0x0.
  The return at 0xf402d80 has v0 = one of 0x0, 0x1.
  The return at 0xf403148 has v0 = 0x0.
  The instructions from 0xf403068 to 0xf40306c are not reached by any path from the entry, and their branches are not listed.

- `XSGIvcQueryOutputBlanking` in `usr/lib32/libXsgivc.so` at 0xf403180 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf403180-0xf4031bc (60 bytes).
  It occupies 60 bytes.
  The `bgezall` at 0xf4031a4 calls QueryOneControl [0xf408840] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0xb, a4=a3 at entry (arg3).
  The return at 0xf4031b4 has v0 = ret(QueryOneControl).

- `XSGIvcSetOutputPedestal` in `usr/lib32/libXsgivc.so` at 0xf4031c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf4031c0-0xf4031fc (60 bytes).
  It occupies 60 bytes.
  The `bgezall` at 0xf4031e4 calls SetOneControl [0xf408cf0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x6, a4=a3 at entry (arg3).
  The return at 0xf4031f4 has v0 = ret(SetOneControl).

- `XSGIvcSetScreenExternalSyncSource` in `usr/lib32/libXsgivc.so` at 0xf403200 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf403200-0xf403334 (308 bytes).
  It occupies 308 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf403240, `lw` at 0xf4032a8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf40324c, `lw` at 0xf4032c4.
  The `lw` at 0xf403258 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf403264, `lw` at 0xf403294, `lw` at 0xf403318.
  The `lw` at 0xf403268 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf40327c stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xf403284 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf40328c, `sb` at 0xf4032c0.
  The `lw` at 0xf403290 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf40329c stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xf4032a4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lw` at 0xf4032b0 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sw` at 0xf4032b4 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf4032b8 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xf4032bc stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xf4032d0 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xf4032dc loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `bgezall` at 0xf403230 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf40325c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xf4032d4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a1 at entry (arg1), a3=0x1b, a4=[[ret(find_display)+8]+4], a5=[a0+1232], a6=[a0+108]+12, a7=0x3.
  The `jalr` at 0xf4032e8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40330c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0xf403324 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf403238 targets 0xf40331c, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf403244 targets 0xf403320, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf403250 targets 0xf403264, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `bne` branch at 0xf403274 targets 0xf403308, is taken when v1(=[a0+112]) < a0(=[a0+108]+12) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+12) (unsigned).
  The `beq` branch at 0xf4032c8 targets 0xf4032dc, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xf4032e0 targets 0xf4032f4, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf403314 targets 0xf403278 and is always taken.
  The `beq` branch at 0xf40332c targets 0xf4032f4 and is always taken.
  The return at 0xf403300 has v0 = one of ?, ret(?), ret(XMissingExtension).

- `XSGIvcSetPlatformParameter` in `usr/lib32/libXsgivc.so` at 0xf403340 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf403340-0xf403500 (448 bytes).
  It occupies 448 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf403390, `lw` at 0xf403408.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf40339c, `lw` at 0xf40348c.
  The `lw` at 0xf4033a8 loads 4 bytes from [a0+1232] +0x0.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf4033b4, `lw` at 0xf4033f4, `lw` at 0xf403438.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xf4033b8, `lw` at 0xf40343c.
  The `sw` at 0xf4033dc stores 4 bytes to a0 (arg0 at entry) +0x64.
  2 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xf4033e4, `sh` at 0xf403430.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf4033ec, `sb` at 0xf403434.
  The `lw` at 0xf4033f0 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf4033fc stores 4 bytes to a0 (arg0 at entry) +0x60.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xf403404, `sw` at 0xf403474.
  The `lhu` at 0xf40340c loads 2 bytes from [a0+108] +0x2.
  The `lw` at 0xf403410 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sb` at 0xf403414 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf403418 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf40341c stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf403420 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xf403428 stores 4 bytes to [a0+108] +0x10.
  The `lw` at 0xf403498 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xf4034a4 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `bgezall` at 0xf403380 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf4033ac calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403454 calls memcpy with a0=[a0+108], a1=a4 at entry (arg4), a2=a5 at entry (arg5), a3=?, a5=a3 at entry (arg3), a6=a2 at entry (arg2), a7=a1 at entry (arg1).
  The `jalr` at 0xf403484 calls _XSend with a0=a0 at entry (arg0), a1=a4 at entry (arg4), a2=a5 at entry (arg5), a3=?, a5=a3 at entry (arg3), a6=a2 at entry (arg2), a7=a1 at entry (arg1).
  The `jalr` at 0xf40349c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4034b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4034d8 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=a5+3.
  The `jalr` at 0xf4034f0 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf403388 targets 0xf4034e8, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf403394 targets 0xf4034ec, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf4033a0 targets 0xf4033b4, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `bne` branch at 0xf4033c4 targets 0xf4034d4, is taken when v0(=[a0+112]) < v1(=[a0+108]+20) (unsigned), and falls through when v0(=[a0+112]) >= v1(=[a0+108]+20) (unsigned).
  The `bne` branch at 0xf403448 targets 0xf403478, is taken when a1(=[a0+112]) < a2(=(a5 + [a0+108])) (unsigned), and falls through when a1(=[a0+112]) >= a2(=(a5 + [a0+108])) (unsigned).
  The `beq` branch at 0xf403470 targets 0xf40348c and is always taken.
  The `beq` branch at 0xf403490 targets 0xf4034a4, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf4034a8 targets 0xf4034bc, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf4034e0 targets 0xf4033c8 and is always taken.
  The `beq` branch at 0xf4034f8 targets 0xf4034bc and is always taken.
  The return at 0xf4034cc has v0 = one of ?, ret(?), ret(XMissingExtension).

- `XSGIvcNVLoadVideoFormatCombination` in `usr/lib32/libXsgivc.so` at 0xf403500 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf403500-0xf4037ec (748 bytes).
  It occupies 748 bytes.
  3 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf403544, `lw` at 0xf4035b4, `lw` at 0xf4035e0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf403550, `lw` at 0xf403714.
  The `lw` at 0xf40355c loads 4 bytes from [a0+1232] +0x0.
  9 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf403568, `lw` at 0xf4035a0, `lw` at 0xf403640.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xf40356c, `lw` at 0xf403644, `lw` at 0xf40369c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf403584, `sw` at 0xf4036b0.
  2 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xf40358c, `sh` at 0xf40363c.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf403594, `sb` at 0xf4035c4.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0xf40359c, `lw` at 0xf4035c8, `lw` at 0xf4035d0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x60, including `sw` at 0xf4035a8, `sw` at 0xf4036e0.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xf4035b0, `sw` at 0xf403684, `sw` at 0xf4036ec.
  2 such `lw` accesses load 4 bytes from [ret(find_display)+8] +0x4, including `lw` at 0xf4035bc, `lw` at 0xf4035e8.
  The `sb` at 0xf4035c0 stores 1 byte to [a0+108] +0x1.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c8, including `lw` at 0xf4035f8, `lw` at 0xf4036f0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4c8, including `sw` at 0xf403610, `sw` at 0xf403700.
  The `sw` at 0xf40361c stores 4 bytes to [a0+108] +0x4.
  The `lhu` at 0xf403620 loads 2 bytes from [a0+108] +0x2.
  The `sw` at 0xf403630 stores 4 bytes to [a0+108] +0x8.
  The `sh` at 0xf4036b8 stores 2 bytes to ?.
  The `sb` at 0xf4036c0 stores 1 byte to ?.
  The `lw` at 0xf403720 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xf40372c loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `bgezall` at 0xf403534 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf403560 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403618 calls strlen with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=sp-112, a3=sym(_XAsyncErrorHandler), a4=[a0+1224], a5=0x21, a6=[a0+108], a7=[[ret(find_display)+8]+4].
  The `jalr` at 0xf403668 calls memcpy with a0=[a0+108], a1=a2 at entry (arg2), a2=ret(strlen)+1, a3=?, a6=[a0+108].
  The `jalr` at 0xf403690 calls _XSend with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=ret(strlen)+1, a3=?, a6=[a0+108].
  The `jalr` at 0xf4036e8 calls _XReply with a0=a0 at entry (arg0), a1=sp-88, a2=0x0, a3=0x1.
  The `jalr` at 0xf40370c calls _XDeqAsyncHandler with a0=a0 at entry (arg0), a1=sp-128, a2=?, a3=?.
  The `jalr` at 0xf403724 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40373c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403778 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+108].
  The `jalr` at 0xf40378c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4037c8 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf40353c targets 0xf4037bc, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf403548 targets 0xf4037c0, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf403554 targets 0xf403568, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `bne` branch at 0xf403578 targets 0xf403778, is taken when v0(=[a0+112]) < v1(=[a0+108]+12) (unsigned), and falls through when v0(=[a0+112]) >= v1(=[a0+108]+12) (unsigned).
  The `blez` branch at 0xf403634 targets 0xf40379c, is taken when a2(=ret(strlen)+1) <= 0 (signed), and falls through when a2(=ret(strlen)+1) > 0 (signed).
  The `bne` branch at 0xf403654 targets 0xf403688, is taken when ra(=[a0+112]) < at(=(ret(strlen) + [a0+108])+1) (unsigned), and falls through when ra(=[a0+112]) >= at(=(ret(strlen) + [a0+108])+1) (unsigned).
  The `beq` branch at 0xf403680 targets 0xf40369c and is always taken.
  The `bne` branch at 0xf4036a8 targets 0xf40378c, is taken when t0(=[a0+112]) < t1(?) (unsigned), and falls through when t0(=[a0+112]) >= t1(?) (unsigned).
  The `bne` branch at 0xf4036f4 targets 0xf403704, is taken when t9(=[a0+1224]) != s3(=sp-128), and falls through when t9(=[a0+1224]) == s3(=sp-128).
  The `beq` branch at 0xf4036fc targets 0xf403714 and is always taken.
  The `beq` branch at 0xf403718 targets 0xf40372c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf403734 targets 0xf403744, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf403754 targets 0xf4037a8, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xf403784 targets 0xf403580 and is always taken.
  The `beq` branch at 0xf403794 targets 0xf4036b0 and is always taken.
  The `beq` branch at 0xf4037a0 targets 0xf40369c and is always taken.
  The return at 0xf403770 has v0 = 0x0.
  The return at 0xf4037b4 has v0 = 0x1.
  The return at 0xf4037e4 has v0 = 0x0.

- `XSGIvcQueryOutputGain` in `usr/lib32/libXsgivc.so` at 0xf4037f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf4037f0-0xf4038dc (236 bytes).
  It occupies 236 bytes.
  The `swc1` at 0xf403898 stores 4 bytes to a4 (arg4 at entry) +0x0.
  The `bgezall` at 0xf403854 calls QueryOneControl [0xf408840] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?, a4=sp-32.
  The `beq` branch at 0xf403804 targets 0xf403840, is taken when a3 == v0(=0x1), and falls through when a3 != v0(=0x1).
  The `beq` branch at 0xf403810 targets 0xf4038ac, is taken when a3 == v0(=0x2), and falls through when a3 != v0(=0x2).
  The `beq` branch at 0xf403818 targets 0xf4038bc, is taken when a3 == v1(=0x3), and falls through when a3 != v1(=0x3).
  The `beq` branch at 0xf403824 targets 0xf4038cc, is taken when a3 == a5(=0x4), and falls through when a3 != a5(=0x4).
  The `beq` branch at 0xf40382c targets 0xf40389c, is taken when a3 == a6(=0x5), and falls through when a3 != a6(=0x5).
  The `beq` branch at 0xf4038a4 targets 0xf40384c and is always taken.
  The `beq` branch at 0xf4038b4 targets 0xf40384c and is always taken.
  The `beq` branch at 0xf4038c4 targets 0xf40384c and is always taken.
  The `beq` branch at 0xf4038d4 targets 0xf40384c and is always taken.
  The return at 0xf403838 has v0 = 0x2.
  The return at 0xf403894 has v0 = ret(QueryOneControl).

- `XSGIvcLoadVideoFormat` in `usr/lib32/libXsgivc.so` at 0xf4038e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf4038e0-0xf403b64 (644 bytes).
  It occupies 644 bytes.
  3 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf403930, `lw` at 0xf4039a4, `lw` at 0xf4039d4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf403944, `lw` at 0xf403aa8.
  The `lw` at 0xf403950 loads 4 bytes from [a0+1232] +0x0.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf40395c, `lw` at 0xf403988, `lw` at 0xf403a28.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xf403960, `lw` at 0xf403a2c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf403974, `sw` at 0xf403a44.
  2 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xf40397c, `sh` at 0xf403a4c.
  3 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf403980, `sb` at 0xf4039b0, `sb` at 0xf403a54.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0xf403984, `lw` at 0xf4039bc, `lw` at 0xf4039c4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x60, including `sw` at 0xf403990, `sw` at 0xf403a74.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xf40399c, `sw` at 0xf403a80.
  2 such `lw` accesses load 4 bytes from [ret(find_display)+8] +0x4, including `lw` at 0xf4039ac, `lw` at 0xf4039dc.
  The `sb` at 0xf4039b8 stores 1 byte to [a0+108] +0x1.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c8, including `lw` at 0xf4039ec, `lw` at 0xf403a84.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4c8, including `sw` at 0xf403a00, `sw` at 0xf403a94.
  The `sw` at 0xf403a04 stores 4 bytes to [a0+108] +0x10.
  The `sb` at 0xf403a0c stores 1 byte to [a0+108] +0xc.
  The `sw` at 0xf403a18 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf403a24 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xf403ab4 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xf403ac0 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `bgezall` at 0xf403920 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf403954 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0xf403a20 calls GenerateVFList [0xf406ea0] with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=a4 at entry (arg4), a3=[a0+108]+2, a4=a1 at entry (arg1), a5=a2 at entry (arg2), a6=a5 at entry (arg5).
  The `jalr` at 0xf403a7c calls _XReply with a0=a0 at entry (arg0), a1=sp-104, a2=0x0, a3=0x1.
  The `jalr` at 0xf403aa0 calls _XDeqAsyncHandler with a0=a0 at entry (arg0), a1=sp-144, a2=?, a3=?.
  The `jalr` at 0xf403ab8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403acc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403b18 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403b2c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403b54 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf403928 targets 0xf403b44, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf403934 targets 0xf403b48, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf40393c targets 0xf403af4, is taken when s2(=a3) == 0, and falls through when s2(=a3) != 0.
  The `beq` branch at 0xf403948 targets 0xf40395c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `bne` branch at 0xf40396c targets 0xf403b14, is taken when v0(=[a0+112]) < v1(=[a0+108]+20) (unsigned), and falls through when v0(=[a0+112]) >= v1(=[a0+108]+20) (unsigned).
  The `bne` branch at 0xf403a3c targets 0xf403b28, is taken when a7(=[a0+112]) < t1(=[a0+108]+4) (unsigned), and falls through when a7(=[a0+112]) >= t1(=[a0+108]+4) (unsigned).
  The `bne` branch at 0xf403a88 targets 0xf403a98, is taken when t9(=[a0+1224]) != sp(=sp-144), and falls through when t9(=[a0+1224]) == sp(=sp-144).
  The `beq` branch at 0xf403a90 targets 0xf403aa8 and is always taken.
  The `beq` branch at 0xf403aac targets 0xf403ac0, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf403ac4 targets 0xf403ad8, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf403ad8 targets 0xf403b3c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xf403b20 targets 0xf403970 and is always taken.
  The `beq` branch at 0xf403b34 targets 0xf403a44 and is always taken.
  The `beq` branch at 0xf403b3c targets 0xf403ae0 and is always taken.
  The `beq` branch at 0xf403b5c targets 0xf403ae0 and is always taken.
  The return at 0xf403aec has v0 = one of 0x0, 0x1.
  The return at 0xf403b0c has v0 = 0x0.

- `XSGIvcSendMonitorCommand` in `usr/lib32/libXsgivc.so` at 0xf403b70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf403b70-0xf403d28 (440 bytes).
  It occupies 440 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf403bbc, `lw` at 0xf403c34.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf403bc8, `lw` at 0xf403cb8.
  The `lw` at 0xf403bd4 loads 4 bytes from [a0+1232] +0x0.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf403be0, `lw` at 0xf403c20, `lw` at 0xf403c64.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xf403be4, `lw` at 0xf403c68.
  The `sw` at 0xf403c08 stores 4 bytes to a0 (arg0 at entry) +0x64.
  2 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xf403c10, `sh` at 0xf403c58.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf403c18, `sb` at 0xf403c60.
  The `lw` at 0xf403c1c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf403c28 stores 4 bytes to a0 (arg0 at entry) +0x60.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xf403c30, `sw` at 0xf403ca4.
  The `lhu` at 0xf403c38 loads 2 bytes from [a0+108] +0x2.
  The `lw` at 0xf403c3c loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sb` at 0xf403c40 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf403c44 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf403c48 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf403c50 stores 4 bytes to [a0+108] +0xc.
  The `sb` at 0xf403c5c stores 1 byte to [a0+108] +0x10.
  The `lw` at 0xf403cc4 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xf403cd0 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `bgezall` at 0xf403bac calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf403bd8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403c84 calls memcpy with a0=[a0+108], a1=a3 at entry (arg3), a2=a4 at entry (arg4), a3=?, a5=a2 at entry (arg2), a6=a1 at entry (arg1), a7=0x19.
  The `jalr` at 0xf403cb0 calls _XSend with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=a4 at entry (arg4), a3=?, a5=a2 at entry (arg2), a6=a1 at entry (arg1), a7=0x19.
  The `jalr` at 0xf403cc8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403cdc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403d00 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403d18 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf403bb4 targets 0xf403d10, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf403bc0 targets 0xf403d14, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf403bcc targets 0xf403be0, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `bne` branch at 0xf403bf0 targets 0xf403d00, is taken when v0(=[a0+112]) < v1(=[a0+108]+20) (unsigned), and falls through when v0(=[a0+112]) >= v1(=[a0+108]+20) (unsigned).
  The `bne` branch at 0xf403c74 targets 0xf403ca8, is taken when a1(=[a0+112]) < a2(=(a4 + [a0+108])) (unsigned), and falls through when a1(=[a0+112]) >= a2(=(a4 + [a0+108])) (unsigned).
  The `beq` branch at 0xf403ca0 targets 0xf403cb8 and is always taken.
  The `beq` branch at 0xf403cbc targets 0xf403cd0, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf403cd4 targets 0xf403ce8, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf403d08 targets 0xf403bf8 and is always taken.
  The `beq` branch at 0xf403d20 targets 0xf403ce8 and is always taken.
  The return at 0xf403cf8 has v0 = one of ?, ret(?), ret(XMissingExtension).

- `XSGIvcQueryOutputPhaseV` in `usr/lib32/libXsgivc.so` at 0xf403d30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf403d30-0xf403d6c (60 bytes).
  It occupies 60 bytes.
  The `bgezall` at 0xf403d54 calls QueryOneControl [0xf408840] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x9, a4=a3 at entry (arg3).
  The return at 0xf403d64 has v0 = ret(QueryOneControl).

- `XSGIvcQueryOutputPhaseH` in `usr/lib32/libXsgivc.so` at 0xf403d70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf403d70-0xf403dac (60 bytes).
  It occupies 60 bytes.
  The `bgezall` at 0xf403d94 calls QueryOneControl [0xf408840] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x7, a4=a3 at entry (arg3).
  The return at 0xf403da4 has v0 = ret(QueryOneControl).

- `XSGIvcLoadVideoFormatCombination` in `usr/lib32/libXsgivc.so` at 0xf403db0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf403db0-0xf40409c (748 bytes).
  It occupies 748 bytes.
  3 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf403df4, `lw` at 0xf403e60, `lw` at 0xf403e8c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf403e00, `lw` at 0xf403fc0.
  The `lw` at 0xf403e0c loads 4 bytes from [a0+1232] +0x0.
  9 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf403e18, `lw` at 0xf403e4c, `lw` at 0xf403eec.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xf403e1c, `lw` at 0xf403ef0, `lw` at 0xf403f48.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf403e30, `sw` at 0xf403f5c.
  2 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xf403e38, `sh` at 0xf403ee8.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf403e40, `sb` at 0xf403e70.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0xf403e48, `lw` at 0xf403e74, `lw` at 0xf403e7c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x60, including `sw` at 0xf403e54, `sw` at 0xf403f8c.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xf403e5c, `sw` at 0xf403f30, `sw` at 0xf403f98.
  2 such `lw` accesses load 4 bytes from [ret(find_display)+8] +0x4, including `lw` at 0xf403e68, `lw` at 0xf403e94.
  The `sb` at 0xf403e6c stores 1 byte to [a0+108] +0x1.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c8, including `lw` at 0xf403ea4, `lw` at 0xf403f9c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4c8, including `sw` at 0xf403ebc, `sw` at 0xf403fac.
  The `sw` at 0xf403ec8 stores 4 bytes to [a0+108] +0x4.
  The `lhu` at 0xf403ecc loads 2 bytes from [a0+108] +0x2.
  The `sw` at 0xf403edc stores 4 bytes to [a0+108] +0x8.
  The `sh` at 0xf403f64 stores 2 bytes to ?.
  The `sb` at 0xf403f6c stores 1 byte to ?.
  The `lw` at 0xf403fcc loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xf403fd8 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `bgezall` at 0xf403de4 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf403e10 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403ec4 calls strlen with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=sp-112, a3=sym(_XAsyncErrorHandler), a4=[a0+1224], a5=0x6, a6=[a0+108], a7=[[ret(find_display)+8]+4].
  The `jalr` at 0xf403f14 calls memcpy with a0=[a0+108], a1=a2 at entry (arg2), a2=ret(strlen)+1, a3=?, a6=[a0+108].
  The `jalr` at 0xf403f3c calls _XSend with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=ret(strlen)+1, a3=?, a6=[a0+108].
  The `jalr` at 0xf403f94 calls _XReply with a0=a0 at entry (arg0), a1=sp-88, a2=0x0, a3=0x1.
  The `jalr` at 0xf403fb8 calls _XDeqAsyncHandler with a0=a0 at entry (arg0), a1=sp-128, a2=?, a3=?.
  The `jalr` at 0xf403fd0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf403fe8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf404028 calls _XFlush with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a6=[a0+108].
  The `jalr` at 0xf40403c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf404078 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf403dec targets 0xf40406c, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf403df8 targets 0xf404070, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf403e04 targets 0xf403e18, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `bne` branch at 0xf403e28 targets 0xf404024, is taken when v0(=[a0+112]) < v1(=[a0+108]+12) (unsigned), and falls through when v0(=[a0+112]) >= v1(=[a0+108]+12) (unsigned).
  The `blez` branch at 0xf403ee0 targets 0xf40404c, is taken when a2(=ret(strlen)+1) <= 0 (signed), and falls through when a2(=ret(strlen)+1) > 0 (signed).
  The `bne` branch at 0xf403f00 targets 0xf403f34, is taken when ra(=[a0+112]) < at(=(ret(strlen) + [a0+108])+1) (unsigned), and falls through when ra(=[a0+112]) >= at(=(ret(strlen) + [a0+108])+1) (unsigned).
  The `beq` branch at 0xf403f2c targets 0xf403f48 and is always taken.
  The `bne` branch at 0xf403f54 targets 0xf40403c, is taken when t0(=[a0+112]) < t1(?) (unsigned), and falls through when t0(=[a0+112]) >= t1(?) (unsigned).
  The `bne` branch at 0xf403fa0 targets 0xf403fb0, is taken when t9(=[a0+1224]) != s3(=sp-128), and falls through when t9(=[a0+1224]) == s3(=sp-128).
  The `beq` branch at 0xf403fa8 targets 0xf403fc0 and is always taken.
  The `beq` branch at 0xf403fc4 targets 0xf403fd8, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf403fe0 targets 0xf403ff0, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf404000 targets 0xf404058, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xf404034 targets 0xf403e2c and is always taken.
  The `beq` branch at 0xf404044 targets 0xf403f5c and is always taken.
  The `beq` branch at 0xf404050 targets 0xf403f48 and is always taken.
  The return at 0xf40401c has v0 = 0x0.
  The return at 0xf404064 has v0 = 0x1.
  The return at 0xf404094 has v0 = 0x0.

- `XSGIvcFreeVideoFormatInfo` in `usr/lib32/libXsgivc.so` at 0xf4040a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf4040a0-0xf4040dc (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xf4040cc calls free with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xf4040b0 targets 0xf4040c4, is taken when a0 != 0, and falls through when a0 == 0.
  The `beq` branch at 0xf4040d4 targets 0xf4040b8 and is always taken.
  The return at 0xf4040bc has v0 = one of ?, ret(free).

- `XSGIvcListVideoFormats` in `usr/lib32/libXsgivc.so` at 0xf4040e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf4040e0-0xf404448 (872 bytes).
  It occupies 872 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf40413c, `lw` at 0xf4041bc.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf404150, `lw` at 0xf404228, `lw` at 0xf40430c.
  The `lw` at 0xf40415c loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf404168, `lw` at 0xf4041a4, `lw` at 0xf40438c.
  The `lw` at 0xf40416c loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf40418c stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xf404194 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf40419c, `sb` at 0xf4041f4.
  The `lw` at 0xf4041a0 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf4041ac stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xf4041b8 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lw` at 0xf4041c4 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sw` at 0xf4041c8 stores 4 bytes to [a0+108] +0x14.
  The `sw` at 0xf4041cc stores 4 bytes to [a0+108] +0x10.
  The `sb` at 0xf4041d0 stores 1 byte to [a0+108] +0xc.
  The `sw` at 0xf4041d4 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xf4041dc stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf4041e8 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf404224 stores 4 bytes to a7 (arg7 at entry) +0x0.
  5 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf404234, `lw` at 0xf404318, `lw` at 0xf40439c.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf404240, `lw` at 0xf404324, `lw` at 0xf4043a8.
  2 such `lw` accesses load 4 bytes from a7 (arg7 at entry) +0x0, including `lw` at 0xf4042b0, `lw` at 0xf4042f0.
  The `bgezall` at 0xf40412c calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf404160 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+1232].
  The `bgezall` at 0xf4041f0 calls GenerateVFList [0xf406ea0] with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=a4 at entry (arg4), a3=[a0+108]+2, a4=[[ret(find_display)+8]+4], a5=0x2, a6=a1 at entry (arg1), a7=[a0+108]+24.
  The `jalr` at 0xf404208 calls _XReply with a0=a0 at entry (arg0), a1=sp-208, a2=0x0, a3=0x0.
  The `jalr` at 0xf404238 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+1232].
  The `jalr` at 0xf40424c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4042a0 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xf4042e8 calls ReadFormatInfo [0xf405e10] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40431c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+1232].
  The `jalr` at 0xf404330 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf404380 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4043a0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4043b4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4043d4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4043e8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf404404 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `jalr` at 0xf404424 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+1232].
  The `jalr` at 0xf404438 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf404134 targets 0xf4043f8, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf404140 targets 0xf4043fc, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf404148 targets 0xf404358, is taken when s2(=a3) == 0, and falls through when s2(=a3) != 0.
  The `beq` branch at 0xf404154 targets 0xf404168, is taken when a3(=[a0+1232]) == 0, and falls through when a3(=[a0+1232]) != 0.
  The `bne` branch at 0xf404178 targets 0xf40437c, is taken when v1(=[a0+112]) < a0(=[a0+108]+24) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+24) (unsigned).
  The `beq` branch at 0xf404210 targets 0xf404390, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xf404218 targets 0xf4043c4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0xf404220 targets 0xf404274, is taken when t2(?) > 0 (signed), and falls through when t2(?) <= 0 (signed).
  The `beq` branch at 0xf40422c targets 0xf404240, is taken when a3(=[a0+1232]) == 0, and falls through when a3(=[a0+1232]) != 0.
  The `beq` branch at 0xf404244 targets 0xf404254, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf4042a8 targets 0xf404414, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `blez` branch at 0xf4042b8 targets 0xf40430c, is taken when t8(=[a7]) <= 0 (signed), and falls through when t8(=[a7]) > 0 (signed).
  The `bne` branch at 0xf404300 targets 0xf4042e0, is taken when s2(?) < t8(=[a7]) (signed), and falls through when s2(?) >= t8(=[a7]) (signed).
  The `beq` branch at 0xf404310 targets 0xf404324, is taken when a3(=[a0+1232]) == 0, and falls through when a3(=[a0+1232]) != 0.
  The `beq` branch at 0xf404328 targets 0xf40433c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf404388 targets 0xf40417c and is always taken.
  The `beq` branch at 0xf404394 targets 0xf4043a8, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf4043ac targets 0xf4043bc, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf4043bc targets 0xf40433c and is always taken.
  The `beq` branch at 0xf4043c8 targets 0xf4043dc, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf4043e0 targets 0xf4043f0, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf4043f0 targets 0xf40433c and is always taken.
  The `beq` branch at 0xf40440c targets 0xf40433c and is always taken.
  The `beq` branch at 0xf404418 targets 0xf40442c, is taken when a3(=[a0+1232]) == 0, and falls through when a3(=[a0+1232]) != 0.
  The `beq` branch at 0xf404430 targets 0xf404440, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf404440 targets 0xf40433c and is always taken.
  The return at 0xf40426c has v0 = 0x0.
  The return at 0xf404350 has v0 = one of ?, 0x0.
  The return at 0xf404374 has v0 = 0x0.

- `XSGIvcDisableChannel` in `usr/lib32/libXsgivc.so` at 0xf404450 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf404450-0xf404694 (580 bytes).
  It occupies 580 bytes.
  3 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf404490, `lw` at 0xf4044fc, `lw` at 0xf404528.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf40449c, `lw` at 0xf4045e0.
  The `lw` at 0xf4044a8 loads 4 bytes from [a0+1232] +0x0.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf4044b4, `lw` at 0xf4044e8, `lw` at 0xf404560.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xf4044b8, `lw` at 0xf404564.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf4044d0, `sw` at 0xf404578.
  2 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xf4044d8, `sh` at 0xf404580.
  3 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf4044e0, `sb` at 0xf40450c, `sb` at 0xf404588.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0xf4044e4, `lw` at 0xf404510, `lw` at 0xf404518.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x60, including `sw` at 0xf4044f0, `sw` at 0xf4045ac.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xf4044f8, `sw` at 0xf4045b8.
  2 such `lw` accesses load 4 bytes from [ret(find_display)+8] +0x4, including `lw` at 0xf404504, `lw` at 0xf404530.
  The `sb` at 0xf404508 stores 1 byte to [a0+108] +0x1.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c8, including `lw` at 0xf404540, `lw` at 0xf4045bc.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4c8, including `sw` at 0xf404554, `sw` at 0xf4045cc.
  The `sw` at 0xf404558 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf40455c stores 4 bytes to [a0+108] +0x8.
  The `lw` at 0xf4045ec loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xf4045f8 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `bgezall` at 0xf404480 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf4044ac calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4045b4 calls _XReply with a0=a0 at entry (arg0), a1=sp-88, a2=0x0, a3=0x1, a4=[a0+96]+1, a5=0x2b, a6=[a0+108].
  The `jalr` at 0xf4045d8 calls _XDeqAsyncHandler with a0=a0 at entry (arg0), a1=sp-128, a2=?, a3=?, a6=[a0+1224].
  The `jalr` at 0xf4045f0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf404604 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40463c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+108].
  The `jalr` at 0xf40464c calls _XFlush with a0=a0 at entry (arg0), a1=[a0+108]+4, a2=a2 at entry (arg2), a3=a1 at entry (arg1), a4=sp-112, a5=sym(_XAsyncErrorHandler), a6=[a0+108], a7=[a0+1224].
  The `jalr` at 0xf404674 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf404488 targets 0xf404668, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf404494 targets 0xf40466c, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf4044a0 targets 0xf4044b4, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `bne` branch at 0xf4044c4 targets 0xf40463c, is taken when v0(=[a0+112]) < v1(=[a0+108]+12) (unsigned), and falls through when v0(=[a0+112]) >= v1(=[a0+108]+12) (unsigned).
  The `bne` branch at 0xf404570 targets 0xf40464c, is taken when a0(=[a0+112]) < a1(=[a0+108]+4) (unsigned), and falls through when a0(=[a0+112]) >= a1(=[a0+108]+4) (unsigned).
  The `bne` branch at 0xf4045c0 targets 0xf4045d0, is taken when a6(=[a0+1224]) != s1(=sp-128), and falls through when a6(=[a0+1224]) == s1(=sp-128).
  The `beq` branch at 0xf4045c8 targets 0xf4045e0 and is always taken.
  The `beq` branch at 0xf4045e4 targets 0xf4045f8, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf4045fc targets 0xf40460c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf40461c targets 0xf40465c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xf404644 targets 0xf4044cc and is always taken.
  The `beq` branch at 0xf404654 targets 0xf404578 and is always taken.
  The return at 0xf404634 has v0 = 0x0.
  The return at 0xf404660 has v0 = 0x1.
  The return at 0xf40468c has v0 = 0x0.

- `XSGIvcQueryOutputPhaseSCH` in `usr/lib32/libXsgivc.so` at 0xf4046a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf4046a0-0xf4046dc (60 bytes).
  It occupies 60 bytes.
  The `bgezall` at 0xf4046c4 calls QueryOneControl [0xf408840] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x8, a4=a3 at entry (arg3).
  The return at 0xf4046d4 has v0 = ret(QueryOneControl).

- `XSGIvcQueryOutputPedestal` in `usr/lib32/libXsgivc.so` at 0xf4046e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf4046e0-0xf40471c (60 bytes).
  It occupies 60 bytes.
  The `bgezall` at 0xf404704 calls QueryOneControl [0xf408840] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x6, a4=a3 at entry (arg3).
  The return at 0xf404714 has v0 = ret(QueryOneControl).

- `XSGIvcQueryScreenGammaMaps` in `usr/lib32/libXsgivc.so` at 0xf404720 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf404720-0xf4048cc (428 bytes).
  It occupies 428 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf404760, `lw` at 0xf4047c8.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf40476c, `lw` at 0xf404804, `lw` at 0xf40485c.
  The `lw` at 0xf404778 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf404784, `lw` at 0xf4047b4, `lw` at 0xf404858.
  The `lw` at 0xf404788 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf40479c stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xf4047a4 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf4047ac, `sb` at 0xf4047f0.
  The `lw` at 0xf4047b0 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf4047bc stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xf4047c4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lw` at 0xf4047d0 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sw` at 0xf4047d8 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xf4047e4 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf404800 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf404810, `lw` at 0xf404868.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf40481c, `lw` at 0xf404874.
  The `bgezall` at 0xf404750 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf40477c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xf4047ec calls _XReply with a0=a0 at entry (arg0), a1=sp-80, a2=0x0, a3=0x1, a4=[[ret(find_display)+8]+4], a5=0x12, a6=a1 at entry (arg1), a7=[a0+108]+8.
  The `jalr` at 0xf404814 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xf404828 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40484c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40486c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xf404880 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4048ac calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf404758 targets 0xf4048a0, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf404764 targets 0xf4048a4, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf404770 targets 0xf404784, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `bne` branch at 0xf404794 targets 0xf404848, is taken when v1(=[a0+112]) < a0(=[a0+108]+8) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+8) (unsigned).
  The `beq` branch at 0xf4047f4 targets 0xf40485c, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xf404808 targets 0xf40481c, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xf404820 targets 0xf404830, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf404854 targets 0xf404798 and is always taken.
  The `beq` branch at 0xf404860 targets 0xf404874, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xf404878 targets 0xf404888, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The return at 0xf404840 has v0 = ?.
  The return at 0xf404898 has v0 = 0x0.
  The return at 0xf4048c4 has v0 = 0x0.

- `XSGIvcNVLoadVideoFormatByName` in `usr/lib32/libXsgivc.so` at 0xf4048d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf4048d0-0xf404bac (732 bytes).
  It occupies 732 bytes.
  3 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf404914, `lw` at 0xf40498c, `lw` at 0xf4049b8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf404920, `lw` at 0xf404afc.
  The `lw` at 0xf40492c loads 4 bytes from [a0+1232] +0x0.
  9 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf404938, `lw` at 0xf404978, `lw` at 0xf404a28.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xf40493c, `lw` at 0xf404a2c, `lw` at 0xf404a80.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf404960, `sw` at 0xf404a94.
  The `sh` at 0xf404968 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf404970, `sb` at 0xf40499c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0xf404974, `lw` at 0xf4049a0, `lw` at 0xf4049a8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x60, including `sw` at 0xf404980, `sw` at 0xf404ac8.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xf404988, `sw` at 0xf404a6c, `sw` at 0xf404ad4.
  2 such `lw` accesses load 4 bytes from [ret(find_display)+8] +0x4, including `lw` at 0xf404994, `lw` at 0xf4049c0.
  The `sb` at 0xf404998 stores 1 byte to [a0+108] +0x1.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c8, including `lw` at 0xf4049d0, `lw` at 0xf404ad8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4c8, including `sw` at 0xf4049e4, `sw` at 0xf404ae8.
  The `sw` at 0xf4049ec stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xf4049f0 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf4049f8 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf404a10 stores 4 bytes to ?.
  The `lhu` at 0xf404a14 loads 2 bytes from ?.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0xf404a24, `sh` at 0xf404aa4.
  The `sb` at 0xf404a9c stores 1 byte to ?.
  The `lw` at 0xf404b08 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xf404b14 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `bgezall` at 0xf404904 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf404930 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4049f4 calls strlen with a0=a3 at entry (arg3), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?, a4=0x1, a5=sp-128, a6=[a0+108], a7=sym(_XAsyncErrorHandler).
  The `jalr` at 0xf404a4c calls memcpy with a0=[a0+108], a1=a3 at entry (arg3), a2=ret(strlen)+1, a3=?, a6=[a0+108].
  The `jalr` at 0xf404a74 calls _XSend with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=ret(strlen)+1, a3=?, a6=[a0+108].
  The `jalr` at 0xf404ad0 calls _XReply with a0=a0 at entry (arg0), a1=sp-104, a2=0x0, a3=0x1.
  The `jalr` at 0xf404af4 calls _XDeqAsyncHandler with a0=a0 at entry (arg0), a1=sp-144, a2=?, a3=?.
  The `jalr` at 0xf404b0c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf404b20 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf404b60 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+108].
  The `jalr` at 0xf404b70 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf404b9c calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf40490c targets 0xf404b90, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf404918 targets 0xf404b94, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf404924 targets 0xf404938, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `bne` branch at 0xf404948 targets 0xf404b60, is taken when v0(=[a0+112]) < v1(=[a0+108]+20) (unsigned), and falls through when v0(=[a0+112]) >= v1(=[a0+108]+20) (unsigned).
  The `blez` branch at 0xf404a0c targets 0xf404b80, is taken when a2(=ret(strlen)+1) <= 0 (signed), and falls through when a2(=ret(strlen)+1) > 0 (signed).
  The `bne` branch at 0xf404a3c targets 0xf404a70, is taken when a0(=[a0+112]) < a1(=(ret(strlen) + [a0+108])+1) (unsigned), and falls through when a0(=[a0+112]) >= a1(=(ret(strlen) + [a0+108])+1) (unsigned).
  The `beq` branch at 0xf404a68 targets 0xf404a80 and is always taken.
  The `bne` branch at 0xf404a8c targets 0xf404b70, is taken when t1(=[a0+112]) < t2(?) (unsigned), and falls through when t1(=[a0+112]) >= t2(?) (unsigned).
  The `bne` branch at 0xf404adc targets 0xf404aec, is taken when at(=[a0+1224]) != sp(=sp-144), and falls through when at(=[a0+1224]) == sp(=sp-144).
  The `beq` branch at 0xf404ae4 targets 0xf404afc and is always taken.
  The `beq` branch at 0xf404b00 targets 0xf404b14, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf404b18 targets 0xf404b2c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf404b2c targets 0xf404b88, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0xf404b68 targets 0xf404950 and is always taken.
  The `beq` branch at 0xf404b78 targets 0xf404a94 and is always taken.
  The `beq` branch at 0xf404b80 targets 0xf404a80 and is always taken.
  The `beq` branch at 0xf404b88 targets 0xf404b50 and is always taken.
  The `beq` branch at 0xf404ba4 targets 0xf404b4c and is always taken.
  The return at 0xf404b44 has v0 = 0x0.
  The return at 0xf404b58 has v0 = one of 0x0, 0x1.

- `XSGIvcStoreGammaColors16` in `usr/lib32/libXsgivc.so` at 0xf404bb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf404bb0-0xf404d74 (452 bytes).
  It occupies 452 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf404bfc, `lw` at 0xf404c78.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf404c08, `lw` at 0xf404d04.
  The `lw` at 0xf404c14 loads 4 bytes from [a0+1232] +0x0.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf404c20, `lw` at 0xf404c64, `lw` at 0xf404cac.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xf404c24, `lw` at 0xf404cb4.
  The `sw` at 0xf404c4c stores 4 bytes to a0 (arg0 at entry) +0x64.
  2 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xf404c54, `sh` at 0xf404ca4.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf404c5c, `sb` at 0xf404ca8.
  The `lw` at 0xf404c60 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf404c6c stores 4 bytes to a0 (arg0 at entry) +0x60.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xf404c74, `sw` at 0xf404cec.
  The `lhu` at 0xf404c7c loads 2 bytes from [a0+108] +0x2.
  The `lw` at 0xf404c80 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sb` at 0xf404c84 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf404c88 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf404c8c stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf404c94 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xf404c9c stores 4 bytes to [a0+108] +0x10.
  The `lw` at 0xf404d10 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xf404d1c loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `bgezall` at 0xf404bec calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf404c18 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf404ccc calls memcpy with a0=[a0+108], a1=a5 at entry (arg5), a2=(a3 + a3), a3=[a0+108]+20, a4=0x5.
  The `jalr` at 0xf404cfc calls _XSend with a0=a0 at entry (arg0), a1=a5 at entry (arg5), a2=(a3 + a3), a3=[a0+108]+20, a4=0x5.
  The `jalr` at 0xf404d14 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf404d28 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf404d48 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf404d64 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf404bf4 targets 0xf404d5c, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf404c00 targets 0xf404d60, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf404c0c targets 0xf404c20, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `bne` branch at 0xf404c30 targets 0xf404d48, is taken when v0(=[a0+112]) < v1(=[a0+108]+20) (unsigned), and falls through when v0(=[a0+112]) >= v1(=[a0+108]+20) (unsigned).
  The `bne` branch at 0xf404cc0 targets 0xf404cf0, is taken when a1(=[a0+112]) < a2(=([a0+108] + (a3 + a3))) (unsigned), and falls through when a1(=[a0+112]) >= a2(=([a0+108] + (a3 + a3))) (unsigned).
  The `beq` branch at 0xf404ce8 targets 0xf404d04 and is always taken.
  The `beq` branch at 0xf404d08 targets 0xf404d1c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf404d20 targets 0xf404d30, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf404d54 targets 0xf404c38 and is always taken.
  The `beq` branch at 0xf404d6c targets 0xf404d34 and is always taken.
  The return at 0xf404d40 has v0 = one of ?, ret(XMissingExtension).

- `XSGIvcQueryVersion` in `usr/lib32/libXsgivc.so` at 0xf404d80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf404d80-0xf404f38 (440 bytes).
  It occupies 440 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf404dc0, `lw` at 0xf404e24.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf404dcc, `lw` at 0xf404e78, `lw` at 0xf404efc.
  The `lw` at 0xf404dd8 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf404de4, `lw` at 0xf404e10, `lw` at 0xf404ef8.
  The `lw` at 0xf404de8 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf404dfc stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xf404e04 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf404e08, `sb` at 0xf404e54.
  The `lw` at 0xf404e0c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf404e18 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xf404e20 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lw` at 0xf404e2c loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sh` at 0xf404e34 stores 2 bytes to [a0+108] +0x6.
  The `sh` at 0xf404e3c stores 2 bytes to [a0+108] +0x4.
  The `sb` at 0xf404e48 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf404e6c stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0xf404e74 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf404e84, `lw` at 0xf404f08.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf404e90, `lw` at 0xf404f14.
  The `lw` at 0xf404ea8 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `bgezall` at 0xf404db0 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf404ddc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf404e50 calls _XReply with a0=a0 at entry (arg0), a1=sp-80, a2=0x0, a3=0x1, a4=[[ret(find_display)+8]+4], a5=0x3, a6=[a0+108]+8, a7=0x2.
  The `jalr` at 0xf404e88 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf404e9c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf404eec calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf404f0c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf404f20 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf404db8 targets 0xf404ed0, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf404dc4 targets 0xf404ed4, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf404dd0 targets 0xf404de4, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `bne` branch at 0xf404df4 targets 0xf404eec, is taken when v1(=[a0+112]) < a0(=[a0+108]+8) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+8) (unsigned).
  The `beq` branch at 0xf404e58 targets 0xf404efc, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xf404e7c targets 0xf404e90, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf404e94 targets 0xf404ea8, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf404eb0 targets 0xf404f30, is taken when t8(=[a1]) == t9(=0x1), and falls through when t8(=[a1]) != t9(=0x1).
  The `beq` branch at 0xf404ef4 targets 0xf404dfc and is always taken.
  The `beq` branch at 0xf404f00 targets 0xf404f14, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf404f18 targets 0xf404f28, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf404f28 targets 0xf404ebc and is always taken.
  The `beq` branch at 0xf404f30 targets 0xf404ec0 and is always taken.
  The return at 0xf404ec8 has v0 = one of 0x0, 0x1.
  The return at 0xf404ee4 has v0 = 0x0.

- `XSGIvcInitMonitorBaseProtocol` in `usr/lib32/libXsgivc.so` at 0xf404f40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf404f40-0xf405074 (308 bytes).
  It occupies 308 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf404f80, `lw` at 0xf404fec.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf404f8c, `lw` at 0xf405008.
  The `lw` at 0xf404f98 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf404fa4, `lw` at 0xf404fd8, `lw` at 0xf405058.
  The `lw` at 0xf404fa8 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf404fc0 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xf404fc8 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf404fd0, `sb` at 0xf405004.
  The `lw` at 0xf404fd4 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf404fe0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xf404fe8 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lw` at 0xf404ff4 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sw` at 0xf404ff8 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf404ffc stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xf405000 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xf405014 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xf405020 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `bgezall` at 0xf404f70 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf404f9c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xf405018 calls (unknown callee) with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a1 at entry (arg1), a3=0x23, a4=[[ret(find_display)+8]+4], a5=[a0+1232], a6=[a0+108]+12, a7=0x3.
  The `jalr` at 0xf40502c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40504c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405064 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf404f78 targets 0xf40505c, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf404f84 targets 0xf405060, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf404f90 targets 0xf404fa4, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `bne` branch at 0xf404fb4 targets 0xf40504c, is taken when v1(=[a0+112]) < a0(=[a0+108]+12) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+12) (unsigned).
  The `beq` branch at 0xf40500c targets 0xf405020, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xf405024 targets 0xf405038, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf405054 targets 0xf404fbc and is always taken.
  The `beq` branch at 0xf40506c targets 0xf405038 and is always taken.
  The return at 0xf405044 has v0 = one of ?, ret(?), ret(XMissingExtension).

- `ReadFieldInfo` in `usr/lib32/libXsgivc.so` at 0xf405080 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf405080-0xf4050f8 (120 bytes).
  It occupies 120 bytes.
  The `sw` at 0xf4050a8 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0xf4050b0 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `sw` at 0xf4050b8 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `sw` at 0xf4050c0 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `sw` at 0xf4050c8 stores 4 bytes to a1 (arg1 at entry) +0x10.
  The `sw` at 0xf4050d0 stores 4 bytes to a1 (arg1 at entry) +0x14.
  The `sw` at 0xf4050d8 stores 4 bytes to a1 (arg1 at entry) +0x18.
  The `sw` at 0xf4050e0 stores 4 bytes to a1 (arg1 at entry) +0x1c.
  The `sw` at 0xf4050e8 stores 4 bytes to a1 (arg1 at entry) +0x20.
  The `jalr` at 0xf405098 calls _XRead with a0=a0 at entry (arg0), a1=sp-64, a2=0x24, a3=a3 at entry (arg3).
  The return at 0xf4050f0 has v0 = ?.

- `XSGIvcLoadVideoFormatByName` in `usr/lib32/libXsgivc.so` at 0xf405100 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf405100-0xf4053fc (764 bytes).
  It occupies 764 bytes.
  3 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf405148, `lw` at 0xf4051bc, `lw` at 0xf4051e8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf405154, `lw` at 0xf405324.
  The `lw` at 0xf405160 loads 4 bytes from [a0+1232] +0x0.
  9 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf40516c, `lw` at 0xf4051a8, `lw` at 0xf405250.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xf405170, `lw` at 0xf405254, `lw` at 0xf4052ac.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf405190, `sw` at 0xf4052c0.
  2 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xf405198, `sh` at 0xf40524c.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf4051a0, `sb` at 0xf4051cc.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0xf4051a4, `lw` at 0xf4051d0, `lw` at 0xf4051d8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x60, including `sw` at 0xf4051b0, `sw` at 0xf4052f0.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xf4051b8, `sw` at 0xf405294, `sw` at 0xf4052fc.
  2 such `lw` accesses load 4 bytes from [ret(find_display)+8] +0x4, including `lw` at 0xf4051c4, `lw` at 0xf4051f0.
  The `sb` at 0xf4051c8 stores 1 byte to [a0+108] +0x1.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c8, including `lw` at 0xf405200, `lw` at 0xf405300.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4c8, including `sw` at 0xf405214, `sw` at 0xf405310.
  The `sw` at 0xf405218 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xf405220 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf40522c stores 4 bytes to [a0+108] +0x4.
  The `lhu` at 0xf405230 loads 2 bytes from [a0+108] +0x2.
  The `sw` at 0xf405240 stores 4 bytes to [a0+108] +0x10.
  The `sh` at 0xf4052c8 stores 2 bytes to ?.
  The `sb` at 0xf4052d0 stores 1 byte to ?.
  The `lw` at 0xf405330 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xf40533c loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `bgezall` at 0xf405138 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf405164 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405228 calls strlen with a0=a3 at entry (arg3), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=sp-128, a4=sym(_XAsyncErrorHandler), a5=[a0+1224], a6=[a0+108], a7=0x22.
  The `jalr` at 0xf405278 calls memcpy with a0=[a0+108], a1=a3 at entry (arg3), a2=ret(strlen)+1, a3=?, a6=[a0+108].
  The `jalr` at 0xf4052a0 calls _XSend with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=ret(strlen)+1, a3=?, a6=[a0+108].
  The `jalr` at 0xf4052f8 calls _XReply with a0=a0 at entry (arg0), a1=sp-104, a2=0x0, a3=0x1.
  The `jalr` at 0xf40531c calls _XDeqAsyncHandler with a0=a0 at entry (arg0), a1=sp-144, a2=?, a3=?.
  The `jalr` at 0xf405334 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40534c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405388 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+108].
  The `jalr` at 0xf40539c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4053d8 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf405140 targets 0xf4053cc, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf40514c targets 0xf4053d0, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf405158 targets 0xf40516c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `bne` branch at 0xf40517c targets 0xf405388, is taken when v0(=[a0+112]) < v1(=[a0+108]+20) (unsigned), and falls through when v0(=[a0+112]) >= v1(=[a0+108]+20) (unsigned).
  The `blez` branch at 0xf405244 targets 0xf4053ac, is taken when a2(=ret(strlen)+1) <= 0 (signed), and falls through when a2(=ret(strlen)+1) > 0 (signed).
  The `bne` branch at 0xf405264 targets 0xf405298, is taken when at(=[a0+112]) < v1(=(ret(strlen) + [a0+108])+1) (unsigned), and falls through when at(=[a0+112]) >= v1(=(ret(strlen) + [a0+108])+1) (unsigned).
  The `beq` branch at 0xf405290 targets 0xf4052ac and is always taken.
  The `bne` branch at 0xf4052b8 targets 0xf40539c, is taken when t0(=[a0+112]) < t1(?) (unsigned), and falls through when t0(=[a0+112]) >= t1(?) (unsigned).
  The `bne` branch at 0xf405304 targets 0xf405314, is taken when t9(=[a0+1224]) != s3(=sp-144), and falls through when t9(=[a0+1224]) == s3(=sp-144).
  The `beq` branch at 0xf40530c targets 0xf405324 and is always taken.
  The `beq` branch at 0xf405328 targets 0xf40533c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf405344 targets 0xf405354, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf405364 targets 0xf4053b8, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xf405394 targets 0xf405184 and is always taken.
  The `beq` branch at 0xf4053a4 targets 0xf4052c0 and is always taken.
  The `beq` branch at 0xf4053b0 targets 0xf4052ac and is always taken.
  The return at 0xf405380 has v0 = 0x0.
  The return at 0xf4053c4 has v0 = 0x1.
  The return at 0xf4053f4 has v0 = 0x0.

- `XSGIvcNVListVideoFormats` in `usr/lib32/libXsgivc.so` at 0xf405400 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf405400-0xf405760 (864 bytes).
  It occupies 864 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf405458, `lw` at 0xf4054e0.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf40546c, `lw` at 0xf405554, `lw` at 0xf405630.
  The `lw` at 0xf405478 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf405484, `lw` at 0xf4054c8, `lw` at 0xf4056a8.
  The `lw` at 0xf405488 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf4054b0 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xf4054b8 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf4054c0, `sb` at 0xf40551c.
  The `lw` at 0xf4054c4 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf4054d0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xf4054dc stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lw` at 0xf4054e8 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sw` at 0xf4054ec stores 4 bytes to [a0+108] +0x14.
  The `sb` at 0xf4054f0 stores 1 byte to [a0+108] +0xd.
  The `sb` at 0xf4054f4 stores 1 byte to [a0+108] +0xc.
  The `sw` at 0xf4054f8 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xf4054fc stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf405504 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf405510 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xf405550 stores 4 bytes to ?.
  5 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf405560, `lw` at 0xf40563c, `lw` at 0xf4056b8.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf40556c, `lw` at 0xf405648, `lw` at 0xf4056c4.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xf4055d8, `lw` at 0xf405614.
  The `bgezall` at 0xf405448 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf40547c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+1232].
  The `bgezall` at 0xf405518 calls GenerateVFList [0xf406ea0] with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=a4 at entry (arg4), a3=[a0+108]+2, a4=[[ret(find_display)+8]+4], a5=0x1e, a6=a1 at entry (arg1), a7=[a0+108]+24.
  The `jalr` at 0xf405530 calls _XReply with a0=a0 at entry (arg0), a1=sp-208, a2=0x0, a3=0x0.
  The `jalr` at 0xf405564 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+1232].
  The `jalr` at 0xf405578 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4055c8 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xf405608 calls ReadFormatInfo [0xf405e10] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405640 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+1232].
  The `jalr` at 0xf405654 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40569c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4056bc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4056d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4056f0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405704 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40571c calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `jalr` at 0xf40573c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+1232].
  The `jalr` at 0xf405750 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf405450 targets 0xf405714, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf40545c targets 0xf405718, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf405464 targets 0xf40567c, is taken when s2(=a3) == 0, and falls through when s2(=a3) != 0.
  The `beq` branch at 0xf405470 targets 0xf405484, is taken when a3(=[a0+1232]) == 0, and falls through when a3(=[a0+1232]) != 0.
  The `bne` branch at 0xf405494 targets 0xf40569c, is taken when v1(=[a0+112]) < a0(=[a0+108]+24) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+24) (unsigned).
  The `beq` branch at 0xf405538 targets 0xf4056ac, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xf405540 targets 0xf4056e0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0xf40554c targets 0xf40559c, is taken when t2(?) > 0 (signed), and falls through when t2(?) <= 0 (signed).
  The `beq` branch at 0xf405558 targets 0xf40556c, is taken when a3(=[a0+1232]) == 0, and falls through when a3(=[a0+1232]) != 0.
  The `beq` branch at 0xf405570 targets 0xf405580, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf4055d0 targets 0xf40572c, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `blez` branch at 0xf4055e0 targets 0xf405630, is taken when t8(?) <= 0 (signed), and falls through when t8(?) > 0 (signed).
  The `bne` branch at 0xf405624 targets 0xf405600, is taken when s2(?) < t8(?) (signed), and falls through when s2(?) >= t8(?) (signed).
  The `beq` branch at 0xf405634 targets 0xf405648, is taken when a3(=[a0+1232]) == 0, and falls through when a3(=[a0+1232]) != 0.
  The `beq` branch at 0xf40564c targets 0xf405660, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf4056a4 targets 0xf40549c and is always taken.
  The `beq` branch at 0xf4056b0 targets 0xf4056c4, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf4056c8 targets 0xf4056d8, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf4056d8 targets 0xf405660 and is always taken.
  The `beq` branch at 0xf4056e4 targets 0xf4056f8, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf4056fc targets 0xf40570c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf40570c targets 0xf405660 and is always taken.
  The `beq` branch at 0xf405724 targets 0xf405660 and is always taken.
  The `beq` branch at 0xf405730 targets 0xf405744, is taken when a3(=[a0+1232]) == 0, and falls through when a3(=[a0+1232]) != 0.
  The `beq` branch at 0xf405748 targets 0xf405758, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf405758 targets 0xf405660 and is always taken.
  The return at 0xf405594 has v0 = 0x0.
  The return at 0xf405674 has v0 = one of ?, 0x0.
  The return at 0xf405694 has v0 = 0x0.

- `XSGIvcSetChannelGammaMap` in `usr/lib32/libXsgivc.so` at 0xf405760 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf405760-0xf40579c (60 bytes).
  It occupies 60 bytes.
  The `bgezall` at 0xf405784 calls SetOneControl [0xf408cf0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0xa, a4=a3 at entry (arg3).
  The return at 0xf405794 has v0 = ret(SetOneControl).

- `XSGIvcQueryOutputSync` in `usr/lib32/libXsgivc.so` at 0xf4057a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf4057a0-0xf405960 (448 bytes).
  It occupies 448 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf4057e8, `lw` at 0xf40585c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf4057f4, `lw` at 0xf4058a0, `lw` at 0xf405900.
  The `lw` at 0xf405800 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf40580c, `lw` at 0xf405844, `lw` at 0xf4058fc.
  The `lw` at 0xf405810 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf405824 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xf40582c stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf40583c, `sb` at 0xf40588c.
  The `lw` at 0xf405840 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf40584c stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xf405858 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lw` at 0xf405864 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sw` at 0xf405868 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xf40586c stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf405874 stores 4 bytes to [a0+108] +0x8.
  The `sb` at 0xf405880 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf40589c stores 4 bytes to a4 (arg4 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf4058ac, `lw` at 0xf40590c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf4058b8, `lw` at 0xf405918.
  The `bgezall` at 0xf4057d8 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf405804 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=[a0+1232].
  The `jalr` at 0xf405888 calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x1, a4=[[ret(find_display)+8]+4], a5=0xd, a6=a2 at entry (arg2), a7=a1 at entry (arg1).
  The `jalr` at 0xf4058b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=[a0+1232].
  The `jalr` at 0xf4058c4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4058f0 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405910 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=[a0+1232].
  The `jalr` at 0xf405924 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405948 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf4057e0 targets 0xf40593c, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf4057ec targets 0xf405940, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf4057f8 targets 0xf40580c, is taken when a7(=[a0+1232]) == 0, and falls through when a7(=[a0+1232]) != 0.
  The `bne` branch at 0xf40581c targets 0xf4058f0, is taken when v1(=[a0+112]) < a0(=[a0+108]+16) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+16) (unsigned).
  The `beq` branch at 0xf405890 targets 0xf405900, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xf4058a4 targets 0xf4058b8, is taken when a7(=[a0+1232]) == 0, and falls through when a7(=[a0+1232]) != 0.
  The `beq` branch at 0xf4058bc targets 0xf4058cc, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf4058f8 targets 0xf405824 and is always taken.
  The `beq` branch at 0xf405904 targets 0xf405918, is taken when a7(=[a0+1232]) == 0, and falls through when a7(=[a0+1232]) != 0.
  The `beq` branch at 0xf40591c targets 0xf40592c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf405934 targets 0xf4058e4 and is always taken.
  The `beq` branch at 0xf405958 targets 0xf4058e4 and is always taken.
  The return at 0xf4058dc has v0 = ?.
  The return at 0xf4058e8 has v0 = 0x0.

- `XSGIvcQueryGammaColors` in `usr/lib32/libXsgivc.so` at 0xf405960 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf405960-0xf405c1c (700 bytes).
  It occupies 700 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf4059b0, `lw` at 0xf405a2c.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf4059cc, `lw` at 0xf405a80, `lw` at 0xf405b08.
  The `lw` at 0xf4059d8 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf4059e4, `lw` at 0xf405a14, `lw` at 0xf405b4c.
  The `lw` at 0xf4059e8 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf4059fc stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xf405a04 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf405a0c, `sb` at 0xf405a5c.
  The `lw` at 0xf405a10 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf405a1c stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xf405a28 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lw` at 0xf405a34 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sw` at 0xf405a38 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xf405a3c stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf405a44 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xf405a50 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf405a7c stores 4 bytes to a4 (arg4 at entry) +0x0.
  5 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf405a8c, `lw` at 0xf405b14, `lw` at 0xf405b5c.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf405a98, `lw` at 0xf405b20, `lw` at 0xf405b68.
  The `sw` at 0xf405b04 stores 4 bytes to a5 (arg5 at entry) +0x0.
  The `bgezall` at 0xf4059a0 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf4059dc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405a58 calls _XReply with a0=a0 at entry (arg0), a1=sp-112, a2=0x0, a3=0x0, a4=[[ret(find_display)+8]+4], a5=0x16, a6=a1 at entry (arg1), a7=a2 at entry (arg2).
  The `jalr` at 0xf405a90 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405aa4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405af8 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xf405b18 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405b2c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405b40 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405b60 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405b74 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405b94 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405ba8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405bc4 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `jalr` at 0xf405be0 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xf405bf8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405c0c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf4059a8 targets 0xf405bb8, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf4059b4 targets 0xf405bbc, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `blez` branch at 0xf4059bc targets 0xf405ac8, is taken when s1(=a3) <= 0 (signed), and falls through when s1(=a3) > 0 (signed).
  The `beq` branch at 0xf4059c4 targets 0xf405ac8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xf4059d0 targets 0xf4059e4, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `bne` branch at 0xf4059f4 targets 0xf405b3c, is taken when v1(=[a0+112]) < a0(=[a0+108]+16) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+16) (unsigned).
  The `beq` branch at 0xf405a60 targets 0xf405b50, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xf405a6c targets 0xf405b84, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0xf405a78 targets 0xf405ae8, is taken when t2(?) > 0 (signed), and falls through when t2(?) <= 0 (signed).
  The `beq` branch at 0xf405a84 targets 0xf405a98, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf405a9c targets 0xf405ab0, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `bne` branch at 0xf405b00 targets 0xf405bd4, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xf405b0c targets 0xf405b20, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf405b24 targets 0xf405b34, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf405b34 targets 0xf405ad0 and is always taken.
  The `beq` branch at 0xf405b48 targets 0xf4059f8 and is always taken.
  The `beq` branch at 0xf405b54 targets 0xf405b68, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf405b6c targets 0xf405b7c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf405b7c targets 0xf405ad0 and is always taken.
  The `beq` branch at 0xf405b88 targets 0xf405b9c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf405ba0 targets 0xf405bb0, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf405bb0 targets 0xf405ad0 and is always taken.
  The `beq` branch at 0xf405bcc targets 0xf405ad0 and is always taken.
  The `beq` branch at 0xf405bec targets 0xf405c00, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf405c04 targets 0xf405c14, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf405c14 targets 0xf405ad0 and is always taken.
  The return at 0xf405ac0 has v0 = 0x0.
  The return at 0xf405ae0 has v0 = one of 0x0, 0x1.

- `XSGIvcQueryGammaMap` in `usr/lib32/libXsgivc.so` at 0xf405c20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf405c20-0xf405df4 (468 bytes).
  It occupies 468 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf405c6c, `lw` at 0xf405cdc.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf405c78, `lw` at 0xf405d34, `lw` at 0xf405d94.
  The `lw` at 0xf405c84 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf405c90, `lw` at 0xf405cc4, `lw` at 0xf405d90.
  The `lw` at 0xf405c94 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf405cac stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xf405cb4 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf405cbc, `sb` at 0xf405d08.
  The `lw` at 0xf405cc0 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf405ccc stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xf405cd8 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lw` at 0xf405ce4 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sw` at 0xf405ce8 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf405cf0 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xf405cfc stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf405d20 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `sw` at 0xf405d28 stores 4 bytes to a4 (arg4 at entry) +0x0.
  The `sw` at 0xf405d30 stores 4 bytes to a5 (arg5 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf405d40, `lw` at 0xf405da0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf405d4c, `lw` at 0xf405dac.
  The `bgezall` at 0xf405c5c calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf405c88 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405d04 calls _XReply with a0=a0 at entry (arg0), a1=sp-112, a2=0x0, a3=0x1, a4=[[ret(find_display)+8]+4], a5=0x13, a6=a1 at entry (arg1), a7=a2 at entry (arg2).
  The `jalr` at 0xf405d44 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405d58 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405d84 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405da4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405db8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf405ddc calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf405c64 targets 0xf405dd0, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf405c70 targets 0xf405dd4, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf405c7c targets 0xf405c90, is taken when t0(=[a0+1232]) == 0, and falls through when t0(=[a0+1232]) != 0.
  The `bne` branch at 0xf405ca0 targets 0xf405d84, is taken when v1(=[a0+112]) < a0(=[a0+108]+12) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+12) (unsigned).
  The `beq` branch at 0xf405d0c targets 0xf405d94, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xf405d38 targets 0xf405d4c, is taken when t0(=[a0+1232]) == 0, and falls through when t0(=[a0+1232]) != 0.
  The `beq` branch at 0xf405d50 targets 0xf405d60, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf405d8c targets 0xf405ca8 and is always taken.
  The `beq` branch at 0xf405d98 targets 0xf405dac, is taken when t0(=[a0+1232]) == 0, and falls through when t0(=[a0+1232]) != 0.
  The `beq` branch at 0xf405db0 targets 0xf405dc0, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf405dc8 targets 0xf405d78 and is always taken.
  The `beq` branch at 0xf405dec targets 0xf405d78 and is always taken.
  The return at 0xf405d70 has v0 = ?.
  The return at 0xf405d7c has v0 = 0x0.

- `error_string` in `usr/lib32/libXsgivc.so` at 0xf405e00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf405e00-0xf405e08 (8 bytes).
  It occupies 8 bytes.
  The return at 0xf405e00 has v0 = 0x0.

- `ReadFormatInfo` in `usr/lib32/libXsgivc.so` at 0xf405e10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf405e10-0xf405f80 (368 bytes).
  It occupies 368 bytes.
  The `sw` at 0xf405e44 stores 4 bytes to a1 (arg1 at entry) +0x104.
  The `sw` at 0xf405e4c stores 4 bytes to a1 (arg1 at entry) +0x100.
  The `sw` at 0xf405e54 stores 4 bytes to a1 (arg1 at entry) +0x10c.
  The `sw` at 0xf405e5c stores 4 bytes to a1 (arg1 at entry) +0x108.
  The `swc1` at 0xf405e80 stores 4 bytes to a1 (arg1 at entry) +0x110.
  The `swc1` at 0xf405ea4 stores 4 bytes to a1 (arg1 at entry) +0x114.
  The `sw` at 0xf405eac stores 4 bytes to a1 (arg1 at entry) +0x118.
  The `sw` at 0xf405eb4 stores 4 bytes to a1 (arg1 at entry) +0x11c.
  The `sw` at 0xf405ebc stores 4 bytes to a1 (arg1 at entry) +0x120.
  The `sw` at 0xf405ec4 stores 4 bytes to a1 (arg1 at entry) +0x124.
  The `sw` at 0xf405ecc stores 4 bytes to a1 (arg1 at entry) +0x128.
  The `sw` at 0xf405ed4 stores 4 bytes to a1 (arg1 at entry) +0x134.
  The `sw` at 0xf405ee0 stores 4 bytes to a1 (arg1 at entry) +0x12c.
  The `sw` at 0xf405f50 stores 4 bytes to a1 (arg1 at entry) +0x130.
  The `jalr` at 0xf405e38 calls _XRead with a0=a0 at entry (arg0), a1=sp-112, a2=0x30, a3=a3 at entry (arg3).
  The `jalr` at 0xf405ee8 calls _XReadPad with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `bgezall` at 0xf405f28 calls ReadFieldInfo [0xf405080] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf405ef4 targets 0xf405f50, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0xf405f3c targets 0xf405f20, is taken when s1(?) < t8(?) (unsigned), and falls through when s1(?) >= t8(?) (unsigned).
  The return at 0xf405f78 has v0 = ?.

- `close_display` in `usr/lib32/libXsgivc.so` at 0xf405f80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf405f80-0xf405fb8 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0xf405fa0 calls XextRemoveDisplay with a0=[0xf40c138], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xf405fb0 has v0 = ret(XextRemoveDisplay).

- `XSGIvcListVideoFormatsInCombination` in `usr/lib32/libXsgivc.so` at 0xf405fd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf405fd0-0xf406318 (840 bytes).
  It occupies 840 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf40601c, `lw` at 0xf40608c.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf406028, `lw` at 0xf40610c, `lw` at 0xf4061ec.
  The `lw` at 0xf406034 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf406040, `lw` at 0xf406078, `lw` at 0xf406244.
  The `lw` at 0xf406044 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf406060 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xf406068 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf406070, `sb` at 0xf4060a8.
  The `lw` at 0xf406074 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf406080 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xf406088 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lw` at 0xf406094 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sw` at 0xf406098 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xf40609c stores 1 byte to [a0+108] +0x1.
  The `lhu` at 0xf4060c0 loads 2 bytes from ?.
  The `sw` at 0xf4060cc stores 4 bytes to ?.
  The `sh` at 0xf4060d8 stores 2 bytes to ?.
  The `sw` at 0xf406108 stores 4 bytes to a3 (arg3 at entry) +0x0.
  5 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf406118, `lw` at 0xf4061f8, `lw` at 0xf406254.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf406124, `lw` at 0xf406204, `lw` at 0xf406260.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lw` at 0xf406194, `lw` at 0xf4061d0.
  The `bgezall` at 0xf40600c calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf406038 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xf4060a4 calls strlen with a0=a2 at entry (arg2), a1=[[ret(find_display)+8]+4], a2=0x4, a3=a1 at entry (arg1), a4=[a0+108]+12, a5=0x3.
  The `jalr` at 0xf4060d4 calls _XSend with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=ret(strlen)+1, a3=?.
  The `jalr` at 0xf4060ec calls _XReply with a0=a0 at entry (arg0), a1=sp-112, a2=0x0, a3=0x0.
  The `jalr` at 0xf40611c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xf406130 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406184 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xf4061c8 calls ReadFormatInfo [0xf405e10] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4061fc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xf406210 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406238 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406258 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40626c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4062a4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4062b8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4062d4 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `jalr` at 0xf4062f4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xf406308 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf406014 targets 0xf4062c8, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf406020 targets 0xf4062cc, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf40602c targets 0xf406040, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `bne` branch at 0xf406050 targets 0xf406238, is taken when v1(=[a0+112]) < a0(=[a0+108]+12) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+12) (unsigned).
  The `beq` branch at 0xf4060f4 targets 0xf406248, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xf4060fc targets 0xf406294, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bgtz` branch at 0xf406104 targets 0xf406158, is taken when t3(?) > 0 (signed), and falls through when t3(?) <= 0 (signed).
  The `beq` branch at 0xf406110 targets 0xf406124, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xf406128 targets 0xf406138, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf40618c targets 0xf4062e4, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `blez` branch at 0xf40619c targets 0xf4061ec, is taken when t8(=[a3]) <= 0 (signed), and falls through when t8(=[a3]) > 0 (signed).
  The `bne` branch at 0xf4061e0 targets 0xf4061c0, is taken when s2(?) < t8(=[a3]) (signed), and falls through when s2(?) >= t8(=[a3]) (signed).
  The `beq` branch at 0xf4061f0 targets 0xf406204, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xf406208 targets 0xf40621c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf406240 targets 0xf406058 and is always taken.
  The `beq` branch at 0xf40624c targets 0xf406260, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf406264 targets 0xf406274, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf406298 targets 0xf4062ac, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf4062b0 targets 0xf4062c0, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf4062c0 targets 0xf40621c and is always taken.
  The `beq` branch at 0xf4062dc targets 0xf40621c and is always taken.
  The `beq` branch at 0xf4062e8 targets 0xf4062fc, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xf406300 targets 0xf406310, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf406310 targets 0xf40621c and is always taken.
  The return at 0xf406150 has v0 = 0x0.
  The return at 0xf406230 has v0 = one of ?, 0x0.
  The return at 0xf40628c has v0 = 0x0.

- `XSGIvcQueryMonitorName` in `usr/lib32/libXsgivc.so` at 0xf406320 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf406320-0xf406564 (580 bytes).
  It occupies 580 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf406364, `lw` at 0xf4063d4.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf406370, `lw` at 0xf406418, `lw` at 0xf4064c0.
  The `lw` at 0xf40637c loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf406388, `lw` at 0xf4063bc, `lw` at 0xf406510.
  The `lw` at 0xf40638c loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf4063a4 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xf4063ac stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf4063b4, `sb` at 0xf406400.
  The `lw` at 0xf4063b8 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf4063c4 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xf4063d0 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lw` at 0xf4063dc loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sw` at 0xf4063e0 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf4063e8 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xf4063f4 stores 1 byte to [a0+108] +0x1.
  3 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf406424, `lw` at 0xf4064cc, `lw` at 0xf406520.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf406430, `lw` at 0xf4064d8, `lw` at 0xf40652c.
  The `sb` at 0xf406494 stores 1 byte to ?.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xf40649c, `sw` at 0xf4064bc.
  The `bgezall` at 0xf406354 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf406380 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4063fc calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0, a4=[[ret(find_display)+8]+4], a5=0x9, a6=a1 at entry (arg1), a7=a2 at entry (arg2).
  The `jalr` at 0xf406428 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40643c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406460 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xf40647c calls _XReadPad with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xf4064b0 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=-0x4, a3=?.
  The `jalr` at 0xf4064d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xf4064e4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406504 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406524 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406538 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406554 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf40635c targets 0xf406548, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf406368 targets 0xf40654c, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf406374 targets 0xf406388, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `bne` branch at 0xf406398 targets 0xf406504, is taken when v1(=[a0+112]) < a0(=[a0+108]+12) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+12) (unsigned).
  The `beq` branch at 0xf406404 targets 0xf406514, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bne` branch at 0xf406410 targets 0xf40645c, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0xf40641c targets 0xf406430, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf406434 targets 0xf406448, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf40646c targets 0xf4064a0, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `beq` branch at 0xf406498 targets 0xf4064c0 and is always taken.
  The `beq` branch at 0xf4064c4 targets 0xf4064d8, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf4064dc targets 0xf4064f0, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf40650c targets 0xf4063a0 and is always taken.
  The `beq` branch at 0xf406518 targets 0xf40652c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf406530 targets 0xf406540, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf406540 targets 0xf4064f0 and is always taken.
  The `beq` branch at 0xf40655c targets 0xf4064f0 and is always taken.
  The return at 0xf406454 has v0 = 0x0.
  The return at 0xf4064fc has v0 = one of 0x0, 0x1.

- `XSGIvcNVListVideoFormatCombinations` in `usr/lib32/libXsgivc.so` at 0xf406570 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf406570-0xf4068b8 (840 bytes).
  It occupies 840 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf4065c4, `lw` at 0xf406638.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf4065d8, `lw` at 0xf406684, `lw` at 0xf40670c.
  The `lw` at 0xf4065e4 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf4065f0, `lw` at 0xf406620, `lw` at 0xf406824.
  The `lw` at 0xf4065f4 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf406608 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xf406610 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf406618, `sb` at 0xf406668.
  The `lw` at 0xf40661c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf406628 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xf406634 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lw` at 0xf406640 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sb` at 0xf406644 stores 1 byte to [a0+108] +0xc.
  The `sw` at 0xf406648 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf406650 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xf40665c stores 1 byte to [a0+108] +0x1.
  4 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf406690, `lw` at 0xf406718, `lw` at 0xf406838.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf40669c, `lw` at 0xf406724, `lw` at 0xf406844.
  2 such `sw` accesses store 4 bytes to a5 (arg5 at entry) +0x0, including `sw` at 0xf40673c, `sw` at 0xf40678c.
  The `lw` at 0xf406780 loads 4 bytes from a5 (arg5 at entry) +0x0.
  The `sw` at 0xf406794 stores 4 bytes to ?.
  The `bgezall` at 0xf4065b4 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf4065e8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xf406664 calls _XReply with a0=a0 at entry (arg0), a1=sp-176, a2=0x0, a3=0x0, a4=[[ret(find_display)+8]+4], a5=0x1f, a6=a1 at entry (arg1), a7=a3 at entry (arg3).
  The `jalr` at 0xf406694 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4066a8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4066dc calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xf406704 calls _XRead with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40671c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xf406730 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406770 calls matchWild with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40679c calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xf406818 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40683c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406850 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406870 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406888 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4068a8 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf4065bc targets 0xf406898, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf4065c8 targets 0xf40689c, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf4065d0 targets 0xf4067f0, is taken when s2(=a2) == 0, and falls through when s2(=a2) != 0.
  The `beq` branch at 0xf4065dc targets 0xf4065f0, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `bne` branch at 0xf406600 targets 0xf406814, is taken when v1(=[a0+112]) < a0(=[a0+108]+16) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+16) (unsigned).
  The `beq` branch at 0xf40666c targets 0xf406828, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xf406674 targets 0xf406860, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0xf40667c targets 0xf4066d4, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xf406688 targets 0xf40669c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf4066a0 targets 0xf4066b4, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf406710 targets 0xf406724, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xf406728 targets 0xf40673c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf406744 targets 0xf4067cc, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xf40674c targets 0xf4067cc, is taken when s3(=a4) == 0, and falls through when s3(=a4) != 0.
  The `beq` branch at 0xf406778 targets 0xf406798, is taken when v0(=ret(matchWild)) == 0, and falls through when v0(=ret(matchWild)) != 0.
  The `beq` branch at 0xf4067b4 targets 0xf4067c4, is taken when s4(?) >= t8(?) (unsigned), and falls through when s4(?) < t8(?) (unsigned).
  The `bne` branch at 0xf4067bc targets 0xf40676c, is taken when s3(=a4) != s1(?), and falls through when s3(=a4) == s1(?).
  The `beq` branch at 0xf406820 targets 0xf406604 and is always taken.
  The `beq` branch at 0xf406830 targets 0xf406844, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf406848 targets 0xf406858, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf406858 targets 0xf4067d8 and is always taken.
  The `beq` branch at 0xf406864 targets 0xf406878, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf406880 targets 0xf406890, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf406890 targets 0xf4067d8 and is always taken.
  The `beq` branch at 0xf4068b0 targets 0xf4067d8 and is always taken.
  The return at 0xf4066cc has v0 = 0x0.
  The return at 0xf4067e8 has v0 = one of ?, 0x0.
  The return at 0xf40680c has v0 = 0x0.

- `XSGIvcQueryMonitorBaseProtocol` in `usr/lib32/libXsgivc.so` at 0xf4068c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf4068c0-0xf406a64 (420 bytes).
  It occupies 420 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf406900, `lw` at 0xf40696c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf40690c, `lw` at 0xf4069a0.
  The `lw` at 0xf406918 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf406924, `lw` at 0xf406954, `lw` at 0xf4069f4.
  The `lw` at 0xf406928 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf40693c stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xf406944 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf40694c, `sb` at 0xf406998.
  The `lw` at 0xf406950 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf40695c stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xf406968 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lw` at 0xf406974 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sw` at 0xf406978 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf406980 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xf40698c stores 1 byte to [a0+108] +0x1.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf4069ac, `lw` at 0xf406a00.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf4069b8, `lw` at 0xf406a0c.
  The `bgezall` at 0xf4068f0 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf40691c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xf406994 calls _XReply with a0=a0 at entry (arg0), a1=sp-80, a2=0x0, a3=0x1, a4=[[ret(find_display)+8]+4], a5=0x1a, a6=a1 at entry (arg1), a7=a2 at entry (arg2).
  The `jalr` at 0xf4069b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xf4069c4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4069e8 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406a04 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xf406a18 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406a44 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf4068f8 targets 0xf406a38, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf406904 targets 0xf406a3c, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf406910 targets 0xf406924, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `bne` branch at 0xf406934 targets 0xf4069e4, is taken when v1(=[a0+112]) < a0(=[a0+108]+12) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+12) (unsigned).
  The `beq` branch at 0xf40699c targets 0xf4069f8, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xf4069a4 targets 0xf4069b8, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xf4069bc targets 0xf4069cc, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf4069f0 targets 0xf406938 and is always taken.
  The `beq` branch at 0xf4069f8 targets 0xf406a0c, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xf406a10 targets 0xf406a20, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The return at 0xf4069dc has v0 = ?.
  The return at 0xf406a30 has v0 = 0x0.
  The return at 0xf406a5c has v0 = -0x1.

- `matchWild` in `usr/lib32/libXsgivc.so` at 0xf406a70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf406a70-0xf406c48 (472 bytes).
  It occupies 472 bytes.
  The `lbu` at 0xf406acc loads 1 byte from a1 (arg1 at entry) +0x0.
  6 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xf406ae4, `lbu` at 0xf406b2c, `lbu` at 0xf406b30.
  The `jalr` at 0xf406a94 calls strlen with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf406aa4 calls strlen with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `blez` branch at 0xf406aac targets 0xf406ae8, is taken when v0(=ret(strlen)) <= 0 (signed), and falls through when v0(=ret(strlen)) > 0 (signed).
  The `beq` branch at 0xf406ad0 targets 0xf406b7c, is taken when a7(=0x2a) == a5(?), and falls through when a7(=0x2a) != a5(?).
  The `beq` branch at 0xf406ad8 targets 0xf406b7c, is taken when t0(=0x3f) == a5(?), and falls through when t0(=0x3f) != a5(?).
  The `bnel` branch at 0xf406ae0 targets 0xf406ad0, is taken when a4(?) != a6(=(ret(strlen) + a1)), and falls through when a4(?) == a6(=(ret(strlen) + a1)); its branch-likely delay slot `lbu a5,0(a4)` at 0xf406ae4 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xf406aec targets 0xf406c00, is taken when v1(=ret(strlen)) <= 0 (signed), and falls through when v1(=ret(strlen)) > 0 (signed).
  The `blez` branch at 0xf406af4 targets 0xf406c0c, is taken when v0(=ret(strlen)) <= 0 (signed), and falls through when v0(=ret(strlen)) > 0 (signed).
  The `bne` branch at 0xf406b34 targets 0xf406ba0, is taken when t8(?) != t1(?), and falls through when t8(?) == t1(?).
  The `beq` branch at 0xf406b50 targets 0xf406b60, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xf406b58 targets 0xf406b28, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xf406b64 targets 0xf406c0c, is taken when t8(?) != a0(=ret(strlen)), and falls through when t8(?) == a0(=ret(strlen)).
  The `bne` branch at 0xf406b6c targets 0xf406c10, is taken when a5(?) != v0(=ret(strlen)), and falls through when a5(?) == v0(=ret(strlen)).
  The `beq` branch at 0xf406b74 targets 0xf406b90 and is always taken.
  The `beq` branch at 0xf406ba0 targets 0xf406c28, is taken when t0(=0x3f) == t1(?), and falls through when t0(=0x3f) != t1(?).
  The `bne` branch at 0xf406ba8 targets 0xf406c20, is taken when a7(=0x2a) != t1(?), and falls through when a7(=0x2a) == t1(?).
  The `beq` branch at 0xf406bb0 targets 0xf406c40, is taken when a0(?) == t9(=(a0 + ret(strlen)-1)), and falls through when a0(?) != t9(=(a0 + ret(strlen)-1)).
  The `beq` branch at 0xf406bc4 targets 0xf406b4c, is taken when a5(?) >= v0(=ret(strlen)) (signed), and falls through when a5(?) < v0(=ret(strlen)) (signed).
  The `beq` branch at 0xf406bd4 targets 0xf406bf8, is taken when a3(?) == t1(?), and falls through when a3(?) != t1(?).
  The `beq` branch at 0xf406bdc targets 0xf406bf8, is taken when a4(?) == a6(=(ret(strlen) + a1)), and falls through when a4(?) != a6(=(ret(strlen) + a1)).
  The `beq` branch at 0xf406be8 targets 0xf406bf8, is taken when at(?) == t1(?), and falls through when at(?) != t1(?).
  The `bne` branch at 0xf406bf0 targets 0xf406bd0, is taken when a4(?) != a6(=(ret(strlen) + a1)), and falls through when a4(?) == a6(=(ret(strlen) + a1)).
  The `beq` branch at 0xf406bf8 targets 0xf406b50 and is always taken.
  The `bne` branch at 0xf406c00 targets 0xf406c0c, is taken when v1(=ret(strlen)) != 0, and falls through when v1(=ret(strlen)) == 0.
  The `beq` branch at 0xf406c08 targets 0xf406b74, is taken when v0(=ret(strlen)) == 0, and falls through when v0(=ret(strlen)) != 0.
  The `beq` branch at 0xf406c20 targets 0xf406b90 and is always taken.
  The `beq` branch at 0xf406c38 targets 0xf406b4c and is always taken.
  The `beq` branch at 0xf406c40 targets 0xf406b90 and is always taken.
  The return at 0xf406b88 has v0 = 0x0.
  The return at 0xf406b98 has v0 = one of 0x0, 0x1.
  The return at 0xf406c18 has v0 = 0x0.

- `XSGIvcQueryScreenInputSyncSource` in `usr/lib32/libXsgivc.so` at 0xf406c50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf406c50-0xf406e18 (456 bytes).
  It occupies 456 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf406c98, `lw` at 0xf406d04.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf406ca4, `lw` at 0xf406d58, `lw` at 0xf406db8.
  The `lw` at 0xf406cb0 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf406cbc, `lw` at 0xf406cf0, `lw` at 0xf406db4.
  The `lw` at 0xf406cc0 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf406cd8 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xf406ce0 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf406ce8, `sb` at 0xf406d2c.
  The `lw` at 0xf406cec loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf406cf8 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xf406d00 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lw` at 0xf406d0c loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sw` at 0xf406d14 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xf406d20 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf406d44 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `sw` at 0xf406d4c stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `sw` at 0xf406d54 stores 4 bytes to a4 (arg4 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf406d64, `lw` at 0xf406dc4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf406d70, `lw` at 0xf406dd0.
  The `bgezall` at 0xf406c88 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf406cb4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=[a0+1232].
  The `jalr` at 0xf406d28 calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x1, a4=[[ret(find_display)+8]+4], a5=0xf, a6=a1 at entry (arg1), a7=[a0+108]+8.
  The `jalr` at 0xf406d68 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=[a0+1232].
  The `jalr` at 0xf406d7c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406da8 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406dc8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=[a0+1232].
  The `jalr` at 0xf406ddc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf406e00 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf406c90 targets 0xf406df4, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf406c9c targets 0xf406df8, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf406ca8 targets 0xf406cbc, is taken when a7(=[a0+1232]) == 0, and falls through when a7(=[a0+1232]) != 0.
  The `bne` branch at 0xf406ccc targets 0xf406da8, is taken when v1(=[a0+112]) < a0(=[a0+108]+8) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+8) (unsigned).
  The `beq` branch at 0xf406d30 targets 0xf406db8, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xf406d5c targets 0xf406d70, is taken when a7(=[a0+1232]) == 0, and falls through when a7(=[a0+1232]) != 0.
  The `beq` branch at 0xf406d74 targets 0xf406d84, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf406db0 targets 0xf406cd4 and is always taken.
  The `beq` branch at 0xf406dbc targets 0xf406dd0, is taken when a7(=[a0+1232]) == 0, and falls through when a7(=[a0+1232]) != 0.
  The `beq` branch at 0xf406dd4 targets 0xf406de4, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf406dec targets 0xf406d9c and is always taken.
  The `beq` branch at 0xf406e10 targets 0xf406d9c and is always taken.
  The return at 0xf406d94 has v0 = ?.
  The return at 0xf406da0 has v0 = 0x0.

- `XSGIvcSetOutputBlanking` in `usr/lib32/libXsgivc.so` at 0xf406e20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf406e20-0xf406e5c (60 bytes).
  It occupies 60 bytes.
  The `bgezall` at 0xf406e44 calls SetOneControl [0xf408cf0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0xb, a4=a3 at entry (arg3).
  The return at 0xf406e54 has v0 = ret(SetOneControl).

- `XSGIvcSetOutputPhaseSCH` in `usr/lib32/libXsgivc.so` at 0xf406e60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf406e60-0xf406e9c (60 bytes).
  It occupies 60 bytes.
  The `bgezall` at 0xf406e84 calls SetOneControl [0xf408cf0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x8, a4=a3 at entry (arg3).
  The return at 0xf406e94 has v0 = ret(SetOneControl).

- `GenerateVFList` in `usr/lib32/libXsgivc.so` at 0xf406ea0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf406ea0-0xf40701c (380 bytes).
  It occupies 380 bytes.
  The `lw` at 0xf406ec0 loads 4 bytes from a1 (arg1 at entry) +0x100.
  The `lw` at 0xf406ee0 loads 4 bytes from a1 (arg1 at entry) +0x104.
  The `sw` at 0xf406ee4 stores 4 bytes to (sp + one of -0x40, -0x3c) +0x0.
  The `lw` at 0xf406f0c loads 4 bytes from a1 (arg1 at entry) +0x108.
  The `sw` at 0xf406f10 stores 4 bytes to (sp + one of -0x40, -0x3c, -0x38) +0x0.
  The `lw` at 0xf406f20 loads 4 bytes from a1 (arg1 at entry) +0x10c.
  The `sw` at 0xf406f24 stores 4 bytes to (sp + one of -0x40, -0x3c, -0x38, -0x34) +0x0.
  The `lwc1` at 0xf406f30 loads 4 bytes from a1 (arg1 at entry) +0x110.
  2 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xf406f40, `swc1` at 0xf406f5c.
  The `lwc1` at 0xf406f4c loads 4 bytes from a1 (arg1 at entry) +0x114.
  The `lw` at 0xf406f6c loads 4 bytes from a1 (arg1 at entry) +0x118.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xf406f70, `sw` at 0xf406f84.
  The `lw` at 0xf406f80 loads 4 bytes from a1 (arg1 at entry) +0x134.
  The `lhu` at 0xf406f88 loads 2 bytes from a3 (arg3 at entry) +0x0.
  The `sh` at 0xf406f98 stores 2 bytes to a3 (arg3 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf406f9c, `lw` at 0xf406fc8.
  The `lw` at 0xf406fa4 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf406fe4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `jalr` at 0xf406fc0 calls memcpy with a0=[a0+108], a1=sp-64, a2=?, a3=a3 at entry (arg3), a6=sp-64.
  The `jalr` at 0xf407000 calls _XSend with a0=a0 at entry (arg0), a1=sp-64, a2=?, a3=a3 at entry (arg3), a6=sp-64.
  The `beq` branch at 0xf406eb8 targets 0xf406ed0, is taken when (a2 & 0x2) == 0, and falls through when (a2 & 0x2) != 0.
  The `beq` branch at 0xf406ed4 targets 0xf406ee8, is taken when (a2 & 0x4) == 0, and falls through when (a2 & 0x4) != 0.
  The `beq` branch at 0xf406f00 targets 0xf406f14, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xf406f14 targets 0xf406f28, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xf406f28 targets 0xf406f44, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0xf406f44 targets 0xf406f60, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0xf406f60 targets 0xf406f74, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xf406f74 targets 0xf406f88, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xf406fb0 targets 0xf406ff4, is taken when v1(=[a0+112]) < a1(?) (unsigned), and falls through when v1(=[a0+112]) >= a1(?) (unsigned).
  The return at 0xf406fec has v0 = ?.
  The return at 0xf407014 has v0 = ret(_XSend).

- `XSGIvcSendMonitorQuery` in `usr/lib32/libXsgivc.so` at 0xf407020 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf407020-0xf4072a8 (648 bytes).
  It occupies 648 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf407070, `lw` at 0xf4070e8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf40707c, `lw` at 0xf407154, `lw` at 0xf407200.
  The `lw` at 0xf407088 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf407094, `lw` at 0xf4070c8, `lw` at 0xf407254.
  The `lw` at 0xf407098 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf4070b0 stores 4 bytes to a0 (arg0 at entry) +0x64.
  2 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xf4070b8, `sh` at 0xf407108.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf4070c0, `sb` at 0xf407124.
  The `lw` at 0xf4070c4 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf4070d0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xf4070dc stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lhu` at 0xf4070ec loads 2 bytes from [a0+108] +0x2.
  The `lw` at 0xf4070f4 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sb` at 0xf407100 stores 1 byte to [a0+108] +0x10.
  The `sw` at 0xf40710c stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xf407110 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf407114 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xf407118 stores 1 byte to [a0+108] +0x1.
  3 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf407160, `lw` at 0xf40720c, `lw` at 0xf407264.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf40716c, `lw` at 0xf407218, `lw` at 0xf407270.
  2 such `sw` accesses store 4 bytes to a5 (arg5 at entry) +0x0, including `sw` at 0xf4071c8, `sw` at 0xf4071f8.
  2 such `sw` accesses store 4 bytes to a6 (arg6 at entry) +0x0, including `sw` at 0xf4071d4, `sw` at 0xf4071fc.
  The `bgezall` at 0xf407060 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf40708c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407120 calls _XSend with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=a4 at entry (arg4), a3=[[ret(find_display)+8]+4], a4=0x19, a5=a1 at entry (arg1), a6=a2 at entry (arg2).
  The `jalr` at 0xf40713c calls _XReply with a0=a0 at entry (arg0), a1=sp-128, a2=0x0, a3=0x0.
  The `jalr` at 0xf407164 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407178 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407198 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xf4071b4 calls _XReadPad with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xf4071e8 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=-0x4, a3=?.
  The `jalr` at 0xf407210 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407224 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407248 calls _XFlush with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=?, a3=?.
  The `jalr` at 0xf407268 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40727c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407298 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf407068 targets 0xf40728c, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf407074 targets 0xf407290, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf407080 targets 0xf407094, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `bne` branch at 0xf4070a4 targets 0xf407244, is taken when v1(=[a0+112]) < a0(=[a0+108]+20) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+20) (unsigned).
  The `beq` branch at 0xf407144 targets 0xf407258, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bne` branch at 0xf40714c targets 0xf407198, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xf407158 targets 0xf40716c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf407170 targets 0xf407184, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf4071a4 targets 0xf4071d8, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `beq` branch at 0xf4071d0 targets 0xf407200 and is always taken.
  The `beq` branch at 0xf407204 targets 0xf407218, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf40721c targets 0xf407230, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf407250 targets 0xf4070a8 and is always taken.
  The `beq` branch at 0xf40725c targets 0xf407270, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf407274 targets 0xf407284, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf407284 targets 0xf407230 and is always taken.
  The `beq` branch at 0xf4072a0 targets 0xf407230 and is always taken.
  The return at 0xf407190 has v0 = 0x0.
  The return at 0xf40723c has v0 = one of 0x0, 0x1.

- `XSGIvcQueryScreenExternalSyncSource` in `usr/lib32/libXsgivc.so` at 0xf4072b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf4072b0-0xf40745c (428 bytes).
  It occupies 428 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf4072f0, `lw` at 0xf40735c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf4072fc, `lw` at 0xf407398, `lw` at 0xf4073ec.
  The `lw` at 0xf407308 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf407314, `lw` at 0xf407348, `lw` at 0xf4073e8.
  The `lw` at 0xf407318 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf407330 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xf407338 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf407340, `sb` at 0xf407384.
  The `lw` at 0xf407344 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf407350 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xf407358 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lw` at 0xf407364 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sw` at 0xf40736c stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xf407378 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf407394 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf4073a4, `lw` at 0xf4073f8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf4073b0, `lw` at 0xf407404.
  The `bgezall` at 0xf4072e0 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf40730c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xf407380 calls _XReply with a0=a0 at entry (arg0), a1=sp-80, a2=0x0, a3=0x1, a4=[[ret(find_display)+8]+4], a5=0x1c, a6=a1 at entry (arg1), a7=[a0+108]+8.
  The `jalr` at 0xf4073a8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xf4073bc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4073dc calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4073fc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xf407410 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40743c calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf4072e8 targets 0xf407430, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf4072f4 targets 0xf407434, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf407300 targets 0xf407314, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `bne` branch at 0xf407324 targets 0xf4073dc, is taken when v1(=[a0+112]) < a0(=[a0+108]+8) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+8) (unsigned).
  The `beq` branch at 0xf407388 targets 0xf4073ec, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xf40739c targets 0xf4073b0, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xf4073b4 targets 0xf4073c4, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf4073e4 targets 0xf40732c and is always taken.
  The `beq` branch at 0xf4073f0 targets 0xf407404, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xf407408 targets 0xf407418, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The return at 0xf4073d4 has v0 = ?.
  The return at 0xf407428 has v0 = 0x0.
  The return at 0xf407454 has v0 = 0x0.

- `find_display` in `usr/lib32/libXsgivc.so` at 0xf407460 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf407460-0xf4074f8 (152 bytes).
  It occupies 152 bytes.
  The `jalr` at 0xf407480 calls XextFindDisplay with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xf4074ac calls XextAddDisplay with a0=[0xf40c138], a1=a0 at entry (arg0), a2=[0xf40c13c], a3=0xf40c050, a4=0x1, a5=0x0.
  The `jalr` at 0xf4074d0 calls XextCreateExtension with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[0xf40c138].
  The `beq` branch at 0xf407470 targets 0xf4074cc, is taken when a4(=[0xf40c138]) == 0, and falls through when a4(=[0xf40c138]) != 0.
  The `bne` branch at 0xf407488 targets 0xf4074b8, is taken when v0(=ret(XextFindDisplay)) != 0, and falls through when v0(=ret(XextFindDisplay)) == 0.
  The `bne` branch at 0xf4074dc targets 0xf407478, is taken when v0(=ret(XextCreateExtension)) != 0, and falls through when v0(=ret(XextCreateExtension)) == 0.
  The return at 0xf4074c4 has v0 = one of ret(XextFindDisplay), ret(XextAddDisplay).
  The return at 0xf4074f0 has v0 = 0x0.

- `XSGIvcQueryVideoScreenInfo` in `usr/lib32/libXsgivc.so` at 0xf407500 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf407500-0xf407720 (544 bytes).
  It occupies 544 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf407540, `lw` at 0xf4075a8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf40754c, `lw` at 0xf40760c, `lw` at 0xf407668.
  The `lw` at 0xf407558 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf407564, `lw` at 0xf407594, `lw` at 0xf4076bc.
  The `lw` at 0xf407568 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf40757c stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xf407584 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf40758c, `sb` at 0xf4075d0.
  The `lw` at 0xf407590 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf40759c stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xf4075a4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lw` at 0xf4075b0 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sw` at 0xf4075b8 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xf4075c4 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf4075e4 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `sw` at 0xf4075ec stores 4 bytes to a2 (arg2 at entry) +0x4.
  The `sw` at 0xf4075f4 stores 4 bytes to a2 (arg2 at entry) +0x8.
  The `sw` at 0xf4075fc stores 4 bytes to a2 (arg2 at entry) +0x2c.
  3 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf407618, `lw` at 0xf407674, `lw` at 0xf4076cc.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf407624, `lw` at 0xf407680, `lw` at 0xf4076d8.
  The `bgezall` at 0xf407530 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf40755c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xf4075cc calls _XReply with a0=a0 at entry (arg0), a1=sp-80, a2=0x0, a3=0x0, a4=[[ret(find_display)+8]+4], a5=0x1, a6=a1 at entry (arg1), a7=[a0+108]+8.
  The `jalr` at 0xf40761c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xf407630 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407660 calls _XRead with a0=a0 at entry (arg0), a1=a2+12, a2=?, a3=?.
  The `jalr` at 0xf407678 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xf40768c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4076b0 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4076d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xf4076e4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407710 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf407538 targets 0xf407704, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf407544 targets 0xf407708, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf407550 targets 0xf407564, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `bne` branch at 0xf407574 targets 0xf4076ac, is taken when v1(=[a0+112]) < a0(=[a0+108]+8) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+8) (unsigned).
  The `beq` branch at 0xf4075d4 targets 0xf4076c0, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bne` branch at 0xf407604 targets 0xf407650, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0xf407610 targets 0xf407624, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xf407628 targets 0xf40763c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf40766c targets 0xf407680, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xf407684 targets 0xf407698, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf4076b8 targets 0xf407578 and is always taken.
  The `beq` branch at 0xf4076c4 targets 0xf4076d8, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xf4076dc targets 0xf4076f0, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf407718 targets 0xf407698 and is always taken.
  The return at 0xf407648 has v0 = 0x0.
  The return at 0xf4076a4 has v0 = one of 0x0, 0x1.
  The return at 0xf4076fc has v0 = 0x0.

- `XSGIvcNVLoadVideoFormat` in `usr/lib32/libXsgivc.so` at 0xf407720 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf407720-0xf4079c4 (676 bytes).
  It occupies 676 bytes.
  3 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf407778, `lw` at 0xf4077f0, `lw` at 0xf407824.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf40778c, `lw` at 0xf407904.
  The `lw` at 0xf407798 loads 4 bytes from [a0+1232] +0x0.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf4077a4, `lw` at 0xf4077dc, `lw` at 0xf407884.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xf4077a8, `lw` at 0xf407888.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xf4077c4, `sw` at 0xf4078a0.
  2 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xf4077cc, `sh` at 0xf4078a8.
  3 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf4077d4, `sb` at 0xf4077fc, `sb` at 0xf4078b0.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0xf4077d8, `lw` at 0xf407808, `lw` at 0xf407814.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x60, including `sw` at 0xf4077e4, `sw` at 0xf4078d0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xf4077ec, `sw` at 0xf4078dc.
  2 such `lw` accesses load 4 bytes from [ret(find_display)+8] +0x4, including `lw` at 0xf4077f8, `lw` at 0xf40782c.
  The `sb` at 0xf407804 stores 1 byte to [a0+108] +0x1.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c8, including `lw` at 0xf40783c, `lw` at 0xf4078e0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4c8, including `sw` at 0xf407854, `sw` at 0xf4078f0.
  The `sw` at 0xf407858 stores 4 bytes to [a0+108] +0x18.
  The `sw` at 0xf40785c stores 4 bytes to [a0+108] +0x10.
  The `sb` at 0xf407860 stores 1 byte to [a0+108] +0xc.
  The `sw` at 0xf407868 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf407874 stores 4 bytes to [a0+108] +0x14.
  The `sw` at 0xf407880 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xf407910 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xf40791c loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `bgezall` at 0xf407768 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf40779c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0xf40787c calls GenerateVFList [0xf406ea0] with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=a4 at entry (arg4), a3=[a0+108]+2, a4=a1 at entry (arg1), a5=a2 at entry (arg2), a6=a5 at entry (arg5), a7=[a0+96]+1.
  The `jalr` at 0xf4078d8 calls _XReply with a0=a0 at entry (arg0), a1=sp-120, a2=0x0, a3=0x1.
  The `jalr` at 0xf4078fc calls _XDeqAsyncHandler with a0=a0 at entry (arg0), a1=sp-160, a2=?, a3=?.
  The `jalr` at 0xf407914 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407928 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407978 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40798c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4079b4 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf407770 targets 0xf4079a4, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf40777c targets 0xf4079a8, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf407784 targets 0xf407954, is taken when s2(=a3) == 0, and falls through when s2(=a3) != 0.
  The `beq` branch at 0xf407790 targets 0xf4077a4, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `bne` branch at 0xf4077b4 targets 0xf407974, is taken when v0(=[a0+112]) < v1(=[a0+108]+28) (unsigned), and falls through when v0(=[a0+112]) >= v1(=[a0+108]+28) (unsigned).
  The `bne` branch at 0xf407898 targets 0xf407988, is taken when t3(=[a0+112]) < t8(=[a0+108]+4) (unsigned), and falls through when t3(=[a0+112]) >= t8(=[a0+108]+4) (unsigned).
  The `bne` branch at 0xf4078e4 targets 0xf4078f4, is taken when a0(=[a0+1224]) != sp(=sp-160), and falls through when a0(=[a0+1224]) == sp(=sp-160).
  The `beq` branch at 0xf4078ec targets 0xf407904 and is always taken.
  The `beq` branch at 0xf407908 targets 0xf40791c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf407920 targets 0xf407934, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf407934 targets 0xf40799c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xf407980 targets 0xf4077b8 and is always taken.
  The `beq` branch at 0xf407994 targets 0xf4078a0 and is always taken.
  The `beq` branch at 0xf40799c targets 0xf407944 and is always taken.
  The `beq` branch at 0xf4079bc targets 0xf407940 and is always taken.
  The return at 0xf40794c has v0 = one of 0x0, 0x1.
  The return at 0xf40796c has v0 = 0x0.

- `XSGIvcMultiCursorSetMode` in `usr/lib32/libXsgivc.so` at 0xf4079d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf4079d0-0xf407b18 (328 bytes).
  It occupies 328 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf407a0c, `lw` at 0xf407a78.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf407a18, `lw` at 0xf407a98.
  The `lw` at 0xf407a24 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf407a30, `lw` at 0xf407a64, `lw` at 0xf407ae8.
  The `lw` at 0xf407a34 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf407a4c stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xf407a54 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf407a5c, `sb` at 0xf407a94.
  The `lw` at 0xf407a60 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf407a6c stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xf407a74 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lw` at 0xf407a80 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sb` at 0xf407a84 stores 1 byte to [a0+108] +0x4.
  The `sb` at 0xf407a88 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xf407aa4 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xf407ab0 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `bgezall` at 0xf4079fc calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf407a28 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232].
  The `jalr` at 0xf407a90 calls _XFlush with a0=a0 at entry (arg0), a1=[[ret(find_display)+8]+4], a2=0x24, a3=a1 at entry (arg1), a4=[a0+108]+8, a5=0x2.
  The `jalr` at 0xf407aa8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232].
  The `jalr` at 0xf407abc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407adc calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407af8 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf407a04 targets 0xf407aec, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf407a10 targets 0xf407af0, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf407a1c targets 0xf407a30, is taken when a4(=[a0+1232]) == 0, and falls through when a4(=[a0+1232]) != 0.
  The `bne` branch at 0xf407a40 targets 0xf407adc, is taken when v1(=[a0+112]) < a0(=[a0+108]+8) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+8) (unsigned).
  The `beq` branch at 0xf407a9c targets 0xf407ab0, is taken when a4(=[a0+1232]) == 0, and falls through when a4(=[a0+1232]) != 0.
  The `beq` branch at 0xf407ab4 targets 0xf407ac4, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf407ae4 targets 0xf407a48 and is always taken.
  The return at 0xf407ad4 has v0 = 0x1.
  The return at 0xf407b10 has v0 = 0x0.

- `XSGIvcSetOutputSync` in `usr/lib32/libXsgivc.so` at 0xf407b20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf407b20-0xf407c6c (332 bytes).
  It occupies 332 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf407b68, `lw` at 0xf407bd8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf407b74, `lw` at 0xf407bfc.
  The `lw` at 0xf407b80 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf407b8c, `lw` at 0xf407bc4, `lw` at 0xf407c50.
  The `lw` at 0xf407b90 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf407bac stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xf407bb4 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf407bbc, `sb` at 0xf407bf8.
  The `lw` at 0xf407bc0 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf407bcc stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xf407bd4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lw` at 0xf407be0 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sw` at 0xf407be4 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xf407be8 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xf407bec stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf407bf0 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xf407bf4 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xf407c08 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xf407c14 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `bgezall` at 0xf407b58 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf407b84 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=[a0+1232].
  The `jalr` at 0xf407c0c calls (unknown callee) with a0=a0 at entry (arg0), a1=a4 at entry (arg4), a2=a3 at entry (arg3), a3=a2 at entry (arg2), a4=a1 at entry (arg1), a5=0xc, a6=[[ret(find_display)+8]+4], a7=[a0+1232].
  The `jalr` at 0xf407c20 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407c44 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=a1 at entry (arg1).
  The `jalr` at 0xf407c5c calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf407b60 targets 0xf407c54, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf407b6c targets 0xf407c58, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf407b78 targets 0xf407b8c, is taken when a7(=[a0+1232]) == 0, and falls through when a7(=[a0+1232]) != 0.
  The `bne` branch at 0xf407b9c targets 0xf407c40, is taken when v1(=[a0+112]) < a0(=[a0+108]+20) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+20) (unsigned).
  The `beq` branch at 0xf407c00 targets 0xf407c14, is taken when a7(=[a0+1232]) == 0, and falls through when a7(=[a0+1232]) != 0.
  The `beq` branch at 0xf407c18 targets 0xf407c2c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf407c4c targets 0xf407ba0 and is always taken.
  The `beq` branch at 0xf407c64 targets 0xf407c2c and is always taken.
  The return at 0xf407c38 has v0 = one of ?, ret(?), ret(XMissingExtension).

- `XSGIvcQueryChannelGammaMap` in `usr/lib32/libXsgivc.so` at 0xf407c70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf407c70-0xf407cac (60 bytes).
  It occupies 60 bytes.
  The `bgezall` at 0xf407c94 calls QueryOneControl [0xf408840] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0xa, a4=a3 at entry (arg3).
  The return at 0xf407ca4 has v0 = ret(QueryOneControl).

- `XSGIvcQueryPlatformParameter` in `usr/lib32/libXsgivc.so` at 0xf407cb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf407cb0-0xf407ee8 (568 bytes).
  It occupies 568 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf407d00, `lw` at 0xf407d7c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf407d14, `lw` at 0xf407df0, `lw` at 0xf407e48.
  The `lw` at 0xf407d20 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf407d2c, `lw` at 0xf407d64, `lw` at 0xf407e44.
  The `lw` at 0xf407d30 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf407d44 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xf407d4c stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf407d5c, `sb` at 0xf407db0.
  The `lw` at 0xf407d60 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf407d6c stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xf407d78 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lw` at 0xf407d84 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sw` at 0xf407d88 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xf407d8c stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xf407d90 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf407d98 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xf407da4 stores 1 byte to [a0+108] +0x1.
  3 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf407dfc, `lw` at 0xf407e54, `lw` at 0xf407e9c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf407e08, `lw` at 0xf407e60, `lw` at 0xf407ea8.
  The `bgezall` at 0xf407cf0 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf407d24 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407dac calls _XReply with a0=a0 at entry (arg0), a1=sp-112, a2=0x0, a3=0x0, a4=[[ret(find_display)+8]+4], a5=0x11, a6=a1 at entry (arg1), a7=a2 at entry (arg2).
  The `jalr` at 0xf407de8 calls _XRead with a0=a0 at entry (arg0), a1=a4 at entry (arg4), a2=?, a3=?.
  The `jalr` at 0xf407e00 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407e14 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407e38 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407e58 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407e6c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407ea0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407eb4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf407ed0 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf407cf8 targets 0xf407ec4, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf407d04 targets 0xf407ec8, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf407d0c targets 0xf407ee0, is taken when s1(=a5) == 0, and falls through when s1(=a5) != 0.
  The `beq` branch at 0xf407d18 targets 0xf407d2c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `bne` branch at 0xf407d3c targets 0xf407e38, is taken when v1(=[a0+112]) < a0(=[a0+108]+20) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+20) (unsigned).
  The `beq` branch at 0xf407db4 targets 0xf407e48, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xf407dc0 targets 0xf407e90, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0xf407dcc targets 0xf407dd8, is taken when s1(=a5) < a5(?) (unsigned), and falls through when s1(=a5) >= a5(?) (unsigned).
  The `blez` branch at 0xf407dd8 targets 0xf407df0, is taken when s1(?) <= 0 (signed), and falls through when s1(?) > 0 (signed).
  The `beq` branch at 0xf407df4 targets 0xf407e08, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf407e0c targets 0xf407e20, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf407e40 targets 0xf407d44 and is always taken.
  The `beq` branch at 0xf407e4c targets 0xf407e60, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf407e64 targets 0xf407e78, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf407e94 targets 0xf407ea8, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf407eac targets 0xf407ebc, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf407ebc targets 0xf407e20 and is always taken.
  The `beq` branch at 0xf407ed8 targets 0xf407e20 and is always taken.
  The `beq` branch at 0xf407ee0 targets 0xf407e20 and is always taken.
  The return at 0xf407e30 has v0 = one of 0x0, 0x1, 0x10.
  The return at 0xf407e88 has v0 = 0x0.

- `XSGIvcSetChannelInputRectangle` in `usr/lib32/libXsgivc.so` at 0xf407ef0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf407ef0-0xf40809c (428 bytes).
  It occupies 428 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf407f38, `lw` at 0xf407fb4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf407f44, `lw` at 0xf408030.
  The `lw` at 0xf407f50 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf407f5c, `lw` at 0xf407f8c, `lw` at 0xf408080.
  The `lw` at 0xf407f60 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf407f74 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xf407f7c stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf407f84, `sb` at 0xf408024.
  The `lw` at 0xf407f94 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf407fa4 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xf407fb0 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lw` at 0xf407fbc loads 4 bytes from [ret(find_display)+8] +0x4.
  The `swc1` at 0xf407fc4 stores 4 bytes to [a0+108] +0xc.
  The `swc1` at 0xf407fdc stores 4 bytes to [a0+108] +0x10.
  The `swc1` at 0xf407ff4 stores 4 bytes to [a0+108] +0x14.
  The `sb` at 0xf40800c stores 1 byte to [a0+108] +0x1c.
  The `sw` at 0xf408014 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf408018 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xf408020 stores 1 byte to [a0+108] +0x1.
  The `swc1` at 0xf40802c stores 4 bytes to [a0+108] +0x18.
  The `lw` at 0xf40803c loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xf408048 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `bgezall` at 0xf407f28 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf407f54 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xf408040 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x1, a2=a2 at entry (arg2), a3=a1 at entry (arg1), a4=0x18, a5=[a0+1232], a6=[a0+96]+1, a7=[a0+108]+32.
  The `jalr` at 0xf408054 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf408074 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40808c calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf407f30 targets 0xf408084, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf407f3c targets 0xf408088, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf407f48 targets 0xf407f5c, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `bne` branch at 0xf407f6c targets 0xf408074, is taken when v1(=[a0+112]) < a0(=[a0+108]+32) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+32) (unsigned).
  The `beq` branch at 0xf408034 targets 0xf408048, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xf40804c targets 0xf408060, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf40807c targets 0xf407f74 and is always taken.
  The `beq` branch at 0xf408094 targets 0xf408060 and is always taken.
  The return at 0xf40806c has v0 = one of ?, ret(?), ret(XMissingExtension).

- `wire_to_event` in `usr/lib32/libXsgivc.so` at 0xf4080a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf4080a0-0xf408834 (1940 bytes).
  It occupies 1940 bytes.
  The `lbu` at 0xf4080e0 loads 1 byte from a2 (arg2 at entry) +0x1.
  The `lw` at 0xf4080ec loads 4 bytes from ret(find_display) +0x8.
  The `lw` at 0xf4080fc loads 4 bytes from [ret(find_display)+8] +0x8.
  The `lw` at 0xf408108 loads 4 bytes from table(0xf40c000) +0x0.
  13 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x14, including `sw` at 0xf408120, `sw` at 0xf4081a8, `sw` at 0xf408228.
  13 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0xf40812c, `sw` at 0xf4081b4, `sw` at 0xf408234.
  13 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x4, including `sw` at 0xf408130, `sw` at 0xf4081b8, `sw` at 0xf408238.
  13 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0x0, including `lbu` at 0xf408134, `lbu` at 0xf4081bc, `lbu` at 0xf40823c.
  13 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0xc, including `sw` at 0xf408138, `sw` at 0xf4081c0, `sw` at 0xf408240.
  13 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x8, including `sw` at 0xf408144, `sw` at 0xf4081cc, `sw` at 0xf40824c.
  26 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0xf408148, `lw` at 0xf408168, `lw` at 0xf4081d0.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8c, including `lw` at 0xf408150, `lw` at 0xf4081d8, `lw` at 0xf408258.
  13 such `lw` accesses load 4 bytes from ([a0+140] + ((([a2+4] << 0x2) + [a2+4]) << 0x4)) +0x8, including `lw` at 0xf408160, `lw` at 0xf4081f0, `lw` at 0xf408268.
  13 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x10, including `sw` at 0xf408164, `sw` at 0xf4081f4, `sw` at 0xf40826c.
  13 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x18, including `sw` at 0xf40816c, `sw` at 0xf4081fc, `sw` at 0xf408274.
  13 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0xf408170, `lw` at 0xf408204, `lw` at 0xf408278.
  13 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x1c, including `sw` at 0xf408174, `sw` at 0xf408208, `sw` at 0xf40827c.
  9 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lw` at 0xf408178, `lw` at 0xf408280, `lw` at 0xf408420.
  10 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x20, including `sw` at 0xf40817c, `sw` at 0xf4083a0, `sw` at 0xf40842c.
  The `swc1` at 0xf4082a0 stores 4 bytes to a1 (arg1 at entry) +0x20.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lw` at 0xf4082a4, `lw` at 0xf408540, `lw` at 0xf408734.
  2 such `swc1` accesses store 4 bytes to a1 (arg1 at entry) +0x24, including `swc1` at 0xf4082c0, `swc1` at 0xf408758.
  The `lw` at 0xf4082c4 loads 4 bytes from a2 (arg2 at entry) +0x14.
  The `swc1` at 0xf4082e0 stores 4 bytes to a1 (arg1 at entry) +0x2c.
  The `lw` at 0xf4082e4 loads 4 bytes from a2 (arg2 at entry) +0x18.
  The `swc1` at 0xf408314 stores 4 bytes to a1 (arg1 at entry) +0x28.
  2 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0xc, including `lbu` at 0xf408394, `lbu` at 0xf4086bc.
  The `sw` at 0xf40854c stores 4 bytes to a1 (arg1 at entry) +0x24.
  The `bgezall` at 0xf4080d8 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf408128 calls _XSetLastRequestRead with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[[ret(find_display)+8]+8], a3=entry(0xf40c000), a4=0x5.
  The `jalr` at 0xf4081b0 calls _XSetLastRequestRead with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[[ret(find_display)+8]+8], a3=entry(0xf40c000).
  The `jalr` at 0xf408230 calls _XSetLastRequestRead with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[[ret(find_display)+8]+8], a3=entry(0xf40c000).
  The `jalr` at 0xf408338 calls _XSetLastRequestRead with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[[ret(find_display)+8]+8], a3=entry(0xf40c000).
  The `jalr` at 0xf4083c4 calls _XSetLastRequestRead with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[[ret(find_display)+8]+8], a3=entry(0xf40c000).
  The `jalr` at 0xf408450 calls _XSetLastRequestRead with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[[ret(find_display)+8]+8], a3=entry(0xf40c000), a6=0x9.
  The `jalr` at 0xf4084dc calls _XSetLastRequestRead with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[[ret(find_display)+8]+8], a3=entry(0xf40c000).
  The `jalr` at 0xf408570 calls _XSetLastRequestRead with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[[ret(find_display)+8]+8], a3=entry(0xf40c000), a5=0x7.
  The `jalr` at 0xf4085fc calls _XSetLastRequestRead with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[[ret(find_display)+8]+8], a3=entry(0xf40c000).
  The `jalr` at 0xf40866c calls _XSetLastRequestRead with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[[ret(find_display)+8]+8], a3=entry(0xf40c000), a4=0x4.
  The `jalr` at 0xf4086dc calls _XSetLastRequestRead with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[[ret(find_display)+8]+8], a3=entry(0xf40c000).
  The `jalr` at 0xf408770 calls _XSetLastRequestRead with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[[ret(find_display)+8]+8], a3=0x2.
  The `jalr` at 0xf4087d8 calls _XSetLastRequestRead with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[[ret(find_display)+8]+8], a3=entry(0xf40c000).
  The `beq` branch at 0xf408100 targets 0xf408180, is taken when a1(?) >= 0xd (unsigned), and falls through when a1(?) < 0xd (unsigned).
  The `beq` branch at 0xf408650 targets 0xf408180 and is always taken.
  The `beq` branch at 0xf4086c0 targets 0xf408180 and is always taken.
  The `beq` branch at 0xf408754 targets 0xf408180 and is always taken.
  The `beq` branch at 0xf4087bc targets 0xf408180 and is always taken.
  The `beq` branch at 0xf40882c targets 0xf408180 and is always taken.
  The return at 0xf408198 has v0 = 0x1.
  The return at 0xf408218 has v0 = 0x1.
  The return at 0xf40831c has v0 = 0x1.
  The return at 0xf4083a8 has v0 = 0x1.
  The return at 0xf408434 has v0 = 0x1.
  The return at 0xf4084c0 has v0 = 0x1.
  The return at 0xf408554 has v0 = 0x1.
  The return at 0xf4085e0 has v0 = 0x1.
  The indirect jump at 0xf40810c uses the jump table at 0xf40c000 with targets 0xf4081a0, 0xf4087c4, 0xf40875c, 0xf4086c8, 0xf408658, 0xf408114, 0xf4085e8, 0xf40855c, 0xf4084c8, 0xf40843c, 0xf4083b0, 0xf408324, 0xf408220.

- `QueryOneControl` in `usr/lib32/libXsgivc.so` at 0xf408840 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf408840-0xf4089e8 (424 bytes).
  It occupies 424 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf408878, `lw` at 0xf4088ec.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf408884, `lw` at 0xf408930, `lw` at 0xf408988.
  The `lw` at 0xf408890 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf40889c, `lw` at 0xf4088d4, `lw` at 0xf408984.
  The `lw` at 0xf4088a0 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf4088b4 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xf4088bc stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf4088cc, `sb` at 0xf40891c.
  The `lw` at 0xf4088d0 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf4088dc stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xf4088e8 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lw` at 0xf4088f4 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sw` at 0xf4088f8 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xf4088fc stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf408904 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xf408910 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf40892c stores 4 bytes to a4 (arg4 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf40893c, `lw` at 0xf408994.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf408948, `lw` at 0xf4089a0.
  The `bgezall` at 0xf408868 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf408894 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=[a0+1232].
  The `jalr` at 0xf408918 calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x1, a4=[[ret(find_display)+8]+4], a5=0xb, a6=a1 at entry (arg1), a7=a2 at entry (arg2).
  The `jalr` at 0xf408940 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=[a0+1232].
  The `jalr` at 0xf408954 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf408978 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf408998 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=[a0+1232].
  The `jalr` at 0xf4089ac calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4089d0 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf408870 targets 0xf4089c4, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf40887c targets 0xf4089c8, is taken when ra(=[ret(find_display)+8]) == 0, and falls through when ra(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf408888 targets 0xf40889c, is taken when a7(=[a0+1232]) == 0, and falls through when a7(=[a0+1232]) != 0.
  The `bne` branch at 0xf4088ac targets 0xf408978, is taken when at(=[a0+112]) < v1(=[a0+108]+16) (unsigned), and falls through when at(=[a0+112]) >= v1(=[a0+108]+16) (unsigned).
  The `beq` branch at 0xf408920 targets 0xf408988, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xf408934 targets 0xf408948, is taken when a7(=[a0+1232]) == 0, and falls through when a7(=[a0+1232]) != 0.
  The `beq` branch at 0xf40894c targets 0xf40895c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf408980 targets 0xf4088b4 and is always taken.
  The `beq` branch at 0xf40898c targets 0xf4089a0, is taken when a7(=[a0+1232]) == 0, and falls through when a7(=[a0+1232]) != 0.
  The `beq` branch at 0xf4089a4 targets 0xf4089b4, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf4089bc targets 0xf408970 and is always taken.
  The `beq` branch at 0xf4089e0 targets 0xf408970 and is always taken.
  The return at 0xf408968 has v0 = ?.
  The return at 0xf408970 has v0 = 0x0.

- `XSGIvcStoreGammaColors8` in `usr/lib32/libXsgivc.so` at 0xf4089f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf4089f0-0xf408bb0 (448 bytes).
  It occupies 448 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf408a40, `lw` at 0xf408abc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf408a4c, `lw` at 0xf408b40.
  The `lw` at 0xf408a58 loads 4 bytes from [a0+1232] +0x0.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf408a64, `lw` at 0xf408aa8, `lw` at 0xf408aec.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xf408a68, `lw` at 0xf408af0.
  The `sw` at 0xf408a90 stores 4 bytes to a0 (arg0 at entry) +0x64.
  2 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xf408a98, `sh` at 0xf408ae4.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf408aa0, `sb` at 0xf408ae8.
  The `lw` at 0xf408aa4 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf408ab0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xf408ab8, `sw` at 0xf408b28.
  The `lhu` at 0xf408ac0 loads 2 bytes from [a0+108] +0x2.
  The `lw` at 0xf408ac4 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sb` at 0xf408ac8 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xf408acc stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xf408ad0 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf408ad4 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xf408adc stores 4 bytes to [a0+108] +0x10.
  The `lw` at 0xf408b4c loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xf408b58 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `bgezall` at 0xf408a30 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf408a5c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf408b08 calls memcpy with a0=[a0+108], a1=a5 at entry (arg5), a2=a3 at entry (arg3), a3=?, a5=a4 at entry (arg4), a6=a2 at entry (arg2), a7=a1 at entry (arg1).
  The `jalr` at 0xf408b38 calls _XSend with a0=a0 at entry (arg0), a1=a5 at entry (arg5), a2=a3 at entry (arg3), a3=?, a5=a4 at entry (arg4), a6=a2 at entry (arg2), a7=a1 at entry (arg1).
  The `jalr` at 0xf408b50 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf408b64 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf408b88 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf408ba0 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf408a38 targets 0xf408b98, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf408a44 targets 0xf408b9c, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf408a50 targets 0xf408a64, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `bne` branch at 0xf408a74 targets 0xf408b88, is taken when v0(=[a0+112]) < v1(=[a0+108]+20) (unsigned), and falls through when v0(=[a0+112]) >= v1(=[a0+108]+20) (unsigned).
  The `bne` branch at 0xf408afc targets 0xf408b2c, is taken when a1(=[a0+112]) < a2(=(a3 + [a0+108])) (unsigned), and falls through when a1(=[a0+112]) >= a2(=(a3 + [a0+108])) (unsigned).
  The `beq` branch at 0xf408b24 targets 0xf408b40 and is always taken.
  The `beq` branch at 0xf408b44 targets 0xf408b58, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf408b5c targets 0xf408b70, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf408b90 targets 0xf408a7c and is always taken.
  The `beq` branch at 0xf408ba8 targets 0xf408b70 and is always taken.
  The return at 0xf408b80 has v0 = one of ?, ret(?), ret(XMissingExtension).

- `XSGIvcSetScreenInputSyncSource` in `usr/lib32/libXsgivc.so` at 0xf408bb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf408bb0-0xf408cf0 (320 bytes).
  It occupies 320 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf408bf4, `lw` at 0xf408c64.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf408c00, `lw` at 0xf408c84.
  The `lw` at 0xf408c0c loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf408c18, `lw` at 0xf408c50, `lw` at 0xf408cd4.
  The `lw` at 0xf408c1c loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf408c38 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xf408c40 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf408c48, `sb` at 0xf408c80.
  The `lw` at 0xf408c4c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf408c58 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xf408c60 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lw` at 0xf408c6c loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sw` at 0xf408c70 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xf408c74 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf408c78 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xf408c7c stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xf408c90 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xf408c9c loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `bgezall` at 0xf408be4 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf408c10 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+1232].
  The `jalr` at 0xf408c94 calls (unknown callee) with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=a2 at entry (arg2), a3=a1 at entry (arg1), a4=0xe, a5=[[ret(find_display)+8]+4], a6=[a0+1232], a7=[a0+108]+16.
  The `jalr` at 0xf408ca8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf408cc8 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf408ce0 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf408bec targets 0xf408cd8, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf408bf8 targets 0xf408cdc, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf408c04 targets 0xf408c18, is taken when a6(=[a0+1232]) == 0, and falls through when a6(=[a0+1232]) != 0.
  The `bne` branch at 0xf408c28 targets 0xf408cc8, is taken when v1(=[a0+112]) < a0(=[a0+108]+16) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+16) (unsigned).
  The `beq` branch at 0xf408c88 targets 0xf408c9c, is taken when a6(=[a0+1232]) == 0, and falls through when a6(=[a0+1232]) != 0.
  The `beq` branch at 0xf408ca0 targets 0xf408cb4, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf408cd0 targets 0xf408c30 and is always taken.
  The `beq` branch at 0xf408ce8 targets 0xf408cb4 and is always taken.
  The return at 0xf408cc0 has v0 = one of ?, ret(?), ret(XMissingExtension).

- `SetOneControl` in `usr/lib32/libXsgivc.so` at 0xf408cf0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf408cf0-0xf408e2c (316 bytes).
  It occupies 316 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf408d28, `lw` at 0xf408d98.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf408d34, `lw` at 0xf408dbc.
  The `lw` at 0xf408d40 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf408d4c, `lw` at 0xf408d84, `lw` at 0xf408e08.
  The `lw` at 0xf408d50 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf408d6c stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xf408d74 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf408d7c, `sb` at 0xf408db8.
  The `lw` at 0xf408d80 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf408d8c stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xf408d94 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lw` at 0xf408da0 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sw` at 0xf408da4 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xf408da8 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xf408dac stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf408db0 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xf408db4 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xf408dc8 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xf408dd4 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `bgezall` at 0xf408d18 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf408d44 calls (unknown callee) with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?, a7=[a0+1232].
  The `jalr` at 0xf408dcc calls (unknown callee) with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=a2 at entry (arg2), a3=a1 at entry (arg1), a4=0xa, a5=[[ret(find_display)+8]+4], a6=[a0+96]+1, a7=[a0+1232].
  The `jalr` at 0xf408de0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf408dfc calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=a1 at entry (arg1).
  Calls XMissingExtension via got with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=? (`jr` at 0xf408e24).
  The `beq` branch at 0xf408d20 targets 0xf408e0c, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf408d2c targets 0xf408e10, is taken when ra(=[ret(find_display)+8]) == 0, and falls through when ra(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf408d38 targets 0xf408d4c, is taken when a7(=[a0+1232]) == 0, and falls through when a7(=[a0+1232]) != 0.
  The `bne` branch at 0xf408d5c targets 0xf408df8, is taken when at(=[a0+112]) < v1(=[a0+108]+20) (unsigned), and falls through when at(=[a0+112]) >= v1(=[a0+108]+20) (unsigned).
  The `beq` branch at 0xf408dc0 targets 0xf408dd4, is taken when a7(=[a0+1232]) == 0, and falls through when a7(=[a0+1232]) != 0.
  The `beq` branch at 0xf408dd8 targets 0xf408de8, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf408e04 targets 0xf408d60 and is always taken.
  The return at 0xf408df0 has v0 = one of ?, ret(?).

- `XSGIvcListVideoFormatCombinations` in `usr/lib32/libXsgivc.so` at 0xf408e30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf408e30-0xf409168 (824 bytes).
  It occupies 824 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf408e80, `lw` at 0xf408eec.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf408e94, `lw` at 0xf408f34, `lw` at 0xf408fbc.
  The `lw` at 0xf408ea0 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf408eac, `lw` at 0xf408ed8, `lw` at 0xf4090d4.
  The `lw` at 0xf408eb0 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf408ec4 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xf408ecc stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf408ed0, `sb` at 0xf408f18.
  The `lw` at 0xf408ed4 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf408ee0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xf408ee8 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lw` at 0xf408ef4 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sw` at 0xf408ef8 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf408f00 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xf408f0c stores 1 byte to [a0+108] +0x1.
  4 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf408f40, `lw` at 0xf408fc8, `lw` at 0xf4090e8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf408f4c, `lw` at 0xf408fd4, `lw` at 0xf4090f4.
  2 such `sw` accesses store 4 bytes to a4 (arg4 at entry) +0x0, including `sw` at 0xf408fec, `sw` at 0xf40903c.
  The `lw` at 0xf409030 loads 4 bytes from a4 (arg4 at entry) +0x0.
  The `sw` at 0xf409044 stores 4 bytes to ?.
  The `bgezall` at 0xf408e70 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf408ea4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xf408f14 calls _XReply with a0=a0 at entry (arg0), a1=sp-160, a2=0x0, a3=0x0, a4=[[ret(find_display)+8]+4], a5=0x3, a6=a1 at entry (arg1), a7=[a0+108]+12.
  The `jalr` at 0xf408f44 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf408f58 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf408f8c calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xf408fb4 calls _XRead with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf408fcc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xf408fe0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf409020 calls matchWild with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40904c calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xf4090c8 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4090ec calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf409100 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf409120 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf409138 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf409158 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf408e78 targets 0xf409148, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf408e84 targets 0xf40914c, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf408e8c targets 0xf4090a0, is taken when s2(=a2) == 0, and falls through when s2(=a2) != 0.
  The `beq` branch at 0xf408e98 targets 0xf408eac, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `bne` branch at 0xf408ebc targets 0xf4090c4, is taken when v1(=[a0+112]) < a0(=[a0+108]+12) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+12) (unsigned).
  The `beq` branch at 0xf408f1c targets 0xf4090d8, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xf408f24 targets 0xf409110, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0xf408f2c targets 0xf408f84, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xf408f38 targets 0xf408f4c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf408f50 targets 0xf408f64, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf408fc0 targets 0xf408fd4, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xf408fd8 targets 0xf408fec, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf408ff4 targets 0xf40907c, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xf408ffc targets 0xf40907c, is taken when s3(=a3) == 0, and falls through when s3(=a3) != 0.
  The `beq` branch at 0xf409028 targets 0xf409048, is taken when v0(=ret(matchWild)) == 0, and falls through when v0(=ret(matchWild)) != 0.
  The `beq` branch at 0xf409064 targets 0xf409074, is taken when s4(?) >= t8(?) (unsigned), and falls through when s4(?) < t8(?) (unsigned).
  The `bne` branch at 0xf40906c targets 0xf40901c, is taken when s3(=a3) != s1(?), and falls through when s3(=a3) == s1(?).
  The `beq` branch at 0xf4090d0 targets 0xf408ec0 and is always taken.
  The `beq` branch at 0xf4090e0 targets 0xf4090f4, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf4090f8 targets 0xf409108, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf409108 targets 0xf409088 and is always taken.
  The `beq` branch at 0xf409114 targets 0xf409128, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf409130 targets 0xf409140, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf409140 targets 0xf409088 and is always taken.
  The `beq` branch at 0xf409160 targets 0xf409088 and is always taken.
  The return at 0xf408f7c has v0 = 0x0.
  The return at 0xf409098 has v0 = one of ?, 0x0.
  The return at 0xf4090bc has v0 = 0x0.

- `XSGIvcQueryBestChannelRectangle` in `usr/lib32/libXsgivc.so` at 0xf409170 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf409170-0xf409418 (680 bytes).
  It occupies 680 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf4091bc, `lw` at 0xf409238.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf4091c8, `lw` at 0xf409354, `lw` at 0xf4093a8.
  The `lw` at 0xf4091d4 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf4091e0, `lw` at 0xf409210, `lw` at 0xf4093a4.
  The `lw` at 0xf4091e4 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf4091f8 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xf409200 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf409208, `sb` at 0xf4092b4.
  The `lw` at 0xf409218 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf409228 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xf409234 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lw` at 0xf409240 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `swc1` at 0xf409248 stores 4 bytes to [a0+108] +0xc.
  The `swc1` at 0xf409260 stores 4 bytes to [a0+108] +0x10.
  The `swc1` at 0xf409278 stores 4 bytes to [a0+108] +0x14.
  The `sb` at 0xf409290 stores 1 byte to [a0+108] +0x1c.
  The `sw` at 0xf409298 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf40929c stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xf4092a8 stores 1 byte to [a0+108] +0x1.
  The `swc1` at 0xf4092c4 stores 4 bytes to [a0+108] +0x18.
  The `swc1` at 0xf4092f0 stores 4 bytes to a5 (arg5 at entry) +0x0.
  The `swc1` at 0xf409310 stores 4 bytes to a5 (arg5 at entry) +0x4.
  The `swc1` at 0xf409330 stores 4 bytes to a5 (arg5 at entry) +0xc.
  The `swc1` at 0xf409350 stores 4 bytes to a5 (arg5 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf409360, `lw` at 0xf4093b4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf40936c, `lw` at 0xf4093c0.
  The `bgezall` at 0xf4091ac calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf4091d8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+1232].
  The `jalr` at 0xf4092c0 calls _XReply with a0=a0 at entry (arg0), a1=sp-144, a2=0x0, a3=0x1, a4=[[ret(find_display)+8]+4], a5=0x18, a6=a1 at entry (arg1), a7=a2 at entry (arg2).
  The `jalr` at 0xf409364 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+1232].
  The `jalr` at 0xf409378 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf409398 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4093b8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+1232].
  The `jalr` at 0xf4093cc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4093f8 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf4091b4 targets 0xf4093ec, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf4091c0 targets 0xf4093f0, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf4091cc targets 0xf4091e0, is taken when a6(=[a0+1232]) == 0, and falls through when a6(=[a0+1232]) != 0.
  The `bne` branch at 0xf4091f0 targets 0xf409398, is taken when v1(=[a0+112]) < a0(=[a0+108]+32) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+32) (unsigned).
  The `beq` branch at 0xf4092c8 targets 0xf4093a8, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xf409358 targets 0xf40936c, is taken when a6(=[a0+1232]) == 0, and falls through when a6(=[a0+1232]) != 0.
  The `beq` branch at 0xf409370 targets 0xf409380, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf4093a0 targets 0xf4091f8 and is always taken.
  The `beq` branch at 0xf4093ac targets 0xf4093c0, is taken when a6(=[a0+1232]) == 0, and falls through when a6(=[a0+1232]) != 0.
  The `beq` branch at 0xf4093c4 targets 0xf4093d4, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The return at 0xf409390 has v0 = ?.
  The return at 0xf4093e4 has v0 = 0x0.
  The return at 0xf409410 has v0 = 0x0.

- `XSGIvcQueryExternalSyncSourceName` in `usr/lib32/libXsgivc.so` at 0xf409420 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf409420-0xf409668 (584 bytes).
  It occupies 584 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf409460, `lw` at 0xf4094cc.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf40946c, `lw` at 0xf409510, `lw` at 0xf4095b0.
  The `lw` at 0xf409478 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf409484, `lw` at 0xf4094b4, `lw` at 0xf409604.
  The `lw` at 0xf409488 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf40949c stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xf4094a4 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf4094ac, `sb` at 0xf4094f8.
  The `lw` at 0xf4094b0 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf4094bc stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xf4094c8 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lw` at 0xf4094d4 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sw` at 0xf4094d8 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf4094e0 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xf4094ec stores 1 byte to [a0+108] +0x1.
  3 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xf40951c, `lw` at 0xf4095bc, `lw` at 0xf409614.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xf409528, `lw` at 0xf4095c8, `lw` at 0xf409620.
  The `sb` at 0xf409590 stores 1 byte to ?.
  The `bgezall` at 0xf409450 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf40947c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xf4094f4 calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0, a4=[[ret(find_display)+8]+4], a5=0x1d, a6=a1 at entry (arg1), a7=a2 at entry (arg2).
  The `jalr` at 0xf409520 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf409534 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf409558 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xf409578 calls _XReadPad with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xf4095a4 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=-0x4, a3=?.
  The `jalr` at 0xf4095c0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xf4095d4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4095f8 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf409618 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf40962c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf409658 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf409458 targets 0xf40964c, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf409464 targets 0xf409650, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf409470 targets 0xf409484, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `bne` branch at 0xf409494 targets 0xf4095f4, is taken when v1(=[a0+112]) < a0(=[a0+108]+12) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+12) (unsigned).
  The `beq` branch at 0xf4094fc targets 0xf409608, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bne` branch at 0xf409508 targets 0xf409554, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0xf409514 targets 0xf409528, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf40952c targets 0xf409540, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf409568 targets 0xf409594, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `beq` branch at 0xf40958c targets 0xf4095b0 and is always taken.
  The `beq` branch at 0xf4095b4 targets 0xf4095c8, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xf4095cc targets 0xf4095e0, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf409600 targets 0xf409498 and is always taken.
  The `beq` branch at 0xf40960c targets 0xf409620, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xf409624 targets 0xf409638, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf409660 targets 0xf4095e0 and is always taken.
  The return at 0xf40954c has v0 = 0x0.
  The return at 0xf4095ec has v0 = one of ?, 0x0.
  The return at 0xf409644 has v0 = 0x0.

- `XSGIvcSetOutputPhaseH` in `usr/lib32/libXsgivc.so` at 0xf409670 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf409670-0xf4096ac (60 bytes).
  It occupies 60 bytes.
  The `bgezall` at 0xf409694 calls SetOneControl [0xf408cf0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x7, a4=a3 at entry (arg3).
  The return at 0xf4096a4 has v0 = ret(SetOneControl).

- `XSGIvcSetOutputPhaseV` in `usr/lib32/libXsgivc.so` at 0xf4096b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf4096b0-0xf4096ec (60 bytes).
  It occupies 60 bytes.
  The `bgezall` at 0xf4096d4 calls SetOneControl [0xf408cf0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x9, a4=a3 at entry (arg3).
  The return at 0xf4096e4 has v0 = ret(SetOneControl).

- `XSGIvcSelectInput` in `usr/lib32/libXsgivc.so` at 0xf4096f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf4096f0-0xf409824 (308 bytes).
  It occupies 308 bytes.
  2 such `lw` accesses load 4 bytes from ret(find_display) +0x8, including `lw` at 0xf409730, `lw` at 0xf409798.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xf40973c, `lw` at 0xf4097b4.
  The `lw` at 0xf409748 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xf409754, `lw` at 0xf409784, `lw` at 0xf409808.
  The `lw` at 0xf409758 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xf40976c stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xf409774 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xf40977c, `sb` at 0xf4097b0.
  The `lw` at 0xf409780 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xf40978c stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xf409794 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lw` at 0xf4097a0 loads 4 bytes from [ret(find_display)+8] +0x4.
  The `sw` at 0xf4097a4 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xf4097a8 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xf4097ac stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xf4097c0 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xf4097cc loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `bgezall` at 0xf409720 calls find_display [0xf407460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xf40974c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xf4097c4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a1 at entry (arg1), a3=0x17, a4=[[ret(find_display)+8]+4], a5=[a0+1232], a6=[a0+108]+12, a7=0x3.
  The `jalr` at 0xf4097d8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xf4097fc calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0xf409814 calls XMissingExtension with a0=a0 at entry (arg0), a1=[0xf40c13c], a2=?, a3=?.
  The `beq` branch at 0xf409728 targets 0xf40980c, is taken when v0(=ret(find_display)) == 0, and falls through when v0(=ret(find_display)) != 0.
  The `beq` branch at 0xf409734 targets 0xf409810, is taken when at(=[ret(find_display)+8]) == 0, and falls through when at(=[ret(find_display)+8]) != 0.
  The `beq` branch at 0xf409740 targets 0xf409754, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `bne` branch at 0xf409764 targets 0xf4097f8, is taken when v1(=[a0+112]) < a0(=[a0+108]+12) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+12) (unsigned).
  The `beq` branch at 0xf4097b8 targets 0xf4097cc, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xf4097d0 targets 0xf4097e4, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xf409804 targets 0xf409768 and is always taken.
  The `beq` branch at 0xf40981c targets 0xf4097e4 and is always taken.
  The return at 0xf4097f0 has v0 = one of ?, ret(?), ret(XMissingExtension).

- `XSGIvcSetOutputGain` in `usr/lib32/libXsgivc.so` at 0xf409830 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libXsgivc.so`.
  Range: 0xf409830-0xf4098dc (172 bytes).
  It occupies 172 bytes.
  The `bgezall` at 0xf4098ac calls SetOneControl [0xf408cf0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?, a5=0x4, a6=0x5.
  The `beq` branch at 0xf409850 targets 0xf409884, is taken when a3 == at(=0x1), and falls through when a3 != at(=0x1).
  The `beq` branch at 0xf40985c targets 0xf4098c4, is taken when a3 == v1(=0x2), and falls through when a3 != v1(=0x2).
  The `beq` branch at 0xf409864 targets 0xf4098cc, is taken when a3 == a4(=0x3), and falls through when a3 != a4(=0x3).
  The `beq` branch at 0xf40986c targets 0xf4098d4, is taken when a3 == a5(=0x4), and falls through when a3 != a5(=0x4).
  The `bne` branch at 0xf409874 targets 0xf4098b8, is taken when a3 != a6(=0x5), and falls through when a3 == a6(=0x5).
  The `beq` branch at 0xf40987c targets 0xf409888 and is always taken.
  The `beq` branch at 0xf4098c4 targets 0xf409888 and is always taken.
  The `beq` branch at 0xf4098cc targets 0xf409888 and is always taken.
  The `beq` branch at 0xf4098d4 targets 0xf409888 and is always taken.
  The return at 0xf4098bc has v0 = one of 0xa83c, ret(SetOneControl).
