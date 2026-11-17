# Readings: `usr/lib32/internal/libvice.so`

One entry per routine, filed here from the reading batches by binary.

- `vice_get_lib_rev` in `usr/lib32/internal/libvice.so` at 0xd001980 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd001980-0xd00198c (12 bytes).
  It occupies 12 bytes.
  The return at 0xd001984 has v0 = 0x6b7a0001.

- `vice_open` in `usr/lib32/internal/libvice.so` at 0xd00198c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd00198c-0xd001bc4 (568 bytes).
  It occupies 568 bytes.
  The `sw` at 0xd0019cc stores 4 bytes to sym(_vicenoise) +0x0.
  5 such `lw` accesses load 4 bytes from sym(_vicenoise) +0x0, including `lw` at 0xd0019e0, `lw` at 0xd001a2c, `lw` at 0xd001a90.
  The `lw` at 0xd001a8c loads 4 bytes from sym(_viceid) +0x0.
  The `sw` at 0xd001b58 stores 4 bytes to ((ret(_vice_unit_find) << 0x2) + sym(_vicefd)) +0x0.
  The `sw` at 0xd001b5c stores 4 bytes to ((ret(_vice_unit_find) << 0x2) + sym(_vice_base)) +0x0.
  The `sw` at 0xd001b90 stores 4 bytes to sym(_viceid) +0x0.
  The `jalr` at 0xd0019b4 calls getenv with a0=0xd004000, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd0019c8 calls _vice_unit_find with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd0019f4 calls printf with a0=0xd004010, a1=?, a2=?, a3=?.
  The `jalr` at 0xd001a24 calls open with a0=a0 at entry (arg0), a1=0x2, a2=?, a3=?.
  The `jalr` at 0xd001a48 calls printf with a0=0xd004038, a1=?, a2=?, a3=?.
  The `jalr` at 0xd001a54 calls _vice_unit_unfind with a0=ret(_vice_unit_find), a1=?, a2=?, a3=?.
  The `jalr` at 0xd001a74 calls ioctl with a0=ret(open), a1=0x7678001f, a2=0x0, a3=?.
  The `jalr` at 0xd001aac calls printf with a0=0xd004058, a1=0x6b7a, a2=ret(ioctl), a3=?, a4=0x6b7a, a5=[sym(_vicenoise)].
  The `jalr` at 0xd001ab8 calls _vice_unit_unfind with a0=ret(_vice_unit_find), a1=?, a2=?, a3=?.
  The `jalr` at 0xd001ac4 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0xd001af4 calls mmap with a0=0x0, a1=0x14000, a2=0x3, a3=0x1, a4=ret(open), a5=0x0.
  The `jalr` at 0xd001b1c calls printf with a0=0xd0040b0, a1=?, a2=ret(mmap), a3=-0x1.
  The `jalr` at 0xd001b28 calls _vice_unit_unfind with a0=ret(_vice_unit_find), a1=?, a2=?, a3=?.
  The `jalr` at 0xd001b34 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0xd001b78 calls ioctl with a0=ret(open), a1=0x76782000, a2=0x0, a3=?, a4=0x6b7a.
  The `jalr` at 0xd001ba8 calls printf with a0=0xd004088, a1=?, a2=-0x1, a3=sym(_viceid), a4=[sym(_vicenoise)].
  The `jalr` at 0xd001bb4 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd0019d8 targets 0xd001a1c, is taken when v0(=ret(_vice_unit_find)) != v1(=-0x1), and falls through when v0(=ret(_vice_unit_find)) == v1(=-0x1).
  The `beq` branch at 0xd0019e4 targets 0xd001a00, is taken when a0(=[sym(_vicenoise)]) == 0, and falls through when a0(=[sym(_vicenoise)]) != 0.
  The `bgez` branch at 0xd001a30 targets 0xd001a64, is taken when v0(=ret(open)) >= 0 (signed), and falls through when v0(=ret(open)) < 0 (signed).
  The `beq` branch at 0xd001a38 targets 0xd001a54, is taken when a0(=[sym(_vicenoise)]) == 0, and falls through when a0(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd001a5c targets 0xd001a00 and is always taken.
  The `beq` branch at 0xd001a88 targets 0xd001ad4, is taken when a3(?) == a4(=0x6b7a), and falls through when a3(?) != a4(=0x6b7a).
  The `beq` branch at 0xd001a94 targets 0xd001ab8, is taken when a5(=[sym(_vicenoise)]) == 0, and falls through when a5(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd001acc targets 0xd001a00 and is always taken.
  The `beq` branch at 0xd001ad4 targets 0xd001b68, is taken when a0(=[sym(_viceid)]) == 0, and falls through when a0(=[sym(_viceid)]) != 0.
  The `bne` branch at 0xd001b04 targets 0xd001b44, is taken when a3(=-0x1) != v0(=ret(mmap)), and falls through when a3(=-0x1) == v0(=ret(mmap)).
  The `beq` branch at 0xd001b0c targets 0xd001b28, is taken when a0(=[sym(_vicenoise)]) == 0, and falls through when a0(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd001b3c targets 0xd001a00 and is always taken.
  The `beq` branch at 0xd001b60 targets 0xd001a00 and is always taken.
  The `beq` branch at 0xd001b84 targets 0xd001b94, is taken when v0(=ret(ioctl)) == a2(=-0x1), and falls through when v0(=ret(ioctl)) != a2(=-0x1).
  The `beq` branch at 0xd001b8c targets 0xd001ad8 and is always taken.
  The `beq` branch at 0xd001b98 targets 0xd001bb4, is taken when a4(=[sym(_vicenoise)]) == 0, and falls through when a4(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd001bbc targets 0xd001a00 and is always taken.
  The return at 0xd001a14 has v0 = one of -0x1, ret(_vice_unit_find).

- `vice_open_and_setetc` in `usr/lib32/internal/libvice.so` at 0xd001bc4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd001bc4-0xd001c38 (116 bytes).
  It occupies 116 bytes.
  The `jalr` at 0xd001be0 calls vice_open with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd001bf8 calls vice_setetc with a0=ret(vice_open), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd001bec targets 0xd001c20, is taken when v0(=ret(vice_open)) == v1(=-0x1), and falls through when v0(=ret(vice_open)) != v1(=-0x1).
  The `beq` branch at 0xd001c08 targets 0xd001c20, is taken when v0(=ret(vice_setetc)) == a0(=-0x1), and falls through when v0(=ret(vice_setetc)) != a0(=-0x1).
  The return at 0xd001c18 has v0 = ret(vice_open).
  The return at 0xd001c30 has v0 = -0x1.

- `vice_close` in `usr/lib32/internal/libvice.so` at 0xd001c38 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd001c38-0xd001d08 (208 bytes).
  It occupies 208 bytes.
  The `lw` at 0xd001c64 loads 4 bytes from ((a0 << 0x2) + sym(_vice_base)) +0x0.
  The `lw` at 0xd001ca0 loads 4 bytes from ((a0 << 0x2) + sym(_etcp)) +0x0.
  The `sw` at 0xd001cac stores 4 bytes to ((a0 << 0x2) + sym(_vice_base)) +0x0.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(_vicefd)) +0x0, including `lw` at 0xd001cc4, `lw` at 0xd001cdc.
  The `sw` at 0xd001cd0 stores 4 bytes to ((a0 << 0x2) + sym(_etcp)) +0x0.
  The `jalr` at 0xd001c84 calls munmap with a0=[((a0 << 0x2) + sym(_vice_base))], a1=0x14000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd001cc0 calls vice_munmap with a0=[((a0 << 0x2) + sym(_vicefd))], a1=[((a0 << 0x2) + sym(_etcp))], a2=0x1, a3=?.
  The `jalr` at 0xd001cd8 calls close with a0=[((a0 << 0x2) + sym(_vicefd))], a1=?, a2=?, a3=?.
  The `jalr` at 0xd001ce8 calls _vice_unit_unfind with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd001c70 targets 0xd001c8c, is taken when v0(=[((a0 << 0x2) + sym(_vice_base))]) == 0, and falls through when v0(=[((a0 << 0x2) + sym(_vice_base))]) != 0.
  The `beq` branch at 0xd001cb0 targets 0xd001cd4, is taken when a1(=[((a0 << 0x2) + sym(_etcp))]) == 0, and falls through when a1(=[((a0 << 0x2) + sym(_etcp))]) != 0.
  The return at 0xd001d00 has v0 = ?.

- `vice_lock` in `usr/lib32/internal/libvice.so` at 0xd001d08 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd001d08-0xd001d90 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd001d48 loads 4 bytes from ((a0 << 0x2) + sym(_vicefd)) +0x0.
  The `lw` at 0xd001d68 loads 4 bytes from ((a0 << 0x2) + sym(_vice_base)) +0x0.
  The `sw` at 0xd001d74 stores 4 bytes to sym(_vice_owner) +0x0.
  The `jalr` at 0xd001d44 calls ioctl with a0=[((a0 << 0x2) + sym(_vicefd))], a1=0x76780006, a2=0x0, a3=a3 at entry (arg3).
  The `beq` branch at 0xd001d60 targets 0xd001d80, is taken when v0(=ret(ioctl)) == a5(=-0x1), and falls through when v0(=ret(ioctl)) != a5(=-0x1).
  The return at 0xd001d78 has v0 = [((a0 << 0x2) + sym(_vice_base))].
  The return at 0xd001d88 has v0 = 0x0.

- `vice_unlock` in `usr/lib32/internal/libvice.so` at 0xd001d90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd001d90-0xd001e54 (196 bytes).
  It occupies 196 bytes.
  The `lw` at 0xd001da8 loads 4 bytes from sym(_vice_owner) +0x0.
  The `lw` at 0xd001ddc loads 4 bytes from (sym(_vicefd) + (a0 << 0x2)) +0x0.
  The `lw` at 0xd001df0 loads 4 bytes from sym(_vicenoise) +0x0.
  The `jalr` at 0xd001dd8 calls ioctl with a0=[(sym(_vicefd) + (a0 << 0x2))], a1=0x76780007, a2=0x0, a3=(a0 << 0x2), a4=a0 at entry (arg0).
  The `jalr` at 0xd001e04 calls printf with a0=0xd0040f8, a1=-0x1, a2=?, a3=?.
  The `jalr` at 0xd001e44 calls __assert with a0=0xd0040d0, a1=0xd0040e8, a2=0xb7, a3=a3 at entry (arg3), a4=a0 at entry (arg0).
  The `bne` branch at 0xd001db4 targets 0xd001e30, is taken when at(=[sym(_vice_owner)]) != a0, and falls through when at(=[sym(_vice_owner)]) == a0.
  The `bne` branch at 0xd001dec targets 0xd001e20, is taken when v0(=ret(ioctl)) != a1(=-0x1), and falls through when v0(=ret(ioctl)) == a1(=-0x1).
  The `beq` branch at 0xd001df4 targets 0xd001e10, is taken when a0(=[sym(_vicenoise)]) == 0, and falls through when a0(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd001e4c targets 0xd001dbc and is always taken.
  The return at 0xd001e18 has v0 = -0x1.
  The return at 0xd001e28 has v0 = 0x0.

- `vice_piow` in `usr/lib32/internal/libvice.so` at 0xd001e54 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd001e54-0xd001f18 (196 bytes).
  It occupies 196 bytes.
  4 such `lw` accesses load 4 bytes from abs 0xd0045a4, including `lw` at 0xd001e78, `lw` at 0xd001e80, `lw` at 0xd001e88.
  4 such `lw` accesses load 4 bytes from sym(_vice_owner) +0x0, including `lw` at 0xd001e94, `lw` at 0xd001eb8, `lw` at 0xd001ed8.
  4 such `lw` accesses load 4 bytes from abs 0xd0045b0, including `lw` at 0xd001e98, `lw` at 0xd001ebc, `lw` at 0xd001edc.
  4 such `lw` accesses load 4 bytes from (sym(_vice_base) + ([sym(_vice_owner)] << 0x2)) +0x0, including `lw` at 0xd001ea4, `lw` at 0xd001ec8, `lw` at 0xd001ee8.
  The `sd` at 0xd001eb0 stores 8 bytes to (a1 + [(sym(_vice_base) + ([sym(_vice_owner)] << 0x2))]) +0x0.
  The `sb` at 0xd001ed4 stores 1 byte to (a1 + [(sym(_vice_base) + ([sym(_vice_owner)] << 0x2))]) +0x0.
  The `sh` at 0xd001ef4 stores 2 bytes to (a1 + [(sym(_vice_base) + ([sym(_vice_owner)] << 0x2))]) +0x0.
  The `sw` at 0xd001f14 stores 4 bytes to (a1 + [(sym(_vice_base) + ([sym(_vice_owner)] << 0x2))]) +0x0.
  The `beq` branch at 0xd001e68 targets 0xd001eb4, is taken when a0 == v1(=0x1), and falls through when a0 != v1(=0x1).
  The `beq` branch at 0xd001e74 targets 0xd001ed8, is taken when a0 == v1(=0x2), and falls through when a0 != v1(=0x2).
  The `beq` branch at 0xd001e7c targets 0xd001ef8, is taken when a0 == a5(=0x4), and falls through when a0 != a5(=0x4).
  The `beq` branch at 0xd001e84 targets 0xd001e94, is taken when a0 == a6(=0x8), and falls through when a0 != a6(=0x8).
  The return at 0xd001e8c has v0 = 0xa624.
  The return at 0xd001eac has v0 = 0xa624.
  The return at 0xd001ed0 has v0 = 0xa624.
  The return at 0xd001ef0 has v0 = 0xa624.
  The return at 0xd001f10 has v0 = 0xa624.

- `vice_pior` in `usr/lib32/internal/libvice.so` at 0xd001f18 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd001f18-0xd001ff0 (216 bytes).
  It occupies 216 bytes.
  4 such `lw` accesses load 4 bytes from abs 0xd0045a4, including `lw` at 0xd001f44, `lw` at 0xd001f50, `lw` at 0xd001f88.
  4 such `lw` accesses load 4 bytes from sym(_vice_owner) +0x0, including `lw` at 0xd001f64, `lw` at 0xd001f8c, `lw` at 0xd001fb0.
  4 such `lw` accesses load 4 bytes from abs 0xd0045b0, including `lw` at 0xd001f68, `lw` at 0xd001f90, `lw` at 0xd001fb4.
  4 such `lw` accesses load 4 bytes from (sym(_vice_base) + ([sym(_vice_owner)] << 0x2)) +0x0, including `lw` at 0xd001f74, `lw` at 0xd001f9c, `lw` at 0xd001fc0.
  The `ld` at 0xd001f7c loads 8 bytes from (a1 + [(sym(_vice_base) + ([sym(_vice_owner)] << 0x2))]) +0x0.
  The `lbu` at 0xd001fa8 loads 1 byte from (a1 + [(sym(_vice_base) + ([sym(_vice_owner)] << 0x2))]) +0x0.
  The `lh` at 0xd001fcc loads 2 bytes from (a1 + [(sym(_vice_base) + ([sym(_vice_owner)] << 0x2))]) +0x0.
  The `lw` at 0xd001fec loads 4 bytes from (a1 + [(sym(_vice_base) + ([sym(_vice_owner)] << 0x2))]) +0x0.
  The `beq` branch at 0xd001f2c targets 0xd001f88, is taken when a0 == a2(=0x1), and falls through when a0 != a2(=0x1).
  The `beq` branch at 0xd001f38 targets 0xd001fac, is taken when a0 == a2(=0x2), and falls through when a0 != a2(=0x2).
  The `beq` branch at 0xd001f40 targets 0xd001fd0, is taken when a0 == a3(=0x4), and falls through when a0 != a3(=0x4).
  The `beq` branch at 0xd001f4c targets 0xd001f64, is taken when a0 == a4(=0x8), and falls through when a0 != a4(=0x8).
  The `beq` branch at 0xd001fa4 targets 0xd001f5c and is always taken.
  The `beq` branch at 0xd001fc8 targets 0xd001f5c and is always taken.
  The `beq` branch at 0xd001fe8 targets 0xd001f5c and is always taken.
  The return at 0xd001f54 has v0 = ?.
  The return at 0xd001f5c has v0 = one of [(a1 + [(sym(_vice_base) + ([sym(_vice_owner)] << 0x2))])]:1, [(a1 + [(sym(_vice_base) + ([sym(_vice_owner)] << 0x2))])]:2, [(a1 + [(sym(_vice_base) + ([sym(_vice_owner)] << 0x2))])].
  The return at 0xd001f80 has v0 = [(a1 + [(sym(_vice_base) + ([sym(_vice_owner)] << 0x2))])]:8.

- `vice_alloc` in `usr/lib32/internal/libvice.so` at 0xd001ff0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd001ff0-0xd002068 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xd002028 loads 4 bytes from (sym(_vicefd) + (a0 << 0x2)) +0x0.
  The `lw` at 0xd002038 loads 4 bytes from sym(_vicenoise) +0x0.
  The `jalr` at 0xd002024 calls ioctl with a0=[(sym(_vicefd) + (a0 << 0x2))], a1=0x76780016, a2=a1 at entry (arg1), a3=sym(_vicefd), a4=0x76780000, a5=0xa488.
  The `jalr` at 0xd00204c calls printf with a0=0xd004118, a1=?, a2=[sym(_vicenoise)], a3=-0x1.
  The `bne` branch at 0xd002034 targets 0xd002058, is taken when v0(=ret(ioctl)) != a3(=-0x1), and falls through when v0(=ret(ioctl)) == a3(=-0x1).
  The `beq` branch at 0xd00203c targets 0xd002058, is taken when a2(=[sym(_vicenoise)]) == 0, and falls through when a2(=[sym(_vicenoise)]) != 0.
  The return at 0xd002060 has v0 = ret(ioctl).

- `vice_settlb` in `usr/lib32/internal/libvice.so` at 0xd002068 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd002068-0xd002108 (160 bytes).
  It occupies 160 bytes.
  The `sw` at 0xd002068 stores 4 bytes to a4 (arg4 at entry) +0x8.
  The `sw` at 0xd00206c stores 4 bytes to a4 (arg4 at entry) +0x0.
  The `sw` at 0xd002070 stores 4 bytes to a4 (arg4 at entry) +0x4.
  The `lw` at 0xd0020b4 loads 4 bytes from (sym(_vicefd) + (a0 << 0x2)) +0x0.
  The `lw` at 0xd0020c0 loads 4 bytes from sym(_vicenoise) +0x0.
  The `jalr` at 0xd0020b0 calls ioctl with a0=[(sym(_vicefd) + (a0 << 0x2))], a1=0x76780004, a2=a4 at entry (arg4), a3=a3 at entry (arg3), a5=sym(_vicefd), a6=0x76780000.
  The `jalr` at 0xd0020d8 calls printf with a0=0xd004140, a1=a1 at entry (arg1), a2=a3 at entry (arg3), a3=?.
  The `bgez` branch at 0xd0020b8 targets 0xd0020f4, is taken when v0(=ret(ioctl)) >= 0 (signed), and falls through when v0(=ret(ioctl)) < 0 (signed).
  The `beq` branch at 0xd0020c4 targets 0xd0020e0, is taken when t1(=[sym(_vicenoise)]) == 0, and falls through when t1(=[sym(_vicenoise)]) != 0.
  The return at 0xd0020ec has v0 = -0x1.
  The return at 0xd002100 has v0 = 0x0.

- `vice_updatetlb` in `usr/lib32/internal/libvice.so` at 0xd002108 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd002108-0xd002194 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xd002140 loads 4 bytes from (sym(_vicefd) + (a0 << 0x2)) +0x0.
  The `lw` at 0xd002154 loads 4 bytes from sym(_vicenoise) +0x0.
  The `jalr` at 0xd00213c calls ioctl with a0=[(sym(_vicefd) + (a0 << 0x2))], a1=0x76780010, a2=0x0, a3=sym(_vicefd).
  The `jalr` at 0xd002168 calls printf with a0=0xd004170, a1=?, a2=[sym(_vicenoise)], a3=-0x1.
  The `bne` branch at 0xd002150 targets 0xd002184, is taken when v0(=ret(ioctl)) != a3(=-0x1), and falls through when v0(=ret(ioctl)) == a3(=-0x1).
  The `beq` branch at 0xd002158 targets 0xd002174, is taken when a2(=[sym(_vicenoise)]) == 0, and falls through when a2(=[sym(_vicenoise)]) != 0.
  The return at 0xd00217c has v0 = -0x1.
  The return at 0xd00218c has v0 = 0x0.

- `vice_mmap` in `usr/lib32/internal/libvice.so` at 0xd002194 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd002194-0xd002224 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd0021e4 loads 4 bytes from (sym(_vicefd) + (a0 << 0x2)) +0x0.
  The `lw` at 0xd0021f4 loads 4 bytes from sym(_vicenoise) +0x0.
  The `jalr` at 0xd0021e0 calls mmap with a0=0x0, a1=(a2 << 0x10), a2=0x3, a3=0x1, a4=[(sym(_vicefd) + (a0 << 0x2))], a5=((a1 << 0x10) | 0x40000000), a6=0x40000000, a7=(a0 << 0x2).
  The `jalr` at 0xd002208 calls printf with a0=0xd004190, a1=?, a2=[sym(_vicenoise)], a3=-0x1.
  The `bne` branch at 0xd0021f0 targets 0xd002214, is taken when v0(=ret(mmap)) != a3(=-0x1), and falls through when v0(=ret(mmap)) == a3(=-0x1).
  The `beq` branch at 0xd0021f8 targets 0xd002214, is taken when a2(=[sym(_vicenoise)]) == 0, and falls through when a2(=[sym(_vicenoise)]) != 0.
  The return at 0xd00221c has v0 = ret(mmap).

- `vice_munmap` in `usr/lib32/internal/libvice.so` at 0xd002224 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd002224-0xd002294 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xd002254 loads 4 bytes from sym(_vicenoise) +0x0.
  The `jalr` at 0xd002244 calls munmap with a0=a1 at entry (arg1), a1=(a2 << 0x10), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd002264 calls printf with a0=0xd0041a8, a1=?, a2=?, a3=?.
  The `beq` branch at 0xd00224c targets 0xd002280, is taken when v0(=ret(munmap)) == 0, and falls through when v0(=ret(munmap)) != 0.
  The `beq` branch at 0xd002258 targets 0xd00226c, is taken when v0(=[sym(_vicenoise)]) == 0, and falls through when v0(=[sym(_vicenoise)]) != 0.
  The return at 0xd002278 has v0 = -0x1.
  The return at 0xd00228c has v0 = 0x0.

- `vice_bcopyhto` in `usr/lib32/internal/libvice.so` at 0xd002294 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd002294-0xd002348 (180 bytes).
  It occupies 180 bytes.
  The `lh` at 0xd002310 loads 2 bytes from ?.
  The `jalr` at 0xd0022f4 calls __assert with a0=0xd0041c0, a1=0xd0040e8, a2=0x135, a3=a3 at entry (arg3).
  The `jalr` at 0xd002314 calls vice_piow with a0=0x2, a1=?, a2=?, a3=0x0.
  The `beq` branch at 0xd0022d8 targets 0xd0022fc, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xd0022fc targets 0xd00232c, is taken when s2(=a2) == 0, and falls through when s2(=a2) != 0.
  The `bne` branch at 0xd002324 targets 0xd002304, is taken when s2(?) != 0, and falls through when s2(?) == 0.
  The return at 0xd002340 has v0 = one of ?, ret(vice_piow).

- `vice_bcopywto` in `usr/lib32/internal/libvice.so` at 0xd002348 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd002348-0xd0023fc (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0xd0023c4 loads 4 bytes from ?.
  The `jalr` at 0xd0023a8 calls __assert with a0=0xd0041d0, a1=0xd0040e8, a2=0x13f, a3=a3 at entry (arg3).
  The `jalr` at 0xd0023c8 calls vice_piow with a0=0x4, a1=?, a2=?, a3=0x0.
  The `beq` branch at 0xd00238c targets 0xd0023b0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xd0023b0 targets 0xd0023e0, is taken when s2(=a2) == 0, and falls through when s2(=a2) != 0.
  The `bne` branch at 0xd0023d8 targets 0xd0023b8, is taken when s2(?) != 0, and falls through when s2(?) == 0.
  The return at 0xd0023f4 has v0 = one of ?, ret(vice_piow).

- `vice_chip_init` in `usr/lib32/internal/libvice.so` at 0xd0023fc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd0023fc-0xd002404 (8 bytes).
  It occupies 8 bytes.
  The return at 0xd0023fc has v0 = ?.

- `vice_file` in `usr/lib32/internal/libvice.so` at 0xd002404 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd002404-0xd0025a0 (412 bytes).
  It occupies 412 bytes.
  The `lbu` at 0xd002420 loads 1 byte from abs 0xd0045e0.
  The `lw` at 0xd0024b4 loads 4 bytes from sym(_viceid) +0x0.
  The `lbu` at 0xd0024cc loads 1 byte from abs 0xd00423a.
  The `lhu` at 0xd0024d0 loads 2 bytes from abs 0xd004238.
  The `ld` at 0xd0024d4 loads 8 bytes from abs 0xd004230.
  The `ld` at 0xd0024d8 loads 8 bytes from abs 0xd004228.
  3 such `sd` accesses store 8 bytes to abs 0xd0045e0, including `sd` at 0xd0024dc, `sd` at 0xd002568, `sd` at 0xd00258c.
  The `sb` at 0xd0024e0 stores 1 byte to abs 0xd0045f2.
  2 such `sh` accesses store 2 bytes to abs 0xd0045f0, including `sh` at 0xd0024e4, `sh` at 0xd002574.
  3 such `sd` accesses store 8 bytes to abs 0xd0045e8, including `sd` at 0xd0024e8, `sd` at 0xd002580, `sd` at 0xd00259c.
  The `lbu` at 0xd0024fc loads 1 byte from table(0xd0045df) +0x0.
  The `sb` at 0xd002520 stores 1 byte to table(0xd0045df) +0x0.
  The `ld` at 0xd002564 loads 8 bytes from abs 0xd004210.
  The `lhu` at 0xd002570 loads 2 bytes from abs 0xd004220.
  The `ld` at 0xd002578 loads 8 bytes from abs 0xd004218.
  The `ld` at 0xd002588 loads 8 bytes from abs 0xd004200.
  The `ld` at 0xd002594 loads 8 bytes from abs 0xd004208.
  The `jalr` at 0xd002448 calls strcpy with a0=table(0xd0045e0), a1=a0 at entry (arg0), a2=sym(strcpy), a3=?.
  The `jalr` at 0xd002454 calls getenv with a0=0xd0045d0, a1=?, a2=?, a3=?.
  The `jalr` at 0xd002488 calls fprintf with a0=sym(__iob)+32, a1=0xd0045d8, a2=0xd0045e0, a3=?.
  The `jalr` at 0xd00249c calls getenv with a0=0xd0045d0, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd0024f0 calls strlen with a0=0xd0045e0, a1=?, a2=?, a3=?.
  The `jalr` at 0xd00252c calls strcpy with a0=0xd0045e0, a1=ret(getenv), a2=sym(_viceid), a3=?, a5=0xe2, a6=0xd000000.
  The `jalr` at 0xd002548 calls fprintf with a0=sym(__iob)+32, a1=0xd0041e0, a2=0xd0045e0, a3=?.
  The `beq` branch at 0xd002430 targets 0xd002498, is taken when at(=[0xd0045e0]:1) == 0, and falls through when at(=[0xd0045e0]:1) != 0.
  The `bne` branch at 0xd00245c targets 0xd002478, is taken when v0(=ret(getenv)) != 0, and falls through when v0(=ret(getenv)) == 0.
  The `beq` branch at 0xd002490 targets 0xd002464 and is always taken.
  The `bne` branch at 0xd0024ac targets 0xd002524, is taken when v0(=ret(getenv)) != 0, and falls through when v0(=ret(getenv)) == 0.
  The `beq` branch at 0xd0024bc targets 0xd002584, is taken when v0(=[sym(_viceid)]) == a1(=0xe1), and falls through when v0(=[sym(_viceid)]) != a1(=0xe1).
  The `beq` branch at 0xd0024c4 targets 0xd002560, is taken when v0(=[sym(_viceid)]) == a5(=0xe2), and falls through when v0(=[sym(_viceid)]) != a5(=0xe2).
  The `beq` branch at 0xd002508 targets 0xd002558, is taken when a5(=0x2f) == a6(=entry(0xd0045df)), and falls through when a5(=0x2f) != a6(=entry(0xd0045df)).
  The `beq` branch at 0xd00251c targets 0xd002444 and is always taken.
  The `beq` branch at 0xd002550 targets 0xd0024f0 and is always taken.
  The `beq` branch at 0xd002558 targets 0xd002444 and is always taken.
  The `beq` branch at 0xd00257c targets 0xd0024ec and is always taken.
  The `beq` branch at 0xd002598 targets 0xd0024ec and is always taken.
  The return at 0xd002470 has v0 = 0xd0045e0.

- `dms_fifo_input` in `usr/lib32/internal/libvice.so` at 0xd0025a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd0025a0-0xd002664 (196 bytes).
  It occupies 196 bytes.
  The `sw` at 0xd0025a0 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `sw` at 0xd0025a8 stores 4 bytes to a1 (arg1 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from sym(_vicenoise) +0x0, including `lw` at 0xd0025d4, `lw` at 0xd00263c.
  The `lw` at 0xd002620 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xd002630 loads 4 bytes from (sym(_vicefd) + (a0 << 0x2)) +0x0.
  The `jalr` at 0xd0025c0 calls dmFifoCreate with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd0025e8 calls printf with a0=0xd004240, a1=?, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0xd00262c calls ioctl with a0=[(sym(_vicefd) + (a0 << 0x2))], a1=0x7678000c, a2=[a1], a3=(a0 << 0x2).
  The `jalr` at 0xd00264c calls printf with a0=0xd004258, a1=?, a2=?, a3=?, a4=[sym(_vicenoise)].
  The `beq` branch at 0xd0025c8 targets 0xd00260c, is taken when v0(=ret(dmFifoCreate)) == 0, and falls through when v0(=ret(dmFifoCreate)) != 0.
  The `beq` branch at 0xd0025d8 targets 0xd0025f4, is taken when v0(=[sym(_vicenoise)]) == 0, and falls through when v0(=[sym(_vicenoise)]) != 0.
  The `bgez` branch at 0xd002634 targets 0xd00265c, is taken when v0(=ret(ioctl)) >= 0 (signed), and falls through when v0(=ret(ioctl)) < 0 (signed).
  The `beq` branch at 0xd002640 targets 0xd002654, is taken when a4(=[sym(_vicenoise)]) == 0, and falls through when a4(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd002654 targets 0xd002600 and is always taken.
  The `beq` branch at 0xd00265c targets 0xd002600 and is always taken.
  The return at 0xd0025f8 has v0 = -0x1.
  The return at 0xd002604 has v0 = one of -0x1, 0x0.

- `dms_fifo_output` in `usr/lib32/internal/libvice.so` at 0xd002664 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd002664-0xd00273c (216 bytes).
  It occupies 216 bytes.
  The `sw` at 0xd002664 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `sw` at 0xd00266c stores 4 bytes to a1 (arg1 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from sym(_vicenoise) +0x0, including `lw` at 0xd002694, `lw` at 0xd0026fc.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0xd0026dc, `lw` at 0xd00272c.
  The `lw` at 0xd0026ec loads 4 bytes from (sym(_vicefd) + (a0 << 0x2)) +0x0.
  The `jalr` at 0xd002684 calls dmFifoCreate with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd0026a4 calls printf with a0=0xd004268, a1=?, a2=?, a3=?.
  The `jalr` at 0xd0026e8 calls ioctl with a0=[(sym(_vicefd) + (a0 << 0x2))], a1=0x7678000f, a2=[a1], a3=(a0 << 0x2).
  The `jalr` at 0xd00270c calls printf with a0=0xd004280, a1=?, a2=?, a3=?, a4=[sym(_vicenoise)].
  The `jalr` at 0xd002728 calls dmFifoFd with a0=[a1], a1=sp-32, a2=?, a3=?.
  The `beq` branch at 0xd00268c targets 0xd0026c4, is taken when v0(=ret(dmFifoCreate)) == 0, and falls through when v0(=ret(dmFifoCreate)) != 0.
  The `beq` branch at 0xd002698 targets 0xd0026ac, is taken when v0(=[sym(_vicenoise)]) == 0, and falls through when v0(=[sym(_vicenoise)]) != 0.
  The `bgez` branch at 0xd0026f0 targets 0xd002720, is taken when v0(=ret(ioctl)) >= 0 (signed), and falls through when v0(=ret(ioctl)) < 0 (signed).
  The `beq` branch at 0xd002700 targets 0xd002714, is taken when a4(=[sym(_vicenoise)]) == 0, and falls through when a4(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd002718 targets 0xd0026bc and is always taken.
  The `beq` branch at 0xd002734 targets 0xd0026bc and is always taken.
  The return at 0xd0026b4 has v0 = -0x1.
  The return at 0xd0026bc has v0 = one of -0x1, ?.

- `vice_event_init` in `usr/lib32/internal/libvice.so` at 0xd00273c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd00273c-0xd0027ac (112 bytes).
  It occupies 112 bytes.
  The `bgezall` at 0xd002768 calls dms_fifo_input [0xd0025a0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a3 at entry (arg3), a3=a3 at entry (arg3).
  The `bgezall` at 0xd00278c calls dms_fifo_output [0xd002664] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a4 at entry (arg4), a3=?, a6=-0x1.
  The `beq` branch at 0xd002774 targets 0xd002798, is taken when v0(=ret(dms_fifo_input)) == v1(=-0x1), and falls through when v0(=ret(dms_fifo_input)) != v1(=-0x1).
  The return at 0xd0027a4 has v0 = one of -0x1, ret(dms_fifo_output).

- `vice_event_uninit` in `usr/lib32/internal/libvice.so` at 0xd0027ac (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd0027ac-0xd002848 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xd0027c4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xd0027e8 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `jalr` at 0xd0027d0 calls dmFifoDetach with a0=[a1], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd0027e4 calls dmFifoDetach with a0=[a2], a1=?, a2=?, a3=?.
  The `jalr` at 0xd002818 calls fprintf with a0=sym(__iob)+32, a1=0xd004290, a2=?, a3=?.
  The `jalr` at 0xd002838 calls fprintf with a0=sym(__iob)+32, a1=0xd0042b0, a2=?, a3=?.
  The `beq` branch at 0xd0027dc targets 0xd002808, is taken when v0(=ret(dmFifoDetach)) == v1(=-0x1), and falls through when v0(=ret(dmFifoDetach)) != v1(=-0x1).
  The `beq` branch at 0xd0027f0 targets 0xd002828, is taken when v0(=ret(dmFifoDetach)) == a0(=-0x1), and falls through when v0(=ret(dmFifoDetach)) != a0(=-0x1).
  The `beq` branch at 0xd002820 targets 0xd0027e4 and is always taken.
  The `beq` branch at 0xd002840 targets 0xd0027fc and is always taken.
  The return at 0xd002800 has v0 = one of ret(dmFifoDetach), ret(fprintf).

- `vice_event_start` in `usr/lib32/internal/libvice.so` at 0xd002848 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd002848-0xd0028cc (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xd002880 loads 4 bytes from (sym(_vicefd) + (a0 << 0x2)) +0x0.
  The `lw` at 0xd002890 loads 4 bytes from sym(_vicenoise) +0x0.
  The `jalr` at 0xd00287c calls ioctl with a0=[(sym(_vicefd) + (a0 << 0x2))], a1=0x7678000d, a2=a1 at entry (arg1), a3=sym(_vicefd), a4=0x76780000, a5=0x9c30.
  The `jalr` at 0xd0028a0 calls printf with a0=0xd0042d0, a1=?, a2=?, a3=?, a6=[sym(_vicenoise)].
  The `bgez` branch at 0xd002884 targets 0xd0028bc, is taken when v0(=ret(ioctl)) >= 0 (signed), and falls through when v0(=ret(ioctl)) < 0 (signed).
  The `beq` branch at 0xd002894 targets 0xd0028a8, is taken when a6(=[sym(_vicenoise)]) == 0, and falls through when a6(=[sym(_vicenoise)]) != 0.
  The return at 0xd0028b4 has v0 = -0x1.
  The return at 0xd0028c4 has v0 = 0x0.

- `vice_dms_geterrs` in `usr/lib32/internal/libvice.so` at 0xd0028cc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd0028cc-0xd002918 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xd002904 loads 4 bytes from (sym(_vicefd) + (a0 << 0x2)) +0x0.
  The `jalr` at 0xd002900 calls ioctl with a0=[(sym(_vicefd) + (a0 << 0x2))], a1=0x7678000b, a2=0x0, a3=sym(_vicefd).
  The return at 0xd002910 has v0 = ret(ioctl).

- `vice_setetc` in `usr/lib32/internal/libvice.so` at 0xd002918 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd002918-0xd002a08 (240 bytes).
  It occupies 240 bytes.
  The `lw` at 0xd002938 loads 4 bytes from ((a0 << 0x2) + sym(_etcp)) +0x0.
  The `lw` at 0xd002958 loads 4 bytes from ((a0 << 0x2) + sym(_etcid)) +0x0.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd0029f8, `sw` at 0xd002a04.
  The `jalr` at 0xd00297c calls __assert with a0=0xd0042f8, a1=0xd004308, a2=0x25, a3=0x9b60, a4=[((a0 << 0x2) + sym(_etcid))], a5=sym(_etcid).
  The `jalr` at 0xd00298c calls vice_alloc with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=?.
  The `jalr` at 0xd0029a4 calls vice_mmap with a0=a0 at entry (arg0), a1=ret(vice_alloc), a2=0x1, a3=?.
  The `jalr` at 0xd0029c4 calls vice_settlb with a0=a0 at entry (arg0), a1=0x7f, a2=?, a3=0x1, a4=sp-80.
  The `bne` branch at 0xd002948 targets 0xd0029d8, is taken when at(=[((a0 << 0x2) + sym(_etcp))]) != 0, and falls through when at(=[((a0 << 0x2) + sym(_etcp))]) == 0.
  The `beq` branch at 0xd002960 targets 0xd002984, is taken when a4(=[((a0 << 0x2) + sym(_etcid))]) == 0, and falls through when a4(=[((a0 << 0x2) + sym(_etcid))]) != 0.
  The `beq` branch at 0xd0029cc targets 0xd0029e8, is taken when v0(=ret(vice_settlb)) == 0, and falls through when v0(=ret(vice_settlb)) != 0.
  The `beq` branch at 0xd002a00 targets 0xd0029d8 and is always taken.
  The return at 0xd0029e0 has v0 = one of -0x1, 0x0.

- `vice_msp_code_to_etc` in `usr/lib32/internal/libvice.so` at 0xd002a08 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd002a08-0xd002b18 (272 bytes).
  It occupies 272 bytes.
  3 such `lw` accesses load 4 bytes from (sym(_etcp) + (a0 << 0x2)) +0x0, including `lw` at 0xd002a3c, `lw` at 0xd002a9c, `lw` at 0xd002b14.
  The `sh` at 0xd002a74 stores 2 bytes to ((a4 << 0x4) + [(sym(_etcp) + (a0 << 0x2))]) +0xb046.
  The `sh` at 0xd002a7c stores 2 bytes to ((a4 << 0x4) + [(sym(_etcp) + (a0 << 0x2))]) +0xb044.
  The `sh` at 0xd002a80 stores 2 bytes to ((a4 << 0x4) + [(sym(_etcp) + (a0 << 0x2))]) +0xb042.
  The `sh` at 0xd002a88 stores 2 bytes to ((a4 << 0x4) + [(sym(_etcp) + (a0 << 0x2))]) +0xb040.
  The `sw` at 0xd002a90 stores 4 bytes to a6 (arg6 at entry) +0x3c.
  The `sw` at 0xd002adc stores 4 bytes to a6 (arg6 at entry) +0x18.
  The `sw` at 0xd002ae0 stores 4 bytes to a6 (arg6 at entry) +0x24.
  The `sw` at 0xd002ae4 stores 4 bytes to a6 (arg6 at entry) +0x20.
  The `sw` at 0xd002aec stores 4 bytes to a6 (arg6 at entry) +0x1c.
  The `jalr` at 0xd002ab0 calls bcopy with a0=a5 at entry (arg5), a1=([(sym(_etcp) + (a0 << 0x2))] + (a4 << 0xc)), a2=a3 at entry (arg3), a3=(a4 << 0xc), a4=(a4 << 0x4)+80.
  The `jalr` at 0xd002b04 calls __assert with a0=0xd004318, a1=0xd004308, a2=0x3d, a3=a3 at entry (arg3).
  The `beq` branch at 0xd002a5c targets 0xd002af0, is taken when v0(=[(sym(_etcp) + (a0 << 0x2))]) == 0, and falls through when v0(=[(sym(_etcp) + (a0 << 0x2))]) != 0.
  The `beq` branch at 0xd002a84 targets 0xd002adc, is taken when s1(=a4) == 0, and falls through when s1(=a4) != 0.
  The `beq` branch at 0xd002ae8 targets 0xd002a8c and is always taken.
  The `beq` branch at 0xd002b10 targets 0xd002a64 and is always taken.
  The return at 0xd002ad4 has v0 = a3.

- `vice_msp_sym_to_etc` in `usr/lib32/internal/libvice.so` at 0xd002b18 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd002b18-0xd002b70 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xd002b24 loads 4 bytes from abs 0xd0045b8.
  The `lw` at 0xd002b30 loads 4 bytes from (sym(_etcp) + (a0 << 0x2)) +0x0.
  The `lw` at 0xd002b58 loads 4 bytes from ?.
  The `sh` at 0xd002b64 stores 2 bytes to ?.
  The `blez` branch at 0xd002b40 targets 0xd002b68, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `bne` branch at 0xd002b60 targets 0xd002b4c, is taken when a4(?) < a2 (signed), and falls through when a4(?) >= a2 (signed).
  The return at 0xd002b68 has v0 = ?.

- `vice_mload_msp_code` in `usr/lib32/internal/libvice.so` at 0xd002b70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd002b70-0xd002c18 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0xd002b70 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xd002b74 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lw` at 0xd002b94 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0xd002bb4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `jalr` at 0xd002bc8 calls vice_msp_sym_to_etc with a0=a0 at entry (arg0), a1=a1+16, a2=[a1+12], a3=a4 at entry (arg4), a5=0x9908.
  The `jalr` at 0xd002bfc calls vice_msp_code_to_etc with a0=a0 at entry (arg0), a1=[a1], a2=[a1+4], a3=([a1+8] << 0x2), a5=(a1 + ([a1+12] << 0x4))+16, a6=a3 at entry (arg3), a7=([a1+12] << 0x4).
  The return at 0xd002c10 has v0 = ret(vice_msp_code_to_etc).

- `vice_load_msp_code` in `usr/lib32/internal/libvice.so` at 0xd002c18 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd002c18-0xd002cc8 (176 bytes).
  It occupies 176 bytes.
  The `jalr` at 0xd002c4c calls __vu_mapfileandreturnfd with a0=a1 at entry (arg1), a1=sp-64, a2=sp-60, a3=a3 at entry (arg3).
  The `jalr` at 0xd002c60 calls close with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd002c84 calls vice_mload_msp_code with a0=a0 at entry (arg0), a1=ret(__vu_mapfileandreturnfd), a2=?, a3=a2 at entry (arg2), a4=a3 at entry (arg3).
  The `jalr` at 0xd002c98 calls munmap with a0=ret(__vu_mapfileandreturnfd), a1=?, a2=?, a3=?.
  The `jalr` at 0xd002ca8 calls close with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0xd002c54 targets 0xd002c70, is taken when v0(=ret(__vu_mapfileandreturnfd)) != 0, and falls through when v0(=ret(__vu_mapfileandreturnfd)) == 0.
  The `beq` branch at 0xd002c68 targets 0xd002cb4 and is always taken.
  The return at 0xd002cc0 has v0 = one of -0x1, ?.

- `vice_loadmspcode` in `usr/lib32/internal/libvice.so` at 0xd002cc8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd002cc8-0xd002d40 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xd002cc8 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lw` at 0xd002ccc loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0xd002d3c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `jalr` at 0xd002d28 calls bcopy with a0=(a1 + ([a1+12] << 0x2))+16, a1=a2 at entry (arg2), a2=([a1+8] << 0x2), a3=([a1+12] << 0x2), a5=[a1+12], a6=[a1+8], a7=a2 at entry (arg2).
  The `beq` branch at 0xd002cfc targets 0xd002d10, is taken when a3 == at(=(([a1+8] + [a1+12]) << 0x2)+16), and falls through when a3 != at(=(([a1+8] + [a1+12]) << 0x2)+16).
  The `beq` branch at 0xd002d38 targets 0xd002d04 and is always taken.
  The return at 0xd002d08 has v0 = one of -0x1, [a1].

- `vice_load_bsp_code` in `usr/lib32/internal/libvice.so` at 0xd002d40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd002d40-0xd002da4 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xd002d6c loads 4 bytes from (sym(_etcp) + (a0 << 0x2)) +0x0.
  The `sw` at 0xd002d90 stores 4 bytes to a2 (arg2 at entry) +0x30.
  The `sw` at 0xd002d94 stores 4 bytes to a2 (arg2 at entry) +0x2c.
  The `jalr` at 0xd002d80 calls __vu_getcode with a0=a1 at entry (arg1), a1=[(sym(_etcp) + (a0 << 0x2))]+53248, a2=0x1000, a3=a3 at entry (arg3).
  The return at 0xd002d9c has v0 = ret(__vu_getcode).

- `vice_load_bsp_table` in `usr/lib32/internal/libvice.so` at 0xd002da4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd002da4-0xd002e04 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0xd002dd0 loads 4 bytes from (sym(_etcp) + (a0 << 0x2)) +0x0.
  The `sw` at 0xd002df4 stores 4 bytes to a2 (arg2 at entry) +0x34.
  The `jalr` at 0xd002de4 calls __vu_getcode with a0=a1 at entry (arg1), a1=[(sym(_etcp) + (a0 << 0x2))]+57344, a2=0x1400, a3=a3 at entry (arg3).
  The return at 0xd002dfc has v0 = ret(__vu_getcode).

- `_vice_unit_find` in `usr/lib32/internal/libvice.so` at 0xd002e04 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd002e04-0xd002e48 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xd002e18 loads 4 bytes from abs 0xd0045a8.
  The `lw` at 0xd002e1c loads 4 bytes from sym(_vicefd) +0x0.
  The `lw` at 0xd002e34 loads 4 bytes from ?.
  The `beq` branch at 0xd002e20 targets 0xd002e40, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bnel` branch at 0xd002e30 targets 0xd002e20, is taken when a4(?) < 0x40 (signed), and falls through when a4(?) >= 0x40 (signed); its branch-likely delay slot `lw v1,0(a3)` at 0xd002e34 runs only when taken and is annulled on fall-through.
  The return at 0xd002e38 has v0 = -0x1.
  The return at 0xd002e40 has v0 = ?.

- `_vice_unit_unfind` in `usr/lib32/internal/libvice.so` at 0xd002e48 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd002e48-0xd002e68 (32 bytes).
  It occupies 32 bytes.
  The `lw` at 0xd002e54 loads 4 bytes from abs 0xd0045a8.
  The `sw` at 0xd002e64 stores 4 bytes to (sym(_vicefd) + (a0 << 0x2)) +0x0.
  The return at 0xd002e60 has v0 = (sym(_vicefd) + (a0 << 0x2)).

- `vice_etc_dramp` in `usr/lib32/internal/libvice.so` at 0xd002e68 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd002e68-0xd002e90 (40 bytes).
  It occupies 40 bytes.
  The `lw` at 0xd002e74 loads 4 bytes from abs 0xd0045b8.
  The `lw` at 0xd002e80 loads 4 bytes from (sym(_etcp) + (a0 << 0x2)) +0x0.
  The return at 0xd002e88 has v0 = [(sym(_etcp) + (a0 << 0x2))]+45056.

- `vice_sequence` in `usr/lib32/internal/libvice.so` at 0xd002e90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd002e90-0xd002edc (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xd002ec8 loads 4 bytes from (sym(_vicefd) + (a0 << 0x2)) +0x0.
  The `jalr` at 0xd002ec4 calls ioctl with a0=[(sym(_vicefd) + (a0 << 0x2))], a1=0x7678001e, a2=a1 at entry (arg1), a3=sym(_vicefd), a4=0x76780000, a5=0x95e8.
  The return at 0xd002ed4 has v0 = ret(ioctl).

- `vice_put_vaddr` in `usr/lib32/internal/libvice.so` at 0xd002edc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd002edc-0xd002f28 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xd002f14 loads 4 bytes from (sym(_vicefd) + (a0 << 0x2)) +0x0.
  The `jalr` at 0xd002f10 calls ioctl with a0=[(sym(_vicefd) + (a0 << 0x2))], a1=0x76780020, a2=a1 at entry (arg1), a3=sym(_vicefd), a4=0x76780000, a5=0x959c.
  The return at 0xd002f20 has v0 = ret(ioctl).

- `vice_put` in `usr/lib32/internal/libvice.so` at 0xd002f28 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd002f28-0xd002f74 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xd002f60 loads 4 bytes from (sym(_vicefd) + (a0 << 0x2)) +0x0.
  The `jalr` at 0xd002f5c calls ioctl with a0=[(sym(_vicefd) + (a0 << 0x2))], a1=0x76780003, a2=a1 at entry (arg1), a3=sym(_vicefd), a4=0x76780000, a5=0x9550.
  The return at 0xd002f6c has v0 = ret(ioctl).

- `__vu_getcode` in `usr/lib32/internal/libvice.so` at 0xd002f74 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd002f74-0xd003054 (224 bytes).
  It occupies 224 bytes.
  The `lw` at 0xd003014 loads 4 bytes from sym(_vicenoise) +0x0.
  The `jalr` at 0xd002fb0 calls open with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0xd002fcc calls read with a0=ret(open), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd002fdc calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0xd002ff8 calls stat with a0=a0 at entry (arg0), a1=sp-208, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd00302c calls printf with a0=0xd004328, a1=a0 at entry (arg0), a2=?, a3=?.
  The `beq` branch at 0xd002fa0 targets 0xd002ff4, is taken when a2 == 0, and falls through when a2 != 0.
  The `bltz` branch at 0xd002fb8 targets 0xd003010, is taken when v0(=ret(open)) < 0 (signed), and falls through when v0(=ret(open)) >= 0 (signed).
  The `blez` branch at 0xd002fe4 targets 0xd003010, is taken when s2(=ret(read)) <= 0 (signed), and falls through when s2(=ret(read)) > 0 (signed).
  The `beq` branch at 0xd002fec targets 0xd00303c and is always taken.
  The `bltz` branch at 0xd003000 targets 0xd00300c, is taken when v0(=ret(stat)) < 0 (signed), and falls through when v0(=ret(stat)) >= 0 (signed).
  The `beq` branch at 0xd00300c targets 0xd002fa8, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0xd003018 targets 0xd003038, is taken when v0(=[sym(_vicenoise)]) == 0, and falls through when v0(=[sym(_vicenoise)]) != 0.
  The return at 0xd00304c has v0 = one of ret(read), -0x1.

- `__vu_readfile` in `usr/lib32/internal/libvice.so` at 0xd003054 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd003054-0xd003088 (52 bytes).
  It occupies 52 bytes.
  The `jalr` at 0xd003070 calls __vu_getcode with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd003080 has v0 = ret(__vu_getcode).

- `__vu_readstdin` in `usr/lib32/internal/libvice.so` at 0xd003088 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd003088-0xd003168 (224 bytes).
  It occupies 224 bytes.
  2 such `lw` accesses load 4 bytes from sym(_vicenoise) +0x0, including `lw` at 0xd003128, `lw` at 0xd003148.
  The `jalr` at 0xd0030d0 calls read with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0xd003138 calls printf with a0=0xd004368, a1=?, a2=?, a3=?.
  The `jalr` at 0xd003158 calls printf with a0=0xd004348, a1=[sym(_vicenoise)], a2=?, a3=?.
  The `beq` branch at 0xd0030b4 targets 0xd00311c, is taken when a1 == 0, and falls through when a1 != 0.
  The `bltz` branch at 0xd0030d8 targets 0xd003148, is taken when v0(=ret(read)) < 0 (signed), and falls through when v0(=ret(read)) >= 0 (signed).
  The `beq` branch at 0xd0030e0 targets 0xd003120, is taken when v0(=ret(read)) == 0, and falls through when v0(=ret(read)) != 0.
  The `bne` branch at 0xd0030f0 targets 0xd0030c4, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0xd003120 targets 0xd0030f8, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xd00312c targets 0xd0030f8, is taken when v0(=[sym(_vicenoise)]) == 0, and falls through when v0(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd003140 targets 0xd0030f8 and is always taken.
  The `beq` branch at 0xd00314c targets 0xd003160, is taken when a1(=[sym(_vicenoise)]) == 0, and falls through when a1(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd003160 targets 0xd0030f8 and is always taken.
  The return at 0xd003114 has v0 = one of ?, -0x1.

- `__vu_writefile` in `usr/lib32/internal/libvice.so` at 0xd003168 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd003168-0xd003230 (200 bytes).
  It occupies 200 bytes.
  2 such `lw` accesses load 4 bytes from sym(_vicenoise) +0x0, including `lw` at 0xd0031a8, `lw` at 0xd0031e8.
  The `jalr` at 0xd003194 calls creat with a0=a0 at entry (arg0), a1=0x1a4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd0031bc calls printf with a0=0xd004398, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xd0031d8 calls write with a0=ret(creat), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xd0031fc calls printf with a0=0xd004398, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xd003210 calls close with a0=ret(creat), a1=sym(_vicenoise), a2=?, a3=?.
  The `bgez` branch at 0xd0031a0 targets 0xd0031cc, is taken when v0(=ret(creat)) >= 0 (signed), and falls through when v0(=ret(creat)) < 0 (signed).
  The `beq` branch at 0xd0031ac targets 0xd0031c4, is taken when v0(=[sym(_vicenoise)]) == 0, and falls through when v0(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd0031c4 targets 0xd00321c and is always taken.
  The `bgez` branch at 0xd0031e0 targets 0xd00320c, is taken when v0(=ret(write)) >= 0 (signed), and falls through when v0(=ret(write)) < 0 (signed).
  The `beq` branch at 0xd0031ec targets 0xd003204, is taken when a1(=[sym(_vicenoise)]) == 0, and falls through when a1(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd003204 targets 0xd00321c and is always taken.
  The return at 0xd003228 has v0 = one of -0x1, 0x0.

- `__vu_appendfile` in `usr/lib32/internal/libvice.so` at 0xd003230 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd003230-0xd003308 (216 bytes).
  It occupies 216 bytes.
  2 such `lw` accesses load 4 bytes from sym(_vicenoise) +0x0, including `lw` at 0xd003274, `lw` at 0xd0032b4.
  The `jalr` at 0xd003260 calls open with a0=a0 at entry (arg0), a1=0x109, a2=0x1ed, a3=a3 at entry (arg3).
  The `jalr` at 0xd003288 calls printf with a0=0xd0043b0, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xd0032a4 calls write with a0=ret(open), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xd0032c8 calls printf with a0=0xd0043b0, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xd0032d4 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0xd0032e8 calls close with a0=ret(open), a1=sym(_vicenoise), a2=?, a3=?.
  The `bgez` branch at 0xd00326c targets 0xd003298, is taken when v0(=ret(open)) >= 0 (signed), and falls through when v0(=ret(open)) < 0 (signed).
  The `beq` branch at 0xd003278 targets 0xd003290, is taken when v0(=[sym(_vicenoise)]) == 0, and falls through when v0(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd003290 targets 0xd0032f4 and is always taken.
  The `bgez` branch at 0xd0032ac targets 0xd0032e4, is taken when v0(=ret(write)) >= 0 (signed), and falls through when v0(=ret(write)) < 0 (signed).
  The `beq` branch at 0xd0032b8 targets 0xd0032d0, is taken when a1(=[sym(_vicenoise)]) == 0, and falls through when a1(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd0032dc targets 0xd0032f4 and is always taken.
  The return at 0xd003300 has v0 = one of -0x1, 0x0.

- `__vu_mapfileandreturnfd` in `usr/lib32/internal/libvice.so` at 0xd003308 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd003308-0xd00342c (292 bytes).
  It occupies 292 bytes.
  The `sw` at 0xd003348 stores 4 bytes to a2 (arg2 at entry) +0x0.
  3 such `lw` accesses load 4 bytes from sym(_vicenoise) +0x0, including `lw` at 0xd003350, `lw` at 0xd0033a4, `lw` at 0xd003400.
  The `sw` at 0xd0033e0 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lw` at 0xd0033e8 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `jalr` at 0xd00333c calls open with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd003368 calls printf with a0=0xd0043c8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xd003394 calls stat with a0=a0 at entry (arg0), a1=sp-192, a2=?, a3=?.
  The `jalr` at 0xd0033b8 calls printf with a0=0xd0043c8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xd0033ec calls mmap with a0=0x0, a1=?, a2=0x1, a3=0x2, a4=[a2], a5=0x0.
  The `jalr` at 0xd003414 calls printf with a0=0xd0043c8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `bgez` branch at 0xd003344 targets 0xd00338c, is taken when v0(=ret(open)) >= 0 (signed), and falls through when v0(=ret(open)) < 0 (signed).
  The `beq` branch at 0xd003354 targets 0xd003374, is taken when v0(=[sym(_vicenoise)]) == 0, and falls through when v0(=[sym(_vicenoise)]) != 0.
  The `bgez` branch at 0xd00339c targets 0xd0033c8, is taken when v0(=ret(stat)) >= 0 (signed), and falls through when v0(=ret(stat)) < 0 (signed).
  The `beq` branch at 0xd0033a8 targets 0xd0033c0, is taken when a1(=[sym(_vicenoise)]) == 0, and falls through when a1(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd0033c0 targets 0xd003374 and is always taken.
  The `bne` branch at 0xd0033fc targets 0xd003424, is taken when v0(=ret(mmap)) != a1(=-0x1), and falls through when v0(=ret(mmap)) == a1(=-0x1).
  The `beq` branch at 0xd003404 targets 0xd00341c, is taken when a0(=[sym(_vicenoise)]) == 0, and falls through when a0(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd00341c targets 0xd003374 and is always taken.
  The `beq` branch at 0xd003424 targets 0xd003378 and is always taken.
  The return at 0xd003384 has v0 = one of 0x0, ret(mmap).

- `__vu_mapfile` in `usr/lib32/internal/libvice.so` at 0xd00342c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd00342c-0xd003554 (296 bytes).
  It occupies 296 bytes.
  The `lw` at 0xd00346c loads 4 bytes from a1 (arg1 at entry) +0x0.
  3 such `lw` accesses load 4 bytes from sym(_vicenoise) +0x0, including `lw` at 0xd0034a0, `lw` at 0xd0034e4, `lw` at 0xd003530.
  The `sw` at 0xd003528 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0xd00345c calls open with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd00348c calls mmap with a0=0x0, a1=?, a2=0x1, a3=0x2, a5=0x0.
  The `jalr` at 0xd0034b8 calls printf with a0=0xd0043e8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xd0034f8 calls printf with a0=0xd0043e8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xd003510 calls stat with a0=a0 at entry (arg0), a1=sp-192, a2=?, a3=?.
  The `jalr` at 0xd003544 calls printf with a0=0xd0043e8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `bltz` branch at 0xd003464 targets 0xd0034e4, is taken when v0(=ret(open)) < 0 (signed), and falls through when v0(=ret(open)) >= 0 (signed).
  The `beq` branch at 0xd003470 targets 0xd003508, is taken when a1(=[a1]) == 0, and falls through when a1(=[a1]) != 0.
  The `bne` branch at 0xd00349c targets 0xd0034dc, is taken when v0(=ret(mmap)) != a1(=-0x1), and falls through when v0(=ret(mmap)) == a1(=-0x1).
  The `beq` branch at 0xd0034a4 targets 0xd0034c4, is taken when a0(=[sym(_vicenoise)]) == 0, and falls through when a0(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd0034dc targets 0xd0034c8 and is always taken.
  The `beq` branch at 0xd0034e8 targets 0xd003500, is taken when a1(=[sym(_vicenoise)]) == 0, and falls through when a1(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd003500 targets 0xd0034c4 and is always taken.
  The `bltz` branch at 0xd003518 targets 0xd00352c, is taken when v0(=ret(stat)) < 0 (signed), and falls through when v0(=ret(stat)) >= 0 (signed).
  The `beq` branch at 0xd003524 targets 0xd003478 and is always taken.
  The `beq` branch at 0xd003534 targets 0xd00354c, is taken when a1(=[sym(_vicenoise)]) == 0, and falls through when a1(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd00354c targets 0xd0034c4 and is always taken.
  The return at 0xd0034d4 has v0 = one of 0x0, ret(mmap).

- `vice_dmbuf_settlb` in `usr/lib32/internal/libvice.so` at 0xd003554 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd003554-0xd003608 (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0xd003594 loads 4 bytes from ret(_dmBufferGetDmsEvent) +0x10.
  The `lw` at 0xd0035cc loads 4 bytes from (sym(_vicefd) + (a0 << 0x2)) +0x0.
  The `lw` at 0xd0035dc loads 4 bytes from sym(_vicenoise) +0x0.
  The `jalr` at 0xd003584 calls _dmBufferGetDmsEvent with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd0035c8 calls ioctl with a0=[(sym(_vicefd) + (a0 << 0x2))], a1=0x76780017, a2=sp-64, a3=(a0 << 0x2), a4=[ret(_dmBufferGetDmsEvent)+16], a5=a3 at entry (arg3), a6=a4 at entry (arg4), a7=a1 at entry (arg1).
  The `jalr` at 0xd0035ec calls printf with a0=0xd004400, a1=sym(_vicenoise), a2=?, a3=?.
  The `bgez` branch at 0xd0035d4 targets 0xd0035f8, is taken when v0(=ret(ioctl)) >= 0 (signed), and falls through when v0(=ret(ioctl)) < 0 (signed).
  The `beq` branch at 0xd0035e0 targets 0xd0035f4, is taken when t0(=[sym(_vicenoise)]) == 0, and falls through when t0(=[sym(_vicenoise)]) != 0.
  The return at 0xd003600 has v0 = one of ret(ioctl), -0x1.

- `vice_dmbuf_requirements` in `usr/lib32/internal/libvice.so` at 0xd003608 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd003608-0xd0036b0 (168 bytes).
  It occupies 168 bytes.
  The `jalr` at 0xd003630 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0xd004428, a2=0x1, a3=a3 at entry (arg3).
  The `jalr` at 0xd003660 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0xd004438, a2=0x0, a3=?.
  The `jalr` at 0xd003690 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0xd004448, a2=0x10000, a3=?.
  The `beq` branch at 0xd003638 targets 0xd003650, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0xd003668 targets 0xd003680, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0xd003698 targets 0xd0036a8, is taken when v0(=ret(dmParamsSetInt)) == 0, and falls through when v0(=ret(dmParamsSetInt)) != 0.
  The `beq` branch at 0xd0036a0 targets 0xd003640 and is always taken.
  The `beq` branch at 0xd0036a8 targets 0xd003640 and is always taken.
  The return at 0xd003648 has v0 = one of -0x1, 0x0.
  The return at 0xd003678 has v0 = -0x1.

- `vice_dmbuf_outpool` in `usr/lib32/internal/libvice.so` at 0xd0036b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd0036b0-0xd00372c (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd0036e8 loads 4 bytes from ret(_dmBufferGetDmsPool) +0x18.
  The `lw` at 0xd0036fc loads 4 bytes from (sym(_vicefd) + (a0 << 0x2)) +0x0.
  The `jalr` at 0xd0036d0 calls _dmBufferGetDmsPool with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd0036f8 calls ioctl with a0=[(sym(_vicefd) + (a0 << 0x2))], a1=0x7678000e, a2=[ret(_dmBufferGetDmsPool)+24], a3=(a0 << 0x2).
  The `bltz` branch at 0xd003700 targets 0xd003718, is taken when v0(=ret(ioctl)) < 0 (signed), and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The return at 0xd003710 has v0 = 0x0.
  The return at 0xd003724 has v0 = -0x1.

- `vice_dmbuf_send` in `usr/lib32/internal/libvice.so` at 0xd00372c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd00372c-0xd003810 (228 bytes).
  It occupies 228 bytes.
  The `sw` at 0xd003798 stores 4 bytes to ret(_dmBufferGetDmsEvent) +0x8.
  The `sw` at 0xd0037a0 stores 4 bytes to ret(_dmBufferGetDmsEvent) +0x4.
  The `sd` at 0xd0037ac stores 8 bytes to ret(_dmBufferGetDmsEvent) +0x20.
  The `sd` at 0xd0037b4 stores 8 bytes to ret(_dmBufferGetDmsEvent) +0x18.
  The `lw` at 0xd0037c8 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `jalr` at 0xd003784 calls _dmBufferGetDmsEvent with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=-0x1.
  The `jalr` at 0xd0037a4 calls dmBufferGetUSTMSCpair with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xd0037c4 calls dmFifoEnq with a0=[a2], a1=ret(_dmBufferGetDmsEvent), a2=?, a3=?.
  The `jalr` at 0xd003800 calls bcopy with a0=a3 at entry (arg3), a1=ret(_dmBufferGetDmsEvent)+128, a2=(a4 << 0x2), a3=?.
  The `beq` branch at 0xd003764 targets 0xd00377c, is taken when a3 == 0, and falls through when a3 != 0.
  The `bne` branch at 0xd00376c targets 0xd003780, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xd003774 targets 0xd0037d8 and is always taken.
  The `bne` branch at 0xd0037b0 targets 0xd0037f4, is taken when s3(=a3) != 0, and falls through when s3(=a3) == 0.
  The `beq` branch at 0xd003808 targets 0xd0037bc and is always taken.
  The return at 0xd0037ec has v0 = one of -0x1, ret(dmFifoEnq).

- `vice_dmbuf_recv` in `usr/lib32/internal/libvice.so` at 0xd003810 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd003810-0xd00391c (268 bytes).
  It occupies 268 bytes.
  The `lw` at 0xd003884 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `sw` at 0xd0038c8 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lw` at 0xd0038f0 loads 4 bytes from a4 (arg4 at entry) +0x0.
  The `ld` at 0xd0038f4 loads 8 bytes from ret(malloc) +0x20.
  The `ld` at 0xd0038fc loads 8 bytes from ret(malloc) +0x18.
  The `jalr` at 0xd003844 calls malloc with a0=0x188, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd003880 calls dmFifoDeq with a0=[a3], a1=ret(malloc), a2=?, a3=?, a7=-0x1.
  The `jalr` at 0xd0038a0 calls dmSetError with a0=0x1776, a1=0xd004460, a2=0xd004470, a3=?.
  The `jalr` at 0xd0038ac calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd0038dc calls _dmBufferCreateDmsBuffer with a0=a2 at entry (arg2), a1=ret(malloc), a2=a4 at entry (arg4), a3=?.
  The `jalr` at 0xd0038f8 calls dmBufferSetUSTMSCpair with a0=[a4], a1=[ret(malloc)+24]:8, a2=[ret(malloc)+32]:8, a3=?.
  The `jalr` at 0xd00390c calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd003850 targets 0xd003874, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xd003888 targets 0xd0038bc, is taken when v0(=ret(dmFifoDeq)) == 0, and falls through when v0(=ret(dmFifoDeq)) != 0.
  The `beq` branch at 0xd0038b4 targets 0xd003858 and is always taken.
  The `beq` branch at 0xd0038bc targets 0xd0038d0, is taken when s1(=a1) == 0, and falls through when s1(=a1) != 0.
  The `bne` branch at 0xd0038e4 targets 0xd003908, is taken when v0(=ret(_dmBufferCreateDmsBuffer)) != 0, and falls through when v0(=ret(_dmBufferCreateDmsBuffer)) == 0.
  The `beq` branch at 0xd003900 targets 0xd003914 and is always taken.
  The `beq` branch at 0xd003914 targets 0xd003858 and is always taken.
  The return at 0xd00386c has v0 = one of -0x1, ret(_dmBufferCreateDmsBuffer).

- `vice_dmbuf_msend` in `usr/lib32/internal/libvice.so` at 0xd00391c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/internal/libvice.so`.
  Range: 0xd00391c-0xd003a30 (276 bytes).
  It occupies 276 bytes.
  The `sw` at 0xd003980 stores 4 bytes to ret(_dmBufferGetDmsEvent) +0x8.
  The `sw` at 0xd003988 stores 4 bytes to ret(_dmBufferGetDmsEvent) +0x4.
  The `sw` at 0xd003994 stores 4 bytes to ret(_dmBufferGetDmsEvent) +0x28.
  The `lw` at 0xd0039ac loads 4 bytes from a4 (arg4 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from ret(_dmBufferGetDmsEvent) +0x10, including `lw` at 0xd0039b4, `lw` at 0xd0039e8.
  The `sw` at 0xd0039c0 stores 4 bytes to ret(_dmBufferGetDmsEvent) +0x84.
  The `sw` at 0xd0039cc stores 4 bytes to ret(_dmBufferGetDmsEvent) +0x80.
  The `lw` at 0xd0039dc loads 4 bytes from ?.
  The `sw` at 0xd0039f0 stores 4 bytes to ?.
  The `lw` at 0xd003a14 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `jalr` at 0xd00396c calls _dmBufferGetDmsEvent with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd003998 calls bcopy with a0=a5 at entry (arg5), a1=ret(_dmBufferGetDmsEvent)+128, a2=(a6 << 0x2), a3=?.
  The `jalr` at 0xd0039a8 calls _dmBufferGetDmsEvent with a0=[a4], a1=?, a2=?, a3=?.
  The `jalr` at 0xd0039d8 calls _dmBufferGetDmsEvent with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd003a10 calls dmFifoEnq with a0=[a2], a1=ret(_dmBufferGetDmsEvent), a2=?, a3=?.
  The `beq` branch at 0xd0039c8 targets 0xd0039f4, is taken when s1(=a3-2) == s4(=-0x1), and falls through when s1(=a3-2) != s4(=-0x1).
  The `bne` branch at 0xd0039ec targets 0xd0039d0, is taken when s1(?) != s4(=-0x1), and falls through when s1(?) == s4(=-0x1).
  The return at 0xd003a28 has v0 = ret(dmFifoEnq).
