# Readings: `usr/gfx/arch/IP32CRM32/libGL.so`

One entry per routine, filed here from the reading batches by binary.

- `__glXBindHWContextToWindow` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80eb1c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP32CRM32/libGL.so`.
  Range: 0xd80eb1c-0xd80edd0 (692 bytes).
  It occupies 692 bytes.
  The `lw` at 0xd80eb48 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  2 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd80eb4c, `lw` at 0xd80ed38.
  3 such `lw` accesses load 4 bytes from [a0+76] +0xcc, including `lw` at 0xd80eb50, `lw` at 0xd80ed3c, `lw` at 0xd80ed4c.
  The `lw` at 0xd80eb54 loads 4 bytes from [0x1014] +0x0.
  6 such `lw` accesses load 4 bytes from [a0+76] +0xe0, including `lw` at 0xd80eb60, `lw` at 0xd80ec44, `lw` at 0xd80ecb8.
  The `lw` at 0xd80eb64 loads 4 bytes from [a0+76] +0xf0.
  6 such `lw` accesses load 4 bytes from [a0+76] +0xdc, including `lw` at 0xd80eb68, `lw` at 0xd80ec48, `lw` at 0xd80ecbc.
  4 such `sb` accesses store 1 byte to [a0+76] +0xf4, including `sb` at 0xd80eb70, `sb` at 0xd80ec2c, `sb` at 0xd80eca8.
  The `lw` at 0xd80eb74 loads 4 bytes from [a0+76] +0xec.
  5 such `lw` accesses load 4 bytes from [a0+76] +0xe8, including `lw` at 0xd80eb8c, `lw` at 0xd80ebc0, `lw` at 0xd80ebd8.
  The `lw` at 0xd80eb90 loads 4 bytes from [[a0+76]+232] +0x2c.
  2 such `lw` accesses load 4 bytes from [a0+76] +0x11c, including `lw` at 0xd80eba4, `lw` at 0xd80ecf0.
  2 such `lw` accesses load 4 bytes from [a0+76] +0x120, including `lw` at 0xd80eba8, `lw` at 0xd80ecf4.
  6 such `lw` accesses load 4 bytes from [a0+76] +0xe4, including `lw` at 0xd80ebb4, `lw` at 0xd80ebcc, `lw` at 0xd80ec0c.
  2 such `lw` accesses load 4 bytes from [[a0+76]+228] +0x24, including `lw` at 0xd80ebb8, `lw` at 0xd80ec64.
  The `lw` at 0xd80ebc4 loads 4 bytes from [[a0+76]+232] +0x24.
  4 such `lw` accesses load 4 bytes from [[a0+76]+228] +0x4, including `lw` at 0xd80ebd0, `lw` at 0xd80ec10, `lw` at 0xd80ec70.
  2 such `lw` accesses load 4 bytes from [[a0+76]+232] +0x4, including `lw` at 0xd80ebdc, `lw` at 0xd80ec20.
  3 such `lw` accesses load 4 bytes from [a0+76] +0x24, including `lw` at 0xd80ebf0, `lw` at 0xd80ec84, `lw` at 0xd80ed2c.
  2 such `sw` accesses store 4 bytes to [[a0+76]+228] +0x4, including `sw` at 0xd80ec34, `sw` at 0xd80ecb0.
  The `sw` at 0xd80ec40 stores 4 bytes to [[a0+76]+232] +0x4.
  2 such `sw` accesses store 4 bytes to [a0+76] +0xec, including `sw` at 0xd80ec4c, `sw` at 0xd80ecc4.
  2 such `sw` accesses store 4 bytes to [a0+76] +0xf0, including `sw` at 0xd80ec50, `sw` at 0xd80ecc8.
  The `sw` at 0xd80ed40 stores 4 bytes to [0x1014] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lw` at 0xd80ed78, `lw` at 0xd80ed98, `lw` at 0xd80edb8.
  The `jalr` at 0xd80eb44 calls __glXHWAttach with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd80ebec calls (unnamed) [0xd80e6a4] with a0=[[a0+76]+36], a1=0x400, a2=sp-56, a3=[[a0+76]+224], a4=[[a0+76]+204].
  The `bgezall` at 0xd80ec80 calls (unnamed) [0xd80e6a4] with a0=[[a0+76]+36], a1=0x3eb, a2=sp-72, a3=[[a0+76]+224], a4=[[a0+76]+204].
  The `bgezall` at 0xd80ed28 calls (unnamed) [0xd80e6a4] with a0=[[a0+76]+36], a1=0x3ea, a2=sp-80, a3=?, a4=[[a0+76]+204].
  The `jalr` at 0xd80ed80 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd8435c0, a2=?, a3=?.
  The `jalr` at 0xd80eda0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd8435f8, a2=0x1, a3=?.
  The `jalr` at 0xd80edc0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd8435d8, a2=-0x1, a3=?.
  The `bne` branch at 0xd80eb58 targets 0xd80ed18, is taken when v1(=[[0x1014]]) != a4(=[[a0+76]+204]), and falls through when v1(=[[0x1014]]) == a4(=[[a0+76]+204]).
  The `bne` branch at 0xd80eb6c targets 0xd80eb80, is taken when a0(=[[a0+76]+240]) != a3(=[[a0+76]+224]), and falls through when a0(=[[a0+76]+240]) == a3(=[[a0+76]+224]).
  The `beq` branch at 0xd80eb78 targets 0xd80ecdc, is taken when a1(=[[a0+76]+236]) == a2(=[[a0+76]+220]), and falls through when a1(=[[a0+76]+236]) != a2(=[[a0+76]+220]).
  The `beq` branch at 0xd80eb84 targets 0xd80ecec, is taken when a3(=[[a0+76]+224]) == a2(=[[a0+76]+220]), and falls through when a3(=[[a0+76]+224]) != a2(=[[a0+76]+220]).
  The `beq` branch at 0xd80eb98 targets 0xd80ecec, is taken when ra(=[[[a0+76]+232]+44]) == at(=0x3), and falls through when ra(=[[[a0+76]+232]+44]) != at(=0x3).
  The `beq` branch at 0xd80ebac targets 0xd80ed58, is taken when at(=[[a0+76]+284]) == a2(=0x1), and falls through when at(=[[a0+76]+284]) != a2(=0x1).
  The `beq` branch at 0xd80ec04 targets 0xd80edb0, is taken when v0(=ret(0xd80e6a4)) == a2(=-0x1), and falls through when v0(=ret(0xd80e6a4)) != a2(=-0x1).
  The `bne` branch at 0xd80ec18 targets 0xd80ec2c, is taken when a3(=[[[a0+76]+228]+4]) != a4(?), and falls through when a3(=[[[a0+76]+228]+4]) == a4(?).
  The `beq` branch at 0xd80ec24 targets 0xd80ec44, is taken when a5(=[[[a0+76]+232]+4]) == a6(?), and falls through when a5(=[[[a0+76]+232]+4]) != a6(?).
  The `beq` branch at 0xd80ec8c targets 0xd80ed90, is taken when v0(=ret(0xd80e6a4)) == at(=-0x1), and falls through when v0(=ret(0xd80e6a4)) != at(=-0x1).
  The `beq` branch at 0xd80eca0 targets 0xd80ecb8, is taken when v0(=[[[a0+76]+228]+4]) == v1(?), and falls through when v0(=[[[a0+76]+228]+4]) != v1(?).
  The `beq` branch at 0xd80ecfc targets 0xd80ec60, is taken when a5(=[[a0+76]+284]) >= 0x2 (signed), and falls through when a5(=[[a0+76]+284]) < 0x2 (signed).
  The `beq` branch at 0xd80ed04 targets 0xd80ec60, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xd80ed10 targets 0xd80ec6c and is always taken.
  The `bltz` branch at 0xd80ed30 targets 0xd80ed74, is taken when v0(=ret(0xd80e6a4)) < 0 (signed), and falls through when v0(=ret(0xd80e6a4)) >= 0 (signed).
  The `beq` branch at 0xd80ed50 targets 0xd80eb80 and is always taken.
  The `beq` branch at 0xd80ed58 targets 0xd80ebb4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xd80ed6c targets 0xd80ebcc and is always taken.
  The `beq` branch at 0xd80ed88 targets 0xd80ed48 and is always taken.
  The `beq` branch at 0xd80eda8 targets 0xd80ecdc and is always taken.
  The `beq` branch at 0xd80edc8 targets 0xd80ecdc and is always taken.
  The return at 0xd80ec58 has v0 = ret(0xd80e6a4).
  The return at 0xd80ecd0 has v0 = [[[a0+76]+228]+4].
  The return at 0xd80ece4 has v0 = one of ret(__glXHWAttach), ret(?).
  The instructions from 0xd80ecd8 to 0xd80ecd8 are not reached by any path from the entry, and their branches are not listed.

- `__glXPixmapMemory` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80f4c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP32CRM32/libGL.so`.
  Range: 0xd80f4c0-0xd80f4dc (28 bytes).
  It occupies 28 bytes.
  The `lw` at 0xd80f4cc loads 4 bytes from abs 0xd846d8c.
  The return at 0xd80f4d4 has v0 = ?.

- `__glx_PrioritizeTexturesEXT` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd814f5c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP32CRM32/libGL.so`.
  Range: 0xd814f5c-0xd815030 (212 bytes).
  It occupies 212 bytes.
  The `lw` at 0xd814f6c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd814f78 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd814f90 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sw` at 0xd814f9c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sh` at 0xd814fac stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd814fc8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `lw` at 0xd814ff0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd815000 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd814fc4 calls memcpy with a0=[[[0x1014]+276]+4]+8, a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=a3 at entry (arg3), a4=a0 at entry (arg0).
  The `jalr` at 0xd814fe0 calls memcpy with a0=((a0 << 0x2) + [[[0x1014]+276]+4])+8, a1=a2 at entry (arg2), a2=(a0 << 0x2), a3=?.
  The `jalr` at 0xd815020 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `bltz` branch at 0xd814f8c targets 0xd815004, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `bne` branch at 0xd814ffc targets 0xd815018, is taken when a2(=[[[0x1014]+276]+8]) < s0(?) (unsigned), and falls through when a2(=[[[0x1014]+276]+8]) >= s0(?) (unsigned).
  The `beq` branch at 0xd815028 targets 0xd815008 and is always taken.
  The return at 0xd815010 has v0 = one of ?, ret(__glXFlushRenderBuffer).

- `__glx_BindTextureEXT` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd815030 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP32CRM32/libGL.so`.
  Range: 0xd815030-0xd8150a4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd815030 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd815034 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd815038 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sw` at 0xd81503c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd815040 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sh` at 0xd815048 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd815050 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `lw` at 0xd815054 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd815078 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd815094 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+12, a4=[[0x1014]+276], a5=0x1015, a6=0xc.
  The `bne` branch at 0xd815074 targets 0xd815088, is taken when at(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when at(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+12) (unsigned).
  The `beq` branch at 0xd81509c targets 0xd81507c and is always taken.
  The return at 0xd815080 has v0 = one of 0x391a0, ret(__glXFlushRenderBuffer).

- `__glx_IsTextureEXT` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd816354 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP32CRM32/libGL.so`.
  Range: 0xd816354-0xd8164b0 (348 bytes).
  It occupies 348 bytes.
  The `lw` at 0xd81635c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816360 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816368 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81639c loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8163a0, `lw` at 0xd81643c.
  The `lw` at 0xd8163ac loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8163b8, `lw` at 0xd8163ec, `lw` at 0xd8164ac.
  The `lw` at 0xd8163bc loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  The `sw` at 0xd8163d4 stores 4 bytes to [[[0x1014]+276]+216] +0x64.
  The `sh` at 0xd8163dc stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8163e4, `sb` at 0xd816418.
  The `lw` at 0xd8163e8 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8163f4 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8163fc stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd816400, `lw` at 0xd816420.
  The `sw` at 0xd816408 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd816414 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `sw` at 0xd81642c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd816438 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `lw` at 0xd81644c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `lw` at 0xd816458 loads 4 bytes from [[[0x1014]+276]+216] +0x7c.
  The `jalr` at 0xd816398 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8163b0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd816434 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-80, a2=0x0, a3=0x0, a5=a0 at entry (arg0), a6=0x11.
  The `jalr` at 0xd816450 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd816468 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8164a0 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+108]+16.
  The `beq` branch at 0xd816380 targets 0xd81647c, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd8163a4 targets 0xd8163b8, is taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `bne` branch at 0xd8163c8 targets 0xd81649c, is taken when a2(=[[[[0x1014]+276]+216]+112]) < a3(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when a2(=[[[[0x1014]+276]+216]+112]) >= a3(=[[[[0x1014]+276]+216]+108]+16) (unsigned).
  The `beq` branch at 0xd816444 targets 0xd816458, is taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beq` branch at 0xd816460 targets 0xd81648c, is taken when t9(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  The `beq` branch at 0xd816474 targets 0xd81648c and is always taken.
  The `beq` branch at 0xd8164a8 targets 0xd8163cc and is always taken.
  The return at 0xd816484 has v0 = 0x0.
  The return at 0xd816494 has v0 = ?.

- `__glx_GenTexturesEXT` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8164b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP32CRM32/libGL.so`.
  Range: 0xd8164b0-0xd816600 (336 bytes).
  It occupies 336 bytes.
  The `lw` at 0xd8164b8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8164c0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8164c8 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd8164f8 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8164fc, `lw` at 0xd8165a8.
  The `lw` at 0xd816508 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd816514, `lw` at 0xd816548, `lw` at 0xd8165fc.
  The `lw` at 0xd816518 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  The `sw` at 0xd816530 stores 4 bytes to [[[0x1014]+276]+216] +0x64.
  The `sh` at 0xd816538 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd816540, `sb` at 0xd816570.
  The `lw` at 0xd816544 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd816550 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd816558 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `lw` at 0xd81655c loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd816564 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd81656c stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd816578 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd816584 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd816590 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `lw` at 0xd8165b4 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `lw` at 0xd8165c0 loads 4 bytes from [[[0x1014]+276]+216] +0x7c.
  The `jalr` at 0xd8164f4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd81650c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd81658c calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-80, a2=0x0, a3=0x0, a4=0x10, a5=[[[[0x1014]+276]+216]+108].
  The `jalr` at 0xd8165a0 calls _XRead with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=?.
  The `jalr` at 0xd8165b8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd8165cc calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8165f0 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?, a5=[[[[0x1014]+276]+216]+108].
  The `beq` branch at 0xd8164e4 targets 0xd8165d4, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd816500 targets 0xd816514, is taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `bne` branch at 0xd816524 targets 0xd8165f0, is taken when t8(=[[[[0x1014]+276]+216]+112]) < t9(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t8(=[[[[0x1014]+276]+216]+112]) >= t9(=[[[[0x1014]+276]+216]+108]+16) (unsigned).
  The `beq` branch at 0xd8165ac targets 0xd8165c0, is taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beq` branch at 0xd8165c4 targets 0xd8165d4, is taken when t9(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  The `beq` branch at 0xd8165f8 targets 0xd81652c and is always taken.
  The return at 0xd8165e8 has v0 = one of ?, ret(?).

- `__glx_DeleteTexturesEXT` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd816600 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP32CRM32/libGL.so`.
  Range: 0xd816600-0xd816764 (356 bytes).
  It occupies 356 bytes.
  The `lw` at 0xd816608 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816614 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd816628 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd81664c loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd816650, `lw` at 0xd816700.
  The `lw` at 0xd81665c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd816670, `lw` at 0xd8166b8, `lw` at 0xd816760.
  The `lw` at 0xd816680 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  The `sw` at 0xd81669c stores 4 bytes to [[[0x1014]+276]+216] +0x64.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8166a4, `sb` at 0xd8166e8.
  The `sh` at 0xd8166b0 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  The `lw` at 0xd8166b4 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8166c4 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8166d0 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `lw` at 0xd8166d4 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd8166dc stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd8166e4 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd8166ec loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd8166f0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd8166fc stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `lw` at 0xd81670c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `lw` at 0xd816718 loads 4 bytes from [[[0x1014]+276]+216] +0x7c.
  The `jalr` at 0xd816648 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `jalr` at 0xd816660 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=[[[[0x1014]+276]+216]+1232], a3=?.
  The `jalr` at 0xd8166f8 calls memcpy with a0=[[[[0x1014]+276]+216]+108]+16, a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=[[[0x1014]+276]+60], a4=[[[[0x1014]+276]+216]+108], a5=a0 at entry (arg0), a6=0x10, a7=[[[0x1014]+276]+272].
  The `jalr` at 0xd816710 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=[[[[0x1014]+276]+216]+1232], a3=?.
  The `jalr` at 0xd816724 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd81674c calls _XFlush with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=?, a4=[[[[0x1014]+276]+216]+108].
  The `bltz` branch at 0xd816624 targets 0xd81672c, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0xd816634 targets 0xd81672c, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd816654 targets 0xd816668, is taken when a2(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a2(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `bne` branch at 0xd816690 targets 0xd816740, is taken when a3(=[[[[0x1014]+276]+216]+112]) < a6(?) (unsigned), and falls through when a3(=[[[[0x1014]+276]+216]+112]) >= a6(?) (unsigned).
  The `beq` branch at 0xd816704 targets 0xd816718, is taken when a2(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a2(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beq` branch at 0xd81671c targets 0xd816730, is taken when t9(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  The `beq` branch at 0xd81675c targets 0xd816694 and is always taken.
  The return at 0xd816738 has v0 = ?.

- `__glx_AreTexturesResidentEXT` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd816764 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP32CRM32/libGL.so`.
  Range: 0xd816764-0xd816950 (492 bytes).
  It occupies 492 bytes.
  The `lw` at 0xd81676c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd816778 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81678c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd8167d0 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8167d4, `lw` at 0xd8168e4.
  The `lw` at 0xd8167e0 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8167f4, `lw` at 0xd816840, `lw` at 0xd81694c.
  The `lw` at 0xd816804 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  The `sw` at 0xd816820 stores 4 bytes to [[[0x1014]+276]+216] +0x64.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd816828, `sb` at 0xd816874.
  The `sh` at 0xd816838 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  The `lw` at 0xd81683c loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd816848 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd816858 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd81685c, `lw` at 0xd816878.
  The `sw` at 0xd816864 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd816870 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `sw` at 0xd816880 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd81688c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `lw` at 0xd8168f0 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `lw` at 0xd8168fc loads 4 bytes from [[[0x1014]+276]+216] +0x7c.
  The `jalr` at 0xd8167cc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[[0x1014]+276].
  The `jalr` at 0xd8167e4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?, a4=[[[[0x1014]+276]+216]+1232], a5=a0 at entry (arg0).
  The `jalr` at 0xd816888 calls memcpy with a0=[[[[0x1014]+276]+216]+108]+16, a1=a1 at entry (arg1), a2=?, a3=?, a4=[[[[0x1014]+276]+216]+108], a7=a0 at entry (arg0).
  The `jalr` at 0xd8168a0 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-112, a2=0x0, a3=0x0.
  The `jalr` at 0xd8168bc calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0xd8168dc calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8168f4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?, a4=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd816908 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd816938 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?, a4=[[[[0x1014]+276]+216]+108], a5=(a0 << 0x2), a7=-0x4.
  The `bltz` branch at 0xd816788 targets 0xd816918, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `bne` branch at 0xd81679c targets 0xd8167c0, is taken when s0(=[[[0x1014]+276]+216]) != 0, and falls through when s0(=[[[0x1014]+276]+216]) == 0.
  The `beq` branch at 0xd8167d8 targets 0xd8167f0, is taken when a4(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a4(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `bne` branch at 0xd816814 targets 0xd816930, is taken when a2(=[[[[0x1014]+276]+216]+112]) < a3(?) (unsigned), and falls through when a2(=[[[[0x1014]+276]+216]+112]) >= a3(?) (unsigned).
  The `beq` branch at 0xd8168cc targets 0xd8168e4, is taken when (a4(=a0) & 0x3) == 0, and falls through when (a4(=a0) & 0x3) != 0.
  The `beq` branch at 0xd8168e8 targets 0xd8168fc, is taken when a4(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a4(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beq` branch at 0xd816900 targets 0xd8167a8, is taken when t9(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  The `beq` branch at 0xd816910 targets 0xd8167a8 and is always taken.
  The `beq` branch at 0xd816948 targets 0xd81681c and is always taken.
  The return at 0xd8167b8 has v0 = one of 0x0, ?.
  The return at 0xd816928 has v0 = 0x0.

- `__glx_LoadMatrixd` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd819d18 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP32CRM32/libGL.so`.
  Range: 0xd819d18-0xd819da8 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd819d28 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd819d38 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd819d40 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd819d58 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd819d64 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `lw` at 0xd819d68 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd819d78 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd819d60 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x80, a3=a3 at entry (arg3).
  The `jalr` at 0xd819d98 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+132, a2=?, a3=?.
  The `bne` branch at 0xd819d74 targets 0xd819d94, is taken when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+132) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+132) (unsigned).
  The `beq` branch at 0xd819da0 targets 0xd819d80 and is always taken.
  The return at 0xd819d8c has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_LoadMatrixf` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd819da8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP32CRM32/libGL.so`.
  Range: 0xd819da8-0xd819e38 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd819db8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd819dc8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd819dd0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd819de8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd819df4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `lw` at 0xd819df8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd819e08 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd819df0 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x40, a3=a3 at entry (arg3).
  The `jalr` at 0xd819e28 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+68, a2=?, a3=?.
  The `bne` branch at 0xd819e04 targets 0xd819e24, is taken when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+68) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+68) (unsigned).
  The `beq` branch at 0xd819e30 targets 0xd819e10 and is always taken.
  The return at 0xd819e1c has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glXPixmapBackdoor` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd821a9c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP32CRM32/libGL.so`.
  Range: 0xd821a9c-0xd821abc (32 bytes).
  It occupies 32 bytes.
  The `sw` at 0xd821aa8 stores 4 bytes to abs 0xd846d98.
  The `sw` at 0xd821aac stores 4 bytes to abs 0xd846d94.
  The `sw` at 0xd821ab0 stores 4 bytes to abs 0xd846d90.
  The `sw` at 0xd821ab8 stores 4 bytes to abs 0xd846d8c.
  The return at 0xd821ab4 has v0 = 0x2c734.

- `glXCreateGLXPixmap` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd833d0c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP32CRM32/libGL.so`.
  Range: 0xd833d0c-0xd833e50 (324 bytes).
  It occupies 324 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd833d4c, `lw` at 0xd833de8.
  The `lw` at 0xd833d58 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd833d64, `lw` at 0xd833da0, `lw` at 0xd833e38.
  The `lw` at 0xd833d68 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd833d88 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd833d90 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd833d98, `sb` at 0xd833db8.
  The `lw` at 0xd833d9c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd833da8 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd833db0 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sb` at 0xd833db4 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd833dbc loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `sw` at 0xd833dc0 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd833dc4 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `sw` at 0xd833dc8 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd833dcc stores 4 bytes to [a0+108] +0x8.
  The `lw` at 0xd833dd0 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xd833de4 stores 4 bytes to [a0+108] +0x10.
  The `lw` at 0xd833df4 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd833e00 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd833d38 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd833d5c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd833dd8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[a1+4], a3=[a1+8], a4=0xd, a6=[a0+96]+1, a7=[a0+108]+20.
  The `jalr` at 0xd833df8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd833e0c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd833e2c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd833d44 targets 0xd833e3c, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd833d50 targets 0xd833d64, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `bne` branch at 0xd833d74 targets 0xd833e2c, is taken when v1(=[a0+112]) < a0(=[a0+108]+20) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+20) (unsigned).
  The `beq` branch at 0xd833dec targets 0xd833e00, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xd833e04 targets 0xd833e18, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd833e34 targets 0xd833d7c and is always taken.
  The return at 0xd833e24 has v0 = ret(?).
  The return at 0xd833e48 has v0 = 0x0.

- `glXDestroyGLXPixmap` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd833e50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP32CRM32/libGL.so`.
  Range: 0xd833e50-0xd833f4c (252 bytes).
  It occupies 252 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd833e8c, `lw` at 0xd833efc.
  The `lw` at 0xd833e98 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd833ea4, `lw` at 0xd833edc, `lw` at 0xd833f48.
  The `lw` at 0xd833ea8 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd833ec4 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd833ecc stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd833ed4, `sb` at 0xd833ef8.
  The `lw` at 0xd833ed8 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd833ee4 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd833eec stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd833ef0 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd833ef4 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd833f08 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd833f14 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd833e78 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd833e9c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+1232].
  The `jalr` at 0xd833f0c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0xf, a3=[a0+1232], a4=[a0+96]+1, a5=[a0+108]+8, a6=0x2.
  The `jalr` at 0xd833f20 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd833f3c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd833e84 targets 0xd833f2c, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd833e90 targets 0xd833ea4, is taken when a3(=[a0+1232]) == 0, and falls through when a3(=[a0+1232]) != 0.
  The `bne` branch at 0xd833eb4 targets 0xd833f3c, is taken when v0(=[a0+112]) < v1(=[a0+108]+8) (unsigned), and falls through when v0(=[a0+112]) >= v1(=[a0+108]+8) (unsigned).
  The `beq` branch at 0xd833f00 targets 0xd833f14, is taken when a3(=[a0+1232]) == 0, and falls through when a3(=[a0+1232]) != 0.
  The `beq` branch at 0xd833f18 targets 0xd833f2c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd833f44 targets 0xd833ebc and is always taken.
  The return at 0xd833f34 has v0 = one of ret(__glXSetupForCommand), ?, ret(?).

- `glXCreateGLXPixmapWithConfigSGIX` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8390a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP32CRM32/libGL.so`.
  Range: 0xd8390a0-0xd8391f0 (336 bytes).
  It occupies 336 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8390e0, `lw` at 0xd839188.
  The `lw` at 0xd8390ec loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8390f8, `lw` at 0xd839134, `lw` at 0xd8391d8.
  The `lw` at 0xd8390fc loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83911c stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd839124 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83912c, `sb` at 0xd839158.
  The `lw` at 0xd839130 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83913c stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd839148 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd839150 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd839154 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83915c loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xd839160 stores 4 bytes to [a0+108] +0xc.
  The `lw` at 0xd839164 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xd839168 stores 4 bytes to [a0+108] +0x14.
  The `sw` at 0xd83916c stores 4 bytes to [a0+108] +0x10.
  The `lw` at 0xd839170 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xd839184 stores 4 bytes to [a0+108] +0x18.
  The `lw` at 0xd839194 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd8391a0 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd8390cc calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8390f0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd839178 calls (unknown callee) with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[a1+72], a3=[a1+36], a4=0x10006, a5=0x10, a7=[a0+96]+1.
  The `jalr` at 0xd839198 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd8391ac calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8391cc calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8390d8 targets 0xd8391dc, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd8390e4 targets 0xd8390f8, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `bne` branch at 0xd839108 targets 0xd8391cc, is taken when v1(=[a0+112]) < a0(=[a0+108]+28) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+28) (unsigned).
  The `beq` branch at 0xd83918c targets 0xd8391a0, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xd8391a4 targets 0xd8391b8, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8391d4 targets 0xd839110 and is always taken.
  The return at 0xd8391c4 has v0 = ret(?).
  The return at 0xd8391e8 has v0 = 0x0.

- `glXCreatePixmap` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd83b64c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP32CRM32/libGL.so`.
  Range: 0xd83b64c-0xd83b794 (328 bytes).
  It occupies 328 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83b68c, `lw` at 0xd83b72c.
  The `lw` at 0xd83b698 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83b6a4, `lw` at 0xd83b6e0, `lw` at 0xd83b77c.
  The `lw` at 0xd83b6a8 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83b6c8 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd83b6d0 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83b6d8, `sb` at 0xd83b6f8.
  The `lw` at 0xd83b6dc loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83b6e8 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83b6f0 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sb` at 0xd83b6f4 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83b6fc loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xd83b700 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd83b704 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xd83b708 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd83b70c stores 4 bytes to [a0+108] +0x8.
  The `lw` at 0xd83b710 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xd83b724 stores 4 bytes to [a0+108] +0x14.
  The `sw` at 0xd83b728 stores 4 bytes to [a0+108] +0x10.
  The `lw` at 0xd83b738 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd83b744 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd83b678 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83b69c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd83b718 calls (unknown callee) with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[a1+72], a3=[a1+36], a4=0x16, a6=[a0+96]+1, a7=[a0+108]+24.
  The `jalr` at 0xd83b73c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd83b750 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83b770 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd83b684 targets 0xd83b780, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd83b690 targets 0xd83b6a4, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `bne` branch at 0xd83b6b4 targets 0xd83b770, is taken when v1(=[a0+112]) < a0(=[a0+108]+24) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+24) (unsigned).
  The `beq` branch at 0xd83b730 targets 0xd83b744, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xd83b748 targets 0xd83b75c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83b778 targets 0xd83b6bc and is always taken.
  The return at 0xd83b768 has v0 = ret(?).
  The return at 0xd83b78c has v0 = 0x0.

- `glXDestroyPixmap` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd83b794 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP32CRM32/libGL.so`.
  Range: 0xd83b794-0xd83b890 (252 bytes).
  It occupies 252 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83b7d0, `lw` at 0xd83b840.
  The `lw` at 0xd83b7dc loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83b7e8, `lw` at 0xd83b820, `lw` at 0xd83b88c.
  The `lw` at 0xd83b7ec loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83b808 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd83b810 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83b818, `sb` at 0xd83b83c.
  The `lw` at 0xd83b81c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83b828 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83b830 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83b834 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd83b838 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83b84c loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd83b858 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd83b7bc calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83b7e0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+1232].
  The `jalr` at 0xd83b850 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x17, a3=[a0+1232], a4=[a0+96]+1, a5=[a0+108]+8, a6=0x2.
  The `jalr` at 0xd83b864 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83b880 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd83b7c8 targets 0xd83b870, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd83b7d4 targets 0xd83b7e8, is taken when a3(=[a0+1232]) == 0, and falls through when a3(=[a0+1232]) != 0.
  The `bne` branch at 0xd83b7f8 targets 0xd83b880, is taken when v0(=[a0+112]) < v1(=[a0+108]+8) (unsigned), and falls through when v0(=[a0+112]) >= v1(=[a0+108]+8) (unsigned).
  The `beq` branch at 0xd83b844 targets 0xd83b858, is taken when a3(=[a0+1232]) == 0, and falls through when a3(=[a0+1232]) != 0.
  The `beq` branch at 0xd83b85c targets 0xd83b870, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83b888 targets 0xd83b800 and is always taken.
  The return at 0xd83b878 has v0 = one of ret(__glXSetupForCommand), ?, ret(?).

- `glXCreateWindow` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd83bd44 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP32CRM32/libGL.so`.
  Range: 0xd83bd44-0xd83be8c (328 bytes).
  It occupies 328 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83bd84, `lw` at 0xd83be20.
  The `lw` at 0xd83bd90 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83bd9c, `lw` at 0xd83bdd4, `lw` at 0xd83be74.
  The `lw` at 0xd83bda0 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83bdbc stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd83bdc4 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83bdcc, `sb` at 0xd83bdec.
  The `lw` at 0xd83bdd0 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83bddc stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83bde4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sb` at 0xd83bde8 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83bdf0 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xd83bdf4 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd83bdf8 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xd83bdfc stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd83be00 stores 4 bytes to [a0+108] +0x8.
  The `lw` at 0xd83be04 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xd83be18 stores 4 bytes to [a0+108] +0x14.
  The `sw` at 0xd83be1c stores 4 bytes to [a0+108] +0x10.
  The `lw` at 0xd83be2c loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd83be38 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd83bd70 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83bd94 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd83be0c calls (unknown callee) with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[a1+72], a3=[a1+36], a4=0x1f, a6=[a0+96]+1, a7=[a0+108]+24.
  The `jalr` at 0xd83be30 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd83be44 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83be68 calls _XFlush with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The `beq` branch at 0xd83bd7c targets 0xd83be78, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd83bd88 targets 0xd83bd9c, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `bne` branch at 0xd83bdac targets 0xd83be64, is taken when v1(=[a0+112]) < a0(=[a0+108]+24) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+24) (unsigned).
  The `beq` branch at 0xd83be24 targets 0xd83be38, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xd83be3c targets 0xd83be50, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83be70 targets 0xd83bdb0 and is always taken.
  The return at 0xd83be5c has v0 = ret(?).
  The return at 0xd83be84 has v0 = 0x0.

- `glXDestroyWindow` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd83be8c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP32CRM32/libGL.so`.
  Range: 0xd83be8c-0xd83bf88 (252 bytes).
  It occupies 252 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83bec8, `lw` at 0xd83bf38.
  The `lw` at 0xd83bed4 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83bee0, `lw` at 0xd83bf18, `lw` at 0xd83bf84.
  The `lw` at 0xd83bee4 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83bf00 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd83bf08 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83bf10, `sb` at 0xd83bf34.
  The `lw` at 0xd83bf14 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83bf20 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83bf28 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83bf2c stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd83bf30 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83bf44 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd83bf50 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd83beb4 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83bed8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+1232].
  The `jalr` at 0xd83bf48 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x20, a3=[a0+1232], a4=[a0+96]+1, a5=[a0+108]+8, a6=0x2.
  The `jalr` at 0xd83bf5c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83bf78 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd83bec0 targets 0xd83bf68, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd83becc targets 0xd83bee0, is taken when a3(=[a0+1232]) == 0, and falls through when a3(=[a0+1232]) != 0.
  The `bne` branch at 0xd83bef0 targets 0xd83bf78, is taken when v0(=[a0+112]) < v1(=[a0+108]+8) (unsigned), and falls through when v0(=[a0+112]) >= v1(=[a0+108]+8) (unsigned).
  The `beq` branch at 0xd83bf3c targets 0xd83bf50, is taken when a3(=[a0+1232]) == 0, and falls through when a3(=[a0+1232]) != 0.
  The `beq` branch at 0xd83bf54 targets 0xd83bf68, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83bf80 targets 0xd83bef8 and is always taken.
  The return at 0xd83bf70 has v0 = one of ret(__glXSetupForCommand), ?, ret(?).

- `glXBindChannelToWindowSGIX` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd83c9bc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP32CRM32/libGL.so`.
  Range: 0xd83c9bc-0xd83cb1c (352 bytes).
  It occupies 352 bytes.
  The `lw` at 0xd83c9d8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83c9f8 loads 4 bytes from [0x1014] +0x114.
  The `sb` at 0xd83ca94 stores 1 byte to (ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3)) +0x48.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd83ca98, `lw` at 0xd83ca9c.
  The `lw` at 0xd83cab0 loads 4 bytes from (ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3)) +0x44.
  The `sb` at 0xd83cb18 stores 1 byte to (ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3)) +0x49.
  The `jalr` at 0xd83ca00 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd83ca24 calls __glXInitChannelRectState [0xd83c81c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize).
  The `jalr` at 0xd83ca50 calls XSGIvcSetPlatformParameter with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=-0x64, a4=sp-80, a5=0x4.
  The `jalr` at 0xd83ca64 calls XSync with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0xd83caac calls (unknown callee) with a0=[(ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))+68], a1=0x1, a2=?, a3=?.
  The `beq` branch at 0xd83ca08 targets 0xd83cac8, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` branch at 0xd83ca2c targets 0xd83caec, is taken when v0(=ret(__glXInitChannelRectState)) == 0, and falls through when v0(=ret(__glXInitChannelRectState)) != 0.
  The `beq` branch at 0xd83ca90 targets 0xd83cb0c, is taken when a0(=a3) == 0, and falls through when a0(=a3) != 0.
  The `beq` branch at 0xd83caa4 targets 0xd83cb04, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xd83cafc targets 0xd83cab8 and is always taken.
  The `beq` branch at 0xd83cb04 targets 0xd83cab8 and is always taken.
  The `beq` branch at 0xd83cb14 targets 0xd83cab4 and is always taken.
  The return at 0xd83cac0 has v0 = one of 0x0, 0x1.
  The return at 0xd83cae4 has v0 = 0x0.

- `__glx_TextureColorMaskSGIS` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd840c34 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP32CRM32/libGL.so`.
  Range: 0xd840c34-0xd840cb0 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd840c34 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd840c38 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd840c3c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sb` at 0xd840c40 stores 1 byte to [[[0x1014]+276]+4] +0x7.
  The `sb` at 0xd840c44 stores 1 byte to [[[0x1014]+276]+4] +0x6.
  The `sb` at 0xd840c48 stores 1 byte to [[[0x1014]+276]+4] +0x5.
  The `sb` at 0xd840c4c stores 1 byte to [[[0x1014]+276]+4] +0x4.
  The `sh` at 0xd840c54 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd840c5c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `lw` at 0xd840c60 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd840c84 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd840ca0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[[[0x1014]+276]+4]+8, a6=[[0x1014]+276], a7=0x822.
  The `bne` branch at 0xd840c80 targets 0xd840c94, is taken when at(=[[[0x1014]+276]+8]) < a5(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when at(=[[[0x1014]+276]+8]) >= a5(=[[[0x1014]+276]+4]+8) (unsigned).
  The `beq` branch at 0xd840ca8 targets 0xd840c88 and is always taken.
  The return at 0xd840c8c has v0 = one of 0xd59c, ret(__glXFlushRenderBuffer).

- `__glx_AreTexturesResident` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd840cb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP32CRM32/libGL.so`.
  Range: 0xd840cb0-0xd840e90 (480 bytes).
  It occupies 480 bytes.
  The `lw` at 0xd840cb8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd840cc4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd840cd8 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd840d1c loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd840d20, `lw` at 0xd840e20.
  The `lw` at 0xd840d2c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd840d40, `lw` at 0xd840d84, `lw` at 0xd840e8c.
  The `lw` at 0xd840d50 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  The `sw` at 0xd840d6c stores 4 bytes to [[[0x1014]+276]+216] +0x64.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd840d70, `sb` at 0xd840db0.
  The `sh` at 0xd840d7c stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  The `lw` at 0xd840d80 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd840d8c stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd840d9c stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd840da0, `lw` at 0xd840db4.
  The `sb` at 0xd840da8 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `sw` at 0xd840dbc stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd840dc8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `lw` at 0xd840e2c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `lw` at 0xd840e38 loads 4 bytes from [[[0x1014]+276]+216] +0x7c.
  The `jalr` at 0xd840d18 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[[0x1014]+276].
  The `jalr` at 0xd840d30 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?, a4=[[[[0x1014]+276]+216]+1232], a5=a0 at entry (arg0).
  The `jalr` at 0xd840dc4 calls memcpy with a0=[[[[0x1014]+276]+216]+108]+12, a1=a1 at entry (arg1), a2=?, a3=?, a4=[[[[0x1014]+276]+216]+108], a7=a0 at entry (arg0).
  The `jalr` at 0xd840ddc calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-112, a2=0x0, a3=0x0.
  The `jalr` at 0xd840df8 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0xd840e18 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd840e30 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?, a4=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd840e44 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd840e78 calls _XFlush with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=?, a3=?, a4=[[[[0x1014]+276]+216]+108], a5=(a0 << 0x2), a7=-0x4.
  The `bltz` branch at 0xd840cd4 targets 0xd840e54, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `bne` branch at 0xd840ce8 targets 0xd840d0c, is taken when s0(=[[[0x1014]+276]+216]) != 0, and falls through when s0(=[[[0x1014]+276]+216]) == 0.
  The `beq` branch at 0xd840d24 targets 0xd840d3c, is taken when a4(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a4(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `bne` branch at 0xd840d60 targets 0xd840e6c, is taken when a2(=[[[[0x1014]+276]+216]+112]) < a3(?) (unsigned), and falls through when a2(=[[[[0x1014]+276]+216]+112]) >= a3(?) (unsigned).
  The `beq` branch at 0xd840e08 targets 0xd840e20, is taken when (a4(=a0) & 0x3) == 0, and falls through when (a4(=a0) & 0x3) != 0.
  The `beq` branch at 0xd840e24 targets 0xd840e38, is taken when a4(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a4(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beq` branch at 0xd840e3c targets 0xd840cf4, is taken when t9(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  The `beq` branch at 0xd840e4c targets 0xd840cf4 and is always taken.
  The `beq` branch at 0xd840e88 targets 0xd840d64 and is always taken.
  The return at 0xd840d04 has v0 = one of 0x0, ?.
  The return at 0xd840e64 has v0 = 0x0.

- `__glx_DeleteTextures` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd840e90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP32CRM32/libGL.so`.
  Range: 0xd840e90-0xd840fec (348 bytes).
  It occupies 348 bytes.
  The `lw` at 0xd840e98 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd840ea4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd840eb8 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd840edc loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd840ee0, `lw` at 0xd840f88.
  The `lw` at 0xd840eec loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd840f00, `lw` at 0xd840f44, `lw` at 0xd840fe8.
  The `lw` at 0xd840f10 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  The `sw` at 0xd840f2c stores 4 bytes to [[[0x1014]+276]+216] +0x64.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd840f30, `sb` at 0xd840f70.
  The `sh` at 0xd840f3c stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  The `lw` at 0xd840f40 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd840f50 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd840f5c stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `lw` at 0xd840f60 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd840f68 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd840f74 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd840f78 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd840f84 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `lw` at 0xd840f94 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `lw` at 0xd840fa0 loads 4 bytes from [[[0x1014]+276]+216] +0x7c.
  The `jalr` at 0xd840ed8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `jalr` at 0xd840ef0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=[[[[0x1014]+276]+216]+1232], a3=?.
  The `jalr` at 0xd840f80 calls memcpy with a0=[[[[0x1014]+276]+216]+108]+12, a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=[[[0x1014]+276]+60], a4=[[[[0x1014]+276]+216]+108], a5=a0 at entry (arg0), a6=[[[0x1014]+276]+272], a7=[[[[0x1014]+276]+216]+96]+1.
  The `jalr` at 0xd840f98 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=[[[[0x1014]+276]+216]+1232], a3=?.
  The `jalr` at 0xd840fac calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd840fd4 calls _XFlush with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=?, a4=[[[[0x1014]+276]+216]+108].
  The `bltz` branch at 0xd840eb4 targets 0xd840fb4, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0xd840ec4 targets 0xd840fb4, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd840ee4 targets 0xd840ef8, is taken when a2(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a2(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `bne` branch at 0xd840f20 targets 0xd840fc8, is taken when a3(=[[[[0x1014]+276]+216]+112]) < a6(?) (unsigned), and falls through when a3(=[[[[0x1014]+276]+216]+112]) >= a6(?) (unsigned).
  The `beq` branch at 0xd840f8c targets 0xd840fa0, is taken when a2(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a2(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beq` branch at 0xd840fa4 targets 0xd840fb8, is taken when t9(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  The `beq` branch at 0xd840fe4 targets 0xd840f24 and is always taken.
  The return at 0xd840fc0 has v0 = ?.

- `__glx_GenTextures` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd840fec (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP32CRM32/libGL.so`.
  Range: 0xd840fec-0xd841130 (324 bytes).
  It occupies 324 bytes.
  The `lw` at 0xd840ff4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd840ffc loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd841004 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd841034 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd841038, `lw` at 0xd8410d4.
  The `lw` at 0xd841044 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd841050, `lw` at 0xd84107c, `lw` at 0xd84112c.
  The `lw` at 0xd841054 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  The `sw` at 0xd841068 stores 4 bytes to [[[0x1014]+276]+216] +0x64.
  The `sh` at 0xd841070 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd841074, `sb` at 0xd84109c.
  The `lw` at 0xd841078 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd841084 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd84108c stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `lw` at 0xd841090 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd841098 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd8410a4 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd8410b0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd8410bc stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `lw` at 0xd8410e0 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `lw` at 0xd8410ec loads 4 bytes from [[[0x1014]+276]+216] +0x7c.
  The `jalr` at 0xd841030 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd841048 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd8410b8 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-80, a2=0x0, a3=0x0, a5=[[[[0x1014]+276]+216]+108].
  The `jalr` at 0xd8410cc calls _XRead with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=?.
  The `jalr` at 0xd8410e4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd8410f8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd841120 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?, a5=[[[[0x1014]+276]+216]+108].
  The `beq` branch at 0xd841020 targets 0xd841100, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd84103c targets 0xd841050, is taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `bne` branch at 0xd841060 targets 0xd84111c, is taken when t8(=[[[[0x1014]+276]+216]+112]) < t9(=[[[[0x1014]+276]+216]+108]+12) (unsigned), and falls through when t8(=[[[[0x1014]+276]+216]+112]) >= t9(=[[[[0x1014]+276]+216]+108]+12) (unsigned).
  The `beq` branch at 0xd8410d8 targets 0xd8410ec, is taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beq` branch at 0xd8410f0 targets 0xd841100, is taken when t9(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  The `beq` branch at 0xd841128 targets 0xd841064 and is always taken.
  The return at 0xd841114 has v0 = one of ?, ret(?).

- `__glx_IsTexture` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd841130 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP32CRM32/libGL.so`.
  Range: 0xd841130-0xd841280 (336 bytes).
  It occupies 336 bytes.
  The `lw` at 0xd841138 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd84113c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd841144 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd841178 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd84117c, `lw` at 0xd84120c.
  The `lw` at 0xd841188 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd841194, `lw` at 0xd8411c4, `lw` at 0xd84127c.
  The `lw` at 0xd841198 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  The `sw` at 0xd8411b0 stores 4 bytes to [[[0x1014]+276]+216] +0x64.
  The `sh` at 0xd8411b8 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8411bc, `sb` at 0xd8411e8.
  The `lw` at 0xd8411c0 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8411cc stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8411d4 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8411d8, `lw` at 0xd8411f0.
  The `sb` at 0xd8411e0 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `sw` at 0xd8411fc stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd841208 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `lw` at 0xd84121c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `lw` at 0xd841228 loads 4 bytes from [[[0x1014]+276]+216] +0x7c.
  The `jalr` at 0xd841174 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd84118c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd841204 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-80, a2=0x0, a3=0x0, a5=a0 at entry (arg0), a7=[[[[0x1014]+276]+216]+96]+1.
  The `jalr` at 0xd841220 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd841238 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd841270 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+108]+12.
  The `beq` branch at 0xd84115c targets 0xd84124c, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd841180 targets 0xd841194, is taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `bne` branch at 0xd8411a4 targets 0xd84126c, is taken when a2(=[[[[0x1014]+276]+216]+112]) < a3(=[[[[0x1014]+276]+216]+108]+12) (unsigned), and falls through when a2(=[[[[0x1014]+276]+216]+112]) >= a3(=[[[[0x1014]+276]+216]+108]+12) (unsigned).
  The `beq` branch at 0xd841214 targets 0xd841228, is taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beq` branch at 0xd841230 targets 0xd84125c, is taken when t9(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  The `beq` branch at 0xd841244 targets 0xd84125c and is always taken.
  The `beq` branch at 0xd841278 targets 0xd8411a8 and is always taken.
  The return at 0xd841254 has v0 = 0x0.
  The return at 0xd841264 has v0 = ?.

- `_init` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8434a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP32CRM32/libGL.so`.
  Range: 0xd8434a0-0xd8434d8 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0xd8434c0 calls __glXInit [0xd80e1b8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd8434d0 has v0 = ret(__glXInit).
