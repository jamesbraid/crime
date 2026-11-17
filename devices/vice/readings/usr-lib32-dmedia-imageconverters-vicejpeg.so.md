# Readings: `usr/lib32/dmedia/imageconverters/vicejpeg.so`

One entry per routine, filed here from the reading batches by binary.

- `_poolneeds` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x401a20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x401a20-0x401a54 (52 bytes).
  It occupies 52 bytes.
  The `jalr` at 0x401a3c calls vice_dmbuf_requirements with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x401a4c has v0 = ret(vice_dmbuf_requirements).

- `init_formats` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x401a54 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x401a54-0x401ad8 (132 bytes).
  It occupies 132 bytes.
  The `sw` at 0x401ac4 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `sw` at 0x401ac8 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x401ad4 stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `jalr` at 0x401a60 calls dmParamsCreate with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401a90 calls dmParamsCreate with a0=a0+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x401aac calls dmParamsCreate with a0=a0+8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x401a68 targets 0x401a88, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x401a98 targets 0x401aa8, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x401aa0 targets 0x401a7c and is always taken.
  The `beq` branch at 0x401ab4 targets 0x401ac4, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x401abc targets 0x401a7c and is always taken.
  The `beq` branch at 0x401ad0 targets 0x401a7c and is always taken.
  The return at 0x401a74 has v0 = -0x1.
  The return at 0x401a80 has v0 = one of -0x1, 0x0.

- `free_formats` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x401ad8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x401ad8-0x401b34 (92 bytes).
  It occupies 92 bytes.
  The `lw` at 0x401af0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x401afc loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x401b08 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x401b0c loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `jalr` at 0x401aec calls dmParamsDestroy with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401af8 calls dmParamsDestroy with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0x401b04 calls dmParamsDestroy with a0=[a0+8], a1=?, a2=?, a3=?.
  The `jalr` at 0x401b1c calls dmBufferDestroyPool with a0=[a0+12], a1=?, a2=?, a3=?.
  The `beq` branch at 0x401b10 targets 0x401b28, is taken when a0(=[a0+12]) == 0, and falls through when a0(=[a0+12]) != 0.
  The return at 0x401b2c has v0 = one of ret(dmParamsDestroy), ret(dmBufferDestroyPool).

- `required_params` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x401b34 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x401b34-0x401c14 (224 bytes).
  It occupies 224 bytes.
  The `jalr` at 0x401b58 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x408000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401b74 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x408018, a2=?, a3=?.
  The `jalr` at 0x401b8c calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x408028, a2=?, a3=?.
  The `jalr` at 0x401ba8 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x408038, a2=?, a3=?.
  The `jalr` at 0x401bc0 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x408050, a2=?, a3=?.
  The `jalr` at 0x401bf4 calls dmSetError with a0=0x1773, a1=0x408068, a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x401b60 targets 0x401be8, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x401b7c targets 0x401be4, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x401b94 targets 0x401be8, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x401bb0 targets 0x401be4, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x401bc8 targets 0x401be4, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The return at 0x401bdc has v0 = 0x0.
  The return at 0x401c0c has v0 = -0x1.

- `needsConvert` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x401c14 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x401c14-0x401e34 (544 bytes).
  It occupies 544 bytes.
  The `bgezall` at 0x401c34 calls required_params [0x401b34] with a0=a0 at entry (arg0), a1=0x40ca50, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401c5c calls __assert with a0=0x408078, a1=0x4080a0, a2=0xad, a3=?.
  The `bgezall` at 0x401c70 calls required_params [0x401b34] with a0=a1 at entry (arg1), a1=0x40ca50, a2=?, a3=?.
  The `jalr` at 0x401c94 calls __assert with a0=0x4080b0, a1=0x4080a0, a2=0xae, a3=?.
  The `jalr` at 0x401ca8 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x408018, a2=?, a3=?.
  The `jalr` at 0x401cc0 calls dmParamsGetInt with a0=a1 at entry (arg1), a1=0x408018, a2=?, a3=?.
  The `jalr` at 0x401cdc calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x408028, a2=ret(dmParamsGetInt), a3=?.
  The `jalr` at 0x401cf4 calls dmParamsGetInt with a0=a1 at entry (arg1), a1=0x408028, a2=?, a3=?.
  The `jalr` at 0x401d10 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x408050, a2=ret(dmParamsGetInt), a3=?.
  The `jalr` at 0x401d28 calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x408050, a2=?, a3=?.
  The `jalr` at 0x401d5c calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x4080d8, a2=ret(dmParamsGetEnum), a3=?.
  The `jalr` at 0x401d78 calls dmParamsIsPresent with a0=a1 at entry (arg1), a1=0x4080d8, a2=?, a3=?.
  The `jalr` at 0x401d90 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x4080d8, a2=?, a3=?.
  The `jalr` at 0x401da8 calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x4080d8, a2=?, a3=?.
  The `jalr` at 0x401dd0 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x408038, a2=?, a3=?.
  The `jalr` at 0x401de8 calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x408038, a2=?, a3=?.
  The `bne` branch at 0x401c3c targets 0x401c4c, is taken when v0(=ret(required_params)) != 0, and falls through when v0(=ret(required_params)) == 0.
  The `beq` branch at 0x401c44 targets 0x401c68 and is always taken.
  The `beq` branch at 0x401c78 targets 0x401ca0, is taken when v0(=ret(required_params)) == 0, and falls through when v0(=ret(required_params)) != 0.
  The `bne` branch at 0x401ccc targets 0x401d3c, is taken when v0(=ret(dmParamsGetInt)) != a2(=ret(dmParamsGetInt)), and falls through when v0(=ret(dmParamsGetInt)) == a2(=ret(dmParamsGetInt)).
  The `bne` branch at 0x401d00 targets 0x401d3c, is taken when a2(=ret(dmParamsGetInt)) != v0(=ret(dmParamsGetInt)), and falls through when a2(=ret(dmParamsGetInt)) == v0(=ret(dmParamsGetInt)).
  The `beq` branch at 0x401d34 targets 0x401d54, is taken when a2(=ret(dmParamsGetEnum)) == v0(=ret(dmParamsGetEnum)), and falls through when a2(=ret(dmParamsGetEnum)) != v0(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x401d64 targets 0x401dc8, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x401d80 targets 0x401dc4, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x401db4 targets 0x401dc8, is taken when a2(=ret(dmParamsGetEnum)) == v0(=ret(dmParamsGetEnum)), and falls through when a2(=ret(dmParamsGetEnum)) != v0(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x401dbc targets 0x401d40 and is always taken.
  The `beq` branch at 0x401df0 targets 0x401e1c, is taken when s1(=ret(dmParamsGetEnum)) == v0(=ret(dmParamsGetEnum)), and falls through when s1(=ret(dmParamsGetEnum)) != v0(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x401dfc targets 0x401e24, is taken when s1(=ret(dmParamsGetEnum)) == a0(=0x3e9), and falls through when s1(=ret(dmParamsGetEnum)) != a0(=0x3e9).
  The `bne` branch at 0x401e04 targets 0x401e14, is taken when s1(=ret(dmParamsGetEnum)) != a3(=0x3ea), and falls through when s1(=ret(dmParamsGetEnum)) == a3(=0x3ea).
  The `beq` branch at 0x401e0c targets 0x401e2c, is taken when v0(=ret(dmParamsGetEnum)) == a0(=0x3e9), and falls through when v0(=ret(dmParamsGetEnum)) != a0(=0x3e9).
  The `beq` branch at 0x401e14 targets 0x401d40 and is always taken.
  The `beq` branch at 0x401e1c targets 0x401d40 and is always taken.
  The `bne` branch at 0x401e24 targets 0x401e04, is taken when v0(=ret(dmParamsGetEnum)) != a3(=0x3ea), and falls through when v0(=ret(dmParamsGetEnum)) == a3(=0x3ea).
  The `beq` branch at 0x401e2c targets 0x401d40 and is always taken.
  The return at 0x401d4c has v0 = one of 0x0, 0x1.

- `verify_size` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x401e34 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x401e34-0x401f7c (328 bytes).
  It occupies 328 bytes.
  The `jalr` at 0x401e48 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x408018, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401e88 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x408028, a2=?, a3=0x8000.
  The `jalr` at 0x401ee0 calls dmSetError with a0=0x1772, a1=0x408068, a2=0x408100, a3=?.
  The `jalr` at 0x401f0c calls dmSetError with a0=0x1772, a1=0x408068, a2=0x4080f0, a3=0x8000.
  The `jalr` at 0x401f28 calls dmImageFrameSize with a0=a0 at entry (arg0), a1=?, a2=one of 0xf3, 0x410000, a3=?.
  The `jalr` at 0x401f6c calls dmSetError with a0=0x1772, a1=0x408068, a2=0x408118, a3=?.
  The `blez` branch at 0x401e50 targets 0x401ef8, is taken when v0(=ret(dmParamsGetInt)) <= 0 (signed), and falls through when v0(=ret(dmParamsGetInt)) > 0 (signed).
  The `bne` branch at 0x401e70 targets 0x401ef8, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x401e78 targets 0x401ef8, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x401ea0 targets 0x401f24, is taken when v0(=ret(dmParamsGetInt)) == a2(=0xf3), and falls through when v0(=ret(dmParamsGetInt)) != a2(=0xf3).
  The `beq` branch at 0x401ea8 targets 0x401f28, is taken when v0(=ret(dmParamsGetInt)) == a3(=0x1e6), and falls through when v0(=ret(dmParamsGetInt)) != a3(=0x1e6).
  The `blez` branch at 0x401eb0 targets 0x401ed0, is taken when v0(=ret(dmParamsGetInt)) <= 0 (signed), and falls through when v0(=ret(dmParamsGetInt)) > 0 (signed).
  The `beq` branch at 0x401ec4 targets 0x401f28, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x401f30 targets 0x401f58, is taken when v0(=ret(dmImageFrameSize)) == 0, and falls through when v0(=ret(dmImageFrameSize)) != 0.
  The `bne` branch at 0x401f40 targets 0x401f58, is taken when a3(=0x400000) < v0(=ret(dmImageFrameSize)) (unsigned), and falls through when a3(=0x400000) >= v0(=ret(dmImageFrameSize)) (unsigned).
  The `bne` branch at 0x401f48 targets 0x401f58, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x401f50 targets 0x401f1c and is always taken.
  The `beq` branch at 0x401f74 targets 0x401f18 and is always taken.
  The return at 0x401ef0 has v0 = -0x1.
  The return at 0x401f1c has v0 = one of -0x1, 0x0.

- `verify_uncompressed` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x401f7c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x401f7c-0x40200c (144 bytes).
  It occupies 144 bytes.
  The `bgezall` at 0x401f8c calls required_params [0x401b34] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401fac calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x408000, a2=?, a3=-0x1.
  The `jalr` at 0x401fc0 calls strcmp with a0=ret(dmParamsGetString), a1=0x408130, a2=?, a3=?.
  The `jalr` at 0x401fe4 calls dmSetError with a0=0x1772, a1=0x408068, a2=0x408000, a3=?.
  The `beq` branch at 0x401f98 targets 0x401ff0, is taken when v0(=ret(required_params)) == ra(=-0x1), and falls through when v0(=ret(required_params)) != ra(=-0x1).
  The `beq` branch at 0x401fc8 targets 0x402000, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The return at 0x401ff8 has v0 = -0x1.
  The return at 0x402004 has v0 = 0x0.

- `verify_compressed` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x40200c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x40200c-0x402188 (380 bytes).
  It occupies 380 bytes.
  The `bgezall` at 0x402020 calls required_params [0x401b34] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x402040 calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x408000, a2=?, a3=?.
  The `jalr` at 0x402050 calls strcmp with a0=ret(dmParamsGetString), a1=0x40ca58, a2=?, a3=?.
  The `jalr` at 0x402068 calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x408000, a2=?, a3=?.
  The `jalr` at 0x40207c calls strcmp with a0=ret(dmParamsGetString), a1=0x408148, a2=?, a3=?.
  The `jalr` at 0x4020a0 calls dmSetError with a0=0x1772, a1=0x408068, a2=0x408000, a3=?.
  The `jalr` at 0x4020cc calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x408050, a2=?, a3=?.
  The `jalr` at 0x4020f0 calls dmSetError with a0=0x1772, a1=0x408068, a2=0x408050, a3=?.
  The `jalr` at 0x402120 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x408038, a2=0x410000, a3=?.
  The `jalr` at 0x40215c calls dmSetError with a0=0x1772, a1=0x408068, a2=0x408038, a3=0x3f0.
  The `beq` branch at 0x40202c targets 0x40210c, is taken when v0(=ret(required_params)) == ra(=-0x1), and falls through when v0(=ret(required_params)) != ra(=-0x1).
  The `beq` branch at 0x402058 targets 0x4020c0, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x402084 targets 0x4020c4, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x4020d8 targets 0x402114, is taken when v0(=ret(dmParamsGetEnum)) == a2(=0x44c), and falls through when v0(=ret(dmParamsGetEnum)) != a2(=0x44c).
  The `beq` branch at 0x40210c targets 0x4020b0 and is always taken.
  The `beq` branch at 0x402130 targets 0x40216c, is taken when v0(=ret(dmParamsGetEnum)) == a2(=0x3ea), and falls through when v0(=ret(dmParamsGetEnum)) != a2(=0x3ea).
  The `beq` branch at 0x402138 targets 0x402170, is taken when v0(=ret(dmParamsGetEnum)) == a0(=0x3ed), and falls through when v0(=ret(dmParamsGetEnum)) != a0(=0x3ed).
  The `beq` branch at 0x402140 targets 0x402170, is taken when v0(=ret(dmParamsGetEnum)) == a3(=0x3f0), and falls through when v0(=ret(dmParamsGetEnum)) != a3(=0x3f0).
  The `beq` branch at 0x402164 targets 0x4020ac and is always taken.
  The `bgezl` branch at 0x402180 targets 0x401e34 and is always taken.
  The return at 0x4020b8 has v0 = -0x1.
  The return at 0x402104 has v0 = -0x1.

- `get_default_uncompressed` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x402188 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x402188-0x402220 (152 bytes).
  It occupies 152 bytes.
  The `jalr` at 0x4021a0 calls dmSetImageDefaults with a0=a0 at entry (arg0), a1=0x140, a2=0xf0, a3=0x3f0.
  The `jalr` at 0x4021d8 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x408050, a2=0x44c, a3=?.
  The `jalr` at 0x402200 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x408000, a2=0x408130, a3=?.
  The `beq` branch at 0x4021a8 targets 0x4021c8, is taken when v0(=ret(dmSetImageDefaults)) == 0, and falls through when v0(=ret(dmSetImageDefaults)) != 0.
  The `beq` branch at 0x4021e0 targets 0x4021f0, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x4021e8 targets 0x4021bc and is always taken.
  The `beq` branch at 0x402208 targets 0x402218, is taken when v0(=ret(dmParamsSetString)) == 0, and falls through when v0(=ret(dmParamsSetString)) != 0.
  The `beq` branch at 0x402210 targets 0x4021bc and is always taken.
  The `beq` branch at 0x402218 targets 0x4021bc and is always taken.
  The return at 0x4021b4 has v0 = -0x1.
  The return at 0x4021c0 has v0 = one of -0x1, 0x0.

- `get_default_compressed` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x402220 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x402220-0x4022b4 (148 bytes).
  It occupies 148 bytes.
  The `jalr` at 0x402238 calls dmSetImageDefaults with a0=a0 at entry (arg0), a1=0x140, a2=0xf0, a3=0x3f0.
  The `jalr` at 0x402270 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x408050, a2=0x44c, a3=?.
  The `jalr` at 0x402294 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x408000, a2=0x40ca58, a3=?.
  The `beq` branch at 0x402240 targets 0x402260, is taken when v0(=ret(dmSetImageDefaults)) == 0, and falls through when v0(=ret(dmSetImageDefaults)) != 0.
  The `beq` branch at 0x402278 targets 0x402288, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x402280 targets 0x402254 and is always taken.
  The `beq` branch at 0x40229c targets 0x4022ac, is taken when v0(=ret(dmParamsSetString)) == 0, and falls through when v0(=ret(dmParamsSetString)) != 0.
  The `beq` branch at 0x4022a4 targets 0x402254 and is always taken.
  The `beq` branch at 0x4022ac targets 0x402254 and is always taken.
  The return at 0x40224c has v0 = -0x1.
  The return at 0x402258 has v0 = one of -0x1, 0x0.

- `dmICInitDso` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x4022b4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x4022b4-0x40239c (232 bytes).
  It occupies 232 bytes.
  The `ld` at 0x4022d4 loads 8 bytes from abs 0x40c7d8.
  The `ld` at 0x4022dc loads 8 bytes from abs 0x40c810.
  The `ld` at 0x4022e0 loads 8 bytes from abs 0x40c808.
  The `ld` at 0x4022e4 loads 8 bytes from abs 0x40c800.
  The `ld` at 0x4022e8 loads 8 bytes from abs 0x40c7f8.
  The `ld` at 0x4022ec loads 8 bytes from abs 0x40c7f0.
  The `ld` at 0x4022f0 loads 8 bytes from abs 0x40c7e8.
  The `ld` at 0x4022f4 loads 8 bytes from abs 0x40c7e0.
  The `ld` at 0x4022f8 loads 8 bytes from abs 0x40c818.
  The `lw` at 0x402300 loads 4 bytes from abs 0x40c820.
  The `ld` at 0x40231c loads 8 bytes from abs 0x40c860.
  The `ld` at 0x402320 loads 8 bytes from abs 0x40c858.
  The `ld` at 0x402324 loads 8 bytes from abs 0x40c850.
  The `ld` at 0x402328 loads 8 bytes from abs 0x40c848.
  The `ld` at 0x40232c loads 8 bytes from abs 0x40c840.
  The `ld` at 0x402330 loads 8 bytes from abs 0x40c838.
  The `ld` at 0x402334 loads 8 bytes from abs 0x40c830.
  The `ld` at 0x402338 loads 8 bytes from abs 0x40c828.
  The `ld` at 0x40233c loads 8 bytes from abs 0x40c868.
  The `lw` at 0x402344 loads 4 bytes from abs 0x40c870.
  The `jalr` at 0x402304 calls dmICRegisterConverter with a0=[0x40c7d8]:8, a1=[0x40c7e0]:8, a2=[0x40c7e8]:8, a3=[0x40c7f0]:8, a4=[0x40c7f8]:8, a5=[0x40c800]:8, a6=[0x40c808]:8, a7=[0x40c810]:8.
  The `jalr` at 0x402348 calls dmICRegisterConverter with a0=[0x40c828]:8, a1=[0x40c830]:8, a2=[0x40c838]:8, a3=[0x40c840]:8, a4=[0x40c848]:8, a5=[0x40c850]:8, a6=[0x40c858]:8, a7=[0x40c860]:8.
  The `jalr` at 0x402380 calls dmSetError with a0=0x1774, a1=0x408068, a2=0x408158, a3=?.
  The `bltz` branch at 0x40230c targets 0x40236c, is taken when v0(=ret(dmICRegisterConverter)) < 0 (signed), and falls through when v0(=ret(dmICRegisterConverter)) >= 0 (signed).
  The `bltz` branch at 0x402350 targets 0x402370, is taken when v0(=ret(dmICRegisterConverter)) < 0 (signed), and falls through when v0(=ret(dmICRegisterConverter)) >= 0 (signed).
  The return at 0x402364 has v0 = 0x0.
  The return at 0x402394 has v0 = -0x1.

- `e_open` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x40239c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x40239c-0x402670 (724 bytes).
  It occupies 724 bytes.
  The `sw` at 0x40243c stores 4 bytes to ret(calloc) +0x11c.
  The `sw` at 0x4024b0 stores 4 bytes to ret(calloc) +0x0.
  The `sw` at 0x4024f8 stores 4 bytes to ret(calloc) +0x108.
  The `lw` at 0x40254c loads 4 bytes from ret(calloc) +0x108.
  The `lw` at 0x4025ac loads 4 bytes from ret(calloc) +0x0.
  The `sw` at 0x4025b4 stores 4 bytes to ret(calloc) +0xa0.
  The `sw` at 0x4025d0 stores 4 bytes to ret(calloc) +0xb4.
  The `sw` at 0x4025e0 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x4023bc calls vice_get_lib_rev with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4023ec calls dmSetError with a0=0x1774, a1=0x408068, a2=0x408178, a3=0x6b7a.
  The `jalr` at 0x402414 calls calloc with a0=0x1, a1=0x120, a2=?, a3=?.
  The `bgezall` at 0x402438 calls init_formats [0x401a54] with a0=ret(calloc)+4, a1=?, a2=?, a3=a0 at entry (arg0).
  The `jalr` at 0x402458 calls dmSetError with a0=0x1774, a1=0x408068, a2=0x4081a8, a3=?.
  The `jalr` at 0x402464 calls free with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x402488 calls dmSetError with a0=0x1774, a1=0x408068, a2=0x408198, a3=?.
  The `jalr` at 0x4024a0 calls vice_open_and_setetc with a0=0x4081d8, a1=?, a2=0x410000, a3=?.
  The `jalr` at 0x4024bc calls vice_alloc with a0=ret(vice_open_and_setetc), a1=0x1, a2=?, a3=?.
  The `jalr` at 0x4024d4 calls vice_mmap with a0=?, a1=ret(vice_alloc), a2=0x1, a3=?.
  The `jalr` at 0x4024f4 calls vice_settlb with a0=?, a1=0x7e, a2=?, a3=0x1, a4=sp-80.
  The `jalr` at 0x402514 calls dmSetError with a0=0x1774, a1=0x408068, a2=0x408208, a3=?.
  The `bgezall` at 0x402524 calls e_cleanup [0x402670] with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x40253c calls vice_file with a0=0x408228, a1=?, a2=0x410000, a3=?.
  The `jalr` at 0x402550 calls __vu_readfile with a0=ret(vice_file), a1=[ret(calloc)+264], a2=0x1e00, a3=?.
  The `jalr` at 0x402578 calls dmSetError with a0=0x1774, a1=0x408068, a2=0x408238, a3=?.
  The `bgezall` at 0x402588 calls e_cleanup [0x402670] with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x4025a8 calls vice_event_init with a0=[ret(calloc)], a1=ret(calloc)+184, a2=ret(calloc)+224, a3=0x40, a4=0x40.
  The `jalr` at 0x4025c0 calls getenv with a0=0x408270, a1=?, a2=?, a3=?.
  The `jalr` at 0x4025f8 calls dmSetError with a0=0x1774, a1=0x408068, a2=0x4081e8, a3=?.
  The `bgezall` at 0x402608 calls free_formats [0x401ad8] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x402614 calls free with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x40262c calls printf with a0=0x408280, a1=?, a2=?, a3=?.
  The `jalr` at 0x402650 calls dmSetError with a0=0x1774, a1=0x408068, a2=0x408258, a3=?.
  The `bgezall` at 0x402660 calls e_cleanup [0x402670] with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `beq` branch at 0x4023cc targets 0x40240c, is taken when v0(?) == v1(=0x6b7a), and falls through when v0(?) != v1(=0x6b7a).
  The `beq` branch at 0x40241c targets 0x402474, is taken when v0(=ret(calloc)) == 0, and falls through when v0(=ret(calloc)) != 0.
  The `beq` branch at 0x402440 targets 0x402498, is taken when v0(=ret(init_formats)) == 0, and falls through when v0(=ret(init_formats)) != 0.
  The `beq` branch at 0x40246c targets 0x4023f8 and is always taken.
  The `beq` branch at 0x402490 targets 0x4023f8 and is always taken.
  The `bltz` branch at 0x4024ac targets 0x4025e4, is taken when v0(=ret(vice_open_and_setetc)) < 0 (signed), and falls through when v0(=ret(vice_open_and_setetc)) >= 0 (signed).
  The `beq` branch at 0x4024fc targets 0x402534, is taken when v0(=ret(vice_settlb)) == 0, and falls through when v0(=ret(vice_settlb)) != 0.
  The `beq` branch at 0x40252c targets 0x4023f8 and is always taken.
  The `beq` branch at 0x40255c targets 0x402598, is taken when v0(=ret(__vu_readfile)) == a1(=0x1e00), and falls through when v0(=ret(__vu_readfile)) != a1(=0x1e00).
  The `beq` branch at 0x402590 targets 0x4023f8 and is always taken.
  The `bltz` branch at 0x4025b0 targets 0x40263c, is taken when v0(=ret(vice_event_init)) < 0 (signed), and falls through when v0(=ret(vice_event_init)) >= 0 (signed).
  The `bne` branch at 0x4025cc targets 0x402624, is taken when v0(=ret(getenv)) != 0, and falls through when v0(=ret(getenv)) == 0.
  The `beq` branch at 0x4025dc targets 0x4023f8 and is always taken.
  The `beq` branch at 0x40261c targets 0x4023f8 and is always taken.
  The `beq` branch at 0x402634 targets 0x4025d8 and is always taken.
  The `beq` branch at 0x402668 targets 0x4023f8 and is always taken.
  The return at 0x402404 has v0 = one of -0x1, 0x0.

- `e_cleanup` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x402670 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x402670-0x4026d8 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x40268c loads 4 bytes from a0 (arg0 at entry) +0x108.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x4026a0, `lw` at 0x4026ac.
  The `jalr` at 0x402688 calls munmap with a0=[a0+264], a1=0x10000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40269c calls vice_event_uninit with a0=[a0], a1=a0+184, a2=a0+224, a3=?.
  The `jalr` at 0x4026a8 calls vice_close with a0=[a0], a1=?, a2=?, a3=?.
  The `bgezall` at 0x4026b8 calls free_formats [0x401ad8] with a0=a0+4, a1=?, a2=?, a3=?.
  Calls free via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jr` at 0x4026d0).

- `e_close` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x4026d8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x4026d8-0x40272c (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x4026dc loads 4 bytes from a0 (arg0 at entry) +0xb4.
  The `jalr` at 0x402704 calls printf with a0=0x4082a0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x402714 calls e_cleanup [0x402670] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x4026f4 targets 0x40270c, is taken when at(=[a0+180]) == 0, and falls through when at(=[a0+180]) != 0.
  The return at 0x402724 has v0 = ret(e_cleanup).

- `e_describe` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x40272c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x40272c-0x4027f4 (200 bytes).
  It occupies 200 bytes.
  The `jalr` at 0x40275c calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x4082c0, a2=0x6a706567, a3=0x121a4.
  The `jalr` at 0x402774 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x4082d0, a2=0x40ca60, a3=?.
  The `jalr` at 0x40278c calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x4082e0, a2=0x1, a3=?.
  The `jalr` at 0x4027a4 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x4082f0, a2=0x1, a3=?.
  The `jalr` at 0x4027bc calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x408308, a2=0x0, a3=?.
  The `jalr` at 0x4027d4 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x408318, a2=0x1, a3=?.
  The return at 0x4027ec has v0 = 0x0.

- `e_dstpoolis` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x4027f4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x4027f4-0x402890 (156 bytes).
  It occupies 156 bytes.
  The `sw` at 0x4027f8 stores 4 bytes to a0 (arg0 at entry) +0x98.
  The `sw` at 0x402834 stores 4 bytes to a0 (arg0 at entry) +0x9c.
  The `lw` at 0x402878 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x402820 calls dmBufferGetAllocSize with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40284c calls dmSetError with a0=0x1772, a1=0x408068, a2=0x408328, a3=0x3e0000.
  The `jalr` at 0x402874 calls vice_dmbuf_outpool with a0=[a0], a1=a1 at entry (arg1), a2=?, a3=0x3e0000.
  The `beq` branch at 0x402830 targets 0x40286c, is taken when a3(=0x3e0000) >= v0(=ret(dmBufferGetAllocSize)) (signed), and falls through when a3(=0x3e0000) < v0(=ret(dmBufferGetAllocSize)) (signed).
  The return at 0x402864 has v0 = -0x1.
  The return at 0x402888 has v0 = ret(vice_dmbuf_outpool).

- `e_fd` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x402890 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x402890-0x402898 (8 bytes).
  It occupies 8 bytes.
  The `lw` at 0x402894 loads 4 bytes from a0 (arg0 at entry) +0xa0.
  The return at 0x402890 has v0 = [a0+160].

- `e_getsrcfilled` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x402898 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x402898-0x4028ec (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x4028b0 loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `jalr` at 0x4028b8 calls dmFifoNfilled with a0=[a0+184], a1=sp-32, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x4028c0 targets 0x4028d8, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The return at 0x4028d0 has v0 = -0x1.
  The return at 0x4028e4 has v0 = ?.

- `e_getdstfilled` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x4028ec (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x4028ec-0x402940 (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x402904 loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `jalr` at 0x40290c calls dmFifoNfilled with a0=[a0+224], a1=sp-32, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x402914 targets 0x402930, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The return at 0x402928 has v0 = -0x1.
  The return at 0x402938 has v0 = ?.

- `e_verifysrc` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x402940 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x402940-0x4029ac (108 bytes).
  It occupies 108 bytes.
  The `bgezall` at 0x402964 calls verify_uncompressed [0x401f7c] with a0=a0 at entry (arg0), a1=0x40ca68, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x402994 calls verify_size [0x401e34] with a0=a0 at entry (arg0), a1=?, a2=?, a3=-0x1.
  The `bne` branch at 0x402974 targets 0x40298c, is taken when v0(=ret(verify_uncompressed)) != at(=-0x1), and falls through when v0(=ret(verify_uncompressed)) == at(=-0x1).
  The return at 0x402984 has v0 = -0x1.
  The return at 0x4029a4 has v0 = ret(verify_size).

- `e_verifydst` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x4029ac (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x4029ac-0x4029e4 (56 bytes).
  It occupies 56 bytes.
  The `bgezall` at 0x4029cc calls verify_compressed [0x40200c] with a0=a0 at entry (arg0), a1=0x40ca6c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x4029dc has v0 = ret(verify_compressed).

- `e_verifycvt` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x4029e4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x4029e4-0x402ae8 (260 bytes).
  It occupies 260 bytes.
  The `jalr` at 0x402a0c calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x408340, a2=0x11eec, a3=a3 at entry (arg3).
  The `jalr` at 0x402a24 calls dmParamsGetFloat with a0=a0 at entry (arg0), a1=0x408340, a2=?, a3=?.
  The `jalr` at 0x402a5c calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x408360, a2=?, a3=?.
  The `jalr` at 0x402a74 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x408360, a2=?, a3=?.
  The `jalr` at 0x402aac calls dmSetError with a0=0x1772, a1=0x408068, a2=0x40ca70, a3=?.
  The `jalr` at 0x402ad8 calls dmSetError with a0=0x1772, a1=0x408068, a2=0x40ca78, a3=?.
  The `beq` branch at 0x402a14 targets 0x402a50, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `bc1t` branch at 0x402a3c targets 0x402a9c, is taken when f0(=ret(dmParamsGetFloat)) < f1 (c.lt.d at 0x402a34), and falls through when not (f0(=ret(dmParamsGetFloat)) < f1 (c.lt.d at 0x402a34)).
  The `bc1t` branch at 0x402a4c targets 0x402a9c, is taken when f5(=0x3ff0000000000000) < f0 (c.lt.d at 0x402a44), and falls through when not (f5(=0x3ff0000000000000) < f0 (c.lt.d at 0x402a44)).
  The `beq` branch at 0x402a64 targets 0x402a84, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `bltz` branch at 0x402a7c targets 0x402acc, is taken when v0(=ret(dmParamsGetInt)) < 0 (signed), and falls through when v0(=ret(dmParamsGetInt)) >= 0 (signed).
  The `beq` branch at 0x402ae0 targets 0x402a88 and is always taken.
  The return at 0x402a94 has v0 = one of -0x1, 0x0.
  The return at 0x402ac4 has v0 = -0x1.

- `e_verifysrcdstcvt` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x402ae8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x402ae8-0x402c4c (356 bytes).
  It occupies 356 bytes.
  The `bgezall` at 0x402b2c calls e_verifycvt [0x4029e4] with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `jalr` at 0x402b60 calls dmParamsIsPresent with a0=a2 at entry (arg2), a1=0x408360, a2=?, a3=?.
  The `jalr` at 0x402b78 calls dmParamsGetInt with a0=a2 at entry (arg2), a1=0x408360, a2=?, a3=?.
  The `jalr` at 0x402b94 calls dmParamsIsPresent with a0=a1 at entry (arg1), a1=0x408378, a2=?, a3=?.
  The `jalr` at 0x402bb0 calls dmParamsIsPresent with a0=a1 at entry (arg1), a1=0x4080d8, a2=0x410000, a3=?.
  The `bgezall` at 0x402bd0 calls e_verifysrc [0x402940] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x402bec calls e_verifydst [0x4029ac] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x402c1c calls dmSetError with a0=0x1773, a1=0x408068, a2=0x408388, a3=?.
  The `jalr` at 0x402c3c calls dmSetError with a0=0x1773, a1=0x408068, a2=0x4083b8, a3=?.
  The `bne` branch at 0x402b0c targets 0x402bc8, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x402b14 targets 0x402be8, is taken when s1(=a1) != 0, and falls through when s1(=a1) == 0.
  The `beq` branch at 0x402b1c targets 0x402b58, is taken when s0(=a2) == 0, and falls through when s0(=a2) != 0.
  The `beq` branch at 0x402b34 targets 0x402b54, is taken when v0(=ret(e_verifycvt)) == 0, and falls through when v0(=ret(e_verifycvt)) != 0.
  The `beq` branch at 0x402b68 targets 0x402bc0, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x402b80 targets 0x402c04, is taken when v0(=ret(dmParamsGetInt)) == 0, and falls through when v0(=ret(dmParamsGetInt)) != 0.
  The `beq` branch at 0x402b9c targets 0x402c0c, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x402bb8 targets 0x402c2c, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x402bc0 targets 0x402b3c and is always taken.
  The `beq` branch at 0x402bd8 targets 0x402b14, is taken when v0(=ret(e_verifysrc)) == 0, and falls through when v0(=ret(e_verifysrc)) != 0.
  The `beq` branch at 0x402be0 targets 0x402b3c and is always taken.
  The `beq` branch at 0x402bf4 targets 0x402b1c, is taken when v0(=ret(e_verifydst)) == 0, and falls through when v0(=ret(e_verifydst)) != 0.
  The `beq` branch at 0x402bfc targets 0x402b3c and is always taken.
  The `beq` branch at 0x402c04 targets 0x402b3c and is always taken.
  The `beq` branch at 0x402c24 targets 0x402b3c and is always taken.
  The `beq` branch at 0x402c44 targets 0x402b3c and is always taken.
  The return at 0x402b4c has v0 = one of -0x1, 0x0.

- `e_defaultsrc` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x402c4c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x402c4c-0x402c84 (56 bytes).
  It occupies 56 bytes.
  The `bgezall` at 0x402c6c calls get_default_uncompressed [0x402188] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x402c7c has v0 = ret(get_default_uncompressed).

- `e_defaultdst` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x402c84 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x402c84-0x402cbc (56 bytes).
  It occupies 56 bytes.
  The `bgezall` at 0x402ca4 calls get_default_compressed [0x402220] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x402cb4 has v0 = ret(get_default_compressed).

- `e_defaultcvt` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x402cbc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x402cbc-0x402d68 (172 bytes).
  It occupies 172 bytes.
  The `jalr` at 0x402ce4 calls dmParamsSetFloat with a0=a0 at entry (arg0), a1=0x408340, a2=0x11c14, a3=a3 at entry (arg3); fp f14=0x3feccccccccccccd.
  The `jalr` at 0x402d24 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x4082e0, a2=0x1, a3=?.
  The `jalr` at 0x402d48 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x408360, a2=0x0, a3=?.
  The `beq` branch at 0x402cec targets 0x402d18, is taken when v0(=ret(dmParamsSetFloat)) == 0, and falls through when v0(=ret(dmParamsSetFloat)) != 0.
  The `beq` branch at 0x402d2c targets 0x402d3c, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x402d34 targets 0x402d08 and is always taken.
  The `beq` branch at 0x402d50 targets 0x402d60, is taken when v0(=ret(dmParamsSetInt)) == 0, and falls through when v0(=ret(dmParamsSetInt)) != 0.
  The `beq` branch at 0x402d58 targets 0x402d08 and is always taken.
  The `beq` branch at 0x402d60 targets 0x402d08 and is always taken.
  The return at 0x402d00 has v0 = -0x1.
  The return at 0x402d10 has v0 = one of -0x1, 0x0.

- `_e_go` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x402d68 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x402d68-0x40323c (1236 bytes).
  It occupies 1236 bytes.
  The `lw` at 0x402d70 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x402d8c loads 4 bytes from a0 (arg0 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x402d98, `lw` at 0x4030f0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x10c, including `sw` at 0x402e60, `sw` at 0x402ea0.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x402e84, `lbu` at 0x402ea4.
  The `sw` at 0x402ec8 stores 4 bytes to a0 (arg0 at entry) +0xa4.
  The `sw` at 0x402ee0 stores 4 bytes to a0 (arg0 at entry) +0xa8.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x60, including `sw` at 0x402f10, `sw` at 0x40315c, `sw` at 0x403238.
  The `lw` at 0x403010 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x40301c loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lw` at 0x403028 loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `lw` at 0x403034 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `lw` at 0x403038 loads 4 bytes from a0 (arg0 at entry) +0xa4.
  The `sw` at 0x403040 stores 4 bytes to a0 (arg0 at entry) +0x118.
  The `sw` at 0x40304c stores 4 bytes to a0 (arg0 at entry) +0x90.
  The `sw` at 0x403058 stores 4 bytes to a0 (arg0 at entry) +0x80.
  The `sw` at 0x403060 stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `sw` at 0x403068 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  The `sw` at 0x403070 stores 4 bytes to a0 (arg0 at entry) +0x84.
  The `sw` at 0x40307c stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `sw` at 0x403088 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `lw` at 0x40309c loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `sw` at 0x4030a4 stores 4 bytes to a0 (arg0 at entry) +0x8c.
  The `sw` at 0x4030b4 stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `sw` at 0x4030c4 stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `sw` at 0x4030cc stores 4 bytes to a0 (arg0 at entry) +0xac.
  The `sw` at 0x4030d8 stores 4 bytes to a0 (arg0 at entry) +0x88.
  The `sw` at 0x4030fc stores 4 bytes to a0 (arg0 at entry) +0x94.
  The `jalr` at 0x402da4 calls dmParamsIsPresent with a0=[a0+12], a1=0x408340, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x402dc4 calls dmParamsGetFloat with a0=[a0+12], a1=0x408340, a2=?, a3=?.
  The `jalr` at 0x402de8 calls dmParamsIsPresent with a0=[a0+12], a1=0x408360, a2=?, a3=?.
  The `jalr` at 0x402e04 calls dmParamsGetInt with a0=[a0+12], a1=0x408360, a2=?, a3=?.
  The `jalr` at 0x402e20 calls dmParamsIsPresent with a0=[a0+8], a1=0x408378, a2=?, a3=?.
  The `jalr` at 0x402e3c calls dmParamsIsPresent with a0=[a0+8], a1=0x4080d8, a2=0x410000, a3=?.
  The `jalr` at 0x402eb4 calls dmParamsGetInt with a0=[a0+8], a1=0x408018, a2=?, a3=?.
  The `jalr` at 0x402ecc calls dmParamsGetInt with a0=[a0+8], a1=0x408028, a2=?, a3=?.
  The `jalr` at 0x402ee4 calls dmParamsGetEnum with a0=[a0+8], a1=0x408038, a2=?, a3=?.
  The `jalr` at 0x402efc calls dmParamsIsPresent with a0=[a0+12], a1=0x408440, a2=?, a3=?.
  The `jalr` at 0x402f64 calls __assert with a0=0x408458, a1=0x4080a0, a2=0x2c9, a3=0x3e9, a4=0x3ea, a5=0x7d1, a6=0x7d2.
  The `jalr` at 0x402f80 calls dmSetError with a0=0x1777, a1=0x408068, a2=0x408468, a3=?.
  The `jalr` at 0x402fa4 calls vice_file with a0=0x408498, a1=?, a2=0x3f0, a3=?.
  The `jalr` at 0x402fc0 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=0x0.
  The `jalr` at 0x402fd0 calls vice_file with a0=0x4084a8, a1=?, a2=?, a3=?.
  The `jalr` at 0x402fe4 calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=?.
  The `jalr` at 0x402ff4 calls vice_file with a0=0x4084b8, a1=?, a2=?, a3=?.
  The `jalr` at 0x403008 calls vice_load_bsp_table with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=?.
  The `jalr` at 0x4030f8 calls vice_event_start with a0=[a0], a1=a0+32, a2=0x2, a3=[a0+84], a5=0xf3.
  The `jalr` at 0x403118 calls dmSetError with a0=0x1777, a1=0x408068, a2=0x4084e8, a3=?.
  The `jalr` at 0x403178 calls vice_file with a0=0x408478, a1=?, a2=?, a3=?.
  The `jalr` at 0x403194 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=0x0.
  The `jalr` at 0x4031a4 calls vice_file with a0=0x408488, a1=?, a2=?, a3=?.
  The `jalr` at 0x4031b8 calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=?.
  The `jalr` at 0x403200 calls dmSetError with a0=0x1777, a1=0x408068, a2=0x4084c8, a3=?.
  The `jalr` at 0x403224 calls dmSetError with a0=0x1773, a1=0x408068, a2=0x4083f0, a3=?.
  The `beq` branch at 0x402db0 targets 0x402dd4, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x402dcc targets 0x402dd8 and is always taken.
  The `beq` branch at 0x402df0 targets 0x402e88, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `blez` branch at 0x402e0c targets 0x402e8c, is taken when v0(=ret(dmParamsGetInt)) <= 0 (signed), and falls through when v0(=ret(dmParamsGetInt)) > 0 (signed).
  The `beq` branch at 0x402e28 targets 0x403214, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x402e44 targets 0x403214, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `bc1f` branch at 0x402e5c targets 0x402e68, is taken when not (f20 == f0(=ret(dmParamsIsPresent)) (c.eq.d at 0x402e54)), and falls through when f20 == f0(=ret(dmParamsIsPresent)) (c.eq.d at 0x402e54).
  The `beq` branch at 0x402e80 targets 0x402ea8 and is always taken.
  The `beq` branch at 0x402f04 targets 0x403150, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x402f0c targets 0x403164, is taken when s1(=ret(dmParamsGetEnum)) == a0(=0x3ed), and falls through when s1(=ret(dmParamsGetEnum)) != a0(=0x3ed).
  The `beq` branch at 0x402f18 targets 0x402f90, is taken when s1(=ret(dmParamsGetEnum)) == a2(=0x3f0), and falls through when s1(=ret(dmParamsGetEnum)) != a2(=0x3f0).
  The `beq` branch at 0x402f24 targets 0x4031e4, is taken when s1(=ret(dmParamsGetEnum)) == a3(=0x3e9), and falls through when s1(=ret(dmParamsGetEnum)) != a3(=0x3e9).
  The `beq` branch at 0x402f30 targets 0x4031e4, is taken when s1(=ret(dmParamsGetEnum)) == a4(=0x3ea), and falls through when s1(=ret(dmParamsGetEnum)) != a4(=0x3ea).
  The `beq` branch at 0x402f40 targets 0x4031d0, is taken when s1(=ret(dmParamsGetEnum)) == a5(=0x7d1), and falls through when s1(=ret(dmParamsGetEnum)) != a5(=0x7d1).
  The `beq` branch at 0x402f4c targets 0x4031d0, is taken when s1(=ret(dmParamsGetEnum)) == a6(=0x7d2), and falls through when s1(=ret(dmParamsGetEnum)) != a6(=0x7d2).
  The `beq` branch at 0x402f88 targets 0x403124 and is always taken.
  The `beq` branch at 0x402f94 targets 0x40316c, is taken when s1(=ret(dmParamsGetEnum)) == a0(=0x3ed), and falls through when s1(=ret(dmParamsGetEnum)) != a0(=0x3ed).
  The `beq` branch at 0x403014 targets 0x4031f0, is taken when a1(=[a0+68]) == 0, and falls through when a1(=[a0+68]) != 0.
  The `beq` branch at 0x403020 targets 0x4031f0, is taken when a2(=[a0+80]) == 0, and falls through when a2(=[a0+80]) != 0.
  The `beq` branch at 0x40302c targets 0x4031f0, is taken when a3(=[a0+84]) == 0, and falls through when a3(=[a0+84]) != 0.
  The `beq` branch at 0x4030d4 targets 0x4030ec, is taken when a0(=[a0+168]) == a5(=0xf3), and falls through when a0(=[a0+168]) != a5(=0xf3).
  The `beq` branch at 0x4030e0 targets 0x4030ec, is taken when a0(=[a0+168]) == at(=0x1e6), and falls through when a0(=[a0+168]) != at(=0x1e6).
  The `beq` branch at 0x403100 targets 0x4031c8, is taken when v0(=ret(vice_event_start)) == 0, and falls through when v0(=ret(vice_event_start)) != 0.
  The `beq` branch at 0x403154 targets 0x403234, is taken when s1(=ret(dmParamsGetEnum)) == a0(=0x3ed), and falls through when s1(=ret(dmParamsGetEnum)) != a0(=0x3ed).
  The `bne` branch at 0x403160 targets 0x402f14, is taken when s1(=ret(dmParamsGetEnum)) != a0(=0x3ed), and falls through when s1(=ret(dmParamsGetEnum)) == a0(=0x3ed).
  The `beq` branch at 0x4031c0 targets 0x402ff0 and is always taken.
  The `beq` branch at 0x4031c8 targets 0x403124 and is always taken.
  The `bne` branch at 0x4031d0 targets 0x402f9c, is taken when s1(=ret(dmParamsGetEnum)) != a0(=0x3ed), and falls through when s1(=ret(dmParamsGetEnum)) == a0(=0x3ed).
  The `beq` branch at 0x4031d8 targets 0x403170 and is always taken.
  The `beq` branch at 0x4031e4 targets 0x402f94 and is always taken.
  The `beq` branch at 0x403208 targets 0x403124 and is always taken.
  The `beq` branch at 0x40322c targets 0x403124 and is always taken.
  The `beq` branch at 0x403234 targets 0x403160 and is always taken.
  The return at 0x403148 has v0 = one of -0x1, 0x0.
  The instructions from 0x4031e0 to 0x4031e0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4031ec to 0x4031ec are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x403210 to 0x403210 are not reached by any path from the entry, and their branches are not listed.

- `dmImageCompressedSize` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x40323c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x40323c-0x40334c (272 bytes).
  It occupies 272 bytes.
  The `jalr` at 0x40325c calls dmParamsIsPresent with a0=a1 at entry (arg1), a1=0x408360, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403278 calls dmParamsGetInt with a0=a1 at entry (arg1), a1=0x408360, a2=?, a3=?.
  The `jalr` at 0x403290 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x408378, a2=?, a3=?.
  The `jalr` at 0x4032a8 calls dmParamsGetFloat with a0=a0 at entry (arg0), a1=0x408378, a2=?, a3=?.
  The `jalr` at 0x4032c0 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x4080d8, a2=?, a3=?.
  The `jalr` at 0x4032d8 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x4080d8, a2=?, a3=?.
  The `beq` branch at 0x403264 targets 0x403334, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x403298 targets 0x40333c, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x4032c8 targets 0x403344, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x4032e0 targets 0x4032f0, is taken when v0(=ret(dmParamsGetEnum)) == 0, and falls through when v0(=ret(dmParamsGetEnum)) != 0.
  The `beq` branch at 0x403334 targets 0x403320 and is always taken.
  The `beq` branch at 0x40333c targets 0x403320 and is always taken.
  The `beq` branch at 0x403344 targets 0x403320 and is always taken.
  The return at 0x40332c has v0 = one of ?, 0x0.

- `e_send` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x40334c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x40334c-0x403910 (1476 bytes).
  It occupies 1476 bytes.
  The `lw` at 0x403358 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x403360 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0x40340c stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `lw` at 0x40341c loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `lw` at 0x40342c loads 4 bytes from a0 (arg0 at entry) +0x18.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x403440, `lw` at 0x403648.
  The `lw` at 0x40344c loads 4 bytes from a0 (arg0 at entry) +0x14.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x4034ec, `lw` at 0x403680.
  The `lw` at 0x403500 loads 4 bytes from a0 (arg0 at entry) +0x10c.
  The `lw` at 0x40350c loads 4 bytes from a0 (arg0 at entry) +0x110.
  The `lw` at 0x403510 loads 4 bytes from a0 (arg0 at entry) +0x114.
  The `lw` at 0x403544 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x4035a0 stores 4 bytes to a0 (arg0 at entry) +0x118.
  The `sw` at 0x4035a4 stores 4 bytes to a0 (arg0 at entry) +0x90.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x4035c0, `lw` at 0x4035d4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14, including `sw` at 0x403630, `sw` at 0x40365c.
  The `lw` at 0x403644 loads 4 bytes from a0 (arg0 at entry) +0x11c.
  The `sw` at 0x40364c stores 4 bytes to a0 (arg0 at entry) +0x1c.
  The `sw` at 0x403688 stores 4 bytes to a0 (arg0 at entry) +0x110.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1c, including `lw` at 0x40378c, `lw` at 0x4037d0.
  The `lw` at 0x4037b8 loads 4 bytes from ?.
  The `sw` at 0x4037c8 stores 4 bytes to ?.
  The `bgezall` at 0x4033e0 calls _e_go [0x402d68] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0x403404 calls needsConvert [0x401c14] with a0=[a0+4], a1=[a0+8], a2=?, a3=?.
  The `jalr` at 0x403414 calls dmBufferGetSize with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x403438 calls dmImageFrameSize with a0=[a0+8], a1=?, a2=0x410000, a3=?.
  The `jalr` at 0x40345c calls dmBufferDestroyPool with a0=[a0+16], a1=?, a2=?, a3=?.
  The `jalr` at 0x403468 calls dmParamsCreate with a0=sp-220, a1=?, a2=?, a3=?.
  The `jalr` at 0x403488 calls dmParamsCopyAllElems with a0=a5 at entry (arg5), a1=[a0+8], a2=sym(dmParamsCopyAllElems), a3=?.
  The `jalr` at 0x4034cc calls dmParamsCopyAllElems with a0=a4 at entry (arg4), a1=[a0+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4034e8 calls dmParamsCopyAllElems with a0=a6 at entry (arg6), a1=[a0+12], a2=sym(dmParamsCopyAllElems), a3=?.
  The `jalr` at 0x4035bc calls vice_dmbuf_send with a0=[a0], a1=?, a2=a0+184, a3=a0+104, a4=0xc.
  The `jalr` at 0x4035d0 calls vice_dms_geterrs with a0=[a0], a1=?, a2=?, a3=-0x1.
  The `jalr` at 0x4035f4 calls dmSetError with a0=0x1777, a1=0x408068, a2=0x408548, a3=?.
  The `jalr` at 0x40360c calls dmBufferFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x403624 calls dmParamsGetInt with a0=?, a1=0x408520, a2=?, a3=?.
  The `jalr` at 0x403634 calls dmParamsDestroy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x403640 calls dmICGetDstQueueFD with a0=[a0+284], a1=?, a2=?, a3=?.
  The `jalr` at 0x403658 calls dmBufferAllocate with a0=[a0+16], a1=sp-224, a2=?, a3=?.
  The `bgezall` at 0x40367c calls dmImageCompressedSize [0x40323c] with a0=[a0+8], a1=[a0+12], a2=?, a3=?.
  The `jalr` at 0x4036ac calls dmSetError with a0=0x1777, a1=0x408068, a2=0x408510, a3=?.
  The `jalr` at 0x4036c8 calls dmParamsGetEnum with a0=[a0+4], a1=0x408038, a2=?, a3=?.
  The `jalr` at 0x4036f8 calls dmParamsSetEnum with a0=[a0+8], a1=0x408038, a2=?, a3=0x3f0.
  The `jalr` at 0x403710 calls dmParamsSetEnum with a0=[a0+8], a1=0x408050, a2=0x44c, a3=?.
  The `jalr` at 0x40373c calls dmSetError with a0=0x1777, a1=0x408068, a2=0x408530, a3=-0x1.
  The `jalr` at 0x40375c calls dmBufferSetPoolDefaults with a0=?, a1=0x1, a2=ret(dmImageFrameSize), a3=0x0, a4=0x1.
  The `jalr` at 0x403784 calls memset with a0=sp-200, a1=0x0, a2=0x80, a3=?.
  The `jalr` at 0x4037dc calls select with a0=[a0+28]+1, a1=sp-200, a2=0x0, a3=0x0, a4=0x0.
  The `jalr` at 0x4037f8 calls dmBufferMapData with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x403808 calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x403824 calls dmICAnyToAny with a0=ret(dmBufferMapData), a1=ret(dmBufferMapData), a2=[a0+4], a3=[a0+8], a4=0x0.
  The `bgezall` at 0x40384c calls _poolneeds [0x401a20] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x40385c calls dmBufferCreatePool with a0=?, a1=a0+16, a2=?, a3=?.
  The `jalr` at 0x403878 calls dmBufferSetSize with a0=?, a1=ret(dmImageFrameSize), a2=?, a3=?.
  The `jalr` at 0x4038a0 calls dmSetError with a0=0x1777, a1=0x408068, a2=0x408558, a3=?.
  The `jalr` at 0x4038b0 calls dmBufferGetImageType with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x4038c0 calls dmBufferSetImageType with a0=?, a1=ret(dmBufferGetImageType), a2=?, a3=?.
  The `jalr` at 0x4038d8 calls dmBufferGetUSTMSCpair with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x4038f8 calls dmBufferSetUSTMSCpair with a0=?, a1=ret(dmBufferGetUSTMSCpair), a2=?, a3=?.
  The `bne` branch at 0x40339c targets 0x4034c4, is taken when a4 != 0, and falls through when a4 == 0.
  The `bne` branch at 0x4033a4 targets 0x403480, is taken when s2(=a5) != 0, and falls through when s2(=a5) == 0.
  The `bne` branch at 0x4033ac targets 0x4034e4, is taken when s3(=a6) != 0, and falls through when s3(=a6) == 0.
  The `bne` branch at 0x4033b4 targets 0x4033d4, is taken when s6(=a4) != 0, and falls through when s6(=a4) == 0.
  The `bne` branch at 0x4033bc targets 0x4033dc, is taken when s2(=a5) != 0, and falls through when s2(=a5) == 0.
  The `bne` branch at 0x4033c4 targets 0x4033fc, is taken when s3(=a6) != 0, and falls through when s3(=a6) == 0.
  The `beq` branch at 0x4033cc targets 0x403414 and is always taken.
  The `beq` branch at 0x4033d4 targets 0x4033f8, is taken when s2(=a5) == 0, and falls through when s2(=a5) != 0.
  The `beq` branch at 0x4033ec targets 0x403774, is taken when v0(=ret(_e_go)) == ra(=-0x1), and falls through when v0(=ret(_e_go)) != ra(=-0x1).
  The `bne` branch at 0x4033f4 targets 0x403670, is taken when s3(=a6) != 0, and falls through when s3(=a6) == 0.
  The `bne` branch at 0x403424 targets 0x40369c, is taken when v0(=ret(dmBufferGetSize)) < ra(=[a0+172]) (signed), and falls through when v0(=ret(dmBufferGetSize)) >= ra(=[a0+172]) (signed).
  The `beq` branch at 0x403430 targets 0x403500, is taken when at(=[a0+24]) == 0, and falls through when at(=[a0+24]) != 0.
  The `beq` branch at 0x403444 targets 0x403464, is taken when a0(=[a0+16]) == 0, and falls through when a0(=[a0+16]) != 0.
  The `beq` branch at 0x403454 targets 0x403650, is taken when v0(=[a0+20]) >= s2(=ret(dmImageFrameSize)) (signed), and falls through when v0(=[a0+20]) < s2(=ret(dmImageFrameSize)) (signed).
  The `beq` branch at 0x403470 targets 0x40374c, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x403478 targets 0x403498 and is always taken.
  The `beq` branch at 0x403490 targets 0x4036bc, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x4034d4 targets 0x4033a4, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x4034dc targets 0x403498 and is always taken.
  The `beq` branch at 0x4034f0 targets 0x4033b4, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x4034f8 targets 0x403498 and is always taken.
  The `beq` branch at 0x403504 targets 0x4035ac, is taken when v1(=[a0+268]) == 0, and falls through when v1(=[a0+268]) != 0.
  The `bc1f` branch at 0x403548 targets 0x403578, is taken when not (f5 < f4 (c.lt.s at 0x40353c)), and falls through when f5 < f4 (c.lt.s at 0x40353c).
  The `bc1f` branch at 0x403558 targets 0x4035a0, is taken when not (f5(=0x4024000000000000) < f4 (c.lt.d at 0x403550)), and falls through when f5(=0x4024000000000000) < f4 (c.lt.d at 0x403550).
  The `bne` branch at 0x403568 targets 0x4035a0, is taken when v0(=[a0+280]+4) < 0x1b (signed), and falls through when v0(=[a0+280]+4) >= 0x1b (signed).
  The `beq` branch at 0x403570 targets 0x4035a0 and is always taken.
  The `bc1f` branch at 0x40358c targets 0x4035a0, is taken when not (f5(=0x4024000000000000) < f6 (c.lt.d at 0x403584)), and falls through when f5(=0x4024000000000000) < f6 (c.lt.d at 0x403584).
  The `bltz` branch at 0x403598 targets 0x40383c, is taken when v0(=[a0+280]-1) < 0 (signed), and falls through when v0(=[a0+280]-1) >= 0 (signed).
  The `beq` branch at 0x4035c8 targets 0x403728, is taken when v0(=ret(vice_dmbuf_send)) == a3(=-0x1), and falls through when v0(=ret(vice_dmbuf_send)) != a3(=-0x1).
  The `beq` branch at 0x4035d8 targets 0x40368c, is taken when v0(=ret(vice_dms_geterrs)) == 0, and falls through when v0(=ret(vice_dms_geterrs)) != 0.
  The `beq` branch at 0x403604 targets 0x403614, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x403614 targets 0x403498 and is always taken.
  The `beq` branch at 0x403660 targets 0x4037f4, is taken when v0(=ret(dmBufferAllocate)) == 0, and falls through when v0(=ret(dmBufferAllocate)) != 0.
  The `beq` branch at 0x403668 targets 0x403498 and is always taken.
  The `beq` branch at 0x403684 targets 0x4033f8 and is always taken.
  The `bne` branch at 0x40368c targets 0x40377c, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x403694 targets 0x403600 and is always taken.
  The `beq` branch at 0x4036b4 targets 0x403498 and is always taken.
  The `beq` branch at 0x4036d4 targets 0x4036ec, is taken when v0(=ret(dmParamsGetEnum)) == a3(=0x3f0), and falls through when v0(=ret(dmParamsGetEnum)) != a3(=0x3f0).
  The `beq` branch at 0x4036e0 targets 0x4036f0, is taken when v0(=ret(dmParamsGetEnum)) == a4(=0x3ed), and falls through when v0(=ret(dmParamsGetEnum)) != a4(=0x3ed).
  The `beq` branch at 0x403718 targets 0x4033ac, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x403720 targets 0x403498 and is always taken.
  The `beq` branch at 0x403744 targets 0x403600 and is always taken.
  The `beq` branch at 0x403764 targets 0x403844, is taken when v0(=ret(dmBufferSetPoolDefaults)) == 0, and falls through when v0(=ret(dmBufferSetPoolDefaults)) != 0.
  The `beq` branch at 0x40376c targets 0x403498 and is always taken.
  The `beq` branch at 0x403774 targets 0x403498 and is always taken.
  The `blez` branch at 0x4037e4 targets 0x403890, is taken when v0(=ret(select)) <= 0 (signed), and falls through when v0(=ret(select)) > 0 (signed).
  The `beq` branch at 0x4037ec targets 0x403600 and is always taken.
  The `beq` branch at 0x40382c targets 0x403874, is taken when v0(=ret(dmICAnyToAny)) == 0, and falls through when v0(=ret(dmICAnyToAny)) != 0.
  The `beq` branch at 0x403834 targets 0x403498 and is always taken.
  The `beq` branch at 0x40383c targets 0x4035a0 and is always taken.
  The `beq` branch at 0x403864 targets 0x40361c, is taken when v0(=ret(dmBufferCreatePool)) == 0, and falls through when v0(=ret(dmBufferCreatePool)) != 0.
  The `beq` branch at 0x40386c targets 0x403498 and is always taken.
  The `beq` branch at 0x403880 targets 0x4038b0, is taken when v0(=ret(dmBufferSetSize)) == 0, and falls through when v0(=ret(dmBufferSetSize)) != 0.
  The `beq` branch at 0x403888 targets 0x403498 and is always taken.
  The `beq` branch at 0x4038a8 targets 0x403600 and is always taken.
  The `beq` branch at 0x4038c8 targets 0x4038d8, is taken when v0(=ret(dmBufferSetImageType)) == 0, and falls through when v0(=ret(dmBufferSetImageType)) != 0.
  The `beq` branch at 0x4038d0 targets 0x403498 and is always taken.
  The `beq` branch at 0x403900 targets 0x403500, is taken when v0(=ret(dmBufferSetUSTMSCpair)) == 0, and falls through when v0(=ret(dmBufferSetUSTMSCpair)) != 0.
  The `beq` branch at 0x403908 targets 0x403498 and is always taken.
  The return at 0x4034bc has v0 = one of -0x1, 0x0.

- `e_recv` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x403910 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x403910-0x403c10 (768 bytes).
  It occupies 768 bytes.
  The `lw` at 0x403920 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x403950 loads 4 bytes from a0 (arg0 at entry) +0x98.
  11 such `lw` accesses load 4 bytes from ?, including `lw` at 0x403964, `lw` at 0x403974, `lw` at 0x403988.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb4, including `lw` at 0x4039a0, `lw` at 0x403a1c, `lw` at 0x403ab0.
  The `lw` at 0x4039fc loads 4 bytes from a0 (arg0 at entry) +0x60.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x403a04, `lw` at 0x403b1c, `lw` at 0x403bdc.
  The `lw` at 0x403a54 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `lw` at 0x403a58 loads 4 bytes from a0 (arg0 at entry) +0xa4.
  The `lw` at 0x403a70 loads 4 bytes from a0 (arg0 at entry) +0x108.
  The `lw` at 0x403a78 loads 4 bytes from sym(_viceid) +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10c, including `lw` at 0x403afc, `lw` at 0x403bec, `lw` at 0x403c0c.
  The `sw` at 0x403b0c stores 4 bytes to a0 (arg0 at entry) +0x114.
  The `jalr` at 0x40394c calls vice_dmbuf_recv with a0=[a0], a1=sp-64, a2=[a0+152], a3=a0+224, a4=a1 at entry (arg1).
  The `jalr` at 0x4039b8 calls printf with a0=0x4085b0, a1=?, a2=?, a3=?, a6=[a0+180].
  The `jalr` at 0x4039d4 calls dmSetError with a0=0x1777, a1=0x408068, a2=0x408620, a3=?.
  The `jalr` at 0x403a0c calls dmBufferMapData with a0=[a1], a1=?, a2=0x410000, a3=[a0+96].
  The `jalr` at 0x403a2c calls printf with a0=0x4085d8, a1=?, a2=?, a3=?, a4=[a0+180].
  The `jalr` at 0x403a44 calls dmSetError with a0=0x1777, a1=0x408068, a2=0x40ca80, a3=?.
  The `jalr` at 0x403a94 calls jhead_make with a0=ret(dmBufferMapData), a1=[a0+164], a2=[a0+168], a3=?, a5=[sym(_viceid)].
  The `jalr` at 0x403ac8 calls printf with a0=0x4085f0, a1=?, a2=0x2c0, a3=?, a7=0x2c0.
  The `jalr` at 0x403ae0 calls dmSetError with a0=0x1777, a1=0x408068, a2=0x40ca88, a3=?.
  The `jalr` at 0x403af4 calls dmBufferSetSize with a0=[a1], a1=?, a2=0x410000, a3=[a0+96].
  The `jalr` at 0x403b18 calls dmBufferSetImageType with a0=[a1], a1=0x1, a2=[a0+268], a3=?.
  The `jalr` at 0x403b3c calls dmSetError with a0=0x1776, a1=0x408578, a2=0x408588, a3=?.
  The `jalr` at 0x403b5c calls dmSetError with a0=0x1777, a1=0x408068, a2=0x4085a0, a3=?.
  The `jalr` at 0x403b74 calls jhead_luma_make with a0=ret(dmBufferMapData), a1=[a0+164], a2=[a0+168], a3=?, a5=[sym(_viceid)].
  The `jalr` at 0x403ba8 calls printf with a0=0x4085f0, a1=?, a2=0x198, a3=0x198.
  The `jalr` at 0x403bc0 calls dmSetError with a0=0x1777, a1=0x408068, a2=0x40ca88, a3=?.
  The `jalr` at 0x403be0 calls dmBufferSetSize with a0=[a1], a1=?, a2=?, a3=?, a7=0x2c0.
  The `jalr` at 0x403c00 calls dmBufferSetSize with a0=[a1], a1=?, a2=?, a3=0x198.
  The `beq` branch at 0x403958 targets 0x403b28, is taken when v0(=ret(vice_dmbuf_recv)) == v1(=-0x1), and falls through when v0(=ret(vice_dmbuf_recv)) != v1(=-0x1).
  The `beq` branch at 0x40396c targets 0x403b4c, is taken when a1(?) == a2(=0xe000), and falls through when a1(?) != a2(=0xe000).
  The `bltz` branch at 0x403978 targets 0x4039a0, is taken when a3(?) < 0 (signed), and falls through when a3(?) >= 0 (signed).
  The `beq` branch at 0x403980 targets 0x4039a0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bltz` branch at 0x40398c targets 0x4039a0, is taken when a1(?) < 0 (signed), and falls through when a1(?) >= 0 (signed).
  The `beq` branch at 0x403998 targets 0x4039fc, is taken when a5(=0x3e0000) >= a1(?) (signed), and falls through when a5(=0x3e0000) < a1(?) (signed).
  The `beq` branch at 0x4039a4 targets 0x4039c0, is taken when a6(=[a0+180]) == 0, and falls through when a6(=[a0+180]) != 0.
  The `beq` branch at 0x403a00 targets 0x403af0, is taken when a3(=[a0+96]) == 0, and falls through when a3(=[a0+96]) != 0.
  The `bne` branch at 0x403a14 targets 0x403a54, is taken when v0(=ret(dmBufferMapData)) != 0, and falls through when v0(=ret(dmBufferMapData)) == 0.
  The `beq` branch at 0x403a20 targets 0x403a34, is taken when a4(=[a0+180]) == 0, and falls through when a4(=[a0+180]) != 0.
  The `beq` branch at 0x403a4c targets 0x4039e0 and is always taken.
  The `beq` branch at 0x403a84 targets 0x403b6c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x403aa8 targets 0x403bd0, is taken when a1(?) == a7(=0x2c0), and falls through when a1(?) != a7(=0x2c0).
  The `beq` branch at 0x403ab4 targets 0x403ad4, is taken when a2(=[a0+180]) == 0, and falls through when a2(=[a0+180]) != 0.
  The `beq` branch at 0x403ae8 targets 0x4039e0 and is always taken.
  The `beq` branch at 0x403b00 targets 0x403b10, is taken when a2(=[a0+268]) == 0, and falls through when a2(=[a0+268]) != 0.
  The `beq` branch at 0x403b20 targets 0x4039e0 and is always taken.
  The `beq` branch at 0x403b44 targets 0x4039e0 and is always taken.
  The `beq` branch at 0x403b64 targets 0x4039e0 and is always taken.
  The `beq` branch at 0x403b88 targets 0x403bf0, is taken when a1(?) == a3(=0x198), and falls through when a1(?) != a3(=0x198).
  The `beq` branch at 0x403b94 targets 0x403bb4, is taken when a2(=[a0+180]) == 0, and falls through when a2(=[a0+180]) != 0.
  The `beq` branch at 0x403bc8 targets 0x4039e0 and is always taken.
  The `beq` branch at 0x403be8 targets 0x403b00 and is always taken.
  The `beq` branch at 0x403c08 targets 0x403b00 and is always taken.
  The return at 0x4039f4 has v0 = one of -0x1, ret(dmBufferSetImageType), ?.

- `d_open` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x403c10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x403c10-0x403e0c (508 bytes).
  It occupies 508 bytes.
  The `sw` at 0x403cac stores 4 bytes to ret(calloc) +0x0.
  2 such `lw` accesses load 4 bytes from ret(calloc) +0x0, including `lw` at 0x403d40, `lw` at 0x403df4.
  The `sw` at 0x403d48 stores 4 bytes to ret(calloc) +0xa0.
  The `sw` at 0x403d64 stores 4 bytes to ret(calloc) +0xac.
  The `sw` at 0x403d74 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x403c2c calls vice_get_lib_rev with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403c5c calls dmSetError with a0=0x1774, a1=0x408068, a2=0x408178, a3=0x6b7a.
  The `jalr` at 0x403c84 calls calloc with a0=0x1, a1=0x100, a2=?, a3=?.
  The `jalr` at 0x403c9c calls vice_open_and_setetc with a0=0x4081d8, a1=?, a2=?, a3=?.
  The `bgezall` at 0x403cbc calls init_formats [0x401a54] with a0=ret(calloc)+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x403ce0 calls dmSetError with a0=0x1774, a1=0x408068, a2=0x4081a8, a3=?.
  The `jalr` at 0x403cec calls vice_close with a0=ret(vice_open_and_setetc), a1=?, a2=?, a3=?.
  The `jalr` at 0x403cf8 calls free with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x403d1c calls dmSetError with a0=0x1772, a1=0x408068, a2=0x408198, a3=?.
  The `jalr` at 0x403d3c calls vice_event_init with a0=[ret(calloc)], a1=ret(calloc)+176, a2=ret(calloc)+216, a3=0x40, a4=0x40.
  The `jalr` at 0x403d54 calls getenv with a0=0x408270, a1=?, a2=?, a3=?.
  The `jalr` at 0x403d80 calls printf with a0=0x408660, a1=?, a2=?, a3=?.
  The `jalr` at 0x403da4 calls dmSetError with a0=0x1774, a1=0x408068, a2=0x4081e8, a3=?.
  The `jalr` at 0x403db0 calls free with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x403dd4 calls dmSetError with a0=0x1774, a1=0x408068, a2=0x408640, a3=?.
  The `bgezall` at 0x403de4 calls free_formats [0x401ad8] with a0=ret(calloc)+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x403df0 calls vice_close with a0=[ret(calloc)], a1=?, a2=?, a3=?.
  The `jalr` at 0x403dfc calls free with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `beq` branch at 0x403c3c targets 0x403c7c, is taken when v0(?) == v1(=0x6b7a), and falls through when v0(?) != v1(=0x6b7a).
  The `beq` branch at 0x403c8c targets 0x403d08, is taken when v0(=ret(calloc)) == 0, and falls through when v0(=ret(calloc)) != 0.
  The `bltz` branch at 0x403ca8 targets 0x403d90, is taken when v0(=ret(vice_open_and_setetc)) < 0 (signed), and falls through when v0(=ret(vice_open_and_setetc)) >= 0 (signed).
  The `beq` branch at 0x403cc4 targets 0x403d2c, is taken when v0(=ret(init_formats)) == 0, and falls through when v0(=ret(init_formats)) != 0.
  The `beq` branch at 0x403d00 targets 0x403c68 and is always taken.
  The `beq` branch at 0x403d24 targets 0x403c68 and is always taken.
  The `bltz` branch at 0x403d44 targets 0x403dc0, is taken when v0(=ret(vice_event_init)) < 0 (signed), and falls through when v0(=ret(vice_event_init)) >= 0 (signed).
  The `bne` branch at 0x403d60 targets 0x403d78, is taken when v0(=ret(getenv)) != 0, and falls through when v0(=ret(getenv)) == 0.
  The `beq` branch at 0x403d70 targets 0x403c68 and is always taken.
  The `beq` branch at 0x403d88 targets 0x403d6c and is always taken.
  The `beq` branch at 0x403db8 targets 0x403c68 and is always taken.
  The `beq` branch at 0x403e04 targets 0x403d50 and is always taken.
  The return at 0x403c74 has v0 = one of -0x1, 0x0.

- `d_close` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x403e0c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x403e0c-0x403e94 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0x403e10 loads 4 bytes from a0 (arg0 at entry) +0xac.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x403e54, `lw` at 0x403e60.
  The `jalr` at 0x403e3c calls printf with a0=0x408680, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403e50 calls vice_event_uninit with a0=[a0], a1=a0+176, a2=a0+216, a3=?.
  The `jalr` at 0x403e5c calls vice_close with a0=[a0], a1=?, a2=?, a3=?.
  The `bgezall` at 0x403e6c calls free_formats [0x401ad8] with a0=a0+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x403e78 calls free with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x403e2c targets 0x403e44, is taken when at(=[a0+172]) == 0, and falls through when at(=[a0+172]) != 0.
  The return at 0x403e8c has v0 = ret(free).

- `d_describe` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x403e94 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x403e94-0x403f5c (200 bytes).
  It occupies 200 bytes.
  The `jalr` at 0x403ec4 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x4082c0, a2=0x6a706567, a3=0x10a3c.
  The `jalr` at 0x403edc calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x4082d0, a2=0x40ca60, a3=?.
  The `jalr` at 0x403ef4 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x4082e0, a2=0x1, a3=?.
  The `jalr` at 0x403f0c calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x4082f0, a2=0x2, a3=?.
  The `jalr` at 0x403f24 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x408308, a2=0x0, a3=?.
  The `jalr` at 0x403f3c calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x408318, a2=0x1, a3=?.
  The return at 0x403f54 has v0 = 0x0.

- `d_dstpoolis` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x403f5c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x403f5c-0x403fbc (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x403f64 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `sw` at 0x403f90 stores 4 bytes to a0 (arg0 at entry) +0x9c.
  The `lw` at 0x403fb0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x403fac calls vice_dmbuf_outpool with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x403f84 targets 0x403fa8, is taken when at(=[a0+16]) == 0, and falls through when at(=[a0+16]) != 0.
  The `beq` branch at 0x403fb4 targets 0x403f8c and is always taken.
  The return at 0x403fa0 has v0 = 0x0.

- `d_fd` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x403fbc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x403fbc-0x403fc4 (8 bytes).
  It occupies 8 bytes.
  The `lw` at 0x403fc0 loads 4 bytes from a0 (arg0 at entry) +0xa0.
  The return at 0x403fbc has v0 = [a0+160].

- `d_getsrcfilled` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x403fc4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x403fc4-0x404018 (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x403fdc loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `jalr` at 0x403fe4 calls dmFifoNfilled with a0=[a0+176], a1=sp-32, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x403fec targets 0x404008, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The return at 0x404000 has v0 = -0x1.
  The return at 0x404010 has v0 = ?.

- `d_getdstfilled` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x404018 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x404018-0x40406c (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x404030 loads 4 bytes from a0 (arg0 at entry) +0xd8.
  The `jalr` at 0x404038 calls dmFifoNfilled with a0=[a0+216], a1=sp-32, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x404040 targets 0x40405c, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The return at 0x404054 has v0 = -0x1.
  The return at 0x404064 has v0 = ?.

- `d_verifysrc` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x40406c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x40406c-0x4040a4 (56 bytes).
  It occupies 56 bytes.
  The `bgezall` at 0x40408c calls verify_compressed [0x40200c] with a0=a0 at entry (arg0), a1=0x40ca68, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x40409c has v0 = ret(verify_compressed).

- `d_verifydst` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x4040a4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x4040a4-0x4040dc (56 bytes).
  It occupies 56 bytes.
  The `bgezall` at 0x4040c4 calls verify_uncompressed [0x401f7c] with a0=a0 at entry (arg0), a1=0x40ca6c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x4040d4 has v0 = ret(verify_uncompressed).

- `d_verifycvt` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x4040dc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x4040dc-0x4040e4 (8 bytes).
  It occupies 8 bytes.
  The return at 0x4040dc has v0 = 0x0.

- `d_verifysrcdstcvt` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x4040e4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x4040e4-0x404198 (180 bytes).
  It occupies 180 bytes.
  The `bgezall` at 0x404128 calls d_verifycvt [0x4040dc] with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `bgezall` at 0x404164 calls d_verifysrc [0x40406c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x404180 calls d_verifydst [0x4040a4] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `bne` branch at 0x404108 targets 0x40415c, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x404110 targets 0x40417c, is taken when s0(=a1) != 0, and falls through when s0(=a1) == 0.
  The `beq` branch at 0x404118 targets 0x404144, is taken when s1(=a2) == 0, and falls through when s1(=a2) != 0.
  The `beq` branch at 0x404130 targets 0x404144, is taken when v0(=ret(d_verifycvt)) == 0, and falls through when v0(=ret(d_verifycvt)) != 0.
  The `beq` branch at 0x404138 targets 0x404144 and is always taken.
  The `beq` branch at 0x40416c targets 0x404110, is taken when v0(=ret(d_verifysrc)) == 0, and falls through when v0(=ret(d_verifysrc)) != 0.
  The `beq` branch at 0x404174 targets 0x404144 and is always taken.
  The `beq` branch at 0x404188 targets 0x404118, is taken when v0(=ret(d_verifydst)) == 0, and falls through when v0(=ret(d_verifydst)) != 0.
  The `beq` branch at 0x404190 targets 0x404144 and is always taken.
  The return at 0x404154 has v0 = one of -0x1, 0x0.
  The instructions from 0x404140 to 0x404140 are not reached by any path from the entry, and their branches are not listed.

- `d_defaultsrc` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x404198 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x404198-0x4041d0 (56 bytes).
  It occupies 56 bytes.
  The `bgezall` at 0x4041b8 calls get_default_uncompressed [0x402188] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x4041c8 has v0 = ret(get_default_uncompressed).

- `d_defaultdst` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x4041d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x4041d0-0x404208 (56 bytes).
  It occupies 56 bytes.
  The `bgezall` at 0x4041f0 calls get_default_uncompressed [0x402188] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x404200 has v0 = ret(get_default_uncompressed).

- `d_defaultcvt` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x404208 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x404208-0x404210 (8 bytes).
  It occupies 8 bytes.
  The return at 0x404208 has v0 = 0x0.

- `_d_go` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x404210 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x404210-0x40456c (860 bytes).
  It occupies 860 bytes.
  The `lw` at 0x404228 loads 4 bytes from a0 (arg0 at entry) +0x4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x404230, `lw` at 0x404438.
  The `sw` at 0x40427c stores 4 bytes to a0 (arg0 at entry) +0xa4.
  The `lw` at 0x40438c loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x404398 loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lw` at 0x4043a4 loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `sw` at 0x4043b0 stores 4 bytes to a0 (arg0 at entry) +0x94.
  The `sw` at 0x4043b8 stores 4 bytes to a0 (arg0 at entry) +0x80.
  The `sw` at 0x4043bc stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0x4043cc stores 4 bytes to a0 (arg0 at entry) +0x5c.
  The `sw` at 0x4043d8 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0x4043e8 stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `sw` at 0x4043fc stores 4 bytes to a0 (arg0 at entry) +0x84.
  The `sw` at 0x40440c stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `sw` at 0x40441c stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `sw` at 0x404428 stores 4 bytes to a0 (arg0 at entry) +0x88.
  The `sw` at 0x404444 stores 4 bytes to a0 (arg0 at entry) +0x98.
  The `jalr` at 0x40423c calls dmParamsGetInt with a0=[a0+4], a1=0x408018, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404258 calls dmParamsGetInt with a0=[a0+4], a1=0x408028, a2=?, a3=?.
  The `jalr` at 0x404268 calls dmImageFrameSize with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0x404280 calls dmParamsGetEnum with a0=[a0+4], a1=0x408038, a2=?, a3=?.
  The `jalr` at 0x4042c4 calls __assert with a0=0x408458, a1=0x4080a0, a2=0x539, a3=0x3f0, a4=0x3e9, a5=0x3ea.
  The `jalr` at 0x4042e0 calls dmSetError with a0=0x1778, a1=0x408068, a2=0x408468, a3=?.
  The `jalr` at 0x404310 calls vice_file with a0=0x4086a0, a1=?, a2=0x3ed, a3=0x3f0, a4=0x3e9, a5=0x3ea.
  The `jalr` at 0x40432c calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=0x0.
  The `jalr` at 0x40433c calls vice_file with a0=0x4086b0, a1=?, a2=?, a3=?.
  The `jalr` at 0x404350 calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=?.
  The `jalr` at 0x404370 calls vice_file with a0=0x4086e0, a1=one of 0x1, 0x2, 0x4, a2=?, a3=?.
  The `jalr` at 0x404384 calls vice_load_bsp_table with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=?.
  The `jalr` at 0x404440 calls vice_event_start with a0=[a0], a1=a0+32, a2=one of 0x0, 0x1, 0x2, a3=[a0+84], a5=0xf3, a7=ret(dmParamsGetInt)+7.
  The `jalr` at 0x404460 calls dmSetError with a0=0x1778, a1=0x408068, a2=0x4084e8, a3=?.
  The `jalr` at 0x404490 calls vice_file with a0=0x4086a0, a1=?, a2=0x3ed, a3=?.
  The `jalr` at 0x4044ac calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=0x0.
  The `jalr` at 0x4044bc calls vice_file with a0=0x4086b0, a1=?, a2=?, a3=?.
  The `jalr` at 0x4044d0 calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=?.
  The `jalr` at 0x4044ec calls vice_file with a0=0x4086c0, a1=?, a2=0x3ed, a3=0x3f0.
  The `jalr` at 0x404508 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=0x0.
  The `jalr` at 0x404518 calls vice_file with a0=0x4086d0, a1=?, a2=?, a3=?.
  The `jalr` at 0x40452c calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=?.
  The `jalr` at 0x40455c calls dmSetError with a0=0x1778, a1=0x408068, a2=0x4084c8, a3=?.
  The `beq` branch at 0x40428c targets 0x40448c, is taken when v0(=ret(dmParamsGetEnum)) == a2(=0x3ed), and falls through when v0(=ret(dmParamsGetEnum)) != a2(=0x3ed).
  The `beq` branch at 0x404298 targets 0x4044e8, is taken when v0(=ret(dmParamsGetEnum)) == a3(=0x3f0), and falls through when v0(=ret(dmParamsGetEnum)) != a3(=0x3f0).
  The `beq` branch at 0x4042a4 targets 0x404308, is taken when v0(=ret(dmParamsGetEnum)) == a4(=0x3e9), and falls through when v0(=ret(dmParamsGetEnum)) != a4(=0x3e9).
  The `beq` branch at 0x4042ac targets 0x404308, is taken when v0(=ret(dmParamsGetEnum)) == a5(=0x3ea), and falls through when v0(=ret(dmParamsGetEnum)) != a5(=0x3ea).
  The `beq` branch at 0x404390 targets 0x404548, is taken when a1(=[a0+68]) == 0, and falls through when a1(=[a0+68]) != 0.
  The `beq` branch at 0x40439c targets 0x40454c, is taken when a2(=[a0+80]) == 0, and falls through when a2(=[a0+80]) != 0.
  The `beq` branch at 0x4043a8 targets 0x40454c, is taken when a3(=[a0+84]) == 0, and falls through when a3(=[a0+84]) != 0.
  The `beq` branch at 0x404424 targets 0x404478, is taken when s3(=ret(dmParamsGetInt)) == a5(=0xf3), and falls through when s3(=ret(dmParamsGetInt)) != a5(=0xf3).
  The `beq` branch at 0x40442c targets 0x404480, is taken when s3(=ret(dmParamsGetInt)) == a0(=0x1e6), and falls through when s3(=ret(dmParamsGetInt)) != a0(=0x1e6).
  The `beq` branch at 0x404448 targets 0x404470, is taken when v0(=ret(vice_event_start)) == 0, and falls through when v0(=ret(vice_event_start)) != 0.
  The `beq` branch at 0x404468 targets 0x4042ec and is always taken.
  The `beq` branch at 0x404470 targets 0x4042ec and is always taken.
  The `beq` branch at 0x404478 targets 0x404438 and is always taken.
  The `beq` branch at 0x404484 targets 0x404434 and is always taken.
  The `beq` branch at 0x4044e0 targets 0x404368 and is always taken.
  The `beq` branch at 0x404540 targets 0x404368 and is always taken.
  The `beq` branch at 0x404564 targets 0x4042ec and is always taken.
  The return at 0x404300 has v0 = one of -0x1, 0x0.

- `d_send` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x40456c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x40456c-0x40499c (1072 bytes).
  It occupies 1072 bytes.
  The `lw` at 0x404574 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x40457c loads 4 bytes from a0 (arg0 at entry) +0x8.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x404620, `lw` at 0x4047a4, `lw` at 0x404980.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0x404630, `sw` at 0x4046e8.
  The `lw` at 0x404634 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lw` at 0x4046d4 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0x40470c stores 4 bytes to a0 (arg0 at entry) +0x8c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8c, including `lw` at 0x404710, `lw` at 0x404764.
  The `lbu` at 0x404738 loads 1 byte from ?.
  The `lw` at 0x40474c loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `lbu` at 0x40477c loads 1 byte from ([a0+140] + ret(dmBufferMapData)) -0x5.
  The `lw` at 0x4047b8 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x4047c0, `lw` at 0x404808, `lw` at 0x404820.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14, including `sw` at 0x4047c4, `sw` at 0x404970.
  The `sw` at 0x4047cc stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `bgezall` at 0x4045ec calls _d_go [0x404210] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0x404608 calls needsConvert [0x401c14] with a0=[a0+4], a1=[a0+8], a2=?, a3=?.
  The `jalr` at 0x404618 calls dmImageFrameSize with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0x404644 calls dmBufferDestroyPool with a0=[a0+16], a1=?, a2=?, a3=?.
  The `jalr` at 0x404650 calls dmParamsCreate with a0=sp-80, a1=?, a2=?, a3=?.
  The `jalr` at 0x404670 calls dmParamsCopyAllElems with a0=a4 at entry (arg4), a1=[a0+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4046b4 calls dmParamsCopyAllElems with a0=a5 at entry (arg5), a1=[a0+8], a2=?, a3=?.
  The `jalr` at 0x4046d0 calls dmParamsCopyAllElems with a0=a6 at entry (arg6), a1=[a0+12], a2=?, a3=?.
  The `jalr` at 0x4046f4 calls dmBufferGetSize with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x404708 calls dmBufferMapData with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x404758 calls dmBufferGetSize with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x404778 calls printf with a0=0x4086f0, a1=ret(dmBufferGetSize), a2=[([a0+140] + ret(dmBufferMapData))-5]:1, a3=?.
  The `jalr` at 0x404794 calls dmSetError with a0=0x1772, a1=0x408068, a2=0x408720, a3=?.
  The `jalr` at 0x4047b0 calls dmBufferDestroyPool with a0=[a0+16], a1=?, a2=?, a3=?.
  The `jalr` at 0x4047c8 calls vice_dmbuf_outpool with a0=[a0], a1=[a0+156], a2=?, a3=?.
  The `jalr` at 0x404804 calls vice_dmbuf_send with a0=[a0], a1=a1 at entry (arg1), a2=a0+176, a3=a0+104, a4=0xd.
  The `jalr` at 0x40481c calls vice_dms_geterrs with a0=[a0], a1=?, a2=0x410000, a3=?, a4=-0x1.
  The `jalr` at 0x40483c calls dmSetError with a0=0x1778, a1=0x408068, a2=0x408548, a3=?.
  The `jalr` at 0x40485c calls dmParamsSetEnum with a0=[a0+4], a1=0x408050, a2=0x44c, a3=?.
  The `jalr` at 0x40487c calls dmParamsIsPresent with a0=[a0+8], a1=0x408038, a2=?, a3=?.
  The `jalr` at 0x404894 calls dmParamsGetEnum with a0=[a0+8], a1=0x408038, a2=?, a3=?.
  The `jalr` at 0x4048c4 calls dmParamsSetEnum with a0=[a0+4], a1=0x408038, a2=?, a3=?.
  The `jalr` at 0x4048e4 calls dmBufferSetPoolDefaults with a0=?, a1=0x2, a2=ret(dmImageFrameSize), a3=0x0, a4=0x1.
  The `bgezall` at 0x404914 calls _poolneeds [0x401a20] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x404924 calls dmBufferCreatePool with a0=?, a1=a0+16, a2=?, a3=?.
  The `jalr` at 0x40494c calls dmSetError with a0=0x1778, a1=0x408068, a2=0x408530, a3=?, a4=-0x1.
  The `jalr` at 0x404964 calls dmParamsGetInt with a0=?, a1=0x408520, a2=?, a3=?.
  The `jalr` at 0x404974 calls dmParamsDestroy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404984 calls vice_dmbuf_outpool with a0=[a0], a1=[a0+16], a2=?, a3=?.
  The `bne` branch at 0x4045b8 targets 0x404668, is taken when a4 != 0, and falls through when a4 == 0.
  The `bne` branch at 0x4045c0 targets 0x4046ac, is taken when s2(=a5) != 0, and falls through when s2(=a5) == 0.
  The `bne` branch at 0x4045c8 targets 0x4046cc, is taken when s5(=a6) != 0, and falls through when s5(=a6) == 0.
  The `bne` branch at 0x4045d0 targets 0x4045e8, is taken when s6(=a4) != 0, and falls through when s6(=a4) == 0.
  The `bne` branch at 0x4045d8 targets 0x4045e8, is taken when s2(=a5) != 0, and falls through when s2(=a5) == 0.
  The `beq` branch at 0x4045e0 targets 0x4046ec, is taken when s5(=a6) == 0, and falls through when s5(=a6) != 0.
  The `beq` branch at 0x4045f8 targets 0x4047e0, is taken when v0(=ret(_d_go)) == ra(=-0x1), and falls through when v0(=ret(_d_go)) != ra(=-0x1).
  The `beq` branch at 0x404610 targets 0x4047a4, is taken when v0(=ret(needsConvert)) == 0, and falls through when v0(=ret(needsConvert)) != 0.
  The `beq` branch at 0x40462c targets 0x40464c, is taken when a0(=[a0+16]) == 0, and falls through when a0(=[a0+16]) != 0.
  The `beq` branch at 0x40463c targets 0x4046ec, is taken when at(=[a0+20]) >= v0(=ret(dmImageFrameSize)) (signed), and falls through when at(=[a0+20]) < v0(=ret(dmImageFrameSize)) (signed).
  The `beq` branch at 0x404658 targets 0x4048d4, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x404660 targets 0x404680 and is always taken.
  The `beq` branch at 0x404678 targets 0x40484c, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x4046bc targets 0x404874, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x4046c4 targets 0x404680 and is always taken.
  The `beq` branch at 0x4046d8 targets 0x4045d0, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x4046e0 targets 0x404680 and is always taken.
  The `bne` branch at 0x404730 targets 0x40474c, is taken when a4(?) < 0x5 (signed), and falls through when a4(?) >= 0x5 (signed).
  The `bne` branch at 0x40473c targets 0x4047e8, is taken when t1(=0xff) != t0(?), and falls through when t1(=0xff) == t0(?).
  The `bne` branch at 0x404744 targets 0x404728, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x404750 targets 0x404780, is taken when a0(=[a0+172]) == 0, and falls through when a0(=[a0+172]) != 0.
  The `beq` branch at 0x40479c targets 0x404680 and is always taken.
  The `beq` branch at 0x4047a8 targets 0x4046e8, is taken when a0(=[a0+16]) == 0, and falls through when a0(=[a0+16]) != 0.
  The `beq` branch at 0x4047d0 targets 0x4046e8, is taken when v0(=ret(vice_dmbuf_outpool)) == 0, and falls through when v0(=ret(vice_dmbuf_outpool)) != 0.
  The `beq` branch at 0x4047d8 targets 0x404680 and is always taken.
  The `beq` branch at 0x4047e0 targets 0x404680 and is always taken.
  The `bne` branch at 0x4047ec targets 0x40474c, is taken when t0(?) != a3(=0xd9), and falls through when t0(?) == a3(=0xd9).
  The `beq` branch at 0x404810 targets 0x40493c, is taken when v0(=ret(vice_dmbuf_send)) == a4(=-0x1), and falls through when v0(=ret(vice_dmbuf_send)) != a4(=-0x1).
  The `beq` branch at 0x404824 targets 0x404904, is taken when v0(=ret(vice_dms_geterrs)) == 0, and falls through when v0(=ret(vice_dms_geterrs)) != 0.
  The `beq` branch at 0x404844 targets 0x404680 and is always taken.
  The `beq` branch at 0x404864 targets 0x4045c0, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x40486c targets 0x404680 and is always taken.
  The `beq` branch at 0x404884 targets 0x4048fc, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x4048a0 targets 0x4048b8, is taken when v0(=ret(dmParamsGetEnum)) == a3(=0x3f0), and falls through when v0(=ret(dmParamsGetEnum)) != a3(=0x3f0).
  The `beq` branch at 0x4048ac targets 0x4048bc, is taken when v0(=ret(dmParamsGetEnum)) == a4(=0x3ed), and falls through when v0(=ret(dmParamsGetEnum)) != a4(=0x3ed).
  The `beq` branch at 0x4048cc targets 0x4045c8 and is always taken.
  The `beq` branch at 0x4048ec targets 0x40490c, is taken when v0(=ret(dmBufferSetPoolDefaults)) == 0, and falls through when v0(=ret(dmBufferSetPoolDefaults)) != 0.
  The `beq` branch at 0x4048f4 targets 0x404680 and is always taken.
  The `beq` branch at 0x4048fc targets 0x4048b8 and is always taken.
  The `beq` branch at 0x404904 targets 0x404680 and is always taken.
  The `beq` branch at 0x40492c targets 0x40495c, is taken when v0(=ret(dmBufferCreatePool)) == 0, and falls through when v0(=ret(dmBufferCreatePool)) != 0.
  The `beq` branch at 0x404934 targets 0x404680 and is always taken.
  The `beq` branch at 0x404954 targets 0x404680 and is always taken.
  The `beq` branch at 0x40498c targets 0x4046f0, is taken when v0(=ret(vice_dmbuf_outpool)) == 0, and falls through when v0(=ret(vice_dmbuf_outpool)) != 0.
  The `beq` branch at 0x404994 targets 0x404680 and is always taken.
  The return at 0x4046a4 has v0 = one of -0x1, 0x0.

- `d_recv` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x40499c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x40499c-0x404bec (592 bytes).
  It occupies 592 bytes.
  The `lw` at 0x4049a8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x4049b0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9c, including `lw` at 0x4049bc, `lw` at 0x404a6c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x18, including `lw` at 0x4049c4, `lw` at 0x404a48.
  The `lw` at 0x4049f8 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `sw` at 0x404a00 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `lw` at 0x404a10 loads 4 bytes from a0 (arg0 at entry) +0x0.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x404a2c, `lw` at 0x404a44, `lw` at 0x404ad0.
  The `lw` at 0x404a3c loads 4 bytes from a0 (arg0 at entry) +0xa4.
  The `sw` at 0x404aa8 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lw` at 0x404abc loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `jalr` at 0x4049f0 calls dmImageFrameSize with a0=[a0+4], a1=a1 at entry (arg1), a2=[a0+156], a3=a3 at entry (arg3).
  The `jalr` at 0x404a14 calls vice_dmbuf_recv with a0=[a0], a1=sp-96, a2=?, a3=a0+216.
  The `jalr` at 0x404a40 calls dmBufferSetSize with a0=?, a1=[a0+164], a2=0xe000, a3=?.
  The `jalr` at 0x404a54 calls dmImageFrameSize with a0=[a0+8], a1=?, a2=?, a3=[a0+24].
  The `jalr` at 0x404a68 calls dmBufferAllocate with a0=[a0+156], a1=sp-88, a2=?, a3=?.
  The `jalr` at 0x404a98 calls dmBufferFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404ad8 calls printf with a0=0x408730, a1=?, a2=?, a3=?, a6=[a0+172].
  The `jalr` at 0x404af4 calls dmSetError with a0=0x1776, a1=0x408578, a2=0x408588, a3=?.
  The `jalr` at 0x404b08 calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404b18 calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404b34 calls dmICAnyToAny with a0=ret(dmBufferMapData), a1=ret(dmBufferMapData), a2=[a0+4], a3=[a0+8], a4=0x0.
  The `jalr` at 0x404b60 calls dmSetError with a0=0x1778, a1=0x408068, a2=0x4085a0, a3=?.
  The `jalr` at 0x404b74 calls dmBufferSetSize with a0=?, a1=ret(dmImageFrameSize), a2=?, a3=?.
  The `jalr` at 0x404b8c calls dmBufferGetImageType with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404b9c calls dmBufferSetImageType with a0=?, a1=ret(dmBufferGetImageType), a2=?, a3=?.
  The `jalr` at 0x404bb4 calls dmBufferGetUSTMSCpair with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404bd4 calls dmBufferSetUSTMSCpair with a0=?, a1=ret(dmBufferGetUSTMSCpair), a2=?, a3=?.
  The `beq` branch at 0x4049e4 targets 0x404a04, is taken when at(=[a0+24]) == 0, and falls through when at(=[a0+24]) != 0.
  The `beq` branch at 0x404a24 targets 0x404ab4, is taken when v0(=ret(vice_dmbuf_recv)) == v1(=-0x1), and falls through when v0(=ret(vice_dmbuf_recv)) != v1(=-0x1).
  The `beq` branch at 0x404a34 targets 0x404b4c, is taken when a1(?) == a2(=0xe000), and falls through when a1(?) != a2(=0xe000).
  The `beq` branch at 0x404a4c targets 0x404aac, is taken when a3(=[a0+24]) == 0, and falls through when a3(=[a0+24]) != 0.
  The `beq` branch at 0x404a70 targets 0x404b04, is taken when v0(=ret(dmBufferAllocate)) == 0, and falls through when v0(=ret(dmBufferAllocate)) != 0.
  The `beq` branch at 0x404aac targets 0x404a78 and is always taken.
  The `beq` branch at 0x404ab4 targets 0x404ae4, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x404ac0 targets 0x404ae4, is taken when a6(=[a0+172]) == 0, and falls through when a6(=[a0+172]) != 0.
  The `beq` branch at 0x404afc targets 0x404a78 and is always taken.
  The `beq` branch at 0x404b3c targets 0x404b70, is taken when v0(=ret(dmICAnyToAny)) == 0, and falls through when v0(=ret(dmICAnyToAny)) != 0.
  The `beq` branch at 0x404b44 targets 0x404a78 and is always taken.
  The `beq` branch at 0x404b68 targets 0x404a78 and is always taken.
  The `beq` branch at 0x404b7c targets 0x404b8c, is taken when v0(=ret(dmBufferSetSize)) == 0, and falls through when v0(=ret(dmBufferSetSize)) != 0.
  The `beq` branch at 0x404b84 targets 0x404a78 and is always taken.
  The `beq` branch at 0x404ba4 targets 0x404bb4, is taken when v0(=ret(dmBufferSetImageType)) == 0, and falls through when v0(=ret(dmBufferSetImageType)) != 0.
  The `beq` branch at 0x404bac targets 0x404a78 and is always taken.
  The `beq` branch at 0x404bdc targets 0x404a98, is taken when v0(=ret(dmBufferSetUSTMSCpair)) == 0, and falls through when v0(=ret(dmBufferSetUSTMSCpair)) != 0.
  The `beq` branch at 0x404be4 targets 0x404a78 and is always taken.
  The return at 0x404a90 has v0 = one of -0x1, ?.

- `put_sof` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x404bec (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x404bec-0x404cc8 (220 bytes).
  It occupies 220 bytes.
  The `sb` at 0x404c0c stores 1 byte to [0x40cad0] +0x0.
  The `sb` at 0x404c18 stores 1 byte to [0x40cad0] +0x1.
  2 such `sb` accesses store 1 byte to [0x40cad0] +0xa, including `sb` at 0x404c1c, `sb` at 0x404cb0.
  2 such `sb` accesses store 1 byte to [0x40cad0] +0x9, including `sb` at 0x404c20, `sb` at 0x404cac.
  2 such `sb` accesses store 1 byte to [0x40cad0] +0x7, including `sb` at 0x404c24, `sb` at 0x404ca4.
  2 such `sb` accesses store 1 byte to [0x40cad0] +0x6, including `sb` at 0x404c28, `sb` at 0x404ca0.
  2 such `sb` accesses store 1 byte to [0x40cad0] +0x5, including `sb` at 0x404c2c, `sb` at 0x404c9c.
  2 such `sb` accesses store 1 byte to [0x40cad0] +0x4, including `sb` at 0x404c30, `sb` at 0x404c98.
  2 such `sb` accesses store 1 byte to [0x40cad0] +0x3, including `sb` at 0x404c34, `sb` at 0x404c94.
  2 such `sb` accesses store 1 byte to [0x40cad0] +0x8, including `sb` at 0x404c3c, `sb` at 0x404ca8.
  2 such `sb` accesses store 1 byte to [0x40cad0] +0x2, including `sb` at 0x404c48, `sb` at 0x404c8c.
  3 such `sb` accesses store 1 byte to [0x40cad0] +0xb, including `sb` at 0x404c50, `sb` at 0x404c80, `sb` at 0x404cb4.
  2 such `sb` accesses store 1 byte to [0x40cad0] +0xc, including `sb` at 0x404c54, `sb` at 0x404cc4.
  The `sb` at 0x404c58 stores 1 byte to [0x40cad0] +0xd.
  The `sb` at 0x404c5c stores 1 byte to [0x40cad0] +0xe.
  The `sb` at 0x404c60 stores 1 byte to [0x40cad0] +0xf.
  The `sb` at 0x404c64 stores 1 byte to [0x40cad0] +0x10.
  The `sb` at 0x404c68 stores 1 byte to [0x40cad0] +0x11.
  The `sb` at 0x404c78 stores 1 byte to [0x40cad0] +0x12.
  The `beq` branch at 0x404c14 targets 0x404c8c, is taken when a2 == t0(=0x1), and falls through when a2 != t0(=0x1).
  The `beq` branch at 0x404c44 targets 0x404c7c, is taken when a3 == 0, and falls through when a3 != 0.
  The `beq` branch at 0x404c84 targets 0x404c54 and is always taken.
  The return at 0x404c74 has v0 = 0xff.
  The return at 0x404cc0 has v0 = 0xff.

- `put_dri` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x404cc8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x404cc8-0x404cfc (52 bytes).
  It occupies 52 bytes.
  The `sb` at 0x404ccc stores 1 byte to [0x40cad0] +0x5.
  The `sb` at 0x404cd8 stores 1 byte to [0x40cad0] +0x4.
  The `sb` at 0x404ce0 stores 1 byte to [0x40cad0] +0x3.
  The `sb` at 0x404ce4 stores 1 byte to [0x40cad0] +0x2.
  The `sb` at 0x404cec stores 1 byte to [0x40cad0] +0x1.
  The `sb` at 0x404cf8 stores 1 byte to [0x40cad0] +0x0.
  The return at 0x404cf4 has v0 = [0x40cad0].

- `put_sos` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x404cfc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x404cfc-0x404da0 (164 bytes).
  It occupies 164 bytes.
  The `sb` at 0x404d18 stores 1 byte to [0x40cad0] +0x0.
  The `sb` at 0x404d24 stores 1 byte to [0x40cad0] +0x1.
  2 such `sb` accesses store 1 byte to [0x40cad0] +0x5, including `sb` at 0x404d2c, `sb` at 0x404d7c.
  2 such `sb` accesses store 1 byte to [0x40cad0] +0x4, including `sb` at 0x404d30, `sb` at 0x404d80.
  2 such `sb` accesses store 1 byte to [0x40cad0] +0x3, including `sb` at 0x404d34, `sb` at 0x404d88.
  2 such `sb` accesses store 1 byte to [0x40cad0] +0x2, including `sb` at 0x404d3c, `sb` at 0x404d8c.
  2 such `sb` accesses store 1 byte to [0x40cad0] +0x6, including `sb` at 0x404d40, `sb` at 0x404d94.
  The `sb` at 0x404d4c stores 1 byte to [0x40cad0] +0xa.
  The `sb` at 0x404d50 stores 1 byte to [0x40cad0] +0x9.
  The `sb` at 0x404d54 stores 1 byte to [0x40cad0] +0x8.
  The `sb` at 0x404d5c stores 1 byte to [0x40cad0] +0x7.
  The `sb` at 0x404d60 stores 1 byte to ([0x40cad0] + one of 0x9, 0xd) +0x0.
  The `sb` at 0x404d70 stores 1 byte to ([0x40cad0] + one of 0x8, 0xc) +0x0.
  The `sb` at 0x404d78 stores 1 byte to ([0x40cad0] + one of 0x7, 0xb) +0x0.
  The `beq` branch at 0x404d20 targets 0x404d7c, is taken when a0 == a4(=0x1), and falls through when a0 != a4(=0x1).
  The `bne` branch at 0x404d44 targets 0x404d60, is taken when a0 < 0x2 (signed), and falls through when a0 >= 0x2 (signed).
  The `beq` branch at 0x404d98 targets 0x404d60 and is always taken.
  The return at 0x404d74 has v0 = 0xff.

- `put_dqt` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x404da0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x404da0-0x404e14 (116 bytes).
  It occupies 116 bytes.
  The `sb` at 0x404dac stores 1 byte to [0x40cad0] +0x0.
  The `sb` at 0x404db0 stores 1 byte to [0x40cad0] +0x2.
  The `sb` at 0x404dbc stores 1 byte to [0x40cad0] +0x1.
  The `sb` at 0x404dc8 stores 1 byte to [0x40cad0] +0x3.
  The `sb` at 0x404dd4 stores 1 byte to [0x40cad0] +0x4.
  The `lbu` at 0x404dd8 loads 1 byte from ?.
  The `lh` at 0x404de4 loads 2 bytes from ?.
  The `sb` at 0x404e08 stores 1 byte to ?.
  The `bne` branch at 0x404e04 targets 0x404dd8, is taken when a3(?) < 0x40 (signed), and falls through when a3(?) >= 0x40 (signed).
  The return at 0x404e0c has v0 = ?.

- `put_dht_dc_luma` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x404e14 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x404e14-0x404e94 (128 bytes).
  It occupies 128 bytes.
  The `sb` at 0x404e18 stores 1 byte to [0x40cad0] +0x4.
  The `sb` at 0x404e20 stores 1 byte to [0x40cad0] +0x3.
  The `sb` at 0x404e34 stores 1 byte to [0x40cad0] +0x2.
  The `sb` at 0x404e3c stores 1 byte to [0x40cad0] +0x1.
  The `sb` at 0x404e44 stores 1 byte to [0x40cad0] +0x0.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x404e5c, `lbu` at 0x404e7c.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x404e68, `sb` at 0x404e88.
  The `bne` branch at 0x404e64 targets 0x404e50, is taken when a3(?) < 0x10 (signed), and falls through when a3(?) >= 0x10 (signed).
  The `bne` branch at 0x404e84 targets 0x404e70, is taken when a2(?) < 0xc (signed), and falls through when a2(?) >= 0xc (signed).
  The return at 0x404e8c has v0 = [0x40cad0].

- `put_dht_ac_luma` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x404e94 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x404e94-0x404f18 (132 bytes).
  It occupies 132 bytes.
  The `sb` at 0x404e9c stores 1 byte to [0x40cad0] +0x4.
  The `sb` at 0x404ea4 stores 1 byte to [0x40cad0] +0x3.
  The `sb` at 0x404eb8 stores 1 byte to [0x40cad0] +0x2.
  The `sb` at 0x404ec0 stores 1 byte to [0x40cad0] +0x1.
  The `sb` at 0x404ec8 stores 1 byte to [0x40cad0] +0x0.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x404ee0, `lbu` at 0x404f00.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x404eec, `sb` at 0x404f0c.
  The `bne` branch at 0x404ee8 targets 0x404ed4, is taken when a3(?) < 0x10 (signed), and falls through when a3(?) >= 0x10 (signed).
  The `bne` branch at 0x404f08 targets 0x404ef4, is taken when a2(?) < 0xa2 (signed), and falls through when a2(?) >= 0xa2 (signed).
  The return at 0x404f10 has v0 = [0x40cad0].

- `put_dht_dc_chroma` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x404f18 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x404f18-0x404f9c (132 bytes).
  It occupies 132 bytes.
  The `sb` at 0x404f20 stores 1 byte to [0x40cad0] +0x4.
  The `sb` at 0x404f28 stores 1 byte to [0x40cad0] +0x3.
  The `sb` at 0x404f3c stores 1 byte to [0x40cad0] +0x2.
  The `sb` at 0x404f44 stores 1 byte to [0x40cad0] +0x1.
  The `sb` at 0x404f4c stores 1 byte to [0x40cad0] +0x0.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x404f64, `lbu` at 0x404f84.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x404f70, `sb` at 0x404f90.
  The `bne` branch at 0x404f6c targets 0x404f58, is taken when a3(?) < 0x10 (signed), and falls through when a3(?) >= 0x10 (signed).
  The `bne` branch at 0x404f8c targets 0x404f78, is taken when a2(?) < 0xc (signed), and falls through when a2(?) >= 0xc (signed).
  The return at 0x404f94 has v0 = [0x40cad0].

- `put_dht_ac_chroma` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x404f9c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x404f9c-0x405020 (132 bytes).
  It occupies 132 bytes.
  The `sb` at 0x404fa4 stores 1 byte to [0x40cad0] +0x4.
  The `sb` at 0x404fac stores 1 byte to [0x40cad0] +0x3.
  The `sb` at 0x404fc0 stores 1 byte to [0x40cad0] +0x2.
  The `sb` at 0x404fc8 stores 1 byte to [0x40cad0] +0x1.
  The `sb` at 0x404fd0 stores 1 byte to [0x40cad0] +0x0.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x404fe8, `lbu` at 0x405008.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x404ff4, `sb` at 0x405014.
  The `bne` branch at 0x404ff0 targets 0x404fdc, is taken when a3(?) < 0x10 (signed), and falls through when a3(?) >= 0x10 (signed).
  The `bne` branch at 0x405010 targets 0x404ffc, is taken when a2(?) < 0xa2 (signed), and falls through when a2(?) >= 0xa2 (signed).
  The return at 0x405018 has v0 = [0x40cad0].

- `put_app1_qtmja` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x405020 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x405020-0x405120 (256 bytes).
  It occupies 256 bytes.
  The `sb` at 0x405030 stores 1 byte to [0x40cad0] +0x2a.
  The `sb` at 0x405034 stores 1 byte to [0x40cad0] +0x29.
  The `sb` at 0x405038 stores 1 byte to [0x40cad0] +0x28.
  The `sb` at 0x405040 stores 1 byte to [0x40cad0] +0x27.
  The `sb` at 0x405044 stores 1 byte to [0x40cad0] +0x26.
  The `sb` at 0x405048 stores 1 byte to [0x40cad0] +0x25.
  The `sb` at 0x40504c stores 1 byte to [0x40cad0] +0x24.
  The `sb` at 0x405054 stores 1 byte to [0x40cad0] +0x23.
  The `sb` at 0x405058 stores 1 byte to [0x40cad0] +0x22.
  The `sb` at 0x40505c stores 1 byte to [0x40cad0] +0x21.
  The `sb` at 0x405060 stores 1 byte to [0x40cad0] +0x20.
  The `sb` at 0x405068 stores 1 byte to [0x40cad0] +0x1f.
  The `sb` at 0x40506c stores 1 byte to [0x40cad0] +0x1e.
  The `sb` at 0x405070 stores 1 byte to [0x40cad0] +0x1d.
  The `sb` at 0x405074 stores 1 byte to [0x40cad0] +0x1c.
  The `sb` at 0x40507c stores 1 byte to [0x40cad0] +0x1b.
  The `sb` at 0x405080 stores 1 byte to [0x40cad0] +0x1a.
  The `sb` at 0x405084 stores 1 byte to [0x40cad0] +0x19.
  The `sb` at 0x405088 stores 1 byte to [0x40cad0] +0x18.
  The `sb` at 0x40508c stores 1 byte to [0x40cad0] +0x17.
  The `sb` at 0x405090 stores 1 byte to [0x40cad0] +0x16.
  The `sb` at 0x405094 stores 1 byte to [0x40cad0] +0x15.
  The `sb` at 0x405098 stores 1 byte to [0x40cad0] +0x14.
  The `sb` at 0x4050a0 stores 1 byte to [0x40cad0] +0x12.
  The `sb` at 0x4050a8 stores 1 byte to [0x40cad0] +0x11.
  The `sb` at 0x4050b0 stores 1 byte to [0x40cad0] +0x10.
  The `sb` at 0x4050b4 stores 1 byte to [0x40cad0] +0xe.
  The `sb` at 0x4050b8 stores 1 byte to [0x40cad0] +0xd.
  The `sb` at 0x4050bc stores 1 byte to [0x40cad0] +0xc.
  The `sb` at 0x4050c4 stores 1 byte to [0x40cad0] +0xb.
  The `sb` at 0x4050cc stores 1 byte to [0x40cad0] +0xa.
  The `sb` at 0x4050d4 stores 1 byte to [0x40cad0] +0x9.
  The `sb` at 0x4050dc stores 1 byte to [0x40cad0] +0x8.
  The `sb` at 0x4050e0 stores 1 byte to [0x40cad0] +0x7.
  The `sb` at 0x4050e4 stores 1 byte to [0x40cad0] +0x6.
  The `sb` at 0x4050e8 stores 1 byte to [0x40cad0] +0x5.
  The `sb` at 0x4050ec stores 1 byte to [0x40cad0] +0x4.
  The `sb` at 0x4050f0 stores 1 byte to [0x40cad0] +0x13.
  The `sb` at 0x4050f4 stores 1 byte to [0x40cad0] +0xf.
  The `sb` at 0x4050fc stores 1 byte to [0x40cad0] +0x3.
  The `sb` at 0x405100 stores 1 byte to [0x40cad0] +0x2.
  The `sb` at 0x405108 stores 1 byte to [0x40cad0] +0x1.
  The `sb` at 0x405110 stores 1 byte to [0x40cad0] +0x2b.
  The `sb` at 0x40511c stores 1 byte to [0x40cad0] +0x0.
  The return at 0x405118 has v0 = [0x40cad0].

- `put_app1_qtmja_luma` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x405120 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x405120-0x405220 (256 bytes).
  It occupies 256 bytes.
  The `sb` at 0x405130 stores 1 byte to [0x40cad0] +0x2a.
  The `sb` at 0x405134 stores 1 byte to [0x40cad0] +0x29.
  The `sb` at 0x405138 stores 1 byte to [0x40cad0] +0x28.
  The `sb` at 0x405140 stores 1 byte to [0x40cad0] +0x27.
  The `sb` at 0x405144 stores 1 byte to [0x40cad0] +0x26.
  The `sb` at 0x405148 stores 1 byte to [0x40cad0] +0x25.
  The `sb` at 0x40514c stores 1 byte to [0x40cad0] +0x24.
  The `sb` at 0x405154 stores 1 byte to [0x40cad0] +0x23.
  The `sb` at 0x405158 stores 1 byte to [0x40cad0] +0x22.
  The `sb` at 0x40515c stores 1 byte to [0x40cad0] +0x21.
  The `sb` at 0x405160 stores 1 byte to [0x40cad0] +0x20.
  The `sb` at 0x405168 stores 1 byte to [0x40cad0] +0x1f.
  The `sb` at 0x40516c stores 1 byte to [0x40cad0] +0x1e.
  The `sb` at 0x405170 stores 1 byte to [0x40cad0] +0x1d.
  The `sb` at 0x405174 stores 1 byte to [0x40cad0] +0x1c.
  The `sb` at 0x40517c stores 1 byte to [0x40cad0] +0x1b.
  The `sb` at 0x405180 stores 1 byte to [0x40cad0] +0x1a.
  The `sb` at 0x405184 stores 1 byte to [0x40cad0] +0x19.
  The `sb` at 0x405188 stores 1 byte to [0x40cad0] +0x18.
  The `sb` at 0x40518c stores 1 byte to [0x40cad0] +0x17.
  The `sb` at 0x405190 stores 1 byte to [0x40cad0] +0x16.
  The `sb` at 0x405194 stores 1 byte to [0x40cad0] +0x15.
  The `sb` at 0x405198 stores 1 byte to [0x40cad0] +0x14.
  The `sb` at 0x4051a0 stores 1 byte to [0x40cad0] +0x12.
  The `sb` at 0x4051a8 stores 1 byte to [0x40cad0] +0x11.
  The `sb` at 0x4051b0 stores 1 byte to [0x40cad0] +0x10.
  The `sb` at 0x4051b4 stores 1 byte to [0x40cad0] +0xe.
  The `sb` at 0x4051b8 stores 1 byte to [0x40cad0] +0xd.
  The `sb` at 0x4051bc stores 1 byte to [0x40cad0] +0xc.
  The `sb` at 0x4051c4 stores 1 byte to [0x40cad0] +0xb.
  The `sb` at 0x4051cc stores 1 byte to [0x40cad0] +0xa.
  The `sb` at 0x4051d4 stores 1 byte to [0x40cad0] +0x9.
  The `sb` at 0x4051dc stores 1 byte to [0x40cad0] +0x8.
  The `sb` at 0x4051e0 stores 1 byte to [0x40cad0] +0x7.
  The `sb` at 0x4051e4 stores 1 byte to [0x40cad0] +0x6.
  The `sb` at 0x4051e8 stores 1 byte to [0x40cad0] +0x5.
  The `sb` at 0x4051ec stores 1 byte to [0x40cad0] +0x4.
  The `sb` at 0x4051f0 stores 1 byte to [0x40cad0] +0x13.
  The `sb` at 0x4051f4 stores 1 byte to [0x40cad0] +0xf.
  The `sb` at 0x4051fc stores 1 byte to [0x40cad0] +0x3.
  The `sb` at 0x405200 stores 1 byte to [0x40cad0] +0x2.
  The `sb` at 0x405208 stores 1 byte to [0x40cad0] +0x1.
  The `sb` at 0x405210 stores 1 byte to [0x40cad0] +0x2b.
  The `sb` at 0x40521c stores 1 byte to [0x40cad0] +0x0.
  The return at 0x405218 has v0 = [0x40cad0].

- `put_app0_jfif` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x405220 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x405220-0x405298 (120 bytes).
  It occupies 120 bytes.
  The `sb` at 0x405224 stores 1 byte to [0x40cad0] +0x11.
  The `sb` at 0x405230 stores 1 byte to [0x40cad0] +0x10.
  The `sb` at 0x405238 stores 1 byte to [0x40cad0] +0xf.
  The `sb` at 0x40523c stores 1 byte to [0x40cad0] +0xe.
  The `sb` at 0x405240 stores 1 byte to [0x40cad0] +0xd.
  The `sb` at 0x405244 stores 1 byte to [0x40cad0] +0xc.
  The `sb` at 0x405248 stores 1 byte to [0x40cad0] +0xb.
  The `sb` at 0x405250 stores 1 byte to [0x40cad0] +0xa.
  The `sb` at 0x405254 stores 1 byte to [0x40cad0] +0x9.
  The `sb` at 0x405258 stores 1 byte to [0x40cad0] +0x8.
  The `sb` at 0x405260 stores 1 byte to [0x40cad0] +0x7.
  The `sb` at 0x405268 stores 1 byte to [0x40cad0] +0x6.
  The `sb` at 0x40526c stores 1 byte to [0x40cad0] +0x5.
  The `sb` at 0x405274 stores 1 byte to [0x40cad0] +0x4.
  The `sb` at 0x40527c stores 1 byte to [0x40cad0] +0x3.
  The `sb` at 0x405280 stores 1 byte to [0x40cad0] +0x2.
  The `sb` at 0x405288 stores 1 byte to [0x40cad0] +0x1.
  The `sb` at 0x405294 stores 1 byte to [0x40cad0] +0x0.
  The return at 0x405290 has v0 = [0x40cad0].

- `put_app2_colspc` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x405298 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x405298-0x405314 (124 bytes).
  It occupies 124 bytes.
  The `sb` at 0x4052a4 stores 1 byte to [0x40cad0] +0xc.
  The `sb` at 0x4052b4 stores 1 byte to [0x40cad0] +0x9.
  The `sb` at 0x4052bc stores 1 byte to [0x40cad0] +0x8.
  The `sb` at 0x4052c4 stores 1 byte to [0x40cad0] +0x7.
  The `sb` at 0x4052cc stores 1 byte to [0x40cad0] +0x6.
  The `sb` at 0x4052d4 stores 1 byte to [0x40cad0] +0x5.
  The `sb` at 0x4052d8 stores 1 byte to [0x40cad0] +0x4.
  The `sb` at 0x4052e0 stores 1 byte to [0x40cad0] +0x3.
  The `sb` at 0x4052e4 stores 1 byte to [0x40cad0] +0x2.
  The `sb` at 0x4052ec stores 1 byte to [0x40cad0] +0x1.
  The `sb` at 0x4052f4 stores 1 byte to [0x40cad0] +0x0.
  The `sb` at 0x405300 stores 1 byte to [0x40cad0] +0xa.
  The `sb` at 0x405310 stores 1 byte to [0x40cad0] +0xb.
  The return at 0x40530c has v0 = [0x40cad0].

- `put_com_vice` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x405314 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x405314-0x405394 (128 bytes).
  It occupies 128 bytes.
  The `sb` at 0x405318 stores 1 byte to [0x40cad0] +0x11.
  The `sb` at 0x405328 stores 1 byte to [0x40cad0] +0x10.
  The `sb` at 0x40532c stores 1 byte to [0x40cad0] +0xf.
  The `sb` at 0x405330 stores 1 byte to [0x40cad0] +0xe.
  The `sb` at 0x405334 stores 1 byte to [0x40cad0] +0xd.
  The `sb` at 0x405338 stores 1 byte to [0x40cad0] +0xc.
  The `sb` at 0x40533c stores 1 byte to [0x40cad0] +0xb.
  The `sb` at 0x405340 stores 1 byte to [0x40cad0] +0xa.
  The `sb` at 0x405348 stores 1 byte to [0x40cad0] +0x9.
  The `sb` at 0x405350 stores 1 byte to [0x40cad0] +0x8.
  The `sb` at 0x405358 stores 1 byte to [0x40cad0] +0x7.
  The `sb` at 0x405360 stores 1 byte to [0x40cad0] +0x6.
  The `sb` at 0x405368 stores 1 byte to [0x40cad0] +0x5.
  The `sb` at 0x405370 stores 1 byte to [0x40cad0] +0x4.
  The `sb` at 0x405378 stores 1 byte to [0x40cad0] +0x3.
  The `sb` at 0x40537c stores 1 byte to [0x40cad0] +0x2.
  The `sb` at 0x405384 stores 1 byte to [0x40cad0] +0x1.
  The `sb` at 0x405390 stores 1 byte to [0x40cad0] +0x0.
  The return at 0x40538c has v0 = [0x40cad0].

- `put_com_vice_luma` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x405394 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x405394-0x405410 (124 bytes).
  It occupies 124 bytes.
  The `sb` at 0x405398 stores 1 byte to [0x40cad0] +0x10.
  The `sb` at 0x4053a8 stores 1 byte to [0x40cad0] +0xf.
  The `sb` at 0x4053ac stores 1 byte to [0x40cad0] +0xe.
  The `sb` at 0x4053b0 stores 1 byte to [0x40cad0] +0xd.
  The `sb` at 0x4053b4 stores 1 byte to [0x40cad0] +0xc.
  The `sb` at 0x4053b8 stores 1 byte to [0x40cad0] +0xb.
  The `sb` at 0x4053bc stores 1 byte to [0x40cad0] +0xa.
  The `sb` at 0x4053c4 stores 1 byte to [0x40cad0] +0x9.
  The `sb` at 0x4053cc stores 1 byte to [0x40cad0] +0x8.
  The `sb` at 0x4053d4 stores 1 byte to [0x40cad0] +0x7.
  The `sb` at 0x4053dc stores 1 byte to [0x40cad0] +0x6.
  The `sb` at 0x4053e4 stores 1 byte to [0x40cad0] +0x5.
  The `sb` at 0x4053ec stores 1 byte to [0x40cad0] +0x4.
  The `sb` at 0x4053f4 stores 1 byte to [0x40cad0] +0x3.
  The `sb` at 0x4053f8 stores 1 byte to [0x40cad0] +0x2.
  The `sb` at 0x405400 stores 1 byte to [0x40cad0] +0x1.
  The `sb` at 0x40540c stores 1 byte to [0x40cad0] +0x0.
  The return at 0x405408 has v0 = [0x40cad0].

- `jhead_make` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x405410 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x405410-0x405560 (336 bytes).
  It occupies 336 bytes.
  The `sb` at 0x405414 stores 1 byte to a0 (arg0 at entry) +0x1.
  The `sb` at 0x40545c stores 1 byte to a0 (arg0 at entry) +0x0.
  The `bgezall` at 0x405464 calls put_app0_jfif [0x405220] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x405474 calls put_app1_qtmja [0x405020] with a0=a4 at entry (arg4), a1=?, a2=?, a3=?.
  The `bgezall` at 0x405488 calls put_app2_colspc [0x405298] with a0=0x3, a1=?, a2=?, a3=?.
  The `bgezall` at 0x405498 calls put_com_vice [0x405314] with a0=a5 at entry (arg5), a1=?, a2=?, a3=?.
  The `bgezall` at 0x4054b0 calls put_dqt [0x404da0] with a0=0x0, a1=a3 at entry (arg3), a2=?, a3=?.
  The `bgezall` at 0x4054c4 calls put_dqt [0x404da0] with a0=0x1, a1=a3+128, a2=?, a3=?.
  The `bgezall` at 0x4054e4 calls put_sof [0x404bec] with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=0x3, a3=0x0.
  The `bgezall` at 0x4054f4 calls put_dht_dc_luma [0x404e14] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0x405504 calls put_dht_ac_luma [0x404e94] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0x405514 calls put_dht_dc_chroma [0x404f18] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0x405524 calls put_dht_ac_chroma [0x404f9c] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0x405534 calls put_dri [0x404cc8] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0x405544 calls put_sos [0x404cfc] with a0=0x3, a1=?, a2=?, a3=?.
  The return at 0x405558 has v0 = [0x40cad0].

- `jhead_luma_make` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x405560 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x405560-0x405670 (272 bytes).
  It occupies 272 bytes.
  The `sb` at 0x405564 stores 1 byte to a0 (arg0 at entry) +0x1.
  The `sb` at 0x4055a4 stores 1 byte to a0 (arg0 at entry) +0x0.
  The `bgezall` at 0x4055ac calls put_app0_jfif [0x405220] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x4055bc calls put_app1_qtmja_luma [0x405120] with a0=a4 at entry (arg4), a1=?, a2=?, a3=?.
  The `bgezall` at 0x4055d0 calls put_app2_colspc [0x405298] with a0=0x3, a1=?, a2=?, a3=?.
  The `bgezall` at 0x4055e0 calls put_com_vice_luma [0x405394] with a0=a5 at entry (arg5), a1=?, a2=?, a3=?.
  The `bgezall` at 0x4055f8 calls put_dqt [0x404da0] with a0=0x0, a1=a3 at entry (arg3), a2=?, a3=?.
  The `bgezall` at 0x405614 calls put_sof [0x404bec] with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=0x1, a3=0x0.
  The `bgezall` at 0x405624 calls put_dht_dc_luma [0x404e14] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0x405634 calls put_dht_ac_luma [0x404e94] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0x405644 calls put_dri [0x404cc8] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0x405654 calls put_sos [0x404cfc] with a0=0x1, a1=?, a2=?, a3=?.
  The return at 0x405668 has v0 = [0x40cad0].

- `vjpeg_qfmt` in `usr/lib32/dmedia/imageconverters/vicejpeg.so` at 0x405670 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicejpeg.so`.
  Range: 0x405670-0x4056d8 (104 bytes).
  It occupies 104 bytes.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x40567c, `lw` at 0x4056a8.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x4056a0, `sh` at 0x4056cc.
  The `bne` branch at 0x40569c targets 0x40567c, is taken when a4(?) < 0x40 (signed), and falls through when a4(?) >= 0x40 (signed).
  The `bne` branch at 0x4056c8 targets 0x4056a8, is taken when a3(?) < 0x40 (signed), and falls through when a3(?) >= 0x40 (signed).
  The return at 0x4056d0 has v0 = ?.
