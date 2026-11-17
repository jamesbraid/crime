# Readings: `usr/lib32/dmedia/imageconverters/vicers.so`

One entry per routine, filed here from the reading batches by binary.

- `_poolneeds` in `usr/lib32/dmedia/imageconverters/vicers.so` at 0x401360 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicers.so`.
  Range: 0x401360-0x401394 (52 bytes).
  It occupies 52 bytes.
  The `jalr` at 0x40137c calls vice_dmbuf_requirements with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x40138c has v0 = ret(vice_dmbuf_requirements).

- `init_formats` in `usr/lib32/dmedia/imageconverters/vicers.so` at 0x401394 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicers.so`.
  Range: 0x401394-0x401418 (132 bytes).
  It occupies 132 bytes.
  The `sw` at 0x401404 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `sw` at 0x401408 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x401414 stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `jalr` at 0x4013a0 calls dmParamsCreate with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4013d0 calls dmParamsCreate with a0=a0+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x4013ec calls dmParamsCreate with a0=a0+8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4013a8 targets 0x4013c8, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x4013d8 targets 0x4013e8, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x4013e0 targets 0x4013bc and is always taken.
  The `beq` branch at 0x4013f4 targets 0x401404, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x4013fc targets 0x4013bc and is always taken.
  The `beq` branch at 0x401410 targets 0x4013bc and is always taken.
  The return at 0x4013b4 has v0 = -0x1.
  The return at 0x4013c0 has v0 = one of -0x1, 0x0.

- `free_formats` in `usr/lib32/dmedia/imageconverters/vicers.so` at 0x401418 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicers.so`.
  Range: 0x401418-0x401474 (92 bytes).
  It occupies 92 bytes.
  The `lw` at 0x401430 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x40143c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x401448 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x40144c loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `jalr` at 0x40142c calls dmParamsDestroy with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401438 calls dmParamsDestroy with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0x401444 calls dmParamsDestroy with a0=[a0+8], a1=?, a2=?, a3=?.
  The `jalr` at 0x40145c calls dmBufferDestroyPool with a0=[a0+12], a1=?, a2=?, a3=?.
  The `beq` branch at 0x401450 targets 0x401468, is taken when a0(=[a0+12]) == 0, and falls through when a0(=[a0+12]) != 0.
  The return at 0x40146c has v0 = one of ret(dmParamsDestroy), ret(dmBufferDestroyPool).

- `required_params` in `usr/lib32/dmedia/imageconverters/vicers.so` at 0x401474 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicers.so`.
  Range: 0x401474-0x401550 (220 bytes).
  It occupies 220 bytes.
  The `jalr` at 0x401498 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x404000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4014b4 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x404018, a2=?, a3=?.
  The `jalr` at 0x4014cc calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x404028, a2=?, a3=?.
  The `jalr` at 0x4014e8 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x404038, a2=?, a3=?.
  The `jalr` at 0x401500 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x404050, a2=?, a3=?.
  The `jalr` at 0x401530 calls dmSetError with a0=0x1773, a1=0x4043a8, a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x4014a0 targets 0x401528, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x4014bc targets 0x401524, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x4014d4 targets 0x401528, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x4014f0 targets 0x401524, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x401508 targets 0x401524, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The return at 0x40151c has v0 = 0x0.
  The return at 0x401548 has v0 = -0x1.

- `needsConvert` in `usr/lib32/dmedia/imageconverters/vicers.so` at 0x401550 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicers.so`.
  Range: 0x401550-0x401770 (544 bytes).
  It occupies 544 bytes.
  The `bgezall` at 0x401570 calls required_params [0x401474] with a0=a0 at entry (arg0), a1=0x4043b0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401598 calls __assert with a0=0x404068, a1=0x404090, a2=0x8b, a3=?.
  The `bgezall` at 0x4015ac calls required_params [0x401474] with a0=a1 at entry (arg1), a1=0x4043b0, a2=?, a3=?.
  The `jalr` at 0x4015d0 calls __assert with a0=0x4040a0, a1=0x404090, a2=0x8c, a3=?.
  The `jalr` at 0x4015e4 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x404018, a2=?, a3=?.
  The `jalr` at 0x4015fc calls dmParamsGetInt with a0=a1 at entry (arg1), a1=0x404018, a2=?, a3=?.
  The `jalr` at 0x401618 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x404028, a2=ret(dmParamsGetInt), a3=?.
  The `jalr` at 0x401630 calls dmParamsGetInt with a0=a1 at entry (arg1), a1=0x404028, a2=?, a3=?.
  The `jalr` at 0x40164c calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x404050, a2=ret(dmParamsGetInt), a3=?.
  The `jalr` at 0x401664 calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x404050, a2=?, a3=?.
  The `jalr` at 0x401698 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x4040c8, a2=ret(dmParamsGetEnum), a3=?.
  The `jalr` at 0x4016b4 calls dmParamsIsPresent with a0=a1 at entry (arg1), a1=0x4040c8, a2=?, a3=?.
  The `jalr` at 0x4016cc calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x4040c8, a2=?, a3=?.
  The `jalr` at 0x4016e4 calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x4040c8, a2=?, a3=?.
  The `jalr` at 0x40170c calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x404038, a2=?, a3=?.
  The `jalr` at 0x401724 calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x404038, a2=?, a3=?.
  The `bne` branch at 0x401578 targets 0x401588, is taken when v0(=ret(required_params)) != 0, and falls through when v0(=ret(required_params)) == 0.
  The `beq` branch at 0x401580 targets 0x4015a4 and is always taken.
  The `beq` branch at 0x4015b4 targets 0x4015dc, is taken when v0(=ret(required_params)) == 0, and falls through when v0(=ret(required_params)) != 0.
  The `bne` branch at 0x401608 targets 0x401678, is taken when v0(=ret(dmParamsGetInt)) != a2(=ret(dmParamsGetInt)), and falls through when v0(=ret(dmParamsGetInt)) == a2(=ret(dmParamsGetInt)).
  The `bne` branch at 0x40163c targets 0x401678, is taken when a2(=ret(dmParamsGetInt)) != v0(=ret(dmParamsGetInt)), and falls through when a2(=ret(dmParamsGetInt)) == v0(=ret(dmParamsGetInt)).
  The `beq` branch at 0x401670 targets 0x401690, is taken when a2(=ret(dmParamsGetEnum)) == v0(=ret(dmParamsGetEnum)), and falls through when a2(=ret(dmParamsGetEnum)) != v0(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x4016a0 targets 0x401704, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x4016bc targets 0x401700, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x4016f0 targets 0x401704, is taken when a2(=ret(dmParamsGetEnum)) == v0(=ret(dmParamsGetEnum)), and falls through when a2(=ret(dmParamsGetEnum)) != v0(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x4016f8 targets 0x40167c and is always taken.
  The `beq` branch at 0x40172c targets 0x401758, is taken when s1(=ret(dmParamsGetEnum)) == v0(=ret(dmParamsGetEnum)), and falls through when s1(=ret(dmParamsGetEnum)) != v0(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x401738 targets 0x401760, is taken when s1(=ret(dmParamsGetEnum)) == a0(=0x3e9), and falls through when s1(=ret(dmParamsGetEnum)) != a0(=0x3e9).
  The `bne` branch at 0x401740 targets 0x401750, is taken when s1(=ret(dmParamsGetEnum)) != a3(=0x3ea), and falls through when s1(=ret(dmParamsGetEnum)) == a3(=0x3ea).
  The `beq` branch at 0x401748 targets 0x401768, is taken when v0(=ret(dmParamsGetEnum)) == a0(=0x3e9), and falls through when v0(=ret(dmParamsGetEnum)) != a0(=0x3e9).
  The `beq` branch at 0x401750 targets 0x40167c and is always taken.
  The `beq` branch at 0x401758 targets 0x40167c and is always taken.
  The `bne` branch at 0x401760 targets 0x401740, is taken when v0(=ret(dmParamsGetEnum)) != a3(=0x3ea), and falls through when v0(=ret(dmParamsGetEnum)) == a3(=0x3ea).
  The `beq` branch at 0x401768 targets 0x40167c and is always taken.
  The return at 0x401688 has v0 = one of 0x0, 0x1.

- `verify` in `usr/lib32/dmedia/imageconverters/vicers.so` at 0x401770 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicers.so`.
  Range: 0x401770-0x4017fc (140 bytes).
  It occupies 140 bytes.
  The `bgezall` at 0x401780 calls required_params [0x401474] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4017a0 calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x404000, a2=?, a3=-0x1.
  The `jalr` at 0x4017b4 calls strcmp with a0=ret(dmParamsGetString), a1=0x4040e0, a2=?, a3=?.
  The `jalr` at 0x4017d0 calls dmSetError with a0=0x1772, a1=0x4043a8, a2=0x404000, a3=?.
  The `beq` branch at 0x40178c targets 0x4017dc, is taken when v0(=ret(required_params)) == ra(=-0x1), and falls through when v0(=ret(required_params)) != ra(=-0x1).
  The `beq` branch at 0x4017bc targets 0x4017ec, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The return at 0x4017e4 has v0 = -0x1.
  The return at 0x4017f4 has v0 = 0x0.

- `get_default` in `usr/lib32/dmedia/imageconverters/vicers.so` at 0x4017fc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicers.so`.
  Range: 0x4017fc-0x401894 (152 bytes).
  It occupies 152 bytes.
  The `jalr` at 0x401814 calls dmSetImageDefaults with a0=a0 at entry (arg0), a1=0x140, a2=0xf0, a3=0x3f0.
  The `jalr` at 0x40184c calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x404050, a2=0x44c, a3=?.
  The `jalr` at 0x401874 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x404000, a2=0x4040e0, a3=?.
  The `beq` branch at 0x40181c targets 0x401840, is taken when v0(=ret(dmSetImageDefaults)) == 0, and falls through when v0(=ret(dmSetImageDefaults)) != 0.
  The `beq` branch at 0x401854 targets 0x401864, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x40185c targets 0x401834 and is always taken.
  The `beq` branch at 0x40187c targets 0x40188c, is taken when v0(=ret(dmParamsSetString)) == 0, and falls through when v0(=ret(dmParamsSetString)) != 0.
  The `beq` branch at 0x401884 targets 0x401834 and is always taken.
  The `beq` branch at 0x40188c targets 0x401834 and is always taken.
  The return at 0x40182c has v0 = -0x1.
  The return at 0x401838 has v0 = one of -0x1, 0x0.

- `dmICInitDso` in `usr/lib32/dmedia/imageconverters/vicers.so` at 0x401894 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicers.so`.
  Range: 0x401894-0x401918 (132 bytes).
  It occupies 132 bytes.
  The `ld` at 0x4018b4 loads 8 bytes from abs 0x404250.
  The `ld` at 0x4018bc loads 8 bytes from abs 0x404288.
  The `ld` at 0x4018c0 loads 8 bytes from abs 0x404280.
  The `ld` at 0x4018c4 loads 8 bytes from abs 0x404278.
  The `ld` at 0x4018c8 loads 8 bytes from abs 0x404270.
  The `ld` at 0x4018cc loads 8 bytes from abs 0x404268.
  The `ld` at 0x4018d0 loads 8 bytes from abs 0x404260.
  The `ld` at 0x4018d4 loads 8 bytes from abs 0x404258.
  The `ld` at 0x4018d8 loads 8 bytes from abs 0x404290.
  The `lw` at 0x4018e0 loads 4 bytes from abs 0x404298.
  The `jalr` at 0x4018e4 calls dmICRegisterConverter with a0=[0x404250]:8, a1=[0x404258]:8, a2=[0x404260]:8, a3=[0x404268]:8, a4=[0x404270]:8, a5=[0x404278]:8, a6=[0x404280]:8, a7=[0x404288]:8.
  The `bltz` branch at 0x4018ec targets 0x401904, is taken when v0(=ret(dmICRegisterConverter)) < 0 (signed), and falls through when v0(=ret(dmICRegisterConverter)) >= 0 (signed).
  The return at 0x4018fc has v0 = 0x0.
  The return at 0x401910 has v0 = -0x1.

- `rs_open` in `usr/lib32/dmedia/imageconverters/vicers.so` at 0x401918 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicers.so`.
  Range: 0x401918-0x401a58 (320 bytes).
  It occupies 320 bytes.
  The `sw` at 0x401990 stores 4 bytes to ret(calloc) +0x0.
  The `lw` at 0x4019cc loads 4 bytes from ret(calloc) +0x0.
  The `sw` at 0x4019e4 stores 4 bytes to ret(calloc) +0x58.
  The `sw` at 0x4019f0 stores 4 bytes to ret(calloc) +0x54.
  The `sw` at 0x4019fc stores 4 bytes to ret(calloc) +0x2c.
  The `sw` at 0x401a08 stores 4 bytes to ret(calloc) +0x88.
  The `sw` at 0x401a18 stores 4 bytes to ret(calloc) +0x90.
  The `sw` at 0x401a24 stores 4 bytes to ret(calloc) +0x8c.
  The `sw` at 0x401a2c stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x401940 calls calloc with a0=0x1, a1=0xe8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x401974 calls init_formats [0x401394] with a0=ret(calloc)+4, a1=?, a2=?, a3=-0x1.
  The `jalr` at 0x401984 calls vice_open with a0=0x4040f8, a1=?, a2=?, a3=?.
  The `jalr` at 0x4019a0 calls vice_setetc with a0=ret(vice_open), a1=?, a2=?, a3=-0x1.
  The `jalr` at 0x4019ac calls vice_file with a0=0x4043b8, a1=?, a2=?, a3=?.
  The `jalr` at 0x4019c4 calls vice_load_msp_code with a0=ret(vice_open), a1=ret(vice_file), a2=ret(calloc)+28, a3=0x0.
  The `jalr` at 0x4019f8 calls vice_event_init with a0=[ret(calloc)], a1=ret(calloc)+152, a2=ret(calloc)+192, a3=0x40, a4=0x40, a5=0x1, a6=0x8000, a7=0x1c.
  The `jalr` at 0x401a0c calls getenv with a0=0x404108, a1=?, a2=?, a3=?.
  The `jalr` at 0x401a40 calls printf with a0=0x404118, a1=?, a2=-0x1, a3=?.
  The `bne` branch at 0x40194c targets 0x40196c, is taken when v0(=ret(calloc)) != 0, and falls through when v0(=ret(calloc)) == 0.
  The `bltz` branch at 0x401994 targets 0x401a50, is taken when v0(=ret(vice_open)) < 0 (signed), and falls through when v0(=ret(vice_open)) >= 0 (signed).
  The `bne` branch at 0x401a20 targets 0x401a38, is taken when v0(=ret(getenv)) != 0, and falls through when v0(=ret(getenv)) == 0.
  The `beq` branch at 0x401a30 targets 0x401954 and is always taken.
  The `beq` branch at 0x401a48 targets 0x401a2c and is always taken.
  The `beq` branch at 0x401a50 targets 0x401958 and is always taken.
  The return at 0x401964 has v0 = one of -0x1, 0x0.

- `rs_close` in `usr/lib32/dmedia/imageconverters/vicers.so` at 0x401a58 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicers.so`.
  Range: 0x401a58-0x401ae0 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0x401a5c loads 4 bytes from a0 (arg0 at entry) +0x8c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x401aa0, `lw` at 0x401aac.
  The `jalr` at 0x401a88 calls printf with a0=0x404130, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401a9c calls vice_event_uninit with a0=[a0], a1=a0+152, a2=a0+192, a3=?.
  The `jalr` at 0x401aa8 calls vice_close with a0=[a0], a1=?, a2=?, a3=?.
  The `bgezall` at 0x401ab8 calls free_formats [0x401418] with a0=a0+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x401ac4 calls free with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x401a78 targets 0x401a90, is taken when at(=[a0+140]) == 0, and falls through when at(=[a0+140]) != 0.
  The return at 0x401ad8 has v0 = ret(free).

- `rs_describe` in `usr/lib32/dmedia/imageconverters/vicers.so` at 0x401ae0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicers.so`.
  Range: 0x401ae0-0x401ba8 (200 bytes).
  It occupies 200 bytes.
  The `jalr` at 0x401b10 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x404150, a2=0x7265737a, a3=0xa7ac.
  The `jalr` at 0x401b28 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x404160, a2=0x4043c0, a3=?.
  The `jalr` at 0x401b40 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x404170, a2=0x1, a3=?.
  The `jalr` at 0x401b58 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x404180, a2=0x0, a3=?.
  The `jalr` at 0x401b70 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x404198, a2=0x0, a3=?.
  The `jalr` at 0x401b88 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x4041a8, a2=0x0, a3=?.
  The return at 0x401ba0 has v0 = 0x0.

- `rs_dstpoolis` in `usr/lib32/dmedia/imageconverters/vicers.so` at 0x401ba8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicers.so`.
  Range: 0x401ba8-0x401c2c (132 bytes).
  It occupies 132 bytes.
  The `sw` at 0x401bac stores 4 bytes to a0 (arg0 at entry) +0x80.
  The `sw` at 0x401be4 stores 4 bytes to a0 (arg0 at entry) +0x84.
  The `lw` at 0x401c14 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x401bd4 calls dmBufferGetAllocSize with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401c10 calls vice_dmbuf_outpool with a0=[a0], a1=a1 at entry (arg1), a2=?, a3=-0x1.
  The `beq` branch at 0x401bec targets 0x401c08, is taken when v1(=0x3e0000) >= v0(=ret(dmBufferGetAllocSize)) (signed), and falls through when v1(=0x3e0000) < v0(=ret(dmBufferGetAllocSize)) (signed).
  The return at 0x401c00 has v0 = -0x1.
  The return at 0x401c24 has v0 = ret(vice_dmbuf_outpool).

- `rs_fd` in `usr/lib32/dmedia/imageconverters/vicers.so` at 0x401c2c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicers.so`.
  Range: 0x401c2c-0x401c34 (8 bytes).
  It occupies 8 bytes.
  The `lw` at 0x401c30 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The return at 0x401c2c has v0 = [a0+136].

- `rs_getsrcfilled` in `usr/lib32/dmedia/imageconverters/vicers.so` at 0x401c34 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicers.so`.
  Range: 0x401c34-0x401c88 (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x401c4c loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `jalr` at 0x401c54 calls dmFifoNfilled with a0=[a0+152], a1=sp-32, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x401c5c targets 0x401c74, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The return at 0x401c6c has v0 = -0x1.
  The return at 0x401c80 has v0 = ?.

- `rs_getdstfilled` in `usr/lib32/dmedia/imageconverters/vicers.so` at 0x401c88 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicers.so`.
  Range: 0x401c88-0x401cdc (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x401ca0 loads 4 bytes from a0 (arg0 at entry) +0xc0.
  The `jalr` at 0x401ca8 calls dmFifoNfilled with a0=[a0+192], a1=sp-32, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x401cb0 targets 0x401cc8, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The return at 0x401cc0 has v0 = -0x1.
  The return at 0x401cd4 has v0 = ?.

- `rs_verifysrc` in `usr/lib32/dmedia/imageconverters/vicers.so` at 0x401cdc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicers.so`.
  Range: 0x401cdc-0x401d14 (56 bytes).
  It occupies 56 bytes.
  The `bgezall` at 0x401cfc calls verify [0x401770] with a0=a0 at entry (arg0), a1=0x4043c8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x401d0c has v0 = ret(verify).

- `rs_verifydst` in `usr/lib32/dmedia/imageconverters/vicers.so` at 0x401d14 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicers.so`.
  Range: 0x401d14-0x401d4c (56 bytes).
  It occupies 56 bytes.
  The `bgezall` at 0x401d34 calls verify [0x401770] with a0=a0 at entry (arg0), a1=0x4043cc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x401d44 has v0 = ret(verify).

- `rs_verifycvt` in `usr/lib32/dmedia/imageconverters/vicers.so` at 0x401d4c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicers.so`.
  Range: 0x401d4c-0x401d54 (8 bytes).
  It occupies 8 bytes.
  The return at 0x401d4c has v0 = 0x0.

- `rs_verifysrcdstcvt` in `usr/lib32/dmedia/imageconverters/vicers.so` at 0x401d54 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicers.so`.
  Range: 0x401d54-0x401e04 (176 bytes).
  It occupies 176 bytes.
  The `bgezall` at 0x401d94 calls rs_verifycvt [0x401d4c] with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `bgezall` at 0x401dd0 calls rs_verifysrc [0x401cdc] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x401dec calls rs_verifydst [0x401d14] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `bne` branch at 0x401d78 targets 0x401dc8, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x401d80 targets 0x401de8, is taken when s0(=a1) != 0, and falls through when s0(=a1) == 0.
  The `beq` branch at 0x401d88 targets 0x401dac, is taken when s1(=a2) == 0, and falls through when s1(=a2) != 0.
  The `beq` branch at 0x401d9c targets 0x401db0, is taken when v0(=ret(rs_verifycvt)) == 0, and falls through when v0(=ret(rs_verifycvt)) != 0.
  The `beq` branch at 0x401da4 targets 0x401db0 and is always taken.
  The `beq` branch at 0x401dd8 targets 0x401d80, is taken when v0(=ret(rs_verifysrc)) == 0, and falls through when v0(=ret(rs_verifysrc)) != 0.
  The `beq` branch at 0x401de0 targets 0x401db0 and is always taken.
  The `beq` branch at 0x401df4 targets 0x401d88, is taken when v0(=ret(rs_verifydst)) == 0, and falls through when v0(=ret(rs_verifydst)) != 0.
  The `beq` branch at 0x401dfc targets 0x401db0 and is always taken.
  The return at 0x401dc0 has v0 = one of -0x1, 0x0.

- `rs_defaultsrc` in `usr/lib32/dmedia/imageconverters/vicers.so` at 0x401e04 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicers.so`.
  Range: 0x401e04-0x401e3c (56 bytes).
  It occupies 56 bytes.
  The `bgezall` at 0x401e24 calls get_default [0x4017fc] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x401e34 has v0 = ret(get_default).

- `rs_defaultdst` in `usr/lib32/dmedia/imageconverters/vicers.so` at 0x401e3c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicers.so`.
  Range: 0x401e3c-0x401e74 (56 bytes).
  It occupies 56 bytes.
  The `bgezall` at 0x401e5c calls get_default [0x4017fc] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x401e6c has v0 = ret(get_default).

- `rs_defaultcvt` in `usr/lib32/dmedia/imageconverters/vicers.so` at 0x401e74 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicers.so`.
  Range: 0x401e74-0x401ef8 (132 bytes).
  It occupies 132 bytes.
  The `jalr` at 0x401e9c calls dmParamsSetFloat with a0=a0 at entry (arg0), a1=0x4041b8, a2=0xa418, a3=a3 at entry (arg3); fp f14=0x3feccccccccccccd.
  The `jalr` at 0x401ed8 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x404170, a2=0x1, a3=?.
  The `beq` branch at 0x401ea4 targets 0x401ecc, is taken when v0(=ret(dmParamsSetFloat)) == 0, and falls through when v0(=ret(dmParamsSetFloat)) != 0.
  The `beq` branch at 0x401ee0 targets 0x401ef0, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x401ee8 targets 0x401ec0 and is always taken.
  The `beq` branch at 0x401ef0 targets 0x401ec0 and is always taken.
  The return at 0x401eb8 has v0 = -0x1.
  The return at 0x401ec4 has v0 = one of -0x1, 0x0.

- `_e_go` in `usr/lib32/dmedia/imageconverters/vicers.so` at 0x401ef8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicers.so`.
  Range: 0x401ef8-0x401fb0 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0x401f14 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x401f20 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0x401f40 stores 4 bytes to a0 (arg0 at entry) +0x70.
  The `sw` at 0x401f5c stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `sw` at 0x401f74 stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `lw` at 0x401f8c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0x401f98 stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `jalr` at 0x401f2c calls dmParamsGetInt with a0=[a0+4], a1=0x404018, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401f44 calls dmParamsGetInt with a0=[a0+4], a1=0x404028, a2=?, a3=?.
  The `jalr` at 0x401f60 calls dmParamsGetInt with a0=[a0+8], a1=0x404018, a2=?, a3=?.
  The `jalr` at 0x401f78 calls dmParamsGetInt with a0=[a0+8], a1=0x404028, a2=?, a3=?.
  The `jalr` at 0x401f94 calls vice_event_start with a0=[a0], a1=a0+28, a2=?, a3=?.
  The return at 0x401fa8 has v0 = 0x0.

- `_e_swap_field` in `usr/lib32/dmedia/imageconverters/vicers.so` at 0x401fb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicers.so`.
  Range: 0x401fb0-0x401fe8 (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0x401fb0 loads 4 bytes from a0 (arg0 at entry) +0x90.
  The `lw` at 0x401fbc loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `sw` at 0x401fcc stores 4 bytes to a0 (arg0 at entry) +0x90.
  The `sw` at 0x401fdc stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `beq` branch at 0x401fb8 targets 0x401fe0, is taken when a2(=[a0+144]) == at(=-0x1), and falls through when a2(=[a0+144]) != at(=-0x1).
  The return at 0x401fd8 has v0 = ?.
  The return at 0x401fe0 has v0 = [a0+124].

- `rs_send` in `usr/lib32/dmedia/imageconverters/vicers.so` at 0x401fe8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicers.so`.
  Range: 0x401fe8-0x40224c (612 bytes).
  It occupies 612 bytes.
  The `lw` at 0x401ff4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x401ffc loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0x402084 stores 4 bytes to a0 (arg0 at entry) +0x18.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x4020b0, `lw` at 0x4020c8.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x90, including `sw` at 0x40215c, `sw` at 0x402198, `sw` at 0x402240.
  The `lw` at 0x4021a8 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `bgezall` at 0x402068 calls _e_go [0x401ef8] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0x40207c calls needsConvert [0x401550] with a0=[a0+4], a1=[a0+8], a2=?, a3=?.
  The `bgezall` at 0x402090 calls _e_swap_field [0x401fb0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x4020ac calls vice_dmbuf_send with a0=[a0], a1=a1 at entry (arg1), a2=a0+152, a3=a0+100, a4=0x7.
  The `jalr` at 0x4020c4 calls vice_dms_geterrs with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x4020e0 calls dmSetError with a0=0x1777, a1=0x4043a8, a2=0x4041f0, a3=?.
  The `jalr` at 0x40211c calls dmParamsCopyAllElems with a0=a4 at entry (arg4), a1=[a0+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x402138 calls dmParamsCopyAllElems with a0=a5 at entry (arg5), a1=[a0+8], a2=?, a3=?.
  The `jalr` at 0x402160 calls dmParamsIsPresent with a0=[a0+8], a1=0x4040c8, a2=-0x1, a3=?.
  The `jalr` at 0x402178 calls dmParamsGetEnum with a0=[a0+8], a1=0x4040c8, a2=?, a3=?.
  The `jalr` at 0x4021a4 calls dmParamsCopyAllElems with a0=a6 at entry (arg6), a1=[a0+12], a2=?, a3=?.
  The `jalr` at 0x4021d0 calls dmSetError with a0=0x1777, a1=0x4043a8, a2=0x4041d8, a3=?.
  The `jalr` at 0x4021e8 calls dmParamsGetEnum with a0=[a0+4], a1=0x404038, a2=?, a3=?.
  The `jalr` at 0x40220c calls dmParamsSetEnum with a0=[a0+8], a1=0x404038, a2=?, a3=0x3f0.
  The `jalr` at 0x402224 calls dmParamsSetEnum with a0=[a0+8], a1=0x404050, a2=0x44c, a3=?.
  The `bne` branch at 0x402030 targets 0x402114, is taken when a4 != 0, and falls through when a4 == 0.
  The `bne` branch at 0x402038 targets 0x402134, is taken when s3(=a5) != 0, and falls through when s3(=a5) == 0.
  The `bne` branch at 0x402040 targets 0x4021a0, is taken when s2(=a6) != 0, and falls through when s2(=a6) == 0.
  The `bne` branch at 0x402048 targets 0x402064, is taken when s5(=a4) != 0, and falls through when s5(=a4) == 0.
  The `bne` branch at 0x402050 targets 0x402064, is taken when s3(=a5) != 0, and falls through when s3(=a5) == 0.
  The `beq` branch at 0x402058 targets 0x40208c, is taken when s2(=a6) == 0, and falls through when s2(=a6) != 0.
  The `beq` branch at 0x4020b8 targets 0x4021c4, is taken when v0(=ret(vice_dmbuf_send)) == ra(=-0x1), and falls through when v0(=ret(vice_dmbuf_send)) != ra(=-0x1).
  The `beq` branch at 0x4020cc targets 0x4021bc, is taken when v0(=ret(vice_dms_geterrs)) == 0, and falls through when v0(=ret(vice_dms_geterrs)) != 0.
  The `beq` branch at 0x402124 targets 0x402038, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x40212c targets 0x4020ec and is always taken.
  The `beq` branch at 0x402140 targets 0x4021e0, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x402148 targets 0x4020ec and is always taken.
  The `beq` branch at 0x402168 targets 0x402040, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x402184 targets 0x402244, is taken when v0(=ret(dmParamsGetEnum)) == a0(=0x1), and falls through when v0(=ret(dmParamsGetEnum)) != a0(=0x1).
  The `beq` branch at 0x40218c targets 0x40223c, is taken when v0(=ret(dmParamsGetEnum)) == a2(=0x2), and falls through when v0(=ret(dmParamsGetEnum)) != a2(=0x2).
  The `beq` branch at 0x402194 targets 0x402048, is taken when s2(=a6) == 0, and falls through when s2(=a6) != 0.
  The `beq` branch at 0x4021ac targets 0x402048, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x4021b4 targets 0x4020ec and is always taken.
  The `beq` branch at 0x4021bc targets 0x4020ec and is always taken.
  The `beq` branch at 0x4021d8 targets 0x4020ec and is always taken.
  The `beq` branch at 0x4021f4 targets 0x402200, is taken when v0(=ret(dmParamsGetEnum)) == a3(=0x3f0), and falls through when v0(=ret(dmParamsGetEnum)) != a3(=0x3f0).
  The `beq` branch at 0x40222c targets 0x402150, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x402234 targets 0x4020ec and is always taken.
  The `beq` branch at 0x40223c targets 0x402040 and is always taken.
  The `beq` branch at 0x402244 targets 0x402040 and is always taken.
  The return at 0x40210c has v0 = one of -0x1, 0x0.

- `rs_recv` in `usr/lib32/dmedia/imageconverters/vicers.so` at 0x40224c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicers.so`.
  Range: 0x40224c-0x402358 (268 bytes).
  It occupies 268 bytes.
  The `lw` at 0x40225c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x402288 loads 4 bytes from a0 (arg0 at entry) +0x80.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4022a4, `lw` at 0x4022cc.
  The `lw` at 0x4022b8 loads 4 bytes from a0 (arg0 at entry) +0x8c.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x40230c, `lw` at 0x402320.
  The `jalr` at 0x402284 calls vice_dmbuf_recv with a0=[a0], a1=sp-48, a2=[a0+128], a3=a0+192, a4=a1 at entry (arg1).
  The `jalr` at 0x4022d0 calls printf with a0=0x404218, a1=?, a2=?, a3=0x3e0000, a4=-0x1, a7=[a0+140].
  The `jalr` at 0x4022e8 calls dmSetError with a0=0x1777, a1=0x4043a8, a2=0x404238, a3=?.
  The `jalr` at 0x402308 calls dmBufferSetSize with a0=[a1], a1=?, a2=?, a3=0x3e0000, a4=-0x1, a7=a0 at entry (arg0).
  The `jalr` at 0x40231c calls dmBufferSetImageType with a0=[a1], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x402344 calls dmSetError with a0=0x1777, a1=0x4043a8, a2=0x404200, a3=0x3e0000, a4=-0x1, a7=a0 at entry (arg0).
  The `beq` branch at 0x40229c targets 0x402334, is taken when v0(=ret(vice_dmbuf_recv)) == a4(=-0x1), and falls through when v0(=ret(vice_dmbuf_recv)) != a4(=-0x1).
  The `bltz` branch at 0x4022a8 targets 0x4022b8, is taken when a1(?) < 0 (signed), and falls through when a1(?) >= 0 (signed).
  The `beq` branch at 0x4022b0 targets 0x402304, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x4022bc targets 0x4022dc, is taken when a7(=[a0+140]) == 0, and falls through when a7(=[a0+140]) != 0.
  The `beq` branch at 0x402350 targets 0x4022f8 and is always taken.
  The return at 0x4022fc has v0 = one of -0x1, ?.
  The return at 0x40232c has v0 = ret(dmBufferSetImageType).
