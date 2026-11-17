# Readings: `usr/lib32/dmedia/imageconverters/vicedv.so`

One entry per routine, filed here from the reading batches by binary.

- `_poolneeds` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x403100 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x403100-0x403134 (52 bytes).
  It occupies 52 bytes.
  The `jalr` at 0x40311c calls vice_dmbuf_requirements with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x40312c has v0 = ret(vice_dmbuf_requirements).

- `make_qparse_pool` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x403140 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x403140-0x4031fc (188 bytes).
  It occupies 188 bytes.
  The `jalr` at 0x403154 calls dmParamsCreate with a0=sp-32, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403174 calls dmBufferSetPoolDefaults with a0=?, a1=0x5, a2=(a0 << 0x10), a3=0x0, a4=0x1.
  The `bgezall` at 0x403188 calls _poolneeds [0x403100] with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x403198 calls dmBufferCreatePool with a0=?, a1=0x47bea8, a2=?, a3=?.
  The `jalr` at 0x4031c0 calls dmParamsDestroy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4031d0 calls dmBufferSetPoolSelectSize with a0=[0x47bea8], a1=?, a2=?, a3=?.
  The `jalr` at 0x4031dc calls dmBufferGetPoolFD with a0=[0x47bea8], a1=?, a2=?, a3=?.
  The `beq` branch at 0x4031a0 targets 0x4031bc, is taken when v0(=ret(dmBufferCreatePool)) == 0, and falls through when v0(=ret(dmBufferCreatePool)) != 0.
  The return at 0x4031b4 has v0 = -0x1.
  The return at 0x4031f4 has v0 = 0x0.

- `make_dvcoeff_pool` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x403200 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x403200-0x40329c (156 bytes).
  It occupies 156 bytes.
  The `jalr` at 0x403218 calls dmParamsCreate with a0=sp-32, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403234 calls dmBufferSetPoolDefaults with a0=?, a1=0x2, a2=(a0 << 0x10), a3=0x1, a4=0x1.
  The `bgezall` at 0x40324c calls _poolneeds [0x403100] with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x40325c calls dmBufferCreatePool with a0=?, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x403280 calls dmParamsDestroy with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x403264 targets 0x40327c, is taken when v0(=ret(dmBufferCreatePool)) == 0, and falls through when v0(=ret(dmBufferCreatePool)) != 0.
  The return at 0x403274 has v0 = -0x1.
  The return at 0x403294 has v0 = 0x0.

- `init_formats` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x4032a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x4032a0-0x403330 (144 bytes).
  It occupies 144 bytes.
  The `sw` at 0x403318 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `sw` at 0x403320 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x40332c stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `jalr` at 0x4032ac calls dmParamsCreate with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4032d0 calls dmParamsCreate with a0=a0+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x4032f4 calls dmParamsCreate with a0=a0+8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4032b4 targets 0x4032cc, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x4032d8 targets 0x4032f0, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x4032fc targets 0x403314, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The return at 0x4032c4 has v0 = -0x1.
  The return at 0x4032e8 has v0 = -0x1.
  The return at 0x40330c has v0 = -0x1.
  The return at 0x403328 has v0 = 0x0.

- `free_formats` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x403330 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x403330-0x403388 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0x403348 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x403354 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x403360 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x403364 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `jalr` at 0x403344 calls dmParamsDestroy with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403350 calls dmParamsDestroy with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0x40335c calls dmParamsDestroy with a0=[a0+8], a1=?, a2=?, a3=?.
  The `jalr` at 0x403370 calls dmBufferDestroyPool with a0=[a0+12], a1=?, a2=?, a3=?.
  The `beq` branch at 0x403368 targets 0x403378, is taken when a0(=[a0+12]) == 0, and falls through when a0(=[a0+12]) != 0.
  The return at 0x403380 has v0 = one of ret(dmParamsDestroy), ret(dmBufferDestroyPool).

- `required_params` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x403390 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x403390-0x40345c (204 bytes).
  It occupies 204 bytes.
  The `jalr` at 0x4033ac calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x410000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4033c8 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x410018, a2=?, a3=?.
  The `jalr` at 0x4033e0 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x410028, a2=?, a3=?.
  The `jalr` at 0x4033f8 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x410038, a2=?, a3=?.
  The `jalr` at 0x403414 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x410050, a2=?, a3=?.
  The `jalr` at 0x403440 calls dmSetError with a0=0x1773, a1=0x47bed0, a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x4033b4 targets 0x403438, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x4033d0 targets 0x403434, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x4033e8 targets 0x403434, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x403400 targets 0x403438, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x40341c targets 0x403434, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The return at 0x40342c has v0 = 0x0.
  The return at 0x403454 has v0 = -0x1.

- `needsConvert` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x403460 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x403460-0x4036c0 (608 bytes).
  It occupies 608 bytes.
  The `bgezall` at 0x403480 calls required_params [0x403390] with a0=a0 at entry (arg0), a1=0x47bed8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4034a0 calls __assert with a0=0x410068, a1=0x410090, a2=0x116, a3=?.
  The `bgezall` at 0x4034b4 calls required_params [0x403390] with a0=a1 at entry (arg1), a1=0x47bed8, a2=?, a3=?.
  The `jalr` at 0x4034d4 calls __assert with a0=0x4100a0, a1=0x410090, a2=0x117, a3=?.
  The `jalr` at 0x4034ec calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x410018, a2=?, a3=?.
  The `jalr` at 0x403504 calls dmParamsGetInt with a0=a1 at entry (arg1), a1=0x410018, a2=?, a3=?.
  The `jalr` at 0x40351c calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x410028, a2=?, a3=?.
  The `jalr` at 0x403534 calls dmParamsGetInt with a0=a1 at entry (arg1), a1=0x410028, a2=?, a3=?.
  The `jalr` at 0x40354c calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x410050, a2=?, a3=?.
  The `jalr` at 0x403564 calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x410050, a2=?, a3=?.
  The `jalr` at 0x403598 calls dmParamsIsPresent with a0=a0 at entry (arg0), a1=0x4100c8, a2=?, a3=?.
  The `jalr` at 0x4035b4 calls dmParamsIsPresent with a0=a1 at entry (arg1), a1=0x4100c8, a2=?, a3=?.
  The `jalr` at 0x4035cc calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x4100c8, a2=?, a3=?.
  The `jalr` at 0x4035e4 calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x4100c8, a2=?, a3=?.
  The `jalr` at 0x403618 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x410038, a2=?, a3=?.
  The `jalr` at 0x403634 calls dmParamsGetEnum with a0=a1 at entry (arg1), a1=0x410038, a2=?, a3=?.
  The `beq` branch at 0x403488 targets 0x4034a8, is taken when v0(=ret(required_params)) == 0, and falls through when v0(=ret(required_params)) != 0.
  The `beq` branch at 0x4034bc targets 0x4034dc, is taken when v0(=ret(required_params)) == 0, and falls through when v0(=ret(required_params)) != 0.
  The `bne` branch at 0x40350c targets 0x403574, is taken when s1(=ret(dmParamsGetInt)) != v0(=ret(dmParamsGetInt)), and falls through when s1(=ret(dmParamsGetInt)) == v0(=ret(dmParamsGetInt)).
  The `bne` branch at 0x40353c targets 0x403574, is taken when s1(=ret(dmParamsGetInt)) != v0(=ret(dmParamsGetInt)), and falls through when s1(=ret(dmParamsGetInt)) == v0(=ret(dmParamsGetInt)).
  The `beq` branch at 0x40356c targets 0x403590, is taken when s1(=ret(dmParamsGetEnum)) == v0(=ret(dmParamsGetEnum)), and falls through when s1(=ret(dmParamsGetEnum)) != v0(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x4035a0 targets 0x403610, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x4035bc targets 0x40360c, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x4035ec targets 0x40360c, is taken when s1(=ret(dmParamsGetEnum)) == v0(=ret(dmParamsGetEnum)), and falls through when s1(=ret(dmParamsGetEnum)) != v0(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x40364c targets 0x403680, is taken when v0(=ret(dmParamsGetEnum)) == a0(=ret(dmParamsGetEnum)), and falls through when v0(=ret(dmParamsGetEnum)) != a0(=ret(dmParamsGetEnum)).
  The `beq` branch at 0x403654 targets 0x4036a4, is taken when v0(=ret(dmParamsGetEnum)) == a2(=0x3f0), and falls through when v0(=ret(dmParamsGetEnum)) != a2(=0x3f0).
  The `beq` branch at 0x40365c targets 0x403694, is taken when a0(=ret(dmParamsGetEnum)) == a3(=0x3e9), and falls through when a0(=ret(dmParamsGetEnum)) != a3(=0x3e9).
  The `bne` branch at 0x403664 targets 0x403674, is taken when a0(=ret(dmParamsGetEnum)) != v0(=0x3ea), and falls through when a0(=ret(dmParamsGetEnum)) == v0(=0x3ea).
  The `beq` branch at 0x40366c targets 0x40369c, is taken when s1(=ret(dmParamsGetEnum)) == a3(=0x3e9), and falls through when s1(=ret(dmParamsGetEnum)) != a3(=0x3e9).
  The `bne` branch at 0x403694 targets 0x403664, is taken when s1(=ret(dmParamsGetEnum)) != v0(=0x3ea), and falls through when s1(=ret(dmParamsGetEnum)) == v0(=0x3ea).
  The `beq` branch at 0x40369c targets 0x403580 and is always taken.
  The `beq` branch at 0x4036a8 targets 0x4036b8, is taken when a0(=ret(dmParamsGetEnum)) == a3(=0xbbb), and falls through when a0(=ret(dmParamsGetEnum)) != a3(=0xbbb).
  The `bne` branch at 0x4036b0 targets 0x40365c, is taken when a0(=ret(dmParamsGetEnum)) != a4(=0xbbc), and falls through when a0(=ret(dmParamsGetEnum)) == a4(=0xbbc).
  The `beq` branch at 0x4036b8 targets 0x403580 and is always taken.
  The return at 0x403588 has v0 = one of 0x0, 0x1.
  The return at 0x403604 has v0 = 0x1.
  The return at 0x403678 has v0 = 0x1.
  The return at 0x40368c has v0 = 0x0.

- `verify_uncompressed` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x4036c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x4036c0-0x403754 (148 bytes).
  It occupies 148 bytes.
  The `bgezall` at 0x4036d0 calls required_params [0x403390] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4036f0 calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x410000, a2=?, a3=?.
  The `jalr` at 0x403704 calls strcmp with a0=ret(dmParamsGetString), a1=0x4100e0, a2=?, a3=?.
  The `jalr` at 0x403720 calls dmSetError with a0=0x1772, a1=0x47bed0, a2=0x410000, a3=?.
  The `beq` branch at 0x4036dc targets 0x403748, is taken when v0(=ret(required_params)) == ra(=-0x1), and falls through when v0(=ret(required_params)) != ra(=-0x1).
  The `beq` branch at 0x40370c targets 0x403738, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The return at 0x403730 has v0 = -0x1.
  The return at 0x403740 has v0 = 0x0.
  The return at 0x40374c has v0 = -0x1.

- `verify_compressed` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x403760 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x403760-0x403978 (536 bytes).
  It occupies 536 bytes.
  The `bgezall` at 0x403774 calls required_params [0x403390] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403790 calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x410000, a2=?, a3=?.
  The `jalr` at 0x4037a0 calls strcmp with a0=ret(dmParamsGetString), a1=0x47bee0, a2=?, a3=?.
  The `jalr` at 0x4037bc calls dmParamsGetString with a0=a0 at entry (arg0), a1=0x410000, a2=?, a3=?.
  The `jalr` at 0x4037cc calls strcmp with a0=ret(dmParamsGetString), a1=0x47bee8, a2=?, a3=?.
  The `jalr` at 0x4037e8 calls dmSetError with a0=0x1772, a1=0x47bed0, a2=0x410000, a3=?.
  The `jalr` at 0x403820 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x410050, a2=?, a3=?.
  The `jalr` at 0x403840 calls dmSetError with a0=0x1772, a1=0x47bed0, a2=0x410050, a3=?.
  The `jalr` at 0x40387c calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x410038, a2=0x44c, a3=?.
  The `jalr` at 0x403898 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x410038, a2=0x3f0, a3=?.
  The `jalr` at 0x4038b4 calls dmParamsGetEnum with a0=a0 at entry (arg0), a1=0x410038, a2=0xbbc, a3=?.
  The `jalr` at 0x4038d8 calls dmSetError with a0=0x1772, a1=0x47bed0, a2=0x410038, a3=?.
  The `jalr` at 0x4038f4 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x410018, a2=one of 0x3f0, 0xbbb, 0xbbc, a3=?.
  The `jalr` at 0x403918 calls dmSetError with a0=0x1772, a1=0x47bed0, a2=0x4100f8, a3=?.
  The `jalr` at 0x403930 calls dmParamsGetInt with a0=a0 at entry (arg0), a1=0x410028, a2=0x2d0, a3=?.
  The `jalr` at 0x403968 calls dmSetError with a0=0x1772, a1=0x47bed0, a2=0x410108, a3=0x1e0, a4=0x240.
  The `beq` branch at 0x403780 targets 0x40385c, is taken when v0(=ret(required_params)) == ra(=-0x1), and falls through when v0(=ret(required_params)) != ra(=-0x1).
  The `beq` branch at 0x4037a8 targets 0x403818, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x4037d4 targets 0x403814, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x40382c targets 0x403870, is taken when v0(=ret(dmParamsGetEnum)) == a2(=0x44c), and falls through when v0(=ret(dmParamsGetEnum)) != a2(=0x44c).
  The `beq` branch at 0x403888 targets 0x4038e8, is taken when v0(=ret(dmParamsGetEnum)) == a2(=0x3f0), and falls through when v0(=ret(dmParamsGetEnum)) != a2(=0x3f0).
  The `beq` branch at 0x4038a4 targets 0x4038e8, is taken when v0(=ret(dmParamsGetEnum)) == a2(=0xbbc), and falls through when v0(=ret(dmParamsGetEnum)) != a2(=0xbbc).
  The `beq` branch at 0x4038c0 targets 0x4038ec, is taken when v0(=ret(dmParamsGetEnum)) == a2(=0xbbb), and falls through when v0(=ret(dmParamsGetEnum)) != a2(=0xbbb).
  The `beq` branch at 0x4038e0 targets 0x403804 and is always taken.
  The `beq` branch at 0x403900 targets 0x403928, is taken when v0(=ret(dmParamsGetInt)) == a2(=0x2d0), and falls through when v0(=ret(dmParamsGetInt)) != a2(=0x2d0).
  The `beq` branch at 0x403920 targets 0x403804 and is always taken.
  The `beq` branch at 0x40393c targets 0x40394c, is taken when v0(=ret(dmParamsGetInt)) == a2(=0x1e0), and falls through when v0(=ret(dmParamsGetInt)) != a2(=0x1e0).
  The `bne` branch at 0x403944 targets 0x403954, is taken when v0(=ret(dmParamsGetInt)) != a3(=0x240), and falls through when v0(=ret(dmParamsGetInt)) == a3(=0x240).
  The `beq` branch at 0x40394c targets 0x403804 and is always taken.
  The `beq` branch at 0x403970 targets 0x403804 and is always taken.
  The return at 0x4037fc has v0 = -0x1.
  The return at 0x40380c has v0 = one of -0x1, 0x0.
  The return at 0x403854 has v0 = -0x1.
  The return at 0x403868 has v0 = -0x1.

- `get_default_uncompressed` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x403980 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x403980-0x403a20 (160 bytes).
  It occupies 160 bytes.
  The `jalr` at 0x403998 calls dmSetImageDefaults with a0=a0 at entry (arg0), a1=0x2d0, a2=0x1e0, a3=0x3f0.
  The `jalr` at 0x4039c4 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x410050, a2=0x44c, a3=?.
  The `jalr` at 0x4039f4 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x410000, a2=0x4100e0, a3=?.
  The `beq` branch at 0x4039a0 targets 0x4039b4, is taken when v0(=ret(dmSetImageDefaults)) == 0, and falls through when v0(=ret(dmSetImageDefaults)) != 0.
  The `beq` branch at 0x4039cc targets 0x4039e4, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x4039fc targets 0x403a14, is taken when v0(=ret(dmParamsSetString)) == 0, and falls through when v0(=ret(dmParamsSetString)) != 0.
  The return at 0x4039ac has v0 = -0x1.
  The return at 0x4039dc has v0 = -0x1.
  The return at 0x403a0c has v0 = -0x1.
  The return at 0x403a18 has v0 = 0x0.

- `get_default_compressed` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x403a20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x403a20-0x403abc (156 bytes).
  It occupies 156 bytes.
  The `jalr` at 0x403a38 calls dmSetImageDefaults with a0=a0 at entry (arg0), a1=0x2d0, a2=0x1e0, a3=0x3f0.
  The `jalr` at 0x403a64 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x410050, a2=0x44c, a3=?.
  The `jalr` at 0x403a90 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x410000, a2=0x47bee0, a3=?.
  The `beq` branch at 0x403a40 targets 0x403a54, is taken when v0(=ret(dmSetImageDefaults)) == 0, and falls through when v0(=ret(dmSetImageDefaults)) != 0.
  The `beq` branch at 0x403a6c targets 0x403a84, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x403a98 targets 0x403ab0, is taken when v0(=ret(dmParamsSetString)) == 0, and falls through when v0(=ret(dmParamsSetString)) != 0.
  The return at 0x403a4c has v0 = -0x1.
  The return at 0x403a7c has v0 = -0x1.
  The return at 0x403aa8 has v0 = -0x1.
  The return at 0x403ab4 has v0 = 0x0.

- `dmICInitDso` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x403ac0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x403ac0-0x403ba0 (224 bytes).
  It occupies 224 bytes.
  The `ld` at 0x403ae4 loads 8 bytes from abs 0x4107e0.
  The `ld` at 0x403ae8 loads 8 bytes from abs 0x4107d8.
  The `ld` at 0x403aec loads 8 bytes from abs 0x4107d0.
  The `ld` at 0x403af0 loads 8 bytes from abs 0x4107c8.
  The `ld` at 0x403af4 loads 8 bytes from abs 0x4107c0.
  The `ld` at 0x403af8 loads 8 bytes from abs 0x4107b8.
  The `ld` at 0x403afc loads 8 bytes from abs 0x4107b0.
  The `ld` at 0x403b00 loads 8 bytes from abs 0x4107a8.
  The `ld` at 0x403b04 loads 8 bytes from abs 0x4107e8.
  The `lw` at 0x403b0c loads 4 bytes from abs 0x4107f0.
  The `ld` at 0x403b28 loads 8 bytes from abs 0x410790.
  The `ld` at 0x403b2c loads 8 bytes from abs 0x410788.
  The `ld` at 0x403b30 loads 8 bytes from abs 0x410780.
  The `ld` at 0x403b34 loads 8 bytes from abs 0x410778.
  The `ld` at 0x403b38 loads 8 bytes from abs 0x410770.
  The `ld` at 0x403b3c loads 8 bytes from abs 0x410768.
  The `ld` at 0x403b40 loads 8 bytes from abs 0x410760.
  The `ld` at 0x403b44 loads 8 bytes from abs 0x410758.
  The `ld` at 0x403b48 loads 8 bytes from abs 0x410798.
  The `lw` at 0x403b50 loads 4 bytes from abs 0x4107a0.
  The `jalr` at 0x403b10 calls dmICRegisterConverter with a0=[0x4107a8]:8, a1=[0x4107b0]:8, a2=[0x4107b8]:8, a3=[0x4107c0]:8, a4=[0x4107c8]:8, a5=[0x4107d0]:8, a6=[0x4107d8]:8, a7=[0x4107e0]:8.
  The `jalr` at 0x403b54 calls dmICRegisterConverter with a0=[0x410758]:8, a1=[0x410760]:8, a2=[0x410768]:8, a3=[0x410770]:8, a4=[0x410778]:8, a5=[0x410780]:8, a6=[0x410788]:8, a7=[0x410790]:8.
  The `jalr` at 0x403b84 calls dmSetError with a0=0x1774, a1=0x47bed0, a2=0x410120, a3=?.
  The `bltz` branch at 0x403b18 targets 0x403b74, is taken when v0(=ret(dmICRegisterConverter)) < 0 (signed), and falls through when v0(=ret(dmICRegisterConverter)) >= 0 (signed).
  The `bltz` branch at 0x403b5c targets 0x403b74, is taken when v0(=ret(dmICRegisterConverter)) < 0 (signed), and falls through when v0(=ret(dmICRegisterConverter)) >= 0 (signed).
  The return at 0x403b6c has v0 = 0x0.
  The return at 0x403b98 has v0 = -0x1.

- `dve_open` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x403ba0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x403ba0-0x403db4 (532 bytes).
  It occupies 532 bytes.
  The `sw` at 0x403c50 stores 4 bytes to ret(calloc) +0x0.
  The `lw` at 0x403c7c loads 4 bytes from ret(calloc) +0x0.
  The `sw` at 0x403c8c stores 4 bytes to ret(calloc) +0x80.
  The `sw` at 0x403ca4 stores 4 bytes to ret(calloc) +0x84.
  The `sw` at 0x403cdc stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x403bbc calls vice_get_lib_rev with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403be8 calls dmSetError with a0=0x1774, a1=0x47bed0, a2=0x410140, a3=0x6b7a.
  The `jalr` at 0x403c14 calls calloc with a0=0x1, a1=0xe8, a2=?, a3=?.
  The `bgezall` at 0x403c30 calls init_formats [0x4032a0] with a0=ret(calloc)+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x403c40 calls vice_open with a0=0x410168, a1=?, a2=?, a3=?.
  The `jalr` at 0x403c58 calls vice_setetc with a0=ret(vice_open), a1=ret(calloc), a2=?, a3=?.
  The `jalr` at 0x403c78 calls vice_event_init with a0=[ret(calloc)], a1=ret(calloc)+136, a2=ret(calloc)+176, a3=0x40, a4=0x40.
  The `jalr` at 0x403c90 calls getenv with a0=0x410198, a1=ret(calloc), a2=?, a3=?.
  The `jalr` at 0x403cb0 calls getenv with a0=0x4101c8, a1=?, a2=?, a3=?.
  The `jalr` at 0x403ce8 calls printf with a0=0x4101a8, a1=?, a2=?, a3=ret(calloc).
  The `jalr` at 0x403cfc calls getenv with a0=0x4101c8, a1=?, a2=?, a3=?.
  The `jalr` at 0x403d08 calls atoi with a0=ret(getenv), a1=?, a2=?, a3=?.
  The `jalr` at 0x403d1c calls calloc with a0=ret(atoi), a1=0x4, a2=?, a3=?.
  The `jalr` at 0x403d30 calls calloc with a0=[0x47beb0], a1=0x4, a2=?, a3=?.
  The `jalr` at 0x403d44 calls calloc with a0=[0x47beb0], a1=0x4, a2=?, a3=?.
  The `jalr` at 0x403d5c calls printf with a0=0x4101d8, a1=[0x47beb0], a2=?, a3=?.
  The `jalr` at 0x403d7c calls dmSetError with a0=0x1774, a1=0x47bed0, a2=0x410158, a3=?.
  The `jalr` at 0x403da0 calls dmSetError with a0=0x1774, a1=0x47bed0, a2=0x410178, a3=?.
  The `beq` branch at 0x403bcc targets 0x403c10, is taken when v0(?) == v1(=0x6b7a), and falls through when v0(?) != v1(=0x6b7a).
  The `beq` branch at 0x403c1c targets 0x403d6c, is taken when v0(=ret(calloc)) == 0, and falls through when v0(=ret(calloc)) != 0.
  The `bltz` branch at 0x403c4c targets 0x403d90, is taken when v0(=ret(vice_open)) < 0 (signed), and falls through when v0(=ret(vice_open)) >= 0 (signed).
  The `bne` branch at 0x403ca0 targets 0x403ce0, is taken when v0(=ret(getenv)) != 0, and falls through when v0(=ret(getenv)) == 0.
  The `bne` branch at 0x403cb8 targets 0x403cf8, is taken when v0(=ret(getenv)) != 0, and falls through when v0(=ret(getenv)) == 0.
  The `beq` branch at 0x403cf0 targets 0x403cac and is always taken.
  The `beq` branch at 0x403d64 targets 0x403cc4 and is always taken.
  The `beq` branch at 0x403d88 targets 0x403c04 and is always taken.
  The `beq` branch at 0x403dac targets 0x403c04 and is always taken.
  The return at 0x403bfc has v0 = -0x1.
  The return at 0x403c08 has v0 = -0x1.
  The return at 0x403cd8 has v0 = 0x0.

- `dv_open` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x403dc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x403dc0-0x40409c (732 bytes).
  It occupies 732 bytes.
  The `sw` at 0x403e74 stores 4 bytes to ret(calloc) +0x0.
  2 such `sw` accesses store 4 bytes to sym(ge) +0x0, including `sw` at 0x403ea0, `sw` at 0x403ec4.
  2 such `lbu` accesses load 1 byte from ret(getenv) +0x0, including `lbu` at 0x403ea4, `lbu` at 0x403ec8.
  The `lbu` at 0x403ed4 loads 1 byte from ret(calloc) +0xd9.
  The `sw` at 0x403f14 stores 4 bytes to ret(calloc) +0x58.
  The `sw` at 0x403f1c stores 4 bytes to ret(calloc) +0x54.
  The `sw` at 0x403f24 stores 4 bytes to ret(calloc) +0x2c.
  The `lw` at 0x403f44 loads 4 bytes from ret(calloc) +0x0.
  The `sw` at 0x403f54 stores 4 bytes to ret(calloc) +0x80.
  The `sw` at 0x403f6c stores 4 bytes to ret(calloc) +0x84.
  The `sw` at 0x403fa4 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sb` at 0x404040 stores 1 byte to ret(calloc) +0xd9.
  The `sb` at 0x404050 stores 1 byte to ret(calloc) +0xd8.
  The `jalr` at 0x403ddc calls vice_get_lib_rev with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403e08 calls dmSetError with a0=0x1774, a1=0x47bed0, a2=0x410140, a3=0x6b7a.
  The `jalr` at 0x403e34 calls calloc with a0=0x1, a1=0xe8, a2=?, a3=?.
  The `bgezall` at 0x403e50 calls init_formats [0x4032a0] with a0=ret(calloc)+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x403e60 calls vice_open with a0=0x410168, a1=?, a2=?, a3=?.
  The `jalr` at 0x403e7c calls vice_setetc with a0=ret(vice_open), a1=ret(calloc), a2=?, a3=?.
  The `jalr` at 0x403e8c calls getenv with a0=0x410200, a1=?, a2=?, a3=?.
  The `jalr` at 0x403eb0 calls getenv with a0=0x47bef0, a1=?, a2=?, a3=0x79.
  The `jalr` at 0x403ee8 calls vice_file with a0=0x410210, a1=?, a2=?, a3=?, a6=0x6e, a7=[ret(calloc)+217]:1.
  The `jalr` at 0x403f04 calls vice_load_msp_code with a0=ret(vice_open), a1=ret(vice_file), a2=ret(calloc)+28, a3=0x0.
  The `jalr` at 0x403f40 calls vice_event_init with a0=[ret(calloc)], a1=ret(calloc)+136, a2=ret(calloc)+176, a3=0x40, a4=0x40, a6=one of 0x10, 0x6e.
  The `jalr` at 0x403f58 calls getenv with a0=0x410198, a1=ret(calloc), a2=?, a3=?.
  The `jalr` at 0x403f78 calls getenv with a0=0x4101c8, a1=?, a2=?, a3=?.
  The `jalr` at 0x403fb0 calls printf with a0=0x4101a8, a1=?, a2=?, a3=ret(calloc).
  The `jalr` at 0x403fc4 calls getenv with a0=0x4101c8, a1=?, a2=?, a3=?.
  The `jalr` at 0x403fd0 calls atoi with a0=ret(getenv), a1=?, a2=?, a3=?.
  The `jalr` at 0x403fe4 calls calloc with a0=ret(atoi), a1=0x4, a2=?, a3=?.
  The `jalr` at 0x403ff8 calls calloc with a0=[0x47beb0], a1=0x4, a2=?, a3=?.
  The `jalr` at 0x40400c calls calloc with a0=[0x47beb0], a1=0x4, a2=?, a3=?.
  The `jalr` at 0x404024 calls printf with a0=0x4101d8, a1=[0x47beb0], a2=?, a3=?.
  The `jalr` at 0x404064 calls dmSetError with a0=0x1774, a1=0x47bed0, a2=0x410158, a3=?.
  The `jalr` at 0x404088 calls dmSetError with a0=0x1774, a1=0x47bed0, a2=0x410178, a3=?.
  The `beq` branch at 0x403dec targets 0x403e30, is taken when v0(?) == v1(=0x6b7a), and falls through when v0(?) != v1(=0x6b7a).
  The `beq` branch at 0x403e3c targets 0x404054, is taken when v0(=ret(calloc)) == 0, and falls through when v0(=ret(calloc)) != 0.
  The `bltz` branch at 0x403e70 targets 0x404078, is taken when v0(=ret(vice_open)) < 0 (signed), and falls through when v0(=ret(vice_open)) >= 0 (signed).
  The `beq` branch at 0x403e9c targets 0x403eac, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `beq` branch at 0x403ea8 targets 0x404034, is taken when a2(=[ret(getenv)]:1) == a3(=0x79), and falls through when a2(=[ret(getenv)]:1) != a3(=0x79).
  The `beq` branch at 0x403ec0 targets 0x403ed0, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `beq` branch at 0x403ecc targets 0x404044, is taken when a5(=[ret(getenv)]:1) == a6(=0x6e), and falls through when a5(=[ret(getenv)]:1) != a6(=0x6e).
  The `beq` branch at 0x403ed8 targets 0x403f2c, is taken when a7(=[ret(calloc)+217]:1) == 0, and falls through when a7(=[ret(calloc)+217]:1) != 0.
  The `bne` branch at 0x403f68 targets 0x403fa8, is taken when v0(=ret(getenv)) != 0, and falls through when v0(=ret(getenv)) == 0.
  The `bne` branch at 0x403f80 targets 0x403fc0, is taken when v0(=ret(getenv)) != 0, and falls through when v0(=ret(getenv)) == 0.
  The `beq` branch at 0x403fb8 targets 0x403f74 and is always taken.
  The `beq` branch at 0x40402c targets 0x403f8c and is always taken.
  The `beq` branch at 0x40403c targets 0x403eac and is always taken.
  The `beq` branch at 0x40404c targets 0x403ed0 and is always taken.
  The `beq` branch at 0x404070 targets 0x403e24 and is always taken.
  The `beq` branch at 0x404094 targets 0x403e24 and is always taken.
  The return at 0x403e1c has v0 = -0x1.
  The return at 0x403e28 has v0 = -0x1.
  The return at 0x403fa0 has v0 = 0x0.

- `dv_close` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x4040a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x4040a0-0x4041b0 (272 bytes).
  It occupies 272 bytes.
  The `lw` at 0x4040a4 loads 4 bytes from a0 (arg0 at entry) +0x84.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x4040e8, `lw` at 0x4040f4.
  The `jalr` at 0x4040d0 calls printf with a0=0x410220, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4040e4 calls vice_event_uninit with a0=[a0], a1=a0+136, a2=a0+176, a3=?.
  The `jalr` at 0x4040f0 calls vice_close with a0=[a0], a1=?, a2=?, a3=?.
  The `bgezall` at 0x404100 calls free_formats [0x403330] with a0=a0+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x40410c calls free with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x404130 calls kill with a0=[0x47be98], a1=0x9, a2=?, a3=?.
  The `jalr` at 0x404144 calls waitpid with a0=[0x47be98], a1=0x0, a2=0x0, a3=?.
  The `jalr` at 0x404160 calls dmBufferDestroyQueue with a0=[0x47bea0], a1=?, a2=?, a3=?.
  The `jalr` at 0x404180 calls free with a0=[0x47bebc], a1=?, a2=?, a3=?.
  The `jalr` at 0x40418c calls free with a0=[0x47bec0], a1=?, a2=?, a3=?.
  The `jalr` at 0x404198 calls free with a0=[0x47beb8], a1=?, a2=?, a3=?.
  The `beq` branch at 0x4040c0 targets 0x4040d8, is taken when at(=[a0+132]) == 0, and falls through when at(=[a0+132]) != 0.
  The `beq` branch at 0x404120 targets 0x404170, is taken when ra(=[0x47bea4]) == 0, and falls through when ra(=[0x47bea4]) != 0.
  The `beq` branch at 0x404128 targets 0x404154, is taken when a0(=[0x47be98]) == at(=-0x1), and falls through when a0(=[0x47be98]) != at(=-0x1).
  The `beq` branch at 0x404158 targets 0x40416c, is taken when a0(=[0x47bea0]) == 0, and falls through when a0(=[0x47bea0]) != 0.
  The `beq` branch at 0x404174 targets 0x4041a4, is taken when a0(=[0x47bebc]) == 0, and falls through when a0(=[0x47bebc]) != 0.
  The return at 0x4041a8 has v0 = one of ?, ret(free).

- `dve_close` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x4041b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x4041b0-0x404238 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0x4041b4 loads 4 bytes from a0 (arg0 at entry) +0x84.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x4041f8, `lw` at 0x404204.
  The `jalr` at 0x4041e0 calls printf with a0=0x410220, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4041f4 calls vice_event_uninit with a0=[a0], a1=a0+136, a2=a0+176, a3=?.
  The `jalr` at 0x404200 calls vice_close with a0=[a0], a1=?, a2=?, a3=?.
  The `bgezall` at 0x404210 calls free_formats [0x403330] with a0=a0+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x40421c calls free with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x4041d0 targets 0x4041e8, is taken when at(=[a0+132]) == 0, and falls through when at(=[a0+132]) != 0.
  The return at 0x404230 has v0 = ret(free).

- `dv_describe` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x404240 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x404240-0x404308 (200 bytes).
  It occupies 200 bytes.
  The `jalr` at 0x404270 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x410240, a2=0x64766320, a3=0x7f934.
  The `jalr` at 0x404288 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x410250, a2=0x47bef8, a3=?.
  The `jalr` at 0x4042a0 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x410260, a2=0x1, a3=?.
  The `jalr` at 0x4042b8 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x410270, a2=0x2, a3=?.
  The `jalr` at 0x4042d0 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x410288, a2=0x0, a3=?.
  The `jalr` at 0x4042e8 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x410298, a2=0x0, a3=?.
  The return at 0x404300 has v0 = 0x0.

- `dve_describe` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x404310 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x404310-0x4043d8 (200 bytes).
  It occupies 200 bytes.
  The `jalr` at 0x404340 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x410240, a2=0x64766320, a3=0x7f864.
  The `jalr` at 0x404358 calls dmParamsSetString with a0=a0 at entry (arg0), a1=0x410250, a2=0x47bef8, a3=?.
  The `jalr` at 0x404370 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x410260, a2=0x1, a3=?.
  The `jalr` at 0x404388 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0x410270, a2=0x1, a3=?.
  The `jalr` at 0x4043a0 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x410288, a2=0x0, a3=?.
  The `jalr` at 0x4043b8 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0x410298, a2=0x0, a3=?.
  The return at 0x4043d0 has v0 = 0x0.

- `dv_dstpoolis` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x4043e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x4043e0-0x404498 (184 bytes).
  It occupies 184 bytes.
  The `sw` at 0x4043e4 stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `lw` at 0x404480 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x40440c calls dmBufferGetAllocSize with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404430 calls dmSetError with a0=0x1772, a1=0x47bed0, a2=0x4102a8, a3=0x3e0000.
  The `jalr` at 0x404458 calls dmBufferSetPoolSelectSize with a0=a1 at entry (arg1), a1=ret(dmBufferGetAllocSize), a2=?, a3=0x3e0000.
  The `jalr` at 0x404464 calls dmBufferGetPoolFD with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x40447c calls vice_dmbuf_outpool with a0=[a0], a1=a1 at entry (arg1), a2=?, a3=?.
  The `beq` branch at 0x40441c targets 0x404450, is taken when a3(=0x3e0000) >= v0(=ret(dmBufferGetAllocSize)) (signed), and falls through when a3(=0x3e0000) < v0(=ret(dmBufferGetAllocSize)) (signed).
  The return at 0x404448 has v0 = -0x1.
  The return at 0x404490 has v0 = ret(vice_dmbuf_outpool).

- `dve_dstpoolis` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x4044a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x4044a0-0x404588 (232 bytes).
  It occupies 232 bytes.
  The `sw` at 0x40451c stores 4 bytes to sym(dvbitspool) +0x0.
  The `sw` at 0x404520 stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `lw` at 0x404574 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `bgezall` at 0x4044cc calls make_dvcoeff_pool [0x403200] with a0=0x14, a1=sp-48, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4044f0 calls dmSetError with a0=0x1777, a1=0x4102c0, a2=0x4102d0, a3=?.
  The `jalr` at 0x404524 calls dmBufferGetAllocSize with a0=?, a1=?, a2=?, a3=?, a4=a0 at entry (arg0), a5=a1 at entry (arg1), a6=sym(dvbitspool).
  The `jalr` at 0x40454c calls dmSetError with a0=0x1772, a1=0x47bed0, a2=0x4102a8, a3=0x3e0000.
  The `jalr` at 0x404570 calls vice_dmbuf_outpool with a0=[a0], a1=?, a2=?, a3=0x3e0000.
  The `beq` branch at 0x4044d4 targets 0x40450c, is taken when v0(=ret(make_dvcoeff_pool)) == 0, and falls through when v0(=ret(make_dvcoeff_pool)) != 0.
  The `beq` branch at 0x404534 targets 0x404568, is taken when a3(=0x3e0000) >= v0(=ret(dmBufferGetAllocSize)) (signed), and falls through when a3(=0x3e0000) < v0(=ret(dmBufferGetAllocSize)) (signed).
  The return at 0x404504 has v0 = -0x1.
  The return at 0x404560 has v0 = -0x1.
  The return at 0x404580 has v0 = ret(vice_dmbuf_outpool).

- `dv_fd` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x404590 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x404590-0x404598 (8 bytes).
  It occupies 8 bytes.
  The `lw` at 0x404594 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The return at 0x404590 has v0 = [a0+128].

- `dv_getsrcfilled` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x4045a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x4045a0-0x4045f4 (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x4045b8 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `jalr` at 0x4045c0 calls dmFifoNfilled with a0=[a0+136], a1=sp-32, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x4045c8 targets 0x4045e0, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The return at 0x4045d8 has v0 = -0x1.
  The return at 0x4045ec has v0 = ?.

- `dv_getdstfilled` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x404600 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x404600-0x404654 (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x404618 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `jalr` at 0x404620 calls dmFifoNfilled with a0=[a0+176], a1=sp-32, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x404628 targets 0x404640, is taken when v0(=ret(dmFifoNfilled)) == 0, and falls through when v0(=ret(dmFifoNfilled)) != 0.
  The return at 0x404638 has v0 = -0x1.
  The return at 0x40464c has v0 = ?.

- `dv_verifysrc` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x404660 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x404660-0x404698 (56 bytes).
  It occupies 56 bytes.
  The `bgezall` at 0x404680 calls verify_compressed [0x403760] with a0=a0 at entry (arg0), a1=0x47bf00, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x404690 has v0 = ret(verify_compressed).

- `dve_verifysrc` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x4046a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x4046a0-0x4046d8 (56 bytes).
  It occupies 56 bytes.
  The `bgezall` at 0x4046c0 calls verify_uncompressed [0x4036c0] with a0=a0 at entry (arg0), a1=0x47bf00, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x4046d0 has v0 = ret(verify_uncompressed).

- `dv_verifydst` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x4046e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x4046e0-0x404718 (56 bytes).
  It occupies 56 bytes.
  The `bgezall` at 0x404700 calls verify_uncompressed [0x4036c0] with a0=a0 at entry (arg0), a1=0x47bf04, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x404710 has v0 = ret(verify_uncompressed).

- `dve_verifydst` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x404720 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x404720-0x404758 (56 bytes).
  It occupies 56 bytes.
  The `bgezall` at 0x404740 calls verify_compressed [0x403760] with a0=a0 at entry (arg0), a1=0x47bf04, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x404750 has v0 = ret(verify_compressed).

- `dv_verifycvt` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x404760 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x404760-0x404768 (8 bytes).
  It occupies 8 bytes.
  The return at 0x404760 has v0 = 0x0.

- `dv_verifysrcdstcvt` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x404770 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x404770-0x40482c (188 bytes).
  It occupies 188 bytes.
  The `bgezall` at 0x4047a8 calls dv_verifycvt [0x404760] with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `bgezall` at 0x4047e8 calls dv_verifysrc [0x404660] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x404814 calls dv_verifydst [0x4046e0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=?, a3=?.
  The `bne` branch at 0x404788 targets 0x4047e0, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x404790 targets 0x40480c, is taken when a1 != 0, and falls through when a1 == 0.
  The `beq` branch at 0x404798 targets 0x4047d0, is taken when v0(=a2) == 0, and falls through when v0(=a2) != 0.
  The `beq` branch at 0x4047b0 targets 0x4047d0, is taken when v0(=ret(dv_verifycvt)) == 0, and falls through when v0(=ret(dv_verifycvt)) != 0.
  The `beq` branch at 0x4047f0 targets 0x404790, is taken when v0(=ret(dv_verifysrc)) == 0, and falls through when v0(=ret(dv_verifysrc)) != 0.
  The `beq` branch at 0x40481c targets 0x404798, is taken when v0(=ret(dv_verifydst)) == 0, and falls through when v0(=ret(dv_verifydst)) != 0.
  The `beq` branch at 0x404824 targets 0x4047d0 and is always taken.
  The return at 0x4047c4 has v0 = -0x1.
  The return at 0x4047d8 has v0 = one of -0x1, 0x0.
  The return at 0x404804 has v0 = -0x1.
  The instructions from 0x4047cc to 0x4047cc are not reached by any path from the entry, and their branches are not listed.

- `dve_verifysrcdstcvt` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x404830 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x404830-0x4048ec (188 bytes).
  It occupies 188 bytes.
  The `bgezall` at 0x40486c calls dv_verifycvt [0x404760] with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `bgezall` at 0x4048ac calls dve_verifysrc [0x4046a0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x4048d4 calls dve_verifydst [0x404720] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=?, a3=?.
  The `bne` branch at 0x404848 targets 0x4048a4, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x404850 targets 0x4048d0, is taken when a1 != 0, and falls through when a1 == 0.
  The `beq` branch at 0x40485c targets 0x404894, is taken when v0(=a2) == 0, and falls through when v0(=a2) != 0.
  The `beq` branch at 0x404874 targets 0x404894, is taken when v0(=ret(dv_verifycvt)) == 0, and falls through when v0(=ret(dv_verifycvt)) != 0.
  The `beq` branch at 0x4048b4 targets 0x404850, is taken when v0(=ret(dve_verifysrc)) == 0, and falls through when v0(=ret(dve_verifysrc)) != 0.
  The `beq` branch at 0x4048dc targets 0x40485c, is taken when v0(=ret(dve_verifydst)) == 0, and falls through when v0(=ret(dve_verifydst)) != 0.
  The `beq` branch at 0x4048e4 targets 0x404894 and is always taken.
  The return at 0x404888 has v0 = -0x1.
  The return at 0x40489c has v0 = one of -0x1, 0x0.
  The return at 0x4048c8 has v0 = -0x1.
  The instructions from 0x404890 to 0x404890 are not reached by any path from the entry, and their branches are not listed.

- `dv_defaultsrc` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x4048f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x4048f0-0x404928 (56 bytes).
  It occupies 56 bytes.
  The `bgezall` at 0x404910 calls get_default_compressed [0x403a20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x404920 has v0 = ret(get_default_compressed).

- `dve_defaultsrc` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x404930 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x404930-0x404968 (56 bytes).
  It occupies 56 bytes.
  The `bgezall` at 0x404950 calls get_default_uncompressed [0x403980] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x404960 has v0 = ret(get_default_uncompressed).

- `dv_defaultdst` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x404970 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x404970-0x4049a8 (56 bytes).
  It occupies 56 bytes.
  The `bgezall` at 0x404990 calls get_default_uncompressed [0x403980] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x4049a0 has v0 = ret(get_default_uncompressed).

- `dv_defaultcvt` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x4049b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x4049b0-0x4049b8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x4049b0 has v0 = 0x0.

- `dve_defaultdst` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x4049c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x4049c0-0x4049f8 (56 bytes).
  It occupies 56 bytes.
  The `bgezall` at 0x4049e0 calls get_default_compressed [0x403a20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x4049f0 has v0 = ret(get_default_compressed).

- `threadarg_enqueue` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x404a00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x404a00-0x404a88 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0x404a24 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0x404a2c stores 4 bytes to ret(malloc) +0x0.
  The `lw` at 0x404a30 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0x404a3c stores 4 bytes to ret(malloc) +0x4.
  The `jalr` at 0x404a14 calls malloc with a0=0x8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404a38 calls dmBufferEnqueue with a0=[0x47bea0], a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0x404a6c calls fprintf with a0=sym(__iob)+32, a1=0x4102f0, a2=ret(malloc), a3=?.
  The `bne` branch at 0x404a40 targets 0x404a5c, is taken when v0(=ret(dmBufferEnqueue)) != 0, and falls through when v0(=ret(dmBufferEnqueue)) == 0.
  The return at 0x404a54 has v0 = 0x0.
  The return at 0x404a80 has v0 = 0x0.

- `threadarg_dequeue` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x404a90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x404a90-0x404af8 (104 bytes).
  It occupies 104 bytes.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x404ac8, `lw` at 0x404ad8.
  The `sw` at 0x404acc stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `sw` at 0x404adc stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `jalr` at 0x404aa4 calls dmBufferDequeue with a0=[0x47bea0], a1=sp-32, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404ae0 calls free with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x404aac targets 0x404ac0, is taken when v0(=ret(dmBufferDequeue)) == 0, and falls through when v0(=ret(dmBufferDequeue)) != 0.
  The return at 0x404ab8 has v0 = -0x1.
  The return at 0x404af0 has v0 = 0x0.

- `dvsend_thread_looping` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x404b00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x404b00-0x404f9c (1180 bytes).
  It occupies 1180 bytes.
  7 such `lw` accesses load 4 bytes from ?, including `lw` at 0x404bf8, `lw` at 0x404d94, `lw` at 0x404de4.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x404c0c, `sw` at 0x404da8, `sw` at 0x404eb0.
  The `jalr` at 0x404b1c calls signal with a0=0x1, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404b3c calls prctl with a0=0xc, a1=?, a2=?, a3=?.
  The `jalr` at 0x404b70 calls dmBufferGetQueueFilled with a0=[0x47bea0], a1=?, a2=?, a3=?.
  The `jalr` at 0x404c08 calls select with a0=[0x47be9c]+1, a1=sp-224, a2=0x0, a3=0x0, a4=0x0.
  The `jalr` at 0x404c20 calls perror with a0=0x410310, a1=?, a2=?, a3=?.
  The `jalr` at 0x404c40 calls select with a0=[0x47be9c]+1, a1=sp-224, a2=0x0, a3=0x0, a4=0x0.
  The `jalr` at 0x404c68 calls getenv with a0=0x4103c0, a1=?, a2=?, a3=?.
  The `jalr` at 0x404c84 calls fprintf with a0=sym(__iob)+32, a1=0x4103d0, a2=?, a3=?.
  The `jalr` at 0x404c90 calls dmBufferGetQueueFilled with a0=[0x47bea0], a1=?, a2=?, a3=?.
  The `bgezall` at 0x404ca0 calls threadarg_dequeue [0x404a90] with a0=sp-96, a1=?, a2=?, a3=?.
  The `jalr` at 0x404cb4 calls dmBufferAllocate with a0=[0x47bea8], a1=sp-88, a2=?, a3=?.
  The `jalr` at 0x404cd4 calls perror with a0=0x410338, a1=?, a2=?, a3=?.
  The `jalr` at 0x404cf4 calls select with a0=[0x47beac]+1, a1=0x0, a2=sp-224, a3=0x0, a4=0x0.
  The `jalr` at 0x404d0c calls dmBufferAllocate with a0=[0x47bea8], a1=sp-88, a2=?, a3=?.
  The `jalr` at 0x404da4 calls select with a0=[0x47beac]+1, a1=0x0, a2=sp-224, a3=0x0, a4=0x0.
  The `jalr` at 0x404dc4 calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404dd4 calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404dec calls qparsemain with a0=ret(dmBufferMapData), a1=?, a2=?, a3=ret(dmBufferMapData).
  The `jalr` at 0x404df8 calls dmBufferGetUSTMSCpair with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404e18 calls dmBufferSetUSTMSCpair with a0=?, a1=ret(dmBufferGetUSTMSCpair), a2=?, a3=?.
  The `jalr` at 0x404eac calls select with a0=[0x47bec4]+1, a1=0x0, a2=sp-224, a3=0x0, a4=0x0.
  The `jalr` at 0x404ecc calls vice_dmbuf_send with a0=?, a1=?, a2=?, a3=?, a4=0x4.
  The `jalr` at 0x404ee0 calls vice_dms_geterrs with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404ef4 calls getpid with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404f0c calls fprintf with a0=sym(__iob)+32, a1=0x410398, a2=ret(getpid), a3=?.
  The `jalr` at 0x404f18 calls dmBufferFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404f24 calls dmBufferFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404f3c calls perror with a0=0x410358, a1=?, a2=?, a3=?.
  The `jalr` at 0x404f5c calls select with a0=[0x47bec4]+1, a1=0x0, a2=sp-224, a3=0x0, a4=0x0.
  The `jalr` at 0x404f74 calls getpid with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404f8c calls fprintf with a0=sym(__iob)+32, a1=0x410378, a2=ret(getpid), a3=?.
  The `beq` branch at 0x404b64 targets 0x404b7c and is always taken.
  The `bgtz` branch at 0x404b78 targets 0x404c9c, is taken when v0(=ret(dmBufferGetQueueFilled)) > 0 (signed), and falls through when v0(=ret(dmBufferGetQueueFilled)) <= 0 (signed).
  The `bne` branch at 0x404c10 targets 0x404b70, is taken when v0(=ret(select)) != s0(=-0x1), and falls through when v0(=ret(select)) == s0(=-0x1).
  The `beq` branch at 0x404c48 targets 0x404c1c, is taken when v0(=ret(select)) == s0(=-0x1), and falls through when v0(=ret(select)) != s0(=-0x1).
  The `beq` branch at 0x404c50 targets 0x404b70 and is always taken.
  The `beq` branch at 0x404c70 targets 0x404c90, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `blez` branch at 0x404c98 targets 0x404b7c, is taken when v0(=ret(dmBufferGetQueueFilled)) <= 0 (signed), and falls through when v0(=ret(dmBufferGetQueueFilled)) > 0 (signed).
  The `bne` branch at 0x404ca8 targets 0x404c60, is taken when v0(=ret(threadarg_dequeue)) != 0, and falls through when v0(=ret(threadarg_dequeue)) == 0.
  The `beq` branch at 0x404cbc targets 0x404dc0, is taken when v0(=ret(dmBufferAllocate)) == 0, and falls through when v0(=ret(dmBufferAllocate)) != 0.
  The `beq` branch at 0x404cc4 targets 0x404d1c and is always taken.
  The `beq` branch at 0x404cfc targets 0x404cd0, is taken when v0(=ret(select)) == s0(=-0x1), and falls through when v0(=ret(select)) != s0(=-0x1).
  The `beq` branch at 0x404d14 targets 0x404dbc, is taken when v0(=ret(dmBufferAllocate)) == 0, and falls through when v0(=ret(dmBufferAllocate)) != 0.
  The `bne` branch at 0x404dac targets 0x404d08, is taken when v0(=ret(select)) != s0(=-0x1), and falls through when v0(=ret(select)) == s0(=-0x1).
  The `beq` branch at 0x404db4 targets 0x404cd0 and is always taken.
  The `beq` branch at 0x404eb4 targets 0x404f34, is taken when v0(=ret(select)) == s0(=-0x1), and falls through when v0(=ret(select)) != s0(=-0x1).
  The `beq` branch at 0x404ed4 targets 0x404f74, is taken when v0(=ret(vice_dmbuf_send)) == s0(=-0x1), and falls through when v0(=ret(vice_dmbuf_send)) != s0(=-0x1).
  The `beq` branch at 0x404ee8 targets 0x404f18, is taken when v0(=ret(vice_dms_geterrs)) == 0, and falls through when v0(=ret(vice_dms_geterrs)) != 0.
  The `beq` branch at 0x404f2c targets 0x404c90 and is always taken.
  The `beq` branch at 0x404f64 targets 0x404f38, is taken when v0(=ret(select)) == s0(=-0x1), and falls through when v0(=ret(select)) != s0(=-0x1).
  The `beq` branch at 0x404f6c targets 0x404ebc and is always taken.
  The `beq` branch at 0x404f94 targets 0x404f18 and is always taken.
  The instructions from 0x404b6c to 0x404b6c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x404c58 to 0x404c5c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x404ccc to 0x404ccc are not reached by any path from the entry, and their branches are not listed.

- `child_exit_handler` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x404fa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x404fa0-0x404fe8 (72 bytes).
  It occupies 72 bytes.
  The `jalr` at 0x404fbc calls wait with a0=sp-32, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404fd0 calls sigset with a0=0x12, a1=0x404fa0, a2=?, a3=?.
  The return at 0x404fe0 has v0 = ret(sigset).

- `_dv_go` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x404ff0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x404ff0-0x405350 (864 bytes).
  It occupies 864 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdc, including `lw` at 0x404ff0, `lw` at 0x405210.
  The `lw` at 0x404ff4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lbu` at 0x405014 loads 1 byte from a0 (arg0 at entry) +0xd9.
  The `sw` at 0x405018 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  The `sw` at 0x405028 stores 4 bytes to a0 (arg0 at entry) +0x70.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x4050f4, `lw` at 0x405188, `lw` at 0x4051b4.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xe0, including `sw` at 0x405190, `sw` at 0x405314, `sw` at 0x405344.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xdc, including `sw` at 0x4051bc, `sw` at 0x405308.
  The `sw` at 0x4051f4 stores 4 bytes to a0 (arg0 at entry) +0x2c.
  The `lbu` at 0x405204 loads 1 byte from a0 (arg0 at entry) +0xd8.
  The `sw` at 0x40520c stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0x405224 stores 4 bytes to a0 (arg0 at entry) +0x54.
  The `jalr` at 0x405034 calls getenv with a0=0x410468, a1=?, a2=?, a3=?.
  The `jalr` at 0x40505c calls dmBufferCreateQueue with a0=0x0, a1=0x47bea0, a2=[0x47bea4], a3=?.
  The `jalr` at 0x405078 calls dmSetError with a0=0x1778, a1=0x47bf08, a2=0x410478, a3=?.
  The `jalr` at 0x4050a0 calls dmBufferGetQueueFD with a0=[0x47bea0], a1=?, a2=?, a3=?.
  The `jalr` at 0x4050c0 calls sigset with a0=0x12, a1=0x404fa0, a2=?, a3=-0x1.
  The `jalr` at 0x4050d4 calls sproc with a0=sym(dvsend_thread_looping), a1=0x42, a2=0x0, a3=?.
  The `jalr` at 0x4050f0 calls vice_event_start with a0=[a0], a1=a0+28, a2=?, a3=?.
  The `jalr` at 0x405120 calls dmParamsGetInt with a0=[a0+4], a1=0x410028, a2=[a0+4], a3=a3 at entry (arg3), a4=0xa.
  The `jalr` at 0x405144 calls dmParamsGetString with a0=[a0+4], a1=0x410000, a2=0x1e0, a3=a0+28.
  The `jalr` at 0x405154 calls strcmp with a0=ret(dmParamsGetString), a1=0x47bee8, a2=?, a3=?.
  The `jalr` at 0x40516c calls vice_file with a0=0x410418, a1=?, a2=?, a3=?.
  The `jalr` at 0x405184 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=0x0.
  The `jalr` at 0x40519c calls vice_file with a0=0x410428, a1=?, a2=?, a3=?.
  The `jalr` at 0x4051b0 calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=?.
  The `jalr` at 0x4051c8 calls vice_file with a0=0x410438, a1=?, a2=?, a3=?.
  The `jalr` at 0x4051dc calls vice_load_bsp_table with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=?.
  The `jalr` at 0x4051f0 calls vice_etc_dramp with a0=[a0], a1=0x77, a2=?, a3=?.
  The `jalr` at 0x4051fc calls dmic_dram_init_decode with a0=ret(vice_etc_dramp), a1=?, a2=?, a3=?.
  The `bgezall` at 0x405238 calls make_qparse_pool [0x403140] with a0=one of 0x2, 0x3, a1=?, a2=0x8000, a3=[a0+216]:1, a4=0x1800, a5=[a0+220], a6=0xa.
  The `jalr` at 0x40525c calls dmSetError with a0=0x1778, a1=0x47bf08, a2=0x410448, a3=?.
  The `jalr` at 0x405274 calls perror with a0=0x47bf10, a1=?, a2=-0x1, a3=?.
  The `jalr` at 0x4052a4 calls dmSetError with a0=0x1778, a1=0x47bf08, a2=0x410498, a3=-0x1.
  The `jalr` at 0x4052c0 calls vice_file with a0=0x4103e8, a1=?, a2=0x1e0, a3=a0+28.
  The `jalr` at 0x4052d8 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=0x0.
  The `jalr` at 0x4052e8 calls vice_file with a0=0x4103f8, a1=?, a2=?, a3=?.
  The `jalr` at 0x4052fc calls vice_load_bsp_code with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=?.
  The `jalr` at 0x40531c calls vice_file with a0=0x410408, a1=?, a2=?, a3=?.
  The `jalr` at 0x405334 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=0x0.
  The `beq` branch at 0x405008 targets 0x40510c, is taken when at(=[a0+220]) == a4(=0xa), and falls through when at(=[a0+220]) != a4(=0xa).
  The `beq` branch at 0x40501c targets 0x405114, is taken when v1(=[a0+217]:1) == 0, and falls through when v1(=[a0+217]:1) != 0.
  The `beq` branch at 0x40503c targets 0x405050, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `beq` branch at 0x405048 targets 0x405054 and is always taken.
  The `beq` branch at 0x405050 targets 0x4050e8, is taken when a2(=[0x47bea4]) == 0, and falls through when a2(=[0x47bea4]) != 0.
  The `beq` branch at 0x405064 targets 0x40509c, is taken when v0(=ret(dmBufferCreateQueue)) == 0, and falls through when v0(=ret(dmBufferCreateQueue)) != 0.
  The `beq` branch at 0x4050ac targets 0x405290, is taken when v0(=ret(dmBufferGetQueueFD)) == a3(=-0x1), and falls through when v0(=ret(dmBufferGetQueueFD)) != a3(=-0x1).
  The `beq` branch at 0x4050e0 targets 0x405270, is taken when v0(=ret(sproc)) == a2(=-0x1), and falls through when v0(=ret(sproc)) != a2(=-0x1).
  The `beq` branch at 0x40510c targets 0x405014 and is always taken.
  The `beq` branch at 0x405130 targets 0x4052b8, is taken when v0(=ret(dmParamsGetInt)) == a2(=0x1e0), and falls through when v0(=ret(dmParamsGetInt)) != a2(=0x1e0).
  The `beq` branch at 0x40515c targets 0x405318, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `bne` branch at 0x405220 targets 0x40502c, is taken when a3(=[a0+216]:1) != 0, and falls through when a3(=[a0+216]:1) == 0.
  The `beq` branch at 0x405228 targets 0x405348, is taken when a5(=[a0+220]) == a6(=0xa), and falls through when a5(=[a0+220]) != a6(=0xa).
  The `beq` branch at 0x405240 targets 0x405030, is taken when v0(=ret(make_qparse_pool)) == 0, and falls through when v0(=ret(make_qparse_pool)) != 0.
  The `beq` branch at 0x405268 targets 0x405094 and is always taken.
  The `beq` branch at 0x4052b0 targets 0x405094 and is always taken.
  The `beq` branch at 0x405310 targets 0x4051c0 and is always taken.
  The `beq` branch at 0x405340 targets 0x405194 and is always taken.
  The `beq` branch at 0x405348 targets 0x405230 and is always taken.
  The return at 0x40508c has v0 = -0x1.
  The return at 0x405094 has v0 = -0x1.
  The return at 0x405104 has v0 = 0x0.
  The return at 0x405288 has v0 = -0x1.

- `dv_send` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x405350 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x405350-0x405848 (1272 bytes).
  It occupies 1272 bytes.
  The `lw` at 0x405350 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x405354 loads 4 bytes from a0 (arg0 at entry) +0x4.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xd8, including `lbu` at 0x4053a8, `lbu` at 0x405558.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x4053d4, `lw` at 0x4053ec, `lw` at 0x4055b4.
  The `lw` at 0x405440 loads 4 bytes from a0 (arg0 at entry) +0xc.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x4054e0, `lw` at 0x405590, `lw` at 0x40582c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0x4054f0, `sw` at 0x405634.
  The `lw` at 0x4054f8 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lw` at 0x4055ac loads 4 bytes from a0 (arg0 at entry) +0x74.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14, including `sw` at 0x4055b8, `sw` at 0x405818.
  The `sw` at 0x4055c0 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x40569c stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `lw` at 0x405760 loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `lw` at 0x40576c loads 4 bytes from a0 (arg0 at entry) +0xdc.
  The `jalr` at 0x4053d0 calls vice_dmbuf_send with a0=[a0], a1=?, a2=a0+136, a3=a0+100, a4=0x4.
  The `jalr` at 0x4053e8 calls vice_dms_geterrs with a0=[a0], a1=-0x1, a2=?, a3=?.
  The `jalr` at 0x405408 calls dmSetError with a0=0x1778, a1=0x47bed0, a2=0x410528, a3=?.
  The `jalr` at 0x40543c calls dmParamsCopyAllElems with a0=a6 at entry (arg6), a1=[a0+12], a2=?, a3=a6 at entry (arg6).
  The `jalr` at 0x405468 calls dmParamsCopyAllElems with a0=a4 at entry (arg4), a1=[a0+4], a2=a5 at entry (arg5), a3=a3 at entry (arg3).
  The `bgezall` at 0x4054a4 calls _dv_go [0x404ff0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0x4054c0 calls needsConvert [0x403460] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4054d4 calls dmImageFrameSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40550c calls dmBufferDestroyPool with a0=[a0+16], a1=?, a2=?, a3=?.
  The `jalr` at 0x405518 calls dmParamsCreate with a0=sp-112, a1=?, a2=?, a3=?.
  The `jalr` at 0x405538 calls dmParamsCopyAllElems with a0=a5 at entry (arg5), a1=?, a2=a5 at entry (arg5), a3=?.
  The `jalr` at 0x405578 calls dmParamsSetEnum with a0=?, a1=0x410050, a2=0x44c, a3=?.
  The `jalr` at 0x4055a0 calls dmBufferDestroyPool with a0=[a0+16], a1=?, a2=?, a3=a0 at entry (arg0).
  The `jalr` at 0x4055bc calls vice_dmbuf_outpool with a0=[a0], a1=[a0+116], a2=a0 at entry (arg0), a3=?.
  The `bgezall` at 0x4055f8 calls threadarg_enqueue [0x404a00] with a0=sp-104, a1=?, a2=[a0+216]:1, a3=[0x47bea4], a4=a0 at entry (arg0), a5=a1 at entry (arg1).
  The `jalr` at 0x405614 calls dmSetError with a0=0x1778, a1=0x47bed0, a2=0x4104e0, a3=?.
  The `jalr` at 0x405644 calls dmParamsIsPresent with a0=?, a1=0x410038, a2=?, a3=?.
  The `jalr` at 0x40565c calls dmParamsGetEnum with a0=?, a1=0x410038, a2=?, a3=?.
  The `jalr` at 0x405680 calls dmParamsSetEnum with a0=?, a1=0x410038, a2=?, a3=?.
  The `jalr` at 0x40568c calls dmImageFrameSize with a0=a5 at entry (arg5), a1=?, a2=?, a3=?.
  The `jalr` at 0x4056b0 calls dmSetError with a0=0x1778, a1=0x47bed0, a2=0x410510, a3=?.
  The `jalr` at 0x4056cc calls dmSetError with a0=0x1778, a1=0x47bed0, a2=0x4104b8, a3=a3 at entry (arg3).
  The `jalr` at 0x4056e0 calls dmBufferAllocate with a0=[0x47bea8], a1=sp-108, a2=[a0+216]:1, a3=[0x47bea4].
  The `jalr` at 0x405700 calls dmSetError with a0=0x1778, a1=0x47bed0, a2=0x4104f8, a3=?.
  The `jalr` at 0x405718 calls dmBufferFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40572c calls dmBufferAttach with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x40573c calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40574c calls dmBufferMapData with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x405768 calls qparsemain with a0=ret(dmBufferMapData), a1=[a0+220], a2=[a0+224], a3=?.
  The `jalr` at 0x405774 calls dmBufferGetUSTMSCpair with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x405794 calls dmBufferSetUSTMSCpair with a0=?, a1=ret(dmBufferGetUSTMSCpair), a2=?, a3=?.
  The `jalr` at 0x4057b4 calls dmBufferSetPoolDefaults with a0=?, a1=0x2, a2=?, a3=0x0, a4=0x1.
  The `bgezall` at 0x4057d4 calls _poolneeds [0x403100] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x4057e8 calls dmBufferCreatePool with a0=?, a1=a0+16, a2=?, a3=?.
  The `jalr` at 0x405808 calls dmParamsGetInt with a0=?, a1=0x4104d0, a2=?, a3=?.
  The `jalr` at 0x40581c calls dmParamsDestroy with a0=?, a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x405830 calls vice_dmbuf_outpool with a0=[a0], a1=[a0+16], a2=?, a3=?.
  The `bne` branch at 0x405384 targets 0x40545c, is taken when a4 != 0, and falls through when a4 == 0.
  The `bne` branch at 0x40538c targets 0x405418, is taken when a5 != 0, and falls through when a5 == 0.
  The `bne` branch at 0x405394 targets 0x405418, is taken when a0(=a6) != 0, and falls through when a0(=a6) == 0.
  The `beq` branch at 0x40539c targets 0x4056c0, is taken when a1(=[0x47bea8]) == 0, and falls through when a1(=[0x47bea8]) != 0.
  The `beq` branch at 0x4053ac targets 0x4055d4, is taken when a2(=[a0+216]:1) == 0, and falls through when a2(=[a0+216]:1) != 0.
  The `beq` branch at 0x4053dc targets 0x4056a0, is taken when v0(=ret(vice_dmbuf_send)) == a1(=-0x1), and falls through when v0(=ret(vice_dmbuf_send)) != a1(=-0x1).
  The `beq` branch at 0x4053f0 targets 0x405558, is taken when v0(=ret(vice_dms_geterrs)) == 0, and falls through when v0(=ret(vice_dms_geterrs)) != 0.
  The `beq` branch at 0x405410 targets 0x40548c and is always taken.
  The `bne` branch at 0x405418 targets 0x405460, is taken when a4 != 0, and falls through when a4 == 0.
  The `bne` branch at 0x405420 targets 0x405530, is taken when a2(=a5) != 0, and falls through when a2(=a5) == 0.
  The `beq` branch at 0x40542c targets 0x40549c, is taken when a3(=a6) == 0, and falls through when a3(=a6) != 0.
  The `beq` branch at 0x405444 targets 0x40549c, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x405470 targets 0x40556c, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x4054b0 targets 0x405624, is taken when v0(=ret(_dv_go)) == ra(=-0x1), and falls through when v0(=ret(_dv_go)) != ra(=-0x1).
  The `beq` branch at 0x4054c8 targets 0x405590, is taken when v0(=ret(needsConvert)) == 0, and falls through when v0(=ret(needsConvert)) != 0.
  The `beq` branch at 0x4054ec targets 0x405514, is taken when a0(=[a0+16]) == 0, and falls through when a0(=[a0+16]) != 0.
  The `beq` branch at 0x405500 targets 0x4053a4, is taken when v1(=[a0+20]) >= v0(=ret(dmImageFrameSize)) (signed), and falls through when v1(=[a0+20]) < v0(=ret(dmImageFrameSize)) (signed).
  The `beq` branch at 0x405520 targets 0x4057a4, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x405528 targets 0x40548c and is always taken.
  The `beq` branch at 0x405540 targets 0x405638, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x40555c targets 0x405718, is taken when a0(=[a0+216]:1) == 0, and falls through when a0(=[a0+216]:1) != 0.
  The `beq` branch at 0x405564 targets 0x40548c and is always taken.
  The `beq` branch at 0x405580 targets 0x405420, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x405588 targets 0x40548c and is always taken.
  The `beq` branch at 0x405594 targets 0x405630, is taken when a0(=[a0+16]) == 0, and falls through when a0(=[a0+16]) != 0.
  The `beq` branch at 0x4055c4 targets 0x405630, is taken when v0(=ret(vice_dmbuf_outpool)) == 0, and falls through when v0(=ret(vice_dmbuf_outpool)) != 0.
  The `beq` branch at 0x4055cc targets 0x40548c and is always taken.
  The `beq` branch at 0x4055d8 targets 0x4056dc, is taken when a3(=[0x47bea4]) == 0, and falls through when a3(=[0x47bea4]) != 0.
  The `beq` branch at 0x405600 targets 0x405728, is taken when v0(=ret(threadarg_enqueue)) == 0, and falls through when v0(=ret(threadarg_enqueue)) != 0.
  The `beq` branch at 0x40561c targets 0x40548c and is always taken.
  The `beq` branch at 0x405624 targets 0x40548c and is always taken.
  The `beq` branch at 0x405630 targets 0x4053a4 and is always taken.
  The `beq` branch at 0x40564c targets 0x405710, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `beq` branch at 0x405668 targets 0x405674, is taken when v0(=ret(dmParamsGetEnum)) == a3(=0x3f0), and falls through when v0(=ret(dmParamsGetEnum)) != a3(=0x3f0).
  The `beq` branch at 0x405698 targets 0x405428 and is always taken.
  The `beq` branch at 0x4056b8 targets 0x40548c and is always taken.
  The `beq` branch at 0x4056d4 targets 0x40548c and is always taken.
  The `beq` branch at 0x4056e8 targets 0x40573c, is taken when v0(=ret(dmBufferAllocate)) == 0, and falls through when v0(=ret(dmBufferAllocate)) != 0.
  The `beq` branch at 0x405708 targets 0x40548c and is always taken.
  The `beq` branch at 0x405710 targets 0x405674 and is always taken.
  The `beq` branch at 0x405720 targets 0x405564 and is always taken.
  The `beq` branch at 0x405734 targets 0x40548c and is always taken.
  The `beq` branch at 0x40579c targets 0x4053bc and is always taken.
  The `beq` branch at 0x4057bc targets 0x4057cc, is taken when v0(=ret(dmBufferSetPoolDefaults)) == 0, and falls through when v0(=ret(dmBufferSetPoolDefaults)) != 0.
  The `beq` branch at 0x4057c4 targets 0x40548c and is always taken.
  The `beq` branch at 0x4057f0 targets 0x405800, is taken when v0(=ret(dmBufferCreatePool)) == 0, and falls through when v0(=ret(dmBufferCreatePool)) != 0.
  The `beq` branch at 0x4057f8 targets 0x40548c and is always taken.
  The `beq` branch at 0x405838 targets 0x4053a8, is taken when v0(=ret(vice_dmbuf_outpool)) == 0, and falls through when v0(=ret(vice_dmbuf_outpool)) != 0.
  The `beq` branch at 0x405840 targets 0x40548c and is always taken.
  The return at 0x405454 has v0 = -0x1.
  The return at 0x405484 has v0 = -0x1.
  The return at 0x405494 has v0 = one of -0x1, 0x0.
  The return at 0x405550 has v0 = -0x1.
  The instructions from 0x40562c to 0x40562c are not reached by any path from the entry, and their branches are not listed.

- `_e_go` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x405850 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x405850-0x405b14 (708 bytes).
  It occupies 708 bytes.
  The `sw` at 0x405850 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  The `lw` at 0x405854 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x40585c loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0x40587c loads 4 bytes from a0 (arg0 at entry) +0x4.
  2 such `sw` accesses store 4 bytes to sym(rollMode) +0x0, including `sw` at 0x4058c4, `sw` at 0x4058d8.
  2 such `sw` accesses store 4 bytes to sym(qno4passMode) +0x0, including `sw` at 0x4058cc, `sw` at 0x4058dc.
  The `lw` at 0x4058fc loads 4 bytes from sym(qno4passMode) +0x0.
  The `lw` at 0x405904 loads 4 bytes from sym(rollMode) +0x0.
  2 such `sw` accesses store 4 bytes to sym(dvNoiseMode) +0x0, including `sw` at 0x40590c, `sw` at 0x405944.
  2 such `sw` accesses store 4 bytes to sym(mbNumber) +0x0, including `sw` at 0x405984, `sw` at 0x405a84.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x78, including `sw` at 0x405990, `sw` at 0x405ac0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x7c, including `sw` at 0x40599c, `sw` at 0x405acc.
  3 such `sw` accesses store 4 bytes to sym(videoMode) +0x0, including `sw` at 0x4059d0, `sw` at 0x405a90, `sw` at 0x405ae8.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x4059e8, `lw` at 0x4059f4, `lw` at 0x405a50.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xdc, including `sw` at 0x4059ec, `sw` at 0x405ab0, `sw` at 0x405b08.
  The `sw` at 0x4059fc stores 4 bytes to a0 (arg0 at entry) +0x2c.
  The `sw` at 0x405a04 stores 4 bytes to a0 (arg0 at entry) +0xe0.
  The `sw` at 0x405a1c stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0x405a28 stores 4 bytes to a0 (arg0 at entry) +0x54.
  The `jalr` at 0x405888 calls dmParamsIsPresent with a0=[a0+12], a1=0x410540, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4058a4 calls dmParamsGetFloat with a0=[a0+12], a1=0x410540, a2=?, a3=?.
  The `jalr` at 0x4058e8 calls getenv with a0=0x4103c0, a1=?, a2=?, a3=?.
  The `jalr` at 0x405930 calls printf with a0=0x410580, a1=one of 0x47bf18, 0x47bf20, a2=one of 0x410560, 0x410570, a3=[sym(qno4passMode)], a4=[sym(rollMode)].
  The `jalr` at 0x405954 calls dmParamsGetInt with a0=[a0+4], a1=0x410028, a2=?, a3=?.
  The `jalr` at 0x405998 calls dmParamsGetString with a0=[a0+8], a1=0x410000, a2=0x1e0, a3=0xca800, a4=0x23280, a5=0x654, a6=sym(mbNumber).
  The `jalr` at 0x4059a8 calls strcmp with a0=ret(dmParamsGetString), a1=0x47bee8, a2=?, a3=?.
  The `jalr` at 0x4059cc calls vice_file with a0=0x4105d0, a1=?, a2=0x1, a3=sym(videoMode).
  The `jalr` at 0x4059e4 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=0x0.
  The `jalr` at 0x405a00 calls vice_etc_dramp with a0=[a0], a1=0x71, a2=?, a3=?.
  The `jalr` at 0x405a0c calls dmic_dram_init_encode with a0=ret(vice_etc_dramp), a1=?, a2=?, a3=?.
  The `jalr` at 0x405a24 calls initCvLength with a0=?, a1=?, a2=0x8000, a3=0x1800.
  The `jalr` at 0x405a30 calls initVLC16fromVLC with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405a3c calls buildQMShft with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x405a4c calls vice_event_start with a0=[a0], a1=a0+28, a2=?, a3=?.
  The `jalr` at 0x405a8c calls vice_file with a0=0x4105a0, a1=0x546, a2=sym(mbNumber), a3=?, a4=sym(videoMode).
  The `jalr` at 0x405aa4 calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=0x0.
  The `jalr` at 0x405ae4 calls vice_file with a0=0x4105b8, a1=?, a2=?, a3=?, a6=0x2, a7=sym(videoMode).
  The `jalr` at 0x405afc calls vice_load_msp_code with a0=[a0], a1=ret(vice_file), a2=a0+28, a3=0x0.
  The `beq` branch at 0x405890 targets 0x4058d0, is taken when v0(=ret(dmParamsIsPresent)) == 0, and falls through when v0(=ret(dmParamsIsPresent)) != 0.
  The `bc1f` branch at 0x4058bc targets 0x4058d0, is taken when not (f1(=0x3fe0000000000000) < f0(=ret(dmParamsGetFloat)) (c.lt.d at 0x4058b0)), and falls through when f1(=0x3fe0000000000000) < f0(=ret(dmParamsGetFloat)) (c.lt.d at 0x4058b0).
  The `beq` branch at 0x4058c8 targets 0x4058e0 and is always taken.
  The `beq` branch at 0x4058f4 targets 0x405940, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `beq` branch at 0x405908 targets 0x405b0c, is taken when a3(=[sym(qno4passMode)]) == 0, and falls through when a3(=[sym(qno4passMode)]) != 0.
  The `beq` branch at 0x405918 targets 0x405928, is taken when a4(=[sym(rollMode)]) == 0, and falls through when a4(=[sym(rollMode)]) != 0.
  The `beq` branch at 0x405938 targets 0x40594c and is always taken.
  The `beq` branch at 0x405960 targets 0x405a70, is taken when v0(=ret(dmParamsGetInt)) == a2(=0x1e0), and falls through when v0(=ret(dmParamsGetInt)) != a2(=0x1e0).
  The `beq` branch at 0x4059b0 targets 0x405ad0, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x405ac8 targets 0x4059f0 and is always taken.
  The `beq` branch at 0x405b04 targets 0x4059f0 and is always taken.
  The `beq` branch at 0x405b0c targets 0x405914 and is always taken.
  The return at 0x405a68 has v0 = 0x0.

- `dve_send` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x405b20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x405b20-0x405f6c (1100 bytes).
  It occupies 1100 bytes.
  The `lw` at 0x405b48 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x405b50 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0x405bc0 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `lw` at 0x405bd0 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `lw` at 0x405be0 loads 4 bytes from a0 (arg0 at entry) +0x18.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x405bf8, `lw` at 0x405ce4.
  The `lw` at 0x405c04 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lw` at 0x405cac loads 4 bytes from a0 (arg0 at entry) +0xc.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14, including `sw` at 0x405cd8, `sw` at 0x405cf8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x405d2c, `lw` at 0x405d40.
  The `bgezall` at 0x405ba4 calls _e_go [0x405850] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=a4 at entry (arg4), a6=a5 at entry (arg5).
  The `bgezall` at 0x405bb8 calls needsConvert [0x403460] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405bc8 calls dmBufferGetSize with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x405bf0 calls dmImageFrameSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405c18 calls dmBufferDestroyPool with a0=[a0+16], a1=?, a2=?, a3=?.
  The `jalr` at 0x405c24 calls dmParamsCreate with a0=sp-124, a1=?, a2=?, a3=?.
  The `jalr` at 0x405c4c calls dmParamsCopyAllElems with a0=a5 at entry (arg5), a1=?, a2=?, a3=a5 at entry (arg5).
  The `jalr` at 0x405c7c calls dmParamsCopyAllElems with a0=a4 at entry (arg4), a1=[a0+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x405ca8 calls dmParamsCopyAllElems with a0=a6 at entry (arg6), a1=[a0+12], a2=?, a3=?, a4=a6 at entry (arg6), a5=a4 at entry (arg4).
  The `jalr` at 0x405ccc calls dmParamsGetInt with a0=?, a1=0x4104d0, a2=?, a3=?.
  The `jalr` at 0x405cdc calls dmParamsDestroy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405cf4 calls dmBufferAllocate with a0=[a0+16], a1=sp-128, a2=?, a3=?.
  The `jalr` at 0x405d28 calls vice_dmbuf_send with a0=[a0], a1=?, a2=a0+136, a3=a0+100, a4=0x4.
  The `jalr` at 0x405d3c calls vice_dms_geterrs with a0=[a0], a1=?, a2=?, a3=?, a4=-0x1.
  The `jalr` at 0x405d5c calls dmSetError with a0=0x1777, a1=0x47bed0, a2=0x410610, a3=?.
  The `jalr` at 0x405d78 calls dmBufferFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405d98 calls dmSetError with a0=0x1777, a1=0x47bed0, a2=0x4105e8, a3=?.
  The `jalr` at 0x405db0 calls dmParamsGetEnum with a0=?, a1=0x410038, a2=?, a3=?.
  The `jalr` at 0x405dd4 calls dmParamsSetEnum with a0=?, a1=0x410038, a2=?, a3=0x3f0.
  The `jalr` at 0x405dec calls dmParamsSetEnum with a0=?, a1=0x410050, a2=0x44c, a3=?.
  The `jalr` at 0x405e1c calls dmBufferSetPoolDefaults with a0=?, a1=0x2, a2=?, a3=0x0, a4=0x1.
  The `jalr` at 0x405e40 calls dmBufferMapData with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x405e50 calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405e6c calls dmICAnyToAny with a0=?, a1=ret(dmBufferMapData), a2=?, a3=?, a4=0x0.
  The `jalr` at 0x405e9c calls dmSetError with a0=0x1777, a1=0x47bed0, a2=0x4105f8, a3=?, a4=-0x1.
  The `bgezall` at 0x405eb8 calls _poolneeds [0x403100] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x405ec8 calls dmBufferCreatePool with a0=?, a1=a0+16, a2=?, a3=?.
  The `jalr` at 0x405ee8 calls dmBufferSetSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405f04 calls dmBufferGetImageType with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x405f14 calls dmBufferSetImageType with a0=?, a1=ret(dmBufferGetImageType), a2=?, a3=?.
  The `jalr` at 0x405f30 calls dmBufferGetUSTMSCpair with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x405f50 calls dmBufferSetUSTMSCpair with a0=?, a1=ret(dmBufferGetUSTMSCpair), a2=?, a3=?.
  The `bne` branch at 0x405b64 targets 0x405c74, is taken when a4 != 0, and falls through when a4 == 0.
  The `bne` branch at 0x405b70 targets 0x405c48, is taken when a3(=a5) != 0, and falls through when a3(=a5) == 0.
  The `bne` branch at 0x405b7c targets 0x405ca0, is taken when a4(=a6) != 0, and falls through when a4(=a6) == 0.
  The `bne` branch at 0x405b84 targets 0x405b9c, is taken when a5(=a4) != 0, and falls through when a5(=a4) == 0.
  The `bne` branch at 0x405b8c targets 0x405b9c, is taken when a6(=a5) != 0, and falls through when a6(=a5) == 0.
  The `beq` branch at 0x405b94 targets 0x405bc8, is taken when a7(=a6) == 0, and falls through when a7(=a6) != 0.
  The `bne` branch at 0x405bd8 targets 0x405d88, is taken when v0(=ret(dmBufferGetSize)) < ra(=[a0+124]) (signed), and falls through when v0(=ret(dmBufferGetSize)) >= ra(=[a0+124]) (signed).
  The `beq` branch at 0x405be4 targets 0x405d18, is taken when at(=[a0+24]) == 0, and falls through when at(=[a0+24]) != 0.
  The `beq` branch at 0x405bfc targets 0x405c20, is taken when a0(=[a0+16]) == 0, and falls through when a0(=[a0+16]) != 0.
  The `beq` branch at 0x405c0c targets 0x405ce8, is taken when v1(=[a0+20]) >= v0(=ret(dmImageFrameSize)) (signed), and falls through when v1(=[a0+20]) < v0(=ret(dmImageFrameSize)) (signed).
  The `beq` branch at 0x405c2c targets 0x405e08, is taken when v0(=ret(dmParamsCreate)) == 0, and falls through when v0(=ret(dmParamsCreate)) != 0.
  The `beq` branch at 0x405c54 targets 0x405da8, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x405c84 targets 0x405b6c, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x405cb0 targets 0x405b84, is taken when v0(=ret(dmParamsCopyAllElems)) == 0, and falls through when v0(=ret(dmParamsCopyAllElems)) != 0.
  The `beq` branch at 0x405cbc targets 0x405c64 and is always taken.
  The `beq` branch at 0x405cfc targets 0x405e40, is taken when v0(=ret(dmBufferAllocate)) == 0, and falls through when v0(=ret(dmBufferAllocate)) != 0.
  The `beq` branch at 0x405d08 targets 0x405c64 and is always taken.
  The `beq` branch at 0x405d34 targets 0x405e88, is taken when v0(=ret(vice_dmbuf_send)) == a4(=-0x1), and falls through when v0(=ret(vice_dmbuf_send)) != a4(=-0x1).
  The `beq` branch at 0x405d44 targets 0x405e38, is taken when v0(=ret(vice_dms_geterrs)) == 0, and falls through when v0(=ret(vice_dms_geterrs)) != 0.
  The `beq` branch at 0x405d70 targets 0x405d80, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x405d80 targets 0x405c64 and is always taken.
  The `beq` branch at 0x405da0 targets 0x405c64 and is always taken.
  The `beq` branch at 0x405dbc targets 0x405dc8, is taken when v0(=ret(dmParamsGetEnum)) == a3(=0x3f0), and falls through when v0(=ret(dmParamsGetEnum)) != a3(=0x3f0).
  The `beq` branch at 0x405df4 targets 0x405b7c, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x405e00 targets 0x405c64 and is always taken.
  The `beq` branch at 0x405e24 targets 0x405eb0, is taken when v0(=ret(dmBufferSetPoolDefaults)) == 0, and falls through when v0(=ret(dmBufferSetPoolDefaults)) != 0.
  The `beq` branch at 0x405e30 targets 0x405c64 and is always taken.
  The `beq` branch at 0x405e38 targets 0x405d6c and is always taken.
  The `beq` branch at 0x405e74 targets 0x405ee4, is taken when v0(=ret(dmICAnyToAny)) == 0, and falls through when v0(=ret(dmICAnyToAny)) != 0.
  The `beq` branch at 0x405e80 targets 0x405c64 and is always taken.
  The `beq` branch at 0x405ea8 targets 0x405d6c and is always taken.
  The `beq` branch at 0x405ed0 targets 0x405cc4, is taken when v0(=ret(dmBufferCreatePool)) == 0, and falls through when v0(=ret(dmBufferCreatePool)) != 0.
  The `beq` branch at 0x405edc targets 0x405c64 and is always taken.
  The `beq` branch at 0x405ef0 targets 0x405f04, is taken when v0(=ret(dmBufferSetSize)) == 0, and falls through when v0(=ret(dmBufferSetSize)) != 0.
  The `beq` branch at 0x405efc targets 0x405c64 and is always taken.
  The `beq` branch at 0x405f1c targets 0x405f30, is taken when v0(=ret(dmBufferSetImageType)) == 0, and falls through when v0(=ret(dmBufferSetImageType)) != 0.
  The `beq` branch at 0x405f28 targets 0x405c64 and is always taken.
  The `beq` branch at 0x405f58 targets 0x405d10, is taken when v0(=ret(dmBufferSetUSTMSCpair)) == 0, and falls through when v0(=ret(dmBufferSetUSTMSCpair)) != 0.
  The `beq` branch at 0x405f64 targets 0x405c64 and is always taken.
  The return at 0x405c40 has v0 = -0x1.
  The return at 0x405c6c has v0 = one of -0x1, ?.
  The return at 0x405c98 has v0 = -0x1.

- `dv_recv` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x405f70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x405f70-0x40635c (1004 bytes).
  It occupies 1004 bytes.
  The `lw` at 0x405f70 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x405f80 loads 4 bytes from a0 (arg0 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x74, including `lw` at 0x405f90, `lw` at 0x406188.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x18, including `lw` at 0x405f98, `lw` at 0x406164.
  The `lw` at 0x405fcc loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `sw` at 0x405fd4 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `lw` at 0x405fec loads 4 bytes from a0 (arg0 at entry) +0x0.
  15 such `lw` accesses load 4 bytes from ?, including `lw` at 0x405ffc, `lw` at 0x406018, `lw` at 0x406038.
  The `lw` at 0x406010 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `sw` at 0x406040 stores 4 bytes to (([0x47beb4] << 0x2) + [0x47beb8]) +0x0.
  The `sw` at 0x406054 stores 4 bytes to (([0x47beb4] << 0x2) + [0x47bebc]) +0x0.
  The `sw` at 0x40606c stores 4 bytes to (([0x47beb4] << 0x2) + [0x47bec0]) +0x0.
  The `sw` at 0x4061c4 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lw` at 0x4061ec loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `jalr` at 0x405fc4 calls dmImageFrameSize with a0=[a0+4], a1=a1 at entry (arg1), a2=[a0+116], a3=a3 at entry (arg3).
  The `jalr` at 0x405fe8 calls vice_dmbuf_recv with a0=[a0], a1=sp-96, a2=?, a3=a0+176.
  The `jalr` at 0x406014 calls dmBufferSetSize with a0=?, a1=[a0+120], a2=?, a3=-0x1, a6=0xe000.
  The `jalr` at 0x406158 calls printf with a0=0x410680, a1=?, a2=?, a3=?, a4=0x1, a5=[0x47beb0]-1.
  The `jalr` at 0x406170 calls dmImageFrameSize with a0=?, a1=[a0+24], a2=?, a3=?.
  The `jalr` at 0x406184 calls dmBufferAllocate with a0=[a0+116], a1=sp-88, a2=?, a3=?.
  The `jalr` at 0x4061b4 calls dmBufferFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406204 calls printf with a0=0x410620, a1=?, a2=?, a3=-0x1.
  The `jalr` at 0x406220 calls dmSetError with a0=0x1776, a1=0x410648, a2=0x410658, a3=?.
  The `jalr` at 0x406254 calls dmParamsSetEnum with a0=?, a1=0x410038, a2=0x3f0, a3=?.
  The `jalr` at 0x40627c calls dmSetError with a0=0x1778, a1=0x47bed0, a2=0x410670, a3=-0x1, a6=0xe000.
  The `jalr` at 0x40629c calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4062ac calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4062c8 calls dmICAnyToAny with a0=ret(dmBufferMapData), a1=ret(dmBufferMapData), a2=?, a3=?, a4=0x0.
  The `jalr` at 0x4062e4 calls dmBufferSetSize with a0=?, a1=ret(dmImageFrameSize), a2=?, a3=?.
  The `jalr` at 0x4062fc calls dmBufferGetImageType with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40630c calls dmBufferSetImageType with a0=?, a1=ret(dmBufferGetImageType), a2=?, a3=?.
  The `jalr` at 0x406324 calls dmBufferGetUSTMSCpair with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406344 calls dmBufferSetUSTMSCpair with a0=?, a1=ret(dmBufferGetUSTMSCpair), a2=?, a3=?.
  The `beq` branch at 0x405fb8 targets 0x405fd8, is taken when at(=[a0+24]) == 0, and falls through when at(=[a0+24]) != 0.
  The `beq` branch at 0x405ff4 targets 0x4061e4, is taken when v0(=ret(vice_dmbuf_recv)) == a3(=-0x1), and falls through when v0(=ret(vice_dmbuf_recv)) != a3(=-0x1).
  The `beq` branch at 0x406004 targets 0x40626c, is taken when a5(?) == a6(=0xe000), and falls through when a5(?) != a6(=0xe000).
  The `beq` branch at 0x406020 targets 0x406164, is taken when t8(=[0x47beb0]) == 0, and falls through when t8(=[0x47beb0]) != 0.
  The `bne` branch at 0x406068 targets 0x4061ac, is taken when a4(=[0x47beb4]+1) != t8(=[0x47beb0]), and falls through when a4(=[0x47beb4]+1) == t8(=[0x47beb0]).
  The `blez` branch at 0x406070 targets 0x40628c, is taken when t8(=[0x47beb0]) <= 0 (signed), and falls through when t8(=[0x47beb0]) > 0 (signed).
  The `beq` branch at 0x4060b0 targets 0x4060c0, is taken when a4(?) == t3(=[0x47beb8]), and falls through when a4(?) != t3(=[0x47beb8]).
  The `beq` branch at 0x4060c4 targets 0x406104, is taken when a4(?) == t2(=(([0x47beb0] << 0x2) + [0x47beb8])), and falls through when a4(?) != t2(=(([0x47beb0] << 0x2) + [0x47beb8])).
  The `beq` branch at 0x4060e8 targets 0x4060f8, is taken when a4(?) == t3(=[0x47beb8]), and falls through when a4(?) != t3(=[0x47beb8]).
  The `bne` branch at 0x4060fc targets 0x406090, is taken when a4(?) != t2(=(([0x47beb0] << 0x2) + [0x47beb8])), and falls through when a4(?) == t2(=(([0x47beb0] << 0x2) + [0x47beb8])).
  The `beq` branch at 0x40610c targets 0x406150, is taken when t8(=[0x47beb0]) == a4(=0x1), and falls through when t8(=[0x47beb0]) != a4(=0x1).
  The `beq` branch at 0x406168 targets 0x4061c8, is taken when a1(=[a0+24]) == 0, and falls through when a1(=[a0+24]) != 0.
  The `beq` branch at 0x40618c targets 0x406244, is taken when v0(=ret(dmBufferAllocate)) == 0, and falls through when v0(=ret(dmBufferAllocate)) != 0.
  The `beq` branch at 0x4061ac targets 0x406164 and is always taken.
  The `beq` branch at 0x4061e4 targets 0x40620c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x4061f0 targets 0x40620c, is taken when v1(=[a0+132]) == 0, and falls through when v1(=[a0+132]) != 0.
  The `beq` branch at 0x40625c targets 0x40629c, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0x406264 targets 0x406194 and is always taken.
  The `beq` branch at 0x406284 targets 0x406194 and is always taken.
  The `beq` branch at 0x406294 targets 0x406108 and is always taken.
  The `beq` branch at 0x4062d0 targets 0x4062e0, is taken when v0(=ret(dmICAnyToAny)) == 0, and falls through when v0(=ret(dmICAnyToAny)) != 0.
  The `beq` branch at 0x4062d8 targets 0x406194 and is always taken.
  The `beq` branch at 0x4062ec targets 0x4062fc, is taken when v0(=ret(dmBufferSetSize)) == 0, and falls through when v0(=ret(dmBufferSetSize)) != 0.
  The `beq` branch at 0x4062f4 targets 0x406194 and is always taken.
  The `beq` branch at 0x406314 targets 0x406324, is taken when v0(=ret(dmBufferSetImageType)) == 0, and falls through when v0(=ret(dmBufferSetImageType)) != 0.
  The `beq` branch at 0x40631c targets 0x406194 and is always taken.
  The `beq` branch at 0x40634c targets 0x4061b4, is taken when v0(=ret(dmBufferSetUSTMSCpair)) == 0, and falls through when v0(=ret(dmBufferSetUSTMSCpair)) != 0.
  The `beq` branch at 0x406354 targets 0x406194 and is always taken.
  The return at 0x4061a4 has v0 = -0x1.
  The return at 0x4061dc has v0 = ?.
  The return at 0x40623c has v0 = ?.

- `dve_recv` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x406360 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x406360-0x40652c (460 bytes).
  It occupies 460 bytes.
  The `lw` at 0x406378 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x4063a4 loads 4 bytes from a0 (arg0 at entry) +0x74.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4063b8, `lw` at 0x40642c, `lw` at 0x406430.
  The `lw` at 0x4063dc loads 4 bytes from sym(dvbitspool) +0x0.
  The `sw` at 0x4063e8 stores 4 bytes to sym(dvxformpointer) +0x0.
  The `lw` at 0x40641c loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `lw` at 0x406484 loads 4 bytes from sym(dvxformpointer) +0x0.
  The `sw` at 0x406490 stores 4 bytes to sym(dvbitpointer) +0x0.
  The `lw` at 0x4064a4 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `sw` at 0x406514 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0x4063a0 calls vice_dmbuf_recv with a0=[a0], a1=sp-80, a2=[a0+116], a3=a0+176, a4=sp-72.
  The `jalr` at 0x4063c8 calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?, a4=-0x1, a7=0xe000.
  The `jalr` at 0x4063e4 calls dmBufferAllocate with a0=[sym(dvbitspool)], a1=sp-76, a2=?, a3=?.
  The `jalr` at 0x406434 calls printf with a0=0x410620, a1=?, a2=?, a3=?, a4=-0x1, a7=0xe000.
  The `jalr` at 0x406450 calls dmSetError with a0=0x1776, a1=0x410648, a2=0x410658, a3=?.
  The `jalr` at 0x406470 calls dmBufferMapData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40648c calls codeBuffer with a0=[sym(dvxformpointer)], a1=ret(dmBufferMapData), a2=?, a3=?.
  The `jalr` at 0x4064a0 calls dmBufferSetSize with a0=?, a1=[a0+120], a2=?, a3=?.
  The `jalr` at 0x4064c8 calls dmSetError with a0=0x1777, a1=0x47bed0, a2=0x410670, a3=?, a4=-0x1, a7=0xe000.
  The `jalr` at 0x4064e0 calls dmBufferGetUSTMSCpair with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406500 calls dmBufferSetUSTMSCpair with a0=?, a1=ret(dmBufferGetUSTMSCpair), a2=?, a3=?.
  The `jalr` at 0x406518 calls dmBufferFree with a0=?, a1=?, a2=?, a3=?, a4=a1 at entry (arg1).
  The `beq` branch at 0x4063b0 targets 0x406410, is taken when v0(=ret(vice_dmbuf_recv)) == a4(=-0x1), and falls through when v0(=ret(vice_dmbuf_recv)) != a4(=-0x1).
  The `beq` branch at 0x4063bc targets 0x4064b8, is taken when a6(?) == a7(=0xe000), and falls through when a6(?) != a7(=0xe000).
  The `beq` branch at 0x4063ec targets 0x40646c, is taken when v0(=ret(dmBufferAllocate)) == 0, and falls through when v0(=ret(dmBufferAllocate)) != 0.
  The `beq` branch at 0x406410 targets 0x40643c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x406420 targets 0x40643c, is taken when a1(=[a0+132]) == 0, and falls through when a1(=[a0+132]) != 0.
  The `beq` branch at 0x4064a8 targets 0x4064dc, is taken when v0(=ret(dmBufferSetSize)) == 0, and falls through when v0(=ret(dmBufferSetSize)) != 0.
  The `beq` branch at 0x4064b0 targets 0x406404 and is always taken.
  The `beq` branch at 0x4064d4 targets 0x406404 and is always taken.
  The `beq` branch at 0x406524 targets 0x406404 and is always taken.
  The return at 0x4063fc has v0 = -0x1.
  The return at 0x406408 has v0 = one of -0x1, ?.
  The return at 0x406464 has v0 = ?.

- `zoneFromIndexTab` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x406530 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x406530-0x4065a8 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x406564 loads 4 bytes from abs 0x47be08.
  The `lw` at 0x406570 loads 4 bytes from abs 0x47be0c.
  2 such `lh` accesses load 2 bytes from ?, including `lh` at 0x40657c, `lh` at 0x406588.
  The `lw` at 0x406590 loads 4 bytes from abs 0x47be04.
  The `lh` at 0x4065a4 loads 2 bytes from (sym(zone8x8Table) + ((a1 + (a0 << 0x3)) + (a1 + (a0 << 0x3)))) +0x0.
  The `beq` branch at 0x406538 targets 0x40658c, is taken when a2 == 0, and falls through when a2 != 0.
  The `bne` branch at 0x406568 targets 0x406580, is taken when a0 < 0x4 (signed), and falls through when a0 >= 0x4 (signed).
  The return at 0x406578 has v0 = ?.
  The return at 0x406584 has v0 = ?.
  The return at 0x4065a0 has v0 = [(sym(zone8x8Table) + ((a1 + (a0 << 0x3)) + (a1 + (a0 << 0x3))))]:2.

- `qScale` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x4065b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x4065b0-0x406618 (104 bytes).
  It occupies 104 bytes.
  The `lbu` at 0x4065e8 loads 1 byte from (a3 + sym(qnoShiftTable)) +0x0.
  The `lbu` at 0x40660c loads 1 byte from ?.
  The `jalr` at 0x4065d4 calls zoneFromIndexTab with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x406610 has v0 = ?.

- `qScaleShft` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x406620 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x406620-0x406688 (104 bytes).
  It occupies 104 bytes.
  The `lbu` at 0x406658 loads 1 byte from (a3 + sym(qnoShiftTable)) +0x0.
  The `lbu` at 0x40667c loads 1 byte from ?.
  The `jalr` at 0x406644 calls zoneFromIndexTab with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x406680 has v0 = ?.

- `scaleBlockInit` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x406690 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x406690-0x406774 (228 bytes).
  It occupies 228 bytes.
  9 such `lh` accesses load 2 bytes from ?, including `lh` at 0x4066a4, `lh` at 0x4066c4, `lh` at 0x4066c8.
  9 such `sh` accesses store 2 bytes to ?, including `sh` at 0x4066c0, `sh` at 0x40670c, `sh` at 0x406720.
  The `bne` branch at 0x40669c targets 0x40676c, is taken when a1 != at(=0x3), and falls through when a1 == at(=0x3).
  The `bne` branch at 0x4066bc targets 0x4066a4, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `bne` branch at 0x406764 targets 0x4066c4, is taken when a2(?) != a4(=a0+128), and falls through when a2(?) == a4(=a0+128).
  The return at 0x40676c has v0 = ?.

- `scaleBlock` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x406780 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x406780-0x40686c (236 bytes).
  It occupies 236 bytes.
  The `lh` at 0x406784 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0x40678c stores 2 bytes to a1 (arg1 at entry) +0x0.
  The `lh` at 0x406798 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `lw` at 0x4067ac loads 4 bytes from abs 0x47be44.
  The `lbu` at 0x4067c0 loads 1 byte from (sym(qscales) + (((a2 << 0x5) + (a4 + (a3 << 0x4))) << 0x6)) +0x1.
  2 such `sh` accesses store 2 bytes to a1 (arg1 at entry) +0x2, including `sh` at 0x4067d0, `sh` at 0x406868.
  4 such `sh` accesses store 2 bytes to ?, including `sh` at 0x4067f4, `sh` at 0x40680c, `sh` at 0x406838.
  2 such `lh` accesses load 2 bytes from ?, including `lh` at 0x4067f8, `lh` at 0x40681c.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x406804, `lbu` at 0x406824.
  The `bltz` branch at 0x4067c4 targets 0x406858, is taken when t2(=[a0+2]:2) < 0 (signed), and falls through when t2(=[a0+2]:2) >= 0 (signed).
  The `beq` branch at 0x4067dc targets 0x40681c and is always taken.
  The `bltz` branch at 0x406800 targets 0x40683c, is taken when t2(?) < 0 (signed), and falls through when t2(?) >= 0 (signed).
  The `beq` branch at 0x406814 targets 0x406850, is taken when t0(?) == t8(=a0+128), and falls through when t0(?) != t8(=a0+128).
  The `bgez` branch at 0x406820 targets 0x4067f0, is taken when t2(?) >= 0 (signed), and falls through when t2(?) < 0 (signed).
  The `beq` branch at 0x406834 targets 0x4067f8 and is always taken.
  The `beq` branch at 0x406848 targets 0x406810 and is always taken.
  The `beq` branch at 0x406864 targets 0x4067d4 and is always taken.
  The return at 0x406850 has v0 = 0x7d3f4.
  The instructions from 0x4067e4 to 0x4067ec are not reached by any path from the entry, and their branches are not listed.

- `buildQM` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x406870 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x406870-0x406ad0 (608 bytes).
  It occupies 608 bytes.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x406940, `sb` at 0x406a60.
  The `jalr` at 0x406924 calls qScale with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406a44 calls qScale with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4068a8 targets 0x4069d8, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x4068c4 targets 0x4069d0, is taken when s5(?) == v1(=0x3), and falls through when s5(?) != v1(=0x3).
  The `bne` branch at 0x40693c targets 0x406910, is taken when s0(?) != s7(=0x8), and falls through when s0(?) == s7(=0x8).
  The `bne` branch at 0x40694c targets 0x406900, is taken when s2(?) != s7(=0x8), and falls through when s2(?) == s7(=0x8).
  The `bne` branch at 0x406964 targets 0x4068f0, is taken when s3(?) != a3(=0x10), and falls through when s3(?) == a3(=0x10).
  The `bne` branch at 0x40697c targets 0x4068d8, is taken when s4(?) != a5(=0x2), and falls through when s4(?) == a5(=0x2).
  The `bne` branch at 0x406994 targets 0x4068c0, is taken when s5(?) != a7(=0x4), and falls through when s5(?) == a7(=0x4).
  The `beq` branch at 0x4069d0 targets 0x4068cc and is always taken.
  The `beq` branch at 0x4069e4 targets 0x406abc and is always taken.
  The `bne` branch at 0x406a5c targets 0x406a30, is taken when s0(?) != s7(=0x8), and falls through when s0(?) == s7(=0x8).
  The `bne` branch at 0x406a6c targets 0x406a20, is taken when s2(?) != s7(=0x8), and falls through when s2(?) == s7(=0x8).
  The `bne` branch at 0x406a84 targets 0x406a10, is taken when s3(?) != t9(=0x10), and falls through when s3(?) == t9(=0x10).
  The `bne` branch at 0x406a9c targets 0x4069f8, is taken when s4(?) != at(=0x2), and falls through when s4(?) == at(=0x2).
  The `beq` branch at 0x406ab4 targets 0x40699c, is taken when s5(?) == v1(=0x4), and falls through when s5(?) != v1(=0x4).
  The `bne` branch at 0x406ac0 targets 0x4069ec, is taken when s5(?) != a1(=0x3), and falls through when s5(?) == a1(=0x3).
  The `beq` branch at 0x406ac8 targets 0x4069ec and is always taken.
  The return at 0x4069c8 has v0 = one of ret(qScale), ?.

- `buildQMShft` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x406ad0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x406ad0-0x406d1c (588 bytes).
  It occupies 588 bytes.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x406b9c, `sb` at 0x406cac.
  The `jalr` at 0x406b84 calls qScaleShft with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406c94 calls qScaleShft with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x406b08 targets 0x406c34, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x406b24 targets 0x406c2c, is taken when s5(?) == v1(=0x3), and falls through when s5(?) != v1(=0x3).
  The `bne` branch at 0x406b98 targets 0x406b70, is taken when s0(?) != s7(=0x8), and falls through when s0(?) == s7(=0x8).
  The `bne` branch at 0x406ba8 targets 0x406b60, is taken when s2(?) != s7(=0x8), and falls through when s2(?) == s7(=0x8).
  The `bne` branch at 0x406bc0 targets 0x406b50, is taken when s3(?) != a3(=0x10), and falls through when s3(?) == a3(=0x10).
  The `bne` branch at 0x406bd8 targets 0x406b38, is taken when s4(?) != a5(=0x2), and falls through when s4(?) == a5(=0x2).
  The `bne` branch at 0x406bf0 targets 0x406b20, is taken when s5(?) != a7(=0x4), and falls through when s5(?) == a7(=0x4).
  The `beq` branch at 0x406c2c targets 0x406b2c and is always taken.
  The `beq` branch at 0x406c40 targets 0x406d08 and is always taken.
  The `bne` branch at 0x406ca8 targets 0x406c80, is taken when s0(?) != s7(=0x8), and falls through when s0(?) == s7(=0x8).
  The `bne` branch at 0x406cb8 targets 0x406c70, is taken when s2(?) != s7(=0x8), and falls through when s2(?) == s7(=0x8).
  The `bne` branch at 0x406cd0 targets 0x406c60, is taken when s3(?) != t9(=0x10), and falls through when s3(?) == t9(=0x10).
  The `bne` branch at 0x406ce8 targets 0x406c54, is taken when s4(?) != at(=0x2), and falls through when s4(?) == at(=0x2).
  The `beq` branch at 0x406d00 targets 0x406bf8, is taken when s5(?) == v1(=0x4), and falls through when s5(?) != v1(=0x4).
  The `bne` branch at 0x406d0c targets 0x406c48, is taken when s5(?) != a1(=0x3), and falls through when s5(?) == a1(=0x3).
  The `beq` branch at 0x406d14 targets 0x406c48 and is always taken.
  The return at 0x406c24 has v0 = one of ret(qScaleShft), ?.

- `loadMSPEncode` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x406d20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x406d20-0x406e64 (324 bytes).
  It occupies 324 bytes.
  The `lw` at 0x406d2c loads 4 bytes from abs 0x47bdf4.
  The `lw` at 0x406d38 loads 4 bytes from abs 0x47bec8.
  The `lw` at 0x406d40 loads 4 bytes from abs 0x47bdf8.
  16 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x406d50, `lhu` at 0x406d54, `lhu` at 0x406d58.
  10 such `sw` accesses store 4 bytes to ?, including `sw` at 0x406d6c, `sw` at 0x406d74, `sw` at 0x406d94.
  The `lw` at 0x406e14 loads 4 bytes from abs 0x47bdf0.
  4 such `lh` accesses load 2 bytes from ?, including `lh` at 0x406e20, `lh` at 0x406e24, `lh` at 0x406e38.
  The `bne` branch at 0x406e0c targets 0x406d50, is taken when a5(?) != t8(=0x8), and falls through when a5(?) == t8(=0x8).
  The `bne` branch at 0x406e54 targets 0x406e20, is taken when a3(?) != a4(=sym(cAsh)+48), and falls through when a3(?) == a4(=sym(cAsh)+48).
  The return at 0x406e5c has v0 = ?.

- `difference` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x406e70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x406e70-0x406f94 (292 bytes).
  It occupies 292 bytes.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x406e8c, `sw` at 0x406f90.
  16 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x406e90, `lbu` at 0x406e94, `lbu` at 0x406e98.
  The `bne` branch at 0x406f84 targets 0x406e90, is taken when a6(?) != t8(=0x4), and falls through when a6(?) == t8(=0x4).
  The return at 0x406f8c has v0 = ?.

- `setMem` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x406fa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x406fa0-0x407010 (112 bytes).
  It occupies 112 bytes.
  The `sw` at 0x406fcc stores 4 bytes to (a0 + [0x47bec8]) -0x8000.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x406fe0, `sw` at 0x406ff4, `sw` at 0x407004.
  The `beq` branch at 0x406fb0 targets 0x407008, is taken when a0 >= a6(?) (signed), and falls through when a0 < a6(?) (signed).
  The `beq` branch at 0x406fd8 targets 0x407008, is taken when a4(?) >= a5(?) (signed), and falls through when a4(?) < a5(?) (signed).
  The `beq` branch at 0x406fec targets 0x407008, is taken when a4(?) >= a5(?) (signed), and falls through when a4(?) < a5(?) (signed).
  The `bnel` branch at 0x407000 targets 0x406fd0, is taken when a4(?) < a5(?) (signed), and falls through when a4(?) >= a5(?) (signed); its branch-likely delay slot `sw a3,-32768(a4)` at 0x407004 runs only when taken and is annulled on fall-through.
  The return at 0x407008 has v0 = ?.

- `loadMSPDecode` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x407010 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x407010-0x4074f8 (1256 bytes).
  It occupies 1256 bytes.
  3 such `lw` accesses load 4 bytes from sym(qnoShiftTable) +0x0, including `lw` at 0x407030, `lw` at 0x407038, `lw` at 0x407040.
  The `sw` at 0x407034 stores 4 bytes to [0x47bec8] +0x6d8.
  The `sw` at 0x40703c stores 4 bytes to [0x47bec8] +0xed8.
  The `sw` at 0x40704c stores 4 bytes to [0x47bec8] +0x16d8.
  18 such `lh` accesses load 2 bytes from ?, including `lh` at 0x407050, `lh` at 0x407054, `lh` at 0x407090.
  23 such `sw` accesses store 4 bytes to ?, including `sw` at 0x40706c, `sw` at 0x407070, `sw` at 0x407078.
  The `sw` at 0x40727c stores 4 bytes to [0x47bec8] +0x16d0.
  The `sw` at 0x407280 stores 4 bytes to [0x47bec8] +0x6d0.
  The `sw` at 0x407284 stores 4 bytes to [0x47bec8] +0x16d4.
  The `sw` at 0x407288 stores 4 bytes to [0x47bec8] +0xed4.
  The `sw` at 0x407294 stores 4 bytes to [0x47bec8] +0xed0.
  The `sw` at 0x40729c stores 4 bytes to [0x47bec8] +0x6d4.
  24 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x4072b0, `lhu` at 0x4072b4, `lhu` at 0x4072c4.
  The `sw` at 0x4074d0 stores 4 bytes to [0x47bec8] +0x1720.
  The `sw` at 0x4074d4 stores 4 bytes to [0x47bec8] +0xf20.
  The `sw` at 0x4074d8 stores 4 bytes to [0x47bec8] +0x720.
  The `sw` at 0x4074dc stores 4 bytes to [0x47bec8] +0x1710.
  The `sw` at 0x4074e4 stores 4 bytes to [0x47bec8] +0xf10.
  The `sw` at 0x4074e8 stores 4 bytes to [0x47bec8] +0x710.
  The `sw` at 0x4074f4 stores 4 bytes to [0x47bec8] +0xf14.
  The `bgezall` at 0x40748c calls setMem [0x406fa0] with a0=0x8000, a1=0x80, a2=0x4, a3=0x0.
  The `bgezall` at 0x4074a4 calls setMem [0x406fa0] with a0=0x8800, a1=0x80, a2=0x4, a3=0x0.
  The `bgezall` at 0x4074bc calls setMem [0x406fa0] with a0=0x9000, a1=0x80, a2=0x4, a3=0x0.
  The `bne` branch at 0x407074 targets 0x407050, is taken when a2(?) != a3(=sym(cAsh)+48), and falls through when a2(?) == a3(=sym(cAsh)+48).
  The `bne` branch at 0x407170 targets 0x407090, is taken when a3(?) != a7(=sym(weights8x8MSP)+16), and falls through when a3(?) == a7(=sym(weights8x8MSP)+16).
  The `bne` branch at 0x407270 targets 0x407190, is taken when a3(?) != a7(=sym(weights4x8MSP)+16), and falls through when a3(?) == a7(=sym(weights4x8MSP)+16).
  The `bne` branch at 0x4072dc targets 0x4072b0, is taken when a1(?) != a3(=sym(qno78x8)+128), and falls through when a1(?) == a3(=sym(qno78x8)+128).
  The `bne` branch at 0x40732c targets 0x407300, is taken when a2(?) != a3(=sym(qno74x8)+128), and falls through when a2(?) == a3(=sym(qno74x8)+128).
  The `bne` branch at 0x40737c targets 0x407350, is taken when a1(?) != a3(=sym(qnoeven8x8)+128), and falls through when a1(?) == a3(=sym(qnoeven8x8)+128).
  The `bne` branch at 0x4073cc targets 0x4073a0, is taken when a2(?) != a3(=sym(qnoodd8x8)+128), and falls through when a2(?) == a3(=sym(qnoodd8x8)+128).
  The `bne` branch at 0x40741c targets 0x4073f0, is taken when a1(?) != a3(=sym(qnoeven4x8)+128), and falls through when a1(?) == a3(=sym(qnoeven4x8)+128).
  The `bne` branch at 0x40746c targets 0x407440, is taken when a1(?) != a3(=sym(qnoodd4x8)+128), and falls through when a1(?) == a3(=sym(qnoodd4x8)+128).
  The return at 0x4074f0 has v0 = ret(setMem).

- `dmic_dram_init_decode` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x407500 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x407500-0x407534 (52 bytes).
  It occupies 52 bytes.
  The `jalr` at 0x40751c calls loadMSPDecode with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x40752c has v0 = ret(loadMSPDecode).

- `dmic_dram_init_encode` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x407540 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x407540-0x407574 (52 bytes).
  It occupies 52 bytes.
  The `jalr` at 0x40755c calls loadMSPEncode with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x40756c has v0 = ret(loadMSPEncode).

- `codeBuffer` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x407580 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x407580-0x407b20 (1440 bytes).
  It occupies 1440 bytes.
  2 such `lw` accesses load 4 bytes from sym(videoMode) +0x0, including `lw` at 0x4075ac, `lw` at 0x407a0c.
  The `sw` at 0x4075bc stores 4 bytes to sym(difBlkCnt) +0x0.
  The `sw` at 0x4075c8 stores 4 bytes to sym(difSeqCnt) +0x0.
  4 such `sw` accesses store 4 bytes to sym(DBG_Mode) +0x0, including `sw` at 0x407608, `sw` at 0x407624, `sw` at 0x407950.
  3 such `sw` accesses store 4 bytes to sym(unusedBits) +0x0, including `sw` at 0x40760c, `sw` at 0x407620, `sw` at 0x407b00.
  3 such `sw` accesses store 4 bytes to sym(lostBits) +0x0, including `sw` at 0x407610, `sw` at 0x40761c, `sw` at 0x407b04.
  3 such `sw` accesses store 4 bytes to sym(globalQNO) +0x0, including `sw` at 0x407614, `sw` at 0x407648, `sw` at 0x407b0c.
  21 such `lw` accesses load 4 bytes from ?, including `lw` at 0x407760, `lw` at 0x40779c, `lw` at 0x4077dc.
  24 such `lh` accesses load 2 bytes from ?, including `lh` at 0x40776c, `lh` at 0x40777c, `lh` at 0x407790.
  25 such `sw` accesses store 4 bytes to ?, including `sw` at 0x407778, `sw` at 0x407788, `sw` at 0x40778c.
  16 such `sh` accesses store 2 bytes to ?, including `sh` at 0x407798, `sh` at 0x4077a0, `sh` at 0x4077d4.
  2 such `lw` accesses load 4 bytes from sym(DBG_Mode) +0x0, including `lw` at 0x407934, `lw` at 0x407a50.
  The `lw` at 0x407a20 loads 4 bytes from sym(dvNoiseMode) +0x0.
  The `lw` at 0x407a30 loads 4 bytes from sym(mbNumber) +0x0.
  The `lw` at 0x407a34 loads 4 bytes from sym(globalQNO) +0x0.
  The `jalr` at 0x40771c calls writeSegment64 with a0=0x47e290, a1=?, a2=?, a3=?.
  The `jalr` at 0x407958 calls segGetBits with a0=0x47df70, a1=?, a2=?, a3=?.
  The `jalr` at 0x407a14 calls addHeaderInfo with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a6=0x47df70.
  The `jalr` at 0x407a58 calls printf with a0=0x4106a0, a1=?, a2=?, a3=?, a4=[sym(DBG_Mode)], a5=[sym(mbNumber)].
  The `jalr` at 0x407a98 calls writeHeader with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x407aac calls writeAudio with a0=?, a1=?, a2=?, a3=0x3, a7=0xaaaaaaab.
  The `beq` branch at 0x4075c4 targets 0x407ac8, is taken when v0(=[sym(videoMode)]) == 0, and falls through when v0(=[sym(videoMode)]) != 0.
  The `beq` branch at 0x4075d0 targets 0x407abc, is taken when v0(=[sym(videoMode)]) == a5(=0x1), and falls through when v0(=[sym(videoMode)]) != a5(=0x1).
  The `beq` branch at 0x407660 targets 0x407b10 and is always taken.
  The `bne` branch at 0x40768c targets 0x407698, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x4076a8 targets 0x4076b4, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x4076c0 targets 0x407a94, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x4076d8 targets 0x4076e4, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bne` branch at 0x4076f8 targets 0x407704, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x407710 targets 0x407aa8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x40773c targets 0x407a04, is taken when s4(?) == t0(=one of 0x10e, 0x144), and falls through when s4(?) != t0(=one of 0x10e, 0x144).
  The `beq` branch at 0x4077e8 targets 0x407980, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x40794c targets 0x407760, is taken when a7(?) != s1(?), and falls through when a7(?) == s1(?).
  The `bgez` branch at 0x407960 targets 0x407670, is taken when v0(=ret(segGetBits)) >= 0 (signed), and falls through when v0(=ret(segGetBits)) < 0 (signed).
  The `beq` branch at 0x40796c targets 0x407674 and is always taken.
  The `beq` branch at 0x4079fc targets 0x407868 and is always taken.
  The `beq` branch at 0x407a24 targets 0x407a60, is taken when a2(=[sym(dvNoiseMode)]) == 0, and falls through when a2(=[sym(dvNoiseMode)]) != 0.
  The `beq` branch at 0x407aa0 targets 0x4076c4 and is always taken.
  The `beq` branch at 0x407ab4 targets 0x407714 and is always taken.
  The `beq` branch at 0x407ac0 targets 0x4075dc and is always taken.
  The `beq` branch at 0x407b08 targets 0x407618 and is always taken.
  The `beq` branch at 0x407b18 targets 0x407748 and is always taken.
  The return at 0x407a8c has v0 = one of ret(addHeaderInfo), ret(printf).
  The instructions from 0x407668 to 0x40766c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x407974 to 0x40797c are not reached by any path from the entry, and their branches are not listed.

- `initCvLength` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x407b20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x407b20-0x407ba0 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0x407b2c loads 4 bytes from abs 0x47be28.
  9 such `sb` accesses store 1 byte to ?, including `sb` at 0x407b4c, `sb` at 0x407b50, `sb` at 0x407b54.
  The `bne` branch at 0x407b48 targets 0x407b40, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x407b60 targets 0x407b50, is taken when a2(?) != a3(=sym(cvLength)+15872), and falls through when a2(?) == a3(=sym(cvLength)+15872).
  The `bne` branch at 0x407b90 targets 0x407b80, is taken when a2(?) != a3(=sym(cvLength)+256), and falls through when a2(?) == a3(=sym(cvLength)+256).
  The return at 0x407b98 has v0 = 0x7c054.

- `initVLC16fromVLC` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x407ba0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x407ba0-0x407d40 (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0x407bc8 loads 4 bytes from abs 0x47be24.
  The `lw` at 0x407bd8 loads 4 bytes from abs 0x47be54.
  9 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x407c10, `lbu` at 0x407c58, `lbu` at 0x407c5c.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x407cdc, `sw` at 0x407d08.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x407ce8, `lw` at 0x407d0c.
  The `beq` branch at 0x407bdc targets 0x407c04 and is always taken.
  The `beq` branch at 0x407bfc targets 0x407d20, is taken when s3(?) == s4(=0x40), and falls through when s3(?) != s4(=0x40).
  The `beq` branch at 0x407c08 targets 0x407ce8 and is always taken.
  The `bne` branch at 0x407c24 targets 0x407c10, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x407c2c targets 0x407cc8, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x407cc0 targets 0x407c40, is taken when a4(?) != t3(=-0x1), and falls through when a4(?) == t3(=-0x1).
  The `beq` branch at 0x407cd0 targets 0x407cdc, is taken when 0 >= ra(?) (signed), and falls through when 0 < ra(?) (signed).
  The `beq` branch at 0x407ce0 targets 0x407bf0, is taken when t9(?) == s0(?), and falls through when t9(?) != s0(?).
  The `beq` branch at 0x407cfc targets 0x407ce0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `blez` branch at 0x407d04 targets 0x407ce0, is taken when a6(?) <= 0 (signed), and falls through when a6(?) > 0 (signed).
  The `bne` branch at 0x407d10 targets 0x407c10, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x407d18 targets 0x407c2c and is always taken.
  The return at 0x407d38 has v0 = ?.
  The instructions from 0x407be4 to 0x407bec are not reached by any path from the entry, and their branches are not listed.

- `prnEntry` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x407d40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x407d40-0x407e84 (324 bytes).
  It occupies 324 bytes.
  The `lbu` at 0x407de0 loads 1 byte from ?.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x407e0c, `lw` at 0x407e24.
  The `jalr` at 0x407de4 calls printf with a0=0x47bf28, a1=?, a2=?, a3=?.
  The `jalr` at 0x407e28 calls printf with a0=0x4106e0, a1=?, a2=?, a3=?.
  The `jalr` at 0x407e48 calls printf with a0=0x4106f8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x407d90 targets 0x407dc8 and is always taken.
  The `beq` branch at 0x407dc0 targets 0x407e40, is taken when s7(?) == a0(=0x100), and falls through when s7(?) != a0(=0x100).
  The `beq` branch at 0x407dd4 targets 0x407e0c and is always taken.
  The `bne` branch at 0x407df0 targets 0x407de0, is taken when s0(?) != s1(?), and falls through when s0(?) == s1(?).
  The `beq` branch at 0x407e04 targets 0x407da0, is taken when s4(?) == s6(=0x40), and falls through when s4(?) != s6(=0x40).
  The `bne` branch at 0x407e10 targets 0x407df8, is taken when a3(?) != s5(=a2), and falls through when a3(?) == s5(=a2).
  The `bgtz` branch at 0x407e30 targets 0x407ddc, is taken when s5(=a2) > 0 (signed), and falls through when s5(=a2) <= 0 (signed).
  The `beq` branch at 0x407e38 targets 0x407dfc and is always taken.
  The return at 0x407e7c has v0 = ret(printf).
  The instructions from 0x407d98 to 0x407d9c are not reached by any path from the entry, and their branches are not listed.

- `genvlc` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x407e90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x407e90-0x407e98 (8 bytes).
  It occupies 8 bytes.
  The return at 0x407e90 has v0 = ?.

- `pack_to_output` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x407ea0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x407ea0-0x4080a0 (512 bytes).
  It occupies 512 bytes.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x18, including `lw` at 0x407ea0, `lw` at 0x407fec, `lw` at 0x408094.
  3 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x0, including `ld` at 0x407ea4, `ld` at 0x408010, `ld` at 0x408030.
  The `lw` at 0x407ea8 loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `lw` at 0x407eac loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `sd` at 0x407eb8 stores 8 bytes to a1 (arg1 at entry) +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x407ec0, `lw` at 0x407fe8, `lw` at 0x40808c.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0x407ef4, `ld` at 0x408004.
  10 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x407ef8, `lw` at 0x407f14, `lw` at 0x407f54.
  11 such `ld` accesses load 8 bytes from ?, including `ld` at 0x407f04, `ld` at 0x407f18, `ld` at 0x407f40.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x407f10, `sd` at 0x407f4c, `sd` at 0x408074.
  7 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `sw` at 0x407f24, `sw` at 0x407f64, `sw` at 0x407f8c.
  8 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x8, including `sd` at 0x407f34, `sd` at 0x407f5c, `sd` at 0x407f84.
  3 such `sd` accesses store 8 bytes to [a0] +0x8, including `sd` at 0x407f74, `sd` at 0x407f9c, `sd` at 0x407fc4.
  The `sd` at 0x40801c stores 8 bytes to [a0] +0x0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x10, including `sw` at 0x408040, `sw` at 0x408050.
  The `beq` branch at 0x407ed4 targets 0x408064, is taken when a7(=[a0+16]) == t3(=0x40), and falls through when a7(=[a0+16]) != t3(=0x40).
  The `beq` branch at 0x407edc targets 0x407ff4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x407efc targets 0x407f38, is taken when (t2(?) & 0x3) == 0, and falls through when (t2(?) & 0x3) != 0.
  The `bne` branch at 0x407f30 targets 0x407f04, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x407f38 targets 0x407fe8, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x407fe0 targets 0x407f40, is taken when a5(?) != a6(=[a1+20]), and falls through when a5(?) == a6(=[a1+20]).
  The `beq` branch at 0x407ffc targets 0x408044, is taken when a3(=([a1+24] + [a0+16])) == t9(=0x80), and falls through when a3(=([a1+24] + [a0+16])) != t9(=0x80).
  The `beq` branch at 0x40800c targets 0x40804c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x408028 targets 0x408098, is taken when a3(=([a1+24] + [a0+16])) == t3(=0x40), and falls through when a3(=([a1+24] + [a0+16])) != t3(=0x40).
  The `beq` branch at 0x408064 targets 0x407ff4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x408084 targets 0x408070, is taken when a5(?) != a6(=[a1+20]), and falls through when a5(?) == a6(=[a1+20]).
  The `beq` branch at 0x408090 targets 0x407ff0 and is always taken.
  The `beq` branch at 0x408098 targets 0x40803c and is always taken.
  The return at 0x40803c has v0 = [a0]+8.
  The return at 0x408044 has v0 = ?.
  The return at 0x40805c has v0 = ?.

- `init_pullers` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x4080a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x4080a0-0x4081dc (316 bytes).
  It occupies 316 bytes.
  The `lw` at 0x4080d0 loads 4 bytes from abs 0x47be64.
  6 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4080e0, `sw` at 0x4080e4, `sw` at 0x4080e8.
  10 such `ld` accesses load 8 bytes from ?, including `ld` at 0x4080f8, `ld` at 0x4080fc, `ld` at 0x408104.
  12 such `sd` accesses store 8 bytes to ?, including `sd` at 0x408118, `sd` at 0x408124, `sd` at 0x40813c.
  The `bne` branch at 0x4081cc targets 0x4080e0, is taken when a4(?) != a7(=a0+400), and falls through when a4(?) == a7(=a0+400).
  The return at 0x4081d4 has v0 = ?.

- `init_pushers` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x4081e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x4081e0-0x408250 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x4081f8 loads 4 bytes from abs 0x47be68.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0x408200, `sw` at 0x408228, `sw` at 0x408234.
  The `bne` branch at 0x408208 targets 0x4081fc, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x408240 targets 0x408220, is taken when a3(?) != a4(=a0+9840), and falls through when a3(?) == a4(=a0+9840).
  The return at 0x408248 has v0 = 0x7b994.

- `restart_pushers` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x408250 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x408250-0x4082d8 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0x40825c loads 4 bytes from abs 0x47be68.
  15 such `sw` accesses store 4 bytes to ?, including `sw` at 0x408270, `sw` at 0x408274, `sw` at 0x408284.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x40827c, `lw` at 0x4082a8, `lw` at 0x4082b0.
  The `bne` branch at 0x408280 targets 0x40826c, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x4082c8 targets 0x408288, is taken when a2(?) != a3(=sym(output_pusher)+1200), and falls through when a2(?) == a3(=sym(output_pusher)+1200).
  The return at 0x4082d0 has v0 = 0x7b924.

- `writeback_pushers` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x4082e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x4082e0-0x408378 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0x4082ec loads 4 bytes from abs 0x47be68.
  5 such `ld` accesses load 8 bytes from ?, including `ld` at 0x4082f8, `ld` at 0x408318, `ld` at 0x40832c.
  10 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4082fc, `lw` at 0x408304, `lw` at 0x40831c.
  5 such `sd` accesses store 8 bytes to ?, including `sd` at 0x408314, `sd` at 0x408328, `sd` at 0x40833c.
  The `bne` branch at 0x408310 targets 0x4082f8, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bne` branch at 0x408368 targets 0x408318, is taken when a2(?) != a3(=sym(output_pusher)+1200), and falls through when a2(?) == a3(=sym(output_pusher)+1200).
  The return at 0x408370 has v0 = ?.

- `decodesegment` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x408380 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x408380-0x408a78 (1784 bytes).
  It occupies 1784 bytes.
  The `lw` at 0x4083c8 loads 4 bytes from abs 0x47be64.
  5 such `lw` accesses load 4 bytes from abs 0x47be68, including `lw` at 0x4083d4, `lw` at 0x4085e0, `lw` at 0x408600.
  The `lw` at 0x4083dc loads 4 bytes from abs 0x47be58.
  The `lw` at 0x4083e4 loads 4 bytes from abs 0x47be2c.
  29 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4083f4, `sw` at 0x408418, `sw` at 0x40841c.
  30 such `sd` accesses store 8 bytes to ?, including `sd` at 0x40840c, `sd` at 0x408420, `sd` at 0x408434.
  21 such `lw` accesses load 4 bytes from ?, including `lw` at 0x408444, `lw` at 0x408448, `lw` at 0x408450.
  15 such `ld` accesses load 8 bytes from ?, including `ld` at 0x40844c, `ld` at 0x408458, `ld` at 0x408460.
  2 such `lw` accesses load 4 bytes from sym(relocation_table_p) +0x0, including `lw` at 0x408468, `lw` at 0x4084a0.
  2 such `lhu` accesses load 2 bytes from [sym(relocation_table_p)] +0x0, including `lhu` at 0x408474, `lhu` at 0x4084ac.
  The `sw` at 0x4084cc stores 4 bytes to sym(relocation_table_p) +0x0.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x408554, `lbu` at 0x4086fc, `lbu` at 0x4088b8.
  The `lw` at 0x4087e4 loads 4 bytes from sym(input_puller) +0x10.
  The `ld` at 0x4087ec loads 8 bytes from sym(input_puller) +0x8.
  The `ld` at 0x4087f8 loads 8 bytes from sym(input_puller) +0x0.
  The `beq` branch at 0x4083e8 targets 0x408444 and is always taken.
  The `beq` branch at 0x4083f0 targets 0x408418, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x40843c targets 0x4085d8, is taken when s1(?) == s5(=sym(input_puller)+720), and falls through when s1(?) != s5(=sym(input_puller)+720).
  The `bne` branch at 0x40845c targets 0x4084e4, is taken when s2(?) != s4(?), and falls through when s2(?) == s4(?).
  The `bne` branch at 0x408470 targets 0x408488, is taken when a3(?) < 0x11 (signed), and falls through when a3(?) >= 0x11 (signed).
  The `beq` branch at 0x408480 targets 0x4084b0 and is always taken.
  The `bne` branch at 0x4084d0 targets 0x4085b4, is taken when a3(?) < 0x5 (signed), and falls through when a3(?) >= 0x5 (signed).
  The `bne` branch at 0x4084fc targets 0x408514, is taken when a3(?) < 0xd (signed), and falls through when a3(?) >= 0xd (signed).
  The `beq` branch at 0x40850c targets 0x408534 and is always taken.
  The `beq` branch at 0x408534 targets 0x408550 and is always taken.
  The `beq` branch at 0x408548 targets 0x4085ac, is taken when s3(=0x6) == a7(?), and falls through when s3(=0x6) != a7(?).
  The `bne` branch at 0x408560 targets 0x4083f0, is taken when a2(?) < t0(?) (signed), and falls through when a2(?) >= t0(?) (signed).
  The `bne` branch at 0x408580 targets 0x40853c, is taken when t0(?) < a3(?) (signed), and falls through when t0(?) >= a3(?) (signed).
  The `beq` branch at 0x4085a4 targets 0x408548 and is always taken.
  The `beq` branch at 0x4085ac targets 0x408418 and is always taken.
  The `beq` branch at 0x4085d0 targets 0x4084e4 and is always taken.
  The `beq` branch at 0x4085ec targets 0x40864c and is always taken.
  The `beq` branch at 0x408618 targets 0x408678, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `bne` branch at 0x408624 targets 0x408614, is taken when t3(?) != t9(?), and falls through when t3(?) == t9(?).
  The `beq` branch at 0x408644 targets 0x4087e4, is taken when s2(?) == s7(=0x1e), and falls through when s2(?) != s7(=0x1e).
  The `beq` branch at 0x40865c targets 0x4085f4, is taken when s4(?) >= s2(?) (signed), and falls through when s4(?) < s2(?) (signed).
  The `beq` branch at 0x408670 targets 0x40862c and is always taken.
  The `beq` branch at 0x408688 targets 0x4086b0, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x4086b0 targets 0x4086f4 and is always taken.
  The `beq` branch at 0x4086d8 targets 0x408754, is taken when t0(?) >= a3(?) (signed), and falls through when t0(?) < a3(?) (signed).
  The `beq` branch at 0x4086ec targets 0x4087d0, is taken when s3(=0x6) == a7(?), and falls through when s3(=0x6) != a7(?).
  The `beq` branch at 0x408704 targets 0x4086b8, is taken when a2(?) >= t0(?) (signed), and falls through when a2(?) < t0(?) (signed).
  The `beq` branch at 0x40870c targets 0x408778, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x408720 targets 0x4087b4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x40874c targets 0x4086f4 and is always taken.
  The `beq` branch at 0x408770 targets 0x4086ec and is always taken.
  The `beq` branch at 0x408784 targets 0x408a70, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x4087ac targets 0x40862c and is always taken.
  The `beq` branch at 0x4087c8 targets 0x40874c and is always taken.
  The `beq` branch at 0x4087dc targets 0x408620 and is always taken.
  The `beq` branch at 0x4087fc targets 0x40882c and is always taken.
  The `beq` branch at 0x408824 targets 0x408944, is taken when t3(?) == t9(=sym(output_pusher)+1200), and falls through when t3(?) != t9(=sym(output_pusher)+1200).
  The `bne` branch at 0x408830 targets 0x408820, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x408844 targets 0x4088b0, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x40886c targets 0x4088b0 and is always taken.
  The `beq` branch at 0x408894 targets 0x408910, is taken when t0(?) >= a3(?) (signed), and falls through when t0(?) < a3(?) (signed).
  The `beq` branch at 0x4088a8 targets 0x408804, is taken when s3(=0x6) == a7(?), and falls through when s3(=0x6) != a7(?).
  The `beq` branch at 0x4088c0 targets 0x408874, is taken when a2(?) >= t0(?) (signed), and falls through when a2(?) < t0(?) (signed).
  The `beq` branch at 0x4088c8 targets 0x408934, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x4088dc targets 0x408a38, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x408908 targets 0x4088b0 and is always taken.
  The `beq` branch at 0x40892c targets 0x4088a8 and is always taken.
  The `beq` branch at 0x408958 targets 0x4089a8 and is always taken.
  The `beq` branch at 0x408984 targets 0x4089dc, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x4089a0 targets 0x408a54, is taken when t3(?) == t9(=sym(output_pusher)+1200), and falls through when t3(?) != t9(=sym(output_pusher)+1200).
  The `bne` branch at 0x4089b8 targets 0x408960, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x4089c4 targets 0x4089f8, is taken when a3(?) < 0x5 (signed), and falls through when a3(?) >= 0x5 (signed).
  The `beq` branch at 0x4089d4 targets 0x408964 and is always taken.
  The `bne` branch at 0x4089e0 targets 0x408a18, is taken when a3(?) < 0x5 (signed), and falls through when a3(?) >= 0x5 (signed).
  The `beq` branch at 0x4089f0 targets 0x408990 and is always taken.
  The `beq` branch at 0x408a10 targets 0x408964 and is always taken.
  The `beq` branch at 0x408a30 targets 0x408990 and is always taken.
  The `beq` branch at 0x408a4c targets 0x408908 and is always taken.
  The `beq` branch at 0x408a70 targets 0x40862c and is always taken.
  The return at 0x408a68 has v0 = ?.

- `qparsemain` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x408a80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x408a80-0x408cdc (604 bytes).
  It occupies 604 bytes.
  The `sw` at 0x408ad0 stores 4 bytes to sym(relocation_table_p) +0x0.
  The `sw` at 0x408ad8 stores 4 bytes to sym(output_packer) +0x10.
  The `sd` at 0x408ae0 stores 8 bytes to sym(output_packer) +0x8.
  The `sw` at 0x408ae4 stores 4 bytes to sym(output_packer) +0x0.
  4 such `sw` accesses store 4 bytes to sym(segment) +0x0, including `sw` at 0x408aec, `sw` at 0x408b98, `sw` at 0x408be8.
  3 such `lw` accesses load 4 bytes from sym(segment) +0x0, including `lw` at 0x408b8c, `lw` at 0x408bdc, `lw` at 0x408c2c.
  The `ld` at 0x408c88 loads 8 bytes from sym(output_packer) +0x8.
  The `lw` at 0x408c8c loads 4 bytes from sym(output_packer) +0x0.
  The `sd` at 0x408cb8 stores 8 bytes to [sym(output_packer)] +0x0.
  The `sd` at 0x408ccc stores 8 bytes to a3 (arg3 at entry) +0x0.
  The `jalr` at 0x408ab8 calls init_pushers with a0=sym(blockbufarray), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x408b44 calls restart_pushers with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x408b50 calls init_pullers with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x408b5c calls decodesegment with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x408b78 calls pack_to_output with a0=sym(output_packer), a1=?, a2=?, a3=?.
  The `jalr` at 0x408b94 calls restart_pushers with a0=?, a1=?, a2=?, a3=?, a5=[sym(segment)]+1.
  The `jalr` at 0x408ba0 calls init_pullers with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x408bac calls decodesegment with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x408bc4 calls pack_to_output with a0=sym(output_packer), a1=?, a2=?, a3=?.
  The `jalr` at 0x408be4 calls restart_pushers with a0=?, a1=?, a2=?, a3=?, a6=[sym(segment)]+1.
  The `jalr` at 0x408bf0 calls init_pullers with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x408bfc calls decodesegment with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x408c14 calls pack_to_output with a0=sym(output_packer), a1=?, a2=?, a3=?.
  The `blez` branch at 0x408ae8 targets 0x408cbc, is taken when v0(=a1) <= 0 (signed), and falls through when v0(=a1) > 0 (signed).
  The `bne` branch at 0x408b84 targets 0x408b70, is taken when s0(?) != s1(=sym(output_pusher)+1200), and falls through when s0(?) == s1(=sym(output_pusher)+1200).
  The `bne` branch at 0x408bd0 targets 0x408bc0, is taken when s0(?) != s1(=sym(output_pusher)+1200), and falls through when s0(?) == s1(=sym(output_pusher)+1200).
  The `bne` branch at 0x408c20 targets 0x408c10, is taken when s0(?) != s1(=sym(output_pusher)+1200), and falls through when s0(?) == s1(=sym(output_pusher)+1200).
  The `bne` branch at 0x408c3c targets 0x408b40, is taken when s4(?) != s8(?), and falls through when s4(?) == s8(?).
  The `bne` branch at 0x408c74 targets 0x408b30, is taken when a1 != a2(?), and falls through when a1 == a2(?).
  The return at 0x408cb4 has v0 = ret(pack_to_output).
  The return at 0x408cd4 has v0 = a1.

- `uncached_malloc` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x408ce0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x408ce0-0x408d68 (136 bytes).
  It occupies 136 bytes.
  The `jalr` at 0x408d0c calls malloc with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x408d18 calls aligntopage with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x408d30 calls cachectl with a0=ret(aligntopage), a1=?, a2=0x1, a3=?.
  The `jalr` at 0x408d48 calls perror with a0=0x410748, a1=?, a2=?, a3=?.
  The `beq` branch at 0x408d38 targets 0x408d54, is taken when v0(=ret(cachectl)) == 0, and falls through when v0(=ret(cachectl)) != 0.
  The return at 0x408d60 has v0 = ret(aligntopage).

- `aligntopage` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x408d70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x408d70-0x408d80 (16 bytes).
  It occupies 16 bytes.
  The return at 0x408d78 has v0 = ?.

- `scale_alloc` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x408d80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x408d80-0x408e84 (260 bytes).
  It occupies 260 bytes.
  The `jalr` at 0x408dd4 calls _GETBITS with a0=a0 at entry (arg0), a1=sym(cvLength), a2=(sym(qscales) + (((a3 + (a2 << 0x4)) + (a1 << 0x5)) << 0x6)), a3=sym(zz4x8Tabt), a4=(((a3 + (a2 << 0x4)) + (a1 << 0x5)) << 0x6), a5=(a1 << 0x5), a6=a1 at entry (arg1), a7=a2 at entry (arg2).
  The `jalr` at 0x408e20 calls _GETBITS with a0=a0 at entry (arg0), a1=sym(cvLength), a2=(sym(qscales) + (((a3 + (a2 << 0x4)) + (a1 << 0x5)) << 0x6)), a3=sym(zz8x8Tabt), a4=(((a3 + (a2 << 0x4)) + (a1 << 0x5)) << 0x6), a5=(a1 << 0x5), a6=a1 at entry (arg1), a7=a2 at entry (arg2).
  The `jalr` at 0x408e48 calls _GETBITSUR4x8 with a0=a0 at entry (arg0), a1=sym(cvLength), a2=?, a3=a3 at entry (arg3), a5=a3 at entry (arg3), a6=a1 at entry (arg1), a7=a2 at entry (arg2).
  The `jalr` at 0x408e70 calls _GETBITSUR8x8 with a0=a0 at entry (arg0), a1=sym(cvLength), a2=?, a3=a3 at entry (arg3), a5=a3 at entry (arg3), a6=a1 at entry (arg1), a7=a2 at entry (arg2).
  The `beq` branch at 0x408da0 targets 0x408df4, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x408da8 targets 0x408e3c, is taken when a3 == t0(=0xf), and falls through when a3 != t0(=0xf).
  The `beq` branch at 0x408df4 targets 0x408e64, is taken when a3 == t0(=0xf), and falls through when a3 != t0(=0xf).
  The `beq` branch at 0x408e7c targets 0x408de4 and is always taken.
  The return at 0x408dec has v0 = one of ret(_GETBITS)+4, ret(_GETBITSUR8x8)+4.
  The return at 0x408e34 has v0 = ret(_GETBITS)+4.
  The return at 0x408e5c has v0 = ret(_GETBITSUR4x8)+4.

- `scale_vlcBlockPackedFast` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x408e90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x408e90-0x408f88 (248 bytes).
  It occupies 248 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lw` at 0x408ee4, `lw` at 0x408f84.
  The `lw` at 0x408ee8 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x408eec loads 4 bytes from a1 (arg1 at entry) +0x8c.
  The `sw` at 0x408f0c stores 4 bytes to a1 (arg1 at entry) +0x88.
  3 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x90, including `sw` at 0x408f20, `sw` at 0x408f38, `sw` at 0x408f5c.
  3 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x94, including `sw` at 0x408f24, `sw` at 0x408f3c, `sw` at 0x408f54.
  The `sw` at 0x408f4c stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0x408f50 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `jalr` at 0x408edc calls _APPENDBITSUR4x8 with a0=a0 at entry (arg0), a1=sym(dvBitsTable16), a2=(sym(qscales) + (((a2 << 0x5) + (a4 + (a3 << 0x4))) << 0x6)), a3=a1 at entry (arg1), a6=(sym(qscales) + (((a2 << 0x5) + (a4 + (a3 << 0x4))) << 0x6)), a7=(((a2 << 0x5) + (a4 + (a3 << 0x4))) << 0x6).
  The `jalr` at 0x408f78 calls _APPENDBITSUR8x8 with a0=a0 at entry (arg0), a1=sym(dvBitsTable16), a2=(sym(qscales) + (((a2 << 0x5) + (a4 + (a3 << 0x4))) << 0x6)), a3=a1 at entry (arg1), a6=(sym(qscales) + (((a2 << 0x5) + (a4 + (a3 << 0x4))) << 0x6)), a7=(((a2 << 0x5) + (a4 + (a3 << 0x4))) << 0x6).
  The `beq` branch at 0x408ec8 targets 0x408f6c, is taken when a3 == 0, and falls through when a3 != 0.
  The `bne` branch at 0x408f10 targets 0x408f4c, is taken when a0(=[a1+140]) < a1(=([a1] + ([a1+4] << 0x6))) (signed), and falls through when a0(=[a1+140]) >= a1(=([a1] + ([a1+4] << 0x6))) (signed).
  The `beq` branch at 0x408f18 targets 0x408f34, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x408f80 targets 0x408ee8 and is always taken.
  The return at 0x408f2c has v0 = ?.
  The return at 0x408f44 has v0 = ?.
  The return at 0x408f64 has v0 = ?.

- `qnoCtrl` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x408f90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x408f90-0x4092fc (876 bytes).
  It occupies 876 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x408fa0, `lw` at 0x4090c8, `lw` at 0x4091fc.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0x408fb0, `lw` at 0x4090d8, `lw` at 0x4091f0.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lw` at 0x408fc0, `lw` at 0x4090cc, `lw` at 0x4091e4.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lw` at 0x408ff4, `lw` at 0x409104, `lw` at 0x409204.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0x408ffc, `lw` at 0x40910c, `lw` at 0x409210.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x409004, `lw` at 0x409100, `lw` at 0x40921c.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lw` at 0x409018, `lw` at 0x409130, `lw` at 0x409224.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0x409020, `lw` at 0x409138, `lw` at 0x409230.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x409024, `lw` at 0x40912c, `lw` at 0x40923c.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0xc, including `lw` at 0x409034, `lw` at 0x40915c, `lw` at 0x409244.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lw` at 0x40903c, `lw` at 0x409164, `lw` at 0x409250.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x409040, `lw` at 0x409158, `lw` at 0x40925c.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x10, including `lw` at 0x409050, `lw` at 0x409188, `lw` at 0x409264.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lw` at 0x409058, `lw` at 0x409190, `lw` at 0x409270.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lw` at 0x40905c, `lw` at 0x409184, `lw` at 0x40927c.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x14, including `lw` at 0x40906c, `lw` at 0x4091b4, `lw` at 0x409284.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x14, including `lw` at 0x409074, `lw` at 0x4091bc, `lw` at 0x409290.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x409078, `lw` at 0x4091b0, `lw` at 0x40929c.
  The `lh` at 0x4090d0 loads 2 bytes from [a0] +0x0.
  The `sw` at 0x4090fc stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lh` at 0x409108 loads 2 bytes from [a0+4] +0x0.
  The `sw` at 0x409128 stores 4 bytes to a1 (arg1 at entry) +0xa0.
  The `lh` at 0x409134 loads 2 bytes from [a0+8] +0x0.
  The `sw` at 0x409154 stores 4 bytes to a1 (arg1 at entry) +0x138.
  The `lh` at 0x409160 loads 2 bytes from [a0+12] +0x0.
  The `sw` at 0x409180 stores 4 bytes to a1 (arg1 at entry) +0x1d0.
  The `lh` at 0x40918c loads 2 bytes from [a0+20] +0x0.
  The `sw` at 0x4091ac stores 4 bytes to a1 (arg1 at entry) +0x268.
  The `lh` at 0x4091b8 loads 2 bytes from [a0+16] +0x0.
  The `sw` at 0x4091e0 stores 4 bytes to a1 (arg1 at entry) +0x300.
  The `lw` at 0x4092b0 loads 4 bytes from a1 (arg1 at entry) +0x250.
  The `lw` at 0x4092b4 loads 4 bytes from a1 (arg1 at entry) +0x1b8.
  The `lw` at 0x4092b8 loads 4 bytes from a1 (arg1 at entry) +0x120.
  The `lw` at 0x4092bc loads 4 bytes from a1 (arg1 at entry) +0x88.
  The `lw` at 0x4092c0 loads 4 bytes from a1 (arg1 at entry) +0x380.
  The `lw` at 0x4092c4 loads 4 bytes from a1 (arg1 at entry) +0x2e8.
  The `sw` at 0x4092c8 stores 4 bytes to a4 (arg4 at entry) +0x0.
  The `jalr` at 0x408fec calls scale_alloc with a0=[a0], a1=[a2], a2=[a3], a3=0xf.
  The `jalr` at 0x40900c calls scale_alloc with a0=[a0+4], a1=[a2+4], a2=[a3+4], a3=0xf.
  The `jalr` at 0x409028 calls scale_alloc with a0=[a0+8], a1=[a2+8], a2=[a3+8], a3=0xf.
  The `jalr` at 0x409044 calls scale_alloc with a0=[a0+12], a1=[a2+12], a2=[a3+12], a3=0xf.
  The `jalr` at 0x409060 calls scale_alloc with a0=[a0+20], a1=[a2+16], a2=[a3+16], a3=0xf.
  The `jalr` at 0x40907c calls scale_alloc with a0=[a0+16], a1=[a2+20], a2=[a3+20], a3=0xf.
  The `jalr` at 0x4091f8 calls scale_vlcBlockPackedFast with a0=[a0], a1=a1 at entry (arg1), a2=[a2], a3=[a3], a5=0x0, a6=(([a3+12] << 0x16) | ([[a0+12]]:2-256 << 0x17)), a7=([[a0+12]]:2-256 << 0x17).
  The `jalr` at 0x409218 calls scale_vlcBlockPackedFast with a0=[a0+4], a1=a1+152, a2=[a2+4], a3=[a3+4], a5=0x0.
  The `jalr` at 0x409238 calls scale_vlcBlockPackedFast with a0=[a0+8], a1=a1+304, a2=[a2+8], a3=[a3+8], a5=0x0.
  The `jalr` at 0x409258 calls scale_vlcBlockPackedFast with a0=[a0+12], a1=a1+456, a2=[a2+12], a3=[a3+12], a5=0x0.
  The `jalr` at 0x409278 calls scale_vlcBlockPackedFast with a0=[a0+20], a1=a1+608, a2=[a2+16], a3=[a3+16], a5=0x0.
  The `jalr` at 0x409298 calls scale_vlcBlockPackedFast with a0=[a0+16], a1=a1+760, a2=[a2+20], a3=[a3+20], a5=0x0.
  The `blez` branch at 0x40909c targets 0x4090c8, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed).
  The `bgez` branch at 0x4090bc targets 0x4090c8, is taken when s4(?) >= 0 (signed), and falls through when s4(?) < 0 (signed).
  The return at 0x4092f4 has v0 = ([a1+592] + (([a1+136] + ([a1+744] + [a1+896])) + ([a1+288] + [a1+440])))-80.

- `qnoMultiPassFast` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x409300 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x409300-0x4098c8 (1480 bytes).
  It occupies 1480 bytes.
  4 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lw` at 0x409378, `lw` at 0x40944c, `lw` at 0x40957c.
  4 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0x40937c, `lw` at 0x409440, `lw` at 0x409584.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x409388, `lw` at 0x409448, `lw` at 0x409590.
  5 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lw` at 0x409390, `lw` at 0x4094a0, `lw` at 0x409598.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0x409398, `lw` at 0x4094a8, `lw` at 0x4095a4.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x4093a4, `lw` at 0x40949c, `lw` at 0x4095b0.
  5 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lw` at 0x4093ac, `lw` at 0x4094cc, `lw` at 0x4095b8.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0x4093b4, `lw` at 0x4094d4, `lw` at 0x4095c4.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x4093b8, `lw` at 0x4094c8, `lw` at 0x4095d0.
  5 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0xc, including `lw` at 0x4093c8, `lw` at 0x4094f8, `lw` at 0x4095d8.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lw` at 0x4093d4, `lw` at 0x409500, `lw` at 0x4095e4.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x4093d8, `lw` at 0x4094f4, `lw` at 0x4095f0.
  5 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x10, including `lw` at 0x4093e8, `lw` at 0x409524, `lw` at 0x4095f8.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lw` at 0x4093f0, `lw` at 0x40952c, `lw` at 0x409600.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lw` at 0x4093f4, `lw` at 0x409520, `lw` at 0x409614.
  5 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x14, including `lw` at 0x409404, `lw` at 0x409550, `lw` at 0x40961c.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x14, including `lw` at 0x40940c, `lw` at 0x409558, `lw` at 0x409628.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x409410, `lw` at 0x40954c, `lw` at 0x409634.
  The `lh` at 0x409460 loads 2 bytes from [a0] +0x0.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x8, including `sw` at 0x409498, `sw` at 0x4096bc.
  2 such `lh` accesses load 2 bytes from [a0+4] +0x0, including `lh` at 0x4094a4, `lh` at 0x4096c8.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0xa0, including `sw` at 0x4094c4, `sw` at 0x4096e8.
  2 such `lh` accesses load 2 bytes from [a0+8] +0x0, including `lh` at 0x4094d0, `lh` at 0x4096f4.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x138, including `sw` at 0x4094f0, `sw` at 0x409714.
  2 such `lh` accesses load 2 bytes from [a0+12] +0x0, including `lh` at 0x4094fc, `lh` at 0x409720.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x1d0, including `sw` at 0x40951c, `sw` at 0x409740.
  2 such `lh` accesses load 2 bytes from [a0+20] +0x0, including `lh` at 0x409528, `lh` at 0x40974c.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x268, including `sw` at 0x409548, `sw` at 0x40976c.
  2 such `lh` accesses load 2 bytes from [a0+16] +0x0, including `lh` at 0x409554, `lh` at 0x409778.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x300, including `sw` at 0x409578, `sw` at 0x40979c.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x88, including `lw` at 0x409654, `lw` at 0x409878.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x120, including `lw` at 0x409658, `lw` at 0x40987c.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x380, including `lw` at 0x40965c, `lw` at 0x409880.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x2e8, including `lw` at 0x409660, `lw` at 0x409884.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x1b8, including `lw` at 0x409664, `lw` at 0x409888.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x250, including `lw` at 0x409670, `lw` at 0x409894.
  2 such `sw` accesses store 4 bytes to a4 (arg4 at entry) +0x0, including `sw` at 0x409694, `sw` at 0x4098b8.
  The `jalr` at 0x409384 calls scale_alloc with a0=[a0], a1=[a2], a2=[a3], a3=?.
  The `jalr` at 0x4093a0 calls scale_alloc with a0=[a0+4], a1=[a2+4], a2=[a3+4], a3=?.
  The `jalr` at 0x4093bc calls scale_alloc with a0=[a0+8], a1=[a2+8], a2=[a3+8], a3=?.
  The `jalr` at 0x4093dc calls scale_alloc with a0=[a0+12], a1=[a2+12], a2=[a3+12], a3=?.
  The `jalr` at 0x4093f8 calls scale_alloc with a0=[a0+20], a1=[a2+16], a2=[a3+16], a3=?.
  The `jalr` at 0x409414 calls scale_alloc with a0=[a0+16], a1=[a2+20], a2=[a3+20], a3=?.
  The `jalr` at 0x40958c calls scale_vlcBlockPackedFast with a0=[a0], a1=a1 at entry (arg1), a2=[a2], a3=[a3], a5=0x0, a6=([[a0+8]]:2-256 << 0x17), a7=(([a2+4] << 0x14) | (([a3+4] << 0x16) | ([[a0+4]]:2-256 << 0x17))).
  The `jalr` at 0x4095ac calls scale_vlcBlockPackedFast with a0=[a0+4], a1=a1+152, a2=[a2+4], a3=[a3+4], a5=0x0.
  The `jalr` at 0x4095cc calls scale_vlcBlockPackedFast with a0=[a0+8], a1=a1+304, a2=[a2+8], a3=[a3+8], a5=0x0.
  The `jalr` at 0x4095ec calls scale_vlcBlockPackedFast with a0=[a0+12], a1=a1+456, a2=[a2+12], a3=[a3+12], a5=0x0.
  The `jalr` at 0x409610 calls scale_vlcBlockPackedFast with a0=[a0+20], a1=a1+608, a2=[a2+16], a3=[a3+16], a5=0x0.
  The `jalr` at 0x409630 calls scale_vlcBlockPackedFast with a0=[a0+16], a1=a1+760, a2=[a2+20], a3=[a3+20], a5=0x0.
  The `jalr` at 0x4097b0 calls scale_vlcBlockPackedFast with a0=[a0], a1=a1 at entry (arg1), a2=[a2], a3=[a3], a5=0x0, a6=([[a0+16]]:2-256 << 0x17), a7=(([a2+16] << 0x14) | (([a3+16] << 0x16) | ([[a0+20]]:2-256 << 0x17))).
  The `jalr` at 0x4097d0 calls scale_vlcBlockPackedFast with a0=[a0+4], a1=a1+152, a2=[a2+4], a3=[a3+4], a5=0x0.
  The `jalr` at 0x4097f0 calls scale_vlcBlockPackedFast with a0=[a0+8], a1=a1+304, a2=[a2+8], a3=[a3+8], a5=0x0.
  The `jalr` at 0x409810 calls scale_vlcBlockPackedFast with a0=[a0+12], a1=a1+456, a2=[a2+12], a3=[a3+12], a5=0x0.
  The `jalr` at 0x409834 calls scale_vlcBlockPackedFast with a0=[a0+20], a1=a1+608, a2=[a2+16], a3=[a3+16], a5=0x0.
  The `jalr` at 0x409854 calls scale_vlcBlockPackedFast with a0=[a0+16], a1=a1+760, a2=[a2+20], a3=[a3+20], a5=0x0.
  The `beq` branch at 0x409360 targets 0x409374 and is always taken.
  The `beq` branch at 0x40936c targets 0x40943c, is taken when s7(?) == s8(=0x4), and falls through when s7(?) != s8(=0x4).
  The `bne` branch at 0x409428 targets 0x409368, is taken when v0(=a5) < v1(=(ret(scale_alloc) + (ret(scale_alloc) + (ret(scale_alloc) + (ret(scale_alloc) + (ret(scale_alloc) + ret(scale_alloc))))))) (signed), and falls through when v0(=a5) >= v1(=(ret(scale_alloc) + (ret(scale_alloc) + (ret(scale_alloc) + (ret(scale_alloc) + (ret(scale_alloc) + ret(scale_alloc))))))) (signed).
  The `beq` branch at 0x409434 targets 0x40936c and is always taken.
  The `beq` branch at 0x40947c targets 0x4096a4, is taken when s6(?) == t2(=-0x1), and falls through when s6(?) != t2(=-0x1).
  The return at 0x40969c has v0 = ([a1+592] + (([a1+136] + ([a1+744] + [a1+896])) + ([a1+288] + [a1+440])))-80.
  The return at 0x4098c0 has v0 = ([a1+592] + (([a1+136] + ([a1+744] + [a1+896])) + ([a1+288] + [a1+440])))-80.

- `mbGetBits` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x4098d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x4098d0-0x409958 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0x4098e8 loads 4 bytes from sym(qno4passMode) +0x0.
  The `jalr` at 0x40990c calls qnoMultiPassFast with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x409934 calls qnoCtrl with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=a6+536.
  The `beq` branch at 0x4098f4 targets 0x409930, is taken when at(=[sym(qno4passMode)]) == 0, and falls through when at(=[sym(qno4passMode)]) != 0.
  The `bgtz` branch at 0x4098fc targets 0x40990c, is taken when t0(=a6+536) > 0 (signed), and falls through when t0(=a6+536) <= 0 (signed).
  The return at 0x409928 has v0 = ?.
  The return at 0x409950 has v0 = ?.

- `segGetBits` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x409960 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x409960-0x409db4 (1108 bytes).
  It occupies 1108 bytes.
  7 such `lw` accesses load 4 bytes from sym(rollMode) +0x0, including `lw` at 0x40999c, `lw` at 0x409ae8, `lw` at 0x409b5c.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4099c4, `sw` at 0x4099d8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30c, including `lw` at 0x4099dc, `lw` at 0x409db0.
  The `lw` at 0x409a00 loads 4 bytes from a0 (arg0 at entry) +0x310.
  The `lw` at 0x409a24 loads 4 bytes from a0 (arg0 at entry) +0x314.
  The `lw` at 0x409a48 loads 4 bytes from a0 (arg0 at entry) +0x318.
  The `lw` at 0x409a6c loads 4 bytes from a0 (arg0 at entry) +0x31c.
  The `lw` at 0x409cb0 loads 4 bytes from a0 (arg0 at entry) +0x178.
  The `lw` at 0x409cb4 loads 4 bytes from a0 (arg0 at entry) +0x16c.
  The `lw` at 0x409cb8 loads 4 bytes from a0 (arg0 at entry) +0x168.
  The `lw` at 0x409cbc loads 4 bytes from a0 (arg0 at entry) +0x174.
  The `lw` at 0x409cc4 loads 4 bytes from a0 (arg0 at entry) +0x170.
  The `lw` at 0x409ccc loads 4 bytes from sym(globalQNO) +0x0.
  The `sw` at 0x409ce8 stores 4 bytes to sym(globalQNO) +0x0.
  The `jalr` at 0x409990 calls initUnpacked with a0=a0+800, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x409ae0 calls mbGetBits with a0=?, a1=?, a2=?, a3=?, a6=0x0.
  The `jalr` at 0x409b54 calls mbGetBits with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x409bc0 calls mbGetBits with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x409c2c calls mbGetBits with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x409c98 calls mbGetBits with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x409ce4 calls packSegmentInplace with a0=a0+800, a1=?, a2=?, a3=[sym(rollMode)], a4=(([sym(globalQNO)] + [a0+376]) + (([a0+360] + [a0+364]) + ([a0+368] + [a0+372]))), a5=sym(globalQNO), a6=(([a0+360] + [a0+364]) + ([a0+368] + [a0+372])), a7=([a0+368] + [a0+372]).
  The `beq` branch at 0x4099b0 targets 0x409d80, is taken when v0(=[sym(rollMode)]) == 0, and falls through when v0(=[sym(rollMode)]) != 0.
  The `beq` branch at 0x4099b8 targets 0x409da8 and is always taken.
  The `beq` branch at 0x4099d4 targets 0x409a84, is taken when a7(?) == t0(=sp-76), and falls through when a7(?) != t0(=sp-76).
  The `bne` branch at 0x4099e8 targets 0x4099f8, is taken when a3(=0xfe) < a4(=[a0+780]) (signed), and falls through when a3(=0xfe) >= a4(=[a0+780]) (signed).
  The `beq` branch at 0x4099f8 targets 0x4099c4 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x409a08 targets 0x409a18, is taken when a3(?) < a4(=[a0+784]) (signed), and falls through when a3(?) >= a4(=[a0+784]) (signed).
  The `beq` branch at 0x409a1c targets 0x4099c4 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x409a2c targets 0x409a3c, is taken when a3(?) < a4(=[a0+788]) (signed), and falls through when a3(?) >= a4(=[a0+788]) (signed).
  The `beq` branch at 0x409a40 targets 0x4099c4 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x409a50 targets 0x409a60, is taken when a3(?) < a4(=[a0+792]) (signed), and falls through when a3(?) >= a4(=[a0+792]) (signed).
  The `beq` branch at 0x409a64 targets 0x4099c4 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x409a74 targets 0x4099c0, is taken when a3(?) < a4(=[a0+796]) (signed), and falls through when a3(?) >= a4(=[a0+796]) (signed).
  The `beq` branch at 0x409a7c targets 0x4099c0 and is always taken.
  The `beq` branch at 0x409af4 targets 0x409d74, is taken when a3(=[sym(rollMode)]) == 0, and falls through when a3(=[sym(rollMode)]) != 0.
  The `beq` branch at 0x409b64 targets 0x409d1c, is taken when a3(=[sym(rollMode)]) == 0, and falls through when a3(=[sym(rollMode)]) != 0.
  The `beq` branch at 0x409bd0 targets 0x409d28, is taken when a3(=[sym(rollMode)]) == 0, and falls through when a3(=[sym(rollMode)]) != 0.
  The `beq` branch at 0x409c3c targets 0x409d34, is taken when a3(=[sym(rollMode)]) == 0, and falls through when a3(=[sym(rollMode)]) != 0.
  The `beq` branch at 0x409ca4 targets 0x409d40, is taken when a3(=[sym(rollMode)]) == 0, and falls through when a3(=[sym(rollMode)]) != 0.
  The `beq` branch at 0x409cfc targets 0x409d4c, is taken when t3(=[sym(rollMode)]) == 0, and falls through when t3(=[sym(rollMode)]) != 0.
  The `beq` branch at 0x409d20 targets 0x409b6c and is always taken.
  The `beq` branch at 0x409d2c targets 0x409bd8 and is always taken.
  The `beq` branch at 0x409d38 targets 0x409c44 and is always taken.
  The `beq` branch at 0x409d44 targets 0x409cac and is always taken.
  The `beq` branch at 0x409d78 targets 0x409b00 and is always taken.
  The `beq` branch at 0x409da0 targets 0x409a88 and is always taken.
  The `beq` branch at 0x409dac targets 0x4099e0 and is always taken.
  The return at 0x409d14 has v0 = ?.
  The return at 0x409d6c has v0 = ?.

- `initBitBuffer` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x409dc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x409dc0-0x409e24 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0x409dc0 stores 4 bytes to a0 (arg0 at entry) +0x94.
  The `sw` at 0x409dc4 stores 4 bytes to a0 (arg0 at entry) +0x90.
  The `sw` at 0x409dc8 stores 4 bytes to a0 (arg0 at entry) +0x88.
  The `sw` at 0x409dcc stores 4 bytes to a0 (arg0 at entry) +0x8c.
  The `sw` at 0x409dd0 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `sw` at 0x409dd8 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `sd` at 0x409ddc stores 8 bytes to a0 (arg0 at entry) +0x80.
  The `sd` at 0x409de0 stores 8 bytes to a0 (arg0 at entry) +0x78.
  The `sd` at 0x409de4 stores 8 bytes to a0 (arg0 at entry) +0x70.
  The `sd` at 0x409de8 stores 8 bytes to a0 (arg0 at entry) +0x68.
  The `sd` at 0x409dec stores 8 bytes to a0 (arg0 at entry) +0x60.
  The `sd` at 0x409df0 stores 8 bytes to a0 (arg0 at entry) +0x58.
  The `sd` at 0x409df4 stores 8 bytes to a0 (arg0 at entry) +0x50.
  The `sd` at 0x409df8 stores 8 bytes to a0 (arg0 at entry) +0x48.
  The `sd` at 0x409dfc stores 8 bytes to a0 (arg0 at entry) +0x40.
  The `sd` at 0x409e00 stores 8 bytes to a0 (arg0 at entry) +0x38.
  The `sd` at 0x409e04 stores 8 bytes to a0 (arg0 at entry) +0x30.
  The `sd` at 0x409e08 stores 8 bytes to a0 (arg0 at entry) +0x28.
  The `sd` at 0x409e0c stores 8 bytes to a0 (arg0 at entry) +0x20.
  The `sd` at 0x409e10 stores 8 bytes to a0 (arg0 at entry) +0x18.
  The `sd` at 0x409e14 stores 8 bytes to a0 (arg0 at entry) +0x10.
  The `sd` at 0x409e18 stores 8 bytes to a0 (arg0 at entry) +0x8.
  The return at 0x409e1c has v0 = ?.

- `initUnpacked` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x409e30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x409e30-0x409f64 (308 bytes).
  It occupies 308 bytes.
  The `sw` at 0x409e98 stores 4 bytes to ?.
  The `jalr` at 0x409e94 calls initBitBuffer with a0=?, a1=0x0, a2=0x78, a3=0x14.
  The `jalr` at 0x409eb0 calls initBitBuffer with a0=?, a1=0x0, a2=0x70, a3=0xc.
  The `jalr` at 0x409ed0 calls initBitBuffer with a0=?, a1=0x0, a2=0x70, a3=0xc.
  The `jalr` at 0x409ef0 calls initBitBuffer with a0=?, a1=0x0, a2=0x70, a3=0xc.
  The `jalr` at 0x409f08 calls initBitBuffer with a0=?, a1=0x0, a2=0x50, a3=0xc.
  The `jalr` at 0x409f20 calls initBitBuffer with a0=?, a1=0x0, a2=0x50, a3=0xc.
  The `beq` branch at 0x409ebc targets 0x409ef8, is taken when s0(?) == s1(?), and falls through when s0(?) != s1(?).
  The `beq` branch at 0x409edc targets 0x409ef8, is taken when s0(?) == s1(?), and falls through when s0(?) != s1(?).
  The `bne` branch at 0x409f34 targets 0x409e80, is taken when s2(?) != s5(=a0+4752), and falls through when s2(?) == s5(=a0+4752).
  The return at 0x409f5c has v0 = ret(initBitBuffer).

- `distributeBits64` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x409f70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x409f70-0x40a104 (404 bytes).
  It occupies 404 bytes.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8c, including `lw` at 0x409f70, `lw` at 0x40a048, `lw` at 0x40a090.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x88, including `lw` at 0x409f74, `lw` at 0x40a08c, `lw` at 0x40a0c4.
  The `lw` at 0x409f78 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x409f7c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x409f80 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0x409f84 loads 4 bytes from a0 (arg0 at entry) +0x4.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x88, including `lw` at 0x409f8c, `lw` at 0x40a03c, `lw` at 0x40a064.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8c, including `lw` at 0x409f90, `lw` at 0x40a058.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0x409fcc, `ld` at 0x409fd4, `ld` at 0x409fdc.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x40a030, `sd` at 0x40a038.
  The `sw` at 0x40a044 stores 4 bytes to a0 (arg0 at entry) +0x88.
  The `sw` at 0x40a050 stores 4 bytes to a1 (arg1 at entry) +0x8c.
  The `sw` at 0x40a088 stores 4 bytes to a0 (arg0 at entry) +0x90.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0x40a094, `sw` at 0x40a0e4.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x4, including `sw` at 0x40a098, `sw` at 0x40a0b4.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x94, including `sw` at 0x40a0a4, `sw` at 0x40a0dc.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `sw` at 0x40a0a8, `sw` at 0x40a0b8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `sw` at 0x40a0b0, `sw` at 0x40a0c0.
  The `beq` branch at 0x409fa0 targets 0x409fac, is taken when t2(?) >= t1(?) (signed), and falls through when t2(?) < t1(?) (signed).
  The `bne` branch at 0x409fb8 targets 0x409fc4, is taken when t1(?) < 0x41 (signed), and falls through when t1(?) >= 0x41 (signed).
  The `bltz` branch at 0x409fe4 targets 0x40a0e8, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `blez` branch at 0x409fec targets 0x40a000, is taken when t8(?) <= 0 (signed), and falls through when t8(?) > 0 (signed).
  The `beq` branch at 0x40a000 targets 0x40a030, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x40a084 targets 0x40a0c4, is taken when t8(=[a0+136]) < v1(=[a0+140]) (signed), and falls through when t8(=[a0+136]) >= v1(=[a0+140]) (signed).
  The `bne` branch at 0x40a0d8 targets 0x409f8c, is taken when a5(=[a1+140]) < a4(=[a1+136]) (signed), and falls through when a5(=[a1+140]) >= a4(=[a1+136]) (signed).
  The `beq` branch at 0x40a0e0 targets 0x40a0b4 and is always taken.
  The `beq` branch at 0x40a0fc targets 0x40a000 and is always taken.
  The return at 0x40a0ac has v0 = ?.
  The return at 0x40a0bc has v0 = ?.

- `packSegmentInplace` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x40a110 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x40a110-0x40a3f0 (736 bytes).
  It occupies 736 bytes.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0x40a168, `sw` at 0x40a20c, `sw` at 0x40a278.
  33 such `lw` accesses load 4 bytes from ?, including `lw` at 0x40a188, `lw` at 0x40a194, `lw` at 0x40a1b8.
  The `jalr` at 0x40a258 calls distributeBits64 with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40a308 calls distributeBits64 with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x40a154 targets 0x40a16c and is always taken.
  The `beq` branch at 0x40a164 targets 0x40a268, is taken when s2(?) == s7(=a0+4600), and falls through when s2(?) != s7(=a0+4600).
  The `bne` branch at 0x40a18c targets 0x40a1ac, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x40a198 targets 0x40a254, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x40a1a4 targets 0x40a188, is taken when s1(?) != s5(=0x6), and falls through when s1(?) == s5(=0x6).
  The `bne` branch at 0x40a1b0 targets 0x40a180, is taken when s6(?) != s5(=0x6), and falls through when s6(?) == s5(=0x6).
  The `beq` branch at 0x40a1bc targets 0x40a204, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x40a1c8 targets 0x40a204, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x40a1d4 targets 0x40a204, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x40a1e0 targets 0x40a204, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x40a1ec targets 0x40a204, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x40a1f8 targets 0x40a204, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x40a208 targets 0x40a15c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x40a214 targets 0x40a160, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x40a220 targets 0x40a160, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x40a22c targets 0x40a160, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x40a238 targets 0x40a160, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x40a244 targets 0x40a160, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x40a24c targets 0x40a160 and is always taken.
  The `beq` branch at 0x40a260 targets 0x40a1a4 and is always taken.
  The `beq` branch at 0x40a270 targets 0x40a288 and is always taken.
  The `beq` branch at 0x40a280 targets 0x40a3bc, is taken when s8(?) == s7(=a0+4600), and falls through when s8(?) != s7(=a0+4600).
  The `beq` branch at 0x40a28c targets 0x40a27c, is taken when t8(?) == s3(=0x1), and falls through when t8(?) != s3(=0x1).
  The `beq` branch at 0x40a294 targets 0x40a2c8 and is always taken.
  The `beq` branch at 0x40a2ac targets 0x40a2bc, is taken when t9(?) == s3(=0x1), and falls through when t9(?) != s3(=0x1).
  The `bne` branch at 0x40a2b4 targets 0x40a2d8, is taken when s2(?) != s7(=a0+4600), and falls through when s2(?) == s7(=a0+4600).
  The `beq` branch at 0x40a2c0 targets 0x40a36c, is taken when s6(?) == s5(=0x6), and falls through when s6(?) != s5(=0x6).
  The `beq` branch at 0x40a2cc targets 0x40a2bc, is taken when ra(?) == s3(=0x1), and falls through when ra(?) != s3(=0x1).
  The `beq` branch at 0x40a2dc targets 0x40a2b0, is taken when at(?) == s3(=0x1), and falls through when at(?) != s3(=0x1).
  The `beq` branch at 0x40a2e4 targets 0x40a2fc and is always taken.
  The `beq` branch at 0x40a2f0 targets 0x40a31c, is taken when s1(?) == s5(=0x6), and falls through when s1(?) != s5(=0x6).
  The `beq` branch at 0x40a2fc targets 0x40a2ec, is taken when v0(?) == s3(=0x1), and falls through when v0(?) != s3(=0x1).
  The `bne` branch at 0x40a314 targets 0x40a2f0, is taken when v1(?) != s3(=0x1), and falls through when v1(?) == s3(=0x1).
  The `beq` branch at 0x40a320 targets 0x40a2a4, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x40a32c targets 0x40a2a4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x40a338 targets 0x40a2a0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x40a344 targets 0x40a2a0, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x40a350 targets 0x40a2a0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x40a35c targets 0x40a2a0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x40a364 targets 0x40a2a8 and is always taken.
  The `beq` branch at 0x40a370 targets 0x40a278, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x40a37c targets 0x40a278, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x40a388 targets 0x40a278, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x40a394 targets 0x40a278, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x40a3a0 targets 0x40a278, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x40a3ac targets 0x40a278, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x40a3b4 targets 0x40a278 and is always taken.
  The return at 0x40a3e8 has v0 = ?.
  The instructions from 0x40a29c to 0x40a29c are not reached by any path from the entry, and their branches are not listed.

- `writeGenericDIFHeaderIntoDIFsequence` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x40a3f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x40a3f0-0x40a4ec (252 bytes).
  It occupies 252 bytes.
  The `lw` at 0x40a448 loads 4 bytes from sym(difSeqCnt) +0x0.
  The `sw` at 0x40a458 stores 4 bytes to sym(difSeqCnt) +0x0.
  The `sb` at 0x40a494 stores 1 byte to a0 (arg0 at entry) +0x7.
  The `sb` at 0x40a498 stores 1 byte to a0 (arg0 at entry) +0x6.
  The `sb` at 0x40a49c stores 1 byte to a0 (arg0 at entry) +0x5.
  The `sb` at 0x40a4a0 stores 1 byte to a0 (arg0 at entry) +0x4.
  The `sb` at 0x40a4a4 stores 1 byte to a0 (arg0 at entry) +0x3.
  The `sb` at 0x40a4a8 stores 1 byte to a0 (arg0 at entry) +0x2.
  The `sb` at 0x40a4ac stores 1 byte to a0 (arg0 at entry) +0x1.
  The `sb` at 0x40a4b0 stores 1 byte to a0 (arg0 at entry) +0x0.
  4 such `sb` accesses store 1 byte to ?, including `sb` at 0x40a4c0, `sb` at 0x40a4c4, `sb` at 0x40a4cc.
  The `sw` at 0x40a4e0 stores 4 bytes to sym(difBlkCnt) +0x0.
  The `beq` branch at 0x40a428 targets 0x40a440, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x40a454 targets 0x40a4e4, is taken when a1 == 0, and falls through when a1 != 0.
  The `bne` branch at 0x40a4d0 targets 0x40a4c0, is taken when a1(?) != a3(=a0+80), and falls through when a1(?) == a3(=a0+80).
  The `beq` branch at 0x40a4e4 targets 0x40a460 and is always taken.
  The return at 0x40a4dc has v0 = 0xbf.

- `writeHeader` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x40a4f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x40a4f0-0x40a668 (376 bytes).
  It occupies 376 bytes.
  The `lw` at 0x40a50c loads 4 bytes from sym(videoMode) +0x0.
  5 such `lw` accesses load 4 bytes from sym(difSeqCnt) +0x0, including `lw` at 0x40a534, `lw` at 0x40a578, `lw` at 0x40a5b0.
  The `sd` at 0x40a54c stores 8 bytes to a0 (arg0 at entry) +0x50.
  The `sd` at 0x40a550 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x40a554 stores 8 bytes to a0 (arg0 at entry) +0x90.
  The `sd` at 0x40a558 stores 8 bytes to a0 (arg0 at entry) +0x88.
  The `sd` at 0x40a55c stores 8 bytes to a0 (arg0 at entry) +0x80.
  The `sd` at 0x40a560 stores 8 bytes to a0 (arg0 at entry) +0x78.
  The `sd` at 0x40a564 stores 8 bytes to a0 (arg0 at entry) +0x70.
  The `sd` at 0x40a568 stores 8 bytes to a0 (arg0 at entry) +0x68.
  The `sd` at 0x40a56c stores 8 bytes to a0 (arg0 at entry) +0x60.
  The `sd` at 0x40a570 stores 8 bytes to a0 (arg0 at entry) +0x58.
  The `sd` at 0x40a588 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sd` at 0x40a58c stores 8 bytes to a0 (arg0 at entry) +0xe8.
  The `sd` at 0x40a590 stores 8 bytes to a0 (arg0 at entry) +0xe0.
  The `sd` at 0x40a594 stores 8 bytes to a0 (arg0 at entry) +0xd8.
  The `sd` at 0x40a598 stores 8 bytes to a0 (arg0 at entry) +0xd0.
  The `sd` at 0x40a59c stores 8 bytes to a0 (arg0 at entry) +0xc8.
  The `sd` at 0x40a5a0 stores 8 bytes to a0 (arg0 at entry) +0xc0.
  The `sd` at 0x40a5a4 stores 8 bytes to a0 (arg0 at entry) +0xb8.
  The `sd` at 0x40a5a8 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sd` at 0x40a5ac stores 8 bytes to a0 (arg0 at entry) +0xa8.
  The `sd` at 0x40a5c0 stores 8 bytes to a0 (arg0 at entry) +0xf0.
  The `sd` at 0x40a5c4 stores 8 bytes to a0 (arg0 at entry) +0x138.
  The `sd` at 0x40a5c8 stores 8 bytes to a0 (arg0 at entry) +0x130.
  The `sd` at 0x40a5cc stores 8 bytes to a0 (arg0 at entry) +0x128.
  The `sd` at 0x40a5d0 stores 8 bytes to a0 (arg0 at entry) +0x120.
  The `sd` at 0x40a5d4 stores 8 bytes to a0 (arg0 at entry) +0x118.
  The `sd` at 0x40a5d8 stores 8 bytes to a0 (arg0 at entry) +0x110.
  The `sd` at 0x40a5dc stores 8 bytes to a0 (arg0 at entry) +0x108.
  The `sd` at 0x40a5e0 stores 8 bytes to a0 (arg0 at entry) +0x100.
  The `sd` at 0x40a5e4 stores 8 bytes to a0 (arg0 at entry) +0xf8.
  The `sd` at 0x40a5f8 stores 8 bytes to a0 (arg0 at entry) +0x140.
  The `sd` at 0x40a5fc stores 8 bytes to a0 (arg0 at entry) +0x188.
  The `sd` at 0x40a600 stores 8 bytes to a0 (arg0 at entry) +0x180.
  The `sd` at 0x40a604 stores 8 bytes to a0 (arg0 at entry) +0x178.
  The `sd` at 0x40a608 stores 8 bytes to a0 (arg0 at entry) +0x170.
  The `sd` at 0x40a60c stores 8 bytes to a0 (arg0 at entry) +0x168.
  The `sd` at 0x40a610 stores 8 bytes to a0 (arg0 at entry) +0x160.
  The `sd` at 0x40a614 stores 8 bytes to a0 (arg0 at entry) +0x158.
  The `sd` at 0x40a618 stores 8 bytes to a0 (arg0 at entry) +0x150.
  The `sd` at 0x40a61c stores 8 bytes to a0 (arg0 at entry) +0x148.
  The `sd` at 0x40a630 stores 8 bytes to a0 (arg0 at entry) +0x190.
  The `sd` at 0x40a634 stores 8 bytes to a0 (arg0 at entry) +0x1d8.
  The `sd` at 0x40a638 stores 8 bytes to a0 (arg0 at entry) +0x1d0.
  The `sd` at 0x40a63c stores 8 bytes to a0 (arg0 at entry) +0x1c8.
  The `sd` at 0x40a640 stores 8 bytes to a0 (arg0 at entry) +0x1c0.
  The `sd` at 0x40a644 stores 8 bytes to a0 (arg0 at entry) +0x1b8.
  The `sd` at 0x40a648 stores 8 bytes to a0 (arg0 at entry) +0x1b0.
  The `sd` at 0x40a64c stores 8 bytes to a0 (arg0 at entry) +0x1a8.
  The `sd` at 0x40a650 stores 8 bytes to a0 (arg0 at entry) +0x1a0.
  The `sd` at 0x40a654 stores 8 bytes to a0 (arg0 at entry) +0x198.
  The `bgezall` at 0x40a528 calls writeGenericDIFHeaderIntoDIFsequence [0x40a3f0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x79684.
  The return at 0x40a660 has v0 = a0+480.

- `writeAudio` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x40a670 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x40a670-0x40a678 (8 bytes).
  It occupies 8 bytes.
  The return at 0x40a670 has v0 = a0+80.

- `writeSegment64` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x40a680 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x40a680-0x40a818 (408 bytes).
  It occupies 408 bytes.
  The `lw` at 0x40a6c4 loads 4 bytes from abs 0x47be88.
  The `lw` at 0x40a6d0 loads 4 bytes from abs 0x47be30.
  The `lw` at 0x40a6e0 loads 4 bytes from sym(difSeqCnt) +0x0.
  12 such `ld` accesses load 8 bytes from ?, including `ld` at 0x40a6e8, `ld` at 0x40a6f8, `ld` at 0x40a704.
  10 such `sd` accesses store 8 bytes to ?, including `sd` at 0x40a754, `sd` at 0x40a760, `sd` at 0x40a76c.
  The `bne` branch at 0x40a7dc targets 0x40a6e0, is taken when a6(?) != s6(=a0+4600), and falls through when a6(?) == s6(=a0+4600).
  The return at 0x40a810 has v0 = ?.

- `addHeaderInfo` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x40a820 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x40a820-0x40aabc (668 bytes).
  It occupies 668 bytes.
  29 such `sb` accesses store 1 byte to ?, including `sb` at 0x40a958, `sb` at 0x40a968, `sb` at 0x40a9a0.
  2 such `swl` accesses store 4 bytes to ?, including `swl` at 0x40a95c, `swl` at 0x40a970.
  2 such `swr` accesses store 4 bytes to ?, including `swr` at 0x40a960, `swr` at 0x40a978.
  The `beq` branch at 0x40a898 targets 0x40aa40, is taken when a1 == 0, and falls through when a1 != 0.
  The `bne` branch at 0x40a974 targets 0x40a950, is taken when a2(?) < a3(?) (unsigned), and falls through when a2(?) >= a3(?) (unsigned).
  The `blez` branch at 0x40a97c targets 0x40aa38, is taken when a5(=one of 0xa, 0xc) <= 0 (signed), and falls through when a5(=one of 0xa, 0xc) > 0 (signed).
  The `bne` branch at 0x40aa30 targets 0x40a990, is taken when a5(=one of 0xa, 0xc) != a3(?), and falls through when a5(=one of 0xa, 0xc) == a3(?).
  The `beq` branch at 0x40aab4 targets 0x40a91c and is always taken.
  The return at 0x40aa38 has v0 = ?.

- `_GETBITS` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x40aabc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x40aabc-0x40ab50 (148 bytes).
  It occupies 148 bytes.
  5 such `lb` accesses load 1 byte from ?, including `lb` at 0x40aacc, `lb` at 0x40aae4, `lb` at 0x40ab0c.
  The `lh` at 0x40aad8 loads 2 bytes from ?.
  The `bgtz` branch at 0x40aae0 targets 0x40aaec, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40aaf0 targets 0x40ab38, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x40ab10 targets 0x40ab30, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x40ab40 targets 0x40aac8, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The return at 0x40ab48 has v0 = ?.

- `_APPENDBITS` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x40ab50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x40ab50-0x40ae2c (732 bytes).
  It occupies 732 bytes.
  The `lwu` at 0x40ab54 loads 4 bytes from a4 (arg4 at entry) +0x4.
  The `lwu` at 0x40ab58 loads 4 bytes from a4 (arg4 at entry) +0x0.
  The `ld` at 0x40ab64 loads 8 bytes from (([a4+4] << 0x3) + a4+8) +0x0.
  2 such `lb` accesses load 1 byte from ?, including `lb` at 0x40ab74, `lb` at 0x40ab88.
  The `lh` at 0x40ab80 loads 2 bytes from ?.
  6 such `lwu` accesses load 4 bytes from ?, including `lwu` at 0x40abc0, `lwu` at 0x40abc4, `lwu` at 0x40abdc.
  9 such `sd` accesses store 8 bytes to ?, including `sd` at 0x40ac24, `sd` at 0x40ac4c, `sd` at 0x40acb8.
  The `sw` at 0x40ae10 stores 4 bytes to a4 (arg4 at entry) +0x4.
  The `sw` at 0x40ae14 stores 4 bytes to a4 (arg4 at entry) +0x0.
  The `bgtz` branch at 0x40ab8c targets 0x40ab9c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40aba0 targets 0x40ad80, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x40abc8 targets 0x40acf8, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `blez` branch at 0x40abf0 targets 0x40ac08, is taken when t0(?) <= 0 (signed), and falls through when t0(?) > 0 (signed).
  The `beq` branch at 0x40ac00 targets 0x40ac5c and is always taken.
  The `beq` branch at 0x40ac08 targets 0x40ac40, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x40ac38 targets 0x40ac5c and is always taken.
  The `blez` branch at 0x40ac84 targets 0x40ac9c, is taken when t0(?) <= 0 (signed), and falls through when t0(?) > 0 (signed).
  The `beq` branch at 0x40ac94 targets 0x40ad7c and is always taken.
  The `beq` branch at 0x40ac9c targets 0x40acd4, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x40accc targets 0x40ad7c and is always taken.
  The `beq` branch at 0x40acf0 targets 0x40ad7c and is always taken.
  The `blez` branch at 0x40ad10 targets 0x40ad28, is taken when t0(?) <= 0 (signed), and falls through when t0(?) > 0 (signed).
  The `beq` branch at 0x40ad20 targets 0x40ad7c and is always taken.
  The `beq` branch at 0x40ad28 targets 0x40ad60, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x40ad58 targets 0x40ad7c and is always taken.
  The `beq` branch at 0x40ad88 targets 0x40ab70, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `blez` branch at 0x40ada4 targets 0x40adbc, is taken when t0(?) <= 0 (signed), and falls through when t0(?) > 0 (signed).
  The `beq` branch at 0x40adb4 targets 0x40ae10 and is always taken.
  The `beq` branch at 0x40adbc targets 0x40adf4, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x40adec targets 0x40ae10 and is always taken.
  The return at 0x40ae24 has v0 = ?.

- `_GETBITSUR8x8` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x40ae2c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x40ae2c-0x40b920 (2804 bytes).
  It occupies 2804 bytes.
  The `lh` at 0x40ae3c loads 2 bytes from a0 (arg0 at entry) +0x10.
  62 such `lh` accesses load 2 bytes from ?, including `lh` at 0x40ae68, `lh` at 0x40ae94, `lh` at 0x40aec0.
  The `jalr` at 0x40ae60 calls _bits8x8 [0x40b920] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x2, a7=0x2.
  The `jalr` at 0x40ae8c calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40aeb8 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40aee4 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40af10 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40af3c calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40af68 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40af94 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40afc0 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40afec calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b018 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b044 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b070 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b09c calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b0c8 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b0f4 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b120 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b14c calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b178 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b1a4 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b1d0 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b1fc calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b228 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b254 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b280 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b2ac calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b2d8 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b304 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b330 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b35c calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b388 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b3b4 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b3e0 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b40c calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b438 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b464 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b490 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b4bc calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b4e8 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b514 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b540 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b56c calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b598 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b5c4 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b5f0 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b61c calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b648 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b674 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b6a0 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b6cc calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b6f8 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b724 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b750 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b77c calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b7a8 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b7d4 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b800 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b82c calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b858 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b884 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b8b0 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b8dc calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b908 calls _bits8x8 [0x40b920] with a0=?, a1=?, a2=?, a3=?.
  The `bgtz` branch at 0x40ae40 targets 0x40ae4c, is taken when a5(=[a0+16]:2) > 0 (signed), and falls through when a5(=[a0+16]:2) <= 0 (signed).
  The `beq` branch at 0x40ae50 targets 0x40ae68, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40ae6c targets 0x40ae78, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40ae7c targets 0x40ae94, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40ae98 targets 0x40aea4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40aea8 targets 0x40aec0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40aec4 targets 0x40aed0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40aed4 targets 0x40aeec, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40aef0 targets 0x40aefc, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40af00 targets 0x40af18, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40af1c targets 0x40af28, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40af2c targets 0x40af44, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40af48 targets 0x40af54, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40af58 targets 0x40af70, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40af74 targets 0x40af80, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40af84 targets 0x40af9c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40afa0 targets 0x40afac, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40afb0 targets 0x40afc8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40afcc targets 0x40afd8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40afdc targets 0x40aff4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40aff8 targets 0x40b004, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b008 targets 0x40b020, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b024 targets 0x40b030, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b034 targets 0x40b04c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b050 targets 0x40b05c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b060 targets 0x40b078, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b07c targets 0x40b088, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b08c targets 0x40b0a4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b0a8 targets 0x40b0b4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b0b8 targets 0x40b0d0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b0d4 targets 0x40b0e0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b0e4 targets 0x40b0fc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b100 targets 0x40b10c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b110 targets 0x40b128, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b12c targets 0x40b138, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b13c targets 0x40b154, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b158 targets 0x40b164, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b168 targets 0x40b180, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b184 targets 0x40b190, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b194 targets 0x40b1ac, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b1b0 targets 0x40b1bc, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b1c0 targets 0x40b1d8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b1dc targets 0x40b1e8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b1ec targets 0x40b204, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b208 targets 0x40b214, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b218 targets 0x40b230, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b234 targets 0x40b240, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b244 targets 0x40b25c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b260 targets 0x40b26c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b270 targets 0x40b288, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b28c targets 0x40b298, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b29c targets 0x40b2b4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b2b8 targets 0x40b2c4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b2c8 targets 0x40b2e0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b2e4 targets 0x40b2f0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b2f4 targets 0x40b30c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b310 targets 0x40b31c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b320 targets 0x40b338, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b33c targets 0x40b348, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b34c targets 0x40b364, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b368 targets 0x40b374, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b378 targets 0x40b390, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b394 targets 0x40b3a0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b3a4 targets 0x40b3bc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b3c0 targets 0x40b3cc, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b3d0 targets 0x40b3e8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b3ec targets 0x40b3f8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b3fc targets 0x40b414, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b418 targets 0x40b424, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b428 targets 0x40b440, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b444 targets 0x40b450, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b454 targets 0x40b46c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b470 targets 0x40b47c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b480 targets 0x40b498, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b49c targets 0x40b4a8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b4ac targets 0x40b4c4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b4c8 targets 0x40b4d4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b4d8 targets 0x40b4f0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b4f4 targets 0x40b500, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b504 targets 0x40b51c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b520 targets 0x40b52c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b530 targets 0x40b548, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b54c targets 0x40b558, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b55c targets 0x40b574, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b578 targets 0x40b584, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b588 targets 0x40b5a0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b5a4 targets 0x40b5b0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b5b4 targets 0x40b5cc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b5d0 targets 0x40b5dc, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b5e0 targets 0x40b5f8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b5fc targets 0x40b608, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b60c targets 0x40b624, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b628 targets 0x40b634, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b638 targets 0x40b650, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b654 targets 0x40b660, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b664 targets 0x40b67c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b680 targets 0x40b68c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b690 targets 0x40b6a8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b6ac targets 0x40b6b8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b6bc targets 0x40b6d4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b6d8 targets 0x40b6e4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b6e8 targets 0x40b700, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b704 targets 0x40b710, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b714 targets 0x40b72c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b730 targets 0x40b73c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b740 targets 0x40b758, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b75c targets 0x40b768, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b76c targets 0x40b784, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b788 targets 0x40b794, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b798 targets 0x40b7b0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b7b4 targets 0x40b7c0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b7c4 targets 0x40b7dc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b7e0 targets 0x40b7ec, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b7f0 targets 0x40b808, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b80c targets 0x40b818, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b81c targets 0x40b834, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b838 targets 0x40b844, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b848 targets 0x40b860, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b864 targets 0x40b870, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b874 targets 0x40b88c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b890 targets 0x40b89c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b8a0 targets 0x40b8b8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b8bc targets 0x40b8c8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b8cc targets 0x40b8e4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b8e8 targets 0x40b8f4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b8f8 targets 0x40b910, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The return at 0x40b914 has v0 = one of ?, ret(_bits8x8).
  The instructions from 0x40b91c to 0x40b91c are not reached by any path from the entry, and their branches are not listed.

- `_bits8x8` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x40b920 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x40b920-0x40b960 (64 bytes).
  It occupies 64 bytes.
  2 such `lb` accesses load 1 byte from ?, including `lb` at 0x40b930, `lb` at 0x40b944.
  The `lb` at 0x40b94c loads 1 byte from (a1 + a5) +0x0.
  The `bne` branch at 0x40b934 targets 0x40b954, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The return at 0x40b958 has v0 = ?.

- `_APPENDBITSUR8x8` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x40b960 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x40b960-0x40c6cc (3436 bytes).
  It occupies 3436 bytes.
  The `lwu` at 0x40b968 loads 4 bytes from a3 (arg3 at entry) +0x4.
  The `lwu` at 0x40b96c loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x40b978 loads 8 bytes from (([a3+4] << 0x3) + a3+8) +0x0.
  The `lh` at 0x40b984 loads 2 bytes from a0 (arg0 at entry) +0x10.
  The `lb` at 0x40b988 loads 1 byte from a2 (arg2 at entry) +0x8.
  62 such `lh` accesses load 2 bytes from ?, including `lh` at 0x40b9b0, `lh` at 0x40b9dc, `lh` at 0x40ba08.
  62 such `lb` accesses load 1 byte from ?, including `lb` at 0x40b9b4, `lb` at 0x40b9e0, `lb` at 0x40ba0c.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x40c4a0, `sd` at 0x40c4c8, `sd` at 0x40c4e8.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x40c4d8, `sw` at 0x40c4dc.
  The `bal` at 0x40b9a8 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=ra at entry, a7=0x2.
  The `bal` at 0x40b9d4 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ba00 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ba2c calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ba58 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40ba84 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40bab0 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40badc calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40bb08 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40bb34 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40bb60 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40bb8c calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40bbb8 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40bbe4 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40bc10 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40bc3c calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40bc68 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40bc94 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40bcc0 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40bcec calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40bd18 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40bd44 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40bd70 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40bd9c calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40bdc8 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40bdf4 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40be20 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40be4c calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40be78 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40bea4 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40bed0 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40befc calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40bf28 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40bf54 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40bf80 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40bfac calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40bfd8 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40c004 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40c030 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40c05c calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40c088 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40c0b4 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40c0e0 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40c10c calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40c138 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40c164 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40c190 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40c1bc calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40c1e8 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40c214 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40c240 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40c26c calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40c298 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40c2c4 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40c2f0 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40c31c calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40c348 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40c374 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40c3a0 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40c3cc calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40c3f8 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40c424 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40c450 calls _APPENDBITSUR8x8+2968 [0x40c4f8] with a0=?, a1=?, a2=?, a3=?.
  The `bgtz` branch at 0x40b98c targets 0x40b99c, is taken when a5(=[a0+16]:2) > 0 (signed), and falls through when a5(=[a0+16]:2) <= 0 (signed).
  The `beq` branch at 0x40b9a0 targets 0x40b9b0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b9b8 targets 0x40b9c8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b9cc targets 0x40b9dc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40b9e4 targets 0x40b9f4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40b9f8 targets 0x40ba08, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40ba10 targets 0x40ba20, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40ba24 targets 0x40ba34, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40ba3c targets 0x40ba4c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40ba50 targets 0x40ba60, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40ba68 targets 0x40ba78, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40ba7c targets 0x40ba8c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40ba94 targets 0x40baa4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40baa8 targets 0x40bab8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40bac0 targets 0x40bad0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40bad4 targets 0x40bae4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40baec targets 0x40bafc, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40bb00 targets 0x40bb10, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40bb18 targets 0x40bb28, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40bb2c targets 0x40bb3c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40bb44 targets 0x40bb54, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40bb58 targets 0x40bb68, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40bb70 targets 0x40bb80, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40bb84 targets 0x40bb94, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40bb9c targets 0x40bbac, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40bbb0 targets 0x40bbc0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40bbc8 targets 0x40bbd8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40bbdc targets 0x40bbec, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40bbf4 targets 0x40bc04, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40bc08 targets 0x40bc18, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40bc20 targets 0x40bc30, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40bc34 targets 0x40bc44, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40bc4c targets 0x40bc5c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40bc60 targets 0x40bc70, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40bc78 targets 0x40bc88, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40bc8c targets 0x40bc9c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40bca4 targets 0x40bcb4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40bcb8 targets 0x40bcc8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40bcd0 targets 0x40bce0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40bce4 targets 0x40bcf4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40bcfc targets 0x40bd0c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40bd10 targets 0x40bd20, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40bd28 targets 0x40bd38, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40bd3c targets 0x40bd4c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40bd54 targets 0x40bd64, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40bd68 targets 0x40bd78, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40bd80 targets 0x40bd90, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40bd94 targets 0x40bda4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40bdac targets 0x40bdbc, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40bdc0 targets 0x40bdd0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40bdd8 targets 0x40bde8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40bdec targets 0x40bdfc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40be04 targets 0x40be14, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40be18 targets 0x40be28, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40be30 targets 0x40be40, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40be44 targets 0x40be54, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40be5c targets 0x40be6c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40be70 targets 0x40be80, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40be88 targets 0x40be98, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40be9c targets 0x40beac, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40beb4 targets 0x40bec4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40bec8 targets 0x40bed8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40bee0 targets 0x40bef0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40bef4 targets 0x40bf04, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40bf0c targets 0x40bf1c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40bf20 targets 0x40bf30, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40bf38 targets 0x40bf48, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40bf4c targets 0x40bf5c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40bf64 targets 0x40bf74, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40bf78 targets 0x40bf88, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40bf90 targets 0x40bfa0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40bfa4 targets 0x40bfb4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40bfbc targets 0x40bfcc, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40bfd0 targets 0x40bfe0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40bfe8 targets 0x40bff8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40bffc targets 0x40c00c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c014 targets 0x40c024, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c028 targets 0x40c038, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c040 targets 0x40c050, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c054 targets 0x40c064, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c06c targets 0x40c07c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c080 targets 0x40c090, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c098 targets 0x40c0a8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c0ac targets 0x40c0bc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c0c4 targets 0x40c0d4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c0d8 targets 0x40c0e8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c0f0 targets 0x40c100, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c104 targets 0x40c114, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c11c targets 0x40c12c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c130 targets 0x40c140, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c148 targets 0x40c158, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c15c targets 0x40c16c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c174 targets 0x40c184, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c188 targets 0x40c198, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c1a0 targets 0x40c1b0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c1b4 targets 0x40c1c4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c1cc targets 0x40c1dc, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c1e0 targets 0x40c1f0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c1f8 targets 0x40c208, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c20c targets 0x40c21c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c224 targets 0x40c234, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c238 targets 0x40c248, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c250 targets 0x40c260, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c264 targets 0x40c274, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c27c targets 0x40c28c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c290 targets 0x40c2a0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c2a8 targets 0x40c2b8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c2bc targets 0x40c2cc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c2d4 targets 0x40c2e4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c2e8 targets 0x40c2f8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c300 targets 0x40c310, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c314 targets 0x40c324, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c32c targets 0x40c33c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c340 targets 0x40c350, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c358 targets 0x40c368, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c36c targets 0x40c37c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c384 targets 0x40c394, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c398 targets 0x40c3a8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c3b0 targets 0x40c3c0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c3c4 targets 0x40c3d4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c3dc targets 0x40c3ec, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c3f0 targets 0x40c400, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c408 targets 0x40c418, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c41c targets 0x40c42c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c434 targets 0x40c444, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c448 targets 0x40c458, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `blez` branch at 0x40c46c targets 0x40c484, is taken when t0(?) <= 0 (signed), and falls through when t0(?) > 0 (signed).
  The `beq` branch at 0x40c47c targets 0x40c4d8 and is always taken.
  The `beq` branch at 0x40c484 targets 0x40c4bc, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x40c4b4 targets 0x40c4d8 and is always taken.
  The return at 0x40c4f0 has v0 = ?.
  The instructions from 0x40c4f8 to 0x40c6c8 are not reached by any path from the entry, and their branches are not listed.

- `_GETBITSUR4x8` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x40c6d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x40c6d0-0x40d1c0 (2800 bytes).
  It occupies 2800 bytes.
  The `lh` at 0x40c6e0 loads 2 bytes from a0 (arg0 at entry) +0x8.
  62 such `lh` accesses load 2 bytes from ?, including `lh` at 0x40c70c, `lh` at 0x40c738, `lh` at 0x40c764.
  The `jalr` at 0x40c704 calls _bits4x8 [0x40d1c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x2, a7=0x2.
  The `jalr` at 0x40c730 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c75c calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c788 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c7b4 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c7e0 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c80c calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c838 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c864 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c890 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c8bc calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c8e8 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c914 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c940 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c96c calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c998 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c9c4 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c9f0 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ca1c calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ca48 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ca74 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40caa0 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cacc calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40caf8 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cb24 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cb50 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cb7c calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cba8 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cbd4 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cc00 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cc2c calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cc58 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cc84 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ccb0 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ccdc calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cd08 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cd34 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cd60 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cd8c calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cdb8 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cde4 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ce10 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ce3c calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ce68 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ce94 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cec0 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ceec calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cf18 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cf44 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cf70 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cf9c calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cfc8 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40cff4 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40d020 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40d04c calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40d078 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40d0a4 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40d0d0 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40d0fc calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40d128 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40d154 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40d180 calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40d1ac calls _bits4x8 [0x40d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `bgtz` branch at 0x40c6e4 targets 0x40c6f0, is taken when a5(=[a0+8]:2) > 0 (signed), and falls through when a5(=[a0+8]:2) <= 0 (signed).
  The `beq` branch at 0x40c6f4 targets 0x40c70c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c710 targets 0x40c71c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c720 targets 0x40c738, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c73c targets 0x40c748, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c74c targets 0x40c764, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c768 targets 0x40c774, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c778 targets 0x40c790, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c794 targets 0x40c7a0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c7a4 targets 0x40c7bc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c7c0 targets 0x40c7cc, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c7d0 targets 0x40c7e8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c7ec targets 0x40c7f8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c7fc targets 0x40c814, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c818 targets 0x40c824, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c828 targets 0x40c840, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c844 targets 0x40c850, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c854 targets 0x40c86c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c870 targets 0x40c87c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c880 targets 0x40c898, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c89c targets 0x40c8a8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c8ac targets 0x40c8c4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c8c8 targets 0x40c8d4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c8d8 targets 0x40c8f0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c8f4 targets 0x40c900, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c904 targets 0x40c91c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c920 targets 0x40c92c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c930 targets 0x40c948, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c94c targets 0x40c958, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c95c targets 0x40c974, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c978 targets 0x40c984, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c988 targets 0x40c9a0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c9a4 targets 0x40c9b0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c9b4 targets 0x40c9cc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c9d0 targets 0x40c9dc, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40c9e0 targets 0x40c9f8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40c9fc targets 0x40ca08, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40ca0c targets 0x40ca24, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40ca28 targets 0x40ca34, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40ca38 targets 0x40ca50, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40ca54 targets 0x40ca60, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40ca64 targets 0x40ca7c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40ca80 targets 0x40ca8c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40ca90 targets 0x40caa8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40caac targets 0x40cab8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40cabc targets 0x40cad4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40cad8 targets 0x40cae4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40cae8 targets 0x40cb00, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40cb04 targets 0x40cb10, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40cb14 targets 0x40cb2c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40cb30 targets 0x40cb3c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40cb40 targets 0x40cb58, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40cb5c targets 0x40cb68, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40cb6c targets 0x40cb84, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40cb88 targets 0x40cb94, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40cb98 targets 0x40cbb0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40cbb4 targets 0x40cbc0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40cbc4 targets 0x40cbdc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40cbe0 targets 0x40cbec, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40cbf0 targets 0x40cc08, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40cc0c targets 0x40cc18, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40cc1c targets 0x40cc34, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40cc38 targets 0x40cc44, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40cc48 targets 0x40cc60, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40cc64 targets 0x40cc70, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40cc74 targets 0x40cc8c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40cc90 targets 0x40cc9c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40cca0 targets 0x40ccb8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40ccbc targets 0x40ccc8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40cccc targets 0x40cce4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40cce8 targets 0x40ccf4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40ccf8 targets 0x40cd10, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40cd14 targets 0x40cd20, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40cd24 targets 0x40cd3c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40cd40 targets 0x40cd4c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40cd50 targets 0x40cd68, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40cd6c targets 0x40cd78, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40cd7c targets 0x40cd94, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40cd98 targets 0x40cda4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40cda8 targets 0x40cdc0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40cdc4 targets 0x40cdd0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40cdd4 targets 0x40cdec, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40cdf0 targets 0x40cdfc, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40ce00 targets 0x40ce18, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40ce1c targets 0x40ce28, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40ce2c targets 0x40ce44, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40ce48 targets 0x40ce54, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40ce58 targets 0x40ce70, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40ce74 targets 0x40ce80, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40ce84 targets 0x40ce9c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40cea0 targets 0x40ceac, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40ceb0 targets 0x40cec8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40cecc targets 0x40ced8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40cedc targets 0x40cef4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40cef8 targets 0x40cf04, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40cf08 targets 0x40cf20, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40cf24 targets 0x40cf30, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40cf34 targets 0x40cf4c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40cf50 targets 0x40cf5c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40cf60 targets 0x40cf78, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40cf7c targets 0x40cf88, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40cf8c targets 0x40cfa4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40cfa8 targets 0x40cfb4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40cfb8 targets 0x40cfd0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40cfd4 targets 0x40cfe0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40cfe4 targets 0x40cffc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d000 targets 0x40d00c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d010 targets 0x40d028, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d02c targets 0x40d038, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d03c targets 0x40d054, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d058 targets 0x40d064, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d068 targets 0x40d080, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d084 targets 0x40d090, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d094 targets 0x40d0ac, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d0b0 targets 0x40d0bc, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d0c0 targets 0x40d0d8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d0dc targets 0x40d0e8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d0ec targets 0x40d104, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d108 targets 0x40d114, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d118 targets 0x40d130, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d134 targets 0x40d140, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d144 targets 0x40d15c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d160 targets 0x40d16c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d170 targets 0x40d188, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d18c targets 0x40d198, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d19c targets 0x40d1b4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The return at 0x40d1b8 has v0 = one of ?, ret(_bits4x8).

- `_bits4x8` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x40d1c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x40d1c0-0x40d200 (64 bytes).
  It occupies 64 bytes.
  2 such `lb` accesses load 1 byte from ?, including `lb` at 0x40d1d0, `lb` at 0x40d1e4.
  The `lb` at 0x40d1ec loads 1 byte from (a1 + a5) +0x0.
  The `bne` branch at 0x40d1d4 targets 0x40d1f4, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The return at 0x40d1f8 has v0 = ?.

- `_APPENDBITSUR4x8` in `usr/lib32/dmedia/imageconverters/vicedv.so` at 0x40d200 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/imageconverters/vicedv.so`.
  Range: 0x40d200-0x40df6c (3436 bytes).
  It occupies 3436 bytes.
  The `lwu` at 0x40d208 loads 4 bytes from a3 (arg3 at entry) +0x4.
  The `lwu` at 0x40d20c loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x40d218 loads 8 bytes from (([a3+4] << 0x3) + a3+8) +0x0.
  The `lh` at 0x40d224 loads 2 bytes from a0 (arg0 at entry) +0x8.
  The `lb` at 0x40d228 loads 1 byte from a2 (arg2 at entry) +0x4.
  62 such `lh` accesses load 2 bytes from ?, including `lh` at 0x40d250, `lh` at 0x40d27c, `lh` at 0x40d2a8.
  62 such `lb` accesses load 1 byte from ?, including `lb` at 0x40d254, `lb` at 0x40d280, `lb` at 0x40d2ac.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x40dd40, `sd` at 0x40dd68, `sd` at 0x40dd88.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x40dd78, `sw` at 0x40dd7c.
  The `bal` at 0x40d248 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=ra at entry, a7=0x2.
  The `bal` at 0x40d274 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d2a0 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d2cc calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d2f8 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d324 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d350 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d37c calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d3a8 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d3d4 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d400 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d42c calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d458 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d484 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d4b0 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d4dc calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d508 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d534 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d560 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d58c calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d5b8 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d5e4 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d610 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d63c calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d668 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d694 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d6c0 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d6ec calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d718 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d744 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d770 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d79c calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d7c8 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d7f4 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d820 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d84c calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d878 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d8a4 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d8d0 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d8fc calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d928 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d954 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d980 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d9ac calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40d9d8 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40da04 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40da30 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40da5c calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40da88 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40dab4 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40dae0 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40db0c calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40db38 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40db64 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40db90 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40dbbc calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40dbe8 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40dc14 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40dc40 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40dc6c calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40dc98 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40dcc4 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bal` at 0x40dcf0 calls _APPENDBITSUR4x8+2968 [0x40dd98] with a0=?, a1=?, a2=?, a3=?.
  The `bgtz` branch at 0x40d22c targets 0x40d23c, is taken when a5(=[a0+8]:2) > 0 (signed), and falls through when a5(=[a0+8]:2) <= 0 (signed).
  The `beq` branch at 0x40d240 targets 0x40d250, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d258 targets 0x40d268, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d26c targets 0x40d27c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d284 targets 0x40d294, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d298 targets 0x40d2a8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d2b0 targets 0x40d2c0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d2c4 targets 0x40d2d4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d2dc targets 0x40d2ec, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d2f0 targets 0x40d300, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d308 targets 0x40d318, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d31c targets 0x40d32c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d334 targets 0x40d344, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d348 targets 0x40d358, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d360 targets 0x40d370, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d374 targets 0x40d384, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d38c targets 0x40d39c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d3a0 targets 0x40d3b0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d3b8 targets 0x40d3c8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d3cc targets 0x40d3dc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d3e4 targets 0x40d3f4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d3f8 targets 0x40d408, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d410 targets 0x40d420, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d424 targets 0x40d434, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d43c targets 0x40d44c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d450 targets 0x40d460, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d468 targets 0x40d478, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d47c targets 0x40d48c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d494 targets 0x40d4a4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d4a8 targets 0x40d4b8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d4c0 targets 0x40d4d0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d4d4 targets 0x40d4e4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d4ec targets 0x40d4fc, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d500 targets 0x40d510, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d518 targets 0x40d528, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d52c targets 0x40d53c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d544 targets 0x40d554, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d558 targets 0x40d568, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d570 targets 0x40d580, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d584 targets 0x40d594, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d59c targets 0x40d5ac, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d5b0 targets 0x40d5c0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d5c8 targets 0x40d5d8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d5dc targets 0x40d5ec, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d5f4 targets 0x40d604, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d608 targets 0x40d618, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d620 targets 0x40d630, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d634 targets 0x40d644, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d64c targets 0x40d65c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d660 targets 0x40d670, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d678 targets 0x40d688, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d68c targets 0x40d69c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d6a4 targets 0x40d6b4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d6b8 targets 0x40d6c8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d6d0 targets 0x40d6e0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d6e4 targets 0x40d6f4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d6fc targets 0x40d70c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d710 targets 0x40d720, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d728 targets 0x40d738, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d73c targets 0x40d74c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d754 targets 0x40d764, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d768 targets 0x40d778, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d780 targets 0x40d790, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d794 targets 0x40d7a4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d7ac targets 0x40d7bc, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d7c0 targets 0x40d7d0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d7d8 targets 0x40d7e8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d7ec targets 0x40d7fc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d804 targets 0x40d814, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d818 targets 0x40d828, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d830 targets 0x40d840, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d844 targets 0x40d854, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d85c targets 0x40d86c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d870 targets 0x40d880, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d888 targets 0x40d898, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d89c targets 0x40d8ac, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d8b4 targets 0x40d8c4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d8c8 targets 0x40d8d8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d8e0 targets 0x40d8f0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d8f4 targets 0x40d904, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d90c targets 0x40d91c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d920 targets 0x40d930, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d938 targets 0x40d948, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d94c targets 0x40d95c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d964 targets 0x40d974, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d978 targets 0x40d988, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d990 targets 0x40d9a0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d9a4 targets 0x40d9b4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d9bc targets 0x40d9cc, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d9d0 targets 0x40d9e0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40d9e8 targets 0x40d9f8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40d9fc targets 0x40da0c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40da14 targets 0x40da24, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40da28 targets 0x40da38, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40da40 targets 0x40da50, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40da54 targets 0x40da64, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40da6c targets 0x40da7c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40da80 targets 0x40da90, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40da98 targets 0x40daa8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40daac targets 0x40dabc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40dac4 targets 0x40dad4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40dad8 targets 0x40dae8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40daf0 targets 0x40db00, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40db04 targets 0x40db14, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40db1c targets 0x40db2c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40db30 targets 0x40db40, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40db48 targets 0x40db58, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40db5c targets 0x40db6c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40db74 targets 0x40db84, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40db88 targets 0x40db98, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40dba0 targets 0x40dbb0, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40dbb4 targets 0x40dbc4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40dbcc targets 0x40dbdc, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40dbe0 targets 0x40dbf0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40dbf8 targets 0x40dc08, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40dc0c targets 0x40dc1c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40dc24 targets 0x40dc34, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40dc38 targets 0x40dc48, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40dc50 targets 0x40dc60, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40dc64 targets 0x40dc74, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40dc7c targets 0x40dc8c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40dc90 targets 0x40dca0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40dca8 targets 0x40dcb8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40dcbc targets 0x40dccc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bgtz` branch at 0x40dcd4 targets 0x40dce4, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `beq` branch at 0x40dce8 targets 0x40dcf8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `blez` branch at 0x40dd0c targets 0x40dd24, is taken when t0(?) <= 0 (signed), and falls through when t0(?) > 0 (signed).
  The `beq` branch at 0x40dd1c targets 0x40dd78 and is always taken.
  The `beq` branch at 0x40dd24 targets 0x40dd5c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x40dd54 targets 0x40dd78 and is always taken.
  The return at 0x40dd90 has v0 = ?.
  The instructions from 0x40dd98 to 0x40df68 are not reached by any path from the entry, and their branches are not listed.
