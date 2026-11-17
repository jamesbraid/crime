# Readings: `usr/lib/dmedia/imageconverters/debug/vicers.so`

One entry per routine, filed here from the reading batches by binary.

- `_poolneeds` in `usr/lib/dmedia/imageconverters/debug/vicers.so` at 0x401270 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x401270-0x4012c0 (80 bytes).
  It occupies 80 bytes.
  The `jalr` at 0x401298 calls vice_dmbuf_requirements with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x4012a0 targets 0x4012b0 and is always taken.
  The return at 0x4012b8 has v0 = ret(vice_dmbuf_requirements).
  The instructions from 0x4012a8 to 0x4012ac are not reached by any path from the entry, and their branches are not listed.

- `init_formats` in `usr/lib/dmedia/imageconverters/debug/vicers.so` at 0x4012c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x4012c0-0x401374 (180 bytes).
  It occupies 180 bytes.
  The `sw` at 0x401340 stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `sw` at 0x401348 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x401350 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `jalr` at 0x4012e4 calls dmParamsCreate with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401304 calls dmParamsCreate with a0=a0+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x401324 calls dmParamsCreate with a0=a0+8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4012ec targets 0x4012fc, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x4012f4 targets 0x401364 and is always taken.
  The `beq` branch at 0x40130c targets 0x40131c, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x401314 targets 0x401364 and is always taken.
  The `beq` branch at 0x40132c targets 0x40133c, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x401334 targets 0x401364 and is always taken.
  The `beq` branch at 0x401354 targets 0x401364 and is always taken.
  The return at 0x40136c has v0 = one of -0x1, 0x0.
  The instructions from 0x40135c to 0x401360 are not reached by any path from the entry, and their branches are not listed.

- `free_formats` in `usr/lib/dmedia/imageconverters/debug/vicers.so` at 0x401374 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x401374-0x401408 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0x40139c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x4013b0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x4013c4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x4013d0, `lw` at 0x4013e8.
  The `jalr` at 0x401398 calls dmParamsDestroy with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4013ac calls dmParamsDestroy with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0x4013c0 calls dmParamsDestroy with a0=[a0+8], a1=?, a2=?, a3=?.
  The `jalr` at 0x4013e4 calls dmBufferDestroyPool with a0=[a0+12], a1=?, a2=?, a3=?.
  The `beq` branch at 0x4013d4 targets 0x4013f0, is taken when t0(=[a0+12]) == 0, and falls through when t0(=[a0+12]) != 0.
  The `beq` branch at 0x4013f0 targets 0x4013f8 and is always taken.
  The return at 0x401400 has v0 = ?.

- `required_params` in `usr/lib/dmedia/imageconverters/debug/vicers.so` at 0x401408 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x401408-0x4014f8 (240 bytes).
  It occupies 240 bytes.
  The `jalr` at 0x401434 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x404000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401450 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x404018, a2=?, a3=?.
  The `jalr` at 0x40146c calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x404028, a2=?, a3=?.
  The `jalr` at 0x401488 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x404038, a2=?, a3=?.
  The `jalr` at 0x4014a4 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x40404c, a2=?, a3=?.
  The `jalr` at 0x4014c4 calls dmSetError with a0=0x1773, a1=0x404064, a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x40143c targets 0x4014b4, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x401458 targets 0x4014b4, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x401474 targets 0x4014b4, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x401490 targets 0x4014b4, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `bne` branch at 0x4014ac targets 0x4014d8, is taken when v0(=ret(dmParamsIsPresent)) != 0, and falls through when v0(=ret(dmParamsIsPresent)) == 0.
  The `beq` branch at 0x4014d0 targets 0x4014e8 and is always taken.
  The `beq` branch at 0x4014d8 targets 0x4014e8 and is always taken.
  The return at 0x4014f0 has v0 = one of -0x1, 0x0.
  The instructions from 0x4014e0 to 0x4014e4 are not reached by any path from the entry, and their branches are not listed.

- `needsConvert` in `usr/lib/dmedia/imageconverters/debug/vicers.so` at 0x4014f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x4014f8-0x40179c (676 bytes).
  It occupies 676 bytes.
  The `jalr` at 0x401534 calls required_params [0x401408] with a0=a0 at entry (arg0), a1=0x40406c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401560 calls __assert with a0=0x404070, a1=0x404098, a2=0x8b, a3=?.
  The `jalr` at 0x40157c calls required_params [0x401408] with a0=a1 at entry (arg1), a1=0x4040a4, a2=?, a3=?.
  The `jalr` at 0x4015a8 calls __assert with a0=0x4040a8, a1=0x4040d0, a2=0x8c, a3=?.
  The `jalr` at 0x4015c0 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x4040dc, a2=?, a3=?.
  The `jalr` at 0x4015dc calls dmParamsGetInt with a0=a1 at entry (arg1), a1=0x4040ec, a2=?, a3=?.
  The `jalr` at 0x4015f8 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x4040fc, a2=?, a3=?.
  The `jalr` at 0x401614 calls dmParamsGetInt with a0=a1 at entry (arg1), a1=0x40410c, a2=?, a3=?.
  The `jalr` at 0x401630 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x40411c, a2=?, a3=?.
  The `jalr` at 0x40164c calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x404134, a2=?, a3=?.
  The `jalr` at 0x401670 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x40414c, a2=?, a3=?.
  The `jalr` at 0x40168c calls dmParamsIsPresent with a0=a1 at entry (arg1), a1=0x404164, a2=?, a3=?.
  The `jalr` at 0x4016a8 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x40417c, a2=?, a3=?.
  The `jalr` at 0x4016c4 calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x404194, a2=?, a3=?.
  The `jalr` at 0x4016e8 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x4041ac, a2=?, a3=?.
  The `jalr` at 0x401704 calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x4041c0, a2=?, a3=?.
  The `bne` branch at 0x40153c targets 0x40154c, is taken when v0(=ret(required_params)) != 0, and falls through when v0(=ret(required_params)) == 0.
  The `beq` branch at 0x401544 targets 0x40156c and is always taken.
  The `bne` branch at 0x401584 targets 0x401594, is taken when v0(=ret(required_params)) != 0, and falls through when v0(=ret(required_params)) == 0.
  The `beq` branch at 0x40158c targets 0x4015b4 and is always taken.
  The `bne` branch at 0x4015e4 targets 0x40165c, is taken when v0(=ret(dmParamsGetInt)) != s0(=ret(dmParamsGetInt)), and falls through when v0(=ret(dmParamsGetInt)) == s0(=ret(dmParamsGetInt)).
  The `bne` branch at 0x40161c targets 0x40165c, is taken when v0(=ret(dmParamsGetInt)) != s1(=ret(dmParamsGetInt)), and falls through when v0(=ret(dmParamsGetInt)) == s1(=ret(dmParamsGetInt)).
  The `beq` branch at 0x401654 targets 0x401664, is taken when v0(=ret(dmParamsGetEnum)) == s2(=ret(dmParamsGetEnum)), and falls through when v0(=ret(dmParamsGetEnum)) != s2(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x40165c targets 0x401784 and is always taken.
  The `beq` branch at 0x401678 targets 0x4016dc, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x401694 targets 0x4016dc, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x4016cc targets 0x4016dc, is taken when v0(=ret(dmParamsGetEnum)) == s0(=ret(dmParamsGetEnum)), and falls through when v0(=ret(dmParamsGetEnum)) != s0(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x4016d4 targets 0x401784 and is always taken.
  The `bne` branch at 0x40171c targets 0x40172c, is taken when t6(=ret(dmParamsGetEnum)) != t7(=ret(dmParamsGetEnum)), and falls through when t6(=ret(dmParamsGetEnum)) == t7(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x401724 targets 0x401784 and is always taken.
  The `bne` branch at 0x401734 targets 0x40174c, is taken when t8(=ret(dmParamsGetEnum)) != at(=0x3e9), and falls through when t8(=ret(dmParamsGetEnum)) == at(=0x3e9).
  The `beq` branch at 0x401744 targets 0x40176c, is taken when t9(=ret(dmParamsGetEnum)) == at(=0x3ea), and falls through when t9(=ret(dmParamsGetEnum)) != at(=0x3ea).
  The `bne` branch at 0x401754 targets 0x401774, is taken when t0(=ret(dmParamsGetEnum)) != at(=0x3ea), and falls through when t0(=ret(dmParamsGetEnum)) == at(=0x3ea).
  The `bne` branch at 0x401764 targets 0x401774, is taken when t1(=ret(dmParamsGetEnum)) != at(=0x3e9), and falls through when t1(=ret(dmParamsGetEnum)) == at(=0x3e9).
  The `beq` branch at 0x40176c targets 0x401784 and is always taken.
  The `beq` branch at 0x401774 targets 0x401784 and is always taken.
  The return at 0x401794 has v0 = one of 0x0, 0x1.
  The instructions from 0x40177c to 0x401780 are not reached by any path from the entry, and their branches are not listed.

- `verify` in `usr/lib/dmedia/imageconverters/debug/vicers.so` at 0x40179c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x40179c-0x401870 (212 bytes).
  It occupies 212 bytes.
  The `jalr` at 0x4017d0 calls required_params [0x401408] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4017f8 calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x4041d4, a2=?, a3=?.
  The `jalr` at 0x401814 calls strcmp with a0=ret(dmParamsGetString), a1=0x4041ec, a2=?, a3=?.
  The `jalr` at 0x401838 calls dmSetError with a0=0x1772, a1=0x404200, a2=0x404208, a3=?.
  The `bne` branch at 0x4017dc targets 0x4017ec, is taken when v0(=ret(required_params)) != at(=-0x1), and falls through when v0(=ret(required_params)) == at(=-0x1).
  The `beq` branch at 0x4017e4 targets 0x40185c and is always taken.
  The `beq` branch at 0x40181c targets 0x40184c, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x401844 targets 0x40185c and is always taken.
  The `beq` branch at 0x40184c targets 0x40185c and is always taken.
  The return at 0x401868 has v0 = one of -0x1, 0x0.
  The instructions from 0x401854 to 0x401858 are not reached by any path from the entry, and their branches are not listed.

- `get_default` in `usr/lib/dmedia/imageconverters/debug/vicers.so` at 0x401870 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x401870-0x4019c4 (340 bytes).
  It occupies 340 bytes.
  The `jalr` at 0x40189c calls dmSetImageDefaults with a0=a0 at entry (arg0), a1=0x140, a2=0xf0, a3=0x3f0.
  The `jalr` at 0x4018c4 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x404220, a2=0x44c, a3=?.
  The `jalr` at 0x4018f0 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x404238, a2=0x404250, a3=?.
  The `beq` branch at 0x4018a4 targets 0x4018b4, is taken when v0(=ret(dmSetImageDefaults)) == 0, and falls through when v0(=ret(dmSetImageDefaults)) != 0.
  The `beq` branch at 0x4018ac targets 0x401918 and is always taken.
  The `beq` branch at 0x4018cc targets 0x4018dc, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x4018d4 targets 0x401918 and is always taken.
  The `beq` branch at 0x4018f8 targets 0x401908, is taken when v0(=ret(dmParamsSetString)) == 0, and falls through when v0(=ret(dmParamsSetString)) != 0.
  The `beq` branch at 0x401900 targets 0x401918 and is always taken.
  The `beq` branch at 0x401908 targets 0x401918 and is always taken.
  The return at 0x401920 has v0 = one of -0x1, 0x0.
  The instructions from 0x401910 to 0x401914 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x401928 to 0x4019c0 are not reached by any path from the entry, and their branches are not listed.

- `dmICInitDso` in `usr/lib/dmedia/imageconverters/debug/vicers.so` at 0x401928 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x401928-0x4019c4 (156 bytes).
  It occupies 156 bytes.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x401950, `lw` at 0x401960, `lw` at 0x401968.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0x40195c, `sw` at 0x401964, `sw` at 0x401970.
  The `jalr` at 0x40198c calls dmICRegisterConverter with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x40196c targets 0x401950, is taken when t6(?) != t0(=0x4044e8), and falls through when t6(?) == t0(=0x4044e8).
  The `bgez` branch at 0x401994 targets 0x4019a4, is taken when v0(=ret(dmICRegisterConverter)) >= 0 (signed), and falls through when v0(=ret(dmICRegisterConverter)) < 0 (signed).
  The `beq` branch at 0x40199c targets 0x4019b4 and is always taken.
  The `beq` branch at 0x4019a4 targets 0x4019b4 and is always taken.
  The return at 0x4019bc has v0 = one of -0x1, 0x0.
  The instructions from 0x4019ac to 0x4019b0 are not reached by any path from the entry, and their branches are not listed.

- `rs_open` in `usr/lib/dmedia/imageconverters/debug/vicers.so` at 0x4019c4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x4019c4-0x401b98 (468 bytes).
  It occupies 468 bytes.
  The `sw` at 0x401a4c stores 4 bytes to ret(calloc) +0x0.
  2 such `lw` accesses load 4 bytes from ret(calloc) +0x0, including `lw` at 0x401a58, `lw` at 0x401af0.
  The `sw` at 0x401ac8 stores 4 bytes to ret(calloc) +0x2c.
  The `sw` at 0x401ad4 stores 4 bytes to ret(calloc) +0x54.
  The `sw` at 0x401ae0 stores 4 bytes to ret(calloc) +0x58.
  The `sw` at 0x401b14 stores 4 bytes to ret(calloc) +0x88.
  The `sw` at 0x401b34 stores 4 bytes to ret(calloc) +0x8c.
  The `sw` at 0x401b40 stores 4 bytes to ret(calloc) +0x90.
  The `lw` at 0x401b48 loads 4 bytes from ret(calloc) +0x8c.
  The `sw` at 0x401b70 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x4019f4 calls calloc with a0=0x1, a1=0xe8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401a24 calls init_formats [0x4012c0] with a0=ret(calloc)+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x401a38 calls vice_open with a0=0x404264, a1=?, a2=?, a3=?.
  The `jalr` at 0x401a74 calls vice_setetc with a0=ret(vice_open), a1=?, a2=?, a3=?.
  The `jalr` at 0x401a94 calls vice_file with a0=0x404274, a1=?, a2=?, a3=?.
  The `jalr` at 0x401ab4 calls vice_load_msp_code with a0=ret(vice_open), a1=ret(vice_file), a2=ret(calloc)+28, a3=0x0.
  The `jalr` at 0x401b04 calls vice_event_init with a0=[ret(calloc)], a1=ret(calloc)+152, a2=ret(calloc)+192, a3=0x40.
  The `jalr` at 0x401b20 calls getenv with a0=0x40427c, a1=?, a2=?, a3=?.
  The `jalr` at 0x401b5c calls printf with a0=0x404288, a1=?, a2=?, a3=?.
  The `bne` branch at 0x401a08 targets 0x401a18, is taken when t6(=ret(calloc)) != 0, and falls through when t6(=ret(calloc)) == 0.
  The `beq` branch at 0x401a10 targets 0x401b84 and is always taken.
  The `bgez` branch at 0x401a5c targets 0x401a6c, is taken when t9(=[ret(calloc)]) >= 0 (signed), and falls through when t9(=[ret(calloc)]) < 0 (signed).
  The `beq` branch at 0x401a64 targets 0x401b84 and is always taken.
  The `beq` branch at 0x401b4c targets 0x401b68, is taken when t6(=[ret(calloc)+140]) == 0, and falls through when t6(=[ret(calloc)+140]) != 0.
  The `beq` branch at 0x401b74 targets 0x401b84 and is always taken.
  The return at 0x401b90 has v0 = one of -0x1, 0x0.
  The instructions from 0x401b7c to 0x401b80 are not reached by any path from the entry, and their branches are not listed.

- `rs_close` in `usr/lib/dmedia/imageconverters/debug/vicers.so` at 0x401b98 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x401b98-0x401c58 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0x401bc0 loads 4 bytes from a0 (arg0 at entry) +0x8c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x401be4, `lw` at 0x401c0c.
  The `jalr` at 0x401bd4 calls printf with a0=0x4042a0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401bf4 calls vice_event_uninit with a0=[a0], a1=a0+152, a2=a0+192, a3=?.
  The `jalr` at 0x401c08 calls vice_close with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x401c20 calls free_formats [0x401374] with a0=a0+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x401c34 calls free with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x401bc4 targets 0x401be0, is taken when t8(=[a0+140]) == 0, and falls through when t8(=[a0+140]) != 0.
  The `beq` branch at 0x401c40 targets 0x401c48 and is always taken.
  The return at 0x401c50 has v0 = ret(free).

- `rs_describe` in `usr/lib/dmedia/imageconverters/debug/vicers.so` at 0x401c58 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x401c58-0x401d44 (236 bytes).
  It occupies 236 bytes.
  The `jalr` at 0x401c88 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x4042bc, a2=0x7265737a, a3=a3 at entry (arg3).
  The `jalr` at 0x401ca8 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x4042c8, a2=0x4042d8, a3=?.
  The `jalr` at 0x401cc4 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x4042e0, a2=0x1, a3=?.
  The `jalr` at 0x401ce0 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x4042ec, a2=0x0, a3=?.
  The `jalr` at 0x401cfc calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x404304, a2=0x0, a3=?.
  The `jalr` at 0x401d18 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x404314, a2=0x0, a3=?.
  The `beq` branch at 0x401d24 targets 0x401d34 and is always taken.
  The return at 0x401d3c has v0 = 0x0.
  The instructions from 0x401d2c to 0x401d30 are not reached by any path from the entry, and their branches are not listed.

- `rs_dstpoolis` in `usr/lib/dmedia/imageconverters/debug/vicers.so` at 0x401d44 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x401d44-0x401dec (168 bytes).
  It occupies 168 bytes.
  The `sw` at 0x401d74 stores 4 bytes to a0 (arg0 at entry) +0x80.
  The `sw` at 0x401d90 stores 4 bytes to a0 (arg0 at entry) +0x84.
  The `lw` at 0x401da0 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `lw` at 0x401dc8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x401d80 calls dmBufferGetAllocSize with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401dc4 calls vice_dmbuf_outpool with a0=[a0], a1=a1 at entry (arg1), a2=?, a3=?.
  The `bne` branch at 0x401da8 targets 0x401db8, is taken when t1(=[a0+132]) < at(=0x3e0001) (signed), and falls through when t1(=[a0+132]) >= at(=0x3e0001) (signed).
  The `beq` branch at 0x401db0 targets 0x401ddc and is always taken.
  The `beq` branch at 0x401dcc targets 0x401ddc and is always taken.
  The return at 0x401de4 has v0 = one of -0x1, ret(vice_dmbuf_outpool).
  The instructions from 0x401dd4 to 0x401dd8 are not reached by any path from the entry, and their branches are not listed.

- `rs_fd` in `usr/lib/dmedia/imageconverters/debug/vicers.so` at 0x401dec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x401dec-0x401e1c (48 bytes).
  It occupies 48 bytes.
  The `lw` at 0x401e08 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `beq` branch at 0x401e04 targets 0x401e14 and is always taken.
  The return at 0x401e14 has v0 = [a0+136].
  The instructions from 0x401e0c to 0x401e10 are not reached by any path from the entry, and their branches are not listed.

- `rs_getsrcfilled` in `usr/lib/dmedia/imageconverters/debug/vicers.so` at 0x401e1c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x401e1c-0x401e84 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x401e50 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `jalr` at 0x401e4c calls dmFifoNfilled with a0=[a0+152], a1=sp-8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x401e54 targets 0x401e64, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The `beq` branch at 0x401e5c targets 0x401e74 and is always taken.
  The `beq` branch at 0x401e64 targets 0x401e74 and is always taken.
  The return at 0x401e7c has v0 = one of -0x1, ?.
  The instructions from 0x401e6c to 0x401e70 are not reached by any path from the entry, and their branches are not listed.

- `rs_getdstfilled` in `usr/lib/dmedia/imageconverters/debug/vicers.so` at 0x401e84 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x401e84-0x401eec (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x401eb8 loads 4 bytes from a0 (arg0 at entry) +0xc0.
  The `jalr` at 0x401eb4 calls dmFifoNfilled with a0=[a0+192], a1=sp-8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x401ebc targets 0x401ecc, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The `beq` branch at 0x401ec4 targets 0x401edc and is always taken.
  The `beq` branch at 0x401ecc targets 0x401edc and is always taken.
  The return at 0x401ee4 has v0 = one of -0x1, ?.
  The instructions from 0x401ed4 to 0x401ed8 are not reached by any path from the entry, and their branches are not listed.

- `rs_verifysrc` in `usr/lib/dmedia/imageconverters/debug/vicers.so` at 0x401eec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x401eec-0x401f40 (84 bytes).
  It occupies 84 bytes.
  The `jalr` at 0x401f18 calls verify [0x40179c] with a0=a0 at entry (arg0), a1=0x404324, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x401f20 targets 0x401f30 and is always taken.
  The return at 0x401f38 has v0 = ret(verify).
  The instructions from 0x401f28 to 0x401f2c are not reached by any path from the entry, and their branches are not listed.

- `rs_verifydst` in `usr/lib/dmedia/imageconverters/debug/vicers.so` at 0x401f40 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x401f40-0x401f94 (84 bytes).
  It occupies 84 bytes.
  The `jalr` at 0x401f6c calls verify [0x40179c] with a0=a0 at entry (arg0), a1=0x404328, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x401f74 targets 0x401f84 and is always taken.
  The return at 0x401f8c has v0 = ret(verify).
  The instructions from 0x401f7c to 0x401f80 are not reached by any path from the entry, and their branches are not listed.

- `rs_verifycvt` in `usr/lib/dmedia/imageconverters/debug/vicers.so` at 0x401f94 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x401f94-0x401fbc (40 bytes).
  It occupies 40 bytes.
  The `beq` branch at 0x401fa4 targets 0x401fb4 and is always taken.
  The return at 0x401fb4 has v0 = 0x0.
  The instructions from 0x401fac to 0x401fb0 are not reached by any path from the entry, and their branches are not listed.

- `rs_verifysrcdstcvt` in `usr/lib/dmedia/imageconverters/debug/vicers.so` at 0x401fbc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x401fbc-0x402090 (212 bytes).
  It occupies 212 bytes.
  The `jalr` at 0x401ff8 calls rs_verifysrc [0x401eec] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x402028 calls rs_verifydst [0x401f40] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x402058 calls rs_verifycvt [0x401f94] with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `beq` branch at 0x401fe4 targets 0x402010, is taken when t6(=a0) == 0, and falls through when t6(=a0) != 0.
  The `beq` branch at 0x402000 targets 0x402010, is taken when v0(=ret(rs_verifysrc)) == 0, and falls through when v0(=ret(rs_verifysrc)) != 0.
  The `beq` branch at 0x402008 targets 0x402080 and is always taken.
  The `beq` branch at 0x402014 targets 0x402040, is taken when t7(=a1) == 0, and falls through when t7(=a1) != 0.
  The `beq` branch at 0x402030 targets 0x402040, is taken when v0(=ret(rs_verifydst)) == 0, and falls through when v0(=ret(rs_verifydst)) != 0.
  The `beq` branch at 0x402038 targets 0x402080 and is always taken.
  The `beq` branch at 0x402044 targets 0x402070, is taken when t8(=a2) == 0, and falls through when t8(=a2) != 0.
  The `beq` branch at 0x402060 targets 0x402070, is taken when v0(=ret(rs_verifycvt)) == 0, and falls through when v0(=ret(rs_verifycvt)) != 0.
  The `beq` branch at 0x402068 targets 0x402080 and is always taken.
  The `beq` branch at 0x402070 targets 0x402080 and is always taken.
  The return at 0x402088 has v0 = one of -0x1, 0x0.
  The instructions from 0x402078 to 0x40207c are not reached by any path from the entry, and their branches are not listed.

- `rs_defaultsrc` in `usr/lib/dmedia/imageconverters/debug/vicers.so` at 0x402090 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x402090-0x4020e0 (80 bytes).
  It occupies 80 bytes.
  The `jalr` at 0x4020b8 calls get_default [0x401870] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x4020c0 targets 0x4020d0 and is always taken.
  The return at 0x4020d8 has v0 = ret(get_default).
  The instructions from 0x4020c8 to 0x4020cc are not reached by any path from the entry, and their branches are not listed.

- `rs_defaultdst` in `usr/lib/dmedia/imageconverters/debug/vicers.so` at 0x4020e0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x4020e0-0x402130 (80 bytes).
  It occupies 80 bytes.
  The `jalr` at 0x402108 calls get_default [0x401870] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x402110 targets 0x402120 and is always taken.
  The return at 0x402128 has v0 = ret(get_default).
  The instructions from 0x402118 to 0x40211c are not reached by any path from the entry, and their branches are not listed.

- `rs_defaultcvt` in `usr/lib/dmedia/imageconverters/debug/vicers.so` at 0x402130 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x402130-0x4021c4 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0x40215c loads 4 bytes from abs 0x404490.
  The `lw` at 0x402160 loads 4 bytes from abs 0x404494.
  The `jalr` at 0x402164 calls dmParamsSetFloat with a0=a0 at entry (arg0), a1=0x40432c, a2=0x3feccccc, a3=0xffffffffcccccccd.
  The `jalr` at 0x40218c calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x404348, a2=0x1, a3=?.
  The `beq` branch at 0x40216c targets 0x40217c, is taken when v0(=ret(dmParamsSetFloat)) == 0, and falls through when v0(=ret(dmParamsSetFloat)) != 0.
  The `beq` branch at 0x402174 targets 0x4021b4 and is always taken.
  The `beq` branch at 0x402194 targets 0x4021a4, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x40219c targets 0x4021b4 and is always taken.
  The `beq` branch at 0x4021a4 targets 0x4021b4 and is always taken.
  The return at 0x4021bc has v0 = one of -0x1, 0x0.
  The instructions from 0x4021ac to 0x4021b0 are not reached by any path from the entry, and their branches are not listed.

- `_e_go` in `usr/lib/dmedia/imageconverters/debug/vicers.so` at 0x4021c4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x4021c4-0x4022b0 (236 bytes).
  It occupies 236 bytes.
  The `lw` at 0x4021e4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x4021f0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0x402214 stores 4 bytes to a0 (arg0 at entry) +0x70.
  The `sw` at 0x402234 stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `sw` at 0x402254 stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `sw` at 0x402274 stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `lw` at 0x402280 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x402204 calls dmParamsGetInt with a0=[a0+4], a1=0x404354, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x402224 calls dmParamsGetInt with a0=[a0+4], a1=0x404364, a2=?, a3=?.
  The `jalr` at 0x402244 calls dmParamsGetInt with a0=[a0+8], a1=0x404374, a2=?, a3=?.
  The `jalr` at 0x402264 calls dmParamsGetInt with a0=[a0+8], a1=0x404384, a2=?, a3=?.
  The `jalr` at 0x402284 calls vice_event_start with a0=[a0], a1=a0+28, a2=?, a3=?.
  The `beq` branch at 0x402290 targets 0x4022a0 and is always taken.
  The return at 0x4022a8 has v0 = 0x0.
  The instructions from 0x402298 to 0x40229c are not reached by any path from the entry, and their branches are not listed.

- `_e_swap_field` in `usr/lib/dmedia/imageconverters/debug/vicers.so` at 0x4022b0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x4022b0-0x402320 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x4022c0 loads 4 bytes from a0 (arg0 at entry) +0x90.
  The `lw` at 0x4022e0 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `sw` at 0x4022fc stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `sw` at 0x40230c stores 4 bytes to a0 (arg0 at entry) +0x90.
  The `bne` branch at 0x4022d0 targets 0x4022e0, is taken when t7(=[a0+144]) != at(=-0x1), and falls through when t7(=[a0+144]) == at(=-0x1).
  The `beq` branch at 0x4022d8 targets 0x402318 and is always taken.
  The `beq` branch at 0x402310 targets 0x402318 and is always taken.
  The return at 0x402318 has v0 = ?.

- `rs_send` in `usr/lib/dmedia/imageconverters/debug/vicers.so` at 0x402320 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x402320-0x402658 (824 bytes).
  It occupies 824 bytes.
  The `lw` at 0x402364 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x402370 loads 4 bytes from a0 (arg0 at entry) +0x4.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x90, including `sw` at 0x40245c, `sw` at 0x4024b8, `sw` at 0x4024cc.
  The `lw` at 0x402508 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0x402578 stores 4 bytes to a0 (arg0 at entry) +0x18.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x4025a0, `lw` at 0x402600.
  The `jalr` at 0x402394 calls dmParamsCopyAllElems with a0=?, a1=[a0+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4023c4 calls dmParamsCopyAllElems with a0=?, a1=[a0+8], a2=?, a3=?.
  The `jalr` at 0x4023e8 calls dmParamsGetEnum with a0=[a0+4], a1=0x404394, a2=?, a3=?.
  The `jalr` at 0x402420 calls dmParamsSetEnum with a0=[a0+8], a1=0x4043a8, a2=?, a3=?.
  The `jalr` at 0x40243c calls dmParamsSetEnum with a0=[a0+8], a1=0x4043bc, a2=0x44c, a3=?.
  The `jalr` at 0x40246c calls dmParamsIsPresent with a0=[a0+8], a1=0x4043d4, a2=?, a3=?.
  The `jalr` at 0x402488 calls dmParamsGetEnum with a0=[a0+8], a1=0x4043ec, a2=?, a3=?.
  The `jalr` at 0x402504 calls dmParamsCopyAllElems with a0=?, a1=[a0+12], a2=?, a3=?.
  The `jalr` at 0x40254c calls _e_go [0x4021c4] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x402568 calls needsConvert [0x4014f8] with a0=[a0+4], a1=[a0+8], a2=?, a3=?.
  The `jalr` at 0x402588 calls _e_swap_field [0x4022b0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x4025b4 calls vice_dmbuf_send with a0=[a0], a1=a1 at entry (arg1), a2=a0+152, a3=a0+100.
  The `jalr` at 0x4025dc calls dmSetError with a0=0x1777, a1=0x404404, a2=0x40440c, a3=?.
  The `jalr` at 0x4025fc calls vice_dms_geterrs with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x402620 calls dmSetError with a0=0x1777, a1=0x404424, a2=0x40442c, a3=?.
  The `beq` branch at 0x402380 targets 0x4023ac, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x40239c targets 0x4023ac, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x4023a4 targets 0x402644 and is always taken.
  The `beq` branch at 0x4023b0 targets 0x4024ec, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x4023cc targets 0x4023dc, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x4023d4 targets 0x402644 and is always taken.
  The `beq` branch at 0x402400 targets 0x402410, is taken when t4(=ret(dmParamsGetEnum)) == at(=0x3f0), and falls through when t4(=ret(dmParamsGetEnum)) != at(=0x3f0).
  The `beq` branch at 0x402444 targets 0x402454, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x40244c targets 0x402644 and is always taken.
  The `beq` branch at 0x402474 targets 0x4024ec, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x402498 targets 0x4024b4, is taken when s0(=ret(dmParamsGetEnum)) == at(=0x1), and falls through when s0(=ret(dmParamsGetEnum)) != at(=0x1).
  The `beq` branch at 0x4024a4 targets 0x4024c4, is taken when s0(=ret(dmParamsGetEnum)) == at(=0x2), and falls through when s0(=ret(dmParamsGetEnum)) != at(=0x2).
  The `beq` branch at 0x4024ac targets 0x4024d8 and is always taken.
  The `beq` branch at 0x4024bc targets 0x4024ec and is always taken.
  The `beq` branch at 0x4024d0 targets 0x4024ec and is always taken.
  The `beq` branch at 0x4024e4 targets 0x4024ec and is always taken.
  The `beq` branch at 0x4024f0 targets 0x40251c, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x40250c targets 0x40251c, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x402514 targets 0x402644 and is always taken.
  The `bne` branch at 0x402520 targets 0x402540, is taken when t5(?) != 0, and falls through when t5(?) == 0.
  The `bne` branch at 0x40252c targets 0x402540, is taken when t6(?) != 0, and falls through when t6(?) == 0.
  The `beq` branch at 0x402538 targets 0x40257c, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `bne` branch at 0x4025c0 targets 0x4025f4, is taken when v0(=ret(vice_dmbuf_send)) != at(=-0x1), and falls through when v0(=ret(vice_dmbuf_send)) == at(=-0x1).
  The `beq` branch at 0x4025ec targets 0x402634 and is always taken.
  The `beq` branch at 0x402604 targets 0x402634, is taken when v0(=ret(vice_dms_geterrs)) == 0, and falls through when v0(=ret(vice_dms_geterrs)) != 0.
  The `beq` branch at 0x402634 targets 0x402644 and is always taken.
  The return at 0x402650 has v0 = one of -0x1, 0x0.
  The instructions from 0x40263c to 0x402640 are not reached by any path from the entry, and their branches are not listed.

- `rs_recv` in `usr/lib/dmedia/imageconverters/debug/vicers.so` at 0x402658 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x402658-0x4027c0 (360 bytes).
  It occupies 360 bytes.
  The `lw` at 0x402694 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x402698 loads 4 bytes from a0 (arg0 at entry) +0x80.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4026f0, `lw` at 0x402740.
  The `lw` at 0x40271c loads 4 bytes from a0 (arg0 at entry) +0x8c.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x402780, `lw` at 0x402798.
  The `jalr` at 0x4026a4 calls vice_dmbuf_recv with a0=[a0], a1=sp-12, a2=[a0+128], a3=a0+192.
  The `jalr` at 0x4026d8 calls dmSetError with a0=0x1777, a1=0x404438, a2=0x404440, a3=?.
  The `jalr` at 0x40273c calls printf with a0=0x404454, a1=?, a2=?, a3=?.
  The `jalr` at 0x40275c calls dmSetError with a0=0x1777, a1=0x404474, a2=0x40447c, a3=?.
  The `jalr` at 0x40277c calls dmBufferSetSize with a0=[a1], a1=?, a2=?, a3=?.
  The `jalr` at 0x402794 calls dmBufferSetImageType with a0=[a1], a1=0x1, a2=?, a3=?.
  The `bne` branch at 0x4026bc targets 0x4026ec, is taken when t9(=ret(vice_dmbuf_recv)) != at(=-0x1), and falls through when t9(=ret(vice_dmbuf_recv)) == at(=-0x1).
  The `beq` branch at 0x4026e4 targets 0x4027ac and is always taken.
  The `bltz` branch at 0x4026fc targets 0x402718, is taken when t2(?) < 0 (signed), and falls through when t2(?) >= 0 (signed).
  The `bne` branch at 0x402710 targets 0x402770, is taken when t2(?) < at(=0x3e0001) (signed), and falls through when t2(?) >= at(=0x3e0001) (signed).
  The `beq` branch at 0x402720 targets 0x402748, is taken when t4(=[a0+140]) == 0, and falls through when t4(=[a0+140]) != 0.
  The `beq` branch at 0x402768 targets 0x4027ac and is always taken.
  The `beq` branch at 0x40279c targets 0x4027ac and is always taken.
  The return at 0x4027b4 has v0 = one of ret(vice_dmbuf_recv), -0x1, ret(dmBufferSetImageType).
  The instructions from 0x4027a4 to 0x4027a8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4027bc to 0x4027bc are not reached by any path from the entry, and their branches are not listed.
