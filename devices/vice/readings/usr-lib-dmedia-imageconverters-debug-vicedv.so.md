# Readings: `usr/lib/dmedia/imageconverters/debug/vicedv.so`

One entry per routine, filed here from the reading batches by binary.

- `_poolneeds` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x403070 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x403070-0x4030c0 (80 bytes).
  It occupies 80 bytes.
  The `jalr` at 0x403098 calls vice_dmbuf_requirements with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x4030a0 targets 0x4030b0 and is always taken.
  The return at 0x4030b8 has v0 = ret(vice_dmbuf_requirements).
  The instructions from 0x4030a8 to 0x4030ac are not reached by any path from the entry, and their branches are not listed.

- `make_qparse_pool` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x4030c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x4030c0-0x4031c4 (260 bytes).
  It occupies 260 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x47c5dc, including `lw` at 0x403178, `lw` at 0x403194.
  The `sw` at 0x4031a0 stores 4 bytes to abs 0x47c5e0.
  The `jalr` at 0x4030e4 calls dmParamsCreate with a0=sp-4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40310c calls dmBufferSetPoolDefaults with a0=?, a1=0x5, a2=(a0 << 0x10), a3=0x0.
  The `jalr` at 0x403128 calls _poolneeds [0x403070] with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x403140 calls dmBufferCreatePool with a0=?, a1=0x47c5dc, a2=?, a3=?.
  The `jalr` at 0x403160 calls dmParamsDestroy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40317c calls dmBufferSetPoolSelectSize with a0=[0x47c5dc], a1=(a0 << 0x10), a2=?, a3=?.
  The `jalr` at 0x403190 calls dmBufferGetPoolFD with a0=[0x47c5dc], a1=?, a2=?, a3=?.
  The `beq` branch at 0x403148 targets 0x403158, is taken when v0(=ret(dmBufferCreatePool)) == 0, and falls through when v0(=ret(dmBufferCreatePool)) != 0.
  The `beq` branch at 0x403150 targets 0x4031b4 and is always taken.
  The `beq` branch at 0x4031a4 targets 0x4031b4 and is always taken.
  The return at 0x4031bc has v0 = one of -0x1, 0x0.
  The instructions from 0x4031ac to 0x4031b0 are not reached by any path from the entry, and their branches are not listed.

- `make_dvcoeff_pool` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x4031c4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x4031c4-0x403294 (208 bytes).
  It occupies 208 bytes.
  The `jalr` at 0x4031ec calls dmParamsCreate with a0=sp-4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403214 calls dmBufferSetPoolDefaults with a0=?, a1=0x2, a2=(a0 << 0x10), a3=0x1.
  The `jalr` at 0x403230 calls _poolneeds [0x403070] with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x403248 calls dmBufferCreatePool with a0=?, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x403268 calls dmParamsDestroy with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x403250 targets 0x403260, is taken when v0(=ret(dmBufferCreatePool)) == 0, and falls through when v0(=ret(dmBufferCreatePool)) != 0.
  The `beq` branch at 0x403258 targets 0x403284 and is always taken.
  The `beq` branch at 0x403274 targets 0x403284 and is always taken.
  The return at 0x40328c has v0 = one of -0x1, 0x0.
  The instructions from 0x40327c to 0x403280 are not reached by any path from the entry, and their branches are not listed.

- `init_formats` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x403294 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x403294-0x403348 (180 bytes).
  It occupies 180 bytes.
  The `sw` at 0x403314 stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `sw` at 0x40331c stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x403324 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `jalr` at 0x4032b8 calls dmParamsCreate with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4032d8 calls dmParamsCreate with a0=a0+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x4032f8 calls dmParamsCreate with a0=a0+8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4032c0 targets 0x4032d0, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x4032c8 targets 0x403338 and is always taken.
  The `beq` branch at 0x4032e0 targets 0x4032f0, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x4032e8 targets 0x403338 and is always taken.
  The `beq` branch at 0x403300 targets 0x403310, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x403308 targets 0x403338 and is always taken.
  The `beq` branch at 0x403328 targets 0x403338 and is always taken.
  The return at 0x403340 has v0 = one of -0x1, 0x0.
  The instructions from 0x403330 to 0x403334 are not reached by any path from the entry, and their branches are not listed.

- `free_formats` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x403348 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x403348-0x4033dc (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0x403370 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x403384 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x403398 loads 4 bytes from a0 (arg0 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x4033a4, `lw` at 0x4033bc.
  The `jalr` at 0x40336c calls dmParamsDestroy with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403380 calls dmParamsDestroy with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0x403394 calls dmParamsDestroy with a0=[a0+8], a1=?, a2=?, a3=?.
  The `jalr` at 0x4033b8 calls dmBufferDestroyPool with a0=[a0+12], a1=?, a2=?, a3=?.
  The `beq` branch at 0x4033a8 targets 0x4033c4, is taken when t0(=[a0+12]) == 0, and falls through when t0(=[a0+12]) != 0.
  The `beq` branch at 0x4033c4 targets 0x4033cc and is always taken.
  The return at 0x4033d4 has v0 = ?.

- `required_params` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x4033dc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x4033dc-0x4034cc (240 bytes).
  It occupies 240 bytes.
  The `jalr` at 0x403408 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x410000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403424 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x410018, a2=?, a3=?.
  The `jalr` at 0x403440 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x410028, a2=?, a3=?.
  The `jalr` at 0x40345c calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x410038, a2=?, a3=?.
  The `jalr` at 0x403478 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x41004c, a2=?, a3=?.
  The `jalr` at 0x403498 calls dmSetError with a0=0x1773, a1=0x410064, a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x403410 targets 0x403488, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x40342c targets 0x403488, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x403448 targets 0x403488, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x403464 targets 0x403488, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `bne` branch at 0x403480 targets 0x4034ac, is taken when v0(=ret(dmParamsIsPresent)) != 0, and falls through when v0(=ret(dmParamsIsPresent)) == 0.
  The `beq` branch at 0x4034a4 targets 0x4034bc and is always taken.
  The `beq` branch at 0x4034ac targets 0x4034bc and is always taken.
  The return at 0x4034c4 has v0 = one of -0x1, 0x0.
  The instructions from 0x4034b4 to 0x4034b8 are not reached by any path from the entry, and their branches are not listed.

- `needsConvert` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x4034cc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x4034cc-0x4037a4 (728 bytes).
  It occupies 728 bytes.
  The `jalr` at 0x403508 calls required_params [0x4033dc] with a0=a0 at entry (arg0), a1=0x41006c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403534 calls __assert with a0=0x410070, a1=0x410098, a2=0x116, a3=?.
  The `jalr` at 0x403550 calls required_params [0x4033dc] with a0=a1 at entry (arg1), a1=0x4100a4, a2=?, a3=?.
  The `jalr` at 0x40357c calls __assert with a0=0x4100a8, a1=0x4100d0, a2=0x117, a3=?.
  The `jalr` at 0x403594 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x4100dc, a2=?, a3=?.
  The `jalr` at 0x4035b0 calls dmParamsGetInt with a0=a1 at entry (arg1), a1=0x4100ec, a2=?, a3=?.
  The `jalr` at 0x4035cc calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x4100fc, a2=?, a3=?.
  The `jalr` at 0x4035e8 calls dmParamsGetInt with a0=a1 at entry (arg1), a1=0x41010c, a2=?, a3=?.
  The `jalr` at 0x403604 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x41011c, a2=?, a3=?.
  The `jalr` at 0x403620 calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x410134, a2=?, a3=?.
  The `jalr` at 0x403644 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x41014c, a2=?, a3=?.
  The `jalr` at 0x403660 calls dmParamsIsPresent with a0=a1 at entry (arg1), a1=0x410164, a2=?, a3=?.
  The `jalr` at 0x40367c calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x41017c, a2=?, a3=?.
  The `jalr` at 0x403698 calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x410194, a2=?, a3=?.
  The `jalr` at 0x4036bc calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x4101ac, a2=?, a3=?.
  The `jalr` at 0x4036d8 calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x4101c0, a2=?, a3=?.
  The `bne` branch at 0x403510 targets 0x403520, is taken when v0(=ret(required_params)) != 0, and falls through when v0(=ret(required_params)) == 0.
  The `beq` branch at 0x403518 targets 0x403540 and is always taken.
  The `bne` branch at 0x403558 targets 0x403568, is taken when v0(=ret(required_params)) != 0, and falls through when v0(=ret(required_params)) == 0.
  The `beq` branch at 0x403560 targets 0x403588 and is always taken.
  The `bne` branch at 0x4035b8 targets 0x403630, is taken when v0(=ret(dmParamsGetInt)) != s0(=ret(dmParamsGetInt)), and falls through when v0(=ret(dmParamsGetInt)) == s0(=ret(dmParamsGetInt)).
  The `bne` branch at 0x4035f0 targets 0x403630, is taken when v0(=ret(dmParamsGetInt)) != s1(=ret(dmParamsGetInt)), and falls through when v0(=ret(dmParamsGetInt)) == s1(=ret(dmParamsGetInt)).
  The `beq` branch at 0x403628 targets 0x403638, is taken when v0(=ret(dmParamsGetEnum)) == s2(=ret(dmParamsGetEnum)), and falls through when v0(=ret(dmParamsGetEnum)) != s2(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x403630 targets 0x40378c and is always taken.
  The `beq` branch at 0x40364c targets 0x4036b0, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x403668 targets 0x4036b0, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x4036a0 targets 0x4036b0, is taken when v0(=ret(dmParamsGetEnum)) == s0(=ret(dmParamsGetEnum)), and falls through when v0(=ret(dmParamsGetEnum)) != s0(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x4036a8 targets 0x40378c and is always taken.
  The `bne` branch at 0x4036f0 targets 0x403700, is taken when t6(=ret(dmParamsGetEnum)) != t7(=ret(dmParamsGetEnum)), and falls through when t6(=ret(dmParamsGetEnum)) == t7(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x4036f8 targets 0x40378c and is always taken.
  The `bne` branch at 0x403708 targets 0x403734, is taken when t8(=ret(dmParamsGetEnum)) != at(=0x3f0), and falls through when t8(=ret(dmParamsGetEnum)) == at(=0x3f0).
  The `beq` branch at 0x403718 targets 0x40372c, is taken when t9(=ret(dmParamsGetEnum)) == at(=0xbbb), and falls through when t9(=ret(dmParamsGetEnum)) != at(=0xbbb).
  The `bne` branch at 0x403724 targets 0x403734, is taken when t9(=ret(dmParamsGetEnum)) != at(=0xbbc), and falls through when t9(=ret(dmParamsGetEnum)) == at(=0xbbc).
  The `beq` branch at 0x40372c targets 0x40378c and is always taken.
  The `bne` branch at 0x40373c targets 0x403754, is taken when t0(=ret(dmParamsGetEnum)) != at(=0x3e9), and falls through when t0(=ret(dmParamsGetEnum)) == at(=0x3e9).
  The `beq` branch at 0x40374c targets 0x403774, is taken when t1(=ret(dmParamsGetEnum)) == at(=0x3ea), and falls through when t1(=ret(dmParamsGetEnum)) != at(=0x3ea).
  The `bne` branch at 0x40375c targets 0x40377c, is taken when t2(=ret(dmParamsGetEnum)) != at(=0x3ea), and falls through when t2(=ret(dmParamsGetEnum)) == at(=0x3ea).
  The `bne` branch at 0x40376c targets 0x40377c, is taken when t3(=ret(dmParamsGetEnum)) != at(=0x3e9), and falls through when t3(=ret(dmParamsGetEnum)) == at(=0x3e9).
  The `beq` branch at 0x403774 targets 0x40378c and is always taken.
  The `beq` branch at 0x40377c targets 0x40378c and is always taken.
  The return at 0x40379c has v0 = one of 0x0, 0x1.
  The instructions from 0x403784 to 0x403788 are not reached by any path from the entry, and their branches are not listed.

- `verify_uncompressed` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x4037a4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x4037a4-0x403878 (212 bytes).
  It occupies 212 bytes.
  The `jalr` at 0x4037d8 calls required_params [0x4033dc] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403800 calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x4101d4, a2=?, a3=?.
  The `jalr` at 0x40381c calls strcmp with a0=ret(dmParamsGetString), a1=0x4101ec, a2=?, a3=?.
  The `jalr` at 0x403840 calls dmSetError with a0=0x1772, a1=0x410200, a2=0x410208, a3=?.
  The `bne` branch at 0x4037e4 targets 0x4037f4, is taken when v0(=ret(required_params)) != at(=-0x1), and falls through when v0(=ret(required_params)) == at(=-0x1).
  The `beq` branch at 0x4037ec targets 0x403864 and is always taken.
  The `beq` branch at 0x403824 targets 0x403854, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x40384c targets 0x403864 and is always taken.
  The `beq` branch at 0x403854 targets 0x403864 and is always taken.
  The return at 0x403870 has v0 = one of -0x1, 0x0.
  The instructions from 0x40385c to 0x403860 are not reached by any path from the entry, and their branches are not listed.

- `verify_compressed` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x403878 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x403878-0x403b18 (672 bytes).
  It occupies 672 bytes.
  The `jalr` at 0x4038b0 calls required_params [0x4033dc] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4038d8 calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x410220, a2=?, a3=?.
  The `jalr` at 0x4038f4 calls strcmp with a0=ret(dmParamsGetString), a1=0x410238, a2=?, a3=?.
  The `jalr` at 0x403910 calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x410240, a2=?, a3=?.
  The `jalr` at 0x40392c calls strcmp with a0=ret(dmParamsGetString), a1=0x410258, a2=?, a3=?.
  The `jalr` at 0x403950 calls dmSetError with a0=0x1772, a1=0x41025c, a2=0x410264, a3=?.
  The `jalr` at 0x403970 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x41027c, a2=?, a3=?.
  The `jalr` at 0x403998 calls dmSetError with a0=0x1772, a1=0x410294, a2=0x41029c, a3=?.
  The `jalr` at 0x4039b8 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x4102b4, a2=?, a3=?.
  The `jalr` at 0x4039d8 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x4102c8, a2=?, a3=?.
  The `jalr` at 0x4039f8 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x4102dc, a2=?, a3=?.
  The `jalr` at 0x403a20 calls dmSetError with a0=0x1772, a1=0x4102f0, a2=0x4102f8, a3=?.
  The `jalr` at 0x403a40 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x41030c, a2=?, a3=?.
  The `jalr` at 0x403a74 calls dmSetError with a0=0x1772, a1=0x41031c, a2=0x410324, a3=?.
  The `jalr` at 0x403a94 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x410334, a2=?, a3=?.
  The `jalr` at 0x403ae8 calls dmSetError with a0=0x1772, a1=0x410344, a2=0x41034c, a3=0x1e0.
  The `bne` branch at 0x4038bc targets 0x4038cc, is taken when v0(=ret(required_params)) != at(=-0x1), and falls through when v0(=ret(required_params)) == at(=-0x1).
  The `beq` branch at 0x4038c4 targets 0x403b04 and is always taken.
  The `beq` branch at 0x4038fc targets 0x403964, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x403934 targets 0x403964, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x40395c targets 0x403b04 and is always taken.
  The `beq` branch at 0x40397c targets 0x4039ac, is taken when v0(=ret(dmParamsGetEnum)) == at(=0x44c), and falls through when v0(=ret(dmParamsGetEnum)) != at(=0x44c).
  The `beq` branch at 0x4039a4 targets 0x403b04 and is always taken.
  The `beq` branch at 0x4039c4 targets 0x403a34, is taken when v0(=ret(dmParamsGetEnum)) == at(=0x3f0), and falls through when v0(=ret(dmParamsGetEnum)) != at(=0x3f0).
  The `beq` branch at 0x4039e4 targets 0x403a34, is taken when v0(=ret(dmParamsGetEnum)) == at(=0xbbc), and falls through when v0(=ret(dmParamsGetEnum)) != at(=0xbbc).
  The `beq` branch at 0x403a04 targets 0x403a34, is taken when v0(=ret(dmParamsGetEnum)) == at(=0xbbb), and falls through when v0(=ret(dmParamsGetEnum)) != at(=0xbbb).
  The `beq` branch at 0x403a2c targets 0x403b04 and is always taken.
  The `beq` branch at 0x403a58 targets 0x403a88, is taken when t6(=ret(dmParamsGetInt)) == at(=0x2d0), and falls through when t6(=ret(dmParamsGetInt)) != at(=0x2d0).
  The `beq` branch at 0x403a80 targets 0x403b04 and is always taken.
  The `beq` branch at 0x403aac targets 0x403ac0, is taken when t7(=ret(dmParamsGetInt)) == at(=0x1e0), and falls through when t7(=ret(dmParamsGetInt)) != at(=0x1e0).
  The `bne` branch at 0x403ab8 targets 0x403ac8, is taken when t7(=ret(dmParamsGetInt)) != at(=0x240), and falls through when t7(=ret(dmParamsGetInt)) == at(=0x240).
  The `beq` branch at 0x403ac0 targets 0x403b04 and is always taken.
  The `beq` branch at 0x403af4 targets 0x403b04 and is always taken.
  The return at 0x403b10 has v0 = one of -0x1, 0x0.
  The instructions from 0x403afc to 0x403b00 are not reached by any path from the entry, and their branches are not listed.

- `get_default_uncompressed` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x403b18 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x403b18-0x403bd0 (184 bytes).
  It occupies 184 bytes.
  The `jalr` at 0x403b44 calls dmSetImageDefaults with a0=a0 at entry (arg0), a1=0x2d0, a2=0x1e0, a3=0x3f0.
  The `jalr` at 0x403b6c calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x410360, a2=0x44c, a3=?.
  The `jalr` at 0x403b98 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x410378, a2=0x410390, a3=?.
  The `beq` branch at 0x403b4c targets 0x403b5c, is taken when v0(=ret(dmSetImageDefaults)) == 0, and falls through when v0(=ret(dmSetImageDefaults)) != 0.
  The `beq` branch at 0x403b54 targets 0x403bc0 and is always taken.
  The `beq` branch at 0x403b74 targets 0x403b84, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x403b7c targets 0x403bc0 and is always taken.
  The `beq` branch at 0x403ba0 targets 0x403bb0, is taken when v0(=ret(dmParamsSetString)) == 0, and falls through when v0(=ret(dmParamsSetString)) != 0.
  The `beq` branch at 0x403ba8 targets 0x403bc0 and is always taken.
  The `beq` branch at 0x403bb0 targets 0x403bc0 and is always taken.
  The return at 0x403bc8 has v0 = one of -0x1, 0x0.
  The instructions from 0x403bb8 to 0x403bbc are not reached by any path from the entry, and their branches are not listed.

- `get_default_compressed` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x403bd0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x403bd0-0x403da0 (464 bytes).
  It occupies 464 bytes.
  The `jalr` at 0x403bfc calls dmSetImageDefaults with a0=a0 at entry (arg0), a1=0x2d0, a2=0x1e0, a3=0x3f0.
  The `jalr` at 0x403c24 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x4103a4, a2=0x44c, a3=?.
  The `jalr` at 0x403c50 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x4103bc, a2=0x4103d4, a3=?.
  The `beq` branch at 0x403c04 targets 0x403c14, is taken when v0(=ret(dmSetImageDefaults)) == 0, and falls through when v0(=ret(dmSetImageDefaults)) != 0.
  The `beq` branch at 0x403c0c targets 0x403c78 and is always taken.
  The `beq` branch at 0x403c2c targets 0x403c3c, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x403c34 targets 0x403c78 and is always taken.
  The `beq` branch at 0x403c58 targets 0x403c68, is taken when v0(=ret(dmParamsSetString)) == 0, and falls through when v0(=ret(dmParamsSetString)) != 0.
  The `beq` branch at 0x403c60 targets 0x403c78 and is always taken.
  The `beq` branch at 0x403c68 targets 0x403c78 and is always taken.
  The return at 0x403c80 has v0 = one of -0x1, 0x0.
  The instructions from 0x403c70 to 0x403c74 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x403c88 to 0x403d9c are not reached by any path from the entry, and their branches are not listed.

- `dmICInitDso` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x403c88 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x403c88-0x403da0 (280 bytes).
  It occupies 280 bytes.
  8 such `lw` accesses load 4 bytes from ?, including `lw` at 0x403cb0, `lw` at 0x403cc0, `lw` at 0x403cc8.
  8 such `sw` accesses store 4 bytes to ?, including `sw` at 0x403cbc, `sw` at 0x403cc4, `sw` at 0x403cd0.
  The `jalr` at 0x403cec calls dmICRegisterConverter with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x403d48 calls dmICRegisterConverter with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x403d6c calls dmSetError with a0=0x1774, a1=0x4103dc, a2=0x4103e4, a3=?.
  The `bne` branch at 0x403ccc targets 0x403cb0, is taken when t6(?) != t0(=0x410eec), and falls through when t6(?) == t0(=0x410eec).
  The `bltz` branch at 0x403cf4 targets 0x403d58, is taken when v0(=ret(dmICRegisterConverter)) < 0 (signed), and falls through when v0(=ret(dmICRegisterConverter)) >= 0 (signed).
  The `bne` branch at 0x403d28 targets 0x403d0c, is taken when t1(?) != t5(=0x410ea0), and falls through when t1(?) == t5(=0x410ea0).
  The `bgez` branch at 0x403d50 targets 0x403d80, is taken when v0(=ret(dmICRegisterConverter)) >= 0 (signed), and falls through when v0(=ret(dmICRegisterConverter)) < 0 (signed).
  The `beq` branch at 0x403d78 targets 0x403d90 and is always taken.
  The `beq` branch at 0x403d80 targets 0x403d90 and is always taken.
  The return at 0x403d98 has v0 = one of -0x1, 0x0.
  The instructions from 0x403d88 to 0x403d8c are not reached by any path from the entry, and their branches are not listed.

- `dve_open` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x403da0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x403da0-0x404050 (688 bytes).
  It occupies 688 bytes.
  The `sw` at 0x403e90 stores 4 bytes to ret(calloc) +0x0.
  2 such `lw` accesses load 4 bytes from ret(calloc) +0x0, including `lw` at 0x403e9c, `lw` at 0x403ef0.
  The `sw` at 0x403f10 stores 4 bytes to ret(calloc) +0x80.
  The `sw` at 0x403f30 stores 4 bytes to ret(calloc) +0x84.
  The `lw` at 0x403f38 loads 4 bytes from ret(calloc) +0x84.
  The `sw` at 0x403fa0 stores 4 bytes to abs 0x47c5e8.
  4 such `lw` accesses load 4 bytes from abs 0x47c5e8, including `lw` at 0x403fb4, `lw` at 0x403fd4, `lw` at 0x403ff4.
  The `sw` at 0x403fc0 stores 4 bytes to abs 0x47c5f0.
  The `sw` at 0x403fe0 stores 4 bytes to abs 0x47c5f4.
  The `sw` at 0x404000 stores 4 bytes to abs 0x47c5f8.
  The `sw` at 0x404028 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x403dc8 calls vice_get_lib_rev with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403df8 calls dmSetError with a0=0x1774, a1=0x410404, a2=0x41040c, a3=0x6b7a.
  The `jalr` at 0x403e18 calls calloc with a0=0x1, a1=0xe8, a2=?, a3=?.
  The `jalr` at 0x403e48 calls dmSetError with a0=0x1774, a1=0x410424, a2=0x41042c, a3=?.
  The `jalr` at 0x403e68 calls init_formats [0x403294] with a0=ret(calloc)+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x403e7c calls vice_open with a0=0x41043c, a1=?, a2=?, a3=?.
  The `jalr` at 0x403ebc calls dmSetError with a0=0x1774, a1=0x41044c, a2=0x410454, a3=?.
  The `jalr` at 0x403ed8 calls vice_setetc with a0=ret(vice_open), a1=?, a2=?, a3=?.
  The `jalr` at 0x403f00 calls vice_event_init with a0=[ret(calloc)], a1=ret(calloc)+136, a2=ret(calloc)+176, a3=0x40.
  The `jalr` at 0x403f1c calls getenv with a0=0x410470, a1=?, a2=?, a3=?.
  The `jalr` at 0x403f4c calls printf with a0=0x41047c, a1=?, a2=?, a3=?.
  The `jalr` at 0x403f60 calls getenv with a0=0x410498, a1=?, a2=?, a3=?.
  The `jalr` at 0x403f78 calls getenv with a0=0x4104a8, a1=?, a2=?, a3=?.
  The `jalr` at 0x403f90 calls atoi with a0=ret(getenv), a1=?, a2=?, a3=?.
  The `jalr` at 0x403fb0 calls calloc with a0=[0x47c5e8], a1=0x4, a2=?, a3=?.
  The `jalr` at 0x403fd0 calls calloc with a0=[0x47c5e8], a1=0x4, a2=?, a3=?.
  The `jalr` at 0x403ff0 calls calloc with a0=[0x47c5e8], a1=0x4, a2=?, a3=?.
  The `jalr` at 0x404014 calls printf with a0=0x4104b8, a1=[0x47c5e8], a2=?, a3=?.
  The `beq` branch at 0x403dd8 targets 0x403e0c, is taken when t6(?) == at(=0x6b7a), and falls through when t6(?) != at(=0x6b7a).
  The `beq` branch at 0x403e04 targets 0x40403c and is always taken.
  The `bne` branch at 0x403e2c targets 0x403e5c, is taken when t7(=ret(calloc)) != 0, and falls through when t7(=ret(calloc)) == 0.
  The `beq` branch at 0x403e54 targets 0x40403c and is always taken.
  The `bgez` branch at 0x403ea0 targets 0x403ed0, is taken when t0(=[ret(calloc)]) >= 0 (signed), and falls through when t0(=[ret(calloc)]) < 0 (signed).
  The `beq` branch at 0x403ec8 targets 0x40403c and is always taken.
  The `beq` branch at 0x403f3c targets 0x403f58, is taken when t7(=[ret(calloc)+132]) == 0, and falls through when t7(=[ret(calloc)+132]) != 0.
  The `beq` branch at 0x403f68 targets 0x404020, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `beq` branch at 0x40402c targets 0x40403c and is always taken.
  The return at 0x404048 has v0 = one of -0x1, 0x0.
  The instructions from 0x404034 to 0x404038 are not reached by any path from the entry, and their branches are not listed.

- `dv_open` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x404050 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404050-0x404418 (968 bytes).
  It occupies 968 bytes.
  The `sw` at 0x404140 stores 4 bytes to ret(calloc) +0x0.
  2 such `lw` accesses load 4 bytes from ret(calloc) +0x0, including `lw` at 0x40414c, `lw` at 0x4042b8.
  2 such `sw` accesses store 4 bytes to sym(ge) +0x0, including `sw` at 0x4041b0, `sw` at 0x4041f8.
  2 such `lw` accesses load 4 bytes from sym(ge) +0x0, including `lw` at 0x4041b4, `lw` at 0x4041fc.
  2 such `lbu` accesses load 1 byte from [sym(ge)] +0x0, including `lbu` at 0x4041c0, `lbu` at 0x404208.
  The `sb` at 0x4041d8 stores 1 byte to ret(calloc) +0xd9.
  The `sb` at 0x404220 stores 1 byte to ret(calloc) +0xd8.
  The `lbu` at 0x404234 loads 1 byte from ret(calloc) +0xd9.
  2 such `sw` accesses store 4 bytes to ret(calloc) +0x2c, including `sw` at 0x40427c, `sw` at 0x40428c.
  The `lw` at 0x404284 loads 4 bytes from ret(calloc) +0x2c.
  The `sw` at 0x404298 stores 4 bytes to ret(calloc) +0x54.
  The `sw` at 0x4042a8 stores 4 bytes to ret(calloc) +0x58.
  The `sw` at 0x4042d8 stores 4 bytes to ret(calloc) +0x80.
  The `sw` at 0x4042f8 stores 4 bytes to ret(calloc) +0x84.
  The `lw` at 0x404300 loads 4 bytes from ret(calloc) +0x84.
  The `sw` at 0x404368 stores 4 bytes to abs 0x47c5e8.
  4 such `lw` accesses load 4 bytes from abs 0x47c5e8, including `lw` at 0x40437c, `lw` at 0x40439c, `lw` at 0x4043bc.
  The `sw` at 0x404388 stores 4 bytes to abs 0x47c5f0.
  The `sw` at 0x4043a8 stores 4 bytes to abs 0x47c5f4.
  The `sw` at 0x4043c8 stores 4 bytes to abs 0x47c5f8.
  The `sw` at 0x4043f0 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x404078 calls vice_get_lib_rev with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4040a8 calls dmSetError with a0=0x1774, a1=0x4104dc, a2=0x4104e4, a3=0x6b7a.
  The `jalr` at 0x4040c8 calls calloc with a0=0x1, a1=0xe8, a2=?, a3=?.
  The `jalr` at 0x4040f8 calls dmSetError with a0=0x1774, a1=0x4104fc, a2=0x410504, a3=?.
  The `jalr` at 0x404118 calls init_formats [0x403294] with a0=ret(calloc)+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x40412c calls vice_open with a0=0x410514, a1=?, a2=?, a3=?.
  The `jalr` at 0x40416c calls dmSetError with a0=0x1774, a1=0x410524, a2=0x41052c, a3=?.
  The `jalr` at 0x404188 calls vice_setetc with a0=ret(vice_open), a1=?, a2=?, a3=?.
  The `jalr` at 0x40419c calls getenv with a0=0x410548, a1=?, a2=?, a3=?.
  The `jalr` at 0x4041e4 calls getenv with a0=0x410554, a1=?, a2=?, a3=?.
  The `jalr` at 0x404248 calls vice_file with a0=0x41055c, a1=?, a2=?, a3=?.
  The `jalr` at 0x404268 calls vice_load_msp_code with a0=ret(vice_open), a1=ret(vice_file), a2=ret(calloc)+28, a3=0x0.
  The `jalr` at 0x4042c8 calls vice_event_init with a0=[ret(calloc)], a1=ret(calloc)+136, a2=ret(calloc)+176, a3=0x40.
  The `jalr` at 0x4042e4 calls getenv with a0=0x410568, a1=?, a2=?, a3=?.
  The `jalr` at 0x404314 calls printf with a0=0x410574, a1=?, a2=?, a3=?.
  The `jalr` at 0x404328 calls getenv with a0=0x410590, a1=?, a2=?, a3=?.
  The `jalr` at 0x404340 calls getenv with a0=0x4105a0, a1=?, a2=?, a3=?.
  The `jalr` at 0x404358 calls atoi with a0=ret(getenv), a1=?, a2=?, a3=?.
  The `jalr` at 0x404378 calls calloc with a0=[0x47c5e8], a1=0x4, a2=?, a3=?.
  The `jalr` at 0x404398 calls calloc with a0=[0x47c5e8], a1=0x4, a2=?, a3=?.
  The `jalr` at 0x4043b8 calls calloc with a0=[0x47c5e8], a1=0x4, a2=?, a3=?.
  The `jalr` at 0x4043dc calls printf with a0=0x4105b0, a1=[0x47c5e8], a2=?, a3=?.
  The `beq` branch at 0x404088 targets 0x4040bc, is taken when t6(?) == at(=0x6b7a), and falls through when t6(?) != at(=0x6b7a).
  The `beq` branch at 0x4040b4 targets 0x404404 and is always taken.
  The `bne` branch at 0x4040dc targets 0x40410c, is taken when t7(=ret(calloc)) != 0, and falls through when t7(=ret(calloc)) == 0.
  The `beq` branch at 0x404104 targets 0x404404 and is always taken.
  The `bgez` branch at 0x404150 targets 0x404180, is taken when t0(=[ret(calloc)]) >= 0 (signed), and falls through when t0(=[ret(calloc)]) < 0 (signed).
  The `beq` branch at 0x404178 targets 0x404404 and is always taken.
  The `beq` branch at 0x4041b8 targets 0x4041dc, is taken when t1(=[sym(ge)]) == 0, and falls through when t1(=[sym(ge)]) != 0.
  The `bne` branch at 0x4041c8 targets 0x4041dc, is taken when t2(=[[sym(ge)]]:1) != at(=0x79), and falls through when t2(=[[sym(ge)]]:1) == at(=0x79).
  The `beq` branch at 0x404200 targets 0x404224, is taken when t5(=[sym(ge)]) == 0, and falls through when t5(=[sym(ge)]) != 0.
  The `bne` branch at 0x404210 targets 0x404224, is taken when t6(=[[sym(ge)]]:1) != at(=0x6e), and falls through when t6(=[[sym(ge)]]:1) == at(=0x6e).
  The `beq` branch at 0x404238 targets 0x4042ac, is taken when t2(=[ret(calloc)+217]:1) == 0, and falls through when t2(=[ret(calloc)+217]:1) != 0.
  The `beq` branch at 0x4042a4 targets 0x4042ac and is always taken.
  The `beq` branch at 0x404304 targets 0x404320, is taken when t8(=[ret(calloc)+132]) == 0, and falls through when t8(=[ret(calloc)+132]) != 0.
  The `beq` branch at 0x404330 targets 0x4043e8, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `beq` branch at 0x4043f4 targets 0x404404 and is always taken.
  The return at 0x404410 has v0 = one of -0x1, 0x0.
  The instructions from 0x4043fc to 0x404400 are not reached by any path from the entry, and their branches are not listed.

- `dv_close` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x404418 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404418-0x4045bc (420 bytes).
  It occupies 420 bytes.
  The `lw` at 0x404440 loads 4 bytes from a0 (arg0 at entry) +0x84.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x404464, `lw` at 0x40448c.
  The `lw` at 0x4044c4 loads 4 bytes from abs 0x47c5d0.
  3 such `lw` accesses load 4 bytes from abs 0x410e50, including `lw` at 0x4044d8, `lw` at 0x4044f4, `lw` at 0x404510.
  The `sw` at 0x404520 stores 4 bytes to abs 0x410e50.
  2 such `lw` accesses load 4 bytes from abs 0x47c604, including `lw` at 0x404528, `lw` at 0x404540.
  The `sw` at 0x40454c stores 4 bytes to abs 0x47c604.
  The `sw` at 0x404554 stores 4 bytes to abs 0x47c5d0.
  2 such `lw` accesses load 4 bytes from abs 0x47c5f4, including `lw` at 0x40455c, `lw` at 0x404574.
  The `lw` at 0x404588 loads 4 bytes from abs 0x47c5f8.
  The `lw` at 0x40459c loads 4 bytes from abs 0x47c5f0.
  The `jalr` at 0x404454 calls printf with a0=0x4105d4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404474 calls vice_event_uninit with a0=[a0], a1=a0+136, a2=a0+176, a3=?.
  The `jalr` at 0x404488 calls vice_close with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x4044a0 calls free_formats [0x403348] with a0=a0+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x4044b4 calls free with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x4044f0 calls kill with a0=[0x410e50], a1=0x9, a2=?, a3=?.
  The `jalr` at 0x40450c calls waitpid with a0=[0x410e50], a1=0x0, a2=0x0, a3=?.
  The `jalr` at 0x40453c calls dmBufferDestroyQueue with a0=[0x47c604], a1=?, a2=?, a3=?.
  The `jalr` at 0x404570 calls free with a0=[0x47c5f4], a1=?, a2=?, a3=?.
  The `jalr` at 0x404584 calls free with a0=[0x47c5f8], a1=?, a2=?, a3=?.
  The `jalr` at 0x404598 calls free with a0=[0x47c5f0], a1=?, a2=?, a3=?.
  The `beq` branch at 0x404444 targets 0x404460, is taken when t8(=[a0+132]) == 0, and falls through when t8(=[a0+132]) != 0.
  The `beq` branch at 0x4044c8 targets 0x404558, is taken when t1(=[0x47c5d0]) == 0, and falls through when t1(=[0x47c5d0]) != 0.
  The `beq` branch at 0x4044dc targets 0x404524, is taken when t2(=[0x410e50]) == at(=-0x1), and falls through when t2(=[0x410e50]) != at(=-0x1).
  The `beq` branch at 0x40452c targets 0x404550, is taken when t4(=[0x47c604]) == 0, and falls through when t4(=[0x47c604]) != 0.
  The `beq` branch at 0x404560 targets 0x4045a4, is taken when t5(=[0x47c5f4]) == 0, and falls through when t5(=[0x47c5f4]) != 0.
  The `beq` branch at 0x4045a4 targets 0x4045ac and is always taken.
  The return at 0x4045b4 has v0 = ?.

- `dve_close` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x4045bc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x4045bc-0x40467c (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0x4045e4 loads 4 bytes from a0 (arg0 at entry) +0x84.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x404608, `lw` at 0x404630.
  The `jalr` at 0x4045f8 calls printf with a0=0x4105f0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404618 calls vice_event_uninit with a0=[a0], a1=a0+136, a2=a0+176, a3=?.
  The `jalr` at 0x40462c calls vice_close with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x404644 calls free_formats [0x403348] with a0=a0+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x404658 calls free with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x4045e8 targets 0x404604, is taken when t8(=[a0+132]) == 0, and falls through when t8(=[a0+132]) != 0.
  The `beq` branch at 0x404664 targets 0x40466c and is always taken.
  The return at 0x404674 has v0 = ret(free).

- `dv_describe` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x40467c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40467c-0x404768 (236 bytes).
  It occupies 236 bytes.
  The `jalr` at 0x4046ac calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x41060c, a2=0x64766320, a3=a3 at entry (arg3).
  The `jalr` at 0x4046cc calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x410618, a2=0x410628, a3=?.
  The `jalr` at 0x4046e8 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x410630, a2=0x1, a3=?.
  The `jalr` at 0x404704 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x41063c, a2=0x2, a3=?.
  The `jalr` at 0x404720 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x410654, a2=0x0, a3=?.
  The `jalr` at 0x40473c calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x410664, a2=0x0, a3=?.
  The `beq` branch at 0x404748 targets 0x404758 and is always taken.
  The return at 0x404760 has v0 = 0x0.
  The instructions from 0x404750 to 0x404754 are not reached by any path from the entry, and their branches are not listed.

- `dve_describe` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x404768 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404768-0x404854 (236 bytes).
  It occupies 236 bytes.
  The `jalr` at 0x404798 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x410674, a2=0x64766320, a3=a3 at entry (arg3).
  The `jalr` at 0x4047b8 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x410680, a2=0x410690, a3=?.
  The `jalr` at 0x4047d4 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x410698, a2=0x1, a3=?.
  The `jalr` at 0x4047f0 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x4106a4, a2=0x1, a3=?.
  The `jalr` at 0x40480c calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x4106bc, a2=0x0, a3=?.
  The `jalr` at 0x404828 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x4106cc, a2=0x0, a3=?.
  The `beq` branch at 0x404834 targets 0x404844 and is always taken.
  The return at 0x40484c has v0 = 0x0.
  The instructions from 0x40483c to 0x404840 are not reached by any path from the entry, and their branches are not listed.

- `dv_dstpoolis` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x404854 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404854-0x404948 (244 bytes).
  It occupies 244 bytes.
  The `sw` at 0x404884 stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `sw` at 0x404910 stores 4 bytes to abs 0x47c600.
  The `lw` at 0x404924 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x404890 calls dmBufferGetAllocSize with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4048cc calls dmSetError with a0=0x1772, a1=0x4106dc, a2=0x4106e4, a3=0x3e0000.
  The `jalr` at 0x4048ec calls dmBufferSetPoolSelectSize with a0=a1 at entry (arg1), a1=ret(dmBufferGetAllocSize), a2=?, a3=?.
  The `jalr` at 0x404900 calls dmBufferGetPoolFD with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x404920 calls vice_dmbuf_outpool with a0=[a0], a1=a1 at entry (arg1), a2=?, a3=?.
  The `bne` branch at 0x4048ac targets 0x4048e0, is taken when t9(=ret(dmBufferGetAllocSize)) < at(=0x3e0001) (signed), and falls through when t9(=ret(dmBufferGetAllocSize)) >= at(=0x3e0001) (signed).
  The `beq` branch at 0x4048d8 targets 0x404938 and is always taken.
  The `beq` branch at 0x404928 targets 0x404938 and is always taken.
  The return at 0x404940 has v0 = one of -0x1, ret(vice_dmbuf_outpool).
  The instructions from 0x404930 to 0x404934 are not reached by any path from the entry, and their branches are not listed.

- `dve_dstpoolis` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x404948 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404948-0x404a5c (276 bytes).
  It occupies 276 bytes.
  The `sw` at 0x4049c0 stores 4 bytes to sym(dvbitspool) +0x0.
  The `sw` at 0x4049cc stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `lw` at 0x404a38 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x404980 calls make_dvcoeff_pool [0x4031c4] with a0=0x14, a1=sp-12, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4049a4 calls dmSetError with a0=0x1777, a1=0x4106fc, a2=0x41070c, a3=?.
  The `jalr` at 0x4049d8 calls dmBufferGetAllocSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404a14 calls dmSetError with a0=0x1772, a1=0x410728, a2=0x410730, a3=0x3e0000.
  The `jalr` at 0x404a34 calls vice_dmbuf_outpool with a0=[a0], a1=?, a2=?, a3=?.
  The `beq` branch at 0x404988 targets 0x4049b8, is taken when v0(=ret(make_dvcoeff_pool)) == 0, and falls through when v0(=ret(make_dvcoeff_pool)) != 0.
  The `beq` branch at 0x4049b0 targets 0x404a4c and is always taken.
  The `bne` branch at 0x4049f4 targets 0x404a28, is taken when t0(=ret(dmBufferGetAllocSize)) < at(=0x3e0001) (signed), and falls through when t0(=ret(dmBufferGetAllocSize)) >= at(=0x3e0001) (signed).
  The `beq` branch at 0x404a20 targets 0x404a4c and is always taken.
  The `beq` branch at 0x404a3c targets 0x404a4c and is always taken.
  The return at 0x404a54 has v0 = one of -0x1, ret(vice_dmbuf_outpool).
  The instructions from 0x404a44 to 0x404a48 are not reached by any path from the entry, and their branches are not listed.

- `dv_fd` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x404a5c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404a5c-0x404a8c (48 bytes).
  It occupies 48 bytes.
  The `lw` at 0x404a78 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `beq` branch at 0x404a74 targets 0x404a84 and is always taken.
  The return at 0x404a84 has v0 = [a0+128].
  The instructions from 0x404a7c to 0x404a80 are not reached by any path from the entry, and their branches are not listed.

- `dv_getsrcfilled` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x404a8c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404a8c-0x404af4 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x404ac0 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `jalr` at 0x404abc calls dmFifoNfilled with a0=[a0+136], a1=sp-8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x404ac4 targets 0x404ad4, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The `beq` branch at 0x404acc targets 0x404ae4 and is always taken.
  The `beq` branch at 0x404ad4 targets 0x404ae4 and is always taken.
  The return at 0x404aec has v0 = one of -0x1, ?.
  The instructions from 0x404adc to 0x404ae0 are not reached by any path from the entry, and their branches are not listed.

- `dv_getdstfilled` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x404af4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404af4-0x404b5c (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x404b28 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `jalr` at 0x404b24 calls dmFifoNfilled with a0=[a0+176], a1=sp-8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x404b2c targets 0x404b3c, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The `beq` branch at 0x404b34 targets 0x404b4c and is always taken.
  The `beq` branch at 0x404b3c targets 0x404b4c and is always taken.
  The return at 0x404b54 has v0 = one of -0x1, ?.
  The instructions from 0x404b44 to 0x404b48 are not reached by any path from the entry, and their branches are not listed.

- `dv_verifysrc` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x404b5c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404b5c-0x404bb0 (84 bytes).
  It occupies 84 bytes.
  The `jalr` at 0x404b88 calls verify_compressed [0x403878] with a0=a0 at entry (arg0), a1=0x410748, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x404b90 targets 0x404ba0 and is always taken.
  The return at 0x404ba8 has v0 = ret(verify_compressed).
  The instructions from 0x404b98 to 0x404b9c are not reached by any path from the entry, and their branches are not listed.

- `dve_verifysrc` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x404bb0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404bb0-0x404c04 (84 bytes).
  It occupies 84 bytes.
  The `jalr` at 0x404bdc calls verify_uncompressed [0x4037a4] with a0=a0 at entry (arg0), a1=0x41074c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x404be4 targets 0x404bf4 and is always taken.
  The return at 0x404bfc has v0 = ret(verify_uncompressed).
  The instructions from 0x404bec to 0x404bf0 are not reached by any path from the entry, and their branches are not listed.

- `dv_verifydst` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x404c04 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404c04-0x404c58 (84 bytes).
  It occupies 84 bytes.
  The `jalr` at 0x404c30 calls verify_uncompressed [0x4037a4] with a0=a0 at entry (arg0), a1=0x410750, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x404c38 targets 0x404c48 and is always taken.
  The return at 0x404c50 has v0 = ret(verify_uncompressed).
  The instructions from 0x404c40 to 0x404c44 are not reached by any path from the entry, and their branches are not listed.

- `dve_verifydst` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x404c58 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404c58-0x404cac (84 bytes).
  It occupies 84 bytes.
  The `jalr` at 0x404c84 calls verify_compressed [0x403878] with a0=a0 at entry (arg0), a1=0x410754, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x404c8c targets 0x404c9c and is always taken.
  The return at 0x404ca4 has v0 = ret(verify_compressed).
  The instructions from 0x404c94 to 0x404c98 are not reached by any path from the entry, and their branches are not listed.

- `dv_verifycvt` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x404cac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404cac-0x404cd4 (40 bytes).
  It occupies 40 bytes.
  The `beq` branch at 0x404cbc targets 0x404ccc and is always taken.
  The return at 0x404ccc has v0 = 0x0.
  The instructions from 0x404cc4 to 0x404cc8 are not reached by any path from the entry, and their branches are not listed.

- `dv_verifysrcdstcvt` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x404cd4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404cd4-0x404da8 (212 bytes).
  It occupies 212 bytes.
  The `jalr` at 0x404d10 calls dv_verifysrc [0x404b5c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404d40 calls dv_verifydst [0x404c04] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x404d70 calls dv_verifycvt [0x404cac] with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `beq` branch at 0x404cfc targets 0x404d28, is taken when t6(=a0) == 0, and falls through when t6(=a0) != 0.
  The `beq` branch at 0x404d18 targets 0x404d28, is taken when v0(=ret(dv_verifysrc)) == 0, and falls through when v0(=ret(dv_verifysrc)) != 0.
  The `beq` branch at 0x404d20 targets 0x404d98 and is always taken.
  The `beq` branch at 0x404d2c targets 0x404d58, is taken when t7(=a1) == 0, and falls through when t7(=a1) != 0.
  The `beq` branch at 0x404d48 targets 0x404d58, is taken when v0(=ret(dv_verifydst)) == 0, and falls through when v0(=ret(dv_verifydst)) != 0.
  The `beq` branch at 0x404d50 targets 0x404d98 and is always taken.
  The `beq` branch at 0x404d5c targets 0x404d88, is taken when t8(=a2) == 0, and falls through when t8(=a2) != 0.
  The `beq` branch at 0x404d78 targets 0x404d88, is taken when v0(=ret(dv_verifycvt)) == 0, and falls through when v0(=ret(dv_verifycvt)) != 0.
  The `beq` branch at 0x404d80 targets 0x404d98 and is always taken.
  The `beq` branch at 0x404d88 targets 0x404d98 and is always taken.
  The return at 0x404da0 has v0 = one of -0x1, 0x0.
  The instructions from 0x404d90 to 0x404d94 are not reached by any path from the entry, and their branches are not listed.

- `dve_verifysrcdstcvt` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x404da8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404da8-0x404e7c (212 bytes).
  It occupies 212 bytes.
  The `jalr` at 0x404de4 calls dve_verifysrc [0x404bb0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404e14 calls dve_verifydst [0x404c58] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x404e44 calls dv_verifycvt [0x404cac] with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `beq` branch at 0x404dd0 targets 0x404dfc, is taken when t6(=a0) == 0, and falls through when t6(=a0) != 0.
  The `beq` branch at 0x404dec targets 0x404dfc, is taken when v0(=ret(dve_verifysrc)) == 0, and falls through when v0(=ret(dve_verifysrc)) != 0.
  The `beq` branch at 0x404df4 targets 0x404e6c and is always taken.
  The `beq` branch at 0x404e00 targets 0x404e2c, is taken when t7(=a1) == 0, and falls through when t7(=a1) != 0.
  The `beq` branch at 0x404e1c targets 0x404e2c, is taken when v0(=ret(dve_verifydst)) == 0, and falls through when v0(=ret(dve_verifydst)) != 0.
  The `beq` branch at 0x404e24 targets 0x404e6c and is always taken.
  The `beq` branch at 0x404e30 targets 0x404e5c, is taken when t8(=a2) == 0, and falls through when t8(=a2) != 0.
  The `beq` branch at 0x404e4c targets 0x404e5c, is taken when v0(=ret(dv_verifycvt)) == 0, and falls through when v0(=ret(dv_verifycvt)) != 0.
  The `beq` branch at 0x404e54 targets 0x404e6c and is always taken.
  The `beq` branch at 0x404e5c targets 0x404e6c and is always taken.
  The return at 0x404e74 has v0 = one of -0x1, 0x0.
  The instructions from 0x404e64 to 0x404e68 are not reached by any path from the entry, and their branches are not listed.

- `dv_defaultsrc` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x404e7c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404e7c-0x404ecc (80 bytes).
  It occupies 80 bytes.
  The `jalr` at 0x404ea4 calls get_default_compressed [0x403bd0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x404eac targets 0x404ebc and is always taken.
  The return at 0x404ec4 has v0 = ret(get_default_compressed).
  The instructions from 0x404eb4 to 0x404eb8 are not reached by any path from the entry, and their branches are not listed.

- `dve_defaultsrc` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x404ecc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404ecc-0x404f1c (80 bytes).
  It occupies 80 bytes.
  The `jalr` at 0x404ef4 calls get_default_uncompressed [0x403b18] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x404efc targets 0x404f0c and is always taken.
  The return at 0x404f14 has v0 = ret(get_default_uncompressed).
  The instructions from 0x404f04 to 0x404f08 are not reached by any path from the entry, and their branches are not listed.

- `dv_defaultdst` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x404f1c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404f1c-0x404f6c (80 bytes).
  It occupies 80 bytes.
  The `jalr` at 0x404f44 calls get_default_uncompressed [0x403b18] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x404f4c targets 0x404f5c and is always taken.
  The return at 0x404f64 has v0 = ret(get_default_uncompressed).
  The instructions from 0x404f54 to 0x404f58 are not reached by any path from the entry, and their branches are not listed.

- `dv_defaultcvt` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x404f6c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404f6c-0x404f94 (40 bytes).
  It occupies 40 bytes.
  The `beq` branch at 0x404f7c targets 0x404f8c and is always taken.
  The return at 0x404f8c has v0 = 0x0.
  The instructions from 0x404f84 to 0x404f88 are not reached by any path from the entry, and their branches are not listed.

- `dve_defaultdst` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x404f94 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404f94-0x404fe4 (80 bytes).
  It occupies 80 bytes.
  The `jalr` at 0x404fbc calls get_default_compressed [0x403bd0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x404fc4 targets 0x404fd4 and is always taken.
  The return at 0x404fdc has v0 = ret(get_default_compressed).
  The instructions from 0x404fcc to 0x404fd0 are not reached by any path from the entry, and their branches are not listed.

- `threadarg_enqueue` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x404fe4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404fe4-0x4050a8 (196 bytes).
  It occupies 196 bytes.
  The `lw` at 0x405024 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0x405028 stores 4 bytes to ret(malloc) +0x0.
  The `lw` at 0x405034 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0x405038 stores 4 bytes to ret(malloc) +0x4.
  The `lw` at 0x40504c loads 4 bytes from abs 0x47c604.
  The `jalr` at 0x40500c calls malloc with a0=0x8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x405048 calls dmBufferEnqueue with a0=[0x47c604], a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0x40507c calls fprintf with a0=sym(__iob)+32, a1=0x410758, a2=ret(malloc), a3=?.
  The `bne` branch at 0x405050 targets 0x405068, is taken when v0(=ret(dmBufferEnqueue)) != 0, and falls through when v0(=ret(dmBufferEnqueue)) == 0.
  The `beq` branch at 0x405058 targets 0x405098 and is always taken.
  The `beq` branch at 0x405088 targets 0x405098 and is always taken.
  The return at 0x4050a0 has v0 = 0x0.
  The instructions from 0x405060 to 0x405064 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x405090 to 0x405094 are not reached by any path from the entry, and their branches are not listed.

- `threadarg_dequeue` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x4050a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x4050a8-0x405688 (1504 bytes).
  It occupies 1504 bytes.
  The `lw` at 0x4050d4 loads 4 bytes from abs 0x47c604.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4050e8, `lw` at 0x4050f8.
  The `sw` at 0x4050ec stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `sw` at 0x4050fc stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `jalr` at 0x4050d0 calls dmBufferDequeue with a0=[0x47c604], a1=sp-4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x405108 calls free with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x4050d8 targets 0x405124, is taken when v0(=ret(dmBufferDequeue)) != 0, and falls through when v0(=ret(dmBufferDequeue)) == 0.
  The `beq` branch at 0x405114 targets 0x405134 and is always taken.
  The `beq` branch at 0x405124 targets 0x405134 and is always taken.
  The return at 0x40513c has v0 = one of -0x1, 0x0.
  The instructions from 0x40511c to 0x405120 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x40512c to 0x405130 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x405144 to 0x405684 are not reached by any path from the entry, and their branches are not listed.

- `dvsend_thread_looping` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x405144 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x405144-0x405688 (1348 bytes).
  It occupies 1348 bytes.
  3 such `lw` accesses load 4 bytes from abs 0x410e54, including `lw` at 0x4051b8, `lw` at 0x405204, `lw` at 0x405248.
  7 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4051d4, `lw` at 0x4052fc, `lw` at 0x4053ec.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4051f4, `sw` at 0x40531c, `sw` at 0x4054c0.
  2 such `lw` accesses load 4 bytes from abs 0x47c604, including `lw` at 0x405278, `lw` at 0x405658.
  2 such `lw` accesses load 4 bytes from abs 0x47c5dc, including `lw` at 0x4052b0, `lw` at 0x4053a4.
  3 such `lw` accesses load 4 bytes from abs 0x47c5e0, including `lw` at 0x4052e0, `lw` at 0x40532c, `lw` at 0x405370.
  3 such `lw` accesses load 4 bytes from abs 0x47c600, including `lw` at 0x405484, `lw` at 0x4054d0, `lw` at 0x405514.
  The `jalr` at 0x405174 calls signal with a0=0x1, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x405188 calls prctl with a0=0xc, a1=?, a2=?, a3=?.
  The `jalr` at 0x4051a0 calls memset with a0=sp-144, a1=0x0, a2=0x80, a3=?.
  The `jalr` at 0x405214 calls select with a0=[0x410e54]+1, a1=sp-144, a2=0x0, a3=0x0.
  The `jalr` at 0x405230 calls perror with a0=0x410778, a1=?, a2=?, a3=?.
  The `jalr` at 0x405258 calls select with a0=[0x410e54]+1, a1=sp-144, a2=0x0, a3=0x0.
  The `jalr` at 0x405274 calls dmBufferGetQueueFilled with a0=[0x47c604], a1=?, a2=?, a3=?.
  The `jalr` at 0x405290 calls threadarg_dequeue [0x4050a8] with a0=sp-8, a1=?, a2=?, a3=?.
  The `jalr` at 0x4052ac calls dmBufferAllocate with a0=[0x47c5dc], a1=sp-16, a2=?, a3=?.
  The `jalr` at 0x4052c8 calls memset with a0=sp-144, a1=0x0, a2=0x80, a3=?.
  The `jalr` at 0x40533c calls select with a0=[0x47c5e0]+1, a1=0x0, a2=sp-144, a3=0x0.
  The `jalr` at 0x405358 calls perror with a0=0x41079c, a1=?, a2=?, a3=?.
  The `jalr` at 0x405380 calls select with a0=[0x47c5e0]+1, a1=0x0, a2=sp-144, a3=0x0.
  The `jalr` at 0x4053a0 calls dmBufferAllocate with a0=[0x47c5dc], a1=sp-16, a2=?, a3=?.
  The `jalr` at 0x4053c0 calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4053d8 calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405400 calls qparsemain with a0=ret(dmBufferMapData), a1=?, a2=?, a3=ret(dmBufferMapData).
  The `jalr` at 0x405418 calls dmBufferGetUSTMSCpair with a0=sp-168, a1=?, a2=?, a3=?.
  The `jalr` at 0x405454 calls dmBufferSetUSTMSCpair with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40546c calls memset with a0=sp-144, a1=0x0, a2=0x80, a3=?.
  The `jalr` at 0x4054e0 calls select with a0=[0x47c600]+1, a1=0x0, a2=sp-144, a3=0x0.
  The `jalr` at 0x4054fc calls perror with a0=0x4107bc, a1=?, a2=?, a3=?.
  The `jalr` at 0x405524 calls select with a0=[0x47c600]+1, a1=0x0, a2=sp-144, a3=0x0.
  The `jalr` at 0x405554 calls vice_dmbuf_send with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40556c calls getpid with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405590 calls fprintf with a0=sym(__iob)+32, a1=0x4107dc, a2=ret(getpid), a3=?.
  The `jalr` at 0x4055a8 calls vice_dms_geterrs with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4055bc calls getpid with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4055e0 calls fprintf with a0=sym(__iob)+32, a1=0x4107fc, a2=ret(getpid), a3=?.
  The `jalr` at 0x4055f4 calls dmBufferFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405608 calls dmBufferFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405620 calls getenv with a0=0x410820, a1=?, a2=?, a3=?.
  The `jalr` at 0x405640 calls fprintf with a0=sym(__iob)+32, a1=0x41082c, a2=?, a3=?.
  The `jalr` at 0x405654 calls dmBufferGetQueueFilled with a0=[0x47c604], a1=?, a2=?, a3=?.
  The `bgez` branch at 0x4051bc targets 0x4051cc, is taken when t6(=[0x410e54]) >= 0 (signed), and falls through when t6(=[0x410e54]) < 0 (signed).
  The `bgez` branch at 0x4051d8 targets 0x4051ec, is taken when t6(=[0x410e54]) >= 0 (signed), and falls through when t6(=[0x410e54]) < 0 (signed).
  The `beq` branch at 0x4051e0 targets 0x4051ec, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x405220 targets 0x40526c, is taken when v0(=ret(select)) != at(=-0x1), and falls through when v0(=ret(select)) == at(=-0x1).
  The `beq` branch at 0x405264 targets 0x405228, is taken when v0(=ret(select)) == at(=-0x1), and falls through when v0(=ret(select)) != at(=-0x1).
  The `blez` branch at 0x40527c targets 0x405664, is taken when v0(=ret(dmBufferGetQueueFilled)) <= 0 (signed), and falls through when v0(=ret(dmBufferGetQueueFilled)) > 0 (signed).
  The `bne` branch at 0x405298 targets 0x405618, is taken when v0(=ret(threadarg_dequeue)) != 0, and falls through when v0(=ret(threadarg_dequeue)) == 0.
  The `beq` branch at 0x4052b4 targets 0x4053b0, is taken when v0(=ret(dmBufferAllocate)) == 0, and falls through when v0(=ret(dmBufferAllocate)) != 0.
  The `bgez` branch at 0x4052e4 targets 0x4052f4, is taken when t7(=[0x47c5e0]) >= 0 (signed), and falls through when t7(=[0x47c5e0]) < 0 (signed).
  The `bgez` branch at 0x405300 targets 0x405314, is taken when t7(=[0x47c5e0]) >= 0 (signed), and falls through when t7(=[0x47c5e0]) < 0 (signed).
  The `beq` branch at 0x405308 targets 0x405314, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x405348 targets 0x405394, is taken when v0(=ret(select)) != at(=-0x1), and falls through when v0(=ret(select)) == at(=-0x1).
  The `beq` branch at 0x40538c targets 0x405350, is taken when v0(=ret(select)) == at(=-0x1), and falls through when v0(=ret(select)) != at(=-0x1).
  The `bne` branch at 0x4053a8 targets 0x4052bc, is taken when v0(=ret(dmBufferAllocate)) != 0, and falls through when v0(=ret(dmBufferAllocate)) == 0.
  The `bgez` branch at 0x405488 targets 0x405498, is taken when t1(=[0x47c600]) >= 0 (signed), and falls through when t1(=[0x47c600]) < 0 (signed).
  The `bgez` branch at 0x4054a4 targets 0x4054b8, is taken when t1(=[0x47c600]) >= 0 (signed), and falls through when t1(=[0x47c600]) < 0 (signed).
  The `beq` branch at 0x4054ac targets 0x4054b8, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x4054ec targets 0x405538, is taken when v0(=ret(select)) != at(=-0x1), and falls through when v0(=ret(select)) == at(=-0x1).
  The `beq` branch at 0x405530 targets 0x4054f4, is taken when v0(=ret(select)) == at(=-0x1), and falls through when v0(=ret(select)) != at(=-0x1).
  The `bne` branch at 0x405560 targets 0x4055a0, is taken when v0(=ret(vice_dmbuf_send)) != at(=-0x1), and falls through when v0(=ret(vice_dmbuf_send)) == at(=-0x1).
  The `beq` branch at 0x405598 targets 0x4055ec and is always taken.
  The `beq` branch at 0x4055b0 targets 0x4055ec, is taken when v0(=ret(vice_dms_geterrs)) == 0, and falls through when v0(=ret(vice_dms_geterrs)) != 0.
  The `beq` branch at 0x405610 targets 0x40564c and is always taken.
  The `beq` branch at 0x405628 targets 0x40564c, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `bgtz` branch at 0x40565c targets 0x405284, is taken when v0(=ret(dmBufferGetQueueFilled)) > 0 (signed), and falls through when v0(=ret(dmBufferGetQueueFilled)) <= 0 (signed).
  The `beq` branch at 0x405664 targets 0x405194 and is always taken.
  The instructions from 0x40566c to 0x405684 are not reached by any path from the entry, and their branches are not listed.

- `child_exit_handler` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x405688 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x405688-0x4056ec (100 bytes).
  It occupies 100 bytes.
  The `jalr` at 0x4056ac calls wait with a0=sp-8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4056c8 calls sigset with a0=0x12, a1=0x405688, a2=?, a3=?.
  The `beq` branch at 0x4056d4 targets 0x4056dc and is always taken.
  The return at 0x4056e4 has v0 = ret(sigset).

- `_dv_go` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x4056ec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x4056ec-0x405bc4 (1240 bytes).
  It occupies 1240 bytes.
  The `lw` at 0x405710 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x40571c loads 4 bytes from a0 (arg0 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdc, including `lw` at 0x405738, `lw` at 0x4059f0.
  The `sw` at 0x40575c stores 4 bytes to a0 (arg0 at entry) +0x5c.
  The `lbu` at 0x405764 loads 1 byte from a0 (arg0 at entry) +0xd9.
  The `sw` at 0x405780 stores 4 bytes to a0 (arg0 at entry) +0x70.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x4057d4, `lw` at 0x405808, `lw` at 0x405894.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xdc, including `sw` at 0x405818, `sw` at 0x40592c.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xe0, including `sw` at 0x405828, `sw` at 0x4058a8, `sw` at 0x4058ec.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x2c, including `sw` at 0x40596c, `sw` at 0x40597c, `sw` at 0x40598c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0x405974, `lw` at 0x405984.
  The `sw` at 0x4059c8 stores 4 bytes to a0 (arg0 at entry) +0x54.
  The `sw` at 0x4059d4 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `lbu` at 0x4059dc loads 1 byte from a0 (arg0 at entry) +0xd8.
  The `sw` at 0x405a6c stores 4 bytes to abs 0x47c5d0.
  The `lw` at 0x405a74 loads 4 bytes from abs 0x47c5d0.
  The `lw` at 0x405ad0 loads 4 bytes from abs 0x47c604.
  The `sw` at 0x405ae0 stores 4 bytes to abs 0x410e54.
  The `lw` at 0x405ae4 loads 4 bytes from abs 0x410e54.
  The `sw` at 0x405b54 stores 4 bytes to abs 0x410e50.
  The `lw` at 0x405b58 loads 4 bytes from abs 0x410e50.
  The `jalr` at 0x405790 calls dmParamsGetInt with a0=[a0+4], a1=0x410844, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4057ac calls vice_file with a0=0x410854, a1=?, a2=?, a3=?.
  The `jalr` at 0x4057d0 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=0x0.
  The `jalr` at 0x4057e4 calls vice_file with a0=0x410860, a1=?, a2=?, a3=?.
  The `jalr` at 0x405804 calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=?.
  The `jalr` at 0x405838 calls dmParamsGetString with a0=[a0+4], a1=0x41086c, a2=?, a3=?.
  The `jalr` at 0x405854 calls strcmp with a0=ret(dmParamsGetString), a1=0x410884, a2=?, a3=?.
  The `jalr` at 0x40586c calls vice_file with a0=0x410888, a1=?, a2=?, a3=?.
  The `jalr` at 0x405890 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=0x0.
  The `jalr` at 0x4058b4 calls vice_file with a0=0x410898, a1=?, a2=?, a3=?.
  The `jalr` at 0x4058d8 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=0x0.
  The `jalr` at 0x4058f8 calls vice_file with a0=0x4108a8, a1=?, a2=?, a3=?.
  The `jalr` at 0x405918 calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=?.
  The `jalr` at 0x405938 calls vice_file with a0=0x4108b4, a1=?, a2=?, a3=?.
  The `jalr` at 0x405958 calls vice_load_bsp_table with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=?.
  The `jalr` at 0x405998 calls vice_etc_dramp with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x4059b4 calls dmic_dram_init_decode with a0=ret(vice_etc_dramp), a1=?, a2=?, a3=?.
  The `jalr` at 0x405a14 calls make_qparse_pool [0x4030c0] with a0=one of 0x2, 0x3, a1=?, a2=?, a3=?.
  The `jalr` at 0x405a38 calls dmSetError with a0=0x1778, a1=0x4108c0, a2=0x4108c8, a3=?.
  The `jalr` at 0x405a54 calls getenv with a0=0x4108e4, a1=?, a2=?, a3=?.
  The `jalr` at 0x405a8c calls dmBufferCreateQueue with a0=0x0, a1=0x47c604, a2=?, a3=?.
  The `jalr` at 0x405ab0 calls dmSetError with a0=0x1778, a1=0x4108f4, a2=0x4108fc, a3=?.
  The `jalr` at 0x405acc calls dmBufferGetQueueFD with a0=[0x47c604], a1=?, a2=?, a3=?.
  The `jalr` at 0x405b08 calls dmSetError with a0=0x1778, a1=0x410918, a2=0x410920, a3=?.
  The `jalr` at 0x405b28 calls sigset with a0=0x12, a1=0x405688, a2=?, a3=?.
  The `jalr` at 0x405b40 calls sproc with a0=sym(dvsend_thread_looping), a1=0x42, a2=0x0, a3=?.
  The `jalr` at 0x405b70 calls perror with a0=0x41093c, a1=?, a2=?, a3=?.
  The `jalr` at 0x405b94 calls vice_event_start with a0=[a0], a1=a0+28, a2=?, a3=?.
  The `bne` branch at 0x40573c targets 0x405750, is taken when t3(=[a0+220]) != at(=0xa), and falls through when t3(=[a0+220]) == at(=0xa).
  The `beq` branch at 0x405748 targets 0x405758 and is always taken.
  The `beq` branch at 0x405768 targets 0x405784, is taken when t8(=[a0+217]:1) == 0, and falls through when t8(=[a0+217]:1) != 0.
  The `beq` branch at 0x40577c targets 0x405a4c and is always taken.
  The `bne` branch at 0x40579c targets 0x40582c, is taken when v0(=ret(dmParamsGetInt)) != at(=0x1e0), and falls through when v0(=ret(dmParamsGetInt)) == at(=0x1e0).
  The `beq` branch at 0x405824 targets 0x405930 and is always taken.
  The `bne` branch at 0x40585c targets 0x4058ac, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x4058a4 targets 0x4058f0 and is always taken.
  The `bne` branch at 0x4059e0 targets 0x405a4c, is taken when t0(=[a0+216]:1) != 0, and falls through when t0(=[a0+216]:1) == 0.
  The `bne` branch at 0x4059f4 targets 0x405a04, is taken when t5(=[a0+220]) != at(=0xa), and falls through when t5(=[a0+220]) == at(=0xa).
  The `beq` branch at 0x4059fc targets 0x405a08 and is always taken.
  The `beq` branch at 0x405a1c targets 0x405a4c, is taken when v0(=ret(make_qparse_pool)) == 0, and falls through when v0(=ret(make_qparse_pool)) != 0.
  The `beq` branch at 0x405a44 targets 0x405bb0 and is always taken.
  The `beq` branch at 0x405a5c targets 0x405a70, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `beq` branch at 0x405a78 targets 0x405b84, is taken when t6(=[0x47c5d0]) == 0, and falls through when t6(=[0x47c5d0]) != 0.
  The `beq` branch at 0x405a94 targets 0x405ac4, is taken when v0(=ret(dmBufferCreateQueue)) == 0, and falls through when v0(=ret(dmBufferCreateQueue)) != 0.
  The `beq` branch at 0x405abc targets 0x405bb0 and is always taken.
  The `bne` branch at 0x405aec targets 0x405b1c, is taken when t7(=[0x410e54]) != at(=-0x1), and falls through when t7(=[0x410e54]) == at(=-0x1).
  The `beq` branch at 0x405b14 targets 0x405bb0 and is always taken.
  The `bne` branch at 0x405b60 targets 0x405b84, is taken when t8(=[0x410e50]) != at(=-0x1), and falls through when t8(=[0x410e50]) == at(=-0x1).
  The `beq` branch at 0x405b7c targets 0x405bb0 and is always taken.
  The `beq` branch at 0x405ba0 targets 0x405bb0 and is always taken.
  The return at 0x405bbc has v0 = one of -0x1, 0x0.
  The instructions from 0x405ba8 to 0x405bac are not reached by any path from the entry, and their branches are not listed.

- `dv_send` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x405bc4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x405bc4-0x406274 (1712 bytes).
  It occupies 1712 bytes.
  The `lw` at 0x405c00 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x405c0c loads 4 bytes from a0 (arg0 at entry) +0x4.
  2 such `lw` accesses load 4 bytes from abs 0x47c5dc, including `lw` at 0x405c44, `lw` at 0x405d34.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xd8, including `lbu` at 0x405c7c, `lbu` at 0x405ed0.
  The `lw` at 0x405c98 loads 4 bytes from abs 0x47c5d0.
  The `lw` at 0x405dbc loads 4 bytes from a0 (arg0 at entry) +0xdc.
  The `lw` at 0x405dc0 loads 4 bytes from a0 (arg0 at entry) +0xe0.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x405e38, `lw` at 0x405e98, `lw` at 0x4061c4.
  The `sw` at 0x406014 stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `lw` at 0x406034 loads 4 bytes from a0 (arg0 at entry) +0xc.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0x4060b0, `sw` at 0x40624c.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x4060b8, `lw` at 0x4060dc, `lw` at 0x4060f4.
  The `lw` at 0x4060c4 loads 4 bytes from a0 (arg0 at entry) +0x14.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14, including `sw` at 0x4061a8, `sw` at 0x406220.
  The `sw` at 0x406218 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `lw` at 0x406234 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `jalr` at 0x405c64 calls dmSetError with a0=0x1778, a1=0x410944, a2=0x41094c, a3=a3 at entry (arg3).
  The `jalr` at 0x405cc0 calls threadarg_enqueue [0x404fe4] with a0=sp-24, a1=?, a2=?, a3=?.
  The `jalr` at 0x405cd8 calls dmBufferAttach with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x405d08 calls dmSetError with a0=0x1778, a1=0x410960, a2=0x410968, a3=?.
  The `jalr` at 0x405d30 calls dmBufferAllocate with a0=[0x47c5dc], a1=sp-16, a2=?, a3=?.
  The `jalr` at 0x405d54 calls dmSetError with a0=0x1778, a1=0x41097c, a2=0x410984, a3=?.
  The `jalr` at 0x405d8c calls dmBufferMapData with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x405da4 calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405dcc calls qparsemain with a0=ret(dmBufferMapData), a1=[a0+220], a2=[a0+224], a3=ret(dmBufferMapData).
  The `jalr` at 0x405de4 calls dmBufferGetUSTMSCpair with a0=sp-64, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x405e20 calls dmBufferSetUSTMSCpair with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405e48 calls vice_dmbuf_send with a0=[a0], a1=?, a2=a0+136, a3=a0+100.
  The `jalr` at 0x405e70 calls dmSetError with a0=0x1778, a1=0x41099c, a2=0x4109a4, a3=?.
  The `jalr` at 0x405e94 calls vice_dms_geterrs with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x405eb8 calls dmSetError with a0=0x1778, a1=0x4109b8, a2=0x4109c0, a3=?.
  The `jalr` at 0x405ee4 calls dmBufferFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405f10 calls dmParamsCopyAllElems with a0=?, a1=[a0+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x405f38 calls dmParamsSetEnum with a0=?, a1=0x4109d4, a2=0x44c, a3=?.
  The `jalr` at 0x405f68 calls dmParamsCopyAllElems with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405f8c calls dmParamsIsPresent with a0=?, a1=0x4109ec, a2=?, a3=?.
  The `jalr` at 0x405fa8 calls dmParamsGetEnum with a0=?, a1=0x410a00, a2=?, a3=?.
  The `jalr` at 0x405ff0 calls dmParamsSetEnum with a0=?, a1=0x410a14, a2=?, a3=?.
  The `jalr` at 0x406004 calls dmImageFrameSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406030 calls dmParamsCopyAllElems with a0=?, a1=[a0+12], a2=?, a3=?.
  The `jalr` at 0x406054 calls _dv_go [0x4056ec] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x406080 calls needsConvert [0x4034cc] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406098 calls dmImageFrameSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4060f0 calls dmBufferDestroyPool with a0=[a0+16], a1=?, a2=?, a3=?.
  The `jalr` at 0x406104 calls dmParamsCreate with a0=sp-40, a1=?, a2=?, a3=?.
  The `jalr` at 0x406134 calls dmBufferSetPoolDefaults with a0=?, a1=0x2, a2=?, a3=0x0.
  The `jalr` at 0x40615c calls _poolneeds [0x403070] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x406174 calls dmBufferCreatePool with a0=?, a1=a0+16, a2=?, a3=?.
  The `jalr` at 0x406198 calls dmParamsGetInt with a0=?, a1=0x410a28, a2=?, a3=?.
  The `jalr` at 0x4061b4 calls dmParamsDestroy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4061d0 calls vice_dmbuf_outpool with a0=[a0], a1=[a0+16], a2=?, a3=?.
  The `jalr` at 0x406208 calls dmBufferDestroyPool with a0=[a0+16], a1=?, a2=?, a3=?.
  The `jalr` at 0x406230 calls vice_dmbuf_outpool with a0=[a0], a1=[a0+116], a2=?, a3=?.
  The `bne` branch at 0x405c18 targets 0x405c38, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0x405c24 targets 0x405c38, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x405c30 targets 0x405c40, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x405c38 targets 0x405ef8 and is always taken.
  The `bne` branch at 0x405c48 targets 0x405c78, is taken when t4(=[0x47c5dc]) != 0, and falls through when t4(=[0x47c5dc]) == 0.
  The `beq` branch at 0x405c70 targets 0x406260 and is always taken.
  The `beq` branch at 0x405c80 targets 0x405c94, is taken when t6(=[a0+216]:1) == 0, and falls through when t6(=[a0+216]:1) != 0.
  The `beq` branch at 0x405c8c targets 0x405e2c and is always taken.
  The `beq` branch at 0x405c9c targets 0x405d24, is taken when t8(=[0x47c5d0]) == 0, and falls through when t8(=[0x47c5d0]) != 0.
  The `bne` branch at 0x405cc8 targets 0x405cf4, is taken when v0(=ret(threadarg_enqueue)) != 0, and falls through when v0(=ret(threadarg_enqueue)) == 0.
  The `beq` branch at 0x405ce4 targets 0x406260 and is always taken.
  The `beq` branch at 0x405d14 targets 0x406260 and is always taken.
  The `beq` branch at 0x405d38 targets 0x405d84, is taken when v0(=ret(dmBufferAllocate)) == 0, and falls through when v0(=ret(dmBufferAllocate)) != 0.
  The `beq` branch at 0x405d60 targets 0x406260 and is always taken.
  The `bne` branch at 0x405e54 targets 0x405e8c, is taken when v0(=ret(vice_dmbuf_send)) != at(=-0x1), and falls through when v0(=ret(vice_dmbuf_send)) == at(=-0x1).
  The `beq` branch at 0x405e7c targets 0x406260 and is always taken.
  The `beq` branch at 0x405e9c targets 0x405ecc, is taken when v0(=ret(vice_dms_geterrs)) == 0, and falls through when v0(=ret(vice_dms_geterrs)) != 0.
  The `beq` branch at 0x405ec4 targets 0x406260 and is always taken.
  The `bne` branch at 0x405ed4 targets 0x405ef0, is taken when t9(=[a0+216]:1) != 0, and falls through when t9(=[a0+216]:1) == 0.
  The `beq` branch at 0x405ef0 targets 0x406260 and is always taken.
  The `beq` branch at 0x405efc targets 0x405f50, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x405f18 targets 0x405f28, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x405f20 targets 0x406260 and is always taken.
  The `beq` branch at 0x405f40 targets 0x405f50, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x405f48 targets 0x406260 and is always taken.
  The `beq` branch at 0x405f54 targets 0x406018, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x405f70 targets 0x405f80, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x405f78 targets 0x406260 and is always taken.
  The `beq` branch at 0x405f94 targets 0x405fd8, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x405fc0 targets 0x405fd0, is taken when t2(=ret(dmParamsGetEnum)) == at(=0x3f0), and falls through when t2(=ret(dmParamsGetEnum)) != at(=0x3f0).
  The `beq` branch at 0x405fd0 targets 0x405fe0 and is always taken.
  The `beq` branch at 0x40601c targets 0x406048, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beq` branch at 0x406038 targets 0x406048, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x406040 targets 0x406260 and is always taken.
  The `bne` branch at 0x406060 targets 0x406070, is taken when v0(=ret(_dv_go)) != at(=-0x1), and falls through when v0(=ret(_dv_go)) == at(=-0x1).
  The `beq` branch at 0x406068 targets 0x406260 and is always taken.
  The `beq` branch at 0x406088 targets 0x4061f0, is taken when v0(=ret(needsConvert)) == 0, and falls through when v0(=ret(needsConvert)) != 0.
  The `beq` branch at 0x4060bc targets 0x4060d8, is taken when t1(=[a0+16]) == 0, and falls through when t1(=[a0+16]) != 0.
  The `beq` branch at 0x4060d0 targets 0x4061e8, is taken when t2(=[a0+20]) >= t3(=ret(dmImageFrameSize)) (signed), and falls through when t2(=[a0+20]) < t3(=ret(dmImageFrameSize)) (signed).
  The `beq` branch at 0x4060e0 targets 0x4060fc, is taken when t5(=[a0+16]) == 0, and falls through when t5(=[a0+16]) != 0.
  The `beq` branch at 0x40610c targets 0x40611c, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x406114 targets 0x406260 and is always taken.
  The `beq` branch at 0x40613c targets 0x40614c, is taken when v0(=ret(dmBufferSetPoolDefaults)) == 0, and falls through when v0(=ret(dmBufferSetPoolDefaults)) != 0.
  The `beq` branch at 0x406144 targets 0x406260 and is always taken.
  The `beq` branch at 0x40617c targets 0x40618c, is taken when v0(=ret(dmBufferCreatePool)) == 0, and falls through when v0(=ret(dmBufferCreatePool)) != 0.
  The `beq` branch at 0x406184 targets 0x406260 and is always taken.
  The `beq` branch at 0x4061d8 targets 0x4061e8, is taken when v0(=ret(vice_dmbuf_outpool)) == 0, and falls through when v0(=ret(vice_dmbuf_outpool)) != 0.
  The `beq` branch at 0x4061e0 targets 0x406260 and is always taken.
  The `beq` branch at 0x4061e8 targets 0x406250 and is always taken.
  The `beq` branch at 0x4061f8 targets 0x406248, is taken when t0(=[a0+16]) == 0, and falls through when t0(=[a0+16]) != 0.
  The `beq` branch at 0x406238 targets 0x406248, is taken when v0(=ret(vice_dmbuf_outpool)) == 0, and falls through when v0(=ret(vice_dmbuf_outpool)) != 0.
  The `beq` branch at 0x406240 targets 0x406260 and is always taken.
  The `beq` branch at 0x406250 targets 0x405c78 and is always taken.
  The return at 0x40626c has v0 = one of -0x1, 0x0.
  The instructions from 0x405cec to 0x405cf0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x405d1c to 0x405d20 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x405d68 to 0x405d80 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x405e84 to 0x405e88 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x406258 to 0x40625c are not reached by any path from the entry, and their branches are not listed.

- `_e_go` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x406274 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x406274-0x406670 (1020 bytes).
  It occupies 1020 bytes.
  The `lw` at 0x40629c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x4062a8 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x4062b4 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0x4062cc stores 4 bytes to a0 (arg0 at entry) +0x5c.
  2 such `sw` accesses store 4 bytes to sym(qno4passMode) +0x0, including `sw` at 0x406328, `sw` at 0x406340.
  2 such `sw` accesses store 4 bytes to sym(rollMode) +0x0, including `sw` at 0x406338, `sw` at 0x406348.
  2 such `sw` accesses store 4 bytes to sym(dvNoiseMode) +0x0, including `sw` at 0x40636c, `sw` at 0x4063dc.
  The `lw` at 0x406374 loads 4 bytes from sym(qno4passMode) +0x0.
  The `lw` at 0x406398 loads 4 bytes from sym(rollMode) +0x0.
  3 such `sw` accesses store 4 bytes to sym(videoMode) +0x0, including `sw` at 0x406404, `sw` at 0x4064e8, `sw` at 0x40653c.
  2 such `sw` accesses store 4 bytes to sym(mbNumber) +0x0, including `sw` at 0x406410, `sw` at 0x406484.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x406444, `lw` at 0x40651c, `lw` at 0x406570.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xdc, including `sw` at 0x406454, `sw` at 0x406530, `sw` at 0x406580.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x7c, including `sw` at 0x406464, `sw` at 0x406494.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x78, including `sw` at 0x406478, `sw` at 0x4064a4.
  The `sw` at 0x406588 stores 4 bytes to a0 (arg0 at entry) +0xe0.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x2c, including `sw` at 0x406594, `sw` at 0x4065a4, `sw` at 0x4065b4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0x40659c, `lw` at 0x4065ac.
  The `sw` at 0x4065f0 stores 4 bytes to a0 (arg0 at entry) +0x54.
  The `sw` at 0x4065fc stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `jalr` at 0x4062dc calls dmParamsIsPresent with a0=[a0+12], a1=0x410a38, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4062f8 calls dmParamsGetFloat with a0=[a0+12], a1=0x410a54, a2=?, a3=?.
  The `jalr` at 0x406354 calls getenv with a0=0x410a70, a1=?, a2=?, a3=?.
  The `jalr` at 0x4063c8 calls printf with a0=0x410a7c, a1=one of 0x410a98, 0x410aa0, a2=one of 0x410aa8, 0x410ab4, a3=?.
  The `jalr` at 0x4063ec calls dmParamsGetInt with a0=[a0+4], a1=0x410ac4, a2=?, a3=?.
  The `jalr` at 0x40641c calls vice_file with a0=0x410ad4, a1=?, a2=?, a3=?.
  The `jalr` at 0x406440 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=0x0.
  The `jalr` at 0x4064b4 calls dmParamsGetString with a0=[a0+8], a1=0x410ae8, a2=?, a3=?.
  The `jalr` at 0x4064d0 calls strcmp with a0=ret(dmParamsGetString), a1=0x410b00, a2=?, a3=?.
  The `jalr` at 0x4064f4 calls vice_file with a0=0x410b04, a1=?, a2=?, a3=?.
  The `jalr` at 0x406518 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=0x0.
  The `jalr` at 0x406548 calls vice_file with a0=0x410b18, a1=?, a2=?, a3=?.
  The `jalr` at 0x40656c calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=0x0.
  The `jalr` at 0x4065c0 calls vice_etc_dramp with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x4065dc calls dmic_dram_init_encode with a0=ret(vice_etc_dramp), a1=?, a2=?, a3=?.
  The `jalr` at 0x406604 calls initCvLength with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406614 calls initVLC16fromVLC with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406628 calls buildQMShft with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x406640 calls vice_event_start with a0=[a0], a1=a0+28, a2=?, a3=?.
  The `beq` branch at 0x4062e4 targets 0x40633c, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `bc1f` branch at 0x406318 targets 0x40633c, is taken when not (f4 < f0(=ret(dmParamsGetFloat)) (c.lt.d at 0x406310)), and falls through when f4 < f0(=ret(dmParamsGetFloat)) (c.lt.d at 0x406310).
  The `beq` branch at 0x406334 targets 0x40634c and is always taken.
  The `beq` branch at 0x40635c targets 0x4063d8, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `beq` branch at 0x406378 targets 0x40638c, is taken when t8(=[sym(qno4passMode)]) == 0, and falls through when t8(=[sym(qno4passMode)]) != 0.
  The `beq` branch at 0x406384 targets 0x406394 and is always taken.
  The `beq` branch at 0x40639c targets 0x4063b0, is taken when t9(=[sym(rollMode)]) == 0, and falls through when t9(=[sym(rollMode)]) != 0.
  The `beq` branch at 0x4063a8 targets 0x4063b8 and is always taken.
  The `beq` branch at 0x4063d0 targets 0x4063e0 and is always taken.
  The `bne` branch at 0x4063f8 targets 0x40647c, is taken when v0(=ret(dmParamsGetInt)) != at(=0x1e0), and falls through when v0(=ret(dmParamsGetInt)) == at(=0x1e0).
  The `beq` branch at 0x406474 targets 0x406584 and is always taken.
  The `bne` branch at 0x4064d8 targets 0x406534, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x40652c targets 0x406584 and is always taken.
  The `beq` branch at 0x40664c targets 0x40665c and is always taken.
  The return at 0x406668 has v0 = 0x0.
  The instructions from 0x406654 to 0x406658 are not reached by any path from the entry, and their branches are not listed.

- `dve_send` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x406670 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x406670-0x406bf4 (1412 bytes).
  It occupies 1412 bytes.
  The `lw` at 0x4066b8 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x4066c4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x4067c4 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0x406834 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `lw` at 0x406850 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `lw` at 0x40688c loads 4 bytes from a0 (arg0 at entry) +0x18.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x4068b4, `lw` at 0x4068d8, `lw` at 0x4068f0.
  The `lw` at 0x4068c0 loads 4 bytes from a0 (arg0 at entry) +0x14.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14, including `sw` at 0x4069a4, `sw` at 0x4069c4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x406b20, `lw` at 0x406b7c.
  The `jalr` at 0x4066e8 calls dmParamsCopyAllElems with a0=?, a1=[a0+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x406718 calls dmParamsCopyAllElems with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40673c calls dmParamsGetEnum with a0=?, a1=0x410b2c, a2=?, a3=?.
  The `jalr` at 0x406774 calls dmParamsSetEnum with a0=?, a1=0x410b40, a2=?, a3=?.
  The `jalr` at 0x406790 calls dmParamsSetEnum with a0=?, a1=0x410b54, a2=0x44c, a3=?.
  The `jalr` at 0x4067c0 calls dmParamsCopyAllElems with a0=?, a1=[a0+12], a2=?, a3=?.
  The `jalr` at 0x406808 calls _e_go [0x406274] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x406824 calls needsConvert [0x4034cc] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406840 calls dmBufferGetSize with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x406874 calls dmSetError with a0=0x1777, a1=0x410b6c, a2=0x410b74, a3=?.
  The `jalr` at 0x4068a0 calls dmImageFrameSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4068ec calls dmBufferDestroyPool with a0=[a0+16], a1=?, a2=?, a3=?.
  The `jalr` at 0x406900 calls dmParamsCreate with a0=sp-40, a1=?, a2=?, a3=?.
  The `jalr` at 0x406930 calls dmBufferSetPoolDefaults with a0=?, a1=0x2, a2=?, a3=0x0.
  The `jalr` at 0x406958 calls _poolneeds [0x403070] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x406970 calls dmBufferCreatePool with a0=?, a1=a0+16, a2=?, a3=?.
  The `jalr` at 0x406994 calls dmParamsGetInt with a0=?, a1=0x410b84, a2=?, a3=?.
  The `jalr` at 0x4069b0 calls dmParamsDestroy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4069d4 calls dmBufferAllocate with a0=[a0+16], a1=sp-12, a2=?, a3=?.
  The `jalr` at 0x4069f4 calls dmBufferMapData with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x406a0c calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406a30 calls dmICAnyToAny with a0=ret(dmBufferMapData), a1=ret(dmBufferMapData), a2=?, a3=?.
  The `jalr` at 0x406a54 calls dmBufferSetSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406a74 calls dmBufferGetImageType with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x406a90 calls dmBufferSetImageType with a0=?, a1=ret(dmBufferGetImageType), a2=?, a3=?.
  The `jalr` at 0x406ab4 calls dmBufferGetUSTMSCpair with a0=sp-64, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x406af4 calls dmBufferSetUSTMSCpair with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406b30 calls vice_dmbuf_send with a0=[a0], a1=?, a2=a0+136, a3=a0+100.
  The `jalr` at 0x406b58 calls dmSetError with a0=0x1777, a1=0x410b94, a2=0x410b9c, a3=?.
  The `jalr` at 0x406b78 calls vice_dms_geterrs with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x406b9c calls dmSetError with a0=0x1777, a1=0x410bb4, a2=0x410bbc, a3=?.
  The `jalr` at 0x406bc4 calls dmBufferFree with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4066d4 targets 0x406700, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x4066f0 targets 0x406700, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x4066f8 targets 0x406be0 and is always taken.
  The `beq` branch at 0x406704 targets 0x4067a8, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x406720 targets 0x406730, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x406728 targets 0x406be0 and is always taken.
  The `beq` branch at 0x406754 targets 0x406764, is taken when t4(=ret(dmParamsGetEnum)) == at(=0x3f0), and falls through when t4(=ret(dmParamsGetEnum)) != at(=0x3f0).
  The `beq` branch at 0x406798 targets 0x4067a8, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x4067a0 targets 0x406be0 and is always taken.
  The `beq` branch at 0x4067ac targets 0x4067d8, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beq` branch at 0x4067c8 targets 0x4067d8, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x4067d0 targets 0x406be0 and is always taken.
  The `bne` branch at 0x4067dc targets 0x4067fc, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `bne` branch at 0x4067e8 targets 0x4067fc, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0x4067f4 targets 0x406838, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x406858 targets 0x406888, is taken when v0(=ret(dmBufferGetSize)) >= t3(=[a0+124]) (signed), and falls through when v0(=ret(dmBufferGetSize)) < t3(=[a0+124]) (signed).
  The `beq` branch at 0x406880 targets 0x406be0 and is always taken.
  The `beq` branch at 0x406890 targets 0x406b14, is taken when t5(=[a0+24]) == 0, and falls through when t5(=[a0+24]) != 0.
  The `beq` branch at 0x4068b8 targets 0x4068d4, is taken when t7(=[a0+16]) == 0, and falls through when t7(=[a0+16]) != 0.
  The `beq` branch at 0x4068cc targets 0x4069bc, is taken when t8(=[a0+20]) >= t9(=ret(dmImageFrameSize)) (signed), and falls through when t8(=[a0+20]) < t9(=ret(dmImageFrameSize)) (signed).
  The `beq` branch at 0x4068dc targets 0x4068f8, is taken when t1(=[a0+16]) == 0, and falls through when t1(=[a0+16]) != 0.
  The `beq` branch at 0x406908 targets 0x406918, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x406910 targets 0x406be0 and is always taken.
  The `beq` branch at 0x406938 targets 0x406948, is taken when v0(=ret(dmBufferSetPoolDefaults)) == 0, and falls through when v0(=ret(dmBufferSetPoolDefaults)) != 0.
  The `beq` branch at 0x406940 targets 0x406be0 and is always taken.
  The `beq` branch at 0x406978 targets 0x406988, is taken when v0(=ret(dmBufferCreatePool)) == 0, and falls through when v0(=ret(dmBufferCreatePool)) != 0.
  The `beq` branch at 0x406980 targets 0x406be0 and is always taken.
  The `beq` branch at 0x4069dc targets 0x4069ec, is taken when v0(=ret(dmBufferAllocate)) == 0, and falls through when v0(=ret(dmBufferAllocate)) != 0.
  The `beq` branch at 0x4069e4 targets 0x406be0 and is always taken.
  The `beq` branch at 0x406a38 targets 0x406a48, is taken when v0(=ret(dmICAnyToAny)) == 0, and falls through when v0(=ret(dmICAnyToAny)) != 0.
  The `beq` branch at 0x406a40 targets 0x406be0 and is always taken.
  The `beq` branch at 0x406a5c targets 0x406a6c, is taken when v0(=ret(dmBufferSetSize)) == 0, and falls through when v0(=ret(dmBufferSetSize)) != 0.
  The `beq` branch at 0x406a64 targets 0x406be0 and is always taken.
  The `beq` branch at 0x406a98 targets 0x406aa8, is taken when v0(=ret(dmBufferSetImageType)) == 0, and falls through when v0(=ret(dmBufferSetImageType)) != 0.
  The `beq` branch at 0x406aa0 targets 0x406be0 and is always taken.
  The `beq` branch at 0x406afc targets 0x406b0c, is taken when v0(=ret(dmBufferSetUSTMSCpair)) == 0, and falls through when v0(=ret(dmBufferSetUSTMSCpair)) != 0.
  The `beq` branch at 0x406b04 targets 0x406be0 and is always taken.
  The `bne` branch at 0x406b3c targets 0x406b70, is taken when v0(=ret(vice_dmbuf_send)) != at(=-0x1), and falls through when v0(=ret(vice_dmbuf_send)) == at(=-0x1).
  The `beq` branch at 0x406b68 targets 0x406bb0 and is always taken.
  The `beq` branch at 0x406b80 targets 0x406bb0, is taken when v0(=ret(vice_dms_geterrs)) == 0, and falls through when v0(=ret(vice_dms_geterrs)) != 0.
  The `beq` branch at 0x406bb4 targets 0x406bd0, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beq` branch at 0x406bd0 targets 0x406be0 and is always taken.
  The return at 0x406bec has v0 = one of -0x1, ?.
  The instructions from 0x406bd8 to 0x406bdc are not reached by any path from the entry, and their branches are not listed.

- `dv_recv` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x406bf4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x406bf4-0x407224 (1584 bytes).
  It occupies 1584 bytes.
  The `lw` at 0x406c30 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x406c3c loads 4 bytes from a0 (arg0 at entry) +0x4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x74, including `lw` at 0x406c58, `lw` at 0x407084.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x18, including `lw` at 0x406c64, `lw` at 0x407050.
  The `sw` at 0x406c90 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `lw` at 0x406ca0 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x406cb4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x406cf4 loads 4 bytes from a0 (arg0 at entry) +0x84.
  7 such `lw` accesses load 4 bytes from ?, including `lw` at 0x406d0c, `lw` at 0x406d10, `lw` at 0x406d50.
  The `lw` at 0x406d98 loads 4 bytes from a0 (arg0 at entry) +0x78.
  5 such `lw` accesses load 4 bytes from abs 0x47c5e8, including `lw` at 0x406da4, `lw` at 0x406e34, `lw` at 0x406e60.
  10 such `lw` accesses load 4 bytes from abs 0x47c5ec, including `lw` at 0x406dbc, `lw` at 0x406de0, `lw` at 0x406e04.
  3 such `lw` accesses load 4 bytes from abs 0x47c5f0, including `lw` at 0x406dc0, `lw` at 0x406ed0, `lw` at 0x406f20.
  The `sw` at 0x406dd0 stores 4 bytes to ([0x47c5f0] + ([0x47c5ec] << 0x2)) +0x0.
  3 such `lw` accesses load 4 bytes from abs 0x47c5f4, including `lw` at 0x406de4, `lw` at 0x406e98, `lw` at 0x406f1c.
  The `sw` at 0x406df4 stores 4 bytes to ([0x47c5f4] + ([0x47c5ec] << 0x2)) +0x0.
  3 such `lw` accesses load 4 bytes from abs 0x47c5f8, including `lw` at 0x406e08, `lw` at 0x406e94, `lw` at 0x406ed4.
  The `sw` at 0x406e18 stores 4 bytes to ([0x47c5f8] + ([0x47c5ec] << 0x2)) +0x0.
  4 such `sw` accesses store 4 bytes to abs 0x47c5ec, including `sw` at 0x406e2c, `sw` at 0x406e78, `sw` at 0x406f60.
  2 such `lw` accesses load 4 bytes from ([0x47c5f4] + ([0x47c5ec] << 0x2)) +0x0, including `lw` at 0x406ea8, `lw` at 0x406f34.
  2 such `lw` accesses load 4 bytes from ([0x47c5f8] + ([0x47c5ec] << 0x2)) +0x0, including `lw` at 0x406eac, `lw` at 0x406ee4.
  The `lw` at 0x406ee8 loads 4 bytes from ([0x47c5f0] + ([0x47c5ec] << 0x2)) +0x0.
  The `lw` at 0x406f30 loads 4 bytes from ([0x47c5f0] + ([0x47c5ec] << 0x2)) -0x4.
  The `sw` at 0x4071fc stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x406c78 calls dmImageFrameSize with a0=[a0+4], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x406cc4 calls vice_dmbuf_recv with a0=[a0], a1=sp-16, a2=?, a3=a0+176.
  The `jalr` at 0x406d14 calls printf with a0=0x410bc8, a1=?, a2=?, a3=?.
  The `jalr` at 0x406d34 calls dmSetError with a0=0x1776, a1=0x410bf0, a2=0x410bfc, a3=?.
  The `jalr` at 0x406d70 calls dmSetError with a0=0x1778, a1=0x410c10, a2=0x410c18, a3=?.
  The `jalr` at 0x406d94 calls dmBufferSetSize with a0=?, a1=[a0+120], a2=?, a3=?.
  The `jalr` at 0x407038 calls printf with a0=0x410c24, a1=?, a2=?, a3=?.
  The `jalr` at 0x407064 calls dmImageFrameSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x407080 calls dmBufferAllocate with a0=[a0+116], a1=sp-56, a2=?, a3=?.
  The `jalr` at 0x4070a8 calls dmParamsSetEnum with a0=?, a1=0x410c40, a2=0x3f0, a3=?.
  The `jalr` at 0x4070c8 calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4070e0 calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x407104 calls dmICAnyToAny with a0=ret(dmBufferMapData), a1=ret(dmBufferMapData), a2=?, a3=?.
  The `jalr` at 0x407128 calls dmBufferSetSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x407148 calls dmBufferGetImageType with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x407164 calls dmBufferSetImageType with a0=?, a1=ret(dmBufferGetImageType), a2=?, a3=?.
  The `jalr` at 0x407188 calls dmBufferGetUSTMSCpair with a0=sp-88, a1=?, a2=?, a3=?.
  The `jalr` at 0x4071c8 calls dmBufferSetUSTMSCpair with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4071e8 calls dmBufferFree with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x406c68 targets 0x406ca8, is taken when t5(=[a0+24]) == 0, and falls through when t5(=[a0+24]) != 0.
  The `bne` branch at 0x406cdc targets 0x406d48, is taken when t3(=ret(vice_dmbuf_recv)) != at(=-0x1), and falls through when t3(=ret(vice_dmbuf_recv)) == at(=-0x1).
  The `beq` branch at 0x406ce8 targets 0x406d20, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `beq` branch at 0x406cf8 targets 0x406d20, is taken when t6(=[a0+132]) == 0, and falls through when t6(=[a0+132]) != 0.
  The `beq` branch at 0x406d40 targets 0x407210 and is always taken.
  The `bne` branch at 0x406d54 targets 0x406d84, is taken when t9(?) != at(=0xe000), and falls through when t9(?) == at(=0xe000).
  The `beq` branch at 0x406d7c targets 0x407210 and is always taken.
  The `beq` branch at 0x406da8 targets 0x406e30, is taken when t2(=[0x47c5e8]) == 0, and falls through when t2(=[0x47c5e8]) != 0.
  The `beq` branch at 0x406e38 targets 0x40704c, is taken when t0(=[0x47c5e8]) == 0, and falls through when t0(=[0x47c5e8]) != 0.
  The `bne` branch at 0x406e48 targets 0x40704c, is taken when t6(=[0x47c5ec]) != t0(=[0x47c5e8]), and falls through when t6(=[0x47c5ec]) == t0(=[0x47c5e8]).
  The `blez` branch at 0x406e7c targets 0x406f70, is taken when t4(=[0x47c5e8]) <= 0 (signed), and falls through when t4(=[0x47c5e8]) > 0 (signed).
  The `beq` branch at 0x406f04 targets 0x406f48, is taken when t9(=[0x47c5ec]) == 0, and falls through when t9(=[0x47c5ec]) != 0.
  The `bne` branch at 0x406f68 targets 0x406e84, is taken when t5(=[0x47c5ec]+1) < t4(=[0x47c5e8]) (signed), and falls through when t5(=[0x47c5ec]+1) >= t4(=[0x47c5e8]) (signed).
  The `beq` branch at 0x406f74 targets 0x407024, is taken when t6(=[0x47c5e8]-1) == 0, and falls through when t6(=[0x47c5e8]-1) != 0.
  The `bne` branch at 0x406f90 targets 0x406f9c, is taken when t0(=[0x47c5e8]-1) != 0, and falls through when t0(=[0x47c5e8]-1) == 0.
  The `bne` branch at 0x406fa0 targets 0x406fb4, is taken when t0(=[0x47c5e8]-1) != at(=-0x1), and falls through when t0(=[0x47c5e8]-1) == at(=-0x1).
  The `bne` branch at 0x406fa8 targets 0x406fb4, is taken when t7(?) != at(=0xffffffff80000000), and falls through when t7(?) == at(=0xffffffff80000000).
  The `bne` branch at 0x406fc8 targets 0x406fd4, is taken when t1(=[0x47c5e8]-1) != 0, and falls through when t1(=[0x47c5e8]-1) == 0.
  The `bne` branch at 0x406fd8 targets 0x406fec, is taken when t1(=[0x47c5e8]-1) != at(=-0x1), and falls through when t1(=[0x47c5e8]-1) == at(=-0x1).
  The `bne` branch at 0x406fe0 targets 0x406fec, is taken when t9(?) != at(=0xffffffff80000000), and falls through when t9(?) == at(=0xffffffff80000000).
  The `bne` branch at 0x407000 targets 0x40700c, is taken when t5(=[0x47c5e8]-1) != 0, and falls through when t5(=[0x47c5e8]-1) == 0.
  The `bne` branch at 0x407010 targets 0x407024, is taken when t5(=[0x47c5e8]-1) != at(=-0x1), and falls through when t5(=[0x47c5e8]-1) == at(=-0x1).
  The `bne` branch at 0x407018 targets 0x407024, is taken when t2(?) != at(=0xffffffff80000000), and falls through when t2(?) == at(=0xffffffff80000000).
  The `beq` branch at 0x407054 targets 0x407200, is taken when t7(=[a0+24]) == 0, and falls through when t7(=[a0+24]) != 0.
  The `beq` branch at 0x407088 targets 0x407098, is taken when v0(=ret(dmBufferAllocate)) == 0, and falls through when v0(=ret(dmBufferAllocate)) != 0.
  The `beq` branch at 0x407090 targets 0x407210 and is always taken.
  The `beq` branch at 0x4070b0 targets 0x4070c0, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x4070b8 targets 0x407210 and is always taken.
  The `beq` branch at 0x40710c targets 0x40711c, is taken when v0(=ret(dmICAnyToAny)) == 0, and falls through when v0(=ret(dmICAnyToAny)) != 0.
  The `beq` branch at 0x407114 targets 0x407210 and is always taken.
  The `beq` branch at 0x407130 targets 0x407140, is taken when v0(=ret(dmBufferSetSize)) == 0, and falls through when v0(=ret(dmBufferSetSize)) != 0.
  The `beq` branch at 0x407138 targets 0x407210 and is always taken.
  The `beq` branch at 0x40716c targets 0x40717c, is taken when v0(=ret(dmBufferSetImageType)) == 0, and falls through when v0(=ret(dmBufferSetImageType)) != 0.
  The `beq` branch at 0x407174 targets 0x407210 and is always taken.
  The `beq` branch at 0x4071d0 targets 0x4071e0, is taken when v0(=ret(dmBufferSetUSTMSCpair)) == 0, and falls through when v0(=ret(dmBufferSetUSTMSCpair)) != 0.
  The `beq` branch at 0x4071d8 targets 0x407210 and is always taken.
  The `beq` branch at 0x407200 targets 0x407210 and is always taken.
  The return at 0x40721c has v0 = one of ?, -0x1.
  The instructions from 0x407208 to 0x40720c are not reached by any path from the entry, and their branches are not listed.

- `dve_recv` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x407224 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x407224-0x407ef8 (3284 bytes).
  It occupies 3284 bytes.
  The `lw` at 0x407268 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x40726c loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0x4072a8 loads 4 bytes from a0 (arg0 at entry) +0x84.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4072c0, `lw` at 0x4072c4, `lw` at 0x407304.
  The `sw` at 0x407350 stores 4 bytes to sym(dvxformpointer) +0x0.
  The `lw` at 0x407364 loads 4 bytes from sym(dvbitspool) +0x0.
  The `sw` at 0x407390 stores 4 bytes to sym(dvbitpointer) +0x0.
  The `lw` at 0x4073a0 loads 4 bytes from sym(dvxformpointer) +0x0.
  The `lw` at 0x4073a8 loads 4 bytes from sym(dvbitpointer) +0x0.
  The `lw` at 0x4073c0 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `sw` at 0x407430 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x407278 calls vice_dmbuf_recv with a0=[a0], a1=sp-8, a2=[a0+116], a3=a0+176.
  The `jalr` at 0x4072c8 calls printf with a0=0x410c54, a1=?, a2=?, a3=?.
  The `jalr` at 0x4072e8 calls dmSetError with a0=0x1776, a1=0x410c7c, a2=0x410c88, a3=?.
  The `jalr` at 0x407324 calls dmSetError with a0=0x1777, a1=0x410c9c, a2=0x410ca4, a3=?.
  The `jalr` at 0x407340 calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x407360 calls dmBufferAllocate with a0=[sym(dvbitspool)], a1=sp-12, a2=?, a3=?.
  The `jalr` at 0x407380 calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4073a4 calls codeBuffer with a0=[sym(dvxformpointer)], a1=[sym(dvbitpointer)], a2=?, a3=?.
  The `jalr` at 0x4073bc calls dmBufferSetSize with a0=?, a1=[a0+120], a2=?, a3=?.
  The `jalr` at 0x4073e0 calls dmBufferGetUSTMSCpair with a0=sp-40, a1=?, a2=?, a3=?.
  The `jalr` at 0x40741c calls dmBufferSetUSTMSCpair with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40743c calls dmBufferFree with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x407290 targets 0x4072fc, is taken when t9(=ret(vice_dmbuf_recv)) != at(=-0x1), and falls through when t9(=ret(vice_dmbuf_recv)) == at(=-0x1).
  The `beq` branch at 0x40729c targets 0x4072d4, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x4072ac targets 0x4072d4, is taken when t2(=[a0+132]) == 0, and falls through when t2(=[a0+132]) != 0.
  The `beq` branch at 0x4072f4 targets 0x407458 and is always taken.
  The `bne` branch at 0x407308 targets 0x407338, is taken when t5(?) != at(=0xe000), and falls through when t5(?) == at(=0xe000).
  The `beq` branch at 0x407330 targets 0x407458 and is always taken.
  The `beq` branch at 0x407368 targets 0x407378, is taken when v0(=ret(dmBufferAllocate)) == 0, and falls through when v0(=ret(dmBufferAllocate)) != 0.
  The `beq` branch at 0x407370 targets 0x407458 and is always taken.
  The `beq` branch at 0x4073c4 targets 0x4073d4, is taken when v0(=ret(dmBufferSetSize)) == 0, and falls through when v0(=ret(dmBufferSetSize)) != 0.
  The `beq` branch at 0x4073cc targets 0x407458 and is always taken.
  The `beq` branch at 0x407448 targets 0x407458 and is always taken.
  The return at 0x407460 has v0 = one of ?, -0x1.
  The instructions from 0x407450 to 0x407454 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x407468 to 0x407ef4 are not reached by any path from the entry, and their branches are not listed.

- `zoneFromIndexTab` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x407470 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x407470-0x40752c (188 bytes).
  It occupies 188 bytes.
  2 such `lh` accesses load 2 bytes from ?, including `lh` at 0x4074bc, `lh` at 0x4074f4.
  The `lh` at 0x407518 loads 2 bytes from (((a0 << 0x4) + (a1 << 0x1)) + sym(zone8x8Table)) +0x0.
  The `beq` branch at 0x40747c targets 0x407500, is taken when a2 == 0, and falls through when a2 != 0.
  The `bne` branch at 0x407488 targets 0x4074c8, is taken when a0 < 0x4 (signed), and falls through when a0 >= 0x4 (signed).
  The `bgez` branch at 0x407494 targets 0x4074a8, is taken when a0 >= 0 (signed), and falls through when a0 < 0 (signed).
  The `beq` branch at 0x40749c targets 0x4074a8, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `bgez` branch at 0x4074cc targets 0x4074e0, is taken when a0 >= 0 (signed), and falls through when a0 < 0 (signed).
  The `beq` branch at 0x4074d4 targets 0x4074e0, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The return at 0x4074b8 has v0 = ?.
  The return at 0x4074f0 has v0 = ?.
  The return at 0x407514 has v0 = [(((a0 << 0x4) + (a1 << 0x1)) + sym(zone8x8Table))]:2.
  The instructions from 0x4074c0 to 0x4074c4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4074f8 to 0x4074fc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x40751c to 0x407528 are not reached by any path from the entry, and their branches are not listed.

- `qScale` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x40752c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40752c-0x4075c4 (152 bytes).
  It occupies 152 bytes.
  The `lbu` at 0x407584 loads 1 byte from (a3 + sym(qnoShiftTable)) +0x0.
  The `lbu` at 0x40759c loads 1 byte from ?.
  The `jalr` at 0x407560 calls zoneFromIndexTab with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x4075a4 targets 0x4075b4 and is always taken.
  The return at 0x4075bc has v0 = ?.
  The instructions from 0x4075ac to 0x4075b0 are not reached by any path from the entry, and their branches are not listed.

- `qScaleShft` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x4075c4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x4075c4-0x40765c (152 bytes).
  It occupies 152 bytes.
  The `lbu` at 0x40761c loads 1 byte from (a3 + sym(qnoShiftTable)) +0x0.
  The `lbu` at 0x407634 loads 1 byte from ?.
  The `jalr` at 0x4075f8 calls zoneFromIndexTab with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x40763c targets 0x40764c and is always taken.
  The return at 0x407654 has v0 = ?.
  The instructions from 0x407644 to 0x407648 are not reached by any path from the entry, and their branches are not listed.

- `scaleBlockInit` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x40765c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40765c-0x4076d0 (116 bytes).
  It occupies 116 bytes.
  The `lh` at 0x407690 loads 2 bytes from ?.
  The `sh` at 0x4076a8 stores 2 bytes to ?.
  The `bne` branch at 0x407674 targets 0x4076c0, is taken when a1 != at(=0x3), and falls through when a1 == at(=0x3).
  The `bgez` branch at 0x407698 targets 0x4076a8, is taken when t0(?) >= 0 (signed), and falls through when t0(?) < 0 (signed).
  The `bne` branch at 0x4076b8 targets 0x407684, is taken when t4(?) < 0x40 (signed), and falls through when t4(?) >= 0x40 (signed).
  The `beq` branch at 0x4076c0 targets 0x4076c8 and is always taken.
  The return at 0x4076c8 has v0 = ?.

- `scaleBlock` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x4076d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x4076d0-0x4077ac (220 bytes).
  It occupies 220 bytes.
  The `lh` at 0x407704 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0x407708 stores 2 bytes to a1 (arg1 at entry) +0x0.
  3 such `lh` accesses load 2 bytes from ?, including `lh` at 0x407720, `lh` at 0x40773c, `lh` at 0x407778.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x407744, `lbu` at 0x407774.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x40775c, `sh` at 0x407784.
  The `bgez` branch at 0x407724 targets 0x407760, is taken when t8(?) >= 0 (signed), and falls through when t8(?) < 0 (signed).
  The `beq` branch at 0x407758 targets 0x407788 and is always taken.
  The `bne` branch at 0x407794 targets 0x407714, is taken when t2(?) < 0x40 (signed), and falls through when t2(?) >= 0x40 (signed).
  The `beq` branch at 0x40779c targets 0x4077a4 and is always taken.
  The return at 0x4077a4 has v0 = ?.

- `buildQM` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x4077ac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x4077ac-0x407a2c (640 bytes).
  It occupies 640 bytes.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x40788c, `sb` at 0x4079ac.
  The `jalr` at 0x40782c calls qScale with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40794c calls qScale with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4077d4 targets 0x4078fc, is taken when t7(=a0) == 0, and falls through when t7(=a0) != 0.
  The `bne` branch at 0x4077e8 targets 0x4077fc, is taken when t8(?) != at(=0x3), and falls through when t8(?) == at(=0x3).
  The `beq` branch at 0x4077f4 targets 0x407804 and is always taken.
  The `bne` branch at 0x40789c targets 0x407814, is taken when t7(?) < 0x8 (signed), and falls through when t7(?) >= 0x8 (signed).
  The `bne` branch at 0x4078b0 targets 0x407810, is taken when t8(?) < 0x8 (signed), and falls through when t8(?) >= 0x8 (signed).
  The `bne` branch at 0x4078c4 targets 0x40780c, is taken when t9(?) < 0x10 (signed), and falls through when t9(?) >= 0x10 (signed).
  The `bne` branch at 0x4078d8 targets 0x407808, is taken when t1(?) < 0x2 (signed), and falls through when t1(?) >= 0x2 (signed).
  The `bne` branch at 0x4078ec targets 0x4077e0, is taken when t0(?) < 0x4 (signed), and falls through when t0(?) >= 0x4 (signed).
  The `beq` branch at 0x4078f4 targets 0x407a14 and is always taken.
  The `bne` branch at 0x407908 targets 0x40791c, is taken when t3(?) != at(=0x3), and falls through when t3(?) == at(=0x3).
  The `beq` branch at 0x407914 targets 0x407924 and is always taken.
  The `bne` branch at 0x4079bc targets 0x407934, is taken when t0(?) < 0x8 (signed), and falls through when t0(?) >= 0x8 (signed).
  The `bne` branch at 0x4079d0 targets 0x407930, is taken when t3(?) < 0x8 (signed), and falls through when t3(?) >= 0x8 (signed).
  The `bne` branch at 0x4079e4 targets 0x40792c, is taken when t7(?) < 0x10 (signed), and falls through when t7(?) >= 0x10 (signed).
  The `bne` branch at 0x4079f8 targets 0x407928, is taken when t8(?) < 0x2 (signed), and falls through when t8(?) >= 0x2 (signed).
  The `bne` branch at 0x407a0c targets 0x407900, is taken when t5(?) < 0x4 (signed), and falls through when t5(?) >= 0x4 (signed).
  The `beq` branch at 0x407a14 targets 0x407a1c and is always taken.
  The return at 0x407a24 has v0 = ret(qScale).

- `buildQMShft` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x407a2c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x407a2c-0x407c9c (624 bytes).
  It occupies 624 bytes.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x407b04, `sb` at 0x407c1c.
  The `jalr` at 0x407aa8 calls qScaleShft with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x407bc0 calls qScaleShft with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x407a54 targets 0x407b74, is taken when t7(=a0) == 0, and falls through when t7(=a0) != 0.
  The `bne` branch at 0x407a68 targets 0x407a7c, is taken when t8(?) != at(=0x3), and falls through when t8(?) == at(=0x3).
  The `beq` branch at 0x407a74 targets 0x407a80 and is always taken.
  The `bne` branch at 0x407b14 targets 0x407a90, is taken when t6(?) < 0x8 (signed), and falls through when t6(?) >= 0x8 (signed).
  The `bne` branch at 0x407b28 targets 0x407a8c, is taken when t7(?) < 0x8 (signed), and falls through when t7(?) >= 0x8 (signed).
  The `bne` branch at 0x407b3c targets 0x407a88, is taken when t8(?) < 0x10 (signed), and falls through when t8(?) >= 0x10 (signed).
  The `bne` branch at 0x407b50 targets 0x407a84, is taken when t0(?) < 0x2 (signed), and falls through when t0(?) >= 0x2 (signed).
  The `bne` branch at 0x407b64 targets 0x407a60, is taken when t9(?) < 0x4 (signed), and falls through when t9(?) >= 0x4 (signed).
  The `beq` branch at 0x407b6c targets 0x407c84 and is always taken.
  The `bne` branch at 0x407b80 targets 0x407b94, is taken when t2(?) != at(=0x3), and falls through when t2(?) == at(=0x3).
  The `beq` branch at 0x407b8c targets 0x407b98 and is always taken.
  The `bne` branch at 0x407c2c targets 0x407ba8, is taken when t3(?) < 0x8 (signed), and falls through when t3(?) >= 0x8 (signed).
  The `bne` branch at 0x407c40 targets 0x407ba4, is taken when t9(?) < 0x8 (signed), and falls through when t9(?) >= 0x8 (signed).
  The `bne` branch at 0x407c54 targets 0x407ba0, is taken when t2(?) < 0x10 (signed), and falls through when t2(?) >= 0x10 (signed).
  The `bne` branch at 0x407c68 targets 0x407b9c, is taken when t4(?) < 0x2 (signed), and falls through when t4(?) >= 0x2 (signed).
  The `bne` branch at 0x407c7c targets 0x407b78, is taken when t6(?) < 0x4 (signed), and falls through when t6(?) >= 0x4 (signed).
  The `beq` branch at 0x407c84 targets 0x407c8c and is always taken.
  The return at 0x407c94 has v0 = ret(qScaleShft).

- `loadMSPEncode` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x407c9c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x407c9c-0x407de8 (332 bytes).
  It occupies 332 bytes.
  4 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x407cd4, `lhu` at 0x407cd8, `lhu` at 0x407d04.
  3 such `lw` accesses load 4 bytes from abs 0x47e610, including `lw` at 0x407d24, `lw` at 0x407d3c, `lw` at 0x407db4.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x407d2c, `sw` at 0x407d44, `sw` at 0x407dc0.
  2 such `lh` accesses load 2 bytes from ?, including `lh` at 0x407d90, `lh` at 0x407d94.
  The `bne` branch at 0x407d60 targets 0x407cb8, is taken when t0(?) < 0x8 (signed), and falls through when t0(?) >= 0x8 (signed).
  The `bne` branch at 0x407d74 targets 0x407cb4, is taken when t1(?) < 0x8 (signed), and falls through when t1(?) >= 0x8 (signed).
  The `bne` branch at 0x407dd0 targets 0x407d80, is taken when t9(?) < 0x18 (signed), and falls through when t9(?) >= 0x18 (signed).
  The `beq` branch at 0x407dd8 targets 0x407de0 and is always taken.
  The return at 0x407de0 has v0 = ?.

- `difference` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x407de8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x407de8-0x407ef8 (272 bytes).
  It occupies 272 bytes.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x407dfc, `sw` at 0x407ee4.
  6 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x407e2c, `lbu` at 0x407e40, `lbu` at 0x407e58.
  The `bne` branch at 0x407ec4 targets 0x407e08, is taken when t7(?) < 0x8 (signed), and falls through when t7(?) >= 0x8 (signed).
  The `bne` branch at 0x407ed8 targets 0x407e04, is taken when t1(?) < 0x4 (signed), and falls through when t1(?) >= 0x4 (signed).
  The `beq` branch at 0x407ee8 targets 0x407ef0 and is always taken.
  The return at 0x407ef0 has v0 = ?.

- `setMem` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x407ef8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x407ef8-0x40ba50 (15192 bytes).
  It occupies 15192 bytes.
  The `lw` at 0x407f34 loads 4 bytes from abs 0x47e610.
  The `sw` at 0x407f44 stores 4 bytes to ?.
  The `beq` branch at 0x407f20 targets 0x407f6c, is taken when t6(=a0) >= t8(?) (signed), and falls through when t6(=a0) < t8(?) (signed).
  The `bne` branch at 0x407f64 targets 0x407f28, is taken when t7(?) < t8(?) (signed), and falls through when t7(?) >= t8(?) (signed).
  The `beq` branch at 0x407f6c targets 0x407f74 and is always taken.
  The return at 0x407f74 has v0 = ?.
  The instructions from 0x407f7c to 0x40ba4c are not reached by any path from the entry, and their branches are not listed.

- `loadMSPDecode` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x407f7c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x407f7c-0x4085d4 (1624 bytes).
  It occupies 1624 bytes.
  3 such `lw` accesses load 4 bytes from sym(qnoShiftTable) +0x0, including `lw` at 0x407f9c, `lw` at 0x407fb0, `lw` at 0x407fc4.
  27 such `lw` accesses load 4 bytes from abs 0x47e610, including `lw` at 0x407fa0, `lw` at 0x407fb4, `lw` at 0x407fc8.
  The `sw` at 0x407fa4 stores 4 bytes to [0x47e610] +0x6d8.
  The `sw` at 0x407fb8 stores 4 bytes to [0x47e610] +0xed8.
  The `sw` at 0x407fcc stores 4 bytes to [0x47e610] +0x16d8.
  6 such `lh` accesses load 2 bytes from ?, including `lh` at 0x407fec, `lh` at 0x407ff0, `lh` at 0x408098.
  11 such `sw` accesses store 4 bytes to ?, including `sw` at 0x408018, `sw` at 0x408030, `sw` at 0x408048.
  The `sw` at 0x4081f0 stores 4 bytes to [0x47e610] +0x6d4.
  The `sw` at 0x408208 stores 4 bytes to [0x47e610] +0xed4.
  The `sw` at 0x408220 stores 4 bytes to [0x47e610] +0x16d4.
  The `sw` at 0x408240 stores 4 bytes to [0x47e610] +0x6d0.
  The `sw` at 0x408258 stores 4 bytes to [0x47e610] +0xed0.
  The `sw` at 0x408270 stores 4 bytes to [0x47e610] +0x16d0.
  12 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x408290, `lhu` at 0x408294, `lhu` at 0x4082f8.
  The `sw` at 0x408570 stores 4 bytes to [0x47e610] +0xf14.
  The `sw` at 0x40857c stores 4 bytes to [0x47e610] +0x710.
  The `sw` at 0x408588 stores 4 bytes to [0x47e610] +0xf10.
  The `sw` at 0x408594 stores 4 bytes to [0x47e610] +0x1710.
  The `sw` at 0x4085a0 stores 4 bytes to [0x47e610] +0x720.
  The `sw` at 0x4085ac stores 4 bytes to [0x47e610] +0xf20.
  The `sw` at 0x4085b8 stores 4 bytes to [0x47e610] +0x1720.
  The `jalr` at 0x408504 calls setMem [0x407ef8] with a0=0x8000, a1=0x80, a2=0x4, a3=a3 at entry (arg3).
  The `jalr` at 0x408530 calls setMem [0x407ef8] with a0=0x8800, a1=0x80, a2=0x4, a3=?.
  The `jalr` at 0x40855c calls setMem [0x407ef8] with a0=0x9000, a1=0x80, a2=0x4, a3=?.
  The `bne` branch at 0x408064 targets 0x407fdc, is taken when t2(?) < 0x18 (signed), and falls through when t2(?) >= 0x18 (signed).
  The `bgez` branch at 0x4080a8 targets 0x4080b8, is taken when t9(?) >= 0 (signed), and falls through when t9(?) < 0 (signed).
  The `bgez` branch at 0x4080b8 targets 0x4080c8, is taken when t6(?) >= 0 (signed), and falls through when t6(?) < 0 (signed).
  The `bne` branch at 0x408104 targets 0x40807c, is taken when t2(?) < 0x8 (signed), and falls through when t2(?) >= 0x8 (signed).
  The `bne` branch at 0x408118 targets 0x408078, is taken when t9(?) < 0x8 (signed), and falls through when t9(?) >= 0x8 (signed).
  The `bgez` branch at 0x40815c targets 0x40816c, is taken when t8(?) >= 0 (signed), and falls through when t8(?) < 0 (signed).
  The `bgez` branch at 0x40816c targets 0x40817c, is taken when t5(?) >= 0 (signed), and falls through when t5(?) < 0 (signed).
  The `bne` branch at 0x4081b8 targets 0x408130, is taken when t9(?) < 0x8 (signed), and falls through when t9(?) >= 0x8 (signed).
  The `bne` branch at 0x4081cc targets 0x40812c, is taken when t8(?) < 0x8 (signed), and falls through when t8(?) >= 0x8 (signed).
  The `bne` branch at 0x4082d4 targets 0x408280, is taken when t8(?) < 0x40 (signed), and falls through when t8(?) >= 0x40 (signed).
  The `bne` branch at 0x40833c targets 0x4082e8, is taken when t1(?) < 0x40 (signed), and falls through when t1(?) >= 0x40 (signed).
  The `bne` branch at 0x4083a4 targets 0x408350, is taken when t0(?) < 0x40 (signed), and falls through when t0(?) >= 0x40 (signed).
  The `bne` branch at 0x40840c targets 0x4083b8, is taken when t6(?) < 0x40 (signed), and falls through when t6(?) >= 0x40 (signed).
  The `bne` branch at 0x408474 targets 0x408420, is taken when t2(?) < 0x40 (signed), and falls through when t2(?) >= 0x40 (signed).
  The `bne` branch at 0x4084dc targets 0x408488, is taken when t9(?) < 0x40 (signed), and falls through when t9(?) >= 0x40 (signed).
  The `beq` branch at 0x4085bc targets 0x4085c4 and is always taken.
  The return at 0x4085cc has v0 = ret(setMem).

- `dmic_dram_init_decode` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x4085d4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x4085d4-0x408624 (80 bytes).
  It occupies 80 bytes.
  The `sw` at 0x4085f8 stores 4 bytes to abs 0x47e610.
  The `jalr` at 0x408600 calls loadMSPDecode with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x40860c targets 0x408614 and is always taken.
  The return at 0x40861c has v0 = ret(loadMSPDecode).

- `dmic_dram_init_encode` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x408624 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x408624-0x408674 (80 bytes).
  It occupies 80 bytes.
  The `sw` at 0x408648 stores 4 bytes to abs 0x47e610.
  The `jalr` at 0x408650 calls loadMSPEncode with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x40865c targets 0x408664 and is always taken.
  The return at 0x40866c has v0 = ret(loadMSPEncode).

- `codeBuffer` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x408680 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x408680-0x408ef0 (2160 bytes).
  It occupies 2160 bytes.
  The `sw` at 0x4086bc stores 4 bytes to sym(difSeqCnt) +0x0.
  The `sw` at 0x4086c4 stores 4 bytes to sym(difBlkCnt) +0x0.
  3 such `lw` accesses load 4 bytes from sym(videoMode) +0x0, including `lw` at 0x4086cc, `lw` at 0x4086f4, `lw` at 0x408e64.
  The `sw` at 0x408728 stores 4 bytes to sym(globalQNO) +0x0.
  The `sw` at 0x408730 stores 4 bytes to sym(lostBits) +0x0.
  The `sw` at 0x408738 stores 4 bytes to sym(unusedBits) +0x0.
  2 such `sw` accesses store 4 bytes to sym(DBG_Mode) +0x0, including `sw` at 0x408740, `sw` at 0x408d54.
  20 such `lw` accesses load 4 bytes from ?, including `lw` at 0x408774, `lw` at 0x40879c, `lw` at 0x40886c.
  18 such `lh` accesses load 2 bytes from ?, including `lh` at 0x4087c0, `lh` at 0x4087f0, `lh` at 0x408840.
  19 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4087e0, `sw` at 0x408810, `sw` at 0x408834.
  12 such `sh` accesses store 2 bytes to ?, including `sh` at 0x408854, `sh` at 0x408870, `sh` at 0x408920.
  2 such `lw` accesses load 4 bytes from sym(DBG_Mode) +0x0, including `lw` at 0x408d40, `lw` at 0x408ea4.
  The `lw` at 0x408e78 loads 4 bytes from sym(dvNoiseMode) +0x0.
  The `lw` at 0x408e90 loads 4 bytes from sym(globalQNO) +0x0.
  The `lw` at 0x408e94 loads 4 bytes from sym(mbNumber) +0x0.
  The `jalr` at 0x408d74 calls segGetBits with a0=0x47e628, a1=?, a2=?, a3=?.
  The `jalr` at 0x408dd4 calls writeHeader with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x408e04 calls writeAudio with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x408e24 calls writeSegment64 with a0=0x47e948, a1=?, a2=?, a3=?.
  The `jalr` at 0x408e68 calls addHeaderInfo with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x408ec8 calls printf with a0=0x410cb0, a1=?, a2=?, a3=?.
  The `bne` branch at 0x4086d0 targets 0x4086ec, is taken when t8(=[sym(videoMode)]) != 0, and falls through when t8(=[sym(videoMode)]) == 0.
  The `beq` branch at 0x4086e4 targets 0x408724 and is always taken.
  The `bne` branch at 0x4086f8 targets 0x408714, is taken when t1(=[sym(videoMode)]) != at(=0x1), and falls through when t1(=[sym(videoMode)]) == at(=0x1).
  The `beq` branch at 0x40870c targets 0x408724 and is always taken.
  The `blez` branch at 0x408750 targets 0x408e58, is taken when t6(=one of 0x10e, 0x144) <= 0 (signed), and falls through when t6(=one of 0x10e, 0x144) > 0 (signed).
  The `beq` branch at 0x408944 targets 0x40895c, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x408954 targets 0x408968 and is always taken.
  The `beq` branch at 0x408af8 targets 0x408b10, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x408b08 targets 0x408b1c and is always taken.
  The `bne` branch at 0x408d64 targets 0x40875c, is taken when t2(?) < 0x5 (signed), and falls through when t2(?) >= 0x5 (signed).
  The `bltz` branch at 0x408d88 targets 0x408da4, is taken when t5(=ret(segGetBits)) < 0 (signed), and falls through when t5(=ret(segGetBits)) >= 0 (signed).
  The `beq` branch at 0x408d9c targets 0x408db4 and is always taken.
  The `bne` branch at 0x408dc4 targets 0x408de4, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `bne` branch at 0x408df4 targets 0x408e14, is taken when t5(?) != 0, and falls through when t5(?) == 0.
  The `bne` branch at 0x408e50 targets 0x408758, is taken when t6(?) < t7(=one of 0x10e, 0x144) (signed), and falls through when t6(?) >= t7(=one of 0x10e, 0x144) (signed).
  The `beq` branch at 0x408e7c targets 0x408ed4, is taken when t0(=[sym(dvNoiseMode)]) == 0, and falls through when t0(=[sym(dvNoiseMode)]) != 0.
  The `bne` branch at 0x408eb8 targets 0x408ec4, is taken when t3(=[sym(mbNumber)]) != 0, and falls through when t3(=[sym(mbNumber)]) == 0.
  The `beq` branch at 0x408ed4 targets 0x408edc and is always taken.
  The return at 0x408ee8 has v0 = ?.

- `initCvLength` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x408ef0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x408ef0-0x408f74 (132 bytes).
  It occupies 132 bytes.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x408f1c, `sb` at 0x408f4c.
  The `bne` branch at 0x408f2c targets 0x408f08, is taken when t3(?) < 0x3e (signed), and falls through when t3(?) >= 0x3e (signed).
  The `bne` branch at 0x408f5c targets 0x408f3c, is taken when t7(?) < 0x100 (signed), and falls through when t7(?) >= 0x100 (signed).
  The `beq` branch at 0x408f64 targets 0x408f6c and is always taken.
  The return at 0x408f6c has v0 = ?.

- `initVLC16fromVLC` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x408f74 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x408f74-0x4090c8 (340 bytes).
  It occupies 340 bytes.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x408fdc, `lw` at 0x409054.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x409000, `sw` at 0x409084.
  The `lbu` at 0x40905c loads 1 byte from ?.
  The `beq` branch at 0x408f9c targets 0x4090b8 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x408fac targets 0x4090a8 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x408fe0 targets 0x409098, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x40900c targets 0x409098, is taken when a2(=0x0) >= a3(?) (signed), and falls through when a2(=0x0) < a3(?) (signed).
  The `bne` branch at 0x409090 targets 0x409014, is taken when a2(?) < a3(?) (signed), and falls through when a2(?) >= a3(?) (signed).
  The `bne` branch at 0x4090a0 targets 0x408fb4, is taken when a1(?) < 0x100 (signed), and falls through when a1(?) >= 0x100 (signed).
  The `bne` branch at 0x4090b0 targets 0x408fa4, is taken when a0(?) < 0x40 (signed), and falls through when a0(?) >= 0x40 (signed).
  The `beq` branch at 0x4090b8 targets 0x4090c0 and is always taken.
  The return at 0x4090c0 has v0 = ?.

- `prnEntry` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x4090c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x4090c8-0x409248 (384 bytes).
  It occupies 384 bytes.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x409124, `lw` at 0x409160.
  The `lbu` at 0x4091cc loads 1 byte from ?.
  The `jalr` at 0x40916c calls printf with a0=0x410cf0, a1=?, a2=?, a3=?.
  The `jalr` at 0x4091d0 calls printf with a0=0x410d08, a1=?, a2=?, a3=?.
  The `jalr` at 0x409224 calls printf with a0=0x410d0c, a1=?, a2=?, a3=?.
  The `bne` branch at 0x40912c targets 0x4091f4, is taken when t4(?) != t5(=a2), and falls through when t4(?) == t5(=a2).
  The `beq` branch at 0x409184 targets 0x4091f4, is taken when t4(=0x0) >= t5(=a2) (signed), and falls through when t4(=0x0) < t5(=a2) (signed).
  The `bne` branch at 0x4091ec targets 0x40918c, is taken when t8(?) < t9(=a2) (signed), and falls through when t8(?) >= t9(=a2) (signed).
  The `bne` branch at 0x409200 targets 0x4090f4, is taken when t0(?) < 0x40 (signed), and falls through when t0(?) >= 0x40 (signed).
  The `bne` branch at 0x409214 targets 0x4090f0, is taken when t2(?) < 0x100 (signed), and falls through when t2(?) >= 0x100 (signed).
  The `beq` branch at 0x409230 targets 0x409238 and is always taken.
  The return at 0x409240 has v0 = ret(printf).

- `genvlc` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x409248 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x409248-0x409268 (32 bytes).
  It occupies 32 bytes.
  The `beq` branch at 0x409258 targets 0x409260 and is always taken.
  The return at 0x409260 has v0 = ?.

- `pack_to_output` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x409270 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x409270-0x4093c8 (344 bytes).
  It occupies 344 bytes.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x18, including `lw` at 0x40927c, `lw` at 0x409304, `lw` at 0x40933c.
  4 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x0, including `ld` at 0x409280, `ld` at 0x40935c, `ld` at 0x409380.
  The `lw` at 0x409284 loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `lw` at 0x409288 loads 4 bytes from a1 (arg1 at entry) +0x14.
  2 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x0, including `sd` at 0x409290, `sd` at 0x409298.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x40929c, `lw` at 0x40930c, `lw` at 0x409340.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x4092c8, `ld` at 0x4092e0, `ld` at 0x409318.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0x4092cc, `ld` at 0x409360, `ld` at 0x409384.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x4092d0, `lw` at 0x4092e4, `lw` at 0x40931c.
  3 such `sd` accesses store 8 bytes to [a0] +0x0, including `sd` at 0x4092dc, `sd` at 0x409328, `sd` at 0x409394.
  4 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x8, including `sd` at 0x4092f8, `sd` at 0x409374, `sd` at 0x4093ac.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `sw` at 0x409300, `sw` at 0x409338, `sw` at 0x4093a4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x10, including `sw` at 0x40937c, `sw` at 0x4093bc.
  The `beq` branch at 0x4092a8 targets 0x409310, is taken when t1(=0x40) == a3(=[a0+16]), and falls through when t1(=0x40) != a3(=[a0+16]).
  The `beq` branch at 0x4092b4 targets 0x409344, is taken when v0(=[a1+16]) >= v1(=[a1+20]) (unsigned), and falls through when v0(=[a1+16]) < v1(=[a1+20]) (unsigned).
  The `bne` branch at 0x4092fc targets 0x4092c8, is taken when v0(?) < v1(=[a1+20]) (unsigned), and falls through when v0(?) >= v1(=[a1+20]) (unsigned).
  The `beq` branch at 0x409308 targets 0x409344 and is always taken.
  The `beql` branch at 0x409310 targets 0x409348, is taken when at(?) == 0, and falls through when at(?) != 0; its branch-likely delay slot `addu v0,a3,a2` at 0x409314 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x409334 targets 0x409318, is taken when v0(?) < v1(=[a1+20]) (unsigned), and falls through when v0(?) >= v1(=[a1+20]) (unsigned).
  The `beq` branch at 0x40934c targets 0x4093c0, is taken when v0(=([a0+16] + [a1+24])) == at(=0x80), and falls through when v0(=([a0+16] + [a1+24])) != at(=0x80).
  The `bne` branch at 0x409354 targets 0x409380, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x4093a0 targets 0x4093b0, is taken when v0(=([a0+16] + [a1+24])) != t1(=0x40), and falls through when v0(=([a0+16] + [a1+24])) == t1(=0x40).
  The `beq` branch at 0x4093a8 targets 0x4093bc and is always taken.
  The return at 0x409378 has v0 = ([a0+16] + [a1+24]).
  The return at 0x4093c0 has v0 = ([a0+16] + [a1+24]).

- `init_pullers` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x4093c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x4093c8-0x409514 (332 bytes).
  It occupies 332 bytes.
  6 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4093f0, `sw` at 0x4093f4, `sw` at 0x4093f8.
  10 such `ld` accesses load 8 bytes from ?, including `ld` at 0x409408, `ld` at 0x40940c, `ld` at 0x409410.
  12 such `sd` accesses store 8 bytes to ?, including `sd` at 0x409434, `sd` at 0x409438, `sd` at 0x409458.
  The `ld` at 0x4094c4 loads 8 bytes from abs 0x410e08.
  The `ld` at 0x4094f0 loads 8 bytes from abs 0x410e10.
  The `bne` branch at 0x409504 targets 0x4093f0, is taken when a1(?) != t3(=0x190), and falls through when a1(?) == t3(=0x190).
  The return at 0x40950c has v0 = ?.

- `init_pushers` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x409514 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x409514-0x409584 (112 bytes).
  It occupies 112 bytes.
  The `sw` at 0x40952c stores 4 bytes to sym(output_pusher) +0x10.
  The `sw` at 0x409550 stores 4 bytes to sym(output_pusher) +0x38.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0x409554, `sw` at 0x409558, `sw` at 0x40955c.
  The `bne` branch at 0x409574 targets 0x409554, is taken when v1(?) != v0(=sym(output_pusher)+1200), and falls through when v1(?) == v0(=sym(output_pusher)+1200).
  The return at 0x40957c has v0 = sym(output_pusher)+1200.

- `restart_pushers` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x409584 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x409584-0x40963c (184 bytes).
  It occupies 184 bytes.
  The `sw` at 0x40959c stores 4 bytes to sym(output_pusher) +0x18.
  The `lw` at 0x4095a4 loads 4 bytes from sym(output_pusher) +0x10.
  The `sw` at 0x4095b0 stores 4 bytes to sym(output_pusher) +0x14.
  The `sw` at 0x4095c0 stores 4 bytes to sym(output_pusher) +0x1c.
  The `sw` at 0x4095d0 stores 4 bytes to sym(output_pusher) +0x40.
  The `lw` at 0x4095d8 loads 4 bytes from sym(output_pusher) +0x38.
  The `sw` at 0x4095e0 stores 4 bytes to sym(output_pusher) +0x3c.
  The `sw` at 0x4095e8 stores 4 bytes to sym(output_pusher) +0x44.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4095ec, `lw` at 0x4095f0, `lw` at 0x4095f4.
  12 such `sw` accesses store 4 bytes to ?, including `sw` at 0x409600, `sw` at 0x409604, `sw` at 0x409608.
  The `bne` branch at 0x40962c targets 0x4095ec, is taken when v1(?) != a0(=sym(output_pusher)+1200), and falls through when v1(?) == a0(=sym(output_pusher)+1200).
  The return at 0x409634 has v0 = 0x40.

- `writeback_pushers` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x40963c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40963c-0x4096f8 (188 bytes).
  It occupies 188 bytes.
  The `lw` at 0x409654 loads 4 bytes from sym(output_pusher) +0x18.
  The `ld` at 0x409658 loads 8 bytes from sym(output_pusher) +0x0.
  The `lw` at 0x40965c loads 4 bytes from sym(output_pusher) +0x14.
  The `sd` at 0x409670 stores 8 bytes to [sym(output_pusher)+20] +0x0.
  The `ld` at 0x409678 loads 8 bytes from sym(output_pusher) +0x28.
  The `lw` at 0x40967c loads 4 bytes from sym(output_pusher) +0x40.
  The `lw` at 0x409684 loads 4 bytes from sym(output_pusher) +0x3c.
  The `sd` at 0x409694 stores 8 bytes to [sym(output_pusher)+60] +0x0.
  8 such `lw` accesses load 4 bytes from ?, including `lw` at 0x409698, `lw` at 0x4096a0, `lw` at 0x4096b4.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0x40969c, `ld` at 0x4096b0, `ld` at 0x4096c4.
  4 such `sd` accesses store 8 bytes to ?, including `sd` at 0x4096ac, `sd` at 0x4096c0, `sd` at 0x4096d4.
  The `bne` branch at 0x4096e8 targets 0x409698, is taken when a0(?) != v0(=sym(output_pusher)+1200), and falls through when a0(?) == v0(=sym(output_pusher)+1200).
  The return at 0x4096f0 has v0 = sym(output_pusher)+1200.

- `decodesegment` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x4096f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x4096f8-0x409ea0 (1960 bytes).
  It occupies 1960 bytes.
  24 such `lw` accesses load 4 bytes from ?, including `lw` at 0x409758, `lw` at 0x409768, `lw` at 0x40976c.
  19 such `ld` accesses load 8 bytes from ?, including `ld` at 0x40975c, `ld` at 0x409760, `ld` at 0x409764.
  3 such `lw` accesses load 4 bytes from sym(relocation_table_p) +0x0, including `lw` at 0x40978c, `lw` at 0x4097a8, `lw` at 0x4097cc.
  3 such `lhu` accesses load 2 bytes from [sym(relocation_table_p)] +0x0, including `lhu` at 0x409794, `lhu` at 0x4097b4, `lhu` at 0x4097d0.
  30 such `sd` accesses store 8 bytes to ?, including `sd` at 0x4097c8, `sd` at 0x409830, `sd` at 0x40988c.
  The `sw` at 0x4097e0 stores 4 bytes to sym(relocation_table_p) +0x0.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x4098ac, `lbu` at 0x409a3c, `lbu` at 0x409c54.
  29 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4098c4, `sw` at 0x409970, `sw` at 0x409974.
  The `ld` at 0x409bf0 loads 8 bytes from sym(input_puller) +0x0.
  The `ld` at 0x409bf4 loads 8 bytes from sym(input_puller) +0x8.
  The `lw` at 0x409bf8 loads 4 bytes from sym(input_puller) +0x10.
  The `lw` at 0x409c00 loads 4 bytes from sym(output_pusher) +0x1c.
  The `bne` branch at 0x409778 targets 0x409840, is taken when s7(?) != s1(?), and falls through when s7(?) == s1(?).
  The `bne` branch at 0x409784 targets 0x4097a8, is taken when v0(?) < 0x11 (signed), and falls through when v0(?) >= 0x11 (signed).
  The `beq` branch at 0x4097a0 targets 0x4097dc and is always taken.
  The `bne` branch at 0x409804 targets 0x409820, is taken when t0(?) < 0x5 (signed), and falls through when t0(?) >= 0x5 (signed).
  The `beq` branch at 0x409818 targets 0x409840 and is always taken.
  The `bne` branch at 0x409860 targets 0x40987c, is taken when t0(?) < 0xd (signed), and falls through when t0(?) >= 0xd (signed).
  The `beq` branch at 0x409874 targets 0x40989c and is always taken.
  The `beq` branch at 0x4098b4 targets 0x4098f0, is taken when a2(?) >= v1(?) (signed), and falls through when a2(?) < v1(?) (signed).
  The `beq` branch at 0x4098c0 targets 0x409958, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x4098e8 targets 0x409958 and is always taken.
  The `beq` branch at 0x409910 targets 0x409928, is taken when v1(?) >= t0(?) (signed), and falls through when v1(?) < t0(?) (signed).
  The `beq` branch at 0x409920 targets 0x409948 and is always taken.
  The `bnel` branch at 0x40994c targets 0x4098a0, is taken when a1(?) != at(=0x6), and falls through when a1(?) == at(=0x6); its branch-likely delay slot `dsrl32 t9,a3,0x10` at 0x409950 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x409980 targets 0x409758, is taken when s7(?) < 0x1e (signed), and falls through when s7(?) >= 0x1e (signed).
  The `bne` branch at 0x4099b0 targets 0x409bb4, is taken when s0(?) < s7(?) (signed), and falls through when s0(?) >= s7(?) (signed).
  The `beq` branch at 0x4099d8 targets 0x4099f0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x4099e8 targets 0x409ba4 and is always taken.
  The `beq` branch at 0x4099fc targets 0x409a28, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x409a4c targets 0x409ad4, is taken when a2(?) < t9(?) (signed), and falls through when a2(?) >= t9(?) (signed).
  The `beq` branch at 0x409a78 targets 0x409a90, is taken when v1(?) >= t0(?) (signed), and falls through when v1(?) < t0(?) (signed).
  The `beq` branch at 0x409a88 targets 0x409ab0 and is always taken.
  The `bnel` branch at 0x409ab4 targets 0x409a30, is taken when a1(?) != at(=0x6), and falls through when a1(?) == at(=0x6); its branch-likely delay slot `dsrl32 t7,a3,0x10` at 0x409ab8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x409acc targets 0x409b94 and is always taken.
  The `bne` branch at 0x409ae0 targets 0x409b34, is taken when t2(?) < s0(?) (signed), and falls through when t2(?) >= s0(?) (signed).
  The `bne` branch at 0x409af8 targets 0x409b08, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x409b00 targets 0x409bc8 and is always taken.
  The `beq` branch at 0x409b2c targets 0x409bc8 and is always taken.
  The `beq` branch at 0x409b34 targets 0x409b74, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x409b6c targets 0x409a2c and is always taken.
  The `beq` branch at 0x409b8c targets 0x409a2c and is always taken.
  The `beql` branch at 0x409bac targets 0x4099d0, is taken when v0(?) >= s1(?) (unsigned), and falls through when v0(?) < s1(?) (unsigned); its branch-likely delay slot `lw v0,28(s1)` at 0x409bb0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x409bdc targets 0x409994, is taken when s7(?) < 0x1e (signed), and falls through when s7(?) >= 0x1e (signed).
  The `bnel` branch at 0x409c04 targets 0x409d74, is taken when t6(?) != 0, and falls through when t6(?) == 0; its branch-likely delay slot `addiu s1,s1,40` at 0x409c08 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x409c18 targets 0x409c44, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x409c5c targets 0x409cd4, is taken when a2(?) < t9(?) (signed), and falls through when a2(?) >= t9(?) (signed).
  The `beq` branch at 0x409c88 targets 0x409ca0, is taken when v1(?) >= t0(?) (signed), and falls through when v1(?) < t0(?) (signed).
  The `beq` branch at 0x409c98 targets 0x409cc0 and is always taken.
  The `bnel` branch at 0x409cc4 targets 0x409c48, is taken when a1(?) != at(=0x6), and falls through when a1(?) == at(=0x6); its branch-likely delay slot `dsrl32 t7,a3,0x10` at 0x409cc8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x409ccc targets 0x409d64 and is always taken.
  The `bne` branch at 0x409ce8 targets 0x409d00, is taken when t2(?) < 0x1d (signed), and falls through when t2(?) >= 0x1d (signed).
  The `beq` branch at 0x409cf8 targets 0x409d80 and is always taken.
  The `beq` branch at 0x409d00 targets 0x409d40, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x409d38 targets 0x409c44 and is always taken.
  The `beq` branch at 0x409d58 targets 0x409c44 and is always taken.
  The `bnel` branch at 0x409d78 targets 0x409c04, is taken when s1(?) < s0(=sym(output_pusher)+1200) (unsigned), and falls through when s1(?) >= s0(=sym(output_pusher)+1200) (unsigned); its branch-likely delay slot `lw t6,28(s1)` at 0x409d7c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x409d9c targets 0x409dec, is taken when s4(?) != 0, and falls through when s4(?) == 0.
  The `bne` branch at 0x409da8 targets 0x409dc8, is taken when v0(?) < 0x5 (signed), and falls through when v0(?) >= 0x5 (signed).
  The `beq` branch at 0x409dc0 targets 0x409df0 and is always taken.
  The `beq` branch at 0x409de4 targets 0x409df0 and is always taken.
  The `bne` branch at 0x409e0c targets 0x409e58, is taken when s4(?) != 0, and falls through when s4(?) == 0.
  The `bne` branch at 0x409e18 targets 0x409e34, is taken when t0(?) < 0x5 (signed), and falls through when t0(?) >= 0x5 (signed).
  The `beq` branch at 0x409e2c targets 0x409e5c and is always taken.
  The `beq` branch at 0x409e50 targets 0x409e5c and is always taken.
  The `bne` branch at 0x409e6c targets 0x409d88, is taken when t2(?) != a1(=sym(output_pusher)+1200), and falls through when t2(?) == a1(=sym(output_pusher)+1200).
  The return at 0x409e98 has v0 = ?.
  The instructions from 0x409d60 to 0x409d60 are not reached by any path from the entry, and their branches are not listed.

- `qparsemain` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x409ea0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x409ea0-0x40a124 (644 bytes).
  It occupies 644 bytes.
  The `sw` at 0x409f10 stores 4 bytes to sym(output_packer) +0x0.
  The `sd` at 0x409f14 stores 8 bytes to sym(output_packer) +0x8.
  The `sw` at 0x409f18 stores 4 bytes to sym(output_packer) +0x10.
  4 such `sw` accesses store 4 bytes to sym(segment) +0x0, including `sw` at 0x409f1c, `sw` at 0x409fdc, `sw` at 0x40a048.
  The `sw` at 0x409f24 stores 4 bytes to sym(relocation_table_p) +0x0.
  3 such `lw` accesses load 4 bytes from sym(segment) +0x0, including `lw` at 0x409fd4, `lw` at 0x40a040, `lw` at 0x40a0ac.
  The `ld` at 0x40a0e8 loads 8 bytes from sym(output_packer) +0x8.
  The `lw` at 0x40a0ec loads 4 bytes from sym(output_packer) +0x0.
  The `sd` at 0x40a0f0 stores 8 bytes to [sym(output_packer)] +0x0.
  The `jalr` at 0x409ef0 calls init_pushers with a0=sym(blockbufarray), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x409f78 calls restart_pushers with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x409f8c calls init_pullers with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x409fa0 calls decodesegment with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x409fbc calls pack_to_output with a0=sym(output_packer), a1=?, a2=?, a3=?.
  The `jalr` at 0x409fe4 calls restart_pushers with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x409ff8 calls init_pullers with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40a00c calls decodesegment with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40a028 calls pack_to_output with a0=sym(output_packer), a1=?, a2=?, a3=?.
  The `jalr` at 0x40a050 calls restart_pushers with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40a064 calls init_pullers with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40a078 calls decodesegment with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40a094 calls pack_to_output with a0=sym(output_packer), a1=?, a2=?, a3=?.
  The `blez` branch at 0x409f20 targets 0x40a0e8, is taken when a1 <= 0 (signed), and falls through when a1 > 0 (signed).
  The `bne` branch at 0x409fcc targets 0x409fb0, is taken when s0(?) < s2(=sym(output_pusher)+1200) (unsigned), and falls through when s0(?) >= s2(=sym(output_pusher)+1200) (unsigned).
  The `bne` branch at 0x40a038 targets 0x40a01c, is taken when s0(?) < s3(=sym(output_pusher)+1200) (unsigned), and falls through when s0(?) >= s3(=sym(output_pusher)+1200) (unsigned).
  The `bne` branch at 0x40a0a0 targets 0x40a088, is taken when s0(?) != s4(=sym(output_pusher)+1200), and falls through when s0(?) == s4(=sym(output_pusher)+1200).
  The `bne` branch at 0x40a0cc targets 0x409f74, is taken when v0(?) != at(=0x2d00), and falls through when v0(?) == at(=0x2d00).
  The `bne` branch at 0x40a0e0 targets 0x409f60, is taken when t7(?) != t8(?), and falls through when t7(?) == t8(?).
  The return at 0x40a11c has v0 = one of ret(init_pushers), ?.

- `uncached_malloc` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x40a124 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40a124-0x40a1bc (152 bytes).
  It occupies 152 bytes.
  The `jalr` at 0x40a150 calls malloc with a0=?, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40a164 calls aligntopage with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x40a184 calls cachectl with a0=ret(aligntopage), a1=?, a2=0x1, a3=?.
  The `jalr` at 0x40a19c calls perror with a0=0x410dfc, a1=?, a2=?, a3=?.
  The `beq` branch at 0x40a18c targets 0x40a1a8, is taken when v0(=ret(cachectl)) == 0, and falls through when v0(=ret(cachectl)) != 0.
  The return at 0x40a1b4 has v0 = ret(aligntopage).

- `aligntopage` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x40a1bc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40a1bc-0x40a1d8 (28 bytes).
  It occupies 28 bytes.
  The return at 0x40a1d0 has v0 = ?.

- `scale_alloc` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x40a1e0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40a1e0-0x40a31c (316 bytes).
  It occupies 316 bytes.
  The `jalr` at 0x40a230 calls _GETBITSUR8x8 with a0=a0 at entry (arg0), a1=sym(cvLength), a2=one of 0x0, 0x1, a3=a3 at entry (arg3).
  The `jalr` at 0x40a270 calls _GETBITS with a0=a0 at entry (arg0), a1=sym(cvLength), a2=((((a1 << 0xb) + (a2 << 0xa)) + (a3 << 0x6)) + sym(qscales)), a3=sym(zz8x8Tabt).
  The `jalr` at 0x40a2bc calls _GETBITSUR4x8 with a0=a0 at entry (arg0), a1=sym(cvLength), a2=one of 0x0, 0x1, a3=a3 at entry (arg3).
  The `jalr` at 0x40a2f8 calls _GETBITS with a0=a0 at entry (arg0), a1=sym(cvLength), a2=((((a1 << 0xb) + (a2 << 0xa)) + (a3 << 0x6)) + sym(qscales)), a3=sym(zz4x8Tabt).
  The `bne` branch at 0x40a200 targets 0x40a284, is taken when a2 != 0, and falls through when a2 == 0.
  The `bne` branch at 0x40a20c targets 0x40a244, is taken when a3 != at(=0xf), and falls through when a3 == at(=0xf).
  The `bne` branch at 0x40a218 targets 0x40a228, is taken when a1 != at(=0x3), and falls through when a1 == at(=0x3).
  The `beq` branch at 0x40a220 targets 0x40a228 and is always taken.
  The `beq` branch at 0x40a23c targets 0x40a308 and is always taken.
  The `beq` branch at 0x40a27c targets 0x40a308 and is always taken.
  The `bne` branch at 0x40a290 targets 0x40a2d0, is taken when t8(=a3) != at(=0xf), and falls through when t8(=a3) == at(=0xf).
  The `bne` branch at 0x40a2a4 targets 0x40a2b4, is taken when t9(=a1) != at(=0x3), and falls through when t9(=a1) == at(=0x3).
  The `beq` branch at 0x40a2ac targets 0x40a2b4 and is always taken.
  The `beq` branch at 0x40a2c8 targets 0x40a308 and is always taken.
  The return at 0x40a314 has v0 = one of ret(_GETBITSUR8x8)+4, ret(_GETBITS)+4, ret(_GETBITSUR4x8)+4.

- `scale_vlcBlockPackedFast` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x40a31c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40a31c-0x40a43c (288 bytes).
  It occupies 288 bytes.
  The `lw` at 0x40a3bc loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0x40a3c0 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x40a3c4 loads 4 bytes from a1 (arg1 at entry) +0x8c.
  The `sw` at 0x40a3d8 stores 4 bytes to a1 (arg1 at entry) +0x88.
  3 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x90, including `sw` at 0x40a3e8, `sw` at 0x40a41c, `sw` at 0x40a424.
  3 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x94, including `sw` at 0x40a3ec, `sw` at 0x40a40c, `sw` at 0x40a414.
  The `sw` at 0x40a3f0 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `sw` at 0x40a3f8 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lw` at 0x40a3fc loads 4 bytes from a1 (arg1 at entry) +0x88.
  The `jalr` at 0x40a370 calls _APPENDBITSUR8x8 with a0=a0 at entry (arg0), a1=sym(dvBitsTable16), a2=?, a3=a1 at entry (arg1).
  The `jalr` at 0x40a3b0 calls _APPENDBITSUR4x8 with a0=a0 at entry (arg0), a1=sym(dvBitsTable16), a2=?, a3=a1 at entry (arg1).
  The `bne` branch at 0x40a340 targets 0x40a380, is taken when a3 != 0, and falls through when a3 == 0.
  The `beq` branch at 0x40a378 targets 0x40a3bc and is always taken.
  The `beq` branch at 0x40a3d4 targets 0x40a3fc, is taken when v1(=[a1+140]) >= v0(=(([a1+4] << 0x6) + [a1])) (signed), and falls through when v1(=[a1+140]) < v0(=(([a1+4] << 0x6) + [a1])) (signed).
  The `beq` branch at 0x40a3f4 targets 0x40a428 and is always taken.
  The `beql` branch at 0x40a408 targets 0x40a424, is taken when t1(=[a1+136]) >= v1(=[a1+140]) (signed), and falls through when t1(=[a1+136]) < v1(=[a1+140]) (signed); its branch-likely delay slot `sw v0,148(s0)` at 0x40a40c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x40a418 targets 0x40a428 and is always taken.
  The return at 0x40a434 has v0 = 0x1.
  The instructions from 0x40a420 to 0x40a420 are not reached by any path from the entry, and their branches are not listed.

- `qnoCtrl` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x40a43c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40a43c-0x40a7fc (960 bytes).
  It occupies 960 bytes.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0x40a478, `lw` at 0x40a5a0, `lw` at 0x40a6d0.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lw` at 0x40a484, `lw` at 0x40a5b4, `lw` at 0x40a6cc.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x40a494, `lw` at 0x40a59c, `lw` at 0x40a6d4.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x40a4a0, `lw` at 0x40a5d4, `lw` at 0x40a6e8.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0x40a4a8, `lw` at 0x40a5d8, `lw` at 0x40a6ec.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lw` at 0x40a4ac, `lw` at 0x40a5f8, `lw` at 0x40a6f4.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x40a4c0, `lw` at 0x40a608, `lw` at 0x40a70c.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0x40a4c8, `lw` at 0x40a60c, `lw` at 0x40a710.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lw` at 0x40a4cc, `lw` at 0x40a628, `lw` at 0x40a718.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x40a4e0, `lw` at 0x40a638, `lw` at 0x40a730.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lw` at 0x40a4e8, `lw` at 0x40a63c, `lw` at 0x40a734.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0xc, including `lw` at 0x40a4ec, `lw` at 0x40a658, `lw` at 0x40a73c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lw` at 0x40a500, `lw` at 0x40a668, `lw` at 0x40a754.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lw` at 0x40a508, `lw` at 0x40a66c, `lw` at 0x40a758.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x10, including `lw` at 0x40a50c, `lw` at 0x40a688, `lw` at 0x40a760.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x40a520, `lw` at 0x40a698, `lw` at 0x40a778.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x14, including `lw` at 0x40a528, `lw` at 0x40a69c, `lw` at 0x40a77c.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x14, including `lw` at 0x40a52c, `lw` at 0x40a6b8, `lw` at 0x40a784.
  The `lh` at 0x40a5a8 loads 2 bytes from [a0] +0x0.
  The `sw` at 0x40a5d0 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lh` at 0x40a5e0 loads 2 bytes from [a0+4] +0x0.
  The `sw` at 0x40a604 stores 4 bytes to a1 (arg1 at entry) +0xa0.
  The `lh` at 0x40a614 loads 2 bytes from [a0+8] +0x0.
  The `sw` at 0x40a634 stores 4 bytes to a1 (arg1 at entry) +0x138.
  The `lh` at 0x40a644 loads 2 bytes from [a0+12] +0x0.
  The `sw` at 0x40a664 stores 4 bytes to a1 (arg1 at entry) +0x1d0.
  The `lh` at 0x40a674 loads 2 bytes from [a0+20] +0x0.
  The `sw` at 0x40a694 stores 4 bytes to a1 (arg1 at entry) +0x268.
  The `lh` at 0x40a6a4 loads 2 bytes from [a0+16] +0x0.
  The `sw` at 0x40a6c4 stores 4 bytes to a1 (arg1 at entry) +0x300.
  The `lw` at 0x40a798 loads 4 bytes from a1 (arg1 at entry) +0x250.
  The `lw` at 0x40a79c loads 4 bytes from a1 (arg1 at entry) +0x380.
  The `lw` at 0x40a7a0 loads 4 bytes from a1 (arg1 at entry) +0x2e8.
  The `lw` at 0x40a7a4 loads 4 bytes from a1 (arg1 at entry) +0x88.
  The `lw` at 0x40a7b0 loads 4 bytes from a1 (arg1 at entry) +0x120.
  The `lw` at 0x40a7b4 loads 4 bytes from a1 (arg1 at entry) +0x1b8.
  The `sw` at 0x40a7bc stores 4 bytes to ?.
  The `jalr` at 0x40a490 calls scale_alloc with a0=[a0], a1=[a2], a2=[a3], a3=0xf.
  The `jalr` at 0x40a4b0 calls scale_alloc with a0=[a0+4], a1=[a2+4], a2=[a3+4], a3=0xf.
  The `jalr` at 0x40a4d0 calls scale_alloc with a0=[a0+8], a1=[a2+8], a2=[a3+8], a3=0xf.
  The `jalr` at 0x40a4f0 calls scale_alloc with a0=[a0+12], a1=[a2+12], a2=[a3+12], a3=0xf.
  The `jalr` at 0x40a510 calls scale_alloc with a0=[a0+20], a1=[a2+16], a2=[a3+16], a3=0xf.
  The `jalr` at 0x40a530 calls scale_alloc with a0=[a0+16], a1=[a2+20], a2=[a3+20], a3=0xf.
  The `jalr` at 0x40a6dc calls scale_vlcBlockPackedFast with a0=[a0], a1=a1 at entry (arg1), a2=[a2], a3=[a3].
  The `jalr` at 0x40a700 calls scale_vlcBlockPackedFast with a0=[a0+4], a1=a1+152, a2=[a2+4], a3=[a3+4].
  The `jalr` at 0x40a724 calls scale_vlcBlockPackedFast with a0=[a0+8], a1=a1+304, a2=[a2+8], a3=[a3+8].
  The `jalr` at 0x40a748 calls scale_vlcBlockPackedFast with a0=[a0+12], a1=a1+456, a2=[a2+12], a3=[a3+12].
  The `jalr` at 0x40a76c calls scale_vlcBlockPackedFast with a0=[a0+20], a1=a1+608, a2=[a2+16], a3=[a3+16].
  The `jalr` at 0x40a790 calls scale_vlcBlockPackedFast with a0=[a0+16], a1=a1+760, a2=[a2+20], a3=[a3+20].
  The `blez` branch at 0x40a548 targets 0x40a590, is taken when v1(?) <= 0 (signed), and falls through when v1(?) > 0 (signed).
  The `bgez` branch at 0x40a550 targets 0x40a560, is taken when s0(=(((((ret(scale_alloc) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc))) >= 0 (signed), and falls through when s0(=(((((ret(scale_alloc) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc))) < 0 (signed).
  The `bne` branch at 0x40a56c targets 0x40a578, is taken when t7(?) != 0, and falls through when t7(?) == 0.
  The `bne` branch at 0x40a57c targets 0x40a590, is taken when t7(?) != at(=-0x1), and falls through when t7(?) == at(=-0x1).
  The `bne` branch at 0x40a584 targets 0x40a590, is taken when v1(?) != at(=0xffffffff80000000), and falls through when v1(?) == at(=0xffffffff80000000).
  The `bgez` branch at 0x40a590 targets 0x40a59c, is taken when s5(?) >= 0 (signed), and falls through when s5(?) < 0 (signed).
  The return at 0x40a7f4 has v0 = ((((([a1+592] + [a1+896]) + [a1+744]) + [a1+136]) + [a1+288]) + [a1+440])-80.

- `qnoMultiPassFast` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x40a7fc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40a7fc-0x40ae40 (1604 bytes).
  It occupies 1604 bytes.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x40a864, `lw` at 0x40a968, `lw` at 0x40aaac.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0x40a868, `lw` at 0x40a96c, `lw` at 0x40aaa8.
  5 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lw` at 0x40a86c, `lw` at 0x40a98c, `lw` at 0x40aaa4.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x40a880, `lw` at 0x40a9ac, `lw` at 0x40aac0.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0x40a888, `lw` at 0x40a9b0, `lw` at 0x40aac4.
  5 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lw` at 0x40a88c, `lw` at 0x40a9d0, `lw` at 0x40aacc.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x40a8a0, `lw` at 0x40a9e0, `lw` at 0x40aae4.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0x40a8a8, `lw` at 0x40a9e4, `lw` at 0x40aae8.
  5 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lw` at 0x40a8ac, `lw` at 0x40aa00, `lw` at 0x40aaf0.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x40a8c0, `lw` at 0x40aa10, `lw` at 0x40ab08.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lw` at 0x40a8c8, `lw` at 0x40aa14, `lw` at 0x40ab0c.
  5 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0xc, including `lw` at 0x40a8cc, `lw` at 0x40aa30, `lw` at 0x40ab14.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lw` at 0x40a8e0, `lw` at 0x40aa40, `lw` at 0x40ab2c.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lw` at 0x40a8e8, `lw` at 0x40aa44, `lw` at 0x40ab30.
  5 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x10, including `lw` at 0x40a8ec, `lw` at 0x40aa60, `lw` at 0x40ab38.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x40a900, `lw` at 0x40aa70, `lw` at 0x40ab50.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x14, including `lw` at 0x40a908, `lw` at 0x40aa74, `lw` at 0x40ab54.
  5 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x14, including `lw` at 0x40a90c, `lw` at 0x40aa90, `lw` at 0x40ab5c.
  2 such `lh` accesses load 2 bytes from [a0] +0x0, including `lh` at 0x40a974, `lh` at 0x40abc0.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x8, including `sw` at 0x40a9a8, `sw` at 0x40abe8.
  2 such `lh` accesses load 2 bytes from [a0+4] +0x0, including `lh` at 0x40a9b8, `lh` at 0x40abf8.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0xa0, including `sw` at 0x40a9dc, `sw` at 0x40ac1c.
  2 such `lh` accesses load 2 bytes from [a0+8] +0x0, including `lh` at 0x40a9ec, `lh` at 0x40ac2c.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x138, including `sw` at 0x40aa0c, `sw` at 0x40ac4c.
  2 such `lh` accesses load 2 bytes from [a0+12] +0x0, including `lh` at 0x40aa1c, `lh` at 0x40ac5c.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x1d0, including `sw` at 0x40aa3c, `sw` at 0x40ac7c.
  2 such `lh` accesses load 2 bytes from [a0+20] +0x0, including `lh` at 0x40aa4c, `lh` at 0x40ac8c.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x268, including `sw` at 0x40aa6c, `sw` at 0x40acac.
  2 such `lh` accesses load 2 bytes from [a0+16] +0x0, including `lh` at 0x40aa7c, `lh` at 0x40acbc.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x300, including `sw` at 0x40aa9c, `sw` at 0x40acdc.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x250, including `lw` at 0x40ab70, `lw` at 0x40adcc.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x380, including `lw` at 0x40ab74, `lw` at 0x40add0.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x2e8, including `lw` at 0x40ab78, `lw` at 0x40add4.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x88, including `lw` at 0x40ab7c, `lw` at 0x40add8.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x120, including `lw` at 0x40ab80, `lw` at 0x40ade0.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x1b8, including `lw` at 0x40ab88, `lw` at 0x40ade8.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x40abb0, `sw` at 0x40ae0c.
  The `jalr` at 0x40a870 calls scale_alloc with a0=[a0], a1=[a2], a2=[a3], a3=?.
  The `jalr` at 0x40a890 calls scale_alloc with a0=[a0+4], a1=[a2+4], a2=[a3+4], a3=?.
  The `jalr` at 0x40a8b0 calls scale_alloc with a0=[a0+8], a1=[a2+8], a2=[a3+8], a3=?.
  The `jalr` at 0x40a8d0 calls scale_alloc with a0=[a0+12], a1=[a2+12], a2=[a3+12], a3=?.
  The `jalr` at 0x40a8f0 calls scale_alloc with a0=[a0+20], a1=[a2+16], a2=[a3+16], a3=?.
  The `jalr` at 0x40a910 calls scale_alloc with a0=[a0+16], a1=[a2+20], a2=[a3+20], a3=?.
  The `jalr` at 0x40aab4 calls scale_vlcBlockPackedFast with a0=[a0], a1=a1 at entry (arg1), a2=[a2], a3=[a3].
  The `jalr` at 0x40aad8 calls scale_vlcBlockPackedFast with a0=[a0+4], a1=a1+152, a2=[a2+4], a3=[a3+4].
  The `jalr` at 0x40aafc calls scale_vlcBlockPackedFast with a0=[a0+8], a1=a1+304, a2=[a2+8], a3=[a3+8].
  The `jalr` at 0x40ab20 calls scale_vlcBlockPackedFast with a0=[a0+12], a1=a1+456, a2=[a2+12], a3=[a3+12].
  The `jalr` at 0x40ab44 calls scale_vlcBlockPackedFast with a0=[a0+20], a1=a1+608, a2=[a2+16], a3=[a3+16].
  The `jalr` at 0x40ab68 calls scale_vlcBlockPackedFast with a0=[a0+16], a1=a1+760, a2=[a2+20], a3=[a3+20].
  The `jalr` at 0x40acf8 calls scale_vlcBlockPackedFast with a0=[a0], a1=a1 at entry (arg1), a2=[a2], a3=[a3].
  The `jalr` at 0x40ad20 calls scale_vlcBlockPackedFast with a0=[a0+4], a1=a1+152, a2=[a2+4], a3=[a3+4].
  The `jalr` at 0x40ad48 calls scale_vlcBlockPackedFast with a0=[a0+8], a1=a1+304, a2=[a2+8], a3=[a3+8].
  The `jalr` at 0x40ad70 calls scale_vlcBlockPackedFast with a0=[a0+12], a1=a1+456, a2=[a2+12], a3=[a3+12].
  The `jalr` at 0x40ad9c calls scale_vlcBlockPackedFast with a0=[a0+20], a1=a1+608, a2=[a2+16], a3=[a3+16].
  The `jalr` at 0x40adc4 calls scale_vlcBlockPackedFast with a0=[a0+16], a1=a1+760, a2=[a2+20], a3=[a3+20].
  The `beq` branch at 0x40a920 targets 0x40a930, is taken when s7(?) >= s0(=(((((ret(scale_alloc) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc))) (signed), and falls through when s7(?) < s0(=(((((ret(scale_alloc) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc))) (signed).
  The `beq` branch at 0x40a928 targets 0x40a944 and is always taken.
  The `bnel` branch at 0x40a934 targets 0x40a948, is taken when s7(?) < s0(=(((((ret(scale_alloc) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc))) (signed), and falls through when s7(?) >= s0(=(((((ret(scale_alloc) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc))) (signed); its branch-likely delay slot `addiu s6,s6,1` at 0x40a938 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x40a94c targets 0x40a860, is taken when s6(?) != at(=0x4), and falls through when s6(?) == at(=0x4).
  The `bne` branch at 0x40a960 targets 0x40abb4, is taken when t7(?) != at(=-0x1), and falls through when t7(?) == at(=-0x1).
  The `beq` branch at 0x40abac targets 0x40ae10 and is always taken.
  The return at 0x40ae38 has v0 = ((((([a1+592] + [a1+896]) + [a1+744]) + [a1+136]) + [a1+288]) + [a1+440])-80.

- `mbGetBits` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x40ae40 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40ae40-0x40aedc (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0x40ae58 loads 4 bytes from sym(qno4passMode) +0x0.
  The `jalr` at 0x40ae8c calls qnoMultiPassFast with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40aeb8 calls qnoCtrl with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x40ae6c targets 0x40aea0, is taken when t6(=[sym(qno4passMode)]) == 0, and falls through when t6(=[sym(qno4passMode)]) != 0.
  The `bgtz` branch at 0x40ae74 targets 0x40ae80, is taken when v0(?) > 0 (signed), and falls through when v0(?) <= 0 (signed).
  The `beq` branch at 0x40ae98 targets 0x40aec8 and is always taken.
  The return at 0x40aed4 has v0 = ?.

- `segGetBits` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x40aedc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40aedc-0x40b384 (1192 bytes).
  It occupies 1192 bytes.
  7 such `lw` accesses load 4 bytes from sym(rollMode) +0x0, including `lw` at 0x40af1c, `lw` at 0x40b090, `lw` at 0x40b128.
  The `lw` at 0x40af38 loads 4 bytes from a0 (arg0 at entry) +0x30c.
  The `lw` at 0x40af60 loads 4 bytes from a0 (arg0 at entry) +0x310.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x314, including `lw` at 0x40af6c, `lw` at 0x40af78.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x318, including `lw` at 0x40af84, `lw` at 0x40af90.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x31c, including `lw` at 0x40af9c, `lw` at 0x40afa8.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x40afc8, `sw` at 0x40afd0.
  The `lw` at 0x40b300 loads 4 bytes from a0 (arg0 at entry) +0x168.
  The `lw` at 0x40b304 loads 4 bytes from a0 (arg0 at entry) +0x16c.
  The `lw` at 0x40b308 loads 4 bytes from sym(globalQNO) +0x0.
  The `lw` at 0x40b314 loads 4 bytes from a0 (arg0 at entry) +0x170.
  The `lw` at 0x40b31c loads 4 bytes from a0 (arg0 at entry) +0x174.
  The `lw` at 0x40b324 loads 4 bytes from a0 (arg0 at entry) +0x178.
  The `sw` at 0x40b334 stores 4 bytes to sym(globalQNO) +0x0.
  The `jalr` at 0x40af08 calls initUnpacked with a0=a0+800, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40b070 calls mbGetBits with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b108 calls mbGetBits with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b1a0 calls mbGetBits with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b238 calls mbGetBits with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b2d0 calls mbGetBits with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b340 calls packSegmentInplace with a0=a0+800, a1=?, a2=?, a3=?.
  The `beq` branch at 0x40af20 targets 0x40afdc, is taken when t6(=[sym(rollMode)]) == 0, and falls through when t6(=[sym(rollMode)]) != 0.
  The `beql` branch at 0x40af44 targets 0x40af58, is taken when v1(=[a0+780]) >= 0xff (signed), and falls through when v1(=[a0+780]) < 0xff (signed); its branch-likely delay slot `addiu v1,zero,1` at 0x40af48 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0x40af68 targets 0x40af7c, is taken when v0(?) < a1(=[a0+784]) (signed), and falls through when v0(?) >= a1(=[a0+784]) (signed); its branch-likely delay slot `lw a1,784(a0)` at 0x40af6c runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0x40af80 targets 0x40af94, is taken when v0(?) < a1(=[a0+788]) (signed), and falls through when v0(?) >= a1(=[a0+788]) (signed); its branch-likely delay slot `lw a1,788(a0)` at 0x40af84 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0x40af98 targets 0x40afac, is taken when v0(?) < a1(=[a0+792]) (signed), and falls through when v0(?) >= a1(=[a0+792]) (signed); its branch-likely delay slot `lw t8,792(a0)` at 0x40af9c runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0x40afb0 targets 0x40afc0, is taken when v0(?) < t8(=[a0+796]) (signed), and falls through when v0(?) >= t8(=[a0+796]) (signed); its branch-likely delay slot `sll t9,a2,0x2` at 0x40afb4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x40afcc targets 0x40af38, is taken when a3(?) != t2(=sp-24), and falls through when a3(?) == t2(=sp-24).
  The `beq` branch at 0x40afd4 targets 0x40b000 and is always taken.
  The `bne` branch at 0x40b09c targets 0x40b0ac, is taken when t8(=[sym(rollMode)]) != 0, and falls through when t8(=[sym(rollMode)]) == 0.
  The `bne` branch at 0x40b134 targets 0x40b144, is taken when t7(=[sym(rollMode)]) != 0, and falls through when t7(=[sym(rollMode)]) == 0.
  The `bne` branch at 0x40b1cc targets 0x40b1dc, is taken when t6(=[sym(rollMode)]) != 0, and falls through when t6(=[sym(rollMode)]) == 0.
  The `bne` branch at 0x40b264 targets 0x40b274, is taken when t9(=[sym(rollMode)]) != 0, and falls through when t9(=[sym(rollMode)]) == 0.
  The `bne` branch at 0x40b2ec targets 0x40b2fc, is taken when t8(=[sym(rollMode)]) != 0, and falls through when t8(=[sym(rollMode)]) == 0.
  The `bne` branch at 0x40b364 targets 0x40b374, is taken when t8(=[sym(rollMode)]) != 0, and falls through when t8(=[sym(rollMode)]) == 0.
  The `beq` branch at 0x40b36c targets 0x40b374 and is always taken.
  The return at 0x40b37c has v0 = ?.

- `initBitBuffer` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x40b390 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40b390-0x40b3d8 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x40b390 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `sw` at 0x40b394 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `sw` at 0x40b398 stores 4 bytes to a0 (arg0 at entry) +0x8c.
  The `sw` at 0x40b39c stores 4 bytes to a0 (arg0 at entry) +0x88.
  The `sw` at 0x40b3a0 stores 4 bytes to a0 (arg0 at entry) +0x90.
  The `sw` at 0x40b3a4 stores 4 bytes to a0 (arg0 at entry) +0x94.
  4 such `sd` accesses store 8 bytes to ?, including `sd` at 0x40b3b8, `sd` at 0x40b3bc, `sd` at 0x40b3c0.
  The `bne` branch at 0x40b3c8 targets 0x40b3b4, is taken when v0(?) != a0(=0x10), and falls through when v0(?) == a0(=0x10).
  The return at 0x40b3d0 has v0 = ?.

- `initUnpacked` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x40b3d8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40b3d8-0x40b4f4 (284 bytes).
  It occupies 284 bytes.
  The `sw` at 0x40b428 stores 4 bytes to ?.
  The `jalr` at 0x40b43c calls initBitBuffer with a0=?, a1=0x0, a2=0x78, a3=0x14.
  The `jalr` at 0x40b460 calls initBitBuffer with a0=?, a1=0x0, a2=0x70, a3=0xc.
  The `jalr` at 0x40b488 calls initBitBuffer with a0=?, a1=0x0, a2=0x50, a3=0xc.
  The `jalr` at 0x40b4a8 calls initBitBuffer with a0=?, a1=0x0, a2=0x50, a3=0xc.
  The `bne` branch at 0x40b470 targets 0x40b450, is taken when s0(?) != s2(=0x260), and falls through when s0(?) == s2(=0x260).
  The `bne` branch at 0x40b4c0 targets 0x40b428, is taken when s4(?) != s7(=0x11f8), and falls through when s4(?) == s7(=0x11f8).
  The return at 0x40b4ec has v0 = ret(initBitBuffer).

- `distributeBits64` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x40b4f4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40b4f4-0x40b6c8 (468 bytes).
  It occupies 468 bytes.
  The `lw` at 0x40b514 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x40b518 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0x40b51c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x40b520 loads 4 bytes from a0 (arg0 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8c, including `lw` at 0x40b528, `lw` at 0x40b624.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x88, including `lw` at 0x40b52c, `lw` at 0x40b5f8, `lw` at 0x40b628.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x88, including `lw` at 0x40b530, `lw` at 0x40b654, `lw` at 0x40b67c.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8c, including `lw` at 0x40b534, `lw` at 0x40b610, `lw` at 0x40b650.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0x40b56c, `ld` at 0x40b570, `ld` at 0x40b574.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x40b5f0, `sd` at 0x40b5f4.
  The `sw` at 0x40b60c stores 4 bytes to a0 (arg0 at entry) +0x88.
  The `sw` at 0x40b620 stores 4 bytes to a1 (arg1 at entry) +0x8c.
  The `sw` at 0x40b64c stores 4 bytes to a0 (arg0 at entry) +0x90.
  3 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x94, including `sw` at 0x40b66c, `sw` at 0x40b674, `sw` at 0x40b69c.
  The `sw` at 0x40b6a0 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `sw` at 0x40b6a4 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0x40b6a8 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `sw` at 0x40b6ac stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0x40b548 targets 0x40b554, is taken when t1(?) >= t0(?) (signed), and falls through when t1(?) < t0(?) (signed).
  The `bne` branch at 0x40b558 targets 0x40b564, is taken when t0(?) < 0x41 (signed), and falls through when t0(?) >= 0x41 (signed).
  The `bgez` branch at 0x40b578 targets 0x40b5a0, is taken when t2(?) >= 0 (signed), and falls through when t2(?) < 0 (signed).
  The `beq` branch at 0x40b598 targets 0x40b5bc and is always taken.
  The `blez` branch at 0x40b5a0 targets 0x40b5bc, is taken when t2(?) <= 0 (signed), and falls through when t2(?) > 0 (signed).
  The `beq` branch at 0x40b5bc targets 0x40b5e8, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x40b638 targets 0x40b648, is taken when t8(=[a0+136]) < t7(=[a0+140]) (signed), and falls through when t8(=[a0+136]) >= t7(=[a0+140]) (signed).
  The `beq` branch at 0x40b640 targets 0x40b648 and is always taken.
  The `beq` branch at 0x40b648 targets 0x40b678, is taken when t0(=one of 0x0, 0x1) == 0, and falls through when t0(=one of 0x0, 0x1) != 0.
  The `bne` branch at 0x40b660 targets 0x40b670, is taken when t9(=[a1+140]) < t6(=[a1+136]) (signed), and falls through when t9(=[a1+140]) >= t6(=[a1+136]) (signed).
  The `beq` branch at 0x40b668 targets 0x40b6a0 and is always taken.
  The `beq` branch at 0x40b670 targets 0x40b6a0 and is always taken.
  The `bne` branch at 0x40b688 targets 0x40b698, is taken when t7(=[a1+140]) < t9(=[a1+136]) (signed), and falls through when t7(=[a1+140]) >= t9(=[a1+136]) (signed).
  The `beq` branch at 0x40b690 targets 0x40b698 and is always taken.
  The `beq` branch at 0x40b698 targets 0x40b528, is taken when t0(=one of 0x0, 0x1) == 0, and falls through when t0(=one of 0x0, 0x1) != 0.
  The return at 0x40b6c0 has v0 = ?.

- `packSegmentInplace` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x40b6c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40b6c8-0x40ba50 (904 bytes).
  It occupies 904 bytes.
  33 such `lw` accesses load 4 bytes from ?, including `lw` at 0x40b728, `lw` at 0x40b740, `lw` at 0x40b76c.
  18 such `sw` accesses store 4 bytes to ?, including `sw` at 0x40b7ac, `sw` at 0x40b7bc, `sw` at 0x40b7cc.
  The `jalr` at 0x40b758 calls distributeBits64 with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b8f0 calls distributeBits64 with a0=?, a1=?, a2=?, a3=?.
  The `bnel` branch at 0x40b72c targets 0x40b774, is taken when t6(?) != 0, and falls through when t6(?) == 0; its branch-likely delay slot `lw t9,72(sp)` at 0x40b730 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0x40b744 targets 0x40b768, is taken when t8(?) != 0, and falls through when t8(?) == 0; its branch-likely delay slot `addiu s4,s4,1` at 0x40b748 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0x40b768 targets 0x40b72c, is taken when s4(?) != s3(=0x6), and falls through when s4(?) == s3(=0x6); its branch-likely delay slot `lw t6,148(s1)` at 0x40b76c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x40b780 targets 0x40b724, is taken when t0(?) != at(=0x390), and falls through when t0(?) == at(=0x390).
  The `beq` branch at 0x40b798 targets 0x40b7e8, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned).
  The `beql` branch at 0x40b7a8 targets 0x40b7ec, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `sw v0,912(s6)` at 0x40b7ac runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b7b8 targets 0x40b7ec, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `sw v0,912(s6)` at 0x40b7bc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b7c8 targets 0x40b7ec, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `sw v0,912(s6)` at 0x40b7cc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b7d8 targets 0x40b7ec, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `sw v0,912(s6)` at 0x40b7dc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b7f4 targets 0x40b848, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `addiu s6,s6,920` at 0x40b7f8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b804 targets 0x40b848, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `addiu s6,s6,920` at 0x40b808 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b814 targets 0x40b848, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `addiu s6,s6,920` at 0x40b818 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b824 targets 0x40b848, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `addiu s6,s6,920` at 0x40b828 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b834 targets 0x40b848, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `addiu s6,s6,920` at 0x40b838 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x40b848 targets 0x40b71c, is taken when s7(?) != at(=0x5), and falls through when s7(?) == at(=0x5).
  The `beql` branch at 0x40b868 targets 0x40ba04, is taken when s3(=0x1) == t2(?), and falls through when s3(=0x1) != t2(?); its branch-likely delay slot `lw t5,100(sp)` at 0x40b86c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b8a4 targets 0x40b988, is taken when s3(=0x1) == t5(?), and falls through when s3(=0x1) != t5(?); its branch-likely delay slot `lw t1,72(sp)` at 0x40b8a8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x40b8b8 targets 0x40b974, is taken when s3(=0x1) == t6(?), and falls through when s3(=0x1) != t6(?).
  The `beql` branch at 0x40b8dc targets 0x40b908, is taken when s3(=0x1) == t8(?), and falls through when s3(=0x1) != t8(?); its branch-likely delay slot `addiu s1,s1,152` at 0x40b8e0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x40b900 targets 0x40b910, is taken when s3(=0x1) == t9(?), and falls through when s3(=0x1) != t9(?).
  The `bne` branch at 0x40b908 targets 0x40b8d8, is taken when s1(?) != s5(=0x390), and falls through when s1(?) == s5(=0x390).
  The `beql` branch at 0x40b918 targets 0x40b96c, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `sw v0,912(s6)` at 0x40b91c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b928 targets 0x40b96c, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `sw v0,912(s6)` at 0x40b92c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b938 targets 0x40b96c, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `sw v0,912(s6)` at 0x40b93c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b948 targets 0x40b96c, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `sw v0,912(s6)` at 0x40b94c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b958 targets 0x40b96c, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `sw v0,912(s6)` at 0x40b95c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x40b970 targets 0x40b984, is taken when s3(=0x1) == t0(?), and falls through when s3(=0x1) != t0(?).
  The `bne` branch at 0x40b97c targets 0x40b8ac, is taken when s7(?) < 0x5 (signed), and falls through when s7(?) >= 0x5 (signed).
  The `bne` branch at 0x40b994 targets 0x40b898, is taken when t2(?) != at(=0x390), and falls through when t2(?) == at(=0x390).
  The `beql` branch at 0x40b9ac targets 0x40ba00, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `sw v0,916(t4)` at 0x40b9b0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b9bc targets 0x40ba00, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `sw v0,916(t4)` at 0x40b9c0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b9cc targets 0x40ba00, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `sw v0,916(t4)` at 0x40b9d0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b9dc targets 0x40ba00, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `sw v0,916(t4)` at 0x40b9e0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x40b9ec targets 0x40ba00, is taken when 0 >= v0(?) (unsigned), and falls through when 0 < v0(?) (unsigned); its branch-likely delay slot `sw v0,916(t4)` at 0x40b9f0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x40ba18 targets 0x40b860, is taken when t6(?) != at(=0x5), and falls through when t6(?) == at(=0x5).
  The return at 0x40ba48 has v0 = ?.

- `writeGenericDIFHeaderIntoDIFsequence` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x40ba50 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40ba50-0x40d010 (5568 bytes).
  It occupies 5568 bytes.
  The `lw` at 0x40ba6c loads 4 bytes from abs 0x47c2a8.
  The `lw` at 0x40ba70 loads 4 bytes from abs 0x47c2ac.
  2 such `lw` accesses load 4 bytes from sym(difSeqCnt) +0x0, including `lw` at 0x40baa8, `lw` at 0x40bac8.
  The `sw` at 0x40bab8 stores 4 bytes to sym(difSeqCnt) +0x0.
  The `lbu` at 0x40bae0 loads 1 byte from ?.
  5 such `sb` accesses store 1 byte to ?, including `sb` at 0x40baf4, `sb` at 0x40bb0c, `sb` at 0x40bb10.
  The `sw` at 0x40bb30 stores 4 bytes to sym(difBlkCnt) +0x0.
  The `beq` branch at 0x40ba7c targets 0x40ba9c, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x40bab4 targets 0x40bac4, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x40babc targets 0x40bac8 and is always taken.
  The `bne` branch at 0x40baf0 targets 0x40bae0, is taken when v1(?) < v0(=sp) (unsigned), and falls through when v1(?) >= v0(=sp) (unsigned).
  The `bne` branch at 0x40bb1c targets 0x40bb08, is taken when v0(?) != a2(=0x50), and falls through when v0(?) == a2(=0x50).
  The return at 0x40bb2c has v0 = ?.
  The instructions from 0x40bb34 to 0x40d00c are not reached by any path from the entry, and their branches are not listed.

- `writeHeader` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x40bb34 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40bb34-0x40bce4 (432 bytes).
  It occupies 432 bytes.
  The `lw` at 0x40bb4c loads 4 bytes from sym(videoMode) +0x0.
  5 such `lw` accesses load 4 bytes from sym(difSeqCnt) +0x0, including `lw` at 0x40bba4, `lw` at 0x40bbd4, `lw` at 0x40bc0c.
  The `ld` at 0x40bba8 loads 8 bytes from abs 0x410e20.
  The `sd` at 0x40bbb4 stores 8 bytes to a0 (arg0 at entry) +0x50.
  13 such `sd` accesses store 8 bytes to ?, including `sd` at 0x40bbc4, `sd` at 0x40bbec, `sd` at 0x40bbfc.
  The `ld` at 0x40bbdc loads 8 bytes from abs 0x410e28.
  The `ld` at 0x40bc14 loads 8 bytes from abs 0x410e30.
  The `ld` at 0x40bc4c loads 8 bytes from abs 0x410e38.
  The `ld` at 0x40bc84 loads 8 bytes from abs 0x410e40.
  The `jalr` at 0x40bb84 calls writeGenericDIFHeaderIntoDIFsequence [0x40ba50] with a0=a0 at entry (arg0), a1=one of 0x0, 0x1, a2=one of 0x0, 0x1, a3=a3 at entry (arg3).
  The `bne` branch at 0x40bb58 targets 0x40bb68, is taken when v0(=[sym(videoMode)]) != 0, and falls through when v0(=[sym(videoMode)]) == 0.
  The `beq` branch at 0x40bb60 targets 0x40bb68 and is always taken.
  The `bne` branch at 0x40bb68 targets 0x40bb78, is taken when v0(=[sym(videoMode)]) != at(=0x2), and falls through when v0(=[sym(videoMode)]) == at(=0x2).
  The `beq` branch at 0x40bb70 targets 0x40bb78 and is always taken.
  The `bne` branch at 0x40bbc8 targets 0x40bbb8, is taken when v0(?) < 0x9 (signed), and falls through when v0(?) >= 0x9 (signed).
  The `bne` branch at 0x40bc00 targets 0x40bbf0, is taken when v0(?) < 0x9 (signed), and falls through when v0(?) >= 0x9 (signed).
  The `bne` branch at 0x40bc38 targets 0x40bc28, is taken when v0(?) < 0x9 (signed), and falls through when v0(?) >= 0x9 (signed).
  The `bne` branch at 0x40bc70 targets 0x40bc60, is taken when v0(?) < 0x9 (signed), and falls through when v0(?) >= 0x9 (signed).
  The `bne` branch at 0x40bcc8 targets 0x40bca4, is taken when v0(?) != a0(=0x9), and falls through when v0(?) == a0(=0x9).
  The return at 0x40bcdc has v0 = ?.

- `writeAudio` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x40bce4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40bce4-0x40bcec (8 bytes).
  It occupies 8 bytes.
  The return at 0x40bce4 has v0 = a0+80.

- `writeSegment64` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x40bcec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40bcec-0x40be64 (376 bytes).
  It occupies 376 bytes.
  The `lw` at 0x40bd30 loads 4 bytes from sym(difSeqCnt) +0x0.
  2 such `lw` accesses load 4 bytes from sym(difBlkCnt) +0x0, including `lw` at 0x40bd34, `lw` at 0x40be24.
  12 such `ld` accesses load 8 bytes from ?, including `ld` at 0x40bd38, `ld` at 0x40bd48, `ld` at 0x40bd68.
  10 such `sd` accesses store 8 bytes to ?, including `sd` at 0x40bdfc, `sd` at 0x40be00, `sd` at 0x40be04.
  The `sw` at 0x40be3c stores 4 bytes to sym(difBlkCnt) +0x0.
  The `bne` branch at 0x40be38 targets 0x40bd30, is taken when a2(?) != s5(=0x11f8), and falls through when a2(?) == s5(=0x11f8).
  The return at 0x40be5c has v0 = ?.

- `addHeaderInfo` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x40be64 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40be64-0x40c09c (568 bytes).
  It occupies 568 bytes.
  17 such `sb` accesses store 1 byte to ?, including `sb` at 0x40bfc0, `sb` at 0x40bfd8, `sb` at 0x40c020.
  2 such `swl` accesses store 4 bytes to ?, including `swl` at 0x40bfd0, `swl` at 0x40bfe8.
  2 such `swr` accesses store 4 bytes to ?, including `swr` at 0x40bfd4, `swr` at 0x40bff4.
  The `beq` branch at 0x40beb8 targets 0x40bed4, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x40becc targets 0x40bee8 and is always taken.
  The `bne` branch at 0x40bf98 targets 0x40bff8, is taken when v0(=one of 0xa, 0xc) < 0x2 (signed), and falls through when v0(=one of 0xa, 0xc) >= 0x2 (signed).
  The `bne` branch at 0x40bff0 targets 0x40bfc0, is taken when a3(?) < v0(=one of 0xa, 0xc) (signed), and falls through when a3(?) >= v0(=one of 0xa, 0xc) (signed).
  The `blez` branch at 0x40bff8 targets 0x40c094, is taken when v0(=one of 0xa, 0xc) <= 0 (signed), and falls through when v0(=one of 0xa, 0xc) > 0 (signed).
  The `bne` branch at 0x40c07c targets 0x40c038, is taken when a0(?) != t3(=0x96), and falls through when a0(?) == t3(=0x96).
  The `bne` branch at 0x40c08c targets 0x40c010, is taken when a3(?) != v0(=one of 0xa, 0xc), and falls through when a3(?) == v0(=one of 0xa, 0xc).
  The return at 0x40c094 has v0 = one of 0xa, 0xc.

- `_GETBITS` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x40c0a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40c0a0-0x40c134 (148 bytes).
  It occupies 148 bytes.
  5 such `lb` accesses load 1 byte from ?, including `lb` at 0x40c0b0, `lb` at 0x40c0c8, `lb` at 0x40c0f0.
  The `lh` at 0x40c0bc loads 2 bytes from ?.
  The `bgtz` branch at 0x40c0c4 targets 0x40c0d0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c0d4 targets 0x40c11c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x40c0f4 targets 0x40c114, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x40c124 targets 0x40c0ac, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The return at 0x40c12c has v0 = ?.

- `_APPENDBITS` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x40c140 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40c140-0x40c420 (736 bytes).
  It occupies 736 bytes.
  8 such `lwu` accesses load 4 bytes from ?, including `lwu` at 0x40c148, `lwu` at 0x40c14c, `lwu` at 0x40c1b4.
  The `ld` at 0x40c158 loads 8 bytes from ?.
  2 such `lb` accesses load 1 byte from ?, including `lb` at 0x40c168, `lb` at 0x40c17c.
  The `lh` at 0x40c174 loads 2 bytes from ?.
  9 such `sd` accesses store 8 bytes to ?, including `sd` at 0x40c218, `sd` at 0x40c240, `sd` at 0x40c2ac.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x40c404, `sw` at 0x40c408.
  The `bgtz` branch at 0x40c180 targets 0x40c190, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c194 targets 0x40c374, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x40c1bc targets 0x40c2ec, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `blez` branch at 0x40c1e4 targets 0x40c1fc, is taken when t4(?) <= 0 (signed), and falls through when t4(?) > 0 (signed).
  The `beq` branch at 0x40c1f4 targets 0x40c250 and is always taken.
  The `beq` branch at 0x40c1fc targets 0x40c234, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `beq` branch at 0x40c22c targets 0x40c250 and is always taken.
  The `blez` branch at 0x40c278 targets 0x40c290, is taken when t4(?) <= 0 (signed), and falls through when t4(?) > 0 (signed).
  The `beq` branch at 0x40c288 targets 0x40c370 and is always taken.
  The `beq` branch at 0x40c290 targets 0x40c2c8, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `beq` branch at 0x40c2c0 targets 0x40c370 and is always taken.
  The `beq` branch at 0x40c2e4 targets 0x40c370 and is always taken.
  The `blez` branch at 0x40c304 targets 0x40c31c, is taken when t4(?) <= 0 (signed), and falls through when t4(?) > 0 (signed).
  The `beq` branch at 0x40c314 targets 0x40c370 and is always taken.
  The `beq` branch at 0x40c31c targets 0x40c354, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `beq` branch at 0x40c34c targets 0x40c370 and is always taken.
  The `beq` branch at 0x40c37c targets 0x40c164, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `blez` branch at 0x40c398 targets 0x40c3b0, is taken when t4(?) <= 0 (signed), and falls through when t4(?) > 0 (signed).
  The `beq` branch at 0x40c3a8 targets 0x40c404 and is always taken.
  The `beq` branch at 0x40c3b0 targets 0x40c3e8, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `beq` branch at 0x40c3e0 targets 0x40c404 and is always taken.
  The return at 0x40c418 has v0 = ?.

- `_GETBITSUR8x8` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x40c420 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40c420-0x40d010 (3056 bytes).
  It occupies 3056 bytes.
  The `lh` at 0x40c430 loads 2 bytes from a0 (arg0 at entry) +0x10.
  62 such `lh` accesses load 2 bytes from ?, including `lh` at 0x40c460, `lh` at 0x40c490, `lh` at 0x40c4c0.
  The `jalr` at 0x40c458 calls _bits8x8 [0x40d010] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40c488 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c4b8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c4e8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c518 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c548 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c578 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c5a8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c5d8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c608 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c638 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c668 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c698 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c6c8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c6f8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c728 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c758 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c788 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c7b8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c7e8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c818 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c848 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c878 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c8a8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c8d8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c908 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c938 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c968 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c998 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c9c8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c9f8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ca28 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ca58 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ca88 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cab8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cae8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cb18 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cb48 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cb78 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cba8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cbd8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cc08 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cc38 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cc68 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cc98 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ccc8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ccf8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cd28 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cd58 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cd88 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cdb8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cde8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ce18 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ce48 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ce78 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cea8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ced8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cf08 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cf38 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cf68 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cf98 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cfc8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cff8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `bgtz` branch at 0x40c434 targets 0x40c440, is taken when t1(=[a0+16]:2) > 0 (signed), and falls through when t1(=[a0+16]:2) <= 0 (signed).
  The `beq` branch at 0x40c444 targets 0x40c460, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c464 targets 0x40c470, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c474 targets 0x40c490, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c494 targets 0x40c4a0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c4a4 targets 0x40c4c0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c4c4 targets 0x40c4d0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c4d4 targets 0x40c4f0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c4f4 targets 0x40c500, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c504 targets 0x40c520, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c524 targets 0x40c530, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c534 targets 0x40c550, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c554 targets 0x40c560, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c564 targets 0x40c580, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c584 targets 0x40c590, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c594 targets 0x40c5b0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c5b4 targets 0x40c5c0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c5c4 targets 0x40c5e0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c5e4 targets 0x40c5f0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c5f4 targets 0x40c610, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c614 targets 0x40c620, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c624 targets 0x40c640, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c644 targets 0x40c650, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c654 targets 0x40c670, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c674 targets 0x40c680, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c684 targets 0x40c6a0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c6a4 targets 0x40c6b0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c6b4 targets 0x40c6d0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c6d4 targets 0x40c6e0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c6e4 targets 0x40c700, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c704 targets 0x40c710, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c714 targets 0x40c730, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c734 targets 0x40c740, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c744 targets 0x40c760, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c764 targets 0x40c770, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c774 targets 0x40c790, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c794 targets 0x40c7a0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c7a4 targets 0x40c7c0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c7c4 targets 0x40c7d0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c7d4 targets 0x40c7f0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c7f4 targets 0x40c800, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c804 targets 0x40c820, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c824 targets 0x40c830, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c834 targets 0x40c850, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c854 targets 0x40c860, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c864 targets 0x40c880, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c884 targets 0x40c890, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c894 targets 0x40c8b0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c8b4 targets 0x40c8c0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c8c4 targets 0x40c8e0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c8e4 targets 0x40c8f0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c8f4 targets 0x40c910, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c914 targets 0x40c920, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c924 targets 0x40c940, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c944 targets 0x40c950, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c954 targets 0x40c970, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c974 targets 0x40c980, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c984 targets 0x40c9a0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c9a4 targets 0x40c9b0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c9b4 targets 0x40c9d0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40c9d4 targets 0x40c9e0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40c9e4 targets 0x40ca00, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ca04 targets 0x40ca10, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ca14 targets 0x40ca30, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ca34 targets 0x40ca40, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ca44 targets 0x40ca60, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ca64 targets 0x40ca70, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ca74 targets 0x40ca90, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ca94 targets 0x40caa0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40caa4 targets 0x40cac0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cac4 targets 0x40cad0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cad4 targets 0x40caf0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40caf4 targets 0x40cb00, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cb04 targets 0x40cb20, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cb24 targets 0x40cb30, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cb34 targets 0x40cb50, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cb54 targets 0x40cb60, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cb64 targets 0x40cb80, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cb84 targets 0x40cb90, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cb94 targets 0x40cbb0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cbb4 targets 0x40cbc0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cbc4 targets 0x40cbe0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cbe4 targets 0x40cbf0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cbf4 targets 0x40cc10, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cc14 targets 0x40cc20, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cc24 targets 0x40cc40, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cc44 targets 0x40cc50, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cc54 targets 0x40cc70, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cc74 targets 0x40cc80, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cc84 targets 0x40cca0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cca4 targets 0x40ccb0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ccb4 targets 0x40ccd0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ccd4 targets 0x40cce0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cce4 targets 0x40cd00, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cd04 targets 0x40cd10, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cd14 targets 0x40cd30, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cd34 targets 0x40cd40, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cd44 targets 0x40cd60, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cd64 targets 0x40cd70, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cd74 targets 0x40cd90, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cd94 targets 0x40cda0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cda4 targets 0x40cdc0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cdc4 targets 0x40cdd0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cdd4 targets 0x40cdf0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cdf4 targets 0x40ce00, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ce04 targets 0x40ce20, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ce24 targets 0x40ce30, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ce34 targets 0x40ce50, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ce54 targets 0x40ce60, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ce64 targets 0x40ce80, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ce84 targets 0x40ce90, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ce94 targets 0x40ceb0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ceb4 targets 0x40cec0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cec4 targets 0x40cee0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cee4 targets 0x40cef0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cef4 targets 0x40cf10, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cf14 targets 0x40cf20, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cf24 targets 0x40cf40, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cf44 targets 0x40cf50, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cf54 targets 0x40cf70, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cf74 targets 0x40cf80, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cf84 targets 0x40cfa0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cfa4 targets 0x40cfb0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cfb4 targets 0x40cfd0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40cfd4 targets 0x40cfe0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40cfe4 targets 0x40d000, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The return at 0x40d004 has v0 = one of ?, ret(?).
  The instructions from 0x40d00c to 0x40d00c are not reached by any path from the entry, and their branches are not listed.

- `_bits8x8` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x40d010 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40d010-0x40e9ac (6556 bytes).
  It occupies 6556 bytes.
  2 such `lb` accesses load 1 byte from ?, including `lb` at 0x40d020, `lb` at 0x40d034.
  The `lb` at 0x40d03c loads 1 byte from (a1 + t1) +0x0.
  The `bne` branch at 0x40d024 targets 0x40d044, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The return at 0x40d048 has v0 = ?.
  The instructions from 0x40d050 to 0x40e9a8 are not reached by any path from the entry, and their branches are not listed.

- `_APPENDBITSUR8x8` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x40d050 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40d050-0x40ddbc (3436 bytes).
  It occupies 3436 bytes.
  The `lwu` at 0x40d058 loads 4 bytes from a3 (arg3 at entry) +0x4.
  The `lwu` at 0x40d05c loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x40d068 loads 8 bytes from (([a3+4] << 0x3) + a3+8) +0x0.
  The `lh` at 0x40d074 loads 2 bytes from a0 (arg0 at entry) +0x10.
  The `lb` at 0x40d078 loads 1 byte from a2 (arg2 at entry) +0x8.
  62 such `lh` accesses load 2 bytes from ?, including `lh` at 0x40d0a0, `lh` at 0x40d0cc, `lh` at 0x40d0f8.
  62 such `lb` accesses load 1 byte from ?, including `lb` at 0x40d0a4, `lb` at 0x40d0d0, `lb` at 0x40d0fc.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x40db90, `sd` at 0x40dbb8, `sd` at 0x40dbd8.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x40dbc8, `sw` at 0x40dbcc.
  The `bal` at 0x40d098 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bal` at 0x40d0c4 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d0f0 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d11c calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d148 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d174 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d1a0 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d1cc calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d1f8 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d224 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d250 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d27c calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d2a8 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d2d4 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d300 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d32c calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d358 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d384 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d3b0 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d3dc calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d408 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d434 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d460 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d48c calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d4b8 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d4e4 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d510 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d53c calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d568 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d594 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d5c0 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d5ec calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d618 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d644 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d670 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d69c calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d6c8 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d6f4 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d720 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d74c calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d778 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d7a4 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d7d0 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d7fc calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d828 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d854 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d880 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d8ac calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d8d8 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d904 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d930 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d95c calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d988 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d9b4 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d9e0 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40da0c calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40da38 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40da64 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40da90 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40dabc calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40dae8 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40db14 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40db40 calls _APPENDBITSUR8x8+2968 [0x40dbe8] with a0=?, a1=?, a2=?, a3=?.
  The `bgtz` branch at 0x40d07c targets 0x40d08c, is taken when t1(=[a0+16]:2) > 0 (signed), and falls through when t1(=[a0+16]:2) <= 0 (signed).
  The `beq` branch at 0x40d090 targets 0x40d0a0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d0a8 targets 0x40d0b8, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d0bc targets 0x40d0cc, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d0d4 targets 0x40d0e4, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d0e8 targets 0x40d0f8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d100 targets 0x40d110, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d114 targets 0x40d124, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d12c targets 0x40d13c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d140 targets 0x40d150, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d158 targets 0x40d168, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d16c targets 0x40d17c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d184 targets 0x40d194, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d198 targets 0x40d1a8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d1b0 targets 0x40d1c0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d1c4 targets 0x40d1d4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d1dc targets 0x40d1ec, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d1f0 targets 0x40d200, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d208 targets 0x40d218, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d21c targets 0x40d22c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d234 targets 0x40d244, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d248 targets 0x40d258, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d260 targets 0x40d270, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d274 targets 0x40d284, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d28c targets 0x40d29c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d2a0 targets 0x40d2b0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d2b8 targets 0x40d2c8, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d2cc targets 0x40d2dc, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d2e4 targets 0x40d2f4, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d2f8 targets 0x40d308, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d310 targets 0x40d320, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d324 targets 0x40d334, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d33c targets 0x40d34c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d350 targets 0x40d360, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d368 targets 0x40d378, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d37c targets 0x40d38c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d394 targets 0x40d3a4, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d3a8 targets 0x40d3b8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d3c0 targets 0x40d3d0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d3d4 targets 0x40d3e4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d3ec targets 0x40d3fc, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d400 targets 0x40d410, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d418 targets 0x40d428, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d42c targets 0x40d43c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d444 targets 0x40d454, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d458 targets 0x40d468, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d470 targets 0x40d480, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d484 targets 0x40d494, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d49c targets 0x40d4ac, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d4b0 targets 0x40d4c0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d4c8 targets 0x40d4d8, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d4dc targets 0x40d4ec, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d4f4 targets 0x40d504, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d508 targets 0x40d518, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d520 targets 0x40d530, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d534 targets 0x40d544, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d54c targets 0x40d55c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d560 targets 0x40d570, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d578 targets 0x40d588, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d58c targets 0x40d59c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d5a4 targets 0x40d5b4, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d5b8 targets 0x40d5c8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d5d0 targets 0x40d5e0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d5e4 targets 0x40d5f4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d5fc targets 0x40d60c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d610 targets 0x40d620, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d628 targets 0x40d638, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d63c targets 0x40d64c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d654 targets 0x40d664, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d668 targets 0x40d678, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d680 targets 0x40d690, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d694 targets 0x40d6a4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d6ac targets 0x40d6bc, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d6c0 targets 0x40d6d0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d6d8 targets 0x40d6e8, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d6ec targets 0x40d6fc, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d704 targets 0x40d714, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d718 targets 0x40d728, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d730 targets 0x40d740, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d744 targets 0x40d754, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d75c targets 0x40d76c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d770 targets 0x40d780, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d788 targets 0x40d798, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d79c targets 0x40d7ac, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d7b4 targets 0x40d7c4, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d7c8 targets 0x40d7d8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d7e0 targets 0x40d7f0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d7f4 targets 0x40d804, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d80c targets 0x40d81c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d820 targets 0x40d830, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d838 targets 0x40d848, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d84c targets 0x40d85c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d864 targets 0x40d874, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d878 targets 0x40d888, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d890 targets 0x40d8a0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d8a4 targets 0x40d8b4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d8bc targets 0x40d8cc, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d8d0 targets 0x40d8e0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d8e8 targets 0x40d8f8, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d8fc targets 0x40d90c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d914 targets 0x40d924, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d928 targets 0x40d938, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d940 targets 0x40d950, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d954 targets 0x40d964, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d96c targets 0x40d97c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d980 targets 0x40d990, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d998 targets 0x40d9a8, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d9ac targets 0x40d9bc, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d9c4 targets 0x40d9d4, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40d9d8 targets 0x40d9e8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40d9f0 targets 0x40da00, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40da04 targets 0x40da14, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40da1c targets 0x40da2c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40da30 targets 0x40da40, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40da48 targets 0x40da58, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40da5c targets 0x40da6c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40da74 targets 0x40da84, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40da88 targets 0x40da98, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40daa0 targets 0x40dab0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40dab4 targets 0x40dac4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40dacc targets 0x40dadc, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40dae0 targets 0x40daf0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40daf8 targets 0x40db08, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40db0c targets 0x40db1c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40db24 targets 0x40db34, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40db38 targets 0x40db48, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `blez` branch at 0x40db5c targets 0x40db74, is taken when t4(?) <= 0 (signed), and falls through when t4(?) > 0 (signed).
  The `beq` branch at 0x40db6c targets 0x40dbc8 and is always taken.
  The `beq` branch at 0x40db74 targets 0x40dbac, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `beq` branch at 0x40dba4 targets 0x40dbc8 and is always taken.
  The return at 0x40dbe0 has v0 = ?.
  The instructions from 0x40dbe8 to 0x40ddb8 are not reached by any path from the entry, and their branches are not listed.

- `_GETBITSUR4x8` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x40ddc0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40ddc0-0x40e9ac (3052 bytes).
  It occupies 3052 bytes.
  The `lh` at 0x40ddd0 loads 2 bytes from a0 (arg0 at entry) +0x8.
  62 such `lh` accesses load 2 bytes from ?, including `lh` at 0x40de00, `lh` at 0x40de30, `lh` at 0x40de60.
  The `jalr` at 0x40ddf8 calls _bits4x8 [0x40e9ac] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40de28 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40de58 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40de88 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40deb8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40dee8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40df18 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40df48 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40df78 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40dfa8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40dfd8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e008 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e038 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e068 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e098 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e0c8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e0f8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e128 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e158 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e188 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e1b8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e1e8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e218 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e248 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e278 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e2a8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e2d8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e308 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e338 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e368 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e398 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e3c8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e3f8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e428 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e458 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e488 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e4b8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e4e8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e518 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e548 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e578 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e5a8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e5d8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e608 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e638 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e668 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e698 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e6c8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e6f8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e728 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e758 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e788 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e7b8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e7e8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e818 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e848 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e878 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e8a8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e8d8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e908 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e938 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e968 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e998 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `bgtz` branch at 0x40ddd4 targets 0x40dde0, is taken when t1(=[a0+8]:2) > 0 (signed), and falls through when t1(=[a0+8]:2) <= 0 (signed).
  The `beq` branch at 0x40dde4 targets 0x40de00, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40de04 targets 0x40de10, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40de14 targets 0x40de30, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40de34 targets 0x40de40, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40de44 targets 0x40de60, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40de64 targets 0x40de70, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40de74 targets 0x40de90, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40de94 targets 0x40dea0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40dea4 targets 0x40dec0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40dec4 targets 0x40ded0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ded4 targets 0x40def0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40def4 targets 0x40df00, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40df04 targets 0x40df20, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40df24 targets 0x40df30, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40df34 targets 0x40df50, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40df54 targets 0x40df60, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40df64 targets 0x40df80, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40df84 targets 0x40df90, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40df94 targets 0x40dfb0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40dfb4 targets 0x40dfc0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40dfc4 targets 0x40dfe0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40dfe4 targets 0x40dff0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40dff4 targets 0x40e010, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e014 targets 0x40e020, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e024 targets 0x40e040, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e044 targets 0x40e050, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e054 targets 0x40e070, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e074 targets 0x40e080, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e084 targets 0x40e0a0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e0a4 targets 0x40e0b0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e0b4 targets 0x40e0d0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e0d4 targets 0x40e0e0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e0e4 targets 0x40e100, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e104 targets 0x40e110, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e114 targets 0x40e130, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e134 targets 0x40e140, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e144 targets 0x40e160, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e164 targets 0x40e170, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e174 targets 0x40e190, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e194 targets 0x40e1a0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e1a4 targets 0x40e1c0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e1c4 targets 0x40e1d0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e1d4 targets 0x40e1f0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e1f4 targets 0x40e200, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e204 targets 0x40e220, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e224 targets 0x40e230, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e234 targets 0x40e250, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e254 targets 0x40e260, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e264 targets 0x40e280, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e284 targets 0x40e290, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e294 targets 0x40e2b0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e2b4 targets 0x40e2c0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e2c4 targets 0x40e2e0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e2e4 targets 0x40e2f0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e2f4 targets 0x40e310, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e314 targets 0x40e320, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e324 targets 0x40e340, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e344 targets 0x40e350, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e354 targets 0x40e370, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e374 targets 0x40e380, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e384 targets 0x40e3a0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e3a4 targets 0x40e3b0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e3b4 targets 0x40e3d0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e3d4 targets 0x40e3e0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e3e4 targets 0x40e400, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e404 targets 0x40e410, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e414 targets 0x40e430, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e434 targets 0x40e440, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e444 targets 0x40e460, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e464 targets 0x40e470, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e474 targets 0x40e490, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e494 targets 0x40e4a0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e4a4 targets 0x40e4c0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e4c4 targets 0x40e4d0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e4d4 targets 0x40e4f0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e4f4 targets 0x40e500, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e504 targets 0x40e520, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e524 targets 0x40e530, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e534 targets 0x40e550, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e554 targets 0x40e560, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e564 targets 0x40e580, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e584 targets 0x40e590, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e594 targets 0x40e5b0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e5b4 targets 0x40e5c0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e5c4 targets 0x40e5e0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e5e4 targets 0x40e5f0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e5f4 targets 0x40e610, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e614 targets 0x40e620, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e624 targets 0x40e640, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e644 targets 0x40e650, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e654 targets 0x40e670, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e674 targets 0x40e680, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e684 targets 0x40e6a0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e6a4 targets 0x40e6b0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e6b4 targets 0x40e6d0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e6d4 targets 0x40e6e0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e6e4 targets 0x40e700, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e704 targets 0x40e710, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e714 targets 0x40e730, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e734 targets 0x40e740, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e744 targets 0x40e760, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e764 targets 0x40e770, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e774 targets 0x40e790, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e794 targets 0x40e7a0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e7a4 targets 0x40e7c0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e7c4 targets 0x40e7d0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e7d4 targets 0x40e7f0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e7f4 targets 0x40e800, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e804 targets 0x40e820, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e824 targets 0x40e830, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e834 targets 0x40e850, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e854 targets 0x40e860, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e864 targets 0x40e880, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e884 targets 0x40e890, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e894 targets 0x40e8b0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e8b4 targets 0x40e8c0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e8c4 targets 0x40e8e0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e8e4 targets 0x40e8f0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e8f4 targets 0x40e910, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e914 targets 0x40e920, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e924 targets 0x40e940, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e944 targets 0x40e950, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e954 targets 0x40e970, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40e974 targets 0x40e980, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40e984 targets 0x40e9a0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The return at 0x40e9a4 has v0 = one of ?, ret(?).

- `_bits4x8` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x40e9ac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40e9ac-0x40f760 (3508 bytes).
  It occupies 3508 bytes.
  2 such `lb` accesses load 1 byte from ?, including `lb` at 0x40e9bc, `lb` at 0x40e9d0.
  The `lb` at 0x40e9d8 loads 1 byte from (a1 + t1) +0x0.
  The `bne` branch at 0x40e9c0 targets 0x40e9e0, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The return at 0x40e9e4 has v0 = ?.
  The instructions from 0x40e9ec to 0x40f75c are not reached by any path from the entry, and their branches are not listed.

- `_APPENDBITSUR4x8` in `usr/lib/dmedia/imageconverters/debug/vicedv.so` at 0x40e9f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40e9f0-0x40f75c (3436 bytes).
  It occupies 3436 bytes.
  The `lwu` at 0x40e9f8 loads 4 bytes from a3 (arg3 at entry) +0x4.
  The `lwu` at 0x40e9fc loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x40ea08 loads 8 bytes from (([a3+4] << 0x3) + a3+8) +0x0.
  The `lh` at 0x40ea14 loads 2 bytes from a0 (arg0 at entry) +0x8.
  The `lb` at 0x40ea18 loads 1 byte from a2 (arg2 at entry) +0x4.
  62 such `lh` accesses load 2 bytes from ?, including `lh` at 0x40ea40, `lh` at 0x40ea6c, `lh` at 0x40ea98.
  62 such `lb` accesses load 1 byte from ?, including `lb` at 0x40ea44, `lb` at 0x40ea70, `lb` at 0x40ea9c.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x40f530, `sd` at 0x40f558, `sd` at 0x40f578.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x40f568, `sw` at 0x40f56c.
  The `bal` at 0x40ea38 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bal` at 0x40ea64 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ea90 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40eabc calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40eae8 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40eb14 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40eb40 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40eb6c calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40eb98 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ebc4 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ebf0 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ec1c calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ec48 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ec74 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40eca0 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40eccc calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ecf8 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ed24 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ed50 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ed7c calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40eda8 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40edd4 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ee00 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ee2c calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ee58 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ee84 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40eeb0 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40eedc calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ef08 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ef34 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ef60 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ef8c calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40efb8 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40efe4 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40f010 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40f03c calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40f068 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40f094 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40f0c0 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40f0ec calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40f118 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40f144 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40f170 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40f19c calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40f1c8 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40f1f4 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40f220 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40f24c calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40f278 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40f2a4 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40f2d0 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40f2fc calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40f328 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40f354 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40f380 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40f3ac calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40f3d8 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40f404 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40f430 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40f45c calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40f488 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40f4b4 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40f4e0 calls _APPENDBITSUR4x8+2968 [0x40f588] with a0=?, a1=?, a2=?, a3=?.
  The `bgtz` branch at 0x40ea1c targets 0x40ea2c, is taken when t1(=[a0+8]:2) > 0 (signed), and falls through when t1(=[a0+8]:2) <= 0 (signed).
  The `beq` branch at 0x40ea30 targets 0x40ea40, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ea48 targets 0x40ea58, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ea5c targets 0x40ea6c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ea74 targets 0x40ea84, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ea88 targets 0x40ea98, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40eaa0 targets 0x40eab0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40eab4 targets 0x40eac4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40eacc targets 0x40eadc, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40eae0 targets 0x40eaf0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40eaf8 targets 0x40eb08, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40eb0c targets 0x40eb1c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40eb24 targets 0x40eb34, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40eb38 targets 0x40eb48, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40eb50 targets 0x40eb60, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40eb64 targets 0x40eb74, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40eb7c targets 0x40eb8c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40eb90 targets 0x40eba0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40eba8 targets 0x40ebb8, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ebbc targets 0x40ebcc, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ebd4 targets 0x40ebe4, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ebe8 targets 0x40ebf8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ec00 targets 0x40ec10, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ec14 targets 0x40ec24, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ec2c targets 0x40ec3c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ec40 targets 0x40ec50, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ec58 targets 0x40ec68, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ec6c targets 0x40ec7c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ec84 targets 0x40ec94, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ec98 targets 0x40eca8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ecb0 targets 0x40ecc0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ecc4 targets 0x40ecd4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ecdc targets 0x40ecec, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ecf0 targets 0x40ed00, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ed08 targets 0x40ed18, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ed1c targets 0x40ed2c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ed34 targets 0x40ed44, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ed48 targets 0x40ed58, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ed60 targets 0x40ed70, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ed74 targets 0x40ed84, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ed8c targets 0x40ed9c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40eda0 targets 0x40edb0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40edb8 targets 0x40edc8, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40edcc targets 0x40eddc, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ede4 targets 0x40edf4, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40edf8 targets 0x40ee08, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ee10 targets 0x40ee20, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ee24 targets 0x40ee34, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ee3c targets 0x40ee4c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ee50 targets 0x40ee60, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ee68 targets 0x40ee78, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ee7c targets 0x40ee8c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ee94 targets 0x40eea4, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40eea8 targets 0x40eeb8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40eec0 targets 0x40eed0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40eed4 targets 0x40eee4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40eeec targets 0x40eefc, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ef00 targets 0x40ef10, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ef18 targets 0x40ef28, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ef2c targets 0x40ef3c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ef44 targets 0x40ef54, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ef58 targets 0x40ef68, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ef70 targets 0x40ef80, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40ef84 targets 0x40ef94, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40ef9c targets 0x40efac, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40efb0 targets 0x40efc0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40efc8 targets 0x40efd8, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40efdc targets 0x40efec, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40eff4 targets 0x40f004, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40f008 targets 0x40f018, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40f020 targets 0x40f030, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40f034 targets 0x40f044, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40f04c targets 0x40f05c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40f060 targets 0x40f070, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40f078 targets 0x40f088, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40f08c targets 0x40f09c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40f0a4 targets 0x40f0b4, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40f0b8 targets 0x40f0c8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40f0d0 targets 0x40f0e0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40f0e4 targets 0x40f0f4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40f0fc targets 0x40f10c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40f110 targets 0x40f120, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40f128 targets 0x40f138, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40f13c targets 0x40f14c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40f154 targets 0x40f164, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40f168 targets 0x40f178, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40f180 targets 0x40f190, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40f194 targets 0x40f1a4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40f1ac targets 0x40f1bc, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40f1c0 targets 0x40f1d0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40f1d8 targets 0x40f1e8, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40f1ec targets 0x40f1fc, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40f204 targets 0x40f214, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40f218 targets 0x40f228, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40f230 targets 0x40f240, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40f244 targets 0x40f254, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40f25c targets 0x40f26c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40f270 targets 0x40f280, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40f288 targets 0x40f298, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40f29c targets 0x40f2ac, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40f2b4 targets 0x40f2c4, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40f2c8 targets 0x40f2d8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40f2e0 targets 0x40f2f0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40f2f4 targets 0x40f304, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40f30c targets 0x40f31c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40f320 targets 0x40f330, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40f338 targets 0x40f348, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40f34c targets 0x40f35c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40f364 targets 0x40f374, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40f378 targets 0x40f388, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40f390 targets 0x40f3a0, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40f3a4 targets 0x40f3b4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40f3bc targets 0x40f3cc, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40f3d0 targets 0x40f3e0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40f3e8 targets 0x40f3f8, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40f3fc targets 0x40f40c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40f414 targets 0x40f424, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40f428 targets 0x40f438, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40f440 targets 0x40f450, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40f454 targets 0x40f464, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40f46c targets 0x40f47c, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40f480 targets 0x40f490, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40f498 targets 0x40f4a8, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40f4ac targets 0x40f4bc, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgtz` branch at 0x40f4c4 targets 0x40f4d4, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x40f4d8 targets 0x40f4e8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `blez` branch at 0x40f4fc targets 0x40f514, is taken when t4(?) <= 0 (signed), and falls through when t4(?) > 0 (signed).
  The `beq` branch at 0x40f50c targets 0x40f568 and is always taken.
  The `beq` branch at 0x40f514 targets 0x40f54c, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `beq` branch at 0x40f544 targets 0x40f568 and is always taken.
  The return at 0x40f580 has v0 = ?.
  The instructions from 0x40f588 to 0x40f758 are not reached by any path from the entry, and their branches are not listed.
