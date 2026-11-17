# Readings: `usr/sbin/Confidence/dualchannel`

One entry per routine, filed here from the reading batches by binary.

- `reshape` in `usr/sbin/Confidence/dualchannel` at 0x404370 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/sbin/Confidence/dualchannel`.
  Range: 0x404370-0x404458 (232 bytes).
  It occupies 232 bytes.
  The `jalr` at 0x4043a0 calls glViewport with a0=0x0, a1=0x0, a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `jalr` at 0x4043b4 calls glMatrixMode with a0=0x1701, a1=?, a2=?, a3=?.
  The `jalr` at 0x4043c4 calls glLoadIdentity with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4043f8 calls gluOrtho2D with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40440c calls glMatrixMode with a0=0x1700, a1=?, a2=?, a3=?.
  The `jalr` at 0x40441c calls glLoadIdentity with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40443c calls glTranslatef with a0=?, a1=?, a2=0x0, a3=?.
  The return at 0x404450 has v0 = ret(glTranslatef).

- `runDiagnostic` in `usr/sbin/Confidence/dualchannel` at 0x404458 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/sbin/Confidence/dualchannel`.
  Range: 0x404458-0x4046c8 (624 bytes).
  It occupies 624 bytes.
  The `lw` at 0x404474 loads 4 bytes from sym(gfxType) +0x0.
  2 such `sw` accesses store 4 bytes to sym(testno) +0x0, including `sw` at 0x404518, `sw` at 0x404648.
  The `lw` at 0x404538 loads 4 bytes from sym(test_runs) +0x0.
  4 such `lw` accesses load 4 bytes from sym(continuous) +0x0, including `lw` at 0x40453c, `lw` at 0x404570, `lw` at 0x4045c4.
  The `sw` at 0x40454c stores 4 bytes to sym(test_runs) +0x0.
  2 such `lw` accesses load 4 bytes from sym(failed_tests) +0x0, including `lw` at 0x404564, `lw` at 0x404574.
  The `lw` at 0x404580 loads 4 bytes from sym(verbose) +0x0.
  The `lwl` at 0x4045d8 loads 4 bytes from abs 0x100002a0.
  The `lwr` at 0x4045dc loads 4 bytes from abs 0x100002a3.
  The `lwl` at 0x4045ec loads 4 bytes from abs 0x100002a4.
  The `lwr` at 0x4045f0 loads 4 bytes from abs 0x100002a7.
  The `lbu` at 0x4045fc loads 1 byte from abs 0x100002a8.
  The `lbu` at 0x404604 loads 1 byte from abs 0x100002a9.
  The `lw` at 0x404664 loads 4 bytes from sym(conf_test) +0x0.
  The `jalr` at 0x4044a8 calls crime_i2c_reset with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4044c8 calls odsy_i2c_reset with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4044dc calls dc_read with a0=sym(dc_ctlreg), a1=?, a2=?, a3=?.
  The `jalr` at 0x404520 calls DatapathTest with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404530 calls DramTest with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x404560 calls fprintf with a0=sym(__iob)+32, a1=0x10000258, a2=[sym(test_runs)]+1, a3=[sym(failed_tests)].
  The `jalr` at 0x404598 calls gettxt with a0=0x1000027c, a1=0x10000284, a2=?, a3=?.
  The `jalr` at 0x4045b4 calls fprintf with a0=sym(__iob)+32, a1=0x10000278, a2=ret(gettxt), a3=?.
  The `jalr` at 0x404608 calls gettxt with a0=0x100002ac, a1=0x100002b4, a2=?, a3=?.
  The `jalr` at 0x404620 calls strcat with a0=sp-80, a1=ret(gettxt), a2=?, a3=?.
  The `jalr` at 0x404634 calls puts with a0=sp-80, a1=?, a2=?, a3=?.
  The `jalr` at 0x404654 calls dc_disp_mode with a0=0x3, a1=?, a2=?, a3=?.
  The `jalr` at 0x404678 calls set_timing with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x40468c calls exit with a0=0x0, a1=?, a2=?, a3=?.
  The `bne` branch at 0x40449c targets 0x4044b8, is taken when v0(=[sym(gfxType)]) != at(=0x1), and falls through when v0(=[sym(gfxType)]) == at(=0x1).
  The `beq` branch at 0x4044b0 targets 0x4044d4 and is always taken.
  The `bne` branch at 0x4044bc targets 0x4044d4, is taken when v0(=[sym(gfxType)]) != at(=0x2), and falls through when v0(=[sym(gfxType)]) == at(=0x2).
  The `beq` branch at 0x404548 targets 0x404574, is taken when v1(=[sym(continuous)]) == 0, and falls through when v1(=[sym(continuous)]) != 0.
  The `beq` branch at 0x40456c targets 0x404644 and is always taken.
  The `bne` branch at 0x404578 targets 0x404644, is taken when t8(=[sym(failed_tests)]) != 0, and falls through when t8(=[sym(failed_tests)]) == 0.
  The `beq` branch at 0x404584 targets 0x4045c8, is taken when t9(=[sym(verbose)]) == 0, and falls through when t9(=[sym(verbose)]) != 0.
  The `beq` branch at 0x4045c0 targets 0x404644 and is always taken.
  The `bnel` branch at 0x404644 targets 0x40451c, is taken when v1(=[sym(continuous)]) != 0, and falls through when v1(=[sym(continuous)]) == 0; its branch-likely delay slot `sw zero,0(s4)` at 0x404648 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x404668 targets 0x404684, is taken when t3(=[sym(conf_test)]) == 0, and falls through when t3(=[sym(conf_test)]) != 0.
  The return at 0x4046c0 has v0 = ret(exit).

- `clean_up` in `usr/sbin/Confidence/dualchannel` at 0x4046c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/sbin/Confidence/dualchannel`.
  Range: 0x4046c8-0x404780 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0x4046e0 loads 4 bytes from sym(gfxType) +0x0.
  The `lw` at 0x40473c loads 4 bytes from sym(conf_test) +0x0.
  The `jalr` at 0x4046f8 calls crime_i2c_reset with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404718 calls odsy_i2c_reset with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40472c calls dc_disp_mode with a0=0x3, a1=?, a2=?, a3=?.
  The `jalr` at 0x404750 calls set_timing with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x404764 calls exit with a0=0x0, a1=?, a2=?, a3=?.
  The `bnel` branch at 0x4046ec targets 0x40470c, is taken when v0(=[sym(gfxType)]) != at(=0x1), and falls through when v0(=[sym(gfxType)]) == at(=0x1); its branch-likely delay slot `addiu at,zero,2` at 0x4046f0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x404700 targets 0x404724 and is always taken.
  The `bne` branch at 0x40470c targets 0x404724, is taken when v0(=[sym(gfxType)]) != at(=0x2), and falls through when v0(=[sym(gfxType)]) == at(=0x2).
  The `beq` branch at 0x404740 targets 0x40475c, is taken when t6(=[sym(conf_test)]) == 0, and falls through when t6(=[sym(conf_test)]) != 0.
  The return at 0x404778 has v0 = ret(exit).
  The instructions from 0x404708 to 0x404708 are not reached by any path from the entry, and their branches are not listed.

- `odsy_i2c_reset` in `usr/sbin/Confidence/dualchannel` at 0x40483c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/sbin/Confidence/dualchannel`.
  Range: 0x40483c-0x40490c (208 bytes).
  It occupies 208 bytes.
  The `lw` at 0x404854 loads 4 bytes from sym(i2cfd) +0x0.
  The `lw` at 0x4048b4 loads 4 bytes from sym(conf_test) +0x0.
  The `jalr` at 0x404868 calls bzero with a0=sp-48, a1=0x30, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40488c calls ioctl with a0=[sym(i2cfd)], a1=0x6f640021, a2=sp-48, a3=?.
  The `jalr` at 0x4048a4 calls perror with a0=0x100002e4, a1=?, a2=?, a3=?.
  The `jalr` at 0x4048c8 calls set_timing with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x4048dc calls close with a0=[sym(i2cfd)], a1=?, a2=?, a3=?.
  The `jalr` at 0x4048f0 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `bgez` branch at 0x404894 targets 0x4048fc, is taken when v0(=ret(ioctl)) >= 0 (signed), and falls through when v0(=ret(ioctl)) < 0 (signed).
  The `beq` branch at 0x4048b8 targets 0x4048d4, is taken when t7(=[sym(conf_test)]) == 0, and falls through when t7(=[sym(conf_test)]) != 0.
  The return at 0x404904 has v0 = one of ret(ioctl), ret(exit).

- `odsy_i2c_start` in `usr/sbin/Confidence/dualchannel` at 0x4049c4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/sbin/Confidence/dualchannel`.
  Range: 0x4049c4-0x404a98 (212 bytes).
  It occupies 212 bytes.
  The `lw` at 0x4049dc loads 4 bytes from sym(i2cfd) +0x0.
  The `lw` at 0x404a40 loads 4 bytes from sym(conf_test) +0x0.
  The `jalr` at 0x4049f0 calls bzero with a0=sp-48, a1=0x30, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404a18 calls ioctl with a0=[sym(i2cfd)], a1=0x6f640021, a2=sp-48, a3=?.
  The `jalr` at 0x404a30 calls perror with a0=0x1000030c, a1=?, a2=?, a3=?.
  The `jalr` at 0x404a54 calls set_timing with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x404a68 calls close with a0=[sym(i2cfd)], a1=?, a2=?, a3=?.
  The `jalr` at 0x404a7c calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `bgez` branch at 0x404a20 targets 0x404a88, is taken when v0(=ret(ioctl)) >= 0 (signed), and falls through when v0(=ret(ioctl)) < 0 (signed).
  The `beq` branch at 0x404a44 targets 0x404a60, is taken when t8(=[sym(conf_test)]) == 0, and falls through when t8(=[sym(conf_test)]) != 0.
  The return at 0x404a90 has v0 = one of ret(ioctl), ret(exit).

- `odsy_i2c_stop` in `usr/sbin/Confidence/dualchannel` at 0x404b54 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/sbin/Confidence/dualchannel`.
  Range: 0x404b54-0x404c38 (228 bytes).
  It occupies 228 bytes.
  The `lw` at 0x404b6c loads 4 bytes from sym(i2cfd) +0x0.
  The `lw` at 0x404be0 loads 4 bytes from sym(conf_test) +0x0.
  The `jalr` at 0x404b80 calls bzero with a0=sp-48, a1=0x30, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404bb8 calls ioctl with a0=[sym(i2cfd)], a1=0x6f640021, a2=sp-48, a3=?.
  The `jalr` at 0x404bd0 calls perror with a0=0x10000330, a1=?, a2=?, a3=?.
  The `jalr` at 0x404bf4 calls set_timing with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x404c08 calls close with a0=[sym(i2cfd)], a1=?, a2=?, a3=?.
  The `jalr` at 0x404c1c calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `bgez` branch at 0x404bc0 targets 0x404c28, is taken when v0(=ret(ioctl)) >= 0 (signed), and falls through when v0(=ret(ioctl)) < 0 (signed).
  The `beq` branch at 0x404be4 targets 0x404c00, is taken when t0(=[sym(conf_test)]) == 0, and falls through when t0(=[sym(conf_test)]) != 0.
  The return at 0x404c30 has v0 = one of ret(ioctl), ret(exit).

- `odsy_i2c_sendbyte` in `usr/sbin/Confidence/dualchannel` at 0x404ce4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/sbin/Confidence/dualchannel`.
  Range: 0x404ce4-0x404db4 (208 bytes).
  It occupies 208 bytes.
  The `lw` at 0x404cfc loads 4 bytes from sym(i2cfd) +0x0.
  The `jalr` at 0x404d14 calls bzero with a0=sp-48, a1=0x30, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404d54 calls ioctl with a0=[sym(i2cfd)], a1=0x6f640021, a2=sp-48, a3=?.
  The `jalr` at 0x404d78 calls fprintf with a0=sym(__iob)+32, a1=0x1000036c, a2=?, a3=?.
  The `jalr` at 0x404d8c calls perror with a0=0x10000394, a1=?, a2=?, a3=?.
  The `bgez` branch at 0x404d5c targets 0x404da0, is taken when v0(=ret(ioctl)) >= 0 (signed), and falls through when v0(=ret(ioctl)) < 0 (signed).
  The `beq` branch at 0x404d98 targets 0x404da4 and is always taken.
  The return at 0x404dac has v0 = one of 0x0, 0x1.

- `odsy_i2c_rcvbytes` in `usr/sbin/Confidence/dualchannel` at 0x404e98 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/sbin/Confidence/dualchannel`.
  Range: 0x404e98-0x404fac (276 bytes).
  It occupies 276 bytes.
  The `lw` at 0x404eb4 loads 4 bytes from sym(i2cfd) +0x0.
  The `sw` at 0x404f4c stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jalr` at 0x404ed0 calls bzero with a0=sp-48, a1=0x30, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x404f10 calls ioctl with a0=[sym(i2cfd)], a1=0x6f640021, a2=sp-48, a3=?.
  The `jalr` at 0x404f34 calls fprintf with a0=sym(__iob)+32, a1=0x100003e4, a2=ret(ioctl), a3=?.
  The `jalr` at 0x404f74 calls fprintf with a0=sym(__iob)+32, a1=0x10000404, a2=?, a3=?.
  The `jalr` at 0x404f88 calls perror with a0=0x1000042c, a1=?, a2=?, a3=?.
  The `bgez` branch at 0x404f1c targets 0x404f40, is taken when v0(=ret(ioctl)) >= 0 (signed), and falls through when v0(=ret(ioctl)) < 0 (signed).
  The `beql` branch at 0x404f58 targets 0x404f9c, is taken when t2(?) >= t4(=a0) (signed), and falls through when t2(?) < t4(=a0) (signed); its branch-likely delay slot `lw ra,28(sp)` at 0x404f5c runs only when taken and is annulled on fall-through.
  The return at 0x404fa4 has v0 = ?.

- `odsy_i2c_test` in `usr/sbin/Confidence/dualchannel` at 0x4050f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/sbin/Confidence/dualchannel`.
  Range: 0x4050f8-0x40529c (420 bytes).
  It occupies 420 bytes.
  The `lw` at 0x405130 loads 4 bytes from sym(i2cfd) +0x0.
  The `jalr` at 0x405138 calls fprintf with a0=sym(__iob)+32, a1=0x1000044c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x405154 calls bzero with a0=sp-48, a1=0x30, a2=?, a3=?.
  The `jalr` at 0x40517c calls ioctl with a0=[sym(i2cfd)], a1=0x6f640021, a2=sp-48, a3=?.
  The `jalr` at 0x4051d0 calls ioctl with a0=[sym(i2cfd)], a1=0x6f640021, a2=sp-48, a3=?.
  The `jalr` at 0x405200 calls ioctl with a0=[sym(i2cfd)], a1=0x6f640021, a2=sp-48, a3=?.
  The `jalr` at 0x405230 calls ioctl with a0=[sym(i2cfd)], a1=0x6f640021, a2=sp-48, a3=?.
  The `jalr` at 0x405250 calls ioctl with a0=[sym(i2cfd)], a1=0x6f640021, a2=sp-48, a3=?.
  The `bnel` branch at 0x405264 targets 0x405264, is taken when v0(?) != s0(=0xc350), and falls through when v0(?) == s0(=0xc350); its branch-likely delay slot `addiu v0,v0,4` at 0x405268 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x40526c targets 0x40519c and is always taken.
  The instructions from 0x405274 to 0x405298 are not reached by any path from the entry, and their branches are not listed.

- `runPattern` in `usr/sbin/Confidence/dualchannel` at 0x40529c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/sbin/Confidence/dualchannel`.
  Range: 0x40529c-0x405b4c (2224 bytes).
  It occupies 2224 bytes.
  8 such `lw` accesses load 4 bytes from sym(verbose) +0x0, including `lw` at 0x4052bc, `lw` at 0x405388, `lw` at 0x405500.
  3 such `lw` accesses load 4 bytes from sym(pattern) +0x0, including `lw` at 0x40530c, `lw` at 0x405354, `lw` at 0x405b08.
  2 such `sw` accesses store 4 bytes to sym(pattern) +0x0, including `sw` at 0x405330, `sw` at 0x405b10.
  The `lw` at 0x405378 loads 4 bytes from table(0x10000a00) +0x0.
  22 such `lw` accesses load 4 bytes from sym(winHeight) +0x0, including `lw` at 0x405398, `lw` at 0x4053b4, `lw` at 0x4054e4.
  15 such `lw` accesses load 4 bytes from sym(winWidth) +0x0, including `lw` at 0x4053c0, `lw` at 0x4054d0, `lw` at 0x405540.
  77 such `lw` accesses load 4 bytes from sym(image) +0x0, including `lw` at 0x4053d0, `lw` at 0x4053e4, `lw` at 0x4053f8.
  69 such `sb` accesses store 1 byte to ?, including `sb` at 0x4053e0, `sb` at 0x4053f4, `sb` at 0x405400.
  The `jalr` at 0x4052f4 calls fprintf with a0=sym(__iob)+32, a1=0x10000468, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4053a8 calls fprintf with a0=sym(__iob)+32, a1=0x10000480, a2=?, a3=?.
  The `jalr` at 0x405528 calls fprintf with a0=sym(__iob)+32, a1=0x1000049c, a2=0x100004ac, a3=?.
  The `jalr` at 0x4055d8 calls fprintf with a0=sym(__iob)+32, a1=0x100004b0, a2=0x100004c4, a3=?.
  The `jalr` at 0x405688 calls fprintf with a0=sym(__iob)+32, a1=0x100004c8, a2=0x100004dc, a3=?.
  The `jalr` at 0x405730 calls fprintf with a0=sym(__iob)+32, a1=0x100004e0, a2=?, a3=?.
  The `jalr` at 0x405808 calls fprintf with a0=sym(__iob)+32, a1=0x10000504, a2=?, a3=?.
  The `jalr` at 0x405940 calls fprintf with a0=sym(__iob)+32, a1=0x10000528, a2=?, a3=?.
  The `jalr` at 0x405aa8 calls glRasterPos2i with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jalr` at 0x405acc calls glDrawPixels with a0=[sym(winWidth)], a1=[sym(winHeight)], a2=0x1908, a3=0x1401.
  The `jalr` at 0x405adc calls glFlush with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405af0 calls FrameSync with a0=0x3c, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4052dc targets 0x405300, is taken when t6(=[sym(verbose)]) == 0, and falls through when t6(=[sym(verbose)]) != 0.
  The `bne` branch at 0x405314 targets 0x405324, is taken when v0(=[sym(pattern)]) != 0, and falls through when v0(=[sym(pattern)]) == 0.
  The `beq` branch at 0x40531c targets 0x405334 and is always taken.
  The `beq` branch at 0x405338 targets 0x405b1c, is taken when s8(=one of 0x1, 0x7) == 0, and falls through when s8(=one of 0x1, 0x7) != 0.
  The `beq` branch at 0x405364 targets 0x405a9c, is taken when t9(?) >= 0x7 (unsigned), and falls through when t9(?) < 0x7 (unsigned).
  The `beql` branch at 0x405394 targets 0x4053b8, is taken when t0(=[sym(verbose)]) == 0, and falls through when t0(=[sym(verbose)]) != 0; its branch-likely delay slot `lw v0,0(s5)` at 0x405398 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0x4053b8 targets 0x405a9c, is taken when v0(=[sym(winHeight)]) <= 0 (signed), and falls through when v0(=[sym(winHeight)]) > 0 (signed).
  The `blez` branch at 0x4053c8 targets 0x4054e8, is taken when a0(=[sym(winWidth)]) <= 0 (signed), and falls through when a0(=[sym(winWidth)]) > 0 (signed).
  The `bnel` branch at 0x4054dc targets 0x4053d4, is taken when v1(?) < a0(=[sym(winWidth)]) (signed), and falls through when v1(?) >= a0(=[sym(winWidth)]) (signed); its branch-likely delay slot `lw t1,0(s1)` at 0x4054e0 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0x4054f0 targets 0x4053c8, is taken when s4(?) < v0(=[sym(winHeight)]) (signed), and falls through when s4(?) >= v0(=[sym(winHeight)]) (signed); its branch-likely delay slot `or v1,zero,zero` at 0x4054f4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x4054f8 targets 0x405a9c and is always taken.
  The `beql` branch at 0x40550c targets 0x405538, is taken when t1(=[sym(verbose)]) == 0, and falls through when t1(=[sym(verbose)]) != 0; its branch-likely delay slot `lw v0,0(s5)` at 0x405510 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0x405538 targets 0x405a9c, is taken when v0(=[sym(winHeight)]) <= 0 (signed), and falls through when v0(=[sym(winHeight)]) > 0 (signed).
  The `blez` branch at 0x405544 targets 0x405598, is taken when a0(=[sym(winWidth)]) <= 0 (signed), and falls through when a0(=[sym(winWidth)]) > 0 (signed).
  The `bnel` branch at 0x40558c targets 0x405550, is taken when v1(?) < a0(=[sym(winWidth)]) (signed), and falls through when v1(?) >= a0(=[sym(winWidth)]) (signed); its branch-likely delay slot `lw t2,0(s1)` at 0x405590 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x4055a0 targets 0x405544, is taken when s4(?) < v0(=[sym(winHeight)]) (signed), and falls through when s4(?) >= v0(=[sym(winHeight)]) (signed).
  The `beq` branch at 0x4055a8 targets 0x405a9c and is always taken.
  The `beql` branch at 0x4055bc targets 0x4055e8, is taken when t0(=[sym(verbose)]) == 0, and falls through when t0(=[sym(verbose)]) != 0; its branch-likely delay slot `lw v0,0(s5)` at 0x4055c0 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0x4055e8 targets 0x405a9c, is taken when v0(=[sym(winHeight)]) <= 0 (signed), and falls through when v0(=[sym(winHeight)]) > 0 (signed).
  The `blez` branch at 0x4055f4 targets 0x405648, is taken when a0(=[sym(winWidth)]) <= 0 (signed), and falls through when a0(=[sym(winWidth)]) > 0 (signed).
  The `bnel` branch at 0x40563c targets 0x405600, is taken when v1(?) < a0(=[sym(winWidth)]) (signed), and falls through when v1(?) >= a0(=[sym(winWidth)]) (signed); its branch-likely delay slot `lw t1,0(s1)` at 0x405640 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x405650 targets 0x4055f4, is taken when s4(?) < v0(=[sym(winHeight)]) (signed), and falls through when s4(?) >= v0(=[sym(winHeight)]) (signed).
  The `beq` branch at 0x405658 targets 0x405a9c and is always taken.
  The `beql` branch at 0x40566c targets 0x405698, is taken when t9(=[sym(verbose)]) == 0, and falls through when t9(=[sym(verbose)]) != 0; its branch-likely delay slot `lw v0,0(s5)` at 0x405670 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0x405698 targets 0x405a9c, is taken when v0(=[sym(winHeight)]) <= 0 (signed), and falls through when v0(=[sym(winHeight)]) > 0 (signed).
  The `blez` branch at 0x4056a4 targets 0x4056f8, is taken when a0(=[sym(winWidth)]) <= 0 (signed), and falls through when a0(=[sym(winWidth)]) > 0 (signed).
  The `bnel` branch at 0x4056ec targets 0x4056b0, is taken when v1(?) < a0(=[sym(winWidth)]) (signed), and falls through when v1(?) >= a0(=[sym(winWidth)]) (signed); its branch-likely delay slot `lw t0,0(s1)` at 0x4056f0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x405700 targets 0x4056a4, is taken when s4(?) < v0(=[sym(winHeight)]) (signed), and falls through when s4(?) >= v0(=[sym(winHeight)]) (signed).
  The `beq` branch at 0x405708 targets 0x405a9c and is always taken.
  The `beql` branch at 0x40571c targets 0x405740, is taken when t8(=[sym(verbose)]) == 0, and falls through when t8(=[sym(verbose)]) != 0; its branch-likely delay slot `lw v0,0(s5)` at 0x405720 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0x405740 targets 0x405a9c, is taken when v0(=[sym(winHeight)]) <= 0 (signed), and falls through when v0(=[sym(winHeight)]) > 0 (signed).
  The `blez` branch at 0x40574c targets 0x4057d0, is taken when a0(=[sym(winWidth)]) <= 0 (signed), and falls through when a0(=[sym(winWidth)]) > 0 (signed).
  The `bnel` branch at 0x4057c4 targets 0x405758, is taken when v1(?) < a0(=[sym(winWidth)]) (signed), and falls through when v1(?) >= a0(=[sym(winWidth)]) (signed); its branch-likely delay slot `lw t9,0(s1)` at 0x4057c8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x4057d8 targets 0x40574c, is taken when s4(?) < v0(=[sym(winHeight)]) (signed), and falls through when s4(?) >= v0(=[sym(winHeight)]) (signed).
  The `beq` branch at 0x4057e0 targets 0x405a9c and is always taken.
  The `beql` branch at 0x4057f4 targets 0x405818, is taken when t5(=[sym(verbose)]) == 0, and falls through when t5(=[sym(verbose)]) != 0; its branch-likely delay slot `lw v0,0(s5)` at 0x4057f8 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0x405818 targets 0x405a9c, is taken when v0(=[sym(winHeight)]) <= 0 (signed), and falls through when v0(=[sym(winHeight)]) > 0 (signed).
  The `blez` branch at 0x405824 targets 0x405908, is taken when a0(=[sym(winWidth)]) <= 0 (signed), and falls through when a0(=[sym(winWidth)]) > 0 (signed).
  The `bnel` branch at 0x4058fc targets 0x405830, is taken when v1(?) < a0(=[sym(winWidth)]) (signed), and falls through when v1(?) >= a0(=[sym(winWidth)]) (signed); its branch-likely delay slot `lw t6,0(s1)` at 0x405900 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x405910 targets 0x405824, is taken when s4(?) < v0(=[sym(winHeight)]) (signed), and falls through when s4(?) >= v0(=[sym(winHeight)]) (signed).
  The `beq` branch at 0x405918 targets 0x405a9c and is always taken.
  The `beql` branch at 0x40592c targets 0x405950, is taken when t8(=[sym(verbose)]) == 0, and falls through when t8(=[sym(verbose)]) != 0; its branch-likely delay slot `lw v0,0(s5)` at 0x405930 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0x405950 targets 0x405a9c, is taken when v0(=[sym(winHeight)]) <= 0 (signed), and falls through when v0(=[sym(winHeight)]) > 0 (signed).
  The `blez` branch at 0x40595c targets 0x405a8c, is taken when a0(=[sym(winWidth)]) <= 0 (signed), and falls through when a0(=[sym(winWidth)]) > 0 (signed).
  The `bgez` branch at 0x405964 targets 0x405974, is taken when a0(=[sym(winWidth)]) >= 0 (signed), and falls through when a0(=[sym(winWidth)]) < 0 (signed).
  The `beq` branch at 0x405978 targets 0x4059a8, is taken when v1(?) >= v0(?) (signed), and falls through when v1(?) < v0(?) (signed).
  The `beq` branch at 0x4059a0 targets 0x405a64 and is always taken.
  The `bne` branch at 0x4059a8 targets 0x4059d8, is taken when v1(?) != v0(?), and falls through when v1(?) == v0(?).
  The `beq` branch at 0x4059d0 targets 0x405a64 and is always taken.
  The `beq` branch at 0x4059d8 targets 0x405a24, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bgez` branch at 0x4059e0 targets 0x4059f0, is taken when a0(=[sym(winWidth)]) >= 0 (signed), and falls through when a0(=[sym(winWidth)]) < 0 (signed).
  The `beq` branch at 0x4059f4 targets 0x405a24, is taken when v1(?) >= t1(?) (signed), and falls through when v1(?) < t1(?) (signed).
  The `beq` branch at 0x405a1c targets 0x405a64 and is always taken.
  The `bgez` branch at 0x405a24 targets 0x405a34, is taken when a0(=[sym(winWidth)]) >= 0 (signed), and falls through when a0(=[sym(winWidth)]) < 0 (signed).
  The `bnel` branch at 0x405a38 targets 0x405a68, is taken when v1(?) < t8(?) (signed), and falls through when v1(?) >= t8(?) (signed); its branch-likely delay slot `lw t5,0(s1)` at 0x405a3c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x405a80 targets 0x405964, is taken when v1(?) < a0(=[sym(winWidth)]) (signed), and falls through when v1(?) >= a0(=[sym(winWidth)]) (signed).
  The `bne` branch at 0x405a94 targets 0x40595c, is taken when s4(?) < v0(=[sym(winHeight)]) (signed), and falls through when s4(?) >= v0(=[sym(winHeight)]) (signed).
  The `bne` branch at 0x405b14 targets 0x40534c, is taken when s8(?) != 0, and falls through when s8(?) == 0.
  The return at 0x405b44 has v0 = one of 0x1, 0x7, ?.
  The indirect jump at 0x405380 uses the jump table at 0x10000a00 with targets 0x405388, 0x405500, 0x4055b0, 0x405660, 0x405710, 0x4057e8, 0x405920.
  The indirect jump at 0x405380 uses the jump table at 0x10000a00 with targets 0x405388, 0x405500, 0x4055b0, 0x405660, 0x405710, 0x4057e8, 0x405920.
  The indirect jump at 0x405380 uses the jump table at 0x10000a00 with targets 0x405388, 0x405500, 0x4055b0, 0x405660, 0x405710, 0x4057e8, 0x405920.
  The indirect jump at 0x405380 uses the jump table at 0x10000a00 with targets 0x405388, 0x405500, 0x4055b0, 0x405660, 0x405710, 0x4057e8, 0x405920.
  The indirect jump at 0x405380 uses the jump table at 0x10000a00 with targets 0x405388, 0x405500, 0x4055b0, 0x405660, 0x405710, 0x4057e8, 0x405920.

- `dc_read` in `usr/sbin/Confidence/dualchannel` at 0x405b4c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/sbin/Confidence/dualchannel`.
  Range: 0x405b4c-0x405c38 (236 bytes).
  It occupies 236 bytes.
  The `lw` at 0x405b64 loads 4 bytes from sym(gfxType) +0x0.
  The `jalr` at 0x405b7c calls crime_i2c_start with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x405b90 calls crime_i2c_sendbyte with a0=0x7f, a1=?, a2=?, a3=?.
  The `jalr` at 0x405bac calls crime_i2c_rcvbytes with a0=0x1, a1=a0 at entry (arg0), a2=sp-4, a3=?.
  The `jalr` at 0x405bbc calls crime_i2c_stop with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405bdc calls odsy_i2c_start with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x405bf0 calls odsy_i2c_sendbyte with a0=0x7f, a1=?, a2=?, a3=?.
  The `jalr` at 0x405c0c calls odsy_i2c_rcvbytes with a0=0x1, a1=a0 at entry (arg0), a2=sp-4, a3=?.
  The `jalr` at 0x405c1c calls odsy_i2c_stop with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x405b70 targets 0x405bcc, is taken when v0(=[sym(gfxType)]) != at(=0x1), and falls through when v0(=[sym(gfxType)]) == at(=0x1).
  The `beq` branch at 0x405bc4 targets 0x405c28 and is always taken.
  The `bnel` branch at 0x405bd0 targets 0x405c2c, is taken when v0(=[sym(gfxType)]) != at(=0x2), and falls through when v0(=[sym(gfxType)]) == at(=0x2); its branch-likely delay slot `lw ra,28(sp)` at 0x405bd4 runs only when taken and is annulled on fall-through.
  The return at 0x405c30 has v0 = one of [sym(gfxType)], ?.

- `dc_disp_mode` in `usr/sbin/Confidence/dualchannel` at 0x405c38 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/sbin/Confidence/dualchannel`.
  Range: 0x405c38-0x405d3c (260 bytes).
  It occupies 260 bytes.
  3 such `lbu` accesses load 1 byte from sym(dc_ctlreg) +0x0, including `lbu` at 0x405c50, `lbu` at 0x405ca8, `lbu` at 0x405d08.
  The `sb` at 0x405c64 stores 1 byte to sym(dc_ctlreg) +0x0.
  The `lw` at 0x405c68 loads 4 bytes from sym(gfxType) +0x0.
  The `jalr` at 0x405c80 calls crime_i2c_start with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x405c94 calls crime_i2c_sendbyte with a0=0x7e, a1=?, a2=?, a3=?.
  The `jalr` at 0x405cb0 calls crime_i2c_sendbyte with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405cc0 calls crime_i2c_stop with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405ce0 calls odsy_i2c_start with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x405cf4 calls odsy_i2c_sendbyte with a0=0x7e, a1=?, a2=?, a3=?.
  The `jalr` at 0x405d10 calls odsy_i2c_sendbyte with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405d20 calls odsy_i2c_stop with a0=?, a1=?, a2=?, a3=?.
  The `bnel` branch at 0x405c74 targets 0x405cd4, is taken when v0(=[sym(gfxType)]) != at(=0x1), and falls through when v0(=[sym(gfxType)]) == at(=0x1); its branch-likely delay slot `addiu at,zero,2` at 0x405c78 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x405cc8 targets 0x405d2c and is always taken.
  The `bnel` branch at 0x405cd4 targets 0x405d30, is taken when v0(=[sym(gfxType)]) != at(=0x2), and falls through when v0(=[sym(gfxType)]) == at(=0x2); its branch-likely delay slot `lw ra,28(sp)` at 0x405cd8 runs only when taken and is annulled on fall-through.
  The return at 0x405d34 has v0 = one of [sym(gfxType)], ?.
  The instructions from 0x405cd0 to 0x405cd0 are not reached by any path from the entry, and their branches are not listed.

- `load_testmode` in `usr/sbin/Confidence/dualchannel` at 0x405d3c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/sbin/Confidence/dualchannel`.
  Range: 0x405d3c-0x40600c (720 bytes).
  It occupies 720 bytes.
  The `lw` at 0x405d54 loads 4 bytes from sym(verbose) +0x0.
  The `lw` at 0x405db8 loads 4 bytes from sym(testno) +0x0.
  The `lw` at 0x405df0 loads 4 bytes from sym(gfxType) +0x0.
  8 such `lbu` accesses load 1 byte from sym(dc_ctlreg) +0x0, including `lbu` at 0x405e30, `lbu` at 0x405e64, `lbu` at 0x405e94.
  10 such `sb` accesses store 1 byte to sym(dc_ctlreg) +0x0, including `sb` at 0x405e44, `sb` at 0x405e4c, `sb` at 0x405e70.
  The `jalr` at 0x405db4 calls fprintf with a0=sym(__iob)+32, a1=0x1000053c, a2=[sym(testno)], a3=?.
  The `jalr` at 0x405ddc calls fprintf with a0=sym(__iob)+32, a1=0x10000570, a2=?, a3=?.
  The `jalr` at 0x405e00 calls crime_i2c_start with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405e14 calls crime_i2c_sendbyte with a0=0x7e, a1=?, a2=?, a3=?.
  The `jalr` at 0x405e5c calls crime_i2c_sendbyte with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405e80 calls crime_i2c_sendbyte with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405eac calls crime_i2c_sendbyte with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405ed0 calls crime_i2c_sendbyte with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405ee0 calls crime_i2c_stop with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405f00 calls odsy_i2c_start with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405f14 calls odsy_i2c_sendbyte with a0=0x7e, a1=?, a2=?, a3=?.
  The `jalr` at 0x405f5c calls odsy_i2c_sendbyte with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405f80 calls odsy_i2c_sendbyte with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405fac calls odsy_i2c_sendbyte with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405fd0 calls odsy_i2c_sendbyte with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x405fe0 calls odsy_i2c_stop with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x405d74 targets 0x405de8, is taken when t6(=[sym(verbose)]) < 0x3 (unsigned), and falls through when t6(=[sym(verbose)]) >= 0x3 (unsigned).
  The `bnel` branch at 0x405df4 targets 0x405ef4, is taken when v0(=[sym(gfxType)]) != at(=0x1), and falls through when v0(=[sym(gfxType)]) == at(=0x1); its branch-likely delay slot `addiu at,zero,2` at 0x405df8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x405e8c targets 0x405e30, is taken when s1(?) != s3(=0x9), and falls through when s1(?) == s3(=0x9).
  The `beq` branch at 0x405ee8 targets 0x405fec and is always taken.
  The `bnel` branch at 0x405ef4 targets 0x405ff0, is taken when v0(=[sym(gfxType)]) != at(=0x2), and falls through when v0(=[sym(gfxType)]) == at(=0x2); its branch-likely delay slot `lw ra,52(sp)` at 0x405ef8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x405f8c targets 0x405f30, is taken when s1(?) != s3(=0x9), and falls through when s1(?) == s3(=0x9).
  The return at 0x406004 has v0 = one of [sym(gfxType)], ?.
  The instructions from 0x405ef0 to 0x405ef0 are not reached by any path from the entry, and their branches are not listed.

- `init_pass` in `usr/sbin/Confidence/dualchannel` at 0x40600c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/sbin/Confidence/dualchannel`.
  Range: 0x40600c-0x406160 (340 bytes).
  It occupies 340 bytes.
  The `lw` at 0x406024 loads 4 bytes from sym(gfxType) +0x0.
  4 such `lbu` accesses load 1 byte from sym(dc_ctlreg) +0x0, including `lbu` at 0x406060, `lbu` at 0x406088, `lbu` at 0x4060f4.
  4 such `sb` accesses store 1 byte to sym(dc_ctlreg) +0x0, including `sb` at 0x406068, `sb` at 0x406090, `sb` at 0x4060fc.
  The `jalr` at 0x40603c calls crime_i2c_start with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x406050 calls crime_i2c_sendbyte with a0=0x7e, a1=?, a2=?, a3=?.
  The `jalr` at 0x406078 calls crime_i2c_sendbyte with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4060a0 calls crime_i2c_sendbyte with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4060b0 calls crime_i2c_stop with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4060d0 calls odsy_i2c_start with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4060e4 calls odsy_i2c_sendbyte with a0=0x7e, a1=?, a2=?, a3=?.
  The `jalr` at 0x40610c calls odsy_i2c_sendbyte with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406134 calls odsy_i2c_sendbyte with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406144 calls odsy_i2c_stop with a0=?, a1=?, a2=?, a3=?.
  The `bnel` branch at 0x406030 targets 0x4060c4, is taken when v0(=[sym(gfxType)]) != at(=0x1), and falls through when v0(=[sym(gfxType)]) == at(=0x1); its branch-likely delay slot `addiu at,zero,2` at 0x406034 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x4060b8 targets 0x406150 and is always taken.
  The `bnel` branch at 0x4060c4 targets 0x406154, is taken when v0(=[sym(gfxType)]) != at(=0x2), and falls through when v0(=[sym(gfxType)]) == at(=0x2); its branch-likely delay slot `lw ra,28(sp)` at 0x4060c8 runs only when taken and is annulled on fall-through.
  The return at 0x406158 has v0 = one of [sym(gfxType)], ?.
  The instructions from 0x4060c0 to 0x4060c0 are not reached by any path from the entry, and their branches are not listed.

- `DatapathTest` in `usr/sbin/Confidence/dualchannel` at 0x406160 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/sbin/Confidence/dualchannel`.
  Range: 0x406160-0x40674c (1516 bytes).
  It occupies 1516 bytes.
  4 such `lw` accesses load 4 bytes from sym(verbose) +0x0, including `lw` at 0x406180, `lw` at 0x4061fc, `lw` at 0x406380.
  The `ldc1` at 0x4061e8 loads 8 bytes from abs 0x10000a20.
  3 such `lw` accesses load 4 bytes from sym(winHeight) +0x0, including `lw` at 0x406528, `lw` at 0x4065ac, `lw` at 0x4065f0.
  3 such `lw` accesses load 4 bytes from sym(winWidth) +0x0, including `lw` at 0x406544, `lw` at 0x406598, `lw` at 0x40660c.
  5 such `lw` accesses load 4 bytes from sym(image) +0x0, including `lw` at 0x406564, `lw` at 0x406574, `lw` at 0x406580.
  4 such `sb` accesses store 1 byte to ?, including `sb` at 0x406570, `sb` at 0x40657c, `sb` at 0x406588.
  The `jalr` at 0x4061c4 calls fprintf with a0=sym(__iob)+32, a1=0x10000588, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4061f4 calls dc_disp_mode with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x406220 calls fprintf with a0=sym(__iob)+32, a1=0x100005a0, a2=?, a3=?.
  The `jalr` at 0x4062cc calls glClearColor with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4062e0 calls glClear with a0=0x4000, a1=?, a2=?, a3=?.
  The `jalr` at 0x4062f0 calls glFlush with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40630c calls run_test with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406328 calls run_test with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40633c calls dc_disp_mode with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x406350 calls run_test with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406364 calls run_test with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406378 calls dc_disp_mode with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x4063a4 calls fprintf with a0=sym(__iob)+32, a1=0x100005b8, a2=?, a3=?.
  The `jalr` at 0x406448 calls glClearColor with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40645c calls glClear with a0=0x4000, a1=?, a2=?, a3=?.
  The `jalr` at 0x40646c calls glFlush with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406480 calls run_test with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406494 calls run_test with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4064a8 calls dc_disp_mode with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x4064bc calls run_test with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4064d0 calls run_test with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4064ec calls diagnose_bus with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406510 calls fprintf with a0=sym(__iob)+32, a1=0x100005d0, a2=?, a3=?.
  The `jalr` at 0x4065cc calls dc_disp_mode with a0=0x2, a1=?, a2=[sym(winHeight)], a3=?.
  The `jalr` at 0x4065e4 calls glRasterPos2i with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jalr` at 0x406610 calls glDrawPixels with a0=[sym(winWidth)], a1=[sym(winHeight)], a2=0x1908, a3=0x1401.
  The `jalr` at 0x406620 calls glFlush with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406634 calls FrameSync with a0=0x3, a1=?, a2=?, a3=?.
  The `jalr` at 0x406648 calls dc_disp_mode with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x406660 calls run_test with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406688 calls run_test with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4066a8 calls dc_disp_mode with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x4066c4 calls run_test with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4066f0 calls run_test with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406708 calls diagnose_eosel with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4061a8 targets 0x4061d0, is taken when t6(=[sym(verbose)]) == 0, and falls through when t6(=[sym(verbose)]) != 0.
  The `bne` branch at 0x40620c targets 0x40622c, is taken when t7(=[sym(verbose)]) < 0x3 (unsigned), and falls through when t7(=[sym(verbose)]) >= 0x3 (unsigned).
  The `bgez` branch at 0x406244 targets 0x406258, is taken when t3(?) >= 0 (signed), and falls through when t3(?) < 0 (signed).
  The `bgez` branch at 0x406274 targets 0x406288, is taken when t5(?) >= 0 (signed), and falls through when t5(?) < 0 (signed).
  The `bgez` branch at 0x4062a0 targets 0x4062b4, is taken when t6(?) >= 0 (signed), and falls through when t6(?) < 0 (signed).
  The `bne` branch at 0x406390 targets 0x4063b0, is taken when t7(=[sym(verbose)]) < 0x3 (unsigned), and falls through when t7(=[sym(verbose)]) >= 0x3 (unsigned).
  The `bgez` branch at 0x4063c0 targets 0x4063d4, is taken when t9(?) >= 0 (signed), and falls through when t9(?) < 0 (signed).
  The `bgez` branch at 0x4063f0 targets 0x406404, is taken when t3(?) >= 0 (signed), and falls through when t3(?) < 0 (signed).
  The `bgez` branch at 0x40641c targets 0x406430, is taken when t4(?) >= 0 (signed), and falls through when t4(?) < 0 (signed).
  The `bne` branch at 0x4064e0 targets 0x4061ec, is taken when s1(?) < 0x18 (signed), and falls through when s1(?) >= 0x18 (signed).
  The `beql` branch at 0x4064fc targets 0x406718, is taken when t5(=[sym(verbose)]) == 0, and falls through when t5(=[sym(verbose)]) != 0; its branch-likely delay slot `lw ra,84(sp)` at 0x406500 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0x40652c targets 0x4065c4, is taken when a2(=[sym(winHeight)]) <= 0 (signed), and falls through when a2(=[sym(winHeight)]) > 0 (signed).
  The `blez` branch at 0x406548 targets 0x4065b0, is taken when a0(=[sym(winWidth)]) <= 0 (signed), and falls through when a0(=[sym(winWidth)]) > 0 (signed).
  The `beq` branch at 0x406554 targets 0x406564, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beq` branch at 0x40655c targets 0x406564 and is always taken.
  The `bnel` branch at 0x4065a4 targets 0x406554, is taken when v1(?) < a0(=[sym(winWidth)]) (signed), and falls through when v1(?) >= a0(=[sym(winWidth)]) (signed); its branch-likely delay slot `andi t6,v1,0x1` at 0x4065a8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x4065b8 targets 0x406548, is taken when s1(?) < a2(=[sym(winHeight)]) (signed), and falls through when s1(?) >= a2(=[sym(winHeight)]) (signed).
  The `bne` branch at 0x406670 targets 0x406654, is taken when s1(?) < 0x18 (signed), and falls through when s1(?) >= 0x18 (signed).
  The `bne` branch at 0x406698 targets 0x40667c, is taken when s1(?) < 0x18 (signed), and falls through when s1(?) >= 0x18 (signed).
  The `bne` branch at 0x4066d4 targets 0x4066b8, is taken when s1(?) < 0x18 (signed), and falls through when s1(?) >= 0x18 (signed).
  The `bne` branch at 0x4066fc targets 0x4066e4, is taken when s1(?) != s0(=0x18), and falls through when s1(?) == s0(=0x18).
  The return at 0x406744 has v0 = one of ret(diagnose_bus), ret(diagnose_eosel).

- `FrameSync` in `usr/sbin/Confidence/dualchannel` at 0x40674c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/sbin/Confidence/dualchannel`.
  Range: 0x40674c-0x406828 (220 bytes).
  It occupies 220 bytes.
  2 such `lw` accesses load 4 bytes from sym(verbose) +0x0, including `lw` at 0x40677c, `lw` at 0x4067e8.
  The `jalr` at 0x40676c calls glXGetVideoSyncSGI with a0=sp-4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4067a0 calls fprintf with a0=sym(__iob)+32, a1=0x100005e8, a2=?, a3=?.
  The `jalr` at 0x4067d8 calls glXWaitVideoSyncSGI with a0=(a0 << 0x1), a1=?, a2=sp-4, a3=?.
  The `jalr` at 0x40680c calls fprintf with a0=sym(__iob)+32, a1=0x10000600, a2=?, a3=?.
  The `bnel` branch at 0x406784 targets 0x4067b0, is taken when t6(=[sym(verbose)]) < 0x4 (unsigned), and falls through when t6(=[sym(verbose)]) >= 0x4 (unsigned); its branch-likely delay slot `lw v0,40(sp)` at 0x406788 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x4067cc targets 0x4067d8, is taken when a0(=(a0 << 0x1)) != 0, and falls through when a0(=(a0 << 0x1)) == 0.
  The `bnel` branch at 0x4067f0 targets 0x40681c, is taken when t9(=[sym(verbose)]) < 0x4 (unsigned), and falls through when t9(=[sym(verbose)]) >= 0x4 (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0x4067f4 runs only when taken and is annulled on fall-through.
  The return at 0x406820 has v0 = one of ret(glXWaitVideoSyncSGI), ret(fprintf).

- `run_test` in `usr/sbin/Confidence/dualchannel` at 0x406828 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/sbin/Confidence/dualchannel`.
  Range: 0x406828-0x406c10 (1000 bytes).
  It occupies 1000 bytes.
  3 such `lw` accesses load 4 bytes from sym(retests) +0x0, including `lw` at 0x4068cc, `lw` at 0x40690c, `lw` at 0x406a50.
  3 such `lw` accesses load 4 bytes from sym(verbose) +0x0, including `lw` at 0x4068dc, `lw` at 0x406a18, `lw` at 0x406a64.
  2 such `lbu` accesses load 1 byte from sym(dc_ctlreg) +0x0, including `lbu` at 0x406940, `lbu` at 0x40696c.
  The `lw` at 0x406a98 loads 4 bytes from sym(fail_limit) +0x0.
  The `lw` at 0x406ab0 loads 4 bytes from sym(failed_tests) +0x0.
  The `sw` at 0x406ab8 stores 4 bytes to sym(failed_tests) +0x0.
  The `lw` at 0x406ad0 loads 4 bytes from sym(failure_step) +0x0.
  2 such `lw` accesses load 4 bytes from sym(__us_rsthread_stdio) +0x0, including `lw` at 0x406afc, `lw` at 0x406b88.
  2 such `lw` accesses load 4 bytes from sym(__iob) +0x0, including `lw` at 0x406b24, `lw` at 0x406bb0.
  2 such `sw` accesses store 4 bytes to sym(__iob) +0x0, including `sw` at 0x406b30, `sw` at 0x406bbc.
  2 such `lw` accesses load 4 bytes from sym(__iob) +0x4, including `lw` at 0x406b48, `lw` at 0x406bd4.
  2 such `sw` accesses store 4 bytes to sym(__iob) +0x4, including `sw` at 0x406b54, `sw` at 0x406bdc.
  The `lw` at 0x406b5c loads 4 bytes from sym(single_step) +0x0.
  The `lw` at 0x406bec loads 4 bytes from sym(testno) +0x0.
  The `sw` at 0x406c0c stores 4 bytes to sym(testno) +0x0.
  The `jalr` at 0x406854 calls load_testmode with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x40687c calls FrameSync with a0=0x2, a1=?, a2=?, a3=?.
  The `jalr` at 0x406894 calls FrameSync with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x4068a8 calls dc_read with a0=sp-1, a1=?, a2=?, a3=?.
  The `jalr` at 0x4068fc calls fprintf with a0=sym(__iob)+32, a1=0x10000610, a2=?, a3=?.
  The `jalr` at 0x406928 calls load_testmode with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x40694c calls dc_disp_mode with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406960 calls FrameSync with a0=0x2, a1=?, a2=?, a3=?.
  The `jalr` at 0x40697c calls dc_disp_mode with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406990 calls FrameSync with a0=0x2, a1=?, a2=?, a3=?.
  The `jalr` at 0x4069a0 calls init_pass with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4069b4 calls FrameSync with a0=0x2, a1=?, a2=?, a3=?.
  The `jalr` at 0x4069c8 calls init_pass with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4069dc calls FrameSync with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x4069f0 calls dc_read with a0=sp-1, a1=?, a2=?, a3=?.
  The `jalr` at 0x406a3c calls fprintf with a0=sym(__iob)+32, a1=0x10000620, a2=?, a3=?.
  The `jalr` at 0x406a84 calls fprintf with a0=sym(__iob)+32, a1=0x10000624, a2=?, a3=?.
  The `jalr` at 0x406ac0 calls print_failure with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x406aec calls fprintf with a0=sym(__iob)+32, a1=0x10000628, a2=?, a3=?.
  The `jalr` at 0x406b10 calls __semgetc with a0=sym(__iob), a1=?, a2=?, a3=?.
  The `jalr` at 0x406b38 calls __filbuf with a0=sym(__iob), a1=?, a2=?, a3=?.
  The `jalr` at 0x406b78 calls fprintf with a0=sym(__iob)+32, a1=0x10000630, a2=?, a3=?.
  The `jalr` at 0x406b9c calls __semgetc with a0=sym(__iob), a1=?, a2=?, a3=?.
  The `jalr` at 0x406bc4 calls __filbuf with a0=sym(__iob), a1=?, a2=?, a3=?.
  The `beq` branch at 0x40686c targets 0x40688c, is taken when (t7(?) & 0x1) == 0, and falls through when (t7(?) & 0x1) != 0.
  The `beq` branch at 0x406884 targets 0x4068a0 and is always taken.
  The `bne` branch at 0x4068c0 targets 0x406b58, is taken when (v0(?) & 0x1) != 0, and falls through when (v0(?) & 0x1) == 0.
  The `beq` branch at 0x4068d0 targets 0x406a94, is taken when v0(=[sym(retests)]) == 0, and falls through when v0(=[sym(retests)]) != 0.
  The `bnel` branch at 0x4068e4 targets 0x406914, is taken when t9(=[sym(verbose)]) < 0x2 (unsigned), and falls through when t9(=[sym(verbose)]) >= 0x2 (unsigned); its branch-likely delay slot `or s0,zero,zero` at 0x4068e8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x406914 targets 0x406a60, is taken when v0(=[sym(retests)]) == 0, and falls through when v0(=[sym(retests)]) != 0.
  The `beq` branch at 0x406938 targets 0x4069c4, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x4069bc targets 0x4069e8 and is always taken.
  The `bne` branch at 0x406a08 targets 0x406a14, is taken when (v0(?) & 0x1) != 0, and falls through when (v0(?) & 0x1) == 0.
  The `bne` branch at 0x406a20 targets 0x406a48, is taken when t1(=[sym(verbose)]) < 0x2 (unsigned), and falls through when t1(=[sym(verbose)]) >= 0x2 (unsigned).
  The `bne` branch at 0x406a58 targets 0x406920, is taken when s0(?) < t2(=[sym(retests)]) (unsigned), and falls through when s0(?) >= t2(=[sym(retests)]) (unsigned).
  The `bne` branch at 0x406a6c targets 0x406a94, is taken when t3(=[sym(verbose)]) < 0x2 (unsigned), and falls through when t3(=[sym(verbose)]) >= 0x2 (unsigned).
  The `beq` branch at 0x406a8c targets 0x406a94 and is always taken.
  The `beq` branch at 0x406aa0 targets 0x406be0, is taken when t4(=[sym(fail_limit)]) >= s2(?) (unsigned), and falls through when t4(=[sym(fail_limit)]) < s2(?) (unsigned).
  The `beq` branch at 0x406ad4 targets 0x406be0, is taken when t7(=[sym(failure_step)]) == 0, and falls through when t7(=[sym(failure_step)]) != 0.
  The `beq` branch at 0x406b00 targets 0x406b20, is taken when t8(=[sym(__us_rsthread_stdio)]) == 0, and falls through when t8(=[sym(__us_rsthread_stdio)]) != 0.
  The `beq` branch at 0x406b18 targets 0x406be0 and is always taken.
  The `bgez` branch at 0x406b2c targets 0x406b48, is taken when t0(=[sym(__iob)]-1) >= 0 (signed), and falls through when t0(=[sym(__iob)]-1) < 0 (signed).
  The `beq` branch at 0x406b40 targets 0x406be0 and is always taken.
  The `beq` branch at 0x406b50 targets 0x406be0 and is always taken.
  The `beq` branch at 0x406b60 targets 0x406be0, is taken when t4(=[sym(single_step)]) == 0, and falls through when t4(=[sym(single_step)]) != 0.
  The `beq` branch at 0x406b8c targets 0x406bac, is taken when t5(=[sym(__us_rsthread_stdio)]) == 0, and falls through when t5(=[sym(__us_rsthread_stdio)]) != 0.
  The `beq` branch at 0x406ba4 targets 0x406be0 and is always taken.
  The `bgez` branch at 0x406bb8 targets 0x406bd4, is taken when t7(=[sym(__iob)]-1) >= 0 (signed), and falls through when t7(=[sym(__iob)]-1) < 0 (signed).
  The `beq` branch at 0x406bcc targets 0x406be0 and is always taken.
  The return at 0x406c08 has v0 = ?.

- `print_failure` in `usr/sbin/Confidence/dualchannel` at 0x406c10 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/sbin/Confidence/dualchannel`.
  Range: 0x406c10-0x406ed8 (712 bytes).
  It occupies 712 bytes.
  The `lwl` at 0x406c38 loads 4 bytes from abs 0x10000638.
  The `lwr` at 0x406c3c loads 4 bytes from abs 0x1000063b.
  The `lwl` at 0x406c4c loads 4 bytes from abs 0x1000063c.
  The `lwr` at 0x406c50 loads 4 bytes from abs 0x1000063f.
  The `lbu` at 0x406c60 loads 1 byte from abs 0x10000640.
  The `lbu` at 0x406c6c loads 1 byte from abs 0x10000641.
  The `lw` at 0x406c74 loads 4 bytes from sym(verbose) +0x0.
  The `lw` at 0x406d44 loads 4 bytes from sym(failed_tests) +0x0.
  The `jalr` at 0x406c98 calls gettxt with a0=0x10000644, a1=0x1000064c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x406cb0 calls strcat with a0=sp-104, a1=ret(gettxt), a2=?, a3=?.
  The `jalr` at 0x406cd0 calls gettxt with a0=0x1000066c, a1=0x10000674, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x406ce8 calls strcat with a0=sp-104, a1=ret(gettxt), a2=?, a3=?.
  The `jalr` at 0x406cfc calls puts with a0=sp-104, a1=?, a2=?, a3=?.
  The `jalr` at 0x406d0c calls clean_up with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x406d40 calls fprintf with a0=sym(__iob)+32, a1=0x10000698, a2=[sym(failed_tests)], a3=?.
  The `jalr` at 0x406d64 calls fprintf with a0=sym(__iob)+32, a1=0x100006b4, a2=?, a3=?.
  The `jalr` at 0x406d88 calls fprintf with a0=sym(__iob)+32, a1=0x100006c0, a2=?, a3=?.
  The `jalr` at 0x406da4 calls fprintf with a0=sym(__iob)+32, a1=0x100006d4, a2=?, a3=?.
  The `jalr` at 0x406dd0 calls fprintf with a0=sym(__iob)+32, a1=0x100006e8, a2=?, a3=?.
  The `jalr` at 0x406dec calls fprintf with a0=sym(__iob)+32, a1=0x10000700, a2=?, a3=?.
  The `jalr` at 0x406e14 calls fprintf with a0=sym(__iob)+32, a1=0x10000718, a2=?, a3=?.
  The `jalr` at 0x406e30 calls fprintf with a0=sym(__iob)+32, a1=0x10000730, a2=?, a3=?.
  The `jalr` at 0x406e54 calls fprintf with a0=sym(__iob)+32, a1=0x10000738, a2=?, a3=?.
  The `jalr` at 0x406e70 calls fprintf with a0=sym(__iob)+32, a1=0x10000748, a2=?, a3=?.
  The `jalr` at 0x406e9c calls fprintf with a0=sym(__iob)+32, a1=0x10000758, a2=?, a3=?.
  The `jalr` at 0x406eb8 calls fprintf with a0=sym(__iob)+32, a1=0x10000770, a2=?, a3=?.
  The `bne` branch at 0x406c78 targets 0x406d18, is taken when t9(=[sym(verbose)]) != 0, and falls through when t9(=[sym(verbose)]) == 0.
  The `beq` branch at 0x406c80 targets 0x406cc0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x406cb8 targets 0x406cf4 and is always taken.
  The `bne` branch at 0x406d50 targets 0x406e24, is taken when t4(?) != 0, and falls through when t4(?) == 0.
  The `beq` branch at 0x406d74 targets 0x406d98, is taken when (t5(?) & 0x1) == 0, and falls through when (t5(?) & 0x1) != 0.
  The `beq` branch at 0x406d90 targets 0x406db0 and is always taken.
  The `beq` branch at 0x406db8 targets 0x406de0, is taken when (t7(?) & 0x1) == 0, and falls through when (t7(?) & 0x1) != 0.
  The `beq` branch at 0x406dd8 targets 0x406df8 and is always taken.
  The `beq` branch at 0x406e1c targets 0x406ec4 and is always taken.
  The `beq` branch at 0x406e40 targets 0x406e64, is taken when (t9(?) & 0x1) == 0, and falls through when (t9(?) & 0x1) != 0.
  The `beq` branch at 0x406e5c targets 0x406e7c and is always taken.
  The `beq` branch at 0x406e84 targets 0x406eac, is taken when (t1(?) & 0x1) == 0, and falls through when (t1(?) & 0x1) != 0.
  The `beq` branch at 0x406ea4 targets 0x406ec4 and is always taken.
  The return at 0x406ed0 has v0 = ret(fprintf).

- `DramTest` in `usr/sbin/Confidence/dualchannel` at 0x406ed8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/sbin/Confidence/dualchannel`.
  Range: 0x406ed8-0x4070f8 (544 bytes).
  It occupies 544 bytes.
  2 such `lw` accesses load 4 bytes from sym(verbose) +0x0, including `lw` at 0x406ef0, `lw` at 0x406ffc.
  4 such `lw` accesses load 4 bytes from sym(winHeight) +0x0, including `lw` at 0x406f28, `lw` at 0x406fa0, `lw` at 0x407040.
  4 such `lw` accesses load 4 bytes from sym(winWidth) +0x0, including `lw` at 0x406f44, `lw` at 0x406f88, `lw` at 0x40704c.
  9 such `lw` accesses load 4 bytes from sym(image) +0x0, including `lw` at 0x406f54, `lw` at 0x406f64, `lw` at 0x406f70.
  7 such `sb` accesses store 1 byte to ?, including `sb` at 0x406f60, `sb` at 0x406f6c, `sb` at 0x406f78.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x407064, `lbu` at 0x407078, `lbu` at 0x40708c.
  The `jalr` at 0x406f10 calls fprintf with a0=sym(__iob)+32, a1=0x10000788, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x406fc8 calls checkDRAM with a0=?, a1=0xff, a2=0x0, a3=?.
  The `jalr` at 0x406fdc calls diagnose_dram with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x407020 calls fprintf with a0=sym(__iob)+32, a1=0x10000794, a2=0x0, a3=sym(image).
  The `jalr` at 0x4070c8 calls checkDRAM with a0=?, a1=?, a2=?, a3=sym(image).
  The `jalr` at 0x4070dc calls diagnose_dram with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x406ef8 targets 0x406f1c, is taken when t6(=[sym(verbose)]) == 0, and falls through when t6(=[sym(verbose)]) != 0.
  The `blez` branch at 0x406f30 targets 0x406fbc, is taken when v0(=[sym(winHeight)]) <= 0 (signed), and falls through when v0(=[sym(winHeight)]) > 0 (signed).
  The `blez` branch at 0x406f48 targets 0x406fa4, is taken when a0(=[sym(winWidth)]) <= 0 (signed), and falls through when a0(=[sym(winWidth)]) > 0 (signed).
  The `bnel` branch at 0x406f94 targets 0x406f58, is taken when v1(?) < a0(=[sym(winWidth)]) (signed), and falls through when v1(?) >= a0(=[sym(winWidth)]) (signed); its branch-likely delay slot `lw t7,0(a3)` at 0x406f98 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x406fac targets 0x406f48, is taken when t1(?) < v0(=[sym(winHeight)]) (signed), and falls through when t1(?) >= v0(=[sym(winHeight)]) (signed).
  The `beq` branch at 0x407000 targets 0x40703c, is taken when t7(=[sym(verbose)]) == 0, and falls through when t7(=[sym(verbose)]) != 0.
  The `blez` branch at 0x407044 targets 0x4070c4, is taken when v0(=[sym(winHeight)]) <= 0 (signed), and falls through when v0(=[sym(winHeight)]) > 0 (signed).
  The `blez` branch at 0x407050 targets 0x4070b4, is taken when a0(=[sym(winWidth)]) <= 0 (signed), and falls through when a0(=[sym(winWidth)]) > 0 (signed).
  The `bnel` branch at 0x4070a4 targets 0x40705c, is taken when v1(?) < a0(=[sym(winWidth)]) (signed), and falls through when v1(?) >= a0(=[sym(winWidth)]) (signed); its branch-likely delay slot `lw t8,0(a3)` at 0x4070a8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x4070bc targets 0x407050, is taken when t1(?) < v0(=[sym(winHeight)]) (signed), and falls through when t1(?) >= v0(=[sym(winHeight)]) (signed).
  The return at 0x4070f0 has v0 = ret(diagnose_dram).

- `checkDRAM` in `usr/sbin/Confidence/dualchannel` at 0x4070f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/sbin/Confidence/dualchannel`.
  Range: 0x4070f8-0x40725c (356 bytes).
  It occupies 356 bytes.
  The `lw` at 0x40715c loads 4 bytes from sym(image) +0x0.
  The `lw` at 0x407160 loads 4 bytes from sym(winWidth) +0x0.
  The `lw` at 0x407164 loads 4 bytes from sym(winHeight) +0x0.
  The `jalr` at 0x407120 calls dc_disp_mode with a0=0x2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x407138 calls glRasterPos2i with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jalr` at 0x407168 calls glDrawPixels with a0=[sym(winWidth)], a1=[sym(winHeight)], a2=0x1908, a3=0x1401.
  The `jalr` at 0x407178 calls glFlush with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40718c calls FrameSync with a0=0x3, a1=?, a2=?, a3=?.
  The `jalr` at 0x4071a0 calls dc_disp_mode with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x4071bc calls run_test with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4071d8 calls run_test with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4071f8 calls dc_disp_mode with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x407218 calls run_test with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x407230 calls run_test with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x4071e8 targets 0x4071b0, is taken when s1(?) < 0x18 (signed), and falls through when s1(?) >= 0x18 (signed).
  The `bne` branch at 0x40723c targets 0x40720c, is taken when s1(?) != s2(=0x18), and falls through when s1(?) == s2(=0x18).
  The return at 0x407254 has v0 = ret(run_test).

- `runBusCheck` in `usr/sbin/Confidence/dualchannel` at 0x40725c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/sbin/Confidence/dualchannel`.
  Range: 0x40725c-0x407570 (788 bytes).
  It occupies 788 bytes.
  The `ldc1` at 0x4072b4 loads 8 bytes from abs 0x10000a28.
  The `jalr` at 0x407298 calls fprintf with a0=sym(__iob)+32, a1=0x100007a8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4072c0 calls dc_disp_mode with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x40736c calls glClearColor with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x407380 calls glClear with a0=0x4000, a1=?, a2=?, a3=?.
  The `jalr` at 0x407390 calls glFlush with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4073a4 calls FrameSync with a0=0x2, a1=?, a2=?, a3=?.
  The `jalr` at 0x4073b8 calls check_bus with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4073cc calls dc_disp_mode with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x4073e0 calls check_bus with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x407408 calls dc_disp_mode with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x4074b8 calls glClearColor with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4074cc calls glClear with a0=0x4000, a1=?, a2=?, a3=?.
  The `jalr` at 0x4074dc calls glFlush with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4074f0 calls FrameSync with a0=0x2, a1=?, a2=?, a3=?.
  The `jalr` at 0x407504 calls check_bus with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x407518 calls dc_disp_mode with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x40752c calls check_bus with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x407544 calls clean_up with a0=?, a1=?, a2=?, a3=?.
  The `bgez` branch at 0x4072e0 targets 0x4072f8, is taken when t8(?) >= 0 (signed), and falls through when t8(?) < 0 (signed).
  The `bgez` branch at 0x407314 targets 0x407328, is taken when t0(?) >= 0 (signed), and falls through when t0(?) < 0 (signed).
  The `bgez` branch at 0x407340 targets 0x407354, is taken when t1(?) >= 0 (signed), and falls through when t1(?) < 0 (signed).
  The `bne` branch at 0x4073f0 targets 0x4072b8, is taken when s1(?) < 0x18 (signed), and falls through when s1(?) >= 0x18 (signed).
  The `bgez` branch at 0x40742c targets 0x407444, is taken when t4(?) >= 0 (signed), and falls through when t4(?) < 0 (signed).
  The `bgez` branch at 0x407460 targets 0x407474, is taken when t6(?) >= 0 (signed), and falls through when t6(?) < 0 (signed).
  The `bgez` branch at 0x40748c targets 0x4074a0, is taken when t7(?) >= 0 (signed), and falls through when t7(?) < 0 (signed).
  The `bne` branch at 0x407538 targets 0x407400, is taken when s1(?) != s2(=0x18), and falls through when s1(?) == s2(=0x18).
  The return at 0x407568 has v0 = ret(clean_up).

- `check_bus` in `usr/sbin/Confidence/dualchannel` at 0x407570 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/sbin/Confidence/dualchannel`.
  Range: 0x407570-0x407768 (504 bytes).
  It occupies 504 bytes.
  The `lbu` at 0x4075e4 loads 1 byte from sym(dc_ctlreg) +0x0.
  The `jalr` at 0x4075cc calls fprintf with a0=sym(__iob)+32, a1=0x100007dc, a2=?, a3=a0 at entry (arg0).
  The `jalr` at 0x407600 calls fprintf with a0=sym(__iob)+32, a1=0x100007ec, a2=?, a3=?.
  The `jalr` at 0x40761c calls fprintf with a0=sym(__iob)+32, a1=0x100007f8, a2=?, a3=?.
  The `jalr` at 0x407660 calls load_testmode with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x407674 calls dc_read with a0=sp-1, a1=?, a2=?, a3=?.
  The `jalr` at 0x4076a0 calls fputc with a0=0x30, a1=sym(__iob)+32, a2=?, a3=?.
  The `jalr` at 0x4076bc calls fputc with a0=0x31, a1=sym(__iob)+32, a2=?, a3=?.
  The `jalr` at 0x4076e0 calls fputc with a0=0x20, a1=sym(__iob)+32, a2=?, a3=?.
  The `jalr` at 0x407700 calls fprintf with a0=sym(__iob)+32, a1=0x10000804, a2=?, a3=?.
  The `jalr` at 0x407730 calls fputc with a0=0xa, a1=sym(__iob)+32, a2=?, a3=?.
  The `bne` branch at 0x4075ec targets 0x407610, is taken when (t6(=[sym(dc_ctlreg)]:1) & 0x3) != 0, and falls through when (t6(=[sym(dc_ctlreg)]:1) & 0x3) == 0.
  The `beq` branch at 0x407608 targets 0x407628 and is always taken.
  The `beq` branch at 0x40768c targets 0x4076b0, is taken when (t1(?) & 0x1) == 0, and falls through when (t1(?) & 0x1) != 0.
  The `beq` branch at 0x4076a8 targets 0x4076c8 and is always taken.
  The `bne` branch at 0x4076cc targets 0x4076ec, is taken when (s0(?) & 0x7) != 0, and falls through when (s0(?) & 0x7) == 0.
  The `bnel` branch at 0x4076ec targets 0x407710, is taken when s0(?) != 0, and falls through when s0(?) == 0; its branch-likely delay slot `addiu s0,s0,-1` at 0x4076f0 runs only when taken and is annulled on fall-through.
  The `bgezl` branch at 0x407710 targets 0x407654, is taken when s0(?) >= 0 (signed), and falls through when s0(?) < 0 (signed); its branch-likely delay slot `andi t8,s0,0x1f` at 0x407714 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0x40771c targets 0x407648, is taken when s6(?) != s7(=0x2), and falls through when s6(?) == s7(=0x2); its branch-likely delay slot `andi s2,s6,0x1` at 0x407720 runs only when taken and is annulled on fall-through.
  The return at 0x407760 has v0 = ret(fputc).

- `probe_dcd` in `usr/sbin/Confidence/dualchannel` at 0x407768 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/sbin/Confidence/dualchannel`.
  Range: 0x407768-0x407888 (288 bytes).
  It occupies 288 bytes.
  2 such `lw` accesses load 4 bytes from ret(getinvent) +0x4, including `lw` at 0x4077b4, `lw` at 0x407804.
  2 such `lw` accesses load 4 bytes from ret(getinvent) +0x8, including `lw` at 0x4077c0, `lw` at 0x407808.
  2 such `lw` accesses load 4 bytes from sym(verbose) +0x0, including `lw` at 0x4077d0, `lw` at 0x40784c.
  The `jalr` at 0x407788 calls setinvent with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x407798 calls getinvent with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4077ec calls printf with a0=0x10000808, a1=?, a2=?, a3=?.
  The `jalr` at 0x40780c calls printf with a0=0x1000082c, a1=[ret(getinvent)+4], a2=[ret(getinvent)+8], a3=?.
  The `jalr` at 0x407824 calls getinvent with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40783c calls endinvent with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x407864 calls printf with a0=0x1000085c, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4077a4 targets 0x407838, is taken when v0(=ret(getinvent)) == 0, and falls through when v0(=ret(getinvent)) != 0.
  The `bne` branch at 0x4077b8 targets 0x407820, is taken when s0(=0x11) != t6(=[ret(getinvent)+4]), and falls through when s0(=0x11) == t6(=[ret(getinvent)+4]).
  The `bne` branch at 0x4077c4 targets 0x407820, is taken when s1(=0x3) != t7(=[ret(getinvent)+8]), and falls through when s1(=0x3) == t7(=[ret(getinvent)+8]).
  The `bne` branch at 0x4077d8 targets 0x407818, is taken when t8(=[sym(verbose)]) < 0x2 (unsigned), and falls through when t8(=[sym(verbose)]) >= 0x2 (unsigned).
  The `beq` branch at 0x407818 targets 0x407874 and is always taken.
  The `bne` branch at 0x407830 targets 0x4077b4, is taken when v0(=ret(getinvent)) != 0, and falls through when v0(=ret(getinvent)) == 0.
  The `bnel` branch at 0x407854 targets 0x407874, is taken when t9(=[sym(verbose)]) < 0x2 (unsigned), and falls through when t9(=[sym(verbose)]) >= 0x2 (unsigned); its branch-likely delay slot `or v0,zero,zero` at 0x407858 runs only when taken and is annulled on fall-through.
  The return at 0x407880 has v0 = one of 0x0, 0x1.

- `set_timing` in `usr/sbin/Confidence/dualchannel` at 0x407888 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/sbin/Confidence/dualchannel`.
  Range: 0x407888-0x407aa0 (536 bytes).
  It occupies 536 bytes.
  The `lwl` at 0x407900 loads 4 bytes from abs 0x100008ac.
  The `lwr` at 0x407904 loads 4 bytes from abs 0x100008af.
  The `sw` at 0x40790c stores 4 bytes to sym(orig_gamma) +0x0.
  The `lwl` at 0x4079a4 loads 4 bytes from abs 0x100008b8.
  The `lwr` at 0x4079a8 loads 4 bytes from abs 0x100008bb.
  The `lwl` at 0x4079b4 loads 4 bytes from abs 0x100008bc.
  The `lwr` at 0x4079b8 loads 4 bytes from abs 0x100008bf.
  The `lwl` at 0x4079c0 loads 4 bytes from abs 0x100008c0.
  The `lwr` at 0x4079c4 loads 4 bytes from abs 0x100008c3.
  The `lwl` at 0x4079cc loads 4 bytes from abs 0x100008c4.
  The `lwr` at 0x4079d0 loads 4 bytes from abs 0x100008c7.
  The `lwl` at 0x4079d8 loads 4 bytes from abs 0x100008c8.
  The `lwr` at 0x4079dc loads 4 bytes from abs 0x100008cb.
  The `lwl` at 0x407a38 loads 4 bytes from abs 0x100008dc.
  The `lwr` at 0x407a3c loads 4 bytes from abs 0x100008df.
  The `lwl` at 0x407a44 loads 4 bytes from abs 0x100008e0.
  The `lwr` at 0x407a48 loads 4 bytes from abs 0x100008e3.
  The `lwl` at 0x407a50 loads 4 bytes from abs 0x100008e4.
  The `lwr` at 0x407a54 loads 4 bytes from abs 0x100008e7.
  The `lwl` at 0x407a5c loads 4 bytes from abs 0x100008e8.
  The `lwr` at 0x407a60 loads 4 bytes from abs 0x100008eb.
  The `lwl` at 0x407a68 loads 4 bytes from abs 0x100008ec.
  The `lwr` at 0x407a6c loads 4 bytes from abs 0x100008ef.
  The `jalr` at 0x4078b0 calls open with a0=0x10000888, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4078d0 calls read with a0=ret(open), a1=sym(orig_gamma), a2=0xa, a3=?.
  The `jalr` at 0x4078e8 calls strtok with a0=sym(orig_gamma), a1=0x100008a8, a2=?, a3=?.
  The `jalr` at 0x40791c calls (unnamed) [0x407c60] with a0=0x100008b0, a1=?, a2=?, a3=?.
  The `jalr` at 0x407934 calls open with a0=sym(timing_file), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x407954 calls read with a0=ret(open), a1=sym(orig_timing), a2=0x50, a3=?.
  The `jalr` at 0x40796c calls strtok with a0=sym(orig_timing), a1=0x100008b4, a2=?, a3=?.
  The `jalr` at 0x407988 calls strcpy with a0=sym(orig_timing), a1=sym(default_timing), a2=?, a3=?.
  The `jalr` at 0x4079e8 calls strcat with a0=sp-256, a1=0x100008cc, a2=?, a3=?.
  The `jalr` at 0x4079fc calls system with a0=sp-256, a1=?, a2=?, a3=?.
  The `jalr` at 0x407a18 calls (unnamed) [0x407c60] with a0=sym(orig_gamma), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x407a70 calls strcat with a0=sp-256, a1=sym(orig_timing), a2=?, a3=?.
  The `jalr` at 0x407a84 calls system with a0=sp-256, a1=?, a2=?, a3=?.
  The `beq` branch at 0x40789c targets 0x407a0c, is taken when a0 == 0, and falls through when a0 != 0.
  The `blez` branch at 0x4078bc targets 0x4078f8, is taken when v0(=ret(open)) <= 0 (signed), and falls through when v0(=ret(open)) > 0 (signed).
  The `beq` branch at 0x4078f0 targets 0x407910 and is always taken.
  The `blez` branch at 0x407940 targets 0x40797c, is taken when v0(=ret(open)) <= 0 (signed), and falls through when v0(=ret(open)) > 0 (signed).
  The `beq` branch at 0x407974 targets 0x407994 and is always taken.
  The `beq` branch at 0x407a04 targets 0x407a90 and is always taken.
  The return at 0x407a98 has v0 = ret(system).

- `diagnose_bus` in `usr/sbin/Confidence/dualchannel` at 0x407aa0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/sbin/Confidence/dualchannel`.
  Range: 0x407aa0-0x407aa8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x407aa0 has v0 = ?.

- `diagnose_eosel` in `usr/sbin/Confidence/dualchannel` at 0x407aa8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/sbin/Confidence/dualchannel`.
  Range: 0x407aa8-0x407ab0 (8 bytes).
  It occupies 8 bytes.
  The return at 0x407aa8 has v0 = ?.

- `diagnose_dram` in `usr/sbin/Confidence/dualchannel` at 0x407ab0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/sbin/Confidence/dualchannel`.
  Range: 0x407ab0-0x407ab8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x407ab0 has v0 = ?.

- `printString__FPc` in `usr/sbin/Confidence/dualchannel` at 0x407ec0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/sbin/Confidence/dualchannel`.
  Range: 0x407ec0-0x408134 (628 bytes).
  It occupies 628 bytes.
  8 such `lw` accesses load 4 bytes from sym(wp_list) +0x0, including `lw` at 0x407f18, `lw` at 0x407f2c, `lw` at 0x407f50.
  The `lw` at 0x407f28 loads 4 bytes from sym(totEntries) +0x0.
  The `sw` at 0x407f34 stores 4 bytes to sym(totEntries) +0x0.
  3 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x407fb0, `lhu` at 0x407ff0, `lhu` at 0x40807c.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x407fb4, `lw` at 0x408004, `lw` at 0x408058.
  2 such `lw` accesses load 4 bytes from sym(base) +0x0, including `lw` at 0x407fe8, `lw` at 0x408074.
  The `jalr` at 0x407f14 calls _sgimbStrParse with a0=a0 at entry (arg0), a1=[sym(wp_list)], a2=sym(totEntries), a3=sp-8.
  The `jalr` at 0x407f40 calls realloc with a0=[sym(wp_list)], a1=([sym(totEntries)]+20 << 0x3), a2=?, a3=?.
  The `jalr` at 0x407f60 calls _sgimbStrParse with a0=a0 at entry (arg0), a1=[sym(wp_list)], a2=sym(totEntries), a3=sp-8.
  The `jalr` at 0x407f7c calls exit with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x407fd8 calls glPushAttrib with a0=0x20000, a1=?, a2=?, a3=?.
  The `jalr` at 0x408000 calls glListBase with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x408014 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x408030 calls glCallLists with a0=ret(strlen), a1=0x1401, a2=?, a3=?.
  The `jalr` at 0x408040 calls glPopAttrib with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x408064 calls glPushAttrib with a0=0x20000, a1=?, a2=?, a3=?.
  The `jalr` at 0x40808c calls glListBase with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4080a0 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4080bc calls glCallLists with a0=?, a1=0x1403, a2=?, a3=?.
  The `jalr` at 0x4080cc calls glPopAttrib with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x4080e8 calls free with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x407f20 targets 0x407f6c, is taken when v0(=ret(_sgimbStrParse)) != at(=-0x4), and falls through when v0(=ret(_sgimbStrParse)) == at(=-0x4).
  The `beql` branch at 0x407f6c targets 0x407f8c, is taken when v0(=ret(_sgimbStrParse)) == 0, and falls through when v0(=ret(_sgimbStrParse)) != 0; its branch-likely delay slot `lw t8,88(sp)` at 0x407f70 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0x407f94 targets 0x408108, is taken when t8(?) <= 0 (signed), and falls through when t8(?) > 0 (signed).
  The `beq` branch at 0x407fb8 targets 0x407fd0, is taken when v1(?) == s6(=0x1), and falls through when v1(?) != s6(=0x1).
  The `beq` branch at 0x407fc0 targets 0x40805c, is taken when v1(?) == s7(=0x2), and falls through when v1(?) != s7(=0x2).
  The `beq` branch at 0x407fc8 targets 0x4080e4 and is always taken.
  The `beq` branch at 0x408054 targets 0x4080e4 and is always taken.
  The `bne` branch at 0x408100 targets 0x407fa8, is taken when s2(?) < t6(?) (signed), and falls through when s2(?) >= t6(?) (signed).
  The return at 0x40812c has v0 = one of ?, ret(free).

- `makeRasterFont__FP9_XDisplayPc` in `usr/sbin/Confidence/dualchannel` at 0x4081fc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/sbin/Confidence/dualchannel`.
  Range: 0x4081fc-0x4083e8 (492 bytes).
  It occupies 492 bytes.
  The `sw` at 0x408268 stores 4 bytes to sym(numCodesets) +0x0.
  2 such `lw` accesses load 4 bytes from sym(numCodesets) +0x0, including `lw` at 0x4082ac, `lw` at 0x40831c.
  The `sw` at 0x4082d8 stores 4 bytes to sym(base) +0x0.
  7 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4082ec, `lw` at 0x4082f4, `lw` at 0x4082f8.
  The `lw` at 0x408320 loads 4 bytes from sym(pDesc) +0x0.
  2 such `lw` accesses load 4 bytes from sym(base) +0x0, including `lw` at 0x408354, `lw` at 0x408368.
  The `sw` at 0x408364 stores 4 bytes to ([sym(base)] + (ret(0x408134) << 0x2)) +0x0.
  The `lw` at 0x408378 loads 4 bytes from ([sym(base)] + (ret(0x408134) << 0x2)) +0x0.
  The `jalr` at 0x408248 calls _sgiGetLocaleCodesets with a0=sym(pDesc), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x408278 calls XCreateFontSet with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-24, a3=sp-28.
  The `jalr` at 0x4082a0 calls XFontsOfFontSet with a0=ret(XCreateFontSet), a1=sp-36, a2=sp-40, a3=?.
  The `jalr` at 0x4082bc calls malloc with a0=([sym(numCodesets)] << 0x2), a1=?, a2=?, a3=?.
  The `jalr` at 0x408328 calls (unnamed) [0x408134] with a0=?, a1=[sym(pDesc)], a2=[sym(numCodesets)], a3=?.
  The `jalr` at 0x40834c calls glGenLists with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x40839c calls glXUseXFont with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x408284 targets 0x408294, is taken when v0(=ret(XCreateFontSet)) != 0, and falls through when v0(=ret(XCreateFontSet)) == 0.
  The `beq` branch at 0x40828c targets 0x4083b8 and is always taken.
  The `blez` branch at 0x4082d4 targets 0x4083b4, is taken when s5(=ret(XFontsOfFontSet)) <= 0 (signed), and falls through when s5(=ret(XFontsOfFontSet)) > 0 (signed).
  The `bne` branch at 0x408334 targets 0x408344, is taken when v0(=ret(0x408134)) != s7(=-0x1), and falls through when v0(=ret(0x408134)) == s7(=-0x1).
  The `beq` branch at 0x40833c targets 0x4083a8 and is always taken.
  The `bne` branch at 0x408380 targets 0x408390, is taken when t0(=[([sym(base)] + (ret(0x408134) << 0x2))]) != 0, and falls through when t0(=[([sym(base)] + (ret(0x408134) << 0x2))]) == 0.
  The `beq` branch at 0x408388 targets 0x4083b8 and is always taken.
  The `bnel` branch at 0x4083ac targets 0x4082e0, is taken when s1(?) != s3(=(ret(XFontsOfFontSet) << 0x2)), and falls through when s1(?) == s3(=(ret(XFontsOfFontSet) << 0x2)); its branch-likely delay slot `lw t7,100(sp)` at 0x4083b0 runs only when taken and is annulled on fall-through.
  The return at 0x4083e0 has v0 = one of -0x1, 0x0.
