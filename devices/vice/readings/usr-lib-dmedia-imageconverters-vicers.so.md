# Readings: `usr/lib/dmedia/imageconverters/vicers.so`

One entry per routine, filed here from the reading batches by binary.

- `_poolneeds` in `usr/lib/dmedia/imageconverters/vicers.so` at 0x401270 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicers.so`.
  Range: 0x401270-0x4012ac (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0x401290 calls vice_dmbuf_requirements with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x4012a4 has v0 = ret(vice_dmbuf_requirements).

- `init_formats` in `usr/lib/dmedia/imageconverters/vicers.so` at 0x4012ac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicers.so`.
  Range: 0x4012ac-0x401348 (156 bytes).
  It occupies 156 bytes.
  The `sw` at 0x401324 stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `sw` at 0x401328 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x40132c stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `jalr` at 0x4012cc calls dmParamsCreate with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4012ec calls dmParamsCreate with a0=a0+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x40130c calls dmParamsCreate with a0=a0+8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4012d4 targets 0x4012e4, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x4012dc targets 0x401334 and is always taken.
  The `beq` branch at 0x4012f4 targets 0x401304, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x4012fc targets 0x401334 and is always taken.
  The `beq` branch at 0x401314 targets 0x401324, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x40131c targets 0x401334 and is always taken.
  The return at 0x401340 has v0 = one of -0x1, 0x0.

- `free_formats` in `usr/lib/dmedia/imageconverters/vicers.so` at 0x401348 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicers.so`.
  Range: 0x401348-0x4013d4 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0x40136c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x40137c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x401394 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x4013a8 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `jalr` at 0x401368 calls dmParamsDestroy with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401380 calls dmParamsDestroy with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0x401398 calls dmParamsDestroy with a0=[a0+8], a1=?, a2=?, a3=?.
  The `jalr` at 0x4013b8 calls dmBufferDestroyPool with a0=[a0+12], a1=?, a2=?, a3=?.
  The `beql` branch at 0x4013ac targets 0x4013c8, is taken when a0(=[a0+12]) == 0, and falls through when a0(=[a0+12]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0x4013b0 runs only when taken and is annulled on fall-through.
  The return at 0x4013cc has v0 = one of ret(dmParamsDestroy), ret(dmBufferDestroyPool).

- `required_params` in `usr/lib/dmedia/imageconverters/vicers.so` at 0x4013d4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicers.so`.
  Range: 0x4013d4-0x4014bc (232 bytes).
  It occupies 232 bytes.
  The `jalr` at 0x401400 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x404000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40141c calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x404018, a2=?, a3=?.
  The `jalr` at 0x401438 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x404028, a2=?, a3=?.
  The `jalr` at 0x401454 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x404038, a2=?, a3=?.
  The `jalr` at 0x401470 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x40404c, a2=?, a3=?.
  The `jalr` at 0x401490 calls dmSetError with a0=0x1773, a1=0x404064, a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x401408 targets 0x401480, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x401424 targets 0x401480, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x401440 targets 0x401480, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x40145c targets 0x401480, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `bne` branch at 0x401478 targets 0x4014a4, is taken when v0(=ret(dmParamsIsPresent)) != 0, and falls through when v0(=ret(dmParamsIsPresent)) == 0.
  The `beq` branch at 0x40149c targets 0x4014a8 and is always taken.
  The return at 0x4014b4 has v0 = one of -0x1, 0x0.

- `needsConvert` in `usr/lib/dmedia/imageconverters/vicers.so` at 0x4014bc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicers.so`.
  Range: 0x4014bc-0x401728 (620 bytes).
  It occupies 620 bytes.
  The `jalr` at 0x4014e8 calls required_params [0x4013d4] with a0=a0 at entry (arg0), a1=0x40406c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40150c calls __assert with a0=0x404070, a1=0x404098, a2=0x8b, a3=?.
  The `jalr` at 0x401528 calls required_params [0x4013d4] with a0=a1 at entry (arg1), a1=0x4040a4, a2=?, a3=?.
  The `jalr` at 0x40154c calls __assert with a0=0x4040a8, a1=0x4040d0, a2=0x8c, a3=?.
  The `jalr` at 0x401564 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x4040dc, a2=?, a3=?.
  The `jalr` at 0x401580 calls dmParamsGetInt with a0=a1 at entry (arg1), a1=0x4040ec, a2=?, a3=?.
  The `jalr` at 0x4015a4 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x4040fc, a2=?, a3=?.
  The `jalr` at 0x4015c0 calls dmParamsGetInt with a0=a1 at entry (arg1), a1=0x40410c, a2=?, a3=?.
  The `jalr` at 0x4015e4 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x40411c, a2=?, a3=?.
  The `jalr` at 0x401600 calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x404134, a2=?, a3=?.
  The `jalr` at 0x40162c calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x40414c, a2=?, a3=?.
  The `jalr` at 0x401648 calls dmParamsIsPresent with a0=a1 at entry (arg1), a1=0x404164, a2=?, a3=?.
  The `jalr` at 0x401664 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x40417c, a2=?, a3=?.
  The `jalr` at 0x401680 calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x404194, a2=?, a3=?.
  The `jalr` at 0x4016ac calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x4041ac, a2=?, a3=?.
  The `jalr` at 0x4016c8 calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x4041c0, a2=?, a3=?.
  The `beq` branch at 0x4014f0 targets 0x401518, is taken when v0(=ret(required_params)) == 0, and falls through when v0(=ret(required_params)) != 0.
  The `beq` branch at 0x401530 targets 0x401558, is taken when v0(=ret(required_params)) == 0, and falls through when v0(=ret(required_params)) != 0.
  The `bne` branch at 0x401590 targets 0x401618, is taken when v0(=ret(dmParamsGetInt)) != t6(=ret(dmParamsGetInt)), and falls through when v0(=ret(dmParamsGetInt)) == t6(=ret(dmParamsGetInt)).
  The `bne` branch at 0x4015d0 targets 0x401618, is taken when v0(=ret(dmParamsGetInt)) != t7(=ret(dmParamsGetInt)), and falls through when v0(=ret(dmParamsGetInt)) == t7(=ret(dmParamsGetInt)).
  The `beq` branch at 0x401610 targets 0x401620, is taken when v0(=ret(dmParamsGetEnum)) == t8(=ret(dmParamsGetEnum)), and falls through when v0(=ret(dmParamsGetEnum)) != t8(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x401618 targets 0x401718 and is always taken.
  The `beq` branch at 0x401634 targets 0x4016a0, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x401650 targets 0x4016a0, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x401690 targets 0x4016a0, is taken when v0(=ret(dmParamsGetEnum)) == t9(=ret(dmParamsGetEnum)), and falls through when v0(=ret(dmParamsGetEnum)) != t9(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x401698 targets 0x401718 and is always taken.
  The `bne` branch at 0x4016dc targets 0x4016ec, is taken when v1(=ret(dmParamsGetEnum)) != v0(=ret(dmParamsGetEnum)), and falls through when v1(=ret(dmParamsGetEnum)) == v0(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x4016e4 targets 0x401718 and is always taken.
  The `bne` branch at 0x4016ec targets 0x4016f8, is taken when v1(=ret(dmParamsGetEnum)) != a0(=0x3e9), and falls through when v1(=ret(dmParamsGetEnum)) == a0(=0x3e9).
  The `beq` branch at 0x4016f4 targets 0x40170c, is taken when v0(=ret(dmParamsGetEnum)) == at(=0x3ea), and falls through when v0(=ret(dmParamsGetEnum)) != at(=0x3ea).
  The `bnel` branch at 0x4016fc targets 0x401718, is taken when v1(=ret(dmParamsGetEnum)) != at(=0x3ea), and falls through when v1(=ret(dmParamsGetEnum)) == at(=0x3ea); its branch-likely delay slot `addiu v0,zero,1` at 0x401700 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0x401704 targets 0x401718, is taken when v0(=ret(dmParamsGetEnum)) != a0(=0x3e9), and falls through when v0(=ret(dmParamsGetEnum)) == a0(=0x3e9); its branch-likely delay slot `addiu v0,zero,1` at 0x401708 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x40170c targets 0x401718 and is always taken.
  The return at 0x401720 has v0 = one of 0x0, 0x1.
  The instructions from 0x401714 to 0x401714 are not reached by any path from the entry, and their branches are not listed.

- `verify` in `usr/lib/dmedia/imageconverters/vicers.so` at 0x401728 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicers.so`.
  Range: 0x401728-0x4017d4 (172 bytes).
  It occupies 172 bytes.
  The `jalr` at 0x401748 calls required_params [0x4013d4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401770 calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x4041d4, a2=?, a3=?.
  The `jalr` at 0x401788 calls strcmp with a0=ret(dmParamsGetString), a1=0x4041ec, a2=?, a3=?.
  The `jalr` at 0x4017ac calls dmSetError with a0=0x1772, a1=0x404200, a2=0x404208, a3=?.
  The `bne` branch at 0x401754 targets 0x401764, is taken when v0(=ret(required_params)) != at(=-0x1), and falls through when v0(=ret(required_params)) == at(=-0x1).
  The `beq` branch at 0x40175c targets 0x4017c4 and is always taken.
  The `beq` branch at 0x401790 targets 0x4017c0, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x4017b8 targets 0x4017c4 and is always taken.
  The return at 0x4017cc has v0 = one of -0x1, 0x0.

- `get_default` in `usr/lib/dmedia/imageconverters/vicers.so` at 0x4017d4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicers.so`.
  Range: 0x4017d4-0x40190c (312 bytes).
  It occupies 312 bytes.
  The `jalr` at 0x4017fc calls dmSetImageDefaults with a0=a0 at entry (arg0), a1=0x140, a2=0xf0, a3=0x3f0.
  The `jalr` at 0x401824 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x404220, a2=0x44c, a3=?.
  The `jalr` at 0x401850 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x404238, a2=0x404250, a3=?.
  The `beq` branch at 0x401804 targets 0x401814, is taken when v0(=ret(dmSetImageDefaults)) == 0, and falls through when v0(=ret(dmSetImageDefaults)) != 0.
  The `beq` branch at 0x40180c targets 0x40186c and is always taken.
  The `beq` branch at 0x40182c targets 0x40183c, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x401834 targets 0x40186c and is always taken.
  The `beq` branch at 0x401858 targets 0x401868, is taken when v0(=ret(dmParamsSetString)) == 0, and falls through when v0(=ret(dmParamsSetString)) != 0.
  The `beq` branch at 0x401860 targets 0x40186c and is always taken.
  The return at 0x401874 has v0 = one of -0x1, 0x0.
  The instructions from 0x40187c to 0x401908 are not reached by any path from the entry, and their branches are not listed.

- `dmICInitDso` in `usr/lib/dmedia/imageconverters/vicers.so` at 0x40187c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicers.so`.
  Range: 0x40187c-0x40190c (144 bytes).
  It occupies 144 bytes.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4018a4, `lw` at 0x4018b4, `lw` at 0x4018bc.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4018b0, `sw` at 0x4018b8, `sw` at 0x4018c4.
  The `jalr` at 0x4018e0 calls dmICRegisterConverter with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x4018c0 targets 0x4018a4, is taken when t6(?) != t0(=0x4044e8), and falls through when t6(?) == t0(=0x4044e8).
  The `bgez` branch at 0x4018e8 targets 0x4018f8, is taken when v0(=ret(dmICRegisterConverter)) >= 0 (signed), and falls through when v0(=ret(dmICRegisterConverter)) < 0 (signed).
  The `beq` branch at 0x4018f0 targets 0x4018fc and is always taken.
  The return at 0x401904 has v0 = one of -0x1, 0x0.

- `rs_open` in `usr/lib/dmedia/imageconverters/vicers.so` at 0x40190c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicers.so`.
  Range: 0x40190c-0x401a7c (368 bytes).
  It occupies 368 bytes.
  The `sw` at 0x401984 stores 4 bytes to ret(calloc) +0x0.
  The `sw` at 0x4019ec stores 4 bytes to ret(calloc) +0x2c.
  The `sw` at 0x4019f0 stores 4 bytes to ret(calloc) +0x54.
  The `sw` at 0x4019f4 stores 4 bytes to ret(calloc) +0x58.
  The `lw` at 0x4019f8 loads 4 bytes from ret(calloc) +0x0.
  The `sw` at 0x401a1c stores 4 bytes to ret(calloc) +0x88.
  The `sw` at 0x401a3c stores 4 bytes to ret(calloc) +0x8c.
  The `sw` at 0x401a44 stores 4 bytes to ret(calloc) +0x90.
  The `sw` at 0x401a64 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x40193c calls calloc with a0=0x1, a1=0xe8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401964 calls init_formats [0x4012ac] with a0=ret(calloc)+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x401978 calls vice_open with a0=0x404264, a1=?, a2=?, a3=?.
  The `jalr` at 0x4019a0 calls vice_setetc with a0=ret(vice_open), a1=?, a2=?, a3=?.
  The `jalr` at 0x4019b4 calls vice_file with a0=0x404274, a1=?, a2=?, a3=?.
  The `jalr` at 0x4019d4 calls vice_load_msp_code with a0=ret(vice_open), a1=ret(vice_file), a2=ret(calloc)+28, a3=0x0.
  The `jalr` at 0x401a10 calls vice_event_init with a0=[ret(calloc)], a1=ret(calloc)+152, a2=ret(calloc)+192, a3=0x40.
  The `jalr` at 0x401a28 calls getenv with a0=0x40427c, a1=?, a2=?, a3=?.
  The `jalr` at 0x401a50 calls printf with a0=0x404288, a1=?, a2=?, a3=?.
  The `bne` branch at 0x401948 targets 0x401958, is taken when v0(=ret(calloc)) != 0, and falls through when v0(=ret(calloc)) == 0.
  The `beq` branch at 0x401950 targets 0x401a68 and is always taken.
  The `bgez` branch at 0x401988 targets 0x401998, is taken when v0(=ret(vice_open)) >= 0 (signed), and falls through when v0(=ret(vice_open)) < 0 (signed).
  The `beq` branch at 0x401990 targets 0x401a68 and is always taken.
  The `beq` branch at 0x401a40 targets 0x401a5c, is taken when 0 >= v0(=ret(getenv)) (unsigned), and falls through when 0 < v0(=ret(getenv)) (unsigned).
  The return at 0x401a74 has v0 = one of -0x1, 0x0.

- `rs_close` in `usr/lib/dmedia/imageconverters/vicers.so` at 0x401a7c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicers.so`.
  Range: 0x401a7c-0x401b24 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x401a98 loads 4 bytes from a0 (arg0 at entry) +0x8c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x401ac0, `lw` at 0x401ad4.
  The `jalr` at 0x401ab0 calls printf with a0=0x4042a0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401ac8 calls vice_event_uninit with a0=[a0], a1=a0+152, a2=a0+192, a3=?.
  The `jalr` at 0x401adc calls vice_close with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x401af4 calls free_formats [0x401348] with a0=a0+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x401b08 calls free with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x401aa0 targets 0x401abc, is taken when t6(=[a0+140]) == 0, and falls through when t6(=[a0+140]) != 0.
  The return at 0x401b1c has v0 = ret(free).

- `rs_describe` in `usr/lib/dmedia/imageconverters/vicers.so` at 0x401b24 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicers.so`.
  Range: 0x401b24-0x401c04 (224 bytes).
  It occupies 224 bytes.
  The `jalr` at 0x401b54 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x4042bc, a2=0x7265737a, a3=a3 at entry (arg3).
  The `jalr` at 0x401b74 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x4042c8, a2=0x4042d8, a3=?.
  The `jalr` at 0x401b90 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x4042e0, a2=0x1, a3=?.
  The `jalr` at 0x401bac calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x4042ec, a2=0x0, a3=?.
  The `jalr` at 0x401bc8 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x404304, a2=0x0, a3=?.
  The `jalr` at 0x401be4 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x404314, a2=0x0, a3=?.
  The return at 0x401bfc has v0 = 0x0.

- `rs_dstpoolis` in `usr/lib/dmedia/imageconverters/vicers.so` at 0x401c04 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicers.so`.
  Range: 0x401c04-0x401c84 (128 bytes).
  It occupies 128 bytes.
  The `sw` at 0x401c1c stores 4 bytes to a0 (arg0 at entry) +0x80.
  The `sw` at 0x401c54 stores 4 bytes to a0 (arg0 at entry) +0x84.
  The `lw` at 0x401c64 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x401c30 calls dmBufferGetAllocSize with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0x401c68 calls vice_dmbuf_outpool with a0=[a0], a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=?.
  The `bne` branch at 0x401c50 targets 0x401c60, is taken when v0(=ret(dmBufferGetAllocSize)) < at(=0x3e0001) (signed), and falls through when v0(=ret(dmBufferGetAllocSize)) >= at(=0x3e0001) (signed).
  The `beq` branch at 0x401c58 targets 0x401c74 and is always taken.
  The return at 0x401c7c has v0 = one of -0x1, ret(vice_dmbuf_outpool).

- `rs_fd` in `usr/lib/dmedia/imageconverters/vicers.so` at 0x401c84 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicers.so`.
  Range: 0x401c84-0x401c8c (8 bytes).
  It occupies 8 bytes.
  The `lw` at 0x401c88 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The return at 0x401c84 has v0 = [a0+136].

- `rs_getsrcfilled` in `usr/lib/dmedia/imageconverters/vicers.so` at 0x401c8c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicers.so`.
  Range: 0x401c8c-0x401cd8 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x401ca8 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `jalr` at 0x401cac calls dmFifoNfilled with a0=[a0+152], a1=sp-8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x401cb4 targets 0x401cc4, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The `beq` branch at 0x401cbc targets 0x401cc8 and is always taken.
  The return at 0x401cd0 has v0 = one of -0x1, ?.

- `rs_getdstfilled` in `usr/lib/dmedia/imageconverters/vicers.so` at 0x401cd8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicers.so`.
  Range: 0x401cd8-0x401d24 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x401cf4 loads 4 bytes from a0 (arg0 at entry) +0xc0.
  The `jalr` at 0x401cf8 calls dmFifoNfilled with a0=[a0+192], a1=sp-8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x401d00 targets 0x401d10, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The `beq` branch at 0x401d08 targets 0x401d14 and is always taken.
  The return at 0x401d1c has v0 = one of -0x1, ?.

- `rs_verifysrc` in `usr/lib/dmedia/imageconverters/vicers.so` at 0x401d24 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicers.so`.
  Range: 0x401d24-0x401d64 (64 bytes).
  It occupies 64 bytes.
  The `jalr` at 0x401d48 calls verify [0x401728] with a0=a0 at entry (arg0), a1=0x404324, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x401d5c has v0 = ret(verify).

- `rs_verifydst` in `usr/lib/dmedia/imageconverters/vicers.so` at 0x401d64 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicers.so`.
  Range: 0x401d64-0x401da4 (64 bytes).
  It occupies 64 bytes.
  The `jalr` at 0x401d88 calls verify [0x401728] with a0=a0 at entry (arg0), a1=0x404328, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x401d9c has v0 = ret(verify).

- `rs_verifycvt` in `usr/lib/dmedia/imageconverters/vicers.so` at 0x401da4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicers.so`.
  Range: 0x401da4-0x401db0 (12 bytes).
  It occupies 12 bytes.
  The return at 0x401da8 has v0 = 0x0.

- `rs_verifysrcdstcvt` in `usr/lib/dmedia/imageconverters/vicers.so` at 0x401db0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicers.so`.
  Range: 0x401db0-0x401e68 (184 bytes).
  It occupies 184 bytes.
  The `jalr` at 0x401ddc calls rs_verifysrc [0x401d24] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401e0c calls rs_verifydst [0x401d64] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x401e3c calls rs_verifycvt [0x401da4] with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `beq` branch at 0x401dc8 targets 0x401df8, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x401de8 targets 0x401df8, is taken when v0(=ret(rs_verifysrc)) == 0, and falls through when v0(=ret(rs_verifysrc)) != 0.
  The `beq` branch at 0x401df0 targets 0x401e58 and is always taken.
  The `beql` branch at 0x401df8 targets 0x401e28, is taken when a1 == 0, and falls through when a1 != 0; its branch-likely delay slot `lw t6,40(sp)` at 0x401dfc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x401e14 targets 0x401e24, is taken when v0(=ret(rs_verifydst)) == 0, and falls through when v0(=ret(rs_verifydst)) != 0.
  The `beq` branch at 0x401e1c targets 0x401e58 and is always taken.
  The `beql` branch at 0x401e28 targets 0x401e58, is taken when t6(=a2) == 0, and falls through when t6(=a2) != 0; its branch-likely delay slot `or v0,zero,zero` at 0x401e2c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x401e44 targets 0x401e54, is taken when v0(=ret(rs_verifycvt)) == 0, and falls through when v0(=ret(rs_verifycvt)) != 0.
  The `beq` branch at 0x401e4c targets 0x401e58 and is always taken.
  The return at 0x401e60 has v0 = one of -0x1, 0x0.

- `rs_defaultsrc` in `usr/lib/dmedia/imageconverters/vicers.so` at 0x401e68 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicers.so`.
  Range: 0x401e68-0x401ea0 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0x401e84 calls get_default [0x4017d4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x401e98 has v0 = ret(get_default).

- `rs_defaultdst` in `usr/lib/dmedia/imageconverters/vicers.so` at 0x401ea0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicers.so`.
  Range: 0x401ea0-0x401ed8 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0x401ebc calls get_default [0x4017d4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x401ed0 has v0 = ret(get_default).

- `rs_defaultcvt` in `usr/lib/dmedia/imageconverters/vicers.so` at 0x401ed8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicers.so`.
  Range: 0x401ed8-0x401f5c (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0x401f00 loads 4 bytes from abs 0x404490.
  The `lw` at 0x401f04 loads 4 bytes from abs 0x404494.
  The `jalr` at 0x401f08 calls dmParamsSetFloat with a0=a0 at entry (arg0), a1=0x40432c, a2=0x3feccccc, a3=0xffffffffcccccccd.
  The `jalr` at 0x401f30 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x404348, a2=0x1, a3=?.
  The `beq` branch at 0x401f10 targets 0x401f20, is taken when v0(=ret(dmParamsSetFloat)) == 0, and falls through when v0(=ret(dmParamsSetFloat)) != 0.
  The `beq` branch at 0x401f18 targets 0x401f4c and is always taken.
  The `beq` branch at 0x401f38 targets 0x401f48, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x401f40 targets 0x401f4c and is always taken.
  The return at 0x401f54 has v0 = one of -0x1, 0x0.

- `_e_go` in `usr/lib/dmedia/imageconverters/vicers.so` at 0x401f5c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicers.so`.
  Range: 0x401f5c-0x402024 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0x401f78 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x401f88 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0x401fa4 stores 4 bytes to a0 (arg0 at entry) +0x70.
  The `sw` at 0x401fbc stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `sw` at 0x401fd8 stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `sw` at 0x401ff4 stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `lw` at 0x401ff8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x401f94 calls dmParamsGetInt with a0=[a0+4], a1=0x404354, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401fb0 calls dmParamsGetInt with a0=[a0+4], a1=0x404364, a2=?, a3=?.
  The `jalr` at 0x401fcc calls dmParamsGetInt with a0=[a0+8], a1=0x404374, a2=?, a3=?.
  The `jalr` at 0x401fe8 calls dmParamsGetInt with a0=[a0+8], a1=0x404384, a2=?, a3=?.
  The `jalr` at 0x402004 calls vice_event_start with a0=[a0], a1=a0+28, a2=?, a3=?.
  The return at 0x40201c has v0 = 0x0.

- `_e_swap_field` in `usr/lib/dmedia/imageconverters/vicers.so` at 0x402024 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicers.so`.
  Range: 0x402024-0x402058 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x402024 loads 4 bytes from a0 (arg0 at entry) +0x90.
  The `lw` at 0x402034 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `sw` at 0x402048 stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `sw` at 0x40204c stores 4 bytes to a0 (arg0 at entry) +0x90.
  The `beq` branch at 0x40202c targets 0x402050, is taken when v0(=[a0+144]) == at(=-0x1), and falls through when v0(=[a0+144]) != at(=-0x1).
  The return at 0x402050 has v0 = [a0+144].

- `rs_send` in `usr/lib/dmedia/imageconverters/vicers.so` at 0x402058 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicers.so`.
  Range: 0x402058-0x40230c (692 bytes).
  It occupies 692 bytes.
  The `lw` at 0x402080 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x402090 loads 4 bytes from a0 (arg0 at entry) +0x4.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x90, including `sw` at 0x40215c, `sw` at 0x4021ac, `sw` at 0x4021b4.
  The `lw` at 0x4021cc loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0x402240 stores 4 bytes to a0 (arg0 at entry) +0x18.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x40225c, `lw` at 0x4022b8.
  The `jalr` at 0x4020ac calls dmParamsCopyAllElems with a0=?, a1=[a0+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4020d8 calls dmParamsCopyAllElems with a0=?, a1=[a0+8], a2=?, a3=?.
  The `jalr` at 0x4020fc calls dmParamsGetEnum with a0=[a0+4], a1=0x404394, a2=?, a3=?.
  The `jalr` at 0x402124 calls dmParamsSetEnum with a0=[a0+8], a1=0x4043a8, a2=?, a3=?.
  The `jalr` at 0x402140 calls dmParamsSetEnum with a0=[a0+8], a1=0x4043bc, a2=0x44c, a3=?.
  The `jalr` at 0x40216c calls dmParamsIsPresent with a0=[a0+8], a1=0x4043d4, a2=?, a3=?.
  The `jalr` at 0x402188 calls dmParamsGetEnum with a0=[a0+8], a1=0x4043ec, a2=?, a3=?.
  The `jalr` at 0x4021d0 calls dmParamsCopyAllElems with a0=?, a1=[a0+12], a2=?, a3=?.
  The `jalr` at 0x402218 calls _e_go [0x401f5c] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x402234 calls needsConvert [0x4014bc] with a0=[a0+4], a1=[a0+8], a2=?, a3=?.
  The `jalr` at 0x402250 calls _e_swap_field [0x402024] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x402274 calls vice_dmbuf_send with a0=[a0], a1=a1 at entry (arg1), a2=a0+152, a3=a0+100.
  The `jalr` at 0x40229c calls dmSetError with a0=0x1777, a1=0x404404, a2=0x40440c, a3=?.
  The `jalr` at 0x4022bc calls vice_dms_geterrs with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x4022e0 calls dmSetError with a0=0x1777, a1=0x404424, a2=0x40442c, a3=?.
  The `beq` branch at 0x402098 targets 0x4020c4, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x4020b4 targets 0x4020c4, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x4020bc targets 0x4022f8 and is always taken.
  The `beq` branch at 0x4020c8 targets 0x4021bc, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x4020e0 targets 0x4020f0, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x4020e8 targets 0x4022f8 and is always taken.
  The `beq` branch at 0x40210c targets 0x402118, is taken when v0(=ret(dmParamsGetEnum)) == at(=0x3f0), and falls through when v0(=ret(dmParamsGetEnum)) != at(=0x3f0).
  The `beq` branch at 0x402148 targets 0x402158, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x402150 targets 0x4022f8 and is always taken.
  The `beq` branch at 0x402174 targets 0x4021bc, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x402194 targets 0x4021b0, is taken when v0(=ret(dmParamsGetEnum)) == v1(=0x1), and falls through when v0(=ret(dmParamsGetEnum)) != v1(=0x1).
  The `beq` branch at 0x4021a0 targets 0x4021b8, is taken when v0(=ret(dmParamsGetEnum)) == at(=0x2), and falls through when v0(=ret(dmParamsGetEnum)) != at(=0x2).
  The `beq` branch at 0x4021a8 targets 0x4021bc and is always taken.
  The `beq` branch at 0x4021b0 targets 0x4021bc and is always taken.
  The `beql` branch at 0x4021c0 targets 0x4021f0, is taken when a0(?) == 0, and falls through when a0(?) != 0; its branch-likely delay slot `lw t2,88(sp)` at 0x4021c4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x4021d8 targets 0x4021e8, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x4021e0 targets 0x4022f8 and is always taken.
  The `bne` branch at 0x4021f4 targets 0x40220c, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bne` branch at 0x4021fc targets 0x40220c, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x402204 targets 0x402244, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x402280 targets 0x4022b4, is taken when v0(=ret(vice_dmbuf_send)) != at(=-0x1), and falls through when v0(=ret(vice_dmbuf_send)) == at(=-0x1).
  The `beq` branch at 0x4022ac targets 0x4022f4 and is always taken.
  The `beq` branch at 0x4022c4 targets 0x4022f4, is taken when v0(=ret(vice_dms_geterrs)) == 0, and falls through when v0(=ret(vice_dms_geterrs)) != 0.
  The return at 0x402304 has v0 = one of -0x1, 0x0.

- `rs_recv` in `usr/lib/dmedia/imageconverters/vicers.so` at 0x40230c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicers.so`.
  Range: 0x40230c-0x402450 (324 bytes).
  It occupies 324 bytes.
  The `lw` at 0x402340 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `lw` at 0x402344 loads 4 bytes from a0 (arg0 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x40239c, `lw` at 0x4023cc.
  The `lw` at 0x4023b4 loads 4 bytes from a0 (arg0 at entry) +0x8c.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x402410, `lw` at 0x402424.
  The `jalr` at 0x402350 calls vice_dmbuf_recv with a0=[a0], a1=sp-12, a2=[a0+128], a3=a0+192.
  The `jalr` at 0x40237c calls dmSetError with a0=0x1777, a1=0x404438, a2=0x404440, a3=?.
  The `jalr` at 0x4023d0 calls printf with a0=0x404454, a1=?, a2=?, a3=?.
  The `jalr` at 0x4023f0 calls dmSetError with a0=0x1777, a1=0x404474, a2=0x40447c, a3=?.
  The `jalr` at 0x40240c calls dmBufferSetSize with a0=[a1], a1=?, a2=?, a3=?.
  The `jalr` at 0x402428 calls dmBufferSetImageType with a0=[a1], a1=0x1, a2=?, a3=?.
  The `bne` branch at 0x40235c targets 0x402390, is taken when v0(=ret(vice_dmbuf_recv)) != at(=-0x1), and falls through when v0(=ret(vice_dmbuf_recv)) == at(=-0x1).
  The `beq` branch at 0x402388 targets 0x402434 and is always taken.
  The `bltz` branch at 0x4023a4 targets 0x4023b4, is taken when a1(?) < 0 (signed), and falls through when a1(?) >= 0 (signed).
  The `bne` branch at 0x4023ac targets 0x402404, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x4023bc targets 0x4023dc, is taken when t0(=[a0+140]) == 0, and falls through when t0(=[a0+140]) != 0.
  The `beq` branch at 0x4023fc targets 0x402434 and is always taken.
  The return at 0x40243c has v0 = one of ret(vice_dmbuf_recv), -0x1, ret(dmBufferSetImageType).
  The instructions from 0x402444 to 0x40244c are not reached by any path from the entry, and their branches are not listed.
