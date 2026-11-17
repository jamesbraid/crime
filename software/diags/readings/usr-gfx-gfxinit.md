# Readings: `usr/gfx/gfxinit`

One entry per routine, filed here from the reading batches by binary.

- `lg1_info` in `usr/gfx/gfxinit` at 0x1000693c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1000693c-0x10006c8c (848 bytes).
  It occupies 848 bytes.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x28, including `lbu` at 0x10006970, `lbu` at 0x10006a80.
  5 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x29, including `lbu` at 0x100069a4, `lbu` at 0x10006c3c, `lbu` at 0x10006c50.
  The `lbu` at 0x100069e0 loads 1 byte from a0 (arg0 at entry) +0x2a.
  The `lbu` at 0x10006a14 loads 1 byte from a0 (arg0 at entry) +0x30.
  The `sb` at 0x10006a3c stores 1 byte to a0 (arg0 at entry) +0x30.
  The `lbu` at 0x10006a94 loads 1 byte from a0 (arg0 at entry) +0x2b.
  The `lw` at 0x10006ab0 loads 4 bytes from table(0x10020430) +0x0.
  The `lw` at 0x10006adc loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `jalr` at 0x10006968 calls printf with a0=0x10027aa0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100069d8 calls printf with a0=0x100203e0, a1=?, a2=one of 0x1, 0x10020000, a3=?.
  The `jalr` at 0x10006a0c calls printf with a0=0x100203f8, a1=one of 0x100203d0, 0x10027aa8, 0x10027ab4, 0x10027ab6, a2=0x1, a3=?.
  The `jalr` at 0x10006a78 calls printf with a0=0x10020420, a1=one of 0x10020410, 0x10027ac4, 0x10027ac8, a2=?, a3=one of 0x10027ab8, 0x10027ac0.
  The `jalr` at 0x10006a8c calls printf with a0=0x10027aa0, a1=[a0+40]:1, a2=?, a3=?.
  The `jalr` at 0x10006ac4 calls printf with a0=0x10020450, a1=[a0+43]:1, a2=table(0x10020430), a3=?.
  The `jalr` at 0x10006ad4 calls printf with a0=0x10020468, a1=?, a2=?, a3=?.
  The `jalr` at 0x10006af0 calls printf with a0=0x10020478, a1=one of 0x10027ac0, 0x10027ae0, a2=?, a3=?.
  The `jalr` at 0x10006b80 calls sprintf with a0=0x10027810, a1=0x10027acc, a2=?, a3=?.
  The `jalr` at 0x10006bbc calls printf with a0=0x10027ad0, a1=[a0+43]:1, a2=table(0x10020430), a3=entry(0x10020430).
  The `jalr` at 0x10006bcc calls printf with a0=0x10027aa8, a1=[a0+43]:1, a2=table(0x10020430), a3=entry(0x10020430).
  The `jalr` at 0x10006be0 calls printf with a0=0x10027ad4, a1=[a0+43]:1, a2=table(0x10020430), a3=entry(0x10020430).
  The `jalr` at 0x10006bf4 calls printf with a0=0x10027ad8, a1=[a0+43]:1, a2=table(0x10020430), a3=entry(0x10020430).
  The `jalr` at 0x10006c08 calls printf with a0=0x10027adc, a1=[a0+43]:1, a2=table(0x10020430), a3=entry(0x10020430).
  The `jalr` at 0x10006c30 calls printf with a0=0x100203c0, a1=[a0+40]:1, a2=?, a3=?.
  The `jalr` at 0x10006c44 calls printf with a0=0x100203b0, a1=[a0+40]:1, a2=?, a3=?.
  The `jalr` at 0x10006c58 calls printf with a0=0x10020398, a1=[a0+40]:1, a2=?, a3=?.
  The `jalr` at 0x10006c6c calls printf with a0=0x10020380, a1=[a0+40]:1, a2=?, a3=?.
  The `beq` branch at 0x10006978 targets 0x10006c28, is taken when a1(=[a0+40]:1) == 0, and falls through when a1(=[a0+40]:1) != 0.
  The `beq` branch at 0x10006984 targets 0x10006c40, is taken when a1(=[a0+40]:1) == v0(=0x1), and falls through when a1(=[a0+40]:1) != v0(=0x1).
  The `beq` branch at 0x10006990 targets 0x10006c54, is taken when a1(=[a0+40]:1) == v1(=0x2), and falls through when a1(=[a0+40]:1) != v1(=0x2).
  The `beq` branch at 0x1000699c targets 0x10006c68, is taken when a1(=[a0+40]:1) == a0(=0x3), and falls through when a1(=[a0+40]:1) != a0(=0x3).
  The `beq` branch at 0x100069a8 targets 0x10006b18, is taken when a1(=[a0+41]:1) == 0, and falls through when a1(=[a0+41]:1) != 0.
  The `beq` branch at 0x100069b0 targets 0x10006b54, is taken when a1(=[a0+41]:1) == a2(=0x1), and falls through when a1(=[a0+41]:1) != a2(=0x1).
  The `beq` branch at 0x100069b8 targets 0x10006ba0, is taken when a1(=[a0+41]:1) == a3(=0x2), and falls through when a1(=[a0+41]:1) != a3(=0x2).
  The `beq` branch at 0x100069c0 targets 0x10006c18, is taken when a1(=[a0+41]:1) == a4(=-0x1), and falls through when a1(=[a0+41]:1) != a4(=-0x1).
  The `beq` branch at 0x100069e4 targets 0x10006b20, is taken when a1(=[a0+42]:1) == 0, and falls through when a1(=[a0+42]:1) != 0.
  The `beq` branch at 0x100069ec targets 0x10006b5c, is taken when a1(=[a0+42]:1) == a2(=0x1), and falls through when a1(=[a0+42]:1) != a2(=0x1).
  The `beq` branch at 0x100069f4 targets 0x10006ba8, is taken when a1(=[a0+42]:1) == a3(=-0x1), and falls through when a1(=[a0+42]:1) != a3(=-0x1).
  The `beq` branch at 0x10006a1c targets 0x10006b28, is taken when (a2(=[a0+48]:1) & 0x80) == 0, and falls through when (a2(=[a0+48]:1) & 0x80) != 0.
  The `beq` branch at 0x10006a28 targets 0x10006b64, is taken when (a2(=[a0+48]:1) & 0x40) == 0, and falls through when (a2(=[a0+48]:1) & 0x40) != 0.
  The `beq` branch at 0x10006a40 targets 0x10006b6c, is taken when (a1(?) & 0xff) == 0, and falls through when (a1(?) & 0xff) != 0.
  The `beq` branch at 0x10006a4c targets 0x10006bb0, is taken when a1(?) == a3(=0x1), and falls through when a1(?) != a3(=0x1).
  The `beq` branch at 0x10006a54 targets 0x10006c20, is taken when a1(?) == a4(=0x3), and falls through when a1(?) != a4(=0x3).
  The `beq` branch at 0x10006a64 targets 0x10006b78, is taken when a1(=one of 0x10027ac4, 0x10027ac8) == 0, and falls through when a1(=one of 0x10027ac4, 0x10027ac8) != 0.
  The `beq` branch at 0x10006a84 targets 0x10006af8, is taken when a1(=[a0+40]:1) == 0, and falls through when a1(=[a0+40]:1) != 0.
  The `beq` branch at 0x10006aa8 targets 0x10006abc, is taken when a1(=[a0+43]:1) >= 0x8 (unsigned), and falls through when a1(=[a0+43]:1) < 0x8 (unsigned).
  The `beq` branch at 0x10006ae0 targets 0x10006b98, is taken when a1(=[a0+44]) == 0, and falls through when a1(=[a0+44]) != 0.
  The `beq` branch at 0x10006b18 targets 0x100069cc and is always taken.
  The `beq` branch at 0x10006b20 targets 0x10006a00 and is always taken.
  The `beq` branch at 0x10006b34 targets 0x10006b74, is taken when a2(=[a0+48]:1) >= 0x3 (signed), and falls through when a2(=[a0+48]:1) < 0x3 (signed).
  The `beq` branch at 0x10006b3c targets 0x10006c7c, is taken when a2(=[a0+48]:1) == a3(=0x1), and falls through when a2(=[a0+48]:1) != a3(=0x1).
  The `bne` branch at 0x10006b44 targets 0x10006a64, is taken when a2(=[a0+48]:1) != a4(=0x2), and falls through when a2(=[a0+48]:1) == a4(=0x2).
  The `beq` branch at 0x10006b4c targets 0x10006c84 and is always taken.
  The `beq` branch at 0x10006b54 targets 0x100069cc and is always taken.
  The `beq` branch at 0x10006b5c targets 0x10006a00 and is always taken.
  The `beq` branch at 0x10006b64 targets 0x10006a30 and is always taken.
  The `beq` branch at 0x10006b6c targets 0x10006a60 and is always taken.
  The `beq` branch at 0x10006b90 targets 0x10006a68 and is always taken.
  The `beq` branch at 0x10006b98 targets 0x10006ae8 and is always taken.
  The `beq` branch at 0x10006ba0 targets 0x100069cc and is always taken.
  The `beq` branch at 0x10006ba8 targets 0x10006a00 and is always taken.
  The `beq` branch at 0x10006bb0 targets 0x10006a60 and is always taken.
  The `beq` branch at 0x10006bc4 targets 0x10006ad0 and is always taken.
  The `beq` branch at 0x10006bd4 targets 0x10006ad0 and is always taken.
  The `beq` branch at 0x10006be8 targets 0x10006ad0 and is always taken.
  The `beq` branch at 0x10006bfc targets 0x10006ad0 and is always taken.
  The `beq` branch at 0x10006c10 targets 0x10006ad0 and is always taken.
  The `beq` branch at 0x10006c18 targets 0x100069cc and is always taken.
  The `beq` branch at 0x10006c20 targets 0x10006a64 and is always taken.
  The `beq` branch at 0x10006c38 targets 0x100069a8 and is always taken.
  The `beq` branch at 0x10006c4c targets 0x100069a8 and is always taken.
  The `beq` branch at 0x10006c60 targets 0x100069a8 and is always taken.
  The `beq` branch at 0x10006c74 targets 0x100069a8 and is always taken.
  The `beq` branch at 0x10006c7c targets 0x10006b44 and is always taken.
  The `beq` branch at 0x10006c84 targets 0x10006a64 and is always taken.
  The return at 0x10006b10 has v0 = ret(printf).
  The indirect jump at 0x10006ab4 uses the jump table at 0x10020430 with targets 0x10006abc, 0x10006c04, 0x10006bf0, 0x10006bdc, 0x10006c04, 0x10006bf0, 0x10006bb8, 0x10006bcc.
  The indirect jump at 0x10006ab4 uses the jump table at 0x10020430 with targets 0x10006abc, 0x10006c04, 0x10006bf0, 0x10006bdc, 0x10006c04, 0x10006bf0, 0x10006bb8, 0x10006bcc.
  The indirect jump at 0x10006ab4 uses the jump table at 0x10020430 with targets 0x10006abc, 0x10006c04, 0x10006bf0, 0x10006bdc, 0x10006c04, 0x10006bf0, 0x10006bb8, 0x10006bcc.
  The indirect jump at 0x10006ab4 uses the jump table at 0x10020430 with targets 0x10006abc, 0x10006c04, 0x10006bf0, 0x10006bdc, 0x10006c04, 0x10006bf0, 0x10006bb8, 0x10006bcc.
  The indirect jump at 0x10006ab4 uses the jump table at 0x10020430 with targets 0x10006abc, 0x10006c04, 0x10006bf0, 0x10006bdc, 0x10006c04, 0x10006bf0, 0x10006bb8, 0x10006bcc.
  The indirect jump at 0x10006ab4 uses the jump table at 0x10020430 with targets 0x10006abc, 0x10006c04, 0x10006bf0, 0x10006bdc, 0x10006c04, 0x10006bf0, 0x10006bb8, 0x10006bcc.

- `loadfile` in `usr/gfx/gfxinit` at 0x10006c8c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10006c8c-0x100076d0 (2628 bytes).
  It occupies 2628 bytes.
  The `lbu` at 0x10006cd0 loads 1 byte from a2 (arg2 at entry) +0x0.
  The `lw` at 0x10006d04 loads 4 bytes from sym(ucode_dir) +0x0.
  The `ld` at 0x10006d48 loads 8 bytes from abs 0x100204a0.
  The `ld` at 0x10006d4c loads 8 bytes from abs 0x10020498.
  The `lw` at 0x10007140 loads 4 bytes from table(0x10020578) +0x0.
  The `jalr` at 0x10006d14 calls strcpy with a0=sp-528, a1=[sym(ucode_dir)], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10006d2c calls strcat with a0=sp-528, a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0x10006d68 calls strcpy with a0=sp-528, a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10006d84 calls open with a0=sp-528, a1=0x0, a2=?, a3=?.
  The `jalr` at 0x10006dac calls printf with a0=0x100204c0, a1=sp-528, a2=?, a3=a7 at entry (arg7).
  The `jalr` at 0x10006dc4 calls read with a0=ret(open), a1=sp-272, a2=0x4, a3=?.
  The `jalr` at 0x10006de8 calls syslog with a0=0x2, a1=0x100204d0, a2=sp-528, a3=?.
  The `jalr` at 0x10006df4 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0x10006e1c calls syslog with a0=0x2, a1=0x100204a8, a2=sp-528, a3=?.
  The `jalr` at 0x10006e3c calls lseek with a0=ret(open), a1=0x0, a2=0x0, a3=?.
  The `jalr` at 0x10006e64 calls read with a0=ret(open), a1=sp-264, a2=0x20, a3=?.
  The `jal` at 0x10006eac calls (unnamed) [0x100078d4] with a0=a1 at entry (arg1), a1=ret(open), a2=a3 at entry (arg3), a3=?, a4=a6 at entry (arg6).
  The `jalr` at 0x10006ebc calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0x10006edc calls syslog with a0=0x2, a1=0x100204f0, a2=sp-528, a3=?.
  The `jalr` at 0x10006ef8 calls syslog with a0=0x2, a1=0x10020508, a2=sp-528, a3=0x20.
  The `jalr` at 0x10006f04 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0x10006f40 calls read with a0=ret(open), a1=sp-232, a2=0x2c, a3=?.
  The `jalr` at 0x10006f60 calls lseek with a0=ret(open), a1=?, a2=0x0, a3=sym(lseek).
  The `jal` at 0x10006fb4 calls (unnamed) [0x100078d4] with a0=a1 at entry (arg1), a1=ret(open), a2=a3 at entry (arg3), a3=a4 at entry (arg4), a4=a6 at entry (arg6), a5=0x0.
  The `jalr` at 0x10006fc4 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jal` at 0x10006fe4 calls venice_loadfile_ge8 [0x1001199c] with a0=ret(open), a1=-0x1, a2=a5 at entry (arg5), a3=a6 at entry (arg6).
  The `jalr` at 0x10006ff4 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0x10007014 calls syslog with a0=0x2, a1=0x10020508, a2=sp-528, a3=sym(lseek).
  The `jalr` at 0x10007020 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0x10007040 calls syslog with a0=0x2, a1=0x10020528, a2=sp-528, a3=?.
  The `jal` at 0x10007080 calls (unnamed) [0x100078d4] with a0=a1 at entry (arg1), a1=ret(open), a2=a3 at entry (arg3), a3=a4 at entry (arg4), a4=a6 at entry (arg6), a5=0x0.
  The `jalr` at 0x10007090 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0x100070fc calls read with a0=ret(open), a1=sp-184, a2=0x4, a3=?.
  The `jalr` at 0x1000715c calls syslog with a0=0x2, a1=0x10020628, a2=sp-528, a3=?.
  The `jalr` at 0x10007170 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0x10007190 calls syslog with a0=0x2, a1=0x10020560, a2=sp-528, a3=?.
  The `jalr` at 0x1000719c calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jal` at 0x10007204 calls (unnamed) [0x100078d4] with a0=a1 at entry (arg1), a1=ret(open), a2=a3 at entry (arg3), a3=0x0, a4=0x0, a7=-0x4557.
  The `jal` at 0x10007220 calls venice_loadsection_cp2 [0x10011744] with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0x10007264 calls read with a0=ret(open), a1=sp-176, a2=0x4, a3=?.
  The `jalr` at 0x10007288 calls syslog with a0=0x2, a1=0x10020540, a2=sp-528, a3=?.
  The `jalr` at 0x10007294 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jal` at 0x100072d0 calls (unnamed) [0x100078d4] with a0=a1 at entry (arg1), a1=ret(open), a2=a3 at entry (arg3), a3=a4 at entry (arg4), a4=one of 0x0, 0x1.
  The `jal` at 0x10007334 calls (unnamed) [0x100078d4] with a0=a1 at entry (arg1), a1=ret(open), a2=a3 at entry (arg3), a3=a4 at entry (arg4), a4=one of 0x0, 0x1, a7=0x4562.
  The `jal` at 0x10007354 calls (unnamed) [0x100077e8] with a0=a0 at entry (arg0), a1=0x3, a2=sp-528, a3=ret(open).
  The `jal` at 0x10007398 calls (unnamed) [0x100078d4] with a0=a1 at entry (arg1), a1=ret(open), a2=a3 at entry (arg3), a3=a4 at entry (arg4), a4=one of 0x0, 0x1, a7=0x4560.
  The `jal` at 0x10007400 calls (unnamed) [0x100078d4] with a0=a1 at entry (arg1), a1=ret(open), a2=a3 at entry (arg3), a3=a4 at entry (arg4), a4=one of 0x0, 0x1, a7=0x4559.
  The `jal` at 0x10007420 calls (unnamed) [0x100077e8] with a0=a0 at entry (arg0), a1=0x2, a2=sp-528, a3=ret(open).
  The `jal` at 0x10007484 calls (unnamed) [0x100078d4] with a0=a1 at entry (arg1), a1=ret(open), a2=a3 at entry (arg3), a3=a4 at entry (arg4), a4=one of 0x0, 0x1, a7=0x4556.
  The `jal` at 0x100074a4 calls (unnamed) [0x100077e8] with a0=a0 at entry (arg0), a1=0x1, a2=sp-528, a3=ret(open).
  The `jal` at 0x100074e8 calls (unnamed) [0x100078d4] with a0=a1 at entry (arg1), a1=ret(open), a2=a3 at entry (arg3), a3=a4 at entry (arg4), a4=one of 0x0, 0x1, a7=0x4557.
  The `jal` at 0x10007508 calls (unnamed) [0x100077e8] with a0=a0 at entry (arg0), a1=0x0, a2=sp-528, a3=ret(open).
  The `jal` at 0x1000752c calls (unnamed) [0x100077e8] with a0=a0 at entry (arg0), a1=0x0, a2=0x10027ae6, a3=-0x1.
  The `jal` at 0x1000755c calls (unnamed) [0x100077e8] with a0=a0 at entry (arg0), a1=0x3, a2=0x10027ae6, a3=-0x1.
  The `jal` at 0x1000758c calls (unnamed) [0x100077e8] with a0=a0 at entry (arg0), a1=0x2, a2=0x10027ae6, a3=-0x1.
  The `jal` at 0x100075b4 calls (unnamed) [0x100077e8] with a0=a0 at entry (arg0), a1=0x1, a2=0x10027ae6, a3=-0x1.
  The `jal` at 0x100075d8 calls (unnamed) [0x100076d0] with a0=a0 at entry (arg0), a1=0x0, a2=sp-528, a3=ret(open).
  The `jal` at 0x10007600 calls (unnamed) [0x100076d0] with a0=a0 at entry (arg0), a1=0x3, a2=sp-528, a3=ret(open).
  The `jal` at 0x10007628 calls (unnamed) [0x100076d0] with a0=a0 at entry (arg0), a1=0x2, a2=sp-528, a3=ret(open).
  The `jal` at 0x10007650 calls (unnamed) [0x100076d0] with a0=a0 at entry (arg0), a1=0x1, a2=sp-528, a3=ret(open).
  The `jal` at 0x100076b0 calls (unnamed) [0x100078d4] with a0=a1 at entry (arg1), a1=ret(open), a2=a3 at entry (arg3), a3=a4 at entry (arg4), a4=a6 at entry (arg6), a5=0x0.
  The `jalr` at 0x100076c0 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10006cf0 targets 0x10006d60, is taken when v0(=[a2]:1) == at(=0x2f), and falls through when v0(=[a2]:1) != at(=0x2f).
  The `beq` branch at 0x10006cfc targets 0x10006d60, is taken when v0(=[a2]:1) == a0(=0x2e), and falls through when v0(=[a2]:1) != a0(=0x2e).
  The `beq` branch at 0x10006d08 targets 0x10006d3c, is taken when a1(=[sym(ucode_dir)]) == 0, and falls through when a1(=[sym(ucode_dir)]) != 0.
  The `beq` branch at 0x10006d34 targets 0x10006d78 and is always taken.
  The `beq` branch at 0x10006d58 targets 0x10006d24 and is always taken.
  The `beq` branch at 0x10006d8c targets 0x10006e04, is taken when v0(=ret(open)) == s8(=-0x1), and falls through when v0(=ret(open)) != s8(=-0x1).
  The `beq` branch at 0x10006d98 targets 0x10006db8, is taken when a3(=a7) == 0, and falls through when a3(=a7) != 0.
  The `beq` branch at 0x10006dd0 targets 0x10006e34, is taken when v0(=ret(read)) == a1(=0x4), and falls through when v0(=ret(read)) != a1(=0x4).
  The `beq` branch at 0x10006dfc targets 0x1000709c and is always taken.
  The `bne` branch at 0x10006e04 targets 0x10006e2c, is taken when s7(=one of 0x0, 0x1) != 0, and falls through when s7(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x10006e24 targets 0x1000709c and is always taken.
  The `beq` branch at 0x10006e2c targets 0x10006d40 and is always taken.
  The `beq` branch at 0x10006e44 targets 0x10006ecc, is taken when v0(=ret(lseek)) == s8(=-0x1), and falls through when v0(=ret(lseek)) != s8(=-0x1).
  The `bne` branch at 0x10006e50 targets 0x10006f2c, is taken when v0(?) != a2(=0x107), and falls through when v0(?) == a2(=0x107).
  The `bne` branch at 0x10006e70 targets 0x10006eec, is taken when v0(=ret(read)) != a3(=0x20), and falls through when v0(=ret(read)) == a3(=0x20).
  The `beq` branch at 0x10006e78 targets 0x10006f14, is taken when s1(=a4) == s8(=-0x1), and falls through when s1(=a4) != s8(=-0x1).
  The `bne` branch at 0x10006e80 targets 0x10006f1c, is taken when s4(=a5) != 0, and falls through when s4(=a5) == 0.
  The `beq` branch at 0x10006ec4 targets 0x1000709c and is always taken.
  The `beq` branch at 0x10006ee4 targets 0x1000709c and is always taken.
  The `beq` branch at 0x10006f0c targets 0x1000709c and is always taken.
  The `beq` branch at 0x10006f14 targets 0x10006e80 and is always taken.
  The `beq` branch at 0x10006f24 targets 0x10006e88 and is always taken.
  The `beq` branch at 0x10006f30 targets 0x10006fd4, is taken when t0(?) == t1(=0x14d), and falls through when t0(?) != t1(=0x14d).
  The `bne` branch at 0x10006f4c targets 0x10007004, is taken when v0(=ret(read)) != t2(=0x2c), and falls through when v0(=ret(read)) == t2(=0x2c).
  The `beq` branch at 0x10006f68 targets 0x10007030, is taken when v0(=ret(lseek)) == s8(=-0x1), and falls through when v0(=ret(lseek)) != s8(=-0x1).
  The `beq` branch at 0x10006f7c targets 0x10007688, is taken when a7(?) == t8(=0x4538), and falls through when a7(?) != t8(=0x4538).
  The `bne` branch at 0x10006f88 targets 0x10007050, is taken when a7(?) != t9(=0x4578), and falls through when a7(?) == t9(=0x4578).
  The `beq` branch at 0x10006fcc targets 0x1000709c and is always taken.
  The `beq` branch at 0x10006ffc targets 0x1000709c and is always taken.
  The `beq` branch at 0x10007028 targets 0x1000709c and is always taken.
  The `beq` branch at 0x10007048 targets 0x1000709c and is always taken.
  The `bne` branch at 0x10007054 targets 0x100070d0, is taken when a7(?) != a2(=0x4539), and falls through when a7(?) == a2(=0x4539).
  The `beq` branch at 0x100070ec targets 0x10007248 and is always taken.
  The `bne` branch at 0x1000710c targets 0x10007180, is taken when v0(=ret(read)) != at(=0x4), and falls through when v0(=ret(read)) == at(=0x4).
  The `beq` branch at 0x1000711c targets 0x100071ac, is taken when v0(=a5) == 0, and falls through when v0(=a5) != 0.
  The `beq` branch at 0x10007138 targets 0x1000714c, is taken when a2(?) >= 0x2b (unsigned), and falls through when a2(?) < 0x2b (unsigned).
  The `beq` branch at 0x10007178 targets 0x1000709c and is always taken.
  The `beq` branch at 0x100071a4 targets 0x1000709c and is always taken.
  The `beq` branch at 0x100071ac targets 0x10007124 and is always taken.
  The `beq` branch at 0x100071b8 targets 0x100074b4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x100071c0 targets 0x10007518, is taken when s1(=a4) == a1(=-0x1), and falls through when s1(=a4) != a1(=-0x1).
  The `beq` branch at 0x100071c8 targets 0x100075c8, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x100071d4 targets 0x1000722c, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x100071dc targets 0x100074b4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x1000720c targets 0x100074f4 and is always taken.
  The `bltz` branch at 0x1000722c targets 0x10007164, is taken when s4(?) < 0 (signed), and falls through when s4(?) >= 0 (signed).
  The `beq` branch at 0x10007240 targets 0x1000716c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x10007270 targets 0x100070f4, is taken when v0(=ret(read)) == t2(=0x4), and falls through when v0(=ret(read)) != t2(=0x4).
  The `beq` branch at 0x1000729c targets 0x1000709c and is always taken.
  The `beq` branch at 0x100072a4 targets 0x100072b4, is taken when s2(=a6) == 0, and falls through when s2(=a6) != 0.
  The `beq` branch at 0x100072ac targets 0x10007540, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x100072d8 targets 0x1000722c and is always taken.
  The `beq` branch at 0x100072e0 targets 0x10007304, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x100072e8 targets 0x10007548, is taken when s1(=a4) == a1(=-0x1), and falls through when s1(=a4) != a1(=-0x1).
  The `beq` branch at 0x100072f0 targets 0x100075f0, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x100072fc targets 0x1000722c, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x10007304 targets 0x10007310, is taken when s2(=a6) == 0, and falls through when s2(=a6) != 0.
  The `beq` branch at 0x1000730c targets 0x10007668, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x1000733c targets 0x1000722c, is taken when v0(=ret(0x100078d4)) != 0, and falls through when v0(=ret(0x100078d4)) == 0.
  The `beq` branch at 0x1000735c targets 0x1000722c and is always taken.
  The `beq` branch at 0x10007368 targets 0x10007378, is taken when s2(=a6) == 0, and falls through when s2(=a6) != 0.
  The `beq` branch at 0x10007370 targets 0x10007570, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x100073a0 targets 0x1000722c and is always taken.
  The `beq` branch at 0x100073ac targets 0x100073d0, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x100073b4 targets 0x10007578, is taken when s1(=a4) == a1(=-0x1), and falls through when s1(=a4) != a1(=-0x1).
  The `beq` branch at 0x100073bc targets 0x10007618, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x100073c8 targets 0x1000722c, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x100073d0 targets 0x100073dc, is taken when s2(=a6) == 0, and falls through when s2(=a6) != 0.
  The `beq` branch at 0x100073d8 targets 0x10007670, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x10007408 targets 0x1000722c, is taken when v0(=ret(0x100078d4)) != 0, and falls through when v0(=ret(0x100078d4)) == 0.
  The `beq` branch at 0x10007428 targets 0x1000722c and is always taken.
  The `beq` branch at 0x10007430 targets 0x10007454, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x10007438 targets 0x100075a0, is taken when s1(=a4) == a1(=-0x1), and falls through when s1(=a4) != a1(=-0x1).
  The `beq` branch at 0x10007440 targets 0x10007640, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x1000744c targets 0x1000722c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x10007454 targets 0x10007460, is taken when s2(=a6) == 0, and falls through when s2(=a6) != 0.
  The `beq` branch at 0x1000745c targets 0x10007678, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x1000748c targets 0x1000722c, is taken when v0(=ret(0x100078d4)) != 0, and falls through when v0(=ret(0x100078d4)) == 0.
  The `beq` branch at 0x100074ac targets 0x1000722c and is always taken.
  The `beq` branch at 0x100074b4 targets 0x100074c4, is taken when s2(=a6) == 0, and falls through when s2(=a6) != 0.
  The `beq` branch at 0x100074bc targets 0x10007680, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x100074f4 targets 0x1000722c, is taken when s4(=ret(0x100078d4)) != 0, and falls through when s4(=ret(0x100078d4)) == 0.
  The `beq` branch at 0x10007510 targets 0x1000722c and is always taken.
  The `bne` branch at 0x10007518 targets 0x100071c4, is taken when s2(=a6) != 0, and falls through when s2(=a6) == 0.
  The `beq` branch at 0x10007538 targets 0x100071d0 and is always taken.
  The `beq` branch at 0x10007540 targets 0x100072b4 and is always taken.
  The `bne` branch at 0x10007548 targets 0x100072ec, is taken when s2(=a6) != 0, and falls through when s2(=a6) == 0.
  The `beq` branch at 0x10007568 targets 0x100072f8 and is always taken.
  The `beq` branch at 0x10007570 targets 0x10007378 and is always taken.
  The `bne` branch at 0x10007578 targets 0x100073b8, is taken when s2(=a6) != 0, and falls through when s2(=a6) == 0.
  The `beq` branch at 0x10007598 targets 0x100073c4 and is always taken.
  The `bne` branch at 0x100075a0 targets 0x1000743c, is taken when s2(=a6) != 0, and falls through when s2(=a6) == 0.
  The `beq` branch at 0x100075c0 targets 0x10007448 and is always taken.
  The `beq` branch at 0x100075e0 targets 0x100071d4, is taken when v0(=ret(0x100076d0)) == 0, and falls through when v0(=ret(0x100076d0)) != 0.
  The `beq` branch at 0x100075e8 targets 0x100071d0 and is always taken.
  The `beq` branch at 0x10007608 targets 0x100072fc, is taken when v0(=ret(0x100076d0)) == 0, and falls through when v0(=ret(0x100076d0)) != 0.
  The `beq` branch at 0x10007610 targets 0x100072f8 and is always taken.
  The `beq` branch at 0x10007630 targets 0x100073c8, is taken when v0(=ret(0x100076d0)) == 0, and falls through when v0(=ret(0x100076d0)) != 0.
  The `beq` branch at 0x10007638 targets 0x100073c4 and is always taken.
  The `beq` branch at 0x10007658 targets 0x1000744c, is taken when v0(=ret(0x100076d0)) == 0, and falls through when v0(=ret(0x100076d0)) != 0.
  The `beq` branch at 0x10007660 targets 0x10007448 and is always taken.
  The `beq` branch at 0x10007668 targets 0x10007314 and is always taken.
  The `beq` branch at 0x10007670 targets 0x100073e0 and is always taken.
  The `beq` branch at 0x10007678 targets 0x10007464 and is always taken.
  The `beq` branch at 0x10007680 targets 0x100074c4 and is always taken.
  The `beq` branch at 0x100076c8 targets 0x1000709c and is always taken.
  The return at 0x100070c8 has v0 = one of -0x1, ret(0x100078d4), ret(venice_loadfile_ge8), ?.
  The indirect jump at 0x10007144 uses the jump table at 0x10020578 with targets 0x10007430, 0x100071b4, 0x1000714c, 0x100073a8, 0x1000714c, 0x1000714c, 0x1000714c, 0x1000714c, 0x1000714c, 0x1000714c, 0x10007364, 0x1000714c, 0x100072e0, 0x1000714c, 0x1000714c, 0x100072a4, 0x1000714c, 0x1000714c, 0x1000714c, 0x1000714c, 0x1000714c, 0x1000714c, 0x1000714c, 0x1000714c, 0x1000714c, 0x1000714c, 0x1000714c, 0x1000714c, 0x1000714c, 0x1000714c, 0x1000714c, 0x1000714c, 0x1000714c, 0x1000714c, 0x1000714c, 0x1000714c, 0x1000714c, 0x1000714c, 0x1000714c, 0x1000714c, 0x1000714c, 0x1000714c, 0x10007214.

- `gr2_init` in `usr/gfx/gfxinit` at 0x10007a20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10007a20-0x10007d7c (860 bytes).
  It occupies 860 bytes.
  The `lbu` at 0x10007c18 loads 1 byte from a1 (arg1 at entry) +0x38.
  The `jalr` at 0x10007a58 calls strcpy with a0=sp-512, a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10007a68 calls strcat with a0=sp-512, a1=0x10027ae8, a2=?, a3=?.
  The `jalr` at 0x10007a84 calls printf with a0=0x10020698, a1=sp-512, a2=?, a3=?.
  The `jalr` at 0x10007a9c calls open with a0=sp-512, a1=0x800, a2=?, a3=?.
  The `jalr` at 0x10007ab8 calls fstat with a0=ret(open), a1=sp-256, a2=?, a3=?.
  The `jalr` at 0x10007adc calls mmap with a0=0x0, a1=?, a2=0x1, a3=0x1, a4=ret(open), a5=0x0.
  The `jalr` at 0x10007aec calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0x10007b18 calls ioctl with a0=a0 at entry (arg0), a1=0x6c, a2=sp-104, a3=?.
  The `jalr` at 0x10007b30 calls munmap with a0=ret(mmap), a1=?, a2=?, a3=?.
  The `jalr` at 0x10007b44 calls strcpy with a0=sp-512, a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0x10007b54 calls strcat with a0=sp-512, a1=0x10027af8, a2=?, a3=?.
  The `jalr` at 0x10007b70 calls printf with a0=0x100206d8, a1=sp-512, a2=?, a3=?.
  The `jalr` at 0x10007b84 calls open with a0=sp-512, a1=0x800, a2=?, a3=?.
  The `jalr` at 0x10007b9c calls fstat with a0=ret(open), a1=sp-256, a2=?, a3=?.
  The `jalr` at 0x10007bc0 calls mmap with a0=0x0, a1=?, a2=0x1, a3=0x1, a4=ret(open), a5=0x0.
  The `jalr` at 0x10007bd0 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0x10007bfc calls ioctl with a0=a0 at entry (arg0), a1=0x6c, a2=sp-104, a3=?.
  The `jalr` at 0x10007c10 calls munmap with a0=ret(mmap), a1=?, a2=?, a3=?.
  The `jal` at 0x10007c28 calls ev1_init [0x10007a18] with a0=?, a1=?, a2=?, a3=?, a4=[a1+56]:1.
  The `jalr` at 0x10007c40 calls syslog with a0=0x2, a1=0x10020700, a2=?, a3=?.
  The `jalr` at 0x10007c78 calls syslog with a0=0x2, a1=0x10027af0, a2=sp-512, a3=?.
  The `jalr` at 0x10007c94 calls syslog with a0=0x2, a1=0x10027af0, a2=sp-512, a3=?.
  The `jalr` at 0x10007cb0 calls syslog with a0=0x2, a1=0x10027af0, a2=sp-512, a3=?.
  The `jalr` at 0x10007ccc calls syslog with a0=0x2, a1=0x10027af0, a2=sp-512, a3=?.
  The `jalr` at 0x10007cd8 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0x10007cec calls munmap with a0=ret(mmap), a1=?, a2=?, a3=?.
  The `jalr` at 0x10007d00 calls syslog with a0=0x2, a1=0x100206c0, a2=?, a3=?.
  The `jalr` at 0x10007d1c calls syslog with a0=0x2, a1=0x10027af0, a2=sp-512, a3=?.
  The `jalr` at 0x10007d38 calls syslog with a0=0x2, a1=0x10027af0, a2=sp-512, a3=?.
  The `jalr` at 0x10007d44 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0x10007d58 calls munmap with a0=ret(mmap), a1=?, a2=?, a3=?.
  The `jalr` at 0x10007d6c calls syslog with a0=0x2, a1=0x100206c0, a2=?, a3=?.
  The `beq` branch at 0x10007a70 targets 0x10007a90, is taken when s2(=a3) == 0, and falls through when s2(=a3) != 0.
  The `bltz` branch at 0x10007aa4 targets 0x10007ca4, is taken when v0(=ret(open)) < 0 (signed), and falls through when v0(=ret(open)) >= 0 (signed).
  The `bltz` branch at 0x10007ac0 targets 0x10007cc0, is taken when v0(=ret(fstat)) < 0 (signed), and falls through when v0(=ret(fstat)) >= 0 (signed).
  The `beq` branch at 0x10007af8 targets 0x10007c6c, is taken when v0(=-0x1) == s1(=ret(mmap)), and falls through when v0(=-0x1) != s1(=ret(mmap)).
  The `bltz` branch at 0x10007b20 targets 0x10007ce8, is taken when v0(=ret(ioctl)) < 0 (signed), and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `beq` branch at 0x10007b5c targets 0x10007b7c, is taken when s2(=a3) == 0, and falls through when s2(=a3) != 0.
  The `bltz` branch at 0x10007b8c targets 0x10007d10, is taken when v0(=ret(open)) < 0 (signed), and falls through when v0(=ret(open)) >= 0 (signed).
  The `bltz` branch at 0x10007ba4 targets 0x10007d2c, is taken when v0(=ret(fstat)) < 0 (signed), and falls through when v0(=ret(fstat)) >= 0 (signed).
  The `beq` branch at 0x10007bdc targets 0x10007c88, is taken when a1(=-0x1) == s1(=ret(mmap)), and falls through when a1(=-0x1) != s1(=ret(mmap)).
  The `bltz` branch at 0x10007c04 targets 0x10007d54, is taken when v0(=ret(ioctl)) < 0 (signed), and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `blez` branch at 0x10007c1c targets 0x10007c4c, is taken when a4(=[a1+56]:1) <= 0 (signed), and falls through when a4(=[a1+56]:1) > 0 (signed).
  The `beq` branch at 0x10007c30 targets 0x10007c48, is taken when v0(=ret(ev1_init)) == 0, and falls through when v0(=ret(ev1_init)) != 0.
  The `beq` branch at 0x10007c80 targets 0x10007c4c and is always taken.
  The `beq` branch at 0x10007c9c targets 0x10007c4c and is always taken.
  The `beq` branch at 0x10007cb8 targets 0x10007c4c and is always taken.
  The `beq` branch at 0x10007ce0 targets 0x10007c4c and is always taken.
  The `beq` branch at 0x10007d08 targets 0x10007c4c and is always taken.
  The `beq` branch at 0x10007d24 targets 0x10007c4c and is always taken.
  The `beq` branch at 0x10007d4c targets 0x10007c4c and is always taken.
  The `beq` branch at 0x10007d74 targets 0x10007c4c and is always taken.
  The return at 0x10007c64 has v0 = one of -0x1, 0x0.

- `gr2_info` in `usr/gfx/gfxinit` at 0x10007d7c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10007d7c-0x100081fc (1152 bytes).
  It occupies 1152 bytes.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x36, including `lbu` at 0x10007d84, `lbu` at 0x10007dd0.
  The `lbu` at 0x10007df4 loads 1 byte from a0 (arg0 at entry) +0x29.
  The `lbu` at 0x10007e08 loads 1 byte from a0 (arg0 at entry) +0x2a.
  The `lbu` at 0x10007e1c loads 1 byte from a0 (arg0 at entry) +0x2b.
  The `lbu` at 0x10007e28 loads 1 byte from a0 (arg0 at entry) +0x2c.
  The `lbu` at 0x10007e44 loads 1 byte from a0 (arg0 at entry) +0x28.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x30, including `lbu` at 0x10007e5c, `lbu` at 0x100080a4, `lbu` at 0x100081c0.
  The `lbu` at 0x10007e84 loads 1 byte from a0 (arg0 at entry) +0x31.
  The `lbu` at 0x10007eac loads 1 byte from a0 (arg0 at entry) +0x32.
  The `lbu` at 0x10007f00 loads 1 byte from a0 (arg0 at entry) +0x33.
  The `lbu` at 0x10007f28 loads 1 byte from a0 (arg0 at entry) +0x2f.
  The `lbu` at 0x10007fa0 loads 1 byte from a0 (arg0 at entry) +0x2d.
  The `lw` at 0x10007fd0 loads 4 bytes from table(0x100207f8) +0x0.
  The `lbu` at 0x10007ffc loads 1 byte from a0 (arg0 at entry) +0x38.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x2e, including `lbu` at 0x10008074, `lbu` at 0x10008080.
  The `lbu` at 0x1000808c loads 1 byte from a0 (arg0 at entry) +0x34.
  The `jalr` at 0x10007dc8 calls printf with a0=0x10020720, a1=[a0+54]:1, a2=one of 0x10027b00, 0x10027b02, a3=a3 at entry (arg3).
  The `jalr` at 0x10007de4 calls printf with a0=0x10027b10, a1=[a0+54]:1, a2=0x8, a3=?.
  The `jalr` at 0x10007df8 calls printf with a0=0x10020730, a1=[a0+41]:1, a2=?, a3=?.
  The `jalr` at 0x10007e0c calls printf with a0=0x10020740, a1=[a0+42]:1, a2=?, a3=?.
  The `jalr` at 0x10007e20 calls printf with a0=0x10020750, a1=[a0+43]:1, a2=?, a3=?.
  The `jalr` at 0x10007e3c calls printf with a0=0x10020760, a1=one of 0x10027b02, 0x10027b18, a2=?, a3=?.
  The `jalr` at 0x10007e54 calls printf with a0=0x10020770, a1=[a0+40]:1, a2=?, a3=?.
  The `jalr` at 0x10007e7c calls printf with a0=0x10020798, a1=one of 0x10027b30, 0x10027b40, a2=one of 0x10027b38, 0x10027b44, a3=?.
  The `jalr` at 0x10007ea4 calls printf with a0=0x100207a8, a1=one of 0x10027b38, 0x10027b44, 0x10027b46, a2=one of 0x10027b38, 0x10027b44, 0x10027b46, a3=?.
  The `jalr` at 0x10007ef8 calls printf with a0=0x100207b8, a1=one of 0x10027b48, 0x10027b4c, a2=?, a3=?.
  The `jalr` at 0x10007f20 calls printf with a0=0x100207c8, a1=one of 0x10027b38, 0x10027b44, 0x10027b46, a2=one of 0x10027b38, 0x10027b44, 0x10027b46, a3=?.
  The `jalr` at 0x10007f8c calls printf with a0=0x100207d8, a1=one of 0x10027b54, 0x10027b58, a2=?, a3=?.
  The `jalr` at 0x10007f98 calls printf with a0=0x10027b60, a1=?, a2=?, a3=?.
  The `jalr` at 0x10007fe4 calls printf with a0=0x10020830, a1=[a0+45]:1, a2=?, a3=?.
  The `jalr` at 0x10007ff4 calls printf with a0=0x10020848, a1=?, a2=?, a3=?.
  The `jalr` at 0x10008010 calls printf with a0=0x10020858, a1=[a0+56]:1, a2=?, a3=?.
  The `jalr` at 0x10008054 calls printf with a0=0x10027b08, a1=[a0+54]:1, a2=0x8, a3=?.
  The `jalr` at 0x10008078 calls printf with a0=0x10020780, a1=[a0+46]:1, a2=?, a3=?.
  The `jalr` at 0x10008098 calls printf with a0=0x10027b20, a1=[a0+52]:1-1, a2=[a0+52]:1, a3=?.
  The `jalr` at 0x10008124 calls printf with a0=0x10027b64, a1=[a0+45]:1, a2=entry(0x100207f8), a3=?.
  The `jalr` at 0x10008138 calls printf with a0=0x10020818, a1=[a0+45]:1, a2=entry(0x100207f8), a3=?.
  The `jalr` at 0x1000814c calls printf with a0=0x10027b68, a1=[a0+45]:1, a2=entry(0x100207f8), a3=?.
  The `jalr` at 0x10008160 calls printf with a0=0x10027b6c, a1=[a0+45]:1, a2=entry(0x100207f8), a3=?.
  The `jalr` at 0x10008174 calls printf with a0=0x10027b70, a1=[a0+45]:1, a2=entry(0x100207f8), a3=?.
  The `jalr` at 0x10008194 calls printf with a0=0x100207e8, a1=[a0+45]:1, a2=?, a3=?.
  The `jalr` at 0x100081b4 calls printf with a0=0x10027b28, a1=[a0+52]:1, a2=[a0+52]:1, a3=?.
  The `bne` branch at 0x10007da8 targets 0x10007db8, is taken when a1(=[a0+54]:1) < 0x2 (signed), and falls through when a1(=[a0+54]:1) >= 0x2 (signed).
  The `beq` branch at 0x10007db0 targets 0x10007dbc and is always taken.
  The `beq` branch at 0x10007dd8 targets 0x10008054, is taken when a1(=[a0+54]:1) == a2(=0x8), and falls through when a1(=[a0+54]:1) != a2(=0x8).
  The `beq` branch at 0x10007e2c targets 0x10008064, is taken when a1(=[a0+44]:1) == 0, and falls through when a1(=[a0+44]:1) != 0.
  The `beq` branch at 0x10007e48 targets 0x1000806c, is taken when a1(=[a0+40]:1) == 0, and falls through when a1(=[a0+40]:1) != 0.
  The `beq` branch at 0x10007e60 targets 0x100080a8, is taken when a0(=[a0+48]:1) == 0, and falls through when a0(=[a0+48]:1) != 0.
  The `beq` branch at 0x10007e68 targets 0x100080d4, is taken when a0(=[a0+48]:1) == s2(=0x1), and falls through when a0(=[a0+48]:1) != s2(=0x1).
  The `beq` branch at 0x10007e88 targets 0x100080bc, is taken when a0(=[a0+49]:1) == s2(=0x1), and falls through when a0(=[a0+49]:1) != s2(=0x1).
  The `beq` branch at 0x10007e90 targets 0x100080e0, is taken when a0(=[a0+49]:1) == a1(=0x2), and falls through when a0(=[a0+49]:1) != a1(=0x2).
  The `beq` branch at 0x10007eb4 targets 0x100080c4, is taken when a0(?) == s2(=0x1), and falls through when a0(?) != s2(=0x1).
  The `beq` branch at 0x10007ec0 targets 0x100080e8, is taken when a0(?) == a1(=0x2), and falls through when a0(?) != a1(=0x2).
  The `beq` branch at 0x10007ec8 targets 0x10008184, is taken when a0(?) == a2(=0x3), and falls through when a0(?) != a2(=0x3).
  The `beq` branch at 0x10007ed8 targets 0x100081a4, is taken when a0(?) == a3(=0x4), and falls through when a0(?) != a3(=0x4).
  The `beq` branch at 0x10007ee4 targets 0x100081c4, is taken when a0(?) == a4(=0x5), and falls through when a0(?) != a4(=0x5).
  The `beq` branch at 0x10007f04 targets 0x100080b4, is taken when a0(=[a0+51]:1) == s2(=0x1), and falls through when a0(=[a0+51]:1) != s2(=0x1).
  The `beq` branch at 0x10007f0c targets 0x100080f4, is taken when a0(=[a0+51]:1) == a1(=0x2), and falls through when a0(=[a0+51]:1) != a1(=0x2).
  The `beq` branch at 0x10007f30 targets 0x100080cc, is taken when (a0(=[a0+47]:1) & 0x80) == 0, and falls through when (a0(=[a0+47]:1) & 0x80) != 0.
  The `bne` branch at 0x10007f3c targets 0x10007f5c, is taken when a0(=[a0+47]:1) < 0x81 (signed), and falls through when a0(=[a0+47]:1) >= 0x81 (signed).
  The `beq` branch at 0x10007f48 targets 0x10008030, is taken when a0(=[a0+47]:1) >= 0x82 (signed), and falls through when a0(=[a0+47]:1) < 0x82 (signed).
  The `beq` branch at 0x10007f54 targets 0x10007f84 and is always taken.
  The `bne` branch at 0x10007f5c targets 0x10007f78, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x10007f64 targets 0x1000810c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x10007f70 targets 0x10007f84 and is always taken.
  The `beq` branch at 0x10007f78 targets 0x100081dc, is taken when s2(=0x1) == a0(=[a0+47]:1), and falls through when s2(=0x1) != a0(=[a0+47]:1).
  The `beq` branch at 0x10007fa4 targets 0x10008190, is taken when s2(=0x82) == a1(=[a0+45]:1), and falls through when s2(=0x82) != a1(=[a0+45]:1).
  The `beq` branch at 0x10007fb0 targets 0x1000818c, is taken when a1(=[a0+45]:1) == a2(=0x83), and falls through when a1(=[a0+45]:1) != a2(=0x83).
  The `beq` branch at 0x10007fc8 targets 0x10007fdc, is taken when a2(?) >= 0x8 (unsigned), and falls through when a2(?) < 0x8 (unsigned).
  The `beq` branch at 0x10008000 targets 0x10008018, is taken when a1(=[a0+56]:1) == 0, and falls through when a1(=[a0+56]:1) != 0.
  The `bne` branch at 0x10008030 targets 0x100080fc, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x10008044 targets 0x100081cc, is taken when a0(=[a0+47]:1) >= 0x84 (signed), and falls through when a0(=[a0+47]:1) < 0x84 (signed).
  The `beq` branch at 0x1000804c targets 0x10007f88 and is always taken.
  The `beq` branch at 0x1000805c targets 0x10007df0 and is always taken.
  The `beq` branch at 0x10008064 targets 0x10007e34 and is always taken.
  The `beq` branch at 0x10008088 targets 0x100081ac, is taken when a1(=[a0+46]:1) >= 0x4 (signed), and falls through when a1(=[a0+46]:1) < 0x4 (signed).
  The `beq` branch at 0x100080a0 targets 0x10007e60 and is always taken.
  The `beq` branch at 0x100080ac targets 0x10007e74 and is always taken.
  The `beq` branch at 0x100080b4 targets 0x10007f14 and is always taken.
  The `beq` branch at 0x100080bc targets 0x10007e98 and is always taken.
  The `beq` branch at 0x100080c4 targets 0x10007ef0 and is always taken.
  The `beq` branch at 0x100080cc targets 0x10007f38 and is always taken.
  The `beq` branch at 0x100080d8 targets 0x10007e74 and is always taken.
  The `beq` branch at 0x100080e0 targets 0x10007e98 and is always taken.
  The `beq` branch at 0x100080ec targets 0x10007ef0 and is always taken.
  The `beq` branch at 0x100080f4 targets 0x10007f14 and is always taken.
  The `bne` branch at 0x100080fc targets 0x10007f84, is taken when s2(=0x82) != a0(=[a0+47]:1), and falls through when s2(=0x82) == a0(=[a0+47]:1).
  The `beq` branch at 0x10008104 targets 0x10007f84 and is always taken.
  The `beq` branch at 0x10008110 targets 0x100081e8, is taken when a0(=[a0+47]:1) == a2(=0x80), and falls through when a0(=[a0+47]:1) != a2(=0x80).
  The `beq` branch at 0x10008118 targets 0x10007f84 and is always taken.
  The `beq` branch at 0x1000812c targets 0x10007ff0 and is always taken.
  The `beq` branch at 0x10008140 targets 0x10007ff0 and is always taken.
  The `beq` branch at 0x10008154 targets 0x10007ff0 and is always taken.
  The `beq` branch at 0x10008168 targets 0x10007ff0 and is always taken.
  The `beq` branch at 0x1000817c targets 0x10007ff0 and is always taken.
  The `beq` branch at 0x10008184 targets 0x10007ef0 and is always taken.
  The `beq` branch at 0x1000819c targets 0x10007ff0 and is always taken.
  The `beq` branch at 0x100081a4 targets 0x10007ef4 and is always taken.
  The `beq` branch at 0x100081bc targets 0x10007e60 and is always taken.
  The `beq` branch at 0x100081c4 targets 0x10007ef0 and is always taken.
  The `beq` branch at 0x100081cc targets 0x100081f4, is taken when a0(=[a0+47]:1) == a4(=0x85), and falls through when a0(=[a0+47]:1) != a4(=0x85).
  The `beq` branch at 0x100081d4 targets 0x10007f80 and is always taken.
  The `beq` branch at 0x100081e0 targets 0x10007f84 and is always taken.
  The `beq` branch at 0x100081ec targets 0x10007f84 and is always taken.
  The `beq` branch at 0x100081f4 targets 0x10007f84 and is always taken.
  The return at 0x10008028 has v0 = ret(printf).
  The indirect jump at 0x10007fd4 uses the jump table at 0x100207f8 with targets 0x10007fdc, 0x10008170, 0x1000815c, 0x10008148, 0x10008170, 0x1000815c, 0x10008120, 0x10008134.

- `gr2ev_info` in `usr/gfx/gfxinit` at 0x100081fc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x100081fc-0x10008560 (868 bytes).
  It occupies 868 bytes.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x36, including `lbu` at 0x10008204, `lbu` at 0x10008250.
  The `lbu` at 0x10008270 loads 1 byte from a0 (arg0 at entry) +0x29.
  The `lbu` at 0x10008284 loads 1 byte from a0 (arg0 at entry) +0x2a.
  The `lbu` at 0x10008298 loads 1 byte from a0 (arg0 at entry) +0x2b.
  The `lbu` at 0x100082a4 loads 1 byte from a0 (arg0 at entry) +0x2c.
  The `lbu` at 0x100082c0 loads 1 byte from a0 (arg0 at entry) +0x28.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x30, including `lbu` at 0x100082dc, `lbu` at 0x10008484, `lbu` at 0x10008554.
  The `lbu` at 0x10008308 loads 1 byte from a0 (arg0 at entry) +0x31.
  The `lbu` at 0x10008334 loads 1 byte from a0 (arg0 at entry) +0x32.
  The `lbu` at 0x10008394 loads 1 byte from a0 (arg0 at entry) +0x33.
  The `lbu` at 0x100083cc loads 1 byte from a0 (arg0 at entry) +0x2d.
  The `lw` at 0x100083ec loads 4 bytes from table(0x10020878) +0x0.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x2e, including `lbu` at 0x10008454, `lbu` at 0x10008460.
  The `lbu` at 0x1000846c loads 1 byte from a0 (arg0 at entry) +0x34.
  The `jalr` at 0x10008248 calls printf with a0=0x10020720, a1=[a0+54]:1, a2=one of 0x10027b00, 0x10027b02, a3=a3 at entry (arg3).
  The `jalr` at 0x10008260 calls printf with a0=0x10027b10, a1=[a0+54]:1, a2=0x8, a3=?.
  The `jalr` at 0x10008274 calls printf with a0=0x10020730, a1=[a0+41]:1, a2=?, a3=?.
  The `jalr` at 0x10008288 calls printf with a0=0x10020740, a1=[a0+42]:1, a2=?, a3=?.
  The `jalr` at 0x1000829c calls printf with a0=0x10020750, a1=[a0+43]:1, a2=?, a3=?.
  The `jalr` at 0x100082b8 calls printf with a0=0x10020760, a1=one of 0x10027b02, 0x10027b18, a2=?, a3=?.
  The `jalr` at 0x100082d4 calls printf with a0=0x10020770, a1=[a0+40]:1, a2=?, a3=?.
  The `jalr` at 0x10008300 calls printf with a0=0x10020798, a1=one of 0x10027b30, 0x10027b40, a2=one of 0x10027b38, 0x10027b44, a3=?.
  The `jalr` at 0x1000832c calls printf with a0=0x100207a8, a1=one of 0x10027b38, 0x10027b44, 0x10027b46, a2=one of 0x10027b38, 0x10027b44, 0x10027b46, a3=?.
  The `jalr` at 0x1000838c calls printf with a0=0x100207b8, a1=one of 0x10027b48, 0x10027b4c, a2=?, a3=?.
  The `jalr` at 0x100083b8 calls printf with a0=0x100207c8, a1=one of 0x10027b38, 0x10027b44, 0x10027b46, a2=one of 0x10027b38, 0x10027b44, 0x10027b46, a3=?.
  The `jalr` at 0x100083c4 calls printf with a0=0x10027b74, a1=?, a2=?, a3=?.
  The `jalr` at 0x10008400 calls printf with a0=0x10020830, a1=[a0+45]:1, a2=?, a3=?.
  The `jalr` at 0x10008410 calls printf with a0=0x10020848, a1=?, a2=?, a3=?.
  The `jalr` at 0x10008438 calls printf with a0=0x10027b08, a1=[a0+54]:1, a2=0x8, a3=?.
  The `jalr` at 0x10008458 calls printf with a0=0x10020780, a1=[a0+46]:1, a2=?, a3=?.
  The `jalr` at 0x10008478 calls printf with a0=0x10027b20, a1=[a0+52]:1-1, a2=[a0+52]:1, a3=?.
  The `jalr` at 0x100084ac calls printf with a0=0x10027b64, a1=[a0+45]:1, a2=entry(0x10020878), a3=?.
  The `jalr` at 0x100084c4 calls printf with a0=0x10020818, a1=[a0+45]:1, a2=entry(0x10020878), a3=?.
  The `jalr` at 0x100084d8 calls printf with a0=0x10027b68, a1=[a0+45]:1, a2=entry(0x10020878), a3=?.
  The `jalr` at 0x100084ec calls printf with a0=0x10027b6c, a1=[a0+45]:1, a2=entry(0x10020878), a3=?.
  The `jalr` at 0x10008500 calls printf with a0=0x10027b70, a1=[a0+45]:1, a2=entry(0x10020878), a3=?.
  The `jalr` at 0x10008548 calls printf with a0=0x10027b28, a1=[a0+52]:1, a2=[a0+52]:1, a3=?.
  The `bne` branch at 0x10008228 targets 0x10008238, is taken when a1(=[a0+54]:1) < 0x2 (signed), and falls through when a1(=[a0+54]:1) >= 0x2 (signed).
  The `beq` branch at 0x10008230 targets 0x1000823c and is always taken.
  The `beq` branch at 0x10008258 targets 0x10008434, is taken when a1(=[a0+54]:1) == a2(=0x8), and falls through when a1(=[a0+54]:1) != a2(=0x8).
  The `beq` branch at 0x100082a8 targets 0x10008448, is taken when a1(=[a0+44]:1) == 0, and falls through when a1(=[a0+44]:1) != 0.
  The `beq` branch at 0x100082c4 targets 0x10008450, is taken when a1(=[a0+40]:1) == 0, and falls through when a1(=[a0+40]:1) != 0.
  The `beq` branch at 0x100082e0 targets 0x10008488, is taken when a0(=[a0+48]:1) == 0, and falls through when a0(=[a0+48]:1) != 0.
  The `beq` branch at 0x100082e8 targets 0x10008510, is taken when a0(=[a0+48]:1) == s2(=0x1), and falls through when a0(=[a0+48]:1) != s2(=0x1).
  The `beq` branch at 0x1000830c targets 0x1000849c, is taken when a0(=[a0+49]:1) == s2(=0x1), and falls through when a0(=[a0+49]:1) != s2(=0x1).
  The `beq` branch at 0x10008314 targets 0x10008518, is taken when a0(=[a0+49]:1) == a1(=0x2), and falls through when a0(=[a0+49]:1) != a1(=0x2).
  The `beq` branch at 0x10008340 targets 0x100084a4, is taken when a0(?) == s2(=0x1), and falls through when a0(?) != s2(=0x1).
  The `beq` branch at 0x10008350 targets 0x10008520, is taken when a0(?) == a1(=0x2), and falls through when a0(?) != a1(=0x2).
  The `beq` branch at 0x1000835c targets 0x10008530, is taken when a0(?) == a2(=0x3), and falls through when a0(?) != a2(=0x3).
  The `beq` branch at 0x1000836c targets 0x10008538, is taken when a0(?) == a3(=0x4), and falls through when a0(?) != a3(=0x4).
  The `beq` branch at 0x10008378 targets 0x10008558, is taken when a0(?) == a4(=0x5), and falls through when a0(?) != a4(=0x5).
  The `beq` branch at 0x10008398 targets 0x10008494, is taken when a0(=[a0+51]:1) == s2(=0x1), and falls through when a0(=[a0+51]:1) != s2(=0x1).
  The `beq` branch at 0x100083a0 targets 0x10008528, is taken when a0(=[a0+51]:1) == a1(=0x2), and falls through when a0(=[a0+51]:1) != a1(=0x2).
  The `beq` branch at 0x100083e4 targets 0x100083f8, is taken when a2(?) >= 0x8 (unsigned), and falls through when a2(?) < 0x8 (unsigned).
  The `beq` branch at 0x10008440 targets 0x1000826c and is always taken.
  The `beq` branch at 0x10008448 targets 0x100082b0 and is always taken.
  The `beq` branch at 0x10008468 targets 0x10008540, is taken when a1(=[a0+46]:1) >= 0x4 (signed), and falls through when a1(=[a0+46]:1) < 0x4 (signed).
  The `beq` branch at 0x10008480 targets 0x100082e0 and is always taken.
  The `beq` branch at 0x1000848c targets 0x100082f8 and is always taken.
  The `beq` branch at 0x10008494 targets 0x100083ac and is always taken.
  The `beq` branch at 0x1000849c targets 0x10008320 and is always taken.
  The `beq` branch at 0x100084a4 targets 0x10008388 and is always taken.
  The `beq` branch at 0x100084b4 targets 0x1000840c and is always taken.
  The `beq` branch at 0x100084cc targets 0x1000840c and is always taken.
  The `beq` branch at 0x100084e0 targets 0x1000840c and is always taken.
  The `beq` branch at 0x100084f4 targets 0x1000840c and is always taken.
  The `beq` branch at 0x10008508 targets 0x1000840c and is always taken.
  The `beq` branch at 0x10008510 targets 0x100082f8 and is always taken.
  The `beq` branch at 0x10008518 targets 0x10008324 and is always taken.
  The `beq` branch at 0x10008520 targets 0x10008388 and is always taken.
  The `beq` branch at 0x10008528 targets 0x100083b0 and is always taken.
  The `beq` branch at 0x10008530 targets 0x10008384 and is always taken.
  The `beq` branch at 0x10008538 targets 0x10008388 and is always taken.
  The `beq` branch at 0x10008550 targets 0x100082e0 and is always taken.
  The `beq` branch at 0x10008558 targets 0x10008384 and is always taken.
  The return at 0x1000842c has v0 = ret(printf).
  The indirect jump at 0x100083f0 uses the jump table at 0x10020878 with targets 0x100083f8, 0x100084fc, 0x100084e8, 0x100084d4, 0x100084fc, 0x100084e8, 0x100084ac, 0x100084bc.

- `ven_info` in `usr/gfx/gfxinit` at 0x10008970 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10008970-0x10008e50 (1248 bytes).
  It occupies 1248 bytes.
  The `lw` at 0x100089e8 loads 4 bytes from ret(getinvent) +0x4.
  The `lw` at 0x100089f8 loads 4 bytes from ret(getinvent) +0x8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x50, including `lw` at 0x10008a14, `lw` at 0x10008a44, `lw` at 0x10008c9c.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10008a64, `lw` at 0x10008b88.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0x10008a98, `lw` at 0x10008b08.
  The `lw` at 0x10008ac4 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x10008ba4 loads 4 bytes from sym(__us_rsthread_stdio) +0x0.
  The `lw` at 0x10008ba8 loads 4 bytes from sym(__iob) +0x10.
  The `lw` at 0x10008bac loads 4 bytes from sym(__iob) +0x14.
  The `sw` at 0x10008bc0 stores 4 bytes to sym(__iob) +0x10.
  The `sw` at 0x10008bc8 stores 4 bytes to sym(__iob) +0x14.
  The `sb` at 0x10008bd0 stores 1 byte to [sym(__iob)+20] +0x0.
  The `lw` at 0x10008c1c loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lw` at 0x10008c5c loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `lw` at 0x10008ca8 loads 4 bytes from sym(vs2ProductName) +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x3a4, including `lw` at 0x10008d7c, `lw` at 0x10008e30.
  The `jalr` at 0x10008994 calls setinvent with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100089a4 calls getinvent with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100089d8 calls getinvent with a0=ret(getinvent), a1=?, a2=?, a3=?.
  The `jalr` at 0x10008a00 calls endinvent with a0=ret(getinvent), a1=?, a2=?, a3=?.
  The `jal` at 0x10008a48 calls (unnamed) [0x10008754] with a0=?, a1=[a0+80], a2=?, a3=?.
  The `jal` at 0x10008a94 calls (unnamed) [0x10008560] with a0=[a0+44], a1=sp-108, a2=sp-104, a3=?.
  The `jal` at 0x10008aa0 calls get_ven_type [0x1000fb2c] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10008ab4 calls fcg_get_ge_cnt [0x1000e5f8] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x10008ad8 calls printf with a0=0x10020998, a1=ret(fcg_get_ge_cnt), a2=[a0+40], a3=?.
  The `jalr` at 0x10008aec calls getenv with a0=0x100209d8, a1=?, a2=?, a3=?.
  The `jalr` at 0x10008b00 calls printf with a0=0x100209f0, a1=?, a2=?, a3=?.
  The `jalr` at 0x10008b38 calls printf with a0=0x10020a50, a1=[a0+44], a2=?, a3=?.
  The `jalr` at 0x10008b70 calls __semputc with a0=0x2f, a1=sym(__iob)+16, a2=?, a3=?.
  The `jalr` at 0x10008b94 calls printf with a0=0x10027b88, a1=?, a2=?, a3=?.
  The `jalr` at 0x10008bdc calls printf with a0=0x10027b90, a1=?, a2=?, a3=?.
  The `jalr` at 0x10008be8 calls getenv with a0=0x10027b98, a1=?, a2=?, a3=?.
  The `jalr` at 0x10008bf8 calls atoi with a0=ret(getenv), a1=?, a2=?, a3=?.
  The `jalr` at 0x10008c14 calls printf with a0=0x10020a80, a1=?, a2=?, a3=?.
  The `jalr` at 0x10008c44 calls printf with a0=0x10020aa8, a1=?, a2=0x2, a3=?.
  The `jalr` at 0x10008c54 calls printf with a0=0x10020ab8, a1=?, a2=?, a3=?.
  The `jalr` at 0x10008c84 calls printf with a0=0x10020aa8, a1=0x4, a2=?, a3=?.
  The `jalr` at 0x10008c94 calls printf with a0=0x10020ac8, a1=?, a2=?, a3=?.
  The `jalr` at 0x10008cb4 calls printf with a0=0x10020ad8, a1=[sym(vs2ProductName)], a2=[a0+80], a3=?.
  The `jalr` at 0x10008cf8 calls printf with a0=0x10020ae8, a1=0x4, a2=?, a3=?.
  The `jalr` at 0x10008d44 calls printf with a0=0x10020a20, a1=[a0+44], a2=?, a3=?, a4=0xfffff.
  The `jalr` at 0x10008d5c calls printf with a0=0x10020b18, a1=[sym(vs2ProductName)], a2=[a0+80], a3=?.
  The `jalr` at 0x10008d6c calls printf with a0=0x10027ba0, a1=?, a2=0x2, a3=?.
  The `jalr` at 0x10008d8c calls printf with a0=0x10020a68, a1=[a0+44], a2=[a0+932]+4, a3=?.
  The `jalr` at 0x10008da8 calls printf with a0=0x100209b8, a1=ret(fcg_get_ge_cnt), a2=[a0+40], a3=?.
  The `jalr` at 0x10008dc0 calls __flsbuf with a0=0x2f, a1=sym(__iob)+16, a2=?, a3=?.
  The `jalr` at 0x10008dd8 calls printf with a0=0x10020978, a1=?, a2=?, a3=?.
  The `jalr` at 0x10008dec calls printf with a0=0x10020b08, a1=?, a2=?, a3=?.
  The `jalr` at 0x10008dfc calls printf with a0=0x10027bb0, a1=?, a2=0x2, a3=?.
  The `jalr` at 0x10008e10 calls printf with a0=0x10020af8, a1=?, a2=?, a3=?.
  The `jalr` at 0x10008e20 calls printf with a0=0x10027ba8, a1=?, a2=0x2, a3=?.
  The `jalr` at 0x10008e40 calls printf with a0=0x10020a40, a1=[a0+44], a2=[a0+932]+4, a3=?.
  The `beq` branch at 0x100089c0 targets 0x10008d08, is taken when v0(=ret(getinvent)) == 0, and falls through when v0(=ret(getinvent)) != 0.
  The `beq` branch at 0x100089cc targets 0x100089e8 and is always taken.
  The `beq` branch at 0x100089e0 targets 0x100089fc, is taken when v0(=ret(getinvent)) == 0, and falls through when v0(=ret(getinvent)) != 0.
  The `bne` branch at 0x100089ec targets 0x100089d8, is taken when v0(=[ret(getinvent)+4]) != s1(=0x7), and falls through when v0(=[ret(getinvent)+4]) == s1(=0x7).
  The `beq` branch at 0x100089f4 targets 0x100089d4 and is always taken.
  The `beq` branch at 0x10008a0c targets 0x10008dd0, is taken when s2(?) == v1(=0xd), and falls through when s2(?) != v1(=0xd).
  The `beq` branch at 0x10008a1c targets 0x10008d10, is taken when a0(=[a0+80]) == 0, and falls through when a0(=[a0+80]) != 0.
  The `beq` branch at 0x10008a38 targets 0x10008a64 and is always taken.
  The `beq` branch at 0x10008a5c targets 0x10008a84, is taken when s2(?) >= s5(=one of 0x1, 0x6) (signed), and falls through when s2(?) < s5(=one of 0x1, 0x6) (signed).
  The `bne` branch at 0x10008a68 targets 0x10008a40, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `bne` branch at 0x10008a7c targets 0x10008a64, is taken when s2(?) < s5(=one of 0x1, 0x6) (signed), and falls through when s2(?) >= s5(=one of 0x1, 0x6) (signed).
  The `beq` branch at 0x10008aa8 targets 0x10008ae4, is taken when v0(=ret(get_ven_type)) == 0, and falls through when v0(=ret(get_ven_type)) != 0.
  The `beq` branch at 0x10008ac0 targets 0x10008d9c, is taken when ra(=[0x10027820]) == 0, and falls through when ra(=[0x10027820]) != 0.
  The `beq` branch at 0x10008af4 targets 0x10008b08, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `beq` branch at 0x10008b10 targets 0x10008d18, is taken when s2(=[a0+44]) == s0(=0x1), and falls through when s2(=[a0+44]) != s0(=0x1).
  The `beq` branch at 0x10008b18 targets 0x10008d7c, is taken when v0(=[0x10027820]) == 0, and falls through when v0(=[0x10027820]) != 0.
  The `blez` branch at 0x10008b40 targets 0x10008bd8, is taken when s2(=[a0+44]) <= 0 (signed), and falls through when s2(=[a0+44]) > 0 (signed).
  The `beq` branch at 0x10008b60 targets 0x10008b88 and is always taken.
  The `beq` branch at 0x10008b80 targets 0x10008bd4, is taken when s1(?) >= s2(=[a0+44]) (signed), and falls through when s1(?) < s2(=[a0+44]) (signed).
  The `beq` branch at 0x10008b9c targets 0x10008b78, is taken when s6(=[a0+44]-1) == s1(?), and falls through when s6(=[a0+44]-1) != s1(?).
  The `bne` branch at 0x10008bb0 targets 0x10008b68, is taken when a1(=[sym(__us_rsthread_stdio)]) != 0, and falls through when a1(=[sym(__us_rsthread_stdio)]) == 0.
  The `bltz` branch at 0x10008bbc targets 0x10008db8, is taken when a0(=[sym(__iob)+16]-1) < 0 (signed), and falls through when a0(=[sym(__iob)+16]-1) >= 0 (signed).
  The `beq` branch at 0x10008bcc targets 0x10008b78 and is always taken.
  The `beq` branch at 0x10008bf0 targets 0x10008c1c, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `beq` branch at 0x10008c24 targets 0x10008dfc, is taken when v0(=[a0+48]) == a2(=0x2), and falls through when v0(=[a0+48]) != a2(=0x2).
  The `beq` branch at 0x10008c2c targets 0x10008e20, is taken when v0(=[a0+48]) == s0(=0x1), and falls through when v0(=[a0+48]) != s0(=0x1).
  The `beq` branch at 0x10008c34 targets 0x10008d6c, is taken when v0(=[a0+48]) == 0, and falls through when v0(=[a0+48]) != 0.
  The `beq` branch at 0x10008c60 targets 0x10008de8, is taken when v0(=[a0+64]) == s0(=0x1), and falls through when v0(=[a0+64]) != s0(=0x1).
  The `beq` branch at 0x10008c68 targets 0x10008e0c, is taken when v0(=[a0+64]) == 0, and falls through when v0(=[a0+64]) != 0.
  The `beq` branch at 0x10008c74 targets 0x10008cf4, is taken when v0(=[a0+64]) == a1(=0x4), and falls through when v0(=[a0+64]) != a1(=0x4).
  The `beq` branch at 0x10008ca4 targets 0x10008d54, is taken when a2(=[a0+80]) == 0, and falls through when a2(=[a0+80]) != 0.
  The `beq` branch at 0x10008d00 targets 0x10008c90 and is always taken.
  The `beq` branch at 0x10008d08 targets 0x100089fc and is always taken.
  The `beq` branch at 0x10008d10 targets 0x10008a28 and is always taken.
  The `beq` branch at 0x10008d18 targets 0x10008e30, is taken when v0(=[0x10027820]) == 0, and falls through when v0(=[0x10027820]) != 0.
  The `beq` branch at 0x10008d4c targets 0x10008be8 and is always taken.
  The `beq` branch at 0x10008d64 targets 0x10008cc0 and is always taken.
  The `beq` branch at 0x10008d74 targets 0x10008c50 and is always taken.
  The `beq` branch at 0x10008d94 targets 0x10008be8 and is always taken.
  The `beq` branch at 0x10008db0 targets 0x10008ae4 and is always taken.
  The `beq` branch at 0x10008dc8 targets 0x10008b7c and is always taken.
  The `beq` branch at 0x10008de0 targets 0x10008a18 and is always taken.
  The `beq` branch at 0x10008df4 targets 0x10008c90 and is always taken.
  The `beq` branch at 0x10008e04 targets 0x10008c50 and is always taken.
  The `beq` branch at 0x10008e18 targets 0x10008c90 and is always taken.
  The `beq` branch at 0x10008e28 targets 0x10008c50 and is always taken.
  The `beq` branch at 0x10008e48 targets 0x10008be8 and is always taken.
  The return at 0x10008cec has v0 = 0x0.

- `ven_init` in `usr/gfx/gfxinit` at 0x10008e50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10008e50-0x10008ee0 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0x10008e8c loads 4 bytes from sym(gfxvaddr) +0x0.
  The `lw` at 0x10008eac loads 4 bytes from sym(fifoopt) +0x0.
  The `lw` at 0x10008eb4 loads 4 bytes from sym(fifo_pgib) +0x0.
  The `lw` at 0x10008eb8 loads 4 bytes from sym(fifo_taib) +0x0.
  The `lw` at 0x10008ec4 loads 4 bytes from sym(fifo_pgta) +0x0.
  The `jal` at 0x10008e88 calls venice_set_pipeaddr [0x1000fc78] with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=[sym(gfxvaddr)], a3=a4 at entry (arg4), a5=a0 at entry (arg0), a6=0x26414.
  The `jal` at 0x10008e94 calls venice_init [0x100111ec] with a0=a3 at entry (arg3), a1=?, a2=?, a3=?.
  The `jal` at 0x10008ec0 calls venice_fifo_hack [0x1000fd1c] with a0=a3 at entry (arg3), a1=[sym(fifoopt)], a2=[sym(fifo_pgib)], a3=[sym(fifo_taib)], a4=[sym(fifo_pgta)].
  The return at 0x10008ed8 has v0 = 0x0.

- `ng1_info` in `usr/gfx/gfxinit` at 0x10008ee0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10008ee0-0x10009164 (644 bytes).
  It occupies 644 bytes.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x30, including `lbu` at 0x10008eec, `lbu` at 0x10008ff8.
  The `sb` at 0x10008f10 stores 1 byte to a0 (arg0 at entry) +0x30.
  The `lbu` at 0x10008f2c loads 1 byte from a0 (arg0 at entry) +0x2e.
  The `lbu` at 0x10008f44 loads 1 byte from a0 (arg0 at entry) +0x28.
  The `lbu` at 0x10008f54 loads 1 byte from a0 (arg0 at entry) +0x29.
  The `lbu` at 0x10008f6c loads 1 byte from a0 (arg0 at entry) +0x2a.
  The `lbu` at 0x10008f8c loads 1 byte from a0 (arg0 at entry) +0x2d.
  The `lbu` at 0x10008fe0 loads 1 byte from a0 (arg0 at entry) +0x2f.
  The `lbu` at 0x10009010 loads 1 byte from a0 (arg0 at entry) +0x40.
  The `lh` at 0x10009034 loads 2 bytes from a0 (arg0 at entry) +0x38.
  The `lh` at 0x10009040 loads 2 bytes from a0 (arg0 at entry) +0x3a.
  The `lh` at 0x10009044 loads 2 bytes from a0 (arg0 at entry) +0x3c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x34, including `lw` at 0x10009050, `lw` at 0x10009070, `lw` at 0x10009090.
  The `lbu` at 0x100090b4 loads 1 byte from a0 (arg0 at entry) +0x2b.
  The `lbu` at 0x100090c0 loads 1 byte from a0 (arg0 at entry) +0x2c.
  The `jalr` at 0x10008f1c calls printf with a0=0x10027bb8, a1=[a0+48]:1+1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10008f30 calls printf with a0=0x10020b28, a1=[a0+46]:1, a2=?, a3=?.
  The `jalr` at 0x10008f48 calls printf with a0=0x10020b38, a1=a0 at entry (arg0), a2=[a0+40]:1, a3=?.
  The `jalr` at 0x10008f60 calls printf with a0=0x10020b50, a1=[a0+41]:1+65, a2=?, a3=?.
  The `jalr` at 0x10008f78 calls printf with a0=0x10020b68, a1=[a0+42]:1+65, a2=?, a3=?.
  The `jalr` at 0x10008f84 calls printf with a0=0x10027bb8, a1=?, a2=?, a3=?.
  The `jalr` at 0x10008fd4 calls printf with a0=0x10020b80, a1=?, a2=?, a3=0x1, a4=0x2, a5=0x3, a6=0x5.
  The `jalr` at 0x10008fec calls printf with a0=0x10020b98, a1=[a0+47]:1+65, a2=?, a3=?.
  The `jalr` at 0x10009004 calls printf with a0=0x10020bb0, a1=[a0+48]:1+65, a2=?, a3=?.
  The `jalr` at 0x1000901c calls printf with a0=0x10020bc8, a1=[a0+64]:1+55, a2=?, a3=?.
  The `jalr` at 0x1000902c calls printf with a0=0x10020be0, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009048 calls printf with a0=0x10020bf0, a1=[a0+56]:2, a2=[a0+58]:2, a3=[a0+60]:2.
  The `jalr` at 0x10009068 calls printf with a0=0x10020c00, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009088 calls printf with a0=0x10020c10, a1=?, a2=?, a3=?.
  The `jalr` at 0x100090a4 calls printf with a0=0x10027bd8, a1=?, a2=?, a3=?.
  The `jalr` at 0x100090b8 calls printf with a0=0x10020c20, a1=[a0+43]:1, a2=?, a3=?.
  The `jalr` at 0x100090d4 calls printf with a0=0x10020c30, a1=[a0+44]:1, a2=?, a3=?.
  The `jalr` at 0x100090e0 calls printf with a0=0x10027be0, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009100 calls printf with a0=0x10020c50, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009120 calls printf with a0=0x10020c78, a1=?, a2=?, a3=?.
  The `blez` branch at 0x10008f08 targets 0x10008f14, is taken when at(=[a0+48]:1) <= 0 (signed), and falls through when at(=[a0+48]:1) > 0 (signed).
  The `beq` branch at 0x10008fa0 targets 0x10008fcc, is taken when a0(=[a0+45]:1) == 0, and falls through when a0(=[a0+45]:1) != 0.
  The `beq` branch at 0x10008fa8 targets 0x10009140, is taken when a0(=[a0+45]:1) == a3(=0x1), and falls through when a0(=[a0+45]:1) != a3(=0x1).
  The `beq` branch at 0x10008fb0 targets 0x10009148, is taken when a0(=[a0+45]:1) == a4(=0x2), and falls through when a0(=[a0+45]:1) != a4(=0x2).
  The `beq` branch at 0x10008fb8 targets 0x10009154, is taken when a0(=[a0+45]:1) == a5(=0x3), and falls through when a0(=[a0+45]:1) != a5(=0x3).
  The `beq` branch at 0x10008fc0 targets 0x1000915c, is taken when a0(=[a0+45]:1) == a6(=0x5), and falls through when a0(=[a0+45]:1) != a6(=0x5).
  The `beq` branch at 0x10009058 targets 0x10009078, is taken when (a0(=[a0+52]) & 0x1) == 0, and falls through when (a0(=[a0+52]) & 0x1) != 0.
  The `beq` branch at 0x10009078 targets 0x10009098, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10009098 targets 0x100090b0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x100090c4 targets 0x100090e0, is taken when a1(=[a0+44]:1) == 0, and falls through when a1(=[a0+44]:1) != 0.
  The `beq` branch at 0x100090f0 targets 0x10009110, is taken when (a0(=[a0+52]) & 0x400) == 0, and falls through when (a0(=[a0+52]) & 0x400) != 0.
  The `beq` branch at 0x10009108 targets 0x1000912c and is always taken.
  The `beq` branch at 0x10009110 targets 0x1000912c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10009140 targets 0x10008fd0 and is always taken.
  The `beq` branch at 0x1000914c targets 0x10008fd0 and is always taken.
  The `beq` branch at 0x10009154 targets 0x10008fd0 and is always taken.
  The `beq` branch at 0x1000915c targets 0x10008fd0 and is always taken.
  The return at 0x10009138 has v0 = ret(printf).

- `ng2_kludge_info` in `usr/gfx/gfxinit` at 0x1000916c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1000916c-0x10009194 (40 bytes).
  It occupies 40 bytes.
  The `lbu` at 0x1000916c loads 1 byte from a0 (arg0 at entry) +0x28.
  The `sb` at 0x10009180 stores 1 byte to a0 (arg0 at entry) +0x28.
  The `sb` at 0x10009188 stores 1 byte to a0 (arg0 at entry) +0x2.
  The `bne` branch at 0x10009178 targets 0x1000918c, is taken when a2(=[a0+40]:1) < 0x8 (signed), and falls through when a2(=[a0+40]:1) >= 0x8 (signed).
  The return at 0x10009184 has v0 = ?.
  The return at 0x1000918c has v0 = ?.

- `mgras_init` in `usr/gfx/gfxinit` at 0x10009290 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10009290-0x10009bec (2396 bytes).
  It occupies 2396 bytes.
  The `ld` at 0x100092f4 loads 8 bytes from abs 0x10020d00.
  The `ld` at 0x10009300 loads 8 bytes from abs 0x10020d10.
  The `ld` at 0x10009304 loads 8 bytes from abs 0x10020d08.
  2 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x2b, including `lbu` at 0x1000934c, `lbu` at 0x10009384.
  2 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x28, including `lbu` at 0x10009394, `lbu` at 0x10009424.
  The `lbu` at 0x100093a8 loads 1 byte from a1 (arg1 at entry) +0x38.
  The `lbu` at 0x10009418 loads 1 byte from a1 (arg1 at entry) +0x2c.
  The `ld` at 0x100098c0 loads 8 bytes from abs 0x10020d18.
  The `lhu` at 0x100098cc loads 2 bytes from abs 0x10020d24.
  The `lw` at 0x100098d4 loads 4 bytes from abs 0x10020d20.
  The `jal` at 0x100092d0 calls (unnamed) [0x10009194] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100092e4 calls system with a0=0x10020ce0, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009318 calls open with a0=sp-4336, a1=0x0, a2=0x65313164756d7000, a3=?.
  The `jalr` at 0x1000935c calls strcpy with a0=sp-4224, a1=a2 at entry (arg2), a2=?, a3=[a1+43]:1.
  The `jalr` at 0x1000936c calls strcpy with a0=sp-3968, a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0x1000937c calls strcpy with a0=sp-3712, a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0x100093e0 calls strcat with a0=sp-4224, a1=0x10020db8, a2=?, a3=?, a4=[a1+43]:1, a5=0x3.
  The `jalr` at 0x100093f4 calls strcat with a0=sp-3968, a1=0x10020dd0, a2=?, a3=?.
  The `jalr` at 0x10009408 calls strcat with a0=sp-3712, a1=0x10020de0, a2=?, a3=?.
  The `jalr` at 0x10009448 calls strcat with a0=sp-4224, a1=0x10020e18, a2=?, a3=?.
  The `jalr` at 0x1000945c calls strcat with a0=sp-3968, a1=0x10020e28, a2=?, a3=?.
  The `jalr` at 0x10009470 calls strcat with a0=sp-3712, a1=0x10020e38, a2=?, a3=?.
  The `jalr` at 0x1000948c calls printf with a0=0x10020ed8, a1=sp-3968, a2=?, a3=?.
  The `jalr` at 0x1000949c calls open with a0=sp-3968, a1=0x800, a2=?, a3=?.
  The `jalr` at 0x100094b8 calls fstat with a0=ret(open), a1=sp-3456, a2=?, a3=?.
  The `jalr` at 0x100094e0 calls mmap with a0=0x0, a1=?, a2=0x1, a3=0x1, a4=ret(open), a5=0x0.
  The `jalr` at 0x100094f0 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0x1000953c calls printf with a0=0x10020f00, a1=sp-3968, a2=?, a3=?.
  The `jalr` at 0x10009550 calls ioctl with a0=a0 at entry (arg0), a1=0x6c, a2=sp-3304, a3=?.
  The `jalr` at 0x10009568 calls munmap with a0=ret(mmap), a1=?, a2=?, a3=?.
  The `jalr` at 0x10009584 calls printf with a0=0x10020f48, a1=sp-4224, a2=?, a3=?.
  The `jalr` at 0x10009594 calls open with a0=sp-4224, a1=0x800, a2=?, a3=?.
  The `jalr` at 0x100095ac calls fstat with a0=ret(open), a1=sp-3456, a2=?, a3=?.
  The `jalr` at 0x100095d0 calls mmap with a0=0x0, a1=?, a2=0x1, a3=0x1, a4=ret(open), a5=0x0.
  The `jalr` at 0x100095e0 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0x10009620 calls printf with a0=0x10020f70, a1=sp-4224, a2=?, a3=?.
  The `jalr` at 0x10009634 calls ioctl with a0=a0 at entry (arg0), a1=0x6c, a2=sp-3304, a3=?.
  The `jalr` at 0x10009648 calls munmap with a0=ret(mmap), a1=?, a2=?, a3=?.
  The `jalr` at 0x10009658 calls fopen with a0=sp-3712, a1=0x10027c00, a2=?, a3=?.
  The `jalr` at 0x10009674 calls fread with a0=sp-2248, a1=0x82c, a2=0x1, a3=ret(fopen).
  The `jalr` at 0x10009694 calls syslog with a0=0x2, a1=0x10020fc0, a2=0x1, a3=?.
  The `jalr` at 0x100096e8 calls strcat with a0=sp-4224, a1=0x10020e90, a2=?, a3=?.
  The `jalr` at 0x100096fc calls strcat with a0=sp-3968, a1=0x10020ea8, a2=?, a3=?.
  The `jalr` at 0x10009710 calls strcat with a0=sp-3712, a1=0x10020ec0, a2=?, a3=?.
  The `jalr` at 0x10009798 calls printf with a0=0x10020fe8, a1=?, a2=?, a3=?.
  The `jalr` at 0x100097ac calls printf with a0=0x10021008, a1=?, a2=?, a3=?.
  The `jalr` at 0x100097c0 calls printf with a0=0x10021028, a1=?, a2=?, a3=?.
  The `jalr` at 0x100097d4 calls printf with a0=0x10021048, a1=?, a2=?, a3=?.
  The `jalr` at 0x100097e8 calls printf with a0=0x10021070, a1=?, a2=?, a3=?.
  The `jalr` at 0x100097fc calls printf with a0=0x100210a0, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009810 calls printf with a0=0x100210c8, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009824 calls printf with a0=0x100210f0, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009838 calls printf with a0=0x10021118, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000984c calls printf with a0=0x10021140, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009860 calls printf with a0=0x10021168, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009874 calls printf with a0=0x10021188, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000988c calls ioctl with a0=a0 at entry (arg0), a1=0x6d670009, a2=sp-152, a3=?.
  The `jalr` at 0x100098e4 calls strcat with a0=sp-4336, a1=0x10020d00, a2=0x746d703b, a3=0x2000.
  The `jalr` at 0x100098f8 calls sprintf with a0=sp-4232, a1=0x10027be8, a2=a4 at entry (arg4), a3=?.
  The `jalr` at 0x10009908 calls strcat with a0=sp-4336, a1=sp-4232, a2=?, a3=?.
  The `jalr` at 0x10009918 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0x10009924 calls system with a0=sp-4336, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009940 calls printf with a0=0x10020d28, a1=sp-4336, a2=ret(system), a3=?.
  The `jalr` at 0x10009950 calls sginap with a0=0x3e8, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009964 calls ioctl with a0=a0 at entry (arg0), a1=0x6a, a2=0x0, a3=?.
  The `jalr` at 0x10009990 calls sprintf with a0=sp-3272, a1=0x10020fb0, a2=sp-3712, a3=?.
  The `jalr` at 0x100099a0 calls syslog with a0=0x2, a1=sp-3272, a2=?, a3=?.
  The `jalr` at 0x100099bc calls strcat with a0=sp-4224, a1=0x10020df8, a2=?, a3=?.
  The `jalr` at 0x100099cc calls strcat with a0=sp-3968, a1=0x10027bf0, a2=?, a3=?.
  The `jalr` at 0x100099e0 calls strcat with a0=sp-3712, a1=0x10020e08, a2=?, a3=?.
  The `jalr` at 0x100099f8 calls syslog with a0=0x2, a1=0x10027bf8, a2=sp-3968, a3=?.
  The `jalr` at 0x10009a14 calls syslog with a0=0x2, a1=0x10027bf8, a2=sp-3968, a3=?.
  The `jalr` at 0x10009a30 calls syslog with a0=0x2, a1=0x10027bf8, a2=sp-3968, a3=?.
  The `jalr` at 0x10009a3c calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0x10009a50 calls munmap with a0=ret(mmap), a1=?, a2=?, a3=?.
  The `jalr` at 0x10009a64 calls syslog with a0=0x2, a1=0x10020f30, a2=?, a3=?.
  The `jalr` at 0x10009a80 calls syslog with a0=0x2, a1=0x10027bf8, a2=sp-4224, a3=?.
  The `jalr` at 0x10009a9c calls syslog with a0=0x2, a1=0x10027bf8, a2=sp-4224, a3=?.
  The `jalr` at 0x10009ab8 calls printf with a0=0x10020d70, a1=sp-4336, a2=?, a3=?.
  The `jalr` at 0x10009ad4 calls syslog with a0=0x2, a1=0x10027bf8, a2=sp-4224, a3=?.
  The `jalr` at 0x10009ae0 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0x10009afc calls strcat with a0=sp-4224, a1=0x10020e48, a2=?, a3=?.
  The `jalr` at 0x10009b10 calls strcat with a0=sp-3968, a1=0x10020e60, a2=?, a3=?.
  The `jalr` at 0x10009b24 calls strcat with a0=sp-3712, a1=0x10020e78, a2=?, a3=?.
  The `jalr` at 0x10009b38 calls munmap with a0=ret(mmap), a1=?, a2=?, a3=?.
  The `jalr` at 0x10009b4c calls syslog with a0=0x2, a1=0x10020f30, a2=?, a3=?.
  The `jalr` at 0x10009b64 calls strcat with a0=sp-4224, a1=0x10020d80, a2=?, a3=?, a4=[a1+43]:1, a5=0x3.
  The `jalr` at 0x10009b78 calls strcat with a0=sp-3968, a1=0x10020d90, a2=?, a3=?.
  The `jalr` at 0x10009b8c calls strcat with a0=sp-3712, a1=0x10020da0, a2=?, a3=?.
  The `jalr` at 0x10009ba4 calls syslog with a0=0x2, a1=0x100211b0, a2=?, a3=?.
  The `jalr` at 0x10009bbc calls perror with a0=0x10020d40, a1=-0x1, a2=?, a3=?.
  The `jalr` at 0x10009bd0 calls syslog with a0=0x2, a1=0x10020d50, a2=?, a3=?.
  The `jalr` at 0x10009bdc calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10009328 targets 0x100098a4, is taken when s0(=ret(system)) == 0, and falls through when s0(=ret(system)) != 0.
  The `beq` branch at 0x10009330 targets 0x10009340, is taken when s2(=a3) == 0, and falls through when s2(=a3) != 0.
  The `beq` branch at 0x10009338 targets 0x10009aac, is taken when s0(=ret(system)) == 0, and falls through when s0(=ret(system)) != 0.
  The `beq` branch at 0x10009350 targets 0x100096a4, is taken when a3(=[a1+43]:1) == 0, and falls through when a3(=[a1+43]:1) != 0.
  The `beq` branch at 0x1000938c targets 0x10009418, is taken when a0(=0x2) == a4(=[a1+43]:1), and falls through when a0(=0x2) != a4(=[a1+43]:1).
  The `beq` branch at 0x10009398 targets 0x100096d8, is taken when a0(=0x2) == v0(=[a1+40]:1), and falls through when a0(=0x2) != v0(=[a1+40]:1).
  The `beq` branch at 0x100093a0 targets 0x100096d8, is taken when v0(=[a1+40]:1) == a5(=0x3), and falls through when v0(=[a1+40]:1) != a5(=0x3).
  The `beq` branch at 0x100093b4 targets 0x10009438, is taken when v0(=0x1) >= v1(=[a1+56]:1) (signed), and falls through when v0(=0x1) < v1(=[a1+56]:1) (signed).
  The `beq` branch at 0x100093bc targets 0x10009b5c, is taken when s5(=one of 0x0, 0x1) == 0, and falls through when s5(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x100093c4 targets 0x10009438, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x100093cc targets 0x100099b4, is taken when s5(=one of 0x0, 0x1) == 0, and falls through when s5(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x10009410 targets 0x10009478 and is always taken.
  The `bne` branch at 0x10009420 targets 0x10009394, is taken when a2(=[a1+44]:1) != a3(=0x1), and falls through when a2(=[a1+44]:1) == a3(=0x1).
  The `beq` branch at 0x10009428 targets 0x100096d8, is taken when a0(=0x2) == v0(=[a1+40]:1), and falls through when a0(=0x2) != v0(=[a1+40]:1).
  The `beq` branch at 0x10009430 targets 0x100096d8, is taken when v0(=[a1+40]:1) == a4(=0x3), and falls through when v0(=[a1+40]:1) != a4(=0x3).
  The `beq` branch at 0x10009438 targets 0x100099b0, is taken when s5(=one of 0x0, 0x1) == 0, and falls through when s5(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x10009478 targets 0x10009498, is taken when s2(=a3) == 0, and falls through when s2(=a3) != 0.
  The `bltz` branch at 0x100094a4 targets 0x10009a08, is taken when v0(=ret(open)) < 0 (signed), and falls through when v0(=ret(open)) >= 0 (signed).
  The `bltz` branch at 0x100094c0 targets 0x10009a24, is taken when v0(=ret(fstat)) < 0 (signed), and falls through when v0(=ret(fstat)) >= 0 (signed).
  The `beq` branch at 0x100094fc targets 0x100099f0, is taken when v0(=-0x1) == s3(=ret(mmap)), and falls through when v0(=-0x1) != s3(=ret(mmap)).
  The `beq` branch at 0x10009528 targets 0x10009544, is taken when s2(=a3) == 0, and falls through when s2(=a3) != 0.
  The `bltz` branch at 0x10009558 targets 0x10009a4c, is taken when v0(=ret(ioctl)) < 0 (signed), and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `beq` branch at 0x10009570 targets 0x10009590, is taken when s2(=a3) == 0, and falls through when s2(=a3) != 0.
  The `bltz` branch at 0x1000959c targets 0x10009a90, is taken when v0(=ret(open)) < 0 (signed), and falls through when v0(=ret(open)) >= 0 (signed).
  The `bltz` branch at 0x100095b4 targets 0x10009ac8, is taken when v0(=ret(fstat)) < 0 (signed), and falls through when v0(=ret(fstat)) >= 0 (signed).
  The `beq` branch at 0x100095ec targets 0x10009a74, is taken when a1(=-0x1) == s3(=ret(mmap)), and falls through when a1(=-0x1) != s3(=ret(mmap)).
  The `beq` branch at 0x10009600 targets 0x10009628, is taken when s2(=a3) == 0, and falls through when s2(=a3) != 0.
  The `bltz` branch at 0x1000963c targets 0x10009b34, is taken when v0(=ret(ioctl)) < 0 (signed), and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `beq` branch at 0x10009660 targets 0x10009980, is taken when v0(=ret(fopen)) == 0, and falls through when v0(=ret(fopen)) != 0.
  The `beq` branch at 0x10009680 targets 0x10009720, is taken when v0(=ret(fread)) == a2(=0x1), and falls through when v0(=ret(fread)) != a2(=0x1).
  The `beq` branch at 0x1000969c targets 0x100096a8 and is always taken.
  The `beq` branch at 0x100096d8 targets 0x10009af0, is taken when s5(=one of 0x0, 0x1) == 0, and falls through when s5(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x10009718 targets 0x10009478 and is always taken.
  The `beq` branch at 0x10009788 targets 0x1000987c, is taken when s2(=a3) == 0, and falls through when s2(=a3) != 0.
  The `bltz` branch at 0x10009894 targets 0x10009b9c, is taken when v0(=ret(ioctl)) < 0 (signed), and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `beq` branch at 0x1000989c targets 0x100096a8 and is always taken.
  The `bltz` branch at 0x100098a4 targets 0x10009330, is taken when v0(=ret(open)) < 0 (signed), and falls through when v0(=ret(open)) >= 0 (signed).
  The `beq` branch at 0x1000992c targets 0x10009948, is taken when s2(=a3) == 0, and falls through when s2(=a3) != 0.
  The `beq` branch at 0x10009970 targets 0x10009bb4, is taken when v0(=ret(ioctl)) == a1(=-0x1), and falls through when v0(=ret(ioctl)) != a1(=-0x1).
  The `beq` branch at 0x10009978 targets 0x1000934c and is always taken.
  The `beq` branch at 0x100099a8 targets 0x100096a8 and is always taken.
  The `beq` branch at 0x100099e8 targets 0x10009478 and is always taken.
  The `beq` branch at 0x10009a00 targets 0x100096a8 and is always taken.
  The `beq` branch at 0x10009a1c targets 0x100096a8 and is always taken.
  The `beq` branch at 0x10009a44 targets 0x100096a8 and is always taken.
  The `beq` branch at 0x10009a6c targets 0x100096a8 and is always taken.
  The `beq` branch at 0x10009a88 targets 0x100096a8 and is always taken.
  The `beq` branch at 0x10009aa4 targets 0x100096a8 and is always taken.
  The `beq` branch at 0x10009ac0 targets 0x10009340 and is always taken.
  The `beq` branch at 0x10009ae8 targets 0x100096a8 and is always taken.
  The `beq` branch at 0x10009b2c targets 0x10009478 and is always taken.
  The `beq` branch at 0x10009b54 targets 0x100096a8 and is always taken.
  The `beq` branch at 0x10009b94 targets 0x10009478 and is always taken.
  The `beq` branch at 0x10009bac targets 0x100096a8 and is always taken.
  The `beq` branch at 0x10009be4 targets 0x10009978 and is always taken.
  The return at 0x100096d0 has v0 = one of -0x1, 0x0.

- `_mgras_info` in `usr/gfx/gfxinit` at 0x10009bec (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10009bec-0x1000a000 (1044 bytes).
  It occupies 1044 bytes.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x28, including `lbu` at 0x10009c28, `lbu` at 0x10009db8.
  The `lbu` at 0x10009c34 loads 1 byte from a0 (arg0 at entry) +0x2b.
  The `lbu` at 0x10009c58 loads 1 byte from a0 (arg0 at entry) +0x2c.
  The `lbu` at 0x10009c7c loads 1 byte from a0 (arg0 at entry) +0x2d.
  The `lbu` at 0x10009ca8 loads 1 byte from a0 (arg0 at entry) +0x31.
  The `lbu` at 0x10009cbc loads 1 byte from a0 (arg0 at entry) +0x32.
  The `lbu` at 0x10009cc8 loads 1 byte from a0 (arg0 at entry) +0x33.
  The `lbu` at 0x10009cd8 loads 1 byte from a0 (arg0 at entry) +0x34.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x37, including `lbu` at 0x10009ce4, `lbu` at 0x10009f34.
  The `lbu` at 0x10009cfc loads 1 byte from a0 (arg0 at entry) +0x38.
  The `lbu` at 0x10009d38 loads 1 byte from a0 (arg0 at entry) +0x39.
  The `lbu` at 0x10009d50 loads 1 byte from a0 (arg0 at entry) +0x3b.
  The `lbu` at 0x10009d74 loads 1 byte from a0 (arg0 at entry) +0x3c.
  The `lbu` at 0x10009d8c loads 1 byte from a0 (arg0 at entry) +0x3d.
  The `sb` at 0x10009da0 stores 1 byte to a0 (arg0 at entry) +0x3d.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x3f, including `lbu` at 0x10009dd0, `lbu` at 0x10009f04.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x29, including `lbu` at 0x10009e20, `lbu` at 0x10009e64.
  The `lw` at 0x10009e40 loads 4 bytes from table(0x100212d8) +0x0.
  The `lbu` at 0x10009e70 loads 1 byte from a0 (arg0 at entry) +0x35.
  The `lbu` at 0x10009e88 loads 1 byte from a0 (arg0 at entry) +0x36.
  2 such `lw` accesses load 4 bytes from sym(mgras_ip_type) +0x0, including `lw` at 0x10009e94, `lw` at 0x10009ef4.
  The `lbu` at 0x10009ea0 loads 1 byte from a0 (arg0 at entry) +0x40.
  The `jal` at 0x10009c14 calls (unnamed) [0x10009194] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10009c2c calls printf with a0=0x100211d0, a1=[a0+40]:1, a2=?, a3=?.
  The `jalr` at 0x10009c50 calls printf with a0=0x100211e8, a1=[a0+43]:1, a2=one of 0x10027c02, 0x10027c04, a3=?.
  The `jalr` at 0x10009c74 calls printf with a0=0x100211f8, a1=[a0+44]:1, a2=one of 0x10027c02, 0x10027c04, a3=?.
  The `jalr` at 0x10009c98 calls printf with a0=0x10021208, a1=[a0+45]:1, a2=one of 0x10027c02, 0x10027c04, a3=?.
  The `jalr` at 0x10009cac calls printf with a0=0x10021218, a1=[a0+49]:1, a2=?, a3=?.
  The `jalr` at 0x10009cc0 calls printf with a0=0x10021230, a1=[a0+50]:1, a2=?, a3=?.
  The `jalr` at 0x10009cdc calls printf with a0=0x10021240, a1=[a0+52]:1, a2=?, a3=?.
  The `jalr` at 0x10009cf4 calls printf with a0=0x10021258, a1=[a0+55]:1+64, a2=?, a3=?.
  The `jalr` at 0x10009d14 calls printf with a0=0x10021268, a1=[a0+56]:1+62, a2=[a0+56]:1, a3=?.
  The `jalr` at 0x10009d30 calls printf with a0=0x10021278, a1=[a0+56]:1+64, a2=[a0+56]:1, a3=?.
  The `jalr` at 0x10009d48 calls printf with a0=0x10021288, a1=[a0+57]:1+65, a2=?, a3=?.
  The `jalr` at 0x10009d60 calls printf with a0=0x10021298, a1=[a0+59]:1+65, a2=?, a3=?.
  The `jalr` at 0x10009d6c calls printf with a0=0x10027c06, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009d84 calls printf with a0=0x100212a8, a1=[a0+60]:1+65, a2=?, a3=?.
  The `jalr` at 0x10009db0 calls printf with a0=0x100212b8, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009e0c calls printf with a0=0x100212c8, a1=?, a2=one of 0x3, 0x5, a3=?, a4=0x2.
  The `jalr` at 0x10009e18 calls printf with a0=0x10027c1c, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009e54 calls printf with a0=0x10021520, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009e68 calls printf with a0=0x10021530, a1=[a0+41]:1, a2=?, a3=?.
  The `jalr` at 0x10009e80 calls printf with a0=0x10021548, a1=[a0+53]:1, a2=?, a3=?.
  The `jalr` at 0x10009eac calls printf with a0=0x10021560, a1=[a0+64]:1, a2=[sym(mgras_ip_type)], a3=0x2.
  The `jalr` at 0x10009ec4 calls printf with a0=0x10021580, a1=[a0+64]:1, a2=[sym(mgras_ip_type)], a3=0x2.
  The `jalr` at 0x10009ed4 calls printf with a0=0x10027c06, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009f14 calls printf with a0=0x100214e8, a1=?, a2=0x3, a3=?, a4=0x2.
  The `jalr` at 0x10009f28 calls printf with a0=0x10027c06, a1=[a0+51]:1, a2=?, a3=?.
  The `jalr` at 0x10009f44 calls printf with a0=0x10027c20, a1=?, a2=entry(0x100212d8), a3=?.
  The `jalr` at 0x10009f5c calls printf with a0=0x100214f8, a1=?, a2=entry(0x100212d8), a3=?.
  The `jalr` at 0x10009f70 calls printf with a0=0x10027c24, a1=?, a2=entry(0x100212d8), a3=?.
  The `jalr` at 0x10009f88 calls printf with a0=0x10021508, a1=?, a2=entry(0x100212d8), a3=?.
  The `jalr` at 0x10009f9c calls printf with a0=0x10027c28, a1=?, a2=entry(0x100212d8), a3=?.
  The `jalr` at 0x10009fb0 calls printf with a0=0x10027c2c, a1=?, a2=entry(0x100212d8), a3=?.
  The `jalr` at 0x10009fc0 calls printf with a0=0x10027c30, a1=?, a2=entry(0x100212d8), a3=?.
  The `jalr` at 0x10009ff0 calls printf with a0=0x10027c06, a1=[sym(mgras_ip_type)], a2=0x3, a3=?, a4=0x2.
  The `bne` branch at 0x10009c3c targets 0x10009c48, is taken when a1(=[a0+43]:1) < 0x2 (signed), and falls through when a1(=[a0+43]:1) >= 0x2 (signed).
  The `bne` branch at 0x10009c60 targets 0x10009c6c, is taken when a1(=[a0+44]:1) < 0x2 (signed), and falls through when a1(=[a0+44]:1) >= 0x2 (signed).
  The `beq` branch at 0x10009c84 targets 0x10009c90, is taken when a0(=0x1) == a1(=[a0+45]:1), and falls through when a0(=0x1) != a1(=[a0+45]:1).
  The `beq` branch at 0x10009ccc targets 0x10009f24, is taken when a1(=[a0+51]:1) == 0, and falls through when a1(=[a0+51]:1) != 0.
  The `bne` branch at 0x10009d04 targets 0x10009d24, is taken when a2(=[a0+56]:1) < 0x3 (signed), and falls through when a2(=[a0+56]:1) >= 0x3 (signed).
  The `beq` branch at 0x10009d1c targets 0x10009d38 and is always taken.
  The `blez` branch at 0x10009d90 targets 0x10009da8, is taken when a2(=[a0+61]:1) <= 0 (signed), and falls through when a2(=[a0+61]:1) > 0 (signed).
  The `beq` branch at 0x10009dc0 targets 0x10009ef0, is taken when a4(=0x2) == a0(=[a0+40]:1), and falls through when a4(=0x2) != a0(=[a0+40]:1).
  The `beq` branch at 0x10009dc8 targets 0x10009ef4, is taken when a2(=0x3) == a0(=[a0+40]:1), and falls through when a2(=0x3) != a0(=[a0+40]:1).
  The `beq` branch at 0x10009dd4 targets 0x10009f38, is taken when a0(=[a0+63]:1) == 0, and falls through when a0(=[a0+63]:1) != 0.
  The `beq` branch at 0x10009de0 targets 0x10009fd0, is taken when a1(=0x1) == a0(=[a0+63]:1), and falls through when a1(=0x1) != a0(=[a0+63]:1).
  The `beq` branch at 0x10009de8 targets 0x10009fd8, is taken when a4(=0x2) == a0(=[a0+63]:1), and falls through when a4(=0x2) != a0(=[a0+63]:1).
  The `beq` branch at 0x10009df0 targets 0x10009fe0, is taken when a2(=0x3) == a0(=[a0+63]:1), and falls through when a2(=0x3) != a0(=[a0+63]:1).
  The `beq` branch at 0x10009df8 targets 0x10009fe8, is taken when a0(=[a0+63]:1) == a2(=0x5), and falls through when a0(=[a0+63]:1) != a2(=0x5).
  The `beq` branch at 0x10009e38 targets 0x10009e4c, is taken when a1(?) >= 0x84 (unsigned), and falls through when a1(?) < 0x84 (unsigned).
  The `beq` branch at 0x10009e74 targets 0x10009e88, is taken when a1(=[a0+53]:1) == 0, and falls through when a1(=[a0+53]:1) != 0.
  The `beq` branch at 0x10009e8c targets 0x10009ecc, is taken when a1(=[a0+54]:1) == 0, and falls through when a1(=[a0+54]:1) != 0.
  The `bne` branch at 0x10009e9c targets 0x10009ebc, is taken when a2(=[sym(mgras_ip_type)]) != a3(=0x2), and falls through when a2(=[sym(mgras_ip_type)]) == a3(=0x2).
  The `beq` branch at 0x10009eb4 targets 0x10009ed0 and is always taken.
  The `beq` branch at 0x10009ef8 targets 0x10009ff0, is taken when a1(=[sym(mgras_ip_type)]) == a2(=0x3), and falls through when a1(=[sym(mgras_ip_type)]) != a2(=0x3).
  The `beq` branch at 0x10009f1c targets 0x10009e18 and is always taken.
  The `beq` branch at 0x10009f30 targets 0x10009ce8 and is always taken.
  The `beq` branch at 0x10009f38 targets 0x10009e08 and is always taken.
  The `beq` branch at 0x10009f4c targets 0x10009e60 and is always taken.
  The `beq` branch at 0x10009f64 targets 0x10009e60 and is always taken.
  The `beq` branch at 0x10009f78 targets 0x10009e60 and is always taken.
  The `beq` branch at 0x10009f90 targets 0x10009e60 and is always taken.
  The `beq` branch at 0x10009fa4 targets 0x10009e60 and is always taken.
  The `beq` branch at 0x10009fb8 targets 0x10009e60 and is always taken.
  The `beq` branch at 0x10009fc8 targets 0x10009e60 and is always taken.
  The `beq` branch at 0x10009fd0 targets 0x10009e04 and is always taken.
  The `beq` branch at 0x10009fd8 targets 0x10009e04 and is always taken.
  The `beq` branch at 0x10009fe0 targets 0x10009e04 and is always taken.
  The `beq` branch at 0x10009fe8 targets 0x10009e08 and is always taken.
  The `beq` branch at 0x10009ff8 targets 0x10009e18 and is always taken.
  The return at 0x10009ee8 has v0 = ret(printf).
  The indirect jump at 0x10009e44 uses the jump table at 0x100212d8 with targets 0x10009e4c, 0x10009fc0, 0x10009fac, 0x10009f98, 0x10009fc0, 0x10009fac, 0x10009f40, 0x10009f80, 0x10009f80, 0x10009f80, 0x10009f80, 0x10009f6c, 0x10009f80, 0x10009f80, 0x10009f80, 0x10009f80, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009e4c, 0x10009f54, 0x10009f54.

- `kona_info` in `usr/gfx/gfxinit` at 0x1000acbc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1000acbc-0x1000ae90 (468 bytes).
  It occupies 468 bytes.
  The `lw` at 0x1000acd4 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x1000ad40 loads 4 bytes from sym(verbose) +0x0.
  The `jal` at 0x1000ad34 calls (unnamed) [0x1000a218] with a0=a0+40, a1=a1 at entry (arg1), a2=[a0+40], a3=0x5, a4=0x6.
  The `jal` at 0x1000ad54 calls (unnamed) [0x1000aa7c] with a0=a0+40, a1=?, a2=?, a3=?.
  The `jal` at 0x1000ad68 calls nic_report [0x1000cd5c] with a0=a0+964, a1=0x10027c40, a2=?, a3=?.
  The `jal` at 0x1000ad88 calls nic_report [0x1000cd5c] with a0=a0+1724, a1=0x10027d18, a2=?, a3=?.
  The `jal` at 0x1000ad98 calls nic_report [0x1000cd5c] with a0=a0+1040, a1=0x10027d1c, a2=?, a3=?.
  The `jal` at 0x1000adac calls nic_report [0x1000cd5c] with a0=a0+1420, a1=0x10027d20, a2=?, a3=?.
  The `jal` at 0x1000adbc calls nic_report [0x1000cd5c] with a0=a0+1116, a1=0x10027d24, a2=?, a3=?.
  The `jal` at 0x1000add0 calls nic_report [0x1000cd5c] with a0=a0+1496, a1=0x10027d28, a2=?, a3=?.
  The `jal` at 0x1000ade0 calls nic_report [0x1000cd5c] with a0=a0+1192, a1=0x10027d2c, a2=?, a3=?.
  The `jal` at 0x1000adf8 calls nic_report [0x1000cd5c] with a0=a0+1572, a1=0x10027d30, a2=?, a3=?.
  The `jal` at 0x1000ae08 calls nic_report [0x1000cd5c] with a0=a0+1268, a1=0x10027d34, a2=?, a3=?.
  The `jal` at 0x1000ae1c calls nic_report [0x1000cd5c] with a0=a0+1648, a1=0x10027d38, a2=?, a3=?.
  The `jal` at 0x1000ae2c calls nic_report [0x1000cd5c] with a0=a0+1344, a1=0x10027d3c, a2=?, a3=?.
  The `jal` at 0x1000ae3c calls nic_report [0x1000cd5c] with a0=a0+1800, a1=0x10027d40, a2=?, a3=?.
  The `jal` at 0x1000ae4c calls nic_report [0x1000cd5c] with a0=a0+1876, a1=0x10027d48, a2=?, a3=?.
  The `beq` branch at 0x1000acf4 targets 0x1000ae78, is taken when a2(=[a0+40]) == at(=0x1), and falls through when a2(=[a0+40]) != at(=0x1).
  The `beq` branch at 0x1000ad00 targets 0x1000ae78, is taken when a2(=[a0+40]) == v1(=0x3), and falls through when a2(=[a0+40]) != v1(=0x3).
  The `beq` branch at 0x1000ad08 targets 0x1000ae78, is taken when a2(=[a0+40]) == a0(=0x4), and falls through when a2(=[a0+40]) != a0(=0x4).
  The `beq` branch at 0x1000ad10 targets 0x1000ae78, is taken when a2(=[a0+40]) == a3(=0x5), and falls through when a2(=[a0+40]) != a3(=0x5).
  The `beq` branch at 0x1000ad18 targets 0x1000ae78, is taken when a2(=[a0+40]) == a4(=0x6), and falls through when a2(=[a0+40]) != a4(=0x6).
  The `blez` branch at 0x1000ad44 targets 0x1000ae58, is taken when ra(=[sym(verbose)]) <= 0 (signed), and falls through when ra(=[sym(verbose)]) > 0 (signed).
  The `bne` branch at 0x1000ad70 targets 0x1000ad84, is taken when s2(=one of 0x0, 0x1) != 0, and falls through when s2(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x1000ad78 targets 0x1000ad94, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0x1000ada0 targets 0x1000adb4, is taken when s2(=one of 0x0, 0x1) == 0, and falls through when s2(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1000adc4 targets 0x1000add8, is taken when s2(=one of 0x0, 0x1) == 0, and falls through when s2(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1000ade8 targets 0x1000ae04, is taken when s2(=one of 0x0, 0x1) == 0, and falls through when s2(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1000ae10 targets 0x1000ae80, is taken when s2(=one of 0x0, 0x1) == 0, and falls through when s2(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1000ae78 targets 0x1000ad20 and is always taken.
  The `beq` branch at 0x1000ae80 targets 0x1000ae38, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0x1000ae88 targets 0x1000ae28 and is always taken.
  The return at 0x1000ae70 has v0 = 0x0.

- `kona_getconfig` in `usr/gfx/gfxinit` at 0x1000ae90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1000ae90-0x1000b0e0 (592 bytes).
  It occupies 592 bytes.
  The `sw` at 0x1000af3c stores 4 bytes to ret(memalign) +0x0.
  3 such `lw` accesses load 4 bytes from ret(memalign) +0x0, including `lw` at 0x1000af58, `lw` at 0x1000af70, `lw` at 0x1000afa8.
  3 such `lw` accesses load 4 bytes from sym(errno) +0x0, including `lw` at 0x1000b028, `lw` at 0x1000b068, `lw` at 0x1000b0a4.
  The `jalr` at 0x1000aeb0 calls getpagesize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000aec4 calls memalign with a0=ret(getpagesize), a1=0x4000, a2=?, a3=?.
  The `jalr` at 0x1000aef0 calls ioctl with a0=a0 at entry (arg0), a1=0x2774, a2=sp-80, a3=?.
  The `jal` at 0x1000af0c calls (unnamed) [0x1000a108] with a0=0x1f2, a1=?, a2=?, a3=?.
  The `jal` at 0x1000af18 calls (unnamed) [0x1000a108] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1000af24 calls (unnamed) [0x1000a108] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1000af30 calls (unnamed) [0x1000a108] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1000af40 calls (unnamed) [0x1000a108] with a0=0x1e9, a1=?, a2=?, a3=?.
  The `jal` at 0x1000af50 calls (unnamed) [0x1000a108] with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000af88 calls sginap with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000afc4 calls ioctl with a0=a0 at entry (arg0), a1=0x2716, a2=ret(memalign)+8, a3=?.
  The `jalr` at 0x1000afec calls ioctl with a0=a0 at entry (arg0), a1=0x2774, a2=sp-80, a3=?.
  The `jalr` at 0x1000b024 calls strerror with a0=[sym(errno)], a1=?, a2=?, a3=?.
  The `jalr` at 0x1000b038 calls printf with a0=0x10021850, a1=ret(strerror), a2=?, a3=?.
  The `jalr` at 0x1000b050 calls printf with a0=0x10021880, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000b064 calls strerror with a0=[sym(errno)], a1=?, a2=?, a3=?.
  The `jalr` at 0x1000b07c calls printf with a0=0x100218a8, a1=ret(strerror), a2=?, a3=?.
  The `jalr` at 0x1000b088 calls exit with a0=-0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000b0a0 calls strerror with a0=[sym(errno)], a1=?, a2=?, a3=?.
  The `jalr` at 0x1000b0b4 calls printf with a0=0x100218d0, a1=ret(strerror), a2=?, a3=?.
  The `jalr` at 0x1000b0c0 calls exit with a0=-0x1, a1=?, a2=?, a3=?.
  The `bltz` branch at 0x1000aef8 targets 0x1000b01c, is taken when v0(=ret(ioctl)) < 0 (signed), and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `bne` branch at 0x1000af60 targets 0x1000afa8, is taken when s3(=[ret(memalign)]) != 0, and falls through when s3(=[ret(memalign)]) == 0.
  The `beq` branch at 0x1000af68 targets 0x1000b0d0 and is always taken.
  The `bne` branch at 0x1000af78 targets 0x1000afa8, is taken when t8(=[ret(memalign)]) != 0, and falls through when t8(=[ret(memalign)]) == 0.
  The `beq` branch at 0x1000af80 targets 0x1000af70, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x1000afa0 targets 0x1000af70, is taken when ra(?) < 0x1001 (unsigned), and falls through when ra(?) >= 0x1001 (unsigned).
  The `beq` branch at 0x1000afac targets 0x1000b048, is taken when at(=[ret(memalign)]) == 0, and falls through when at(=[ret(memalign)]) != 0.
  The `bltz` branch at 0x1000afcc targets 0x1000b060, is taken when v0(=ret(ioctl)) < 0 (signed), and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `bltz` branch at 0x1000aff4 targets 0x1000b098, is taken when v0(=ret(ioctl)) < 0 (signed), and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `beq` branch at 0x1000b040 targets 0x1000b000 and is always taken.
  The `beq` branch at 0x1000b058 targets 0x1000afb8 and is always taken.
  The `beq` branch at 0x1000b090 targets 0x1000afd8 and is always taken.
  The `beq` branch at 0x1000b0c8 targets 0x1000b000 and is always taken.
  The `beq` branch at 0x1000b0d8 targets 0x1000af80 and is always taken.
  The return at 0x1000b014 has v0 = one of -0x1, 0x0.

- `kona_init` in `usr/gfx/gfxinit` at 0x1000b0e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1000b0e0-0x1000b124 (68 bytes).
  It occupies 68 bytes.
  The `jal` at 0x1000b10c calls kona_loaducode [0x1000ca5c] with a0=a1 at entry (arg1), a1=a4 at entry (arg4), a2=a2 at entry (arg2), a3=a5 at entry (arg5), a4=a3 at entry (arg3).
  The return at 0x1000b11c has v0 = ret(kona_loaducode).

- `kona_diagnose` in `usr/gfx/gfxinit` at 0x1000b1f8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1000b1f8-0x1000b414 (540 bytes).
  It occupies 540 bytes.
  The `jalr` at 0x1000b224 calls sprintf with a0=sp-208, a1=0x10027d58, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000b238 calls ioctl with a0=a0 at entry (arg0), a1=0x2720, a2=sp-192, a3=?.
  The `jalr` at 0x1000b26c calls sprintf with a0=sp-168, a1=0x10021940, a2=sp-208, a3=?.
  The `jalr` at 0x1000b284 calls syslog with a0=0x4, a1=0x10027d5c, a2=sp-168, a3=?.
  The `jalr` at 0x1000b290 calls fork with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1000b2ac calls (unnamed) [0x1000b15c] with a0=0x3c, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000b2bc calls wait with a0=sp-176, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000b2f0 calls printf with a0=0x10021a10, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000b334 calls syslog with a0=0x2, a1=0x100219f8, a2=?, a3=?.
  The `jalr` at 0x1000b358 calls execlp with a0=0x10021998, a1=0x10021998, a2=sp-208, a3=0x0.
  The `jalr` at 0x1000b36c calls perror with a0=0x10027d68, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000b378 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000b394 calls perror with a0=0x10021900, a1=?, a2=?, a3=ret(ioctl).
  The `jalr` at 0x1000b3a8 calls syslog with a0=0x2, a1=0x10021920, a2=?, a3=?.
  The `jalr` at 0x1000b3bc calls perror with a0=0x10027d60, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000b3d0 calls syslog with a0=0x2, a1=0x10021978, a2=?, a3=?.
  The `jalr` at 0x1000b3ec calls syslog with a0=0x2, a1=0x100219b8, a2=?, a3=?.
  The `jalr` at 0x1000b404 calls fprintf with a0=sym(__iob)+32, a1=0x100219d8, a2=?, a3=?.
  The `bltz` branch at 0x1000b240 targets 0x1000b388, is taken when v0(=ret(ioctl)) < 0 (signed), and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `beq` branch at 0x1000b24c targets 0x1000b310, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1000b254 targets 0x1000b310, is taken when a3(?) == v0(=0x1), and falls through when a3(?) != v0(=0x1).
  The `bltz` branch at 0x1000b298 targets 0x1000b3b8, is taken when v0(=ret(fork)) < 0 (signed), and falls through when v0(=ret(fork)) >= 0 (signed).
  The `beq` branch at 0x1000b2a0 targets 0x1000b344, is taken when v0(=ret(fork)) == 0, and falls through when v0(=ret(fork)) != 0.
  The `bltz` branch at 0x1000b2b4 targets 0x1000b318, is taken when v0(=ret(0x1000b15c)) < 0 (signed), and falls through when v0(=ret(0x1000b15c)) >= 0 (signed).
  The `bltz` branch at 0x1000b2c4 targets 0x1000b3e0, is taken when v0(=ret(wait)) < 0 (signed), and falls through when v0(=ret(wait)) >= 0 (signed).
  The `beq` branch at 0x1000b2d4 targets 0x1000b320, is taken when (v0(?) & 0xff) == 0, and falls through when (v0(?) & 0xff) != 0.
  The `beq` branch at 0x1000b2e0 targets 0x1000b2fc, is taken when v1(=a3) == 0, and falls through when v1(=a3) != 0.
  The `beq` branch at 0x1000b310 targets 0x1000b2fc and is always taken.
  The `beq` branch at 0x1000b318 targets 0x1000b2fc and is always taken.
  The `beq` branch at 0x1000b320 targets 0x1000b2e0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1000b33c targets 0x1000b2fc and is always taken.
  The `bgez` branch at 0x1000b360 targets 0x1000b2a8, is taken when v0(=ret(execlp)) >= 0 (signed), and falls through when v0(=ret(execlp)) < 0 (signed).
  The `beq` branch at 0x1000b380 targets 0x1000b2a8 and is always taken.
  The `beq` branch at 0x1000b3b0 targets 0x1000b2fc and is always taken.
  The `beq` branch at 0x1000b3d8 targets 0x1000b2fc and is always taken.
  The `beq` branch at 0x1000b40c targets 0x1000b2fc and is always taken.
  The return at 0x1000b308 has v0 = one of -0x1, 0x0.

- `kona_loaducode` in `usr/gfx/gfxinit` at 0x1000ca5c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1000ca5c-0x1000cc70 (532 bytes).
  It occupies 532 bytes.
  The `sw` at 0x1000cac4 stores 4 bytes to abs 0x1002804c.
  The `sw` at 0x1000cad0 stores 4 bytes to abs 0x10028044.
  8 such `lw` accesses load 4 bytes from sym(gfxvaddr) +0x0, including `lw` at 0x1000cad8, `lw` at 0x1000cae8, `lw` at 0x1000cafc.
  2 such `sw` accesses store 4 bytes to [sym(gfxvaddr)] +0x4308, including `sw` at 0x1000cae0, `sw` at 0x1000cc2c.
  2 such `sw` accesses store 4 bytes to [sym(gfxvaddr)] +0x43e8, including `sw` at 0x1000caf4, `sw` at 0x1000cc14.
  2 such `sw` accesses store 4 bytes to [sym(gfxvaddr)] +0x43f0, including `sw` at 0x1000cb00, `sw` at 0x1000cc20.
  The `sw` at 0x1000cc00 stores 4 bytes to [sym(gfxvaddr)] +0x43b0.
  The `sw` at 0x1000cc3c stores 4 bytes to [sym(gfxvaddr)] +0x4328.
  The `jalr` at 0x1000ca98 calls bzero with a0=0x10028040, a1=0xe0, a2=a2 at entry (arg2), a3=0x22808.
  The `jal` at 0x1000cacc calls (unnamed) [0x1000c690] with a0=a1 at entry (arg1), a1=a4 at entry (arg4), a2=?, a3=?, a4=0xf, a5=0x10028040.
  The `jalr` at 0x1000cb1c calls printf with a0=0x10022068, a1=?, a2=?, a3=?, a6=[0x10027834], a7=0x1.
  The `jal` at 0x1000cb34 calls (unnamed) [0x1000b7d0] with a0=0x10027d98, a1=a2 at entry (arg2), a2=a4 at entry (arg4), a3=?.
  The `jal` at 0x1000cb50 calls (unnamed) [0x1000c208] with a0=0x10027da0, a1=a2 at entry (arg2), a2=a4 at entry (arg4), a3=?.
  The `jal` at 0x1000cb6c calls (unnamed) [0x1000bf40] with a0=0x10027da8, a1=a2 at entry (arg2), a2=a4 at entry (arg4), a3=?.
  The `jal` at 0x1000cb88 calls (unnamed) [0x1000bf40] with a0=0x10027db0, a1=a2 at entry (arg2), a2=a4 at entry (arg4), a3=?.
  The `jal` at 0x1000cbd0 calls (unnamed) [0x1000c424] with a0=a4 at entry (arg4), a1=(ret(0x1000bf40) | ret(0x1000bf40)), a2=?, a3=?.
  The `jalr` at 0x1000cc60 calls printf with a0=0x10022098, a1=?, a2=[0x10027828], a3=?.
  The `beq` branch at 0x1000cb0c targets 0x1000cb24, is taken when a6(=[0x10027834]) == 0, and falls through when a6(=[0x10027834]) != 0.
  The `beq` branch at 0x1000cbac targets 0x1000cbc8, is taken when a0(=((ret(0x1000b7d0) | ret(0x1000c208)) | (ret(0x1000bf40) | ret(0x1000bf40)))) == 0, and falls through when a0(=((ret(0x1000b7d0) | ret(0x1000c208)) | (ret(0x1000bf40) | ret(0x1000bf40)))) != 0.
  The `beq` branch at 0x1000cbdc targets 0x1000cbec, is taken when v0(=ret(0x1000c424)) == 0, and falls through when v0(=ret(0x1000c424)) != 0.
  The `beq` branch at 0x1000cbe4 targets 0x1000cbb8 and is always taken.
  The `beq` branch at 0x1000cbec targets 0x1000cc4c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1000cc44 targets 0x1000cbb4 and is always taken.
  The `beq` branch at 0x1000cc68 targets 0x1000cbf4 and is always taken.
  The return at 0x1000cbc0 has v0 = one of ?, ret(0x1000c424).

- `nic_report` in `usr/gfx/gfxinit` at 0x1000cd5c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1000cd5c-0x1000d03c (736 bytes).
  It occupies 736 bytes.
  2 such `lw` accesses load 4 bytes from sym(verbose) +0x0, including `lw` at 0x1000cd78, `lw` at 0x1000cf2c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x1000cda4, `lw` at 0x1000ce10, `lw` at 0x1000cf00.
  The `lbu` at 0x1000cdb4 loads 1 byte from a0 (arg0 at entry) +0xa.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xb, including `lbu` at 0x1000cdc0, `lbu` at 0x1000ce04.
  The `lbu` at 0x1000cdcc loads 1 byte from a0 (arg0 at entry) +0x9.
  The `lbu` at 0x1000cdd0 loads 1 byte from a0 (arg0 at entry) +0x8.
  The `lbu` at 0x1000cdd4 loads 1 byte from a0 (arg0 at entry) +0x7.
  The `lbu` at 0x1000cdd8 loads 1 byte from a0 (arg0 at entry) +0x6.
  The `lbu` at 0x1000cddc loads 1 byte from a0 (arg0 at entry) +0x5.
  The `lbu` at 0x1000cde4 loads 1 byte from a0 (arg0 at entry) +0x4.
  The `lbu` at 0x1000ce64 loads 1 byte from a0 (arg0 at entry) +0xc.
  The `lbu` at 0x1000cfa4 loads 1 byte from a0 (arg0 at entry) +0x36.
  The `lbu` at 0x1000cfe0 loads 1 byte from a0 (arg0 at entry) +0x3b.
  The `jalr` at 0x1000cd9c calls sprintf with a0=sp-304, a1=0x10027db8, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jalr` at 0x1000cdfc calls printf with a0=0x100220f8, a1=sp-304, a2=[a0+4]:1, a3=[a0+5]:1, a4=[a0+6]:1, a5=[a0+7]:1, a6=[a0+8]:1, a7=[a0+9]:1.
  The `jalr` at 0x1000ce24 calls printf with a0=0x10022138, a1=[a0+11]:1, a2=?, a3=?.
  The `jalr` at 0x1000ce40 calls printf with a0=0x100220c0, a1=sp-304, a2=?, a3=?.
  The `jalr` at 0x1000ce90 calls printf with a0=0x10022160, a1=[a0+12]:1, a2=0x1, a3=0xff.
  The `jalr` at 0x1000ceb0 calls printf with a0=0x10022198, a1=[a0+12]:1, a2=0x1, a3=0xff.
  The `jal` at 0x1000ced0 calls (unnamed) [0x1000cc70] with a0=a0+13, a1=0xa, a2=sp-304, a3=?.
  The `jalr` at 0x1000cee4 calls printf with a0=0x100221f8, a1=ret(0x1000cc70), a2=?, a3=?.
  The `jal` at 0x1000cef8 calls (unnamed) [0x1000cc70] with a0=a0+23, a1=0x13, a2=sp-304, a3=?.
  The `jalr` at 0x1000cf20 calls printf with a0=0x10022210, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000cf54 calls printf with a0=0x10022230, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000cf68 calls printf with a0=0x100221c0, a1=[a0+12]:1, a2=0x1, a3=?.
  The `jal` at 0x1000cf80 calls (unnamed) [0x1000cc70] with a0=a0+50, a1=0x4, a2=sp-304, a3=?.
  The `jalr` at 0x1000cf94 calls printf with a0=0x10022258, a1=ret(0x1000cc70), a2=?, a3=?.
  The `jalr` at 0x1000cfa8 calls printf with a0=0x10022270, a1=[a0+54]:1, a2=?, a3=?.
  The `jal` at 0x1000cfbc calls (unnamed) [0x1000cc70] with a0=a0+55, a1=0x4, a2=sp-304, a3=?.
  The `jalr` at 0x1000cfd0 calls printf with a0=0x10022290, a1=ret(0x1000cc70), a2=?, a3=?.
  The `jalr` at 0x1000cfe4 calls printf with a0=0x100222b0, a1=[a0+59]:1, a2=?, a3=?.
  The `jal` at 0x1000cff8 calls (unnamed) [0x1000cc70] with a0=a0+60, a1=0xe, a2=sp-304, a3=?.
  The `jalr` at 0x1000d00c calls printf with a0=0x100222d0, a1=ret(0x1000cc70), a2=?, a3=?.
  The `jal` at 0x1000d028 calls (unnamed) [0x1000cc70] with a0=a0+44, a1=0x6, a2=sp-176, a3=?.
  The `blez` branch at 0x1000cd8c targets 0x1000ce48, is taken when at(=[sym(verbose)]) <= 0 (signed), and falls through when at(=[sym(verbose)]) > 0 (signed).
  The `bne` branch at 0x1000cdac targets 0x1000ce38, is taken when (v1(=[a0]) & 0x1) != 0, and falls through when (v1(=[a0]) & 0x1) == 0.
  The `beq` branch at 0x1000cdb8 targets 0x1000ce38, is taken when t2(=[a0+10]:1) == 0, and falls through when t2(=[a0+10]:1) != 0.
  The `beq` branch at 0x1000cdc4 targets 0x1000cea0, is taken when a0(=[a0+11]:1) == 0, and falls through when a0(=[a0+11]:1) != 0.
  The `beq` branch at 0x1000ce08 targets 0x1000ce48, is taken when a1(=[a0+11]:1) == 0, and falls through when a1(=[a0+11]:1) != 0.
  The `beq` branch at 0x1000ce18 targets 0x1000ce64, is taken when (a2(=[a0]) & 0x2) == 0, and falls through when (a2(=[a0]) & 0x2) != 0.
  The `beq` branch at 0x1000ce2c targets 0x1000ce4c and is always taken.
  The `beq` branch at 0x1000ce6c targets 0x1000cec0, is taken when a1(=[a0+12]:1) == a2(=0x1), and falls through when a1(=[a0+12]:1) != a2(=0x1).
  The `beq` branch at 0x1000ce74 targets 0x1000cf64, is taken when a1(=[a0+12]:1) == 0, and falls through when a1(=[a0+12]:1) != 0.
  The `beq` branch at 0x1000ce80 targets 0x1000ceac, is taken when a1(=[a0+12]:1) == a3(=0xff), and falls through when a1(=[a0+12]:1) != a3(=0xff).
  The `beq` branch at 0x1000ce98 targets 0x1000ce4c and is always taken.
  The `beq` branch at 0x1000cea4 targets 0x1000cdcc and is always taken.
  The `beq` branch at 0x1000ceb8 targets 0x1000ce4c and is always taken.
  The `beq` branch at 0x1000cf0c targets 0x1000d01c, is taken when (a2(=[a0]) & 0x4) == 0, and falls through when (a2(=[a0]) & 0x4) != 0.
  The `bne` branch at 0x1000cf34 targets 0x1000ce48, is taken when a1(=[sym(verbose)]) < 0x2 (signed), and falls through when a1(=[sym(verbose)]) >= 0x2 (signed).
  The `beq` branch at 0x1000cf44 targets 0x1000cf78, is taken when (a2(=[a0]) & 0x4) == 0, and falls through when (a2(=[a0]) & 0x4) != 0.
  The `beq` branch at 0x1000cf5c targets 0x1000ce4c and is always taken.
  The `beq` branch at 0x1000cf70 targets 0x1000ce4c and is always taken.
  The `beq` branch at 0x1000d014 targets 0x1000ce4c and is always taken.
  The `beq` branch at 0x1000d034 targets 0x1000cf18 and is always taken.
  The return at 0x1000ce5c has v0 = one of ret(printf), ?.
  The instructions from 0x1000ce34 to 0x1000ce34 are not reached by any path from the entry, and their branches are not listed.

- `printXvcInfo` in `usr/gfx/gfxinit` at 0x1000d03c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1000d03c-0x1000d274 (568 bytes).
  It occupies 568 bytes.
  The `lw` at 0x1000d150 loads 4 bytes from ?.
  The `jalr` at 0x1000d088 calls putenv with a0=0x100222e8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000d098 calls getenv with a0=0x10022300, a1=?, a2=?, a3=?.
  The `jal` at 0x1000d0ac calls (unnamed) [0x1000dbe8] with a0=a0 at entry (arg0), a1=sp-464, a2=?, a3=?.
  The `jalr` at 0x1000d0e0 calls setitimer with a0=0x0, a1=sp-192, a2=sp-176, a3=?.
  The `jalr` at 0x1000d0f8 calls signal with a0=0xe, a1=0x1000dbac, a2=?, a3=?.
  The `jalr` at 0x1000d10c calls setjmp with a0=0x10028120, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000d124 calls signal with a0=0xe, a1=ret(signal), a2=?, a3=?.
  The `jalr` at 0x1000d140 calls setitimer with a0=0x0, a1=sp-192, a2=sp-176, a3=?.
  The `jalr` at 0x1000d15c calls XSGIvcQueryVideoScreenInfo with a0=?, a1=?, a2=sp-160, a3=?.
  The `jal` at 0x1000d180 calls (unnamed) [0x1000d274] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000d1b4 calls XSGIvcQueryChannelInfo with a0=?, a1=?, a2=?, a3=sp-112.
  The `jalr` at 0x1000d1d4 calls (unknown callee) with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x1000d1e0 calls XFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000d200 calls XCloseDisplay with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000d250 calls fprintf with a0=sym(__iob)+32, a1=0x10022310, a2=?, a3=?.
  The `jalr` at 0x1000d264 calls XOpenDisplay with a0=sp-464, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1000d078 targets 0x1000d234, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x1000d0b4 targets 0x1000d244, is taken when v0(=ret(0x1000dbe8)) == 0, and falls through when v0(=ret(0x1000dbe8)) != 0.
  The `beq` branch at 0x1000d114 targets 0x1000d260, is taken when v0(=ret(setjmp)) == 0, and falls through when v0(=ret(setjmp)) != 0.
  The `beq` branch at 0x1000d148 targets 0x1000d240, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x1000d164 targets 0x1000d200, is taken when v0(=ret(XSGIvcQueryVideoScreenInfo)) == 0, and falls through when v0(=ret(XSGIvcQueryVideoScreenInfo)) != 0.
  The `beq` branch at 0x1000d16c targets 0x1000d18c, is taken when s3(=a1) == 0, and falls through when s3(=a1) != 0.
  The `blez` branch at 0x1000d18c targets 0x1000d200, is taken when ra(?) <= 0 (signed), and falls through when ra(?) > 0 (signed).
  The `beq` branch at 0x1000d1bc targets 0x1000d1e8, is taken when v0(=ret(XSGIvcQueryChannelInfo)) == 0, and falls through when v0(=ret(XSGIvcQueryChannelInfo)) != 0.
  The `bne` branch at 0x1000d1f4 targets 0x1000d1a4, is taken when s0(?) < at(?) (signed), and falls through when s0(?) >= at(?) (signed).
  The `beq` branch at 0x1000d238 targets 0x1000d080 and is always taken.
  The `beq` branch at 0x1000d258 targets 0x1000d208 and is always taken.
  The `beq` branch at 0x1000d26c targets 0x1000d11c and is always taken.
  The return at 0x1000d22c has v0 = one of ret(XCloseDisplay), ret(fprintf).

- `odsy_monitor_info` in `usr/gfx/gfxinit` at 0x1000df70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1000df70-0x1000e03c (204 bytes).
  It occupies 204 bytes.
  The `lhu` at 0x1000dfa4 loads 2 bytes from a1 (arg1 at entry) +0x0.
  3 such `lh` accesses load 2 bytes from a1 (arg1 at entry) +0xa, including `lh` at 0x1000dfb0, `lh` at 0x1000dfcc, `lh` at 0x1000dff0.
  The `lbu` at 0x1000dfb4 loads 1 byte from a1 (arg1 at entry) +0xd.
  The `lbu` at 0x1000dfbc loads 1 byte from a1 (arg1 at entry) +0xc.
  The `jalr` at 0x1000df9c calls printf with a0=0x100228a0, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000e00c calls printf with a0=0x10027e78, a1=sp-32, a2=?, a3=?, a4=sym(printf), a5=([a1+13]:1 << 0x8).
  The `jalr` at 0x1000e02c calls printf with a0=0x10027e80, a1=?, a2=?, a3=?, a4=sym(printf).
  The `beq` branch at 0x1000dfa8 targets 0x1000e028, is taken when v1(=[a1]:2) == 0, and falls through when v1(=[a1]:2) != 0.
  The `beq` branch at 0x1000e034 targets 0x1000e018 and is always taken.
  The return at 0x1000e020 has v0 = ret(printf).

- `_odsy_info` in `usr/gfx/gfxinit` at 0x1000e03c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1000e03c-0x1000e2c4 (648 bytes).
  It occupies 648 bytes.
  The `lw` at 0x1000e074 loads 4 bytes from a0 (arg0 at entry) +0x50.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x1000e094, `lw` at 0x1000e25c, `lw` at 0x1000e270.
  The `lw` at 0x1000e0b0 loads 4 bytes from a0 (arg0 at entry) +0x44.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x34, including `lw` at 0x1000e0c4, `lw` at 0x1000e0d0.
  The `lw` at 0x1000e0e4 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `lw` at 0x1000e0e8 loads 4 bytes from a0 (arg0 at entry) +0x38.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1f4, including `lw` at 0x1000e0f4, `lw` at 0x1000e238.
  The `lw` at 0x1000e184 loads 4 bytes from a0 (arg0 at entry) +0x1f8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1fc, including `lw` at 0x1000e1b0, `lw` at 0x1000e24c.
  The `lhu` at 0x1000e1f0 loads 2 bytes from a0 (arg0 at entry) +0x60.
  The `lhu` at 0x1000e1fc loads 2 bytes from a0 (arg0 at entry) +0x62.
  The `jalr` at 0x1000e06c calls printf with a0=0x100228b8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000e0a0 calls printf with a0=0x10027e90, a1=[a0+64]-1, a2=?, a3=?.
  The `jalr` at 0x1000e0b4 calls printf with a0=0x100228c8, a1=[a0+68], a2=?, a3=?.
  The `jalr` at 0x1000e0c8 calls printf with a0=0x100228e0, a1=[a0+52], a2=?, a3=?.
  The `jalr` at 0x1000e0ec calls printf with a0=0x10022910, a1=[a0+60], a2=[a0+56], a3=?.
  The `jalr` at 0x1000e12c calls printf with a0=0x10022930, a1=?, a2=?, a3=0xfffffffff0000000.
  The `jalr` at 0x1000e140 calls printf with a0=0x10022948, a1=?, a2=?, a3=0xfffffffff0000000.
  The `jalr` at 0x1000e16c calls printf with a0=0x10022958, a1=?, a2=?, a3=a0+512.
  The `jal` at 0x1000e17c calls nic_report [0x1000cd5c] with a0=a0+512, a1=0x10027e98, a2=?, a3=?.
  The `jalr` at 0x1000e1a8 calls printf with a0=0x10022988, a1=?, a2=?, a3=[a0+504].
  The `jalr` at 0x1000e1cc calls printf with a0=0x100229c0, a1=?, a2=?, a3=[a0+508].
  The `jal` at 0x1000e1dc calls odsy_monitor_info [0x1000df70] with a0=0x0, a1=a0+108, a2=?, a3=?.
  The `jalr` at 0x1000e1e8 calls printf with a0=0x10027e9c, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000e22c calls printf with a0=0x100228f0, a1=[a0+52], a2=0x20, a3=?.
  The `jalr` at 0x1000e240 calls printf with a0=0x100229b0, a1=?, a2=?, a3=[a0+504].
  The `jalr` at 0x1000e250 calls printf with a0=0x10027e8c, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000e264 calls printf with a0=0x10027e8a, a1=0x2, a2=?, a3=?.
  The `jalr` at 0x1000e278 calls printf with a0=0x100229e0, a1=?, a2=[a0+96]:2, a3=[a0+98]:2, a4=0x3.
  The `jal` at 0x1000e288 calls odsy_monitor_info [0x1000df70] with a0=0x1, a1=a0+238, a2=?, a3=?.
  The `jal` at 0x1000e298 calls odsy_monitor_info [0x1000df70] with a0=0x2, a1=a0+368, a2=?, a3=?.
  The `jalr` at 0x1000e2a4 calls printf with a0=0x10027e9c, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000e2b4 calls printf with a0=0x10027e88, a1=0x2, a2=?, a3=?.
  The `beq` branch at 0x1000e078 targets 0x1000e250, is taken when a0(=[a0+80]) == 0, and falls through when a0(=[a0+80]) != 0.
  The `beq` branch at 0x1000e084 targets 0x1000e260, is taken when a0(=[a0+80]) == v1(=0x1), and falls through when a0(=[a0+80]) != v1(=0x1).
  The `beq` branch at 0x1000e08c targets 0x1000e2b4, is taken when a0(=[a0+80]) == a1(=0x2), and falls through when a0(=[a0+80]) != a1(=0x2).
  The `beq` branch at 0x1000e0d8 targets 0x1000e224, is taken when a1(=[a0+52]) == a2(=0x20), and falls through when a1(=[a0+52]) != a2(=0x20).
  The `beq` branch at 0x1000e104 targets 0x1000e184, is taken when a2(=[a0+500]) == 0, and falls through when a2(=[a0+500]) != 0.
  The `bne` branch at 0x1000e10c targets 0x1000e13c, is taken when a2(?) != a0(=0x10000000), and falls through when a2(?) == a0(=0x10000000).
  The `beq` branch at 0x1000e134 targets 0x1000e148 and is always taken.
  The `beq` branch at 0x1000e188 targets 0x1000e1b0, is taken when a3(=[a0+504]) == 0, and falls through when a3(=[a0+504]) != 0.
  The `beq` branch at 0x1000e190 targets 0x1000e23c, is taken when a3(=[a0+504]) == a0(=0x4), and falls through when a3(=[a0+504]) != a0(=0x4).
  The `beq` branch at 0x1000e1b4 targets 0x1000e1d8, is taken when a3(=[a0+508]) == 0, and falls through when a3(=[a0+508]) != 0.
  The `beq` branch at 0x1000e1f4 targets 0x1000e210, is taken when a2(=[a0+96]:2) == 0, and falls through when a2(=[a0+96]:2) != 0.
  The `beq` branch at 0x1000e204 targets 0x1000e274, is taken when a3(=[a0+98]:2) == a4(=0x3), and falls through when a3(=[a0+98]:2) != a4(=0x3).
  The `beq` branch at 0x1000e234 targets 0x1000e0f8 and is always taken.
  The `beq` branch at 0x1000e248 targets 0x1000e1b4 and is always taken.
  The `beq` branch at 0x1000e258 targets 0x1000e098 and is always taken.
  The `beq` branch at 0x1000e26c targets 0x1000e098 and is always taken.
  The `beq` branch at 0x1000e2ac targets 0x1000e210 and is always taken.
  The `beq` branch at 0x1000e2bc targets 0x1000e098 and is always taken.
  The return at 0x1000e21c has v0 = ret(printf).

- `odsy_init` in `usr/gfx/gfxinit` at 0x1000e2c4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1000e2c4-0x1000e50c (584 bytes).
  It occupies 584 bytes.
  The `lw` at 0x1000e320 loads 4 bytes from a1 (arg1 at entry) +0x50.
  The `lw` at 0x1000e33c loads 4 bytes from table(0x10023f68) +0x0.
  The `jalr` at 0x1000e300 calls printf with a0=0x10022a00, a1=a4 at entry (arg4), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000e310 calls strcpy with a0=sp-512, a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0x1000e338 calls strcat with a0=sp-512, a1=entry(0x10023f68), a2=([a1+80] << 0x2), a3=?.
  The `jalr` at 0x1000e34c calls strcat with a0=sp-512, a1=0x10022a28, a2=?, a3=?.
  The `jalr` at 0x1000e364 calls printf with a0=0x10022a38, a1=sp-512, a2=?, a3=?.
  The `jalr` at 0x1000e37c calls open with a0=sp-512, a1=0x800, a2=?, a3=?.
  The `jalr` at 0x1000e394 calls fstat with a0=ret(open), a1=sp-256, a2=?, a3=?.
  The `jalr` at 0x1000e3b8 calls mmap with a0=0x0, a1=?, a2=0x1, a3=0x1, a4=ret(open), a5=0x0.
  The `jalr` at 0x1000e3c8 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0x1000e408 calls getenv with a0=0x10022a60, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000e42c calls printf with a0=0x10022a80, a1=sp-512, a2=?, a3=?.
  The `jalr` at 0x1000e44c calls ioctl with a0=a0 at entry (arg0), a1=0x6c, a2=sp-104, a3=?.
  The `jalr` at 0x1000e460 calls munmap with a0=ret(mmap), a1=?, a2=?, a3=?.
  The `jalr` at 0x1000e490 calls syslog with a0=0x2, a1=0x10027ea0, a2=sp-512, a3=?.
  The `jalr` at 0x1000e4a4 calls munmap with a0=ret(mmap), a1=?, a2=?, a3=?.
  The `jalr` at 0x1000e4b8 calls syslog with a0=0x2, a1=0x10022ab0, a2=?, a3=?.
  The `jalr` at 0x1000e4d4 calls syslog with a0=0x2, a1=0x10027ea0, a2=sp-512, a3=?.
  The `jalr` at 0x1000e4f0 calls syslog with a0=0x2, a1=0x10027ea0, a2=sp-512, a3=?.
  The `jalr` at 0x1000e4fc calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1000e2ec targets 0x1000e308, is taken when a3 == 0, and falls through when a3 != 0.
  The `beq` branch at 0x1000e354 targets 0x1000e36c, is taken when s2(=a3) == 0, and falls through when s2(=a3) != 0.
  The `bltz` branch at 0x1000e384 targets 0x1000e4c8, is taken when v0(=ret(open)) < 0 (signed), and falls through when v0(=ret(open)) >= 0 (signed).
  The `bltz` branch at 0x1000e39c targets 0x1000e4e4, is taken when v0(=ret(fstat)) < 0 (signed), and falls through when v0(=ret(fstat)) >= 0 (signed).
  The `beq` branch at 0x1000e3d4 targets 0x1000e488, is taken when s1(=ret(mmap)) == a1(=-0x1), and falls through when s1(=ret(mmap)) != a1(=-0x1).
  The `bne` branch at 0x1000e410 targets 0x1000e43c, is taken when v0(=ret(getenv)) != 0, and falls through when v0(=ret(getenv)) == 0.
  The `beq` branch at 0x1000e418 targets 0x1000e440, is taken when s2(=a3) == 0, and falls through when s2(=a3) != 0.
  The `beq` branch at 0x1000e434 targets 0x1000e444 and is always taken.
  The `bltz` branch at 0x1000e454 targets 0x1000e4a0, is taken when v0(=ret(ioctl)) < 0 (signed), and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `beq` branch at 0x1000e498 targets 0x1000e46c and is always taken.
  The `beq` branch at 0x1000e4c0 targets 0x1000e46c and is always taken.
  The `beq` branch at 0x1000e4dc targets 0x1000e46c and is always taken.
  The `beq` branch at 0x1000e504 targets 0x1000e46c and is always taken.
  The return at 0x1000e480 has v0 = one of -0x1, 0x0.

- `sg2_info` in `usr/gfx/gfxinit` at 0x1000e50c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1000e50c-0x1000e5f8 (236 bytes).
  It occupies 236 bytes.
  The `lw` at 0x1000e50c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `lw` at 0x1000e55c loads 4 bytes from a0 (arg0 at entry) +0x68.
  The `jalr` at 0x1000e544 calls printf with a0=0x10022ae8, a1=?, a2=0x20d58, a3=a3 at entry (arg3).
  The `jalr` at 0x1000e554 calls printf with a0=0x10027ea8, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000e58c calls printf with a0=0x10022b00, a1=?, a2=0x10000000, a3=?.
  The `jalr` at 0x1000e5ac calls printf with a0=0x10022b28, a1=?, a2=0x0, a3=a0+108.
  The `jal` at 0x1000e5bc calls nic_report [0x1000cd5c] with a0=a0+108, a1=0x10027eac, a2=?, a3=?.
  The `jalr` at 0x1000e5e8 calls printf with a0=0x10022b18, a1=?, a2=0x10000000, a3=?.
  The `beq` branch at 0x1000e568 targets 0x1000e5c4, is taken when s1(=[a0+104]) == 0, and falls through when s1(=[a0+104]) != 0.
  The `bne` branch at 0x1000e570 targets 0x1000e5e4, is taken when a0(?) != a2(=0x10000000), and falls through when a0(?) == a2(=0x10000000).
  The `beq` branch at 0x1000e5f0 targets 0x1000e594 and is always taken.
  The return at 0x1000e5dc has v0 = 0x0.

- `fcg_get_ge_cnt` in `usr/gfx/gfxinit` at 0x1000e5f8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1000e5f8-0x1000e6a8 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0x1000e5fc loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x1000e62c loads 4 bytes from table(0x10022b54) +0x0.
  The `jalr` at 0x1000e648 calls fprintf with a0=sym(__iob)+32, a1=0x10023f78, a2=[a0+40], a3=a3 at entry (arg3).
  The `beq` branch at 0x1000e624 targets 0x1000e638, is taken when a2(=[a0+40]) >= 0x8 (unsigned), and falls through when a2(=[a0+40]) < 0x8 (unsigned).
  The `beq` branch at 0x1000e664 targets 0x1000e654 and is always taken.
  The `beq` branch at 0x1000e66c targets 0x1000e654 and is always taken.
  The `beq` branch at 0x1000e674 targets 0x1000e654 and is always taken.
  The `beq` branch at 0x1000e67c targets 0x1000e654 and is always taken.
  The `beq` branch at 0x1000e684 targets 0x1000e654 and is always taken.
  The `beq` branch at 0x1000e68c targets 0x1000e658 and is always taken.
  The return at 0x1000e65c has v0 = one of ?, 0x2.
  The return at 0x1000e6a0 has v0 = 0x1.
  The indirect jump at 0x1000e630 uses the jump table at 0x10022b54 with targets 0x1000e638, 0x1000e694, 0x1000e68c, 0x1000e684, 0x1000e67c, 0x1000e674, 0x1000e66c, 0x1000e664.

- `venice_loadsection_fcg` in `usr/gfx/gfxinit` at 0x1000e6a8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1000e6a8-0x1000e7b4 (268 bytes).
  It occupies 268 bytes.
  The `lw` at 0x1000e6e4 loads 4 bytes from sym(ven_pipeaddr) +0x0.
  The `lw` at 0x1000e734 loads 4 bytes from ?.
  The `sw` at 0x1000e740 stores 4 bytes to ?.
  The `jalr` at 0x1000e6e0 calls malloc with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000e6fc calls read with a0=a0 at entry (arg0), a1=ret(malloc), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0x1000e748 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x1000e780 calls fprintf with a0=sym(__iob)+32, a1=0x10023fd0, a2=ret(malloc), a3=?.
  The `jalr` at 0x1000e7a4 calls fprintf with a0=sym(__iob)+32, a1=0x10023fa0, a2=a2 at entry (arg2), a3=?.
  The `beq` branch at 0x1000e6e8 targets 0x1000e790, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `bne` branch at 0x1000e704 targets 0x1000e770, is taken when v0(=ret(read)) != s0(=a2), and falls through when v0(=ret(read)) == s0(=a2).
  The `beq` branch at 0x1000e710 targets 0x1000e744, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x1000e73c targets 0x1000e718, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x1000e788 targets 0x1000e754 and is always taken.
  The `beq` branch at 0x1000e7ac targets 0x1000e754 and is always taken.
  The return at 0x1000e768 has v0 = one of -0x1, 0x0.

- `fcg_init_cp` in `usr/gfx/gfxinit` at 0x1000e7f4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1000e7f4-0x1000e948 (340 bytes).
  It occupies 340 bytes.
  4 such `lw` accesses load 4 bytes from sym(ven_iptype) +0x0, including `lw` at 0x1000e818, `lw` at 0x1000e840, `lw` at 0x1000e85c.
  The `sw` at 0x1000e858 stores 4 bytes to [0x10027838] +0x6020.
  The `sw` at 0x1000e894 stores 4 bytes to [0x10027838] +0x0.
  3 such `sw` accesses store 4 bytes to [0x1002783c] +0x0, including `sw` at 0x1000e8b8, `sw` at 0x1000e8c4, `sw` at 0x1000e8cc.
  3 such `sw` accesses store 4 bytes to [0x10027840] +0x0, including `sw` at 0x1000e8d8, `sw` at 0x1000e8e0, `sw` at 0x1000e8e8.
  The `jal` at 0x1000e8f0 calls get_ven_iptype [0x1000fc1c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[sym(ven_iptype)], a4=[sym(ven_iptype)].
  The `jal` at 0x1000e908 calls get_ven_iptype [0x1000fc1c] with a0=[sym(ven_iptype)], a1=?, a2=?, a3=[sym(ven_iptype)], a5=0x19.
  The `jal` at 0x1000e920 calls get_ven_iptype [0x1000fc1c] with a0=[sym(ven_iptype)], a1=?, a2=?, a3=[sym(ven_iptype)], a5=0x19.
  The `jal` at 0x1000e934 calls get_ven_iptype [0x1000fc1c] with a0=[sym(ven_iptype)], a1=?, a2=?, a3=[sym(ven_iptype)], a5=0x19.
  The `beq` branch at 0x1000e82c targets 0x1000e8ec, is taken when a3(=[sym(ven_iptype)]) == s2(=-0x1), and falls through when a3(=[sym(ven_iptype)]) != s2(=-0x1).
  The `beq` branch at 0x1000e83c targets 0x1000e8d0, is taken when a4(?) == a5(=0x19), and falls through when a4(?) != a5(=0x19).
  The `beq` branch at 0x1000e844 targets 0x1000e930, is taken when a3(=[sym(ven_iptype)]) == s2(=-0x1), and falls through when a3(=[sym(ven_iptype)]) != s2(=-0x1).
  The `beq` branch at 0x1000e850 targets 0x1000e8bc, is taken when a0(?) == v0(=0x15), and falls through when a0(?) != v0(=0x15).
  The `beq` branch at 0x1000e860 targets 0x1000e904, is taken when a3(=[sym(ven_iptype)]) == s2(=-0x1), and falls through when a3(=[sym(ven_iptype)]) != s2(=-0x1).
  The `beq` branch at 0x1000e870 targets 0x1000e8e4, is taken when a0(?) == a5(=0x19), and falls through when a0(?) != a5(=0x19).
  The `beq` branch at 0x1000e87c targets 0x1000e91c, is taken when a3(=[sym(ven_iptype)]) == s2(=-0x1), and falls through when a3(=[sym(ven_iptype)]) != s2(=-0x1).
  The `beq` branch at 0x1000e88c targets 0x1000e8b4, is taken when a0(?) == t8(=0x15), and falls through when a0(?) != t8(=0x15).
  The `beq` branch at 0x1000e8b4 targets 0x1000e898 and is always taken.
  The `beq` branch at 0x1000e8c8 targets 0x1000e85c and is always taken.
  The `beq` branch at 0x1000e8dc targets 0x1000e85c and is always taken.
  The `beq` branch at 0x1000e8e4 targets 0x1000e898 and is always taken.
  The `beq` branch at 0x1000e8fc targets 0x1000e834 and is always taken.
  The `beq` branch at 0x1000e914 targets 0x1000e868 and is always taken.
  The `beq` branch at 0x1000e928 targets 0x1000e884 and is always taken.
  The `beq` branch at 0x1000e940 targets 0x1000e84c and is always taken.
  The return at 0x1000e8ac has v0 = ?.

- `fcg_init_ge` in `usr/gfx/gfxinit` at 0x1000e948 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1000e948-0x1000eb88 (576 bytes).
  It occupies 576 bytes.
  6 such `lw` accesses load 4 bytes from sym(ven_iptype) +0x0, including `lw` at 0x1000e96c, `lw` at 0x1000e998, `lw` at 0x1000e9b8.
  The `sw` at 0x1000e9b4 stores 4 bytes to [0x10027838] +0x6040.
  2 such `sw` accesses store 4 bytes to [0x10027838] +0x0, including `sw` at 0x1000e9e8, `sw` at 0x1000ea48.
  3 such `lw` accesses load 4 bytes from sym(VEN_info) +0x3a4, including `lw` at 0x1000ea30, `lw` at 0x1000eaa0, `lw` at 0x1000eb1c.
  4 such `sw` accesses store 4 bytes to [0x10027840] +0x0, including `sw` at 0x1000ea80, `sw` at 0x1000eae4, `sw` at 0x1000eaec.
  4 such `sw` accesses store 4 bytes to [0x1002783c] +0x0, including `sw` at 0x1000eabc, `sw` at 0x1000eac8, `sw` at 0x1000ead0.
  The `jal` at 0x1000ea18 calls venice_rm_ibrev [0x10010294] with a0=?, a1=0x15, a2=?, a3=?.
  The `jal` at 0x1000ea24 calls venice_rm_imprev [0x100100dc] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1000ea6c calls get_ven_iptype [0x1000fc1c] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1000ea88 calls venice_rm_ibrev [0x10010294] with a0=?, a1=0x15, a2=?, a3=?.
  The `jal` at 0x1000ea94 calls venice_rm_imprev [0x100100dc] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1000eaf4 calls get_ven_iptype [0x1000fc1c] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1000eb04 calls venice_rm_ibrev [0x10010294] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1000eb10 calls venice_rm_imprev [0x100100dc] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1000eb40 calls get_ven_iptype [0x1000fc1c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1000eb54 calls get_ven_iptype [0x1000fc1c] with a0=[sym(ven_iptype)], a1=?, a2=?, a3=?.
  The `jal` at 0x1000eb64 calls get_ven_iptype [0x1000fc1c] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1000eb78 calls get_ven_iptype [0x1000fc1c] with a0=[sym(ven_iptype)], a1=?, a2=?, a3=?, a5=[0x10027840].
  The `beq` branch at 0x1000e984 targets 0x1000eb3c, is taken when v0(=[sym(ven_iptype)]) == s1(=-0x1), and falls through when v0(=[sym(ven_iptype)]) != s1(=-0x1).
  The `beq` branch at 0x1000e994 targets 0x1000eadc, is taken when a0(?) == s4(=0x19), and falls through when a0(?) != s4(=0x19).
  The `beq` branch at 0x1000e99c targets 0x1000eb64, is taken when v0(=[sym(ven_iptype)]) == s1(=-0x1), and falls through when v0(=[sym(ven_iptype)]) != s1(=-0x1).
  The `beq` branch at 0x1000e9ac targets 0x1000eac0, is taken when a0(?) == v0(=0x15), and falls through when a0(?) != v0(=0x15).
  The `beq` branch at 0x1000e9bc targets 0x1000ea68, is taken when v0(=[sym(ven_iptype)]) == s1(=-0x1), and falls through when v0(=[sym(ven_iptype)]) != s1(=-0x1).
  The `beq` branch at 0x1000e9c4 targets 0x1000ea7c, is taken when v0(=[sym(ven_iptype)]) == s4(=0x19), and falls through when v0(=[sym(ven_iptype)]) != s4(=0x19).
  The `beq` branch at 0x1000e9d0 targets 0x1000eb74, is taken when v0(=[sym(ven_iptype)]) == s1(=-0x1), and falls through when v0(=[sym(ven_iptype)]) != s1(=-0x1).
  The `beq` branch at 0x1000e9e0 targets 0x1000ead4, is taken when a0(?) == v1(=0x15), and falls through when a0(?) != v1(=0x15).
  The `beq` branch at 0x1000e9f0 targets 0x1000eaf0, is taken when v0(=[sym(ven_iptype)]) == s1(=-0x1), and falls through when v0(=[sym(ven_iptype)]) != s1(=-0x1).
  The `beq` branch at 0x1000e9f8 targets 0x1000eb04, is taken when v0(=[sym(ven_iptype)]) == s4(=0x19), and falls through when v0(=[sym(ven_iptype)]) != s4(=0x19).
  The `beq` branch at 0x1000ea04 targets 0x1000eb50, is taken when v0(=[sym(ven_iptype)]) == s1(=-0x1), and falls through when v0(=[sym(ven_iptype)]) != s1(=-0x1).
  The `beq` branch at 0x1000ea10 targets 0x1000ea84, is taken when a0(?) == a1(=0x15), and falls through when a0(?) != a1(=0x15).
  The `bne` branch at 0x1000ea74 targets 0x1000e9cc, is taken when v0(=ret(get_ven_iptype)) != s4(=0x19), and falls through when v0(=ret(get_ven_iptype)) == s4(=0x19).
  The `beq` branch at 0x1000ea7c targets 0x1000e9ec and is always taken.
  The `beq` branch at 0x1000eab8 targets 0x1000ea4c and is always taken.
  The `beq` branch at 0x1000eacc targets 0x1000e9b8 and is always taken.
  The `beq` branch at 0x1000ead4 targets 0x1000e9ec and is always taken.
  The `beq` branch at 0x1000eae8 targets 0x1000e9b8 and is always taken.
  The `bne` branch at 0x1000eafc targets 0x1000ea00, is taken when v0(=ret(get_ven_iptype)) != s4(=0x19), and falls through when v0(=ret(get_ven_iptype)) == s4(=0x19).
  The `beq` branch at 0x1000eb34 targets 0x1000ea4c and is always taken.
  The `beq` branch at 0x1000eb48 targets 0x1000e990 and is always taken.
  The `beq` branch at 0x1000eb5c targets 0x1000ea0c and is always taken.
  The `beq` branch at 0x1000eb6c targets 0x1000e9a8 and is always taken.
  The `beq` branch at 0x1000eb80 targets 0x1000e9d8 and is always taken.
  The return at 0x1000ea60 has v0 = ret(venice_rm_imprev).

- `wg_flush` in `usr/gfx/gfxinit` at 0x1000ec4c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1000ec4c-0x1000edd0 (388 bytes).
  It occupies 388 bytes.
  4 such `lw` accesses load 4 bytes from sym(ven_iptype) +0x0, including `lw` at 0x1000ec64, `lw` at 0x1000ec9c, `lw` at 0x1000ece4.
  The `lw` at 0x1000ecbc loads 4 bytes from [0x100278a0] +0x0.
  The `sw` at 0x1000ed0c stores 4 bytes to [0x10027838] +0x1fe0.
  The `sw` at 0x1000ed3c stores 4 bytes to [0x1002783c] +0x20.
  2 such `sw` accesses store 4 bytes to [0x1002783c] +0x0, including `sw` at 0x1000ed80, `sw` at 0x1000ed88.
  2 such `sw` accesses store 4 bytes to [0x10027840] +0x0, including `sw` at 0x1000ed94, `sw` at 0x1000ed9c.
  The `jal` at 0x1000ed20 calls get_ven_iptype [0x1000fc1c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[sym(ven_iptype)], a3=a3 at entry (arg3), a4=sym(ven_iptype).
  The `jal` at 0x1000ed40 calls get_ven_iptype [0x1000fc1c] with a0=?, a1=?, a2=[sym(ven_iptype)], a3=?, a4=sym(ven_iptype).
  The `jal` at 0x1000ed54 calls get_ven_iptype [0x1000fc1c] with a0=?, a1=[0x1002783c], a2=[sym(ven_iptype)], a3=?, a4=sym(ven_iptype).
  The `jal` at 0x1000ed68 calls (unnamed) [0x1000eb88] with a0=0x19, a1=[0x100278a0], a2=?, a3=?.
  The `jal` at 0x1000eda4 calls get_ven_iptype [0x1000fc1c] with a0=?, a1=?, a2=[sym(ven_iptype)], a3=?, a4=sym(ven_iptype), a5=[sym(ven_iptype)].
  The `jal` at 0x1000edb8 calls get_ven_iptype [0x1000fc1c] with a0=?, a1=?, a2=[sym(ven_iptype)], a3=0xffffffffdeadbeef, a4=sym(ven_iptype), a6=0x19.
  The `beq` branch at 0x1000ec70 targets 0x1000ed1c, is taken when a2(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a2(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x1000ec80 targets 0x1000ecd4, is taken when a3(?) == v0(=0x13), and falls through when a3(?) != v0(=0x13).
  The `beq` branch at 0x1000ec88 targets 0x1000ed40, is taken when a2(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a2(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x1000ec94 targets 0x1000ed38, is taken when a2(?) == v1(=0x15), and falls through when a2(?) != v1(=0x15).
  The `beq` branch at 0x1000eca0 targets 0x1000ed54, is taken when a2(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a2(=[sym(ven_iptype)]) != s0(=-0x1).
  The `bne` branch at 0x1000ecac targets 0x1000ecc0, is taken when a2(?) != a0(=0x19), and falls through when a2(?) == a0(=0x19).
  The `beq` branch at 0x1000ecb4 targets 0x1000ed64, is taken when s0(=-0x1) == a1(=[0x100278a0]), and falls through when s0(=-0x1) != a1(=[0x100278a0]).
  The `beq` branch at 0x1000ecd4 targets 0x1000eda0, is taken when a2(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a2(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x1000ece8 targets 0x1000ed8c, is taken when a5(?) == a6(=0x19), and falls through when a5(?) != a6(=0x19).
  The `beq` branch at 0x1000ecf0 targets 0x1000edb8, is taken when a2(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a2(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x1000ed04 targets 0x1000ed78, is taken when a2(?) == a7(=0x15), and falls through when a2(?) != a7(=0x15).
  The `beq` branch at 0x1000ed30 targets 0x1000ec7c and is always taken.
  The `beq` branch at 0x1000ed38 targets 0x1000ecc0 and is always taken.
  The `beq` branch at 0x1000ed4c targets 0x1000ec90 and is always taken.
  The `beq` branch at 0x1000ed5c targets 0x1000eca8 and is always taken.
  The `beq` branch at 0x1000ed70 targets 0x1000ecbc and is always taken.
  The `beq` branch at 0x1000ed84 targets 0x1000ecc0 and is always taken.
  The `beq` branch at 0x1000ed98 targets 0x1000ecc0 and is always taken.
  The `beq` branch at 0x1000edb0 targets 0x1000ecdc and is always taken.
  The `beq` branch at 0x1000edc8 targets 0x1000ecf8 and is always taken.
  The return at 0x1000eccc has v0 = one of ?, [0x10027840].
  The return at 0x1000ed14 has v0 = ?.

- `fcg_cp_loaducode` in `usr/gfx/gfxinit` at 0x1000edd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1000edd0-0x1000f044 (628 bytes).
  It occupies 628 bytes.
  8 such `lw` accesses load 4 bytes from sym(ven_iptype) +0x0, including `lw` at 0x1000ee00, `lw` at 0x1000ee38, `lw` at 0x1000ee5c.
  The `sw` at 0x1000ee58 stores 4 bytes to [0x10027838] +0xfee0.
  3 such `sw` accesses store 4 bytes to [0x10027838] +0x0, including `sw` at 0x1000ee8c, `sw` at 0x1000eec0, `sw` at 0x1000eef4.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1000eef0, `lw` at 0x1000ef2c, `lw` at 0x1000ef4c.
  5 such `sw` accesses store 4 bytes to [0x1002783c] +0x0, including `sw` at 0x1000ef34, `sw` at 0x1000efc0, `sw` at 0x1000efc8.
  5 such `sw` accesses store 4 bytes to [0x10027840] +0x0, including `sw` at 0x1000ef54, `sw` at 0x1000ef9c, `sw` at 0x1000efb4.
  The `jal` at 0x1000eed8 calls get_ven_iptype [0x1000fc1c] with a0=?, a1=?, a2=?, a3=?, a4=[sym(ven_iptype)].
  The `jal` at 0x1000ef38 calls get_ven_iptype [0x1000fc1c] with a0=?, a1=?, a2=?, a3=?, a4=[sym(ven_iptype)].
  The `jal` at 0x1000ef88 calls get_ven_iptype [0x1000fc1c] with a0=?, a1=?, a2=?, a3=?, a4=[sym(ven_iptype)].
  The `jal` at 0x1000efa0 calls get_ven_iptype [0x1000fc1c] with a0=?, a1=?, a2=?, a3=?, a4=[sym(ven_iptype)].
  The `jal` at 0x1000eff8 calls get_ven_iptype [0x1000fc1c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[sym(ven_iptype)].
  The `jal` at 0x1000f00c calls get_ven_iptype [0x1000fc1c] with a0=[sym(ven_iptype)], a1=?, a2=?, a3=?, a4=[sym(ven_iptype)].
  The `jal` at 0x1000f020 calls get_ven_iptype [0x1000fc1c] with a0=[sym(ven_iptype)], a1=?, a2=?, a3=?, a4=[sym(ven_iptype)].
  The `jal` at 0x1000f034 calls get_ven_iptype [0x1000fc1c] with a0=[sym(ven_iptype)], a1=?, a2=?, a3=?, a4=[sym(ven_iptype)].
  The `beq` branch at 0x1000ee1c targets 0x1000eff0, is taken when a4(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a4(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x1000ee30 targets 0x1000efdc, is taken when a0(?) == s4(=0x19), and falls through when a0(?) != s4(=0x19).
  The `beq` branch at 0x1000ee3c targets 0x1000f008, is taken when a4(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a4(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x1000ee4c targets 0x1000efb8, is taken when a0(?) == v0(=0x15), and falls through when a0(?) != v0(=0x15).
  The `beq` branch at 0x1000ee60 targets 0x1000ef84, is taken when a4(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a4(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x1000ee68 targets 0x1000ef98, is taken when a4(=[sym(ven_iptype)]) == s4(=0x19), and falls through when a4(=[sym(ven_iptype)]) != s4(=0x19).
  The `beq` branch at 0x1000ee74 targets 0x1000f01c, is taken when a4(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a4(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x1000ee84 targets 0x1000efcc, is taken when a0(?) == a1(=0x15), and falls through when a0(?) != a1(=0x15).
  The `beq` branch at 0x1000ee94 targets 0x1000efa0, is taken when a4(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a4(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x1000ee9c targets 0x1000efb0, is taken when a4(=[sym(ven_iptype)]) == s4(=0x19), and falls through when a4(=[sym(ven_iptype)]) != s4(=0x19).
  The `beq` branch at 0x1000eea8 targets 0x1000f030, is taken when a4(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a4(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x1000eeb8 targets 0x1000efd4, is taken when a0(?) == a3(=0x15), and falls through when a0(?) != a3(=0x15).
  The `beq` branch at 0x1000eec8 targets 0x1000ef58, is taken when s1(=a0-1) == s0(=-0x1), and falls through when s1(=a0-1) != s0(=-0x1).
  The `beq` branch at 0x1000eed0 targets 0x1000ef00 and is always taken.
  The `beq` branch at 0x1000eee0 targets 0x1000ef28, is taken when v0(=ret(get_ven_iptype)) == s5(=0x15), and falls through when v0(=ret(get_ven_iptype)) != s5(=0x15).
  The `beq` branch at 0x1000eefc targets 0x1000ef58, is taken when s1(?) == s0(=-0x1), and falls through when s1(?) != s0(=-0x1).
  The `beq` branch at 0x1000ef04 targets 0x1000ef38, is taken when a4(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a4(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x1000ef0c targets 0x1000ef48, is taken when a4(=[sym(ven_iptype)]) == s4(=0x19), and falls through when a4(=[sym(ven_iptype)]) != s4(=0x19).
  The `beq` branch at 0x1000ef18 targets 0x1000eed8, is taken when a4(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a4(=[sym(ven_iptype)]) != s0(=-0x1).
  The `bne` branch at 0x1000ef20 targets 0x1000eee8, is taken when a4(=[sym(ven_iptype)]) != s5(=0x15), and falls through when a4(=[sym(ven_iptype)]) == s5(=0x15).
  The `beq` branch at 0x1000ef30 targets 0x1000eef8 and is always taken.
  The `bne` branch at 0x1000ef40 targets 0x1000ef14, is taken when v0(=ret(get_ven_iptype)) != s4(=0x19), and falls through when v0(=ret(get_ven_iptype)) == s4(=0x19).
  The `beq` branch at 0x1000ef50 targets 0x1000eef8 and is always taken.
  The `bne` branch at 0x1000ef90 targets 0x1000ee70, is taken when v0(=ret(get_ven_iptype)) != s4(=0x19), and falls through when v0(=ret(get_ven_iptype)) == s4(=0x19).
  The `beq` branch at 0x1000ef98 targets 0x1000ee90 and is always taken.
  The `bne` branch at 0x1000efa8 targets 0x1000eea4, is taken when v0(=ret(get_ven_iptype)) != s4(=0x19), and falls through when v0(=ret(get_ven_iptype)) == s4(=0x19).
  The `beq` branch at 0x1000efb0 targets 0x1000eec4 and is always taken.
  The `beq` branch at 0x1000efc4 targets 0x1000ee5c and is always taken.
  The `beq` branch at 0x1000efcc targets 0x1000ee90 and is always taken.
  The `beq` branch at 0x1000efd4 targets 0x1000eec4 and is always taken.
  The `beq` branch at 0x1000efe8 targets 0x1000ee5c and is always taken.
  The `beq` branch at 0x1000f000 targets 0x1000ee2c and is always taken.
  The `beq` branch at 0x1000f014 targets 0x1000ee44 and is always taken.
  The `beq` branch at 0x1000f028 targets 0x1000ee7c and is always taken.
  The `beq` branch at 0x1000f03c targets 0x1000eeb0 and is always taken.
  The return at 0x1000ef7c has v0 = ?.

- `fcg_cp_ge_load` in `usr/gfx/gfxinit` at 0x1000f044 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1000f044-0x1000f30c (712 bytes).
  It occupies 712 bytes.
  11 such `lw` accesses load 4 bytes from sym(ven_iptype) +0x0, including `lw` at 0x1000f078, `lw` at 0x1000f0ac, `lw` at 0x1000f0cc.
  The `sw` at 0x1000f0c8 stores 4 bytes to [0x10027838] +0x6560.
  3 such `sw` accesses store 4 bytes to [0x10027838] +0x0, including `sw` at 0x1000f0fc, `sw` at 0x1000f114, `sw` at 0x1000f1f4.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1000f140, `lw` at 0x1000f18c.
  5 such `sw` accesses store 4 bytes to [0x1002783c] +0x0, including `sw` at 0x1000f178, `sw` at 0x1000f22c, `sw` at 0x1000f2a8.
  5 such `sw` accesses store 4 bytes to [0x10027840] +0x0, including `sw` at 0x1000f1bc, `sw` at 0x1000f244, `sw` at 0x1000f29c.
  The `jal` at 0x1000f17c calls get_ven_iptype [0x1000fc1c] with a0=?, a1=?, a2=?, a3=?, a5=[sym(ven_iptype)].
  The `jal` at 0x1000f1e0 calls get_ven_iptype [0x1000fc1c] with a0=?, a1=?, a2=?, a3=?, a5=[sym(ven_iptype)].
  The `jal` at 0x1000f230 calls get_ven_iptype [0x1000fc1c] with a0=?, a1=?, a2=?, a3=?, a5=[sym(ven_iptype)].
  The `jal` at 0x1000f278 calls get_ven_iptype [0x1000fc1c] with a0=[sym(ven_iptype)], a1=?, a2=?, a3=?, a5=[sym(ven_iptype)].
  The `jal` at 0x1000f288 calls get_ven_iptype [0x1000fc1c] with a0=?, a1=?, a2=?, a3=?, a5=[sym(ven_iptype)].
  The `jal` at 0x1000f2d8 calls get_ven_iptype [0x1000fc1c] with a0=[sym(ven_iptype)], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[sym(ven_iptype)].
  The `jal` at 0x1000f2e8 calls get_ven_iptype [0x1000fc1c] with a0=?, a1=?, a2=?, a3=?, a5=[sym(ven_iptype)].
  The `jal` at 0x1000f2fc calls get_ven_iptype [0x1000fc1c] with a0=[sym(ven_iptype)], a1=?, a2=?, a3=?, a5=[sym(ven_iptype)].
  The `beq` branch at 0x1000f098 targets 0x1000f2d0, is taken when a5(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a5(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x1000f0a8 targets 0x1000f2bc, is taken when a0(?) == s5(=0x19), and falls through when a0(?) != s5(=0x19).
  The `beq` branch at 0x1000f0b0 targets 0x1000f2e8, is taken when a5(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a5(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x1000f0c0 targets 0x1000f2a0, is taken when a0(?) == v0(=0x15), and falls through when a0(?) != v0(=0x15).
  The `beq` branch at 0x1000f0d0 targets 0x1000f288, is taken when a5(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a5(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x1000f0d8 targets 0x1000f298, is taken when a5(=[sym(ven_iptype)]) == s5(=0x19), and falls through when a5(=[sym(ven_iptype)]) != s5(=0x19).
  The `beq` branch at 0x1000f0e4 targets 0x1000f2f8, is taken when a5(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a5(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x1000f0f4 targets 0x1000f2b4, is taken when a0(?) == v1(=0x15), and falls through when a0(?) != v1(=0x15).
  The `beq` branch at 0x1000f104 targets 0x1000f1c0, is taken when s3(=a1-1) == s0(=-0x1), and falls through when s3(=a1-1) != s0(=-0x1).
  The `beq` branch at 0x1000f10c targets 0x1000f128 and is always taken.
  The `beq` branch at 0x1000f11c targets 0x1000f1c0, is taken when s3(?) == s0(=-0x1), and falls through when s3(?) != s0(=-0x1).
  The `beq` branch at 0x1000f128 targets 0x1000f17c, is taken when a5(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a5(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x1000f130 targets 0x1000f18c, is taken when a5(=[sym(ven_iptype)]) == s5(=0x19), and falls through when a5(=[sym(ven_iptype)]) != s5(=0x19).
  The `beq` branch at 0x1000f138 targets 0x1000f274, is taken when a5(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a5(=[sym(ven_iptype)]) != s0(=-0x1).
  The `bne` branch at 0x1000f16c targets 0x1000f114, is taken when a0(?) != s6(=0x15), and falls through when a0(?) == s6(=0x15).
  The `beq` branch at 0x1000f174 targets 0x1000f118 and is always taken.
  The `bne` branch at 0x1000f184 targets 0x1000f138, is taken when v0(=ret(get_ven_iptype)) != s5(=0x19), and falls through when v0(=ret(get_ven_iptype)) == s5(=0x19).
  The `beq` branch at 0x1000f1b8 targets 0x1000f118 and is always taken.
  The `beq` branch at 0x1000f1d0 targets 0x1000f248, is taken when s4(=a2-1) == s0(=-0x1), and falls through when s4(=a2-1) != s0(=-0x1).
  The `beq` branch at 0x1000f1d8 targets 0x1000f204 and is always taken.
  The `beq` branch at 0x1000f1e8 targets 0x1000f228, is taken when v0(=ret(get_ven_iptype)) == s6(=0x15), and falls through when v0(=ret(get_ven_iptype)) != s6(=0x15).
  The `beq` branch at 0x1000f1fc targets 0x1000f248, is taken when s4(?) == s0(=-0x1), and falls through when s4(?) != s0(=-0x1).
  The `beq` branch at 0x1000f204 targets 0x1000f230, is taken when a5(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a5(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x1000f20c targets 0x1000f240, is taken when a5(=[sym(ven_iptype)]) == s5(=0x19), and falls through when a5(=[sym(ven_iptype)]) != s5(=0x19).
  The `beq` branch at 0x1000f218 targets 0x1000f1e0, is taken when a5(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a5(=[sym(ven_iptype)]) != s0(=-0x1).
  The `bne` branch at 0x1000f220 targets 0x1000f1f0, is taken when a5(=[sym(ven_iptype)]) != s6(=0x15), and falls through when a5(=[sym(ven_iptype)]) == s6(=0x15).
  The `beq` branch at 0x1000f228 targets 0x1000f1f8 and is always taken.
  The `bne` branch at 0x1000f238 targets 0x1000f214, is taken when v0(=ret(get_ven_iptype)) != s5(=0x19), and falls through when v0(=ret(get_ven_iptype)) == s5(=0x19).
  The `beq` branch at 0x1000f240 targets 0x1000f1f8 and is always taken.
  The `beq` branch at 0x1000f280 targets 0x1000f140 and is always taken.
  The `bne` branch at 0x1000f290 targets 0x1000f0e0, is taken when v0(=ret(get_ven_iptype)) != s5(=0x19), and falls through when v0(=ret(get_ven_iptype)) == s5(=0x19).
  The `beq` branch at 0x1000f298 targets 0x1000f100 and is always taken.
  The `beq` branch at 0x1000f2ac targets 0x1000f0cc and is always taken.
  The `beq` branch at 0x1000f2b4 targets 0x1000f100 and is always taken.
  The `beq` branch at 0x1000f2c8 targets 0x1000f0cc and is always taken.
  The `beq` branch at 0x1000f2e0 targets 0x1000f0a4 and is always taken.
  The `beq` branch at 0x1000f2f0 targets 0x1000f0bc and is always taken.
  The `beq` branch at 0x1000f304 targets 0x1000f0ec and is always taken.
  The return at 0x1000f26c has v0 = ?.

- `fcg_cp_ge_bootstrap` in `usr/gfx/gfxinit` at 0x1000f30c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1000f30c-0x1000f508 (508 bytes).
  It occupies 508 bytes.
  6 such `lw` accesses load 4 bytes from sym(ven_iptype) +0x0, including `lw` at 0x1000f338, `lw` at 0x1000f364, `lw` at 0x1000f3c0.
  The `sw` at 0x1000f37c stores 4 bytes to [0x10027838] +0x64e0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x1000f380, `lw` at 0x1000f3c8.
  The `sw` at 0x1000f3b8 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `sw` at 0x1000f3c4 stores 4 bytes to [0x10027838] +0x0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1000f3f8, `lw` at 0x1000f444.
  3 such `sw` accesses store 4 bytes to [0x1002783c] +0x0, including `sw` at 0x1000f430, `sw` at 0x1000f4c0, `sw` at 0x1000f4c8.
  3 such `sw` accesses store 4 bytes to [0x10027840] +0x0, including `sw` at 0x1000f474, `sw` at 0x1000f4d4, `sw` at 0x1000f4dc.
  The `jal` at 0x1000f434 calls get_ven_iptype [0x1000fc1c] with a0=?, a1=?, a2=[sym(ven_iptype)], a3=?.
  The `jal` at 0x1000f4a8 calls get_ven_iptype [0x1000fc1c] with a0=?, a1=?, a2=[sym(ven_iptype)], a3=?, a4=[sym(ven_iptype)].
  The `jal` at 0x1000f4e4 calls get_ven_iptype [0x1000fc1c] with a0=[sym(ven_iptype)], a1=a1 at entry (arg1), a2=[sym(ven_iptype)], a3=a3 at entry (arg3).
  The `jal` at 0x1000f4f8 calls get_ven_iptype [0x1000fc1c] with a0=?, a1=?, a2=[sym(ven_iptype)], a3=?, a4=[sym(ven_iptype)].
  The `beq` branch at 0x1000f350 targets 0x1000f4e0, is taken when a2(=[sym(ven_iptype)]) == s3(=-0x1), and falls through when a2(=[sym(ven_iptype)]) != s3(=-0x1).
  The `beq` branch at 0x1000f360 targets 0x1000f4cc, is taken when a0(?) == s5(=0x19), and falls through when a0(?) != s5(=0x19).
  The `beq` branch at 0x1000f368 targets 0x1000f4f4, is taken when a2(=[sym(ven_iptype)]) == s3(=-0x1), and falls through when a2(=[sym(ven_iptype)]) != s3(=-0x1).
  The `beq` branch at 0x1000f374 targets 0x1000f4b8, is taken when a4(?) == v0(=0x15), and falls through when a4(?) != v0(=0x15).
  The `beq` branch at 0x1000f3b4 targets 0x1000f478, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1000f3bc targets 0x1000f3e0 and is always taken.
  The `bne` branch at 0x1000f3d4 targets 0x1000f478, is taken when a2(=[a0]) < s1(?) (unsigned), and falls through when a2(=[a0]) >= s1(?) (unsigned).
  The `beq` branch at 0x1000f3e0 targets 0x1000f434, is taken when a2(=[sym(ven_iptype)]) == s3(=-0x1), and falls through when a2(=[sym(ven_iptype)]) != s3(=-0x1).
  The `beq` branch at 0x1000f3e8 targets 0x1000f444, is taken when a2(=[sym(ven_iptype)]) == s5(=0x19), and falls through when a2(=[sym(ven_iptype)]) != s5(=0x19).
  The `beq` branch at 0x1000f3f0 targets 0x1000f4a4, is taken when a2(=[sym(ven_iptype)]) == s3(=-0x1), and falls through when a2(=[sym(ven_iptype)]) != s3(=-0x1).
  The `bne` branch at 0x1000f424 targets 0x1000f3c4, is taken when a4(?) != s6(=0x15), and falls through when a4(?) == s6(=0x15).
  The `beq` branch at 0x1000f42c targets 0x1000f3c8 and is always taken.
  The `bne` branch at 0x1000f43c targets 0x1000f3f0, is taken when v0(=ret(get_ven_iptype)) != s5(=0x19), and falls through when v0(=ret(get_ven_iptype)) == s5(=0x19).
  The `beq` branch at 0x1000f470 targets 0x1000f3c8 and is always taken.
  The `beq` branch at 0x1000f4b0 targets 0x1000f3f8 and is always taken.
  The `beq` branch at 0x1000f4c4 targets 0x1000f380 and is always taken.
  The `beq` branch at 0x1000f4d8 targets 0x1000f380 and is always taken.
  The `beq` branch at 0x1000f4ec targets 0x1000f358 and is always taken.
  The `beq` branch at 0x1000f500 targets 0x1000f370 and is always taken.
  The return at 0x1000f49c has v0 = ?.

- `fcg_cp_ge_goto` in `usr/gfx/gfxinit` at 0x1000f508 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1000f508-0x1000f5dc (212 bytes).
  It occupies 212 bytes.
  2 such `lw` accesses load 4 bytes from sym(ven_iptype) +0x0, including `lw` at 0x1000f520, `lw` at 0x1000f544.
  The `sw` at 0x1000f55c stores 4 bytes to [0x10027838] +0x6860.
  2 such `sw` accesses store 4 bytes to [0x1002783c] +0x0, including `sw` at 0x1000f584, `sw` at 0x1000f588.
  2 such `sw` accesses store 4 bytes to [0x10027840] +0x0, including `sw` at 0x1000f5a0, `sw` at 0x1000f5a8.
  The `jal` at 0x1000f5b0 calls get_ven_iptype [0x1000fc1c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[sym(ven_iptype)], a3=sym(ven_iptype), a4=-0x1.
  The `jal` at 0x1000f5cc calls get_ven_iptype [0x1000fc1c] with a0=[sym(ven_iptype)], a1=?, a2=[sym(ven_iptype)], a3=sym(ven_iptype), a4=-0x1.
  The `beq` branch at 0x1000f530 targets 0x1000f5ac, is taken when a2(=[sym(ven_iptype)]) == a4(=-0x1), and falls through when a2(=[sym(ven_iptype)]) != a4(=-0x1).
  The `beq` branch at 0x1000f540 targets 0x1000f598, is taken when a0(?) == v0(=0x19), and falls through when a0(?) != v0(=0x19).
  The `beq` branch at 0x1000f548 targets 0x1000f5c8, is taken when a2(=[sym(ven_iptype)]) == a4(=-0x1), and falls through when a2(=[sym(ven_iptype)]) != a4(=-0x1).
  The `beq` branch at 0x1000f554 targets 0x1000f574, is taken when a0(?) == v1(=0x15), and falls through when a0(?) != v1(=0x15).
  The `beq` branch at 0x1000f5a4 targets 0x1000f560 and is always taken.
  The `beq` branch at 0x1000f5c0 targets 0x1000f53c and is always taken.
  The `beq` branch at 0x1000f5d4 targets 0x1000f550 and is always taken.
  The return at 0x1000f56c has v0 = one of ?, 0x19.
  The return at 0x1000f590 has v0 = ?.

- `fcg_venice_set_pipeaddr` in `usr/gfx/gfxinit` at 0x1000f5dc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1000f5dc-0x1000f72c (336 bytes).
  It occupies 336 bytes.
  3 such `lw` accesses load 4 bytes from sym(ven_iptype) +0x0, including `lw` at 0x1000f614, `lw` at 0x1000f66c, `lw` at 0x1000f684.
  The `lw` at 0x1000f624 loads 4 bytes from ?.
  The `sw` at 0x1000f630 stores 4 bytes to ?.
  The `sw` at 0x1000f634 stores 4 bytes to sym(ven_pipenum) +0x0.
  The `sw` at 0x1000f638 stores 4 bytes to sym(ven_gfxvaddr) +0x0.
  The `sw` at 0x1000f64c stores 4 bytes to sym(ven_gfxfd) +0x0.
  The `sw` at 0x1000f660 stores 4 bytes to sym(ven_pipeaddr) +0x0.
  3 such `lw` accesses load 4 bytes from sym(ven_gfxvaddr) +0x0, including `lw` at 0x1000f67c, `lw` at 0x1000f698, `lw` at 0x1000f6cc.
  The `sw` at 0x1000f6c0 stores 4 bytes to sym(ven_eeprom_valid) +0x0.
  The `jal` at 0x1000f6a4 calls venice_get_dg2_eeprom [0x1000f794] with a0=sym(ven_eeprom), a1=?, a2=?, a3=?.
  The `jal` at 0x1000f6e8 calls get_ven_iptype [0x1000fc1c] with a0=sym(ven_pipeaddr), a1=[sym(ven_iptype)], a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=-0x1, a7=a0 at entry (arg0).
  The `jal` at 0x1000f704 calls get_ven_iptype [0x1000fc1c] with a0=0x13, a1=[sym(ven_iptype)], a2=?, a3=?, a5=-0x1.
  The `jal` at 0x1000f71c calls get_ven_iptype [0x1000fc1c] with a0=?, a1=?, a2=[sym(ven_gfxvaddr)], a3=0x15, a5=-0x1.
  The `bgtz` branch at 0x1000f62c targets 0x1000f618, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x1000f65c targets 0x1000f6e4, is taken when t1(=[sym(ven_iptype)]) == a5(=-0x1), and falls through when t1(=[sym(ven_iptype)]) != a5(=-0x1).
  The `beq` branch at 0x1000f668 targets 0x1000f6cc, is taken when a1(?) == a0(=0x13), and falls through when a1(?) != a0(=0x13).
  The `beq` branch at 0x1000f670 targets 0x1000f700, is taken when t1(=[sym(ven_iptype)]) == a5(=-0x1), and falls through when t1(=[sym(ven_iptype)]) != a5(=-0x1).
  The `beq` branch at 0x1000f680 targets 0x1000f6dc, is taken when a1(?) == a3(=0x15), and falls through when a1(?) != a3(=0x15).
  The `beq` branch at 0x1000f688 targets 0x1000f71c, is taken when t1(=[sym(ven_iptype)]) == a5(=-0x1), and falls through when t1(=[sym(ven_iptype)]) != a5(=-0x1).
  The `beq` branch at 0x1000f694 targets 0x1000f6c4, is taken when t1(?) == a4(=0x19), and falls through when t1(?) != a4(=0x19).
  The `beq` branch at 0x1000f6c4 targets 0x1000f69c and is always taken.
  The `beq` branch at 0x1000f6d4 targets 0x1000f69c and is always taken.
  The `beq` branch at 0x1000f6dc targets 0x1000f69c and is always taken.
  The `beq` branch at 0x1000f6f8 targets 0x1000f664 and is always taken.
  The `beq` branch at 0x1000f714 targets 0x1000f678 and is always taken.
  The `beq` branch at 0x1000f724 targets 0x1000f690 and is always taken.
  The return at 0x1000f6bc has v0 = ret(venice_get_dg2_eeprom).

- `venice_get_dg2_eeprom` in `usr/gfx/gfxinit` at 0x1000f794 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1000f794-0x1000f8a0 (268 bytes).
  It occupies 268 bytes.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1000f7d0, `lw` at 0x1000f830.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1000f7dc, `sw` at 0x1000f83c.
  The `lw` at 0x1000f7f4 loads 4 bytes from sym(ven_gfxfd) +0x0.
  The `lw` at 0x1000f840 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `jalr` at 0x1000f7f0 calls ioctl with a0=[sym(ven_gfxfd)], a1=0x272a, a2=sp-7232, a3=?, a4=a0 at entry (arg0), a5=sp-7228.
  The `jalr` at 0x1000f858 calls printf with a0=0x10024008, a1=-0x1, a2=?, a3=[a0+12], a4=0xa, a5=sp-7228, a6=0x1.
  The `jal` at 0x1000f888 calls venice_grok_dg2_eeprom_error [0x1000fa40] with a0=?, a1=-0x1, a2=?, a3=0x706, a4=0x0, a5=sp-7228, a6=0x1.
  The `bgtz` branch at 0x1000f7d8 targets 0x1000f7c4, is taken when v0(?) > 0 (signed), and falls through when v0(?) <= 0 (signed).
  The `beq` branch at 0x1000f810 targets 0x1000f898, is taken when v0(=ret(ioctl)) == a1(=-0x1), and falls through when v0(=ret(ioctl)) != a1(=-0x1).
  The `bne` branch at 0x1000f818 targets 0x1000f888, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bgtz` branch at 0x1000f838 targets 0x1000f824, is taken when a3(?) > 0 (signed), and falls through when a3(?) <= 0 (signed).
  The `beq` branch at 0x1000f848 targets 0x1000f878, is taken when a3(=[a0+12]) == a4(=0xa), and falls through when a3(=[a0+12]) != a4(=0xa).
  The `beq` branch at 0x1000f890 targets 0x1000f864 and is always taken.
  The `beq` branch at 0x1000f898 targets 0x1000f864 and is always taken.
  The return at 0x1000f870 has v0 = 0x0.
  The return at 0x1000f880 has v0 = 0x1.

- `venice_set_dg2_eeprom` in `usr/gfx/gfxinit` at 0x1000f8a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1000f8a0-0x1000fa40 (416 bytes).
  It occupies 416 bytes.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1000f8e0, `lbu` at 0x1000f9ac, `lbu` at 0x1000f9b0.
  The `sw` at 0x1000f8f4 stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `sw` at 0x1000f8f8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x1000f8fc stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `sw` at 0x1000f900 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `lw` at 0x1000f91c loads 4 bytes from ?.
  The `sw` at 0x1000f928 stores 4 bytes to ?.
  The `lw` at 0x1000f940 loads 4 bytes from sym(ven_gfxfd) +0x0.
  The `jalr` at 0x1000f93c calls ioctl with a0=[sym(ven_gfxfd)], a1=0x2728, a2=sp-7232, a3=?, a6=sp-7228, a7=0x4447.
  The `jal` at 0x1000f958 calls venice_grok_dg2_eeprom_error [0x1000fa40] with a0=?, a1=-0x1, a2=?, a3=?.
  The `jalr` at 0x1000f984 calls bzero with a0=sp-7228, a1=0x1c18, a2=?, a3=?.
  The `jal` at 0x1000f990 calls venice_get_dg2_eeprom [0x1000f794] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000f9f0 calls fprintf with a0=sym(__iob)+32, a1=0x10024098, a2=?, a3=?.
  The `jalr` at 0x1000fa10 calls fprintf with a0=sym(__iob)+32, a1=0x10024058, a2=?, a3=?.
  The `jalr` at 0x1000fa30 calls fprintf with a0=sym(__iob)+32, a1=0x10024078, a2=?, a3=0x0.
  The `bne` branch at 0x1000f8ec targets 0x1000f8dc, is taken when a4(?) < 0x1c18 (unsigned), and falls through when a4(?) >= 0x1c18 (unsigned).
  The `bgtz` branch at 0x1000f924 targets 0x1000f910, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x1000f948 targets 0x1000fa00, is taken when v0(=ret(ioctl)) == a1(=-0x1), and falls through when v0(=ret(ioctl)) != a1(=-0x1).
  The `beq` branch at 0x1000f950 targets 0x1000f978, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1000f99c targets 0x1000fa20, is taken when v0(=ret(venice_get_dg2_eeprom)) == 0, and falls through when v0(=ret(venice_get_dg2_eeprom)) != 0.
  The `bne` branch at 0x1000f9bc targets 0x1000f9e0, is taken when a2(?) != a4(?), and falls through when a2(?) == a4(?).
  The `bne` branch at 0x1000f9c4 targets 0x1000f9a8, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x1000f9f8 targets 0x1000f964 and is always taken.
  The `beq` branch at 0x1000fa18 targets 0x1000f964 and is always taken.
  The `beq` branch at 0x1000fa38 targets 0x1000f964 and is always taken.
  The return at 0x1000f970 has v0 = 0x0.
  The return at 0x1000f9d8 has v0 = 0x1.

- `venice_grok_dg2_eeprom_error` in `usr/gfx/gfxinit` at 0x1000fa40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1000fa40-0x1000fb2c (236 bytes).
  It occupies 236 bytes.
  The `lw` at 0x1000fa74 loads 4 bytes from table(0x10022b74) +0x0.
  The `jalr` at 0x1000fa88 calls printf with a0=0x10024200, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=table(0x10022b74), a4=(a0 << 0x2).
  The `jalr` at 0x1000faa8 calls printf with a0=0x100240b0, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=table(0x10022b74), a4=(a0 << 0x2), a5=entry(0x10022b74).
  The `jalr` at 0x1000fac0 calls printf with a0=0x100241c8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=table(0x10022b74), a4=(a0 << 0x2), a5=entry(0x10022b74).
  The `jalr` at 0x1000fad8 calls printf with a0=0x10024190, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=table(0x10022b74), a4=(a0 << 0x2), a5=entry(0x10022b74).
  The `jalr` at 0x1000faec calls printf with a0=0x10024158, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=table(0x10022b74), a4=(a0 << 0x2), a5=entry(0x10022b74).
  The `jalr` at 0x1000fb04 calls printf with a0=0x10024120, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=table(0x10022b74), a4=(a0 << 0x2), a5=entry(0x10022b74).
  The `jalr` at 0x1000fb1c calls printf with a0=0x100240e8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=table(0x10022b74), a4=(a0 << 0x2), a5=entry(0x10022b74).
  The `beq` branch at 0x1000fa6c targets 0x1000fa80, is taken when a0 >= 0x8 (unsigned), and falls through when a0 < 0x8 (unsigned).
  The `beq` branch at 0x1000fab0 targets 0x1000fa94 and is always taken.
  The `beq` branch at 0x1000fac8 targets 0x1000fa94 and is always taken.
  The `beq` branch at 0x1000fae0 targets 0x1000fa94 and is always taken.
  The `beq` branch at 0x1000faf4 targets 0x1000fa94 and is always taken.
  The `beq` branch at 0x1000fb0c targets 0x1000fa94 and is always taken.
  The `beq` branch at 0x1000fb24 targets 0x1000fa94 and is always taken.
  The return at 0x1000fa98 has v0 = one of ?, ret(printf).
  The indirect jump at 0x1000fa78 uses the jump table at 0x10022b74 with targets 0x1000fa90, 0x1000faa0, 0x1000fb14, 0x1000fafc, 0x1000fae8, 0x1000fa90, 0x1000fad0, 0x1000fab8.

- `get_ven_type` in `usr/gfx/gfxinit` at 0x1000fb2c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1000fb2c-0x1000fc1c (240 bytes).
  It occupies 240 bytes.
  2 such `lw` accesses load 4 bytes from sym(ven_type) +0x0, including `lw` at 0x1000fb44, `lw` at 0x1000fc10.
  The `sw` at 0x1000fb70 stores 4 bytes to sym(ven_type) +0x0.
  3 such `sw` accesses store 4 bytes to sym(ven_iptype) +0x0, including `sw` at 0x1000fb94, `sw` at 0x1000fbf4, `sw` at 0x1000fc18.
  The `lw` at 0x1000fbb4 loads 4 bytes from ret(getinvent) +0x4.
  The `lw` at 0x1000fbbc loads 4 bytes from ret(getinvent) +0x8.
  The `lw` at 0x1000fbc8 loads 4 bytes from ret(getinvent) +0x14.
  The `jalr` at 0x1000fb6c calls setinvent with a0=0x1, a1=sym(ven_type), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000fb78 calls getinvent with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000fb9c calls getinvent with a0=?, a1=?, a2=?, a3=0x1, a4=sym(ven_iptype), a5=[ret(getinvent)+4].
  The `jalr` at 0x1000fbfc calls endinvent with a0=?, a1=?, a2=ret(getinvent), a3=?.
  The `beq` branch at 0x1000fb4c targets 0x1000fb60, is taken when v0(=[sym(ven_type)]) == at(=-0x1), and falls through when v0(=[sym(ven_type)]) != at(=-0x1).
  The `beq` branch at 0x1000fb80 targets 0x1000fbf8, is taken when v0(=ret(getinvent)) == 0, and falls through when v0(=ret(getinvent)) != 0.
  The `beq` branch at 0x1000fb8c targets 0x1000fbb4 and is always taken.
  The `beq` branch at 0x1000fbac targets 0x1000fbf8, is taken when v0(=ret(getinvent)) == 0, and falls through when v0(=ret(getinvent)) != 0.
  The `bne` branch at 0x1000fbb8 targets 0x1000fb98, is taken when a5(=[ret(getinvent)+4]) != a3(=0x1), and falls through when a5(=[ret(getinvent)+4]) == a3(=0x1).
  The `bne` branch at 0x1000fbc0 targets 0x1000fb9c, is taken when v0(=[ret(getinvent)+8]) != a3(=0x1), and falls through when v0(=[ret(getinvent)+8]) == a3(=0x1).
  The `beq` branch at 0x1000fbd0 targets 0x1000fb94, is taken when v0(=[ret(getinvent)+20]) == a6(=0xb), and falls through when v0(=[ret(getinvent)+20]) != a6(=0xb).
  The `beq` branch at 0x1000fbdc targets 0x1000fc14, is taken when v0(=[ret(getinvent)+20]) == a7(=0xd), and falls through when v0(=[ret(getinvent)+20]) != a7(=0xd).
  The `bne` branch at 0x1000fbe8 targets 0x1000fb98, is taken when v0(=[ret(getinvent)+20]) != t0(=0xf), and falls through when v0(=[ret(getinvent)+20]) == t0(=0xf).
  The `beq` branch at 0x1000fbf0 targets 0x1000fb98 and is always taken.
  The `beq` branch at 0x1000fc0c targets 0x1000fb54 and is always taken.
  The `beq` branch at 0x1000fc14 targets 0x1000fb98 and is always taken.
  The return at 0x1000fb58 has v0 = [sym(ven_type)].

- `venice_fifo_hack` in `usr/gfx/gfxinit` at 0x1000fd1c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1000fd1c-0x1000fdf8 (220 bytes).
  It occupies 220 bytes.
  2 such `lw` accesses load 4 bytes from sym(VEN_info) +0x2c, including `lw` at 0x1000fd80, `lw` at 0x1000fdac.
  The `jalr` at 0x1000fd74 calls printf with a0=0x100243b8, a1=?, a2=?, a3=?.
  The `jal` at 0x1000fda4 calls venice_rmfifo [0x1000fdf8] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1000fd50 targets 0x1000fde8, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x1000fd58 targets 0x1000fd80, is taken when a0 == 0, and falls through when a0 != 0.
  The `blez` branch at 0x1000fd88 targets 0x1000fdc0, is taken when a1(=[sym(VEN_info)+44]) <= 0 (signed), and falls through when a1(=[sym(VEN_info)+44]) > 0 (signed).
  The `bne` branch at 0x1000fdb8 targets 0x1000fd98, is taken when s0(?) < a2(=[sym(VEN_info)+44]) (signed), and falls through when s0(?) >= a2(=[sym(VEN_info)+44]) (signed).
  The `beq` branch at 0x1000fdf0 targets 0x1000fd58 and is always taken.
  The return at 0x1000fde0 has v0 = one of ?, ret(venice_rmfifo).

- `venice_rmfifo` in `usr/gfx/gfxinit` at 0x1000fdf8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1000fdf8-0x1000ff4c (340 bytes).
  It occupies 340 bytes.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1000fe54, `lw` at 0x1000fea4.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1000fe7c, `lbu` at 0x1000fed0.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x1000fe98, `sb` at 0x1000feec.
  The `lw` at 0x1000ff08 loads 4 bytes from table(0x10024320) +0x0.
  The `jal` at 0x1000ff04 calls _jt_select_chain [0x100106ac] with a0=entry(0x10024320), a1=?, a2=?, a3=?, a6=0x1, a7=sp-128.
  The `jal` at 0x1000ff18 calls _jt_send_instruction [0x100106e0] with a0=0xa0, a1=0x100243a0, a2=0x0, a3=?.
  The `jal` at 0x1000ff2c calls _jt_send_data [0x10010714] with a0=0x55, a1=sp-128, a2=0x0, a3=?.
  The `bne` branch at 0x1000fe94 targets 0x1000fe5c, is taken when a3(?) < 0x7 (signed), and falls through when a3(?) >= 0x7 (signed).
  The `bne` branch at 0x1000fee8 targets 0x1000feb0, is taken when a2(?) < 0x7 (signed), and falls through when a2(?) >= 0x7 (signed).
  The `bne` branch at 0x1000fef0 targets 0x1000fe50, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The return at 0x1000ff44 has v0 = 0x0.

- `venice_imprev` in `usr/gfx/gfxinit` at 0x1000ffbc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1000ffbc-0x100100dc (288 bytes).
  It occupies 288 bytes.
  The `lw` at 0x1000ffe8 loads 4 bytes from (sym(rm_chain) + (a0 << 0x2)) +0x0.
  The `lw` at 0x10010084 loads 4 bytes from ?.
  The `jal` at 0x1000ffe4 calls _jt_select_chain [0x100106ac] with a0=[(sym(rm_chain) + (a0 << 0x2))], a1=sym(rm_chain), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1000fffc calls (unnamed) [0x1000ff4c] with a0=sp-320, a1=0x11, a2=0x14, a3=?.
  The `jal` at 0x10010010 calls _jt_send_instruction [0x100106e0] with a0=0xa0, a1=sp-320, a2=sp-320, a3=?.
  The `jal` at 0x1001003c calls _jt_send_data [0x10010714] with a0=0x800, a1=sp-320, a2=sp-320, a3=?.
  The `jal` at 0x10010088 calls (unnamed) [0x1000ff70] with a0=sp-320, a1=?, a2=0x20, a3=?.
  The `beq` branch at 0x10010064 targets 0x1001007c and is always taken.
  The `beq` branch at 0x1001006c targets 0x100100ac, is taken when v0(=ret(0x1000ff70)) == s4(=0xc30c30b), and falls through when v0(=ret(0x1000ff70)) != s4(=0xc30c30b).
  The `beq` branch at 0x10010074 targets 0x100100b0, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x10010090 targets 0x1001006c, is taken when v0(=ret(0x1000ff70)) != s2(=0x1451450b), and falls through when v0(=ret(0x1000ff70)) == s2(=0x1451450b).
  The `bne` branch at 0x1001009c targets 0x1001006c, is taken when s5(=one of 0x1, 0x2) != t9(=0x2), and falls through when s5(=one of 0x1, 0x2) == t9(=0x2).
  The `beq` branch at 0x100100a4 targets 0x10010070 and is always taken.
  The return at 0x100100d4 has v0 = one of 0x0, 0x1, 0x2.

- `venice_rm_imprev` in `usr/gfx/gfxinit` at 0x100100dc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x100100dc-0x10010194 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0x10010104 loads 4 bytes from sym(VEN_info) +0x2c.
  The `jal` at 0x1001013c calls venice_imprev [0x1000ffbc] with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x10010118 targets 0x1001018c, is taken when s2(=[sym(VEN_info)+44]) <= 0 (signed), and falls through when s2(=[sym(VEN_info)+44]) > 0 (signed).
  The `beq` branch at 0x10010124 targets 0x10010138 and is always taken.
  The `beq` branch at 0x1001012c targets 0x10010160, is taken when v0(=ret(venice_imprev)) == 0, and falls through when v0(=ret(venice_imprev)) != 0.
  The `beq` branch at 0x10010134 targets 0x10010164, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x10010144 targets 0x1001012c, is taken when s1(=one of 0x1, 0x2) != s3(=0x2), and falls through when s1(=one of 0x1, 0x2) == s3(=0x2).
  The `bne` branch at 0x10010150 targets 0x1001012c, is taken when v0(=ret(venice_imprev)) != t9(=0x1), and falls through when v0(=ret(venice_imprev)) == t9(=0x1).
  The `beq` branch at 0x10010158 targets 0x10010130 and is always taken.
  The `beq` branch at 0x1001018c targets 0x10010168 and is always taken.
  The return at 0x10010184 has v0 = one of 0x0, 0x1, 0x2.

- `venice_ibrev` in `usr/gfx/gfxinit` at 0x10010194 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10010194-0x10010294 (256 bytes).
  It occupies 256 bytes.
  The `lw` at 0x100101f0 loads 4 bytes from (sym(rm_chain) + (a0 << 0x2)) +0x0.
  The `lw` at 0x10010250 loads 4 bytes from ?.
  The `jalr` at 0x100101b8 calls getenv with a0=0x100243d0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100101ec calls _jt_select_chain [0x100106ac] with a0=[(sym(rm_chain) + (a0 << 0x2))], a1=(a0 << 0x2), a2=?, a3=?.
  The `jal` at 0x10010204 calls (unnamed) [0x1000ff4c] with a0=sp-304, a1=0x11, a2=0x14, a3=?.
  The `jal` at 0x10010218 calls _jt_send_instruction [0x100106e0] with a0=0xa0, a1=sp-304, a2=sp-304, a3=?.
  The `jal` at 0x10010234 calls _jt_send_data [0x10010714] with a0=0x800, a1=sp-304, a2=sp-304, a3=?.
  The `jal` at 0x10010254 calls (unnamed) [0x1000ff70] with a0=sp-304, a1=?, a2=0x20, a3=?.
  The `beq` branch at 0x100101c0 targets 0x100101d8, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `beq` branch at 0x10010264 targets 0x1001028c, is taken when v0(=ret(0x1000ff70)) == a2(=0x180a057), and falls through when v0(=ret(0x1000ff70)) != a2(=0x180a057).
  The `bne` branch at 0x10010274 targets 0x10010248, is taken when s1(?) < 0x5 (signed), and falls through when s1(?) >= 0x5 (signed).
  The `beq` branch at 0x10010284 targets 0x100101c8 and is always taken.
  The `beq` branch at 0x1001028c targets 0x10010280 and is always taken.
  The return at 0x100101d0 has v0 = one of 0x0, 0x1.

- `venice_rm_ibrev` in `usr/gfx/gfxinit` at 0x10010294 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10010294-0x10010310 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0x100102b4 loads 4 bytes from sym(VEN_info) +0x2c.
  The `jal` at 0x100102d0 calls venice_ibrev [0x10010194] with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x100102c0 targets 0x100102e8, is taken when s1(=[sym(VEN_info)+44]) <= 0 (signed), and falls through when s1(=[sym(VEN_info)+44]) > 0 (signed).
  The `beq` branch at 0x100102d8 targets 0x10010308, is taken when v0(=ret(venice_ibrev)) == 0, and falls through when v0(=ret(venice_ibrev)) != 0.
  The `bne` branch at 0x100102e4 targets 0x100102cc, is taken when s0(?) < s1(=[sym(VEN_info)+44]) (signed), and falls through when s0(?) >= s1(=[sym(VEN_info)+44]) (signed).
  The `beq` branch at 0x10010308 targets 0x100102ec and is always taken.
  The return at 0x10010300 has v0 = one of 0x0, 0x1.

- `venice_rm_rev` in `usr/gfx/gfxinit` at 0x10010328 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10010328-0x100103f8 (208 bytes).
  It occupies 208 bytes.
  The `jal` at 0x10010350 calls venice_bdrev [0x10010604] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10010360 calls venice_pgrev [0x10010310] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10010370 calls venice_tarev [0x10010320] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10010380 calls venice_tdrev [0x10010318] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10010390 calls venice_ibrev [0x10010194] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x100103a0 calls venice_imprev [0x1000ffbc] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0x100103f0 has v0 = ((ret(venice_imprev) | (ret(venice_ibrev) << 0x4)) | (((ret(venice_bdrev) << 0x14) | (ret(venice_pgrev) << 0x10)) | ((ret(venice_tarev) << 0xc) | (ret(venice_tdrev) << 0x8)))).

- `venice_ifrev` in `usr/gfx/gfxinit` at 0x100103f8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x100103f8-0x10010448 (80 bytes).
  It occupies 80 bytes.
  The `jal` at 0x10010414 calls get_ven_type [0x1000fb2c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1001041c targets 0x10010434, is taken when v0(=ret(get_ven_type)) == 0, and falls through when v0(=ret(get_ven_type)) != 0.
  The return at 0x1001042c has v0 = 0x0.
  The return at 0x10010440 has v0 = 0x1.

- `venice_cprev` in `usr/gfx/gfxinit` at 0x10010448 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10010448-0x10010598 (336 bytes).
  It occupies 336 bytes.
  The `lw` at 0x1001047c loads 4 bytes from sym(ven_pipeaddr) +0x0.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10010490, `lw` at 0x10010510, `lw` at 0x10010544.
  The `sb` at 0x100104e8 stores 1 byte to ?.
  The `jal` at 0x10010464 calls get_ven_type [0x1000fb2c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100104ac calls _jt_select_chain [0x100106ac] with a0=[0x100278ac], a1=?, a2=0xa818, a3=?.
  The `jal` at 0x100104c4 calls (unnamed) [0x1000ff4c] with a0=sp-288, a1=0x11, a2=0x14, a3=?.
  The `jal` at 0x1001050c calls _jt_send_instruction [0x100106e0] with a0=?, a1=sp-288, a2=sp-288, a3=0x21.
  The `jal` at 0x10010524 calls _jt_send_data [0x10010714] with a0=0x800, a1=sp-288, a2=sp-288, a3=?.
  The `jal` at 0x10010540 calls (unnamed) [0x1000ff70] with a0=sp-288, a1=?, a2=0x20, a3=?.
  The `beq` branch at 0x10010470 targets 0x10010580, is taken when v0(=ret(get_ven_type)) == 0, and falls through when v0(=ret(get_ven_type)) != 0.
  The `beq` branch at 0x10010484 targets 0x10010588, is taken when v0(=[sym(ven_pipeaddr)]) == 0, and falls through when v0(=[sym(ven_pipeaddr)]) != 0.
  The `beq` branch at 0x1001049c targets 0x10010590, is taken when v1(?) == a0(=0x7), and falls through when v1(?) != a0(=0x7).
  The `bne` branch at 0x100104e4 targets 0x100104d8, is taken when a2(?) < 0xc (signed), and falls through when a2(?) >= 0xc (signed).
  The `bne` branch at 0x10010554 targets 0x1001056c, is taken when v0(=ret(0x1000ff70)) != ra(=0x6d6d6d6d), and falls through when v0(=ret(0x1000ff70)) == ra(=0x6d6d6d6d).
  The `beq` branch at 0x10010580 targets 0x100104a8 and is always taken.
  The `beq` branch at 0x10010588 targets 0x1001048c and is always taken.
  The `beq` branch at 0x10010590 targets 0x100104ac and is always taken.
  The return at 0x10010564 has v0 = 0x0.
  The return at 0x10010578 has v0 = 0x1.

- `venice_ge_rev` in `usr/gfx/gfxinit` at 0x100105a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x100105a0-0x10010604 (100 bytes).
  It occupies 100 bytes.
  The `jal` at 0x100105bc calls venice_ifrev [0x100103f8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100105c8 calls venice_cprev [0x10010448] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100105d4 calls venice_gefrev [0x10010598] with a0=?, a1=?, a2=?, a3=?.
  The return at 0x100105fc has v0 = (ret(venice_gefrev) | ((ret(venice_ifrev) << 0x8) | (ret(venice_cprev) << 0x4))).

- `venice_bdrev` in `usr/gfx/gfxinit` at 0x10010604 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10010604-0x100106ac (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x10010630 loads 4 bytes from (sym(rm_chain) + (a0 << 0x2)) +0x0.
  The `lw` at 0x1001067c loads 4 bytes from sym(pgoff) +0x0.
  The `jal` at 0x1001062c calls _jt_select_chain [0x100106ac] with a0=[(sym(rm_chain) + (a0 << 0x2))], a1=sym(rm_chain), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10010644 calls (unnamed) [0x1000ff4c] with a0=sp-1040, a1=0x22, a2=0x14, a3=?.
  The `jal` at 0x10010658 calls _jt_send_instruction [0x100106e0] with a0=0xa0, a1=sp-1040, a2=sp-1040, a3=?.
  The `jal` at 0x1001066c calls _jt_send_data [0x10010714] with a0=0x2000, a1=sp-1040, a2=sp-1040, a3=?.
  The `jal` at 0x1001068c calls (unnamed) [0x1000ff70] with a0=sp-1040, a1=[sym(pgoff)]+7, a2=0x2, a3=?.
  The return at 0x100106a4 has v0 = ?.

- `fcg_jt_soft_reset` in `usr/gfx/gfxinit` at 0x10010780 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10010780-0x10010818 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0x10010798 loads 4 bytes from sym(ven_pipeaddr) +0x0.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x100107c0, `sw` at 0x100107c8, `sw` at 0x100107cc.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100107d0, `lw` at 0x10010800.
  The `jalr` at 0x100107f8 calls sginap with a0=0x0, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100107b4 targets 0x100107c0, is taken when a2(=[sym(ven_pipeaddr)]) == 0, and falls through when a2(=[sym(ven_pipeaddr)]) != 0.
  The `beq` branch at 0x100107d8 targets 0x100107f4, is taken when (a4(?) & 0x1) == 0, and falls through when (a4(?) & 0x1) != 0.
  The `beq` branch at 0x10010808 targets 0x100107f8, is taken when (a7(?) & 0x1) == 0, and falls through when (a7(?) & 0x1) != 0.
  The `beq` branch at 0x10010810 targets 0x100107e0 and is always taken.
  The return at 0x100107ec has v0 = 0x0.

- `fcg_jt_test_thyself` in `usr/gfx/gfxinit` at 0x10010820 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10010820-0x10010bd8 (952 bytes).
  It occupies 952 bytes.
  The `lw` at 0x10010840 loads 4 bytes from sym(ven_pipeaddr) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x10024414, including `lw` at 0x10010890, `lw` at 0x100108f8.
  9 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1001089c, `sw` at 0x100108a4, `sw` at 0x10010908.
  15 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100108a0, `lw` at 0x100108b4, `lw` at 0x100108d0.
  The `jalr` at 0x100108ac calls sginap with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x10010918 calls sginap with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x10010a20 calls sginap with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x10010a78 calls fprintf with a0=sym(__iob)+32, a1=0x100244d8, a2=?, a3=?.
  The `jalr` at 0x10010ac4 calls fprintf with a0=sym(__iob)+32, a1=0x10024500, a2=?, a3=?.
  The `jalr` at 0x10010adc calls fprintf with a0=sym(__iob)+32, a1=0x10024550, a2=?, a3=?.
  The `jalr` at 0x10010af8 calls fprintf with a0=sym(__iob)+32, a1=0x10024578, a2=?, a3=?.
  The `jalr` at 0x10010b14 calls fprintf with a0=sym(__iob)+32, a1=0x100244c0, a2=?, a3=?.
  The `jalr` at 0x10010b30 calls fprintf with a0=sym(__iob)+32, a1=0x10024538, a2=?, a3=?.
  The `jalr` at 0x10010b5c calls fprintf with a0=sym(__iob)+32, a1=0x100245f0, a2=?, a3=?.
  The `jalr` at 0x10010b94 calls fprintf with a0=sym(__iob)+32, a1=0x10024618, a2=?, a3=?.
  The `jalr` at 0x10010bac calls fprintf with a0=sym(__iob)+32, a1=0x100245b0, a2=?, a3=?.
  The `jalr` at 0x10010bc8 calls fprintf with a0=sym(__iob)+32, a1=0x100245d0, a2=?, a3=?.
  The `beq` branch at 0x10010858 targets 0x10010864, is taken when v0(=[sym(ven_pipeaddr)]) == 0, and falls through when v0(=[sym(ven_pipeaddr)]) != 0.
  The `beq` branch at 0x100108c8 targets 0x10010b08, is taken when (v0(?) & 0x1) == 0, and falls through when (v0(?) & 0x1) != 0.
  The `bne` branch at 0x100108dc targets 0x10010a70, is taken when a3(?) != a2(?), and falls through when a3(?) == a2(?).
  The `bne` branch at 0x100108e8 targets 0x10010ab4, is taken when a3(?) != a4(?), and falls through when a3(?) == a4(?).
  The `bne` branch at 0x100108f0 targets 0x100108a0, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x10010934 targets 0x10010b24, is taken when (v0(?) & 0x1) == 0, and falls through when (v0(?) & 0x1) != 0.
  The `bne` branch at 0x10010948 targets 0x10010ad4, is taken when a3(?) != a2(?), and falls through when a3(?) == a2(?).
  The `bne` branch at 0x1001095c targets 0x10010aec, is taken when a3(?) != a4(?), and falls through when a3(?) == a4(?).
  The `bne` branch at 0x10010964 targets 0x10010910, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x1001097c targets 0x10010890 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x1001098c targets 0x10010b6c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x100109b0 targets 0x10010b74, is taken when a2(?) == a4(=0xd), and falls through when a2(?) != a4(=0xd).
  The `bne` branch at 0x100109c8 targets 0x10010ba4, is taken when (a4(?) & s1(=one of 0x4, 0x8)) != 0, and falls through when (a4(?) & s1(=one of 0x4, 0x8)) == 0.
  The `beq` branch at 0x100109d0 targets 0x10010b80, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x100109ec targets 0x10010bbc, is taken when (a5(?) & s1(=one of 0x4, 0x8)) != 0, and falls through when (a5(?) & s1(=one of 0x4, 0x8)) == 0.
  The `bne` branch at 0x10010a10 targets 0x10010b40, is taken when v0(?) != t0(?), and falls through when v0(?) == t0(?).
  The `beq` branch at 0x10010a48 targets 0x10010b88, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `bne` branch at 0x10010a50 targets 0x10010a00, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0x10010a60 targets 0x1001098c, is taken when s7(?) < 0xc (signed), and falls through when s7(?) >= 0xc (signed).
  The `beq` branch at 0x10010a68 targets 0x10010a84 and is always taken.
  The `beq` branch at 0x10010acc targets 0x10010a84 and is always taken.
  The `beq` branch at 0x10010ae4 targets 0x10010a84 and is always taken.
  The `beq` branch at 0x10010b00 targets 0x10010a84 and is always taken.
  The `beq` branch at 0x10010b1c targets 0x10010a84 and is always taken.
  The `beq` branch at 0x10010b38 targets 0x10010a84 and is always taken.
  The `beq` branch at 0x10010b64 targets 0x10010a84 and is always taken.
  The `beq` branch at 0x10010b6c targets 0x10010998 and is always taken.
  The `beq` branch at 0x10010b78 targets 0x100109c0 and is always taken.
  The `beq` branch at 0x10010b80 targets 0x100109d8 and is always taken.
  The `beq` branch at 0x10010b9c targets 0x10010a84 and is always taken.
  The `beq` branch at 0x10010bb4 targets 0x10010a84 and is always taken.
  The `beq` branch at 0x10010bd0 targets 0x10010a84 and is always taken.
  The return at 0x10010aac has v0 = one of 0x0, 0x1.

- `fcg_jt_select_chain` in `usr/gfx/gfxinit` at 0x10010bd8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10010bd8-0x10010c94 (188 bytes).
  It occupies 188 bytes.
  The `lw` at 0x10010bfc loads 4 bytes from sym(ven_pipeaddr) +0x0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10010c38, `lw` at 0x10010c7c.
  The `sw` at 0x10010c90 stores 4 bytes to ?.
  The `jalr` at 0x10010c3c calls strcmp with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `beq` branch at 0x10010c1c targets 0x10010c28, is taken when a1(=[sym(ven_pipeaddr)]) == 0, and falls through when a1(=[sym(ven_pipeaddr)]) != 0.
  The `beq` branch at 0x10010c44 targets 0x10010c7c, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `bne` branch at 0x10010c50 targets 0x10010c34, is taken when s1(?) < 0x6 (signed), and falls through when s1(?) >= 0x6 (signed).
  The `beq` branch at 0x10010c8c targets 0x10010c5c and is always taken.
  The return at 0x10010c74 has v0 = one of -0x1, 0x0.

- `fcg_jt_send_instruction` in `usr/gfx/gfxinit` at 0x10010c94 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10010c94-0x10010eec (600 bytes).
  It occupies 600 bytes.
  The `lw` at 0x10010ccc loads 4 bytes from sym(ven_pipeaddr) +0x0.
  10 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10010d18, `sw` at 0x10010d1c, `sw` at 0x10010d7c.
  8 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10010d40, `lw` at 0x10010d5c, `lw` at 0x10010d80.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x10010d60, `sb` at 0x10010e50.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10010d78, `lbu` at 0x10010dbc.
  The `jalr` at 0x10010d38 calls sginap with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x10010de4 calls sginap with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x10010ebc calls sginap with a0=0x0, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10010cec targets 0x10010edc, is taken when a5(=[sym(ven_pipeaddr)]) == 0, and falls through when a5(=[sym(ven_pipeaddr)]) != 0.
  The `blez` branch at 0x10010cf4 targets 0x10010ee4, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0x10010d20 targets 0x10010da8, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x10010d2c targets 0x10010d78 and is always taken.
  The `beq` branch at 0x10010d48 targets 0x10010d38, is taken when (t0(?) & 0x1) == 0, and falls through when (t0(?) & 0x1) != 0.
  The `beq` branch at 0x10010d50 targets 0x10010d64, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0x10010d64 targets 0x10010d98, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x10010d70 targets 0x10010da8, is taken when s4(?) == s7(=-0x1), and falls through when s4(?) != s7(=-0x1).
  The `bne` branch at 0x10010d88 targets 0x10010d50, is taken when (t2(?) & 0x1) != 0, and falls through when (t2(?) & 0x1) == 0.
  The `beq` branch at 0x10010d90 targets 0x10010d38 and is always taken.
  The `beq` branch at 0x10010da0 targets 0x10010d6c and is always taken.
  The `beq` branch at 0x10010db4 targets 0x10010e54, is taken when (s1(=a0) & 0x7) == 0, and falls through when (s1(=a0) & 0x7) != 0.
  The `beq` branch at 0x10010dd0 targets 0x10010e44, is taken when s1(?) == s7(=-0x1), and falls through when s1(?) != s7(=-0x1).
  The `beq` branch at 0x10010dd8 targets 0x10010e1c and is always taken.
  The `beq` branch at 0x10010df4 targets 0x10010de4, is taken when (ra(?) & 0x1) == 0, and falls through when (ra(?) & 0x1) != 0.
  The `beq` branch at 0x10010e10 targets 0x10010ea8, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x10010e18 targets 0x10010e3c, is taken when s1(?) == s7(=-0x1), and falls through when s1(?) != s7(=-0x1).
  The `bne` branch at 0x10010e2c targets 0x10010dfc, is taken when (t9(?) & 0x1) != 0, and falls through when (t9(?) & 0x1) == 0.
  The `beq` branch at 0x10010e34 targets 0x10010de4 and is always taken.
  The `beq` branch at 0x10010e44 targets 0x10010e54, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0x10010e6c targets 0x10010eb8, is taken when (a0(?) & 0x1) == 0, and falls through when (a0(?) & 0x1) != 0.
  The `beq` branch at 0x10010eb0 targets 0x10010e18 and is always taken.
  The `beq` branch at 0x10010ecc targets 0x10010ebc, is taken when (a3(?) & 0x1) == 0, and falls through when (a3(?) & 0x1) != 0.
  The `beq` branch at 0x10010ed4 targets 0x10010e78 and is always taken.
  The `bgtz` branch at 0x10010edc targets 0x10010cfc, is taken when a0 > 0 (signed), and falls through when a0 <= 0 (signed).
  The `beq` branch at 0x10010ee4 targets 0x10010e7c and is always taken.
  The return at 0x10010ea0 has v0 = one of -0x1, 0x0.
  The instructions from 0x10010d34 to 0x10010d34 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x10010de0 to 0x10010de0 are not reached by any path from the entry, and their branches are not listed.

- `fcg_jt_send_data` in `usr/gfx/gfxinit` at 0x10010eec (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10010eec-0x10011144 (600 bytes).
  It occupies 600 bytes.
  The `lw` at 0x10010f24 loads 4 bytes from sym(ven_pipeaddr) +0x0.
  10 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10010f70, `sw` at 0x10010f74, `sw` at 0x10010fd4.
  8 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10010f98, `lw` at 0x10010fb4, `lw` at 0x10010fd8.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x10010fb8, `sb` at 0x100110a8.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10010fd0, `lbu` at 0x10011014.
  The `jalr` at 0x10010f90 calls sginap with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001103c calls sginap with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x10011114 calls sginap with a0=0x0, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10010f44 targets 0x10011134, is taken when a5(=[sym(ven_pipeaddr)]) == 0, and falls through when a5(=[sym(ven_pipeaddr)]) != 0.
  The `blez` branch at 0x10010f4c targets 0x1001113c, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0x10010f78 targets 0x10011000, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x10010f84 targets 0x10010fd0 and is always taken.
  The `beq` branch at 0x10010fa0 targets 0x10010f90, is taken when (t0(?) & 0x1) == 0, and falls through when (t0(?) & 0x1) != 0.
  The `beq` branch at 0x10010fa8 targets 0x10010fbc, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0x10010fbc targets 0x10010ff0, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x10010fc8 targets 0x10011000, is taken when s4(?) == s7(=-0x1), and falls through when s4(?) != s7(=-0x1).
  The `bne` branch at 0x10010fe0 targets 0x10010fa8, is taken when (t2(?) & 0x1) != 0, and falls through when (t2(?) & 0x1) == 0.
  The `beq` branch at 0x10010fe8 targets 0x10010f90 and is always taken.
  The `beq` branch at 0x10010ff8 targets 0x10010fc4 and is always taken.
  The `beq` branch at 0x1001100c targets 0x100110ac, is taken when (s1(=a0) & 0x7) == 0, and falls through when (s1(=a0) & 0x7) != 0.
  The `beq` branch at 0x10011028 targets 0x1001109c, is taken when s1(?) == s7(=-0x1), and falls through when s1(?) != s7(=-0x1).
  The `beq` branch at 0x10011030 targets 0x10011074 and is always taken.
  The `beq` branch at 0x1001104c targets 0x1001103c, is taken when (ra(?) & 0x1) == 0, and falls through when (ra(?) & 0x1) != 0.
  The `beq` branch at 0x10011068 targets 0x10011100, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x10011070 targets 0x10011094, is taken when s1(?) == s7(=-0x1), and falls through when s1(?) != s7(=-0x1).
  The `bne` branch at 0x10011084 targets 0x10011054, is taken when (t9(?) & 0x1) != 0, and falls through when (t9(?) & 0x1) == 0.
  The `beq` branch at 0x1001108c targets 0x1001103c and is always taken.
  The `beq` branch at 0x1001109c targets 0x100110ac, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0x100110c4 targets 0x10011110, is taken when (a0(?) & 0x1) == 0, and falls through when (a0(?) & 0x1) != 0.
  The `beq` branch at 0x10011108 targets 0x10011070 and is always taken.
  The `beq` branch at 0x10011124 targets 0x10011114, is taken when (a3(?) & 0x1) == 0, and falls through when (a3(?) & 0x1) != 0.
  The `beq` branch at 0x1001112c targets 0x100110d0 and is always taken.
  The `bgtz` branch at 0x10011134 targets 0x10010f54, is taken when a0 > 0 (signed), and falls through when a0 <= 0 (signed).
  The `beq` branch at 0x1001113c targets 0x100110d4 and is always taken.
  The return at 0x100110f8 has v0 = one of -0x1, 0x0.
  The instructions from 0x10010f8c to 0x10010f8c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x10011038 to 0x10011038 are not reached by any path from the entry, and their branches are not listed.

- `venice_init` in `usr/gfx/gfxinit` at 0x100111ec (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x100111ec-0x10011478 (652 bytes).
  It occupies 652 bytes.
  4 such `lw` accesses load 4 bytes from sym(VEN_info) +0x2c, including `lw` at 0x10011224, `lw` at 0x10011250, `lw` at 0x100112d0.
  The `sw` at 0x10011268 stores 4 bytes to ?.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100112a0, `lw` at 0x10011308.
  The `sw` at 0x10011354 stores 4 bytes to sym(VEN_info) +0x3a4.
  2 such `lw` accesses load 4 bytes from sym(VEN_info) +0x3a4, including `lw` at 0x10011360, `lw` at 0x1001145c.
  2 such `sw` accesses store 4 bytes to sym(VEN_info) +0x48, including `sw` at 0x10011370, `sw` at 0x100113f8.
  2 such `lw` accesses load 4 bytes from sym(ven_pipenum) +0x0, including `lw` at 0x10011440, `lw` at 0x10011454.
  The `jal` at 0x10011248 calls venice_rm_rev [0x10010328] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100112b0 calls fprintf with a0=sym(__iob)+32, a1=0x10024678, a2=?, a3=?.
  The `jalr` at 0x100112c8 calls syslog with a0=0x2, a1=0x10024688, a2=?, a3=?.
  The `jalr` at 0x10011318 calls fprintf with a0=sym(__iob)+32, a1=0x10024640, a2=[sym(VEN_info)+44], a3=?.
  The `jalr` at 0x10011328 calls syslog with a0=0x2, a1=0x10024660, a2=?, a3=?.
  The `jal` at 0x10011350 calls venice_ge_rev [0x100105a0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10011378 calls venice_dg_present [0x10016ca0] with a0=0x400000, a1=0x100000, a2=?, a3=?.
  The `jalr` at 0x1001138c calls getenv with a0=0x10024708, a1=?, a2=?, a3=?.
  The `jal` at 0x100113bc calls venice_load_cpge [0x10011478] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10011400 calls get_ven_type [0x1000fb2c] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1001141c calls (unnamed) [0x10011144] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001143c calls fprintf with a0=sym(__iob)+32, a1=0x10024698, a2=[sym(ven_pipenum)], a3=?.
  The `jalr` at 0x10011450 calls syslog with a0=0x2, a1=0x100246d0, a2=[sym(ven_pipenum)], a3=?.
  The `jal` at 0x10011468 calls venice_dg2init [0x1001595c] with a0=0x0, a1=a0 at entry (arg0), a2=0x1, a3=?.
  The `blez` branch at 0x10011234 targets 0x100113d8, is taken when at(=[sym(VEN_info)+44]) <= 0 (signed), and falls through when at(=[sym(VEN_info)+44]) > 0 (signed).
  The `bne` branch at 0x10011264 targets 0x10011244, is taken when s8(?) < a2(=[sym(VEN_info)+44]) (signed), and falls through when s8(?) >= a2(=[sym(VEN_info)+44]) (signed).
  The `blez` branch at 0x1001126c targets 0x100113d8, is taken when a2(=[sym(VEN_info)+44]) <= 0 (signed), and falls through when a2(=[sym(VEN_info)+44]) > 0 (signed).
  The `beq` branch at 0x10011294 targets 0x10011304 and is always taken.
  The `bne` branch at 0x100112dc targets 0x1001129c, is taken when s0(?) < a2(=[sym(VEN_info)+44]) (signed), and falls through when s0(?) >= a2(=[sym(VEN_info)+44]) (signed).
  The `beq` branch at 0x100112fc targets 0x10011348, is taken when s8(?) >= a2(=[sym(VEN_info)+44]) (signed), and falls through when s8(?) < a2(=[sym(VEN_info)+44]) (signed).
  The `beq` branch at 0x1001130c targets 0x100112ec, is taken when at(?) == a3(?), and falls through when at(?) != a3(?).
  The `bgtz` branch at 0x10011338 targets 0x1001129c, is taken when a2(=[sym(VEN_info)+44]) > 0 (signed), and falls through when a2(=[sym(VEN_info)+44]) <= 0 (signed).
  The `beq` branch at 0x10011340 targets 0x100112e4 and is always taken.
  The `beq` branch at 0x1001135c targets 0x100113fc, is taken when (v0(=ret(venice_ge_rev)) & 0xf0) == 0, and falls through when (v0(=ret(venice_ge_rev)) & 0xf0) != 0.
  The `beq` branch at 0x10011368 targets 0x100113f4, is taken when v1(=[sym(VEN_info)+932]) == 0, and falls through when v1(=[sym(VEN_info)+932]) != 0.
  The `beq` branch at 0x10011380 targets 0x100113a0, is taken when v0(=ret(venice_dg_present)) == 0, and falls through when v0(=ret(venice_dg_present)) != 0.
  The `beq` branch at 0x10011394 targets 0x10011460, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `beq` branch at 0x100113ec targets 0x10011348 and is always taken.
  The `beq` branch at 0x100113f4 targets 0x10011374 and is always taken.
  The `beq` branch at 0x1001140c targets 0x1001142c, is taken when v0(=ret(get_ven_type)) == t8(=0x1), and falls through when v0(=ret(get_ven_type)) != t8(=0x1).
  The `beq` branch at 0x10011424 targets 0x10011360, is taken when v0(=ret(0x10011144)) == 0, and falls through when v0(=ret(0x10011144)) != 0.
  The `beq` branch at 0x10011458 targets 0x10011364 and is always taken.
  The `beq` branch at 0x10011470 targets 0x100113a0 and is always taken.
  The return at 0x100113d0 has v0 = ret(venice_load_cpge).

- `venice_load_cpge` in `usr/gfx/gfxinit` at 0x10011478 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10011478-0x10011744 (716 bytes).
  It occupies 716 bytes.
  The `lw` at 0x100114ac loads 4 bytes from sym(VEN_info) +0x2c.
  2 such `lw` accesses load 4 bytes from sym(VEN_info) +0x28, including `lw` at 0x10011524, `lw` at 0x10011568.
  The `lw` at 0x10011574 loads 4 bytes from sym(VEN_info) +0x3a4.
  The `lw` at 0x1001158c loads 4 bytes from sym(ven_type) +0x0.
  3 such `lw` accesses load 4 bytes from sym(ven_pipenum) +0x0, including `lw` at 0x100115cc, `lw` at 0x10011628, `lw` at 0x100116bc.
  The `jal` at 0x100114b0 calls fcg_get_ge_cnt [0x1000e5f8] with a0=sym(VEN_info), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100114cc calls strcpy with a0=sp-96, a1=0x10024718, a2=?, a3=?.
  The `jalr` at 0x100114dc calls strcpy with a0=sp-80, a1=0x10024728, a2=?, a3=?.
  The `jalr` at 0x100114f4 calls getenv with a0=0x10024738, a1=?, a2=?, a3=?.
  The `jalr` at 0x10011520 calls printf with a0=0x10024750, a1=0x1, a2=0xa, a3=[sym(VEN_info)+40].
  The `jalr` at 0x1001152c calls printf with a0=0x10024770, a1=?, a2=?, a3=?.
  The `jalr` at 0x10011538 calls printf with a0=0x10024798, a1=?, a2=?, a3=?.
  The `jalr` at 0x10011564 calls printf with a0=0x100247c0, a1=?, a2=0xa, a3=[sym(VEN_info)+40].
  The `jalr` at 0x10011580 calls printf with a0=0x100247e0, a1=[sym(VEN_info)+44], a2=[sym(VEN_info)+932]+4, a3=?.
  The `jal` at 0x100115c8 calls venice_loaducode [0x10011bb8] with a0=[sym(ven_pipenum)], a1=sp-96, a2=0x0, a3=0x0, a4=0x1, a5=0x1, a6=a0 at entry (arg0).
  The `jalr` at 0x100115ec calls fprintf with a0=sym(__iob)+32, a1=0x10024860, a2=sp-96, a3=?.
  The `jal` at 0x100115fc calls fcg_init_cp [0x1000e7f4] with a0=?, a1=[sym(VEN_info)+44], a2=?, a3=?.
  The `jal` at 0x10011624 calls venice_loaducode [0x10011bb8] with a0=[sym(ven_pipenum)], a1=sp-80, a2=0x0, a3=-0x1, a4=0x1, a5=0x1, a6=a0 at entry (arg0).
  The `jalr` at 0x10011648 calls fprintf with a0=sym(__iob)+32, a1=0x100248a0, a2=sp-80, a3=?.
  The `jal` at 0x10011658 calls fcg_init_ge [0x1000e948] with a0=?, a1=[sym(VEN_info)+44], a2=?, a3=?.
  The `jal` at 0x100116b8 calls venice_loaducode [0x10011bb8] with a0=[sym(ven_pipenum)], a1=0x100278c0, a2=0x0, a3=0x0, a4=0x1, a5=0x1, a6=a0 at entry (arg0).
  The `jalr` at 0x100116d8 calls fprintf with a0=sym(__iob)+32, a1=0x10024820, a2=?, a3=?.
  The `jal` at 0x100116f0 calls get_ven_type [0x1000fb2c] with a0=[sym(ven_type)], a1=?, a2=?, a3=-0x1.
  The `jalr` at 0x1001170c calls syslog with a0=0x2, a1=0x10024838, a2=?, a3=?.
  The `jalr` at 0x10011720 calls syslog with a0=0x2, a1=0x10024878, a2=?, a3=?.
  The `jalr` at 0x10011734 calls syslog with a0=0x2, a1=0x100247f8, a2=?, a3=?.
  The `beq` branch at 0x100114e8 targets 0x10011664, is taken when s2(=ret(fcg_get_ge_cnt)) == 0, and falls through when s2(=ret(fcg_get_ge_cnt)) != 0.
  The `beq` branch at 0x100114fc targets 0x10011688, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `beq` branch at 0x10011504 targets 0x10011540, is taken when s1(=a0) == 0, and falls through when s1(=a0) != 0.
  The `beq` branch at 0x10011544 targets 0x100116e8, is taken when s1(=a0) == 0, and falls through when s1(=a0) != 0.
  The `beq` branch at 0x10011594 targets 0x100116f0, is taken when a0(=[sym(ven_type)]) == a3(=-0x1), and falls through when a0(=[sym(ven_type)]) != a3(=-0x1).
  The `beq` branch at 0x100115a0 targets 0x10011698, is taken when a0(?) == a1(=0x1), and falls through when a0(?) != a1(=0x1).
  The `bltz` branch at 0x100115d0 targets 0x10011708, is taken when v0(=ret(venice_loaducode)) < 0 (signed), and falls through when v0(=ret(venice_loaducode)) >= 0 (signed).
  The `beq` branch at 0x100115d8 targets 0x100115f8, is taken when s1(=a0) == 0, and falls through when s1(=a0) != 0.
  The `bltz` branch at 0x1001162c targets 0x1001171c, is taken when v0(=ret(venice_loaducode)) < 0 (signed), and falls through when v0(=ret(venice_loaducode)) >= 0 (signed).
  The `beq` branch at 0x10011634 targets 0x10011654, is taken when s1(=a0) == 0, and falls through when s1(=a0) != 0.
  The `beq` branch at 0x10011688 targets 0x10011700, is taken when s1(=a0) == 0, and falls through when s1(=a0) != 0.
  The `beq` branch at 0x10011690 targets 0x10011550 and is always taken.
  The `bltz` branch at 0x100116c0 targets 0x10011730, is taken when v0(=ret(venice_loaducode)) < 0 (signed), and falls through when v0(=ret(venice_loaducode)) >= 0 (signed).
  The `beq` branch at 0x100116c8 targets 0x100116e0, is taken when s1(=a0) == 0, and falls through when s1(=a0) != 0.
  The `beq` branch at 0x100116e0 targets 0x100115a8 and is always taken.
  The `beq` branch at 0x100116e8 targets 0x1001158c and is always taken.
  The `beq` branch at 0x100116f8 targets 0x1001159c and is always taken.
  The `beq` branch at 0x10011700 targets 0x1001158c and is always taken.
  The `beq` branch at 0x10011714 targets 0x10011664 and is always taken.
  The `beq` branch at 0x10011728 targets 0x10011664 and is always taken.
  The `beq` branch at 0x1001173c targets 0x10011664 and is always taken.
  The return at 0x10011680 has v0 = one of 0x0, 0x1.

- `venice_loadsection_cp2` in `usr/gfx/gfxinit` at 0x10011744 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10011744-0x10011868 (292 bytes).
  It occupies 292 bytes.
  The `lw` at 0x100117c0 loads 4 bytes from sym(ven_type) +0x0.
  The `jalr` at 0x1001177c calls malloc with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10011798 calls read with a0=a0 at entry (arg0), a1=ret(malloc), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x100117b4 calls fcg_cp_loaducode [0x1000edd0] with a0=?, a1=?, a2=ret(malloc), a3=?.
  The `jalr` at 0x100117dc calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10011810 calls fprintf with a0=sym(__iob)+32, a1=0x100248e8, a2=?, a3=?.
  The `jalr` at 0x10011834 calls fprintf with a0=sym(__iob)+32, a1=0x100248b8, a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x10011844 calls get_ven_type [0x1000fb2c] with a0=[sym(ven_type)], a1=?, a2=-0x1, a3=?.
  The `jal` at 0x10011858 calls wg_flush [0x1000ec4c] with a0=?, a1=0x1, a2=?, a3=?.
  The `beq` branch at 0x10011770 targets 0x100117e8, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x10011784 targets 0x10011820, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `bne` branch at 0x100117a0 targets 0x10011800, is taken when v0(=ret(read)) != s0(=a2), and falls through when v0(=ret(read)) == s0(=a2).
  The `beq` branch at 0x100117c8 targets 0x10011844, is taken when a0(=[sym(ven_type)]) == a2(=-0x1), and falls through when a0(=[sym(ven_type)]) != a2(=-0x1).
  The `beq` branch at 0x100117d4 targets 0x10011854, is taken when a0(?) == a1(=0x1), and falls through when a0(?) != a1(=0x1).
  The `beq` branch at 0x10011818 targets 0x100117e8 and is always taken.
  The `beq` branch at 0x1001183c targets 0x100117e8 and is always taken.
  The `beq` branch at 0x1001184c targets 0x100117d0 and is always taken.
  The `beq` branch at 0x10011860 targets 0x100117dc and is always taken.
  The return at 0x100117f8 has v0 = one of -0x1, 0x0.

- `venice_loadfile_ge8` in `usr/gfx/gfxinit` at 0x1001199c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001199c-0x10011bb8 (540 bytes).
  It occupies 540 bytes.
  The `lw` at 0x10011b34 loads 4 bytes from sym(ven_type) +0x0.
  The `jalr` at 0x100119d4 calls read with a0=a0 at entry (arg0), a1=sp-256, a2=0x38, a3=a3 at entry (arg3).
  The `jalr` at 0x100119f8 calls fprintf with a0=sym(__iob)+32, a1=0x10024958, a2=?, a3=?.
  The `jalr` at 0x10011a34 calls lseek with a0=a0 at entry (arg0), a1=?, a2=0x0, a3=?.
  The `jalr` at 0x10011a4c calls read with a0=a0 at entry (arg0), a1=sp-200, a2=0x84, a3=?.
  The `jalr` at 0x10011a70 calls fprintf with a0=sym(__iob)+32, a1=0x100249a0, a2=?, a3=?, a4=0x84.
  The `jal` at 0x10011a94 calls fcg_cp_ge_bootstrap [0x1000f30c] with a0=sp-200, a1=?, a2=?, a3=?, a4=0x84.
  The `jalr` at 0x10011ad4 calls lseek with a0=a0 at entry (arg0), a1=?, a2=0x0, a3=?.
  The `jal` at 0x10011af8 calls (unnamed) [0x10011868] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=a2 at entry (arg2).
  The `jal` at 0x10011b28 calls fcg_cp_ge_goto [0x1000f508] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10011b68 calls fprintf with a0=sym(__iob)+32, a1=0x10024980, a2=?, a3=?.
  The `jal` at 0x10011b88 calls (unnamed) [0x10011868] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10011b98 calls get_ven_type [0x1000fb2c] with a0=[sym(ven_type)], a1=?, a2=?, a3=?.
  The `jal` at 0x10011ba8 calls wg_flush [0x1000ec4c] with a0=?, a1=0x1, a2=?, a3=?.
  The `beq` branch at 0x100119e0 targets 0x10011a08, is taken when v0(=ret(read)) == v1(=0x38), and falls through when v0(=ret(read)) != v1(=0x38).
  The `beq` branch at 0x10011a00 targets 0x10011a7c and is always taken.
  The `beq` branch at 0x10011a08 targets 0x10011b10, is taken when s1(=a1) == v0(=-0x1), and falls through when s1(=a1) != v0(=-0x1).
  The `bltz` branch at 0x10011a3c targets 0x10011b58, is taken when v0(=ret(lseek)) < 0 (signed), and falls through when v0(=ret(lseek)) >= 0 (signed).
  The `beq` branch at 0x10011a58 targets 0x10011a94, is taken when v0(=ret(read)) == a4(=0x84), and falls through when v0(=ret(read)) != a4(=0x84).
  The `beq` branch at 0x10011ae0 targets 0x10011b18, is taken when a6(=a2) == 0, and falls through when a6(=a2) != 0.
  The `beq` branch at 0x10011b00 targets 0x10011b78, is taken when v0(=ret(0x10011868)) == 0, and falls through when v0(=ret(0x10011868)) != 0.
  The `beq` branch at 0x10011b08 targets 0x10011a80 and is always taken.
  The `beq` branch at 0x10011b10 targets 0x10011a0c and is always taken.
  The `beq` branch at 0x10011b20 targets 0x10011b30, is taken when ra(=a3) == 0, and falls through when ra(=a3) != 0.
  The `beq` branch at 0x10011b3c targets 0x10011b98, is taken when a0(=[sym(ven_type)]) == at(=-0x1), and falls through when a0(=[sym(ven_type)]) != at(=-0x1).
  The `beq` branch at 0x10011b48 targets 0x10011ba8, is taken when a0(?) == a1(=0x1), and falls through when a0(?) != a1(=0x1).
  The `beq` branch at 0x10011b50 targets 0x10011a7c and is always taken.
  The `beq` branch at 0x10011b70 targets 0x10011a7c and is always taken.
  The `beq` branch at 0x10011b90 targets 0x10011b1c and is always taken.
  The `beq` branch at 0x10011ba0 targets 0x10011b44 and is always taken.
  The `beq` branch at 0x10011bb0 targets 0x10011b50 and is always taken.
  The return at 0x10011a8c has v0 = one of ?, ret(0x10011868).

- `venice_loaducode` in `usr/gfx/gfxinit` at 0x10011bb8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10011bb8-0x100120d8 (1312 bytes).
  It occupies 1312 bytes.
  The `lbu` at 0x10011be0 loads 1 byte from a1 (arg1 at entry) +0x0.
  The `lw` at 0x10011ed8 loads 4 bytes from sym(ven_type) +0x0.
  The `lw` at 0x10011ee4 loads 4 bytes from table(0x10022b94) +0x0.
  The `jalr` at 0x10011c20 calls getenv with a0=0x100249c8, a1=0x2e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10011c38 calls strcpy with a0=sp-400, a1=ret(getenv), a2=?, a3=?.
  The `jalr` at 0x10011c50 calls strcat with a0=sp-400, a1=0x100249d8, a2=?, a3=?.
  The `jalr` at 0x10011c60 calls strcat with a0=sp-400, a1=0x100278c6, a2=?, a3=?.
  The `jalr` at 0x10011c70 calls strcat with a0=sp-400, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x10011c94 calls strcpy with a0=sp-400, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10011cb0 calls open with a0=sp-400, a1=0x0, a2=?, a3=?.
  The `jalr` at 0x10011ce0 calls syslog with a0=0x2, a1=0x100249f0, a2=sp-400, a3=?.
  The `jalr` at 0x10011d00 calls printf with a0=0x10024a08, a1=sp-400, a2=?, a3=?.
  The `jalr` at 0x10011d18 calls read with a0=ret(open), a1=sp-144, a2=0x4, a3=?.
  The `jalr` at 0x10011d34 calls syslog with a0=0x2, a1=0x10024a18, a2=sp-400, a3=?.
  The `jalr` at 0x10011d40 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0x10011d60 calls lseek with a0=ret(open), a1=0x0, a2=0x0, a3=?.
  The `jalr` at 0x10011d7c calls syslog with a0=0x2, a1=0x10024a38, a2=sp-400, a3=?.
  The `jalr` at 0x10011da8 calls syslog with a0=0x2, a1=0x10024a50, a2=sp-400, a3=?.
  The `jal` at 0x10011dd4 calls venice_loadfile_ge8 [0x1001199c] with a0=ret(open), a1=-0x1, a2=a4 at entry (arg4), a3=a5 at entry (arg5).
  The `jalr` at 0x10011de4 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0x10011dfc calls read with a0=ret(open), a1=sp-136, a2=0x2c, a3=?.
  The `jalr` at 0x10011e1c calls syslog with a0=0x2, a1=0x10024a68, a2=sp-400, a3=?.
  The `jalr` at 0x10011e28 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0x10011e40 calls lseek with a0=ret(open), a1=?, a2=0x0, a3=?.
  The `jalr` at 0x10011e60 calls syslog with a0=0x2, a1=0x10024a88, a2=sp-400, a3=?.
  The `jalr` at 0x10011ea4 calls read with a0=ret(open), a1=sp-88, a2=0x4, a3=?.
  The `jalr` at 0x10011efc calls syslog with a0=0x2, a1=0x10024b18, a2=sp-400, a3=?.
  The `jalr` at 0x10011f18 calls syslog with a0=0x2, a1=0x10024af8, a2=sp-400, a3=?.
  The `jalr` at 0x10011f24 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jal` at 0x10011f54 calls venice_loadsection_fcg [0x1000e6a8] with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0x10011f68 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jal` at 0x10011f84 calls venice_loadsection_cp2 [0x10011744] with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0x10011fb0 calls read with a0=ret(open), a1=sp-84, a2=0x4, a3=?.
  The `jalr` at 0x10011fcc calls syslog with a0=0x2, a1=0x10024ac0, a2=sp-400, a3=?.
  The `jalr` at 0x10011fd8 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jal` at 0x10012000 calls venice_loadsection_dg2 [0x10012518] with a0=ret(open), a1=?, a2=?, a3=-0x4581.
  The `jalr` at 0x1001201c calls syslog with a0=0x2, a1=0x10024ae0, a2=sp-400, a3=?.
  The `jalr` at 0x10012028 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0x10012048 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jal` at 0x1001208c calls venice_loadsection_dg2 [0x10012518] with a0=ret(open), a1=?, a2=?, a3=0x4581.
  The `jal` at 0x100120a0 calls get_ven_type [0x1000fb2c] with a0=[sym(ven_type)], a1=?, a2=?, a3=?.
  The `jalr` at 0x100120bc calls syslog with a0=0x2, a1=0x10024aa0, a2=sp-400, a3=0x4538.
  The `jalr` at 0x100120c8 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10011c00 targets 0x10011c8c, is taken when v0(=[a1]:1) == at(=0x2f), and falls through when v0(=[a1]:1) != at(=0x2f).
  The `beq` branch at 0x10011c0c targets 0x10011c90, is taken when v0(=[a1]:1) == a1(=0x2e), and falls through when v0(=[a1]:1) != a1(=0x2e).
  The `beq` branch at 0x10011c28 targets 0x10011c80, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `beq` branch at 0x10011c78 targets 0x10011ca8 and is always taken.
  The `beq` branch at 0x10011c84 targets 0x10011c48 and is always taken.
  The `bne` branch at 0x10011cbc targets 0x10011cf0, is taken when v0(=ret(open)) != t8(=-0x1), and falls through when v0(=ret(open)) == t8(=-0x1).
  The `beq` branch at 0x10011cc4 targets 0x10011cd4, is taken when s2(=one of 0x0, 0x1) == 0, and falls through when s2(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x10011ccc targets 0x10011c84 and is always taken.
  The `beq` branch at 0x10011ce8 targets 0x10012054 and is always taken.
  The `beq` branch at 0x10011cf0 targets 0x10011d0c, is taken when s5(=a6) == 0, and falls through when s5(=a6) != 0.
  The `beq` branch at 0x10011d24 targets 0x10011d50, is taken when v0(=ret(read)) == s5(=0x4), and falls through when v0(=ret(read)) != s5(=0x4).
  The `beq` branch at 0x10011d48 targets 0x10012054 and is always taken.
  The `bne` branch at 0x10011d6c targets 0x10011d8c, is taken when v0(=ret(lseek)) != t9(=-0x1), and falls through when v0(=ret(lseek)) == t9(=-0x1).
  The `beq` branch at 0x10011d84 targets 0x10012054 and is always taken.
  The `bne` branch at 0x10011d94 targets 0x10011db8, is taken when v0(?) != ra(=0x107), and falls through when v0(?) == ra(=0x107).
  The `beq` branch at 0x10011db0 targets 0x10012054 and is always taken.
  The `bne` branch at 0x10011dbc targets 0x10011df4, is taken when at(?) != v1(=0x14d), and falls through when at(?) == v1(=0x14d).
  The `beq` branch at 0x10011dec targets 0x10012054 and is always taken.
  The `beq` branch at 0x10011e08 targets 0x10011e38, is taken when v0(=ret(read)) == a0(=0x2c), and falls through when v0(=ret(read)) != a0(=0x2c).
  The `beq` branch at 0x10011e30 targets 0x10012054 and is always taken.
  The `bne` branch at 0x10011e4c targets 0x10011e70, is taken when v0(=ret(lseek)) != a1(=-0x1), and falls through when v0(=ret(lseek)) == a1(=-0x1).
  The `beq` branch at 0x10011e68 targets 0x10012054 and is always taken.
  The `beq` branch at 0x10011e78 targets 0x100120b0, is taken when v0(?) == a3(=0x4538), and falls through when v0(?) != a3(=0x4538).
  The `beq` branch at 0x10011e84 targets 0x100120b0, is taken when v0(?) == a4(=0x4539), and falls through when v0(?) != a4(=0x4539).
  The `beq` branch at 0x10011e8c targets 0x100120b0, is taken when v0(?) == a5(=0x4578), and falls through when v0(?) != a5(=0x4578).
  The `beq` branch at 0x10011e94 targets 0x10011fa4 and is always taken.
  The `bne` branch at 0x10011eac targets 0x10012010, is taken when v0(=ret(read)) != s5(=0x4), and falls through when v0(=ret(read)) == s5(=0x4).
  The `beq` branch at 0x10011eb4 targets 0x10012044, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10011ec0 targets 0x10012038, is taken when s3(=a4) == 0, and falls through when s3(=a4) != 0.
  The `beq` branch at 0x10011edc targets 0x10011ef0, is taken when a1(?) >= 0x2d (unsigned), and falls through when a1(?) < 0x2d (unsigned).
  The `beq` branch at 0x10011f04 targets 0x10011f64 and is always taken.
  The `beq` branch at 0x10011f2c targets 0x10012054 and is always taken.
  The `beq` branch at 0x10011f34 targets 0x1001209c, is taken when v0(=[sym(ven_type)]) == a0(=-0x1), and falls through when v0(=[sym(ven_type)]) != a0(=-0x1).
  The `bne` branch at 0x10011f40 targets 0x10011f68, is taken when a0(?) != a1(=0x1), and falls through when a0(?) == a1(=0x1).
  The `bgez` branch at 0x10011f5c targets 0x10011f94, is taken when v0(=ret(venice_loadsection_fcg)) >= 0 (signed), and falls through when v0(=ret(venice_loadsection_fcg)) < 0 (signed).
  The `beq` branch at 0x10011f70 targets 0x10012054 and is always taken.
  The `bltz` branch at 0x10011f90 targets 0x10011f64, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `beq` branch at 0x10011f9c targets 0x10012044, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10011fb8 targets 0x10011e9c, is taken when v0(=ret(read)) == s5(=0x4), and falls through when v0(=ret(read)) != s5(=0x4).
  The `beq` branch at 0x10011fe0 targets 0x10012054 and is always taken.
  The `beq` branch at 0x10011fe8 targets 0x10012084, is taken when s6(=one of 0x0, 0x1) == 0, and falls through when s6(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x10011ff0 targets 0x10012080, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10012008 targets 0x10011f90 and is always taken.
  The `beq` branch at 0x10012030 targets 0x10012054 and is always taken.
  The `beq` branch at 0x1001203c targets 0x10011ec8 and is always taken.
  The `beq` branch at 0x10012094 targets 0x10011f90 and is always taken.
  The `beq` branch at 0x100120a8 targets 0x10011f3c and is always taken.
  The `beq` branch at 0x100120d0 targets 0x10012054 and is always taken.
  The return at 0x10012078 has v0 = one of -0x1, ret(venice_loadfile_ge8), ?.
  The indirect jump at 0x10011ee8 uses the jump table at 0x10022b94 with targets 0x10011f0c, 0x10011f0c, 0x10011ef0, 0x10011f0c, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011f0c, 0x10011ef0, 0x10011f0c, 0x10011ef0, 0x10011ef0, 0x10011f0c, 0x10011f0c, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011f78, 0x10011fe8, 0x10011f34.
  The indirect jump at 0x10011ee8 uses the jump table at 0x10022b94 with targets 0x10011f0c, 0x10011f0c, 0x10011ef0, 0x10011f0c, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011f0c, 0x10011ef0, 0x10011f0c, 0x10011ef0, 0x10011ef0, 0x10011f0c, 0x10011f0c, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011ef0, 0x10011f78, 0x10011fe8, 0x10011f34.

- `set_edgeMem_for_edge` in `usr/gfx/gfxinit` at 0x100120ec (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x100120ec-0x100121dc (240 bytes).
  It occupies 240 bytes.
  The `lbu` at 0x100121ac loads 1 byte from table(0x10024b30) +0x0.
  The `jal` at 0x10012134 calls (unnamed) [0x100120e0] with a0=0xb100, a1=0x1, a2=0x0, a3=a3 at entry (arg3).
  The `jal` at 0x10012148 calls (unnamed) [0x100120e0] with a0=0xb101, a1=?, a2=0x0, a3=?.
  The `jal` at 0x1001215c calls (unnamed) [0x100120e0] with a0=0xb100, a1=0x41, a2=0x0, a3=?.
  The `jal` at 0x10012184 calls (unnamed) [0x100120e0] with a0=0xb101, a1=?, a2=0x0, a3=?.
  The `jal` at 0x100121a8 calls (unnamed) [0x100120e0] with a0=0xb106, a1=entry(0x10024b30), a2=0x0, a3=?.
  The `jal` at 0x100121bc calls (unnamed) [0x100120e0] with a0=0xb107, a1=0xff, a2=0x0, a3=?.
  The `beq` branch at 0x10012118 targets 0x100121c4, is taken when s1(?) == at(=0x8000), and falls through when s1(?) != at(=0x8000).
  The return at 0x100121d4 has v0 = one of 0x1d178, ret(0x100120e0).

- `venice_loadsection_dg2` in `usr/gfx/gfxinit` at 0x10012518 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10012518-0x100125f4 (220 bytes).
  It occupies 220 bytes.
  The `jalr` at 0x10012548 calls malloc with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10012568 calls read with a0=a0 at entry (arg0), a1=ret(malloc), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x10012584 calls venice_loadsection_dg2_top [0x10012868] with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jal` at 0x1001259c calls venice_loadsection_dg2_body [0x10012d74] with a0=ret(malloc), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x100125a8 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x100125d8 calls printf with a0=0x10024bb8, a1=?, a2=?, a3=?.
  The `jalr` at 0x100125e4 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10012554 targets 0x100125b4, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `bne` branch at 0x10012570 targets 0x100125d0, is taken when v0(=ret(read)) != s1(=a2), and falls through when v0(=ret(read)) == s1(=a2).
  The `bne` branch at 0x1001257c targets 0x10012594, is taken when v0(=a3) != v1(=-0x4581), and falls through when v0(=a3) == v1(=-0x4581).
  The `beq` branch at 0x1001258c targets 0x100125a8 and is always taken.
  The `beq` branch at 0x100125ec targets 0x100125b4 and is always taken.
  The return at 0x100125c8 has v0 = one of -0x1, 0x0.

- `venice_load_clockDivider` in `usr/gfx/gfxinit` at 0x100125f4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x100125f4-0x100127d8 (484 bytes).
  It occupies 484 bytes.
  The `sw` at 0x1001261c stores 4 bytes to sym(hrate_picoseconds) +0x0.
  The `jal` at 0x10012620 calls venice_get_vcreg [0x1000fcb4] with a0=0xa830, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100126c0 calls venice_set_vcreg [0x1000fce8] with a0=0xa53d, a1=0x0, a2=0x0, a3=0x14.
  The `jal` at 0x100126e0 calls venice_set_vcreg [0x1000fce8] with a0=0xa63c, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x100126fc calls venice_clock_serial_dataBit [0x10014c70] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x10012724 calls venice_clock_serial_dataBit [0x10014c70] with a0=0x0, a1=?, a2=?, a3=?.
  The `jal` at 0x10012744 calls venice_clock_serial_dataBit [0x10014c70] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x10012768 calls venice_clock_serial_dataBit [0x10014c70] with a0=0x0, a1=?, a2=?, a3=?.
  The `jal` at 0x10012780 calls venice_clock_serial_dataBit [0x10014c70] with a0=0x0, a1=?, a2=?, a3=?.
  The `jal` at 0x100127a8 calls venice_set_vcreg [0x1000fce8] with a0=0xa53d, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x100127bc calls venice_set_vcreg [0x1000fce8] with a0=0xa53d, a1=0x0, a2=0x0, a3=?.
  The `bne` branch at 0x10012650 targets 0x10012674, is taken when v1(?) < 0x3 (signed), and falls through when v1(?) >= 0x3 (signed).
  The `beq` branch at 0x1001266c targets 0x1001268c and is always taken.
  The `beq` branch at 0x10012698 targets 0x100126b0, is taken when s1(?) >= s4(?) (signed), and falls through when s1(?) < s4(?) (signed).
  The `bne` branch at 0x100126a0 targets 0x100126b0, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x100126f4 targets 0x10012710 and is always taken.
  The `blez` branch at 0x10012708 targets 0x10012734, is taken when s5(?) <= 0 (signed), and falls through when s5(?) > 0 (signed).
  The `bne` branch at 0x10012718 targets 0x100126fc, is taken when (s1(?) & a2(?)) != 0, and falls through when (s1(?) & a2(?)) == 0.
  The `beq` branch at 0x1001272c targets 0x10012708 and is always taken.
  The `beq` branch at 0x10012738 targets 0x10012758 and is always taken.
  The `blez` branch at 0x10012750 targets 0x10012778, is taken when s3(?) <= 0 (signed), and falls through when s3(?) > 0 (signed).
  The `bne` branch at 0x10012760 targets 0x10012740, is taken when (s4(?) & a3(?)) != 0, and falls through when (s4(?) & a3(?)) == 0.
  The `beq` branch at 0x10012770 targets 0x10012750 and is always taken.
  The return at 0x100127d0 has v0 = ret(venice_set_vcreg).

- `venice_set_vif_gensrc_cntrl` in `usr/gfx/gfxinit` at 0x100127d8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x100127d8-0x10012868 (144 bytes).
  It occupies 144 bytes.
  The `jal` at 0x10012800 calls venice_get_vcreg [0x1000fcb4] with a0=0xa830, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10012844 calls venice_set_vcreg [0x1000fce8] with a0=0xb204, a1=?, a2=0x0, a3=?.
  The `beq` branch at 0x100127f4 targets 0x10012834, is taken when a1 == 0, and falls through when a1 != 0.
  The `bne` branch at 0x1001281c targets 0x10012838, is taken when v0(?) < 0x3 (signed), and falls through when v0(?) >= 0x3 (signed).
  The `beq` branch at 0x10012824 targets 0x10012860, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1001282c targets 0x10012838 and is always taken.
  The `beq` branch at 0x10012860 targets 0x10012838 and is always taken.
  The return at 0x10012858 has v0 = ret(venice_set_vcreg).

- `venice_loadsection_dg2_top` in `usr/gfx/gfxinit` at 0x10012868 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10012868-0x10012d74 (1292 bytes).
  It occupies 1292 bytes.
  The `lw` at 0x100128c0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0x100128cc stores 4 bytes to sym(vof_clock_value) +0x0.
  The `lw` at 0x10012900 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x10012908 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0x10012914 stores 4 bytes to sym(vof_control_reg_value) +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x10012920, `lw` at 0x10012a0c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x1001292c, `lw` at 0x10012a54.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lw` at 0x10012940, `lw` at 0x10012a80.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x18, including `lw` at 0x10012954, `lw` at 0x10012aac.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1c, including `lw` at 0x1001296c, `lw` at 0x10012ad8.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0x10012978, `lw` at 0x10012988, `lw` at 0x10012b00.
  The `sw` at 0x10012994 stores 4 bytes to sym(vif_bporch_clamp_shadow) +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24, including `lw` at 0x10012998, `lw` at 0x10012b28.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28, including `lw` at 0x100129a4, `lw` at 0x10012b50.
  21 such `lw` accesses load 4 bytes from sym(ven_gfxfd) +0x0, including `lw` at 0x100129c4, `lw` at 0x10012a30, `lw` at 0x10012a6c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38, including `lw` at 0x100129d8, `lw` at 0x10012b84.
  The `sw` at 0x100129dc stores 4 bytes to sym(vif_sync_width_internal) +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x3c, including `lw` at 0x100129e0, `lw` at 0x10012bac.
  The `sw` at 0x100129e4 stores 4 bytes to sym(vif_gensrc_cntrl_internal) +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x100129e8, `lw` at 0x10012bd4.
  The `sw` at 0x10012a04 stores 4 bytes to sym(vif_bporch_clamp_internal) +0x0.
  The `jal` at 0x1001289c calls venice_set_vcreg [0x1000fce8] with a0=0xaf00, a1=0x14, a2=0x0, a3=a3 at entry (arg3).
  The `jalr` at 0x100128a8 calls sginap with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x100128c8 calls venice_set_vcreg [0x1000fce8] with a0=0xa43c, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x100128dc calls venice_set_vcreg [0x1000fce8] with a0=0xa43c, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x100128f0 calls venice_set_vcreg [0x1000fce8] with a0=0xa43c, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x100128fc calls venice_load_clockDivider [0x100125f4] with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jal` at 0x1001291c calls venice_set_vcreg [0x1000fce8] with a0=0xb200, a1=[a0+12], a2=0x0, a3=?.
  The `jal` at 0x10012930 calls venice_set_vcreg [0x1000fce8] with a0=0xb201, a1=[a0+16], a2=0x0, a3=?.
  The `jal` at 0x10012944 calls venice_set_vcreg [0x1000fce8] with a0=0xb202, a1=[a0+20], a2=0x0, a3=?.
  The `jal` at 0x10012958 calls venice_set_vcreg [0x1000fce8] with a0=0xb203, a1=[a0+24], a2=0x0, a3=?.
  The `jal` at 0x10012968 calls venice_set_vif_gensrc_cntrl [0x100127d8] with a0=[a0+28], a1=0x1, a2=?, a3=?.
  The `jal` at 0x1001297c calls venice_set_vcreg [0x1000fce8] with a0=0xb205, a1=[a0+32], a2=0x0, a3=?.
  The `jal` at 0x1001299c calls venice_set_vcreg [0x1000fce8] with a0=0xb206, a1=[a0+36], a2=0x0, a3=sym(vif_bporch_clamp_shadow).
  The `jal` at 0x100129b8 calls venice_set_vcreg [0x1000fce8] with a0=0xb207, a1=[a0+40], a2=0x0, a3=?.
  The `jalr` at 0x10012a14 calls ioctl with a0=[sym(ven_gfxfd)], a1=0x2726, a2=sp-96, a3=?, a4=[a0+12], a5=0xb200, a6=0xff, a7=[a0+64].
  The `jalr` at 0x10012a5c calls ioctl with a0=[sym(ven_gfxfd)], a1=0x2726, a2=sp-96, a3=?.
  The `jalr` at 0x10012a88 calls ioctl with a0=[sym(ven_gfxfd)], a1=0x2726, a2=sp-96, a3=?.
  The `jalr` at 0x10012ab4 calls ioctl with a0=[sym(ven_gfxfd)], a1=0x2726, a2=sp-96, a3=?.
  The `jalr` at 0x10012ae0 calls ioctl with a0=[sym(ven_gfxfd)], a1=0x2726, a2=sp-96, a3=[a0+28], a4=0xb204.
  The `jalr` at 0x10012b08 calls ioctl with a0=[sym(ven_gfxfd)], a1=0x2726, a2=sp-96, a3=?, a5=[a0+32], a6=0xb205.
  The `jalr` at 0x10012b30 calls ioctl with a0=[sym(ven_gfxfd)], a1=0x2726, a2=sp-96, a3=?, a7=[a0+36].
  The `jalr` at 0x10012b58 calls ioctl with a0=[sym(ven_gfxfd)], a1=0x2726, a2=sp-96, a3=?.
  The `jalr` at 0x10012b8c calls ioctl with a0=[sym(ven_gfxfd)], a1=0x2726, a2=sp-96, a3=?.
  The `jalr` at 0x10012bb4 calls ioctl with a0=[sym(ven_gfxfd)], a1=0x2726, a2=sp-96, a3=?.
  The `jalr` at 0x10012bdc calls ioctl with a0=[sym(ven_gfxfd)], a1=0x2726, a2=sp-96, a3=?.
  The `jalr` at 0x10012c24 calls perror with a0=0x10024bd8, a1=?, a2=?, a3=?.
  The `jalr` at 0x10012c30 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10012c40 calls perror with a0=0x10024c10, a1=?, a2=?, a3=?.
  The `jalr` at 0x10012c4c calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10012c5c calls perror with a0=0x10024c48, a1=?, a2=?, a3=?.
  The `jalr` at 0x10012c68 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10012c78 calls perror with a0=0x10024c80, a1=?, a2=?, a3=?.
  The `jalr` at 0x10012c84 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10012c98 calls perror with a0=0x10024cb8, a1=?, a2=?, a3=?.
  The `jalr` at 0x10012ca4 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10012cb8 calls perror with a0=0x10024cf0, a1=?, a2=?, a3=?.
  The `jalr` at 0x10012cc4 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10012cd8 calls perror with a0=0x10024d28, a1=?, a2=?, a3=?.
  The `jalr` at 0x10012ce4 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10012cf8 calls perror with a0=0x10024d60, a1=?, a2=?, a3=?.
  The `jalr` at 0x10012d04 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10012d18 calls perror with a0=0x10024d98, a1=?, a2=?, a3=?.
  The `jalr` at 0x10012d24 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10012d38 calls perror with a0=0x10024dd0, a1=?, a2=?, a3=?.
  The `jalr` at 0x10012d44 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10012d58 calls perror with a0=0x10024e08, a1=?, a2=?, a3=?.
  The `jalr` at 0x10012d64 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10012a28 targets 0x10012c18, is taken when v0(=ret(ioctl)) == s1(=-0x1), and falls through when v0(=ret(ioctl)) != s1(=-0x1).
  The `beq` branch at 0x10012a64 targets 0x10012c40, is taken when v0(=ret(ioctl)) == s1(=-0x1), and falls through when v0(=ret(ioctl)) != s1(=-0x1).
  The `beq` branch at 0x10012a90 targets 0x10012c5c, is taken when v0(=ret(ioctl)) == s1(=-0x1), and falls through when v0(=ret(ioctl)) != s1(=-0x1).
  The `beq` branch at 0x10012abc targets 0x10012c78, is taken when v0(=ret(ioctl)) == s1(=-0x1), and falls through when v0(=ret(ioctl)) != s1(=-0x1).
  The `beq` branch at 0x10012ae8 targets 0x10012c94, is taken when v0(=ret(ioctl)) == s1(=-0x1), and falls through when v0(=ret(ioctl)) != s1(=-0x1).
  The `beq` branch at 0x10012b10 targets 0x10012cb4, is taken when v0(=ret(ioctl)) == s1(=-0x1), and falls through when v0(=ret(ioctl)) != s1(=-0x1).
  The `beq` branch at 0x10012b38 targets 0x10012cd4, is taken when v0(=ret(ioctl)) == s1(=-0x1), and falls through when v0(=ret(ioctl)) != s1(=-0x1).
  The `beq` branch at 0x10012b60 targets 0x10012cf4, is taken when v0(=ret(ioctl)) == s1(=-0x1), and falls through when v0(=ret(ioctl)) != s1(=-0x1).
  The `beq` branch at 0x10012b94 targets 0x10012d14, is taken when v0(=ret(ioctl)) == s1(=-0x1), and falls through when v0(=ret(ioctl)) != s1(=-0x1).
  The `beq` branch at 0x10012bbc targets 0x10012d34, is taken when v0(=ret(ioctl)) == s1(=-0x1), and falls through when v0(=ret(ioctl)) != s1(=-0x1).
  The `beq` branch at 0x10012be4 targets 0x10012d54, is taken when v0(=ret(ioctl)) == s1(=-0x1), and falls through when v0(=ret(ioctl)) != s1(=-0x1).
  The `beq` branch at 0x10012c38 targets 0x10012a34 and is always taken.
  The `beq` branch at 0x10012c54 targets 0x10012a70 and is always taken.
  The `beq` branch at 0x10012c70 targets 0x10012a9c and is always taken.
  The `beq` branch at 0x10012c8c targets 0x10012ac8 and is always taken.
  The `beq` branch at 0x10012cac targets 0x10012af0 and is always taken.
  The `beq` branch at 0x10012ccc targets 0x10012b18 and is always taken.
  The `beq` branch at 0x10012cec targets 0x10012b40 and is always taken.
  The `beq` branch at 0x10012d0c targets 0x10012b68 and is always taken.
  The `beq` branch at 0x10012d2c targets 0x10012b9c and is always taken.
  The `beq` branch at 0x10012d4c targets 0x10012bc4 and is always taken.
  The `beq` branch at 0x10012d6c targets 0x10012bec and is always taken.
  The return at 0x10012c10 has v0 = 0x0.

- `venice_loadsection_dg2_body` in `usr/gfx/gfxinit` at 0x10012d74 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10012d74-0x10013604 (2192 bytes).
  It occupies 2192 bytes.
  15 such `lw` accesses load 4 bytes from sym(ven_gfxfd) +0x0, including `lw` at 0x10012df4, `lw` at 0x10012e9c, `lw` at 0x10012ed4.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xd40, including `lw` at 0x10012e40, `lw` at 0x10012f34, `lw` at 0x10013008.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xd40, including `sw` at 0x10012e48, `sw` at 0x10012e64.
  4 such `lw` accesses load 4 bytes from sym(VEN_info) +0x50, including `lw` at 0x10012e50, `lw` at 0x10012f40, `lw` at 0x1001313c.
  2 such `lw` accesses load 4 bytes from sym(VEN_info) +0x78, including `lw` at 0x10012e58, `lw` at 0x10012f4c.
  2 such `sw` accesses store 4 bytes to sym(vif_genlock) +0x0, including `sw` at 0x10012e98, `sw` at 0x100132d8.
  2 such `lw` accesses load 4 bytes from sym(vif_sync_width_internal) +0x0, including `lw` at 0x10012ebc, `lw` at 0x100132cc.
  2 such `lw` accesses load 4 bytes from sym(vif_gensrc_cntrl_internal) +0x0, including `lw` at 0x10012eec, `lw` at 0x100132ec.
  3 such `lw` accesses load 4 bytes from sym(vif_bporch_clamp_internal) +0x0, including `lw` at 0x10012f1c, `lw` at 0x10013304, `lw` at 0x10013314.
  2 such `sw` accesses store 4 bytes to sym(vif_bporch_clamp_shadow) +0x0, including `sw` at 0x10013004, `sw` at 0x1001331c.
  2 such `sw` accesses store 4 bytes to sym(vof_outsync_level) +0x0, including `sw` at 0x10013020, `sw` at 0x10013324.
  The `lw` at 0x100130e8 loads 4 bytes from sym(vof_outsync_level) +0x0.
  The `lw` at 0x10013164 loads 4 bytes from ?.
  The `sw` at 0x10013170 stores 4 bytes to ?.
  The `lw` at 0x1001317c loads 4 bytes from a0 (arg0 at entry) +0xd48.
  2 such `sw` accesses store 4 bytes to sym(vof_hwalk_length) +0x0, including `sw` at 0x10013188, `sw` at 0x100131b4.
  The `lw` at 0x100131a0 loads 4 bytes from sym(vof_hwalk_length) +0x0.
  The `sw` at 0x100131b0 stores 4 bytes to a0 (arg0 at entry) +0xd48.
  The `lw` at 0x100131f0 loads 4 bytes from sym(vof_clock_value) +0x0.
  The `lw` at 0x1001323c loads 4 bytes from sym(vof_control_reg_value) +0x0.
  The `jal` at 0x10012db4 calls (unnamed) [0x100120e0] with a0=0xb100, a1=0x1, a2=0x0, a3=a3 at entry (arg3).
  The `jalr` at 0x10012df0 calls ioctl with a0=[sym(ven_gfxfd)], a1=0x2726, a2=sp-128, a3=?.
  The `jal` at 0x10012e24 calls (unnamed) [0x100121dc] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10012e34 calls (unnamed) [0x10012390] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10012e84 calls venice_set_vcreg [0x1000fce8] with a0=0xa73c, a1=0x1, a2=0x0, a3=?.
  The `jalr` at 0x10012ec4 calls ioctl with a0=[sym(ven_gfxfd)], a1=0x2726, a2=sp-128, a3=[sym(vif_sync_width_internal)], a4=0xff, a5=0xb208.
  The `jalr` at 0x10012ef4 calls ioctl with a0=[sym(ven_gfxfd)], a1=0x2726, a2=sp-128, a3=?, a6=[sym(vif_gensrc_cntrl_internal)], a7=0xb20c.
  The `jalr` at 0x10012f24 calls ioctl with a0=[sym(ven_gfxfd)], a1=0x2726, a2=sp-128, a3=?.
  The `jalr` at 0x10012f6c calls ioctl with a0=[sym(ven_gfxfd)], a1=0x2729, a2=sp-128, a3=?.
  The `jal` at 0x10012f88 calls venice_set_vcreg [0x1000fce8] with a0=0xb200, a1=?, a2=0x0, a3=?.
  The `jalr` at 0x10012fa4 calls ioctl with a0=[sym(ven_gfxfd)], a1=0x2729, a2=sp-128, a3=?.
  The `jal` at 0x10012fbc calls venice_set_vif_gensrc_cntrl [0x100127d8] with a0=?, a1=0x1, a2=?, a3=?.
  The `jalr` at 0x10012fd8 calls ioctl with a0=[sym(ven_gfxfd)], a1=0x2729, a2=sp-128, a3=?.
  The `jal` at 0x10012ff4 calls venice_set_vcreg [0x1000fce8] with a0=0xb205, a1=?, a2=0x0, a3=?.
  The `jal` at 0x1001307c calls set_dac_cmd2 [0x10016f00] with a0=?, a1=one of 0x8, 0x88, a2=?, a3=sym(vof_outsync_level).
  The `jalr` at 0x100130a8 calls ioctl with a0=[sym(ven_gfxfd)], a1=0x2726, a2=sp-128, a3=?.
  The `jalr` at 0x10013130 calls ioctl with a0=[sym(ven_gfxfd)], a1=0x2726, a2=sp-128, a3=0xff, a4=0x800000.
  The `jal` at 0x10013184 calls venice_get_vcreg [0x1000fcb4] with a0=0xa63c, a1=?, a2=?, a3=?, a5=[sym(VEN_info)+80], a7=[a0+3400].
  The `jal` at 0x100131c0 calls venice_calcframebuffer [0x1001447c] with a0=a0 at entry (arg0), a1=a0+3376, a2=?, a3=?.
  The `jal` at 0x100131d4 calls (unnamed) [0x10013c48] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x100131ec calls venice_set_vcreg [0x1000fce8] with a0=0xaf00, a1=[sym(vof_clock_value)], a2=0x0, a3=?.
  The `jalr` at 0x100131f8 calls sginap with a0=0x2, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001320c calls ioctl with a0=[sym(ven_gfxfd)], a1=0x2727, a2=0x0, a3=?.
  The `jalr` at 0x10013244 calls ioctl with a0=[sym(ven_gfxfd)], a1=0x2726, a2=sp-128, a3=[sym(vof_control_reg_value)], a4=0xb100, a5=0xfe.
  The `jal` at 0x100132b4 calls venice_set_vcreg [0x1000fce8] with a0=0xa73c, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x100132d4 calls venice_set_vcreg [0x1000fce8] with a0=0xb200, a1=[sym(vif_sync_width_internal)], a2=0x0, a3=?, a7=sym(vif_genlock).
  The `jal` at 0x100132e8 calls venice_set_vif_gensrc_cntrl [0x100127d8] with a0=[sym(vif_gensrc_cntrl_internal)], a1=0x0, a2=?, a3=?.
  The `jal` at 0x10013300 calls venice_set_vcreg [0x1000fce8] with a0=0xb205, a1=[sym(vif_bporch_clamp_internal)], a2=0x0, a3=?.
  The `jalr` at 0x100133d8 calls perror with a0=0x10024e40, a1=?, a2=?, a3=?.
  The `jalr` at 0x100133e4 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x100133f4 calls perror with a0=0x10024e78, a1=?, a2=?, a3=?.
  The `jalr` at 0x10013400 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10013410 calls perror with a0=0x10024eb0, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001341c calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001342c calls perror with a0=0x10024ee8, a1=?, a2=?, a3=?.
  The `jalr` at 0x10013438 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001344c calls perror with a0=0x10024fc8, a1=?, a2=?, a3=?.
  The `jalr` at 0x10013458 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001346c calls perror with a0=0x10025008, a1=?, a2=?, a3=?, a5=[sym(VEN_info)+80].
  The `jalr` at 0x10013478 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10013488 calls perror with a0=0x10024f20, a1=?, a2=?, a3=?.
  The `jalr` at 0x10013494 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x100134a4 calls perror with a0=0x10024f58, a1=?, a2=?, a3=?.
  The `jalr` at 0x100134b0 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x100134c0 calls perror with a0=0x10024f90, a1=?, a2=?, a3=?.
  The `jalr` at 0x100134cc calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x100134e0 calls perror with a0=0x10025050, a1=?, a2=?, a3=?.
  The `jalr` at 0x100134ec calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10013500 calls perror with a0=0x10025078, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001350c calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10012e04 targets 0x100133cc, is taken when v0(=ret(ioctl)) == s4(=-0x1), and falls through when v0(=ret(ioctl)) != s4(=-0x1).
  The `beq` branch at 0x10012e3c targets 0x10012e4c, is taken when s1(=a1) == 0, and falls through when s1(=a1) != 0.
  The `beq` branch at 0x10012e54 targets 0x10013290, is taken when ra(=[sym(VEN_info)+80]) == 0, and falls through when ra(=[sym(VEN_info)+80]) != 0.
  The `beq` branch at 0x10012e6c targets 0x100132a4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x10012ecc targets 0x100133f4, is taken when v0(=ret(ioctl)) == s4(=-0x1), and falls through when v0(=ret(ioctl)) != s4(=-0x1).
  The `beq` branch at 0x10012efc targets 0x10013410, is taken when v0(=ret(ioctl)) == s4(=-0x1), and falls through when v0(=ret(ioctl)) != s4(=-0x1).
  The `beq` branch at 0x10012f2c targets 0x1001342c, is taken when v0(=ret(ioctl)) == s4(=-0x1), and falls through when v0(=ret(ioctl)) != s4(=-0x1).
  The `bne` branch at 0x10012f3c targets 0x10012f58, is taken when (v0(=[a0+3392]) & 0x40) != 0, and falls through when (v0(=[a0+3392]) & 0x40) == 0.
  The `bne` branch at 0x10012f44 targets 0x10012f5c, is taken when t3(=[sym(VEN_info)+80]) != 0, and falls through when t3(=[sym(VEN_info)+80]) == 0.
  The `bgez` branch at 0x10012f54 targets 0x1001300c, is taken when t8(=([sym(VEN_info)+120] << 0x2e)) >= 0 (signed), and falls through when t8(=([sym(VEN_info)+120] << 0x2e)) < 0 (signed).
  The `beq` branch at 0x10012f74 targets 0x10013488, is taken when v0(=ret(ioctl)) == s4(=-0x1), and falls through when v0(=ret(ioctl)) != s4(=-0x1).
  The `beq` branch at 0x10012fac targets 0x100134a4, is taken when v0(=ret(ioctl)) == s4(=-0x1), and falls through when v0(=ret(ioctl)) != s4(=-0x1).
  The `beq` branch at 0x10012fe0 targets 0x100134c0, is taken when v0(=ret(ioctl)) == s4(=-0x1), and falls through when v0(=ret(ioctl)) != s4(=-0x1).
  The `beq` branch at 0x10013010 targets 0x10013320, is taken when (v0(=[a0+3392]) & 0x80) == 0, and falls through when (v0(=[a0+3392]) & 0x80) != 0.
  The `beq` branch at 0x10013034 targets 0x10013328, is taken when (a1(=[a0+3392]) & 0x1000) == 0, and falls through when (a1(=[a0+3392]) & 0x1000) != 0.
  The `beq` branch at 0x1001303c targets 0x10013364, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10013044 targets 0x10013390, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1001304c targets 0x100133a4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x100130b0 targets 0x10013448, is taken when v0(=ret(ioctl)) == s4(=-0x1), and falls through when v0(=ret(ioctl)) != s4(=-0x1).
  The `beq` branch at 0x100130b8 targets 0x1001335c, is taken when s8(=one of 0x0, 0x1) == 0, and falls through when s8(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x100130c0 targets 0x100130cc, is taken when s7(=one of 0x0, 0x1) == 0, and falls through when s7(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x100130cc targets 0x100130d8, is taken when s6(=one of 0x0, 0x1) == 0, and falls through when s6(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x100130d8 targets 0x100130e8, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x100130ec targets 0x100130f8, is taken when at(=[sym(vof_outsync_level)]) == 0, and falls through when at(=[sym(vof_outsync_level)]) != 0.
  The `beq` branch at 0x10013100 targets 0x10013110, is taken when (v1(=[a0+3392]) & 0x40) == 0, and falls through when (v1(=[a0+3392]) & 0x40) != 0.
  The `beq` branch at 0x10013138 targets 0x10013468, is taken when v0(=ret(ioctl)) == s4(=-0x1), and falls through when v0(=ret(ioctl)) != s4(=-0x1).
  The `bne` branch at 0x10013140 targets 0x10013178, is taken when a5(=[sym(VEN_info)+80]) != 0, and falls through when a5(=[sym(VEN_info)+80]) == 0.
  The `bgtz` branch at 0x1001316c targets 0x10013158, is taken when v0(?) > 0 (signed), and falls through when v0(?) <= 0 (signed).
  The `beq` branch at 0x10013198 targets 0x100131bc, is taken when t0(?) == t1(=0xffffffffa0000000), and falls through when t0(?) != t1(=0xffffffffa0000000).
  The `bne` branch at 0x100131a8 targets 0x100131b8, is taken when t1(=[sym(vof_hwalk_length)]) < 0x3 (signed), and falls through when t1(=[sym(vof_hwalk_length)]) >= 0x3 (signed).
  The `beq` branch at 0x100131c8 targets 0x10013288, is taken when v0(=ret(venice_calcframebuffer)) == 0, and falls through when v0(=ret(venice_calcframebuffer)) != 0.
  The `beq` branch at 0x10013214 targets 0x100134dc, is taken when v0(=ret(ioctl)) == s4(=-0x1), and falls through when v0(=ret(ioctl)) != s4(=-0x1).
  The `beq` branch at 0x1001324c targets 0x100134fc, is taken when v0(=ret(ioctl)) == s4(=-0x1), and falls through when v0(=ret(ioctl)) != s4(=-0x1).
  The `beq` branch at 0x10013288 targets 0x10013254 and is always taken.
  The `bltz` branch at 0x10013294 targets 0x10012e60, is taken when a6(=([sym(VEN_info)+120] << 0x2e)) < 0 (signed), and falls through when a6(=([sym(VEN_info)+120] << 0x2e)) >= 0 (signed).
  The `beq` branch at 0x1001329c targets 0x10012e6c and is always taken.
  The `beq` branch at 0x10013318 targets 0x10012e9c and is always taken.
  The `beq` branch at 0x10013320 targets 0x10013024 and is always taken.
  The `beq` branch at 0x10013328 targets 0x1001351c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10013330 targets 0x10013554, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x10013338 targets 0x1001359c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10013354 targets 0x10013068 and is always taken.
  The `beq` branch at 0x1001335c targets 0x100130c0 and is always taken.
  The `beq` branch at 0x10013364 targets 0x1001353c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1001336c targets 0x10013588, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10013388 targets 0x10013068 and is always taken.
  The `beq` branch at 0x10013390 targets 0x10013578, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1001339c targets 0x1001305c and is always taken.
  The `beq` branch at 0x100133c4 targets 0x10013074 and is always taken.
  The `beq` branch at 0x100133ec targets 0x10012e10 and is always taken.
  The `beq` branch at 0x10013408 targets 0x10012ed8 and is always taken.
  The `beq` branch at 0x10013424 targets 0x10012f08 and is always taken.
  The `beq` branch at 0x10013440 targets 0x10012f38 and is always taken.
  The `beq` branch at 0x10013460 targets 0x100130b8 and is always taken.
  The `beq` branch at 0x10013480 targets 0x10013140 and is always taken.
  The `beq` branch at 0x1001349c targets 0x10012f80 and is always taken.
  The `beq` branch at 0x100134b8 targets 0x10012fb8 and is always taken.
  The `beq` branch at 0x100134d4 targets 0x10012fec and is always taken.
  The `beq` branch at 0x100134f4 targets 0x1001321c and is always taken.
  The `beq` branch at 0x10013514 targets 0x10013254 and is always taken.
  The `beq` branch at 0x1001351c targets 0x100135b0, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x10013524 targets 0x100135ec, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10013534 targets 0x1001334c and is always taken.
  The `beq` branch at 0x1001353c targets 0x100135c8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1001354c targets 0x10013380 and is always taken.
  The `beq` branch at 0x10013554 targets 0x100135d4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10013570 targets 0x10013350 and is always taken.
  The `beq` branch at 0x10013580 targets 0x100133b0 and is always taken.
  The `beq` branch at 0x10013594 targets 0x100133b8 and is always taken.
  The `beq` branch at 0x100135a8 targets 0x100133b8 and is always taken.
  The `beq` branch at 0x100135b0 targets 0x100135f8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x100135c0 targets 0x10013568 and is always taken.
  The `beq` branch at 0x100135cc targets 0x10013590 and is always taken.
  The `beq` branch at 0x100135e4 targets 0x100135a8 and is always taken.
  The `beq` branch at 0x100135f0 targets 0x100135a4 and is always taken.
  The `beq` branch at 0x100135fc targets 0x100135dc and is always taken.
  The return at 0x10013280 has v0 = one of 0x0, 0x1.

- `venice_clamp_dg2_pan` in `usr/gfx/gfxinit` at 0x10013604 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10013604-0x100137f8 (500 bytes).
  It occupies 500 bytes.
  5 such `lw` accesses load 4 bytes from sym(VEN_info) +0x60, including `lw` at 0x10013620, `lw` at 0x10013660, `lw` at 0x10013708.
  3 such `sw` accesses store 4 bytes to sym(VEN_info) +0x60, including `sw` at 0x10013668, `sw` at 0x100136bc, `sw` at 0x100137f4.
  The `lw` at 0x1001366c loads 4 bytes from sym(VEN_info) +0x2c.
  3 such `lw` accesses load 4 bytes from sym(VEN_info) +0x34, including `lw` at 0x10013670, `lw` at 0x10013710, `lw` at 0x100137e8.
  2 such `lhu` accesses load 2 bytes from sym(VEN_info) +0x20, including `lhu` at 0x10013680, `lhu` at 0x100137a8.
  2 such `lw` accesses load 4 bytes from sym(VEN_info) +0x68, including `lw` at 0x100136a8, `lw` at 0x100137dc.
  The `lw` at 0x100136c8 loads 4 bytes from sym(VEN_info) +0x78.
  2 such `lw` accesses load 4 bytes from sym(VEN_info) +0x64, including `lw` at 0x100136cc, `lw` at 0x1001373c.
  The `lhu` at 0x100136d4 loads 2 bytes from sym(VEN_info) +0x22.
  The `lw` at 0x100136dc loads 4 bytes from sym(VEN_info) +0x6c.
  2 such `sw` accesses store 4 bytes to sym(VEN_info) +0x64, including `sw` at 0x100136fc, `sw` at 0x100137c8.
  The `sw` at 0x10013734 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0x10013744 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `sw` at 0x10013790 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `jalr` at 0x10013658 calls printf with a0=0x100250b0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[sym(VEN_info)+96].
  The `jalr` at 0x10013798 calls printf with a0=0x100250e8, a1=[sym(VEN_info)+32]:2, a2=?, a3=?, a5=[sym(VEN_info)+52].
  The `jalr` at 0x100137b8 calls printf with a0=0x10025188, a1=?, a2=[sym(VEN_info)+34]:2, a3=?.
  The `jalr` at 0x100137d0 calls printf with a0=0x10025120, a1=[sym(VEN_info)+32]:2, a2=?, a3=?.
  The `jalr` at 0x100137e4 calls printf with a0=0x10025138, a1=[sym(VEN_info)+104], a2=[sym(VEN_info)+52], a3=?.
  The `beq` branch at 0x10013644 targets 0x1001366c, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `bne` branch at 0x100136a0 targets 0x10013794, is taken when a2(?) < a1(=[sym(VEN_info)+32]:2) (unsigned), and falls through when a2(?) >= a1(=[sym(VEN_info)+32]:2) (unsigned).
  The `beq` branch at 0x100136b4 targets 0x100136c8, is taken when a1(=[sym(VEN_info)+32]:2) >= a6(?) (unsigned), and falls through when a1(=[sym(VEN_info)+32]:2) < a6(?) (unsigned).
  The `bltz` branch at 0x100136c0 targets 0x100137cc, is taken when a5(?) < 0 (signed), and falls through when a5(?) >= 0 (signed).
  The `beq` branch at 0x100136d8 targets 0x100137ac, is taken when (a7(=[sym(VEN_info)+120]) & 0x10) == 0, and falls through when (a7(=[sym(VEN_info)+120]) & 0x10) != 0.
  The `beq` branch at 0x100136f4 targets 0x1001370c, is taken when a2(=[sym(VEN_info)+34]:2) >= a3(?) (unsigned), and falls through when a2(=[sym(VEN_info)+34]:2) < a3(?) (unsigned).
  The `bltz` branch at 0x10013700 targets 0x100137b4, is taken when a6(?) < 0 (signed), and falls through when a6(?) >= 0 (signed).
  The `beq` branch at 0x100137a4 targets 0x100136a8 and is always taken.
  The `beq` branch at 0x100137ac targets 0x100136ec and is always taken.
  The `beq` branch at 0x100137c4 targets 0x10013708 and is always taken.
  The `beq` branch at 0x100137f0 targets 0x100136c8 and is always taken.
  The return at 0x1001378c has v0 = ?.

- `venice_write_vdrc_sram_byte` in `usr/gfx/gfxinit` at 0x100137f8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x100137f8-0x1001389c (164 bytes).
  It occupies 164 bytes.
  3 such `lw` accesses load 4 bytes from sym(sramByteCount) +0x0, including `lw` at 0x10013810, `lw` at 0x10013848, `lw` at 0x1001387c.
  The `sb` at 0x10013854 stores 1 byte to ([sym(sramByteCount)] + sym(vdrcSramShadow)) +0x0.
  The `sw` at 0x10013888 stores 4 bytes to sym(sramByteCount) +0x0.
  The `jal` at 0x10013838 calls venice_set_vcreg [0x1000fce8] with a0=0xb302, a1=?, a2=0x0, a3=a3 at entry (arg3), a4=sym(sramByteCount).
  The `jalr` at 0x10013864 calls printf with a0=0x100251d8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=sym(sramByteCount).
  The `jalr` at 0x10013870 calls printf with a0=0x10025210, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10013824 targets 0x10013858, is taken when at(=[sym(sramByteCount)]) >= v0(=0x20000) (signed), and falls through when at(=[sym(sramByteCount)]) < v0(=0x20000) (signed).
  The `beq` branch at 0x10013850 targets 0x10013880 and is always taken.
  The return at 0x10013894 has v0 = one of ret(venice_set_vcreg), ret(printf).

- `venice_write_video_request` in `usr/gfx/gfxinit` at 0x1001389c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001389c-0x100139a4 (264 bytes).
  It occupies 264 bytes.
  The `jal` at 0x100138fc calls venice_write_vdrc_sram_byte [0x100137f8] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1001390c calls venice_write_vdrc_sram_byte [0x100137f8] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10013954 calls venice_write_vdrc_sram_byte [0x100137f8] with a0=?, a1=?, a2=?, a3=a4 at entry (arg4).
  The `jal` at 0x10013974 calls venice_write_vdrc_sram_byte [0x100137f8] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10013980 calls venice_write_vdrc_sram_byte [0x100137f8] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10013930 targets 0x10013940, is taken when s0(=a5) == 0, and falls through when s0(=a5) != 0.
  The `beq` branch at 0x10013940 targets 0x10013954, is taken when a3(=a4) == 0, and falls through when a3(=a4) != 0.
  The `beq` branch at 0x1001395c targets 0x1001398c, is taken when s0(=a5) == 0, and falls through when s0(=a5) != 0.
  The return at 0x1001399c has v0 = ret(venice_write_vdrc_sram_byte).

- `venice_video_request` in `usr/gfx/gfxinit` at 0x100139a4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x100139a4-0x10013ba0 (508 bytes).
  It occupies 508 bytes.
  The `lw` at 0x10013a80 loads 4 bytes from sym(VEN_info) +0x2c.
  The `jal` at 0x10013a1c calls venice_write_video_request [0x1001389c] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=a3 at entry (arg3), a4=0x0, a5=0x0, a6=a5 at entry (arg5).
  The `jal` at 0x10013ac4 calls venice_write_video_request [0x1001389c] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=one of 0x1, 0x2, a3=?, a4=0x1, a5=0x1, a6=a5 at entry (arg5).
  The `jal` at 0x10013afc calls venice_video_request [0x100139a4] with a0=(a0 + one of 0x1, 0x2), a1=?, a2=a2 at entry (arg2), a3=?, a5=0x0, a6=0x0, a7=0x0.
  The `jal` at 0x10013b28 calls venice_write_video_request [0x1001389c] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=a3 at entry (arg3), a4=0x0, a5=0x1, a6=a5 at entry (arg5).
  The `jal` at 0x10013b5c calls venice_write_video_request [0x1001389c] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=a3 at entry (arg3), a4=0x0, a5=0x0, a6=a5 at entry (arg5).
  The `jal` at 0x10013b90 calls venice_write_video_request [0x1001389c] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=a3 at entry (arg3), a4=0x0, a5=0x1, a6=a5 at entry (arg5).
  The `blez` branch at 0x100139dc targets 0x100139e8, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `beq` branch at 0x100139f0 targets 0x10013a44, is taken when (s1(=a0) & 0x1) == 0, and falls through when (s1(=a0) & 0x1) != 0.
  The `beq` branch at 0x100139f8 targets 0x10013b0c, is taken when a6 == 0, and falls through when a6 != 0.
  The `bne` branch at 0x10013a44 targets 0x100139f8, is taken when a7 != a0(=0x1), and falls through when a7 == a0(=0x1).
  The `beq` branch at 0x10013a60 targets 0x10013b38, is taken when a4 >= v1(?) (signed), and falls through when a4 < v1(?) (signed).
  The `blez` branch at 0x10013a68 targets 0x10013b6c, is taken when t1(=a5) <= 0 (signed), and falls through when t1(=a5) > 0 (signed).
  The `beq` branch at 0x10013b04 targets 0x10013a28 and is always taken.
  The `beq` branch at 0x10013b30 targets 0x10013a28 and is always taken.
  The `beq` branch at 0x10013b38 targets 0x10013b78, is taken when a6 == 0, and falls through when a6 != 0.
  The `beq` branch at 0x10013b64 targets 0x10013a28 and is always taken.
  The `beq` branch at 0x10013b70 targets 0x10013a78 and is always taken.
  The `beq` branch at 0x10013b98 targets 0x10013a28 and is always taken.
  The return at 0x10013a3c has v0 = one of ret(venice_write_video_request), ret(venice_video_request).

- `venice_calcframebuffer` in `usr/gfx/gfxinit` at 0x1001447c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001447c-0x100149b0 (1332 bytes).
  It occupies 1332 bytes.
  The `lw` at 0x100144a4 loads 4 bytes from sym(ven_eeprom_valid) +0x0.
  2 such `lw` accesses load 4 bytes from sym(VEN_info) +0x50, including `lw` at 0x100144c0, `lw` at 0x10014508.
  The `lw` at 0x100144c8 loads 4 bytes from sym(VEN_info) +0x78.
  2 such `lw` accesses load 4 bytes from sym(ven_pipenum) +0x0, including `lw` at 0x100144e0, `lw` at 0x100144e4.
  4 such `sh` accesses store 2 bytes to sym(VEN_info) +0x22, including `sh` at 0x100144f0, `sh` at 0x100147a8, `sh` at 0x100148d8.
  4 such `sh` accesses store 2 bytes to sym(VEN_info) +0x20, including `sh` at 0x10014504, `sh` at 0x100147a0, `sh` at 0x100148b8.
  The `sw` at 0x1001450c stores 4 bytes to sym(VEN_info) +0x3c.
  The `sw` at 0x10014514 stores 4 bytes to sym(VEN_info) +0x38.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10014534, `lw` at 0x1001463c, `lw` at 0x10014650.
  The `sw` at 0x10014540 stores 4 bytes to ?.
  The `lhu` at 0x1001455c loads 2 bytes from ?.
  The `sh` at 0x10014568 stores 2 bytes to ?.
  The `lw` at 0x1001456c loads 4 bytes from sym(VEN_info) +0x2c.
  The `lhu` at 0x10014574 loads 2 bytes from sym(VEN_info) +0x20.
  The `lhu` at 0x1001458c loads 2 bytes from sym(VEN_info) +0x22.
  3 such `sw` accesses store 4 bytes to sym(VEN_info) +0x30, including `sw` at 0x100145d0, `sw` at 0x100145e4, `sw` at 0x100145f4.
  The `sw` at 0x1001460c stores 4 bytes to sym(VEN_info) +0x34.
  7 such `sw` accesses store 4 bytes to sym(VEN_info) +0x40, including `sw` at 0x10014680, `sw` at 0x10014890, `sw` at 0x1001489c.
  The `lw` at 0x1001473c loads 4 bytes from a1 (arg1 at entry) +0x18.
  The `sw` at 0x10014748 stores 4 bytes to sym(VEN_info) +0x44.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x1001479c, `lw` at 0x100148b4.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lw` at 0x100147a4, `lw` at 0x100148bc.
  2 such `sw` accesses store 4 bytes to sym(VEN_info) +0x5c, including `sw` at 0x100147b0, `sw` at 0x100148c4.
  2 such `sw` accesses store 4 bytes to sym(VEN_info) +0x58, including `sw` at 0x100147b4, `sw` at 0x100148c8.
  The `lw` at 0x100147b8 loads 4 bytes from sym(ven_eeprom) +0x20.
  2 such `sw` accesses store 4 bytes to sym(VEN_info) +0x64, including `sw` at 0x100147bc, `sw` at 0x100148cc.
  The `lw` at 0x100147c0 loads 4 bytes from sym(ven_eeprom) +0x1c.
  2 such `sw` accesses store 4 bytes to sym(VEN_info) +0x60, including `sw` at 0x100147c8, `sw` at 0x100148d0.
  4 such `lw` accesses load 4 bytes from sym(ven_gfxfd) +0x0, including `lw` at 0x100147e0, `lw` at 0x10014838, `lw` at 0x10014848.
  The `lw` at 0x100147ec loads 4 bytes from sym(VEN_info) +0x40.
  2 such `sw` accesses store 4 bytes to sym(ie_config_lo) +0x0, including `sw` at 0x100147f0, `sw` at 0x10014808.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x10, including `lw` at 0x100147f4, `lw` at 0x1001480c.
  The `lw` at 0x10014818 loads 4 bytes from sym(VEN_info) +0x30.
  2 such `sw` accesses store 4 bytes to sym(ie_config_hi) +0x0, including `sw` at 0x10014824, `sw` at 0x10014958.
  The `lw` at 0x1001486c loads 4 bytes from sym(ie_config_hi) +0x0.
  The `lw` at 0x1001493c loads 4 bytes from sym(ven_eeprom) +0x10.
  The `lw` at 0x10014940 loads 4 bytes from sym(ven_eeprom) +0x14.
  The `jal` at 0x100144dc calls vs2ManagedArea [0x10018248] with a0=[sym(ven_pipenum)], a1=sp-96, a2=sp-92, a3=a3 at entry (arg3).
  The `jal` at 0x10014500 calls vs2GetHeadInfo [0x10017fa8] with a0=[sym(ven_pipenum)], a1=sym(VEN_info), a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0x10014674 calls printf with a0=0x10025350, a1=?, a2=0x2, a3=(((([sym(VEN_info)+44] << 0x2) + [sym(VEN_info)+44]) << 0x4) + [sym(VEN_info)+32]:2)-1.
  The `jalr` at 0x10014694 calls getenv with a0=0x10027950, a1=?, a2=?, a3=?.
  The `jalr` at 0x100146b0 calls strcmp with a0=ret(getenv), a1=0x10025398, a2=?, a3=?.
  The `jalr` at 0x100146c4 calls strcmp with a0=ret(getenv), a1=0x10027958, a2=?, a3=?.
  The `jalr` at 0x100146d8 calls strcmp with a0=ret(getenv), a1=0x100253d8, a2=?, a3=?.
  The `jalr` at 0x100146ec calls strcmp with a0=ret(getenv), a1=0x1002795f, a2=?, a3=?.
  The `jalr` at 0x10014700 calls strcmp with a0=ret(getenv), a1=0x10025418, a2=?, a3=?.
  The `jalr` at 0x10014714 calls strcmp with a0=ret(getenv), a1=0x10027965, a2=?, a3=?.
  The `jalr` at 0x10014728 calls printf with a0=0x10025458, a1=?, a2=?, a3=?.
  The `jalr` at 0x10014744 calls strncmp with a0=sym(VEN_info), a1=0x1002796a, a2=0x2, a3=?.
  The `jalr` at 0x1001475c calls printf with a0=0x10025488, a1=sym(VEN_info), a2=?, a3=?.
  The `jalr` at 0x100147dc calls ioctl with a0=[sym(ven_gfxfd)], a1=0x271e, a2=sym(VEN_info), a3=?.
  The `jalr` at 0x10014834 calls ioctl with a0=[sym(ven_gfxfd)], a1=0x2724, a2=?, a3=?.
  The `jalr` at 0x10014874 calls ioctl with a0=[sym(ven_gfxfd)], a1=0x2726, a2=sp-88, a3=?, a5=[sym(ie_config_hi)], a6=0x29, a7=0x3f.
  The `jalr` at 0x100148a0 calls printf with a0=0x100253a8, a1=?, a2=?, a3=?.
  The `jalr` at 0x10014908 calls printf with a0=0x100253e8, a1=?, a2=?, a3=?.
  The `jalr` at 0x10014928 calls printf with a0=0x10025428, a1=?, a2=?, a3=?.
  The `jalr` at 0x10014960 calls printf with a0=0x10025318, a1=?, a2=?, a3=(((([sym(VEN_info)+44] << 0x2) + [sym(VEN_info)+44]) << 0x4) + [sym(VEN_info)+32]:2)-1.
  The `jalr` at 0x10014970 calls perror with a0=0x100254d0, a1=?, a2=?, a3=?.
  The `jalr` at 0x10014980 calls perror with a0=0x10025508, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001498c calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x100149a0 calls perror with a0=0x100254a8, a1=sym(ie_config_lo), a2=?, a3=?.
  The `beq` branch at 0x100144b4 targets 0x100148b0, is taken when at(=[sym(ven_eeprom_valid)]) == 0, and falls through when at(=[sym(ven_eeprom_valid)]) != 0.
  The `beq` branch at 0x100144c4 targets 0x10014790, is taken when v1(=[sym(VEN_info)+80]) == 0, and falls through when v1(=[sym(VEN_info)+80]) != 0.
  The `bne` branch at 0x10014510 targets 0x10014544, is taken when a5(=[sym(VEN_info)+80]) != 0, and falls through when a5(=[sym(VEN_info)+80]) == 0.
  The `bgtz` branch at 0x1001453c targets 0x10014528, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `bne` branch at 0x10014564 targets 0x10014550, is taken when v0(?) < 0x8 (signed), and falls through when v0(?) >= 0x8 (signed).
  The `beq` branch at 0x100145bc targets 0x100145d4, is taken when a0(?) >= 0x201 (signed), and falls through when a0(?) < 0x201 (signed).
  The `beq` branch at 0x100145cc targets 0x100145fc and is always taken.
  The `beq` branch at 0x100145d8 targets 0x100145e8, is taken when a0(?) >= 0x401 (signed), and falls through when a0(?) < 0x401 (signed).
  The `beq` branch at 0x100145e0 targets 0x100145f8 and is always taken.
  The `beq` branch at 0x100145ec targets 0x1001495c, is taken when a0(?) >= 0x801 (signed), and falls through when a0(?) < 0x801 (signed).
  The `beq` branch at 0x10014608 targets 0x10014624, is taken when v0(=[sym(VEN_info)+44]) == s4(=0x1), and falls through when v0(=[sym(VEN_info)+44]) != s4(=0x1).
  The `beq` branch at 0x10014610 targets 0x100148e4, is taken when v0(=[sym(VEN_info)+44]) == a2(=0x2), and falls through when v0(=[sym(VEN_info)+44]) != a2(=0x2).
  The `beq` branch at 0x10014618 targets 0x100148f4, is taken when v0(=[sym(VEN_info)+44]) == ra(=0x4), and falls through when v0(=[sym(VEN_info)+44]) != ra(=0x4).
  The `bne` branch at 0x10014640 targets 0x10014654, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bgezl` branch at 0x1001464c targets 0x10014640, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed); its branch-likely delay slot `lw a6,52(a5)` at 0x10014650 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x10014654 targets 0x100148dc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1001465c targets 0x100148ec, is taken when v0(?) == s4(=0x1), and falls through when v0(?) != s4(=0x1).
  The `beq` branch at 0x10014664 targets 0x1001488c, is taken when v0(?) == a2(=0x2), and falls through when v0(?) != a2(=0x2).
  The `beq` branch at 0x1001469c targets 0x10014730, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `beq` branch at 0x100146b8 targets 0x10014894, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x100146cc targets 0x10014894, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x100146e0 targets 0x100148fc, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x100146f4 targets 0x100148fc, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x10014708 targets 0x10014918, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x1001471c targets 0x10014918, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x1001474c targets 0x100147cc, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `bgez` branch at 0x10014794 targets 0x10014938, is taken when t9(=([sym(VEN_info)+120] << 0x2e)) >= 0 (signed), and falls through when t9(=([sym(VEN_info)+120] << 0x2e)) < 0 (signed).
  The `beq` branch at 0x100147c4 targets 0x10014508 and is always taken.
  The `bltz` branch at 0x100147e4 targets 0x1001499c, is taken when v0(=ret(ioctl)) < 0 (signed), and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `beq` branch at 0x100147fc targets 0x10014814, is taken when (a0(=[a1+16]) & 0xc) == 0, and falls through when (a0(=[a1+16]) & 0xc) != 0.
  The `beq` branch at 0x10014814 targets 0x10014950, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x10014840 targets 0x10014970, is taken when v0(=ret(ioctl)) == s2(=-0x1), and falls through when v0(=ret(ioctl)) != s2(=-0x1).
  The `beq` branch at 0x1001487c targets 0x10014980, is taken when v0(=ret(ioctl)) == s2(=-0x1), and falls through when v0(=ret(ioctl)) != s2(=-0x1).
  The `beq` branch at 0x10014884 targets 0x10014768 and is always taken.
  The `beq` branch at 0x1001488c targets 0x10014684 and is always taken.
  The `beq` branch at 0x100148a8 targets 0x10014734 and is always taken.
  The `beq` branch at 0x100148d4 targets 0x10014508 and is always taken.
  The `beq` branch at 0x100148dc targets 0x10014684 and is always taken.
  The `beq` branch at 0x100148e4 targets 0x10014624 and is always taken.
  The `beq` branch at 0x100148ec targets 0x10014684 and is always taken.
  The `beq` branch at 0x100148f4 targets 0x10014628 and is always taken.
  The `beq` branch at 0x10014910 targets 0x10014734 and is always taken.
  The `beq` branch at 0x10014930 targets 0x10014734 and is always taken.
  The `beq` branch at 0x10014948 targets 0x100147ac and is always taken.
  The `beq` branch at 0x10014954 targets 0x10014828 and is always taken.
  The `beq` branch at 0x10014968 targets 0x10014768 and is always taken.
  The `beq` branch at 0x10014978 targets 0x1001484c and is always taken.
  The `beq` branch at 0x10014994 targets 0x10014884 and is always taken.
  The `beq` branch at 0x100149a8 targets 0x10014768 and is always taken.
  The return at 0x10014788 has v0 = one of 0x0, 0x1.

- `venice_grok_fname` in `usr/gfx/gfxinit` at 0x10014b60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10014b60-0x10014c70 (272 bytes).
  It occupies 272 bytes.
  The `lbu` at 0x10014b70 loads 1 byte from a0 (arg0 at entry) +0x0.
  2 such `sb` accesses store 1 byte to sym(fname) +0x0, including `sb` at 0x10014c08, `sb` at 0x10014c48.
  The `jalr` at 0x10014ba8 calls getenv with a0=0x10025680, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[a0]:1.
  The `jalr` at 0x10014bc4 calls strcpy with a0=sym(fname), a1=ret(getenv), a2=?, a3=?.
  The `jalr` at 0x10014be0 calls strcat with a0=sym(fname), a1=0x10025690, a2=?, a3=?.
  The `jalr` at 0x10014bf0 calls strcat with a0=sym(fname), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x10014c18 calls strcpy with a0=sym(fname), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[a0]:1.
  The `jalr` at 0x10014c2c calls access with a0=sym(fname), a1=0x4, a2=?, a3=?.
  The `beq` branch at 0x10014b90 targets 0x10014c0c, is taken when a4(=[a0]:1) == at(=0x2f), and falls through when a4(=[a0]:1) != at(=0x2f).
  The `beq` branch at 0x10014b98 targets 0x10014c0c, is taken when a4(=[a0]:1) == v0(=0x2e), and falls through when a4(=[a0]:1) != v0(=0x2e).
  The `beq` branch at 0x10014bb0 targets 0x10014c00, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `beq` branch at 0x10014bf8 targets 0x10014c24 and is always taken.
  The `beq` branch at 0x10014c04 targets 0x10014bd0 and is always taken.
  The `bne` branch at 0x10014c38 targets 0x10014c4c, is taken when v0(=ret(access)) != a2(=-0x1), and falls through when v0(=ret(access)) == a2(=-0x1).
  The `bne` branch at 0x10014c40 targets 0x10014c68, is taken when s0(=one of 0x0, 0x1) != 0, and falls through when s0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x10014c68 targets 0x10014c04 and is always taken.
  The return at 0x10014c60 has v0 = ret(access).

- `venice_clock_serial_dataBit` in `usr/gfx/gfxinit` at 0x10014c70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10014c70-0x10014ce0 (112 bytes).
  It occupies 112 bytes.
  The `jal` at 0x10014c98 calls venice_set_vcreg [0x1000fce8] with a0=0xa43b, a1=0x8, a2=0x0, a3=a3 at entry (arg3).
  The `jal` at 0x10014cac calls venice_set_vcreg [0x1000fce8] with a0=0xb0c0, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x10014cd0 calls venice_set_vcreg [0x1000fce8] with a0=0xa43b, a1=0x0, a2=0x0, a3=a3 at entry (arg3).
  The `beq` branch at 0x10014c84 targets 0x10014cc4, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10014cd8 targets 0x10014ca4 and is always taken.
  The return at 0x10014cbc has v0 = ret(venice_set_vcreg).

- `venice_wait_configMem_clear` in `usr/gfx/gfxinit` at 0x10014ce0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10014ce0-0x10014d18 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0x10014cfc calls sginap with a0=0x2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10014d10 has v0 = 0x1.

- `venice_write_vfc_reset` in `usr/gfx/gfxinit` at 0x10014d18 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10014d18-0x10014d64 (76 bytes).
  It occupies 76 bytes.
  The `jal` at 0x10014d40 calls venice_set_vcreg [0x1000fce8] with a0=0xa43e, a1=?, a2=0x0, a3=a3 at entry (arg3).
  The `jalr` at 0x10014d4c calls sginap with a0=0x2, a1=?, a2=?, a3=?.
  The return at 0x10014d5c has v0 = ret(sginap).

- `venice_write_vfc_doneProg` in `usr/gfx/gfxinit` at 0x10014d64 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10014d64-0x10014db0 (76 bytes).
  It occupies 76 bytes.
  The `jal` at 0x10014d8c calls venice_set_vcreg [0x1000fce8] with a0=0xa23c, a1=?, a2=0x0, a3=a3 at entry (arg3).
  The `jalr` at 0x10014d98 calls sginap with a0=0x2, a1=?, a2=?, a3=?.
  The return at 0x10014da8 has v0 = ret(sginap).

- `venice_read_vfc_doneProg` in `usr/gfx/gfxinit` at 0x10014db0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10014db0-0x10014e08 (88 bytes).
  It occupies 88 bytes.
  The `jal` at 0x10014dcc calls venice_get_vcreg [0x1000fcb4] with a0=0xa630, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10014de0 targets 0x10014df4, is taken when v0(?) == v1(=0x1), and falls through when v0(?) != v1(=0x1).
  The return at 0x10014dec has v0 = 0x0.
  The return at 0x10014e00 has v0 = 0x1.

- `venice_load_vfc_xilinx` in `usr/gfx/gfxinit` at 0x10014e08 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10014e08-0x10014f64 (348 bytes).
  It occupies 348 bytes.
  The `jal` at 0x10014e30 calls read_xilinx_file [0x1001e298] with a0=0x3, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10014e4c calls venice_set_vcreg [0x1000fce8] with a0=0xa13c, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x10014e60 calls venice_set_vcreg [0x1000fce8] with a0=0xa63c, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10014e88 calls load_3000_serial [0x1001d4a8] with a0=sym(venice_write_vfc_reset), a1=sym(venice_write_vfc_doneProg), a2=sym(venice_wait_configMem_clear), a3=sym(venice_clock_serial_dataBit), a4=sym(venice_read_vfc_doneProg), a5=0x3, a6=ret(read_xilinx_file).
  The `jalr` at 0x10014e98 calls free with a0=ret(read_xilinx_file), a1=?, a2=?, a3=?.
  The `jalr` at 0x10014ed4 calls printf with a0=0x100257b0, a1=ret(load_3000_serial), a2=?, a3=?.
  The `jalr` at 0x10014f08 calls printf with a0=0x100256b0, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x10014f2c calls printf with a0=0x10025778, a1=-0x3, a2=?, a3=?.
  The `jalr` at 0x10014f40 calls printf with a0=0x10025730, a1=-0x3, a2=?, a3=?.
  The `jalr` at 0x10014f54 calls printf with a0=0x100256f0, a1=-0x3, a2=?, a3=?.
  The `beq` branch at 0x10014e38 targets 0x10014ef8, is taken when v0(=ret(read_xilinx_file)) == 0, and falls through when v0(=ret(read_xilinx_file)) != 0.
  The `beq` branch at 0x10014eac targets 0x10014edc, is taken when s0(=ret(load_3000_serial)) == v1(=0x1), and falls through when s0(=ret(load_3000_serial)) != v1(=0x1).
  The `beq` branch at 0x10014eb4 targets 0x10014f50, is taken when s0(=ret(load_3000_serial)) == v0(=-0x1), and falls through when s0(=ret(load_3000_serial)) != v0(=-0x1).
  The `beq` branch at 0x10014ebc targets 0x10014f3c, is taken when s0(=ret(load_3000_serial)) == a0(=-0x2), and falls through when s0(=ret(load_3000_serial)) != a0(=-0x2).
  The `beq` branch at 0x10014ec4 targets 0x10014f24, is taken when s0(=ret(load_3000_serial)) == a1(=-0x3), and falls through when s0(=ret(load_3000_serial)) != a1(=-0x3).
  The `beq` branch at 0x10014f34 targets 0x10014ee0 and is always taken.
  The `beq` branch at 0x10014f48 targets 0x10014ee0 and is always taken.
  The `beq` branch at 0x10014f5c targets 0x10014ee0 and is always taken.
  The return at 0x10014ef0 has v0 = ret(load_3000_serial).
  The return at 0x10014f1c has v0 = -0x5.

- `venice_write_vdrc_reset` in `usr/gfx/gfxinit` at 0x10014f64 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10014f64-0x10014fb0 (76 bytes).
  It occupies 76 bytes.
  The `jal` at 0x10014f8c calls venice_set_vcreg [0x1000fce8] with a0=0xa43d, a1=?, a2=0x0, a3=a3 at entry (arg3).
  The `jalr` at 0x10014f98 calls sginap with a0=0x2, a1=?, a2=?, a3=?.
  The return at 0x10014fa8 has v0 = ret(sginap).

- `venice_write_vdrc_doneProg` in `usr/gfx/gfxinit` at 0x10014fb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10014fb0-0x10014ffc (76 bytes).
  It occupies 76 bytes.
  The `jal` at 0x10014fd8 calls venice_set_vcreg [0x1000fce8] with a0=0xa33d, a1=?, a2=0x0, a3=a3 at entry (arg3).
  The `jalr` at 0x10014fe4 calls sginap with a0=0x2, a1=?, a2=?, a3=?.
  The return at 0x10014ff4 has v0 = ret(sginap).

- `venice_read_vdrc_doneProg` in `usr/gfx/gfxinit` at 0x10014ffc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10014ffc-0x10015054 (88 bytes).
  It occupies 88 bytes.
  The `jal` at 0x10015018 calls venice_get_vcreg [0x1000fcb4] with a0=0xa430, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1001502c targets 0x10015040, is taken when v0(?) == v1(=0x8), and falls through when v0(?) != v1(=0x8).
  The return at 0x10015038 has v0 = 0x0.
  The return at 0x1001504c has v0 = 0x1.

- `venice_load_vdrc_xilinx` in `usr/gfx/gfxinit` at 0x10015054 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10015054-0x100151b0 (348 bytes).
  It occupies 348 bytes.
  The `jal` at 0x1001507c calls read_xilinx_file [0x1001e298] with a0=0x3, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10015098 calls venice_set_vcreg [0x1000fce8] with a0=0xa33c, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x100150ac calls venice_set_vcreg [0x1000fce8] with a0=0xa63c, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x100150d4 calls load_3000_serial [0x1001d4a8] with a0=sym(venice_write_vdrc_reset), a1=sym(venice_write_vdrc_doneProg), a2=sym(venice_wait_configMem_clear), a3=sym(venice_clock_serial_dataBit), a4=sym(venice_read_vdrc_doneProg), a5=0x3, a6=ret(read_xilinx_file).
  The `jalr` at 0x100150e4 calls free with a0=ret(read_xilinx_file), a1=?, a2=?, a3=?.
  The `jalr` at 0x10015124 calls printf with a0=0x100258f8, a1=ret(load_3000_serial), a2=?, a3=?.
  The `jalr` at 0x10015158 calls printf with a0=0x100257f0, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x10015178 calls printf with a0=0x100258c0, a1=-0x3, a2=?, a3=?.
  The `jalr` at 0x1001518c calls printf with a0=0x10025878, a1=-0x3, a2=?, a3=?.
  The `jalr` at 0x100151a0 calls printf with a0=0x10025838, a1=-0x3, a2=?, a3=?.
  The `beq` branch at 0x10015084 targets 0x10015148, is taken when v0(=ret(read_xilinx_file)) == 0, and falls through when v0(=ret(read_xilinx_file)) != 0.
  The `beq` branch at 0x100150f8 targets 0x1001512c, is taken when s0(=ret(load_3000_serial)) == v1(=0x1), and falls through when s0(=ret(load_3000_serial)) != v1(=0x1).
  The `beq` branch at 0x10015100 targets 0x1001519c, is taken when s0(=ret(load_3000_serial)) == v0(=-0x1), and falls through when s0(=ret(load_3000_serial)) != v0(=-0x1).
  The `beq` branch at 0x10015108 targets 0x10015188, is taken when s0(=ret(load_3000_serial)) == a0(=-0x2), and falls through when s0(=ret(load_3000_serial)) != a0(=-0x2).
  The `beq` branch at 0x10015110 targets 0x10015174, is taken when s0(=ret(load_3000_serial)) == a1(=-0x3), and falls through when s0(=ret(load_3000_serial)) != a1(=-0x3).
  The `beq` branch at 0x10015180 targets 0x10015130 and is always taken.
  The `beq` branch at 0x10015194 targets 0x10015130 and is always taken.
  The `beq` branch at 0x100151a8 targets 0x10015130 and is always taken.
  The return at 0x10015140 has v0 = ret(load_3000_serial).
  The return at 0x1001516c has v0 = -0x5.

- `venice_write_vof_program` in `usr/gfx/gfxinit` at 0x100151b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x100151b0-0x100151f0 (64 bytes).
  It occupies 64 bytes.
  The `jal` at 0x100151d8 calls venice_set_vcreg [0x1000fce8] with a0=0xa23d, a1=?, a2=0x0, a3=a3 at entry (arg3).
  The return at 0x100151e8 has v0 = ret(venice_set_vcreg).

- `venice_read_vof_done` in `usr/gfx/gfxinit` at 0x100151f8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x100151f8-0x10015250 (88 bytes).
  It occupies 88 bytes.
  The `jal` at 0x10015214 calls venice_get_vcreg [0x1000fcb4] with a0=0xa630, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10015228 targets 0x1001523c, is taken when v0(?) == v1(=0x4), and falls through when v0(?) != v1(=0x4).
  The return at 0x10015234 has v0 = 0x0.
  The return at 0x10015248 has v0 = 0x1.

- `venice_load_vof_xilinx` in `usr/gfx/gfxinit` at 0x10015250 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10015250-0x100153ac (348 bytes).
  It occupies 348 bytes.
  The `jal` at 0x10015278 calls read_xilinx_file [0x1001e298] with a0=0x8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10015294 calls venice_set_vcreg [0x1000fce8] with a0=0xa13b, a1=0xf, a2=0x0, a3=?.
  The `jal` at 0x100152a8 calls venice_set_vcreg [0x1000fce8] with a0=0xa63c, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x100152d0 calls load_4000_serial [0x1001d764] with a0=sym(venice_write_vof_program), a1=sym(venice_wait_configMem_clear), a2=sym(venice_clock_serial_dataBit), a3=sym(venice_check_vof_frame_status), a4=sym(venice_read_vof_done), a5=0x8, a6=ret(read_xilinx_file).
  The `jalr` at 0x100152e0 calls free with a0=ret(read_xilinx_file), a1=?, a2=?, a3=?.
  The `jalr` at 0x10015320 calls printf with a0=0x10025a38, a1=ret(load_4000_serial), a2=?, a3=?.
  The `jalr` at 0x10015354 calls printf with a0=0x10025938, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x10015374 calls printf with a0=0x10025a00, a1=-0x3, a2=?, a3=?.
  The `jalr` at 0x10015388 calls printf with a0=0x100259b8, a1=-0x3, a2=?, a3=?.
  The `jalr` at 0x1001539c calls printf with a0=0x10025978, a1=-0x3, a2=?, a3=?.
  The `beq` branch at 0x10015280 targets 0x10015344, is taken when v0(=ret(read_xilinx_file)) == 0, and falls through when v0(=ret(read_xilinx_file)) != 0.
  The `beq` branch at 0x100152f4 targets 0x10015328, is taken when s0(=ret(load_4000_serial)) == v1(=0x1), and falls through when s0(=ret(load_4000_serial)) != v1(=0x1).
  The `beq` branch at 0x100152fc targets 0x10015398, is taken when s0(=ret(load_4000_serial)) == v0(=-0x1), and falls through when s0(=ret(load_4000_serial)) != v0(=-0x1).
  The `beq` branch at 0x10015304 targets 0x10015384, is taken when s0(=ret(load_4000_serial)) == a0(=-0x2), and falls through when s0(=ret(load_4000_serial)) != a0(=-0x2).
  The `beq` branch at 0x1001530c targets 0x10015370, is taken when s0(=ret(load_4000_serial)) == a1(=-0x3), and falls through when s0(=ret(load_4000_serial)) != a1(=-0x3).
  The `beq` branch at 0x1001537c targets 0x1001532c and is always taken.
  The `beq` branch at 0x10015390 targets 0x1001532c and is always taken.
  The `beq` branch at 0x100153a4 targets 0x1001532c and is always taken.
  The return at 0x1001533c has v0 = ret(load_4000_serial).
  The return at 0x10015368 has v0 = -0x5.

- `venice_write_vif_program` in `usr/gfx/gfxinit` at 0x100153ac (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x100153ac-0x100153ec (64 bytes).
  It occupies 64 bytes.
  The `jal` at 0x100153d4 calls venice_set_vcreg [0x1000fce8] with a0=0xa23e, a1=?, a2=0x0, a3=a3 at entry (arg3).
  The return at 0x100153e4 has v0 = ret(venice_set_vcreg).

- `venice_check_vif_frame_status` in `usr/gfx/gfxinit` at 0x100153ec (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x100153ec-0x100153f4 (8 bytes).
  It occupies 8 bytes.
  The return at 0x100153ec has v0 = 0x1.

- `venice_read_vif_done` in `usr/gfx/gfxinit` at 0x100153f4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x100153f4-0x1001544c (88 bytes).
  It occupies 88 bytes.
  The `jal` at 0x10015410 calls venice_get_vcreg [0x1000fcb4] with a0=0xa630, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10015424 targets 0x10015438, is taken when v0(?) == v1(=0x2), and falls through when v0(?) != v1(=0x2).
  The return at 0x10015430 has v0 = 0x0.
  The return at 0x10015444 has v0 = 0x1.

- `venice_load_vif_xilinx` in `usr/gfx/gfxinit` at 0x1001544c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001544c-0x100155a8 (348 bytes).
  It occupies 348 bytes.
  The `jal` at 0x10015474 calls read_xilinx_file [0x1001e298] with a0=0x6, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10015490 calls venice_set_vcreg [0x1000fce8] with a0=0xa13b, a1=0xf, a2=0x0, a3=?.
  The `jal` at 0x100154a4 calls venice_set_vcreg [0x1000fce8] with a0=0xa63c, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x100154cc calls load_4000_serial [0x1001d764] with a0=sym(venice_write_vif_program), a1=sym(venice_wait_configMem_clear), a2=sym(venice_clock_serial_dataBit), a3=sym(venice_check_vif_frame_status), a4=sym(venice_read_vif_done), a5=0x6, a6=ret(read_xilinx_file).
  The `jalr` at 0x100154dc calls free with a0=ret(read_xilinx_file), a1=?, a2=?, a3=?.
  The `jalr` at 0x10015518 calls printf with a0=0x10025b78, a1=ret(load_4000_serial), a2=?, a3=?.
  The `jalr` at 0x1001554c calls printf with a0=0x10025a78, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x10015570 calls printf with a0=0x10025b40, a1=-0x3, a2=?, a3=?.
  The `jalr` at 0x10015584 calls printf with a0=0x10025af8, a1=-0x3, a2=?, a3=?.
  The `jalr` at 0x10015598 calls printf with a0=0x10025ab8, a1=-0x3, a2=?, a3=?.
  The `beq` branch at 0x1001547c targets 0x1001553c, is taken when v0(=ret(read_xilinx_file)) == 0, and falls through when v0(=ret(read_xilinx_file)) != 0.
  The `beq` branch at 0x100154f0 targets 0x10015520, is taken when s0(=ret(load_4000_serial)) == v1(=0x1), and falls through when s0(=ret(load_4000_serial)) != v1(=0x1).
  The `beq` branch at 0x100154f8 targets 0x10015594, is taken when s0(=ret(load_4000_serial)) == v0(=-0x1), and falls through when s0(=ret(load_4000_serial)) != v0(=-0x1).
  The `beq` branch at 0x10015500 targets 0x10015580, is taken when s0(=ret(load_4000_serial)) == a0(=-0x2), and falls through when s0(=ret(load_4000_serial)) != a0(=-0x2).
  The `beq` branch at 0x10015508 targets 0x10015568, is taken when s0(=ret(load_4000_serial)) == a1(=-0x3), and falls through when s0(=ret(load_4000_serial)) != a1(=-0x3).
  The `beq` branch at 0x10015578 targets 0x10015524 and is always taken.
  The `beq` branch at 0x1001558c targets 0x10015524 and is always taken.
  The `beq` branch at 0x100155a0 targets 0x10015524 and is always taken.
  The return at 0x10015534 has v0 = ret(load_4000_serial).
  The return at 0x10015560 has v0 = -0x5.

- `venice_write_di_ctrl_program` in `usr/gfx/gfxinit` at 0x100155a8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x100155a8-0x100155e8 (64 bytes).
  It occupies 64 bytes.
  The `jal` at 0x100155d0 calls venice_set_vcreg [0x1000fce8] with a0=0xa33e, a1=?, a2=0x0, a3=a3 at entry (arg3).
  The return at 0x100155e0 has v0 = ret(venice_set_vcreg).

- `venice_check_di_ctrl_frame_status` in `usr/gfx/gfxinit` at 0x100155e8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x100155e8-0x100155f0 (8 bytes).
  It occupies 8 bytes.
  The return at 0x100155e8 has v0 = 0x1.

- `venice_read_di_ctrl_done` in `usr/gfx/gfxinit` at 0x100155f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x100155f0-0x10015648 (88 bytes).
  It occupies 88 bytes.
  The `jal` at 0x1001560c calls venice_get_vcreg [0x1000fcb4] with a0=0xa630, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10015620 targets 0x10015634, is taken when v0(?) == v1(=0x8), and falls through when v0(?) != v1(=0x8).
  The return at 0x1001562c has v0 = 0x0.
  The return at 0x10015640 has v0 = 0x1.

- `venice_load_di_ctrl_xilinx` in `usr/gfx/gfxinit` at 0x10015648 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10015648-0x100157d0 (392 bytes).
  It occupies 392 bytes.
  The `jal` at 0x10015670 calls read_xilinx_file [0x1001e298] with a0=0x6, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10015694 calls venice_set_vcreg [0x1000fce8] with a0=0xa13b, a1=0xf, a2=0x0, a3=?.
  The `jal` at 0x100156a8 calls venice_set_vcreg [0x1000fce8] with a0=0xa63c, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x100156cc calls load_4000_serial [0x1001d764] with a0=sym(venice_write_di_ctrl_program), a1=sym(venice_wait_configMem_clear), a2=sym(venice_clock_serial_dataBit), a3=sym(venice_check_di_ctrl_frame_status), a4=sym(venice_read_di_ctrl_done), a5=0x6, a6=ret(read_xilinx_file).
  The `jalr` at 0x100156dc calls free with a0=ret(read_xilinx_file), a1=?, a2=?, a3=?.
  The `jalr` at 0x10015718 calls printf with a0=0x10025cd0, a1=ret(load_4000_serial), a2=?, a3=?.
  The `jalr` at 0x1001574c calls printf with a0=0x10025bb8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x10015768 calls printf with a0=0x10025c90, a1=-0x3, a2=?, a3=?.
  The `jalr` at 0x1001577c calls printf with a0=0x10025c00, a1=-0x3, a2=?, a3=?.
  The `jalr` at 0x10015790 calls printf with a0=0x10025c48, a1=-0x3, a2=?, a3=?.
  The `jal` at 0x100157ac calls venice_set_vcreg [0x1000fce8] with a0=0xa83d, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x100157c0 calls venice_set_vcreg [0x1000fce8] with a0=0xa83d, a1=0x1, a2=0x0, a3=?.
  The `beq` branch at 0x1001567c targets 0x1001573c, is taken when v0(=ret(read_xilinx_file)) == 0, and falls through when v0(=ret(read_xilinx_file)) != 0.
  The `beq` branch at 0x100156f0 targets 0x100157a0, is taken when s0(=ret(load_4000_serial)) == v1(=0x1), and falls through when s0(=ret(load_4000_serial)) != v1(=0x1).
  The `beq` branch at 0x100156f8 targets 0x10015778, is taken when s0(=ret(load_4000_serial)) == v0(=-0x1), and falls through when s0(=ret(load_4000_serial)) != v0(=-0x1).
  The `beq` branch at 0x10015700 targets 0x1001578c, is taken when s0(=ret(load_4000_serial)) == a0(=-0x2), and falls through when s0(=ret(load_4000_serial)) != a0(=-0x2).
  The `beq` branch at 0x10015708 targets 0x10015760, is taken when s0(=ret(load_4000_serial)) == a1(=-0x3), and falls through when s0(=ret(load_4000_serial)) != a1(=-0x3).
  The `beq` branch at 0x10015758 targets 0x1001572c and is always taken.
  The `beq` branch at 0x10015770 targets 0x10015724 and is always taken.
  The `beq` branch at 0x10015784 targets 0x10015724 and is always taken.
  The `beq` branch at 0x10015798 targets 0x10015724 and is always taken.
  The `beq` branch at 0x100157c8 targets 0x10015724 and is always taken.
  The return at 0x10015734 has v0 = one of ret(load_4000_serial), -0x5.

- `venice_load_dummmy3000_xilinx` in `usr/gfx/gfxinit` at 0x100157d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x100157d0-0x1001582c (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x100157ec calls venice_load_vfc_xilinx [0x10014e08] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10015814 calls venice_load_vdrc_xilinx [0x10015054] with a0=a0 at entry (arg0), a1=?, a2=?, a3=ret(venice_load_vfc_xilinx).
  The `beq` branch at 0x100157fc targets 0x10015810, is taken when v0(=ret(venice_load_vfc_xilinx)) == v1(=0x1), and falls through when v0(=ret(venice_load_vfc_xilinx)) != v1(=0x1).
  The return at 0x10015808 has v0 = ret(venice_load_vfc_xilinx).
  The return at 0x10015824 has v0 = ret(venice_load_vdrc_xilinx).

- `venice_load_xilinx` in `usr/gfx/gfxinit` at 0x1001582c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001582c-0x1001595c (304 bytes).
  It occupies 304 bytes.
  2 such `lw` accesses load 4 bytes from (sym(xilii_files) + (a0 << 0x2)) +0x0, including `lw` at 0x10015860, `lw` at 0x10015934.
  The `lbu` at 0x10015868 loads 1 byte from sym(fname) +0x0.
  The `lw` at 0x10015890 loads 4 bytes from table(0x10022c48) +0x0.
  The `jal` at 0x1001585c calls venice_grok_fname [0x10014b60] with a0=[(sym(xilii_files) + (a0 << 0x2))], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100158b4 calls venice_load_vof_xilinx [0x10015250] with a0=sym(fname), a1=entry(0x10022c48), a2=?, a3=0x1.
  The `jal` at 0x100158c8 calls venice_load_dummmy3000_xilinx [0x100157d0] with a0=sym(fname), a1=entry(0x10022c48), a2=?, a3=0x1.
  The `jal` at 0x100158d8 calls venice_load_vfc_xilinx [0x10014e08] with a0=sym(fname), a1=entry(0x10022c48), a2=?, a3=0x1.
  The `jal` at 0x100158ec calls venice_load_vdrc_xilinx [0x10015054] with a0=sym(fname), a1=entry(0x10022c48), a2=?, a3=0x1.
  The `jal` at 0x10015900 calls venice_load_di_ctrl_xilinx [0x10015648] with a0=sym(fname), a1=entry(0x10022c48), a2=?, a3=0x1.
  The `jal` at 0x10015914 calls venice_load_vif_xilinx [0x1001544c] with a0=sym(fname), a1=entry(0x10022c48), a2=?, a3=0x1.
  The `jalr` at 0x10015938 calls printf with a0=0x10025d18, a1=[(sym(xilii_files) + (a0 << 0x2))], a2=?, a3=?.
  The `jalr` at 0x1001594c calls perror with a0=0x10025d48, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1001586c targets 0x10015924, is taken when a0(=[sym(fname)]:1) == 0, and falls through when a0(=[sym(fname)]:1) != 0.
  The `beq` branch at 0x10015888 targets 0x1001589c, is taken when a1(=a0) >= 0x9 (unsigned), and falls through when a1(=a0) < 0x9 (unsigned).
  The `beq` branch at 0x100158bc targets 0x1001589c and is always taken.
  The `beq` branch at 0x100158d0 targets 0x1001589c and is always taken.
  The `beq` branch at 0x100158e0 targets 0x1001589c and is always taken.
  The `beq` branch at 0x100158f4 targets 0x1001589c and is always taken.
  The `beq` branch at 0x10015908 targets 0x1001589c and is always taken.
  The `beq` branch at 0x1001591c targets 0x1001589c and is always taken.
  The `beq` branch at 0x10015954 targets 0x10015870 and is always taken.
  The return at 0x100158a8 has v0 = one of 0x1, ret(venice_load_vof_xilinx), ret(venice_load_dummmy3000_xilinx), ret(venice_load_vfc_xilinx), ret(venice_load_vdrc_xilinx), ret(venice_load_di_ctrl_xilinx), ret(venice_load_vif_xilinx).
  The indirect jump at 0x10015894 uses the jump table at 0x10022c48 with targets 0x100158b0, 0x10015910, 0x100158fc, 0x1001589c, 0x100158e8, 0x100158d8, 0x100158c4, 0x100158fc, 0x100158e8.
  The indirect jump at 0x10015894 uses the jump table at 0x10022c48 with targets 0x100158b0, 0x10015910, 0x100158fc, 0x1001589c, 0x100158e8, 0x100158d8, 0x100158c4, 0x100158fc, 0x100158e8.

- `venice_dg2init` in `usr/gfx/gfxinit` at 0x1001595c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001595c-0x10015ad0 (372 bytes).
  It occupies 372 bytes.
  The `lw` at 0x1001597c loads 4 bytes from sym(ven_eeprom) +0x18.
  The `lw` at 0x10015990 loads 4 bytes from sym(VEN_info) +0x50.
  2 such `lw` accesses load 4 bytes from sym(ven_pipenum) +0x0, including `lw` at 0x100159b8, `lw` at 0x100159d8.
  3 such `sw` accesses store 4 bytes to sym(VEN_info) +0x50, including `sw` at 0x100159c4, `sw` at 0x10015a8c, `sw` at 0x10015a94.
  The `lw` at 0x10015a6c loads 4 bytes from sym(vif_bporch_clamp_shadow) +0x0.
  The `lw` at 0x10015a9c loads 4 bytes from sym(vof_control_reg_value) +0x0.
  The `jal` at 0x100159b4 calls vs2Installed [0x10018110] with a0=[sym(ven_pipenum)], a1=a1 at entry (arg1), a2=0x1, a3=0x19908, a4=[sym(VEN_info)+80], a5=sym(VEN_info).
  The `jal` at 0x100159d4 calls vs2Initialize [0x100180b4] with a0=[sym(ven_pipenum)], a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x100159e0 calls venice_dg2initStopVof [0x10016a48] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100159f4 calls venice_set_vcreg [0x1000fce8] with a0=0xa33b, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x10015a00 calls venice_dg2initXilinx [0x10016fcc] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10015a0c calls venice_dg2initVof [0x100179c0] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x10015a1c calls venice_dg2initRegs [0x10016048] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10015a28 calls venice_dg2initEncoder [0x10017570] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10015a34 calls venice_dg2resetVof [0x10016a84] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10015a50 calls sginap with a0=0xb, a1=sym(sginap), a2=?, a3=?.
  The `jal` at 0x10015a68 calls venice_set_vcreg [0x1000fce8] with a0=0xb205, a1=[sym(vif_bporch_clamp_shadow)], a2=0x0, a3=?.
  The `jal` at 0x10015aa8 calls venice_set_vcreg [0x1000fce8] with a0=0xb100, a1=?, a2=0x0, a3=?.
  The `jalr` at 0x10015ab4 calls sginap with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x10015ac0 calls venice_dg2_resetDacClk [0x10015ad0] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1001598c targets 0x10015a80, is taken when a0(=[sym(ven_eeprom)+24]) == 0, and falls through when a0(=[sym(ven_eeprom)+24]) != 0.
  The `beq` branch at 0x10015994 targets 0x10015a90, is taken when a4(=[sym(VEN_info)+80]) == 0, and falls through when a4(=[sym(VEN_info)+80]) != 0.
  The `beq` branch at 0x1001599c targets 0x10015a80, is taken when a0(=[sym(ven_eeprom)+24]) == 0, and falls through when a0(=[sym(ven_eeprom)+24]) != 0.
  The `beq` branch at 0x100159a4 targets 0x100159e0, is taken when a4(=[sym(VEN_info)+80]) == 0, and falls through when a4(=[sym(VEN_info)+80]) != 0.
  The `beq` branch at 0x100159c0 targets 0x100159dc, is taken when v0(=ret(vs2Installed)) == 0, and falls through when v0(=ret(vs2Installed)) != 0.
  The `beq` branch at 0x10015a40 targets 0x10015a98, is taken when a1(=a2) == 0, and falls through when a1(=a2) != 0.
  The `beq` branch at 0x10015a80 targets 0x100159e0, is taken when a4(=[sym(VEN_info)+80]) == 0, and falls through when a4(=[sym(VEN_info)+80]) != 0.
  The `beq` branch at 0x10015a88 targets 0x100159dc and is always taken.
  The `beq` branch at 0x10015a90 targets 0x100159ac and is always taken.
  The `beq` branch at 0x10015ac8 targets 0x10015a4c and is always taken.
  The return at 0x10015a78 has v0 = ret(venice_set_vcreg).

- `venice_dg2_resetDacClk` in `usr/gfx/gfxinit` at 0x10015ad0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10015ad0-0x10015b34 (100 bytes).
  It occupies 100 bytes.
  The `jal` at 0x10015af4 calls venice_set_vcreg [0x1000fce8] with a0=0xa43c, a1=0x1, a2=0x0, a3=a3 at entry (arg3).
  The `jal` at 0x10015b08 calls venice_set_vcreg [0x1000fce8] with a0=0xa43c, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10015b1c calls venice_set_vcreg [0x1000fce8] with a0=0xa43c, a1=0x1, a2=0x0, a3=?.
  The return at 0x10015b2c has v0 = ret(venice_set_vcreg).

- `venice_dg2initIMPS` in `usr/gfx/gfxinit` at 0x10015b34 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10015b34-0x10015d20 (492 bytes).
  It occupies 492 bytes.
  2 such `lw` accesses load 4 bytes from sym(ie_config_lo) +0x0, including `lw` at 0x10015c48, `lw` at 0x10015c84.
  2 such `lw` accesses load 4 bytes from sym(ie_config_hi) +0x0, including `lw` at 0x10015cb8, `lw` at 0x10015cf0.
  The `jal` at 0x10015b68 calls venice_set_vcreg [0x1000fce8] with a0=0xb300, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10015b84 calls venice_set_vcreg [0x1000fce8] with a0=0xb303, a1=?, a2=0x0, a3=?.
  The `jal` at 0x10015b98 calls venice_set_vcreg [0x1000fce8] with a0=0xb300, a1=0x2, a2=0x0, a3=?.
  The `jal` at 0x10015bac calls venice_set_vcreg [0x1000fce8] with a0=0xb303, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10015bd4 calls venice_set_vcreg [0x1000fce8] with a0=0xb300, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10015bf0 calls venice_set_vcreg [0x1000fce8] with a0=0xb303, a1=?, a2=0x0, a3=?.
  The `jal` at 0x10015c04 calls venice_set_vcreg [0x1000fce8] with a0=0xb300, a1=0x2, a2=0x0, a3=?.
  The `jal` at 0x10015c18 calls venice_set_vcreg [0x1000fce8] with a0=0xb303, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10015c3c calls venice_set_vcreg [0x1000fce8] with a0=0xb300, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10015c64 calls venice_set_vcreg [0x1000fce8] with a0=0xb303, a1=?, a2=0x0, a3=?.
  The `jal` at 0x10015c78 calls venice_set_vcreg [0x1000fce8] with a0=0xb300, a1=0x2, a2=0x0, a3=?.
  The `jal` at 0x10015c98 calls venice_set_vcreg [0x1000fce8] with a0=0xb303, a1=?, a2=0x0, a3=?.
  The `jal` at 0x10015cac calls venice_set_vcreg [0x1000fce8] with a0=0xb300, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10015cd0 calls venice_set_vcreg [0x1000fce8] with a0=0xb303, a1=?, a2=0x0, a3=?.
  The `jal` at 0x10015ce4 calls venice_set_vcreg [0x1000fce8] with a0=0xb300, a1=0x2, a2=0x0, a3=?.
  The `jal` at 0x10015d04 calls venice_set_vcreg [0x1000fce8] with a0=0xb303, a1=?, a2=0x0, a3=?.
  The `bne` branch at 0x10015bbc targets 0x10015b60, is taken when s1(?) < 0x20 (signed), and falls through when s1(?) >= 0x20 (signed).
  The `bne` branch at 0x10015c28 targets 0x10015bcc, is taken when s1(?) < 0x28 (signed), and falls through when s1(?) >= 0x28 (signed).
  The return at 0x10015d18 has v0 = ret(venice_set_vcreg).

- `venice_dg2initXMAPRegs` in `usr/gfx/gfxinit` at 0x10015d20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10015d20-0x10016048 (808 bytes).
  It occupies 808 bytes.
  3 such `lh` accesses load 2 bytes from ?, including `lh` at 0x10015e18, `lh` at 0x10015e1c, `lh` at 0x10015e24.
  The `lw` at 0x10015e64 loads 4 bytes from sym(VEN_info) +0x50.
  The `lw` at 0x10015e6c loads 4 bytes from sym(VEN_info) +0x78.
  The `lw` at 0x10015ee8 loads 4 bytes from sym(vif_genlock) +0x0.
  The `lw` at 0x10015f00 loads 4 bytes from sym(vof_outsync_level) +0x0.
  The `lw` at 0x10015f04 loads 4 bytes from sym(VEN_info) +0x40.
  The `lw` at 0x10015f84 loads 4 bytes from sym(hrate_picoseconds) +0x0.
  The `jal` at 0x10015d5c calls venice_set_vcreg [0x1000fce8] with a0=?, a1=0xc, a2=0x0, a3=?.
  The `jal` at 0x10015d88 calls venice_set_vcreg [0x1000fce8] with a0=?, a1=?, a2=0x0, a3=?.
  The `jal` at 0x10015dac calls venice_set_vcreg [0x1000fce8] with a0=0xaa28, a1=0x10, a2=0x0, a3=?.
  The `jal` at 0x10015dc0 calls venice_set_vcreg [0x1000fce8] with a0=0xaa29, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10015dd8 calls venice_set_vcreg [0x1000fce8] with a0=0xaa38, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10015e48 calls venice_set_vcreg [0x1000fce8] with a0=0xaa3a, a1=?, a2=0x0, a3=?.
  The `jal` at 0x10015e7c calls venice_set_vcreg [0x1000fce8] with a0=0xa63b, a1=one of 0x0, 0x4, a2=0x0, a3=?, a4=[sym(VEN_info)+80].
  The `jal` at 0x10015e90 calls venice_set_vcreg [0x1000fce8] with a0=0xa63d, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10015ea4 calls venice_set_vcreg [0x1000fce8] with a0=0xa73d, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10015eb8 calls venice_set_vcreg [0x1000fce8] with a0=0xa63e, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10015ecc calls venice_set_vcreg [0x1000fce8] with a0=0xa93e, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10015ee4 calls venice_set_vcreg [0x1000fce8] with a0=0xa73c, a1=[sym(vif_genlock)], a2=0x0, a3=?.
  The `jal` at 0x10015efc calls venice_set_vcreg [0x1000fce8] with a0=0xa73e, a1=[sym(vof_outsync_level)], a2=0x0, a3=?.
  The `jalr` at 0x10015f28 calls printf with a0=0x100267b0, a1=0x4, a2=0x1, a3=?.
  The `jalr` at 0x10015f34 calls printf with a0=0x100267e8, a1=?, a2=?, a3=?.
  The `jal` at 0x10015f48 calls venice_set_vcreg [0x1000fce8] with a0=0xaa35, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10015f5c calls venice_set_vcreg [0x1000fce8] with a0=0xaa36, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10015f70 calls venice_set_vcreg [0x1000fce8] with a0=0xaa39, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10015f80 calls venice_load_clockDivider [0x100125f4] with a0=[sym(hrate_picoseconds)], a1=?, a2=?, a3=?.
  The `jal` at 0x10015fb4 calls venice_set_vcreg [0x1000fce8] with a0=0xaa35, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x10015fc8 calls venice_set_vcreg [0x1000fce8] with a0=0xaa36, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10015ff8 calls venice_set_vcreg [0x1000fce8] with a0=0xaa35, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x1001600c calls venice_set_vcreg [0x1000fce8] with a0=0xaa36, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x10016024 calls venice_set_vcreg [0x1000fce8] with a0=0xaa35, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10016038 calls venice_set_vcreg [0x1000fce8] with a0=0xaa36, a1=0x0, a2=0x0, a3=?.
  The `bne` branch at 0x10015d6c targets 0x10015d50, is taken when s1(?) < 0x20 (signed), and falls through when s1(?) >= 0x20 (signed).
  The `bne` branch at 0x10015d98 targets 0x10015d7c, is taken when s1(?) < 0x8 (signed), and falls through when s1(?) >= 0x8 (signed).
  The `bne` branch at 0x10015e58 targets 0x10015df4, is taken when s0(?) < s3(=0x8000) (signed), and falls through when s0(?) >= s3(=0x8000) (signed).
  The `beq` branch at 0x10015e68 targets 0x10015fd8, is taken when a4(=[sym(VEN_info)+80]) == 0, and falls through when a4(=[sym(VEN_info)+80]) != 0.
  The `beq` branch at 0x10015f0c targets 0x10015fec, is taken when a0(=[sym(VEN_info)+64]) == a2(=0x1), and falls through when a0(=[sym(VEN_info)+64]) != a2(=0x1).
  The `beq` branch at 0x10015f14 targets 0x1001601c, is taken when a0(=[sym(VEN_info)+64]) == 0, and falls through when a0(=[sym(VEN_info)+64]) != 0.
  The `beq` branch at 0x10015f1c targets 0x10015fa8, is taken when a0(=[sym(VEN_info)+64]) == a1(=0x4), and falls through when a0(=[sym(VEN_info)+64]) != a1(=0x4).
  The `beq` branch at 0x10015fd0 targets 0x10015f68 and is always taken.
  The `bltz` branch at 0x10015fdc targets 0x10015e74, is taken when a1(=([sym(VEN_info)+120] << 0x2e)) < 0 (signed), and falls through when a1(=([sym(VEN_info)+120] << 0x2e)) >= 0 (signed).
  The `beq` branch at 0x10015fe4 targets 0x10015e74 and is always taken.
  The `beq` branch at 0x10016014 targets 0x10015f68 and is always taken.
  The `beq` branch at 0x10016040 targets 0x10015f68 and is always taken.
  The return at 0x10015fa0 has v0 = ret(venice_load_clockDivider).

- `venice_dg2initRegs` in `usr/gfx/gfxinit` at 0x10016048 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10016048-0x1001696c (2340 bytes).
  It occupies 2340 bytes.
  The `lw` at 0x100160a0 loads 4 bytes from sym(VEN_info) +0x40.
  The `lw` at 0x100160fc loads 4 bytes from sym(VEN_info) +0x2c.
  The `lw` at 0x10016100 loads 4 bytes from sym(VEN_info) +0x78.
  The `lw` at 0x10016108 loads 4 bytes from sym(VEN_info) +0x50.
  The `lbu` at 0x100164c0 loads 1 byte from ?.
  The `jal` at 0x10016074 calls venice_set_vcreg [0x1000fce8] with a0=0xb0e0, a1=0x0, a2=0x0, a3=a3 at entry (arg3).
  The `jal` at 0x10016080 calls venice_dg2initXMAPRegs [0x10015d20] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1001608c calls venice_dg2initIMPS [0x10015b34] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100160e0 calls printf with a0=0x10026818, a1=[sym(VEN_info)+64], a2=0x0, a3=0x4.
  The `jalr` at 0x100160ec calls printf with a0=0x10026848, a1=?, a2=?, a3=?.
  The `jal` at 0x1001612c calls venice_set_vcreg [0x1000fce8] with a0=0xb301, a1=?, a2=0x0, a3=?, a4=[sym(VEN_info)+120].
  The `jal` at 0x10016140 calls venice_set_vcreg [0x1000fce8] with a0=0xa83d, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x10016154 calls venice_set_vcreg [0x1000fce8] with a0=0xa83d, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10016168 calls venice_set_vcreg [0x1000fce8] with a0=0xa83d, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x1001617c calls venice_set_vcreg [0x1000fce8] with a0=0xa83c, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x10016198 calls venice_set_vcreg [0x1000fce8] with a0=0xb800, a1=0x10101, a2=0x0, a3=?.
  The `jal` at 0x100161b4 calls venice_set_vcreg [0x1000fce8] with a0=0xb801, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x100161cc calls venice_set_vcreg [0x1000fce8] with a0=0xb802, a1=0xd0d0d0, a2=0x0, a3=?.
  The `jal` at 0x100161e0 calls venice_set_vcreg [0x1000fce8] with a0=0xb800, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x100161f4 calls venice_set_vcreg [0x1000fce8] with a0=0xb801, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x10016208 calls venice_set_vcreg [0x1000fce8] with a0=0xb802, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x1001621c calls venice_set_vcreg [0x1000fce8] with a0=0xbb00, a1=0x10101, a2=0x0, a3=?.
  The `jal` at 0x10016230 calls venice_set_vcreg [0x1000fce8] with a0=0xbb01, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x10016244 calls venice_set_vcreg [0x1000fce8] with a0=0xbb02, a1=0xc0, a2=0x0, a3=?.
  The `jal` at 0x10016258 calls venice_set_vcreg [0x1000fce8] with a0=0xbb00, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x1001626c calls venice_set_vcreg [0x1000fce8] with a0=0xbb01, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x10016280 calls venice_set_vcreg [0x1000fce8] with a0=0xbb02, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x1001629c calls venice_set_vcreg [0x1000fce8] with a0=0xb800, a1=0x40404, a2=0x0, a3=?.
  The `jal` at 0x100162b0 calls venice_set_vcreg [0x1000fce8] with a0=0xb801, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x100162cc calls venice_set_vcreg [0x1000fce8] with a0=0xb802, a1=0xffffff, a2=0x0, a3=?.
  The `jal` at 0x100162e8 calls venice_set_vcreg [0x1000fce8] with a0=0xb800, a1=0x50505, a2=0x0, a3=?.
  The `jal` at 0x100162fc calls venice_set_vcreg [0x1000fce8] with a0=0xb801, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x10016310 calls venice_set_vcreg [0x1000fce8] with a0=0xb802, a1=0xffffff, a2=0x0, a3=?.
  The `jal` at 0x10016324 calls venice_set_vcreg [0x1000fce8] with a0=0xbb00, a1=0x40404, a2=0x0, a3=?.
  The `jal` at 0x10016338 calls venice_set_vcreg [0x1000fce8] with a0=0xbb01, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x1001634c calls venice_set_vcreg [0x1000fce8] with a0=0xbb02, a1=0xffffff, a2=0x0, a3=?.
  The `jal` at 0x10016360 calls venice_set_vcreg [0x1000fce8] with a0=0xbb00, a1=0x50505, a2=0x0, a3=?.
  The `jal` at 0x10016374 calls venice_set_vcreg [0x1000fce8] with a0=0xbb01, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x10016388 calls venice_set_vcreg [0x1000fce8] with a0=0xbb02, a1=0xffffff, a2=0x0, a3=?.
  The `jal` at 0x100163a4 calls venice_set_vcreg [0x1000fce8] with a0=0xb800, a1=0x60606, a2=0x0, a3=?.
  The `jal` at 0x100163b8 calls venice_set_vcreg [0x1000fce8] with a0=0xb801, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x100163cc calls venice_set_vcreg [0x1000fce8] with a0=0xb802, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x100163e8 calls venice_set_vcreg [0x1000fce8] with a0=0xb800, a1=0x70707, a2=0x0, a3=?.
  The `jal` at 0x100163fc calls venice_set_vcreg [0x1000fce8] with a0=0xb801, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x10016410 calls venice_set_vcreg [0x1000fce8] with a0=0xb802, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10016424 calls venice_set_vcreg [0x1000fce8] with a0=0xbb00, a1=0x60606, a2=0x0, a3=?.
  The `jal` at 0x10016438 calls venice_set_vcreg [0x1000fce8] with a0=0xbb01, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x1001644c calls venice_set_vcreg [0x1000fce8] with a0=0xbb02, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10016460 calls venice_set_vcreg [0x1000fce8] with a0=0xbb00, a1=0x70707, a2=0x0, a3=?.
  The `jal` at 0x10016474 calls venice_set_vcreg [0x1000fce8] with a0=0xbb01, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x10016488 calls venice_set_vcreg [0x1000fce8] with a0=0xbb02, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x1001649c calls venice_set_vcreg [0x1000fce8] with a0=0xb800, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x100164b0 calls venice_set_vcreg [0x1000fce8] with a0=0xb801, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x100164dc calls venice_set_vcreg [0x1000fce8] with a0=0xb803, a1=?, a2=0x0, a3=?.
  The `jal` at 0x10016500 calls venice_set_vcreg [0x1000fce8] with a0=0xb800, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10016514 calls venice_set_vcreg [0x1000fce8] with a0=0xb801, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10016550 calls venice_set_vcreg [0x1000fce8] with a0=0xb802, a1=?, a2=0x0, a3=?.
  The `jal` at 0x10016574 calls venice_set_vcreg [0x1000fce8] with a0=0xbb00, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x1001658c calls venice_set_vcreg [0x1000fce8] with a0=0xbb01, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x100165a4 calls venice_set_vcreg [0x1000fce8] with a0=0xbb03, a1=?, a2=0x0, a3=?.
  The `jal` at 0x100165b8 calls venice_set_vcreg [0x1000fce8] with a0=0xbb03, a1=?, a2=0x0, a3=?.
  The `jal` at 0x100165cc calls venice_set_vcreg [0x1000fce8] with a0=0xbb03, a1=?, a2=0x0, a3=?.
  The `jal` at 0x100165e0 calls venice_set_vcreg [0x1000fce8] with a0=0xbb03, a1=?, a2=0x0, a3=?.
  The `jal` at 0x10016600 calls venice_set_vcreg [0x1000fce8] with a0=0xb800, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10016614 calls venice_set_vcreg [0x1000fce8] with a0=0xb801, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10016638 calls venice_set_vcreg [0x1000fce8] with a0=0xb802, a1=?, a2=0x0, a3=?.
  The `jal` at 0x10016654 calls venice_set_vcreg [0x1000fce8] with a0=0xbb00, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10016668 calls venice_set_vcreg [0x1000fce8] with a0=0xbb01, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10016680 calls venice_set_vcreg [0x1000fce8] with a0=0xbb02, a1=?, a2=0x0, a3=?.
  The `jal` at 0x100166a0 calls venice_set_vcreg [0x1000fce8] with a0=0xb800, a1=0x80808, a2=0x0, a3=?.
  The `jal` at 0x100166b8 calls venice_set_vcreg [0x1000fce8] with a0=0xb801, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x100166cc calls venice_set_vcreg [0x1000fce8] with a0=0xb802, a1=0xffffff, a2=0x0, a3=?.
  The `jal` at 0x100166e8 calls venice_set_vcreg [0x1000fce8] with a0=0xb800, a1=0x80808, a2=0x0, a3=?.
  The `jal` at 0x100166fc calls venice_set_vcreg [0x1000fce8] with a0=0xb801, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x10016710 calls venice_set_vcreg [0x1000fce8] with a0=0xbb02, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10016728 calls venice_set_vcreg [0x1000fce8] with a0=0xb800, a1=0x90909, a2=0x0, a3=?.
  The `jal` at 0x1001673c calls venice_set_vcreg [0x1000fce8] with a0=0xb801, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x10016750 calls venice_set_vcreg [0x1000fce8] with a0=0xb802, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10016768 calls venice_set_vcreg [0x1000fce8] with a0=0xbb00, a1=0x90909, a2=0x0, a3=?.
  The `jal` at 0x1001677c calls venice_set_vcreg [0x1000fce8] with a0=0xbb01, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x10016790 calls venice_set_vcreg [0x1000fce8] with a0=0xbb02, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x100167a8 calls venice_set_vcreg [0x1000fce8] with a0=0xb800, a1=0xc0c0c, a2=0x0, a3=?.
  The `jal` at 0x100167bc calls venice_set_vcreg [0x1000fce8] with a0=0xb801, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x100167d0 calls venice_set_vcreg [0x1000fce8] with a0=0xb802, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x100167e8 calls venice_set_vcreg [0x1000fce8] with a0=0xbb00, a1=0xc0c0c, a2=0x0, a3=?.
  The `jal` at 0x100167fc calls venice_set_vcreg [0x1000fce8] with a0=0xbb01, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x10016814 calls venice_set_vcreg [0x1000fce8] with a0=0xbb02, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10016828 calls venice_set_vcreg [0x1000fce8] with a0=0xac00, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x1001683c calls venice_set_vcreg [0x1000fce8] with a0=0xac01, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10016850 calls venice_set_vcreg [0x1000fce8] with a0=0xac03, a1=0x4848, a2=0x0, a3=?.
  The `jal` at 0x10016864 calls venice_set_vcreg [0x1000fce8] with a0=0xac03, a1=0x8080, a2=0x0, a3=?.
  The `jal` at 0x10016878 calls venice_set_vcreg [0x1000fce8] with a0=0xac03, a1=0x303, a2=0x0, a3=?.
  The `jal` at 0x1001688c calls venice_set_vcreg [0x1000fce8] with a0=0xac03, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x100168a0 calls venice_set_vcreg [0x1000fce8] with a0=0xac03, a1=0x202, a2=0x0, a3=?.
  The `jal` at 0x100168b4 calls venice_set_vcreg [0x1000fce8] with a0=0xb800, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x100168c8 calls venice_set_vcreg [0x1000fce8] with a0=0xb801, a1=0x10101, a2=0x0, a3=?.
  The `jal` at 0x100168e0 calls venice_set_vcreg [0x1000fce8] with a0=0xb802, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x100168f4 calls venice_set_vcreg [0x1000fce8] with a0=0xb802, a1=0xff, a2=0x0, a3=?.
  The `jal` at 0x10016908 calls venice_set_vcreg [0x1000fce8] with a0=0xb802, a1=0xff, a2=0x0, a3=?.
  The `jal` at 0x1001691c calls venice_set_vcreg [0x1000fce8] with a0=0xb802, a1=0xff, a2=0x0, a3=?.
  The `jal` at 0x10016928 calls venice_center_dpots [0x10016d10] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100160b8 targets 0x10016948, is taken when a1(=[sym(VEN_info)+64]) == v0(=0x1), and falls through when a1(=[sym(VEN_info)+64]) != v0(=0x1).
  The `beq` branch at 0x100160c0 targets 0x10016964, is taken when a1(=[sym(VEN_info)+64]) == 0, and falls through when a1(=[sym(VEN_info)+64]) != 0.
  The `beq` branch at 0x100160c8 targets 0x10016940, is taken when a1(=[sym(VEN_info)+64]) == a3(=0x4), and falls through when a1(=[sym(VEN_info)+64]) != a3(=0x4).
  The `beq` branch at 0x10016118 targets 0x10016950, is taken when t8(=[sym(VEN_info)+80]) == 0, and falls through when t8(=[sym(VEN_info)+80]) != 0.
  The `bne` branch at 0x100164ec targets 0x100164c0, is taken when s1(?) < 0x400 (signed), and falls through when s1(?) >= 0x400 (signed).
  The `bne` branch at 0x10016560 targets 0x10016524, is taken when s1(?) < 0x100 (signed), and falls through when s1(?) >= 0x100 (signed).
  The `bne` branch at 0x100165f0 targets 0x10016598, is taken when s0(?) < 0x100 (signed), and falls through when s0(?) >= 0x100 (signed).
  The `bgez` branch at 0x10016644 targets 0x10016620, is taken when s0(?) >= 0 (signed), and falls through when s0(?) < 0 (signed).
  The `bgez` branch at 0x1001668c targets 0x10016674, is taken when s0(?) >= 0 (signed), and falls through when s0(?) < 0 (signed).
  The `beq` branch at 0x10016940 targets 0x100160fc and is always taken.
  The `beq` branch at 0x10016948 targets 0x100160fc and is always taken.
  The `bltz` branch at 0x10016954 targets 0x10016120, is taken when a2(=([sym(VEN_info)+120] << 0x2e)) < 0 (signed), and falls through when a2(=([sym(VEN_info)+120] << 0x2e)) >= 0 (signed).
  The `beq` branch at 0x1001695c targets 0x10016128 and is always taken.
  The `beq` branch at 0x10016964 targets 0x100160f8 and is always taken.
  The return at 0x10016938 has v0 = ret(venice_center_dpots).

- `venice_dg2initVlist` in `usr/gfx/gfxinit` at 0x1001696c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001696c-0x10016a48 (220 bytes).
  It occupies 220 bytes.
  The `jal` at 0x10016998 calls venice_set_vcreg [0x1000fce8] with a0=0x51d9, a1=0xffffffffc0000000, a2=0x0, a3=a3 at entry (arg3).
  The `jal` at 0x100169b0 calls venice_set_vcreg [0x1000fce8] with a0=0x100, a1=0xffffffff800051d9, a2=0x0, a3=?.
  The `jal` at 0x100169c4 calls venice_set_vcreg [0x1000fce8] with a0=0xb0e0, a1=0x20000000, a2=0x0, a3=?.
  The `jal` at 0x100169dc calls venice_set_vcreg [0x1000fce8] with a0=0x4c2e, a1=0x4000a43c, a2=0x0, a3=?.
  The `jal` at 0x100169f0 calls venice_set_vcreg [0x1000fce8] with a0=0x4c2f, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x10016a04 calls venice_set_vcreg [0x1000fce8] with a0=0x4c30, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10016a18 calls venice_set_vcreg [0x1000fce8] with a0=0x4c31, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x10016a2c calls venice_set_vcreg [0x1000fce8] with a0=0x4c32, a1=0xffffffffc0000000, a2=0x0, a3=?.
  The return at 0x10016a40 has v0 = ret(venice_set_vcreg).

- `venice_dg2initStopVof` in `usr/gfx/gfxinit` at 0x10016a48 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10016a48-0x10016a84 (60 bytes).
  It occupies 60 bytes.
  The `jal` at 0x10016a6c calls venice_set_vcreg [0x1000fce8] with a0=0xb100, a1=0x1, a2=0x0, a3=a3 at entry (arg3).
  The return at 0x10016a7c has v0 = ret(venice_set_vcreg).

- `venice_dg2resetVof` in `usr/gfx/gfxinit` at 0x10016a84 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10016a84-0x10016adc (88 bytes).
  It occupies 88 bytes.
  The `jal` at 0x10016aa0 calls venice_dg2resetRM [0x10016c28] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10016aac calls venice_dg2initIMPS [0x10015b34] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10016ab8 calls venice_dg2initResetXmap [0x10016b2c] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10016ac4 calls venice_dg2initXMAPRegs [0x10015d20] with a0=?, a1=?, a2=?, a3=?.
  The return at 0x10016ad4 has v0 = ret(venice_dg2initXMAPRegs).

- `venice_dg2initStartVof` in `usr/gfx/gfxinit` at 0x10016adc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10016adc-0x10016b2c (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x10016b08 loads 4 bytes from sym(vof_control_reg_value) +0x0.
  The `jal` at 0x10016af8 calls venice_dg2resetVof [0x10016a84] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10016b14 calls venice_set_vcreg [0x1000fce8] with a0=0xb100, a1=?, a2=0x0, a3=?.
  The return at 0x10016b24 has v0 = ret(venice_set_vcreg).

- `venice_dg2initResetXmap` in `usr/gfx/gfxinit` at 0x10016b2c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10016b2c-0x10016b88 (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x10016b50 calls venice_set_vcreg [0x1000fce8] with a0=0xb0e0, a1=0x10000000, a2=0x0, a3=a3 at entry (arg3).
  The `jalr` at 0x10016b5c calls sginap with a0=0x5, a1=?, a2=?, a3=?.
  The `jal` at 0x10016b70 calls venice_set_vcreg [0x1000fce8] with a0=0xb0e0, a1=0x0, a2=0x0, a3=?.
  The return at 0x10016b80 has v0 = ret(venice_set_vcreg).

- `venice_dg2resetRM` in `usr/gfx/gfxinit` at 0x10016c28 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10016c28-0x10016ca0 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from sym(VEN_info) +0x2c, including `lw` at 0x10016c48, `lw` at 0x10016c70.
  The `jal` at 0x10016c68 calls (unnamed) [0x10016b88] with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x10016c5c targets 0x10016c84, is taken when at(=[sym(VEN_info)+44]) <= 0 (signed), and falls through when at(=[sym(VEN_info)+44]) > 0 (signed).
  The `bne` branch at 0x10016c7c targets 0x10016c68, is taken when s0(?) < t8(=[sym(VEN_info)+44]) (signed), and falls through when s0(?) >= t8(=[sym(VEN_info)+44]) (signed).
  The return at 0x10016c98 has v0 = one of ?, ret(0x10016b88).

- `venice_dg_present` in `usr/gfx/gfxinit` at 0x10016ca0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10016ca0-0x10016d10 (112 bytes).
  It occupies 112 bytes.
  The `jal` at 0x10016cc0 calls _jt_select_chain [0x100106ac] with a0=0x10026878, a1=0x185c4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10016cd4 calls _jt_send_data [0x10010714] with a0=0x3e8, a1=sp-160, a2=sp-160, a3=?.
  The `jal` at 0x10016ce4 calls vector_to_int [0x10010748] with a0=sp-32, a1=sp-160, a2=?, a3=?.
  The return at 0x10016d08 has v0 = ?.

- `venice_center_dpots` in `usr/gfx/gfxinit` at 0x10016d10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10016d10-0x10016f00 (496 bytes).
  It occupies 496 bytes.
  The `jal` at 0x10016d3c calls venice_set_vcreg [0x1000fce8] with a0=0xa53e, a1=0x0, a2=0x0, a3=a3 at entry (arg3).
  The `jal` at 0x10016d50 calls venice_set_vcreg [0x1000fce8] with a0=0xa03e, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10016d64 calls venice_set_vcreg [0x1000fce8] with a0=0xa03d, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10016d78 calls venice_set_vcreg [0x1000fce8] with a0=0xa03c, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10016d8c calls venice_set_vcreg [0x1000fce8] with a0=0xa13e, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10016da0 calls venice_set_vcreg [0x1000fce8] with a0=0xa13d, a1=0x0, a2=0x0, a3=?.
  The `jalr` at 0x10016db8 calls getenv with a0=0x10026888, a1=?, a2=?, a3=?.
  The `jalr` at 0x10016de4 calls sscanf with a0=ret(getenv), a1=0x10027990, a2=sp-48, a3=?.
  The `jalr` at 0x10016e04 calls printf with a0=0x10026898, a1=ret(getenv), a2=?, a3=?.
  The `jal` at 0x10016e30 calls venice_set_vcreg [0x1000fce8] with a0=0xb0c0, a1=0x1, a2=0x0, a3=?.
  The `jalr` at 0x10016e3c calls sginap with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x10016e60 calls venice_set_vcreg [0x1000fce8] with a0=0xa13d, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x10016e74 calls venice_set_vcreg [0x1000fce8] with a0=0xa53e, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x10016e94 calls venice_set_vcreg [0x1000fce8] with a0=0xb0c0, a1=0x1, a2=0x0, a3=?.
  The `jalr` at 0x10016ea0 calls sginap with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10016eec calls printf with a0=0x100268d8, a1=0x5d, a2=?, a3=?.
  The `beq` branch at 0x10016dc8 targets 0x10016e18, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `beq` branch at 0x10016df4 targets 0x10016ed8, is taken when v0(=ret(sscanf)) == t8(=0x1), and falls through when v0(=ret(sscanf)) != t8(=0x1).
  The `beq` branch at 0x10016e10 targets 0x10016e1c and is always taken.
  The `bne` branch at 0x10016e4c targets 0x10016e28, is taken when s0(?) < 0x64 (signed), and falls through when s0(?) >= 0x64 (signed).
  The `blez` branch at 0x10016e80 targets 0x10016ebc, is taken when at(?) <= 0 (signed), and falls through when at(?) > 0 (signed).
  The `bne` branch at 0x10016eb4 targets 0x10016e8c, is taken when s0(?) < v0(?) (signed), and falls through when s0(?) >= v0(?) (signed).
  The `bltz` branch at 0x10016ed8 targets 0x10016ee8, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `bne` branch at 0x10016ee0 targets 0x10016e1c, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x10016ef8 targets 0x10016e1c and is always taken.
  The return at 0x10016ed0 has v0 = one of ret(venice_set_vcreg), ?.

- `set_dac_cmd2` in `usr/gfx/gfxinit` at 0x10016f00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10016f00-0x10016fcc (204 bytes).
  It occupies 204 bytes.
  The `jal` at 0x10016f3c calls venice_set_vcreg [0x1000fce8] with a0=0xb800, a1=0x30303, a2=0x0, a3=a3 at entry (arg3).
  The `jal` at 0x10016f54 calls venice_set_vcreg [0x1000fce8] with a0=0xb801, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x10016f68 calls venice_set_vcreg [0x1000fce8] with a0=0xb802, a1=a0 at entry (arg0), a2=0x0, a3=?.
  The `jal` at 0x10016f84 calls venice_set_vcreg [0x1000fce8] with a0=0xbb00, a1=0x30303, a2=0x0, a3=?.
  The `jal` at 0x10016f9c calls venice_set_vcreg [0x1000fce8] with a0=0xbb01, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x10016fb0 calls venice_set_vcreg [0x1000fce8] with a0=0xbb02, a1=a1 at entry (arg1), a2=0x0, a3=?.
  The return at 0x10016fc4 has v0 = ret(venice_set_vcreg).

- `venice_dg2initXilinx` in `usr/gfx/gfxinit` at 0x10016fcc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10016fcc-0x10017380 (948 bytes).
  It occupies 948 bytes.
  The `jal` at 0x10016ff4 calls venice_set_vcreg [0x1000fce8] with a0=0xb100, a1=0x1, a2=0x0, a3=a3 at entry (arg3).
  The `jal` at 0x10017004 calls venice_load_xilinx [0x1001582c] with a0=0x6, a1=?, a2=?, a3=?.
  The `jal` at 0x10017038 calls venice_get_vcreg [0x1000fcb4] with a0=0xa430, a1=?, a2=?, a3=?.
  The `jal` at 0x1001705c calls venice_load_xilinx [0x1001582c] with a0=0x6, a1=ret(venice_get_vcreg), a2=?, a3=?.
  The `jal` at 0x1001706c calls venice_get_vcreg [0x1000fcb4] with a0=0xa430, a1=?, a2=?, a3=?.
  The `jal` at 0x10017098 calls venice_get_vcreg [0x1000fcb4] with a0=0xa830, a1=?, a2=?, a3=?.
  The `jal` at 0x100170c4 calls venice_load_xilinx [0x1001582c] with a0=one of 0x4, 0x8, a1=?, a2=?, a3=?.
  The `jal` at 0x100170d4 calls venice_get_vcreg [0x1000fcb4] with a0=0xa430, a1=?, a2=?, a3=?.
  The `jalr` at 0x100170f4 calls printf with a0=0x100269c8, a1=?, a2=?, a3=?.
  The `jal` at 0x10017100 calls venice_load_xilinx [0x1001582c] with a0=one of 0x4, 0x8, a1=?, a2=?, a3=?.
  The `jal` at 0x1001710c calls venice_get_vcreg [0x1000fcb4] with a0=0xa430, a1=?, a2=?, a3=?.
  The `jal` at 0x1001712c calls venice_load_xilinx [0x1001582c] with a0=0x5, a1=?, a2=?, a3=?.
  The `jal` at 0x10017138 calls venice_get_vcreg [0x1000fcb4] with a0=0xa630, a1=?, a2=?, a3=?.
  The `jalr` at 0x10017158 calls printf with a0=0x10026a38, a1=?, a2=?, a3=?.
  The `jal` at 0x10017164 calls venice_load_xilinx [0x1001582c] with a0=0x5, a1=?, a2=?, a3=?.
  The `jal` at 0x10017170 calls venice_get_vcreg [0x1000fcb4] with a0=0xa630, a1=?, a2=?, a3=?.
  The `jal` at 0x10017190 calls venice_load_xilinx [0x1001582c] with a0=0x0, a1=?, a2=?, a3=?.
  The `jal` at 0x1001719c calls venice_get_vcreg [0x1000fcb4] with a0=0xa630, a1=?, a2=?, a3=?.
  The `jalr` at 0x100171bc calls printf with a0=0x10026aa8, a1=?, a2=?, a3=?.
  The `jal` at 0x100171c8 calls venice_load_xilinx [0x1001582c] with a0=0x0, a1=?, a2=?, a3=?.
  The `jal` at 0x100171d4 calls venice_get_vcreg [0x1000fcb4] with a0=0xa630, a1=?, a2=?, a3=?.
  The `jal` at 0x100171f8 calls venice_load_xilinx [0x1001582c] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x1001720c calls venice_get_vcreg [0x1000fcb4] with a0=0xa130, a1=?, a2=?, a3=?.
  The `jal` at 0x10017234 calls venice_load_xilinx [0x1001582c] with a0=one of 0x2, 0x7, a1=?, a2=?, a3=?.
  The `jal` at 0x10017240 calls venice_get_vcreg [0x1000fcb4] with a0=0xa630, a1=?, a2=?, a3=?.
  The `jalr` at 0x10017260 calls printf with a0=0x10026b78, a1=?, a2=?, a3=?.
  The `jal` at 0x1001726c calls venice_load_xilinx [0x1001582c] with a0=one of 0x2, 0x7, a1=?, a2=?, a3=?.
  The `jal` at 0x10017278 calls venice_get_vcreg [0x1000fcb4] with a0=0xa630, a1=?, a2=?, a3=?.
  The `jalr` at 0x100172cc calls printf with a0=0x10026960, a1=?, a2=?, a3=?.
  The `jalr` at 0x100172e8 calls printf with a0=0x10026b38, a1=?, a2=?, a3=?.
  The `jalr` at 0x10017300 calls printf with a0=0x10026938, a1=?, a2=?, a3=?.
  The `jalr` at 0x10017310 calls printf with a0=0x10026988, a1=ret(venice_get_vcreg), a2=?, a3=?.
  The `jalr` at 0x10017324 calls printf with a0=0x100269f8, a1=ret(venice_get_vcreg), a2=?, a3=?.
  The `jalr` at 0x10017338 calls printf with a0=0x10026a68, a1=ret(venice_get_vcreg), a2=?, a3=?.
  The `jalr` at 0x10017348 calls printf with a0=0x10026ad8, a1=ret(venice_get_vcreg), a2=?, a3=?.
  The `jalr` at 0x1001735c calls printf with a0=0x10026b18, a1=?, a2=?, a3=?.
  The `jalr` at 0x10017370 calls printf with a0=0x10026ba8, a1=ret(venice_get_vcreg), a2=?, a3=?.
  The `bltz` branch at 0x10017014 targets 0x100172f8, is taken when v0(=ret(venice_load_xilinx)) < 0 (signed), and falls through when v0(=ret(venice_load_xilinx)) >= 0 (signed).
  The `beq` branch at 0x10017050 targets 0x10017088, is taken when s6(=0x8) == t8(?), and falls through when s6(=0x8) != t8(?).
  The `bltz` branch at 0x10017064 targets 0x100172c8, is taken when v0(=ret(venice_load_xilinx)) < 0 (signed), and falls through when v0(=ret(venice_load_xilinx)) >= 0 (signed).
  The `bne` branch at 0x1001707c targets 0x1001704c, is taken when s0(?) < 0x3 (signed), and falls through when s0(?) >= 0x3 (signed).
  The `beq` branch at 0x10017088 targets 0x10017310, is taken when s0(?) == ra(=0x3), and falls through when s0(?) != ra(=0x3).
  The `blez` branch at 0x100170b0 targets 0x100172dc, is taken when at(?) <= 0 (signed), and falls through when at(?) > 0 (signed).
  The `beq` branch at 0x100170e8 targets 0x10017124, is taken when s6(=0x8) == v0(?), and falls through when s6(=0x8) != v0(?).
  The `bne` branch at 0x1001711c targets 0x100170e4, is taken when s0(?) < 0x4 (signed), and falls through when s0(?) >= 0x4 (signed).
  The `beq` branch at 0x10017124 targets 0x10017320, is taken when s0(?) == s7(=0x4), and falls through when s0(?) != s7(=0x4).
  The `beq` branch at 0x1001714c targets 0x10017188, is taken when s8(=0x1) == a0(?), and falls through when s8(=0x1) != a0(?).
  The `bne` branch at 0x10017180 targets 0x10017148, is taken when s0(?) < 0x4 (signed), and falls through when s0(?) >= 0x4 (signed).
  The `beq` branch at 0x10017188 targets 0x10017334, is taken when s0(?) == s7(=0x4), and falls through when s0(?) != s7(=0x4).
  The `beq` branch at 0x100171b0 targets 0x100171ec, is taken when s7(=0x4) == a3(?), and falls through when s7(=0x4) != a3(?).
  The `bne` branch at 0x100171e4 targets 0x100171ac, is taken when s0(?) < 0x4 (signed), and falls through when s0(?) >= 0x4 (signed).
  The `beq` branch at 0x100171ec targets 0x10017348, is taken when s0(?) == s7(=0x4), and falls through when s0(?) != s7(=0x4).
  The `bltz` branch at 0x10017200 targets 0x10017358, is taken when v0(=ret(venice_load_xilinx)) < 0 (signed), and falls through when v0(=ret(venice_load_xilinx)) >= 0 (signed).
  The `beq` branch at 0x10017220 targets 0x100172e4, is taken when s0(=0x3) == a1(?), and falls through when s0(=0x3) != a1(?).
  The `beq` branch at 0x10017228 targets 0x100172e8, is taken when a1(?) == a0(=0xb), and falls through when a1(?) != a0(=0xb).
  The `beq` branch at 0x10017254 targets 0x10017290, is taken when s6(=0x8) == a2(?), and falls through when s6(=0x8) != a2(?).
  The `bne` branch at 0x10017288 targets 0x10017250, is taken when s0(?) < 0x4 (signed), and falls through when s0(?) >= 0x4 (signed).
  The `beq` branch at 0x10017290 targets 0x1001736c, is taken when s0(?) == s7(=0x4), and falls through when s0(?) != s7(=0x4).
  The `beq` branch at 0x100172d4 targets 0x1001706c and is always taken.
  The `beq` branch at 0x100172dc targets 0x100170bc and is always taken.
  The `beq` branch at 0x100172f0 targets 0x10017230 and is always taken.
  The `beq` branch at 0x10017308 targets 0x10017020 and is always taken.
  The `beq` branch at 0x10017318 targets 0x10017094 and is always taken.
  The `beq` branch at 0x1001732c targets 0x1001712c and is always taken.
  The `beq` branch at 0x10017340 targets 0x10017190 and is always taken.
  The `beq` branch at 0x10017350 targets 0x100171f8 and is always taken.
  The `beq` branch at 0x10017364 targets 0x10017208 and is always taken.
  The `beq` branch at 0x10017378 targets 0x10017298 and is always taken.
  The return at 0x100172c0 has v0 = one of ret(venice_get_vcreg), ret(printf).

- `write_encoder_reg` in `usr/gfx/gfxinit` at 0x10017380 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10017380-0x10017400 (128 bytes).
  It occupies 128 bytes.
  The `sw` at 0x100173a0 stores 4 bytes to sym(a) +0xc.
  The `sw` at 0x100173a4 stores 4 bytes to sym(a) +0x0.
  The `sw` at 0x100173ac stores 4 bytes to sym(a) +0x8.
  The `lw` at 0x100173b4 loads 4 bytes from sym(ven_gfxfd) +0x0.
  The `sw` at 0x100173b8 stores 4 bytes to sym(a) +0x4.
  The `jalr` at 0x100173bc calls ioctl with a0=[sym(ven_gfxfd)], a1=0x2726, a2=sym(a), a3=a3 at entry (arg3).
  The `jalr` at 0x100173e4 calls perror with a0=0x10026be8, a1=?, a2=?, a3=?.
  The `jalr` at 0x100173f0 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100173c8 targets 0x100173dc, is taken when v0(=ret(ioctl)) == a0(=-0x1), and falls through when v0(=ret(ioctl)) != a0(=-0x1).
  The `beq` branch at 0x100173f8 targets 0x100173d0 and is always taken.
  The return at 0x100173d4 has v0 = one of ret(ioctl), ret(exit).

- `read_encoder_reg` in `usr/gfx/gfxinit` at 0x10017400 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10017400-0x10017478 (120 bytes).
  It occupies 120 bytes.
  The `sw` at 0x10017424 stores 4 bytes to sym(a) +0x0.
  The `lw` at 0x10017430 loads 4 bytes from sym(ven_gfxfd) +0x0.
  The `lw` at 0x1001744c loads 4 bytes from sym(a) +0x8.
  The `jalr` at 0x1001742c calls ioctl with a0=[sym(ven_gfxfd)], a1=0x2729, a2=sym(a), a3=a3 at entry (arg3).
  The `jalr` at 0x1001745c calls perror with a0=0x10026c18, a1=?, a2=?, a3=?.
  The `jalr` at 0x10017468 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10017438 targets 0x10017458, is taken when v0(=ret(ioctl)) == v1(=-0x1), and falls through when v0(=ret(ioctl)) != v1(=-0x1).
  The `beq` branch at 0x10017470 targets 0x10017444 and is always taken.
  The return at 0x10017450 has v0 = [sym(a)+8].

- `calculate_linear_lut` in `usr/gfx/gfxinit` at 0x10017478 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10017478-0x100174b4 (60 bytes).
  It occupies 60 bytes.
  The `ldc1` at 0x10017488 loads 8 bytes from abs 0x10027ed8.
  The `ldc1` at 0x10017490 loads 8 bytes from abs 0x10027ee0.
  The return at 0x100174ac has v0 = ?.

- `init_luts` in `usr/gfx/gfxinit` at 0x100174b4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x100174b4-0x10017570 (188 bytes).
  It occupies 188 bytes.
  The `jal` at 0x100174f0 calls venice_set_vcreg [0x1000fce8] with a0=0xae00, a1=0x0, a2=0x0, a3=a3 at entry (arg3).
  The `jal` at 0x10017504 calls calculate_linear_lut [0x10017478] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10017524 calls venice_set_vcreg [0x1000fce8] with a0=0xae01, a1=?, a2=0x0, a3=?.
  The `bne` branch at 0x10017534 targets 0x1001751c, is taken when s0(?) < 0x3 (signed), and falls through when s0(?) >= 0x3 (signed).
  The `bne` branch at 0x10017544 targets 0x10017504, is taken when s2(?) < 0x100 (signed), and falls through when s2(?) >= 0x100 (signed).
  The return at 0x10017568 has v0 = ret(venice_set_vcreg).

- `venice_dg2initEncoder` in `usr/gfx/gfxinit` at 0x10017570 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10017570-0x100179c0 (1104 bytes).
  It occupies 1104 bytes.
  The `jal` at 0x1001758c calls init_luts [0x100174b4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100175a4 calls write_encoder_reg [0x10017380] with a0=0xa33b, a1=0x0, a2=0xff, a3=?.
  The `jal` at 0x100175b4 calls read_encoder_reg [0x10017400] with a0=0x1f, a1=?, a2=?, a3=?.
  The `jal` at 0x100175c8 calls read_encoder_reg [0x10017400] with a0=0x16, a1=?, a2=?, a3=?.
  The `jal` at 0x100175d8 calls read_encoder_reg [0x10017400] with a0=0x17, a1=?, a2=?, a3=?.
  The `jal` at 0x1001762c calls venice_set_vcreg [0x1000fce8] with a0=0xb400, a1=0x1, a2=0x0, a3=0x22b.
  The `jal` at 0x10017640 calls venice_set_vcreg [0x1000fce8] with a0=0xb401, a1=0x4f, a2=0x0, a3=?.
  The `jal` at 0x10017654 calls venice_set_vcreg [0x1000fce8] with a0=0xb402, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x10017668 calls venice_set_vcreg [0x1000fce8] with a0=0xb403, a1=0xa, a2=0x0, a3=?.
  The `jal` at 0x1001767c calls venice_set_vcreg [0x1000fce8] with a0=0xb404, a1=0x17, a2=0x0, a3=?.
  The `jal` at 0x10017690 calls venice_set_vcreg [0x1000fce8] with a0=0xb405, a1=0x20, a2=0x0, a3=?.
  The `jal` at 0x100176b0 calls venice_set_vcreg [0x1000fce8] with a0=0xb400, a1=0x20, a2=0x0, a3=0x22b.
  The `jal` at 0x100176c4 calls venice_set_vcreg [0x1000fce8] with a0=0xb401, a1=0x6e, a2=0x0, a3=?.
  The `jal` at 0x100176d8 calls venice_set_vcreg [0x1000fce8] with a0=0xb402, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x100176ec calls venice_set_vcreg [0x1000fce8] with a0=0xb403, a1=0x40, a2=0x0, a3=?.
  The `jal` at 0x10017700 calls venice_set_vcreg [0x1000fce8] with a0=0xb404, a1=0x4d, a2=0x0, a3=?.
  The `jal` at 0x10017714 calls venice_set_vcreg [0x1000fce8] with a0=0xb405, a1=0x20, a2=0x0, a3=?.
  The `jal` at 0x10017728 calls write_encoder_reg [0x10017380] with a0=0xb406, a1=0x8, a2=0xff, a3=?.
  The `jal` at 0x1001773c calls write_encoder_reg [0x10017380] with a0=0xe, a1=0xc, a2=0xff, a3=?.
  The `jal` at 0x10017758 calls write_encoder_reg [0x10017380] with a0=0x0, a1=0x55, a2=0xff, a3=?.
  The `jal` at 0x1001776c calls write_encoder_reg [0x10017380] with a0=0x1, a1=0x0, a2=0xff, a3=?.
  The `jal` at 0x10017780 calls write_encoder_reg [0x10017380] with a0=0x2, a1=0x0, a2=0xff, a3=?.
  The `jal` at 0x10017794 calls write_encoder_reg [0x10017380] with a0=0x3, a1=0x0, a2=0xff, a3=?.
  The `jal` at 0x100177a8 calls write_encoder_reg [0x10017380] with a0=0x4, a1=0x64, a2=0xff, a3=?.
  The `jal` at 0x100177bc calls write_encoder_reg [0x10017380] with a0=0x5, a1=0x20, a2=0xff, a3=?.
  The `jal` at 0x100177d0 calls write_encoder_reg [0x10017380] with a0=0x6, a1=0x52, a2=0xff, a3=?.
  The `jal` at 0x100177e4 calls write_encoder_reg [0x10017380] with a0=0x7, a1=0x20, a2=0xff, a3=?.
  The `jal` at 0x100177f8 calls write_encoder_reg [0x10017380] with a0=0x8, a1=0x20, a2=0xff, a3=?.
  The `jal` at 0x1001780c calls write_encoder_reg [0x10017380] with a0=0x9, a1=0x0, a2=0xff, a3=?.
  The `jal` at 0x10017820 calls write_encoder_reg [0x10017380] with a0=0xa, a1=0x0, a2=0xff, a3=?.
  The `jal` at 0x10017834 calls write_encoder_reg [0x10017380] with a0=0xb, a1=0x0, a2=0xff, a3=?.
  The `jal` at 0x10017848 calls write_encoder_reg [0x10017380] with a0=0xc, a1=0x0, a2=0xff, a3=?.
  The `jal` at 0x1001785c calls write_encoder_reg [0x10017380] with a0=0xd, a1=0x0, a2=0xff, a3=?.
  The `jal` at 0x10017890 calls venice_set_vcreg [0x1000fce8] with a0=0xb400, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x100178a4 calls venice_set_vcreg [0x1000fce8] with a0=0xb401, a1=0x4f, a2=0x0, a3=?.
  The `jal` at 0x100178b8 calls venice_set_vcreg [0x1000fce8] with a0=0xb402, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x100178cc calls venice_set_vcreg [0x1000fce8] with a0=0xb403, a1=0xa, a2=0x0, a3=?.
  The `jal` at 0x100178e0 calls venice_set_vcreg [0x1000fce8] with a0=0xb404, a1=0x17, a2=0x0, a3=?.
  The `jal` at 0x100178f4 calls venice_set_vcreg [0x1000fce8] with a0=0xb405, a1=0x64, a2=0x0, a3=?.
  The `jal` at 0x10017924 calls venice_set_vcreg [0x1000fce8] with a0=0xb400, a1=0x20, a2=0x0, a3=?.
  The `jal` at 0x10017938 calls venice_set_vcreg [0x1000fce8] with a0=0xb401, a1=0x70, a2=0x0, a3=?.
  The `jal` at 0x1001794c calls venice_set_vcreg [0x1000fce8] with a0=0xb402, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x10017960 calls venice_set_vcreg [0x1000fce8] with a0=0xb403, a1=0x40, a2=0x0, a3=?.
  The `jal` at 0x10017974 calls venice_set_vcreg [0x1000fce8] with a0=0xb404, a1=0xb1, a2=0x0, a3=?.
  The `jal` at 0x10017988 calls venice_set_vcreg [0x1000fce8] with a0=0xb405, a1=0x20, a2=0x0, a3=?.
  The `jal` at 0x1001799c calls write_encoder_reg [0x10017380] with a0=0xb406, a1=0x0, a2=0xff, a3=?.
  The `jal` at 0x100179b0 calls write_encoder_reg [0x10017380] with a0=0xe, a1=0x2, a2=0xff, a3=?.
  The `beq` branch at 0x100175e4 targets 0x10017914, is taken when s2(=ret(read_encoder_reg)) == v1(=0x32), and falls through when s2(=ret(read_encoder_reg)) != v1(=0x32).
  The `beq` branch at 0x100175ec targets 0x10017914, is taken when s2(=ret(read_encoder_reg)) == a0(=0x19), and falls through when s2(=ret(read_encoder_reg)) != a0(=0x19).
  The `beq` branch at 0x100175f4 targets 0x10017878, is taken when s1(=ret(read_encoder_reg)) == a1(=0x618), and falls through when s1(=ret(read_encoder_reg)) != a1(=0x618).
  The `beq` branch at 0x10017600 targets 0x10017904, is taken when s1(=ret(read_encoder_reg)) == a2(=0x20d), and falls through when s1(=ret(read_encoder_reg)) != a2(=0x20d).
  The `bne` branch at 0x1001760c targets 0x100176a4, is taken when s1(=ret(read_encoder_reg)) != a3(=0x22b), and falls through when s1(=ret(read_encoder_reg)) == a3(=0x22b).
  The `bne` branch at 0x10017618 targets 0x100176a0, is taken when v0(=ret(read_encoder_reg)) != a4(=0x320), and falls through when v0(=ret(read_encoder_reg)) == a4(=0x320).
  The `beq` branch at 0x10017698 targets 0x10017720 and is always taken.
  The `bne` branch at 0x10017878 targets 0x10017600, is taken when v0(=ret(read_encoder_reg)) != a2(=0x370), and falls through when v0(=ret(read_encoder_reg)) == a2(=0x370).
  The `beq` branch at 0x100178fc targets 0x10017720 and is always taken.
  The `bne` branch at 0x10017904 targets 0x1001760c, is taken when v0(=ret(read_encoder_reg)) != a2(=0x320), and falls through when v0(=ret(read_encoder_reg)) == a2(=0x320).
  The `beq` branch at 0x1001790c targets 0x10017620 and is always taken.
  The `beq` branch at 0x100179b8 targets 0x10017748 and is always taken.
  The return at 0x10017870 has v0 = ret(write_encoder_reg).

- `venice_dg2initVof` in `usr/gfx/gfxinit` at 0x100179c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x100179c0-0x10017b8c (460 bytes).
  It occupies 460 bytes.
  The `lw` at 0x100179dc loads 4 bytes from sym(ven_eeprom_valid) +0x0.
  The `lw` at 0x100179f4 loads 4 bytes from sym(VEN_info) +0x50.
  2 such `lw` accesses load 4 bytes from sym(ven_pipenum) +0x0, including `lw` at 0x10017a14, `lw` at 0x10017a74.
  The `sw` at 0x10017a38 stores 4 bytes to sym(ven_eeprom_valid) +0x0.
  3 such `lw` accesses load 4 bytes from sym(vof_clock_value) +0x0, including `lw` at 0x10017a98, `lw` at 0x10017b04, `lw` at 0x10017b74.
  The `jal` at 0x10017a10 calls loadVS2ModeDG2VOF [0x1001b5ac] with a0=[sym(ven_pipenum)], a1=sym(venice_loaducode), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0x10017a3c calls fprintf with a0=sym(__iob)+32, a1=0x10026c48, a2=?, a3=?.
  The `jalr` at 0x10017a4c calls fprintf with a0=sym(__iob)+32, a1=0x10026c88, a2=?, a3=?.
  The `jal` at 0x10017a78 calls venice_loaducode [0x10011bb8] with a0=[sym(ven_pipenum)], a1=0x10026cb8, a2=0x0, a3=0x0, a4=0x1, a5=0x1, a6=0x0.
  The `jal` at 0x10017a94 calls venice_set_vcreg [0x1000fce8] with a0=0xaf00, a1=[sym(vof_clock_value)], a2=0x0, a3=?.
  The `jalr` at 0x10017aa0 calls sginap with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x10017ac4 calls venice_loadsection_dg2_top [0x10012868] with a0=sym(ven_eeprom)+56, a1=sym(ven_eeprom_valid), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jal` at 0x10017ad8 calls venice_loadsection_dg2_body [0x10012d74] with a0=sym(ven_eeprom)+124, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10017b00 calls venice_set_vcreg [0x1000fce8] with a0=0xaf00, a1=[sym(vof_clock_value)], a2=0x0, a3=?.
  The `jalr` at 0x10017b0c calls sginap with a0=0x2, a1=?, a2=?, a3=?.
  The `jalr` at 0x10017b34 calls fprintf with a0=sym(__iob)+32, a1=0x10026c68, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0x10017b4c calls fprintf with a0=sym(__iob)+32, a1=0x10026cd0, a2=?, a3=?.
  The `jal` at 0x10017b70 calls venice_set_vcreg [0x1000fce8] with a0=0xaf00, a1=[sym(vof_clock_value)], a2=0x0, a3=?.
  The `jalr` at 0x10017b7c calls sginap with a0=0x2, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100179ec targets 0x10017b1c, is taken when at(=[sym(ven_eeprom_valid)]) == 0, and falls through when at(=[sym(ven_eeprom_valid)]) != 0.
  The `beq` branch at 0x100179f8 targets 0x10017ac0, is taken when v1(=[sym(VEN_info)+80]) == 0, and falls through when v1(=[sym(VEN_info)+80]) != 0.
  The `beq` branch at 0x10017a18 targets 0x10017af0, is taken when v0(=ret(loadVS2ModeDG2VOF)) == 0, and falls through when v0(=ret(loadVS2ModeDG2VOF)) != 0.
  The `bltz` branch at 0x10017a80 targets 0x10017b44, is taken when v0(=ret(venice_loaducode)) < 0 (signed), and falls through when v0(=ret(venice_loaducode)) >= 0 (signed).
  The `beq` branch at 0x10017ae0 targets 0x10017b5c, is taken when s0(=ret(venice_loadsection_dg2_top)) == 0, and falls through when s0(=ret(venice_loadsection_dg2_top)) != 0.
  The `beq` branch at 0x10017ae8 targets 0x10017a20 and is always taken.
  The `beq` branch at 0x10017b14 targets 0x10017aac and is always taken.
  The `beq` branch at 0x10017b3c targets 0x10017a48 and is always taken.
  The `beq` branch at 0x10017b54 targets 0x10017a88 and is always taken.
  The `bne` branch at 0x10017b5c targets 0x10017ae8, is taken when v0(=ret(venice_loadsection_dg2_body)) != 0, and falls through when v0(=ret(venice_loadsection_dg2_body)) == 0.
  The `beq` branch at 0x10017b84 targets 0x10017aac and is always taken.
  The return at 0x10017ab8 has v0 = ret(sginap).

- `venice_load_vof` in `usr/gfx/gfxinit` at 0x10017b8c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10017b8c-0x10017cc0 (308 bytes).
  It occupies 308 bytes.
  The `lw` at 0x10017bb0 loads 4 bytes from sym(ven_eeprom_valid) +0x0.
  2 such `sw` accesses store 4 bytes to sym(ven_eeprom_valid) +0x0, including `sw` at 0x10017bb4, `sw` at 0x10017c24.
  The `lw` at 0x10017c20 loads 4 bytes from sym(vof_clock_value) +0x0.
  The `lw` at 0x10017c6c loads 4 bytes from sym(vof_control_reg_value) +0x0.
  The `jal` at 0x10017bbc calls venice_dg2initStopVof [0x10016a48] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10017bd0 calls venice_set_vcreg [0x1000fce8] with a0=0xa33b, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x10017bdc calls venice_dg2initXilinx [0x10016fcc] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10017c00 calls venice_loaducode [0x10011bb8] with a0=0x0, a1=a0 at entry (arg0), a2=0x0, a3=0x0, a4=0x1, a5=0x1, a6=0x0.
  The `jal` at 0x10017c28 calls venice_set_vcreg [0x1000fce8] with a0=0xaf00, a1=[sym(vof_clock_value)], a2=0x0, a3=?.
  The `jalr` at 0x10017c38 calls sginap with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x10017c44 calls venice_dg2initRegs [0x10016048] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10017c50 calls venice_dg2initEncoder [0x10017570] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10017c5c calls venice_dg2resetVof [0x10016a84] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10017c78 calls venice_set_vcreg [0x1000fce8] with a0=0xb100, a1=?, a2=0x0, a3=?.
  The `jalr` at 0x10017c84 calls sginap with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x10017c90 calls venice_dg2_resetDacClk [0x10015ad0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10017cb0 calls perror with a0=0x10026cf0, a1=?, a2=?, a3=?.
  The `bltz` branch at 0x10017c08 targets 0x10017ca8, is taken when v0(=ret(venice_loaducode)) < 0 (signed), and falls through when v0(=ret(venice_loaducode)) >= 0 (signed).
  The `beq` branch at 0x10017cb8 targets 0x10017c14 and is always taken.
  The return at 0x10017ca0 has v0 = ret(venice_dg2_resetDacClk).

- `vs2GeneratePath` in `usr/gfx/gfxinit` at 0x10017dcc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10017dcc-0x10017e34 (104 bytes).
  It occupies 104 bytes.
  The `jal` at 0x10017df8 calls getRMCount [0x10018b10] with a0=a3 at entry (arg3), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10017e18 calls sprintf with a0=a0 at entry (arg0), a1=0x10022cd0, a2=a1 at entry (arg1), a3=ret(getRMCount), a4=a2 at entry (arg2).
  The return at 0x10017e2c has v0 = ret(sprintf).

- `vs2ConsistencyCheck` in `usr/gfx/gfxinit` at 0x10017e34 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10017e34-0x10017fa8 (372 bytes).
  It occupies 372 bytes.
  4 such `lw` accesses load 4 bytes from sym(vs2ProductName) +0x0, including `lw` at 0x10017e88, `lw` at 0x10017f44, `lw` at 0x10017f6c.
  The `jal` at 0x10017e5c calls vs2ProbeBoardType [0x10018f2c] with a0=a0 at entry (arg0), a1=sp-8704, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10017e94 calls syslog with a0=0x2, a1=0x10022cf8, a2=[sym(vs2ProductName)], a3=a0 at entry (arg0), a4=[sym(vs2ProductName)].
  The `jal` at 0x10017eb8 calls venice_get_vcreg [0x1000fcb4] with a0=0xa830, a1=?, a2=?, a3=0x5653.
  The `jal` at 0x10017ed4 calls vs2Open [0x10018e64] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10017ee4 calls getRMCount [0x10018b10] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10017ef8 calls vs2ReadEEPROMData [0x10019da8] with a0=?, a1=sp-8696, a2=?, a3=?.
  The `jal` at 0x10017f1c calls vs2Close [0x10018d64] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10017f48 calls syslog with a0=0x2, a1=0x10022e20, a2=[sym(vs2ProductName)], a3=a0 at entry (arg0).
  The `jalr` at 0x10017f70 calls syslog with a0=0x2, a1=0x10022d50, a2=[sym(vs2ProductName)], a3=a0 at entry (arg0).
  The `jalr` at 0x10017f98 calls syslog with a0=0x2, a1=0x10022da8, a2=[sym(vs2ProductName)], a3=a0 at entry (arg0).
  The `beq` branch at 0x10017e68 targets 0x10017f2c, is taken when v0(=ret(vs2ProbeBoardType)) == 0, and falls through when v0(=ret(vs2ProbeBoardType)) != 0.
  The `beq` branch at 0x10017e70 targets 0x10017eb8, is taken when a0(?) == a3(=0x5653), and falls through when a0(?) != a3(=0x5653).
  The `blez` branch at 0x10017ecc targets 0x10017f58, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `beq` branch at 0x10017f00 targets 0x10017f80, is taken when v0(=ret(vs2ReadEEPROMData)) == 0, and falls through when v0(=ret(vs2ReadEEPROMData)) != 0.
  The `bne` branch at 0x10017f0c targets 0x10017f34, is taken when a5(?) != a4(?), and falls through when a5(?) == a4(?).
  The `beq` branch at 0x10017f24 targets 0x10017ea4 and is always taken.
  The `beq` branch at 0x10017f2c targets 0x10017ea0 and is always taken.
  The `beq` branch at 0x10017f50 targets 0x10017f18 and is always taken.
  The `beq` branch at 0x10017f78 targets 0x10017ea0 and is always taken.
  The `beq` branch at 0x10017fa0 targets 0x10017f18 and is always taken.
  The return at 0x10017eb0 has v0 = one of -0x4, -0x3, -0x2, -0x5, -0x1, 0x0.

- `vs2GetHeadInfo` in `usr/gfx/gfxinit` at 0x10017fa8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10017fa8-0x100180b4 (268 bytes).
  It occupies 268 bytes.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10018000, `lw` at 0x10018014, `lw` at 0x1001802c.
  6 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10018020, `sw` at 0x10018038, `sw` at 0x10018050.
  The `lw` at 0x10018074 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x10018080 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `jal` at 0x10017fd4 calls vs2Open [0x10018e64] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10017fe8 calls vs2ReadEEPROMData [0x10019da8] with a0=ret(vs2Open), a1=sp-8688, a2=?, a3=?.
  The `jal` at 0x10018094 calls vs2Close [0x10018d64] with a0=ret(vs2Open), a1=?, a2=sp-8688, a3=?.
  The `bgtz` branch at 0x1001806c targets 0x10018058, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `bne` branch at 0x10018084 targets 0x10018000, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The return at 0x100180ac has v0 = ret(vs2Close).

- `vs2Initialize` in `usr/gfx/gfxinit` at 0x100180b4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x100180b4-0x10018110 (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x100180d4 calls vs2Open [0x10018e64] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100180e8 calls venice_vs2init [0x1001baa0] with a0=ret(vs2Open), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x100180f8 calls vs2Close [0x10018d64] with a0=ret(vs2Open), a1=?, a2=?, a3=?.
  The return at 0x10018108 has v0 = ret(vs2Close).

- `vs2LoadVdrc` in `usr/gfx/gfxinit` at 0x10018148 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10018148-0x10018248 (256 bytes).
  It occupies 256 bytes.
  The `lw` at 0x100181dc loads 4 bytes from sym(vs2ProductName) +0x0.
  The `jal` at 0x10018164 calls vs2Open [0x10018e64] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10018178 calls vs2ReadEEPROMData [0x10019da8] with a0=ret(vs2Open), a1=sp-9696, a2=?, a3=?.
  The `jal` at 0x10018190 calls generateFilename [0x10017cc0] with a0=sp-2532, a1=0x10022ea0, a2=sp-1048, a3=?.
  The `jal` at 0x1001819c calls venice_get_vcreg [0x1000fcb4] with a0=0xa830, a1=?, a2=?, a3=?.
  The `jalr` at 0x100181c8 calls fopen with a0=sp-1048, a1=0x10027eb8, a2=?, a3=0x20000.
  The `jalr` at 0x100181f0 calls syslog with a0=0x1, a1=0x10022eb0, a2=[sym(vs2ProductName)], a3=sp-1048.
  The `jalr` at 0x10018208 calls (unknown callee) with a0=ret(fopen), a1=?, a2=[sym(vs2ProductName)], a3=?.
  The `jalr` at 0x10018214 calls fclose with a0=ret(fopen), a1=?, a2=?, a3=?.
  The `jal` at 0x10018220 calls vs2Close [0x10018d64] with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x100181b0 targets 0x1001823c, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `bne` branch at 0x100181d8 targets 0x10018200, is taken when v0(=ret(fopen)) != 0, and falls through when v0(=ret(fopen)) == 0.
  The `beq` branch at 0x100181f8 targets 0x1001821c and is always taken.
  The `beq` branch at 0x10018240 targets 0x100181bc and is always taken.
  The return at 0x10018234 has v0 = ret(vs2Close).

- `vs2ManagedArea` in `usr/gfx/gfxinit` at 0x10018248 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10018248-0x100182bc (116 bytes).
  It occupies 116 bytes.
  The `sw` at 0x1001828c stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0x100182a4 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jal` at 0x1001826c calls vs2Open [0x10018e64] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10018280 calls vs2ReadEEPROMData [0x10019da8] with a0=ret(vs2Open), a1=sp-8688, a2=?, a3=?.
  The `jal` at 0x100182a0 calls vs2Close [0x10018d64] with a0=?, a1=?, a2=?, a3=?.
  The return at 0x100182b4 has v0 = ret(vs2Close).

- `vs2ReadRegisterBlock` in `usr/gfx/gfxinit` at 0x100182bc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x100182bc-0x1001834c (144 bytes).
  It occupies 144 bytes.
  The `sb` at 0x1001831c stores 1 byte to ?.
  The `jal` at 0x1001830c calls vs2ReadByte [0x1001834c] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100182f8 targets 0x10018328, is taken when s2(=a3-1) == s4(=-0x1), and falls through when s2(=a3-1) != s4(=-0x1).
  The `bne` branch at 0x10018320 targets 0x10018300, is taken when s2(?) != s4(=-0x1), and falls through when s2(?) == s4(=-0x1).
  The return at 0x10018344 has v0 = one of ?, ret(vs2ReadByte).

- `vs2RegisterClearBit` in `usr/gfx/gfxinit` at 0x10018360 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10018360-0x100183c8 (104 bytes).
  It occupies 104 bytes.
  The `jal` at 0x1001838c calls vs2ReadByte [0x1001834c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100183ac calls vs2WriteByte [0x10018864] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The return at 0x100183c0 has v0 = ret(vs2WriteByte).

- `vs2RegisterSetBit` in `usr/gfx/gfxinit` at 0x100183c8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x100183c8-0x1001842c (100 bytes).
  It occupies 100 bytes.
  The `jal` at 0x100183f4 calls vs2ReadByte [0x1001834c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10018410 calls vs2WriteByte [0x10018864] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The return at 0x10018424 has v0 = ret(vs2WriteByte).

- `vs2ReadStatus` in `usr/gfx/gfxinit` at 0x1001842c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001842c-0x100184b4 (136 bytes).
  It occupies 136 bytes.
  The `jal` at 0x10018454 calls vs2ReadByte [0x1001834c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10018468 calls vs2ReadByte [0x1001834c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x100184a4 calls vs2ReadByte [0x1001834c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `bne` branch at 0x1001847c targets 0x100184a0, is taken when v1(?) != a0(?), and falls through when v1(?) == a0(?).
  The `beq` branch at 0x100184ac targets 0x10018484 and is always taken.
  The return at 0x10018498 has v0 = ?.

- `vs2Setmon` in `usr/gfx/gfxinit` at 0x100184b4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x100184b4-0x1001877c (712 bytes).
  It occupies 712 bytes.
  4 such `lw` accesses load 4 bytes from sym(vs2ProductName) +0x0, including `lw` at 0x10018530, `lw` at 0x10018580, `lw` at 0x10018628.
  The `lw` at 0x10018600 loads 4 bytes from ?.
  The `ld` at 0x100186f0 loads 8 bytes from ?.
  The `sd` at 0x10018700 stores 8 bytes to ?.
  The `jal` at 0x100184ec calls vs2Open [0x10018e64] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100184fc calls getRMCount [0x10018b10] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1001850c calls vs2ProbeBoardType [0x10018f2c] with a0=a0 at entry (arg0), a1=sp-10960, a2=?, a3=?.
  The `jalr` at 0x1001854c calls fprintf with a0=sym(__iob)+32, a1=0x10022f70, a2=[sym(vs2ProductName)], a3=sym(vs2ProductName).
  The `jalr` at 0x10018568 calls fprintf with a0=sym(__iob)+32, a1=0x10022fb0, a2=[sym(vs2ProductName)], a3=sym(vs2ProductName).
  The `jalr` at 0x10018584 calls fprintf with a0=sym(__iob)+32, a1=0x10023018, a2=[sym(vs2ProductName)], a3=?.
  The `jalr` at 0x10018590 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x100185bc calls vs2ReadEEPROMData [0x10019da8] with a0=ret(vs2Open), a1=sp-10952, a2=?, a3=sym(vs2ProductName).
  The `jalr` at 0x100185d4 calls strncpy with a0=sp-3788, a1=a1 at entry (arg1), a2=0x400, a3=?.
  The `jal` at 0x10018604 calls generateFilename [0x10017cc0] with a0=a1 at entry (arg1), a1=?, a2=sp-2304, a3=?.
  The `jalr` at 0x1001862c calls printf with a0=0x10022ed8, a1=sp-2304, a2=[sym(vs2ProductName)], a3=a2 at entry (arg2).
  The `jal` at 0x10018640 calls loadVofToDataStructure [0x1001b130] with a0=sp-2304, a1=?, a2=?, a3=?.
  The `jal` at 0x10018688 calls generateFilename [0x10017cc0] with a0=a1 at entry (arg1), a1=0x10022ef8, a2=sp-1280, a3=?.
  The `jalr` at 0x10018698 calls fopen with a0=sp-1280, a1=0x10027eb8, a2=?, a3=?.
  The `jalr` at 0x100186b8 calls fread with a0=sp-256, a1=0xa8, a2=0x1, a3=ret(fopen).
  The `jalr` at 0x100186c4 calls fclose with a0=ret(fopen), a1=?, a2=?, a3=?.
  The `jalr` at 0x10018728 calls printf with a0=0x10022f48, a1=[sym(vs2ProductName)], a2=0x4b, a3=?, a4=sp-2472, a7=sym(printf).
  The `jal` at 0x1001873c calls vs2WriteEEPROMData [0x10019eac] with a0=ret(vs2Open), a1=sp-10952, a2=0x0, a3=?.
  The `jal` at 0x10018748 calls vs2Close [0x10018d64] with a0=ret(vs2Open), a1=?, a2=?, a3=?.
  The `jalr` at 0x10018760 calls perror with a0=0x10022f08, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001876c calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1001851c targets 0x1001852c, is taken when v0(=ret(vs2ProbeBoardType)) == 0, and falls through when v0(=ret(vs2ProbeBoardType)) != 0.
  The `beq` branch at 0x10018528 targets 0x100185b4, is taken when a1(?) == v1(=0x5653), and falls through when a1(?) != v1(=0x5653).
  The `bne` branch at 0x10018534 targets 0x1001855c, is taken when v0(=ret(vs2ProbeBoardType)) != 0, and falls through when v0(=ret(vs2ProbeBoardType)) == 0.
  The `beq` branch at 0x10018554 targets 0x10018570 and is always taken.
  The `beq` branch at 0x10018610 targets 0x10018638, is taken when a3(=a2) == 0, and falls through when a3(=a2) != 0.
  The `bne` branch at 0x10018670 targets 0x100185f8, is taken when a3(?) < 0x2 (signed), and falls through when a3(?) >= 0x2 (signed).
  The `beq` branch at 0x100186a0 targets 0x10018758, is taken when v0(=ret(fopen)) == 0, and falls through when v0(=ret(fopen)) != 0.
  The `bgtz` branch at 0x100186fc targets 0x100186e8, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The `beq` branch at 0x10018750 targets 0x1001859c and is always taken.
  The `beq` branch at 0x10018774 targets 0x100186ac and is always taken.
  The return at 0x100185ac has v0 = one of ret(exit), ret(vs2Close).

- `vs2WriteRegisterBlock` in `usr/gfx/gfxinit` at 0x100187d4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x100187d4-0x10018864 (144 bytes).
  It occupies 144 bytes.
  The `lbu` at 0x1001882c loads 1 byte from ?.
  The `jal` at 0x10018828 calls vs2WriteByte [0x10018864] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10018810 targets 0x10018840, is taken when s2(=a3-1) == s4(=-0x1), and falls through when s2(=a3-1) != s4(=-0x1).
  The `bne` branch at 0x10018838 targets 0x10018818, is taken when s2(?) != s4(=-0x1), and falls through when s2(?) == s4(=-0x1).
  The return at 0x1001885c has v0 = one of ?, 0x2.

- `getVeniceInfo` in `usr/gfx/gfxinit` at 0x100188e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x100188e0-0x10018b10 (560 bytes).
  It occupies 560 bytes.
  The `lw` at 0x100188f8 loads 4 bytes from sym(ven_pipeMapped) +0x0.
  3 such `lw` accesses load 4 bytes from sym(ven_gfxfd) +0x0, including `lw` at 0x10018924, `lw` at 0x10018980, `lw` at 0x10018a14.
  6 such `lw` accesses load 4 bytes from sym(vs2ProductName) +0x0, including `lw` at 0x10018944, `lw` at 0x100189b8, `lw` at 0x10018a90.
  The `lw` at 0x10018a3c loads 4 bytes from ?.
  The `sw` at 0x10018a48 stores 4 bytes to ?.
  The `jalr` at 0x10018920 calls ioctl with a0=[sym(ven_gfxfd)], a1=0x65, a2=0x0, a3=a3 at entry (arg3).
  The `jalr` at 0x10018948 calls syslog with a0=0x2, a1=0x10023100, a2=[sym(vs2ProductName)], a3=?.
  The `jalr` at 0x1001897c calls ioctl with a0=[sym(ven_gfxfd)], a1=0x66, a2=sp-96, a3=?.
  The `jalr` at 0x10018998 calls strncmp with a0=sp-80, a1=0x10027ebc, a2=0x2, a3=-0x1.
  The `jalr` at 0x100189bc calls syslog with a0=0x2, a1=0x10023170, a2=[sym(vs2ProductName)], a3=?.
  The `jalr` at 0x100189dc calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10018a10 calls ioctl with a0=[sym(ven_gfxfd)], a1=0x66, a2=sp-96, a3=?.
  The `jalr` at 0x10018a50 calls free with a0=?, a1=a1 at entry (arg1), a2=?, a3=-0x1.
  The `jalr` at 0x10018a70 calls fprintf with a0=sym(__iob)+32, a1=0x10023078, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10018a94 calls syslog with a0=0x2, a1=0x10023130, a2=[sym(vs2ProductName)], a3=-0x1.
  The `jalr` at 0x10018ab8 calls syslog with a0=0x2, a1=0x100230b8, a2=[sym(vs2ProductName)], a3=?.
  The `jalr` at 0x10018adc calls syslog with a0=0x2, a1=0x100231b0, a2=[sym(vs2ProductName)], a3=?.
  The `jalr` at 0x10018b00 calls syslog with a0=0x2, a1=0x10023130, a2=[sym(vs2ProductName)], a3=-0x1, a5=0x0.
  The `beq` branch at 0x10018908 targets 0x10018a60, is taken when at(=[sym(ven_pipeMapped)]) == 0, and falls through when at(=[sym(ven_pipeMapped)]) != 0.
  The `bltz` branch at 0x10018928 targets 0x10018aa4, is taken when v0(=ret(ioctl)) < 0 (signed), and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `bne` branch at 0x10018930 targets 0x10018958, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x10018950 targets 0x100189c8 and is always taken.
  The `beq` branch at 0x10018988 targets 0x10018a80, is taken when v0(=ret(ioctl)) == a3(=-0x1), and falls through when v0(=ret(ioctl)) != a3(=-0x1).
  The `beq` branch at 0x100189a0 targets 0x100189dc, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0x100189e4 targets 0x10018ac8, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `beq` branch at 0x10018a20 targets 0x10018aec, is taken when v0(=ret(ioctl)) == a3(=-0x1), and falls through when v0(=ret(ioctl)) != a3(=-0x1).
  The `bgtz` branch at 0x10018a44 targets 0x10018a30, is taken when a4(?) > 0 (signed), and falls through when a4(?) <= 0 (signed).
  The `beq` branch at 0x10018a58 targets 0x100189c8 and is always taken.
  The `beq` branch at 0x10018a78 targets 0x100189c8 and is always taken.
  The `beq` branch at 0x10018a9c targets 0x100189c8 and is always taken.
  The `beq` branch at 0x10018ac0 targets 0x100189c8 and is always taken.
  The `beq` branch at 0x10018ae4 targets 0x100189c8 and is always taken.
  The `beq` branch at 0x10018b08 targets 0x100189c8 and is always taken.
  The return at 0x100189d4 has v0 = one of -0x1, 0x0.

- `vs2Close` in `usr/gfx/gfxinit` at 0x10018d64 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10018d64-0x10018dbc (88 bytes).
  It occupies 88 bytes.
  The `jal` at 0x10018d8c calls (unnamed) [0x10018d14] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10018d9c calls free with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0x10018db4 has v0 = ret(0x10018d14).

- `vs2Delay` in `usr/gfx/gfxinit` at 0x10018dbc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10018dbc-0x10018e64 (168 bytes).
  It occupies 168 bytes.
  The `jalr` at 0x10018de0 calls _sysconf with a0=0x3, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10018e18 calls sginap with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10018e34 calls _sysconf with a0=0x3, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10018e0c targets 0x10018e30, is taken when v0(?) >= 0x2 (signed), and falls through when v0(?) < 0x2 (signed).
  The `beq` branch at 0x10018e5c targets 0x10018e18 and is always taken.
  The return at 0x10018e28 has v0 = ret(sginap).

- `vs2Open` in `usr/gfx/gfxinit` at 0x10018e64 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10018e64-0x10018ef0 (140 bytes).
  It occupies 140 bytes.
  The `sw` at 0x10018ea0 stores 4 bytes to ret(malloc) +0x4.
  The `sw` at 0x10018ea8 stores 4 bytes to ret(malloc) +0x8.
  The `lw` at 0x10018eb4 loads 4 bytes from ret(malloc) +0x4.
  The `jalr` at 0x10018e8c calls malloc with a0=0x14, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10018eac calls (unnamed) [0x10018b48] with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0x10018ee0 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10018ebc targets 0x10018edc, is taken when ra(=[ret(malloc)+4]) == at(=-0x1), and falls through when ra(=[ret(malloc)+4]) != at(=-0x1).
  The `beq` branch at 0x10018ee8 targets 0x10018ec4 and is always taken.
  The return at 0x10018ed4 has v0 = one of ret(malloc), 0x0.

- `vs2ProbeBoardType` in `usr/gfx/gfxinit` at 0x10018f2c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10018f2c-0x1001906c (320 bytes).
  It occupies 320 bytes.
  The `lw` at 0x1001901c loads 4 bytes from sym(vs2ProductName) +0x0.
  The `sw` at 0x10019068 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jal` at 0x10018f54 calls (unnamed) [0x10018b48] with a0=a0 at entry (arg0), a1=sp-96, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10018f84 calls signal with a0=0xb, a1=0x10018ef0, a2=?, a3=?.
  The `jalr` at 0x10018f98 calls signal with a0=0xa, a1=0x10018ef0, a2=?, a3=?.
  The `jalr` at 0x10018fac calls setjmp with a0=0x10028308, a1=?, a2=?, a3=?.
  The `jalr` at 0x10018fc8 calls signal with a0=0xb, a1=?, a2=?, a3=?.
  The `jalr` at 0x10018fd8 calls signal with a0=0xa, a1=?, a2=?, a3=?.
  The `jal` at 0x10018fe8 calls (unnamed) [0x10018d14] with a0=sp-96, a1=?, a2=?, a3=?.
  The `jalr` at 0x10019020 calls syslog with a0=0x6, a1=0x10023330, a2=[sym(vs2ProductName)], a3=?.
  The `jal` at 0x10019034 calls vs2ReadByte [0x1001834c] with a0=sp-96, a1=0x0, a2=?, a3=?.
  The `jal` at 0x1001904c calls vs2ReadEEPROMBlock [0x10019bc4] with a0=sp-96, a1=0x0, a2=sp-72, a3=0x4.
  The `beq` branch at 0x10018f68 targets 0x1001900c, is taken when at(?) == v0(=-0x1), and falls through when at(?) != v0(=-0x1).
  The `beq` branch at 0x10018fb4 targets 0x10019030, is taken when v0(=ret(setjmp)) == 0, and falls through when v0(=ret(setjmp)) != 0.
  The `beq` branch at 0x10019028 targets 0x10018ff0 and is always taken.
  The `beq` branch at 0x10019064 targets 0x10018fc0 and is always taken.
  The return at 0x10019004 has v0 = one of 0x0, 0x1.

- `venice_get_vs2_xilinx_config` in `usr/gfx/gfxinit` at 0x1001906c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001906c-0x100191ac (320 bytes).
  It occupies 320 bytes.
  3 such `lw` accesses load 4 bytes from (sym(vs2_xilii_files) + (a0 << 0x2)) +0x0, including `lw` at 0x100190a8, `lw` at 0x10019174, `lw` at 0x10019194.
  The `lbu` at 0x100190b0 loads 1 byte from abs 0x10028208.
  The `lw` at 0x10019198 loads 4 bytes from sym(vs2ProductName) +0x0.
  The `jal` at 0x100190a4 calls venice_grok_vs2_fname [0x100191ac] with a0=[(sym(vs2_xilii_files) + (a0 << 0x2))], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10019104 calls printf with a0=0x10023408, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x10019118 calls read_xilinx_file [0x1001e298] with a0=one of 0x6, 0x8, a1=0x10028208, a2=?, a3=?.
  The `jalr` at 0x10019158 calls printf with a0=0x10023440, a1=0x10028208, a2=?, a3=?.
  The `jalr` at 0x10019178 calls printf with a0=0x10023378, a1=[(sym(vs2_xilii_files) + (a0 << 0x2))], a2=?, a3=?.
  The `jalr` at 0x1001919c calls syslog with a0=0x2, a1=0x100233b0, a2=[(sym(vs2_xilii_files) + (a0 << 0x2))], a3=[sym(vs2ProductName)].
  The `beq` branch at 0x100190b4 targets 0x10019168, is taken when t8(=[0x10028208]:1) == 0, and falls through when t8(=[0x10028208]:1) != 0.
  The `beq` branch at 0x100190c0 targets 0x10019114, is taken when s0(=a0) == 0, and falls through when s0(=a0) != 0.
  The `beq` branch at 0x100190cc targets 0x10019114, is taken when s0(=a0) == t9(=0x1), and falls through when s0(=a0) != t9(=0x1).
  The `beq` branch at 0x100190d4 targets 0x10019114, is taken when s0(=a0) == ra(=0x4), and falls through when s0(=a0) != ra(=0x4).
  The `beq` branch at 0x100190dc targets 0x10019144, is taken when s0(=a0) == at(=0x2), and falls through when s0(=a0) != at(=0x2).
  The `beq` branch at 0x100190e8 targets 0x10019144, is taken when s0(=a0) == v1(=0x3), and falls through when s0(=a0) != v1(=0x3).
  The `beq` branch at 0x100190f0 targets 0x10019144, is taken when s0(=a0) == a1(=0x5), and falls through when s0(=a0) != a1(=0x5).
  The `beq` branch at 0x1001910c targets 0x1001912c and is always taken.
  The `beq` branch at 0x10019120 targets 0x1001914c, is taken when v0(=ret(read_xilinx_file)) == 0, and falls through when v0(=ret(read_xilinx_file)) != 0.
  The `beq` branch at 0x10019144 targets 0x10019118 and is always taken.
  The `beq` branch at 0x10019160 targets 0x1001912c and is always taken.
  The `beq` branch at 0x100191a4 targets 0x100190c0 and is always taken.
  The return at 0x1001913c has v0 = one of 0x0, ret(read_xilinx_file).

- `venice_grok_vs2_fname` in `usr/gfx/gfxinit` at 0x100191ac (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x100191ac-0x100192c0 (276 bytes).
  It occupies 276 bytes.
  The `lbu` at 0x100191bc loads 1 byte from a0 (arg0 at entry) +0x0.
  2 such `sb` accesses store 1 byte to abs 0x10028208, including `sb` at 0x10019254, `sb` at 0x10019298.
  The `jalr` at 0x100191f4 calls getenv with a0=0x10023488, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x2e.
  The `jalr` at 0x10019210 calls strcpy with a0=0x10028208, a1=ret(getenv), a2=?, a3=?.
  The `jalr` at 0x10019228 calls strcat with a0=0x10028208, a1=0x10023498, a2=?, a3=?.
  The `jalr` at 0x10019238 calls strcat with a0=0x10028208, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x10019268 calls strcpy with a0=0x10028208, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x2e.
  The `jalr` at 0x1001927c calls access with a0=0x10028208, a1=0x4, a2=?, a3=?.
  The `beq` branch at 0x100191dc targets 0x10019258, is taken when v0(=[a0]:1) == at(=0x2f), and falls through when v0(=[a0]:1) != at(=0x2f).
  The `beq` branch at 0x100191e4 targets 0x1001925c, is taken when v0(=[a0]:1) == a4(=0x2e), and falls through when v0(=[a0]:1) != a4(=0x2e).
  The `beq` branch at 0x100191fc targets 0x10019248, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `beq` branch at 0x10019240 targets 0x10019274 and is always taken.
  The `beq` branch at 0x10019250 targets 0x1001921c and is always taken.
  The `bne` branch at 0x10019288 targets 0x1001929c, is taken when v0(=ret(access)) != t8(=-0x1), and falls through when v0(=ret(access)) == t8(=-0x1).
  The `bne` branch at 0x10019290 targets 0x100192b8, is taken when s1(=one of 0x0, 0x1) != 0, and falls through when s1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x100192b8 targets 0x10019250 and is always taken.
  The return at 0x100192b0 has v0 = ret(access).

- `venice_free_vs2_xilinx_config` in `usr/gfx/gfxinit` at 0x100192c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x100192c0-0x100192f4 (52 bytes).
  It occupies 52 bytes.
  The `jalr` at 0x100192dc calls free with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100192ec has v0 = ret(free).

- `vs2_loaducode` in `usr/gfx/gfxinit` at 0x100192f4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x100192f4-0x10019848 (1364 bytes).
  It occupies 1364 bytes.
  The `jalr` at 0x10019330 calls getenv with a0=0x10023488, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10019344 calls strcpy with a0=sp-4016, a1=ret(getenv), a2=?, a3=?.
  The `jalr` at 0x10019364 calls strcat with a0=sp-4016, a1=0x100234b8, a2=?, a3=?.
  The `jalr` at 0x10019378 calls strcat with a0=sp-4016, a1=a5 at entry (arg5), a2=?, a3=?.
  The `jalr` at 0x1001939c calls fprintf with a0=sym(__iob)+32, a1=0x100234d8, a2=sp-4016, a3=?.
  The `jalr` at 0x100193b0 calls fopen with a0=sp-4016, a1=0x10027ec0, a2=?, a3=?.
  The `jalr` at 0x100193e0 calls fread with a0=sp-3760, a1=0x1, a2=0x2c, a3=ret(fopen).
  The `jalr` at 0x10019404 calls fprintf with a0=sym(__iob)+32, a1=0x10023518, a2=sp-4016, a3=?.
  The `jalr` at 0x10019410 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10019434 calls fprintf with a0=sym(__iob)+32, a1=0x10023538, a2=?, a3=0x4581.
  The `jalr` at 0x10019474 calls fread with a0=sp-3712, a1=0x1, a2=0x1, a3=ret(fopen).
  The `jalr` at 0x10019498 calls fread with a0=sp-3708, a1=0x1, a2=0x4, a3=ret(fopen).
  The `jalr` at 0x100194b8 calls fprintf with a0=sym(__iob)+32, a1=0x10023560, a2=sp-4016, a3=?.
  The `jalr` at 0x100194c4 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x100194dc calls fread with a0=sp-3704, a1=0x1, a2=0x4, a3=ret(fopen).
  The `jalr` at 0x100194fc calls fprintf with a0=sym(__iob)+32, a1=0x10023560, a2=sp-4016, a3=?.
  The `jalr` at 0x10019508 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10019530 calls fprintf with a0=sym(__iob)+32, a1=0x10023588, a2=sp-4016, a3=?.
  The `jalr` at 0x10019544 calls fprintf with a0=sym(__iob)+32, a1=0x100235b0, a2=?, a3=?.
  The `jalr` at 0x10019560 calls fprintf with a0=sym(__iob)+32, a1=0x100235e0, a2=?, a3=0x44.
  The `jalr` at 0x1001956c calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10019598 calls fread with a0=sp-3712, a1=0x1, a2=0x1, a3=ret(fopen).
  The `jalr` at 0x100195b4 calls fprintf with a0=sym(__iob)+32, a1=0x10023560, a2=sp-4016, a3=?.
  The `jalr` at 0x100195c0 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x100195e8 calls fread with a0=sp-3696, a1=0x1, a2=0x44, a3=ret(fopen).
  The `jalr` at 0x10019608 calls fprintf with a0=sym(__iob)+32, a1=0x10023560, a2=sp-4016, a3=?.
  The `jalr` at 0x10019614 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10019630 calls fread with a0=sp-3708, a1=0x1, a2=0x4, a3=ret(fopen).
  The `jalr` at 0x10019650 calls fprintf with a0=sym(__iob)+32, a1=0x10023560, a2=sp-4016, a3=?.
  The `jalr` at 0x1001965c calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10019674 calls fread with a0=sp-3704, a1=0x1, a2=0x4, a3=ret(fopen).
  The `jalr` at 0x10019694 calls fprintf with a0=sym(__iob)+32, a1=0x10023560, a2=sp-4016, a3=?.
  The `jalr` at 0x100196a0 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x100196c8 calls fprintf with a0=sym(__iob)+32, a1=0x10023588, a2=sp-4016, a3=?.
  The `jalr` at 0x100196dc calls fprintf with a0=sym(__iob)+32, a1=0x10023600, a2=?, a3=?.
  The `jalr` at 0x100196e8 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10019714 calls fread with a0=sp-3712, a1=0x1, a2=0x1, a3=ret(fopen).
  The `jalr` at 0x10019730 calls fprintf with a0=sym(__iob)+32, a1=0x10023560, a2=sp-4016, a3=?.
  The `jalr` at 0x1001973c calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10019764 calls fread with a0=sp-3624, a1=0x1, a2=0xda8, a3=ret(fopen).
  The `jalr` at 0x10019784 calls fprintf with a0=sym(__iob)+32, a1=0x10023560, a2=sp-4016, a3=?.
  The `jalr` at 0x10019790 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x100197c0 calls loadVS2VOFFromData [0x1001b670] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=sp-3696, a6=sp-3624.
  The `jalr` at 0x10019800 calls fprintf with a0=sym(__iob)+32, a1=0x10023560, a2=sp-4016, a3=?.
  The `jalr` at 0x1001982c calls fprintf with a0=sym(__iob)+32, a1=0x100234e8, a2=sp-4016, a3=?.
  The `jalr` at 0x10019838 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10019338 targets 0x10019354, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `beq` branch at 0x1001934c targets 0x1001935c and is always taken.
  The `beq` branch at 0x100193c0 targets 0x1001981c, is taken when v0(=ret(fopen)) == 0, and falls through when v0(=ret(fopen)) != 0.
  The `beq` branch at 0x100193ec targets 0x1001941c, is taken when t8(=0x2c) == v0(=ret(fread)), and falls through when t8(=0x2c) != v0(=ret(fread)).
  The `beq` branch at 0x10019420 targets 0x10019444, is taken when a2(?) == a3(=0x4581), and falls through when a2(?) != a3(=0x4581).
  The `beq` branch at 0x1001943c targets 0x100197cc and is always taken.
  The `beq` branch at 0x10019454 targets 0x10019488, is taken when a2(?) == a3(=0x2c), and falls through when a2(?) != a3(=0x2c).
  The `bne` branch at 0x1001947c targets 0x100197f0, is taken when s6(=0x1) != v0(=ret(fread)), and falls through when s6(=0x1) == v0(=ret(fread)).
  The `bne` branch at 0x10019484 targets 0x10019464, is taken when s2(?) != s7(=-0x1), and falls through when s2(?) == s7(=-0x1).
  The `beq` branch at 0x100194a4 targets 0x100194cc, is taken when s2(=0x4) == v0(=ret(fread)), and falls through when s2(=0x4) != v0(=ret(fread)).
  The `beq` branch at 0x100194e4 targets 0x10019514, is taken when s2(=0x4) == v0(=ret(fread)), and falls through when s2(=0x4) != v0(=ret(fread)).
  The `beq` branch at 0x10019518 targets 0x10019578, is taken when a2(?) == v0(=0x44), and falls through when a2(?) != v0(=0x44).
  The `beq` branch at 0x10019580 targets 0x100195d4, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x100195a0 targets 0x100195c8, is taken when s6(=0x1) == v0(=ret(fread)), and falls through when s6(=0x1) != v0(=ret(fread)).
  The `bne` branch at 0x100195cc targets 0x1001958c, is taken when s2(?) != s7(=-0x1), and falls through when s2(?) == s7(=-0x1).
  The `beq` branch at 0x100195f0 targets 0x10019620, is taken when s2(=0x44) == v0(=ret(fread)), and falls through when s2(=0x44) != v0(=ret(fread)).
  The `beq` branch at 0x10019638 targets 0x10019668, is taken when s2(=0x4) == v0(=ret(fread)), and falls through when s2(=0x4) != v0(=ret(fread)).
  The `beq` branch at 0x1001967c targets 0x100196ac, is taken when s2(=0x4) == v0(=ret(fread)), and falls through when s2(=0x4) != v0(=ret(fread)).
  The `beq` branch at 0x100196b0 targets 0x100196f4, is taken when a2(?) == s6(=0xda8), and falls through when a2(?) != s6(=0xda8).
  The `beq` branch at 0x100196f4 targets 0x10019750, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1001971c targets 0x10019744, is taken when s6(=0x1) == v0(=ret(fread)), and falls through when s6(=0x1) != v0(=ret(fread)).
  The `bne` branch at 0x10019748 targets 0x10019708, is taken when s2(?) != s7(=-0x1), and falls through when s2(?) == s7(=-0x1).
  The `beq` branch at 0x1001976c targets 0x1001979c, is taken when s2(=0xda8) == v0(=ret(fread)), and falls through when s2(=0xda8) != v0(=ret(fread)).
  The `beq` branch at 0x10019814 targets 0x100197cc and is always taken.
  The `beq` branch at 0x10019840 targets 0x100193cc and is always taken.
  The return at 0x100197e8 has v0 = one of 0x0, 0x1.

- `vs2GetShadow` in `usr/gfx/gfxinit` at 0x10019848 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10019848-0x100198a4 (92 bytes).
  It occupies 92 bytes.
  The `lw` at 0x10019860 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `jalr` at 0x1001986c calls ioctl with a0=[a0+16], a1=0x272f, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jalr` at 0x10019894 calls perror with a0=0x10023638, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10019878 targets 0x1001988c, is taken when v0(=ret(ioctl)) == v1(=-0x1), and falls through when v0(=ret(ioctl)) != v1(=-0x1).
  The `beq` branch at 0x1001989c targets 0x10019880 and is always taken.
  The return at 0x10019884 has v0 = one of ret(ioctl), ret(perror).

- `vs2SetShadow` in `usr/gfx/gfxinit` at 0x100198a4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x100198a4-0x1001990c (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x100198bc loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `jalr` at 0x100198c8 calls ioctl with a0=[a0+16], a1=0x272e, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jalr` at 0x100198fc calls syslog with a0=0x2, a1=0x10023670, a2=0x100236a8, a3=?.
  The `beq` branch at 0x100198d4 targets 0x100198e8, is taken when v0(=ret(ioctl)) == v1(=-0x1), and falls through when v0(=ret(ioctl)) != v1(=-0x1).
  The `beq` branch at 0x10019904 targets 0x100198dc and is always taken.
  The return at 0x100198e0 has v0 = one of ret(ioctl), ret(syslog).

- `vs2GetHphaseShadow` in `usr/gfx/gfxinit` at 0x1001990c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001990c-0x10019968 (92 bytes).
  It occupies 92 bytes.
  The `sw` at 0x10019944 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0x1001995c stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jal` at 0x10019934 calls vs2GetShadow [0x10019848] with a0=a0 at entry (arg0), a1=sp-112, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10019960 has v0 = 0x0.

- `vs2DefaultEEPROMValues` in `usr/gfx/gfxinit` at 0x100199e4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x100199e4-0x10019bc4 (480 bytes).
  It occupies 480 bytes.
  The `lw` at 0x10019a10 loads 4 bytes from abs 0x100236d8.
  The `lbu` at 0x10019a18 loads 1 byte from abs 0x100236f6.
  The `lhu` at 0x10019a1c loads 2 bytes from abs 0x100236f4.
  The `lw` at 0x10019a20 loads 4 bytes from abs 0x100236f0.
  The `lw` at 0x10019a24 loads 4 bytes from abs 0x100236ec.
  The `lw` at 0x10019a28 loads 4 bytes from abs 0x100236e8.
  The `lw` at 0x10019a2c loads 4 bytes from abs 0x100236e4.
  The `lw` at 0x10019a30 loads 4 bytes from abs 0x100236e0.
  The `lw` at 0x10019a38 loads 4 bytes from abs 0x100236dc.
  8 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10019a80, `sw` at 0x10019a84, `sw` at 0x10019a88.
  The `sdc1` at 0x10019ae0 stores 8 bytes to ?.
  3 such `sb` accesses store 1 byte to ?, including `sb` at 0x10019ae4, `sb` at 0x10019af4, `sb` at 0x10019afc.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10019ae8, `lw` at 0x10019af0.
  The `jal` at 0x10019b40 calls vs2WriteEEPROMData [0x10019eac] with a0=a0 at entry (arg0), a1=sp-8704, a2=0x0, a3=?, a4=0xffffffff80000000, a5=0x40000000, a6=0x20000000, a7=0x7fffffff.
  The `jal` at 0x10019b68 calls vs2WriteEEPROMBlock [0x10019fd8] with a0=a0 at entry (arg0), a1=sp-56, a2=?, a3=0x4.
  The `beq` branch at 0x10019a78 targets 0x10019ba8 and is always taken.
  The `beq` branch at 0x10019a98 targets 0x10019ab4, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x10019aa4 targets 0x10019a80, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x10019aac targets 0x10019a84 and is always taken.
  The `bne` branch at 0x10019b18 targets 0x10019adc, is taken when a2(?) < 0x6 (signed), and falls through when a2(?) >= 0x6 (signed).
  The `bne` branch at 0x10019b24 targets 0x10019ad0, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x10019b54 targets 0x10019bb8 and is always taken.
  The `beq` branch at 0x10019b7c targets 0x10019b8c, is taken when s0(?) >= 0x8 (signed), and falls through when s0(?) < 0x8 (signed).
  The `bne` branch at 0x10019b84 targets 0x10019b5c, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x10019bb0 targets 0x10019aa4 and is always taken.
  The `beq` branch at 0x10019bbc targets 0x10019b84 and is always taken.
  The return at 0x10019ba0 has v0 = ?.

- `vs2ReadEEPROMBlock` in `usr/gfx/gfxinit` at 0x10019bc4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10019bc4-0x10019d18 (340 bytes).
  It occupies 340 bytes.
  The `lw` at 0x10019c4c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lbu` at 0x10019c78 loads 1 byte from ?.
  The `sb` at 0x10019c84 stores 1 byte to ?.
  The `jal` at 0x10019c5c calls (unnamed) [0x10019d18] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10019cfc calls (unnamed) [0x10019d18] with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x10019c28 targets 0x10019cd0, is taken when a3 == 0, and falls through when a3 != 0.
  The `beq` branch at 0x10019c3c targets 0x10019c94 and is always taken.
  The `beq` branch at 0x10019c68 targets 0x10019c88, is taken when t9(?) == s2(=-0x1), and falls through when t9(?) != s2(=-0x1).
  The `bne` branch at 0x10019c80 targets 0x10019c70, is taken when a5(?) != s2(=-0x1), and falls through when a5(?) == s2(=-0x1).
  The `beq` branch at 0x10019c8c targets 0x10019cd0, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `bne` branch at 0x10019c9c targets 0x10019ca8, is taken when a5(?) < 0x2000 (signed), and falls through when a5(?) >= 0x2000 (signed).
  The `beq` branch at 0x10019cac targets 0x10019cbc, is taken when s3(?) >= a1(?) (signed), and falls through when s3(?) < a1(?) (signed).
  The `beq` branch at 0x10019cb4 targets 0x10019c44 and is always taken.
  The `beq` branch at 0x10019cbc targets 0x10019c44, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10019cc8 targets 0x10019c44 and is always taken.
  The return at 0x10019d10 has v0 = ret(0x10019d18).

- `vs2ReadEEPROMCode` in `usr/gfx/gfxinit` at 0x10019d6c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10019d6c-0x10019da8 (60 bytes).
  It occupies 60 bytes.
  The `jal` at 0x10019d90 calls vs2ReadEEPROMBlock [0x10019bc4] with a0=a0 at entry (arg0), a1=0x0, a2=a1 at entry (arg1), a3=0xc000.
  The return at 0x10019da0 has v0 = ret(vs2ReadEEPROMBlock).

- `vs2ReadEEPROMData` in `usr/gfx/gfxinit` at 0x10019da8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10019da8-0x10019e60 (184 bytes).
  It occupies 184 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lw` at 0x10019ddc, `lw` at 0x10019e1c.
  The `lw` at 0x10019e00 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lw` at 0x10019e04 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `jal` at 0x10019dd4 calls vs2ReadEEPROMBlock [0x10019bc4] with a0=a0 at entry (arg0), a1=0xc000, a2=a1 at entry (arg1), a3=0x21c8.
  The `jal` at 0x10019df8 calls (unnamed) [0x10019968] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `bne` branch at 0x10019de4 targets 0x10019df0, is taken when a1(=[a1+4]) < 0x21c9 (unsigned), and falls through when a1(=[a1+4]) >= 0x21c9 (unsigned).
  The `bne` branch at 0x10019e18 targets 0x10019e28, is taken when a6(=[a1+12]) < 0x2 (unsigned), and falls through when a6(=[a1+12]) >= 0x2 (unsigned).
  The `bne` branch at 0x10019e20 targets 0x10019e38, is taken when a2(=[a1+8]) != v0(=ret(0x10019968)), and falls through when a2(=[a1+8]) == v0(=ret(0x10019968)).
  The `bne` branch at 0x10019e28 targets 0x10019e38, is taken when a1(=[a1+4]) != a0(=0x21c8), and falls through when a1(=[a1+4]) == a0(=0x21c8).
  The `beq` branch at 0x10019e30 targets 0x10019e48, is taken when a6(=[a1+12]) == a5(=0x2), and falls through when a6(=[a1+12]) != a5(=0x2).
  The return at 0x10019e40 has v0 = 0x0.
  The return at 0x10019e58 has v0 = 0x1.

- `vs2WriteEEPROMCode` in `usr/gfx/gfxinit` at 0x10019e60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10019e60-0x10019eac (76 bytes).
  It occupies 76 bytes.
  The `jal` at 0x10019e94 calls vs2WriteEEPROMBlock [0x10019fd8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x0, a3=?.
  The `beq` branch at 0x10019e78 targets 0x10019e90, is taken when a2 == 0, and falls through when a2 != 0.
  The `bne` branch at 0x10019e84 targets 0x10019e90, is taken when a3(=0xc000) < a2 (signed), and falls through when a3(=0xc000) >= a2 (signed).
  The return at 0x10019ea4 has v0 = ret(vs2WriteEEPROMBlock).

- `vs2WriteEEPROMData` in `usr/gfx/gfxinit` at 0x10019eac (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10019eac-0x10019fd8 (300 bytes).
  It occupies 300 bytes.
  The `sw` at 0x10019f18 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `sw` at 0x10019f24 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0x10019f2c stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `sw` at 0x10019f30 stores 4 bytes to a1 (arg1 at entry) +0x8.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10019f70, `lbu` at 0x10019f74.
  The `jal` at 0x10019efc calls vs2ReadEEPROMData [0x10019da8] with a0=a0 at entry (arg0), a1=sp-8720, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10019f20 calls (unnamed) [0x10019968] with a0=a1 at entry (arg1), a1=0x21c8, a2=0x21c8, a3=?.
  The `jal` at 0x10019f8c calls vs2WriteEEPROMBlock [0x10019fd8] with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1.
  The `beq` branch at 0x10019ed8 targets 0x10019ef4, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x10019ee8 targets 0x10019ef4, is taken when a2 >= s4(=0x21c8) (signed), and falls through when a2 < s4(=0x21c8) (signed).
  The `blez` branch at 0x10019f40 targets 0x10019fb0, is taken when s4(?) <= 0 (signed), and falls through when s4(?) > 0 (signed).
  The `beq` branch at 0x10019f4c targets 0x10019f70 and is always taken.
  The `beq` branch at 0x10019f68 targets 0x10019fb0, is taken when s3(?) >= s4(?) (signed), and falls through when s3(?) < s4(?) (signed).
  The `beq` branch at 0x10019f78 targets 0x10019f54, is taken when v1(?) == a0(?), and falls through when v1(?) != a0(?).
  The `bne` branch at 0x10019fa8 targets 0x10019f70, is taken when s3(?) < s4(?) (signed), and falls through when s3(?) >= s4(?) (signed).
  The return at 0x10019fd0 has v0 = one of ret(0x10019968), ?, ret(vs2WriteEEPROMBlock).

- `vs2WriteEEPROMBlock` in `usr/gfx/gfxinit` at 0x10019fd8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x10019fd8-0x1001a154 (380 bytes).
  It occupies 380 bytes.
  The `sb` at 0x1001a05c stores 1 byte to ?.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1001a07c, `lbu` at 0x1001a080, `lbu` at 0x1001a108.
  The `lw` at 0x1001a0e4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `jal` at 0x1001a060 calls vs2Delay [0x10018dbc] with a0=0x2710, a1=?, a2=?, a3=?.
  The `jal` at 0x1001a0f4 calls (unnamed) [0x10019d18] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1001a138 calls (unnamed) [0x10019d18] with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x1001a03c targets 0x1001a10c, is taken when a3 == 0, and falls through when a3 != 0.
  The `beq` branch at 0x1001a050 targets 0x1001a0a8 and is always taken.
  The `blez` branch at 0x1001a074 targets 0x1001a09c, is taken when t8(?) <= 0 (signed), and falls through when t8(?) > 0 (signed).
  The `bne` branch at 0x1001a084 targets 0x1001a058, is taken when t9(?) != a4(?), and falls through when t9(?) == a4(?).
  The `bgtz` branch at 0x1001a094 targets 0x1001a07c, is taken when ra(?) > 0 (signed), and falls through when ra(?) <= 0 (signed).
  The `beq` branch at 0x1001a0a0 targets 0x1001a10c, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `bne` branch at 0x1001a0b0 targets 0x1001a0bc, is taken when a5(?) < 0x2000 (signed), and falls through when a5(?) >= 0x2000 (signed).
  The `beq` branch at 0x1001a0c0 targets 0x1001a0d0, is taken when s3(?) >= a1(?) (signed), and falls through when s3(?) < a1(?) (signed).
  The `beq` branch at 0x1001a0c8 targets 0x1001a0dc and is always taken.
  The `bne` branch at 0x1001a0d0 targets 0x1001a0dc, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `blez` branch at 0x1001a0fc targets 0x1001a09c, is taken when s2(?) <= 0 (signed), and falls through when s2(?) > 0 (signed).
  The `beq` branch at 0x1001a104 targets 0x1001a080 and is always taken.
  The return at 0x1001a14c has v0 = ret(0x10019d18).

- `venice_clock_vs2_serial_dataBit` in `usr/gfx/gfxinit` at 0x1001a154 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001a154-0x1001a1ac (88 bytes).
  It occupies 88 bytes.
  The `jal` at 0x1001a17c calls vs2WriteByte [0x10018864] with a0=a0 at entry (arg0), a1=0x4290, a2=?, a3=a3 at entry (arg3).
  The `jal` at 0x1001a190 calls vs2WriteByte [0x10018864] with a0=a0 at entry (arg0), a1=0x4280, a2=0x1, a3=?.
  The return at 0x1001a1a4 has v0 = ret(vs2WriteByte).

- `venice_load_vs2_clockDivider` in `usr/gfx/gfxinit` at 0x1001a674 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001a674-0x1001a81c (424 bytes).
  It occupies 424 bytes.
  The `jal` at 0x1001a710 calls vs2RegisterClearBit [0x10018360] with a0=a0 at entry (arg0), a1=0x4020, a2=0x8, a3=?.
  The `jal` at 0x1001a730 calls venice_clock_vs2_serial_dataBit [0x1001a154] with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=?.
  The `jal` at 0x1001a75c calls venice_clock_vs2_serial_dataBit [0x1001a154] with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jal` at 0x1001a77c calls venice_clock_vs2_serial_dataBit [0x1001a154] with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=?.
  The `jal` at 0x1001a7a8 calls venice_clock_vs2_serial_dataBit [0x1001a154] with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jal` at 0x1001a7c4 calls venice_clock_vs2_serial_dataBit [0x1001a154] with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jal` at 0x1001a7ec calls vs2RegisterSetBit [0x100183c8] with a0=a0 at entry (arg0), a1=0x4020, a2=0x8, a3=?.
  The `jal` at 0x1001a800 calls vs2RegisterClearBit [0x10018360] with a0=a0 at entry (arg0), a1=0x4020, a2=0x8, a3=?.
  The `beq` branch at 0x1001a6d8 targets 0x1001a6f4, is taken when a3(?) >= s4(?) (signed), and falls through when a3(?) < s4(?) (signed).
  The `bne` branch at 0x1001a6e4 targets 0x1001a6f4, is taken when a4(?) < 0xb (signed), and falls through when a4(?) >= 0xb (signed).
  The `beq` branch at 0x1001a724 targets 0x1001a744 and is always taken.
  The `blez` branch at 0x1001a73c targets 0x1001a76c, is taken when s6(?) <= 0 (signed), and falls through when s6(?) > 0 (signed).
  The `bne` branch at 0x1001a74c targets 0x1001a72c, is taken when (s5(?) & a3(?)) != 0, and falls through when (s5(?) & a3(?)) == 0.
  The `beq` branch at 0x1001a764 targets 0x1001a73c and is always taken.
  The `beq` branch at 0x1001a770 targets 0x1001a790 and is always taken.
  The `blez` branch at 0x1001a788 targets 0x1001a7b8, is taken when s5(?) <= 0 (signed), and falls through when s5(?) > 0 (signed).
  The `bne` branch at 0x1001a798 targets 0x1001a778, is taken when (s4(?) & a4(?)) != 0, and falls through when (s4(?) & a4(?)) == 0.
  The `beq` branch at 0x1001a7b0 targets 0x1001a788 and is always taken.
  The return at 0x1001a814 has v0 = ret(vs2RegisterClearBit).

- `venice_loadsection_vs2_top` in `usr/gfx/gfxinit` at 0x1001a81c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001a81c-0x1001accc (1200 bytes).
  It occupies 1200 bytes.
  The `lw` at 0x1001a878 loads 4 bytes from a5 (arg5 at entry) +0x0.
  3 such `lw` accesses load 4 bytes from a5 (arg5 at entry) +0x4, including `lw` at 0x1001a8ac, `lw` at 0x1001ab44, `lw` at 0x1001ac58.
  The `lw` at 0x1001a8b4 loads 4 bytes from a5 (arg5 at entry) +0x8.
  5 such `lw` accesses load 4 bytes from a5 (arg5 at entry) +0x20, including `lw` at 0x1001a8dc, `lw` at 0x1001a950, `lw` at 0x1001ab2c.
  3 such `lw` accesses load 4 bytes from a5 (arg5 at entry) +0xc, including `lw` at 0x1001a8ec, `lw` at 0x1001aaf4, `lw` at 0x1001ac08.
  3 such `lw` accesses load 4 bytes from a5 (arg5 at entry) +0x10, including `lw` at 0x1001a900, `lw` at 0x1001aafc, `lw` at 0x1001ac10.
  3 such `lw` accesses load 4 bytes from a5 (arg5 at entry) +0x14, including `lw` at 0x1001a914, `lw` at 0x1001ab04, `lw` at 0x1001ac18.
  3 such `lw` accesses load 4 bytes from a5 (arg5 at entry) +0x18, including `lw` at 0x1001a928, `lw` at 0x1001ab0c, `lw` at 0x1001ac20.
  6 such `lw` accesses load 4 bytes from a5 (arg5 at entry) +0x1c, including `lw` at 0x1001a93c, `lw` at 0x1001aad8, `lw` at 0x1001ab1c.
  3 such `lw` accesses load 4 bytes from a5 (arg5 at entry) +0x24, including `lw` at 0x1001a964, `lw` at 0x1001ab34, `lw` at 0x1001ac48.
  3 such `lw` accesses load 4 bytes from a5 (arg5 at entry) +0x28, including `lw` at 0x1001a978, `lw` at 0x1001ab3c, `lw` at 0x1001ac50.
  4 such `lw` accesses load 4 bytes from a5 (arg5 at entry) +0x38, including `lw` at 0x1001a98c, `lw` at 0x1001aa90, `lw` at 0x1001aaec.
  4 such `lw` accesses load 4 bytes from a5 (arg5 at entry) +0x3c, including `lw` at 0x1001a9a0, `lw` at 0x1001aa88, `lw` at 0x1001ab14.
  4 such `lw` accesses load 4 bytes from a5 (arg5 at entry) +0x40, including `lw` at 0x1001a9b4, `lw` at 0x1001aa84, `lw` at 0x1001ab24.
  The `lbu` at 0x1001a9d8 loads 1 byte from a5 (arg5 at entry) +0xf.
  The `lbu` at 0x1001a9e8 loads 1 byte from a5 (arg5 at entry) +0x13.
  The `lbu` at 0x1001aa00 loads 1 byte from a5 (arg5 at entry) +0x17.
  The `lbu` at 0x1001aa18 loads 1 byte from a5 (arg5 at entry) +0x1b.
  The `lbu` at 0x1001aa38 loads 1 byte from a5 (arg5 at entry) +0x1f.
  The `lbu` at 0x1001aa50 loads 1 byte from a5 (arg5 at entry) +0x23.
  The `lbu` at 0x1001aa68 loads 1 byte from a5 (arg5 at entry) +0x27.
  The `lbu` at 0x1001aa78 loads 1 byte from a5 (arg5 at entry) +0x2b.
  2 such `lw` accesses load 4 bytes from sym(ven_gfxfd) +0x0, including `lw` at 0x1001aab4, `lw` at 0x1001ab68.
  The `sw` at 0x1001ac7c stores 4 bytes to a5 (arg5 at entry) +0x1c.
  The `jal` at 0x1001a85c calls vs2WriteProgClock [0x10018878] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x14, a3=a3 at entry (arg3).
  The `jalr` at 0x1001a86c calls sginap with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x1001a894 calls vs2WriteByte [0x10018864] with a0=a0 at entry (arg0), a1=0x42c0, a2=0x0, a3=?.
  The `jal` at 0x1001a8a8 calls venice_load_vs2_clockDivider [0x1001a674] with a0=a0 at entry (arg0), a1=[a5+4], a2=?, a3=?.
  The `jalr` at 0x1001a8d4 calls printf with a0=0x10023720, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001a8f0 calls printf with a0=0x10023748, a1=[a5+12], a2=?, a3=?.
  The `jalr` at 0x1001a904 calls printf with a0=0x10023760, a1=[a5+16], a2=?, a3=?.
  The `jalr` at 0x1001a918 calls printf with a0=0x10023780, a1=[a5+20], a2=?, a3=?.
  The `jalr` at 0x1001a92c calls printf with a0=0x10023798, a1=[a5+24], a2=?, a3=?.
  The `jalr` at 0x1001a940 calls printf with a0=0x100237b0, a1=[a5+28], a2=?, a3=?.
  The `jalr` at 0x1001a954 calls printf with a0=0x100237d0, a1=[a5+32], a2=?, a3=?.
  The `jalr` at 0x1001a968 calls printf with a0=0x100237f0, a1=[a5+36], a2=?, a3=?.
  The `jalr` at 0x1001a97c calls printf with a0=0x10023810, a1=[a5+40], a2=?, a3=?.
  The `jalr` at 0x1001a990 calls printf with a0=0x10023828, a1=[a5+56], a2=?, a3=?.
  The `jalr` at 0x1001a9a4 calls printf with a0=0x10023848, a1=[a5+60], a2=?, a3=?.
  The `jalr` at 0x1001a9b8 calls printf with a0=0x10023868, a1=[a5+64], a2=?, a3=?.
  The `jal` at 0x1001a9d4 calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x0, a3=[a5+15]:1.
  The `jal` at 0x1001a9ec calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x2, a3=[a5+19]:1.
  The `jal` at 0x1001aa04 calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x4, a3=[a5+23]:1.
  The `jal` at 0x1001aa1c calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x6, a3=[a5+27]:1.
  The `jal` at 0x1001aa34 calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x8, a3=[a5+31]:1.
  The `jal` at 0x1001aa4c calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0xa, a3=[a5+35]:1.
  The `jal` at 0x1001aa64 calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0xc, a3=[a5+39]:1.
  The `jal` at 0x1001aa7c calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0xe, a3=[a5+43]:1.
  The `jalr` at 0x1001aab0 calls ioctl with a0=[sym(ven_gfxfd)], a1=0x272f, a2=sp-144, a3=[a5+60].
  The `jalr` at 0x1001ab64 calls ioctl with a0=[sym(ven_gfxfd)], a1=0x272e, a2=sp-144, a3=[one of 0x10027851, 0x10027852]:1, a5=[a5+4], a6=[a5+40], a7=[a5+36].
  The `jalr` at 0x1001abb8 calls printf with a0=0x100236f8, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001ac94 calls perror with a0=0x10023888, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001acac calls perror with a0=0x100238c0, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1001a87c targets 0x1001ab9c, is taken when s5(=0x4200) == s1(=a1), and falls through when s5(=0x4200) != s1(=a1).
  The `beq` branch at 0x1001a89c targets 0x1001a8b0, is taken when s4(=a2) == 0, and falls through when s4(=a2) != 0.
  The `beq` branch at 0x1001a8b0 targets 0x1001aba4, is taken when s5(=0x4200) == s1(=a1), and falls through when s5(=0x4200) != s1(=a1).
  The `beq` branch at 0x1001a8bc targets 0x1001ac70, is taken when s4(=a2) == 0, and falls through when s4(=a2) != 0.
  The `beq` branch at 0x1001a8c4 targets 0x1001abac, is taken when s5(=0x4200) == s1(=a1), and falls through when s5(=0x4200) != s1(=a1).
  The `beq` branch at 0x1001aa8c targets 0x1001abcc, is taken when s5(=0x4200) == s1(=a1), and falls through when s5(=0x4200) != s1(=a1).
  The `beq` branch at 0x1001aabc targets 0x1001ac90, is taken when v0(=ret(ioctl)) == s2(=-0x1), and falls through when v0(=ret(ioctl)) != s2(=-0x1).
  The `beq` branch at 0x1001aac4 targets 0x1001abdc, is taken when s5(=0x4200) == s1(=a1), and falls through when s5(=0x4200) != s1(=a1).
  The `beq` branch at 0x1001aae0 targets 0x1001ac80, is taken when (a1(=[a5+28]) & 0x40) == 0, and falls through when (a1(=[a5+28]) & 0x40) != 0.
  The `beq` branch at 0x1001ab48 targets 0x1001ac88, is taken when s4(=a2) == 0, and falls through when s4(=a2) != 0.
  The `beq` branch at 0x1001ab6c targets 0x1001aca4, is taken when v0(=ret(ioctl)) == s2(=-0x1), and falls through when v0(=ret(ioctl)) != s2(=-0x1).
  The `beq` branch at 0x1001ab9c targets 0x1001a888 and is always taken.
  The `beq` branch at 0x1001aba4 targets 0x1001a8bc and is always taken.
  The `beq` branch at 0x1001abc4 targets 0x1001a8e4 and is always taken.
  The `beq` branch at 0x1001abd4 targets 0x1001aaa0 and is always taken.
  The `beq` branch at 0x1001abf4 targets 0x1001acbc, is taken when (a2(=[a5+28]) & 0x40) == 0, and falls through when (a2(=[a5+28]) & 0x40) != 0.
  The `beq` branch at 0x1001ac60 targets 0x1001acc4, is taken when s4(=a2) == 0, and falls through when s4(=a2) != 0.
  The `beq` branch at 0x1001ac68 targets 0x1001ab58 and is always taken.
  The `beq` branch at 0x1001ac78 targets 0x1001a8c4 and is always taken.
  The `beq` branch at 0x1001ac80 targets 0x1001aaec and is always taken.
  The `beq` branch at 0x1001ac88 targets 0x1001ab58 and is always taken.
  The `beq` branch at 0x1001ac9c targets 0x1001aac4 and is always taken.
  The `beq` branch at 0x1001acb4 targets 0x1001ab74 and is always taken.
  The `beq` branch at 0x1001acbc targets 0x1001ac00 and is always taken.
  The `beq` branch at 0x1001acc4 targets 0x1001ab58 and is always taken.
  The return at 0x1001ab94 has v0 = 0x0.

- `venice_loadsection_vs2_body` in `usr/gfx/gfxinit` at 0x1001accc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001accc-0x1001b130 (1124 bytes).
  It occupies 1124 bytes.
  2 such `lw` accesses load 4 bytes from a5 (arg5 at entry) +0xd40, including `lw` at 0x1001ad60, `lw` at 0x1001ad74.
  The `sw` at 0x1001ad68 stores 4 bytes to a5 (arg5 at entry) +0xd40.
  The `jal` at 0x1001ad20 calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x20, a3=0x1.
  The `jal` at 0x1001ad38 calls (unnamed) [0x1001a2b0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a5 at entry (arg5), a3=?.
  The `jal` at 0x1001ad50 calls (unnamed) [0x1001a4ac] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a5 at entry (arg5), a3=?.
  The `jal` at 0x1001ada4 calls vs2RegisterSetBit [0x100183c8] with a0=a0 at entry (arg0), a1=0x4020, a2=0x80, a3=?.
  The `jal` at 0x1001adc4 calls vs2WriteProgClock [0x10018878] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[0x10027853]:1, a3=?.
  The `jalr` at 0x1001add0 calls sginap with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x1001adf4 calls vs2RegisterClearBit [0x10018360] with a0=a0 at entry (arg0), a1=0x4040, a2=0x8, a3=?.
  The `jal` at 0x1001ae08 calls vs2RegisterSetBit [0x100183c8] with a0=a0 at entry (arg0), a1=0x4040, a2=0x10, a3=?.
  The `jalr` at 0x1001ae14 calls sginap with a0=0xb, a1=?, a2=?, a3=?.
  The `jal` at 0x1001ae34 calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0xa, a3=[0x1002785b]:1.
  The `jal` at 0x1001ae80 calls vs2RegisterClearBit [0x10018360] with a0=a0 at entry (arg0), a1=0x4020, a2=0x80, a3=?.
  The `jal` at 0x1001ae9c calls vs2WriteProgClock [0x10018878] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[0x10027851]:1, a3=?.
  The `jal` at 0x1001aec0 calls vs2RegisterSetBit [0x100183c8] with a0=a0 at entry (arg0), a1=0x4040, a2=0x8, a3=?.
  The `jal` at 0x1001aed4 calls vs2RegisterClearBit [0x10018360] with a0=a0 at entry (arg0), a1=0x4040, a2=0x10, a3=?.
  The `jal` at 0x1001aef0 calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0xa, a3=[0x1002785a]:1.
  The `jal` at 0x1001af18 calls vs2RegisterClearBit [0x10018360] with a0=a0 at entry (arg0), a1=0x4020, a2=0x80, a3=?.
  The `jal` at 0x1001af30 calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x0, a3=[0x10027857]:1.
  The `jal` at 0x1001af48 calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x8, a3=[0x10027858]:1.
  The `jal` at 0x1001af60 calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0xa, a3=[0x10027859]:1.
  The `jalr` at 0x1001af7c calls printf with a0=0x10023988, a1=[0x10027857]:1, a2=[0x10027859]:1, a3=?.
  The `jalr` at 0x1001af90 calls printf with a0=0x100239b8, a1=[0x10027858]:1, a2=?, a3=?.
  The `jalr` at 0x1001afa4 calls printf with a0=0x100239e8, a1=[0x10027859]:1, a2=?, a3=?.
  The `jal` at 0x1001afc0 calls vs2RegisterSetBit [0x100183c8] with a0=a0 at entry (arg0), a1=0x4040, a2=0x8, a3=?.
  The `jal` at 0x1001afd4 calls vs2RegisterClearBit [0x10018360] with a0=a0 at entry (arg0), a1=0x4040, a2=0x10, a3=?.
  The `jal` at 0x1001aff8 calls vs2RegisterClearBit [0x10018360] with a0=a0 at entry (arg0), a1=0x4020, a2=0x80, a3=?.
  The `jal` at 0x1001b010 calls vs2RegisterSetBit [0x100183c8] with a0=a0 at entry (arg0), a1=0x4020, a2=0x40, a3=?.
  The `jal` at 0x1001b02c calls vs2RegisterClearBit [0x10018360] with a0=a0 at entry (arg0), a1=0x4020, a2=0x40, a3=?.
  The `jal` at 0x1001b044 calls vs2RegisterClearBit [0x10018360] with a0=a0 at entry (arg0), a1=0x4040, a2=0x8, a3=?.
  The `jal` at 0x1001b058 calls vs2RegisterSetBit [0x100183c8] with a0=a0 at entry (arg0), a1=0x4040, a2=0x10, a3=?.
  The `jal` at 0x1001b074 calls vs2RegisterClearBit [0x10018360] with a0=a0 at entry (arg0), a1=0x4020, a2=0x40, a3=?.
  The `jal` at 0x1001b08c calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x0, a3=[0x10027854]:1.
  The `jal` at 0x1001b0a4 calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x8, a3=[0x10027855]:1.
  The `jal` at 0x1001b0bc calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0xa, a3=[0x10027856]:1.
  The `jalr` at 0x1001b0d8 calls printf with a0=0x100238f8, a1=[0x10027854]:1, a2=[0x10027856]:1, a3=?.
  The `jalr` at 0x1001b0ec calls printf with a0=0x10023928, a1=[0x10027855]:1, a2=?, a3=?.
  The `jalr` at 0x1001b100 calls printf with a0=0x10023958, a1=[0x10027856]:1, a2=?, a3=?.
  The `jal` at 0x1001b120 calls vs2RegisterClearBit [0x10018360] with a0=a0 at entry (arg0), a1=0x4020, a2=0x40, a3=?.
  The `beq` branch at 0x1001ad58 targets 0x1001ad6c, is taken when s3(=a3) == 0, and falls through when s3(=a3) != 0.
  The `beq` branch at 0x1001ad6c targets 0x1001ae68, is taken when s5(=a2) == 0, and falls through when s5(=a2) != 0.
  The `beq` branch at 0x1001ad7c targets 0x1001af00, is taken when (at(=[a5+3392]) & 0x40) == 0, and falls through when (at(=[a5+3392]) & 0x40) != 0.
  The `beq` branch at 0x1001ad84 targets 0x1001afe4, is taken when v0(=a4) == 0, and falls through when v0(=a4) != 0.
  The `beq` branch at 0x1001ad8c targets 0x1001b008, is taken when s3(=0x4200) == s1(=a1), and falls through when s3(=0x4200) != s1(=a1).
  The `beq` branch at 0x1001adb0 targets 0x1001ae94, is taken when s3(=0x4200) == s1(=a1), and falls through when s3(=0x4200) != s1(=a1).
  The `beq` branch at 0x1001add8 targets 0x1001aeac, is taken when s5(=a2) == 0, and falls through when s5(=a2) != 0.
  The `beq` branch at 0x1001ade0 targets 0x1001afb4, is taken when s3(=0x4200) == s1(=a1), and falls through when s3(=0x4200) != s1(=a1).
  The `beq` branch at 0x1001ae1c targets 0x1001aee4, is taken when s3(=0x4200) == s1(=a1), and falls through when s3(=0x4200) != s1(=a1).
  The `beq` branch at 0x1001ae68 targets 0x1001b020, is taken when s3(=0x4200) == s1(=a1), and falls through when s3(=0x4200) != s1(=a1).
  The `bne` branch at 0x1001ae88 targets 0x1001adbc, is taken when s3(=0x4200) != s1(=a1), and falls through when s3(=0x4200) == s1(=a1).
  The `beq` branch at 0x1001aea4 targets 0x1001add0 and is always taken.
  The `beq` branch at 0x1001aeac targets 0x1001b03c, is taken when s3(=0x4200) == s1(=a1), and falls through when s3(=0x4200) != s1(=a1).
  The `beq` branch at 0x1001aedc targets 0x1001ae14 and is always taken.
  The `beq` branch at 0x1001aef8 targets 0x1001ae40 and is always taken.
  The `beq` branch at 0x1001af00 targets 0x1001b068, is taken when s3(=0x4200) == s1(=a1), and falls through when s3(=0x4200) != s1(=a1).
  The `beq` branch at 0x1001afac targets 0x1001adb0 and is always taken.
  The `beq` branch at 0x1001afdc targets 0x1001ae14 and is always taken.
  The `beq` branch at 0x1001afe4 targets 0x1001b110, is taken when s3(=0x4200) == s1(=a1), and falls through when s3(=0x4200) != s1(=a1).
  The `beq` branch at 0x1001b000 targets 0x1001adb0 and is always taken.
  The `beq` branch at 0x1001b018 targets 0x1001adb0 and is always taken.
  The `beq` branch at 0x1001b034 targets 0x1001ae88 and is always taken.
  The `beq` branch at 0x1001b060 targets 0x1001ae14 and is always taken.
  The `beq` branch at 0x1001b108 targets 0x1001adb0 and is always taken.
  The `beq` branch at 0x1001b128 targets 0x1001adb0 and is always taken.
  The return at 0x1001ae60 has v0 = 0x0.

- `loadVofToDataStructure` in `usr/gfx/gfxinit` at 0x1001b130 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001b130-0x1001b5ac (1148 bytes).
  It occupies 1148 bytes.
  The `jalr` at 0x1001b160 calls fopen with a0=a0 at entry (arg0), a1=0x10027ec8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1001b1ac calls fread with a0=sp-176, a1=0x1, a2=0x2c, a3=ret(fopen).
  The `jalr` at 0x1001b1d0 calls fprintf with a0=sym(__iob)+32, a1=0x10023a40, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1001b1dc calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001b1fc calls fprintf with a0=sym(__iob)+32, a1=0x10023a60, a2=?, a3=0x4581.
  The `jalr` at 0x1001b208 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001b234 calls fread with a0=sp-128, a1=0x1, a2=0x1, a3=ret(fopen).
  The `jalr` at 0x1001b250 calls fprintf with a0=sym(__iob)+32, a1=0x10023a40, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1001b25c calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001b284 calls fread with a0=sp-124, a1=0x1, a2=0x4, a3=ret(fopen).
  The `jalr` at 0x1001b2a8 calls fprintf with a0=sym(__iob)+32, a1=0x10023a40, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1001b2b4 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001b2cc calls fread with a0=sp-120, a1=0x1, a2=0x4, a3=ret(fopen).
  The `jalr` at 0x1001b2ec calls fprintf with a0=sym(__iob)+32, a1=0x10023a40, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1001b2f8 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001b31c calls fprintf with a0=sym(__iob)+32, a1=0x10023a80, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1001b328 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001b354 calls fread with a0=sp-128, a1=0x1, a2=0x1, a3=ret(fopen).
  The `jalr` at 0x1001b374 calls fprintf with a0=sym(__iob)+32, a1=0x10023a40, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1001b380 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001b3b0 calls fread with a0=a1 at entry (arg1), a1=0x1, a2=0x44, a3=ret(fopen).
  The `jalr` at 0x1001b3cc calls fprintf with a0=sym(__iob)+32, a1=0x10023a40, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1001b3d8 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001b3f0 calls fread with a0=sp-124, a1=0x1, a2=0x4, a3=ret(fopen).
  The `jalr` at 0x1001b410 calls fprintf with a0=sym(__iob)+32, a1=0x10023a40, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1001b41c calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001b434 calls fread with a0=sp-120, a1=0x1, a2=0x4, a3=ret(fopen).
  The `jalr` at 0x1001b450 calls fprintf with a0=sym(__iob)+32, a1=0x10023a40, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1001b45c calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001b480 calls fprintf with a0=sym(__iob)+32, a1=0x10023a80, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1001b48c calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001b4b8 calls fread with a0=sp-128, a1=0x1, a2=0x1, a3=ret(fopen).
  The `jalr` at 0x1001b4d4 calls fprintf with a0=sym(__iob)+32, a1=0x10023a40, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1001b4e0 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001b50c calls fread with a0=a2 at entry (arg2), a1=0x1, a2=0xda8, a3=ret(fopen).
  The `jalr` at 0x1001b528 calls fprintf with a0=sym(__iob)+32, a1=0x10023a40, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1001b534 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001b560 calls close with a0=ret(fopen), a1=?, a2=?, a3=?.
  The `jalr` at 0x1001b590 calls fprintf with a0=sym(__iob)+32, a1=0x10023a18, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1001b59c calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1001b184 targets 0x1001b57c, is taken when v0(=ret(fopen)) == 0, and falls through when v0(=ret(fopen)) != 0.
  The `beq` branch at 0x1001b1b8 targets 0x1001b1e8, is taken when s6(=0x2c) == v0(=ret(fread)), and falls through when s6(=0x2c) != v0(=ret(fread)).
  The `beq` branch at 0x1001b1ec targets 0x1001b210, is taken when a2(?) == a3(=0x4581), and falls through when a2(?) != a3(=0x4581).
  The `beq` branch at 0x1001b214 targets 0x1001b274, is taken when s3(?) == s6(=0x2c), and falls through when s3(?) != s6(=0x2c).
  The `beq` branch at 0x1001b23c targets 0x1001b264, is taken when s7(=0x1) == v0(=ret(fread)), and falls through when s7(=0x1) != v0(=ret(fread)).
  The `bne` branch at 0x1001b26c targets 0x1001b228, is taken when s3(?) != a2(=-0x1), and falls through when s3(?) == a2(=-0x1).
  The `beq` branch at 0x1001b290 targets 0x1001b2c0, is taken when s6(=0x4) == v0(=ret(fread)), and falls through when s6(=0x4) != v0(=ret(fread)).
  The `beq` branch at 0x1001b2d4 targets 0x1001b304, is taken when s6(=0x4) == v0(=ret(fread)), and falls through when s6(=0x4) != v0(=ret(fread)).
  The `beq` branch at 0x1001b308 targets 0x1001b330, is taken when a2(?) == s7(=0x44), and falls through when a2(?) != s7(=0x44).
  The `beq` branch at 0x1001b334 targets 0x1001b398, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1001b35c targets 0x1001b38c, is taken when s7(=0x1) == v0(=ret(fread)), and falls through when s7(=0x1) != v0(=ret(fread)).
  The `bne` branch at 0x1001b390 targets 0x1001b348, is taken when s3(?) != a2(=-0x1), and falls through when s3(?) == a2(=-0x1).
  The `beq` branch at 0x1001b3b8 targets 0x1001b3e0, is taken when s7(=0x44) == v0(=ret(fread)), and falls through when s7(=0x44) != v0(=ret(fread)).
  The `beq` branch at 0x1001b3f8 targets 0x1001b428, is taken when s6(=0x4) == v0(=ret(fread)), and falls through when s6(=0x4) != v0(=ret(fread)).
  The `beq` branch at 0x1001b43c targets 0x1001b464, is taken when s6(=0x4) == v0(=ret(fread)), and falls through when s6(=0x4) != v0(=ret(fread)).
  The `beq` branch at 0x1001b46c targets 0x1001b494, is taken when a2(?) == s6(=0xda8), and falls through when a2(?) != s6(=0xda8).
  The `beq` branch at 0x1001b498 targets 0x1001b4f8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1001b4c0 targets 0x1001b4e8, is taken when s7(=0x1) == v0(=ret(fread)), and falls through when s7(=0x1) != v0(=ret(fread)).
  The `bne` branch at 0x1001b4f0 targets 0x1001b4ac, is taken when s3(?) != a2(=-0x1), and falls through when s3(?) == a2(=-0x1).
  The `beq` branch at 0x1001b514 targets 0x1001b53c, is taken when s6(=0xda8) == v0(=ret(fread)), and falls through when s6(=0xda8) != v0(=ret(fread)).
  The `beq` branch at 0x1001b5a4 targets 0x1001b190 and is always taken.
  The return at 0x1001b574 has v0 = ret(close).

- `loadVS2ModeDG2VOF` in `usr/gfx/gfxinit` at 0x1001b5ac (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001b5ac-0x1001b670 (196 bytes).
  It occupies 196 bytes.
  The `lw` at 0x1001b65c loads 4 bytes from sym(vs2ProductName) +0x0.
  The `jal` at 0x1001b5d8 calls vs2Open [0x10018e64] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1001b5e8 calls vs2ReadEEPROMData [0x10019da8] with a0=ret(vs2Open), a1=sp-9696, a2=?, a3=?.
  The `jal` at 0x1001b600 calls generateFilename [0x10017cc0] with a0=sp-2532, a1=0x10023aa0, a2=sp-1048, a3=?.
  The `jalr` at 0x1001b624 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-1048, a2=0x0, a3=0x0, a4=0x1, a5=0x1, a6=a2 at entry (arg2).
  The `jalr` at 0x1001b660 calls syslog with a0=0x2, a1=0x10023ab0, a2=[sym(vs2ProductName)], a3=sp-1048.
  The `bltz` branch at 0x1001b630 targets 0x1001b648, is taken when v0(=ret(?)) < 0 (signed), and falls through when v0(=ret(?)) >= 0 (signed).
  The `beq` branch at 0x1001b668 targets 0x1001b638 and is always taken.
  The return at 0x1001b640 has v0 = one of ret(?), ?.

- `loadVS2VOFFromData` in `usr/gfx/gfxinit` at 0x1001b670 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001b670-0x1001b744 (212 bytes).
  It occupies 212 bytes.
  The `jal` at 0x1001b6c0 calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x20, a3=0x1.
  The `jal` at 0x1001b6e0 calls venice_loadsection_vs2_top [0x1001a81c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1001b700 calls venice_loadsection_vs2_body [0x1001accc] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=a6 at entry (arg6).
  The `jal` at 0x1001b724 calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x20, a3=0x0.
  The return at 0x1001b73c has v0 = ret(vs2WriteXilinxReg).

- `vs2_set_MasterGenlock` in `usr/gfx/gfxinit` at 0x1001b744 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001b744-0x1001baa0 (860 bytes).
  It occupies 860 bytes.
  The `lw` at 0x1001b784 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `jalr` at 0x1001b780 calls ioctl with a0=[a0+16], a1=0x272f, a2=sp-112, a3=a3 at entry (arg3).
  The `jal` at 0x1001b7c0 calls vs2RegisterSetBit [0x100183c8] with a0=a0 at entry (arg0), a1=0x4020, a2=0x80, a3=?.
  The `jal` at 0x1001b7dc calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=0x4210, a2=0x0, a3=?.
  The `jal` at 0x1001b7f4 calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=0x4210, a2=0x8, a3=?.
  The `jal` at 0x1001b810 calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=0x4210, a2=0xa, a3=?.
  The `jalr` at 0x1001b81c calls sginap with a0=0xb, a1=?, a2=?, a3=?.
  The `jal` at 0x1001b834 calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=0x4210, a2=0xa, a3=?.
  The `jal` at 0x1001b87c calls vs2RegisterSetBit [0x100183c8] with a0=a0 at entry (arg0), a1=0x4020, a2=0x40, a3=?.
  The `jal` at 0x1001b898 calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=0x4200, a2=0x0, a3=?.
  The `jal` at 0x1001b8b0 calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=0x4200, a2=0x8, a3=?.
  The `jal` at 0x1001b8cc calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=0x4200, a2=0xa, a3=?.
  The `jalr` at 0x1001b8d8 calls sginap with a0=0xb, a1=?, a2=?, a3=?.
  The `jal` at 0x1001b8f0 calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=0x4200, a2=0xa, a3=?.
  The `jal` at 0x1001b918 calls vs2RegisterClearBit [0x10018360] with a0=a0 at entry (arg0), a1=0x4020, a2=0x80, a3=?.
  The `jalr` at 0x1001b930 calls perror with a0=0x10023ae0, a1=?, a2=?, a3=?.
  The `jal` at 0x1001b944 calls venice_load_vs2_clockDivider [0x1001a674] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1001b958 calls vs2RegisterClearBit [0x10018360] with a0=a0 at entry (arg0), a1=0x4020, a2=0x80, a3=?.
  The `jal` at 0x1001b974 calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=0x4210, a2=0x0, a3=?.
  The `jal` at 0x1001b98c calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=0x4210, a2=0x8, a3=?.
  The `jal` at 0x1001b9a8 calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=0x4210, a2=0xa, a3=?.
  The `jalr` at 0x1001b9b4 calls sginap with a0=0xb, a1=?, a2=?, a3=?.
  The `jal` at 0x1001b9cc calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=0x4210, a2=0xa, a3=?.
  The `jal` at 0x1001b9f4 calls vs2RegisterClearBit [0x10018360] with a0=a0 at entry (arg0), a1=0x4020, a2=0x40, a3=?.
  The `jal` at 0x1001ba08 calls venice_load_vs2_clockDivider [0x1001a674] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1001ba1c calls vs2RegisterClearBit [0x10018360] with a0=a0 at entry (arg0), a1=0x4020, a2=0x40, a3=?.
  The `jal` at 0x1001ba38 calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=0x4200, a2=0x0, a3=?.
  The `jal` at 0x1001ba50 calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=0x4200, a2=0x8, a3=?.
  The `jal` at 0x1001ba6c calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=0x4200, a2=0xa, a3=?.
  The `jalr` at 0x1001ba78 calls sginap with a0=0xb, a1=?, a2=?, a3=?.
  The `jal` at 0x1001ba90 calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=0x4200, a2=0xa, a3=?.
  The `beq` branch at 0x1001b78c targets 0x1001b928, is taken when v0(=ret(ioctl)) == v1(=-0x1), and falls through when v0(=ret(ioctl)) != v1(=-0x1).
  The `beq` branch at 0x1001b794 targets 0x1001b858, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1001b79c targets 0x1001b940, is taken when s1(=a1) == 0, and falls through when s1(=a1) != 0.
  The `beq` branch at 0x1001b7a4 targets 0x1001b900, is taken when s2(=a2) == 0, and falls through when s2(=a2) != 0.
  The `beq` branch at 0x1001b858 targets 0x1001ba04, is taken when s1(=a1) == 0, and falls through when s1(=a1) != 0.
  The `beq` branch at 0x1001b860 targets 0x1001b9dc, is taken when s2(=a2) == 0, and falls through when s2(=a2) != 0.
  The `beq` branch at 0x1001b8f8 targets 0x1001b840 and is always taken.
  The `beq` branch at 0x1001b920 targets 0x1001b7cc and is always taken.
  The `beq` branch at 0x1001b938 targets 0x1001b794 and is always taken.
  The `beq` branch at 0x1001b9d4 targets 0x1001b840 and is always taken.
  The `beq` branch at 0x1001b9fc targets 0x1001b888 and is always taken.
  The `beq` branch at 0x1001ba98 targets 0x1001b840 and is always taken.
  The return at 0x1001b850 has v0 = ret(vs2WriteXilinxReg).

- `venice_vs2init` in `usr/gfx/gfxinit` at 0x1001baa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001baa0-0x1001bd20 (640 bytes).
  It occupies 640 bytes.
  2 such `lw` accesses load 4 bytes from sym(vs2ProductName) +0x0, including `lw` at 0x1001bb84, `lw` at 0x1001bc24.
  The `lwu` at 0x1001bc3c loads 4 bytes from ?.
  The `jal` at 0x1001baec calls vs2ReadEEPROMData [0x10019da8] with a0=a0 at entry (arg0), a1=sp-8752, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1001bb0c calls (unnamed) [0x1001c04c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-8752, a3=ret(vs2ReadEEPROMData).
  The `jal` at 0x1001bb28 calls (unnamed) [0x1001bd20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-8752, a3=ret(vs2ReadEEPROMData).
  The `jal` at 0x1001bb44 calls (unnamed) [0x1001bfa0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-8752, a3=ret(vs2ReadEEPROMData).
  The `jal` at 0x1001bb60 calls (unnamed) [0x1001c378] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-8752, a3=ret(vs2ReadEEPROMData).
  The `jalr` at 0x1001bb80 calls printf with a0=0x10023b18, a1=[sym(vs2ProductName)], a2=?, a3=?.
  The `jal` at 0x1001bba4 calls venice_load_vs2_xilinx [0x1001d384] with a0=a0 at entry (arg0), a1=0x0, a2=sym(venice_get_vs2_xilinx_config), a3=sym(venice_free_vs2_xilinx_config).
  The `jal` at 0x1001bbbc calls venice_load_vs2_xilinx [0x1001d384] with a0=a0 at entry (arg0), a1=0x1, a2=sym(venice_get_vs2_xilinx_config), a3=sym(venice_free_vs2_xilinx_config).
  The `jal` at 0x1001bbd4 calls venice_load_vs2_xilinx [0x1001d384] with a0=a0 at entry (arg0), a1=0x2, a2=sym(venice_get_vs2_xilinx_config), a3=sym(venice_free_vs2_xilinx_config).
  The `jal` at 0x1001bbec calls venice_load_vs2_xilinx [0x1001d384] with a0=a0 at entry (arg0), a1=0x3, a2=sym(venice_get_vs2_xilinx_config), a3=sym(venice_free_vs2_xilinx_config).
  The `jalr` at 0x1001bc28 calls printf with a0=0x10023b30, a1=[sym(vs2ProductName)], a2=?, a3=?.
  The `jal` at 0x1001bc4c calls loadVS2VOFFromData [0x1001b670] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1001bc60 calls vs2GetHphaseShadow [0x1001990c] with a0=a0 at entry (arg0), a1=sp-104, a2=sp-100, a3=?.
  The `jal` at 0x1001bc88 calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=0x4200, a2=0x2, a3=?.
  The `jal` at 0x1001bcb0 calls vs2WriteXilinxReg [0x100188c8] with a0=a0 at entry (arg0), a1=0x4200, a2=0xc, a3=?.
  The `beq` branch at 0x1001bb68 targets 0x1001bb8c, is taken when s2(=a1) == 0, and falls through when s2(=a1) != 0.
  The `beq` branch at 0x1001bc04 targets 0x1001bcd0 and is always taken.
  The `beq` branch at 0x1001bc0c targets 0x1001bc34, is taken when s2(=a1) == 0, and falls through when s2(=a1) != 0.
  The `beq` branch at 0x1001bcc8 targets 0x1001bcec, is taken when s1(?) >= 0x2 (signed), and falls through when s1(?) < 0x2 (signed).
  The `beq` branch at 0x1001bcdc targets 0x1001bc0c, is taken when t8(?) == s1(?), and falls through when t8(?) != s1(?).
  The `beq` branch at 0x1001bce4 targets 0x1001bc0c and is always taken.
  The return at 0x1001bd18 has v0 = ret(vs2WriteXilinxReg).

- `vs2MapScreenToChannel` in `usr/gfx/gfxinit` at 0x1001c3bc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001c3bc-0x1001c444 (136 bytes).
  It occupies 136 bytes.
  The `jal` at 0x1001c3fc calls vs2WriteByte [0x10018864] with a0=a0 at entry (arg0), a1=0x42a0, a2=?, a3=a3 at entry (arg3).
  The `jal` at 0x1001c410 calls vs2WriteByte [0x10018864] with a0=a0 at entry (arg0), a1=0x42b0, a2=?, a3=?.
  The `jal` at 0x1001c428 calls vs2RegisterClearBit [0x10018360] with a0=a0 at entry (arg0), a1=0x42a0, a2=0x1, a3=?.
  The return at 0x1001c43c has v0 = ret(vs2RegisterClearBit).

- `vs2WriteDACAlternateRAM` in `usr/gfx/gfxinit` at 0x1001c444 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001c444-0x1001c4f8 (180 bytes).
  It occupies 180 bytes.
  The `lbu` at 0x1001c4c0 loads 1 byte from ?.
  The `jal` at 0x1001c484 calls (unnamed) [0x1001c67c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1001c4bc calls vs2WriteByte [0x10018864] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1001c49c targets 0x1001c4d0, is taken when s0(=a3-1) == s5(=-0x1), and falls through when s0(=a3-1) != s5(=-0x1).
  The `bne` branch at 0x1001c4c8 targets 0x1001c4b0, is taken when s0(?) != s5(=-0x1), and falls through when s0(?) == s5(=-0x1).
  The return at 0x1001c4f0 has v0 = one of ret(0x1001c67c), ret(vs2WriteByte).

- `vs2ReadDACCommandRegister` in `usr/gfx/gfxinit` at 0x1001c4f8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001c4f8-0x1001c55c (100 bytes).
  It occupies 100 bytes.
  The `jal` at 0x1001c524 calls (unnamed) [0x1001c67c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1001c540 calls vs2ReadByte [0x1001834c] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0x1001c554 has v0 = ret(vs2ReadByte).

- `vs2WriteDACCommandRegister` in `usr/gfx/gfxinit` at 0x1001c55c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001c55c-0x1001c5c8 (108 bytes).
  It occupies 108 bytes.
  The `jal` at 0x1001c58c calls (unnamed) [0x1001c67c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1001c5ac calls vs2WriteByte [0x10018864] with a0=a0 at entry (arg0), a1=?, a2=a3 at entry (arg3), a3=?.
  The return at 0x1001c5c0 has v0 = ret(vs2WriteByte).

- `vs2WriteDACPrimaryRAM` in `usr/gfx/gfxinit` at 0x1001c5c8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001c5c8-0x1001c67c (180 bytes).
  It occupies 180 bytes.
  The `lbu` at 0x1001c644 loads 1 byte from ?.
  The `jal` at 0x1001c608 calls (unnamed) [0x1001c67c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1001c640 calls vs2WriteByte [0x10018864] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1001c620 targets 0x1001c654, is taken when s0(=a3-1) == s5(=-0x1), and falls through when s0(=a3-1) != s5(=-0x1).
  The `bne` branch at 0x1001c64c targets 0x1001c634, is taken when s0(?) != s5(=-0x1), and falls through when s0(?) == s5(=-0x1).
  The return at 0x1001c674 has v0 = one of ret(0x1001c67c), ret(vs2WriteByte).

- `vs2SetDACGamma` in `usr/gfx/gfxinit` at 0x1001c6dc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001c6dc-0x1001c7f4 (280 bytes).
  It occupies 280 bytes.
  The `sb` at 0x1001c770 stores 1 byte to ?.
  The `jalr` at 0x1001c74c calls pow with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1001c788 calls vs2WriteDACPrimaryRAM [0x1001c5c8] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=0x0, a3=0x400, a4=sp-1120.
  The `jal` at 0x1001c7bc calls vs2WriteDACPrimaryRAM [0x1001c5c8] with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=0x0, a3=0x400, a4=sp-1120.
  The `jal` at 0x1001c7d8 calls vs2WriteDACPrimaryRAM [0x1001c5c8] with a0=a0 at entry (arg0), a1=a4 at entry (arg4), a2=0x0, a3=0x400, a4=sp-1120.
  The `bne` branch at 0x1001c76c targets 0x1001c73c, is taken when s0(?) < 0x400 (signed), and falls through when s0(?) >= 0x400 (signed).
  The return at 0x1001c7ec has v0 = ret(vs2WriteDACPrimaryRAM).

- `vs2DPOTDeselect` in `usr/gfx/gfxinit` at 0x1001c7f4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001c7f4-0x1001c8a4 (176 bytes).
  It occupies 176 bytes.
  3 such `lw` accesses load 4 bytes from abs 0x100283e8, including `lw` at 0x1001c84c, `lw` at 0x1001c86c, `lw` at 0x1001c874.
  The `lbu` at 0x1001c860 loads 1 byte from abs 0x100283f8.
  The `ld` at 0x1001c864 loads 8 bytes from abs 0x100283f0.
  The `jalr` at 0x1001c830 calls __assert with a0=0x10023b58, a1=0x10023b70, a2=0x48, a3=a3 at entry (arg3).
  The `jal` at 0x1001c848 calls vs2ReadByte [0x1001834c] with a0=[0x100283e8], a1=0x41a0, a2=?, a3=?.
  The `jal` at 0x1001c854 calls vs2Delay [0x10018dbc] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x1001c868 calls vs2RegisterSetBit [0x100183c8] with a0=[0x100283e8], a1=[0x100283f0]:8, a2=[0x100283f8]:1, a3=?.
  The `jal` at 0x1001c878 calls vs2ReadByte [0x1001834c] with a0=[0x100283e8], a1=0x41a0, a2=?, a3=?.
  The `jal` at 0x1001c888 calls vs2Delay [0x10018dbc] with a0=0x4e20, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1001c814 targets 0x1001c838, is taken when at(=[0x1002785c]) == v0(=0x1), and falls through when at(=[0x1002785c]) != v0(=0x1).
  The return at 0x1001c89c has v0 = ret(vs2Delay).

- `vs2DPOTEasySet` in `usr/gfx/gfxinit` at 0x1001c8a4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001c8a4-0x1001c968 (196 bytes).
  It occupies 196 bytes.
  The `ld` at 0x1001c8e0 loads 8 bytes from abs 0x100283e8.
  The `ld` at 0x1001c8ec loads 8 bytes from abs 0x100283f0.
  The `ld` at 0x1001c8f0 loads 8 bytes from abs 0x100283f8.
  The `jal` at 0x1001c8f8 calls vs2DPOTDeselect [0x1001c7f4] with a0=a0 at entry (arg0), a1=[0x100283f0]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1001c90c calls vs2DPOTSelect [0x1001c968] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x1001c918 calls vs2DPOTSet [0x1001ca38] with a0=a3 at entry (arg3), a1=?, a2=?, a3=?.
  The `jal` at 0x1001c924 calls vs2DPOTDeselect [0x1001c7f4] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1001c944 calls vs2DPOTSelect [0x1001c968] with a0=?, a1=?, a2=?, a3=sym(vs2DPOTSelect).
  The `jal` at 0x1001c950 calls vs2DPOTSet [0x1001ca38] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1001c8d0 targets 0x1001c900, is taken when at(=[0x1002785c]) == 0, and falls through when at(=[0x1002785c]) != 0.
  The `beq` branch at 0x1001c930 targets 0x1001c958, is taken when a2(=[0x1002785c]) == 0, and falls through when a2(=[0x1002785c]) != 0.
  The return at 0x1001c960 has v0 = one of ret(vs2DPOTDeselect), ret(vs2DPOTSet).

- `vs2DPOTSelect` in `usr/gfx/gfxinit` at 0x1001c968 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001c968-0x1001ca38 (208 bytes).
  It occupies 208 bytes.
  The `sw` at 0x1001c9c4 stores 4 bytes to abs 0x100283e8.
  The `sb` at 0x1001c9d4 stores 1 byte to abs 0x100283f8.
  The `sd` at 0x1001c9e0 stores 8 bytes to abs 0x100283f0.
  The `sb` at 0x1001ca1c stores 1 byte to abs 0x100283f9.
  The `jalr` at 0x1001c9ac calls __assert with a0=0x10023b80, a1=0x10023b70, a2=0xae, a3=a3 at entry (arg3).
  The `jal` at 0x1001c9dc calls vs2RegisterClearBit [0x10018360] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a1 at entry (arg1), a4=0x100283e8, a5=a2 at entry (arg2).
  The `jal` at 0x1001c9ec calls vs2ReadByte [0x1001834c] with a0=a0 at entry (arg0), a1=0x41a0, a2=?, a3=?.
  The `jal` at 0x1001c9fc calls vs2Delay [0x10018dbc] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x1001ca18 calls vs2DPOTSet [0x1001ca38] with a0=0x0, a1=?, a2=?, a3=?, a5=0x63, a6=0x100283e8.
  The `beq` branch at 0x1001c990 targets 0x1001c9b4, is taken when at(=[0x1002785c]) == 0, and falls through when at(=[0x1002785c]) != 0.
  The return at 0x1001ca30 has v0 = ret(vs2DPOTSet).

- `vs2DPOTSet` in `usr/gfx/gfxinit` at 0x1001ca38 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001ca38-0x1001cb2c (244 bytes).
  It occupies 244 bytes.
  The `lbu` at 0x1001ca5c loads 1 byte from abs 0x100283f9.
  4 such `lw` accesses load 4 bytes from abs 0x100283e8, including `lw` at 0x1001ca94, `lw` at 0x1001caa4, `lw` at 0x1001cad4.
  The `sb` at 0x1001caf8 stores 1 byte to abs 0x100283f9.
  The `jal` at 0x1001ca90 calls vs2RegisterClearBit [0x10018360] with a0=[0x100283e8], a1=0x4020, a2=0x4, a3=[0x100283f9]:1, a4=0x10030000.
  The `jal` at 0x1001caa0 calls vs2ReadByte [0x1001834c] with a0=[0x100283e8], a1=0x41a0, a2=?, a3=?.
  The `jal` at 0x1001caac calls vs2Delay [0x10018dbc] with a0=0x3, a1=?, a2=?, a3=?.
  The `jal` at 0x1001cad0 calls vs2ToggleSerialClock [0x1001877c] with a0=[0x100283e8], a1=?, a2=?, a3=?.
  The `jal` at 0x1001cb1c calls vs2RegisterSetBit [0x100183c8] with a0=[0x100283e8], a1=0x4020, a2=0x4, a3=[0x100283f9]:1, a4=0x10030000.
  The `bltz` branch at 0x1001ca74 targets 0x1001cb0c, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `blez` branch at 0x1001ca7c targets 0x1001cb10, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `beq` branch at 0x1001cac4 targets 0x1001cae4, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0x1001cadc targets 0x1001cad0, is taken when s1(?) != s3(=-0x1), and falls through when s1(?) == s3(=-0x1).
  The `beq` branch at 0x1001cb24 targets 0x1001ca9c and is always taken.
  The return at 0x1001cb04 has v0 = one of ret(vs2Delay), ret(vs2ToggleSerialClock).

- `venice_clock_vs2_serial_dataByte` in `usr/gfx/gfxinit` at 0x1001cb2c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001cb2c-0x1001cbb4 (136 bytes).
  It occupies 136 bytes.
  The `jal` at 0x1001cb6c calls vs2WriteByte [0x10018864] with a0=[0x10027860], a1=0x4290, a2=?, a3=?.
  The `jal` at 0x1001cb80 calls vs2WriteByte [0x10018864] with a0=[0x10027860], a1=0x4280, a2=0x1, a3=?.
  The `bne` branch at 0x1001cb90 targets 0x1001cb5c, is taken when s1(?) < 0x8 (signed), and falls through when s1(?) >= 0x8 (signed).
  The return at 0x1001cbac has v0 = ret(vs2WriteByte).

- `venice_wait_vs2_vif0_configMem_clear` in `usr/gfx/gfxinit` at 0x1001cbb4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001cbb4-0x1001cc3c (136 bytes).
  It occupies 136 bytes.
  The `jal` at 0x1001cbdc calls vs2ReadStatus [0x1001842c] with a0=[0x10027860], a1=0x41b0, a2=?, a3=?.
  The `jal` at 0x1001cbfc calls vs2Delay [0x10018dbc] with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x1001cc1c calls vs2Delay [0x10018dbc] with a0=0x5, a1=?, a2=?, a3=?.
  The `bne` branch at 0x1001cbe8 targets 0x1001cc0c, is taken when (v0(=ret(vs2ReadStatus)) & 0x10) != 0, and falls through when (v0(=ret(vs2ReadStatus)) & 0x10) == 0.
  The `beq` branch at 0x1001cbf4 targets 0x1001cc14, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x1001cc04 targets 0x1001cbd8 and is always taken.
  The `bne` branch at 0x1001cc0c targets 0x1001cc1c, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x1001cc14 targets 0x1001cc28 and is always taken.
  The return at 0x1001cc34 has v0 = one of -0x1, 0x1.

- `venice_write_vs2_vif0_program` in `usr/gfx/gfxinit` at 0x1001cc3c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001cc3c-0x1001cc9c (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x1001cc68 calls vs2RegisterSetBit [0x100183c8] with a0=[0x10027860], a1=0x4050, a2=0x4, a3=a3 at entry (arg3), a4=[0x10027860].
  The `jal` at 0x1001cc8c calls vs2RegisterClearBit [0x10018360] with a0=[0x10027860], a1=0x4050, a2=0x4, a3=a3 at entry (arg3), a4=[0x10027860].
  The `beq` branch at 0x1001cc54 targets 0x1001cc80, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x1001cc94 targets 0x1001cc74 and is always taken.
  The return at 0x1001cc78 has v0 = one of ret(vs2RegisterSetBit), ret(vs2RegisterClearBit).

- `venice_check_vs2_vif0_frame_status` in `usr/gfx/gfxinit` at 0x1001cc9c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001cc9c-0x1001ccf8 (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x1001ccbc calls vs2ReadStatus [0x1001842c] with a0=[0x10027860], a1=0x41b0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1001ccd0 targets 0x1001cce4, is taken when (v0(=ret(vs2ReadStatus)) & 0x10) == 0, and falls through when (v0(=ret(vs2ReadStatus)) & 0x10) != 0.
  The return at 0x1001ccdc has v0 = 0x1.
  The return at 0x1001ccf0 has v0 = 0x0.

- `venice_read_vs2_vif0_done` in `usr/gfx/gfxinit` at 0x1001ccf8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001ccf8-0x1001cd54 (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x1001cd18 calls vs2ReadStatus [0x1001842c] with a0=[0x10027860], a1=0x41a0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1001cd2c targets 0x1001cd40, is taken when (v0(=ret(vs2ReadStatus)) & 0x4) == 0, and falls through when (v0(=ret(vs2ReadStatus)) & 0x4) != 0.
  The return at 0x1001cd38 has v0 = 0x1.
  The return at 0x1001cd4c has v0 = 0x0.

- `venice_wait_vs2_vif1_configMem_clear` in `usr/gfx/gfxinit` at 0x1001cda8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001cda8-0x1001ce30 (136 bytes).
  It occupies 136 bytes.
  The `jal` at 0x1001cdd0 calls vs2ReadStatus [0x1001842c] with a0=[0x10027860], a1=0x41b0, a2=?, a3=?.
  The `jal` at 0x1001cdf0 calls vs2Delay [0x10018dbc] with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x1001ce10 calls vs2Delay [0x10018dbc] with a0=0x5, a1=?, a2=?, a3=?.
  The `bne` branch at 0x1001cddc targets 0x1001ce00, is taken when (v0(=ret(vs2ReadStatus)) & 0x20) != 0, and falls through when (v0(=ret(vs2ReadStatus)) & 0x20) == 0.
  The `beq` branch at 0x1001cde8 targets 0x1001ce08, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x1001cdf8 targets 0x1001cdcc and is always taken.
  The `bne` branch at 0x1001ce00 targets 0x1001ce10, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x1001ce08 targets 0x1001ce1c and is always taken.
  The return at 0x1001ce28 has v0 = one of -0x1, 0x1.

- `venice_write_vs2_vif1_program` in `usr/gfx/gfxinit` at 0x1001ce30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001ce30-0x1001ce90 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x1001ce5c calls vs2RegisterSetBit [0x100183c8] with a0=[0x10027860], a1=0x4050, a2=0x8, a3=a3 at entry (arg3), a4=[0x10027860].
  The `jal` at 0x1001ce80 calls vs2RegisterClearBit [0x10018360] with a0=[0x10027860], a1=0x4050, a2=0x8, a3=a3 at entry (arg3), a4=[0x10027860].
  The `beq` branch at 0x1001ce48 targets 0x1001ce74, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x1001ce88 targets 0x1001ce68 and is always taken.
  The return at 0x1001ce6c has v0 = one of ret(vs2RegisterSetBit), ret(vs2RegisterClearBit).

- `venice_check_vs2_vif1_frame_status` in `usr/gfx/gfxinit` at 0x1001ce90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001ce90-0x1001ceec (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x1001ceb0 calls vs2ReadStatus [0x1001842c] with a0=[0x10027860], a1=0x41b0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1001cec4 targets 0x1001ced8, is taken when (v0(=ret(vs2ReadStatus)) & 0x20) == 0, and falls through when (v0(=ret(vs2ReadStatus)) & 0x20) != 0.
  The return at 0x1001ced0 has v0 = 0x1.
  The return at 0x1001cee4 has v0 = 0x0.

- `venice_read_vs2_vif1_done` in `usr/gfx/gfxinit` at 0x1001ceec (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001ceec-0x1001cf48 (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x1001cf0c calls vs2ReadStatus [0x1001842c] with a0=[0x10027860], a1=0x41a0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1001cf20 targets 0x1001cf34, is taken when (v0(=ret(vs2ReadStatus)) & 0x8) == 0, and falls through when (v0(=ret(vs2ReadStatus)) & 0x8) != 0.
  The return at 0x1001cf2c has v0 = 0x1.
  The return at 0x1001cf40 has v0 = 0x0.

- `venice_wait_vs2_vof0_configMem_clear` in `usr/gfx/gfxinit` at 0x1001cf9c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001cf9c-0x1001d024 (136 bytes).
  It occupies 136 bytes.
  The `jal` at 0x1001cfc4 calls vs2ReadStatus [0x1001842c] with a0=[0x10027860], a1=0x41b0, a2=?, a3=?.
  The `jal` at 0x1001cfe4 calls vs2Delay [0x10018dbc] with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x1001d004 calls vs2Delay [0x10018dbc] with a0=0x5, a1=?, a2=?, a3=?.
  The `bne` branch at 0x1001cfd0 targets 0x1001cff4, is taken when (v0(=ret(vs2ReadStatus)) & 0x40) != 0, and falls through when (v0(=ret(vs2ReadStatus)) & 0x40) == 0.
  The `beq` branch at 0x1001cfdc targets 0x1001cffc, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x1001cfec targets 0x1001cfc0 and is always taken.
  The `bne` branch at 0x1001cff4 targets 0x1001d004, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x1001cffc targets 0x1001d010 and is always taken.
  The return at 0x1001d01c has v0 = one of -0x1, 0x1.

- `venice_write_vs2_vof0_program` in `usr/gfx/gfxinit` at 0x1001d024 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001d024-0x1001d084 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x1001d050 calls vs2RegisterSetBit [0x100183c8] with a0=[0x10027860], a1=0x4050, a2=0x1, a3=a3 at entry (arg3), a4=[0x10027860].
  The `jal` at 0x1001d074 calls vs2RegisterClearBit [0x10018360] with a0=[0x10027860], a1=0x4050, a2=0x1, a3=a3 at entry (arg3), a4=[0x10027860].
  The `beq` branch at 0x1001d03c targets 0x1001d068, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x1001d07c targets 0x1001d05c and is always taken.
  The return at 0x1001d060 has v0 = one of ret(vs2RegisterSetBit), ret(vs2RegisterClearBit).

- `venice_check_vs2_vof0_frame_status` in `usr/gfx/gfxinit` at 0x1001d084 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001d084-0x1001d0e0 (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x1001d0a4 calls vs2ReadStatus [0x1001842c] with a0=[0x10027860], a1=0x41b0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1001d0b8 targets 0x1001d0cc, is taken when (v0(=ret(vs2ReadStatus)) & 0x40) == 0, and falls through when (v0(=ret(vs2ReadStatus)) & 0x40) != 0.
  The return at 0x1001d0c4 has v0 = 0x1.
  The return at 0x1001d0d8 has v0 = 0x0.

- `venice_read_vs2_vof0_done` in `usr/gfx/gfxinit` at 0x1001d0e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001d0e0-0x1001d13c (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x1001d100 calls vs2ReadStatus [0x1001842c] with a0=[0x10027860], a1=0x41a0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1001d114 targets 0x1001d128, is taken when (v0(=ret(vs2ReadStatus)) & 0x1) == 0, and falls through when (v0(=ret(vs2ReadStatus)) & 0x1) != 0.
  The return at 0x1001d120 has v0 = 0x1.
  The return at 0x1001d134 has v0 = 0x0.

- `venice_wait_vs2_vof1_configMem_clear` in `usr/gfx/gfxinit` at 0x1001d190 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001d190-0x1001d218 (136 bytes).
  It occupies 136 bytes.
  The `jal` at 0x1001d1b8 calls vs2ReadStatus [0x1001842c] with a0=[0x10027860], a1=0x41b0, a2=?, a3=?.
  The `jal` at 0x1001d1d8 calls vs2Delay [0x10018dbc] with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x1001d1f8 calls vs2Delay [0x10018dbc] with a0=0x5, a1=?, a2=?, a3=?.
  The `bne` branch at 0x1001d1c4 targets 0x1001d1e8, is taken when (v0(=ret(vs2ReadStatus)) & 0x80) != 0, and falls through when (v0(=ret(vs2ReadStatus)) & 0x80) == 0.
  The `beq` branch at 0x1001d1d0 targets 0x1001d1f0, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x1001d1e0 targets 0x1001d1b4 and is always taken.
  The `bne` branch at 0x1001d1e8 targets 0x1001d1f8, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x1001d1f0 targets 0x1001d204 and is always taken.
  The return at 0x1001d210 has v0 = one of -0x1, 0x1.

- `venice_write_vs2_vof1_program` in `usr/gfx/gfxinit` at 0x1001d218 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001d218-0x1001d278 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x1001d244 calls vs2RegisterSetBit [0x100183c8] with a0=[0x10027860], a1=0x4050, a2=0x2, a3=a3 at entry (arg3), a4=[0x10027860].
  The `jal` at 0x1001d268 calls vs2RegisterClearBit [0x10018360] with a0=[0x10027860], a1=0x4050, a2=0x2, a3=a3 at entry (arg3), a4=[0x10027860].
  The `beq` branch at 0x1001d230 targets 0x1001d25c, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x1001d270 targets 0x1001d250 and is always taken.
  The return at 0x1001d254 has v0 = one of ret(vs2RegisterSetBit), ret(vs2RegisterClearBit).

- `venice_check_vs2_vof1_frame_status` in `usr/gfx/gfxinit` at 0x1001d278 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001d278-0x1001d2d4 (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x1001d298 calls vs2ReadStatus [0x1001842c] with a0=[0x10027860], a1=0x41b0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1001d2ac targets 0x1001d2c0, is taken when (v0(=ret(vs2ReadStatus)) & 0x80) == 0, and falls through when (v0(=ret(vs2ReadStatus)) & 0x80) != 0.
  The return at 0x1001d2b8 has v0 = 0x1.
  The return at 0x1001d2cc has v0 = 0x0.

- `venice_read_vs2_vof1_done` in `usr/gfx/gfxinit` at 0x1001d2d4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001d2d4-0x1001d330 (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x1001d2f4 calls vs2ReadStatus [0x1001842c] with a0=[0x10027860], a1=0x41a0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1001d308 targets 0x1001d31c, is taken when (v0(=ret(vs2ReadStatus)) & 0x2) == 0, and falls through when (v0(=ret(vs2ReadStatus)) & 0x2) != 0.
  The return at 0x1001d314 has v0 = 0x1.
  The return at 0x1001d328 has v0 = 0x0.

- `venice_load_vs2_xilinx` in `usr/gfx/gfxinit` at 0x1001d384 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001d384-0x1001d4a8 (292 bytes).
  It occupies 292 bytes.
  The `jalr` at 0x1001d3b4 calls (unknown callee) with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1001d434 calls printf with a0=0x10023b98, a1=0x1, a2=?, a3=?, a5=0x3, a6=0x1, a7=0x4.
  The `jalr` at 0x1001d444 calls (unknown callee) with a0=ret(?), a1=?, a2=?, a3=?.
  The `jal` at 0x1001d45c calls (unnamed) [0x1001d13c] with a0=ret(?), a1=0x1, a2=?, a3=?, a5=0x3, a6=0x1, a7=0x4.
  The `jal` at 0x1001d470 calls (unnamed) [0x1001d330] with a0=ret(?), a1=0x1, a2=?, a3=?, a5=0x3, a6=0x1, a7=0x4.
  The `jal` at 0x1001d484 calls (unnamed) [0x1001cd54] with a0=ret(?), a1=0x1, a2=?, a3=?, a5=0x3, a6=0x1, a7=0x4.
  The `jal` at 0x1001d498 calls (unnamed) [0x1001cf48] with a0=ret(?), a1=0x1, a2=?, a3=?, a5=0x3, a6=0x1, a7=0x4.
  The `beq` branch at 0x1001d3d0 targets 0x1001d424, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x1001d3d8 targets 0x1001d454, is taken when s0(=a1) == a0(=0x2), and falls through when s0(=a1) != a0(=0x2).
  The `beq` branch at 0x1001d3e0 targets 0x1001d46c, is taken when s0(=a1) == a5(=0x3), and falls through when s0(=a1) != a5(=0x3).
  The `beq` branch at 0x1001d3e8 targets 0x1001d480, is taken when s0(=a1) == 0, and falls through when s0(=a1) != 0.
  The `beq` branch at 0x1001d3f0 targets 0x1001d494, is taken when s0(=a1) == a6(=0x1), and falls through when s0(=a1) != a6(=0x1).
  The `beq` branch at 0x1001d3f8 targets 0x1001d42c, is taken when s0(=a1) == a7(=0x4), and falls through when s0(=a1) != a7(=0x4).
  The `beq` branch at 0x1001d400 targets 0x1001d430, is taken when s0(=a1) == v0(=0x5), and falls through when s0(=a1) != v0(=0x5).
  The `beq` branch at 0x1001d424 targets 0x1001d40c and is always taken.
  The `beq` branch at 0x1001d44c targets 0x1001d408 and is always taken.
  The `beq` branch at 0x1001d464 targets 0x1001d440 and is always taken.
  The `beq` branch at 0x1001d478 targets 0x1001d440 and is always taken.
  The `beq` branch at 0x1001d48c targets 0x1001d440 and is always taken.
  The `beq` branch at 0x1001d4a0 targets 0x1001d440 and is always taken.
  The return at 0x1001d41c has v0 = one of ?, -0x5.

- `load_3000_serial` in `usr/gfx/gfxinit` at 0x1001d4a8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001d4a8-0x1001d60c (356 bytes).
  It occupies 356 bytes.
  The `lw` at 0x1001d578 loads 4 bytes from (sym(xilinx_info) + (a5 << 0x4)) +0x8.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1001d58c, `lbu` at 0x1001d5ac.
  The `jalr` at 0x1001d4f4 calls (unknown callee) with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1001d500 calls (unknown callee) with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001d50c calls (unknown callee) with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001d518 calls (unknown callee) with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001d524 calls (unknown callee) with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001d530 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001d598 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001d5d0 calls (unknown callee) with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001d5e8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1001d540 targets 0x1001d568, is taken when v0(=ret(?)) == v1(=0x1), and falls through when v0(=ret(?)) != v1(=0x1).
  The `blez` branch at 0x1001d57c targets 0x1001d5c0, is taken when v0(=[(sym(xilinx_info) + (a5 << 0x4))+8]) <= 0 (signed), and falls through when v0(=[(sym(xilinx_info) + (a5 << 0x4))+8]) > 0 (signed).
  The `bnel` branch at 0x1001d5a8 targets 0x1001d590, is taken when s0(?) < 0x100 (unsigned), and falls through when s0(?) >= 0x100 (unsigned); its branch-likely delay slot `lbu a0,0(s1)` at 0x1001d5ac runs only when taken and is annulled on fall-through.
  The `bgtz` branch at 0x1001d5b8 targets 0x1001d58c, is taken when s3(?) > 0 (signed), and falls through when s3(?) <= 0 (signed).
  The `bne` branch at 0x1001d5e0 targets 0x1001d5cc, is taken when s0(?) < 0x19 (signed), and falls through when s0(?) >= 0x19 (signed).
  The `beq` branch at 0x1001d5f0 targets 0x1001d600, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x1001d5f8 targets 0x1001d54c and is always taken.
  The `beq` branch at 0x1001d604 targets 0x1001d54c and is always taken.
  The return at 0x1001d560 has v0 = one of -0x3, -0x1, 0x1.

- `load_3000_serial_byte` in `usr/gfx/gfxinit` at 0x1001d60c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001d60c-0x1001d764 (344 bytes).
  It occupies 344 bytes.
  The `lw` at 0x1001d6dc loads 4 bytes from (sym(xilinx_info) + (a5 << 0x4)) +0x8.
  The `lbu` at 0x1001d6f4 loads 1 byte from ?.
  The `jalr` at 0x1001d654 calls (unknown callee) with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1001d660 calls (unknown callee) with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001d66c calls (unknown callee) with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001d678 calls (unknown callee) with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001d684 calls (unknown callee) with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001d690 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001d6f8 calls (unknown callee) with a0=?, a1=0x8, a2=?, a3=?.
  The `jalr` at 0x1001d724 calls (unknown callee) with a0=0xff, a1=0x8, a2=?, a3=?.
  The `jalr` at 0x1001d740 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1001d6a0 targets 0x1001d6cc, is taken when v0(=ret(?)) == v1(=0x1), and falls through when v0(=ret(?)) != v1(=0x1).
  The `blez` branch at 0x1001d6e4 targets 0x1001d710, is taken when s3(=[(sym(xilinx_info) + (a5 << 0x4))+8]) <= 0 (signed), and falls through when s3(=[(sym(xilinx_info) + (a5 << 0x4))+8]) > 0 (signed).
  The `bne` branch at 0x1001d708 targets 0x1001d6f0, is taken when s1(?) < s3(=[(sym(xilinx_info) + (a5 << 0x4))+8]) (signed), and falls through when s1(?) >= s3(=[(sym(xilinx_info) + (a5 << 0x4))+8]) (signed).
  The `bne` branch at 0x1001d734 targets 0x1001d720, is taken when s0(?) < 0x4 (signed), and falls through when s0(?) >= 0x4 (signed).
  The `beq` branch at 0x1001d74c targets 0x1001d75c, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x1001d754 targets 0x1001d6a8 and is always taken.
  The `beq` branch at 0x1001d75c targets 0x1001d6ac and is always taken.
  The return at 0x1001d6c4 has v0 = one of -0x3, -0x1, 0x1.

- `load_4000_serial` in `usr/gfx/gfxinit` at 0x1001d764 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001d764-0x1001d9dc (632 bytes).
  It occupies 632 bytes.
  The `lw` at 0x1001d810 loads 4 bytes from (sym(xilinx_info) + (a5 << 0x4)) +0x8.
  6 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1001d818, `lbu` at 0x1001d838, `lbu` at 0x1001d8a4.
  2 such `lw` accesses load 4 bytes from (sym(xilinx_info) + (a5 << 0x4)) +0x0, including `lw` at 0x1001d850, `lw` at 0x1001d880.
  3 such `lw` accesses load 4 bytes from (sym(xilinx_info) + (a5 << 0x4)) +0x4, including `lw` at 0x1001d868, `lw` at 0x1001d894, `lw` at 0x1001d8cc.
  The `jalr` at 0x1001d7b4 calls (unknown callee) with a0=0x1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1001d7c0 calls (unknown callee) with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001d7cc calls (unknown callee) with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001d7d8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001d824 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001d870 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001d8c0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001d8fc calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001d938 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001d968 calls (unknown callee) with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001d980 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1001d800 targets 0x1001d810, is taken when v0(=ret(?)) == v1(=0x1), and falls through when v0(=ret(?)) != v1(=0x1).
  The `beq` branch at 0x1001d808 targets 0x1001d994 and is always taken.
  The `bnel` branch at 0x1001d834 targets 0x1001d81c, is taken when s0(?) < 0x100 (unsigned), and falls through when s0(?) >= 0x100 (unsigned); its branch-likely delay slot `lbu a0,0(s2)` at 0x1001d838 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x1001d848 targets 0x1001d814, is taken when s3(?) < 0x5 (signed), and falls through when s3(?) >= 0x5 (signed).
  The `blez` branch at 0x1001d85c targets 0x1001d8f0, is taken when a3(=[(sym(xilinx_info) + (a5 << 0x4))]) <= 0 (signed), and falls through when a3(=[(sym(xilinx_info) + (a5 << 0x4))]) > 0 (signed).
  The `beq` branch at 0x1001d864 targets 0x1001d898 and is always taken.
  The `beq` branch at 0x1001d878 targets 0x1001d9d4, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x1001d88c targets 0x1001d8e8, is taken when s7(?) >= a4(=[(sym(xilinx_info) + (a5 << 0x4))]) (signed), and falls through when s7(?) < a4(=[(sym(xilinx_info) + (a5 << 0x4))]) (signed).
  The `blez` branch at 0x1001d898 targets 0x1001d86c, is taken when a5(=[(sym(xilinx_info) + (a5 << 0x4))+4]) <= 0 (signed), and falls through when a5(=[(sym(xilinx_info) + (a5 << 0x4))+4]) > 0 (signed).
  The `beq` branch at 0x1001d8a0 targets 0x1001d8b8 and is always taken.
  The `beq` branch at 0x1001d8ac targets 0x1001d86c, is taken when s3(?) >= v0(=[(sym(xilinx_info) + (a5 << 0x4))+4]) (signed), and falls through when s3(?) < v0(=[(sym(xilinx_info) + (a5 << 0x4))+4]) (signed).
  The `bne` branch at 0x1001d8d0 targets 0x1001d8a8, is taken when s5(=0x100) != s0(?), and falls through when s5(=0x100) == s0(?).
  The `beq` branch at 0x1001d8e0 targets 0x1001d8a8 and is always taken.
  The `beq` branch at 0x1001d8e8 targets 0x1001d918, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x1001d90c targets 0x1001d8f0, is taken when s0(?) < 0x100 (unsigned), and falls through when s0(?) >= 0x100 (unsigned).
  The `bne` branch at 0x1001d920 targets 0x1001d960, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x1001d948 targets 0x1001d92c, is taken when s0(?) < 0x100 (unsigned), and falls through when s0(?) >= 0x100 (unsigned).
  The `bgtz` branch at 0x1001d958 targets 0x1001d92c, is taken when s4(?) > 0 (signed), and falls through when s4(?) <= 0 (signed).
  The `bne` branch at 0x1001d978 targets 0x1001d964, is taken when s0(?) < 0x19 (signed), and falls through when s0(?) >= 0x19 (signed).
  The `beq` branch at 0x1001d988 targets 0x1001d9c8, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x1001d9cc targets 0x1001d994 and is always taken.
  The `beq` branch at 0x1001d9d4 targets 0x1001d990 and is always taken.
  The return at 0x1001d9c0 has v0 = one of -0x3, -0x2, -0x1, 0x1.

- `load_4000_serial_byte` in `usr/gfx/gfxinit` at 0x1001d9dc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001d9dc-0x1001db0c (304 bytes).
  It occupies 304 bytes.
  The `lw` at 0x1001da88 loads 4 bytes from (sym(xilinx_info) + (a5 << 0x4)) +0x8.
  The `lbu` at 0x1001daa0 loads 1 byte from ?.
  The `jalr` at 0x1001da1c calls (unknown callee) with a0=0x1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1001da28 calls (unknown callee) with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001da34 calls (unknown callee) with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001da40 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001daa4 calls (unknown callee) with a0=?, a1=0x8, a2=?, a3=?.
  The `jalr` at 0x1001dad0 calls (unknown callee) with a0=0xff, a1=0x8, a2=?, a3=?.
  The `jalr` at 0x1001dae8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1001da50 targets 0x1001da78, is taken when v0(=ret(?)) == v1(=0x1), and falls through when v0(=ret(?)) != v1(=0x1).
  The `blez` branch at 0x1001da90 targets 0x1001dabc, is taken when s3(=[(sym(xilinx_info) + (a5 << 0x4))+8]) <= 0 (signed), and falls through when s3(=[(sym(xilinx_info) + (a5 << 0x4))+8]) > 0 (signed).
  The `bne` branch at 0x1001dab4 targets 0x1001da9c, is taken when s1(?) < s3(=[(sym(xilinx_info) + (a5 << 0x4))+8]) (signed), and falls through when s1(?) >= s3(=[(sym(xilinx_info) + (a5 << 0x4))+8]) (signed).
  The `bne` branch at 0x1001dae0 targets 0x1001dac8, is taken when s0(?) < 0x4 (signed), and falls through when s0(?) >= 0x4 (signed).
  The `beq` branch at 0x1001daf4 targets 0x1001db04, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x1001dafc targets 0x1001da58 and is always taken.
  The `beq` branch at 0x1001db04 targets 0x1001da5c and is always taken.
  The return at 0x1001da70 has v0 = one of -0x3, -0x1, 0x1.

- `read_3000_serial` in `usr/gfx/gfxinit` at 0x1001db0c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001db0c-0x1001dc04 (248 bytes).
  It occupies 248 bytes.
  The `lw` at 0x1001db7c loads 4 bytes from (sym(xilinx_info) + (a3 << 0x4)) +0x8.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x1001db90, `sb` at 0x1001dbc4.
  The `lbu` at 0x1001dbb4 loads 1 byte from ?.
  The `jalr` at 0x1001db50 calls (unknown callee) with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1001db5c calls (unknown callee) with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001db68 calls sginap with a0=0x2, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001db98 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001dba4 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x1001db80 targets 0x1001dbd8, is taken when a1(=[(sym(xilinx_info) + (a3 << 0x4))+8]) <= 0 (signed), and falls through when a1(=[(sym(xilinx_info) + (a3 << 0x4))+8]) > 0 (signed).
  The `bne` branch at 0x1001dbc0 targets 0x1001db94, is taken when s0(?) < 0x8 (signed), and falls through when s0(?) >= 0x8 (signed).
  The `bgtz` branch at 0x1001dbd0 targets 0x1001db90, is taken when s4(?) > 0 (signed), and falls through when s4(?) <= 0 (signed).
  The return at 0x1001dbfc has v0 = 0x1.

- `read_4000_serial` in `usr/gfx/gfxinit` at 0x1001dc04 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001dc04-0x1001dd84 (384 bytes).
  It occupies 384 bytes.
  3 such `lw` accesses load 4 bytes from (sym(xilinx_info) + (a4 << 0x4)) +0x0, including `lw` at 0x1001dc74, `lw` at 0x1001dc8c, `lw` at 0x1001dcb4.
  The `lw` at 0x1001dce0 loads 4 bytes from (sym(xilinx_info) + (a4 << 0x4)) +0x8.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x1001dcf4, `sb` at 0x1001dd28.
  The `lbu` at 0x1001dd18 loads 1 byte from ?.
  The `jalr` at 0x1001dc50 calls (unknown callee) with a0=0x1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1001dc60 calls (unknown callee) with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001dc84 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001dcac calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001dccc calls (unknown callee) with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001dcd8 calls sginap with a0=0x2, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001dcfc calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001dd08 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001dd50 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x1001dc78 targets 0x1001dca0, is taken when v0(=[(sym(xilinx_info) + (a4 << 0x4))]) <= 0 (signed), and falls through when v0(=[(sym(xilinx_info) + (a4 << 0x4))]) > 0 (signed).
  The `bne` branch at 0x1001dc98 targets 0x1001dc84, is taken when s4(?) < v0(=[(sym(xilinx_info) + (a4 << 0x4))]) (signed), and falls through when s4(?) >= v0(=[(sym(xilinx_info) + (a4 << 0x4))]) (signed).
  The `blez` branch at 0x1001dca0 targets 0x1001dcc8, is taken when v0(=[(sym(xilinx_info) + (a4 << 0x4))]) <= 0 (signed), and falls through when v0(=[(sym(xilinx_info) + (a4 << 0x4))]) > 0 (signed).
  The `bne` branch at 0x1001dcc0 targets 0x1001dcac, is taken when s4(?) < ra(=[(sym(xilinx_info) + (a4 << 0x4))]) (signed), and falls through when s4(?) >= ra(=[(sym(xilinx_info) + (a4 << 0x4))]) (signed).
  The `bne` branch at 0x1001dce8 targets 0x1001dd3c, is taken when s4(=[(sym(xilinx_info) + (a4 << 0x4))+8]) < -0x1 (signed), and falls through when s4(=[(sym(xilinx_info) + (a4 << 0x4))+8]) >= -0x1 (signed).
  The `bne` branch at 0x1001dd24 targets 0x1001dcf8, is taken when s0(?) < 0x8 (signed), and falls through when s0(?) >= 0x8 (signed).
  The `bgtz` branch at 0x1001dd34 targets 0x1001dcf4, is taken when s4(?) > 0 (signed), and falls through when s4(?) <= 0 (signed).
  The `beq` branch at 0x1001dd64 targets 0x1001dd7c, is taken when v0(=ret(?)) == v1(=0x1), and falls through when v0(=ret(?)) != v1(=0x1).
  The `beq` branch at 0x1001dd7c targets 0x1001dd70 and is always taken.
  The return at 0x1001dd74 has v0 = one of -0x4, 0x1.

- `dump_xilinx_config` in `usr/gfx/gfxinit` at 0x1001dd84 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001dd84-0x1001de58 (212 bytes).
  It occupies 212 bytes.
  The `lbu` at 0x1001ddf0 loads 1 byte from ?.
  The `jalr` at 0x1001ddb8 calls printf with a0=0x10027178, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1001ddec calls printf with a0=0x100279a8, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001de2c calls printf with a0=0x100279b0, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001de48 calls printf with a0=0x100279ae, a1=?, a2=?, a3=?.
  The `blez` branch at 0x1001ddd0 targets 0x1001de14, is taken when s2(=a0) <= 0 (signed), and falls through when s2(=a0) > 0 (signed).
  The `beq` branch at 0x1001ddfc targets 0x1001de48, is taken when s5(=0x19) == v1(?), and falls through when s5(=0x19) != v1(?).
  The `bne` branch at 0x1001de0c targets 0x1001dde4, is taken when s1(?) < s2(=a0) (signed), and falls through when s1(?) >= s2(=a0) (signed).
  The `beq` branch at 0x1001de50 targets 0x1001de08 and is always taken.
  The return at 0x1001de40 has v0 = ret(printf).

- `get_config_size` in `usr/gfx/gfxinit` at 0x1001de58 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001de58-0x1001def4 (156 bytes).
  It occupies 156 bytes.
  The `lbu` at 0x1001de58 loads 1 byte from a0 (arg0 at entry) +0x3.
  The `lbu` at 0x1001de5c loads 1 byte from a0 (arg0 at entry) +0x1.
  The `lbu` at 0x1001de60 loads 1 byte from a0 (arg0 at entry) +0x4.
  The `lbu` at 0x1001de68 loads 1 byte from a0 (arg0 at entry) +0x2.
  The `bne` branch at 0x1001de84 targets 0x1001de70, is taken when a2(?) < 0x100 (signed), and falls through when a2(?) >= 0x100 (signed).
  The `bne` branch at 0x1001dea4 targets 0x1001de90, is taken when a2(?) < 0x100 (signed), and falls through when a2(?) >= 0x100 (signed).
  The `bne` branch at 0x1001dec4 targets 0x1001deb0, is taken when a2(?) < 0x100 (signed), and falls through when a2(?) >= 0x100 (signed).
  The `bne` branch at 0x1001dee4 targets 0x1001ded0, is taken when a2(?) < 0x10 (signed), and falls through when a2(?) >= 0x10 (signed).
  The return at 0x1001deec has v0 = ?.

- `read_xilinx_file` in `usr/gfx/gfxinit` at 0x1001e298 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinit`.
  Range: 0x1001e298-0x1001e330 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0x1001e2c8 loads 4 bytes from (sym(xilinx_info) + (a0 << 0x4)) +0x8.
  The `jalr` at 0x1001e2cc calls malloc with a0=[(sym(xilinx_info) + (a0 << 0x4))+8], a1=a1 at entry (arg1), a2=sym(xilinx_info), a3=a3 at entry (arg3).
  The `jal` at 0x1001e2ec calls (unnamed) [0x1001def4] with a0=a1 at entry (arg1), a1=[(sym(xilinx_info) + (a0 << 0x4))+8], a2=ret(malloc), a3=?.
  The `jalr` at 0x1001e320 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1001e2d4 targets 0x1001e318, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `beq` branch at 0x1001e2f8 targets 0x1001e320, is taken when v0(=ret(0x1001def4)) == ra(=-0x1), and falls through when v0(=ret(0x1001def4)) != ra(=-0x1).
  The `beq` branch at 0x1001e318 targets 0x1001e300 and is always taken.
  The `beq` branch at 0x1001e328 targets 0x1001e300 and is always taken.
  The return at 0x1001e310 has v0 = one of ret(malloc), 0x0.
