# Readings: `usr/lib32/dmedia/imageconverters/debug/vicers.so`

One entry per routine, filed here from the reading batches by binary.

- `_poolneeds` in `usr/lib32/dmedia/imageconverters/debug/vicers.so` at 0x401470 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x401470-0x4014b4 (68 bytes).
  It occupies 68 bytes.
  The `jalr` at 0x401498 calls vice_dmbuf_requirements with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x4014ac has v0 = ret(vice_dmbuf_requirements).

- `init_formats` in `usr/lib32/dmedia/imageconverters/debug/vicers.so` at 0x4014b4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x4014b4-0x401580 (204 bytes).
  It occupies 204 bytes.
  The `sw` at 0x401550 stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `sw` at 0x401558 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x401560 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `jalr` at 0x4014c8 calls dmParamsCreate with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4014f8 calls dmParamsCreate with a0=a0+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x401528 calls dmParamsCreate with a0=a0+8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4014d4 targets 0x4014ec, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x4014e4 targets 0x40156c and is always taken.
  The `beq` branch at 0x401504 targets 0x40151c, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x401514 targets 0x40156c and is always taken.
  The `beq` branch at 0x401534 targets 0x40154c, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x401544 targets 0x40156c and is always taken.
  The return at 0x401578 has v0 = one of -0x1, 0x0.

- `free_formats` in `usr/lib32/dmedia/imageconverters/debug/vicers.so` at 0x401580 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x401580-0x4015fc (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0x401590 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x4015a4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x4015b8 loads 4 bytes from a0 (arg0 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x4015cc, `lw` at 0x4015dc.
  The `jalr` at 0x401598 calls dmParamsDestroy with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4015ac calls dmParamsDestroy with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0x4015c0 calls dmParamsDestroy with a0=[a0+8], a1=?, a2=?, a3=?.
  The `jalr` at 0x4015e4 calls dmBufferDestroyPool with a0=[a0+12], a1=[a0+12], a2=?, a3=?.
  The `beq` branch at 0x4015d0 targets 0x4015ec, is taken when a1(=[a0+12]) == 0, and falls through when a1(=[a0+12]) != 0.
  The return at 0x4015f4 has v0 = one of ret(dmParamsDestroy), ret(dmBufferDestroyPool).

- `required_params` in `usr/lib32/dmedia/imageconverters/debug/vicers.so` at 0x4015fc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x4015fc-0x401708 (268 bytes).
  It occupies 268 bytes.
  The `jalr` at 0x40161c calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x404000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40163c calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x404018, a2=?, a3=?.
  The `jalr` at 0x401664 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x404028, a2=?, a3=?.
  The `jalr` at 0x40168c calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x404038, a2=?, a3=?.
  The `jalr` at 0x4016b4 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x404050, a2=?, a3=?.
  The `jalr` at 0x4016d4 calls dmSetError with a0=0x1773, a1=0x4043a8, a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x401624 targets 0x4016c4, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `bne` branch at 0x401644 targets 0x401654, is taken when v0(=ret(dmParamsIsPresent)) != 0, and falls through when v0(=ret(dmParamsIsPresent)) == 0.
  The `beq` branch at 0x40164c targets 0x4016c4 and is always taken.
  The `bne` branch at 0x40166c targets 0x40167c, is taken when v0(=ret(dmParamsIsPresent)) != 0, and falls through when v0(=ret(dmParamsIsPresent)) == 0.
  The `beq` branch at 0x401674 targets 0x4016c4 and is always taken.
  The `bne` branch at 0x401694 targets 0x4016a4, is taken when v0(=ret(dmParamsIsPresent)) != 0, and falls through when v0(=ret(dmParamsIsPresent)) == 0.
  The `beq` branch at 0x40169c targets 0x4016c4 and is always taken.
  The `bne` branch at 0x4016bc targets 0x4016ec, is taken when v0(=ret(dmParamsIsPresent)) != 0, and falls through when v0(=ret(dmParamsIsPresent)) == 0.
  The `beq` branch at 0x4016e4 targets 0x4016f4 and is always taken.
  The return at 0x401700 has v0 = one of -0x1, 0x0.

- `needsConvert` in `usr/lib32/dmedia/imageconverters/debug/vicers.so` at 0x401708 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x401708-0x4019e0 (728 bytes).
  It occupies 728 bytes.
  The `bgezall` at 0x401728 calls required_params [0x4015fc] with a0=a0 at entry (arg0), a1=0x4043b0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401754 calls __assert with a0=0x404068, a1=0x404090, a2=0x8b, a3=?.
  The `bgezall` at 0x40176c calls required_params [0x4015fc] with a0=a1 at entry (arg1), a1=0x4043b0, a2=?, a3=?.
  The `jalr` at 0x401798 calls __assert with a0=0x4040a0, a1=0x404090, a2=0x8c, a3=?.
  The `jalr` at 0x4017b0 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x404018, a2=?, a3=?.
  The `jalr` at 0x4017cc calls dmParamsGetInt with a0=a1 at entry (arg1), a1=0x404018, a2=?, a3=?.
  The `jalr` at 0x4017f4 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x404028, a2=ret(dmParamsGetInt), a3=?.
  The `jalr` at 0x401810 calls dmParamsGetInt with a0=a1 at entry (arg1), a1=0x404028, a2=?, a3=?.
  The `jalr` at 0x40183c calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x404050, a2=ret(dmParamsGetInt), a3=?.
  The `jalr` at 0x401858 calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x404050, a2=?, a3=?.
  The `jalr` at 0x40188c calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x4040c8, a2=ret(dmParamsGetEnum), a3=?.
  The `jalr` at 0x4018b0 calls dmParamsIsPresent with a0=a1 at entry (arg1), a1=0x4040c8, a2=?, a3=?.
  The `jalr` at 0x4018d4 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x4040c8, a2=?, a3=?.
  The `jalr` at 0x4018f0 calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x4040c8, a2=?, a3=?.
  The `jalr` at 0x401928 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x404038, a2=?, a3=?.
  The `jalr` at 0x401948 calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x404038, a2=?, a3=?.
  The `beq` branch at 0x401734 targets 0x40175c, is taken when v0(=ret(required_params)) == 0, and falls through when v0(=ret(required_params)) != 0.
  The `beq` branch at 0x401778 targets 0x4017a0, is taken when v0(=ret(required_params)) == 0, and falls through when v0(=ret(required_params)) != 0.
  The `bne` branch at 0x4017dc targets 0x40186c, is taken when a2(=ret(dmParamsGetInt)) != v0(=ret(dmParamsGetInt)), and falls through when a2(=ret(dmParamsGetInt)) == v0(=ret(dmParamsGetInt)).
  The `beq` branch at 0x40181c targets 0x40182c, is taken when a2(=ret(dmParamsGetInt)) == v0(=ret(dmParamsGetInt)), and falls through when a2(=ret(dmParamsGetInt)) != v0(=ret(dmParamsGetInt)).
  The `beq` branch at 0x401824 targets 0x40186c and is always taken.
  The `beq` branch at 0x401864 targets 0x40187c, is taken when a2(=ret(dmParamsGetEnum)) == v0(=ret(dmParamsGetEnum)), and falls through when a2(=ret(dmParamsGetEnum)) != v0(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x401874 targets 0x4019cc and is always taken.
  The `beq` branch at 0x401898 targets 0x401918, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x4018bc targets 0x401918, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x401900 targets 0x401918, is taken when a2(=ret(dmParamsGetEnum)) == v0(=ret(dmParamsGetEnum)), and falls through when a2(=ret(dmParamsGetEnum)) != v0(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x401910 targets 0x4019cc and is always taken.
  The `bne` branch at 0x401960 targets 0x401974, is taken when a2(=ret(dmParamsGetEnum)) != a3(=ret(dmParamsGetEnum)), and falls through when a2(=ret(dmParamsGetEnum)) == a3(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x40196c targets 0x4019cc and is always taken.
  The `bne` branch at 0x40197c targets 0x401994, is taken when a4(=ret(dmParamsGetEnum)) != a5(=0x3e9), and falls through when a4(=ret(dmParamsGetEnum)) == a5(=0x3e9).
  The `beq` branch at 0x40198c targets 0x4019b4, is taken when a6(=ret(dmParamsGetEnum)) == a7(=0x3ea), and falls through when a6(=ret(dmParamsGetEnum)) != a7(=0x3ea).
  The `bne` branch at 0x40199c targets 0x4019c0, is taken when t0(=ret(dmParamsGetEnum)) != t1(=0x3ea), and falls through when t0(=ret(dmParamsGetEnum)) == t1(=0x3ea).
  The `bne` branch at 0x4019ac targets 0x4019c0, is taken when t2(=ret(dmParamsGetEnum)) != t3(=0x3e9), and falls through when t2(=ret(dmParamsGetEnum)) == t3(=0x3e9).
  The `beq` branch at 0x4019b8 targets 0x4019cc and is always taken.
  The return at 0x4019d8 has v0 = one of 0x0, 0x1.

- `verify` in `usr/lib32/dmedia/imageconverters/debug/vicers.so` at 0x4019e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x4019e0-0x401aac (204 bytes).
  It occupies 204 bytes.
  The `bgezall` at 0x401a00 calls required_params [0x4015fc] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401a38 calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x404000, a2=?, a3=?.
  The `jalr` at 0x401a54 calls strcmp with a0=ret(dmParamsGetString), a1=0x4040e0, a2=?, a3=?.
  The `jalr` at 0x401a78 calls dmSetError with a0=0x1772, a1=0x4043a8, a2=0x404000, a3=?.
  The `bne` branch at 0x401a10 targets 0x401a28, is taken when v0(=ret(required_params)) != ra(=-0x1), and falls through when v0(=ret(required_params)) == ra(=-0x1).
  The `beq` branch at 0x401a20 targets 0x401a98 and is always taken.
  The `beq` branch at 0x401a5c targets 0x401a90, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x401a88 targets 0x401a98 and is always taken.
  The return at 0x401aa4 has v0 = one of -0x1, 0x0.

- `get_default` in `usr/lib32/dmedia/imageconverters/debug/vicers.so` at 0x401aac (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x401aac-0x401b80 (212 bytes).
  It occupies 212 bytes.
  The `jalr` at 0x401acc calls dmSetImageDefaults with a0=a0 at entry (arg0), a1=0x140, a2=0xf0, a3=0x3f0.
  The `jalr` at 0x401b04 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x404050, a2=0x44c, a3=?.
  The `jalr` at 0x401b40 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x404000, a2=0x4040e0, a3=?.
  The `beq` branch at 0x401ad8 targets 0x401af0, is taken when v0(=ret(dmSetImageDefaults)) == 0, and falls through when v0(=ret(dmSetImageDefaults)) != 0.
  The `beq` branch at 0x401ae8 targets 0x401b6c and is always taken.
  The `beq` branch at 0x401b10 targets 0x401b28, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x401b20 targets 0x401b6c and is always taken.
  The `beq` branch at 0x401b4c targets 0x401b64, is taken when v0(=ret(dmParamsSetString)) == 0, and falls through when v0(=ret(dmParamsSetString)) != 0.
  The `beq` branch at 0x401b5c targets 0x401b6c and is always taken.
  The return at 0x401b78 has v0 = one of -0x1, 0x0.

- `dmICInitDso` in `usr/lib32/dmedia/imageconverters/debug/vicers.so` at 0x401b80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x401b80-0x401c18 (152 bytes).
  It occupies 152 bytes.
  The `ld` at 0x401ba0 loads 8 bytes from abs 0x404250.
  The `ld` at 0x401ba4 loads 8 bytes from abs 0x404258.
  The `ld` at 0x401ba8 loads 8 bytes from abs 0x404260.
  The `ld` at 0x401bac loads 8 bytes from abs 0x404268.
  The `ld` at 0x401bb0 loads 8 bytes from abs 0x404270.
  The `ld` at 0x401bb4 loads 8 bytes from abs 0x404278.
  The `ld` at 0x401bb8 loads 8 bytes from abs 0x404280.
  The `ld` at 0x401bbc loads 8 bytes from abs 0x404288.
  The `ld` at 0x401bc4 loads 8 bytes from abs 0x404290.
  The `lw` at 0x401bcc loads 4 bytes from abs 0x404298.
  The `jalr` at 0x401bd8 calls dmICRegisterConverter with a0=[0x404250]:8, a1=[0x404258]:8, a2=[0x404260]:8, a3=[0x404268]:8, a4=[0x404270]:8, a5=[0x404278]:8, a6=[0x404280]:8, a7=[0x404288]:8.
  The `bgez` branch at 0x401be0 targets 0x401bf8, is taken when v0(=ret(dmICRegisterConverter)) >= 0 (signed), and falls through when v0(=ret(dmICRegisterConverter)) < 0 (signed).
  The `beq` branch at 0x401bf0 targets 0x401c00 and is always taken.
  The return at 0x401c10 has v0 = one of -0x1, 0x0.

- `rs_open` in `usr/lib32/dmedia/imageconverters/debug/vicers.so` at 0x401c18 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x401c18-0x401df8 (480 bytes).
  It occupies 480 bytes.
  The `sw` at 0x401ca8 stores 4 bytes to ret(calloc) +0x0.
  2 such `lw` accesses load 4 bytes from ret(calloc) +0x0, including `lw` at 0x401cb4, `lw` at 0x401d44.
  The `sw` at 0x401d24 stores 4 bytes to ret(calloc) +0x2c.
  The `sw` at 0x401d30 stores 4 bytes to ret(calloc) +0x54.
  The `sw` at 0x401d3c stores 4 bytes to ret(calloc) +0x58.
  The `sw` at 0x401d74 stores 4 bytes to ret(calloc) +0x88.
  The `sw` at 0x401d98 stores 4 bytes to ret(calloc) +0x8c.
  The `sw` at 0x401da4 stores 4 bytes to ret(calloc) +0x90.
  The `lw` at 0x401dac loads 4 bytes from ret(calloc) +0x8c.
  The `sw` at 0x401dd4 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x401c44 calls calloc with a0=0x1, a1=0xe8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x401c80 calls init_formats [0x4014b4] with a0=ret(calloc)+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x401c94 calls vice_open with a0=0x4040f8, a1=?, a2=?, a3=?.
  The `jalr` at 0x401cd8 calls vice_setetc with a0=ret(vice_open), a1=[ret(calloc)], a2=ret(vice_open), a3=ret(calloc).
  The `jalr` at 0x401cf4 calls vice_file with a0=0x4043b8, a1=?, a2=?, a3=?, a5=ret(calloc)+28.
  The `jalr` at 0x401d14 calls vice_load_msp_code with a0=ret(vice_open), a1=ret(vice_file), a2=ret(calloc)+28, a3=0x0.
  The `jalr` at 0x401d64 calls vice_event_init with a0=[ret(calloc)], a1=ret(calloc)+152, a2=ret(calloc)+192, a3=0x40, a4=0x40, a5=0x1, a6=ret(calloc)+28.
  The `jalr` at 0x401d84 calls getenv with a0=0x404108, a1=ret(calloc), a2=?, a3=?.
  The `jalr` at 0x401dc4 calls printf with a0=0x404118, a1=?, a2=[ret(calloc)+140], a3=-0x1, a4=ret(calloc), a6=ret(calloc).
  The `bne` branch at 0x401c58 targets 0x401c70, is taken when v0(=ret(calloc)) != 0, and falls through when v0(=ret(calloc)) == 0.
  The `beq` branch at 0x401c68 targets 0x401de0 and is always taken.
  The `bgez` branch at 0x401cb8 targets 0x401cd0, is taken when a1(=[ret(calloc)]) >= 0 (signed), and falls through when a1(=[ret(calloc)]) < 0 (signed).
  The `beq` branch at 0x401cc8 targets 0x401de0 and is always taken.
  The `beq` branch at 0x401db0 targets 0x401dcc, is taken when a2(=[ret(calloc)+140]) == 0, and falls through when a2(=[ret(calloc)+140]) != 0.
  The return at 0x401df0 has v0 = one of -0x1, 0x0.

- `rs_close` in `usr/lib32/dmedia/imageconverters/debug/vicers.so` at 0x401df8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x401df8-0x401eb4 (188 bytes).
  It occupies 188 bytes.
  The `lw` at 0x401e20 loads 4 bytes from a0 (arg0 at entry) +0x8c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x401e44, `lw` at 0x401e68.
  The `jalr` at 0x401e38 calls printf with a0=0x404130, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401e5c calls vice_event_uninit with a0=[a0], a1=a0+152, a2=a0+192, a3=?.
  The `jalr` at 0x401e70 calls vice_close with a0=[a0], a1=?, a2=?, a3=?.
  The `bgezall` at 0x401e88 calls free_formats [0x401580] with a0=a0+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x401e98 calls free with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x401e24 targets 0x401e40, is taken when at(=[a0+140]) == 0, and falls through when at(=[a0+140]) != 0.
  The return at 0x401eac has v0 = ret(free).

- `rs_describe` in `usr/lib32/dmedia/imageconverters/debug/vicers.so` at 0x401eb4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x401eb4-0x401f94 (224 bytes).
  It occupies 224 bytes.
  The `jalr` at 0x401ee8 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x404150, a2=0x7265737a, a3=a3 at entry (arg3).
  The `jalr` at 0x401f04 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x404160, a2=0x4043c0, a3=?.
  The `jalr` at 0x401f20 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x404170, a2=0x1, a3=?.
  The `jalr` at 0x401f3c calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x404180, a2=0x0, a3=?.
  The `jalr` at 0x401f58 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x404198, a2=0x0, a3=?.
  The `jalr` at 0x401f74 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x4041a8, a2=0x0, a3=?.
  The return at 0x401f8c has v0 = 0x0.

- `rs_dstpoolis` in `usr/lib32/dmedia/imageconverters/debug/vicers.so` at 0x401f94 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x401f94-0x40204c (184 bytes).
  It occupies 184 bytes.
  The `sw` at 0x401fc4 stores 4 bytes to a0 (arg0 at entry) +0x80.
  The `sw` at 0x401fe0 stores 4 bytes to a0 (arg0 at entry) +0x84.
  The `lw` at 0x401fe8 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `lw` at 0x402010 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x401fd0 calls dmBufferGetAllocSize with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=0xa2f8, a3=a3 at entry (arg3).
  The `jalr` at 0x40201c calls vice_dmbuf_outpool with a0=[a0], a1=a1 at entry (arg1), a2=?, a3=?, a4=[a0+132], a5=a0 at entry (arg0).
  The `beq` branch at 0x401ff4 targets 0x40200c, is taken when a3(=0x3e0000) >= a4(=[a0+132]) (signed), and falls through when a3(=0x3e0000) < a4(=[a0+132]) (signed).
  The `beq` branch at 0x402004 targets 0x402034 and is always taken.
  The return at 0x402044 has v0 = one of -0x1, ret(vice_dmbuf_outpool).

- `rs_fd` in `usr/lib32/dmedia/imageconverters/debug/vicers.so` at 0x40204c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x40204c-0x402070 (36 bytes).
  It occupies 36 bytes.
  The `lw` at 0x402060 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The return at 0x402068 has v0 = [a0+136].

- `rs_getsrcfilled` in `usr/lib32/dmedia/imageconverters/debug/vicers.so` at 0x402070 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x402070-0x4020e8 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x402098 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `jalr` at 0x4020a4 calls dmFifoNfilled with a0=[a0+152], a1=sp-44, a2=0xa21c, a3=a3 at entry (arg3).
  The `beq` branch at 0x4020ac targets 0x4020c4, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The `beq` branch at 0x4020bc targets 0x4020d0 and is always taken.
  The return at 0x4020e0 has v0 = one of -0x1, ?.

- `rs_getdstfilled` in `usr/lib32/dmedia/imageconverters/debug/vicers.so` at 0x4020e8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x4020e8-0x402160 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x402110 loads 4 bytes from a0 (arg0 at entry) +0xc0.
  The `jalr` at 0x40211c calls dmFifoNfilled with a0=[a0+192], a1=sp-44, a2=0xa1a4, a3=a3 at entry (arg3).
  The `beq` branch at 0x402124 targets 0x40213c, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The `beq` branch at 0x402134 targets 0x402148 and is always taken.
  The return at 0x402158 has v0 = one of -0x1, ?.

- `rs_verifysrc` in `usr/lib32/dmedia/imageconverters/debug/vicers.so` at 0x402160 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x402160-0x4021a8 (72 bytes).
  It occupies 72 bytes.
  The `bgezall` at 0x40218c calls verify [0x4019e0] with a0=a0 at entry (arg0), a1=0x4043c8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x4021a0 has v0 = ret(verify).

- `rs_verifydst` in `usr/lib32/dmedia/imageconverters/debug/vicers.so` at 0x4021a8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x4021a8-0x4021f0 (72 bytes).
  It occupies 72 bytes.
  The `bgezall` at 0x4021d4 calls verify [0x4019e0] with a0=a0 at entry (arg0), a1=0x4043cc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x4021e8 has v0 = ret(verify).

- `rs_verifycvt` in `usr/lib32/dmedia/imageconverters/debug/vicers.so` at 0x4021f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x4021f0-0x402208 (24 bytes).
  It occupies 24 bytes.
  The return at 0x402200 has v0 = 0x0.

- `rs_verifysrcdstcvt` in `usr/lib32/dmedia/imageconverters/debug/vicers.so` at 0x402208 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x402208-0x402300 (248 bytes).
  It occupies 248 bytes.
  The `bgezall` at 0x402244 calls rs_verifysrc [0x402160] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x402280 calls rs_verifydst [0x4021a8] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `bgezall` at 0x4022bc calls rs_verifycvt [0x4021f0] with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `beq` branch at 0x402230 targets 0x402268, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x402250 targets 0x402268, is taken when v0(=ret(rs_verifysrc)) == 0, and falls through when v0(=ret(rs_verifysrc)) != 0.
  The `beq` branch at 0x402260 targets 0x4022e8 and is always taken.
  The `beq` branch at 0x40226c targets 0x4022a4, is taken when at(=a1) == 0, and falls through when at(=a1) != 0.
  The `beq` branch at 0x40228c targets 0x4022a4, is taken when v0(=ret(rs_verifydst)) == 0, and falls through when v0(=ret(rs_verifydst)) != 0.
  The `beq` branch at 0x40229c targets 0x4022e8 and is always taken.
  The `beq` branch at 0x4022a8 targets 0x4022e0, is taken when at(=a2) == 0, and falls through when at(=a2) != 0.
  The `beq` branch at 0x4022c8 targets 0x4022e0, is taken when v0(=ret(rs_verifycvt)) == 0, and falls through when v0(=ret(rs_verifycvt)) != 0.
  The `beq` branch at 0x4022d8 targets 0x4022e8 and is always taken.
  The return at 0x4022f8 has v0 = one of -0x1, 0x0.

- `rs_defaultsrc` in `usr/lib32/dmedia/imageconverters/debug/vicers.so` at 0x402300 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x402300-0x402344 (68 bytes).
  It occupies 68 bytes.
  The `bgezall` at 0x402328 calls get_default [0x401aac] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x40233c has v0 = ret(get_default).

- `rs_defaultdst` in `usr/lib32/dmedia/imageconverters/debug/vicers.so` at 0x402344 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x402344-0x402388 (68 bytes).
  It occupies 68 bytes.
  The `bgezall` at 0x40236c calls get_default [0x401aac] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x402380 has v0 = ret(get_default).

- `rs_defaultcvt` in `usr/lib32/dmedia/imageconverters/debug/vicers.so` at 0x402388 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x402388-0x402434 (172 bytes).
  It occupies 172 bytes.
  The `jalr` at 0x4023b8 calls dmParamsSetFloat with a0=a0 at entry (arg0), a1=0x4041b8, a2=0x9f04, a3=a3 at entry (arg3); fp f14=0x3feccccccccccccd.
  The `jalr` at 0x4023f0 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x404170, a2=0x1, a3=?.
  The `beq` branch at 0x4023c4 targets 0x4023dc, is taken when v0(=ret(dmParamsSetFloat)) == 0, and falls through when v0(=ret(dmParamsSetFloat)) != 0.
  The `beq` branch at 0x4023d4 targets 0x40241c and is always taken.
  The `beq` branch at 0x4023fc targets 0x402414, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x40240c targets 0x40241c and is always taken.
  The return at 0x40242c has v0 = one of -0x1, 0x0.

- `_e_go` in `usr/lib32/dmedia/imageconverters/debug/vicers.so` at 0x402434 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x402434-0x402528 (244 bytes).
  It occupies 244 bytes.
  The `lw` at 0x402444 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x402450 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0x40247c stores 4 bytes to a0 (arg0 at entry) +0x70.
  The `sw` at 0x4024a4 stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `sw` at 0x4024cc stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `sw` at 0x4024f4 stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `lw` at 0x4024fc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x402468 calls dmParamsGetInt with a0=[a0+4], a1=0x404018, a2=[a0+4], a3=[a0+8].
  The `jalr` at 0x402490 calls dmParamsGetInt with a0=[a0+4], a1=0x404028, a2=a0+112, a3=?.
  The `jalr` at 0x4024b8 calls dmParamsGetInt with a0=[a0+8], a1=0x404018, a2=a0+116, a3=?.
  The `jalr` at 0x4024e0 calls dmParamsGetInt with a0=[a0+8], a1=0x404028, a2=a0+120, a3=?.
  The `jalr` at 0x40250c calls vice_event_start with a0=[a0], a1=a0+28, a2=?, a3=?.
  The return at 0x402520 has v0 = 0x0.

- `_e_swap_field` in `usr/lib32/dmedia/imageconverters/debug/vicers.so` at 0x402528 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x402528-0x4025a8 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0x402538 loads 4 bytes from a0 (arg0 at entry) +0x90.
  The `lw` at 0x40255c loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `sw` at 0x402580 stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `sw` at 0x402594 stores 4 bytes to a0 (arg0 at entry) +0x90.
  The `bne` branch at 0x402544 targets 0x402554, is taken when at(=[a0+144]) != v0(=-0x1), and falls through when at(=[a0+144]) == v0(=-0x1).
  The `beq` branch at 0x40254c targets 0x402598 and is always taken.
  The return at 0x4025a0 has v0 = one of -0x1, ?.

- `rs_send` in `usr/lib32/dmedia/imageconverters/debug/vicers.so` at 0x4025a8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x4025a8-0x40293c (916 bytes).
  It occupies 916 bytes.
  The `lw` at 0x4025f4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x402600 loads 4 bytes from a0 (arg0 at entry) +0x4.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x90, including `sw` at 0x402718, `sw` at 0x402788, `sw` at 0x40279c.
  The `lw` at 0x4027d0 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0x402854 stores 4 bytes to a0 (arg0 at entry) +0x18.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x402870, `lw` at 0x4028d8.
  The `jalr` at 0x402624 calls dmParamsCopyAllElems with a0=a4 at entry (arg4), a1=[a0+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=0x9ce4.
  The `jalr` at 0x402660 calls dmParamsCopyAllElems with a0=a5 at entry (arg5), a1=[a0+8], a2=?, a3=?.
  The `jalr` at 0x402694 calls dmParamsGetEnum with a0=[a0+4], a1=0x404038, a2=?, a3=?.
  The `jalr` at 0x4026d0 calls dmParamsSetEnum with a0=[a0+8], a1=0x404038, a2=?, a3=0x3f0.
  The `jalr` at 0x4026ec calls dmParamsSetEnum with a0=[a0+8], a1=0x404050, a2=0x44c, a3=?.
  The `jalr` at 0x40272c calls dmParamsIsPresent with a0=[a0+8], a1=0x4040c8, a2=-0x1, a3=a0 at entry (arg0).
  The `jalr` at 0x402750 calls dmParamsGetEnum with a0=[a0+8], a1=0x4040c8, a2=?, a3=?.
  The `jalr` at 0x4027d8 calls dmParamsCopyAllElems with a0=a6 at entry (arg6), a1=[a0+12], a2=?, a3=?.
  The `bgezall` at 0x40282c calls _e_go [0x402434] with a0=a0 at entry (arg0), a1=?, a2=?, a3=a4 at entry (arg4).
  The `bgezall` at 0x402844 calls needsConvert [0x401708] with a0=[a0+4], a1=[a0+8], a2=?, a3=?.
  The `bgezall` at 0x402864 calls _e_swap_field [0x402528] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x402890 calls vice_dmbuf_send with a0=[a0], a1=a1 at entry (arg1), a2=a0+152, a3=a0+100, a4=0x7.
  The `jalr` at 0x4028bc calls dmSetError with a0=0x1777, a1=0x4043a8, a2=0x4041d8, a3=?.
  The `jalr` at 0x4028e0 calls vice_dms_geterrs with a0=[a0], a1=-0x1, a2=?, a3=?.
  The `jalr` at 0x402908 calls dmSetError with a0=0x1777, a1=0x4043a8, a2=0x4041f0, a3=?.
  The `beq` branch at 0x402610 targets 0x402648, is taken when at(=a4) == 0, and falls through when at(=a4) != 0.
  The `beq` branch at 0x402630 targets 0x402648, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x402640 targets 0x402924 and is always taken.
  The `beq` branch at 0x40264c targets 0x4027bc, is taken when t1(=a5) == 0, and falls through when t1(=a5) != 0.
  The `beq` branch at 0x40266c targets 0x402684, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x40267c targets 0x402924 and is always taken.
  The `beq` branch at 0x4026ac targets 0x4026bc, is taken when a2(=ret(dmParamsGetEnum)) == a3(=0x3f0), and falls through when a2(=ret(dmParamsGetEnum)) != a3(=0x3f0).
  The `beq` branch at 0x4026f8 targets 0x402710, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x402708 targets 0x402924 and is always taken.
  The `beq` branch at 0x402738 targets 0x4027bc, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x402764 targets 0x402784, is taken when a2(=ret(dmParamsGetEnum)) == a3(=0x1), and falls through when a2(=ret(dmParamsGetEnum)) != a3(=0x1).
  The `beq` branch at 0x402774 targets 0x402794, is taken when a4(=ret(dmParamsGetEnum)) == a5(=0x2), and falls through when a4(=ret(dmParamsGetEnum)) != a5(=0x2).
  The `beq` branch at 0x40277c targets 0x4027a8 and is always taken.
  The `beq` branch at 0x40278c targets 0x4027bc and is always taken.
  The `beq` branch at 0x4027a0 targets 0x4027bc and is always taken.
  The `beq` branch at 0x4027b4 targets 0x4027bc and is always taken.
  The `beq` branch at 0x4027c0 targets 0x4027fc, is taken when t3(=a6) == 0, and falls through when t3(=a6) != 0.
  The `beq` branch at 0x4027e4 targets 0x4027fc, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x4027f4 targets 0x402924 and is always taken.
  The `bne` branch at 0x402800 targets 0x402820, is taken when a3(=a4) != 0, and falls through when a3(=a4) == 0.
  The `bne` branch at 0x40280c targets 0x402820, is taken when a4(=a5) != 0, and falls through when a4(=a5) == 0.
  The `beq` branch at 0x402818 targets 0x402858, is taken when a5(=a6) == 0, and falls through when a5(=a6) != 0.
  The `bne` branch at 0x4028a0 targets 0x4028d4, is taken when v0(=ret(vice_dmbuf_send)) != a1(=-0x1), and falls through when v0(=ret(vice_dmbuf_send)) == a1(=-0x1).
  The `beq` branch at 0x4028cc targets 0x402918 and is always taken.
  The `beq` branch at 0x4028ec targets 0x402918, is taken when v0(=ret(vice_dms_geterrs)) == 0, and falls through when v0(=ret(vice_dms_geterrs)) != 0.
  The return at 0x402934 has v0 = one of -0x1, 0x0.

- `rs_recv` in `usr/lib32/dmedia/imageconverters/debug/vicers.so` at 0x40293c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicers.so`.
  Range: 0x40293c-0x402ac4 (392 bytes).
  It occupies 392 bytes.
  The `lw` at 0x402974 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x402980 loads 4 bytes from a0 (arg0 at entry) +0x80.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4029e8, `lw` at 0x402a30.
  The `lw` at 0x402a14 loads 4 bytes from a0 (arg0 at entry) +0x8c.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x402a70, `lw` at 0x402a88.
  The `jalr` at 0x402994 calls vice_dmbuf_recv with a0=[a0], a1=sp-92, a2=[a0+128], a3=a0+192, a4=a1 at entry (arg1), a5=0x9950.
  The `jalr` at 0x4029c8 calls dmSetError with a0=0x1777, a1=0x4043a8, a2=0x404200, a3=?, a6=ret(vice_dmbuf_recv), a7=-0x1.
  The `jalr` at 0x402a38 calls printf with a0=0x404218, a1=?, a2=?, a3=?.
  The `jalr` at 0x402a54 calls dmSetError with a0=0x1777, a1=0x4043a8, a2=0x404238, a3=?.
  The `jalr` at 0x402a7c calls dmBufferSetSize with a0=[a1], a1=?, a2=?, a3=?.
  The `jalr` at 0x402a94 calls dmBufferSetImageType with a0=[a1], a1=0x1, a2=?, a3=?.
  The `bne` branch at 0x4029ac targets 0x4029e0, is taken when a6(=ret(vice_dmbuf_recv)) != a7(=-0x1), and falls through when a6(=ret(vice_dmbuf_recv)) == a7(=-0x1).
  The `beq` branch at 0x4029d8 targets 0x402aac and is always taken.
  The `bltz` branch at 0x4029f4 targets 0x402a10, is taken when a4(?) < 0 (signed), and falls through when a4(?) >= 0 (signed).
  The `beq` branch at 0x402a08 targets 0x402a6c, is taken when a6(=0x3e0000) >= a7(?) (signed), and falls through when a6(=0x3e0000) < a7(?) (signed).
  The `beq` branch at 0x402a18 targets 0x402a40, is taken when t0(=[a0+140]) == 0, and falls through when t0(=[a0+140]) != 0.
  The `beq` branch at 0x402a64 targets 0x402aac and is always taken.
  The return at 0x402abc has v0 = one of ?, -0x1, ret(dmBufferSetImageType).
