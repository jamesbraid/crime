# Readings: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`

One entry per routine, filed here from the reading batches by binary.

- `_poolneeds` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x401ab0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x401ab0-0x401b00 (80 bytes).
  It occupies 80 bytes.
  The `jalr` at 0x401ad8 calls vice_dmbuf_requirements with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x401ae0 targets 0x401af0 and is always taken.
  The return at 0x401af8 has v0 = ret(vice_dmbuf_requirements).
  The instructions from 0x401ae8 to 0x401aec are not reached by any path from the entry, and their branches are not listed.

- `init_formats` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x401b00 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x401b00-0x401bb4 (180 bytes).
  It occupies 180 bytes.
  The `sw` at 0x401b80 stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `sw` at 0x401b88 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x401b90 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `jalr` at 0x401b24 calls dmParamsCreate with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401b44 calls dmParamsCreate with a0=a0+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x401b64 calls dmParamsCreate with a0=a0+8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x401b2c targets 0x401b3c, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x401b34 targets 0x401ba4 and is always taken.
  The `beq` branch at 0x401b4c targets 0x401b5c, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x401b54 targets 0x401ba4 and is always taken.
  The `beq` branch at 0x401b6c targets 0x401b7c, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x401b74 targets 0x401ba4 and is always taken.
  The `beq` branch at 0x401b94 targets 0x401ba4 and is always taken.
  The return at 0x401bac has v0 = one of -0x1, 0x0.
  The instructions from 0x401b9c to 0x401ba0 are not reached by any path from the entry, and their branches are not listed.

- `free_formats` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x401bb4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x401bb4-0x401c48 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0x401bdc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x401bf0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x401c04 loads 4 bytes from a0 (arg0 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x401c10, `lw` at 0x401c28.
  The `jalr` at 0x401bd8 calls dmParamsDestroy with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401bec calls dmParamsDestroy with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0x401c00 calls dmParamsDestroy with a0=[a0+8], a1=?, a2=?, a3=?.
  The `jalr` at 0x401c24 calls dmBufferDestroyPool with a0=[a0+12], a1=?, a2=?, a3=?.
  The `beq` branch at 0x401c14 targets 0x401c30, is taken when t0(=[a0+12]) == 0, and falls through when t0(=[a0+12]) != 0.
  The `beq` branch at 0x401c30 targets 0x401c38 and is always taken.
  The return at 0x401c40 has v0 = ?.

- `required_params` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x401c48 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x401c48-0x401d38 (240 bytes).
  It occupies 240 bytes.
  The `jalr` at 0x401c74 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x40c000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401c90 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x40c018, a2=?, a3=?.
  The `jalr` at 0x401cac calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x40c028, a2=?, a3=?.
  The `jalr` at 0x401cc8 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x40c038, a2=?, a3=?.
  The `jalr` at 0x401ce4 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x40c04c, a2=?, a3=?.
  The `jalr` at 0x401d04 calls dmSetError with a0=0x1773, a1=0x40c064, a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x401c7c targets 0x401cf4, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x401c98 targets 0x401cf4, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x401cb4 targets 0x401cf4, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x401cd0 targets 0x401cf4, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `bne` branch at 0x401cec targets 0x401d18, is taken when v0(=ret(dmParamsIsPresent)) != 0, and falls through when v0(=ret(dmParamsIsPresent)) == 0.
  The `beq` branch at 0x401d10 targets 0x401d28 and is always taken.
  The `beq` branch at 0x401d18 targets 0x401d28 and is always taken.
  The return at 0x401d30 has v0 = one of -0x1, 0x0.
  The instructions from 0x401d20 to 0x401d24 are not reached by any path from the entry, and their branches are not listed.

- `needsConvert` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x401d38 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x401d38-0x401fdc (676 bytes).
  It occupies 676 bytes.
  The `jalr` at 0x401d74 calls required_params [0x401c48] with a0=a0 at entry (arg0), a1=0x40c070, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401da0 calls __assert with a0=0x40c074, a1=0x40c09c, a2=0xad, a3=?.
  The `jalr` at 0x401dbc calls required_params [0x401c48] with a0=a1 at entry (arg1), a1=0x40c0a8, a2=?, a3=?.
  The `jalr` at 0x401de8 calls __assert with a0=0x40c0ac, a1=0x40c0d4, a2=0xae, a3=?.
  The `jalr` at 0x401e00 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x40c0e0, a2=?, a3=?.
  The `jalr` at 0x401e1c calls dmParamsGetInt with a0=a1 at entry (arg1), a1=0x40c0f0, a2=?, a3=?.
  The `jalr` at 0x401e38 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x40c100, a2=?, a3=?.
  The `jalr` at 0x401e54 calls dmParamsGetInt with a0=a1 at entry (arg1), a1=0x40c110, a2=?, a3=?.
  The `jalr` at 0x401e70 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x40c120, a2=?, a3=?.
  The `jalr` at 0x401e8c calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x40c138, a2=?, a3=?.
  The `jalr` at 0x401eb0 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x40c150, a2=?, a3=?.
  The `jalr` at 0x401ecc calls dmParamsIsPresent with a0=a1 at entry (arg1), a1=0x40c168, a2=?, a3=?.
  The `jalr` at 0x401ee8 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x40c180, a2=?, a3=?.
  The `jalr` at 0x401f04 calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x40c198, a2=?, a3=?.
  The `jalr` at 0x401f28 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x40c1b0, a2=?, a3=?.
  The `jalr` at 0x401f44 calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x40c1c4, a2=?, a3=?.
  The `bne` branch at 0x401d7c targets 0x401d8c, is taken when v0(=ret(required_params)) != 0, and falls through when v0(=ret(required_params)) == 0.
  The `beq` branch at 0x401d84 targets 0x401dac and is always taken.
  The `bne` branch at 0x401dc4 targets 0x401dd4, is taken when v0(=ret(required_params)) != 0, and falls through when v0(=ret(required_params)) == 0.
  The `beq` branch at 0x401dcc targets 0x401df4 and is always taken.
  The `bne` branch at 0x401e24 targets 0x401e9c, is taken when v0(=ret(dmParamsGetInt)) != s0(=ret(dmParamsGetInt)), and falls through when v0(=ret(dmParamsGetInt)) == s0(=ret(dmParamsGetInt)).
  The `bne` branch at 0x401e5c targets 0x401e9c, is taken when v0(=ret(dmParamsGetInt)) != s1(=ret(dmParamsGetInt)), and falls through when v0(=ret(dmParamsGetInt)) == s1(=ret(dmParamsGetInt)).
  The `beq` branch at 0x401e94 targets 0x401ea4, is taken when v0(=ret(dmParamsGetEnum)) == s2(=ret(dmParamsGetEnum)), and falls through when v0(=ret(dmParamsGetEnum)) != s2(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x401e9c targets 0x401fc4 and is always taken.
  The `beq` branch at 0x401eb8 targets 0x401f1c, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x401ed4 targets 0x401f1c, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x401f0c targets 0x401f1c, is taken when v0(=ret(dmParamsGetEnum)) == s0(=ret(dmParamsGetEnum)), and falls through when v0(=ret(dmParamsGetEnum)) != s0(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x401f14 targets 0x401fc4 and is always taken.
  The `bne` branch at 0x401f5c targets 0x401f6c, is taken when t6(=ret(dmParamsGetEnum)) != t7(=ret(dmParamsGetEnum)), and falls through when t6(=ret(dmParamsGetEnum)) == t7(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x401f64 targets 0x401fc4 and is always taken.
  The `bne` branch at 0x401f74 targets 0x401f8c, is taken when t8(=ret(dmParamsGetEnum)) != at(=0x3e9), and falls through when t8(=ret(dmParamsGetEnum)) == at(=0x3e9).
  The `beq` branch at 0x401f84 targets 0x401fac, is taken when t9(=ret(dmParamsGetEnum)) == at(=0x3ea), and falls through when t9(=ret(dmParamsGetEnum)) != at(=0x3ea).
  The `bne` branch at 0x401f94 targets 0x401fb4, is taken when t0(=ret(dmParamsGetEnum)) != at(=0x3ea), and falls through when t0(=ret(dmParamsGetEnum)) == at(=0x3ea).
  The `bne` branch at 0x401fa4 targets 0x401fb4, is taken when t1(=ret(dmParamsGetEnum)) != at(=0x3e9), and falls through when t1(=ret(dmParamsGetEnum)) == at(=0x3e9).
  The `beq` branch at 0x401fac targets 0x401fc4 and is always taken.
  The `beq` branch at 0x401fb4 targets 0x401fc4 and is always taken.
  The return at 0x401fd4 has v0 = one of 0x0, 0x1.
  The instructions from 0x401fbc to 0x401fc0 are not reached by any path from the entry, and their branches are not listed.

- `verify_size` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x401fdc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x401fdc-0x40218c (432 bytes).
  It occupies 432 bytes.
  The `jalr` at 0x402004 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x40c1d8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x402060 calls dmSetError with a0=0x1772, a1=0x40c1e8, a2=0x40c1f4, a3=?.
  The `jalr` at 0x402080 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x40c200, a2=?, a3=?.
  The `jalr` at 0x4020e4 calls dmSetError with a0=0x1772, a1=0x40c210, a2=0x40c21c, a3=?.
  The `jalr` at 0x402100 calls dmImageFrameSize with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x402158 calls dmSetError with a0=0x1772, a1=0x40c234, a2=0x40c240, a3=?.
  The `blez` branch at 0x402018 targets 0x40204c, is taken when t6(=ret(dmParamsGetInt)) <= 0 (signed), and falls through when t6(=ret(dmParamsGetInt)) > 0 (signed).
  The `bgez` branch at 0x402020 targets 0x402034, is taken when t6(=ret(dmParamsGetInt)) >= 0 (signed), and falls through when t6(=ret(dmParamsGetInt)) < 0 (signed).
  The `beq` branch at 0x402028 targets 0x402034, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `bne` branch at 0x402034 targets 0x40204c, is taken when t7(?) != 0, and falls through when t7(?) == 0.
  The `bne` branch at 0x402044 targets 0x402074, is taken when t6(=ret(dmParamsGetInt)) < at(=0x8001) (signed), and falls through when t6(=ret(dmParamsGetInt)) >= at(=0x8001) (signed).
  The `beq` branch at 0x40206c targets 0x40217c and is always taken.
  The `beq` branch at 0x402098 targets 0x4020f8, is taken when t8(=ret(dmParamsGetInt)) == at(=0xf3), and falls through when t8(=ret(dmParamsGetInt)) != at(=0xf3).
  The `beq` branch at 0x4020a4 targets 0x4020f8, is taken when t8(=ret(dmParamsGetInt)) == at(=0x1e6), and falls through when t8(=ret(dmParamsGetInt)) != at(=0x1e6).
  The `blez` branch at 0x4020ac targets 0x4020d0, is taken when t8(=ret(dmParamsGetInt)) <= 0 (signed), and falls through when t8(=ret(dmParamsGetInt)) > 0 (signed).
  The `bgez` branch at 0x4020b4 targets 0x4020c8, is taken when t8(=ret(dmParamsGetInt)) >= 0 (signed), and falls through when t8(=ret(dmParamsGetInt)) < 0 (signed).
  The `beq` branch at 0x4020bc targets 0x4020c8, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x4020c8 targets 0x4020f8, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x4020f0 targets 0x40217c and is always taken.
  The `beq` branch at 0x402114 targets 0x402144, is taken when t0(=ret(dmImageFrameSize)) == 0, and falls through when t0(=ret(dmImageFrameSize)) != 0.
  The `beq` branch at 0x402128 targets 0x402144, is taken when t0(=ret(dmImageFrameSize)) >= at(=0x400001) (unsigned), and falls through when t0(=ret(dmImageFrameSize)) < at(=0x400001) (unsigned).
  The `bne` branch at 0x40213c targets 0x40216c, is taken when t0(=ret(dmImageFrameSize)) < at(=0x3e0001) (unsigned), and falls through when t0(=ret(dmImageFrameSize)) >= at(=0x3e0001) (unsigned).
  The `beq` branch at 0x402164 targets 0x40217c and is always taken.
  The `beq` branch at 0x40216c targets 0x40217c and is always taken.
  The return at 0x402184 has v0 = one of -0x1, 0x0.
  The instructions from 0x402174 to 0x402178 are not reached by any path from the entry, and their branches are not listed.

- `verify_uncompressed` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x40218c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x40218c-0x402260 (212 bytes).
  It occupies 212 bytes.
  The `jalr` at 0x4021c0 calls required_params [0x401c48] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4021e8 calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x40c254, a2=?, a3=?.
  The `jalr` at 0x402204 calls strcmp with a0=ret(dmParamsGetString), a1=0x40c26c, a2=?, a3=?.
  The `jalr` at 0x402228 calls dmSetError with a0=0x1772, a1=0x40c280, a2=0x40c28c, a3=?.
  The `bne` branch at 0x4021cc targets 0x4021dc, is taken when v0(=ret(required_params)) != at(=-0x1), and falls through when v0(=ret(required_params)) == at(=-0x1).
  The `beq` branch at 0x4021d4 targets 0x40224c and is always taken.
  The `beq` branch at 0x40220c targets 0x40223c, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x402234 targets 0x40224c and is always taken.
  The `beq` branch at 0x40223c targets 0x40224c and is always taken.
  The return at 0x402258 has v0 = one of -0x1, 0x0.
  The instructions from 0x402244 to 0x402248 are not reached by any path from the entry, and their branches are not listed.

- `verify_compressed` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x402260 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x402260-0x402438 (472 bytes).
  It occupies 472 bytes.
  The `jalr` at 0x402298 calls required_params [0x401c48] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4022c0 calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x40c2a4, a2=?, a3=?.
  The `jalr` at 0x4022dc calls strcmp with a0=ret(dmParamsGetString), a1=0x40c2bc, a2=?, a3=?.
  The `jalr` at 0x4022f8 calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x40c2c4, a2=?, a3=?.
  The `jalr` at 0x402314 calls strcmp with a0=ret(dmParamsGetString), a1=0x40c2dc, a2=?, a3=?.
  The `jalr` at 0x402338 calls dmSetError with a0=0x1772, a1=0x40c2ec, a2=0x40c2f8, a3=?.
  The `jalr` at 0x402358 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x40c310, a2=?, a3=?.
  The `jalr` at 0x402380 calls dmSetError with a0=0x1772, a1=0x40c328, a2=0x40c334, a3=?.
  The `jalr` at 0x4023a0 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x40c34c, a2=?, a3=?.
  The `jalr` at 0x4023e4 calls verify_size [0x401fdc] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x402408 calls dmSetError with a0=0x1772, a1=0x40c360, a2=0x40c36c, a3=?.
  The `bne` branch at 0x4022a4 targets 0x4022b4, is taken when v0(=ret(required_params)) != at(=-0x1), and falls through when v0(=ret(required_params)) == at(=-0x1).
  The `beq` branch at 0x4022ac targets 0x402424 and is always taken.
  The `beq` branch at 0x4022e4 targets 0x40234c, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x40231c targets 0x40234c, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x402344 targets 0x402424 and is always taken.
  The `beq` branch at 0x402364 targets 0x402394, is taken when v0(=ret(dmParamsGetEnum)) == at(=0x44c), and falls through when v0(=ret(dmParamsGetEnum)) != at(=0x44c).
  The `beq` branch at 0x40238c targets 0x402424 and is always taken.
  The `beq` branch at 0x4023b0 targets 0x4023d8, is taken when s0(=ret(dmParamsGetEnum)) == at(=0x3ea), and falls through when s0(=ret(dmParamsGetEnum)) != at(=0x3ea).
  The `beq` branch at 0x4023bc targets 0x4023d8, is taken when s0(=ret(dmParamsGetEnum)) == at(=0x3ed), and falls through when s0(=ret(dmParamsGetEnum)) != at(=0x3ed).
  The `beq` branch at 0x4023c8 targets 0x4023d8, is taken when s0(=ret(dmParamsGetEnum)) == at(=0x3f0), and falls through when s0(=ret(dmParamsGetEnum)) != at(=0x3f0).
  The `beq` branch at 0x4023d0 targets 0x4023f4 and is always taken.
  The `beq` branch at 0x4023ec targets 0x402424 and is always taken.
  The `beq` branch at 0x402414 targets 0x402424 and is always taken.
  The return at 0x402430 has v0 = one of -0x1, ret(verify_size).
  The instructions from 0x40241c to 0x402420 are not reached by any path from the entry, and their branches are not listed.

- `get_default_uncompressed` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x402438 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x402438-0x4024f0 (184 bytes).
  It occupies 184 bytes.
  The `jalr` at 0x402464 calls dmSetImageDefaults with a0=a0 at entry (arg0), a1=0x140, a2=0xf0, a3=0x3f0.
  The `jalr` at 0x40248c calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x40c380, a2=0x44c, a3=?.
  The `jalr` at 0x4024b8 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x40c398, a2=0x40c3b0, a3=?.
  The `beq` branch at 0x40246c targets 0x40247c, is taken when v0(=ret(dmSetImageDefaults)) == 0, and falls through when v0(=ret(dmSetImageDefaults)) != 0.
  The `beq` branch at 0x402474 targets 0x4024e0 and is always taken.
  The `beq` branch at 0x402494 targets 0x4024a4, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x40249c targets 0x4024e0 and is always taken.
  The `beq` branch at 0x4024c0 targets 0x4024d0, is taken when v0(=ret(dmParamsSetString)) == 0, and falls through when v0(=ret(dmParamsSetString)) != 0.
  The `beq` branch at 0x4024c8 targets 0x4024e0 and is always taken.
  The `beq` branch at 0x4024d0 targets 0x4024e0 and is always taken.
  The return at 0x4024e8 has v0 = one of -0x1, 0x0.
  The instructions from 0x4024d8 to 0x4024dc are not reached by any path from the entry, and their branches are not listed.

- `get_default_compressed` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x4024f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x4024f0-0x4026c0 (464 bytes).
  It occupies 464 bytes.
  The `jalr` at 0x40251c calls dmSetImageDefaults with a0=a0 at entry (arg0), a1=0x140, a2=0xf0, a3=0x3f0.
  The `jalr` at 0x402544 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x40c3c4, a2=0x44c, a3=?.
  The `jalr` at 0x402570 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x40c3dc, a2=0x40c3f4, a3=?.
  The `beq` branch at 0x402524 targets 0x402534, is taken when v0(=ret(dmSetImageDefaults)) == 0, and falls through when v0(=ret(dmSetImageDefaults)) != 0.
  The `beq` branch at 0x40252c targets 0x402598 and is always taken.
  The `beq` branch at 0x40254c targets 0x40255c, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x402554 targets 0x402598 and is always taken.
  The `beq` branch at 0x402578 targets 0x402588, is taken when v0(=ret(dmParamsSetString)) == 0, and falls through when v0(=ret(dmParamsSetString)) != 0.
  The `beq` branch at 0x402580 targets 0x402598 and is always taken.
  The `beq` branch at 0x402588 targets 0x402598 and is always taken.
  The return at 0x4025a0 has v0 = one of -0x1, 0x0.
  The instructions from 0x402590 to 0x402594 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4025a8 to 0x4026bc are not reached by any path from the entry, and their branches are not listed.

- `dmICInitDso` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x4025a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x4025a8-0x4026c0 (280 bytes).
  It occupies 280 bytes.
  8 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4025d0, `lw` at 0x4025e0, `lw` at 0x4025e8.
  8 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4025dc, `sw` at 0x4025e4, `sw` at 0x4025f0.
  The `jalr` at 0x40260c calls dmICRegisterConverter with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x402668 calls dmICRegisterConverter with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40268c calls dmSetError with a0=0x1774, a1=0x40c3fc, a2=0x40c408, a3=?.
  The `bne` branch at 0x4025ec targets 0x4025d0, is taken when t6(?) != t0(=0x411108), and falls through when t6(?) == t0(=0x411108).
  The `bltz` branch at 0x402614 targets 0x402678, is taken when v0(=ret(dmICRegisterConverter)) < 0 (signed), and falls through when v0(=ret(dmICRegisterConverter)) >= 0 (signed).
  The `bne` branch at 0x402648 targets 0x40262c, is taken when t1(?) != t5(=0x411154), and falls through when t1(?) == t5(=0x411154).
  The `bgez` branch at 0x402670 targets 0x4026a0, is taken when v0(=ret(dmICRegisterConverter)) >= 0 (signed), and falls through when v0(=ret(dmICRegisterConverter)) < 0 (signed).
  The `beq` branch at 0x402698 targets 0x4026b0 and is always taken.
  The `beq` branch at 0x4026a0 targets 0x4026b0 and is always taken.
  The return at 0x4026b8 has v0 = one of -0x1, 0x0.
  The instructions from 0x4026a8 to 0x4026ac are not reached by any path from the entry, and their branches are not listed.

- `e_open` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x4026c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x4026c0-0x402a7c (956 bytes).
  It occupies 956 bytes.
  The `sw` at 0x402784 stores 4 bytes to ret(calloc) +0x11c.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4027fc, `sw` at 0x4028a0, `sw` at 0x4029b4.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x402808, `lw` at 0x402938, `lw` at 0x402994.
  The `sw` at 0x402a54 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x4026e8 calls vice_get_lib_rev with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x402718 calls dmSetError with a0=0x1774, a1=0x40c428, a2=0x40c434, a3=0x6b7a.
  The `jalr` at 0x402738 calls calloc with a0=0x1, a1=0x120, a2=?, a3=?.
  The `jalr` at 0x402768 calls dmSetError with a0=0x1774, a1=0x40c450, a2=0x40c45c, a3=?.
  The `jalr` at 0x402794 calls init_formats [0x401b00] with a0=ret(calloc)+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x4027b8 calls dmSetError with a0=0x1774, a1=0x40c46c, a2=0x40c478, a3=?.
  The `jalr` at 0x4027cc calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4027e8 calls vice_open_and_setetc with a0=0x40c4a4, a1=?, a2=?, a3=?.
  The `jalr` at 0x402828 calls dmSetError with a0=0x1774, a1=0x40c4b4, a2=0x40c4c0, a3=?.
  The `jalr` at 0x402840 calls free_formats [0x401bb4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x402854 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x402874 calls vice_alloc with a0=ret(vice_open_and_setetc), a1=0x1, a2=?, a3=?.
  The `jalr` at 0x402890 calls vice_mmap with a0=ret(vice_open_and_setetc), a1=ret(vice_alloc), a2=0x1, a3=?.
  The `jalr` at 0x4028bc calls vice_settlb with a0=ret(vice_open_and_setetc), a1=0x7e, a2=ret(vice_alloc), a3=0x1.
  The `jalr` at 0x4028e0 calls dmSetError with a0=0x1774, a1=0x40c4dc, a2=0x40c4e8, a3=?.
  The `jalr` at 0x4028f8 calls e_cleanup [0x402a7c] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x402914 calls vice_file with a0=0x40c508, a1=?, a2=?, a3=?.
  The `jalr` at 0x402934 calls __vu_readfile with a0=ret(vice_file), a1=?, a2=0x1e00, a3=?.
  The `jalr` at 0x40295c calls dmSetError with a0=0x1774, a1=0x40c518, a2=0x40c524, a3=?.
  The `jalr` at 0x402974 calls e_cleanup [0x402a7c] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4029a4 calls vice_event_init with a0=?, a1=?, a2=?, a3=0x40.
  The `jalr` at 0x4029dc calls dmSetError with a0=0x1774, a1=0x40c540, a2=0x40c54c, a3=?.
  The `jalr` at 0x4029f4 calls e_cleanup [0x402a7c] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x402a10 calls getenv with a0=0x40c564, a1=?, a2=?, a3=?.
  The `jalr` at 0x402a40 calls printf with a0=0x40c570, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4026f8 targets 0x40272c, is taken when t6(?) == at(=0x6b7a), and falls through when t6(?) != at(=0x6b7a).
  The `beq` branch at 0x402724 targets 0x402a68 and is always taken.
  The `bne` branch at 0x40274c targets 0x40277c, is taken when t7(=ret(calloc)) != 0, and falls through when t7(=ret(calloc)) == 0.
  The `beq` branch at 0x402774 targets 0x402a68 and is always taken.
  The `beq` branch at 0x40279c targets 0x4027e0, is taken when v0(=ret(init_formats)) == 0, and falls through when v0(=ret(init_formats)) != 0.
  The `beq` branch at 0x4027d8 targets 0x402a68 and is always taken.
  The `bgez` branch at 0x40280c targets 0x402868, is taken when t2(?) >= 0 (signed), and falls through when t2(?) < 0 (signed).
  The `beq` branch at 0x402860 targets 0x402a68 and is always taken.
  The `beq` branch at 0x4028c4 targets 0x40290c, is taken when v0(=ret(vice_settlb)) == 0, and falls through when v0(=ret(vice_settlb)) != 0.
  The `beq` branch at 0x402904 targets 0x402a68 and is always taken.
  The `beq` branch at 0x402940 targets 0x402988, is taken when v0(=ret(__vu_readfile)) == at(=0x1e00), and falls through when v0(=ret(__vu_readfile)) != at(=0x1e00).
  The `beq` branch at 0x402980 targets 0x402a68 and is always taken.
  The `bgez` branch at 0x4029c0 targets 0x402a08, is taken when t0(?) >= 0 (signed), and falls through when t0(?) < 0 (signed).
  The `beq` branch at 0x402a00 targets 0x402a68 and is always taken.
  The `beq` branch at 0x402a30 targets 0x402a4c, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `beq` branch at 0x402a58 targets 0x402a68 and is always taken.
  The return at 0x402a74 has v0 = one of -0x1, 0x0.
  The instructions from 0x402a60 to 0x402a64 are not reached by any path from the entry, and their branches are not listed.

- `e_cleanup` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x402a7c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x402a7c-0x402b24 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x402aa8 loads 4 bytes from a0 (arg0 at entry) +0x108.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x402ab8, `lw` at 0x402ad8.
  The `jalr` at 0x402aa4 calls munmap with a0=[a0+264], a1=0x10000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x402ac0 calls vice_event_uninit with a0=[a0], a1=a0+184, a2=a0+224, a3=?.
  The `jalr` at 0x402ad4 calls vice_close with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x402aec calls free_formats [0x401bb4] with a0=a0+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x402b00 calls free with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x402b0c targets 0x402b14 and is always taken.
  The return at 0x402b1c has v0 = ret(free).

- `e_close` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x402b24 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x402b24-0x402b9c (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x402b4c loads 4 bytes from a0 (arg0 at entry) +0xb4.
  The `jalr` at 0x402b60 calls printf with a0=0x40c58c, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x402b78 calls e_cleanup [0x402a7c] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x402b50 targets 0x402b6c, is taken when t8(=[a0+180]) == 0, and falls through when t8(=[a0+180]) != 0.
  The `beq` branch at 0x402b84 targets 0x402b8c and is always taken.
  The return at 0x402b94 has v0 = ret(e_cleanup).

- `e_describe` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x402b9c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x402b9c-0x402c88 (236 bytes).
  It occupies 236 bytes.
  The `jalr` at 0x402bcc calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x40c5a8, a2=0x6a706567, a3=a3 at entry (arg3).
  The `jalr` at 0x402bec calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x40c5b4, a2=0x40c5c4, a3=?.
  The `jalr` at 0x402c08 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x40c5cc, a2=0x1, a3=?.
  The `jalr` at 0x402c24 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x40c5d8, a2=0x1, a3=?.
  The `jalr` at 0x402c40 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x40c5f0, a2=0x0, a3=?.
  The `jalr` at 0x402c5c calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x40c600, a2=0x1, a3=?.
  The `beq` branch at 0x402c68 targets 0x402c78 and is always taken.
  The return at 0x402c80 has v0 = 0x0.
  The instructions from 0x402c70 to 0x402c74 are not reached by any path from the entry, and their branches are not listed.

- `e_dstpoolis` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x402c88 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x402c88-0x402d54 (204 bytes).
  It occupies 204 bytes.
  The `sw` at 0x402cb8 stores 4 bytes to a0 (arg0 at entry) +0x98.
  The `sw` at 0x402cd4 stores 4 bytes to a0 (arg0 at entry) +0x9c.
  The `lw` at 0x402ce4 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lw` at 0x402d30 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x402cc4 calls dmBufferGetAllocSize with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x402d0c calls dmSetError with a0=0x1772, a1=0x40c610, a2=0x40c61c, a3=0x3e0000.
  The `jalr` at 0x402d2c calls vice_dmbuf_outpool with a0=[a0], a1=a1 at entry (arg1), a2=?, a3=?.
  The `bne` branch at 0x402cec targets 0x402d20, is taken when t1(=[a0+156]) < at(=0x3e0001) (signed), and falls through when t1(=[a0+156]) >= at(=0x3e0001) (signed).
  The `beq` branch at 0x402d18 targets 0x402d44 and is always taken.
  The `beq` branch at 0x402d34 targets 0x402d44 and is always taken.
  The return at 0x402d4c has v0 = one of -0x1, ret(vice_dmbuf_outpool).
  The instructions from 0x402d3c to 0x402d40 are not reached by any path from the entry, and their branches are not listed.

- `e_fd` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x402d54 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x402d54-0x402d84 (48 bytes).
  It occupies 48 bytes.
  The `lw` at 0x402d70 loads 4 bytes from a0 (arg0 at entry) +0xa0.
  The `beq` branch at 0x402d6c targets 0x402d7c and is always taken.
  The return at 0x402d7c has v0 = [a0+160].
  The instructions from 0x402d74 to 0x402d78 are not reached by any path from the entry, and their branches are not listed.

- `e_getsrcfilled` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x402d84 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x402d84-0x402dec (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x402db8 loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `jalr` at 0x402db4 calls dmFifoNfilled with a0=[a0+184], a1=sp-8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x402dbc targets 0x402dcc, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The `beq` branch at 0x402dc4 targets 0x402ddc and is always taken.
  The `beq` branch at 0x402dcc targets 0x402ddc and is always taken.
  The return at 0x402de4 has v0 = one of -0x1, ?.
  The instructions from 0x402dd4 to 0x402dd8 are not reached by any path from the entry, and their branches are not listed.

- `e_getdstfilled` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x402dec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x402dec-0x402e54 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x402e20 loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `jalr` at 0x402e1c calls dmFifoNfilled with a0=[a0+224], a1=sp-8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x402e24 targets 0x402e34, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The `beq` branch at 0x402e2c targets 0x402e44 and is always taken.
  The `beq` branch at 0x402e34 targets 0x402e44 and is always taken.
  The return at 0x402e4c has v0 = one of -0x1, ?.
  The instructions from 0x402e3c to 0x402e40 are not reached by any path from the entry, and their branches are not listed.

- `e_verifysrc` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x402e54 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x402e54-0x402ed0 (124 bytes).
  It occupies 124 bytes.
  The `jalr` at 0x402e80 calls verify_uncompressed [0x40218c] with a0=a0 at entry (arg0), a1=0x40c634, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x402ea8 calls verify_size [0x401fdc] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0x402e8c targets 0x402e9c, is taken when v0(=ret(verify_uncompressed)) != at(=-0x1), and falls through when v0(=ret(verify_uncompressed)) == at(=-0x1).
  The `beq` branch at 0x402e94 targets 0x402ec0 and is always taken.
  The `beq` branch at 0x402eb0 targets 0x402ec0 and is always taken.
  The return at 0x402ec8 has v0 = one of -0x1, ret(verify_size).
  The instructions from 0x402eb8 to 0x402ebc are not reached by any path from the entry, and their branches are not listed.

- `e_verifydst` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x402ed0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x402ed0-0x402f24 (84 bytes).
  It occupies 84 bytes.
  The `jalr` at 0x402efc calls verify_compressed [0x402260] with a0=a0 at entry (arg0), a1=0x40c638, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x402f04 targets 0x402f14 and is always taken.
  The return at 0x402f1c has v0 = ret(verify_compressed).
  The instructions from 0x402f0c to 0x402f10 are not reached by any path from the entry, and their branches are not listed.

- `e_verifycvt` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x402f24 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x402f24-0x40306c (328 bytes).
  It occupies 328 bytes.
  The `jalr` at 0x402f4c calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x40c63c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x402f68 calls dmParamsGetFloat with a0=a0 at entry (arg0), a1=0x40c658, a2=?, a3=?.
  The `jalr` at 0x402fcc calls dmSetError with a0=0x1772, a1=0x40c674, a2=0x40c680, a3=?.
  The `jalr` at 0x402fec calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x40c688, a2=?, a3=?.
  The `jalr` at 0x403008 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x40c69c, a2=?, a3=?.
  The `jalr` at 0x403038 calls dmSetError with a0=0x1772, a1=0x40c6b0, a2=0x40c6bc, a3=?.
  The `beq` branch at 0x402f54 targets 0x402fe0, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `bc1t` branch at 0x402f90 targets 0x402fb8, is taken when f4(=ret(dmParamsGetFloat)) < f6 (c.lt.d at 0x402f88), and falls through when not (f4(=ret(dmParamsGetFloat)) < f6 (c.lt.d at 0x402f88)).
  The `bc1f` branch at 0x402fb0 targets 0x402fe0, is taken when not (f8 < f4 (c.lt.d at 0x402fa8)), and falls through when f8 < f4 (c.lt.d at 0x402fa8).
  The `beq` branch at 0x402fd8 targets 0x40305c and is always taken.
  The `beq` branch at 0x402ff4 targets 0x40304c, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `bgez` branch at 0x40301c targets 0x40304c, is taken when t6(=ret(dmParamsGetInt)) >= 0 (signed), and falls through when t6(=ret(dmParamsGetInt)) < 0 (signed).
  The `beq` branch at 0x403044 targets 0x40305c and is always taken.
  The `beq` branch at 0x40304c targets 0x40305c and is always taken.
  The return at 0x403064 has v0 = one of -0x1, 0x0.
  The instructions from 0x403054 to 0x403058 are not reached by any path from the entry, and their branches are not listed.

- `e_verifysrcdstcvt` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x40306c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x40306c-0x403208 (412 bytes).
  It occupies 412 bytes.
  The `jalr` at 0x4030a8 calls e_verifysrc [0x402e54] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4030d8 calls e_verifydst [0x402ed0] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x403108 calls e_verifycvt [0x402f24] with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `jalr` at 0x40312c calls dmParamsIsPresent with a0=a2 at entry (arg2), a1=0x40c6c4, a2=?, a3=?.
  The `jalr` at 0x403148 calls dmParamsGetInt with a0=a2 at entry (arg2), a1=0x40c6d8, a2=?, a3=?.
  The `jalr` at 0x40316c calls dmParamsIsPresent with a0=a1 at entry (arg1), a1=0x40c6ec, a2=?, a3=?.
  The `jalr` at 0x403190 calls dmSetError with a0=0x1773, a1=0x40c6fc, a2=0x40c708, a3=?.
  The `jalr` at 0x4031b0 calls dmParamsIsPresent with a0=a1 at entry (arg1), a1=0x40c738, a2=?, a3=?.
  The `jalr` at 0x4031d4 calls dmSetError with a0=0x1773, a1=0x40c750, a2=0x40c75c, a3=?.
  The `beq` branch at 0x403094 targets 0x4030c0, is taken when t6(=a0) == 0, and falls through when t6(=a0) != 0.
  The `beq` branch at 0x4030b0 targets 0x4030c0, is taken when v0(=ret(e_verifysrc)) == 0, and falls through when v0(=ret(e_verifysrc)) != 0.
  The `beq` branch at 0x4030b8 targets 0x4031f8 and is always taken.
  The `beq` branch at 0x4030c4 targets 0x4030f0, is taken when t7(=a1) == 0, and falls through when t7(=a1) != 0.
  The `beq` branch at 0x4030e0 targets 0x4030f0, is taken when v0(=ret(e_verifydst)) == 0, and falls through when v0(=ret(e_verifydst)) != 0.
  The `beq` branch at 0x4030e8 targets 0x4031f8 and is always taken.
  The `beq` branch at 0x4030f4 targets 0x403120, is taken when t8(=a2) == 0, and falls through when t8(=a2) != 0.
  The `beq` branch at 0x403110 targets 0x403120, is taken when v0(=ret(e_verifycvt)) == 0, and falls through when v0(=ret(e_verifycvt)) != 0.
  The `beq` branch at 0x403118 targets 0x4031f8 and is always taken.
  The `beq` branch at 0x403134 targets 0x4031e8, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `bne` branch at 0x403150 targets 0x403160, is taken when v0(=ret(dmParamsGetInt)) != 0, and falls through when v0(=ret(dmParamsGetInt)) == 0.
  The `beq` branch at 0x403158 targets 0x4031f8 and is always taken.
  The `bne` branch at 0x403174 targets 0x4031a4, is taken when v0(=ret(dmParamsIsPresent)) != 0, and falls through when v0(=ret(dmParamsIsPresent)) == 0.
  The `beq` branch at 0x40319c targets 0x4031f8 and is always taken.
  The `bne` branch at 0x4031b8 targets 0x4031e8, is taken when v0(=ret(dmParamsIsPresent)) != 0, and falls through when v0(=ret(dmParamsIsPresent)) == 0.
  The `beq` branch at 0x4031e0 targets 0x4031f8 and is always taken.
  The `beq` branch at 0x4031e8 targets 0x4031f8 and is always taken.
  The return at 0x403200 has v0 = one of -0x1, 0x0.
  The instructions from 0x4031f0 to 0x4031f4 are not reached by any path from the entry, and their branches are not listed.

- `e_defaultsrc` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x403208 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x403208-0x403258 (80 bytes).
  It occupies 80 bytes.
  The `jalr` at 0x403230 calls get_default_uncompressed [0x402438] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x403238 targets 0x403248 and is always taken.
  The return at 0x403250 has v0 = ret(get_default_uncompressed).
  The instructions from 0x403240 to 0x403244 are not reached by any path from the entry, and their branches are not listed.

- `e_defaultdst` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x403258 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x403258-0x4032a8 (80 bytes).
  It occupies 80 bytes.
  The `jalr` at 0x403280 calls get_default_compressed [0x4024f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x403288 targets 0x403298 and is always taken.
  The return at 0x4032a0 has v0 = ret(get_default_compressed).
  The instructions from 0x403290 to 0x403294 are not reached by any path from the entry, and their branches are not listed.

- `e_defaultcvt` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x4032a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x4032a8-0x403364 (188 bytes).
  It occupies 188 bytes.
  The `lw` at 0x4032d4 loads 4 bytes from abs 0x40d038.
  The `lw` at 0x4032d8 loads 4 bytes from abs 0x40d03c.
  The `jalr` at 0x4032dc calls dmParamsSetFloat with a0=a0 at entry (arg0), a1=0x40c794, a2=0x3feccccc, a3=0xffffffffcccccccd.
  The `jalr` at 0x403304 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x40c7b0, a2=0x1, a3=?.
  The `jalr` at 0x40332c calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x40c7bc, a2=0x0, a3=?.
  The `beq` branch at 0x4032e4 targets 0x4032f4, is taken when v0(=ret(dmParamsSetFloat)) == 0, and falls through when v0(=ret(dmParamsSetFloat)) != 0.
  The `beq` branch at 0x4032ec targets 0x403354 and is always taken.
  The `beq` branch at 0x40330c targets 0x40331c, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x403314 targets 0x403354 and is always taken.
  The `beq` branch at 0x403334 targets 0x403344, is taken when v0(=ret(dmParamsSetInt)) == 0, and falls through when v0(=ret(dmParamsSetInt)) != 0.
  The `beq` branch at 0x40333c targets 0x403354 and is always taken.
  The `beq` branch at 0x403344 targets 0x403354 and is always taken.
  The return at 0x40335c has v0 = one of -0x1, 0x0.
  The instructions from 0x40334c to 0x403350 are not reached by any path from the entry, and their branches are not listed.

- `_e_go` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x403364 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x403364-0x403a08 (1700 bytes).
  It occupies 1700 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x403394, `lw` at 0x4039a8.
  The `lw` at 0x4033a0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x4033ac loads 4 bytes from a0 (arg0 at entry) +0xc.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x10c, including `sw` at 0x4034a0, `sw` at 0x403510.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x403500, `lbu` at 0x40353c.
  The `sw` at 0x403560 stores 4 bytes to a0 (arg0 at entry) +0xa4.
  The `sw` at 0x403580 stores 4 bytes to a0 (arg0 at entry) +0xa8.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x60, including `sw` at 0x4035c4, `sw` at 0x4035e4, `sw` at 0x4035f0.
  The `lw` at 0x403808 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x403814 loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lw` at 0x403820 loads 4 bytes from a0 (arg0 at entry) +0x54.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x30, including `sw` at 0x40385c, `sw` at 0x40386c.
  The `lw` at 0x403864 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `sw` at 0x403878 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0x403884 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa4, including `lw` at 0x403890, `lw` at 0x4038cc, `lw` at 0x4038f0.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa8, including `lw` at 0x403894, `lw` at 0x40390c, `lw` at 0x403960.
  The `sw` at 0x4038b0 stores 4 bytes to a0 (arg0 at entry) +0xac.
  The `sw` at 0x4038c0 stores 4 bytes to a0 (arg0 at entry) +0x84.
  The `sw` at 0x4038d8 stores 4 bytes to a0 (arg0 at entry) +0x88.
  The `sw` at 0x4038e8 stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `sw` at 0x403904 stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `sw` at 0x403924 stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `sw` at 0x403930 stores 4 bytes to a0 (arg0 at entry) +0x80.
  The `lw` at 0x403938 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `sw` at 0x40393c stores 4 bytes to a0 (arg0 at entry) +0x8c.
  The `sw` at 0x403948 stores 4 bytes to a0 (arg0 at entry) +0x90.
  The `sw` at 0x403954 stores 4 bytes to a0 (arg0 at entry) +0x118.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x94, including `sw` at 0x403974, `sw` at 0x40399c.
  The `jalr` at 0x4033d4 calls dmParamsIsPresent with a0=[a0+12], a1=0x40c7d0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4033f0 calls dmParamsGetFloat with a0=[a0+12], a1=0x40c7ec, a2=?, a3=?.
  The `jalr` at 0x40340c calls dmParamsIsPresent with a0=[a0+12], a1=0x40c808, a2=?, a3=?.
  The `jalr` at 0x403428 calls dmParamsGetInt with a0=[a0+12], a1=0x40c81c, a2=?, a3=?.
  The `jalr` at 0x403444 calls dmParamsIsPresent with a0=[a0+8], a1=0x40c830, a2=?, a3=?.
  The `jalr` at 0x403460 calls dmParamsIsPresent with a0=[a0+8], a1=0x40c840, a2=?, a3=?.
  The `jalr` at 0x403484 calls dmSetError with a0=0x1773, a1=0x40c858, a2=0x40c864, a3=?.
  The `jalr` at 0x403550 calls dmParamsGetInt with a0=[a0+8], a1=0x40c8b4, a2=?, a3=?.
  The `jalr` at 0x403570 calls dmParamsGetInt with a0=[a0+8], a1=0x40c8c4, a2=?, a3=?.
  The `jalr` at 0x403590 calls dmParamsGetEnum with a0=[a0+8], a1=0x40c8d4, a2=?, a3=?.
  The `jalr` at 0x4035ac calls dmParamsIsPresent with a0=[a0+12], a1=0x40c8e8, a2=?, a3=?.
  The `jalr` at 0x4036b8 calls __assert with a0=0x40c8fc, a1=0x40c908, a2=0x2c9, a3=?.
  The `jalr` at 0x4036d8 calls dmSetError with a0=0x1777, a1=0x40c914, a2=0x40c920, a3=?.
  The `jalr` at 0x403704 calls vice_file with a0=0x40c930, a1=?, a2=?, a3=?.
  The `jalr` at 0x403724 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=0x0.
  The `jalr` at 0x403738 calls vice_file with a0=0x40c940, a1=?, a2=?, a3=?.
  The `jalr` at 0x403758 calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=?.
  The `jalr` at 0x403770 calls vice_file with a0=0x40c950, a1=?, a2=?, a3=?.
  The `jalr` at 0x403790 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=0x0.
  The `jalr` at 0x4037a4 calls vice_file with a0=0x40c95c, a1=?, a2=?, a3=?.
  The `jalr` at 0x4037c4 calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=?.
  The `jalr` at 0x4037d8 calls vice_file with a0=0x40c968, a1=?, a2=?, a3=?.
  The `jalr` at 0x4037f8 calls vice_load_bsp_table with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=?.
  The `jalr` at 0x403840 calls dmSetError with a0=0x1777, a1=0x40c974, a2=0x40c980, a3=?.
  The `jalr` at 0x4039ac calls vice_event_start with a0=[a0], a1=a0+32, a2=?, a3=?.
  The `jalr` at 0x4039d0 calls dmSetError with a0=0x1777, a1=0x40c99c, a2=0x40c9a8, a3=?.
  The `beq` branch at 0x4033dc targets 0x403400, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x403414 targets 0x40350c, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `blez` branch at 0x403430 targets 0x40350c, is taken when v0(=ret(dmParamsGetInt)) <= 0 (signed), and falls through when v0(=ret(dmParamsGetInt)) > 0 (signed).
  The `beq` branch at 0x40344c targets 0x403470, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `bne` branch at 0x403468 targets 0x403498, is taken when v0(=ret(dmParamsIsPresent)) != 0, and falls through when v0(=ret(dmParamsIsPresent)) == 0.
  The `beq` branch at 0x403490 targets 0x4039f4 and is always taken.
  The `bc1f` branch at 0x4034bc targets 0x4034d8, is taken when not (f6 == f8 (c.eq.d at 0x4034b4)), and falls through when f6 == f8 (c.eq.d at 0x4034b4).
  The `beq` branch at 0x403504 targets 0x403544 and is always taken.
  The `beq` branch at 0x4035b4 targets 0x4035c8, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x4035c0 targets 0x4035f4 and is always taken.
  The `bne` branch at 0x4035d0 targets 0x4035e8, is taken when t0(=ret(dmParamsGetEnum)) != at(=0x3ed), and falls through when t0(=ret(dmParamsGetEnum)) == at(=0x3ed).
  The `beq` branch at 0x4035e0 targets 0x4035f4 and is always taken.
  The `beq` branch at 0x4035fc targets 0x403674, is taken when s0(=ret(dmParamsGetEnum)) == at(=0x3e9), and falls through when s0(=ret(dmParamsGetEnum)) != at(=0x3e9).
  The `beq` branch at 0x403608 targets 0x403674, is taken when s0(=ret(dmParamsGetEnum)) == at(=0x3ea), and falls through when s0(=ret(dmParamsGetEnum)) != at(=0x3ea).
  The `beq` branch at 0x403614 targets 0x403648, is taken when s0(=ret(dmParamsGetEnum)) == at(=0x3ed), and falls through when s0(=ret(dmParamsGetEnum)) != at(=0x3ed).
  The `beq` branch at 0x403620 targets 0x40365c, is taken when s0(=ret(dmParamsGetEnum)) == at(=0x3f0), and falls through when s0(=ret(dmParamsGetEnum)) != at(=0x3f0).
  The `beq` branch at 0x40362c targets 0x40368c, is taken when s0(=ret(dmParamsGetEnum)) == at(=0x7d1), and falls through when s0(=ret(dmParamsGetEnum)) != at(=0x7d1).
  The `beq` branch at 0x403638 targets 0x40368c, is taken when s0(=ret(dmParamsGetEnum)) == at(=0x7d2), and falls through when s0(=ret(dmParamsGetEnum)) != at(=0x7d2).
  The `beq` branch at 0x403640 targets 0x4036a4 and is always taken.
  The `beq` branch at 0x403654 targets 0x4036ec and is always taken.
  The `beq` branch at 0x40366c targets 0x4036ec and is always taken.
  The `beq` branch at 0x403684 targets 0x4036ec and is always taken.
  The `beq` branch at 0x40369c targets 0x4036ec and is always taken.
  The `beq` branch at 0x4036e4 targets 0x4039f4 and is always taken.
  The `bne` branch at 0x4036f4 targets 0x403768, is taken when t2(=ret(dmParamsGetEnum)) != at(=0x3ed), and falls through when t2(=ret(dmParamsGetEnum)) == at(=0x3ed).
  The `beq` branch at 0x403760 targets 0x4037d0 and is always taken.
  The `beq` branch at 0x40380c targets 0x40382c, is taken when t4(=[a0+68]) == 0, and falls through when t4(=[a0+68]) != 0.
  The `beq` branch at 0x403818 targets 0x40382c, is taken when t5(=[a0+80]) == 0, and falls through when t5(=[a0+80]) != 0.
  The `bne` branch at 0x403824 targets 0x403854, is taken when t6(=[a0+84]) != 0, and falls through when t6(=[a0+84]) == 0.
  The `beq` branch at 0x40384c targets 0x4039f4 and is always taken.
  The `bgez` branch at 0x4038f4 targets 0x403904, is taken when t6(=[a0+164]) >= 0 (signed), and falls through when t6(=[a0+164]) < 0 (signed).
  The `bgez` branch at 0x403914 targets 0x403924, is taken when t7(=[a0+168]+7) >= 0 (signed), and falls through when t7(=[a0+168]+7) < 0 (signed).
  The `bne` branch at 0x403964 targets 0x403978, is taken when t4(=[a0+168]) != at(=0xf3), and falls through when t4(=[a0+168]) == at(=0xf3).
  The `beq` branch at 0x403970 targets 0x4039a0 and is always taken.
  The `bne` branch at 0x403984 targets 0x403994, is taken when t6(=[a0+168]) != at(=0x1e6), and falls through when t6(=[a0+168]) == at(=0x1e6).
  The `beq` branch at 0x40398c targets 0x403998 and is always taken.
  The `beq` branch at 0x4039b4 targets 0x4039e4, is taken when v0(=ret(vice_event_start)) == 0, and falls through when v0(=ret(vice_event_start)) != 0.
  The `beq` branch at 0x4039dc targets 0x4039f4 and is always taken.
  The `beq` branch at 0x4039e4 targets 0x4039f4 and is always taken.
  The return at 0x403a00 has v0 = one of -0x1, 0x0.
  The instructions from 0x4039ec to 0x4039f0 are not reached by any path from the entry, and their branches are not listed.

- `dmImageCompressedSize` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x403a08 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x403a08-0x403b74 (364 bytes).
  It occupies 364 bytes.
  The `jalr` at 0x403a34 calls dmParamsIsPresent with a0=a1 at entry (arg1), a1=0x40c9cc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403a50 calls dmParamsGetInt with a0=a1 at entry (arg1), a1=0x40c9e0, a2=?, a3=?.
  The `jalr` at 0x403a88 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x40c9f4, a2=?, a3=?.
  The `jalr` at 0x403aa4 calls dmParamsGetFloat with a0=a0 at entry (arg0), a1=0x40ca04, a2=?, a3=?.
  The `jalr` at 0x403ad0 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x40ca14, a2=?, a3=?.
  The `jalr` at 0x403aec calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x40ca2c, a2=?, a3=?.
  The `beq` branch at 0x403a3c targets 0x403a74, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x403a6c targets 0x403a7c and is always taken.
  The `beq` branch at 0x403a74 targets 0x403b64 and is always taken.
  The `beq` branch at 0x403a90 targets 0x403abc, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x403ab4 targets 0x403ac4 and is always taken.
  The `beq` branch at 0x403abc targets 0x403b64 and is always taken.
  The `beq` branch at 0x403ad8 targets 0x403b18, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x403af4 targets 0x403b10, is taken when v0(=ret(dmParamsGetEnum)) == 0, and falls through when v0(=ret(dmParamsGetEnum)) != 0.
  The `beq` branch at 0x403b10 targets 0x403b20 and is always taken.
  The `beq` branch at 0x403b18 targets 0x403b64 and is always taken.
  The `beq` branch at 0x403b54 targets 0x403b64 and is always taken.
  The return at 0x403b6c has v0 = one of 0x0, ?.
  The instructions from 0x403b5c to 0x403b60 are not reached by any path from the entry, and their branches are not listed.

- `e_send` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x403b74 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x403b74-0x404378 (2052 bytes).
  It occupies 2052 bytes.
  The `lw` at 0x403bbc loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x403bc8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x403cd4, `lw` at 0x403d60.
  The `sw` at 0x403d6c stores 4 bytes to a0 (arg0 at entry) +0x110.
  The `sw` at 0x403d90 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `lw` at 0x403dac loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `lw` at 0x403de8 loads 4 bytes from a0 (arg0 at entry) +0x18.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x403e10, `lw` at 0x403e34, `lw` at 0x403e4c.
  The `lw` at 0x403e1c loads 4 bytes from a0 (arg0 at entry) +0x14.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14, including `sw` at 0x403f00, `sw` at 0x403f40.
  The `lw` at 0x403f1c loads 4 bytes from a0 (arg0 at entry) +0x11c.
  The `sw` at 0x403f34 stores 4 bytes to a0 (arg0 at entry) +0x1c.
  The `lw` at 0x404090 loads 4 bytes from a0 (arg0 at entry) +0x10c.
  The `lw` at 0x4040a8 loads 4 bytes from a0 (arg0 at entry) +0x114.
  The `lw` at 0x4040ac loads 4 bytes from a0 (arg0 at entry) +0x110.
  The `lw` at 0x4040dc loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x4041b0 stores 4 bytes to a0 (arg0 at entry) +0x90.
  The `lw` at 0x4041b8 loads 4 bytes from a0 (arg0 at entry) +0x90.
  The `sw` at 0x4041bc stores 4 bytes to a0 (arg0 at entry) +0x118.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x4041cc, `lw` at 0x404220.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1c, including `lw` at 0x404294, `lw` at 0x4042e0.
  The `lw` at 0x4042b0 loads 4 bytes from ?.
  The `sw` at 0x4042d0 stores 4 bytes to ?.
  The `jalr` at 0x403bec calls dmParamsCopyAllElems with a0=?, a1=[a0+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403c1c calls dmParamsCopyAllElems with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x403c40 calls dmParamsGetEnum with a0=?, a1=0x40ca44, a2=?, a3=?.
  The `jalr` at 0x403c84 calls dmParamsSetEnum with a0=?, a1=0x40ca58, a2=?, a3=?.
  The `jalr` at 0x403ca0 calls dmParamsSetEnum with a0=?, a1=0x40ca6c, a2=0x44c, a3=?.
  The `jalr` at 0x403cd0 calls dmParamsCopyAllElems with a0=?, a1=[a0+12], a2=?, a3=?.
  The `jalr` at 0x403d24 calls _e_go [0x403364] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x403d5c calls dmImageCompressedSize [0x403a08] with a0=?, a1=[a0+12], a2=?, a3=?.
  The `jalr` at 0x403d80 calls needsConvert [0x401d38] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x403d9c calls dmBufferGetSize with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x403dd0 calls dmSetError with a0=0x1777, a1=0x40ca84, a2=0x40ca90, a3=?.
  The `jalr` at 0x403dfc calls dmImageFrameSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x403e48 calls dmBufferDestroyPool with a0=[a0+16], a1=?, a2=?, a3=?.
  The `jalr` at 0x403e5c calls dmParamsCreate with a0=sp-172, a1=?, a2=?, a3=?.
  The `jalr` at 0x403e8c calls dmBufferSetPoolDefaults with a0=?, a1=0x1, a2=?, a3=0x0.
  The `jalr` at 0x403eb4 calls _poolneeds [0x401ab0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x403ecc calls dmBufferCreatePool with a0=?, a1=a0+16, a2=?, a3=?.
  The `jalr` at 0x403ef0 calls dmParamsGetInt with a0=?, a1=0x40caa0, a2=?, a3=?.
  The `jalr` at 0x403f0c calls dmParamsDestroy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x403f24 calls dmICGetDstQueueFD with a0=[a0+284], a1=?, a2=?, a3=?.
  The `jalr` at 0x403f50 calls dmBufferAllocate with a0=[a0+16], a1=sp-12, a2=?, a3=?.
  The `jalr` at 0x403f70 calls dmBufferMapData with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x403f88 calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x403fac calls dmICAnyToAny with a0=ret(dmBufferMapData), a1=ret(dmBufferMapData), a2=?, a3=?.
  The `jalr` at 0x403fd0 calls dmBufferSetSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x403ff0 calls dmBufferGetImageType with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x40400c calls dmBufferSetImageType with a0=?, a1=ret(dmBufferGetImageType), a2=?, a3=?.
  The `jalr` at 0x404030 calls dmBufferGetUSTMSCpair with a0=sp-208, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x40406c calls dmBufferSetUSTMSCpair with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4041dc calls vice_dmbuf_send with a0=[a0], a1=?, a2=a0+184, a3=a0+104.
  The `jalr` at 0x404204 calls dmSetError with a0=0x1777, a1=0x40cab0, a2=0x40cabc, a3=?.
  The `jalr` at 0x404228 calls vice_dms_geterrs with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x40424c calls dmSetError with a0=0x1777, a1=0x40cad4, a2=0x40cae0, a3=?.
  The `jalr` at 0x40427c calls memset with a0=sp-156, a1=0x0, a2=0x80, a3=?.
  The `jalr` at 0x4042f0 calls select with a0=[a0+28]+1, a1=sp-156, a2=0x0, a3=0x0.
  The `jalr` at 0x404320 calls dmSetError with a0=0x1777, a1=0x40caec, a2=0x40caf8, a3=?.
  The `jalr` at 0x404348 calls dmBufferFree with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x403bd8 targets 0x403c04, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x403bf4 targets 0x403c04, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x403bfc targets 0x404364 and is always taken.
  The `beq` branch at 0x403c08 targets 0x403cb8, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x403c24 targets 0x403c34, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x403c2c targets 0x404364 and is always taken.
  The `beq` branch at 0x403c58 targets 0x403c74, is taken when t4(=ret(dmParamsGetEnum)) == at(=0x3f0), and falls through when t4(=ret(dmParamsGetEnum)) != at(=0x3f0).
  The `beq` branch at 0x403c64 targets 0x403c74, is taken when t4(=ret(dmParamsGetEnum)) == at(=0x3ed), and falls through when t4(=ret(dmParamsGetEnum)) != at(=0x3ed).
  The `beq` branch at 0x403ca8 targets 0x403cb8, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x403cb0 targets 0x404364 and is always taken.
  The `beq` branch at 0x403cbc targets 0x403ce8, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beq` branch at 0x403cd8 targets 0x403ce8, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x403ce0 targets 0x404364 and is always taken.
  The `bne` branch at 0x403cec targets 0x403d0c, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `bne` branch at 0x403cf8 targets 0x403d0c, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0x403d04 targets 0x403d94, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x403d10 targets 0x403d70, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x403d30 targets 0x403d40, is taken when v0(=ret(_e_go)) != at(=-0x1), and falls through when v0(=ret(_e_go)) == at(=-0x1).
  The `beq` branch at 0x403d38 targets 0x404364 and is always taken.
  The `beq` branch at 0x403d44 targets 0x403d70, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x403db4 targets 0x403de4, is taken when v0(=ret(dmBufferGetSize)) >= t7(=[a0+172]) (signed), and falls through when v0(=ret(dmBufferGetSize)) < t7(=[a0+172]) (signed).
  The `beq` branch at 0x403ddc targets 0x404364 and is always taken.
  The `beq` branch at 0x403dec targets 0x40408c, is taken when t9(=[a0+24]) == 0, and falls through when t9(=[a0+24]) != 0.
  The `beq` branch at 0x403e14 targets 0x403e30, is taken when t1(=[a0+16]) == 0, and falls through when t1(=[a0+16]) != 0.
  The `beq` branch at 0x403e28 targets 0x403f38, is taken when t2(=[a0+20]) >= t3(=ret(dmImageFrameSize)) (signed), and falls through when t2(=[a0+20]) < t3(=ret(dmImageFrameSize)) (signed).
  The `beq` branch at 0x403e38 targets 0x403e54, is taken when t5(=[a0+16]) == 0, and falls through when t5(=[a0+16]) != 0.
  The `beq` branch at 0x403e64 targets 0x403e74, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x403e6c targets 0x404364 and is always taken.
  The `beq` branch at 0x403e94 targets 0x403ea4, is taken when v0(=ret(dmBufferSetPoolDefaults)) == 0, and falls through when v0(=ret(dmBufferSetPoolDefaults)) != 0.
  The `beq` branch at 0x403e9c targets 0x404364 and is always taken.
  The `beq` branch at 0x403ed4 targets 0x403ee4, is taken when v0(=ret(dmBufferCreatePool)) == 0, and falls through when v0(=ret(dmBufferCreatePool)) != 0.
  The `beq` branch at 0x403edc targets 0x404364 and is always taken.
  The `beq` branch at 0x403f58 targets 0x403f68, is taken when v0(=ret(dmBufferAllocate)) == 0, and falls through when v0(=ret(dmBufferAllocate)) != 0.
  The `beq` branch at 0x403f60 targets 0x404364 and is always taken.
  The `beq` branch at 0x403fb4 targets 0x403fc4, is taken when v0(=ret(dmICAnyToAny)) == 0, and falls through when v0(=ret(dmICAnyToAny)) != 0.
  The `beq` branch at 0x403fbc targets 0x404364 and is always taken.
  The `beq` branch at 0x403fd8 targets 0x403fe8, is taken when v0(=ret(dmBufferSetSize)) == 0, and falls through when v0(=ret(dmBufferSetSize)) != 0.
  The `beq` branch at 0x403fe0 targets 0x404364 and is always taken.
  The `beq` branch at 0x404014 targets 0x404024, is taken when v0(=ret(dmBufferSetImageType)) == 0, and falls through when v0(=ret(dmBufferSetImageType)) != 0.
  The `beq` branch at 0x40401c targets 0x404364 and is always taken.
  The `beq` branch at 0x404074 targets 0x404084, is taken when v0(=ret(dmBufferSetUSTMSCpair)) == 0, and falls through when v0(=ret(dmBufferSetUSTMSCpair)) != 0.
  The `beq` branch at 0x40407c targets 0x404364 and is always taken.
  The `beq` branch at 0x404094 targets 0x4041c0, is taken when t9(=[a0+268]) == 0, and falls through when t9(=[a0+268]) != 0.
  The `bc1f` branch at 0x4040f8 targets 0x404150, is taken when not (f16 < f8 (c.lt.s at 0x4040f0)), and falls through when f16 < f8 (c.lt.s at 0x4040f0).
  The `bc1f` branch at 0x40411c targets 0x404148, is taken when not (f4 < f18 (c.lt.d at 0x404114)), and falls through when f4 < f18 (c.lt.d at 0x404114).
  The `bne` branch at 0x404138 targets 0x404148, is taken when t8(=[a0+280]+4) < 0x1b (signed), and falls through when t8(=[a0+280]+4) >= 0x1b (signed).
  The `beq` branch at 0x404148 targets 0x4041a8 and is always taken.
  The `bc1f` branch at 0x40418c targets 0x4041a8, is taken when not (f8 < f6 (c.lt.d at 0x404184)), and falls through when f8 < f6 (c.lt.d at 0x404184).
  The `bgez` branch at 0x40419c targets 0x4041a8, is taken when t2(=[a0+280]-1) >= 0 (signed), and falls through when t2(=[a0+280]-1) < 0 (signed).
  The `bne` branch at 0x4041e8 targets 0x40421c, is taken when v0(=ret(vice_dmbuf_send)) != at(=-0x1), and falls through when v0(=ret(vice_dmbuf_send)) == at(=-0x1).
  The `beq` branch at 0x404214 targets 0x404334 and is always taken.
  The `beq` branch at 0x404230 targets 0x404264, is taken when v0(=ret(vice_dms_geterrs)) == 0, and falls through when v0(=ret(vice_dms_geterrs)) != 0.
  The `beq` branch at 0x40425c targets 0x404334 and is always taken.
  The `beq` branch at 0x404268 targets 0x404334, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bgez` branch at 0x404298 targets 0x4042a8, is taken when t0(=[a0+28]) >= 0 (signed), and falls through when t0(=[a0+28]) < 0 (signed).
  The `bgez` branch at 0x4042b4 targets 0x4042c8, is taken when t0(=[a0+28]) >= 0 (signed), and falls through when t0(=[a0+28]) < 0 (signed).
  The `beq` branch at 0x4042bc targets 0x4042c8, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bgtz` branch at 0x404304 targets 0x404334, is taken when t4(=ret(select)) > 0 (signed), and falls through when t4(=ret(select)) <= 0 (signed).
  The `beq` branch at 0x404338 targets 0x404354, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x404354 targets 0x404364 and is always taken.
  The return at 0x404370 has v0 = one of -0x1, ?.
  The instructions from 0x40435c to 0x404360 are not reached by any path from the entry, and their branches are not listed.

- `e_recv` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x404378 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x404378-0x4047bc (1092 bytes).
  It occupies 1092 bytes.
  The `lw` at 0x4043b4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x4043b8 loads 4 bytes from a0 (arg0 at entry) +0x98.
  15 such `lw` accesses load 4 bytes from ?, including `lw` at 0x404414, `lw` at 0x40444c, `lw` at 0x404464.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb4, including `lw` at 0x404488, `lw` at 0x404538, `lw` at 0x404604.
  The `lw` at 0x4044e4 loads 4 bytes from a0 (arg0 at entry) +0x60.
  5 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x4044fc, `lw` at 0x40451c, `lw` at 0x40466c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x108, including `lw` at 0x4045a4, `lw` at 0x404690.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa4, including `lw` at 0x4045b0, `lw` at 0x4046ac.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa8, including `lw` at 0x4045b4, `lw` at 0x4046b0.
  2 such `lw` accesses load 4 bytes from sym(_viceid) +0x0, including `lw` at 0x4045bc, `lw` at 0x4046a8.
  The `lw` at 0x404768 loads 4 bytes from a0 (arg0 at entry) +0x10c.
  The `sw` at 0x404780 stores 4 bytes to a0 (arg0 at entry) +0x114.
  The `jalr` at 0x4043c4 calls vice_dmbuf_recv with a0=[a0], a1=sp-12, a2=[a0+152], a3=a0+224.
  The `jalr` at 0x4043f8 calls dmSetError with a0=0x1776, a1=0x40cb14, a2=0x40cb20, a3=?.
  The `jalr` at 0x404434 calls dmSetError with a0=0x1777, a1=0x40cb38, a2=0x40cb44, a3=?.
  The `jalr` at 0x4044ac calls printf with a0=0x40cb50, a1=?, a2=?, a3=?.
  The `jalr` at 0x4044cc calls dmSetError with a0=0x1777, a1=0x40cb74, a2=0x40cb80, a3=?.
  The `jalr` at 0x404500 calls dmBufferSetSize with a0=[a1], a1=?, a2=?, a3=?.
  The `jalr` at 0x404518 calls dmBufferMapData with a0=[a1], a1=?, a2=?, a3=?.
  The `jalr` at 0x40454c calls printf with a0=0x40cb9c, a1=?, a2=?, a3=?.
  The `jalr` at 0x40456c calls dmSetError with a0=0x1777, a1=0x40cbb0, a2=0x40cbbc, a3=?.
  The `jalr` at 0x4045d8 calls jhead_luma_make with a0=ret(dmBufferMapData), a1=[a0+164], a2=[a0+168], a3=?.
  The `jalr` at 0x404628 calls printf with a0=0x40cbc0, a1=?, a2=0x198, a3=?.
  The `jalr` at 0x404648 calls dmSetError with a0=0x1777, a1=0x40cbec, a2=0x40cbf8, a3=?.
  The `jalr` at 0x404670 calls dmBufferSetSize with a0=[a1], a1=?, a2=?, a3=?.
  The `jalr` at 0x4046c0 calls jhead_make with a0=ret(dmBufferMapData), a1=[a0+164], a2=[a0+168], a3=?.
  The `jalr` at 0x404710 calls printf with a0=0x40cc00, a1=?, a2=0x2c0, a3=?.
  The `jalr` at 0x404730 calls dmSetError with a0=0x1777, a1=0x40cc2c, a2=0x40cc38, a3=?.
  The `jalr` at 0x404758 calls dmBufferSetSize with a0=[a1], a1=?, a2=?, a3=?.
  The `jalr` at 0x404794 calls dmBufferSetImageType with a0=[a1], a1=0x1, a2=?, a3=?.
  The `bne` branch at 0x4043dc targets 0x40440c, is taken when t9(=ret(vice_dmbuf_recv)) != at(=-0x1), and falls through when t9(=ret(vice_dmbuf_recv)) == at(=-0x1).
  The `beq` branch at 0x404404 targets 0x4047ac and is always taken.
  The `bne` branch at 0x404418 targets 0x404448, is taken when t1(?) != at(=0xe000), and falls through when t1(?) == at(=0xe000).
  The `beq` branch at 0x404440 targets 0x4047ac and is always taken.
  The `bltz` branch at 0x404450 targets 0x404484, is taken when t3(?) < 0 (signed), and falls through when t3(?) >= 0 (signed).
  The `beq` branch at 0x40445c targets 0x404484, is taken when t3(?) >= 0x1e (signed), and falls through when t3(?) < 0x1e (signed).
  The `bltz` branch at 0x404468 targets 0x404484, is taken when t4(?) < 0 (signed), and falls through when t4(?) >= 0 (signed).
  The `bne` branch at 0x40447c targets 0x4044e0, is taken when t4(?) < at(=0x3e0001) (signed), and falls through when t4(?) >= at(=0x3e0001) (signed).
  The `beq` branch at 0x40448c targets 0x4044b8, is taken when t6(=[a0+180]) == 0, and falls through when t6(=[a0+180]) != 0.
  The `beq` branch at 0x4044d8 targets 0x4047ac and is always taken.
  The `bne` branch at 0x4044e8 targets 0x404510, is taken when t9(=[a0+96]) != 0, and falls through when t9(=[a0+96]) == 0.
  The `beq` branch at 0x404508 targets 0x404764 and is always taken.
  The `bne` branch at 0x40452c targets 0x404580, is taken when t2(=ret(dmBufferMapData)) != 0, and falls through when t2(=ret(dmBufferMapData)) == 0.
  The `beq` branch at 0x40453c targets 0x404558, is taken when t5(=[a0+180]) == 0, and falls through when t5(=[a0+180]) != 0.
  The `beq` branch at 0x404578 targets 0x4047ac and is always taken.
  The `bne` branch at 0x404590 targets 0x404680, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x4045f8 targets 0x40465c, is taken when t3(?) == at(=0x198), and falls through when t3(?) != at(=0x198).
  The `beq` branch at 0x404608 targets 0x404634, is taken when t2(=[a0+180]) == 0, and falls through when t2(=[a0+180]) != 0.
  The `beq` branch at 0x404654 targets 0x4047ac and is always taken.
  The `beq` branch at 0x404678 targets 0x404764 and is always taken.
  The `beq` branch at 0x4046e0 targets 0x404744, is taken when t3(?) == at(=0x2c0), and falls through when t3(?) != at(=0x2c0).
  The `beq` branch at 0x4046f0 targets 0x40471c, is taken when t9(=[a0+180]) == 0, and falls through when t9(=[a0+180]) != 0.
  The `beq` branch at 0x40473c targets 0x4047ac and is always taken.
  The `beq` branch at 0x40476c targets 0x404784, is taken when t6(=[a0+268]) == 0, and falls through when t6(=[a0+268]) != 0.
  The `beq` branch at 0x40479c targets 0x4047ac and is always taken.
  The return at 0x4047b4 has v0 = one of ret(vice_dmbuf_recv), -0x1, ret(dmBufferSetImageType).
  The instructions from 0x4047a4 to 0x4047a8 are not reached by any path from the entry, and their branches are not listed.

- `d_open` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x4047bc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x4047bc-0x404a68 (684 bytes).
  It occupies 684 bytes.
  The `sw` at 0x404894 stores 4 bytes to ret(calloc) +0x0.
  3 such `lw` accesses load 4 bytes from ret(calloc) +0x0, including `lw` at 0x4048a0, `lw` at 0x404960, `lw` at 0x4049d8.
  The `sw` at 0x404980 stores 4 bytes to ret(calloc) +0xa0.
  The `lw` at 0x404988 loads 4 bytes from ret(calloc) +0xa0.
  The `sw` at 0x404a10 stores 4 bytes to ret(calloc) +0xac.
  The `lw` at 0x404a18 loads 4 bytes from ret(calloc) +0xac.
  The `sw` at 0x404a40 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x4047e4 calls vice_get_lib_rev with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404814 calls dmSetError with a0=0x1774, a1=0x40cc40, a2=0x40cc4c, a3=0x6b7a.
  The `jalr` at 0x404834 calls calloc with a0=0x1, a1=0x100, a2=?, a3=?.
  The `jalr` at 0x404864 calls dmSetError with a0=0x1772, a1=0x40cc68, a2=0x40cc74, a3=?.
  The `jalr` at 0x404880 calls vice_open_and_setetc with a0=0x40cc84, a1=?, a2=?, a3=?.
  The `jalr` at 0x4048c0 calls dmSetError with a0=0x1774, a1=0x40cc94, a2=0x40cca0, a3=?.
  The `jalr` at 0x4048d4 calls free with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x4048f4 calls init_formats [0x401b00] with a0=ret(calloc)+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x404918 calls dmSetError with a0=0x1774, a1=0x40ccbc, a2=0x40ccc8, a3=?.
  The `jalr` at 0x40492c calls vice_close with a0=ret(vice_open_and_setetc), a1=?, a2=?, a3=?.
  The `jalr` at 0x404940 calls free with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x404970 calls vice_event_init with a0=[ret(calloc)], a1=ret(calloc)+176, a2=ret(calloc)+216, a3=0x40.
  The `jalr` at 0x4049a8 calls dmSetError with a0=0x1774, a1=0x40ccf4, a2=0x40cd00, a3=?.
  The `jalr` at 0x4049c0 calls free_formats [0x401bb4] with a0=ret(calloc)+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x4049d4 calls vice_close with a0=[ret(calloc)], a1=?, a2=?, a3=?.
  The `jalr` at 0x4049e8 calls free with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x4049fc calls getenv with a0=0x40cd20, a1=?, a2=?, a3=?.
  The `jalr` at 0x404a2c calls printf with a0=0x40cd2c, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4047f4 targets 0x404828, is taken when t6(?) == at(=0x6b7a), and falls through when t6(?) != at(=0x6b7a).
  The `beq` branch at 0x404820 targets 0x404a54 and is always taken.
  The `bne` branch at 0x404848 targets 0x404878, is taken when t7(=ret(calloc)) != 0, and falls through when t7(=ret(calloc)) == 0.
  The `beq` branch at 0x404870 targets 0x404a54 and is always taken.
  The `bgez` branch at 0x4048a4 targets 0x4048e8, is taken when t0(=[ret(calloc)]) >= 0 (signed), and falls through when t0(=[ret(calloc)]) < 0 (signed).
  The `beq` branch at 0x4048e0 targets 0x404a54 and is always taken.
  The `beq` branch at 0x4048fc targets 0x404954, is taken when v0(=ret(init_formats)) == 0, and falls through when v0(=ret(init_formats)) != 0.
  The `beq` branch at 0x40494c targets 0x404a54 and is always taken.
  The `bgez` branch at 0x40498c targets 0x4049f4, is taken when t5(=[ret(calloc)+160]) >= 0 (signed), and falls through when t5(=[ret(calloc)+160]) < 0 (signed).
  The `beq` branch at 0x404a1c targets 0x404a38, is taken when t0(=[ret(calloc)+172]) == 0, and falls through when t0(=[ret(calloc)+172]) != 0.
  The `beq` branch at 0x404a44 targets 0x404a54 and is always taken.
  The return at 0x404a60 has v0 = one of -0x1, 0x0.
  The instructions from 0x404a4c to 0x404a50 are not reached by any path from the entry, and their branches are not listed.

- `d_close` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x404a68 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x404a68-0x404b28 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0x404a90 loads 4 bytes from a0 (arg0 at entry) +0xac.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x404ab4, `lw` at 0x404adc.
  The `jalr` at 0x404aa4 calls printf with a0=0x40cd48, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404ac4 calls vice_event_uninit with a0=[a0], a1=a0+176, a2=a0+216, a3=?.
  The `jalr` at 0x404ad8 calls vice_close with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x404af0 calls free_formats [0x401bb4] with a0=a0+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x404b04 calls free with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x404a94 targets 0x404ab0, is taken when t8(=[a0+172]) == 0, and falls through when t8(=[a0+172]) != 0.
  The `beq` branch at 0x404b10 targets 0x404b18 and is always taken.
  The return at 0x404b20 has v0 = ret(free).

- `d_describe` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x404b28 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x404b28-0x404c14 (236 bytes).
  It occupies 236 bytes.
  The `jalr` at 0x404b58 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x40cd64, a2=0x6a706567, a3=a3 at entry (arg3).
  The `jalr` at 0x404b78 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x40cd70, a2=0x40cd80, a3=?.
  The `jalr` at 0x404b94 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x40cd88, a2=0x1, a3=?.
  The `jalr` at 0x404bb0 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x40cd94, a2=0x2, a3=?.
  The `jalr` at 0x404bcc calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x40cdac, a2=0x0, a3=?.
  The `jalr` at 0x404be8 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x40cdbc, a2=0x1, a3=?.
  The `beq` branch at 0x404bf4 targets 0x404c04 and is always taken.
  The return at 0x404c0c has v0 = 0x0.
  The instructions from 0x404bfc to 0x404c00 are not reached by any path from the entry, and their branches are not listed.

- `d_dstpoolis` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x404c14 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x404c14-0x404c94 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0x404c40 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x404c54 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0x404c70 stores 4 bytes to a0 (arg0 at entry) +0x9c.
  The `jalr` at 0x404c5c calls vice_dmbuf_outpool with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x404c44 targets 0x404c68, is taken when t8(=[a0+16]) != 0, and falls through when t8(=[a0+16]) == 0.
  The `beq` branch at 0x404c74 targets 0x404c84 and is always taken.
  The return at 0x404c8c has v0 = 0x0.
  The instructions from 0x404c7c to 0x404c80 are not reached by any path from the entry, and their branches are not listed.

- `d_fd` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x404c94 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x404c94-0x404cc4 (48 bytes).
  It occupies 48 bytes.
  The `lw` at 0x404cb0 loads 4 bytes from a0 (arg0 at entry) +0xa0.
  The `beq` branch at 0x404cac targets 0x404cbc and is always taken.
  The return at 0x404cbc has v0 = [a0+160].
  The instructions from 0x404cb4 to 0x404cb8 are not reached by any path from the entry, and their branches are not listed.

- `d_getsrcfilled` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x404cc4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x404cc4-0x404d2c (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x404cf8 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `jalr` at 0x404cf4 calls dmFifoNfilled with a0=[a0+176], a1=sp-8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x404cfc targets 0x404d0c, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The `beq` branch at 0x404d04 targets 0x404d1c and is always taken.
  The `beq` branch at 0x404d0c targets 0x404d1c and is always taken.
  The return at 0x404d24 has v0 = one of -0x1, ?.
  The instructions from 0x404d14 to 0x404d18 are not reached by any path from the entry, and their branches are not listed.

- `d_getdstfilled` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x404d2c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x404d2c-0x404d94 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x404d60 loads 4 bytes from a0 (arg0 at entry) +0xd8.
  The `jalr` at 0x404d5c calls dmFifoNfilled with a0=[a0+216], a1=sp-8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x404d64 targets 0x404d74, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The `beq` branch at 0x404d6c targets 0x404d84 and is always taken.
  The `beq` branch at 0x404d74 targets 0x404d84 and is always taken.
  The return at 0x404d8c has v0 = one of -0x1, ?.
  The instructions from 0x404d7c to 0x404d80 are not reached by any path from the entry, and their branches are not listed.

- `d_verifysrc` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x404d94 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x404d94-0x404de8 (84 bytes).
  It occupies 84 bytes.
  The `jalr` at 0x404dc0 calls verify_compressed [0x402260] with a0=a0 at entry (arg0), a1=0x40cdcc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x404dc8 targets 0x404dd8 and is always taken.
  The return at 0x404de0 has v0 = ret(verify_compressed).
  The instructions from 0x404dd0 to 0x404dd4 are not reached by any path from the entry, and their branches are not listed.

- `d_verifydst` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x404de8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x404de8-0x404e3c (84 bytes).
  It occupies 84 bytes.
  The `jalr` at 0x404e14 calls verify_uncompressed [0x40218c] with a0=a0 at entry (arg0), a1=0x40cdd0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x404e1c targets 0x404e2c and is always taken.
  The return at 0x404e34 has v0 = ret(verify_uncompressed).
  The instructions from 0x404e24 to 0x404e28 are not reached by any path from the entry, and their branches are not listed.

- `d_verifycvt` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x404e3c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x404e3c-0x404e64 (40 bytes).
  It occupies 40 bytes.
  The `beq` branch at 0x404e4c targets 0x404e5c and is always taken.
  The return at 0x404e5c has v0 = 0x0.
  The instructions from 0x404e54 to 0x404e58 are not reached by any path from the entry, and their branches are not listed.

- `d_verifysrcdstcvt` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x404e64 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x404e64-0x404f38 (212 bytes).
  It occupies 212 bytes.
  The `jalr` at 0x404ea0 calls d_verifysrc [0x404d94] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404ed0 calls d_verifydst [0x404de8] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x404f00 calls d_verifycvt [0x404e3c] with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `beq` branch at 0x404e8c targets 0x404eb8, is taken when t6(=a0) == 0, and falls through when t6(=a0) != 0.
  The `beq` branch at 0x404ea8 targets 0x404eb8, is taken when v0(=ret(d_verifysrc)) == 0, and falls through when v0(=ret(d_verifysrc)) != 0.
  The `beq` branch at 0x404eb0 targets 0x404f28 and is always taken.
  The `beq` branch at 0x404ebc targets 0x404ee8, is taken when t7(=a1) == 0, and falls through when t7(=a1) != 0.
  The `beq` branch at 0x404ed8 targets 0x404ee8, is taken when v0(=ret(d_verifydst)) == 0, and falls through when v0(=ret(d_verifydst)) != 0.
  The `beq` branch at 0x404ee0 targets 0x404f28 and is always taken.
  The `beq` branch at 0x404eec targets 0x404f18, is taken when t8(=a2) == 0, and falls through when t8(=a2) != 0.
  The `beq` branch at 0x404f08 targets 0x404f18, is taken when v0(=ret(d_verifycvt)) == 0, and falls through when v0(=ret(d_verifycvt)) != 0.
  The `beq` branch at 0x404f10 targets 0x404f28 and is always taken.
  The `beq` branch at 0x404f18 targets 0x404f28 and is always taken.
  The return at 0x404f30 has v0 = one of -0x1, 0x0.
  The instructions from 0x404f20 to 0x404f24 are not reached by any path from the entry, and their branches are not listed.

- `d_defaultsrc` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x404f38 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x404f38-0x404f88 (80 bytes).
  It occupies 80 bytes.
  The `jalr` at 0x404f60 calls get_default_uncompressed [0x402438] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x404f68 targets 0x404f78 and is always taken.
  The return at 0x404f80 has v0 = ret(get_default_uncompressed).
  The instructions from 0x404f70 to 0x404f74 are not reached by any path from the entry, and their branches are not listed.

- `d_defaultdst` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x404f88 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x404f88-0x404fd8 (80 bytes).
  It occupies 80 bytes.
  The `jalr` at 0x404fb0 calls get_default_uncompressed [0x402438] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x404fb8 targets 0x404fc8 and is always taken.
  The return at 0x404fd0 has v0 = ret(get_default_uncompressed).
  The instructions from 0x404fc0 to 0x404fc4 are not reached by any path from the entry, and their branches are not listed.

- `d_defaultcvt` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x404fd8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x404fd8-0x405000 (40 bytes).
  It occupies 40 bytes.
  The `beq` branch at 0x404fe8 targets 0x404ff8 and is always taken.
  The return at 0x404ff8 has v0 = 0x0.
  The instructions from 0x404ff0 to 0x404ff4 are not reached by any path from the entry, and their branches are not listed.

- `_d_go` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x405000 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x405000-0x4054a8 (1192 bytes).
  It occupies 1192 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x405030, `lw` at 0x405448.
  The `lw` at 0x40503c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x405048 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0x4050a0 stores 4 bytes to a0 (arg0 at entry) +0xa4.
  The `lw` at 0x4052f8 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x405304 loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lw` at 0x405310 loads 4 bytes from a0 (arg0 at entry) +0x54.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x30, including `sw` at 0x40534c, `sw` at 0x40535c.
  The `lw` at 0x405354 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `sw` at 0x405368 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0x405374 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  The `sw` at 0x40537c stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0x405394 stores 4 bytes to a0 (arg0 at entry) +0x88.
  The `sw` at 0x4053b4 stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `sw` at 0x4053d4 stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `sw` at 0x4053e0 stores 4 bytes to a0 (arg0 at entry) +0x80.
  The `sw` at 0x4053ec stores 4 bytes to a0 (arg0 at entry) +0x84.
  The `sw` at 0x4053f8 stores 4 bytes to a0 (arg0 at entry) +0x94.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x98, including `sw` at 0x405418, `sw` at 0x40543c.
  The `jalr` at 0x40505c calls dmParamsGetInt with a0=[a0+4], a1=0x40cdd4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x405078 calls dmParamsGetInt with a0=[a0+4], a1=0x40cde4, a2=?, a3=?.
  The `jalr` at 0x405090 calls dmImageFrameSize with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0x4050b0 calls dmParamsGetEnum with a0=[a0+4], a1=0x40cdf4, a2=?, a3=?.
  The `jalr` at 0x405110 calls vice_file with a0=0x40ce08, a1=?, a2=?, a3=?.
  The `jalr` at 0x405130 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=0x0.
  The `jalr` at 0x405144 calls vice_file with a0=0x40ce14, a1=?, a2=?, a3=?.
  The `jalr` at 0x405164 calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=?.
  The `jalr` at 0x405190 calls vice_file with a0=0x40ce20, a1=?, a2=?, a3=?.
  The `jalr` at 0x4051b0 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=0x0.
  The `jalr` at 0x4051c4 calls vice_file with a0=0x40ce2c, a1=?, a2=?, a3=?.
  The `jalr` at 0x4051e4 calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=?.
  The `jalr` at 0x405210 calls vice_file with a0=0x40ce38, a1=?, a2=?, a3=?.
  The `jalr` at 0x405230 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=0x0.
  The `jalr` at 0x405244 calls vice_file with a0=0x40ce44, a1=?, a2=?, a3=?.
  The `jalr` at 0x405264 calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=?.
  The `jalr` at 0x40528c calls __assert with a0=0x40ce50, a1=0x40ce5c, a2=0x539, a3=?.
  The `jalr` at 0x4052ac calls dmSetError with a0=0x1778, a1=0x40ce68, a2=0x40ce74, a3=?.
  The `jalr` at 0x4052c8 calls vice_file with a0=0x40ce84, a1=?, a2=?, a3=?.
  The `jalr` at 0x4052e8 calls vice_load_bsp_table with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=?.
  The `jalr` at 0x405330 calls dmSetError with a0=0x1778, a1=0x40ce90, a2=0x40ce9c, a3=?.
  The `jalr` at 0x40544c calls vice_event_start with a0=[a0], a1=a0+32, a2=?, a3=?.
  The `jalr` at 0x405470 calls dmSetError with a0=0x1778, a1=0x40ceb8, a2=0x40cec4, a3=?.
  The `beq` branch at 0x4050c8 targets 0x4051f8, is taken when s0(=ret(dmParamsGetEnum)) == at(=0x3e9), and falls through when s0(=ret(dmParamsGetEnum)) != at(=0x3e9).
  The `beq` branch at 0x4050d4 targets 0x4051f8, is taken when s0(=ret(dmParamsGetEnum)) == at(=0x3ea), and falls through when s0(=ret(dmParamsGetEnum)) != at(=0x3ea).
  The `beq` branch at 0x4050e0 targets 0x4050fc, is taken when s0(=ret(dmParamsGetEnum)) == at(=0x3ed), and falls through when s0(=ret(dmParamsGetEnum)) != at(=0x3ed).
  The `beq` branch at 0x4050ec targets 0x405178, is taken when s0(=ret(dmParamsGetEnum)) == at(=0x3f0), and falls through when s0(=ret(dmParamsGetEnum)) != at(=0x3f0).
  The `beq` branch at 0x4050f4 targets 0x405278 and is always taken.
  The `beq` branch at 0x405170 targets 0x4052c0 and is always taken.
  The `beq` branch at 0x4051f0 targets 0x4052c0 and is always taken.
  The `beq` branch at 0x405270 targets 0x4052c0 and is always taken.
  The `beq` branch at 0x4052b8 targets 0x405494 and is always taken.
  The `beq` branch at 0x4052fc targets 0x40531c, is taken when t1(=[a0+68]) == 0, and falls through when t1(=[a0+68]) != 0.
  The `beq` branch at 0x405308 targets 0x40531c, is taken when t2(=[a0+80]) == 0, and falls through when t2(=[a0+80]) != 0.
  The `bne` branch at 0x405314 targets 0x405344, is taken when t3(=[a0+84]) != 0, and falls through when t3(=[a0+84]) == 0.
  The `beq` branch at 0x40533c targets 0x405494 and is always taken.
  The `bgez` branch at 0x4053a4 targets 0x4053b4, is taken when t6(=ret(dmParamsGetInt)) >= 0 (signed), and falls through when t6(=ret(dmParamsGetInt)) < 0 (signed).
  The `bgez` branch at 0x4053c4 targets 0x4053d4, is taken when t0(=ret(dmParamsGetInt)+7) >= 0 (signed), and falls through when t0(=ret(dmParamsGetInt)+7) < 0 (signed).
  The `bne` branch at 0x405404 targets 0x40541c, is taken when t2(=ret(dmParamsGetInt)) != at(=0xf3), and falls through when t2(=ret(dmParamsGetInt)) == at(=0xf3).
  The `beq` branch at 0x405414 targets 0x405440 and is always taken.
  The `bne` branch at 0x405424 targets 0x405434, is taken when t4(=ret(dmParamsGetInt)) != at(=0x1e6), and falls through when t4(=ret(dmParamsGetInt)) == at(=0x1e6).
  The `beq` branch at 0x40542c targets 0x405438 and is always taken.
  The `beq` branch at 0x405454 targets 0x405484, is taken when v0(=ret(vice_event_start)) == 0, and falls through when v0(=ret(vice_event_start)) != 0.
  The `beq` branch at 0x40547c targets 0x405494 and is always taken.
  The `beq` branch at 0x405484 targets 0x405494 and is always taken.
  The return at 0x4054a0 has v0 = one of -0x1, 0x0.
  The instructions from 0x40548c to 0x405490 are not reached by any path from the entry, and their branches are not listed.

- `d_send` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x4054a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x4054a8-0x405aac (1540 bytes).
  It occupies 1540 bytes.
  The `lw` at 0x4054e0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x4054ec loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x405620 loads 4 bytes from a0 (arg0 at entry) +0xc.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0x4056c0, `sw` at 0x40585c.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x4056c8, `lw` at 0x4056ec, `lw` at 0x4056fc.
  The `lw` at 0x4056d4 loads 4 bytes from a0 (arg0 at entry) +0x14.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14, including `sw` at 0x4057bc, `sw` at 0x405830.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x4057dc, `lw` at 0x40583c, `lw` at 0x4059f4.
  The `sw` at 0x405828 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `lw` at 0x405844 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `sw` at 0x40587c stores 4 bytes to a0 (arg0 at entry) +0x8c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8c, including `lw` at 0x4058a8, `lw` at 0x4058d8, `lw` at 0x405910.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x4058e8, `lbu` at 0x405920.
  The `lw` at 0x405970 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `lbu` at 0x4059ac loads 1 byte from ([a0+140] + ret(dmBufferMapData)) -0x5.
  The `jalr` at 0x40550c calls dmParamsCopyAllElems with a0=?, a1=[a0+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x405534 calls dmParamsSetEnum with a0=?, a1=0x40cee8, a2=0x44c, a3=?.
  The `jalr` at 0x405564 calls dmParamsCopyAllElems with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405588 calls dmParamsIsPresent with a0=?, a1=0x40cf00, a2=?, a3=?.
  The `jalr` at 0x4055a4 calls dmParamsGetEnum with a0=?, a1=0x40cf14, a2=?, a3=?.
  The `jalr` at 0x4055f8 calls dmParamsSetEnum with a0=?, a1=0x40cf28, a2=?, a3=?.
  The `jalr` at 0x40561c calls dmParamsCopyAllElems with a0=?, a1=[a0+12], a2=?, a3=?.
  The `jalr` at 0x405664 calls _d_go [0x405000] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x405690 calls needsConvert [0x401d38] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4056a8 calls dmImageFrameSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405704 calls dmBufferDestroyPool with a0=[a0+16], a1=?, a2=?, a3=?.
  The `jalr` at 0x405718 calls dmParamsCreate with a0=sp-24, a1=?, a2=?, a3=?.
  The `jalr` at 0x405748 calls dmBufferSetPoolDefaults with a0=?, a1=0x2, a2=?, a3=0x0.
  The `jalr` at 0x405770 calls _poolneeds [0x401ab0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x405788 calls dmBufferCreatePool with a0=?, a1=a0+16, a2=?, a3=?.
  The `jalr` at 0x4057ac calls dmParamsGetInt with a0=?, a1=0x40cf3c, a2=?, a3=?.
  The `jalr` at 0x4057c8 calls dmParamsDestroy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4057e0 calls vice_dmbuf_outpool with a0=[a0], a1=[a0+16], a2=?, a3=?.
  The `jalr` at 0x405818 calls dmBufferDestroyPool with a0=[a0+16], a1=?, a2=?, a3=?.
  The `jalr` at 0x405840 calls vice_dmbuf_outpool with a0=[a0], a1=[a0+156], a2=?, a3=?.
  The `jalr` at 0x405868 calls dmBufferGetSize with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x405888 calls dmBufferMapData with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x405984 calls dmBufferGetSize with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x4059b4 calls printf with a0=0x40cf4c, a1=ret(dmBufferGetSize), a2=[([a0+140] + ret(dmBufferMapData))-5]:1, a3=?.
  The `jalr` at 0x4059d4 calls dmSetError with a0=0x1772, a1=0x40cf7c, a2=0x40cf88, a3=?.
  The `jalr` at 0x405a04 calls vice_dmbuf_send with a0=[a0], a1=a1 at entry (arg1), a2=a0+176, a3=a0+104.
  The `jalr` at 0x405a2c calls dmSetError with a0=0x1778, a1=0x40cf98, a2=0x40cfa4, a3=?.
  The `jalr` at 0x405a50 calls vice_dms_geterrs with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x405a74 calls dmSetError with a0=0x1778, a1=0x40cfbc, a2=0x40cfc8, a3=?.
  The `beq` branch at 0x4054f8 targets 0x40554c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x405514 targets 0x405524, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x40551c targets 0x405a98 and is always taken.
  The `beq` branch at 0x40553c targets 0x40554c, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x405544 targets 0x405a98 and is always taken.
  The `beq` branch at 0x405550 targets 0x405604, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x40556c targets 0x40557c, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x405574 targets 0x405a98 and is always taken.
  The `beq` branch at 0x405590 targets 0x4055e0, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x4055bc targets 0x4055d8, is taken when t3(=ret(dmParamsGetEnum)) == at(=0x3f0), and falls through when t3(=ret(dmParamsGetEnum)) != at(=0x3f0).
  The `beq` branch at 0x4055c8 targets 0x4055d8, is taken when t3(=ret(dmParamsGetEnum)) == at(=0x3ed), and falls through when t3(=ret(dmParamsGetEnum)) != at(=0x3ed).
  The `beq` branch at 0x4055d8 targets 0x4055e8 and is always taken.
  The `beq` branch at 0x405608 targets 0x405634, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beq` branch at 0x405624 targets 0x405634, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x40562c targets 0x405a98 and is always taken.
  The `bne` branch at 0x405638 targets 0x405658, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `bne` branch at 0x405644 targets 0x405658, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0x405650 targets 0x405860, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x405670 targets 0x405680, is taken when v0(=ret(_d_go)) != at(=-0x1), and falls through when v0(=ret(_d_go)) == at(=-0x1).
  The `beq` branch at 0x405678 targets 0x405a98 and is always taken.
  The `beq` branch at 0x405698 targets 0x405800, is taken when v0(=ret(needsConvert)) == 0, and falls through when v0(=ret(needsConvert)) != 0.
  The `beq` branch at 0x4056cc targets 0x4056e8, is taken when t4(=[a0+16]) == 0, and falls through when t4(=[a0+16]) != 0.
  The `beq` branch at 0x4056e0 targets 0x4057f8, is taken when t5(=[a0+20]) >= t6(=ret(dmImageFrameSize)) (signed), and falls through when t5(=[a0+20]) < t6(=ret(dmImageFrameSize)) (signed).
  The `beq` branch at 0x4056f0 targets 0x405710, is taken when t8(=[a0+16]) == 0, and falls through when t8(=[a0+16]) != 0.
  The `beq` branch at 0x405720 targets 0x405730, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x405728 targets 0x405a98 and is always taken.
  The `beq` branch at 0x405750 targets 0x405760, is taken when v0(=ret(dmBufferSetPoolDefaults)) == 0, and falls through when v0(=ret(dmBufferSetPoolDefaults)) != 0.
  The `beq` branch at 0x405758 targets 0x405a98 and is always taken.
  The `beq` branch at 0x405790 targets 0x4057a0, is taken when v0(=ret(dmBufferCreatePool)) == 0, and falls through when v0(=ret(dmBufferCreatePool)) != 0.
  The `beq` branch at 0x405798 targets 0x405a98 and is always taken.
  The `beq` branch at 0x4057e8 targets 0x4057f8, is taken when v0(=ret(vice_dmbuf_outpool)) == 0, and falls through when v0(=ret(vice_dmbuf_outpool)) != 0.
  The `beq` branch at 0x4057f0 targets 0x405a98 and is always taken.
  The `beq` branch at 0x4057f8 targets 0x405860 and is always taken.
  The `beq` branch at 0x405808 targets 0x405858, is taken when t3(=[a0+16]) == 0, and falls through when t3(=[a0+16]) != 0.
  The `beq` branch at 0x405848 targets 0x405858, is taken when v0(=ret(vice_dmbuf_outpool)) == 0, and falls through when v0(=ret(vice_dmbuf_outpool)) != 0.
  The `beq` branch at 0x405850 targets 0x405a98 and is always taken.
  The `bgez` branch at 0x4058b4 targets 0x4058cc, is taken when t6(?) >= 0 (signed), and falls through when t6(?) < 0 (signed).
  The `beq` branch at 0x4058bc targets 0x405960 and is always taken.
  The `bne` branch at 0x4058ec targets 0x405904, is taken when t4(?) != at(=0xff), and falls through when t4(?) == at(=0xff).
  The `beq` branch at 0x4058f4 targets 0x40594c and is always taken.
  The `bne` branch at 0x405924 targets 0x405944, is taken when t0(?) != at(=0xd9), and falls through when t0(?) == at(=0xd9).
  The `beq` branch at 0x405934 targets 0x405960 and is always taken.
  The `beq` branch at 0x405944 targets 0x405960 and is always taken.
  The `bne` branch at 0x405958 targets 0x4058a0, is taken when t4(?) < 0x10 (signed), and falls through when t4(?) >= 0x10 (signed).
  The `bne` branch at 0x405964 targets 0x4059e8, is taken when t3(=one of 0x0, 0x1) != 0, and falls through when t3(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x405974 targets 0x4059c0, is taken when t6(=[a0+172]) == 0, and falls through when t6(=[a0+172]) != 0.
  The `beq` branch at 0x4059e0 targets 0x405a98 and is always taken.
  The `bne` branch at 0x405a10 targets 0x405a48, is taken when v0(=ret(vice_dmbuf_send)) != at(=-0x1), and falls through when v0(=ret(vice_dmbuf_send)) == at(=-0x1).
  The `beq` branch at 0x405a38 targets 0x405a98 and is always taken.
  The `beq` branch at 0x405a58 targets 0x405a88, is taken when v0(=ret(vice_dms_geterrs)) == 0, and falls through when v0(=ret(vice_dms_geterrs)) != 0.
  The `beq` branch at 0x405a80 targets 0x405a98 and is always taken.
  The `beq` branch at 0x405a88 targets 0x405a98 and is always taken.
  The return at 0x405aa4 has v0 = one of -0x1, 0x0.
  The instructions from 0x4058c4 to 0x4058c8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4058fc to 0x405900 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x40593c to 0x405940 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x405a40 to 0x405a44 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x405a90 to 0x405a94 are not reached by any path from the entry, and their branches are not listed.

- `d_recv` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x405aac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x405aac-0x405e10 (868 bytes).
  It occupies 868 bytes.
  The `lw` at 0x405ae8 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x405af4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9c, including `lw` at 0x405b10, `lw` at 0x405c90.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x18, including `lw` at 0x405b1c, `lw` at 0x405c5c.
  The `sw` at 0x405b48 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `lw` at 0x405b58 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x405b6c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x405bac loads 4 bytes from a0 (arg0 at entry) +0xac.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x405bc4, `lw` at 0x405bc8, `lw` at 0x405c08.
  The `lw` at 0x405c50 loads 4 bytes from a0 (arg0 at entry) +0xa4.
  The `sw` at 0x405ddc stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x405b30 calls dmImageFrameSize with a0=[a0+4], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x405b7c calls vice_dmbuf_recv with a0=[a0], a1=sp-16, a2=?, a3=a0+216.
  The `jalr` at 0x405bcc calls printf with a0=0x40cfd4, a1=?, a2=?, a3=?.
  The `jalr` at 0x405bec calls dmSetError with a0=0x1776, a1=0x40cffc, a2=0x40d008, a3=?.
  The `jalr` at 0x405c28 calls dmSetError with a0=0x1778, a1=0x40d020, a2=0x40d02c, a3=?.
  The `jalr` at 0x405c4c calls dmBufferSetSize with a0=?, a1=[a0+164], a2=?, a3=?.
  The `jalr` at 0x405c70 calls dmImageFrameSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405c8c calls dmBufferAllocate with a0=[a0+156], a1=sp-40, a2=?, a3=?.
  The `jalr` at 0x405cac calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405cc4 calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405ce8 calls dmICAnyToAny with a0=ret(dmBufferMapData), a1=ret(dmBufferMapData), a2=?, a3=?.
  The `jalr` at 0x405d0c calls dmBufferSetSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405d2c calls dmBufferGetImageType with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405d48 calls dmBufferSetImageType with a0=?, a1=ret(dmBufferGetImageType), a2=?, a3=?.
  The `jalr` at 0x405d6c calls dmBufferGetUSTMSCpair with a0=sp-72, a1=?, a2=?, a3=?.
  The `jalr` at 0x405da8 calls dmBufferSetUSTMSCpair with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405dc8 calls dmBufferFree with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x405b20 targets 0x405b60, is taken when t5(=[a0+24]) == 0, and falls through when t5(=[a0+24]) != 0.
  The `bne` branch at 0x405b94 targets 0x405c00, is taken when t3(=ret(vice_dmbuf_recv)) != at(=-0x1), and falls through when t3(=ret(vice_dmbuf_recv)) == at(=-0x1).
  The `beq` branch at 0x405ba0 targets 0x405bd8, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `beq` branch at 0x405bb0 targets 0x405bd8, is taken when t6(=[a0+172]) == 0, and falls through when t6(=[a0+172]) != 0.
  The `beq` branch at 0x405bf8 targets 0x405df0 and is always taken.
  The `bne` branch at 0x405c0c targets 0x405c3c, is taken when t9(?) != at(=0xe000), and falls through when t9(?) == at(=0xe000).
  The `beq` branch at 0x405c34 targets 0x405df0 and is always taken.
  The `beq` branch at 0x405c60 targets 0x405de0, is taken when t3(=[a0+24]) == 0, and falls through when t3(=[a0+24]) != 0.
  The `beq` branch at 0x405c94 targets 0x405ca4, is taken when v0(=ret(dmBufferAllocate)) == 0, and falls through when v0(=ret(dmBufferAllocate)) != 0.
  The `beq` branch at 0x405c9c targets 0x405df0 and is always taken.
  The `beq` branch at 0x405cf0 targets 0x405d00, is taken when v0(=ret(dmICAnyToAny)) == 0, and falls through when v0(=ret(dmICAnyToAny)) != 0.
  The `beq` branch at 0x405cf8 targets 0x405df0 and is always taken.
  The `beq` branch at 0x405d14 targets 0x405d24, is taken when v0(=ret(dmBufferSetSize)) == 0, and falls through when v0(=ret(dmBufferSetSize)) != 0.
  The `beq` branch at 0x405d1c targets 0x405df0 and is always taken.
  The `beq` branch at 0x405d50 targets 0x405d60, is taken when v0(=ret(dmBufferSetImageType)) == 0, and falls through when v0(=ret(dmBufferSetImageType)) != 0.
  The `beq` branch at 0x405d58 targets 0x405df0 and is always taken.
  The `beq` branch at 0x405db0 targets 0x405dc0, is taken when v0(=ret(dmBufferSetUSTMSCpair)) == 0, and falls through when v0(=ret(dmBufferSetUSTMSCpair)) != 0.
  The `beq` branch at 0x405db8 targets 0x405df0 and is always taken.
  The `beq` branch at 0x405de0 targets 0x405df0 and is always taken.
  The return at 0x405dfc has v0 = one of ?, -0x1.
  The instructions from 0x405de8 to 0x405dec are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x405e04 to 0x405e0c are not reached by any path from the entry, and their branches are not listed.

- `put_sof` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x405e10 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x405e10-0x4061a0 (912 bytes).
  It occupies 912 bytes.
  45 such `lw` accesses load 4 bytes from abs 0x411350, including `lw` at 0x405e28, `lw` at 0x405e38, `lw` at 0x405e4c.
  20 such `sb` accesses store 1 byte to [0x411350] +0x0, including `sb` at 0x405e34, `sb` at 0x405e80, `sb` at 0x405ec0.
  25 such `sw` accesses store 4 bytes to abs 0x411350, including `sw` at 0x405e44, `sw` at 0x405e58, `sw` at 0x405e8c.
  5 such `sb` accesses store 1 byte to [0x411350] +0x1, including `sb` at 0x405e48, `sb` at 0x405e90, `sb` at 0x405ed0.
  The `bne` branch at 0x405e60 targets 0x405ea8, is taken when a2 != at(=0x1), and falls through when a2 == at(=0x1).
  The `beq` branch at 0x405ea0 targets 0x405ee4 and is always taken.
  The `bne` branch at 0x405fac targets 0x406020, is taken when a2 != at(=0x1), and falls through when a2 == at(=0x1).
  The `beq` branch at 0x406018 targets 0x406190 and is always taken.
  The `bne` branch at 0x406044 targets 0x406074, is taken when a3 != 0, and falls through when a3 == 0.
  The `beq` branch at 0x40606c targets 0x406098 and is always taken.
  The return at 0x406190 has v0 = ?.
  The instructions from 0x406198 to 0x40619c are not reached by any path from the entry, and their branches are not listed.

- `put_dri` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x4061a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x4061a0-0x406270 (208 bytes).
  It occupies 208 bytes.
  9 such `lw` accesses load 4 bytes from abs 0x411350, including `lw` at 0x4061b8, `lw` at 0x4061c8, `lw` at 0x4061dc.
  3 such `sb` accesses store 1 byte to [0x411350] +0x0, including `sb` at 0x4061c4, `sb` at 0x406204, `sb` at 0x40623c.
  6 such `sw` accesses store 4 bytes to abs 0x411350, including `sw` at 0x4061d4, `sw` at 0x4061e8, `sw` at 0x406210.
  3 such `sb` accesses store 1 byte to [0x411350] +0x1, including `sb` at 0x4061d8, `sb` at 0x406214, `sb` at 0x40624c.
  The return at 0x406260 has v0 = ?.
  The instructions from 0x406268 to 0x40626c are not reached by any path from the entry, and their branches are not listed.

- `put_sos` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x406270 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x406270-0x4064b8 (584 bytes).
  It occupies 584 bytes.
  29 such `lw` accesses load 4 bytes from abs 0x411350, including `lw` at 0x406288, `lw` at 0x406298, `lw` at 0x4062ac.
  13 such `sb` accesses store 1 byte to [0x411350] +0x0, including `sb` at 0x406294, `sb` at 0x4062e0, `sb` at 0x406320.
  16 such `sw` accesses store 4 bytes to abs 0x411350, including `sw` at 0x4062a4, `sw` at 0x4062b8, `sw` at 0x4062ec.
  3 such `sb` accesses store 1 byte to [0x411350] +0x1, including `sb` at 0x4062a8, `sb` at 0x4062f0, `sb` at 0x406330.
  The `bne` branch at 0x4062c0 targets 0x406308, is taken when a0 != at(=0x1), and falls through when a0 == at(=0x1).
  The `beq` branch at 0x406300 targets 0x406344 and is always taken.
  The `bne` branch at 0x4063ac targets 0x406444, is taken when a0 < 0x2 (signed), and falls through when a0 >= 0x2 (signed).
  The return at 0x4064a8 has v0 = ?.
  The instructions from 0x4064b0 to 0x4064b4 are not reached by any path from the entry, and their branches are not listed.

- `put_dqt` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x4064b8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x4064b8-0x4065fc (324 bytes).
  It occupies 324 bytes.
  10 such `lw` accesses load 4 bytes from abs 0x411350, including `lw` at 0x4064d4, `lw` at 0x4064e4, `lw` at 0x4064f8.
  4 such `sb` accesses store 1 byte to [0x411350] +0x0, including `sb` at 0x4064e0, `sb` at 0x406520, `sb` at 0x406554.
  6 such `sw` accesses store 4 bytes to abs 0x411350, including `sw` at 0x4064f0, `sw` at 0x406504, `sw` at 0x40652c.
  2 such `sb` accesses store 1 byte to [0x411350] +0x1, including `sb` at 0x4064f4, `sb` at 0x406530.
  The `lbu` at 0x40657c loads 1 byte from ?.
  The `lh` at 0x406590 loads 2 bytes from ?.
  The `bne` branch at 0x40659c targets 0x4065a8, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `bne` branch at 0x4065ac targets 0x4065c0, is taken when t8(?) != at(=-0x1), and falls through when t8(?) == at(=-0x1).
  The `bne` branch at 0x4065b4 targets 0x4065c0 and is always taken.
  The `bne` branch at 0x4065e4 targets 0x406568, is taken when t6(?) < 0x40 (signed), and falls through when t6(?) >= 0x40 (signed).
  The `beq` branch at 0x4065ec targets 0x4065f4 and is always taken.
  The return at 0x4065f4 has v0 = ?.
  The instructions from 0x4065bc to 0x4065bc are not reached by any path from the entry, and their branches are not listed.

- `put_dht_dc_luma` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x4065fc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x4065fc-0x406750 (340 bytes).
  It occupies 340 bytes.
  12 such `lw` accesses load 4 bytes from abs 0x411350, including `lw` at 0x406618, `lw` at 0x406628, `lw` at 0x40663c.
  5 such `sb` accesses store 1 byte to [0x411350] +0x0, including `sb` at 0x406624, `sb` at 0x406664, `sb` at 0x406698.
  7 such `sw` accesses store 4 bytes to abs 0x411350, including `sw` at 0x406634, `sw` at 0x406648, `sw` at 0x406670.
  2 such `sb` accesses store 1 byte to [0x411350] +0x1, including `sb` at 0x406638, `sb` at 0x406674.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x4066c0, `lbu` at 0x40670c.
  The `bne` branch at 0x4066ec targets 0x4066ac, is taken when t9(?) < 0x10 (signed), and falls through when t9(?) >= 0x10 (signed).
  The `bne` branch at 0x406738 targets 0x4066f8, is taken when t0(?) < 0xc (signed), and falls through when t0(?) >= 0xc (signed).
  The `beq` branch at 0x406740 targets 0x406748 and is always taken.
  The return at 0x406748 has v0 = ?.

- `put_dht_ac_luma` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x406750 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x406750-0x4068a8 (344 bytes).
  It occupies 344 bytes.
  12 such `lw` accesses load 4 bytes from abs 0x411350, including `lw` at 0x40676c, `lw` at 0x40677c, `lw` at 0x406790.
  5 such `sb` accesses store 1 byte to [0x411350] +0x0, including `sb` at 0x406778, `sb` at 0x4067b8, `sb` at 0x4067f0.
  7 such `sw` accesses store 4 bytes to abs 0x411350, including `sw` at 0x406788, `sw` at 0x40679c, `sw` at 0x4067c4.
  2 such `sb` accesses store 1 byte to [0x411350] +0x1, including `sb` at 0x40678c, `sb` at 0x4067c8.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x406818, `lbu` at 0x406864.
  The `bne` branch at 0x406844 targets 0x406804, is taken when t1(?) < 0x10 (signed), and falls through when t1(?) >= 0x10 (signed).
  The `bne` branch at 0x406890 targets 0x406850, is taken when t9(?) < 0xa2 (signed), and falls through when t9(?) >= 0xa2 (signed).
  The `beq` branch at 0x406898 targets 0x4068a0 and is always taken.
  The return at 0x4068a0 has v0 = ?.

- `put_dht_dc_chroma` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x4068a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x4068a8-0x406a00 (344 bytes).
  It occupies 344 bytes.
  12 such `lw` accesses load 4 bytes from abs 0x411350, including `lw` at 0x4068c4, `lw` at 0x4068d4, `lw` at 0x4068e8.
  5 such `sb` accesses store 1 byte to [0x411350] +0x0, including `sb` at 0x4068d0, `sb` at 0x406910, `sb` at 0x406948.
  7 such `sw` accesses store 4 bytes to abs 0x411350, including `sw` at 0x4068e0, `sw` at 0x4068f4, `sw` at 0x40691c.
  2 such `sb` accesses store 1 byte to [0x411350] +0x1, including `sb` at 0x4068e4, `sb` at 0x406920.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x406970, `lbu` at 0x4069bc.
  The `bne` branch at 0x40699c targets 0x40695c, is taken when t1(?) < 0x10 (signed), and falls through when t1(?) >= 0x10 (signed).
  The `bne` branch at 0x4069e8 targets 0x4069a8, is taken when t9(?) < 0xc (signed), and falls through when t9(?) >= 0xc (signed).
  The `beq` branch at 0x4069f0 targets 0x4069f8 and is always taken.
  The return at 0x4069f8 has v0 = ?.

- `put_dht_ac_chroma` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x406a00 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x406a00-0x406b58 (344 bytes).
  It occupies 344 bytes.
  12 such `lw` accesses load 4 bytes from abs 0x411350, including `lw` at 0x406a1c, `lw` at 0x406a2c, `lw` at 0x406a40.
  5 such `sb` accesses store 1 byte to [0x411350] +0x0, including `sb` at 0x406a28, `sb` at 0x406a68, `sb` at 0x406aa0.
  7 such `sw` accesses store 4 bytes to abs 0x411350, including `sw` at 0x406a38, `sw` at 0x406a4c, `sw` at 0x406a74.
  2 such `sb` accesses store 1 byte to [0x411350] +0x1, including `sb` at 0x406a3c, `sb` at 0x406a78.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x406ac8, `lbu` at 0x406b14.
  The `bne` branch at 0x406af4 targets 0x406ab4, is taken when t1(?) < 0x10 (signed), and falls through when t1(?) >= 0x10 (signed).
  The `bne` branch at 0x406b40 targets 0x406b00, is taken when t9(?) < 0xa2 (signed), and falls through when t9(?) >= 0xa2 (signed).
  The `beq` branch at 0x406b48 targets 0x406b50 and is always taken.
  The return at 0x406b50 has v0 = ?.

- `put_app1_qtmja` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x406b58 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x406b58-0x40705c (1284 bytes).
  It occupies 1284 bytes.
  56 such `lw` accesses load 4 bytes from abs 0x411350, including `lw` at 0x406b70, `lw` at 0x406b80, `lw` at 0x406b94.
  12 such `sb` accesses store 1 byte to [0x411350] +0x0, including `sb` at 0x406b7c, `sb` at 0x406bbc, `sb` at 0x406bf8.
  44 such `sw` accesses store 4 bytes to abs 0x411350, including `sw` at 0x406b8c, `sw` at 0x406ba0, `sw` at 0x406bc8.
  32 such `sb` accesses store 1 byte to [0x411350] +0x1, including `sb` at 0x406b90, `sb` at 0x406bcc, `sb` at 0x406c0c.
  The return at 0x40704c has v0 = ?.
  The instructions from 0x407054 to 0x407058 are not reached by any path from the entry, and their branches are not listed.

- `put_app1_qtmja_luma` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x40705c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x40705c-0x407560 (1284 bytes).
  It occupies 1284 bytes.
  56 such `lw` accesses load 4 bytes from abs 0x411350, including `lw` at 0x407074, `lw` at 0x407084, `lw` at 0x407098.
  12 such `sb` accesses store 1 byte to [0x411350] +0x0, including `sb` at 0x407080, `sb` at 0x4070c0, `sb` at 0x4070fc.
  44 such `sw` accesses store 4 bytes to abs 0x411350, including `sw` at 0x407090, `sw` at 0x4070a4, `sw` at 0x4070cc.
  32 such `sb` accesses store 1 byte to [0x411350] +0x1, including `sb` at 0x407094, `sb` at 0x4070d0, `sb` at 0x407110.
  The return at 0x407550 has v0 = ?.
  The instructions from 0x407558 to 0x40755c are not reached by any path from the entry, and their branches are not listed.

- `put_app0_jfif` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x407560 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x407560-0x4077c0 (608 bytes).
  It occupies 608 bytes.
  31 such `lw` accesses load 4 bytes from abs 0x411350, including `lw` at 0x407578, `lw` at 0x407588, `lw` at 0x40759c.
  13 such `sb` accesses store 1 byte to [0x411350] +0x0, including `sb` at 0x407584, `sb` at 0x4075c4, `sb` at 0x4075fc.
  18 such `sw` accesses store 4 bytes to abs 0x411350, including `sw` at 0x407594, `sw` at 0x4075a8, `sw` at 0x4075d0.
  5 such `sb` accesses store 1 byte to [0x411350] +0x1, including `sb` at 0x407598, `sb` at 0x4075d4, `sb` at 0x4076c4.
  The return at 0x4077b0 has v0 = ?.
  The instructions from 0x4077b8 to 0x4077bc are not reached by any path from the entry, and their branches are not listed.

- `put_app2_colspc` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x4077c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x4077c0-0x4079bc (508 bytes).
  It occupies 508 bytes.
  24 such `lw` accesses load 4 bytes from abs 0x411350, including `lw` at 0x4077f0, `lw` at 0x407800, `lw` at 0x407814.
  11 such `sb` accesses store 1 byte to [0x411350] +0x0, including `sb` at 0x4077fc, `sb` at 0x40783c, `sb` at 0x407874.
  13 such `sw` accesses store 4 bytes to abs 0x411350, including `sw` at 0x40780c, `sw` at 0x407820, `sw` at 0x407848.
  2 such `sb` accesses store 1 byte to [0x411350] +0x1, including `sb` at 0x407810, `sb` at 0x40784c.
  The `beq` branch at 0x4079ac targets 0x4079b4 and is always taken.
  The return at 0x4079b4 has v0 = ?.

- `put_com_vice` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x4079bc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x4079bc-0x407c48 (652 bytes).
  It occupies 652 bytes.
  34 such `lw` accesses load 4 bytes from abs 0x411350, including `lw` at 0x4079d4, `lw` at 0x4079e4, `lw` at 0x4079f8.
  16 such `sb` accesses store 1 byte to [0x411350] +0x0, including `sb` at 0x4079e0, `sb` at 0x407a20, `sb` at 0x407a58.
  18 such `sw` accesses store 4 bytes to abs 0x411350, including `sw` at 0x4079f0, `sw` at 0x407a04, `sw` at 0x407a2c.
  2 such `sb` accesses store 1 byte to [0x411350] +0x1, including `sb` at 0x4079f4, `sb` at 0x407a30.
  The return at 0x407c38 has v0 = ?.
  The instructions from 0x407c40 to 0x407c44 are not reached by any path from the entry, and their branches are not listed.

- `put_com_vice_luma` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x407c48 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x407c48-0x4082e0 (1688 bytes).
  It occupies 1688 bytes.
  32 such `lw` accesses load 4 bytes from abs 0x411350, including `lw` at 0x407c60, `lw` at 0x407c70, `lw` at 0x407c84.
  15 such `sb` accesses store 1 byte to [0x411350] +0x0, including `sb` at 0x407c6c, `sb` at 0x407cac, `sb` at 0x407ce4.
  17 such `sw` accesses store 4 bytes to abs 0x411350, including `sw` at 0x407c7c, `sw` at 0x407c90, `sw` at 0x407cb8.
  2 such `sb` accesses store 1 byte to [0x411350] +0x1, including `sb` at 0x407c80, `sb` at 0x407cbc.
  The return at 0x407ea0 has v0 = ?.
  The instructions from 0x407ea8 to 0x4082dc are not reached by any path from the entry, and their branches are not listed.

- `jhead_make` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x407eb0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x407eb0-0x408078 (456 bytes).
  It occupies 456 bytes.
  3 such `sw` accesses store 4 bytes to abs 0x411350, including `sw` at 0x407ee0, `sw` at 0x407f0c, `sw` at 0x407f20.
  4 such `lw` accesses load 4 bytes from abs 0x411350, including `lw` at 0x407ef0, `lw` at 0x407f00, `lw` at 0x407f14.
  The `sb` at 0x407efc stores 1 byte to [0x411350] +0x0.
  The `sb` at 0x407f10 stores 1 byte to [0x411350] +0x1.
  The `jalr` at 0x407f2c calls put_app0_jfif [0x407560] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x407f44 calls put_app1_qtmja [0x406b58] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x407f5c calls put_app2_colspc [0x4077c0] with a0=0x3, a1=?, a2=?, a3=?.
  The `jalr` at 0x407f74 calls put_com_vice [0x4079bc] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x407f90 calls put_dqt [0x4064b8] with a0=0x0, a1=a3 at entry (arg3), a2=?, a3=?.
  The `jalr` at 0x407fac calls put_dqt [0x4064b8] with a0=0x1, a1=a3+128, a2=?, a3=?.
  The `jalr` at 0x407fcc calls put_sof [0x405e10] with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=0x3, a3=0x0.
  The `jalr` at 0x407fe0 calls put_dht_dc_luma [0x4065fc] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x407ff4 calls put_dht_ac_luma [0x406750] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x408008 calls put_dht_dc_chroma [0x4068a8] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40801c calls put_dht_ac_chroma [0x406a00] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x408030 calls put_dri [0x4061a0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x408048 calls put_sos [0x406270] with a0=0x3, a1=?, a2=?, a3=?.
  The `beq` branch at 0x408058 targets 0x408068 and is always taken.
  The return at 0x408070 has v0 = [0x411350].
  The instructions from 0x408060 to 0x408064 are not reached by any path from the entry, and their branches are not listed.

- `jhead_luma_make` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x408078 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x408078-0x4081fc (388 bytes).
  It occupies 388 bytes.
  3 such `sw` accesses store 4 bytes to abs 0x411350, including `sw` at 0x4080a8, `sw` at 0x4080d4, `sw` at 0x4080e8.
  4 such `lw` accesses load 4 bytes from abs 0x411350, including `lw` at 0x4080b8, `lw` at 0x4080c8, `lw` at 0x4080dc.
  The `sb` at 0x4080c4 stores 1 byte to [0x411350] +0x0.
  The `sb` at 0x4080d8 stores 1 byte to [0x411350] +0x1.
  The `jalr` at 0x4080f4 calls put_app0_jfif [0x407560] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40810c calls put_app1_qtmja_luma [0x40705c] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x408124 calls put_app2_colspc [0x4077c0] with a0=0x3, a1=?, a2=?, a3=?.
  The `jalr` at 0x40813c calls put_com_vice_luma [0x407c48] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x408158 calls put_dqt [0x4064b8] with a0=0x0, a1=a3 at entry (arg3), a2=?, a3=?.
  The `jalr` at 0x408178 calls put_sof [0x405e10] with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=0x1, a3=0x0.
  The `jalr` at 0x40818c calls put_dht_dc_luma [0x4065fc] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4081a0 calls put_dht_ac_luma [0x406750] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4081b4 calls put_dri [0x4061a0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4081cc calls put_sos [0x406270] with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4081dc targets 0x4081ec and is always taken.
  The return at 0x4081f4 has v0 = [0x411350].
  The instructions from 0x4081e4 to 0x4081e8 are not reached by any path from the entry, and their branches are not listed.

- `vjpeg_qfmt` in `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` at 0x408200 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x408200-0x4082e0 (224 bytes).
  It occupies 224 bytes.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x408228, `lw` at 0x408288.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x408234, `sh` at 0x408294.
  The `bne` branch at 0x408238 targets 0x408244, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `bne` branch at 0x408248 targets 0x40825c, is taken when t9(?) != at(=-0x1), and falls through when t9(?) == at(=-0x1).
  The `bne` branch at 0x408250 targets 0x40825c and is always taken.
  The `bne` branch at 0x408268 targets 0x408214, is taken when t3(?) < 0x40 (signed), and falls through when t3(?) >= 0x40 (signed).
  The `bne` branch at 0x408298 targets 0x4082a4, is taken when t7(?) != 0, and falls through when t7(?) == 0.
  The `bne` branch at 0x4082a8 targets 0x4082bc, is taken when t7(?) != at(=-0x1), and falls through when t7(?) == at(=-0x1).
  The `bne` branch at 0x4082b0 targets 0x4082bc and is always taken.
  The `bne` branch at 0x4082c8 targets 0x408274, is taken when t1(?) < 0x40 (signed), and falls through when t1(?) >= 0x40 (signed).
  The `beq` branch at 0x4082d0 targets 0x4082d8 and is always taken.
  The return at 0x4082d8 has v0 = ?.
  The instructions from 0x408258 to 0x408258 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4082b8 to 0x4082b8 are not reached by any path from the entry, and their branches are not listed.
