# Readings: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`

One entry per routine, filed here from the reading batches by binary.

- `_poolneeds` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x403190 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x403190-0x4031d4 (68 bytes).
  It occupies 68 bytes.
  The `jalr` at 0x4031b8 calls vice_dmbuf_requirements with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x4031cc has v0 = ret(vice_dmbuf_requirements).

- `make_qparse_pool` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x4031e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x4031e0-0x4032c4 (228 bytes).
  It occupies 228 bytes.
  The `jalr` at 0x4031f4 calls dmParamsCreate with a0=sp-48, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403218 calls dmBufferSetPoolDefaults with a0=?, a1=0x5, a2=(a0 << 0x10), a3=0x0, a4=0x1.
  The `bgezall` at 0x403230 calls _poolneeds [0x403190] with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x403244 calls dmBufferCreatePool with a0=?, a1=0x47fee4, a2=?, a3=?.
  The `jalr` at 0x403270 calls dmParamsDestroy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x403288 calls dmBufferSetPoolSelectSize with a0=[0x47fee4], a1=(a0 << 0x10), a2=?, a3=?.
  The `jalr` at 0x403298 calls dmBufferGetPoolFD with a0=[0x47fee4], a1=?, a2=?, a3=?.
  The `beq` branch at 0x403250 targets 0x403268, is taken when v0(=ret(dmBufferCreatePool)) == 0, and falls through when v0(=ret(dmBufferCreatePool)) != 0.
  The `beq` branch at 0x403260 targets 0x4032b0 and is always taken.
  The return at 0x4032bc has v0 = one of -0x1, 0x0.

- `make_dvcoeff_pool` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x4032d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x4032d0-0x403384 (180 bytes).
  It occupies 180 bytes.
  The `jalr` at 0x4032e8 calls dmParamsCreate with a0=sp-48, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40330c calls dmBufferSetPoolDefaults with a0=?, a1=0x2, a2=(a0 << 0x10), a3=0x1, a4=0x1.
  The `bgezall` at 0x403324 calls _poolneeds [0x403190] with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x403338 calls dmBufferCreatePool with a0=?, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x403360 calls dmParamsDestroy with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x403340 targets 0x403358, is taken when v0(=ret(dmBufferCreatePool)) == 0, and falls through when v0(=ret(dmBufferCreatePool)) != 0.
  The `beq` branch at 0x403350 targets 0x403370 and is always taken.
  The return at 0x40337c has v0 = one of -0x1, 0x0.

- `init_formats` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x403390 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x403390-0x40345c (204 bytes).
  It occupies 204 bytes.
  The `sw` at 0x40342c stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `sw` at 0x403434 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x40343c stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `jalr` at 0x4033a4 calls dmParamsCreate with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4033d4 calls dmParamsCreate with a0=a0+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x403404 calls dmParamsCreate with a0=a0+8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4033b0 targets 0x4033c8, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x4033c0 targets 0x403448 and is always taken.
  The `beq` branch at 0x4033e0 targets 0x4033f8, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x4033f0 targets 0x403448 and is always taken.
  The `beq` branch at 0x403410 targets 0x403428, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x403420 targets 0x403448 and is always taken.
  The return at 0x403454 has v0 = one of -0x1, 0x0.

- `free_formats` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x403460 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x403460-0x4034dc (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0x403470 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x403484 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x403498 loads 4 bytes from a0 (arg0 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x4034ac, `lw` at 0x4034bc.
  The `jalr` at 0x403478 calls dmParamsDestroy with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40348c calls dmParamsDestroy with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0x4034a0 calls dmParamsDestroy with a0=[a0+8], a1=?, a2=?, a3=?.
  The `jalr` at 0x4034c4 calls dmBufferDestroyPool with a0=[a0+12], a1=[a0+12], a2=?, a3=?.
  The `beq` branch at 0x4034b0 targets 0x4034cc, is taken when a1(=[a0+12]) == 0, and falls through when a1(=[a0+12]) != 0.
  The return at 0x4034d4 has v0 = one of ret(dmParamsDestroy), ret(dmBufferDestroyPool).

- `required_params` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x4034e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x4034e0-0x4035ec (268 bytes).
  It occupies 268 bytes.
  The `jalr` at 0x403500 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x414000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403520 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x414018, a2=?, a3=?.
  The `jalr` at 0x403548 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x414028, a2=?, a3=?.
  The `jalr` at 0x403570 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x414038, a2=?, a3=?.
  The `jalr` at 0x403598 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x414050, a2=?, a3=?.
  The `jalr` at 0x4035b8 calls dmSetError with a0=0x1773, a1=0x47ff08, a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x403508 targets 0x4035a8, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `bne` branch at 0x403528 targets 0x403538, is taken when v0(=ret(dmParamsIsPresent)) != 0, and falls through when v0(=ret(dmParamsIsPresent)) == 0.
  The `beq` branch at 0x403530 targets 0x4035a8 and is always taken.
  The `bne` branch at 0x403550 targets 0x403560, is taken when v0(=ret(dmParamsIsPresent)) != 0, and falls through when v0(=ret(dmParamsIsPresent)) == 0.
  The `beq` branch at 0x403558 targets 0x4035a8 and is always taken.
  The `bne` branch at 0x403578 targets 0x403588, is taken when v0(=ret(dmParamsIsPresent)) != 0, and falls through when v0(=ret(dmParamsIsPresent)) == 0.
  The `beq` branch at 0x403580 targets 0x4035a8 and is always taken.
  The `bne` branch at 0x4035a0 targets 0x4035d0, is taken when v0(=ret(dmParamsIsPresent)) != 0, and falls through when v0(=ret(dmParamsIsPresent)) == 0.
  The `beq` branch at 0x4035c8 targets 0x4035d8 and is always taken.
  The return at 0x4035e4 has v0 = one of -0x1, 0x0.

- `needsConvert` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x4035f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x4035f0-0x403904 (788 bytes).
  It occupies 788 bytes.
  The `bgezall` at 0x403610 calls required_params [0x4034e0] with a0=a0 at entry (arg0), a1=0x47ff10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40363c calls __assert with a0=0x414068, a1=0x414090, a2=0x116, a3=?.
  The `bgezall` at 0x403654 calls required_params [0x4034e0] with a0=a1 at entry (arg1), a1=0x47ff10, a2=?, a3=?.
  The `jalr` at 0x403680 calls __assert with a0=0x4140a0, a1=0x414090, a2=0x117, a3=?.
  The `jalr` at 0x403698 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x414018, a2=?, a3=?.
  The `jalr` at 0x4036b4 calls dmParamsGetInt with a0=a1 at entry (arg1), a1=0x414018, a2=?, a3=?.
  The `jalr` at 0x4036dc calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x414028, a2=ret(dmParamsGetInt), a3=?.
  The `jalr` at 0x4036f8 calls dmParamsGetInt with a0=a1 at entry (arg1), a1=0x414028, a2=?, a3=?.
  The `jalr` at 0x403724 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x414050, a2=ret(dmParamsGetInt), a3=?.
  The `jalr` at 0x403740 calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x414050, a2=?, a3=?.
  The `jalr` at 0x403774 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x4140c8, a2=ret(dmParamsGetEnum), a3=?.
  The `jalr` at 0x403798 calls dmParamsIsPresent with a0=a1 at entry (arg1), a1=0x4140c8, a2=?, a3=?.
  The `jalr` at 0x4037bc calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x4140c8, a2=?, a3=?.
  The `jalr` at 0x4037d8 calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x4140c8, a2=?, a3=?.
  The `jalr` at 0x403810 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x414038, a2=?, a3=?.
  The `jalr` at 0x403830 calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x414038, a2=?, a3=?.
  The `beq` branch at 0x40361c targets 0x403644, is taken when v0(=ret(required_params)) == 0, and falls through when v0(=ret(required_params)) != 0.
  The `beq` branch at 0x403660 targets 0x403688, is taken when v0(=ret(required_params)) == 0, and falls through when v0(=ret(required_params)) != 0.
  The `bne` branch at 0x4036c4 targets 0x403754, is taken when a2(=ret(dmParamsGetInt)) != v0(=ret(dmParamsGetInt)), and falls through when a2(=ret(dmParamsGetInt)) == v0(=ret(dmParamsGetInt)).
  The `beq` branch at 0x403704 targets 0x403714, is taken when a2(=ret(dmParamsGetInt)) == v0(=ret(dmParamsGetInt)), and falls through when a2(=ret(dmParamsGetInt)) != v0(=ret(dmParamsGetInt)).
  The `beq` branch at 0x40370c targets 0x403754 and is always taken.
  The `beq` branch at 0x40374c targets 0x403764, is taken when a2(=ret(dmParamsGetEnum)) == v0(=ret(dmParamsGetEnum)), and falls through when a2(=ret(dmParamsGetEnum)) != v0(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x40375c targets 0x4038f0 and is always taken.
  The `beq` branch at 0x403780 targets 0x403800, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x4037a4 targets 0x403800, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x4037e8 targets 0x403800, is taken when a2(=ret(dmParamsGetEnum)) == v0(=ret(dmParamsGetEnum)), and falls through when a2(=ret(dmParamsGetEnum)) != v0(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x4037f8 targets 0x4038f0 and is always taken.
  The `bne` branch at 0x403848 targets 0x40385c, is taken when a2(=ret(dmParamsGetEnum)) != a3(=ret(dmParamsGetEnum)), and falls through when a2(=ret(dmParamsGetEnum)) == a3(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x403854 targets 0x4038f0 and is always taken.
  The `bne` branch at 0x403864 targets 0x403898, is taken when a4(=ret(dmParamsGetEnum)) != a5(=0x3f0), and falls through when a4(=ret(dmParamsGetEnum)) == a5(=0x3f0).
  The `beq` branch at 0x403874 targets 0x40388c, is taken when a6(=ret(dmParamsGetEnum)) == a7(=0xbbb), and falls through when a6(=ret(dmParamsGetEnum)) != a7(=0xbbb).
  The `bne` branch at 0x403884 targets 0x403898, is taken when t0(=ret(dmParamsGetEnum)) != t1(=0xbbc), and falls through when t0(=ret(dmParamsGetEnum)) == t1(=0xbbc).
  The `beq` branch at 0x403890 targets 0x4038f0 and is always taken.
  The `bne` branch at 0x4038a0 targets 0x4038b8, is taken when t2(=ret(dmParamsGetEnum)) != t3(=0x3e9), and falls through when t2(=ret(dmParamsGetEnum)) == t3(=0x3e9).
  The `beq` branch at 0x4038b0 targets 0x4038d8, is taken when t8(=ret(dmParamsGetEnum)) == t9(=0x3ea), and falls through when t8(=ret(dmParamsGetEnum)) != t9(=0x3ea).
  The `bne` branch at 0x4038c0 targets 0x4038e4, is taken when ra(=ret(dmParamsGetEnum)) != at(=0x3ea), and falls through when ra(=ret(dmParamsGetEnum)) == at(=0x3ea).
  The `bne` branch at 0x4038d0 targets 0x4038e4, is taken when v0(=ret(dmParamsGetEnum)) != v1(=0x3e9), and falls through when v0(=ret(dmParamsGetEnum)) == v1(=0x3e9).
  The `beq` branch at 0x4038dc targets 0x4038f0 and is always taken.
  The return at 0x4038fc has v0 = one of 0x0, 0x1.

- `verify_uncompressed` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x403910 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x403910-0x4039dc (204 bytes).
  It occupies 204 bytes.
  The `bgezall` at 0x403930 calls required_params [0x4034e0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403968 calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x414000, a2=?, a3=?.
  The `jalr` at 0x403984 calls strcmp with a0=ret(dmParamsGetString), a1=0x4140e0, a2=?, a3=?.
  The `jalr` at 0x4039a8 calls dmSetError with a0=0x1772, a1=0x47ff08, a2=0x414000, a3=?.
  The `bne` branch at 0x403940 targets 0x403958, is taken when v0(=ret(required_params)) != ra(=-0x1), and falls through when v0(=ret(required_params)) == ra(=-0x1).
  The `beq` branch at 0x403950 targets 0x4039c8 and is always taken.
  The `beq` branch at 0x40398c targets 0x4039c0, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x4039b8 targets 0x4039c8 and is always taken.
  The return at 0x4039d4 has v0 = one of -0x1, 0x0.

- `verify_compressed` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x4039e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x4039e0-0x403cac (716 bytes).
  It occupies 716 bytes.
  The `bgezall` at 0x403a00 calls required_params [0x4034e0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403a38 calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x414000, a2=?, a3=?.
  The `jalr` at 0x403a50 calls strcmp with a0=ret(dmParamsGetString), a1=0x47ff18, a2=?, a3=?.
  The `jalr` at 0x403a74 calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x414000, a2=?, a3=?.
  The `jalr` at 0x403a8c calls strcmp with a0=ret(dmParamsGetString), a1=0x47ff20, a2=?, a3=?.
  The `jalr` at 0x403ab0 calls dmSetError with a0=0x1772, a1=0x47ff08, a2=0x414000, a3=?.
  The `jalr` at 0x403ad8 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x414050, a2=?, a3=?.
  The `jalr` at 0x403b04 calls dmSetError with a0=0x1772, a1=0x47ff08, a2=0x414050, a3=?.
  The `jalr` at 0x403b2c calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x414038, a2=0x44c, a3=?.
  The `jalr` at 0x403b54 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x414038, a2=0x3f0, a3=?.
  The `jalr` at 0x403b7c calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x414038, a2=0xbbc, a3=?.
  The `jalr` at 0x403ba8 calls dmSetError with a0=0x1772, a1=0x47ff08, a2=0x414038, a3=?.
  The `jalr` at 0x403bd0 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x414018, a2=one of 0x3f0, 0xbbb, 0xbbc, a3=?.
  The `jalr` at 0x403c04 calls dmSetError with a0=0x1772, a1=0x47ff08, a2=0x4140f8, a3=0x2d0.
  The `jalr` at 0x403c2c calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x414028, a2=ret(dmParamsGetInt), a3=0x2d0.
  The `jalr` at 0x403c84 calls dmSetError with a0=0x1772, a1=0x47ff08, a2=0x414108, a3=0x1e0, a4=0x240, a5=0x240.
  The `bne` branch at 0x403a10 targets 0x403a28, is taken when v0(=ret(required_params)) != ra(=-0x1), and falls through when v0(=ret(required_params)) == ra(=-0x1).
  The `beq` branch at 0x403a20 targets 0x403c98 and is always taken.
  The `beq` branch at 0x403a5c targets 0x403ac8, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x403a94 targets 0x403ac8, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x403ac0 targets 0x403c98 and is always taken.
  The `beq` branch at 0x403ae8 targets 0x403b1c, is taken when v0(=ret(dmParamsGetEnum)) == a2(=0x44c), and falls through when v0(=ret(dmParamsGetEnum)) != a2(=0x44c).
  The `beq` branch at 0x403b14 targets 0x403c98 and is always taken.
  The `beq` branch at 0x403b3c targets 0x403bc0, is taken when v0(=ret(dmParamsGetEnum)) == a2(=0x3f0), and falls through when v0(=ret(dmParamsGetEnum)) != a2(=0x3f0).
  The `beq` branch at 0x403b64 targets 0x403bc0, is taken when v0(=ret(dmParamsGetEnum)) == a2(=0xbbc), and falls through when v0(=ret(dmParamsGetEnum)) != a2(=0xbbc).
  The `beq` branch at 0x403b8c targets 0x403bc0, is taken when v0(=ret(dmParamsGetEnum)) == a2(=0xbbb), and falls through when v0(=ret(dmParamsGetEnum)) != a2(=0xbbb).
  The `beq` branch at 0x403bb8 targets 0x403c98 and is always taken.
  The `beq` branch at 0x403be8 targets 0x403c1c, is taken when a2(=ret(dmParamsGetInt)) == a3(=0x2d0), and falls through when a2(=ret(dmParamsGetInt)) != a3(=0x2d0).
  The `beq` branch at 0x403c14 targets 0x403c98 and is always taken.
  The `beq` branch at 0x403c44 targets 0x403c5c, is taken when a2(=ret(dmParamsGetInt)) == a3(=0x1e0), and falls through when a2(=ret(dmParamsGetInt)) != a3(=0x1e0).
  The `bne` branch at 0x403c54 targets 0x403c68, is taken when a4(=ret(dmParamsGetInt)) != a5(=0x240), and falls through when a4(=ret(dmParamsGetInt)) == a5(=0x240).
  The `beq` branch at 0x403c60 targets 0x403c98 and is always taken.
  The return at 0x403ca4 has v0 = one of -0x1, 0x0.

- `get_default_uncompressed` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x403cb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x403cb0-0x403d84 (212 bytes).
  It occupies 212 bytes.
  The `jalr` at 0x403cd0 calls dmSetImageDefaults with a0=a0 at entry (arg0), a1=0x2d0, a2=0x1e0, a3=0x3f0.
  The `jalr` at 0x403d08 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x414050, a2=0x44c, a3=?.
  The `jalr` at 0x403d44 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x414000, a2=0x4140e0, a3=?.
  The `beq` branch at 0x403cdc targets 0x403cf4, is taken when v0(=ret(dmSetImageDefaults)) == 0, and falls through when v0(=ret(dmSetImageDefaults)) != 0.
  The `beq` branch at 0x403cec targets 0x403d70 and is always taken.
  The `beq` branch at 0x403d14 targets 0x403d2c, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x403d24 targets 0x403d70 and is always taken.
  The `beq` branch at 0x403d50 targets 0x403d68, is taken when v0(=ret(dmParamsSetString)) == 0, and falls through when v0(=ret(dmParamsSetString)) != 0.
  The `beq` branch at 0x403d60 targets 0x403d70 and is always taken.
  The return at 0x403d7c has v0 = one of -0x1, 0x0.

- `get_default_compressed` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x403d90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x403d90-0x403e60 (208 bytes).
  It occupies 208 bytes.
  The `jalr` at 0x403db0 calls dmSetImageDefaults with a0=a0 at entry (arg0), a1=0x2d0, a2=0x1e0, a3=0x3f0.
  The `jalr` at 0x403de8 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x414050, a2=0x44c, a3=?.
  The `jalr` at 0x403e20 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x414000, a2=0x47ff18, a3=?.
  The `beq` branch at 0x403dbc targets 0x403dd4, is taken when v0(=ret(dmSetImageDefaults)) == 0, and falls through when v0(=ret(dmSetImageDefaults)) != 0.
  The `beq` branch at 0x403dcc targets 0x403e4c and is always taken.
  The `beq` branch at 0x403df4 targets 0x403e0c, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x403e04 targets 0x403e4c and is always taken.
  The `beq` branch at 0x403e2c targets 0x403e44, is taken when v0(=ret(dmParamsSetString)) == 0, and falls through when v0(=ret(dmParamsSetString)) != 0.
  The `beq` branch at 0x403e3c targets 0x403e4c and is always taken.
  The return at 0x403e58 has v0 = one of -0x1, 0x0.

- `dmICInitDso` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x403e60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x403e60-0x403f64 (260 bytes).
  It occupies 260 bytes.
  The `ld` at 0x403e80 loads 8 bytes from abs 0x4147e0.
  The `ld` at 0x403e84 loads 8 bytes from abs 0x4147e8.
  The `ld` at 0x403e88 loads 8 bytes from abs 0x4147f0.
  The `ld` at 0x403e8c loads 8 bytes from abs 0x4147f8.
  The `ld` at 0x403e90 loads 8 bytes from abs 0x414800.
  The `ld` at 0x403e94 loads 8 bytes from abs 0x414808.
  The `ld` at 0x403e98 loads 8 bytes from abs 0x414810.
  The `ld` at 0x403e9c loads 8 bytes from abs 0x414818.
  The `ld` at 0x403ea4 loads 8 bytes from abs 0x414820.
  The `lw` at 0x403eac loads 4 bytes from abs 0x414828.
  The `ld` at 0x403ed0 loads 8 bytes from abs 0x414790.
  The `ld` at 0x403ed4 loads 8 bytes from abs 0x414798.
  The `ld` at 0x403ed8 loads 8 bytes from abs 0x4147a0.
  The `ld` at 0x403edc loads 8 bytes from abs 0x4147a8.
  The `ld` at 0x403ee0 loads 8 bytes from abs 0x4147b0.
  The `ld` at 0x403ee4 loads 8 bytes from abs 0x4147b8.
  The `ld` at 0x403ee8 loads 8 bytes from abs 0x4147c0.
  The `ld` at 0x403eec loads 8 bytes from abs 0x4147c8.
  The `ld` at 0x403ef4 loads 8 bytes from abs 0x4147d0.
  The `lw` at 0x403efc loads 4 bytes from abs 0x4147d8.
  The `jalr` at 0x403eb8 calls dmICRegisterConverter with a0=[0x4147e0]:8, a1=[0x4147e8]:8, a2=[0x4147f0]:8, a3=[0x4147f8]:8, a4=[0x414800]:8, a5=[0x414808]:8, a6=[0x414810]:8, a7=[0x414818]:8.
  The `jalr` at 0x403f08 calls dmICRegisterConverter with a0=[0x414790]:8, a1=[0x414798]:8, a2=[0x4147a0]:8, a3=[0x4147a8]:8, a4=[0x4147b0]:8, a5=[0x4147b8]:8, a6=[0x4147c0]:8, a7=[0x4147c8]:8.
  The `jalr` at 0x403f2c calls dmSetError with a0=0x1774, a1=0x47ff08, a2=0x414120, a3=?.
  The `bltz` branch at 0x403ec0 targets 0x403f18, is taken when v0(=ret(dmICRegisterConverter)) < 0 (signed), and falls through when v0(=ret(dmICRegisterConverter)) >= 0 (signed).
  The `bgez` branch at 0x403f10 targets 0x403f44, is taken when v0(=ret(dmICRegisterConverter)) >= 0 (signed), and falls through when v0(=ret(dmICRegisterConverter)) < 0 (signed).
  The `beq` branch at 0x403f3c targets 0x403f4c and is always taken.
  The return at 0x403f5c has v0 = one of -0x1, 0x0.

- `dve_open` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x403f70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x403f70-0x40422c (700 bytes).
  It occupies 700 bytes.
  The `sw` at 0x404070 stores 4 bytes to ret(calloc) +0x0.
  2 such `lw` accesses load 4 bytes from ret(calloc) +0x0, including `lw` at 0x40407c, `lw` at 0x4040c8.
  The `sw` at 0x4040f8 stores 4 bytes to ret(calloc) +0x80.
  The `sw` at 0x40411c stores 4 bytes to ret(calloc) +0x84.
  The `lw` at 0x404124 loads 4 bytes from ret(calloc) +0x84.
  The `sw` at 0x404208 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x403f94 calls vice_get_lib_rev with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403fc8 calls dmSetError with a0=0x1774, a1=0x47ff08, a2=0x414140, a3=0x6b7a.
  The `jalr` at 0x403fec calls calloc with a0=0x1, a1=0xe8, a2=?, a3=?.
  The `jalr` at 0x40401c calls dmSetError with a0=0x1774, a1=0x47ff08, a2=0x414158, a3=?, a4=ret(calloc).
  The `bgezall` at 0x404044 calls init_formats [0x403390] with a0=ret(calloc)+4, a1=?, a2=?, a3=?, a4=ret(calloc).
  The `jalr` at 0x404058 calls vice_open with a0=0x414168, a1=?, a2=?, a3=?.
  The `jalr` at 0x40409c calls dmSetError with a0=0x1774, a1=0x47ff08, a2=0x414178, a3=ret(calloc).
  The `jalr` at 0x4040bc calls vice_setetc with a0=ret(vice_open), a1=[ret(calloc)], a2=ret(vice_open), a3=ret(calloc).
  The `jalr` at 0x4040e8 calls vice_event_init with a0=[ret(calloc)], a1=ret(calloc)+136, a2=ret(calloc)+176, a3=0x40, a4=0x40.
  The `jalr` at 0x404108 calls getenv with a0=0x414198, a1=ret(calloc), a2=?, a3=?.
  The `jalr` at 0x40413c calls printf with a0=0x4141a8, a1=?, a2=[ret(calloc)+132], a3=?, a4=ret(calloc).
  The `jalr` at 0x404150 calls getenv with a0=0x4141c8, a1=?, a2=?, a3=?.
  The `jalr` at 0x404170 calls getenv with a0=0x4141c8, a1=?, a2=?, a3=?.
  The `jalr` at 0x404184 calls atoi with a0=ret(getenv), a1=?, a2=?, a3=?.
  The `jalr` at 0x4041a0 calls calloc with a0=[0x47feec], a1=0x4, a2=?, a3=?.
  The `jalr` at 0x4041bc calls calloc with a0=[0x47feec], a1=0x4, a2=?, a3=?.
  The `jalr` at 0x4041d8 calls calloc with a0=[0x47feec], a1=0x4, a2=?, a3=?.
  The `jalr` at 0x4041f8 calls printf with a0=0x4141d8, a1=[0x47feec], a2=?, a3=?.
  The `beq` branch at 0x403fa8 targets 0x403fe0, is taken when v0(?) == v1(=0x6b7a), and falls through when v0(?) != v1(=0x6b7a).
  The `beq` branch at 0x403fd8 targets 0x404214 and is always taken.
  The `bne` branch at 0x404000 targets 0x404034, is taken when a4(=ret(calloc)) != 0, and falls through when a4(=ret(calloc)) == 0.
  The `beq` branch at 0x40402c targets 0x404214 and is always taken.
  The `bgez` branch at 0x404080 targets 0x4040b4, is taken when a1(=[ret(calloc)]) >= 0 (signed), and falls through when a1(=[ret(calloc)]) < 0 (signed).
  The `beq` branch at 0x4040ac targets 0x404214 and is always taken.
  The `beq` branch at 0x404128 targets 0x404144, is taken when a2(=[ret(calloc)+132]) == 0, and falls through when a2(=[ret(calloc)+132]) != 0.
  The `beq` branch at 0x40415c targets 0x404200, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The return at 0x404224 has v0 = one of -0x1, 0x0.

- `dv_open` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x404230 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404230-0x404618 (1000 bytes).
  It occupies 1000 bytes.
  The `sw` at 0x404330 stores 4 bytes to ret(calloc) +0x0.
  2 such `lw` accesses load 4 bytes from ret(calloc) +0x0, including `lw` at 0x40433c, `lw` at 0x4044b4.
  2 such `sw` accesses store 4 bytes to sym(ge) +0x0, including `sw` at 0x4043a8, `sw` at 0x4043f8.
  2 such `lw` accesses load 4 bytes from sym(ge) +0x0, including `lw` at 0x4043b8, `lw` at 0x404408.
  2 such `lbu` accesses load 1 byte from [sym(ge)] +0x0, including `lbu` at 0x4043bc, `lbu` at 0x40440c.
  The `sb` at 0x4043d4 stores 1 byte to ret(calloc) +0xd9.
  The `sb` at 0x404424 stores 1 byte to ret(calloc) +0xd8.
  The `lbu` at 0x404438 loads 1 byte from ret(calloc) +0xd9.
  2 such `sw` accesses store 4 bytes to ret(calloc) +0x2c, including `sw` at 0x404480, `sw` at 0x404494.
  The `lw` at 0x404488 loads 4 bytes from ret(calloc) +0x2c.
  The `sw` at 0x4044a0 stores 4 bytes to ret(calloc) +0x54.
  The `sw` at 0x4044ac stores 4 bytes to ret(calloc) +0x58.
  The `sw` at 0x4044e4 stores 4 bytes to ret(calloc) +0x80.
  The `sw` at 0x404508 stores 4 bytes to ret(calloc) +0x84.
  The `lw` at 0x404510 loads 4 bytes from ret(calloc) +0x84.
  The `sw` at 0x4045f4 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x404254 calls vice_get_lib_rev with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404288 calls dmSetError with a0=0x1774, a1=0x47ff08, a2=0x414140, a3=0x6b7a.
  The `jalr` at 0x4042ac calls calloc with a0=0x1, a1=0xe8, a2=?, a3=?.
  The `jalr` at 0x4042dc calls dmSetError with a0=0x1774, a1=0x47ff08, a2=0x414158, a3=?, a4=ret(calloc).
  The `bgezall` at 0x404304 calls init_formats [0x403390] with a0=ret(calloc)+4, a1=?, a2=?, a3=?, a4=ret(calloc).
  The `jalr` at 0x404318 calls vice_open with a0=0x414168, a1=?, a2=?, a3=?.
  The `jalr` at 0x40435c calls dmSetError with a0=0x1774, a1=0x47ff08, a2=0x414178, a3=ret(calloc).
  The `jalr` at 0x40437c calls vice_setetc with a0=ret(vice_open), a1=[ret(calloc)], a2=ret(vice_open), a3=ret(calloc).
  The `jalr` at 0x404390 calls getenv with a0=0x414200, a1=?, a2=?, a3=?.
  The `jalr` at 0x4043e0 calls getenv with a0=0x47ff28, a1=ret(getenv), a2=sym(ge), a3=?.
  The `jalr` at 0x404450 calls vice_file with a0=0x414210, a1=?, a2=?, a3=?, a6=ret(getenv), a7=sym(ge).
  The `jalr` at 0x404470 calls vice_load_msp_code with a0=ret(vice_open), a1=ret(vice_file), a2=ret(calloc)+28, a3=0x0.
  The `jalr` at 0x4044d4 calls vice_event_init with a0=[ret(calloc)], a1=ret(calloc)+136, a2=ret(calloc)+176, a3=0x40, a4=0x40.
  The `jalr` at 0x4044f4 calls getenv with a0=0x414198, a1=ret(calloc), a2=?, a3=?.
  The `jalr` at 0x404528 calls printf with a0=0x4141a8, a1=?, a2=[ret(calloc)+132], a3=?, a4=ret(calloc).
  The `jalr` at 0x40453c calls getenv with a0=0x4141c8, a1=?, a2=?, a3=?.
  The `jalr` at 0x40455c calls getenv with a0=0x4141c8, a1=?, a2=?, a3=?.
  The `jalr` at 0x404570 calls atoi with a0=ret(getenv), a1=?, a2=?, a3=?.
  The `jalr` at 0x40458c calls calloc with a0=[0x47feec], a1=0x4, a2=?, a3=?.
  The `jalr` at 0x4045a8 calls calloc with a0=[0x47feec], a1=0x4, a2=?, a3=?.
  The `jalr` at 0x4045c4 calls calloc with a0=[0x47feec], a1=0x4, a2=?, a3=?.
  The `jalr` at 0x4045e4 calls printf with a0=0x4141d8, a1=[0x47feec], a2=?, a3=?.
  The `beq` branch at 0x404268 targets 0x4042a0, is taken when v0(?) == v1(=0x6b7a), and falls through when v0(?) != v1(=0x6b7a).
  The `beq` branch at 0x404298 targets 0x404600 and is always taken.
  The `bne` branch at 0x4042c0 targets 0x4042f4, is taken when a4(=ret(calloc)) != 0, and falls through when a4(=ret(calloc)) == 0.
  The `beq` branch at 0x4042ec targets 0x404600 and is always taken.
  The `bgez` branch at 0x404340 targets 0x404374, is taken when a1(=[ret(calloc)]) >= 0 (signed), and falls through when a1(=[ret(calloc)]) < 0 (signed).
  The `beq` branch at 0x40436c targets 0x404600 and is always taken.
  The `beq` branch at 0x4043ac targets 0x4043d8, is taken when a1(=ret(getenv)) == 0, and falls through when a1(=ret(getenv)) != 0.
  The `bne` branch at 0x4043c4 targets 0x4043d8, is taken when a3(=[[sym(ge)]]:1) != a4(=0x79), and falls through when a3(=[[sym(ge)]]:1) == a4(=0x79).
  The `beq` branch at 0x4043fc targets 0x404428, is taken when a6(=ret(getenv)) == 0, and falls through when a6(=ret(getenv)) != 0.
  The `bne` branch at 0x404414 targets 0x404428, is taken when t0(=[[sym(ge)]]:1) != t1(=0x6e), and falls through when t0(=[[sym(ge)]]:1) == t1(=0x6e).
  The `beq` branch at 0x40443c targets 0x4044b0, is taken when t3(=[ret(calloc)+217]:1) == 0, and falls through when t3(=[ret(calloc)+217]:1) != 0.
  The `beq` branch at 0x404514 targets 0x404530, is taken when a2(=[ret(calloc)+132]) == 0, and falls through when a2(=[ret(calloc)+132]) != 0.
  The `beq` branch at 0x404548 targets 0x4045ec, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The return at 0x404610 has v0 = one of -0x1, 0x0.

- `dv_close` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x404620 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404620-0x40478c (364 bytes).
  It occupies 364 bytes.
  The `lw` at 0x404648 loads 4 bytes from a0 (arg0 at entry) +0x84.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x40466c, `lw` at 0x404690.
  The `jalr` at 0x404660 calls printf with a0=0x414220, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404684 calls vice_event_uninit with a0=[a0], a1=a0+136, a2=a0+176, a3=?.
  The `jalr` at 0x404698 calls vice_close with a0=[a0], a1=?, a2=?, a3=?.
  The `bgezall` at 0x4046b0 calls free_formats [0x403460] with a0=a0+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x4046c0 calls free with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x4046f0 calls kill with a0=[0x47fed4], a1=0x9, a2=[0x47fed4], a3=-0x1.
  The `jalr` at 0x404708 calls waitpid with a0=[0x47fed4], a1=0x0, a2=0x0, a3=?.
  The `jalr` at 0x40472c calls dmBufferDestroyQueue with a0=[0x47fedc], a1=?, a2=?, a3=?, a5=[0x47fedc].
  The `jalr` at 0x404750 calls free with a0=[0x47fef8], a1=?, a2=?, a3=?, a6=[0x47fef8].
  The `jalr` at 0x404760 calls free with a0=[0x47fefc], a1=?, a2=?, a3=?.
  The `jalr` at 0x404770 calls free with a0=[0x47fef4], a1=?, a2=?, a3=?.
  The `beq` branch at 0x40464c targets 0x404668, is taken when at(=[a0+132]) == 0, and falls through when at(=[a0+132]) != 0.
  The `beq` branch at 0x4046cc targets 0x40473c, is taken when a1(=[0x47fee0]) == 0, and falls through when a1(=[0x47fee0]) != 0.
  The `beq` branch at 0x4046dc targets 0x404718, is taken when a2(=[0x47fed4]) == a3(=-0x1), and falls through when a2(=[0x47fed4]) != a3(=-0x1).
  The `beq` branch at 0x40471c targets 0x404738, is taken when a5(=[0x47fedc]) == 0, and falls through when a5(=[0x47fedc]) != 0.
  The `beq` branch at 0x404740 targets 0x404778, is taken when a6(=[0x47fef8]) == 0, and falls through when a6(=[0x47fef8]) != 0.
  The return at 0x404784 has v0 = one of ?, ret(free).

- `dve_close` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x404790 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404790-0x40484c (188 bytes).
  It occupies 188 bytes.
  The `lw` at 0x4047b8 loads 4 bytes from a0 (arg0 at entry) +0x84.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x4047dc, `lw` at 0x404800.
  The `jalr` at 0x4047d0 calls printf with a0=0x414220, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4047f4 calls vice_event_uninit with a0=[a0], a1=a0+136, a2=a0+176, a3=?.
  The `jalr` at 0x404808 calls vice_close with a0=[a0], a1=?, a2=?, a3=?.
  The `bgezall` at 0x404820 calls free_formats [0x403460] with a0=a0+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x404830 calls free with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x4047bc targets 0x4047d8, is taken when at(=[a0+132]) == 0, and falls through when at(=[a0+132]) != 0.
  The return at 0x404844 has v0 = ret(free).

- `dv_describe` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x404850 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404850-0x404930 (224 bytes).
  It occupies 224 bytes.
  The `jalr` at 0x404884 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x414240, a2=0x64766320, a3=a3 at entry (arg3).
  The `jalr` at 0x4048a0 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x414250, a2=0x47ff30, a3=?.
  The `jalr` at 0x4048bc calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x414260, a2=0x1, a3=?.
  The `jalr` at 0x4048d8 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x414270, a2=0x2, a3=?.
  The `jalr` at 0x4048f4 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x414288, a2=0x0, a3=?.
  The `jalr` at 0x404910 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x414298, a2=0x0, a3=?.
  The return at 0x404928 has v0 = 0x0.

- `dve_describe` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x404930 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404930-0x404a10 (224 bytes).
  It occupies 224 bytes.
  The `jalr` at 0x404964 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x414240, a2=0x64766320, a3=a3 at entry (arg3).
  The `jalr` at 0x404980 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x414250, a2=0x47ff30, a3=?.
  The `jalr` at 0x40499c calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x414260, a2=0x1, a3=?.
  The `jalr` at 0x4049b8 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x414270, a2=0x1, a3=?.
  The `jalr` at 0x4049d4 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x414288, a2=0x0, a3=?.
  The `jalr` at 0x4049f0 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x414298, a2=0x0, a3=?.
  The return at 0x404a08 has v0 = 0x0.

- `dv_dstpoolis` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x404a10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404a10-0x404b0c (252 bytes).
  It occupies 252 bytes.
  The `sw` at 0x404a40 stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `lw` at 0x404ad0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x404a4c calls dmBufferGetAllocSize with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=0x8319c, a3=a3 at entry (arg3).
  The `jalr` at 0x404a88 calls dmSetError with a0=0x1772, a1=0x47ff08, a2=0x4142a8, a3=0x3e0000, a4=ret(dmBufferGetAllocSize).
  The `jalr` at 0x404aac calls dmBufferSetPoolSelectSize with a0=a1 at entry (arg1), a1=ret(dmBufferGetAllocSize), a2=?, a3=?, a4=ret(dmBufferGetAllocSize).
  The `jalr` at 0x404abc calls dmBufferGetPoolFD with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x404adc calls vice_dmbuf_outpool with a0=[a0], a1=a1 at entry (arg1), a2=?, a3=?.
  The `beq` branch at 0x404a68 targets 0x404aa0, is taken when a3(=0x3e0000) >= a4(=ret(dmBufferGetAllocSize)) (signed), and falls through when a3(=0x3e0000) < a4(=ret(dmBufferGetAllocSize)) (signed).
  The `beq` branch at 0x404a98 targets 0x404af4 and is always taken.
  The return at 0x404b04 has v0 = one of -0x1, ret(vice_dmbuf_outpool).

- `dve_dstpoolis` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x404b10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404b10-0x404c40 (304 bytes).
  It occupies 304 bytes.
  The `sw` at 0x404b94 stores 4 bytes to sym(dvbitspool) +0x0.
  The `sw` at 0x404ba0 stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `lw` at 0x404c04 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `bgezall` at 0x404b48 calls make_dvcoeff_pool [0x4032d0] with a0=0x14, a1=sp-60, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404b74 calls dmSetError with a0=0x1777, a1=0x4142c0, a2=0x4142d0, a3=?.
  The `jalr` at 0x404bac calls dmBufferGetAllocSize with a0=?, a1=?, a2=?, a3=?, a4=a0 at entry (arg0), a5=a1 at entry (arg1), a6=sym(dvbitspool).
  The `jalr` at 0x404be8 calls dmSetError with a0=0x1772, a1=0x47ff08, a2=0x4142a8, a3=0x3e0000.
  The `jalr` at 0x404c10 calls vice_dmbuf_outpool with a0=[a0], a1=?, a2=?, a3=?.
  The `beq` branch at 0x404b54 targets 0x404b8c, is taken when v0(=ret(make_dvcoeff_pool)) == 0, and falls through when v0(=ret(make_dvcoeff_pool)) != 0.
  The `beq` branch at 0x404b84 targets 0x404c28 and is always taken.
  The `beq` branch at 0x404bc8 targets 0x404c00, is taken when a7(=0x3e0000) >= t0(=ret(dmBufferGetAllocSize)) (signed), and falls through when a7(=0x3e0000) < t0(=ret(dmBufferGetAllocSize)) (signed).
  The `beq` branch at 0x404bf8 targets 0x404c28 and is always taken.
  The return at 0x404c38 has v0 = one of -0x1, ret(vice_dmbuf_outpool).

- `dv_fd` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x404c40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404c40-0x404c64 (36 bytes).
  It occupies 36 bytes.
  The `lw` at 0x404c54 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The return at 0x404c5c has v0 = [a0+128].

- `dv_getsrcfilled` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x404c70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404c70-0x404ce8 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x404c98 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `jalr` at 0x404ca4 calls dmFifoNfilled with a0=[a0+136], a1=sp-44, a2=0x82f3c, a3=a3 at entry (arg3).
  The `beq` branch at 0x404cac targets 0x404cc4, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The `beq` branch at 0x404cbc targets 0x404cd0 and is always taken.
  The return at 0x404ce0 has v0 = one of -0x1, ?.

- `dv_getdstfilled` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x404cf0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404cf0-0x404d68 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x404d18 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `jalr` at 0x404d24 calls dmFifoNfilled with a0=[a0+176], a1=sp-44, a2=0x82ebc, a3=a3 at entry (arg3).
  The `beq` branch at 0x404d2c targets 0x404d44, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The `beq` branch at 0x404d3c targets 0x404d50 and is always taken.
  The return at 0x404d60 has v0 = one of -0x1, ?.

- `dv_verifysrc` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x404d70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404d70-0x404db8 (72 bytes).
  It occupies 72 bytes.
  The `bgezall` at 0x404d9c calls verify_compressed [0x4039e0] with a0=a0 at entry (arg0), a1=0x47ff38, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x404db0 has v0 = ret(verify_compressed).

- `dve_verifysrc` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x404dc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404dc0-0x404e08 (72 bytes).
  It occupies 72 bytes.
  The `bgezall` at 0x404dec calls verify_uncompressed [0x403910] with a0=a0 at entry (arg0), a1=0x47ff38, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x404e00 has v0 = ret(verify_uncompressed).

- `dv_verifydst` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x404e10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404e10-0x404e58 (72 bytes).
  It occupies 72 bytes.
  The `bgezall` at 0x404e3c calls verify_uncompressed [0x403910] with a0=a0 at entry (arg0), a1=0x47ff3c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x404e50 has v0 = ret(verify_uncompressed).

- `dve_verifydst` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x404e60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404e60-0x404ea8 (72 bytes).
  It occupies 72 bytes.
  The `bgezall` at 0x404e8c calls verify_compressed [0x4039e0] with a0=a0 at entry (arg0), a1=0x47ff3c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x404ea0 has v0 = ret(verify_compressed).

- `dv_verifycvt` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x404eb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404eb0-0x404ec8 (24 bytes).
  It occupies 24 bytes.
  The return at 0x404ec0 has v0 = 0x0.

- `dv_verifysrcdstcvt` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x404ed0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404ed0-0x404fc8 (248 bytes).
  It occupies 248 bytes.
  The `bgezall` at 0x404f0c calls dv_verifysrc [0x404d70] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x404f48 calls dv_verifydst [0x404e10] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `bgezall` at 0x404f84 calls dv_verifycvt [0x404eb0] with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `beq` branch at 0x404ef8 targets 0x404f30, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x404f18 targets 0x404f30, is taken when v0(=ret(dv_verifysrc)) == 0, and falls through when v0(=ret(dv_verifysrc)) != 0.
  The `beq` branch at 0x404f28 targets 0x404fb0 and is always taken.
  The `beq` branch at 0x404f34 targets 0x404f6c, is taken when at(=a1) == 0, and falls through when at(=a1) != 0.
  The `beq` branch at 0x404f54 targets 0x404f6c, is taken when v0(=ret(dv_verifydst)) == 0, and falls through when v0(=ret(dv_verifydst)) != 0.
  The `beq` branch at 0x404f64 targets 0x404fb0 and is always taken.
  The `beq` branch at 0x404f70 targets 0x404fa8, is taken when at(=a2) == 0, and falls through when at(=a2) != 0.
  The `beq` branch at 0x404f90 targets 0x404fa8, is taken when v0(=ret(dv_verifycvt)) == 0, and falls through when v0(=ret(dv_verifycvt)) != 0.
  The `beq` branch at 0x404fa0 targets 0x404fb0 and is always taken.
  The return at 0x404fc0 has v0 = one of -0x1, 0x0.

- `dve_verifysrcdstcvt` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x404fd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x404fd0-0x4050c8 (248 bytes).
  It occupies 248 bytes.
  The `bgezall` at 0x40500c calls dve_verifysrc [0x404dc0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x405048 calls dve_verifydst [0x404e60] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `bgezall` at 0x405084 calls dv_verifycvt [0x404eb0] with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `beq` branch at 0x404ff8 targets 0x405030, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x405018 targets 0x405030, is taken when v0(=ret(dve_verifysrc)) == 0, and falls through when v0(=ret(dve_verifysrc)) != 0.
  The `beq` branch at 0x405028 targets 0x4050b0 and is always taken.
  The `beq` branch at 0x405034 targets 0x40506c, is taken when at(=a1) == 0, and falls through when at(=a1) != 0.
  The `beq` branch at 0x405054 targets 0x40506c, is taken when v0(=ret(dve_verifydst)) == 0, and falls through when v0(=ret(dve_verifydst)) != 0.
  The `beq` branch at 0x405064 targets 0x4050b0 and is always taken.
  The `beq` branch at 0x405070 targets 0x4050a8, is taken when at(=a2) == 0, and falls through when at(=a2) != 0.
  The `beq` branch at 0x405090 targets 0x4050a8, is taken when v0(=ret(dv_verifycvt)) == 0, and falls through when v0(=ret(dv_verifycvt)) != 0.
  The `beq` branch at 0x4050a0 targets 0x4050b0 and is always taken.
  The return at 0x4050c0 has v0 = one of -0x1, 0x0.

- `dv_defaultsrc` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x4050d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x4050d0-0x405114 (68 bytes).
  It occupies 68 bytes.
  The `bgezall` at 0x4050f8 calls get_default_compressed [0x403d90] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x40510c has v0 = ret(get_default_compressed).

- `dve_defaultsrc` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x405120 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x405120-0x405164 (68 bytes).
  It occupies 68 bytes.
  The `bgezall` at 0x405148 calls get_default_uncompressed [0x403cb0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x40515c has v0 = ret(get_default_uncompressed).

- `dv_defaultdst` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x405170 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x405170-0x4051b4 (68 bytes).
  It occupies 68 bytes.
  The `bgezall` at 0x405198 calls get_default_uncompressed [0x403cb0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x4051ac has v0 = ret(get_default_uncompressed).

- `dv_defaultcvt` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x4051c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x4051c0-0x4051d8 (24 bytes).
  It occupies 24 bytes.
  The return at 0x4051d0 has v0 = 0x0.

- `dve_defaultdst` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x4051e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x4051e0-0x405224 (68 bytes).
  It occupies 68 bytes.
  The `bgezall` at 0x405208 calls get_default_compressed [0x403d90] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x40521c has v0 = ret(get_default_compressed).

- `threadarg_enqueue` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x405230 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x405230-0x4052e8 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0x40525c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0x405264 stores 4 bytes to ret(malloc) +0x0.
  The `lw` at 0x40526c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0x405274 stores 4 bytes to ret(malloc) +0x4.
  The `jalr` at 0x405248 calls malloc with a0=0x8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x405284 calls dmBufferEnqueue with a0=[0x47fedc], a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0x4052bc calls fprintf with a0=sym(__iob)+32, a1=0x4142f0, a2=ret(malloc), a3=?.
  The `bne` branch at 0x405290 targets 0x4052a4, is taken when v0(=ret(dmBufferEnqueue)) != 0, and falls through when v0(=ret(dmBufferEnqueue)) == 0.
  The `beq` branch at 0x40529c targets 0x4052d4 and is always taken.
  The `beq` branch at 0x4052cc targets 0x4052d4 and is always taken.
  The return at 0x4052e0 has v0 = 0x0.

- `threadarg_dequeue` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x4052f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x4052f0-0x40537c (140 bytes).
  It occupies 140 bytes.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x40531c, `lw` at 0x40532c.
  The `sw` at 0x405324 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `sw` at 0x405334 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `jalr` at 0x405308 calls dmBufferDequeue with a0=[0x47fedc], a1=sp-48, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x405340 calls free with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x405310 targets 0x405354, is taken when v0(=ret(dmBufferDequeue)) != 0, and falls through when v0(=ret(dmBufferDequeue)) == 0.
  The `beq` branch at 0x40534c targets 0x405368 and is always taken.
  The `beq` branch at 0x405360 targets 0x405368 and is always taken.
  The return at 0x405374 has v0 = one of -0x1, 0x0.

- `dvsend_thread_looping` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x405380 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x405380-0x4059d8 (1624 bytes).
  It occupies 1624 bytes.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x4053f4, `sd` at 0x405588, `sd` at 0x405764.
  7 such `lw` accesses load 4 bytes from ?, including `lw` at 0x405434, `lw` at 0x4055c8, `lw` at 0x4056f0.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x405484, `sw` at 0x405618, `sw` at 0x4057f4.
  The `jalr` at 0x4053a8 calls signal with a0=0x1, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4053b8 calls prctl with a0=0xc, a1=?, a2=?, a3=?.
  The `jalr` at 0x4054a4 calls select with a0=[0x47fed8]+1, a1=sp-304, a2=0x0, a3=0x0, a4=0x0.
  The `jalr` at 0x4054c8 calls perror with a0=0x414310, a1=?, a2=?, a3=?.
  The `jalr` at 0x4054ec calls select with a0=[0x47fed8]+1, a1=sp-304, a2=0x0, a3=0x0, a4=0x0.
  The `jalr` at 0x40550c calls dmBufferGetQueueFilled with a0=[0x47fedc], a1=?, a2=?, a3=?.
  The `bgezall` at 0x40552c calls threadarg_dequeue [0x4052f0] with a0=sp-176, a1=?, a2=?, a3=?.
  The `jalr` at 0x40554c calls dmBufferAllocate with a0=[0x47fee4], a1=sp-168, a2=?, a3=?.
  The `jalr` at 0x405638 calls select with a0=[0x47fee8]+1, a1=0x0, a2=sp-304, a3=0x0, a4=0x0.
  The `jalr` at 0x40565c calls perror with a0=0x414338, a1=?, a2=?, a3=?.
  The `jalr` at 0x405680 calls select with a0=[0x47fee8]+1, a1=0x0, a2=sp-304, a3=0x0, a4=0x0.
  The `jalr` at 0x4056a4 calls dmBufferAllocate with a0=[0x47fee4], a1=sp-168, a2=?, a3=?.
  The `jalr` at 0x4056c8 calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4056dc calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405700 calls qparsemain with a0=?, a1=?, a2=?, a3=ret(dmBufferMapData).
  The `jalr` at 0x405710 calls dmBufferGetUSTMSCpair with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405734 calls dmBufferSetUSTMSCpair with a0=?, a1=ret(dmBufferGetUSTMSCpair), a2=?, a3=?.
  The `jalr` at 0x405814 calls select with a0=[0x47ff00]+1, a1=0x0, a2=sp-304, a3=0x0, a4=0x0, a7=0x0.
  The `jalr` at 0x405838 calls perror with a0=0x414358, a1=?, a2=?, a3=?.
  The `jalr` at 0x40585c calls select with a0=[0x47ff00]+1, a1=0x0, a2=sp-304, a3=0x0, a4=0x0.
  The `jalr` at 0x405898 calls vice_dmbuf_send with a0=?, a1=?, a2=?, a3=?, a4=0x4.
  The `jalr` at 0x4058b4 calls getpid with a0=?, a1=-0x1, a2=?, a3=?.
  The `jalr` at 0x4058d8 calls fprintf with a0=sym(__iob)+32, a1=0x414378, a2=ret(getpid), a3=?.
  The `jalr` at 0x4058f4 calls vice_dms_geterrs with a0=?, a1=-0x1, a2=?, a3=?.
  The `jalr` at 0x40590c calls getpid with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405930 calls fprintf with a0=sym(__iob)+32, a1=0x414398, a2=ret(getpid), a3=?.
  The `jalr` at 0x405940 calls dmBufferFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405950 calls dmBufferFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40596c calls getenv with a0=0x4143c0, a1=?, a2=?, a3=?.
  The `jalr` at 0x405994 calls fprintf with a0=sym(__iob)+32, a1=0x4143d0, a2=?, a3=?.
  The `jalr` at 0x4059a4 calls dmBufferGetQueueFilled with a0=[0x47fedc], a1=?, a2=?, a3=?.
  The `beq` branch at 0x4053c4 targets 0x4059c4 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bgtz` branch at 0x40540c targets 0x4053e4, is taken when a1(?) > 0 (signed), and falls through when a1(?) <= 0 (signed).
  The `bne` branch at 0x4054b4 targets 0x405504, is taken when v0(=ret(select)) != a3(=-0x1), and falls through when v0(=ret(select)) == a3(=-0x1).
  The `beq` branch at 0x4054fc targets 0x4054bc, is taken when v0(=ret(select)) == a1(=-0x1), and falls through when v0(=ret(select)) != a1(=-0x1).
  The `blez` branch at 0x405518 targets 0x4059b8, is taken when v0(=ret(dmBufferGetQueueFilled)) <= 0 (signed), and falls through when v0(=ret(dmBufferGetQueueFilled)) > 0 (signed).
  The `bne` branch at 0x405538 targets 0x405960, is taken when v0(=ret(threadarg_dequeue)) != 0, and falls through when v0(=ret(threadarg_dequeue)) == 0.
  The `beq` branch at 0x405558 targets 0x4056b8, is taken when v0(=ret(dmBufferAllocate)) == 0, and falls through when v0(=ret(dmBufferAllocate)) != 0.
  The `bgtz` branch at 0x4055a0 targets 0x405578, is taken when v0(?) > 0 (signed), and falls through when v0(?) <= 0 (signed).
  The `bne` branch at 0x405648 targets 0x405698, is taken when v0(=ret(select)) != a3(=-0x1), and falls through when v0(=ret(select)) == a3(=-0x1).
  The `beq` branch at 0x405690 targets 0x405650, is taken when v0(=ret(select)) == a1(=-0x1), and falls through when v0(=ret(select)) != a1(=-0x1).
  The `bne` branch at 0x4056b0 targets 0x405560, is taken when v0(=ret(dmBufferAllocate)) != 0, and falls through when v0(=ret(dmBufferAllocate)) == 0.
  The `bgtz` branch at 0x40577c targets 0x405754, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `bne` branch at 0x405824 targets 0x405874, is taken when v0(=ret(select)) != a3(=-0x1), and falls through when v0(=ret(select)) == a3(=-0x1).
  The `beq` branch at 0x40586c targets 0x40582c, is taken when v0(=ret(select)) == a1(=-0x1), and falls through when v0(=ret(select)) != a1(=-0x1).
  The `bne` branch at 0x4058a8 targets 0x4058e8, is taken when v0(=ret(vice_dmbuf_send)) != a1(=-0x1), and falls through when v0(=ret(vice_dmbuf_send)) == a1(=-0x1).
  The `beq` branch at 0x4058e0 targets 0x405938 and is always taken.
  The `beq` branch at 0x405900 targets 0x405938, is taken when v0(=ret(vice_dms_geterrs)) == 0, and falls through when v0(=ret(vice_dms_geterrs)) != 0.
  The `beq` branch at 0x405958 targets 0x40599c and is always taken.
  The `beq` branch at 0x405978 targets 0x40599c, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `bgtz` branch at 0x4059b0 targets 0x405520, is taken when v0(=ret(dmBufferGetQueueFilled)) > 0 (signed), and falls through when v0(=ret(dmBufferGetQueueFilled)) <= 0 (signed).
  The `bne` branch at 0x4059bc targets 0x4053cc and is always taken.
  The instructions from 0x4059c4 to 0x4059d4 are not reached by any path from the entry, and their branches are not listed.

- `child_exit_handler` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x4059e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x4059e0-0x405a3c (92 bytes).
  It occupies 92 bytes.
  The `jalr` at 0x405a04 calls wait with a0=sp-48, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x405a20 calls sigset with a0=0x12, a1=0x4059e0, a2=?, a3=?.
  The return at 0x405a34 has v0 = ret(sigset).

- `_dv_go` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x405a40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x405a40-0x405f4c (1292 bytes).
  It occupies 1292 bytes.
  The `lw` at 0x405a50 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x405a5c loads 4 bytes from a0 (arg0 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdc, including `lw` at 0x405a74, `lw` at 0x405d5c.
  The `sw` at 0x405aa8 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  The `lbu` at 0x405ab0 loads 1 byte from a0 (arg0 at entry) +0xd9.
  The `sw` at 0x405acc stores 4 bytes to a0 (arg0 at entry) +0x70.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x405b20, `lw` at 0x405b58, `lw` at 0x405be8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xdc, including `sw` at 0x405b74, `sw` at 0x405c94.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xe0, including `sw` at 0x405b80, `sw` at 0x405c08, `sw` at 0x405c54.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x2c, including `sw` at 0x405cd4, `sw` at 0x405ce8, `sw` at 0x405cfc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0x405cdc, `lw` at 0x405cf0.
  The `sw` at 0x405d38 stores 4 bytes to a0 (arg0 at entry) +0x54.
  The `sw` at 0x405d44 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `lbu` at 0x405d4c loads 1 byte from a0 (arg0 at entry) +0xd8.
  The `jalr` at 0x405ae8 calls dmParamsGetInt with a0=[a0+4], a1=0x414028, a2=?, a3=[a0+217]:1, a4=a0 at entry (arg0), a5=one of 0x2, 0x3.
  The `jalr` at 0x405b0c calls vice_file with a0=0x4143e8, a1=?, a2=0x1e0, a3=?.
  The `jalr` at 0x405b30 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=0x0.
  The `jalr` at 0x405b44 calls vice_file with a0=0x4143f8, a1=?, a2=?, a3=?.
  The `jalr` at 0x405b64 calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=?.
  The `jalr` at 0x405b9c calls dmParamsGetString with a0=[a0+4], a1=0x414000, a2=0x1e0, a3=?.
  The `jalr` at 0x405bb4 calls strcmp with a0=ret(dmParamsGetString), a1=0x47ff20, a2=?, a3=?.
  The `jalr` at 0x405bd4 calls vice_file with a0=0x414408, a1=?, a2=?, a3=?.
  The `jalr` at 0x405bf8 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=0x0.
  The `jalr` at 0x405c20 calls vice_file with a0=0x414418, a1=?, a2=?, a3=?.
  The `jalr` at 0x405c44 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=0x0.
  The `jalr` at 0x405c64 calls vice_file with a0=0x414428, a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x405c84 calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=?.
  The `jalr` at 0x405ca4 calls vice_file with a0=0x414438, a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x405cc4 calls vice_load_bsp_table with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=?.
  The `jalr` at 0x405d0c calls vice_etc_dramp with a0=[a0], a1=([a0+44] | 0x50), a2=a0+28, a3=a0+28, a4=a0+28.
  The `jalr` at 0x405d28 calls dmic_dram_init_decode with a0=ret(vice_etc_dramp), a1=?, a2=?, a3=?.
  The `bgezall` at 0x405d90 calls make_qparse_pool [0x4031e0] with a0=one of 0x2, 0x3, a1=[a0+216]:1, a2=0x1800, a3=a0+28, a4=0x8000, a5=a0+28, a6=[a0+220], a7=one of 0x2, 0xa.
  The `jalr` at 0x405db8 calls dmSetError with a0=0x1778, a1=0x47ff40, a2=0x414448, a3=?.
  The `jalr` at 0x405ddc calls getenv with a0=0x414468, a1=?, a2=?, a3=?.
  The `jalr` at 0x405e10 calls dmBufferCreateQueue with a0=0x0, a1=0x47fedc, a2=[0x47fee0], a3=?.
  The `jalr` at 0x405e38 calls dmSetError with a0=0x1778, a1=0x47ff40, a2=0x414478, a3=?.
  The `jalr` at 0x405e58 calls dmBufferGetQueueFD with a0=[0x47fedc], a1=?, a2=?, a3=?.
  The `jalr` at 0x405e90 calls dmSetError with a0=0x1778, a1=0x47ff40, a2=0x414498, a3=?, a4=ret(dmBufferGetQueueFD), a5=-0x1.
  The `jalr` at 0x405eb8 calls sigset with a0=0x12, a1=0x4059e0, a2=?, a3=?, a4=ret(dmBufferGetQueueFD), a5=-0x1.
  The `jalr` at 0x405ed0 calls sproc with a0=sym(dvsend_thread_looping), a1=0x42, a2=0x0, a3=?.
  The `jalr` at 0x405efc calls perror with a0=0x47ff48, a1=?, a2=ret(sproc), a3=-0x1.
  The `jalr` at 0x405f28 calls vice_event_start with a0=[a0], a1=a0+28, a2=?, a3=?.
  The `bne` branch at 0x405a7c targets 0x405a94, is taken when at(=[a0+220]) != v0(=0xa), and falls through when at(=[a0+220]) == v0(=0xa).
  The `beq` branch at 0x405a8c targets 0x405a9c and is always taken.
  The `beq` branch at 0x405ab4 targets 0x405ad8, is taken when a3(=[a0+217]:1) == 0, and falls through when a3(=[a0+217]:1) != 0.
  The `beq` branch at 0x405ad0 targets 0x405dd0 and is always taken.
  The `bne` branch at 0x405af8 targets 0x405b8c, is taken when v0(=ret(dmParamsGetInt)) != a2(=0x1e0), and falls through when v0(=ret(dmParamsGetInt)) == a2(=0x1e0).
  The `beq` branch at 0x405b84 targets 0x405c98 and is always taken.
  The `bne` branch at 0x405bc0 targets 0x405c14, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x405c0c targets 0x405c58 and is always taken.
  The `bne` branch at 0x405d50 targets 0x405dd0, is taken when a1(=[a0+216]:1) != 0, and falls through when a1(=[a0+216]:1) == 0.
  The `bne` branch at 0x405d64 targets 0x405d7c, is taken when a6(=[a0+220]) != a7(=0xa), and falls through when a6(=[a0+220]) == a7(=0xa).
  The `beq` branch at 0x405d74 targets 0x405d84 and is always taken.
  The `beq` branch at 0x405d9c targets 0x405dd0, is taken when v0(=ret(make_qparse_pool)) == 0, and falls through when v0(=ret(make_qparse_pool)) != 0.
  The `beq` branch at 0x405dc8 targets 0x405f38 and is always taken.
  The `beq` branch at 0x405de8 targets 0x405df8, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `beq` branch at 0x405dfc targets 0x405f14, is taken when a2(=[0x47fee0]) == 0, and falls through when a2(=[0x47fee0]) != 0.
  The `beq` branch at 0x405e1c targets 0x405e50, is taken when v0(=ret(dmBufferCreateQueue)) == 0, and falls through when v0(=ret(dmBufferCreateQueue)) != 0.
  The `beq` branch at 0x405e48 targets 0x405f38 and is always taken.
  The `bne` branch at 0x405e74 targets 0x405ea8, is taken when a4(=ret(dmBufferGetQueueFD)) != a5(=-0x1), and falls through when a4(=ret(dmBufferGetQueueFD)) == a5(=-0x1).
  The `beq` branch at 0x405ea0 targets 0x405f38 and is always taken.
  The `bne` branch at 0x405eec targets 0x405f14, is taken when a2(=ret(sproc)) != a3(=-0x1), and falls through when a2(=ret(sproc)) == a3(=-0x1).
  The `beq` branch at 0x405f0c targets 0x405f38 and is always taken.
  The return at 0x405f44 has v0 = one of -0x1, 0x0.

- `dv_send` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x405f50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x405f50-0x406694 (1860 bytes).
  It occupies 1860 bytes.
  The `lw` at 0x405f90 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x405f9c loads 4 bytes from a0 (arg0 at entry) +0x4.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xd8, including `lbu` at 0x406024, `lbu` at 0x406258.
  The `lw` at 0x406150 loads 4 bytes from a0 (arg0 at entry) +0xdc.
  The `lw` at 0x406158 loads 4 bytes from a0 (arg0 at entry) +0xe0.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x4061a4, `lw` at 0x40620c, `lw` at 0x4065c8.
  The `sw` at 0x4063d0 stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `lw` at 0x4063e8 loads 4 bytes from a0 (arg0 at entry) +0xc.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0x40648c, `sw` at 0x406688.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x406494, `lw` at 0x4064bc, `lw` at 0x4064cc.
  The `lw` at 0x4064a4 loads 4 bytes from a0 (arg0 at entry) +0x14.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14, including `sw` at 0x4065b0, `sw` at 0x406634.
  The `sw` at 0x40662c stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `lw` at 0x406644 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `jalr` at 0x406008 calls dmSetError with a0=0x1778, a1=0x47ff08, a2=0x4144b8, a3=a3 at entry (arg3), a7=0x81c5c.
  The `bgezall` at 0x406068 calls threadarg_enqueue [0x405230] with a0=sp-160, a1=?, a2=?, a3=?, a4=[a0+216]:1, a6=[0x47fee0].
  The `jalr` at 0x406084 calls dmBufferAttach with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x4060ac calls dmSetError with a0=0x1778, a1=0x47ff08, a2=0x4144d0, a3=?.
  The `jalr` at 0x4060d8 calls dmBufferAllocate with a0=[0x47fee4], a1=sp-164, a2=?, a3=?, a4=[a0+216]:1, a6=[0x47fee0].
  The `jalr` at 0x406100 calls dmSetError with a0=0x1778, a1=0x47ff08, a2=0x4144e8, a3=?.
  The `jalr` at 0x406120 calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40613c calls dmBufferMapData with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a4=ret(dmBufferMapData).
  The `jalr` at 0x406164 calls qparsemain with a0=ret(dmBufferMapData), a1=[a0+220], a2=[a0+224], a3=?.
  The `jalr` at 0x406174 calls dmBufferGetUSTMSCpair with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x406198 calls dmBufferSetUSTMSCpair with a0=?, a1=ret(dmBufferGetUSTMSCpair), a2=?, a3=?.
  The `jalr` at 0x4061c4 calls vice_dmbuf_send with a0=[a0], a1=?, a2=a0+136, a3=a0+100, a4=0x4.
  The `jalr` at 0x4061f0 calls dmSetError with a0=0x1778, a1=0x47ff08, a2=0x414500, a3=?.
  The `jalr` at 0x406214 calls vice_dms_geterrs with a0=[a0], a1=-0x1, a2=?, a3=?.
  The `jalr` at 0x40623c calls dmSetError with a0=0x1778, a1=0x47ff08, a2=0x414518, a3=?.
  The `jalr` at 0x40626c calls dmBufferFree with a0=?, a1=?, a2=?, a3=?, a4=[a0+216]:1.
  The `jalr` at 0x406298 calls dmParamsCopyAllElems with a0=a4 at entry (arg4), a1=[a0+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=a4 at entry (arg4), a7=0x81c5c.
  The `jalr` at 0x4062d0 calls dmParamsSetEnum with a0=[a0+4], a1=0x414050, a2=0x44c, a3=?.
  The `jalr` at 0x40630c calls dmParamsCopyAllElems with a0=a5 at entry (arg5), a1=[a0+8], a2=?, a3=a5 at entry (arg5).
  The `jalr` at 0x406340 calls dmParamsIsPresent with a0=[a0+8], a1=0x414038, a2=?, a3=?.
  The `jalr` at 0x406364 calls dmParamsGetEnum with a0=[a0+8], a1=0x414038, a2=?, a3=?.
  The `jalr` at 0x4063b0 calls dmParamsSetEnum with a0=[a0+8], a1=0x414038, a2=?, a3=?.
  The `jalr` at 0x4063c0 calls dmImageFrameSize with a0=a5 at entry (arg5), a1=?, a2=?, a3=?.
  The `jalr` at 0x4063f0 calls dmParamsCopyAllElems with a0=a6 at entry (arg6), a1=[a0+12], a2=?, a3=a6 at entry (arg6).
  The `bgezall` at 0x406420 calls _dv_go [0x405a40] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0x406458 calls needsConvert [0x4035f0] with a0=[a0+4], a1=[a0+8], a2=?, a3=?.
  The `jalr` at 0x406474 calls dmImageFrameSize with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0x4064d4 calls dmBufferDestroyPool with a0=[a0+16], a1=?, a2=?, a3=?.
  The `jalr` at 0x4064e4 calls dmParamsCreate with a0=sp-120, a1=?, a2=?, a3=?.
  The `jalr` at 0x406520 calls dmBufferSetPoolDefaults with a0=?, a1=0x2, a2=?, a3=0x0, a4=0x1.
  The `bgezall` at 0x406554 calls _poolneeds [0x403190] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x40656c calls dmBufferCreatePool with a0=?, a1=a0+16, a2=?, a3=?.
  The `jalr` at 0x4065a0 calls dmParamsGetInt with a0=?, a1=0x414530, a2=?, a3=?.
  The `jalr` at 0x4065bc calls dmParamsDestroy with a0=?, a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x4065d8 calls vice_dmbuf_outpool with a0=[a0], a1=[a0+16], a2=?, a3=?.
  The `jalr` at 0x406620 calls dmBufferDestroyPool with a0=[a0+16], a1=?, a2=[a0+16], a3=?.
  The `jalr` at 0x40664c calls vice_dmbuf_outpool with a0=[a0], a1=[a0+116], a2=a0 at entry (arg0), a3=?.
  The `bne` branch at 0x405fa8 targets 0x405fc8, is taken when at(=a4) != 0, and falls through when at(=a4) == 0.
  The `bne` branch at 0x405fb4 targets 0x405fc8, is taken when t0(=a5) != 0, and falls through when t0(=a5) == 0.
  The `beq` branch at 0x405fc0 targets 0x405fd8, is taken when t1(=a6) == 0, and falls through when t1(=a6) != 0.
  The `beq` branch at 0x405fd0 targets 0x405fdc and is always taken.
  The `bne` branch at 0x405fe0 targets 0x406280, is taken when t3(=one of 0x0, 0x1) != 0, and falls through when t3(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0x405fec targets 0x406020, is taken when t8(=[0x47fee4]) != 0, and falls through when t8(=[0x47fee4]) == 0.
  The `beq` branch at 0x406018 targets 0x40666c and is always taken.
  The `beq` branch at 0x406028 targets 0x406040, is taken when a4(=[a0+216]:1) == 0, and falls through when a4(=[a0+216]:1) != 0.
  The `beq` branch at 0x406038 targets 0x4061a0 and is always taken.
  The `beq` branch at 0x406044 targets 0x4060cc, is taken when a6(=[0x47fee0]) == 0, and falls through when a6(=[0x47fee0]) != 0.
  The `bne` branch at 0x406074 targets 0x406098, is taken when v0(=ret(threadarg_enqueue)) != 0, and falls through when v0(=ret(threadarg_enqueue)) == 0.
  The `beq` branch at 0x406090 targets 0x40666c and is always taken.
  The `beq` branch at 0x4060bc targets 0x40666c and is always taken.
  The `beq` branch at 0x4060e4 targets 0x406118, is taken when v0(=ret(dmBufferAllocate)) == 0, and falls through when v0(=ret(dmBufferAllocate)) != 0.
  The `beq` branch at 0x406110 targets 0x40666c and is always taken.
  The `bne` branch at 0x4061d4 targets 0x406208, is taken when v0(=ret(vice_dmbuf_send)) != a1(=-0x1), and falls through when v0(=ret(vice_dmbuf_send)) == a1(=-0x1).
  The `beq` branch at 0x406200 targets 0x40666c and is always taken.
  The `beq` branch at 0x406220 targets 0x406254, is taken when v0(=ret(vice_dms_geterrs)) == 0, and falls through when v0(=ret(vice_dms_geterrs)) != 0.
  The `beq` branch at 0x40624c targets 0x40666c and is always taken.
  The `bne` branch at 0x40625c targets 0x406274, is taken when a4(=[a0+216]:1) != 0, and falls through when a4(=[a0+216]:1) == 0.
  The `beq` branch at 0x406278 targets 0x40666c and is always taken.
  The `beq` branch at 0x406284 targets 0x4062f4, is taken when a5(=a4) == 0, and falls through when a5(=a4) != 0.
  The `beq` branch at 0x4062a4 targets 0x4062bc, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x4062b4 targets 0x40666c and is always taken.
  The `beq` branch at 0x4062dc targets 0x4062f4, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x4062ec targets 0x40666c and is always taken.
  The `beq` branch at 0x4062f8 targets 0x4063d4, is taken when a3(=a5) == 0, and falls through when a3(=a5) != 0.
  The `beq` branch at 0x406318 targets 0x406330, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x406328 targets 0x40666c and is always taken.
  The `beq` branch at 0x40634c targets 0x406394, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x40637c targets 0x40638c, is taken when a2(=ret(dmParamsGetEnum)) == a3(=0x3f0), and falls through when a2(=ret(dmParamsGetEnum)) != a3(=0x3f0).
  The `beq` branch at 0x40638c targets 0x40639c and is always taken.
  The `beq` branch at 0x4063d8 targets 0x406414, is taken when a3(=a6) == 0, and falls through when a3(=a6) != 0.
  The `beq` branch at 0x4063fc targets 0x406414, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x40640c targets 0x40666c and is always taken.
  The `bne` branch at 0x406430 targets 0x406448, is taken when v0(=ret(_dv_go)) != ra(=-0x1), and falls through when v0(=ret(_dv_go)) == ra(=-0x1).
  The `beq` branch at 0x406440 targets 0x40666c and is always taken.
  The `beq` branch at 0x406464 targets 0x406604, is taken when v0(=ret(needsConvert)) == 0, and falls through when v0(=ret(needsConvert)) != 0.
  The `beq` branch at 0x406498 targets 0x4064b8, is taken when ra(=[a0+16]) == 0, and falls through when ra(=[a0+16]) != 0.
  The `beq` branch at 0x4064b0 targets 0x4065fc, is taken when v1(=[a0+20]) >= a0(=ret(dmImageFrameSize)) (signed), and falls through when v1(=[a0+20]) < a0(=ret(dmImageFrameSize)) (signed).
  The `beq` branch at 0x4064c0 targets 0x4064dc, is taken when a0(=[a0+16]) == 0, and falls through when a0(=[a0+16]) != 0.
  The `beq` branch at 0x4064f0 targets 0x406508, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x406500 targets 0x40666c and is always taken.
  The `beq` branch at 0x40652c targets 0x406544, is taken when v0(=ret(dmBufferSetPoolDefaults)) == 0, and falls through when v0(=ret(dmBufferSetPoolDefaults)) != 0.
  The `beq` branch at 0x40653c targets 0x40666c and is always taken.
  The `beq` branch at 0x406578 targets 0x406590, is taken when v0(=ret(dmBufferCreatePool)) == 0, and falls through when v0(=ret(dmBufferCreatePool)) != 0.
  The `beq` branch at 0x406588 targets 0x40666c and is always taken.
  The `beq` branch at 0x4065e4 targets 0x4065fc, is taken when v0(=ret(vice_dmbuf_outpool)) == 0, and falls through when v0(=ret(vice_dmbuf_outpool)) != 0.
  The `beq` branch at 0x4065f4 targets 0x40666c and is always taken.
  The `beq` branch at 0x4065fc targets 0x40668c and is always taken.
  The `beq` branch at 0x40660c targets 0x406684, is taken when a2(=[a0+16]) == 0, and falls through when a2(=[a0+16]) != 0.
  The `beq` branch at 0x406658 targets 0x406684, is taken when v0(=ret(vice_dmbuf_outpool)) == 0, and falls through when v0(=ret(vice_dmbuf_outpool)) != 0.
  The `beq` branch at 0x40668c targets 0x406020 and is always taken.
  The return at 0x40667c has v0 = one of -0x1, 0x0.
  The instructions from 0x4060c4 to 0x4060c8 are not reached by any path from the entry, and their branches are not listed.

- `_e_go` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x4066a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x4066a0-0x406aac (1036 bytes).
  It occupies 1036 bytes.
  The `lw` at 0x4066b0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x4066bc loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x4066c8 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0x4066e0 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  2 such `sw` accesses store 4 bytes to sym(qno4passMode) +0x0, including `sw` at 0x406740, `sw` at 0x40675c.
  2 such `sw` accesses store 4 bytes to sym(rollMode) +0x0, including `sw` at 0x40674c, `sw` at 0x406764.
  2 such `sw` accesses store 4 bytes to sym(dvNoiseMode) +0x0, including `sw` at 0x406790, `sw` at 0x406814.
  The `lw` at 0x406798 loads 4 bytes from sym(qno4passMode) +0x0.
  The `lw` at 0x4067c0 loads 4 bytes from sym(rollMode) +0x0.
  3 such `sw` accesses store 4 bytes to sym(videoMode) +0x0, including `sw` at 0x406844, `sw` at 0x406930, `sw` at 0x406988.
  2 such `sw` accesses store 4 bytes to sym(mbNumber) +0x0, including `sw` at 0x406850, `sw` at 0x4068c8.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x406874, `lw` at 0x406954, `lw` at 0x4069ac.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xdc, including `sw` at 0x406894, `sw` at 0x406974, `sw` at 0x4069cc.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x7c, including `sw` at 0x4068a4, `sw` at 0x4068d8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x78, including `sw` at 0x4068b4, `sw` at 0x4068e8.
  The `sw` at 0x4069d4 stores 4 bytes to a0 (arg0 at entry) +0xe0.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x2c, including `sw` at 0x4069e0, `sw` at 0x4069f4, `sw` at 0x406a08.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0x4069e8, `lw` at 0x4069fc.
  The `sw` at 0x406a44 stores 4 bytes to a0 (arg0 at entry) +0x54.
  The `sw` at 0x406a50 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `jalr` at 0x4066f4 calls dmParamsIsPresent with a0=[a0+12], a1=0x414540, a2=a0 at entry (arg0), a3=a0+28, a4=[a0+12], a5=[a0+8], a6=[a0+4].
  The `jalr` at 0x406718 calls dmParamsGetFloat with a0=[a0+12], a1=0x414540, a2=?, a3=?.
  The `jalr` at 0x406774 calls getenv with a0=0x4143c0, a1=?, a2=?, a3=?.
  The `jalr` at 0x406800 calls printf with a0=0x414580, a1=one of 0x47ff50, 0x47ff58, a2=one of 0x414560, 0x414570, a3=sym(dvNoiseMode), a6=[sym(rollMode)].
  The `jalr` at 0x406828 calls dmParamsGetInt with a0=[a0+4], a1=0x414028, a2=?, a3=?.
  The `jalr` at 0x406860 calls vice_file with a0=0x4145a0, a1=0x546, a2=sym(mbNumber), a3=sym(videoMode).
  The `jalr` at 0x406884 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=0x0.
  The `jalr` at 0x4068fc calls dmParamsGetString with a0=[a0+8], a1=0x414000, a2=0x23280, a3=a0 at entry (arg0), a4=a0 at entry (arg0), a5=sym(mbNumber).
  The `jalr` at 0x406914 calls strcmp with a0=ret(dmParamsGetString), a1=0x47ff20, a2=?, a3=?.
  The `jalr` at 0x406940 calls vice_file with a0=0x4145b8, a1=0x2, a2=sym(videoMode), a3=?.
  The `jalr` at 0x406964 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=0x0.
  The `jalr` at 0x406998 calls vice_file with a0=0x4145d0, a1=0x1, a2=sym(videoMode), a3=?.
  The `jalr` at 0x4069bc calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=0x0.
  The `jalr` at 0x406a18 calls vice_etc_dramp with a0=[a0], a1=one of 0xc, 0x1d4c0, a2=a0 at entry (arg0), a3=([a0+44] | 0x50), a4=a0+28, a5=a0+28, a6=a0+28, a7=a0 at entry (arg0).
  The `jalr` at 0x406a34 calls dmic_dram_init_encode with a0=ret(vice_etc_dramp), a1=?, a2=?, a3=?.
  The `jalr` at 0x406a58 calls initCvLength with a0=?, a1=0x1800, a2=a0+28, a3=0x8000, a4=a0+28.
  The `jalr` at 0x406a64 calls initVLC16fromVLC with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406a74 calls buildQMShft with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x406a90 calls vice_event_start with a0=[a0], a1=a0+28, a2=?, a3=?.
  The `beq` branch at 0x406700 targets 0x406758, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `bc1f` branch at 0x406730 targets 0x406758, is taken when not (f0(=0x3fe0000000000000) < f1(=ret(dmParamsGetFloat)) (c.lt.d at 0x406728)), and falls through when f0(=0x3fe0000000000000) < f1(=ret(dmParamsGetFloat)) (c.lt.d at 0x406728).
  The `beq` branch at 0x406750 targets 0x406768 and is always taken.
  The `beq` branch at 0x406780 targets 0x406810, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `beq` branch at 0x40679c targets 0x4067b4, is taken when a1(=[sym(qno4passMode)]) == 0, and falls through when a1(=[sym(qno4passMode)]) != 0.
  The `beq` branch at 0x4067ac targets 0x4067bc and is always taken.
  The `beq` branch at 0x4067c4 targets 0x4067e0, is taken when a6(=[sym(rollMode)]) == 0, and falls through when a6(=[sym(rollMode)]) != 0.
  The `beq` branch at 0x4067d8 targets 0x4067ec and is always taken.
  The `beq` branch at 0x406808 targets 0x406818 and is always taken.
  The `bne` branch at 0x406838 targets 0x4068c0, is taken when v0(=ret(dmParamsGetInt)) != a2(=0x1e0), and falls through when v0(=ret(dmParamsGetInt)) == a2(=0x1e0).
  The `beq` branch at 0x4068b8 targets 0x4069d0 and is always taken.
  The `bne` branch at 0x406920 targets 0x406980, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x406978 targets 0x4069d0 and is always taken.
  The return at 0x406aa4 has v0 = 0x0.

- `dve_send` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x406ab0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x406ab0-0x4070bc (1548 bytes).
  It occupies 1548 bytes.
  The `lw` at 0x406afc loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x406b08 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x406c2c loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0x406cb0 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `lw` at 0x406ccc loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `lw` at 0x406d0c loads 4 bytes from a0 (arg0 at entry) +0x18.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x406d34, `lw` at 0x406d5c, `lw` at 0x406d6c.
  The `lw` at 0x406d44 loads 4 bytes from a0 (arg0 at entry) +0x14.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14, including `sw` at 0x406e50, `sw` at 0x406e6c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x406fd4, `lw` at 0x40703c.
  The `jalr` at 0x406b2c calls dmParamsCopyAllElems with a0=a4 at entry (arg4), a1=[a0+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=0x810fc.
  The `jalr` at 0x406b68 calls dmParamsCopyAllElems with a0=a5 at entry (arg5), a1=?, a2=?, a3=?.
  The `jalr` at 0x406b9c calls dmParamsGetEnum with a0=?, a1=0x414038, a2=?, a3=?.
  The `jalr` at 0x406bd8 calls dmParamsSetEnum with a0=?, a1=0x414038, a2=?, a3=0x3f0.
  The `jalr` at 0x406bf4 calls dmParamsSetEnum with a0=?, a1=0x414050, a2=0x44c, a3=?.
  The `jalr` at 0x406c34 calls dmParamsCopyAllElems with a0=a6 at entry (arg6), a1=[a0+12], a2=?, a3=a6 at entry (arg6).
  The `bgezall` at 0x406c88 calls _e_go [0x4066a0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=a4 at entry (arg4).
  The `bgezall` at 0x406ca0 calls needsConvert [0x4035f0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406cbc calls dmBufferGetSize with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x406cf0 calls dmSetError with a0=0x1777, a1=0x47ff08, a2=0x4145e8, a3=?.
  The `jalr` at 0x406d20 calls dmImageFrameSize with a0=?, a1=?, a2=?, a3=?, a4=[a0+24].
  The `jalr` at 0x406d74 calls dmBufferDestroyPool with a0=[a0+16], a1=?, a2=?, a3=?, a5=[a0+16], a7=[a0+16].
  The `jalr` at 0x406d84 calls dmParamsCreate with a0=sp-128, a1=?, a2=?, a3=?.
  The `jalr` at 0x406dc0 calls dmBufferSetPoolDefaults with a0=?, a1=0x2, a2=?, a3=0x0, a4=0x1.
  The `bgezall` at 0x406df4 calls _poolneeds [0x403190] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x406e0c calls dmBufferCreatePool with a0=?, a1=a0+16, a2=?, a3=?.
  The `jalr` at 0x406e40 calls dmParamsGetInt with a0=?, a1=0x414530, a2=?, a3=?.
  The `jalr` at 0x406e5c calls dmParamsDestroy with a0=?, a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x406e80 calls dmBufferAllocate with a0=[a0+16], a1=sp-152, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x406eac calls dmBufferMapData with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x406ec0 calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406ee4 calls dmICAnyToAny with a0=?, a1=ret(dmBufferMapData), a2=?, a3=?, a4=0x0.
  The `jalr` at 0x406f10 calls dmBufferSetSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406f3c calls dmBufferGetImageType with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x406f54 calls dmBufferSetImageType with a0=?, a1=ret(dmBufferGetImageType), a2=?, a3=?.
  The `jalr` at 0x406f80 calls dmBufferGetUSTMSCpair with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x406fa4 calls dmBufferSetUSTMSCpair with a0=?, a1=ret(dmBufferGetUSTMSCpair), a2=?, a3=?.
  The `jalr` at 0x406ff4 calls vice_dmbuf_send with a0=[a0], a1=?, a2=a0+136, a3=a0+100, a4=0x4.
  The `jalr` at 0x407020 calls dmSetError with a0=0x1777, a1=0x47ff08, a2=0x4145f8, a3=?.
  The `jalr` at 0x407044 calls vice_dms_geterrs with a0=[a0], a1=-0x1, a2=?, a3=?.
  The `jalr` at 0x40706c calls dmSetError with a0=0x1777, a1=0x47ff08, a2=0x414610, a3=?.
  The `jalr` at 0x407090 calls dmBufferFree with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x406b18 targets 0x406b50, is taken when at(=a4) == 0, and falls through when at(=a4) != 0.
  The `beq` branch at 0x406b38 targets 0x406b50, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x406b48 targets 0x4070a4 and is always taken.
  The `beq` branch at 0x406b54 targets 0x406c18, is taken when t1(=a5) == 0, and falls through when t1(=a5) != 0.
  The `beq` branch at 0x406b74 targets 0x406b8c, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x406b84 targets 0x4070a4 and is always taken.
  The `beq` branch at 0x406bb4 targets 0x406bc4, is taken when a2(=ret(dmParamsGetEnum)) == a3(=0x3f0), and falls through when a2(=ret(dmParamsGetEnum)) != a3(=0x3f0).
  The `beq` branch at 0x406c00 targets 0x406c18, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x406c10 targets 0x4070a4 and is always taken.
  The `beq` branch at 0x406c1c targets 0x406c58, is taken when a3(=a6) == 0, and falls through when a3(=a6) != 0.
  The `beq` branch at 0x406c40 targets 0x406c58, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x406c50 targets 0x4070a4 and is always taken.
  The `bne` branch at 0x406c5c targets 0x406c7c, is taken when a3(=a4) != 0, and falls through when a3(=a4) == 0.
  The `bne` branch at 0x406c68 targets 0x406c7c, is taken when a4(=a5) != 0, and falls through when a4(=a5) == 0.
  The `beq` branch at 0x406c74 targets 0x406cb4, is taken when a5(=a6) == 0, and falls through when a5(=a6) != 0.
  The `beq` branch at 0x406cd4 targets 0x406d08, is taken when v0(=ret(dmBufferGetSize)) >= at(=[a0+124]) (signed), and falls through when v0(=ret(dmBufferGetSize)) < at(=[a0+124]) (signed).
  The `beq` branch at 0x406d00 targets 0x4070a4 and is always taken.
  The `beq` branch at 0x406d10 targets 0x406fd0, is taken when a4(=[a0+24]) == 0, and falls through when a4(=[a0+24]) != 0.
  The `beq` branch at 0x406d38 targets 0x406d58, is taken when a5(=[a0+16]) == 0, and falls through when a5(=[a0+16]) != 0.
  The `beq` branch at 0x406d50 targets 0x406e64, is taken when a6(=[a0+20]) >= a7(=ret(dmImageFrameSize)) (signed), and falls through when a6(=[a0+20]) < a7(=ret(dmImageFrameSize)) (signed).
  The `beq` branch at 0x406d60 targets 0x406d7c, is taken when a7(=[a0+16]) == 0, and falls through when a7(=[a0+16]) != 0.
  The `beq` branch at 0x406d90 targets 0x406da8, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x406da0 targets 0x4070a4 and is always taken.
  The `beq` branch at 0x406dcc targets 0x406de4, is taken when v0(=ret(dmBufferSetPoolDefaults)) == 0, and falls through when v0(=ret(dmBufferSetPoolDefaults)) != 0.
  The `beq` branch at 0x406ddc targets 0x4070a4 and is always taken.
  The `beq` branch at 0x406e18 targets 0x406e30, is taken when v0(=ret(dmBufferCreatePool)) == 0, and falls through when v0(=ret(dmBufferCreatePool)) != 0.
  The `beq` branch at 0x406e28 targets 0x4070a4 and is always taken.
  The `beq` branch at 0x406e8c targets 0x406ea4, is taken when v0(=ret(dmBufferAllocate)) == 0, and falls through when v0(=ret(dmBufferAllocate)) != 0.
  The `beq` branch at 0x406e9c targets 0x4070a4 and is always taken.
  The `beq` branch at 0x406eec targets 0x406f04, is taken when v0(=ret(dmICAnyToAny)) == 0, and falls through when v0(=ret(dmICAnyToAny)) != 0.
  The `beq` branch at 0x406efc targets 0x4070a4 and is always taken.
  The `beq` branch at 0x406f1c targets 0x406f34, is taken when v0(=ret(dmBufferSetSize)) == 0, and falls through when v0(=ret(dmBufferSetSize)) != 0.
  The `beq` branch at 0x406f2c targets 0x4070a4 and is always taken.
  The `beq` branch at 0x406f60 targets 0x406f78, is taken when v0(=ret(dmBufferSetImageType)) == 0, and falls through when v0(=ret(dmBufferSetImageType)) != 0.
  The `beq` branch at 0x406f70 targets 0x4070a4 and is always taken.
  The `beq` branch at 0x406fb0 targets 0x406fc8, is taken when v0(=ret(dmBufferSetUSTMSCpair)) == 0, and falls through when v0(=ret(dmBufferSetUSTMSCpair)) != 0.
  The `beq` branch at 0x406fc0 targets 0x4070a4 and is always taken.
  The `bne` branch at 0x407004 targets 0x407038, is taken when v0(=ret(vice_dmbuf_send)) != a1(=-0x1), and falls through when v0(=ret(vice_dmbuf_send)) == a1(=-0x1).
  The `beq` branch at 0x407030 targets 0x40707c and is always taken.
  The `beq` branch at 0x407050 targets 0x40707c, is taken when v0(=ret(vice_dms_geterrs)) == 0, and falls through when v0(=ret(vice_dms_geterrs)) != 0.
  The `beq` branch at 0x407080 targets 0x407098, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The return at 0x4070b4 has v0 = one of -0x1, ?.

- `dv_recv` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x4070c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x4070c0-0x407690 (1488 bytes).
  It occupies 1488 bytes.
  The `lw` at 0x4070f8 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x407104 loads 4 bytes from a0 (arg0 at entry) +0x4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x74, including `lw` at 0x407120, `lw` at 0x4074c4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x18, including `lw` at 0x40712c, `lw` at 0x40749c.
  The `sw` at 0x407158 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `lw` at 0x407168 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x407174 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x4071c0 loads 4 bytes from a0 (arg0 at entry) +0x84.
  7 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4071d8, `lw` at 0x4071e0, `lw` at 0x407228.
  The `lw` at 0x407270 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `sw` at 0x4072a8 stores 4 bytes to ([0x47fef4] + ([0x47fef0] << 0x2)) +0x0.
  The `sw` at 0x4072c8 stores 4 bytes to ([0x47fef8] + ([0x47fef0] << 0x2)) +0x0.
  The `sw` at 0x4072e8 stores 4 bytes to ([0x47fefc] + ([0x47fef0] << 0x2)) +0x0.
  2 such `lw` accesses load 4 bytes from ([0x47fefc] + ([0x47fef0] << 0x2)) +0x0, including `lw` at 0x407358, `lw` at 0x4073a4.
  2 such `lw` accesses load 4 bytes from ([0x47fef8] + ([0x47fef0] << 0x2)) +0x0, including `lw` at 0x40736c, `lw` at 0x4073d4.
  The `lw` at 0x407390 loads 4 bytes from ([0x47fef4] + ([0x47fef0] << 0x2)) +0x0.
  The `lw` at 0x4073ec loads 4 bytes from ([0x47fef4] + ([0x47fef0]-1 << 0x2)) +0x0.
  The `sw` at 0x407668 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x407140 calls dmImageFrameSize with a0=[a0+4], a1=[a0+8], a2=a0 at entry (arg0), a3=a3 at entry (arg3), a5=0x80aec.
  The `jalr` at 0x407190 calls vice_dmbuf_recv with a0=[a0], a1=sp-164, a2=?, a3=a0+176.
  The `jalr` at 0x4071e8 calls printf with a0=0x414620, a1=?, a2=?, a3=?, a4=[a0+132].
  The `jalr` at 0x407208 calls dmSetError with a0=0x1776, a1=0x414648, a2=0x414658, a3=?.
  The `jalr` at 0x40724c calls dmSetError with a0=0x1778, a1=0x47ff08, a2=0x414670, a3=?, a4=0xe000.
  The `jalr` at 0x407278 calls dmBufferSetSize with a0=?, a1=[a0+120], a2=-0x1, a3=?, a4=0xe000.
  The `jalr` at 0x40748c calls printf with a0=0x414680, a1=?, a2=?, a3=?, a7=[0x47feec]-1.
  The `jalr` at 0x4074b0 calls dmImageFrameSize with a0=[a0+8], a1=[a0+24], a2=?, a3=?.
  The `jalr` at 0x4074d0 calls dmBufferAllocate with a0=[a0+116], a1=sp-120, a2=?, a3=?.
  The `jalr` at 0x407508 calls dmParamsSetEnum with a0=[a0+4], a1=0x414038, a2=0x3f0, a3=?.
  The `jalr` at 0x407534 calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x407548 calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40756c calls dmICAnyToAny with a0=?, a1=ret(dmBufferMapData), a2=[a0+4], a3=[a0+8], a4=0x0.
  The `jalr` at 0x407598 calls dmBufferSetSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4075c4 calls dmBufferGetImageType with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4075dc calls dmBufferSetImageType with a0=?, a1=ret(dmBufferGetImageType), a2=?, a3=?.
  The `jalr` at 0x407608 calls dmBufferGetUSTMSCpair with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40762c calls dmBufferSetUSTMSCpair with a0=?, a1=ret(dmBufferGetUSTMSCpair), a2=?, a3=?.
  The `jalr` at 0x407658 calls dmBufferFree with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x407130 targets 0x407170, is taken when at(=[a0+24]) == 0, and falls through when at(=[a0+24]) != 0.
  The `bne` branch at 0x4071a8 targets 0x407220, is taken when a1(=ret(vice_dmbuf_recv)) != a2(=-0x1), and falls through when a1(=ret(vice_dmbuf_recv)) == a2(=-0x1).
  The `beq` branch at 0x4071b4 targets 0x4071f0, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x4071c4 targets 0x4071f0, is taken when a4(=[a0+132]) == 0, and falls through when a4(=[a0+132]) != 0.
  The `beq` branch at 0x407218 targets 0x407678 and is always taken.
  The `bne` branch at 0x407230 targets 0x407264, is taken when a3(?) != a4(=0xe000), and falls through when a3(?) == a4(=0xe000).
  The `beq` branch at 0x40725c targets 0x407678 and is always taken.
  The `beq` branch at 0x407284 targets 0x4072f8, is taken when a1(=[0x47feec]) == 0, and falls through when a1(=[0x47feec]) != 0.
  The `beq` branch at 0x4072fc targets 0x407498, is taken when a6(=[0x47feec]) == 0, and falls through when a6(=[0x47feec]) != 0.
  The `bne` branch at 0x40730c targets 0x407498, is taken when a7(=[0x47feec]) != t0(=[0x47fef0]), and falls through when a7(=[0x47feec]) == t0(=[0x47fef0]).
  The `beq` branch at 0x40733c targets 0x40741c, is taken when t1(=[0x47fef0]) >= t2(=[0x47feec]) (signed), and falls through when t1(=[0x47fef0]) < t2(=[0x47feec]) (signed).
  The `beq` branch at 0x4073b8 targets 0x4073fc, is taken when t8(=[0x47fef0]) == 0, and falls through when t8(=[0x47fef0]) != 0.
  The `bne` branch at 0x407414 targets 0x407344, is taken when a4(=[0x47fef0]) < a5(=[0x47feec]) (signed), and falls through when a4(=[0x47fef0]) >= a5(=[0x47feec]) (signed).
  The `beq` branch at 0x407420 targets 0x407474, is taken when a7(=[0x47feec]-1) == 0, and falls through when a7(=[0x47feec]-1) != 0.
  The `beq` branch at 0x4074a0 targets 0x40766c, is taken when a1(=[a0+24]) == 0, and falls through when a1(=[a0+24]) != 0.
  The `beq` branch at 0x4074dc targets 0x4074f4, is taken when v0(=ret(dmBufferAllocate)) == 0, and falls through when v0(=ret(dmBufferAllocate)) != 0.
  The `beq` branch at 0x4074ec targets 0x407678 and is always taken.
  The `beq` branch at 0x407514 targets 0x40752c, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x407524 targets 0x407678 and is always taken.
  The `beq` branch at 0x407574 targets 0x40758c, is taken when v0(=ret(dmICAnyToAny)) == 0, and falls through when v0(=ret(dmICAnyToAny)) != 0.
  The `beq` branch at 0x407584 targets 0x407678 and is always taken.
  The `beq` branch at 0x4075a4 targets 0x4075bc, is taken when v0(=ret(dmBufferSetSize)) == 0, and falls through when v0(=ret(dmBufferSetSize)) != 0.
  The `beq` branch at 0x4075b4 targets 0x407678 and is always taken.
  The `beq` branch at 0x4075e8 targets 0x407600, is taken when v0(=ret(dmBufferSetImageType)) == 0, and falls through when v0(=ret(dmBufferSetImageType)) != 0.
  The `beq` branch at 0x4075f8 targets 0x407678 and is always taken.
  The `beq` branch at 0x407638 targets 0x407650, is taken when v0(=ret(dmBufferSetUSTMSCpair)) == 0, and falls through when v0(=ret(dmBufferSetUSTMSCpair)) != 0.
  The `beq` branch at 0x407648 targets 0x407678 and is always taken.
  The return at 0x407688 has v0 = one of ?, -0x1.

- `dve_recv` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x407690 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x407690-0x4078f4 (612 bytes).
  It occupies 612 bytes.
  The `lw` at 0x4076d0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x4076dc loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0x407720 loads 4 bytes from a0 (arg0 at entry) +0x84.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x407738, `lw` at 0x407740, `lw` at 0x407788.
  The `sw` at 0x4077dc stores 4 bytes to sym(dvxformpointer) +0x0.
  The `lw` at 0x4077e4 loads 4 bytes from sym(dvbitspool) +0x0.
  The `sw` at 0x40782c stores 4 bytes to sym(dvbitpointer) +0x0.
  The `lw` at 0x407834 loads 4 bytes from sym(dvxformpointer) +0x0.
  The `lw` at 0x40783c loads 4 bytes from sym(dvbitpointer) +0x0.
  The `lw` at 0x407854 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `sw` at 0x4078bc stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x4076f0 calls vice_dmbuf_recv with a0=[a0], a1=sp-124, a2=[a0+116], a3=a0+176, a4=sp-116, a5=0x8051c.
  The `jalr` at 0x407748 calls printf with a0=0x414620, a1=?, a2=?, a3=?, a6=ret(vice_dmbuf_recv), a7=-0x1.
  The `jalr` at 0x407768 calls dmSetError with a0=0x1776, a1=0x414648, a2=0x414658, a3=?.
  The `jalr` at 0x4077ac calls dmSetError with a0=0x1777, a1=0x47ff08, a2=0x414670, a3=?, a4=0xe000, a6=ret(vice_dmbuf_recv), a7=-0x1.
  The `jalr` at 0x4077cc calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?, a4=0xe000, a6=ret(vice_dmbuf_recv), a7=-0x1.
  The `jalr` at 0x4077f0 calls dmBufferAllocate with a0=[sym(dvbitspool)], a1=sp-120, a2=?, a3=?.
  The `jalr` at 0x40781c calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x407844 calls codeBuffer with a0=[sym(dvxformpointer)], a1=[sym(dvbitpointer)], a2=?, a3=?.
  The `jalr` at 0x40785c calls dmBufferSetSize with a0=?, a1=[a0+120], a2=?, a3=?.
  The `jalr` at 0x407888 calls dmBufferGetUSTMSCpair with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4078ac calls dmBufferSetUSTMSCpair with a0=?, a1=ret(dmBufferGetUSTMSCpair), a2=?, a3=?.
  The `jalr` at 0x4078c8 calls dmBufferFree with a0=?, a1=?, a2=?, a3=?, a4=a1 at entry (arg1).
  The `bne` branch at 0x407708 targets 0x407780, is taken when a6(=ret(vice_dmbuf_recv)) != a7(=-0x1), and falls through when a6(=ret(vice_dmbuf_recv)) == a7(=-0x1).
  The `beq` branch at 0x407714 targets 0x407750, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x407724 targets 0x407750, is taken when t1(=[a0+132]) == 0, and falls through when t1(=[a0+132]) != 0.
  The `beq` branch at 0x407778 targets 0x4078dc and is always taken.
  The `bne` branch at 0x407790 targets 0x4077c4, is taken when a3(?) != a4(=0xe000), and falls through when a3(?) == a4(=0xe000).
  The `beq` branch at 0x4077bc targets 0x4078dc and is always taken.
  The `beq` branch at 0x4077fc targets 0x407814, is taken when v0(=ret(dmBufferAllocate)) == 0, and falls through when v0(=ret(dmBufferAllocate)) != 0.
  The `beq` branch at 0x40780c targets 0x4078dc and is always taken.
  The `beq` branch at 0x407868 targets 0x407880, is taken when v0(=ret(dmBufferSetSize)) == 0, and falls through when v0(=ret(dmBufferSetSize)) != 0.
  The `beq` branch at 0x407878 targets 0x4078dc and is always taken.
  The return at 0x4078ec has v0 = one of ?, -0x1.

- `zoneFromIndexTab` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x407900 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x407900-0x407a18 (280 bytes).
  It occupies 280 bytes.
  The `lw` at 0x40793c loads 4 bytes from abs 0x47fe48.
  2 such `lh` accesses load 2 bytes from ?, including `lh` at 0x407974, `lh` at 0x4079bc.
  The `lw` at 0x407984 loads 4 bytes from abs 0x47fe44.
  The `lw` at 0x4079d4 loads 4 bytes from abs 0x47fe40.
  The `lh` at 0x4079f0 loads 2 bytes from (sym(zone8x8Table) + ((a1 + (a0 << 0x3)) + (a1 + (a0 << 0x3)))) +0x0.
  The `beq` branch at 0x407924 targets 0x4079d4, is taken when v0(=a2) == 0, and falls through when v0(=a2) != 0.
  The `bne` branch at 0x407934 targets 0x407984, is taken when a0 < 0x4 (signed), and falls through when a0 >= 0x4 (signed).
  The `beq` branch at 0x40797c targets 0x407a04 and is always taken.
  The `beq` branch at 0x4079c4 targets 0x407a04 and is always taken.
  The `beq` branch at 0x4079fc targets 0x407a04 and is always taken.
  The return at 0x407a10 has v0 = one of ?, [(sym(zone8x8Table) + ((a1 + (a0 << 0x3)) + (a1 + (a0 << 0x3))))]:2.
  The instructions from 0x4079cc to 0x4079d0 are not reached by any path from the entry, and their branches are not listed.

- `qScale` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x407a20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x407a20-0x407ab8 (152 bytes).
  It occupies 152 bytes.
  The `lbu` at 0x407a78 loads 1 byte from (a3 + sym(qnoShiftTable)) +0x0.
  The `lbu` at 0x407a98 loads 1 byte from ?.
  The `jalr` at 0x407a5c calls zoneFromIndexTab with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x407ab0 has v0 = ?.

- `qScaleShft` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x407ac0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x407ac0-0x407b58 (152 bytes).
  It occupies 152 bytes.
  The `lbu` at 0x407b18 loads 1 byte from (a3 + sym(qnoShiftTable)) +0x0.
  The `lbu` at 0x407b38 loads 1 byte from ?.
  The `jalr` at 0x407afc calls zoneFromIndexTab with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x407b50 has v0 = ?.

- `scaleBlockInit` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x407b60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x407b60-0x407bfc (156 bytes).
  It occupies 156 bytes.
  The `lh` at 0x407bac loads 2 bytes from ?.
  The `sh` at 0x407bcc stores 2 bytes to ?.
  The `bne` branch at 0x407b7c targets 0x407bec, is taken when at(=a1) != v0(=0x3), and falls through when at(=a1) == v0(=0x3).
  The `beq` branch at 0x407b94 targets 0x407bec and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x407be4 targets 0x407b9c, is taken when a1(?) < 0x40 (signed), and falls through when a1(?) >= 0x40 (signed).
  The return at 0x407bf4 has v0 = 0x3.

- `scaleBlock` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x407c00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x407c00-0x407d4c (332 bytes).
  It occupies 332 bytes.
  The `lw` at 0x407c28 loads 4 bytes from abs 0x47fe80.
  The `lh` at 0x407c58 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0x407c60 stores 2 bytes to a1 (arg1 at entry) +0x0.
  3 such `lh` accesses load 2 bytes from ?, including `lh` at 0x407c8c, `lh` at 0x407ca8, `lh` at 0x407cf4.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x407cbc, `lbu` at 0x407d04.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x407cd8, `sh` at 0x407d1c.
  The `beq` branch at 0x407c74 targets 0x407d3c and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bgez` branch at 0x407c90 targets 0x407ce4, is taken when a6(?) >= 0 (signed), and falls through when a6(?) < 0 (signed).
  The `beq` branch at 0x407cdc targets 0x407d20 and is always taken.
  The `bne` branch at 0x407d34 targets 0x407c7c, is taken when t8(?) < 0x40 (signed), and falls through when t8(?) >= 0x40 (signed).
  The return at 0x407d44 has v0 = 0x1.

- `buildQM` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x407d50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x407d50-0x4080ac (860 bytes).
  It occupies 860 bytes.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x407e78, `sb` at 0x408008.
  The `jalr` at 0x407e24 calls qScale with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x407fb4 calls qScale with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x407d78 targets 0x407f10, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x407d8c targets 0x407f08 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x407d9c targets 0x407db4, is taken when a1(?) != a2(=0x3), and falls through when a1(?) == a2(=0x3).
  The `beq` branch at 0x407dac targets 0x407dbc and is always taken.
  The `beq` branch at 0x407dc8 targets 0x407eec and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x407ddc targets 0x407ed0 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x407df0 targets 0x407eb4 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x407e04 targets 0x407e98 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x407e90 targets 0x407e0c, is taken when t1(?) < 0x8 (signed), and falls through when t1(?) >= 0x8 (signed).
  The `bne` branch at 0x407eac targets 0x407df8, is taken when v0(?) < 0x8 (signed), and falls through when v0(?) >= 0x8 (signed).
  The `bne` branch at 0x407ec8 targets 0x407de4, is taken when a0(?) < 0x10 (signed), and falls through when a0(?) >= 0x10 (signed).
  The `bne` branch at 0x407ee4 targets 0x407dd0, is taken when a2(?) < 0x2 (signed), and falls through when a2(?) >= 0x2 (signed).
  The `bne` branch at 0x407f00 targets 0x407d94, is taken when a4(?) < 0x4 (signed), and falls through when a4(?) >= 0x4 (signed).
  The `beq` branch at 0x407f08 targets 0x408098 and is always taken.
  The `beq` branch at 0x407f1c targets 0x408098 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x407f2c targets 0x407f44, is taken when a7(?) != t0(=0x3), and falls through when a7(?) == t0(=0x3).
  The `beq` branch at 0x407f3c targets 0x407f4c and is always taken.
  The `beq` branch at 0x407f58 targets 0x40807c and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x407f6c targets 0x408060 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x407f80 targets 0x408044 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x407f94 targets 0x408028 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x408020 targets 0x407f9c, is taken when at(?) < 0x8 (signed), and falls through when at(?) >= 0x8 (signed).
  The `bne` branch at 0x40803c targets 0x407f88, is taken when a4(?) < 0x8 (signed), and falls through when a4(?) >= 0x8 (signed).
  The `bne` branch at 0x408058 targets 0x407f74, is taken when a6(?) < 0x10 (signed), and falls through when a6(?) >= 0x10 (signed).
  The `bne` branch at 0x408074 targets 0x407f60, is taken when t0(?) < 0x2 (signed), and falls through when t0(?) >= 0x2 (signed).
  The `bne` branch at 0x408090 targets 0x407f24, is taken when t2(?) < 0x4 (signed), and falls through when t2(?) >= 0x4 (signed).
  The return at 0x4080a4 has v0 = ?.

- `buildQMShft` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x4080b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x4080b0-0x4083fc (844 bytes).
  It occupies 844 bytes.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x4081d0, `sb` at 0x408358.
  The `jalr` at 0x408180 calls qScaleShft with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x408308 calls qScaleShft with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4080d8 targets 0x408268, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x4080ec targets 0x408260 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x4080fc targets 0x408114, is taken when a1(?) != a2(=0x3), and falls through when a1(?) == a2(=0x3).
  The `beq` branch at 0x40810c targets 0x408118 and is always taken.
  The `beq` branch at 0x408124 targets 0x408244 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x408138 targets 0x408228 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x40814c targets 0x40820c and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x408160 targets 0x4081f0 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x4081e8 targets 0x408168, is taken when t0(?) < 0x8 (signed), and falls through when t0(?) >= 0x8 (signed).
  The `bne` branch at 0x408204 targets 0x408154, is taken when t3(?) < 0x8 (signed), and falls through when t3(?) >= 0x8 (signed).
  The `bne` branch at 0x408220 targets 0x408140, is taken when t9(?) < 0x10 (signed), and falls through when t9(?) >= 0x10 (signed).
  The `bne` branch at 0x40823c targets 0x40812c, is taken when at(?) < 0x2 (signed), and falls through when at(?) >= 0x2 (signed).
  The `bne` branch at 0x408258 targets 0x4080f4, is taken when v1(?) < 0x4 (signed), and falls through when v1(?) >= 0x4 (signed).
  The `beq` branch at 0x408260 targets 0x4083e8 and is always taken.
  The `beq` branch at 0x408274 targets 0x4083e8 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x408284 targets 0x40829c, is taken when a2(?) != a3(=0x3), and falls through when a2(?) == a3(=0x3).
  The `beq` branch at 0x408294 targets 0x4082a0 and is always taken.
  The `beq` branch at 0x4082ac targets 0x4083cc and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x4082c0 targets 0x4083b0 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x4082d4 targets 0x408394 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x4082e8 targets 0x408378 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x408370 targets 0x4082f0, is taken when t1(?) < 0x8 (signed), and falls through when t1(?) >= 0x8 (signed).
  The `bne` branch at 0x40838c targets 0x4082dc, is taken when t8(?) < 0x8 (signed), and falls through when t8(?) >= 0x8 (signed).
  The `bne` branch at 0x4083a8 targets 0x4082c8, is taken when ra(?) < 0x10 (signed), and falls through when ra(?) >= 0x10 (signed).
  The `bne` branch at 0x4083c4 targets 0x4082b4, is taken when v0(?) < 0x2 (signed), and falls through when v0(?) >= 0x2 (signed).
  The `bne` branch at 0x4083e0 targets 0x40827c, is taken when a0(?) < 0x4 (signed), and falls through when a0(?) >= 0x4 (signed).
  The return at 0x4083f4 has v0 = ?.

- `loadMSPEncode` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x408400 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x408400-0x4085ec (492 bytes).
  It occupies 492 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x47fe30, including `lw` at 0x408440, `lw` at 0x408464.
  4 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x408460, `lhu` at 0x408480, `lhu` at 0x4084b0.
  2 such `lw` accesses load 4 bytes from abs 0x47fe34, including `lw` at 0x408490, `lw` at 0x4084b4.
  3 such `lw` accesses load 4 bytes from abs 0x47ff04, including `lw` at 0x4084e4, `lw` at 0x4084fc, `lw` at 0x4085a8.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4084f4, `sw` at 0x40850c, `sw` at 0x4085bc.
  2 such `lw` accesses load 4 bytes from abs 0x47fe2c, including `lw` at 0x408568, `lw` at 0x408584.
  2 such `lh` accesses load 2 bytes from ?, including `lh` at 0x40857c, `lh` at 0x408594.
  The `beq` branch at 0x408424 targets 0x408554 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x408438 targets 0x408538 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x408530 targets 0x408440, is taken when ra(?) < 0x8 (signed), and falls through when ra(?) >= 0x8 (signed).
  The `bne` branch at 0x40854c targets 0x40842c, is taken when v1(?) < 0x8 (signed), and falls through when v1(?) >= 0x8 (signed).
  The `beq` branch at 0x408560 targets 0x4085dc and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x4085d4 targets 0x408568, is taken when a7(?) < 0x18 (signed), and falls through when a7(?) >= 0x18 (signed).
  The return at 0x4085e4 has v0 = ?.

- `difference` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x4085f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x4085f0-0x4087b0 (448 bytes).
  It occupies 448 bytes.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x40860c, `sw` at 0x40879c.
  6 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x408660, `lbu` at 0x40868c, `lbu` at 0x4086bc.
  The `beq` branch at 0x40861c targets 0x408794 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x408630 targets 0x408778 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x408770 targets 0x408638, is taken when a0(?) < 0x8 (signed), and falls through when a0(?) >= 0x8 (signed).
  The `bne` branch at 0x40878c targets 0x408624, is taken when t0(?) < 0x4 (signed), and falls through when t0(?) >= 0x4 (signed).
  The return at 0x4087a8 has v0 = a2.

- `setMem` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x4087b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x4087b0-0x408858 (168 bytes).
  It occupies 168 bytes.
  The `sw` at 0x40880c stores 4 bytes to ?.
  The `beq` branch at 0x4087f0 targets 0x408848, is taken when at(=a0) >= v0(?) (signed), and falls through when at(=a0) < v0(?) (signed).
  The `bne` branch at 0x408840 targets 0x4087f8, is taken when a3(?) < a4(?) (signed), and falls through when a3(?) >= a4(?) (signed).
  The return at 0x408850 has v0 = ?.

- `loadMSPDecode` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x408860 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x408860-0x409020 (1984 bytes).
  It occupies 1984 bytes.
  3 such `lw` accesses load 4 bytes from sym(qnoShiftTable) +0x0, including `lw` at 0x40887c, `lw` at 0x40888c, `lw` at 0x40889c.
  The `sw` at 0x408884 stores 4 bytes to [0x47ff04] +0x6d8.
  The `sw` at 0x408894 stores 4 bytes to [0x47ff04] +0xed8.
  The `sw` at 0x4088a4 stores 4 bytes to [0x47ff04] +0x16d8.
  6 such `lh` accesses load 2 bytes from ?, including `lh` at 0x4088d8, `lh` at 0x4088f0, `lh` at 0x4089bc.
  11 such `sw` accesses store 4 bytes to ?, including `sw` at 0x408910, `sw` at 0x408928, `sw` at 0x408940.
  The `sw` at 0x408b7c stores 4 bytes to [0x47ff04] +0x6d4.
  The `sw` at 0x408b94 stores 4 bytes to [0x47ff04] +0xed4.
  The `sw` at 0x408bac stores 4 bytes to [0x47ff04] +0x16d4.
  The `sw` at 0x408bc8 stores 4 bytes to [0x47ff04] +0x6d0.
  The `sw` at 0x408be0 stores 4 bytes to [0x47ff04] +0xed0.
  The `sw` at 0x408bf8 stores 4 bytes to [0x47ff04] +0x16d0.
  12 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x408c2c, `lhu` at 0x408c40, `lhu` at 0x408cc0.
  The `sw` at 0x408fd8 stores 4 bytes to [0x47ff04] +0xf14.
  The `sw` at 0x408fe0 stores 4 bytes to [0x47ff04] +0x710.
  The `sw` at 0x408fe8 stores 4 bytes to [0x47ff04] +0xf10.
  The `sw` at 0x408ff0 stores 4 bytes to [0x47ff04] +0x1710.
  The `sw` at 0x408ff8 stores 4 bytes to [0x47ff04] +0x720.
  The `sw` at 0x409000 stores 4 bytes to [0x47ff04] +0xf20.
  The `sw` at 0x409008 stores 4 bytes to [0x47ff04] +0x1720.
  The `bgezall` at 0x408f8c calls setMem [0x4087b0] with a0=0x8000, a1=0x80, a2=0x4, a3=0x0.
  The `bgezall` at 0x408fac calls setMem [0x4087b0] with a0=0x8800, a1=0x80, a2=0x4, a3=0x0.
  The `bgezall` at 0x408fcc calls setMem [0x4087b0] with a0=0x9000, a1=0x80, a2=0x4, a3=0x0.
  The `beq` branch at 0x4088bc targets 0x40896c and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x408964 targets 0x4088c4, is taken when a3(?) < 0x18 (signed), and falls through when a3(?) >= 0x18 (signed).
  The `beq` branch at 0x408980 targets 0x408a68 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x408994 targets 0x408a4c and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x408a44 targets 0x40899c, is taken when a2(?) < 0x8 (signed), and falls through when a2(?) >= 0x8 (signed).
  The `bne` branch at 0x408a60 targets 0x408988, is taken when t8(?) < 0x8 (signed), and falls through when t8(?) >= 0x8 (signed).
  The `beq` branch at 0x408a7c targets 0x408b64 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x408a90 targets 0x408b48 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x408b40 targets 0x408a98, is taken when v1(?) < 0x8 (signed), and falls through when v1(?) >= 0x8 (signed).
  The `bne` branch at 0x408b5c targets 0x408a84, is taken when t1(?) < 0x8 (signed), and falls through when t1(?) >= 0x8 (signed).
  The `beq` branch at 0x408c10 targets 0x408c90 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x408c88 targets 0x408c18, is taken when at(?) < 0x40 (signed), and falls through when at(?) >= 0x40 (signed).
  The `beq` branch at 0x408ca4 targets 0x408d24 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x408d1c targets 0x408cac, is taken when a7(?) < 0x40 (signed), and falls through when a7(?) >= 0x40 (signed).
  The `beq` branch at 0x408d38 targets 0x408db8 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x408db0 targets 0x408d40, is taken when v1(?) < 0x40 (signed), and falls through when v1(?) >= 0x40 (signed).
  The `beq` branch at 0x408dcc targets 0x408e4c and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x408e44 targets 0x408dd4, is taken when t1(?) < 0x40 (signed), and falls through when t1(?) >= 0x40 (signed).
  The `beq` branch at 0x408e60 targets 0x408ee0 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x408ed8 targets 0x408e68, is taken when a1(?) < 0x40 (signed), and falls through when a1(?) >= 0x40 (signed).
  The `beq` branch at 0x408ef4 targets 0x408f74 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x408f6c targets 0x408efc, is taken when t3(?) < 0x40 (signed), and falls through when t3(?) >= 0x40 (signed).
  The return at 0x409018 has v0 = [0x47ff04].

- `dmic_dram_init_decode` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x409020 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x409020-0x409064 (68 bytes).
  It occupies 68 bytes.
  The `jalr` at 0x409048 calls loadMSPDecode with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x40905c has v0 = ret(loadMSPDecode).

- `dmic_dram_init_encode` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x409070 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x409070-0x4090b4 (68 bytes).
  It occupies 68 bytes.
  The `jalr` at 0x409098 calls loadMSPEncode with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x4090ac has v0 = ret(loadMSPEncode).

- `codeBuffer` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x4090c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x4090c0-0x409af4 (2612 bytes).
  It occupies 2612 bytes.
  The `sw` at 0x4090f8 stores 4 bytes to sym(difSeqCnt) +0x0.
  The `sw` at 0x409100 stores 4 bytes to sym(difBlkCnt) +0x0.
  3 such `lw` accesses load 4 bytes from sym(videoMode) +0x0, including `lw` at 0x409108, `lw` at 0x409130, `lw` at 0x409a7c.
  The `sw` at 0x40916c stores 4 bytes to sym(globalQNO) +0x0.
  The `sw` at 0x409174 stores 4 bytes to sym(lostBits) +0x0.
  The `sw` at 0x40917c stores 4 bytes to sym(unusedBits) +0x0.
  2 such `sw` accesses store 4 bytes to sym(DBG_Mode) +0x0, including `sw` at 0x409184, `sw` at 0x409954.
  20 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4091d4, `lw` at 0x4091fc, `lw` at 0x4092d0.
  18 such `lh` accesses load 2 bytes from ?, including `lh` at 0x409218, `lh` at 0x409248, `lh` at 0x40929c.
  19 such `sw` accesses store 4 bytes to ?, including `sw` at 0x409240, `sw` at 0x409270, `sw` at 0x409294.
  12 such `sh` accesses store 2 bytes to ?, including `sh` at 0x4092b0, `sh` at 0x4092d4, `sh` at 0x40938c.
  2 such `lw` accesses load 4 bytes from sym(DBG_Mode) +0x0, including `lw` at 0x409860, `lw` at 0x409ad0.
  The `lw` at 0x409a94 loads 4 bytes from sym(dvNoiseMode) +0x0.
  The `lw` at 0x409aac loads 4 bytes from sym(globalQNO) +0x0.
  The `lw` at 0x409ab4 loads 4 bytes from sym(mbNumber) +0x0.
  The `jalr` at 0x409980 calls segGetBits with a0=0x481fa8, a1=?, a2=?, a3=?.
  The `jalr` at 0x4099e4 calls writeHeader with a0=?, a1=ret(segGetBits), a2=?, a3=?.
  The `jalr` at 0x409a14 calls writeAudio with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x409a34 calls writeSegment64 with a0=0x4822c8, a1=?, a2=?, a3=?.
  The `jalr` at 0x409a88 calls addHeaderInfo with a0=a1 at entry (arg1), a1=?, a2=one of 0x10e, 0x144, 0x7eaec, a3=?.
  The `jalr` at 0x409ad8 calls printf with a0=0x4146a0, a1=?, a2=?, a3=?, a4=[sym(DBG_Mode)], a5=[sym(mbNumber)], a6=[sym(globalQNO)].
  The `bne` branch at 0x40910c targets 0x40912c, is taken when at(=[sym(videoMode)]) != 0, and falls through when at(=[sym(videoMode)]) == 0.
  The `beq` branch at 0x409124 targets 0x409168 and is always taken.
  The `bne` branch at 0x409138 targets 0x409158, is taken when a5(=[sym(videoMode)]) != a6(=0x1), and falls through when a5(=[sym(videoMode)]) == a6(=0x1).
  The `beq` branch at 0x409150 targets 0x409168 and is always taken.
  The `beq` branch at 0x4091a0 targets 0x409a74, is taken when t2(=0x0) >= t3(=one of 0x10e, 0x144) (signed), and falls through when t2(=0x0) < t3(=one of 0x10e, 0x144) (signed).
  The `beq` branch at 0x4091b4 targets 0x409974 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x4093b8 targets 0x4093d4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x4093cc targets 0x4093e0 and is always taken.
  The `beq` branch at 0x40958c targets 0x4095a8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x4095a0 targets 0x4095b4 and is always taken.
  The `bne` branch at 0x40996c targets 0x4091bc, is taken when t3(?) < 0x5 (signed), and falls through when t3(?) >= 0x5 (signed).
  The `bltz` branch at 0x409994 targets 0x4099b4, is taken when a1(=ret(segGetBits)) < 0 (signed), and falls through when a1(=ret(segGetBits)) >= 0 (signed).
  The `beq` branch at 0x4099ac targets 0x4099c4 and is always taken.
  The `bne` branch at 0x4099d4 targets 0x4099f4, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x409a04 targets 0x409a24, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0x409a6c targets 0x4091a8, is taken when a1(?) < a2(=one of 0x10e, 0x144) (signed), and falls through when a1(?) >= a2(=one of 0x10e, 0x144) (signed).
  The `beq` branch at 0x409a98 targets 0x409ae0, is taken when a2(=[sym(dvNoiseMode)]) == 0, and falls through when a2(=[sym(dvNoiseMode)]) != 0.
  The return at 0x409aec has v0 = one of ret(addHeaderInfo), ret(printf).

- `initCvLength` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x409b00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x409b00-0x409bb8 (184 bytes).
  It occupies 184 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x47fe64, including `lw` at 0x409b30, `lw` at 0x409b80.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x409b40, `sb` at 0x409b88.
  The `beq` branch at 0x409b24 targets 0x409b60 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x409b58 targets 0x409b2c, is taken when a1(?) < 0x3e (signed), and falls through when a1(?) >= 0x3e (signed).
  The `beq` branch at 0x409b70 targets 0x409ba8 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x409ba0 targets 0x409b78, is taken when t0(?) < 0x100 (signed), and falls through when t0(?) >= 0x100 (signed).
  The return at 0x409bb0 has v0 = 0x1.

- `initVLC16fromVLC` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x409bc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x409bc0-0x409d94 (468 bytes).
  It occupies 468 bytes.
  The `lw` at 0x409bd4 loads 4 bytes from abs 0x47fe90.
  The `lw` at 0x409bdc loads 4 bytes from abs 0x47fe60.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x409c3c, `lw` at 0x409cac.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x409c70, `sw` at 0x409d28.
  The `lbu` at 0x409cec loads 1 byte from ?.
  The `beq` branch at 0x409bf0 targets 0x409d84 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x409c04 targets 0x409d68 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x409c44 targets 0x409d4c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x409c84 targets 0x409d4c, is taken when a6(=0x0) >= a7(?) (signed), and falls through when a6(=0x0) < a7(?) (signed).
  The `bne` branch at 0x409d44 targets 0x409c8c, is taken when t3(?) < t8(?) (signed), and falls through when t3(?) >= t8(?) (signed).
  The `bne` branch at 0x409d60 targets 0x409c0c, is taken when v1(?) < 0x100 (signed), and falls through when v1(?) >= 0x100 (signed).
  The `bne` branch at 0x409d7c targets 0x409bf8, is taken when a1(?) < 0x40 (signed), and falls through when a1(?) >= 0x40 (signed).
  The return at 0x409d8c has v0 = ?.

- `prnEntry` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x409da0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x409da0-0x409f50 (432 bytes).
  It occupies 432 bytes.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x409e1c, `lw` at 0x409e60.
  The `lbu` at 0x409ec0 loads 1 byte from ?.
  The `jalr` at 0x409e68 calls printf with a0=0x4146e0, a1=?, a2=?, a3=?.
  The `jalr` at 0x409ec8 calls printf with a0=0x47ff60, a1=?, a2=?, a3=?.
  The `jalr` at 0x409f34 calls printf with a0=0x4146f8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x409dd0 targets 0x409f28 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x409de4 targets 0x409f0c and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x409e24 targets 0x409ef0, is taken when a0(?) != a1(=a2), and falls through when a0(?) == a1(=a2).
  The `beq` branch at 0x409e7c targets 0x409ef0, is taken when a1(=0x0) >= a2 (signed), and falls through when a1(=0x0) < a2 (signed).
  The `bne` branch at 0x409ee8 targets 0x409e84, is taken when a5(?) < a6(=a2) (signed), and falls through when a5(?) >= a6(=a2) (signed).
  The `bne` branch at 0x409f04 targets 0x409dec, is taken when t0(?) < 0x40 (signed), and falls through when t0(?) >= 0x40 (signed).
  The `bne` branch at 0x409f20 targets 0x409dd8, is taken when t2(?) < 0x100 (signed), and falls through when t2(?) >= 0x100 (signed).
  The return at 0x409f48 has v0 = ret(printf).

- `genvlc` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x409f50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x409f50-0x409f58 (8 bytes).
  It occupies 8 bytes.
  The return at 0x409f50 has v0 = ?.

- `pack_to_output` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x409f70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x409f70-0x40a1fc (652 bytes).
  It occupies 652 bytes.
  The `lw` at 0x409f84 loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `lw` at 0x409f90 loads 4 bytes from a1 (arg1 at entry) +0x14.
  5 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x0, including `ld` at 0x409f9c, `ld` at 0x409fb8, `ld` at 0x40a130.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x18, including `lw` at 0x409fa4, `lw` at 0x409fc0, `lw` at 0x40a0f8.
  2 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x0, including `sd` at 0x409fb0, `sd` at 0x409fcc.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x409fd4, `lw` at 0x409fe8, `lw` at 0x40a0f0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0x40a018, `ld` at 0x40a128, `ld` at 0x40a168.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x40a020, `ld` at 0x40a040, `ld` at 0x40a0a8.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x40a034, `lw` at 0x40a058, `lw` at 0x40a0b0.
  3 such `sd` accesses store 8 bytes to [a0] +0x0, including `sd` at 0x40a038, `sd` at 0x40a0b4, `sd` at 0x40a190.
  4 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x8, including `sd` at 0x40a050, `sd` at 0x40a148, `sd` at 0x40a1bc.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `sw` at 0x40a064, `sw` at 0x40a0c8, `sw` at 0x40a1a4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x10, including `sw` at 0x40a158, `sw` at 0x40a1e8.
  The `beq` branch at 0x409fdc targets 0x40a090, is taken when at(=[a0+16]) == v0(=0x40), and falls through when at(=[a0+16]) != v0(=0x40).
  The `beq` branch at 0x40a00c targets 0x40a088, is taken when a2(=[a1+16]) >= a3(=[a1+20]) (unsigned), and falls through when a2(=[a1+16]) < a3(=[a1+20]) (unsigned).
  The `bne` branch at 0x40a080 targets 0x40a014, is taken when a7(?) < t0(=[a1+20]) (unsigned), and falls through when a7(?) >= t0(=[a1+20]) (unsigned).
  The `beq` branch at 0x40a088 targets 0x40a0ec and is always taken.
  The `beq` branch at 0x40a09c targets 0x40a0ec, is taken when t9(=[a1+16]) >= ra(=[a1+20]) (unsigned), and falls through when t9(=[a1+16]) < ra(=[a1+20]) (unsigned).
  The `bne` branch at 0x40a0e4 targets 0x40a0a4, is taken when at(?) < v0(=[a1+20]) (unsigned), and falls through when at(?) >= v0(=[a1+20]) (unsigned).
  The `beq` branch at 0x40a10c targets 0x40a1ec, is taken when a2(=([a0+16] + [a1+24])) == a3(=0x80), and falls through when a2(=([a0+16] + [a1+24])) != a3(=0x80).
  The `bne` branch at 0x40a11c targets 0x40a164, is taken when a5(=([a0+16] + [a1+24])) < 0x41 (signed), and falls through when a5(=([a0+16] + [a1+24])) >= 0x41 (signed).
  The `beq` branch at 0x40a15c targets 0x40a1ec and is always taken.
  The `bne` branch at 0x40a1b0 targets 0x40a1c8, is taken when t0(=([a0+16] + [a1+24])) != t1(=0x40), and falls through when t0(=([a0+16] + [a1+24])) == t1(=0x40).
  The `beq` branch at 0x40a1c0 targets 0x40a1e0 and is always taken.
  The return at 0x40a1f4 has v0 = ?.

- `init_pullers` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x40a200 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40a200-0x40a678 (1144 bytes).
  It occupies 1144 bytes.
  18 such `lw` accesses load 4 bytes from abs 0x47fea0, including `lw` at 0x40a250, `lw` at 0x40a270, `lw` at 0x40a294.
  6 such `sw` accesses store 4 bytes to ?, including `sw` at 0x40a268, `sw` at 0x40a28c, `sw` at 0x40a2b0.
  10 such `ld` accesses load 8 bytes from ?, including `ld` at 0x40a32c, `ld` at 0x40a33c, `ld` at 0x40a34c.
  12 such `sd` accesses store 8 bytes to ?, including `sd` at 0x40a380, `sd` at 0x40a3b8, `sd` at 0x40a404.
  The `beq` branch at 0x40a228 targets 0x40a668 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x40a660 targets 0x40a230, is taken when a0(?) < 0x5 (signed), and falls through when a0(?) >= 0x5 (signed).
  The return at 0x40a670 has v0 = ?.

- `init_pushers` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x40a680 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40a680-0x40a714 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0x40a6cc loads 4 bytes from abs 0x47fea4.
  The `sw` at 0x40a6e4 stores 4 bytes to ?.
  The `beq` branch at 0x40a6a4 targets 0x40a704 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x40a6fc targets 0x40a6ac, is taken when a0(?) < 0x1e (signed), and falls through when a0(?) >= 0x1e (signed).
  The return at 0x40a70c has v0 = 0x1.

- `restart_pushers` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x40a720 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40a720-0x40a7e8 (200 bytes).
  It occupies 200 bytes.
  4 such `lw` accesses load 4 bytes from abs 0x47fea4, including `lw` at 0x40a74c, `lw` at 0x40a768, `lw` at 0x40a784.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x40a764, `sw` at 0x40a79c, `sw` at 0x40a7b8.
  The `lw` at 0x40a780 loads 4 bytes from ?.
  The `beq` branch at 0x40a740 targets 0x40a7d8 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x40a7d0 targets 0x40a748, is taken when a0(?) < 0x1e (signed), and falls through when a0(?) >= 0x1e (signed).
  The return at 0x40a7e0 has v0 = 0x1.

- `writeback_pushers` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x40a7f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40a7f0-0x40a8d8 (232 bytes).
  It occupies 232 bytes.
  4 such `lw` accesses load 4 bytes from abs 0x47fea4, including `lw` at 0x40a818, `lw` at 0x40a838, `lw` at 0x40a858.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x40a830, `lw` at 0x40a870, `lw` at 0x40a890.
  The `ld` at 0x40a850 loads 8 bytes from ?.
  The `sd` at 0x40a8a8 stores 8 bytes to ?.
  The `beq` branch at 0x40a810 targets 0x40a8c8 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x40a8c0 targets 0x40a818, is taken when a0(?) < 0x1e (signed), and falls through when a0(?) >= 0x1e (signed).
  The return at 0x40a8d0 has v0 = ?.

- `decodesegment` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x40a8e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40a8e0-0x40c124 (6212 bytes).
  It occupies 6212 bytes.
  20 such `ld` accesses load 8 bytes from ?, including `ld` at 0x40a92c, `ld` at 0x40a94c, `ld` at 0x40a9ac.
  33 such `lw` accesses load 4 bytes from ?, including `lw` at 0x40a96c, `lw` at 0x40a98c, `lw` at 0x40a9cc.
  4 such `lw` accesses load 4 bytes from sym(relocation_table_p) +0x0, including `lw` at 0x40aa24, `lw` at 0x40aa54, `lw` at 0x40aa94.
  3 such `lhu` accesses load 2 bytes from [sym(relocation_table_p)] +0x0, including `lhu` at 0x40aa28, `lhu` at 0x40aa58, `lhu` at 0x40aa98.
  28 such `sd` accesses store 8 bytes to ?, including `sd` at 0x40aa80, `sd` at 0x40ab5c, `sd` at 0x40ac1c.
  The `sw` at 0x40aabc stores 4 bytes to sym(relocation_table_p) +0x0.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x40ac64, `lbu` at 0x40b238, `lbu` at 0x40baa4.
  26 such `sw` accesses store 4 bytes to ?, including `sw` at 0x40aca4, `sw` at 0x40aeec, `sw` at 0x40af0c.
  The `ld` at 0x40b85c loads 8 bytes from sym(input_puller) +0x0.
  The `ld` at 0x40b87c loads 8 bytes from sym(input_puller) +0x8.
  The `lw` at 0x40b89c loads 4 bytes from sym(input_puller) +0x10.
  The `beq` branch at 0x40a90c targets 0x40af8c and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x40a9fc targets 0x40ab80, is taken when v1(?) != a0(?), and falls through when v1(?) == a0(?).
  The `bne` branch at 0x40aa18 targets 0x40aa50, is taken when a4(?) < 0x11 (signed), and falls through when a4(?) >= 0x11 (signed).
  The `beq` branch at 0x40aa48 targets 0x40aaac and is always taken.
  The `bne` branch at 0x40ab04 targets 0x40ab34, is taken when t8(?) < 0x5 (signed), and falls through when t8(?) >= 0x5 (signed).
  The `beq` branch at 0x40ab2c targets 0x40ab80 and is always taken.
  The `bne` branch at 0x40abc4 targets 0x40abf4, is taken when t1(?) < 0xd (signed), and falls through when t1(?) >= 0xd (signed).
  The `beq` branch at 0x40abec targets 0x40ac40 and is always taken.
  The `beq` branch at 0x40ac44 targets 0x40ae90 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x40ac78 targets 0x40ad3c, is taken when a6(?) >= a7(?) (signed), and falls through when a6(?) < a7(?) (signed).
  The `beq` branch at 0x40acac targets 0x40ad34, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x40ad34 targets 0x40ae90 and is always taken.
  The `beq` branch at 0x40ad54 targets 0x40ad84 and is always taken.
  The `beq` branch at 0x40add8 targets 0x40ae10, is taken when a1(?) >= a2(?) (signed), and falls through when a1(?) < a2(?) (signed).
  The `beq` branch at 0x40ae08 targets 0x40ae64 and is always taken.
  The `bne` branch at 0x40ae6c targets 0x40ae84, is taken when a4(?) != a5(=0x6), and falls through when a4(?) == a5(=0x6).
  The `beq` branch at 0x40ae7c targets 0x40ae90 and is always taken.
  The `bne` branch at 0x40ae88 targets 0x40ac4c and is always taken.
  The `bne` branch at 0x40af84 targets 0x40a914, is taken when t0(?) < 0x1e (signed), and falls through when t0(?) >= 0x1e (signed).
  The `beq` branch at 0x40af98 targets 0x40b840 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x40b028 targets 0x40b7c4, is taken when a3(?) < a4(?) (signed), and falls through when a3(?) >= a4(?) (signed).
  The `bne` branch at 0x40b04c targets 0x40b7a4, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x40b0f0 targets 0x40b1f8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x40b218 targets 0x40b724 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x40b24c targets 0x40b3a4, is taken when a6(?) < a7(?) (signed), and falls through when a6(?) >= a7(?) (signed).
  The `beq` branch at 0x40b26c targets 0x40b29c and is always taken.
  The `beq` branch at 0x40b2f0 targets 0x40b328, is taken when a1(?) >= a2(?) (signed), and falls through when a1(?) < a2(?) (signed).
  The `beq` branch at 0x40b320 targets 0x40b37c and is always taken.
  The `bne` branch at 0x40b384 targets 0x40b39c, is taken when a4(?) != a5(=0x6), and falls through when a4(?) == a5(=0x6).
  The `beq` branch at 0x40b394 targets 0x40b724 and is always taken.
  The `beq` branch at 0x40b39c targets 0x40b718 and is always taken.
  The `bne` branch at 0x40b3b0 targets 0x40b518, is taken when a7(?) < t0(?) (signed), and falls through when a7(?) >= t0(?) (signed).
  The `bne` branch at 0x40b444 targets 0x40b470, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x40b468 targets 0x40b510 and is always taken.
  The `beq` branch at 0x40b510 targets 0x40b7c4 and is always taken.
  The `beq` branch at 0x40b51c targets 0x40b640, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x40b638 targets 0x40b70c and is always taken.
  The `bne` branch at 0x40b71c targets 0x40b220 and is always taken.
  The `beq` branch at 0x40b7bc targets 0x40b030, is taken when v1(?) >= a0(?) (signed), and falls through when v1(?) < a0(?) (signed).
  The `bne` branch at 0x40b838 targets 0x40afa0, is taken when a2(?) < 0x1e (signed), and falls through when a2(?) >= 0x1e (signed).
  The `beq` branch at 0x40b8b0 targets 0x40bf30 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x40b8d4 targets 0x40bf14, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x40b978 targets 0x40ba80, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x40ba84 targets 0x40be94 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x40bab8 targets 0x40bc10, is taken when t8(?) < t9(?) (signed), and falls through when t8(?) >= t9(?) (signed).
  The `beq` branch at 0x40bad8 targets 0x40bb08 and is always taken.
  The `beq` branch at 0x40bb5c targets 0x40bb94, is taken when a1(?) >= a2(?) (signed), and falls through when a1(?) < a2(?) (signed).
  The `beq` branch at 0x40bb8c targets 0x40bbe8 and is always taken.
  The `bne` branch at 0x40bbf0 targets 0x40bc08, is taken when a4(?) != a5(=0x6), and falls through when a4(?) == a5(=0x6).
  The `beq` branch at 0x40bc00 targets 0x40be94 and is always taken.
  The `beq` branch at 0x40bc08 targets 0x40be88 and is always taken.
  The `bne` branch at 0x40bc18 targets 0x40bc88, is taken when a7(?) < 0x1d (signed), and falls through when a7(?) >= 0x1d (signed).
  The `beq` branch at 0x40bc80 targets 0x40bf30 and is always taken.
  The `beq` branch at 0x40bc8c targets 0x40bdb0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x40bda8 targets 0x40be7c and is always taken.
  The `bne` branch at 0x40be8c targets 0x40ba8c and is always taken.
  The `bne` branch at 0x40bf28 targets 0x40b8b8, is taken when a7(?) < 0x1e (signed), and falls through when a7(?) >= 0x1e (signed).
  The `beq` branch at 0x40bf3c targets 0x40c110 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x40bfe0 targets 0x40c070, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bne` branch at 0x40bff0 targets 0x40c01c, is taken when a7(?) < 0x5 (signed), and falls through when a7(?) >= 0x5 (signed).
  The `beq` branch at 0x40c014 targets 0x40c068 and is always taken.
  The `beq` branch at 0x40c068 targets 0x40c074 and is always taken.
  The `bne` branch at 0x40c108 targets 0x40bf44, is taken when v0(?) < 0x1e (signed), and falls through when v0(?) >= 0x1e (signed).
  The return at 0x40c11c has v0 = ?.
  The instructions from 0x40ad5c to 0x40ad80 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x40b274 to 0x40b298 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x40bae0 to 0x40bb04 are not reached by any path from the entry, and their branches are not listed.

- `qparsemain` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x40c130 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40c130-0x40c564 (1076 bytes).
  It occupies 1076 bytes.
  4 such `sw` accesses store 4 bytes to sym(segment) +0x0, including `sw` at 0x40c174, `sw` at 0x40c2dc, `sw` at 0x40c3ec.
  The `sw` at 0x40c180 stores 4 bytes to sym(output_packer) +0x0.
  The `sd` at 0x40c188 stores 8 bytes to sym(output_packer) +0x8.
  The `sw` at 0x40c194 stores 4 bytes to sym(output_packer) +0x10.
  The `sw` at 0x40c1a0 stores 4 bytes to sym(relocation_table_p) +0x0.
  3 such `lw` accesses load 4 bytes from sym(segment) +0x0, including `lw` at 0x40c2d0, `lw` at 0x40c3e0, `lw` at 0x40c4f0.
  The `ld` at 0x40c540 loads 8 bytes from sym(output_packer) +0x8.
  The `lw` at 0x40c548 loads 4 bytes from sym(output_packer) +0x0.
  The `sd` at 0x40c54c stores 8 bytes to [sym(output_packer)] +0x0.
  The `jalr` at 0x40c168 calls init_pushers with a0=sym(blockbufarray), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40c1d4 calls restart_pushers with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c220 calls init_pullers with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c26c calls decodesegment with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c2a8 calls pack_to_output with a0=sym(output_packer), a1=?, a2=?, a3=?.
  The `jalr` at 0x40c2e4 calls restart_pushers with a0=?, a1=?, a2=?, a3=?, a6=[sym(segment)]+1, a7=sym(segment).
  The `jalr` at 0x40c330 calls init_pullers with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c37c calls decodesegment with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c3b8 calls pack_to_output with a0=sym(output_packer), a1=?, a2=?, a3=?.
  The `jalr` at 0x40c3f4 calls restart_pushers with a0=?, a1=?, a2=?, a3=?, a6=[sym(segment)]+1, a7=sym(segment).
  The `jalr` at 0x40c440 calls init_pullers with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c48c calls decodesegment with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c4c8 calls pack_to_output with a0=sym(output_packer), a1=?, a2=?, a3=?.
  The `beq` branch at 0x40c1b4 targets 0x40c53c, is taken when v1(=0x0) >= a0(=a1) (signed), and falls through when v1(=0x0) < a0(=a1) (signed).
  The `beq` branch at 0x40c1c8 targets 0x40c51c and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x40c280 targets 0x40c2cc and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x40c2c4 targets 0x40c288, is taken when a4(?) < 0x1e (signed), and falls through when a4(?) >= 0x1e (signed).
  The `beq` branch at 0x40c390 targets 0x40c3dc and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x40c3d4 targets 0x40c398, is taken when a4(?) < 0x1e (signed), and falls through when a4(?) >= 0x1e (signed).
  The `beq` branch at 0x40c4a0 targets 0x40c4ec and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x40c4e4 targets 0x40c4a8, is taken when a4(?) < 0x1e (signed), and falls through when a4(?) >= 0x1e (signed).
  The `bne` branch at 0x40c514 targets 0x40c1d0, is taken when a7(?) < 0x9 (signed), and falls through when a7(?) >= 0x9 (signed).
  The `bne` branch at 0x40c534 targets 0x40c1bc, is taken when t1(?) < t2(=a1) (signed), and falls through when t1(?) >= t2(=a1) (signed).
  The return at 0x40c55c has v0 = one of ret(init_pushers), ret(pack_to_output).

- `uncached_malloc` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x40c570 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40c570-0x40c62c (188 bytes).
  It occupies 188 bytes.
  The `jalr` at 0x40c5ac calls malloc with a0=?, a1=?, a2=-0x1000, a3=a3 at entry (arg3).
  The `jalr` at 0x40c5c4 calls aligntopage with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x40c5e4 calls cachectl with a0=ret(aligntopage), a1=?, a2=0x1, a3=?.
  The `jalr` at 0x40c60c calls perror with a0=0x414780, a1=?, a2=?, a3=ret(cachectl).
  The `beq` branch at 0x40c5f8 targets 0x40c614, is taken when a3(=ret(cachectl)) == 0, and falls through when a3(=ret(cachectl)) != 0.
  The return at 0x40c624 has v0 = ret(aligntopage).

- `aligntopage` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x40c630 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40c630-0x40c674 (68 bytes).
  It occupies 68 bytes.
  The return at 0x40c66c has v0 = ?.

- `scale_alloc` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x40c680 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40c680-0x40c7d4 (340 bytes).
  It occupies 340 bytes.
  The `jalr` at 0x40c710 calls _GETBITSUR8x8 with a0=a0 at entry (arg0), a1=sym(cvLength), a2=?, a3=a3 at entry (arg3), a4=0x7b52c, a5=a3 at entry (arg3), a6=0xf.
  The `jalr` at 0x40c73c calls _GETBITS with a0=a0 at entry (arg0), a1=sym(cvLength), a2=(sym(qscales) + (((a3 + (a2 << 0x4)) + (a1 << 0x5)) << 0x6)), a3=sym(zz8x8Tabt), a4=0x7b52c, a5=a3 at entry (arg3), a6=0xf.
  The `jalr` at 0x40c77c calls _GETBITSUR4x8 with a0=a0 at entry (arg0), a1=sym(cvLength), a2=?, a3=a3 at entry (arg3), a4=0xf.
  The `jalr` at 0x40c7a8 calls _GETBITS with a0=a0 at entry (arg0), a1=sym(cvLength), a2=(sym(qscales) + (((a3 + (a2 << 0x4)) + (a1 << 0x5)) << 0x6)), a3=sym(zz4x8Tabt), a4=0xf.
  The `bne` branch at 0x40c6e0 targets 0x40c754, is taken when at(=a2) != 0, and falls through when at(=a2) == 0.
  The `bne` branch at 0x40c6f0 targets 0x40c728, is taken when a5(=a3) != a6(=0xf), and falls through when a5(=a3) == a6(=0xf).
  The `beq` branch at 0x40c720 targets 0x40c74c and is always taken.
  The `beq` branch at 0x40c74c targets 0x40c7b8 and is always taken.
  The `bne` branch at 0x40c75c targets 0x40c794, is taken when a3 != a4(=0xf), and falls through when a3 == a4(=0xf).
  The `beq` branch at 0x40c78c targets 0x40c7b8 and is always taken.
  The return at 0x40c7cc has v0 = one of ?, ret(_GETBITSUR4x8)+4, ret(_GETBITS)+4.

- `scale_vlcBlockPackedFast` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x40c7e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40c7e0-0x40c964 (388 bytes).
  It occupies 388 bytes.
  The `lw` at 0x40c890 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x40c898 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `sw` at 0x40c8a8 stores 4 bytes to a1 (arg1 at entry) +0x88.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x88, including `lw` at 0x40c8b0, `lw` at 0x40c908.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8c, including `lw` at 0x40c8b8, `lw` at 0x40c8ec, `lw` at 0x40c910.
  3 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x90, including `sw` at 0x40c8d0, `sw` at 0x40c930, `sw` at 0x40c94c.
  3 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x94, including `sw` at 0x40c8d8, `sw` at 0x40c928, `sw` at 0x40c944.
  The `sw` at 0x40c8e4 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `sw` at 0x40c8f8 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x40c860 calls _APPENDBITSUR8x8 with a0=a0 at entry (arg0), a1=sym(dvBitsTable16), a2=(sym(qscales) + (((a4 + (a3 << 0x4)) + (a2 << 0x5)) << 0x6)), a3=a1 at entry (arg1), a6=0x7b3cc.
  The `jalr` at 0x40c884 calls _APPENDBITSUR4x8 with a0=a0 at entry (arg0), a1=sym(dvBitsTable16), a2=(sym(qscales) + (((a4 + (a3 << 0x4)) + (a2 << 0x5)) << 0x6)), a3=a1 at entry (arg1), a6=0x7b3cc.
  The `bne` branch at 0x40c844 targets 0x40c870, is taken when at(=a3) != 0, and falls through when at(=a3) == 0.
  The `beq` branch at 0x40c868 targets 0x40c88c and is always taken.
  The `beq` branch at 0x40c8c0 targets 0x40c904, is taken when a7(=[a1+140]) >= t0(=[a1+136]) (signed), and falls through when a7(=[a1+140]) < t0(=[a1+136]) (signed).
  The `beq` branch at 0x40c8fc targets 0x40c950 and is always taken.
  The `beq` branch at 0x40c918 targets 0x40c93c, is taken when v0(=[a1+136]) >= v1(=[a1+140]) (signed), and falls through when v0(=[a1+136]) < v1(=[a1+140]) (signed).
  The `beq` branch at 0x40c934 targets 0x40c950 and is always taken.
  The return at 0x40c95c has v0 = ?.

- `qnoCtrl` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x40c970 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40c970-0x40cec4 (1364 bytes).
  It occupies 1364 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x40c9b0, `lw` at 0x40cb7c, `lw` at 0x40cd10.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0x40c9b8, `lw` at 0x40cb5c, `lw` at 0x40cd1c.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lw` at 0x40c9c0, `lw` at 0x40cb68, `lw` at 0x40cd24.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x40c9e0, `lw` at 0x40cbc8, `lw` at 0x40cd40.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0x40c9e8, `lw` at 0x40cbac, `lw` at 0x40cd50.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lw` at 0x40c9f0, `lw` at 0x40cbbc, `lw` at 0x40cd58.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x40ca18, `lw` at 0x40cc10, `lw` at 0x40cd74.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0x40ca20, `lw` at 0x40cbf4, `lw` at 0x40cd84.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lw` at 0x40ca28, `lw` at 0x40cc04, `lw` at 0x40cd8c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x40ca50, `lw` at 0x40cc58, `lw` at 0x40cda8.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lw` at 0x40ca58, `lw` at 0x40cc3c, `lw` at 0x40cdb8.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0xc, including `lw` at 0x40ca60, `lw` at 0x40cc4c, `lw` at 0x40cdc0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lw` at 0x40ca88, `lw` at 0x40cca0, `lw` at 0x40cddc.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lw` at 0x40ca90, `lw` at 0x40cc84, `lw` at 0x40cdec.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x10, including `lw` at 0x40ca98, `lw` at 0x40cc94, `lw` at 0x40cdf4.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x40cac0, `lw` at 0x40cce8, `lw` at 0x40ce10.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x14, including `lw` at 0x40cac8, `lw` at 0x40cccc, `lw` at 0x40ce20.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x14, including `lw` at 0x40cad0, `lw` at 0x40ccdc, `lw` at 0x40ce28.
  The `lh` at 0x40cb80 loads 2 bytes from [a0] +0x0.
  The `sw` at 0x40cba0 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lh` at 0x40cbcc loads 2 bytes from [a0+4] +0x0.
  The `sw` at 0x40cbe8 stores 4 bytes to a1 (arg1 at entry) +0xa0.
  The `lh` at 0x40cc14 loads 2 bytes from [a0+8] +0x0.
  The `sw` at 0x40cc30 stores 4 bytes to a1 (arg1 at entry) +0x138.
  The `lh` at 0x40cc5c loads 2 bytes from [a0+12] +0x0.
  The `sw` at 0x40cc78 stores 4 bytes to a1 (arg1 at entry) +0x1d0.
  The `lh` at 0x40cca4 loads 2 bytes from [a0+20] +0x0.
  The `sw` at 0x40ccc0 stores 4 bytes to a1 (arg1 at entry) +0x268.
  The `lh` at 0x40ccec loads 2 bytes from [a0+16] +0x0.
  The `sw` at 0x40cd08 stores 4 bytes to a1 (arg1 at entry) +0x300.
  The `lw` at 0x40ce48 loads 4 bytes from a1 (arg1 at entry) +0x250.
  The `lw` at 0x40ce54 loads 4 bytes from a1 (arg1 at entry) +0x1b8.
  The `lw` at 0x40ce60 loads 4 bytes from a1 (arg1 at entry) +0x120.
  The `lw` at 0x40ce68 loads 4 bytes from a1 (arg1 at entry) +0x88.
  The `lw` at 0x40ce74 loads 4 bytes from a1 (arg1 at entry) +0x2e8.
  The `lw` at 0x40ce80 loads 4 bytes from a1 (arg1 at entry) +0x380.
  The `sw` at 0x40cea8 stores 4 bytes to a4 (arg4 at entry) +0x0.
  The `jalr` at 0x40c9cc calls scale_alloc with a0=[a0], a1=[a2], a2=[a3], a3=0xf, a7=0x7b23c.
  The `jalr` at 0x40c9fc calls scale_alloc with a0=[a0+4], a1=[a2+4], a2=[a3+4], a3=0xf.
  The `jalr` at 0x40ca34 calls scale_alloc with a0=[a0+8], a1=[a2+8], a2=[a3+8], a3=0xf.
  The `jalr` at 0x40ca6c calls scale_alloc with a0=[a0+12], a1=[a2+12], a2=[a3+12], a3=0xf.
  The `jalr` at 0x40caa4 calls scale_alloc with a0=[a0+20], a1=[a2+16], a2=[a3+16], a3=0xf.
  The `jalr` at 0x40cadc calls scale_alloc with a0=[a0+16], a1=[a2+20], a2=[a3+20], a3=0xf.
  The `jalr` at 0x40cd34 calls scale_vlcBlockPackedFast with a0=[a0], a1=a1 at entry (arg1), a2=[a2], a3=[a3], a5=0x0, a6=([[a0+8]]:2-256 << 0x17), a7=([[a0+4]]:2-256 << 0x17).
  The `jalr` at 0x40cd68 calls scale_vlcBlockPackedFast with a0=[a0+4], a1=a1+152, a2=[a2+4], a3=[a3+4], a5=0x0.
  The `jalr` at 0x40cd9c calls scale_vlcBlockPackedFast with a0=[a0+8], a1=a1+304, a2=[a2+8], a3=[a3+8], a5=0x0.
  The `jalr` at 0x40cdd0 calls scale_vlcBlockPackedFast with a0=[a0+12], a1=a1+456, a2=[a2+12], a3=[a3+12], a5=0x0.
  The `jalr` at 0x40ce04 calls scale_vlcBlockPackedFast with a0=[a0+20], a1=a1+608, a2=[a2+16], a3=[a3+16], a5=0x0.
  The `jalr` at 0x40ce38 calls scale_vlcBlockPackedFast with a0=[a0+16], a1=a1+760, a2=[a2+20], a3=[a3+20], a5=0x0.
  The `blez` branch at 0x40cb04 targets 0x40cb48, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `bgez` branch at 0x40cb4c targets 0x40cb58, is taken when t2(?) >= 0 (signed), and falls through when t2(?) < 0 (signed).
  The return at 0x40cebc has v0 = ([a1+592] + ([a1+440] + ([a1+288] + ([a1+136] + ([a1+744] + [a1+896])))))-80.

- `qnoMultiPassFast` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x40ced0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40ced0-0x40d800 (2352 bytes).
  It occupies 2352 bytes.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x40cf34, `lw` at 0x40d140, `lw` at 0x40d2d4.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0x40cf3c, `lw` at 0x40d120, `lw` at 0x40d2e0.
  5 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lw` at 0x40cf44, `lw` at 0x40d12c, `lw` at 0x40d2e8.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x40cf64, `lw` at 0x40d18c, `lw` at 0x40d304.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0x40cf6c, `lw` at 0x40d170, `lw` at 0x40d314.
  5 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lw` at 0x40cf74, `lw` at 0x40d180, `lw` at 0x40d31c.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x40cf9c, `lw` at 0x40d1d4, `lw` at 0x40d338.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0x40cfa4, `lw` at 0x40d1b8, `lw` at 0x40d348.
  5 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lw` at 0x40cfac, `lw` at 0x40d1c8, `lw` at 0x40d350.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x40cfd4, `lw` at 0x40d21c, `lw` at 0x40d36c.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lw` at 0x40cfdc, `lw` at 0x40d200, `lw` at 0x40d37c.
  5 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0xc, including `lw` at 0x40cfe4, `lw` at 0x40d210, `lw` at 0x40d384.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lw` at 0x40d00c, `lw` at 0x40d264, `lw` at 0x40d3a0.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lw` at 0x40d014, `lw` at 0x40d248, `lw` at 0x40d3b0.
  5 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x10, including `lw` at 0x40d01c, `lw` at 0x40d258, `lw` at 0x40d3b8.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x40d044, `lw` at 0x40d2ac, `lw` at 0x40d3d4.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x14, including `lw` at 0x40d04c, `lw` at 0x40d290, `lw` at 0x40d3e4.
  5 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x14, including `lw` at 0x40d054, `lw` at 0x40d2a0, `lw` at 0x40d3ec.
  2 such `lh` accesses load 2 bytes from [a0] +0x0, including `lh` at 0x40d144, `lh` at 0x40d4a8.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x8, including `sw` at 0x40d164, `sw` at 0x40d4c8.
  2 such `lh` accesses load 2 bytes from [a0+4] +0x0, including `lh` at 0x40d190, `lh` at 0x40d4f4.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0xa0, including `sw` at 0x40d1ac, `sw` at 0x40d510.
  2 such `lh` accesses load 2 bytes from [a0+8] +0x0, including `lh` at 0x40d1d8, `lh` at 0x40d53c.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x138, including `sw` at 0x40d1f4, `sw` at 0x40d558.
  2 such `lh` accesses load 2 bytes from [a0+12] +0x0, including `lh` at 0x40d220, `lh` at 0x40d584.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x1d0, including `sw` at 0x40d23c, `sw` at 0x40d5a0.
  2 such `lh` accesses load 2 bytes from [a0+20] +0x0, including `lh` at 0x40d268, `lh` at 0x40d5cc.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x268, including `sw` at 0x40d284, `sw` at 0x40d5e8.
  2 such `lh` accesses load 2 bytes from [a0+16] +0x0, including `lh` at 0x40d2b0, `lh` at 0x40d614.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x300, including `sw` at 0x40d2cc, `sw` at 0x40d630.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x250, including `lw` at 0x40d40c, `lw` at 0x40d770.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x1b8, including `lw` at 0x40d418, `lw` at 0x40d77c.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x120, including `lw` at 0x40d424, `lw` at 0x40d788.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x88, including `lw` at 0x40d42c, `lw` at 0x40d790.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x2e8, including `lw` at 0x40d438, `lw` at 0x40d79c.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x380, including `lw` at 0x40d444, `lw` at 0x40d7a8.
  2 such `sw` accesses store 4 bytes to a4 (arg4 at entry) +0x0, including `sw` at 0x40d46c, `sw` at 0x40d7d0.
  The `jalr` at 0x40cf50 calls scale_alloc with a0=[a0], a1=[a2], a2=[a3], a3=?.
  The `jalr` at 0x40cf80 calls scale_alloc with a0=[a0+4], a1=[a2+4], a2=[a3+4], a3=?.
  The `jalr` at 0x40cfb8 calls scale_alloc with a0=[a0+8], a1=[a2+8], a2=[a3+8], a3=?.
  The `jalr` at 0x40cff0 calls scale_alloc with a0=[a0+12], a1=[a2+12], a2=[a3+12], a3=?.
  The `jalr` at 0x40d028 calls scale_alloc with a0=[a0+20], a1=[a2+16], a2=[a3+16], a3=?.
  The `jalr` at 0x40d060 calls scale_alloc with a0=[a0+16], a1=[a2+20], a2=[a3+20], a3=?.
  The `jalr` at 0x40d2f8 calls scale_vlcBlockPackedFast with a0=[a0], a1=a1 at entry (arg1), a2=[a2], a3=[a3], a5=0x0, a6=([[a0+8]]:2-256 << 0x17), a7=([[a0+4]]:2-256 << 0x17).
  The `jalr` at 0x40d32c calls scale_vlcBlockPackedFast with a0=[a0+4], a1=a1+152, a2=[a2+4], a3=[a3+4], a5=0x0.
  The `jalr` at 0x40d360 calls scale_vlcBlockPackedFast with a0=[a0+8], a1=a1+304, a2=[a2+8], a3=[a3+8], a5=0x0.
  The `jalr` at 0x40d394 calls scale_vlcBlockPackedFast with a0=[a0+12], a1=a1+456, a2=[a2+12], a3=[a3+12], a5=0x0.
  The `jalr` at 0x40d3c8 calls scale_vlcBlockPackedFast with a0=[a0+20], a1=a1+608, a2=[a2+16], a3=[a3+16], a5=0x0.
  The `jalr` at 0x40d3fc calls scale_vlcBlockPackedFast with a0=[a0+16], a1=a1+760, a2=[a2+20], a3=[a3+20], a5=0x0.
  The `jalr` at 0x40d65c calls scale_vlcBlockPackedFast with a0=[a0], a1=a1 at entry (arg1), a2=[a2], a3=[a3], a5=0x0, a6=([[a0+8]]:2-256 << 0x17), a7=([[a0+4]]:2-256 << 0x17).
  The `jalr` at 0x40d690 calls scale_vlcBlockPackedFast with a0=[a0+4], a1=a1+152, a2=[a2+4], a3=[a3+4], a5=0x0.
  The `jalr` at 0x40d6c4 calls scale_vlcBlockPackedFast with a0=[a0+8], a1=a1+304, a2=[a2+8], a3=[a3+8], a5=0x0.
  The `jalr` at 0x40d6f8 calls scale_vlcBlockPackedFast with a0=[a0+12], a1=a1+456, a2=[a2+12], a3=[a3+12], a5=0x0.
  The `jalr` at 0x40d72c calls scale_vlcBlockPackedFast with a0=[a0+20], a1=a1+608, a2=[a2+16], a3=[a3+16], a5=0x0.
  The `jalr` at 0x40d760 calls scale_vlcBlockPackedFast with a0=[a0+16], a1=a1+760, a2=[a2+20], a3=[a3+20], a5=0x0.
  The `beq` branch at 0x40cf28 targets 0x40d100 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x40d084 targets 0x40d0a4, is taken when a2(=a5) >= a3(=(((((ret(scale_alloc) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc))) (signed), and falls through when a2(=a5) < a3(=(((((ret(scale_alloc) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc))) (signed).
  The `beq` branch at 0x40d09c targets 0x40d0d8 and is always taken.
  The `bne` branch at 0x40d0b0 targets 0x40d0d8, is taken when a7(=a5) < t0(=(((((ret(scale_alloc) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc))) (signed), and falls through when a7(=a5) >= t0(=(((((ret(scale_alloc) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc)) + ret(scale_alloc))) (signed).
  The `bne` branch at 0x40d0f8 targets 0x40cf30, is taken when t9(?) < 0x4 (signed), and falls through when t9(?) >= 0x4 (signed).
  The `bne` branch at 0x40d108 targets 0x40d480, is taken when v0(?) != v1(=-0x1), and falls through when v0(?) == v1(=-0x1).
  The `beq` branch at 0x40d478 targets 0x40d7e8 and is always taken.
  The `beq` branch at 0x40d7e0 targets 0x40d7e8 and is always taken.
  The return at 0x40d7f8 has v0 = ([a1+592] + ([a1+440] + ([a1+288] + ([a1+136] + ([a1+744] + [a1+896])))))-80.

- `mbGetBits` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x40d800 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40d800-0x40d904 (260 bytes).
  It occupies 260 bytes.
  The `lw` at 0x40d858 loads 4 bytes from sym(qno4passMode) +0x0.
  The `jalr` at 0x40d894 calls qnoMultiPassFast with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40d8cc calls qnoCtrl with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=a6+536.
  The `beq` branch at 0x40d85c targets 0x40d8ac, is taken when at(=[sym(qno4passMode)]) == 0, and falls through when at(=[sym(qno4passMode)]) != 0.
  The `bgtz` branch at 0x40d868 targets 0x40d878, is taken when a0(=a6+536) > 0 (signed), and falls through when a0(=a6+536) <= 0 (signed).
  The `beq` branch at 0x40d8a4 targets 0x40d8dc and is always taken.
  The return at 0x40d8fc has v0 = ?.

- `segGetBits` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x40d910 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40d910-0x40df80 (1648 bytes).
  It occupies 1648 bytes.
  7 such `lw` accesses load 4 bytes from sym(rollMode) +0x0, including `lw` at 0x40d94c, `lw` at 0x40db2c, `lw` at 0x40dc0c.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x40d99c, `lw` at 0x40d9cc.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x40da04, `sw` at 0x40da20.
  The `lw` at 0x40ded0 loads 4 bytes from sym(globalQNO) +0x0.
  The `lw` at 0x40dedc loads 4 bytes from a0 (arg0 at entry) +0x178.
  The `lw` at 0x40dee8 loads 4 bytes from a0 (arg0 at entry) +0x174.
  The `lw` at 0x40def4 loads 4 bytes from a0 (arg0 at entry) +0x170.
  The `lw` at 0x40df00 loads 4 bytes from a0 (arg0 at entry) +0x168.
  The `lw` at 0x40df0c loads 4 bytes from a0 (arg0 at entry) +0x16c.
  The `sw` at 0x40df28 stores 4 bytes to sym(globalQNO) +0x0.
  The `jalr` at 0x40d940 calls initUnpacked with a0=a0+800, a1=0x7a29c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40db18 calls mbGetBits with a0=?, a1=?, a2=?, a3=?, a6=0x0.
  The `jalr` at 0x40dbf8 calls mbGetBits with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40dcd8 calls mbGetBits with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ddb8 calls mbGetBits with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40de98 calls mbGetBits with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40df38 calls packSegmentInplace with a0=a0+800, a1=([sym(globalQNO)] + ([a0+376] + ([a0+372] + ([a0+368] + ([a0+360] + [a0+364]))))), a2=sym(globalQNO), a3=([a0+372] + ([a0+368] + ([a0+360] + [a0+364]))), a4=([a0+368] + ([a0+360] + [a0+364])), a5=([a0+360] + [a0+364]), a6=[a0+364].
  The `beq` branch at 0x40d950 targets 0x40da48, is taken when a2(=[sym(rollMode)]) == 0, and falls through when a2(=[sym(rollMode)]) != 0.
  The `beq` branch at 0x40d964 targets 0x40da40 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x40d980 targets 0x40d9f0 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x40d9a8 targets 0x40d9d4, is taken when a6(?) < a7(?) (signed), and falls through when a6(?) >= a7(?) (signed).
  The `bne` branch at 0x40d9e8 targets 0x40d988, is taken when t3(?) < 0x5 (signed), and falls through when t3(?) >= 0x5 (signed).
  The `bne` branch at 0x40da38 targets 0x40d96c, is taken when t9(?) < 0x5 (signed), and falls through when t9(?) >= 0x5 (signed).
  The `beq` branch at 0x40da40 targets 0x40da6c and is always taken.
  The `bne` branch at 0x40db30 targets 0x40db4c, is taken when a3(=[sym(rollMode)]) != 0, and falls through when a3(=[sym(rollMode)]) == 0.
  The `bne` branch at 0x40dc10 targets 0x40dc2c, is taken when a3(=[sym(rollMode)]) != 0, and falls through when a3(=[sym(rollMode)]) == 0.
  The `bne` branch at 0x40dcf0 targets 0x40dd0c, is taken when a3(=[sym(rollMode)]) != 0, and falls through when a3(=[sym(rollMode)]) == 0.
  The `bne` branch at 0x40ddd0 targets 0x40ddec, is taken when a3(=[sym(rollMode)]) != 0, and falls through when a3(=[sym(rollMode)]) == 0.
  The `bne` branch at 0x40deb0 targets 0x40decc, is taken when a3(=[sym(rollMode)]) != 0, and falls through when a3(=[sym(rollMode)]) == 0.
  The `bne` branch at 0x40df48 targets 0x40df60, is taken when a2(=[sym(rollMode)]) != 0, and falls through when a2(=[sym(rollMode)]) == 0.
  The `beq` branch at 0x40df58 targets 0x40df68 and is always taken.
  The return at 0x40df78 has v0 = ?.

- `initBitBuffer` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x40df80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40df80-0x40e02c (172 bytes).
  It occupies 172 bytes.
  The `sw` at 0x40dfa0 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `sw` at 0x40dfa8 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `sw` at 0x40dfb4 stores 4 bytes to a0 (arg0 at entry) +0x8c.
  The `sw` at 0x40dfc0 stores 4 bytes to a0 (arg0 at entry) +0x88.
  The `sw` at 0x40dfc8 stores 4 bytes to a0 (arg0 at entry) +0x90.
  The `sw` at 0x40dfd0 stores 4 bytes to a0 (arg0 at entry) +0x94.
  The `sd` at 0x40dffc stores 8 bytes to ?.
  The `beq` branch at 0x40dfe0 targets 0x40e01c and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x40e014 targets 0x40dfe8, is taken when a7(?) < 0x10 (signed), and falls through when a7(?) >= 0x10 (signed).
  The return at 0x40e024 has v0 = a0.

- `initUnpacked` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x40e030 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40e030-0x40e214 (484 bytes).
  It occupies 484 bytes.
  The `sw` at 0x40e088 stores 4 bytes to ?.
  The `jalr` at 0x40e0c4 calls initBitBuffer with a0=?, a1=0x0, a2=0x78, a3=0x14.
  The `jalr` at 0x40e138 calls initBitBuffer with a0=?, a1=0x0, a2=0x70, a3=0xc.
  The `jalr` at 0x40e198 calls initBitBuffer with a0=?, a1=0x0, a2=0x50, a3=0xc.
  The `jalr` at 0x40e1dc calls initBitBuffer with a0=?, a1=0x0, a2=0x50, a3=0xc.
  The `beq` branch at 0x40e058 targets 0x40e200 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x40e0dc targets 0x40e15c and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x40e154 targets 0x40e0e4, is taken when a2(?) < 0x4 (signed), and falls through when a2(?) >= 0x4 (signed).
  The `bne` branch at 0x40e1f8 targets 0x40e060, is taken when a2(?) < 0x5 (signed), and falls through when a2(?) >= 0x5 (signed).
  The return at 0x40e20c has v0 = ret(initBitBuffer).

- `distributeBits64` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x40e220 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40e220-0x40e648 (1064 bytes).
  It occupies 1064 bytes.
  The `lw` at 0x40e234 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x40e240 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0x40e24c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x40e258 loads 4 bytes from a0 (arg0 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8c, including `lw` at 0x40e270, `lw` at 0x40e588.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x88, including `lw` at 0x40e278, `lw` at 0x40e550, `lw` at 0x40e580.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x88, including `lw` at 0x40e288, `lw` at 0x40e5ac, `lw` at 0x40e5d4.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8c, including `lw` at 0x40e290, `lw` at 0x40e568, `lw` at 0x40e5b4.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0x40e30c, `ld` at 0x40e32c, `ld` at 0x40e348.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x40e4c8, `sd` at 0x40e4e8.
  The `sw` at 0x40e560 stores 4 bytes to a0 (arg0 at entry) +0x88.
  The `sw` at 0x40e578 stores 4 bytes to a1 (arg1 at entry) +0x8c.
  The `sw` at 0x40e59c stores 4 bytes to a0 (arg0 at entry) +0x90.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x94, including `sw` at 0x40e5c4, `sw` at 0x40e5f0.
  The `sw` at 0x40e610 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `sw` at 0x40e61c stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0x40e628 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `sw` at 0x40e634 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0x40e264 targets 0x40e608 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x40e2a8 targets 0x40e2c0, is taken when a2(?) >= a3(?) (signed), and falls through when a2(?) < a3(?) (signed).
  The `beq` branch at 0x40e2b8 targets 0x40e2c8 and is always taken.
  The `bne` branch at 0x40e2d8 targets 0x40e2e8, is taken when t0(?) < 0x41 (signed), and falls through when t0(?) >= 0x41 (signed).
  The `bgez` branch at 0x40e374 targets 0x40e3d0, is taken when t3(?) >= 0 (signed), and falls through when t3(?) < 0 (signed).
  The `beq` branch at 0x40e3c8 targets 0x40e41c and is always taken.
  The `blez` branch at 0x40e3d4 targets 0x40e41c, is taken when t9(?) <= 0 (signed), and falls through when t9(?) > 0 (signed).
  The `beq` branch at 0x40e420 targets 0x40e490, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x40e5a0 targets 0x40e5d0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x40e5c8 targets 0x40e608 and is always taken.
  The `bne` branch at 0x40e5f4 targets 0x40e608, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x40e600 targets 0x40e26c and is always taken.
  The return at 0x40e640 has v0 = ?.

- `packSegmentInplace` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x40e650 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40e650-0x40f19c (2892 bytes).
  It occupies 2892 bytes.
  32 such `lw` accesses load 4 bytes from ?, including `lw` at 0x40e6f0, `lw` at 0x40e740, `lw` at 0x40e840.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0x40e9a4, `sw` at 0x40eb34, `sw` at 0x40ef4c.
  The `jalr` at 0x40e7d8 calls distributeBits64 with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ed48 calls distributeBits64 with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x40e67c targets 0x40eb54 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x40e690 targets 0x40e818 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x40e6a4 targets 0x40e7fc and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x40e6f4 targets 0x40e7fc, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x40e744 targets 0x40e7e0, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `bne` branch at 0x40e7f4 targets 0x40e6ac, is taken when a2(?) < 0x6 (signed), and falls through when a2(?) >= 0x6 (signed).
  The `bne` branch at 0x40e810 targets 0x40e698, is taken when a4(?) < 0x6 (signed), and falls through when a4(?) >= 0x6 (signed).
  The `beq` branch at 0x40e844 targets 0x40e974, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x40e87c targets 0x40e974, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x40e8b4 targets 0x40e974, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x40e8ec targets 0x40e974, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x40e924 targets 0x40e974, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x40e95c targets 0x40e974, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x40e96c targets 0x40e978 and is always taken.
  The `beq` branch at 0x40e9d4 targets 0x40eb04, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x40ea0c targets 0x40eb04, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x40ea44 targets 0x40eb04, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x40ea7c targets 0x40eb04, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x40eab4 targets 0x40eb04, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x40eaec targets 0x40eb04, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x40eafc targets 0x40eb08 and is always taken.
  The `bne` branch at 0x40eb4c targets 0x40e684, is taken when v1(?) < 0x5 (signed), and falls through when v1(?) >= 0x5 (signed).
  The `beq` branch at 0x40eb60 targets 0x40f188 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x40eb98 targets 0x40f16c, is taken when a5(?) == a6(=0x1), and falls through when a5(?) != a6(=0x1).
  The `beq` branch at 0x40ebac targets 0x40efdc and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x40ec00 targets 0x40efc0, is taken when t0(?) == t1(=0x1), and falls through when t0(?) != t1(=0x1).
  The `beq` branch at 0x40ec14 targets 0x40efc0 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x40ec4c targets 0x40efa4, is taken when t3(?) == t8(=0x1), and falls through when t3(?) != t8(=0x1).
  The `beq` branch at 0x40ec60 targets 0x40edc0 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x40ecb4 targets 0x40eda4, is taken when ra(?) == at(=0x1), and falls through when ra(?) != at(=0x1).
  The `beq` branch at 0x40ed9c targets 0x40edc0, is taken when a2(?) == a3(=0x1), and falls through when a2(?) != a3(=0x1).
  The `bne` branch at 0x40edb8 targets 0x40ec68, is taken when a4(?) < 0x6 (signed), and falls through when a4(?) >= 0x6 (signed).
  The `beq` branch at 0x40edec targets 0x40ef1c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x40ee24 targets 0x40ef1c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x40ee5c targets 0x40ef1c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x40ee94 targets 0x40ef1c, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x40eecc targets 0x40ef1c, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x40ef04 targets 0x40ef1c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x40ef14 targets 0x40ef20 and is always taken.
  The `beq` branch at 0x40ef9c targets 0x40efc0, is taken when a1(?) == a2(=0x1), and falls through when a1(?) != a2(=0x1).
  The `bne` branch at 0x40efb8 targets 0x40ec1c, is taken when a6(?) < 0x5 (signed), and falls through when a6(?) >= 0x5 (signed).
  The `bne` branch at 0x40efd4 targets 0x40ebb4, is taken when t0(?) < 0x6 (signed), and falls through when t0(?) >= 0x6 (signed).
  The `beq` branch at 0x40f008 targets 0x40f138, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x40f040 targets 0x40f138, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x40f078 targets 0x40f138, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x40f0b0 targets 0x40f138, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x40f0e8 targets 0x40f138, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x40f120 targets 0x40f138, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x40f130 targets 0x40f13c and is always taken.
  The `bne` branch at 0x40f180 targets 0x40eb68, is taken when t0(?) < 0x5 (signed), and falls through when t0(?) >= 0x5 (signed).
  The return at 0x40f194 has v0 = ?.

- `writeGenericDIFHeaderIntoDIFsequence` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x40f1a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40f1a0-0x40f33c (412 bytes).
  It occupies 412 bytes.
  2 such `lw` accesses load 4 bytes from sym(difSeqCnt) +0x0, including `lw` at 0x40f238, `lw` at 0x40f274.
  The `sw` at 0x40f244 stores 4 bytes to sym(difSeqCnt) +0x0.
  The `lbu` at 0x40f2ac loads 1 byte from ?.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x40f2bc, `sb` at 0x40f304.
  The `sw` at 0x40f328 stores 4 bytes to sym(difBlkCnt) +0x0.
  The `beq` branch at 0x40f214 targets 0x40f234, is taken when at(=a2) == 0, and falls through when at(=a2) != 0.
  The `beq` branch at 0x40f24c targets 0x40f264, is taken when t8(=a1) == 0, and falls through when t8(=a1) != 0.
  The `beq` branch at 0x40f25c targets 0x40f26c and is always taken.
  The `beq` branch at 0x40f298 targets 0x40f2dc and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x40f2d4 targets 0x40f2a0, is taken when a2(?) < 0x8 (signed), and falls through when a2(?) >= 0x8 (signed).
  The `beq` branch at 0x40f2ec targets 0x40f324 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x40f31c targets 0x40f2f4, is taken when t0(?) < 0x50 (signed), and falls through when t0(?) >= 0x50 (signed).
  The return at 0x40f334 has v0 = 0x1.

- `writeHeader` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x40f340 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40f340-0x40f5e0 (672 bytes).
  It occupies 672 bytes.
  2 such `lw` accesses load 4 bytes from sym(videoMode) +0x0, including `lw` at 0x40f364, `lw` at 0x40f370.
  5 such `lw` accesses load 4 bytes from sym(difSeqCnt) +0x0, including `lw` at 0x40f3a8, `lw` at 0x40f418, `lw` at 0x40f488.
  The `sd` at 0x40f3bc stores 8 bytes to a0 (arg0 at entry) +0x50.
  9 such `sd` accesses store 8 bytes to ?, including `sd` at 0x40f3e8, `sd` at 0x40f42c, `sd` at 0x40f458.
  The `bgezall` at 0x40f384 calls writeGenericDIFHeaderIntoDIFsequence [0x40f1a0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=a3 at entry (arg3).
  The `beq` branch at 0x40f3cc targets 0x40f408 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x40f400 targets 0x40f3d4, is taken when a7(?) < 0x9 (signed), and falls through when a7(?) >= 0x9 (signed).
  The `beq` branch at 0x40f43c targets 0x40f478 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x40f470 targets 0x40f444, is taken when at(?) < 0x9 (signed), and falls through when at(?) >= 0x9 (signed).
  The `beq` branch at 0x40f4ac targets 0x40f4e8 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x40f4e0 targets 0x40f4b4, is taken when a5(?) < 0x9 (signed), and falls through when a5(?) >= 0x9 (signed).
  The `beq` branch at 0x40f51c targets 0x40f558 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x40f550 targets 0x40f524, is taken when t9(?) < 0x9 (signed), and falls through when t9(?) >= 0x9 (signed).
  The `beq` branch at 0x40f58c targets 0x40f5c8 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x40f5c0 targets 0x40f594, is taken when a3(?) < 0x9 (signed), and falls through when a3(?) >= 0x9 (signed).
  The return at 0x40f5d8 has v0 = ?.

- `writeAudio` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x40f5e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40f5e0-0x40f5fc (28 bytes).
  It occupies 28 bytes.
  The return at 0x40f5f4 has v0 = a0+80.

- `writeSegment64` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x40f600 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40f600-0x40fb4c (1356 bytes).
  It occupies 1356 bytes.
  3 such `lw` accesses load 4 bytes from abs 0x47fec4, including `lw` at 0x40f634, `lw` at 0x40fb00, `lw` at 0x40fb0c.
  2 such `lw` accesses load 4 bytes from sym(difBlkCnt) +0x0, including `lw` at 0x40f638, `lw` at 0x40fb04.
  The `lw` at 0x40f63c loads 4 bytes from abs 0x47fe6c.
  The `lw` at 0x40f640 loads 4 bytes from sym(difSeqCnt) +0x0.
  12 such `ld` accesses load 8 bytes from ?, including `ld` at 0x40f694, `ld` at 0x40f6c8, `ld` at 0x40f728.
  10 such `sd` accesses store 8 bytes to ?, including `sd` at 0x40f9d0, `sd` at 0x40f9f0, `sd` at 0x40fa10.
  The `sw` at 0x40fb10 stores 4 bytes to sym(difBlkCnt) +0x0.
  The `beq` branch at 0x40f62c targets 0x40fb30 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x40fb28 targets 0x40f634, is taken when t0(?) < 0x5 (signed), and falls through when t0(?) >= 0x5 (signed).
  The return at 0x40fb44 has v0 = ?.

- `addHeaderInfo` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x40fb50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40fb50-0x40ffa0 (1104 bytes).
  It occupies 1104 bytes.
  5 such `sb` accesses store 1 byte to ?, including `sb` at 0x40fdb4, `sb` at 0x40fe14, `sb` at 0x40fee8.
  2 such `swl` accesses store 4 bytes to ?, including `swl` at 0x40fde4, `swl` at 0x40fe44.
  2 such `swr` accesses store 4 bytes to ?, including `swr` at 0x40fde8, `swr` at 0x40fe48.
  The `beq` branch at 0x40fbc8 targets 0x40fc00, is taken when at(=a1) == 0, and falls through when at(=a1) != 0.
  The `beq` branch at 0x40fbf8 targets 0x40fc24 and is always taken.
  The `beq` branch at 0x40fd58 targets 0x40fe6c, is taken when v0(=0x1) >= v1(=one of 0xa, 0xc) (signed), and falls through when v0(=0x1) < v1(=one of 0xa, 0xc) (signed).
  The `bne` branch at 0x40fe64 targets 0x40fd60, is taken when t8(?) < t9(=one of 0xa, 0xc) (signed), and falls through when t8(?) >= t9(=one of 0xa, 0xc) (signed).
  The `beq` branch at 0x40fe7c targets 0x40ff90, is taken when v1(=0x0) >= a0(=one of 0xa, 0xc) (signed), and falls through when v1(=0x0) < a0(=one of 0xa, 0xc) (signed).
  The `beq` branch at 0x40fec4 targets 0x40ff70 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x40ff68 targets 0x40fecc, is taken when a5(?) < 0x87 (signed), and falls through when a5(?) >= 0x87 (signed).
  The `bne` branch at 0x40ff88 targets 0x40fe84, is taken when a0(?) < a1(=one of 0xa, 0xc) (signed), and falls through when a0(?) >= a1(=one of 0xa, 0xc) (signed).
  The return at 0x40ff98 has v0 = ?.

- `_GETBITS` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x40ffa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x40ffa0-0x410034 (148 bytes).
  It occupies 148 bytes.
  5 such `lb` accesses load 1 byte from ?, including `lb` at 0x40ffb0, `lb` at 0x40ffc8, `lb` at 0x40fff0.
  The `lh` at 0x40ffbc loads 2 bytes from ?.
  The `bgtz` branch at 0x40ffc4 targets 0x40ffd0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40ffd4 targets 0x41001c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x40fff4 targets 0x410014, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x410024 targets 0x40ffac, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The return at 0x41002c has v0 = ?.

- `_APPENDBITS` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x410034 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x410034-0x410310 (732 bytes).
  It occupies 732 bytes.
  The `lwu` at 0x410038 loads 4 bytes from a4 (arg4 at entry) +0x4.
  The `lwu` at 0x41003c loads 4 bytes from a4 (arg4 at entry) +0x0.
  The `ld` at 0x410048 loads 8 bytes from (([a4+4] << 0x3) + a4+8) +0x0.
  2 such `lb` accesses load 1 byte from ?, including `lb` at 0x410058, `lb` at 0x41006c.
  The `lh` at 0x410064 loads 2 bytes from ?.
  6 such `lwu` accesses load 4 bytes from ?, including `lwu` at 0x4100a4, `lwu` at 0x4100a8, `lwu` at 0x4100c0.
  9 such `sd` accesses store 8 bytes to ?, including `sd` at 0x410108, `sd` at 0x410130, `sd` at 0x41019c.
  The `sw` at 0x4102f4 stores 4 bytes to a4 (arg4 at entry) +0x4.
  The `sw` at 0x4102f8 stores 4 bytes to a4 (arg4 at entry) +0x0.
  The `bgtz` branch at 0x410070 targets 0x410080, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410084 targets 0x410264, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x4100ac targets 0x4101dc, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `blez` branch at 0x4100d4 targets 0x4100ec, is taken when t0(?) <= 0 (signed), and falls through when t0(?) > 0 (signed).
  The `beq` branch at 0x4100e4 targets 0x410140 and is always taken.
  The `beq` branch at 0x4100ec targets 0x410124, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x41011c targets 0x410140 and is always taken.
  The `blez` branch at 0x410168 targets 0x410180, is taken when t0(?) <= 0 (signed), and falls through when t0(?) > 0 (signed).
  The `beq` branch at 0x410178 targets 0x410260 and is always taken.
  The `beq` branch at 0x410180 targets 0x4101b8, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x4101b0 targets 0x410260 and is always taken.
  The `beq` branch at 0x4101d4 targets 0x410260 and is always taken.
  The `blez` branch at 0x4101f4 targets 0x41020c, is taken when t0(?) <= 0 (signed), and falls through when t0(?) > 0 (signed).
  The `beq` branch at 0x410204 targets 0x410260 and is always taken.
  The `beq` branch at 0x41020c targets 0x410244, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x41023c targets 0x410260 and is always taken.
  The `beq` branch at 0x41026c targets 0x410054, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `blez` branch at 0x410288 targets 0x4102a0, is taken when t0(?) <= 0 (signed), and falls through when t0(?) > 0 (signed).
  The `beq` branch at 0x410298 targets 0x4102f4 and is always taken.
  The `beq` branch at 0x4102a0 targets 0x4102d8, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x4102d0 targets 0x4102f4 and is always taken.
  The return at 0x410308 has v0 = ?.

- `_GETBITSUR8x8` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x410310 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x410310-0x410e04 (2804 bytes).
  It occupies 2804 bytes.
  The `lh` at 0x410320 loads 2 bytes from a0 (arg0 at entry) +0x10.
  62 such `lh` accesses load 2 bytes from ?, including `lh` at 0x41034c, `lh` at 0x410378, `lh` at 0x4103a4.
  The `jalr` at 0x410344 calls _bits8x8 [0x410e04] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x2, a7=0x2.
  The `jalr` at 0x410370 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x41039c calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4103c8 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4103f4 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410420 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x41044c calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410478 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4104a4 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4104d0 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4104fc calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410528 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410554 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410580 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4105ac calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4105d8 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410604 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410630 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x41065c calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410688 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4106b4 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4106e0 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x41070c calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410738 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410764 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410790 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4107bc calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4107e8 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410814 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410840 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x41086c calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410898 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4108c4 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4108f0 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x41091c calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410948 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410974 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4109a0 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4109cc calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4109f8 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410a24 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410a50 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410a7c calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410aa8 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410ad4 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410b00 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410b2c calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410b58 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410b84 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410bb0 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410bdc calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410c08 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410c34 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410c60 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410c8c calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410cb8 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410ce4 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410d10 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410d3c calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410d68 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410d94 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410dc0 calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x410dec calls _bits8x8 [0x410e04] with a0=?, a1=?, a2=?, a3=?.
  The `bgtz` branch at 0x410324 targets 0x410330, is taken when a5(=[a0+16]:2) > 0 (signed), and falls through when a5(=[a0+16]:2) <= 0 (signed).
  The `beq` branch at 0x410334 targets 0x41034c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410350 targets 0x41035c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410360 targets 0x410378, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x41037c targets 0x410388, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x41038c targets 0x4103a4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4103a8 targets 0x4103b4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4103b8 targets 0x4103d0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4103d4 targets 0x4103e0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4103e4 targets 0x4103fc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410400 targets 0x41040c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410410 targets 0x410428, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x41042c targets 0x410438, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x41043c targets 0x410454, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410458 targets 0x410464, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410468 targets 0x410480, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410484 targets 0x410490, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410494 targets 0x4104ac, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4104b0 targets 0x4104bc, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4104c0 targets 0x4104d8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4104dc targets 0x4104e8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4104ec targets 0x410504, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410508 targets 0x410514, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410518 targets 0x410530, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410534 targets 0x410540, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410544 targets 0x41055c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410560 targets 0x41056c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410570 targets 0x410588, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x41058c targets 0x410598, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x41059c targets 0x4105b4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4105b8 targets 0x4105c4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4105c8 targets 0x4105e0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4105e4 targets 0x4105f0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4105f4 targets 0x41060c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410610 targets 0x41061c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410620 targets 0x410638, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x41063c targets 0x410648, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x41064c targets 0x410664, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410668 targets 0x410674, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410678 targets 0x410690, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410694 targets 0x4106a0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4106a4 targets 0x4106bc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4106c0 targets 0x4106cc, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4106d0 targets 0x4106e8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4106ec targets 0x4106f8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4106fc targets 0x410714, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410718 targets 0x410724, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410728 targets 0x410740, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410744 targets 0x410750, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410754 targets 0x41076c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410770 targets 0x41077c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410780 targets 0x410798, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x41079c targets 0x4107a8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4107ac targets 0x4107c4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4107c8 targets 0x4107d4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4107d8 targets 0x4107f0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4107f4 targets 0x410800, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410804 targets 0x41081c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410820 targets 0x41082c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410830 targets 0x410848, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x41084c targets 0x410858, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x41085c targets 0x410874, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410878 targets 0x410884, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410888 targets 0x4108a0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4108a4 targets 0x4108b0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4108b4 targets 0x4108cc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4108d0 targets 0x4108dc, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4108e0 targets 0x4108f8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4108fc targets 0x410908, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x41090c targets 0x410924, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410928 targets 0x410934, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410938 targets 0x410950, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410954 targets 0x410960, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410964 targets 0x41097c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410980 targets 0x41098c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410990 targets 0x4109a8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4109ac targets 0x4109b8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4109bc targets 0x4109d4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4109d8 targets 0x4109e4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4109e8 targets 0x410a00, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410a04 targets 0x410a10, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410a14 targets 0x410a2c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410a30 targets 0x410a3c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410a40 targets 0x410a58, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410a5c targets 0x410a68, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410a6c targets 0x410a84, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410a88 targets 0x410a94, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410a98 targets 0x410ab0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410ab4 targets 0x410ac0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410ac4 targets 0x410adc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410ae0 targets 0x410aec, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410af0 targets 0x410b08, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410b0c targets 0x410b18, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410b1c targets 0x410b34, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410b38 targets 0x410b44, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410b48 targets 0x410b60, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410b64 targets 0x410b70, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410b74 targets 0x410b8c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410b90 targets 0x410b9c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410ba0 targets 0x410bb8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410bbc targets 0x410bc8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410bcc targets 0x410be4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410be8 targets 0x410bf4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410bf8 targets 0x410c10, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410c14 targets 0x410c20, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410c24 targets 0x410c3c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410c40 targets 0x410c4c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410c50 targets 0x410c68, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410c6c targets 0x410c78, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410c7c targets 0x410c94, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410c98 targets 0x410ca4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410ca8 targets 0x410cc0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410cc4 targets 0x410cd0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410cd4 targets 0x410cec, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410cf0 targets 0x410cfc, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410d00 targets 0x410d18, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410d1c targets 0x410d28, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410d2c targets 0x410d44, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410d48 targets 0x410d54, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410d58 targets 0x410d70, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410d74 targets 0x410d80, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410d84 targets 0x410d9c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410da0 targets 0x410dac, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410db0 targets 0x410dc8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410dcc targets 0x410dd8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410ddc targets 0x410df4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The return at 0x410df8 has v0 = one of ?, ret(_bits8x8).
  The instructions from 0x410e00 to 0x410e00 are not reached by any path from the entry, and their branches are not listed.

- `_bits8x8` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x410e04 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x410e04-0x410e44 (64 bytes).
  It occupies 64 bytes.
  2 such `lb` accesses load 1 byte from ?, including `lb` at 0x410e14, `lb` at 0x410e28.
  The `lb` at 0x410e30 loads 1 byte from (a1 + a5) +0x0.
  The `bne` branch at 0x410e18 targets 0x410e38, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The return at 0x410e3c has v0 = ?.

- `_APPENDBITSUR8x8` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x410e48 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x410e48-0x411bb4 (3436 bytes).
  It occupies 3436 bytes.
  The `lwu` at 0x410e50 loads 4 bytes from a3 (arg3 at entry) +0x4.
  The `lwu` at 0x410e54 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x410e60 loads 8 bytes from (([a3+4] << 0x3) + a3+8) +0x0.
  The `lh` at 0x410e6c loads 2 bytes from a0 (arg0 at entry) +0x10.
  The `lb` at 0x410e70 loads 1 byte from a2 (arg2 at entry) +0x8.
  62 such `lh` accesses load 2 bytes from ?, including `lh` at 0x410e98, `lh` at 0x410ec4, `lh` at 0x410ef0.
  62 such `lb` accesses load 1 byte from ?, including `lb` at 0x410e9c, `lb` at 0x410ec8, `lb` at 0x410ef4.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x411988, `sd` at 0x4119b0, `sd` at 0x4119d0.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4119c0, `sw` at 0x4119c4.
  The `bal` at 0x410e90 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=ra at entry, a7=0x2.
  The `bal` at 0x410ebc calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x410ee8 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x410f14 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x410f40 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x410f6c calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x410f98 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x410fc4 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x410ff0 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x41101c calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x411048 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x411074 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x4110a0 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x4110cc calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x4110f8 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x411124 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x411150 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x41117c calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x4111a8 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x4111d4 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x411200 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x41122c calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x411258 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x411284 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x4112b0 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x4112dc calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x411308 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x411334 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x411360 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x41138c calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x4113b8 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x4113e4 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x411410 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x41143c calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x411468 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x411494 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x4114c0 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x4114ec calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x411518 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x411544 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x411570 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x41159c calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x4115c8 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x4115f4 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x411620 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x41164c calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x411678 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x4116a4 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x4116d0 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x4116fc calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x411728 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x411754 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x411780 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x4117ac calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x4117d8 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x411804 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x411830 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x41185c calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x411888 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x4118b4 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x4118e0 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x41190c calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x411938 calls _APPENDBITSUR8x8+2968 [0x4119e0] with a0=?, a1=?, a2=?, a3=?.
  The `bgtz` branch at 0x410e74 targets 0x410e84, is taken when a5(=[a0+16]:2) > 0 (signed), and falls through when a5(=[a0+16]:2) <= 0 (signed).
  The `beq` branch at 0x410e88 targets 0x410e98, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410ea0 targets 0x410eb0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410eb4 targets 0x410ec4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410ecc targets 0x410edc, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410ee0 targets 0x410ef0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410ef8 targets 0x410f08, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410f0c targets 0x410f1c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410f24 targets 0x410f34, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410f38 targets 0x410f48, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410f50 targets 0x410f60, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410f64 targets 0x410f74, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410f7c targets 0x410f8c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410f90 targets 0x410fa0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410fa8 targets 0x410fb8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410fbc targets 0x410fcc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x410fd4 targets 0x410fe4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x410fe8 targets 0x410ff8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411000 targets 0x411010, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411014 targets 0x411024, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x41102c targets 0x41103c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411040 targets 0x411050, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411058 targets 0x411068, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x41106c targets 0x41107c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411084 targets 0x411094, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411098 targets 0x4110a8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4110b0 targets 0x4110c0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4110c4 targets 0x4110d4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4110dc targets 0x4110ec, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4110f0 targets 0x411100, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411108 targets 0x411118, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x41111c targets 0x41112c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411134 targets 0x411144, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411148 targets 0x411158, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411160 targets 0x411170, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411174 targets 0x411184, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x41118c targets 0x41119c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4111a0 targets 0x4111b0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4111b8 targets 0x4111c8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4111cc targets 0x4111dc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4111e4 targets 0x4111f4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4111f8 targets 0x411208, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411210 targets 0x411220, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411224 targets 0x411234, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x41123c targets 0x41124c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411250 targets 0x411260, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411268 targets 0x411278, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x41127c targets 0x41128c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411294 targets 0x4112a4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4112a8 targets 0x4112b8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4112c0 targets 0x4112d0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4112d4 targets 0x4112e4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4112ec targets 0x4112fc, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411300 targets 0x411310, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411318 targets 0x411328, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x41132c targets 0x41133c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411344 targets 0x411354, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411358 targets 0x411368, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411370 targets 0x411380, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411384 targets 0x411394, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x41139c targets 0x4113ac, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4113b0 targets 0x4113c0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4113c8 targets 0x4113d8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4113dc targets 0x4113ec, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4113f4 targets 0x411404, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411408 targets 0x411418, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411420 targets 0x411430, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411434 targets 0x411444, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x41144c targets 0x41145c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411460 targets 0x411470, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411478 targets 0x411488, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x41148c targets 0x41149c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4114a4 targets 0x4114b4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4114b8 targets 0x4114c8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4114d0 targets 0x4114e0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4114e4 targets 0x4114f4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4114fc targets 0x41150c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411510 targets 0x411520, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411528 targets 0x411538, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x41153c targets 0x41154c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411554 targets 0x411564, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411568 targets 0x411578, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411580 targets 0x411590, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411594 targets 0x4115a4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4115ac targets 0x4115bc, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4115c0 targets 0x4115d0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4115d8 targets 0x4115e8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4115ec targets 0x4115fc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411604 targets 0x411614, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411618 targets 0x411628, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411630 targets 0x411640, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411644 targets 0x411654, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x41165c targets 0x41166c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411670 targets 0x411680, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411688 targets 0x411698, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x41169c targets 0x4116ac, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4116b4 targets 0x4116c4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4116c8 targets 0x4116d8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4116e0 targets 0x4116f0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4116f4 targets 0x411704, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x41170c targets 0x41171c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411720 targets 0x411730, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411738 targets 0x411748, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x41174c targets 0x41175c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411764 targets 0x411774, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411778 targets 0x411788, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411790 targets 0x4117a0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4117a4 targets 0x4117b4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4117bc targets 0x4117cc, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4117d0 targets 0x4117e0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4117e8 targets 0x4117f8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4117fc targets 0x41180c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411814 targets 0x411824, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411828 targets 0x411838, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411840 targets 0x411850, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411854 targets 0x411864, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x41186c targets 0x41187c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411880 targets 0x411890, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411898 targets 0x4118a8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4118ac targets 0x4118bc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4118c4 targets 0x4118d4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4118d8 targets 0x4118e8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4118f0 targets 0x411900, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411904 targets 0x411914, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x41191c targets 0x41192c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411930 targets 0x411940, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `blez` branch at 0x411954 targets 0x41196c, is taken when t0(?) <= 0 (signed), and falls through when t0(?) > 0 (signed).
  The `beq` branch at 0x411964 targets 0x4119c0 and is always taken.
  The `beq` branch at 0x41196c targets 0x4119a4, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x41199c targets 0x4119c0 and is always taken.
  The return at 0x4119d8 has v0 = ?.
  The instructions from 0x4119e0 to 0x411bb0 are not reached by any path from the entry, and their branches are not listed.

- `_GETBITSUR4x8` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x411bb4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x411bb4-0x4126a4 (2800 bytes).
  It occupies 2800 bytes.
  The `lh` at 0x411bc4 loads 2 bytes from a0 (arg0 at entry) +0x8.
  62 such `lh` accesses load 2 bytes from ?, including `lh` at 0x411bf0, `lh` at 0x411c1c, `lh` at 0x411c48.
  The `jalr` at 0x411be8 calls _bits4x8 [0x4126a4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x2, a7=0x2.
  The `jalr` at 0x411c14 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x411c40 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x411c6c calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x411c98 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x411cc4 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x411cf0 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x411d1c calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x411d48 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x411d74 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x411da0 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x411dcc calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x411df8 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x411e24 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x411e50 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x411e7c calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x411ea8 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x411ed4 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x411f00 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x411f2c calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x411f58 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x411f84 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x411fb0 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x411fdc calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x412008 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x412034 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x412060 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x41208c calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4120b8 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4120e4 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x412110 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x41213c calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x412168 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x412194 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4121c0 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4121ec calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x412218 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x412244 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x412270 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x41229c calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4122c8 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4122f4 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x412320 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x41234c calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x412378 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4123a4 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4123d0 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4123fc calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x412428 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x412454 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x412480 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4124ac calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4124d8 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x412504 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x412530 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x41255c calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x412588 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4125b4 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4125e0 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x41260c calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x412638 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x412664 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x412690 calls _bits4x8 [0x4126a4] with a0=?, a1=?, a2=?, a3=?.
  The `bgtz` branch at 0x411bc8 targets 0x411bd4, is taken when a5(=[a0+8]:2) > 0 (signed), and falls through when a5(=[a0+8]:2) <= 0 (signed).
  The `beq` branch at 0x411bd8 targets 0x411bf0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411bf4 targets 0x411c00, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411c04 targets 0x411c1c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411c20 targets 0x411c2c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411c30 targets 0x411c48, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411c4c targets 0x411c58, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411c5c targets 0x411c74, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411c78 targets 0x411c84, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411c88 targets 0x411ca0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411ca4 targets 0x411cb0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411cb4 targets 0x411ccc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411cd0 targets 0x411cdc, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411ce0 targets 0x411cf8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411cfc targets 0x411d08, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411d0c targets 0x411d24, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411d28 targets 0x411d34, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411d38 targets 0x411d50, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411d54 targets 0x411d60, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411d64 targets 0x411d7c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411d80 targets 0x411d8c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411d90 targets 0x411da8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411dac targets 0x411db8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411dbc targets 0x411dd4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411dd8 targets 0x411de4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411de8 targets 0x411e00, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411e04 targets 0x411e10, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411e14 targets 0x411e2c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411e30 targets 0x411e3c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411e40 targets 0x411e58, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411e5c targets 0x411e68, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411e6c targets 0x411e84, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411e88 targets 0x411e94, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411e98 targets 0x411eb0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411eb4 targets 0x411ec0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411ec4 targets 0x411edc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411ee0 targets 0x411eec, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411ef0 targets 0x411f08, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411f0c targets 0x411f18, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411f1c targets 0x411f34, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411f38 targets 0x411f44, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411f48 targets 0x411f60, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411f64 targets 0x411f70, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411f74 targets 0x411f8c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411f90 targets 0x411f9c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411fa0 targets 0x411fb8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411fbc targets 0x411fc8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411fcc targets 0x411fe4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x411fe8 targets 0x411ff4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x411ff8 targets 0x412010, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412014 targets 0x412020, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412024 targets 0x41203c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412040 targets 0x41204c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412050 targets 0x412068, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x41206c targets 0x412078, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x41207c targets 0x412094, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412098 targets 0x4120a4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4120a8 targets 0x4120c0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4120c4 targets 0x4120d0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4120d4 targets 0x4120ec, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4120f0 targets 0x4120fc, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412100 targets 0x412118, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x41211c targets 0x412128, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x41212c targets 0x412144, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412148 targets 0x412154, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412158 targets 0x412170, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412174 targets 0x412180, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412184 targets 0x41219c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4121a0 targets 0x4121ac, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4121b0 targets 0x4121c8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4121cc targets 0x4121d8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4121dc targets 0x4121f4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4121f8 targets 0x412204, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412208 targets 0x412220, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412224 targets 0x412230, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412234 targets 0x41224c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412250 targets 0x41225c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412260 targets 0x412278, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x41227c targets 0x412288, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x41228c targets 0x4122a4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4122a8 targets 0x4122b4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4122b8 targets 0x4122d0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4122d4 targets 0x4122e0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4122e4 targets 0x4122fc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412300 targets 0x41230c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412310 targets 0x412328, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x41232c targets 0x412338, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x41233c targets 0x412354, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412358 targets 0x412364, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412368 targets 0x412380, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412384 targets 0x412390, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412394 targets 0x4123ac, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4123b0 targets 0x4123bc, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4123c0 targets 0x4123d8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4123dc targets 0x4123e8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4123ec targets 0x412404, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412408 targets 0x412414, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412418 targets 0x412430, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412434 targets 0x412440, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412444 targets 0x41245c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412460 targets 0x41246c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412470 targets 0x412488, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x41248c targets 0x412498, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x41249c targets 0x4124b4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4124b8 targets 0x4124c4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4124c8 targets 0x4124e0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4124e4 targets 0x4124f0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4124f4 targets 0x41250c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412510 targets 0x41251c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412520 targets 0x412538, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x41253c targets 0x412548, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x41254c targets 0x412564, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412568 targets 0x412574, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412578 targets 0x412590, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412594 targets 0x4125a0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4125a4 targets 0x4125bc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4125c0 targets 0x4125cc, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4125d0 targets 0x4125e8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4125ec targets 0x4125f8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4125fc targets 0x412614, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412618 targets 0x412624, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412628 targets 0x412640, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412644 targets 0x412650, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412654 targets 0x41266c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412670 targets 0x41267c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412680 targets 0x412698, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The return at 0x41269c has v0 = one of ?, ret(_bits4x8).

- `_bits4x8` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x4126a4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x4126a4-0x4126e4 (64 bytes).
  It occupies 64 bytes.
  2 such `lb` accesses load 1 byte from ?, including `lb` at 0x4126b4, `lb` at 0x4126c8.
  The `lb` at 0x4126d0 loads 1 byte from (a1 + a5) +0x0.
  The `bne` branch at 0x4126b8 targets 0x4126d8, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The return at 0x4126dc has v0 = ?.

- `_APPENDBITSUR4x8` in `usr/lib32/dmedia/imageconverters/debug/vicedv.so` at 0x4126e4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/debug/vicedv.so`.
  Range: 0x4126e4-0x413450 (3436 bytes).
  It occupies 3436 bytes.
  The `lwu` at 0x4126ec loads 4 bytes from a3 (arg3 at entry) +0x4.
  The `lwu` at 0x4126f0 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x4126fc loads 8 bytes from (([a3+4] << 0x3) + a3+8) +0x0.
  The `lh` at 0x412708 loads 2 bytes from a0 (arg0 at entry) +0x8.
  The `lb` at 0x41270c loads 1 byte from a2 (arg2 at entry) +0x4.
  62 such `lh` accesses load 2 bytes from ?, including `lh` at 0x412734, `lh` at 0x412760, `lh` at 0x41278c.
  62 such `lb` accesses load 1 byte from ?, including `lb` at 0x412738, `lb` at 0x412764, `lb` at 0x412790.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x413224, `sd` at 0x41324c, `sd` at 0x41326c.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x41325c, `sw` at 0x413260.
  The `bal` at 0x41272c calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=ra at entry, a7=0x2.
  The `bal` at 0x412758 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412784 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x4127b0 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x4127dc calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412808 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412834 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412860 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x41288c calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x4128b8 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x4128e4 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412910 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x41293c calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412968 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412994 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x4129c0 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x4129ec calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412a18 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412a44 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412a70 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412a9c calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412ac8 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412af4 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412b20 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412b4c calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412b78 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412ba4 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412bd0 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412bfc calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412c28 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412c54 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412c80 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412cac calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412cd8 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412d04 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412d30 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412d5c calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412d88 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412db4 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412de0 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412e0c calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412e38 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412e64 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412e90 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412ebc calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412ee8 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412f14 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412f40 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412f6c calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412f98 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412fc4 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x412ff0 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x41301c calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x413048 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x413074 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x4130a0 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x4130cc calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x4130f8 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x413124 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x413150 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x41317c calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x4131a8 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x4131d4 calls _APPENDBITSUR4x8+2968 [0x41327c] with a0=?, a1=?, a2=?, a3=?.
  The `bgtz` branch at 0x412710 targets 0x412720, is taken when a5(=[a0+8]:2) > 0 (signed), and falls through when a5(=[a0+8]:2) <= 0 (signed).
  The `beq` branch at 0x412724 targets 0x412734, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x41273c targets 0x41274c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412750 targets 0x412760, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412768 targets 0x412778, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x41277c targets 0x41278c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412794 targets 0x4127a4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4127a8 targets 0x4127b8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4127c0 targets 0x4127d0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4127d4 targets 0x4127e4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4127ec targets 0x4127fc, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412800 targets 0x412810, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412818 targets 0x412828, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x41282c targets 0x41283c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412844 targets 0x412854, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412858 targets 0x412868, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412870 targets 0x412880, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412884 targets 0x412894, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x41289c targets 0x4128ac, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4128b0 targets 0x4128c0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4128c8 targets 0x4128d8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4128dc targets 0x4128ec, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4128f4 targets 0x412904, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412908 targets 0x412918, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412920 targets 0x412930, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412934 targets 0x412944, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x41294c targets 0x41295c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412960 targets 0x412970, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412978 targets 0x412988, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x41298c targets 0x41299c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4129a4 targets 0x4129b4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4129b8 targets 0x4129c8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4129d0 targets 0x4129e0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4129e4 targets 0x4129f4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4129fc targets 0x412a0c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412a10 targets 0x412a20, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412a28 targets 0x412a38, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412a3c targets 0x412a4c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412a54 targets 0x412a64, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412a68 targets 0x412a78, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412a80 targets 0x412a90, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412a94 targets 0x412aa4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412aac targets 0x412abc, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412ac0 targets 0x412ad0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412ad8 targets 0x412ae8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412aec targets 0x412afc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412b04 targets 0x412b14, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412b18 targets 0x412b28, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412b30 targets 0x412b40, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412b44 targets 0x412b54, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412b5c targets 0x412b6c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412b70 targets 0x412b80, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412b88 targets 0x412b98, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412b9c targets 0x412bac, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412bb4 targets 0x412bc4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412bc8 targets 0x412bd8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412be0 targets 0x412bf0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412bf4 targets 0x412c04, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412c0c targets 0x412c1c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412c20 targets 0x412c30, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412c38 targets 0x412c48, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412c4c targets 0x412c5c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412c64 targets 0x412c74, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412c78 targets 0x412c88, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412c90 targets 0x412ca0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412ca4 targets 0x412cb4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412cbc targets 0x412ccc, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412cd0 targets 0x412ce0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412ce8 targets 0x412cf8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412cfc targets 0x412d0c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412d14 targets 0x412d24, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412d28 targets 0x412d38, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412d40 targets 0x412d50, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412d54 targets 0x412d64, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412d6c targets 0x412d7c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412d80 targets 0x412d90, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412d98 targets 0x412da8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412dac targets 0x412dbc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412dc4 targets 0x412dd4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412dd8 targets 0x412de8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412df0 targets 0x412e00, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412e04 targets 0x412e14, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412e1c targets 0x412e2c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412e30 targets 0x412e40, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412e48 targets 0x412e58, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412e5c targets 0x412e6c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412e74 targets 0x412e84, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412e88 targets 0x412e98, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412ea0 targets 0x412eb0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412eb4 targets 0x412ec4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412ecc targets 0x412edc, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412ee0 targets 0x412ef0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412ef8 targets 0x412f08, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412f0c targets 0x412f1c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412f24 targets 0x412f34, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412f38 targets 0x412f48, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412f50 targets 0x412f60, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412f64 targets 0x412f74, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412f7c targets 0x412f8c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412f90 targets 0x412fa0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412fa8 targets 0x412fb8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412fbc targets 0x412fcc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x412fd4 targets 0x412fe4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x412fe8 targets 0x412ff8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x413000 targets 0x413010, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x413014 targets 0x413024, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x41302c targets 0x41303c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x413040 targets 0x413050, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x413058 targets 0x413068, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x41306c targets 0x41307c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x413084 targets 0x413094, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x413098 targets 0x4130a8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4130b0 targets 0x4130c0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4130c4 targets 0x4130d4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4130dc targets 0x4130ec, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4130f0 targets 0x413100, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x413108 targets 0x413118, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x41311c targets 0x41312c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x413134 targets 0x413144, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x413148 targets 0x413158, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x413160 targets 0x413170, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x413174 targets 0x413184, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x41318c targets 0x41319c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4131a0 targets 0x4131b0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x4131b8 targets 0x4131c8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x4131cc targets 0x4131dc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `blez` branch at 0x4131f0 targets 0x413208, is taken when t0(?) <= 0 (signed), and falls through when t0(?) > 0 (signed).
  The `beq` branch at 0x413200 targets 0x41325c and is always taken.
  The `beq` branch at 0x413208 targets 0x413240, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x413238 targets 0x41325c and is always taken.
  The return at 0x413274 has v0 = ?.
  The instructions from 0x41327c to 0x41344c are not reached by any path from the entry, and their branches are not listed.
