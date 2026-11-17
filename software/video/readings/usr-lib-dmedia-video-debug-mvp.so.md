# Readings: `usr/lib/dmedia/video/debug/mvp.so`

One entry per routine, filed here from the reading batches by binary.

- `mvpRead` in `usr/lib/dmedia/video/debug/mvp.so` at 0x403280 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x403280-0x4032a4 (36 bytes).
  It occupies 36 bytes.
  The `lbu` at 0x403290 loads 1 byte from a0 (arg0 at entry) +0x48.
  The return at 0x40328c has v0 = [a0+72]:1.
  The instructions from 0x403294 to 0x4032a0 are not reached by any path from the entry, and their branches are not listed.

- `mvpNodeProtoById` in `usr/lib/dmedia/video/debug/mvp.so` at 0x4032a4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x4032a4-0x40331c (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x4032bc loads 4 bytes from sym(mvpdevices) +0x8.
  The `lw` at 0x4032c4 loads 4 bytes from sym(mvpdevices) +0xc.
  The `lw` at 0x4032d4 loads 4 bytes from ?.
  The `blez` branch at 0x4032c8 targets 0x403304, is taken when t7(=[sym(mvpdevices)+8]) <= 0 (signed), and falls through when t7(=[sym(mvpdevices)+8]) > 0 (signed).
  The `bne` branch at 0x4032d8 targets 0x4032e8, is taken when t0(?) != a1, and falls through when t0(?) == a1.
  The `beq` branch at 0x4032e0 targets 0x403314 and is always taken.
  The `bgtz` branch at 0x4032fc targets 0x4032d0, is taken when t2(?) > 0 (signed), and falls through when t2(?) <= 0 (signed).
  The `beq` branch at 0x403304 targets 0x403314 and is always taken.
  The return at 0x403314 has v0 = one of ?, 0x0.
  The instructions from 0x40330c to 0x403310 are not reached by any path from the entry, and their branches are not listed.

- `mvpGetNodeProto` in `usr/lib/dmedia/video/debug/mvp.so` at 0x40331c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x40331c-0x4033ac (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0x403334 loads 4 bytes from sym(mvpdevices) +0x8.
  The `lw` at 0x40333c loads 4 bytes from sym(mvpdevices) +0xc.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x40334c, `lw` at 0x403358, `lw` at 0x403364.
  The `blez` branch at 0x403340 targets 0x403394, is taken when t7(=[sym(mvpdevices)+8]) <= 0 (signed), and falls through when t7(=[sym(mvpdevices)+8]) > 0 (signed).
  The `bne` branch at 0x403350 targets 0x403378, is taken when t0(?) != a1, and falls through when t0(?) == a1.
  The `bne` branch at 0x40335c targets 0x403378, is taken when t1(?) != a2, and falls through when t1(?) == a2.
  The `bne` branch at 0x403368 targets 0x403378, is taken when t2(?) != a3, and falls through when t2(?) == a3.
  The `beq` branch at 0x403370 targets 0x4033a4 and is always taken.
  The `bgtz` branch at 0x40338c targets 0x403348, is taken when t4(?) > 0 (signed), and falls through when t4(?) <= 0 (signed).
  The `beq` branch at 0x403394 targets 0x4033a4 and is always taken.
  The return at 0x4033a4 has v0 = one of ?, 0x0.
  The instructions from 0x40339c to 0x4033a0 are not reached by any path from the entry, and their branches are not listed.

- `mvpDecodePath` in `usr/lib/dmedia/video/debug/mvp.so` at 0x4033ac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x4033ac-0x403844 (1176 bytes).
  It occupies 1176 bytes.
  The `lbu` at 0x4033d0 loads 1 byte from a0 (arg0 at entry) +0x49.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x4033e8, `lbu` at 0x40342c.
  The `lbu` at 0x40340c loads 1 byte from a0 (arg0 at entry) +0x4a.
  4 such `lw` accesses load 4 bytes from ret(mvpNodeProtoById) +0x2c, including `lw` at 0x40345c, `lw` at 0x403460, `lw` at 0x4034b8.
  4 such `lw` accesses load 4 bytes from table(0x4178e8) +0x0, including `lw` at 0x403470, `lw` at 0x40347c, `lw` at 0x4034cc.
  4 such `lw` accesses load 4 bytes from ret(mvpNodeProtoById) +0x28, including `lw` at 0x403480, `lw` at 0x403488, `lw` at 0x4034dc.
  2 such `lw` accesses load 4 bytes from abs 0x4178fc, including `lw` at 0x4034a0, `lw` at 0x4034f4.
  The `jalr` at 0x4033f4 calls mvpNodeProtoById [0x4032a4] with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403428 calls mvpNodeProtoById [0x4032a4] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x403440 calls mvpRead with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x40349c calls sprintf with a0=a1 at entry (arg1), a1=[0x4178fc], a2=entry(0x4178e8), a3=[ret(mvpNodeProtoById)+40].
  The `jalr` at 0x4034f8 calls sprintf with a0=a1 at entry (arg1), a1=[0x4178fc], a2=entry(0x4178e8), a3=[ret(mvpNodeProtoById)+40].
  The `beq` branch at 0x403448 targets 0x4034ac, is taken when v0(=ret(mvpRead)) == 0, and falls through when v0(=ret(mvpRead)) != 0.
  The `beq` branch at 0x4034a4 targets 0x403504 and is always taken.
  The `beq` branch at 0x403504 targets 0x40350c and is always taken.
  The return at 0x403514 has v0 = ret(sprintf).
  The instructions from 0x40351c to 0x403840 are not reached by any path from the entry, and their branches are not listed.

- `mvpErrPrintf` in `usr/lib/dmedia/video/debug/mvp.so` at 0x40351c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x40351c-0x403600 (228 bytes).
  It occupies 228 bytes.
  The `lbu` at 0x40354c loads 1 byte from a1 (arg1 at entry) +0x0.
  The `lw` at 0x4035c8 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `jalr` at 0x403588 calls fprintf with a0=sym(__iob)+32, a1=0x41403c, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0x4035b0 calls vfprintf with a0=sym(__iob)+32, a1=?, a2=sp+8, a3=?.
  The `jalr` at 0x4035dc calls pause with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x403550 targets 0x403568, is taken when t7(=[a1]:1) != at(=0x2b), and falls through when t7(=[a1]:1) == at(=0x2b).
  The `beq` branch at 0x403560 targets 0x403594 and is always taken.
  The `beq` branch at 0x40356c targets 0x403594, is taken when t0(=a0) == 0, and falls through when t0(=a0) != 0.
  The `beq` branch at 0x4035c0 targets 0x4035e8, is taken when t3(=a0) == 0, and falls through when t3(=a0) != 0.
  The `beq` branch at 0x4035d0 targets 0x4035e8, is taken when (t4(=[a0+36]) & 0x80) == 0, and falls through when (t4(=[a0+36]) & 0x80) != 0.
  The `beq` branch at 0x4035e8 targets 0x4035f0 and is always taken.
  The return at 0x4035f8 has v0 = ?.

- `mvpPrintf` in `usr/lib/dmedia/video/debug/mvp.so` at 0x403600 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x403600-0x403844 (580 bytes).
  It occupies 580 bytes.
  3 such `lw` accesses load 4 bytes from abs 0x417900, including `lw` at 0x403634, `lw` at 0x40379c, `lw` at 0x40381c.
  2 such `sw` accesses store 4 bytes to abs 0x417900, including `sw` at 0x40363c, `sw` at 0x403824.
  The `lw` at 0x403654 loads 4 bytes from a0 (arg0 at entry) +0x24.
  3 such `sw` accesses store 4 bytes to abs 0x4178e8, including `sw` at 0x403660, `sw` at 0x4036bc, `sw` at 0x4036c4.
  2 such `lw` accesses load 4 bytes from abs 0x4178e8, including `lw` at 0x4036cc, `lw` at 0x4036f4.
  2 such `sw` accesses store 4 bytes to sym(mvpregtrace) +0x0, including `sw` at 0x4036e4, `sw` at 0x4036ec.
  The `lbu` at 0x403708 loads 1 byte from a1 (arg1 at entry) +0x0.
  The `lw` at 0x40377c loads 4 bytes from abs 0x4178e4.
  The `jalr` at 0x403684 calls getenv with a0=0x414044, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4036a8 calls atoi with a0=ret(getenv), a1=?, a2=?, a3=?.
  The `jalr` at 0x403744 calls fprintf with a0=sym(__iob)+32, a1=0x414050, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x40376c calls vfprintf with a0=sym(__iob)+32, a1=?, a2=sp+8, a3=?.
  The `jalr` at 0x4037b4 calls mvpGetStatus with a0=a0 at entry (arg0), a1=sp-36, a2=?, a3=?.
  The `jalr` at 0x4037d0 calls mvpCharStatus [0x406738] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4037f4 calls fprintf with a0=sym(__iob)+32, a1=0x414058, a2=ret(mvpCharStatus), a3=?.
  The `jalr` at 0x403808 calls fflush with a0=sym(__iob)+32, a1=?, a2=?, a3=?.
  The `beq` branch at 0x403644 targets 0x403664, is taken when t8(=a0) == 0, and falls through when t8(=a0) != 0.
  The `beq` branch at 0x40365c targets 0x4036c8 and is always taken.
  The `beq` branch at 0x403664 targets 0x40367c and is always taken.
  The `beq` branch at 0x403698 targets 0x4036c0, is taken when t3(=ret(getenv)) == 0, and falls through when t3(=ret(getenv)) != 0.
  The `beq` branch at 0x4036b8 targets 0x4036c8 and is always taken.
  The `bne` branch at 0x4036d4 targets 0x4036e8, is taken when t4(=[0x4178e8]) < 0x8 (signed), and falls through when t4(=[0x4178e8]) >= 0x8 (signed).
  The `beq` branch at 0x4036e0 targets 0x4036f0 and is always taken.
  The `beq` branch at 0x4036f8 targets 0x403814, is taken when t5(=[0x4178e8]) == 0, and falls through when t5(=[0x4178e8]) != 0.
  The `bne` branch at 0x40370c targets 0x403724, is taken when t7(=[a1]:1) != at(=0x2b), and falls through when t7(=[a1]:1) == at(=0x2b).
  The `beq` branch at 0x40371c targets 0x403750 and is always taken.
  The `beq` branch at 0x403728 targets 0x403750, is taken when t0(=a0) == 0, and falls through when t0(=a0) != 0.
  The `beq` branch at 0x403780 targets 0x403800, is taken when t3(=[0x4178e4]) == 0, and falls through when t3(=[0x4178e4]) != 0.
  The `beq` branch at 0x40378c targets 0x403800, is taken when t4(=a0) == 0, and falls through when t4(=a0) != 0.
  The `bne` branch at 0x4037a0 targets 0x403800, is taken when t5(=[0x417900]) != at(=0x1), and falls through when t5(=[0x417900]) == at(=0x1).
  The `bne` branch at 0x4037bc targets 0x403800, is taken when v0(=ret(mvpGetStatus)) != 0, and falls through when v0(=ret(mvpGetStatus)) == 0.
  The `beq` branch at 0x403828 targets 0x403830 and is always taken.
  The return at 0x40383c has v0 = ?.
  The instructions from 0x40366c to 0x403678 are not reached by any path from the entry, and their branches are not listed.

- `mvpPerror` in `usr/lib/dmedia/video/debug/mvp.so` at 0x403844 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x403844-0x404fc8 (6020 bytes).
  It occupies 6020 bytes.
  The `jalr` at 0x403870 calls oserror with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x403888 calls strerror with a0=ret(oserror), a1=?, a2=?, a3=?.
  The `jalr` at 0x4038ac calls mvpErrPrintf with a0=a0 at entry (arg0), a1=0x41406c, a2=a1 at entry (arg1), a3=ret(strerror).
  The `jalr` at 0x4038bc calls abort with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4038c8 targets 0x4038d0 and is always taken.
  The return at 0x4038dc has v0 = ret(abort).
  The instructions from 0x4038e4 to 0x404fc4 are not reached by any path from the entry, and their branches are not listed.

- `mvpAssertFail` in `usr/lib/dmedia/video/debug/mvp.so` at 0x4038e4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x4038e4-0x403958 (116 bytes).
  It occupies 116 bytes.
  The `jalr` at 0x403924 calls mvpErrPrintf with a0=0x0, a1=0x414074, a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jalr` at 0x403934 calls abort with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x403940 targets 0x403948 and is always taken.
  The return at 0x403950 has v0 = ret(abort).

- `mvpPanic` in `usr/lib/dmedia/video/debug/mvp.so` at 0x403958 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x403958-0x4039d0 (120 bytes).
  It occupies 120 bytes.
  The `jalr` at 0x40399c calls vfprintf with a0=sym(__iob)+32, a1=a0 at entry (arg0), a2=sp+4, a3=a3 at entry (arg3).
  The `jalr` at 0x4039ac calls abort with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4039b8 targets 0x4039c0 and is always taken.
  The return at 0x4039c8 has v0 = ret(abort).

- `mvpRevisionError` in `usr/lib/dmedia/video/debug/mvp.so` at 0x4039d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x4039d0-0x403a14 (68 bytes).
  It occupies 68 bytes.
  The `jalr` at 0x4039f0 calls mvpPanic with a0=0x414098, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x4039fc targets 0x403a04 and is always taken.
  The return at 0x403a0c has v0 = ret(mvpPanic).

- `mvpOpenVideo` in `usr/lib/dmedia/video/debug/mvp.so` at 0x403a14 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x403a14-0x403b64 (336 bytes).
  It occupies 336 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x38, including `lw` at 0x403a48, `lw` at 0x403a78.
  The `sw` at 0x403b00 stores 4 bytes to a1 (arg1 at entry) +0x38.
  The `jalr` at 0x403a68 calls mvpPrintf with a0=0x0, a1=0x4140bc, a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `jalr` at 0x403a90 calls bzero with a0=sp-108, a1=0x6c, a2=?, a3=?.
  The `jalr` at 0x403ab4 calls mvpCreatePath with a0=a0 at entry (arg0), a1=sp-108, a2=0x0, a3=0x0.
  The `jalr` at 0x403adc calls mvpSetupPath with a0=sp-108, a1=0x2, a2=0x1, a3=?.
  The `jalr` at 0x403b0c calls mvpGetDeviceControls with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x403b2c calls mvpPanic with a0=0x4140ec, a1=?, a2=?, a3=?.
  The `beq` branch at 0x403a3c targets 0x403a4c, is taken when t6(=a1) == 0, and falls through when t6(=a1) != 0.
  The `beq` branch at 0x403a44 targets 0x403a50 and is always taken.
  The `bne` branch at 0x403a7c targets 0x403b40, is taken when t8(=[a1+56]) != 0, and falls through when t8(=[a1+56]) == 0.
  The `bne` branch at 0x403ac8 targets 0x403b38, is taken when t0(=ret(mvpCreatePath)) != 0, and falls through when t0(=ret(mvpCreatePath)) == 0.
  The `bne` branch at 0x403af0 targets 0x403b38, is taken when t1(=ret(mvpSetupPath)) != 0, and falls through when t1(=ret(mvpSetupPath)) == 0.
  The `bne` branch at 0x403b14 targets 0x403b24, is taken when v0(=ret(mvpGetDeviceControls)) != 0, and falls through when v0(=ret(mvpGetDeviceControls)) == 0.
  The `beq` branch at 0x403b1c targets 0x403b50 and is always taken.
  The `beq` branch at 0x403b38 targets 0x403b50 and is always taken.
  The `beq` branch at 0x403b40 targets 0x403b50 and is always taken.
  The return at 0x403b5c has v0 = one of 0x0, ?.
  The instructions from 0x403b48 to 0x403b4c are not reached by any path from the entry, and their branches are not listed.

- `mvpCloseVideo` in `usr/lib/dmedia/video/debug/mvp.so` at 0x403b64 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x403b64-0x403c44 (224 bytes).
  It occupies 224 bytes.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x38, including `lw` at 0x403b98, `lw` at 0x403bc8, `lw` at 0x403bf8.
  The `sw` at 0x403c1c stores 4 bytes to a1 (arg1 at entry) +0x38.
  The `jalr` at 0x403bb8 calls mvpPrintf with a0=0x0, a1=0x414118, a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `jalr` at 0x403be0 calls bzero with a0=sp-108, a1=0x6c, a2=?, a3=?.
  The `jalr` at 0x403c0c calls mvpDestroyPath with a0=a0 at entry (arg0), a1=sp-108, a2=?, a3=?.
  The `beq` branch at 0x403b8c targets 0x403b9c, is taken when t6(=a1) == 0, and falls through when t6(=a1) != 0.
  The `beq` branch at 0x403b94 targets 0x403ba0 and is always taken.
  The `beq` branch at 0x403bcc targets 0x403c20, is taken when t8(=[a1+56]) == 0, and falls through when t8(=[a1+56]) != 0.
  The `beq` branch at 0x403c20 targets 0x403c30 and is always taken.
  The return at 0x403c3c has v0 = 0x0.
  The instructions from 0x403c28 to 0x403c2c are not reached by any path from the entry, and their branches are not listed.

- `mvpCreatePath` in `usr/lib/dmedia/video/debug/mvp.so` at 0x403c44 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x403c44-0x40403c (1016 bytes).
  It occupies 1016 bytes.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x403c78, `lw` at 0x403cac, `lw` at 0x403f90.
  2 such `lw` accesses load 4 bytes from [a1+8] +0x38, including `lw` at 0x403c88, `lw` at 0x403f94.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc, including `lw` at 0x403d4c, `lw` at 0x403e9c, `lw` at 0x403ebc.
  7 such `sw` accesses store 4 bytes to ?, including `sw` at 0x403d50, `sw` at 0x403db4, `sw` at 0x403dc8.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x403da4, `lw` at 0x403dc0, `lw` at 0x403dd0.
  2 such `sw` accesses store 4 bytes to sym(mvpregtrace) +0x0, including `sw` at 0x403df4, `sw` at 0x403dfc.
  2 such `lw` accesses load 4 bytes from abs 0x4178e0, including `lw` at 0x403e10, `lw` at 0x403e74.
  The `lw` at 0x403ec8 loads 4 bytes from a1 (arg1 at entry) +0x38.
  The `lw` at 0x403ed4 loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `sw` at 0x403ff4 stores 4 bytes to a1 (arg1 at entry) +0x68.
  The `jalr` at 0x403ca8 calls mvpPrintf with a0=0x0, a1=0x414148, a2=[a1+8], a3=?.
  The `jalr` at 0x403cbc calls malloc with a0=0x198, a1=?, a2=?, a3=?.
  The `jalr` at 0x403cdc calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x403cf4 calls strerror with a0=ret(oserror), a1=?, a2=?, a3=?.
  The `jalr` at 0x403d18 calls mvpErrPrintf with a0=?, a1=0x414170, a2=0x198, a3=ret(strerror).
  The `jalr` at 0x403d38 calls bzero with a0=ret(malloc), a1=0x198, a2=?, a3=?.
  The `jalr` at 0x403d5c calls getenv with a0=0x41419c, a1=?, a2=?, a3=?.
  The `jalr` at 0x403d80 calls atoi with a0=ret(getenv), a1=?, a2=?, a3=?.
  The `jalr` at 0x403e0c calls open with a0=[0x4178e0], a1=0x2, a2=?, a3=?.
  The `jalr` at 0x403e30 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x403e48 calls strerror with a0=ret(oserror), a1=?, a2=?, a3=?.
  The `jalr` at 0x403e70 calls mvpPrintf with a0=?, a1=0x4141a8, a2=[0x4178e0], a3=ret(strerror).
  The `jalr` at 0x403e84 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x403ef4 calls ioctl with a0=?, a1=0x6d767002, a2=sp-240, a3=?.
  The `jalr` at 0x403f0c calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x403f24 calls mvpRevisionError with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x403f34 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x403f4c calls strerror with a0=ret(oserror), a1=?, a2=?, a3=?.
  The `jalr` at 0x403f74 calls mvpErrPrintf with a0=?, a1=0x4141c4, a2=?, a3=?.
  The `jalr` at 0x403fbc calls mvpAssertFail with a0=0x414208, a1=0x41423c, a2=0x155, a3=?.
  The `jalr` at 0x40400c calls sprintf with a0=?, a1=0x414244, a2=[a1+12], a3=?.
  The `beq` branch at 0x403c7c targets 0x403c8c, is taken when t7(=[a1+8]) == 0, and falls through when t7(=[a1+8]) != 0.
  The `beq` branch at 0x403c84 targets 0x403c90 and is always taken.
  The `bne` branch at 0x403cd0 targets 0x403d2c, is taken when t9(=ret(malloc)) != 0, and falls through when t9(=ret(malloc)) == 0.
  The `beq` branch at 0x403d24 targets 0x404028 and is always taken.
  The `beq` branch at 0x403d70 targets 0x403dcc, is taken when t3(=ret(getenv)) == 0, and falls through when t3(=ret(getenv)) != 0.
  The `beq` branch at 0x403d94 targets 0x403db8, is taken when t4(=ret(atoi)) == 0, and falls through when t4(=ret(atoi)) != 0.
  The `beq` branch at 0x403db0 targets 0x403dcc and is always taken.
  The `bne` branch at 0x403de4 targets 0x403df8, is taken when t6(?) < 0x8 (signed), and falls through when t6(?) >= 0x8 (signed).
  The `beq` branch at 0x403df0 targets 0x403e00 and is always taken.
  The `bne` branch at 0x403e24 targets 0x403e98, is taken when s0(=ret(open)) != at(=-0x1), and falls through when s0(=ret(open)) == at(=-0x1).
  The `beq` branch at 0x403e90 targets 0x404028 and is always taken.
  The `beq` branch at 0x403ea0 targets 0x403fd0, is taken when t5(=[a1+12]) == 0, and falls through when t5(=[a1+12]) != 0.
  The `bne` branch at 0x403f00 targets 0x403f88, is taken when v0(=ret(ioctl)) != at(=-0x1), and falls through when v0(=ret(ioctl)) == at(=-0x1).
  The `bne` branch at 0x403f18 targets 0x403f30, is taken when v0(=ret(oserror)) != at(=0x7), and falls through when v0(=ret(oserror)) == at(=0x7).
  The `beq` branch at 0x403f80 targets 0x404028 and is always taken.
  The `beq` branch at 0x403f98 targets 0x403fa8, is taken when s0(=[[a1+8]+56]) == 0, and falls through when s0(=[[a1+8]+56]) != 0.
  The `beq` branch at 0x403fa0 targets 0x403fc8 and is always taken.
  The `beq` branch at 0x403fc8 targets 0x403fe0 and is always taken.
  The `beq` branch at 0x404018 targets 0x404028 and is always taken.
  The return at 0x404034 has v0 = one of 0x0, 0x6, 0xb, 0x11.
  The instructions from 0x404020 to 0x404024 are not reached by any path from the entry, and their branches are not listed.

- `mvpDestroyPath` in `usr/lib/dmedia/video/debug/mvp.so` at 0x40403c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x40403c-0x4041bc (384 bytes).
  It occupies 384 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x404068, `lw` at 0x40408c.
  The `lw` at 0x404078 loads 4 bytes from [a1+8] +0x38.
  The `lw` at 0x4040ac loads 4 bytes from a1 (arg1 at entry) +0x68.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x404108, `lw` at 0x40417c.
  The `sw` at 0x40416c stores 4 bytes to a1 (arg1 at entry) +0x68.
  The `jalr` at 0x40409c calls mvpPrintf with a0=0x0, a1=0x414250, a2=[a1+8], a3=?.
  The `jalr` at 0x4040d4 calls mvpAssertFail with a0=0x414284, a1=0x4142ac, a2=0x16e, a3=?.
  The `jalr` at 0x404104 calls ioctl with a0=?, a1=0x6d767002, a2=sp-240, a3=?.
  The `jalr` at 0x40411c calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404134 calls strerror with a0=ret(oserror), a1=?, a2=?, a3=?.
  The `jalr` at 0x404154 calls mvpErrPrintf with a0=?, a1=0x4142b4, a2=ret(strerror), a3=?.
  The `jalr` at 0x404178 calls close with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40418c calls free with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x40406c targets 0x40407c, is taken when t7(=[a1+8]) == 0, and falls through when t7(=[a1+8]) != 0.
  The `beq` branch at 0x404074 targets 0x404080 and is always taken.
  The `beq` branch at 0x4040b0 targets 0x4040c0, is taken when t0(=[a1+104]) == 0, and falls through when t0(=[a1+104]) != 0.
  The `beq` branch at 0x4040b8 targets 0x4040e0 and is always taken.
  The `bne` branch at 0x404110 targets 0x404168, is taken when v0(=ret(ioctl)) != at(=-0x1), and falls through when v0(=ret(ioctl)) == at(=-0x1).
  The `beq` branch at 0x404160 targets 0x4041a8 and is always taken.
  The `beq` branch at 0x404198 targets 0x4041a8 and is always taken.
  The return at 0x4041b4 has v0 = one of 0x0, 0x11.
  The instructions from 0x4041a0 to 0x4041a4 are not reached by any path from the entry, and their branches are not listed.

- `mvpAddNode` in `usr/lib/dmedia/video/debug/mvp.so` at 0x4041bc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x4041bc-0x4041f0 (52 bytes).
  It occupies 52 bytes.
  The `beq` branch at 0x4041d8 targets 0x4041e8 and is always taken.
  The return at 0x4041e8 has v0 = 0x0.
  The instructions from 0x4041e0 to 0x4041e4 are not reached by any path from the entry, and their branches are not listed.

- `mvpRemoveNode` in `usr/lib/dmedia/video/debug/mvp.so` at 0x4041f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x4041f0-0x40426c (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0x404218 loads 4 bytes from a1 (arg1 at entry) +0x68.
  The `jalr` at 0x404240 calls mvpAssertFail with a0=0x4142d0, a1=0x4142f0, a2=0x19c, a3=a3 at entry (arg3).
  The `beq` branch at 0x40421c targets 0x40422c, is taken when t7(=[a1+104]) == 0, and falls through when t7(=[a1+104]) != 0.
  The `beq` branch at 0x404224 targets 0x40424c and is always taken.
  The `beq` branch at 0x40424c targets 0x40425c and is always taken.
  The return at 0x404264 has v0 = 0x0.
  The instructions from 0x404254 to 0x404258 are not reached by any path from the entry, and their branches are not listed.

- `mvpGetConnection` in `usr/lib/dmedia/video/debug/mvp.so` at 0x40426c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x40426c-0x4042a0 (52 bytes).
  It occupies 52 bytes.
  The `beq` branch at 0x404288 targets 0x404298 and is always taken.
  The return at 0x404298 has v0 = 0x12.
  The instructions from 0x404290 to 0x404294 are not reached by any path from the entry, and their branches are not listed.

- `mvpSetConnection` in `usr/lib/dmedia/video/debug/mvp.so` at 0x4042a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x4042a0-0x4042d4 (52 bytes).
  It occupies 52 bytes.
  The `beq` branch at 0x4042bc targets 0x4042cc and is always taken.
  The return at 0x4042cc has v0 = 0x12.
  The instructions from 0x4042c4 to 0x4042c8 are not reached by any path from the entry, and their branches are not listed.

- `mvpGetDefaultNumber` in `usr/lib/dmedia/video/debug/mvp.so` at 0x4042d4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x4042d4-0x404400 (300 bytes).
  It occupies 300 bytes.
  The `lw` at 0x404304 loads 4 bytes from a1 (arg1 at entry) +0x38.
  The `lbu` at 0x404394 loads 1 byte from [a1+56] +0x129.
  The `lbu` at 0x4043c8 loads 1 byte from [a1+56] +0x130.
  The `jalr` at 0x40432c calls mvpAssertFail with a0=0x4142f8, a1=0x41431c, a2=0x1ba, a3=a3 at entry (arg3).
  The `jalr` at 0x404340 calls mvpGetDeviceControls with a0=[a1+56], a1=?, a2=?, a3=?.
  The `beq` branch at 0x404308 targets 0x404318, is taken when t7(=[a1+56]) == 0, and falls through when t7(=[a1+56]) != 0.
  The `beq` branch at 0x404310 targets 0x404338 and is always taken.
  The `beq` branch at 0x404354 targets 0x40437c, is taken when s0(=a3) == at(=0x1), and falls through when s0(=a3) != at(=0x1).
  The `beq` branch at 0x404360 targets 0x4043b0, is taken when s0(=a3) == at(=0x3), and falls through when s0(=a3) != at(=0x3).
  The `beq` branch at 0x40436c targets 0x4043a8, is taken when s0(=a3) == at(=0x4), and falls through when s0(=a3) != at(=0x4).
  The `beq` branch at 0x404374 targets 0x4043dc and is always taken.
  The `bne` branch at 0x404384 targets 0x4043a0, is taken when t8(=a2) != at(=0x1), and falls through when t8(=a2) == at(=0x1).
  The `beq` branch at 0x404390 targets 0x4043ec and is always taken.
  The `beq` branch at 0x4043a0 targets 0x4043ec and is always taken.
  The `beq` branch at 0x4043a8 targets 0x4043ec and is always taken.
  The `bne` branch at 0x4043b8 targets 0x4043d4, is taken when t0(=a2) != at(=0x2), and falls through when t0(=a2) == at(=0x2).
  The `beq` branch at 0x4043c4 targets 0x4043ec and is always taken.
  The `beq` branch at 0x4043d4 targets 0x4043ec and is always taken.
  The `beq` branch at 0x4043dc targets 0x4043ec and is always taken.
  The return at 0x4043f8 has v0 = one of [[a1+56]+297]:1, 0x0, [[a1+56]+304]:1.
  The instructions from 0x404398 to 0x40439c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4043cc to 0x4043d0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4043e4 to 0x4043e8 are not reached by any path from the entry, and their branches are not listed.

- `mvpSetupPath` in `usr/lib/dmedia/video/debug/mvp.so` at 0x4045bc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x4045bc-0x404fc8 (2572 bytes).
  It occupies 2572 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x4045ec, `lw` at 0x404610.
  The `lw` at 0x4045fc loads 4 bytes from [a0+8] +0x38.
  The `lw` at 0x404640 loads 4 bytes from a0 (arg0 at entry) +0x68.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0x404678, `lw` at 0x4046f0, `lw` at 0x4049b0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x64, including `lw` at 0x404704, `lw` at 0x404d38.
  27 such `lw` accesses load 4 bytes from ?, including `lw` at 0x404710, `lw` at 0x404720, `lw` at 0x404730.
  9 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x404768, `lbu` at 0x404850, `lbu` at 0x404890.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0x40479c, `sw` at 0x404a04, `sw` at 0x404a78.
  9 such `sb` accesses store 1 byte to ?, including `sb` at 0x4047c0, `sb` at 0x4047e4, `sb` at 0x40480c.
  2 such `lw` accesses load 4 bytes from ret(mvpGetNodeProto) +0x0, including `lw` at 0x404d5c, `lw` at 0x404d7c.
  The `jalr` at 0x404630 calls mvpPrintf with a0=0x0, a1=0x414354, a2=[a0+8], a3=?.
  The `jalr` at 0x404668 calls mvpAssertFail with a0=0x414394, a1=0x4143bc, a2=0x213, a3=?.
  The `jalr` at 0x4046a4 calls mvpAssertFail with a0=0x4143c4, a1=0x4143e8, a2=0x214, a3=?.
  The `jalr` at 0x4046cc calls bzero with a0=sp-240, a1=0xe8, a2=?, a3=?.
  The `jalr` at 0x40484c calls mvpProxy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404894 calls mvpCDev with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404a18 calls strncat with a0=?, a1=0x4143f0, a2=0x20, a3=?.
  The `jalr` at 0x404ba8 calls bcopy with a0=sp-232, a1=?, a2=0xdc, a3=?.
  The `jalr` at 0x404bd8 calls ioctl with a0=?, a1=0x6d767002, a2=sp-240, a3=?.
  The `jalr` at 0x404bf0 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404c08 calls mvpRevisionError with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404c18 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404c30 calls strerror with a0=ret(oserror), a1=?, a2=?, a3=?.
  The `jalr` at 0x404c50 calls mvpPrintf with a0=?, a1=0x4143fc, a2=ret(strerror), a3=?.
  The `jalr` at 0x404c60 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404d1c calls mvpGetNodeProto [0x40331c] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404d78 calls mvpProxy with a0=[ret(mvpGetNodeProto)], a1=?, a2=?, a3=?.
  The `jalr` at 0x404da8 calls mvpCDev with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404e2c calls ioctl with a0=?, a1=0x6d767002, a2=sp-240, a3=?.
  The `jalr` at 0x404e48 calls mvpPanic with a0=0x414410, a1=?, a2=?, a3=?.
  The `jalr` at 0x404e68 calls bcopy with a0=sp-232, a1=?, a2=0xdc, a3=?.
  The `jalr` at 0x404ea4 calls mvpDecodePath [0x4033ac] with a0=?, a1=sp-384, a2=?, a3=?.
  The `jalr` at 0x404eb8 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404edc calls strncat with a0=?, a1=sp-384, a2=?, a3=?.
  The `jalr` at 0x404ef8 calls strncpy with a0=sp-232, a1=sp-384, a2=0x1f, a3=?.
  The `jalr` at 0x404f28 calls ioctl with a0=?, a1=0x6d767002, a2=sp-240, a3=?.
  The `jalr` at 0x404f3c calls mvpSetupPathControls with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404f50 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404f68 calls strerror with a0=ret(oserror), a1=?, a2=?, a3=?.
  The `jalr` at 0x404f88 calls mvpErrPrintf with a0=?, a1=0x414434, a2=ret(strerror), a3=?.
  The `beq` branch at 0x4045f0 targets 0x404600, is taken when t7(=[a0+8]) == 0, and falls through when t7(=[a0+8]) != 0.
  The `beq` branch at 0x4045f8 targets 0x404604 and is always taken.
  The `beq` branch at 0x404644 targets 0x404654, is taken when t2(=[a0+104]) == 0, and falls through when t2(=[a0+104]) != 0.
  The `beq` branch at 0x40464c targets 0x404674 and is always taken.
  The `beq` branch at 0x404680 targets 0x404690, is taken when t4(=[a0+96]) >= 0x12 (signed), and falls through when t4(=[a0+96]) < 0x12 (signed).
  The `beq` branch at 0x404688 targets 0x4046b0 and is always taken.
  The `blez` branch at 0x4046f4 targets 0x4049c0, is taken when t9(=[a0+96]) <= 0 (signed), and falls through when t9(=[a0+96]) > 0 (signed).
  The `beq` branch at 0x404724 targets 0x40473c, is taken when t7(?) == at(=0x10000000), and falls through when t7(?) != at(=0x10000000).
  The `beq` branch at 0x404734 targets 0x40477c and is always taken.
  The `bne` branch at 0x404748 targets 0x404774, is taken when t2(?) != at(=0x1), and falls through when t2(?) == at(=0x1).
  The `bne` branch at 0x404758 targets 0x404774, is taken when t1(?) != at(=0x1), and falls through when t1(?) == at(=0x1).
  The `beq` branch at 0x40476c targets 0x40477c and is always taken.
  The `bne` branch at 0x4048c8 targets 0x404920, is taken when t6(?) != at(=0x1), and falls through when t6(?) == at(=0x1).
  The `bne` branch at 0x4048e8 targets 0x4048fc, is taken when t2(?) != at(=0x1), and falls through when t2(?) == at(=0x1).
  The `beq` branch at 0x4048f4 targets 0x404918 and is always taken.
  The `bne` branch at 0x404908 targets 0x404918, is taken when t1(?) != at(=0x4), and falls through when t1(?) == at(=0x4).
  The `beq` branch at 0x404918 targets 0x404958 and is always taken.
  The `bne` branch at 0x40492c targets 0x404958, is taken when t6(?) != at(=0x2), and falls through when t6(?) == at(=0x2).
  The `bne` branch at 0x40494c targets 0x404958, is taken when t2(?) != at(=0x1), and falls through when t2(?) == at(=0x1).
  The `beq` branch at 0x404964 targets 0x404978, is taken when t4(?) == at(=0x1), and falls through when t4(?) != at(=0x1).
  The `bne` branch at 0x404970 targets 0x404984, is taken when t4(?) != at(=0x4), and falls through when t4(?) == at(=0x4).
  The `beq` branch at 0x40497c targets 0x4049a0 and is always taken.
  The `bne` branch at 0x404990 targets 0x4049a0, is taken when t5(?) != at(=0x3), and falls through when t5(?) == at(=0x3).
  The `bne` branch at 0x4049b8 targets 0x4046fc, is taken when t7(?) < t2(=[a0+96]) (signed), and falls through when t7(?) >= t2(=[a0+96]) (signed).
  The `bne` branch at 0x4049c8 targets 0x4049e0, is taken when t8(?) != at(=0x1), and falls through when t8(?) == at(=0x1).
  The `beq` branch at 0x4049d8 targets 0x404a28, is taken when t4(?) == at(=0x1), and falls through when t4(?) != at(=0x1).
  The `bne` branch at 0x4049e8 targets 0x4049f8, is taken when t1(?) < 0x2 (signed), and falls through when t1(?) >= 0x2 (signed).
  The `beq` branch at 0x4049f0 targets 0x404fb4 and is always taken.
  The `beq` branch at 0x404a20 targets 0x404a7c and is always taken.
  The `beq` branch at 0x404a30 targets 0x404a48, is taken when t3(?) == at(=-0x1), and falls through when t3(?) != at(=-0x1).
  The `bne` branch at 0x404a40 targets 0x404a58, is taken when t9(?) != at(=-0x1), and falls through when t9(?) == at(=-0x1).
  The `beq` branch at 0x404a48 targets 0x404fb4 and is always taken.
  The `beq` branch at 0x404a80 targets 0x404ab4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x404a8c targets 0x404ac4, is taken when s0(?) == at(=0x1), and falls through when s0(?) != at(=0x1).
  The `beq` branch at 0x404a98 targets 0x404ad4, is taken when s0(?) == at(=0x2), and falls through when s0(?) != at(=0x2).
  The `beq` branch at 0x404aa4 targets 0x404ae4, is taken when s0(?) == at(=0x3), and falls through when s0(?) != at(=0x3).
  The `beq` branch at 0x404aac targets 0x404af4 and is always taken.
  The `beq` branch at 0x404abc targets 0x404afc and is always taken.
  The `beq` branch at 0x404acc targets 0x404afc and is always taken.
  The `beq` branch at 0x404adc targets 0x404afc and is always taken.
  The `beq` branch at 0x404aec targets 0x404afc and is always taken.
  The `beq` branch at 0x404af4 targets 0x404fb4 and is always taken.
  The `beq` branch at 0x404b00 targets 0x404b34, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x404b0c targets 0x404b44, is taken when s0(?) == at(=0x1), and falls through when s0(?) != at(=0x1).
  The `beq` branch at 0x404b18 targets 0x404b54, is taken when s0(?) == at(=0x2), and falls through when s0(?) != at(=0x2).
  The `beq` branch at 0x404b24 targets 0x404b64, is taken when s0(?) == at(=0x3), and falls through when s0(?) != at(=0x3).
  The `beq` branch at 0x404b2c targets 0x404b74 and is always taken.
  The `beq` branch at 0x404b3c targets 0x404b7c and is always taken.
  The `beq` branch at 0x404b4c targets 0x404b7c and is always taken.
  The `beq` branch at 0x404b5c targets 0x404b7c and is always taken.
  The `beq` branch at 0x404b6c targets 0x404b7c and is always taken.
  The `beq` branch at 0x404b74 targets 0x404fb4 and is always taken.
  The `bne` branch at 0x404be4 targets 0x404ca4, is taken when v0(=ret(ioctl)) != at(=-0x1), and falls through when v0(=ret(ioctl)) == at(=-0x1).
  The `bne` branch at 0x404bfc targets 0x404c14, is taken when v0(=ret(oserror)) != at(=0x7), and falls through when v0(=ret(oserror)) == at(=0x7).
  The `beq` branch at 0x404c70 targets 0x404c8c, is taken when s0(=ret(oserror)) == at(=0xd), and falls through when s0(=ret(oserror)) != at(=0xd).
  The `beq` branch at 0x404c7c targets 0x404c94, is taken when s0(=ret(oserror)) == at(=0x13), and falls through when s0(=ret(oserror)) != at(=0x13).
  The `beq` branch at 0x404c84 targets 0x404c9c and is always taken.
  The `beq` branch at 0x404c8c targets 0x404fb4 and is always taken.
  The `beq` branch at 0x404c94 targets 0x404fb4 and is always taken.
  The `beq` branch at 0x404c9c targets 0x404fb4 and is always taken.
  The `blez` branch at 0x404cb4 targets 0x404dfc, is taken when t7(?) <= 0 (signed), and falls through when t7(?) > 0 (signed).
  The `beq` branch at 0x404ce8 targets 0x404ddc, is taken when t0(?) == s0(?), and falls through when t0(?) != s0(?).
  The `bne` branch at 0x404df4 targets 0x404cbc, is taken when t9(?) < t2(?) (signed), and falls through when t9(?) >= t2(?) (signed).
  The `beq` branch at 0x404e00 targets 0x404e74, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x404e38 targets 0x404e54, is taken when v0(=ret(ioctl)) != at(=-0x1), and falls through when v0(=ret(ioctl)) == at(=-0x1).
  The `bne` branch at 0x404e80 targets 0x404f94, is taken when (t0(?) & 0x100) != 0, and falls through when (t0(?) & 0x100) == 0.
  The `bne` branch at 0x404e8c targets 0x404f94, is taken when (t0(?) & 0x200) != 0, and falls through when (t0(?) & 0x200) == 0.
  The `beq` branch at 0x404f44 targets 0x404f94, is taken when v0(=ret(mvpSetupPathControls)) == 0, and falls through when v0(=ret(mvpSetupPathControls)) != 0.
  The `beq` branch at 0x404fa4 targets 0x404fb4 and is always taken.
  The return at 0x404fc0 has v0 = one of 0x3, 0x8, 0x13, 0x1a, 0x0.
  The instructions from 0x404a50 to 0x404a54 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x404fac to 0x404fb0 are not reached by any path from the entry, and their branches are not listed.

- `_mvpRealizeNode` in `usr/lib/dmedia/video/debug/mvp.so` at 0x404fc8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x404fc8-0x405488 (1216 bytes).
  It occupies 1216 bytes.
  The `lw` at 0x404ff4 loads 4 bytes from a2 (arg2 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x20, including `lw` at 0x405004, `lw` at 0x40503c.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x18, including `lw` at 0x405020, `lw` at 0x405060.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x1c, including `lw` at 0x405028, `lw` at 0x405070.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0x40504c, `lw` at 0x4050d8.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x405064, `lw` at 0x405074, `lw` at 0x405080.
  The `sw` at 0x405098 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `sw` at 0x4050a4 stores 4 bytes to a3 (arg3 at entry) +0x10.
  The `sw` at 0x4050b0 stores 4 bytes to a3 (arg3 at entry) +0x24.
  The `jalr` at 0x405024 calls mvpGetDefaultNumber with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=[a3+24], a3=[a3+28].
  The `jalr` at 0x4050f4 calls mvpErrPrintf with a0=a0 at entry (arg0), a1=0x414458, a2=?, a3=?.
  The `jalr` at 0x405108 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `bne` branch at 0x405008 targets 0x405038, is taken when t9(=[a3+32]) != at(=0x10000000), and falls through when t9(=[a3+32]) == at(=0x10000000).
  The `beq` branch at 0x405030 targets 0x405044 and is always taken.
  The `blez` branch at 0x405050 targets 0x4050e8, is taken when t4(=[a2+8]) <= 0 (signed), and falls through when t4(=[a2+8]) > 0 (signed).
  The `bne` branch at 0x405068 targets 0x4050bc, is taken when t6(=[a3+24]) != t8(?), and falls through when t6(=[a3+24]) == t8(?).
  The `bne` branch at 0x405078 targets 0x4050bc, is taken when t9(=[a3+28]) != t0(?), and falls through when t9(=[a3+28]) == t0(?).
  The `bne` branch at 0x405088 targets 0x4050bc, is taken when t1(?) != t2(?), and falls through when t1(?) == t2(?).
  The `beq` branch at 0x4050b4 targets 0x40511c and is always taken.
  The `bne` branch at 0x4050e0 targets 0x405058, is taken when t7(?) < t4(=[a2+8]) (signed), and falls through when t7(?) >= t4(=[a2+8]) (signed).
  The `beq` branch at 0x405114 targets 0x40511c and is always taken.
  The return at 0x405124 has v0 = one of ?, ret(exit).
  The instructions from 0x40512c to 0x405484 are not reached by any path from the entry, and their branches are not listed.

- `mvpSetupPaths` in `usr/lib/dmedia/video/debug/mvp.so` at 0x40512c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x40512c-0x405368 (572 bytes).
  It occupies 572 bytes.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0x40515c, `lw` at 0x40516c.
  The `sw` at 0x405160 stores 4 bytes to [a2] +0x50.
  The `sw` at 0x405170 stores 4 bytes to [a2] +0x54.
  16 such `lw` accesses load 4 bytes from ?, including `lw` at 0x405194, `lw` at 0x405198, `lw` at 0x4051dc.
  The `jalr` at 0x4051c0 calls mvpAssertFail with a0=0x41447c, a1=0x4144a8, a2=0x306, a3=?.
  The `jalr` at 0x405208 calls mvpAssertFail with a0=0x4144b0, a1=0x4144c8, a2=0x307, a3=?.
  The `jalr` at 0x4052b0 calls _mvpRealizeNode [0x404fc8] with a0=?, a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x40530c calls mvpSetupPath with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x40517c targets 0x405348, is taken when t2(=a1) <= 0 (signed), and falls through when t2(=a1) > 0 (signed).
  The `beq` branch at 0x40519c targets 0x4051ac, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x4051a4 targets 0x4051cc and is always taken.
  The `beq` branch at 0x4051e4 targets 0x4051f4, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x4051ec targets 0x405214 and is always taken.
  The `blez` branch at 0x405230 targets 0x4052ec, is taken when t0(?) <= 0 (signed), and falls through when t0(?) > 0 (signed).
  The `beq` branch at 0x405264 targets 0x405274, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x40526c targets 0x4052bc and is always taken.
  The `bne` branch at 0x4052e4 targets 0x405238, is taken when t4(?) < t5(?) (signed), and falls through when t4(?) >= t5(?) (signed).
  The `beq` branch at 0x405320 targets 0x405330, is taken when t1(=ret(mvpSetupPath)) == 0, and falls through when t1(=ret(mvpSetupPath)) != 0.
  The `beq` branch at 0x405328 targets 0x405358 and is always taken.
  The `bne` branch at 0x405340 targets 0x405184, is taken when t6(?) < t8(=a1) (signed), and falls through when t6(?) >= t8(=a1) (signed).
  The `beq` branch at 0x405348 targets 0x405358 and is always taken.
  The return at 0x405360 has v0 = one of ret(mvpSetupPath), 0x0.
  The instructions from 0x405350 to 0x405354 are not reached by any path from the entry, and their branches are not listed.

- `mvpBufferInfo` in `usr/lib/dmedia/video/debug/mvp.so` at 0x405368 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x405368-0x405488 (288 bytes).
  It occupies 288 bytes.
  The `lw` at 0x405394 loads 4 bytes from a1 (arg1 at entry) +0x68.
  The `lbu` at 0x4053d0 loads 1 byte from [a1+104] +0x121.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x4, including `sw` at 0x4053e8, `sw` at 0x4053f4.
  The `sw` at 0x405410 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `sw` at 0x40542c stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `sw` at 0x405448 stores 4 bytes to a3 (arg3 at entry) +0x10.
  The `sw` at 0x405454 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `sw` at 0x40545c stores 4 bytes to a3 (arg3 at entry) +0x14.
  The `sw` at 0x405464 stores 4 bytes to a3 (arg3 at entry) +0x18.
  The `jalr` at 0x4053bc calls mvpAssertFail with a0=0x4144d0, a1=0x4144f8, a2=0x322, a3=a3 at entry (arg3).
  The `jalr` at 0x405400 calls mvpBufferAlignment with a0=[a1+104], a1=?, a2=?, a3=?.
  The `jalr` at 0x40541c calls mvpBufferSize with a0=[a1+104], a1=?, a2=?, a3=?.
  The `jalr` at 0x405438 calls mvpPixSize with a0=[a1+104], a1=?, a2=?, a3=?.
  The `beq` branch at 0x405398 targets 0x4053a8, is taken when t7(=[a1+104]) == 0, and falls through when t7(=[a1+104]) != 0.
  The `beq` branch at 0x4053a0 targets 0x4053c8 and is always taken.
  The `bne` branch at 0x4053d4 targets 0x4053ec, is taken when t9(=[[a1+104]+289]:1) != at(=0x3), and falls through when t9(=[[a1+104]+289]:1) == at(=0x3).
  The `beq` branch at 0x4053e4 targets 0x4053f8 and is always taken.
  The `beq` branch at 0x405468 targets 0x405478 and is always taken.
  The return at 0x405480 has v0 = 0x0.
  The instructions from 0x405470 to 0x405474 are not reached by any path from the entry, and their branches are not listed.

- `mvpPrintBufferInfo` in `usr/lib/dmedia/video/debug/mvp.so` at 0x405488 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x405488-0x406738 (4784 bytes).
  It occupies 4784 bytes.
  The `lw` at 0x4054b4 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lw` at 0x4054b8 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0x4054c8 loads 4 bytes from table(0x417900) +0x0.
  The `lw` at 0x4054cc loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x4054d8 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `jalr` at 0x4054e4 calls mvpPrintf with a0=a0 at entry (arg0), a1=0x414510, a2=entry(0x417900), a3=[a1+8].
  The `beq` branch at 0x4054f0 targets 0x4054f8 and is always taken.
  The return at 0x405500 has v0 = ret(mvpPrintf).
  The instructions from 0x405508 to 0x406734 are not reached by any path from the entry, and their branches are not listed.

- `mvpRegisterBuffer` in `usr/lib/dmedia/video/debug/mvp.so` at 0x405508 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x405508-0x405714 (524 bytes).
  It occupies 524 bytes.
  The `lw` at 0x40553c loads 4 bytes from a1 (arg1 at entry) +0x68.
  The `lw` at 0x405584 loads 4 bytes from a3 (arg3 at entry) +0x40.
  The `lw` at 0x4055a8 loads 4 bytes from a3 (arg3 at entry) +0x48.
  The `lw` at 0x4055c8 loads 4 bytes from ?.
  The `jalr` at 0x405564 calls mvpAssertFail with a0=0x414548, a1=0x414570, a2=0x344, a3=a3 at entry (arg3).
  The `jalr` at 0x405594 calls mvpBufferSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4055c4 calls ioctl with a0=?, a1=0x6d767003, a2=sp-20, a3=?.
  The `jalr` at 0x4055dc calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4055f4 calls mvpRevisionError with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405604 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40561c calls strerror with a0=ret(oserror), a1=?, a2=?, a3=?.
  The `jalr` at 0x405648 calls mvpErrPrintf with a0=?, a1=0x414578, a2=?, a3=?.
  The `jalr` at 0x405658 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4056c8 calls mvpPrintf with a0=?, a1=0x41459c, a2=?, a3=?.
  The `jalr` at 0x4056e4 calls mvpPrintBufferInfo [0x405488] with a0=?, a1=a3+8, a2=?, a3=?.
  The `beq` branch at 0x405540 targets 0x405550, is taken when t7(=[a1+104]) == 0, and falls through when t7(=[a1+104]) != 0.
  The `beq` branch at 0x405548 targets 0x405570 and is always taken.
  The `bne` branch at 0x4055d0 targets 0x4056b0, is taken when v0(=ret(ioctl)) != at(=-0x1), and falls through when v0(=ret(ioctl)) == at(=-0x1).
  The `bne` branch at 0x4055e8 targets 0x405600, is taken when v0(=ret(oserror)) != at(=0x7), and falls through when v0(=ret(oserror)) == at(=0x7).
  The `beq` branch at 0x405668 targets 0x4056a0, is taken when s0(=ret(oserror)) == at(=0xc), and falls through when s0(=ret(oserror)) != at(=0xc).
  The `beq` branch at 0x405674 targets 0x405698, is taken when s0(=ret(oserror)) == at(=0x3d), and falls through when s0(=ret(oserror)) != at(=0x3d).
  The `beq` branch at 0x405680 targets 0x405690, is taken when s0(=ret(oserror)) == at(=0x47), and falls through when s0(=ret(oserror)) != at(=0x47).
  The `beq` branch at 0x405688 targets 0x4056a8 and is always taken.
  The `beq` branch at 0x405690 targets 0x405700 and is always taken.
  The `beq` branch at 0x405698 targets 0x405700 and is always taken.
  The `beq` branch at 0x4056a0 targets 0x405700 and is always taken.
  The `beq` branch at 0x4056a8 targets 0x405700 and is always taken.
  The `beq` branch at 0x4056f0 targets 0x405700 and is always taken.
  The return at 0x40570c has v0 = one of 0xa, 0x15, 0x20, 0x11, 0x0.
  The instructions from 0x4056f8 to 0x4056fc are not reached by any path from the entry, and their branches are not listed.

- `mvpDeregisterBuffer` in `usr/lib/dmedia/video/debug/mvp.so` at 0x405714 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x405714-0x40585c (328 bytes).
  It occupies 328 bytes.
  The `lw` at 0x405748 loads 4 bytes from a1 (arg1 at entry) +0x68.
  The `lw` at 0x405790 loads 4 bytes from a3 (arg3 at entry) +0x40.
  The `lw` at 0x4057b0 loads 4 bytes from ?.
  The `jalr` at 0x405770 calls mvpAssertFail with a0=0x4145c0, a1=0x4145e8, a2=0x36b, a3=a3 at entry (arg3).
  The `jalr` at 0x4057ac calls ioctl with a0=?, a1=0x6d767003, a2=sp-20, a3=?.
  The `jalr` at 0x4057c4 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4057dc calls mvpRevisionError with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4057ec calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405804 calls strerror with a0=ret(oserror), a1=?, a2=?, a3=?.
  The `jalr` at 0x405824 calls mvpErrPrintf with a0=?, a1=0x4145f0, a2=ret(strerror), a3=?.
  The `beq` branch at 0x40574c targets 0x40575c, is taken when t7(=[a1+104]) == 0, and falls through when t7(=[a1+104]) != 0.
  The `beq` branch at 0x405754 targets 0x40577c and is always taken.
  The `bne` branch at 0x4057b8 targets 0x405838, is taken when v0(=ret(ioctl)) != at(=-0x1), and falls through when v0(=ret(ioctl)) == at(=-0x1).
  The `bne` branch at 0x4057d0 targets 0x4057e8, is taken when v0(=ret(oserror)) != at(=0x7), and falls through when v0(=ret(oserror)) == at(=0x7).
  The `beq` branch at 0x405830 targets 0x405848 and is always taken.
  The `beq` branch at 0x405838 targets 0x405848 and is always taken.
  The return at 0x405854 has v0 = one of 0x0, 0x11.
  The instructions from 0x405840 to 0x405844 are not reached by any path from the entry, and their branches are not listed.

- `mvpRegisterPool` in `usr/lib/dmedia/video/debug/mvp.so` at 0x40585c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x40585c-0x405c04 (936 bytes).
  It occupies 936 bytes.
  The `lw` at 0x405890 loads 4 bytes from a1 (arg1 at entry) +0x68.
  The `lbu` at 0x4058cc loads 1 byte from ?.
  2 such `lw` accesses load 4 bytes from ret(_dmBufferGetDmsPool) +0xc, including `lw` at 0x405938, `lw` at 0x4059bc.
  2 such `lw` accesses load 4 bytes from ret(_dmBufferGetDmsPool) +0x8, including `lw` at 0x405960, `lw` at 0x4059cc.
  2 such `lw` accesses load 4 bytes from ret(_dmBufferGetDmsPool) +0x4, including `lw` at 0x405970, `lw` at 0x4059dc.
  3 such `lw` accesses load 4 bytes from ret(_dmBufferGetDmsPool) +0x0, including `lw` at 0x405984, `lw` at 0x4059f0, `lw` at 0x405a84.
  The `lw` at 0x405a28 loads 4 bytes from ret(_dmBufferGetDmsPool) +0x18.
  The `lw` at 0x405aa4 loads 4 bytes from ?.
  The `jalr` at 0x4058b8 calls mvpAssertFail with a0=0x414610, a1=0x414638, a2=0x38b, a3=a3 at entry (arg3).
  The `jalr` at 0x4058f4 calls mvpBufferSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40590c calls _dmBufferGetDmsPool with a0=a3 at entry (arg3), a1=?, a2=?, a3=?.
  The `jalr` at 0x40594c calls mvpBufferAlignment with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4059a0 calls mvpBufferAlignment with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4059f8 calls mvpErrPrintf with a0=?, a1=0x414640, a2=0x2, a3=ret(mvpBufferAlignment).
  The `jalr` at 0x405a14 calls mvpRead with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405a40 calls mvpErrPrintf with a0=?, a1=0x4146e4, a2=?, a3=?.
  The `jalr` at 0x405aa0 calls ioctl with a0=?, a1=0x6d767003, a2=sp-20, a3=?.
  The `jalr` at 0x405ab8 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405ad0 calls mvpRevisionError with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405ae0 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405af8 calls strerror with a0=ret(oserror), a1=?, a2=?, a3=?.
  The `jalr` at 0x405b24 calls mvpErrPrintf with a0=?, a1=0x414708, a2=?, a3=?.
  The `jalr` at 0x405b34 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405bb8 calls mvpPrintf with a0=?, a1=0x41472c, a2=?, a3=?.
  The `jalr` at 0x405bd4 calls mvpPrintBufferInfo [0x405488] with a0=?, a1=ret(_dmBufferGetDmsPool), a2=?, a3=?.
  The `beq` branch at 0x405894 targets 0x4058a4, is taken when t7(=[a1+104]) == 0, and falls through when t7(=[a1+104]) != 0.
  The `beq` branch at 0x40589c targets 0x4058c4 and is always taken.
  The `bne` branch at 0x4058d0 targets 0x4058e4, is taken when t9(?) != at(=0x3), and falls through when t9(?) == at(=0x3).
  The `beq` branch at 0x4058dc targets 0x4058ec and is always taken.
  The `bne` branch at 0x405920 targets 0x405930, is taken when t2(=ret(_dmBufferGetDmsPool)) != 0, and falls through when t2(=ret(_dmBufferGetDmsPool)) == 0.
  The `beq` branch at 0x405928 targets 0x405bf0 and is always taken.
  The `bne` branch at 0x40593c targets 0x405998, is taken when t4(=[ret(_dmBufferGetDmsPool)+12]) != at(=0x2), and falls through when t4(=[ret(_dmBufferGetDmsPool)+12]) == at(=0x2).
  The `bne` branch at 0x405968 targets 0x405998, is taken when (t5(=ret(mvpBufferAlignment)-1) & t7(=[ret(_dmBufferGetDmsPool)+8])) != 0, and falls through when (t5(=ret(mvpBufferAlignment)-1) & t7(=[ret(_dmBufferGetDmsPool)+8])) == 0.
  The `bne` branch at 0x40597c targets 0x405998, is taken when t9(=[ret(_dmBufferGetDmsPool)+4]) < t0(=ret(mvpBufferSize)) (signed), and falls through when t9(=[ret(_dmBufferGetDmsPool)+4]) >= t0(=ret(mvpBufferSize)) (signed).
  The `beq` branch at 0x405990 targets 0x405a0c, is taken when t1(=[ret(_dmBufferGetDmsPool)]) >= t2(=one of 0x3, 0x4) (signed), and falls through when t1(=[ret(_dmBufferGetDmsPool)]) < t2(=one of 0x3, 0x4) (signed).
  The `beq` branch at 0x405a04 targets 0x405bf0 and is always taken.
  The `beq` branch at 0x405a1c targets 0x405a5c, is taken when v0(=ret(mvpRead)) == 0, and falls through when v0(=ret(mvpRead)) != 0.
  The `bne` branch at 0x405a2c targets 0x405a54, is taken when t1(=[ret(_dmBufferGetDmsPool)+24]) != 0, and falls through when t1(=[ret(_dmBufferGetDmsPool)+24]) == 0.
  The `beq` branch at 0x405a4c targets 0x405bf0 and is always taken.
  The `beq` branch at 0x405a54 targets 0x405a60 and is always taken.
  The `bne` branch at 0x405aac targets 0x405ba0, is taken when v0(=ret(ioctl)) != at(=-0x1), and falls through when v0(=ret(ioctl)) == at(=-0x1).
  The `bne` branch at 0x405ac4 targets 0x405adc, is taken when v0(=ret(oserror)) != at(=0x7), and falls through when v0(=ret(oserror)) == at(=0x7).
  The `beq` branch at 0x405b44 targets 0x405b90, is taken when s0(=ret(oserror)) == at(=0xc), and falls through when s0(=ret(oserror)) != at(=0xc).
  The `beq` branch at 0x405b50 targets 0x405b80, is taken when s0(=ret(oserror)) == at(=0xd), and falls through when s0(=ret(oserror)) != at(=0xd).
  The `beq` branch at 0x405b5c targets 0x405b88, is taken when s0(=ret(oserror)) == at(=0x3d), and falls through when s0(=ret(oserror)) != at(=0x3d).
  The `beq` branch at 0x405b68 targets 0x405b78, is taken when s0(=ret(oserror)) == at(=0x47), and falls through when s0(=ret(oserror)) != at(=0x47).
  The `beq` branch at 0x405b70 targets 0x405b98 and is always taken.
  The `beq` branch at 0x405b78 targets 0x405bf0 and is always taken.
  The `beq` branch at 0x405b80 targets 0x405bf0 and is always taken.
  The `beq` branch at 0x405b88 targets 0x405bf0 and is always taken.
  The `beq` branch at 0x405b90 targets 0x405bf0 and is always taken.
  The `beq` branch at 0x405b98 targets 0x405bf0 and is always taken.
  The `beq` branch at 0x405be0 targets 0x405bf0 and is always taken.
  The return at 0x405bfc has v0 = one of 0x15, 0xa, 0x20, 0x11, 0x0.
  The instructions from 0x405be8 to 0x405bec are not reached by any path from the entry, and their branches are not listed.

- `mvpDeregisterPool` in `usr/lib/dmedia/video/debug/mvp.so` at 0x405c04 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x405c04-0x405d78 (372 bytes).
  It occupies 372 bytes.
  The `lw` at 0x405c38 loads 4 bytes from a1 (arg1 at entry) +0x68.
  The `lw` at 0x405cac loads 4 bytes from ret(_dmBufferGetDmsPool) +0x18.
  The `lw` at 0x405ccc loads 4 bytes from ?.
  The `jalr` at 0x405c60 calls mvpAssertFail with a0=0x414748, a1=0x414770, a2=0x3d7, a3=a3 at entry (arg3).
  The `jalr` at 0x405c74 calls _dmBufferGetDmsPool with a0=a3 at entry (arg3), a1=?, a2=?, a3=?.
  The `jalr` at 0x405cc8 calls ioctl with a0=?, a1=0x6d767003, a2=sp-20, a3=?.
  The `jalr` at 0x405ce0 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405cf8 calls mvpRevisionError with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405d08 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405d20 calls strerror with a0=ret(oserror), a1=?, a2=?, a3=?.
  The `jalr` at 0x405d40 calls mvpErrPrintf with a0=?, a1=0x414778, a2=ret(strerror), a3=?.
  The `beq` branch at 0x405c3c targets 0x405c4c, is taken when t7(=[a1+104]) == 0, and falls through when t7(=[a1+104]) != 0.
  The `beq` branch at 0x405c44 targets 0x405c6c and is always taken.
  The `bne` branch at 0x405c88 targets 0x405c98, is taken when t8(=ret(_dmBufferGetDmsPool)) != 0, and falls through when t8(=ret(_dmBufferGetDmsPool)) == 0.
  The `beq` branch at 0x405c90 targets 0x405d64 and is always taken.
  The `bne` branch at 0x405cd4 targets 0x405d54, is taken when v0(=ret(ioctl)) != at(=-0x1), and falls through when v0(=ret(ioctl)) == at(=-0x1).
  The `bne` branch at 0x405cec targets 0x405d04, is taken when v0(=ret(oserror)) != at(=0x7), and falls through when v0(=ret(oserror)) == at(=0x7).
  The `beq` branch at 0x405d4c targets 0x405d64 and is always taken.
  The `beq` branch at 0x405d54 targets 0x405d64 and is always taken.
  The return at 0x405d70 has v0 = one of 0x0, 0x11, 0x15.
  The instructions from 0x405d5c to 0x405d60 are not reached by any path from the entry, and their branches are not listed.

- `mvpTransferMode` in `usr/lib/dmedia/video/debug/mvp.so` at 0x405d78 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x405d78-0x405de8 (112 bytes).
  It occupies 112 bytes.
  The `beq` branch at 0x405d90 targets 0x405db8, is taken when a1(=a0) == at(=0x65), and falls through when a1(=a0) != at(=0x65).
  The `beq` branch at 0x405d9c targets 0x405dc0, is taken when a1(=a0) == at(=0x66), and falls through when a1(=a0) != at(=0x66).
  The `beq` branch at 0x405da8 targets 0x405dc8, is taken when a1(=a0) == at(=0x67), and falls through when a1(=a0) != at(=0x67).
  The `beq` branch at 0x405db0 targets 0x405dd0 and is always taken.
  The `beq` branch at 0x405db8 targets 0x405de0 and is always taken.
  The `beq` branch at 0x405dc0 targets 0x405de0 and is always taken.
  The `beq` branch at 0x405dc8 targets 0x405de0 and is always taken.
  The `beq` branch at 0x405dd0 targets 0x405de0 and is always taken.
  The return at 0x405de0 has v0 = one of -0x1, 0x65, 0x66, 0x67.
  The instructions from 0x405dd8 to 0x405ddc are not reached by any path from the entry, and their branches are not listed.

- `mvpBeginTransfer` in `usr/lib/dmedia/video/debug/mvp.so` at 0x405de8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x405de8-0x4063c4 (1500 bytes).
  It occupies 1500 bytes.
  The `lw` at 0x405e1c loads 4 bytes from a1 (arg1 at entry) +0x68.
  16 such `lw` accesses load 4 bytes from ?, including `lw` at 0x405e54, `lw` at 0x405f8c, `lw` at 0x405fbc.
  10 such `sw` accesses store 4 bytes to ?, including `sw` at 0x405fa0, `sw` at 0x405ffc, `sw` at 0x406018.
  2 such `lh` accesses load 2 bytes from ?, including `lh` at 0x406024, `lh` at 0x406034.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x406028, `sh` at 0x406038.
  The `lbu` at 0x4060bc loads 1 byte from ?.
  The `jalr` at 0x405e44 calls mvpAssertFail with a0=0x414794, a1=0x4147b8, a2=0x403, a3=a3 at entry (arg3).
  The `jalr` at 0x405ea0 calls mvpAssertFail with a0=0x4147c0, a1=0x4147cc, a2=0x40c, a3=?.
  The `jalr` at 0x405f24 calls mvpAssertFail with a0=0x4147d4, a1=0x4147d8, a2=0x41a, a3=?.
  The `jalr` at 0x405f5c calls mvpAssertFail with a0=0x4147e0, a1=0x414804, a2=0x41b, a3=?.
  The `jalr` at 0x405f88 calls mvpTransferMode with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405fb8 calls mvpErrPrintf with a0=?, a1=0x41480c, a2=?, a3=?.
  The `jalr` at 0x405fe8 calls mvpFromVLEventMask with a0=0x4000, a1=?, a2=?, a3=?.
  The `jalr` at 0x406008 calls mvpFromVLEventMask with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40608c calls mvpErrPrintf with a0=?, a1=0x414828, a2=?, a3=?.
  The `jalr` at 0x406140 calls mvpPrintf with a0=?, a1=0x4148ac, a2=?, a3=?.
  The `jalr` at 0x4061b0 calls mvpPrintf with a0=?, a1=0x41490c, a2=?, a3=?.
  The `jalr` at 0x40620c calls mvpSendPathControls with a0=?, a1=0x1, a2=0x0, a3=?.
  The `jalr` at 0x406220 calls mvpBufferSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406268 calls mvpPrintf with a0=?, a1=0x414980, a2=?, a3=?.
  The `jalr` at 0x406288 calls ioctl with a0=?, a1=0x6d767004, a2=sp-504, a3=?.
  The `jalr` at 0x4062a0 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4062b8 calls mvpRevisionError with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4062c8 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4062e0 calls strerror with a0=ret(oserror), a1=?, a2=?, a3=?.
  The `jalr` at 0x406300 calls mvpErrPrintf with a0=?, a1=0x4149a8, a2=ret(strerror), a3=?.
  The `jalr` at 0x406310 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x405e20 targets 0x405e30, is taken when t7(=[a1+104]) == 0, and falls through when t7(=[a1+104]) != 0.
  The `beq` branch at 0x405e28 targets 0x405e50 and is always taken.
  The `beq` branch at 0x405e5c targets 0x405e6c, is taken when (t9(?) & 0x200) == 0, and falls through when (t9(?) & 0x200) != 0.
  The `beq` branch at 0x405e64 targets 0x4063b0 and is always taken.
  The `bne` branch at 0x405e70 targets 0x405ef8, is taken when t1(=a2) != 0, and falls through when t1(=a2) == 0.
  The `bne` branch at 0x405e7c targets 0x405e8c, is taken when t2(=a3) != 0, and falls through when t2(=a3) == 0.
  The `beq` branch at 0x405e84 targets 0x405eac and is always taken.
  The `beq` branch at 0x405ef0 targets 0x406200 and is always taken.
  The `beq` branch at 0x405f00 targets 0x405f10, is taken when t3(=a3) == 0, and falls through when t3(=a3) != 0.
  The `beq` branch at 0x405f08 targets 0x405f30 and is always taken.
  The `beq` branch at 0x405f38 targets 0x405f48, is taken when t4(=a2) >= 0x15 (signed), and falls through when t4(=a2) < 0x15 (signed).
  The `beq` branch at 0x405f40 targets 0x405f68 and is always taken.
  The `blez` branch at 0x405f78 targets 0x406200, is taken when t5(=a2) <= 0 (signed), and falls through when t5(=a2) > 0 (signed).
  The `bgez` branch at 0x405f9c targets 0x405fcc, is taken when s0(=ret(mvpTransferMode)) >= 0 (signed), and falls through when s0(=ret(mvpTransferMode)) < 0 (signed).
  The `beq` branch at 0x405fc4 targets 0x4063b0 and is always taken.
  The `bne` branch at 0x405fd8 targets 0x406000, is taken when t2(?) != at(=0x10), and falls through when t2(?) == at(=0x10).
  The `beq` branch at 0x405ff8 targets 0x40601c and is always taken.
  The `beq` branch at 0x40606c targets 0x4060a0, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x406078 targets 0x4060a0, is taken when t0(?) == at(=0x10000), and falls through when t0(?) != at(=0x10000).
  The `beq` branch at 0x406098 targets 0x4063b0 and is always taken.
  The `bne` branch at 0x4060ac targets 0x406100, is taken when t2(?) != at(=0x66), and falls through when t2(?) == at(=0x66).
  The `bne` branch at 0x4060c0 targets 0x406100, is taken when t4(?) != at(=0x3), and falls through when t4(?) == at(=0x3).
  The `beq` branch at 0x4060c8 targets 0x406100 and is always taken.
  The `bne` branch at 0x406108 targets 0x406128, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `bne` branch at 0x406118 targets 0x406128, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x406120 targets 0x406168, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x406174 targets 0x4061d8, is taken when t5(?) != at(=0x65), and falls through when t5(?) == at(=0x65).
  The `bne` branch at 0x406184 targets 0x4061d8, is taken when t2(?) < 0x2 (signed), and falls through when t2(?) >= 0x2 (signed).
  The `bne` branch at 0x406190 targets 0x4061d8 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x4061d0 targets 0x406200 and is always taken.
  The `bgtz` branch at 0x4061f8 targets 0x405f80, is taken when t5(?) > 0 (signed), and falls through when t5(?) <= 0 (signed).
  The `bne` branch at 0x406294 targets 0x406390, is taken when v0(=ret(ioctl)) != at(=-0x1), and falls through when v0(=ret(ioctl)) == at(=-0x1).
  The `bne` branch at 0x4062ac targets 0x4062c4, is taken when v0(=ret(oserror)) != at(=0x7), and falls through when v0(=ret(oserror)) == at(=0x7).
  The `beq` branch at 0x406320 targets 0x406360, is taken when s0(=ret(oserror)) == at(=0x6), and falls through when s0(=ret(oserror)) != at(=0x6).
  The `beq` branch at 0x40632c targets 0x406380, is taken when s0(=ret(oserror)) == at(=0xd), and falls through when s0(=ret(oserror)) != at(=0xd).
  The `beq` branch at 0x406338 targets 0x406370, is taken when s0(=ret(oserror)) == at(=0x10), and falls through when s0(=ret(oserror)) != at(=0x10).
  The `beq` branch at 0x406344 targets 0x406378, is taken when s0(=ret(oserror)) == at(=0x13), and falls through when s0(=ret(oserror)) != at(=0x13).
  The `beq` branch at 0x406350 targets 0x406368, is taken when s0(=ret(oserror)) == at(=0x47), and falls through when s0(=ret(oserror)) != at(=0x47).
  The `beq` branch at 0x406358 targets 0x406388 and is always taken.
  The `beq` branch at 0x406360 targets 0x4063b0 and is always taken.
  The `beq` branch at 0x406368 targets 0x4063b0 and is always taken.
  The `beq` branch at 0x406370 targets 0x4063b0 and is always taken.
  The `beq` branch at 0x406378 targets 0x4063b0 and is always taken.
  The `beq` branch at 0x406380 targets 0x4063b0 and is always taken.
  The `beq` branch at 0x406388 targets 0x4063b0 and is always taken.
  The `beq` branch at 0x4063a0 targets 0x4063b0 and is always taken.
  The return at 0x4063bc has v0 = one of 0x3, 0x2, 0x6, 0xa, 0x13, 0x15, 0x11, 0x0.
  The instructions from 0x4060d0 to 0x4060fc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x4063a8 to 0x4063ac are not reached by any path from the entry, and their branches are not listed.

- `mvpEndTransfer` in `usr/lib/dmedia/video/debug/mvp.so` at 0x4063c4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x4063c4-0x406524 (352 bytes).
  It occupies 352 bytes.
  The `lw` at 0x4063f0 loads 4 bytes from a1 (arg1 at entry) +0x68.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x406464, `lw` at 0x4064f4.
  The `sw` at 0x4064fc stores 4 bytes to ?.
  The `jalr` at 0x406418 calls mvpAssertFail with a0=0x4149c0, a1=0x4149e8, a2=0x483, a3=a3 at entry (arg3).
  The `jalr` at 0x406440 calls mvpPrintf with a0=?, a1=0x4149f0, a2=?, a3=?.
  The `jalr` at 0x406460 calls ioctl with a0=?, a1=0x6d767004, a2=sp-504, a3=?.
  The `jalr` at 0x406478 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406490 calls mvpRevisionError with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4064a0 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4064b8 calls strerror with a0=ret(oserror), a1=?, a2=?, a3=?.
  The `jalr` at 0x4064d8 calls mvpErrPrintf with a0=?, a1=0x414a00, a2=ret(strerror), a3=?.
  The `beq` branch at 0x4063f4 targets 0x406404, is taken when t7(=[a1+104]) == 0, and falls through when t7(=[a1+104]) != 0.
  The `beq` branch at 0x4063fc targets 0x406424 and is always taken.
  The `bne` branch at 0x40646c targets 0x4064ec, is taken when v0(=ret(ioctl)) != at(=-0x1), and falls through when v0(=ret(ioctl)) == at(=-0x1).
  The `bne` branch at 0x406484 targets 0x40649c, is taken when v0(=ret(oserror)) != at(=0x7), and falls through when v0(=ret(oserror)) == at(=0x7).
  The `beq` branch at 0x4064e4 targets 0x406510 and is always taken.
  The `beq` branch at 0x406500 targets 0x406510 and is always taken.
  The return at 0x40651c has v0 = one of 0x0, 0x11.
  The instructions from 0x406508 to 0x40650c are not reached by any path from the entry, and their branches are not listed.

- `mvpGetStatus` in `usr/lib/dmedia/video/debug/mvp.so` at 0x406524 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x406524-0x406634 (272 bytes).
  It occupies 272 bytes.
  The `sh` at 0x40657c stores 2 bytes to a1 (arg1 at entry) +0x0.
  The `sh` at 0x406588 stores 2 bytes to a1 (arg1 at entry) +0x2.
  The `sw` at 0x406594 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `lw` at 0x4065b0 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jalr` at 0x40656c calls mvpAssertFail with a0=0x414a18, a1=0x414a20, a2=0x4bd, a3=a3 at entry (arg3).
  The `jalr` at 0x4065ac calls ioctl with a0=[a0+40], a1=0x6d767001, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0x4065cc calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4065e4 calls mvpRevisionError with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406600 calls mvpPerror [0x403844] with a0=a0 at entry (arg0), a1=0x414a28, a2=?, a3=?.
  The `beq` branch at 0x406548 targets 0x406558, is taken when t6(=a0) == 0, and falls through when t6(=a0) != 0.
  The `beq` branch at 0x406550 targets 0x406578 and is always taken.
  The `bgez` branch at 0x4065c0 targets 0x406614, is taken when t3(=ret(ioctl)) >= 0 (signed), and falls through when t3(=ret(ioctl)) < 0 (signed).
  The `bne` branch at 0x4065d8 targets 0x4065f0, is taken when v0(=ret(oserror)) != at(=0x7), and falls through when v0(=ret(oserror)) == at(=0x7).
  The `beq` branch at 0x40660c targets 0x406624 and is always taken.
  The `beq` branch at 0x406614 targets 0x406624 and is always taken.
  The return at 0x40662c has v0 = one of ret(ioctl), 0x0.
  The instructions from 0x40661c to 0x406620 are not reached by any path from the entry, and their branches are not listed.

- `mvpCheckStatus` in `usr/lib/dmedia/video/debug/mvp.so` at 0x406634 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x406634-0x406738 (260 bytes).
  It occupies 260 bytes.
  The `jalr` at 0x406680 calls mvpAssertFail with a0=0x414a48, a1=0x414a50, a2=0x4d6, a3=a3 at entry (arg3).
  The `jalr` at 0x4066b0 calls mvpPrintf with a0=a0 at entry (arg0), a1=0x414a58, a2=a1 at entry (arg1), a3=0x1.
  The `jalr` at 0x4066d0 calls mvpGetStatus with a0=a0 at entry (arg0), a1=sp-32, a2=?, a3=?.
  The `jalr` at 0x406704 calls mvpPrintf with a0=a0 at entry (arg0), a1=0x414aac, a2=?, a3=?.
  The `beq` branch at 0x40665c targets 0x40666c, is taken when t6(=a0) == 0, and falls through when t6(=a0) != 0.
  The `beq` branch at 0x406664 targets 0x40668c and is always taken.
  The `beq` branch at 0x406694 targets 0x4066c4, is taken when t7(=a1) == at(=0x1), and falls through when t7(=a1) != at(=0x1).
  The `bne` branch at 0x4066d8 targets 0x406718, is taken when v0(=ret(mvpGetStatus)) != 0, and falls through when v0(=ret(mvpGetStatus)) == 0.
  The `beq` branch at 0x4066e8 targets 0x406718, is taken when t9(?) == t0(?), and falls through when t9(?) != t0(?).
  The `beq` branch at 0x406718 targets 0x406728 and is always taken.
  The return at 0x406730 has v0 = one of 0x0, 0x47.
  The instructions from 0x406720 to 0x406724 are not reached by any path from the entry, and their branches are not listed.

- `mvpCharStatus` in `usr/lib/dmedia/video/debug/mvp.so` at 0x406738 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x406738-0x4068c0 (392 bytes).
  It occupies 392 bytes.
  The `beq` branch at 0x406748 targets 0x40675c, is taken when (a0 & 0x8) == 0, and falls through when (a0 & 0x8) != 0.
  The `beq` branch at 0x406760 targets 0x406774, is taken when (a0 & 0x4) == 0, and falls through when (a0 & 0x4) != 0.
  The `beq` branch at 0x406778 targets 0x40678c, is taken when (a0 & 0x2) == 0, and falls through when (a0 & 0x2) != 0.
  The `beq` branch at 0x406790 targets 0x4067a4, is taken when (a0 & 0x1) == 0, and falls through when (a0 & 0x1) != 0.
  The return at 0x406754 has v0 = 0x414ae8.
  The return at 0x40676c has v0 = 0x414af4.
  The return at 0x406784 has v0 = 0x414afc.
  The return at 0x40679c has v0 = 0x414b08.
  The return at 0x4067a8 has v0 = 0x414b10.
  The instructions from 0x4067b0 to 0x4068bc are not reached by any path from the entry, and their branches are not listed.

- `mvpShowStatus` in `usr/lib/dmedia/video/debug/mvp.so` at 0x4067c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x4067c0-0x406860 (160 bytes).
  It occupies 160 bytes.
  The `jalr` at 0x406804 calls mvpAssertFail with a0=0x414b18, a1=0x414b20, a2=0x4ff, a3=a3 at entry (arg3).
  The `jalr` at 0x40681c calls mvpGetStatus with a0=a0 at entry (arg0), a1=sp-32, a2=?, a3=?.
  The `jalr` at 0x40683c calls printf with a0=0x414b28, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4067e0 targets 0x4067f0, is taken when t6(=a0) == 0, and falls through when t6(=a0) != 0.
  The `beq` branch at 0x4067e8 targets 0x406810 and is always taken.
  The `bne` branch at 0x406824 targets 0x406848, is taken when v0(=ret(mvpGetStatus)) != 0, and falls through when v0(=ret(mvpGetStatus)) == 0.
  The `beq` branch at 0x406848 targets 0x406850 and is always taken.
  The return at 0x406858 has v0 = ?.

- `mvpfromvltiming` in `usr/lib/dmedia/video/debug/mvp.so` at 0x4068c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x4068c0-0x406b90 (720 bytes).
  It occupies 720 bytes.
  The `lbu` at 0x4068e8 loads 1 byte from a0 (arg0 at entry) +0x49.
  The `lbu` at 0x4068fc loads 1 byte from ?.
  The `lw` at 0x406938 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `lbu` at 0x40693c loads 1 byte from [a0+280] +0x125.
  The `lw` at 0x406a3c loads 4 bytes from table(0x4152b4) +0x0.
  The `jalr` at 0x406b60 calls mvpPrintf with a0=a0 at entry (arg0), a1=0x414b70, a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x406914 targets 0x406930, is taken when s0(?) == at(=0x1), and falls through when s0(?) != at(=0x1).
  The `beq` branch at 0x406920 targets 0x40697c, is taken when s0(?) == at(=0x9), and falls through when s0(?) != at(=0x9).
  The `beq` branch at 0x406928 targets 0x4069fc and is always taken.
  The `bne` branch at 0x406940 targets 0x406950, is taken when t4(=[[a0+280]+293]:1) != at(=0x1), and falls through when t4(=[[a0+280]+293]:1) == at(=0x1).
  The `beq` branch at 0x406948 targets 0x406950 and is always taken.
  The `bne` branch at 0x406954 targets 0x406974, is taken when t5(=a1) != 0, and falls through when t5(=a1) == 0.
  The `beq` branch at 0x40695c targets 0x406964 and is always taken.
  The `beq` branch at 0x40696c targets 0x406974 and is always taken.
  The `beq` branch at 0x406974 targets 0x406b44 and is always taken.
  The `beq` branch at 0x406980 targets 0x4069b4, is taken when s0(=a1) == 0, and falls through when s0(=a1) != 0.
  The `beq` branch at 0x40698c targets 0x4069c4, is taken when s0(=a1) == at(=0x1), and falls through when s0(=a1) != at(=0x1).
  The `beq` branch at 0x406998 targets 0x4069d4, is taken when s0(=a1) == at(=0x2), and falls through when s0(=a1) != at(=0x2).
  The `beq` branch at 0x4069a4 targets 0x4069e4, is taken when s0(=a1) == at(=0x3), and falls through when s0(=a1) != at(=0x3).
  The `beq` branch at 0x4069ac targets 0x4069f4 and is always taken.
  The `beq` branch at 0x4069bc targets 0x4069f4 and is always taken.
  The `beq` branch at 0x4069cc targets 0x4069f4 and is always taken.
  The `beq` branch at 0x4069dc targets 0x4069f4 and is always taken.
  The `beq` branch at 0x4069ec targets 0x4069f4 and is always taken.
  The `beq` branch at 0x4069f4 targets 0x406b44 and is always taken.
  The `bne` branch at 0x406a04 targets 0x406a60, is taken when s0(=a1) < 0x3 (signed), and falls through when s0(=a1) >= 0x3 (signed).
  The `bne` branch at 0x406a10 targets 0x406a4c, is taken when s0(=a1) < 0x4 (signed), and falls through when s0(=a1) >= 0x4 (signed).
  The `beq` branch at 0x406a28 targets 0x406b44, is taken when t1(=a1+0xffffffffb2a9fff2) >= 0x8 (unsigned), and falls through when t1(=a1+0xffffffffb2a9fff2) < 0x8 (unsigned).
  The `beq` branch at 0x406a50 targets 0x406a98, is taken when s0(=a1) == at(=0x3), and falls through when s0(=a1) != at(=0x3).
  The `beq` branch at 0x406a58 targets 0x406b44 and is always taken.
  The `beq` branch at 0x406a60 targets 0x406aa8, is taken when s0(=a1) == 0, and falls through when s0(=a1) != 0.
  The `beq` branch at 0x406a6c targets 0x406ab4, is taken when s0(=a1) == at(=0x1), and falls through when s0(=a1) != at(=0x1).
  The `beq` branch at 0x406a78 targets 0x406a88, is taken when s0(=a1) == at(=0x2), and falls through when s0(=a1) != at(=0x2).
  The `beq` branch at 0x406a80 targets 0x406b44 and is always taken.
  The `beq` branch at 0x406a90 targets 0x406b44 and is always taken.
  The `beq` branch at 0x406aa0 targets 0x406b44 and is always taken.
  The `beq` branch at 0x406aac targets 0x406b44 and is always taken.
  The `beq` branch at 0x406abc targets 0x406b44 and is always taken.
  The `beq` branch at 0x406acc targets 0x406b44 and is always taken.
  The `beq` branch at 0x406adc targets 0x406b44 and is always taken.
  The `beq` branch at 0x406aec targets 0x406b44 and is always taken.
  The `beq` branch at 0x406afc targets 0x406b44 and is always taken.
  The `beq` branch at 0x406b0c targets 0x406b44 and is always taken.
  The `beq` branch at 0x406b1c targets 0x406b44 and is always taken.
  The `beq` branch at 0x406b2c targets 0x406b44 and is always taken.
  The `beq` branch at 0x406b3c targets 0x406b44 and is always taken.
  The `beq` branch at 0x406b6c targets 0x406b7c and is always taken.
  The return at 0x406b88 has v0 = ?.
  The instructions from 0x406b74 to 0x406b78 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x406a44 uses the jump table at 0x4152b4 with targets 0x406ac4, 0x406ad4, 0x406ae4, 0x406af4, 0x406b04, 0x406b14, 0x406b24, 0x406b34.

- `mvpSetFields` in `usr/lib/dmedia/video/debug/mvp.so` at 0x406b90 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x406b90-0x406c4c (188 bytes).
  It occupies 188 bytes.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x121, including `lbu` at 0x406bb4, `lbu` at 0x406c18.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x122, including `sb` at 0x406bcc, `sb` at 0x406bd4.
  The `lbu` at 0x406be0 loads 1 byte from a0 (arg0 at entry) +0x128.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x129, including `sb` at 0x406bf8, `sb` at 0x406c04.
  The `lbu` at 0x406c14 loads 1 byte from a0 (arg0 at entry) +0x129.
  The `lbu` at 0x406c1c loads 1 byte from a0 (arg0 at entry) +0x122.
  The `jalr` at 0x406c28 calls mvpPrintf with a0=a0 at entry (arg0), a1=0x414b90, a2=[a0+289]:1, a3=[a0+290]:1.
  The `bne` branch at 0x406bb8 targets 0x406bd0, is taken when t7(=[a0+289]:1) != at(=0x1), and falls through when t7(=[a0+289]:1) == at(=0x1).
  The `beq` branch at 0x406bc8 targets 0x406bd8 and is always taken.
  The `bne` branch at 0x406be8 targets 0x406bfc, is taken when t3(?) != at(=0x1), and falls through when t3(?) == at(=0x1).
  The `beq` branch at 0x406bf4 targets 0x406c08 and is always taken.
  The `beq` branch at 0x406c34 targets 0x406c3c and is always taken.
  The return at 0x406c44 has v0 = ret(mvpPrintf).

- `mvpSetTiming` in `usr/lib/dmedia/video/debug/mvp.so` at 0x406d98 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x406d98-0x4074a4 (1804 bytes).
  It occupies 1804 bytes.
  The `sb` at 0x406de8 stores 1 byte to a0 (arg0 at entry) +0x128.
  4 such `lh` accesses load 2 bytes from ?, including `lh` at 0x406e28, `lh` at 0x406e34, `lh` at 0x406f5c.
  The `lbu` at 0x406e5c loads 1 byte from a0 (arg0 at entry) +0x157.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x132, including `sh` at 0x406e90, `sh` at 0x406f30.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x134, including `sh` at 0x406e98, `sh` at 0x406f48.
  3 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x13a, including `sh` at 0x406eb8, `sh` at 0x406ec4, `sh` at 0x406f60.
  3 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x13c, including `sh` at 0x406ee4, `sh` at 0x406ef0, `sh` at 0x406f78.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x13e, including `sh` at 0x406ef8, `sh` at 0x406f38.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x140, including `sh` at 0x406f00, `sh` at 0x406f50.
  The `lh` at 0x406f08 loads 2 bytes from a0 (arg0 at entry) +0x13a.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x142, including `sh` at 0x406f0c, `sh` at 0x406f68.
  The `lh` at 0x406f14 loads 2 bytes from a0 (arg0 at entry) +0x13c.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x144, including `sh` at 0x406f18, `sh` at 0x406f80.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x406f2c, `lbu` at 0x406f44, `lbu` at 0x406ffc.
  The `sh` at 0x406f88 stores 2 bytes to a0 (arg0 at entry) +0x136.
  The `sh` at 0x406f90 stores 2 bytes to a0 (arg0 at entry) +0x138.
  The `sb` at 0x406f98 stores 1 byte to a0 (arg0 at entry) +0x12b.
  The `sb` at 0x406fa0 stores 1 byte to a0 (arg0 at entry) +0x12c.
  The `sh` at 0x406fac stores 2 bytes to a0 (arg0 at entry) +0x14e.
  The `sh` at 0x406fb8 stores 2 bytes to a0 (arg0 at entry) +0x150.
  The `sh` at 0x406fc4 stores 2 bytes to a0 (arg0 at entry) +0x152.
  The `sh` at 0x406fd0 stores 2 bytes to a0 (arg0 at entry) +0x154.
  The `sh` at 0x406fdc stores 2 bytes to a0 (arg0 at entry) +0x146.
  The `sh` at 0x406fe8 stores 2 bytes to a0 (arg0 at entry) +0x148.
  The `sb` at 0x406ff0 stores 1 byte to a0 (arg0 at entry) +0x12d.
  The `sh` at 0x407000 stores 2 bytes to a0 (arg0 at entry) +0x14a.
  The `sh` at 0x40700c stores 2 bytes to a0 (arg0 at entry) +0x14c.
  The `jalr` at 0x406dfc calls mvpPrintf with a0=a0 at entry (arg0), a1=0x414bec, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jalr` at 0x406e10 calls mvpRead with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x406e4c calls mvpGetCFI [0x406d34] with a0=a0 at entry (arg0), a1=sp-152, a2=?, a3=?.
  The `jalr` at 0x40701c calls mvpSetFields [0x406b90] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0x406e1c targets 0x406f24, is taken when v0(=ret(mvpRead)) != at(=0x2), and falls through when v0(=ret(mvpRead)) == at(=0x2).
  The `beq` branch at 0x406e60 targets 0x406e8c, is taken when t7(=[a0+343]:1) == 0, and falls through when t7(=[a0+343]:1) != 0.
  The `bgez` branch at 0x406e6c targets 0x406e7c, is taken when t8(?) >= 0 (signed), and falls through when t8(?) < 0 (signed).
  The `bne` branch at 0x406ea8 targets 0x406ebc, is taken when t5(?) < t4(?) (signed), and falls through when t5(?) >= t4(?) (signed).
  The `beq` branch at 0x406eb4 targets 0x406ec8 and is always taken.
  The `bne` branch at 0x406ed4 targets 0x406ee8, is taken when t0(?) < t9(?) (signed), and falls through when t0(?) >= t9(?) (signed).
  The `beq` branch at 0x406ee0 targets 0x406ef4 and is always taken.
  The `beq` branch at 0x406f1c targets 0x406f84 and is always taken.
  The `beq` branch at 0x407028 targets 0x407030 and is always taken.
  The return at 0x40703c has v0 = ret(mvpSetFields).
  The instructions from 0x407044 to 0x4074a0 are not reached by any path from the entry, and their branches are not listed.

- `mvpSetScale` in `usr/lib/dmedia/video/debug/mvp.so` at 0x4070a4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x4070a4-0x4073cc (808 bytes).
  It occupies 808 bytes.
  The `lw` at 0x407358 loads 4 bytes from sym(mvpregtrace) +0x0.
  The `jalr` at 0x407388 calls mvpPrintf with a0=a0 at entry (arg0), a1=0x414bfc, a2=?, a3=?.
  The `bne` branch at 0x4070d8 targets 0x4070e8, is taken when t6(=a1) != t7(=a2), and falls through when t6(=a1) == t7(=a2).
  The `beq` branch at 0x4070e0 targets 0x4073bc and is always taken.
  The `beq` branch at 0x4070ec targets 0x407124, is taken when t8(=a3) == 0, and falls through when t8(=a3) != 0.
  The `bgez` branch at 0x4070f8 targets 0x407108, is taken when t9(=a1) >= 0 (signed), and falls through when t9(=a1) < 0 (signed).
  The `bgez` branch at 0x407110 targets 0x407120, is taken when t1(=a2) >= 0 (signed), and falls through when t1(=a2) < 0 (signed).
  The `bgez` branch at 0x407128 targets 0x407144, is taken when t3(?) >= 0 (signed), and falls through when t3(?) < 0 (signed).
  The `bgez` branch at 0x407148 targets 0x40716c, is taken when t7(?) >= 0 (signed), and falls through when t7(?) < 0 (signed).
  The `blez` branch at 0x4071cc targets 0x4071e0, is taken when t7(?) <= 0 (signed), and falls through when t7(?) > 0 (signed).
  The `bne` branch at 0x4071d8 targets 0x4071e8, is taken when t7(?) < 0x100 (signed), and falls through when t7(?) >= 0x100 (signed).
  The `beq` branch at 0x4071e0 targets 0x4073bc and is always taken.
  The `bgez` branch at 0x407204 targets 0x407214, is taken when t2(?) >= 0 (signed), and falls through when t2(?) < 0 (signed).
  The `beq` branch at 0x407220 targets 0x407274, is taken when t6(?) >= t8(?) (signed), and falls through when t6(?) < t8(?) (signed).
  The `bgez` branch at 0x407250 targets 0x407260, is taken when t3(?) >= 0 (signed), and falls through when t3(?) < 0 (signed).
  The `bne` branch at 0x40726c targets 0x407228, is taken when t7(?) < t1(?) (signed), and falls through when t7(?) >= t1(?) (signed).
  The `bgez` branch at 0x407290 targets 0x4072a0, is taken when t3(?) >= 0 (signed), and falls through when t3(?) < 0 (signed).
  The `bne` branch at 0x4072a8 targets 0x4072f8, is taken when t6(?) < t0(?) (signed), and falls through when t6(?) >= t0(?) (signed).
  The `bgez` branch at 0x4072d8 targets 0x4072e8, is taken when t5(?) >= 0 (signed), and falls through when t5(?) < 0 (signed).
  The `beq` branch at 0x4072f0 targets 0x4072b0, is taken when t6(?) >= t2(?) (signed), and falls through when t6(?) < t2(?) (signed).
  The `blez` branch at 0x4072fc targets 0x40734c, is taken when t1(?) <= 0 (signed), and falls through when t1(?) > 0 (signed).
  The `beq` branch at 0x407308 targets 0x40734c, is taken when t1(?) >= 0x100 (signed), and falls through when t1(?) < 0x100 (signed).
  The `bgez` branch at 0x407328 targets 0x407338, is taken when t1(?) >= 0 (signed), and falls through when t1(?) < 0 (signed).
  The `beq` branch at 0x407344 targets 0x407354, is taken when t2(?) >= t9(?) (signed), and falls through when t2(?) < t9(?) (signed).
  The `beq` branch at 0x40735c targets 0x407394, is taken when t7(=[sym(mvpregtrace)]) == 0, and falls through when t7(=[sym(mvpregtrace)]) != 0.
  The `beq` branch at 0x407398 targets 0x4073ac, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x4073ac targets 0x4073bc and is always taken.
  The return at 0x4073c4 has v0 = one of 0x100, -0x1, ?.
  The instructions from 0x4073b4 to 0x4073b8 are not reached by any path from the entry, and their branches are not listed.

- `mvpSendPathEvent` in `usr/lib/dmedia/video/debug/mvp.so` at 0x4074a4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x4074a4-0x407ff8 (2900 bytes).
  It occupies 2900 bytes.
  The `lw` at 0x407560 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `lw` at 0x407568 loads 4 bytes from [a0+56] +0x38.
  The `jalr` at 0x407530 calls bcopy with a0=a1 at entry (arg1), a1=sp-256, a2=0x90, a3=a3 at entry (arg3).
  The `jalr` at 0x407548 calls mvpPrintf with a0=a0 at entry (arg0), a1=0x414c7c, a2=?, a3=?.
  The `jalr` at 0x407564 calls dmFifoEnq with a0=[[a0+56]+56], a1=sp-392, a2=?, a3=?.
  The `jalr` at 0x40757c calls mvpPanic with a0=0x414c98, a1=?, a2=?, a3=?.
  The `beq` branch at 0x40756c targets 0x407588, is taken when v0(=ret(dmFifoEnq)) == 0, and falls through when v0(=ret(dmFifoEnq)) != 0.
  The `beq` branch at 0x407588 targets 0x407590 and is always taken.
  The return at 0x407598 has v0 = ?.
  The instructions from 0x4075a0 to 0x407ff4 are not reached by any path from the entry, and their branches are not listed.

- `mvpFromVLControlValue` in `usr/lib/dmedia/video/debug/mvp.so` at 0x4075a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x4075a0-0x40771c (380 bytes).
  It occupies 380 bytes.
  The `lw` at 0x4075d8 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x4075dc loads 4 bytes from [a1+8] +0x4.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x4075e0, `sw` at 0x4076e8.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x10, including `lw` at 0x4075ec, `lw` at 0x4075fc, `lw` at 0x4076bc.
  3 such `lw` accesses load 4 bytes from [a1+16] +0x8, including `lw` at 0x4075f0, `lw` at 0x407600, `lw` at 0x4076c8.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `sw` at 0x4075f4, `sw` at 0x4076f4.
  The `lw` at 0x407620 loads 4 bytes from table(0x4152ec) +0x0.
  5 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc, including `lw` at 0x407638, `lw` at 0x40764c, `lw` at 0x407668.
  3 such `lw` accesses load 4 bytes from [a1+12] +0x0, including `lw` at 0x40763c, `lw` at 0x40766c, `lw` at 0x407688.
  2 such `sh` accesses store 2 bytes to a2 (arg2 at entry) +0x8, including `sh` at 0x407640, `sh` at 0x40768c.
  2 such `lw` accesses load 4 bytes from [a1+12] +0x4, including `lw` at 0x407650, `lw` at 0x40769c.
  2 such `sh` accesses store 2 bytes to a2 (arg2 at entry) +0xa, including `sh` at 0x407654, `sh` at 0x4076a0.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `sw` at 0x407670, `sw` at 0x407700.
  The `jalr` at 0x4076cc calls mvpPanic with a0=0x414cb4, a1=[[a1+16]+8], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x4075c8 targets 0x4076e0, is taken when t6(=a1) == 0, and falls through when t6(=a1) != 0.
  The `beq` branch at 0x40760c targets 0x4076b4, is taken when t8(=[[a1+16]+8]-1) >= 0xb (unsigned), and falls through when t8(=[[a1+16]+8]-1) < 0xb (unsigned).
  The `beq` branch at 0x407658 targets 0x4076d8 and is always taken.
  The `beq` branch at 0x407674 targets 0x4076d8 and is always taken.
  The `beq` branch at 0x4076a4 targets 0x4076d8 and is always taken.
  The `beq` branch at 0x4076ac targets 0x4076d8 and is always taken.
  The `beq` branch at 0x4076d8 targets 0x407704 and is always taken.
  The `beq` branch at 0x407704 targets 0x40770c and is always taken.
  The return at 0x407714 has v0 = ?.
  The indirect jump at 0x407628 uses the jump table at 0x4152ec with targets 0x407630, 0x407660, 0x407660, 0x407660, 0x40767c, 0x4076b4, 0x4076b4, 0x4076b4, 0x4076b4, 0x4076b4, 0x4076ac.

- `mvpSendPathControls` in `usr/lib/dmedia/video/debug/mvp.so` at 0x40771c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x40771c-0x4078fc (480 bytes).
  It occupies 480 bytes.
  The `lw` at 0x4077b0 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lw` at 0x4077b4 loads 4 bytes from [a2] +0x8.
  The `lw` at 0x4077ec loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x40784c loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jalr` at 0x407750 calls mvpUpdateRegs with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x407794 calls mvpFromVLControlValue with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=sp-148, a3=?.
  The `jalr` at 0x4077d0 calls bcopy with a0=a0+288, a1=sp-128, a2=0x78, a3=?.
  The `jalr` at 0x40780c calls mvpSendPathEvent [0x4074a4] with a0=a0 at entry (arg0), a1=sp-152, a2=?, a3=?.
  The `jalr` at 0x407828 calls mvpPrintf with a0=a0 at entry (arg0), a1=0x414d1c, a2=?, a3=?.
  The `jalr` at 0x407848 calls ioctl with a0=[a0+40], a1=0x6d767005, a2=sp-152, a3=?.
  The `jalr` at 0x407860 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x407878 calls mvpRevisionError with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x407888 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4078a0 calls strerror with a0=ret(oserror), a1=?, a2=?, a3=?.
  The `jalr` at 0x4078c4 calls mvpPrintf with a0=a0 at entry (arg0), a1=0x414d38, a2=sym(mvpSendPathControls), a3=ret(strerror).
  The `beq` branch at 0x407764 targets 0x407774, is taken when t6(=ret(mvpUpdateRegs)) == 0, and falls through when t6(=ret(mvpUpdateRegs)) != 0.
  The `beq` branch at 0x40776c targets 0x4078e8 and is always taken.
  The `beq` branch at 0x4077a4 targets 0x4077bc, is taken when t9(=a2) == 0, and falls through when t9(=a2) != 0.
  The `beq` branch at 0x4077e0 targets 0x40781c, is taken when t3(=a1) == 0, and falls through when t3(=a1) != 0.
  The `beq` branch at 0x4077f4 targets 0x40781c, is taken when (t5(=[a0+36]) & 0x1000) == 0, and falls through when (t5(=[a0+36]) & 0x1000) != 0.
  The `beq` branch at 0x407814 targets 0x4078d8 and is always taken.
  The `bne` branch at 0x407854 targets 0x4078d8, is taken when v0(=ret(ioctl)) != at(=-0x1), and falls through when v0(=ret(ioctl)) == at(=-0x1).
  The `bne` branch at 0x40786c targets 0x407884, is taken when v0(=ret(oserror)) != at(=0x7), and falls through when v0(=ret(oserror)) == at(=0x7).
  The `beq` branch at 0x4078d0 targets 0x4078e8 and is always taken.
  The `beq` branch at 0x4078d8 targets 0x4078e8 and is always taken.
  The return at 0x4078f4 has v0 = one of ret(mvpUpdateRegs), 0x11, 0x0.
  The instructions from 0x4078e0 to 0x4078e4 are not reached by any path from the entry, and their branches are not listed.

- `mvpSetupPathControls` in `usr/lib/dmedia/video/debug/mvp.so` at 0x4078fc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x4078fc-0x407bac (688 bytes).
  It occupies 688 bytes.
  The `lw` at 0x407920 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `lbu` at 0x40796c loads 1 byte from a0 (arg0 at entry) +0x49.
  8 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x407980, `lbu` at 0x4079d8, `lbu` at 0x407a6c.
  3 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x128, including `sb` at 0x4079dc, `sb` at 0x407a70, `sb` at 0x407ad4.
  3 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x125, including `sb` at 0x4079e8, `sb` at 0x407aa8, `sb` at 0x407b0c.
  3 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x12a, including `sb` at 0x4079f4, `sb` at 0x407a8c, `sb` at 0x407af0.
  3 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x121, including `sb` at 0x407a00, `sb` at 0x407ab0, `sb` at 0x407b14.
  The `sb` at 0x407a14 stores 1 byte to a0 (arg0 at entry) +0x15b.
  The `lbu` at 0x407a30 loads 1 byte from table(0x417c08) +0x0.
  The `sb` at 0x407a34 stores 1 byte to a0 (arg0 at entry) +0x15d.
  The `lbu` at 0x407a50 loads 1 byte from table(0x417c09) +0x0.
  The `sb` at 0x407a54 stores 1 byte to a0 (arg0 at entry) +0x15c.
  The `sb` at 0x407b20 stores 1 byte to a0 (arg0 at entry) +0x120.
  The `sb` at 0x407b28 stores 1 byte to a0 (arg0 at entry) +0x126.
  The `sb` at 0x407b30 stores 1 byte to a0 (arg0 at entry) +0x127.
  The `sw` at 0x407b3c stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `lbu` at 0x407b54 loads 1 byte from a0 (arg0 at entry) +0x128.
  The `jalr` at 0x407948 calls mvpAssertFail with a0=0x414d40, a1=0x414d54, a2=0x226, a3=a3 at entry (arg3).
  The `jalr` at 0x40795c calls mvpGetDeviceControls with a0=[a0+280], a1=?, a2=?, a3=?.
  The `jalr` at 0x407990 calls mvpRead with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x407b50 calls mvpSetTiming [0x406d98] with a0=a0 at entry (arg0), a1=[a0+296]:1, a2=?, a3=?.
  The `jalr` at 0x407b64 calls mvpUpdateRegs with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x407b7c calls mvpSendPathControls with a0=a0 at entry (arg0), a1=0x0, a2=0x0, a3=?.
  The `beq` branch at 0x407924 targets 0x407934, is taken when t7(=[a0+280]) == 0, and falls through when t7(=[a0+280]) != 0.
  The `beq` branch at 0x40792c targets 0x407954 and is always taken.
  The `beq` branch at 0x40799c targets 0x407abc, is taken when s0(=ret(mvpRead)) == 0, and falls through when s0(=ret(mvpRead)) != 0.
  The `beq` branch at 0x4079a8 targets 0x407a0c, is taken when s0(=ret(mvpRead)) == at(=0x1), and falls through when s0(=ret(mvpRead)) != at(=0x1).
  The `beq` branch at 0x4079b4 targets 0x4079c4, is taken when s0(=ret(mvpRead)) == at(=0x2), and falls through when s0(=ret(mvpRead)) != at(=0x2).
  The `beq` branch at 0x4079bc targets 0x407b18 and is always taken.
  The `beq` branch at 0x407a04 targets 0x407b18 and is always taken.
  The `beq` branch at 0x407ab4 targets 0x407b18 and is always taken.
  The `beq` branch at 0x407b88 targets 0x407b98 and is always taken.
  The return at 0x407ba4 has v0 = 0x0.
  The instructions from 0x407b90 to 0x407b94 are not reached by any path from the entry, and their branches are not listed.

- `mvpMipmapMode` in `usr/lib/dmedia/video/debug/mvp.so` at 0x407bac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x407bac-0x407c48 (156 bytes).
  It occupies 156 bytes.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x13c, including `lh` at 0x407bb8, `lh` at 0x407bf4.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x121, including `lbu` at 0x407bc8, `lbu` at 0x407c04.
  The `bne` branch at 0x407bc0 targets 0x407bf4, is taken when t6(=[a0+316]:2) != at(=0x100), and falls through when t6(=[a0+316]:2) == at(=0x100).
  The `bne` branch at 0x407bcc targets 0x407be4, is taken when t7(=[a0+289]:1) != 0, and falls through when t7(=[a0+289]:1) == 0.
  The `bne` branch at 0x407bfc targets 0x407c30, is taken when t8(=[a0+316]:2) != at(=0x80), and falls through when t8(=[a0+316]:2) == at(=0x80).
  The `bne` branch at 0x407c08 targets 0x407c20, is taken when t9(=[a0+289]:1) != 0, and falls through when t9(=[a0+289]:1) == 0.
  The return at 0x407bd4 has v0 = 0x2.
  The return at 0x407be4 has v0 = 0x3.
  The return at 0x407c10 has v0 = 0x1.
  The return at 0x407c20 has v0 = 0x4.
  The return at 0x407c30 has v0 = -0x1.
  The instructions from 0x407bdc to 0x407be0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x407bec to 0x407bf0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x407c18 to 0x407c1c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x407c28 to 0x407c2c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x407c38 to 0x407c44 are not reached by any path from the entry, and their branches are not listed.

- `mvpBufferSize` in `usr/lib/dmedia/video/debug/mvp.so` at 0x407c48 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x407c48-0x407ea4 (604 bytes).
  It occupies 604 bytes.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x126, including `lbu` at 0x407cac, `lbu` at 0x407d6c, `lbu` at 0x407e28.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x13a, including `lh` at 0x407d54, `lh` at 0x407e50.
  3 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x13c, including `lh` at 0x407d80, `lh` at 0x407da0, `lh` at 0x407e4c.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x121, including `lbu` at 0x407dd8, `lbu` at 0x407e0c.
  The `jalr` at 0x407c98 calls mvpAssertFail with a0=0x414d64, a1=0x414d6c, a2=0x278, a3=a3 at entry (arg3).
  The `jalr` at 0x407cc0 calls mvpMipmapMode with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x407d30 calls mvpErrPrintf with a0=a0 at entry (arg0), a1=0x414d7c, a2=?, a3=?.
  The `jalr` at 0x407d44 calls mvpPixSize with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x407df8 calls mvpPixSize with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x407e70 calls mvpPrintf with a0=a0 at entry (arg0), a1=0x414d94, a2=[a0+314]:2, a3=ret(mvpPixSize).
  The `beq` branch at 0x407c74 targets 0x407c84, is taken when t6(=a0) == 0, and falls through when t6(=a0) != 0.
  The `beq` branch at 0x407c7c targets 0x407ca4 and is always taken.
  The `bne` branch at 0x407cb0 targets 0x407d3c, is taken when t8(=[a0+294]:1) != at(=0x2), and falls through when t8(=[a0+294]:1) == at(=0x2).
  The `beq` branch at 0x407cd0 targets 0x407d14, is taken when s0(=ret(mvpMipmapMode)) == at(=0x1), and falls through when s0(=ret(mvpMipmapMode)) != at(=0x1).
  The `beq` branch at 0x407cdc targets 0x407d04, is taken when s0(=ret(mvpMipmapMode)) == at(=0x2), and falls through when s0(=ret(mvpMipmapMode)) != at(=0x2).
  The `beq` branch at 0x407ce8 targets 0x407d0c, is taken when s0(=ret(mvpMipmapMode)) == at(=0x3), and falls through when s0(=ret(mvpMipmapMode)) != at(=0x3).
  The `beq` branch at 0x407cf4 targets 0x407d1c, is taken when s0(=ret(mvpMipmapMode)) == at(=0x4), and falls through when s0(=ret(mvpMipmapMode)) != at(=0x4).
  The `beq` branch at 0x407cfc targets 0x407d24 and is always taken.
  The `beq` branch at 0x407d04 targets 0x407e8c and is always taken.
  The `beq` branch at 0x407d0c targets 0x407e8c and is always taken.
  The `beq` branch at 0x407d14 targets 0x407e8c and is always taken.
  The `beq` branch at 0x407d1c targets 0x407e8c and is always taken.
  The `bne` branch at 0x407d70 targets 0x407d98, is taken when t3(=[a0+294]:1) != 0, and falls through when t3(=[a0+294]:1) == 0.
  The `beq` branch at 0x407d90 targets 0x407dd4 and is always taken.
  The `bne` branch at 0x407ddc targets 0x407df0, is taken when t8(=[a0+289]:1) != 0, and falls through when t8(=[a0+289]:1) == 0.
  The `bne` branch at 0x407e10 targets 0x407e20, is taken when t2(=[a0+289]:1) != 0, and falls through when t2(=[a0+289]:1) == 0.
  The `beq` branch at 0x407e18 targets 0x407e24 and is always taken.
  The `bne` branch at 0x407e2c targets 0x407e3c, is taken when t5(=[a0+294]:1) != 0, and falls through when t5(=[a0+294]:1) == 0.
  The `beq` branch at 0x407e34 targets 0x407e40 and is always taken.
  The `beq` branch at 0x407e7c targets 0x407e8c and is always taken.
  The return at 0x407e9c has v0 = one of 0xc0000, 0x70000, 0x50000, ?.
  The instructions from 0x407e84 to 0x407e88 are not reached by any path from the entry, and their branches are not listed.

- `mvpBufferAlignment` in `usr/lib/dmedia/video/debug/mvp.so` at 0x407ea4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x407ea4-0x407ecc (40 bytes).
  It occupies 40 bytes.
  The `beq` branch at 0x407eb4 targets 0x407ec4 and is always taken.
  The return at 0x407ec4 has v0 = 0x10000.
  The instructions from 0x407ebc to 0x407ec0 are not reached by any path from the entry, and their branches are not listed.

- `mvpMaxBufferSize` in `usr/lib/dmedia/video/debug/mvp.so` at 0x407ecc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x407ecc-0x407ff8 (300 bytes).
  It occupies 300 bytes.
  The `lbu` at 0x407f24 loads 1 byte from a0 (arg0 at entry) +0x128.
  The `lh` at 0x407f4c loads 2 bytes from a0 (arg0 at entry) +0x13a.
  4 such `lh` accesses load 2 bytes from ?, including `lh` at 0x407f50, `lh` at 0x407f6c, `lh` at 0x407f80.
  The `lh` at 0x407f7c loads 2 bytes from a0 (arg0 at entry) +0x13c.
  The `jalr` at 0x407f10 calls mvpAssertFail with a0=0x414dcc, a1=0x414dd4, a2=0x2b8, a3=a3 at entry (arg3).
  The `jalr` at 0x407fac calls mvpPixSize with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x407eec targets 0x407efc, is taken when t6(=a0) == 0, and falls through when t6(=a0) != 0.
  The `beq` branch at 0x407ef4 targets 0x407f1c and is always taken.
  The `beq` branch at 0x407f58 targets 0x407f68, is taken when t5(?) >= t3(=[a0+314]:2) (signed), and falls through when t5(?) < t3(=[a0+314]:2) (signed).
  The `beq` branch at 0x407f60 targets 0x407f74 and is always taken.
  The `beq` branch at 0x407f88 targets 0x407f98, is taken when t1(?) >= t9(=[a0+316]:2) (signed), and falls through when t1(?) < t9(=[a0+316]:2) (signed).
  The `beq` branch at 0x407f90 targets 0x407fa4 and is always taken.
  The `beq` branch at 0x407fd8 targets 0x407fe8 and is always taken.
  The return at 0x407ff0 has v0 = ?.
  The instructions from 0x407fe0 to 0x407fe4 are not reached by any path from the entry, and their branches are not listed.

- `mvptovltiming` in `usr/lib/dmedia/video/debug/mvp.so` at 0x407ff8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x407ff8-0x4080f8 (256 bytes).
  It occupies 256 bytes.
  The `lw` at 0x408030 loads 4 bytes from table(0x415318) +0x0.
  The `jalr` at 0x4080cc calls mvpPanic with a0=0x414de4, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x40801c targets 0x4080c0, is taken when t6(=a0) >= 0x14 (unsigned), and falls through when t6(=a0) < 0x14 (unsigned).
  The `beq` branch at 0x408040 targets 0x4080e8 and is always taken.
  The `beq` branch at 0x408048 targets 0x4080e8 and is always taken.
  The `beq` branch at 0x408050 targets 0x4080e8 and is always taken.
  The `beq` branch at 0x408058 targets 0x4080e8 and is always taken.
  The `beq` branch at 0x408064 targets 0x4080e8 and is always taken.
  The `beq` branch at 0x408070 targets 0x4080e8 and is always taken.
  The `beq` branch at 0x40807c targets 0x4080e8 and is always taken.
  The `beq` branch at 0x408088 targets 0x4080e8 and is always taken.
  The `beq` branch at 0x408094 targets 0x4080e8 and is always taken.
  The `beq` branch at 0x4080a0 targets 0x4080e8 and is always taken.
  The `beq` branch at 0x4080ac targets 0x4080e8 and is always taken.
  The `beq` branch at 0x4080b8 targets 0x4080e8 and is always taken.
  The `beq` branch at 0x4080d8 targets 0x4080e8 and is always taken.
  The return at 0x4080f0 has v0 = one of 0x0, 0x1, 0x2, 0x3, 0x4d56000e, 0x4d56000f, 0x4d560010, 0x4d560011, 0x4d560013, 0x4d560012, 0x4d560015, 0x4d560014, -0x1.
  The instructions from 0x4080e0 to 0x4080e4 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x408038 uses the jump table at 0x415318 with targets 0x408040, 0x408048, 0x408050, 0x408058, 0x4080c0, 0x4080c0, 0x408040, 0x408048, 0x408060, 0x40806c, 0x408078, 0x408084, 0x408040, 0x408048, 0x408050, 0x408058, 0x4080a8, 0x408090, 0x4080b4, 0x40809c.

- `mvpfromvlcaptype` in `usr/lib/dmedia/video/debug/mvp.so` at 0x4080f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x4080f8-0x40816c (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0x40811c loads 4 bytes from table(0x415368) +0x0.
  The `beq` branch at 0x408108 targets 0x408154, is taken when a0 >= 0x5 (unsigned), and falls through when a0 < 0x5 (unsigned).
  The return at 0x40812c has v0 = 0x4.
  The return at 0x408134 has v0 = 0x3.
  The return at 0x40813c has v0 = 0x0.
  The return at 0x408144 has v0 = 0x1.
  The return at 0x40814c has v0 = 0x2.
  The return at 0x408154 has v0 = -0x1.
  The instructions from 0x40815c to 0x408168 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x408124 uses the jump table at 0x415368 with targets 0x408134, 0x40813c, 0x408144, 0x40814c, 0x40812c.

- `mvptovlcaptype` in `usr/lib/dmedia/video/debug/mvp.so` at 0x40816c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x40816c-0x408214 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x4081a4 loads 4 bytes from table(0x41537c) +0x0.
  The `jalr` at 0x4081e8 calls mvpPanic with a0=0x414e04, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x408190 targets 0x4081dc, is taken when t6(=a0) >= 0x5 (unsigned), and falls through when t6(=a0) < 0x5 (unsigned).
  The `beq` branch at 0x4081b4 targets 0x408204 and is always taken.
  The `beq` branch at 0x4081bc targets 0x408204 and is always taken.
  The `beq` branch at 0x4081c4 targets 0x408204 and is always taken.
  The `beq` branch at 0x4081cc targets 0x408204 and is always taken.
  The `beq` branch at 0x4081d4 targets 0x408204 and is always taken.
  The `beq` branch at 0x4081f4 targets 0x408204 and is always taken.
  The return at 0x40820c has v0 = one of 0x4, 0x0, 0x1, 0x2, 0x3, -0x1.
  The instructions from 0x4081fc to 0x408200 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x4081ac uses the jump table at 0x41537c with targets 0x4081c4, 0x4081cc, 0x4081d4, 0x4081bc, 0x4081b4.

- `mvpfromvlpacking` in `usr/lib/dmedia/video/debug/mvp.so` at 0x408214 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x408214-0x408294 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0x40823c loads 4 bytes from table(0x415390) +0x0.
  The `beq` branch at 0x408228 targets 0x40827c, is taken when t6(=a0-1) >= 0x1f (unsigned), and falls through when t6(=a0-1) < 0x1f (unsigned).
  The return at 0x40824c has v0 = 0x4.
  The return at 0x408254 has v0 = 0x2.
  The return at 0x40825c has v0 = 0x3.
  The return at 0x408264 has v0 = 0x1.
  The return at 0x40826c has v0 = 0x0.
  The return at 0x408274 has v0 = 0x5.
  The return at 0x40827c has v0 = -0x1.
  The instructions from 0x408284 to 0x408290 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x408244 uses the jump table at 0x415390 with targets 0x40824c, 0x40824c, 0x40827c, 0x40827c, 0x408254, 0x40827c, 0x40827c, 0x40827c, 0x40827c, 0x40827c, 0x40827c, 0x40827c, 0x40827c, 0x40827c, 0x40827c, 0x40827c, 0x40827c, 0x40827c, 0x40827c, 0x40827c, 0x40827c, 0x40826c, 0x408274, 0x40827c, 0x40827c, 0x40827c, 0x40825c, 0x40827c, 0x40827c, 0x40827c, 0x408264.

- `mvptovlpacking` in `usr/lib/dmedia/video/debug/mvp.so` at 0x408294 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x408294-0x408738 (1188 bytes).
  It occupies 1188 bytes.
  The `lw` at 0x4082cc loads 4 bytes from table(0x41540c) +0x0.
  The `jalr` at 0x408318 calls mvpPanic with a0=0x414e24, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x4082b8 targets 0x40830c, is taken when t6(=a0) >= 0x6 (unsigned), and falls through when t6(=a0) < 0x6 (unsigned).
  The `beq` branch at 0x4082dc targets 0x408334 and is always taken.
  The `beq` branch at 0x4082e4 targets 0x408334 and is always taken.
  The `beq` branch at 0x4082ec targets 0x408334 and is always taken.
  The `beq` branch at 0x4082f4 targets 0x408334 and is always taken.
  The `beq` branch at 0x4082fc targets 0x408334 and is always taken.
  The `beq` branch at 0x408304 targets 0x408334 and is always taken.
  The `beq` branch at 0x408324 targets 0x408334 and is always taken.
  The return at 0x40833c has v0 = one of 0x16, 0x5, 0x1b, 0x1f, 0x1, 0x17, -0x1.
  The instructions from 0x40832c to 0x408330 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x408344 to 0x408734 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x4082d4 uses the jump table at 0x41540c with targets 0x4082dc, 0x4082f4, 0x4082e4, 0x4082ec, 0x4082fc, 0x408304.

- `mvpFindPackingAndCsc` in `usr/lib/dmedia/video/debug/mvp.so` at 0x408344 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x408344-0x408738 (1012 bytes).
  It occupies 1012 bytes.
  The `lw` at 0x408388 loads 4 bytes from table(0x415424) +0x0.
  7 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x4083a0, `sw` at 0x4083bc, `sw` at 0x4083d8.
  The `lw` at 0x408470 loads 4 bytes from table(0x415460) +0x0.
  20 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x40849c, `sw` at 0x4084cc, `sw` at 0x4084fc.
  The `jalr` at 0x408420 calls fprintf with a0=sym(__iob)+32, a1=0x414e40, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jalr` at 0x408440 calls __assert with a0=0x414e54, a1=0x414e58, a2=0x365, a3=?.
  The `jalr` at 0x4086e4 calls fprintf with a0=sym(__iob)+32, a1=0x414e68, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x408704 calls __assert with a0=0x414e84, a1=0x414e88, a2=0x3c2, a3=?.
  The `beq` branch at 0x408374 targets 0x40840c, is taken when t6(=a1) >= 0xf (unsigned), and falls through when t6(=a1) < 0xf (unsigned).
  The `beq` branch at 0x4083ac targets 0x408454 and is always taken.
  The `beq` branch at 0x4083c8 targets 0x408454 and is always taken.
  The `beq` branch at 0x4083e0 targets 0x408454 and is always taken.
  The `beq` branch at 0x4083f8 targets 0x408454 and is always taken.
  The `beq` branch at 0x40844c targets 0x408454 and is always taken.
  The `beq` branch at 0x40845c targets 0x4086d0, is taken when t8(=a0) >= 0x59 (unsigned), and falls through when t8(=a0) < 0x59 (unsigned).
  The `beq` branch at 0x408488 targets 0x4084a0, is taken when t9(?) == at(=0x1), and falls through when t9(?) != at(=0x1).
  The `beq` branch at 0x408498 targets 0x4084a8 and is always taken.
  The `beq` branch at 0x4084a0 targets 0x408728 and is always taken.
  The `beq` branch at 0x4084a8 targets 0x408718 and is always taken.
  The `bne` branch at 0x4084b8 targets 0x4084d0, is taken when t2(?) != at(=0x1), and falls through when t2(?) == at(=0x1).
  The `beq` branch at 0x4084c8 targets 0x4084d8 and is always taken.
  The `beq` branch at 0x4084d0 targets 0x408728 and is always taken.
  The `beq` branch at 0x4084d8 targets 0x408718 and is always taken.
  The `bne` branch at 0x4084e8 targets 0x408500, is taken when t5(?) != at(=0x1), and falls through when t5(?) == at(=0x1).
  The `beq` branch at 0x4084f8 targets 0x408508 and is always taken.
  The `beq` branch at 0x408500 targets 0x408728 and is always taken.
  The `beq` branch at 0x408508 targets 0x408718 and is always taken.
  The `bne` branch at 0x408518 targets 0x408530, is taken when t8(?) != at(=0x1), and falls through when t8(?) == at(=0x1).
  The `beq` branch at 0x408528 targets 0x408538 and is always taken.
  The `beq` branch at 0x408530 targets 0x408728 and is always taken.
  The `beq` branch at 0x408538 targets 0x408718 and is always taken.
  The `bne` branch at 0x408544 targets 0x40855c, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x408554 targets 0x408568 and is always taken.
  The `beq` branch at 0x408568 targets 0x408718 and is always taken.
  The `bne` branch at 0x408574 targets 0x40858c, is taken when t6(?) != 0, and falls through when t6(?) == 0.
  The `beq` branch at 0x408584 targets 0x408598 and is always taken.
  The `beq` branch at 0x408598 targets 0x408718 and is always taken.
  The `bne` branch at 0x4085a4 targets 0x4085bc, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x4085b4 targets 0x4085c8 and is always taken.
  The `beq` branch at 0x4085c8 targets 0x408718 and is always taken.
  The `bne` branch at 0x4085d4 targets 0x4085ec, is taken when t6(?) != 0, and falls through when t6(?) == 0.
  The `beq` branch at 0x4085e4 targets 0x4085f8 and is always taken.
  The `beq` branch at 0x4085f8 targets 0x408718 and is always taken.
  The `bne` branch at 0x408604 targets 0x40861c, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x408614 targets 0x408628 and is always taken.
  The `beq` branch at 0x408628 targets 0x408718 and is always taken.
  The `bne` branch at 0x408634 targets 0x40864c, is taken when t6(?) != 0, and falls through when t6(?) == 0.
  The `beq` branch at 0x408644 targets 0x408658 and is always taken.
  The `beq` branch at 0x408658 targets 0x408718 and is always taken.
  The `bne` branch at 0x408664 targets 0x40867c, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x408674 targets 0x408688 and is always taken.
  The `beq` branch at 0x408688 targets 0x408718 and is always taken.
  The `beq` branch at 0x4086a8 targets 0x408718 and is always taken.
  The `beq` branch at 0x4086c8 targets 0x408718 and is always taken.
  The `beq` branch at 0x408710 targets 0x408718 and is always taken.
  The `beq` branch at 0x408718 targets 0x408728 and is always taken.
  The return at 0x408730 has v0 = one of 0x0, 0x7.
  The instructions from 0x408720 to 0x408724 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x408390 uses the jump table at 0x415424 with targets 0x4083d0, 0x408398, 0x4083e8, 0x4083b4, 0x40840c, 0x4083b4, 0x40840c, 0x408398, 0x408398, 0x40840c, 0x40840c, 0x408398, 0x4083d0, 0x4083d0, 0x408400.
  The indirect jump at 0x408478 uses the jump table at 0x415460 with targets 0x4086b0, 0x4086b0, 0x4086b0, 0x4086d0, 0x4086d0, 0x408690, 0x408690, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x408690, 0x4086d0, 0x408690, 0x4086b0, 0x408690, 0x4086b0, 0x408690, 0x408690, 0x408690, 0x408690, 0x4086b0, 0x4086b0, 0x4086b0, 0x4086b0, 0x408690, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x408540, 0x408630, 0x4086d0, 0x4085a0, 0x408570, 0x4086d0, 0x4086d0, 0x4084b0, 0x4086d0, 0x4086d0, 0x408660, 0x4086d0, 0x4086d0, 0x408510, 0x4086d0, 0x4086d0, 0x408600, 0x4086d0, 0x4085d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x408480, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4084e0.
  The indirect jump at 0x408478 uses the jump table at 0x415460 with targets 0x4086b0, 0x4086b0, 0x4086b0, 0x4086d0, 0x4086d0, 0x408690, 0x408690, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x408690, 0x4086d0, 0x408690, 0x4086b0, 0x408690, 0x4086b0, 0x408690, 0x408690, 0x408690, 0x408690, 0x4086b0, 0x4086b0, 0x4086b0, 0x4086b0, 0x408690, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x408540, 0x408630, 0x4086d0, 0x4085a0, 0x408570, 0x4086d0, 0x4086d0, 0x4084b0, 0x4086d0, 0x4086d0, 0x408660, 0x4086d0, 0x4086d0, 0x408510, 0x4086d0, 0x4086d0, 0x408600, 0x4086d0, 0x4085d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x408480, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4086d0, 0x4084e0.

- `mvptovlcolorspace` in `usr/lib/dmedia/video/debug/mvp.so` at 0x408738 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x408738-0x408878 (320 bytes).
  It occupies 320 bytes.
  The `lw` at 0x40877c loads 4 bytes from table(0x4155c4) +0x0.
  The `jalr` at 0x408834 calls printf with a0=0x414e98, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40884c calls mvpPanic with a0=0x414eb8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `beq` branch at 0x408768 targets 0x408818, is taken when t8(=a0-1) >= 0x9 (unsigned), and falls through when t8(=a0-1) < 0x9 (unsigned).
  The `beq` branch at 0x408794 targets 0x408818 and is always taken.
  The `beq` branch at 0x4087a4 targets 0x408818 and is always taken.
  The `beq` branch at 0x4087b4 targets 0x408818 and is always taken.
  The `beq` branch at 0x4087c4 targets 0x408818 and is always taken.
  The `beq` branch at 0x4087d4 targets 0x408818 and is always taken.
  The `beq` branch at 0x4087e4 targets 0x408818 and is always taken.
  The `beq` branch at 0x4087f4 targets 0x408818 and is always taken.
  The `beq` branch at 0x408804 targets 0x408818 and is always taken.
  The `beq` branch at 0x408810 targets 0x408818 and is always taken.
  The `bne` branch at 0x408820 targets 0x408858, is taken when t7(?) != at(=-0x1), and falls through when t7(?) == at(=-0x1).
  The `beq` branch at 0x408858 targets 0x408868 and is always taken.
  The return at 0x408870 has v0 = ?.
  The instructions from 0x408860 to 0x408864 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x408784 uses the jump table at 0x4155c4 with targets 0x4087dc, 0x4087ec, 0x40878c, 0x40879c, 0x4087ac, 0x4087bc, 0x4087cc, 0x4087fc, 0x40880c.

- `mvpfromvlcolorspace` in `usr/lib/dmedia/video/debug/mvp.so` at 0x408878 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x408878-0x4089c8 (336 bytes).
  It occupies 336 bytes.
  The `lw` at 0x408908 loads 4 bytes from table(0x4155e8) +0x0.
  The `jalr` at 0x4088ac calls mvptovlcolorspace [0x408738] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4088dc calls printf with a0=0x414ed0, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0x408974 calls printf with a0=0x414f00, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0x40899c calls mvpPanic with a0=0x414f3c, a1=a0 at entry (arg0), a2=?, a3=?.
  The `bne` branch at 0x4088bc targets 0x4088ec, is taken when v0(=ret(mvptovlcolorspace)) != t7(=a0), and falls through when v0(=ret(mvptovlcolorspace)) == t7(=a0).
  The `beq` branch at 0x4088e4 targets 0x408980 and is always taken.
  The `beq` branch at 0x4088f4 targets 0x408960, is taken when t9(=a0) >= 0x5 (unsigned), and falls through when t9(=a0) < 0x5 (unsigned).
  The `beq` branch at 0x408920 targets 0x408960 and is always taken.
  The `beq` branch at 0x408930 targets 0x408960 and is always taken.
  The `beq` branch at 0x408940 targets 0x408960 and is always taken.
  The `beq` branch at 0x408950 targets 0x408960 and is always taken.
  The `bne` branch at 0x408988 targets 0x4089a8, is taken when t5(?) != at(=-0x1), and falls through when t5(?) == at(=-0x1).
  The `beq` branch at 0x4089a8 targets 0x4089b8 and is always taken.
  The return at 0x4089c0 has v0 = ?.
  The instructions from 0x4089b0 to 0x4089b4 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x408910 uses the jump table at 0x4155e8 with targets 0x408958, 0x408948, 0x408918, 0x408938, 0x408928.

- `mvpfromvlformat` in `usr/lib/dmedia/video/debug/mvp.so` at 0x4089c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x4089c8-0x408a5c (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0x4089ec loads 4 bytes from table(0x4155fc) +0x0.
  The `beq` branch at 0x4089d8 targets 0x408a44, is taken when a0 >= 0xf (unsigned), and falls through when a0 < 0xf (unsigned).
  The return at 0x4089fc has v0 = 0x3.
  The return at 0x408a04 has v0 = 0x4.
  The return at 0x408a0c has v0 = 0x5.
  The return at 0x408a14 has v0 = 0x6.
  The return at 0x408a1c has v0 = 0x7.
  The return at 0x408a24 has v0 = 0x1.
  The return at 0x408a2c has v0 = 0x2.
  The return at 0x408a34 has v0 = 0x8.
  The return at 0x408a3c has v0 = 0x9.
  The return at 0x408a44 has v0 = -0x1.
  The instructions from 0x408a4c to 0x408a58 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x4089f4 uses the jump table at 0x4155fc with targets 0x408a24, 0x408a2c, 0x4089fc, 0x408a04, 0x408a44, 0x408a04, 0x408a44, 0x408a0c, 0x408a14, 0x408a44, 0x408a44, 0x408a34, 0x408a1c, 0x408a44, 0x408a3c.

- `mvptovlformat` in `usr/lib/dmedia/video/debug/mvp.so` at 0x408a5c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x408a5c-0x408c34 (472 bytes).
  It occupies 472 bytes.
  The `lw` at 0x408a94 loads 4 bytes from table(0x415638) +0x0.
  The `jalr` at 0x408af8 calls mvpPanic with a0=0x414f58, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x408a80 targets 0x408aec, is taken when t6(=a0) >= 0xa (unsigned), and falls through when t6(=a0) < 0xa (unsigned).
  The `beq` branch at 0x408aa4 targets 0x408b14 and is always taken.
  The `beq` branch at 0x408aac targets 0x408b14 and is always taken.
  The `beq` branch at 0x408ab4 targets 0x408b14 and is always taken.
  The `beq` branch at 0x408abc targets 0x408b14 and is always taken.
  The `beq` branch at 0x408ac4 targets 0x408b14 and is always taken.
  The `beq` branch at 0x408acc targets 0x408b14 and is always taken.
  The `beq` branch at 0x408ad4 targets 0x408b14 and is always taken.
  The `beq` branch at 0x408adc targets 0x408b14 and is always taken.
  The `beq` branch at 0x408ae4 targets 0x408b14 and is always taken.
  The `beq` branch at 0x408b04 targets 0x408b14 and is always taken.
  The return at 0x408b1c has v0 = one of 0x2, 0x5, 0x7, 0x8, 0xc, 0x0, 0x1, 0xb, 0xe, -0x1.
  The instructions from 0x408b0c to 0x408b10 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x408b24 to 0x408c30 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x408a9c uses the jump table at 0x415638 with targets 0x408aac, 0x408acc, 0x408ad4, 0x408aa4, 0x408aac, 0x408ab4, 0x408abc, 0x408ac4, 0x408adc, 0x408ae4.

- `mvpfromvlmemmode` in `usr/lib/dmedia/video/debug/mvp.so` at 0x408b24 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x408b24-0x408b94 (112 bytes).
  It occupies 112 bytes.
  The `beq` branch at 0x408b3c targets 0x408b64, is taken when a2(=a1) == 0, and falls through when a2(=a1) != 0.
  The `beq` branch at 0x408b48 targets 0x408b6c, is taken when a2(=a1) == at(=0x1), and falls through when a2(=a1) != at(=0x1).
  The `beq` branch at 0x408b54 targets 0x408b74, is taken when a2(=a1) == at(=0x2), and falls through when a2(=a1) != at(=0x2).
  The `beq` branch at 0x408b5c targets 0x408b7c and is always taken.
  The `beq` branch at 0x408b64 targets 0x408b8c and is always taken.
  The `beq` branch at 0x408b6c targets 0x408b8c and is always taken.
  The `beq` branch at 0x408b74 targets 0x408b8c and is always taken.
  The `beq` branch at 0x408b7c targets 0x408b8c and is always taken.
  The return at 0x408b8c has v0 = one of -0x1, 0x0, 0x1, 0x2.
  The instructions from 0x408b84 to 0x408b88 are not reached by any path from the entry, and their branches are not listed.

- `mvptovlmemmode` in `usr/lib/dmedia/video/debug/mvp.so` at 0x408b94 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x408b94-0x408c34 (160 bytes).
  It occupies 160 bytes.
  The `jalr` at 0x408c04 calls mvpPanic with a0=0x414f70, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x408bb8 targets 0x408be0, is taken when s0(=a0) == 0, and falls through when s0(=a0) != 0.
  The `beq` branch at 0x408bc4 targets 0x408be8, is taken when s0(=a0) == at(=0x1), and falls through when s0(=a0) != at(=0x1).
  The `beq` branch at 0x408bd0 targets 0x408bf0, is taken when s0(=a0) == at(=0x2), and falls through when s0(=a0) != at(=0x2).
  The `beq` branch at 0x408bd8 targets 0x408bf8 and is always taken.
  The `beq` branch at 0x408be0 targets 0x408c20 and is always taken.
  The `beq` branch at 0x408be8 targets 0x408c20 and is always taken.
  The `beq` branch at 0x408bf0 targets 0x408c20 and is always taken.
  The `beq` branch at 0x408c10 targets 0x408c20 and is always taken.
  The return at 0x408c2c has v0 = one of -0x1, 0x0, 0x1, 0x2.
  The instructions from 0x408c18 to 0x408c1c are not reached by any path from the entry, and their branches are not listed.

- `mvpfromvlcontrol` in `usr/lib/dmedia/video/debug/mvp.so` at 0x408c34 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x408c34-0x408cec (184 bytes).
  It occupies 184 bytes.
  The `beq` branch at 0x408c48 targets 0x408ca4, is taken when a1(=a0) == 0, and falls through when a1(=a0) != 0.
  The `beq` branch at 0x408c54 targets 0x408cac, is taken when a1(=a0) == at(=0x1), and falls through when a1(=a0) != at(=0x1).
  The `beq` branch at 0x408c64 targets 0x408cbc, is taken when a1(=a0) == at(=0x4d560001), and falls through when a1(=a0) != at(=0x4d560001).
  The `beq` branch at 0x408c74 targets 0x408cb4, is taken when a1(=a0) == at(=0x4d560002), and falls through when a1(=a0) != at(=0x4d560002).
  The `beq` branch at 0x408c84 targets 0x408cc4, is taken when a1(=a0) == at(=0x4d560009), and falls through when a1(=a0) != at(=0x4d560009).
  The `beq` branch at 0x408c94 targets 0x408ccc, is taken when a1(=a0) == at(=0x4d56000a), and falls through when a1(=a0) != at(=0x4d56000a).
  The `beq` branch at 0x408c9c targets 0x408cd4 and is always taken.
  The `beq` branch at 0x408ca4 targets 0x408ce4 and is always taken.
  The `beq` branch at 0x408cac targets 0x408ce4 and is always taken.
  The `beq` branch at 0x408cb4 targets 0x408ce4 and is always taken.
  The `beq` branch at 0x408cbc targets 0x408ce4 and is always taken.
  The `beq` branch at 0x408cc4 targets 0x408ce4 and is always taken.
  The `beq` branch at 0x408ccc targets 0x408ce4 and is always taken.
  The `beq` branch at 0x408cd4 targets 0x408ce4 and is always taken.
  The return at 0x408ce4 has v0 = one of 0xc3b6, 0xc3b7, 0xc3b8, 0xc3b9, 0xc3bb, 0xc3bc, -0x1.
  The instructions from 0x408cdc to 0x408ce0 are not reached by any path from the entry, and their branches are not listed.

- `mvpGetGenlockSource` in `usr/lib/dmedia/video/debug/mvp.so` at 0x408cec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x408cec-0x408d58 (108 bytes).
  It occupies 108 bytes.
  The `jalr` at 0x408d2c calls mvpControlIOCTL [0x406c4c] with a0=a0 at entry (arg0), a1=sp-144, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `beq` branch at 0x408d38 targets 0x408d48 and is always taken.
  The return at 0x408d50 has v0 = ?.
  The instructions from 0x408d40 to 0x408d44 are not reached by any path from the entry, and their branches are not listed.

- `mvpChangeGenlock` in `usr/lib/dmedia/video/debug/mvp.so` at 0x408d58 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x408d58-0x408d88 (48 bytes).
  It occupies 48 bytes.
  The `beq` branch at 0x408d70 targets 0x408d80 and is always taken.
  The return at 0x408d80 has v0 = 0x0.
  The instructions from 0x408d78 to 0x408d7c are not reached by any path from the entry, and their branches are not listed.

- `mvpSendChanges` in `usr/lib/dmedia/video/debug/mvp.so` at 0x408d88 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x408d88-0x408e54 (204 bytes).
  It occupies 204 bytes.
  The `jalr` at 0x408de0 calls mvpControlIOCTL [0x406c4c] with a0=a0 at entry (arg0), a1=sp-144, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jalr` at 0x408e0c calls mvpControlIOCTL [0x406c4c] with a0=a0 at entry (arg0), a1=sp-144, a2=0xa, a3=?.
  The `jalr` at 0x408e30 calls mvpControlIOCTL [0x406c4c] with a0=a0 at entry (arg0), a1=sp-144, a2=0xa, a3=?.
  The `beq` branch at 0x408e3c targets 0x408e44 and is always taken.
  The return at 0x408e4c has v0 = ret(mvpControlIOCTL).

- `mvpSetDeviceControl` in `usr/lib/dmedia/video/debug/mvp.so` at 0x408e54 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x408e54-0x409034 (480 bytes).
  It occupies 480 bytes.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0xc, including `lw` at 0x408ebc, `lw` at 0x408f18, `lw` at 0x408f50.
  3 such `lw` accesses load 4 bytes from [a3+12] +0x0, including `lw` at 0x408ec0, `lw` at 0x408f20, `lw` at 0x408f54.
  4 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lw` at 0x408ee8, `lw` at 0x408efc, `lw` at 0x408f08.
  2 such `lw` accesses load 4 bytes from [a3+8] +0x4, including `lw` at 0x408eec, `lw` at 0x408fd0.
  The `lw` at 0x408f00 loads 4 bytes from [a3+8] +0x1c.
  The `lw` at 0x408f0c loads 4 bytes from [a3+8] +0x20.
  The `lw` at 0x408f1c loads 4 bytes from [[a3+8]+32] +0x20.
  The `lw` at 0x408f4c loads 4 bytes from ?.
  The `jalr` at 0x408e88 calls mvpfromvlcontrol [0x408c34] with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x408ed8 calls mvpFromVLControlValue with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=sp-140, a3=?.
  The `jalr` at 0x408f84 calls mvpGetGenlockSource [0x408cec] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x408fa4 calls mvpControlIOCTL [0x406c4c] with a0=a0 at entry (arg0), a1=sp-144, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0x408fec calls mvpSendChanges [0x408d88] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x409008 calls mvpChangeGenlock [0x408d58] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `bne` branch at 0x408ea0 targets 0x408eb0, is taken when t6(=ret(mvpfromvlcontrol)) != at(=-0x1), and falls through when t6(=ret(mvpfromvlcontrol)) == at(=-0x1).
  The `beq` branch at 0x408ea8 targets 0x409024 and is always taken.
  The `bne` branch at 0x408ef0 targets 0x408f94, is taken when t3(=[[a3+8]+4]) != 0, and falls through when t3(=[[a3+8]+4]) == 0.
  The `beq` branch at 0x408f10 targets 0x408f60, is taken when t6(=[[a3+8]+28]) == 0, and falls through when t6(=[[a3+8]+28]) != 0.
  The `beq` branch at 0x408f24 targets 0x408f60, is taken when t0(=[[a3+12]]) == t1(=[[[a3+8]+32]+32]), and falls through when t0(=[[a3+12]]) != t1(=[[[a3+8]+32]+32]).
  The `beq` branch at 0x408f40 targets 0x408f60, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x408f58 targets 0x408f2c, is taken when t9(=[[a3+12]]) != t8(?), and falls through when t9(=[[a3+12]]) == t8(?).
  The `bne` branch at 0x408f64 targets 0x408f74, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x408f6c targets 0x409024 and is always taken.
  The `beq` branch at 0x408fb8 targets 0x408fc8, is taken when t1(=ret(mvpControlIOCTL)) == 0, and falls through when t1(=ret(mvpControlIOCTL)) != 0.
  The `beq` branch at 0x408fc0 targets 0x409024 and is always taken.
  The `bne` branch at 0x408fd4 targets 0x409014, is taken when t3(=[[a3+8]+4]) != 0, and falls through when t3(=[[a3+8]+4]) == 0.
  The `beq` branch at 0x409014 targets 0x409024 and is always taken.
  The return at 0x40902c has v0 = one of 0x7, 0x2, ret(mvpControlIOCTL), 0x0.
  The instructions from 0x40901c to 0x409020 are not reached by any path from the entry, and their branches are not listed.

- `mvpGetDeviceControl` in `usr/lib/dmedia/video/debug/mvp.so` at 0x409034 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x409034-0x4090f8 (196 bytes).
  It occupies 196 bytes.
  The `sw` at 0x4090d4 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `jalr` at 0x409068 calls mvpfromvlcontrol [0x408c34] with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4090a8 calls mvpControlIOCTL [0x406c4c] with a0=a0 at entry (arg0), a1=sp-144, a2=a1 at entry (arg1), a3=?.
  The `bne` branch at 0x409080 targets 0x409090, is taken when t6(=ret(mvpfromvlcontrol)) != at(=-0x1), and falls through when t6(=ret(mvpfromvlcontrol)) == at(=-0x1).
  The `beq` branch at 0x409088 targets 0x4090e8 and is always taken.
  The `beq` branch at 0x4090bc targets 0x4090cc, is taken when t8(=ret(mvpControlIOCTL)) == 0, and falls through when t8(=ret(mvpControlIOCTL)) != 0.
  The `beq` branch at 0x4090c4 targets 0x4090e8 and is always taken.
  The `beq` branch at 0x4090d8 targets 0x4090e8 and is always taken.
  The return at 0x4090f0 has v0 = one of 0x7, ret(mvpControlIOCTL), 0x0.
  The instructions from 0x4090e0 to 0x4090e4 are not reached by any path from the entry, and their branches are not listed.

- `mvpSetVideoControl` in `usr/lib/dmedia/video/debug/mvp.so` at 0x4090f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x4090f8-0x4097a4 (1708 bytes).
  It occupies 1708 bytes.
  The `lw` at 0x409128 loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `lw` at 0x4091a4 loads 4 bytes from table(0x415660) +0x0.
  12 such `lw` accesses load 4 bytes from ?, including `lw` at 0x409234, `lw` at 0x409284, `lw` at 0x409330.
  The `sb` at 0x40935c stores 1 byte to a0 (arg0 at entry) +0x125.
  The `jalr` at 0x40914c calls mvpFromVLControlValue with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=sp-148, a3=a3 at entry (arg3).
  The `jalr` at 0x409230 calls mvpfromvltiming [0x4068c0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x409308 calls mvpGetGenlockSource [0x408cec] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x40932c calls mvpfromvlformat [0x4089c8] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4093d0 calls mvpGetGenlockSource [0x408cec] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x409414 calls mvpGetGenlockSource [0x408cec] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x409678 calls bcopy with a0=?, a1=?, a2=0x26, a3=?.
  The `jalr` at 0x40969c calls mvpSendI2C with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4096bc calls mvpSetVideoPortControl with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4096dc calls mvpControlIOCTL [0x406c4c] with a0=a0 at entry (arg0), a1=sp-152, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0x409720 calls mvpSetTiming [0x406d98] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x40974c calls mvpSendChanges [0x408d88] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x409774 calls mvpChangeGenlock [0x408d58] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `bne` branch at 0x409160 targets 0x4091e8, is taken when s0(=a2) < 0x17 (signed), and falls through when s0(=a2) >= 0x17 (signed).
  The `bne` branch at 0x40916c targets 0x4091c8, is taken when s0(=a2) < 0x43 (signed), and falls through when s0(=a2) >= 0x43 (signed).
  The `bne` branch at 0x409178 targets 0x4091b4, is taken when s0(=a2) < 0x4d (signed), and falls through when s0(=a2) >= 0x4d (signed).
  The `beq` branch at 0x409190 targets 0x4096ac, is taken when t9(=a2+0xffffffffb2a9fffc) >= 0x13 (unsigned), and falls through when t9(=a2+0xffffffffb2a9fffc) < 0x13 (unsigned).
  The `beq` branch at 0x4091b8 targets 0x40944c, is taken when s0(=a2) == at(=0x4c), and falls through when s0(=a2) != at(=0x4c).
  The `beq` branch at 0x4091c0 targets 0x4096ac and is always taken.
  The `beq` branch at 0x4091cc targets 0x4093e8, is taken when s0(=a2) == at(=0x3a), and falls through when s0(=a2) != at(=0x3a).
  The `beq` branch at 0x4091d8 targets 0x40942c, is taken when s0(=a2) == at(=0x42), and falls through when s0(=a2) != at(=0x42).
  The `beq` branch at 0x4091e0 targets 0x4096ac and is always taken.
  The `beq` branch at 0x4091ec targets 0x409220, is taken when s0(=a2) == at(=0x1), and falls through when s0(=a2) != at(=0x1).
  The `beq` branch at 0x4091f8 targets 0x409278, is taken when s0(=a2) == at(=0x11), and falls through when s0(=a2) != at(=0x11).
  The `beq` branch at 0x409204 targets 0x409320, is taken when s0(=a2) == at(=0x15), and falls through when s0(=a2) != at(=0x15).
  The `beq` branch at 0x409210 targets 0x409368, is taken when s0(=a2) == at(=0x16), and falls through when s0(=a2) != at(=0x16).
  The `beq` branch at 0x409218 targets 0x4096ac and is always taken.
  The `bne` branch at 0x409248 targets 0x409258, is taken when t1(=ret(mvpfromvltiming)) != at(=-0x1), and falls through when t1(=ret(mvpfromvltiming)) == at(=-0x1).
  The `beq` branch at 0x409250 targets 0x409790 and is always taken.
  The `beq` branch at 0x409270 targets 0x4096cc and is always taken.
  The `beq` branch at 0x409288 targets 0x4092bc, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x409294 targets 0x4092bc, is taken when s0(?) == at(=0x1), and falls through when s0(?) != at(=0x1).
  The `beq` branch at 0x4092a0 targets 0x4092c8, is taken when s0(?) == at(=0x2), and falls through when s0(?) != at(=0x2).
  The `beq` branch at 0x4092ac targets 0x4092d8, is taken when s0(?) == at(=0x3), and falls through when s0(?) != at(=0x3).
  The `beq` branch at 0x4092b4 targets 0x4092e8 and is always taken.
  The `beq` branch at 0x4092c0 targets 0x4092f0 and is always taken.
  The `beq` branch at 0x4092d0 targets 0x4092f0 and is always taken.
  The `beq` branch at 0x4092e0 targets 0x4092f0 and is always taken.
  The `beq` branch at 0x4092e8 targets 0x409790 and is always taken.
  The `beq` branch at 0x409318 targets 0x4096cc and is always taken.
  The `bne` branch at 0x409344 targets 0x409354, is taken when t1(=ret(mvpfromvlformat)) != at(=-0x1), and falls through when t1(=ret(mvpfromvlformat)) == at(=-0x1).
  The `beq` branch at 0x40934c targets 0x409790 and is always taken.
  The `beq` branch at 0x409360 targets 0x409790 and is always taken.
  The `beq` branch at 0x409378 targets 0x409394, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x409384 targets 0x4093a0, is taken when s0(?) == at(=0x2), and falls through when s0(?) != at(=0x2).
  The `beq` branch at 0x40938c targets 0x4093b0 and is always taken.
  The `beq` branch at 0x409398 targets 0x4093b8 and is always taken.
  The `beq` branch at 0x4093a8 targets 0x4093b8 and is always taken.
  The `beq` branch at 0x4093b0 targets 0x409790 and is always taken.
  The `beq` branch at 0x4093e0 targets 0x4096cc and is always taken.
  The `beq` branch at 0x409424 targets 0x4096cc and is always taken.
  The `beq` branch at 0x409444 targets 0x4096cc and is always taken.
  The `bne` branch at 0x409458 targets 0x40946c, is taken when t7(?) != at(=0x2), and falls through when t7(?) == at(=0x2).
  The `beq` branch at 0x409464 targets 0x409474, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x40946c targets 0x409790 and is always taken.
  The `beq` branch at 0x409484 targets 0x4094b8, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x409490 targets 0x4094c4, is taken when s0(?) == at(=0x1), and falls through when s0(?) != at(=0x1).
  The `beq` branch at 0x40949c targets 0x4094d4, is taken when s0(?) == at(=0x2), and falls through when s0(?) != at(=0x2).
  The `beq` branch at 0x4094a8 targets 0x4094e4, is taken when s0(?) == at(=0x3), and falls through when s0(?) != at(=0x3).
  The `beq` branch at 0x4094b0 targets 0x4094f4 and is always taken.
  The `beq` branch at 0x4094bc targets 0x4094fc and is always taken.
  The `beq` branch at 0x4094cc targets 0x4094fc and is always taken.
  The `beq` branch at 0x4094dc targets 0x4094fc and is always taken.
  The `beq` branch at 0x4094ec targets 0x4094fc and is always taken.
  The `beq` branch at 0x4094f4 targets 0x409790 and is always taken.
  The `beq` branch at 0x4094fc targets 0x4096cc and is always taken.
  The `beq` branch at 0x409518 targets 0x4096cc and is always taken.
  The `beq` branch at 0x409540 targets 0x409568, is taken when s0(?) == at(=0x2), and falls through when s0(?) != at(=0x2).
  The `beq` branch at 0x40954c targets 0x40957c, is taken when s0(?) == at(=0x3), and falls through when s0(?) != at(=0x3).
  The `beq` branch at 0x409558 targets 0x409590, is taken when s0(?) == at(=0x12), and falls through when s0(?) != at(=0x12).
  The `beq` branch at 0x409560 targets 0x4095a4 and is always taken.
  The `beq` branch at 0x409574 targets 0x4095a4 and is always taken.
  The `beq` branch at 0x409588 targets 0x4095a4 and is always taken.
  The `beq` branch at 0x40959c targets 0x4095a4 and is always taken.
  The `beq` branch at 0x4095b4 targets 0x4095dc, is taken when s0(?) == at(=0x8), and falls through when s0(?) != at(=0x8).
  The `beq` branch at 0x4095c0 targets 0x4095f0, is taken when s0(?) == at(=0xc), and falls through when s0(?) != at(=0xc).
  The `beq` branch at 0x4095cc targets 0x409604, is taken when s0(?) == at(=0x28), and falls through when s0(?) != at(=0x28).
  The `beq` branch at 0x4095d4 targets 0x409618 and is always taken.
  The `beq` branch at 0x4095e8 targets 0x409618 and is always taken.
  The `beq` branch at 0x4095fc targets 0x409618 and is always taken.
  The `beq` branch at 0x409610 targets 0x409618 and is always taken.
  The `beq` branch at 0x40961c targets 0x40962c, is taken when t6(=one of 0x0, 0x2) == 0, and falls through when t6(=one of 0x0, 0x2) != 0.
  The `beq` branch at 0x409624 targets 0x409790 and is always taken.
  The `beq` branch at 0x40962c targets 0x4096cc and is always taken.
  The `beq` branch at 0x409684 targets 0x409790 and is always taken.
  The `beq` branch at 0x4096a4 targets 0x409790 and is always taken.
  The `beq` branch at 0x4096c4 targets 0x409790 and is always taken.
  The `beq` branch at 0x4096f0 targets 0x409700, is taken when t4(=ret(mvpControlIOCTL)) == 0, and falls through when t4(=ret(mvpControlIOCTL)) != 0.
  The `beq` branch at 0x4096f8 targets 0x409790 and is always taken.
  The `bne` branch at 0x409708 targets 0x40972c, is taken when t5(=a2) != at(=0x1), and falls through when t5(=a2) == at(=0x1).
  The `bne` branch at 0x409734 targets 0x409758, is taken when t7(=a2) != at(=0x11), and falls through when t7(=a2) == at(=0x11).
  The `beq` branch at 0x40975c targets 0x409780, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beq` branch at 0x409780 targets 0x409790 and is always taken.
  The return at 0x40979c has v0 = one of 0x2, 0x7, 0x0, ret(mvpSendI2C), ret(mvpSetVideoPortControl), ret(mvpControlIOCTL).
  The instructions from 0x409788 to 0x40978c are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x4091ac uses the jump table at 0x415660 with targets 0x40968c, 0x4096ac, 0x4096ac, 0x4096ac, 0x4096ac, 0x4096ac, 0x4096ac, 0x4096ac, 0x4096ac, 0x409504, 0x409634, 0x409634, 0x409634, 0x409634, 0x4096ac, 0x4096ac, 0x4096ac, 0x4096ac, 0x409520.

- `mvpGetVideoControl` in `usr/lib/dmedia/video/debug/mvp.so` at 0x4097a4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x4097a4-0x409e88 (1764 bytes).
  It occupies 1764 bytes.
  The `lw` at 0x409818 loads 4 bytes from table(0x4156ac) +0x0.
  The `lw` at 0x409898 loads 4 bytes from table(0x4156f8) +0x0.
  18 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x4098c4, `sw` at 0x409904, `sw` at 0x409980.
  3 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x4, including `sw` at 0x4098cc, `sw` at 0x409938, `sw` at 0x40998c.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x128, including `lbu` at 0x4098e4, `lbu` at 0x409914, `lbu` at 0x409950.
  2 such `lh` accesses load 2 bytes from ?, including `lh` at 0x409900, `lh` at 0x409930.
  The `lbu` at 0x40996c loads 1 byte from ?.
  The `lbu` at 0x4099ac loads 1 byte from a0 (arg0 at entry) +0x12a.
  8 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lw` at 0x409a0c, `lw` at 0x409d38, `lw` at 0x409d50.
  The `lw` at 0x409a18 loads 4 bytes from a3 (arg3 at entry) +0x4.
  3 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x8, including `sw` at 0x409cac, `sw` at 0x409cc0, `sw` at 0x409cd4.
  The `jalr` at 0x4099b8 calls mvptovlformat [0x408a5c] with a0=[a0+298]:1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x409aa0 calls bcopy with a0=?, a1=a3 at entry (arg3), a2=0x26, a3=a3 at entry (arg3).
  The `jalr` at 0x409ac0 calls mvpGetI2CData with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+12, a3=a3 at entry (arg3).
  The `jalr` at 0x409ae0 calls mvpGetVideoPortControl with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x409b00 calls mvpControlIOCTL [0x406c4c] with a0=a0 at entry (arg0), a1=sp-144, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jalr` at 0x409b7c calls mvptovltiming [0x407ff8] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x409c08 calls mvpPanic with a0=0x414f8c, a1=?, a2=?, a3=?.
  The `jalr` at 0x409c68 calls mvpPanic with a0=0x414fa8, a1=?, a2=?, a3=?.
  The `jalr` at 0x409ce8 calls mvpPanic with a0=0x414fb4, a1=?, a2=?, a3=?.
  The `jalr` at 0x409d88 calls mvpPanic with a0=0x414fc4, a1=?, a2=?, a3=?.
  The `jalr` at 0x409e18 calls mvpPanic with a0=0x414fe4, a1=?, a2=?, a3=?.
  The `jalr` at 0x409e44 calls mvpPrintf with a0=a0 at entry (arg0), a1=0x415004, a2=?, a3=?.
  The `bne` branch at 0x4097e0 targets 0x40983c, is taken when s0(=a2) < 0x43 (signed), and falls through when s0(=a2) >= 0x43 (signed).
  The `bne` branch at 0x4097ec targets 0x409828, is taken when s0(=a2) < 0x4d (signed), and falls through when s0(=a2) >= 0x4d (signed).
  The `beq` branch at 0x409804 targets 0x409ad0, is taken when t7(=a2+0xffffffffb2a9fffc) >= 0x13 (unsigned), and falls through when t7(=a2+0xffffffffb2a9fffc) < 0x13 (unsigned).
  The `beq` branch at 0x40982c targets 0x409a04, is taken when s0(=a2) == at(=0x4c), and falls through when s0(=a2) != at(=0x4c).
  The `beq` branch at 0x409834 targets 0x409ad0 and is always taken.
  The `bne` branch at 0x409840 targets 0x40985c, is taken when s0(=a2) < 0x3b (signed), and falls through when s0(=a2) >= 0x3b (signed).
  The `beq` branch at 0x40984c targets 0x4099f4, is taken when s0(=a2) == at(=0x42), and falls through when s0(=a2) != at(=0x42).
  The `beq` branch at 0x409854 targets 0x409ad0 and is always taken.
  The `bne` branch at 0x409860 targets 0x40987c, is taken when s0(=a2) < 0x17 (signed), and falls through when s0(=a2) >= 0x17 (signed).
  The `beq` branch at 0x40986c targets 0x4099e4, is taken when s0(=a2) == at(=0x3a), and falls through when s0(=a2) != at(=0x3a).
  The `beq` branch at 0x409874 targets 0x409ad0 and is always taken.
  The `beq` branch at 0x409884 targets 0x409ad0, is taken when t8(=a2-1) >= 0x16 (unsigned), and falls through when t8(=a2-1) < 0x16 (unsigned).
  The `beq` branch at 0x4098b8 targets 0x409af0 and is always taken.
  The `beq` branch at 0x4098d0 targets 0x409e74 and is always taken.
  The `beq` branch at 0x40993c targets 0x409e74 and is always taken.
  The `bgez` branch at 0x409970 targets 0x409980, is taken when t3(?) >= 0 (signed), and falls through when t3(?) < 0 (signed).
  The `beq` branch at 0x409990 targets 0x409e74 and is always taken.
  The `beq` branch at 0x4099a0 targets 0x409af0 and is always taken.
  The `beq` branch at 0x4099cc targets 0x409e74 and is always taken.
  The `beq` branch at 0x4099dc targets 0x409af0 and is always taken.
  The `beq` branch at 0x4099ec targets 0x409af0 and is always taken.
  The `beq` branch at 0x4099fc targets 0x409af0 and is always taken.
  The `bne` branch at 0x409a10 targets 0x409a24, is taken when t5(=[a3]) != at(=0x1), and falls through when t5(=[a3]) == at(=0x1).
  The `beq` branch at 0x409a1c targets 0x409a2c, is taken when t6(=[a3+4]) == 0, and falls through when t6(=[a3+4]) != 0.
  The `beq` branch at 0x409a24 targets 0x409e74 and is always taken.
  The `beq` branch at 0x409a34 targets 0x409af0 and is always taken.
  The `beq` branch at 0x409a44 targets 0x409af0 and is always taken.
  The `beq` branch at 0x409a54 targets 0x409af0 and is always taken.
  The `beq` branch at 0x409aac targets 0x409e74 and is always taken.
  The `beq` branch at 0x409ac8 targets 0x409e74 and is always taken.
  The `beq` branch at 0x409ae8 targets 0x409e74 and is always taken.
  The `beq` branch at 0x409b14 targets 0x409b24, is taken when t6(=ret(mvpControlIOCTL)) == 0, and falls through when t6(=ret(mvpControlIOCTL)) != 0.
  The `beq` branch at 0x409b1c targets 0x409e74 and is always taken.
  The `beq` branch at 0x409b2c targets 0x409b70, is taken when s0(=a2) == at(=0x1), and falls through when s0(=a2) != at(=0x1).
  The `beq` branch at 0x409b38 targets 0x409b98, is taken when s0(=a2) == at(=0x11), and falls through when s0(=a2) != at(=0x11).
  The `beq` branch at 0x409b44 targets 0x409c1c, is taken when s0(=a2) == at(=0x16), and falls through when s0(=a2) != at(=0x16).
  The `beq` branch at 0x409b50 targets 0x409c7c, is taken when s0(=a2) == at(=0x4c), and falls through when s0(=a2) != at(=0x4c).
  The `beq` branch at 0x409b60 targets 0x409cfc, is taken when s0(=a2) == at(=0x4d560016), and falls through when s0(=a2) != at(=0x4d560016).
  The `beq` branch at 0x409b68 targets 0x409e58 and is always taken.
  The `beq` branch at 0x409b90 targets 0x409e64 and is always taken.
  The `beq` branch at 0x409b9c targets 0x409bc4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x409ba8 targets 0x409bd8, is taken when s0(?) == at(=0x1), and falls through when s0(?) != at(=0x1).
  The `beq` branch at 0x409bb4 targets 0x409bec, is taken when s0(?) == at(=0x2), and falls through when s0(?) != at(=0x2).
  The `beq` branch at 0x409bbc targets 0x409c00 and is always taken.
  The `beq` branch at 0x409bd0 targets 0x409c14 and is always taken.
  The `beq` branch at 0x409be4 targets 0x409c14 and is always taken.
  The `beq` branch at 0x409bf8 targets 0x409c14 and is always taken.
  The `beq` branch at 0x409c14 targets 0x409e64 and is always taken.
  The `beq` branch at 0x409c20 targets 0x409c3c, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x409c2c targets 0x409c4c, is taken when s0(?) == at(=0xf), and falls through when s0(?) != at(=0xf).
  The `beq` branch at 0x409c34 targets 0x409c60 and is always taken.
  The `beq` branch at 0x409c44 targets 0x409c74 and is always taken.
  The `beq` branch at 0x409c58 targets 0x409c74 and is always taken.
  The `beq` branch at 0x409c74 targets 0x409e64 and is always taken.
  The `beq` branch at 0x409c80 targets 0x409ca8, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x409c8c targets 0x409cb8, is taken when s0(?) == at(=0x1), and falls through when s0(?) != at(=0x1).
  The `beq` branch at 0x409c98 targets 0x409ccc, is taken when s0(?) == at(=0x2), and falls through when s0(?) != at(=0x2).
  The `beq` branch at 0x409ca0 targets 0x409ce0 and is always taken.
  The `beq` branch at 0x409cb0 targets 0x409cf4 and is always taken.
  The `beq` branch at 0x409cc4 targets 0x409cf4 and is always taken.
  The `beq` branch at 0x409cd8 targets 0x409cf4 and is always taken.
  The `beq` branch at 0x409cf4 targets 0x409e64 and is always taken.
  The `beq` branch at 0x409d0c targets 0x409d34, is taken when s0(?) == at(=0x1), and falls through when s0(?) != at(=0x1).
  The `beq` branch at 0x409d18 targets 0x409d4c, is taken when s0(?) == at(=0x2), and falls through when s0(?) != at(=0x2).
  The `beq` branch at 0x409d24 targets 0x409d64, is taken when s0(?) == at(=0x3), and falls through when s0(?) != at(=0x3).
  The `beq` branch at 0x409d2c targets 0x409d7c and is always taken.
  The `beq` branch at 0x409d44 targets 0x409d94 and is always taken.
  The `beq` branch at 0x409d5c targets 0x409d94 and is always taken.
  The `beq` branch at 0x409d74 targets 0x409d94 and is always taken.
  The `beq` branch at 0x409d9c targets 0x409dc4, is taken when s0(?) == at(=0x1), and falls through when s0(?) != at(=0x1).
  The `beq` branch at 0x409da8 targets 0x409ddc, is taken when s0(?) == at(=0x2), and falls through when s0(?) != at(=0x2).
  The `beq` branch at 0x409db4 targets 0x409df4, is taken when s0(?) == at(=0x3), and falls through when s0(?) != at(=0x3).
  The `beq` branch at 0x409dbc targets 0x409e0c and is always taken.
  The `beq` branch at 0x409dd4 targets 0x409e24 and is always taken.
  The `beq` branch at 0x409dec targets 0x409e24 and is always taken.
  The `beq` branch at 0x409e04 targets 0x409e24 and is always taken.
  The `beq` branch at 0x409e50 targets 0x409e64 and is always taken.
  The `beq` branch at 0x409e64 targets 0x409e74 and is always taken.
  The return at 0x409e80 has v0 = one of 0x0, 0x2, ret(mvpGetI2CData), ret(mvpGetVideoPortControl), ret(mvpControlIOCTL).
  The instructions from 0x409e6c to 0x409e70 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x409820 uses the jump table at 0x4156ac with targets 0x409ab4, 0x409ad0, 0x409ad0, 0x409ad0, 0x409ad0, 0x409ad0, 0x409ad0, 0x409ad0, 0x409ad0, 0x409a3c, 0x409a5c, 0x409a5c, 0x409a5c, 0x409a5c, 0x409ad0, 0x409ad0, 0x409ad0, 0x409ad0, 0x409a4c.
  The indirect jump at 0x4098a0 uses the jump table at 0x4156f8 with targets 0x4098a8, 0x409ad0, 0x4098c0, 0x4098d8, 0x409944, 0x409ad0, 0x409ad0, 0x409ad0, 0x409ad0, 0x409ad0, 0x409ad0, 0x409ad0, 0x409ad0, 0x409ad0, 0x409ad0, 0x409ad0, 0x409998, 0x409ad0, 0x409ad0, 0x409ad0, 0x4099a8, 0x4099d4.

- `mvpSetMemoryControl` in `usr/lib/dmedia/video/debug/mvp.so` at 0x409f50 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x409f50-0x40cd64 (11796 bytes).
  It occupies 11796 bytes.
  The `lw` at 0x409f88 loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `lw` at 0x409fcc loads 4 bytes from table(0x415750) +0x0.
  The `lw` at 0x409ff8 loads 4 bytes from table(0x4157a4) +0x0.
  17 such `lw` accesses load 4 bytes from ?, including `lw` at 0x40a028, `lw` at 0x40a034, `lw` at 0x40a184.
  The `lbu` at 0x40a060 loads 1 byte from a0 (arg0 at entry) +0x157.
  8 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x13a, including `sh` at 0x40a0d4, `sh` at 0x40a690, `sh` at 0x40b3e8.
  20 such `sw` accesses store 4 bytes to ?, including `sw` at 0x40a0dc, `sw` at 0x40a0f0, `sw` at 0x40a6a0.
  6 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x13c, including `sh` at 0x40a0e8, `sh` at 0x40a6ac, `sh` at 0x40b3f4.
  4 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x128, including `lbu` at 0x40a124, `lbu` at 0x40aab4, `lbu` at 0x40b508.
  16 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x146, including `lh` at 0x40a148, `lh` at 0x40a308, `lh` at 0x40a404.
  16 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x148, including `lh` at 0x40a14c, `lh` at 0x40a314, `lh` at 0x40a40c.
  18 such `lh` accesses load 2 bytes from ?, including `lh` at 0x40a16c, `lh` at 0x40a178, `lh` at 0x40a6dc.
  5 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x121, including `lbu` at 0x40a190, `lbu` at 0x40ab38, `lbu` at 0x40b454.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x12c, including `sb` at 0x40a1b8, `sb` at 0x40a1dc.
  11 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x13a, including `lh` at 0x40a2c4, `lh` at 0x40a69c, `lh` at 0x40aa38.
  8 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x13c, including `lh` at 0x40a2d4, `lh` at 0x40a6b8, `lh` at 0x40aa3c.
  6 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x12d, including `lbu` at 0x40a2ec, `lbu` at 0x40a4d0, `lbu` at 0x40a738.
  15 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x14e, including `lh` at 0x40a300, `lh` at 0x40a3f0, `lh` at 0x40a750.
  15 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x150, including `lh` at 0x40a304, `lh` at 0x40a3f4, `lh` at 0x40a754.
  8 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x152, including `lh` at 0x40a360, `lh` at 0x40a484, `lh` at 0x40a7c8.
  8 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x154, including `lh` at 0x40a364, `lh` at 0x40a488, `lh` at 0x40a7cc.
  5 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x142, including `sh` at 0x40a678, `sh` at 0x40b400, `sh` at 0x40bf28.
  3 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x144, including `sh` at 0x40a684, `sh` at 0x40b40c, `sh` at 0x40bf34.
  6 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x13e, including `lh` at 0x40a6c4, `lh` at 0x40aa68, `lh` at 0x40b790.
  5 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x140, including `lh` at 0x40a6d0, `lh` at 0x40aa70, `lh` at 0x40b7b8.
  8 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x132, including `lh` at 0x40a9d4, `lh` at 0x40aa54, `lh` at 0x40b04c.
  5 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x134, including `lh` at 0x40a9e0, `lh` at 0x40aa60, `lh` at 0x40b058.
  7 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x132, including `sh` at 0x40aa04, `sh` at 0x40b094, `sh` at 0x40b7b0.
  5 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x134, including `sh` at 0x40aa10, `sh` at 0x40b0b0, `sh` at 0x40b7bc.
  5 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x13e, including `sh` at 0x40aa1c, `sh` at 0x40b07c, `sh` at 0x40bea8.
  3 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x140, including `sh` at 0x40aa28, `sh` at 0x40b088, `sh` at 0x40beb4.
  6 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x142, including `lh` at 0x40aa34, `lh` at 0x40b0c8, `lh` at 0x40b614.
  7 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x144, including `lh` at 0x40aa44, `lh` at 0x40b0d4, `lh` at 0x40b480.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x12b, including `sb` at 0x40ab50, `sb` at 0x40ab74.
  2 such `lw` accesses load 4 bytes from [a3+12] +0x4, including `lw` at 0x40b428, `lw` at 0x40b4e4.
  15 such `lw` accesses load 4 bytes from [a3+12] +0x0, including `lw` at 0x40b434, `lw` at 0x40b4ac, `lw` at 0x40b4e0.
  2 such `sw` accesses store 4 bytes to [a3+12] +0x0, including `sw` at 0x40b444, `sw` at 0x40b5a8.
  The `sh` at 0x40b4b0 stores 2 bytes to a0 (arg0 at entry) +0x136.
  The `sh` at 0x40b4bc stores 2 bytes to a0 (arg0 at entry) +0x138.
  2 such `sw` accesses store 4 bytes to [a3+12] +0x4, including `sw` at 0x40b4c4, `sw` at 0x40b5bc.
  The `lbu` at 0x40b524 loads 1 byte from ?.
  The `lh` at 0x40b5a4 loads 2 bytes from a0 (arg0 at entry) +0x14a.
  The `lh` at 0x40b5b4 loads 2 bytes from a0 (arg0 at entry) +0x14c.
  4 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x12d, including `sb` at 0x40b74c, `sb` at 0x40bf70, `sb` at 0x40c104.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x14e, including `sh` at 0x40b7c8, `sh` at 0x40bf40.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x150, including `sh` at 0x40b7d4, `sh` at 0x40bf4c.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x152, including `sh` at 0x40b7e0, `sh` at 0x40bf58.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x154, including `sh` at 0x40b7ec, `sh` at 0x40bf64.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x146, including `sh` at 0x40c180, `sh` at 0x40c5dc.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x148, including `sh` at 0x40c18c, `sh` at 0x40c5e8.
  The `sb` at 0x40c678 stores 1 byte to a0 (arg0 at entry) +0x121.
  The `lbu` at 0x40c6c0 loads 1 byte from a0 (arg0 at entry) +0x127.
  The `sw` at 0x40c6d4 stores 4 bytes to a0 (arg0 at entry) +0x34.
  4 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x125, including `lbu` at 0x40c6e8, `lbu` at 0x40ca34, `lbu` at 0x40ca70.
  The `lw` at 0x40c70c loads 4 bytes from a0 (arg0 at entry) +0x34.
  3 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x127, including `sb` at 0x40c768, `sb` at 0x40c848, `sb` at 0x40c990.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x125, including `sb` at 0x40cacc, `sb` at 0x40cb48.
  The `sb` at 0x40cb00 stores 1 byte to a0 (arg0 at entry) +0x123.
  The `sb` at 0x40cbe8 stores 1 byte to a0 (arg0 at entry) +0x126.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x156, including `sb` at 0x40cc04, `sb` at 0x40ccb8.
  The `sb` at 0x40cc20 stores 1 byte to a0 (arg0 at entry) +0x122.
  The `sb` at 0x40cc3c stores 1 byte to a0 (arg0 at entry) +0x129.
  The `sb` at 0x40cc58 stores 1 byte to a0 (arg0 at entry) +0x124.
  The `sb` at 0x40cc70 stores 1 byte to a0 (arg0 at entry) +0x120.
  The `lw` at 0x40cc9c loads 4 bytes from table(0x4158b4) +0x0.
  The `jalr` at 0x40a010 calls mvpRead with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40a050 calls mvpGetScreenInfo [0x409e88] with a0=a0 at entry (arg0), a1=0x9, a2=0x4, a3=sp-112.
  The `jalr` at 0x40a10c calls mvpPixSize with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x40a560 calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1.
  The `jalr` at 0x40a5cc calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1.
  The `jalr` at 0x40a5f0 calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x0.
  The `jalr` at 0x40a840 calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1.
  The `jalr` at 0x40a8c4 calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1.
  The `jalr` at 0x40a908 calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x0.
  The `jalr` at 0x40aa74 calls mvpPrintf with a0=a0 at entry (arg0), a1=0x415024, a2=[a0+314]:2, a3=[a0+316]:2.
  The `jalr` at 0x40aa9c calls mvpPixSize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40af48 calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1.
  The `jalr` at 0x40afcc calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1.
  The `jalr` at 0x40aff0 calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x0.
  The `jalr` at 0x40b2d4 calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1.
  The `jalr` at 0x40b338 calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1.
  The `jalr` at 0x40b35c calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x0.
  The `jalr` at 0x40b5d8 calls mvpPixSize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40bbb0 calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1.
  The `jalr` at 0x40bc28 calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1.
  The `jalr` at 0x40bc88 calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x0.
  The `jalr` at 0x40bfe8 calls mvpPixSize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40c398 calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1.
  The `jalr` at 0x40c404 calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1.
  The `jalr` at 0x40c5b8 calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1.
  The `jalr` at 0x40c660 calls mvpfromvlcaptype [0x4080f8] with a0=[[a3+12]], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40c690 calls mvpSetFields [0x406b90] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x40c6ac calls mvpPixSize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40c6e4 calls mvptovlformat [0x408a5c] with a0=[a0+293]:1, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c708 calls mvpFindPackingAndCsc with a0=[a0+52], a1=ret(mvptovlformat), a2=sp-292, a3=sp-296.
  The `jalr` at 0x40c738 calls mvpfromvlpacking [0x408214] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40c774 calls mvpPixSize with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x40ca4c calls printf with a0=0x415054, a1=[[a3+12]], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40ca6c calls mvpfromvlcolorspace [0x408878] with a0=?, a1=[a0+293]:1, a2=?, a3=?.
  The `jalr` at 0x40caa4 calls fprintf with a0=sym(__iob)+32, a1=0x415074, a2=?, a3=?.
  The `jalr` at 0x40cb18 calls mvpfromvlformat [0x4089c8] with a0=[[a3+12]], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40cb60 calls mvpfromvlmemmode with a0=a0 at entry (arg0), a1=[[a3+12]], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40cba0 calls mvpMipmapMode with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x40cbcc calls mvpPrintf with a0=a0 at entry (arg0), a1=0x4150a0, a2=[a0+314]:2, a3=[a0+316]:2.
  The `bne` branch at 0x409fa0 targets 0x409fdc, is taken when s0(=a2) < 0x46 (signed), and falls through when s0(=a2) >= 0x46 (signed).
  The `beq` branch at 0x409fb8 targets 0x40ccd4, is taken when t8(=a2+0xffffffffb2a9fffd) >= 0x15 (unsigned), and falls through when t8(=a2+0xffffffffb2a9fffd) < 0x15 (unsigned).
  The `beq` branch at 0x409fe4 targets 0x40ccd4, is taken when t9(=a2-2) >= 0x44 (unsigned), and falls through when t9(=a2-2) < 0x44 (unsigned).
  The `bne` branch at 0x40a01c targets 0x40a104, is taken when v0(=ret(mvpRead)) != at(=0x2), and falls through when v0(=ret(mvpRead)) == at(=0x2).
  The `beq` branch at 0x40a064 targets 0x40a084, is taken when t5(=[a0+343]:1) == 0, and falls through when t5(=[a0+343]:1) != 0.
  The `bgez` branch at 0x40a070 targets 0x40a080, is taken when t6(?) >= 0 (signed), and falls through when t6(?) < 0 (signed).
  The `beq` branch at 0x40a090 targets 0x40a0a8, is taken when t9(?) >= t8(?) (signed), and falls through when t9(?) < t8(?) (signed).
  The `beq` branch at 0x40a0b4 targets 0x40a0cc, is taken when t3(?) >= t2(?) (signed), and falls through when t3(?) < t2(?) (signed).
  The `beq` branch at 0x40a0f4 targets 0x40ccdc and is always taken.
  The `bne` branch at 0x40a194 targets 0x40a1d8, is taken when t6(=[a0+289]:1) != 0, and falls through when t6(=[a0+289]:1) == 0.
  The `bgez` branch at 0x40a1a4 targets 0x40a1b8, is taken when t5(?) >= 0 (signed), and falls through when t5(?) < 0 (signed).
  The `beq` branch at 0x40a1ac targets 0x40a1b8, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `bgez` branch at 0x40a1c0 targets 0x40a1d0, is taken when t9(?) >= 0 (signed), and falls through when t9(?) < 0 (signed).
  The `beq` branch at 0x40a1d0 targets 0x40a1e0 and is always taken.
  The `bgtz` branch at 0x40a1ec targets 0x40a204, is taken when t3(?) > 0 (signed), and falls through when t3(?) <= 0 (signed).
  The `beq` branch at 0x40a228 targets 0x40a240, is taken when t0(?) >= 0x8 (signed), and falls through when t0(?) < 0x8 (signed).
  The `bgez` branch at 0x40a244 targets 0x40a258, is taken when t3(?) >= 0 (signed), and falls through when t3(?) < 0 (signed).
  The `beq` branch at 0x40a24c targets 0x40a258, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `beq` branch at 0x40a258 targets 0x40a284, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `bgez` branch at 0x40a264 targets 0x40a274, is taken when t6(?) >= 0 (signed), and falls through when t6(?) < 0 (signed).
  The `bne` branch at 0x40a298 targets 0x40a2a4, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `bne` branch at 0x40a2a8 targets 0x40a2bc, is taken when t0(?) != at(=-0x1), and falls through when t0(?) == at(=-0x1).
  The `bne` branch at 0x40a2b0 targets 0x40a2bc, is taken when t9(?) != at(=0xffffffff80000000), and falls through when t9(?) == at(=0xffffffff80000000).
  The `bne` branch at 0x40a2c8 targets 0x40a2e8, is taken when t2(?) != t4(=[a0+314]:2), and falls through when t2(?) == t4(=[a0+314]:2).
  The `bne` branch at 0x40a2d8 targets 0x40a2e8, is taken when t6(?) != t5(=[a0+316]:2), and falls through when t6(?) == t5(=[a0+316]:2).
  The `beq` branch at 0x40a2e0 targets 0x40ccf8 and is always taken.
  The `beq` branch at 0x40a2f0 targets 0x40a398, is taken when t8(=[a0+301]:1) == 0, and falls through when t8(=[a0+301]:1) != 0.
  The `beq` branch at 0x40a390 targets 0x40a3c8 and is always taken.
  The `beq` branch at 0x40a3d4 targets 0x40a45c, is taken when t7(?) >= t8(?) (signed), and falls through when t7(?) < t8(?) (signed).
  The `beq` branch at 0x40a468 targets 0x40a4cc, is taken when t0(?) >= t7(?) (signed), and falls through when t0(?) < t7(?) (signed).
  The `beq` branch at 0x40a4d4 targets 0x40a614, is taken when t7(=[a0+301]:1) == 0, and falls through when t7(=[a0+301]:1) != 0.
  The `bgez` branch at 0x40a4ec targets 0x40a500, is taken when t4(?) >= 0 (signed), and falls through when t4(?) < 0 (signed).
  The `beq` branch at 0x40a4f4 targets 0x40a500, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x40a500 targets 0x40a530, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bgez` branch at 0x40a518 targets 0x40a528, is taken when t6(?) >= 0 (signed), and falls through when t6(?) < 0 (signed).
  The `bgez` branch at 0x40a534 targets 0x40a548, is taken when t7(?) >= 0 (signed), and falls through when t7(?) < 0 (signed).
  The `beq` branch at 0x40a53c targets 0x40a548, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x40a548 targets 0x40a574, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `bne` branch at 0x40a56c targets 0x40a5e0, is taken when v0(=ret(mvpSetScale)) != at(=-0x1), and falls through when v0(=ret(mvpSetScale)) == at(=-0x1).
  The `beq` branch at 0x40a58c targets 0x40a59c, is taken when t3(?) >= t1(?) (signed), and falls through when t3(?) < t1(?) (signed).
  The `beq` branch at 0x40a594 targets 0x40ccf8 and is always taken.
  The `bgez` branch at 0x40a5a0 targets 0x40a5b4, is taken when t6(?) >= 0 (signed), and falls through when t6(?) < 0 (signed).
  The `beq` branch at 0x40a5a8 targets 0x40a5b4, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The `bne` branch at 0x40a5b4 targets 0x40a574, is taken when t5(?) != 0, and falls through when t5(?) == 0.
  The `beq` branch at 0x40a5d8 targets 0x40a574, is taken when v0(=ret(mvpSetScale)) == at(=-0x1), and falls through when v0(=ret(mvpSetScale)) != at(=-0x1).
  The `bne` branch at 0x40a5fc targets 0x40a60c, is taken when v0(=ret(mvpSetScale)) != at(=-0x1), and falls through when v0(=ret(mvpSetScale)) == at(=-0x1).
  The `beq` branch at 0x40a604 targets 0x40ccf8 and is always taken.
  The `beq` branch at 0x40a60c targets 0x40a644 and is always taken.
  The `bne` branch at 0x40a650 targets 0x40a668, is taken when t4(?) != t3(?), and falls through when t4(?) == t3(?).
  The `beq` branch at 0x40a660 targets 0x40a670, is taken when t1(?) == t5(?), and falls through when t1(?) != t5(?).
  The `beq` branch at 0x40a6f4 targets 0x40a710, is taken when t7(?) >= t8(?) (signed), and falls through when t7(?) < t8(?) (signed).
  The `beq` branch at 0x40a71c targets 0x40a734, is taken when t5(?) >= t1(?) (signed), and falls through when t5(?) < t1(?) (signed).
  The `beq` branch at 0x40a73c targets 0x40a99c, is taken when t2(=[a0+301]:1) == 0, and falls through when t2(=[a0+301]:1) != 0.
  The `bgez` branch at 0x40a814 targets 0x40a828, is taken when t9(?) >= 0 (signed), and falls through when t9(?) < 0 (signed).
  The `beq` branch at 0x40a81c targets 0x40a828, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `bne` branch at 0x40a828 targets 0x40a854, is taken when t6(?) != 0, and falls through when t6(?) == 0.
  The `bne` branch at 0x40a84c targets 0x40a8d8, is taken when v0(=ret(mvpSetScale)) != at(=-0x1), and falls through when v0(=ret(mvpSetScale)) == at(=-0x1).
  The `blez` branch at 0x40a858 targets 0x40a868, is taken when t0(?) <= 0 (signed), and falls through when t0(?) > 0 (signed).
  The `beq` branch at 0x40a860 targets 0x40a86c and is always taken.
  The `beq` branch at 0x40a884 targets 0x40a894, is taken when t7(?) >= t4(?) (signed), and falls through when t7(?) < t4(?) (signed).
  The `beq` branch at 0x40a88c targets 0x40ccf8 and is always taken.
  The `bgez` branch at 0x40a898 targets 0x40a8ac, is taken when t3(?) >= 0 (signed), and falls through when t3(?) < 0 (signed).
  The `beq` branch at 0x40a8a0 targets 0x40a8ac, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x40a8ac targets 0x40a854, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x40a8d0 targets 0x40a854, is taken when v0(=ret(mvpSetScale)) == at(=-0x1), and falls through when v0(=ret(mvpSetScale)) != at(=-0x1).
  The `beq` branch at 0x40a8e8 targets 0x40a8f8, is taken when t5(?) >= t9(?) (signed), and falls through when t5(?) < t9(?) (signed).
  The `beq` branch at 0x40a8f0 targets 0x40ccf8 and is always taken.
  The `bne` branch at 0x40a914 targets 0x40a984, is taken when v0(=ret(mvpSetScale)) != at(=-0x1), and falls through when v0(=ret(mvpSetScale)) == at(=-0x1).
  The `beq` branch at 0x40a97c targets 0x40a98c and is always taken.
  The `beq` branch at 0x40a984 targets 0x40a994 and is always taken.
  The `beq` branch at 0x40a98c targets 0x40a8d8 and is always taken.
  The `beq` branch at 0x40a994 targets 0x40a9cc and is always taken.
  The `bne` branch at 0x40a9d8 targets 0x40a9f0, is taken when t2(=[a0+306]:2) != t4(?), and falls through when t2(=[a0+306]:2) == t4(?).
  The `beq` branch at 0x40a9e8 targets 0x40a9fc, is taken when t1(=[a0+308]:2) == t3(?), and falls through when t1(=[a0+308]:2) != t3(?).
  The `beq` branch at 0x40aa8c targets 0x40ccdc and is always taken.
  The `bne` branch at 0x40ab3c targets 0x40ab70, is taken when t1(=[a0+289]:1) != 0, and falls through when t1(=[a0+289]:1) == 0.
  The `bgez` branch at 0x40ab58 targets 0x40ab68, is taken when t0(?) >= 0 (signed), and falls through when t0(?) < 0 (signed).
  The `beq` branch at 0x40ab68 targets 0x40ab78 and is always taken.
  The `beq` branch at 0x40ab84 targets 0x40ab9c, is taken when t2(?) >= t4(?) (signed), and falls through when t2(?) < t4(?) (signed).
  The `beq` branch at 0x40abb4 targets 0x40abcc, is taken when t9(?) >= t0(?) (signed), and falls through when t9(?) < t0(?) (signed).
  The `bgez` branch at 0x40abec targets 0x40ac00, is taken when t3(?) >= 0 (signed), and falls through when t3(?) < 0 (signed).
  The `beq` branch at 0x40abf4 targets 0x40ac00, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The `beq` branch at 0x40ac00 targets 0x40ac2c, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The `bgez` branch at 0x40ac0c targets 0x40ac1c, is taken when t9(?) >= 0 (signed), and falls through when t9(?) < 0 (signed).
  The `bne` branch at 0x40ac40 targets 0x40ac4c, is taken when t4(?) != 0, and falls through when t4(?) == 0.
  The `bne` branch at 0x40ac50 targets 0x40ac64, is taken when t4(?) != at(=-0x1), and falls through when t4(?) == at(=-0x1).
  The `bne` branch at 0x40ac58 targets 0x40ac64, is taken when t2(?) != at(=0xffffffff80000000), and falls through when t2(?) == at(=0xffffffff80000000).
  The `beq` branch at 0x40ac6c targets 0x40ad14, is taken when t3(=[a0+301]:1) == 0, and falls through when t3(=[a0+301]:1) != 0.
  The `beq` branch at 0x40ad0c targets 0x40ad44 and is always taken.
  The `beq` branch at 0x40ad54 targets 0x40ade0, is taken when t9(?) >= t3(?) (signed), and falls through when t9(?) < t3(?) (signed).
  The `bne` branch at 0x40adec targets 0x40ae54, is taken when t0(?) < t8(?) (signed), and falls through when t0(?) >= t8(?) (signed).
  The `beq` branch at 0x40ae5c targets 0x40b014, is taken when t8(=[a0+301]:1) == 0, and falls through when t8(=[a0+301]:1) != 0.
  The `bgez` branch at 0x40ae74 targets 0x40ae88, is taken when t7(?) >= 0 (signed), and falls through when t7(?) < 0 (signed).
  The `beq` branch at 0x40ae7c targets 0x40ae88, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `beq` branch at 0x40ae88 targets 0x40af18, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `bgez` branch at 0x40aea0 targets 0x40aeb0, is taken when t3(?) >= 0 (signed), and falls through when t3(?) < 0 (signed).
  The `bgez` branch at 0x40af1c targets 0x40af30, is taken when t9(?) >= 0 (signed), and falls through when t9(?) < 0 (signed).
  The `beq` branch at 0x40af24 targets 0x40af30, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x40af30 targets 0x40af5c, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `bne` branch at 0x40af54 targets 0x40afe0, is taken when v0(=ret(mvpSetScale)) != at(=-0x1), and falls through when v0(=ret(mvpSetScale)) == at(=-0x1).
  The `blez` branch at 0x40af60 targets 0x40af70, is taken when t6(?) <= 0 (signed), and falls through when t6(?) > 0 (signed).
  The `beq` branch at 0x40af68 targets 0x40af74 and is always taken.
  The `beq` branch at 0x40af8c targets 0x40af9c, is taken when t8(?) >= t4(?) (signed), and falls through when t8(?) < t4(?) (signed).
  The `beq` branch at 0x40af94 targets 0x40ccf8 and is always taken.
  The `bgez` branch at 0x40afa0 targets 0x40afb4, is taken when t5(?) >= 0 (signed), and falls through when t5(?) < 0 (signed).
  The `beq` branch at 0x40afa8 targets 0x40afb4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x40afb4 targets 0x40af5c, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x40afd8 targets 0x40af5c, is taken when v0(=ret(mvpSetScale)) == at(=-0x1), and falls through when v0(=ret(mvpSetScale)) != at(=-0x1).
  The `bne` branch at 0x40affc targets 0x40b00c, is taken when v0(=ret(mvpSetScale)) != at(=-0x1), and falls through when v0(=ret(mvpSetScale)) == at(=-0x1).
  The `beq` branch at 0x40b004 targets 0x40ccf8 and is always taken.
  The `beq` branch at 0x40b00c targets 0x40b044 and is always taken.
  The `bne` branch at 0x40b050 targets 0x40b068, is taken when t7(=[a0+306]:2) != t8(?), and falls through when t7(=[a0+306]:2) == t8(?).
  The `beq` branch at 0x40b060 targets 0x40b074, is taken when t4(=[a0+308]:2) == t1(?), and falls through when t4(=[a0+308]:2) != t1(?).
  The `beq` branch at 0x40b0e8 targets 0x40b0f8, is taken when t3(?) >= t5(=[a0+322]:2) (signed), and falls through when t3(?) < t5(=[a0+322]:2) (signed).
  The `beq` branch at 0x40b104 targets 0x40b114, is taken when t6(?) >= t9(=[a0+324]:2) (signed), and falls through when t6(?) < t9(=[a0+324]:2) (signed).
  The `beq` branch at 0x40b11c targets 0x40b380, is taken when t2(=[a0+301]:1) == 0, and falls through when t2(=[a0+301]:1) != 0.
  The `bgez` branch at 0x40b200 targets 0x40b214, is taken when t6(?) >= 0 (signed), and falls through when t6(?) < 0 (signed).
  The `beq` branch at 0x40b208 targets 0x40b214, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0x40b214 targets 0x40b2a4, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `bgez` branch at 0x40b22c targets 0x40b23c, is taken when t1(?) >= 0 (signed), and falls through when t1(?) < 0 (signed).
  The `bgez` branch at 0x40b2a8 targets 0x40b2bc, is taken when t5(?) >= 0 (signed), and falls through when t5(?) < 0 (signed).
  The `beq` branch at 0x40b2b0 targets 0x40b2bc, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x40b2bc targets 0x40b2e8, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `bne` branch at 0x40b2e0 targets 0x40b34c, is taken when v0(=ret(mvpSetScale)) != at(=-0x1), and falls through when v0(=ret(mvpSetScale)) == at(=-0x1).
  The `beq` branch at 0x40b2f8 targets 0x40b308, is taken when t9(?) >= t6(?) (signed), and falls through when t9(?) < t6(?) (signed).
  The `beq` branch at 0x40b300 targets 0x40ccf8 and is always taken.
  The `bgez` branch at 0x40b30c targets 0x40b320, is taken when t0(?) >= 0 (signed), and falls through when t0(?) < 0 (signed).
  The `beq` branch at 0x40b314 targets 0x40b320, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `bne` branch at 0x40b320 targets 0x40b2e8, is taken when t7(?) != 0, and falls through when t7(?) == 0.
  The `beq` branch at 0x40b344 targets 0x40b2e8, is taken when v0(=ret(mvpSetScale)) == at(=-0x1), and falls through when v0(=ret(mvpSetScale)) != at(=-0x1).
  The `bne` branch at 0x40b368 targets 0x40b378, is taken when v0(=ret(mvpSetScale)) != at(=-0x1), and falls through when v0(=ret(mvpSetScale)) == at(=-0x1).
  The `beq` branch at 0x40b370 targets 0x40ccf8 and is always taken.
  The `beq` branch at 0x40b378 targets 0x40b3b0 and is always taken.
  The `bne` branch at 0x40b3bc targets 0x40b3d4, is taken when t4(=[a0+314]:2) != t9(?), and falls through when t4(=[a0+314]:2) == t9(?).
  The `beq` branch at 0x40b3cc targets 0x40b3e0, is taken when t6(=[a0+316]:2) == t7(?), and falls through when t6(=[a0+316]:2) != t7(?).
  The `beq` branch at 0x40b41c targets 0x40ccdc and is always taken.
  The `beq` branch at 0x40b438 targets 0x40b450, is taken when t4(=[[a3+12]]) == 0, and falls through when t4(=[[a3+12]]) != 0.
  The `bne` branch at 0x40b458 targets 0x40b478, is taken when t7(=[a0+289]:1) != 0, and falls through when t7(=[a0+289]:1) == 0.
  The `bgez` branch at 0x40b464 targets 0x40b474, is taken when t0(=[[a3+12]+4]) >= 0 (signed), and falls through when t0(=[[a3+12]+4]) < 0 (signed).
  The `beq` branch at 0x40b488 targets 0x40b4a4, is taken when t3(=[a0+324]:2) >= t8(?) (signed), and falls through when t3(=[a0+324]:2) < t8(?) (signed).
  The `beq` branch at 0x40b4d4 targets 0x40ccdc and is always taken.
  The `bgez` branch at 0x40b52c targets 0x40b544, is taken when t8(?) >= 0 (signed), and falls through when t8(?) < 0 (signed).
  The `beq` branch at 0x40b554 targets 0x40b57c, is taken when t9(=[a0+289]:1) == at(=0x3), and falls through when t9(=[a0+289]:1) != at(=0x3).
  The `bc1t` branch at 0x40b58c targets 0x40b5c0, is taken when f16 == f8 (c.eq.s at 0x40b584), and falls through when not (f16 == f8 (c.eq.s at 0x40b584)).
  The `beq` branch at 0x40b5b8 targets 0x40b5c8 and is always taken.
  The `beq` branch at 0x40b5c8 targets 0x40ccdc and is always taken.
  The `bne` branch at 0x40b630 targets 0x40b920, is taken when t8(=a2) != at(=0x2c), and falls through when t8(=a2) == at(=0x2c).
  The `bc1f` branch at 0x40b6b0 targets 0x40b6e0, is taken when not (f6 < f8 (c.lt.d at 0x40b6a8)), and falls through when f6 < f8 (c.lt.d at 0x40b6a8).
  The `bc1f` branch at 0x40b6fc targets 0x40b7f8, is taken when not (f18 == f16 (c.eq.d at 0x40b6f4)), and falls through when f18 == f16 (c.eq.d at 0x40b6f4).
  The `bc1t` branch at 0x40b720 targets 0x40b748, is taken when f6 == f10 (c.eq.d at 0x40b718), and falls through when not (f6 == f10 (c.eq.d at 0x40b718)).
  The `bc1f` branch at 0x40b740 targets 0x40b7f8, is taken when not (f6 == f4 (c.eq.d at 0x40b738)), and falls through when f6 == f4 (c.eq.d at 0x40b738).
  The `beq` branch at 0x40b7f0 targets 0x40ccdc and is always taken.
  The `bc1f` branch at 0x40b814 targets 0x40b844, is taken when not (f4 < f18 (c.lt.d at 0x40b80c)), and falls through when f4 < f18 (c.lt.d at 0x40b80c).
  The `beq` branch at 0x40b918 targets 0x40ba68 and is always taken.
  The `bne` branch at 0x40b940 targets 0x40b960, is taken when t5(=[a0+289]:1) != 0, and falls through when t5(=[a0+289]:1) == 0.
  The `bgez` branch at 0x40b94c targets 0x40b95c, is taken when t1(?) >= 0 (signed), and falls through when t1(?) < 0 (signed).
  The `beq` branch at 0x40b96c targets 0x40b9a0, is taken when t9(?) >= t3(?) (signed), and falls through when t9(?) < t3(?) (signed).
  The `beq` branch at 0x40b98c targets 0x40b9a0, is taken when t6(?) >= t8(?) (signed), and falls through when t6(?) < t8(?) (signed).
  The `beq` branch at 0x40b9ac targets 0x40b9e0, is taken when t1(?) >= t0(?) (signed), and falls through when t1(?) < t0(?) (signed).
  The `beq` branch at 0x40b9cc targets 0x40b9e0, is taken when t7(?) >= t3(?) (signed), and falls through when t7(?) < t3(?) (signed).
  The `bne` branch at 0x40b9f8 targets 0x40ba04, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0x40ba08 targets 0x40ba1c, is taken when t1(?) != at(=-0x1), and falls through when t1(?) == at(=-0x1).
  The `bne` branch at 0x40ba10 targets 0x40ba1c, is taken when t5(?) != at(=0xffffffff80000000), and falls through when t5(?) == at(=0xffffffff80000000).
  The `bne` branch at 0x40ba3c targets 0x40ba48, is taken when t7(?) != 0, and falls through when t7(?) == 0.
  The `bne` branch at 0x40ba4c targets 0x40ba60, is taken when t7(?) != at(=-0x1), and falls through when t7(?) == at(=-0x1).
  The `bne` branch at 0x40ba54 targets 0x40ba60, is taken when t3(?) != at(=0xffffffff80000000), and falls through when t3(?) == at(=0xffffffff80000000).
  The `bgtz` branch at 0x40ba6c targets 0x40ba88, is taken when t2(?) > 0 (signed), and falls through when t2(?) <= 0 (signed).
  The `bgez` branch at 0x40baa4 targets 0x40bab8, is taken when t7(?) >= 0 (signed), and falls through when t7(?) < 0 (signed).
  The `beq` branch at 0x40baac targets 0x40bab8, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x40bab8 targets 0x40bae8, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bgez` branch at 0x40bac4 targets 0x40bad4, is taken when t6(?) >= 0 (signed), and falls through when t6(?) < 0 (signed).
  The `bne` branch at 0x40bafc targets 0x40bb08, is taken when t4(?) != 0, and falls through when t4(?) == 0.
  The `bne` branch at 0x40bb0c targets 0x40bb20, is taken when t4(?) != at(=-0x1), and falls through when t4(?) == at(=-0x1).
  The `bne` branch at 0x40bb14 targets 0x40bb20, is taken when t9(?) != at(=0xffffffff80000000), and falls through when t9(?) == at(=0xffffffff80000000).
  The `bgez` branch at 0x40bb84 targets 0x40bb98, is taken when t4(?) >= 0 (signed), and falls through when t4(?) < 0 (signed).
  The `beq` branch at 0x40bb8c targets 0x40bb98, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x40bb98 targets 0x40bbc4, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `bne` branch at 0x40bbbc targets 0x40bc3c, is taken when v0(=ret(mvpSetScale)) != at(=-0x1), and falls through when v0(=ret(mvpSetScale)) == at(=-0x1).
  The `bne` branch at 0x40bbdc targets 0x40bbec, is taken when t5(?) < t6(?) (signed), and falls through when t5(?) >= t6(?) (signed).
  The `beq` branch at 0x40bbe4 targets 0x40ccf8 and is always taken.
  The `bgez` branch at 0x40bbfc targets 0x40bc10, is taken when t9(?) >= 0 (signed), and falls through when t9(?) < 0 (signed).
  The `beq` branch at 0x40bc04 targets 0x40bc10, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x40bc10 targets 0x40bbc4, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x40bc34 targets 0x40bbc4, is taken when v0(=ret(mvpSetScale)) == at(=-0x1), and falls through when v0(=ret(mvpSetScale)) != at(=-0x1).
  The `bne` branch at 0x40bc94 targets 0x40bca4, is taken when v0(=ret(mvpSetScale)) != at(=-0x1), and falls through when v0(=ret(mvpSetScale)) == at(=-0x1).
  The `beq` branch at 0x40bc9c targets 0x40ccf8 and is always taken.
  The `beq` branch at 0x40bccc targets 0x40bce8, is taken when t7(?) >= t9(?) (signed), and falls through when t7(?) < t9(?) (signed).
  The `beq` branch at 0x40bcf8 targets 0x40bd14, is taken when t3(?) >= t1(?) (signed), and falls through when t3(?) < t1(?) (signed).
  The `bgez` branch at 0x40bde8 targets 0x40bdfc, is taken when t0(?) >= 0 (signed), and falls through when t0(?) < 0 (signed).
  The `beq` branch at 0x40bdf0 targets 0x40bdfc, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x40bdfc targets 0x40be20, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bgez` branch at 0x40be08 targets 0x40be18, is taken when t4(?) >= 0 (signed), and falls through when t4(?) < 0 (signed).
  The `bne` branch at 0x40be34 targets 0x40be40, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bne` branch at 0x40be44 targets 0x40be58, is taken when t2(?) != at(=-0x1), and falls through when t2(?) == at(=-0x1).
  The `bne` branch at 0x40be4c targets 0x40be58, is taken when t8(?) != at(=0xffffffff80000000), and falls through when t8(?) == at(=0xffffffff80000000).
  The `bne` branch at 0x40be64 targets 0x40be7c, is taken when t1(=[a0+306]:2) != t0(?), and falls through when t1(=[a0+306]:2) == t0(?).
  The `beq` branch at 0x40be74 targets 0x40be88, is taken when t3(=[a0+308]:2) == t4(?), and falls through when t3(=[a0+308]:2) != t4(?).
  The `bne` branch at 0x40bec4 targets 0x40bedc, is taken when t9(?) != t8(=[a0+314]:2), and falls through when t9(?) == t8(=[a0+314]:2).
  The `beq` branch at 0x40bed4 targets 0x40bee8, is taken when t2(?) == t6(=[a0+316]:2), and falls through when t2(?) != t6(=[a0+316]:2).
  The `bne` branch at 0x40bf80 targets 0x40bfac, is taken when t8(=a2) != at(=0x4d56000b), and falls through when t8(=a2) == at(=0x4d56000b).
  The `beq` branch at 0x40bfa4 targets 0x40bfcc and is always taken.
  The `beq` branch at 0x40bfd8 targets 0x40ccdc and is always taken.
  The `bc1f` branch at 0x40c04c targets 0x40c07c, is taken when not (f6 < f18 (c.lt.d at 0x40c044)), and falls through when f6 < f18 (c.lt.d at 0x40c044).
  The `bc1f` branch at 0x40c0b4 targets 0x40c198, is taken when not (f10 == f16 (c.eq.d at 0x40c0ac)), and falls through when f10 == f16 (c.eq.d at 0x40c0ac).
  The `bc1t` branch at 0x40c0d8 targets 0x40c100, is taken when f4 == f18 (c.eq.d at 0x40c0d0), and falls through when not (f4 == f18 (c.eq.d at 0x40c0d0)).
  The `bc1f` branch at 0x40c0f8 targets 0x40c198, is taken when not (f4 == f6 (c.eq.d at 0x40c0f0)), and falls through when f4 == f6 (c.eq.d at 0x40c0f0).
  The `beq` branch at 0x40c190 targets 0x40ccdc and is always taken.
  The `bc1f` branch at 0x40c1b4 targets 0x40c1e4, is taken when not (f6 < f10 (c.lt.d at 0x40c1ac)), and falls through when f6 < f10 (c.lt.d at 0x40c1ac).
  The `bgtz` branch at 0x40c26c targets 0x40c27c, is taken when t0(?) > 0 (signed), and falls through when t0(?) <= 0 (signed).
  The `bgez` branch at 0x40c298 targets 0x40c2ac, is taken when t6(?) >= 0 (signed), and falls through when t6(?) < 0 (signed).
  The `beq` branch at 0x40c2a0 targets 0x40c2ac, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x40c2ac targets 0x40c2d0, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bgez` branch at 0x40c2b8 targets 0x40c2c8, is taken when t1(?) >= 0 (signed), and falls through when t1(?) < 0 (signed).
  The `bne` branch at 0x40c2e4 targets 0x40c2f0, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `bne` branch at 0x40c2f4 targets 0x40c308, is taken when t8(?) != at(=-0x1), and falls through when t8(?) == at(=-0x1).
  The `bne` branch at 0x40c2fc targets 0x40c308, is taken when t0(?) != at(=0xffffffff80000000), and falls through when t0(?) == at(=0xffffffff80000000).
  The `bgez` branch at 0x40c36c targets 0x40c380, is taken when t8(?) >= 0 (signed), and falls through when t8(?) < 0 (signed).
  The `beq` branch at 0x40c374 targets 0x40c380, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `bne` branch at 0x40c380 targets 0x40c3ac, is taken when t7(?) != 0, and falls through when t7(?) == 0.
  The `bne` branch at 0x40c3a4 targets 0x40c418, is taken when v0(=ret(mvpSetScale)) != at(=-0x1), and falls through when v0(=ret(mvpSetScale)) == at(=-0x1).
  The `bne` branch at 0x40c3c4 targets 0x40c3d4, is taken when t1(?) < t2(?) (signed), and falls through when t1(?) >= t2(?) (signed).
  The `beq` branch at 0x40c3cc targets 0x40ccf8 and is always taken.
  The `bgez` branch at 0x40c3d8 targets 0x40c3ec, is taken when t5(?) >= 0 (signed), and falls through when t5(?) < 0 (signed).
  The `beq` branch at 0x40c3e0 targets 0x40c3ec, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x40c3ec targets 0x40c3ac, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x40c410 targets 0x40c3ac, is taken when v0(=ret(mvpSetScale)) == at(=-0x1), and falls through when v0(=ret(mvpSetScale)) != at(=-0x1).
  The `bgez` branch at 0x40c4b8 targets 0x40c4cc, is taken when t8(?) >= 0 (signed), and falls through when t8(?) < 0 (signed).
  The `beq` branch at 0x40c4c0 targets 0x40c4cc, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x40c4cc targets 0x40c4f0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bgez` branch at 0x40c4d8 targets 0x40c4e8, is taken when t6(?) >= 0 (signed), and falls through when t6(?) < 0 (signed).
  The `bne` branch at 0x40c504 targets 0x40c510, is taken when t5(?) != 0, and falls through when t5(?) == 0.
  The `bne` branch at 0x40c514 targets 0x40c528, is taken when t5(?) != at(=-0x1), and falls through when t5(?) == at(=-0x1).
  The `bne` branch at 0x40c51c targets 0x40c528, is taken when t3(?) != at(=0xffffffff80000000), and falls through when t3(?) == at(=0xffffffff80000000).
  The `bgez` branch at 0x40c58c targets 0x40c5a0, is taken when t5(?) >= 0 (signed), and falls through when t5(?) < 0 (signed).
  The `beq` branch at 0x40c594 targets 0x40c5a0, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x40c5a0 targets 0x40c5cc, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `bne` branch at 0x40c5c4 targets 0x40c5d4, is taken when v0(=ret(mvpSetScale)) != at(=-0x1), and falls through when v0(=ret(mvpSetScale)) == at(=-0x1).
  The `beq` branch at 0x40c5cc targets 0x40ccf8 and is always taken.
  The `beq` branch at 0x40c64c targets 0x40ccdc and is always taken.
  The `beq` branch at 0x40c69c targets 0x40ccdc and is always taken.
  The `bne` branch at 0x40c71c targets 0x40c72c, is taken when t4(?) != at(=-0x1), and falls through when t4(?) == at(=-0x1).
  The `beq` branch at 0x40c724 targets 0x40ccf8 and is always taken.
  The `bne` branch at 0x40c750 targets 0x40c760, is taken when t7(=ret(mvpfromvlpacking)) != at(=-0x1), and falls through when t7(=ret(mvpfromvlpacking)) == at(=-0x1).
  The `beq` branch at 0x40c758 targets 0x40ccf8 and is always taken.
  The `beq` branch at 0x40c790 targets 0x40ca28, is taken when t6(?) >= t2(?) (signed), and falls through when t6(?) < t2(?) (signed).
  The `bgez` branch at 0x40c7ac targets 0x40c7c0, is taken when t5(?) >= 0 (signed), and falls through when t5(?) < 0 (signed).
  The `beq` branch at 0x40c7b4 targets 0x40c7c0, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `beq` branch at 0x40c7c8 targets 0x40c8e0, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x40c7f0 targets 0x40c7fc, is taken when t6(?) != 0, and falls through when t6(?) == 0.
  The `bne` branch at 0x40c800 targets 0x40c814, is taken when t6(?) != at(=-0x1), and falls through when t6(?) == at(=-0x1).
  The `bne` branch at 0x40c808 targets 0x40c814, is taken when t9(?) != at(=0xffffffff80000000), and falls through when t9(?) == at(=0xffffffff80000000).
  The `bgez` branch at 0x40c824 targets 0x40c838, is taken when t7(?) >= 0 (signed), and falls through when t7(?) < 0 (signed).
  The `beq` branch at 0x40c82c targets 0x40c838, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x40c838 targets 0x40c854, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x40c84c targets 0x40ccf8 and is always taken.
  The `beq` branch at 0x40c860 targets 0x40c8e0, is taken when t1(?) == t2(=[a0+314]:2), and falls through when t1(?) != t2(=[a0+314]:2).
  The `bgez` branch at 0x40c8f4 targets 0x40c908, is taken when t6(?) >= 0 (signed), and falls through when t6(?) < 0 (signed).
  The `beq` branch at 0x40c8fc targets 0x40c908, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x40c910 targets 0x40ca28, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x40c938 targets 0x40c944, is taken when t5(?) != 0, and falls through when t5(?) == 0.
  The `bne` branch at 0x40c948 targets 0x40c95c, is taken when t5(?) != at(=-0x1), and falls through when t5(?) == at(=-0x1).
  The `bne` branch at 0x40c950 targets 0x40c95c, is taken when t0(?) != at(=0xffffffff80000000), and falls through when t0(?) == at(=0xffffffff80000000).
  The `bgez` branch at 0x40c96c targets 0x40c980, is taken when t1(?) >= 0 (signed), and falls through when t1(?) < 0 (signed).
  The `beq` branch at 0x40c974 targets 0x40c980, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x40c980 targets 0x40c99c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x40c994 targets 0x40ccf8 and is always taken.
  The `beq` branch at 0x40c9a8 targets 0x40ca28, is taken when t4(?) == t8(=[a0+306]:2), and falls through when t4(?) != t8(=[a0+306]:2).
  The `beq` branch at 0x40ca28 targets 0x40ccdc and is always taken.
  The `bne` branch at 0x40ca84 targets 0x40cab8, is taken when t4(=ret(mvpfromvlcolorspace)) != at(=-0x1), and falls through when t4(=ret(mvpfromvlcolorspace)) == at(=-0x1).
  The `beq` branch at 0x40cab0 targets 0x40ccf8 and is always taken.
  The `beq` branch at 0x40cad8 targets 0x40caec, is taken when t1(=ret(mvpfromvlcolorspace)) == t0(=[a0+293]:1), and falls through when t1(=ret(mvpfromvlcolorspace)) != t0(=[a0+293]:1).
  The `beq` branch at 0x40caec targets 0x40ccdc and is always taken.
  The `beq` branch at 0x40cb04 targets 0x40ccdc and is always taken.
  The `bne` branch at 0x40cb30 targets 0x40cb40, is taken when t2(=ret(mvpfromvlformat)) != at(=-0x1), and falls through when t2(=ret(mvpfromvlformat)) == at(=-0x1).
  The `beq` branch at 0x40cb38 targets 0x40ccf8 and is always taken.
  The `beq` branch at 0x40cb4c targets 0x40ccdc and is always taken.
  The `bne` branch at 0x40cb78 targets 0x40cb88, is taken when t5(=ret(mvpfromvlmemmode)) != at(=-0x1), and falls through when t5(=ret(mvpfromvlmemmode)) == at(=-0x1).
  The `beq` branch at 0x40cb80 targets 0x40ccf8 and is always taken.
  The `bne` branch at 0x40cb90 targets 0x40cbe0, is taken when t7(=ret(mvpfromvlmemmode)) != at(=0x2), and falls through when t7(=ret(mvpfromvlmemmode)) == at(=0x2).
  The `bne` branch at 0x40cbac targets 0x40cbe0, is taken when v0(=ret(mvpMipmapMode)) != at(=-0x1), and falls through when v0(=ret(mvpMipmapMode)) == at(=-0x1).
  The `beq` branch at 0x40cbd8 targets 0x40ccf8 and is always taken.
  The `beq` branch at 0x40cbec targets 0x40ccdc and is always taken.
  The `beq` branch at 0x40cc08 targets 0x40ccdc and is always taken.
  The `beq` branch at 0x40cc24 targets 0x40ccdc and is always taken.
  The `beq` branch at 0x40cc40 targets 0x40ccdc and is always taken.
  The `beq` branch at 0x40cc5c targets 0x40ccdc and is always taken.
  The `beq` branch at 0x40cc74 targets 0x40ccdc and is always taken.
  The `beq` branch at 0x40cc88 targets 0x40ccc4, is taken when t6(=[[a3+12]]) >= 0x5 (unsigned), and falls through when t6(=[[a3+12]]) < 0x5 (unsigned).
  The `beq` branch at 0x40ccbc targets 0x40cccc and is always taken.
  The `beq` branch at 0x40ccc4 targets 0x40ccf8 and is always taken.
  The `beq` branch at 0x40cccc targets 0x40ccdc and is always taken.
  The `beq` branch at 0x40ccd4 targets 0x40ccf8 and is always taken.
  The `beq` branch at 0x40cce0 targets 0x40cce8, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x40cce8 targets 0x40ccf8 and is always taken.
  The return at 0x40cd08 has v0 = one of 0x0, 0x2, 0x7, ?.
  The instructions from 0x40a0fc to 0x40a100 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x40ccf0 to 0x40ccf4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x40cd10 to 0x40cd60 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x409fd4 uses the jump table at 0x415750 with targets 0x40cc64, 0x40ccd4, 0x40cc10, 0x40cc2c, 0x40cc48, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40b5d0, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40cc7c.
  The indirect jump at 0x40cca4 uses the jump table at 0x4158b4 with targets 0x40ccac, 0x40ccac, 0x40ccac, 0x40ccac, 0x40ccac.
  The indirect jump at 0x40a000 uses the jump table at 0x4157a4 with targets 0x40b424, 0x40aa94, 0x40a008, 0x40b4dc, 0x40c654, 0x40c6a4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40caf4, 0x40ccd4, 0x40ccd4, 0x40cb0c, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40b5d0, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40ccd4, 0x40bfe0, 0x40ccd4, 0x40cbf4, 0x40ccd4, 0x40cb54, 0x40ccd4, 0x40ca30.

- `mvpGCD` in `usr/lib/dmedia/video/debug/mvp.so` at 0x40cd10 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x40cd10-0x40cd64 (84 bytes).
  It occupies 84 bytes.
  The `blez` branch at 0x40cd20 targets 0x40cd4c, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0x40cd2c targets 0x40cd40, is taken when a0(?) >= a1(?) (signed), and falls through when a0(?) < a1(?) (signed).
  The `bgtz` branch at 0x40cd44 targets 0x40cd28, is taken when a0(?) > 0 (signed), and falls through when a0(?) <= 0 (signed).
  The `beq` branch at 0x40cd4c targets 0x40cd5c and is always taken.
  The return at 0x40cd5c has v0 = ?.
  The instructions from 0x40cd54 to 0x40cd58 are not reached by any path from the entry, and their branches are not listed.

- `mvpGetMemoryControl` in `usr/lib/dmedia/video/debug/mvp.so` at 0x40cd64 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x40cd64-0x40d1b8 (1108 bytes).
  It occupies 1108 bytes.
  The `lw` at 0x40cdc4 loads 4 bytes from table(0x4158c8) +0x0.
  The `lw` at 0x40cdf0 loads 4 bytes from table(0x415914) +0x0.
  The `lh` at 0x40ce08 loads 2 bytes from a0 (arg0 at entry) +0x132.
  18 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x40ce0c, `sw` at 0x40ce60, `sw` at 0x40ceb4.
  The `lh` at 0x40ce18 loads 2 bytes from a0 (arg0 at entry) +0x134.
  8 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x4, including `sw` at 0x40ce1c, `sw` at 0x40ce48, `sw` at 0x40ce70.
  4 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x121, including `lbu` at 0x40ce24, `lbu` at 0x40ce78, `lbu` at 0x40cf38.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lw` at 0x40ce38, `lw` at 0x40ce8c.
  The `lbu` at 0x40ce3c loads 1 byte from a0 (arg0 at entry) +0x12b.
  The `lh` at 0x40ce5c loads 2 bytes from a0 (arg0 at entry) +0x13a.
  The `lh` at 0x40ce6c loads 2 bytes from a0 (arg0 at entry) +0x13c.
  The `lbu` at 0x40ce90 loads 1 byte from a0 (arg0 at entry) +0x12c.
  The `lh` at 0x40ceb0 loads 2 bytes from a0 (arg0 at entry) +0x136.
  The `lh` at 0x40cec0 loads 2 bytes from a0 (arg0 at entry) +0x138.
  The `lh` at 0x40cf18 loads 2 bytes from a0 (arg0 at entry) +0x14a.
  The `lh` at 0x40cf28 loads 2 bytes from a0 (arg0 at entry) +0x14c.
  The `lw` at 0x40cf54 loads 4 bytes from a3 (arg3 at entry) +0x0.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x14e, including `lh` at 0x40cf7c, `lh` at 0x40cf9c.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x150, including `lh` at 0x40cf84, `lh` at 0x40cfdc.
  The `lh` at 0x40d020 loads 2 bytes from a0 (arg0 at entry) +0x146.
  The `lh` at 0x40d030 loads 2 bytes from a0 (arg0 at entry) +0x148.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x125, including `lbu` at 0x40d078, `lbu` at 0x40d0d0.
  The `lw` at 0x40d098 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `lbu` at 0x40d0b0 loads 1 byte from a0 (arg0 at entry) +0x123.
  The `lbu` at 0x40d0f4 loads 1 byte from a0 (arg0 at entry) +0x126.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x156, including `lbu` at 0x40d114, `lbu` at 0x40d17c.
  The `lbu` at 0x40d12c loads 1 byte from a0 (arg0 at entry) +0x122.
  The `lbu` at 0x40d148 loads 1 byte from a0 (arg0 at entry) +0x129.
  The `lbu` at 0x40d164 loads 1 byte from a0 (arg0 at entry) +0x124.
  The `jalr` at 0x40ced8 calls mvpRead with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40cf00 calls mvpGetScreenInfo [0x409e88] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40cf80 calls mvpGCD with a0=[a0+334]:2, a1=[a0+336]:2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40d04c calls mvptovlcaptype [0x40816c] with a0=[a0+289]:1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40d074 calls mvptovlcolorspace [0x408738] with a0=[a0+293]:1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40d0cc calls mvptovlformat [0x408a5c] with a0=[a0+293]:1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40d0f0 calls mvptovlmemmode with a0=[a0+294]:1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x40cd98 targets 0x40cdd4, is taken when s0(=a2) < 0x46 (signed), and falls through when s0(=a2) >= 0x46 (signed).
  The `beq` branch at 0x40cdb0 targets 0x40d18c, is taken when t6(=a2+0xffffffffb2a9fffb) >= 0x13 (unsigned), and falls through when t6(=a2+0xffffffffb2a9fffb) < 0x13 (unsigned).
  The `beq` branch at 0x40cddc targets 0x40d18c, is taken when t7(=a2-2) >= 0x44 (unsigned), and falls through when t7(=a2-2) < 0x44 (unsigned).
  The `bne` branch at 0x40ce28 targets 0x40ce4c, is taken when t5(=[a0+289]:1) != 0, and falls through when t5(=[a0+289]:1) == 0.
  The `beq` branch at 0x40ce4c targets 0x40d194 and is always taken.
  The `bne` branch at 0x40ce7c targets 0x40cea0, is taken when t0(=[a0+289]:1) != 0, and falls through when t0(=[a0+289]:1) == 0.
  The `beq` branch at 0x40cea0 targets 0x40d194 and is always taken.
  The `beq` branch at 0x40cec8 targets 0x40d194 and is always taken.
  The `bne` branch at 0x40cee4 targets 0x40cf10, is taken when v0(=ret(mvpRead)) != at(=0x2), and falls through when v0(=ret(mvpRead)) == at(=0x2).
  The `beq` branch at 0x40cf08 targets 0x40cf6c and is always taken.
  The `beq` branch at 0x40cf3c targets 0x40cf6c, is taken when t0(=[a0+289]:1) == at(=0x3), and falls through when t0(=[a0+289]:1) != at(=0x3).
  The `beq` branch at 0x40cf48 targets 0x40cf6c, is taken when t0(=[a0+289]:1) == at(=0x4), and falls through when t0(=[a0+289]:1) != at(=0x4).
  The `bgez` branch at 0x40cf58 targets 0x40cf68, is taken when t3(=[a3]) >= 0 (signed), and falls through when t3(=[a3]) < 0 (signed).
  The `beq` branch at 0x40cf6c targets 0x40d194 and is always taken.
  The `bne` branch at 0x40cfac targets 0x40cfb8, is taken when t7(=ret(mvpGCD)) != 0, and falls through when t7(=ret(mvpGCD)) == 0.
  The `bne` branch at 0x40cfbc targets 0x40cfd0, is taken when t7(=ret(mvpGCD)) != at(=-0x1), and falls through when t7(=ret(mvpGCD)) == at(=-0x1).
  The `bne` branch at 0x40cfc4 targets 0x40cfd0, is taken when t1(=[a0+334]:2) != at(=0xffffffff80000000), and falls through when t1(=[a0+334]:2) == at(=0xffffffff80000000).
  The `bne` branch at 0x40cfec targets 0x40cff8, is taken when t2(=ret(mvpGCD)) != 0, and falls through when t2(=ret(mvpGCD)) == 0.
  The `bne` branch at 0x40cffc targets 0x40d010, is taken when t2(=ret(mvpGCD)) != at(=-0x1), and falls through when t2(=ret(mvpGCD)) == at(=-0x1).
  The `bne` branch at 0x40d004 targets 0x40d010, is taken when t3(=[a0+336]:2) != at(=0xffffffff80000000), and falls through when t3(=[a0+336]:2) == at(=0xffffffff80000000).
  The `beq` branch at 0x40d010 targets 0x40d194 and is always taken.
  The `beq` branch at 0x40d038 targets 0x40d194 and is always taken.
  The `beq` branch at 0x40d060 targets 0x40d194 and is always taken.
  The `beq` branch at 0x40d088 targets 0x40d194 and is always taken.
  The `beq` branch at 0x40d0a0 targets 0x40d194 and is always taken.
  The `beq` branch at 0x40d0b8 targets 0x40d194 and is always taken.
  The `beq` branch at 0x40d0e0 targets 0x40d194 and is always taken.
  The `beq` branch at 0x40d104 targets 0x40d194 and is always taken.
  The `beq` branch at 0x40d11c targets 0x40d194 and is always taken.
  The `beq` branch at 0x40d138 targets 0x40d194 and is always taken.
  The `beq` branch at 0x40d154 targets 0x40d194 and is always taken.
  The `beq` branch at 0x40d16c targets 0x40d194 and is always taken.
  The `beq` branch at 0x40d184 targets 0x40d194 and is always taken.
  The `beq` branch at 0x40d18c targets 0x40d1a4 and is always taken.
  The `beq` branch at 0x40d194 targets 0x40d1a4 and is always taken.
  The return at 0x40d1b0 has v0 = one of 0x0, 0x7.
  The instructions from 0x40d19c to 0x40d1a0 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x40cdcc uses the jump table at 0x4158c8 with targets 0x40d124, 0x40d140, 0x40d15c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40ce54, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d174.
  The indirect jump at 0x40cdf8 uses the jump table at 0x415914 with targets 0x40cea8, 0x40ce00, 0x40ce54, 0x40ced0, 0x40d040, 0x40d090, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d0a8, 0x40d18c, 0x40d18c, 0x40d0c0, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40cf74, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d18c, 0x40d018, 0x40d18c, 0x40d10c, 0x40d18c, 0x40d0e8, 0x40d18c, 0x40d068.

- `mvpSetScreenControl` in `usr/lib/dmedia/video/debug/mvp.so` at 0x40d1b8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x40d1b8-0x40d5b4 (1020 bytes).
  It occupies 1020 bytes.
  The `lw` at 0x40d1f4 loads 4 bytes from a3 (arg3 at entry) +0xc.
  5 such `lw` accesses load 4 bytes from [a3+12] +0x0, including `lw` at 0x40d25c, `lw` at 0x40d2a8, `lw` at 0x40d490.
  The `lw` at 0x40d2b4 loads 4 bytes from [a3+12] +0x4.
  The `lh` at 0x40d2c0 loads 2 bytes from a0 (arg0 at entry) +0x13a.
  The `lh` at 0x40d2cc loads 2 bytes from a0 (arg0 at entry) +0x13c.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x128, including `lbu` at 0x40d41c, `lbu` at 0x40d53c.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x136, including `sh` at 0x40d460, `sh` at 0x40d4e4.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x40d468, `sw` at 0x40d47c, `sw` at 0x40d580.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x138, including `sh` at 0x40d474, `sh` at 0x40d4ec.
  The `sb` at 0x40d494 stores 1 byte to a0 (arg0 at entry) +0x123.
  The `sb` at 0x40d4b0 stores 1 byte to a0 (arg0 at entry) +0x156.
  The `sb` at 0x40d4cc stores 1 byte to a0 (arg0 at entry) +0x157.
  The `lbu` at 0x40d4d4 loads 1 byte from a0 (arg0 at entry) +0x157.
  The `lbu` at 0x40d4f8 loads 1 byte from a0 (arg0 at entry) +0x121.
  The `sb` at 0x40d518 stores 1 byte to a0 (arg0 at entry) +0x121.
  The `jalr` at 0x40d258 calls mvpfromvltiming [0x4068c0] with a0=a0 at entry (arg0), a1=[[a3+12]], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40d290 calls mvpSetTiming [0x406d98] with a0=a0 at entry (arg0), a1=ret(mvpfromvltiming), a2=?, a3=?.
  The `jalr` at 0x40d2e8 calls mvpGetCFI [0x406d34] with a0=a0 at entry (arg0), a1=sp-160, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40d538 calls mvpSetTiming [0x406d98] with a0=a0 at entry (arg0), a1=[a0+296]:1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40d550 calls mvpSetFields [0x406b90] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x40d204 targets 0x40d248, is taken when s0(=a2) == at(=0x1), and falls through when s0(=a2) != at(=0x1).
  The `beq` branch at 0x40d210 targets 0x40d2a4, is taken when s0(=a2) == at(=0x2), and falls through when s0(=a2) != at(=0x2).
  The `beq` branch at 0x40d21c targets 0x40d488, is taken when s0(=a2) == at(=0x12), and falls through when s0(=a2) != at(=0x12).
  The `beq` branch at 0x40d228 targets 0x40d4a0, is taken when s0(=a2) == at(=0x40), and falls through when s0(=a2) != at(=0x40).
  The `beq` branch at 0x40d238 targets 0x40d4bc, is taken when s0(=a2) == at(=0x4d56000c), and falls through when s0(=a2) != at(=0x4d56000c).
  The `beq` branch at 0x40d240 targets 0x40d570 and is always taken.
  The `bne` branch at 0x40d270 targets 0x40d280, is taken when t9(=ret(mvpfromvltiming)) != at(=-0x1), and falls through when t9(=ret(mvpfromvltiming)) == at(=-0x1).
  The `beq` branch at 0x40d278 targets 0x40d5a0 and is always taken.
  The `beq` branch at 0x40d29c targets 0x40d578 and is always taken.
  The `bgez` branch at 0x40d2f8 targets 0x40d30c, is taken when t9(=[[a3+12]]) >= 0 (signed), and falls through when t9(=[[a3+12]]) < 0 (signed).
  The `bgez` branch at 0x40d310 targets 0x40d324, is taken when t1(=[[a3+12]+4]) >= 0 (signed), and falls through when t1(=[[a3+12]+4]) < 0 (signed).
  The `bne` branch at 0x40d338 targets 0x40d35c, is taken when t3(?) < t6(?) (signed), and falls through when t3(?) >= t6(?) (signed).
  The `bne` branch at 0x40d370 targets 0x40d394, is taken when t2(?) < t3(?) (signed), and falls through when t2(?) >= t3(?) (signed).
  The `bne` branch at 0x40d3c4 targets 0x40d414, is taken when t7(?) < t9(?) (signed), and falls through when t7(?) >= t9(?) (signed).
  The `bne` branch at 0x40d3dc targets 0x40d414, is taken when t0(?) < t4(?) (signed), and falls through when t0(?) >= t4(?) (signed).
  The `bne` branch at 0x40d420 targets 0x40d458, is taken when t5(=[a0+296]:1) != at(=0xd), and falls through when t5(=[a0+296]:1) == at(=0xd).
  The `bne` branch at 0x40d430 targets 0x40d458, is taken when t2(?) < 0x4f4 (signed), and falls through when t2(?) >= 0x4f4 (signed).
  The `bne` branch at 0x40d440 targets 0x40d458, is taken when t3(?) < 0x3fe (signed), and falls through when t3(?) >= 0x3fe (signed).
  The `beq` branch at 0x40d480 targets 0x40d578 and is always taken.
  The `beq` branch at 0x40d498 targets 0x40d578 and is always taken.
  The `beq` branch at 0x40d4b4 targets 0x40d578 and is always taken.
  The `beq` branch at 0x40d4d8 targets 0x40d568, is taken when t3(=[a0+343]:1) == 0, and falls through when t3(=[a0+343]:1) != 0.
  The `beq` branch at 0x40d4fc targets 0x40d528, is taken when t9(=[a0+289]:1) == at(=0x1), and falls through when t9(=[a0+289]:1) != at(=0x1).
  The `beq` branch at 0x40d508 targets 0x40d528, is taken when t9(=[a0+289]:1) == at(=0x2), and falls through when t9(=[a0+289]:1) != at(=0x2).
  The `beq` branch at 0x40d568 targets 0x40d578 and is always taken.
  The `beq` branch at 0x40d570 targets 0x40d5a0 and is always taken.
  The `beq` branch at 0x40d588 targets 0x40d590, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x40d590 targets 0x40d5a0 and is always taken.
  The return at 0x40d5ac has v0 = one of 0x2, 0x7, ?.
  The instructions from 0x40d598 to 0x40d59c are not reached by any path from the entry, and their branches are not listed.

- `mvpGetScreenControl` in `usr/lib/dmedia/video/debug/mvp.so` at 0x40d5b4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x40d5b4-0x40d7c0 (524 bytes).
  It occupies 524 bytes.
  The `lw` at 0x40d624 loads 4 bytes from table(0x415a24) +0x0.
  The `lbu` at 0x40d644 loads 1 byte from a0 (arg0 at entry) +0x128.
  9 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x40d650, `sw` at 0x40d668, `sw` at 0x40d6b8.
  The `lh` at 0x40d664 loads 2 bytes from a0 (arg0 at entry) +0x136.
  The `lh` at 0x40d674 loads 2 bytes from a0 (arg0 at entry) +0x138.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x4, including `sw` at 0x40d678, `sw` at 0x40d6c8.
  The `lh` at 0x40d6b4 loads 2 bytes from a0 (arg0 at entry) +0x14e.
  The `lh` at 0x40d6c4 loads 2 bytes from a0 (arg0 at entry) +0x150.
  The `lbu` at 0x40d6e4 loads 1 byte from a0 (arg0 at entry) +0x121.
  The `lbu` at 0x40d70c loads 1 byte from a0 (arg0 at entry) +0x127.
  The `lbu` at 0x40d72c loads 1 byte from a0 (arg0 at entry) +0x123.
  The `lbu` at 0x40d74c loads 1 byte from a0 (arg0 at entry) +0x125.
  The `lbu` at 0x40d76c loads 1 byte from a0 (arg0 at entry) +0x156.
  The `lbu` at 0x40d784 loads 1 byte from a0 (arg0 at entry) +0x157.
  The `jalr` at 0x40d640 calls mvptovltiming [0x407ff8] with a0=[a0+296]:1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40d698 calls mvpGetScreenInfo [0x409e88] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40d6e0 calls mvptovlcaptype [0x40816c] with a0=[a0+289]:1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40d708 calls mvptovlpacking [0x408294] with a0=[a0+295]:1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40d748 calls mvptovlformat [0x408a5c] with a0=[a0+293]:1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x40d5e8 targets 0x40d608, is taken when s0(=a2) < 0x41 (signed), and falls through when s0(=a2) >= 0x41 (signed).
  The `beq` branch at 0x40d5f8 targets 0x40d77c, is taken when s0(=a2) == at(=0x4d56000c), and falls through when s0(=a2) != at(=0x4d56000c).
  The `beq` branch at 0x40d600 targets 0x40d794 and is always taken.
  The `beq` branch at 0x40d610 targets 0x40d794, is taken when t6(=a2-1) >= 0x40 (unsigned), and falls through when t6(=a2-1) < 0x40 (unsigned).
  The `beq` branch at 0x40d654 targets 0x40d79c and is always taken.
  The `beq` branch at 0x40d67c targets 0x40d79c and is always taken.
  The `beq` branch at 0x40d6a4 targets 0x40d79c and is always taken.
  The `beq` branch at 0x40d6cc targets 0x40d79c and is always taken.
  The `beq` branch at 0x40d6f4 targets 0x40d79c and is always taken.
  The `beq` branch at 0x40d71c targets 0x40d79c and is always taken.
  The `beq` branch at 0x40d734 targets 0x40d79c and is always taken.
  The `beq` branch at 0x40d75c targets 0x40d79c and is always taken.
  The `beq` branch at 0x40d774 targets 0x40d79c and is always taken.
  The `beq` branch at 0x40d78c targets 0x40d79c and is always taken.
  The `beq` branch at 0x40d794 targets 0x40d7ac and is always taken.
  The `beq` branch at 0x40d79c targets 0x40d7ac and is always taken.
  The return at 0x40d7b8 has v0 = one of 0x0, 0x7.
  The instructions from 0x40d7a4 to 0x40d7a8 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x40d62c uses the jump table at 0x415a24 with targets 0x40d634, 0x40d65c, 0x40d794, 0x40d684, 0x40d684, 0x40d6d4, 0x40d6fc, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d724, 0x40d794, 0x40d794, 0x40d73c, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d6ac, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d794, 0x40d764.

- `mvpfromvlkind` in `usr/lib/dmedia/video/debug/mvp.so` at 0x40d7c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x40d7c0-0x40e090 (2256 bytes).
  It occupies 2256 bytes.
  The `beq` branch at 0x40d7d8 targets 0x40d80c, is taken when a1(=a0) == at(=0x1), and falls through when a1(=a0) != at(=0x1).
  The `beq` branch at 0x40d7e4 targets 0x40d814, is taken when a1(=a0) == at(=0x3), and falls through when a1(=a0) != at(=0x3).
  The `beq` branch at 0x40d7f0 targets 0x40d81c, is taken when a1(=a0) == at(=0x4), and falls through when a1(=a0) != at(=0x4).
  The `beq` branch at 0x40d7fc targets 0x40d824, is taken when a1(=a0) == at(=0x10000000), and falls through when a1(=a0) != at(=0x10000000).
  The `beq` branch at 0x40d804 targets 0x40d82c and is always taken.
  The `beq` branch at 0x40d80c targets 0x40d83c and is always taken.
  The `beq` branch at 0x40d814 targets 0x40d83c and is always taken.
  The `beq` branch at 0x40d81c targets 0x40d83c and is always taken.
  The `beq` branch at 0x40d824 targets 0x40d83c and is always taken.
  The `beq` branch at 0x40d82c targets 0x40d83c and is always taken.
  The return at 0x40d83c has v0 = one of 0x1, 0x3, 0x2, 0xfe, 0x0.
  The instructions from 0x40d834 to 0x40d838 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x40d844 to 0x40e08c are not reached by any path from the entry, and their branches are not listed.

- `mvpGetControl` in `usr/lib/dmedia/video/debug/mvp.so` at 0x40d844 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x40d844-0x40dbc4 (896 bytes).
  It occupies 896 bytes.
  The `lw` at 0x40d870 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0x40d874 loads 4 bytes from [a1+4] +0x68.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x40d8ac, `lw` at 0x40db68.
  The `lw` at 0x40d8b0 loads 4 bytes from [a1+8] +0x4.
  5 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x40d8bc, `lw` at 0x40d8cc, `lw` at 0x40d920.
  2 such `lw` accesses load 4 bytes from [a1] +0x18, including `lw` at 0x40d8c0, `lw` at 0x40db10.
  The `lw` at 0x40d8d0 loads 4 bytes from [a1] +0xc.
  The `lw` at 0x40d8d4 loads 4 bytes from [[a1]+12] +0x0.
  5 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc, including `lw` at 0x40d908, `lw` at 0x40d99c, `lw` at 0x40d9cc.
  2 such `lw` accesses load 4 bytes from [a1] +0x1c, including `lw` at 0x40d92c, `lw` at 0x40db3c.
  The `lw` at 0x40da40 loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `lw` at 0x40da44 loads 4 bytes from [a1+16] +0x8.
  The `lw` at 0x40da64 loads 4 bytes from table(0x415b24) +0x0.
  The `lw` at 0x40db58 loads 4 bytes from table(0x417c1c) +0x0.
  The `lw` at 0x40db74 loads 4 bytes from [a1+8] +0x0.
  The `lw` at 0x40db88 loads 4 bytes from [a1+12] +0x0.
  The `lw` at 0x40db90 loads 4 bytes from [a1+12] +0x4.
  The `jalr` at 0x40d89c calls mvpAssertFail with a0=0x4150e4, a1=0x415110, a2=0xb74, a3=a3 at entry (arg3).
  The `jalr` at 0x40d904 calls mvpGetDeviceControl [0x409034] with a0=[[a1+4]+104], a1=0x0, a2=[[a1+8]+4], a3=[a1+12].
  The `jalr` at 0x40d928 calls mvpfromvlkind [0x40d7c0] with a0=[[a1]+28], a1=?, a2=?, a3=?.
  The `jalr` at 0x40d998 calls mvpGetVideoControl [0x4097a4] with a0=[[a1+4]+104], a1=[[[a1]+12]], a2=[[a1+8]+4], a3=[a1+12].
  The `jalr` at 0x40d9c8 calls mvpGetScreenControl [0x40d5b4] with a0=[[a1+4]+104], a1=[[[a1]+12]], a2=[[a1+8]+4], a3=[a1+12].
  The `jalr` at 0x40d9f8 calls mvpGetMemoryControl [0x40cd64] with a0=[[a1+4]+104], a1=[[[a1]+12]], a2=[[a1+8]+4], a3=[a1+12].
  The `jalr` at 0x40da28 calls mvpPrintf with a0=[[a1+4]+104], a1=0x415120, a2=ret(mvpfromvlkind), a3=[[a1+4]+104].
  The `jalr` at 0x40db38 calls mvpfromvlkind [0x40d7c0] with a0=[[a1]+28], a1=?, a2=?, a3=?.
  The `jalr` at 0x40db94 calls mvpPrintf with a0=[[a1+4]+104], a1=?, a2=0x4151a8, a3=?.
  The `beq` branch at 0x40d878 targets 0x40d888, is taken when t8(=[[a1+4]+104]) == 0, and falls through when t8(=[[a1+4]+104]) != 0.
  The `beq` branch at 0x40d880 targets 0x40d8a8 and is always taken.
  The `bne` branch at 0x40d8e4 targets 0x40d918, is taken when t9(=[[a1]+24]) != at(=0x3), and falls through when t9(=[[a1]+24]) == at(=0x3).
  The `beq` branch at 0x40d910 targets 0x40da3c and is always taken.
  The `bne` branch at 0x40d93c targets 0x40d950, is taken when t3(=ret(mvpfromvlkind)) != 0, and falls through when t3(=ret(mvpfromvlkind)) == 0.
  The `beq` branch at 0x40d948 targets 0x40da3c and is always taken.
  The `beq` branch at 0x40d958 targets 0x40d980, is taken when s0(=ret(mvpfromvlkind)) == at(=0x1), and falls through when s0(=ret(mvpfromvlkind)) != at(=0x1).
  The `beq` branch at 0x40d964 targets 0x40d9b0, is taken when s0(=ret(mvpfromvlkind)) == at(=0x2), and falls through when s0(=ret(mvpfromvlkind)) != at(=0x2).
  The `beq` branch at 0x40d970 targets 0x40d9e0, is taken when s0(=ret(mvpfromvlkind)) == at(=0x3), and falls through when s0(=ret(mvpfromvlkind)) != at(=0x3).
  The `beq` branch at 0x40d978 targets 0x40da10 and is always taken.
  The `beq` branch at 0x40d9a8 targets 0x40da3c and is always taken.
  The `beq` branch at 0x40d9d8 targets 0x40da3c and is always taken.
  The `beq` branch at 0x40da08 targets 0x40da3c and is always taken.
  The `beq` branch at 0x40da34 targets 0x40dbb0 and is always taken.
  The `beq` branch at 0x40da50 targets 0x40daec, is taken when t2(=[[a1+16]+8]-1) >= 0xb (unsigned), and falls through when t2(=[[a1+16]+8]-1) < 0xb (unsigned).
  The `beq` branch at 0x40da80 targets 0x40daf8 and is always taken.
  The `beq` branch at 0x40da94 targets 0x40daf8 and is always taken.
  The `beq` branch at 0x40daa8 targets 0x40daf8 and is always taken.
  The `beq` branch at 0x40dabc targets 0x40daf8 and is always taken.
  The `beq` branch at 0x40dad0 targets 0x40daf8 and is always taken.
  The `beq` branch at 0x40dae4 targets 0x40daf8 and is always taken.
  The `beq` branch at 0x40daf0 targets 0x40daf8 and is always taken.
  The `beq` branch at 0x40dafc targets 0x40dba0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x40db14 targets 0x40db28, is taken when t2(=[[a1]+24]) != at(=0x3), and falls through when t2(=[[a1]+24]) == at(=0x3).
  The `beq` branch at 0x40db20 targets 0x40db5c and is always taken.
  The `beq` branch at 0x40dba0 targets 0x40dbb0 and is always taken.
  The return at 0x40dbbc has v0 = one of 0x4, ?.
  The instructions from 0x40dba8 to 0x40dbac are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x40da6c uses the jump table at 0x415b24 with targets 0x40dab0, 0x40da74, 0x40da88, 0x40da9c, 0x40dac4, 0x40daec, 0x40daec, 0x40daec, 0x40daec, 0x40daec, 0x40dad8.
  The indirect jump at 0x40da6c uses the jump table at 0x415b24 with targets 0x40dab0, 0x40da74, 0x40da88, 0x40da9c, 0x40dac4, 0x40daec, 0x40daec, 0x40daec, 0x40daec, 0x40daec, 0x40dad8.
  The indirect jump at 0x40da6c uses the jump table at 0x415b24 with targets 0x40dab0, 0x40da74, 0x40da88, 0x40da9c, 0x40dac4, 0x40daec, 0x40daec, 0x40daec, 0x40daec, 0x40daec, 0x40dad8.

- `mvpSetControl` in `usr/lib/dmedia/video/debug/mvp.so` at 0x40dbc4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x40dbc4-0x40e090 (1228 bytes).
  It occupies 1228 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lw` at 0x40dbf4, `lw` at 0x40de08.
  The `lw` at 0x40dbf8 loads 4 bytes from [a1+4] +0x68.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x10, including `lw` at 0x40dc30, `lw` at 0x40de20.
  The `lw` at 0x40dc34 loads 4 bytes from [a1+16] +0x8.
  The `lw` at 0x40dc54 loads 4 bytes from table(0x415b50) +0x0.
  5 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x40dcfc, `lw` at 0x40dd20, `lw` at 0x40dda4.
  2 such `lw` accesses load 4 bytes from [a1] +0x18, including `lw` at 0x40dd00, `lw` at 0x40dda8.
  2 such `lw` accesses load 4 bytes from [a1] +0x1c, including `lw` at 0x40dd2c, `lw` at 0x40dea8.
  The `lw` at 0x40dd48 loads 4 bytes from table(0x417c1c) +0x0.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x40dd58, `lw` at 0x40dd94, `lw` at 0x40de10.
  The `lw` at 0x40dd64 loads 4 bytes from [a1+8] +0x0.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc, including `lw` at 0x40dd74, `lw` at 0x40ddcc, `lw` at 0x40de18.
  The `lw` at 0x40dd78 loads 4 bytes from [a1+12] +0x0.
  The `lw` at 0x40dd80 loads 4 bytes from [a1+12] +0x4.
  2 such `lw` accesses load 4 bytes from [a1+8] +0x4, including `lw` at 0x40dd98, `lw` at 0x40de3c.
  The `lw` at 0x40ddb8 loads 4 bytes from [a1] +0xc.
  The `lw` at 0x40ddbc loads 4 bytes from [[a1]+12] +0x0.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x40ddd4, `lw` at 0x40dde4, `lw` at 0x40ddec.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x40dde0, `sw` at 0x40dde8, `sw` at 0x40ddf4.
  The `jalr` at 0x40dc20 calls mvpAssertFail with a0=0x4151bc, a1=0x4151e8, a2=0xbbe, a3=a3 at entry (arg3).
  The `jalr` at 0x40dd28 calls mvpfromvlkind [0x40d7c0] with a0=[[a1]+28], a1=?, a2=?, a3=?.
  The `jalr` at 0x40dd84 calls mvpPrintf with a0=?, a1=?, a2=0x415248, a3=?.
  The `jalr` at 0x40de54 calls mvpSendPathControls with a0=?, a1=0x1, a2=sp-148, a3=?.
  The `jalr` at 0x40de88 calls mvpSetDeviceControl [0x408e54] with a0=?, a1=0x0, a2=[[a1+8]+4], a3=sp-148.
  The `jalr` at 0x40dea4 calls mvpfromvlkind [0x40d7c0] with a0=[[a1]+28], a1=?, a2=?, a3=?.
  The `jalr` at 0x40df14 calls mvpSetVideoControl [0x4090f8] with a0=?, a1=?, a2=?, a3=sp-148.
  The `jalr` at 0x40df48 calls mvpSetScreenControl [0x40d1b8] with a0=?, a1=?, a2=?, a3=sp-148.
  The `jalr` at 0x40df7c calls mvpSetMemoryControl [0x409f50] with a0=?, a1=?, a2=?, a3=sp-148.
  The `jalr` at 0x40dfac calls mvpPrintf with a0=?, a1=0x41525c, a2=ret(mvpfromvlkind), a3=?.
  The `jalr` at 0x40dff4 calls mvpUpdateRegs with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e00c calls mvpPanic with a0=0x415294, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e030 calls mvpSendPathControls with a0=?, a1=0x1, a2=sp-148, a3=?.
  The `beq` branch at 0x40dbfc targets 0x40dc0c, is taken when t8(=[[a1+4]+104]) == 0, and falls through when t8(=[[a1+4]+104]) != 0.
  The `beq` branch at 0x40dc04 targets 0x40dc2c and is always taken.
  The `beq` branch at 0x40dc40 targets 0x40dcdc, is taken when t2(=[[a1+16]+8]-1) >= 0xb (unsigned), and falls through when t2(=[[a1+16]+8]-1) < 0xb (unsigned).
  The `beq` branch at 0x40dc70 targets 0x40dce8 and is always taken.
  The `beq` branch at 0x40dc84 targets 0x40dce8 and is always taken.
  The `beq` branch at 0x40dc98 targets 0x40dce8 and is always taken.
  The `beq` branch at 0x40dcac targets 0x40dce8 and is always taken.
  The `beq` branch at 0x40dcc0 targets 0x40dce8 and is always taken.
  The `beq` branch at 0x40dcd4 targets 0x40dce8 and is always taken.
  The `beq` branch at 0x40dce0 targets 0x40dce8 and is always taken.
  The `beq` branch at 0x40dcec targets 0x40dd90, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x40dd04 targets 0x40dd18, is taken when t2(=[[a1]+24]) != at(=0x3), and falls through when t2(=[[a1]+24]) == at(=0x3).
  The `beq` branch at 0x40dd10 targets 0x40dd4c and is always taken.
  The `bne` branch at 0x40ddf0 targets 0x40ddd4, is taken when t6(?) != t0(=[a1+12]+96), and falls through when t6(?) == t0(=[a1+12]+96).
  The `bne` branch at 0x40de40 targets 0x40de64, is taken when t6(=[[a1+8]+4]) != at(=0x4d560008), and falls through when t6(=[[a1+8]+4]) == at(=0x4d560008).
  The `beq` branch at 0x40de5c targets 0x40e07c and is always taken.
  The `bne` branch at 0x40de6c targets 0x40de98, is taken when t4(=[[a1]+24]) != at(=0x3), and falls through when t4(=[[a1]+24]) == at(=0x3).
  The `beq` branch at 0x40de90 targets 0x40e07c and is always taken.
  The `bne` branch at 0x40deb8 targets 0x40dec8, is taken when t9(=ret(mvpfromvlkind)) != 0, and falls through when t9(=ret(mvpfromvlkind)) == 0.
  The `beq` branch at 0x40dec0 targets 0x40e07c and is always taken.
  The `beq` branch at 0x40ded0 targets 0x40def8, is taken when s0(=ret(mvpfromvlkind)) == at(=0x1), and falls through when s0(=ret(mvpfromvlkind)) != at(=0x1).
  The `beq` branch at 0x40dedc targets 0x40df2c, is taken when s0(=ret(mvpfromvlkind)) == at(=0x2), and falls through when s0(=ret(mvpfromvlkind)) != at(=0x2).
  The `beq` branch at 0x40dee8 targets 0x40df60, is taken when s0(=ret(mvpfromvlkind)) == at(=0x3), and falls through when s0(=ret(mvpfromvlkind)) != at(=0x3).
  The `beq` branch at 0x40def0 targets 0x40df94 and is always taken.
  The `beq` branch at 0x40df24 targets 0x40dfc0 and is always taken.
  The `beq` branch at 0x40df58 targets 0x40dfc0 and is always taken.
  The `beq` branch at 0x40df8c targets 0x40dfc0 and is always taken.
  The `beq` branch at 0x40dfb8 targets 0x40e07c and is always taken.
  The `beq` branch at 0x40dfc4 targets 0x40dfd8, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The `bne` branch at 0x40dfd0 targets 0x40e03c, is taken when t5(?) != at(=0x19), and falls through when t5(?) == at(=0x19).
  The `bne` branch at 0x40dfe4 targets 0x40e03c, is taken when (t6(?) & 0x200) != 0, and falls through when (t6(?) & 0x200) == 0.
  The `beq` branch at 0x40dffc targets 0x40e018, is taken when v0(=ret(mvpUpdateRegs)) == 0, and falls through when v0(=ret(mvpUpdateRegs)) != 0.
  The `beq` branch at 0x40e01c targets 0x40e03c, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `bne` branch at 0x40e044 targets 0x40e054, is taken when t9(?) != at(=0x400), and falls through when t9(?) == at(=0x400).
  The `beq` branch at 0x40e04c targets 0x40e06c and is always taken.
  The `bne` branch at 0x40e05c targets 0x40e06c, is taken when t8(?) != at(=0x401), and falls through when t8(?) == at(=0x401).
  The `beq` branch at 0x40e06c targets 0x40e07c and is always taken.
  The return at 0x40e088 has v0 = one of ret(mvpSendPathControls), ret(mvpSetDeviceControl), 0x4, ?.
  The instructions from 0x40e074 to 0x40e078 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x40dc5c uses the jump table at 0x415b50 with targets 0x40dca0, 0x40dc64, 0x40dc78, 0x40dc8c, 0x40dcb4, 0x40dcdc, 0x40dcdc, 0x40dcdc, 0x40dcdc, 0x40dcdc, 0x40dcc8.
  The indirect jump at 0x40dc5c uses the jump table at 0x415b50 with targets 0x40dca0, 0x40dc64, 0x40dc78, 0x40dc8c, 0x40dcb4, 0x40dcdc, 0x40dcdc, 0x40dcdc, 0x40dcdc, 0x40dcdc, 0x40dcc8.

- `mvpUpdateNodes` in `usr/lib/dmedia/video/debug/mvp.so` at 0x40e090 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x40e090-0x40e6c4 (1588 bytes).
  It occupies 1588 bytes.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xc, including `sw` at 0x40e164, `sw` at 0x40e1a0, `sw` at 0x40e32c.
  3 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x123, including `lbu` at 0x40e170, `lbu` at 0x40e308, `lbu` at 0x40e510.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x40e1ac, `lw` at 0x40e338, `lw` at 0x40e540.
  27 such `lw` accesses load 4 bytes from ?, including `lw` at 0x40e1bc, `lw` at 0x40e200, `lw` at 0x40e230.
  The `lw` at 0x40e1d8 loads 4 bytes from table(0x4164bc) +0x0.
  22 such `sw` accesses store 4 bytes to ?, including `sw` at 0x40e220, `sw` at 0x40e23c, `sw` at 0x40e244.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `sw` at 0x40e2f4, `sw` at 0x40e500, `sw` at 0x40e684.
  The `lw` at 0x40e364 loads 4 bytes from table(0x4164e8) +0x0.
  The `lbu` at 0x40e40c loads 1 byte from a1 (arg1 at entry) +0x143.
  The `lw` at 0x40e56c loads 4 bytes from table(0x416514) +0x0.
  The `jalr` at 0x40e0c8 calls getenv with a0=0x416468, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40e0f0 calls atoi with a0=ret(getenv), a1=?, a2=?, a3=?.
  The `jalr` at 0x40e110 calls getenv with a0=0x416474, a1=?, a2=?, a3=?.
  The `jalr` at 0x40e138 calls atoi with a0=ret(getenv), a1=?, a2=?, a3=?.
  The `jalr` at 0x40e69c calls mvpErrPrintf with a0=0x0, a1=0x41647c, a2=?, a3=?.
  The `beq` branch at 0x40e0e0 targets 0x40e104, is taken when 0 >= t8(=ret(getenv)) (unsigned), and falls through when 0 < t8(=ret(getenv)) (unsigned).
  The `beq` branch at 0x40e128 targets 0x40e148, is taken when 0 >= t9(=ret(getenv)) (unsigned), and falls through when 0 < t9(=ret(getenv)) (unsigned).
  The `beq` branch at 0x40e150 targets 0x40e168, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x40e160 targets 0x40e6a8 and is always taken.
  The `beq` branch at 0x40e174 targets 0x40e188, is taken when t4(=[a1+291]:1) == at(=0x2), and falls through when t4(=[a1+291]:1) != at(=0x2).
  The `beq` branch at 0x40e180 targets 0x40e300, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The `blez` branch at 0x40e1b0 targets 0x40e2ec, is taken when t1(=[a0+8]) <= 0 (signed), and falls through when t1(=[a0+8]) > 0 (signed).
  The `beq` branch at 0x40e1c4 targets 0x40e280, is taken when t3(?) >= 0xb (unsigned), and falls through when t3(?) < 0xb (unsigned).
  The `beq` branch at 0x40e1f4 targets 0x40e2dc and is always taken.
  The `bne` branch at 0x40e204 targets 0x40e21c, is taken when t7(?) != 0, and falls through when t7(?) == 0.
  The `beq` branch at 0x40e214 targets 0x40e278 and is always taken.
  The `bne` branch at 0x40e24c targets 0x40e230, is taken when t2(?) != t5(?), and falls through when t2(?) == t5(?).
  The `beq` branch at 0x40e278 targets 0x40e2dc and is always taken.
  The `bne` branch at 0x40e2a8 targets 0x40e28c, is taken when t1(?) != t6(?), and falls through when t1(?) == t6(?).
  The `beq` branch at 0x40e2d4 targets 0x40e2dc and is always taken.
  The `bgtz` branch at 0x40e2e4 targets 0x40e1b8, is taken when t2(?) > 0 (signed), and falls through when t2(?) <= 0 (signed).
  The `beq` branch at 0x40e2f8 targets 0x40e6a8 and is always taken.
  The `bne` branch at 0x40e30c targets 0x40e50c, is taken when t8(=[a1+291]:1) != at(=0x1), and falls through when t8(=[a1+291]:1) == at(=0x1).
  The `blez` branch at 0x40e33c targets 0x40e4f8, is taken when t2(=[a0+8]) <= 0 (signed), and falls through when t2(=[a0+8]) > 0 (signed).
  The `beq` branch at 0x40e350 targets 0x40e48c, is taken when t4(?) >= 0xb (unsigned), and falls through when t4(?) < 0xb (unsigned).
  The `beq` branch at 0x40e380 targets 0x40e4e8 and is always taken.
  The `bne` branch at 0x40e394 targets 0x40e3ac, is taken when t0(?) != at(=0x1), and falls through when t0(?) == at(=0x1).
  The `beq` branch at 0x40e3a4 targets 0x40e400 and is always taken.
  The `bne` branch at 0x40e3d4 targets 0x40e3b8, is taken when t2(?) != t7(?), and falls through when t2(?) == t7(?).
  The `beq` branch at 0x40e400 targets 0x40e4e8 and is always taken.
  The `beq` branch at 0x40e414 targets 0x40e478, is taken when (t1(=[a1+323]:1) & 0x1) == 0, and falls through when (t1(=[a1+323]:1) & 0x1) != 0.
  The `bne` branch at 0x40e444 targets 0x40e428, is taken when t8(?) != t5(?), and falls through when t8(?) == t5(?).
  The `beq` branch at 0x40e470 targets 0x40e4e8 and is always taken.
  The `beq` branch at 0x40e484 targets 0x40e4e8 and is always taken.
  The `bne` branch at 0x40e4b4 targets 0x40e498, is taken when t0(?) != t2(?), and falls through when t0(?) == t2(?).
  The `beq` branch at 0x40e4e0 targets 0x40e4e8 and is always taken.
  The `bgtz` branch at 0x40e4f0 targets 0x40e344, is taken when t9(?) > 0 (signed), and falls through when t9(?) <= 0 (signed).
  The `beq` branch at 0x40e504 targets 0x40e6a8 and is always taken.
  The `bne` branch at 0x40e514 targets 0x40e690, is taken when t3(=[a1+291]:1) != 0, and falls through when t3(=[a1+291]:1) == 0.
  The `blez` branch at 0x40e544 targets 0x40e67c, is taken when t9(=[a0+8]) <= 0 (signed), and falls through when t9(=[a0+8]) > 0 (signed).
  The `beq` branch at 0x40e558 targets 0x40e610, is taken when t7(?) >= 0xb (unsigned), and falls through when t7(?) < 0xb (unsigned).
  The `beq` branch at 0x40e588 targets 0x40e66c and is always taken.
  The `bne` branch at 0x40e59c targets 0x40e5b4, is taken when t8(?) != at(=0x1), and falls through when t8(?) == at(=0x1).
  The `beq` branch at 0x40e5ac targets 0x40e608 and is always taken.
  The `bne` branch at 0x40e5dc targets 0x40e5c0, is taken when t9(?) != t1(?), and falls through when t9(?) == t1(?).
  The `beq` branch at 0x40e608 targets 0x40e66c and is always taken.
  The `bne` branch at 0x40e638 targets 0x40e61c, is taken when t0(?) != t3(?), and falls through when t0(?) == t3(?).
  The `beq` branch at 0x40e664 targets 0x40e66c and is always taken.
  The `bgtz` branch at 0x40e674 targets 0x40e54c, is taken when t9(?) > 0 (signed), and falls through when t9(?) <= 0 (signed).
  The `beq` branch at 0x40e688 targets 0x40e6a8 and is always taken.
  The `beq` branch at 0x40e6a8 targets 0x40e6b0 and is always taken.
  The return at 0x40e6bc has v0 = ?.
  The indirect jump at 0x40e36c uses the jump table at 0x4164e8 with targets 0x40e388, 0x40e408, 0x40e48c, 0x40e48c, 0x40e48c, 0x40e374, 0x40e374, 0x40e48c, 0x40e48c, 0x40e48c, 0x40e388.
  The indirect jump at 0x40e36c uses the jump table at 0x4164e8 with targets 0x40e388, 0x40e408, 0x40e48c, 0x40e48c, 0x40e48c, 0x40e374, 0x40e374, 0x40e48c, 0x40e48c, 0x40e48c, 0x40e388.
  The indirect jump at 0x40e36c uses the jump table at 0x4164e8 with targets 0x40e388, 0x40e408, 0x40e48c, 0x40e48c, 0x40e48c, 0x40e374, 0x40e374, 0x40e48c, 0x40e48c, 0x40e48c, 0x40e388.
  The indirect jump at 0x40e36c uses the jump table at 0x4164e8 with targets 0x40e388, 0x40e408, 0x40e48c, 0x40e48c, 0x40e48c, 0x40e374, 0x40e374, 0x40e48c, 0x40e48c, 0x40e48c, 0x40e388.
  The indirect jump at 0x40e36c uses the jump table at 0x4164e8 with targets 0x40e388, 0x40e408, 0x40e48c, 0x40e48c, 0x40e48c, 0x40e374, 0x40e374, 0x40e48c, 0x40e48c, 0x40e48c, 0x40e388.
  The indirect jump at 0x40e36c uses the jump table at 0x4164e8 with targets 0x40e388, 0x40e408, 0x40e48c, 0x40e48c, 0x40e48c, 0x40e374, 0x40e374, 0x40e48c, 0x40e48c, 0x40e48c, 0x40e388.
  The indirect jump at 0x40e574 uses the jump table at 0x416514 with targets 0x40e590, 0x40e57c, 0x40e57c, 0x40e57c, 0x40e57c, 0x40e57c, 0x40e57c, 0x40e610, 0x40e610, 0x40e610, 0x40e590.
  The indirect jump at 0x40e574 uses the jump table at 0x416514 with targets 0x40e590, 0x40e57c, 0x40e57c, 0x40e57c, 0x40e57c, 0x40e57c, 0x40e57c, 0x40e610, 0x40e610, 0x40e610, 0x40e590.
  The indirect jump at 0x40e574 uses the jump table at 0x416514 with targets 0x40e590, 0x40e57c, 0x40e57c, 0x40e57c, 0x40e57c, 0x40e57c, 0x40e57c, 0x40e610, 0x40e610, 0x40e610, 0x40e590.
  The indirect jump at 0x40e574 uses the jump table at 0x416514 with targets 0x40e590, 0x40e57c, 0x40e57c, 0x40e57c, 0x40e57c, 0x40e57c, 0x40e57c, 0x40e610, 0x40e610, 0x40e610, 0x40e590.
  The indirect jump at 0x40e574 uses the jump table at 0x416514 with targets 0x40e590, 0x40e57c, 0x40e57c, 0x40e57c, 0x40e57c, 0x40e57c, 0x40e57c, 0x40e610, 0x40e610, 0x40e610, 0x40e590.
  The indirect jump at 0x40e1e0 uses the jump table at 0x4164bc with targets 0x40e1fc, 0x40e1e8, 0x40e1e8, 0x40e1e8, 0x40e1e8, 0x40e280, 0x40e280, 0x40e280, 0x40e280, 0x40e280, 0x40e1fc.
  The indirect jump at 0x40e1e0 uses the jump table at 0x4164bc with targets 0x40e1fc, 0x40e1e8, 0x40e1e8, 0x40e1e8, 0x40e1e8, 0x40e280, 0x40e280, 0x40e280, 0x40e280, 0x40e280, 0x40e1fc.
  The indirect jump at 0x40e1e0 uses the jump table at 0x4164bc with targets 0x40e1fc, 0x40e1e8, 0x40e1e8, 0x40e1e8, 0x40e1e8, 0x40e280, 0x40e280, 0x40e280, 0x40e280, 0x40e280, 0x40e1fc.
  The indirect jump at 0x40e1e0 uses the jump table at 0x4164bc with targets 0x40e1fc, 0x40e1e8, 0x40e1e8, 0x40e1e8, 0x40e1e8, 0x40e280, 0x40e280, 0x40e280, 0x40e280, 0x40e280, 0x40e1fc.
  The indirect jump at 0x40e1e0 uses the jump table at 0x4164bc with targets 0x40e1fc, 0x40e1e8, 0x40e1e8, 0x40e1e8, 0x40e1e8, 0x40e280, 0x40e280, 0x40e280, 0x40e280, 0x40e280, 0x40e1fc.
  The indirect jump at 0x40e1e0 uses the jump table at 0x4164bc with targets 0x40e1fc, 0x40e1e8, 0x40e1e8, 0x40e1e8, 0x40e1e8, 0x40e280, 0x40e280, 0x40e280, 0x40e280, 0x40e280, 0x40e1fc.
  The indirect jump at 0x40e1e0 uses the jump table at 0x4164bc with targets 0x40e1fc, 0x40e1e8, 0x40e1e8, 0x40e1e8, 0x40e1e8, 0x40e280, 0x40e280, 0x40e280, 0x40e280, 0x40e280, 0x40e1fc.

- `mvpFromVLEventMask` in `usr/lib/dmedia/video/debug/mvp.so` at 0x40e8a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x40e8a0-0x40eb14 (628 bytes).
  It occupies 628 bytes.
  The `beq` branch at 0x40e8b8 targets 0x40e8cc, is taken when (a0 & 0x1) == 0, and falls through when (a0 & 0x1) != 0.
  The `beq` branch at 0x40e8d0 targets 0x40e8e4, is taken when (a0 & 0x2) == 0, and falls through when (a0 & 0x2) != 0.
  The `beq` branch at 0x40e8e8 targets 0x40e8fc, is taken when (a0 & 0x4) == 0, and falls through when (a0 & 0x4) != 0.
  The `beq` branch at 0x40e900 targets 0x40e914, is taken when (a0 & 0x8) == 0, and falls through when (a0 & 0x8) != 0.
  The `beq` branch at 0x40e918 targets 0x40e92c, is taken when (a0 & 0x10) == 0, and falls through when (a0 & 0x10) != 0.
  The `beq` branch at 0x40e930 targets 0x40e944, is taken when (a0 & 0x20) == 0, and falls through when (a0 & 0x20) != 0.
  The `beq` branch at 0x40e948 targets 0x40e95c, is taken when (a0 & 0x40) == 0, and falls through when (a0 & 0x40) != 0.
  The `beq` branch at 0x40e960 targets 0x40e974, is taken when (a0 & 0x80) == 0, and falls through when (a0 & 0x80) != 0.
  The `beq` branch at 0x40e978 targets 0x40e98c, is taken when (a0 & 0x100) == 0, and falls through when (a0 & 0x100) != 0.
  The `beq` branch at 0x40e990 targets 0x40e9a4, is taken when (a0 & 0x200) == 0, and falls through when (a0 & 0x200) != 0.
  The `beq` branch at 0x40e9a8 targets 0x40e9bc, is taken when (a0 & 0x400) == 0, and falls through when (a0 & 0x400) != 0.
  The `beq` branch at 0x40e9c0 targets 0x40e9d4, is taken when (a0 & 0x800) == 0, and falls through when (a0 & 0x800) != 0.
  The `beq` branch at 0x40e9d8 targets 0x40e9ec, is taken when (a0 & 0x1000) == 0, and falls through when (a0 & 0x1000) != 0.
  The `beq` branch at 0x40e9f0 targets 0x40ea04, is taken when (a0 & 0x2000) == 0, and falls through when (a0 & 0x2000) != 0.
  The `beq` branch at 0x40ea08 targets 0x40ea20, is taken when (a0 & 0x4000) == 0, and falls through when (a0 & 0x4000) != 0.
  The `beq` branch at 0x40ea24 targets 0x40ea3c, is taken when (a0 & 0x8000) == 0, and falls through when (a0 & 0x8000) != 0.
  The `beq` branch at 0x40ea44 targets 0x40ea5c, is taken when (a0 & at(=0x10000)) == 0, and falls through when (a0 & at(=0x10000)) != 0.
  The `beq` branch at 0x40ea64 targets 0x40ea7c, is taken when (a0 & at(=0x20000)) == 0, and falls through when (a0 & at(=0x20000)) != 0.
  The `beq` branch at 0x40ea84 targets 0x40ea9c, is taken when (a0 & at(=0x40000)) == 0, and falls through when (a0 & at(=0x40000)) != 0.
  The `beq` branch at 0x40eaa4 targets 0x40eabc, is taken when (a0 & at(=0x80000)) == 0, and falls through when (a0 & at(=0x80000)) != 0.
  The `beq` branch at 0x40eac4 targets 0x40eadc, is taken when (a0 & at(=0x100000)) == 0, and falls through when (a0 & at(=0x100000)) != 0.
  The `beq` branch at 0x40eae4 targets 0x40eafc, is taken when (a0 & at(=0x200000)) == 0, and falls through when (a0 & at(=0x200000)) != 0.
  The `beq` branch at 0x40eafc targets 0x40eb0c and is always taken.
  The return at 0x40eb0c has v0 = ?.
  The instructions from 0x40eb04 to 0x40eb08 are not reached by any path from the entry, and their branches are not listed.

- `mvptovlreason` in `usr/lib/dmedia/video/debug/mvp.so` at 0x40eb14 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x40eb14-0x40f4f0 (2524 bytes).
  It occupies 2524 bytes.
  The `bne` branch at 0x40eb2c targets 0x40ebdc, is taken when a1(=a0) < 0x1001 (signed), and falls through when a1(=a0) >= 0x1001 (signed).
  The `bne` branch at 0x40eb40 targets 0x40eb8c, is taken when a1(=a0) < at(=0x40001) (signed), and falls through when a1(=a0) >= at(=0x40001) (signed).
  The `beq` branch at 0x40eb4c targets 0x40ed10, is taken when a1(=a0) == at(=0x80000), and falls through when a1(=a0) != at(=0x80000).
  The `beq` branch at 0x40eb58 targets 0x40ed18, is taken when a1(=a0) == at(=0x100000), and falls through when a1(=a0) != at(=0x100000).
  The `beq` branch at 0x40eb64 targets 0x40ed20, is taken when a1(=a0) == at(=0x200000), and falls through when a1(=a0) != at(=0x200000).
  The `beq` branch at 0x40eb70 targets 0x40ed28, is taken when a1(=a0) == at(=0x400000), and falls through when a1(=a0) != at(=0x400000).
  The `beq` branch at 0x40eb7c targets 0x40ed30, is taken when a1(=a0) == at(=0x800000), and falls through when a1(=a0) != at(=0x800000).
  The `beq` branch at 0x40eb84 targets 0x40ed40 and is always taken.
  The `beq` branch at 0x40eb90 targets 0x40ece0, is taken when a1(=a0) == at(=0x2000), and falls through when a1(=a0) != at(=0x2000).
  The `beq` branch at 0x40eb9c targets 0x40ece8, is taken when a1(=a0) == at(=0x4000), and falls through when a1(=a0) != at(=0x4000).
  The `beq` branch at 0x40eba8 targets 0x40ecf0, is taken when a1(=a0) == at(=0x8000), and falls through when a1(=a0) != at(=0x8000).
  The `beq` branch at 0x40ebb4 targets 0x40ecf8, is taken when a1(=a0) == at(=0x10000), and falls through when a1(=a0) != at(=0x10000).
  The `beq` branch at 0x40ebc0 targets 0x40ed00, is taken when a1(=a0) == at(=0x20000), and falls through when a1(=a0) != at(=0x20000).
  The `beq` branch at 0x40ebcc targets 0x40ed08, is taken when a1(=a0) == at(=0x40000), and falls through when a1(=a0) != at(=0x40000).
  The `beq` branch at 0x40ebd4 targets 0x40ed40 and is always taken.
  The `bne` branch at 0x40ebe0 targets 0x40ec38, is taken when a1(=a0) < 0x81 (signed), and falls through when a1(=a0) >= 0x81 (signed).
  The `beq` branch at 0x40ebec targets 0x40ecb8, is taken when a1(=a0) == at(=0x100), and falls through when a1(=a0) != at(=0x100).
  The `beq` branch at 0x40ebf8 targets 0x40ed38, is taken when a1(=a0) == at(=0x1f7), and falls through when a1(=a0) != at(=0x1f7).
  The `beq` branch at 0x40ec04 targets 0x40ecc0, is taken when a1(=a0) == at(=0x200), and falls through when a1(=a0) != at(=0x200).
  The `beq` branch at 0x40ec10 targets 0x40ecc8, is taken when a1(=a0) == at(=0x400), and falls through when a1(=a0) != at(=0x400).
  The `beq` branch at 0x40ec1c targets 0x40ecd0, is taken when a1(=a0) == at(=0x800), and falls through when a1(=a0) != at(=0x800).
  The `beq` branch at 0x40ec28 targets 0x40ecd8, is taken when a1(=a0) == at(=0x1000), and falls through when a1(=a0) != at(=0x1000).
  The `beq` branch at 0x40ec30 targets 0x40ed40 and is always taken.
  The `beq` branch at 0x40ec3c targets 0x40ec88, is taken when a1(=a0) == at(=0x4), and falls through when a1(=a0) != at(=0x4).
  The `beq` branch at 0x40ec48 targets 0x40ec90, is taken when a1(=a0) == at(=0x8), and falls through when a1(=a0) != at(=0x8).
  The `beq` branch at 0x40ec54 targets 0x40ec98, is taken when a1(=a0) == at(=0x10), and falls through when a1(=a0) != at(=0x10).
  The `beq` branch at 0x40ec60 targets 0x40eca0, is taken when a1(=a0) == at(=0x20), and falls through when a1(=a0) != at(=0x20).
  The `beq` branch at 0x40ec6c targets 0x40eca8, is taken when a1(=a0) == at(=0x40), and falls through when a1(=a0) != at(=0x40).
  The `beq` branch at 0x40ec78 targets 0x40ecb0, is taken when a1(=a0) == at(=0x80), and falls through when a1(=a0) != at(=0x80).
  The `beq` branch at 0x40ec80 targets 0x40ed40 and is always taken.
  The `beq` branch at 0x40ec88 targets 0x40ed50 and is always taken.
  The `beq` branch at 0x40ec90 targets 0x40ed50 and is always taken.
  The `beq` branch at 0x40ec98 targets 0x40ed50 and is always taken.
  The `beq` branch at 0x40eca0 targets 0x40ed50 and is always taken.
  The `beq` branch at 0x40eca8 targets 0x40ed50 and is always taken.
  The `beq` branch at 0x40ecb0 targets 0x40ed50 and is always taken.
  The `beq` branch at 0x40ecb8 targets 0x40ed50 and is always taken.
  The `beq` branch at 0x40ecc0 targets 0x40ed50 and is always taken.
  The `beq` branch at 0x40ecc8 targets 0x40ed50 and is always taken.
  The `beq` branch at 0x40ecd0 targets 0x40ed50 and is always taken.
  The `beq` branch at 0x40ecd8 targets 0x40ed50 and is always taken.
  The `beq` branch at 0x40ece0 targets 0x40ed50 and is always taken.
  The `beq` branch at 0x40ece8 targets 0x40ed50 and is always taken.
  The `beq` branch at 0x40ecf0 targets 0x40ed50 and is always taken.
  The `beq` branch at 0x40ecf8 targets 0x40ed50 and is always taken.
  The `beq` branch at 0x40ed00 targets 0x40ed50 and is always taken.
  The `beq` branch at 0x40ed08 targets 0x40ed50 and is always taken.
  The `beq` branch at 0x40ed10 targets 0x40ed50 and is always taken.
  The `beq` branch at 0x40ed18 targets 0x40ed50 and is always taken.
  The `beq` branch at 0x40ed20 targets 0x40ed50 and is always taken.
  The `beq` branch at 0x40ed28 targets 0x40ed50 and is always taken.
  The `beq` branch at 0x40ed30 targets 0x40ed50 and is always taken.
  The `beq` branch at 0x40ed38 targets 0x40ed50 and is always taken.
  The `beq` branch at 0x40ed40 targets 0x40ed50 and is always taken.
  The return at 0x40ed50 has v0 = one of 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x1f7, 0x0.
  The instructions from 0x40ed48 to 0x40ed4c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x40ed58 to 0x40f4ec are not reached by any path from the entry, and their branches are not listed.

- `mvpSetEventMask` in `usr/lib/dmedia/video/debug/mvp.so` at 0x40ed58 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x40ed58-0x40ee90 (312 bytes).
  It occupies 312 bytes.
  The `lw` at 0x40ed7c loads 4 bytes from a1 (arg1 at entry) +0x68.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x48, including `lw` at 0x40edc8, `lw` at 0x40edec.
  The `lw` at 0x40ee10 loads 4 bytes from ?.
  The `jalr` at 0x40eda4 calls mvpAssertFail with a0=0x416540, a1=0x416568, a2=0x9d, a3=a3 at entry (arg3).
  The `jalr` at 0x40edc4 calls mvpPrintf with a0=?, a1=0x416574, a2=[a1+72], a3=?.
  The `jalr` at 0x40ede8 calls mvpFromVLEventMask with a0=[a1+72], a1=?, a2=?, a3=?.
  The `jalr` at 0x40ee0c calls ioctl with a0=?, a1=0x6d767002, a2=sp-240, a3=?.
  The `jalr` at 0x40ee24 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ee3c calls mvpRevisionError with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ee5c calls mvpPrintf with a0=?, a1=0x416588, a2=?, a3=?.
  The `beq` branch at 0x40ed80 targets 0x40ed90, is taken when t7(=[a1+104]) == 0, and falls through when t7(=[a1+104]) != 0.
  The `beq` branch at 0x40ed88 targets 0x40edb0 and is always taken.
  The `bne` branch at 0x40ee18 targets 0x40ee70, is taken when v0(=ret(ioctl)) != at(=-0x1), and falls through when v0(=ret(ioctl)) == at(=-0x1).
  The `bne` branch at 0x40ee30 targets 0x40ee48, is taken when v0(=ret(oserror)) != at(=0x7), and falls through when v0(=ret(oserror)) == at(=0x7).
  The `beq` branch at 0x40ee68 targets 0x40ee80 and is always taken.
  The `beq` branch at 0x40ee70 targets 0x40ee80 and is always taken.
  The return at 0x40ee88 has v0 = one of 0x0, 0x11.
  The instructions from 0x40ee78 to 0x40ee7c are not reached by any path from the entry, and their branches are not listed.

- `mvpTranslateEvent` in `usr/lib/dmedia/video/debug/mvp.so` at 0x40ee90 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x40ee90-0x40f4f0 (1632 bytes).
  It occupies 1632 bytes.
  The `lw` at 0x40eec4 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lw` at 0x40eed0 loads 4 bytes from a2 (arg2 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x68, including `lw` at 0x40eedc, `lw` at 0x40efbc.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x8, including `sw` at 0x40ef5c, `sw` at 0x40f4a0.
  The `lw` at 0x40ef6c loads 4 bytes from table(0x4168bc) +0x0.
  The `lw` at 0x40ef98 loads 4 bytes from a2 (arg2 at entry) +0x24.
  The `lw` at 0x40ef9c loads 4 bytes from a2 (arg2 at entry) +0x20.
  The `sw` at 0x40efac stores 4 bytes to a3 (arg3 at entry) +0x18.
  The `lw` at 0x40f014 loads 4 bytes from [a1+104] +0x24.
  The `sw` at 0x40f01c stores 4 bytes to [a1+104] +0x24.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x94, including `lw` at 0x40f058, `lw` at 0x40f13c, `lw` at 0x40f288.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x28, including `lw` at 0x40f068, `lw` at 0x40f1b4, `lw` at 0x40f3a0.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x80, including `lw` at 0x40f0a4, `lw` at 0x40f178, `lw` at 0x40f364.
  3 such `lh` accesses load 2 bytes from a2 (arg2 at entry) +0x88, including `lh` at 0x40f0e0, `lh` at 0x40f1f0, `lh` at 0x40f3dc.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8c, including `lw` at 0x40f11c, `lw` at 0x40f238, `lw` at 0x40f26c.
  3 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x20, including `sw` at 0x40f120, `sw` at 0x40f270, `sw` at 0x40f43c.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x90, including `lw` at 0x40f12c, `lw` at 0x40f234, `lw` at 0x40f27c.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x24, including `sw` at 0x40f130, `sw` at 0x40f280.
  4 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x28, including `sw` at 0x40f140, `sw` at 0x40f2c4, `sw` at 0x40f2ec.
  3 such `lh` accesses load 2 bytes from a2 (arg2 at entry) +0x98, including `lh` at 0x40f230, `lh` at 0x40f2c0, `lh` at 0x40f300.
  3 such `lh` accesses load 2 bytes from a2 (arg2 at entry) +0x9a, including `lh` at 0x40f240, `lh` at 0x40f2d0, `lh` at 0x40f310.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x98, including `lw` at 0x40f24c, `lw` at 0x40f2e8.
  The `lw` at 0x40f2a8 loads 4 bytes from table(0x41690c) +0x0.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x2c, including `sw` at 0x40f2d4, `sw` at 0x40f314.
  The `jalr` at 0x40ef04 calls mvpAssertFail with a0=0x41659c, a1=0x4165c0, a2=0xd7, a3=a3 at entry (arg3).
  The `jalr` at 0x40ef40 calls mvptovlreason [0x40eb14] with a0=[a2+8], a1=?, a2=?, a3=?.
  The `jalr` at 0x40efe4 calls mvpAssertFail with a0=0x4165cc, a1=0x4165f0, a2=0xed, a3=?.
  The `jalr` at 0x40f000 calls mvpPrintf with a0=[a1+104], a1=0x4165fc, a2=[a2+8], a3=?.
  The `jalr` at 0x40f054 calls mvpPrintf with a0=[a1+104], a1=0x416610, a2=[a2+148], a3=?.
  The `jalr` at 0x40f090 calls mvpAssertFail with a0=0x416624, a1=0x416654, a2=0xf9, a3=?.
  The `jalr` at 0x40f0cc calls mvpAssertFail with a0=0x416660, a1=0x416688, a2=0xfa, a3=?.
  The `jalr` at 0x40f108 calls mvpAssertFail with a0=0x416694, a1=0x4166b8, a2=0xfb, a3=?.
  The `jalr` at 0x40f1a0 calls mvpAssertFail with a0=0x4166c4, a1=0x4166ec, a2=0x109, a3=?.
  The `jalr` at 0x40f1dc calls mvpAssertFail with a0=0x4166f8, a1=0x416728, a2=0x10a, a3=?.
  The `jalr` at 0x40f218 calls mvpAssertFail with a0=0x416734, a1=0x416758, a2=0x10b, a3=?.
  The `jalr` at 0x40f258 calls mvpPrintf with a0=[a1+104], a1=0x416764, a2=[a2+144], a3=[a2+140].
  The `jalr` at 0x40f330 calls mvpPanic with a0=0x416790, a1=?, a2=?, a3=?.
  The `jalr` at 0x40f38c calls mvpAssertFail with a0=0x4167a4, a1=0x4167cc, a2=0x13c, a3=?.
  The `jalr` at 0x40f3c8 calls mvpAssertFail with a0=0x4167d8, a1=0x416808, a2=0x13d, a3=?.
  The `jalr` at 0x40f404 calls mvpAssertFail with a0=0x416814, a1=0x416838, a2=0x13e, a3=?.
  The `jalr` at 0x40f424 calls mvpPrintf with a0=[a1+104], a1=0x416844, a2=[a2+148], a3=?.
  The `jalr` at 0x40f45c calls mvptovlreason [0x40eb14] with a0=[a2+8], a1=?, a2=?, a3=?.
  The `jalr` at 0x40f48c calls mvpAssertFail with a0=0x41685c, a1=0x416888, a2=0x14c, a3=?.
  The `jalr` at 0x40f4b8 calls mvpPanic with a0=0x416894, a1=[a2+4], a2=?, a3=?.
  The `beq` branch at 0x40eee0 targets 0x40eef0, is taken when t1(=[a1+104]) == 0, and falls through when t1(=[a1+104]) != 0.
  The `beq` branch at 0x40eee8 targets 0x40ef10 and is always taken.
  The `beq` branch at 0x40ef18 targets 0x40f450, is taken when s0(=[a2+4]) == at(=0x2), and falls through when s0(=[a2+4]) != at(=0x2).
  The `beq` branch at 0x40ef24 targets 0x40ef34, is taken when s0(=[a2+4]) == at(=0xa), and falls through when s0(=[a2+4]) != at(=0xa).
  The `beq` branch at 0x40ef2c targets 0x40f4ac and is always taken.
  The `beq` branch at 0x40ef58 targets 0x40ef84, is taken when s1(=ret(mvptovlreason)) >= 0x14 (unsigned), and falls through when s1(=ret(mvptovlreason)) < 0x14 (unsigned).
  The `beq` branch at 0x40ef7c targets 0x40f4dc and is always taken.
  The `beq` branch at 0x40ef84 targets 0x40f4dc and is always taken.
  The `beq` branch at 0x40efb0 targets 0x40f448 and is always taken.
  The `beq` branch at 0x40efc0 targets 0x40efd0, is taken when t2(=[a1+104]) == 0, and falls through when t2(=[a1+104]) != 0.
  The `beq` branch at 0x40efc8 targets 0x40eff0 and is always taken.
  The `beq` branch at 0x40f020 targets 0x40f448 and is always taken.
  The `bne` branch at 0x40f06c targets 0x40f07c, is taken when t2(=[a2+40]) != at(=0x1c), and falls through when t2(=[a2+40]) == at(=0x1c).
  The `beq` branch at 0x40f074 targets 0x40f09c and is always taken.
  The `bne` branch at 0x40f0a8 targets 0x40f0b8, is taken when t6(=[a2+128]) != at(=0x1), and falls through when t6(=[a2+128]) == at(=0x1).
  The `beq` branch at 0x40f0b0 targets 0x40f0d8 and is always taken.
  The `bne` branch at 0x40f0e4 targets 0x40f0f4, is taken when t7(=[a2+136]:2) != at(=0x14), and falls through when t7(=[a2+136]:2) == at(=0x14).
  The `beq` branch at 0x40f0ec targets 0x40f114 and is always taken.
  The `beq` branch at 0x40f144 targets 0x40f448 and is always taken.
  The `bne` branch at 0x40f17c targets 0x40f18c, is taken when t4(=[a2+128]) != at(=0x1), and falls through when t4(=[a2+128]) == at(=0x1).
  The `beq` branch at 0x40f184 targets 0x40f1ac and is always taken.
  The `bne` branch at 0x40f1b8 targets 0x40f1c8, is taken when t3(=[a2+40]) != at(=0x1c), and falls through when t3(=[a2+40]) == at(=0x1c).
  The `beq` branch at 0x40f1c0 targets 0x40f1e8 and is always taken.
  The `bne` branch at 0x40f1f4 targets 0x40f204, is taken when t8(=[a2+136]:2) != at(=0x14), and falls through when t8(=[a2+136]:2) == at(=0x14).
  The `beq` branch at 0x40f1fc targets 0x40f224 and is always taken.
  The `beq` branch at 0x40f294 targets 0x40f328, is taken when t9(=[a2+148]-1) >= 0xb (unsigned), and falls through when t9(=[a2+148]-1) < 0xb (unsigned).
  The `beq` branch at 0x40f2d8 targets 0x40f33c and is always taken.
  The `beq` branch at 0x40f2f0 targets 0x40f33c and is always taken.
  The `beq` branch at 0x40f318 targets 0x40f33c and is always taken.
  The `beq` branch at 0x40f320 targets 0x40f33c and is always taken.
  The `beq` branch at 0x40f33c targets 0x40f448 and is always taken.
  The `bne` branch at 0x40f368 targets 0x40f378, is taken when t1(=[a2+128]) != at(=0x1), and falls through when t1(=[a2+128]) == at(=0x1).
  The `beq` branch at 0x40f370 targets 0x40f398 and is always taken.
  The `bne` branch at 0x40f3a4 targets 0x40f3b4, is taken when t4(=[a2+40]) != at(=0x1c), and falls through when t4(=[a2+40]) == at(=0x1c).
  The `beq` branch at 0x40f3ac targets 0x40f3d4 and is always taken.
  The `bne` branch at 0x40f3e0 targets 0x40f3f0, is taken when t3(=[a2+136]:2) != at(=0x14), and falls through when t3(=[a2+136]:2) == at(=0x14).
  The `beq` branch at 0x40f3e8 targets 0x40f410 and is always taken.
  The `beq` branch at 0x40f440 targets 0x40f448 and is always taken.
  The `beq` branch at 0x40f448 targets 0x40f4cc and is always taken.
  The `bne` branch at 0x40f468 targets 0x40f478, is taken when v0(=ret(mvptovlreason)) != at(=0xb), and falls through when v0(=ret(mvptovlreason)) == at(=0xb).
  The `beq` branch at 0x40f470 targets 0x40f498 and is always taken.
  The `beq` branch at 0x40f4a4 targets 0x40f4cc and is always taken.
  The `beq` branch at 0x40f4c4 targets 0x40f4dc and is always taken.
  The `beq` branch at 0x40f4cc targets 0x40f4dc and is always taken.
  The return at 0x40f4e8 has v0 = one of 0x0, 0x2, 0x8.
  The instructions from 0x40f4d4 to 0x40f4d8 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x40ef74 uses the jump table at 0x4168bc with targets 0x40ef7c, 0x40ef84, 0x40ef84, 0x40efb8, 0x40ef84, 0x40ef84, 0x40ef84, 0x40ef84, 0x40efb8, 0x40f028, 0x40f14c, 0x40ef8c, 0x40efb8, 0x40ef84, 0x40ef84, 0x40ef84, 0x40ef84, 0x40f344, 0x40ef84, 0x40efb8.
  The indirect jump at 0x40f2b0 uses the jump table at 0x41690c with targets 0x40f2b8, 0x40f2e0, 0x40f2e0, 0x40f2e0, 0x40f2f8, 0x40f328, 0x40f328, 0x40f328, 0x40f328, 0x40f320, 0x40f320.

- `mvpUpdateRegs` in `usr/lib/dmedia/video/debug/mvp.so` at 0x40fdd4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x40fdd4-0x411c10 (7740 bytes).
  It occupies 7740 bytes.
  5 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x128, including `lbu` at 0x40fe10, `lbu` at 0x410718, `lbu` at 0x41072c.
  The `sw` at 0x40fe88 stores 4 bytes to sym(mvpscreen_hbias) +0x0.
  The `sw` at 0x40fec8 stores 4 bytes to sym(mvpscreen_vbias) +0x0.
  The `sw` at 0x40ff08 stores 4 bytes to sym(mvpscreen_hend) +0x0.
  The `sw` at 0x40ff48 stores 4 bytes to sym(mvpscreen_vend) +0x0.
  The `sw` at 0x40ff88 stores 4 bytes to sym(mvpscreen_dvsize) +0x0.
  The `sw` at 0x40ffc8 stores 4 bytes to sym(mvpscreen_dhsize) +0x0.
  34 such `lh` accesses load 2 bytes from ?, including `lh` at 0x40ffd4, `lh` at 0x40ffec, `lh` at 0x410000.
  The `lw` at 0x40ffd8 loads 4 bytes from sym(mvpscreen_hbias) +0x0.
  The `lw` at 0x40fff0 loads 4 bytes from sym(mvpscreen_vbias) +0x0.
  24 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x410028, `lbu` at 0x41005c, `lbu` at 0x410144.
  The `lw` at 0x4100a0 loads 4 bytes from sym(mvpscreen_hend) +0x0.
  The `lw` at 0x4100f4 loads 4 bytes from sym(mvpscreen_vend) +0x0.
  27 such `sw` accesses store 4 bytes to ?, including `sw` at 0x410170, `sw` at 0x41017c, `sw` at 0x410188.
  15 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24, including `lw` at 0x410190, `lw` at 0x4101d0, `lw` at 0x410210.
  13 such `sb` accesses store 1 byte to ?, including `sb` at 0x4102ec, `sb` at 0x41032c, `sb` at 0x410338.
  3 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x146, including `lh` at 0x4106c4, `lh` at 0x4107bc, `lh` at 0x4116d4.
  3 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x148, including `lh` at 0x4106c8, `lh` at 0x4107c0, `lh` at 0x4116d8.
  4 such `sh` accesses store 2 bytes to ?, including `sh` at 0x410eb8, `sh` at 0x410f04, `sh` at 0x411570.
  The `lw` at 0x411120 loads 4 bytes from table(0x417630) +0x0.
  The `lw` at 0x411214 loads 4 bytes from table(0x417644) +0x0.
  The `jalr` at 0x40fe38 calls mvpRead with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40fe54 calls getenv with a0=0x4173e4, a1=?, a2=?, a3=?.
  The `jalr` at 0x40fe78 calls atoi with a0=ret(getenv), a1=?, a2=?, a3=?.
  The `jalr` at 0x40fe94 calls getenv with a0=0x4173ec, a1=?, a2=?, a3=?.
  The `jalr` at 0x40feb8 calls atoi with a0=ret(getenv), a1=?, a2=?, a3=?.
  The `jalr` at 0x40fed4 calls getenv with a0=0x4173f4, a1=?, a2=?, a3=?.
  The `jalr` at 0x40fef8 calls atoi with a0=ret(getenv), a1=?, a2=?, a3=?.
  The `jalr` at 0x40ff14 calls getenv with a0=0x4173fc, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ff38 calls atoi with a0=ret(getenv), a1=?, a2=?, a3=?.
  The `jalr` at 0x40ff54 calls getenv with a0=0x417404, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ff78 calls atoi with a0=ret(getenv), a1=?, a2=?, a3=?.
  The `jalr` at 0x40ff94 calls getenv with a0=0x41740c, a1=?, a2=?, a3=?.
  The `jalr` at 0x40ffb8 calls atoi with a0=ret(getenv), a1=?, a2=?, a3=?.
  The `jalr` at 0x4101c0 calls mvpreg_gbetrace with a0=0x1, a1=0x417414, a2=0x41741c, a3=0x0.
  The `jalr` at 0x410200 calls mvpreg_gbetrace with a0=0x1, a1=0x417424, a2=0x41742c, a3=0x0.
  The `jalr` at 0x410240 calls mvpreg_gbetrace with a0=0x1, a1=0x417434, a2=0x41743c, a3=0x0.
  The `jalr` at 0x41025c calls mvpRead with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x4102cc calls mvpMipmapMode with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x4103f4 calls mvpPanic with a0=0x417444, a1=?, a2=?, a3=?.
  The `jalr` at 0x41042c calls __ll_bit_insert with a0=sp-48, a1=0x1f, a2=0x1, a3=?.
  The `jalr` at 0x410464 calls __ll_bit_insert with a0=sp-48, a1=0x2f, a2=0x1, a3=?.
  The `jalr` at 0x410490 calls __ll_bit_insert with a0=sp-48, a1=0x30, a2=0x2, a3=?.
  The `jalr` at 0x4104c4 calls __ll_bit_insert with a0=sp-48, a1=0x32, a2=0x1, a3=?.
  The `jalr` at 0x4104f4 calls __ll_bit_insert with a0=sp-48, a1=0x33, a2=0x3, a3=?.
  The `jalr` at 0x410520 calls __ll_bit_insert with a0=sp-48, a1=0x36, a2=0x4, a3=?.
  The `jalr` at 0x410548 calls __ll_bit_insert with a0=sp-48, a1=0x3a, a2=0x1, a3=?.
  The `jalr` at 0x410570 calls __ll_bit_insert with a0=sp-48, a1=0x3b, a2=0x1, a3=?.
  The `jalr` at 0x4105a0 calls __ll_bit_insert with a0=sp-48, a1=0x3c, a2=0x2, a3=?.
  The `jalr` at 0x4105c8 calls __ll_bit_insert with a0=sp-48, a1=0x3e, a2=0x1, a3=?.
  The `jalr` at 0x4105f0 calls __ll_bit_insert with a0=sp-48, a1=0x3f, a2=0x1, a3=?.
  The `jalr` at 0x41064c calls mvpreg_trace with a0=0x1, a1=0x417464, a2=0x41746c, a3=0x0.
  The `jalr` at 0x410764 calls __ll_bit_insert with a0=sp-56, a1=0x17, a2=0x2, a3=?.
  The `jalr` at 0x410790 calls __ll_bit_insert with a0=sp-56, a1=0x17, a2=0x2, a3=?.
  The `jalr` at 0x41080c calls __ll_bit_insert with a0=sp-56, a1=0x17, a2=0x2, a3=?.
  The `jalr` at 0x410850 calls __ll_bit_insert with a0=sp-56, a1=0x17, a2=0x2, a3=?.
  The `jalr` at 0x41087c calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1.
  The `jalr` at 0x4108a8 calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x0.
  The `jalr` at 0x4108cc calls mvpSetScale with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x0.
  The `jalr` at 0x4108fc calls __ll_bit_insert with a0=sp-56, a1=0x1a, a2=0x8, a3=?.
  The `jalr` at 0x410930 calls __ll_bit_insert with a0=sp-56, a1=0x19, a2=0x1, a3=?.
  The `jalr` at 0x410958 calls __ll_bit_insert with a0=sp-64, a1=0x1a, a2=0x8, a3=?.
  The `jalr` at 0x41098c calls __ll_bit_insert with a0=sp-64, a1=0x19, a2=0x1, a3=?.
  The `jalr` at 0x4109b8 calls __ll_bit_insert with a0=sp-72, a1=0x1a, a2=0x8, a3=?.
  The `jalr` at 0x4109ec calls __ll_bit_insert with a0=sp-72, a1=0x19, a2=0x1, a3=?.
  The `jalr` at 0x410a44 calls mvpAssertFail with a0=0x417474, a1=0x417494, a2=0x12f, a3=?.
  The `jalr` at 0x410a70 calls __ll_bit_insert with a0=sp-56, a1=0x22, a2=0xa, a3=?.
  The `jalr` at 0x410aa8 calls mvpAssertFail with a0=0x4174a0, a1=0x4174b4, a2=0x134, a3=?.
  The `jalr` at 0x410ac4 calls mvpCalcMitch [0x40fb60] with a0=a0 at entry (arg0), a1=?, a2=0x0, a3=?.
  The `jalr` at 0x410ae4 calls mvpCalcMitch [0x40fb60] with a0=a0 at entry (arg0), a1=?, a2=0x0, a3=?.
  The `jalr` at 0x410b24 calls __ll_bit_insert with a0=sp-56, a1=0x36, a2=0xa, a3=?.
  The `jalr` at 0x410b7c calls __ll_bit_insert with a0=sp-56, a1=0x2c, a2=0xa, a3=?.
  The `jalr` at 0x410bc4 calls __ll_bit_insert with a0=sp-64, a1=0x36, a2=0xa, a3=?.
  The `jalr` at 0x410c1c calls __ll_bit_insert with a0=sp-64, a1=0x22, a2=0xa, a3=?.
  The `jalr` at 0x410c6c calls __ll_bit_insert with a0=sp-64, a1=0x2c, a2=0xa, a3=?.
  The `jalr` at 0x410cb4 calls __ll_bit_insert with a0=sp-72, a1=0x36, a2=0xa, a3=?.
  The `jalr` at 0x410d0c calls __ll_bit_insert with a0=sp-72, a1=0x22, a2=0xa, a3=?.
  The `jalr` at 0x410d5c calls __ll_bit_insert with a0=sp-72, a1=0x2c, a2=0xa, a3=?.
  The `jalr` at 0x410de0 calls mvpreg_trace with a0=0x1, a1=0x4174c0, a2=0x4174c8, a3=0x0.
  The `jalr` at 0x410e28 calls mvpreg_trace with a0=0x1, a1=0x4174d4, a2=0x4174dc, a3=0x0.
  The `jalr` at 0x410e70 calls mvpreg_trace with a0=0x1, a1=0x4174e8, a2=0x4174f0, a3=0x0.
  The `jalr` at 0x410e94 calls mvpPixSize with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x410ef0 calls mvpAssertFail with a0=0x4174fc, a1=0x41751c, a2=0x155, a3=?.
  The `jalr` at 0x410f58 calls mvpreg_trace with a0=0x1, a1=0x417528, a2=0x417530, a3=0x0.
  The `jalr` at 0x410fd0 calls mvpreg_trace with a0=0x1, a1=0x41753c, a2=0x417544, a3=0x0.
  The `jalr` at 0x410fec calls mvpRead with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x411038 calls __ll_bit_insert with a0=sp-120, a1=0x1f, a2=0x1, a3=?.
  The `jalr` at 0x411060 calls __ll_bit_insert with a0=sp-120, a1=0x3f, a2=0x1, a3=?.
  The `jalr` at 0x411090 calls __ll_bit_insert with a0=sp-120, a1=0x2a, a2=0x1, a3=?.
  The `jalr` at 0x4110c4 calls __ll_bit_insert with a0=sp-120, a1=0x2b, a2=0x1, a3=?.
  The `jalr` at 0x4110f4 calls __ll_bit_insert with a0=sp-120, a1=0x2f, a2=0x3, a3=?.
  The `jalr` at 0x41114c calls __ll_bit_insert with a0=sp-120, a1=0x2c, a2=0x2, a3=?.
  The `jalr` at 0x41117c calls __ll_bit_insert with a0=sp-120, a1=0x2c, a2=0x2, a3=?.
  The `jalr` at 0x4111ac calls __ll_bit_insert with a0=sp-120, a1=0x2c, a2=0x2, a3=?.
  The `jalr` at 0x4111dc calls __ll_bit_insert with a0=sp-120, a1=0x2c, a2=0x2, a3=?.
  The `jalr` at 0x41122c calls mvpPanic with a0=0x41754c, a1=?, a2=?, a3=?.
  The `jalr` at 0x41125c calls __ll_bit_insert with a0=sp-120, a1=0x2c, a2=0x2, a3=?.
  The `jalr` at 0x41128c calls __ll_bit_insert with a0=sp-120, a1=0x2c, a2=0x2, a3=?.
  The `jalr` at 0x4112bc calls __ll_bit_insert with a0=sp-120, a1=0x2c, a2=0x2, a3=?.
  The `jalr` at 0x4112ec calls __ll_bit_insert with a0=sp-120, a1=0x2c, a2=0x2, a3=?.
  The `jalr` at 0x41131c calls __ll_bit_insert with a0=sp-120, a1=0x3a, a2=0x1, a3=?.
  The `jalr` at 0x411344 calls __ll_bit_insert with a0=sp-120, a1=0x38, a2=0x2, a3=?.
  The `jalr` at 0x411374 calls __ll_bit_insert with a0=sp-120, a1=0x32, a2=0x4, a3=?.
  The `jalr` at 0x4113a8 calls __ll_bit_insert with a0=sp-120, a1=0x26, a2=0x4, a3=?.
  The `jalr` at 0x4113d0 calls __ll_bit_insert with a0=sp-120, a1=0x37, a2=0x1, a3=?.
  The `jalr` at 0x4113f8 calls __ll_bit_insert with a0=sp-120, a1=0x36, a2=0x1, a3=?.
  The `jalr` at 0x411470 calls mvpreg_trace with a0=0x1, a1=0x417560, a2=0x417568, a3=0x0.
  The `jalr` at 0x4114b8 calls mvpreg_trace with a0=0x1, a1=0x417570, a2=0x417578, a3=0x0.
  The `jalr` at 0x41153c calls mvpPixSize with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x411584 calls __ll_bit_insert with a0=sp-160, a1=0x34, a2=0xc, a3=?.
  The `jalr` at 0x4115a8 calls __ull_rem with a0=0x0, a1=?, a2=0x0, a3=0x8.
  The `jalr` at 0x4115dc calls mvpAssertFail with a0=0x417588, a1=0x4175a8, a2=0x1da, a3=?.
  The `jalr` at 0x4115f8 calls mvpCalcMitch [0x40fb60] with a0=a0 at entry (arg0), a1=?, a2=0x0, a3=?.
  The `jalr` at 0x41162c calls __ll_bit_insert with a0=sp-136, a1=0x18, a2=0xa, a3=?.
  The `jalr` at 0x411688 calls __ll_bit_insert with a0=sp-136, a1=0x16, a2=0x2, a3=?.
  The `jalr` at 0x4116b4 calls __ll_bit_insert with a0=sp-136, a1=0x16, a2=0x2, a3=?.
  The `jalr` at 0x411724 calls __ll_bit_insert with a0=sp-136, a1=0x16, a2=0x2, a3=?.
  The `jalr` at 0x411750 calls __ll_bit_insert with a0=sp-136, a1=0x16, a2=0x2, a3=?.
  The `jalr` at 0x411784 calls __ll_bit_insert with a0=sp-160, a1=0x2a, a2=0xa, a3=?.
  The `jalr` at 0x4117c8 calls __ll_bit_insert with a0=sp-136, a1=0x36, a2=0xa, a3=?.
  The `jalr` at 0x411814 calls __ll_bit_insert with a0=sp-136, a1=0x2c, a2=0xa, a3=?.
  The `jalr` at 0x411850 calls __ll_bit_insert with a0=sp-144, a1=0x36, a2=0xa, a3=?.
  The `jalr` at 0x411890 calls __ll_bit_insert with a0=sp-144, a1=0x2c, a2=0xa, a3=?.
  The `jalr` at 0x4118d0 calls __ll_bit_insert with a0=sp-144, a1=0x22, a2=0xa, a3=?.
  The `jalr` at 0x41190c calls __ll_bit_insert with a0=sp-152, a1=0x36, a2=0xa, a3=?.
  The `jalr` at 0x41194c calls __ll_bit_insert with a0=sp-152, a1=0x2c, a2=0xa, a3=?.
  The `jalr` at 0x41198c calls __ll_bit_insert with a0=sp-152, a1=0x22, a2=0xa, a3=?.
  The `jalr` at 0x4119dc calls __ll_bit_insert with a0=sp-136, a1=0x22, a2=0xa, a3=?.
  The `jalr` at 0x411a18 calls __ll_bit_insert with a0=sp-144, a1=0x18, a2=0xa, a3=?.
  The `jalr` at 0x411a50 calls __ll_bit_insert with a0=sp-152, a1=0x18, a2=0xa, a3=?.
  The `jalr` at 0x411ae8 calls mvpreg_trace with a0=0x1, a1=0x4175b4, a2=0x4175bc, a3=0x0.
  The `jalr` at 0x411b30 calls mvpreg_trace with a0=0x1, a1=0x4175c8, a2=0x4175d0, a3=0x0.
  The `jalr` at 0x411b78 calls mvpreg_trace with a0=0x1, a1=0x4175dc, a2=0x4175e4, a3=0x0.
  The `jalr` at 0x411bc0 calls mvpreg_trace with a0=0x1, a1=0x4175f0, a2=0x4175f8, a3=0x0.
  The `jalr` at 0x411bdc calls mvpPanic with a0=0x417604, a1=?, a2=?, a3=?.
  The `bne` branch at 0x40fe44 targets 0x410254, is taken when v0(=ret(mvpRead)) != at(=0x2), and falls through when v0(=ret(mvpRead)) == at(=0x2).
  The `beq` branch at 0x40fe68 targets 0x40fe8c, is taken when t3(=ret(getenv)) == 0, and falls through when t3(=ret(getenv)) != 0.
  The `beq` branch at 0x40fea8 targets 0x40fecc, is taken when t4(=ret(getenv)) == 0, and falls through when t4(=ret(getenv)) != 0.
  The `beq` branch at 0x40fee8 targets 0x40ff0c, is taken when t5(=ret(getenv)) == 0, and falls through when t5(=ret(getenv)) != 0.
  The `beq` branch at 0x40ff28 targets 0x40ff4c, is taken when t6(=ret(getenv)) == 0, and falls through when t6(=ret(getenv)) != 0.
  The `beq` branch at 0x40ff68 targets 0x40ff8c, is taken when t7(=ret(getenv)) == 0, and falls through when t7(=ret(getenv)) != 0.
  The `beq` branch at 0x40ffa8 targets 0x40ffcc, is taken when t8(=ret(getenv)) == 0, and falls through when t8(=ret(getenv)) != 0.
  The `beq` branch at 0x410040 targets 0x410054, is taken when (s0(?) & 0x1) == 0, and falls through when (s0(?) & 0x1) != 0.
  The `beq` branch at 0x410198 targets 0x4101cc, is taken when (t0(=[a0+36]) & 0x8) == 0, and falls through when (t0(=[a0+36]) & 0x8) != 0.
  The `beq` branch at 0x4101d8 targets 0x41020c, is taken when (t9(=[a0+36]) & 0x8) == 0, and falls through when (t9(=[a0+36]) & 0x8) != 0.
  The `beq` branch at 0x410218 targets 0x41024c, is taken when (t7(=[a0+36]) & 0x8) == 0, and falls through when (t7(=[a0+36]) & 0x8) != 0.
  The `beq` branch at 0x41024c targets 0x411be8 and is always taken.
  The `bne` branch at 0x410268 targets 0x410fe4, is taken when v0(=ret(mvpRead)) != at(=0x1), and falls through when v0(=ret(mvpRead)) == at(=0x1).
  The `beq` branch at 0x41028c targets 0x41029c, is taken when t1(?) >= t9(?) (signed), and falls through when t1(?) < t9(?) (signed).
  The `beq` branch at 0x410294 targets 0x4102a8 and is always taken.
  The `bne` branch at 0x4102bc targets 0x410400, is taken when t0(?) != at(=0x2), and falls through when t0(?) == at(=0x2).
  The `beq` branch at 0x4102e8 targets 0x410384, is taken when s0(?) == at(=0x1), and falls through when s0(?) != at(=0x1).
  The `beq` branch at 0x4102f4 targets 0x41031c, is taken when s0(?) == at(=0x2), and falls through when s0(?) != at(=0x2).
  The `beq` branch at 0x410300 targets 0x410350, is taken when s0(?) == at(=0x3), and falls through when s0(?) != at(=0x3).
  The `beq` branch at 0x41030c targets 0x4103b8, is taken when s0(?) == at(=0x4), and falls through when s0(?) != at(=0x4).
  The `beq` branch at 0x410314 targets 0x4103ec and is always taken.
  The `beq` branch at 0x410348 targets 0x410400 and is always taken.
  The `beq` branch at 0x41037c targets 0x410400 and is always taken.
  The `beq` branch at 0x4103b0 targets 0x410400 and is always taken.
  The `beq` branch at 0x4103e4 targets 0x410400 and is always taken.
  The `beq` branch at 0x41061c targets 0x410658, is taken when (t0(=[a0+36]) & 0x8) == 0, and falls through when (t0(=[a0+36]) & 0x8) != 0.
  The `bc1f` branch at 0x4106f0 targets 0x410714, is taken when not (f18 == f4 (c.eq.d at 0x4106e8)), and falls through when f18 == f4 (c.eq.d at 0x4106e8).
  The `bne` branch at 0x410704 targets 0x410714, is taken when (t6(?) & 0x2) != 0, and falls through when (t6(?) & 0x2) == 0.
  The `bne` branch at 0x410720 targets 0x4107a4, is taken when (t2(=[a0+296]:1) & 0x2) != 0, and falls through when (t2(=[a0+296]:1) & 0x2) == 0.
  The `beq` branch at 0x410734 targets 0x410748, is taken when (t5(=[a0+296]:1) & 0x1) == 0, and falls through when (t5(=[a0+296]:1) & 0x1) != 0.
  The `bne` branch at 0x410740 targets 0x410774, is taken when t5(=[a0+296]:1) != at(=0x11), and falls through when t5(=[a0+296]:1) == at(=0x11).
  The `beq` branch at 0x41076c targets 0x41079c and is always taken.
  The `beq` branch at 0x41079c targets 0x41085c and is always taken.
  The `bne` branch at 0x4107a8 targets 0x410834, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bc1f` branch at 0x4107e8 targets 0x410834, is taken when not (f4 == f8 (c.eq.d at 0x4107e0)), and falls through when f4 == f8 (c.eq.d at 0x4107e0).
  The `bgez` branch at 0x41081c targets 0x41082c, is taken when t5(?) >= 0 (signed), and falls through when t5(?) < 0 (signed).
  The `beq` branch at 0x41082c targets 0x41085c and is always taken.
  The `beq` branch at 0x410860 targets 0x410a50, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `bne` branch at 0x410904 targets 0x410914, is taken when v0(=ret(__ll_bit_insert)) != 0, and falls through when v0(=ret(__ll_bit_insert)) == 0.
  The `beq` branch at 0x41090c targets 0x41093c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x410960 targets 0x410970, is taken when v0(=ret(__ll_bit_insert)) != 0, and falls through when v0(=ret(__ll_bit_insert)) == 0.
  The `beq` branch at 0x410968 targets 0x410998, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x4109c0 targets 0x4109d0, is taken when v0(=ret(__ll_bit_insert)) != 0, and falls through when v0(=ret(__ll_bit_insert)) == 0.
  The `beq` branch at 0x4109c8 targets 0x4109f8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x410a00 targets 0x410a30, is taken when t1(?) == at(=-0x1), and falls through when t1(?) != at(=-0x1).
  The `beq` branch at 0x410a10 targets 0x410a30, is taken when t2(?) == at(=-0x1), and falls through when t2(?) != at(=-0x1).
  The `beq` branch at 0x410a20 targets 0x410a30, is taken when t3(?) == at(=-0x1), and falls through when t3(?) != at(=-0x1).
  The `beq` branch at 0x410a28 targets 0x410a50 and is always taken.
  The `bne` branch at 0x410a84 targets 0x410a94, is taken when (t5(?) & 0x1) != 0, and falls through when (t5(?) & 0x1) == 0.
  The `beq` branch at 0x410a8c targets 0x410ab4 and is always taken.
  The `beq` branch at 0x410db0 targets 0x410dec, is taken when (t6(=[a0+36]) & 0x8) == 0, and falls through when (t6(=[a0+36]) & 0x8) != 0.
  The `beq` branch at 0x410df8 targets 0x410e34, is taken when (t5(=[a0+36]) & 0x8) == 0, and falls through when (t5(=[a0+36]) & 0x8) != 0.
  The `beq` branch at 0x410e40 targets 0x410e7c, is taken when (t6(=[a0+36]) & 0x8) == 0, and falls through when (t6(=[a0+36]) & 0x8) != 0.
  The `bne` branch at 0x410ecc targets 0x410edc, is taken when (t9(?) & 0x7) != 0, and falls through when (t9(?) & 0x7) == 0.
  The `beq` branch at 0x410ed4 targets 0x410efc and is always taken.
  The `beq` branch at 0x410f28 targets 0x410f64, is taken when (t8(=[a0+36]) & 0x8) == 0, and falls through when (t8(=[a0+36]) & 0x8) != 0.
  The `beq` branch at 0x410fa0 targets 0x410fdc, is taken when (t6(=[a0+36]) & 0x8) == 0, and falls through when (t6(=[a0+36]) & 0x8) != 0.
  The `beq` branch at 0x410fdc targets 0x411be8 and is always taken.
  The `bne` branch at 0x410ff4 targets 0x411bd4, is taken when v0(=ret(mvpRead)) != 0, and falls through when v0(=ret(mvpRead)) == 0.
  The `beq` branch at 0x41110c targets 0x411300, is taken when t2(?) >= 0x5 (unsigned), and falls through when t2(?) < 0x5 (unsigned).
  The `beq` branch at 0x411158 targets 0x411300 and is always taken.
  The `beq` branch at 0x411188 targets 0x411300 and is always taken.
  The `beq` branch at 0x4111b8 targets 0x411300 and is always taken.
  The `beq` branch at 0x4111e8 targets 0x411300 and is always taken.
  The `beq` branch at 0x411200 targets 0x411224, is taken when t8(?) >= 0x8 (unsigned), and falls through when t8(?) < 0x8 (unsigned).
  The `beq` branch at 0x411238 targets 0x411300 and is always taken.
  The `beq` branch at 0x411268 targets 0x411300 and is always taken.
  The `beq` branch at 0x411298 targets 0x411300 and is always taken.
  The `beq` branch at 0x4112c8 targets 0x411300 and is always taken.
  The `beq` branch at 0x4112f8 targets 0x411300 and is always taken.
  The `beq` branch at 0x411440 targets 0x41147c, is taken when (t0(=[a0+36]) & 0x8) == 0, and falls through when (t0(=[a0+36]) & 0x8) != 0.
  The `beq` branch at 0x411488 targets 0x4114c4, is taken when (t3(=[a0+36]) & 0x8) == 0, and falls through when (t3(=[a0+36]) & 0x8) != 0.
  The `bne` branch at 0x4115b0 targets 0x4115c8, is taken when v0(=ret(__ull_rem)) != 0, and falls through when v0(=ret(__ull_rem)) == 0.
  The `bne` branch at 0x4115b8 targets 0x4115c8, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x4115c0 targets 0x4115e8 and is always taken.
  The `bne` branch at 0x411644 targets 0x4116c8, is taken when (t9(=[a0+296]:1) & 0x2) != 0, and falls through when (t9(=[a0+296]:1) & 0x2) == 0.
  The `beq` branch at 0x411658 targets 0x41166c, is taken when (t7(=[a0+296]:1) & 0x1) == 0, and falls through when (t7(=[a0+296]:1) & 0x1) != 0.
  The `bne` branch at 0x411664 targets 0x411698, is taken when t7(=[a0+296]:1) != at(=0x11), and falls through when t7(=[a0+296]:1) == at(=0x11).
  The `beq` branch at 0x411690 targets 0x4116c0 and is always taken.
  The `beq` branch at 0x4116c0 targets 0x41175c and is always taken.
  The `bc1f` branch at 0x411700 targets 0x411734, is taken when not (f8 == f10 (c.eq.d at 0x4116f8)), and falls through when f8 == f10 (c.eq.d at 0x4116f8).
  The `beq` branch at 0x41172c targets 0x41175c and is always taken.
  The `bgez` branch at 0x4117a4 targets 0x4117b4, is taken when t9(?) >= 0 (signed), and falls through when t9(?) < 0 (signed).
  The `bgez` branch at 0x4117f0 targets 0x411800, is taken when t3(?) >= 0 (signed), and falls through when t3(?) < 0 (signed).
  The `bgez` branch at 0x4119b4 targets 0x4119c4, is taken when t2(?) >= 0 (signed), and falls through when t2(?) < 0 (signed).
  The `beq` branch at 0x411ab8 targets 0x411af4, is taken when (t4(=[a0+36]) & 0x8) == 0, and falls through when (t4(=[a0+36]) & 0x8) != 0.
  The `beq` branch at 0x411b00 targets 0x411b3c, is taken when (t6(=[a0+36]) & 0x8) == 0, and falls through when (t6(=[a0+36]) & 0x8) != 0.
  The `beq` branch at 0x411b48 targets 0x411b84, is taken when (t7(=[a0+36]) & 0x8) == 0, and falls through when (t7(=[a0+36]) & 0x8) != 0.
  The `beq` branch at 0x411b90 targets 0x411bcc, is taken when (t6(=[a0+36]) & 0x8) == 0, and falls through when (t6(=[a0+36]) & 0x8) != 0.
  The `beq` branch at 0x411bcc targets 0x411be8 and is always taken.
  The `beq` branch at 0x411be8 targets 0x411bf8 and is always taken.
  The return at 0x411c08 has v0 = 0x0.
  The instructions from 0x411bf0 to 0x411bf4 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x411128 uses the jump table at 0x417630 with targets 0x4111f0, 0x411130, 0x411160, 0x411190, 0x4111c0.
  The indirect jump at 0x41121c uses the jump table at 0x417644 with targets 0x411240, 0x411270, 0x411240, 0x411240, 0x4112a0, 0x411224, 0x4112d0, 0x4112a0.

- `mvpFromVLValue` in `usr/lib/dmedia/video/debug/mvp.so` at 0x412020 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x412020-0x41217c (348 bytes).
  It occupies 348 bytes.
  The `lwc1` at 0x412038 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0x41203c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0x41204c loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lwc1` at 0x412058 loads 4 bytes from a0 (arg0 at entry) +0x8.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lwc1` at 0x4120fc, `lwc1` at 0x41211c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lwc1` at 0x412130, `lwc1` at 0x412150.
  The `bc1f` branch at 0x41209c targets 0x4120c8, is taken when not (f4 < f6(=[a0]) (c.lt.d at 0x412094)), and falls through when f4 < f6(=[a0]) (c.lt.d at 0x412094).
  The `beq` branch at 0x4120c0 targets 0x4120e8 and is always taken.
  The `beq` branch at 0x412114 targets 0x412130, is taken when t2(?) >= t4(?) (signed), and falls through when t2(?) < t4(?) (signed).
  The `beq` branch at 0x412148 targets 0x412164, is taken when t9(?) >= t7(?) (signed), and falls through when t9(?) < t7(?) (signed).
  The `beq` branch at 0x412164 targets 0x412174 and is always taken.
  The return at 0x412174 has v0 = ?.
  The instructions from 0x41216c to 0x412170 are not reached by any path from the entry, and their branches are not listed.

- `mvpToVLValue` in `usr/lib/dmedia/video/debug/mvp.so` at 0x41217c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x41217c-0x412264 (232 bytes).
  It occupies 232 bytes.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lwc1` at 0x412190, `lwc1` at 0x4121bc.
  The `lwc1` at 0x4121c0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0x4121f4 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lwc1` at 0x4121fc loads 4 bytes from a0 (arg0 at entry) +0x8.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lwc1` at 0x412210, `lwc1` at 0x412224.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lwc1` at 0x412230, `lwc1` at 0x412244.
  The `bgez` branch at 0x4121a0 targets 0x4121bc, is taken when t7(?) >= 0 (signed), and falls through when t7(?) < 0 (signed).
  The `bne` branch at 0x4121ac targets 0x4121bc, is taken when a1 < 0x80 (signed), and falls through when a1 >= 0x80 (signed).
  The `bc1f` branch at 0x41221c targets 0x41222c, is taken when not (f16 < f4(=[a0+16]) (c.lt.s at 0x412214)), and falls through when f16 < f4(=[a0+16]) (c.lt.s at 0x412214).
  The `bc1f` branch at 0x41223c targets 0x41224c, is taken when not (f18(=[a0+20]) < f8 (c.lt.s at 0x412234)), and falls through when f18(=[a0+20]) < f8 (c.lt.s at 0x412234).
  The `beq` branch at 0x41224c targets 0x41225c and is always taken.
  The return at 0x41225c has v0 = ?.
  The instructions from 0x412254 to 0x412258 are not reached by any path from the entry, and their branches are not listed.

- `mvpsendi2ccontrols` in `usr/lib/dmedia/video/debug/mvp.so` at 0x412370 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x412370-0x412684 (788 bytes).
  It occupies 788 bytes.
  The `lw` at 0x4123a0 loads 4 bytes from a2 (arg2 at entry) +0x1c.
  The `sh` at 0x4123b0 stores 2 bytes to a2 (arg2 at entry) +0x0.
  The `sh` at 0x4123bc stores 2 bytes to a2 (arg2 at entry) +0x2.
  4 such `lbu` accesses load 1 byte from table(0x41c950) +0x0, including `lbu` at 0x412404, `lbu` at 0x41242c, `lbu` at 0x41244c.
  5 such `sh` accesses store 2 bytes to ?, including `sh` at 0x412490, `sh` at 0x4124a8, `sh` at 0x4124c8.
  4 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x412510, `lhu` at 0x412514, `lhu` at 0x412518.
  The `lw` at 0x4125c4 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jalr` at 0x4123cc calls mvpgeti2cchip [0x4122d8] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x412530 calls mvpPrintf with a0=a0 at entry (arg0), a1=0x417710, a2=?, a3=?.
  The `jalr` at 0x4125a0 calls mvpPanic with a0=0x417730, a1=?, a2=?, a3=?.
  The `jalr` at 0x4125c0 calls ioctl with a0=[a0+40], a1=0x6d767005, a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0x4125d8 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4125f0 calls mvpRevisionError with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x412600 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x412618 calls strerror with a0=ret(oserror), a1=?, a2=?, a3=?.
  The `jalr` at 0x412638 calls mvpPrintf with a0=a0 at entry (arg0), a1=0x417760, a2=ret(strerror), a3=?.
  The `jalr` at 0x412654 calls sginap with a0=0x1, a1=?, a2=?, a3=?.
  The `bne` branch at 0x4123e0 targets 0x4123f0, is taken when t2(=ret(mvpgeti2cchip)) != 0, and falls through when t2(=ret(mvpgeti2cchip)) == 0.
  The `beq` branch at 0x4123e8 targets 0x412670 and is always taken.
  The `beq` branch at 0x412414 targets 0x412540, is taken when s0(=entry(0x41c950)) == 0, and falls through when s0(=entry(0x41c950)) != 0.
  The `beq` branch at 0x412538 targets 0x412548 and is always taken.
  The `beq` branch at 0x412540 targets 0x41255c and is always taken.
  The `bne` branch at 0x412554 targets 0x4123f4, is taken when t1(?) < 0x5 (signed), and falls through when t1(?) >= 0x5 (signed).
  The `beq` branch at 0x412564 targets 0x412584, is taken when t5(?) >= 0x5 (signed), and falls through when t5(?) < 0x5 (signed).
  The `beq` branch at 0x41257c targets 0x4125ac and is always taken.
  The `bne` branch at 0x41258c targets 0x4125ac, is taken when t7(?) < 0x6 (signed), and falls through when t7(?) >= 0x6 (signed).
  The `bne` branch at 0x4125cc targets 0x41264c, is taken when v0(=ret(ioctl)) != at(=-0x1), and falls through when v0(=ret(ioctl)) == at(=-0x1).
  The `bne` branch at 0x4125e4 targets 0x4125fc, is taken when v0(=ret(oserror)) != at(=0x7), and falls through when v0(=ret(oserror)) == at(=0x7).
  The `beq` branch at 0x412644 targets 0x412670 and is always taken.
  The `beq` branch at 0x412660 targets 0x412670 and is always taken.
  The return at 0x41267c has v0 = one of 0x0, 0x7, 0x11.
  The instructions from 0x412668 to 0x41266c are not reached by any path from the entry, and their branches are not listed.

- `mvpgeti2ccontrols` in `usr/lib/dmedia/video/debug/mvp.so` at 0x412684 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x412684-0x412a3c (952 bytes).
  It occupies 952 bytes.
  6 such `lbu` accesses load 1 byte from table(0x41c950) +0x0, including `lbu` at 0x412710, `lbu` at 0x412738, `lbu` at 0x412764.
  5 such `sh` accesses store 2 bytes to ?, including `sh` at 0x412788, `sh` at 0x4127a0, `sh` at 0x4127c0.
  The `lw` at 0x412860 loads 4 bytes from a0 (arg0 at entry) +0x28.
  5 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x41292c, `lhu` at 0x412930, `lhu` at 0x412934.
  The `sw` at 0x412a14 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jalr` at 0x4126d8 calls mvpgeti2cchip [0x4122d8] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x41283c calls mvpPanic with a0=0x417778, a1=?, a2=?, a3=?.
  The `jalr` at 0x41285c calls ioctl with a0=[a0+40], a1=0x6d767005, a2=sp-144, a3=?.
  The `jalr` at 0x412874 calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x41288c calls mvpRevisionError with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x41289c calls oserror with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4128b4 calls strerror with a0=ret(oserror), a1=?, a2=?, a3=?.
  The `jalr` at 0x4128d4 calls mvpPrintf with a0=a0 at entry (arg0), a1=0x4177a8, a2=ret(strerror), a3=?.
  The `jalr` at 0x412950 calls mvpPrintf with a0=a0 at entry (arg0), a1=0x4177c0, a2=?, a3=?.
  The `bne` branch at 0x4126ec targets 0x4126fc, is taken when t9(=ret(mvpgeti2cchip)) != 0, and falls through when t9(=ret(mvpgeti2cchip)) == 0.
  The `beq` branch at 0x4126f4 targets 0x412a28 and is always taken.
  The `beq` branch at 0x412720 targets 0x4127dc, is taken when s0(=entry(0x41c950)) == 0, and falls through when s0(=entry(0x41c950)) != 0.
  The `beq` branch at 0x4127d4 targets 0x4127e4 and is always taken.
  The `beq` branch at 0x4127dc targets 0x4127f8 and is always taken.
  The `bne` branch at 0x4127f0 targets 0x412700, is taken when t8(?) < 0x5 (signed), and falls through when t8(?) >= 0x5 (signed).
  The `beq` branch at 0x412800 targets 0x412820, is taken when t2(?) >= 0x5 (signed), and falls through when t2(?) < 0x5 (signed).
  The `beq` branch at 0x412818 targets 0x412848 and is always taken.
  The `bne` branch at 0x412828 targets 0x412848, is taken when t0(?) < 0x6 (signed), and falls through when t0(?) >= 0x6 (signed).
  The `bne` branch at 0x412868 targets 0x4128e8, is taken when v0(=ret(ioctl)) != at(=-0x1), and falls through when v0(=ret(ioctl)) == at(=-0x1).
  The `bne` branch at 0x412880 targets 0x412898, is taken when v0(=ret(oserror)) != at(=0x7), and falls through when v0(=ret(oserror)) == at(=0x7).
  The `beq` branch at 0x4128e0 targets 0x412a28 and is always taken.
  The `beq` branch at 0x412910 targets 0x4129e4, is taken when s0(=entry(0x41c950)) == 0, and falls through when s0(=entry(0x41c950)) != 0.
  The `beq` branch at 0x4129dc targets 0x4129ec and is always taken.
  The `beq` branch at 0x4129e4 targets 0x412a00 and is always taken.
  The `bne` branch at 0x4129f8 targets 0x4128ec, is taken when t3(?) < 0x5 (signed), and falls through when t3(?) >= 0x5 (signed).
  The `beq` branch at 0x412a04 targets 0x412a18, is taken when t0(=a2) == 0, and falls through when t0(=a2) != 0.
  The `beq` branch at 0x412a18 targets 0x412a28 and is always taken.
  The return at 0x412a34 has v0 = one of 0x0, 0x7, 0x11.
  The instructions from 0x412a20 to 0x412a24 are not reached by any path from the entry, and their branches are not listed.

- `mvpvaluetranslate` in `usr/lib/dmedia/video/debug/mvp.so` at 0x412a3c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x412a3c-0x412e98 (1116 bytes).
  It occupies 1116 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x412a6c, `lw` at 0x412d10.
  6 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0x412ad4, `lw` at 0x412b50, `lw` at 0x412c00.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0x412ad8, `lw` at 0x412b54, `lw` at 0x412c04.
  6 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x412afc, `sw` at 0x412b88, `sw` at 0x412c3c.
  6 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lw` at 0x412b08, `lw` at 0x412b94, `lw` at 0x412c50.
  8 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x412b20, `sw` at 0x412bc8, `sw` at 0x412c7c.
  5 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `sw` at 0x412b2c, `sw` at 0x412bd4, `sw` at 0x412be8.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x412b58, `lw` at 0x412b9c, `lw` at 0x412c14.
  The `lw` at 0x412d84 loads 4 bytes from ([a0+12] + ([a2] << 0x2)) +0x0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x412dc0, `lw` at 0x412df0.
  The `lw` at 0x412e24 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `jalr` at 0x412b74 calls mvpFromVLValue with a0=[a0+12], a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x412ba0 calls mvpToVLValue with a0=[a0+12]+24, a1=[a3], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x412c28 calls mvpFromVLValue with a0=[a0+12], a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x412c54 calls mvpToVLValue with a0=[a0+12]+24, a1=[a3], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x412d5c calls mvpAssertFail with a0=0x4177e0, a1=0x4177f8, a2=0x1cb, a3=a3 at entry (arg3).
  The `jalr` at 0x412e34 calls mvpErrPrintf with a0=0x0, a1=0x417804, a2=[a0+4], a3=[a3].
  The `jalr` at 0x412e60 calls mvpErrPrintf with a0=0x0, a1=0x417834, a2=?, a3=a3 at entry (arg3).
  The `beq` branch at 0x412a80 targets 0x412d0c, is taken when s0(?) == at(=0x1000), and falls through when s0(?) != at(=0x1000).
  The `beq` branch at 0x412a8c targets 0x412b38, is taken when s0(?) == at(=0x2000), and falls through when s0(?) != at(=0x2000).
  The `beq` branch at 0x412a98 targets 0x412ac0, is taken when s0(?) == at(=0x3000), and falls through when s0(?) != at(=0x3000).
  The `beq` branch at 0x412aa4 targets 0x412be0, is taken when s0(?) == at(=0x4000), and falls through when s0(?) != at(=0x4000).
  The `beq` branch at 0x412ab0 targets 0x412c94, is taken when s0(?) == at(=0x5000), and falls through when s0(?) != at(=0x5000).
  The `beq` branch at 0x412ab8 targets 0x412e50 and is always taken.
  The `beq` branch at 0x412ac4 targets 0x412b00, is taken when t9(=a1) == 0, and falls through when t9(=a1) != 0.
  The `beq` branch at 0x412af8 targets 0x412b30 and is always taken.
  The `beq` branch at 0x412b30 targets 0x412e7c and is always taken.
  The `beq` branch at 0x412b3c targets 0x412b8c, is taken when t2(=a1) == 0, and falls through when t2(=a1) != 0.
  The `beq` branch at 0x412b84 targets 0x412bd8 and is always taken.
  The `beq` branch at 0x412bd8 targets 0x412e7c and is always taken.
  The `beq` branch at 0x412bf0 targets 0x412c40, is taken when t7(=a1) == 0, and falls through when t7(=a1) != 0.
  The `beq` branch at 0x412c38 targets 0x412c8c and is always taken.
  The `beq` branch at 0x412c8c targets 0x412e7c and is always taken.
  The `beq` branch at 0x412c98 targets 0x412cd0, is taken when t9(=a1) == 0, and falls through when t9(=a1) != 0.
  The `beq` branch at 0x412ca8 targets 0x412cbc, is taken when t2(=[a2]) == 0, and falls through when t2(=[a2]) != 0.
  The `beq` branch at 0x412cb4 targets 0x412cc8 and is always taken.
  The `beq` branch at 0x412cc8 targets 0x412d04 and is always taken.
  The `beq` branch at 0x412ce4 targets 0x412cf8, is taken when t1(=[a3]) == 0, and falls through when t1(=[a3]) != 0.
  The `beq` branch at 0x412cf0 targets 0x412d04 and is always taken.
  The `beq` branch at 0x412d04 targets 0x412e7c and is always taken.
  The `beq` branch at 0x412d20 targets 0x412d90, is taken when t6(=a1) == 0, and falls through when t6(=a1) != 0.
  The `beq` branch at 0x412d38 targets 0x412d48, is taken when t8(=[a2]) >= t1(?) (signed), and falls through when t8(=[a2]) < t1(?) (signed).
  The `beq` branch at 0x412d40 targets 0x412d68 and is always taken.
  The `beq` branch at 0x412d88 targets 0x412e48 and is always taken.
  The `bltz` branch at 0x412da4 targets 0x412dfc, is taken when t2(?) < 0 (signed), and falls through when t2(?) >= 0 (signed).
  The `beq` branch at 0x412dc4 targets 0x412dfc, is taken when t6(?) == t7(=[a3]), and falls through when t6(?) != t7(=[a3]).
  The `bltz` branch at 0x412dd4 targets 0x412dfc, is taken when t1(?) < 0 (signed), and falls through when t1(?) >= 0 (signed).
  The `bne` branch at 0x412df4 targets 0x412dcc, is taken when t5(?) != t4(=[a3]), and falls through when t5(?) == t4(=[a3]).
  The `bltz` branch at 0x412e00 targets 0x412e18, is taken when t6(?) < 0 (signed), and falls through when t6(?) >= 0 (signed).
  The `beq` branch at 0x412e10 targets 0x412e48 and is always taken.
  The `beq` branch at 0x412e48 targets 0x412e7c and is always taken.
  The `beq` branch at 0x412e74 targets 0x412e7c and is always taken.
  The `beq` branch at 0x412e7c targets 0x412e84 and is always taken.
  The return at 0x412e90 has v0 = ?.

- `mvpothercontrol` in `usr/lib/dmedia/video/debug/mvp.so` at 0x412e98 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x412e98-0x4136b0 (2072 bytes).
  It occupies 2072 bytes.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x412ec0, `lw` at 0x412f0c.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0x412ed0, `sw` at 0x412f1c.
  The `bne` branch at 0x412ec4 targets 0x412edc, is taken when t9(?) != a0, and falls through when t9(?) == a0.
  The `beq` branch at 0x412ed4 targets 0x412f54 and is always taken.
  The `bgtz` branch at 0x412ef0 targets 0x412ebc, is taken when t4(?) > 0 (signed), and falls through when t4(?) <= 0 (signed).
  The `bne` branch at 0x412f10 targets 0x412f28, is taken when t8(?) != a0, and falls through when t8(?) == a0.
  The `beq` branch at 0x412f20 targets 0x412f54 and is always taken.
  The `bgtz` branch at 0x412f3c targets 0x412f08, is taken when t3(?) > 0 (signed), and falls through when t3(?) <= 0 (signed).
  The `beq` branch at 0x412f44 targets 0x412f54 and is always taken.
  The return at 0x412f54 has v0 = one of 0x0, 0x1.
  The instructions from 0x412f4c to 0x412f50 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x412f5c to 0x4136ac are not reached by any path from the entry, and their branches are not listed.

- `mvpGetVideoPortControl` in `usr/lib/dmedia/video/debug/mvp.so` at 0x412f5c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x412f5c-0x413178 (540 bytes).
  It occupies 540 bytes.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x412fd0, `sw` at 0x413148.
  The `lwl` at 0x412fe8 loads 4 bytes from abs 0x417854.
  The `lwr` at 0x412fec loads 4 bytes from abs 0x417857.
  The `swl` at 0x412ff0 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `swr` at 0x412ff4 stores 4 bytes to a3 (arg3 at entry) +0x3.
  The `lwl` at 0x412ff8 loads 4 bytes from abs 0x417858.
  The `lwr` at 0x412ffc loads 4 bytes from abs 0x41785b.
  The `swl` at 0x413000 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `swr` at 0x413004 stores 4 bytes to a3 (arg3 at entry) +0x7.
  The `lwl` at 0x413008 loads 4 bytes from abs 0x41785c.
  The `lwr` at 0x41300c loads 4 bytes from abs 0x41785f.
  The `swl` at 0x413010 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `swr` at 0x413014 stores 4 bytes to a3 (arg3 at entry) +0xb.
  The `lwl` at 0x413018 loads 4 bytes from abs 0x417860.
  The `lwr` at 0x41301c loads 4 bytes from abs 0x417863.
  The `swl` at 0x413020 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `swr` at 0x413024 stores 4 bytes to a3 (arg3 at entry) +0xf.
  The `lwl` at 0x413028 loads 4 bytes from abs 0x417864.
  The `lwr` at 0x41302c loads 4 bytes from abs 0x417867.
  The `swl` at 0x413030 stores 4 bytes to a3 (arg3 at entry) +0x10.
  The `swr` at 0x413034 stores 4 bytes to a3 (arg3 at entry) +0x13.
  The `lwl` at 0x413038 loads 4 bytes from abs 0x417868.
  The `lwr` at 0x41303c loads 4 bytes from abs 0x41786b.
  The `swl` at 0x413040 stores 4 bytes to a3 (arg3 at entry) +0x14.
  The `swr` at 0x413044 stores 4 bytes to a3 (arg3 at entry) +0x17.
  The `lbu` at 0x413048 loads 1 byte from abs 0x41786c.
  The `sb` at 0x41304c stores 1 byte to a3 (arg3 at entry) +0x18.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4130a0, `lw` at 0x413110.
  The `jalr` at 0x413068 calls mvpothercontrol [0x412e98] with a0=a2 at entry (arg2), a1=sp-16, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4130b4 calls mvpgeti2ccontrolindex [0x412264] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4130e0 calls mvpgeti2ccontrols [0x412684] with a0=a0 at entry (arg0), a1=ret(mvpgeti2ccontrolindex), a2=sp-8, a3=?.
  The `jalr` at 0x413130 calls mvpvaluetranslate [0x412a3c] with a0=?, a1=0x0, a2=a3 at entry (arg3), a3=sp-8.
  The `bne` branch at 0x412f94 targets 0x413058, is taken when t6(=a1) != at(=0x1), and falls through when t6(=a1) == at(=0x1).
  The `beq` branch at 0x412fa8 targets 0x412fdc, is taken when s0(=a2) == at(=0x56430001), and falls through when s0(=a2) != at(=0x56430001).
  The `beq` branch at 0x412fb8 targets 0x412fc8, is taken when s0(=a2) == at(=0x56430002), and falls through when s0(=a2) != at(=0x56430002).
  The `beq` branch at 0x412fc0 targets 0x413058 and is always taken.
  The `beq` branch at 0x412fd4 targets 0x413164 and is always taken.
  The `beq` branch at 0x413050 targets 0x413164 and is always taken.
  The `beq` branch at 0x41307c targets 0x4130a8, is taken when t3(=ret(mvpothercontrol)) == 0, and falls through when t3(=ret(mvpothercontrol)) != 0.
  The `bne` branch at 0x41308c targets 0x41309c, is taken when t4(=ret(mvpothercontrol)) != at(=-0x1), and falls through when t4(=ret(mvpothercontrol)) == at(=-0x1).
  The `beq` branch at 0x413094 targets 0x413164 and is always taken.
  The `bltz` branch at 0x4130c8 targets 0x413154, is taken when t7(=ret(mvpgeti2ccontrolindex)) < 0 (signed), and falls through when t7(=ret(mvpgeti2ccontrolindex)) >= 0 (signed).
  The `beq` branch at 0x4130f4 targets 0x413104, is taken when t8(=ret(mvpgeti2ccontrols)) == 0, and falls through when t8(=ret(mvpgeti2ccontrols)) != 0.
  The `beq` branch at 0x4130fc targets 0x413164 and is always taken.
  The `beq` branch at 0x413108 targets 0x413140, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x413114 targets 0x413140, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x413138 targets 0x41314c and is always taken.
  The `beq` branch at 0x41314c targets 0x413164 and is always taken.
  The `beq` branch at 0x413154 targets 0x413164 and is always taken.
  The return at 0x413170 has v0 = one of 0x0, 0x7, ret(mvpgeti2ccontrols).
  The instructions from 0x41315c to 0x413160 are not reached by any path from the entry, and their branches are not listed.

- `mvpSetVideoPortControl` in `usr/lib/dmedia/video/debug/mvp.so` at 0x413178 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/dmedia/video/debug/mvp.so`.
  Range: 0x413178-0x413304 (396 bytes).
  It occupies 396 bytes.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4131e8, `lw` at 0x4131f4.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0xc, including `lw` at 0x41321c, `lw` at 0x41322c, `lw` at 0x413244.
  2 such `lw` accesses load 4 bytes from [a3+12] +0x0, including `lw` at 0x413230, `lw` at 0x413248.
  The `jalr` at 0x4131b0 calls mvpothercontrol [0x412e98] with a0=a2 at entry (arg2), a1=sp-160, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x413218 calls mvpvaluetranslate [0x412a3c] with a0=?, a1=0x1, a2=[a3+12], a3=sp-156.
  The `jalr` at 0x41325c calls mvpgeti2ccontrolindex [0x412264] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x413298 calls mvpCDev with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x4132b8 calls mvpFromVLControlValue with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=sp-148, a3=?.
  The `jalr` at 0x4132d4 calls mvpsendi2ccontrols [0x412370] with a0=a0 at entry (arg0), a1=?, a2=sp-152, a3=?.
  The `beq` branch at 0x4131c4 targets 0x413240, is taken when t6(=ret(mvpothercontrol)) == 0, and falls through when t6(=ret(mvpothercontrol)) != 0.
  The `bne` branch at 0x4131d4 targets 0x4131e4, is taken when t7(=ret(mvpothercontrol)) != at(=-0x1), and falls through when t7(=ret(mvpothercontrol)) == at(=-0x1).
  The `beq` branch at 0x4131dc targets 0x4132f4 and is always taken.
  The `beq` branch at 0x4131f8 targets 0x413228, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x413220 targets 0x413238 and is always taken.
  The `beq` branch at 0x413238 targets 0x413250 and is always taken.
  The `bltz` branch at 0x413270 targets 0x4132e4, is taken when t9(=ret(mvpgeti2ccontrolindex)) < 0 (signed), and falls through when t9(=ret(mvpgeti2ccontrolindex)) >= 0 (signed).
  The `beq` branch at 0x4132dc targets 0x4132f4 and is always taken.
  The `beq` branch at 0x4132e4 targets 0x4132f4 and is always taken.
  The return at 0x4132fc has v0 = one of 0x7, ret(mvpsendi2ccontrols).
  The instructions from 0x4132ec to 0x4132f0 are not reached by any path from the entry, and their branches are not listed.
