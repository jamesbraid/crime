# Readings: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`

One entry per routine, filed here from the reading batches by binary.

- `_poolneeds` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x401bec (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x401bec-0x401c30 (68 bytes).
  It occupies 68 bytes.
  The `jalr` at 0x401c14 calls vice_dmbuf_requirements with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x401c28 has v0 = ret(vice_dmbuf_requirements).

- `init_formats` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x401c30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x401c30-0x401cfc (204 bytes).
  It occupies 204 bytes.
  The `sw` at 0x401ccc stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `sw` at 0x401cd4 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x401cdc stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `jalr` at 0x401c44 calls dmParamsCreate with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401c74 calls dmParamsCreate with a0=a0+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x401ca4 calls dmParamsCreate with a0=a0+8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x401c50 targets 0x401c68, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x401c60 targets 0x401ce8 and is always taken.
  The `beq` branch at 0x401c80 targets 0x401c98, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x401c90 targets 0x401ce8 and is always taken.
  The `beq` branch at 0x401cb0 targets 0x401cc8, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x401cc0 targets 0x401ce8 and is always taken.
  The return at 0x401cf4 has v0 = one of -0x1, 0x0.

- `free_formats` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x401cfc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x401cfc-0x401d78 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0x401d0c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x401d20 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x401d34 loads 4 bytes from a0 (arg0 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x401d48, `lw` at 0x401d58.
  The `jalr` at 0x401d14 calls dmParamsDestroy with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401d28 calls dmParamsDestroy with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0x401d3c calls dmParamsDestroy with a0=[a0+8], a1=?, a2=?, a3=?.
  The `jalr` at 0x401d60 calls dmBufferDestroyPool with a0=[a0+12], a1=[a0+12], a2=?, a3=?.
  The `beq` branch at 0x401d4c targets 0x401d68, is taken when a1(=[a0+12]) == 0, and falls through when a1(=[a0+12]) != 0.
  The return at 0x401d70 has v0 = one of ret(dmParamsDestroy), ret(dmBufferDestroyPool).

- `required_params` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x401d78 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x401d78-0x401e88 (272 bytes).
  It occupies 272 bytes.
  The `jalr` at 0x401d98 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x40c000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401db8 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x40c018, a2=?, a3=?.
  The `jalr` at 0x401de0 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x40c028, a2=?, a3=?.
  The `jalr` at 0x401e08 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x40c038, a2=?, a3=?.
  The `jalr` at 0x401e30 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x40c050, a2=?, a3=?.
  The `jalr` at 0x401e54 calls dmSetError with a0=0x1773, a1=0x40c068, a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x401da0 targets 0x401e40, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `bne` branch at 0x401dc0 targets 0x401dd0, is taken when v0(=ret(dmParamsIsPresent)) != 0, and falls through when v0(=ret(dmParamsIsPresent)) == 0.
  The `beq` branch at 0x401dc8 targets 0x401e40 and is always taken.
  The `bne` branch at 0x401de8 targets 0x401df8, is taken when v0(=ret(dmParamsIsPresent)) != 0, and falls through when v0(=ret(dmParamsIsPresent)) == 0.
  The `beq` branch at 0x401df0 targets 0x401e40 and is always taken.
  The `bne` branch at 0x401e10 targets 0x401e20, is taken when v0(=ret(dmParamsIsPresent)) != 0, and falls through when v0(=ret(dmParamsIsPresent)) == 0.
  The `beq` branch at 0x401e18 targets 0x401e40 and is always taken.
  The `bne` branch at 0x401e38 targets 0x401e6c, is taken when v0(=ret(dmParamsIsPresent)) != 0, and falls through when v0(=ret(dmParamsIsPresent)) == 0.
  The `beq` branch at 0x401e64 targets 0x401e74 and is always taken.
  The return at 0x401e80 has v0 = one of -0x1, 0x0.

- `needsConvert` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x401e88 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x401e88-0x402160 (728 bytes).
  It occupies 728 bytes.
  The `bgezall` at 0x401ea8 calls required_params [0x401d78] with a0=a0 at entry (arg0), a1=0x410a58, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x401ed4 calls __assert with a0=0x40c078, a1=0x40c0a0, a2=0xad, a3=?.
  The `bgezall` at 0x401eec calls required_params [0x401d78] with a0=a1 at entry (arg1), a1=0x410a58, a2=?, a3=?.
  The `jalr` at 0x401f18 calls __assert with a0=0x40c0b0, a1=0x40c0a0, a2=0xae, a3=?.
  The `jalr` at 0x401f30 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x40c018, a2=?, a3=?.
  The `jalr` at 0x401f4c calls dmParamsGetInt with a0=a1 at entry (arg1), a1=0x40c018, a2=?, a3=?.
  The `jalr` at 0x401f74 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x40c028, a2=ret(dmParamsGetInt), a3=?.
  The `jalr` at 0x401f90 calls dmParamsGetInt with a0=a1 at entry (arg1), a1=0x40c028, a2=?, a3=?.
  The `jalr` at 0x401fbc calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x40c050, a2=ret(dmParamsGetInt), a3=?.
  The `jalr` at 0x401fd8 calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x40c050, a2=?, a3=?.
  The `jalr` at 0x40200c calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x40c0d8, a2=ret(dmParamsGetEnum), a3=?.
  The `jalr` at 0x402030 calls dmParamsIsPresent with a0=a1 at entry (arg1), a1=0x40c0d8, a2=?, a3=?.
  The `jalr` at 0x402054 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x40c0d8, a2=?, a3=?.
  The `jalr` at 0x402070 calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x40c0d8, a2=?, a3=?.
  The `jalr` at 0x4020a8 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x40c038, a2=?, a3=?.
  The `jalr` at 0x4020c8 calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x40c038, a2=?, a3=?.
  The `beq` branch at 0x401eb4 targets 0x401edc, is taken when v0(=ret(required_params)) == 0, and falls through when v0(=ret(required_params)) != 0.
  The `beq` branch at 0x401ef8 targets 0x401f20, is taken when v0(=ret(required_params)) == 0, and falls through when v0(=ret(required_params)) != 0.
  The `bne` branch at 0x401f5c targets 0x401fec, is taken when a2(=ret(dmParamsGetInt)) != v0(=ret(dmParamsGetInt)), and falls through when a2(=ret(dmParamsGetInt)) == v0(=ret(dmParamsGetInt)).
  The `beq` branch at 0x401f9c targets 0x401fac, is taken when a2(=ret(dmParamsGetInt)) == v0(=ret(dmParamsGetInt)), and falls through when a2(=ret(dmParamsGetInt)) != v0(=ret(dmParamsGetInt)).
  The `beq` branch at 0x401fa4 targets 0x401fec and is always taken.
  The `beq` branch at 0x401fe4 targets 0x401ffc, is taken when a2(=ret(dmParamsGetEnum)) == v0(=ret(dmParamsGetEnum)), and falls through when a2(=ret(dmParamsGetEnum)) != v0(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x401ff4 targets 0x40214c and is always taken.
  The `beq` branch at 0x402018 targets 0x402098, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x40203c targets 0x402098, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x402080 targets 0x402098, is taken when a2(=ret(dmParamsGetEnum)) == v0(=ret(dmParamsGetEnum)), and falls through when a2(=ret(dmParamsGetEnum)) != v0(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x402090 targets 0x40214c and is always taken.
  The `bne` branch at 0x4020e0 targets 0x4020f4, is taken when a2(=ret(dmParamsGetEnum)) != a3(=ret(dmParamsGetEnum)), and falls through when a2(=ret(dmParamsGetEnum)) == a3(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x4020ec targets 0x40214c and is always taken.
  The `bne` branch at 0x4020fc targets 0x402114, is taken when a4(=ret(dmParamsGetEnum)) != a5(=0x3e9), and falls through when a4(=ret(dmParamsGetEnum)) == a5(=0x3e9).
  The `beq` branch at 0x40210c targets 0x402134, is taken when a6(=ret(dmParamsGetEnum)) == a7(=0x3ea), and falls through when a6(=ret(dmParamsGetEnum)) != a7(=0x3ea).
  The `bne` branch at 0x40211c targets 0x402140, is taken when t0(=ret(dmParamsGetEnum)) != t1(=0x3ea), and falls through when t0(=ret(dmParamsGetEnum)) == t1(=0x3ea).
  The `bne` branch at 0x40212c targets 0x402140, is taken when t2(=ret(dmParamsGetEnum)) != t3(=0x3e9), and falls through when t2(=ret(dmParamsGetEnum)) == t3(=0x3e9).
  The `beq` branch at 0x402138 targets 0x40214c and is always taken.
  The return at 0x402158 has v0 = one of 0x0, 0x1.

- `verify_size` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x402160 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x402160-0x402340 (480 bytes).
  It occupies 480 bytes.
  The `jalr` at 0x40217c calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x40c018, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4021ec calls dmSetError with a0=0x1772, a1=0x40c068, a2=0x40c0f0, a3=?.
  The `jalr` at 0x402214 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x40c028, a2=ret(dmParamsGetInt), a3=?, a7=ret(dmParamsGetInt).
  The `jalr` at 0x402290 calls dmSetError with a0=0x1772, a1=0x40c068, a2=0x40c100, a3=0xf3, a4=ret(dmParamsGetInt), a5=0x1e6, a6=ret(dmParamsGetInt).
  The `jalr` at 0x4022b0 calls dmImageFrameSize with a0=a0 at entry (arg0), a1=?, a2=ret(dmParamsGetInt), a3=0xf3.
  The `jalr` at 0x40230c calls dmSetError with a0=0x1772, a1=0x40c068, a2=0x40c118, a3=ret(dmImageFrameSize).
  The `blez` branch at 0x402190 targets 0x4021d4, is taken when a2(=ret(dmParamsGetInt)) <= 0 (signed), and falls through when a2(=ret(dmParamsGetInt)) > 0 (signed).
  The `bne` branch at 0x4021b8 targets 0x4021d4, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x4021cc targets 0x402204, is taken when a6(=0x8000) >= a7(=ret(dmParamsGetInt)) (signed), and falls through when a6(=0x8000) < a7(=ret(dmParamsGetInt)) (signed).
  The `beq` branch at 0x4021fc targets 0x40232c and is always taken.
  The `beq` branch at 0x40222c targets 0x4022a8, is taken when a2(=ret(dmParamsGetInt)) == a3(=0xf3), and falls through when a2(=ret(dmParamsGetInt)) != a3(=0xf3).
  The `beq` branch at 0x40223c targets 0x4022a8, is taken when a4(=ret(dmParamsGetInt)) == a5(=0x1e6), and falls through when a4(=ret(dmParamsGetInt)) != a5(=0x1e6).
  The `blez` branch at 0x402248 targets 0x402278, is taken when a6(=ret(dmParamsGetInt)) <= 0 (signed), and falls through when a6(=ret(dmParamsGetInt)) > 0 (signed).
  The `beq` branch at 0x402270 targets 0x4022a8, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x4022a0 targets 0x40232c and is always taken.
  The `beq` branch at 0x4022c4 targets 0x4022f4, is taken when a3(=ret(dmImageFrameSize)) == 0, and falls through when a3(=ret(dmImageFrameSize)) != 0.
  The `bne` branch at 0x4022d8 targets 0x4022f4, is taken when a4(=0x400000) < a5(=ret(dmImageFrameSize)) (unsigned), and falls through when a4(=0x400000) >= a5(=ret(dmImageFrameSize)) (unsigned).
  The `beq` branch at 0x4022ec targets 0x402324, is taken when a6(=0x3e0000) >= a7(=ret(dmImageFrameSize)) (unsigned), and falls through when a6(=0x3e0000) < a7(=ret(dmImageFrameSize)) (unsigned).
  The `beq` branch at 0x40231c targets 0x40232c and is always taken.
  The return at 0x402338 has v0 = one of -0x1, 0x0.

- `verify_uncompressed` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x402340 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x402340-0x402410 (208 bytes).
  It occupies 208 bytes.
  The `bgezall` at 0x402360 calls required_params [0x401d78] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x402398 calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x40c000, a2=?, a3=?.
  The `jalr` at 0x4023b4 calls strcmp with a0=ret(dmParamsGetString), a1=0x40c130, a2=?, a3=?.
  The `jalr` at 0x4023dc calls dmSetError with a0=0x1772, a1=0x40c068, a2=0x40c000, a3=?.
  The `bne` branch at 0x402370 targets 0x402388, is taken when v0(=ret(required_params)) != ra(=-0x1), and falls through when v0(=ret(required_params)) == ra(=-0x1).
  The `beq` branch at 0x402380 targets 0x4023fc and is always taken.
  The `beq` branch at 0x4023bc targets 0x4023f4, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x4023ec targets 0x4023fc and is always taken.
  The return at 0x402408 has v0 = one of -0x1, 0x0.

- `verify_compressed` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x402410 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x402410-0x40261c (524 bytes).
  It occupies 524 bytes.
  The `bgezall` at 0x402430 calls required_params [0x401d78] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x402468 calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x40c000, a2=?, a3=?.
  The `jalr` at 0x402480 calls strcmp with a0=ret(dmParamsGetString), a1=0x410a60, a2=?, a3=?.
  The `jalr` at 0x4024a4 calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x40c000, a2=?, a3=?.
  The `jalr` at 0x4024bc calls strcmp with a0=ret(dmParamsGetString), a1=0x40c148, a2=?, a3=?.
  The `jalr` at 0x4024e4 calls dmSetError with a0=0x1772, a1=0x40c068, a2=0x40c000, a3=?.
  The `jalr` at 0x40250c calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x40c050, a2=?, a3=?.
  The `jalr` at 0x40253c calls dmSetError with a0=0x1772, a1=0x40c068, a2=0x40c050, a3=?.
  The `jalr` at 0x402564 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x40c038, a2=0x44c, a3=?.
  The `bgezall` at 0x4025b8 calls verify_size [0x402160] with a0=a0 at entry (arg0), a1=?, a2=ret(dmParamsGetEnum), a3=0x3ea.
  The `jalr` at 0x4025ec calls dmSetError with a0=0x1772, a1=0x40c068, a2=0x40c038, a3=0x3ea, a4=ret(dmParamsGetEnum), a5=0x3ed, a6=ret(dmParamsGetEnum), a7=0x3f0.
  The `bne` branch at 0x402440 targets 0x402458, is taken when v0(=ret(required_params)) != ra(=-0x1), and falls through when v0(=ret(required_params)) == ra(=-0x1).
  The `beq` branch at 0x402450 targets 0x402608 and is always taken.
  The `beq` branch at 0x40248c targets 0x4024fc, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x4024c4 targets 0x4024fc, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x4024f4 targets 0x402608 and is always taken.
  The `beq` branch at 0x40251c targets 0x402554, is taken when v0(=ret(dmParamsGetEnum)) == a2(=0x44c), and falls through when v0(=ret(dmParamsGetEnum)) != a2(=0x44c).
  The `beq` branch at 0x40254c targets 0x402608 and is always taken.
  The `beq` branch at 0x40257c targets 0x4025ac, is taken when a2(=ret(dmParamsGetEnum)) == a3(=0x3ea), and falls through when a2(=ret(dmParamsGetEnum)) != a3(=0x3ea).
  The `beq` branch at 0x40258c targets 0x4025ac, is taken when a4(=ret(dmParamsGetEnum)) == a5(=0x3ed), and falls through when a4(=ret(dmParamsGetEnum)) != a5(=0x3ed).
  The `beq` branch at 0x40259c targets 0x4025ac, is taken when a6(=ret(dmParamsGetEnum)) == a7(=0x3f0), and falls through when a6(=ret(dmParamsGetEnum)) != a7(=0x3f0).
  The `beq` branch at 0x4025a4 targets 0x4025d4 and is always taken.
  The `beq` branch at 0x4025cc targets 0x402608 and is always taken.
  The `beq` branch at 0x402600 targets 0x402608 and is always taken.
  The return at 0x402614 has v0 = one of -0x1, ret(verify_size).

- `get_default_uncompressed` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x40261c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x40261c-0x4026f0 (212 bytes).
  It occupies 212 bytes.
  The `jalr` at 0x40263c calls dmSetImageDefaults with a0=a0 at entry (arg0), a1=0x140, a2=0xf0, a3=0x3f0.
  The `jalr` at 0x402674 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x40c050, a2=0x44c, a3=?.
  The `jalr` at 0x4026b0 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x40c000, a2=0x40c130, a3=?.
  The `beq` branch at 0x402648 targets 0x402660, is taken when v0(=ret(dmSetImageDefaults)) == 0, and falls through when v0(=ret(dmSetImageDefaults)) != 0.
  The `beq` branch at 0x402658 targets 0x4026dc and is always taken.
  The `beq` branch at 0x402680 targets 0x402698, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x402690 targets 0x4026dc and is always taken.
  The `beq` branch at 0x4026bc targets 0x4026d4, is taken when v0(=ret(dmParamsSetString)) == 0, and falls through when v0(=ret(dmParamsSetString)) != 0.
  The `beq` branch at 0x4026cc targets 0x4026dc and is always taken.
  The return at 0x4026e8 has v0 = one of -0x1, 0x0.

- `get_default_compressed` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x4026f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x4026f0-0x4027c0 (208 bytes).
  It occupies 208 bytes.
  The `jalr` at 0x402710 calls dmSetImageDefaults with a0=a0 at entry (arg0), a1=0x140, a2=0xf0, a3=0x3f0.
  The `jalr` at 0x402748 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x40c050, a2=0x44c, a3=?.
  The `jalr` at 0x402780 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x40c000, a2=0x410a60, a3=?.
  The `beq` branch at 0x40271c targets 0x402734, is taken when v0(=ret(dmSetImageDefaults)) == 0, and falls through when v0(=ret(dmSetImageDefaults)) != 0.
  The `beq` branch at 0x40272c targets 0x4027ac and is always taken.
  The `beq` branch at 0x402754 targets 0x40276c, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x402764 targets 0x4027ac and is always taken.
  The `beq` branch at 0x40278c targets 0x4027a4, is taken when v0(=ret(dmParamsSetString)) == 0, and falls through when v0(=ret(dmParamsSetString)) != 0.
  The `beq` branch at 0x40279c targets 0x4027ac and is always taken.
  The return at 0x4027b8 has v0 = one of -0x1, 0x0.

- `dmICInitDso` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x4027c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x4027c0-0x4028c8 (264 bytes).
  It occupies 264 bytes.
  The `ld` at 0x4027e0 loads 8 bytes from abs 0x4107d8.
  The `ld` at 0x4027e4 loads 8 bytes from abs 0x4107e0.
  The `ld` at 0x4027e8 loads 8 bytes from abs 0x4107e8.
  The `ld` at 0x4027ec loads 8 bytes from abs 0x4107f0.
  The `ld` at 0x4027f0 loads 8 bytes from abs 0x4107f8.
  The `ld` at 0x4027f4 loads 8 bytes from abs 0x410800.
  The `ld` at 0x4027f8 loads 8 bytes from abs 0x410808.
  The `ld` at 0x4027fc loads 8 bytes from abs 0x410810.
  The `ld` at 0x402804 loads 8 bytes from abs 0x410818.
  The `lw` at 0x40280c loads 4 bytes from abs 0x410820.
  The `ld` at 0x402830 loads 8 bytes from abs 0x410828.
  The `ld` at 0x402834 loads 8 bytes from abs 0x410830.
  The `ld` at 0x402838 loads 8 bytes from abs 0x410838.
  The `ld` at 0x40283c loads 8 bytes from abs 0x410840.
  The `ld` at 0x402840 loads 8 bytes from abs 0x410848.
  The `ld` at 0x402844 loads 8 bytes from abs 0x410850.
  The `ld` at 0x402848 loads 8 bytes from abs 0x410858.
  The `ld` at 0x40284c loads 8 bytes from abs 0x410860.
  The `ld` at 0x402854 loads 8 bytes from abs 0x410868.
  The `lw` at 0x40285c loads 4 bytes from abs 0x410870.
  The `jalr` at 0x402818 calls dmICRegisterConverter with a0=[0x4107d8]:8, a1=[0x4107e0]:8, a2=[0x4107e8]:8, a3=[0x4107f0]:8, a4=[0x4107f8]:8, a5=[0x410800]:8, a6=[0x410808]:8, a7=[0x410810]:8.
  The `jalr` at 0x402868 calls dmICRegisterConverter with a0=[0x410828]:8, a1=[0x410830]:8, a2=[0x410838]:8, a3=[0x410840]:8, a4=[0x410848]:8, a5=[0x410850]:8, a6=[0x410858]:8, a7=[0x410860]:8.
  The `jalr` at 0x402890 calls dmSetError with a0=0x1774, a1=0x40c068, a2=0x40c158, a3=?.
  The `bltz` branch at 0x402820 targets 0x402878, is taken when v0(=ret(dmICRegisterConverter)) < 0 (signed), and falls through when v0(=ret(dmICRegisterConverter)) >= 0 (signed).
  The `bgez` branch at 0x402870 targets 0x4028a8, is taken when v0(=ret(dmICRegisterConverter)) >= 0 (signed), and falls through when v0(=ret(dmICRegisterConverter)) < 0 (signed).
  The `beq` branch at 0x4028a0 targets 0x4028b0 and is always taken.
  The return at 0x4028c0 has v0 = one of -0x1, 0x0.

- `e_open` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x4028c8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x4028c8-0x402cd0 (1032 bytes).
  It occupies 1032 bytes.
  The `sw` at 0x40299c stores 4 bytes to ret(calloc) +0x11c.
  The `sw` at 0x402a28 stores 4 bytes to ret(calloc) +0x0.
  2 such `lw` accesses load 4 bytes from ret(calloc) +0x0, including `lw` at 0x402a34, `lw` at 0x402bd4.
  The `sw` at 0x402ad4 stores 4 bytes to ret(calloc) +0x108.
  The `lw` at 0x402b68 loads 4 bytes from ret(calloc) +0x108.
  The `sw` at 0x402c04 stores 4 bytes to ret(calloc) +0xa0.
  The `lw` at 0x402c0c loads 4 bytes from ret(calloc) +0xa0.
  The `sw` at 0x402c7c stores 4 bytes to ret(calloc) +0xb4.
  The `lw` at 0x402c84 loads 4 bytes from ret(calloc) +0xb4.
  The `sw` at 0x402cac stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x4028ec calls vice_get_lib_rev with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x402924 calls dmSetError with a0=0x1774, a1=0x40c068, a2=0x40c178, a3=0x6b7a.
  The `jalr` at 0x402948 calls calloc with a0=0x1, a1=0x120, a2=?, a3=?.
  The `jalr` at 0x40297c calls dmSetError with a0=0x1774, a1=0x40c068, a2=0x40c198, a3=ret(calloc).
  The `bgezall` at 0x4029b0 calls init_formats [0x401c30] with a0=ret(calloc)+4, a1=a0 at entry (arg0), a2=ret(calloc), a3=ret(calloc).
  The `jalr` at 0x4029dc calls dmSetError with a0=0x1774, a1=0x40c068, a2=0x40c1a8, a3=?.
  The `jalr` at 0x4029ec calls free with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x402a10 calls vice_open_and_setetc with a0=0x40c1d8, a1=?, a2=?, a3=?.
  The `jalr` at 0x402a58 calls dmSetError with a0=0x1774, a1=0x40c068, a2=0x40c1e8, a3=ret(calloc).
  The `bgezall` at 0x402a70 calls free_formats [0x401cfc] with a0=ret(calloc)+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x402a80 calls free with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x402aa4 calls vice_alloc with a0=ret(vice_open_and_setetc), a1=0x1, a2=ret(vice_open_and_setetc), a3=ret(calloc).
  The `jalr` at 0x402ac4 calls vice_mmap with a0=ret(vice_open_and_setetc), a1=ret(vice_alloc), a2=0x1, a3=?.
  The `jalr` at 0x402af0 calls vice_settlb with a0=ret(vice_open_and_setetc), a1=0x7e, a2=ret(vice_alloc), a3=0x1, a4=sp-80.
  The `jalr` at 0x402b1c calls dmSetError with a0=0x1774, a1=0x40c068, a2=0x40c208, a3=?.
  The `bgezall` at 0x402b30 calls e_cleanup [0x402cd0] with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x402b54 calls vice_file with a0=0x40c228, a1=?, a2=?, a3=?.
  The `jalr` at 0x402b74 calls __vu_readfile with a0=ret(vice_file), a1=[ret(calloc)+264], a2=0x1e00, a3=?.
  The `jalr` at 0x402ba4 calls dmSetError with a0=0x1774, a1=0x40c068, a2=0x40c238, a3=?.
  The `bgezall` at 0x402bb8 calls e_cleanup [0x402cd0] with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x402bf4 calls vice_event_init with a0=[ret(calloc)], a1=ret(calloc)+184, a2=ret(calloc)+224, a3=0x40, a4=0x40.
  The `jalr` at 0x402c30 calls dmSetError with a0=0x1774, a1=0x40c068, a2=0x40c258, a3=?.
  The `bgezall` at 0x402c44 calls e_cleanup [0x402cd0] with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x402c68 calls getenv with a0=0x40c270, a1=[ret(calloc)+160], a2=ret(calloc), a3=?.
  The `jalr` at 0x402c9c calls printf with a0=0x40c280, a1=[ret(calloc)+180], a2=?, a3=ret(calloc).
  The `beq` branch at 0x402900 targets 0x40293c, is taken when v0(?) == v1(=0x6b7a), and falls through when v0(?) != v1(=0x6b7a).
  The `beq` branch at 0x402934 targets 0x402cb8 and is always taken.
  The `bne` branch at 0x40295c targets 0x402994, is taken when a3(=ret(calloc)) != 0, and falls through when a3(=ret(calloc)) == 0.
  The `beq` branch at 0x40298c targets 0x402cb8 and is always taken.
  The `beq` branch at 0x4029bc targets 0x402a04, is taken when v0(=ret(init_formats)) == 0, and falls through when v0(=ret(init_formats)) != 0.
  The `beq` branch at 0x4029fc targets 0x402cb8 and is always taken.
  The `bgez` branch at 0x402a38 targets 0x402a98, is taken when a1(=[ret(calloc)]) >= 0 (signed), and falls through when a1(=[ret(calloc)]) < 0 (signed).
  The `beq` branch at 0x402a90 targets 0x402cb8 and is always taken.
  The `beq` branch at 0x402afc targets 0x402b48, is taken when v0(=ret(vice_settlb)) == 0, and falls through when v0(=ret(vice_settlb)) != 0.
  The `beq` branch at 0x402b40 targets 0x402cb8 and is always taken.
  The `beq` branch at 0x402b84 targets 0x402bd0, is taken when v0(=ret(__vu_readfile)) == a2(=0x1e00), and falls through when v0(=ret(__vu_readfile)) != a2(=0x1e00).
  The `beq` branch at 0x402bc8 targets 0x402cb8 and is always taken.
  The `bgez` branch at 0x402c10 targets 0x402c5c, is taken when a1(=[ret(calloc)+160]) >= 0 (signed), and falls through when a1(=[ret(calloc)+160]) < 0 (signed).
  The `beq` branch at 0x402c54 targets 0x402cb8 and is always taken.
  The `beq` branch at 0x402c88 targets 0x402ca4, is taken when a1(=[ret(calloc)+180]) == 0, and falls through when a1(=[ret(calloc)+180]) != 0.
  The return at 0x402cc8 has v0 = one of -0x1, 0x0.

- `e_cleanup` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x402cd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x402cd0-0x402d64 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0x402ce0 loads 4 bytes from a0 (arg0 at entry) +0x108.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x402cf8, `lw` at 0x402d1c.
  The `jalr` at 0x402cec calls munmap with a0=[a0+264], a1=0x10000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x402d10 calls vice_event_uninit with a0=[a0], a1=a0+184, a2=a0+224, a3=?.
  The `jalr` at 0x402d24 calls vice_close with a0=[a0], a1=?, a2=?, a3=?.
  The `bgezall` at 0x402d3c calls free_formats [0x401cfc] with a0=a0+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x402d4c calls free with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0x402d5c has v0 = ret(free).

- `e_close` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x402d64 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x402d64-0x402dd4 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x402d8c loads 4 bytes from a0 (arg0 at entry) +0xb4.
  The `jalr` at 0x402da4 calls printf with a0=0x40c2a0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x402db8 calls e_cleanup [0x402cd0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x402d90 targets 0x402dac, is taken when at(=[a0+180]) == 0, and falls through when at(=[a0+180]) != 0.
  The return at 0x402dcc has v0 = ret(e_cleanup).

- `e_describe` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x402dd4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x402dd4-0x402eb4 (224 bytes).
  It occupies 224 bytes.
  The `jalr` at 0x402e08 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x40c2c0, a2=0x6a706567, a3=a3 at entry (arg3).
  The `jalr` at 0x402e24 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x40c2d0, a2=0x410a68, a3=?.
  The `jalr` at 0x402e40 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x40c2e0, a2=0x1, a3=?.
  The `jalr` at 0x402e5c calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x40c2f0, a2=0x1, a3=?.
  The `jalr` at 0x402e78 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x40c308, a2=0x0, a3=?.
  The `jalr` at 0x402e94 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x40c318, a2=0x1, a3=?.
  The return at 0x402eac has v0 = 0x0.

- `e_dstpoolis` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x402eb4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x402eb4-0x402f90 (220 bytes).
  It occupies 220 bytes.
  The `sw` at 0x402ee4 stores 4 bytes to a0 (arg0 at entry) +0x98.
  The `sw` at 0x402f00 stores 4 bytes to a0 (arg0 at entry) +0x9c.
  The `lw` at 0x402f08 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lw` at 0x402f54 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x402ef0 calls dmBufferGetAllocSize with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=0x15a1c, a3=a3 at entry (arg3).
  The `jalr` at 0x402f38 calls dmSetError with a0=0x1772, a1=0x40c068, a2=0x40c328, a3=0x3e0000, a4=[a0+156], a5=a0 at entry (arg0).
  The `jalr` at 0x402f60 calls vice_dmbuf_outpool with a0=[a0], a1=a1 at entry (arg1), a2=?, a3=?, a4=[a0+156], a5=a0 at entry (arg0).
  The `beq` branch at 0x402f14 targets 0x402f50, is taken when a3(=0x3e0000) >= a4(=[a0+156]) (signed), and falls through when a3(=0x3e0000) < a4(=[a0+156]) (signed).
  The `beq` branch at 0x402f48 targets 0x402f78 and is always taken.
  The return at 0x402f88 has v0 = one of -0x1, ret(vice_dmbuf_outpool).

- `e_fd` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x402f90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x402f90-0x402fb4 (36 bytes).
  It occupies 36 bytes.
  The `lw` at 0x402fa4 loads 4 bytes from a0 (arg0 at entry) +0xa0.
  The return at 0x402fac has v0 = [a0+160].

- `e_getsrcfilled` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x402fb4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x402fb4-0x40302c (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x402fdc loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `jalr` at 0x402fe8 calls dmFifoNfilled with a0=[a0+184], a1=sp-44, a2=0x1591c, a3=a3 at entry (arg3).
  The `beq` branch at 0x402ff0 targets 0x403008, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The `beq` branch at 0x403000 targets 0x403014 and is always taken.
  The return at 0x403024 has v0 = one of -0x1, ?.

- `e_getdstfilled` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x40302c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x40302c-0x4030a4 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x403054 loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `jalr` at 0x403060 calls dmFifoNfilled with a0=[a0+224], a1=sp-44, a2=0x158a4, a3=a3 at entry (arg3).
  The `beq` branch at 0x403068 targets 0x403080, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The `beq` branch at 0x403078 targets 0x40308c and is always taken.
  The return at 0x40309c has v0 = one of -0x1, ?.

- `e_verifysrc` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x4030a4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x4030a4-0x403134 (144 bytes).
  It occupies 144 bytes.
  The `bgezall` at 0x4030d0 calls verify_uncompressed [0x402340] with a0=a0 at entry (arg0), a1=0x410a70, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x403104 calls verify_size [0x402160] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0x4030e0 targets 0x4030f8, is taken when v0(=ret(verify_uncompressed)) != at(=-0x1), and falls through when v0(=ret(verify_uncompressed)) == at(=-0x1).
  The `beq` branch at 0x4030f0 targets 0x40311c and is always taken.
  The return at 0x40312c has v0 = one of -0x1, ret(verify_size).

- `e_verifydst` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x403134 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x403134-0x40317c (72 bytes).
  It occupies 72 bytes.
  The `bgezall` at 0x403160 calls verify_compressed [0x402410] with a0=a0 at entry (arg0), a1=0x410a74, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x403174 has v0 = ret(verify_compressed).

- `e_verifycvt` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x40317c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x40317c-0x4032d4 (344 bytes).
  It occupies 344 bytes.
  The `jalr` at 0x4031a8 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x40c340, a2=0x15754, a3=a3 at entry (arg3).
  The `jalr` at 0x4031cc calls dmParamsGetFloat with a0=a0 at entry (arg0), a1=0x40c340, a2=?, a3=?.
  The `jalr` at 0x403220 calls dmSetError with a0=0x1772, a1=0x40c068, a2=0x410a78, a3=?.
  The `jalr` at 0x403248 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x40c360, a2=?, a3=?.
  The `jalr` at 0x40326c calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x40c360, a2=?, a3=?.
  The `jalr` at 0x40329c calls dmSetError with a0=0x1772, a1=0x40c068, a2=0x410a80, a3=?.
  The `beq` branch at 0x4031b4 targets 0x403238, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `bc1t` branch at 0x4031ec targets 0x40320c, is taken when f0(=ret(dmParamsGetFloat)) < f1 (c.lt.d at 0x4031e4), and falls through when not (f0(=ret(dmParamsGetFloat)) < f1 (c.lt.d at 0x4031e4)).
  The `bc1f` branch at 0x403204 targets 0x403238, is taken when not (f2(=0x3ff0000000000000) < f3(=ret(dmParamsGetFloat)) (c.lt.d at 0x4031fc)), and falls through when f2(=0x3ff0000000000000) < f3(=ret(dmParamsGetFloat)) (c.lt.d at 0x4031fc).
  The `beq` branch at 0x403230 targets 0x4032bc and is always taken.
  The `beq` branch at 0x403254 targets 0x4032b4, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `bgez` branch at 0x403280 targets 0x4032b4, is taken when a2(=ret(dmParamsGetInt)) >= 0 (signed), and falls through when a2(=ret(dmParamsGetInt)) < 0 (signed).
  The `beq` branch at 0x4032ac targets 0x4032bc and is always taken.
  The return at 0x4032cc has v0 = one of -0x1, 0x0.

- `e_verifysrcdstcvt` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x4032d4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x4032d4-0x4034c8 (500 bytes).
  It occupies 500 bytes.
  The `bgezall` at 0x403310 calls e_verifysrc [0x4030a4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x40334c calls e_verifydst [0x403134] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `bgezall` at 0x403388 calls e_verifycvt [0x40317c] with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `jalr` at 0x4033bc calls dmParamsIsPresent with a0=a2 at entry (arg2), a1=0x40c360, a2=?, a3=?.
  The `jalr` at 0x4033e0 calls dmParamsGetInt with a0=a2 at entry (arg2), a1=0x40c360, a2=?, a3=?.
  The `jalr` at 0x403410 calls dmParamsIsPresent with a0=a1 at entry (arg1), a1=0x40c378, a2=?, a3=?.
  The `jalr` at 0x40343c calls dmSetError with a0=0x1773, a1=0x40c068, a2=0x40c388, a3=?.
  The `jalr` at 0x403464 calls dmParamsIsPresent with a0=a1 at entry (arg1), a1=0x40c0d8, a2=?, a3=?.
  The `jalr` at 0x403490 calls dmSetError with a0=0x1773, a1=0x40c068, a2=0x40c3b8, a3=?.
  The `beq` branch at 0x4032fc targets 0x403334, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x40331c targets 0x403334, is taken when v0(=ret(e_verifysrc)) == 0, and falls through when v0(=ret(e_verifysrc)) != 0.
  The `beq` branch at 0x40332c targets 0x4034b0 and is always taken.
  The `beq` branch at 0x403338 targets 0x403370, is taken when at(=a1) == 0, and falls through when at(=a1) != 0.
  The `beq` branch at 0x403358 targets 0x403370, is taken when v0(=ret(e_verifydst)) == 0, and falls through when v0(=ret(e_verifydst)) != 0.
  The `beq` branch at 0x403368 targets 0x4034b0 and is always taken.
  The `beq` branch at 0x403374 targets 0x4033ac, is taken when at(=a2) == 0, and falls through when at(=a2) != 0.
  The `beq` branch at 0x403394 targets 0x4033ac, is taken when v0(=ret(e_verifycvt)) == 0, and falls through when v0(=ret(e_verifycvt)) != 0.
  The `beq` branch at 0x4033a4 targets 0x4034b0 and is always taken.
  The `beq` branch at 0x4033c8 targets 0x4034a8, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `bne` branch at 0x4033ec targets 0x403400, is taken when v0(=ret(dmParamsGetInt)) != 0, and falls through when v0(=ret(dmParamsGetInt)) == 0.
  The `beq` branch at 0x4033f8 targets 0x4034b0 and is always taken.
  The `bne` branch at 0x40341c targets 0x403454, is taken when v0(=ret(dmParamsIsPresent)) != 0, and falls through when v0(=ret(dmParamsIsPresent)) == 0.
  The `beq` branch at 0x40344c targets 0x4034b0 and is always taken.
  The `bne` branch at 0x403470 targets 0x4034a8, is taken when v0(=ret(dmParamsIsPresent)) != 0, and falls through when v0(=ret(dmParamsIsPresent)) == 0.
  The `beq` branch at 0x4034a0 targets 0x4034b0 and is always taken.
  The return at 0x4034c0 has v0 = one of -0x1, 0x0.

- `e_defaultsrc` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x4034c8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x4034c8-0x40350c (68 bytes).
  It occupies 68 bytes.
  The `bgezall` at 0x4034f0 calls get_default_uncompressed [0x40261c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x403504 has v0 = ret(get_default_uncompressed).

- `e_defaultdst` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x40350c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x40350c-0x403550 (68 bytes).
  It occupies 68 bytes.
  The `bgezall` at 0x403534 calls get_default_compressed [0x4026f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x403548 has v0 = ret(get_default_compressed).

- `e_defaultcvt` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x403550 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x403550-0x403634 (228 bytes).
  It occupies 228 bytes.
  The `jalr` at 0x403580 calls dmParamsSetFloat with a0=a0 at entry (arg0), a1=0x40c340, a2=0x15380, a3=a3 at entry (arg3); fp f14=0x3feccccccccccccd.
  The `jalr` at 0x4035b8 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x40c2e0, a2=0x1, a3=?.
  The `jalr` at 0x4035f0 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x40c360, a2=0x0, a3=?.
  The `beq` branch at 0x40358c targets 0x4035a4, is taken when v0(=ret(dmParamsSetFloat)) == 0, and falls through when v0(=ret(dmParamsSetFloat)) != 0.
  The `beq` branch at 0x40359c targets 0x40361c and is always taken.
  The `beq` branch at 0x4035c4 targets 0x4035dc, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x4035d4 targets 0x40361c and is always taken.
  The `beq` branch at 0x4035fc targets 0x403614, is taken when v0(=ret(dmParamsSetInt)) == 0, and falls through when v0(=ret(dmParamsSetInt)) != 0.
  The `beq` branch at 0x40360c targets 0x40361c and is always taken.
  The return at 0x40362c has v0 = one of -0x1, 0x0.

- `_e_go` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x403634 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x403634-0x403d64 (1840 bytes).
  It occupies 1840 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x403650, `lw` at 0x403cf4.
  The `lw` at 0x40365c loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x403668 loads 4 bytes from a0 (arg0 at entry) +0xc.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x10c, including `sw` at 0x403780, `sw` at 0x4037d8.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x4037c4, `lbu` at 0x4037f8.
  The `sw` at 0x403820 stores 4 bytes to a0 (arg0 at entry) +0xa4.
  The `sw` at 0x403844 stores 4 bytes to a0 (arg0 at entry) +0xa8.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x60, including `sw` at 0x403890, `sw` at 0x4038b4, `sw` at 0x4038c8.
  The `lw` at 0x403af8 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x403b08 loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lw` at 0x403b18 loads 4 bytes from a0 (arg0 at entry) +0x54.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x30, including `sw` at 0x403b5c, `sw` at 0x403b70.
  The `lw` at 0x403b64 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `sw` at 0x403b7c stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0x403b88 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa4, including `lw` at 0x403b94, `lw` at 0x403bd4, `lw` at 0x403c04.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa8, including `lw` at 0x403b9c, `lw` at 0x403c28, `lw` at 0x403c90.
  The `sw` at 0x403bbc stores 4 bytes to a0 (arg0 at entry) +0xac.
  The `sw` at 0x403bcc stores 4 bytes to a0 (arg0 at entry) +0x84.
  The `sw` at 0x403bec stores 4 bytes to a0 (arg0 at entry) +0x88.
  The `sw` at 0x403bfc stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `sw` at 0x403c20 stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `sw` at 0x403c48 stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `sw` at 0x403c58 stores 4 bytes to a0 (arg0 at entry) +0x80.
  The `lw` at 0x403c60 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `sw` at 0x403c6c stores 4 bytes to a0 (arg0 at entry) +0x8c.
  The `sw` at 0x403c7c stores 4 bytes to a0 (arg0 at entry) +0x90.
  The `sw` at 0x403c88 stores 4 bytes to a0 (arg0 at entry) +0x118.
  The `sw` at 0x403cec stores 4 bytes to a0 (arg0 at entry) +0x94.
  The `jalr` at 0x403688 calls dmParamsIsPresent with a0=[a0+12], a1=0x40c340, a2=[a0+12], a3=[a0+8], a4=[a0], a5=a0+32.
  The `jalr` at 0x4036ac calls dmParamsGetFloat with a0=[a0+12], a1=0x40c340, a2=?, a3=?.
  The `jalr` at 0x4036c8 calls dmParamsIsPresent with a0=[a0+12], a1=0x40c360, a2=?, a3=?.
  The `jalr` at 0x4036ec calls dmParamsGetInt with a0=[a0+12], a1=0x40c360, a2=?, a3=?.
  The `jalr` at 0x403710 calls dmParamsIsPresent with a0=[a0+8], a1=0x40c378, a2=?, a3=?.
  The `jalr` at 0x403734 calls dmParamsIsPresent with a0=[a0+8], a1=0x40c0d8, a2=?, a3=?.
  The `jalr` at 0x403760 calls dmSetError with a0=0x1773, a1=0x40c068, a2=0x40c3f0, a3=?.
  The `jalr` at 0x403810 calls dmParamsGetInt with a0=[a0+8], a1=0x40c018, a2=?, a3=?.
  The `jalr` at 0x403834 calls dmParamsGetInt with a0=[a0+8], a1=0x40c028, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x403858 calls dmParamsGetEnum with a0=[a0+8], a1=0x40c038, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x403878 calls dmParamsIsPresent with a0=[a0+12], a1=0x40c440, a2=?, a3=?.
  The `jalr` at 0x4039ac calls __assert with a0=0x40c458, a1=0x40c0a0, a2=0x2c9, a3=?.
  The `jalr` at 0x4039cc calls dmSetError with a0=0x1777, a1=0x40c068, a2=0x40c468, a3=?.
  The `jalr` at 0x403a00 calls vice_file with a0=0x40c478, a1=?, a2=?, a3=ret(dmParamsGetEnum), a4=0x3ed.
  The `jalr` at 0x403a20 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=0x0.
  The `jalr` at 0x403a34 calls vice_file with a0=0x40c488, a1=?, a2=?, a3=?.
  The `jalr` at 0x403a50 calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=?.
  The `jalr` at 0x403a6c calls vice_file with a0=0x40c498, a1=?, a2=?, a3=ret(dmParamsGetEnum), a4=0x3ed.
  The `jalr` at 0x403a8c calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=0x0.
  The `jalr` at 0x403aa0 calls vice_file with a0=0x40c4a8, a1=?, a2=?, a3=?.
  The `jalr` at 0x403abc calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=?.
  The `jalr` at 0x403ad0 calls vice_file with a0=0x40c4b8, a1=?, a2=?, a3=?.
  The `jalr` at 0x403aec calls vice_load_bsp_table with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=?.
  The `jalr` at 0x403b3c calls dmSetError with a0=0x1777, a1=0x40c068, a2=0x40c4c8, a3=?.
  The `jalr` at 0x403d04 calls vice_event_start with a0=[a0], a1=a0+32, a2=a0+148, a3=[a0+168], a4=0xf3, a5=a0 at entry (arg0), a7=a0+144.
  The `jalr` at 0x403d30 calls dmSetError with a0=0x1777, a1=0x40c068, a2=0x40c4e8, a3=?.
  The `beq` branch at 0x403694 targets 0x4036b8, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x4036d4 targets 0x4037d4, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `blez` branch at 0x4036f8 targets 0x4037d4, is taken when v0(=ret(dmParamsGetInt)) <= 0 (signed), and falls through when v0(=ret(dmParamsGetInt)) > 0 (signed).
  The `beq` branch at 0x40371c targets 0x403748, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `bne` branch at 0x403740 targets 0x403778, is taken when v0(=ret(dmParamsIsPresent)) != 0, and falls through when v0(=ret(dmParamsIsPresent)) == 0.
  The `beq` branch at 0x403770 targets 0x403d50 and is always taken.
  The `bc1f` branch at 0x403798 targets 0x4037a8, is taken when not (f1 == f2 (c.eq.d at 0x403790)), and falls through when f1 == f2 (c.eq.d at 0x403790).
  The `beq` branch at 0x4037cc targets 0x403800 and is always taken.
  The `beq` branch at 0x403884 targets 0x40389c, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x403894 targets 0x4038cc and is always taken.
  The `bne` branch at 0x4038a4 targets 0x4038c0, is taken when a3(=ret(dmParamsGetEnum)) != a4(=0x3ed), and falls through when a3(=ret(dmParamsGetEnum)) == a4(=0x3ed).
  The `beq` branch at 0x4038b8 targets 0x4038cc and is always taken.
  The `beq` branch at 0x4038d8 targets 0x403938, is taken when t1(=ret(dmParamsGetEnum)) == t2(=0x3ed), and falls through when t1(=ret(dmParamsGetEnum)) != t2(=0x3ed).
  The `beq` branch at 0x4038e8 targets 0x40394c, is taken when t3(=ret(dmParamsGetEnum)) == t8(=0x3f0), and falls through when t3(=ret(dmParamsGetEnum)) != t8(=0x3f0).
  The `beq` branch at 0x4038f8 targets 0x403964, is taken when t9(=ret(dmParamsGetEnum)) == ra(=0x3e9), and falls through when t9(=ret(dmParamsGetEnum)) != ra(=0x3e9).
  The `beq` branch at 0x403908 targets 0x403964, is taken when at(=ret(dmParamsGetEnum)) == v0(=0x3ea), and falls through when at(=ret(dmParamsGetEnum)) != v0(=0x3ea).
  The `beq` branch at 0x403918 targets 0x40397c, is taken when v1(=ret(dmParamsGetEnum)) == a0(=0x7d1), and falls through when v1(=ret(dmParamsGetEnum)) != a0(=0x7d1).
  The `beq` branch at 0x403928 targets 0x40397c, is taken when a1(=ret(dmParamsGetEnum)) == a2(=0x7d2), and falls through when a1(=ret(dmParamsGetEnum)) != a2(=0x7d2).
  The `beq` branch at 0x403930 targets 0x403994 and is always taken.
  The `beq` branch at 0x403944 targets 0x4039e4 and is always taken.
  The `beq` branch at 0x40395c targets 0x4039e4 and is always taken.
  The `beq` branch at 0x403974 targets 0x4039e4 and is always taken.
  The `beq` branch at 0x40398c targets 0x4039e4 and is always taken.
  The `beq` branch at 0x4039dc targets 0x403d50 and is always taken.
  The `bne` branch at 0x4039ec targets 0x403a60, is taken when a3(=ret(dmParamsGetEnum)) != a4(=0x3ed), and falls through when a3(=ret(dmParamsGetEnum)) == a4(=0x3ed).
  The `beq` branch at 0x403a58 targets 0x403ac4 and is always taken.
  The `beq` branch at 0x403afc targets 0x403b24, is taken when a1(=[a0+68]) == 0, and falls through when a1(=[a0+68]) != 0.
  The `beq` branch at 0x403b0c targets 0x403b24, is taken when a2(=[a0+80]) == 0, and falls through when a2(=[a0+80]) != 0.
  The `bne` branch at 0x403b1c targets 0x403b54, is taken when a3(=[a0+84]) != 0, and falls through when a3(=[a0+84]) == 0.
  The `beq` branch at 0x403b4c targets 0x403d50 and is always taken.
  The `bne` branch at 0x403c98 targets 0x403cb0, is taken when a3(=[a0+168]) != a4(=0xf3), and falls through when a3(=[a0+168]) == a4(=0xf3).
  The `beq` branch at 0x403ca8 targets 0x403ce0 and is always taken.
  The `bne` branch at 0x403cbc targets 0x403cd4, is taken when v1(=[a0+168]) != a0(=0x1e6), and falls through when v1(=[a0+168]) == a0(=0x1e6).
  The `beq` branch at 0x403ccc targets 0x403cd8 and is always taken.
  The `beq` branch at 0x403d10 targets 0x403d48, is taken when v0(=ret(vice_event_start)) == 0, and falls through when v0(=ret(vice_event_start)) != 0.
  The `beq` branch at 0x403d40 targets 0x403d50 and is always taken.
  The return at 0x403d5c has v0 = one of -0x1, 0x0.

- `dmImageCompressedSize` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x403d64 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x403d64-0x403ef4 (400 bytes).
  It occupies 400 bytes.
  The `jalr` at 0x403d84 calls dmParamsIsPresent with a0=a1 at entry (arg1), a1=0x40c360, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403da8 calls dmParamsGetInt with a0=a1 at entry (arg1), a1=0x40c360, a2=?, a3=?.
  The `jalr` at 0x403df4 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x40c378, a2=?, a3=?.
  The `jalr` at 0x403e18 calls dmParamsGetFloat with a0=a0 at entry (arg0), a1=0x40c378, a2=?, a3=?.
  The `jalr` at 0x403e4c calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x40c0d8, a2=?, a3=?.
  The `jalr` at 0x403e70 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x40c0d8, a2=?, a3=?.
  The `beq` branch at 0x403d90 targets 0x403dd8, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x403dd0 targets 0x403de4 and is always taken.
  The `beq` branch at 0x403ddc targets 0x403ee0 and is always taken.
  The `beq` branch at 0x403e00 targets 0x403e30, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x403e28 targets 0x403e3c and is always taken.
  The `beq` branch at 0x403e34 targets 0x403ee0 and is always taken.
  The `beq` branch at 0x403e58 targets 0x403e9c, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x403e7c targets 0x403e94, is taken when v0(=ret(dmParamsGetEnum)) == 0, and falls through when v0(=ret(dmParamsGetEnum)) != 0.
  The `beq` branch at 0x403e94 targets 0x403ea8 and is always taken.
  The `beq` branch at 0x403ea0 targets 0x403ee0 and is always taken.
  The return at 0x403eec has v0 = one of 0x0, ?.

- `e_send` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x403ef4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x403ef4-0x4047e4 (2288 bytes).
  It occupies 2288 bytes.
  The `lw` at 0x403f40 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x403f4c loads 4 bytes from a0 (arg0 at entry) +0x4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x404080, `lw` at 0x404124.
  The `sw` at 0x404140 stores 4 bytes to a0 (arg0 at entry) +0x110.
  The `sw` at 0x404164 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `lw` at 0x404180 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `lw` at 0x4041c4 loads 4 bytes from a0 (arg0 at entry) +0x18.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x4041ec, `lw` at 0x404214, `lw` at 0x404224.
  The `lw` at 0x4041fc loads 4 bytes from a0 (arg0 at entry) +0x14.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14, including `sw` at 0x404308, `sw` at 0x404344.
  The `lw` at 0x404320 loads 4 bytes from a0 (arg0 at entry) +0x11c.
  The `sw` at 0x404338 stores 4 bytes to a0 (arg0 at entry) +0x1c.
  The `lw` at 0x4044ac loads 4 bytes from a0 (arg0 at entry) +0x10c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x114, including `lw` at 0x4044bc, `lw` at 0x4044e4.
  The `lw` at 0x4044c4 loads 4 bytes from a0 (arg0 at entry) +0x110.
  The `lw` at 0x404504 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x4045c8 stores 4 bytes to a0 (arg0 at entry) +0x90.
  The `lw` at 0x4045d4 loads 4 bytes from a0 (arg0 at entry) +0x90.
  The `sw` at 0x4045dc stores 4 bytes to a0 (arg0 at entry) +0x118.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x4045e4, `lw` at 0x404650.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1c, including `lw` at 0x4046c8, `lw` at 0x4046f0, `lw` at 0x404720.
  The `lw` at 0x4046e4 loads 4 bytes from ?.
  The `sw` at 0x40473c stores 4 bytes to ?.
  The `jalr` at 0x403f70 calls dmParamsCopyAllElems with a0=a4 at entry (arg4), a1=[a0+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=0x149dc.
  The `jalr` at 0x403fac calls dmParamsCopyAllElems with a0=a5 at entry (arg5), a1=?, a2=?, a3=?.
  The `jalr` at 0x403fe0 calls dmParamsGetEnum with a0=?, a1=0x40c038, a2=?, a3=?.
  The `jalr` at 0x40402c calls dmParamsSetEnum with a0=?, a1=0x40c038, a2=?, a3=0x3f0.
  The `jalr` at 0x404048 calls dmParamsSetEnum with a0=?, a1=0x40c050, a2=0x44c, a3=?.
  The `jalr` at 0x404088 calls dmParamsCopyAllElems with a0=a6 at entry (arg6), a1=[a0+12], a2=?, a3=a6 at entry (arg6).
  The `bgezall` at 0x4040e8 calls _e_go [0x403634] with a0=a0 at entry (arg0), a1=?, a2=?, a3=a4 at entry (arg4), a6=a5 at entry (arg5).
  The `bgezall` at 0x404130 calls dmImageCompressedSize [0x403d64] with a0=?, a1=[a0+12], a2=?, a3=?.
  The `bgezall` at 0x404154 calls needsConvert [0x401e88] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404170 calls dmBufferGetSize with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x4041a8 calls dmSetError with a0=0x1777, a1=0x40c068, a2=0x40c510, a3=?.
  The `jalr` at 0x4041d8 calls dmImageFrameSize with a0=?, a1=?, a2=?, a3=[a0+24].
  The `jalr` at 0x40422c calls dmBufferDestroyPool with a0=[a0+16], a1=?, a2=?, a3=?, a4=[a0+16], a6=[a0+16].
  The `jalr` at 0x40423c calls dmParamsCreate with a0=sp-272, a1=?, a2=?, a3=?.
  The `jalr` at 0x404278 calls dmBufferSetPoolDefaults with a0=?, a1=0x1, a2=?, a3=0x0, a4=0x1.
  The `bgezall` at 0x4042ac calls _poolneeds [0x401bec] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x4042c4 calls dmBufferCreatePool with a0=?, a1=a0+16, a2=?, a3=?.
  The `jalr` at 0x4042f8 calls dmParamsGetInt with a0=?, a1=0x40c520, a2=?, a3=?.
  The `jalr` at 0x404314 calls dmParamsDestroy with a0=?, a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x404328 calls dmICGetDstQueueFD with a0=[a0+284], a1=?, a2=?, a3=?.
  The `jalr` at 0x404358 calls dmBufferAllocate with a0=[a0+16], a1=sp-296, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x404384 calls dmBufferMapData with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x404398 calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4043bc calls dmICAnyToAny with a0=?, a1=ret(dmBufferMapData), a2=?, a3=?, a4=0x0.
  The `jalr` at 0x4043e8 calls dmBufferSetSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404414 calls dmBufferGetImageType with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x40442c calls dmBufferSetImageType with a0=?, a1=ret(dmBufferGetImageType), a2=?, a3=?.
  The `jalr` at 0x404458 calls dmBufferGetUSTMSCpair with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x40447c calls dmBufferSetUSTMSCpair with a0=?, a1=ret(dmBufferGetUSTMSCpair), a2=?, a3=?.
  The `jalr` at 0x404604 calls vice_dmbuf_send with a0=[a0], a1=?, a2=a0+184, a3=a0+104, a4=0xc, a5=[a0+268].
  The `jalr` at 0x404634 calls dmSetError with a0=0x1777, a1=0x40c068, a2=0x40c530, a3=?.
  The `jalr` at 0x404658 calls vice_dms_geterrs with a0=[a0], a1=-0x1, a2=?, a3=?.
  The `jalr` at 0x404684 calls dmSetError with a0=0x1777, a1=0x40c068, a2=0x40c548, a3=?.
  The `jalr` at 0x4046b8 calls memset with a0=sp-240, a1=0x0, a2=0x80, a3=?.
  The `jalr` at 0x404760 calls select with a0=[a0+28]+1, a1=sp-240, a2=0x0, a3=0x0, a4=0x0.
  The `jalr` at 0x404794 calls dmSetError with a0=0x1777, a1=0x40c068, a2=0x40c558, a3=?, a4=ret(select).
  The `jalr` at 0x4047b8 calls dmBufferFree with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x403f5c targets 0x403f94, is taken when at(=a4) == 0, and falls through when at(=a4) != 0.
  The `beq` branch at 0x403f7c targets 0x403f94, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x403f8c targets 0x4047cc and is always taken.
  The `beq` branch at 0x403f98 targets 0x40406c, is taken when t1(=a5) == 0, and falls through when t1(=a5) != 0.
  The `beq` branch at 0x403fb8 targets 0x403fd0, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x403fc8 targets 0x4047cc and is always taken.
  The `beq` branch at 0x403ff8 targets 0x404018, is taken when a2(=ret(dmParamsGetEnum)) == a3(=0x3f0), and falls through when a2(=ret(dmParamsGetEnum)) != a3(=0x3f0).
  The `beq` branch at 0x404008 targets 0x404018, is taken when a4(=ret(dmParamsGetEnum)) == a5(=0x3ed), and falls through when a4(=ret(dmParamsGetEnum)) != a5(=0x3ed).
  The `beq` branch at 0x404054 targets 0x40406c, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x404064 targets 0x4047cc and is always taken.
  The `beq` branch at 0x404070 targets 0x4040ac, is taken when a3(=a6) == 0, and falls through when a3(=a6) != 0.
  The `beq` branch at 0x404094 targets 0x4040ac, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x4040a4 targets 0x4047cc and is always taken.
  The `bne` branch at 0x4040b0 targets 0x4040d0, is taken when a3(=a4) != 0, and falls through when a3(=a4) == 0.
  The `bne` branch at 0x4040bc targets 0x4040d0, is taken when a4(=a5) != 0, and falls through when a4(=a5) == 0.
  The `beq` branch at 0x4040c8 targets 0x404168, is taken when a5(=a6) == 0, and falls through when a5(=a6) != 0.
  The `beq` branch at 0x4040d4 targets 0x404144, is taken when a6(=a5) == 0, and falls through when a6(=a5) != 0.
  The `bne` branch at 0x4040f8 targets 0x404110, is taken when v0(=ret(_e_go)) != ra(=-0x1), and falls through when v0(=ret(_e_go)) == ra(=-0x1).
  The `beq` branch at 0x404108 targets 0x4047cc and is always taken.
  The `beq` branch at 0x404114 targets 0x404144, is taken when v0(=a6) == 0, and falls through when v0(=a6) != 0.
  The `beq` branch at 0x404188 targets 0x4041c0, is taken when v0(=ret(dmBufferGetSize)) >= at(=[a0+172]) (signed), and falls through when v0(=ret(dmBufferGetSize)) < at(=[a0+172]) (signed).
  The `beq` branch at 0x4041b8 targets 0x4047cc and is always taken.
  The `beq` branch at 0x4041c8 targets 0x4044a8, is taken when a3(=[a0+24]) == 0, and falls through when a3(=[a0+24]) != 0.
  The `beq` branch at 0x4041f0 targets 0x404210, is taken when a4(=[a0+16]) == 0, and falls through when a4(=[a0+16]) != 0.
  The `beq` branch at 0x404208 targets 0x40433c, is taken when a5(=[a0+20]) >= a6(=ret(dmImageFrameSize)) (signed), and falls through when a5(=[a0+20]) < a6(=ret(dmImageFrameSize)) (signed).
  The `beq` branch at 0x404218 targets 0x404234, is taken when a6(=[a0+16]) == 0, and falls through when a6(=[a0+16]) != 0.
  The `beq` branch at 0x404248 targets 0x404260, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x404258 targets 0x4047cc and is always taken.
  The `beq` branch at 0x404284 targets 0x40429c, is taken when v0(=ret(dmBufferSetPoolDefaults)) == 0, and falls through when v0(=ret(dmBufferSetPoolDefaults)) != 0.
  The `beq` branch at 0x404294 targets 0x4047cc and is always taken.
  The `beq` branch at 0x4042d0 targets 0x4042e8, is taken when v0(=ret(dmBufferCreatePool)) == 0, and falls through when v0(=ret(dmBufferCreatePool)) != 0.
  The `beq` branch at 0x4042e0 targets 0x4047cc and is always taken.
  The `beq` branch at 0x404364 targets 0x40437c, is taken when v0(=ret(dmBufferAllocate)) == 0, and falls through when v0(=ret(dmBufferAllocate)) != 0.
  The `beq` branch at 0x404374 targets 0x4047cc and is always taken.
  The `beq` branch at 0x4043c4 targets 0x4043dc, is taken when v0(=ret(dmICAnyToAny)) == 0, and falls through when v0(=ret(dmICAnyToAny)) != 0.
  The `beq` branch at 0x4043d4 targets 0x4047cc and is always taken.
  The `beq` branch at 0x4043f4 targets 0x40440c, is taken when v0(=ret(dmBufferSetSize)) == 0, and falls through when v0(=ret(dmBufferSetSize)) != 0.
  The `beq` branch at 0x404404 targets 0x4047cc and is always taken.
  The `beq` branch at 0x404438 targets 0x404450, is taken when v0(=ret(dmBufferSetImageType)) == 0, and falls through when v0(=ret(dmBufferSetImageType)) != 0.
  The `beq` branch at 0x404448 targets 0x4047cc and is always taken.
  The `beq` branch at 0x404488 targets 0x4044a0, is taken when v0(=ret(dmBufferSetUSTMSCpair)) == 0, and falls through when v0(=ret(dmBufferSetUSTMSCpair)) != 0.
  The `beq` branch at 0x404498 targets 0x4047cc and is always taken.
  The `beq` branch at 0x4044b0 targets 0x4045e0, is taken when a5(=[a0+268]) == 0, and falls through when a5(=[a0+268]) != 0.
  The `bc1f` branch at 0x404520 targets 0x404570, is taken when not (f0 < f1 (c.lt.s at 0x404518)), and falls through when f0 < f1 (c.lt.s at 0x404518).
  The `bc1f` branch at 0x40453c targets 0x404568, is taken when not (f3(=0x4024000000000000) < f4 (c.lt.d at 0x404534)), and falls through when f3(=0x4024000000000000) < f4 (c.lt.d at 0x404534).
  The `bne` branch at 0x404558 targets 0x404568, is taken when t1(=[a0+280]+4) < 0x1b (signed), and falls through when t1(=[a0+280]+4) >= 0x1b (signed).
  The `beq` branch at 0x404568 targets 0x4045bc and is always taken.
  The `bc1f` branch at 0x404598 targets 0x4045bc, is taken when not (f5(=0x4024000000000000) < f6 (c.lt.d at 0x404590)), and falls through when f5(=0x4024000000000000) < f6 (c.lt.d at 0x404590).
  The `bgez` branch at 0x4045b0 targets 0x4045bc, is taken when t8(=[a0+280]-1) >= 0 (signed), and falls through when t8(=[a0+280]-1) < 0 (signed).
  The `bne` branch at 0x404614 targets 0x40464c, is taken when v0(=ret(vice_dmbuf_send)) != a1(=-0x1), and falls through when v0(=ret(vice_dmbuf_send)) == a1(=-0x1).
  The `beq` branch at 0x404644 targets 0x4047a4 and is always taken.
  The `beq` branch at 0x404664 targets 0x40469c, is taken when v0(=ret(vice_dms_geterrs)) == 0, and falls through when v0(=ret(vice_dms_geterrs)) != 0.
  The `beq` branch at 0x404694 targets 0x4047a4 and is always taken.
  The `beq` branch at 0x4046a0 targets 0x4047a4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bgtz` branch at 0x404774 targets 0x4047a4, is taken when a4(=ret(select)) > 0 (signed), and falls through when a4(=ret(select)) <= 0 (signed).
  The `beq` branch at 0x4047a8 targets 0x4047c0, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The return at 0x4047dc has v0 = one of -0x1, ?.

- `e_recv` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x4047e4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x4047e4-0x404cb0 (1228 bytes).
  It occupies 1228 bytes.
  The `lw` at 0x40481c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x404828 loads 4 bytes from a0 (arg0 at entry) +0x98.
  17 such `lw` accesses load 4 bytes from ?, including `lw` at 0x404894, `lw` at 0x4048dc, `lw` at 0x4048f0.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb4, including `lw` at 0x404934, `lw` at 0x4049fc, `lw` at 0x404ad8.
  The `lw` at 0x4049a0 loads 4 bytes from a0 (arg0 at entry) +0x60.
  5 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x4049b0, `lw` at 0x4049d4, `lw` at 0x404b38.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa4, including `lw` at 0x404a6c, `lw` at 0x404b64.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa8, including `lw` at 0x404a74, `lw` at 0x404b6c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x108, including `lw` at 0x404a7c, `lw` at 0x404b74.
  2 such `lw` accesses load 4 bytes from sym(_viceid) +0x0, including `lw` at 0x404aa4, `lw` at 0x404b9c.
  The `lw` at 0x404c50 loads 4 bytes from a0 (arg0 at entry) +0x10c.
  The `sw` at 0x404c6c stores 4 bytes to a0 (arg0 at entry) +0x114.
  The `jalr` at 0x40483c calls vice_dmbuf_recv with a0=[a0], a1=sp-108, a2=[a0+152], a3=a0+224, a4=a1 at entry (arg1), a5=0x140ec.
  The `jalr` at 0x404874 calls dmSetError with a0=0x1776, a1=0x40c578, a2=0x40c588, a3=?, a6=ret(vice_dmbuf_recv), a7=-0x1.
  The `jalr` at 0x4048bc calls dmSetError with a0=0x1777, a1=0x40c068, a2=0x40c5a0, a3=?, a4=0xe000, a6=ret(vice_dmbuf_recv), a7=-0x1.
  The `jalr` at 0x404964 calls printf with a0=0x40c5b0, a1=?, a2=?, a3=?.
  The `jalr` at 0x404984 calls dmSetError with a0=0x1777, a1=0x40c068, a2=0x40c5d8, a3=?.
  The `jalr` at 0x4049c0 calls dmBufferSetSize with a0=[a1], a1=?, a2=?, a3=[a0+96].
  The `jalr` at 0x4049dc calls dmBufferMapData with a0=[a1], a1=?, a2=?, a3=[a0+96].
  The `jalr` at 0x404a14 calls printf with a0=0x40c5f8, a1=ret(dmBufferMapData), a2=[a0+180], a3=?.
  The `jalr` at 0x404a30 calls dmSetError with a0=0x1777, a1=0x40c068, a2=0x410a88, a3=?.
  The `jalr` at 0x404aac calls jhead_luma_make with a0=ret(dmBufferMapData), a1=[a0+164], a2=[a0+168], a3=?, a5=[sym(_viceid)].
  The `jalr` at 0x404b00 calls printf with a0=0x40c610, a1=?, a2=0x198, a3=0x198, a4=[a0+180].
  The `jalr` at 0x404b1c calls dmSetError with a0=0x1777, a1=0x40c068, a2=0x410a90, a3=?.
  The `jalr` at 0x404b4c calls dmBufferSetSize with a0=[a1], a1=?, a2=?, a3=0x198.
  The `jalr` at 0x404ba4 calls jhead_make with a0=ret(dmBufferMapData), a1=[a0+164], a2=[a0+168], a3=?, a5=[sym(_viceid)].
  The `jalr` at 0x404bf8 calls printf with a0=0x40c610, a1=?, a2=0x2c0, a3=0x2c0, a4=[a0+180].
  The `jalr` at 0x404c14 calls dmSetError with a0=0x1777, a1=0x40c068, a2=0x410a90, a3=?.
  The `jalr` at 0x404c44 calls dmBufferSetSize with a0=[a1], a1=?, a2=?, a3=0x2c0.
  The `jalr` at 0x404c80 calls dmBufferSetImageType with a0=[a1], a1=0x1, a2=?, a3=?.
  The `bne` branch at 0x404854 targets 0x40488c, is taken when a6(=ret(vice_dmbuf_recv)) != a7(=-0x1), and falls through when a6(=ret(vice_dmbuf_recv)) == a7(=-0x1).
  The `beq` branch at 0x404884 targets 0x404c98 and is always taken.
  The `bne` branch at 0x40489c targets 0x4048d4, is taken when a3(?) != a4(=0xe000), and falls through when a3(?) == a4(=0xe000).
  The `beq` branch at 0x4048cc targets 0x404c98 and is always taken.
  The `bltz` branch at 0x4048e0 targets 0x404930, is taken when a3(?) < 0 (signed), and falls through when a3(?) >= 0 (signed).
  The `beq` branch at 0x4048f8 targets 0x404930, is taken when a4(?) >= 0x1e (signed), and falls through when a4(?) < 0x1e (signed).
  The `bltz` branch at 0x40490c targets 0x404930, is taken when a5(?) < 0 (signed), and falls through when a5(?) >= 0 (signed).
  The `beq` branch at 0x404928 targets 0x40499c, is taken when a6(=0x3e0000) >= a7(?) (signed), and falls through when a6(=0x3e0000) < a7(?) (signed).
  The `beq` branch at 0x404938 targets 0x40496c, is taken when t0(=[a0+180]) == 0, and falls through when t0(=[a0+180]) != 0.
  The `beq` branch at 0x404994 targets 0x404c98 and is always taken.
  The `bne` branch at 0x4049a4 targets 0x4049d0, is taken when a3(=[a0+96]) != 0, and falls through when a3(=[a0+96]) == 0.
  The `beq` branch at 0x4049c8 targets 0x404c4c and is always taken.
  The `bne` branch at 0x4049f0 targets 0x404a48, is taken when a1(=ret(dmBufferMapData)) != 0, and falls through when a1(=ret(dmBufferMapData)) == 0.
  The `beq` branch at 0x404a00 targets 0x404a1c, is taken when a2(=[a0+180]) == 0, and falls through when a2(=[a0+180]) != 0.
  The `beq` branch at 0x404a40 targets 0x404c98 and is always taken.
  The `bne` branch at 0x404a5c targets 0x404b5c, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x404acc targets 0x404b34, is taken when a2(?) == a3(=0x198), and falls through when a2(?) != a3(=0x198).
  The `beq` branch at 0x404adc targets 0x404b08, is taken when a4(=[a0+180]) == 0, and falls through when a4(=[a0+180]) != 0.
  The `beq` branch at 0x404b2c targets 0x404c98 and is always taken.
  The `beq` branch at 0x404b54 targets 0x404c4c and is always taken.
  The `beq` branch at 0x404bc4 targets 0x404c2c, is taken when a2(?) == a3(=0x2c0), and falls through when a2(?) != a3(=0x2c0).
  The `beq` branch at 0x404bd4 targets 0x404c00, is taken when a4(=[a0+180]) == 0, and falls through when a4(=[a0+180]) != 0.
  The `beq` branch at 0x404c24 targets 0x404c98 and is always taken.
  The `beq` branch at 0x404c54 targets 0x404c70, is taken when a1(=[a0+268]) == 0, and falls through when a1(=[a0+268]) != 0.
  The return at 0x404ca8 has v0 = one of ?, -0x1, ret(dmBufferSetImageType).

- `d_open` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x404cb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x404cb0-0x404f80 (720 bytes).
  It occupies 720 bytes.
  The `sw` at 0x404d9c stores 4 bytes to ret(calloc) +0x0.
  3 such `lw` accesses load 4 bytes from ret(calloc) +0x0, including `lw` at 0x404da8, `lw` at 0x404e6c, `lw` at 0x404eec.
  The `sw` at 0x404e9c stores 4 bytes to ret(calloc) +0xa0.
  The `lw` at 0x404ea4 loads 4 bytes from ret(calloc) +0xa0.
  The `sw` at 0x404f2c stores 4 bytes to ret(calloc) +0xac.
  The `lw` at 0x404f34 loads 4 bytes from ret(calloc) +0xac.
  The `sw` at 0x404f5c stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x404cd4 calls vice_get_lib_rev with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404d0c calls dmSetError with a0=0x1774, a1=0x40c068, a2=0x40c178, a3=0x6b7a.
  The `jalr` at 0x404d30 calls calloc with a0=0x1, a1=0x100, a2=?, a3=?.
  The `jalr` at 0x404d64 calls dmSetError with a0=0x1772, a1=0x40c068, a2=0x40c198, a3=ret(calloc).
  The `jalr` at 0x404d88 calls vice_open_and_setetc with a0=0x40c1d8, a1=?, a2=?, a3=ret(calloc).
  The `jalr` at 0x404dcc calls dmSetError with a0=0x1774, a1=0x40c068, a2=0x40c1e8, a3=ret(calloc).
  The `jalr` at 0x404ddc calls free with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `bgezall` at 0x404e04 calls init_formats [0x401c30] with a0=ret(calloc)+4, a1=[ret(calloc)], a2=ret(vice_open_and_setetc), a3=ret(calloc).
  The `jalr` at 0x404e30 calls dmSetError with a0=0x1774, a1=0x40c068, a2=0x40c1a8, a3=?.
  The `jalr` at 0x404e40 calls vice_close with a0=ret(vice_open_and_setetc), a1=?, a2=?, a3=?.
  The `jalr` at 0x404e50 calls free with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x404e8c calls vice_event_init with a0=[ret(calloc)], a1=ret(calloc)+176, a2=ret(calloc)+216, a3=0x40, a4=0x40.
  The `jalr` at 0x404ec8 calls dmSetError with a0=0x1774, a1=0x40c068, a2=0x40c640, a3=?.
  The `bgezall` at 0x404ee0 calls free_formats [0x401cfc] with a0=ret(calloc)+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x404ef4 calls vice_close with a0=[ret(calloc)], a1=?, a2=?, a3=?.
  The `jalr` at 0x404f04 calls free with a0=ret(calloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x404f18 calls getenv with a0=0x40c270, a1=?, a2=?, a3=?.
  The `jalr` at 0x404f4c calls printf with a0=0x40c660, a1=[ret(calloc)+172], a2=?, a3=ret(calloc).
  The `beq` branch at 0x404ce8 targets 0x404d24, is taken when v0(?) == v1(=0x6b7a), and falls through when v0(?) != v1(=0x6b7a).
  The `beq` branch at 0x404d1c targets 0x404f68 and is always taken.
  The `bne` branch at 0x404d44 targets 0x404d7c, is taken when a3(=ret(calloc)) != 0, and falls through when a3(=ret(calloc)) == 0.
  The `beq` branch at 0x404d74 targets 0x404f68 and is always taken.
  The `bgez` branch at 0x404dac targets 0x404df4, is taken when a1(=[ret(calloc)]) >= 0 (signed), and falls through when a1(=[ret(calloc)]) < 0 (signed).
  The `beq` branch at 0x404dec targets 0x404f68 and is always taken.
  The `beq` branch at 0x404e10 targets 0x404e68, is taken when v0(=ret(init_formats)) == 0, and falls through when v0(=ret(init_formats)) != 0.
  The `beq` branch at 0x404e60 targets 0x404f68 and is always taken.
  The `bgez` branch at 0x404ea8 targets 0x404f0c, is taken when a1(=[ret(calloc)+160]) >= 0 (signed), and falls through when a1(=[ret(calloc)+160]) < 0 (signed).
  The `beq` branch at 0x404f38 targets 0x404f54, is taken when a1(=[ret(calloc)+172]) == 0, and falls through when a1(=[ret(calloc)+172]) != 0.
  The return at 0x404f78 has v0 = one of -0x1, 0x0.

- `d_close` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x404f80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x404f80-0x40503c (188 bytes).
  It occupies 188 bytes.
  The `lw` at 0x404fa8 loads 4 bytes from a0 (arg0 at entry) +0xac.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x404fcc, `lw` at 0x404ff0.
  The `jalr` at 0x404fc0 calls printf with a0=0x40c680, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404fe4 calls vice_event_uninit with a0=[a0], a1=a0+176, a2=a0+216, a3=?.
  The `jalr` at 0x404ff8 calls vice_close with a0=[a0], a1=?, a2=?, a3=?.
  The `bgezall` at 0x405010 calls free_formats [0x401cfc] with a0=a0+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x405020 calls free with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x404fac targets 0x404fc8, is taken when at(=[a0+172]) == 0, and falls through when at(=[a0+172]) != 0.
  The return at 0x405034 has v0 = ret(free).

- `d_describe` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x40503c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x40503c-0x40511c (224 bytes).
  It occupies 224 bytes.
  The `jalr` at 0x405070 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x40c2c0, a2=0x6a706567, a3=a3 at entry (arg3).
  The `jalr` at 0x40508c calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x40c2d0, a2=0x410a68, a3=?.
  The `jalr` at 0x4050a8 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x40c2e0, a2=0x1, a3=?.
  The `jalr` at 0x4050c4 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x40c2f0, a2=0x2, a3=?.
  The `jalr` at 0x4050e0 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x40c308, a2=0x0, a3=?.
  The `jalr` at 0x4050fc calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x40c318, a2=0x1, a3=?.
  The return at 0x405114 has v0 = 0x0.

- `d_dstpoolis` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x40511c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x40511c-0x405190 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0x405148 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x405158 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0x405174 stores 4 bytes to a0 (arg0 at entry) +0x9c.
  The `jalr` at 0x405164 calls vice_dmbuf_outpool with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x40514c targets 0x40516c, is taken when at(=[a0+16]) != 0, and falls through when at(=[a0+16]) == 0.
  The return at 0x405188 has v0 = 0x0.

- `d_fd` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x405190 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x405190-0x4051b4 (36 bytes).
  It occupies 36 bytes.
  The `lw` at 0x4051a4 loads 4 bytes from a0 (arg0 at entry) +0xa0.
  The return at 0x4051ac has v0 = [a0+160].

- `d_getsrcfilled` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x4051b4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x4051b4-0x40522c (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x4051dc loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `jalr` at 0x4051e8 calls dmFifoNfilled with a0=[a0+176], a1=sp-44, a2=0x1371c, a3=a3 at entry (arg3).
  The `beq` branch at 0x4051f0 targets 0x405208, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The `beq` branch at 0x405200 targets 0x405214 and is always taken.
  The return at 0x405224 has v0 = one of -0x1, ?.

- `d_getdstfilled` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x40522c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x40522c-0x4052a4 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x405254 loads 4 bytes from a0 (arg0 at entry) +0xd8.
  The `jalr` at 0x405260 calls dmFifoNfilled with a0=[a0+216], a1=sp-44, a2=0x136a4, a3=a3 at entry (arg3).
  The `beq` branch at 0x405268 targets 0x405280, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The `beq` branch at 0x405278 targets 0x40528c and is always taken.
  The return at 0x40529c has v0 = one of -0x1, ?.

- `d_verifysrc` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x4052a4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x4052a4-0x4052ec (72 bytes).
  It occupies 72 bytes.
  The `bgezall` at 0x4052d0 calls verify_compressed [0x402410] with a0=a0 at entry (arg0), a1=0x410a70, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x4052e4 has v0 = ret(verify_compressed).

- `d_verifydst` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x4052ec (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x4052ec-0x405334 (72 bytes).
  It occupies 72 bytes.
  The `bgezall` at 0x405318 calls verify_uncompressed [0x402340] with a0=a0 at entry (arg0), a1=0x410a74, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x40532c has v0 = ret(verify_uncompressed).

- `d_verifycvt` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x405334 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x405334-0x40534c (24 bytes).
  It occupies 24 bytes.
  The return at 0x405344 has v0 = 0x0.

- `d_verifysrcdstcvt` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x40534c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x40534c-0x405444 (248 bytes).
  It occupies 248 bytes.
  The `bgezall` at 0x405388 calls d_verifysrc [0x4052a4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x4053c4 calls d_verifydst [0x4052ec] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `bgezall` at 0x405400 calls d_verifycvt [0x405334] with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `beq` branch at 0x405374 targets 0x4053ac, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x405394 targets 0x4053ac, is taken when v0(=ret(d_verifysrc)) == 0, and falls through when v0(=ret(d_verifysrc)) != 0.
  The `beq` branch at 0x4053a4 targets 0x40542c and is always taken.
  The `beq` branch at 0x4053b0 targets 0x4053e8, is taken when at(=a1) == 0, and falls through when at(=a1) != 0.
  The `beq` branch at 0x4053d0 targets 0x4053e8, is taken when v0(=ret(d_verifydst)) == 0, and falls through when v0(=ret(d_verifydst)) != 0.
  The `beq` branch at 0x4053e0 targets 0x40542c and is always taken.
  The `beq` branch at 0x4053ec targets 0x405424, is taken when at(=a2) == 0, and falls through when at(=a2) != 0.
  The `beq` branch at 0x40540c targets 0x405424, is taken when v0(=ret(d_verifycvt)) == 0, and falls through when v0(=ret(d_verifycvt)) != 0.
  The `beq` branch at 0x40541c targets 0x40542c and is always taken.
  The return at 0x40543c has v0 = one of -0x1, 0x0.

- `d_defaultsrc` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x405444 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x405444-0x405488 (68 bytes).
  It occupies 68 bytes.
  The `bgezall` at 0x40546c calls get_default_uncompressed [0x40261c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x405480 has v0 = ret(get_default_uncompressed).

- `d_defaultdst` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x405488 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x405488-0x4054cc (68 bytes).
  It occupies 68 bytes.
  The `bgezall` at 0x4054b0 calls get_default_uncompressed [0x40261c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x4054c4 has v0 = ret(get_default_uncompressed).

- `d_defaultcvt` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x4054cc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x4054cc-0x4054e4 (24 bytes).
  It occupies 24 bytes.
  The return at 0x4054dc has v0 = 0x0.

- `_d_go` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x4054e4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x4054e4-0x4059d4 (1264 bytes).
  It occupies 1264 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x405500, `lw` at 0x405964.
  The `lw` at 0x40550c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x405518 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0x405578 stores 4 bytes to a0 (arg0 at entry) +0xa4.
  The `lw` at 0x4057d8 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x4057e8 loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lw` at 0x4057f8 loads 4 bytes from a0 (arg0 at entry) +0x54.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x30, including `sw` at 0x40583c, `sw` at 0x405850.
  The `lw` at 0x405844 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `sw` at 0x40585c stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0x405868 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  The `sw` at 0x405870 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0x40588c stores 4 bytes to a0 (arg0 at entry) +0x88.
  The `sw` at 0x4058ac stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `sw` at 0x4058d0 stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `sw` at 0x4058e0 stores 4 bytes to a0 (arg0 at entry) +0x80.
  The `sw` at 0x4058f0 stores 4 bytes to a0 (arg0 at entry) +0x84.
  The `sw` at 0x405900 stores 4 bytes to a0 (arg0 at entry) +0x94.
  The `sw` at 0x40595c stores 4 bytes to a0 (arg0 at entry) +0x98.
  The `jalr` at 0x405530 calls dmParamsGetInt with a0=[a0+4], a1=0x40c018, a2=[a0+12], a3=[a0+4], a4=[a0], a5=a0+32.
  The `jalr` at 0x405550 calls dmParamsGetInt with a0=[a0+4], a1=0x40c028, a2=?, a3=?.
  The `jalr` at 0x405568 calls dmImageFrameSize with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0x40558c calls dmParamsGetEnum with a0=[a0+4], a1=0x40c038, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x4055fc calls vice_file with a0=0x40c6a0, a1=0x1, a2=?, a3=ret(dmParamsGetEnum), a4=0x3ed.
  The `jalr` at 0x40561c calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=0x0.
  The `jalr` at 0x405630 calls vice_file with a0=0x40c6b0, a1=?, a2=?, a3=?.
  The `jalr` at 0x40564c calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=?.
  The `jalr` at 0x405678 calls vice_file with a0=0x40c6c0, a1=0x2, a2=0x1, a3=ret(dmParamsGetEnum), a4=0x3ed, a5=ret(dmParamsGetEnum), a6=0x3f0.
  The `jalr` at 0x405698 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=0x0.
  The `jalr` at 0x4056ac calls vice_file with a0=0x40c6d0, a1=?, a2=?, a3=?.
  The `jalr` at 0x4056c8 calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=?.
  The `jalr` at 0x4056f4 calls vice_file with a0=0x40c6a0, a1=0x4, a2=0x4, a3=ret(dmParamsGetEnum), a4=0x3ed, a5=ret(dmParamsGetEnum), a6=0x3f0, a7=ret(dmParamsGetEnum).
  The `jalr` at 0x405714 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=0x0.
  The `jalr` at 0x405728 calls vice_file with a0=0x40c6b0, a1=?, a2=?, a3=?.
  The `jalr` at 0x405744 calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=?.
  The `jalr` at 0x40576c calls __assert with a0=0x40c458, a1=0x40c0a0, a2=0x539, a3=ret(dmParamsGetEnum), a4=0x3ed, a5=ret(dmParamsGetEnum), a6=0x3f0, a7=ret(dmParamsGetEnum).
  The `jalr` at 0x40578c calls dmSetError with a0=0x1778, a1=0x40c068, a2=0x40c468, a3=?.
  The `jalr` at 0x4057b0 calls vice_file with a0=0x40c6e0, a1=?, a2=?, a3=?.
  The `jalr` at 0x4057cc calls vice_load_bsp_table with a0=[a0], a1=ret(vice_file), a2=a0+32, a3=?.
  The `jalr` at 0x40581c calls dmSetError with a0=0x1778, a1=0x40c068, a2=0x40c4c8, a3=?.
  The `jalr` at 0x405974 calls vice_event_start with a0=[a0], a1=a0+32, a2=a0+152, a3=ret(dmParamsGetInt), a4=0xf3, a5=ret(dmParamsGetInt), a6=a0+148, a7=one of 0x0, 0x1, 0x4.
  The `jalr` at 0x4059a0 calls dmSetError with a0=0x1778, a1=0x40c068, a2=0x40c4e8, a3=?.
  The `beq` branch at 0x4055a4 targets 0x4055e4, is taken when a3(=ret(dmParamsGetEnum)) == a4(=0x3ed), and falls through when a3(=ret(dmParamsGetEnum)) != a4(=0x3ed).
  The `beq` branch at 0x4055b4 targets 0x40565c, is taken when a5(=ret(dmParamsGetEnum)) == a6(=0x3f0), and falls through when a5(=ret(dmParamsGetEnum)) != a6(=0x3f0).
  The `beq` branch at 0x4055c4 targets 0x4056d8, is taken when a7(=ret(dmParamsGetEnum)) == t0(=0x3e9), and falls through when a7(=ret(dmParamsGetEnum)) != t0(=0x3e9).
  The `beq` branch at 0x4055d4 targets 0x4056d8, is taken when t1(=ret(dmParamsGetEnum)) == t2(=0x3ea), and falls through when t1(=ret(dmParamsGetEnum)) != t2(=0x3ea).
  The `beq` branch at 0x4055dc targets 0x405754 and is always taken.
  The `beq` branch at 0x405654 targets 0x4057a4 and is always taken.
  The `beq` branch at 0x4056d0 targets 0x4057a4 and is always taken.
  The `beq` branch at 0x40574c targets 0x4057a4 and is always taken.
  The `beq` branch at 0x40579c targets 0x4059c0 and is always taken.
  The `beq` branch at 0x4057dc targets 0x405804, is taken when a1(=[a0+68]) == 0, and falls through when a1(=[a0+68]) != 0.
  The `beq` branch at 0x4057ec targets 0x405804, is taken when a2(=[a0+80]) == 0, and falls through when a2(=[a0+80]) != 0.
  The `bne` branch at 0x4057fc targets 0x405834, is taken when a3(=[a0+84]) != 0, and falls through when a3(=[a0+84]) == 0.
  The `beq` branch at 0x40582c targets 0x4059c0 and is always taken.
  The `bne` branch at 0x40590c targets 0x405924, is taken when a3(=ret(dmParamsGetInt)) != a4(=0xf3), and falls through when a3(=ret(dmParamsGetInt)) == a4(=0xf3).
  The `beq` branch at 0x40591c targets 0x405950 and is always taken.
  The `bne` branch at 0x40592c targets 0x405944, is taken when t1(=ret(dmParamsGetInt)) != t2(=0x1e6), and falls through when t1(=ret(dmParamsGetInt)) == t2(=0x1e6).
  The `beq` branch at 0x40593c targets 0x405948 and is always taken.
  The `beq` branch at 0x405980 targets 0x4059b8, is taken when v0(=ret(vice_event_start)) == 0, and falls through when v0(=ret(vice_event_start)) != 0.
  The `beq` branch at 0x4059b0 targets 0x4059c0 and is always taken.
  The return at 0x4059cc has v0 = one of -0x1, 0x0.

- `d_send` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x4059d4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x4059d4-0x4060bc (1768 bytes).
  It occupies 1768 bytes.
  The `lw` at 0x405a14 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x405a20 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x405b84 loads 4 bytes from a0 (arg0 at entry) +0xc.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0x405c4c, `sw` at 0x405e34.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x405c54, `lw` at 0x405c7c, `lw` at 0x405c8c.
  The `lw` at 0x405c64 loads 4 bytes from a0 (arg0 at entry) +0x14.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14, including `sw` at 0x405d70, `sw` at 0x405df4.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x405d88, `lw` at 0x405dfc, `lw` at 0x405fe4.
  The `sw` at 0x405dec stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `lw` at 0x405e04 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `sw` at 0x405e58 stores 4 bytes to a0 (arg0 at entry) +0x8c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8c, including `lw` at 0x405e94, `lw` at 0x405ec0, `lw` at 0x405ef8.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x405ed4, `lbu` at 0x405f0c, `lbu` at 0x405fa0.
  The `lw` at 0x405f60 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `jalr` at 0x405a40 calls dmParamsCopyAllElems with a0=a4 at entry (arg4), a1=[a0+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=0x12efc.
  The `jalr` at 0x405a78 calls dmParamsSetEnum with a0=[a0+4], a1=0x40c050, a2=0x44c, a3=?.
  The `jalr` at 0x405ab4 calls dmParamsCopyAllElems with a0=a5 at entry (arg5), a1=[a0+8], a2=?, a3=a5 at entry (arg5).
  The `jalr` at 0x405ae8 calls dmParamsIsPresent with a0=[a0+8], a1=0x40c038, a2=?, a3=?.
  The `jalr` at 0x405b0c calls dmParamsGetEnum with a0=[a0+8], a1=0x40c038, a2=?, a3=?.
  The `jalr` at 0x405b68 calls dmParamsSetEnum with a0=[a0+4], a1=0x40c038, a2=?, a3=?.
  The `jalr` at 0x405b8c calls dmParamsCopyAllElems with a0=a6 at entry (arg6), a1=[a0+12], a2=a6 at entry (arg6), a3=?.
  The `bgezall` at 0x405be0 calls _d_go [0x4054e4] with a0=a0 at entry (arg0), a1=?, a2=?, a3=a4 at entry (arg4).
  The `bgezall` at 0x405c18 calls needsConvert [0x401e88] with a0=[a0+4], a1=[a0+8], a2=?, a3=?.
  The `jalr` at 0x405c34 calls dmImageFrameSize with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0x405c94 calls dmBufferDestroyPool with a0=[a0+16], a1=?, a2=?, a3=?.
  The `jalr` at 0x405ca4 calls dmParamsCreate with a0=sp-124, a1=?, a2=?, a3=?.
  The `jalr` at 0x405ce0 calls dmBufferSetPoolDefaults with a0=?, a1=0x2, a2=ret(dmImageFrameSize), a3=0x0, a4=0x1.
  The `bgezall` at 0x405d14 calls _poolneeds [0x401bec] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x405d2c calls dmBufferCreatePool with a0=?, a1=a0+16, a2=?, a3=?.
  The `jalr` at 0x405d60 calls dmParamsGetInt with a0=?, a1=0x40c520, a2=?, a3=?.
  The `jalr` at 0x405d7c calls dmParamsDestroy with a0=?, a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x405d98 calls vice_dmbuf_outpool with a0=[a0], a1=[a0+16], a2=?, a3=?.
  The `jalr` at 0x405de0 calls dmBufferDestroyPool with a0=[a0+16], a1=?, a2=[a0+16], a3=?.
  The `jalr` at 0x405e0c calls vice_dmbuf_outpool with a0=[a0], a1=[a0+156], a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x405e40 calls dmBufferGetSize with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x405e64 calls dmBufferMapData with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a5=ret(dmBufferGetSize)+4, a6=a0+140.
  The `jalr` at 0x405f74 calls dmBufferGetSize with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a7=0x1.
  The `jalr` at 0x405fa8 calls printf with a0=0x40c6f0, a1=ret(dmBufferGetSize), a2=?, a3=[a0+140]-5.
  The `jalr` at 0x405fc8 calls dmSetError with a0=0x1772, a1=0x40c068, a2=0x40c720, a3=?.
  The `jalr` at 0x406004 calls vice_dmbuf_send with a0=[a0], a1=a1 at entry (arg1), a2=a0+176, a3=a0+104, a4=0xd, a7=0x1.
  The `jalr` at 0x406034 calls dmSetError with a0=0x1778, a1=0x40c068, a2=0x40c530, a3=?.
  The `jalr` at 0x406058 calls vice_dms_geterrs with a0=[a0], a1=-0x1, a2=?, a3=?.
  The `jalr` at 0x406084 calls dmSetError with a0=0x1778, a1=0x40c068, a2=0x40c548, a3=?.
  The `beq` branch at 0x405a2c targets 0x405a9c, is taken when at(=a4) == 0, and falls through when at(=a4) != 0.
  The `beq` branch at 0x405a4c targets 0x405a64, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x405a5c targets 0x4060a4 and is always taken.
  The `beq` branch at 0x405a84 targets 0x405a9c, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x405a94 targets 0x4060a4 and is always taken.
  The `beq` branch at 0x405aa0 targets 0x405b70, is taken when a3(=a5) == 0, and falls through when a3(=a5) != 0.
  The `beq` branch at 0x405ac0 targets 0x405ad8, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x405ad0 targets 0x4060a4 and is always taken.
  The `beq` branch at 0x405af4 targets 0x405b4c, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x405b24 targets 0x405b44, is taken when a2(=ret(dmParamsGetEnum)) == a3(=0x3f0), and falls through when a2(=ret(dmParamsGetEnum)) != a3(=0x3f0).
  The `beq` branch at 0x405b34 targets 0x405b44, is taken when a4(=ret(dmParamsGetEnum)) == a5(=0x3ed), and falls through when a4(=ret(dmParamsGetEnum)) != a5(=0x3ed).
  The `beq` branch at 0x405b44 targets 0x405b54 and is always taken.
  The `beq` branch at 0x405b74 targets 0x405bb0, is taken when a2(=a6) == 0, and falls through when a2(=a6) != 0.
  The `beq` branch at 0x405b98 targets 0x405bb0, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x405ba8 targets 0x4060a4 and is always taken.
  The `bne` branch at 0x405bb4 targets 0x405bd4, is taken when a3(=a4) != 0, and falls through when a3(=a4) == 0.
  The `bne` branch at 0x405bc0 targets 0x405bd4, is taken when a4(=a5) != 0, and falls through when a4(=a5) == 0.
  The `beq` branch at 0x405bcc targets 0x405e38, is taken when a5(=a6) == 0, and falls through when a5(=a6) != 0.
  The `bne` branch at 0x405bf0 targets 0x405c08, is taken when v0(=ret(_d_go)) != ra(=-0x1), and falls through when v0(=ret(_d_go)) == ra(=-0x1).
  The `beq` branch at 0x405c00 targets 0x4060a4 and is always taken.
  The `beq` branch at 0x405c24 targets 0x405dc4, is taken when v0(=ret(needsConvert)) == 0, and falls through when v0(=ret(needsConvert)) != 0.
  The `beq` branch at 0x405c58 targets 0x405c78, is taken when ra(=[a0+16]) == 0, and falls through when ra(=[a0+16]) != 0.
  The `beq` branch at 0x405c70 targets 0x405dbc, is taken when v1(=[a0+20]) >= a0(=ret(dmImageFrameSize)) (signed), and falls through when v1(=[a0+20]) < a0(=ret(dmImageFrameSize)) (signed).
  The `beq` branch at 0x405c80 targets 0x405c9c, is taken when a0(=[a0+16]) == 0, and falls through when a0(=[a0+16]) != 0.
  The `beq` branch at 0x405cb0 targets 0x405cc8, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x405cc0 targets 0x4060a4 and is always taken.
  The `beq` branch at 0x405cec targets 0x405d04, is taken when v0(=ret(dmBufferSetPoolDefaults)) == 0, and falls through when v0(=ret(dmBufferSetPoolDefaults)) != 0.
  The `beq` branch at 0x405cfc targets 0x4060a4 and is always taken.
  The `beq` branch at 0x405d38 targets 0x405d50, is taken when v0(=ret(dmBufferCreatePool)) == 0, and falls through when v0(=ret(dmBufferCreatePool)) != 0.
  The `beq` branch at 0x405d48 targets 0x4060a4 and is always taken.
  The `beq` branch at 0x405da4 targets 0x405dbc, is taken when v0(=ret(vice_dmbuf_outpool)) == 0, and falls through when v0(=ret(vice_dmbuf_outpool)) != 0.
  The `beq` branch at 0x405db4 targets 0x4060a4 and is always taken.
  The `beq` branch at 0x405dbc targets 0x405e38 and is always taken.
  The `beq` branch at 0x405dcc targets 0x405e30, is taken when a2(=[a0+16]) == 0, and falls through when a2(=[a0+16]) != 0.
  The `beq` branch at 0x405e18 targets 0x405e30, is taken when v0(=ret(vice_dmbuf_outpool)) == 0, and falls through when v0(=ret(vice_dmbuf_outpool)) != 0.
  The `beq` branch at 0x405e28 targets 0x4060a4 and is always taken.
  The `beq` branch at 0x405e84 targets 0x405f50 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bgez` branch at 0x405ea4 targets 0x405eb4, is taken when t0(?) >= 0 (signed), and falls through when t0(?) < 0 (signed).
  The `beq` branch at 0x405eac targets 0x405f50 and is always taken.
  The `bne` branch at 0x405edc targets 0x405eec, is taken when t1(?) != t2(=0xff), and falls through when t1(?) == t2(=0xff).
  The `beq` branch at 0x405ee4 targets 0x405f34 and is always taken.
  The `bne` branch at 0x405f14 targets 0x405f2c, is taken when t3(?) != t8(=0xd9), and falls through when t3(?) == t8(=0xd9).
  The `beq` branch at 0x405f24 targets 0x405f50 and is always taken.
  The `beq` branch at 0x405f2c targets 0x405f50 and is always taken.
  The `bne` branch at 0x405f48 targets 0x405e8c, is taken when ra(?) < 0x10 (signed), and falls through when ra(?) >= 0x10 (signed).
  The `bne` branch at 0x405f54 targets 0x405fe0, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x405f64 targets 0x405fb0, is taken when v1(=[a0+172]) == 0, and falls through when v1(=[a0+172]) != 0.
  The `beq` branch at 0x405fd8 targets 0x4060a4 and is always taken.
  The `bne` branch at 0x406014 targets 0x40604c, is taken when v0(=ret(vice_dmbuf_send)) != a1(=-0x1), and falls through when v0(=ret(vice_dmbuf_send)) == a1(=-0x1).
  The `beq` branch at 0x406044 targets 0x4060a4 and is always taken.
  The `beq` branch at 0x406064 targets 0x40609c, is taken when v0(=ret(vice_dms_geterrs)) == 0, and falls through when v0(=ret(vice_dms_geterrs)) != 0.
  The `beq` branch at 0x406094 targets 0x4060a4 and is always taken.
  The return at 0x4060b4 has v0 = one of -0x1, 0x0.

- `d_recv` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x4060bc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x4060bc-0x406440 (900 bytes).
  It occupies 900 bytes.
  The `lw` at 0x4060f4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x406100 loads 4 bytes from a0 (arg0 at entry) +0x4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9c, including `lw` at 0x40611c, `lw` at 0x4062ac.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x18, including `lw` at 0x406128, `lw` at 0x406284.
  The `sw` at 0x406154 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `lw` at 0x406164 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x406170 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x4061bc loads 4 bytes from a0 (arg0 at entry) +0xac.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4061d4, `lw` at 0x4061dc, `lw` at 0x406224.
  The `lw` at 0x406270 loads 4 bytes from a0 (arg0 at entry) +0xa4.
  The `sw` at 0x406418 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x40613c calls dmImageFrameSize with a0=[a0+4], a1=[a0+8], a2=a0 at entry (arg0), a3=a3 at entry (arg3), a5=0x12814.
  The `jalr` at 0x40618c calls vice_dmbuf_recv with a0=[a0], a1=sp-148, a2=?, a3=a0+216.
  The `jalr` at 0x4061e4 calls printf with a0=0x40c730, a1=?, a2=?, a3=?, a4=[a0+172].
  The `jalr` at 0x406204 calls dmSetError with a0=0x1776, a1=0x40c578, a2=0x40c588, a3=?.
  The `jalr` at 0x40624c calls dmSetError with a0=0x1778, a1=0x40c068, a2=0x40c5a0, a3=?, a4=0xe000.
  The `jalr` at 0x406278 calls dmBufferSetSize with a0=?, a1=[a0+164], a2=-0x1, a3=?, a4=0xe000.
  The `jalr` at 0x406298 calls dmImageFrameSize with a0=[a0+8], a1=[a0+24], a2=?, a3=?.
  The `jalr` at 0x4062b8 calls dmBufferAllocate with a0=[a0+156], a1=sp-120, a2=?, a3=?.
  The `jalr` at 0x4062e4 calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4062f8 calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40631c calls dmICAnyToAny with a0=?, a1=ret(dmBufferMapData), a2=[a0+4], a3=[a0+8], a4=0x0.
  The `jalr` at 0x406348 calls dmBufferSetSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406374 calls dmBufferGetImageType with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40638c calls dmBufferSetImageType with a0=?, a1=ret(dmBufferGetImageType), a2=?, a3=?.
  The `jalr` at 0x4063b8 calls dmBufferGetUSTMSCpair with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4063dc calls dmBufferSetUSTMSCpair with a0=?, a1=ret(dmBufferGetUSTMSCpair), a2=?, a3=?.
  The `jalr` at 0x406408 calls dmBufferFree with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x40612c targets 0x40616c, is taken when at(=[a0+24]) == 0, and falls through when at(=[a0+24]) != 0.
  The `bne` branch at 0x4061a4 targets 0x40621c, is taken when a1(=ret(vice_dmbuf_recv)) != a2(=-0x1), and falls through when a1(=ret(vice_dmbuf_recv)) == a2(=-0x1).
  The `beq` branch at 0x4061b0 targets 0x4061ec, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x4061c0 targets 0x4061ec, is taken when a4(=[a0+172]) == 0, and falls through when a4(=[a0+172]) != 0.
  The `beq` branch at 0x406214 targets 0x406428 and is always taken.
  The `bne` branch at 0x40622c targets 0x406264, is taken when a3(?) != a4(=0xe000), and falls through when a3(?) == a4(=0xe000).
  The `beq` branch at 0x40625c targets 0x406428 and is always taken.
  The `beq` branch at 0x406288 targets 0x40641c, is taken when a1(=[a0+24]) == 0, and falls through when a1(=[a0+24]) != 0.
  The `beq` branch at 0x4062c4 targets 0x4062dc, is taken when v0(=ret(dmBufferAllocate)) == 0, and falls through when v0(=ret(dmBufferAllocate)) != 0.
  The `beq` branch at 0x4062d4 targets 0x406428 and is always taken.
  The `beq` branch at 0x406324 targets 0x40633c, is taken when v0(=ret(dmICAnyToAny)) == 0, and falls through when v0(=ret(dmICAnyToAny)) != 0.
  The `beq` branch at 0x406334 targets 0x406428 and is always taken.
  The `beq` branch at 0x406354 targets 0x40636c, is taken when v0(=ret(dmBufferSetSize)) == 0, and falls through when v0(=ret(dmBufferSetSize)) != 0.
  The `beq` branch at 0x406364 targets 0x406428 and is always taken.
  The `beq` branch at 0x406398 targets 0x4063b0, is taken when v0(=ret(dmBufferSetImageType)) == 0, and falls through when v0(=ret(dmBufferSetImageType)) != 0.
  The `beq` branch at 0x4063a8 targets 0x406428 and is always taken.
  The `beq` branch at 0x4063e8 targets 0x406400, is taken when v0(=ret(dmBufferSetUSTMSCpair)) == 0, and falls through when v0(=ret(dmBufferSetUSTMSCpair)) != 0.
  The `beq` branch at 0x4063f8 targets 0x406428 and is always taken.
  The return at 0x406438 has v0 = one of ?, -0x1.

- `put_sof` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x406440 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x406440-0x406714 (724 bytes).
  It occupies 724 bytes.
  25 such `sb` accesses store 1 byte to [0x410ad8] -0x1, including `sb` at 0x40646c, `sb` at 0x406488, `sb` at 0x4064ac.
  The `bne` branch at 0x406494 targets 0x4064d4, is taken when at(=a2) != v0(=0x1), and falls through when at(=a2) == v0(=0x1).
  The `beq` branch at 0x4064cc targets 0x406504 and is always taken.
  The `bne` branch at 0x4065b0 targets 0x406604, is taken when at(=a2) != v0(=0x1), and falls through when at(=a2) == v0(=0x1).
  The `beq` branch at 0x4065fc targets 0x406704 and is always taken.
  The `bne` branch at 0x406620 targets 0x406648, is taken when a3 != 0, and falls through when a3 == 0.
  The `beq` branch at 0x406640 targets 0x406660 and is always taken.
  The return at 0x40670c has v0 = one of [0x410ad8], 0x11.

- `put_dri` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x406714 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x406714-0x4067a4 (144 bytes).
  It occupies 144 bytes.
  6 such `sb` accesses store 1 byte to [0x410ad8] -0x1, including `sb` at 0x406728, `sb` at 0x406740, `sb` at 0x406754.
  The return at 0x40679c has v0 = [0x410ad8].

- `put_sos` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x4067a4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x4067a4-0x406960 (444 bytes).
  It occupies 444 bytes.
  16 such `sb` accesses store 1 byte to [0x410ad8] -0x1, including `sb` at 0x4067c4, `sb` at 0x4067e0, `sb` at 0x406804.
  The `bne` branch at 0x4067ec targets 0x40682c, is taken when at(=a0) != v0(=0x1), and falls through when at(=a0) == v0(=0x1).
  The `beq` branch at 0x406824 targets 0x40685c and is always taken.
  The `bne` branch at 0x4068a8 targets 0x406910, is taken when at(=a0) < 0x2 (signed), and falls through when at(=a0) >= 0x2 (signed).
  The return at 0x406958 has v0 = [0x410ad8].

- `put_dqt` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x406960 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x406960-0x406a6c (268 bytes).
  It occupies 268 bytes.
  6 such `sb` accesses store 1 byte to [0x410ad8] -0x1, including `sb` at 0x406984, `sb` at 0x40699c, `sb` at 0x4069b0.
  The `lbu` at 0x406a1c loads 1 byte from ?.
  The `lh` at 0x406a28 loads 2 bytes from ?.
  The `beq` branch at 0x4069f0 targets 0x406a5c and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x406a54 targets 0x4069f8, is taken when t3(?) < 0x40 (signed), and falls through when t3(?) >= 0x40 (signed).
  The return at 0x406a64 has v0 = 0x4000.

- `put_dht_dc_luma` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x406a6c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x406a6c-0x406ba4 (312 bytes).
  It occupies 312 bytes.
  7 such `sb` accesses store 1 byte to [0x410ad8] -0x1, including `sb` at 0x406a88, `sb` at 0x406aa0, `sb` at 0x406ab4.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x406b14, `lbu` at 0x406b6c.
  The `beq` branch at 0x406af0 targets 0x406b3c and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x406b34 targets 0x406af8, is taken when t2(?) < 0x10 (signed), and falls through when t2(?) >= 0x10 (signed).
  The `beq` branch at 0x406b48 targets 0x406b94 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x406b8c targets 0x406b50, is taken when v0(?) < 0xc (signed), and falls through when v0(?) >= 0xc (signed).
  The return at 0x406b9c has v0 = ?.

- `put_dht_ac_luma` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x406ba4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x406ba4-0x406ce0 (316 bytes).
  It occupies 316 bytes.
  7 such `sb` accesses store 1 byte to [0x410ad8] -0x1, including `sb` at 0x406bc0, `sb` at 0x406bd8, `sb` at 0x406bec.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x406c50, `lbu` at 0x406ca8.
  The `beq` branch at 0x406c2c targets 0x406c78 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x406c70 targets 0x406c34, is taken when t3(?) < 0x10 (signed), and falls through when t3(?) >= 0x10 (signed).
  The `beq` branch at 0x406c84 targets 0x406cd0 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x406cc8 targets 0x406c8c, is taken when v1(?) < 0xa2 (signed), and falls through when v1(?) >= 0xa2 (signed).
  The return at 0x406cd8 has v0 = 0x1.

- `put_dht_dc_chroma` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x406ce0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x406ce0-0x406e1c (316 bytes).
  It occupies 316 bytes.
  7 such `sb` accesses store 1 byte to [0x410ad8] -0x1, including `sb` at 0x406cfc, `sb` at 0x406d14, `sb` at 0x406d28.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x406d8c, `lbu` at 0x406de4.
  The `beq` branch at 0x406d68 targets 0x406db4 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x406dac targets 0x406d70, is taken when t3(?) < 0x10 (signed), and falls through when t3(?) >= 0x10 (signed).
  The `beq` branch at 0x406dc0 targets 0x406e0c and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x406e04 targets 0x406dc8, is taken when v1(?) < 0xc (signed), and falls through when v1(?) >= 0xc (signed).
  The return at 0x406e14 has v0 = 0x1.

- `put_dht_ac_chroma` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x406e1c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x406e1c-0x406f58 (316 bytes).
  It occupies 316 bytes.
  7 such `sb` accesses store 1 byte to [0x410ad8] -0x1, including `sb` at 0x406e38, `sb` at 0x406e50, `sb` at 0x406e64.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x406ec8, `lbu` at 0x406f20.
  The `beq` branch at 0x406ea4 targets 0x406ef0 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x406ee8 targets 0x406eac, is taken when t3(?) < 0x10 (signed), and falls through when t3(?) >= 0x10 (signed).
  The `beq` branch at 0x406efc targets 0x406f48 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x406f40 targets 0x406f04, is taken when v1(?) < 0xa2 (signed), and falls through when v1(?) >= 0xa2 (signed).
  The return at 0x406f50 has v0 = 0x1.

- `put_app1_qtmja` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x406f58 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x406f58-0x40739c (1092 bytes).
  It occupies 1092 bytes.
  44 such `sb` accesses store 1 byte to [0x410ad8] -0x1, including `sb` at 0x406f74, `sb` at 0x406f8c, `sb` at 0x406fa0.
  The return at 0x407394 has v0 = [0x410ad8].

- `put_app1_qtmja_luma` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x40739c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x40739c-0x4077e0 (1092 bytes).
  It occupies 1092 bytes.
  44 such `sb` accesses store 1 byte to [0x410ad8] -0x1, including `sb` at 0x4073b8, `sb` at 0x4073d0, `sb` at 0x4073e4.
  The return at 0x4077d8 has v0 = [0x410ad8].

- `put_app0_jfif` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x4077e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x4077e0-0x40797c (412 bytes).
  It occupies 412 bytes.
  18 such `sb` accesses store 1 byte to [0x410ad8] -0x1, including `sb` at 0x4077f4, `sb` at 0x40780c, `sb` at 0x407820.
  The return at 0x407974 has v0 = [0x410ad8]+1.

- `put_app2_colspc` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x40797c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x40797c-0x407ae4 (360 bytes).
  It occupies 360 bytes.
  13 such `sb` accesses store 1 byte to [0x410ad8] -0x1, including `sb` at 0x4079ac, `sb` at 0x4079c4, `sb` at 0x4079d8.
  The return at 0x407adc has v0 = [0x410ad8]+1.

- `put_com_vice` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x407ae4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x407ae4-0x407ca4 (448 bytes).
  It occupies 448 bytes.
  18 such `sb` accesses store 1 byte to [0x410ad8] -0x1, including `sb` at 0x407b00, `sb` at 0x407b18, `sb` at 0x407b2c.
  The return at 0x407c9c has v0 = [0x410ad8]+1.

- `put_com_vice_luma` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x407ca4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x407ca4-0x407e4c (424 bytes).
  It occupies 424 bytes.
  17 such `sb` accesses store 1 byte to [0x410ad8] -0x1, including `sb` at 0x407cc0, `sb` at 0x407cd8, `sb` at 0x407cec.
  The return at 0x407e44 has v0 = [0x410ad8]+1.

- `jhead_make` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x407e4c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x407e4c-0x407fd0 (388 bytes).
  It occupies 388 bytes.
  2 such `sb` accesses store 1 byte to [0x410ad8] -0x1, including `sb` at 0x407e98, `sb` at 0x407eb0.
  The `bgezall` at 0x407ebc calls put_app0_jfif [0x4077e0] with a0=[0x410ad8], a1=[0x410ad8]+1, a2=a0 at entry (arg0), a3=a3 at entry (arg3), a6=0x10a84.
  The `bgezall` at 0x407ed0 calls put_app1_qtmja [0x406f58] with a0=a4 at entry (arg4), a1=?, a2=?, a3=?.
  The `bgezall` at 0x407ee4 calls put_app2_colspc [0x40797c] with a0=0x3, a1=?, a2=?, a3=?.
  The `bgezall` at 0x407ef8 calls put_com_vice [0x407ae4] with a0=a5 at entry (arg5), a1=?, a2=?, a3=?.
  The `bgezall` at 0x407f10 calls put_dqt [0x406960] with a0=0x0, a1=a3 at entry (arg3), a2=?, a3=?.
  The `bgezall` at 0x407f2c calls put_dqt [0x406960] with a0=0x1, a1=a3+128, a2=?, a3=?.
  The `bgezall` at 0x407f4c calls put_sof [0x406440] with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=0x3, a3=0x0.
  The `bgezall` at 0x407f5c calls put_dht_dc_luma [0x406a6c] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0x407f6c calls put_dht_ac_luma [0x406ba4] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0x407f7c calls put_dht_dc_chroma [0x406ce0] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0x407f8c calls put_dht_ac_chroma [0x406e1c] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0x407f9c calls put_dri [0x406714] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0x407fb0 calls put_sos [0x4067a4] with a0=0x3, a1=?, a2=?, a3=?.
  The return at 0x407fc8 has v0 = [0x410ad8].

- `jhead_luma_make` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x407fd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x407fd0-0x408118 (328 bytes).
  It occupies 328 bytes.
  2 such `sb` accesses store 1 byte to [0x410ad8] -0x1, including `sb` at 0x40801c, `sb` at 0x408034.
  The `bgezall` at 0x408040 calls put_app0_jfif [0x4077e0] with a0=[0x410ad8], a1=[0x410ad8]+1, a2=a0 at entry (arg0), a3=a3 at entry (arg3), a6=0x10900.
  The `bgezall` at 0x408054 calls put_app1_qtmja_luma [0x40739c] with a0=a4 at entry (arg4), a1=?, a2=?, a3=?.
  The `bgezall` at 0x408068 calls put_app2_colspc [0x40797c] with a0=0x3, a1=?, a2=?, a3=?.
  The `bgezall` at 0x40807c calls put_com_vice_luma [0x407ca4] with a0=a5 at entry (arg5), a1=?, a2=?, a3=?.
  The `bgezall` at 0x408094 calls put_dqt [0x406960] with a0=0x0, a1=a3 at entry (arg3), a2=?, a3=?.
  The `bgezall` at 0x4080b4 calls put_sof [0x406440] with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=0x1, a3=0x0.
  The `bgezall` at 0x4080c4 calls put_dht_dc_luma [0x406a6c] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0x4080d4 calls put_dht_ac_luma [0x406ba4] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0x4080e4 calls put_dri [0x406714] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0x4080f8 calls put_sos [0x4067a4] with a0=0x1, a1=?, a2=?, a3=?.
  The return at 0x408110 has v0 = [0x410ad8].

- `vjpeg_qfmt` in `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` at 0x408118 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so`.
  Range: 0x408118-0x408208 (240 bytes).
  It occupies 240 bytes.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x40815c, `lw` at 0x4081c4.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x408170, `sh` at 0x4081d8.
  The `beq` branch at 0x408134 targets 0x408190 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x408188 targets 0x40813c, is taken when v0(?) < 0x40 (signed), and falls through when v0(?) >= 0x40 (signed).
  The `beq` branch at 0x40819c targets 0x4081f8 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x4081f0 targets 0x4081a4, is taken when a7(?) < 0x40 (signed), and falls through when a7(?) >= 0x40 (signed).
  The return at 0x408200 has v0 = ?.
