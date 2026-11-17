# Readings: `usr/lib32/dmedia/video/mvp.so`

One entry per routine, filed here from the reading batches by binary.

- `mvpRead` in `usr/lib32/dmedia/video/mvp.so` at 0x403a80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x403a80-0x403a9c (28 bytes).
  It occupies 28 bytes.
  The `lbu` at 0x403a8c loads 1 byte from a0 (arg0 at entry) +0x48.
  The return at 0x403a94 has v0 = [a0+72]:1.

- `mvpNodeProtoById` in `usr/lib32/dmedia/video/mvp.so` at 0x403aa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x403aa0-0x403b40 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0x403ab4 loads 4 bytes from sym(mvpdevices) +0x8.
  The `lw` at 0x403ac0 loads 4 bytes from sym(mvpdevices) +0xc.
  The `lw` at 0x403ad8 loads 4 bytes from ?.
  The `blez` branch at 0x403acc targets 0x403b24, is taken when at(=[sym(mvpdevices)+8]) <= 0 (signed), and falls through when at(=[sym(mvpdevices)+8]) > 0 (signed).
  The `bne` branch at 0x403ae0 targets 0x403af8, is taken when a0(?) != a1, and falls through when a0(?) == a1.
  The `beq` branch at 0x403af0 targets 0x403b2c and is always taken.
  The `bgtz` branch at 0x403b1c targets 0x403ad4, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The return at 0x403b38 has v0 = one of ?, 0x0.

- `mvpGetNodeProto` in `usr/lib32/dmedia/video/mvp.so` at 0x403b40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x403b40-0x403c10 (208 bytes).
  It occupies 208 bytes.
  The `lw` at 0x403b5c loads 4 bytes from sym(mvpdevices) +0x8.
  The `lw` at 0x403b68 loads 4 bytes from sym(mvpdevices) +0xc.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x403b80, `lw` at 0x403b94, `lw` at 0x403ba8.
  The `blez` branch at 0x403b74 targets 0x403bf4, is taken when at(=[sym(mvpdevices)+8]) <= 0 (signed), and falls through when at(=[sym(mvpdevices)+8]) > 0 (signed).
  The `bne` branch at 0x403b88 targets 0x403bc8, is taken when a0(?) != a1, and falls through when a0(?) == a1.
  The `bne` branch at 0x403b9c targets 0x403bc8, is taken when a1(?) != a2, and falls through when a1(?) == a2.
  The `bne` branch at 0x403bb0 targets 0x403bc8, is taken when a2(?) != a3, and falls through when a2(?) == a3.
  The `beq` branch at 0x403bc0 targets 0x403bfc and is always taken.
  The `bgtz` branch at 0x403bec targets 0x403b7c, is taken when a4(?) > 0 (signed), and falls through when a4(?) <= 0 (signed).
  The return at 0x403c08 has v0 = one of ?, 0x0.

- `mvpDecodePath` in `usr/lib32/dmedia/video/mvp.so` at 0x403c10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x403c10-0x403d94 (388 bytes).
  It occupies 388 bytes.
  The `lbu` at 0x403c2c loads 1 byte from a0 (arg0 at entry) +0x49.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x403c40, `lbu` at 0x403c7c.
  The `lbu` at 0x403c68 loads 1 byte from a0 (arg0 at entry) +0x4a.
  4 such `lw` accesses load 4 bytes from ret(mvpNodeProtoById) +0x2c, including `lw` at 0x403cc8, `lw` at 0x403cf0, `lw` at 0x403d34.
  4 such `lw` accesses load 4 bytes from table(0x41a528) +0x0, including `lw` at 0x403cd8, `lw` at 0x403d00, `lw` at 0x403d44.
  4 such `lw` accesses load 4 bytes from ret(mvpNodeProtoById) +0x28, including `lw` at 0x403ce0, `lw` at 0x403d08, `lw` at 0x403d4c.
  The `bgezall` at 0x403c4c calls mvpNodeProtoById [0x403aa0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+73]:1.
  The `bgezall` at 0x403c88 calls mvpNodeProtoById [0x403aa0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+74]:1.
  The `jalr` at 0x403ca0 calls mvpRead with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x403d10 calls sprintf with a0=a1 at entry (arg1), a1=[0x420140], a2=entry(0x41a528), a3=[ret(mvpNodeProtoById)+40], a4=entry(0x41a528), a5=[ret(mvpNodeProtoById)+40].
  The `jalr` at 0x403d7c calls sprintf with a0=a1 at entry (arg1), a1=[0x420140], a2=entry(0x41a528), a3=[ret(mvpNodeProtoById)+40], a4=entry(0x41a528), a5=[ret(mvpNodeProtoById)+40].
  The `beq` branch at 0x403cac targets 0x403d20, is taken when v0(=ret(mvpRead)) == 0, and falls through when v0(=ret(mvpRead)) != 0.
  The `beq` branch at 0x403d18 targets 0x403d84 and is always taken.
  The return at 0x403d8c has v0 = ret(sprintf).

- `mvpErrPrintf` in `usr/lib32/dmedia/video/mvp.so` at 0x403da0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x403da0-0x403e8c (236 bytes).
  It occupies 236 bytes.
  The `lbu` at 0x403ddc loads 1 byte from a1 (arg1 at entry) +0x0.
  The `lw` at 0x403e5c loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `jalr` at 0x403e20 calls fprintf with a0=sym(__iob)+32, a1=0x420170, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0x403e44 calls vfprintf with a0=sym(__iob)+32, a1=?, a2=sp-48, a3=?.
  The `jalr` at 0x403e70 calls pause with a0=?, a1=?, a2=a0 at entry (arg0), a3=?.
  The `bne` branch at 0x403de4 targets 0x403e00, is taken when at(=[a1]:1) != v0(=0x2b), and falls through when at(=[a1]:1) == v0(=0x2b).
  The `beq` branch at 0x403df8 targets 0x403e28 and is always taken.
  The `beq` branch at 0x403e04 targets 0x403e28, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x403e50 targets 0x403e78, is taken when a2(=a0) == 0, and falls through when a2(=a0) != 0.
  The `beq` branch at 0x403e64 targets 0x403e78, is taken when (a3(=[a0+36]) & 0x80) == 0, and falls through when (a3(=[a0+36]) & 0x80) != 0.
  The return at 0x403e84 has v0 = one of ret(vfprintf), ret(pause).

- `mvpPrintf` in `usr/lib32/dmedia/video/mvp.so` at 0x403e90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x403e90-0x4040e0 (592 bytes).
  It occupies 592 bytes.
  The `lw` at 0x403ee4 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `sw` at 0x403f88 stores 4 bytes to sym(mvpregtrace) +0x0.
  The `lbu` at 0x403f9c loads 1 byte from a1 (arg1 at entry) +0x0.
  The `jalr` at 0x403f1c calls getenv with a0=0x418000, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403f40 calls atoi with a0=ret(getenv), a1=ret(getenv), a2=?, a3=?.
  The `jalr` at 0x403fe0 calls fprintf with a0=sym(__iob)+32, a1=0x420170, a2=a0 at entry (arg0), a3=?, a4=[0x420164], a6=sym(mvpregtrace), a7=[a1]:1.
  The `jalr` at 0x404004 calls vfprintf with a0=sym(__iob)+32, a1=?, a2=sp-48, a3=?.
  The `jalr` at 0x404060 calls mvpGetStatus with a0=a0 at entry (arg0), a1=sp-136, a2=[0x420160], a3=?, a7=one of 0x0, 0x1.
  The `bgezall` at 0x404080 calls mvpCharStatus [0x4072a0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4040a4 calls fprintf with a0=sym(__iob)+32, a1=0x418010, a2=ret(mvpCharStatus), a3=?.
  The `jalr` at 0x4040b8 calls fflush with a0=sym(__iob)+32, a1=?, a2=?, a3=?.
  The `beq` branch at 0x403ed8 targets 0x403ef8, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x403ef0 targets 0x403f5c and is always taken.
  The `beq` branch at 0x403ef8 targets 0x403f10 and is always taken.
  The `beq` branch at 0x403f30 targets 0x403f58, is taken when a1(=ret(getenv)) == 0, and falls through when a1(=ret(getenv)) != 0.
  The `beq` branch at 0x403f50 targets 0x403f5c and is always taken.
  The `bne` branch at 0x403f64 targets 0x403f7c, is taken when a2(=[0x420164]) < 0x8 (signed), and falls through when a2(=[0x420164]) >= 0x8 (signed).
  The `beq` branch at 0x403f74 targets 0x403f80 and is always taken.
  The `beq` branch at 0x403f90 targets 0x4040c0, is taken when a4(=[0x420164]) == 0, and falls through when a4(=[0x420164]) != 0.
  The `bne` branch at 0x403fa4 targets 0x403fc0, is taken when a7(=[a1]:1) != t0(=0x2b), and falls through when a7(=[a1]:1) == t0(=0x2b).
  The `beq` branch at 0x403fb8 targets 0x403fe8 and is always taken.
  The `beq` branch at 0x403fc4 targets 0x403fe8, is taken when t1(=a0) == 0, and falls through when t1(=a0) != 0.
  The `beq` branch at 0x404010 targets 0x404044, is taken when a2(=[0x420160]) == 0, and falls through when a2(=[0x420160]) != 0.
  The `beq` branch at 0x40401c targets 0x404044, is taken when a3(=a0) == 0, and falls through when a3(=a0) != 0.
  The `bne` branch at 0x40402c targets 0x404044, is taken when a4(=[0x420168]) != a5(=0x1), and falls through when a4(=[0x420168]) == a5(=0x1).
  The `beq` branch at 0x40403c targets 0x404048 and is always taken.
  The `beq` branch at 0x40404c targets 0x4040ac, is taken when a7(=one of 0x0, 0x1) == 0, and falls through when a7(=one of 0x0, 0x1) != 0.
  The `bne` branch at 0x40406c targets 0x4040ac, is taken when v0(=ret(mvpGetStatus)) != 0, and falls through when v0(=ret(mvpGetStatus)) == 0.
  The return at 0x4040d8 has v0 = one of ?, ret(fflush).
  The instructions from 0x403f00 to 0x403f0c are not reached by any path from the entry, and their branches are not listed.

- `mvpPerror` in `usr/lib32/dmedia/video/mvp.so` at 0x4040e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x4040e0-0x404144 (100 bytes).
  It occupies 100 bytes.
  The `jalr` at 0x4040f4 calls oserror with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404104 calls strerror with a0=ret(oserror), a1=?, a2=?, a3=?.
  The `jalr` at 0x404120 calls mvpErrPrintf with a0=a0 at entry (arg0), a1=0x420178, a2=a1 at entry (arg1), a3=ret(strerror).
  The `jalr` at 0x40412c calls abort with a0=?, a1=?, a2=?, a3=?.
  The return at 0x40413c has v0 = ret(abort).

- `mvpAssertFail` in `usr/lib32/dmedia/video/mvp.so` at 0x404150 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x404150-0x4041b8 (104 bytes).
  It occupies 104 bytes.
  The `jalr` at 0x404190 calls mvpErrPrintf with a0=0x0, a1=0x418028, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a0 at entry (arg0).
  The `jalr` at 0x40419c calls abort with a0=?, a1=?, a2=?, a3=?.
  The return at 0x4041b0 has v0 = ret(abort).

- `mvpPanic` in `usr/lib32/dmedia/video/mvp.so` at 0x4041c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x4041c0-0x40423c (124 bytes).
  It occupies 124 bytes.
  The `jalr` at 0x404214 calls vfprintf with a0=sym(__iob)+32, a1=a0 at entry (arg0), a2=sp-56, a3=a3 at entry (arg3).
  The `jalr` at 0x404220 calls abort with a0=?, a1=?, a2=?, a3=?.
  The return at 0x404234 has v0 = ret(abort).

- `mvpRevisionError` in `usr/lib32/dmedia/video/mvp.so` at 0x404240 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x404240-0x404280 (64 bytes).
  It occupies 64 bytes.
  The `jalr` at 0x404264 calls mvpPanic with a0=0x418050, a1=0x23cc8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x404278 has v0 = ret(mvpPanic).

- `mvpOpenVideo` in `usr/lib32/dmedia/video/mvp.so` at 0x404280 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x404280-0x40440c (396 bytes).
  It occupies 396 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x38, including `lw` at 0x4042b0, `lw` at 0x4042ec.
  The `sw` at 0x40439c stores 4 bytes to a1 (arg1 at entry) +0x38.
  The `jalr` at 0x4042e0 calls mvpPrintf with a0=0x0, a1=0x418078, a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `jalr` at 0x404350 calls mvpCreatePath with a0=a0 at entry (arg0), a1=sp-176, a2=0x0, a3=0x0, a4=sp-176.
  The `jalr` at 0x40437c calls mvpSetupPath with a0=sp-176, a1=0x2, a2=0x1, a3=?, a5=ret(mvpCreatePath).
  The `jalr` at 0x4043a8 calls mvpGetDeviceControls with a0=?, a1=?, a2=?, a3=?, a6=ret(mvpSetupPath).
  The `jalr` at 0x4043d4 calls mvpPanic with a0=0x4180a8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4042a4 targets 0x4042c0, is taken when at(=a1) == 0, and falls through when at(=a1) != 0.
  The `beq` branch at 0x4042b8 targets 0x4042c4 and is always taken.
  The `bne` branch at 0x4042f0 targets 0x4043ec, is taken when a2(=[a1+56]) != 0, and falls through when a2(=[a1+56]) == 0.
  The `bne` branch at 0x404364 targets 0x4043dc, is taken when a5(=ret(mvpCreatePath)) != 0, and falls through when a5(=ret(mvpCreatePath)) == 0.
  The `bne` branch at 0x40438c targets 0x4043dc, is taken when a6(=ret(mvpSetupPath)) != 0, and falls through when a6(=ret(mvpSetupPath)) == 0.
  The `bne` branch at 0x4043b4 targets 0x4043c8, is taken when v0(=ret(mvpGetDeviceControls)) != 0, and falls through when v0(=ret(mvpGetDeviceControls)) == 0.
  The `beq` branch at 0x4043c0 targets 0x4043f4 and is always taken.
  The `beq` branch at 0x4043e4 targets 0x4043f4 and is always taken.
  The return at 0x404404 has v0 = one of 0x0, ?.

- `mvpCloseVideo` in `usr/lib32/dmedia/video/mvp.so` at 0x404410 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x404410-0x404510 (256 bytes).
  It occupies 256 bytes.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x38, including `lw` at 0x404440, `lw` at 0x40447c, `lw` at 0x4044d4.
  The `sw` at 0x4044f4 stores 4 bytes to a1 (arg1 at entry) +0x38.
  The `jalr` at 0x404470 calls mvpPrintf with a0=0x0, a1=0x4180d8, a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `jalr` at 0x4044e8 calls mvpDestroyPath with a0=a0 at entry (arg0), a1=sp-160, a2=[a1+56], a3=[a1+56], a4=a1 at entry (arg1), a5=sp-160.
  The `beq` branch at 0x404434 targets 0x404450, is taken when at(=a1) == 0, and falls through when at(=a1) != 0.
  The `beq` branch at 0x404448 targets 0x404454 and is always taken.
  The `beq` branch at 0x404484 targets 0x4044f8, is taken when a2(=[a1+56]) == 0, and falls through when a2(=[a1+56]) != 0.
  The return at 0x404508 has v0 = 0x0.

- `mvpCreatePath` in `usr/lib32/dmedia/video/mvp.so` at 0x404510 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x404510-0x404934 (1060 bytes).
  It occupies 1060 bytes.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x40453c, `lw` at 0x40454c, `lw` at 0x404574.
  2 such `lw` accesses load 4 bytes from [a1+8] +0x38, including `lw` at 0x404550, `lw` at 0x40488c.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc, including `lw` at 0x40461c, `lw` at 0x404794, `lw` at 0x4047b4.
  The `sw` at 0x404624 stores 4 bytes to ret(malloc) +0x20.
  4 such `lw` accesses load 4 bytes from ret(malloc) +0x24, including `lw` at 0x404680, `lw` at 0x4046a4, `lw` at 0x4046bc.
  3 such `sw` accesses store 4 bytes to ret(malloc) +0x24, including `sw` at 0x404694, `sw` at 0x4046b4, `sw` at 0x4048d8.
  The `sw` at 0x4046f4 stores 4 bytes to sym(mvpregtrace) +0x0.
  The `sw` at 0x40471c stores 4 bytes to ret(malloc) +0x28.
  The `lw` at 0x4047c0 loads 4 bytes from a1 (arg1 at entry) +0x38.
  The `lw` at 0x4047cc loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `lw` at 0x4047d8 loads 4 bytes from ret(malloc) +0x28.
  The `sw` at 0x404898 stores 4 bytes to ret(malloc) +0x118.
  The `sw` at 0x4048e4 stores 4 bytes to ret(malloc) +0x38.
  The `sw` at 0x4048f0 stores 4 bytes to a1 (arg1 at entry) +0x68.
  The `jalr` at 0x404580 calls mvpPrintf with a0=0x0, a1=0x418108, a2=[a1+8], a3=?.
  The `jalr` at 0x404590 calls malloc with a0=0x198, a1=?, a2=?, a3=?.
  The `jalr` at 0x4045b4 calls oserror with a0=?, a1=?, a2=ret(malloc), a3=?.
  The `jalr` at 0x4045c8 calls strerror with a0=ret(oserror), a1=?, a2=?, a3=?.
  The `jalr` at 0x4045ec calls mvpErrPrintf with a0=ret(malloc), a1=0x418130, a2=0x198, a3=ret(strerror).
  The `jalr` at 0x404610 calls bzero with a0=ret(malloc), a1=0x198, a2=ret(malloc), a3=?.
  The `jalr` at 0x404634 calls getenv with a0=0x418000, a1=[a1+12], a2=ret(malloc), a3=?.
  The `jalr` at 0x40465c calls atoi with a0=ret(getenv), a1=?, a2=ret(getenv), a3=?.
  The `jalr` at 0x404704 calls open with a0=[0x420130], a1=0x2, a2=?, a3=?.
  The `jalr` at 0x404730 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404744 calls strerror with a0=ret(oserror), a1=?, a2=?, a3=?.
  The `jalr` at 0x404768 calls mvpPrintf with a0=ret(malloc), a1=0x418160, a2=[0x420130], a3=ret(strerror).
  The `jalr` at 0x404778 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x4047ec calls ioctl with a0=[ret(malloc)+40], a1=0x6d767002, a2=sp-320, a3=[a1+12], a4=0xe8, a5=0xc9.
  The `jalr` at 0x404808 calls oserror with a0=?, a1=?, a2=?, a3=?, a6=-0x1.
  The `jalr` at 0x404824 calls mvpRevisionError with a0=?, a1=?, a2=?, a3=?, a7=0x7.
  The `jalr` at 0x404830 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404844 calls strerror with a0=ret(oserror), a1=?, a2=?, a3=?.
  The `jalr` at 0x40486c calls mvpErrPrintf with a0=ret(malloc), a1=0x418180, a2=?, a3=?, a4=ret(strerror).
  The `jalr` at 0x4048b8 calls mvpAssertFail with a0=0x4181c8, a1=0x420180, a2=0x155, a3=[[a1+8]+56], a4=ret(malloc), a6=-0x1.
  The `jalr` at 0x40490c calls sprintf with a0=ret(malloc), a1=0x418200, a2=[a1+12], a3=a1 at entry (arg1), a4=a1 at entry (arg1), a5=ret(malloc).
  The `beq` branch at 0x404540 targets 0x404560, is taken when at(=[a1+8]) == 0, and falls through when at(=[a1+8]) != 0.
  The `beq` branch at 0x404558 targets 0x404564 and is always taken.
  The `bne` branch at 0x4045a8 targets 0x404604, is taken when a2(=ret(malloc)) != 0, and falls through when a2(=ret(malloc)) == 0.
  The `beq` branch at 0x4045fc targets 0x40491c and is always taken.
  The `beq` branch at 0x40464c targets 0x4046b8, is taken when a2(=ret(getenv)) == 0, and falls through when a2(=ret(getenv)) != 0.
  The `beq` branch at 0x404674 targets 0x4046a0, is taken when a3(=ret(atoi)) == 0, and falls through when a3(=ret(atoi)) != 0.
  The `beq` branch at 0x404698 targets 0x4046b8 and is always taken.
  The `bne` branch at 0x4046d0 targets 0x4046e8, is taken when a6(?) < 0x8 (signed), and falls through when a6(?) >= 0x8 (signed).
  The `beq` branch at 0x4046e0 targets 0x4046ec and is always taken.
  The `bne` branch at 0x404724 targets 0x404790, is taken when t3(=ret(open)) != t8(=-0x1), and falls through when t3(=ret(open)) == t8(=-0x1).
  The `beq` branch at 0x404788 targets 0x40491c and is always taken.
  The `beq` branch at 0x404798 targets 0x4048c8, is taken when a3(=[a1+12]) == 0, and falls through when a3(=[a1+12]) != 0.
  The `bne` branch at 0x4047fc targets 0x404884, is taken when v0(=ret(ioctl)) != a6(=-0x1), and falls through when v0(=ret(ioctl)) == a6(=-0x1).
  The `bne` branch at 0x404818 targets 0x40482c, is taken when v0(=ret(oserror)) != a7(=0x7), and falls through when v0(=ret(oserror)) == a7(=0x7).
  The `beq` branch at 0x40487c targets 0x40491c and is always taken.
  The `bne` branch at 0x40489c targets 0x4048c0, is taken when a3(=[[a1+8]+56]) != 0, and falls through when a3(=[[a1+8]+56]) == 0.
  The `beq` branch at 0x4048c0 targets 0x4048dc and is always taken.
  The return at 0x40492c has v0 = one of 0x0, 0x6, 0xb, 0x11.

- `mvpDestroyPath` in `usr/lib32/dmedia/video/mvp.so` at 0x404940 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x404940-0x404ac0 (384 bytes).
  It occupies 384 bytes.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x404964, `lw` at 0x404974, `lw` at 0x40499c.
  The `lw` at 0x404978 loads 4 bytes from [a1+8] +0x38.
  The `lw` at 0x4049b8 loads 4 bytes from a1 (arg1 at entry) +0x68.
  2 such `lw` accesses load 4 bytes from [a1+104] +0x28, including `lw` at 0x4049fc, `lw` at 0x404a80.
  The `sw` at 0x404a78 stores 4 bytes to a1 (arg1 at entry) +0x68.
  The `jalr` at 0x4049ac calls mvpPrintf with a0=0x0, a1=0x418210, a2=[a1+8], a3=?, a4=a1 at entry (arg1).
  The `jalr` at 0x4049e0 calls mvpAssertFail with a0=0x418248, a1=0x420180, a2=0x16e, a3=?.
  The `jalr` at 0x404a10 calls ioctl with a0=[[a1+104]+40], a1=0x6d767002, a2=sp-296, a3=?.
  The `jalr` at 0x404a2c calls oserror with a0=?, a1=?, a2=?, a3=-0x1.
  The `jalr` at 0x404a40 calls strerror with a0=ret(oserror), a1=?, a2=?, a3=?.
  The `jalr` at 0x404a5c calls mvpErrPrintf with a0=[a1+104], a1=0x418270, a2=ret(strerror), a3=?.
  The `jalr` at 0x404a88 calls close with a0=[[a1+104]+40], a1=a1 at entry (arg1), a2=?, a3=-0x1.
  The `jalr` at 0x404a98 calls free with a0=[a1+104], a1=?, a2=?, a3=?.
  The `beq` branch at 0x404968 targets 0x404988, is taken when at(=[a1+8]) == 0, and falls through when at(=[a1+8]) != 0.
  The `beq` branch at 0x404980 targets 0x40498c and is always taken.
  The `bne` branch at 0x4049c4 targets 0x4049e8, is taken when a2(=[a1+104]) != 0, and falls through when a2(=[a1+104]) == 0.
  The `bne` branch at 0x404a20 targets 0x404a74, is taken when v0(=ret(ioctl)) != a3(=-0x1), and falls through when v0(=ret(ioctl)) == a3(=-0x1).
  The `beq` branch at 0x404a6c targets 0x404aa8 and is always taken.
  The return at 0x404ab8 has v0 = one of 0x0, 0x11.

- `mvpAddNode` in `usr/lib32/dmedia/video/mvp.so` at 0x404ac0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x404ac0-0x404ae0 (32 bytes).
  It occupies 32 bytes.
  The return at 0x404ad8 has v0 = 0x0.

- `mvpRemoveNode` in `usr/lib32/dmedia/video/mvp.so` at 0x404ae0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x404ae0-0x404b48 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x404b08 loads 4 bytes from a1 (arg1 at entry) +0x68.
  The `jalr` at 0x404b28 calls mvpAssertFail with a0=0x418290, a1=0x420180, a2=0x19c, a3=a3 at entry (arg3).
  The `bne` branch at 0x404b0c targets 0x404b30, is taken when at(=[a1+104]) != 0, and falls through when at(=[a1+104]) == 0.
  The return at 0x404b40 has v0 = 0x0.

- `mvpGetConnection` in `usr/lib32/dmedia/video/mvp.so` at 0x404b50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x404b50-0x404b80 (48 bytes).
  It occupies 48 bytes.
  The return at 0x404b78 has v0 = 0x12.

- `mvpSetConnection` in `usr/lib32/dmedia/video/mvp.so` at 0x404b80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x404b80-0x404bb0 (48 bytes).
  It occupies 48 bytes.
  The return at 0x404ba8 has v0 = 0x12.

- `mvpGetDefaultNumber` in `usr/lib32/dmedia/video/mvp.so` at 0x404bb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x404bb0-0x404ce4 (308 bytes).
  It occupies 308 bytes.
  The `lw` at 0x404bdc loads 4 bytes from a1 (arg1 at entry) +0x38.
  The `lbu` at 0x404c6c loads 1 byte from [a1+56] +0x129.
  The `lbu` at 0x404ca8 loads 1 byte from [a1+56] +0x130.
  The `jalr` at 0x404c04 calls mvpAssertFail with a0=0x4182b0, a1=0x420180, a2=0x1ba, a3=a3 at entry (arg3).
  The `jalr` at 0x404c14 calls mvpGetDeviceControls with a0=[a1+56], a1=?, a2=?, a3=?.
  The `bne` branch at 0x404be8 targets 0x404c0c, is taken when at(=[a1+56]) != 0, and falls through when at(=[a1+56]) == 0.
  The `beq` branch at 0x404c28 targets 0x404c58, is taken when a1(=a3) == a2(=0x1), and falls through when a1(=a3) != a2(=0x1).
  The `beq` branch at 0x404c38 targets 0x404c88, is taken when a3 == a4(=0x4), and falls through when a3 != a4(=0x4).
  The `beq` branch at 0x404c48 targets 0x404c94, is taken when a5(=a3) == a6(=0x3), and falls through when a5(=a3) != a6(=0x3).
  The `beq` branch at 0x404c50 targets 0x404cc4 and is always taken.
  The `bne` branch at 0x404c60 targets 0x404c7c, is taken when a7(=a2) != t0(=0x1), and falls through when a7(=a2) == t0(=0x1).
  The `beq` branch at 0x404c74 targets 0x404ccc and is always taken.
  The `beq` branch at 0x404c80 targets 0x404ccc and is always taken.
  The `beq` branch at 0x404c8c targets 0x404ccc and is always taken.
  The `bne` branch at 0x404c9c targets 0x404cb8, is taken when t2(=a2) != t3(=0x2), and falls through when t2(=a2) == t3(=0x2).
  The `beq` branch at 0x404cb0 targets 0x404ccc and is always taken.
  The `beq` branch at 0x404cbc targets 0x404ccc and is always taken.
  The return at 0x404cdc has v0 = one of [[a1+56]+297]:1, 0x0, [[a1+56]+304]:1.

- `mvpSetupPath` in `usr/lib32/dmedia/video/mvp.so` at 0x404f70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x404f70-0x405a54 (2788 bytes).
  It occupies 2788 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x404fa8, `lw` at 0x404fb8, `lw` at 0x404fe0.
  The `lw` at 0x404fbc loads 4 bytes from [a0+8] +0x38.
  The `lw` at 0x405004 loads 4 bytes from a0 (arg0 at entry) +0x68.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0x405038, `lw` at 0x4050a8, `lw` at 0x405390.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x64, including `lw` at 0x4050c0, `lw` at 0x4057bc.
  20 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4050d0, `lw` at 0x4050dc, `lw` at 0x4050f0.
  The `lw` at 0x40512c loads 4 bytes from [a0+104] +0x118.
  The `lbu` at 0x405130 loads 1 byte from [[a0+104]+280] +0x129.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x405168, `sw` at 0x4057d0.
  9 such `sb` accesses store 1 byte to ?, including `sb` at 0x40518c, `sb` at 0x4051b0, `sb` at 0x4051d8.
  6 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x405214, `lbu` at 0x40525c, `lbu` at 0x405728.
  5 such `lw` accesses load 4 bytes from [a0+104] +0x24, including `lw` at 0x4053e8, `lw` at 0x405460, `lw` at 0x405910.
  3 such `sw` accesses store 4 bytes to [a0+104] +0x24, including `sw` at 0x4053f4, `sw` at 0x405470, `sw` at 0x405a30.
  3 such `lw` accesses load 4 bytes from [a0+104] +0x28, including `lw` at 0x4055ec, `lw` at 0x4058b0, `lw` at 0x4059a8.
  2 such `lbu` accesses load 1 byte from [a0+104] +0x4b, including `lbu` at 0x405700, `lbu` at 0x405880.
  2 such `lw` accesses load 4 bytes from ret(mvpGetNodeProto) +0x0, including `lw` at 0x4057d8, `lw` at 0x4057fc.
  The `jalr` at 0x404ff8 calls mvpPrintf with a0=0x0, a1=0x4182d8, a2=[a0+8], a3=?, a4=a0 at entry (arg0).
  The `jalr` at 0x40502c calls mvpAssertFail with a0=0x418248, a1=0x420180, a2=0x213, a3=?.
  The `jalr` at 0x40505c calls mvpAssertFail with a0=0x418318, a1=0x420180, a2=0x214, a3=?.
  The `jalr` at 0x405080 calls bzero with a0=sp-464, a1=0xe8, a2=-0x1, a3=?.
  The `jalr` at 0x40521c calls mvpProxy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405264 calls mvpCDev with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40540c calls strncat with a0=[a0+104], a1=0x418340, a2=0x20, a3=[a0+104].
  The `jalr` at 0x4055d0 calls bcopy with a0=sp-456, a1=[a0+104]+60, a2=0xdc, a3=one of 0x1, 0x2, 0x3, 0x4.
  The `jalr` at 0x405600 calls ioctl with a0=[[a0+104]+40], a1=0x6d767002, a2=sp-464, a3=?.
  The `jalr` at 0x40561c calls oserror with a0=?, a1=?, a2=?, a3=-0x1.
  The `jalr` at 0x405638 calls mvpRevisionError with a0=?, a1=?, a2=?, a3=?, a4=0x7.
  The `jalr` at 0x405644 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405658 calls strerror with a0=ret(oserror), a1=?, a2=?, a3=?.
  The `jalr` at 0x405678 calls mvpPrintf with a0=[a0+104], a1=0x418350, a2=ret(strerror), a3=?.
  The `jalr` at 0x405684 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0x4057a4 calls mvpGetNodeProto [0x403b40] with a0=[a0+104], a1=?, a2=?, a3=?.
  The `jalr` at 0x405804 calls mvpProxy with a0=[ret(mvpGetNodeProto)], a1=[ret(mvpGetNodeProto)], a2=?, a3=?.
  The `jalr` at 0x405838 calls mvpCDev with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4058c4 calls ioctl with a0=[[a0+104]+40], a1=0x6d767002, a2=sp-464, a3=?.
  The `jalr` at 0x4058e8 calls mvpPanic with a0=0x418368, a1=?, a2=?, a3=-0x1.
  The `jalr` at 0x405904 calls bcopy with a0=sp-456, a1=[a0+104]+60, a2=0xdc, a3=?.
  The `bgezall` at 0x405944 calls mvpDecodePath [0x403c10] with a0=[a0+104], a1=sp-192, a2=?, a3=?.
  The `jalr` at 0x405954 calls strlen with a0=[a0+104], a1=?, a2=?, a3=?.
  The `jalr` at 0x405974 calls strncat with a0=[a0+104], a1=sp-192, a2=?, a3=?.
  The `jalr` at 0x40598c calls strncpy with a0=sp-456, a1=sp-192, a2=0x1f, a3=?.
  The `jalr` at 0x4059bc calls ioctl with a0=[[a0+104]+40], a1=0x6d767002, a2=sp-464, a3=?.
  The `jalr` at 0x4059cc calls mvpSetupPathControls with a0=[a0+104], a1=?, a2=?, a3=?.
  The `jalr` at 0x4059e4 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4059f8 calls strerror with a0=ret(oserror), a1=?, a2=?, a3=?.
  The `jalr` at 0x405a18 calls mvpErrPrintf with a0=[a0+104], a1=0x418390, a2=ret(strerror), a3=?.
  The `beq` branch at 0x404fac targets 0x404fcc, is taken when at(=[a0+8]) == 0, and falls through when at(=[a0+8]) != 0.
  The `beq` branch at 0x404fc4 targets 0x404fd0 and is always taken.
  The `bne` branch at 0x405010 targets 0x405034, is taken when a2(=[a0+104]) != 0, and falls through when a2(=[a0+104]) == 0.
  The `bne` branch at 0x405040 targets 0x405064, is taken when a1(=[a0+96]) < 0x12 (signed), and falls through when a1(=[a0+96]) >= 0x12 (signed).
  The `beq` branch at 0x4050b4 targets 0x4053a4, is taken when a3(=0x0) >= a4(=[a0+96]) (signed), and falls through when a3(=0x0) < a4(=[a0+96]) (signed).
  The `beq` branch at 0x4050e4 targets 0x405100, is taken when a6(?) == a7(=0x10000000), and falls through when a6(?) != a7(=0x10000000).
  The `beq` branch at 0x4050f8 targets 0x405148 and is always taken.
  The `bne` branch at 0x40510c targets 0x405140, is taken when t1(?) != t2(=0x1), and falls through when t1(?) == t2(=0x1).
  The `bne` branch at 0x405120 targets 0x405140, is taken when t2(?) != t3(=0x1), and falls through when t2(?) == t3(=0x1).
  The `beq` branch at 0x405138 targets 0x405148 and is always taken.
  The `bne` branch at 0x405298 targets 0x4052f4, is taken when a6(?) != a7(=0x1), and falls through when a6(?) == a7(=0x1).
  The `bne` branch at 0x4052b8 targets 0x4052d0, is taken when t2(?) != t3(=0x1), and falls through when t2(?) == t3(=0x1).
  The `beq` branch at 0x4052c8 targets 0x4052ec and is always taken.
  The `bne` branch at 0x4052dc targets 0x4052ec, is taken when t9(?) != ra(=0x4), and falls through when t9(?) == ra(=0x4).
  The `beq` branch at 0x4052ec targets 0x40532c and is always taken.
  The `bne` branch at 0x405300 targets 0x40532c, is taken when at(?) != v0(=0x2), and falls through when at(?) == v0(=0x2).
  The `bne` branch at 0x405320 targets 0x40532c, is taken when v0(?) != v1(=0x1), and falls through when v0(?) == v1(=0x1).
  The `beq` branch at 0x405338 targets 0x405354, is taken when a0(?) == a1(=0x1), and falls through when a0(?) != a1(=0x1).
  The `bne` branch at 0x40534c targets 0x405364, is taken when a1(?) != a2(=0x4), and falls through when a1(?) == a2(=0x4).
  The `beq` branch at 0x40535c targets 0x405380 and is always taken.
  The `bne` branch at 0x405370 targets 0x405380, is taken when a3(?) != a4(=0x3), and falls through when a3(?) == a4(=0x3).
  The `bne` branch at 0x40539c targets 0x4050bc, is taken when a5(?) < a6(=[a0+96]) (signed), and falls through when a5(?) >= a6(=[a0+96]) (signed).
  The `bne` branch at 0x4053ac targets 0x4053c4, is taken when t0(?) != t1(=0x1), and falls through when t0(?) == t1(=0x1).
  The `beq` branch at 0x4053bc targets 0x40541c, is taken when t2(?) == t3(=0x1), and falls through when t2(?) != t3(=0x1).
  The `bne` branch at 0x4053cc targets 0x4053e4, is taken when t8(?) < 0x2 (signed), and falls through when t8(?) >= 0x2 (signed).
  The `beq` branch at 0x4053dc targets 0x405a3c and is always taken.
  The `beq` branch at 0x405414 targets 0x405474 and is always taken.
  The `beq` branch at 0x405424 targets 0x40543c, is taken when a3(?) == a4(=-0x1), and falls through when a3(?) != a4(=-0x1).
  The `bne` branch at 0x405434 targets 0x40544c, is taken when a5(?) != a6(=-0x1), and falls through when a5(?) == a6(=-0x1).
  The `beq` branch at 0x405444 targets 0x405a3c and is always taken.
  The `beq` branch at 0x40547c targets 0x4054bc, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x40548c targets 0x4054cc, is taken when t8(?) == t9(=0x1), and falls through when t8(?) != t9(=0x1).
  The `beq` branch at 0x40549c targets 0x4054dc, is taken when ra(?) == at(=0x2), and falls through when ra(?) != at(=0x2).
  The `beq` branch at 0x4054ac targets 0x4054ec, is taken when v0(?) == v1(=0x3), and falls through when v0(?) != v1(=0x3).
  The `beq` branch at 0x4054b4 targets 0x4054fc and is always taken.
  The `beq` branch at 0x4054c4 targets 0x40550c and is always taken.
  The `beq` branch at 0x4054d4 targets 0x40550c and is always taken.
  The `beq` branch at 0x4054e4 targets 0x40550c and is always taken.
  The `beq` branch at 0x4054f4 targets 0x40550c and is always taken.
  The `beq` branch at 0x405504 targets 0x405a3c and is always taken.
  The `beq` branch at 0x405514 targets 0x405554, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x405524 targets 0x405564, is taken when a6(?) == a7(=0x1), and falls through when a6(?) != a7(=0x1).
  The `beq` branch at 0x405534 targets 0x405574, is taken when t0(?) == t1(=0x2), and falls through when t0(?) != t1(=0x2).
  The `beq` branch at 0x405544 targets 0x405584, is taken when t2(?) == t3(=0x3), and falls through when t2(?) != t3(=0x3).
  The `beq` branch at 0x40554c targets 0x405594 and is always taken.
  The `beq` branch at 0x40555c targets 0x4055a4 and is always taken.
  The `beq` branch at 0x40556c targets 0x4055a4 and is always taken.
  The `beq` branch at 0x40557c targets 0x4055a4 and is always taken.
  The `beq` branch at 0x40558c targets 0x4055a4 and is always taken.
  The `beq` branch at 0x40559c targets 0x405a3c and is always taken.
  The `bne` branch at 0x405610 targets 0x4056ec, is taken when v0(=ret(ioctl)) != a3(=-0x1), and falls through when v0(=ret(ioctl)) == a3(=-0x1).
  The `bne` branch at 0x40562c targets 0x405640, is taken when v0(=ret(oserror)) != a4(=0x7), and falls through when v0(=ret(oserror)) == a4(=0x7).
  The `beq` branch at 0x40569c targets 0x4056bc, is taken when a2(=ret(oserror)) == a3(=0xd), and falls through when a2(=ret(oserror)) != a3(=0xd).
  The `beq` branch at 0x4056ac targets 0x4056cc, is taken when a4(=ret(oserror)) == a5(=0x13), and falls through when a4(=ret(oserror)) != a5(=0x13).
  The `beq` branch at 0x4056b4 targets 0x4056dc and is always taken.
  The `beq` branch at 0x4056c4 targets 0x405a3c and is always taken.
  The `beq` branch at 0x4056d4 targets 0x405a3c and is always taken.
  The `beq` branch at 0x4056e4 targets 0x405a3c and is always taken.
  The `beq` branch at 0x405708 targets 0x405890, is taken when t1(=0x0) >= t2(=[[a0+104]+75]:1) (signed), and falls through when t1(=0x0) < t2(=[[a0+104]+75]:1) (signed).
  The `beq` branch at 0x405754 targets 0x40586c, is taken when t3(?) == t8(?), and falls through when t3(?) != t8(?).
  The `bne` branch at 0x405888 targets 0x405710, is taken when t0(?) < t1(=[[a0+104]+75]:1) (signed), and falls through when t0(?) >= t1(=[[a0+104]+75]:1) (signed).
  The `beq` branch at 0x405894 targets 0x40590c, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x4058d4 targets 0x4058f0, is taken when v0(=ret(ioctl)) != a3(=-0x1), and falls through when v0(=ret(ioctl)) == a3(=-0x1).
  The `bne` branch at 0x405918 targets 0x405a20, is taken when (a2(=[[a0+104]+36]) & 0x100) != 0, and falls through when (a2(=[[a0+104]+36]) & 0x100) == 0.
  The `bne` branch at 0x40592c targets 0x405a20, is taken when (a3(=[[a0+104]+36]) & 0x200) != 0, and falls through when (a3(=[[a0+104]+36]) & 0x200) == 0.
  The `beq` branch at 0x4059d8 targets 0x405a20, is taken when v0(=ret(mvpSetupPathControls)) == 0, and falls through when v0(=ret(mvpSetupPathControls)) != 0.
  The return at 0x405a4c has v0 = one of 0x3, 0x8, 0x13, 0x1a, 0x0.

- `_mvpRealizeNode` in `usr/lib32/dmedia/video/mvp.so` at 0x405a60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x405a60-0x405bd0 (368 bytes).
  It occupies 368 bytes.
  The `lw` at 0x405a7c loads 4 bytes from a2 (arg2 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x20, including `lw` at 0x405a88, `lw` at 0x405acc.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x18, including `lw` at 0x405aa4, `lw` at 0x405af4.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x1c, including `lw` at 0x405aac, `lw` at 0x405b0c.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0x405adc, `lw` at 0x405b84.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x405afc, `lw` at 0x405b14, `lw` at 0x405b24.
  The `sw` at 0x405b3c stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `sw` at 0x405b48 stores 4 bytes to a3 (arg3 at entry) +0x10.
  The `sw` at 0x405b54 stores 4 bytes to a3 (arg3 at entry) +0x24.
  The `jalr` at 0x405ab4 calls mvpGetDefaultNumber with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=[a3+24], a3=[a3+28].
  The `jalr` at 0x405ba8 calls mvpErrPrintf with a0=a0 at entry (arg0), a1=0x4183b8, a2=?, a3=?, a5=[a2+8].
  The `jalr` at 0x405bb8 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `bne` branch at 0x405a90 targets 0x405ac8, is taken when at(=[a3+32]) != v0(=0x10000000), and falls through when at(=[a3+32]) == v0(=0x10000000).
  The `beq` branch at 0x405ac0 targets 0x405ad4 and is always taken.
  The `beq` branch at 0x405ae8 targets 0x405b98, is taken when a4(=0x0) >= a5(=[a2+8]) (signed), and falls through when a4(=0x0) < a5(=[a2+8]) (signed).
  The `bne` branch at 0x405b00 targets 0x405b60, is taken when a6(=[a3+24]) != a7(?), and falls through when a6(=[a3+24]) == a7(?).
  The `bne` branch at 0x405b18 targets 0x405b60, is taken when a7(=[a3+28]) != t0(?), and falls through when a7(=[a3+28]) == t0(?).
  The `bne` branch at 0x405b2c targets 0x405b60, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `beq` branch at 0x405b58 targets 0x405bc0 and is always taken.
  The `bne` branch at 0x405b90 targets 0x405af0, is taken when at(?) < v0(=[a2+8]) (signed), and falls through when at(?) >= v0(=[a2+8]) (signed).
  The return at 0x405bc8 has v0 = one of ?, ret(exit).

- `mvpSetupPaths` in `usr/lib32/dmedia/video/mvp.so` at 0x405bd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x405bd0-0x405e30 (608 bytes).
  It occupies 608 bytes.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0x405c14, `lw` at 0x405c24.
  The `sw` at 0x405c18 stores 4 bytes to [a2] +0x50.
  The `sw` at 0x405c28 stores 4 bytes to [a2] +0x54.
  16 such `lw` accesses load 4 bytes from ?, including `lw` at 0x405c54, `lw` at 0x405c58, `lw` at 0x405c98.
  The `jalr` at 0x405c80 calls mvpAssertFail with a0=0x4183e0, a1=0x420180, a2=0x306, a3=?.
  The `jalr` at 0x405cc4 calls mvpAssertFail with a0=0x418410, a1=0x420180, a2=0x307, a3=?.
  The `bgezall` at 0x405d68 calls _mvpRealizeNode [0x405a60] with a0=?, a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x405dc4 calls mvpSetupPath with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x405c3c targets 0x405e10, is taken when at(=0x0) >= v0(=a1) (signed), and falls through when at(=0x0) < v0(=a1) (signed).
  The `bne` branch at 0x405c64 targets 0x405c88, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `bne` branch at 0x405ca8 targets 0x405ccc, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x405cf0 targets 0x405da4, is taken when a1(=0x0) >= a2(?) (signed), and falls through when a1(=0x0) < a2(?) (signed).
  The `bne` branch at 0x405d24 targets 0x405d70, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bne` branch at 0x405d9c targets 0x405cf8, is taken when a5(?) < a6(?) (signed), and falls through when a5(?) >= a6(?) (signed).
  The `beq` branch at 0x405dd8 targets 0x405df0, is taken when a2(=ret(mvpSetupPath)) == 0, and falls through when a2(=ret(mvpSetupPath)) != 0.
  The `beq` branch at 0x405de8 targets 0x405e18 and is always taken.
  The `bne` branch at 0x405e08 targets 0x405c44, is taken when a4(?) < a5(=a1) (signed), and falls through when a4(?) >= a5(=a1) (signed).
  The return at 0x405e28 has v0 = one of ret(mvpSetupPath), 0x0.

- `mvpBufferInfo` in `usr/lib32/dmedia/video/mvp.so` at 0x405e30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x405e30-0x405f4c (284 bytes).
  It occupies 284 bytes.
  The `lw` at 0x405e5c loads 4 bytes from a1 (arg1 at entry) +0x68.
  The `lbu` at 0x405e90 loads 1 byte from [a1+104] +0x121.
  The `sw` at 0x405ec0 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `sw` at 0x405edc stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `sw` at 0x405ef8 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `sw` at 0x405f14 stores 4 bytes to a3 (arg3 at entry) +0x10.
  The `sw` at 0x405f20 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `sw` at 0x405f28 stores 4 bytes to a3 (arg3 at entry) +0x14.
  The `sw` at 0x405f30 stores 4 bytes to a3 (arg3 at entry) +0x18.
  The `jalr` at 0x405e84 calls mvpAssertFail with a0=0x418248, a1=0x420180, a2=0x322, a3=a3 at entry (arg3).
  The `jalr` at 0x405ecc calls mvpBufferAlignment with a0=[a1+104], a1=[[a1+104]+289]:1, a2=one of 0x3, 0x5, a3=?, a4=one of 0x3, 0x5, a5=a3 at entry (arg3).
  The `jalr` at 0x405ee8 calls mvpBufferSize with a0=[a1+104], a1=?, a2=?, a3=?, a6=a3 at entry (arg3).
  The `jalr` at 0x405f04 calls mvpPixSize with a0=[a1+104], a1=?, a2=?, a3=?, a7=a3 at entry (arg3).
  The `bne` branch at 0x405e68 targets 0x405e8c, is taken when at(=[a1+104]) != 0, and falls through when at(=[a1+104]) == 0.
  The `bne` branch at 0x405e98 targets 0x405eb0, is taken when a1(=[[a1+104]+289]:1) != a2(=0x3), and falls through when a1(=[[a1+104]+289]:1) == a2(=0x3).
  The `beq` branch at 0x405ea8 targets 0x405eb8 and is always taken.
  The return at 0x405f44 has v0 = 0x0.

- `mvpPrintBufferInfo` in `usr/lib32/dmedia/video/mvp.so` at 0x405f50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x405f50-0x405fbc (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x405f74 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lw` at 0x405f84 loads 4 bytes from table(0x420138) +0x0.
  The `lw` at 0x405f8c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x405f94 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0x405f9c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `jalr` at 0x405fa4 calls mvpPrintf with a0=a0 at entry (arg0), a1=0x418428, a2=entry(0x420138), a3=[a1+8], a4=[a1+4], a5=[a1].
  The return at 0x405fb4 has v0 = ret(mvpPrintf).

- `mvpRegisterBuffer` in `usr/lib32/dmedia/video/mvp.so` at 0x405fc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x405fc0-0x4061e4 (548 bytes).
  It occupies 548 bytes.
  The `lw` at 0x405fec loads 4 bytes from a1 (arg1 at entry) +0x68.
  The `lw` at 0x406030 loads 4 bytes from a3 (arg3 at entry) +0x40.
  The `lw` at 0x406054 loads 4 bytes from a3 (arg3 at entry) +0x48.
  The `lw` at 0x406060 loads 4 bytes from [a1+104] +0x28.
  The `jalr` at 0x406014 calls mvpAssertFail with a0=0x418248, a1=0x420180, a2=0x344, a3=a3 at entry (arg3).
  The `jalr` at 0x406040 calls mvpBufferSize with a0=[a1+104], a1=[a3+64], a2=0x10, a3=0x12d.
  The `jalr` at 0x406074 calls ioctl with a0=[[a1+104]+40], a1=0x6d767003, a2=sp-88, a3=?.
  The `jalr` at 0x406090 calls oserror with a0=?, a1=?, a2=-0x1, a3=?.
  The `jalr` at 0x4060ac calls mvpRevisionError with a0=?, a1=?, a2=?, a3=0x7.
  The `jalr` at 0x4060b8 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4060cc calls strerror with a0=ret(oserror), a1=?, a2=?, a3=?.
  The `jalr` at 0x4060f4 calls mvpErrPrintf with a0=[a1+104], a1=0x418460, a2=?, a3=?, a4=ret(strerror).
  The `jalr` at 0x406100 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4061a0 calls mvpPrintf with a0=[a1+104], a1=0x418488, a2=?, a3=?.
  The `bgezall` at 0x4061bc calls mvpPrintBufferInfo [0x405f50] with a0=[a1+104], a1=a3+8, a2=?, a3=?.
  The `bne` branch at 0x405ff8 targets 0x40601c, is taken when at(=[a1+104]) != 0, and falls through when at(=[a1+104]) == 0.
  The `bne` branch at 0x406084 targets 0x406188, is taken when v0(=ret(ioctl)) != a2(=-0x1), and falls through when v0(=ret(ioctl)) == a2(=-0x1).
  The `bne` branch at 0x4060a0 targets 0x4060b4, is taken when v0(=ret(oserror)) != a3(=0x7), and falls through when v0(=ret(oserror)) == a3(=0x7).
  The `beq` branch at 0x406118 targets 0x406148, is taken when a2(=ret(oserror)) == a3(=0x47), and falls through when a2(=ret(oserror)) != a3(=0x47).
  The `beq` branch at 0x406128 targets 0x406158, is taken when a4(=ret(oserror)) == a5(=0x3d), and falls through when a4(=ret(oserror)) != a5(=0x3d).
  The `beq` branch at 0x406138 targets 0x406168, is taken when a6(=ret(oserror)) == a7(=0xc), and falls through when a6(=ret(oserror)) != a7(=0xc).
  The `beq` branch at 0x406140 targets 0x406178 and is always taken.
  The `beq` branch at 0x406150 targets 0x4061cc and is always taken.
  The `beq` branch at 0x406160 targets 0x4061cc and is always taken.
  The `beq` branch at 0x406170 targets 0x4061cc and is always taken.
  The `beq` branch at 0x406180 targets 0x4061cc and is always taken.
  The return at 0x4061dc has v0 = one of 0xa, 0x15, 0x20, 0x11, 0x0.

- `mvpDeregisterBuffer` in `usr/lib32/dmedia/video/mvp.so` at 0x4061f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x4061f0-0x40632c (316 bytes).
  It occupies 316 bytes.
  The `lw` at 0x40621c loads 4 bytes from a1 (arg1 at entry) +0x68.
  The `lw` at 0x406260 loads 4 bytes from a3 (arg3 at entry) +0x40.
  The `lw` at 0x40626c loads 4 bytes from [a1+104] +0x28.
  The `jalr` at 0x406244 calls mvpAssertFail with a0=0x418248, a1=0x420180, a2=0x36b, a3=a3 at entry (arg3).
  The `jalr` at 0x406280 calls ioctl with a0=[[a1+104]+40], a1=0x6d767003, a2=sp-88, a3=0x12e.
  The `jalr` at 0x40629c calls oserror with a0=?, a1=?, a2=?, a3=?, a4=-0x1.
  The `jalr` at 0x4062b8 calls mvpRevisionError with a0=?, a1=?, a2=?, a3=?, a5=0x7.
  The `jalr` at 0x4062c4 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4062d8 calls strerror with a0=ret(oserror), a1=?, a2=?, a3=?.
  The `jalr` at 0x4062f4 calls mvpErrPrintf with a0=[a1+104], a1=0x4184b0, a2=ret(strerror), a3=?.
  The `bne` branch at 0x406228 targets 0x40624c, is taken when at(=[a1+104]) != 0, and falls through when at(=[a1+104]) == 0.
  The `bne` branch at 0x406290 targets 0x40630c, is taken when v0(=ret(ioctl)) != a4(=-0x1), and falls through when v0(=ret(ioctl)) == a4(=-0x1).
  The `bne` branch at 0x4062ac targets 0x4062c0, is taken when v0(=ret(oserror)) != a5(=0x7), and falls through when v0(=ret(oserror)) == a5(=0x7).
  The `beq` branch at 0x406304 targets 0x406314 and is always taken.
  The return at 0x406324 has v0 = one of 0x0, 0x11.

- `mvpRegisterPool` in `usr/lib32/dmedia/video/mvp.so` at 0x406330 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x406330-0x40673c (1036 bytes).
  It occupies 1036 bytes.
  The `lw` at 0x40635c loads 4 bytes from a1 (arg1 at entry) +0x68.
  The `lbu` at 0x406390 loads 1 byte from [a1+104] +0x121.
  2 such `lw` accesses load 4 bytes from ret(_dmBufferGetDmsPool) +0xc, including `lw` at 0x406414, `lw` at 0x4064c4.
  2 such `lw` accesses load 4 bytes from ret(_dmBufferGetDmsPool) +0x8, including `lw` at 0x40643c, `lw` at 0x4064cc.
  2 such `lw` accesses load 4 bytes from ret(_dmBufferGetDmsPool) +0x4, including `lw` at 0x40645c, `lw` at 0x4064d4.
  3 such `lw` accesses load 4 bytes from ret(_dmBufferGetDmsPool) +0x0, including `lw` at 0x40647c, `lw` at 0x4064e0, `lw` at 0x406590.
  The `lw` at 0x406524 loads 4 bytes from ret(_dmBufferGetDmsPool) +0x18.
  The `lw` at 0x40659c loads 4 bytes from [a1+104] +0x28.
  The `jalr` at 0x406384 calls mvpAssertFail with a0=0x418248, a1=0x420180, a2=0x38b, a3=a3 at entry (arg3).
  The `jalr` at 0x4063c8 calls mvpBufferSize with a0=[a1+104], a1=[[a1+104]+289]:1, a2=one of 0x3, 0x4, a3=?, a4=one of 0x3, 0x4.
  The `jalr` at 0x4063e0 calls _dmBufferGetDmsPool with a0=a3 at entry (arg3), a1=?, a2=?, a3=?.
  The `jalr` at 0x40642c calls mvpBufferAlignment with a0=[a1+104], a1=?, a2=?, a3=?, a5=ret(_dmBufferGetDmsPool), a7=[ret(_dmBufferGetDmsPool)+12].
  The `jalr` at 0x406498 calls mvpBufferAlignment with a0=[a1+104], a1=?, a2=?, a3=?.
  The `jalr` at 0x4064ec calls mvpErrPrintf with a0=[a1+104], a1=0x4184d0, a2=0x2, a3=ret(mvpBufferAlignment), a4=ret(mvpBufferSize), a5=one of 0x3, 0x4, a6=[ret(_dmBufferGetDmsPool)+12], a7=[ret(_dmBufferGetDmsPool)+8].
  The `jalr` at 0x40650c calls mvpRead with a0=[a1+104], a1=?, a2=?, a3=?.
  The `jalr` at 0x406548 calls mvpErrPrintf with a0=[a1+104], a1=0x418578, a2=?, a3=[ret(_dmBufferGetDmsPool)+24].
  The `jalr` at 0x4065b0 calls ioctl with a0=[[a1+104]+40], a1=0x6d767003, a2=sp-104, a3=?, a4=0x10, a5=0x12d.
  The `jalr` at 0x4065cc calls oserror with a0=?, a1=?, a2=?, a3=?, a6=-0x1.
  The `jalr` at 0x4065e8 calls mvpRevisionError with a0=?, a1=?, a2=?, a3=?, a7=0x7.
  The `jalr` at 0x4065f4 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406608 calls strerror with a0=ret(oserror), a1=?, a2=?, a3=?.
  The `jalr` at 0x406630 calls mvpErrPrintf with a0=[a1+104], a1=0x4185a0, a2=?, a3=?, a4=ret(strerror).
  The `jalr` at 0x40663c calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4066fc calls mvpPrintf with a0=[a1+104], a1=0x4185c8, a2=?, a3=?, a6=-0x1.
  The `bgezall` at 0x406714 calls mvpPrintBufferInfo [0x405f50] with a0=[a1+104], a1=ret(_dmBufferGetDmsPool), a2=?, a3=?.
  The `bne` branch at 0x406368 targets 0x40638c, is taken when at(=[a1+104]) != 0, and falls through when at(=[a1+104]) == 0.
  The `bne` branch at 0x406398 targets 0x4063b0, is taken when a1(=[[a1+104]+289]:1) != a2(=0x3), and falls through when a1(=[[a1+104]+289]:1) == a2(=0x3).
  The `beq` branch at 0x4063a8 targets 0x4063b8 and is always taken.
  The `bne` branch at 0x4063f8 targets 0x406410, is taken when a5(=ret(_dmBufferGetDmsPool)) != 0, and falls through when a5(=ret(_dmBufferGetDmsPool)) == 0.
  The `beq` branch at 0x406408 targets 0x406724 and is always taken.
  The `bne` branch at 0x40641c targets 0x406490, is taken when a7(=[ret(_dmBufferGetDmsPool)+12]) != t0(=0x2), and falls through when a7(=[ret(_dmBufferGetDmsPool)+12]) == t0(=0x2).
  The `beq` branch at 0x406448 targets 0x406458, is taken when (t0(=[ret(_dmBufferGetDmsPool)+8]) & t1(=ret(mvpBufferAlignment)-1)) == 0, and falls through when (t0(=[ret(_dmBufferGetDmsPool)+8]) & t1(=ret(mvpBufferAlignment)-1)) != 0.
  The `beq` branch at 0x406450 targets 0x406490 and is always taken.
  The `beq` branch at 0x406468 targets 0x406478, is taken when t1(=[ret(_dmBufferGetDmsPool)+4]) >= t2(=ret(mvpBufferSize)) (signed), and falls through when t1(=[ret(_dmBufferGetDmsPool)+4]) < t2(=ret(mvpBufferSize)) (signed).
  The `beq` branch at 0x406470 targets 0x406490 and is always taken.
  The `beq` branch at 0x406488 targets 0x406504, is taken when t2(=[ret(_dmBufferGetDmsPool)]) >= t3(=one of 0x3, 0x4) (signed), and falls through when t2(=[ret(_dmBufferGetDmsPool)]) < t3(=one of 0x3, 0x4) (signed).
  The `beq` branch at 0x4064fc targets 0x406724 and is always taken.
  The `beq` branch at 0x406518 targets 0x406568, is taken when v0(=ret(mvpRead)) == 0, and falls through when v0(=ret(mvpRead)) != 0.
  The `bne` branch at 0x406530 targets 0x406560, is taken when a3(=[ret(_dmBufferGetDmsPool)+24]) != 0, and falls through when a3(=[ret(_dmBufferGetDmsPool)+24]) == 0.
  The `beq` branch at 0x406558 targets 0x406724 and is always taken.
  The `beq` branch at 0x406560 targets 0x40656c and is always taken.
  The `bne` branch at 0x4065c0 targets 0x4066e4, is taken when v0(=ret(ioctl)) != a6(=-0x1), and falls through when v0(=ret(ioctl)) == a6(=-0x1).
  The `bne` branch at 0x4065dc targets 0x4065f0, is taken when v0(=ret(oserror)) != a7(=0x7), and falls through when v0(=ret(oserror)) == a7(=0x7).
  The `beq` branch at 0x406654 targets 0x406694, is taken when a2(=ret(oserror)) == a3(=0x47), and falls through when a2(=ret(oserror)) != a3(=0x47).
  The `beq` branch at 0x406664 targets 0x4066a4, is taken when a4(=ret(oserror)) == a5(=0xd), and falls through when a4(=ret(oserror)) != a5(=0xd).
  The `beq` branch at 0x406674 targets 0x4066b4, is taken when a6(=ret(oserror)) == a7(=0x3d), and falls through when a6(=ret(oserror)) != a7(=0x3d).
  The `beq` branch at 0x406684 targets 0x4066c4, is taken when t0(=ret(oserror)) == t1(=0xc), and falls through when t0(=ret(oserror)) != t1(=0xc).
  The `beq` branch at 0x40668c targets 0x4066d4 and is always taken.
  The `beq` branch at 0x40669c targets 0x406724 and is always taken.
  The `beq` branch at 0x4066ac targets 0x406724 and is always taken.
  The `beq` branch at 0x4066bc targets 0x406724 and is always taken.
  The `beq` branch at 0x4066cc targets 0x406724 and is always taken.
  The `beq` branch at 0x4066dc targets 0x406724 and is always taken.
  The return at 0x406734 has v0 = one of 0x15, 0xa, 0x20, 0x11, 0x0.

- `mvpDeregisterPool` in `usr/lib32/dmedia/video/mvp.so` at 0x406740 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x406740-0x4068b8 (376 bytes).
  It occupies 376 bytes.
  The `lw` at 0x40676c loads 4 bytes from a1 (arg1 at entry) +0x68.
  The `lw` at 0x4067e8 loads 4 bytes from ret(_dmBufferGetDmsPool) +0x18.
  The `lw` at 0x4067f4 loads 4 bytes from [a1+104] +0x28.
  The `jalr` at 0x406794 calls mvpAssertFail with a0=0x418248, a1=0x420180, a2=0x3d7, a3=a3 at entry (arg3).
  The `jalr` at 0x4067a4 calls _dmBufferGetDmsPool with a0=a3 at entry (arg3), a1=?, a2=?, a3=?.
  The `jalr` at 0x406808 calls ioctl with a0=[[a1+104]+40], a1=0x6d767003, a2=sp-88, a3=0x12e.
  The `jalr` at 0x406824 calls oserror with a0=?, a1=?, a2=?, a3=?, a4=-0x1.
  The `jalr` at 0x406840 calls mvpRevisionError with a0=?, a1=?, a2=?, a3=?, a5=0x7.
  The `jalr` at 0x40684c calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406860 calls strerror with a0=ret(oserror), a1=?, a2=?, a3=?.
  The `jalr` at 0x406880 calls mvpErrPrintf with a0=[a1+104], a1=0x4185e8, a2=ret(strerror), a3=?.
  The `bne` branch at 0x406778 targets 0x40679c, is taken when at(=[a1+104]) != 0, and falls through when at(=[a1+104]) == 0.
  The `bne` branch at 0x4067bc targets 0x4067d4, is taken when a1(=ret(_dmBufferGetDmsPool)) != 0, and falls through when a1(=ret(_dmBufferGetDmsPool)) == 0.
  The `beq` branch at 0x4067cc targets 0x4068a0 and is always taken.
  The `bne` branch at 0x406818 targets 0x406898, is taken when v0(=ret(ioctl)) != a4(=-0x1), and falls through when v0(=ret(ioctl)) == a4(=-0x1).
  The `bne` branch at 0x406834 targets 0x406848, is taken when v0(=ret(oserror)) != a5(=0x7), and falls through when v0(=ret(oserror)) == a5(=0x7).
  The `beq` branch at 0x406890 targets 0x4068a0 and is always taken.
  The return at 0x4068b0 has v0 = one of 0x0, 0x11, 0x15.

- `mvpTransferMode` in `usr/lib32/dmedia/video/mvp.so` at 0x4068c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x4068c0-0x406958 (152 bytes).
  It occupies 152 bytes.
  The `beq` branch at 0x4068d8 targets 0x406908, is taken when at(=a0) == v0(=0x65), and falls through when at(=a0) != v0(=0x65).
  The `beq` branch at 0x4068e8 targets 0x406918, is taken when v1(=a0) == a0(=0x66), and falls through when v1(=a0) != a0(=0x66).
  The `beq` branch at 0x4068f8 targets 0x406928, is taken when a1(=a0) == a2(=0x67), and falls through when a1(=a0) != a2(=0x67).
  The `beq` branch at 0x406900 targets 0x406938 and is always taken.
  The `beq` branch at 0x406910 targets 0x406944 and is always taken.
  The `beq` branch at 0x406920 targets 0x406944 and is always taken.
  The `beq` branch at 0x406930 targets 0x406944 and is always taken.
  The return at 0x406950 has v0 = one of -0x1, 0x65, 0x66, 0x67.

- `mvpBeginTransfer` in `usr/lib32/dmedia/video/mvp.so` at 0x406960 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x406960-0x406f34 (1492 bytes).
  It occupies 1492 bytes.
  The `lw` at 0x40698c loads 4 bytes from a1 (arg1 at entry) +0x68.
  2 such `lw` accesses load 4 bytes from [a1+104] +0x24, including `lw` at 0x4069c0, `lw` at 0x406f04.
  9 such `lw` accesses load 4 bytes from ?, including `lw` at 0x406ab8, `lw` at 0x406af4, `lw` at 0x406b18.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0x406ad8, `sw` at 0x406b40, `sw` at 0x406b68.
  2 such `lh` accesses load 2 bytes from ?, including `lh` at 0x406b70, `lh` at 0x406b80.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x406b78, `sh` at 0x406b88.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x406ba0, `ld` at 0x406c48.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x406ba8, `sd` at 0x406c84.
  The `lw` at 0x406da0 loads 4 bytes from [a1+104] +0x28.
  The `sw` at 0x406f10 stores 4 bytes to [a1+104] +0x24.
  The `jalr` at 0x4069b4 calls mvpAssertFail with a0=0x418608, a1=0x420180, a2=0x403, a3=a3 at entry (arg3).
  The `jalr` at 0x406a0c calls mvpAssertFail with a0=0x418630, a1=0x420180, a2=0x40c, a3=a2 at entry (arg2), a4=a3 at entry (arg3).
  The `jalr` at 0x406a60 calls mvpAssertFail with a0=0x420188, a1=0x420180, a2=0x41a, a3=a3 at entry (arg3).
  The `jalr` at 0x406a8c calls mvpAssertFail with a0=0x418640, a1=0x420180, a2=0x41b, a3=?.
  The `jalr` at 0x406ac0 calls mvpTransferMode with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406afc calls mvpErrPrintf with a0=[a1+104], a1=0x418668, a2=?, a3=?.
  The `jalr` at 0x406b30 calls mvpFromVLEventMask with a0=0x4000, a1=ret(mvpTransferMode), a2=?, a3=?, a4=0x10.
  The `jalr` at 0x406b58 calls mvpFromVLEventMask with a0=?, a1=ret(mvpTransferMode), a2=?, a3=?, a4=0x10.
  The `jalr` at 0x406be0 calls mvpErrPrintf with a0=[a1+104], a1=0x418688, a2=?, a3=?.
  The `jalr` at 0x406c70 calls mvpPrintf with a0=[a1+104], a1=0x418710, a2=?, a3=?.
  The `jalr` at 0x406cd4 calls mvpPrintf with a0=[a1+104], a1=0x418770, a2=?, a3=?.
  The `jalr` at 0x406d40 calls mvpSendPathControls with a0=[a1+104], a1=0x1, a2=0x0, a3=?.
  The `jalr` at 0x406d50 calls mvpBufferSize with a0=[a1+104], a1=?, a2=?, a3=?.
  The `jalr` at 0x406d94 calls mvpPrintf with a0=[a1+104], a1=0x4187e8, a2=?, a3=?, a4=ret(mvpBufferSize).
  The `jalr` at 0x406db4 calls ioctl with a0=[[a1+104]+40], a1=0x6d767004, a2=sp-584, a3=?.
  The `jalr` at 0x406dd0 calls oserror with a0=?, a1=-0x1, a2=?, a3=?.
  The `jalr` at 0x406dec calls mvpRevisionError with a0=?, a1=?, a2=0x7, a3=?.
  The `jalr` at 0x406df8 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406e0c calls strerror with a0=ret(oserror), a1=?, a2=?, a3=?.
  The `jalr` at 0x406e2c calls mvpErrPrintf with a0=[a1+104], a1=0x418810, a2=ret(strerror), a3=?.
  The `jalr` at 0x406e38 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x406998 targets 0x4069bc, is taken when at(=[a1+104]) != 0, and falls through when at(=[a1+104]) == 0.
  The `beq` branch at 0x4069c8 targets 0x4069e0, is taken when (a1(=[[a1+104]+36]) & 0x200) == 0, and falls through when (a1(=[[a1+104]+36]) & 0x200) != 0.
  The `beq` branch at 0x4069d8 targets 0x406f1c and is always taken.
  The `bne` branch at 0x4069e4 targets 0x406a40, is taken when a3(=a2) != 0, and falls through when a3(=a2) == 0.
  The `beq` branch at 0x4069f0 targets 0x406a14, is taken when a4(=a3) == 0, and falls through when a4(=a3) != 0.
  The `beq` branch at 0x406a38 targets 0x406d30 and is always taken.
  The `bne` branch at 0x406a48 targets 0x406a68, is taken when a3 != 0, and falls through when a3 == 0.
  The `bne` branch at 0x406a70 targets 0x406a94, is taken when a4(=a2) < 0x15 (signed), and falls through when a4(=a2) >= 0x15 (signed).
  The `blez` branch at 0x406aac targets 0x406d30, is taken when a1(=a2) <= 0 (signed), and falls through when a1(=a2) > 0 (signed).
  The `bgez` branch at 0x406adc targets 0x406b14, is taken when a1(=ret(mvpTransferMode)) >= 0 (signed), and falls through when a1(=ret(mvpTransferMode)) < 0 (signed).
  The `beq` branch at 0x406b0c targets 0x406f1c and is always taken.
  The `bne` branch at 0x406b20 targets 0x406b4c, is taken when a3(?) != a4(=0x10), and falls through when a3(?) == a4(=0x10).
  The `beq` branch at 0x406b44 targets 0x406b6c and is always taken.
  The `beq` branch at 0x406bb4 targets 0x406bf8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x406bc8 targets 0x406bf8, is taken when a7(?) == t0(=0x10000), and falls through when a7(?) != t0(=0x10000).
  The `beq` branch at 0x406bf0 targets 0x406f1c and is always taken.
  The `beq` branch at 0x406bf8 targets 0x406c34 and is always taken.
  The `bne` branch at 0x406c3c targets 0x406c54, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x406c4c targets 0x406c88, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x406c94 targets 0x406cf8, is taken when a4(?) != a5(=0x65), and falls through when a4(?) == a5(=0x65).
  The `bne` branch at 0x406ca4 targets 0x406cf8, is taken when a5(?) < 0x2 (signed), and falls through when a5(?) >= 0x2 (signed).
  The `bne` branch at 0x406cb0 targets 0x406cf8, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x406cf0 targets 0x406d30 and is always taken.
  The `bgtz` branch at 0x406d28 targets 0x406ab4, is taken when a4(?) > 0 (signed), and falls through when a4(?) <= 0 (signed).
  The `bne` branch at 0x406dc4 targets 0x406f00, is taken when v0(=ret(ioctl)) != a1(=-0x1), and falls through when v0(=ret(ioctl)) == a1(=-0x1).
  The `bne` branch at 0x406de0 targets 0x406df4, is taken when v0(=ret(oserror)) != a2(=0x7), and falls through when v0(=ret(oserror)) == a2(=0x7).
  The `beq` branch at 0x406e50 targets 0x406ea0, is taken when a2(=ret(oserror)) == a3(=0x6), and falls through when a2(=ret(oserror)) != a3(=0x6).
  The `beq` branch at 0x406e60 targets 0x406eb0, is taken when a4(=ret(oserror)) == a5(=0x47), and falls through when a4(=ret(oserror)) != a5(=0x47).
  The `beq` branch at 0x406e70 targets 0x406ec0, is taken when a6(=ret(oserror)) == a7(=0x10), and falls through when a6(=ret(oserror)) != a7(=0x10).
  The `beq` branch at 0x406e80 targets 0x406ed0, is taken when t0(=ret(oserror)) == t1(=0x13), and falls through when t0(=ret(oserror)) != t1(=0x13).
  The `beq` branch at 0x406e90 targets 0x406ee0, is taken when t2(=ret(oserror)) == t3(=0xd), and falls through when t2(=ret(oserror)) != t3(=0xd).
  The `beq` branch at 0x406e98 targets 0x406ef0 and is always taken.
  The `beq` branch at 0x406ea8 targets 0x406f1c and is always taken.
  The `beq` branch at 0x406eb8 targets 0x406f1c and is always taken.
  The `beq` branch at 0x406ec8 targets 0x406f1c and is always taken.
  The `beq` branch at 0x406ed8 targets 0x406f1c and is always taken.
  The `beq` branch at 0x406ee8 targets 0x406f1c and is always taken.
  The `beq` branch at 0x406ef8 targets 0x406f1c and is always taken.
  The return at 0x406f2c has v0 = one of 0x3, 0x2, 0x6, 0xa, 0x13, 0x15, 0x11, 0x0.
  The instructions from 0x406c00 to 0x406c30 are not reached by any path from the entry, and their branches are not listed.

- `mvpEndTransfer` in `usr/lib32/dmedia/video/mvp.so` at 0x406f40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x406f40-0x407098 (344 bytes).
  It occupies 344 bytes.
  The `lw` at 0x406f64 loads 4 bytes from a1 (arg1 at entry) +0x68.
  The `lw` at 0x406fc0 loads 4 bytes from [a1+104] +0x28.
  The `lw` at 0x407064 loads 4 bytes from [a1+104] +0x24.
  The `sw` at 0x407074 stores 4 bytes to [a1+104] +0x24.
  The `jalr` at 0x406f8c calls mvpAssertFail with a0=0x418248, a1=0x420180, a2=0x483, a3=a3 at entry (arg3).
  The `jalr` at 0x406fb4 calls mvpPrintf with a0=[a1+104], a1=0x418828, a2=0x1f0, a3=0x192.
  The `jalr` at 0x406fd4 calls ioctl with a0=[[a1+104]+40], a1=0x6d767004, a2=sp-552, a3=?.
  The `jalr` at 0x406ff0 calls oserror with a0=?, a1=-0x1, a2=?, a3=?.
  The `jalr` at 0x40700c calls mvpRevisionError with a0=?, a1=?, a2=0x7, a3=?.
  The `jalr` at 0x407018 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40702c calls strerror with a0=ret(oserror), a1=?, a2=?, a3=?.
  The `jalr` at 0x407048 calls mvpErrPrintf with a0=[a1+104], a1=0x418838, a2=ret(strerror), a3=?.
  The `bne` branch at 0x406f70 targets 0x406f94, is taken when at(=[a1+104]) != 0, and falls through when at(=[a1+104]) == 0.
  The `bne` branch at 0x406fe4 targets 0x407060, is taken when v0(=ret(ioctl)) != a1(=-0x1), and falls through when v0(=ret(ioctl)) == a1(=-0x1).
  The `bne` branch at 0x407000 targets 0x407014, is taken when v0(=ret(oserror)) != a2(=0x7), and falls through when v0(=ret(oserror)) == a2(=0x7).
  The `beq` branch at 0x407058 targets 0x407080 and is always taken.
  The return at 0x407090 has v0 = one of 0x0, 0x11.

- `mvpGetStatus` in `usr/lib32/dmedia/video/mvp.so` at 0x4070a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x4070a0-0x4071ac (268 bytes).
  It occupies 268 bytes.
  The `sh` at 0x4070e8 stores 2 bytes to a1 (arg1 at entry) +0x0.
  The `sh` at 0x4070f4 stores 2 bytes to a1 (arg1 at entry) +0x2.
  The `sw` at 0x407100 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `lw` at 0x407108 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jalr` at 0x4070dc calls mvpAssertFail with a0=0x420190, a1=0x420180, a2=0x4bd, a3=a3 at entry (arg3).
  The `jalr` at 0x40711c calls ioctl with a0=[a0+40], a1=0x6d767001, a2=a1 at entry (arg1), a3=0x20, a4=a1 at entry (arg1), a5=a1 at entry (arg1).
  The `jalr` at 0x40713c calls oserror with a0=?, a1=?, a2=?, a3=?, a6=ret(ioctl).
  The `jalr` at 0x407158 calls mvpRevisionError with a0=?, a1=?, a2=?, a3=?, a7=0x7.
  The `bgezall` at 0x407174 calls mvpPerror [0x4040e0] with a0=a0 at entry (arg0), a1=0x418850, a2=?, a3=?.
  The `bne` branch at 0x4070c4 targets 0x4070e4, is taken when at(=a0) != 0, and falls through when at(=a0) == 0.
  The `bgez` branch at 0x407130 targets 0x40718c, is taken when a6(=ret(ioctl)) >= 0 (signed), and falls through when a6(=ret(ioctl)) < 0 (signed).
  The `bne` branch at 0x40714c targets 0x407160, is taken when v0(=ret(oserror)) != a7(=0x7), and falls through when v0(=ret(oserror)) == a7(=0x7).
  The `beq` branch at 0x407184 targets 0x407194 and is always taken.
  The return at 0x4071a4 has v0 = one of ret(ioctl), 0x0.

- `mvpCheckStatus` in `usr/lib32/dmedia/video/mvp.so` at 0x4071b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x4071b0-0x40729c (236 bytes).
  It occupies 236 bytes.
  The `jalr` at 0x4071f0 calls mvpAssertFail with a0=0x420190, a1=0x420180, a2=0x4d6, a3=a3 at entry (arg3).
  The `jalr` at 0x407220 calls mvpPrintf with a0=a0 at entry (arg0), a1=0x418870, a2=a1 at entry (arg1), a3=0x1.
  The `jalr` at 0x40723c calls mvpGetStatus with a0=a0 at entry (arg0), a1=sp-72, a2=?, a3=?.
  The `jalr` at 0x407274 calls mvpPrintf with a0=a0 at entry (arg0), a1=0x4188c8, a2=?, a3=?.
  The `bne` branch at 0x4071d8 targets 0x4071f8, is taken when at(=a0) != 0, and falls through when at(=a0) == 0.
  The `beq` branch at 0x407200 targets 0x407230, is taken when v1(=a1) == a0(=0x1), and falls through when v1(=a1) != a0(=0x1).
  The `bne` branch at 0x407244 targets 0x407284, is taken when v0(=ret(mvpGetStatus)) != 0, and falls through when v0(=ret(mvpGetStatus)) == 0.
  The `beq` branch at 0x407254 targets 0x407284, is taken when a3(?) == a4(?), and falls through when a3(?) != a4(?).
  The return at 0x407294 has v0 = one of 0x0, 0x47.

- `mvpCharStatus` in `usr/lib32/dmedia/video/mvp.so` at 0x4072a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x4072a0-0x407354 (180 bytes).
  It occupies 180 bytes.
  The `beq` branch at 0x4072b4 targets 0x4072d0, is taken when (at(=a0) & 0x8) == 0, and falls through when (at(=a0) & 0x8) != 0.
  The `beq` branch at 0x4072c8 targets 0x407340 and is always taken.
  The `beq` branch at 0x4072d8 targets 0x4072f0, is taken when (v1(=a0) & 0x4) == 0, and falls through when (v1(=a0) & 0x4) != 0.
  The `beq` branch at 0x4072e8 targets 0x407340 and is always taken.
  The `beq` branch at 0x4072f8 targets 0x407314, is taken when (a1(=a0) & 0x2) == 0, and falls through when (a1(=a0) & 0x2) != 0.
  The `beq` branch at 0x40730c targets 0x407340 and is always taken.
  The `beq` branch at 0x40731c targets 0x407334, is taken when (a3(=a0) & 0x1) == 0, and falls through when (a3(=a0) & 0x1) != 0.
  The `beq` branch at 0x40732c targets 0x407340 and is always taken.
  The return at 0x40734c has v0 = one of 0x418908, 0x420198, 0x418918, 0x4201a0, 0x4201a8.

- `mvpShowStatus` in `usr/lib32/dmedia/video/mvp.so` at 0x407360 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x407360-0x4073ec (140 bytes).
  It occupies 140 bytes.
  The `jalr` at 0x407398 calls mvpAssertFail with a0=0x420190, a1=0x420180, a2=0x4ff, a3=a3 at entry (arg3).
  The `jalr` at 0x4073ac calls mvpGetStatus with a0=a0 at entry (arg0), a1=sp-64, a2=?, a3=?.
  The `jalr` at 0x4073d0 calls printf with a0=0x418928, a1=?, a2=?, a3=?.
  The `bne` branch at 0x407380 targets 0x4073a0, is taken when at(=a0) != 0, and falls through when at(=a0) == 0.
  The `bne` branch at 0x4073b4 targets 0x4073d8, is taken when v0(=ret(mvpGetStatus)) != 0, and falls through when v0(=ret(mvpGetStatus)) == 0.
  The return at 0x4073e4 has v0 = one of ret(mvpGetStatus), ret(printf).

- `mvpfromvltiming` in `usr/lib32/dmedia/video/mvp.so` at 0x4073f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x4073f0-0x407818 (1064 bytes).
  It occupies 1064 bytes.
  The `lbu` at 0x407408 loads 1 byte from a0 (arg0 at entry) +0x49.
  The `lbu` at 0x407420 loads 1 byte from ?.
  The `lw` at 0x407460 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `lbu` at 0x407464 loads 1 byte from [a0+280] +0x125.
  The `jalr` at 0x4077fc calls mvpPrintf with a0=a0 at entry (arg0), a1=0x418988, a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x40743c targets 0x40745c, is taken when at(?) == v0(=0x1), and falls through when at(?) != v0(=0x1).
  The `beq` branch at 0x40744c targets 0x4074a4, is taken when a3(?) == a4(=0x9), and falls through when a3(?) != a4(=0x9).
  The `beq` branch at 0x407454 targets 0x407534 and is always taken.
  The `beq` branch at 0x407474 targets 0x407484, is taken when a6(=a1) == 0, and falls through when a6(=a1) != 0.
  The `beq` branch at 0x40747c targets 0x407494 and is always taken.
  The `beq` branch at 0x40748c targets 0x407494 and is always taken.
  The `beq` branch at 0x407494 targets 0x40749c and is always taken.
  The `beq` branch at 0x40749c targets 0x4077e0 and is always taken.
  The `beq` branch at 0x4074ac targets 0x4074ec, is taken when t0(=a1) == 0, and falls through when t0(=a1) != 0.
  The `beq` branch at 0x4074bc targets 0x4074fc, is taken when t1(=a1) == t2(=0x1), and falls through when t1(=a1) != t2(=0x1).
  The `beq` branch at 0x4074cc targets 0x40750c, is taken when t3(=a1) == t8(=0x2), and falls through when t3(=a1) != t8(=0x2).
  The `beq` branch at 0x4074dc targets 0x40751c, is taken when t9(=a1) == ra(=0x3), and falls through when t9(=a1) != ra(=0x3).
  The `beq` branch at 0x4074e4 targets 0x40752c and is always taken.
  The `beq` branch at 0x4074f4 targets 0x40752c and is always taken.
  The `beq` branch at 0x407504 targets 0x40752c and is always taken.
  The `beq` branch at 0x407514 targets 0x40752c and is always taken.
  The `beq` branch at 0x407524 targets 0x40752c and is always taken.
  The `beq` branch at 0x40752c targets 0x4077e0 and is always taken.
  The `bne` branch at 0x407548 targets 0x407570, is taken when a1 < a2(=0x4d560010) (signed), and falls through when a1 >= a2(=0x4d560010) (signed).
  The `bne` branch at 0x407560 targets 0x40763c, is taken when a3(=0x4d560010) < a4(=a1) (signed), and falls through when a3(=0x4d560010) >= a4(=a1) (signed).
  The `beq` branch at 0x407568 targets 0x407778 and is always taken.
  The `bne` branch at 0x407578 targets 0x407598, is taken when a4(=a1) < 0x3 (signed), and falls through when a4(=a1) >= 0x3 (signed).
  The `beq` branch at 0x407588 targets 0x4075e8, is taken when a5(=a1) >= 0x4 (signed), and falls through when a5(=a1) < 0x4 (signed).
  The `beq` branch at 0x407590 targets 0x40772c and is always taken.
  The `blez` branch at 0x40759c targets 0x4075bc, is taken when a6(=a1) <= 0 (signed), and falls through when a6(=a1) > 0 (signed).
  The `beq` branch at 0x4075ac targets 0x4075d0, is taken when a7(=a1) >= 0x2 (signed), and falls through when a7(=a1) < 0x2 (signed).
  The `beq` branch at 0x4075b4 targets 0x407748 and is always taken.
  The `bne` branch at 0x4075c0 targets 0x4077d8, is taken when t0(=a1) != 0, and falls through when t0(=a1) == 0.
  The `beq` branch at 0x4075c8 targets 0x40773c and is always taken.
  The `bne` branch at 0x4075d8 targets 0x4077d8, is taken when t1(=a1) != t2(=0x2), and falls through when t1(=a1) == t2(=0x2).
  The `beq` branch at 0x4075e0 targets 0x40771c and is always taken.
  The `bne` branch at 0x4075f8 targets 0x407620, is taken when t3(=a1) < t8(=0x4d56000f) (signed), and falls through when t3(=a1) >= t8(=0x4d56000f) (signed).
  The `bne` branch at 0x407610 targets 0x4077d8, is taken when t9(=0x4d56000f) < ra(=a1) (signed), and falls through when t9(=0x4d56000f) >= ra(=a1) (signed).
  The `beq` branch at 0x407618 targets 0x407768 and is always taken.
  The `bne` branch at 0x40762c targets 0x4077d8, is taken when ra(=a1) != at(=0x4d56000e), and falls through when ra(=a1) == at(=0x4d56000e).
  The `beq` branch at 0x407634 targets 0x407758 and is always taken.
  The `bne` branch at 0x40764c targets 0x407674, is taken when v0(=a1) < v1(=0x4d560013) (signed), and falls through when v0(=a1) >= v1(=0x4d560013) (signed).
  The `bne` branch at 0x407664 targets 0x4076c8, is taken when a0(=0x4d560013) < a1 (signed), and falls through when a0(=0x4d560013) >= a1 (signed).
  The `beq` branch at 0x40766c targets 0x4077a8 and is always taken.
  The `bne` branch at 0x407684 targets 0x4076ac, is taken when a1 < a2(=0x4d560012) (signed), and falls through when a1 >= a2(=0x4d560012) (signed).
  The `bne` branch at 0x40769c targets 0x4077d8, is taken when a3(=0x4d560012) < a4(=a1) (signed), and falls through when a3(=0x4d560012) >= a4(=a1) (signed).
  The `beq` branch at 0x4076a4 targets 0x407798 and is always taken.
  The `bne` branch at 0x4076b8 targets 0x4077d8, is taken when a4(=a1) != a5(=0x4d560011), and falls through when a4(=a1) == a5(=0x4d560011).
  The `beq` branch at 0x4076c0 targets 0x407788 and is always taken.
  The `bne` branch at 0x4076d8 targets 0x407700, is taken when a6(=a1) < a7(=0x4d560015) (signed), and falls through when a6(=a1) >= a7(=0x4d560015) (signed).
  The `bne` branch at 0x4076f0 targets 0x4077d8, is taken when t0(=0x4d560015) < t1(=a1) (signed), and falls through when t0(=0x4d560015) >= t1(=a1) (signed).
  The `beq` branch at 0x4076f8 targets 0x4077c8 and is always taken.
  The `bne` branch at 0x40770c targets 0x4077d8, is taken when t1(=a1) != t2(=0x4d560014), and falls through when t1(=a1) == t2(=0x4d560014).
  The `beq` branch at 0x407714 targets 0x4077b8 and is always taken.
  The `beq` branch at 0x407724 targets 0x4077d8 and is always taken.
  The `beq` branch at 0x407734 targets 0x4077d8 and is always taken.
  The `beq` branch at 0x407740 targets 0x4077d8 and is always taken.
  The `beq` branch at 0x407750 targets 0x4077d8 and is always taken.
  The `beq` branch at 0x407760 targets 0x4077d8 and is always taken.
  The `beq` branch at 0x407770 targets 0x4077d8 and is always taken.
  The `beq` branch at 0x407780 targets 0x4077d8 and is always taken.
  The `beq` branch at 0x407790 targets 0x4077d8 and is always taken.
  The `beq` branch at 0x4077a0 targets 0x4077d8 and is always taken.
  The `beq` branch at 0x4077b0 targets 0x4077d8 and is always taken.
  The `beq` branch at 0x4077c0 targets 0x4077d8 and is always taken.
  The `beq` branch at 0x4077d0 targets 0x4077d8 and is always taken.
  The `beq` branch at 0x4077d8 targets 0x4077e0 and is always taken.
  The return at 0x407810 has v0 = ?.

- `mvpSetFields` in `usr/lib32/dmedia/video/mvp.so` at 0x407820 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x407820-0x4078d0 (176 bytes).
  It occupies 176 bytes.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x121, including `lbu` at 0x407830, `lbu` at 0x4078a0.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x122, including `sb` at 0x407848, `sb` at 0x407858.
  The `lbu` at 0x407860 loads 1 byte from a0 (arg0 at entry) +0x128.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x129, including `sb` at 0x407878, `sb` at 0x40788c.
  The `lbu` at 0x4078a8 loads 1 byte from a0 (arg0 at entry) +0x122.
  The `lbu` at 0x4078b0 loads 1 byte from a0 (arg0 at entry) +0x129.
  The `jalr` at 0x4078b8 calls mvpPrintf with a0=a0 at entry (arg0), a1=0x4189a8, a2=[a0+289]:1, a3=[a0+290]:1, a4=[a0+297]:1.
  The `bne` branch at 0x407838 targets 0x407854, is taken when at(=[a0+289]:1) != v0(=0x1), and falls through when at(=[a0+289]:1) == v0(=0x1).
  The `beq` branch at 0x40784c targets 0x40785c and is always taken.
  The `bne` branch at 0x40786c targets 0x407884, is taken when a1(?) != a2(=0x1), and falls through when a1(?) == a2(=0x1).
  The `beq` branch at 0x40787c targets 0x407890 and is always taken.
  The return at 0x4078c8 has v0 = ret(mvpPrintf).

- `mvpSetTiming` in `usr/lib32/dmedia/video/mvp.so` at 0x407a10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x407a10-0x407cc8 (696 bytes).
  It occupies 696 bytes.
  The `sb` at 0x407a4c stores 1 byte to a0 (arg0 at entry) +0x128.
  4 such `lh` accesses load 2 bytes from ?, including `lh` at 0x407a90, `lh` at 0x407a9c, `lh` at 0x407be8.
  The `lbu` at 0x407ac0 loads 1 byte from a0 (arg0 at entry) +0x157.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x132, including `sh` at 0x407af0, `sh` at 0x407bb8.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x134, including `sh` at 0x407af8, `sh` at 0x407bd8.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x13a, including `sh` at 0x407b30, `sh` at 0x407bf0.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x13c, including `sh` at 0x407b68, `sh` at 0x407c0c.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x13e, including `sh` at 0x407b70, `sh` at 0x407bc0.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x140, including `sh` at 0x407b78, `sh` at 0x407be0.
  The `lh` at 0x407b80 loads 2 bytes from a0 (arg0 at entry) +0x13a.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x142, including `sh` at 0x407b88, `sh` at 0x407bf8.
  The `lh` at 0x407b90 loads 2 bytes from a0 (arg0 at entry) +0x13c.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x144, including `sh` at 0x407b98, `sh` at 0x407c14.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x407ba8, `lbu` at 0x407bc8, `lbu` at 0x407c8c.
  The `sh` at 0x407c1c stores 2 bytes to a0 (arg0 at entry) +0x136.
  The `sh` at 0x407c24 stores 2 bytes to a0 (arg0 at entry) +0x138.
  The `sb` at 0x407c2c stores 1 byte to a0 (arg0 at entry) +0x12b.
  The `sb` at 0x407c34 stores 1 byte to a0 (arg0 at entry) +0x12c.
  The `sh` at 0x407c40 stores 2 bytes to a0 (arg0 at entry) +0x14e.
  The `sh` at 0x407c4c stores 2 bytes to a0 (arg0 at entry) +0x150.
  The `sh` at 0x407c58 stores 2 bytes to a0 (arg0 at entry) +0x152.
  The `sh` at 0x407c64 stores 2 bytes to a0 (arg0 at entry) +0x154.
  The `sh` at 0x407c70 stores 2 bytes to a0 (arg0 at entry) +0x146.
  The `sh` at 0x407c7c stores 2 bytes to a0 (arg0 at entry) +0x148.
  The `sb` at 0x407c84 stores 1 byte to a0 (arg0 at entry) +0x12d.
  The `sh` at 0x407c94 stores 2 bytes to a0 (arg0 at entry) +0x14a.
  The `sh` at 0x407ca0 stores 2 bytes to a0 (arg0 at entry) +0x14c.
  The `jalr` at 0x407a64 calls mvpPrintf with a0=a0 at entry (arg0), a1=0x418a08, a2=a1 at entry (arg1), a3=a0 at entry (arg0), a6=a1 at entry (arg1).
  The `jalr` at 0x407a74 calls mvpRead with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0x407ab4 calls mvpGetCFI [0x4079c0] with a0=a0 at entry (arg0), a1=sp-192, a2=?, a3=?, a6=0x2.
  The `bgezall` at 0x407cb0 calls mvpSetFields [0x407820] with a0=a0 at entry (arg0), a1=a0 at entry (arg0), a2=0x1, a3=a0 at entry (arg0), a4=0x1, a5=a0 at entry (arg0), a6=0x1, a7=a0 at entry (arg0).
  The `bne` branch at 0x407a84 targets 0x407ba4, is taken when v0(=ret(mvpRead)) != a6(=0x2), and falls through when v0(=ret(mvpRead)) == a6(=0x2).
  The `beq` branch at 0x407ac4 targets 0x407aec, is taken when v0(=[a0+343]:1) == 0, and falls through when v0(=[a0+343]:1) != 0.
  The `bne` branch at 0x407b08 targets 0x407b20, is taken when a2(?) < a3(?) (signed), and falls through when a2(?) >= a3(?) (signed).
  The `beq` branch at 0x407b18 targets 0x407b28 and is always taken.
  The `bne` branch at 0x407b40 targets 0x407b58, is taken when t0(?) < t1(?) (signed), and falls through when t0(?) >= t1(?) (signed).
  The `beq` branch at 0x407b50 targets 0x407b60 and is always taken.
  The `beq` branch at 0x407b9c targets 0x407c18 and is always taken.
  The return at 0x407cc0 has v0 = ret(mvpSetFields).

- `mvpSetScale` in `usr/lib32/dmedia/video/mvp.so` at 0x407d90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x407d90-0x4080c8 (824 bytes).
  It occupies 824 bytes.
  The `lw` at 0x408058 loads 4 bytes from sym(mvpregtrace) +0x0.
  The `jalr` at 0x408084 calls mvpPrintf with a0=a0 at entry (arg0), a1=0x418a18, a2=?, a3=?, a4=a3 at entry (arg3).
  The `bne` branch at 0x407dc4 targets 0x407ddc, is taken when at(=a1) != v0(=a2), and falls through when at(=a1) == v0(=a2).
  The `beq` branch at 0x407dd4 targets 0x4080b0 and is always taken.
  The `beq` branch at 0x407de0 targets 0x407e10, is taken when a1(=a3) == 0, and falls through when a1(=a3) != 0.
  The `bgez` branch at 0x407e14 targets 0x407e30, is taken when a6(?) >= 0 (signed), and falls through when a6(?) < 0 (signed).
  The `bgez` branch at 0x407e34 targets 0x407e58, is taken when t1(?) >= 0 (signed), and falls through when t1(?) < 0 (signed).
  The `blez` branch at 0x407eb0 targets 0x407ec8, is taken when t9(?) <= 0 (signed), and falls through when t9(?) > 0 (signed).
  The `bne` branch at 0x407ec0 targets 0x407ed8, is taken when v1(?) < 0x100 (signed), and falls through when v1(?) >= 0x100 (signed).
  The `beq` branch at 0x407ed0 targets 0x4080b0 and is always taken.
  The `beq` branch at 0x407f10 targets 0x407f64, is taken when a1(?) >= a2(?) (signed), and falls through when a1(?) < a2(?) (signed).
  The `bne` branch at 0x407f5c targets 0x407f18, is taken when a3(?) < a4(?) (signed), and falls through when a3(?) >= a4(?) (signed).
  The `beq` branch at 0x407f9c targets 0x407ff0, is taken when a6(?) >= a7(?) (signed), and falls through when a6(?) < a7(?) (signed).
  The `bne` branch at 0x407fe8 targets 0x407fa4, is taken when t1(?) < t2(?) (signed), and falls through when t1(?) >= t2(?) (signed).
  The `blez` branch at 0x407ff4 targets 0x40804c, is taken when t9(?) <= 0 (signed), and falls through when t9(?) > 0 (signed).
  The `beq` branch at 0x408004 targets 0x40804c, is taken when ra(?) >= 0x100 (signed), and falls through when ra(?) < 0x100 (signed).
  The `beq` branch at 0x408044 targets 0x408054, is taken when at(?) >= v0(?) (signed), and falls through when at(?) < v0(?) (signed).
  The `beq` branch at 0x40805c targets 0x40808c, is taken when a0(=[sym(mvpregtrace)]) == 0, and falls through when a0(=[sym(mvpregtrace)]) != 0.
  The `beq` branch at 0x408090 targets 0x4080a4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The return at 0x4080c0 has v0 = one of 0x100, -0x1, ?.

- `mvpSendPathEvent` in `usr/lib32/dmedia/video/mvp.so` at 0x4081b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x4081b0-0x408298 (232 bytes).
  It occupies 232 bytes.
  The `lw` at 0x408254 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `lw` at 0x408258 loads 4 bytes from [a0+56] +0x38.
  The `jalr` at 0x408230 calls bcopy with a0=a1 at entry (arg1), a1=sp-288, a2=0x90, a3=0x1f7, a4=sp-424, a5=0xa, a6=sp-424, a7=sp-288.
  The `jalr` at 0x408248 calls mvpPrintf with a0=a0 at entry (arg0), a1=0x418a60, a2=?, a3=?.
  The `jalr` at 0x408264 calls dmFifoEnq with a0=[[a0+56]+56], a1=sp-424, a2=?, a3=?.
  The `jalr` at 0x408280 calls mvpPanic with a0=0x418a80, a1=?, a2=?, a3=?.
  The `beq` branch at 0x40826c targets 0x408288, is taken when v0(=ret(dmFifoEnq)) == 0, and falls through when v0(=ret(dmFifoEnq)) != 0.
  The return at 0x408290 has v0 = one of ret(dmFifoEnq), ret(mvpPanic).

- `mvpFromVLControlValue` in `usr/lib32/dmedia/video/mvp.so` at 0x4082a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x4082a0-0x408458 (440 bytes).
  It occupies 440 bytes.
  The `lw` at 0x4082d4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x4082d8 loads 4 bytes from [a1+8] +0x4.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x4082e0, `sw` at 0x408428.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x10, including `lw` at 0x4082e8, `lw` at 0x4082fc, `lw` at 0x4083fc.
  3 such `lw` accesses load 4 bytes from [a1+16] +0x8, including `lw` at 0x4082ec, `lw` at 0x408300, `lw` at 0x408400.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `sw` at 0x4082f4, `sw` at 0x408434.
  5 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc, including `lw` at 0x408370, `lw` at 0x408384, `lw` at 0x4083a0.
  3 such `lw` accesses load 4 bytes from [a1+12] +0x0, including `lw` at 0x408374, `lw` at 0x4083a4, `lw` at 0x4083c0.
  2 such `sh` accesses store 2 bytes to a2 (arg2 at entry) +0x8, including `sh` at 0x40837c, `sh` at 0x4083c8.
  2 such `lw` accesses load 4 bytes from [a1+12] +0x4, including `lw` at 0x408388, `lw` at 0x4083d4.
  2 such `sh` accesses store 2 bytes to a2 (arg2 at entry) +0xa, including `sh` at 0x408390, `sh` at 0x4083dc.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `sw` at 0x4083ac, `sw` at 0x408440.
  The `jalr` at 0x408408 calls mvpPanic with a0=0x418aa0, a1=[[a1+16]+8], a2=[[a1+16]+8], a3=0x2, a4=[[a1+16]+8], a5=0x3, a6=[[a1+16]+8], a7=0x4.
  The `beq` branch at 0x4082c8 targets 0x408420, is taken when at(=a1) == 0, and falls through when at(=a1) != 0.
  The `beq` branch at 0x40830c targets 0x40836c, is taken when v1(=[[a1+16]+8]) == a0(=0x1), and falls through when v1(=[[a1+16]+8]) != a0(=0x1).
  The `beq` branch at 0x40831c targets 0x40839c, is taken when a2(=[[a1+16]+8]) == a3(=0x2), and falls through when a2(=[[a1+16]+8]) != a3(=0x2).
  The `beq` branch at 0x40832c targets 0x40839c, is taken when a4(=[[a1+16]+8]) == a5(=0x3), and falls through when a4(=[[a1+16]+8]) != a5(=0x3).
  The `beq` branch at 0x40833c targets 0x40839c, is taken when a6(=[[a1+16]+8]) == a7(=0x4), and falls through when a6(=[[a1+16]+8]) != a7(=0x4).
  The `beq` branch at 0x40834c targets 0x4083b8, is taken when t0(=[[a1+16]+8]) == t1(=0x5), and falls through when t0(=[[a1+16]+8]) != t1(=0x5).
  The `beq` branch at 0x40835c targets 0x4083e8, is taken when t2(=[[a1+16]+8]) == t3(=0xb), and falls through when t2(=[[a1+16]+8]) != t3(=0xb).
  The `beq` branch at 0x408364 targets 0x4083f0 and is always taken.
  The `beq` branch at 0x408394 targets 0x408418 and is always taken.
  The `beq` branch at 0x4083b0 targets 0x408418 and is always taken.
  The `beq` branch at 0x4083e0 targets 0x408418 and is always taken.
  The `beq` branch at 0x4083e8 targets 0x408418 and is always taken.
  The `beq` branch at 0x408410 targets 0x408418 and is always taken.
  The `beq` branch at 0x408418 targets 0x408444 and is always taken.
  The return at 0x408450 has v0 = one of ?, 0x1fc68.

- `mvpSendPathControls` in `usr/lib32/dmedia/video/mvp.so` at 0x408460 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x408460-0x408638 (472 bytes).
  It occupies 472 bytes.
  The `lw` at 0x4084f0 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lw` at 0x4084f4 loads 4 bytes from [a2] +0x8.
  The `lw` at 0x408528 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x408574 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jalr` at 0x40848c calls mvpUpdateRegs with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4084d8 calls mvpFromVLControlValue with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=sp-212, a3=?.
  The `jalr` at 0x408510 calls bcopy with a0=a0+288, a1=sp-192, a2=0x78, a3=?.
  The `bgezall` at 0x408548 calls mvpSendPathEvent [0x4081b0] with a0=a0 at entry (arg0), a1=sp-216, a2=?, a3=?.
  The `jalr` at 0x408568 calls mvpPrintf with a0=a0 at entry (arg0), a1=0x418ac0, a2=?, a3=?.
  The `jalr` at 0x408588 calls ioctl with a0=[a0+40], a1=0x6d767005, a2=sp-216, a3=?.
  The `jalr` at 0x4085a4 calls oserror with a0=?, a1=-0x1, a2=?, a3=?.
  The `jalr` at 0x4085c0 calls mvpRevisionError with a0=?, a1=?, a2=0x7, a3=?.
  The `jalr` at 0x4085cc calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4085e0 calls strerror with a0=ret(oserror), a1=?, a2=?, a3=?.
  The `jalr` at 0x408600 calls mvpPrintf with a0=a0 at entry (arg0), a1=0x4201d8, a2=sym(mvpSendPathControls), a3=ret(strerror).
  The `beq` branch at 0x4084a0 targets 0x4084b8, is taken when v0(=ret(mvpUpdateRegs)) == 0, and falls through when v0(=ret(mvpUpdateRegs)) != 0.
  The `beq` branch at 0x4084b0 targets 0x408620 and is always taken.
  The `beq` branch at 0x4084e4 targets 0x4084fc, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x40851c targets 0x408558, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x408530 targets 0x408558, is taken when (a2(=[a0+36]) & 0x1000) == 0, and falls through when (a2(=[a0+36]) & 0x1000) != 0.
  The `beq` branch at 0x408550 targets 0x408618 and is always taken.
  The `bne` branch at 0x408598 targets 0x408618, is taken when v0(=ret(ioctl)) != a1(=-0x1), and falls through when v0(=ret(ioctl)) == a1(=-0x1).
  The `bne` branch at 0x4085b4 targets 0x4085c8, is taken when v0(=ret(oserror)) != a2(=0x7), and falls through when v0(=ret(oserror)) == a2(=0x7).
  The `beq` branch at 0x408610 targets 0x408620 and is always taken.
  The return at 0x408630 has v0 = one of ret(mvpUpdateRegs), 0x11, 0x0.

- `mvpSetupPathControls` in `usr/lib32/dmedia/video/mvp.so` at 0x408640 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x408640-0x408910 (720 bytes).
  It occupies 720 bytes.
  The `lw` at 0x408660 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `lbu` at 0x4086ac loads 1 byte from a0 (arg0 at entry) +0x49.
  8 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x4086c4, `lbu` at 0x408728, `lbu` at 0x4087c0.
  3 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x128, including `sb` at 0x408730, `sb` at 0x4087c8, `sb` at 0x408838.
  3 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x125, including `sb` at 0x40873c, `sb` at 0x408808, `sb` at 0x408878.
  3 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x12a, including `sb` at 0x408748, `sb` at 0x4087e8, `sb` at 0x408858.
  3 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x121, including `sb` at 0x408754, `sb` at 0x408810, `sb` at 0x408880.
  The `sb` at 0x408768 stores 1 byte to a0 (arg0 at entry) +0x15b.
  The `lbu` at 0x408780 loads 1 byte from table(0x41a830) +0x0.
  The `sb` at 0x408788 stores 1 byte to a0 (arg0 at entry) +0x15d.
  The `lbu` at 0x4087a0 loads 1 byte from table(0x41a831) +0x0.
  The `sb` at 0x4087a8 stores 1 byte to a0 (arg0 at entry) +0x15c.
  The `sb` at 0x408894 stores 1 byte to a0 (arg0 at entry) +0x120.
  The `sb` at 0x40889c stores 1 byte to a0 (arg0 at entry) +0x126.
  The `sb` at 0x4088a4 stores 1 byte to a0 (arg0 at entry) +0x127.
  The `sw` at 0x4088b0 stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `lbu` at 0x4088bc loads 1 byte from a0 (arg0 at entry) +0x128.
  The `jalr` at 0x40868c calls mvpAssertFail with a0=0x418ae0, a1=0x418af8, a2=0x226, a3=a3 at entry (arg3).
  The `jalr` at 0x40869c calls mvpGetDeviceControls with a0=[a0+280], a1=?, a2=?, a3=?.
  The `jalr` at 0x4086d4 calls mvpRead with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+73]:1.
  The `bgezall` at 0x4088c8 calls mvpSetTiming [0x407a10] with a0=a0 at entry (arg0), a1=[a0+296]:1, a2=0x16, a3=a0 at entry (arg0), a4=a0 at entry (arg0), a5=a0 at entry (arg0), a6=0xff, a7=a0 at entry (arg0).
  The `jalr` at 0x4088d8 calls mvpUpdateRegs with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x4088f0 calls mvpSendPathControls with a0=a0 at entry (arg0), a1=0x0, a2=0x0, a3=?.
  The `bne` branch at 0x40866c targets 0x408694, is taken when at(=[a0+280]) != 0, and falls through when at(=[a0+280]) == 0.
  The `beq` branch at 0x4086e8 targets 0x408714, is taken when a4(=ret(mvpRead)) == a5(=0x2), and falls through when a4(=ret(mvpRead)) != a5(=0x2).
  The `beq` branch at 0x4086f8 targets 0x408760, is taken when a6(=ret(mvpRead)) == a7(=0x1), and falls through when a6(=ret(mvpRead)) != a7(=0x1).
  The `beq` branch at 0x408704 targets 0x40881c, is taken when t0(=ret(mvpRead)) == 0, and falls through when t0(=ret(mvpRead)) != 0.
  The `beq` branch at 0x40870c targets 0x40888c and is always taken.
  The `beq` branch at 0x408758 targets 0x40888c and is always taken.
  The `beq` branch at 0x408814 targets 0x40888c and is always taken.
  The `beq` branch at 0x408884 targets 0x40888c and is always taken.
  The return at 0x408908 has v0 = 0x0.

- `mvpMipmapMode` in `usr/lib32/dmedia/video/mvp.so` at 0x408910 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x408910-0x4089dc (204 bytes).
  It occupies 204 bytes.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x13c, including `lh` at 0x408920, `lh` at 0x40896c.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x121, including `lbu` at 0x408934, `lbu` at 0x408980.
  The `bne` branch at 0x408928 targets 0x408968, is taken when at(=[a0+316]:2) != v0(=0x100), and falls through when at(=[a0+316]:2) == v0(=0x100).
  The `bne` branch at 0x408938 targets 0x408950, is taken when v0(=[a0+289]:1) != 0, and falls through when v0(=[a0+289]:1) == 0.
  The `beq` branch at 0x408948 targets 0x4089c8 and is always taken.
  The `beq` branch at 0x408958 targets 0x4089c8 and is always taken.
  The `bne` branch at 0x408974 targets 0x4089b4, is taken when a1(=[a0+316]:2) != a2(=0x80), and falls through when a1(=[a0+316]:2) == a2(=0x80).
  The `bne` branch at 0x408984 targets 0x40899c, is taken when a2(=[a0+289]:1) != 0, and falls through when a2(=[a0+289]:1) == 0.
  The `beq` branch at 0x408994 targets 0x4089c8 and is always taken.
  The `beq` branch at 0x4089a4 targets 0x4089c8 and is always taken.
  The `beq` branch at 0x4089c0 targets 0x4089c8 and is always taken.
  The return at 0x4089d4 has v0 = one of 0x2, 0x3, 0x1, 0x4, -0x1.
  The instructions from 0x408960 to 0x408964 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4089ac to 0x4089b0 are not reached by any path from the entry, and their branches are not listed.

- `mvpBufferSize` in `usr/lib32/dmedia/video/mvp.so` at 0x4089e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x4089e0-0x408c3c (604 bytes).
  It occupies 604 bytes.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x126, including `lbu` at 0x408a28, `lbu` at 0x408b18, `lbu` at 0x408c00.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x13a, including `lh` at 0x408b04, `lh` at 0x408be8.
  3 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x13c, including `lh` at 0x408b28, `lh` at 0x408b48, `lh` at 0x408bf4.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x121, including `lbu` at 0x408b84, `lbu` at 0x408bb4.
  The `jalr` at 0x408a1c calls mvpAssertFail with a0=0x4201e0, a1=0x418af8, a2=0x278, a3=a3 at entry (arg3).
  The `jalr` at 0x408a40 calls mvpMipmapMode with a0=a0 at entry (arg0), a1=?, a2=[a0+294]:1, a3=0x2.
  The `jalr` at 0x408ae4 calls mvpErrPrintf with a0=a0 at entry (arg0), a1=0x418b08, a2=?, a3=ret(mvpMipmapMode), a4=0x2, a5=ret(mvpMipmapMode), a6=0x3, a7=ret(mvpMipmapMode).
  The `jalr` at 0x408af4 calls mvpPixSize with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x408ba4 calls mvpPixSize with a0=a0 at entry (arg0), a1=?, a2=[a0+294]:1, a3=?, a4=[a0+314]:2.
  The `jalr` at 0x408c10 calls mvpPrintf with a0=a0 at entry (arg0), a1=0x418b20, a2=[a0+314]:2, a3=ret(mvpPixSize), a4=[a0+316]:2, a5=one of 0x1, 0x2.
  The `bne` branch at 0x408a00 targets 0x408a24, is taken when at(=a0) != 0, and falls through when at(=a0) == 0.
  The `bne` branch at 0x408a30 targets 0x408aec, is taken when a2(=[a0+294]:1) != a3(=0x2), and falls through when a2(=[a0+294]:1) == a3(=0x2).
  The `beq` branch at 0x408a54 targets 0x408a94, is taken when a3(=ret(mvpMipmapMode)) == a4(=0x2), and falls through when a3(=ret(mvpMipmapMode)) != a4(=0x2).
  The `beq` branch at 0x408a64 targets 0x408aa4, is taken when a5(=ret(mvpMipmapMode)) == a6(=0x3), and falls through when a5(=ret(mvpMipmapMode)) != a6(=0x3).
  The `beq` branch at 0x408a74 targets 0x408ab4, is taken when a7(=ret(mvpMipmapMode)) == t0(=0x1), and falls through when a7(=ret(mvpMipmapMode)) != t0(=0x1).
  The `beq` branch at 0x408a84 targets 0x408ac4, is taken when t1(=ret(mvpMipmapMode)) == t2(=0x4), and falls through when t1(=ret(mvpMipmapMode)) != t2(=0x4).
  The `beq` branch at 0x408a8c targets 0x408ad4 and is always taken.
  The `beq` branch at 0x408a9c targets 0x408c24 and is always taken.
  The `beq` branch at 0x408aac targets 0x408c24 and is always taken.
  The `beq` branch at 0x408abc targets 0x408c24 and is always taken.
  The `beq` branch at 0x408acc targets 0x408c24 and is always taken.
  The `bne` branch at 0x408b1c targets 0x408b44, is taken when a2(=[a0+294]:1) != 0, and falls through when a2(=[a0+294]:1) == 0.
  The `beq` branch at 0x408b3c targets 0x408b80 and is always taken.
  The `bne` branch at 0x408b88 targets 0x408b9c, is taken when t3(=[a0+289]:1) != 0, and falls through when t3(=[a0+289]:1) == 0.
  The `bne` branch at 0x408bb8 targets 0x408bd0, is taken when t9(=[a0+289]:1) != 0, and falls through when t9(=[a0+289]:1) == 0.
  The `beq` branch at 0x408bc8 targets 0x408bd8 and is always taken.
  The return at 0x408c34 has v0 = one of 0xc0000, 0x70000, 0x50000, ?.

- `mvpBufferAlignment` in `usr/lib32/dmedia/video/mvp.so` at 0x408c40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x408c40-0x408c58 (24 bytes).
  It occupies 24 bytes.
  The return at 0x408c50 has v0 = 0x10000.

- `mvpMaxBufferSize` in `usr/lib32/dmedia/video/mvp.so` at 0x408c60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x408c60-0x408d98 (312 bytes).
  It occupies 312 bytes.
  The `lbu` at 0x408cac loads 1 byte from a0 (arg0 at entry) +0x128.
  4 such `lh` accesses load 2 bytes from ?, including `lh` at 0x408cd0, `lh` at 0x408d00, `lh` at 0x408d14.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x13a, including `lh` at 0x408cd8, `lh` at 0x408cec.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x13c, including `lh` at 0x408d1c, `lh` at 0x408d30.
  The `jalr` at 0x408c9c calls mvpAssertFail with a0=0x4201e0, a1=0x418af8, a2=0x2b8, a3=a3 at entry (arg3).
  The `jalr` at 0x408d5c calls mvpPixSize with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+314]:2, a5=[a0+296]:1.
  The `bne` branch at 0x408c80 targets 0x408ca4, is taken when at(=a0) != 0, and falls through when at(=a0) == 0.
  The `beq` branch at 0x408ce0 targets 0x408cfc, is taken when a2(?) >= a3(=[a0+314]:2) (signed), and falls through when a2(?) < a3(=[a0+314]:2) (signed).
  The `beq` branch at 0x408cf4 targets 0x408d08 and is always taken.
  The `beq` branch at 0x408d24 targets 0x408d40, is taken when t0(?) >= t1(=[a0+316]:2) (signed), and falls through when t0(?) < t1(=[a0+316]:2) (signed).
  The `beq` branch at 0x408d38 targets 0x408d4c and is always taken.
  The return at 0x408d90 has v0 = ?.

- `mvptovltiming` in `usr/lib32/dmedia/video/mvp.so` at 0x408da0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x408da0-0x408ef4 (340 bytes).
  It occupies 340 bytes.
  The `lw` at 0x408dd4 loads 4 bytes from table(0x418b58) +0x0.
  The `jalr` at 0x408ecc calls mvpPanic with a0=0x418ba8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x408dc8 targets 0x408ebc, is taken when at(=a0) >= 0x14 (unsigned), and falls through when at(=a0) < 0x14 (unsigned).
  The `beq` branch at 0x408de4 targets 0x408ee0 and is always taken.
  The `beq` branch at 0x408df4 targets 0x408ee0 and is always taken.
  The `beq` branch at 0x408e04 targets 0x408ee0 and is always taken.
  The `beq` branch at 0x408e14 targets 0x408ee0 and is always taken.
  The `beq` branch at 0x408e28 targets 0x408ee0 and is always taken.
  The `beq` branch at 0x408e3c targets 0x408ee0 and is always taken.
  The `beq` branch at 0x408e50 targets 0x408ee0 and is always taken.
  The `beq` branch at 0x408e64 targets 0x408ee0 and is always taken.
  The `beq` branch at 0x408e78 targets 0x408ee0 and is always taken.
  The `beq` branch at 0x408e8c targets 0x408ee0 and is always taken.
  The `beq` branch at 0x408ea0 targets 0x408ee0 and is always taken.
  The `beq` branch at 0x408eb4 targets 0x408ee0 and is always taken.
  The return at 0x408eec has v0 = one of 0x0, 0x1, 0x2, 0x3, 0x4d56000e, 0x4d56000f, 0x4d560010, 0x4d560011, 0x4d560013, 0x4d560012, 0x4d560015, 0x4d560014, -0x1.
  The indirect jump at 0x408dd8 uses the jump table at 0x418b58 with targets 0x408de0, 0x408dec, 0x408dfc, 0x408e0c, 0x408ebc, 0x408ebc, 0x408de0, 0x408dec, 0x408e1c, 0x408e30, 0x408e44, 0x408e58, 0x408de0, 0x408dec, 0x408dfc, 0x408e0c, 0x408e94, 0x408e6c, 0x408ea8, 0x408e80.

- `mvpfromvlcaptype` in `usr/lib32/dmedia/video/mvp.so` at 0x408f00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x408f00-0x408fd0 (208 bytes).
  It occupies 208 bytes.
  The `beq` branch at 0x408f18 targets 0x408f64, is taken when at(=a0) == v0(=0x4), and falls through when at(=a0) != v0(=0x4).
  The `beq` branch at 0x408f24 targets 0x408f74, is taken when v1(=a0) == 0, and falls through when v1(=a0) != 0.
  The `beq` branch at 0x408f34 targets 0x408f84, is taken when a0 == a1(=0x1), and falls through when a0 != a1(=0x1).
  The `beq` branch at 0x408f44 targets 0x408f90, is taken when a2(=a0) == a3(=0x2), and falls through when a2(=a0) != a3(=0x2).
  The `beq` branch at 0x408f54 targets 0x408fa0, is taken when a4(=a0) == a5(=0x3), and falls through when a4(=a0) != a5(=0x3).
  The `beq` branch at 0x408f5c targets 0x408fb0 and is always taken.
  The `beq` branch at 0x408f6c targets 0x408fbc and is always taken.
  The `beq` branch at 0x408f7c targets 0x408fbc and is always taken.
  The `beq` branch at 0x408f88 targets 0x408fbc and is always taken.
  The `beq` branch at 0x408f98 targets 0x408fbc and is always taken.
  The `beq` branch at 0x408fa8 targets 0x408fbc and is always taken.
  The return at 0x408fc8 has v0 = one of 0x4, 0x3, 0x0, 0x1, 0x2, -0x1.

- `mvptovlcaptype` in `usr/lib32/dmedia/video/mvp.so` at 0x408fd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x408fd0-0x4090b8 (232 bytes).
  It occupies 232 bytes.
  The `jalr` at 0x409090 calls mvpPanic with a0=0x418bc8, a1=a0 at entry (arg0), a2=a0 at entry (arg0), a3=0x1, a4=a0 at entry (arg0), a5=0x2.
  The `beq` branch at 0x408fe8 targets 0x409034, is taken when at(=a0) == v0(=0x4), and falls through when at(=a0) != v0(=0x4).
  The `beq` branch at 0x408ff8 targets 0x409044, is taken when v1(=a0) == a0(=0x3), and falls through when v1(=a0) != a0(=0x3).
  The `beq` branch at 0x409004 targets 0x409050, is taken when a1(=a0) == 0, and falls through when a1(=a0) != 0.
  The `beq` branch at 0x409014 targets 0x409060, is taken when a2(=a0) == a3(=0x1), and falls through when a2(=a0) != a3(=0x1).
  The `beq` branch at 0x409024 targets 0x409070, is taken when a4(=a0) == a5(=0x2), and falls through when a4(=a0) != a5(=0x2).
  The `beq` branch at 0x40902c targets 0x409080 and is always taken.
  The `beq` branch at 0x40903c targets 0x4090a4 and is always taken.
  The `beq` branch at 0x409048 targets 0x4090a4 and is always taken.
  The `beq` branch at 0x409058 targets 0x4090a4 and is always taken.
  The `beq` branch at 0x409068 targets 0x4090a4 and is always taken.
  The `beq` branch at 0x409078 targets 0x4090a4 and is always taken.
  The return at 0x4090b0 has v0 = one of 0x4, 0x0, 0x1, 0x2, 0x3, -0x1.

- `mvpfromvlpacking` in `usr/lib32/dmedia/video/mvp.so` at 0x4090c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x4090c0-0x40917c (188 bytes).
  It occupies 188 bytes.
  The `lw` at 0x4090f4 loads 4 bytes from table(0x418be8) +0x0.
  The `beq` branch at 0x4090e8 targets 0x40915c, is taken when at(=a0) >= 0x20 (unsigned), and falls through when at(=a0) < 0x20 (unsigned).
  The `beq` branch at 0x409108 targets 0x409168 and is always taken.
  The `beq` branch at 0x409118 targets 0x409168 and is always taken.
  The `beq` branch at 0x409128 targets 0x409168 and is always taken.
  The `beq` branch at 0x409138 targets 0x409168 and is always taken.
  The `beq` branch at 0x409144 targets 0x409168 and is always taken.
  The `beq` branch at 0x409154 targets 0x409168 and is always taken.
  The return at 0x409174 has v0 = one of 0x4, 0x2, 0x3, 0x1, 0x0, 0x5, -0x1.
  The indirect jump at 0x4090f8 uses the jump table at 0x418be8 with targets 0x40915c, 0x409100, 0x409100, 0x40915c, 0x40915c, 0x409110, 0x40915c, 0x40915c, 0x40915c, 0x40915c, 0x40915c, 0x40915c, 0x40915c, 0x40915c, 0x40915c, 0x40915c, 0x40915c, 0x40915c, 0x40915c, 0x40915c, 0x40915c, 0x40915c, 0x409140, 0x40914c, 0x40915c, 0x40915c, 0x40915c, 0x409120, 0x40915c, 0x40915c, 0x40915c, 0x409130.

- `mvptovlpacking` in `usr/lib32/dmedia/video/mvp.so` at 0x409180 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x409180-0x40928c (268 bytes).
  It occupies 268 bytes.
  The `jalr` at 0x409264 calls mvpPanic with a0=0x418c68, a1=a0 at entry (arg0), a2=a0 at entry (arg0), a3=0x1, a4=a0 at entry (arg0), a5=0x4, a6=a0 at entry (arg0), a7=0x5.
  The `beq` branch at 0x409194 targets 0x4091f4, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x4091a4 targets 0x409204, is taken when v0(=a0) == v1(=0x2), and falls through when v0(=a0) != v1(=0x2).
  The `beq` branch at 0x4091b4 targets 0x409214, is taken when a0 == a1(=0x3), and falls through when a0 != a1(=0x3).
  The `beq` branch at 0x4091c4 targets 0x409224, is taken when a2(=a0) == a3(=0x1), and falls through when a2(=a0) != a3(=0x1).
  The `beq` branch at 0x4091d4 targets 0x409234, is taken when a4(=a0) == a5(=0x4), and falls through when a4(=a0) != a5(=0x4).
  The `beq` branch at 0x4091e4 targets 0x409244, is taken when a6(=a0) == a7(=0x5), and falls through when a6(=a0) != a7(=0x5).
  The `beq` branch at 0x4091ec targets 0x409254 and is always taken.
  The `beq` branch at 0x4091fc targets 0x409278 and is always taken.
  The `beq` branch at 0x40920c targets 0x409278 and is always taken.
  The `beq` branch at 0x40921c targets 0x409278 and is always taken.
  The `beq` branch at 0x40922c targets 0x409278 and is always taken.
  The `beq` branch at 0x40923c targets 0x409278 and is always taken.
  The `beq` branch at 0x40924c targets 0x409278 and is always taken.
  The return at 0x409284 has v0 = one of 0x16, 0x5, 0x1b, 0x1f, 0x1, 0x17, -0x1.

- `mvpFindPackingAndCsc` in `usr/lib32/dmedia/video/mvp.so` at 0x409290 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x409290-0x4096e0 (1104 bytes).
  It occupies 1104 bytes.
  The `lw` at 0x4092e4 loads 4 bytes from table(0x418c88) +0x0.
  7 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x4092f8, `sw` at 0x409314, `sw` at 0x409330.
  The `lw` at 0x4093d4 loads 4 bytes from table(0x418ce0) +0x0.
  20 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x4093f8, `sw` at 0x409434, `sw` at 0x409470.
  The `jalr` at 0x40937c calls fprintf with a0=sym(__iob)+32, a1=0x418cc8, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jalr` at 0x409398 calls __assert with a0=0x4201e8, a1=0x418af8, a2=0x365, a3=?.
  The `jalr` at 0x409694 calls fprintf with a0=sym(__iob)+32, a1=0x418e48, a2=a0 at entry (arg0), a3=?, a4=(a0 << 0x2).
  The `jalr` at 0x4096b0 calls __assert with a0=0x4201e8, a1=0x418af8, a2=0x3c2, a3=?.
  The `beq` branch at 0x4092d8 targets 0x409364, is taken when at(=a1) >= 0xf (unsigned), and falls through when at(=a1) < 0xf (unsigned).
  The `beq` branch at 0x409304 targets 0x4093a8 and is always taken.
  The `beq` branch at 0x409320 targets 0x4093a8 and is always taken.
  The `beq` branch at 0x409338 targets 0x4093a8 and is always taken.
  The `beq` branch at 0x409350 targets 0x4093a8 and is always taken.
  The `beq` branch at 0x4093a0 targets 0x4093a8 and is always taken.
  The `beq` branch at 0x4093c8 targets 0x40967c, is taken when a2(=a0) >= 0x59 (unsigned), and falls through when a2(=a0) < 0x59 (unsigned).
  The `beq` branch at 0x4093e8 targets 0x409404, is taken when a4(?) == a5(=0x1), and falls through when a4(?) != a5(=0x1).
  The `beq` branch at 0x4093fc targets 0x409414 and is always taken.
  The `beq` branch at 0x40940c targets 0x4096c8 and is always taken.
  The `beq` branch at 0x409414 targets 0x4096c0 and is always taken.
  The `bne` branch at 0x409424 targets 0x409440, is taken when t1(?) != t2(=0x1), and falls through when t1(?) == t2(=0x1).
  The `beq` branch at 0x409438 targets 0x409450 and is always taken.
  The `beq` branch at 0x409448 targets 0x4096c8 and is always taken.
  The `beq` branch at 0x409450 targets 0x4096c0 and is always taken.
  The `bne` branch at 0x409460 targets 0x40947c, is taken when ra(?) != at(=0x1), and falls through when ra(?) == at(=0x1).
  The `beq` branch at 0x409474 targets 0x40948c and is always taken.
  The `beq` branch at 0x409484 targets 0x4096c8 and is always taken.
  The `beq` branch at 0x40948c targets 0x4096c0 and is always taken.
  The `bne` branch at 0x40949c targets 0x4094b8, is taken when a1(?) != a2(=0x1), and falls through when a1(?) == a2(=0x1).
  The `beq` branch at 0x4094b0 targets 0x4094c8 and is always taken.
  The `beq` branch at 0x4094c0 targets 0x4096c8 and is always taken.
  The `beq` branch at 0x4094c8 targets 0x4096c0 and is always taken.
  The `bne` branch at 0x4094d4 targets 0x4094f0, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x4094e8 targets 0x4094fc and is always taken.
  The `beq` branch at 0x4094fc targets 0x4096c0 and is always taken.
  The `bne` branch at 0x409508 targets 0x409524, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x40951c targets 0x409530 and is always taken.
  The `beq` branch at 0x409530 targets 0x4096c0 and is always taken.
  The `bne` branch at 0x40953c targets 0x409558, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x409550 targets 0x409564 and is always taken.
  The `beq` branch at 0x409564 targets 0x4096c0 and is always taken.
  The `bne` branch at 0x409570 targets 0x40958c, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x409584 targets 0x409598 and is always taken.
  The `beq` branch at 0x409598 targets 0x4096c0 and is always taken.
  The `bne` branch at 0x4095a4 targets 0x4095c0, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x4095b8 targets 0x4095cc and is always taken.
  The `beq` branch at 0x4095cc targets 0x4096c0 and is always taken.
  The `bne` branch at 0x4095d8 targets 0x4095f4, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0x4095ec targets 0x409600 and is always taken.
  The `beq` branch at 0x409600 targets 0x4096c0 and is always taken.
  The `bne` branch at 0x40960c targets 0x409628, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x409620 targets 0x409634 and is always taken.
  The `beq` branch at 0x409634 targets 0x4096c0 and is always taken.
  The `beq` branch at 0x409654 targets 0x4096c0 and is always taken.
  The `beq` branch at 0x409674 targets 0x4096c0 and is always taken.
  The `beq` branch at 0x4096b8 targets 0x4096c0 and is always taken.
  The return at 0x4096d8 has v0 = one of 0x0, 0x7.
  The indirect jump at 0x4092e8 uses the jump table at 0x418c88 with targets 0x409328, 0x4092f0, 0x409340, 0x40930c, 0x409364, 0x40930c, 0x409364, 0x4092f0, 0x4092f0, 0x409364, 0x409364, 0x4092f0, 0x409328, 0x409328, 0x409358.
  The indirect jump at 0x4093d8 uses the jump table at 0x418ce0 with targets 0x40965c, 0x40965c, 0x40965c, 0x40967c, 0x40967c, 0x40963c, 0x40963c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40963c, 0x40967c, 0x40963c, 0x40965c, 0x40963c, 0x40965c, 0x40963c, 0x40963c, 0x40963c, 0x40963c, 0x40965c, 0x40965c, 0x40965c, 0x40965c, 0x40963c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x4094d0, 0x4095d4, 0x40967c, 0x409538, 0x409504, 0x40967c, 0x40967c, 0x40941c, 0x40967c, 0x40967c, 0x409608, 0x40967c, 0x40967c, 0x409494, 0x40967c, 0x40967c, 0x4095a0, 0x40967c, 0x40956c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x4093e0, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x409458.
  The indirect jump at 0x4093d8 uses the jump table at 0x418ce0 with targets 0x40965c, 0x40965c, 0x40965c, 0x40967c, 0x40967c, 0x40963c, 0x40963c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40963c, 0x40967c, 0x40963c, 0x40965c, 0x40963c, 0x40965c, 0x40963c, 0x40963c, 0x40963c, 0x40963c, 0x40965c, 0x40965c, 0x40965c, 0x40965c, 0x40963c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x4094d0, 0x4095d4, 0x40967c, 0x409538, 0x409504, 0x40967c, 0x40967c, 0x40941c, 0x40967c, 0x40967c, 0x409608, 0x40967c, 0x40967c, 0x409494, 0x40967c, 0x40967c, 0x4095a0, 0x40967c, 0x40956c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x4093e0, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x40967c, 0x409458.

- `mvptovlcolorspace` in `usr/lib32/dmedia/video/mvp.so` at 0x4096e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x4096e0-0x409808 (296 bytes).
  It occupies 296 bytes.
  The `lw` at 0x40971c loads 4 bytes from table(0x418e68) +0x0.
  The `jalr` at 0x4097d4 calls printf with a0=0x418e90, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x4097ec calls mvpPanic with a0=0x418eb0, a1=a0 at entry (arg0), a2=?, a3=?.
  The `beq` branch at 0x409710 targets 0x4097b4, is taken when at(=a0) >= 0xa (unsigned), and falls through when at(=a0) < 0xa (unsigned).
  The `beq` branch at 0x409730 targets 0x4097b4 and is always taken.
  The `beq` branch at 0x409740 targets 0x4097b4 and is always taken.
  The `beq` branch at 0x409750 targets 0x4097b4 and is always taken.
  The `beq` branch at 0x409760 targets 0x4097b4 and is always taken.
  The `beq` branch at 0x409770 targets 0x4097b4 and is always taken.
  The `beq` branch at 0x409780 targets 0x4097b4 and is always taken.
  The `beq` branch at 0x409790 targets 0x4097b4 and is always taken.
  The `beq` branch at 0x4097a0 targets 0x4097b4 and is always taken.
  The `beq` branch at 0x4097ac targets 0x4097b4 and is always taken.
  The `bne` branch at 0x4097bc targets 0x4097f4, is taken when t0(?) != t1(=-0x1), and falls through when t0(?) == t1(=-0x1).
  The return at 0x409800 has v0 = ?.
  The indirect jump at 0x409720 uses the jump table at 0x418e68 with targets 0x4097b4, 0x409778, 0x409788, 0x409728, 0x409738, 0x409748, 0x409758, 0x409768, 0x409798, 0x4097a8.

- `mvpfromvlcolorspace` in `usr/lib32/dmedia/video/mvp.so` at 0x409810 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x409810-0x40997c (364 bytes).
  It occupies 364 bytes.
  The `bgezall` at 0x409834 calls mvptovlcolorspace [0x4096e0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x409868 calls printf with a0=0x418ec8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0x409938 calls printf with a0=0x418ef8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0x409960 calls mvpPanic with a0=0x418f38, a1=a0 at entry (arg0), a2=-0x1, a3=?.
  The `bne` branch at 0x409844 targets 0x409878, is taken when at(=a0) != v0(=ret(mvptovlcolorspace)), and falls through when at(=a0) == v0(=ret(mvptovlcolorspace)).
  The `beq` branch at 0x409870 targets 0x409940 and is always taken.
  The `beq` branch at 0x409884 targets 0x4098d0, is taken when a2(=a0) == a3(=0x2), and falls through when a2(=a0) != a3(=0x2).
  The `beq` branch at 0x409894 targets 0x4098e0, is taken when a4(=a0) == a5(=0x4), and falls through when a4(=a0) != a5(=0x4).
  The `beq` branch at 0x4098a4 targets 0x4098f0, is taken when a6(=a0) == a7(=0x3), and falls through when a6(=a0) != a7(=0x3).
  The `beq` branch at 0x4098b4 targets 0x409900, is taken when t0(=a0) == t1(=0x1), and falls through when t0(=a0) != t1(=0x1).
  The `beq` branch at 0x4098c0 targets 0x409910, is taken when t2(=a0) == 0, and falls through when t2(=a0) != 0.
  The `beq` branch at 0x4098c8 targets 0x409920 and is always taken.
  The `beq` branch at 0x4098d8 targets 0x409920 and is always taken.
  The `beq` branch at 0x4098e8 targets 0x409920 and is always taken.
  The `beq` branch at 0x4098f8 targets 0x409920 and is always taken.
  The `beq` branch at 0x409908 targets 0x409920 and is always taken.
  The `beq` branch at 0x409918 targets 0x409920 and is always taken.
  The `bne` branch at 0x409948 targets 0x409968, is taken when a1(?) != a2(=-0x1), and falls through when a1(?) == a2(=-0x1).
  The return at 0x409974 has v0 = ?.

- `mvpfromvlformat` in `usr/lib32/dmedia/video/mvp.so` at 0x409980 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x409980-0x409a70 (240 bytes).
  It occupies 240 bytes.
  The `lw` at 0x4099b4 loads 4 bytes from table(0x418f58) +0x0.
  The `beq` branch at 0x4099a8 targets 0x409a50, is taken when at(=a0) >= 0xf (unsigned), and falls through when at(=a0) < 0xf (unsigned).
  The `beq` branch at 0x4099c8 targets 0x409a5c and is always taken.
  The `beq` branch at 0x4099d8 targets 0x409a5c and is always taken.
  The `beq` branch at 0x4099e8 targets 0x409a5c and is always taken.
  The `beq` branch at 0x4099f8 targets 0x409a5c and is always taken.
  The `beq` branch at 0x409a08 targets 0x409a5c and is always taken.
  The `beq` branch at 0x409a18 targets 0x409a5c and is always taken.
  The `beq` branch at 0x409a28 targets 0x409a5c and is always taken.
  The `beq` branch at 0x409a38 targets 0x409a5c and is always taken.
  The `beq` branch at 0x409a48 targets 0x409a5c and is always taken.
  The return at 0x409a68 has v0 = one of 0x3, 0x4, 0x5, 0x6, 0x7, 0x1, 0x2, 0x8, 0x9, -0x1.
  The indirect jump at 0x4099b8 uses the jump table at 0x418f58 with targets 0x409a10, 0x409a20, 0x4099c0, 0x4099d0, 0x409a50, 0x4099d0, 0x409a50, 0x4099e0, 0x4099f0, 0x409a50, 0x409a50, 0x409a30, 0x409a00, 0x409a50, 0x409a40.

- `mvptovlformat` in `usr/lib32/dmedia/video/mvp.so` at 0x409a70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x409a70-0x409b74 (260 bytes).
  It occupies 260 bytes.
  The `lw` at 0x409aa4 loads 4 bytes from table(0x418f94) +0x0.
  The `jalr` at 0x409b4c calls mvpPanic with a0=0x418eb0, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x409a98 targets 0x409b3c, is taken when at(=a0) >= 0xa (unsigned), and falls through when at(=a0) < 0xa (unsigned).
  The `beq` branch at 0x409ab8 targets 0x409b60 and is always taken.
  The `beq` branch at 0x409ac8 targets 0x409b60 and is always taken.
  The `beq` branch at 0x409ad8 targets 0x409b60 and is always taken.
  The `beq` branch at 0x409ae8 targets 0x409b60 and is always taken.
  The `beq` branch at 0x409af8 targets 0x409b60 and is always taken.
  The `beq` branch at 0x409b04 targets 0x409b60 and is always taken.
  The `beq` branch at 0x409b14 targets 0x409b60 and is always taken.
  The `beq` branch at 0x409b24 targets 0x409b60 and is always taken.
  The `beq` branch at 0x409b34 targets 0x409b60 and is always taken.
  The return at 0x409b6c has v0 = one of 0x2, 0x5, 0x7, 0x8, 0xc, 0x0, 0x1, 0xb, 0xe, -0x1.
  The indirect jump at 0x409aa8 uses the jump table at 0x418f94 with targets 0x409ac0, 0x409b00, 0x409b0c, 0x409ab0, 0x409ac0, 0x409ad0, 0x409ae0, 0x409af0, 0x409b1c, 0x409b2c.

- `mvpfromvlmemmode` in `usr/lib32/dmedia/video/mvp.so` at 0x409b80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x409b80-0x409c14 (148 bytes).
  It occupies 148 bytes.
  The `beq` branch at 0x409b98 targets 0x409bc8, is taken when at(=a1) == 0, and falls through when at(=a1) != 0.
  The `beq` branch at 0x409ba8 targets 0x409bd4, is taken when v0(=a1) == v1(=0x1), and falls through when v0(=a1) != v1(=0x1).
  The `beq` branch at 0x409bb8 targets 0x409be4, is taken when a0(=a1) == a1(=0x2), and falls through when a0(=a1) != a1(=0x2).
  The `beq` branch at 0x409bc0 targets 0x409bf4 and is always taken.
  The `beq` branch at 0x409bcc targets 0x409c00 and is always taken.
  The `beq` branch at 0x409bdc targets 0x409c00 and is always taken.
  The `beq` branch at 0x409bec targets 0x409c00 and is always taken.
  The return at 0x409c0c has v0 = one of -0x1, 0x0, 0x1, 0x2.

- `mvptovlmemmode` in `usr/lib32/dmedia/video/mvp.so` at 0x409c20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x409c20-0x409cdc (188 bytes).
  It occupies 188 bytes.
  The `jalr` at 0x409cb0 calls mvpPanic with a0=0x418fc0, a1=a0 at entry (arg0), a2=0x2, a3=a3 at entry (arg3).
  The `beq` branch at 0x409c44 targets 0x409c74, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x409c54 targets 0x409c80, is taken when v1(=a0) == a0(=0x1), and falls through when v1(=a0) != a0(=0x1).
  The `beq` branch at 0x409c64 targets 0x409c90, is taken when a1(=a0) == a2(=0x2), and falls through when a1(=a0) != a2(=0x2).
  The `beq` branch at 0x409c6c targets 0x409ca0 and is always taken.
  The `beq` branch at 0x409c78 targets 0x409cc4 and is always taken.
  The `beq` branch at 0x409c88 targets 0x409cc4 and is always taken.
  The `beq` branch at 0x409c98 targets 0x409cc4 and is always taken.
  The return at 0x409cd4 has v0 = one of -0x1, 0x0, 0x1, 0x2.

- `mvpfromvlcontrol` in `usr/lib32/dmedia/video/mvp.so` at 0x409ce0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x409ce0-0x409de4 (260 bytes).
  It occupies 260 bytes.
  The `beq` branch at 0x409cf4 targets 0x409d64, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x409d04 targets 0x409d74, is taken when v0(=a0) == v1(=0x1), and falls through when v0(=a0) != v1(=0x1).
  The `beq` branch at 0x409d18 targets 0x409d84, is taken when a0 == a1(=0x4d560002), and falls through when a0 != a1(=0x4d560002).
  The `beq` branch at 0x409d2c targets 0x409d94, is taken when a2(=a0) == a3(=0x4d560001), and falls through when a2(=a0) != a3(=0x4d560001).
  The `beq` branch at 0x409d40 targets 0x409da4, is taken when a4(=a0) == a5(=0x4d560009), and falls through when a4(=a0) != a5(=0x4d560009).
  The `beq` branch at 0x409d54 targets 0x409db4, is taken when a6(=a0) == a7(=0x4d56000a), and falls through when a6(=a0) != a7(=0x4d56000a).
  The `beq` branch at 0x409d5c targets 0x409dc4 and is always taken.
  The `beq` branch at 0x409d6c targets 0x409dd0 and is always taken.
  The `beq` branch at 0x409d7c targets 0x409dd0 and is always taken.
  The `beq` branch at 0x409d8c targets 0x409dd0 and is always taken.
  The `beq` branch at 0x409d9c targets 0x409dd0 and is always taken.
  The `beq` branch at 0x409dac targets 0x409dd0 and is always taken.
  The `beq` branch at 0x409dbc targets 0x409dd0 and is always taken.
  The return at 0x409ddc has v0 = one of 0xc3b6, 0xc3b7, 0xc3b8, 0xc3b9, 0xc3bb, 0xc3bc, -0x1.

- `mvpGetGenlockSource` in `usr/lib32/dmedia/video/mvp.so` at 0x409df0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x409df0-0x409e40 (80 bytes).
  It occupies 80 bytes.
  The `bgezall` at 0x409e24 calls mvpControlIOCTL [0x4078d0] with a0=a0 at entry (arg0), a1=sp-176, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The return at 0x409e38 has v0 = ?.

- `mvpChangeGenlock` in `usr/lib32/dmedia/video/mvp.so` at 0x409e40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x409e40-0x409e60 (32 bytes).
  It occupies 32 bytes.
  The return at 0x409e58 has v0 = 0x0.

- `mvpSendChanges` in `usr/lib32/dmedia/video/mvp.so` at 0x409e60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x409e60-0x409f14 (180 bytes).
  It occupies 180 bytes.
  The `bgezall` at 0x409eac calls mvpControlIOCTL [0x4078d0] with a0=a0 at entry (arg0), a1=sp-176, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `bgezall` at 0x409ed8 calls mvpControlIOCTL [0x4078d0] with a0=a0 at entry (arg0), a1=sp-176, a2=0xa, a3=?.
  The `bgezall` at 0x409efc calls mvpControlIOCTL [0x4078d0] with a0=a0 at entry (arg0), a1=sp-176, a2=0xa, a3=?.
  The return at 0x409f0c has v0 = ret(mvpControlIOCTL).

- `mvpSetDeviceControl` in `usr/lib32/dmedia/video/mvp.so` at 0x409f20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x409f20-0x40a134 (532 bytes).
  It occupies 532 bytes.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0xc, including `lw` at 0x409f84, `lw` at 0x409ff0, `lw` at 0x40a038.
  3 such `lw` accesses load 4 bytes from [a3+12] +0x0, including `lw` at 0x409f88, `lw` at 0x409ff4, `lw` at 0x40a03c.
  4 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lw` at 0x409fac, `lw` at 0x409fc0, `lw` at 0x409fd0.
  2 such `lw` accesses load 4 bytes from [a3+8] +0x4, including `lw` at 0x409fb0, `lw` at 0x40a0d8.
  The `lw` at 0x409fc4 loads 4 bytes from [a3+8] +0x1c.
  The `lw` at 0x409fd4 loads 4 bytes from [a3+8] +0x20.
  The `lw` at 0x409ffc loads 4 bytes from [[a3+8]+32] +0x20.
  The `lw` at 0x40a044 loads 4 bytes from ?.
  The `bgezall` at 0x409f44 calls mvpfromvlcontrol [0x409ce0] with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x409fa0 calls mvpFromVLControlValue with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=sp-220, a3=?.
  The `bgezall` at 0x40a07c calls mvpGetGenlockSource [0x409df0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[[a3+8]+28], a3=[[a3+8]+32], a4=[[a3+8]+28].
  The `bgezall` at 0x40a0a0 calls mvpControlIOCTL [0x4078d0] with a0=a0 at entry (arg0), a1=sp-224, a2=a1 at entry (arg1), a3=?.
  The `bgezall` at 0x40a0f4 calls mvpSendChanges [0x409e60] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `bgezall` at 0x40a110 calls mvpChangeGenlock [0x409e40] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `bne` branch at 0x409f60 targets 0x409f78, is taken when ra(=ret(mvpfromvlcontrol)) != at(=-0x1), and falls through when ra(=ret(mvpfromvlcontrol)) == at(=-0x1).
  The `beq` branch at 0x409f70 targets 0x40a120 and is always taken.
  The `bne` branch at 0x409fb4 targets 0x40a08c, is taken when a1(=[[a3+8]+4]) != 0, and falls through when a1(=[[a3+8]+4]) == 0.
  The `beq` branch at 0x409fe4 targets 0x40a050, is taken when a2(=[[a3+8]+28]) == 0, and falls through when a2(=[[a3+8]+28]) != 0.
  The `beq` branch at 0x40a000 targets 0x40a050, is taken when a5(=[[a3+12]]) == a6(=[[[a3+8]+32]+32]), and falls through when a5(=[[a3+12]]) != a6(=[[[a3+8]+32]+32]).
  The `beq` branch at 0x40a02c targets 0x40a050, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x40a048 targets 0x40a008, is taken when t2(=[[a3+12]]) != t3(?), and falls through when t2(=[[a3+12]]) == t3(?).
  The `bne` branch at 0x40a054 targets 0x40a06c, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x40a064 targets 0x40a120 and is always taken.
  The `beq` branch at 0x40a0b8 targets 0x40a0d0, is taken when ra(=ret(mvpControlIOCTL)) == 0, and falls through when ra(=ret(mvpControlIOCTL)) != 0.
  The `beq` branch at 0x40a0c8 targets 0x40a120 and is always taken.
  The `bne` branch at 0x40a0dc targets 0x40a118, is taken when v0(=[[a3+8]+4]) != 0, and falls through when v0(=[[a3+8]+4]) == 0.
  The return at 0x40a12c has v0 = one of 0x7, 0x2, ret(mvpControlIOCTL), 0x0.

- `mvpGetDeviceControl` in `usr/lib32/dmedia/video/mvp.so` at 0x40a140 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x40a140-0x40a204 (196 bytes).
  It occupies 196 bytes.
  The `sw` at 0x40a1e4 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `bgezall` at 0x40a164 calls mvpfromvlcontrol [0x409ce0] with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x40a1b0 calls mvpControlIOCTL [0x4078d0] with a0=a0 at entry (arg0), a1=sp-208, a2=a1 at entry (arg1), a3=?.
  The `bne` branch at 0x40a17c targets 0x40a194, is taken when ra(=ret(mvpfromvlcontrol)) != at(=-0x1), and falls through when ra(=ret(mvpfromvlcontrol)) == at(=-0x1).
  The `beq` branch at 0x40a18c targets 0x40a1f0 and is always taken.
  The `beq` branch at 0x40a1c4 targets 0x40a1dc, is taken when ra(=ret(mvpControlIOCTL)) == 0, and falls through when ra(=ret(mvpControlIOCTL)) != 0.
  The `beq` branch at 0x40a1d4 targets 0x40a1f0 and is always taken.
  The return at 0x40a1fc has v0 = one of 0x7, ret(mvpControlIOCTL), 0x0.

- `mvpSetVideoControl` in `usr/lib32/dmedia/video/mvp.so` at 0x40a210 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x40a210-0x40aa98 (2184 bytes).
  It occupies 2184 bytes.
  The `lw` at 0x40a230 loads 4 bytes from a3 (arg3 at entry) +0xc.
  10 such `lw` accesses load 4 bytes from [a3+12] +0x0, including `lw` at 0x40a474, `lw` at 0x40a4dc, `lw` at 0x40a594.
  The `sb` at 0x40a5d8 stores 1 byte to a0 (arg0 at entry) +0x125.
  The `lw` at 0x40a6f4 loads 4 bytes from [a3+12] +0x4.
  The `lw` at 0x40a71c loads 4 bytes from [a3+12] +0x8.
  The `jalr` at 0x40a254 calls mvpFromVLControlValue with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=sp-244, a3=a3 at entry (arg3).
  The `bgezall` at 0x40a480 calls mvpfromvltiming [0x4073f0] with a0=a0 at entry (arg0), a1=[[a3+12]], a2=?, a3=?, a6=a2 at entry (arg2), a7=0x1.
  The `bgezall` at 0x40a578 calls mvpGetGenlockSource [0x409df0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `bgezall` at 0x40a5a0 calls mvpfromvlformat [0x409980] with a0=[[a3+12]], a1=?, a2=?, a3=?.
  The `bgezall` at 0x40a660 calls mvpGetGenlockSource [0x409df0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a6=[[a3+12]], a7=0xc3bd.
  The `bgezall` at 0x40a6a4 calls mvpGetGenlockSource [0x409df0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x40a950 calls bcopy with a0=[a3+12], a1=?, a2=0x26, a3=a2+0xffffffffb2a9fffa, a4=a2+0xffffffffb2a9fffa, a5=0xffffffffb2a9fffa.
  The `jalr` at 0x40a978 calls mvpSendI2C with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40a9a8 calls mvpSetVideoPortControl with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x40a9d8 calls mvpControlIOCTL [0x4078d0] with a0=a0 at entry (arg0), a1=sp-248, a2=a1 at entry (arg1), a3=?.
  The `bgezall` at 0x40aa24 calls mvpSetTiming [0x407a10] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0x40aa4c calls mvpSendChanges [0x409e60] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `bgezall` at 0x40aa74 calls mvpChangeGenlock [0x409e40] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `bne` branch at 0x40a270 targets 0x40a298, is taken when v1(=a2) < a0(=0x4d560004) (signed), and falls through when v1(=a2) >= a0(=0x4d560004) (signed).
  The `bne` branch at 0x40a288 targets 0x40a370, is taken when a1(=0x4d560004) < a2 (signed), and falls through when a1(=0x4d560004) >= a2 (signed).
  The `beq` branch at 0x40a290 targets 0x40a964 and is always taken.
  The `bne` branch at 0x40a2a0 targets 0x40a2c0, is taken when a2 < 0x16 (signed), and falls through when a2 >= 0x16 (signed).
  The `beq` branch at 0x40a2b0 targets 0x40a318, is taken when a3(=a2) >= 0x17 (signed), and falls through when a3(=a2) < 0x17 (signed).
  The `beq` branch at 0x40a2b8 targets 0x40a5e8 and is always taken.
  The `bne` branch at 0x40a2c8 targets 0x40a2e8, is taken when a4(=a2) < 0x11 (signed), and falls through when a4(=a2) >= 0x11 (signed).
  The `beq` branch at 0x40a2d8 targets 0x40a300, is taken when a5(=a2) >= 0x12 (signed), and falls through when a5(=a2) < 0x12 (signed).
  The `beq` branch at 0x40a2e0 targets 0x40a4d0 and is always taken.
  The `bne` branch at 0x40a2f0 targets 0x40a994, is taken when a6(=a2) != a7(=0x1), and falls through when a6(=a2) == a7(=0x1).
  The `beq` branch at 0x40a2f8 targets 0x40a46c and is always taken.
  The `bne` branch at 0x40a308 targets 0x40a994, is taken when t0(=a2) != t1(=0x15), and falls through when t0(=a2) == t1(=0x15).
  The `beq` branch at 0x40a310 targets 0x40a590 and is always taken.
  The `bne` branch at 0x40a320 targets 0x40a340, is taken when t2(=a2) < 0x42 (signed), and falls through when t2(=a2) >= 0x42 (signed).
  The `beq` branch at 0x40a330 targets 0x40a358, is taken when t3(=a2) >= 0x43 (signed), and falls through when t3(=a2) < 0x43 (signed).
  The `beq` branch at 0x40a338 targets 0x40a6bc and is always taken.
  The `bne` branch at 0x40a348 targets 0x40a994, is taken when t8(=a2) != t9(=0x3a), and falls through when t8(=a2) == t9(=0x3a).
  The `beq` branch at 0x40a350 targets 0x40a678 and is always taken.
  The `bne` branch at 0x40a360 targets 0x40a994, is taken when ra(=a2) != at(=0x4c), and falls through when ra(=a2) == at(=0x4c).
  The `beq` branch at 0x40a368 targets 0x40a6dc and is always taken.
  The `bne` branch at 0x40a380 targets 0x40a3a8, is taken when v0(=a2) < v1(=0x4d560010) (signed), and falls through when v0(=a2) >= v1(=0x4d560010) (signed).
  The `bne` branch at 0x40a398 targets 0x40a418, is taken when a0(=0x4d560010) < a1(=a2) (signed), and falls through when a0(=0x4d560010) >= a1(=a2) (signed).
  The `beq` branch at 0x40a3a0 targets 0x40a908 and is always taken.
  The `bne` branch at 0x40a3b8 targets 0x40a3e0, is taken when a1(=a2) < a2(=0x4d56000e) (signed), and falls through when a1(=a2) >= a2(=0x4d56000e) (signed).
  The `bne` branch at 0x40a3d0 targets 0x40a3fc, is taken when a3(=0x4d56000e) < a4(=a2) (signed), and falls through when a3(=0x4d56000e) >= a4(=a2) (signed).
  The `beq` branch at 0x40a3d8 targets 0x40a908 and is always taken.
  The `bne` branch at 0x40a3ec targets 0x40a994, is taken when a4(=a2) != a5(=0x4d56000d), and falls through when a4(=a2) == a5(=0x4d56000d).
  The `beq` branch at 0x40a3f4 targets 0x40a7b8 and is always taken.
  The `bne` branch at 0x40a408 targets 0x40a994, is taken when a6(=a2) != a7(=0x4d56000f), and falls through when a6(=a2) == a7(=0x4d56000f).
  The `beq` branch at 0x40a410 targets 0x40a908 and is always taken.
  The `bne` branch at 0x40a428 targets 0x40a450, is taken when t0(=a2) < t1(=0x4d560016) (signed), and falls through when t0(=a2) >= t1(=0x4d560016) (signed).
  The `bne` branch at 0x40a440 targets 0x40a994, is taken when t2(=0x4d560016) < t3(=a2) (signed), and falls through when t2(=0x4d560016) >= t3(=a2) (signed).
  The `beq` branch at 0x40a448 targets 0x40a7d4 and is always taken.
  The `bne` branch at 0x40a45c targets 0x40a994, is taken when t3(=a2) != t8(=0x4d560011), and falls through when t3(=a2) == t8(=0x4d560011).
  The `beq` branch at 0x40a464 targets 0x40a908 and is always taken.
  The `bne` branch at 0x40a498 targets 0x40a4b0, is taken when a2(=ret(mvpfromvltiming)) != a3(=-0x1), and falls through when a2(=ret(mvpfromvltiming)) == a3(=-0x1).
  The `beq` branch at 0x40a4a8 targets 0x40aa84 and is always taken.
  The `beq` branch at 0x40a4c8 targets 0x40a9c4 and is always taken.
  The `beq` branch at 0x40a4e4 targets 0x40a524, is taken when t0(=[[a3+12]]) == 0, and falls through when t0(=[[a3+12]]) != 0.
  The `beq` branch at 0x40a4f4 targets 0x40a524, is taken when t2(=[[a3+12]]) == t3(=0x1), and falls through when t2(=[[a3+12]]) != t3(=0x1).
  The `beq` branch at 0x40a504 targets 0x40a530, is taken when t8(=[[a3+12]]) == t9(=0x2), and falls through when t8(=[[a3+12]]) != t9(=0x2).
  The `beq` branch at 0x40a514 targets 0x40a540, is taken when ra(=[[a3+12]]) == at(=0x3), and falls through when ra(=[[a3+12]]) != at(=0x3).
  The `beq` branch at 0x40a51c targets 0x40a550 and is always taken.
  The `beq` branch at 0x40a528 targets 0x40a560 and is always taken.
  The `beq` branch at 0x40a538 targets 0x40a560 and is always taken.
  The `beq` branch at 0x40a548 targets 0x40a560 and is always taken.
  The `beq` branch at 0x40a558 targets 0x40aa84 and is always taken.
  The `beq` branch at 0x40a588 targets 0x40a9c4 and is always taken.
  The `bne` branch at 0x40a5b8 targets 0x40a5d0, is taken when a1(=ret(mvpfromvlformat)) != a2(=-0x1), and falls through when a1(=ret(mvpfromvlformat)) == a2(=-0x1).
  The `beq` branch at 0x40a5c8 targets 0x40aa84 and is always taken.
  The `beq` branch at 0x40a5e0 targets 0x40aa84 and is always taken.
  The `beq` branch at 0x40a5fc targets 0x40a61c, is taken when a6(=[[a3+12]]) == 0, and falls through when a6(=[[a3+12]]) != 0.
  The `beq` branch at 0x40a60c targets 0x40a628, is taken when t0(=[[a3+12]]) == t1(=0x2), and falls through when t0(=[[a3+12]]) != t1(=0x2).
  The `beq` branch at 0x40a614 targets 0x40a638 and is always taken.
  The `beq` branch at 0x40a620 targets 0x40a648 and is always taken.
  The `beq` branch at 0x40a630 targets 0x40a648 and is always taken.
  The `beq` branch at 0x40a640 targets 0x40aa84 and is always taken.
  The `beq` branch at 0x40a670 targets 0x40a9c4 and is always taken.
  The `beq` branch at 0x40a6b4 targets 0x40a9c4 and is always taken.
  The `beq` branch at 0x40a6d4 targets 0x40a9c4 and is always taken.
  The `bne` branch at 0x40a6e8 targets 0x40a700, is taken when a1(=[[a3+12]]) != a2(=0x2), and falls through when a1(=[[a3+12]]) == a2(=0x2).
  The `beq` branch at 0x40a6f8 targets 0x40a710, is taken when a2(=[[a3+12]+4]) == 0, and falls through when a2(=[[a3+12]+4]) != 0.
  The `beq` branch at 0x40a708 targets 0x40aa84 and is always taken.
  The `beq` branch at 0x40a724 targets 0x40a764, is taken when a4(=[[a3+12]+8]) == 0, and falls through when a4(=[[a3+12]+8]) != 0.
  The `beq` branch at 0x40a734 targets 0x40a770, is taken when a6(=[[a3+12]+8]) == a7(=0x1), and falls through when a6(=[[a3+12]+8]) != a7(=0x1).
  The `beq` branch at 0x40a744 targets 0x40a780, is taken when t0(=[[a3+12]+8]) == t1(=0x2), and falls through when t0(=[[a3+12]+8]) != t1(=0x2).
  The `beq` branch at 0x40a754 targets 0x40a790, is taken when t2(=[[a3+12]+8]) == t3(=0x3), and falls through when t2(=[[a3+12]+8]) != t3(=0x3).
  The `beq` branch at 0x40a75c targets 0x40a7a0 and is always taken.
  The `beq` branch at 0x40a768 targets 0x40a7b0 and is always taken.
  The `beq` branch at 0x40a778 targets 0x40a7b0 and is always taken.
  The `beq` branch at 0x40a788 targets 0x40a7b0 and is always taken.
  The `beq` branch at 0x40a798 targets 0x40a7b0 and is always taken.
  The `beq` branch at 0x40a7a8 targets 0x40aa84 and is always taken.
  The `beq` branch at 0x40a7b0 targets 0x40a9c4 and is always taken.
  The `beq` branch at 0x40a7cc targets 0x40a9c4 and is always taken.
  The `beq` branch at 0x40a7f8 targets 0x40a828, is taken when a0(?) == a1(=0x2), and falls through when a0(?) != a1(=0x2).
  The `beq` branch at 0x40a808 targets 0x40a83c, is taken when a3(?) == a4(=0x3), and falls through when a3(?) != a4(=0x3).
  The `beq` branch at 0x40a818 targets 0x40a850, is taken when a5(?) == a6(=0x12), and falls through when a5(?) != a6(=0x12).
  The `beq` branch at 0x40a820 targets 0x40a864 and is always taken.
  The `beq` branch at 0x40a834 targets 0x40a864 and is always taken.
  The `beq` branch at 0x40a848 targets 0x40a864 and is always taken.
  The `beq` branch at 0x40a85c targets 0x40a864 and is always taken.
  The `beq` branch at 0x40a878 targets 0x40a8a8, is taken when t2(?) == t3(=0x8), and falls through when t2(?) != t3(=0x8).
  The `beq` branch at 0x40a888 targets 0x40a8bc, is taken when t3(?) == t8(=0xc), and falls through when t3(?) != t8(=0xc).
  The `beq` branch at 0x40a898 targets 0x40a8d0, is taken when t9(?) == ra(=0x28), and falls through when t9(?) != ra(=0x28).
  The `beq` branch at 0x40a8a0 targets 0x40a8e4 and is always taken.
  The `beq` branch at 0x40a8b4 targets 0x40a8e4 and is always taken.
  The `beq` branch at 0x40a8c8 targets 0x40a8e4 and is always taken.
  The `beq` branch at 0x40a8dc targets 0x40a8e4 and is always taken.
  The `beq` branch at 0x40a8e8 targets 0x40a900, is taken when a0(=one of 0x0, 0x2) == 0, and falls through when a0(=one of 0x0, 0x2) != 0.
  The `beq` branch at 0x40a8f8 targets 0x40aa84 and is always taken.
  The `beq` branch at 0x40a900 targets 0x40a9c4 and is always taken.
  The `beq` branch at 0x40a95c targets 0x40aa84 and is always taken.
  The `beq` branch at 0x40a98c targets 0x40aa84 and is always taken.
  The `beq` branch at 0x40a9bc targets 0x40aa84 and is always taken.
  The `beq` branch at 0x40a9ec targets 0x40aa04, is taken when ra(=ret(mvpControlIOCTL)) == 0, and falls through when ra(=ret(mvpControlIOCTL)) != 0.
  The `beq` branch at 0x40a9fc targets 0x40aa84 and is always taken.
  The `bne` branch at 0x40aa0c targets 0x40aa2c, is taken when v0(=a2) != v1(=0x1), and falls through when v0(=a2) == v1(=0x1).
  The `bne` branch at 0x40aa34 targets 0x40aa54, is taken when ra(=a2) != at(=0x11), and falls through when ra(=a2) == at(=0x11).
  The `beq` branch at 0x40aa58 targets 0x40aa7c, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The return at 0x40aa90 has v0 = one of 0x2, 0x7, 0x0, ret(mvpSendI2C), ret(mvpSetVideoPortControl), ret(mvpControlIOCTL).

- `mvpGetVideoControl` in `usr/lib32/dmedia/video/mvp.so` at 0x40aaa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x40aaa0-0x40b3e8 (2376 bytes).
  It occupies 2376 bytes.
  18 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x40ad54, `sw` at 0x40ad98, `sw` at 0x40ae14.
  3 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x4, including `sw` at 0x40ad5c, `sw` at 0x40adcc, `sw` at 0x40ae20.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x128, including `lbu` at 0x40ad74, `lbu` at 0x40ada4, `lbu` at 0x40ade4.
  2 such `lh` accesses load 2 bytes from ?, including `lh` at 0x40ad90, `lh` at 0x40adc0.
  The `lbu` at 0x40ae00 loads 1 byte from ?.
  The `lbu` at 0x40ae44 loads 1 byte from a0 (arg0 at entry) +0x12a.
  8 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lw` at 0x40aea4, `lw` at 0x40b268, `lw` at 0x40b284.
  The `lw` at 0x40aeb8 loads 4 bytes from a3 (arg3 at entry) +0x4.
  3 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x8, including `sw` at 0x40b1c8, `sw` at 0x40b1dc, `sw` at 0x40b1f0.
  The `bgezall` at 0x40ae50 calls mvptovlformat [0x409a70] with a0=[a0+298]:1, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40af4c calls bcopy with a0=?, a1=a3 at entry (arg3), a2=0x26, a3=a2+0xffffffffb2a9fffa, a4=0xffffffffb2a9fffa.
  The `jalr` at 0x40af70 calls mvpGetI2CData with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-4, a3=a3 at entry (arg3), a5=0x4d560004, a7=a2 at entry (arg2).
  The `jalr` at 0x40afa0 calls mvpGetVideoPortControl with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x40afd0 calls mvpControlIOCTL [0x4078d0] with a0=a0 at entry (arg0), a1=sp-224, a2=a1 at entry (arg1), a3=?.
  The `bgezall` at 0x40b068 calls mvptovltiming [0x408da0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40b104 calls mvpPanic with a0=0x418fe0, a1=0x2, a2=?, a3=?.
  The `jalr` at 0x40b174 calls mvpPanic with a0=0x419000, a1=?, a2=?, a3=0xf.
  The `jalr` at 0x40b208 calls mvpPanic with a0=0x419010, a1=?, a2=?, a3=0x1, a5=0x2.
  The `jalr` at 0x40b2c8 calls mvpPanic with a0=0x419020, a1=?, a2=0x1, a3=a3 at entry (arg3), a5=0x2, a7=0x3.
  The `jalr` at 0x40b378 calls mvpPanic with a0=0x419040, a1=?, a2=0x1, a3=?, a4=0x2, a6=0x3.
  The `jalr` at 0x40b3a8 calls mvpPrintf with a0=a0 at entry (arg0), a1=0x419060, a2=?, a3=?, a4=[a3].
  The `bne` branch at 0x40aacc targets 0x40aaec, is taken when at(=a2) < 0x42 (signed), and falls through when at(=a2) >= 0x42 (signed).
  The `beq` branch at 0x40aadc targets 0x40abec, is taken when v1(=a2) >= 0x43 (signed), and falls through when v1(=a2) < 0x43 (signed).
  The `beq` branch at 0x40aae4 targets 0x40ae90 and is always taken.
  The `bne` branch at 0x40aaf4 targets 0x40ab14, is taken when a0(=a2) < 0x11 (signed), and falls through when a0(=a2) >= 0x11 (signed).
  The `beq` branch at 0x40ab04 targets 0x40ab94, is taken when a1(=a2) >= 0x12 (signed), and falls through when a1(=a2) < 0x12 (signed).
  The `beq` branch at 0x40ab0c targets 0x40ae30 and is always taken.
  The `bne` branch at 0x40ab1c targets 0x40ab3c, is taken when a2 < 0x4 (signed), and falls through when a2 >= 0x4 (signed).
  The `beq` branch at 0x40ab2c targets 0x40ab7c, is taken when a3(=a2) >= 0x5 (signed), and falls through when a3(=a2) < 0x5 (signed).
  The `beq` branch at 0x40ab34 targets 0x40ad6c and is always taken.
  The `bne` branch at 0x40ab44 targets 0x40ab64, is taken when a4(=a2) < 0x3 (signed), and falls through when a4(=a2) >= 0x3 (signed).
  The `beq` branch at 0x40ab54 targets 0x40af8c, is taken when a5(=a2) >= 0x4 (signed), and falls through when a5(=a2) < 0x4 (signed).
  The `beq` branch at 0x40ab5c targets 0x40ad50 and is always taken.
  The `bne` branch at 0x40ab6c targets 0x40af8c, is taken when a6(=a2) != a7(=0x1), and falls through when a6(=a2) == a7(=0x1).
  The `beq` branch at 0x40ab74 targets 0x40ad38 and is always taken.
  The `bne` branch at 0x40ab84 targets 0x40af8c, is taken when t0(=a2) != t1(=0x5), and falls through when t0(=a2) == t1(=0x5).
  The `beq` branch at 0x40ab8c targets 0x40addc and is always taken.
  The `bne` branch at 0x40ab9c targets 0x40abbc, is taken when t2(=a2) < 0x16 (signed), and falls through when t2(=a2) >= 0x16 (signed).
  The `beq` branch at 0x40abac targets 0x40abd4, is taken when t3(=a2) >= 0x17 (signed), and falls through when t3(=a2) < 0x17 (signed).
  The `beq` branch at 0x40abb4 targets 0x40ae70 and is always taken.
  The `bne` branch at 0x40abc4 targets 0x40af8c, is taken when t8(=a2) != t9(=0x15), and falls through when t8(=a2) == t9(=0x15).
  The `beq` branch at 0x40abcc targets 0x40ae40 and is always taken.
  The `bne` branch at 0x40abdc targets 0x40af8c, is taken when ra(=a2) != at(=0x3a), and falls through when ra(=a2) == at(=0x3a).
  The `beq` branch at 0x40abe4 targets 0x40ae80 and is always taken.
  The `bne` branch at 0x40abfc targets 0x40ac24, is taken when v0(=a2) < v1(=0x4d56000f) (signed), and falls through when v0(=a2) >= v1(=0x4d56000f) (signed).
  The `bne` branch at 0x40ac14 targets 0x40acc8, is taken when a0(=0x4d56000f) < a1(=a2) (signed), and falls through when a0(=0x4d56000f) >= a1(=a2) (signed).
  The `beq` branch at 0x40ac1c targets 0x40af04 and is always taken.
  The `bne` branch at 0x40ac34 targets 0x40ac5c, is taken when a1(=a2) < a2(=0x4d56000d) (signed), and falls through when a1(=a2) >= a2(=0x4d56000d) (signed).
  The `bne` branch at 0x40ac4c targets 0x40acac, is taken when a3(=0x4d56000d) < a4(=a2) (signed), and falls through when a3(=0x4d56000d) >= a4(=a2) (signed).
  The `beq` branch at 0x40ac54 targets 0x40aee4 and is always taken.
  The `bne` branch at 0x40ac6c targets 0x40ac94, is taken when a4(=a2) < a5(=0x4d560004) (signed), and falls through when a4(=a2) >= a5(=0x4d560004) (signed).
  The `bne` branch at 0x40ac84 targets 0x40af8c, is taken when a6(=0x4d560004) < a7(=a2) (signed), and falls through when a6(=0x4d560004) >= a7(=a2) (signed).
  The `beq` branch at 0x40ac8c targets 0x40af60 and is always taken.
  The `bne` branch at 0x40ac9c targets 0x40af8c, is taken when a7(=a2) != t0(=0x4c), and falls through when a7(=a2) == t0(=0x4c).
  The `beq` branch at 0x40aca4 targets 0x40aea0 and is always taken.
  The `bne` branch at 0x40acb8 targets 0x40af8c, is taken when t1(=a2) != t2(=0x4d56000e), and falls through when t1(=a2) == t2(=0x4d56000e).
  The `beq` branch at 0x40acc0 targets 0x40af04 and is always taken.
  The `bne` branch at 0x40acd8 targets 0x40ad00, is taken when t3(=a2) < t8(=0x4d560011) (signed), and falls through when t3(=a2) >= t8(=0x4d560011) (signed).
  The `bne` branch at 0x40acf0 targets 0x40ad1c, is taken when t9(=0x4d560011) < ra(=a2) (signed), and falls through when t9(=0x4d560011) >= ra(=a2) (signed).
  The `beq` branch at 0x40acf8 targets 0x40af04 and is always taken.
  The `bne` branch at 0x40ad0c targets 0x40af8c, is taken when ra(=a2) != at(=0x4d560010), and falls through when ra(=a2) == at(=0x4d560010).
  The `beq` branch at 0x40ad14 targets 0x40af04 and is always taken.
  The `bne` branch at 0x40ad28 targets 0x40af8c, is taken when v0(=a2) != v1(=0x4d560016), and falls through when v0(=a2) == v1(=0x4d560016).
  The `beq` branch at 0x40ad30 targets 0x40aef4 and is always taken.
  The `beq` branch at 0x40ad48 targets 0x40afbc and is always taken.
  The `beq` branch at 0x40ad64 targets 0x40b3d4 and is always taken.
  The `beq` branch at 0x40add4 targets 0x40b3d4 and is always taken.
  The `beq` branch at 0x40ae28 targets 0x40b3d4 and is always taken.
  The `beq` branch at 0x40ae38 targets 0x40afbc and is always taken.
  The `beq` branch at 0x40ae68 targets 0x40b3d4 and is always taken.
  The `beq` branch at 0x40ae78 targets 0x40afbc and is always taken.
  The `beq` branch at 0x40ae88 targets 0x40afbc and is always taken.
  The `beq` branch at 0x40ae98 targets 0x40afbc and is always taken.
  The `bne` branch at 0x40aeac targets 0x40aec4, is taken when a5(=[a3]) != a6(=0x1), and falls through when a5(=[a3]) == a6(=0x1).
  The `beq` branch at 0x40aebc targets 0x40aed4, is taken when a6(=[a3+4]) == 0, and falls through when a6(=[a3+4]) != 0.
  The `beq` branch at 0x40aecc targets 0x40b3d4 and is always taken.
  The `beq` branch at 0x40aedc targets 0x40afbc and is always taken.
  The `beq` branch at 0x40aeec targets 0x40afbc and is always taken.
  The `beq` branch at 0x40aefc targets 0x40afbc and is always taken.
  The `beq` branch at 0x40af58 targets 0x40b3d4 and is always taken.
  The `beq` branch at 0x40af84 targets 0x40b3d4 and is always taken.
  The `beq` branch at 0x40afb4 targets 0x40b3d4 and is always taken.
  The `beq` branch at 0x40afe4 targets 0x40affc, is taken when ra(=ret(mvpControlIOCTL)) == 0, and falls through when ra(=ret(mvpControlIOCTL)) != 0.
  The `beq` branch at 0x40aff4 targets 0x40b3d4 and is always taken.
  The `beq` branch at 0x40b008 targets 0x40b05c, is taken when v0(=a2) == v1(=0x1), and falls through when v0(=a2) != v1(=0x1).
  The `beq` branch at 0x40b018 targets 0x40b084, is taken when a0(=a2) == a1(=0x11), and falls through when a0(=a2) != a1(=0x11).
  The `beq` branch at 0x40b028 targets 0x40b11c, is taken when a2 == a3(=0x16), and falls through when a2 != a3(=0x16).
  The `beq` branch at 0x40b038 targets 0x40b18c, is taken when a4(=a2) == a5(=0x4c), and falls through when a4(=a2) != a5(=0x4c).
  The `beq` branch at 0x40b04c targets 0x40b220, is taken when a6(=a2) == a7(=0x4d560016), and falls through when a6(=a2) != a7(=0x4d560016).
  The `beq` branch at 0x40b054 targets 0x40b3b8 and is always taken.
  The `beq` branch at 0x40b07c targets 0x40b3cc and is always taken.
  The `beq` branch at 0x40b08c targets 0x40b0bc, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x40b09c targets 0x40b0d0, is taken when v0(?) == v1(=0x1), and falls through when v0(?) != v1(=0x1).
  The `beq` branch at 0x40b0ac targets 0x40b0e4, is taken when a0(?) == a1(=0x2), and falls through when a0(?) != a1(=0x2).
  The `beq` branch at 0x40b0b4 targets 0x40b0f8 and is always taken.
  The `beq` branch at 0x40b0c8 targets 0x40b114 and is always taken.
  The `beq` branch at 0x40b0dc targets 0x40b114 and is always taken.
  The `beq` branch at 0x40b0f0 targets 0x40b114 and is always taken.
  The `beq` branch at 0x40b10c targets 0x40b114 and is always taken.
  The `beq` branch at 0x40b114 targets 0x40b3cc and is always taken.
  The `beq` branch at 0x40b124 targets 0x40b144, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x40b134 targets 0x40b154, is taken when a2(?) == a3(=0xf), and falls through when a2(?) != a3(=0xf).
  The `beq` branch at 0x40b13c targets 0x40b168 and is always taken.
  The `beq` branch at 0x40b14c targets 0x40b184 and is always taken.
  The `beq` branch at 0x40b160 targets 0x40b184 and is always taken.
  The `beq` branch at 0x40b17c targets 0x40b184 and is always taken.
  The `beq` branch at 0x40b184 targets 0x40b3cc and is always taken.
  The `beq` branch at 0x40b194 targets 0x40b1c4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x40b1a4 targets 0x40b1d4, is taken when a2(?) == a3(=0x1), and falls through when a2(?) != a3(=0x1).
  The `beq` branch at 0x40b1b4 targets 0x40b1e8, is taken when a4(?) == a5(=0x2), and falls through when a4(?) != a5(=0x2).
  The `beq` branch at 0x40b1bc targets 0x40b1fc and is always taken.
  The `beq` branch at 0x40b1cc targets 0x40b218 and is always taken.
  The `beq` branch at 0x40b1e0 targets 0x40b218 and is always taken.
  The `beq` branch at 0x40b1f4 targets 0x40b218 and is always taken.
  The `beq` branch at 0x40b210 targets 0x40b218 and is always taken.
  The `beq` branch at 0x40b218 targets 0x40b3cc and is always taken.
  The `beq` branch at 0x40b234 targets 0x40b264, is taken when a1(?) == a2(=0x1), and falls through when a1(?) != a2(=0x1).
  The `beq` branch at 0x40b244 targets 0x40b280, is taken when a4(?) == a5(=0x2), and falls through when a4(?) != a5(=0x2).
  The `beq` branch at 0x40b254 targets 0x40b29c, is taken when a6(?) == a7(=0x3), and falls through when a6(?) != a7(=0x3).
  The `beq` branch at 0x40b25c targets 0x40b2b8 and is always taken.
  The `beq` branch at 0x40b278 targets 0x40b2d8 and is always taken.
  The `beq` branch at 0x40b294 targets 0x40b2d8 and is always taken.
  The `beq` branch at 0x40b2b0 targets 0x40b2d8 and is always taken.
  The `beq` branch at 0x40b2d0 targets 0x40b2d8 and is always taken.
  The `beq` branch at 0x40b2e4 targets 0x40b314, is taken when a1(?) == a2(=0x1), and falls through when a1(?) != a2(=0x1).
  The `beq` branch at 0x40b2f4 targets 0x40b330, is taken when a3(?) == a4(=0x2), and falls through when a3(?) != a4(=0x2).
  The `beq` branch at 0x40b304 targets 0x40b34c, is taken when a5(?) == a6(=0x3), and falls through when a5(?) != a6(=0x3).
  The `beq` branch at 0x40b30c targets 0x40b368 and is always taken.
  The `beq` branch at 0x40b328 targets 0x40b388 and is always taken.
  The `beq` branch at 0x40b344 targets 0x40b388 and is always taken.
  The `beq` branch at 0x40b360 targets 0x40b388 and is always taken.
  The `beq` branch at 0x40b380 targets 0x40b388 and is always taken.
  The `beq` branch at 0x40b3b0 targets 0x40b3cc and is always taken.
  The `beq` branch at 0x40b3c4 targets 0x40b3cc and is always taken.
  The return at 0x40b3e0 has v0 = one of 0x0, 0x2, ret(mvpGetI2CData), ret(mvpGetVideoPortControl), ret(mvpControlIOCTL).

- `mvpSetMemoryControl` in `usr/lib32/dmedia/video/mvp.so` at 0x40b4a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x40b4a0-0x40e614 (12660 bytes).
  It occupies 12660 bytes.
  The `lw` at 0x40b4c0 loads 4 bytes from a3 (arg3 at entry) +0xc.
  26 such `lw` accesses load 4 bytes from [a3+12] +0x0, including `lw` at 0x40b7ac, `lw` at 0x40b9b4, `lw` at 0x40be28.
  8 such `lw` accesses load 4 bytes from [a3+12] +0x4, including `lw` at 0x40b7b8, `lw` at 0x40b924, `lw` at 0x40c348.
  The `lbu` at 0x40b7e4 loads 1 byte from a0 (arg0 at entry) +0x157.
  8 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x13a, including `sh` at 0x40b85c, `sh` at 0x40be6c, `sh` at 0x40cc98.
  10 such `sw` accesses store 4 bytes to [a3+12] +0x0, including `sw` at 0x40b864, `sw` at 0x40be74, `sw` at 0x40c91c.
  6 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x13c, including `sh` at 0x40b87c, `sh` at 0x40be84, `sh` at 0x40cca4.
  9 such `sw` accesses store 4 bytes to [a3+12] +0x4, including `sw` at 0x40b884, `sw` at 0x40be8c, `sw` at 0x40c934.
  4 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x128, including `lbu` at 0x40b8b8, `lbu` at 0x40c2c4, `lbu` at 0x40cdcc.
  16 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x146, including `lh` at 0x40b8dc, `lh` at 0x40baa0, `lh` at 0x40bbf4.
  16 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x148, including `lh` at 0x40b8f0, `lh` at 0x40bab4, `lh` at 0x40bc08.
  18 such `lh` accesses load 2 bytes from ?, including `lh` at 0x40b90c, `lh` at 0x40b918, `lh` at 0x40beac.
  5 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x121, including `lbu` at 0x40b930, `lbu` at 0x40c354, `lbu` at 0x40cd04.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x12c, including `sb` at 0x40b960, `sb` at 0x40b984.
  9 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x13a, including `lh` at 0x40ba4c, `lh` at 0x40c240, `lh` at 0x40cc60.
  6 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x13c, including `lh` at 0x40ba60, `lh` at 0x40c248, `lh` at 0x40cc74.
  6 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x12d, including `lbu` at 0x40ba80, `lbu` at 0x40bcb8, `lbu` at 0x40bf08.
  15 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x14e, including `lh` at 0x40bacc, `lh` at 0x40bbc4, `lh` at 0x40bf28.
  15 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x150, including `lh` at 0x40bae0, `lh` at 0x40bbd8, `lh` at 0x40bf3c.
  8 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x152, including `lh` at 0x40bb20, `lh` at 0x40bc6c, `lh` at 0x40bfb4.
  8 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x154, including `lh` at 0x40bb34, `lh` at 0x40bc80, `lh` at 0x40bfc8.
  5 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x142, including `sh` at 0x40be54, `sh` at 0x40ccb0, `sh` at 0x40d784.
  3 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x144, including `sh` at 0x40be60, `sh` at 0x40ccbc, `sh` at 0x40d790.
  6 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x13e, including `lh` at 0x40be94, `lh` at 0x40c270, `lh` at 0x40d030.
  5 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x140, including `lh` at 0x40bea0, `lh` at 0x40c27c, `lh` at 0x40d05c.
  7 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x132, including `lh` at 0x40c1d0, `lh` at 0x40c260, `lh` at 0x40c8c4.
  4 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x134, including `lh` at 0x40c1e4, `lh` at 0x40c268, `lh` at 0x40c8d8.
  7 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x132, including `sh` at 0x40c208, `sh` at 0x40c914, `sh` at 0x40d054.
  5 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x134, including `sh` at 0x40c214, `sh` at 0x40c92c, `sh` at 0x40d064.
  5 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x13e, including `sh` at 0x40c220, `sh` at 0x40c8fc, `sh` at 0x40d70c.
  3 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x140, including `sh` at 0x40c22c, `sh` at 0x40c908, `sh` at 0x40d718.
  6 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x142, including `lh` at 0x40c250, `lh` at 0x40c93c, `lh` at 0x40cec4.
  7 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x144, including `lh` at 0x40c258, `lh` at 0x40c948, `lh` at 0x40cd28.
  5 such `sw` accesses store 4 bytes to a4 (arg4 at entry) +0x0, including `sw` at 0x40c298, `sw` at 0x40ccc8, `sw` at 0x40cd88.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x12b, including `sb` at 0x40c36c, `sb` at 0x40c390.
  The `sh` at 0x40cd5c stores 2 bytes to a0 (arg0 at entry) +0x136.
  The `sh` at 0x40cd74 stores 2 bytes to a0 (arg0 at entry) +0x138.
  The `lbu` at 0x40cde8 loads 1 byte from ?.
  The `lh` at 0x40ce4c loads 2 bytes from a0 (arg0 at entry) +0x14a.
  The `lh` at 0x40ce5c loads 2 bytes from a0 (arg0 at entry) +0x14c.
  4 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x12d, including `sb` at 0x40cfec, `sb` at 0x40d7cc, `sb` at 0x40d954.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x14e, including `sh` at 0x40d070, `sh` at 0x40d79c.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x150, including `sh` at 0x40d07c, `sh` at 0x40d7a8.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x152, including `sh` at 0x40d088, `sh` at 0x40d7b4.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x154, including `sh` at 0x40d094, `sh` at 0x40d7c0.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x146, including `sh` at 0x40d9d8, `sh` at 0x40de28.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x148, including `sh` at 0x40d9e4, `sh` at 0x40de34.
  The `sb` at 0x40decc stores 1 byte to a0 (arg0 at entry) +0x121.
  The `lbu` at 0x40df10 loads 1 byte from a0 (arg0 at entry) +0x127.
  The `sw` at 0x40df24 stores 4 bytes to a0 (arg0 at entry) +0x34.
  4 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x125, including `lbu` at 0x40df2c, `lbu` at 0x40e2d4, `lbu` at 0x40e304.
  The `lw` at 0x40df4c loads 4 bytes from a0 (arg0 at entry) +0x34.
  3 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x127, including `sb` at 0x40dfc8, `sb` at 0x40e0a0, `sb` at 0x40e208.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x125, including `sb` at 0x40e378, `sb` at 0x40e400.
  The `sb` at 0x40e3ac stores 1 byte to a0 (arg0 at entry) +0x123.
  The `sb` at 0x40e4bc stores 1 byte to a0 (arg0 at entry) +0x126.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x156, including `sb` at 0x40e4d8, `sb` at 0x40e5b8.
  The `sb` at 0x40e4f4 stores 1 byte to a0 (arg0 at entry) +0x122.
  The `sb` at 0x40e510 stores 1 byte to a0 (arg0 at entry) +0x129.
  The `sb` at 0x40e52c stores 1 byte to a0 (arg0 at entry) +0x124.
  The `sb` at 0x40e544 stores 1 byte to a0 (arg0 at entry) +0x120.
  The `jalr` at 0x40b790 calls mvpRead with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `bgezall` at 0x40b7d8 calls mvpGetScreenInfo [0x40b3f0] with a0=a0 at entry (arg0), a1=0x9, a2=0x4, a3=sp-392.
  The `jalr` at 0x40b8a0 calls mvpPixSize with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x2.
  The `jalr` at 0x40bd5c calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1.
  The `jalr` at 0x40bdc0 calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x0.
  The `jalr` at 0x40c038 calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1.
  The `jalr` at 0x40c0f8 calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x0.
  The `jalr` at 0x40c288 calls mvpPrintf with a0=a0 at entry (arg0), a1=0x419080, a2=[a0+314]:2, a3=[a0+316]:2, a4=[a0+322]:2, a5=[a0+324]:2, a6=[a0+306]:2, a7=[a0+308]:2.
  The `jalr` at 0x40c2ac calls mvpPixSize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0x40c7d4 calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1.
  The `jalr` at 0x40c860 calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x0.
  The `jalr` at 0x40cb98 calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1.
  The `jalr` at 0x40cbfc calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x0, a4=-0x1.
  The `jalr` at 0x40ce88 calls mvpPixSize with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x40d420 calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1.
  The `jalr` at 0x40d4d8 calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x0.
  The `jalr` at 0x40d848 calls mvpPixSize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40dbf4 calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1.
  The `jalr` at 0x40ddf8 calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1, a4=[a0+336]:2, a5=[a0+334]:2, a7=[a0+318]:2.
  The `bgezall` at 0x40deb0 calls mvpfromvlcaptype [0x408f00] with a0=[[a3+12]], a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x40dee4 calls mvpSetFields [0x407820] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x40defc calls mvpPixSize with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x40df38 calls mvptovlformat [0x409a70] with a0=[a0+293]:1, a1=[[a3+12]], a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x40df5c calls mvpFindPackingAndCsc with a0=[a0+52], a1=ret(mvptovlformat), a2=sp-128, a3=sp-124.
  The `bgezall` at 0x40df90 calls mvpfromvlpacking [0x4090c0] with a0=?, a1=?, a2=-0x1, a3=?.
  The `jalr` at 0x40dfd4 calls mvpPixSize with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x40e2f0 calls printf with a0=0x4190b0, a1=[[a3+12]], a2=a2 at entry (arg2), a3=?.
  The `bgezall` at 0x40e310 calls mvpfromvlcolorspace [0x409810] with a0=[[a3+12]], a1=[a0+293]:1, a2=?, a3=?.
  The `jalr` at 0x40e34c calls fprintf with a0=sym(__iob)+32, a1=0x4190d0, a2=[[a3+12]], a3=?.
  The `bgezall` at 0x40e3c8 calls mvpfromvlformat [0x409980] with a0=[[a3+12]], a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40e41c calls mvpfromvlmemmode with a0=a0 at entry (arg0), a1=[[a3+12]], a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0x40e464 calls mvpMipmapMode with a0=a0 at entry (arg0), a1=?, a2=ret(mvpfromvlmemmode), a3=-0x1, a5=ret(mvpfromvlmemmode), a6=0x2.
  The `jalr` at 0x40e49c calls mvpPrintf with a0=a0 at entry (arg0), a1=0x419100, a2=[a0+314]:2, a3=[a0+316]:2, a7=-0x1.
  The `bne` branch at 0x40b4dc targets 0x40b4fc, is taken when at(=a2) < 0x3f (signed), and falls through when at(=a2) >= 0x3f (signed).
  The `beq` branch at 0x40b4ec targets 0x40b624, is taken when v1(=a2) >= 0x40 (signed), and falls through when v1(=a2) < 0x40 (signed).
  The `beq` branch at 0x40b4f4 targets 0x40d840 and is always taken.
  The `bne` branch at 0x40b504 targets 0x40b524, is taken when a0(=a2) < 0x6 (signed), and falls through when a0(=a2) >= 0x6 (signed).
  The `beq` branch at 0x40b514 targets 0x40b5a4, is taken when a1(=a2) >= 0x7 (signed), and falls through when a1(=a2) < 0x7 (signed).
  The `beq` branch at 0x40b51c targets 0x40dea0 and is always taken.
  The `bne` branch at 0x40b52c targets 0x40b54c, is taken when a2 < 0x4 (signed), and falls through when a2 >= 0x4 (signed).
  The `beq` branch at 0x40b53c targets 0x40b58c, is taken when a3(=a2) >= 0x5 (signed), and falls through when a3(=a2) < 0x5 (signed).
  The `beq` branch at 0x40b544 targets 0x40b788 and is always taken.
  The `bne` branch at 0x40b554 targets 0x40b574, is taken when a4(=a2) < 0x3 (signed), and falls through when a4(=a2) >= 0x3 (signed).
  The `beq` branch at 0x40b564 targets 0x40e5dc, is taken when a5(=a2) >= 0x4 (signed), and falls through when a5(=a2) < 0x4 (signed).
  The `beq` branch at 0x40b56c targets 0x40c2a4 and is always taken.
  The `bne` branch at 0x40b57c targets 0x40e5dc, is taken when a6(=a2) != a7(=0x2), and falls through when a6(=a2) == a7(=0x2).
  The `beq` branch at 0x40b584 targets 0x40ccd4 and is always taken.
  The `bne` branch at 0x40b594 targets 0x40e5dc, is taken when t0(=a2) != t1(=0x5), and falls through when t0(=a2) == t1(=0x5).
  The `beq` branch at 0x40b59c targets 0x40cd94 and is always taken.
  The `bne` branch at 0x40b5ac targets 0x40b5cc, is taken when t2(=a2) < 0x15 (signed), and falls through when t2(=a2) >= 0x15 (signed).
  The `beq` branch at 0x40b5bc targets 0x40b60c, is taken when t3(=a2) >= 0x16 (signed), and falls through when t3(=a2) < 0x16 (signed).
  The `beq` branch at 0x40b5c4 targets 0x40e3b8 and is always taken.
  The `bne` branch at 0x40b5d4 targets 0x40b5f4, is taken when t8(=a2) < 0x12 (signed), and falls through when t8(=a2) >= 0x12 (signed).
  The `beq` branch at 0x40b5e4 targets 0x40e5dc, is taken when t9(=a2) >= 0x13 (signed), and falls through when t9(=a2) < 0x13 (signed).
  The `beq` branch at 0x40b5ec targets 0x40e3a0 and is always taken.
  The `bne` branch at 0x40b5fc targets 0x40e5dc, is taken when ra(=a2) != at(=0x7), and falls through when ra(=a2) == at(=0x7).
  The `beq` branch at 0x40b604 targets 0x40def4 and is always taken.
  The `bne` branch at 0x40b614 targets 0x40e5dc, is taken when v0(=a2) != v1(=0x2c), and falls through when v0(=a2) == v1(=0x2c).
  The `beq` branch at 0x40b61c targets 0x40ce80 and is always taken.
  The `bne` branch at 0x40b634 targets 0x40b65c, is taken when a0(=a2) < a1(=0x4d560005) (signed), and falls through when a0(=a2) >= a1(=0x4d560005) (signed).
  The `bne` branch at 0x40b64c targets 0x40b6e0, is taken when a2(=0x4d560005) < a3(=a2) (signed), and falls through when a2(=0x4d560005) >= a3(=a2) (signed).
  The `beq` branch at 0x40b654 targets 0x40e4e4 and is always taken.
  The `bne` branch at 0x40b664 targets 0x40b684, is taken when a3(=a2) < 0x45 (signed), and falls through when a3(=a2) >= 0x45 (signed).
  The `beq` branch at 0x40b674 targets 0x40b6c4, is taken when a4(=a2) >= 0x46 (signed), and falls through when a4(=a2) < 0x46 (signed).
  The `beq` branch at 0x40b67c targets 0x40e2d0 and is always taken.
  The `bne` branch at 0x40b68c targets 0x40b6ac, is taken when a5(=a2) < 0x43 (signed), and falls through when a5(=a2) >= 0x43 (signed).
  The `beq` branch at 0x40b69c targets 0x40e5dc, is taken when a6(=a2) >= 0x44 (signed), and falls through when a6(=a2) < 0x44 (signed).
  The `beq` branch at 0x40b6a4 targets 0x40e40c and is always taken.
  The `bne` branch at 0x40b6b4 targets 0x40e5dc, is taken when a7(=a2) != t0(=0x41), and falls through when a7(=a2) == t0(=0x41).
  The `beq` branch at 0x40b6bc targets 0x40e4c8 and is always taken.
  The `bne` branch at 0x40b6d0 targets 0x40e5dc, is taken when t1(=a2) != t2(=0x4d560003), and falls through when t1(=a2) == t2(=0x4d560003).
  The `beq` branch at 0x40b6d8 targets 0x40e538 and is always taken.
  The `bne` branch at 0x40b6f0 targets 0x40b718, is taken when t3(=a2) < t8(=0x4d56000b) (signed), and falls through when t3(=a2) >= t8(=0x4d56000b) (signed).
  The `bne` branch at 0x40b708 targets 0x40b76c, is taken when t9(=0x4d56000b) < ra(=a2) (signed), and falls through when t9(=0x4d56000b) >= ra(=a2) (signed).
  The `beq` branch at 0x40b710 targets 0x40ce80 and is always taken.
  The `bne` branch at 0x40b728 targets 0x40b750, is taken when ra(=a2) < at(=0x4d560007) (signed), and falls through when ra(=a2) >= at(=0x4d560007) (signed).
  The `bne` branch at 0x40b740 targets 0x40e5dc, is taken when v0(=0x4d560007) < v1(=a2) (signed), and falls through when v0(=0x4d560007) >= v1(=a2) (signed).
  The `beq` branch at 0x40b748 targets 0x40e51c and is always taken.
  The `bne` branch at 0x40b75c targets 0x40e5dc, is taken when v1(=a2) != a0(=0x4d560006), and falls through when v1(=a2) == a0(=0x4d560006).
  The `beq` branch at 0x40b764 targets 0x40e500 and is always taken.
  The `bne` branch at 0x40b778 targets 0x40e5dc, is taken when a1(=a2) != a2(=0x4d560017), and falls through when a1(=a2) == a2(=0x4d560017).
  The `beq` branch at 0x40b780 targets 0x40e550 and is always taken.
  The `bne` branch at 0x40b7a0 targets 0x40b898, is taken when v0(=ret(mvpRead)) != a3(=0x2), and falls through when v0(=ret(mvpRead)) == a3(=0x2).
  The `beq` branch at 0x40b7e8 targets 0x40b804, is taken when v0(=[a0+343]:1) == 0, and falls through when v0(=[a0+343]:1) != 0.
  The `beq` branch at 0x40b810 targets 0x40b828, is taken when a1(?) >= a2(=[[a3+12]]) (signed), and falls through when a1(?) < a2(=[[a3+12]]) (signed).
  The `beq` branch at 0x40b834 targets 0x40b84c, is taken when a5(?) >= a6(=[[a3+12]+4]) (signed), and falls through when a5(?) < a6(=[[a3+12]+4]) (signed).
  The `beq` branch at 0x40b888 targets 0x40e5ec and is always taken.
  The `bne` branch at 0x40b934 targets 0x40b980, is taken when t3(=[a0+289]:1) != 0, and falls through when t3(=[a0+289]:1) == 0.
  The `beq` branch at 0x40b978 targets 0x40b988 and is always taken.
  The `bgtz` branch at 0x40b994 targets 0x40b9ac, is taken when t0(?) > 0 (signed), and falls through when t0(?) <= 0 (signed).
  The `beq` branch at 0x40b9cc targets 0x40b9e4, is taken when t8(?) >= 0x8 (signed), and falls through when t8(?) < 0x8 (signed).
  The `beq` branch at 0x40ba04 targets 0x40ba30, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x40ba54 targets 0x40ba7c, is taken when a5(=[a0+314]:2) != a6(?), and falls through when a5(=[a0+314]:2) == a6(?).
  The `bne` branch at 0x40ba68 targets 0x40ba7c, is taken when t1(=[a0+316]:2) != t2(?), and falls through when t1(=[a0+316]:2) == t2(?).
  The `beq` branch at 0x40ba74 targets 0x40e600 and is always taken.
  The `beq` branch at 0x40ba84 targets 0x40bb64, is taken when t2(=[a0+301]:1) == 0, and falls through when t2(=[a0+301]:1) != 0.
  The `beq` branch at 0x40bb5c targets 0x40bb94 and is always taken.
  The `beq` branch at 0x40bba0 targets 0x40bc3c, is taken when a6(?) >= a7(?) (signed), and falls through when a6(?) < a7(?) (signed).
  The `beq` branch at 0x40bc48 targets 0x40bcb4, is taken when at(?) >= v0(?) (signed), and falls through when at(?) < v0(?) (signed).
  The `beq` branch at 0x40bcbc targets 0x40bdf0, is taken when a4(=[a0+301]:1) == 0, and falls through when a4(=[a0+301]:1) != 0.
  The `beq` branch at 0x40bcf0 targets 0x40bd20, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x40bd40 targets 0x40bd74, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `bne` branch at 0x40bd6c targets 0x40bdac, is taken when v0(=ret(mvpSetScale)) != v1(=-0x1), and falls through when v0(=ret(mvpSetScale)) == v1(=-0x1).
  The `beq` branch at 0x40bd8c targets 0x40bda4, is taken when a0(?) >= a1(?) (signed), and falls through when a0(?) < a1(?) (signed).
  The `beq` branch at 0x40bd9c targets 0x40e600 and is always taken.
  The `beq` branch at 0x40bda4 targets 0x40bd20 and is always taken.
  The `bne` branch at 0x40bdd0 targets 0x40bde8, is taken when v0(=ret(mvpSetScale)) != a4(=-0x1), and falls through when v0(=ret(mvpSetScale)) == a4(=-0x1).
  The `beq` branch at 0x40bde0 targets 0x40e600 and is always taken.
  The `beq` branch at 0x40bde8 targets 0x40be20 and is always taken.
  The `bne` branch at 0x40be2c targets 0x40be44, is taken when t1(?) != t2(=[[a3+12]]), and falls through when t1(?) == t2(=[[a3+12]]).
  The `beq` branch at 0x40be3c targets 0x40be4c, is taken when t3(?) == t8(?), and falls through when t3(?) != t8(?).
  The `beq` branch at 0x40bec4 targets 0x40bee0, is taken when a6(?) >= a7(?) (signed), and falls through when a6(?) < a7(?) (signed).
  The `beq` branch at 0x40beec targets 0x40bf04, is taken when t3(?) >= t8(?) (signed), and falls through when t3(?) < t8(?) (signed).
  The `beq` branch at 0x40bf0c targets 0x40c19c, is taken when at(=[a0+301]:1) == 0, and falls through when at(=[a0+301]:1) != 0.
  The `bne` branch at 0x40c01c targets 0x40c050, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `bne` branch at 0x40c048 targets 0x40c0b0, is taken when v0(=ret(mvpSetScale)) != t3(=-0x1), and falls through when v0(=ret(mvpSetScale)) == t3(=-0x1).
  The `blez` branch at 0x40c054 targets 0x40c06c, is taken when t8(?) <= 0 (signed), and falls through when t8(?) > 0 (signed).
  The `beq` branch at 0x40c064 targets 0x40c074 and is always taken.
  The `beq` branch at 0x40c090 targets 0x40c0a8, is taken when at(?) >= v0(?) (signed), and falls through when at(?) < v0(?) (signed).
  The `beq` branch at 0x40c0a0 targets 0x40e600 and is always taken.
  The `beq` branch at 0x40c0a8 targets 0x40bffc and is always taken.
  The `beq` branch at 0x40c0b4 targets 0x40c194 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x40c0cc targets 0x40c0e4, is taken when a3(?) >= a4(?) (signed), and falls through when a3(?) < a4(?) (signed).
  The `beq` branch at 0x40c0dc targets 0x40e600 and is always taken.
  The `bne` branch at 0x40c108 targets 0x40c180, is taken when v0(=ret(mvpSetScale)) != a6(=-0x1), and falls through when v0(=ret(mvpSetScale)) == a6(=-0x1).
  The `beq` branch at 0x40c178 targets 0x40c188 and is always taken.
  The `beq` branch at 0x40c180 targets 0x40c194 and is always taken.
  The `bne` branch at 0x40c18c targets 0x40c0bc and is always taken.
  The `beq` branch at 0x40c194 targets 0x40c1cc and is always taken.
  The `bne` branch at 0x40c1d8 targets 0x40c1f4, is taken when v0(=[a0+306]:2) != v1(?), and falls through when v0(=[a0+306]:2) == v1(?).
  The `beq` branch at 0x40c1ec targets 0x40c200, is taken when v1(=[a0+308]:2) == a0(?), and falls through when v1(=[a0+308]:2) != a0(?).
  The `beq` branch at 0x40c29c targets 0x40e5ec and is always taken.
  The `bne` branch at 0x40c358 targets 0x40c38c, is taken when a4(=[a0+289]:1) != 0, and falls through when a4(=[a0+289]:1) == 0.
  The `beq` branch at 0x40c384 targets 0x40c394 and is always taken.
  The `beq` branch at 0x40c3a0 targets 0x40c3b8, is taken when a1(?) >= a2(?) (signed), and falls through when a1(?) < a2(?) (signed).
  The `beq` branch at 0x40c3d0 targets 0x40c3e8, is taken when a5(?) >= a6(?) (signed), and falls through when a5(?) < a6(?) (signed).
  The `beq` branch at 0x40c420 targets 0x40c44c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x40c46c targets 0x40c54c, is taken when a0(=[a0+301]:1) == 0, and falls through when a0(=[a0+301]:1) != 0.
  The `beq` branch at 0x40c544 targets 0x40c57c and is always taken.
  The `beq` branch at 0x40c58c targets 0x40c62c, is taken when v1(?) >= a0(?) (signed), and falls through when v1(?) < a0(?) (signed).
  The `beq` branch at 0x40c63c targets 0x40c6ac, is taken when a7(?) >= t0(?) (signed), and falls through when a7(?) < t0(?) (signed).
  The `beq` branch at 0x40c6b4 targets 0x40c890, is taken when t9(=[a0+301]:1) == 0, and falls through when t9(=[a0+301]:1) != 0.
  The `beq` branch at 0x40c6e8 targets 0x40c798, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `bne` branch at 0x40c7b8 targets 0x40c7ec, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bne` branch at 0x40c7e4 targets 0x40c84c, is taken when v0(=ret(mvpSetScale)) != t9(=-0x1), and falls through when v0(=ret(mvpSetScale)) == t9(=-0x1).
  The `blez` branch at 0x40c7f0 targets 0x40c808, is taken when ra(?) <= 0 (signed), and falls through when ra(?) > 0 (signed).
  The `beq` branch at 0x40c800 targets 0x40c810 and is always taken.
  The `beq` branch at 0x40c82c targets 0x40c844, is taken when v1(?) >= a0(?) (signed), and falls through when v1(?) < a0(?) (signed).
  The `beq` branch at 0x40c83c targets 0x40e600 and is always taken.
  The `beq` branch at 0x40c844 targets 0x40c798 and is always taken.
  The `bne` branch at 0x40c870 targets 0x40c888, is taken when v0(=ret(mvpSetScale)) != a4(=-0x1), and falls through when v0(=ret(mvpSetScale)) == a4(=-0x1).
  The `beq` branch at 0x40c880 targets 0x40e600 and is always taken.
  The `beq` branch at 0x40c888 targets 0x40c8c0 and is always taken.
  The `bne` branch at 0x40c8cc targets 0x40c8e8, is taken when t1(=[a0+306]:2) != t2(?), and falls through when t1(=[a0+306]:2) == t2(?).
  The `beq` branch at 0x40c8e0 targets 0x40c8f4, is taken when t2(=[a0+308]:2) == t3(?), and falls through when t2(=[a0+308]:2) != t3(?).
  The `beq` branch at 0x40c95c targets 0x40c96c, is taken when a4(?) >= a5(=[a0+322]:2) (signed), and falls through when a4(?) < a5(=[a0+322]:2) (signed).
  The `beq` branch at 0x40c978 targets 0x40c988, is taken when t1(?) >= t2(=[a0+324]:2) (signed), and falls through when t1(?) < t2(=[a0+324]:2) (signed).
  The `beq` branch at 0x40c990 targets 0x40cc2c, is taken when t8(=[a0+301]:1) == 0, and falls through when t8(=[a0+301]:1) != 0.
  The `beq` branch at 0x40caac targets 0x40cb5c, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x40cb7c targets 0x40cbb0, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x40cba8 targets 0x40cbe8, is taken when v0(=ret(mvpSetScale)) != a4(=-0x1), and falls through when v0(=ret(mvpSetScale)) == a4(=-0x1).
  The `beq` branch at 0x40cbc8 targets 0x40cbe0, is taken when a5(?) >= a6(?) (signed), and falls through when a5(?) < a6(?) (signed).
  The `beq` branch at 0x40cbd8 targets 0x40e600 and is always taken.
  The `beq` branch at 0x40cbe0 targets 0x40cb5c and is always taken.
  The `bne` branch at 0x40cc0c targets 0x40cc24, is taken when v0(=ret(mvpSetScale)) != t1(=-0x1), and falls through when v0(=ret(mvpSetScale)) == t1(=-0x1).
  The `beq` branch at 0x40cc1c targets 0x40e600 and is always taken.
  The `beq` branch at 0x40cc24 targets 0x40cc5c and is always taken.
  The `bne` branch at 0x40cc68 targets 0x40cc84, is taken when ra(=[a0+314]:2) != at(?), and falls through when ra(=[a0+314]:2) == at(?).
  The `beq` branch at 0x40cc7c targets 0x40cc90, is taken when at(=[a0+316]:2) == v0(?), and falls through when at(=[a0+316]:2) != v0(?).
  The `beq` branch at 0x40cccc targets 0x40e5ec and is always taken.
  The `beq` branch at 0x40cce8 targets 0x40cd00, is taken when t1(=[[a3+12]]) == 0, and falls through when t1(=[[a3+12]]) != 0.
  The `bne` branch at 0x40cd08 targets 0x40cd24, is taken when t9(=[a0+289]:1) != 0, and falls through when t9(=[a0+289]:1) == 0.
  The `beq` branch at 0x40cd34 targets 0x40cd50, is taken when v0(=[a0+324]:2) >= v1(?) (signed), and falls through when v0(=[a0+324]:2) < v1(?) (signed).
  The `beq` branch at 0x40cd8c targets 0x40e5ec and is always taken.
  The `beq` branch at 0x40ce08 targets 0x40ce28, is taken when a5(=[a0+289]:1) == a6(=0x3), and falls through when a5(=[a0+289]:1) != a6(=0x3).
  The `bc1t` branch at 0x40ce38 targets 0x40ce70, is taken when f0 == f1 (c.eq.s at 0x40ce30), and falls through when not (f0 == f1 (c.eq.s at 0x40ce30)).
  The `beq` branch at 0x40ce68 targets 0x40ce78 and is always taken.
  The `beq` branch at 0x40ce78 targets 0x40e5ec and is always taken.
  The `bne` branch at 0x40cee0 targets 0x40d1cc, is taken when at(=a2) != v0(=0x2c), and falls through when at(=a2) == v0(=0x2c).
  The `bc1f` branch at 0x40cf6c targets 0x40cf94, is taken when not (f2(=0x3ff0000000000000) < f3 (c.lt.d at 0x40cf64)), and falls through when f2(=0x3ff0000000000000) < f3 (c.lt.d at 0x40cf64).
  The `bc1f` branch at 0x40cfa8 targets 0x40d0a0, is taken when not (f7 == f8(=0x3ff0000000000000) (c.eq.d at 0x40cfa0)), and falls through when f7 == f8(=0x3ff0000000000000) (c.eq.d at 0x40cfa0).
  The `bc1t` branch at 0x40cfc4 targets 0x40cfe8, is taken when f8 == f9(=0x3fe0000000000000) (c.eq.d at 0x40cfbc), and falls through when not (f8 == f9(=0x3fe0000000000000) (c.eq.d at 0x40cfbc)).
  The `bc1f` branch at 0x40cfe0 targets 0x40d0a0, is taken when not (f9 == f10(=0x3ff0000000000000) (c.eq.d at 0x40cfd8)), and falls through when f9 == f10(=0x3ff0000000000000) (c.eq.d at 0x40cfd8).
  The `beq` branch at 0x40d098 targets 0x40e5ec and is always taken.
  The `bc1f` branch at 0x40d0b4 targets 0x40d0dc, is taken when not (f12 < f13(=0x3f70000000000000) (c.lt.d at 0x40d0ac)), and falls through when f12 < f13(=0x3f70000000000000) (c.lt.d at 0x40d0ac).
  The `beq` branch at 0x40d1c4 targets 0x40d2d0 and is always taken.
  The `bne` branch at 0x40d1ec targets 0x40d208, is taken when t1(=[a0+289]:1) != 0, and falls through when t1(=[a0+289]:1) == 0.
  The `beq` branch at 0x40d214 targets 0x40d248, is taken when ra(?) >= at(?) (signed), and falls through when ra(?) < at(?) (signed).
  The `beq` branch at 0x40d234 targets 0x40d248, is taken when v0(?) >= v1(?) (signed), and falls through when v0(?) < v1(?) (signed).
  The `beq` branch at 0x40d254 targets 0x40d288, is taken when a1(?) >= a2(?) (signed), and falls through when a1(?) < a2(?) (signed).
  The `beq` branch at 0x40d274 targets 0x40d288, is taken when a3(?) >= a4(?) (signed), and falls through when a3(?) < a4(?) (signed).
  The `bgtz` branch at 0x40d2d4 targets 0x40d2f0, is taken when ra(?) > 0 (signed), and falls through when ra(?) <= 0 (signed).
  The `beq` branch at 0x40d324 targets 0x40d354, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x40d404 targets 0x40d438, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0x40d430 targets 0x40d47c, is taken when v0(=ret(mvpSetScale)) != a1(=-0x1), and falls through when v0(=ret(mvpSetScale)) == a1(=-0x1).
  The `bne` branch at 0x40d450 targets 0x40d468, is taken when a2(?) < a3(?) (signed), and falls through when a2(?) >= a3(?) (signed).
  The `beq` branch at 0x40d460 targets 0x40e600 and is always taken.
  The `beq` branch at 0x40d474 targets 0x40d3e4 and is always taken.
  The `bne` branch at 0x40d4e8 targets 0x40d500, is taken when v0(=ret(mvpSetScale)) != t3(=-0x1), and falls through when v0(=ret(mvpSetScale)) == t3(=-0x1).
  The `beq` branch at 0x40d4f8 targets 0x40e600 and is always taken.
  The `beq` branch at 0x40d528 targets 0x40d544, is taken when t9(?) >= ra(?) (signed), and falls through when t9(?) < ra(?) (signed).
  The `beq` branch at 0x40d554 targets 0x40d570, is taken when v1(?) >= a0(?) (signed), and falls through when v1(?) < a0(?) (signed).
  The `beq` branch at 0x40d67c targets 0x40d6a0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x40d6c4 targets 0x40d6e0, is taken when a0(=[a0+306]:2) != a1(?), and falls through when a0(=[a0+306]:2) == a1(?).
  The `beq` branch at 0x40d6d8 targets 0x40d6ec, is taken when a4(=[a0+308]:2) == a5(?), and falls through when a4(=[a0+308]:2) != a5(?).
  The `bne` branch at 0x40d728 targets 0x40d744, is taken when ra(=[a0+314]:2) != at(?), and falls through when ra(=[a0+314]:2) == at(?).
  The `beq` branch at 0x40d73c targets 0x40d750, is taken when at(=[a0+316]:2) == v0(?), and falls through when at(=[a0+316]:2) != v0(?).
  The `bne` branch at 0x40d7dc targets 0x40d80c, is taken when v1(=a2) != a0(=0x4d56000b), and falls through when v1(=a2) == a0(=0x4d56000b).
  The `beq` branch at 0x40d804 targets 0x40d82c and is always taken.
  The `beq` branch at 0x40d838 targets 0x40e5ec and is always taken.
  The `bc1f` branch at 0x40d8ac targets 0x40d8d4, is taken when not (f21(=0x3ff0000000000000) < f23 (c.lt.d at 0x40d8a4)), and falls through when f21(=0x3ff0000000000000) < f23 (c.lt.d at 0x40d8a4).
  The `bc1f` branch at 0x40d910 targets 0x40d9f0, is taken when not (f29 == f31(=0x3ff0000000000000) (c.eq.d at 0x40d908)), and falls through when f29 == f31(=0x3ff0000000000000) (c.eq.d at 0x40d908).
  The `bc1t` branch at 0x40d92c targets 0x40d950, is taken when f31 == f0(=0x3fe0000000000000) (c.eq.d at 0x40d924), and falls through when not (f31 == f0(=0x3fe0000000000000) (c.eq.d at 0x40d924)).
  The `bc1f` branch at 0x40d948 targets 0x40d9f0, is taken when not (f0 == f1(=0x3ff0000000000000) (c.eq.d at 0x40d940)), and falls through when f0 == f1(=0x3ff0000000000000) (c.eq.d at 0x40d940).
  The `beq` branch at 0x40d9e8 targets 0x40e5ec and is always taken.
  The `bc1f` branch at 0x40da04 targets 0x40da2c, is taken when not (f3 < f4(=0x3f70000000000000) (c.lt.d at 0x40d9fc)), and falls through when f3 < f4(=0x3f70000000000000) (c.lt.d at 0x40d9fc).
  The `bgtz` branch at 0x40dac0 targets 0x40dad0, is taken when v0(?) > 0 (signed), and falls through when v0(?) <= 0 (signed).
  The `beq` branch at 0x40db04 targets 0x40db28, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x40dbd8 targets 0x40dc0c, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x40dc04 targets 0x40dc44, is taken when v0(=ret(mvpSetScale)) != t0(=-0x1), and falls through when v0(=ret(mvpSetScale)) == t0(=-0x1).
  The `bne` branch at 0x40dc24 targets 0x40dc3c, is taken when t1(?) < t2(?) (signed), and falls through when t1(?) >= t2(?) (signed).
  The `beq` branch at 0x40dc34 targets 0x40e600 and is always taken.
  The `beq` branch at 0x40dc3c targets 0x40dbb8 and is always taken.
  The `beq` branch at 0x40dd08 targets 0x40dd2c, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x40dddc targets 0x40de10, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0x40de08 targets 0x40de20, is taken when v0(=ret(mvpSetScale)) != a3(=-0x1), and falls through when v0(=ret(mvpSetScale)) == a3(=-0x1).
  The `beq` branch at 0x40de18 targets 0x40e600 and is always taken.
  The `beq` branch at 0x40de98 targets 0x40e5ec and is always taken.
  The `beq` branch at 0x40deec targets 0x40e5ec and is always taken.
  The `bne` branch at 0x40df6c targets 0x40df84, is taken when a1(?) != a2(=-0x1), and falls through when a1(?) == a2(=-0x1).
  The `beq` branch at 0x40df7c targets 0x40e600 and is always taken.
  The `bne` branch at 0x40dfa8 targets 0x40dfc0, is taken when ra(=ret(mvpfromvlpacking)) != at(=-0x1), and falls through when ra(=ret(mvpfromvlpacking)) == at(=-0x1).
  The `beq` branch at 0x40dfb8 targets 0x40e600 and is always taken.
  The `beq` branch at 0x40dff0 targets 0x40e2c8, is taken when a1(?) >= a2(?) (signed), and falls through when a1(?) < a2(?) (signed).
  The `beq` branch at 0x40e038 targets 0x40e160, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x40e090 targets 0x40e0b4, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x40e0ac targets 0x40e600 and is always taken.
  The `beq` branch at 0x40e0c0 targets 0x40e160, is taken when v0(=[a0+314]:2) == v1(?), and falls through when v0(=[a0+314]:2) != v1(?).
  The `beq` branch at 0x40e1a0 targets 0x40e2c8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x40e1f8 targets 0x40e21c, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x40e214 targets 0x40e600 and is always taken.
  The `beq` branch at 0x40e228 targets 0x40e2c8, is taken when a4(=[a0+306]:2) == a5(?), and falls through when a4(=[a0+306]:2) != a5(?).
  The `beq` branch at 0x40e2c8 targets 0x40e5ec and is always taken.
  The `bne` branch at 0x40e328 targets 0x40e364, is taken when a1(=ret(mvpfromvlcolorspace)) != a2(=-0x1), and falls through when a1(=ret(mvpfromvlcolorspace)) == a2(=-0x1).
  The `beq` branch at 0x40e35c targets 0x40e600 and is always taken.
  The `beq` branch at 0x40e384 targets 0x40e398, is taken when a2(=[a0+293]:1) == a3(=ret(mvpfromvlcolorspace)), and falls through when a2(=[a0+293]:1) != a3(=ret(mvpfromvlcolorspace)).
  The `beq` branch at 0x40e398 targets 0x40e5ec and is always taken.
  The `beq` branch at 0x40e3b0 targets 0x40e5ec and is always taken.
  The `bne` branch at 0x40e3e0 targets 0x40e3f8, is taken when a1(=ret(mvpfromvlformat)) != a2(=-0x1), and falls through when a1(=ret(mvpfromvlformat)) == a2(=-0x1).
  The `beq` branch at 0x40e3f0 targets 0x40e600 and is always taken.
  The `beq` branch at 0x40e404 targets 0x40e5ec and is always taken.
  The `bne` branch at 0x40e434 targets 0x40e44c, is taken when a2(=ret(mvpfromvlmemmode)) != a3(=-0x1), and falls through when a2(=ret(mvpfromvlmemmode)) == a3(=-0x1).
  The `beq` branch at 0x40e444 targets 0x40e600 and is always taken.
  The `bne` branch at 0x40e454 targets 0x40e4b4, is taken when a5(=ret(mvpfromvlmemmode)) != a6(=0x2), and falls through when a5(=ret(mvpfromvlmemmode)) == a6(=0x2).
  The `bne` branch at 0x40e474 targets 0x40e4b4, is taken when v0(=ret(mvpMipmapMode)) != a7(=-0x1), and falls through when v0(=ret(mvpMipmapMode)) == a7(=-0x1).
  The `beq` branch at 0x40e4ac targets 0x40e600 and is always taken.
  The `beq` branch at 0x40e4c0 targets 0x40e5ec and is always taken.
  The `beq` branch at 0x40e4dc targets 0x40e5ec and is always taken.
  The `beq` branch at 0x40e4f8 targets 0x40e5ec and is always taken.
  The `beq` branch at 0x40e514 targets 0x40e5ec and is always taken.
  The `beq` branch at 0x40e530 targets 0x40e5ec and is always taken.
  The `beq` branch at 0x40e548 targets 0x40e5ec and is always taken.
  The `beq` branch at 0x40e55c targets 0x40e5ac, is taken when t2(=[[a3+12]]) == 0, and falls through when t2(=[[a3+12]]) != 0.
  The `beq` branch at 0x40e56c targets 0x40e5ac, is taken when t3(=[[a3+12]]) == t8(=0x1), and falls through when t3(=[[a3+12]]) != t8(=0x1).
  The `beq` branch at 0x40e57c targets 0x40e5ac, is taken when t9(=[[a3+12]]) == ra(=0x2), and falls through when t9(=[[a3+12]]) != ra(=0x2).
  The `beq` branch at 0x40e58c targets 0x40e5ac, is taken when at(=[[a3+12]]) == v0(=0x3), and falls through when at(=[[a3+12]]) != v0(=0x3).
  The `beq` branch at 0x40e59c targets 0x40e5ac, is taken when v1(=[[a3+12]]) == a0(=0x4), and falls through when v1(=[[a3+12]]) != a0(=0x4).
  The `beq` branch at 0x40e5a4 targets 0x40e5c4 and is always taken.
  The `beq` branch at 0x40e5bc targets 0x40e5d4 and is always taken.
  The `beq` branch at 0x40e5cc targets 0x40e600 and is always taken.
  The `beq` branch at 0x40e5d4 targets 0x40e5ec and is always taken.
  The `beq` branch at 0x40e5e4 targets 0x40e600 and is always taken.
  The return at 0x40e60c has v0 = one of 0x0, 0x2, 0x7, 0x19, 0x400, 0x401.
  The instructions from 0x40b890 to 0x40b894 are not reached by any path from the entry, and their branches are not listed.

- `mvpGCD` in `usr/lib32/dmedia/video/mvp.so` at 0x40e620 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x40e620-0x40e698 (120 bytes).
  It occupies 120 bytes.
  The `blez` branch at 0x40e634 targets 0x40e684, is taken when at(=a0) <= 0 (signed), and falls through when at(=a0) > 0 (signed).
  The `beq` branch at 0x40e648 targets 0x40e668, is taken when v0(?) >= v1(?) (signed), and falls through when v0(?) < v1(?) (signed).
  The `bgtz` branch at 0x40e67c targets 0x40e63c, is taken when a3(?) > 0 (signed), and falls through when a3(?) <= 0 (signed).
  The return at 0x40e690 has v0 = one of a1, ?.

- `mvpGetMemoryControl` in `usr/lib32/dmedia/video/mvp.so` at 0x40e6a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x40e6a0-0x40ece0 (1600 bytes).
  It occupies 1600 bytes.
  The `lh` at 0x40e93c loads 2 bytes from a0 (arg0 at entry) +0x132.
  18 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x40e944, `sw` at 0x40e99c, `sw` at 0x40e9f4.
  The `lh` at 0x40e94c loads 2 bytes from a0 (arg0 at entry) +0x134.
  8 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x4, including `sw` at 0x40e954, `sw` at 0x40e984, `sw` at 0x40e9ac.
  5 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x121, including `lbu` at 0x40e95c, `lbu` at 0x40e9b4, `lbu` at 0x40ea7c.
  The `lbu` at 0x40e96c loads 1 byte from a0 (arg0 at entry) +0x12b.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lw` at 0x40e974, `lw` at 0x40e9cc.
  The `lh` at 0x40e994 loads 2 bytes from a0 (arg0 at entry) +0x13a.
  The `lh` at 0x40e9a4 loads 2 bytes from a0 (arg0 at entry) +0x13c.
  The `lbu` at 0x40e9c4 loads 1 byte from a0 (arg0 at entry) +0x12c.
  The `lh` at 0x40e9ec loads 2 bytes from a0 (arg0 at entry) +0x136.
  The `lh` at 0x40e9fc loads 2 bytes from a0 (arg0 at entry) +0x138.
  The `lh` at 0x40ea5c loads 2 bytes from a0 (arg0 at entry) +0x14a.
  The `lh` at 0x40ea6c loads 2 bytes from a0 (arg0 at entry) +0x14c.
  The `lw` at 0x40eaa4 loads 4 bytes from a3 (arg3 at entry) +0x0.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x14e, including `lh` at 0x40eac8, `lh` at 0x40eaec.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x150, including `lh` at 0x40ead0, `lh` at 0x40eb0c.
  The `lh` at 0x40eb34 loads 2 bytes from a0 (arg0 at entry) +0x146.
  The `lh` at 0x40eb44 loads 2 bytes from a0 (arg0 at entry) +0x148.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x125, including `lbu` at 0x40eb88, `lbu` at 0x40ebe4.
  The `lw` at 0x40ebb4 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `lbu` at 0x40ebcc loads 1 byte from a0 (arg0 at entry) +0x123.
  The `lbu` at 0x40ec10 loads 1 byte from a0 (arg0 at entry) +0x126.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x156, including `lbu` at 0x40ec38, `lbu` at 0x40eca0.
  The `lbu` at 0x40ec50 loads 1 byte from a0 (arg0 at entry) +0x122.
  The `lbu` at 0x40ec6c loads 1 byte from a0 (arg0 at entry) +0x129.
  The `lbu` at 0x40ec88 loads 1 byte from a0 (arg0 at entry) +0x124.
  The `jalr` at 0x40ea18 calls mvpRead with a0=a0 at entry (arg0), a1=?, a2=?, a3=a3 at entry (arg3), a7=a2 at entry (arg2).
  The `bgezall` at 0x40ea48 calls mvpGetScreenInfo [0x40b3f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40ead8 calls mvpGCD with a0=[a0+334]:2, a1=[a0+336]:2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x40eb68 calls mvptovlcaptype [0x408fd0] with a0=[a0+289]:1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x40eb94 calls mvptovlcolorspace [0x4096e0] with a0=[a0+293]:1, a1=a1 at entry (arg1), a2=?, a3=?.
  The `bgezall` at 0x40ebf0 calls mvptovlformat [0x409a70] with a0=[a0+293]:1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40ec18 calls mvptovlmemmode with a0=[a0+294]:1, a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `bne` branch at 0x40e6c4 targets 0x40e6e4, is taken when at(=a2) < 0x3f (signed), and falls through when at(=a2) >= 0x3f (signed).
  The `beq` branch at 0x40e6d4 targets 0x40e80c, is taken when v0(=a2) >= 0x40 (signed), and falls through when v0(=a2) < 0x40 (signed).
  The `beq` branch at 0x40e6dc targets 0x40eb30 and is always taken.
  The `bne` branch at 0x40e6ec targets 0x40e70c, is taken when v1(=a2) < 0x6 (signed), and falls through when v1(=a2) >= 0x6 (signed).
  The `beq` branch at 0x40e6fc targets 0x40e78c, is taken when a0(=a2) >= 0x7 (signed), and falls through when a0(=a2) < 0x7 (signed).
  The `beq` branch at 0x40e704 targets 0x40eb58 and is always taken.
  The `bne` branch at 0x40e714 targets 0x40e734, is taken when a1(=a2) < 0x4 (signed), and falls through when a1(=a2) >= 0x4 (signed).
  The `beq` branch at 0x40e724 targets 0x40e774, is taken when a2 >= 0x5 (signed), and falls through when a2 < 0x5 (signed).
  The `beq` branch at 0x40e72c targets 0x40e990 and is always taken.
  The `bne` branch at 0x40e73c targets 0x40e75c, is taken when a3(=a2) < 0x3 (signed), and falls through when a3(=a2) >= 0x3 (signed).
  The `beq` branch at 0x40e74c targets 0x40ecb4, is taken when a4(=a2) >= 0x4 (signed), and falls through when a4(=a2) < 0x4 (signed).
  The `beq` branch at 0x40e754 targets 0x40e938 and is always taken.
  The `bne` branch at 0x40e764 targets 0x40ecb4, is taken when a5(=a2) != a6(=0x2), and falls through when a5(=a2) == a6(=0x2).
  The `beq` branch at 0x40e76c targets 0x40e9e8 and is always taken.
  The `bne` branch at 0x40e77c targets 0x40ecb4, is taken when a7(=a2) != t0(=0x5), and falls through when a7(=a2) == t0(=0x5).
  The `beq` branch at 0x40e784 targets 0x40ea10 and is always taken.
  The `bne` branch at 0x40e794 targets 0x40e7b4, is taken when t1(=a2) < 0x15 (signed), and falls through when t1(=a2) >= 0x15 (signed).
  The `beq` branch at 0x40e7a4 targets 0x40e7f4, is taken when t2(=a2) >= 0x16 (signed), and falls through when t2(=a2) < 0x16 (signed).
  The `beq` branch at 0x40e7ac targets 0x40ebe0 and is always taken.
  The `bne` branch at 0x40e7bc targets 0x40e7dc, is taken when t3(=a2) < 0x12 (signed), and falls through when t3(=a2) >= 0x12 (signed).
  The `beq` branch at 0x40e7cc targets 0x40ecb4, is taken when t8(=a2) >= 0x13 (signed), and falls through when t8(=a2) < 0x13 (signed).
  The `beq` branch at 0x40e7d4 targets 0x40ebc8 and is always taken.
  The `bne` branch at 0x40e7e4 targets 0x40ecb4, is taken when t9(=a2) != ra(=0x7), and falls through when t9(=a2) == ra(=0x7).
  The `beq` branch at 0x40e7ec targets 0x40ebb0 and is always taken.
  The `bne` branch at 0x40e7fc targets 0x40ecb4, is taken when at(=a2) != v0(=0x2c), and falls through when at(=a2) == v0(=0x2c).
  The `beq` branch at 0x40e804 targets 0x40eac4 and is always taken.
  The `bne` branch at 0x40e81c targets 0x40e844, is taken when v1(=a2) < a0(=0x4d560006) (signed), and falls through when v1(=a2) >= a0(=0x4d560006) (signed).
  The `bne` branch at 0x40e834 targets 0x40e8c8, is taken when a1(=0x4d560006) < a2 (signed), and falls through when a1(=0x4d560006) >= a2 (signed).
  The `beq` branch at 0x40e83c targets 0x40ec68 and is always taken.
  The `bne` branch at 0x40e84c targets 0x40e86c, is taken when a2 < 0x45 (signed), and falls through when a2 >= 0x45 (signed).
  The `beq` branch at 0x40e85c targets 0x40e8ac, is taken when a3(=a2) >= 0x46 (signed), and falls through when a3(=a2) < 0x46 (signed).
  The `beq` branch at 0x40e864 targets 0x40eb84 and is always taken.
  The `bne` branch at 0x40e874 targets 0x40e894, is taken when a4(=a2) < 0x43 (signed), and falls through when a4(=a2) >= 0x43 (signed).
  The `beq` branch at 0x40e884 targets 0x40ecb4, is taken when a5(=a2) >= 0x44 (signed), and falls through when a5(=a2) < 0x44 (signed).
  The `beq` branch at 0x40e88c targets 0x40ec0c and is always taken.
  The `bne` branch at 0x40e89c targets 0x40ecb4, is taken when a6(=a2) != a7(=0x41), and falls through when a6(=a2) == a7(=0x41).
  The `beq` branch at 0x40e8a4 targets 0x40ec34 and is always taken.
  The `bne` branch at 0x40e8b8 targets 0x40ecb4, is taken when t0(=a2) != t1(=0x4d560005), and falls through when t0(=a2) == t1(=0x4d560005).
  The `beq` branch at 0x40e8c0 targets 0x40ec4c and is always taken.
  The `bne` branch at 0x40e8d8 targets 0x40e900, is taken when t2(=a2) < t3(=0x4d56000b) (signed), and falls through when t2(=a2) >= t3(=0x4d56000b) (signed).
  The `bne` branch at 0x40e8f0 targets 0x40e91c, is taken when t8(=0x4d56000b) < t9(=a2) (signed), and falls through when t8(=0x4d56000b) >= t9(=a2) (signed).
  The `beq` branch at 0x40e8f8 targets 0x40e990 and is always taken.
  The `bne` branch at 0x40e90c targets 0x40ecb4, is taken when t9(=a2) != ra(=0x4d560007), and falls through when t9(=a2) == ra(=0x4d560007).
  The `beq` branch at 0x40e914 targets 0x40ec84 and is always taken.
  The `bne` branch at 0x40e928 targets 0x40ecb4, is taken when at(=a2) != v0(=0x4d560017), and falls through when at(=a2) == v0(=0x4d560017).
  The `beq` branch at 0x40e930 targets 0x40ec9c and is always taken.
  The `bne` branch at 0x40e960 targets 0x40e988, is taken when v1(=[a0+289]:1) != 0, and falls through when v1(=[a0+289]:1) == 0.
  The `beq` branch at 0x40e988 targets 0x40ecc4 and is always taken.
  The `bne` branch at 0x40e9b8 targets 0x40e9e0, is taken when a3(=[a0+289]:1) != 0, and falls through when a3(=[a0+289]:1) == 0.
  The `beq` branch at 0x40e9e0 targets 0x40ecc4 and is always taken.
  The `beq` branch at 0x40ea08 targets 0x40ecc4 and is always taken.
  The `bne` branch at 0x40ea28 targets 0x40ea58, is taken when v0(=ret(mvpRead)) != t1(=0x2), and falls through when v0(=ret(mvpRead)) == t1(=0x2).
  The `beq` branch at 0x40ea50 targets 0x40eabc and is always taken.
  The `beq` branch at 0x40ea84 targets 0x40eabc, is taken when ra(=[a0+289]:1) == at(=0x3), and falls through when ra(=[a0+289]:1) != at(=0x3).
  The `beq` branch at 0x40ea98 targets 0x40eabc, is taken when v1(=[a0+289]:1) == a0(=0x4), and falls through when v1(=[a0+289]:1) != a0(=0x4).
  The `beq` branch at 0x40eabc targets 0x40ecc4 and is always taken.
  The `beq` branch at 0x40eb28 targets 0x40ecc4 and is always taken.
  The `beq` branch at 0x40eb50 targets 0x40ecc4 and is always taken.
  The `beq` branch at 0x40eb7c targets 0x40ecc4 and is always taken.
  The `beq` branch at 0x40eba8 targets 0x40ecc4 and is always taken.
  The `beq` branch at 0x40ebc0 targets 0x40ecc4 and is always taken.
  The `beq` branch at 0x40ebd8 targets 0x40ecc4 and is always taken.
  The `beq` branch at 0x40ec04 targets 0x40ecc4 and is always taken.
  The `beq` branch at 0x40ec2c targets 0x40ecc4 and is always taken.
  The `beq` branch at 0x40ec44 targets 0x40ecc4 and is always taken.
  The `beq` branch at 0x40ec60 targets 0x40ecc4 and is always taken.
  The `beq` branch at 0x40ec7c targets 0x40ecc4 and is always taken.
  The `beq` branch at 0x40ec94 targets 0x40ecc4 and is always taken.
  The `beq` branch at 0x40ecac targets 0x40ecc4 and is always taken.
  The `beq` branch at 0x40ecbc targets 0x40eccc and is always taken.
  The return at 0x40ecd8 has v0 = one of 0x0, 0x7.

- `mvpSetScreenControl` in `usr/lib32/dmedia/video/mvp.so` at 0x40ece0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x40ece0-0x40f0f8 (1048 bytes).
  It occupies 1048 bytes.
  The `lw` at 0x40ed08 loads 4 bytes from a3 (arg3 at entry) +0xc.
  5 such `lw` accesses load 4 bytes from [a3+12] +0x0, including `lw` at 0x40ed78, `lw` at 0x40edd8, `lw` at 0x40efcc.
  The `lw` at 0x40ede4 loads 4 bytes from [a3+12] +0x4.
  The `lh` at 0x40edf0 loads 2 bytes from a0 (arg0 at entry) +0x13a.
  The `lh` at 0x40edfc loads 2 bytes from a0 (arg0 at entry) +0x13c.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x128, including `lbu` at 0x40ef44, `lbu` at 0x40f078.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x136, including `sh` at 0x40ef94, `sh` at 0x40f024.
  The `sw` at 0x40ef9c stores 4 bytes to [a3+12] +0x0.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x138, including `sh` at 0x40efb4, `sh` at 0x40f02c.
  The `sw` at 0x40efbc stores 4 bytes to [a3+12] +0x4.
  The `sb` at 0x40efd4 stores 1 byte to a0 (arg0 at entry) +0x123.
  The `sb` at 0x40eff0 stores 1 byte to a0 (arg0 at entry) +0x156.
  The `sb` at 0x40f00c stores 1 byte to a0 (arg0 at entry) +0x157.
  The `lbu` at 0x40f014 loads 1 byte from a0 (arg0 at entry) +0x157.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x121, including `lbu` at 0x40f034, `lbu` at 0x40f048.
  The `sb` at 0x40f060 stores 1 byte to a0 (arg0 at entry) +0x121.
  The `sw` at 0x40f0cc stores 4 bytes to a4 (arg4 at entry) +0x0.
  The `bgezall` at 0x40ed84 calls mvpfromvltiming [0x4073f0] with a0=a0 at entry (arg0), a1=[[a3+12]], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x40edc4 calls mvpSetTiming [0x407a10] with a0=a0 at entry (arg0), a1=ret(mvpfromvltiming), a2=ret(mvpfromvltiming), a3=-0x1.
  The `bgezall` at 0x40ee18 calls mvpGetCFI [0x4079c0] with a0=a0 at entry (arg0), a1=sp-224, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x40f084 calls mvpSetTiming [0x407a10] with a0=a0 at entry (arg0), a1=[a0+296]:1, a2=[a0+343]:1, a3=?, a4=[a0+289]:1, a5=0x1, a6=a0 at entry (arg0).
  The `bgezall` at 0x40f098 calls mvpSetFields [0x407820] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x40ed1c targets 0x40ed70, is taken when at(=a2) == v0(=0x1), and falls through when at(=a2) != v0(=0x1).
  The `beq` branch at 0x40ed2c targets 0x40edd4, is taken when a0(=a2) == a1(=0x2), and falls through when a0(=a2) != a1(=0x2).
  The `beq` branch at 0x40ed3c targets 0x40efc8, is taken when a2 == a3(=0x12), and falls through when a2 != a3(=0x12).
  The `beq` branch at 0x40ed4c targets 0x40efe0, is taken when a4(=a2) == a5(=0x40), and falls through when a4(=a2) != a5(=0x40).
  The `beq` branch at 0x40ed60 targets 0x40effc, is taken when a6(=a2) == a7(=0x4d56000c), and falls through when a6(=a2) != a7(=0x4d56000c).
  The `beq` branch at 0x40ed68 targets 0x40f0b4 and is always taken.
  The `bne` branch at 0x40ed9c targets 0x40edb4, is taken when a2(=ret(mvpfromvltiming)) != a3(=-0x1), and falls through when a2(=ret(mvpfromvltiming)) == a3(=-0x1).
  The `beq` branch at 0x40edac targets 0x40f0e4 and is always taken.
  The `beq` branch at 0x40edcc targets 0x40f0c4 and is always taken.
  The `bgez` branch at 0x40ee24 targets 0x40ee38, is taken when a0(=[[a3+12]]) >= 0 (signed), and falls through when a0(=[[a3+12]]) < 0 (signed).
  The `bgez` branch at 0x40ee3c targets 0x40ee50, is taken when a2(=[[a3+12]+4]) >= 0 (signed), and falls through when a2(=[[a3+12]+4]) < 0 (signed).
  The `bne` branch at 0x40ee64 targets 0x40ee88, is taken when a4(?) < a5(?) (signed), and falls through when a4(?) >= a5(?) (signed).
  The `bne` branch at 0x40ee9c targets 0x40eec0, is taken when t2(?) < t3(?) (signed), and falls through when t2(?) >= t3(?) (signed).
  The `bne` branch at 0x40eef0 targets 0x40ef40, is taken when v0(?) < v1(?) (signed), and falls through when v0(?) >= v1(?) (signed).
  The `bne` branch at 0x40ef08 targets 0x40ef40, is taken when a4(?) < a5(?) (signed), and falls through when a4(?) >= a5(?) (signed).
  The `bne` branch at 0x40ef4c targets 0x40ef84, is taken when t3(=[a0+296]:1) != t8(=0xd), and falls through when t3(=[a0+296]:1) == t8(=0xd).
  The `bne` branch at 0x40ef5c targets 0x40ef84, is taken when t8(?) < 0x4f4 (signed), and falls through when t8(?) >= 0x4f4 (signed).
  The `bne` branch at 0x40ef6c targets 0x40ef84, is taken when t9(?) < 0x3fe (signed), and falls through when t9(?) >= 0x3fe (signed).
  The `beq` branch at 0x40efc0 targets 0x40f0c4 and is always taken.
  The `beq` branch at 0x40efd8 targets 0x40f0c4 and is always taken.
  The `beq` branch at 0x40eff4 targets 0x40f0c4 and is always taken.
  The `beq` branch at 0x40f018 targets 0x40f0ac, is taken when a2(=[a0+343]:1) == 0, and falls through when a2(=[a0+343]:1) != 0.
  The `beq` branch at 0x40f03c targets 0x40f070, is taken when a4(=[a0+289]:1) == a5(=0x1), and falls through when a4(=[a0+289]:1) != a5(=0x1).
  The `beq` branch at 0x40f050 targets 0x40f070, is taken when a7(=[a0+289]:1) == t0(=0x2), and falls through when a7(=[a0+289]:1) != t0(=0x2).
  The `beq` branch at 0x40f0ac targets 0x40f0c4 and is always taken.
  The `beq` branch at 0x40f0bc targets 0x40f0e4 and is always taken.
  The return at 0x40f0f0 has v0 = one of 0x0, 0x2, 0x7, 0x19.

- `mvpGetScreenControl` in `usr/lib32/dmedia/video/mvp.so` at 0x40f100 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x40f100-0x40f440 (832 bytes).
  It occupies 832 bytes.
  The `lbu` at 0x40f2a8 loads 1 byte from a0 (arg0 at entry) +0x128.
  9 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x40f2c4, `sw` at 0x40f2dc, `sw` at 0x40f32c.
  The `lh` at 0x40f2d4 loads 2 bytes from a0 (arg0 at entry) +0x136.
  The `lh` at 0x40f2e4 loads 2 bytes from a0 (arg0 at entry) +0x138.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x4, including `sw` at 0x40f2ec, `sw` at 0x40f33c.
  The `lh` at 0x40f324 loads 2 bytes from a0 (arg0 at entry) +0x14e.
  The `lh` at 0x40f334 loads 2 bytes from a0 (arg0 at entry) +0x150.
  The `lbu` at 0x40f34c loads 1 byte from a0 (arg0 at entry) +0x121.
  The `lbu` at 0x40f378 loads 1 byte from a0 (arg0 at entry) +0x127.
  The `lbu` at 0x40f3a4 loads 1 byte from a0 (arg0 at entry) +0x123.
  The `lbu` at 0x40f3bc loads 1 byte from a0 (arg0 at entry) +0x125.
  The `lbu` at 0x40f3e8 loads 1 byte from a0 (arg0 at entry) +0x156.
  The `lbu` at 0x40f400 loads 1 byte from a0 (arg0 at entry) +0x157.
  The `bgezall` at 0x40f2b4 calls mvptovltiming [0x408da0] with a0=[a0+296]:1, a1=?, a2=a2 at entry (arg2), a3=a2 at entry (arg2), a4=0x1.
  The `bgezall` at 0x40f310 calls mvpGetScreenInfo [0x40b3f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x40f358 calls mvptovlcaptype [0x408fd0] with a0=[a0+289]:1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x40f384 calls mvptovlpacking [0x409180] with a0=[a0+295]:1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x40f3c8 calls mvptovlformat [0x409a70] with a0=[a0+293]:1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x40f124 targets 0x40f144, is taken when at(=a2) < 0x7 (signed), and falls through when at(=a2) >= 0x7 (signed).
  The `beq` branch at 0x40f134 targets 0x40f1ec, is taken when v0(=a2) >= 0x8 (signed), and falls through when v0(=a2) < 0x8 (signed).
  The `beq` branch at 0x40f13c targets 0x40f374 and is always taken.
  The `bne` branch at 0x40f14c targets 0x40f16c, is taken when v1(=a2) < 0x4 (signed), and falls through when v1(=a2) >= 0x4 (signed).
  The `beq` branch at 0x40f15c targets 0x40f1ac, is taken when a0(=a2) >= 0x5 (signed), and falls through when a0(=a2) < 0x5 (signed).
  The `beq` branch at 0x40f164 targets 0x40f2f8 and is always taken.
  The `bne` branch at 0x40f174 targets 0x40f194, is taken when a1(=a2) < 0x2 (signed), and falls through when a1(=a2) >= 0x2 (signed).
  The `beq` branch at 0x40f184 targets 0x40f414, is taken when a2 >= 0x3 (signed), and falls through when a2 < 0x3 (signed).
  The `beq` branch at 0x40f18c targets 0x40f2d0 and is always taken.
  The `bne` branch at 0x40f19c targets 0x40f414, is taken when a3(=a2) != a4(=0x1), and falls through when a3(=a2) == a4(=0x1).
  The `beq` branch at 0x40f1a4 targets 0x40f2a4 and is always taken.
  The `bne` branch at 0x40f1b4 targets 0x40f1d4, is taken when a5(=a2) < 0x6 (signed), and falls through when a5(=a2) >= 0x6 (signed).
  The `beq` branch at 0x40f1c4 targets 0x40f414, is taken when a6(=a2) >= 0x7 (signed), and falls through when a6(=a2) < 0x7 (signed).
  The `beq` branch at 0x40f1cc targets 0x40f348 and is always taken.
  The `bne` branch at 0x40f1dc targets 0x40f414, is taken when a7(=a2) != t0(=0x5), and falls through when a7(=a2) == t0(=0x5).
  The `beq` branch at 0x40f1e4 targets 0x40f2f8 and is always taken.
  The `bne` branch at 0x40f1f4 targets 0x40f214, is taken when t1(=a2) < 0x2c (signed), and falls through when t1(=a2) >= 0x2c (signed).
  The `beq` branch at 0x40f204 targets 0x40f254, is taken when t2(=a2) >= 0x2d (signed), and falls through when t2(=a2) < 0x2d (signed).
  The `beq` branch at 0x40f20c targets 0x40f320 and is always taken.
  The `bne` branch at 0x40f21c targets 0x40f23c, is taken when t3(=a2) < 0x15 (signed), and falls through when t3(=a2) >= 0x15 (signed).
  The `beq` branch at 0x40f22c targets 0x40f414, is taken when t8(=a2) >= 0x16 (signed), and falls through when t8(=a2) < 0x16 (signed).
  The `beq` branch at 0x40f234 targets 0x40f3b8 and is always taken.
  The `bne` branch at 0x40f244 targets 0x40f414, is taken when t9(=a2) != ra(=0x12), and falls through when t9(=a2) == ra(=0x12).
  The `beq` branch at 0x40f24c targets 0x40f3a0 and is always taken.
  The `bne` branch at 0x40f264 targets 0x40f28c, is taken when at(=a2) < v0(=0x4d56000c) (signed), and falls through when at(=a2) >= v0(=0x4d56000c) (signed).
  The `bne` branch at 0x40f27c targets 0x40f414, is taken when v1(=0x4d56000c) < a0(=a2) (signed), and falls through when v1(=0x4d56000c) >= a0(=a2) (signed).
  The `beq` branch at 0x40f284 targets 0x40f3fc and is always taken.
  The `bne` branch at 0x40f294 targets 0x40f414, is taken when a0(=a2) != a1(=0x40), and falls through when a0(=a2) == a1(=0x40).
  The `beq` branch at 0x40f29c targets 0x40f3e4 and is always taken.
  The `beq` branch at 0x40f2c8 targets 0x40f424 and is always taken.
  The `beq` branch at 0x40f2f0 targets 0x40f424 and is always taken.
  The `beq` branch at 0x40f318 targets 0x40f424 and is always taken.
  The `beq` branch at 0x40f340 targets 0x40f424 and is always taken.
  The `beq` branch at 0x40f36c targets 0x40f424 and is always taken.
  The `beq` branch at 0x40f398 targets 0x40f424 and is always taken.
  The `beq` branch at 0x40f3b0 targets 0x40f424 and is always taken.
  The `beq` branch at 0x40f3dc targets 0x40f424 and is always taken.
  The `beq` branch at 0x40f3f4 targets 0x40f424 and is always taken.
  The `beq` branch at 0x40f40c targets 0x40f424 and is always taken.
  The `beq` branch at 0x40f41c targets 0x40f42c and is always taken.
  The return at 0x40f438 has v0 = one of 0x0, 0x7.

- `mvpfromvlkind` in `usr/lib32/dmedia/video/mvp.so` at 0x40f440 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x40f440-0x40f4f4 (180 bytes).
  It occupies 180 bytes.
  The `beq` branch at 0x40f458 targets 0x40f498, is taken when at(=a0) == v0(=0x1), and falls through when at(=a0) != v0(=0x1).
  The `beq` branch at 0x40f468 targets 0x40f4a8, is taken when v1(=a0) == a0(=0x3), and falls through when v1(=a0) != a0(=0x3).
  The `beq` branch at 0x40f478 targets 0x40f4b8, is taken when a1(=a0) == a2(=0x4), and falls through when a1(=a0) != a2(=0x4).
  The `beq` branch at 0x40f488 targets 0x40f4c8, is taken when a3(=a0) == a4(=0x10000000), and falls through when a3(=a0) != a4(=0x10000000).
  The `beq` branch at 0x40f490 targets 0x40f4d8 and is always taken.
  The `beq` branch at 0x40f4a0 targets 0x40f4e0 and is always taken.
  The `beq` branch at 0x40f4b0 targets 0x40f4e0 and is always taken.
  The `beq` branch at 0x40f4c0 targets 0x40f4e0 and is always taken.
  The `beq` branch at 0x40f4d0 targets 0x40f4e0 and is always taken.
  The return at 0x40f4ec has v0 = one of 0x1, 0x3, 0x2, 0xfe, 0x0.

- `mvpGetControl` in `usr/lib32/dmedia/video/mvp.so` at 0x40f500 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x40f500-0x40f8ec (1004 bytes).
  It occupies 1004 bytes.
  The `lw` at 0x40f524 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0x40f528 loads 4 bytes from [a1+4] +0x68.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x40f560, `lw` at 0x40f89c.
  The `lw` at 0x40f564 loads 4 bytes from [a1+8] +0x4.
  5 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x40f570, `lw` at 0x40f580, `lw` at 0x40f5d8.
  2 such `lw` accesses load 4 bytes from [a1] +0x18, including `lw` at 0x40f574, `lw` at 0x40f828.
  The `lw` at 0x40f584 loads 4 bytes from [a1] +0xc.
  The `lw` at 0x40f588 loads 4 bytes from [[a1]+12] +0x0.
  6 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc, including `lw` at 0x40f5b0, `lw` at 0x40f660, `lw` at 0x40f694.
  2 such `lw` accesses load 4 bytes from [a1] +0x1c, including `lw` at 0x40f5dc, `lw` at 0x40f850.
  The `lw` at 0x40f720 loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `lw` at 0x40f724 loads 4 bytes from [a1+16] +0x8.
  The `lw` at 0x40f87c loads 4 bytes from table(0x41a848) +0x0.
  The `lw` at 0x40f8a0 loads 4 bytes from [a1+8] +0x0.
  The `lw` at 0x40f8ac loads 4 bytes from [a1+12] +0x0.
  The `lw` at 0x40f8b8 loads 4 bytes from [a1+12] +0x4.
  The `jalr` at 0x40f554 calls mvpAssertFail with a0=0x419138, a1=0x418af8, a2=0xb74, a3=a3 at entry (arg3).
  The `bgezall` at 0x40f5bc calls mvpGetDeviceControl [0x40a140] with a0=[[a1+4]+104], a1=0x0, a2=[[a1+8]+4], a3=[a1+12], a4=[[a1]+24], a5=[[a1+8]+4].
  The `bgezall` at 0x40f5e8 calls mvpfromvlkind [0x40f440] with a0=[[a1]+28], a1=[[a1]+24], a2=0x3, a3=[[[a1]+12]], a4=[[a1]+24], a5=[[a1+8]+4].
  The `bgezall` at 0x40f66c calls mvpGetVideoControl [0x40aaa0] with a0=[[a1+4]+104], a1=[[[a1]+12]], a2=[[a1+8]+4], a3=[a1+12], a4=0x1.
  The `bgezall` at 0x40f6a0 calls mvpGetScreenControl [0x40f100] with a0=[[a1+4]+104], a1=[[[a1]+12]], a2=[[a1+8]+4], a3=[a1+12], a4=0x1, a5=ret(mvpfromvlkind), a6=0x2.
  The `bgezall` at 0x40f6d4 calls mvpGetMemoryControl [0x40e6a0] with a0=[[a1+4]+104], a1=[[[a1]+12]], a2=[[a1+8]+4], a3=[a1+12], a4=0x1, a5=ret(mvpfromvlkind), a6=0x2, a7=ret(mvpfromvlkind).
  The `jalr` at 0x40f704 calls mvpPrintf with a0=[[a1+4]+104], a1=0x419168, a2=ret(mvpfromvlkind), a3=[[a1+4]+104], a4=0x1, a5=ret(mvpfromvlkind), a6=0x2, a7=ret(mvpfromvlkind).
  The `bgezall` at 0x40f85c calls mvpfromvlkind [0x40f440] with a0=[[a1]+28], a1=?, a2=?, a3=[[a1]+24], a4=0x3.
  The `jalr` at 0x40f8c0 calls mvpPrintf with a0=[[a1+4]+104], a1=?, a2=0x4191e0, a3=?, a4=[[a1+8]], a5=[[a1+12]], a6=[[a1+12]+4].
  The `bne` branch at 0x40f534 targets 0x40f55c, is taken when at(=[[a1+4]+104]) != 0, and falls through when at(=[[a1+4]+104]) == 0.
  The `bne` branch at 0x40f598 targets 0x40f5d4, is taken when a1(=[[a1]+24]) != a2(=0x3), and falls through when a1(=[[a1]+24]) == a2(=0x3).
  The `beq` branch at 0x40f5cc targets 0x40f71c and is always taken.
  The `bne` branch at 0x40f5fc targets 0x40f614, is taken when a1(=ret(mvpfromvlkind)) != 0, and falls through when a1(=ret(mvpfromvlkind)) == 0.
  The `beq` branch at 0x40f60c targets 0x40f71c and is always taken.
  The `beq` branch at 0x40f620 targets 0x40f650, is taken when a3(=ret(mvpfromvlkind)) == a4(=0x1), and falls through when a3(=ret(mvpfromvlkind)) != a4(=0x1).
  The `beq` branch at 0x40f630 targets 0x40f684, is taken when a5(=ret(mvpfromvlkind)) == a6(=0x2), and falls through when a5(=ret(mvpfromvlkind)) != a6(=0x2).
  The `beq` branch at 0x40f640 targets 0x40f6b8, is taken when a7(=ret(mvpfromvlkind)) == t0(=0x3), and falls through when a7(=ret(mvpfromvlkind)) != t0(=0x3).
  The `beq` branch at 0x40f648 targets 0x40f6ec and is always taken.
  The `beq` branch at 0x40f67c targets 0x40f71c and is always taken.
  The `beq` branch at 0x40f6b0 targets 0x40f71c and is always taken.
  The `beq` branch at 0x40f6e4 targets 0x40f71c and is always taken.
  The `beq` branch at 0x40f714 targets 0x40f8d4 and is always taken.
  The `beq` branch at 0x40f730 targets 0x40f790, is taken when a3(=[[a1+16]+8]) == a4(=0x2), and falls through when a3(=[[a1+16]+8]) != a4(=0x2).
  The `beq` branch at 0x40f740 targets 0x40f7a4, is taken when a4(=[[a1+16]+8]) == a5(=0x3), and falls through when a4(=[[a1+16]+8]) != a5(=0x3).
  The `beq` branch at 0x40f750 targets 0x40f7b8, is taken when a6(=[[a1+16]+8]) == a7(=0x4), and falls through when a6(=[[a1+16]+8]) != a7(=0x4).
  The `beq` branch at 0x40f760 targets 0x40f7cc, is taken when t0(=[[a1+16]+8]) == t1(=0x1), and falls through when t0(=[[a1+16]+8]) != t1(=0x1).
  The `beq` branch at 0x40f770 targets 0x40f7e0, is taken when t2(=[[a1+16]+8]) == t3(=0x5), and falls through when t2(=[[a1+16]+8]) != t3(=0x5).
  The `beq` branch at 0x40f780 targets 0x40f7f4, is taken when t8(=[[a1+16]+8]) == t9(=0xb), and falls through when t8(=[[a1+16]+8]) != t9(=0xb).
  The `beq` branch at 0x40f788 targets 0x40f808 and is always taken.
  The `beq` branch at 0x40f79c targets 0x40f814 and is always taken.
  The `beq` branch at 0x40f7b0 targets 0x40f814 and is always taken.
  The `beq` branch at 0x40f7c4 targets 0x40f814 and is always taken.
  The `beq` branch at 0x40f7d8 targets 0x40f814 and is always taken.
  The `beq` branch at 0x40f7ec targets 0x40f814 and is always taken.
  The `beq` branch at 0x40f800 targets 0x40f814 and is always taken.
  The `beq` branch at 0x40f80c targets 0x40f814 and is always taken.
  The `beq` branch at 0x40f818 targets 0x40f8c8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x40f830 targets 0x40f848, is taken when a3(=[[a1]+24]) != a4(=0x3), and falls through when a3(=[[a1]+24]) == a4(=0x3).
  The `beq` branch at 0x40f840 targets 0x40f884 and is always taken.
  The return at 0x40f8e4 has v0 = one of 0x4, ?.

- `mvpSetControl` in `usr/lib32/dmedia/video/mvp.so` at 0x40f8f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x40f8f0-0x40fe68 (1400 bytes).
  It occupies 1400 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lw` at 0x40f918, `lw` at 0x40fb98.
  The `lw` at 0x40f91c loads 4 bytes from [a1+4] +0x68.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x10, including `lw` at 0x40f954, `lw` at 0x40fbb0.
  The `lw` at 0x40f958 loads 4 bytes from [a1+16] +0x8.
  5 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x40fa58, `lw` at 0x40fa80, `lw` at 0x40fb10.
  2 such `lw` accesses load 4 bytes from [a1] +0x18, including `lw` at 0x40fa5c, `lw` at 0x40fb14.
  2 such `lw` accesses load 4 bytes from [a1] +0x1c, including `lw` at 0x40fa84, `lw` at 0x40fc4c.
  The `lw` at 0x40fab0 loads 4 bytes from table(0x41a848) +0x0.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x40fad0, `lw` at 0x40fb00, `lw` at 0x40fba0.
  The `lw` at 0x40fad4 loads 4 bytes from [a1+8] +0x0.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc, including `lw` at 0x40fadc, `lw` at 0x40fae8, `lw` at 0x40fb34.
  The `lw` at 0x40fae0 loads 4 bytes from [a1+12] +0x0.
  The `lw` at 0x40faec loads 4 bytes from [a1+12] +0x4.
  2 such `lw` accesses load 4 bytes from [a1+8] +0x4, including `lw` at 0x40fb04, `lw` at 0x40fbc4.
  The `lw` at 0x40fb24 loads 4 bytes from [a1] +0xc.
  The `lw` at 0x40fb28 loads 4 bytes from [[a1]+12] +0x0.
  The `ld` at 0x40fb5c loads 8 bytes from ?.
  The `sd` at 0x40fb68 stores 8 bytes to ?.
  The `lw` at 0x40fdac loads 4 bytes from ?.
  The `jalr` at 0x40f948 calls mvpAssertFail with a0=0x419138, a1=0x418af8, a2=0xbbe, a3=a3 at entry (arg3).
  The `bgezall` at 0x40fa90 calls mvpfromvlkind [0x40f440] with a0=[[a1]+28], a1=[[a1]+24], a2=0x3, a3=?.
  The `jalr` at 0x40faf4 calls mvpPrintf with a0=?, a1=?, a2=0x4191f0, a3=?, a4=[[a1+8]], a5=[[a1+12]], a6=[[a1+12]+4].
  The `jalr` at 0x40fbe8 calls mvpSendPathControls with a0=?, a1=0x1, a2=sp-120, a3=0xc, a4=sp-216, a5=[a1+12], a6=[[[a1]+12]], a7=[[a1]+24].
  The `bgezall` at 0x40fc2c calls mvpSetDeviceControl [0x409f20] with a0=?, a1=0x0, a2=[[a1+8]+4], a3=sp-120, a4=0x3, a5=[a1+12], a6=[[[a1]+12]], a7=[[a1]+24].
  The `bgezall` at 0x40fc58 calls mvpfromvlkind [0x40f440] with a0=[[a1]+28], a1=[a1], a2=?, a3=[[a1]+24], a4=0x3, a5=[a1+12], a6=[[[a1]+12]], a7=[[a1]+24].
  The `bgezall` at 0x40fcdc calls mvpSetVideoControl [0x40a210] with a0=?, a1=?, a2=?, a3=sp-120, a4=sp-240.
  The `bgezall` at 0x40fd10 calls mvpSetScreenControl [0x40ece0] with a0=?, a1=?, a2=?, a3=sp-120, a4=sp-240, a5=ret(mvpfromvlkind), a6=0x2.
  The `bgezall` at 0x40fd44 calls mvpSetMemoryControl [0x40b4a0] with a0=?, a1=?, a2=?, a3=sp-120, a4=sp-240, a5=ret(mvpfromvlkind), a6=0x2, a7=ret(mvpfromvlkind).
  The `jalr` at 0x40fd74 calls mvpPrintf with a0=?, a1=0x419200, a2=ret(mvpfromvlkind), a3=?, a4=0x1, a5=ret(mvpfromvlkind), a6=0x2, a7=ret(mvpfromvlkind).
  The `jalr` at 0x40fdc4 calls mvpUpdateRegs with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40fde4 calls mvpPanic with a0=0x419238, a1=?, a2=?, a3=?.
  The `jalr` at 0x40fe08 calls mvpSendPathControls with a0=?, a1=0x1, a2=sp-120, a3=?.
  The `bne` branch at 0x40f928 targets 0x40f950, is taken when at(=[[a1+4]+104]) != 0, and falls through when at(=[[a1+4]+104]) == 0.
  The `beq` branch at 0x40f964 targets 0x40f9c4, is taken when a1(=[[a1+16]+8]) == a2(=0x2), and falls through when a1(=[[a1+16]+8]) != a2(=0x2).
  The `beq` branch at 0x40f974 targets 0x40f9d8, is taken when a2(=[[a1+16]+8]) == a3(=0x3), and falls through when a2(=[[a1+16]+8]) != a3(=0x3).
  The `beq` branch at 0x40f984 targets 0x40f9ec, is taken when a4(=[[a1+16]+8]) == a5(=0x4), and falls through when a4(=[[a1+16]+8]) != a5(=0x4).
  The `beq` branch at 0x40f994 targets 0x40fa00, is taken when a6(=[[a1+16]+8]) == a7(=0x1), and falls through when a6(=[[a1+16]+8]) != a7(=0x1).
  The `beq` branch at 0x40f9a4 targets 0x40fa14, is taken when t0(=[[a1+16]+8]) == t1(=0x5), and falls through when t0(=[[a1+16]+8]) != t1(=0x5).
  The `beq` branch at 0x40f9b4 targets 0x40fa28, is taken when t2(=[[a1+16]+8]) == t3(=0xb), and falls through when t2(=[[a1+16]+8]) != t3(=0xb).
  The `beq` branch at 0x40f9bc targets 0x40fa3c and is always taken.
  The `beq` branch at 0x40f9d0 targets 0x40fa48 and is always taken.
  The `beq` branch at 0x40f9e4 targets 0x40fa48 and is always taken.
  The `beq` branch at 0x40f9f8 targets 0x40fa48 and is always taken.
  The `beq` branch at 0x40fa0c targets 0x40fa48 and is always taken.
  The `beq` branch at 0x40fa20 targets 0x40fa48 and is always taken.
  The `beq` branch at 0x40fa34 targets 0x40fa48 and is always taken.
  The `beq` branch at 0x40fa40 targets 0x40fa48 and is always taken.
  The `beq` branch at 0x40fa4c targets 0x40fafc, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x40fa64 targets 0x40fa7c, is taken when a1(=[[a1]+24]) != a2(=0x3), and falls through when a1(=[[a1]+24]) == a2(=0x3).
  The `beq` branch at 0x40fa74 targets 0x40fab8 and is always taken.
  The `bgtz` branch at 0x40fb80 targets 0x40fb50, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `bne` branch at 0x40fbd0 targets 0x40fc04, is taken when t8(=[[a1+8]+4]) != t9(=0x4d560008), and falls through when t8(=[[a1+8]+4]) == t9(=0x4d560008).
  The `beq` branch at 0x40fbfc targets 0x40fe50 and is always taken.
  The `bne` branch at 0x40fc0c targets 0x40fc48, is taken when a3(=[[a1]+24]) != a4(=0x3), and falls through when a3(=[[a1]+24]) == a4(=0x3).
  The `beq` branch at 0x40fc40 targets 0x40fe50 and is always taken.
  The `bne` branch at 0x40fc6c targets 0x40fc84, is taken when a1(=ret(mvpfromvlkind)) != 0, and falls through when a1(=ret(mvpfromvlkind)) == 0.
  The `beq` branch at 0x40fc7c targets 0x40fe50 and is always taken.
  The `beq` branch at 0x40fc90 targets 0x40fcc0, is taken when a3(=ret(mvpfromvlkind)) == a4(=0x1), and falls through when a3(=ret(mvpfromvlkind)) != a4(=0x1).
  The `beq` branch at 0x40fca0 targets 0x40fcf4, is taken when a5(=ret(mvpfromvlkind)) == a6(=0x2), and falls through when a5(=ret(mvpfromvlkind)) != a6(=0x2).
  The `beq` branch at 0x40fcb0 targets 0x40fd28, is taken when a7(=ret(mvpfromvlkind)) == t0(=0x3), and falls through when a7(=ret(mvpfromvlkind)) != t0(=0x3).
  The `beq` branch at 0x40fcb8 targets 0x40fd5c and is always taken.
  The `beq` branch at 0x40fcec targets 0x40fd8c and is always taken.
  The `beq` branch at 0x40fd20 targets 0x40fd8c and is always taken.
  The `beq` branch at 0x40fd54 targets 0x40fd8c and is always taken.
  The `beq` branch at 0x40fd84 targets 0x40fe50 and is always taken.
  The `beq` branch at 0x40fd90 targets 0x40fda8, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x40fda0 targets 0x40fe10, is taken when a4(?) != a5(=0x19), and falls through when a4(?) == a5(=0x19).
  The `bne` branch at 0x40fdb4 targets 0x40fe10, is taken when (a6(?) & 0x200) != 0, and falls through when (a6(?) & 0x200) == 0.
  The `beq` branch at 0x40fdd0 targets 0x40fdec, is taken when v0(=ret(mvpUpdateRegs)) == 0, and falls through when v0(=ret(mvpUpdateRegs)) != 0.
  The `beq` branch at 0x40fdf0 targets 0x40fe10, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x40fe18 targets 0x40fe2c, is taken when a2(?) != a3(=0x400), and falls through when a2(?) == a3(=0x400).
  The `beq` branch at 0x40fe24 targets 0x40fe44 and is always taken.
  The `bne` branch at 0x40fe34 targets 0x40fe44, is taken when a4(?) != a5(=0x401), and falls through when a4(?) == a5(=0x401).
  The return at 0x40fe60 has v0 = one of ret(mvpSendPathControls), ret(mvpSetDeviceControl), 0x4, ?.

- `mvpUpdateNodes` in `usr/lib32/dmedia/video/mvp.so` at 0x40fe70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x40fe70-0x4106b0 (2112 bytes).
  It occupies 2112 bytes.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xc, including `sw` at 0x40ff60, `sw` at 0x40ffa4, `sw` at 0x4101dc.
  3 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x123, including `lbu` at 0x40ff70, `lbu` at 0x4101b4, `lbu` at 0x41048c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x40ffb0, `lw` at 0x4101e8, `lw` at 0x4104bc.
  13 such `lw` accesses load 4 bytes from ?, including `lw` at 0x40ffcc, `lw` at 0x41004c, `lw` at 0x4100bc.
  8 such `sw` accesses store 4 bytes to ?, including `sw` at 0x410070, `sw` at 0x4100c8, `sw` at 0x410150.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `sw` at 0x4101a4, `sw` at 0x41047c, `sw` at 0x41067c.
  The `lbu` at 0x410328 loads 1 byte from a1 (arg1 at entry) +0x143.
  The `lw` at 0x410504 loads 4 bytes from table(0x419268) +0x0.
  The `jalr` at 0x40fe98 calls getenv with a0=0x419258, a1=a1+288, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40febc calls atoi with a0=ret(getenv), a1=?, a2=ret(getenv), a3=?.
  The `jalr` at 0x40fef8 calls getenv with a0=0x420200, a1=?, a2=?, a3=?, a5=one of 0x0, 0x1.
  The `jalr` at 0x40ff1c calls atoi with a0=ret(getenv), a1=?, a2=?, a3=?, a6=ret(getenv).
  The `jalr` at 0x410698 calls mvpErrPrintf with a0=0x0, a1=0x419298, a2=[a1+291]:1, a3=0x1.
  The `beq` branch at 0x40feac targets 0x40fee4, is taken when a2(=ret(getenv)) == 0, and falls through when a2(=ret(getenv)) != 0.
  The `bne` branch at 0x40fecc targets 0x40fee4, is taken when v0(=ret(atoi)) < 0x2 (signed), and falls through when v0(=ret(atoi)) >= 0x2 (signed).
  The `beq` branch at 0x40fedc targets 0x40fee8 and is always taken.
  The `beq` branch at 0x40ff0c targets 0x40ff40, is taken when a6(=ret(getenv)) == 0, and falls through when a6(=ret(getenv)) != 0.
  The `beq` branch at 0x40ff28 targets 0x40ff40, is taken when v0(=ret(atoi)) == 0, and falls through when v0(=ret(atoi)) != 0.
  The `beq` branch at 0x40ff38 targets 0x40ff44 and is always taken.
  The `beq` branch at 0x40ff50 targets 0x40ff6c, is taken when t0(=one of 0x0, 0x1) == 0, and falls through when t0(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x40ff64 targets 0x4106a0 and is always taken.
  The `beq` branch at 0x40ff78 targets 0x40ff8c, is taken when t8(=[a1+291]:1) == t9(=0x2), and falls through when t8(=[a1+291]:1) != t9(=0x2).
  The `beq` branch at 0x40ff84 targets 0x4101b0, is taken when t9(=one of 0x0, 0x1) == 0, and falls through when t9(=one of 0x0, 0x1) != 0.
  The `blez` branch at 0x40ffc0 targets 0x41019c, is taken when ra(=[a0+8]) <= 0 (signed), and falls through when ra(=[a0+8]) > 0 (signed).
  The `beq` branch at 0x40ffd8 targets 0x410034, is taken when a2(?) == a3(=0x1), and falls through when a2(?) != a3(=0x1).
  The `beq` branch at 0x40ffe8 targets 0x410034, is taken when a3(?) == a4(=0x2), and falls through when a3(?) != a4(=0x2).
  The `beq` branch at 0x40fff8 targets 0x410034, is taken when a5(?) == a6(=0x3), and falls through when a5(?) != a6(=0x3).
  The `beq` branch at 0x410008 targets 0x410034, is taken when a7(?) == t0(=0x4), and falls through when a7(?) != t0(=0x4).
  The `beq` branch at 0x410014 targets 0x410048, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x410024 targets 0x410048, is taken when t2(?) == t3(=0xa), and falls through when t2(?) != t3(=0xa).
  The `beq` branch at 0x41002c targets 0x4100fc and is always taken.
  The `beq` branch at 0x410040 targets 0x410184 and is always taken.
  The `bne` branch at 0x410050 targets 0x41006c, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0x410064 targets 0x4100f4 and is always taken.
  The `bgtz` branch at 0x4100e0 targets 0x4100b0, is taken when a3(?) > 0 (signed), and falls through when a3(?) <= 0 (signed).
  The `beq` branch at 0x4100f4 targets 0x410184 and is always taken.
  The `bgtz` branch at 0x410168 targets 0x410138, is taken when t8(?) > 0 (signed), and falls through when t8(?) <= 0 (signed).
  The `beq` branch at 0x41017c targets 0x410184 and is always taken.
  The `bgtz` branch at 0x410194 targets 0x40ffc8, is taken when v0(?) > 0 (signed), and falls through when v0(?) <= 0 (signed).
  The `beq` branch at 0x4101a8 targets 0x4106a0 and is always taken.
  The `bne` branch at 0x4101bc targets 0x410488, is taken when a2(=[a1+291]:1) != a3(=0x1), and falls through when a2(=[a1+291]:1) == a3(=0x1).
  The `blez` branch at 0x4101f8 targets 0x410474, is taken when a3(=[a0+8]) <= 0 (signed), and falls through when a3(=[a0+8]) > 0 (signed).
  The `beq` branch at 0x410210 targets 0x41025c, is taken when t1(?) == t2(=0x5), and falls through when t1(?) != t2(=0x5).
  The `beq` branch at 0x410220 targets 0x41025c, is taken when t2(?) == t3(=0x6), and falls through when t2(?) != t3(=0x6).
  The `beq` branch at 0x41022c targets 0x410270, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x41023c targets 0x410270, is taken when t9(?) == ra(=0xa), and falls through when t9(?) != ra(=0xa).
  The `beq` branch at 0x41024c targets 0x410320, is taken when at(?) == v0(=0x1), and falls through when at(?) != v0(=0x1).
  The `beq` branch at 0x410254 targets 0x4103d4 and is always taken.
  The `beq` branch at 0x410268 targets 0x41045c and is always taken.
  The `bne` branch at 0x41027c targets 0x410298, is taken when a0(?) != a1(=0x1), and falls through when a0(?) == a1(=0x1).
  The `beq` branch at 0x410290 targets 0x410318 and is always taken.
  The `bgtz` branch at 0x410304 targets 0x4102d4, is taken when a7(?) > 0 (signed), and falls through when a7(?) <= 0 (signed).
  The `beq` branch at 0x410318 targets 0x41045c and is always taken.
  The `beq` branch at 0x410330 targets 0x4103c0, is taken when (t3(=[a1+323]:1) & 0x1) == 0, and falls through when (t3(=[a1+323]:1) & 0x1) != 0.
  The `bgtz` branch at 0x4103a4 targets 0x410374, is taken when v1(?) > 0 (signed), and falls through when v1(?) <= 0 (signed).
  The `beq` branch at 0x4103b8 targets 0x41045c and is always taken.
  The `beq` branch at 0x4103cc targets 0x41045c and is always taken.
  The `bgtz` branch at 0x410440 targets 0x410410, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `beq` branch at 0x410454 targets 0x41045c and is always taken.
  The `bgtz` branch at 0x41046c targets 0x410200, is taken when t9(?) > 0 (signed), and falls through when t9(?) <= 0 (signed).
  The `beq` branch at 0x410480 targets 0x4106a0 and is always taken.
  The `bne` branch at 0x410490 targets 0x410688, is taken when v1(=[a1+291]:1) != 0, and falls through when v1(=[a1+291]:1) == 0.
  The `blez` branch at 0x4104cc targets 0x410674, is taken when a0(=[a0+8]) <= 0 (signed), and falls through when a0(=[a0+8]) > 0 (signed).
  The `beq` branch at 0x4104f8 targets 0x4105d4, is taken when a6(?) >= 0xb (unsigned), and falls through when a6(?) < 0xb (unsigned).
  The `beq` branch at 0x41051c targets 0x41065c and is always taken.
  The `bne` branch at 0x410530 targets 0x41054c, is taken when t1(?) != t2(=0x1), and falls through when t1(?) == t2(=0x1).
  The `beq` branch at 0x410544 targets 0x4105cc and is always taken.
  The `bgtz` branch at 0x4105b8 targets 0x410588, is taken when v0(?) > 0 (signed), and falls through when v0(?) <= 0 (signed).
  The `beq` branch at 0x4105cc targets 0x41065c and is always taken.
  The `bgtz` branch at 0x410640 targets 0x410610, is taken when a7(?) > 0 (signed), and falls through when a7(?) <= 0 (signed).
  The `beq` branch at 0x410654 targets 0x41065c and is always taken.
  The `bgtz` branch at 0x41066c targets 0x4104d4, is taken when t3(?) > 0 (signed), and falls through when t3(?) <= 0 (signed).
  The `beq` branch at 0x410680 targets 0x4106a0 and is always taken.
  The return at 0x4106a8 has v0 = one of ?, a0, ret(mvpErrPrintf).
  The indirect jump at 0x410508 uses the jump table at 0x419268 with targets 0x410524, 0x410510, 0x410510, 0x410510, 0x410510, 0x410510, 0x410510, 0x4105d4, 0x4105d4, 0x4105d4, 0x410524.
  The indirect jump at 0x410508 uses the jump table at 0x419268 with targets 0x410524, 0x410510, 0x410510, 0x410510, 0x410510, 0x410510, 0x410510, 0x4105d4, 0x4105d4, 0x4105d4, 0x410524.
  The indirect jump at 0x410508 uses the jump table at 0x419268 with targets 0x410524, 0x410510, 0x410510, 0x410510, 0x410510, 0x410510, 0x410510, 0x4105d4, 0x4105d4, 0x4105d4, 0x410524.
  The indirect jump at 0x410508 uses the jump table at 0x419268 with targets 0x410524, 0x410510, 0x410510, 0x410510, 0x410510, 0x410510, 0x410510, 0x4105d4, 0x4105d4, 0x4105d4, 0x410524.
  The indirect jump at 0x410508 uses the jump table at 0x419268 with targets 0x410524, 0x410510, 0x410510, 0x410510, 0x410510, 0x410510, 0x410510, 0x4105d4, 0x4105d4, 0x4105d4, 0x410524.

- `mvpFromVLEventMask` in `usr/lib32/dmedia/video/mvp.so` at 0x4108d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x4108d0-0x410b94 (708 bytes).
  It occupies 708 bytes.
  The `beq` branch at 0x4108e8 targets 0x4108fc, is taken when (at(=a0) & 0x1) == 0, and falls through when (at(=a0) & 0x1) != 0.
  The `beq` branch at 0x410904 targets 0x410918, is taken when (v1(=a0) & 0x2) == 0, and falls through when (v1(=a0) & 0x2) != 0.
  The `beq` branch at 0x410920 targets 0x410934, is taken when (a1(=a0) & 0x4) == 0, and falls through when (a1(=a0) & 0x4) != 0.
  The `beq` branch at 0x41093c targets 0x410950, is taken when (a3(=a0) & 0x8) == 0, and falls through when (a3(=a0) & 0x8) != 0.
  The `beq` branch at 0x410958 targets 0x41096c, is taken when (a5(=a0) & 0x10) == 0, and falls through when (a5(=a0) & 0x10) != 0.
  The `beq` branch at 0x410974 targets 0x410988, is taken when (a7(=a0) & 0x20) == 0, and falls through when (a7(=a0) & 0x20) != 0.
  The `beq` branch at 0x410990 targets 0x4109a4, is taken when (t1(=a0) & 0x40) == 0, and falls through when (t1(=a0) & 0x40) != 0.
  The `beq` branch at 0x4109ac targets 0x4109c0, is taken when (t3(=a0) & 0x80) == 0, and falls through when (t3(=a0) & 0x80) != 0.
  The `beq` branch at 0x4109c8 targets 0x4109dc, is taken when (t9(=a0) & 0x100) == 0, and falls through when (t9(=a0) & 0x100) != 0.
  The `beq` branch at 0x4109e4 targets 0x4109f8, is taken when (at(=a0) & 0x200) == 0, and falls through when (at(=a0) & 0x200) != 0.
  The `beq` branch at 0x410a00 targets 0x410a14, is taken when (v1(=a0) & 0x400) == 0, and falls through when (v1(=a0) & 0x400) != 0.
  The `beq` branch at 0x410a1c targets 0x410a30, is taken when (a1(=a0) & 0x800) == 0, and falls through when (a1(=a0) & 0x800) != 0.
  The `beq` branch at 0x410a38 targets 0x410a4c, is taken when (a3(=a0) & 0x1000) == 0, and falls through when (a3(=a0) & 0x1000) != 0.
  The `beq` branch at 0x410a54 targets 0x410a68, is taken when (a5(=a0) & 0x2000) == 0, and falls through when (a5(=a0) & 0x2000) != 0.
  The `beq` branch at 0x410a70 targets 0x410a88, is taken when (a7(=a0) & 0x4000) == 0, and falls through when (a7(=a0) & 0x4000) != 0.
  The `beq` branch at 0x410a90 targets 0x410aa8, is taken when (t2(=a0) & 0x8000) == 0, and falls through when (t2(=a0) & 0x8000) != 0.
  The `beq` branch at 0x410ab4 targets 0x410acc, is taken when (t9(=a0) & ra(=0x10000)) == 0, and falls through when (t9(=a0) & ra(=0x10000)) != 0.
  The `beq` branch at 0x410ad8 targets 0x410af0, is taken when (v1(=a0) & a0(=0x20000)) == 0, and falls through when (v1(=a0) & a0(=0x20000)) != 0.
  The `beq` branch at 0x410afc targets 0x410b14, is taken when (a3(=a0) & a4(=0x40000)) == 0, and falls through when (a3(=a0) & a4(=0x40000)) != 0.
  The `beq` branch at 0x410b20 targets 0x410b38, is taken when (a7(=a0) & t0(=0x80000)) == 0, and falls through when (a7(=a0) & t0(=0x80000)) != 0.
  The `beq` branch at 0x410b44 targets 0x410b5c, is taken when (t3(=a0) & t8(=0x100000)) == 0, and falls through when (t3(=a0) & t8(=0x100000)) != 0.
  The `beq` branch at 0x410b68 targets 0x410b80, is taken when (at(=a0) & v0(=0x200000)) == 0, and falls through when (at(=a0) & v0(=0x200000)) != 0.
  The return at 0x410b8c has v0 = ?.

- `mvptovlreason` in `usr/lib32/dmedia/video/mvp.so` at 0x410ba0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x410ba0-0x411084 (1252 bytes).
  It occupies 1252 bytes.
  The `bne` branch at 0x410bb8 targets 0x410bd8, is taken when at(=a0) < 0x1000 (signed), and falls through when at(=a0) >= 0x1000 (signed).
  The `beq` branch at 0x410bc8 targets 0x410d50, is taken when v0(=a0) >= 0x1001 (signed), and falls through when v0(=a0) < 0x1001 (signed).
  The `beq` branch at 0x410bd0 targets 0x410f98 and is always taken.
  The `bne` branch at 0x410be0 targets 0x410c00, is taken when v1(=a0) < 0x80 (signed), and falls through when v1(=a0) >= 0x80 (signed).
  The `beq` branch at 0x410bf0 targets 0x410ca8, is taken when a0 >= 0x81 (signed), and falls through when a0 < 0x81 (signed).
  The `beq` branch at 0x410bf8 targets 0x410f48 and is always taken.
  The `bne` branch at 0x410c08 targets 0x410c28, is taken when a1(=a0) < 0x10 (signed), and falls through when a1(=a0) >= 0x10 (signed).
  The `beq` branch at 0x410c18 targets 0x410c68, is taken when a2(=a0) >= 0x11 (signed), and falls through when a2(=a0) < 0x11 (signed).
  The `beq` branch at 0x410c20 targets 0x410f18 and is always taken.
  The `bne` branch at 0x410c30 targets 0x410c50, is taken when a3(=a0) < 0x8 (signed), and falls through when a3(=a0) >= 0x8 (signed).
  The `beq` branch at 0x410c40 targets 0x411068, is taken when a4(=a0) >= 0x9 (signed), and falls through when a4(=a0) < 0x9 (signed).
  The `beq` branch at 0x410c48 targets 0x410f08 and is always taken.
  The `bne` branch at 0x410c58 targets 0x411068, is taken when a5(=a0) != a6(=0x4), and falls through when a5(=a0) == a6(=0x4).
  The `beq` branch at 0x410c60 targets 0x410ef8 and is always taken.
  The `bne` branch at 0x410c70 targets 0x410c90, is taken when a7(=a0) < 0x40 (signed), and falls through when a7(=a0) >= 0x40 (signed).
  The `beq` branch at 0x410c80 targets 0x411068, is taken when t0(=a0) >= 0x41 (signed), and falls through when t0(=a0) < 0x41 (signed).
  The `beq` branch at 0x410c88 targets 0x410f38 and is always taken.
  The `bne` branch at 0x410c98 targets 0x411068, is taken when t1(=a0) != t2(=0x20), and falls through when t1(=a0) == t2(=0x20).
  The `beq` branch at 0x410ca0 targets 0x410f28 and is always taken.
  The `bne` branch at 0x410cb0 targets 0x410cd0, is taken when t3(=a0) < 0x200 (signed), and falls through when t3(=a0) >= 0x200 (signed).
  The `beq` branch at 0x410cc0 targets 0x410d10, is taken when t8(=a0) >= 0x201 (signed), and falls through when t8(=a0) < 0x201 (signed).
  The `beq` branch at 0x410cc8 targets 0x410f68 and is always taken.
  The `bne` branch at 0x410cd8 targets 0x410cf8, is taken when t9(=a0) < 0x1f7 (signed), and falls through when t9(=a0) >= 0x1f7 (signed).
  The `beq` branch at 0x410ce8 targets 0x411068, is taken when ra(=a0) >= 0x1f8 (signed), and falls through when ra(=a0) < 0x1f8 (signed).
  The `beq` branch at 0x410cf0 targets 0x411058 and is always taken.
  The `bne` branch at 0x410d00 targets 0x411068, is taken when at(=a0) != v0(=0x100), and falls through when at(=a0) == v0(=0x100).
  The `beq` branch at 0x410d08 targets 0x410f58 and is always taken.
  The `bne` branch at 0x410d18 targets 0x410d38, is taken when v1(=a0) < 0x800 (signed), and falls through when v1(=a0) >= 0x800 (signed).
  The `beq` branch at 0x410d28 targets 0x411068, is taken when a0 >= 0x801 (signed), and falls through when a0 < 0x801 (signed).
  The `beq` branch at 0x410d30 targets 0x410f88 and is always taken.
  The `bne` branch at 0x410d40 targets 0x411068, is taken when a1(=a0) != a2(=0x400), and falls through when a1(=a0) == a2(=0x400).
  The `beq` branch at 0x410d48 targets 0x410f78 and is always taken.
  The `bne` branch at 0x410d5c targets 0x410d80, is taken when a3(=a0) < a4(=0x40000) (signed), and falls through when a3(=a0) >= a4(=0x40000) (signed).
  The `bne` branch at 0x410d70 targets 0x410e38, is taken when a5(=0x40000) < a6(=a0) (signed), and falls through when a5(=0x40000) >= a6(=a0) (signed).
  The `beq` branch at 0x410d78 targets 0x410ff8 and is always taken.
  The `bne` branch at 0x410d8c targets 0x410db0, is taken when a7(=a0) < t0(=0x8000) (signed), and falls through when a7(=a0) >= t0(=0x8000) (signed).
  The `bne` branch at 0x410da0 targets 0x410df0, is taken when t1(=0x8000) < t2(=a0) (signed), and falls through when t1(=0x8000) >= t2(=a0) (signed).
  The `beq` branch at 0x410da8 targets 0x410fc8 and is always taken.
  The `bne` branch at 0x410db8 targets 0x410dd8, is taken when t3(=a0) < 0x4000 (signed), and falls through when t3(=a0) >= 0x4000 (signed).
  The `beq` branch at 0x410dc8 targets 0x411068, is taken when t8(=a0) >= 0x4001 (signed), and falls through when t8(=a0) < 0x4001 (signed).
  The `beq` branch at 0x410dd0 targets 0x410fb8 and is always taken.
  The `bne` branch at 0x410de0 targets 0x411068, is taken when t9(=a0) != ra(=0x2000), and falls through when t9(=a0) == ra(=0x2000).
  The `beq` branch at 0x410de8 targets 0x410fa8 and is always taken.
  The `bne` branch at 0x410dfc targets 0x410e20, is taken when at(=a0) < v0(=0x20000) (signed), and falls through when at(=a0) >= v0(=0x20000) (signed).
  The `bne` branch at 0x410e10 targets 0x411068, is taken when v1(=0x20000) < a0 (signed), and falls through when v1(=0x20000) >= a0 (signed).
  The `beq` branch at 0x410e18 targets 0x410fe8 and is always taken.
  The `bne` branch at 0x410e28 targets 0x411068, is taken when a1(=a0) != a2(=0x10000), and falls through when a1(=a0) == a2(=0x10000).
  The `beq` branch at 0x410e30 targets 0x410fd8 and is always taken.
  The `bne` branch at 0x410e44 targets 0x410e68, is taken when a3(=a0) < a4(=0x200000) (signed), and falls through when a3(=a0) >= a4(=0x200000) (signed).
  The `bne` branch at 0x410e58 targets 0x410eb0, is taken when a5(=0x200000) < a6(=a0) (signed), and falls through when a5(=0x200000) >= a6(=a0) (signed).
  The `beq` branch at 0x410e60 targets 0x411028 and is always taken.
  The `bne` branch at 0x410e74 targets 0x410e98, is taken when a7(=a0) < t0(=0x100000) (signed), and falls through when a7(=a0) >= t0(=0x100000) (signed).
  The `bne` branch at 0x410e88 targets 0x411068, is taken when t1(=0x100000) < t2(=a0) (signed), and falls through when t1(=0x100000) >= t2(=a0) (signed).
  The `beq` branch at 0x410e90 targets 0x411018 and is always taken.
  The `bne` branch at 0x410ea0 targets 0x411068, is taken when t3(=a0) != t8(=0x80000), and falls through when t3(=a0) == t8(=0x80000).
  The `beq` branch at 0x410ea8 targets 0x411008 and is always taken.
  The `bne` branch at 0x410ebc targets 0x410ee0, is taken when t9(=a0) < ra(=0x800000) (signed), and falls through when t9(=a0) >= ra(=0x800000) (signed).
  The `bne` branch at 0x410ed0 targets 0x411068, is taken when at(=0x800000) < v0(=a0) (signed), and falls through when at(=0x800000) >= v0(=a0) (signed).
  The `beq` branch at 0x410ed8 targets 0x411048 and is always taken.
  The `bne` branch at 0x410ee8 targets 0x411068, is taken when v1(=a0) != a0(=0x400000), and falls through when v1(=a0) == a0(=0x400000).
  The `beq` branch at 0x410ef0 targets 0x411038 and is always taken.
  The `beq` branch at 0x410f00 targets 0x411070 and is always taken.
  The `beq` branch at 0x410f10 targets 0x411070 and is always taken.
  The `beq` branch at 0x410f20 targets 0x411070 and is always taken.
  The `beq` branch at 0x410f30 targets 0x411070 and is always taken.
  The `beq` branch at 0x410f40 targets 0x411070 and is always taken.
  The `beq` branch at 0x410f50 targets 0x411070 and is always taken.
  The `beq` branch at 0x410f60 targets 0x411070 and is always taken.
  The `beq` branch at 0x410f70 targets 0x411070 and is always taken.
  The `beq` branch at 0x410f80 targets 0x411070 and is always taken.
  The `beq` branch at 0x410f90 targets 0x411070 and is always taken.
  The `beq` branch at 0x410fa0 targets 0x411070 and is always taken.
  The `beq` branch at 0x410fb0 targets 0x411070 and is always taken.
  The `beq` branch at 0x410fc0 targets 0x411070 and is always taken.
  The `beq` branch at 0x410fd0 targets 0x411070 and is always taken.
  The `beq` branch at 0x410fe0 targets 0x411070 and is always taken.
  The `beq` branch at 0x410ff0 targets 0x411070 and is always taken.
  The `beq` branch at 0x411000 targets 0x411070 and is always taken.
  The `beq` branch at 0x411010 targets 0x411070 and is always taken.
  The `beq` branch at 0x411020 targets 0x411070 and is always taken.
  The `beq` branch at 0x411030 targets 0x411070 and is always taken.
  The `beq` branch at 0x411040 targets 0x411070 and is always taken.
  The `beq` branch at 0x411050 targets 0x411070 and is always taken.
  The `beq` branch at 0x411060 targets 0x411070 and is always taken.
  The return at 0x41107c has v0 = one of 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x1f7, 0x0.

- `mvpSetEventMask` in `usr/lib32/dmedia/video/mvp.so` at 0x411090 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x411090-0x4111d8 (328 bytes).
  It occupies 328 bytes.
  The `lw` at 0x4110b4 loads 4 bytes from a1 (arg1 at entry) +0x68.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x48, including `lw` at 0x4110f8, `lw` at 0x41111c.
  The `lw` at 0x411138 loads 4 bytes from [a1+104] +0x28.
  The `jalr` at 0x4110e0 calls mvpAssertFail with a0=0x419710, a1=0x419738, a2=0x9d, a3=a3 at entry (arg3).
  The `jalr` at 0x411100 calls mvpPrintf with a0=[a1+104], a1=0x419748, a2=[a1+72], a3=?.
  The `jalr` at 0x411124 calls mvpFromVLEventMask with a0=[a1+72], a1=0xe8, a2=0xcc, a3=?.
  The `jalr` at 0x41114c calls ioctl with a0=[[a1+104]+40], a1=0x6d767002, a2=sp-280, a3=?.
  The `jalr` at 0x411168 calls oserror with a0=?, a1=-0x1, a2=?, a3=?.
  The `jalr` at 0x411184 calls mvpRevisionError with a0=?, a1=?, a2=0x7, a3=?.
  The `jalr` at 0x4111a0 calls mvpPrintf with a0=[a1+104], a1=0x419760, a2=[a1+104], a3=?.
  The `bne` branch at 0x4110c0 targets 0x4110e8, is taken when at(=[a1+104]) != 0, and falls through when at(=[a1+104]) == 0.
  The `bne` branch at 0x41115c targets 0x4111b8, is taken when v0(=ret(ioctl)) != a1(=-0x1), and falls through when v0(=ret(ioctl)) == a1(=-0x1).
  The `bne` branch at 0x411178 targets 0x41118c, is taken when v0(=ret(oserror)) != a2(=0x7), and falls through when v0(=ret(oserror)) == a2(=0x7).
  The `beq` branch at 0x4111b0 targets 0x4111c0 and is always taken.
  The return at 0x4111d0 has v0 = one of 0x0, 0x11.

- `mvpTranslateEvent` in `usr/lib32/dmedia/video/mvp.so` at 0x4111e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x4111e0-0x411810 (1584 bytes).
  It occupies 1584 bytes.
  The `lw` at 0x41120c loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lw` at 0x411218 loads 4 bytes from a2 (arg2 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x68, including `lw` at 0x411224, `lw` at 0x411304.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x8, including `sw` at 0x4112a0, `sw` at 0x4117bc.
  The `lw` at 0x4112cc loads 4 bytes from table(0x4197a0) +0x0.
  The `ld` at 0x4112ec loads 8 bytes from a2 (arg2 at entry) +0x20.
  The `sw` at 0x4112f4 stores 4 bytes to a3 (arg3 at entry) +0x18.
  The `lw` at 0x411358 loads 4 bytes from [a1+104] +0x24.
  The `sw` at 0x411368 stores 4 bytes to [a1+104] +0x24.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x94, including `lw` at 0x41139c, `lw` at 0x41146c, `lw` at 0x4115a4.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x28, including `lw` at 0x4113b0, `lw` at 0x4114dc, `lw` at 0x4116c0.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x80, including `lw` at 0x4113e4, `lw` at 0x4114a8, `lw` at 0x41168c.
  3 such `lh` accesses load 2 bytes from a2 (arg2 at entry) +0x88, including `lh` at 0x411418, `lh` at 0x411510, `lh` at 0x4116f4.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8c, including `lw` at 0x41144c, `lw` at 0x411558, `lw` at 0x411584.
  3 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x20, including `sw` at 0x411454, `sw` at 0x41158c, `sw` at 0x411750.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x90, including `lw` at 0x41145c, `lw` at 0x411550, `lw` at 0x411594.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x24, including `sw` at 0x411464, `sw` at 0x41159c.
  4 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x28, including `sw` at 0x411474, `sw` at 0x4115e8, `sw` at 0x411610.
  3 such `lh` accesses load 2 bytes from a2 (arg2 at entry) +0x98, including `lh` at 0x411560, `lh` at 0x4115e0, `lh` at 0x411620.
  3 such `lh` accesses load 2 bytes from a2 (arg2 at entry) +0x9a, including `lh` at 0x411568, `lh` at 0x4115f0, `lh` at 0x411630.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x98, including `lw` at 0x411570, `lw` at 0x411608.
  The `lw` at 0x4115d0 loads 4 bytes from table(0x4198d0) +0x0.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x2c, including `sw` at 0x4115f8, `sw` at 0x411638.
  The `jalr` at 0x411250 calls mvpAssertFail with a0=0x419778, a1=0x419738, a2=0xd7, a3=a3 at entry (arg3), a4=0x16d28.
  The `bgezall` at 0x411290 calls mvptovlreason [0x410ba0] with a0=[a2+8], a1=[a2+4], a2=0xa, a3=?.
  The `jalr` at 0x411330 calls mvpAssertFail with a0=0x419778, a1=0x419738, a2=0xed, a3=?.
  The `jalr` at 0x41134c calls mvpPrintf with a0=[a1+104], a1=0x4197f0, a2=[a2+8], a3=?.
  The `jalr` at 0x4113a4 calls mvpPrintf with a0=[a1+104], a1=0x419808, a2=[a2+148], a3=a2+128.
  The `jalr` at 0x4113d8 calls mvpAssertFail with a0=0x419820, a1=0x419738, a2=0xf9, a3=?, a4=[a2+40], a5=0x1c.
  The `jalr` at 0x41140c calls mvpAssertFail with a0=0x419850, a1=0x419738, a2=0xfa, a3=?.
  The `jalr` at 0x411440 calls mvpAssertFail with a0=0x419878, a1=0x419738, a2=0xfb, a3=?.
  The `jalr` at 0x4114d0 calls mvpAssertFail with a0=0x419850, a1=0x419738, a2=0x109, a3=?, a4=[a2+128], a5=0x1, a6=a2+136, a7=a2+128.
  The `jalr` at 0x411504 calls mvpAssertFail with a0=0x419820, a1=0x419738, a2=0x10a, a3=?.
  The `jalr` at 0x411538 calls mvpAssertFail with a0=0x419878, a1=0x419738, a2=0x10b, a3=?.
  The `jalr` at 0x411578 calls mvpPrintf with a0=[a1+104], a1=0x4198a0, a2=[a2+144], a3=[a2+140], a4=[a2+152]:2, a5=[a2+154]:2, a6=[a2+152].
  The `jalr` at 0x411658 calls mvpPanic with a0=0x419900, a1=?, a2=?, a3=table(0x4198d0), a4=([a2+148] << 0x2).
  The `jalr` at 0x4116b4 calls mvpAssertFail with a0=0x419850, a1=0x419738, a2=0x13c, a3=a2+128.
  The `jalr` at 0x4116e8 calls mvpAssertFail with a0=0x419820, a1=0x419738, a2=0x13d, a3=?.
  The `jalr` at 0x41171c calls mvpAssertFail with a0=0x419918, a1=0x419738, a2=0x13e, a3=?.
  The `jalr` at 0x41173c calls mvpPrintf with a0=[a1+104], a1=0x419940, a2=[a2+148], a3=?.
  The `bgezall` at 0x41177c calls mvptovlreason [0x410ba0] with a0=[a2+8], a1=[a2+4], a2=0xa, a3=[a2+4], a4=0x2.
  The `jalr` at 0x4117ac calls mvpAssertFail with a0=0x419958, a1=0x419738, a2=0x14c, a3=?.
  The `jalr` at 0x4117d8 calls mvpPanic with a0=0x419988, a1=[a2+4], a2=0xa, a3=[a2+4], a4=0x2.
  The `bne` branch at 0x411230 targets 0x411258, is taken when at(=[a1+104]) != 0, and falls through when at(=[a1+104]) == 0.
  The `beq` branch at 0x411264 targets 0x411284, is taken when a1(=[a2+4]) == a2(=0xa), and falls through when a1(=[a2+4]) != a2(=0xa).
  The `beq` branch at 0x411274 targets 0x411770, is taken when a3(=[a2+4]) == a4(=0x2), and falls through when a3(=[a2+4]) != a4(=0x2).
  The `beq` branch at 0x41127c targets 0x4117c8 and is always taken.
  The `beq` branch at 0x4112c0 targets 0x41175c, is taken when ra(=ret(mvptovlreason)) >= 0x14 (unsigned), and falls through when ra(=ret(mvptovlreason)) < 0x14 (unsigned).
  The `beq` branch at 0x4112e0 targets 0x4117f8 and is always taken.
  The `beq` branch at 0x4112f8 targets 0x411768 and is always taken.
  The `bne` branch at 0x411310 targets 0x411338, is taken when a1(=[a1+104]) != 0, and falls through when a1(=[a1+104]) == 0.
  The `beq` branch at 0x41136c targets 0x411768 and is always taken.
  The `beq` branch at 0x4113b8 targets 0x4113e0, is taken when a4(=[a2+40]) == a5(=0x1c), and falls through when a4(=[a2+40]) != a5(=0x1c).
  The `beq` branch at 0x4113ec targets 0x411414, is taken when a1(=[a2+128]) == a2(=0x1), and falls through when a1(=[a2+128]) != a2(=0x1).
  The `beq` branch at 0x411420 targets 0x411448, is taken when a1(=[a2+136]:2) == a2(=0x14), and falls through when a1(=[a2+136]:2) != a2(=0x14).
  The `beq` branch at 0x411478 targets 0x411768 and is always taken.
  The `beq` branch at 0x4114b0 targets 0x4114d8, is taken when a4(=[a2+128]) == a5(=0x1), and falls through when a4(=[a2+128]) != a5(=0x1).
  The `beq` branch at 0x4114e4 targets 0x41150c, is taken when a1(=[a2+40]) == a2(=0x1c), and falls through when a1(=[a2+40]) != a2(=0x1c).
  The `beq` branch at 0x411518 targets 0x411540, is taken when a1(=[a2+136]:2) == a2(=0x14), and falls through when a1(=[a2+136]:2) != a2(=0x14).
  The `beq` branch at 0x4115c4 targets 0x41164c, is taken when a2(=[a2+148]) >= 0xc (unsigned), and falls through when a2(=[a2+148]) < 0xc (unsigned).
  The `beq` branch at 0x4115fc targets 0x411668 and is always taken.
  The `beq` branch at 0x411614 targets 0x411668 and is always taken.
  The `beq` branch at 0x41163c targets 0x411668 and is always taken.
  The `beq` branch at 0x411644 targets 0x411668 and is always taken.
  The `beq` branch at 0x411660 targets 0x411668 and is always taken.
  The `beq` branch at 0x411668 targets 0x411768 and is always taken.
  The `beq` branch at 0x411694 targets 0x4116bc, is taken when a1(=[a2+128]) == a2(=0x1), and falls through when a1(=[a2+128]) != a2(=0x1).
  The `beq` branch at 0x4116c8 targets 0x4116f0, is taken when a1(=[a2+40]) == a2(=0x1c), and falls through when a1(=[a2+40]) != a2(=0x1c).
  The `beq` branch at 0x4116fc targets 0x411724, is taken when a1(=[a2+136]:2) == a2(=0x14), and falls through when a1(=[a2+136]:2) != a2(=0x14).
  The `beq` branch at 0x411754 targets 0x411768 and is always taken.
  The `beq` branch at 0x411760 targets 0x4117f8 and is always taken.
  The `beq` branch at 0x411768 targets 0x4117f0 and is always taken.
  The `beq` branch at 0x41178c targets 0x4117b4, is taken when v0(=ret(mvptovlreason)) == ra(=0xb), and falls through when v0(=ret(mvptovlreason)) != ra(=0xb).
  The `beq` branch at 0x4117c0 targets 0x4117f0 and is always taken.
  The `beq` branch at 0x4117e8 targets 0x4117f8 and is always taken.
  The return at 0x411808 has v0 = one of 0x0, 0x2, 0x8.
  The indirect jump at 0x4112d0 uses the jump table at 0x4197a0 with targets 0x4112d8, 0x41175c, 0x41175c, 0x411300, 0x41175c, 0x41175c, 0x41175c, 0x41175c, 0x411300, 0x411374, 0x411480, 0x4112e8, 0x411300, 0x41175c, 0x41175c, 0x41175c, 0x41175c, 0x411670, 0x41175c, 0x411300.
  The indirect jump at 0x4115d4 uses the jump table at 0x4198d0 with targets 0x41164c, 0x4115dc, 0x411604, 0x411604, 0x411604, 0x41161c, 0x41164c, 0x41164c, 0x41164c, 0x41164c, 0x411644, 0x411644.

- `mvpUpdateRegs` in `usr/lib32/dmedia/video/mvp.so` at 0x411fe0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x411fe0-0x41392c (6476 bytes).
  It occupies 6476 bytes.
  8 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x128, including `lbu` at 0x412010, `lbu` at 0x412830, `lbu` at 0x41284c.
  The `sw` at 0x412090 stores 4 bytes to sym(mvpscreen_hbias) +0x0.
  The `sw` at 0x4120d4 stores 4 bytes to sym(mvpscreen_vbias) +0x0.
  The `sw` at 0x412118 stores 4 bytes to sym(mvpscreen_hend) +0x0.
  The `sw` at 0x41215c stores 4 bytes to sym(mvpscreen_vend) +0x0.
  The `sw` at 0x4121a0 stores 4 bytes to sym(mvpscreen_dvsize) +0x0.
  The `sw` at 0x4121e4 stores 4 bytes to sym(mvpscreen_dhsize) +0x0.
  The `lh` at 0x4121ec loads 2 bytes from a0 (arg0 at entry) +0x136.
  The `lw` at 0x4121f4 loads 4 bytes from sym(mvpscreen_hbias) +0x0.
  3 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x138, including `lh` at 0x412204, `lh` at 0x412ce0, `lh` at 0x412d8c.
  The `lw` at 0x41220c loads 4 bytes from sym(mvpscreen_vbias) +0x0.
  3 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x13a, including `lh` at 0x41221c, `lh` at 0x41298c, `lh` at 0x412e94.
  3 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x13c, including `lh` at 0x412228, `lh` at 0x4129b4, `lh` at 0x4129e8.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x157, including `lbu` at 0x41224c, `lbu` at 0x412264.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x156, including `lbu` at 0x412290, `lbu` at 0x4126bc, `lbu` at 0x413070.
  The `lw` at 0x4122e4 loads 4 bytes from sym(mvpscreen_hend) +0x0.
  The `lw` at 0x412340 loads 4 bytes from sym(mvpscreen_vend) +0x0.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x127, including `lbu` at 0x412388, `lbu` at 0x4126e0, `lbu` at 0x413058.
  The `sw` at 0x4123a8 stores 4 bytes to a0 (arg0 at entry) +0x160.
  The `sw` at 0x4123b4 stores 4 bytes to a0 (arg0 at entry) +0x164.
  The `sw` at 0x4123c0 stores 4 bytes to a0 (arg0 at entry) +0x168.
  15 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24, including `lw` at 0x4123c8, `lw` at 0x4123fc, `lw` at 0x412430.
  The `lbu` at 0x41248c loads 1 byte from a0 (arg0 at entry) +0x12d.
  8 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x412498, `lbu` at 0x4124a0, `lbu` at 0x4124b4.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x126, including `lbu` at 0x4124dc, `lbu` at 0x413004.
  The `sb` at 0x412510 stores 1 byte to a0 (arg0 at entry) +0x15a.
  4 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x157, including `sb` at 0x41256c, `sb` at 0x4125a0, `sb` at 0x4125d4.
  4 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x158, including `sb` at 0x412578, `sb` at 0x4125ac, `sb` at 0x4125e0.
  4 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x159, including `sb` at 0x412584, `sb` at 0x4125b8, `sb` at 0x4125ec.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x121, including `lbu` at 0x412674, `lbu` at 0x41302c.
  The `lbu` at 0x412740 loads 1 byte from a0 (arg0 at entry) +0x15d.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x160, including `sd` at 0x412774, `sd` at 0x4132b4.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x13e, including `lh` at 0x4127b0, `lh` at 0x413334.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x140, including `lh` at 0x4127bc, `lh` at 0x413340.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x142, including `lh` at 0x4127c8, `lh` at 0x41334c.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x144, including `lh` at 0x4127d4, `lh` at 0x413358.
  3 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x146, including `lh` at 0x4127ec, `lh` at 0x4128ec, `lh` at 0x4134d0.
  3 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x148, including `lh` at 0x412800, `lh` at 0x412900, `lh` at 0x4134e4.
  The `lbu` at 0x4129bc loads 1 byte from a0 (arg0 at entry) +0x12c.
  15 such `lh` accesses load 2 bytes from ?, including `lh` at 0x412bfc, `lh` at 0x412c6c, `lh` at 0x412d18.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x170, including `sd` at 0x412db4, `sd` at 0x4137f0.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x178, including `sd` at 0x412dc0, `sd` at 0x4137fc.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x180, including `sd` at 0x412dcc, `sd` at 0x413808.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x12e, including `sh` at 0x412eb0, `sh` at 0x4133a0.
  The `lh` at 0x412ebc loads 2 bytes from a0 (arg0 at entry) +0x12e.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x130, including `sh` at 0x412f0c, `sh` at 0x413558.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x168, including `sd` at 0x412f18, `sd` at 0x413814.
  The `lbu` at 0x412f5c loads 1 byte from a0 (arg0 at entry) +0x120.
  The `sd` at 0x412f6c stores 8 bytes to a0 (arg0 at entry) +0x188.
  The `lbu` at 0x413148 loads 1 byte from a0 (arg0 at entry) +0x125.
  The `lw` at 0x413174 loads 4 bytes from table(0x41a278) +0x0.
  The `sd` at 0x4132c0 stores 8 bytes to a0 (arg0 at entry) +0x190.
  The `jalr` at 0x412038 calls mvpRead with a0=a0 at entry (arg0), a1=0x15f28, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x412058 calls getenv with a0=0x4204f8, a1=?, a2=0x2, a3=?.
  The `jalr` at 0x412080 calls atoi with a0=ret(getenv), a1=?, a2=?, a3=ret(getenv).
  The `jalr` at 0x41209c calls getenv with a0=0x420500, a1=?, a2=?, a3=?.
  The `jalr` at 0x4120c4 calls atoi with a0=ret(getenv), a1=?, a2=?, a3=?, a5=ret(getenv).
  The `jalr` at 0x4120e0 calls getenv with a0=0x420508, a1=?, a2=?, a3=?.
  The `jalr` at 0x412108 calls atoi with a0=ret(getenv), a1=?, a2=?, a3=?, a7=ret(getenv).
  The `jalr` at 0x412124 calls getenv with a0=0x420510, a1=?, a2=?, a3=?.
  The `jalr` at 0x41214c calls atoi with a0=ret(getenv), a1=?, a2=?, a3=?.
  The `jalr` at 0x412168 calls getenv with a0=0x420518, a1=?, a2=?, a3=?.
  The `jalr` at 0x412190 calls atoi with a0=ret(getenv), a1=?, a2=?, a3=?.
  The `jalr` at 0x4121ac calls getenv with a0=0x420520, a1=?, a2=?, a3=?.
  The `jalr` at 0x4121d4 calls atoi with a0=ret(getenv), a1=?, a2=?, a3=?.
  The `jalr` at 0x4123f0 calls mvpreg_gbetrace with a0=0x1, a1=0x420528, a2=0x420530, a3=0x0, a7=a0+288.
  The `jalr` at 0x412424 calls mvpreg_gbetrace with a0=0x1, a1=0x420528, a2=0x420538, a3=0x0.
  The `jalr` at 0x412458 calls mvpreg_gbetrace with a0=0x1, a1=0x420528, a2=0x420540, a3=0x0.
  The `jalr` at 0x412470 calls mvpRead with a0=a0 at entry (arg0), a1=?, a2=0x2, a3=?.
  The `jalr` at 0x4124fc calls mvpMipmapMode with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x412638 calls mvpPanic with a0=0x41a1b0, a1=?, a2=?, a3=0x2, a5=0x3, a7=0x1.
  The `jalr` at 0x4127a4 calls mvpreg_trace with a0=0x1, a1=0x420528, a2=0x420548, a3=0x0.
  The `jalr` at 0x412998 calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=[a0+314]:2, a3=0x1.
  The `jalr` at 0x4129cc calls mvpSetScale with a0=a0 at entry (arg0), a1=[a0+324]:2, a2=([a0+316]:2 + [a0+300]:1), a3=0x0.
  The `jalr` at 0x4129f4 calls mvpSetScale with a0=a0 at entry (arg0), a1=[a0+324]:2, a2=[a0+316]:2, a3=0x0.
  The `jalr` at 0x412b30 calls mvpAssertFail with a0=0x41a1d0, a1=0x41a1f0, a2=0x12f, a3=?.
  The `jalr` at 0x412b9c calls mvpAssertFail with a0=0x41a200, a1=0x41a1f0, a2=0x134, a3=?.
  The `bgezall` at 0x412bb8 calls mvpCalcMitch [0x411da0] with a0=a0 at entry (arg0), a1=[a0+318]:2, a2=0x0, a3=?.
  The `bgezall` at 0x412bdc calls mvpCalcMitch [0x411da0] with a0=a0 at entry (arg0), a1=?, a2=0x0, a3=?.
  The `jalr` at 0x412e00 calls mvpreg_trace with a0=0x1, a1=0x420528, a2=0x41a218, a3=0x0, a7=-0x1.
  The `jalr` at 0x412e38 calls mvpreg_trace with a0=0x1, a1=0x420528, a2=0x41a228, a3=0x0.
  The `jalr` at 0x412e70 calls mvpreg_trace with a0=0x1, a1=0x420528, a2=0x41a238, a3=0x0.
  The `jalr` at 0x412e84 calls mvpPixSize with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x412efc calls mvpAssertFail with a0=0x41a248, a1=0x41a1f0, a2=0x155, a3=?, a6=a0+288.
  The `jalr` at 0x412f4c calls mvpreg_trace with a0=0x1, a1=0x420528, a2=0x41a268, a3=0x0, a4=0x0, a5=a0+288.
  The `jalr` at 0x412f9c calls mvpreg_trace with a0=0x1, a1=0x420528, a2=0x420550, a3=0x0, a4=0x0, a5=a0+288, a6=[a0+288]:1.
  The `jalr` at 0x412fb4 calls mvpRead with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x413208 calls mvpPanic with a0=0x41a2a8, a1=[a0+342]:1, a2=0x3, a3=[a0+342]:1, a4=0x4, a5=[a0+342]:1, a7=[a0+342]:1.
  The `jalr` at 0x4132f0 calls mvpreg_trace with a0=0x1, a1=0x420528, a2=0x420558, a3=0x0, a5=a0+288, a6=0x1.
  The `jalr` at 0x413328 calls mvpreg_trace with a0=0x1, a1=0x420528, a2=0x41a2c0, a3=0x0, a4=0x0.
  The `jalr` at 0x413378 calls mvpPixSize with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+324]:2, a4=[a0+322]:2, a5=[a0+320]:2, a6=[a0+318]:2.
  The `jalr` at 0x4133e4 calls mvpAssertFail with a0=0x41a2d0, a1=0x41a1f0, a2=0x1da, a3=?.
  The `bgezall` at 0x413400 calls mvpCalcMitch [0x411da0] with a0=a0 at entry (arg0), a1=[a0+322]:2, a2=0x0, a3=?.
  The `jalr` at 0x413848 calls mvpreg_trace with a0=0x1, a1=0x420528, a2=0x41a2f0, a3=0x0, a5=[a0+320]:2, a7=[a0+320]:2.
  The `jalr` at 0x413880 calls mvpreg_trace with a0=0x1, a1=0x420528, a2=0x41a300, a3=0x0.
  The `jalr` at 0x4138b8 calls mvpreg_trace with a0=0x1, a1=0x420528, a2=0x41a310, a3=0x0.
  The `jalr` at 0x4138f0 calls mvpreg_trace with a0=0x1, a1=0x420528, a2=0x41a320, a3=0x0.
  The `jalr` at 0x41390c calls mvpPanic with a0=0x41a330, a1=?, a2=?, a3=?.
  The `bne` branch at 0x412048 targets 0x412468, is taken when v0(=ret(mvpRead)) != a2(=0x2), and falls through when v0(=ret(mvpRead)) == a2(=0x2).
  The `beq` branch at 0x412070 targets 0x412094, is taken when a3(=ret(getenv)) == 0, and falls through when a3(=ret(getenv)) != 0.
  The `beq` branch at 0x4120b4 targets 0x4120d8, is taken when a5(=ret(getenv)) == 0, and falls through when a5(=ret(getenv)) != 0.
  The `beq` branch at 0x4120f8 targets 0x41211c, is taken when a7(=ret(getenv)) == 0, and falls through when a7(=ret(getenv)) != 0.
  The `beq` branch at 0x41213c targets 0x412160, is taken when t1(=ret(getenv)) == 0, and falls through when t1(=ret(getenv)) != 0.
  The `beq` branch at 0x412180 targets 0x4121a4, is taken when t3(=ret(getenv)) == 0, and falls through when t3(=ret(getenv)) != 0.
  The `beq` branch at 0x4121c4 targets 0x4121e8, is taken when t9(=ret(getenv)) == 0, and falls through when t9(=ret(getenv)) != 0.
  The `beq` branch at 0x41226c targets 0x412280, is taken when (at(=[a0+343]:1) & 0x1) == 0, and falls through when (at(=[a0+343]:1) & 0x1) != 0.
  The `beq` branch at 0x4123d0 targets 0x4123f8, is taken when (a5(=[a0+36]) & 0x8) == 0, and falls through when (a5(=[a0+36]) & 0x8) != 0.
  The `beq` branch at 0x412404 targets 0x41242c, is taken when (t0(=[a0+36]) & 0x8) == 0, and falls through when (t0(=[a0+36]) & 0x8) != 0.
  The `beq` branch at 0x412438 targets 0x412460, is taken when (t1(=[a0+36]) & 0x8) == 0, and falls through when (t1(=[a0+36]) & 0x8) != 0.
  The `beq` branch at 0x412460 targets 0x413914 and is always taken.
  The `bne` branch at 0x412480 targets 0x412fac, is taken when v0(=ret(mvpRead)) != t2(=0x1), and falls through when v0(=ret(mvpRead)) == t2(=0x1).
  The `beq` branch at 0x4124a8 targets 0x4124c4, is taken when t3(?) >= t8(?) (signed), and falls through when t3(?) < t8(?) (signed).
  The `beq` branch at 0x4124bc targets 0x4124d0 and is always taken.
  The `bne` branch at 0x4124ec targets 0x412648, is taken when v0(=[a0+294]:1) != v1(=0x2), and falls through when v0(=[a0+294]:1) == v1(=0x2).
  The `beq` branch at 0x41251c targets 0x41255c, is taken when a2(?) == a3(=0x2), and falls through when a2(?) != a3(=0x2).
  The `beq` branch at 0x41252c targets 0x412590, is taken when a4(?) == a5(=0x3), and falls through when a4(?) != a5(=0x3).
  The `beq` branch at 0x41253c targets 0x4125c4, is taken when a6(?) == a7(=0x1), and falls through when a6(?) != a7(=0x1).
  The `beq` branch at 0x41254c targets 0x4125f8, is taken when t0(?) == t1(=0x4), and falls through when t0(?) != t1(=0x4).
  The `beq` branch at 0x412554 targets 0x41262c and is always taken.
  The `beq` branch at 0x412588 targets 0x412648 and is always taken.
  The `beq` branch at 0x4125bc targets 0x412648 and is always taken.
  The `beq` branch at 0x4125f0 targets 0x412648 and is always taken.
  The `beq` branch at 0x412624 targets 0x412648 and is always taken.
  The `beq` branch at 0x412640 targets 0x412648 and is always taken.
  The `beq` branch at 0x412784 targets 0x4127ac, is taken when (a1(=[a0+36]) & 0x8) == 0, and falls through when (a1(=[a0+36]) & 0x8) != 0.
  The `bc1f` branch at 0x412824 targets 0x412848, is taken when not (f0 == f1(=0x3fe0000000000000) (c.eq.d at 0x41281c)), and falls through when f0 == f1(=0x3fe0000000000000) (c.eq.d at 0x41281c).
  The `bne` branch at 0x412838 targets 0x412848, is taken when (t3(=[a0+296]:1) & 0x2) != 0, and falls through when (t3(=[a0+296]:1) & 0x2) == 0.
  The `bne` branch at 0x412854 targets 0x4128dc, is taken when (t9(=[a0+296]:1) & 0x2) != 0, and falls through when (t9(=[a0+296]:1) & 0x2) == 0.
  The `beq` branch at 0x412868 targets 0x412884, is taken when (ra(=[a0+296]:1) & 0x1) == 0, and falls through when (ra(=[a0+296]:1) & 0x1) != 0.
  The `bne` branch at 0x41287c targets 0x4128b0, is taken when at(=[a0+296]:1) != v0(=0x11), and falls through when at(=[a0+296]:1) == v0(=0x11).
  The `beq` branch at 0x4128a8 targets 0x4128d4 and is always taken.
  The `beq` branch at 0x4128d4 targets 0x412974 and is always taken.
  The `bne` branch at 0x4128e0 targets 0x41295c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bc1f` branch at 0x412924 targets 0x41295c, is taken when not (f1 == f2(=0x3fe0000000000000) (c.eq.d at 0x41291c)), and falls through when f1 == f2(=0x3fe0000000000000) (c.eq.d at 0x41291c).
  The `beq` branch at 0x412954 targets 0x412974 and is always taken.
  The `beq` branch at 0x412978 targets 0x412b38, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x412a34 targets 0x412a50, is taken when (a3(=ret(mvpSetScale)) & 0xff) == 0, and falls through when (a3(=ret(mvpSetScale)) & 0xff) != 0.
  The `beq` branch at 0x412a80 targets 0x412a9c, is taken when (t0(=ret(mvpSetScale)) & 0xff) == 0, and falls through when (t0(=ret(mvpSetScale)) & 0xff) != 0.
  The `beq` branch at 0x412acc targets 0x412ae8, is taken when (t9(=ret(mvpSetScale)) & 0xff) == 0, and falls through when (t9(=ret(mvpSetScale)) & 0xff) != 0.
  The `beq` branch at 0x412af0 targets 0x412b18, is taken when a0(=ret(mvpSetScale)) == a1(=-0x1), and falls through when a0(=ret(mvpSetScale)) != a1(=-0x1).
  The `beq` branch at 0x412b00 targets 0x412b18, is taken when a2(=ret(mvpSetScale)) == a3(=-0x1), and falls through when a2(=ret(mvpSetScale)) != a3(=-0x1).
  The `bne` branch at 0x412b10 targets 0x412b38, is taken when a4(=ret(mvpSetScale)) != a5(=-0x1), and falls through when a4(=ret(mvpSetScale)) == a5(=-0x1).
  The `beq` branch at 0x412b7c targets 0x412ba4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x412ddc targets 0x412e08, is taken when (ra(=[a0+36]) & 0x8) == 0, and falls through when (ra(=[a0+36]) & 0x8) != 0.
  The `beq` branch at 0x412e14 targets 0x412e40, is taken when (a3(=[a0+36]) & 0x8) == 0, and falls through when (a3(=[a0+36]) & 0x8) != 0.
  The `beq` branch at 0x412e4c targets 0x412e78, is taken when (a3(=[a0+36]) & 0x8) == 0, and falls through when (a3(=[a0+36]) & 0x8) != 0.
  The `beq` branch at 0x412edc targets 0x412f04, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x412f28 targets 0x412f54, is taken when (a1(=[a0+36]) & 0x8) == 0, and falls through when (a1(=[a0+36]) & 0x8) != 0.
  The `beq` branch at 0x412f7c targets 0x412fa4, is taken when (a3(=[a0+36]) & 0x8) == 0, and falls through when (a3(=[a0+36]) & 0x8) != 0.
  The `beq` branch at 0x412fa4 targets 0x413914 and is always taken.
  The `bne` branch at 0x412fc0 targets 0x413900, is taken when v0(=ret(mvpRead)) != 0, and falls through when v0(=ret(mvpRead)) == 0.
  The `beq` branch at 0x41307c targets 0x4130c8, is taken when a7(=[a0+342]:1) == t0(=0x1), and falls through when a7(=[a0+342]:1) != t0(=0x1).
  The `beq` branch at 0x41308c targets 0x4130e4, is taken when v1(=[a0+342]:1) == a0(=0x2), and falls through when v1(=[a0+342]:1) != a0(=0x2).
  The `beq` branch at 0x41309c targets 0x413108, is taken when a1(=[a0+342]:1) == a2(=0x3), and falls through when a1(=[a0+342]:1) != a2(=0x3).
  The `beq` branch at 0x4130ac targets 0x41312c, is taken when a3(=[a0+342]:1) == a4(=0x4), and falls through when a3(=[a0+342]:1) != a4(=0x4).
  The `beq` branch at 0x4130b8 targets 0x413144, is taken when a5(=[a0+342]:1) == 0, and falls through when a5(=[a0+342]:1) != 0.
  The `beq` branch at 0x4130c0 targets 0x413220 and is always taken.
  The `beq` branch at 0x4130dc targets 0x413220 and is always taken.
  The `beq` branch at 0x413100 targets 0x413220 and is always taken.
  The `beq` branch at 0x413124 targets 0x413220 and is always taken.
  The `beq` branch at 0x41313c targets 0x413220 and is always taken.
  The `beq` branch at 0x413168 targets 0x4131fc, is taken when ra(=[a0+293]:1) >= 0xb (unsigned), and falls through when ra(=[a0+293]:1) < 0xb (unsigned).
  The `beq` branch at 0x41319c targets 0x413218 and is always taken.
  The `beq` branch at 0x4131c0 targets 0x413218 and is always taken.
  The `beq` branch at 0x4131dc targets 0x413218 and is always taken.
  The `beq` branch at 0x4131f4 targets 0x413218 and is always taken.
  The `beq` branch at 0x413210 targets 0x413218 and is always taken.
  The `beq` branch at 0x413218 targets 0x413220 and is always taken.
  The `beq` branch at 0x4132d0 targets 0x4132f8, is taken when (a1(=[a0+36]) & 0x8) == 0, and falls through when (a1(=[a0+36]) & 0x8) != 0.
  The `beq` branch at 0x413304 targets 0x413330, is taken when (v1(=[a0+36]) & 0x8) == 0, and falls through when (v1(=[a0+36]) & 0x8) != 0.
  The `beq` branch at 0x4133c4 targets 0x4133ec, is taken when (a7(?) & 0x7) == 0, and falls through when (a7(?) & 0x7) != 0.
  The `bne` branch at 0x413444 targets 0x4134cc, is taken when (ra(=[a0+296]:1) & 0x2) != 0, and falls through when (ra(=[a0+296]:1) & 0x2) == 0.
  The `beq` branch at 0x413458 targets 0x413474, is taken when (a0(=[a0+296]:1) & 0x1) == 0, and falls through when (a0(=[a0+296]:1) & 0x1) != 0.
  The `bne` branch at 0x41346c targets 0x4134a0, is taken when a1(=[a0+296]:1) != a2(=0x11), and falls through when a1(=[a0+296]:1) == a2(=0x11).
  The `beq` branch at 0x413498 targets 0x4134c4 and is always taken.
  The `beq` branch at 0x4134c4 targets 0x413544 and is always taken.
  The `bc1f` branch at 0x413508 targets 0x41352c, is taken when not (f2 == f3(=0x3fe0000000000000) (c.eq.d at 0x413500)), and falls through when f2 == f3(=0x3fe0000000000000) (c.eq.d at 0x413500).
  The `beq` branch at 0x413524 targets 0x413544 and is always taken.
  The `beq` branch at 0x413824 targets 0x413850, is taken when (t8(=[a0+36]) & 0x8) == 0, and falls through when (t8(=[a0+36]) & 0x8) != 0.
  The `beq` branch at 0x41385c targets 0x413888, is taken when (a3(=[a0+36]) & 0x8) == 0, and falls through when (a3(=[a0+36]) & 0x8) != 0.
  The `beq` branch at 0x413894 targets 0x4138c0, is taken when (a3(=[a0+36]) & 0x8) == 0, and falls through when (a3(=[a0+36]) & 0x8) != 0.
  The `beq` branch at 0x4138cc targets 0x4138f8, is taken when (a3(=[a0+36]) & 0x8) == 0, and falls through when (a3(=[a0+36]) & 0x8) != 0.
  The `beq` branch at 0x4138f8 targets 0x413914 and is always taken.
  The return at 0x413924 has v0 = 0x0.
  The indirect jump at 0x413178 uses the jump table at 0x41a278 with targets 0x4131fc, 0x4131fc, 0x4131fc, 0x413180, 0x4131a4, 0x413180, 0x413180, 0x4131c8, 0x4131fc, 0x4131e4, 0x4131c8.

- `mvpFromVLValue` in `usr/lib32/dmedia/video/mvp.so` at 0x413d40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x413d40-0x413ec4 (388 bytes).
  It occupies 388 bytes.
  The `lwc1` at 0x413d64 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0x413d70 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0x413d80 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lwc1` at 0x413da0 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `ldc1` at 0x413df4 loads 8 bytes from abs 0x420590.
  The `ldc1` at 0x413e14 loads 8 bytes from abs 0x420568.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lwc1` at 0x413e40, `lwc1` at 0x413e60.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lwc1` at 0x413e7c, `lwc1` at 0x413e9c.
  The `bc1f` branch at 0x413de4 targets 0x413e0c, is taken when not (f0 < f1 (c.lt.d at 0x413ddc)), and falls through when f0 < f1 (c.lt.d at 0x413ddc).
  The `beq` branch at 0x413e04 targets 0x413e24 and is always taken.
  The `beq` branch at 0x413e54 targets 0x413e74, is taken when a5(?) >= a6(?) (signed), and falls through when a5(?) < a6(?) (signed).
  The `beq` branch at 0x413e90 targets 0x413eb0, is taken when t3(?) >= t8(?) (signed), and falls through when t3(?) < t8(?) (signed).
  The return at 0x413ebc has v0 = ?.

- `mvpToVLValue` in `usr/lib32/dmedia/video/mvp.so` at 0x413ed0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x413ed0-0x413ff4 (292 bytes).
  It occupies 292 bytes.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lwc1` at 0x413eec, `lwc1` at 0x413f28.
  The `lwc1` at 0x413f4c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0x413f74 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lwc1` at 0x413f7c loads 4 bytes from a0 (arg0 at entry) +0xc.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lwc1` at 0x413f94, `lwc1` at 0x413fb0.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lwc1` at 0x413fbc, `lwc1` at 0x413fd8.
  The `bgez` branch at 0x413efc targets 0x413f20, is taken when at(?) >= 0 (signed), and falls through when at(?) < 0 (signed).
  The `bne` branch at 0x413f0c targets 0x413f20, is taken when a0(=a1) < 0x80 (signed), and falls through when a0(=a1) >= 0x80 (signed).
  The `bc1f` branch at 0x413fa4 targets 0x413fb8, is taken when not (f1 < f2(=[a0+16]) (c.lt.s at 0x413f9c)), and falls through when f1 < f2(=[a0+16]) (c.lt.s at 0x413f9c).
  The `bc1f` branch at 0x413fcc targets 0x413fe0, is taken when not (f9(=[a0+20]) < f10 (c.lt.s at 0x413fc4)), and falls through when f9(=[a0+20]) < f10 (c.lt.s at 0x413fc4).
  The return at 0x413fec has v0 = a0.

- `mvpsendi2ccontrols` in `usr/lib32/dmedia/video/mvp.so` at 0x414160 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x414160-0x4144e4 (900 bytes).
  It occupies 900 bytes.
  The `lw` at 0x414178 loads 4 bytes from a2 (arg2 at entry) +0x1c.
  The `sh` at 0x414188 stores 2 bytes to a2 (arg2 at entry) +0x0.
  The `sh` at 0x414194 stores 2 bytes to a2 (arg2 at entry) +0x2.
  4 such `lbu` accesses load 1 byte from table(0x41f607) +0x0, including `lbu` at 0x414208, `lbu` at 0x41423c, `lbu` at 0x414264.
  5 such `sh` accesses store 2 bytes to ?, including `sh` at 0x4142ac, `sh` at 0x4142c8, `sh` at 0x4142ec.
  4 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x414340, `lhu` at 0x414354, `lhu` at 0x414368.
  The `lw` at 0x414414 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `bgezall` at 0x4141a4 calls mvpgeti2cchip [0x4140a0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x414384 calls mvpPrintf with a0=a0 at entry (arg0), a1=0x41a3c8, a2=?, a3=?.
  The `jalr` at 0x414408 calls mvpPanic with a0=0x41a3e8, a1=?, a2=?, a3=?.
  The `jalr` at 0x414428 calls ioctl with a0=[a0+40], a1=0x6d767005, a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0x414444 calls oserror with a0=?, a1=-0x1, a2=?, a3=?.
  The `jalr` at 0x414460 calls mvpRevisionError with a0=?, a1=?, a2=0x7, a3=?.
  The `jalr` at 0x41446c calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x414480 calls strerror with a0=ret(oserror), a1=?, a2=?, a3=?.
  The `jalr` at 0x4144a0 calls mvpPrintf with a0=a0 at entry (arg0), a1=0x41a418, a2=ret(strerror), a3=?.
  The `jalr` at 0x4144c0 calls sginap with a0=0x1, a1=-0x1, a2=?, a3=?.
  The `bne` branch at 0x4141bc targets 0x4141d4, is taken when a1(=ret(mvpgeti2cchip)) != 0, and falls through when a1(=ret(mvpgeti2cchip)) == 0.
  The `beq` branch at 0x4141cc targets 0x4144d0 and is always taken.
  The `beq` branch at 0x4141e0 targets 0x4143b8 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x414214 targets 0x414394, is taken when a4(=entry(0x41f607)) == 0, and falls through when a4(=entry(0x41f607)) != 0.
  The `beq` branch at 0x41438c targets 0x41439c and is always taken.
  The `beq` branch at 0x414394 targets 0x4143b8 and is always taken.
  The `bne` branch at 0x4143b0 targets 0x4141e8, is taken when a4(?) < 0x5 (signed), and falls through when a4(?) >= 0x5 (signed).
  The `beq` branch at 0x4143c0 targets 0x4143e8, is taken when a6(?) >= 0x5 (signed), and falls through when a6(?) < 0x5 (signed).
  The `beq` branch at 0x4143e0 targets 0x414410 and is always taken.
  The `bne` branch at 0x4143f0 targets 0x414410, is taken when t1(?) < 0x6 (signed), and falls through when t1(?) >= 0x6 (signed).
  The `bne` branch at 0x414438 targets 0x4144b8, is taken when v0(=ret(ioctl)) != a1(=-0x1), and falls through when v0(=ret(ioctl)) == a1(=-0x1).
  The `bne` branch at 0x414454 targets 0x414468, is taken when v0(=ret(oserror)) != a2(=0x7), and falls through when v0(=ret(oserror)) == a2(=0x7).
  The `beq` branch at 0x4144b0 targets 0x4144d0 and is always taken.
  The return at 0x4144dc has v0 = one of 0x0, 0x7, 0x11.

- `mvpgeti2ccontrols` in `usr/lib32/dmedia/video/mvp.so` at 0x4144f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x4144f0-0x414930 (1088 bytes).
  It occupies 1088 bytes.
  6 such `lbu` accesses load 1 byte from table(0x41f607) +0x0, including `lbu` at 0x414590, `lbu` at 0x4145c4, `lbu` at 0x4145f8.
  5 such `sh` accesses store 2 bytes to ?, including `sh` at 0x414614, `sh` at 0x41462c, `sh` at 0x41464c.
  The `lw` at 0x4146e8 loads 4 bytes from a0 (arg0 at entry) +0x28.
  5 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x4147f0, `lhu` at 0x414804, `lhu` at 0x414818.
  The `sw` at 0x414910 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `bgezall` at 0x41452c calls mvpgeti2cchip [0x4140a0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4146dc calls mvpPanic with a0=0x41a3e8, a1=?, a2=?, a3=?.
  The `jalr` at 0x4146fc calls ioctl with a0=[a0+40], a1=0x6d767005, a2=sp-248, a3=?.
  The `jalr` at 0x414718 calls oserror with a0=?, a1=-0x1, a2=?, a3=?.
  The `jalr` at 0x414734 calls mvpRevisionError with a0=?, a1=?, a2=0x7, a3=?.
  The `jalr` at 0x414740 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x414754 calls strerror with a0=ret(oserror), a1=?, a2=?, a3=?.
  The `jalr` at 0x414774 calls mvpPrintf with a0=a0 at entry (arg0), a1=0x41a430, a2=ret(strerror), a3=?.
  The `jalr` at 0x414834 calls mvpPrintf with a0=a0 at entry (arg0), a1=0x41a448, a2=?, a3=?.
  The `bne` branch at 0x414544 targets 0x41455c, is taken when v1(=ret(mvpgeti2cchip)) != 0, and falls through when v1(=ret(mvpgeti2cchip)) == 0.
  The `beq` branch at 0x414554 targets 0x41491c and is always taken.
  The `beq` branch at 0x414568 targets 0x414690 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x41459c targets 0x41466c, is taken when a2(=entry(0x41f607)) == 0, and falls through when a2(=entry(0x41f607)) != 0.
  The `beq` branch at 0x414664 targets 0x414674 and is always taken.
  The `beq` branch at 0x41466c targets 0x414690 and is always taken.
  The `bne` branch at 0x414688 targets 0x414570, is taken when a4(?) < 0x5 (signed), and falls through when a4(?) >= 0x5 (signed).
  The `beq` branch at 0x414698 targets 0x4146bc, is taken when a6(?) >= 0x5 (signed), and falls through when a6(?) < 0x5 (signed).
  The `beq` branch at 0x4146b4 targets 0x4146e4 and is always taken.
  The `bne` branch at 0x4146c4 targets 0x4146e4, is taken when t1(?) < 0x6 (signed), and falls through when t1(?) >= 0x6 (signed).
  The `bne` branch at 0x41470c targets 0x41478c, is taken when v0(=ret(ioctl)) != a1(=-0x1), and falls through when v0(=ret(ioctl)) == a1(=-0x1).
  The `bne` branch at 0x414728 targets 0x41473c, is taken when v0(=ret(oserror)) != a2(=0x7), and falls through when v0(=ret(oserror)) == a2(=0x7).
  The `beq` branch at 0x414784 targets 0x41491c and is always taken.
  The `beq` branch at 0x414798 targets 0x4148fc and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x4147cc targets 0x4148d8, is taken when a4(=entry(0x41f607)) == 0, and falls through when a4(=entry(0x41f607)) != 0.
  The `beq` branch at 0x4148d0 targets 0x4148e0 and is always taken.
  The `beq` branch at 0x4148d8 targets 0x4148fc and is always taken.
  The `bne` branch at 0x4148f4 targets 0x4147a0, is taken when t9(?) < 0x5 (signed), and falls through when t9(?) >= 0x5 (signed).
  The `beq` branch at 0x414900 targets 0x414914, is taken when at(=a2) == 0, and falls through when at(=a2) != 0.
  The return at 0x414928 has v0 = one of 0x0, 0x7, 0x11.

- `mvpvaluetranslate` in `usr/lib32/dmedia/video/mvp.so` at 0x414930 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x414930-0x414d90 (1120 bytes).
  It occupies 1120 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x41494c, `lw` at 0x414bfc.
  6 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0x4149c4, `lw` at 0x414a54, `lw` at 0x414b10.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0x4149d8, `lw` at 0x414a68, `lw` at 0x414b24.
  5 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x4149f8, `sw` at 0x414a90, `sw` at 0x414b4c.
  6 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lw` at 0x414a08, `lw` at 0x414aac, `lw` at 0x414b68.
  7 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x414a24, `sw` at 0x414ad4, `sw` at 0x414b90.
  5 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `sw` at 0x414a30, `sw` at 0x414ae0, `sw` at 0x414af4.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x414a4c, `lw` at 0x414aa0, `lw` at 0x414b08.
  The `lw` at 0x414c64 loads 4 bytes from ([a0+12] + ([a2] << 0x2)) +0x0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x414cb0, `lw` at 0x414cec.
  The `lw` at 0x414d2c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `jalr` at 0x414a80 calls mvpFromVLValue with a0=[a0+12], a1=[a2+4], a2=[a2], a3=a3 at entry (arg3).
  The `jalr` at 0x414ab4 calls mvpToVLValue with a0=[a0+12]+24, a1=[a3], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x414b3c calls mvpFromVLValue with a0=[a0+12], a1=0x2000, a2=?, a3=0x4000, a5=a1 at entry (arg1), a6=0x1, a7=a2 at entry (arg2).
  The `jalr` at 0x414b70 calls mvpToVLValue with a0=[a0+12]+24, a1=[a3], a2=?, a3=0x4000, a5=a1 at entry (arg1), a6=0x1, a7=a2 at entry (arg2).
  The `jalr` at 0x414c44 calls mvpAssertFail with a0=0x41a468, a1=0x41a480, a2=0x1cb, a3=0x4000, a5=0x5000, a7=0x1000.
  The `jalr` at 0x414d3c calls mvpErrPrintf with a0=0x0, a1=0x41a490, a2=[a0+4], a3=[a3], a4=[a3].
  The `jalr` at 0x414d68 calls mvpErrPrintf with a0=0x0, a1=0x41a4c0, a2=?, a3=0x4000, a5=0x5000, a7=0x1000.
  The `beq` branch at 0x414964 targets 0x4149b4, is taken when at(?) == v0(=0x3000), and falls through when at(?) != v0(=0x3000).
  The `beq` branch at 0x414974 targets 0x414a3c, is taken when a0(?) == a1(=0x2000), and falls through when a0(?) != a1(=0x2000).
  The `beq` branch at 0x414984 targets 0x414aec, is taken when a2(?) == a3(=0x4000), and falls through when a2(?) != a3(=0x4000).
  The `beq` branch at 0x414994 targets 0x414ba8, is taken when a4(?) == a5(=0x5000), and falls through when a4(?) != a5(=0x5000).
  The `beq` branch at 0x4149a4 targets 0x414bf8, is taken when a6(?) == a7(=0x1000), and falls through when a6(?) != a7(=0x1000).
  The `beq` branch at 0x4149ac targets 0x414d54 and is always taken.
  The `beq` branch at 0x4149b8 targets 0x414a04, is taken when t0(=a1) == 0, and falls through when t0(=a1) != 0.
  The `beq` branch at 0x4149fc targets 0x414a34 and is always taken.
  The `beq` branch at 0x414a34 targets 0x414d80 and is always taken.
  The `beq` branch at 0x414a40 targets 0x414a9c, is taken when v1(=a1) == 0, and falls through when v1(=a1) != 0.
  The `beq` branch at 0x414a94 targets 0x414ae4 and is always taken.
  The `beq` branch at 0x414ae4 targets 0x414d80 and is always taken.
  The `beq` branch at 0x414afc targets 0x414b58, is taken when a5(=a1) == 0, and falls through when a5(=a1) != 0.
  The `beq` branch at 0x414b50 targets 0x414ba0 and is always taken.
  The `beq` branch at 0x414ba0 targets 0x414d80 and is always taken.
  The `beq` branch at 0x414bac targets 0x414bd0, is taken when a5(=a1) == 0, and falls through when a5(=a1) != 0.
  The `beq` branch at 0x414bc8 targets 0x414bf0 and is always taken.
  The `beq` branch at 0x414bf0 targets 0x414d80 and is always taken.
  The `beq` branch at 0x414c0c targets 0x414c78, is taken when t2(=a1) == 0, and falls through when t2(=a1) != 0.
  The `bne` branch at 0x414c24 targets 0x414c4c, is taken when t8(=[a2]) < t9(?) (signed), and falls through when t8(=[a2]) >= t9(?) (signed).
  The `beq` branch at 0x414c70 targets 0x414d4c and is always taken.
  The `bltz` branch at 0x414c94 targets 0x414cfc, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `beq` branch at 0x414cb8 targets 0x414cfc, is taken when a5(?) == a6(=[a3]), and falls through when a5(?) != a6(=[a3]).
  The `bltz` branch at 0x414cd0 targets 0x414cfc, is taken when a6(?) < 0 (signed), and falls through when a6(?) >= 0 (signed).
  The `bne` branch at 0x414cf4 targets 0x414cc0, is taken when t0(?) != t1(=[a3]), and falls through when t0(?) == t1(=[a3]).
  The `bltz` branch at 0x414d00 targets 0x414d1c, is taken when t1(?) < 0 (signed), and falls through when t1(?) >= 0 (signed).
  The `beq` branch at 0x414d14 targets 0x414d4c and is always taken.
  The `beq` branch at 0x414d4c targets 0x414d80 and is always taken.
  The `beq` branch at 0x414d78 targets 0x414d80 and is always taken.
  The return at 0x414d88 has v0 = one of ?, 0x3000, ret(mvpErrPrintf).

- `mvpothercontrol` in `usr/lib32/dmedia/video/mvp.so` at 0x414d90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x414d90-0x414eb8 (296 bytes).
  It occupies 296 bytes.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x414dc8, `lw` at 0x414e44.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0x414de0, `sw` at 0x414e5c.
  The `blez` branch at 0x414dbc targets 0x414e20, is taken when at(=0xb) <= 0 (signed), and falls through when at(=0xb) > 0 (signed).
  The `bne` branch at 0x414dd0 targets 0x414df4, is taken when a0(?) != a1(=a0), and falls through when a0(?) == a1(=a0).
  The `beq` branch at 0x414dec targets 0x414ea4 and is always taken.
  The `bgtz` branch at 0x414e18 targets 0x414dc4, is taken when a4(?) > 0 (signed), and falls through when a4(?) <= 0 (signed).
  The `blez` branch at 0x414e38 targets 0x414e9c, is taken when t0(=0x13) <= 0 (signed), and falls through when t0(=0x13) > 0 (signed).
  The `bne` branch at 0x414e4c targets 0x414e70, is taken when t3(?) != t8(=a0), and falls through when t3(?) == t8(=a0).
  The `beq` branch at 0x414e68 targets 0x414ea4 and is always taken.
  The `bgtz` branch at 0x414e94 targets 0x414e40, is taken when at(?) > 0 (signed), and falls through when at(?) <= 0 (signed).
  The return at 0x414eb0 has v0 = one of 0x0, 0x1.

- `mvpGetVideoPortControl` in `usr/lib32/dmedia/video/mvp.so` at 0x414ec0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x414ec0-0x4150cc (524 bytes).
  It occupies 524 bytes.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x414f38, `sw` at 0x415098.
  The `ld` at 0x414f54 loads 8 bytes from abs 0x41a4e0.
  The `sd` at 0x414f58 stores 8 bytes to a3 (arg3 at entry) +0x0.
  The `ld` at 0x414f5c loads 8 bytes from abs 0x41a4e8.
  The `sd` at 0x414f60 stores 8 bytes to a3 (arg3 at entry) +0x8.
  The `ld` at 0x414f64 loads 8 bytes from abs 0x41a4f0.
  The `sd` at 0x414f68 stores 8 bytes to a3 (arg3 at entry) +0x10.
  The `lbu` at 0x414f6c loads 1 byte from abs 0x41a4f8.
  The `sb` at 0x414f70 stores 1 byte to a3 (arg3 at entry) +0x18.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x414fd8, `lw` at 0x41505c.
  The `bgezall` at 0x414f94 calls mvpothercontrol [0x414d90] with a0=a2 at entry (arg2), a1=sp-96, a2=a2 at entry (arg2), a3=?.
  The `bgezall` at 0x414fec calls mvpgeti2ccontrolindex [0x414000] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0x41501c calls mvpgeti2ccontrols [0x4144f0] with a0=a0 at entry (arg0), a1=ret(mvpgeti2ccontrolindex), a2=sp-84, a3=?.
  The `bgezall` at 0x415080 calls mvpvaluetranslate [0x414930] with a0=?, a1=0x0, a2=a3 at entry (arg3), a3=sp-84.
  The `bne` branch at 0x414ef4 targets 0x414f84, is taken when at(=a1) != v0(=0x1), and falls through when at(=a1) == v0(=0x1).
  The `beq` branch at 0x414f0c targets 0x414f30, is taken when a0(=a2) == a1(=0x56430002), and falls through when a0(=a2) != a1(=0x56430002).
  The `beq` branch at 0x414f20 targets 0x414f48, is taken when a2 == a3(=0x56430001), and falls through when a2 != a3(=0x56430001).
  The `beq` branch at 0x414f28 targets 0x414f84 and is always taken.
  The `beq` branch at 0x414f40 targets 0x4150b4 and is always taken.
  The `beq` branch at 0x414f7c targets 0x4150b4 and is always taken.
  The `beq` branch at 0x414fac targets 0x414fe0, is taken when ra(=ret(mvpothercontrol)) == 0, and falls through when ra(=ret(mvpothercontrol)) != 0.
  The `bne` branch at 0x414fbc targets 0x414fd4, is taken when at(=ret(mvpothercontrol)) != v0(=-0x1), and falls through when at(=ret(mvpothercontrol)) == v0(=-0x1).
  The `beq` branch at 0x414fcc targets 0x4150b4 and is always taken.
  The `bltz` branch at 0x415000 targets 0x4150a8, is taken when ra(=ret(mvpgeti2ccontrolindex)) < 0 (signed), and falls through when ra(=ret(mvpgeti2ccontrolindex)) >= 0 (signed).
  The `beq` branch at 0x415034 targets 0x41504c, is taken when ra(=ret(mvpgeti2ccontrols)) == 0, and falls through when ra(=ret(mvpgeti2ccontrols)) != 0.
  The `beq` branch at 0x415044 targets 0x4150b4 and is always taken.
  The `beq` branch at 0x415050 targets 0x415090, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x415060 targets 0x415090, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x415088 targets 0x41509c and is always taken.
  The `beq` branch at 0x4150a0 targets 0x4150b4 and is always taken.
  The return at 0x4150c4 has v0 = one of 0x0, 0x7, ret(mvpgeti2ccontrols).

- `mvpSetVideoPortControl` in `usr/lib32/dmedia/video/mvp.so` at 0x4150d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/dmedia/video/mvp.so`.
  Range: 0x4150d0-0x415278 (424 bytes).
  It occupies 424 bytes.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x415148, `lw` at 0x415154.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0xc, including `lw` at 0x41516c, `lw` at 0x415190, `lw` at 0x4151a8.
  2 such `lw` accesses load 4 bytes from [a3+12] +0x0, including `lw` at 0x415194, `lw` at 0x4151ac.
  The `bgezall` at 0x415108 calls mvpothercontrol [0x414d90] with a0=a2 at entry (arg2), a1=sp-224, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x41517c calls mvpvaluetranslate [0x414930] with a0=?, a1=0x1, a2=[a3+12], a3=sp-216.
  The `bgezall` at 0x4151c0 calls mvpgeti2ccontrolindex [0x414000] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4151fc calls mvpCDev with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x41521c calls mvpFromVLControlValue with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=sp-204, a3=?.
  The `bgezall` at 0x415238 calls mvpsendi2ccontrols [0x414160] with a0=a0 at entry (arg0), a1=?, a2=sp-208, a3=?.
  The `beq` branch at 0x41511c targets 0x4151a4, is taken when at(=ret(mvpothercontrol)) == 0, and falls through when at(=ret(mvpothercontrol)) != 0.
  The `bne` branch at 0x41512c targets 0x415144, is taken when v0(=ret(mvpothercontrol)) != v1(=-0x1), and falls through when v0(=ret(mvpothercontrol)) == v1(=-0x1).
  The `beq` branch at 0x41513c targets 0x415260 and is always taken.
  The `beq` branch at 0x415158 targets 0x41518c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x415184 targets 0x41519c and is always taken.
  The `beq` branch at 0x41519c targets 0x4151b4 and is always taken.
  The `bltz` branch at 0x4151d4 targets 0x415254, is taken when ra(=ret(mvpgeti2ccontrolindex)) < 0 (signed), and falls through when ra(=ret(mvpgeti2ccontrolindex)) >= 0 (signed).
  The `beq` branch at 0x41524c targets 0x415260 and is always taken.
  The return at 0x415270 has v0 = one of 0x7, ret(mvpsendi2ccontrols).
