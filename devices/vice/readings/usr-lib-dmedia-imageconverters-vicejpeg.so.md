# Readings: `usr/lib/dmedia/imageconverters/vicejpeg.so`

One entry per routine, filed here from the reading batches by binary.

- `_poolneeds` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x401ad0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x401ad0-0x401b0c (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0x401af0 calls vice_dmbuf_requirements with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x401b04 has v0 = ret(vice_dmbuf_requirements).

- `init_formats` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x401b0c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x401b0c-0x401ba8 (156 bytes).
  It occupies 156 bytes.
  The `sw` at 0x401b84 stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `sw` at 0x401b88 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x401b8c stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `jalr` at 0x401b2c calls dmParamsCreate with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401b4c calls dmParamsCreate with a0=a0+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x401b6c calls dmParamsCreate with a0=a0+8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x401b34 targets 0x401b44, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x401b3c targets 0x401b94 and is always taken.
  The `beq` branch at 0x401b54 targets 0x401b64, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x401b5c targets 0x401b94 and is always taken.
  The `beq` branch at 0x401b74 targets 0x401b84, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x401b7c targets 0x401b94 and is always taken.
  The return at 0x401ba0 has v0 = one of -0x1, 0x0.

- `free_formats` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x401ba8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x401ba8-0x401c34 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0x401bcc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x401bdc loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x401bf4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x401c08 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `jalr` at 0x401bc8 calls dmParamsDestroy with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401be0 calls dmParamsDestroy with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0x401bf8 calls dmParamsDestroy with a0=[a0+8], a1=?, a2=?, a3=?.
  The `jalr` at 0x401c18 calls dmBufferDestroyPool with a0=[a0+12], a1=?, a2=?, a3=?.
  The `beql` branch at 0x401c0c targets 0x401c28, is taken when a0(=[a0+12]) == 0, and falls through when a0(=[a0+12]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0x401c10 runs only when taken and is annulled on fall-through.
  The return at 0x401c2c has v0 = one of ret(dmParamsDestroy), ret(dmBufferDestroyPool).

- `required_params` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x401c34 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x401c34-0x401d1c (232 bytes).
  It occupies 232 bytes.
  The `jalr` at 0x401c60 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x408000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401c7c calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x408018, a2=?, a3=?.
  The `jalr` at 0x401c98 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x408028, a2=?, a3=?.
  The `jalr` at 0x401cb4 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x408038, a2=?, a3=?.
  The `jalr` at 0x401cd0 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x40804c, a2=?, a3=?.
  The `jalr` at 0x401cf0 calls dmSetError with a0=0x1773, a1=0x408064, a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x401c68 targets 0x401ce0, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x401c84 targets 0x401ce0, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x401ca0 targets 0x401ce0, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x401cbc targets 0x401ce0, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `bne` branch at 0x401cd8 targets 0x401d04, is taken when v0(=ret(dmParamsIsPresent)) != 0, and falls through when v0(=ret(dmParamsIsPresent)) == 0.
  The `beq` branch at 0x401cfc targets 0x401d08 and is always taken.
  The return at 0x401d14 has v0 = one of -0x1, 0x0.

- `needsConvert` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x401d1c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x401d1c-0x401f88 (620 bytes).
  It occupies 620 bytes.
  The `jalr` at 0x401d48 calls required_params [0x401c34] with a0=a0 at entry (arg0), a1=0x408070, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401d6c calls __assert with a0=0x408074, a1=0x40809c, a2=0xad, a3=?.
  The `jalr` at 0x401d88 calls required_params [0x401c34] with a0=a1 at entry (arg1), a1=0x4080a8, a2=?, a3=?.
  The `jalr` at 0x401dac calls __assert with a0=0x4080ac, a1=0x4080d4, a2=0xae, a3=?.
  The `jalr` at 0x401dc4 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x4080e0, a2=?, a3=?.
  The `jalr` at 0x401de0 calls dmParamsGetInt with a0=a1 at entry (arg1), a1=0x4080f0, a2=?, a3=?.
  The `jalr` at 0x401e04 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x408100, a2=?, a3=?.
  The `jalr` at 0x401e20 calls dmParamsGetInt with a0=a1 at entry (arg1), a1=0x408110, a2=?, a3=?.
  The `jalr` at 0x401e44 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x408120, a2=?, a3=?.
  The `jalr` at 0x401e60 calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x408138, a2=?, a3=?.
  The `jalr` at 0x401e8c calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x408150, a2=?, a3=?.
  The `jalr` at 0x401ea8 calls dmParamsIsPresent with a0=a1 at entry (arg1), a1=0x408168, a2=?, a3=?.
  The `jalr` at 0x401ec4 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x408180, a2=?, a3=?.
  The `jalr` at 0x401ee0 calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x408198, a2=?, a3=?.
  The `jalr` at 0x401f0c calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x4081b0, a2=?, a3=?.
  The `jalr` at 0x401f28 calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x4081c4, a2=?, a3=?.
  The `beq` branch at 0x401d50 targets 0x401d78, is taken when v0(=ret(required_params)) == 0, and falls through when v0(=ret(required_params)) != 0.
  The `beq` branch at 0x401d90 targets 0x401db8, is taken when v0(=ret(required_params)) == 0, and falls through when v0(=ret(required_params)) != 0.
  The `bne` branch at 0x401df0 targets 0x401e78, is taken when v0(=ret(dmParamsGetInt)) != t6(=ret(dmParamsGetInt)), and falls through when v0(=ret(dmParamsGetInt)) == t6(=ret(dmParamsGetInt)).
  The `bne` branch at 0x401e30 targets 0x401e78, is taken when v0(=ret(dmParamsGetInt)) != t7(=ret(dmParamsGetInt)), and falls through when v0(=ret(dmParamsGetInt)) == t7(=ret(dmParamsGetInt)).
  The `beq` branch at 0x401e70 targets 0x401e80, is taken when v0(=ret(dmParamsGetEnum)) == t8(=ret(dmParamsGetEnum)), and falls through when v0(=ret(dmParamsGetEnum)) != t8(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x401e78 targets 0x401f78 and is always taken.
  The `beq` branch at 0x401e94 targets 0x401f00, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x401eb0 targets 0x401f00, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x401ef0 targets 0x401f00, is taken when v0(=ret(dmParamsGetEnum)) == t9(=ret(dmParamsGetEnum)), and falls through when v0(=ret(dmParamsGetEnum)) != t9(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x401ef8 targets 0x401f78 and is always taken.
  The `bne` branch at 0x401f3c targets 0x401f4c, is taken when v1(=ret(dmParamsGetEnum)) != v0(=ret(dmParamsGetEnum)), and falls through when v1(=ret(dmParamsGetEnum)) == v0(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x401f44 targets 0x401f78 and is always taken.
  The `bne` branch at 0x401f4c targets 0x401f58, is taken when v1(=ret(dmParamsGetEnum)) != a0(=0x3e9), and falls through when v1(=ret(dmParamsGetEnum)) == a0(=0x3e9).
  The `beq` branch at 0x401f54 targets 0x401f6c, is taken when v0(=ret(dmParamsGetEnum)) == at(=0x3ea), and falls through when v0(=ret(dmParamsGetEnum)) != at(=0x3ea).
  The `bnel` branch at 0x401f5c targets 0x401f78, is taken when v1(=ret(dmParamsGetEnum)) != at(=0x3ea), and falls through when v1(=ret(dmParamsGetEnum)) == at(=0x3ea); its branch-likely delay slot `addiu v0,zero,1` at 0x401f60 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0x401f64 targets 0x401f78, is taken when v0(=ret(dmParamsGetEnum)) != a0(=0x3e9), and falls through when v0(=ret(dmParamsGetEnum)) == a0(=0x3e9); its branch-likely delay slot `addiu v0,zero,1` at 0x401f68 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x401f6c targets 0x401f78 and is always taken.
  The return at 0x401f80 has v0 = one of 0x0, 0x1.
  The instructions from 0x401f74 to 0x401f74 are not reached by any path from the entry, and their branches are not listed.

- `verify_size` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x401f88 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x401f88-0x4020f8 (368 bytes).
  It occupies 368 bytes.
  The `jalr` at 0x401fac calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x4081d8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401ff8 calls dmSetError with a0=0x1772, a1=0x4081e8, a2=0x4081f4, a3=?.
  The `jalr` at 0x402018 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x408200, a2=?, a3=?.
  The `jalr` at 0x402070 calls dmSetError with a0=0x1772, a1=0x408210, a2=0x40821c, a3=?.
  The `jalr` at 0x40208c calls dmImageFrameSize with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x4020d4 calls dmSetError with a0=0x1772, a1=0x408234, a2=0x408240, a3=?.
  The `blez` branch at 0x401fb4 targets 0x401fe4, is taken when v0(=ret(dmParamsGetInt)) <= 0 (signed), and falls through when v0(=ret(dmParamsGetInt)) > 0 (signed).
  The `bgez` branch at 0x401fbc targets 0x401fd0, is taken when v0(=ret(dmParamsGetInt)) >= 0 (signed), and falls through when v0(=ret(dmParamsGetInt)) < 0 (signed).
  The `beq` branch at 0x401fc4 targets 0x401fd0, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `bne` branch at 0x401fd0 targets 0x401fe4, is taken when t6(?) != 0, and falls through when t6(?) == 0.
  The `bne` branch at 0x401fdc targets 0x40200c, is taken when v0(=ret(dmParamsGetInt)) < at(=0x8001) (signed), and falls through when v0(=ret(dmParamsGetInt)) >= at(=0x8001) (signed).
  The `beq` branch at 0x402004 targets 0x4020e8 and is always taken.
  The `beq` branch at 0x402024 targets 0x402084, is taken when v0(=ret(dmParamsGetInt)) == at(=0xf3), and falls through when v0(=ret(dmParamsGetInt)) != at(=0xf3).
  The `beq` branch at 0x402030 targets 0x402084, is taken when v0(=ret(dmParamsGetInt)) == at(=0x1e6), and falls through when v0(=ret(dmParamsGetInt)) != at(=0x1e6).
  The `blez` branch at 0x402038 targets 0x40205c, is taken when v0(=ret(dmParamsGetInt)) <= 0 (signed), and falls through when v0(=ret(dmParamsGetInt)) > 0 (signed).
  The `bgez` branch at 0x402040 targets 0x402054, is taken when v0(=ret(dmParamsGetInt)) >= 0 (signed), and falls through when v0(=ret(dmParamsGetInt)) < 0 (signed).
  The `beq` branch at 0x402048 targets 0x402054, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0x402054 targets 0x402084, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0x40207c targets 0x4020e8 and is always taken.
  The `beq` branch at 0x402094 targets 0x4020c0, is taken when v0(=ret(dmImageFrameSize)) == 0, and falls through when v0(=ret(dmImageFrameSize)) != 0.
  The `beq` branch at 0x4020a8 targets 0x4020c0, is taken when v0(=ret(dmImageFrameSize)) >= at(=0x400001) (unsigned), and falls through when v0(=ret(dmImageFrameSize)) < at(=0x400001) (unsigned).
  The `bne` branch at 0x4020b8 targets 0x4020e8, is taken when v0(=ret(dmImageFrameSize)) < at(=0x3e0001) (unsigned), and falls through when v0(=ret(dmImageFrameSize)) >= at(=0x3e0001) (unsigned).
  The `beq` branch at 0x4020e0 targets 0x4020e8 and is always taken.
  The return at 0x4020f0 has v0 = one of -0x1, 0x0.

- `verify_uncompressed` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x4020f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x4020f8-0x4021a4 (172 bytes).
  It occupies 172 bytes.
  The `jalr` at 0x402118 calls required_params [0x401c34] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x402140 calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x408254, a2=?, a3=?.
  The `jalr` at 0x402158 calls strcmp with a0=ret(dmParamsGetString), a1=0x40826c, a2=?, a3=?.
  The `jalr` at 0x40217c calls dmSetError with a0=0x1772, a1=0x408280, a2=0x40828c, a3=?.
  The `bne` branch at 0x402124 targets 0x402134, is taken when v0(=ret(required_params)) != at(=-0x1), and falls through when v0(=ret(required_params)) == at(=-0x1).
  The `beq` branch at 0x40212c targets 0x402194 and is always taken.
  The `beq` branch at 0x402160 targets 0x402190, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x402188 targets 0x402194 and is always taken.
  The return at 0x40219c has v0 = one of -0x1, 0x0.

- `verify_compressed` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x4021a4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x4021a4-0x40233c (408 bytes).
  It occupies 408 bytes.
  The `jalr` at 0x4021c4 calls required_params [0x401c34] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4021ec calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x4082a4, a2=?, a3=?.
  The `jalr` at 0x402204 calls strcmp with a0=ret(dmParamsGetString), a1=0x4082bc, a2=?, a3=?.
  The `jalr` at 0x402220 calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x4082c4, a2=?, a3=?.
  The `jalr` at 0x402238 calls strcmp with a0=ret(dmParamsGetString), a1=0x4082dc, a2=?, a3=?.
  The `jalr` at 0x40225c calls dmSetError with a0=0x1772, a1=0x4082ec, a2=0x4082f8, a3=?.
  The `jalr` at 0x40227c calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x408310, a2=?, a3=?.
  The `jalr` at 0x4022a4 calls dmSetError with a0=0x1772, a1=0x408328, a2=0x408334, a3=?.
  The `jalr` at 0x4022c4 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x40834c, a2=?, a3=?.
  The `jalr` at 0x4022f8 calls verify_size [0x401f88] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x40231c calls dmSetError with a0=0x1772, a1=0x408360, a2=0x40836c, a3=?.
  The `bne` branch at 0x4021d0 targets 0x4021e0, is taken when v0(=ret(required_params)) != at(=-0x1), and falls through when v0(=ret(required_params)) == at(=-0x1).
  The `beq` branch at 0x4021d8 targets 0x40232c and is always taken.
  The `beq` branch at 0x40220c targets 0x402270, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x402240 targets 0x402270, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x402268 targets 0x40232c and is always taken.
  The `beq` branch at 0x402288 targets 0x4022b8, is taken when v0(=ret(dmParamsGetEnum)) == at(=0x44c), and falls through when v0(=ret(dmParamsGetEnum)) != at(=0x44c).
  The `beq` branch at 0x4022b0 targets 0x40232c and is always taken.
  The `beq` branch at 0x4022d0 targets 0x4022ec, is taken when v0(=ret(dmParamsGetEnum)) == at(=0x3ea), and falls through when v0(=ret(dmParamsGetEnum)) != at(=0x3ea).
  The `beq` branch at 0x4022dc targets 0x4022ec, is taken when v0(=ret(dmParamsGetEnum)) == at(=0x3ed), and falls through when v0(=ret(dmParamsGetEnum)) != at(=0x3ed).
  The `bne` branch at 0x4022e4 targets 0x402308, is taken when v0(=ret(dmParamsGetEnum)) != at(=0x3f0), and falls through when v0(=ret(dmParamsGetEnum)) == at(=0x3f0).
  The `beq` branch at 0x402300 targets 0x40232c and is always taken.
  The return at 0x402334 has v0 = one of -0x1, ret(verify_size).

- `get_default_uncompressed` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x40233c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x40233c-0x4023e4 (168 bytes).
  It occupies 168 bytes.
  The `jalr` at 0x402364 calls dmSetImageDefaults with a0=a0 at entry (arg0), a1=0x140, a2=0xf0, a3=0x3f0.
  The `jalr` at 0x40238c calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x408380, a2=0x44c, a3=?.
  The `jalr` at 0x4023b8 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x408398, a2=0x4083b0, a3=?.
  The `beq` branch at 0x40236c targets 0x40237c, is taken when v0(=ret(dmSetImageDefaults)) == 0, and falls through when v0(=ret(dmSetImageDefaults)) != 0.
  The `beq` branch at 0x402374 targets 0x4023d4 and is always taken.
  The `beq` branch at 0x402394 targets 0x4023a4, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x40239c targets 0x4023d4 and is always taken.
  The `beq` branch at 0x4023c0 targets 0x4023d0, is taken when v0(=ret(dmParamsSetString)) == 0, and falls through when v0(=ret(dmParamsSetString)) != 0.
  The `beq` branch at 0x4023c8 targets 0x4023d4 and is always taken.
  The return at 0x4023dc has v0 = one of -0x1, 0x0.

- `get_default_compressed` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x4023e4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x4023e4-0x402598 (436 bytes).
  It occupies 436 bytes.
  The `jalr` at 0x40240c calls dmSetImageDefaults with a0=a0 at entry (arg0), a1=0x140, a2=0xf0, a3=0x3f0.
  The `jalr` at 0x402434 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x4083c4, a2=0x44c, a3=?.
  The `jalr` at 0x402460 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x4083dc, a2=0x4083f4, a3=?.
  The `beq` branch at 0x402414 targets 0x402424, is taken when v0(=ret(dmSetImageDefaults)) == 0, and falls through when v0(=ret(dmSetImageDefaults)) != 0.
  The `beq` branch at 0x40241c targets 0x40247c and is always taken.
  The `beq` branch at 0x40243c targets 0x40244c, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x402444 targets 0x40247c and is always taken.
  The `beq` branch at 0x402468 targets 0x402478, is taken when v0(=ret(dmParamsSetString)) == 0, and falls through when v0(=ret(dmParamsSetString)) != 0.
  The `beq` branch at 0x402470 targets 0x40247c and is always taken.
  The return at 0x402484 has v0 = one of -0x1, 0x0.
  The instructions from 0x40248c to 0x402594 are not reached by any path from the entry, and their branches are not listed.

- `dmICInitDso` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x40248c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x40248c-0x402598 (268 bytes).
  It occupies 268 bytes.
  8 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4024b4, `lw` at 0x4024c4, `lw` at 0x4024cc.
  8 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4024c0, `sw` at 0x4024c8, `sw` at 0x4024d4.
  The `jalr` at 0x4024f0 calls dmICRegisterConverter with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40254c calls dmICRegisterConverter with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x402570 calls dmSetError with a0=0x1774, a1=0x4083fc, a2=0x408408, a3=?.
  The `bne` branch at 0x4024d0 targets 0x4024b4, is taken when t6(?) != t0(=0x40d108), and falls through when t6(?) == t0(=0x40d108).
  The `bltz` branch at 0x4024f8 targets 0x40255c, is taken when v0(=ret(dmICRegisterConverter)) < 0 (signed), and falls through when v0(=ret(dmICRegisterConverter)) >= 0 (signed).
  The `bne` branch at 0x40252c targets 0x402510, is taken when t1(?) != t5(=0x40d154), and falls through when t1(?) == t5(=0x40d154).
  The `bgez` branch at 0x402554 targets 0x402584, is taken when v0(=ret(dmICRegisterConverter)) >= 0 (signed), and falls through when v0(=ret(dmICRegisterConverter)) < 0 (signed).
  The `beq` branch at 0x40257c targets 0x402588 and is always taken.
  The return at 0x402590 has v0 = one of -0x1, 0x0.

- `e_open` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x402598 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x402598-0x4028f8 (864 bytes).
  It occupies 864 bytes.
  The `sw` at 0x402654 stores 4 bytes to ret(calloc) +0x11c.
  The `sw` at 0x4026bc stores 4 bytes to ret(calloc) +0x0.
  The `sw` at 0x402754 stores 4 bytes to ret(calloc) +0x108.
  The `lw` at 0x4027d8 loads 4 bytes from ret(calloc) +0x108.
  The `lw` at 0x402838 loads 4 bytes from ret(calloc) +0x0.
  The `sw` at 0x402860 stores 4 bytes to ret(calloc) +0xa0.
  The `sw` at 0x4028c0 stores 4 bytes to ret(calloc) +0xb4.
  The `sw` at 0x4028e0 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x4025bc calls vice_get_lib_rev with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4025ec calls dmSetError with a0=0x1774, a1=0x408428, a2=0x408434, a3=0x6b7a.
  The `jalr` at 0x40260c calls calloc with a0=0x1, a1=0x120, a2=?, a3=?.
  The `jalr` at 0x402634 calls dmSetError with a0=0x1774, a1=0x408450, a2=0x40845c, a3=?.
  The `jalr` at 0x40265c calls init_formats [0x401b0c] with a0=ret(calloc)+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x402680 calls dmSetError with a0=0x1774, a1=0x40846c, a2=0x408478, a3=?.
  The `jalr` at 0x402694 calls free with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x4026b0 calls vice_open_and_setetc with a0=0x4084a4, a1=?, a2=?, a3=?.
  The `jalr` at 0x4026dc calls dmSetError with a0=0x1774, a1=0x4084b4, a2=0x4084c0, a3=?.
  The `jalr` at 0x4026f4 calls free_formats [0x401ba8] with a0=ret(calloc)+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x402708 calls free with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x402728 calls vice_alloc with a0=ret(vice_open_and_setetc), a1=0x1, a2=?, a3=?.
  The `jalr` at 0x402748 calls vice_mmap with a0=ret(vice_open_and_setetc), a1=ret(vice_alloc), a2=0x1, a3=?.
  The `jalr` at 0x402770 calls vice_settlb with a0=ret(vice_open_and_setetc), a1=0x7e, a2=ret(vice_alloc), a3=0x1.
  The `jalr` at 0x402794 calls dmSetError with a0=0x1774, a1=0x4084dc, a2=0x4084e8, a3=?.
  The `jalr` at 0x4027ac calls e_cleanup [0x4028f8] with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x4027c8 calls vice_file with a0=0x408508, a1=?, a2=?, a3=?.
  The `jalr` at 0x4027e4 calls __vu_readfile with a0=ret(vice_file), a1=[ret(calloc)+264], a2=0x1e00, a3=?.
  The `jalr` at 0x40280c calls dmSetError with a0=0x1774, a1=0x408518, a2=0x408524, a3=?.
  The `jalr` at 0x402824 calls e_cleanup [0x4028f8] with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x402850 calls vice_event_init with a0=[ret(calloc)], a1=ret(calloc)+184, a2=ret(calloc)+224, a3=0x40.
  The `jalr` at 0x402878 calls dmSetError with a0=0x1774, a1=0x408540, a2=0x40854c, a3=?.
  The `jalr` at 0x402890 calls e_cleanup [0x4028f8] with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x4028ac calls getenv with a0=0x408564, a1=?, a2=?, a3=?.
  The `jalr` at 0x4028cc calls printf with a0=0x408570, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4025cc targets 0x402600, is taken when t6(?) == at(=0x6b7a), and falls through when t6(?) != at(=0x6b7a).
  The `beq` branch at 0x4025f8 targets 0x4028e4 and is always taken.
  The `bne` branch at 0x402618 targets 0x402648, is taken when v0(=ret(calloc)) != 0, and falls through when v0(=ret(calloc)) == 0.
  The `beq` branch at 0x402640 targets 0x4028e4 and is always taken.
  The `beq` branch at 0x402664 targets 0x4026a8, is taken when v0(=ret(init_formats)) == 0, and falls through when v0(=ret(init_formats)) != 0.
  The `beq` branch at 0x4026a0 targets 0x4028e4 and is always taken.
  The `bgez` branch at 0x4026c0 targets 0x40271c, is taken when v0(=ret(vice_open_and_setetc)) >= 0 (signed), and falls through when v0(=ret(vice_open_and_setetc)) < 0 (signed).
  The `beq` branch at 0x402714 targets 0x4028e4 and is always taken.
  The `beq` branch at 0x402778 targets 0x4027c0, is taken when v0(=ret(vice_settlb)) == 0, and falls through when v0(=ret(vice_settlb)) != 0.
  The `beq` branch at 0x4027b8 targets 0x4028e4 and is always taken.
  The `beq` branch at 0x4027f0 targets 0x402838, is taken when v0(=ret(__vu_readfile)) == at(=0x1e00), and falls through when v0(=ret(__vu_readfile)) != at(=0x1e00).
  The `beq` branch at 0x402830 targets 0x4028e4 and is always taken.
  The `bgez` branch at 0x40285c targets 0x4028a4, is taken when v0(=ret(vice_event_init)) >= 0 (signed), and falls through when v0(=ret(vice_event_init)) < 0 (signed).
  The `beq` branch at 0x40289c targets 0x4028e4 and is always taken.
  The `beq` branch at 0x4028bc targets 0x4028d8, is taken when 0 >= v0(=ret(getenv)) (unsigned), and falls through when 0 < v0(=ret(getenv)) (unsigned).
  The return at 0x4028f0 has v0 = one of -0x1, 0x0.

- `e_cleanup` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x4028f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x4028f8-0x402998 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0x40291c loads 4 bytes from a0 (arg0 at entry) +0x108.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x40292c, `lw` at 0x402948.
  The `jalr` at 0x402920 calls munmap with a0=[a0+264], a1=0x10000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40293c calls vice_event_uninit with a0=[a0], a1=a0+184, a2=a0+224, a3=?.
  The `jalr` at 0x402950 calls vice_close with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x402968 calls free_formats [0x401ba8] with a0=a0+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x40297c calls free with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0x402990 has v0 = ret(free).

- `e_close` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x402998 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x402998-0x402a04 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x4029b0 loads 4 bytes from a0 (arg0 at entry) +0xb4.
  The `jalr` at 0x4029cc calls printf with a0=0x40858c, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4029e8 calls e_cleanup [0x4028f8] with a0=a0 at entry (arg0), a1=a0 at entry (arg0), a2=?, a3=?.
  The `beq` branch at 0x4029b8 targets 0x4029dc, is taken when t6(=[a0+180]) == 0, and falls through when t6(=[a0+180]) != 0.
  The return at 0x4029fc has v0 = ret(e_cleanup).

- `e_describe` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x402a04 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x402a04-0x402ae4 (224 bytes).
  It occupies 224 bytes.
  The `jalr` at 0x402a34 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x4085a8, a2=0x6a706567, a3=a3 at entry (arg3).
  The `jalr` at 0x402a54 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x4085b4, a2=0x4085c4, a3=?.
  The `jalr` at 0x402a70 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x4085cc, a2=0x1, a3=?.
  The `jalr` at 0x402a8c calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x4085d8, a2=0x1, a3=?.
  The `jalr` at 0x402aa8 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x4085f0, a2=0x0, a3=?.
  The `jalr` at 0x402ac4 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x408600, a2=0x1, a3=?.
  The return at 0x402adc has v0 = 0x0.

- `e_dstpoolis` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x402ae4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x402ae4-0x402b88 (164 bytes).
  It occupies 164 bytes.
  The `sw` at 0x402afc stores 4 bytes to a0 (arg0 at entry) +0x98.
  The `sw` at 0x402b34 stores 4 bytes to a0 (arg0 at entry) +0x9c.
  The `lw` at 0x402b68 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x402b10 calls dmBufferGetAllocSize with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0x402b50 calls dmSetError with a0=0x1772, a1=0x408610, a2=0x40861c, a3=0x3e0000.
  The `jalr` at 0x402b6c calls vice_dmbuf_outpool with a0=[a0], a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=?.
  The `bne` branch at 0x402b30 targets 0x402b64, is taken when v0(=ret(dmBufferGetAllocSize)) < at(=0x3e0001) (signed), and falls through when v0(=ret(dmBufferGetAllocSize)) >= at(=0x3e0001) (signed).
  The `beq` branch at 0x402b5c targets 0x402b78 and is always taken.
  The return at 0x402b80 has v0 = one of -0x1, ret(vice_dmbuf_outpool).

- `e_fd` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x402b88 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x402b88-0x402b90 (8 bytes).
  It occupies 8 bytes.
  The `lw` at 0x402b8c loads 4 bytes from a0 (arg0 at entry) +0xa0.
  The return at 0x402b88 has v0 = [a0+160].

- `e_getsrcfilled` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x402b90 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x402b90-0x402bdc (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x402bac loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `jalr` at 0x402bb0 calls dmFifoNfilled with a0=[a0+184], a1=sp-8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x402bb8 targets 0x402bc8, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The `beq` branch at 0x402bc0 targets 0x402bcc and is always taken.
  The return at 0x402bd4 has v0 = one of -0x1, ?.

- `e_getdstfilled` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x402bdc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x402bdc-0x402c28 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x402bf8 loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `jalr` at 0x402bfc calls dmFifoNfilled with a0=[a0+224], a1=sp-8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x402c04 targets 0x402c14, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The `beq` branch at 0x402c0c targets 0x402c18 and is always taken.
  The return at 0x402c20 has v0 = one of -0x1, ?.

- `e_verifysrc` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x402c28 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x402c28-0x402c94 (108 bytes).
  It occupies 108 bytes.
  The `jalr` at 0x402c50 calls verify_uncompressed [0x4020f8] with a0=a0 at entry (arg0), a1=0x408634, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x402c78 calls verify_size [0x401f88] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0x402c5c targets 0x402c6c, is taken when v0(=ret(verify_uncompressed)) != at(=-0x1), and falls through when v0(=ret(verify_uncompressed)) == at(=-0x1).
  The `beq` branch at 0x402c64 targets 0x402c84 and is always taken.
  The return at 0x402c8c has v0 = one of -0x1, ret(verify_size).

- `e_verifydst` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x402c94 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x402c94-0x402cd4 (64 bytes).
  It occupies 64 bytes.
  The `jalr` at 0x402cb8 calls verify_compressed [0x4021a4] with a0=a0 at entry (arg0), a1=0x408638, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x402ccc has v0 = ret(verify_compressed).

- `e_verifycvt` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x402cd4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x402cd4-0x402df4 (288 bytes).
  It occupies 288 bytes.
  The `jalr` at 0x402cf8 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x40863c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x402d14 calls dmParamsGetFloat with a0=a0 at entry (arg0), a1=0x408658, a2=?, a3=?.
  The `jalr` at 0x402d6c calls dmSetError with a0=0x1772, a1=0x408674, a2=0x408680, a3=?.
  The `jalr` at 0x402d8c calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x408688, a2=?, a3=?.
  The `jalr` at 0x402da8 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x40869c, a2=?, a3=?.
  The `jalr` at 0x402dcc calls dmSetError with a0=0x1772, a1=0x4086b0, a2=0x4086bc, a3=?.
  The `beq` branch at 0x402d00 targets 0x402d80, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `bc1t` branch at 0x402d34 targets 0x402d58, is taken when f0(=ret(dmParamsGetFloat)) < f4 (c.lt.d at 0x402d2c), and falls through when not (f0(=ret(dmParamsGetFloat)) < f4 (c.lt.d at 0x402d2c)).
  The `bc1f` branch at 0x402d50 targets 0x402d80, is taken when not (f6 < f0 (c.lt.d at 0x402d48)), and falls through when f6 < f0 (c.lt.d at 0x402d48).
  The `beq` branch at 0x402d78 targets 0x402de4 and is always taken.
  The `beq` branch at 0x402d94 targets 0x402de0, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `bgez` branch at 0x402db0 targets 0x402de0, is taken when v0(=ret(dmParamsGetInt)) >= 0 (signed), and falls through when v0(=ret(dmParamsGetInt)) < 0 (signed).
  The `beq` branch at 0x402dd8 targets 0x402de4 and is always taken.
  The return at 0x402dec has v0 = one of -0x1, 0x0.

- `e_verifysrcdstcvt` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x402df4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x402df4-0x402f74 (384 bytes).
  It occupies 384 bytes.
  The `jalr` at 0x402e20 calls e_verifysrc [0x402c28] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x402e50 calls e_verifydst [0x402c94] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x402e80 calls e_verifycvt [0x402cd4] with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `jalr` at 0x402ea4 calls dmParamsIsPresent with a0=a2 at entry (arg2), a1=0x4086c4, a2=?, a3=?.
  The `jalr` at 0x402ec0 calls dmParamsGetInt with a0=a2 at entry (arg2), a1=0x4086d8, a2=?, a3=?.
  The `jalr` at 0x402ee4 calls dmParamsIsPresent with a0=a1 at entry (arg1), a1=0x4086ec, a2=?, a3=?.
  The `jalr` at 0x402f08 calls dmSetError with a0=0x1773, a1=0x4086fc, a2=0x408708, a3=?.
  The `jalr` at 0x402f28 calls dmParamsIsPresent with a0=a1 at entry (arg1), a1=0x408738, a2=?, a3=?.
  The `jalr` at 0x402f4c calls dmSetError with a0=0x1773, a1=0x408750, a2=0x40875c, a3=?.
  The `beq` branch at 0x402e10 targets 0x402e38, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x402e28 targets 0x402e38, is taken when v0(=ret(e_verifysrc)) == 0, and falls through when v0(=ret(e_verifysrc)) != 0.
  The `beq` branch at 0x402e30 targets 0x402f64 and is always taken.
  The `beql` branch at 0x402e3c targets 0x402e6c, is taken when t6(=a1) == 0, and falls through when t6(=a1) != 0; its branch-likely delay slot `lw t7,40(sp)` at 0x402e40 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x402e58 targets 0x402e68, is taken when v0(=ret(e_verifydst)) == 0, and falls through when v0(=ret(e_verifydst)) != 0.
  The `beq` branch at 0x402e60 targets 0x402f64 and is always taken.
  The `beq` branch at 0x402e6c targets 0x402e98, is taken when t7(=a2) == 0, and falls through when t7(=a2) != 0.
  The `beq` branch at 0x402e88 targets 0x402e98, is taken when v0(=ret(e_verifycvt)) == 0, and falls through when v0(=ret(e_verifycvt)) != 0.
  The `beq` branch at 0x402e90 targets 0x402f64 and is always taken.
  The `beq` branch at 0x402eac targets 0x402f60, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `bne` branch at 0x402ec8 targets 0x402ed8, is taken when v0(=ret(dmParamsGetInt)) != 0, and falls through when v0(=ret(dmParamsGetInt)) == 0.
  The `beq` branch at 0x402ed0 targets 0x402f64 and is always taken.
  The `bne` branch at 0x402eec targets 0x402f1c, is taken when v0(=ret(dmParamsIsPresent)) != 0, and falls through when v0(=ret(dmParamsIsPresent)) == 0.
  The `beq` branch at 0x402f14 targets 0x402f64 and is always taken.
  The `bne` branch at 0x402f30 targets 0x402f60, is taken when v0(=ret(dmParamsIsPresent)) != 0, and falls through when v0(=ret(dmParamsIsPresent)) == 0.
  The `beq` branch at 0x402f58 targets 0x402f64 and is always taken.
  The return at 0x402f6c has v0 = one of -0x1, 0x0.

- `e_defaultsrc` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x402f74 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x402f74-0x402fac (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0x402f90 calls get_default_uncompressed [0x40233c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x402fa4 has v0 = ret(get_default_uncompressed).

- `e_defaultdst` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x402fac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x402fac-0x402fe4 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0x402fc8 calls get_default_compressed [0x4023e4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x402fdc has v0 = ret(get_default_compressed).

- `e_defaultcvt` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x402fe4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x402fe4-0x403090 (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0x40300c loads 4 bytes from abs 0x409038.
  The `lw` at 0x403010 loads 4 bytes from abs 0x40903c.
  The `jalr` at 0x403014 calls dmParamsSetFloat with a0=a0 at entry (arg0), a1=0x408794, a2=0x3feccccc, a3=0xffffffffcccccccd.
  The `jalr` at 0x40303c calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x4087b0, a2=0x1, a3=?.
  The `jalr` at 0x403064 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x4087bc, a2=0x0, a3=?.
  The `beq` branch at 0x40301c targets 0x40302c, is taken when v0(=ret(dmParamsSetFloat)) == 0, and falls through when v0(=ret(dmParamsSetFloat)) != 0.
  The `beq` branch at 0x403024 targets 0x403080 and is always taken.
  The `beq` branch at 0x403044 targets 0x403054, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x40304c targets 0x403080 and is always taken.
  The `beq` branch at 0x40306c targets 0x40307c, is taken when v0(=ret(dmParamsSetInt)) == 0, and falls through when v0(=ret(dmParamsSetInt)) != 0.
  The `beq` branch at 0x403074 targets 0x403080 and is always taken.
  The return at 0x403088 has v0 = one of -0x1, 0x0.

- `_e_go` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x403090 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x403090-0x40364c (1468 bytes).
  It occupies 1468 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x4030ac, `lw` at 0x4035f4.
  The `lw` at 0x4030bc loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x4030cc loads 4 bytes from a0 (arg0 at entry) +0xc.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x10c, including `sw` at 0x4031dc, `sw` at 0x403234.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x403218, `lbu` at 0x40324c.
  The `sw` at 0x40326c stores 4 bytes to a0 (arg0 at entry) +0xa4.
  The `sw` at 0x403288 stores 4 bytes to a0 (arg0 at entry) +0xa8.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x60, including `sw` at 0x4032c8, `sw` at 0x4032e8, `sw` at 0x4032ec.
  The `lw` at 0x4034d4 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x4034e0 loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lw` at 0x4034ec loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `sw` at 0x403528 stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `sw` at 0x40352c stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0x403530 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  The `lw` at 0x403534 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `lw` at 0x403538 loads 4 bytes from a0 (arg0 at entry) +0xa4.
  The `lw` at 0x403560 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `sw` at 0x403568 stores 4 bytes to a0 (arg0 at entry) +0xac.
  The `sw` at 0x403574 stores 4 bytes to a0 (arg0 at entry) +0x84.
  The `sw` at 0x40357c stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `sw` at 0x403580 stores 4 bytes to a0 (arg0 at entry) +0x80.
  The `sw` at 0x40358c stores 4 bytes to a0 (arg0 at entry) +0x88.
  The `sw` at 0x4035a0 stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `sw` at 0x4035b4 stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `sw` at 0x4035c0 stores 4 bytes to a0 (arg0 at entry) +0x8c.
  The `sw` at 0x4035c4 stores 4 bytes to a0 (arg0 at entry) +0x90.
  The `sw` at 0x4035cc stores 4 bytes to a0 (arg0 at entry) +0x118.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x94, including `sw` at 0x4035d4, `sw` at 0x4035ec.
  The `jalr` at 0x4030e0 calls dmParamsIsPresent with a0=[a0+12], a1=0x4087d0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403100 calls dmParamsGetFloat with a0=[a0+12], a1=0x4087ec, a2=?, a3=?.
  The `jalr` at 0x403120 calls dmParamsIsPresent with a0=[a0+12], a1=0x408808, a2=?, a3=?.
  The `jalr` at 0x403144 calls dmParamsGetInt with a0=[a0+12], a1=0x40881c, a2=?, a3=?.
  The `jalr` at 0x403168 calls dmParamsIsPresent with a0=[a0+8], a1=0x408830, a2=?, a3=?.
  The `jalr` at 0x40318c calls dmParamsIsPresent with a0=[a0+8], a1=0x408840, a2=?, a3=?.
  The `jalr` at 0x4031b4 calls dmSetError with a0=0x1773, a1=0x408858, a2=0x408864, a3=?.
  The `jalr` at 0x403260 calls dmParamsGetInt with a0=[a0+8], a1=0x4088b4, a2=?, a3=?.
  The `jalr` at 0x40327c calls dmParamsGetInt with a0=[a0+8], a1=0x4088c4, a2=?, a3=?.
  The `jalr` at 0x403298 calls dmParamsGetEnum with a0=[a0+8], a1=0x4088d4, a2=?, a3=?.
  The `jalr` at 0x4032b4 calls dmParamsIsPresent with a0=[a0+12], a1=0x4088e8, a2=?, a3=?.
  The `jalr` at 0x40338c calls __assert with a0=0x4088fc, a1=0x408908, a2=0x2c9, a3=?.
  The `jalr` at 0x4033ac calls dmSetError with a0=0x1777, a1=0x408914, a2=0x408920, a3=?.
  The `jalr` at 0x4033d0 calls vice_file with a0=0x408930, a1=?, a2=?, a3=?.
  The `jalr` at 0x4033f0 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=0x0.
  The `jalr` at 0x403404 calls vice_file with a0=0x408940, a1=?, a2=?, a3=?.
  The `jalr` at 0x403420 calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=?.
  The `jalr` at 0x40343c calls vice_file with a0=0x408950, a1=?, a2=?, a3=?.
  The `jalr` at 0x40345c calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=0x0.
  The `jalr` at 0x403470 calls vice_file with a0=0x40895c, a1=?, a2=?, a3=?.
  The `jalr` at 0x40348c calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=?.
  The `jalr` at 0x4034a8 calls vice_file with a0=0x408968, a1=?, a2=a0+32, a3=?.
  The `jalr` at 0x4034c4 calls vice_load_bsp_table with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=?.
  The `jalr` at 0x403514 calls dmSetError with a0=0x1777, a1=0x408974, a2=0x408980, a3=?.
  The `jalr` at 0x4035fc calls vice_event_start with a0=[a0], a1=a0+32, a2=a0+32, a3=?.
  The `jalr` at 0x403620 calls dmSetError with a0=0x1777, a1=0x40899c, a2=0x4089a8, a3=?.
  The `beq` branch at 0x4030ec targets 0x403110, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x40312c targets 0x403224, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `blez` branch at 0x403150 targets 0x403224, is taken when v0(=ret(dmParamsGetInt)) <= 0 (signed), and falls through when v0(=ret(dmParamsGetInt)) > 0 (signed).
  The `beq` branch at 0x403174 targets 0x4031a0, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `bne` branch at 0x403198 targets 0x4031c8, is taken when v0(=ret(dmParamsIsPresent)) != 0, and falls through when v0(=ret(dmParamsIsPresent)) == 0.
  The `beq` branch at 0x4031c0 targets 0x403638 and is always taken.
  The `bc1fl` branch at 0x4031e4 targets 0x4031fc, is taken when not (f2 == f4 (c.eq.d at 0x4031d8)), and falls through when f2 == f4 (c.eq.d at 0x4031d8); its branch-likely delay slot `lui at,0x4059` at 0x4031e8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x40321c targets 0x403254 and is always taken.
  The `beq` branch at 0x4032c0 targets 0x4032d4, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x4032cc targets 0x4032f0 and is always taken.
  The `bne` branch at 0x4032d8 targets 0x4032ec, is taken when v1(=ret(dmParamsGetEnum)) != v0(=0x3ed), and falls through when v1(=ret(dmParamsGetEnum)) == v0(=0x3ed).
  The `beq` branch at 0x4032e4 targets 0x4032f0 and is always taken.
  The `beq` branch at 0x4032f4 targets 0x403358, is taken when v1(=ret(dmParamsGetEnum)) == at(=0x3e9), and falls through when v1(=ret(dmParamsGetEnum)) != at(=0x3e9).
  The `beql` branch at 0x403300 targets 0x40335c, is taken when v1(=ret(dmParamsGetEnum)) == at(=0x3ea), and falls through when v1(=ret(dmParamsGetEnum)) != at(=0x3ea); its branch-likely delay slot `addiu t5,zero,4` at 0x403304 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x403308 targets 0x40333c, is taken when v1(=ret(dmParamsGetEnum)) == v0(=0x3ed), and falls through when v1(=ret(dmParamsGetEnum)) != v0(=0x3ed).
  The `beq` branch at 0x403314 targets 0x403348, is taken when v1(=ret(dmParamsGetEnum)) == at(=0x3f0), and falls through when v1(=ret(dmParamsGetEnum)) != at(=0x3f0).
  The `beq` branch at 0x403320 targets 0x403368, is taken when v1(=ret(dmParamsGetEnum)) == at(=0x7d1), and falls through when v1(=ret(dmParamsGetEnum)) != at(=0x7d1).
  The `beql` branch at 0x40332c targets 0x40336c, is taken when v1(=ret(dmParamsGetEnum)) == at(=0x7d2), and falls through when v1(=ret(dmParamsGetEnum)) != at(=0x7d2); its branch-likely delay slot `addiu t7,zero,4` at 0x403330 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x403334 targets 0x403378 and is always taken.
  The `beq` branch at 0x403340 targets 0x4033c0 and is always taken.
  The `beq` branch at 0x403350 targets 0x4033c0 and is always taken.
  The `beq` branch at 0x403360 targets 0x4033c0 and is always taken.
  The `beq` branch at 0x403370 targets 0x4033c0 and is always taken.
  The `beq` branch at 0x4033b8 targets 0x403638 and is always taken.
  The `bne` branch at 0x4033c0 targets 0x403434, is taken when v1(=ret(dmParamsGetEnum)) != v0(=0x3ed), and falls through when v1(=ret(dmParamsGetEnum)) == v0(=0x3ed).
  The `beq` branch at 0x40342c targets 0x40349c and is always taken.
  The `beq` branch at 0x4034d8 targets 0x403500, is taken when t8(=[a0+68]) == 0, and falls through when t8(=[a0+68]) != 0.
  The `beq` branch at 0x4034e4 targets 0x403500, is taken when t9(=[a0+80]) == 0, and falls through when t9(=[a0+80]) != 0.
  The `bne` branch at 0x4034f8 targets 0x403528, is taken when t0(=[a0+84]) != 0, and falls through when t0(=[a0+84]) == 0.
  The `beq` branch at 0x403520 targets 0x403638 and is always taken.
  The `bgez` branch at 0x403590 targets 0x4035a0, is taken when v0(=[a0+164]) >= 0 (signed), and falls through when v0(=[a0+164]) < 0 (signed).
  The `bgez` branch at 0x4035a4 targets 0x4035b4, is taken when t2(=[a0+168]+7) >= 0 (signed), and falls through when t2(=[a0+168]+7) < 0 (signed).
  The `bne` branch at 0x4035c8 targets 0x4035d8, is taken when v1(=[a0+168]) != at(=0xf3), and falls through when v1(=[a0+168]) == at(=0xf3).
  The `beq` branch at 0x4035d0 targets 0x4035f0 and is always taken.
  The `bne` branch at 0x4035dc targets 0x4035ec, is taken when v1(=[a0+168]) != at(=0x1e6), and falls through when v1(=[a0+168]) == at(=0x1e6).
  The `beq` branch at 0x4035e4 targets 0x4035ec and is always taken.
  The `beq` branch at 0x403604 targets 0x403634, is taken when v0(=ret(vice_event_start)) == 0, and falls through when v0(=ret(vice_event_start)) != 0.
  The `beq` branch at 0x40362c targets 0x403638 and is always taken.
  The return at 0x403644 has v0 = one of -0x1, 0x0.

- `dmImageCompressedSize` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x40364c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x40364c-0x4037a8 (348 bytes).
  It occupies 348 bytes.
  The `jalr` at 0x403678 calls dmParamsIsPresent with a0=a1 at entry (arg1), a1=0x4089cc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403694 calls dmParamsGetInt with a0=a1 at entry (arg1), a1=0x4089e0, a2=?, a3=?.
  The `jalr` at 0x4036cc calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x4089f4, a2=?, a3=?.
  The `jalr` at 0x4036e8 calls dmParamsGetFloat with a0=a0 at entry (arg0), a1=0x408a04, a2=?, a3=?.
  The `jalr` at 0x403714 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x408a14, a2=?, a3=?.
  The `jalr` at 0x403738 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x408a2c, a2=?, a3=?.
  The `beq` branch at 0x403680 targets 0x4036b8, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x4036b0 targets 0x4036c0 and is always taken.
  The `beq` branch at 0x4036b8 targets 0x403798 and is always taken.
  The `beq` branch at 0x4036d4 targets 0x4036fc, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x4036f4 targets 0x403704 and is always taken.
  The `beq` branch at 0x4036fc targets 0x403798 and is always taken.
  The `beq` branch at 0x403720 targets 0x40375c, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x403744 targets 0x403764, is taken when v0(=ret(dmParamsGetEnum)) == 0, and falls through when v0(=ret(dmParamsGetEnum)) != 0.
  The `beq` branch at 0x403754 targets 0x403764 and is always taken.
  The `beq` branch at 0x40375c targets 0x403798 and is always taken.
  The return at 0x4037a0 has v0 = one of 0x0, ?.

- `e_send` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x4037a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x4037a8-0x403ec0 (1816 bytes).
  It occupies 1816 bytes.
  The `lw` at 0x4037d8 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x4037e8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x4038d8, `lw` at 0x40395c.
  The `sw` at 0x403970 stores 4 bytes to a0 (arg0 at entry) +0x110.
  The `sw` at 0x403990 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `lw` at 0x4039a4 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `lw` at 0x4039b4 loads 4 bytes from a0 (arg0 at entry) +0x18.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10c, including `lw` at 0x4039e8, `lw` at 0x403c5c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x403a00, `lw` at 0x403b10.
  The `lw` at 0x403a10 loads 4 bytes from a0 (arg0 at entry) +0x14.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14, including `sw` at 0x403ae0, `sw` at 0x403b1c.
  The `lw` at 0x403af8 loads 4 bytes from a0 (arg0 at entry) +0x11c.
  The `sw` at 0x403b0c stores 4 bytes to a0 (arg0 at entry) +0x1c.
  The `lw` at 0x403c70 loads 4 bytes from a0 (arg0 at entry) +0x114.
  The `lw` at 0x403c74 loads 4 bytes from a0 (arg0 at entry) +0x110.
  The `lw` at 0x403c94 loads 4 bytes from a0 (arg0 at entry) +0x118.
  5 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x90, including `sw` at 0x403cdc, `sw` at 0x403cec, `sw` at 0x403d28.
  The `sw` at 0x403d40 stores 4 bytes to a0 (arg0 at entry) +0x118.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x403d48, `lw` at 0x403d94.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1c, including `lw` at 0x403df4, `lw` at 0x403e44.
  The `lw` at 0x403e18 loads 4 bytes from ?.
  The `sw` at 0x403e40 stores 4 bytes to ?.
  The `jalr` at 0x403804 calls dmParamsCopyAllElems with a0=?, a1=[a0+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403834 calls dmParamsCopyAllElems with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x403858 calls dmParamsGetEnum with a0=?, a1=0x408a44, a2=?, a3=?.
  The `jalr` at 0x40388c calls dmParamsSetEnum with a0=?, a1=0x408a58, a2=?, a3=?.
  The `jalr` at 0x4038a8 calls dmParamsSetEnum with a0=?, a1=0x408a6c, a2=0x44c, a3=?.
  The `jalr` at 0x4038dc calls dmParamsCopyAllElems with a0=?, a1=[a0+12], a2=?, a3=?.
  The `jalr` at 0x40392c calls _e_go [0x403090] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x403964 calls dmImageCompressedSize [0x40364c] with a0=?, a1=[a0+12], a2=?, a3=?.
  The `jalr` at 0x403984 calls needsConvert [0x401d1c] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40399c calls dmBufferGetSize with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x4039cc calls dmSetError with a0=0x1777, a1=0x408a84, a2=0x408a90, a3=?.
  The `jalr` at 0x4039f4 calls dmImageFrameSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x403a2c calls dmBufferDestroyPool with a0=[a0+16], a1=?, a2=?, a3=?.
  The `jalr` at 0x403a40 calls dmParamsCreate with a0=sp-172, a1=?, a2=?, a3=?.
  The `jalr` at 0x403a70 calls dmBufferSetPoolDefaults with a0=?, a1=0x1, a2=?, a3=0x0.
  The `jalr` at 0x403a98 calls _poolneeds [0x401ad0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x403ab0 calls dmBufferCreatePool with a0=?, a1=a0+16, a2=?, a3=?.
  The `jalr` at 0x403ad4 calls dmParamsGetInt with a0=?, a1=0x408aa0, a2=?, a3=?.
  The `jalr` at 0x403aec calls dmParamsDestroy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x403b00 calls dmICGetDstQueueFD with a0=[a0+284], a1=?, a2=?, a3=?.
  The `jalr` at 0x403b24 calls dmBufferAllocate with a0=[a0+16], a1=sp-12, a2=?, a3=?.
  The `jalr` at 0x403b44 calls dmBufferMapData with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x403b5c calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x403b7c calls dmICAnyToAny with a0=?, a1=ret(dmBufferMapData), a2=?, a3=?.
  The `jalr` at 0x403ba0 calls dmBufferSetSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x403bc0 calls dmBufferGetImageType with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x403bd8 calls dmBufferSetImageType with a0=?, a1=ret(dmBufferGetImageType), a2=?, a3=?.
  The `jalr` at 0x403bfc calls dmBufferGetUSTMSCpair with a0=sp-208, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x403c3c calls dmBufferSetUSTMSCpair with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x403d50 calls vice_dmbuf_send with a0=[a0], a1=?, a2=a0+184, a3=a0+104.
  The `jalr` at 0x403d78 calls dmSetError with a0=0x1777, a1=0x408ab0, a2=0x408abc, a3=?.
  The `jalr` at 0x403d98 calls vice_dms_geterrs with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x403dbc calls dmSetError with a0=0x1777, a1=0x408ad4, a2=0x408ae0, a3=?.
  The `jalr` at 0x403dec calls memset with a0=sp-156, a1=0x0, a2=0x80, a3=?.
  The `jalr` at 0x403e54 calls select with a0=[a0+28]+1, a1=sp-156, a2=0x0, a3=0x0.
  The `jalr` at 0x403e78 calls dmSetError with a0=0x1777, a1=0x408aec, a2=0x408af8, a3=?.
  The `jalr` at 0x403e9c calls dmBufferFree with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4037f0 targets 0x40381c, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x40380c targets 0x40381c, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x403814 targets 0x403eac and is always taken.
  The `beql` branch at 0x403820 targets 0x4038c8, is taken when a2(?) == 0, and falls through when a2(?) != 0; its branch-likely delay slot `lw a3,280(sp)` at 0x403824 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x40383c targets 0x40384c, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x403844 targets 0x403eac and is always taken.
  The `beq` branch at 0x403868 targets 0x403880, is taken when v0(=ret(dmParamsGetEnum)) == at(=0x3f0), and falls through when v0(=ret(dmParamsGetEnum)) != at(=0x3f0).
  The `beq` branch at 0x403874 targets 0x403880, is taken when v0(=ret(dmParamsGetEnum)) == at(=0x3ed), and falls through when v0(=ret(dmParamsGetEnum)) != at(=0x3ed).
  The `beq` branch at 0x4038b0 targets 0x4038c0, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x4038b8 targets 0x403eac and is always taken.
  The `beql` branch at 0x4038c8 targets 0x403900, is taken when a3(?) == 0, and falls through when a3(?) != 0; its branch-likely delay slot `lw t1,272(sp)` at 0x4038cc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x4038e4 targets 0x4038f4, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x4038ec targets 0x403eac and is always taken.
  The `bne` branch at 0x403900 targets 0x403918, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0x403908 targets 0x403918, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x403910 targets 0x403994, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x403918 targets 0x403974, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x403938 targets 0x403948, is taken when v0(=ret(_e_go)) != at(=-0x1), and falls through when v0(=ret(_e_go)) == at(=-0x1).
  The `beq` branch at 0x403940 targets 0x403eac and is always taken.
  The `beq` branch at 0x40394c targets 0x403974, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beql` branch at 0x4039b0 targets 0x4039e4, is taken when v0(=ret(dmBufferGetSize)) >= t3(=[a0+172]) (signed), and falls through when v0(=ret(dmBufferGetSize)) < t3(=[a0+172]) (signed); its branch-likely delay slot `lw t4,24(s0)` at 0x4039b4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x4039d8 targets 0x403eac and is always taken.
  The `beql` branch at 0x4039e4 targets 0x403c60, is taken when t4(=[a0+24]) == 0, and falls through when t4(=[a0+24]) != 0; its branch-likely delay slot `lw t2,268(s0)` at 0x4039e8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x403a08 targets 0x403a20, is taken when a0(=[a0+16]) == 0, and falls through when a0(=[a0+16]) != 0.
  The `beql` branch at 0x403a18 targets 0x403b18, is taken when t5(=[a0+20]) >= v0(=ret(dmImageFrameSize)) (signed), and falls through when t5(=[a0+20]) < v0(=ret(dmImageFrameSize)) (signed); its branch-likely delay slot `lw t7,88(sp)` at 0x403a1c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x403a20 targets 0x403a38, is taken when a0(=[a0+16]) == 0, and falls through when a0(=[a0+16]) != 0.
  The `beq` branch at 0x403a48 targets 0x403a58, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x403a50 targets 0x403eac and is always taken.
  The `beq` branch at 0x403a78 targets 0x403a88, is taken when v0(=ret(dmBufferSetPoolDefaults)) == 0, and falls through when v0(=ret(dmBufferSetPoolDefaults)) != 0.
  The `beq` branch at 0x403a80 targets 0x403eac and is always taken.
  The `beq` branch at 0x403ab8 targets 0x403ac8, is taken when v0(=ret(dmBufferCreatePool)) == 0, and falls through when v0(=ret(dmBufferCreatePool)) != 0.
  The `beq` branch at 0x403ac0 targets 0x403eac and is always taken.
  The `beq` branch at 0x403b2c targets 0x403b3c, is taken when v0(=ret(dmBufferAllocate)) == 0, and falls through when v0(=ret(dmBufferAllocate)) != 0.
  The `beq` branch at 0x403b34 targets 0x403eac and is always taken.
  The `beq` branch at 0x403b84 targets 0x403b94, is taken when v0(=ret(dmICAnyToAny)) == 0, and falls through when v0(=ret(dmICAnyToAny)) != 0.
  The `beq` branch at 0x403b8c targets 0x403eac and is always taken.
  The `beq` branch at 0x403ba8 targets 0x403bb8, is taken when v0(=ret(dmBufferSetSize)) == 0, and falls through when v0(=ret(dmBufferSetSize)) != 0.
  The `beq` branch at 0x403bb0 targets 0x403eac and is always taken.
  The `beq` branch at 0x403be0 targets 0x403bf0, is taken when v0(=ret(dmBufferSetImageType)) == 0, and falls through when v0(=ret(dmBufferSetImageType)) != 0.
  The `beq` branch at 0x403be8 targets 0x403eac and is always taken.
  The `beq` branch at 0x403c44 targets 0x403c54, is taken when v0(=ret(dmBufferSetUSTMSCpair)) == 0, and falls through when v0(=ret(dmBufferSetUSTMSCpair)) != 0.
  The `beq` branch at 0x403c4c targets 0x403eac and is always taken.
  The `beq` branch at 0x403c68 targets 0x403d44, is taken when t2(=[a0+268]) == 0, and falls through when t2(=[a0+268]) != 0.
  The `bc1fl` branch at 0x403cb8 targets 0x403cfc, is taken when not (f6 < f0 (c.lt.s at 0x403cb0)), and falls through when f6 < f0 (c.lt.s at 0x403cb0); its branch-likely delay slot `mtc1 at,$f19` at 0x403cbc runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0x403cd8 targets 0x403d40, is taken when not (f8 < f16 (c.lt.d at 0x403cd0)), and falls through when f8 < f16 (c.lt.d at 0x403cd0); its branch-likely delay slot `sw v0,144(s0)` at 0x403cdc runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0x403ce8 targets 0x403d40, is taken when v0(=[a0+280]+4) < 0x1b (signed), and falls through when v0(=[a0+280]+4) >= 0x1b (signed); its branch-likely delay slot `sw v0,144(s0)` at 0x403cec runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x403cf0 targets 0x403d3c and is always taken.
  The `bc1fl` branch at 0x403d24 targets 0x403d40, is taken when not (f6 < f8 (c.lt.d at 0x403d1c)), and falls through when f6 < f8 (c.lt.d at 0x403d1c); its branch-likely delay slot `sw v0,144(s0)` at 0x403d28 runs only when taken and is annulled on fall-through.
  The `bgezl` branch at 0x403d30 targets 0x403d40, is taken when v0(=[a0+280]-1) >= 0 (signed), and falls through when v0(=[a0+280]-1) < 0 (signed); its branch-likely delay slot `sw v0,144(s0)` at 0x403d34 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x403d5c targets 0x403d90, is taken when v0(=ret(vice_dmbuf_send)) != at(=-0x1), and falls through when v0(=ret(vice_dmbuf_send)) == at(=-0x1).
  The `beq` branch at 0x403d88 targets 0x403e8c and is always taken.
  The `beq` branch at 0x403da0 targets 0x403dd4, is taken when v0(=ret(vice_dms_geterrs)) == 0, and falls through when v0(=ret(vice_dms_geterrs)) != 0.
  The `beq` branch at 0x403dcc targets 0x403e8c and is always taken.
  The `beql` branch at 0x403dd8 targets 0x403e90, is taken when a0(?) == 0, and falls through when a0(?) != 0; its branch-likely delay slot `lw a0,244(sp)` at 0x403ddc runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0x403e00 targets 0x403e10, is taken when v1(=[a0+28]) >= 0 (signed), and falls through when v1(=[a0+28]) < 0 (signed).
  The `bgez` branch at 0x403e20 targets 0x403e34, is taken when v1(=[a0+28]) >= 0 (signed), and falls through when v1(=[a0+28]) < 0 (signed).
  The `beq` branch at 0x403e28 targets 0x403e34, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bgtz` branch at 0x403e5c targets 0x403e8c, is taken when v0(=ret(select)) > 0 (signed), and falls through when v0(=ret(select)) <= 0 (signed).
  The `beql` branch at 0x403e90 targets 0x403eac, is taken when a0(?) == 0, and falls through when a0(?) != 0; its branch-likely delay slot `lw v0,228(sp)` at 0x403e94 runs only when taken and is annulled on fall-through.
  The return at 0x403eb8 has v0 = one of -0x1, ?.
  The instructions from 0x4039e0 to 0x4039e0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x403cf8 to 0x403cf8 are not reached by any path from the entry, and their branches are not listed.

- `e_recv` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x403ec0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x403ec0-0x40426c (940 bytes).
  It occupies 940 bytes.
  The `lw` at 0x403ef4 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `lw` at 0x403ef8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  13 such `lw` accesses load 4 bytes from ?, including `lw` at 0x403f50, `lw` at 0x403f58, `lw` at 0x403f98.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb4, including `lw` at 0x403f94, `lw` at 0x403fb4, `lw` at 0x404048.
  The `lw` at 0x403fb0 loads 4 bytes from a0 (arg0 at entry) +0x60.
  5 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x404020, `lw` at 0x404038, `lw` at 0x404150.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x108, including `lw` at 0x4040a8, `lw` at 0x40417c.
  2 such `lw` accesses load 4 bytes from sym(_viceid) +0x0, including `lw` at 0x4040c0, `lw` at 0x404180.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa4, including `lw` at 0x4040c4, `lw` at 0x404184.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa8, including `lw` at 0x4040c8, `lw` at 0x404188.
  The `lw` at 0x404228 loads 4 bytes from a0 (arg0 at entry) +0x10c.
  The `sw` at 0x40423c stores 4 bytes to a0 (arg0 at entry) +0x114.
  The `jalr` at 0x403f04 calls vice_dmbuf_recv with a0=[a0], a1=sp-12, a2=[a0+152], a3=a0+224.
  The `jalr` at 0x403f30 calls dmSetError with a0=0x1776, a1=0x408b14, a2=0x408b20, a3=?.
  The `jalr` at 0x403f70 calls dmSetError with a0=0x1777, a1=0x408b38, a2=0x408b44, a3=?.
  The `jalr` at 0x403fd4 calls printf with a0=0x408b50, a1=?, a2=?, a3=?.
  The `jalr` at 0x403ff4 calls dmSetError with a0=0x1777, a1=0x408b74, a2=0x408b80, a3=?.
  The `jalr` at 0x40401c calls dmBufferSetSize with a0=[a1], a1=?, a2=?, a3=?.
  The `jalr` at 0x404034 calls dmBufferMapData with a0=[a1], a1=?, a2=?, a3=?.
  The `jalr` at 0x40405c calls printf with a0=0x408b9c, a1=?, a2=?, a3=?.
  The `jalr` at 0x40407c calls dmSetError with a0=0x1777, a1=0x408bb0, a2=0x408bbc, a3=?.
  The `jalr` at 0x4040d8 calls jhead_luma_make with a0=ret(dmBufferMapData), a1=[a0+164], a2=[a0+168], a3=?.
  The `jalr` at 0x404114 calls printf with a0=0x408bc0, a1=?, a2=0x198, a3=ret(dmBufferMapData).
  The `jalr` at 0x404134 calls dmSetError with a0=0x1777, a1=0x408bec, a2=0x408bf8, a3=?.
  The `jalr` at 0x404158 calls dmBufferSetSize with a0=[a1], a1=?, a2=?, a3=ret(dmBufferMapData).
  The `jalr` at 0x40419c calls jhead_make with a0=ret(dmBufferMapData), a1=[a0+164], a2=[a0+168], a3=?.
  The `jalr` at 0x4041d8 calls printf with a0=0x408c00, a1=?, a2=0x2c0, a3=ret(dmBufferMapData).
  The `jalr` at 0x4041f8 calls dmSetError with a0=0x1777, a1=0x408c2c, a2=0x408c38, a3=?.
  The `jalr` at 0x40421c calls dmBufferSetSize with a0=[a1], a1=?, a2=?, a3=ret(dmBufferMapData).
  The `jalr` at 0x40424c calls dmBufferSetImageType with a0=[a1], a1=0x1, a2=?, a3=?.
  The `bne` branch at 0x403f10 targets 0x403f44, is taken when v0(=ret(vice_dmbuf_recv)) != at(=-0x1), and falls through when v0(=ret(vice_dmbuf_recv)) == at(=-0x1).
  The `beq` branch at 0x403f3c targets 0x404258 and is always taken.
  The `bnel` branch at 0x403f54 targets 0x403f88, is taken when t8(?) != at(=0xe000), and falls through when t8(?) == at(=0xe000); its branch-likely delay slot `lw a3,56(t9)` at 0x403f58 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x403f7c targets 0x404258 and is always taken.
  The `bltz` branch at 0x403f88 targets 0x403fb4, is taken when a3(?) < 0 (signed), and falls through when a3(?) >= 0 (signed).
  The `beql` branch at 0x403f90 targets 0x403fb8, is taken when at(?) == 0, and falls through when at(?) != 0; its branch-likely delay slot `lw t0,180(s0)` at 0x403f94 runs only when taken and is annulled on fall-through.
  The `bltz` branch at 0x403fa4 targets 0x403fb4, is taken when a1(?) < 0 (signed), and falls through when a1(?) >= 0 (signed).
  The `bnel` branch at 0x403fac targets 0x40400c, is taken when at(?) != 0, and falls through when at(?) == 0; its branch-likely delay slot `lw t2,96(s0)` at 0x403fb0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x403fbc targets 0x403fe0, is taken when t0(=[a0+180]) == 0, and falls through when t0(=[a0+180]) != 0.
  The `beq` branch at 0x404000 targets 0x404258 and is always taken.
  The `bne` branch at 0x40400c targets 0x40402c, is taken when t2(=[a0+96]) != 0, and falls through when t2(=[a0+96]) == 0.
  The `beq` branch at 0x404024 targets 0x404228 and is always taken.
  The `bne` branch at 0x404040 targets 0x404090, is taken when v0(=ret(dmBufferMapData)) != 0, and falls through when v0(=ret(dmBufferMapData)) == 0.
  The `beq` branch at 0x40404c targets 0x404068, is taken when t5(=[a0+180]) == 0, and falls through when t5(=[a0+180]) != 0.
  The `beq` branch at 0x404088 targets 0x404258 and is always taken.
  The `bnel` branch at 0x40409c targets 0x40416c, is taken when v0(?) != 0, and falls through when v0(?) == 0; its branch-likely delay slot `lw t9,56(t8)` at 0x4040a0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x4040f0 targets 0x404148, is taken when t3(?) == at(=0x198), and falls through when t3(?) != at(=0x198).
  The `beq` branch at 0x404100 targets 0x404120, is taken when t4(=[a0+180]) == 0, and falls through when t4(=[a0+180]) != 0.
  The `beq` branch at 0x404140 targets 0x404258 and is always taken.
  The `beq` branch at 0x404160 targets 0x404228 and is always taken.
  The `beq` branch at 0x4041b4 targets 0x40420c, is taken when t4(?) == at(=0x2c0), and falls through when t4(?) != at(=0x2c0).
  The `beq` branch at 0x4041c4 targets 0x4041e4, is taken when t5(=[a0+180]) == 0, and falls through when t5(=[a0+180]) != 0.
  The `beq` branch at 0x404204 targets 0x404258 and is always taken.
  The `beq` branch at 0x404230 targets 0x404240, is taken when t6(=[a0+268]) == 0, and falls through when t6(=[a0+268]) != 0.
  The return at 0x404264 has v0 = one of ret(vice_dmbuf_recv), -0x1, ret(dmBufferSetImageType).
  The instructions from 0x403f84 to 0x403f84 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x404008 to 0x404008 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x404168 to 0x404168 are not reached by any path from the entry, and their branches are not listed.

- `d_open` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x40426c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x40426c-0x4044c8 (604 bytes).
  It occupies 604 bytes.
  The `sw` at 0x404330 stores 4 bytes to ret(calloc) +0x0.
  2 such `lw` accesses load 4 bytes from ret(calloc) +0x0, including `lw` at 0x4043ec, `lw` at 0x40444c.
  The `sw` at 0x404410 stores 4 bytes to ret(calloc) +0xa0.
  The `sw` at 0x404490 stores 4 bytes to ret(calloc) +0xac.
  The `sw` at 0x4044b0 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x404290 calls vice_get_lib_rev with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4042c0 calls dmSetError with a0=0x1774, a1=0x408c40, a2=0x408c4c, a3=0x6b7a.
  The `jalr` at 0x4042e0 calls calloc with a0=0x1, a1=0x100, a2=?, a3=?.
  The `jalr` at 0x404308 calls dmSetError with a0=0x1772, a1=0x408c68, a2=0x408c74, a3=?.
  The `jalr` at 0x404324 calls vice_open_and_setetc with a0=0x408c84, a1=?, a2=?, a3=?.
  The `jalr` at 0x404350 calls dmSetError with a0=0x1774, a1=0x408c94, a2=0x408ca0, a3=?.
  The `jalr` at 0x404364 calls free with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x404388 calls init_formats [0x401b0c] with a0=ret(calloc)+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x4043ac calls dmSetError with a0=0x1774, a1=0x408cbc, a2=0x408cc8, a3=?.
  The `jalr` at 0x4043c0 calls vice_close with a0=ret(vice_open_and_setetc), a1=?, a2=?, a3=?.
  The `jalr` at 0x4043d4 calls free with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x404400 calls vice_event_init with a0=[ret(calloc)], a1=ret(calloc)+176, a2=ret(calloc)+216, a3=0x40.
  The `jalr` at 0x404428 calls dmSetError with a0=0x1774, a1=0x408cf4, a2=0x408d00, a3=?.
  The `jalr` at 0x404440 calls free_formats [0x401ba8] with a0=ret(calloc)+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x404454 calls vice_close with a0=[ret(calloc)], a1=?, a2=?, a3=?.
  The `jalr` at 0x404468 calls free with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x40447c calls getenv with a0=0x408d20, a1=?, a2=?, a3=?.
  The `jalr` at 0x40449c calls printf with a0=0x408d2c, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4042a0 targets 0x4042d4, is taken when t6(?) == at(=0x6b7a), and falls through when t6(?) != at(=0x6b7a).
  The `beq` branch at 0x4042cc targets 0x4044b4 and is always taken.
  The `bne` branch at 0x4042ec targets 0x40431c, is taken when v0(=ret(calloc)) != 0, and falls through when v0(=ret(calloc)) == 0.
  The `beq` branch at 0x404314 targets 0x4044b4 and is always taken.
  The `bgez` branch at 0x404334 targets 0x404378, is taken when v0(=ret(vice_open_and_setetc)) >= 0 (signed), and falls through when v0(=ret(vice_open_and_setetc)) < 0 (signed).
  The `beq` branch at 0x404370 targets 0x4044b4 and is always taken.
  The `beq` branch at 0x404390 targets 0x4043e8, is taken when v0(=ret(init_formats)) == 0, and falls through when v0(=ret(init_formats)) != 0.
  The `beq` branch at 0x4043e0 targets 0x4044b4 and is always taken.
  The `bgez` branch at 0x40440c targets 0x404474, is taken when v0(=ret(vice_event_init)) >= 0 (signed), and falls through when v0(=ret(vice_event_init)) < 0 (signed).
  The `beq` branch at 0x40448c targets 0x4044a8, is taken when 0 >= v0(=ret(getenv)) (unsigned), and falls through when 0 < v0(=ret(getenv)) (unsigned).
  The return at 0x4044c0 has v0 = one of -0x1, 0x0.

- `d_close` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x4044c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x4044c8-0x404570 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x4044e4 loads 4 bytes from a0 (arg0 at entry) +0xac.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x40450c, `lw` at 0x404520.
  The `jalr` at 0x4044fc calls printf with a0=0x408d48, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404514 calls vice_event_uninit with a0=[a0], a1=a0+176, a2=a0+216, a3=?.
  The `jalr` at 0x404528 calls vice_close with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x404540 calls free_formats [0x401ba8] with a0=a0+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x404554 calls free with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x4044ec targets 0x404508, is taken when t6(=[a0+172]) == 0, and falls through when t6(=[a0+172]) != 0.
  The return at 0x404568 has v0 = ret(free).

- `d_describe` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x404570 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x404570-0x404650 (224 bytes).
  It occupies 224 bytes.
  The `jalr` at 0x4045a0 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x408d64, a2=0x6a706567, a3=a3 at entry (arg3).
  The `jalr` at 0x4045c0 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x408d70, a2=0x408d80, a3=?.
  The `jalr` at 0x4045dc calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x408d88, a2=0x1, a3=?.
  The `jalr` at 0x4045f8 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x408d94, a2=0x2, a3=?.
  The `jalr` at 0x404614 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x408dac, a2=0x0, a3=?.
  The `jalr` at 0x404630 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x408dbc, a2=0x1, a3=?.
  The return at 0x404648 has v0 = 0x0.

- `d_dstpoolis` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x404650 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x404650-0x4046b4 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x40466c loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x404680 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0x4046a0 stores 4 bytes to a0 (arg0 at entry) +0x9c.
  The `jalr` at 0x404688 calls vice_dmbuf_outpool with a0=[a0], a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `bnel` branch at 0x404674 targets 0x40469c, is taken when t6(=[a0+16]) != 0, and falls through when t6(=[a0+16]) == 0; its branch-likely delay slot `lw t7,36(sp)` at 0x404678 runs only when taken and is annulled on fall-through.
  The return at 0x4046ac has v0 = 0x0.

- `d_fd` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x4046b4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x4046b4-0x4046bc (8 bytes).
  It occupies 8 bytes.
  The `lw` at 0x4046b8 loads 4 bytes from a0 (arg0 at entry) +0xa0.
  The return at 0x4046b4 has v0 = [a0+160].

- `d_getsrcfilled` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x4046bc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x4046bc-0x404708 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x4046d8 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `jalr` at 0x4046dc calls dmFifoNfilled with a0=[a0+176], a1=sp-8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x4046e4 targets 0x4046f4, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The `beq` branch at 0x4046ec targets 0x4046f8 and is always taken.
  The return at 0x404700 has v0 = one of -0x1, ?.

- `d_getdstfilled` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x404708 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x404708-0x404754 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x404724 loads 4 bytes from a0 (arg0 at entry) +0xd8.
  The `jalr` at 0x404728 calls dmFifoNfilled with a0=[a0+216], a1=sp-8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x404730 targets 0x404740, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The `beq` branch at 0x404738 targets 0x404744 and is always taken.
  The return at 0x40474c has v0 = one of -0x1, ?.

- `d_verifysrc` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x404754 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x404754-0x404794 (64 bytes).
  It occupies 64 bytes.
  The `jalr` at 0x404778 calls verify_compressed [0x4021a4] with a0=a0 at entry (arg0), a1=0x408dcc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x40478c has v0 = ret(verify_compressed).

- `d_verifydst` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x404794 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x404794-0x4047d4 (64 bytes).
  It occupies 64 bytes.
  The `jalr` at 0x4047b8 calls verify_uncompressed [0x4020f8] with a0=a0 at entry (arg0), a1=0x408dd0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x4047cc has v0 = ret(verify_uncompressed).

- `d_verifycvt` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x4047d4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x4047d4-0x4047e0 (12 bytes).
  It occupies 12 bytes.
  The return at 0x4047d8 has v0 = 0x0.

- `d_verifysrcdstcvt` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x4047e0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x4047e0-0x404898 (184 bytes).
  It occupies 184 bytes.
  The `jalr` at 0x40480c calls d_verifysrc [0x404754] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40483c calls d_verifydst [0x404794] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x40486c calls d_verifycvt [0x4047d4] with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `beq` branch at 0x4047f8 targets 0x404828, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x404818 targets 0x404828, is taken when v0(=ret(d_verifysrc)) == 0, and falls through when v0(=ret(d_verifysrc)) != 0.
  The `beq` branch at 0x404820 targets 0x404888 and is always taken.
  The `beql` branch at 0x404828 targets 0x404858, is taken when a1 == 0, and falls through when a1 != 0; its branch-likely delay slot `lw t6,40(sp)` at 0x40482c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x404844 targets 0x404854, is taken when v0(=ret(d_verifydst)) == 0, and falls through when v0(=ret(d_verifydst)) != 0.
  The `beq` branch at 0x40484c targets 0x404888 and is always taken.
  The `beql` branch at 0x404858 targets 0x404888, is taken when t6(=a2) == 0, and falls through when t6(=a2) != 0; its branch-likely delay slot `or v0,zero,zero` at 0x40485c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x404874 targets 0x404884, is taken when v0(=ret(d_verifycvt)) == 0, and falls through when v0(=ret(d_verifycvt)) != 0.
  The `beq` branch at 0x40487c targets 0x404888 and is always taken.
  The return at 0x404890 has v0 = one of -0x1, 0x0.

- `d_defaultsrc` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x404898 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x404898-0x4048d0 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0x4048b4 calls get_default_uncompressed [0x40233c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x4048c8 has v0 = ret(get_default_uncompressed).

- `d_defaultdst` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x4048d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x4048d0-0x404908 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0x4048ec calls get_default_uncompressed [0x40233c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x404900 has v0 = ret(get_default_uncompressed).

- `d_defaultcvt` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x404908 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x404908-0x404914 (12 bytes).
  It occupies 12 bytes.
  The return at 0x40490c has v0 = 0x0.

- `_d_go` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x404914 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x404914-0x404cfc (1000 bytes).
  It occupies 1000 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x404934, `lw` at 0x404ca4.
  The `lw` at 0x404944 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0x404994 stores 4 bytes to a0 (arg0 at entry) +0xa4.
  The `lw` at 0x404bb0 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x404bc0 loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lw` at 0x404bcc loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `sw` at 0x404c10 stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `sw` at 0x404c14 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0x404c18 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  The `sw` at 0x404c1c stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0x404c30 stores 4 bytes to a0 (arg0 at entry) +0x80.
  The `sw` at 0x404c3c stores 4 bytes to a0 (arg0 at entry) +0x88.
  The `sw` at 0x404c50 stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `sw` at 0x404c64 stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `sw` at 0x404c70 stores 4 bytes to a0 (arg0 at entry) +0x94.
  The `sw` at 0x404c78 stores 4 bytes to a0 (arg0 at entry) +0x84.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x98, including `sw` at 0x404c80, `sw` at 0x404c9c.
  The `jalr` at 0x404950 calls dmParamsGetInt with a0=[a0+4], a1=0x408dd4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404970 calls dmParamsGetInt with a0=[a0+4], a1=0x408de4, a2=?, a3=?.
  The `jalr` at 0x404988 calls dmImageFrameSize with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0x4049a4 calls dmParamsGetEnum with a0=[a0+4], a1=0x408df4, a2=?, a3=?.
  The `jalr` at 0x4049f0 calls vice_file with a0=0x408e08, a1=?, a2=?, a3=?.
  The `jalr` at 0x404a10 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=0x0.
  The `jalr` at 0x404a24 calls vice_file with a0=0x408e14, a1=?, a2=?, a3=?.
  The `jalr` at 0x404a40 calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=?.
  The `jalr` at 0x404a64 calls vice_file with a0=0x408e20, a1=?, a2=?, a3=?.
  The `jalr` at 0x404a84 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=0x0.
  The `jalr` at 0x404a98 calls vice_file with a0=0x408e2c, a1=?, a2=?, a3=?.
  The `jalr` at 0x404ab4 calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=?.
  The `jalr` at 0x404adc calls vice_file with a0=0x408e38, a1=?, a2=?, a3=?.
  The `jalr` at 0x404afc calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=0x0.
  The `jalr` at 0x404b10 calls vice_file with a0=0x408e44, a1=?, a2=?, a3=?.
  The `jalr` at 0x404b2c calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=?.
  The `jalr` at 0x404b50 calls __assert with a0=0x408e50, a1=0x408e5c, a2=0x539, a3=?.
  The `jalr` at 0x404b70 calls dmSetError with a0=0x1778, a1=0x408e68, a2=0x408e74, a3=?.
  The `jalr` at 0x404b8c calls vice_file with a0=0x408e84, a1=?, a2=?, a3=?.
  The `jalr` at 0x404ba8 calls vice_load_bsp_table with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=?.
  The `jalr` at 0x404bf4 calls dmSetError with a0=0x1778, a1=0x408e90, a2=0x408e9c, a3=?.
  The `jalr` at 0x404cac calls vice_event_start with a0=[a0], a1=a0+32, a2=?, a3=?.
  The `jalr` at 0x404cd0 calls dmSetError with a0=0x1778, a1=0x408eb8, a2=0x408ec4, a3=?.
  The `beq` branch at 0x4049b0 targets 0x404ac4, is taken when v0(=ret(dmParamsGetEnum)) == at(=0x3e9), and falls through when v0(=ret(dmParamsGetEnum)) != at(=0x3e9).
  The `beq` branch at 0x4049bc targets 0x404ac4, is taken when v0(=ret(dmParamsGetEnum)) == at(=0x3ea), and falls through when v0(=ret(dmParamsGetEnum)) != at(=0x3ea).
  The `beq` branch at 0x4049c4 targets 0x4049e0, is taken when v0(=ret(dmParamsGetEnum)) == at(=0x3ed), and falls through when v0(=ret(dmParamsGetEnum)) != at(=0x3ed).
  The `beq` branch at 0x4049d0 targets 0x404a50, is taken when v0(=ret(dmParamsGetEnum)) == at(=0x3f0), and falls through when v0(=ret(dmParamsGetEnum)) != at(=0x3f0).
  The `beq` branch at 0x4049d8 targets 0x404b3c and is always taken.
  The `beq` branch at 0x404a48 targets 0x404b84 and is always taken.
  The `beq` branch at 0x404abc targets 0x404b84 and is always taken.
  The `beq` branch at 0x404b34 targets 0x404b84 and is always taken.
  The `beq` branch at 0x404b7c targets 0x404ce8 and is always taken.
  The `beq` branch at 0x404bb8 targets 0x404be0, is taken when t2(=[a0+68]) == 0, and falls through when t2(=[a0+68]) != 0.
  The `beq` branch at 0x404bc4 targets 0x404be0, is taken when t3(=[a0+80]) == 0, and falls through when t3(=[a0+80]) != 0.
  The `bne` branch at 0x404bd8 targets 0x404c08, is taken when t4(=[a0+84]) != 0, and falls through when t4(=[a0+84]) == 0.
  The `beq` branch at 0x404c00 targets 0x404ce8 and is always taken.
  The `bgez` branch at 0x404c40 targets 0x404c50, is taken when a0(=ret(dmParamsGetInt)) >= 0 (signed), and falls through when a0(=ret(dmParamsGetInt)) < 0 (signed).
  The `bgez` branch at 0x404c54 targets 0x404c64, is taken when v0(=ret(dmParamsGetInt)+7) >= 0 (signed), and falls through when v0(=ret(dmParamsGetInt)+7) < 0 (signed).
  The `bne` branch at 0x404c74 targets 0x404c84, is taken when v1(=ret(dmParamsGetInt)) != at(=0xf3), and falls through when v1(=ret(dmParamsGetInt)) == at(=0xf3).
  The `beq` branch at 0x404c7c targets 0x404ca0 and is always taken.
  The `bnel` branch at 0x404c88 targets 0x404c9c, is taken when v0(=ret(dmParamsGetInt)+7) != at(=0x1ed), and falls through when v0(=ret(dmParamsGetInt)+7) == at(=0x1ed); its branch-likely delay slot `or v0,zero,zero` at 0x404c8c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x404c90 targets 0x404c9c and is always taken.
  The `beq` branch at 0x404cb4 targets 0x404ce4, is taken when v0(=ret(vice_event_start)) == 0, and falls through when v0(=ret(vice_event_start)) != 0.
  The `beq` branch at 0x404cdc targets 0x404ce8 and is always taken.
  The return at 0x404cf4 has v0 = one of -0x1, 0x0.
  The instructions from 0x404c98 to 0x404c98 are not reached by any path from the entry, and their branches are not listed.

- `d_send` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x404cfc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x404cfc-0x4051e4 (1256 bytes).
  It occupies 1256 bytes.
  The `lw` at 0x404d24 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x404d34 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x404e38 loads 4 bytes from a0 (arg0 at entry) +0xc.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x404ed4, `lw` at 0x404fd4, `lw` at 0x404ff4.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0x404ee4, `sw` at 0x404ffc, `sw` at 0x40503c.
  The `lw` at 0x404ee8 loads 4 bytes from a0 (arg0 at entry) +0x14.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14, including `sw` at 0x404fb8, `sw` at 0x405014.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x404fd0, `lw` at 0x40501c, `lw` at 0x405140.
  The `sw` at 0x405010 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `lw` at 0x405020 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `sw` at 0x405058 stores 4 bytes to a0 (arg0 at entry) +0x8c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8c, including `lw` at 0x40506c, `lw` at 0x4050f0.
  The `lbu` at 0x405094 loads 1 byte from ?.
  The `lw` at 0x4050c8 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `lbu` at 0x405100 loads 1 byte from ([a0+140] + ret(dmBufferMapData)) -0x5.
  The `jalr` at 0x404d4c calls dmParamsCopyAllElems with a0=?, a1=[a0+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404d74 calls dmParamsSetEnum with a0=?, a1=0x408ee8, a2=0x44c, a3=?.
  The `jalr` at 0x404da0 calls dmParamsCopyAllElems with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404dc4 calls dmParamsIsPresent with a0=?, a1=0x408f00, a2=?, a3=?.
  The `jalr` at 0x404de0 calls dmParamsGetEnum with a0=?, a1=0x408f14, a2=?, a3=?.
  The `jalr` at 0x404e1c calls dmParamsSetEnum with a0=?, a1=0x408f28, a2=?, a3=?.
  The `jalr` at 0x404e3c calls dmParamsCopyAllElems with a0=?, a1=[a0+12], a2=?, a3=?.
  The `jalr` at 0x404e84 calls _d_go [0x404914] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x404eb0 calls needsConvert [0x401d1c] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404ec8 calls dmImageFrameSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404f04 calls dmBufferDestroyPool with a0=[a0+16], a1=?, a2=?, a3=?.
  The `jalr` at 0x404f18 calls dmParamsCreate with a0=sp-24, a1=?, a2=?, a3=?.
  The `jalr` at 0x404f48 calls dmBufferSetPoolDefaults with a0=?, a1=0x2, a2=?, a3=0x0.
  The `jalr` at 0x404f70 calls _poolneeds [0x401ad0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x404f88 calls dmBufferCreatePool with a0=?, a1=a0+16, a2=?, a3=?.
  The `jalr` at 0x404fac calls dmParamsGetInt with a0=?, a1=0x408f3c, a2=?, a3=?.
  The `jalr` at 0x404fc4 calls dmParamsDestroy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404fdc calls vice_dmbuf_outpool with a0=[a0], a1=[a0+16], a2=?, a3=?.
  The `jalr` at 0x405004 calls dmBufferDestroyPool with a0=[a0+16], a1=?, a2=?, a3=?.
  The `jalr` at 0x405024 calls vice_dmbuf_outpool with a0=[a0], a1=[a0+156], a2=?, a3=?.
  The `jalr` at 0x405048 calls dmBufferGetSize with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x405064 calls dmBufferMapData with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x4050e0 calls dmBufferGetSize with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=?, a3=0xff.
  The `jalr` at 0x405108 calls printf with a0=0x408f4c, a1=ret(dmBufferGetSize), a2=[([a0+140] + ret(dmBufferMapData))-5]:1, a3=?.
  The `jalr` at 0x405128 calls dmSetError with a0=0x1772, a1=0x408f7c, a2=0x408f88, a3=?.
  The `jalr` at 0x405150 calls vice_dmbuf_send with a0=[a0], a1=a1 at entry (arg1), a2=a0+176, a3=a0+104.
  The `jalr` at 0x405178 calls dmSetError with a0=0x1778, a1=0x408f98, a2=0x408fa4, a3=?.
  The `jalr` at 0x405194 calls vice_dms_geterrs with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x4051b8 calls dmSetError with a0=0x1778, a1=0x408fbc, a2=0x408fc8, a3=?.
  The `beq` branch at 0x404d38 targets 0x404d8c, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x404d54 targets 0x404d64, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x404d5c targets 0x4051d0 and is always taken.
  The `beq` branch at 0x404d7c targets 0x404d8c, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x404d84 targets 0x4051d0 and is always taken.
  The `beq` branch at 0x404d90 targets 0x404e28, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x404da8 targets 0x404db8, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x404db0 targets 0x4051d0 and is always taken.
  The `beq` branch at 0x404dcc targets 0x404e0c, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x404df0 targets 0x404e10, is taken when v0(=ret(dmParamsGetEnum)) == at(=0x3f0), and falls through when v0(=ret(dmParamsGetEnum)) != at(=0x3f0).
  The `beq` branch at 0x404dfc targets 0x404e10, is taken when v0(=ret(dmParamsGetEnum)) == at(=0x3ed), and falls through when v0(=ret(dmParamsGetEnum)) != at(=0x3ed).
  The `beq` branch at 0x404e04 targets 0x404e10 and is always taken.
  The `beql` branch at 0x404e2c targets 0x404e5c, is taken when a0(?) == 0, and falls through when a0(?) != 0; its branch-likely delay slot `lw t3,112(sp)` at 0x404e30 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x404e44 targets 0x404e54, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x404e4c targets 0x4051d0 and is always taken.
  The `bne` branch at 0x404e60 targets 0x404e78, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `bne` branch at 0x404e68 targets 0x404e78, is taken when t4(?) != 0, and falls through when t4(?) == 0.
  The `beq` branch at 0x404e70 targets 0x405040, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x404e90 targets 0x404ea0, is taken when v0(=ret(_d_go)) != at(=-0x1), and falls through when v0(=ret(_d_go)) == at(=-0x1).
  The `beq` branch at 0x404e98 targets 0x4051d0 and is always taken.
  The `beq` branch at 0x404eb8 targets 0x404ff4, is taken when v0(=ret(needsConvert)) == 0, and falls through when v0(=ret(needsConvert)) != 0.
  The `beq` branch at 0x404ee0 targets 0x404ef8, is taken when a0(=[a0+16]) == 0, and falls through when a0(=[a0+16]) != 0.
  The `beq` branch at 0x404ef0 targets 0x405040, is taken when t6(=[a0+20]) >= v0(=ret(dmImageFrameSize)) (signed), and falls through when t6(=[a0+20]) < v0(=ret(dmImageFrameSize)) (signed).
  The `beq` branch at 0x404ef8 targets 0x404f10, is taken when a0(=[a0+16]) == 0, and falls through when a0(=[a0+16]) != 0.
  The `beq` branch at 0x404f20 targets 0x404f30, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x404f28 targets 0x4051d0 and is always taken.
  The `beq` branch at 0x404f50 targets 0x404f60, is taken when v0(=ret(dmBufferSetPoolDefaults)) == 0, and falls through when v0(=ret(dmBufferSetPoolDefaults)) != 0.
  The `beq` branch at 0x404f58 targets 0x4051d0 and is always taken.
  The `beq` branch at 0x404f90 targets 0x404fa0, is taken when v0(=ret(dmBufferCreatePool)) == 0, and falls through when v0(=ret(dmBufferCreatePool)) != 0.
  The `beq` branch at 0x404f98 targets 0x4051d0 and is always taken.
  The `beq` branch at 0x404fe4 targets 0x405040, is taken when v0(=ret(vice_dmbuf_outpool)) == 0, and falls through when v0(=ret(vice_dmbuf_outpool)) != 0.
  The `beq` branch at 0x404fec targets 0x4051d0 and is always taken.
  The `beql` branch at 0x404ff8 targets 0x405040, is taken when a0(=[a0+16]) == 0, and falls through when a0(=[a0+16]) != 0; its branch-likely delay slot `sw zero,24(s0)` at 0x404ffc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x40502c targets 0x40503c, is taken when v0(=ret(vice_dmbuf_outpool)) == 0, and falls through when v0(=ret(vice_dmbuf_outpool)) != 0.
  The `beq` branch at 0x405034 targets 0x4051d0 and is always taken.
  The `bltz` branch at 0x40508c targets 0x4050c0, is taken when a1(?) < 0 (signed), and falls through when a1(?) >= 0 (signed).
  The `beq` branch at 0x4050a0 targets 0x4050b8, is taken when a3(=0xff) == a2(?), and falls through when a3(=0xff) != a2(?).
  The `bne` branch at 0x4050a8 targets 0x4050c0, is taken when a2(?) != at(=0xd9), and falls through when a2(?) == at(=0xd9).
  The `beq` branch at 0x4050b0 targets 0x4050c0 and is always taken.
  The `bne` branch at 0x4050b8 targets 0x40508c, is taken when a0(?) != t0(=0x10), and falls through when a0(?) == t0(=0x10).
  The `bne` branch at 0x4050c0 targets 0x40513c, is taken when t1(=one of 0x0, 0x1) != 0, and falls through when t1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x4050cc targets 0x405114, is taken when t3(=[a0+172]) == 0, and falls through when t3(=[a0+172]) != 0.
  The `beq` branch at 0x405134 targets 0x4051d0 and is always taken.
  The `bne` branch at 0x40515c targets 0x40518c, is taken when v0(=ret(vice_dmbuf_send)) != at(=-0x1), and falls through when v0(=ret(vice_dmbuf_send)) == at(=-0x1).
  The `beq` branch at 0x405184 targets 0x4051d0 and is always taken.
  The `beq` branch at 0x40519c targets 0x4051cc, is taken when v0(=ret(vice_dms_geterrs)) == 0, and falls through when v0(=ret(vice_dms_geterrs)) != 0.
  The `beq` branch at 0x4051c4 targets 0x4051d0 and is always taken.
  The return at 0x4051dc has v0 = one of -0x1, 0x0.

- `d_recv` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x4051e4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x4051e4-0x4054d0 (748 bytes).
  It occupies 748 bytes.
  The `lw` at 0x40520c loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x40521c loads 4 bytes from a0 (arg0 at entry) +0x4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x18, including `lw` at 0x40522c, `lw` at 0x405338.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9c, including `lw` at 0x405230, `lw` at 0x405360.
  The `sw` at 0x405250 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `lw` at 0x405258 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x405260 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x405298 loads 4 bytes from a0 (arg0 at entry) +0xac.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4052a4, `lw` at 0x4052a8, `lw` at 0x4052f0.
  The `lw` at 0x40532c loads 4 bytes from a0 (arg0 at entry) +0xa4.
  The `sw` at 0x4054b0 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x405244 calls dmImageFrameSize with a0=[a0+4], a1=a1 at entry (arg1), a2=[a0+156], a3=a3 at entry (arg3).
  The `jalr` at 0x405270 calls vice_dmbuf_recv with a0=[a0], a1=sp-16, a2=?, a3=a0+216.
  The `jalr` at 0x4052b4 calls printf with a0=0x408fd4, a1=?, a2=?, a3=?.
  The `jalr` at 0x4052d4 calls dmSetError with a0=0x1776, a1=0x408ffc, a2=0x409008, a3=?.
  The `jalr` at 0x405310 calls dmSetError with a0=0x1778, a1=0x409020, a2=0x40902c, a3=?.
  The `jalr` at 0x405330 calls dmBufferSetSize with a0=?, a1=[a0+164], a2=?, a3=?.
  The `jalr` at 0x405350 calls dmImageFrameSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40536c calls dmBufferAllocate with a0=[a0+156], a1=sp-40, a2=?, a3=?.
  The `jalr` at 0x40538c calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4053a4 calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4053c4 calls dmICAnyToAny with a0=ret(dmBufferMapData), a1=ret(dmBufferMapData), a2=?, a3=?.
  The `jalr` at 0x4053e8 calls dmBufferSetSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405408 calls dmBufferGetImageType with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405420 calls dmBufferSetImageType with a0=?, a1=ret(dmBufferGetImageType), a2=?, a3=?.
  The `jalr` at 0x405444 calls dmBufferGetUSTMSCpair with a0=sp-72, a1=?, a2=?, a3=?.
  The `jalr` at 0x40547c calls dmBufferSetUSTMSCpair with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40549c calls dmBufferFree with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x405234 targets 0x40525c, is taken when t8(=[a0+24]) == 0, and falls through when t8(=[a0+24]) != 0.
  The `bne` branch at 0x405284 targets 0x4052e8, is taken when v0(=ret(vice_dmbuf_recv)) != at(=-0x1), and falls through when v0(=ret(vice_dmbuf_recv)) == at(=-0x1).
  The `beq` branch at 0x405290 targets 0x4052c0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x40529c targets 0x4052c0, is taken when t0(=[a0+172]) == 0, and falls through when t0(=[a0+172]) != 0.
  The `beq` branch at 0x4052e0 targets 0x4054b8 and is always taken.
  The `bne` branch at 0x4052f4 targets 0x405324, is taken when t2(?) != at(=0xe000), and falls through when t2(?) == at(=0xe000).
  The `beq` branch at 0x40531c targets 0x4054b8 and is always taken.
  The `beql` branch at 0x405340 targets 0x4054b8, is taken when t3(=[a0+24]) == 0, and falls through when t3(=[a0+24]) != 0; its branch-likely delay slot `lw v0,80(sp)` at 0x405344 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x405374 targets 0x405384, is taken when v0(=ret(dmBufferAllocate)) == 0, and falls through when v0(=ret(dmBufferAllocate)) != 0.
  The `beq` branch at 0x40537c targets 0x4054b8 and is always taken.
  The `beq` branch at 0x4053cc targets 0x4053dc, is taken when v0(=ret(dmICAnyToAny)) == 0, and falls through when v0(=ret(dmICAnyToAny)) != 0.
  The `beq` branch at 0x4053d4 targets 0x4054b8 and is always taken.
  The `beq` branch at 0x4053f0 targets 0x405400, is taken when v0(=ret(dmBufferSetSize)) == 0, and falls through when v0(=ret(dmBufferSetSize)) != 0.
  The `beq` branch at 0x4053f8 targets 0x4054b8 and is always taken.
  The `beq` branch at 0x405428 targets 0x405438, is taken when v0(=ret(dmBufferSetImageType)) == 0, and falls through when v0(=ret(dmBufferSetImageType)) != 0.
  The `beq` branch at 0x405430 targets 0x4054b8 and is always taken.
  The `beq` branch at 0x405484 targets 0x405494, is taken when v0(=ret(dmBufferSetUSTMSCpair)) == 0, and falls through when v0(=ret(dmBufferSetUSTMSCpair)) != 0.
  The `beq` branch at 0x40548c targets 0x4054b8 and is always taken.
  The return at 0x4054c4 has v0 = one of ?, -0x1.
  The instructions from 0x4054cc to 0x4054cc are not reached by any path from the entry, and their branches are not listed.

- `put_sof` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x4054d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x4054d0-0x4056e8 (536 bytes).
  It occupies 536 bytes.
  31 such `lw` accesses load 4 bytes from abs 0x40d340, including `lw` at 0x4054ec, `lw` at 0x4054f8, `lw` at 0x405508.
  6 such `sb` accesses store 1 byte to [0x40d340] +0x0, including `sb` at 0x4054f4, `sb` at 0x40554c, `sb` at 0x405578.
  25 such `sw` accesses store 4 bytes to abs 0x40d340, including `sw` at 0x405500, `sw` at 0x405514, `sw` at 0x40552c.
  19 such `sb` accesses store 1 byte to [0x40d340] +0x1, including `sb` at 0x405504, `sb` at 0x405518, `sb` at 0x405530.
  The `bne` branch at 0x405510 targets 0x405544, is taken when a2 != v1(=0x1), and falls through when a2 == v1(=0x1).
  The `beq` branch at 0x40553c targets 0x40556c and is always taken.
  The `bne` branch at 0x4055d8 targets 0x405618, is taken when a2 != v1(=0x1), and falls through when a2 == v1(=0x1).
  The `bne` branch at 0x405630 targets 0x40564c, is taken when a3 != 0, and falls through when a3 == 0.
  The `beq` branch at 0x405644 targets 0x405664 and is always taken.
  The return at 0x405610 has v0 = 0x40d340.
  The return at 0x4056e0 has v0 = 0x40d340.

- `put_dri` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x4056e8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x4056e8-0x405770 (136 bytes).
  It occupies 136 bytes.
  7 such `lw` accesses load 4 bytes from abs 0x40d340, including `lw` at 0x405704, `lw` at 0x40570c, `lw` at 0x405720.
  The `sb` at 0x405708 stores 1 byte to [0x40d340] +0x0.
  6 such `sw` accesses store 4 bytes to abs 0x40d340, including `sw` at 0x405718, `sw` at 0x405728, `sw` at 0x405738.
  5 such `sb` accesses store 1 byte to [0x40d340] +0x1, including `sb` at 0x40571c, `sb` at 0x40572c, `sb` at 0x40573c.
  The return at 0x405768 has v0 = 0x40d340.

- `put_sos` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x405770 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x405770-0x4058d0 (352 bytes).
  It occupies 352 bytes.
  20 such `lw` accesses load 4 bytes from abs 0x40d340, including `lw` at 0x40578c, `lw` at 0x405798, `lw` at 0x4057a8.
  4 such `sb` accesses store 1 byte to [0x40d340] +0x0, including `sb` at 0x405794, `sb` at 0x4057e8, `sb` at 0x405814.
  16 such `sw` accesses store 4 bytes to abs 0x40d340, including `sw` at 0x4057a0, `sw` at 0x4057b4, `sw` at 0x4057c8.
  12 such `sb` accesses store 1 byte to [0x40d340] +0x1, including `sb` at 0x4057a4, `sb` at 0x4057b8, `sb` at 0x4057cc.
  The `bne` branch at 0x4057b0 targets 0x4057e0, is taken when a0 != at(=0x1), and falls through when a0 == at(=0x1).
  The `beq` branch at 0x4057d8 targets 0x405808 and is always taken.
  The `bne` branch at 0x405844 targets 0x405894, is taken when a0 < 0x2 (signed), and falls through when a0 >= 0x2 (signed).
  The return at 0x4058c8 has v0 = 0x40d340.

- `put_dqt` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x4058d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x4058d0-0x405aac (476 bytes).
  It occupies 476 bytes.
  14 such `lw` accesses load 4 bytes from abs 0x40d340, including `lw` at 0x4058ec, `lw` at 0x4058fc, `lw` at 0x405914.
  5 such `sb` accesses store 1 byte to [0x40d340] +0x0, including `sb` at 0x4058f8, `sb` at 0x40597c, `sb` at 0x4059cc.
  9 such `sw` accesses store 4 bytes to abs 0x40d340, including `sw` at 0x40590c, `sw` at 0x405920, `sw` at 0x405930.
  4 such `sb` accesses store 1 byte to [0x40d340] +0x1, including `sb` at 0x405910, `sb` at 0x405924, `sb` at 0x405934.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x405958, `lbu` at 0x405980, `lbu` at 0x4059d4.
  4 such `lh` accesses load 2 bytes from ?, including `lh` at 0x40596c, `lh` at 0x4059bc, `lh` at 0x405a0c.
  The `bne` branch at 0x405988 targets 0x405994, is taken when t7(?) != 0, and falls through when t7(?) == 0.
  The `bne` branch at 0x405998 targets 0x4059ac, is taken when t7(?) != at(=-0x1), and falls through when t7(?) == at(=-0x1).
  The `bne` branch at 0x4059a0 targets 0x4059ac and is always taken.
  The `bne` branch at 0x4059d8 targets 0x4059e4, is taken when t6(?) != 0, and falls through when t6(?) == 0.
  The `bne` branch at 0x4059e8 targets 0x4059fc, is taken when t6(?) != at(=-0x1), and falls through when t6(?) == at(=-0x1).
  The `bne` branch at 0x4059f0 targets 0x4059fc and is always taken.
  The `bne` branch at 0x405a28 targets 0x405a34, is taken when t5(?) != 0, and falls through when t5(?) == 0.
  The `bne` branch at 0x405a38 targets 0x405a4c, is taken when t5(?) != at(=-0x1), and falls through when t5(?) == at(=-0x1).
  The `bne` branch at 0x405a40 targets 0x405a4c and is always taken.
  The `bne` branch at 0x405a74 targets 0x405a80, is taken when t4(?) != 0, and falls through when t4(?) == 0.
  The `bne` branch at 0x405a84 targets 0x405a98, is taken when t4(?) != at(=-0x1), and falls through when t4(?) == at(=-0x1).
  The `bne` branch at 0x405a8c targets 0x405a98 and is always taken.
  The `bne` branch at 0x405a9c targets 0x405958, is taken when v1(?) != v0(=0x40cc80), and falls through when v1(?) == v0(=0x40cc80).
  The return at 0x405aa4 has v0 = 0x40cc80.
  The instructions from 0x4059a8 to 0x4059a8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4059f8 to 0x4059f8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x405a48 to 0x405a48 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x405a94 to 0x405a94 are not reached by any path from the entry, and their branches are not listed.

- `put_dht_dc_luma` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x405aac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x405aac-0x405bc8 (284 bytes).
  It occupies 284 bytes.
  13 such `lw` accesses load 4 bytes from abs 0x40d340, including `lw` at 0x405ac8, `lw` at 0x405ad8, `lw` at 0x405af0.
  3 such `sb` accesses store 1 byte to [0x40d340] +0x0, including `sb` at 0x405ad4, `sb` at 0x405b40, `sb` at 0x405b70.
  10 such `sw` accesses store 4 bytes to abs 0x40d340, including `sw` at 0x405ae8, `sw` at 0x405afc, `sw` at 0x405b0c.
  7 such `sb` accesses store 1 byte to [0x40d340] +0x1, including `sb` at 0x405aec, `sb` at 0x405b00, `sb` at 0x405b10.
  5 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x405b30, `lbu` at 0x405b64, `lbu` at 0x405b78.
  The `bne` branch at 0x405b4c targets 0x405b30, is taken when v1(?) < v0(=0x40cc90) (unsigned), and falls through when v1(?) >= v0(=0x40cc90) (unsigned).
  The `bne` branch at 0x405bb8 targets 0x405b64, is taken when v1(?) != v0(=0x40cc9c), and falls through when v1(?) == v0(=0x40cc9c).
  The return at 0x405bc0 has v0 = 0x40cc9c.

- `put_dht_ac_luma` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x405bc8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x405bc8-0x405d18 (336 bytes).
  It occupies 336 bytes.
  15 such `lw` accesses load 4 bytes from abs 0x40d340, including `lw` at 0x405be4, `lw` at 0x405bf4, `lw` at 0x405c0c.
  3 such `sb` accesses store 1 byte to [0x40d340] +0x0, including `sb` at 0x405bf0, `sb` at 0x405c60, `sb` at 0x405cc0.
  12 such `sw` accesses store 4 bytes to abs 0x40d340, including `sw` at 0x405c04, `sw` at 0x405c1c, `sw` at 0x405c2c.
  9 such `sb` accesses store 1 byte to [0x40d340] +0x1, including `sb` at 0x405c08, `sb` at 0x405c20, `sb` at 0x405c30.
  5 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x405c50, `lbu` at 0x405cb4, `lbu` at 0x405cc8.
  The `lbu` at 0x405c80 loads 1 byte from abs 0x40ceb0.
  The `lbu` at 0x405ca0 loads 1 byte from abs 0x40ceb1.
  The `bne` branch at 0x405c6c targets 0x405c50, is taken when v1(?) < v0(=0x40ceb0) (unsigned), and falls through when v1(?) >= v0(=0x40ceb0) (unsigned).
  The `bne` branch at 0x405d08 targets 0x405cb4, is taken when v1(?) != v0(=0x40cf52), and falls through when v1(?) == v0(=0x40cf52).
  The return at 0x405d10 has v0 = 0x40cf52.

- `put_dht_dc_chroma` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x405d18 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x405d18-0x405e38 (288 bytes).
  It occupies 288 bytes.
  13 such `lw` accesses load 4 bytes from abs 0x40d340, including `lw` at 0x405d34, `lw` at 0x405d44, `lw` at 0x405d5c.
  3 such `sb` accesses store 1 byte to [0x40d340] +0x0, including `sb` at 0x405d40, `sb` at 0x405db0, `sb` at 0x405de0.
  10 such `sw` accesses store 4 bytes to abs 0x40d340, including `sw` at 0x405d54, `sw` at 0x405d6c, `sw` at 0x405d7c.
  7 such `sb` accesses store 1 byte to [0x40d340] +0x1, including `sb` at 0x405d58, `sb` at 0x405d70, `sb` at 0x405d80.
  5 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x405da0, `lbu` at 0x405dd4, `lbu` at 0x405de8.
  The `bne` branch at 0x405dbc targets 0x405da0, is taken when v1(?) < v0(=0x40cda0) (unsigned), and falls through when v1(?) >= v0(=0x40cda0) (unsigned).
  The `bne` branch at 0x405e28 targets 0x405dd4, is taken when v1(?) != v0(=0x40cdac), and falls through when v1(?) == v0(=0x40cdac).
  The return at 0x405e30 has v0 = 0x40cdac.

- `put_dht_ac_chroma` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x405e38 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x405e38-0x405f88 (336 bytes).
  It occupies 336 bytes.
  15 such `lw` accesses load 4 bytes from abs 0x40d340, including `lw` at 0x405e54, `lw` at 0x405e64, `lw` at 0x405e7c.
  3 such `sb` accesses store 1 byte to [0x40d340] +0x0, including `sb` at 0x405e60, `sb` at 0x405ed0, `sb` at 0x405f30.
  12 such `sw` accesses store 4 bytes to abs 0x40d340, including `sw` at 0x405e74, `sw` at 0x405e8c, `sw` at 0x405e9c.
  9 such `sb` accesses store 1 byte to [0x40d340] +0x1, including `sb` at 0x405e78, `sb` at 0x405e90, `sb` at 0x405ea0.
  5 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x405ec0, `lbu` at 0x405f24, `lbu` at 0x405f38.
  The `lbu` at 0x405ef0 loads 1 byte from abs 0x40cfc0.
  The `lbu` at 0x405f10 loads 1 byte from abs 0x40cfc1.
  The `bne` branch at 0x405edc targets 0x405ec0, is taken when v1(?) < v0(=0x40cfc0) (unsigned), and falls through when v1(?) >= v0(=0x40cfc0) (unsigned).
  The `bne` branch at 0x405f78 targets 0x405f24, is taken when v1(?) != v0(=0x40d062), and falls through when v1(?) == v0(=0x40d062).
  The return at 0x405f80 has v0 = 0x40d062.

- `put_app1_qtmja` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x405f88 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x405f88-0x4062a4 (796 bytes).
  It occupies 796 bytes.
  45 such `lw` accesses load 4 bytes from abs 0x40d340, including `lw` at 0x405fa4, `lw` at 0x405fb4, `lw` at 0x405fcc.
  The `sb` at 0x405fb0 stores 1 byte to [0x40d340] +0x0.
  44 such `sw` accesses store 4 bytes to abs 0x40d340, including `sw` at 0x405fc4, `sw` at 0x405fd8, `sw` at 0x405fe8.
  43 such `sb` accesses store 1 byte to [0x40d340] +0x1, including `sb` at 0x405fc8, `sb` at 0x405fdc, `sb` at 0x405fec.
  The return at 0x40629c has v0 = ?.

- `put_app1_qtmja_luma` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x4062a4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x4062a4-0x4065c0 (796 bytes).
  It occupies 796 bytes.
  45 such `lw` accesses load 4 bytes from abs 0x40d340, including `lw` at 0x4062c0, `lw` at 0x4062d0, `lw` at 0x4062e8.
  The `sb` at 0x4062cc stores 1 byte to [0x40d340] +0x0.
  44 such `sw` accesses store 4 bytes to abs 0x40d340, including `sw` at 0x4062e0, `sw` at 0x4062f4, `sw` at 0x406304.
  43 such `sb` accesses store 1 byte to [0x40d340] +0x1, including `sb` at 0x4062e4, `sb` at 0x4062f8, `sb` at 0x406308.
  The return at 0x4065b8 has v0 = ?.

- `put_app0_jfif` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x4065c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x4065c0-0x40671c (348 bytes).
  It occupies 348 bytes.
  19 such `lw` accesses load 4 bytes from abs 0x40d340, including `lw` at 0x4065dc, `lw` at 0x4065ec, `lw` at 0x406604.
  The `sb` at 0x4065e8 stores 1 byte to [0x40d340] +0x0.
  18 such `sw` accesses store 4 bytes to abs 0x40d340, including `sw` at 0x4065fc, `sw` at 0x406610, `sw` at 0x406620.
  17 such `sb` accesses store 1 byte to [0x40d340] +0x1, including `sb` at 0x406600, `sb` at 0x406614, `sb` at 0x406624.
  The return at 0x406714 has v0 = 0x40d340.

- `put_app2_colspc` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x40671c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x40671c-0x406840 (292 bytes).
  It occupies 292 bytes.
  14 such `lw` accesses load 4 bytes from abs 0x40d340, including `lw` at 0x406740, `lw` at 0x406750, `lw` at 0x406768.
  The `sb` at 0x40674c stores 1 byte to [0x40d340] +0x0.
  13 such `sw` accesses store 4 bytes to abs 0x40d340, including `sw` at 0x406760, `sw` at 0x406774, `sw` at 0x406784.
  12 such `sb` accesses store 1 byte to [0x40d340] +0x1, including `sb` at 0x406764, `sb` at 0x406778, `sb` at 0x406788.
  The return at 0x406838 has v0 = ?.

- `put_com_vice` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x406840 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x406840-0x4069a4 (356 bytes).
  It occupies 356 bytes.
  19 such `lw` accesses load 4 bytes from abs 0x40d340, including `lw` at 0x40685c, `lw` at 0x40686c, `lw` at 0x406880.
  The `sb` at 0x406868 stores 1 byte to [0x40d340] +0x0.
  18 such `sw` accesses store 4 bytes to abs 0x40d340, including `sw` at 0x406878, `sw` at 0x406888, `sw` at 0x406898.
  17 such `sb` accesses store 1 byte to [0x40d340] +0x1, including `sb` at 0x40687c, `sb` at 0x40688c, `sb` at 0x40689c.
  The return at 0x40699c has v0 = 0x40d340.

- `put_com_vice_luma` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x4069a4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x4069a4-0x406f60 (1468 bytes).
  It occupies 1468 bytes.
  18 such `lw` accesses load 4 bytes from abs 0x40d340, including `lw` at 0x4069c0, `lw` at 0x4069d0, `lw` at 0x4069e4.
  The `sb` at 0x4069cc stores 1 byte to [0x40d340] +0x0.
  17 such `sw` accesses store 4 bytes to abs 0x40d340, including `sw` at 0x4069dc, `sw` at 0x4069ec, `sw` at 0x4069fc.
  16 such `sb` accesses store 1 byte to [0x40d340] +0x1, including `sb` at 0x4069e0, `sb` at 0x4069f0, `sb` at 0x406a00.
  The return at 0x406af0 has v0 = 0x40d340.
  The instructions from 0x406af8 to 0x406f5c are not reached by any path from the entry, and their branches are not listed.

- `jhead_make` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x406af8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x406af8-0x406c9c (420 bytes).
  It occupies 420 bytes.
  3 such `sw` accesses store 4 bytes to abs 0x40d340, including `sw` at 0x406b28, `sw` at 0x406b40, `sw` at 0x406b5c.
  The `sb` at 0x406b30 stores 1 byte to a0 (arg0 at entry) +0x0.
  3 such `lw` accesses load 4 bytes from abs 0x40d340, including `lw` at 0x406b34, `lw` at 0x406b48, `lw` at 0x406c88.
  The `sb` at 0x406b44 stores 1 byte to [0x40d340] +0x1.
  The `jalr` at 0x406b58 calls put_app0_jfif [0x4065c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x406b70 calls put_app1_qtmja [0x405f88] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406b88 calls put_app2_colspc [0x40671c] with a0=0x3, a1=?, a2=?, a3=?.
  The `jalr` at 0x406ba0 calls put_com_vice [0x406840] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406bbc calls put_dqt [0x4058d0] with a0=0x0, a1=a3 at entry (arg3), a2=?, a3=?.
  The `jalr` at 0x406bdc calls put_dqt [0x4058d0] with a0=0x1, a1=a3+128, a2=?, a3=?.
  The `jalr` at 0x406c00 calls put_sof [0x4054d0] with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=0x3, a3=0x0.
  The `jalr` at 0x406c14 calls put_dht_dc_luma [0x405aac] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406c28 calls put_dht_ac_luma [0x405bc8] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406c3c calls put_dht_dc_chroma [0x405d18] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406c50 calls put_dht_ac_chroma [0x405e38] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406c64 calls put_dri [0x4056e8] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406c7c calls put_sos [0x405770] with a0=0x3, a1=?, a2=?, a3=?.
  The return at 0x406c94 has v0 = [0x40d340].

- `jhead_luma_make` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x406c9c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x406c9c-0x406df8 (348 bytes).
  It occupies 348 bytes.
  3 such `sw` accesses store 4 bytes to abs 0x40d340, including `sw` at 0x406ccc, `sw` at 0x406ce4, `sw` at 0x406d00.
  The `sb` at 0x406cd4 stores 1 byte to a0 (arg0 at entry) +0x0.
  3 such `lw` accesses load 4 bytes from abs 0x40d340, including `lw` at 0x406cd8, `lw` at 0x406cec, `lw` at 0x406de4.
  The `sb` at 0x406ce8 stores 1 byte to [0x40d340] +0x1.
  The `jalr` at 0x406cfc calls put_app0_jfif [0x4065c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x406d14 calls put_app1_qtmja_luma [0x4062a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406d2c calls put_app2_colspc [0x40671c] with a0=0x3, a1=?, a2=?, a3=?.
  The `jalr` at 0x406d44 calls put_com_vice_luma [0x4069a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406d60 calls put_dqt [0x4058d0] with a0=0x0, a1=a3 at entry (arg3), a2=?, a3=?.
  The `jalr` at 0x406d84 calls put_sof [0x4054d0] with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=0x1, a3=0x0.
  The `jalr` at 0x406d98 calls put_dht_dc_luma [0x405aac] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406dac calls put_dht_ac_luma [0x405bc8] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406dc0 calls put_dri [0x4056e8] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406dd8 calls put_sos [0x405770] with a0=0x1, a1=?, a2=?, a3=?.
  The return at 0x406df0 has v0 = [0x40d340].

- `vjpeg_qfmt` in `usr/lib/dmedia/imageconverters/vicejpeg.so` at 0x406e00 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x406e00-0x406f54 (340 bytes).
  It occupies 340 bytes.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x406e08, `lw` at 0x406e60, `lw` at 0x406e78.
  5 such `sh` accesses store 2 bytes to ?, including `sh` at 0x406e48, `sh` at 0x406e74, `sh` at 0x406eac.
  The `bne` branch at 0x406e18 targets 0x406e24, is taken when t6(?) != 0, and falls through when t6(?) == 0.
  The `bne` branch at 0x406e28 targets 0x406e3c, is taken when t6(?) != at(=-0x1), and falls through when t6(?) == at(=-0x1).
  The `bne` branch at 0x406e30 targets 0x406e3c and is always taken.
  The `bne` branch at 0x406e4c targets 0x406e08, is taken when v0(?) < 0x40 (signed), and falls through when v0(?) >= 0x40 (signed).
  The `bne` branch at 0x406e80 targets 0x406e8c, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `bne` branch at 0x406e90 targets 0x406ea4, is taken when t9(?) != at(=-0x1), and falls through when t9(?) == at(=-0x1).
  The `bne` branch at 0x406e98 targets 0x406ea4 and is always taken.
  The `bne` branch at 0x406eb4 targets 0x406ec0, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bne` branch at 0x406ec4 targets 0x406ed8, is taken when t2(?) != at(=-0x1), and falls through when t2(?) == at(=-0x1).
  The `bne` branch at 0x406ecc targets 0x406ed8 and is always taken.
  The `bne` branch at 0x406ee8 targets 0x406ef4, is taken when t5(?) != 0, and falls through when t5(?) == 0.
  The `bne` branch at 0x406ef8 targets 0x406f0c, is taken when t5(?) != at(=-0x1), and falls through when t5(?) == at(=-0x1).
  The `bne` branch at 0x406f00 targets 0x406f0c and is always taken.
  The `bne` branch at 0x406f18 targets 0x406f24, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `bne` branch at 0x406f28 targets 0x406f3c, is taken when t8(?) != at(=-0x1), and falls through when t8(?) == at(=-0x1).
  The `bne` branch at 0x406f30 targets 0x406f3c and is always taken.
  The `bne` branch at 0x406f44 targets 0x406e60, is taken when v0(?) != a0(=0x40), and falls through when v0(?) == a0(=0x40).
  The return at 0x406f4c has v0 = ?.
  The instructions from 0x406e38 to 0x406e38 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x406ea0 to 0x406ea0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x406ed4 to 0x406ed4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x406f08 to 0x406f08 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x406f38 to 0x406f38 are not reached by any path from the entry, and their branches are not listed.
