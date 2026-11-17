# Readings: `usr/lib/dmedia/imageconverters/vicedv.so`

One entry per routine, filed here from the reading batches by binary.

- `_poolneeds` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x403060 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x403060-0x4030a0 (64 bytes).
  It occupies 64 bytes.
  The `jalr` at 0x403084 calls vice_dmbuf_requirements with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x403098 has v0 = ret(vice_dmbuf_requirements).

- `make_qparse_pool` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x4030a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x4030a0-0x403194 (244 bytes).
  It occupies 244 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x47c5dc, including `lw` at 0x40315c, `lw` at 0x403170.
  The `sw` at 0x40317c stores 4 bytes to abs 0x47c5e0.
  The `jalr` at 0x4030c0 calls dmParamsCreate with a0=sp-4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4030e8 calls dmBufferSetPoolDefaults with a0=?, a1=0x5, a2=(a0 << 0x10), a3=0x0.
  The `jalr` at 0x403104 calls _poolneeds [0x403060] with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x40311c calls dmBufferCreatePool with a0=?, a1=0x47c5dc, a2=?, a3=?.
  The `jalr` at 0x40313c calls dmParamsDestroy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x403158 calls dmBufferSetPoolSelectSize with a0=[0x47c5dc], a1=(a0 << 0x10), a2=?, a3=?.
  The `jalr` at 0x40316c calls dmBufferGetPoolFD with a0=[0x47c5dc], a1=?, a2=?, a3=?.
  The `beq` branch at 0x403124 targets 0x403134, is taken when v0(=ret(dmBufferCreatePool)) == 0, and falls through when v0(=ret(dmBufferCreatePool)) != 0.
  The `beq` branch at 0x40312c targets 0x403184 and is always taken.
  The return at 0x40318c has v0 = one of -0x1, 0x0.

- `make_dvcoeff_pool` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x403194 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x403194-0x403254 (192 bytes).
  It occupies 192 bytes.
  The `jalr` at 0x4031b8 calls dmParamsCreate with a0=sp-4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4031e0 calls dmBufferSetPoolDefaults with a0=?, a1=0x2, a2=(a0 << 0x10), a3=0x1.
  The `jalr` at 0x4031fc calls _poolneeds [0x403060] with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x403214 calls dmBufferCreatePool with a0=?, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x403234 calls dmParamsDestroy with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x40321c targets 0x40322c, is taken when v0(=ret(dmBufferCreatePool)) == 0, and falls through when v0(=ret(dmBufferCreatePool)) != 0.
  The `beq` branch at 0x403224 targets 0x403244 and is always taken.
  The return at 0x40324c has v0 = one of -0x1, 0x0.

- `init_formats` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x403254 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x403254-0x4032f8 (164 bytes).
  It occupies 164 bytes.
  The `sw` at 0x4032d4 stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `sw` at 0x4032dc stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x4032e4 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `jalr` at 0x403274 calls dmParamsCreate with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403294 calls dmParamsCreate with a0=a0+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x4032b4 calls dmParamsCreate with a0=a0+8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x40327c targets 0x40328c, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x403284 targets 0x4032e8 and is always taken.
  The `beq` branch at 0x40329c targets 0x4032ac, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x4032a4 targets 0x4032e8 and is always taken.
  The `beq` branch at 0x4032bc targets 0x4032cc, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x4032c4 targets 0x4032e8 and is always taken.
  The return at 0x4032f0 has v0 = one of -0x1, 0x0.

- `free_formats` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x4032f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x4032f8-0x40338c (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0x403320 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x403330 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x403348 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x40335c loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `jalr` at 0x40331c calls dmParamsDestroy with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403334 calls dmParamsDestroy with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0x40334c calls dmParamsDestroy with a0=[a0+8], a1=?, a2=?, a3=?.
  The `jalr` at 0x403370 calls dmBufferDestroyPool with a0=[a0+12], a1=?, a2=?, a3=?.
  The `beq` branch at 0x403360 targets 0x40337c, is taken when t0(=[a0+12]) == 0, and falls through when t0(=[a0+12]) != 0.
  The return at 0x403384 has v0 = one of ret(dmParamsDestroy), ret(dmBufferDestroyPool).

- `required_params` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x40338c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x40338c-0x403470 (228 bytes).
  It occupies 228 bytes.
  The `jalr` at 0x4033b8 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x410000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4033d4 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x410018, a2=?, a3=?.
  The `jalr` at 0x4033f0 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x410028, a2=?, a3=?.
  The `jalr` at 0x40340c calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x410038, a2=?, a3=?.
  The `jalr` at 0x403428 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x41004c, a2=?, a3=?.
  The `jalr` at 0x403448 calls dmSetError with a0=0x1773, a1=0x410064, a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x4033c0 targets 0x403438, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x4033dc targets 0x403438, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x4033f8 targets 0x403438, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x403414 targets 0x403438, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `bne` branch at 0x403430 targets 0x40345c, is taken when v0(=ret(dmParamsIsPresent)) != 0, and falls through when v0(=ret(dmParamsIsPresent)) == 0.
  The `beq` branch at 0x403454 targets 0x403460 and is always taken.
  The return at 0x403468 has v0 = one of -0x1, 0x0.

- `needsConvert` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x403470 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x403470-0x403728 (696 bytes).
  It occupies 696 bytes.
  The `jalr` at 0x4034ac calls required_params [0x40338c] with a0=a0 at entry (arg0), a1=0x41006c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4034d0 calls __assert with a0=0x410070, a1=0x410098, a2=0x116, a3=?.
  The `jalr` at 0x4034ec calls required_params [0x40338c] with a0=a1 at entry (arg1), a1=0x4100a4, a2=?, a3=?.
  The `jalr` at 0x403510 calls __assert with a0=0x4100a8, a1=0x4100d0, a2=0x117, a3=?.
  The `jalr` at 0x403528 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x4100dc, a2=?, a3=?.
  The `jalr` at 0x403544 calls dmParamsGetInt with a0=a1 at entry (arg1), a1=0x4100ec, a2=?, a3=?.
  The `jalr` at 0x403560 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x4100fc, a2=?, a3=?.
  The `jalr` at 0x40357c calls dmParamsGetInt with a0=a1 at entry (arg1), a1=0x41010c, a2=?, a3=?.
  The `jalr` at 0x403598 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x41011c, a2=?, a3=?.
  The `jalr` at 0x4035b4 calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x410134, a2=?, a3=?.
  The `jalr` at 0x4035d8 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x41014c, a2=?, a3=?.
  The `jalr` at 0x4035f4 calls dmParamsIsPresent with a0=a1 at entry (arg1), a1=0x410164, a2=?, a3=?.
  The `jalr` at 0x403610 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x41017c, a2=?, a3=?.
  The `jalr` at 0x40362c calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x410194, a2=?, a3=?.
  The `jalr` at 0x403650 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x4101ac, a2=?, a3=?.
  The `jalr` at 0x40366c calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x4101c0, a2=?, a3=?.
  The `beq` branch at 0x4034b4 targets 0x4034dc, is taken when v0(=ret(required_params)) == 0, and falls through when v0(=ret(required_params)) != 0.
  The `beq` branch at 0x4034f4 targets 0x40351c, is taken when v0(=ret(required_params)) == 0, and falls through when v0(=ret(required_params)) != 0.
  The `bne` branch at 0x40354c targets 0x4035c4, is taken when v0(=ret(dmParamsGetInt)) != s0(=ret(dmParamsGetInt)), and falls through when v0(=ret(dmParamsGetInt)) == s0(=ret(dmParamsGetInt)).
  The `bne` branch at 0x403584 targets 0x4035c4, is taken when v0(=ret(dmParamsGetInt)) != s1(=ret(dmParamsGetInt)), and falls through when v0(=ret(dmParamsGetInt)) == s1(=ret(dmParamsGetInt)).
  The `beq` branch at 0x4035bc targets 0x4035cc, is taken when v0(=ret(dmParamsGetEnum)) == s2(=ret(dmParamsGetEnum)), and falls through when v0(=ret(dmParamsGetEnum)) != s2(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x4035c4 targets 0x403710 and is always taken.
  The `beq` branch at 0x4035e0 targets 0x403644, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x4035fc targets 0x403644, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x403634 targets 0x403644, is taken when v0(=ret(dmParamsGetEnum)) == s0(=ret(dmParamsGetEnum)), and falls through when v0(=ret(dmParamsGetEnum)) != s0(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x40363c targets 0x403710 and is always taken.
  The `bne` branch at 0x403684 targets 0x403694, is taken when t6(=ret(dmParamsGetEnum)) != t7(=ret(dmParamsGetEnum)), and falls through when t6(=ret(dmParamsGetEnum)) == t7(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x40368c targets 0x403710 and is always taken.
  The `bne` branch at 0x40369c targets 0x4036c4, is taken when t8(=ret(dmParamsGetEnum)) != at(=0x3f0), and falls through when t8(=ret(dmParamsGetEnum)) == at(=0x3f0).
  The `beq` branch at 0x4036ac targets 0x4036bc, is taken when t9(=ret(dmParamsGetEnum)) == at(=0xbbb), and falls through when t9(=ret(dmParamsGetEnum)) != at(=0xbbb).
  The `bne` branch at 0x4036b4 targets 0x4036c4, is taken when t9(=ret(dmParamsGetEnum)) != at(=0xbbc), and falls through when t9(=ret(dmParamsGetEnum)) == at(=0xbbc).
  The `beq` branch at 0x4036bc targets 0x403710 and is always taken.
  The `bne` branch at 0x4036cc targets 0x4036e4, is taken when t0(=ret(dmParamsGetEnum)) != at(=0x3e9), and falls through when t0(=ret(dmParamsGetEnum)) == at(=0x3e9).
  The `beq` branch at 0x4036dc targets 0x403704, is taken when t1(=ret(dmParamsGetEnum)) == at(=0x3ea), and falls through when t1(=ret(dmParamsGetEnum)) != at(=0x3ea).
  The `bne` branch at 0x4036ec targets 0x40370c, is taken when t2(=ret(dmParamsGetEnum)) != at(=0x3ea), and falls through when t2(=ret(dmParamsGetEnum)) == at(=0x3ea).
  The `bne` branch at 0x4036fc targets 0x40370c, is taken when t3(=ret(dmParamsGetEnum)) != at(=0x3e9), and falls through when t3(=ret(dmParamsGetEnum)) == at(=0x3e9).
  The `beq` branch at 0x403704 targets 0x403710 and is always taken.
  The return at 0x403720 has v0 = one of 0x0, 0x1.

- `verify_uncompressed` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x403728 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x403728-0x4037ec (196 bytes).
  It occupies 196 bytes.
  The `jalr` at 0x403758 calls required_params [0x40338c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403780 calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x4101d4, a2=?, a3=?.
  The `jalr` at 0x40379c calls strcmp with a0=ret(dmParamsGetString), a1=0x4101ec, a2=?, a3=?.
  The `jalr` at 0x4037c0 calls dmSetError with a0=0x1772, a1=0x410200, a2=0x410208, a3=?.
  The `bne` branch at 0x403764 targets 0x403774, is taken when v0(=ret(required_params)) != at(=-0x1), and falls through when v0(=ret(required_params)) == at(=-0x1).
  The `beq` branch at 0x40376c targets 0x4037d8 and is always taken.
  The `beq` branch at 0x4037a4 targets 0x4037d4, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x4037cc targets 0x4037d8 and is always taken.
  The return at 0x4037e4 has v0 = one of -0x1, 0x0.

- `verify_compressed` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x4037ec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x4037ec-0x403a78 (652 bytes).
  It occupies 652 bytes.
  The `jalr` at 0x403820 calls required_params [0x40338c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403848 calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x410220, a2=?, a3=?.
  The `jalr` at 0x403864 calls strcmp with a0=ret(dmParamsGetString), a1=0x410238, a2=?, a3=?.
  The `jalr` at 0x403880 calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x410240, a2=?, a3=?.
  The `jalr` at 0x40389c calls strcmp with a0=ret(dmParamsGetString), a1=0x410258, a2=?, a3=?.
  The `jalr` at 0x4038c0 calls dmSetError with a0=0x1772, a1=0x41025c, a2=0x410264, a3=?.
  The `jalr` at 0x4038e0 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x41027c, a2=?, a3=?.
  The `jalr` at 0x403908 calls dmSetError with a0=0x1772, a1=0x410294, a2=0x41029c, a3=?.
  The `jalr` at 0x403928 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x4102b4, a2=?, a3=?.
  The `jalr` at 0x403948 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x4102c8, a2=?, a3=?.
  The `jalr` at 0x403968 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x4102dc, a2=?, a3=?.
  The `jalr` at 0x403990 calls dmSetError with a0=0x1772, a1=0x4102f0, a2=0x4102f8, a3=?.
  The `jalr` at 0x4039b0 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x41030c, a2=?, a3=?.
  The `jalr` at 0x4039e4 calls dmSetError with a0=0x1772, a1=0x41031c, a2=0x410324, a3=?.
  The `jalr` at 0x403a04 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x410334, a2=?, a3=?.
  The `jalr` at 0x403a54 calls dmSetError with a0=0x1772, a1=0x410344, a2=0x41034c, a3=0x1e0.
  The `bne` branch at 0x40382c targets 0x40383c, is taken when v0(=ret(required_params)) != at(=-0x1), and falls through when v0(=ret(required_params)) == at(=-0x1).
  The `beq` branch at 0x403834 targets 0x403a64 and is always taken.
  The `beq` branch at 0x40386c targets 0x4038d4, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x4038a4 targets 0x4038d4, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x4038cc targets 0x403a64 and is always taken.
  The `beq` branch at 0x4038ec targets 0x40391c, is taken when v0(=ret(dmParamsGetEnum)) == at(=0x44c), and falls through when v0(=ret(dmParamsGetEnum)) != at(=0x44c).
  The `beq` branch at 0x403914 targets 0x403a64 and is always taken.
  The `beq` branch at 0x403934 targets 0x4039a4, is taken when v0(=ret(dmParamsGetEnum)) == at(=0x3f0), and falls through when v0(=ret(dmParamsGetEnum)) != at(=0x3f0).
  The `beq` branch at 0x403954 targets 0x4039a4, is taken when v0(=ret(dmParamsGetEnum)) == at(=0xbbc), and falls through when v0(=ret(dmParamsGetEnum)) != at(=0xbbc).
  The `beq` branch at 0x403974 targets 0x4039a4, is taken when v0(=ret(dmParamsGetEnum)) == at(=0xbbb), and falls through when v0(=ret(dmParamsGetEnum)) != at(=0xbbb).
  The `beq` branch at 0x40399c targets 0x403a64 and is always taken.
  The `beq` branch at 0x4039c8 targets 0x4039f8, is taken when t6(=ret(dmParamsGetInt)) == at(=0x2d0), and falls through when t6(=ret(dmParamsGetInt)) != at(=0x2d0).
  The `beq` branch at 0x4039f0 targets 0x403a64 and is always taken.
  The `beq` branch at 0x403a1c targets 0x403a2c, is taken when t7(=ret(dmParamsGetInt)) == at(=0x1e0), and falls through when t7(=ret(dmParamsGetInt)) != at(=0x1e0).
  The `bne` branch at 0x403a24 targets 0x403a34, is taken when t7(=ret(dmParamsGetInt)) != at(=0x240), and falls through when t7(=ret(dmParamsGetInt)) == at(=0x240).
  The `beq` branch at 0x403a2c targets 0x403a64 and is always taken.
  The return at 0x403a70 has v0 = one of -0x1, 0x0.

- `get_default_uncompressed` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x403a78 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x403a78-0x403b24 (172 bytes).
  It occupies 172 bytes.
  The `jalr` at 0x403aa4 calls dmSetImageDefaults with a0=a0 at entry (arg0), a1=0x2d0, a2=0x1e0, a3=0x3f0.
  The `jalr` at 0x403acc calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x410360, a2=0x44c, a3=?.
  The `jalr` at 0x403af8 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x410378, a2=0x410390, a3=?.
  The `beq` branch at 0x403aac targets 0x403abc, is taken when v0(=ret(dmSetImageDefaults)) == 0, and falls through when v0(=ret(dmSetImageDefaults)) != 0.
  The `beq` branch at 0x403ab4 targets 0x403b14 and is always taken.
  The `beq` branch at 0x403ad4 targets 0x403ae4, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x403adc targets 0x403b14 and is always taken.
  The `beq` branch at 0x403b00 targets 0x403b10, is taken when v0(=ret(dmParamsSetString)) == 0, and falls through when v0(=ret(dmParamsSetString)) != 0.
  The `beq` branch at 0x403b08 targets 0x403b14 and is always taken.
  The return at 0x403b1c has v0 = one of -0x1, 0x0.

- `get_default_compressed` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x403b24 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x403b24-0x403cdc (440 bytes).
  It occupies 440 bytes.
  The `jalr` at 0x403b50 calls dmSetImageDefaults with a0=a0 at entry (arg0), a1=0x2d0, a2=0x1e0, a3=0x3f0.
  The `jalr` at 0x403b78 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x4103a4, a2=0x44c, a3=?.
  The `jalr` at 0x403ba4 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x4103bc, a2=0x4103d4, a3=?.
  The `beq` branch at 0x403b58 targets 0x403b68, is taken when v0(=ret(dmSetImageDefaults)) == 0, and falls through when v0(=ret(dmSetImageDefaults)) != 0.
  The `beq` branch at 0x403b60 targets 0x403bc0 and is always taken.
  The `beq` branch at 0x403b80 targets 0x403b90, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x403b88 targets 0x403bc0 and is always taken.
  The `beq` branch at 0x403bac targets 0x403bbc, is taken when v0(=ret(dmParamsSetString)) == 0, and falls through when v0(=ret(dmParamsSetString)) != 0.
  The `beq` branch at 0x403bb4 targets 0x403bc0 and is always taken.
  The return at 0x403bc8 has v0 = one of -0x1, 0x0.
  The instructions from 0x403bd0 to 0x403cd8 are not reached by any path from the entry, and their branches are not listed.

- `dmICInitDso` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x403bd0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x403bd0-0x403cdc (268 bytes).
  It occupies 268 bytes.
  8 such `lw` accesses load 4 bytes from ?, including `lw` at 0x403bf8, `lw` at 0x403c08, `lw` at 0x403c10.
  8 such `sw` accesses store 4 bytes to ?, including `sw` at 0x403c04, `sw` at 0x403c0c, `sw` at 0x403c18.
  The `jalr` at 0x403c34 calls dmICRegisterConverter with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x403c90 calls dmICRegisterConverter with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x403cb4 calls dmSetError with a0=0x1774, a1=0x4103dc, a2=0x4103e4, a3=?.
  The `bne` branch at 0x403c14 targets 0x403bf8, is taken when t6(?) != t0(=0x410eec), and falls through when t6(?) == t0(=0x410eec).
  The `bltz` branch at 0x403c3c targets 0x403ca0, is taken when v0(=ret(dmICRegisterConverter)) < 0 (signed), and falls through when v0(=ret(dmICRegisterConverter)) >= 0 (signed).
  The `bne` branch at 0x403c70 targets 0x403c54, is taken when t1(?) != t5(=0x410ea0), and falls through when t1(?) == t5(=0x410ea0).
  The `bgez` branch at 0x403c98 targets 0x403cc8, is taken when v0(=ret(dmICRegisterConverter)) >= 0 (signed), and falls through when v0(=ret(dmICRegisterConverter)) < 0 (signed).
  The `beq` branch at 0x403cc0 targets 0x403ccc and is always taken.
  The return at 0x403cd4 has v0 = one of -0x1, 0x0.

- `dve_open` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x403cdc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x403cdc-0x403f80 (676 bytes).
  It occupies 676 bytes.
  The `sw` at 0x403dc8 stores 4 bytes to ret(calloc) +0x0.
  2 such `lw` accesses load 4 bytes from ret(calloc) +0x0, including `lw` at 0x403dd4, `lw` at 0x403e28.
  The `sw` at 0x403e4c stores 4 bytes to ret(calloc) +0x80.
  The `sw` at 0x403e6c stores 4 bytes to ret(calloc) +0x84.
  The `lw` at 0x403e74 loads 4 bytes from ret(calloc) +0x84.
  The `sw` at 0x403ee8 stores 4 bytes to abs 0x47c5e8.
  4 such `lw` accesses load 4 bytes from abs 0x47c5e8, including `lw` at 0x403ef0, `lw` at 0x403f10, `lw` at 0x403f30.
  The `sw` at 0x403f08 stores 4 bytes to abs 0x47c5f0.
  The `sw` at 0x403f28 stores 4 bytes to abs 0x47c5f4.
  The `sw` at 0x403f48 stores 4 bytes to abs 0x47c5f8.
  The `sw` at 0x403f68 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x403d00 calls vice_get_lib_rev with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403d30 calls dmSetError with a0=0x1774, a1=0x410404, a2=0x41040c, a3=0x6b7a.
  The `jalr` at 0x403d50 calls calloc with a0=0x1, a1=0xe8, a2=?, a3=?.
  The `jalr` at 0x403d80 calls dmSetError with a0=0x1774, a1=0x410424, a2=0x41042c, a3=?.
  The `jalr` at 0x403da0 calls init_formats [0x403254] with a0=ret(calloc)+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x403db4 calls vice_open with a0=0x41043c, a1=?, a2=?, a3=?.
  The `jalr` at 0x403df4 calls dmSetError with a0=0x1774, a1=0x41044c, a2=0x410454, a3=?.
  The `jalr` at 0x403e10 calls vice_setetc with a0=ret(vice_open), a1=?, a2=?, a3=?.
  The `jalr` at 0x403e38 calls vice_event_init with a0=[ret(calloc)], a1=ret(calloc)+136, a2=ret(calloc)+176, a3=0x40.
  The `jalr` at 0x403e58 calls getenv with a0=0x410470, a1=?, a2=?, a3=?.
  The `jalr` at 0x403e88 calls printf with a0=0x41047c, a1=?, a2=?, a3=?.
  The `jalr` at 0x403e9c calls getenv with a0=0x410498, a1=?, a2=?, a3=?.
  The `jalr` at 0x403eb4 calls getenv with a0=0x4104a8, a1=?, a2=?, a3=?.
  The `jalr` at 0x403ecc calls atoi with a0=ret(getenv), a1=?, a2=?, a3=?.
  The `jalr` at 0x403eec calls calloc with a0=[0x47c5e8], a1=0x4, a2=?, a3=?.
  The `jalr` at 0x403f0c calls calloc with a0=[0x47c5e8], a1=0x4, a2=?, a3=?.
  The `jalr` at 0x403f2c calls calloc with a0=[0x47c5e8], a1=0x4, a2=?, a3=?.
  The `jalr` at 0x403f50 calls printf with a0=0x4104b8, a1=[0x47c5e8], a2=?, a3=?.
  The `beq` branch at 0x403d10 targets 0x403d44, is taken when t6(?) == at(=0x6b7a), and falls through when t6(?) != at(=0x6b7a).
  The `beq` branch at 0x403d3c targets 0x403f6c and is always taken.
  The `bne` branch at 0x403d64 targets 0x403d94, is taken when t7(=ret(calloc)) != 0, and falls through when t7(=ret(calloc)) == 0.
  The `beq` branch at 0x403d8c targets 0x403f6c and is always taken.
  The `bgez` branch at 0x403dd8 targets 0x403e08, is taken when t0(=[ret(calloc)]) >= 0 (signed), and falls through when t0(=[ret(calloc)]) < 0 (signed).
  The `beq` branch at 0x403e00 targets 0x403f6c and is always taken.
  The `beq` branch at 0x403e78 targets 0x403e94, is taken when t7(=[ret(calloc)+132]) == 0, and falls through when t7(=[ret(calloc)+132]) != 0.
  The `beq` branch at 0x403ea4 targets 0x403f5c, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The return at 0x403f78 has v0 = one of -0x1, 0x0.

- `dv_open` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x403f80 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x403f80-0x404334 (948 bytes).
  It occupies 948 bytes.
  The `sw` at 0x40406c stores 4 bytes to ret(calloc) +0x0.
  2 such `lw` accesses load 4 bytes from ret(calloc) +0x0, including `lw` at 0x404078, `lw` at 0x4041dc.
  2 such `sw` accesses store 4 bytes to sym(ge) +0x0, including `sw` at 0x4040dc, `sw` at 0x404124.
  2 such `lw` accesses load 4 bytes from sym(ge) +0x0, including `lw` at 0x4040e0, `lw` at 0x404128.
  2 such `lbu` accesses load 1 byte from [sym(ge)] +0x0, including `lbu` at 0x4040ec, `lbu` at 0x404134.
  The `sb` at 0x404104 stores 1 byte to ret(calloc) +0xd9.
  The `sb` at 0x40414c stores 1 byte to ret(calloc) +0xd8.
  The `lbu` at 0x40415c loads 1 byte from ret(calloc) +0xd9.
  2 such `sw` accesses store 4 bytes to ret(calloc) +0x2c, including `sw` at 0x4041a4, `sw` at 0x4041bc.
  The `lw` at 0x4041b4 loads 4 bytes from ret(calloc) +0x2c.
  The `sw` at 0x4041c4 stores 4 bytes to ret(calloc) +0x54.
  The `sw` at 0x4041cc stores 4 bytes to ret(calloc) +0x58.
  The `sw` at 0x404200 stores 4 bytes to ret(calloc) +0x80.
  The `sw` at 0x404220 stores 4 bytes to ret(calloc) +0x84.
  The `lw` at 0x404228 loads 4 bytes from ret(calloc) +0x84.
  The `sw` at 0x40429c stores 4 bytes to abs 0x47c5e8.
  4 such `lw` accesses load 4 bytes from abs 0x47c5e8, including `lw` at 0x4042a4, `lw` at 0x4042c4, `lw` at 0x4042e4.
  The `sw` at 0x4042bc stores 4 bytes to abs 0x47c5f0.
  The `sw` at 0x4042dc stores 4 bytes to abs 0x47c5f4.
  The `sw` at 0x4042fc stores 4 bytes to abs 0x47c5f8.
  The `sw` at 0x40431c stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x403fa4 calls vice_get_lib_rev with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403fd4 calls dmSetError with a0=0x1774, a1=0x4104dc, a2=0x4104e4, a3=0x6b7a.
  The `jalr` at 0x403ff4 calls calloc with a0=0x1, a1=0xe8, a2=?, a3=?.
  The `jalr` at 0x404024 calls dmSetError with a0=0x1774, a1=0x4104fc, a2=0x410504, a3=?.
  The `jalr` at 0x404044 calls init_formats [0x403254] with a0=ret(calloc)+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x404058 calls vice_open with a0=0x410514, a1=?, a2=?, a3=?.
  The `jalr` at 0x404098 calls dmSetError with a0=0x1774, a1=0x410524, a2=0x41052c, a3=?.
  The `jalr` at 0x4040b4 calls vice_setetc with a0=ret(vice_open), a1=?, a2=?, a3=?.
  The `jalr` at 0x4040c8 calls getenv with a0=0x410548, a1=?, a2=?, a3=?.
  The `jalr` at 0x404110 calls getenv with a0=0x410554, a1=?, a2=?, a3=?.
  The `jalr` at 0x404170 calls vice_file with a0=0x41055c, a1=?, a2=?, a3=?.
  The `jalr` at 0x404190 calls vice_load_msp_code with a0=ret(vice_open), a1=ret(vice_file), a2=ret(calloc)+28, a3=0x0.
  The `jalr` at 0x4041ec calls vice_event_init with a0=[ret(calloc)], a1=ret(calloc)+136, a2=ret(calloc)+176, a3=0x40.
  The `jalr` at 0x40420c calls getenv with a0=0x410568, a1=?, a2=?, a3=?.
  The `jalr` at 0x40423c calls printf with a0=0x410574, a1=?, a2=?, a3=?.
  The `jalr` at 0x404250 calls getenv with a0=0x410590, a1=?, a2=?, a3=?.
  The `jalr` at 0x404268 calls getenv with a0=0x4105a0, a1=?, a2=?, a3=?.
  The `jalr` at 0x404280 calls atoi with a0=ret(getenv), a1=?, a2=?, a3=?.
  The `jalr` at 0x4042a0 calls calloc with a0=[0x47c5e8], a1=0x4, a2=?, a3=?.
  The `jalr` at 0x4042c0 calls calloc with a0=[0x47c5e8], a1=0x4, a2=?, a3=?.
  The `jalr` at 0x4042e0 calls calloc with a0=[0x47c5e8], a1=0x4, a2=?, a3=?.
  The `jalr` at 0x404304 calls printf with a0=0x4105b0, a1=[0x47c5e8], a2=?, a3=?.
  The `beq` branch at 0x403fb4 targets 0x403fe8, is taken when t6(?) == at(=0x6b7a), and falls through when t6(?) != at(=0x6b7a).
  The `beq` branch at 0x403fe0 targets 0x404320 and is always taken.
  The `bne` branch at 0x404008 targets 0x404038, is taken when t7(=ret(calloc)) != 0, and falls through when t7(=ret(calloc)) == 0.
  The `beq` branch at 0x404030 targets 0x404320 and is always taken.
  The `bgez` branch at 0x40407c targets 0x4040ac, is taken when t0(=[ret(calloc)]) >= 0 (signed), and falls through when t0(=[ret(calloc)]) < 0 (signed).
  The `beq` branch at 0x4040a4 targets 0x404320 and is always taken.
  The `beq` branch at 0x4040e4 targets 0x404108, is taken when t1(=[sym(ge)]) == 0, and falls through when t1(=[sym(ge)]) != 0.
  The `bne` branch at 0x4040f4 targets 0x404108, is taken when t2(=[[sym(ge)]]:1) != at(=0x79), and falls through when t2(=[[sym(ge)]]:1) == at(=0x79).
  The `beq` branch at 0x40412c targets 0x404150, is taken when t5(=[sym(ge)]) == 0, and falls through when t5(=[sym(ge)]) != 0.
  The `bne` branch at 0x40413c targets 0x404150, is taken when t6(=[[sym(ge)]]:1) != at(=0x6e), and falls through when t6(=[[sym(ge)]]:1) == at(=0x6e).
  The `beq` branch at 0x404160 targets 0x4041d0, is taken when t1(=[ret(calloc)+217]:1) == 0, and falls through when t1(=[ret(calloc)+217]:1) != 0.
  The `beq` branch at 0x40422c targets 0x404248, is taken when t7(=[ret(calloc)+132]) == 0, and falls through when t7(=[ret(calloc)+132]) != 0.
  The `beq` branch at 0x404258 targets 0x404310, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The return at 0x40432c has v0 = one of -0x1, 0x0.

- `dv_close` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x404334 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x404334-0x4044d0 (412 bytes).
  It occupies 412 bytes.
  The `lw` at 0x404358 loads 4 bytes from a0 (arg0 at entry) +0x84.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x404380, `lw` at 0x404398.
  The `lw` at 0x4043e0 loads 4 bytes from abs 0x47c5d8.
  2 such `lw` accesses load 4 bytes from abs 0x410e50, including `lw` at 0x4043f4, `lw` at 0x40442c.
  The `sw` at 0x40443c stores 4 bytes to abs 0x410e50.
  The `lw` at 0x404444 loads 4 bytes from abs 0x47c5d4.
  The `sw` at 0x404468 stores 4 bytes to abs 0x47c5d4.
  The `sw` at 0x404470 stores 4 bytes to abs 0x47c5d8.
  The `lw` at 0x404478 loads 4 bytes from abs 0x47c5f4.
  The `lw` at 0x4044a4 loads 4 bytes from abs 0x47c5f8.
  The `lw` at 0x4044b8 loads 4 bytes from abs 0x47c5f0.
  The `jalr` at 0x40436c calls printf with a0=0x4105d4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404388 calls vice_event_uninit with a0=[a0], a1=a0+136, a2=a0+176, a3=?.
  The `jalr` at 0x4043a0 calls vice_close with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x4043bc calls free_formats [0x4032f8] with a0=a0+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x4043d0 calls free with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x40440c calls kill with a0=[0x410e50], a1=0x9, a2=?, a3=?.
  The `jalr` at 0x404428 calls waitpid with a0=[0x410e50], a1=0x0, a2=0x0, a3=?.
  The `jalr` at 0x404458 calls dmBufferDestroyQueue with a0=[0x47c5d4], a1=?, a2=?, a3=?.
  The `jalr` at 0x40448c calls free with a0=[0x47c5f4], a1=?, a2=?, a3=?.
  The `jalr` at 0x4044a0 calls free with a0=[0x47c5f8], a1=?, a2=?, a3=?.
  The `jalr` at 0x4044b4 calls free with a0=[0x47c5f0], a1=?, a2=?, a3=?.
  The `beq` branch at 0x40435c targets 0x404378, is taken when t7(=[a0+132]) == 0, and falls through when t7(=[a0+132]) != 0.
  The `beq` branch at 0x4043e4 targets 0x404474, is taken when t0(=[0x47c5d8]) == 0, and falls through when t0(=[0x47c5d8]) != 0.
  The `beq` branch at 0x4043f8 targets 0x404440, is taken when t1(=[0x410e50]) == at(=-0x1), and falls through when t1(=[0x410e50]) != at(=-0x1).
  The `beq` branch at 0x404448 targets 0x40446c, is taken when t3(=[0x47c5d4]) == 0, and falls through when t3(=[0x47c5d4]) != 0.
  The `beq` branch at 0x40447c targets 0x4044c0, is taken when t4(=[0x47c5f4]) == 0, and falls through when t4(=[0x47c5f4]) != 0.
  The return at 0x4044c8 has v0 = one of ?, ret(free).

- `dve_close` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x4044d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x4044d0-0x404588 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0x4044f4 loads 4 bytes from a0 (arg0 at entry) +0x84.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x40451c, `lw` at 0x404534.
  The `jalr` at 0x404508 calls printf with a0=0x4105f0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404524 calls vice_event_uninit with a0=[a0], a1=a0+136, a2=a0+176, a3=?.
  The `jalr` at 0x40453c calls vice_close with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x404558 calls free_formats [0x4032f8] with a0=a0+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x40456c calls free with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x4044f8 targets 0x404514, is taken when t7(=[a0+132]) == 0, and falls through when t7(=[a0+132]) != 0.
  The return at 0x404580 has v0 = ret(free).

- `dv_describe` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x404588 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x404588-0x404664 (220 bytes).
  It occupies 220 bytes.
  The `jalr` at 0x4045b8 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x41060c, a2=0x64766320, a3=a3 at entry (arg3).
  The `jalr` at 0x4045d8 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x410618, a2=0x410628, a3=?.
  The `jalr` at 0x4045f4 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x410630, a2=0x1, a3=?.
  The `jalr` at 0x404610 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x41063c, a2=0x2, a3=?.
  The `jalr` at 0x40462c calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x410654, a2=0x0, a3=?.
  The `jalr` at 0x404648 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x410664, a2=0x0, a3=?.
  The return at 0x40465c has v0 = 0x0.

- `dve_describe` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x404664 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x404664-0x404740 (220 bytes).
  It occupies 220 bytes.
  The `jalr` at 0x404694 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x410674, a2=0x64766320, a3=a3 at entry (arg3).
  The `jalr` at 0x4046b4 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x410680, a2=0x410690, a3=?.
  The `jalr` at 0x4046d0 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x410698, a2=0x1, a3=?.
  The `jalr` at 0x4046ec calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x4106a4, a2=0x1, a3=?.
  The `jalr` at 0x404708 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x4106bc, a2=0x0, a3=?.
  The `jalr` at 0x404724 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x4106cc, a2=0x0, a3=?.
  The return at 0x404738 has v0 = 0x0.

- `dv_dstpoolis` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x404740 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x404740-0x404828 (232 bytes).
  It occupies 232 bytes.
  The `sw` at 0x40476c stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `sw` at 0x404800 stores 4 bytes to abs 0x47c604.
  The `lw` at 0x404804 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x404778 calls dmBufferGetAllocSize with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4047b4 calls dmSetError with a0=0x1772, a1=0x4106dc, a2=0x4106e4, a3=0x3e0000.
  The `jalr` at 0x4047d4 calls dmBufferSetPoolSelectSize with a0=a1 at entry (arg1), a1=ret(dmBufferGetAllocSize), a2=?, a3=?.
  The `jalr` at 0x4047e8 calls dmBufferGetPoolFD with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x40480c calls vice_dmbuf_outpool with a0=[a0], a1=a1 at entry (arg1), a2=?, a3=?.
  The `bne` branch at 0x404794 targets 0x4047c8, is taken when t8(=ret(dmBufferGetAllocSize)) < at(=0x3e0001) (signed), and falls through when t8(=ret(dmBufferGetAllocSize)) >= at(=0x3e0001) (signed).
  The `beq` branch at 0x4047c0 targets 0x404818 and is always taken.
  The return at 0x404820 has v0 = one of -0x1, ret(vice_dmbuf_outpool).

- `dve_dstpoolis` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x404828 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x404828-0x40492c (260 bytes).
  It occupies 260 bytes.
  The `sw` at 0x4048a4 stores 4 bytes to sym(dvbitspool) +0x0.
  The `sw` at 0x4048a8 stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `lw` at 0x404914 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x40485c calls make_dvcoeff_pool [0x403194] with a0=0x14, a1=sp-12, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404880 calls dmSetError with a0=0x1777, a1=0x4106fc, a2=0x41070c, a3=?.
  The `jalr` at 0x4048b4 calls dmBufferGetAllocSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4048f0 calls dmSetError with a0=0x1772, a1=0x410728, a2=0x410730, a3=0x3e0000.
  The `jalr` at 0x404910 calls vice_dmbuf_outpool with a0=[a0], a1=?, a2=?, a3=?.
  The `beq` branch at 0x404864 targets 0x404894, is taken when v0(=ret(make_dvcoeff_pool)) == 0, and falls through when v0(=ret(make_dvcoeff_pool)) != 0.
  The `beq` branch at 0x40488c targets 0x40491c and is always taken.
  The `bne` branch at 0x4048d0 targets 0x404904, is taken when t0(=ret(dmBufferGetAllocSize)) < at(=0x3e0001) (signed), and falls through when t0(=ret(dmBufferGetAllocSize)) >= at(=0x3e0001) (signed).
  The `beq` branch at 0x4048fc targets 0x40491c and is always taken.
  The return at 0x404924 has v0 = one of -0x1, ret(vice_dmbuf_outpool).

- `dv_fd` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x40492c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x40492c-0x404950 (36 bytes).
  It occupies 36 bytes.
  The `lw` at 0x404944 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The return at 0x404948 has v0 = [a0+128].

- `dv_getsrcfilled` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x404950 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x404950-0x4049a8 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0x404980 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `jalr` at 0x40497c calls dmFifoNfilled with a0=[a0+136], a1=sp-8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x404984 targets 0x404994, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The `beq` branch at 0x40498c targets 0x404998 and is always taken.
  The return at 0x4049a0 has v0 = one of -0x1, ?.

- `dv_getdstfilled` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x4049a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x4049a8-0x404a00 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0x4049d8 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `jalr` at 0x4049d4 calls dmFifoNfilled with a0=[a0+176], a1=sp-8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x4049dc targets 0x4049ec, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The `beq` branch at 0x4049e4 targets 0x4049f0 and is always taken.
  The return at 0x4049f8 has v0 = one of -0x1, ?.

- `dv_verifysrc` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x404a00 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x404a00-0x404a48 (72 bytes).
  It occupies 72 bytes.
  The `jalr` at 0x404a2c calls verify_compressed [0x4037ec] with a0=a0 at entry (arg0), a1=0x410748, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x404a40 has v0 = ret(verify_compressed).

- `dve_verifysrc` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x404a48 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x404a48-0x404a90 (72 bytes).
  It occupies 72 bytes.
  The `jalr` at 0x404a74 calls verify_uncompressed [0x403728] with a0=a0 at entry (arg0), a1=0x41074c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x404a88 has v0 = ret(verify_uncompressed).

- `dv_verifydst` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x404a90 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x404a90-0x404ad8 (72 bytes).
  It occupies 72 bytes.
  The `jalr` at 0x404abc calls verify_uncompressed [0x403728] with a0=a0 at entry (arg0), a1=0x410750, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x404ad0 has v0 = ret(verify_uncompressed).

- `dve_verifydst` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x404ad8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x404ad8-0x404b20 (72 bytes).
  It occupies 72 bytes.
  The `jalr` at 0x404b04 calls verify_compressed [0x4037ec] with a0=a0 at entry (arg0), a1=0x410754, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x404b18 has v0 = ret(verify_compressed).

- `dv_verifycvt` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x404b20 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x404b20-0x404b38 (24 bytes).
  It occupies 24 bytes.
  The return at 0x404b30 has v0 = 0x0.

- `dv_verifysrcdstcvt` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x404b38 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x404b38-0x404bfc (196 bytes).
  It occupies 196 bytes.
  The `jalr` at 0x404b70 calls dv_verifysrc [0x404a00] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404ba0 calls dv_verifydst [0x404a90] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x404bd0 calls dv_verifycvt [0x404b20] with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `beq` branch at 0x404b5c targets 0x404b88, is taken when t6(=a0) == 0, and falls through when t6(=a0) != 0.
  The `beq` branch at 0x404b78 targets 0x404b88, is taken when v0(=ret(dv_verifysrc)) == 0, and falls through when v0(=ret(dv_verifysrc)) != 0.
  The `beq` branch at 0x404b80 targets 0x404bec and is always taken.
  The `beq` branch at 0x404b8c targets 0x404bb8, is taken when t7(=a1) == 0, and falls through when t7(=a1) != 0.
  The `beq` branch at 0x404ba8 targets 0x404bb8, is taken when v0(=ret(dv_verifydst)) == 0, and falls through when v0(=ret(dv_verifydst)) != 0.
  The `beq` branch at 0x404bb0 targets 0x404bec and is always taken.
  The `beq` branch at 0x404bbc targets 0x404be8, is taken when t8(=a2) == 0, and falls through when t8(=a2) != 0.
  The `beq` branch at 0x404bd8 targets 0x404be8, is taken when v0(=ret(dv_verifycvt)) == 0, and falls through when v0(=ret(dv_verifycvt)) != 0.
  The `beq` branch at 0x404be0 targets 0x404bec and is always taken.
  The return at 0x404bf4 has v0 = one of -0x1, 0x0.

- `dve_verifysrcdstcvt` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x404bfc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x404bfc-0x404cc0 (196 bytes).
  It occupies 196 bytes.
  The `jalr` at 0x404c34 calls dve_verifysrc [0x404a48] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404c64 calls dve_verifydst [0x404ad8] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x404c94 calls dv_verifycvt [0x404b20] with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `beq` branch at 0x404c20 targets 0x404c4c, is taken when t6(=a0) == 0, and falls through when t6(=a0) != 0.
  The `beq` branch at 0x404c3c targets 0x404c4c, is taken when v0(=ret(dve_verifysrc)) == 0, and falls through when v0(=ret(dve_verifysrc)) != 0.
  The `beq` branch at 0x404c44 targets 0x404cb0 and is always taken.
  The `beq` branch at 0x404c50 targets 0x404c7c, is taken when t7(=a1) == 0, and falls through when t7(=a1) != 0.
  The `beq` branch at 0x404c6c targets 0x404c7c, is taken when v0(=ret(dve_verifydst)) == 0, and falls through when v0(=ret(dve_verifydst)) != 0.
  The `beq` branch at 0x404c74 targets 0x404cb0 and is always taken.
  The `beq` branch at 0x404c80 targets 0x404cac, is taken when t8(=a2) == 0, and falls through when t8(=a2) != 0.
  The `beq` branch at 0x404c9c targets 0x404cac, is taken when v0(=ret(dv_verifycvt)) == 0, and falls through when v0(=ret(dv_verifycvt)) != 0.
  The `beq` branch at 0x404ca4 targets 0x404cb0 and is always taken.
  The return at 0x404cb8 has v0 = one of -0x1, 0x0.

- `dv_defaultsrc` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x404cc0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x404cc0-0x404d00 (64 bytes).
  It occupies 64 bytes.
  The `jalr` at 0x404ce4 calls get_default_compressed [0x403b24] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x404cf8 has v0 = ret(get_default_compressed).

- `dve_defaultsrc` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x404d00 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x404d00-0x404d40 (64 bytes).
  It occupies 64 bytes.
  The `jalr` at 0x404d24 calls get_default_uncompressed [0x403a78] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x404d38 has v0 = ret(get_default_uncompressed).

- `dv_defaultdst` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x404d40 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x404d40-0x404d80 (64 bytes).
  It occupies 64 bytes.
  The `jalr` at 0x404d64 calls get_default_uncompressed [0x403a78] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x404d78 has v0 = ret(get_default_uncompressed).

- `dv_defaultcvt` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x404d80 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x404d80-0x404d98 (24 bytes).
  It occupies 24 bytes.
  The return at 0x404d90 has v0 = 0x0.

- `dve_defaultdst` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x404d98 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x404d98-0x404dd8 (64 bytes).
  It occupies 64 bytes.
  The `jalr` at 0x404dbc calls get_default_compressed [0x403b24] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x404dd0 has v0 = ret(get_default_compressed).

- `threadarg_enqueue` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x404dd8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x404dd8-0x404e88 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0x404e10 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0x404e18 stores 4 bytes to ret(malloc) +0x0.
  The `lw` at 0x404e28 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0x404e2c stores 4 bytes to ret(malloc) +0x4.
  The `lw` at 0x404e38 loads 4 bytes from abs 0x47c5d4.
  The `jalr` at 0x404dfc calls malloc with a0=0x8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404e3c calls dmBufferEnqueue with a0=[0x47c5d4], a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0x404e68 calls fprintf with a0=sym(__iob)+32, a1=0x410758, a2=ret(malloc), a3=?.
  The `bne` branch at 0x404e44 targets 0x404e54, is taken when v0(=ret(dmBufferEnqueue)) != 0, and falls through when v0(=ret(dmBufferEnqueue)) == 0.
  The `beq` branch at 0x404e4c targets 0x404e78 and is always taken.
  The return at 0x404e80 has v0 = 0x0.

- `threadarg_dequeue` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x404e88 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x404e88-0x405454 (1484 bytes).
  It occupies 1484 bytes.
  The `lw` at 0x404eb4 loads 4 bytes from abs 0x47c5d4.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x404ec8, `lw` at 0x404ed8.
  The `sw` at 0x404ecc stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `sw` at 0x404edc stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `jalr` at 0x404eb0 calls dmBufferDequeue with a0=[0x47c5d4], a1=sp-4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404ee8 calls free with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x404eb8 targets 0x404efc, is taken when v0(=ret(dmBufferDequeue)) != 0, and falls through when v0(=ret(dmBufferDequeue)) == 0.
  The `beq` branch at 0x404ef4 targets 0x404f00 and is always taken.
  The return at 0x404f08 has v0 = one of -0x1, 0x0.
  The instructions from 0x404f10 to 0x405450 are not reached by any path from the entry, and their branches are not listed.

- `dvsend_thread_looping` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x404f10 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x404f10-0x405454 (1348 bytes).
  It occupies 1348 bytes.
  3 such `lw` accesses load 4 bytes from abs 0x410e54, including `lw` at 0x404f88, `lw` at 0x404fd4, `lw` at 0x405018.
  7 such `lw` accesses load 4 bytes from ?, including `lw` at 0x404fac, `lw` at 0x4050d4, `lw` at 0x4051b0.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x404fcc, `sw` at 0x4050f4, `sw` at 0x405298.
  2 such `lw` accesses load 4 bytes from abs 0x47c5d4, including `lw` at 0x405040, `lw` at 0x405420.
  2 such `lw` accesses load 4 bytes from abs 0x47c5dc, including `lw` at 0x405078, `lw` at 0x40516c.
  3 such `lw` accesses load 4 bytes from abs 0x47c5e0, including `lw` at 0x4050b0, `lw` at 0x4050fc, `lw` at 0x405140.
  3 such `lw` accesses load 4 bytes from abs 0x47c604, including `lw` at 0x405254, `lw` at 0x4052a0, `lw` at 0x4052e4.
  The `jalr` at 0x404f3c calls signal with a0=0x1, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404f50 calls prctl with a0=0xc, a1=?, a2=?, a3=?.
  The `jalr` at 0x404f68 calls memset with a0=sp-144, a1=0x0, a2=0x80, a3=?.
  The `jalr` at 0x404fdc calls select with a0=[0x410e54]+1, a1=sp-144, a2=0x0, a3=0x0.
  The `jalr` at 0x404ff8 calls perror with a0=0x410778, a1=?, a2=?, a3=?.
  The `jalr` at 0x405020 calls select with a0=[0x410e54]+1, a1=sp-144, a2=0x0, a3=0x0.
  The `jalr` at 0x40503c calls dmBufferGetQueueFilled with a0=[0x47c5d4], a1=?, a2=?, a3=?.
  The `jalr` at 0x405058 calls threadarg_dequeue [0x404e88] with a0=sp-8, a1=?, a2=?, a3=?.
  The `jalr` at 0x405074 calls dmBufferAllocate with a0=[0x47c5dc], a1=sp-16, a2=?, a3=?.
  The `jalr` at 0x405090 calls memset with a0=sp-144, a1=0x0, a2=0x80, a3=?.
  The `jalr` at 0x405104 calls select with a0=[0x47c5e0]+1, a1=0x0, a2=sp-144, a3=0x0.
  The `jalr` at 0x405120 calls perror with a0=0x41079c, a1=?, a2=?, a3=?.
  The `jalr` at 0x405148 calls select with a0=[0x47c5e0]+1, a1=0x0, a2=sp-144, a3=0x0.
  The `jalr` at 0x405168 calls dmBufferAllocate with a0=[0x47c5dc], a1=sp-16, a2=?, a3=?.
  The `jalr` at 0x405184 calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40519c calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4051c4 calls qparsemain with a0=ret(dmBufferMapData), a1=?, a2=?, a3=ret(dmBufferMapData).
  The `jalr` at 0x4051dc calls dmBufferGetUSTMSCpair with a0=sp-168, a1=?, a2=?, a3=?.
  The `jalr` at 0x405218 calls dmBufferSetUSTMSCpair with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405234 calls memset with a0=sp-144, a1=0x0, a2=0x80, a3=?.
  The `jalr` at 0x4052a8 calls select with a0=[0x47c604]+1, a1=0x0, a2=sp-144, a3=0x0.
  The `jalr` at 0x4052c4 calls perror with a0=0x4107bc, a1=?, a2=?, a3=?.
  The `jalr` at 0x4052ec calls select with a0=[0x47c604]+1, a1=0x0, a2=sp-144, a3=0x0.
  The `jalr` at 0x40531c calls vice_dmbuf_send with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405334 calls getpid with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405358 calls fprintf with a0=sym(__iob)+32, a1=0x4107dc, a2=ret(getpid), a3=?.
  The `jalr` at 0x405370 calls vice_dms_geterrs with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405384 calls getpid with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4053a8 calls fprintf with a0=sym(__iob)+32, a1=0x4107fc, a2=ret(getpid), a3=?.
  The `jalr` at 0x4053bc calls dmBufferFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4053d0 calls dmBufferFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4053e8 calls getenv with a0=0x410820, a1=?, a2=?, a3=?.
  The `jalr` at 0x405408 calls fprintf with a0=sym(__iob)+32, a1=0x41082c, a2=?, a3=?.
  The `jalr` at 0x40541c calls dmBufferGetQueueFilled with a0=[0x47c5d4], a1=?, a2=?, a3=?.
  The `bgez` branch at 0x404f94 targets 0x404fa4, is taken when t6(=[0x410e54]) >= 0 (signed), and falls through when t6(=[0x410e54]) < 0 (signed).
  The `bgez` branch at 0x404fb0 targets 0x404fc4, is taken when t6(=[0x410e54]) >= 0 (signed), and falls through when t6(=[0x410e54]) < 0 (signed).
  The `beq` branch at 0x404fb8 targets 0x404fc4, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x404fe8 targets 0x405034, is taken when v0(=ret(select)) != at(=-0x1), and falls through when v0(=ret(select)) == at(=-0x1).
  The `beq` branch at 0x40502c targets 0x404ff0, is taken when v0(=ret(select)) == at(=-0x1), and falls through when v0(=ret(select)) != at(=-0x1).
  The `blez` branch at 0x405044 targets 0x404f5c, is taken when v0(=ret(dmBufferGetQueueFilled)) <= 0 (signed), and falls through when v0(=ret(dmBufferGetQueueFilled)) > 0 (signed).
  The `bne` branch at 0x405060 targets 0x4053e0, is taken when v0(=ret(threadarg_dequeue)) != 0, and falls through when v0(=ret(threadarg_dequeue)) == 0.
  The `beq` branch at 0x40507c targets 0x405178, is taken when v0(=ret(dmBufferAllocate)) == 0, and falls through when v0(=ret(dmBufferAllocate)) != 0.
  The `bgez` branch at 0x4050bc targets 0x4050cc, is taken when t7(=[0x47c5e0]) >= 0 (signed), and falls through when t7(=[0x47c5e0]) < 0 (signed).
  The `bgez` branch at 0x4050d8 targets 0x4050ec, is taken when t7(=[0x47c5e0]) >= 0 (signed), and falls through when t7(=[0x47c5e0]) < 0 (signed).
  The `beq` branch at 0x4050e0 targets 0x4050ec, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x405110 targets 0x40515c, is taken when v0(=ret(select)) != at(=-0x1), and falls through when v0(=ret(select)) == at(=-0x1).
  The `beq` branch at 0x405154 targets 0x405118, is taken when v0(=ret(select)) == at(=-0x1), and falls through when v0(=ret(select)) != at(=-0x1).
  The `bne` branch at 0x405170 targets 0x405084, is taken when v0(=ret(dmBufferAllocate)) != 0, and falls through when v0(=ret(dmBufferAllocate)) == 0.
  The `bgez` branch at 0x405260 targets 0x405270, is taken when t1(=[0x47c604]) >= 0 (signed), and falls through when t1(=[0x47c604]) < 0 (signed).
  The `bgez` branch at 0x40527c targets 0x405290, is taken when t1(=[0x47c604]) >= 0 (signed), and falls through when t1(=[0x47c604]) < 0 (signed).
  The `beq` branch at 0x405284 targets 0x405290, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x4052b4 targets 0x405300, is taken when v0(=ret(select)) != at(=-0x1), and falls through when v0(=ret(select)) == at(=-0x1).
  The `beq` branch at 0x4052f8 targets 0x4052bc, is taken when v0(=ret(select)) == at(=-0x1), and falls through when v0(=ret(select)) != at(=-0x1).
  The `bne` branch at 0x405328 targets 0x405368, is taken when v0(=ret(vice_dmbuf_send)) != at(=-0x1), and falls through when v0(=ret(vice_dmbuf_send)) == at(=-0x1).
  The `beq` branch at 0x405360 targets 0x4053b4 and is always taken.
  The `beq` branch at 0x405378 targets 0x4053b4, is taken when v0(=ret(vice_dms_geterrs)) == 0, and falls through when v0(=ret(vice_dms_geterrs)) != 0.
  The `beq` branch at 0x4053d8 targets 0x405414 and is always taken.
  The `beq` branch at 0x4053f0 targets 0x405414, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `bgtz` branch at 0x405424 targets 0x40504c, is taken when v0(=ret(dmBufferGetQueueFilled)) > 0 (signed), and falls through when v0(=ret(dmBufferGetQueueFilled)) <= 0 (signed).
  The `beq` branch at 0x40542c targets 0x404f5c and is always taken.
  The instructions from 0x405434 to 0x405450 are not reached by any path from the entry, and their branches are not listed.

- `child_exit_handler` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x405454 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x405454-0x4054ac (88 bytes).
  It occupies 88 bytes.
  The `jalr` at 0x405474 calls wait with a0=sp-8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x405490 calls sigset with a0=0x12, a1=0x405454, a2=?, a3=?.
  The return at 0x4054a4 has v0 = ret(sigset).

- `_dv_go` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x4054ac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x4054ac-0x405964 (1208 bytes).
  It occupies 1208 bytes.
  The `lw` at 0x4054d0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x4054e0 loads 4 bytes from a0 (arg0 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdc, including `lw` at 0x4054ec, `lw` at 0x405798.
  The `sw` at 0x405510 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  The `lbu` at 0x405518 loads 1 byte from a0 (arg0 at entry) +0xd9.
  The `sw` at 0x405530 stores 4 bytes to a0 (arg0 at entry) +0x70.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x405570, `lw` at 0x4055b8, `lw` at 0x405644.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xdc, including `sw` at 0x4055c8, `sw` at 0x4056dc.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xe0, including `sw` at 0x4055d8, `sw` at 0x405658, `sw` at 0x40569c.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x2c, including `sw` at 0x40571c, `sw` at 0x40572c, `sw` at 0x40573c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0x405724, `lw` at 0x405734.
  The `sw` at 0x405778 stores 4 bytes to a0 (arg0 at entry) +0x54.
  The `sw` at 0x405784 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `lbu` at 0x40578c loads 1 byte from a0 (arg0 at entry) +0xd8.
  The `sw` at 0x405818 stores 4 bytes to abs 0x47c5d8.
  The `lw` at 0x405820 loads 4 bytes from abs 0x47c5d8.
  The `lw` at 0x40587c loads 4 bytes from abs 0x47c5d4.
  The `sw` at 0x40588c stores 4 bytes to abs 0x410e54.
  The `lw` at 0x405890 loads 4 bytes from abs 0x410e54.
  The `sw` at 0x405904 stores 4 bytes to abs 0x410e50.
  The `lw` at 0x405908 loads 4 bytes from abs 0x410e50.
  The `jalr` at 0x405540 calls dmParamsGetInt with a0=[a0+4], a1=0x410844, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40555c calls vice_file with a0=0x410854, a1=?, a2=?, a3=?.
  The `jalr` at 0x405580 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=0x0.
  The `jalr` at 0x405594 calls vice_file with a0=0x410860, a1=?, a2=?, a3=?.
  The `jalr` at 0x4055b4 calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=?.
  The `jalr` at 0x4055e8 calls dmParamsGetString with a0=[a0+4], a1=0x41086c, a2=?, a3=?.
  The `jalr` at 0x405604 calls strcmp with a0=ret(dmParamsGetString), a1=0x410884, a2=?, a3=?.
  The `jalr` at 0x40561c calls vice_file with a0=0x410888, a1=?, a2=?, a3=?.
  The `jalr` at 0x405640 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=0x0.
  The `jalr` at 0x405664 calls vice_file with a0=0x410898, a1=?, a2=?, a3=?.
  The `jalr` at 0x405688 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=0x0.
  The `jalr` at 0x4056a8 calls vice_file with a0=0x4108a8, a1=?, a2=?, a3=?.
  The `jalr` at 0x4056c8 calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=?.
  The `jalr` at 0x4056e8 calls vice_file with a0=0x4108b4, a1=?, a2=?, a3=?.
  The `jalr` at 0x405708 calls vice_load_bsp_table with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=?.
  The `jalr` at 0x405748 calls vice_etc_dramp with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x405764 calls dmic_dram_init_decode with a0=ret(vice_etc_dramp), a1=?, a2=?, a3=?.
  The `jalr` at 0x4057c0 calls make_qparse_pool [0x4030a0] with a0=one of 0x2, 0x3, a1=?, a2=?, a3=?.
  The `jalr` at 0x4057e4 calls dmSetError with a0=0x1778, a1=0x4108c0, a2=0x4108c8, a3=?.
  The `jalr` at 0x405800 calls getenv with a0=0x4108e4, a1=?, a2=?, a3=?.
  The `jalr` at 0x405838 calls dmBufferCreateQueue with a0=0x0, a1=0x47c5d4, a2=?, a3=?.
  The `jalr` at 0x40585c calls dmSetError with a0=0x1778, a1=0x4108f4, a2=0x4108fc, a3=?.
  The `jalr` at 0x405878 calls dmBufferGetQueueFD with a0=[0x47c5d4], a1=?, a2=?, a3=?.
  The `jalr` at 0x4058b4 calls dmSetError with a0=0x1778, a1=0x410918, a2=0x410920, a3=?.
  The `jalr` at 0x4058d4 calls sigset with a0=0x12, a1=0x405454, a2=?, a3=?.
  The `jalr` at 0x4058f0 calls sproc with a0=sym(dvsend_thread_looping), a1=0x42, a2=0x0, a3=?.
  The `jalr` at 0x405920 calls perror with a0=0x41093c, a1=?, a2=?, a3=?.
  The `jalr` at 0x405940 calls vice_event_start with a0=[a0], a1=a0+28, a2=?, a3=?.
  The `bne` branch at 0x4054f0 targets 0x405504, is taken when t0(=[a0+220]) != at(=0xa), and falls through when t0(=[a0+220]) == at(=0xa).
  The `beq` branch at 0x4054fc targets 0x40550c and is always taken.
  The `beq` branch at 0x40551c targets 0x405534, is taken when t5(=[a0+217]:1) == 0, and falls through when t5(=[a0+217]:1) != 0.
  The `beq` branch at 0x40552c targets 0x4057f8 and is always taken.
  The `bne` branch at 0x40554c targets 0x4055dc, is taken when v0(=ret(dmParamsGetInt)) != at(=0x1e0), and falls through when v0(=ret(dmParamsGetInt)) == at(=0x1e0).
  The `beq` branch at 0x4055d4 targets 0x4056e0 and is always taken.
  The `bne` branch at 0x40560c targets 0x40565c, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x405654 targets 0x4056a0 and is always taken.
  The `bne` branch at 0x405790 targets 0x4057f8, is taken when t8(=[a0+216]:1) != 0, and falls through when t8(=[a0+216]:1) == 0.
  The `bne` branch at 0x4057a0 targets 0x4057b0, is taken when t0(=[a0+220]) != at(=0xa), and falls through when t0(=[a0+220]) == at(=0xa).
  The `beq` branch at 0x4057a8 targets 0x4057b4 and is always taken.
  The `beq` branch at 0x4057c8 targets 0x4057f8, is taken when v0(=ret(make_qparse_pool)) == 0, and falls through when v0(=ret(make_qparse_pool)) != 0.
  The `beq` branch at 0x4057f0 targets 0x405950 and is always taken.
  The `beq` branch at 0x405808 targets 0x40581c, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `beq` branch at 0x405824 targets 0x405934, is taken when t6(=[0x47c5d8]) == 0, and falls through when t6(=[0x47c5d8]) != 0.
  The `beq` branch at 0x405840 targets 0x405870, is taken when v0(=ret(dmBufferCreateQueue)) == 0, and falls through when v0(=ret(dmBufferCreateQueue)) != 0.
  The `beq` branch at 0x405868 targets 0x405950 and is always taken.
  The `bne` branch at 0x405898 targets 0x4058c8, is taken when t2(=[0x410e54]) != at(=-0x1), and falls through when t2(=[0x410e54]) == at(=-0x1).
  The `beq` branch at 0x4058c0 targets 0x405950 and is always taken.
  The `bne` branch at 0x405910 targets 0x405934, is taken when t3(=[0x410e50]) != at(=-0x1), and falls through when t3(=[0x410e50]) == at(=-0x1).
  The `beq` branch at 0x40592c targets 0x405950 and is always taken.
  The return at 0x40595c has v0 = one of -0x1, 0x0.

- `dv_send` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x405964 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x405964-0x405fb4 (1616 bytes).
  It occupies 1616 bytes.
  The `lw` at 0x40599c loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x4059a8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  2 such `lw` accesses load 4 bytes from abs 0x47c5dc, including `lw` at 0x4059d0, `lw` at 0x405aac.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xd8, including `lbu` at 0x405a08, `lbu` at 0x405c24.
  The `lw` at 0x405a24 loads 4 bytes from abs 0x47c5d8.
  The `lw` at 0x405b14 loads 4 bytes from a0 (arg0 at entry) +0xdc.
  The `lw` at 0x405b18 loads 4 bytes from a0 (arg0 at entry) +0xe0.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x405b94, `lw` at 0x405bec, `lw` at 0x405f1c.
  The `sw` at 0x405d64 stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `lw` at 0x405d84 loads 4 bytes from a0 (arg0 at entry) +0xc.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0x405e00, `sw` at 0x405f9c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x405e08, `lw` at 0x405e2c, `lw` at 0x405f20.
  The `lw` at 0x405e14 loads 4 bytes from a0 (arg0 at entry) +0x14.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14, including `sw` at 0x405efc, `sw` at 0x405f6c.
  The `sw` at 0x405f64 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `lw` at 0x405f80 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `jalr` at 0x4059f0 calls dmSetError with a0=0x1778, a1=0x410944, a2=0x41094c, a3=a3 at entry (arg3).
  The `jalr` at 0x405a48 calls threadarg_enqueue [0x404dd8] with a0=sp-24, a1=?, a2=?, a3=?.
  The `jalr` at 0x405a60 calls dmBufferAttach with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x405a88 calls dmSetError with a0=0x1778, a1=0x410960, a2=0x410968, a3=?.
  The `jalr` at 0x405aa8 calls dmBufferAllocate with a0=[0x47c5dc], a1=sp-16, a2=?, a3=?.
  The `jalr` at 0x405acc calls dmSetError with a0=0x1778, a1=0x41097c, a2=0x410984, a3=?.
  The `jalr` at 0x405ae8 calls dmBufferMapData with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x405b00 calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405b28 calls qparsemain with a0=ret(dmBufferMapData), a1=[a0+220], a2=[a0+224], a3=ret(dmBufferMapData).
  The `jalr` at 0x405b40 calls dmBufferGetUSTMSCpair with a0=sp-64, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x405b7c calls dmBufferSetUSTMSCpair with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405ba4 calls vice_dmbuf_send with a0=[a0], a1=?, a2=a0+136, a3=a0+100.
  The `jalr` at 0x405bcc calls dmSetError with a0=0x1778, a1=0x41099c, a2=0x4109a4, a3=?.
  The `jalr` at 0x405be8 calls vice_dms_geterrs with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x405c0c calls dmSetError with a0=0x1778, a1=0x4109b8, a2=0x4109c0, a3=?.
  The `jalr` at 0x405c38 calls dmBufferFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405c64 calls dmParamsCopyAllElems with a0=?, a1=[a0+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x405c8c calls dmParamsSetEnum with a0=?, a1=0x4109d4, a2=0x44c, a3=?.
  The `jalr` at 0x405cbc calls dmParamsCopyAllElems with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405ce0 calls dmParamsIsPresent with a0=?, a1=0x4109ec, a2=?, a3=?.
  The `jalr` at 0x405cfc calls dmParamsGetEnum with a0=?, a1=0x410a00, a2=?, a3=?.
  The `jalr` at 0x405d40 calls dmParamsSetEnum with a0=?, a1=0x410a14, a2=?, a3=?.
  The `jalr` at 0x405d54 calls dmImageFrameSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405d80 calls dmParamsCopyAllElems with a0=?, a1=[a0+12], a2=?, a3=?.
  The `jalr` at 0x405da4 calls _dv_go [0x4054ac] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x405dd0 calls needsConvert [0x403470] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405de8 calls dmImageFrameSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405e40 calls dmBufferDestroyPool with a0=[a0+16], a1=?, a2=?, a3=?.
  The `jalr` at 0x405e54 calls dmParamsCreate with a0=sp-40, a1=?, a2=?, a3=?.
  The `jalr` at 0x405e84 calls dmBufferSetPoolDefaults with a0=?, a1=0x2, a2=?, a3=0x0.
  The `jalr` at 0x405eac calls _poolneeds [0x403060] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x405ec8 calls dmBufferCreatePool with a0=?, a1=a0+16, a2=?, a3=?.
  The `jalr` at 0x405eec calls dmParamsGetInt with a0=?, a1=0x410a28, a2=?, a3=?.
  The `jalr` at 0x405f08 calls dmParamsDestroy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405f24 calls vice_dmbuf_outpool with a0=[a0], a1=[a0+16], a2=?, a3=?.
  The `jalr` at 0x405f54 calls dmBufferDestroyPool with a0=[a0+16], a1=?, a2=?, a3=?.
  The `jalr` at 0x405f7c calls vice_dmbuf_outpool with a0=[a0], a1=[a0+116], a2=?, a3=?.
  The `bne` branch at 0x4059ac targets 0x405c4c, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `bne` branch at 0x4059b8 targets 0x405c4c, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `bne` branch at 0x4059c4 targets 0x405c4c, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0x4059d4 targets 0x405a04, is taken when t2(=[0x47c5dc]) != 0, and falls through when t2(=[0x47c5dc]) == 0.
  The `beq` branch at 0x4059fc targets 0x405fa0 and is always taken.
  The `beq` branch at 0x405a0c targets 0x405a20, is taken when t4(=[a0+216]:1) == 0, and falls through when t4(=[a0+216]:1) != 0.
  The `beq` branch at 0x405a18 targets 0x405b88 and is always taken.
  The `beq` branch at 0x405a28 targets 0x405a9c, is taken when t7(=[0x47c5d8]) == 0, and falls through when t7(=[0x47c5d8]) != 0.
  The `bne` branch at 0x405a50 targets 0x405a74, is taken when v0(=ret(threadarg_enqueue)) != 0, and falls through when v0(=ret(threadarg_enqueue)) == 0.
  The `beq` branch at 0x405a6c targets 0x405fa0 and is always taken.
  The `beq` branch at 0x405a94 targets 0x405fa0 and is always taken.
  The `beq` branch at 0x405ab0 targets 0x405ae0, is taken when v0(=ret(dmBufferAllocate)) == 0, and falls through when v0(=ret(dmBufferAllocate)) != 0.
  The `beq` branch at 0x405ad8 targets 0x405fa0 and is always taken.
  The `bne` branch at 0x405bb0 targets 0x405be0, is taken when v0(=ret(vice_dmbuf_send)) != at(=-0x1), and falls through when v0(=ret(vice_dmbuf_send)) == at(=-0x1).
  The `beq` branch at 0x405bd8 targets 0x405fa0 and is always taken.
  The `beq` branch at 0x405bf0 targets 0x405c20, is taken when v0(=ret(vice_dms_geterrs)) == 0, and falls through when v0(=ret(vice_dms_geterrs)) != 0.
  The `beq` branch at 0x405c18 targets 0x405fa0 and is always taken.
  The `bne` branch at 0x405c28 targets 0x405c44, is taken when t6(=[a0+216]:1) != 0, and falls through when t6(=[a0+216]:1) == 0.
  The `beq` branch at 0x405c44 targets 0x405fa0 and is always taken.
  The `beq` branch at 0x405c50 targets 0x405ca4, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x405c6c targets 0x405c7c, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x405c74 targets 0x405fa0 and is always taken.
  The `beq` branch at 0x405c94 targets 0x405ca4, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x405c9c targets 0x405fa0 and is always taken.
  The `beq` branch at 0x405ca8 targets 0x405d68, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x405cc4 targets 0x405cd4, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x405ccc targets 0x405fa0 and is always taken.
  The `beq` branch at 0x405ce8 targets 0x405d28, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x405d14 targets 0x405d30, is taken when t0(=ret(dmParamsGetEnum)) == at(=0x3f0), and falls through when t0(=ret(dmParamsGetEnum)) != at(=0x3f0).
  The `beq` branch at 0x405d20 targets 0x405d30 and is always taken.
  The `beq` branch at 0x405d6c targets 0x405d98, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `beq` branch at 0x405d88 targets 0x405d98, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x405d90 targets 0x405fa0 and is always taken.
  The `bne` branch at 0x405db0 targets 0x405dc0, is taken when v0(=ret(_dv_go)) != at(=-0x1), and falls through when v0(=ret(_dv_go)) == at(=-0x1).
  The `beq` branch at 0x405db8 targets 0x405fa0 and is always taken.
  The `beq` branch at 0x405dd8 targets 0x405f3c, is taken when v0(=ret(needsConvert)) == 0, and falls through when v0(=ret(needsConvert)) != 0.
  The `beq` branch at 0x405e0c targets 0x405e28, is taken when t9(=[a0+16]) == 0, and falls through when t9(=[a0+16]) != 0.
  The `beq` branch at 0x405e20 targets 0x405a04, is taken when t0(=[a0+20]) >= t1(=ret(dmImageFrameSize)) (signed), and falls through when t0(=[a0+20]) < t1(=ret(dmImageFrameSize)) (signed).
  The `beq` branch at 0x405e30 targets 0x405e4c, is taken when t3(=[a0+16]) == 0, and falls through when t3(=[a0+16]) != 0.
  The `beq` branch at 0x405e5c targets 0x405e6c, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x405e64 targets 0x405fa0 and is always taken.
  The `beq` branch at 0x405e8c targets 0x405e9c, is taken when v0(=ret(dmBufferSetPoolDefaults)) == 0, and falls through when v0(=ret(dmBufferSetPoolDefaults)) != 0.
  The `beq` branch at 0x405e94 targets 0x405fa0 and is always taken.
  The `beq` branch at 0x405ed0 targets 0x405ee0, is taken when v0(=ret(dmBufferCreatePool)) == 0, and falls through when v0(=ret(dmBufferCreatePool)) != 0.
  The `beq` branch at 0x405ed8 targets 0x405fa0 and is always taken.
  The `beq` branch at 0x405f2c targets 0x405a04, is taken when v0(=ret(vice_dmbuf_outpool)) == 0, and falls through when v0(=ret(vice_dmbuf_outpool)) != 0.
  The `beq` branch at 0x405f34 targets 0x405fa0 and is always taken.
  The `beq` branch at 0x405f44 targets 0x405f94, is taken when t9(=[a0+16]) == 0, and falls through when t9(=[a0+16]) != 0.
  The `beq` branch at 0x405f84 targets 0x405f94, is taken when v0(=ret(vice_dmbuf_outpool)) == 0, and falls through when v0(=ret(vice_dmbuf_outpool)) != 0.
  The `beq` branch at 0x405f8c targets 0x405fa0 and is always taken.
  The `beq` branch at 0x405f98 targets 0x405a04 and is always taken.
  The return at 0x405fac has v0 = one of -0x1, 0x0.

- `_e_go` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x405fb4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x405fb4-0x406398 (996 bytes).
  It occupies 996 bytes.
  The `lw` at 0x405fdc loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x405fec loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x405ff8 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0x406004 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  2 such `sw` accesses store 4 bytes to sym(qno4passMode) +0x0, including `sw` at 0x40605c, `sw` at 0x406070.
  2 such `sw` accesses store 4 bytes to sym(rollMode) +0x0, including `sw` at 0x406068, `sw` at 0x406078.
  The `lw` at 0x4060a0 loads 4 bytes from sym(qno4passMode) +0x0.
  2 such `sw` accesses store 4 bytes to sym(dvNoiseMode) +0x0, including `sw` at 0x4060a4, `sw` at 0x40610c.
  The `lw` at 0x4060c8 loads 4 bytes from sym(rollMode) +0x0.
  3 such `sw` accesses store 4 bytes to sym(videoMode) +0x0, including `sw` at 0x40613c, `sw` at 0x406220, `sw` at 0x406274.
  2 such `sw` accesses store 4 bytes to sym(mbNumber) +0x0, including `sw` at 0x406150, `sw` at 0x4061c0.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x406174, `lw` at 0x40624c, `lw` at 0x4062a0.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xdc, including `sw` at 0x406184, `sw` at 0x406260, `sw` at 0x4062b0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x7c, including `sw` at 0x406194, `sw` at 0x4061c4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x78, including `sw` at 0x4061a8, `sw` at 0x4061d4.
  The `sw` at 0x4062bc stores 4 bytes to a0 (arg0 at entry) +0xe0.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x2c, including `sw` at 0x4062c4, `sw` at 0x4062d4, `sw` at 0x4062e4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0x4062cc, `lw` at 0x4062dc.
  The `sw` at 0x406320 stores 4 bytes to a0 (arg0 at entry) +0x54.
  The `sw` at 0x40632c stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `jalr` at 0x406010 calls dmParamsIsPresent with a0=[a0+12], a1=0x410a38, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40602c calls dmParamsGetFloat with a0=[a0+12], a1=0x410a54, a2=?, a3=?.
  The `jalr` at 0x406084 calls getenv with a0=0x410a70, a1=?, a2=?, a3=?.
  The `jalr` at 0x4060f8 calls printf with a0=0x410a7c, a1=one of 0x410a98, 0x410aa0, a2=one of 0x410aa8, 0x410ab4, a3=?.
  The `jalr` at 0x40611c calls dmParamsGetInt with a0=[a0+4], a1=0x410ac4, a2=?, a3=?.
  The `jalr` at 0x40614c calls vice_file with a0=0x410ad4, a1=?, a2=?, a3=?.
  The `jalr` at 0x406170 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=0x0.
  The `jalr` at 0x4061e4 calls dmParamsGetString with a0=[a0+8], a1=0x410ae8, a2=?, a3=?.
  The `jalr` at 0x406200 calls strcmp with a0=ret(dmParamsGetString), a1=0x410b00, a2=?, a3=?.
  The `jalr` at 0x406224 calls vice_file with a0=0x410b04, a1=?, a2=?, a3=?.
  The `jalr` at 0x406248 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=0x0.
  The `jalr` at 0x406278 calls vice_file with a0=0x410b18, a1=?, a2=?, a3=?.
  The `jalr` at 0x40629c calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=0x0.
  The `jalr` at 0x4062f0 calls vice_etc_dramp with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x40630c calls dmic_dram_init_encode with a0=ret(vice_etc_dramp), a1=?, a2=?, a3=?.
  The `jalr` at 0x406334 calls initCvLength with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406344 calls initVLC16fromVLC with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406358 calls buildQMShft with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x406374 calls vice_event_start with a0=[a0], a1=a0+28, a2=?, a3=?.
  The `beq` branch at 0x406018 targets 0x40606c, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `bc1f` branch at 0x40604c targets 0x40606c, is taken when not (f4 < f0(=ret(dmParamsGetFloat)) (c.lt.d at 0x406044)), and falls through when f4 < f0(=ret(dmParamsGetFloat)) (c.lt.d at 0x406044).
  The `beq` branch at 0x406064 targets 0x40607c and is always taken.
  The `beq` branch at 0x40608c targets 0x406108, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `beq` branch at 0x4060a8 targets 0x4060bc, is taken when t4(=[sym(qno4passMode)]) == 0, and falls through when t4(=[sym(qno4passMode)]) != 0.
  The `beq` branch at 0x4060b4 targets 0x4060c4 and is always taken.
  The `beq` branch at 0x4060cc targets 0x4060e0, is taken when t5(=[sym(rollMode)]) == 0, and falls through when t5(=[sym(rollMode)]) != 0.
  The `beq` branch at 0x4060d8 targets 0x4060e8 and is always taken.
  The `beq` branch at 0x406100 targets 0x406110 and is always taken.
  The `bne` branch at 0x406128 targets 0x4061ac, is taken when v0(=ret(dmParamsGetInt)) != at(=0x1e0), and falls through when v0(=ret(dmParamsGetInt)) == at(=0x1e0).
  The `beq` branch at 0x4061a4 targets 0x4062b4 and is always taken.
  The `bne` branch at 0x406208 targets 0x406264, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x40625c targets 0x4062b4 and is always taken.
  The return at 0x406390 has v0 = 0x0.

- `dve_send` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x406398 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x406398-0x406908 (1392 bytes).
  It occupies 1392 bytes.
  The `lw` at 0x4063dc loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x4063e8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x4064e0 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0x406550 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `lw` at 0x40656c loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `lw` at 0x4065a8 loads 4 bytes from a0 (arg0 at entry) +0x18.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x4065d0, `lw` at 0x4065f4, `lw` at 0x4066f8.
  The `lw` at 0x4065dc loads 4 bytes from a0 (arg0 at entry) +0x14.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14, including `sw` at 0x4066c4, `sw` at 0x4066e8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x40683c, `lw` at 0x40689c.
  The `jalr` at 0x406404 calls dmParamsCopyAllElems with a0=?, a1=[a0+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x406434 calls dmParamsCopyAllElems with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406458 calls dmParamsGetEnum with a0=?, a1=0x410b2c, a2=?, a3=?.
  The `jalr` at 0x406490 calls dmParamsSetEnum with a0=?, a1=0x410b40, a2=?, a3=?.
  The `jalr` at 0x4064ac calls dmParamsSetEnum with a0=?, a1=0x410b54, a2=0x44c, a3=?.
  The `jalr` at 0x4064dc calls dmParamsCopyAllElems with a0=?, a1=[a0+12], a2=?, a3=?.
  The `jalr` at 0x406524 calls _e_go [0x405fb4] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x406540 calls needsConvert [0x403470] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40655c calls dmBufferGetSize with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x406590 calls dmSetError with a0=0x1777, a1=0x410b6c, a2=0x410b74, a3=?.
  The `jalr` at 0x4065bc calls dmImageFrameSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406608 calls dmBufferDestroyPool with a0=[a0+16], a1=?, a2=?, a3=?.
  The `jalr` at 0x40661c calls dmParamsCreate with a0=sp-40, a1=?, a2=?, a3=?.
  The `jalr` at 0x40664c calls dmBufferSetPoolDefaults with a0=?, a1=0x2, a2=?, a3=0x0.
  The `jalr` at 0x406674 calls _poolneeds [0x403060] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x406690 calls dmBufferCreatePool with a0=?, a1=a0+16, a2=?, a3=?.
  The `jalr` at 0x4066b4 calls dmParamsGetInt with a0=?, a1=0x410b84, a2=?, a3=?.
  The `jalr` at 0x4066d0 calls dmParamsDestroy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4066f4 calls dmBufferAllocate with a0=[a0+16], a1=sp-12, a2=?, a3=?.
  The `jalr` at 0x406714 calls dmBufferMapData with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x40672c calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406750 calls dmICAnyToAny with a0=ret(dmBufferMapData), a1=ret(dmBufferMapData), a2=?, a3=?.
  The `jalr` at 0x406774 calls dmBufferSetSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406794 calls dmBufferGetImageType with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x4067b0 calls dmBufferSetImageType with a0=?, a1=ret(dmBufferGetImageType), a2=?, a3=?.
  The `jalr` at 0x4067d4 calls dmBufferGetUSTMSCpair with a0=sp-64, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x406810 calls dmBufferSetUSTMSCpair with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406850 calls vice_dmbuf_send with a0=[a0], a1=?, a2=a0+136, a3=a0+100.
  The `jalr` at 0x406878 calls dmSetError with a0=0x1777, a1=0x410b94, a2=0x410b9c, a3=?.
  The `jalr` at 0x406898 calls vice_dms_geterrs with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x4068bc calls dmSetError with a0=0x1777, a1=0x410bb4, a2=0x410bbc, a3=?.
  The `jalr` at 0x4068e4 calls dmBufferFree with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4063f0 targets 0x40641c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x40640c targets 0x40641c, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x406414 targets 0x4068f4 and is always taken.
  The `beq` branch at 0x406420 targets 0x4064c4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x40643c targets 0x40644c, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x406444 targets 0x4068f4 and is always taken.
  The `beq` branch at 0x406470 targets 0x406480, is taken when t2(=ret(dmParamsGetEnum)) == at(=0x3f0), and falls through when t2(=ret(dmParamsGetEnum)) != at(=0x3f0).
  The `beq` branch at 0x4064b4 targets 0x4064c4, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x4064bc targets 0x4068f4 and is always taken.
  The `beq` branch at 0x4064c8 targets 0x4064f4, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `beq` branch at 0x4064e4 targets 0x4064f4, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x4064ec targets 0x4068f4 and is always taken.
  The `bne` branch at 0x4064f8 targets 0x406518, is taken when t7(?) != 0, and falls through when t7(?) == 0.
  The `bne` branch at 0x406504 targets 0x406518, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x406510 targets 0x406554, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beq` branch at 0x406574 targets 0x4065a4, is taken when v0(=ret(dmBufferGetSize)) >= t1(=[a0+124]) (signed), and falls through when v0(=ret(dmBufferGetSize)) < t1(=[a0+124]) (signed).
  The `beq` branch at 0x40659c targets 0x4068f4 and is always taken.
  The `beq` branch at 0x4065ac targets 0x406830, is taken when t3(=[a0+24]) == 0, and falls through when t3(=[a0+24]) != 0.
  The `beq` branch at 0x4065d4 targets 0x4065f0, is taken when t5(=[a0+16]) == 0, and falls through when t5(=[a0+16]) != 0.
  The `beq` branch at 0x4065e8 targets 0x4066dc, is taken when t7(=[a0+20]) >= t8(=ret(dmImageFrameSize)) (signed), and falls through when t7(=[a0+20]) < t8(=ret(dmImageFrameSize)) (signed).
  The `beq` branch at 0x4065f8 targets 0x406614, is taken when t0(=[a0+16]) == 0, and falls through when t0(=[a0+16]) != 0.
  The `beq` branch at 0x406624 targets 0x406634, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x40662c targets 0x4068f4 and is always taken.
  The `beq` branch at 0x406654 targets 0x406664, is taken when v0(=ret(dmBufferSetPoolDefaults)) == 0, and falls through when v0(=ret(dmBufferSetPoolDefaults)) != 0.
  The `beq` branch at 0x40665c targets 0x4068f4 and is always taken.
  The `beq` branch at 0x406698 targets 0x4066a8, is taken when v0(=ret(dmBufferCreatePool)) == 0, and falls through when v0(=ret(dmBufferCreatePool)) != 0.
  The `beq` branch at 0x4066a0 targets 0x4068f4 and is always taken.
  The `beq` branch at 0x4066fc targets 0x40670c, is taken when v0(=ret(dmBufferAllocate)) == 0, and falls through when v0(=ret(dmBufferAllocate)) != 0.
  The `beq` branch at 0x406704 targets 0x4068f4 and is always taken.
  The `beq` branch at 0x406758 targets 0x406768, is taken when v0(=ret(dmICAnyToAny)) == 0, and falls through when v0(=ret(dmICAnyToAny)) != 0.
  The `beq` branch at 0x406760 targets 0x4068f4 and is always taken.
  The `beq` branch at 0x40677c targets 0x40678c, is taken when v0(=ret(dmBufferSetSize)) == 0, and falls through when v0(=ret(dmBufferSetSize)) != 0.
  The `beq` branch at 0x406784 targets 0x4068f4 and is always taken.
  The `beq` branch at 0x4067b8 targets 0x4067c8, is taken when v0(=ret(dmBufferSetImageType)) == 0, and falls through when v0(=ret(dmBufferSetImageType)) != 0.
  The `beq` branch at 0x4067c0 targets 0x4068f4 and is always taken.
  The `beq` branch at 0x406818 targets 0x406828, is taken when v0(=ret(dmBufferSetUSTMSCpair)) == 0, and falls through when v0(=ret(dmBufferSetUSTMSCpair)) != 0.
  The `beq` branch at 0x406820 targets 0x4068f4 and is always taken.
  The `bne` branch at 0x40685c targets 0x406890, is taken when v0(=ret(vice_dmbuf_send)) != at(=-0x1), and falls through when v0(=ret(vice_dmbuf_send)) == at(=-0x1).
  The `beq` branch at 0x406888 targets 0x4068d0 and is always taken.
  The `beq` branch at 0x4068a0 targets 0x4068d0, is taken when v0(=ret(vice_dms_geterrs)) == 0, and falls through when v0(=ret(vice_dms_geterrs)) != 0.
  The `beq` branch at 0x4068d4 targets 0x4068f0, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The return at 0x406900 has v0 = one of -0x1, ?.

- `dv_recv` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x406908 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x406908-0x406eb4 (1452 bytes).
  It occupies 1452 bytes.
  The `lw` at 0x406940 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x40694c loads 4 bytes from a0 (arg0 at entry) +0x4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x74, including `lw` at 0x406960, `lw` at 0x406d18.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x18, including `lw` at 0x406968, `lw` at 0x406ce8.
  The `sw` at 0x406998 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `lw` at 0x4069a4 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x4069b8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x4069fc loads 4 bytes from a0 (arg0 at entry) +0x84.
  7 such `lw` accesses load 4 bytes from ?, including `lw` at 0x406a10, `lw` at 0x406a14, `lw` at 0x406a54.
  The `lw` at 0x406a9c loads 4 bytes from a0 (arg0 at entry) +0x78.
  3 such `lw` accesses load 4 bytes from abs 0x47c5e8, including `lw` at 0x406aa8, `lw` at 0x406b38, `lw` at 0x406bfc.
  7 such `lw` accesses load 4 bytes from abs 0x47c5ec, including `lw` at 0x406ac0, `lw` at 0x406ae4, `lw` at 0x406b08.
  2 such `lw` accesses load 4 bytes from abs 0x47c5f0, including `lw` at 0x406ac4, `lw` at 0x406ba8.
  The `sw` at 0x406adc stores 4 bytes to ([0x47c5f0] + ([0x47c5ec] << 0x2)) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x47c5f4, including `lw` at 0x406ae8, `lw` at 0x406b80.
  The `sw` at 0x406b00 stores 4 bytes to ([0x47c5f4] + ([0x47c5ec] << 0x2)) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x47c5f8, including `lw` at 0x406b0c, `lw` at 0x406b84.
  The `sw` at 0x406b20 stores 4 bytes to ([0x47c5f8] + ([0x47c5ec] << 0x2)) +0x0.
  4 such `sw` accesses store 4 bytes to abs 0x47c5ec, including `sw` at 0x406b30, `sw` at 0x406b6c, `sw` at 0x406c04.
  2 such `lw` accesses load 4 bytes from ([0x47c5f8] + ([0x47c5ec] << 0x2)) +0x0, including `lw` at 0x406b94, `lw` at 0x406bbc.
  2 such `lw` accesses load 4 bytes from ([0x47c5f4] + ([0x47c5ec] << 0x2)) +0x0, including `lw` at 0x406b98, `lw` at 0x406bd4.
  The `lw` at 0x406bb8 loads 4 bytes from ([0x47c5f0] + ([0x47c5ec] << 0x2)) +0x0.
  The `lw` at 0x406bd8 loads 4 bytes from ([0x47c5f0] + ([0x47c5ec] << 0x2)) -0x4.
  The `sw` at 0x406e98 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x40697c calls dmImageFrameSize with a0=[a0+4], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4069cc calls vice_dmbuf_recv with a0=[a0], a1=sp-16, a2=?, a3=a0+176.
  The `jalr` at 0x406a18 calls printf with a0=0x410bc8, a1=?, a2=?, a3=?.
  The `jalr` at 0x406a38 calls dmSetError with a0=0x1776, a1=0x410bf0, a2=0x410bfc, a3=?.
  The `jalr` at 0x406a74 calls dmSetError with a0=0x1778, a1=0x410c10, a2=0x410c18, a3=?.
  The `jalr` at 0x406a98 calls dmBufferSetSize with a0=?, a1=[a0+120], a2=?, a3=?.
  The `jalr` at 0x406cd0 calls printf with a0=0x410c24, a1=?, a2=?, a3=?.
  The `jalr` at 0x406cfc calls dmImageFrameSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406d1c calls dmBufferAllocate with a0=[a0+116], a1=sp-56, a2=?, a3=?.
  The `jalr` at 0x406d44 calls dmParamsSetEnum with a0=?, a1=0x410c40, a2=0x3f0, a3=?.
  The `jalr` at 0x406d64 calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406d7c calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406da0 calls dmICAnyToAny with a0=ret(dmBufferMapData), a1=ret(dmBufferMapData), a2=?, a3=?.
  The `jalr` at 0x406dc4 calls dmBufferSetSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406de4 calls dmBufferGetImageType with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406e00 calls dmBufferSetImageType with a0=?, a1=ret(dmBufferGetImageType), a2=?, a3=?.
  The `jalr` at 0x406e24 calls dmBufferGetUSTMSCpair with a0=sp-88, a1=?, a2=?, a3=?.
  The `jalr` at 0x406e64 calls dmBufferSetUSTMSCpair with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406e84 calls dmBufferFree with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x40696c targets 0x4069ac, is taken when t1(=[a0+24]) == 0, and falls through when t1(=[a0+24]) != 0.
  The `bne` branch at 0x4069e4 targets 0x406a4c, is taken when t6(=ret(vice_dmbuf_recv)) != at(=-0x1), and falls through when t6(=ret(vice_dmbuf_recv)) == at(=-0x1).
  The `beq` branch at 0x4069f0 targets 0x406a24, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x406a00 targets 0x406a24, is taken when t2(=[a0+132]) == 0, and falls through when t2(=[a0+132]) != 0.
  The `beq` branch at 0x406a44 targets 0x406ea0 and is always taken.
  The `bne` branch at 0x406a58 targets 0x406a88, is taken when t4(?) != at(=0xe000), and falls through when t4(?) == at(=0xe000).
  The `beq` branch at 0x406a80 targets 0x406ea0 and is always taken.
  The `beq` branch at 0x406aac targets 0x406b34, is taken when t9(=[0x47c5e8]) == 0, and falls through when t9(=[0x47c5e8]) != 0.
  The `beq` branch at 0x406b3c targets 0x406ce4, is taken when t5(=[0x47c5e8]) == 0, and falls through when t5(=[0x47c5e8]) != 0.
  The `bne` branch at 0x406b4c targets 0x406ce4, is taken when t2(=[0x47c5ec]) != t5(=[0x47c5e8]), and falls through when t2(=[0x47c5ec]) == t5(=[0x47c5e8]).
  The `blez` branch at 0x406b68 targets 0x406c14, is taken when t5(=[0x47c5e8]) <= 0 (signed), and falls through when t5(=[0x47c5e8]) > 0 (signed).
  The `beq` branch at 0x406bcc targets 0x406bec, is taken when t6(=[0x47c5ec]) == 0, and falls through when t6(=[0x47c5ec]) != 0.
  The `bne` branch at 0x406c0c targets 0x406b70, is taken when t7(=[0x47c5ec]+1) < t6(=[0x47c5e8]) (signed), and falls through when t7(=[0x47c5ec]+1) >= t6(=[0x47c5e8]) (signed).
  The `beq` branch at 0x406c18 targets 0x406cbc, is taken when t0(=[0x47c5e8]-1) == 0, and falls through when t0(=[0x47c5e8]-1) != 0.
  The `bne` branch at 0x406c38 targets 0x406c44, is taken when t0(=[0x47c5e8]-1) != 0, and falls through when t0(=[0x47c5e8]-1) == 0.
  The `bne` branch at 0x406c48 targets 0x406c5c, is taken when t0(=[0x47c5e8]-1) != at(=-0x1), and falls through when t0(=[0x47c5e8]-1) == at(=-0x1).
  The `bne` branch at 0x406c50 targets 0x406c5c, is taken when t9(?) != at(=0xffffffff80000000), and falls through when t9(?) == at(=0xffffffff80000000).
  The `bne` branch at 0x406c68 targets 0x406c74, is taken when t0(=[0x47c5e8]-1) != 0, and falls through when t0(=[0x47c5e8]-1) == 0.
  The `bne` branch at 0x406c78 targets 0x406c8c, is taken when t0(=[0x47c5e8]-1) != at(=-0x1), and falls through when t0(=[0x47c5e8]-1) == at(=-0x1).
  The `bne` branch at 0x406c80 targets 0x406c8c, is taken when t1(?) != at(=0xffffffff80000000), and falls through when t1(?) == at(=0xffffffff80000000).
  The `bne` branch at 0x406c98 targets 0x406ca4, is taken when t0(=[0x47c5e8]-1) != 0, and falls through when t0(=[0x47c5e8]-1) == 0.
  The `bne` branch at 0x406ca8 targets 0x406cbc, is taken when t0(=[0x47c5e8]-1) != at(=-0x1), and falls through when t0(=[0x47c5e8]-1) == at(=-0x1).
  The `bne` branch at 0x406cb0 targets 0x406cbc, is taken when t2(?) != at(=0xffffffff80000000), and falls through when t2(?) == at(=0xffffffff80000000).
  The `beq` branch at 0x406cec targets 0x406e9c, is taken when t7(=[a0+24]) == 0, and falls through when t7(=[a0+24]) != 0.
  The `beq` branch at 0x406d24 targets 0x406d34, is taken when v0(=ret(dmBufferAllocate)) == 0, and falls through when v0(=ret(dmBufferAllocate)) != 0.
  The `beq` branch at 0x406d2c targets 0x406ea0 and is always taken.
  The `beq` branch at 0x406d4c targets 0x406d5c, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x406d54 targets 0x406ea0 and is always taken.
  The `beq` branch at 0x406da8 targets 0x406db8, is taken when v0(=ret(dmICAnyToAny)) == 0, and falls through when v0(=ret(dmICAnyToAny)) != 0.
  The `beq` branch at 0x406db0 targets 0x406ea0 and is always taken.
  The `beq` branch at 0x406dcc targets 0x406ddc, is taken when v0(=ret(dmBufferSetSize)) == 0, and falls through when v0(=ret(dmBufferSetSize)) != 0.
  The `beq` branch at 0x406dd4 targets 0x406ea0 and is always taken.
  The `beq` branch at 0x406e08 targets 0x406e18, is taken when v0(=ret(dmBufferSetImageType)) == 0, and falls through when v0(=ret(dmBufferSetImageType)) != 0.
  The `beq` branch at 0x406e10 targets 0x406ea0 and is always taken.
  The `beq` branch at 0x406e6c targets 0x406e7c, is taken when v0(=ret(dmBufferSetUSTMSCpair)) == 0, and falls through when v0(=ret(dmBufferSetUSTMSCpair)) != 0.
  The `beq` branch at 0x406e74 targets 0x406ea0 and is always taken.
  The return at 0x406eac has v0 = one of ?, -0x1.

- `dve_recv` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x406eb4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x406eb4-0x407ad8 (3108 bytes).
  It occupies 3108 bytes.
  The `lw` at 0x406ef4 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0x406ef8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x406f34 loads 4 bytes from a0 (arg0 at entry) +0x84.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x406f40, `lw` at 0x406f44, `lw` at 0x406f8c.
  The `sw` at 0x406fe4 stores 4 bytes to sym(dvxformpointer) +0x0.
  The `lw` at 0x406fec loads 4 bytes from sym(dvbitspool) +0x0.
  The `sw` at 0x407024 stores 4 bytes to sym(dvbitpointer) +0x0.
  The `lw` at 0x407028 loads 4 bytes from sym(dvxformpointer) +0x0.
  The `lw` at 0x407030 loads 4 bytes from sym(dvbitpointer) +0x0.
  The `lw` at 0x407044 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `sw` at 0x4070bc stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x406f04 calls vice_dmbuf_recv with a0=[a0], a1=sp-8, a2=[a0+116], a3=a0+176.
  The `jalr` at 0x406f50 calls printf with a0=0x410c54, a1=?, a2=?, a3=?.
  The `jalr` at 0x406f70 calls dmSetError with a0=0x1776, a1=0x410c7c, a2=0x410c88, a3=?.
  The `jalr` at 0x406fac calls dmSetError with a0=0x1777, a1=0x410c9c, a2=0x410ca4, a3=?.
  The `jalr` at 0x406fc8 calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406fe8 calls dmBufferAllocate with a0=[sym(dvbitspool)], a1=sp-12, a2=?, a3=?.
  The `jalr` at 0x407008 calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40702c calls codeBuffer with a0=[sym(dvxformpointer)], a1=[sym(dvbitpointer)], a2=?, a3=?.
  The `jalr` at 0x407048 calls dmBufferSetSize with a0=?, a1=[a0+120], a2=?, a3=?.
  The `jalr` at 0x40706c calls dmBufferGetUSTMSCpair with a0=sp-40, a1=?, a2=?, a3=?.
  The `jalr` at 0x4070a8 calls dmBufferSetUSTMSCpair with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4070c8 calls dmBufferFree with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x406f1c targets 0x406f84, is taken when t8(=ret(vice_dmbuf_recv)) != at(=-0x1), and falls through when t8(=ret(vice_dmbuf_recv)) == at(=-0x1).
  The `beq` branch at 0x406f28 targets 0x406f5c, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x406f38 targets 0x406f5c, is taken when t1(=[a0+132]) == 0, and falls through when t1(=[a0+132]) != 0.
  The `beq` branch at 0x406f7c targets 0x4070d8 and is always taken.
  The `bne` branch at 0x406f90 targets 0x406fc0, is taken when t3(?) != at(=0xe000), and falls through when t3(?) == at(=0xe000).
  The `beq` branch at 0x406fb8 targets 0x4070d8 and is always taken.
  The `beq` branch at 0x406ff0 targets 0x407000, is taken when v0(=ret(dmBufferAllocate)) == 0, and falls through when v0(=ret(dmBufferAllocate)) != 0.
  The `beq` branch at 0x406ff8 targets 0x4070d8 and is always taken.
  The `beq` branch at 0x407050 targets 0x407060, is taken when v0(=ret(dmBufferSetSize)) == 0, and falls through when v0(=ret(dmBufferSetSize)) != 0.
  The `beq` branch at 0x407058 targets 0x4070d8 and is always taken.
  The return at 0x4070e0 has v0 = one of ?, -0x1.
  The instructions from 0x4070e8 to 0x407ad4 are not reached by any path from the entry, and their branches are not listed.

- `zoneFromIndexTab` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x4070f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x4070f0-0x40718c (156 bytes).
  It occupies 156 bytes.
  2 such `lh` accesses load 2 bytes from ?, including `lh` at 0x407138, `lh` at 0x407168.
  The `lh` at 0x407180 loads 2 bytes from (((a0 << 0x4) + (a1 << 0x1)) + sym(zone8x8Table)) +0x0.
  The `beq` branch at 0x4070fc targets 0x40716c, is taken when a2 == 0, and falls through when a2 != 0.
  The `bne` branch at 0x407104 targets 0x40713c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bgez` branch at 0x407110 targets 0x407124, is taken when a0 >= 0 (signed), and falls through when a0 < 0 (signed).
  The `beq` branch at 0x407118 targets 0x407124, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `bgez` branch at 0x407140 targets 0x407154, is taken when a0 >= 0 (signed), and falls through when a0 < 0 (signed).
  The `beq` branch at 0x407148 targets 0x407154, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The return at 0x407134 has v0 = ?.
  The return at 0x407164 has v0 = ?.
  The return at 0x407184 has v0 = [(((a0 << 0x4) + (a1 << 0x1)) + sym(zone8x8Table))]:2.

- `qScale` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x40718c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x40718c-0x407214 (136 bytes).
  It occupies 136 bytes.
  The `lbu` at 0x4071e4 loads 1 byte from (a3 + sym(qnoShiftTable)) +0x0.
  The `lbu` at 0x407200 loads 1 byte from ?.
  The `jalr` at 0x4071c0 calls zoneFromIndexTab with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x40720c has v0 = ?.

- `qScaleShft` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x407214 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x407214-0x40729c (136 bytes).
  It occupies 136 bytes.
  The `lbu` at 0x40726c loads 1 byte from (a3 + sym(qnoShiftTable)) +0x0.
  The `lbu` at 0x407288 loads 1 byte from ?.
  The `jalr` at 0x407248 calls zoneFromIndexTab with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x407294 has v0 = ?.

- `scaleBlockInit` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x40729c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x40729c-0x407304 (104 bytes).
  It occupies 104 bytes.
  The `lh` at 0x4072cc loads 2 bytes from ?.
  The `sh` at 0x4072e4 stores 2 bytes to ?.
  The `bne` branch at 0x4072b0 targets 0x4072fc, is taken when a1 != at(=0x3), and falls through when a1 == at(=0x3).
  The `bgez` branch at 0x4072d4 targets 0x4072e4, is taken when t0(?) >= 0 (signed), and falls through when t0(?) < 0 (signed).
  The `bne` branch at 0x4072f4 targets 0x4072c0, is taken when t4(?) < 0x40 (signed), and falls through when t4(?) >= 0x40 (signed).
  The return at 0x4072fc has v0 = ?.

- `scaleBlock` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x407304 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x407304-0x4073d0 (204 bytes).
  It occupies 204 bytes.
  The `lh` at 0x407338 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0x407340 stores 2 bytes to a1 (arg1 at entry) +0x0.
  3 such `lh` accesses load 2 bytes from ?, including `lh` at 0x407354, `lh` at 0x407368, `lh` at 0x4073a4.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x407370, `lbu` at 0x4073a0.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x407388, `sh` at 0x4073b0.
  The `bgez` branch at 0x407358 targets 0x40738c, is taken when t8(?) >= 0 (signed), and falls through when t8(?) < 0 (signed).
  The `beq` branch at 0x407384 targets 0x4073b4 and is always taken.
  The `bne` branch at 0x4073c0 targets 0x407348, is taken when t6(?) < 0x40 (signed), and falls through when t6(?) >= 0x40 (signed).
  The return at 0x4073c8 has v0 = ?.

- `buildQM` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x4073d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x4073d0-0x407644 (628 bytes).
  It occupies 628 bytes.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x4074ac, `sb` at 0x4075cc.
  The `jalr` at 0x40744c calls qScale with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40756c calls qScale with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4073f4 targets 0x40751c, is taken when t7(=a0) == 0, and falls through when t7(=a0) != 0.
  The `bne` branch at 0x407408 targets 0x40741c, is taken when t8(?) != at(=0x3), and falls through when t8(?) == at(=0x3).
  The `beq` branch at 0x407414 targets 0x407424 and is always taken.
  The `bne` branch at 0x4074bc targets 0x407434, is taken when t7(?) < 0x8 (signed), and falls through when t7(?) >= 0x8 (signed).
  The `bne` branch at 0x4074d0 targets 0x407430, is taken when t8(?) < 0x8 (signed), and falls through when t8(?) >= 0x8 (signed).
  The `bne` branch at 0x4074e4 targets 0x40742c, is taken when t9(?) < 0x10 (signed), and falls through when t9(?) >= 0x10 (signed).
  The `bne` branch at 0x4074f8 targets 0x407428, is taken when t1(?) < 0x2 (signed), and falls through when t1(?) >= 0x2 (signed).
  The `bne` branch at 0x40750c targets 0x407400, is taken when t0(?) < 0x4 (signed), and falls through when t0(?) >= 0x4 (signed).
  The `beq` branch at 0x407514 targets 0x407634 and is always taken.
  The `bne` branch at 0x407528 targets 0x40753c, is taken when t3(?) != at(=0x3), and falls through when t3(?) == at(=0x3).
  The `beq` branch at 0x407534 targets 0x407544 and is always taken.
  The `bne` branch at 0x4075dc targets 0x407554, is taken when t0(?) < 0x8 (signed), and falls through when t0(?) >= 0x8 (signed).
  The `bne` branch at 0x4075f0 targets 0x407550, is taken when t3(?) < 0x8 (signed), and falls through when t3(?) >= 0x8 (signed).
  The `bne` branch at 0x407604 targets 0x40754c, is taken when t7(?) < 0x10 (signed), and falls through when t7(?) >= 0x10 (signed).
  The `bne` branch at 0x407618 targets 0x407548, is taken when t8(?) < 0x2 (signed), and falls through when t8(?) >= 0x2 (signed).
  The `bne` branch at 0x40762c targets 0x407520, is taken when t5(?) < 0x4 (signed), and falls through when t5(?) >= 0x4 (signed).
  The return at 0x40763c has v0 = ret(qScale).

- `buildQMShft` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x407644 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x407644-0x4078a8 (612 bytes).
  It occupies 612 bytes.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x407718, `sb` at 0x407830.
  The `jalr` at 0x4076bc calls qScaleShft with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4077d4 calls qScaleShft with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x407668 targets 0x407788, is taken when t7(=a0) == 0, and falls through when t7(=a0) != 0.
  The `bne` branch at 0x40767c targets 0x407690, is taken when t8(?) != at(=0x3), and falls through when t8(?) == at(=0x3).
  The `beq` branch at 0x407688 targets 0x407694 and is always taken.
  The `bne` branch at 0x407728 targets 0x4076a4, is taken when t6(?) < 0x8 (signed), and falls through when t6(?) >= 0x8 (signed).
  The `bne` branch at 0x40773c targets 0x4076a0, is taken when t7(?) < 0x8 (signed), and falls through when t7(?) >= 0x8 (signed).
  The `bne` branch at 0x407750 targets 0x40769c, is taken when t8(?) < 0x10 (signed), and falls through when t8(?) >= 0x10 (signed).
  The `bne` branch at 0x407764 targets 0x407698, is taken when t0(?) < 0x2 (signed), and falls through when t0(?) >= 0x2 (signed).
  The `bne` branch at 0x407778 targets 0x407674, is taken when t9(?) < 0x4 (signed), and falls through when t9(?) >= 0x4 (signed).
  The `beq` branch at 0x407780 targets 0x407898 and is always taken.
  The `bne` branch at 0x407794 targets 0x4077a8, is taken when t2(?) != at(=0x3), and falls through when t2(?) == at(=0x3).
  The `beq` branch at 0x4077a0 targets 0x4077ac and is always taken.
  The `bne` branch at 0x407840 targets 0x4077bc, is taken when t3(?) < 0x8 (signed), and falls through when t3(?) >= 0x8 (signed).
  The `bne` branch at 0x407854 targets 0x4077b8, is taken when t9(?) < 0x8 (signed), and falls through when t9(?) >= 0x8 (signed).
  The `bne` branch at 0x407868 targets 0x4077b4, is taken when t2(?) < 0x10 (signed), and falls through when t2(?) >= 0x10 (signed).
  The `bne` branch at 0x40787c targets 0x4077b0, is taken when t4(?) < 0x2 (signed), and falls through when t4(?) >= 0x2 (signed).
  The `bne` branch at 0x407890 targets 0x40778c, is taken when t6(?) < 0x4 (signed), and falls through when t6(?) >= 0x4 (signed).
  The return at 0x4078a0 has v0 = ret(qScaleShft).

- `loadMSPEncode` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x4078a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x4078a8-0x4079d0 (296 bytes).
  It occupies 296 bytes.
  4 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x4078e0, `lhu` at 0x4078e4, `lhu` at 0x407900.
  3 such `lw` accesses load 4 bytes from abs 0x47c610, including `lw` at 0x407910, `lw` at 0x407930, `lw` at 0x407994.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x407928, `sw` at 0x40793c, `sw` at 0x4079b0.
  2 such `lh` accesses load 2 bytes from ?, including `lh` at 0x40798c, `lh` at 0x407990.
  The `bne` branch at 0x407958 targets 0x4078c4, is taken when t6(?) < 0x8 (signed), and falls through when t6(?) >= 0x8 (signed).
  The `bne` branch at 0x40796c targets 0x4078c0, is taken when t8(?) < 0x8 (signed), and falls through when t8(?) >= 0x8 (signed).
  The `bne` branch at 0x4079c0 targets 0x407978, is taken when t2(?) < 0x18 (signed), and falls through when t2(?) >= 0x18 (signed).
  The return at 0x4079c8 has v0 = ?.

- `difference` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x4079d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x4079d0-0x407ad8 (264 bytes).
  It occupies 264 bytes.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x4079e4, `sw` at 0x407ad4.
  6 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x407a14, `lbu` at 0x407a28, `lbu` at 0x407a40.
  The `bne` branch at 0x407aac targets 0x4079f0, is taken when t7(?) < 0x8 (signed), and falls through when t7(?) >= 0x8 (signed).
  The `bne` branch at 0x407ac0 targets 0x4079ec, is taken when t1(?) < 0x4 (signed), and falls through when t1(?) >= 0x4 (signed).
  The return at 0x407ad0 has v0 = ?.

- `setMem` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x407ad8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x407ad8-0x40b550 (14968 bytes).
  It occupies 14968 bytes.
  The `lw` at 0x407b18 loads 4 bytes from abs 0x47c610.
  The `sw` at 0x407b28 stores 4 bytes to ?.
  The `beq` branch at 0x407b00 targets 0x407b48, is taken when t6(=a0) >= t8(?) (signed), and falls through when t6(=a0) < t8(?) (signed).
  The `bne` branch at 0x407b40 targets 0x407b08, is taken when t7(?) < t8(?) (signed), and falls through when t7(?) >= t8(?) (signed).
  The return at 0x407b48 has v0 = ?.
  The instructions from 0x407b50 to 0x40b54c are not reached by any path from the entry, and their branches are not listed.

- `loadMSPDecode` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x407b50 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x407b50-0x40816c (1564 bytes).
  It occupies 1564 bytes.
  3 such `lw` accesses load 4 bytes from sym(qnoShiftTable) +0x0, including `lw` at 0x407b70, `lw` at 0x407b84, `lw` at 0x407b98.
  27 such `lw` accesses load 4 bytes from abs 0x47c610, including `lw` at 0x407b74, `lw` at 0x407b88, `lw` at 0x407b9c.
  The `sw` at 0x407b80 stores 4 bytes to [0x47c610] +0x6d8.
  The `sw` at 0x407b94 stores 4 bytes to [0x47c610] +0xed8.
  The `sw` at 0x407ba4 stores 4 bytes to [0x47c610] +0x16d8.
  6 such `lh` accesses load 2 bytes from ?, including `lh` at 0x407bc4, `lh` at 0x407bc8, `lh` at 0x407c68.
  11 such `sw` accesses store 4 bytes to ?, including `sw` at 0x407bec, `sw` at 0x407c04, `sw` at 0x407c18.
  The `sw` at 0x407db4 stores 4 bytes to [0x47c610] +0x6d4.
  The `sw` at 0x407dcc stores 4 bytes to [0x47c610] +0xed4.
  The `sw` at 0x407de4 stores 4 bytes to [0x47c610] +0x16d4.
  The `sw` at 0x407dfc stores 4 bytes to [0x47c610] +0x6d0.
  The `sw` at 0x407e14 stores 4 bytes to [0x47c610] +0xed0.
  The `sw` at 0x407e2c stores 4 bytes to [0x47c610] +0x16d0.
  12 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x407e4c, `lhu` at 0x407e50, `lhu` at 0x407eb0.
  The `sw` at 0x408120 stores 4 bytes to [0x47c610] +0xf14.
  The `sw` at 0x408130 stores 4 bytes to [0x47c610] +0x710.
  The `sw` at 0x408138 stores 4 bytes to [0x47c610] +0xf10.
  The `sw` at 0x408140 stores 4 bytes to [0x47c610] +0x1710.
  The `sw` at 0x408148 stores 4 bytes to [0x47c610] +0x720.
  The `sw` at 0x408150 stores 4 bytes to [0x47c610] +0xf20.
  The `sw` at 0x408158 stores 4 bytes to [0x47c610] +0x1720.
  The `jalr` at 0x4080a4 calls setMem [0x407ad8] with a0=0x8000, a1=0x80, a2=0x4, a3=a3 at entry (arg3).
  The `jalr` at 0x4080d0 calls setMem [0x407ad8] with a0=0x8800, a1=0x80, a2=0x4, a3=?.
  The `jalr` at 0x4080fc calls setMem [0x407ad8] with a0=0x9000, a1=0x80, a2=0x4, a3=?.
  The `bne` branch at 0x407c34 targets 0x407bb0, is taken when t9(?) < 0x18 (signed), and falls through when t9(?) >= 0x18 (signed).
  The `bgez` branch at 0x407c7c targets 0x407c8c, is taken when t0(?) >= 0 (signed), and falls through when t0(?) < 0 (signed).
  The `bgez` branch at 0x407c94 targets 0x407ca4, is taken when t5(?) >= 0 (signed), and falls through when t5(?) < 0 (signed).
  The `bne` branch at 0x407cd0 targets 0x407c4c, is taken when t6(?) < 0x8 (signed), and falls through when t6(?) >= 0x8 (signed).
  The `bne` branch at 0x407ce4 targets 0x407c48, is taken when t7(?) < 0x8 (signed), and falls through when t7(?) >= 0x8 (signed).
  The `bgez` branch at 0x407d2c targets 0x407d3c, is taken when t9(?) >= 0 (signed), and falls through when t9(?) < 0 (signed).
  The `bgez` branch at 0x407d44 targets 0x407d54, is taken when t8(?) >= 0 (signed), and falls through when t8(?) < 0 (signed).
  The `bne` branch at 0x407d80 targets 0x407cfc, is taken when t2(?) < 0x8 (signed), and falls through when t2(?) >= 0x8 (signed).
  The `bne` branch at 0x407d94 targets 0x407cf8, is taken when t6(?) < 0x8 (signed), and falls through when t6(?) >= 0x8 (signed).
  The `bne` branch at 0x407e88 targets 0x407e38, is taken when t2(?) < 0x40 (signed), and falls through when t2(?) >= 0x40 (signed).
  The `bne` branch at 0x407eec targets 0x407e9c, is taken when t3(?) < 0x40 (signed), and falls through when t3(?) >= 0x40 (signed).
  The `bne` branch at 0x407f50 targets 0x407f00, is taken when t4(?) < 0x40 (signed), and falls through when t4(?) >= 0x40 (signed).
  The `bne` branch at 0x407fb4 targets 0x407f64, is taken when t2(?) < 0x40 (signed), and falls through when t2(?) >= 0x40 (signed).
  The `bne` branch at 0x408018 targets 0x407fc8, is taken when t3(?) < 0x40 (signed), and falls through when t3(?) >= 0x40 (signed).
  The `bne` branch at 0x40807c targets 0x40802c, is taken when t4(?) < 0x40 (signed), and falls through when t4(?) >= 0x40 (signed).
  The return at 0x408164 has v0 = ret(setMem).

- `dmic_dram_init_decode` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x40816c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x40816c-0x4081b0 (68 bytes).
  It occupies 68 bytes.
  The `sw` at 0x408198 stores 4 bytes to abs 0x47c610.
  The `jalr` at 0x408194 calls loadMSPDecode with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x4081a8 has v0 = ret(loadMSPDecode).

- `dmic_dram_init_encode` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x4081b0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x4081b0-0x4081f4 (68 bytes).
  It occupies 68 bytes.
  The `sw` at 0x4081dc stores 4 bytes to abs 0x47c610.
  The `jalr` at 0x4081d8 calls loadMSPEncode with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x4081ec has v0 = ret(loadMSPEncode).

- `codeBuffer` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x408200 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x408200-0x408a30 (2096 bytes).
  It occupies 2096 bytes.
  3 such `lw` accesses load 4 bytes from sym(videoMode) +0x0, including `lw` at 0x408220, `lw` at 0x408270, `lw` at 0x4089ac.
  The `sw` at 0x408224 stores 4 bytes to sym(difSeqCnt) +0x0.
  The `sw` at 0x408250 stores 4 bytes to sym(difBlkCnt) +0x0.
  The `sw` at 0x4082ac stores 4 bytes to sym(globalQNO) +0x0.
  The `sw` at 0x4082b8 stores 4 bytes to sym(lostBits) +0x0.
  The `sw` at 0x4082c0 stores 4 bytes to sym(unusedBits) +0x0.
  2 such `sw` accesses store 4 bytes to sym(DBG_Mode) +0x0, including `sw` at 0x4082cc, `sw` at 0x4088a4.
  20 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4082f0, `lw` at 0x408304, `lw` at 0x4083c4.
  18 such `lh` accesses load 2 bytes from ?, including `lh` at 0x40831c, `lh` at 0x408348, `lh` at 0x408398.
  19 such `sw` accesses store 4 bytes to ?, including `sw` at 0x408338, `sw` at 0x408368, `sw` at 0x40838c.
  12 such `sh` accesses store 2 bytes to ?, including `sh` at 0x4083ac, `sh` at 0x4083cc, `sh` at 0x408474.
  2 such `lw` accesses load 4 bytes from sym(DBG_Mode) +0x0, including `lw` at 0x408890, `lw` at 0x4089ec.
  The `lw` at 0x4089c0 loads 4 bytes from sym(dvNoiseMode) +0x0.
  The `lw` at 0x4089d8 loads 4 bytes from sym(globalQNO) +0x0.
  The `lw` at 0x4089dc loads 4 bytes from sym(mbNumber) +0x0.
  The `jalr` at 0x4088c0 calls segGetBits with a0=0x47e620, a1=?, a2=?, a3=?.
  The `jalr` at 0x40891c calls writeHeader with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40894c calls writeAudio with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40896c calls writeSegment64 with a0=0x47e940, a1=?, a2=?, a3=?.
  The `jalr` at 0x4089b0 calls addHeaderInfo with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x408a10 calls printf with a0=0x410cb0, a1=?, a2=?, a3=?.
  The `bne` branch at 0x40824c targets 0x408268, is taken when t8(=[sym(videoMode)]) != 0, and falls through when t8(=[sym(videoMode)]) == 0.
  The `beq` branch at 0x408260 targets 0x4082a0 and is always taken.
  The `bne` branch at 0x408274 targets 0x408290, is taken when t1(=[sym(videoMode)]) != at(=0x1), and falls through when t1(=[sym(videoMode)]) == at(=0x1).
  The `beq` branch at 0x408288 targets 0x4082a0 and is always taken.
  The `blez` branch at 0x4082c8 targets 0x4089a0, is taken when t6(=one of 0x10e, 0x144) <= 0 (signed), and falls through when t6(=one of 0x10e, 0x144) > 0 (signed).
  The `beq` branch at 0x408498 targets 0x4084b0, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The `beq` branch at 0x4084a8 targets 0x4084bc and is always taken.
  The `beq` branch at 0x408648 targets 0x408660, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x408658 targets 0x40866c and is always taken.
  The `bne` branch at 0x4088b0 targets 0x4082d4, is taken when t7(?) < 0x5 (signed), and falls through when t7(?) >= 0x5 (signed).
  The `bltz` branch at 0x4088d4 targets 0x4088ec, is taken when t9(=ret(segGetBits)) < 0 (signed), and falls through when t9(=ret(segGetBits)) >= 0 (signed).
  The `beq` branch at 0x4088e4 targets 0x4088fc and is always taken.
  The `bne` branch at 0x40890c targets 0x40892c, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0x40893c targets 0x40895c, is taken when t7(?) != 0, and falls through when t7(?) == 0.
  The `bne` branch at 0x408998 targets 0x4082d0, is taken when t9(?) < t6(=one of 0x10e, 0x144) (signed), and falls through when t9(?) >= t6(=one of 0x10e, 0x144) (signed).
  The `beq` branch at 0x4089c4 targets 0x408a1c, is taken when t5(=[sym(dvNoiseMode)]) == 0, and falls through when t5(=[sym(dvNoiseMode)]) != 0.
  The `bne` branch at 0x408a00 targets 0x408a0c, is taken when t1(=[sym(mbNumber)]) != 0, and falls through when t1(=[sym(mbNumber)]) == 0.
  The return at 0x408a28 has v0 = one of ret(addHeaderInfo), ret(printf).

- `initCvLength` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x408a30 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x408a30-0x408aac (124 bytes).
  It occupies 124 bytes.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x408a5c, `sb` at 0x408a8c.
  The `bne` branch at 0x408a6c targets 0x408a48, is taken when t3(?) < 0x3e (signed), and falls through when t3(?) >= 0x3e (signed).
  The `bne` branch at 0x408a9c targets 0x408a7c, is taken when t7(?) < 0x100 (signed), and falls through when t7(?) >= 0x100 (signed).
  The return at 0x408aa4 has v0 = ?.

- `initVLC16fromVLC` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x408aac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x408aac-0x408bec (320 bytes).
  It occupies 320 bytes.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x408b10, `lw` at 0x408b84.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x408b40, `sw` at 0x408bc0.
  The `lbu` at 0x408b8c loads 1 byte from ?.
  The `beq` branch at 0x408ad0 targets 0x408be4 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x408ae0 targets 0x408bd4 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x408b14 targets 0x408bc4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x408b3c targets 0x408bc4, is taken when a2(=0x0) >= a3(?) (signed), and falls through when a2(=0x0) < a3(?) (signed).
  The `bne` branch at 0x408bbc targets 0x408b44, is taken when a2(?) < a3(?) (signed), and falls through when a2(?) >= a3(?) (signed).
  The `bne` branch at 0x408bcc targets 0x408ae8, is taken when a1(?) < 0x100 (signed), and falls through when a1(?) >= 0x100 (signed).
  The `bne` branch at 0x408bdc targets 0x408ad8, is taken when a0(?) < 0x40 (signed), and falls through when a0(?) >= 0x40 (signed).
  The return at 0x408be4 has v0 = ?.

- `prnEntry` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x408bec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x408bec-0x408d58 (364 bytes).
  It occupies 364 bytes.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x408c48, `lw` at 0x408c78.
  The `lbu` at 0x408ce4 loads 1 byte from ?.
  The `jalr` at 0x408c84 calls printf with a0=0x410cf0, a1=?, a2=?, a3=?.
  The `jalr` at 0x408ce8 calls printf with a0=0x410d08, a1=?, a2=?, a3=?.
  The `jalr` at 0x408d3c calls printf with a0=0x410d0c, a1=?, a2=?, a3=?.
  The `bne` branch at 0x408c50 targets 0x408d0c, is taken when t4(?) != t5(=a2), and falls through when t4(?) == t5(=a2).
  The `beq` branch at 0x408c9c targets 0x408d0c, is taken when t4(=0x0) >= t5(=a2) (signed), and falls through when t4(=0x0) < t5(=a2) (signed).
  The `bne` branch at 0x408d04 targets 0x408ca4, is taken when t7(?) < t8(=a2) (signed), and falls through when t7(?) >= t8(=a2) (signed).
  The `bne` branch at 0x408d18 targets 0x408c18, is taken when t0(?) < 0x40 (signed), and falls through when t0(?) >= 0x40 (signed).
  The `bne` branch at 0x408d2c targets 0x408c14, is taken when t2(?) < 0x100 (signed), and falls through when t2(?) >= 0x100 (signed).
  The return at 0x408d50 has v0 = ret(printf).

- `genvlc` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x408d58 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x408d58-0x408d70 (24 bytes).
  It occupies 24 bytes.
  The return at 0x408d68 has v0 = ?.

- `pack_to_output` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x408d70 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x408d70-0x408ec8 (344 bytes).
  It occupies 344 bytes.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x18, including `lw` at 0x408d7c, `lw` at 0x408e04, `lw` at 0x408e3c.
  4 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x0, including `ld` at 0x408d80, `ld` at 0x408e5c, `ld` at 0x408e80.
  The `lw` at 0x408d84 loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `lw` at 0x408d88 loads 4 bytes from a1 (arg1 at entry) +0x14.
  2 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x0, including `sd` at 0x408d90, `sd` at 0x408d98.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x408d9c, `lw` at 0x408e0c, `lw` at 0x408e40.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x408dc8, `ld` at 0x408de0, `ld` at 0x408e18.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0x408dcc, `ld` at 0x408e60, `ld` at 0x408e84.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x408dd0, `lw` at 0x408de4, `lw` at 0x408e1c.
  3 such `sd` accesses store 8 bytes to [a0] +0x0, including `sd` at 0x408ddc, `sd` at 0x408e28, `sd` at 0x408e94.
  4 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x8, including `sd` at 0x408df8, `sd` at 0x408e74, `sd` at 0x408eac.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `sw` at 0x408e00, `sw` at 0x408e38, `sw` at 0x408ea4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x10, including `sw` at 0x408e7c, `sw` at 0x408ebc.
  The `beq` branch at 0x408da8 targets 0x408e10, is taken when t1(=0x40) == a3(=[a0+16]), and falls through when t1(=0x40) != a3(=[a0+16]).
  The `beq` branch at 0x408db4 targets 0x408e44, is taken when v0(=[a1+16]) >= v1(=[a1+20]) (unsigned), and falls through when v0(=[a1+16]) < v1(=[a1+20]) (unsigned).
  The `bne` branch at 0x408dfc targets 0x408dc8, is taken when v0(?) < v1(=[a1+20]) (unsigned), and falls through when v0(?) >= v1(=[a1+20]) (unsigned).
  The `beq` branch at 0x408e08 targets 0x408e44 and is always taken.
  The `beql` branch at 0x408e10 targets 0x408e48, is taken when at(?) == 0, and falls through when at(?) != 0; its branch-likely delay slot `addu v0,a3,a2` at 0x408e14 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x408e34 targets 0x408e18, is taken when v0(?) < v1(=[a1+20]) (unsigned), and falls through when v0(?) >= v1(=[a1+20]) (unsigned).
  The `beq` branch at 0x408e4c targets 0x408ec0, is taken when v0(=([a0+16] + [a1+24])) == at(=0x80), and falls through when v0(=([a0+16] + [a1+24])) != at(=0x80).
  The `bne` branch at 0x408e54 targets 0x408e80, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x408ea0 targets 0x408eb0, is taken when v0(=([a0+16] + [a1+24])) != t1(=0x40), and falls through when v0(=([a0+16] + [a1+24])) == t1(=0x40).
  The `beq` branch at 0x408ea8 targets 0x408ebc and is always taken.
  The return at 0x408e78 has v0 = ([a0+16] + [a1+24]).
  The return at 0x408ec0 has v0 = ([a0+16] + [a1+24]).

- `init_pullers` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x408ec8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x408ec8-0x409014 (332 bytes).
  It occupies 332 bytes.
  6 such `sw` accesses store 4 bytes to ?, including `sw` at 0x408ef0, `sw` at 0x408ef4, `sw` at 0x408ef8.
  10 such `ld` accesses load 8 bytes from ?, including `ld` at 0x408f08, `ld` at 0x408f0c, `ld` at 0x408f10.
  12 such `sd` accesses store 8 bytes to ?, including `sd` at 0x408f34, `sd` at 0x408f38, `sd` at 0x408f58.
  The `ld` at 0x408fc4 loads 8 bytes from abs 0x410e08.
  The `ld` at 0x408ff0 loads 8 bytes from abs 0x410e10.
  The `bne` branch at 0x409004 targets 0x408ef0, is taken when a1(?) != t3(=0x190), and falls through when a1(?) == t3(=0x190).
  The return at 0x40900c has v0 = ?.

- `init_pushers` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x409014 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x409014-0x409084 (112 bytes).
  It occupies 112 bytes.
  The `sw` at 0x40902c stores 4 bytes to sym(output_pusher) +0x10.
  The `sw` at 0x409050 stores 4 bytes to sym(output_pusher) +0x38.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0x409054, `sw` at 0x409058, `sw` at 0x40905c.
  The `bne` branch at 0x409074 targets 0x409054, is taken when v1(?) != v0(=sym(output_pusher)+1200), and falls through when v1(?) == v0(=sym(output_pusher)+1200).
  The return at 0x40907c has v0 = sym(output_pusher)+1200.

- `restart_pushers` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x409084 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x409084-0x40913c (184 bytes).
  It occupies 184 bytes.
  The `sw` at 0x40909c stores 4 bytes to sym(output_pusher) +0x18.
  The `lw` at 0x4090a4 loads 4 bytes from sym(output_pusher) +0x10.
  The `sw` at 0x4090b0 stores 4 bytes to sym(output_pusher) +0x14.
  The `sw` at 0x4090c0 stores 4 bytes to sym(output_pusher) +0x1c.
  The `sw` at 0x4090d0 stores 4 bytes to sym(output_pusher) +0x40.
  The `lw` at 0x4090d8 loads 4 bytes from sym(output_pusher) +0x38.
  The `sw` at 0x4090e0 stores 4 bytes to sym(output_pusher) +0x3c.
  The `sw` at 0x4090e8 stores 4 bytes to sym(output_pusher) +0x44.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4090ec, `lw` at 0x4090f0, `lw` at 0x4090f4.
  12 such `sw` accesses store 4 bytes to ?, including `sw` at 0x409100, `sw` at 0x409104, `sw` at 0x409108.
  The `bne` branch at 0x40912c targets 0x4090ec, is taken when v1(?) != a0(=sym(output_pusher)+1200), and falls through when v1(?) == a0(=sym(output_pusher)+1200).
  The return at 0x409134 has v0 = 0x40.

- `writeback_pushers` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x40913c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x40913c-0x4091f8 (188 bytes).
  It occupies 188 bytes.
  The `lw` at 0x409154 loads 4 bytes from sym(output_pusher) +0x18.
  The `ld` at 0x409158 loads 8 bytes from sym(output_pusher) +0x0.
  The `lw` at 0x40915c loads 4 bytes from sym(output_pusher) +0x14.
  The `sd` at 0x409170 stores 8 bytes to [sym(output_pusher)+20] +0x0.
  The `ld` at 0x409178 loads 8 bytes from sym(output_pusher) +0x28.
  The `lw` at 0x40917c loads 4 bytes from sym(output_pusher) +0x40.
  The `lw` at 0x409184 loads 4 bytes from sym(output_pusher) +0x3c.
  The `sd` at 0x409194 stores 8 bytes to [sym(output_pusher)+60] +0x0.
  8 such `lw` accesses load 4 bytes from ?, including `lw` at 0x409198, `lw` at 0x4091a0, `lw` at 0x4091b4.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0x40919c, `ld` at 0x4091b0, `ld` at 0x4091c4.
  4 such `sd` accesses store 8 bytes to ?, including `sd` at 0x4091ac, `sd` at 0x4091c0, `sd` at 0x4091d4.
  The `bne` branch at 0x4091e8 targets 0x409198, is taken when a0(?) != v0(=sym(output_pusher)+1200), and falls through when a0(?) == v0(=sym(output_pusher)+1200).
  The return at 0x4091f0 has v0 = sym(output_pusher)+1200.

- `decodesegment` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x4091f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x4091f8-0x4099a0 (1960 bytes).
  It occupies 1960 bytes.
  24 such `lw` accesses load 4 bytes from ?, including `lw` at 0x409258, `lw` at 0x409268, `lw` at 0x40926c.
  19 such `ld` accesses load 8 bytes from ?, including `ld` at 0x40925c, `ld` at 0x409260, `ld` at 0x409264.
  3 such `lw` accesses load 4 bytes from sym(relocation_table_p) +0x0, including `lw` at 0x40928c, `lw` at 0x4092a8, `lw` at 0x4092cc.
  3 such `lhu` accesses load 2 bytes from [sym(relocation_table_p)] +0x0, including `lhu` at 0x409294, `lhu` at 0x4092b4, `lhu` at 0x4092d0.
  30 such `sd` accesses store 8 bytes to ?, including `sd` at 0x4092c8, `sd` at 0x409330, `sd` at 0x40938c.
  The `sw` at 0x4092e0 stores 4 bytes to sym(relocation_table_p) +0x0.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x4093ac, `lbu` at 0x40953c, `lbu` at 0x409754.
  29 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4093c4, `sw` at 0x409470, `sw` at 0x409474.
  The `ld` at 0x4096f0 loads 8 bytes from sym(input_puller) +0x0.
  The `ld` at 0x4096f4 loads 8 bytes from sym(input_puller) +0x8.
  The `lw` at 0x4096f8 loads 4 bytes from sym(input_puller) +0x10.
  The `lw` at 0x409700 loads 4 bytes from sym(output_pusher) +0x1c.
  The `bne` branch at 0x409278 targets 0x409340, is taken when s7(?) != s1(?), and falls through when s7(?) == s1(?).
  The `bne` branch at 0x409284 targets 0x4092a8, is taken when v0(?) < 0x11 (signed), and falls through when v0(?) >= 0x11 (signed).
  The `beq` branch at 0x4092a0 targets 0x4092dc and is always taken.
  The `bne` branch at 0x409304 targets 0x409320, is taken when t0(?) < 0x5 (signed), and falls through when t0(?) >= 0x5 (signed).
  The `beq` branch at 0x409318 targets 0x409340 and is always taken.
  The `bne` branch at 0x409360 targets 0x40937c, is taken when t0(?) < 0xd (signed), and falls through when t0(?) >= 0xd (signed).
  The `beq` branch at 0x409374 targets 0x40939c and is always taken.
  The `beq` branch at 0x4093b4 targets 0x4093f0, is taken when a2(?) >= v1(?) (signed), and falls through when a2(?) < v1(?) (signed).
  The `beq` branch at 0x4093c0 targets 0x409458, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x4093e8 targets 0x409458 and is always taken.
  The `beq` branch at 0x409410 targets 0x409428, is taken when v1(?) >= t0(?) (signed), and falls through when v1(?) < t0(?) (signed).
  The `beq` branch at 0x409420 targets 0x409448 and is always taken.
  The `bnel` branch at 0x40944c targets 0x4093a0, is taken when a1(?) != at(=0x6), and falls through when a1(?) == at(=0x6); its branch-likely delay slot `dsrl32 t9,a3,0x10` at 0x409450 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x409480 targets 0x409258, is taken when s7(?) < 0x1e (signed), and falls through when s7(?) >= 0x1e (signed).
  The `bne` branch at 0x4094b0 targets 0x4096b4, is taken when s0(?) < s7(?) (signed), and falls through when s0(?) >= s7(?) (signed).
  The `beq` branch at 0x4094d8 targets 0x4094f0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x4094e8 targets 0x4096a4 and is always taken.
  The `beq` branch at 0x4094fc targets 0x409528, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x40954c targets 0x4095d4, is taken when a2(?) < t9(?) (signed), and falls through when a2(?) >= t9(?) (signed).
  The `beq` branch at 0x409578 targets 0x409590, is taken when v1(?) >= t0(?) (signed), and falls through when v1(?) < t0(?) (signed).
  The `beq` branch at 0x409588 targets 0x4095b0 and is always taken.
  The `bnel` branch at 0x4095b4 targets 0x409530, is taken when a1(?) != at(=0x6), and falls through when a1(?) == at(=0x6); its branch-likely delay slot `dsrl32 t7,a3,0x10` at 0x4095b8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x4095cc targets 0x409694 and is always taken.
  The `bne` branch at 0x4095e0 targets 0x409634, is taken when t2(?) < s0(?) (signed), and falls through when t2(?) >= s0(?) (signed).
  The `bne` branch at 0x4095f8 targets 0x409608, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x409600 targets 0x4096c8 and is always taken.
  The `beq` branch at 0x40962c targets 0x4096c8 and is always taken.
  The `beq` branch at 0x409634 targets 0x409674, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x40966c targets 0x40952c and is always taken.
  The `beq` branch at 0x40968c targets 0x40952c and is always taken.
  The `beql` branch at 0x4096ac targets 0x4094d0, is taken when v0(?) >= s1(?) (unsigned), and falls through when v0(?) < s1(?) (unsigned); its branch-likely delay slot `lw v0,28(s1)` at 0x4096b0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x4096dc targets 0x409494, is taken when s7(?) < 0x1e (signed), and falls through when s7(?) >= 0x1e (signed).
  The `bnel` branch at 0x409704 targets 0x409874, is taken when t6(?) != 0, and falls through when t6(?) == 0; its branch-likely delay slot `addiu s1,s1,40` at 0x409708 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x409718 targets 0x409744, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x40975c targets 0x4097d4, is taken when a2(?) < t9(?) (signed), and falls through when a2(?) >= t9(?) (signed).
  The `beq` branch at 0x409788 targets 0x4097a0, is taken when v1(?) >= t0(?) (signed), and falls through when v1(?) < t0(?) (signed).
  The `beq` branch at 0x409798 targets 0x4097c0 and is always taken.
  The `bnel` branch at 0x4097c4 targets 0x409748, is taken when a1(?) != at(=0x6), and falls through when a1(?) == at(=0x6); its branch-likely delay slot `dsrl32 t7,a3,0x10` at 0x4097c8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x4097cc targets 0x409864 and is always taken.
  The `bne` branch at 0x4097e8 targets 0x409800, is taken when t2(?) < 0x1d (signed), and falls through when t2(?) >= 0x1d (signed).
  The `beq` branch at 0x4097f8 targets 0x409880 and is always taken.
  The `beq` branch at 0x409800 targets 0x409840, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x409838 targets 0x409744 and is always taken.
  The `beq` branch at 0x409858 targets 0x409744 and is always taken.
  The `bnel` branch at 0x409878 targets 0x409704, is taken when s1(?) < s0(=sym(output_pusher)+1200) (unsigned), and falls through when s1(?) >= s0(=sym(output_pusher)+1200) (unsigned); its branch-likely delay slot `lw t6,28(s1)` at 0x40987c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x40989c targets 0x4098ec, is taken when s4(?) != 0, and falls through when s4(?) == 0.
  The `bne` branch at 0x4098a8 targets 0x4098c8, is taken when v0(?) < 0x5 (signed), and falls through when v0(?) >= 0x5 (signed).
  The `beq` branch at 0x4098c0 targets 0x4098f0 and is always taken.
  The `beq` branch at 0x4098e4 targets 0x4098f0 and is always taken.
  The `bne` branch at 0x40990c targets 0x409958, is taken when s4(?) != 0, and falls through when s4(?) == 0.
  The `bne` branch at 0x409918 targets 0x409934, is taken when t0(?) < 0x5 (signed), and falls through when t0(?) >= 0x5 (signed).
  The `beq` branch at 0x40992c targets 0x40995c and is always taken.
  The `beq` branch at 0x409950 targets 0x40995c and is always taken.
  The `bne` branch at 0x40996c targets 0x409888, is taken when t2(?) != a1(=sym(output_pusher)+1200), and falls through when t2(?) == a1(=sym(output_pusher)+1200).
  The return at 0x409998 has v0 = ?.
  The instructions from 0x409860 to 0x409860 are not reached by any path from the entry, and their branches are not listed.

- `qparsemain` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x4099a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x4099a0-0x409c24 (644 bytes).
  It occupies 644 bytes.
  The `sw` at 0x409a10 stores 4 bytes to sym(output_packer) +0x0.
  The `sd` at 0x409a14 stores 8 bytes to sym(output_packer) +0x8.
  The `sw` at 0x409a18 stores 4 bytes to sym(output_packer) +0x10.
  4 such `sw` accesses store 4 bytes to sym(segment) +0x0, including `sw` at 0x409a1c, `sw` at 0x409adc, `sw` at 0x409b48.
  The `sw` at 0x409a24 stores 4 bytes to sym(relocation_table_p) +0x0.
  3 such `lw` accesses load 4 bytes from sym(segment) +0x0, including `lw` at 0x409ad4, `lw` at 0x409b40, `lw` at 0x409bac.
  The `ld` at 0x409be8 loads 8 bytes from sym(output_packer) +0x8.
  The `lw` at 0x409bec loads 4 bytes from sym(output_packer) +0x0.
  The `sd` at 0x409bf0 stores 8 bytes to [sym(output_packer)] +0x0.
  The `jalr` at 0x4099f0 calls init_pushers with a0=sym(blockbufarray), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x409a78 calls restart_pushers with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x409a8c calls init_pullers with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x409aa0 calls decodesegment with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x409abc calls pack_to_output with a0=sym(output_packer), a1=?, a2=?, a3=?.
  The `jalr` at 0x409ae4 calls restart_pushers with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x409af8 calls init_pullers with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x409b0c calls decodesegment with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x409b28 calls pack_to_output with a0=sym(output_packer), a1=?, a2=?, a3=?.
  The `jalr` at 0x409b50 calls restart_pushers with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x409b64 calls init_pullers with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x409b78 calls decodesegment with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x409b94 calls pack_to_output with a0=sym(output_packer), a1=?, a2=?, a3=?.
  The `blez` branch at 0x409a20 targets 0x409be8, is taken when a1 <= 0 (signed), and falls through when a1 > 0 (signed).
  The `bne` branch at 0x409acc targets 0x409ab0, is taken when s0(?) < s2(=sym(output_pusher)+1200) (unsigned), and falls through when s0(?) >= s2(=sym(output_pusher)+1200) (unsigned).
  The `bne` branch at 0x409b38 targets 0x409b1c, is taken when s0(?) < s3(=sym(output_pusher)+1200) (unsigned), and falls through when s0(?) >= s3(=sym(output_pusher)+1200) (unsigned).
  The `bne` branch at 0x409ba0 targets 0x409b88, is taken when s0(?) != s4(=sym(output_pusher)+1200), and falls through when s0(?) == s4(=sym(output_pusher)+1200).
  The `bne` branch at 0x409bcc targets 0x409a74, is taken when v0(?) != at(=0x2d00), and falls through when v0(?) == at(=0x2d00).
  The `bne` branch at 0x409be0 targets 0x409a60, is taken when t7(?) != t8(?), and falls through when t7(?) == t8(?).
  The return at 0x409c1c has v0 = one of ret(init_pushers), ?.

- `uncached_malloc` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x409c24 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x409c24-0x409cbc (152 bytes).
  It occupies 152 bytes.
  The `jalr` at 0x409c50 calls malloc with a0=?, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x409c64 calls aligntopage with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x409c84 calls cachectl with a0=ret(aligntopage), a1=?, a2=0x1, a3=?.
  The `jalr` at 0x409c9c calls perror with a0=0x410dfc, a1=?, a2=?, a3=?.
  The `beq` branch at 0x409c8c targets 0x409ca8, is taken when v0(=ret(cachectl)) == 0, and falls through when v0(=ret(cachectl)) != 0.
  The return at 0x409cb4 has v0 = ret(aligntopage).

- `aligntopage` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x409cbc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x409cbc-0x409cd8 (28 bytes).
  It occupies 28 bytes.
  The return at 0x409cd0 has v0 = ?.

- `scale_alloc` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x409ce0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x409ce0-0x409e1c (316 bytes).
  It occupies 316 bytes.
  The `jalr` at 0x409d30 calls _GETBITSUR8x8 with a0=a0 at entry (arg0), a1=sym(cvLength), a2=one of 0x0, 0x1, a3=a3 at entry (arg3).
  The `jalr` at 0x409d70 calls _GETBITS with a0=a0 at entry (arg0), a1=sym(cvLength), a2=((((a1 << 0xb) + (a2 << 0xa)) + (a3 << 0x6)) + sym(qscales)), a3=sym(zz8x8Tabt).
  The `jalr` at 0x409dbc calls _GETBITSUR4x8 with a0=a0 at entry (arg0), a1=sym(cvLength), a2=one of 0x0, 0x1, a3=a3 at entry (arg3).
  The `jalr` at 0x409df8 calls _GETBITS with a0=a0 at entry (arg0), a1=sym(cvLength), a2=((((a1 << 0xb) + (a2 << 0xa)) + (a3 << 0x6)) + sym(qscales)), a3=sym(zz4x8Tabt).
  The `bne` branch at 0x409d00 targets 0x409d84, is taken when a2 != 0, and falls through when a2 == 0.
  The `bne` branch at 0x409d0c targets 0x409d44, is taken when a3 != at(=0xf), and falls through when a3 == at(=0xf).
  The `bne` branch at 0x409d18 targets 0x409d28, is taken when a1 != at(=0x3), and falls through when a1 == at(=0x3).
  The `beq` branch at 0x409d20 targets 0x409d28 and is always taken.
  The `beq` branch at 0x409d3c targets 0x409e08 and is always taken.
  The `beq` branch at 0x409d7c targets 0x409e08 and is always taken.
  The `bne` branch at 0x409d90 targets 0x409dd0, is taken when t8(=a3) != at(=0xf), and falls through when t8(=a3) == at(=0xf).
  The `bne` branch at 0x409da4 targets 0x409db4, is taken when t9(=a1) != at(=0x3), and falls through when t9(=a1) == at(=0x3).
  The `beq` branch at 0x409dac targets 0x409db4 and is always taken.
  The `beq` branch at 0x409dc8 targets 0x409e08 and is always taken.
  The return at 0x409e14 has v0 = one of ret(_GETBITSUR8x8)+4, ret(_GETBITS)+4, ret(_GETBITSUR4x8)+4.

- `scale_vlcBlockPackedFast` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x409e1c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x409e1c-0x409f3c (288 bytes).
  It occupies 288 bytes.
  The `lw` at 0x409ebc loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0x409ec0 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x409ec4 loads 4 bytes from a1 (arg1 at entry) +0x8c.
  The `sw` at 0x409ed8 stores 4 bytes to a1 (arg1 at entry) +0x88.
  3 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x90, including `sw` at 0x409ee8, `sw` at 0x409f1c, `sw` at 0x409f24.
  3 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x94, including `sw` at 0x409eec, `sw` at 0x409f0c, `sw` at 0x409f14.
  The `sw` at 0x409ef0 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `sw` at 0x409ef8 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lw` at 0x409efc loads 4 bytes from a1 (arg1 at entry) +0x88.
  The `jalr` at 0x409e70 calls _APPENDBITSUR8x8 with a0=a0 at entry (arg0), a1=sym(dvBitsTable16), a2=?, a3=a1 at entry (arg1).
  The `jalr` at 0x409eb0 calls _APPENDBITSUR4x8 with a0=a0 at entry (arg0), a1=sym(dvBitsTable16), a2=?, a3=a1 at entry (arg1).
  The `bne` branch at 0x409e40 targets 0x409e80, is taken when a3 != 0, and falls through when a3 == 0.
  The `beq` branch at 0x409e78 targets 0x409ebc and is always taken.
  The `beq` branch at 0x409ed4 targets 0x409efc, is taken when v1(=[a1+140]) >= v0(=(([a1+4] << 0x6) + [a1])) (signed), and falls through when v1(=[a1+140]) < v0(=(([a1+4] << 0x6) + [a1])) (signed).
  The `beq` branch at 0x409ef4 targets 0x409f28 and is always taken.
  The `beql` branch at 0x409f08 targets 0x409f24, is taken when t1(=[a1+136]) >= v1(=[a1+140]) (signed), and falls through when t1(=[a1+136]) < v1(=[a1+140]) (signed); its branch-likely delay slot `sw v0,148(s0)` at 0x409f0c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x409f18 targets 0x409f28 and is always taken.
  The return at 0x409f34 has v0 = 0x1.
  The instructions from 0x409f20 to 0x409f20 are not reached by any path from the entry, and their branches are not listed.

- `qnoCtrl` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x409f3c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x409f3c-0x40a2fc (960 bytes).
  It occupies 960 bytes.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0x409f78, `lw` at 0x40a0a0, `lw` at 0x40a1d0.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lw` at 0x409f84, `lw` at 0x40a0b4, `lw` at 0x40a1cc.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x409f94, `lw` at 0x40a09c, `lw` at 0x40a1d4.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x409fa0, `lw` at 0x40a0d4, `lw` at 0x40a1e8.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0x409fa8, `lw` at 0x40a0d8, `lw` at 0x40a1ec.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lw` at 0x409fac, `lw` at 0x40a0f8, `lw` at 0x40a1f4.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x409fc0, `lw` at 0x40a108, `lw` at 0x40a20c.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0x409fc8, `lw` at 0x40a10c, `lw` at 0x40a210.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lw` at 0x409fcc, `lw` at 0x40a128, `lw` at 0x40a218.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x409fe0, `lw` at 0x40a138, `lw` at 0x40a230.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lw` at 0x409fe8, `lw` at 0x40a13c, `lw` at 0x40a234.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0xc, including `lw` at 0x409fec, `lw` at 0x40a158, `lw` at 0x40a23c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lw` at 0x40a000, `lw` at 0x40a168, `lw` at 0x40a254.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lw` at 0x40a008, `lw` at 0x40a16c, `lw` at 0x40a258.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x10, including `lw` at 0x40a00c, `lw` at 0x40a188, `lw` at 0x40a260.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x40a020, `lw` at 0x40a198, `lw` at 0x40a278.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x14, including `lw` at 0x40a028, `lw` at 0x40a19c, `lw` at 0x40a27c.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x14, including `lw` at 0x40a02c, `lw` at 0x40a1b8, `lw` at 0x40a284.
  The `lh` at 0x40a0a8 loads 2 bytes from [a0] +0x0.
  The `sw` at 0x40a0d0 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lh` at 0x40a0e0 loads 2 bytes from [a0+4] +0x0.
  The `sw` at 0x40a104 stores 4 bytes to a1 (arg1 at entry) +0xa0.
  The `lh` at 0x40a114 loads 2 bytes from [a0+8] +0x0.
  The `sw` at 0x40a134 stores 4 bytes to a1 (arg1 at entry) +0x138.
  The `lh` at 0x40a144 loads 2 bytes from [a0+12] +0x0.
  The `sw` at 0x40a164 stores 4 bytes to a1 (arg1 at entry) +0x1d0.
  The `lh` at 0x40a174 loads 2 bytes from [a0+20] +0x0.
  The `sw` at 0x40a194 stores 4 bytes to a1 (arg1 at entry) +0x268.
  The `lh` at 0x40a1a4 loads 2 bytes from [a0+16] +0x0.
  The `sw` at 0x40a1c4 stores 4 bytes to a1 (arg1 at entry) +0x300.
  The `lw` at 0x40a298 loads 4 bytes from a1 (arg1 at entry) +0x250.
  The `lw` at 0x40a29c loads 4 bytes from a1 (arg1 at entry) +0x380.
  The `lw` at 0x40a2a0 loads 4 bytes from a1 (arg1 at entry) +0x2e8.
  The `lw` at 0x40a2a4 loads 4 bytes from a1 (arg1 at entry) +0x88.
  The `lw` at 0x40a2b0 loads 4 bytes from a1 (arg1 at entry) +0x120.
  The `lw` at 0x40a2b4 loads 4 bytes from a1 (arg1 at entry) +0x1b8.
  The `sw` at 0x40a2bc stores 4 bytes to ?.
  The `jalr` at 0x409f90 calls scale_alloc with a0=[a0], a1=[a2], a2=[a3], a3=0xf.
  The `jalr` at 0x409fb0 calls scale_alloc with a0=[a0+4], a1=[a2+4], a2=[a3+4], a3=0xf.
  The `jalr` at 0x409fd0 calls scale_alloc with a0=[a0+8], a1=[a2+8], a2=[a3+8], a3=0xf.
  The `jalr` at 0x409ff0 calls scale_alloc with a0=[a0+12], a1=[a2+12], a2=[a3+12], a3=0xf.
  The `jalr` at 0x40a010 calls scale_alloc with a0=[a0+20], a1=[a2+16], a2=[a3+16], a3=0xf.
  The `jalr` at 0x40a030 calls scale_alloc with a0=[a0+16], a1=[a2+20], a2=[a3+20], a3=0xf.
  The `jalr` at 0x40a1dc calls scale_vlcBlockPackedFast with a0=[a0], a1=a1 at entry (arg1), a2=[a2], a3=[a3].
  The `jalr` at 0x40a200 calls scale_vlcBlockPackedFast with a0=[a0+4], a1=a1+152, a2=[a2+4], a3=[a3+4].
  The `jalr` at 0x40a224 calls scale_vlcBlockPackedFast with a0=[a0+8], a1=a1+304, a2=[a2+8], a3=[a3+8].
  The `jalr` at 0x40a248 calls scale_vlcBlockPackedFast with a0=[a0+12], a1=a1+456, a2=[a2+12], a3=[a3+12].
  The `jalr` at 0x40a26c calls scale_vlcBlockPackedFast with a0=[a0+20], a1=a1+608, a2=[a2+16], a3=[a3+16].
  The `jalr` at 0x40a290 calls scale_vlcBlockPackedFast with a0=[a0+16], a1=a1+760, a2=[a2+20], a3=[a3+20].
  The `blez` branch at 0x40a048 targets 0x40a090, is taken when v1(?) <= 0 (signed), and falls through when v1(?) > 0 (signed).
  The `bgez` branch at 0x40a050 targets 0x40a060, is taken when s0(=(((((ret(scale_alloc) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc))) >= 0 (signed), and falls through when s0(=(((((ret(scale_alloc) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc))) < 0 (signed).
  The `bne` branch at 0x40a06c targets 0x40a078, is taken when t7(?) != 0, and falls through when t7(?) == 0.
  The `bne` branch at 0x40a07c targets 0x40a090, is taken when t7(?) != at(=-0x1), and falls through when t7(?) == at(=-0x1).
  The `bne` branch at 0x40a084 targets 0x40a090, is taken when v1(?) != at(=0xffffffff80000000), and falls through when v1(?) == at(=0xffffffff80000000).
  The `bgez` branch at 0x40a090 targets 0x40a09c, is taken when s5(?) >= 0 (signed), and falls through when s5(?) < 0 (signed).
  The return at 0x40a2f4 has v0 = ((((([a1+592] + [a1+896]) + [a1+744]) + [a1+136]) + [a1+288]) + [a1+440])-80.

- `qnoMultiPassFast` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x40a2fc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x40a2fc-0x40a940 (1604 bytes).
  It occupies 1604 bytes.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x40a364, `lw` at 0x40a468, `lw` at 0x40a5ac.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0x40a368, `lw` at 0x40a46c, `lw` at 0x40a5a8.
  5 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lw` at 0x40a36c, `lw` at 0x40a48c, `lw` at 0x40a5a4.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x40a380, `lw` at 0x40a4ac, `lw` at 0x40a5c0.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0x40a388, `lw` at 0x40a4b0, `lw` at 0x40a5c4.
  5 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lw` at 0x40a38c, `lw` at 0x40a4d0, `lw` at 0x40a5cc.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x40a3a0, `lw` at 0x40a4e0, `lw` at 0x40a5e4.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0x40a3a8, `lw` at 0x40a4e4, `lw` at 0x40a5e8.
  5 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lw` at 0x40a3ac, `lw` at 0x40a500, `lw` at 0x40a5f0.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x40a3c0, `lw` at 0x40a510, `lw` at 0x40a608.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lw` at 0x40a3c8, `lw` at 0x40a514, `lw` at 0x40a60c.
  5 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0xc, including `lw` at 0x40a3cc, `lw` at 0x40a530, `lw` at 0x40a614.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lw` at 0x40a3e0, `lw` at 0x40a540, `lw` at 0x40a62c.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lw` at 0x40a3e8, `lw` at 0x40a544, `lw` at 0x40a630.
  5 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x10, including `lw` at 0x40a3ec, `lw` at 0x40a560, `lw` at 0x40a638.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x40a400, `lw` at 0x40a570, `lw` at 0x40a650.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x14, including `lw` at 0x40a408, `lw` at 0x40a574, `lw` at 0x40a654.
  5 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x14, including `lw` at 0x40a40c, `lw` at 0x40a590, `lw` at 0x40a65c.
  2 such `lh` accesses load 2 bytes from [a0] +0x0, including `lh` at 0x40a474, `lh` at 0x40a6c0.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x8, including `sw` at 0x40a4a8, `sw` at 0x40a6e8.
  2 such `lh` accesses load 2 bytes from [a0+4] +0x0, including `lh` at 0x40a4b8, `lh` at 0x40a6f8.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0xa0, including `sw` at 0x40a4dc, `sw` at 0x40a71c.
  2 such `lh` accesses load 2 bytes from [a0+8] +0x0, including `lh` at 0x40a4ec, `lh` at 0x40a72c.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x138, including `sw` at 0x40a50c, `sw` at 0x40a74c.
  2 such `lh` accesses load 2 bytes from [a0+12] +0x0, including `lh` at 0x40a51c, `lh` at 0x40a75c.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x1d0, including `sw` at 0x40a53c, `sw` at 0x40a77c.
  2 such `lh` accesses load 2 bytes from [a0+20] +0x0, including `lh` at 0x40a54c, `lh` at 0x40a78c.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x268, including `sw` at 0x40a56c, `sw` at 0x40a7ac.
  2 such `lh` accesses load 2 bytes from [a0+16] +0x0, including `lh` at 0x40a57c, `lh` at 0x40a7bc.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x300, including `sw` at 0x40a59c, `sw` at 0x40a7dc.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x250, including `lw` at 0x40a670, `lw` at 0x40a8cc.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x380, including `lw` at 0x40a674, `lw` at 0x40a8d0.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x2e8, including `lw` at 0x40a678, `lw` at 0x40a8d4.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x88, including `lw` at 0x40a67c, `lw` at 0x40a8d8.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x120, including `lw` at 0x40a680, `lw` at 0x40a8e0.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x1b8, including `lw` at 0x40a688, `lw` at 0x40a8e8.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x40a6b0, `sw` at 0x40a90c.
  The `jalr` at 0x40a370 calls scale_alloc with a0=[a0], a1=[a2], a2=[a3], a3=?.
  The `jalr` at 0x40a390 calls scale_alloc with a0=[a0+4], a1=[a2+4], a2=[a3+4], a3=?.
  The `jalr` at 0x40a3b0 calls scale_alloc with a0=[a0+8], a1=[a2+8], a2=[a3+8], a3=?.
  The `jalr` at 0x40a3d0 calls scale_alloc with a0=[a0+12], a1=[a2+12], a2=[a3+12], a3=?.
  The `jalr` at 0x40a3f0 calls scale_alloc with a0=[a0+20], a1=[a2+16], a2=[a3+16], a3=?.
  The `jalr` at 0x40a410 calls scale_alloc with a0=[a0+16], a1=[a2+20], a2=[a3+20], a3=?.
  The `jalr` at 0x40a5b4 calls scale_vlcBlockPackedFast with a0=[a0], a1=a1 at entry (arg1), a2=[a2], a3=[a3].
  The `jalr` at 0x40a5d8 calls scale_vlcBlockPackedFast with a0=[a0+4], a1=a1+152, a2=[a2+4], a3=[a3+4].
  The `jalr` at 0x40a5fc calls scale_vlcBlockPackedFast with a0=[a0+8], a1=a1+304, a2=[a2+8], a3=[a3+8].
  The `jalr` at 0x40a620 calls scale_vlcBlockPackedFast with a0=[a0+12], a1=a1+456, a2=[a2+12], a3=[a3+12].
  The `jalr` at 0x40a644 calls scale_vlcBlockPackedFast with a0=[a0+20], a1=a1+608, a2=[a2+16], a3=[a3+16].
  The `jalr` at 0x40a668 calls scale_vlcBlockPackedFast with a0=[a0+16], a1=a1+760, a2=[a2+20], a3=[a3+20].
  The `jalr` at 0x40a7f8 calls scale_vlcBlockPackedFast with a0=[a0], a1=a1 at entry (arg1), a2=[a2], a3=[a3].
  The `jalr` at 0x40a820 calls scale_vlcBlockPackedFast with a0=[a0+4], a1=a1+152, a2=[a2+4], a3=[a3+4].
  The `jalr` at 0x40a848 calls scale_vlcBlockPackedFast with a0=[a0+8], a1=a1+304, a2=[a2+8], a3=[a3+8].
  The `jalr` at 0x40a870 calls scale_vlcBlockPackedFast with a0=[a0+12], a1=a1+456, a2=[a2+12], a3=[a3+12].
  The `jalr` at 0x40a89c calls scale_vlcBlockPackedFast with a0=[a0+20], a1=a1+608, a2=[a2+16], a3=[a3+16].
  The `jalr` at 0x40a8c4 calls scale_vlcBlockPackedFast with a0=[a0+16], a1=a1+760, a2=[a2+20], a3=[a3+20].
  The `beq` branch at 0x40a420 targets 0x40a430, is taken when s7(?) >= s0(=(((((ret(scale_alloc) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc))) (signed), and falls through when s7(?) < s0(=(((((ret(scale_alloc) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc))) (signed).
  The `beq` branch at 0x40a428 targets 0x40a444 and is always taken.
  The `bnel` branch at 0x40a434 targets 0x40a448, is taken when s7(?) < s0(=(((((ret(scale_alloc) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc))) (signed), and falls through when s7(?) >= s0(=(((((ret(scale_alloc) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc))) (signed); its branch-likely delay slot `addiu s6,s6,1` at 0x40a438 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x40a44c targets 0x40a360, is taken when s6(?) != at(=0x4), and falls through when s6(?) == at(=0x4).
  The `bne` branch at 0x40a460 targets 0x40a6b4, is taken when t7(?) != at(=-0x1), and falls through when t7(?) == at(=-0x1).
  The `beq` branch at 0x40a6ac targets 0x40a910 and is always taken.
  The return at 0x40a938 has v0 = ((((([a1+592] + [a1+896]) + [a1+744]) + [a1+136]) + [a1+288]) + [a1+440])-80.

- `mbGetBits` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x40a940 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x40a940-0x40a9dc (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0x40a958 loads 4 bytes from sym(qno4passMode) +0x0.
  The `jalr` at 0x40a98c calls qnoMultiPassFast with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40a9b8 calls qnoCtrl with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x40a96c targets 0x40a9a0, is taken when t6(=[sym(qno4passMode)]) == 0, and falls through when t6(=[sym(qno4passMode)]) != 0.
  The `bgtz` branch at 0x40a974 targets 0x40a980, is taken when v0(?) > 0 (signed), and falls through when v0(?) <= 0 (signed).
  The `beq` branch at 0x40a998 targets 0x40a9c8 and is always taken.
  The return at 0x40a9d4 has v0 = ?.

- `segGetBits` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x40a9dc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x40a9dc-0x40ae84 (1192 bytes).
  It occupies 1192 bytes.
  7 such `lw` accesses load 4 bytes from sym(rollMode) +0x0, including `lw` at 0x40aa1c, `lw` at 0x40ab90, `lw` at 0x40ac28.
  The `lw` at 0x40aa38 loads 4 bytes from a0 (arg0 at entry) +0x30c.
  The `lw` at 0x40aa60 loads 4 bytes from a0 (arg0 at entry) +0x310.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x314, including `lw` at 0x40aa6c, `lw` at 0x40aa78.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x318, including `lw` at 0x40aa84, `lw` at 0x40aa90.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x31c, including `lw` at 0x40aa9c, `lw` at 0x40aaa8.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x40aac8, `sw` at 0x40aad0.
  The `lw` at 0x40ae00 loads 4 bytes from a0 (arg0 at entry) +0x168.
  The `lw` at 0x40ae04 loads 4 bytes from a0 (arg0 at entry) +0x16c.
  The `lw` at 0x40ae08 loads 4 bytes from sym(globalQNO) +0x0.
  The `lw` at 0x40ae14 loads 4 bytes from a0 (arg0 at entry) +0x170.
  The `lw` at 0x40ae1c loads 4 bytes from a0 (arg0 at entry) +0x174.
  The `lw` at 0x40ae24 loads 4 bytes from a0 (arg0 at entry) +0x178.
  The `sw` at 0x40ae34 stores 4 bytes to sym(globalQNO) +0x0.
  The `jalr` at 0x40aa08 calls initUnpacked with a0=a0+800, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40ab70 calls mbGetBits with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ac08 calls mbGetBits with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40aca0 calls mbGetBits with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ad38 calls mbGetBits with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40add0 calls mbGetBits with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ae40 calls packSegmentInplace with a0=a0+800, a1=?, a2=?, a3=?.
  The `beq` branch at 0x40aa20 targets 0x40aadc, is taken when t6(=[sym(rollMode)]) == 0, and falls through when t6(=[sym(rollMode)]) != 0.
  The `beql` branch at 0x40aa44 targets 0x40aa58, is taken when v1(=[a0+780]) >= 0xff (signed), and falls through when v1(=[a0+780]) < 0xff (signed); its branch-likely delay slot `addiu v1,zero,1` at 0x40aa48 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0x40aa68 targets 0x40aa7c, is taken when v0(?) < a1(=[a0+784]) (signed), and falls through when v0(?) >= a1(=[a0+784]) (signed); its branch-likely delay slot `lw a1,784(a0)` at 0x40aa6c runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0x40aa80 targets 0x40aa94, is taken when v0(?) < a1(=[a0+788]) (signed), and falls through when v0(?) >= a1(=[a0+788]) (signed); its branch-likely delay slot `lw a1,788(a0)` at 0x40aa84 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0x40aa98 targets 0x40aaac, is taken when v0(?) < a1(=[a0+792]) (signed), and falls through when v0(?) >= a1(=[a0+792]) (signed); its branch-likely delay slot `lw t8,792(a0)` at 0x40aa9c runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0x40aab0 targets 0x40aac0, is taken when v0(?) < t8(=[a0+796]) (signed), and falls through when v0(?) >= t8(=[a0+796]) (signed); its branch-likely delay slot `sll t9,a2,0x2` at 0x40aab4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x40aacc targets 0x40aa38, is taken when a3(?) != t2(=sp-24), and falls through when a3(?) == t2(=sp-24).
  The `beq` branch at 0x40aad4 targets 0x40ab00 and is always taken.
  The `bne` branch at 0x40ab9c targets 0x40abac, is taken when t8(=[sym(rollMode)]) != 0, and falls through when t8(=[sym(rollMode)]) == 0.
  The `bne` branch at 0x40ac34 targets 0x40ac44, is taken when t7(=[sym(rollMode)]) != 0, and falls through when t7(=[sym(rollMode)]) == 0.
  The `bne` branch at 0x40accc targets 0x40acdc, is taken when t6(=[sym(rollMode)]) != 0, and falls through when t6(=[sym(rollMode)]) == 0.
  The `bne` branch at 0x40ad64 targets 0x40ad74, is taken when t9(=[sym(rollMode)]) != 0, and falls through when t9(=[sym(rollMode)]) == 0.
  The `bne` branch at 0x40adec targets 0x40adfc, is taken when t8(=[sym(rollMode)]) != 0, and falls through when t8(=[sym(rollMode)]) == 0.
  The `bne` branch at 0x40ae64 targets 0x40ae74, is taken when t8(=[sym(rollMode)]) != 0, and falls through when t8(=[sym(rollMode)]) == 0.
  The `beq` branch at 0x40ae6c targets 0x40ae74 and is always taken.
  The return at 0x40ae7c has v0 = ?.

- `initBitBuffer` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x40ae90 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x40ae90-0x40aed8 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x40ae90 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `sw` at 0x40ae94 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `sw` at 0x40ae98 stores 4 bytes to a0 (arg0 at entry) +0x8c.
  The `sw` at 0x40ae9c stores 4 bytes to a0 (arg0 at entry) +0x88.
  The `sw` at 0x40aea0 stores 4 bytes to a0 (arg0 at entry) +0x90.
  The `sw` at 0x40aea4 stores 4 bytes to a0 (arg0 at entry) +0x94.
  4 such `sd` accesses store 8 bytes to ?, including `sd` at 0x40aeb8, `sd` at 0x40aebc, `sd` at 0x40aec0.
  The `bne` branch at 0x40aec8 targets 0x40aeb4, is taken when v0(?) != a0(=0x10), and falls through when v0(?) == a0(=0x10).
  The return at 0x40aed0 has v0 = ?.

- `initUnpacked` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x40aed8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x40aed8-0x40aff4 (284 bytes).
  It occupies 284 bytes.
  The `sw` at 0x40af28 stores 4 bytes to ?.
  The `jalr` at 0x40af3c calls initBitBuffer with a0=?, a1=0x0, a2=0x78, a3=0x14.
  The `jalr` at 0x40af60 calls initBitBuffer with a0=?, a1=0x0, a2=0x70, a3=0xc.
  The `jalr` at 0x40af88 calls initBitBuffer with a0=?, a1=0x0, a2=0x50, a3=0xc.
  The `jalr` at 0x40afa8 calls initBitBuffer with a0=?, a1=0x0, a2=0x50, a3=0xc.
  The `bne` branch at 0x40af70 targets 0x40af50, is taken when s0(?) != s2(=0x260), and falls through when s0(?) == s2(=0x260).
  The `bne` branch at 0x40afc0 targets 0x40af28, is taken when s4(?) != s7(=0x11f8), and falls through when s4(?) == s7(=0x11f8).
  The return at 0x40afec has v0 = ret(initBitBuffer).

- `distributeBits64` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x40aff4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x40aff4-0x40b1c8 (468 bytes).
  It occupies 468 bytes.
  The `lw` at 0x40b014 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x40b018 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0x40b01c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x40b020 loads 4 bytes from a0 (arg0 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8c, including `lw` at 0x40b028, `lw` at 0x40b124.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x88, including `lw` at 0x40b02c, `lw` at 0x40b0f8, `lw` at 0x40b128.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x88, including `lw` at 0x40b030, `lw` at 0x40b154, `lw` at 0x40b17c.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8c, including `lw` at 0x40b034, `lw` at 0x40b110, `lw` at 0x40b150.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0x40b06c, `ld` at 0x40b070, `ld` at 0x40b074.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x40b0f0, `sd` at 0x40b0f4.
  The `sw` at 0x40b10c stores 4 bytes to a0 (arg0 at entry) +0x88.
  The `sw` at 0x40b120 stores 4 bytes to a1 (arg1 at entry) +0x8c.
  The `sw` at 0x40b14c stores 4 bytes to a0 (arg0 at entry) +0x90.
  3 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x94, including `sw` at 0x40b16c, `sw` at 0x40b174, `sw` at 0x40b19c.
  The `sw` at 0x40b1a0 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `sw` at 0x40b1a4 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0x40b1a8 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `sw` at 0x40b1ac stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0x40b048 targets 0x40b054, is taken when t1(?) >= t0(?) (signed), and falls through when t1(?) < t0(?) (signed).
  The `bne` branch at 0x40b058 targets 0x40b064, is taken when t0(?) < 0x41 (signed), and falls through when t0(?) >= 0x41 (signed).
  The `bgez` branch at 0x40b078 targets 0x40b0a0, is taken when t2(?) >= 0 (signed), and falls through when t2(?) < 0 (signed).
  The `beq` branch at 0x40b098 targets 0x40b0bc and is always taken.
  The `blez` branch at 0x40b0a0 targets 0x40b0bc, is taken when t2(?) <= 0 (signed), and falls through when t2(?) > 0 (signed).
  The `beq` branch at 0x40b0bc targets 0x40b0e8, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x40b138 targets 0x40b148, is taken when t8(=[a0+136]) < t7(=[a0+140]) (signed), and falls through when t8(=[a0+136]) >= t7(=[a0+140]) (signed).
  The `beq` branch at 0x40b140 targets 0x40b148 and is always taken.
  The `beq` branch at 0x40b148 targets 0x40b178, is taken when t0(=one of 0x0, 0x1) == 0, and falls through when t0(=one of 0x0, 0x1) != 0.
  The `bne` branch at 0x40b160 targets 0x40b170, is taken when t9(=[a1+140]) < t6(=[a1+136]) (signed), and falls through when t9(=[a1+140]) >= t6(=[a1+136]) (signed).
  The `beq` branch at 0x40b168 targets 0x40b1a0 and is always taken.
  The `beq` branch at 0x40b170 targets 0x40b1a0 and is always taken.
  The `bne` branch at 0x40b188 targets 0x40b198, is taken when t7(=[a1+140]) < t9(=[a1+136]) (signed), and falls through when t7(=[a1+140]) >= t9(=[a1+136]) (signed).
  The `beq` branch at 0x40b190 targets 0x40b198 and is always taken.
  The `beq` branch at 0x40b198 targets 0x40b028, is taken when t0(=one of 0x0, 0x1) == 0, and falls through when t0(=one of 0x0, 0x1) != 0.
  The return at 0x40b1c0 has v0 = ?.

- `packSegmentInplace` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x40b1c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x40b1c8-0x40b550 (904 bytes).
  It occupies 904 bytes.
  33 such `lw` accesses load 4 bytes from ?, including `lw` at 0x40b228, `lw` at 0x40b240, `lw` at 0x40b26c.
  18 such `sw` accesses store 4 bytes to ?, including `sw` at 0x40b2ac, `sw` at 0x40b2bc, `sw` at 0x40b2cc.
  The `jalr` at 0x40b258 calls distributeBits64 with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b3f0 calls distributeBits64 with a0=?, a1=?, a2=?, a3=?.
  The `bnel` branch at 0x40b22c targets 0x40b274, is taken when t6(?) != 0, and falls through when t6(?) == 0; its branch-likely delay slot `lw t9,72(sp)` at 0x40b230 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0x40b244 targets 0x40b268, is taken when t8(?) != 0, and falls through when t8(?) == 0; its branch-likely delay slot `addiu s4,s4,1` at 0x40b248 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0x40b268 targets 0x40b22c, is taken when s4(?) != s3(=0x6), and falls through when s4(?) == s3(=0x6); its branch-likely delay slot `lw t6,148(s1)` at 0x40b26c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x40b280 targets 0x40b224, is taken when t0(?) != at(=0x390), and falls through when t0(?) == at(=0x390).
  The `beq` branch at 0x40b298 targets 0x40b2e8, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned).
  The `beql` branch at 0x40b2a8 targets 0x40b2ec, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `sw v0,912(s6)` at 0x40b2ac runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b2b8 targets 0x40b2ec, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `sw v0,912(s6)` at 0x40b2bc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b2c8 targets 0x40b2ec, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `sw v0,912(s6)` at 0x40b2cc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b2d8 targets 0x40b2ec, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `sw v0,912(s6)` at 0x40b2dc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b2f4 targets 0x40b348, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `addiu s6,s6,920` at 0x40b2f8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b304 targets 0x40b348, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `addiu s6,s6,920` at 0x40b308 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b314 targets 0x40b348, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `addiu s6,s6,920` at 0x40b318 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b324 targets 0x40b348, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `addiu s6,s6,920` at 0x40b328 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b334 targets 0x40b348, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `addiu s6,s6,920` at 0x40b338 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x40b348 targets 0x40b21c, is taken when s7(?) != at(=0x5), and falls through when s7(?) == at(=0x5).
  The `beql` branch at 0x40b368 targets 0x40b504, is taken when s3(=0x1) == t2(?), and falls through when s3(=0x1) != t2(?); its branch-likely delay slot `lw t5,100(sp)` at 0x40b36c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b3a4 targets 0x40b488, is taken when s3(=0x1) == t5(?), and falls through when s3(=0x1) != t5(?); its branch-likely delay slot `lw t1,72(sp)` at 0x40b3a8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x40b3b8 targets 0x40b474, is taken when s3(=0x1) == t6(?), and falls through when s3(=0x1) != t6(?).
  The `beql` branch at 0x40b3dc targets 0x40b408, is taken when s3(=0x1) == t8(?), and falls through when s3(=0x1) != t8(?); its branch-likely delay slot `addiu s1,s1,152` at 0x40b3e0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x40b400 targets 0x40b410, is taken when s3(=0x1) == t9(?), and falls through when s3(=0x1) != t9(?).
  The `bne` branch at 0x40b408 targets 0x40b3d8, is taken when s1(?) != s5(=0x390), and falls through when s1(?) == s5(=0x390).
  The `beql` branch at 0x40b418 targets 0x40b46c, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `sw v0,912(s6)` at 0x40b41c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b428 targets 0x40b46c, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `sw v0,912(s6)` at 0x40b42c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b438 targets 0x40b46c, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `sw v0,912(s6)` at 0x40b43c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b448 targets 0x40b46c, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `sw v0,912(s6)` at 0x40b44c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b458 targets 0x40b46c, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `sw v0,912(s6)` at 0x40b45c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x40b470 targets 0x40b484, is taken when s3(=0x1) == t0(?), and falls through when s3(=0x1) != t0(?).
  The `bne` branch at 0x40b47c targets 0x40b3ac, is taken when s7(?) < 0x5 (signed), and falls through when s7(?) >= 0x5 (signed).
  The `bne` branch at 0x40b494 targets 0x40b398, is taken when t2(?) != at(=0x390), and falls through when t2(?) == at(=0x390).
  The `beql` branch at 0x40b4ac targets 0x40b500, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `sw v0,916(t4)` at 0x40b4b0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b4bc targets 0x40b500, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `sw v0,916(t4)` at 0x40b4c0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b4cc targets 0x40b500, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `sw v0,916(t4)` at 0x40b4d0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b4dc targets 0x40b500, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `sw v0,916(t4)` at 0x40b4e0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b4ec targets 0x40b500, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `sw v0,916(t4)` at 0x40b4f0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x40b518 targets 0x40b360, is taken when t6(?) != at(=0x5), and falls through when t6(?) == at(=0x5).
  The return at 0x40b548 has v0 = ?.

- `writeGenericDIFHeaderIntoDIFsequence` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x40b550 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x40b550-0x40cb10 (5568 bytes).
  It occupies 5568 bytes.
  The `lw` at 0x40b56c loads 4 bytes from abs 0x47c2a8.
  The `lw` at 0x40b570 loads 4 bytes from abs 0x47c2ac.
  2 such `lw` accesses load 4 bytes from sym(difSeqCnt) +0x0, including `lw` at 0x40b5a8, `lw` at 0x40b5c8.
  The `sw` at 0x40b5b8 stores 4 bytes to sym(difSeqCnt) +0x0.
  The `lbu` at 0x40b5e0 loads 1 byte from ?.
  5 such `sb` accesses store 1 byte to ?, including `sb` at 0x40b5f4, `sb` at 0x40b60c, `sb` at 0x40b610.
  The `sw` at 0x40b630 stores 4 bytes to sym(difBlkCnt) +0x0.
  The `beq` branch at 0x40b57c targets 0x40b59c, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x40b5b4 targets 0x40b5c4, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x40b5bc targets 0x40b5c8 and is always taken.
  The `bne` branch at 0x40b5f0 targets 0x40b5e0, is taken when v1(?) < v0(=sp) (unsigned), and falls through when v1(?) >= v0(=sp) (unsigned).
  The `bne` branch at 0x40b61c targets 0x40b608, is taken when v0(?) != a2(=0x50), and falls through when v0(?) == a2(=0x50).
  The return at 0x40b62c has v0 = ?.
  The instructions from 0x40b634 to 0x40cb0c are not reached by any path from the entry, and their branches are not listed.

- `writeHeader` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x40b634 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x40b634-0x40b7e4 (432 bytes).
  It occupies 432 bytes.
  The `lw` at 0x40b64c loads 4 bytes from sym(videoMode) +0x0.
  5 such `lw` accesses load 4 bytes from sym(difSeqCnt) +0x0, including `lw` at 0x40b6a4, `lw` at 0x40b6d4, `lw` at 0x40b70c.
  The `ld` at 0x40b6a8 loads 8 bytes from abs 0x410e20.
  The `sd` at 0x40b6b4 stores 8 bytes to a0 (arg0 at entry) +0x50.
  13 such `sd` accesses store 8 bytes to ?, including `sd` at 0x40b6c4, `sd` at 0x40b6ec, `sd` at 0x40b6fc.
  The `ld` at 0x40b6dc loads 8 bytes from abs 0x410e28.
  The `ld` at 0x40b714 loads 8 bytes from abs 0x410e30.
  The `ld` at 0x40b74c loads 8 bytes from abs 0x410e38.
  The `ld` at 0x40b784 loads 8 bytes from abs 0x410e40.
  The `jalr` at 0x40b684 calls writeGenericDIFHeaderIntoDIFsequence [0x40b550] with a0=a0 at entry (arg0), a1=one of 0x0, 0x1, a2=one of 0x0, 0x1, a3=a3 at entry (arg3).
  The `bne` branch at 0x40b658 targets 0x40b668, is taken when v0(=[sym(videoMode)]) != 0, and falls through when v0(=[sym(videoMode)]) == 0.
  The `beq` branch at 0x40b660 targets 0x40b668 and is always taken.
  The `bne` branch at 0x40b668 targets 0x40b678, is taken when v0(=[sym(videoMode)]) != at(=0x2), and falls through when v0(=[sym(videoMode)]) == at(=0x2).
  The `beq` branch at 0x40b670 targets 0x40b678 and is always taken.
  The `bne` branch at 0x40b6c8 targets 0x40b6b8, is taken when v0(?) < 0x9 (signed), and falls through when v0(?) >= 0x9 (signed).
  The `bne` branch at 0x40b700 targets 0x40b6f0, is taken when v0(?) < 0x9 (signed), and falls through when v0(?) >= 0x9 (signed).
  The `bne` branch at 0x40b738 targets 0x40b728, is taken when v0(?) < 0x9 (signed), and falls through when v0(?) >= 0x9 (signed).
  The `bne` branch at 0x40b770 targets 0x40b760, is taken when v0(?) < 0x9 (signed), and falls through when v0(?) >= 0x9 (signed).
  The `bne` branch at 0x40b7c8 targets 0x40b7a4, is taken when v0(?) != a0(=0x9), and falls through when v0(?) == a0(=0x9).
  The return at 0x40b7dc has v0 = ?.

- `writeAudio` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x40b7e4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x40b7e4-0x40b7ec (8 bytes).
  It occupies 8 bytes.
  The return at 0x40b7e4 has v0 = a0+80.

- `writeSegment64` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x40b7ec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x40b7ec-0x40b964 (376 bytes).
  It occupies 376 bytes.
  The `lw` at 0x40b830 loads 4 bytes from sym(difSeqCnt) +0x0.
  2 such `lw` accesses load 4 bytes from sym(difBlkCnt) +0x0, including `lw` at 0x40b834, `lw` at 0x40b924.
  12 such `ld` accesses load 8 bytes from ?, including `ld` at 0x40b838, `ld` at 0x40b848, `ld` at 0x40b868.
  10 such `sd` accesses store 8 bytes to ?, including `sd` at 0x40b8fc, `sd` at 0x40b900, `sd` at 0x40b904.
  The `sw` at 0x40b93c stores 4 bytes to sym(difBlkCnt) +0x0.
  The `bne` branch at 0x40b938 targets 0x40b830, is taken when a2(?) != s5(=0x11f8), and falls through when a2(?) == s5(=0x11f8).
  The return at 0x40b95c has v0 = ?.

- `addHeaderInfo` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x40b964 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x40b964-0x40bb9c (568 bytes).
  It occupies 568 bytes.
  17 such `sb` accesses store 1 byte to ?, including `sb` at 0x40bac0, `sb` at 0x40bad8, `sb` at 0x40bb20.
  2 such `swl` accesses store 4 bytes to ?, including `swl` at 0x40bad0, `swl` at 0x40bae8.
  2 such `swr` accesses store 4 bytes to ?, including `swr` at 0x40bad4, `swr` at 0x40baf4.
  The `beq` branch at 0x40b9b8 targets 0x40b9d4, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x40b9cc targets 0x40b9e8 and is always taken.
  The `bne` branch at 0x40ba98 targets 0x40baf8, is taken when v0(=one of 0xa, 0xc) < 0x2 (signed), and falls through when v0(=one of 0xa, 0xc) >= 0x2 (signed).
  The `bne` branch at 0x40baf0 targets 0x40bac0, is taken when a3(?) < v0(=one of 0xa, 0xc) (signed), and falls through when a3(?) >= v0(=one of 0xa, 0xc) (signed).
  The `blez` branch at 0x40baf8 targets 0x40bb94, is taken when v0(=one of 0xa, 0xc) <= 0 (signed), and falls through when v0(=one of 0xa, 0xc) > 0 (signed).
  The `bne` branch at 0x40bb7c targets 0x40bb38, is taken when a0(?) != t3(=0x96), and falls through when a0(?) == t3(=0x96).
  The `bne` branch at 0x40bb8c targets 0x40bb10, is taken when a3(?) != v0(=one of 0xa, 0xc), and falls through when a3(?) == v0(=one of 0xa, 0xc).
  The return at 0x40bb94 has v0 = one of 0xa, 0xc.

- `_GETBITS` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x40bba0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x40bba0-0x40bc34 (148 bytes).
  It occupies 148 bytes.
  5 such `lb` accesses load 1 byte from ?, including `lb` at 0x40bbb0, `lb` at 0x40bbc8, `lb` at 0x40bbf0.
  The `lh` at 0x40bbbc loads 2 bytes from ?.
  The `bgtz` branch at 0x40bbc4 targets 0x40bbd0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40bbd4 targets 0x40bc1c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x40bbf4 targets 0x40bc14, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x40bc24 targets 0x40bbac, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The return at 0x40bc2c has v0 = ?.

- `_APPENDBITS` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x40bc40 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x40bc40-0x40bf20 (736 bytes).
  It occupies 736 bytes.
  8 such `lwu` accesses load 4 bytes from ?, including `lwu` at 0x40bc48, `lwu` at 0x40bc4c, `lwu` at 0x40bcb4.
  The `ld` at 0x40bc58 loads 8 bytes from ?.
  2 such `lb` accesses load 1 byte from ?, including `lb` at 0x40bc68, `lb` at 0x40bc7c.
  The `lh` at 0x40bc74 loads 2 bytes from ?.
  9 such `sd` accesses store 8 bytes to ?, including `sd` at 0x40bd18, `sd` at 0x40bd40, `sd` at 0x40bdac.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x40bf04, `sw` at 0x40bf08.
  The `bgtz` branch at 0x40bc80 targets 0x40bc90, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40bc94 targets 0x40be74, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x40bcbc targets 0x40bdec, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `blez` branch at 0x40bce4 targets 0x40bcfc, is taken when t4(?) <= 0 (signed), and falls through when t4(?) > 0 (signed).
  The `beq` branch at 0x40bcf4 targets 0x40bd50 and is always taken.
  The `beq` branch at 0x40bcfc targets 0x40bd34, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `beq` branch at 0x40bd2c targets 0x40bd50 and is always taken.
  The `blez` branch at 0x40bd78 targets 0x40bd90, is taken when t4(?) <= 0 (signed), and falls through when t4(?) > 0 (signed).
  The `beq` branch at 0x40bd88 targets 0x40be70 and is always taken.
  The `beq` branch at 0x40bd90 targets 0x40bdc8, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `beq` branch at 0x40bdc0 targets 0x40be70 and is always taken.
  The `beq` branch at 0x40bde4 targets 0x40be70 and is always taken.
  The `blez` branch at 0x40be04 targets 0x40be1c, is taken when t4(?) <= 0 (signed), and falls through when t4(?) > 0 (signed).
  The `beq` branch at 0x40be14 targets 0x40be70 and is always taken.
  The `beq` branch at 0x40be1c targets 0x40be54, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `beq` branch at 0x40be4c targets 0x40be70 and is always taken.
  The `beq` branch at 0x40be7c targets 0x40bc64, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `blez` branch at 0x40be98 targets 0x40beb0, is taken when t4(?) <= 0 (signed), and falls through when t4(?) > 0 (signed).
  The `beq` branch at 0x40bea8 targets 0x40bf04 and is always taken.
  The `beq` branch at 0x40beb0 targets 0x40bee8, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `beq` branch at 0x40bee0 targets 0x40bf04 and is always taken.
  The return at 0x40bf18 has v0 = ?.

- `_GETBITSUR8x8` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x40bf20 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x40bf20-0x40cb10 (3056 bytes).
  It occupies 3056 bytes.
  The `lh` at 0x40bf30 loads 2 bytes from a0 (arg0 at entry) +0x10.
  62 such `lh` accesses load 2 bytes from ?, including `lh` at 0x40bf60, `lh` at 0x40bf90, `lh` at 0x40bfc0.
  The `jalr` at 0x40bf58 calls _bits8x8 [0x40cb10] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40bf88 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40bfb8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40bfe8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c018 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c048 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c078 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c0a8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c0d8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c108 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c138 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c168 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c198 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c1c8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c1f8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c228 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c258 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c288 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c2b8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c2e8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c318 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c348 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c378 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c3a8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c3d8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c408 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c438 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c468 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c498 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c4c8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c4f8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c528 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c558 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c588 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c5b8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c5e8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c618 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c648 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c678 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c6a8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c6d8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c708 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c738 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c768 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c798 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c7c8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c7f8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c828 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c858 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c888 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c8b8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c8e8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c918 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c948 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c978 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c9a8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c9d8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ca08 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ca38 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ca68 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ca98 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cac8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40caf8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `bgtz` branch at 0x40bf34 targets 0x40bf40, is taken when t1(=[a0+16]:2) > 0 (signed), and falls through when t1(=[a0+16]:2) <= 0 (signed).
  The `beq` branch at 0x40bf44 targets 0x40bf60, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40bf64 targets 0x40bf70, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40bf74 targets 0x40bf90, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40bf94 targets 0x40bfa0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40bfa4 targets 0x40bfc0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40bfc4 targets 0x40bfd0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40bfd4 targets 0x40bff0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40bff4 targets 0x40c000, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c004 targets 0x40c020, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c024 targets 0x40c030, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c034 targets 0x40c050, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c054 targets 0x40c060, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c064 targets 0x40c080, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c084 targets 0x40c090, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c094 targets 0x40c0b0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c0b4 targets 0x40c0c0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c0c4 targets 0x40c0e0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c0e4 targets 0x40c0f0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c0f4 targets 0x40c110, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c114 targets 0x40c120, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c124 targets 0x40c140, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c144 targets 0x40c150, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c154 targets 0x40c170, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c174 targets 0x40c180, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c184 targets 0x40c1a0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c1a4 targets 0x40c1b0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c1b4 targets 0x40c1d0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c1d4 targets 0x40c1e0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c1e4 targets 0x40c200, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c204 targets 0x40c210, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c214 targets 0x40c230, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c234 targets 0x40c240, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c244 targets 0x40c260, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c264 targets 0x40c270, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c274 targets 0x40c290, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c294 targets 0x40c2a0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c2a4 targets 0x40c2c0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c2c4 targets 0x40c2d0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c2d4 targets 0x40c2f0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c2f4 targets 0x40c300, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c304 targets 0x40c320, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c324 targets 0x40c330, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c334 targets 0x40c350, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c354 targets 0x40c360, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c364 targets 0x40c380, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c384 targets 0x40c390, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c394 targets 0x40c3b0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c3b4 targets 0x40c3c0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c3c4 targets 0x40c3e0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c3e4 targets 0x40c3f0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c3f4 targets 0x40c410, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c414 targets 0x40c420, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c424 targets 0x40c440, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c444 targets 0x40c450, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c454 targets 0x40c470, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c474 targets 0x40c480, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c484 targets 0x40c4a0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c4a4 targets 0x40c4b0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c4b4 targets 0x40c4d0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c4d4 targets 0x40c4e0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c4e4 targets 0x40c500, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c504 targets 0x40c510, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c514 targets 0x40c530, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c534 targets 0x40c540, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c544 targets 0x40c560, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c564 targets 0x40c570, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c574 targets 0x40c590, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c594 targets 0x40c5a0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c5a4 targets 0x40c5c0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c5c4 targets 0x40c5d0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c5d4 targets 0x40c5f0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c5f4 targets 0x40c600, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c604 targets 0x40c620, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c624 targets 0x40c630, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c634 targets 0x40c650, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c654 targets 0x40c660, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c664 targets 0x40c680, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c684 targets 0x40c690, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c694 targets 0x40c6b0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c6b4 targets 0x40c6c0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c6c4 targets 0x40c6e0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c6e4 targets 0x40c6f0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c6f4 targets 0x40c710, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c714 targets 0x40c720, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c724 targets 0x40c740, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c744 targets 0x40c750, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c754 targets 0x40c770, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c774 targets 0x40c780, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c784 targets 0x40c7a0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c7a4 targets 0x40c7b0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c7b4 targets 0x40c7d0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c7d4 targets 0x40c7e0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c7e4 targets 0x40c800, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c804 targets 0x40c810, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c814 targets 0x40c830, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c834 targets 0x40c840, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c844 targets 0x40c860, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c864 targets 0x40c870, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c874 targets 0x40c890, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c894 targets 0x40c8a0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c8a4 targets 0x40c8c0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c8c4 targets 0x40c8d0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c8d4 targets 0x40c8f0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c8f4 targets 0x40c900, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c904 targets 0x40c920, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c924 targets 0x40c930, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c934 targets 0x40c950, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c954 targets 0x40c960, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c964 targets 0x40c980, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c984 targets 0x40c990, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c994 targets 0x40c9b0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c9b4 targets 0x40c9c0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c9c4 targets 0x40c9e0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c9e4 targets 0x40c9f0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c9f4 targets 0x40ca10, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ca14 targets 0x40ca20, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ca24 targets 0x40ca40, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ca44 targets 0x40ca50, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ca54 targets 0x40ca70, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ca74 targets 0x40ca80, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ca84 targets 0x40caa0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40caa4 targets 0x40cab0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cab4 targets 0x40cad0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cad4 targets 0x40cae0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cae4 targets 0x40cb00, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The return at 0x40cb04 has v0 = one of ?, ret(?).
  The instructions from 0x40cb0c to 0x40cb0c are not reached by any path from the entry, and their branches are not listed.

- `_bits8x8` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x40cb10 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x40cb10-0x40e4ac (6556 bytes).
  It occupies 6556 bytes.
  2 such `lb` accesses load 1 byte from ?, including `lb` at 0x40cb20, `lb` at 0x40cb34.
  The `lb` at 0x40cb3c loads 1 byte from (a1 + t1) +0x0.
  The `bne` branch at 0x40cb24 targets 0x40cb44, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The return at 0x40cb48 has v0 = ?.
  The instructions from 0x40cb50 to 0x40e4a8 are not reached by any path from the entry, and their branches are not listed.

- `_APPENDBITSUR8x8` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x40cb50 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x40cb50-0x40d8bc (3436 bytes).
  It occupies 3436 bytes.
  The `lwu` at 0x40cb58 loads 4 bytes from a3 (arg3 at entry) +0x4.
  The `lwu` at 0x40cb5c loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x40cb68 loads 8 bytes from (([a3+4] << 0x3) + a3+8) +0x0.
  The `lh` at 0x40cb74 loads 2 bytes from a0 (arg0 at entry) +0x10.
  The `lb` at 0x40cb78 loads 1 byte from a2 (arg2 at entry) +0x8.
  62 such `lh` accesses load 2 bytes from ?, including `lh` at 0x40cba0, `lh` at 0x40cbcc, `lh` at 0x40cbf8.
  62 such `lb` accesses load 1 byte from ?, including `lb` at 0x40cba4, `lb` at 0x40cbd0, `lb` at 0x40cbfc.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x40d690, `sd` at 0x40d6b8, `sd` at 0x40d6d8.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x40d6c8, `sw` at 0x40d6cc.
  The `bal` at 0x40cb98 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bal` at 0x40cbc4 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40cbf0 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40cc1c calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40cc48 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40cc74 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40cca0 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40cccc calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ccf8 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40cd24 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40cd50 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40cd7c calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40cda8 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40cdd4 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ce00 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ce2c calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ce58 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ce84 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ceb0 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40cedc calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40cf08 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40cf34 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40cf60 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40cf8c calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40cfb8 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40cfe4 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d010 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d03c calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d068 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d094 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d0c0 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d0ec calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d118 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d144 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d170 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d19c calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d1c8 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d1f4 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d220 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d24c calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d278 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d2a4 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d2d0 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d2fc calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d328 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d354 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d380 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d3ac calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d3d8 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d404 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d430 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d45c calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d488 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d4b4 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d4e0 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d50c calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d538 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d564 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d590 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d5bc calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d5e8 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d614 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d640 calls _APPENDBITSUR8x8+2968 [0x40d6e8] with a0=?, a1=?, a2=?, a3=?.
  The `bgtz` branch at 0x40cb7c targets 0x40cb8c, is taken when t1(=[a0+16]:2) > 0 (signed), and falls through when t1(=[a0+16]:2) <= 0 (signed).
  The `beq` branch at 0x40cb90 targets 0x40cba0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cba8 targets 0x40cbb8, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cbbc targets 0x40cbcc, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cbd4 targets 0x40cbe4, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cbe8 targets 0x40cbf8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cc00 targets 0x40cc10, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cc14 targets 0x40cc24, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cc2c targets 0x40cc3c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cc40 targets 0x40cc50, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cc58 targets 0x40cc68, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cc6c targets 0x40cc7c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cc84 targets 0x40cc94, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cc98 targets 0x40cca8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ccb0 targets 0x40ccc0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ccc4 targets 0x40ccd4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ccdc targets 0x40ccec, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ccf0 targets 0x40cd00, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cd08 targets 0x40cd18, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cd1c targets 0x40cd2c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cd34 targets 0x40cd44, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cd48 targets 0x40cd58, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cd60 targets 0x40cd70, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cd74 targets 0x40cd84, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cd8c targets 0x40cd9c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cda0 targets 0x40cdb0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cdb8 targets 0x40cdc8, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cdcc targets 0x40cddc, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cde4 targets 0x40cdf4, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cdf8 targets 0x40ce08, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ce10 targets 0x40ce20, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ce24 targets 0x40ce34, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ce3c targets 0x40ce4c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ce50 targets 0x40ce60, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ce68 targets 0x40ce78, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ce7c targets 0x40ce8c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ce94 targets 0x40cea4, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cea8 targets 0x40ceb8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cec0 targets 0x40ced0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ced4 targets 0x40cee4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ceec targets 0x40cefc, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cf00 targets 0x40cf10, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cf18 targets 0x40cf28, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cf2c targets 0x40cf3c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cf44 targets 0x40cf54, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cf58 targets 0x40cf68, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cf70 targets 0x40cf80, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cf84 targets 0x40cf94, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cf9c targets 0x40cfac, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cfb0 targets 0x40cfc0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cfc8 targets 0x40cfd8, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cfdc targets 0x40cfec, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cff4 targets 0x40d004, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d008 targets 0x40d018, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d020 targets 0x40d030, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d034 targets 0x40d044, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d04c targets 0x40d05c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d060 targets 0x40d070, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d078 targets 0x40d088, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d08c targets 0x40d09c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d0a4 targets 0x40d0b4, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d0b8 targets 0x40d0c8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d0d0 targets 0x40d0e0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d0e4 targets 0x40d0f4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d0fc targets 0x40d10c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d110 targets 0x40d120, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d128 targets 0x40d138, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d13c targets 0x40d14c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d154 targets 0x40d164, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d168 targets 0x40d178, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d180 targets 0x40d190, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d194 targets 0x40d1a4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d1ac targets 0x40d1bc, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d1c0 targets 0x40d1d0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d1d8 targets 0x40d1e8, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d1ec targets 0x40d1fc, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d204 targets 0x40d214, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d218 targets 0x40d228, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d230 targets 0x40d240, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d244 targets 0x40d254, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d25c targets 0x40d26c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d270 targets 0x40d280, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d288 targets 0x40d298, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d29c targets 0x40d2ac, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d2b4 targets 0x40d2c4, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d2c8 targets 0x40d2d8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d2e0 targets 0x40d2f0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d2f4 targets 0x40d304, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d30c targets 0x40d31c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d320 targets 0x40d330, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d338 targets 0x40d348, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d34c targets 0x40d35c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d364 targets 0x40d374, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d378 targets 0x40d388, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d390 targets 0x40d3a0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d3a4 targets 0x40d3b4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d3bc targets 0x40d3cc, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d3d0 targets 0x40d3e0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d3e8 targets 0x40d3f8, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d3fc targets 0x40d40c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d414 targets 0x40d424, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d428 targets 0x40d438, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d440 targets 0x40d450, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d454 targets 0x40d464, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d46c targets 0x40d47c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d480 targets 0x40d490, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d498 targets 0x40d4a8, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d4ac targets 0x40d4bc, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d4c4 targets 0x40d4d4, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d4d8 targets 0x40d4e8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d4f0 targets 0x40d500, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d504 targets 0x40d514, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d51c targets 0x40d52c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d530 targets 0x40d540, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d548 targets 0x40d558, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d55c targets 0x40d56c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d574 targets 0x40d584, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d588 targets 0x40d598, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d5a0 targets 0x40d5b0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d5b4 targets 0x40d5c4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d5cc targets 0x40d5dc, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d5e0 targets 0x40d5f0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d5f8 targets 0x40d608, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d60c targets 0x40d61c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d624 targets 0x40d634, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d638 targets 0x40d648, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `blez` branch at 0x40d65c targets 0x40d674, is taken when t4(?) <= 0 (signed), and falls through when t4(?) > 0 (signed).
  The `beq` branch at 0x40d66c targets 0x40d6c8 and is always taken.
  The `beq` branch at 0x40d674 targets 0x40d6ac, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `beq` branch at 0x40d6a4 targets 0x40d6c8 and is always taken.
  The return at 0x40d6e0 has v0 = ?.
  The instructions from 0x40d6e8 to 0x40d8b8 are not reached by any path from the entry, and their branches are not listed.

- `_GETBITSUR4x8` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x40d8c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x40d8c0-0x40e4ac (3052 bytes).
  It occupies 3052 bytes.
  The `lh` at 0x40d8d0 loads 2 bytes from a0 (arg0 at entry) +0x8.
  62 such `lh` accesses load 2 bytes from ?, including `lh` at 0x40d900, `lh` at 0x40d930, `lh` at 0x40d960.
  The `jalr` at 0x40d8f8 calls _bits4x8 [0x40e4ac] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40d928 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40d958 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40d988 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40d9b8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40d9e8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40da18 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40da48 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40da78 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40daa8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40dad8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40db08 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40db38 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40db68 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40db98 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40dbc8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40dbf8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40dc28 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40dc58 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40dc88 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40dcb8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40dce8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40dd18 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40dd48 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40dd78 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40dda8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ddd8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40de08 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40de38 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40de68 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40de98 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40dec8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40def8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40df28 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40df58 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40df88 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40dfb8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40dfe8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e018 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e048 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e078 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e0a8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e0d8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e108 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e138 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e168 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e198 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e1c8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e1f8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e228 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e258 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e288 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e2b8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e2e8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e318 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e348 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e378 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e3a8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e3d8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e408 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e438 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e468 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e498 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `bgtz` branch at 0x40d8d4 targets 0x40d8e0, is taken when t1(=[a0+8]:2) > 0 (signed), and falls through when t1(=[a0+8]:2) <= 0 (signed).
  The `beq` branch at 0x40d8e4 targets 0x40d900, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d904 targets 0x40d910, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d914 targets 0x40d930, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d934 targets 0x40d940, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d944 targets 0x40d960, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d964 targets 0x40d970, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d974 targets 0x40d990, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d994 targets 0x40d9a0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d9a4 targets 0x40d9c0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d9c4 targets 0x40d9d0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d9d4 targets 0x40d9f0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d9f4 targets 0x40da00, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40da04 targets 0x40da20, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40da24 targets 0x40da30, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40da34 targets 0x40da50, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40da54 targets 0x40da60, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40da64 targets 0x40da80, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40da84 targets 0x40da90, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40da94 targets 0x40dab0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40dab4 targets 0x40dac0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40dac4 targets 0x40dae0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40dae4 targets 0x40daf0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40daf4 targets 0x40db10, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40db14 targets 0x40db20, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40db24 targets 0x40db40, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40db44 targets 0x40db50, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40db54 targets 0x40db70, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40db74 targets 0x40db80, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40db84 targets 0x40dba0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40dba4 targets 0x40dbb0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40dbb4 targets 0x40dbd0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40dbd4 targets 0x40dbe0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40dbe4 targets 0x40dc00, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40dc04 targets 0x40dc10, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40dc14 targets 0x40dc30, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40dc34 targets 0x40dc40, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40dc44 targets 0x40dc60, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40dc64 targets 0x40dc70, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40dc74 targets 0x40dc90, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40dc94 targets 0x40dca0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40dca4 targets 0x40dcc0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40dcc4 targets 0x40dcd0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40dcd4 targets 0x40dcf0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40dcf4 targets 0x40dd00, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40dd04 targets 0x40dd20, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40dd24 targets 0x40dd30, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40dd34 targets 0x40dd50, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40dd54 targets 0x40dd60, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40dd64 targets 0x40dd80, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40dd84 targets 0x40dd90, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40dd94 targets 0x40ddb0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ddb4 targets 0x40ddc0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ddc4 targets 0x40dde0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40dde4 targets 0x40ddf0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ddf4 targets 0x40de10, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40de14 targets 0x40de20, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40de24 targets 0x40de40, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40de44 targets 0x40de50, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40de54 targets 0x40de70, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40de74 targets 0x40de80, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40de84 targets 0x40dea0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40dea4 targets 0x40deb0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40deb4 targets 0x40ded0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ded4 targets 0x40dee0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40dee4 targets 0x40df00, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40df04 targets 0x40df10, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40df14 targets 0x40df30, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40df34 targets 0x40df40, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40df44 targets 0x40df60, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40df64 targets 0x40df70, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40df74 targets 0x40df90, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40df94 targets 0x40dfa0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40dfa4 targets 0x40dfc0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40dfc4 targets 0x40dfd0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40dfd4 targets 0x40dff0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40dff4 targets 0x40e000, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e004 targets 0x40e020, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e024 targets 0x40e030, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e034 targets 0x40e050, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e054 targets 0x40e060, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e064 targets 0x40e080, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e084 targets 0x40e090, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e094 targets 0x40e0b0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e0b4 targets 0x40e0c0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e0c4 targets 0x40e0e0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e0e4 targets 0x40e0f0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e0f4 targets 0x40e110, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e114 targets 0x40e120, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e124 targets 0x40e140, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e144 targets 0x40e150, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e154 targets 0x40e170, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e174 targets 0x40e180, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e184 targets 0x40e1a0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e1a4 targets 0x40e1b0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e1b4 targets 0x40e1d0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e1d4 targets 0x40e1e0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e1e4 targets 0x40e200, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e204 targets 0x40e210, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e214 targets 0x40e230, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e234 targets 0x40e240, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e244 targets 0x40e260, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e264 targets 0x40e270, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e274 targets 0x40e290, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e294 targets 0x40e2a0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e2a4 targets 0x40e2c0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e2c4 targets 0x40e2d0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e2d4 targets 0x40e2f0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e2f4 targets 0x40e300, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e304 targets 0x40e320, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e324 targets 0x40e330, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e334 targets 0x40e350, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e354 targets 0x40e360, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e364 targets 0x40e380, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e384 targets 0x40e390, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e394 targets 0x40e3b0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e3b4 targets 0x40e3c0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e3c4 targets 0x40e3e0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e3e4 targets 0x40e3f0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e3f4 targets 0x40e410, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e414 targets 0x40e420, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e424 targets 0x40e440, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e444 targets 0x40e450, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e454 targets 0x40e470, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e474 targets 0x40e480, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e484 targets 0x40e4a0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The return at 0x40e4a4 has v0 = one of ?, ret(?).

- `_bits4x8` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x40e4ac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x40e4ac-0x40f260 (3508 bytes).
  It occupies 3508 bytes.
  2 such `lb` accesses load 1 byte from ?, including `lb` at 0x40e4bc, `lb` at 0x40e4d0.
  The `lb` at 0x40e4d8 loads 1 byte from (a1 + t1) +0x0.
  The `bne` branch at 0x40e4c0 targets 0x40e4e0, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The return at 0x40e4e4 has v0 = ?.
  The instructions from 0x40e4ec to 0x40f25c are not reached by any path from the entry, and their branches are not listed.

- `_APPENDBITSUR4x8` in `usr/lib/dmedia/imageconverters/vicedv.so` at 0x40e4f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/vicedv.so`.
  Range: 0x40e4f0-0x40f25c (3436 bytes).
  It occupies 3436 bytes.
  The `lwu` at 0x40e4f8 loads 4 bytes from a3 (arg3 at entry) +0x4.
  The `lwu` at 0x40e4fc loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x40e508 loads 8 bytes from (([a3+4] << 0x3) + a3+8) +0x0.
  The `lh` at 0x40e514 loads 2 bytes from a0 (arg0 at entry) +0x8.
  The `lb` at 0x40e518 loads 1 byte from a2 (arg2 at entry) +0x4.
  62 such `lh` accesses load 2 bytes from ?, including `lh` at 0x40e540, `lh` at 0x40e56c, `lh` at 0x40e598.
  62 such `lb` accesses load 1 byte from ?, including `lb` at 0x40e544, `lb` at 0x40e570, `lb` at 0x40e59c.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x40f030, `sd` at 0x40f058, `sd` at 0x40f078.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x40f068, `sw` at 0x40f06c.
  The `bal` at 0x40e538 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bal` at 0x40e564 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40e590 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40e5bc calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40e5e8 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40e614 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40e640 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40e66c calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40e698 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40e6c4 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40e6f0 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40e71c calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40e748 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40e774 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40e7a0 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40e7cc calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40e7f8 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40e824 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40e850 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40e87c calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40e8a8 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40e8d4 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40e900 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40e92c calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40e958 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40e984 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40e9b0 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40e9dc calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ea08 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ea34 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ea60 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ea8c calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40eab8 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40eae4 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40eb10 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40eb3c calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40eb68 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40eb94 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ebc0 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ebec calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ec18 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ec44 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ec70 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ec9c calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ecc8 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ecf4 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ed20 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ed4c calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ed78 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40eda4 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40edd0 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40edfc calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ee28 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ee54 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ee80 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40eeac calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40eed8 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ef04 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ef30 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ef5c calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ef88 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40efb4 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40efe0 calls _APPENDBITSUR4x8+2968 [0x40f088] with a0=?, a1=?, a2=?, a3=?.
  The `bgtz` branch at 0x40e51c targets 0x40e52c, is taken when t1(=[a0+8]:2) > 0 (signed), and falls through when t1(=[a0+8]:2) <= 0 (signed).
  The `beq` branch at 0x40e530 targets 0x40e540, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e548 targets 0x40e558, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e55c targets 0x40e56c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e574 targets 0x40e584, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e588 targets 0x40e598, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e5a0 targets 0x40e5b0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e5b4 targets 0x40e5c4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e5cc targets 0x40e5dc, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e5e0 targets 0x40e5f0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e5f8 targets 0x40e608, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e60c targets 0x40e61c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e624 targets 0x40e634, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e638 targets 0x40e648, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e650 targets 0x40e660, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e664 targets 0x40e674, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e67c targets 0x40e68c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e690 targets 0x40e6a0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e6a8 targets 0x40e6b8, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e6bc targets 0x40e6cc, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e6d4 targets 0x40e6e4, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e6e8 targets 0x40e6f8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e700 targets 0x40e710, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e714 targets 0x40e724, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e72c targets 0x40e73c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e740 targets 0x40e750, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e758 targets 0x40e768, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e76c targets 0x40e77c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e784 targets 0x40e794, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e798 targets 0x40e7a8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e7b0 targets 0x40e7c0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e7c4 targets 0x40e7d4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e7dc targets 0x40e7ec, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e7f0 targets 0x40e800, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e808 targets 0x40e818, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e81c targets 0x40e82c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e834 targets 0x40e844, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e848 targets 0x40e858, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e860 targets 0x40e870, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e874 targets 0x40e884, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e88c targets 0x40e89c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e8a0 targets 0x40e8b0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e8b8 targets 0x40e8c8, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e8cc targets 0x40e8dc, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e8e4 targets 0x40e8f4, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e8f8 targets 0x40e908, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e910 targets 0x40e920, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e924 targets 0x40e934, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e93c targets 0x40e94c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e950 targets 0x40e960, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e968 targets 0x40e978, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e97c targets 0x40e98c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e994 targets 0x40e9a4, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e9a8 targets 0x40e9b8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e9c0 targets 0x40e9d0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e9d4 targets 0x40e9e4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e9ec targets 0x40e9fc, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ea00 targets 0x40ea10, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ea18 targets 0x40ea28, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ea2c targets 0x40ea3c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ea44 targets 0x40ea54, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ea58 targets 0x40ea68, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ea70 targets 0x40ea80, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ea84 targets 0x40ea94, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ea9c targets 0x40eaac, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40eab0 targets 0x40eac0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40eac8 targets 0x40ead8, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40eadc targets 0x40eaec, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40eaf4 targets 0x40eb04, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40eb08 targets 0x40eb18, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40eb20 targets 0x40eb30, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40eb34 targets 0x40eb44, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40eb4c targets 0x40eb5c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40eb60 targets 0x40eb70, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40eb78 targets 0x40eb88, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40eb8c targets 0x40eb9c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40eba4 targets 0x40ebb4, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ebb8 targets 0x40ebc8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ebd0 targets 0x40ebe0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ebe4 targets 0x40ebf4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ebfc targets 0x40ec0c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ec10 targets 0x40ec20, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ec28 targets 0x40ec38, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ec3c targets 0x40ec4c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ec54 targets 0x40ec64, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ec68 targets 0x40ec78, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ec80 targets 0x40ec90, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ec94 targets 0x40eca4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ecac targets 0x40ecbc, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ecc0 targets 0x40ecd0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ecd8 targets 0x40ece8, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ecec targets 0x40ecfc, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ed04 targets 0x40ed14, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ed18 targets 0x40ed28, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ed30 targets 0x40ed40, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ed44 targets 0x40ed54, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ed5c targets 0x40ed6c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ed70 targets 0x40ed80, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ed88 targets 0x40ed98, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ed9c targets 0x40edac, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40edb4 targets 0x40edc4, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40edc8 targets 0x40edd8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ede0 targets 0x40edf0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40edf4 targets 0x40ee04, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ee0c targets 0x40ee1c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ee20 targets 0x40ee30, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ee38 targets 0x40ee48, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ee4c targets 0x40ee5c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ee64 targets 0x40ee74, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ee78 targets 0x40ee88, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ee90 targets 0x40eea0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40eea4 targets 0x40eeb4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40eebc targets 0x40eecc, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40eed0 targets 0x40eee0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40eee8 targets 0x40eef8, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40eefc targets 0x40ef0c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ef14 targets 0x40ef24, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ef28 targets 0x40ef38, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ef40 targets 0x40ef50, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ef54 targets 0x40ef64, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ef6c targets 0x40ef7c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ef80 targets 0x40ef90, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ef98 targets 0x40efa8, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40efac targets 0x40efbc, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40efc4 targets 0x40efd4, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40efd8 targets 0x40efe8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `blez` branch at 0x40effc targets 0x40f014, is taken when t4(?) <= 0 (signed), and falls through when t4(?) > 0 (signed).
  The `beq` branch at 0x40f00c targets 0x40f068 and is always taken.
  The `beq` branch at 0x40f014 targets 0x40f04c, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `beq` branch at 0x40f044 targets 0x40f068 and is always taken.
  The return at 0x40f080 has v0 = ?.
  The instructions from 0x40f088 to 0x40f258 are not reached by any path from the entry, and their branches are not listed.
