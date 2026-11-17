# Readings: `usr/lib/dmedia/imageconverters/vicempeg.so`

One entry per routine, filed here from the reading batches by binary.

- `dmICInitDso` in `usr/lib/dmedia/imageconverters/vicempeg.so` at 0x401020 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicempeg.so`.
  Range: 0x401020-0x401184 (356 bytes).
  It occupies 356 bytes.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x40111c, `lw` at 0x40112c, `lw` at 0x401134.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0x401128, `sw` at 0x401130, `sw` at 0x40113c.
  The `jalr` at 0x401158 calls dmICRegisterConverter with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x401138 targets 0x40111c, is taken when t4(?) != t8(=sp-4), and falls through when t4(?) == t8(=sp-4).
  The `bgez` branch at 0x401160 targets 0x401170, is taken when v0(=ret(dmICRegisterConverter)) >= 0 (signed), and falls through when v0(=ret(dmICRegisterConverter)) < 0 (signed).
  The `beq` branch at 0x401168 targets 0x401174 and is always taken.
  The return at 0x40117c has v0 = one of -0x1, 0x0.

- `GetDescription` in `usr/lib/dmedia/imageconverters/vicempeg.so` at 0x4012e4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicempeg.so`.
  Range: 0x4012e4-0x401410 (300 bytes).
  It occupies 300 bytes.
  The `jalr` at 0x401314 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x404030, a2=0x6d706567, a3=a3 at entry (arg3).
  The `jalr` at 0x401340 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x40403c, a2=0x40404c, a3=?.
  The `jalr` at 0x401368 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x404054, a2=0x1, a3=?.
  The `jalr` at 0x401390 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x404060, a2=0x2, a3=?.
  The `jalr` at 0x4013b8 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x404078, a2=0x2, a3=?.
  The `jalr` at 0x4013e0 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x404088, a2=0x0, a3=?.
  The `beq` branch at 0x40131c targets 0x40132c, is taken when v0(=ret(dmParamsSetInt)) == 0, and falls through when v0(=ret(dmParamsSetInt)) != 0.
  The `beq` branch at 0x401324 targets 0x4013fc and is always taken.
  The `beq` branch at 0x401348 targets 0x401358, is taken when v0(=ret(dmParamsSetString)) == 0, and falls through when v0(=ret(dmParamsSetString)) != 0.
  The `beq` branch at 0x401350 targets 0x4013fc and is always taken.
  The `beq` branch at 0x401370 targets 0x401380, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x401378 targets 0x4013fc and is always taken.
  The `beq` branch at 0x401398 targets 0x4013a8, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x4013a0 targets 0x4013fc and is always taken.
  The `beq` branch at 0x4013c0 targets 0x4013d0, is taken when v0(=ret(dmParamsSetInt)) == 0, and falls through when v0(=ret(dmParamsSetInt)) != 0.
  The `beq` branch at 0x4013c8 targets 0x4013fc and is always taken.
  The `beq` branch at 0x4013e8 targets 0x4013f8, is taken when v0(=ret(dmParamsSetInt)) == 0, and falls through when v0(=ret(dmParamsSetInt)) != 0.
  The `beq` branch at 0x4013f0 targets 0x4013fc and is always taken.
  The return at 0x401408 has v0 = one of -0x1, 0x0.

- `SetSrcPoolParams` in `usr/lib/dmedia/imageconverters/vicempeg.so` at 0x401410 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicempeg.so`.
  Range: 0x401410-0x40144c (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0x401430 calls vice_dmbuf_requirements with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x401444 has v0 = 0x0.

- `SetDstPoolParams` in `usr/lib/dmedia/imageconverters/vicempeg.so` at 0x40144c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicempeg.so`.
  Range: 0x40144c-0x401488 (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0x40146c calls vice_dmbuf_requirements with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x401480 has v0 = 0x0.

- `SetDstPool` in `usr/lib/dmedia/imageconverters/vicempeg.so` at 0x401488 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicempeg.so`.
  Range: 0x401488-0x4014d8 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x4014b0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0x4014c4 stores 4 bytes to a0 (arg0 at entry) +0xdc.
  The `jalr` at 0x4014ac calls vice_dmbuf_outpool with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x4014d0 has v0 = 0x0.

- `GetDstFD` in `usr/lib/dmedia/imageconverters/vicempeg.so` at 0x4014d8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicempeg.so`.
  Range: 0x4014d8-0x4014e0 (8 bytes).
  It occupies 8 bytes.
  The `lw` at 0x4014dc loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The return at 0x4014d8 has v0 = [a0+224].

- `GetSrcFilled` in `usr/lib/dmedia/imageconverters/vicempeg.so` at 0x4014e0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicempeg.so`.
  Range: 0x4014e0-0x40152c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x4014fc loads 4 bytes from a0 (arg0 at entry) +0xe8.
  The `jalr` at 0x401500 calls dmFifoNfilled with a0=[a0+232], a1=sp-8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x401508 targets 0x401518, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The `beq` branch at 0x401510 targets 0x40151c and is always taken.
  The return at 0x401524 has v0 = one of -0x1, ?.

- `GetDstFilled` in `usr/lib/dmedia/imageconverters/vicempeg.so` at 0x40152c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicempeg.so`.
  Range: 0x40152c-0x401578 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x401548 loads 4 bytes from a0 (arg0 at entry) +0x110.
  The `jalr` at 0x40154c calls dmFifoNfilled with a0=[a0+272], a1=sp-8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x401554 targets 0x401564, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The `beq` branch at 0x40155c targets 0x401568 and is always taken.
  The return at 0x401570 has v0 = one of -0x1, ?.

- `VerifySrcParams` in `usr/lib/dmedia/imageconverters/vicempeg.so` at 0x401578 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicempeg.so`.
  Range: 0x401578-0x401630 (184 bytes).
  It occupies 184 bytes.
  The `jalr` at 0x40159c calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x404098, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4015b8 calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x4040b0, a2=?, a3=?.
  The `jalr` at 0x4015d0 calls strcmp with a0=ret(dmParamsGetString), a1=0x4040c8, a2=?, a3=?.
  The `jalr` at 0x4015ec calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x4040d8, a2=?, a3=?.
  The `jalr` at 0x401604 calls strcmp with a0=ret(dmParamsGetString), a1=0x4040f0, a2=?, a3=?.
  The `beq` branch at 0x4015a4 targets 0x40161c, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x4015d8 targets 0x401614, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `bne` branch at 0x40160c targets 0x40161c, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x401614 targets 0x401620 and is always taken.
  The return at 0x401628 has v0 = one of -0x1, 0x0.

- `VerifyDstParams` in `usr/lib/dmedia/imageconverters/vicempeg.so` at 0x401630 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicempeg.so`.
  Range: 0x401630-0x4016b4 (132 bytes).
  It occupies 132 bytes.
  The `jalr` at 0x401654 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x404100, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401670 calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x404118, a2=?, a3=?.
  The `jalr` at 0x401688 calls strcmp with a0=ret(dmParamsGetString), a1=0x404130, a2=?, a3=?.
  The `beq` branch at 0x40165c targets 0x4016a0, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `bne` branch at 0x401690 targets 0x4016a0, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x401698 targets 0x4016a4 and is always taken.
  The return at 0x4016ac has v0 = one of -0x1, 0x0.

- `VerifyConvParams` in `usr/lib/dmedia/imageconverters/vicempeg.so` at 0x4016b4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicempeg.so`.
  Range: 0x4016b4-0x4016c0 (12 bytes).
  It occupies 12 bytes.
  The return at 0x4016b8 has v0 = -0x1.

- `GetDefSrcParams` in `usr/lib/dmedia/imageconverters/vicempeg.so` at 0x4016c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicempeg.so`.
  Range: 0x4016c0-0x401740 (128 bytes).
  It occupies 128 bytes.
  The `jalr` at 0x4016e8 calls dmSetImageDefaults with a0=a0 at entry (arg0), a1=0x160, a2=0xf0, a3=0xbb9.
  The `jalr` at 0x401714 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x404144, a2=0x40415c, a3=?.
  The `beq` branch at 0x4016f0 targets 0x401700, is taken when v0(=ret(dmSetImageDefaults)) == 0, and falls through when v0(=ret(dmSetImageDefaults)) != 0.
  The `beq` branch at 0x4016f8 targets 0x401730 and is always taken.
  The `beq` branch at 0x40171c targets 0x40172c, is taken when v0(=ret(dmParamsSetString)) == 0, and falls through when v0(=ret(dmParamsSetString)) != 0.
  The `beq` branch at 0x401724 targets 0x401730 and is always taken.
  The return at 0x401738 has v0 = one of -0x1, 0x0.

- `GetDefDstParams` in `usr/lib/dmedia/imageconverters/vicempeg.so` at 0x401740 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicempeg.so`.
  Range: 0x401740-0x4017c0 (128 bytes).
  It occupies 128 bytes.
  The `jalr` at 0x401768 calls dmSetImageDefaults with a0=a0 at entry (arg0), a1=0x160, a2=0xf0, a3=0x3f0.
  The `jalr` at 0x401794 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x40416c, a2=0x404184, a3=?.
  The `beq` branch at 0x401770 targets 0x401780, is taken when v0(=ret(dmSetImageDefaults)) == 0, and falls through when v0(=ret(dmSetImageDefaults)) != 0.
  The `beq` branch at 0x401778 targets 0x4017b0 and is always taken.
  The `beq` branch at 0x40179c targets 0x4017ac, is taken when v0(=ret(dmParamsSetString)) == 0, and falls through when v0(=ret(dmParamsSetString)) != 0.
  The `beq` branch at 0x4017a4 targets 0x4017b0 and is always taken.
  The return at 0x4017b8 has v0 = one of -0x1, 0x0.

- `GetDefConvParams` in `usr/lib/dmedia/imageconverters/vicempeg.so` at 0x4017c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicempeg.so`.
  Range: 0x4017c0-0x4017cc (12 bytes).
  It occupies 12 bytes.
  The return at 0x4017c4 has v0 = 0x0.

- `Send` in `usr/lib/dmedia/imageconverters/vicempeg.so` at 0x4017cc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicempeg.so`.
  Range: 0x4017cc-0x401fac (2016 bytes).
  It occupies 2016 bytes.
  The `lw` at 0x401838 loads 4 bytes from a3 (arg3 at entry) +0x4.
  The `lw` at 0x40186c loads 4 bytes from a3 (arg3 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x138, including `lw` at 0x401944, `lw` at 0x401ba0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x138, including `sw` at 0x401964, `sw` at 0x401ad8.
  12 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x401998, `lw` at 0x4019c0, `lw` at 0x4019f0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14, including `sw` at 0x401ab0, `sw` at 0x401b7c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x3c, including `sw` at 0x401ab4, `sw` at 0x401b80.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x40, including `sw` at 0x401ab8, `sw` at 0x401b84.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x13c, including `sw` at 0x401bb4, `sw` at 0x401c64.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x140, including `sw` at 0x401bbc, `sw` at 0x401c70.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x144, including `sh` at 0x401bc4, `sh` at 0x401c7c.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x146, including `sh` at 0x401bd0, `sh` at 0x401c88.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x148, including `sh` at 0x401bd8, `sh` at 0x401c94.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x14a, including `sh` at 0x401be0, `sh` at 0x401c9c.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x14c, including `sh` at 0x401be8, `sh` at 0x401ca4.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x14e, including `sh` at 0x401bf0, `sh` at 0x401cac.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x150, including `sh` at 0x401bf8, `sh` at 0x401cd8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x154, including `sw` at 0x401c00, `sw` at 0x401cb4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x158, including `sw` at 0x401c0c, `sw` at 0x401cb8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x15c, including `sw` at 0x401c1c, `sw` at 0x401cbc.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x160, including `sw` at 0x401c24, `sw` at 0x401cc0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x164, including `sw` at 0x401c2c, `sw` at 0x401cc4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x168, including `sw` at 0x401c34, `sw` at 0x401cc8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x16c, including `sw` at 0x401c3c, `sw` at 0x401ccc.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x170, including `sw` at 0x401c48, `sw` at 0x401c50, `sw` at 0x401cd0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x174, including `sw` at 0x401c60, `sw` at 0x401cd4.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x13c, including `lw` at 0x401cdc, `lw` at 0x401cf8, `lw` at 0x401d14.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x140, including `lw` at 0x401ce0, `lw` at 0x401d5c, `lw` at 0x401e1c.
  The `sw` at 0x401cf4 stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `sw` at 0x401cfc stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `sh` at 0x401d10 stores 2 bytes to a0 (arg0 at entry) +0x78.
  The `sh` at 0x401d18 stores 2 bytes to a0 (arg0 at entry) +0x7a.
  The `sh` at 0x401d24 stores 2 bytes to a0 (arg0 at entry) +0x7c.
  The `sh` at 0x401d3c stores 2 bytes to a0 (arg0 at entry) +0x7e.
  The `sh` at 0x401d58 stores 2 bytes to a0 (arg0 at entry) +0xb6.
  The `sh` at 0x401d60 stores 2 bytes to a0 (arg0 at entry) +0x80.
  The `lh` at 0x401d64 loads 2 bytes from a0 (arg0 at entry) +0x144.
  The `sh` at 0x401d68 stores 2 bytes to a0 (arg0 at entry) +0x82.
  The `lh` at 0x401d6c loads 2 bytes from a0 (arg0 at entry) +0x146.
  The `sh` at 0x401d70 stores 2 bytes to a0 (arg0 at entry) +0x84.
  The `lh` at 0x401d74 loads 2 bytes from a0 (arg0 at entry) +0x148.
  The `sh` at 0x401d94 stores 2 bytes to a0 (arg0 at entry) +0x8a.
  The `sh` at 0x401d98 stores 2 bytes to a0 (arg0 at entry) +0x88.
  The `sh` at 0x401d9c stores 2 bytes to a0 (arg0 at entry) +0x8c.
  The `lh` at 0x401da0 loads 2 bytes from a0 (arg0 at entry) +0x14a.
  The `sh` at 0x401dbc stores 2 bytes to a0 (arg0 at entry) +0x90.
  The `sh` at 0x401dc0 stores 2 bytes to a0 (arg0 at entry) +0x8e.
  The `sh` at 0x401dc4 stores 2 bytes to a0 (arg0 at entry) +0x92.
  The `lh` at 0x401dc8 loads 2 bytes from a0 (arg0 at entry) +0x14c.
  The `sh` at 0x401dcc stores 2 bytes to a0 (arg0 at entry) +0x86.
  The `lh` at 0x401dd0 loads 2 bytes from a0 (arg0 at entry) +0x14e.
  The `sh` at 0x401df0 stores 2 bytes to a0 (arg0 at entry) +0x96.
  The `sh` at 0x401df4 stores 2 bytes to a0 (arg0 at entry) +0x94.
  The `sh` at 0x401df8 stores 2 bytes to a0 (arg0 at entry) +0x98.
  The `lh` at 0x401dfc loads 2 bytes from a0 (arg0 at entry) +0x150.
  The `sh` at 0x401e00 stores 2 bytes to a0 (arg0 at entry) +0x9a.
  The `sh` at 0x401e04 stores 2 bytes to a0 (arg0 at entry) +0x9e.
  The `sh` at 0x401e18 stores 2 bytes to a0 (arg0 at entry) +0x9c.
  The `sh` at 0x401e3c stores 2 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x401e5c stores 2 bytes to a0 (arg0 at entry) +0xa2.
  The `lw` at 0x401e60 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `sh` at 0x401e64 stores 2 bytes to a0 (arg0 at entry) +0xa4.
  The `lw` at 0x401e68 loads 4 bytes from a0 (arg0 at entry) +0x158.
  The `sh` at 0x401e74 stores 2 bytes to a0 (arg0 at entry) +0xa6.
  The `lw` at 0x401e78 loads 4 bytes from a0 (arg0 at entry) +0x15c.
  The `sh` at 0x401e84 stores 2 bytes to a0 (arg0 at entry) +0xa8.
  The `lw` at 0x401e88 loads 4 bytes from a0 (arg0 at entry) +0x160.
  The `sh` at 0x401e94 stores 2 bytes to a0 (arg0 at entry) +0xaa.
  The `lw` at 0x401e98 loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `sh` at 0x401ea4 stores 2 bytes to a0 (arg0 at entry) +0xac.
  The `lw` at 0x401ea8 loads 4 bytes from a0 (arg0 at entry) +0x168.
  The `sh` at 0x401eb4 stores 2 bytes to a0 (arg0 at entry) +0xae.
  The `lw` at 0x401eb8 loads 4 bytes from a0 (arg0 at entry) +0x16c.
  The `sh` at 0x401ec4 stores 2 bytes to a0 (arg0 at entry) +0xb0.
  The `lw` at 0x401ec8 loads 4 bytes from a0 (arg0 at entry) +0x170.
  The `sh` at 0x401ed4 stores 2 bytes to a0 (arg0 at entry) +0xb2.
  The `lw` at 0x401ed8 loads 4 bytes from a0 (arg0 at entry) +0x174.
  The `sw` at 0x401ee4 stores 4 bytes to a0 (arg0 at entry) +0xbc.
  The `sw` at 0x401ee8 stores 4 bytes to a0 (arg0 at entry) +0xc0.
  The `sw` at 0x401eec stores 4 bytes to a0 (arg0 at entry) +0xc4.
  The `sw` at 0x401ef0 stores 4 bytes to a0 (arg0 at entry) +0xc8.
  The `sw` at 0x401ef4 stores 4 bytes to a0 (arg0 at entry) +0xcc.
  The `sw` at 0x401ef8 stores 4 bytes to a0 (arg0 at entry) +0xd0.
  The `sw` at 0x401efc stores 4 bytes to a0 (arg0 at entry) +0xd4.
  The `sw` at 0x401f00 stores 4 bytes to a0 (arg0 at entry) +0xd8.
  The `sh` at 0x401f08 stores 2 bytes to a0 (arg0 at entry) +0xb4.
  The `lbu` at 0x401f0c loads 1 byte from ?.
  The `sb` at 0x401f58 stores 1 byte to ?.
  The `jalr` at 0x401808 calls dmBufferMapData with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401820 calls dmBufferGetSize with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x40183c calls dmBufferMapData with a0=[a3+4], a1=?, a2=?, a3=?.
  The `jalr` at 0x401858 calls dmBufferGetUSTMSCpair with a0=sp-152, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x401894 calls dmBufferSetUSTMSCpair with a0=[a3], a1=?, a2=?, a3=?.
  The `jalr` at 0x4018c4 calls dmSetError with a0=-0x1, a1=0x404198, a2=0x4041a8, a3=?.
  The `jalr` at 0x4018e4 calls dmBufferGetUserData with a0=a1 at entry (arg1), a1=sp-80, a2=sp-84, a3=?.
  The `jalr` at 0x40190c calls dmParamsIsPresent with a0=?, a1=0x4041bc, a2=?, a3=?.
  The `jalr` at 0x401928 calls dmParamsGetString with a0=?, a1=0x4041d4, a2=?, a3=?.
  The `jalr` at 0x401950 calls strcmp with a0=?, a1=0x4041ec, a2=?, a3=?.
  The `jalr` at 0x401980 calls vice_file with a0=0x4041fc, a1=?, a2=?, a3=?.
  The `jalr` at 0x4019a0 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+4, a3=0x0.
  The `jalr` at 0x4019b4 calls vice_file with a0=0x40420c, a1=?, a2=?, a3=?.
  The `jalr` at 0x4019d0 calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+4, a3=?.
  The `jalr` at 0x4019e4 calls vice_file with a0=0x40421c, a1=?, a2=?, a3=?.
  The `jalr` at 0x401a00 calls vice_load_bsp_table with a0=[a0], a1=ret(vice_file), a2=a0+4, a3=?.
  The `jalr` at 0x401a18 calls vice_file with a0=0x404228, a1=?, a2=?, a3=?.
  The `jalr` at 0x401a38 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+4, a3=0x0.
  The `jalr` at 0x401a4c calls vice_file with a0=0x40423c, a1=?, a2=?, a3=?.
  The `jalr` at 0x401a68 calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+4, a3=?.
  The `jalr` at 0x401a7c calls vice_file with a0=0x404250, a1=?, a2=?, a3=?.
  The `jalr` at 0x401a98 calls vice_load_bsp_table with a0=[a0], a1=ret(vice_file), a2=a0+4, a3=?.
  The `jalr` at 0x401ac8 calls vice_event_start with a0=[a0], a1=a0+4, a2=?, a3=?.
  The `jalr` at 0x401ae4 calls vice_file with a0=0x40425c, a1=?, a2=?, a3=?.
  The `jalr` at 0x401b04 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+4, a3=0x0.
  The `jalr` at 0x401b18 calls vice_file with a0=0x40426c, a1=?, a2=?, a3=?.
  The `jalr` at 0x401b34 calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+4, a3=?.
  The `jalr` at 0x401b48 calls vice_file with a0=0x40427c, a1=?, a2=?, a3=?.
  The `jalr` at 0x401b64 calls vice_load_bsp_table with a0=[a0], a1=ret(vice_file), a2=a0+4, a3=?.
  The `jalr` at 0x401b94 calls vice_event_start with a0=[a0], a1=a0+4, a2=?, a3=?.
  The `jalr` at 0x401f84 calls vice_dmbuf_msend with a0=[a0], a1=a1 at entry (arg1), a2=a0+232, a3=a2 at entry (arg2).
  The `beq` branch at 0x4018a8 targets 0x4018d8, is taken when t1(=a2) == at(=0x5), and falls through when t1(=a2) != at(=0x5).
  The `beq` branch at 0x4018d0 targets 0x401f90 and is always taken.
  The `beq` branch at 0x4018ec targets 0x4018fc, is taken when v0(=ret(dmBufferGetUserData)) == 0, and falls through when v0(=ret(dmBufferGetUserData)) != 0.
  The `beq` branch at 0x4018f4 targets 0x401f90 and is always taken.
  The `beq` branch at 0x401914 targets 0x40193c, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x401934 targets 0x401940 and is always taken.
  The `beql` branch at 0x401940 targets 0x401ba4, is taken when a0(?) == 0, and falls through when a0(?) != 0; its branch-likely delay slot `lw t1,312(s0)` at 0x401944 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x401958 targets 0x401ad8, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `bne` branch at 0x401970 targets 0x401a10, is taken when t3(?) != at(=0x3), and falls through when t3(?) == at(=0x3).
  The `beq` branch at 0x401a08 targets 0x401aa4 and is always taken.
  The `beq` branch at 0x401ad0 targets 0x401ba0 and is always taken.
  The `beq` branch at 0x401bac targets 0x401c64, is taken when t1(=[a0+312]) == 0, and falls through when t1(=[a0+312]) != 0.
  The `bnel` branch at 0x401c44 targets 0x401c58, is taken when t2(?) != 0, and falls through when t2(?) == 0; its branch-likely delay slot `sw t3,368(s0)` at 0x401c48 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x401c4c targets 0x401c58 and is always taken.
  The `beq` branch at 0x401c5c targets 0x401cdc and is always taken.
  The `bgez` branch at 0x401d00 targets 0x401d10, is taken when t3(=[a0+316]) >= 0 (signed), and falls through when t3(=[a0+316]) < 0 (signed).
  The `blez` branch at 0x401f04 targets 0x401f64, is taken when s3(=ret(dmBufferGetSize)) <= 0 (signed), and falls through when s3(=ret(dmBufferGetSize)) > 0 (signed).
  The `bne` branch at 0x401f20 targets 0x401f38, is taken when v0(?) < 0x1b0 (unsigned), and falls through when v0(?) >= 0x1b0 (unsigned).
  The `beql` branch at 0x401f28 targets 0x401f3c, is taken when at(?) == 0, and falls through when at(?) != 0; its branch-likely delay slot `sltiu at,v0,256` at 0x401f2c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x401f30 targets 0x401f50 and is always taken.
  The `bne` branch at 0x401f3c targets 0x401f50, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x401f44 targets 0x401f50, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x401f50 targets 0x401f5c, is taken when a0(=one of 0x0, 0x1) == 0, and falls through when a0(=one of 0x0, 0x1) != 0.
  The `bgtz` branch at 0x401f5c targets 0x401f0c, is taken when s3(?) > 0 (signed), and falls through when s3(?) <= 0 (signed).
  The return at 0x401fa4 has v0 = one of -0x1, ret(vice_dmbuf_msend).
  The instructions from 0x401c54 to 0x401c54 are not reached by any path from the entry, and their branches are not listed.

- `Recv` in `usr/lib/dmedia/imageconverters/vicempeg.so` at 0x401fac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicempeg.so`.
  Range: 0x401fac-0x402048 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0x401fe0 loads 4 bytes from a0 (arg0 at entry) +0xdc.
  The `lw` at 0x401fe4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x402008 loads 4 bytes from a0 (arg0 at entry) +0x13c.
  The `lw` at 0x40200c loads 4 bytes from a0 (arg0 at entry) +0x140.
  The `lw` at 0x40201c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `jalr` at 0x401ff0 calls vice_dmbuf_recv with a0=[a0], a1=sp-8, a2=[a0+220], a3=a0+272.
  The `jalr` at 0x402028 calls dmBufferSetSize with a0=[a1], a1=?, a2=?, a3=?.
  The `beq` branch at 0x401ff8 targets 0x402008, is taken when v0(=ret(vice_dmbuf_recv)) == 0, and falls through when v0(=ret(vice_dmbuf_recv)) != 0.
  The `beq` branch at 0x402000 targets 0x402034 and is always taken.
  The return at 0x402040 has v0 = one of -0x1, ret(dmBufferSetSize).

- `VerifySrcDstConv` in `usr/lib/dmedia/imageconverters/vicempeg.so` at 0x402048 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicempeg.so`.
  Range: 0x402048-0x402100 (184 bytes).
  It occupies 184 bytes.
  The `jalr` at 0x402074 calls VerifySrcParams [0x401578] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4020a4 calls VerifyDstParams [0x401630] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x4020d4 calls VerifyConvParams [0x4016b4] with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `beq` branch at 0x402060 targets 0x402090, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x402080 targets 0x402090, is taken when v0(=ret(VerifySrcParams)) == 0, and falls through when v0(=ret(VerifySrcParams)) != 0.
  The `beq` branch at 0x402088 targets 0x4020f0 and is always taken.
  The `beql` branch at 0x402090 targets 0x4020c0, is taken when a1 == 0, and falls through when a1 != 0; its branch-likely delay slot `lw t6,40(sp)` at 0x402094 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x4020ac targets 0x4020bc, is taken when v0(=ret(VerifyDstParams)) == 0, and falls through when v0(=ret(VerifyDstParams)) != 0.
  The `beq` branch at 0x4020b4 targets 0x4020f0 and is always taken.
  The `beql` branch at 0x4020c0 targets 0x4020f0, is taken when t6(=a2) == 0, and falls through when t6(=a2) != 0; its branch-likely delay slot `or v0,zero,zero` at 0x4020c4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x4020dc targets 0x4020ec, is taken when v0(=ret(VerifyConvParams)) == 0, and falls through when v0(=ret(VerifyConvParams)) != 0.
  The `beq` branch at 0x4020e4 targets 0x4020f0 and is always taken.
  The return at 0x4020f8 has v0 = one of -0x1, 0x0.
