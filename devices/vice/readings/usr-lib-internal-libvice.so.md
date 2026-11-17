# Readings: `usr/lib/internal/libvice.so`

One entry per routine, filed here from the reading batches by binary.

- `vice_get_lib_rev` in `usr/lib/internal/libvice.so` at 0xd001980 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd001980-0xd00198c (12 bytes).
  It occupies 12 bytes.
  The return at 0xd001984 has v0 = 0x6b7a0001.

- `vice_open` in `usr/lib/internal/libvice.so` at 0xd00198c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd00198c-0xd001c28 (668 bytes).
  It occupies 668 bytes.
  The `sw` at 0xd0019c8 stores 4 bytes to sym(_vicenoise) +0x0.
  5 such `lw` accesses load 4 bytes from sym(_vicenoise) +0x0, including `lw` at 0xd0019e0, `lw` at 0xd001a2c, `lw` at 0xd001a98.
  The `lw` at 0xd001af4 loads 4 bytes from sym(_viceid) +0x0.
  The `sw` at 0xd001b64 stores 4 bytes to sym(_viceid) +0x0.
  The `sw` at 0xd001c08 stores 4 bytes to ((ret(_vice_unit_find) << 0x2) + sym(_vice_base)) +0x0.
  The `sw` at 0xd001c14 stores 4 bytes to ((ret(_vice_unit_find) << 0x2) + sym(_vicefd)) +0x0.
  The `jalr` at 0xd0019b0 calls getenv with a0=0xd004000, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd0019c4 calls _vice_unit_find with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd0019f4 calls printf with a0=0xd00400c, a1=?, a2=?, a3=?.
  The `jalr` at 0xd001a14 calls open with a0=a0 at entry (arg0), a1=0x2, a2=?, a3=?.
  The `jalr` at 0xd001a40 calls printf with a0=0xd004030, a1=?, a2=?, a3=?.
  The `jalr` at 0xd001a54 calls _vice_unit_unfind with a0=ret(_vice_unit_find), a1=?, a2=?, a3=?.
  The `jalr` at 0xd001a78 calls ioctl with a0=ret(open), a1=0x7678001f, a2=0x0, a3=?.
  The `jalr` at 0xd001ab0 calls printf with a0=0xd004050, a1=0x6b7a, a2=ret(ioctl), a3=?.
  The `jalr` at 0xd001ac4 calls _vice_unit_unfind with a0=ret(_vice_unit_find), a1=?, a2=?, a3=?.
  The `jalr` at 0xd001ad8 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0xd001b0c calls ioctl with a0=ret(open), a1=0x76782000, a2=0x0, a3=?.
  The `jalr` at 0xd001b38 calls printf with a0=0xd00407c, a1=?, a2=?, a3=?.
  The `jalr` at 0xd001b4c calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0xd001b88 calls mmap with a0=0x0, a1=0x14000, a2=0x3, a3=0x1.
  The `jalr` at 0xd001bb8 calls printf with a0=0xd0040a4, a1=?, a2=?, a3=?.
  The `jalr` at 0xd001bcc calls _vice_unit_unfind with a0=ret(_vice_unit_find), a1=?, a2=?, a3=?.
  The `jalr` at 0xd001be0 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd0019d4 targets 0xd001a08, is taken when v0(=ret(_vice_unit_find)) != at(=-0x1), and falls through when v0(=ret(_vice_unit_find)) == at(=-0x1).
  The `beq` branch at 0xd0019e4 targets 0xd001a00, is taken when t6(=[sym(_vicenoise)]) == 0, and falls through when t6(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd001a00 targets 0xd001c18 and is always taken.
  The `bgez` branch at 0xd001a20 targets 0xd001a68, is taken when v0(=ret(open)) >= 0 (signed), and falls through when v0(=ret(open)) < 0 (signed).
  The `beq` branch at 0xd001a30 targets 0xd001a4c, is taken when t7(=[sym(_vicenoise)]) == 0, and falls through when t7(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd001a60 targets 0xd001c18 and is always taken.
  The `beq` branch at 0xd001a8c targets 0xd001aec, is taken when t8(?) == at(=0x6b7a), and falls through when t8(?) != at(=0x6b7a).
  The `beq` branch at 0xd001a9c targets 0xd001abc, is taken when t9(=[sym(_vicenoise)]) == 0, and falls through when t9(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd001ae4 targets 0xd001c18 and is always taken.
  The `bne` branch at 0xd001af8 targets 0xd001b68, is taken when t0(=[sym(_viceid)]) != 0, and falls through when t0(=[sym(_viceid)]) == 0.
  The `bne` branch at 0xd001b18 targets 0xd001b60, is taken when v0(=ret(ioctl)) != at(=-0x1), and falls through when v0(=ret(ioctl)) == at(=-0x1).
  The `beq` branch at 0xd001b28 targets 0xd001b44, is taken when t1(=[sym(_vicenoise)]) == 0, and falls through when t1(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd001b58 targets 0xd001c18 and is always taken.
  The `bne` branch at 0xd001b98 targets 0xd001bf4, is taken when v0(=ret(mmap)) != at(=-0x1), and falls through when v0(=ret(mmap)) == at(=-0x1).
  The `beq` branch at 0xd001ba8 targets 0xd001bc4, is taken when t3(=[sym(_vicenoise)]) == 0, and falls through when t3(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd001bec targets 0xd001c18 and is always taken.
  The return at 0xd001c20 has v0 = one of -0x1, ret(_vice_unit_find).

- `vice_open_and_setetc` in `usr/lib/internal/libvice.so` at 0xd001c28 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd001c28-0xd001c94 (108 bytes).
  It occupies 108 bytes.
  The `jalr` at 0xd001c40 calls vice_open with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd001c60 calls vice_setetc with a0=ret(vice_open), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd001c50 targets 0xd001c78, is taken when v0(=ret(vice_open)) == at(=-0x1), and falls through when v0(=ret(vice_open)) != at(=-0x1).
  The `bne` branch at 0xd001c70 targets 0xd001c80, is taken when v0(=ret(vice_setetc)) != at(=-0x1), and falls through when v0(=ret(vice_setetc)) == at(=-0x1).
  The `beq` branch at 0xd001c78 targets 0xd001c84 and is always taken.
  The return at 0xd001c8c has v0 = one of -0x1, ret(vice_open).

- `vice_close` in `usr/lib/internal/libvice.so` at 0xd001c94 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd001c94-0xd001d78 (228 bytes).
  It occupies 228 bytes.
  The `lw` at 0xd001cb0 loads 4 bytes from ((a0 << 0x2) + sym(_vice_base)) +0x0.
  The `sw` at 0xd001cf0 stores 4 bytes to ((a0 << 0x2) + sym(_vice_base)) +0x0.
  The `lw` at 0xd001cf8 loads 4 bytes from ((a0 << 0x2) + sym(_etcp)) +0x0.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(_vicefd)) +0x0, including `lw` at 0xd001d10, `lw` at 0xd001d4c.
  The `sw` at 0xd001d38 stores 4 bytes to ((a0 << 0x2) + sym(_etcp)) +0x0.
  The `jalr` at 0xd001cd8 calls munmap with a0=[((a0 << 0x2) + sym(_vice_base))], a1=0x14000, a2=((a0 << 0x2) + sym(_vice_base)), a3=[((a0 << 0x2) + sym(_vice_base))].
  The `jalr` at 0xd001d20 calls vice_munmap with a0=[((a0 << 0x2) + sym(_vicefd))], a1=[((a0 << 0x2) + sym(_etcp))], a2=0x1, a3=((a0 << 0x2) + sym(_etcp)).
  The `jalr` at 0xd001d48 calls close with a0=[((a0 << 0x2) + sym(_vicefd))], a1=?, a2=?, a3=((a0 << 0x2) + sym(_etcp)).
  The `jalr` at 0xd001d5c calls _vice_unit_unfind with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd001cbc targets 0xd001cec, is taken when a3(=[((a0 << 0x2) + sym(_vice_base))]) == 0, and falls through when a3(=[((a0 << 0x2) + sym(_vice_base))]) != 0.
  The `beq` branch at 0xd001cfc targets 0xd001d3c, is taken when a1(=[((a0 << 0x2) + sym(_etcp))]) == 0, and falls through when a1(=[((a0 << 0x2) + sym(_etcp))]) != 0.
  The return at 0xd001d70 has v0 = ?.

- `vice_lock` in `usr/lib/internal/libvice.so` at 0xd001d78 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd001d78-0xd001dfc (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xd001da4 loads 4 bytes from ((a0 << 0x2) + sym(_vicefd)) +0x0.
  The `sw` at 0xd001de0 stores 4 bytes to sym(_vice_owner) +0x0.
  The `lw` at 0xd001de8 loads 4 bytes from ((a0 << 0x2) + sym(_vice_base)) +0x0.
  The `jalr` at 0xd001db4 calls ioctl with a0=[((a0 << 0x2) + sym(_vicefd))], a1=0x76780006, a2=0x0, a3=a3 at entry (arg3).
  The `bne` branch at 0xd001dc4 targets 0xd001dd4, is taken when v0(=ret(ioctl)) != at(=-0x1), and falls through when v0(=ret(ioctl)) == at(=-0x1).
  The `beq` branch at 0xd001dcc targets 0xd001dec and is always taken.
  The return at 0xd001df4 has v0 = one of 0x0, [((a0 << 0x2) + sym(_vice_base))].

- `vice_unlock` in `usr/lib/internal/libvice.so` at 0xd001dfc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd001dfc-0xd001ec0 (196 bytes).
  It occupies 196 bytes.
  The `lw` at 0xd001e14 loads 4 bytes from sym(_vice_owner) +0x0.
  The `lw` at 0xd001e5c loads 4 bytes from ((a0 << 0x2) + sym(_vicefd)) +0x0.
  The `lw` at 0xd001e84 loads 4 bytes from sym(_vicenoise) +0x0.
  The `jalr` at 0xd001e3c calls __assert with a0=0xd0040c0, a1=0xd0040d4, a2=0xb7, a3=a0 at entry (arg0).
  The `jalr` at 0xd001e6c calls ioctl with a0=[((a0 << 0x2) + sym(_vicefd))], a1=0x76780007, a2=0x0, a3=a0 at entry (arg0).
  The `jalr` at 0xd001e98 calls printf with a0=0xd0040e0, a1=?, a2=?, a3=?.
  The `beq` branch at 0xd001e20 targets 0xd001e4c, is taken when a0 == t6(=[sym(_vice_owner)]), and falls through when a0 != t6(=[sym(_vice_owner)]).
  The `bne` branch at 0xd001e78 targets 0xd001eac, is taken when v0(=ret(ioctl)) != at(=-0x1), and falls through when v0(=ret(ioctl)) == at(=-0x1).
  The `beq` branch at 0xd001e88 targets 0xd001ea4, is taken when t0(=[sym(_vicenoise)]) == 0, and falls through when t0(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd001ea4 targets 0xd001eb0 and is always taken.
  The return at 0xd001eb8 has v0 = one of -0x1, 0x0.

- `vice_piow` in `usr/lib/internal/libvice.so` at 0xd001ec0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd001ec0-0xd001fac (236 bytes).
  It occupies 236 bytes.
  4 such `lw` accesses load 4 bytes from sym(_vice_owner) +0x0, including `lw` at 0xd001f0c, `lw` at 0xd001f34, `lw` at 0xd001f5c.
  4 such `lw` accesses load 4 bytes from (([sym(_vice_owner)] << 0x2) + sym(_vice_base)) +0x0, including `lw` at 0xd001f18, `lw` at 0xd001f40, `lw` at 0xd001f68.
  The `sb` at 0xd001f24 stores 1 byte to ([(([sym(_vice_owner)] << 0x2) + sym(_vice_base))] + a1) +0x0.
  The `sh` at 0xd001f4c stores 2 bytes to ([(([sym(_vice_owner)] << 0x2) + sym(_vice_base))] + a1) +0x0.
  2 such `sw` accesses store 4 bytes to ([(([sym(_vice_owner)] << 0x2) + sym(_vice_base))] + a1) +0x0, including `sw` at 0xd001f74, `sw` at 0xd001f9c.
  The `sw` at 0xd001fa0 stores 4 bytes to ([(([sym(_vice_owner)] << 0x2) + sym(_vice_base))] + a1) +0x4.
  The `beq` branch at 0xd001ed4 targets 0xd001f00, is taken when a0 == at(=0x1), and falls through when a0 != at(=0x1).
  The `beq` branch at 0xd001ee0 targets 0xd001f28, is taken when a0 == at(=0x2), and falls through when a0 != at(=0x2).
  The `beq` branch at 0xd001ee8 targets 0xd001f50, is taken when a0 == at(=0x4), and falls through when a0 != at(=0x4).
  The `beq` branch at 0xd001ef0 targets 0xd001f78, is taken when a0 == at(=0x8), and falls through when a0 != at(=0x8).
  The return at 0xd001ef8 has v0 = ?.
  The return at 0xd001f20 has v0 = ?.
  The return at 0xd001f48 has v0 = ?.
  The return at 0xd001f70 has v0 = ?.
  The return at 0xd001fa4 has v0 = ?.

- `vice_pior` in `usr/lib/internal/libvice.so` at 0xd001fac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd001fac-0xd0020b8 (268 bytes).
  It occupies 268 bytes.
  4 such `lw` accesses load 4 bytes from sym(_vice_owner) +0x0, including `lw` at 0xd001ff8, `lw` at 0xd002024, `lw` at 0xd002054.
  4 such `lw` accesses load 4 bytes from (([sym(_vice_owner)] << 0x2) + sym(_vice_base)) +0x0, including `lw` at 0xd002004, `lw` at 0xd002030, `lw` at 0xd002060.
  The `lbu` at 0xd00200c loads 1 byte from ([(([sym(_vice_owner)] << 0x2) + sym(_vice_base))] + a1) +0x0.
  The `lh` at 0xd002038 loads 2 bytes from ([(([sym(_vice_owner)] << 0x2) + sym(_vice_base))] + a1) +0x0.
  2 such `lw` accesses load 4 bytes from ([(([sym(_vice_owner)] << 0x2) + sym(_vice_base))] + a1) +0x0, including `lw` at 0xd002068, `lw` at 0xd002098.
  The `lw` at 0xd00209c loads 4 bytes from ([(([sym(_vice_owner)] << 0x2) + sym(_vice_base))] + a1) +0x4.
  The `beq` branch at 0xd001fc0 targets 0xd001fec, is taken when a0 == at(=0x1), and falls through when a0 != at(=0x1).
  The `beq` branch at 0xd001fcc targets 0xd00201c, is taken when a0 == at(=0x2), and falls through when a0 != at(=0x2).
  The `beq` branch at 0xd001fd4 targets 0xd00204c, is taken when a0 == at(=0x4), and falls through when a0 != at(=0x4).
  The `beq` branch at 0xd001fdc targets 0xd00207c, is taken when a0 == at(=0x8), and falls through when a0 != at(=0x8).
  The `beq` branch at 0xd001fe4 targets 0xd0020ac and is always taken.
  The `beq` branch at 0xd002014 targets 0xd0020a8 and is always taken.
  The `beq` branch at 0xd002044 targets 0xd0020a8 and is always taken.
  The `beq` branch at 0xd002074 targets 0xd0020a8 and is always taken.
  The return at 0xd0020b0 has v0 = ?.

- `vice_alloc` in `usr/lib/internal/libvice.so` at 0xd0020b8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd0020b8-0xd002144 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xd0020e8 loads 4 bytes from ((a0 << 0x2) + sym(_vicefd)) +0x0.
  The `lw` at 0xd002108 loads 4 bytes from sym(_vicenoise) +0x0.
  The `jalr` at 0xd0020ec calls ioctl with a0=[((a0 << 0x2) + sym(_vicefd))], a1=0x76780016, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jalr` at 0xd002120 calls printf with a0=0xd004100, a1=?, a2=?, a3=?.
  The `bne` branch at 0xd0020fc targets 0xd002130, is taken when v0(=ret(ioctl)) != at(=-0x1), and falls through when v0(=ret(ioctl)) == at(=-0x1).
  The `beql` branch at 0xd00210c targets 0xd002134, is taken when t9(=[sym(_vicenoise)]) == 0, and falls through when t9(=[sym(_vicenoise)]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd002110 runs only when taken and is annulled on fall-through.
  The return at 0xd00213c has v0 = ret(ioctl).

- `vice_settlb` in `usr/lib/internal/libvice.so` at 0xd002144 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd002144-0xd0021fc (184 bytes).
  It occupies 184 bytes.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd002170, `sw` at 0xd002180, `sw` at 0xd00218c.
  The `lw` at 0xd0021a0 loads 4 bytes from ((a0 << 0x2) + sym(_vicefd)) +0x0.
  The `lw` at 0xd0021bc loads 4 bytes from sym(_vicenoise) +0x0.
  The `jalr` at 0xd0021a4 calls ioctl with a0=[((a0 << 0x2) + sym(_vicefd))], a1=0x76780004, a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xd0021d4 calls printf with a0=0xd004124, a1=a1 at entry (arg1), a2=a3 at entry (arg3), a3=?.
  The `bgez` branch at 0xd0021ac targets 0xd0021e8, is taken when v0(=ret(ioctl)) >= 0 (signed), and falls through when v0(=ret(ioctl)) < 0 (signed).
  The `beq` branch at 0xd0021c0 targets 0xd0021e0, is taken when t3(=[sym(_vicenoise)]) == 0, and falls through when t3(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd0021e0 targets 0xd0021ec and is always taken.
  The return at 0xd0021f4 has v0 = one of -0x1, 0x0.

- `vice_updatetlb` in `usr/lib/internal/libvice.so` at 0xd0021fc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd0021fc-0xd002284 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd002228 loads 4 bytes from ((a0 << 0x2) + sym(_vicefd)) +0x0.
  The `lw` at 0xd002248 loads 4 bytes from sym(_vicenoise) +0x0.
  The `jalr` at 0xd002230 calls ioctl with a0=[((a0 << 0x2) + sym(_vicefd))], a1=0x76780010, a2=0x0, a3=a3 at entry (arg3).
  The `jalr` at 0xd00225c calls printf with a0=0xd004150, a1=?, a2=?, a3=?.
  The `bne` branch at 0xd00223c targets 0xd002270, is taken when v0(=ret(ioctl)) != at(=-0x1), and falls through when v0(=ret(ioctl)) == at(=-0x1).
  The `beq` branch at 0xd00224c targets 0xd002268, is taken when t9(=[sym(_vicenoise)]) == 0, and falls through when t9(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd002268 targets 0xd002274 and is always taken.
  The return at 0xd00227c has v0 = one of -0x1, 0x0.

- `vice_mmap` in `usr/lib/internal/libvice.so` at 0xd002284 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd002284-0xd00233c (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0xd0022bc loads 4 bytes from ((a0 << 0x2) + sym(_vicefd)) +0x0.
  The `lw` at 0xd002300 loads 4 bytes from sym(_vicenoise) +0x0.
  The `jalr` at 0xd0022e4 calls mmap with a0=0x0, a1=(a2 << 0x10), a2=0x3, a3=0x1.
  The `jalr` at 0xd002318 calls printf with a0=0xd00416c, a1=?, a2=?, a3=?.
  The `bne` branch at 0xd0022f4 targets 0xd002328, is taken when v0(=ret(mmap)) != at(=-0x1), and falls through when v0(=ret(mmap)) == at(=-0x1).
  The `beql` branch at 0xd002304 targets 0xd00232c, is taken when t4(=[sym(_vicenoise)]) == 0, and falls through when t4(=[sym(_vicenoise)]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd002308 runs only when taken and is annulled on fall-through.
  The return at 0xd002334 has v0 = ret(mmap).

- `vice_munmap` in `usr/lib/internal/libvice.so` at 0xd00233c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd00233c-0xd0023b0 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd002374 loads 4 bytes from sym(_vicenoise) +0x0.
  The `jalr` at 0xd002360 calls munmap with a0=a1 at entry (arg1), a1=(a2 << 0x10), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd002388 calls printf with a0=0xd004184, a1=?, a2=?, a3=?.
  The `beq` branch at 0xd002368 targets 0xd00239c, is taken when v0(=ret(munmap)) == 0, and falls through when v0(=ret(munmap)) != 0.
  The `beq` branch at 0xd002378 targets 0xd002394, is taken when t6(=[sym(_vicenoise)]) == 0, and falls through when t6(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd002394 targets 0xd0023a0 and is always taken.
  The return at 0xd0023a8 has v0 = one of -0x1, 0x0.

- `vice_bcopyhto` in `usr/lib/internal/libvice.so` at 0xd0023b0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd0023b0-0xd002458 (168 bytes).
  It occupies 168 bytes.
  The `lh` at 0xd002414 loads 2 bytes from ?.
  The `jalr` at 0xd0023fc calls __assert with a0=0xd00419c, a1=0xd0041ac, a2=0x135, a3=a3 at entry (arg3).
  The `jalr` at 0xd002424 calls vice_piow with a0=0x2, a1=?, a2=?, a3=?.
  The `beq` branch at 0xd0023e0 targets 0xd002408, is taken when (a2 & 0x1) == 0, and falls through when (a2 & 0x1) != 0.
  The `beql` branch at 0xd002408 targets 0xd002444, is taken when s0(=a2) == 0, and falls through when s0(=a2) != 0; its branch-likely delay slot `lw ra,44(sp)` at 0xd00240c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd002438 targets 0xd002410, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The return at 0xd002450 has v0 = one of ?, ret(vice_piow).

- `vice_bcopywto` in `usr/lib/internal/libvice.so` at 0xd002458 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd002458-0xd002500 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0xd0024bc loads 4 bytes from ?.
  The `jalr` at 0xd0024a4 calls __assert with a0=0xd0041b8, a1=0xd0041c8, a2=0x13f, a3=a3 at entry (arg3).
  The `jalr` at 0xd0024cc calls vice_piow with a0=0x4, a1=?, a2=?, a3=?.
  The `beq` branch at 0xd002488 targets 0xd0024b0, is taken when (a2 & 0x3) == 0, and falls through when (a2 & 0x3) != 0.
  The `beql` branch at 0xd0024b0 targets 0xd0024ec, is taken when s0(=a2) == 0, and falls through when s0(=a2) != 0; its branch-likely delay slot `lw ra,44(sp)` at 0xd0024b4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd0024e0 targets 0xd0024b8, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The return at 0xd0024f8 has v0 = one of ?, ret(vice_piow).

- `vice_chip_init` in `usr/lib/internal/libvice.so` at 0xd002500 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd002500-0xd002508 (8 bytes).
  It occupies 8 bytes.
  The return at 0xd002500 has v0 = ?.

- `vice_file` in `usr/lib/internal/libvice.so` at 0xd002510 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd002510-0xd002740 (560 bytes).
  It occupies 560 bytes.
  The `lbu` at 0xd002534 loads 1 byte from abs 0xd004680.
  The `lw` at 0xd0025a0 loads 4 bytes from sym(_viceid) +0x0.
  The `lwl` at 0xd0025b4 loads 4 bytes from abs 0xd004208.
  The `lwr` at 0xd0025b8 loads 4 bytes from abs 0xd00420b.
  3 such `sw` accesses store 4 bytes to abs 0xd004680, including `sw` at 0xd0025bc, `sw` at 0xd002604, `sw` at 0xd002650.
  The `lwl` at 0xd0025c0 loads 4 bytes from abs 0xd00420c.
  The `lwr` at 0xd0025c4 loads 4 bytes from abs 0xd00420f.
  3 such `sw` accesses store 4 bytes to abs 0xd004684, including `sw` at 0xd0025c8, `sw` at 0xd002610, `sw` at 0xd00265c.
  The `lwl` at 0xd0025cc loads 4 bytes from abs 0xd004210.
  The `lwr` at 0xd0025d0 loads 4 bytes from abs 0xd004213.
  3 such `sw` accesses store 4 bytes to abs 0xd004688, including `sw` at 0xd0025d4, `sw` at 0xd00261c, `sw` at 0xd002668.
  The `lwl` at 0xd0025d8 loads 4 bytes from abs 0xd004214.
  The `lwr` at 0xd0025dc loads 4 bytes from abs 0xd004217.
  3 such `sw` accesses store 4 bytes to abs 0xd00468c, including `sw` at 0xd0025e4, `sw` at 0xd002628, `sw` at 0xd002674.
  The `lwl` at 0xd0025fc loads 4 bytes from abs 0xd004218.
  The `lwr` at 0xd002600 loads 4 bytes from abs 0xd00421b.
  The `lwl` at 0xd002608 loads 4 bytes from abs 0xd00421c.
  The `lwr` at 0xd00260c loads 4 bytes from abs 0xd00421f.
  The `lwl` at 0xd002614 loads 4 bytes from abs 0xd004220.
  The `lwr` at 0xd002618 loads 4 bytes from abs 0xd004223.
  The `lwl` at 0xd002620 loads 4 bytes from abs 0xd004224.
  The `lwr` at 0xd002624 loads 4 bytes from abs 0xd004227.
  The `lbu` at 0xd00262c loads 1 byte from abs 0xd004228.
  2 such `sb` accesses store 1 byte to abs 0xd004690, including `sb` at 0xd002630, `sb` at 0xd00267c.
  The `lbu` at 0xd002634 loads 1 byte from abs 0xd004229.
  2 such `sb` accesses store 1 byte to abs 0xd004691, including `sb` at 0xd00263c, `sb` at 0xd002684.
  The `lwl` at 0xd002648 loads 4 bytes from abs 0xd00422c.
  The `lwr` at 0xd00264c loads 4 bytes from abs 0xd00422f.
  The `lwl` at 0xd002654 loads 4 bytes from abs 0xd004230.
  The `lwr` at 0xd002658 loads 4 bytes from abs 0xd004233.
  The `lwl` at 0xd002660 loads 4 bytes from abs 0xd004234.
  The `lwr` at 0xd002664 loads 4 bytes from abs 0xd004237.
  The `lwl` at 0xd00266c loads 4 bytes from abs 0xd004238.
  The `lwr` at 0xd002670 loads 4 bytes from abs 0xd00423b.
  The `lbu` at 0xd002678 loads 1 byte from abs 0xd00423c.
  The `lbu` at 0xd002680 loads 1 byte from abs 0xd00423d.
  The `lbu` at 0xd002688 loads 1 byte from abs 0xd00423e.
  The `sb` at 0xd00268c stores 1 byte to abs 0xd004692.
  2 such `sw` accesses store 4 bytes to abs 0xd004780, including `sw` at 0xd0026b0, `sw` at 0xd0026d0.
  The `lbu` at 0xd0026b4 loads 1 byte from table(0xd00467f) +0x0.
  The `sb` at 0xd0026c8 stores 1 byte to table(0xd004680) +0x0.
  The `lw` at 0xd0026dc loads 4 bytes from abs 0xd004780.
  The `jalr` at 0xd00254c calls getenv with a0=0xd0041e0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd002568 calls strcpy with a0=0xd004680, a1=ret(getenv), a2=?, a3=?.
  The `jalr` at 0xd002588 calls fprintf with a0=sym(__iob)+32, a1=0xd0041e8, a2=0xd004680, a3=?.
  The `jalr` at 0xd002698 calls strlen with a0=0xd004680, a1=?, a2=?, a3=?.
  The `jalr` at 0xd0026e8 calls strcpy with a0=table(0xd004680), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xd0026fc calls getenv with a0=0xd004240, a1=?, a2=?, a3=?.
  The `jalr` at 0xd002720 calls fprintf with a0=sym(__iob)+32, a1=0xd004248, a2=0xd004680, a3=?.
  The `bne` branch at 0xd00253c targets 0xd0026d4, is taken when t6(=[0xd004680]:1) != 0, and falls through when t6(=[0xd004680]:1) == 0.
  The `beq` branch at 0xd002558 targets 0xd002598, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `beq` branch at 0xd002590 targets 0xd002690 and is always taken.
  The `bnel` branch at 0xd0025a4 targets 0xd0025ec, is taken when v0(=[sym(_viceid)]) != at(=0xe1), and falls through when v0(=[sym(_viceid)]) == at(=0xe1); its branch-likely delay slot `addiu at,zero,226` at 0xd0025a8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd0025e0 targets 0xd002690 and is always taken.
  The `bne` branch at 0xd0025ec targets 0xd002640, is taken when v0(=[sym(_viceid)]) != at(=0xe2), and falls through when v0(=[sym(_viceid)]) == at(=0xe2).
  The `beq` branch at 0xd002638 targets 0xd002690 and is always taken.
  The `beq` branch at 0xd0026bc targets 0xd0026d4, is taken when t6(=entry(0xd00467f)) == at(=0x2f), and falls through when t6(=entry(0xd00467f)) != at(=0x2f).
  The `beq` branch at 0xd002704 targets 0xd00272c, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The return at 0xd002738 has v0 = 0xd004680.
  The instructions from 0xd0025e8 to 0xd0025e8 are not reached by any path from the entry, and their branches are not listed.

- `dms_fifo_input` in `usr/lib/internal/libvice.so` at 0xd002740 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd002740-0xd002824 (228 bytes).
  It occupies 228 bytes.
  The `sw` at 0xd002760 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `sw` at 0xd002764 stores 4 bytes to a1 (arg1 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from sym(_vicenoise) +0x0, including `lw` at 0xd00278c, `lw` at 0xd0027e8.
  The `lw` at 0xd0027cc loads 4 bytes from ((a0 << 0x2) + sym(_vicefd)) +0x0.
  The `lw` at 0xd0027d8 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `jalr` at 0xd002774 calls dmFifoCreate with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd0027a0 calls printf with a0=0xd004250, a1=?, a2=?, a3=a1 at entry (arg1).
  The `jalr` at 0xd0027d4 calls ioctl with a0=[((a0 << 0x2) + sym(_vicefd))], a1=0x7678000c, a2=[a1], a3=a1 at entry (arg1).
  The `jalr` at 0xd0027fc calls printf with a0=0xd004264, a1=?, a2=?, a3=?.
  The `beq` branch at 0xd002780 targets 0xd0027b4, is taken when v0(=ret(dmFifoCreate)) == 0, and falls through when v0(=ret(dmFifoCreate)) != 0.
  The `beq` branch at 0xd002790 targets 0xd0027ac, is taken when t7(=[sym(_vicenoise)]) == 0, and falls through when t7(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd0027ac targets 0xd002814 and is always taken.
  The `bgez` branch at 0xd0027dc targets 0xd002810, is taken when v0(=ret(ioctl)) >= 0 (signed), and falls through when v0(=ret(ioctl)) < 0 (signed).
  The `beq` branch at 0xd0027ec targets 0xd002808, is taken when t2(=[sym(_vicenoise)]) == 0, and falls through when t2(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd002808 targets 0xd002814 and is always taken.
  The return at 0xd00281c has v0 = one of -0x1, 0x0.

- `dms_fifo_output` in `usr/lib/internal/libvice.so` at 0xd002824 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd002824-0xd003e10 (5612 bytes).
  It occupies 5612 bytes.
  The `sw` at 0xd002844 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `sw` at 0xd002848 stores 4 bytes to a1 (arg1 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from sym(_vicenoise) +0x0, including `lw` at 0xd002870, `lw` at 0xd0028d4.
  The `lw` at 0xd0028b0 loads 4 bytes from ((a0 << 0x2) + sym(_vicefd)) +0x0.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0xd0028b4, `lw` at 0xd002900.
  The `jalr` at 0xd002858 calls dmFifoCreate with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd002884 calls printf with a0=0xd004270, a1=?, a2=?, a3=a1 at entry (arg1).
  The `jalr` at 0xd0028bc calls ioctl with a0=[((a0 << 0x2) + sym(_vicefd))], a1=0x7678000f, a2=[a1], a3=a1 at entry (arg1).
  The `jalr` at 0xd0028e8 calls printf with a0=0xd004284, a1=?, a2=?, a3=a1 at entry (arg1).
  The `jalr` at 0xd002908 calls dmFifoFd with a0=[a1], a1=sp-4, a2=?, a3=a1 at entry (arg1).
  The `beq` branch at 0xd002864 targets 0xd002898, is taken when v0(=ret(dmFifoCreate)) == 0, and falls through when v0(=ret(dmFifoCreate)) != 0.
  The `beq` branch at 0xd002874 targets 0xd002890, is taken when t7(=[sym(_vicenoise)]) == 0, and falls through when t7(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd002890 targets 0xd002918 and is always taken.
  The `bgez` branch at 0xd0028c8 targets 0xd0028fc, is taken when v0(=ret(ioctl)) >= 0 (signed), and falls through when v0(=ret(ioctl)) < 0 (signed).
  The `beq` branch at 0xd0028d8 targets 0xd0028f4, is taken when t2(=[sym(_vicenoise)]) == 0, and falls through when t2(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd0028f4 targets 0xd002918 and is always taken.
  The return at 0xd002920 has v0 = one of -0x1, ?.
  The instructions from 0xd002928 to 0xd003e0c are not reached by any path from the entry, and their branches are not listed.

- `vice_event_init` in `usr/lib/internal/libvice.so` at 0xd002928 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd002928-0xd002998 (112 bytes).
  It occupies 112 bytes.
  The `jalr` at 0xd002950 calls dms_fifo_input [0xd002740] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a3 at entry (arg3), a3=a3 at entry (arg3).
  The `jalr` at 0xd00297c calls dms_fifo_output [0xd002824] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The `bne` branch at 0xd00295c targets 0xd00296c, is taken when v0(=ret(dms_fifo_input)) != at(=-0x1), and falls through when v0(=ret(dms_fifo_input)) == at(=-0x1).
  The `beq` branch at 0xd002964 targets 0xd002988 and is always taken.
  The return at 0xd002990 has v0 = one of -0x1, ret(dms_fifo_output).

- `vice_event_uninit` in `usr/lib/internal/libvice.so` at 0xd002998 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd002998-0xd002a34 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xd0029c0 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xd0029f8 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `jalr` at 0xd0029bc calls dmFifoDetach with a0=[a1], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd0029e0 calls fprintf with a0=sym(__iob)+32, a1=0xd004290, a2=?, a3=?.
  The `jalr` at 0xd0029f4 calls dmFifoDetach with a0=[a2], a1=?, a2=?, a3=?.
  The `jalr` at 0xd002a18 calls fprintf with a0=sym(__iob)+32, a1=0xd0042ac, a2=?, a3=?.
  The `bne` branch at 0xd0029c8 targets 0xd0029ec, is taken when v0(=ret(dmFifoDetach)) != at(=-0x1), and falls through when v0(=ret(dmFifoDetach)) == at(=-0x1).
  The `bne` branch at 0xd002a00 targets 0xd002a24, is taken when v0(=ret(dmFifoDetach)) != at(=-0x1), and falls through when v0(=ret(dmFifoDetach)) == at(=-0x1).
  The return at 0xd002a2c has v0 = one of ret(dmFifoDetach), ret(fprintf).

- `vice_event_start` in `usr/lib/internal/libvice.so` at 0xd002a34 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd002a34-0xd002ab8 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xd002a64 loads 4 bytes from ((a0 << 0x2) + sym(_vicefd)) +0x0.
  The `lw` at 0xd002a7c loads 4 bytes from sym(_vicenoise) +0x0.
  The `jalr` at 0xd002a68 calls ioctl with a0=[((a0 << 0x2) + sym(_vicefd))], a1=0x7678000d, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jalr` at 0xd002a90 calls printf with a0=0xd0042c8, a1=?, a2=?, a3=?.
  The `bgez` branch at 0xd002a70 targets 0xd002aa4, is taken when v0(=ret(ioctl)) >= 0 (signed), and falls through when v0(=ret(ioctl)) < 0 (signed).
  The `beq` branch at 0xd002a80 targets 0xd002a9c, is taken when t9(=[sym(_vicenoise)]) == 0, and falls through when t9(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd002a9c targets 0xd002aa8 and is always taken.
  The return at 0xd002ab0 has v0 = one of -0x1, 0x0.

- `vice_dms_geterrs` in `usr/lib/internal/libvice.so` at 0xd002ab8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd002ab8-0xd002b08 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xd002ae4 loads 4 bytes from ((a0 << 0x2) + sym(_vicefd)) +0x0.
  The `jalr` at 0xd002aec calls ioctl with a0=[((a0 << 0x2) + sym(_vicefd))], a1=0x7678000b, a2=0x0, a3=a3 at entry (arg3).
  The return at 0xd002b00 has v0 = ret(ioctl).

- `vice_setetc` in `usr/lib/internal/libvice.so` at 0xd002b10 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd002b10-0xd002c4c (316 bytes).
  It occupies 316 bytes.
  The `lw` at 0xd002b3c loads 4 bytes from ((a0 << 0x2) + sym(_etcp)) +0x0.
  The `lw` at 0xd002b88 loads 4 bytes from ((a0 << 0x2) + sym(_etcid)) +0x0.
  The `sw` at 0xd002c2c stores 4 bytes to ((a0 << 0x2) + sym(_etcp)) +0x0.
  The `sw` at 0xd002c38 stores 4 bytes to ((a0 << 0x2) + sym(_etcid)) +0x0.
  The `jalr` at 0xd002b6c calls __assert with a0=0xd0042f0, a1=0xd004300, a2=0x24, a3=a3 at entry (arg3).
  The `jalr` at 0xd002ba8 calls __assert with a0=0xd00430c, a1=0xd00431c, a2=0x25, a3=?.
  The `jalr` at 0xd002bc0 calls vice_alloc with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=?.
  The `jalr` at 0xd002be0 calls vice_mmap with a0=a0 at entry (arg0), a1=ret(vice_alloc), a2=0x1, a3=?.
  The `jalr` at 0xd002c08 calls vice_settlb with a0=a0 at entry (arg0), a1=0x7f, a2=ret(vice_alloc), a3=0x1.
  The `beq` branch at 0xd002b40 targets 0xd002b50, is taken when v0(=[((a0 << 0x2) + sym(_etcp))]) == 0, and falls through when v0(=[((a0 << 0x2) + sym(_etcp))]) != 0.
  The `beq` branch at 0xd002b48 targets 0xd002c3c and is always taken.
  The `beq` branch at 0xd002b50 targets 0xd002b7c, is taken when v0(=[((a0 << 0x2) + sym(_etcp))]) == 0, and falls through when v0(=[((a0 << 0x2) + sym(_etcp))]) != 0.
  The `beq` branch at 0xd002b8c targets 0xd002bb4, is taken when t2(=[((a0 << 0x2) + sym(_etcid))]) == 0, and falls through when t2(=[((a0 << 0x2) + sym(_etcid))]) != 0.
  The `beq` branch at 0xd002c10 targets 0xd002c20, is taken when v0(=ret(vice_settlb)) == 0, and falls through when v0(=ret(vice_settlb)) != 0.
  The `beq` branch at 0xd002c18 targets 0xd002c3c and is always taken.
  The return at 0xd002c44 has v0 = one of -0x1, 0x0.

- `vice_msp_code_to_etc` in `usr/lib/internal/libvice.so` at 0xd002c4c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd002c4c-0xd002d4c (256 bytes).
  It occupies 256 bytes.
  3 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(_etcp)) +0x0, including `lw` at 0xd002c68, `lw` at 0xd002cac, `lw` at 0xd002d1c.
  The `sh` at 0xd002cc8 stores 2 bytes to table(0xb040) +0x0.
  The `sh` at 0xd002cd4 stores 2 bytes to table(0xb042) +0x0.
  The `sh` at 0xd002cdc stores 2 bytes to table(0xb046) +0x0.
  The `sh` at 0xd002ce8 stores 2 bytes to table(0xb044) +0x0.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd002cf4, `sw` at 0xd002cfc, `sw` at 0xd002d04.
  The `jalr` at 0xd002c9c calls __assert with a0=0xd004328, a1=0xd004334, a2=0x3d, a3=a3 at entry (arg3).
  The `jalr` at 0xd002d30 calls bcopy with a0=?, a1=?, a2=a3 at entry (arg3), a3=?.
  The `bne` branch at 0xd002c7c targets 0xd002cb0, is taken when v1(=[((a0 << 0x2) + sym(_etcp))]) != 0, and falls through when v1(=[((a0 << 0x2) + sym(_etcp))]) == 0.
  The `bne` branch at 0xd002ce4 targets 0xd002d0c, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The return at 0xd002d44 has v0 = a3.

- `vice_msp_sym_to_etc` in `usr/lib/internal/libvice.so` at 0xd002d4c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd002d4c-0xd002de8 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xd002d68 loads 4 bytes from ((a0 << 0x2) + sym(_etcp)) +0x0.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd002d90, `lw` at 0xd002db0, `lw` at 0xd002dc0.
  5 such `sh` accesses store 2 bytes to ?, including `sh` at 0xd002da4, `sh` at 0xd002dbc, `sh` at 0xd002dc8.
  The `blez` branch at 0xd002d7c targets 0xd002de0, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `beq` branch at 0xd002d88 targets 0xd002db0, is taken when (a2 & 0x3) == 0, and falls through when (a2 & 0x3) != 0.
  The `bne` branch at 0xd002da0 targets 0xd002d90, is taken when a0(?) != v1(?), and falls through when a0(?) == v1(?).
  The `beq` branch at 0xd002da8 targets 0xd002de0, is taken when v1(?) == a2, and falls through when v1(?) != a2.
  The `bne` branch at 0xd002dd8 targets 0xd002db0, is taken when v1(?) != a2, and falls through when v1(?) == a2.
  The return at 0xd002de0 has v0 = one of ([((a0 << 0x2) + sym(_etcp))] + (a3 << 0x4))+45128, ?.

- `vice_mload_msp_code` in `usr/lib/internal/libvice.so` at 0xd002de8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd002de8-0xd002e9c (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0xd002e10 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xd002e20 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xd002e2c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0xd002e3c loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `jalr` at 0xd002e40 calls vice_msp_sym_to_etc with a0=a0 at entry (arg0), a1=a1+16, a2=[a1+12], a3=?.
  The `jalr` at 0xd002e80 calls vice_msp_code_to_etc with a0=a0 at entry (arg0), a1=[a1], a2=[a1+4], a3=([a1+8] << 0x2).
  The return at 0xd002e94 has v0 = ret(vice_msp_code_to_etc).

- `vice_load_msp_code` in `usr/lib/internal/libvice.so` at 0xd002e9c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd002e9c-0xd002f68 (204 bytes).
  It occupies 204 bytes.
  The `jalr` at 0xd002ed0 calls __vu_mapfileandreturnfd with a0=a1 at entry (arg1), a1=sp-8, a2=sp-12, a3=a3 at entry (arg3).
  The `jalr` at 0xd002eec calls close with a0=?, a1=ret(__vu_mapfileandreturnfd), a2=?, a3=?.
  The `jalr` at 0xd002f18 calls vice_mload_msp_code with a0=a0 at entry (arg0), a1=ret(__vu_mapfileandreturnfd), a2=?, a3=a2 at entry (arg2).
  The `jalr` at 0xd002f34 calls munmap with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd002f48 calls close with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0xd002edc targets 0xd002f00, is taken when v0(=ret(__vu_mapfileandreturnfd)) != 0, and falls through when v0(=ret(__vu_mapfileandreturnfd)) == 0.
  The `beq` branch at 0xd002ef8 targets 0xd002f58 and is always taken.
  The return at 0xd002f60 has v0 = one of -0x1, ret(vice_mload_msp_code).

- `vice_loadmspcode` in `usr/lib/internal/libvice.so` at 0xd002f68 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd002f68-0xd002ff0 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd002f8c loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lw` at 0xd002f90 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0xd002fdc loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `jalr` at 0xd002fcc calls bcopy with a0=(([a1+12] << 0x2) + a1)+16, a1=a2 at entry (arg2), a2=([a1+8] << 0x2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd002fa4 targets 0xd002fb8, is taken when a3 == t8(=(([a1+8] << 0x2) + ([a1+12] << 0x2))+16), and falls through when a3 != t8(=(([a1+8] << 0x2) + ([a1+12] << 0x2))+16); its branch-likely delay slot `lw t9,36(sp)` at 0xd002fa8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd002fac targets 0xd002fe0 and is always taken.
  The return at 0xd002fe8 has v0 = one of -0x1, [a1].
  The instructions from 0xd002fb4 to 0xd002fb4 are not reached by any path from the entry, and their branches are not listed.

- `vice_load_bsp_code` in `usr/lib/internal/libvice.so` at 0xd002ff0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd002ff0-0xd00305c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xd003024 loads 4 bytes from ((a0 << 0x2) + sym(_etcp)) +0x0.
  The `sw` at 0xd003044 stores 4 bytes to a2 (arg2 at entry) +0x30.
  The `sw` at 0xd003048 stores 4 bytes to a2 (arg2 at entry) +0x2c.
  The `jalr` at 0xd003034 calls __vu_getcode with a0=a1 at entry (arg1), a1=[((a0 << 0x2) + sym(_etcp))]+53248, a2=0x1000, a3=a3 at entry (arg3).
  The return at 0xd003054 has v0 = ret(__vu_getcode).

- `vice_load_bsp_table` in `usr/lib/internal/libvice.so` at 0xd00305c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd00305c-0xd0030c4 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xd003090 loads 4 bytes from ((a0 << 0x2) + sym(_etcp)) +0x0.
  The `sw` at 0xd0030b0 stores 4 bytes to a2 (arg2 at entry) +0x34.
  The `jalr` at 0xd0030a0 calls __vu_getcode with a0=a1 at entry (arg1), a1=[((a0 << 0x2) + sym(_etcp))]+57344, a2=0x1400, a3=a3 at entry (arg3).
  The return at 0xd0030bc has v0 = ret(__vu_getcode).

- `_vice_unit_find` in `usr/lib/internal/libvice.so` at 0xd0030d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd0030d0-0xd003150 (128 bytes).
  It occupies 128 bytes.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd0030e8, `lw` at 0xd0030f0, `lw` at 0xd003104.
  The `bnel` branch at 0xd0030ec targets 0xd003100, is taken when t6(?) != 0, and falls through when t6(?) == 0; its branch-likely delay slot `lw t7,4(v0)` at 0xd0030f0 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd003100 targets 0xd003114, is taken when t7(?) != 0, and falls through when t7(?) == 0; its branch-likely delay slot `lw t8,8(v0)` at 0xd003104 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd003114 targets 0xd003128, is taken when t8(?) != 0, and falls through when t8(?) == 0; its branch-likely delay slot `lw t9,12(v0)` at 0xd003118 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd003128 targets 0xd00313c, is taken when t9(?) != 0, and falls through when t9(?) == 0; its branch-likely delay slot `addiu v1,v1,4` at 0xd00312c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd00313c targets 0xd0030e8, is taken when v1(?) != a0(=0x40), and falls through when v1(?) == a0(=0x40).
  The return at 0xd0030f4 has v0 = ?.
  The return at 0xd003108 has v0 = ?.
  The return at 0xd00311c has v0 = ?.
  The return at 0xd003130 has v0 = ?.
  The return at 0xd003148 has v0 = -0x1.
  The instructions from 0xd0030fc to 0xd0030fc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd003110 to 0xd003110 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd003124 to 0xd003124 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd003138 to 0xd003138 are not reached by any path from the entry, and their branches are not listed.

- `_vice_unit_unfind` in `usr/lib/internal/libvice.so` at 0xd003150 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd003150-0xd003170 (32 bytes).
  It occupies 32 bytes.
  The `sw` at 0xd00316c stores 4 bytes to ((a0 << 0x2) + sym(_vicefd)) +0x0.
  The return at 0xd003168 has v0 = ?.

- `vice_etc_dramp` in `usr/lib/internal/libvice.so` at 0xd003170 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd003170-0xd003198 (40 bytes).
  It occupies 40 bytes.
  The `lw` at 0xd00318c loads 4 bytes from ((a0 << 0x2) + sym(_etcp)) +0x0.
  The return at 0xd003190 has v0 = [((a0 << 0x2) + sym(_etcp))]+45056.

- `vice_sequence` in `usr/lib/internal/libvice.so` at 0xd003198 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd003198-0xd0031e8 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xd0031c8 loads 4 bytes from ((a0 << 0x2) + sym(_vicefd)) +0x0.
  The `jalr` at 0xd0031cc calls ioctl with a0=[((a0 << 0x2) + sym(_vicefd))], a1=0x7678001e, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The return at 0xd0031e0 has v0 = ret(ioctl).

- `vice_put_vaddr` in `usr/lib/internal/libvice.so` at 0xd0031e8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd0031e8-0xd003238 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xd003218 loads 4 bytes from ((a0 << 0x2) + sym(_vicefd)) +0x0.
  The `jalr` at 0xd00321c calls ioctl with a0=[((a0 << 0x2) + sym(_vicefd))], a1=0x76780020, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The return at 0xd003230 has v0 = ret(ioctl).

- `vice_put` in `usr/lib/internal/libvice.so` at 0xd003238 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd003238-0xd003288 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xd003268 loads 4 bytes from ((a0 << 0x2) + sym(_vicefd)) +0x0.
  The `jalr` at 0xd00326c calls ioctl with a0=[((a0 << 0x2) + sym(_vicefd))], a1=0x76780003, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The return at 0xd003280 has v0 = ret(ioctl).

- `__vu_getcode` in `usr/lib/internal/libvice.so` at 0xd003290 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd003290-0xd003374 (228 bytes).
  It occupies 228 bytes.
  The `lw` at 0xd00333c loads 4 bytes from sym(_vicenoise) +0x0.
  The `jalr` at 0xd0032bc calls stat with a0=a0 at entry (arg0), a1=sp-144, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd0032dc calls open with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0xd003300 calls read with a0=ret(open), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd003318 calls close with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd003354 calls printf with a0=0xd004340, a1=a0 at entry (arg0), a2=?, a3=?.
  The `bne` branch at 0xd0032ac targets 0xd0032d0, is taken when a2 != 0, and falls through when a2 == 0.
  The `bltz` branch at 0xd0032c4 targets 0xd003338, is taken when v0(=ret(stat)) < 0 (signed), and falls through when v0(=ret(stat)) >= 0 (signed).
  The `bltz` branch at 0xd0032ec targets 0xd003338, is taken when v0(=ret(open)) < 0 (signed), and falls through when v0(=ret(open)) >= 0 (signed).
  The `blez` branch at 0xd003328 targets 0xd003338, is taken when v1(?) <= 0 (signed), and falls through when v1(?) > 0 (signed).
  The `beq` branch at 0xd003330 targets 0xd003364 and is always taken.
  The `beql` branch at 0xd003340 targets 0xd003364, is taken when t6(=[sym(_vicenoise)]) == 0, and falls through when t6(=[sym(_vicenoise)]) != 0; its branch-likely delay slot `addiu v0,zero,-1` at 0xd003344 runs only when taken and is annulled on fall-through.
  The return at 0xd00336c has v0 = one of ?, -0x1.

- `__vu_readfile` in `usr/lib/internal/libvice.so` at 0xd003374 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd003374-0xd0033a8 (52 bytes).
  It occupies 52 bytes.
  The `jalr` at 0xd00338c calls __vu_getcode with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd0033a0 has v0 = ret(__vu_getcode).

- `__vu_readstdin` in `usr/lib/internal/libvice.so` at 0xd0033a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd0033a8-0xd003480 (216 bytes).
  It occupies 216 bytes.
  2 such `lw` accesses load 4 bytes from sym(_vicenoise) +0x0, including `lw` at 0xd0033fc, `lw` at 0xd003444.
  The `jalr` at 0xd0033e8 calls read with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0xd003410 calls printf with a0=0xd00435c, a1=?, a2=?, a3=?.
  The `jalr` at 0xd003458 calls printf with a0=0xd004378, a1=?, a2=?, a3=?.
  The `beq` branch at 0xd0033d4 targets 0xd003438, is taken when a1 == 0, and falls through when a1 != 0.
  The `bgez` branch at 0xd0033f0 targets 0xd003424, is taken when v0(=ret(read)) >= 0 (signed), and falls through when v0(=ret(read)) < 0 (signed).
  The `beq` branch at 0xd003400 targets 0xd00341c, is taken when t6(=[sym(_vicenoise)]) == 0, and falls through when t6(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd00341c targets 0xd003468 and is always taken.
  The `beq` branch at 0xd003424 targets 0xd003438, is taken when v0(=ret(read)) == 0, and falls through when v0(=ret(read)) != 0.
  The `bne` branch at 0xd003430 targets 0xd0033dc, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beql` branch at 0xd003438 targets 0xd003468, is taken when s0(?) == 0, and falls through when s0(?) != 0; its branch-likely delay slot `or v0,s2,zero` at 0xd00343c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd003448 targets 0xd003468, is taken when t7(=[sym(_vicenoise)]) == 0, and falls through when t7(=[sym(_vicenoise)]) != 0; its branch-likely delay slot `or v0,s2,zero` at 0xd00344c runs only when taken and is annulled on fall-through.
  The return at 0xd003478 has v0 = one of -0x1, ?.

- `__vu_writefile` in `usr/lib/internal/libvice.so` at 0xd003480 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd003480-0xd003560 (224 bytes).
  It occupies 224 bytes.
  2 such `lw` accesses load 4 bytes from sym(_vicenoise) +0x0, including `lw` at 0xd0034c0, `lw` at 0xd003510.
  The `jalr` at 0xd0034a8 calls creat with a0=a0 at entry (arg0), a1=0x1a4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd0034d8 calls printf with a0=0xd0043a4, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xd0034f8 calls write with a0=ret(creat), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xd003528 calls printf with a0=0xd0043bc, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xd003540 calls close with a0=ret(creat), a1=?, a2=?, a3=?.
  The `bgez` branch at 0xd0034b4 targets 0xd0034ec, is taken when v0(=ret(creat)) >= 0 (signed), and falls through when v0(=ret(creat)) < 0 (signed).
  The `beq` branch at 0xd0034c4 targets 0xd0034e4, is taken when t6(=[sym(_vicenoise)]) == 0, and falls through when t6(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd0034e4 targets 0xd003550 and is always taken.
  The `bgez` branch at 0xd003504 targets 0xd00353c, is taken when v0(=ret(write)) >= 0 (signed), and falls through when v0(=ret(write)) < 0 (signed).
  The `beq` branch at 0xd003514 targets 0xd003534, is taken when t7(=[sym(_vicenoise)]) == 0, and falls through when t7(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd003534 targets 0xd003550 and is always taken.
  The return at 0xd003558 has v0 = one of -0x1, 0x0.

- `__vu_appendfile` in `usr/lib/internal/libvice.so` at 0xd003560 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd003560-0xd003668 (264 bytes).
  It occupies 264 bytes.
  2 such `lw` accesses load 4 bytes from sym(_vicenoise) +0x0, including `lw` at 0xd0035a4, `lw` at 0xd0035fc.
  The `jalr` at 0xd00358c calls open with a0=a0 at entry (arg0), a1=0x109, a2=0x1ed, a3=a3 at entry (arg3).
  The `jalr` at 0xd0035bc calls printf with a0=0xd0043d4, a1=a0 at entry (arg0), a2=?, a3=ret(open).
  The `jalr` at 0xd0035e0 calls write with a0=ret(open), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(open).
  The `jalr` at 0xd003614 calls printf with a0=0xd0043ec, a1=a0 at entry (arg0), a2=?, a3=ret(open).
  The `jalr` at 0xd00362c calls close with a0=ret(open), a1=?, a2=?, a3=ret(open).
  The `jalr` at 0xd003648 calls close with a0=ret(open), a1=?, a2=?, a3=ret(open).
  The `bgez` branch at 0xd003598 targets 0xd0035d0, is taken when v0(=ret(open)) >= 0 (signed), and falls through when v0(=ret(open)) < 0 (signed).
  The `beq` branch at 0xd0035a8 targets 0xd0035c8, is taken when t6(=[sym(_vicenoise)]) == 0, and falls through when t6(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd0035c8 targets 0xd003658 and is always taken.
  The `bgez` branch at 0xd0035ec targets 0xd003640, is taken when v0(=ret(write)) >= 0 (signed), and falls through when v0(=ret(write)) < 0 (signed).
  The `beq` branch at 0xd003600 targets 0xd003624, is taken when t7(=[sym(_vicenoise)]) == 0, and falls through when t7(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd003638 targets 0xd003658 and is always taken.
  The return at 0xd003660 has v0 = one of -0x1, 0x0.

- `__vu_mapfileandreturnfd` in `usr/lib/internal/libvice.so` at 0xd003668 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd003668-0xd0037a8 (320 bytes).
  It occupies 320 bytes.
  The `sw` at 0xd0036a4 stores 4 bytes to a2 (arg2 at entry) +0x0.
  3 such `lw` accesses load 4 bytes from sym(_vicenoise) +0x0, including `lw` at 0xd0036ac, `lw` at 0xd0036f8, `lw` at 0xd003768.
  The `sw` at 0xd003734 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lw` at 0xd003744 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `jalr` at 0xd003690 calls open with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd0036c4 calls printf with a0=0xd004404, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xd0036e4 calls stat with a0=a0 at entry (arg0), a1=sp-140, a2=?, a3=?.
  The `jalr` at 0xd003710 calls printf with a0=0xd004424, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xd00374c calls mmap with a0=0x0, a1=?, a2=0x1, a3=0x2.
  The `jalr` at 0xd003780 calls printf with a0=0xd004444, a1=a0 at entry (arg0), a2=?, a3=?.
  The `bgez` branch at 0xd0036a0 targets 0xd0036d8, is taken when v0(=ret(open)) >= 0 (signed), and falls through when v0(=ret(open)) < 0 (signed).
  The `beq` branch at 0xd0036b0 targets 0xd0036d0, is taken when t7(=[sym(_vicenoise)]) == 0, and falls through when t7(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd0036d0 targets 0xd003798 and is always taken.
  The `bgez` branch at 0xd0036ec targets 0xd003724, is taken when v0(=ret(stat)) >= 0 (signed), and falls through when v0(=ret(stat)) < 0 (signed).
  The `beq` branch at 0xd0036fc targets 0xd00371c, is taken when t8(=[sym(_vicenoise)]) == 0, and falls through when t8(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd00371c targets 0xd003798 and is always taken.
  The `bne` branch at 0xd00375c targets 0xd003794, is taken when v0(=ret(mmap)) != at(=-0x1), and falls through when v0(=ret(mmap)) == at(=-0x1).
  The `beq` branch at 0xd00376c targets 0xd00378c, is taken when t2(=[sym(_vicenoise)]) == 0, and falls through when t2(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd00378c targets 0xd003798 and is always taken.
  The return at 0xd0037a0 has v0 = one of 0x0, ret(mmap).

- `__vu_mapfile` in `usr/lib/internal/libvice.so` at 0xd0037a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd0037a8-0xd0038f0 (328 bytes).
  It occupies 328 bytes.
  3 such `lw` accesses load 4 bytes from sym(_vicenoise) +0x0, including `lw` at 0xd0037e8, `lw` at 0xd003848, `lw` at 0xd0038b0.
  The `lw` at 0xd003814 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `sw` at 0xd003878 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0xd0037cc calls open with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd003800 calls printf with a0=0xd004464, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xd00382c calls stat with a0=a0 at entry (arg0), a1=sp-144, a2=?, a3=?.
  The `jalr` at 0xd003860 calls printf with a0=0xd00447c, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xd003894 calls mmap with a0=0x0, a1=?, a2=0x1, a3=0x2.
  The `jalr` at 0xd0038c8 calls printf with a0=0xd004494, a1=a0 at entry (arg0), a2=?, a3=?.
  The `bgez` branch at 0xd0037dc targets 0xd003814, is taken when v0(=ret(open)) >= 0 (signed), and falls through when v0(=ret(open)) < 0 (signed).
  The `beq` branch at 0xd0037ec targets 0xd00380c, is taken when t6(=[sym(_vicenoise)]) == 0, and falls through when t6(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd00380c targets 0xd0038e0 and is always taken.
  The `bne` branch at 0xd003818 targets 0xd00387c, is taken when v0(=[a1]) != 0, and falls through when v0(=[a1]) == 0.
  The `bgez` branch at 0xd00383c targets 0xd003874, is taken when v0(=ret(stat)) >= 0 (signed), and falls through when v0(=ret(stat)) < 0 (signed).
  The `beq` branch at 0xd00384c targets 0xd00386c, is taken when t7(=[sym(_vicenoise)]) == 0, and falls through when t7(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd00386c targets 0xd0038e0 and is always taken.
  The `bne` branch at 0xd0038a4 targets 0xd0038dc, is taken when v0(=ret(mmap)) != at(=-0x1), and falls through when v0(=ret(mmap)) == at(=-0x1).
  The `beq` branch at 0xd0038b4 targets 0xd0038d4, is taken when t9(=[sym(_vicenoise)]) == 0, and falls through when t9(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd0038d4 targets 0xd0038e0 and is always taken.
  The return at 0xd0038e8 has v0 = one of 0x0, ret(mmap).

- `vice_dmbuf_settlb` in `usr/lib/internal/libvice.so` at 0xd0038f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd0038f0-0xd0039b8 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xd003928 loads 4 bytes from ret(_dmBufferGetDmsEvent) +0x10.
  The `lw` at 0xd00395c loads 4 bytes from ((a0 << 0x2) + sym(_vicefd)) +0x0.
  The `lw` at 0xd00397c loads 4 bytes from sym(_vicenoise) +0x0.
  The `jalr` at 0xd003918 calls _dmBufferGetDmsEvent with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd003964 calls ioctl with a0=[((a0 << 0x2) + sym(_vicefd))], a1=0x76780017, a2=sp-16, a3=?.
  The `jalr` at 0xd003990 calls printf with a0=0xd0044b0, a1=?, a2=?, a3=?.
  The `bgez` branch at 0xd003970 targets 0xd0039a4, is taken when v0(=ret(ioctl)) >= 0 (signed), and falls through when v0(=ret(ioctl)) < 0 (signed).
  The `beq` branch at 0xd003980 targets 0xd00399c, is taken when t4(=[sym(_vicenoise)]) == 0, and falls through when t4(=[sym(_vicenoise)]) != 0.
  The `beq` branch at 0xd00399c targets 0xd0039a8 and is always taken.
  The return at 0xd0039b0 has v0 = one of -0x1, ret(ioctl).

- `vice_dmbuf_requirements` in `usr/lib/internal/libvice.so` at 0xd0039b8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd0039b8-0xd003a5c (164 bytes).
  It occupies 164 bytes.
  The `jalr` at 0xd0039e0 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0xd0044d4, a2=0x1, a3=a3 at entry (arg3).
  The `jalr` at 0xd003a08 calls dmParamsSetEnum with a0=a0 at entry (arg0), a1=0xd0044e4, a2=0x0, a3=?.
  The `jalr` at 0xd003a30 calls dmParamsSetInt with a0=a0 at entry (arg0), a1=0xd0044f4, a2=0x10000, a3=?.
  The `beq` branch at 0xd0039e8 targets 0xd0039f8, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0xd0039f0 targets 0xd003a4c and is always taken.
  The `beq` branch at 0xd003a10 targets 0xd003a20, is taken when v0(=ret(dmParamsSetEnum)) == 0, and falls through when v0(=ret(dmParamsSetEnum)) != 0.
  The `beq` branch at 0xd003a18 targets 0xd003a4c and is always taken.
  The `beq` branch at 0xd003a38 targets 0xd003a48, is taken when v0(=ret(dmParamsSetInt)) == 0, and falls through when v0(=ret(dmParamsSetInt)) != 0.
  The `beq` branch at 0xd003a40 targets 0xd003a4c and is always taken.
  The return at 0xd003a54 has v0 = one of -0x1, 0x0.

- `vice_dmbuf_outpool` in `usr/lib/internal/libvice.so` at 0xd003a5c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd003a5c-0xd003ad8 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd003aa0 loads 4 bytes from ((a0 << 0x2) + sym(_vicefd)) +0x0.
  The `lw` at 0xd003aa8 loads 4 bytes from ret(_dmBufferGetDmsPool) +0x18.
  The `jalr` at 0xd003a7c calls _dmBufferGetDmsPool with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd003aac calls ioctl with a0=[((a0 << 0x2) + sym(_vicefd))], a1=0x7678000e, a2=[ret(_dmBufferGetDmsPool)+24], a3=?.
  The `bgez` branch at 0xd003ab4 targets 0xd003ac4, is taken when v0(=ret(ioctl)) >= 0 (signed), and falls through when v0(=ret(ioctl)) < 0 (signed).
  The `beq` branch at 0xd003abc targets 0xd003ac8 and is always taken.
  The return at 0xd003ad0 has v0 = one of -0x1, 0x0.

- `vice_dmbuf_send` in `usr/lib/internal/libvice.so` at 0xd003ad8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd003ad8-0xd003bb0 (216 bytes).
  It occupies 216 bytes.
  The `sw` at 0xd003b3c stores 4 bytes to ret(_dmBufferGetDmsEvent) +0x4.
  The `sw` at 0xd003b40 stores 4 bytes to ret(_dmBufferGetDmsEvent) +0x8.
  The `lw` at 0xd003b8c loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `jalr` at 0xd003b24 calls _dmBufferGetDmsEvent with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd003b50 calls dmBufferGetUSTMSCpair with a0=ret(_dmBufferGetDmsEvent)+24, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd003b78 calls bcopy with a0=a3 at entry (arg3), a1=ret(_dmBufferGetDmsEvent)+128, a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xd003b94 calls dmFifoEnq with a0=[a2], a1=ret(_dmBufferGetDmsEvent), a2=?, a3=?.
  The `beq` branch at 0xd003af8 targets 0xd003b18, is taken when a3 == 0, and falls through when a3 != 0.
  The `bne` branch at 0xd003b08 targets 0xd003b18, is taken when t6(?) < 0x11 (signed), and falls through when t6(?) >= 0x11 (signed).
  The `beq` branch at 0xd003b10 targets 0xd003ba0 and is always taken.
  The `beq` branch at 0xd003b64 targets 0xd003b84, is taken when a3 == 0, and falls through when a3 != 0.
  The return at 0xd003ba8 has v0 = one of -0x1, ret(dmFifoEnq).

- `vice_dmbuf_recv` in `usr/lib/internal/libvice.so` at 0xd003bb0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd003bb0-0xd003cf8 (328 bytes).
  It occupies 328 bytes.
  The `lw` at 0xd003c0c loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `sw` at 0xd003c64 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lw` at 0xd003c8c loads 4 bytes from ret(malloc) +0x18.
  The `lw` at 0xd003c90 loads 4 bytes from ?.
  The `lw` at 0xd003c98 loads 4 bytes from ret(malloc) +0x1c.
  The `lw` at 0xd003ca4 loads 4 bytes from ret(malloc) +0x20.
  The `lw` at 0xd003cb0 loads 4 bytes from ret(malloc) +0x24.
  The `jalr` at 0xd003be0 calls malloc with a0=0x188, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd003c08 calls dmFifoDeq with a0=[a3], a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd003c2c calls dmSetError with a0=0x1776, a1=0xd004508, a2=0xd004514, a3=?.
  The `jalr` at 0xd003c40 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd003c74 calls _dmBufferCreateDmsBuffer with a0=a2 at entry (arg2), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd003cbc calls dmBufferSetUSTMSCpair with a0=?, a1=?, a2=[ret(malloc)+24], a3=[ret(malloc)+28].
  The `jalr` at 0xd003cd4 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd003bec targets 0xd003bfc, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xd003bf4 targets 0xd003ce4 and is always taken.
  The `beq` branch at 0xd003c10 targets 0xd003c54, is taken when v0(=ret(dmFifoDeq)) == 0, and falls through when v0(=ret(dmFifoDeq)) != 0.
  The `beq` branch at 0xd003c4c targets 0xd003ce4 and is always taken.
  The `beq` branch at 0xd003c5c targets 0xd003c68, is taken when v0(=a1) == 0, and falls through when v0(=a1) != 0.
  The `bne` branch at 0xd003c80 targets 0xd003ccc, is taken when v0(=ret(_dmBufferCreateDmsBuffer)) != 0, and falls through when v0(=ret(_dmBufferCreateDmsBuffer)) == 0.
  The `beq` branch at 0xd003cc4 targets 0xd003ce0 and is always taken.
  The return at 0xd003cf0 has v0 = one of -0x1, ret(_dmBufferCreateDmsBuffer).

- `vice_dmbuf_msend` in `usr/lib/internal/libvice.so` at 0xd003cf8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/internal/libvice.so`.
  Range: 0xd003cf8-0xd003e10 (280 bytes).
  It occupies 280 bytes.
  The `sw` at 0xd003d44 stores 4 bytes to ret(_dmBufferGetDmsEvent) +0x4.
  The `sw` at 0xd003d48 stores 4 bytes to ret(_dmBufferGetDmsEvent) +0x8.
  The `sw` at 0xd003d5c stores 4 bytes to ret(_dmBufferGetDmsEvent) +0x28.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd003d7c, `lw` at 0xd003db4.
  2 such `lw` accesses load 4 bytes from ret(_dmBufferGetDmsEvent) +0x10, including `lw` at 0xd003d8c, `lw` at 0xd003dc4.
  The `sw` at 0xd003d98 stores 4 bytes to ret(_dmBufferGetDmsEvent) +0x84.
  The `sw` at 0xd003da4 stores 4 bytes to ret(_dmBufferGetDmsEvent) +0x80.
  The `sw` at 0xd003dd4 stores 4 bytes to ?.
  The `lw` at 0xd003df0 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `jalr` at 0xd003d2c calls _dmBufferGetDmsEvent with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd003d68 calls bcopy with a0=?, a1=ret(_dmBufferGetDmsEvent)+128, a2=?, a3=?.
  The `jalr` at 0xd003d84 calls _dmBufferGetDmsEvent with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd003dbc calls _dmBufferGetDmsEvent with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd003dec calls dmFifoEnq with a0=[a2], a1=ret(_dmBufferGetDmsEvent), a2=?, a3=?.
  The `beq` branch at 0xd003da8 targets 0xd003de0, is taken when s2(=a3-1) == 0, and falls through when s2(=a3-1) != 0.
  The `bne` branch at 0xd003dd8 targets 0xd003db0, is taken when s2(?) != 0, and falls through when s2(?) == 0.
  The return at 0xd003e08 has v0 = ret(dmFifoEnq).
