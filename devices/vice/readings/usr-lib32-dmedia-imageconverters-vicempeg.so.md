# Readings: `usr/lib32/dmedia/imageconverters/vicempeg.so`

One entry per routine, filed here from the reading batches by binary.

- `dmICInitDso` in `usr/lib32/dmedia/imageconverters/vicempeg.so` at 0x401020 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicempeg.so`.
  Range: 0x401020-0x401178 (344 bytes).
  It occupies 344 bytes.
  The `jalr` at 0x401144 calls dmICRegisterConverter with a0=0x401178, a1=0x4012ac, a2=0x4013f8, a3=0x401480, a4=0x4014dc, a5=0x4015e0, a6=0x401670, a7=0x401780.
  The `bltz` branch at 0x40114c targets 0x401164, is taken when v0(=ret(dmICRegisterConverter)) < 0 (signed), and falls through when v0(=ret(dmICRegisterConverter)) >= 0 (signed).
  The return at 0x40115c has v0 = 0x0.
  The return at 0x401170 has v0 = -0x1.

- `GetDescription` in `usr/lib32/dmedia/imageconverters/vicempeg.so` at 0x4012ac (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicempeg.so`.
  Range: 0x4012ac-0x4013c0 (276 bytes).
  It occupies 276 bytes.
  The `jalr` at 0x4012dc calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x404030, a2=0x6d706567, a3=0xaed0.
  The `jalr` at 0x401310 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x404040, a2=0x404280, a3=?.
  The `jalr` at 0x401334 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x404050, a2=0x1, a3=?.
  The `jalr` at 0x401358 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x404060, a2=0x2, a3=?.
  The `jalr` at 0x40137c calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x404078, a2=0x2, a3=?.
  The `jalr` at 0x4013a0 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x404088, a2=0x0, a3=?.
  The `beq` branch at 0x4012e4 targets 0x401304, is taken when v0(=ret(dmParamsSetInt)) == 0, and falls through when v0(=ret(dmParamsSetInt)) != 0.
  The `beq` branch at 0x401318 targets 0x401328, is taken when v0(=ret(dmParamsSetString)) == 0, and falls through when v0(=ret(dmParamsSetString)) != 0.
  The `beq` branch at 0x401320 targets 0x4012f0 and is always taken.
  The `beq` branch at 0x40133c targets 0x40134c, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x401344 targets 0x4012f0 and is always taken.
  The `beq` branch at 0x401360 targets 0x401370, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x401368 targets 0x4012f0 and is always taken.
  The `beq` branch at 0x401384 targets 0x401394, is taken when v0(=ret(dmParamsSetInt)) == 0, and falls through when v0(=ret(dmParamsSetInt)) != 0.
  The `beq` branch at 0x40138c targets 0x4012f0 and is always taken.
  The `beq` branch at 0x4013a8 targets 0x4013b8, is taken when v0(=ret(dmParamsSetInt)) == 0, and falls through when v0(=ret(dmParamsSetInt)) != 0.
  The `beq` branch at 0x4013b0 targets 0x4012f0 and is always taken.
  The `beq` branch at 0x4013b8 targets 0x4012f0 and is always taken.
  The return at 0x4012fc has v0 = one of -0x1, 0x0.

- `SetSrcPoolParams` in `usr/lib32/dmedia/imageconverters/vicempeg.so` at 0x4013c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicempeg.so`.
  Range: 0x4013c0-0x4013f8 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0x4013dc calls vice_dmbuf_requirements with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x4013f0 has v0 = 0x0.

- `SetDstPoolParams` in `usr/lib32/dmedia/imageconverters/vicempeg.so` at 0x4013f8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicempeg.so`.
  Range: 0x4013f8-0x401430 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0x401414 calls vice_dmbuf_requirements with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x401428 has v0 = 0x0.

- `SetDstPool` in `usr/lib32/dmedia/imageconverters/vicempeg.so` at 0x401430 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicempeg.so`.
  Range: 0x401430-0x401480 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x401450 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0x40146c stores 4 bytes to a0 (arg0 at entry) +0xdc.
  The `jalr` at 0x401458 calls vice_dmbuf_outpool with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x401478 has v0 = 0x0.

- `GetDstFD` in `usr/lib32/dmedia/imageconverters/vicempeg.so` at 0x401480 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicempeg.so`.
  Range: 0x401480-0x401488 (8 bytes).
  It occupies 8 bytes.
  The `lw` at 0x401484 loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The return at 0x401480 has v0 = [a0+224].

- `GetSrcFilled` in `usr/lib32/dmedia/imageconverters/vicempeg.so` at 0x401488 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicempeg.so`.
  Range: 0x401488-0x4014dc (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x4014a0 loads 4 bytes from a0 (arg0 at entry) +0xe8.
  The `jalr` at 0x4014a8 calls dmFifoNfilled with a0=[a0+232], a1=sp-32, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x4014b0 targets 0x4014cc, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The return at 0x4014c4 has v0 = -0x1.
  The return at 0x4014d4 has v0 = ?.

- `GetDstFilled` in `usr/lib32/dmedia/imageconverters/vicempeg.so` at 0x4014dc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicempeg.so`.
  Range: 0x4014dc-0x401530 (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x4014f4 loads 4 bytes from a0 (arg0 at entry) +0x110.
  The `jalr` at 0x4014fc calls dmFifoNfilled with a0=[a0+272], a1=sp-32, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x401504 targets 0x40151c, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The return at 0x401514 has v0 = -0x1.
  The return at 0x401528 has v0 = ?.

- `VerifySrcParams` in `usr/lib32/dmedia/imageconverters/vicempeg.so` at 0x401530 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicempeg.so`.
  Range: 0x401530-0x4015e0 (176 bytes).
  It occupies 176 bytes.
  The `jalr` at 0x401558 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x404098, a2=0xac4c, a3=a3 at entry (arg3).
  The `jalr` at 0x401574 calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x404098, a2=?, a3=?.
  The `jalr` at 0x401588 calls strcmp with a0=ret(dmParamsGetString), a1=0x4040b0, a2=?, a3=?.
  The `jalr` at 0x4015a0 calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x404098, a2=?, a3=?.
  The `jalr` at 0x4015b4 calls strcmp with a0=ret(dmParamsGetString), a1=0x4040c0, a2=?, a3=?.
  The `beq` branch at 0x401560 targets 0x4015c4, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x401590 targets 0x4015d8, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x4015bc targets 0x4015d8, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x4015d8 targets 0x4015c4 and is always taken.
  The return at 0x4015d0 has v0 = one of -0x1, 0x0.

- `VerifyDstParams` in `usr/lib32/dmedia/imageconverters/vicempeg.so` at 0x4015e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicempeg.so`.
  Range: 0x4015e0-0x401668 (136 bytes).
  It occupies 136 bytes.
  The `jalr` at 0x401604 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x404098, a2=0xab9c, a3=a3 at entry (arg3).
  The `jalr` at 0x401620 calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x404098, a2=?, a3=?.
  The `jalr` at 0x401634 calls strcmp with a0=ret(dmParamsGetString), a1=0x4040d0, a2=?, a3=?.
  The `beq` branch at 0x40160c targets 0x401648, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x40163c targets 0x401658, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The return at 0x401650 has v0 = -0x1.
  The return at 0x401660 has v0 = 0x0.

- `VerifyConvParams` in `usr/lib32/dmedia/imageconverters/vicempeg.so` at 0x401668 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicempeg.so`.
  Range: 0x401668-0x401670 (8 bytes).
  It occupies 8 bytes.
  The return at 0x401668 has v0 = -0x1.

- `GetDefSrcParams` in `usr/lib32/dmedia/imageconverters/vicempeg.so` at 0x401670 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicempeg.so`.
  Range: 0x401670-0x4016f8 (136 bytes).
  It occupies 136 bytes.
  The `jalr` at 0x401698 calls dmSetImageDefaults with a0=a0 at entry (arg0), a1=0x160, a2=0xf0, a3=0xbb9.
  The `jalr` at 0x4016d8 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x404098, a2=0x4040b0, a3=?.
  The `beq` branch at 0x4016a0 targets 0x4016c4, is taken when v0(=ret(dmSetImageDefaults)) == 0, and falls through when v0(=ret(dmSetImageDefaults)) != 0.
  The `beq` branch at 0x4016e0 targets 0x4016f0, is taken when v0(=ret(dmParamsSetString)) == 0, and falls through when v0(=ret(dmParamsSetString)) != 0.
  The `beq` branch at 0x4016e8 targets 0x4016b8 and is always taken.
  The `beq` branch at 0x4016f0 targets 0x4016b8 and is always taken.
  The return at 0x4016b0 has v0 = -0x1.
  The return at 0x4016bc has v0 = one of -0x1, 0x0.

- `GetDefDstParams` in `usr/lib32/dmedia/imageconverters/vicempeg.so` at 0x4016f8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicempeg.so`.
  Range: 0x4016f8-0x401780 (136 bytes).
  It occupies 136 bytes.
  The `jalr` at 0x401720 calls dmSetImageDefaults with a0=a0 at entry (arg0), a1=0x160, a2=0xf0, a3=0x3f0.
  The `jalr` at 0x401760 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x404098, a2=0x4040d0, a3=?.
  The `beq` branch at 0x401728 targets 0x401750, is taken when v0(=ret(dmSetImageDefaults)) == 0, and falls through when v0(=ret(dmSetImageDefaults)) != 0.
  The `beq` branch at 0x401768 targets 0x401778, is taken when v0(=ret(dmParamsSetString)) == 0, and falls through when v0(=ret(dmParamsSetString)) != 0.
  The `beq` branch at 0x401770 targets 0x401744 and is always taken.
  The `beq` branch at 0x401778 targets 0x401744 and is always taken.
  The return at 0x40173c has v0 = -0x1.
  The return at 0x401748 has v0 = one of -0x1, 0x0.

- `GetDefConvParams` in `usr/lib32/dmedia/imageconverters/vicempeg.so` at 0x401780 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicempeg.so`.
  Range: 0x401780-0x401788 (8 bytes).
  It occupies 8 bytes.
  The return at 0x401780 has v0 = 0x0.

- `Send` in `usr/lib32/dmedia/imageconverters/vicempeg.so` at 0x401788 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicempeg.so`.
  Range: 0x401788-0x401e44 (1724 bytes).
  It occupies 1724 bytes.
  The `lw` at 0x4017f4 loads 4 bytes from a3 (arg3 at entry) +0x4.
  The `lw` at 0x401804 loads 4 bytes from a3 (arg3 at entry) +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x138, including `lw` at 0x4018cc, `lw` at 0x401c84, `lw` at 0x401dcc.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x13c, including `sw` at 0x4018dc, `sw` at 0x401c88.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x140, including `sw` at 0x4018e4, `sw` at 0x401c90.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x144, including `sh` at 0x4018ec, `sh` at 0x401c98.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x146, including `sh` at 0x4018f4, `sh` at 0x401ca0.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x148, including `sh` at 0x4018fc, `sh` at 0x401ca8.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x14a, including `sh` at 0x401904, `sh` at 0x401cb0.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x14c, including `sh` at 0x40190c, `sh` at 0x401cb8.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x14e, including `sh` at 0x401914, `sh` at 0x401cc0.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x150, including `sh` at 0x40191c, `sh` at 0x401d18.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x154, including `sw` at 0x401924, `sw` at 0x401d0c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x158, including `sw` at 0x401934, `sw` at 0x401d00.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x15c, including `sw` at 0x40193c, `sw` at 0x401cf4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x160, including `sw` at 0x401944, `sw` at 0x401ce8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x164, including `sw` at 0x40194c, `sw` at 0x401cdc.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x168, including `sw` at 0x401954, `sw` at 0x401cd8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x16c, including `sw` at 0x40195c, `sw` at 0x401cd4.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x170, including `sw` at 0x40196c, `sw` at 0x401cd0, `sw` at 0x401d20.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x174, including `sw` at 0x401978, `sw` at 0x401cc8.
  The `sw` at 0x40197c stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `sh` at 0x401980 stores 2 bytes to a0 (arg0 at entry) +0x7a.
  The `sh` at 0x401984 stores 2 bytes to a0 (arg0 at entry) +0x80.
  The `sh` at 0x401988 stores 2 bytes to a0 (arg0 at entry) +0xa4.
  The `sh` at 0x40198c stores 2 bytes to a0 (arg0 at entry) +0xa6.
  The `sh` at 0x401990 stores 2 bytes to a0 (arg0 at entry) +0xa8.
  The `sh` at 0x401994 stores 2 bytes to a0 (arg0 at entry) +0xaa.
  The `sh` at 0x401998 stores 2 bytes to a0 (arg0 at entry) +0xac.
  The `sh` at 0x40199c stores 2 bytes to a0 (arg0 at entry) +0xae.
  The `sh` at 0x4019a0 stores 2 bytes to a0 (arg0 at entry) +0xb0.
  The `lh` at 0x4019a4 loads 2 bytes from a0 (arg0 at entry) +0x146.
  The `sh` at 0x4019a8 stores 2 bytes to a0 (arg0 at entry) +0x84.
  The `sw` at 0x4019b4 stores 4 bytes to a0 (arg0 at entry) +0xc8.
  The `sh` at 0x4019bc stores 2 bytes to a0 (arg0 at entry) +0xb2.
  The `sh` at 0x4019c4 stores 2 bytes to a0 (arg0 at entry) +0xb4.
  The `sh` at 0x4019d0 stores 2 bytes to a0 (arg0 at entry) +0x78.
  The `sw` at 0x4019dc stores 4 bytes to a0 (arg0 at entry) +0xbc.
  The `sw` at 0x4019e8 stores 4 bytes to a0 (arg0 at entry) +0xd0.
  The `sw` at 0x4019f4 stores 4 bytes to a0 (arg0 at entry) +0xc4.
  The `sh` at 0x4019fc stores 2 bytes to a0 (arg0 at entry) +0x9c.
  The `lh` at 0x401a00 loads 2 bytes from a0 (arg0 at entry) +0x14c.
  The `sh` at 0x401a08 stores 2 bytes to a0 (arg0 at entry) +0x7c.
  The `sw` at 0x401a14 stores 4 bytes to a0 (arg0 at entry) +0xcc.
  The `lh` at 0x401a18 loads 2 bytes from a0 (arg0 at entry) +0x14a.
  The `sh` at 0x401a1c stores 2 bytes to a0 (arg0 at entry) +0x86.
  The `sw` at 0x401a2c stores 4 bytes to a0 (arg0 at entry) +0xd4.
  The `sh` at 0x401a34 stores 2 bytes to a0 (arg0 at entry) +0x90.
  The `lh` at 0x401a44 loads 2 bytes from a0 (arg0 at entry) +0x144.
  The `sh` at 0x401a4c stores 2 bytes to a0 (arg0 at entry) +0x82.
  The `sw` at 0x401a58 stores 4 bytes to a0 (arg0 at entry) +0xc0.
  The `lh` at 0x401a64 loads 2 bytes from a0 (arg0 at entry) +0x14e.
  The `sh` at 0x401a70 stores 2 bytes to a0 (arg0 at entry) +0xb6.
  The `sw` at 0x401a78 stores 4 bytes to a0 (arg0 at entry) +0xd8.
  The `sh` at 0x401a9c stores 2 bytes to a0 (arg0 at entry) +0x7e.
  The `sw` at 0x401aa8 stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `sh` at 0x401ab4 stores 2 bytes to a0 (arg0 at entry) +0x96.
  The `lh` at 0x401ab8 loads 2 bytes from a0 (arg0 at entry) +0x148.
  The `sh` at 0x401ac0 stores 2 bytes to a0 (arg0 at entry) +0x94.
  The `sh` at 0x401ac4 stores 2 bytes to a0 (arg0 at entry) +0x9a.
  The `sh` at 0x401ad4 stores 2 bytes to a0 (arg0 at entry) +0x98.
  The `sh` at 0x401adc stores 2 bytes to a0 (arg0 at entry) +0x9e.
  The `sh` at 0x401aec stores 2 bytes to a0 (arg0 at entry) +0x8a.
  The `sh` at 0x401af0 stores 2 bytes to a0 (arg0 at entry) +0x88.
  The `sh` at 0x401af4 stores 2 bytes to a0 (arg0 at entry) +0x8e.
  The `sh` at 0x401b00 stores 2 bytes to a0 (arg0 at entry) +0x8c.
  The `sh` at 0x401b08 stores 2 bytes to a0 (arg0 at entry) +0x92.
  The `sh` at 0x401b14 stores 2 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x401b1c stores 2 bytes to a0 (arg0 at entry) +0xa2.
  The `sb` at 0x401b34 stores 1 byte to ?.
  The `lbu` at 0x401b44 loads 1 byte from ?.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x401bac, `lw` at 0x401c0c, `lw` at 0x401c30.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x138, including `sw` at 0x401bd4, `sw` at 0x401d34.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x40, including `sw` at 0x401c64, `sw` at 0x401dac.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x3c, including `sw` at 0x401c6c, `sw` at 0x401db4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14, including `sw` at 0x401c7c, `sw` at 0x401dc4.
  The `jalr` at 0x4017cc calls dmBufferMapData with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4017e0 calls dmBufferGetSize with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x4017f0 calls dmBufferMapData with a0=[a3+4], a1=?, a2=?, a3=?.
  The `jalr` at 0x4017fc calls dmBufferGetUSTMSCpair with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x401818 calls dmBufferSetUSTMSCpair with a0=[a3], a1=ret(dmBufferGetUSTMSCpair), a2=?, a3=?.
  The `jalr` at 0x401840 calls dmSetError with a0=-0x1, a1=0x404000, a2=0x4040e8, a3=?.
  The `jalr` at 0x401880 calls dmBufferGetUserData with a0=a1 at entry (arg1), a1=sp-160, a2=sp-88, a3=?.
  The `jalr` at 0x4018a0 calls dmParamsIsPresent with a0=a4 at entry (arg4), a1=0x404098, a2=?, a3=?.
  The `jalr` at 0x4018bc calls dmParamsGetString with a0=a4 at entry (arg4), a1=0x404098, a2=?, a3=?.
  The `jalr` at 0x401ba8 calls vice_dmbuf_msend with a0=[a0], a1=a1 at entry (arg1), a2=a0+232, a3=a2 at entry (arg2), a4=a3 at entry (arg3), a5=a0+76, a6=0x24.
  The `jalr` at 0x401bc0 calls strcmp with a0=ret(dmParamsGetString), a1=0x4040c0, a2=?, a3=?.
  The `jalr` at 0x401bf0 calls vice_file with a0=0x404130, a1=0x1, a2=?, a3=?, a5=0x3.
  The `jalr` at 0x401c08 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+4, a3=0x0.
  The `jalr` at 0x401c18 calls vice_file with a0=0x404148, a1=?, a2=?, a3=?.
  The `jalr` at 0x401c2c calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+4, a3=?.
  The `jalr` at 0x401c3c calls vice_file with a0=0x404120, a1=?, a2=?, a3=?.
  The `jalr` at 0x401c50 calls vice_load_bsp_table with a0=[a0], a1=ret(vice_file), a2=a0+4, a3=?.
  The `jalr` at 0x401c78 calls vice_event_start with a0=[a0], a1=a0+4, a2=0x7, a3=0x8000, a4=0x90.
  The `jalr` at 0x401d38 calls vice_file with a0=0x404160, a1=0x1, a2=?, a3=?.
  The `jalr` at 0x401d50 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+4, a3=0x0.
  The `jalr` at 0x401d60 calls vice_file with a0=0x404170, a1=?, a2=?, a3=?.
  The `jalr` at 0x401d74 calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+4, a3=?.
  The `jalr` at 0x401d84 calls vice_file with a0=0x404180, a1=?, a2=?, a3=?.
  The `jalr` at 0x401d98 calls vice_load_bsp_table with a0=[a0], a1=ret(vice_file), a2=a0+4, a3=?.
  The `jalr` at 0x401dc0 calls vice_event_start with a0=[a0], a1=a0+4, a2=0x7, a3=0x8000, a4=0x90.
  The `jalr` at 0x401dd4 calls vice_file with a0=0x404100, a1=0x1, a2=?, a3=?, a5=0x3.
  The `jalr` at 0x401dec calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+4, a3=0x0.
  The `jalr` at 0x401dfc calls vice_file with a0=0x404110, a1=?, a2=?, a3=?.
  The `jalr` at 0x401e10 calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+4, a3=?.
  The `jalr` at 0x401e20 calls vice_file with a0=0x404120, a1=?, a2=?, a3=?.
  The `jalr` at 0x401e34 calls vice_load_bsp_table with a0=[a0], a1=ret(vice_file), a2=a0+4, a3=?.
  The `beq` branch at 0x401824 targets 0x401878, is taken when s6(=a2) == v0(=0x5), and falls through when s6(=a2) != v0(=0x5).
  The `beq` branch at 0x401888 targets 0x401898, is taken when v0(=ret(dmBufferGetUserData)) == 0, and falls through when v0(=ret(dmBufferGetUserData)) != 0.
  The `beq` branch at 0x401890 targets 0x40184c and is always taken.
  The `beq` branch at 0x4018a8 targets 0x4018cc, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `bne` branch at 0x4018c4 targets 0x401bb8, is taken when v0(=ret(dmParamsGetString)) != 0, and falls through when v0(=ret(dmParamsGetString)) == 0.
  The `beq` branch at 0x4018d4 targets 0x401c88, is taken when a2(=[a0+312]) == 0, and falls through when a2(=[a0+312]) != 0.
  The `beq` branch at 0x401964 targets 0x401d1c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `blez` branch at 0x401b18 targets 0x401b8c, is taken when s5(=ret(dmBufferGetSize)) <= 0 (signed), and falls through when s5(=ret(dmBufferGetSize)) > 0 (signed).
  The `beq` branch at 0x401b24 targets 0x401b40 and is always taken.
  The `beq` branch at 0x401b2c targets 0x401b38, is taken when v0(=one of 0x0, 0x1) == 0, and falls through when v0(=one of 0x0, 0x1) != 0.
  The `blez` branch at 0x401b38 targets 0x401b8c, is taken when s5(?) <= 0 (signed), and falls through when s5(?) > 0 (signed).
  The `bne` branch at 0x401b5c targets 0x401b74, is taken when a0(?) < 0x1b0 (unsigned), and falls through when a0(?) >= 0x1b0 (unsigned).
  The `beq` branch at 0x401b64 targets 0x401b74, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x401b6c targets 0x401b34 and is always taken.
  The `bne` branch at 0x401b74 targets 0x401b2c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x401b7c targets 0x401b2c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x401b84 targets 0x401b38 and is always taken.
  The `beq` branch at 0x401bb0 targets 0x40184c and is always taken.
  The `bne` branch at 0x401bcc targets 0x401d2c, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x401be0 targets 0x401dd0, is taken when a4(?) == a5(=0x3), and falls through when a4(?) != a5(=0x3).
  The `beq` branch at 0x401c80 targets 0x4018d0 and is always taken.
  The `beq` branch at 0x401d14 targets 0x40197c and is always taken.
  The `beq` branch at 0x401d24 targets 0x401974 and is always taken.
  The `beq` branch at 0x401dc8 targets 0x4018d0 and is always taken.
  The `beq` branch at 0x401e3c targets 0x401c5c and is always taken.
  The return at 0x401870 has v0 = one of -0x1, ret(vice_dmbuf_msend).

- `Send` in `usr/lib32/dmedia/imageconverters/vicempeg.so` at 0x401788
  **Established.** The converter's send method, 1724 bytes. It maps the source and destination buffers with `dmBufferMapData` (0x4017cc, 0x4017f0), copies the buffer timestamp pair across (0x4017fc, 0x401818) and reports an error through `dmSetError` at 0x401840 unless the argument compared with 5 at 0x401824 is 5. It reads the buffer's user-data record into a block on the stack at sp+16 with `dmBufferGetUserData` (0x401880) and copies the words into the converter record from +0x13c to +0x174 (0x4018dc to 0x401978). When the parameter list holds `DM_IMAGE_COMPRESSION` (`dmParamsIsPresent` at 0x4018a0, `dmParamsGetString` at 0x4018bc) it compares the string with "MPEG-2 Video" (`strcmp` at 0x401bc0, string at 0x4040c0). A match stores 1 at +0x138 of the converter record. It then loads `mpeg2dec.mex`, `mpeg2dec.bex` and `m2tabs.btbl` (0x401dd4 to 0x401e34) when the user-data word at stack offset 60 equals 3 (test at 0x401be0), and `mpeg2dec_fld.mex`, `mpeg2dec_fld.bex` and `m2tabs.btbl` (0x401bf0 to 0x401c50) otherwise, through `vice_file` followed by `vice_load_msp_code`, `vice_load_bsp_code` and `vice_load_bsp_table`. A mismatch stores 0 at +0x138 and loads `mpeg1dec.mex`, `mpeg1dec.bex` and `m1tabs.btbl` (0x401d38 to 0x401d98). The two MPEG-2 paths join at 0x401c5c and call `vice_event_start` at 0x401c78; the MPEG-1 path calls it at 0x401dc0. The send itself is `vice_dmbuf_msend` at 0x401ba8, whose result the routine returns; the error paths (0x401848, 0x401890) return -1.

- `Recv` in `usr/lib32/dmedia/imageconverters/vicempeg.so` at 0x401e44 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicempeg.so`.
  Range: 0x401e44-0x401ed4 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0x401e54 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x401e80 loads 4 bytes from a0 (arg0 at entry) +0xdc.
  The `lw` at 0x401ea0 loads 4 bytes from a0 (arg0 at entry) +0x13c.
  The `lw` at 0x401ea4 loads 4 bytes from a0 (arg0 at entry) +0x140.
  The `lw` at 0x401eb8 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `jalr` at 0x401e7c calls vice_dmbuf_recv with a0=[a0], a1=sp-48, a2=[a0+220], a3=a0+272, a4=a1 at entry (arg1).
  The `jalr` at 0x401ebc calls dmBufferSetSize with a0=[a1], a1=?, a2=[a0+320], a3=?.
  The `beq` branch at 0x401e84 targets 0x401ea0, is taken when v0(=ret(vice_dmbuf_recv)) == 0, and falls through when v0(=ret(vice_dmbuf_recv)) != 0.
  The return at 0x401e98 has v0 = -0x1.
  The return at 0x401ecc has v0 = ret(dmBufferSetSize).

- `VerifySrcDstConv` in `usr/lib32/dmedia/imageconverters/vicempeg.so` at 0x401ed4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicempeg.so`.
  Range: 0x401ed4-0x401f84 (176 bytes).
  It occupies 176 bytes.
  The `bgezall` at 0x401f14 calls VerifyConvParams [0x401668] with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `bgezall` at 0x401f50 calls VerifySrcParams [0x401530] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x401f6c calls VerifyDstParams [0x4015e0] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `bne` branch at 0x401ef8 targets 0x401f48, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x401f00 targets 0x401f68, is taken when s0(=a1) != 0, and falls through when s0(=a1) == 0.
  The `beq` branch at 0x401f08 targets 0x401f2c, is taken when s1(=a2) == 0, and falls through when s1(=a2) != 0.
  The `beq` branch at 0x401f1c targets 0x401f30, is taken when v0(=ret(VerifyConvParams)) == 0, and falls through when v0(=ret(VerifyConvParams)) != 0.
  The `beq` branch at 0x401f24 targets 0x401f30 and is always taken.
  The `beq` branch at 0x401f58 targets 0x401f00, is taken when v0(=ret(VerifySrcParams)) == 0, and falls through when v0(=ret(VerifySrcParams)) != 0.
  The `beq` branch at 0x401f60 targets 0x401f30 and is always taken.
  The `beq` branch at 0x401f74 targets 0x401f08, is taken when v0(=ret(VerifyDstParams)) == 0, and falls through when v0(=ret(VerifyDstParams)) != 0.
  The `beq` branch at 0x401f7c targets 0x401f30 and is always taken.
  The return at 0x401f40 has v0 = one of -0x1, 0x0.
