# Readings: `usr/cpu/sysgen/IP32boot/mvp.o`

One entry per routine, filed here from the reading batches by binary.

- `mvptransfer_interrupt` in `usr/cpu/sysgen/IP32boot/mvp.o` at 0x250c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/mvp.o`.
  Range: 0x250c-0x367c (4464 bytes).
  It occupies 4464 bytes.
  4 such `lw` accesses load 4 bytes from sym(mvpcontroller_table) +0x0, including `lw` at 0x2560, `lw` at 0x2a28, `lw` at 0x2a58.
  The `lw` at 0x2578 loads 4 bytes from ([sym(mvpcontroller_table)] + (a1 << 0x2)) +0xc0.
  7 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x467, including `lbu` at 0x2598, `lbu` at 0x262c, `lbu` at 0x2878.
  The `lw` at 0x25b8 loads 4 bytes from a0 (arg0 at entry) +0x610.
  The `lbu` at 0x25d0 loads 1 byte from a0 (arg0 at entry) +0x480.
  The `lw` at 0x2604 loads 4 bytes from sym(mvp_umba) +0x10.
  The `sw` at 0x2608 stores 4 bytes to a0 (arg0 at entry) +0x610.
  8 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x48c, including `sw` at 0x2620, `sw` at 0x267c, `sw` at 0x2798.
  The `ld` at 0x2644 loads 8 bytes from a0 (arg0 at entry) +0x5c0.
  The `ld` at 0x2650 loads 8 bytes from a0 (arg0 at entry) +0x5b8.
  The `ld` at 0x2660 loads 8 bytes from a0 (arg0 at entry) +0x5c8.
  12 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48c, including `lw` at 0x266c, `lw` at 0x2780, `lw` at 0x27a4.
  The `lbu` at 0x26a8 loads 1 byte from a0 (arg0 at entry) +0x47f.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x47f, including `sb` at 0x26c0, `sb` at 0x26cc.
  The `lbu` at 0x26d8 loads 1 byte from a0 (arg0 at entry) +0x47d.
  The `lbu` at 0x26e4 loads 1 byte from a0 (arg0 at entry) +0xbaa.
  The `sd` at 0x26f8 stores 8 bytes to a0 (arg0 at entry) +0x5a8.
  The `sd` at 0x2700 stores 8 bytes to a0 (arg0 at entry) +0x5b0.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x4a8, including `lbu` at 0x2710, `lbu` at 0x281c.
  The `lbu` at 0x2774 loads 1 byte from a0 (arg0 at entry) +0x47e.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x484, including `lw` at 0x27a8, `lw` at 0x280c.
  The `sd` at 0x27b4 stores 8 bytes to a0 (arg0 at entry) +0x5b8.
  The `sd` at 0x27c4 stores 8 bytes to a0 (arg0 at entry) +0x5c0.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x460, including `lw` at 0x2824, `lw` at 0x2834, `lw` at 0x2a4c.
  The `sb` at 0x2830 stores 1 byte to [a0+1120] +0xa.
  The `lbu` at 0x2838 loads 1 byte from [a0+1120] +0x8.
  The `sb` at 0x2848 stores 1 byte to [a0+1120] +0x8.
  The `lbu` at 0x2890 loads 1 byte from a0 (arg0 at entry) +0x47c.
  The `lbu` at 0x28cc loads 1 byte from a0 (arg0 at entry) +0x47b.
  The `lbu` at 0x28e4 loads 1 byte from a0 (arg0 at entry) +0x47a.
  The `lw` at 0x2904 loads 4 bytes from a0 (arg0 at entry) +0x61c.
  The `sb` at 0x2910 stores 1 byte to a0 (arg0 at entry) +0x47a.
  The `lw` at 0x295c loads 4 bytes from table(sym(mvptransfer_stats)) +0xc.
  The `sw` at 0x296c stores 4 bytes to table(sym(mvptransfer_stats)) +0xc.
  The `lw` at 0x2980 loads 4 bytes from table(sym(mvptransfer_stats)) +0x10.
  The `sw` at 0x2990 stores 4 bytes to table(sym(mvptransfer_stats)) +0x10.
  3 such `lw` accesses load 4 bytes from sym(mvpignore_framing_errors) +0x0, including `lw` at 0x29a0, `lw` at 0x29d0, `lw` at 0x29fc.
  The `lw` at 0x29a8 loads 4 bytes from table(sym(mvptransfer_stats)) +0x14.
  The `sw` at 0x29b4 stores 4 bytes to table(sym(mvptransfer_stats)) +0x14.
  The `lw` at 0x29d8 loads 4 bytes from table(sym(mvptransfer_stats)) +0x18.
  The `sw` at 0x29e4 stores 4 bytes to table(sym(mvptransfer_stats)) +0x18.
  The `lw` at 0x2a04 loads 4 bytes from table(sym(mvptransfer_stats)) +0x1c.
  The `sw` at 0x2a10 stores 4 bytes to table(sym(mvptransfer_stats)) +0x1c.
  The `lbu` at 0x2a20 loads 1 byte from [a0+1120] +0xb.
  The `lbu` at 0x2a30 loads 1 byte from [a0+1120] +0xa.
  The `lw` at 0x2a34 loads 4 bytes from a0 (arg0 at entry) +0xba0.
  The `lw` at 0x2a38 loads 4 bytes from [a0+2976] +0x4.
  2 such `lbu` accesses load 1 byte from [a0+1120] +0x9, including `lbu` at 0x2a50, `lbu` at 0x2a7c.
  The `lw` at 0x2a6c loads 4 bytes from [sym(mvpcontroller_table)] +0xc8.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2a94, `ld` at 0x2c14, `ld` at 0x2c3c.
  The `lw` at 0x2ac8 loads 4 bytes from table(sym(mvptransfer_stats)) +0x8.
  The `sw` at 0x2ad0 stores 4 bytes to table(sym(mvptransfer_stats)) +0x8.
  The `lw` at 0x2b18 loads 4 bytes from (sym(.rodata)+96 + ([a0+1127]:1 << 0x2)) +0x0.
  The `lbu` at 0x2b2c loads 1 byte from a0 (arg0 at entry) +0xba9.
  The `sd` at 0x2b54 stores 8 bytes to ([sym(mvpcontroller_table)] + (a1 << 0x4)) +0x20.
  The `lw` at 0x2b58 loads 4 bytes from sym(mvp_umba) +0x0.
  The `sw` at 0x2b68 stores 4 bytes to ([sym(mvp_umba)] + (a1 << 0x3)) +0x38.
  The `sb` at 0x2bb0 stores 1 byte to a0 (arg0 at entry) +0x47b.
  2 such `sb` accesses store 1 byte to [a0+1120] +0x70, including `sb` at 0x2c10, `sb` at 0x2c38.
  4 such `sd` accesses store 8 bytes to ?, including `sd` at 0x2c24, `sd` at 0x2c28, `sd` at 0x2c50.
  2 such `sb` accesses store 1 byte to [a0+1120] +0x9, including `sb` at 0x2c34, `sb` at 0x2c60.
  The `lw` at 0x2c6c loads 4 bytes from [sym(mvpcontroller_table)] +0xc0.
  The `jalr` at 0x2588 calls pciio_pio_read64 with a0=[([sym(mvpcontroller_table)] + (a1 << 0x2))+192]+8, a1=(a1 << 0x2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x25c8 calls untimeout with a0=[a0+1552], a1=0x3, a2=[a0+1127]:1, a3=sym(untimeout).
  The `jalr` at 0x2600 calls itimeout with a0=sym(mvptransfer_timeout), a1=a0 at entry (arg0), a2=[sym(mvptransfer_timeout_len)], a3=sym(mvpdummy_spl), a4=sym(itimeout).
  The `jalr` at 0x2624 calls .text+6276 with a0=a0 at entry (arg0), a1=sp-248, a2=?, a3=?.
  The `jalr` at 0x2794 calls .text+52 with a0=a0 at entry (arg0), a1=sym(mvptransfer_too_many_errors), a2=([a0+1164] | 0x800000), a3=0x800000.
  The `jalr` at 0x27d4 calls .text+4156 with a0=a0 at entry (arg0), a1=?, a2=0x0, a3=?, a5=sym(mvptransfer_send_events).
  The `jalr` at 0x2868 calls mvppath_send_available with a0=a0 at entry (arg0), a1=0x10000, a2=([a0+1164] | 0x10000), a3=sym(mvppath_send_available), a4=0x10000, a5=[a0+1120].
  The `jalr` at 0x28dc calls mvptransfer_stop with a0=a0 at entry (arg0), a1=0x3, a2=[a0+1127]:1, a3=?.
  The `jalr` at 0x2900 calls sv_signal with a0=[a0+1564], a1=([a0+1164] | 0x100), a2=sym(sv_signal), a3=?.
  The `jalr` at 0x2938 calls mvpinterrupt_setup with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x0, a3=0x0, a4=sym(mvpinterrupt_setup).
  The `jalr` at 0x2a70 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2aa4 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?, a5=[a0+1120], a7=[[a0+1120]+9]:1.
  The `jalr` at 0x2af4 calls mvptransfer_enablechannel with a0=a0 at entry (arg0), a1=0x3, a2=?, a3=?, a4=sym(mvptransfer_enablechannel), a5=[a0+1148]:1, a6=(ret(pciio_pio_read64) << 0x3d).
  Calls (unknown callee) via register with a0=(sym(.rodata)+96 + ([a0+1127]:1 << 0x2)), a1=([a0+1127]:1 << 0x2), a2=?, a3=[(sym(.rodata)+96 + ([a0+1127]:1 << 0x2))], a4=(ret(pciio_pio_read64) << 0x3d) (`jr` at 0x2b1c).
  The `jalr` at 0x2b9c calls mvptransfer_enablechannel with a0=a0 at entry (arg0), a1=0x2, a2=[a0+1127]:1, a3=sym(mvptransfer_enablechannel).
  The `jalr` at 0x2c70 calls pciio_pio_read64 with a0=[[sym(mvpcontroller_table)]+192]+8, a1=sym(pciio_pio_read64), a2=?, a3=?, a5=[a0+1120], a6=([a0+1156] << 0x2f), a7=[a0+1192]:1.
  The `beq` branch at 0x25b0 targets 0x28c0, is taken when a1(=0x3) == a2(=[a0+1127]:1), and falls through when a1(=0x3) != a2(=[a0+1127]:1).
  The `beq` branch at 0x25bc targets 0x25d0, is taken when a0(=[a0+1552]) == 0, and falls through when a0(=[a0+1552]) != 0.
  The `beq` branch at 0x25d4 targets 0x260c, is taken when a4(=[a0+1152]:1) == 0, and falls through when a4(=[a0+1152]:1) != 0.
  The `beq` branch at 0x2638 targets 0x26a4, is taken when v0(=0x4) >= v1(=[a0+1127]:1) (signed), and falls through when v0(=0x4) < v1(=[a0+1127]:1) (signed).
  The `beq` branch at 0x2658 targets 0x2ae4, is taken when s3(=0x1) == a5(?), and falls through when s3(=0x1) != a5(?).
  The `beq` branch at 0x2680 targets 0x2b24, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bltz` branch at 0x268c targets 0x2b2c, is taken when a2(=(ret(pciio_pio_read64) << 0x3d)) < 0 (signed), and falls through when a2(=(ret(pciio_pio_read64) << 0x3d)) >= 0 (signed).
  The `beq` branch at 0x2694 targets 0x2b84, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x269c targets 0x26a8 and is always taken.
  The `beq` branch at 0x26c4 targets 0x26d0, is taken when s5(?) == t8(?), and falls through when s5(?) != t8(?).
  The `beq` branch at 0x26d0 targets 0x2708, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x26dc targets 0x26f4, is taken when t9(=[a0+1149]:1) == 0, and falls through when t9(=[a0+1149]:1) != 0.
  The `bne` branch at 0x26e8 targets 0x2708, is taken when ra(=[a0+2986]:1) != s5(?), and falls through when ra(=[a0+2986]:1) == s5(?).
  The `bltz` branch at 0x2708 targets 0x2914, is taken when s7(=(ret(pciio_pio_read64) << 0x3e)) < 0 (signed), and falls through when s7(=(ret(pciio_pio_read64) << 0x3e)) >= 0 (signed).
  The `beq` branch at 0x2714 targets 0x28ac, is taken when v1(=[a0+1192]:1) == 0, and falls through when v1(=[a0+1192]:1) != 0.
  The `beq` branch at 0x2720 targets 0x28b4, is taken when (v0(?) & 0x1f8) == 0, and falls through when (v0(?) & 0x1f8) != 0.
  The `bltz` branch at 0x2728 targets 0x2ab4, is taken when a1(=(ret(pciio_pio_read64) << 0x3c)) < 0 (signed), and falls through when a1(=(ret(pciio_pio_read64) << 0x3c)) >= 0 (signed).
  The `bltz` branch at 0x2738 targets 0x2948, is taken when t8(=(ret(pciio_pio_read64) << 0x37)) < 0 (signed), and falls through when t8(=(ret(pciio_pio_read64) << 0x37)) >= 0 (signed).
  The `bltz` branch at 0x2744 targets 0x2970, is taken when t9(=(ret(pciio_pio_read64) << 0x38)) < 0 (signed), and falls through when t9(=(ret(pciio_pio_read64) << 0x38)) >= 0 (signed).
  The `bltz` branch at 0x2750 targets 0x2994, is taken when ra(=(ret(pciio_pio_read64) << 0x39)) < 0 (signed), and falls through when ra(=(ret(pciio_pio_read64) << 0x39)) >= 0 (signed).
  The `bltz` branch at 0x2760 targets 0x29c4, is taken when at(=(ret(pciio_pio_read64) << 0x3a)) < 0 (signed), and falls through when at(=(ret(pciio_pio_read64) << 0x3a)) >= 0 (signed).
  The `bltz` branch at 0x276c targets 0x29f4, is taken when v0(=(ret(pciio_pio_read64) << 0x3b)) < 0 (signed), and falls through when v0(=(ret(pciio_pio_read64) << 0x3b)) >= 0 (signed).
  The `beq` branch at 0x2778 targets 0x280c, is taken when v1(=[a0+1150]:1) == 0, and falls through when v1(=[a0+1150]:1) != 0.
  The `beq` branch at 0x279c targets 0x280c, is taken when v0(=ret(.text+52)) == 0, and falls through when v0(=ret(.text+52)) != 0.
  The `beq` branch at 0x27c0 targets 0x27dc, is taken when (a1(?) & a3(=[a0+1156])) == 0, and falls through when (a1(?) & a3(=[a0+1156])) != 0.
  The `bgez` branch at 0x2814 targets 0x2a34, is taken when a6(=([a0+1156] << 0x2f)) >= 0 (signed), and falls through when a6(=([a0+1156] << 0x2f)) < 0 (signed).
  The `beq` branch at 0x2820 targets 0x2a20, is taken when a7(=[a0+1192]:1) == 0, and falls through when a7(=[a0+1192]:1) != 0.
  The `beq` branch at 0x283c targets 0x2870, is taken when a1(=[[a0+1120]+8]:1) == a0(?), and falls through when a1(=[[a0+1120]+8]:1) != a0(?).
  The `beq` branch at 0x2844 targets 0x2870, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bltz` branch at 0x2870 targets 0x2a4c, is taken when s7(=(ret(pciio_pio_read64) << 0x3e)) < 0 (signed), and falls through when s7(=(ret(pciio_pio_read64) << 0x3e)) >= 0 (signed).
  The `bne` branch at 0x2880 targets 0x2928, is taken when v0(=[a0+1127]:1) < 0x3 (signed), and falls through when v0(=[a0+1127]:1) >= 0x3 (signed).
  The `bltz` branch at 0x2888 targets 0x2b04, is taken when s7(=(ret(pciio_pio_read64) << 0x3e)) < 0 (signed), and falls through when s7(=(ret(pciio_pio_read64) << 0x3e)) >= 0 (signed).
  The `beq` branch at 0x2894 targets 0x28a4, is taken when a5(=[a0+1148]:1) == 0, and falls through when a5(=[a0+1148]:1) != 0.
  The `bltz` branch at 0x289c targets 0x2aec, is taken when a6(=(ret(pciio_pio_read64) << 0x3d)) < 0 (signed), and falls through when a6(=(ret(pciio_pio_read64) << 0x3d)) >= 0 (signed).
  The `beq` branch at 0x28a4 targets 0x27a8 and is always taken.
  The `bne` branch at 0x28b0 targets 0x2730, is taken when (v0(?) & 0x1f0) != 0, and falls through when (v0(?) & 0x1f0) == 0.
  The `beq` branch at 0x28b8 targets 0x280c and is always taken.
  The `beq` branch at 0x28c4 targets 0x28d8, is taken when (v0(=ret(pciio_pio_read64)) & 0x1) == 0, and falls through when (v0(=ret(pciio_pio_read64)) & 0x1) != 0.
  The `beq` branch at 0x28d0 targets 0x2b90, is taken when t9(=[a0+1147]:1) == 0, and falls through when t9(=[a0+1147]:1) != 0.
  The `beq` branch at 0x28f0 targets 0x290c, is taken when v0(=[a0+1146]:1) == 0, and falls through when v0(=[a0+1146]:1) != 0.
  The `beq` branch at 0x290c targets 0x27a8 and is always taken.
  The `beq` branch at 0x2914 targets 0x2bb4, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `beq` branch at 0x2920 targets 0x2710 and is always taken.
  The `beq` branch at 0x2940 targets 0x27a8 and is always taken.
  The `beq` branch at 0x2968 targets 0x2740 and is always taken.
  The `beq` branch at 0x298c targets 0x274c and is always taken.
  The `bne` branch at 0x29b0 targets 0x2758, is taken when t3(=[sym(mvpignore_framing_errors)]) != 0, and falls through when t3(=[sym(mvpignore_framing_errors)]) == 0.
  The `beq` branch at 0x29bc targets 0x2758 and is always taken.
  The `bne` branch at 0x29e0 targets 0x2768, is taken when ra(=[sym(mvpignore_framing_errors)]) != 0, and falls through when ra(=[sym(mvpignore_framing_errors)]) == 0.
  The `beq` branch at 0x29ec targets 0x2768 and is always taken.
  The `bne` branch at 0x2a0c targets 0x2774, is taken when ra(=[sym(mvpignore_framing_errors)]) != 0, and falls through when ra(=[sym(mvpignore_framing_errors)]) == 0.
  The `beq` branch at 0x2a18 targets 0x2774 and is always taken.
  The `beq` branch at 0x2a24 targets 0x2c64, is taken when t8(=[[a0+1120]+11]:1) == 0, and falls through when t8(=[[a0+1120]+11]:1) != 0.
  The `beq` branch at 0x2a2c targets 0x2838 and is always taken.
  The `bne` branch at 0x2a3c targets 0x281c, is taken when t9(=[[a0+2976]+4]) != 0, and falls through when t9(=[[a0+2976]+4]) == 0.
  The `beq` branch at 0x2a44 targets 0x287c and is always taken.
  The `beq` branch at 0x2a54 targets 0x2878, is taken when ra(=[[a0+1120]+9]:1) == 0, and falls through when ra(=[[a0+1120]+9]:1) != 0.
  The `beq` branch at 0x2a90 targets 0x2c10, is taken when a7(=[[a0+1120]+9]:1) == v0(=0x2), and falls through when a7(=[[a0+1120]+9]:1) != v0(=0x2).
  The `beq` branch at 0x2a98 targets 0x2c38, is taken when s3(=0x1) == a7(=[[a0+1120]+9]:1), and falls through when s3(=0x1) != a7(=[[a0+1120]+9]:1).
  The `beq` branch at 0x2aac targets 0x287c and is always taken.
  The `beq` branch at 0x2adc targets 0x2730 and is always taken.
  The `beq` branch at 0x2ae4 targets 0x26a8 and is always taken.
  The `beq` branch at 0x2b10 targets 0x2b7c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x2b24 targets 0x2688 and is always taken.
  The `beq` branch at 0x2b34 targets 0x2694, is taken when a4(=[a0+2985]:1) == a6(=0x4), and falls through when a4(=[a0+2985]:1) != a6(=0x4).
  The `beq` branch at 0x2b74 targets 0x269c and is always taken.
  The `beq` branch at 0x2b7c targets 0x27a8 and is always taken.
  The `beq` branch at 0x2b88 targets 0x2b48 and is always taken.
  The `beq` branch at 0x2bac targets 0x27a8 and is always taken.
  The `beq` branch at 0x2bb8 targets 0x2710 and is always taken.
  The `beq` branch at 0x2c1c targets 0x2c2c, is taken when t9(?) == v0(?), and falls through when t9(?) != v0(?).
  The `beq` branch at 0x2c30 targets 0x2a9c and is always taken.
  The `beq` branch at 0x2c48 targets 0x2c58, is taken when at(?) == v0(?), and falls through when at(?) != v0(?).
  The `beq` branch at 0x2c5c targets 0x2a9c and is always taken.
  The `beq` branch at 0x2c84 targets 0x2838 and is always taken.
  The return at 0x2804 has v0 = one of ?, ret(.text+4156).
  The instructions from 0x2bc0 to 0x2c0c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x2c8c to 0x3678 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x2b1c uses a jump table whose successors are unresolved.

- `av1_setup` in `usr/cpu/sysgen/IP32boot/mvp.o` at 0x5038 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/mvp.o`.
  Range: 0x5038-0x557c (1348 bytes).
  It occupies 1348 bytes.
  The `lw` at 0x5064 loads 4 bytes from a1 (arg1 at entry) +0x10.
  3 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x5b, including `sb` at 0x50a0, `sb` at 0x5448, `sb` at 0x54ac.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x5a, including `sb` at 0x50a4, `sb` at 0x5450.
  19 such `sb` accesses store 1 byte to ?, including `sb` at 0x513c, `sb` at 0x5140, `sb` at 0x5144.
  5 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x5148, `lbu` at 0x51d4, `lbu` at 0x525c.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lw` at 0x5168, `lw` at 0x5330.
  The `sb` at 0x51b0 stores 1 byte to a0 (arg0 at entry) +0x79.
  The `sb` at 0x51b8 stores 1 byte to a0 (arg0 at entry) +0x78.
  The `lbu` at 0x51bc loads 1 byte from a1 (arg1 at entry) +0xb.
  The `sb` at 0x51cc stores 1 byte to a0 (arg0 at entry) +0x7b.
  3 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x84, including `sb` at 0x5268, `sb` at 0x54a0, `sb` at 0x54fc.
  6 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x61, including `sb` at 0x52a0, `sb` at 0x53ac, `sb` at 0x54d4.
  3 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x6c, including `sb` at 0x52ac, `sb` at 0x53b4, `sb` at 0x5564.
  3 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x6e, including `sb` at 0x52cc, `sb` at 0x540c, `sb` at 0x5428.
  4 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x6f, including `sb` at 0x52d4, `sb` at 0x5420, `sb` at 0x543c.
  The `sb` at 0x52e0 stores 1 byte to a0 (arg0 at entry) +0xc.
  The `lbu` at 0x52e4 loads 1 byte from a0 (arg0 at entry) +0x6e.
  The `sb` at 0x52ec stores 1 byte to a0 (arg0 at entry) +0x58.
  The `sb` at 0x52f8 stores 1 byte to a0 (arg0 at entry) +0x59.
  The `sb` at 0x5300 stores 1 byte to a0 (arg0 at entry) +0x65.
  The `sb` at 0x5304 stores 1 byte to a0 (arg0 at entry) +0x64.
  The `sb` at 0x5308 stores 1 byte to a0 (arg0 at entry) +0x60.
  The `sb` at 0x530c stores 1 byte to a0 (arg0 at entry) +0x63.
  The `sb` at 0x5314 stores 1 byte to a0 (arg0 at entry) +0x62.
  The `lbu` at 0x5324 loads 1 byte from a0 (arg0 at entry) +0x62.
  The `lbu` at 0x5328 loads 1 byte from a0 (arg0 at entry) +0x61.
  The `lbu` at 0x5390 loads 1 byte from a0 (arg0 at entry) +0x87.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x66, including `sb` at 0x53c4, `sb` at 0x5478.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x6c, including `lbu` at 0x5404, `lbu` at 0x5424.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x6d, including `sb` at 0x5414, `sb` at 0x5438.
  The `lbu` at 0x5444 loads 1 byte from a0 (arg0 at entry) +0x6f.
  The `lbu` at 0x54b8 loads 1 byte from a0 (arg0 at entry) +0x83.
  The `lbu` at 0x550c loads 1 byte from a0 (arg0 at entry) +0x7f.
  The `lbu` at 0x5538 loads 1 byte from a0 (arg0 at entry) +0x7b.
  The `jalr` at 0x506c calls mvpi2c_read_reg with a0=[a1+16], a1=sym(.data)+1704, a2=-0x2, a3=a3 at entry (arg3).
  The `jalr` at 0x50b0 calls mvpavio_preset_timing with a0=0x80, a1=?, a2=sym(mvpavio_preset_timing), a3=?.
  The `jalr` at 0x50cc calls mvpavio_preset_input with a0=?, a1=?, a2=?, a3=sym(mvpavio_preset_input).
  The `jalr` at 0x50e8 calls mvpavio_preset_output with a0=?, a1=?, a2=?, a3=?, a5=sym(mvpavio_preset_output).
  The `jalr` at 0x5104 calls mvpavio_preset_genlock with a0=?, a1=?, a2=?, a3=?, a7=sym(mvpavio_preset_genlock).
  The `jalr` at 0x516c calls mvperrprintf with a0=0x7, a1=sym(.rodata)+160, a2=[a1+4], a3=?, a4=sym(.rodata)+160.
  The `jalr` at 0x5204 calls .text+19312 with a0=a1 at entry (arg1), a1=?, a2=sym(av1_select_input), a3=?.
  The `jalr` at 0x5228 calls .text+18124 with a0=0xf4240, a1=?, a2=sym(av1_sense_timing), a3=sym(mvp_delay_bus).
  The `jalr` at 0x523c calls .text+18364 with a0=a1 at entry (arg1), a1=?, a2=sym(av1_sense_timing), a3=?.
  The `jalr` at 0x5334 calls mvperrprintf with a0=0x7, a1=sym(.rodata)+160, a2=[a1+4], a3=[a0+97]:1, a4=[a0+98]:1, a6=one of 0x1, 0x2.
  The `jalr` at 0x5344 calls mvpavio_setupoutput with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x5358 calls mvpav1_wiggle_ccen with a0=a1 at entry (arg1), a1=0x1, a2=?, a3=?.
  The `jalr` at 0x5488 calls .text+18160 with a0=a1 at entry (arg1), a1=0x1, a2=?, a3=?.
  The `beq` branch at 0x5084 targets 0x54ac, is taken when v0(=ret(mvpi2c_read_reg)) == s0(=-0x1), and falls through when v0(=ret(mvpi2c_read_reg)) != s0(=-0x1).
  The `beq` branch at 0x5094 targets 0x5448, is taken when v1(?) == a0(=0x80), and falls through when v1(?) != a0(=0x80).
  The `beq` branch at 0x50b8 targets 0x5454, is taken when v0(=ret(mvpavio_preset_timing)) == s0(=-0x1), and falls through when v0(=ret(mvpavio_preset_timing)) != s0(=-0x1).
  The `beq` branch at 0x50d4 targets 0x545c, is taken when v0(=ret(mvpavio_preset_input)) == s0(=-0x1), and falls through when v0(=ret(mvpavio_preset_input)) != s0(=-0x1).
  The `beq` branch at 0x50f0 targets 0x5464, is taken when v0(=ret(mvpavio_preset_output)) == s0(=-0x1), and falls through when v0(=ret(mvpavio_preset_output)) != s0(=-0x1).
  The `beq` branch at 0x510c targets 0x546c, is taken when v0(=ret(mvpavio_preset_genlock)) == s0(=-0x1), and falls through when v0(=ret(mvpavio_preset_genlock)) != s0(=-0x1).
  The `beq` branch at 0x5134 targets 0x5184 and is always taken.
  The `beq` branch at 0x514c targets 0x5174, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bltz` branch at 0x5154 targets 0x5160, is taken when s4(?) < 0 (signed), and falls through when s4(?) >= 0 (signed).
  The `beq` branch at 0x517c targets 0x5280, is taken when s0(?) >= 0xa (signed), and falls through when s0(?) < 0xa (signed).
  The `beq` branch at 0x5188 targets 0x51d8, is taken when s0(?) == s8(=0x3), and falls through when s0(?) != s8(=0x3).
  The `beq` branch at 0x5198 targets 0x51f0, is taken when s0(?) == t9(=0x2), and falls through when s0(?) != t9(=0x2).
  The `beq` branch at 0x51a0 targets 0x5260, is taken when s0(?) == s5(=0x4), and falls through when s0(?) != s5(=0x4).
  The `bne` branch at 0x51a8 targets 0x513c, is taken when s0(?) != ra(=0x1), and falls through when s0(?) == ra(=0x1).
  The `beq` branch at 0x51c4 targets 0x51d0, is taken when (at(=[a1+11]:1) & 0x40) == 0, and falls through when (at(=[a1+11]:1) & 0x40) != 0.
  The `beq` branch at 0x51d0 targets 0x514c and is always taken.
  The `bltz` branch at 0x51d8 targets 0x51f8, is taken when s4(?) < 0 (signed), and falls through when s4(?) >= 0 (signed).
  The `beq` branch at 0x51e8 targets 0x514c and is always taken.
  The `bgez` branch at 0x51f0 targets 0x51e0, is taken when s4(?) >= 0 (signed), and falls through when s4(?) < 0 (signed).
  The `bltz` branch at 0x520c targets 0x54ec, is taken when v0(=ret(.text+19312)) < 0 (signed), and falls through when v0(=ret(.text+19312)) >= 0 (signed).
  The `blez` branch at 0x5214 targets 0x5234, is taken when v0(=ret(.text+19312)) <= 0 (signed), and falls through when v0(=ret(.text+19312)) > 0 (signed).
  The `bltz` branch at 0x5244 targets 0x54e0, is taken when v0(=ret(.text+18364)) < 0 (signed), and falls through when v0(=ret(.text+18364)) >= 0 (signed).
  The `beq` branch at 0x5258 targets 0x514c and is always taken.
  The `bltz` branch at 0x5260 targets 0x5484, is taken when s4(?) < 0 (signed), and falls through when s4(?) >= 0 (signed).
  The `beq` branch at 0x5278 targets 0x514c and is always taken.
  The `beq` branch at 0x5288 targets 0x5390, is taken when a5(?) == a6(=-0x1), and falls through when a5(?) != a6(=-0x1).
  The `beq` branch at 0x529c targets 0x53b0, is taken when a7(?) == t0(=-0x1), and falls through when a7(?) != t0(=-0x1).
  The `beq` branch at 0x52b8 targets 0x53c8, is taken when a2(?) == a3(=-0x1), and falls through when a2(?) != a3(=-0x1).
  The `beq` branch at 0x52c8 targets 0x547c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x5310 targets 0x5474, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x531c targets 0x53c0, is taken when v0(?) == t0(=0xf), and falls through when v0(?) != t0(=0xf).
  The `beq` branch at 0x53a0 targets 0x54b8, is taken when (t3(=[a0+135]:1) & 0x2) == 0, and falls through when (t3(=[a0+135]:1) & 0x2) != 0.
  The `bne` branch at 0x53a8 targets 0x52a4, is taken when t8(?) != t9(=-0x1), and falls through when t8(?) == t9(=-0x1).
  The `beq` branch at 0x53b8 targets 0x52b0 and is always taken.
  The `beq` branch at 0x53c0 targets 0x5320 and is always taken.
  The `beq` branch at 0x53d4 targets 0x5424, is taken when at(=0x2) == a0(?), and falls through when at(=0x2) != a0(?).
  The `beq` branch at 0x53dc targets 0x5424, is taken when s8(=0x3) == a0(?), and falls through when s8(=0x3) != a0(?).
  The `beq` branch at 0x53e4 targets 0x5424, is taken when v0(=0x5) == a0(?), and falls through when v0(=0x5) != a0(?).
  The `beq` branch at 0x53ec targets 0x5404, is taken when v1(=0x1) == a0(?), and falls through when v1(=0x1) != a0(?).
  The `beq` branch at 0x53f4 targets 0x5404, is taken when s5(=0x4) == a0(?), and falls through when s5(=0x4) != a0(?).
  The `bne` branch at 0x53fc targets 0x5430, is taken when a2(=0x6) != a0(?), and falls through when a2(=0x6) == a0(?).
  The `bne` branch at 0x5408 targets 0x5438, is taken when a3(=0x1) != a1(=[a0+108]:1), and falls through when a3(=0x1) == a1(=[a0+108]:1).
  The `beq` branch at 0x541c targets 0x5440 and is always taken.
  The `beq` branch at 0x5430 targets 0x5414, is taken when a7(=0x1) == a1(?), and falls through when a7(=0x1) != a1(?).
  The `beq` branch at 0x5440 targets 0x52e4 and is always taken.
  The `beq` branch at 0x544c targets 0x50a8 and is always taken.
  The `beq` branch at 0x5454 targets 0x50c4 and is always taken.
  The `beq` branch at 0x545c targets 0x50e0 and is always taken.
  The `beq` branch at 0x5464 targets 0x50fc and is always taken.
  The `beq` branch at 0x546c targets 0x5118 and is always taken.
  The `beq` branch at 0x5474 targets 0x5320 and is always taken.
  The `beq` branch at 0x547c targets 0x52dc and is always taken.
  The `beq` branch at 0x5498 targets 0x54fc, is taken when v0(=ret(.text+18160)) == t9(=-0x1), and falls through when v0(=ret(.text+18160)) != t9(=-0x1).
  The `beq` branch at 0x54a4 targets 0x5270 and is always taken.
  The `beq` branch at 0x54b0 targets 0x5364 and is always taken.
  The `beq` branch at 0x54c8 targets 0x550c, is taken when (at(=[a0+131]:1) & 0x2) == 0, and falls through when (at(=[a0+131]:1) & 0x2) != 0.
  The `bne` branch at 0x54d0 targets 0x52a4, is taken when v0(?) != v1(=-0x1), and falls through when v0(?) == v1(=-0x1).
  The `beq` branch at 0x54d8 targets 0x53b4 and is always taken.
  The `beq` branch at 0x54e4 targets 0x5258 and is always taken.
  The `beq` branch at 0x54f4 targets 0x5258 and is always taken.
  The `beq` branch at 0x5504 targets 0x5270 and is always taken.
  The `beq` branch at 0x5514 targets 0x5538, is taken when (a2(=[a0+127]:1) & 0x2) == 0, and falls through when (a2(=[a0+127]:1) & 0x2) != 0.
  The `bne` branch at 0x5528 targets 0x52a4, is taken when a3(?) != a4(=-0x1), and falls through when a3(?) == a4(=-0x1).
  The `beq` branch at 0x5530 targets 0x53b4 and is always taken.
  The `beq` branch at 0x5540 targets 0x5570, is taken when (a6(=[a0+123]:1) & 0x2) == 0, and falls through when (a6(=[a0+123]:1) & 0x2) != 0.
  The `bne` branch at 0x555c targets 0x52a4, is taken when t0(?) != t1(=-0x1), and falls through when t0(?) == t1(=-0x1).
  The `beq` branch at 0x5568 targets 0x52b0 and is always taken.
  The `beq` branch at 0x5574 targets 0x5554 and is always taken.
  The return at 0x5388 has v0 = 0x0.

- `av2_setup` in `usr/cpu/sysgen/IP32boot/mvp.o` at 0x568c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/mvp.o`.
  Range: 0x568c-0x5a58 (972 bytes).
  It occupies 972 bytes.
  The `lbu` at 0x56b0 loads 1 byte from sym(mvp_umba) +0x981.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x5b, including `sb` at 0x56dc, `sb` at 0x5944.
  The `sb` at 0x56e4 stores 1 byte to a0 (arg0 at entry) +0x5a.
  11 such `sb` accesses store 1 byte to ?, including `sb` at 0x5794, `sb` at 0x5798, `sb` at 0x579c.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lw` at 0x5808, `lw` at 0x58d8, `lw` at 0x59d8.
  4 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x61, including `sb` at 0x583c, `sb` at 0x5930, `sb` at 0x5a20.
  4 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x6c, including `sb` at 0x5844, `sb` at 0x5934, `sb` at 0x5a28.
  3 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x6e, including `sb` at 0x585c, `sb` at 0x59f8, `sb` at 0x5a38.
  4 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x6f, including `sb` at 0x5864, `sb` at 0x596c, `sb` at 0x59a4.
  The `sb` at 0x586c stores 1 byte to a0 (arg0 at entry) +0xc.
  The `lbu` at 0x5870 loads 1 byte from a0 (arg0 at entry) +0x6e.
  The `sb` at 0x5878 stores 1 byte to a0 (arg0 at entry) +0x58.
  The `lbu` at 0x5880 loads 1 byte from ?.
  The `sb` at 0x5884 stores 1 byte to a0 (arg0 at entry) +0x59.
  The `sb` at 0x588c stores 1 byte to a0 (arg0 at entry) +0x65.
  The `sb` at 0x5890 stores 1 byte to a0 (arg0 at entry) +0x64.
  The `sb` at 0x5894 stores 1 byte to a0 (arg0 at entry) +0x60.
  The `sb` at 0x5898 stores 1 byte to a0 (arg0 at entry) +0x63.
  The `sb` at 0x58a0 stores 1 byte to a0 (arg0 at entry) +0x62.
  The `lbu` at 0x58b0 loads 1 byte from a0 (arg0 at entry) +0x62.
  The `lbu` at 0x58c4 loads 1 byte from a0 (arg0 at entry) +0x61.
  The `lbu` at 0x591c loads 1 byte from a0 (arg0 at entry) +0x8b.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x66, including `sb` at 0x594c, `sb` at 0x599c.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x6d, including `sb` at 0x5968, `sb` at 0x59fc.
  The `lbu` at 0x5974 loads 1 byte from a0 (arg0 at entry) +0x6f.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x6c, including `lbu` at 0x59ec, `lbu` at 0x5a2c.
  The `lbu` at 0x5a0c loads 1 byte from a0 (arg0 at entry) +0x8f.
  The `jalr` at 0x56e8 calls mvpavio_preset_timing with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x5704 calls mvpavio_preset_input with a0=sym(mvpavio_preset_input), a1=?, a2=?, a3=?.
  The `jalr` at 0x5720 calls mvpavio_preset_output with a0=?, a1=?, a2=sym(mvpavio_preset_output), a3=?, a4=-0x1.
  The `jalr` at 0x5738 calls mvpavio_preset_genlock with a0=?, a1=?, a2=?, a3=sym(mvpavio_preset_genlock).
  The `jalr` at 0x5804 calls mvperrprintf with a0=0x7, a1=sym(.rodata)+3128, a2=[a1+4], a3=?.
  The `jalr` at 0x58d4 calls mvperrprintf with a0=0x7, a1=sym(.rodata)+3128, a2=[a1+4], a3=[a0+97]:1, a4=[a0+98]:1, a5=one of 0x8, 0xf, a6=sym(mvperrprintf).
  The `jalr` at 0x58e4 calls mvpavio_setupoutput with a0=a0 at entry (arg0), a1=?, a2=sym(mvpavio_setupoutput), a3=?.
  The `jalr` at 0x59dc calls mvperrprintf with a0=0x7, a1=sym(.rodata)+3128, a2=[a1+4], a3=?, a5=sym(mvperrprintf).
  The `beq` branch at 0x56cc targets 0x5940, is taken when s3(=-0x1) == at(=[sym(.data)+2433]:1), and falls through when s3(=-0x1) != at(=[sym(.data)+2433]:1).
  The `beq` branch at 0x56f0 targets 0x5978, is taken when v0(=ret(mvpavio_preset_timing)) == s3(=-0x1), and falls through when v0(=ret(mvpavio_preset_timing)) != s3(=-0x1).
  The `beq` branch at 0x570c targets 0x5980, is taken when v0(=ret(mvpavio_preset_input)) == s3(=-0x1), and falls through when v0(=ret(mvpavio_preset_input)) != s3(=-0x1).
  The `beq` branch at 0x5728 targets 0x5988, is taken when v0(=ret(mvpavio_preset_output)) == s3(=-0x1), and falls through when v0(=ret(mvpavio_preset_output)) != s3(=-0x1).
  The `beq` branch at 0x5740 targets 0x5990, is taken when v0(=ret(mvpavio_preset_genlock)) == s3(=-0x1), and falls through when v0(=ret(mvpavio_preset_genlock)) != s3(=-0x1).
  The `beq` branch at 0x578c targets 0x57b0 and is always taken.
  The `beq` branch at 0x57a8 targets 0x5828, is taken when s1(?) >= 0xa (signed), and falls through when s1(?) < 0xa (signed).
  The `beq` branch at 0x57b0 targets 0x57c8, is taken when s1(?) == s6(=0x5), and falls through when s1(?) != s6(=0x5).
  The `bne` branch at 0x57b8 targets 0x5794, is taken when s1(?) != s4(=0x6), and falls through when s1(?) == s4(=0x6).
  The `beq` branch at 0x57c0 targets 0x57d0 and is always taken.
  The `bltz` branch at 0x57d0 targets 0x5814, is taken when s5(?) < 0 (signed), and falls through when s5(?) >= 0 (signed).
  The `beq` branch at 0x580c targets 0x57a0 and is always taken.
  The `beq` branch at 0x5814 targets 0x59a8, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x5820 targets 0x57a0 and is always taken.
  The `beq` branch at 0x582c targets 0x591c, is taken when a3(?) == s3(=-0x1), and falls through when a3(?) != s3(=-0x1).
  The `beq` branch at 0x5838 targets 0x5934, is taken when s8(?) == s3(=-0x1), and falls through when s8(?) != s3(=-0x1).
  The `beq` branch at 0x584c targets 0x5950, is taken when a1(?) == s3(=-0x1), and falls through when a1(?) != s3(=-0x1).
  The `beq` branch at 0x5858 targets 0x59a0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x589c targets 0x5998, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x58a8 targets 0x5948, is taken when v0(?) == a5(=0xf), and falls through when v0(?) != a5(=0xf).
  The `beq` branch at 0x5924 targets 0x5a0c, is taken when (a3(=[a0+139]:1) & 0x2) == 0, and falls through when (a3(=[a0+139]:1) & 0x2) != 0.
  The `bne` branch at 0x592c targets 0x5840, is taken when s8(?) != s3(=-0x1), and falls through when s8(?) == s3(=-0x1).
  The `beq` branch at 0x5938 targets 0x5848 and is always taken.
  The `beq` branch at 0x5940 targets 0x58f4 and is always taken.
  The `beq` branch at 0x5948 targets 0x58ac and is always taken.
  The `beq` branch at 0x5950 targets 0x5a2c, is taken when s6(=0x5) == a0(?), and falls through when s6(=0x5) != a0(?).
  The `beq` branch at 0x5958 targets 0x59ec, is taken when s4(=0x6) == a0(?), and falls through when s4(=0x6) != a0(?).
  The `beq` branch at 0x5960 targets 0x59fc, is taken when a4(=0x1) == a3(?), and falls through when a4(=0x1) != a3(?).
  The `beq` branch at 0x5970 targets 0x5870 and is always taken.
  The `beq` branch at 0x5978 targets 0x56fc and is always taken.
  The `beq` branch at 0x5980 targets 0x5718 and is always taken.
  The `beq` branch at 0x5988 targets 0x5730 and is always taken.
  The `beq` branch at 0x5990 targets 0x574c and is always taken.
  The `beq` branch at 0x5998 targets 0x58ac and is always taken.
  The `beq` branch at 0x59a0 targets 0x586c and is always taken.
  The `beq` branch at 0x59e4 targets 0x57a0 and is always taken.
  The `bne` branch at 0x59f4 targets 0x5968, is taken when a4(=0x1) != a3(=[a0+108]:1), and falls through when a4(=0x1) == a3(=[a0+108]:1).
  The `beq` branch at 0x5a04 targets 0x5970 and is always taken.
  The `beq` branch at 0x5a14 targets 0x5a3c, is taken when (a7(=[a0+143]:1) & 0x2) == 0, and falls through when (a7(=[a0+143]:1) & 0x2) != 0.
  The `bne` branch at 0x5a1c targets 0x5840, is taken when s8(?) != s3(=-0x1), and falls through when s8(?) == s3(=-0x1).
  The `beq` branch at 0x5a24 targets 0x5938 and is always taken.
  The `beq` branch at 0x5a34 targets 0x5960 and is always taken.
  The `bne` branch at 0x5a40 targets 0x5840, is taken when s8(?) != s3(=-0x1), and falls through when s8(?) == s3(=-0x1).
  The `beq` branch at 0x5a50 targets 0x5848 and is always taken.
  The return at 0x5914 has v0 = 0x0.

- `mvppath_send_available` in `usr/cpu/sysgen/IP32boot/mvp.o` at 0xa918 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/mvp.o`.
  Range: 0xa918-0xaba8 (656 bytes).
  It occupies 656 bytes.
  2 such `lbu` accesses load 1 byte from [sym(mvppath_table)] +0x4ab, including `lbu` at 0xa990, `lbu` at 0xaa14.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x4ab, including `lbu` at 0xa99c, `lbu` at 0xaae4.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xa9cc, `lbu` at 0xa9d0, `lbu` at 0xa9e8.
  The `lh` at 0xaa48 loads 2 bytes from a0 (arg0 at entry) +0x468.
  The `lw` at 0xaa54 loads 4 bytes from sym(mvppath_table) +0x0.
  The `lbu` at 0xaa60 loads 1 byte from [sym(mvppath_table)] +0x466.
  The `lw` at 0xaa84 loads 4 bytes from [sym(mvppath_table)] +0x4a0.
  3 such `lw` accesses load 4 bytes from [sym(mvppath_table)] +0x4a4, including `lw` at 0xaa9c, `lw` at 0xab08, `lw` at 0xab2c.
  The `jalr` at 0xa958 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xaac8 calls mvppath_send_events with a0=[sym(mvppath_table)], a1=?, a2=?, a3=sym(mvppath_send_events), a6=[a0+1195]:1.
  The `jalr` at 0xab4c calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jalr` at 0xab90 calls mvppath_send_events with a0=[sym(mvppath_table)], a1=0x10000, a2=?, a3=?.
  The `beq` branch at 0xa948 targets 0xab54, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0xa988 targets 0xaa48 and is always taken.
  The `blez` branch at 0xa994 targets 0xaa30, is taken when a4(=[[sym(mvppath_table)]+1195]:1) <= 0 (signed), and falls through when a4(=[[sym(mvppath_table)]+1195]:1) > 0 (signed).
  The `blez` branch at 0xa9ac targets 0xaa1c, is taken when a6(=[a0+1195]:1) <= 0 (signed), and falls through when a6(=[a0+1195]:1) > 0 (signed).
  The `beq` branch at 0xa9c4 targets 0xa9e0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0xa9d4 targets 0xa9e0, is taken when a2(?) != a3(?), and falls through when a2(?) == a3(?).
  The `beq` branch at 0xa9e0 targets 0xa9fc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0xa9f0 targets 0xa9fc, is taken when a7(?) != t0(?), and falls through when a7(?) == t0(?).
  The `bne` branch at 0xa9fc targets 0xaac0, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `bne` branch at 0xaa0c targets 0xa9c4, is taken when s2(?) < a6(=[a0+1195]:1) (signed), and falls through when s2(?) >= a6(=[a0+1195]:1) (signed).
  The `bne` branch at 0xaa28 targets 0xa9ac, is taken when t2(?) < a4(=[[sym(mvppath_table)]+1195]:1) (signed), and falls through when t2(?) >= a4(=[[sym(mvppath_table)]+1195]:1) (signed).
  The `beq` branch at 0xaa40 targets 0xab44, is taken when s8(?) >= 0x40 (signed), and falls through when s8(?) < 0x40 (signed).
  The `beq` branch at 0xaa4c targets 0xaa30, is taken when t9(=[a0+1128]:2) == s8(?), and falls through when t9(=[a0+1128]:2) != s8(?).
  The `beq` branch at 0xaa58 targets 0xaa30, is taken when s6(=[sym(mvppath_table)]) == 0, and falls through when s6(=[sym(mvppath_table)]) != 0.
  The `beq` branch at 0xaa68 targets 0xaa30, is taken when (t8(=[[sym(mvppath_table)]+1126]:1) & 0x4) == 0, and falls through when (t8(=[[sym(mvppath_table)]+1126]:1) & 0x4) != 0.
  The `beq` branch at 0xaa74 targets 0xab84, is taken when t9(=a1) == ra(=0x10000), and falls through when t9(=a1) != ra(=0x10000).
  The `beq` branch at 0xaa7c targets 0xab00, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xaa8c targets 0xab20, is taken when v0(=[[sym(mvppath_table)]+1184]) == v1(=0x2), and falls through when v0(=[[sym(mvppath_table)]+1184]) != v1(=0x2).
  The `beq` branch at 0xaa94 targets 0xaa30, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xaaa4 targets 0xaa30, is taken when a1(=[[sym(mvppath_table)]+1188]) != a2(=0x2), and falls through when a1(=[[sym(mvppath_table)]+1188]) == a2(=0x2).
  The `bne` branch at 0xaab0 targets 0xa990, is taken when s5(?) != 0, and falls through when s5(?) == 0.
  The `beq` branch at 0xaab8 targets 0xaa34 and is always taken.
  The `beq` branch at 0xaadc targets 0xaa30, is taken when (s5(?) & a4(?)) == 0, and falls through when (s5(?) & a4(?)) != 0.
  The `bne` branch at 0xaaf0 targets 0xa9bc, is taken when a4(?) < a6(=[a0+1195]:1) (signed), and falls through when a4(?) >= a6(=[a0+1195]:1) (signed).
  The `beq` branch at 0xaaf8 targets 0xaa14 and is always taken.
  The `beq` branch at 0xab00 targets 0xaa30, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0xab10 targets 0xaa30, is taken when a7(=[[sym(mvppath_table)]+1188]) != t0(=0x2), and falls through when a7(=[[sym(mvppath_table)]+1188]) == t0(=0x2).
  The `beq` branch at 0xab18 targets 0xaaac and is always taken.
  The `beq` branch at 0xab24 targets 0xab3c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0xab34 targets 0xaba0, is taken when t2(=[[sym(mvppath_table)]+1188]) == t3(=0x2), and falls through when t2(=[[sym(mvppath_table)]+1188]) != t3(=0x2).
  The `beq` branch at 0xab3c targets 0xa990 and is always taken.
  The `beq` branch at 0xab98 targets 0xaa34 and is always taken.
  The `beq` branch at 0xaba0 targets 0xaaac and is always taken.
  The return at 0xab7c has v0 = one of ?, ret(splx).

- `mvppath_free_memnode` in `usr/cpu/sysgen/IP32boot/mvp.o` at 0xac0c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/mvp.o`.
  Range: 0xac0c-0xb01c (1040 bytes).
  It occupies 1040 bytes.
  The `lh` at 0xac0c loads 2 bytes from a0 (arg0 at entry) +0x468.
  The `lbu` at 0xac34 loads 1 byte from a1 (arg1 at entry) +0xe.
  The `lbu` at 0xac40 loads 1 byte from a1 (arg1 at entry) +0xd.
  21 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xac78, `lbu` at 0xac8c, `lbu` at 0xacd8.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xaccc, `lw` at 0xacec.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x460, including `lw` at 0xae00, `lw` at 0xaea8, `lw` at 0xafe8.
  The `sb` at 0xae08 stores 1 byte to [a0+1120] +0x68.
  The `lbu` at 0xafec loads 1 byte from [a0+1120] +0x68.
  The `jalr` at 0xae9c calls .text+43944 with a0=a0 at entry (arg0), a1=?, a2=0x8, a3=?.
  The `jalr` at 0xaf64 calls .text+43944 with a0=a0 at entry (arg0), a1=?, a2=0x8, a3=?, a5=sym(mvppath_add_preempt), a6=0xc.
  The `beq` branch at 0xac84 targets 0xacb8 and is always taken.
  The `beq` branch at 0xac90 targets 0xaeac, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0xac98 targets 0xaee4, is taken when ra(=0x1) == a0(?), and falls through when ra(=0x1) != a0(?).
  The `beq` branch at 0xaca8 targets 0xad50, is taken when v0(?) >= 0x40 (signed), and falls through when v0(?) < 0x40 (signed).
  The `beq` branch at 0xacb0 targets 0xad54, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xacb8 targets 0xac9c, is taken when t0(=[a0+1128]:2) == v0(?), and falls through when t0(=[a0+1128]:2) != v0(?).
  The `beq` branch at 0xacd0 targets 0xaca0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xace0 targets 0xaca0, is taken when (at(?) & 0x4) == 0, and falls through when (at(?) & 0x4) != 0.
  The `beq` branch at 0xacf0 targets 0xac8c, is taken when a0(?) == v1(=0x3), and falls through when a0(?) != v1(=0x3).
  The `bne` branch at 0xacf8 targets 0xaca0, is taken when a0(?) != a1(=0x4), and falls through when a0(?) == a1(=0x4).
  The `beq` branch at 0xad04 targets 0xaf1c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xad0c targets 0xaca0, is taken when ra(=0x1) != a0(?), and falls through when ra(=0x1) == a0(?).
  The `beq` branch at 0xad14 targets 0xb014, is taken when t1(?) == ra(=0x1), and falls through when t1(?) != ra(=0x1).
  The `beq` branch at 0xad48 targets 0xac9c and is always taken.
  The `beq` branch at 0xad58 targets 0xae90, is taken when a5(?) == a6(=0xc), and falls through when a5(?) != a6(=0xc).
  The `beq` branch at 0xad60 targets 0xae28, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0xad68 targets 0xae74, is taken when t1(?) == ra(=0x1), and falls through when t1(?) != ra(=0x1).
  The `beq` branch at 0xad70 targets 0xae7c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xad78 targets 0xadec, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0xad88 targets 0xadec, is taken when t1(?) != t8(?), and falls through when t1(?) == t8(?).
  The `beq` branch at 0xad98 targets 0xadec, is taken when t9(?) == ra(?), and falls through when t9(?) != ra(?).
  The `beq` branch at 0xada4 targets 0xadd4, is taken when (s0(?) & 0x4) == 0, and falls through when (s0(?) & 0x4) != 0.
  The `beq` branch at 0xadac targets 0xae0c and is always taken.
  The `beq` branch at 0xadb4 targets 0xaf74, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xadbc targets 0xaf7c, is taken when s0(?) == ra(=0x1), and falls through when s0(?) != ra(=0x1).
  The `beq` branch at 0xadc4 targets 0xaf84, is taken when s0(?) == v0(=0x2), and falls through when s0(?) != v0(=0x2).
  The `beq` branch at 0xadcc targets 0xaf8c, is taken when s0(?) == v1(=0x3), and falls through when s0(?) != v1(=0x3).
  The `beq` branch at 0xadd4 targets 0xadec, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0xade0 targets 0xaf58, is taken when (s0(?) & 0x4) == 0, and falls through when (s0(?) & 0x4) != 0.
  The `beq` branch at 0xadec targets 0xae00, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0xadf8 targets 0xae98, is taken when (s0(?) & 0x8) == 0, and falls through when (s0(?) & 0x8) != 0.
  The `beq` branch at 0xae28 targets 0xadd4, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `bne` branch at 0xae38 targets 0xae64, is taken when a1(?) != a2(?), and falls through when a1(?) == a2(?).
  The `beq` branch at 0xae4c targets 0xae64, is taken when a3(?) == a4(?), and falls through when a3(?) != a4(?).
  The `beq` branch at 0xae54 targets 0xadd4, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0xae5c targets 0xae10 and is always taken.
  The `beq` branch at 0xae64 targets 0xae00, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0xae6c targets 0xaddc and is always taken.
  The `beq` branch at 0xae74 targets 0xad78 and is always taken.
  The `beq` branch at 0xae80 targets 0xadb4, is taken when (s0(?) & 0x8) == 0, and falls through when (s0(?) & 0x8) != 0.
  The `beq` branch at 0xae88 targets 0xae28 and is always taken.
  The `beq` branch at 0xae90 targets 0xae10 and is always taken.
  The `beq` branch at 0xaea4 targets 0xae04 and is always taken.
  The `beq` branch at 0xaedc targets 0xac9c and is always taken.
  The `beq` branch at 0xaf14 targets 0xac9c and is always taken.
  The `beq` branch at 0xaf1c targets 0xb00c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0xaf50 targets 0xac9c and is always taken.
  The `beq` branch at 0xaf6c targets 0xadec and is always taken.
  The `beq` branch at 0xaf74 targets 0xae28 and is always taken.
  The `beq` branch at 0xaf7c targets 0xad78 and is always taken.
  The `beq` branch at 0xaf84 targets 0xae28 and is always taken.
  The `bne` branch at 0xafc0 targets 0xafd8, is taken when a0(?) != v1(?), and falls through when a0(?) == v1(?).
  The `beq` branch at 0xafc8 targets 0xafe8, is taken when a0(?) == v0(?), and falls through when a0(?) != v0(?).
  The `beq` branch at 0xafd0 targets 0xad78 and is always taken.
  The `bne` branch at 0xafd8 targets 0xafe8, is taken when a0(?) != v0(?), and falls through when a0(?) == v0(?).
  The `beq` branch at 0xafe0 targets 0xae28 and is always taken.
  The `beq` branch at 0xaff4 targets 0xae28, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0xaffc targets 0xadd4, is taken when s1(?) != ra(=0x1), and falls through when s1(?) == ra(=0x1).
  The `beq` branch at 0xb004 targets 0xad78 and is always taken.
  The `beq` branch at 0xb00c targets 0xae0c and is always taken.
  The `beq` branch at 0xb014 targets 0xae0c and is always taken.
  The return at 0xae20 has v0 = one of ?, -0x1.

- `mvppath_check_conflicts` in `usr/cpu/sysgen/IP32boot/mvp.o` at 0xb01c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/mvp.o`.
  Range: 0xb01c-0xb268 (588 bytes).
  It occupies 588 bytes.
  The `lw` at 0xb034 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lbu` at 0xb058 loads 1 byte from a1 (arg1 at entry) +0xc.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x468, including `lh` at 0xb080, `lh` at 0xb14c.
  2 such `lw` accesses load 4 bytes from sym(mvppath_table) +0x0, including `lw` at 0xb0a4, `lw` at 0xb158.
  2 such `lbu` accesses load 1 byte from [sym(mvppath_table)] +0x466, including `lbu` at 0xb0b0, `lbu` at 0xb164.
  The `lbu` at 0xb0c0 loads 1 byte from [sym(mvppath_table)] +0x46c.
  The `lw` at 0xb0cc loads 4 bytes from [sym(mvppath_table)] +0x4a0.
  The `sb` at 0xb0f0 stores 1 byte to a0 (arg0 at entry) +0x46c.
  The `lw` at 0xb0f4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from [sym(mvppath_table)] +0x4a4, including `lw` at 0xb128, `lw` at 0xb17c.
  The `lbu` at 0xb188 loads 1 byte from [sym(mvppath_table)] +0x4ab.
  The `lbu` at 0xb198 loads 1 byte from a1 (arg1 at entry) +0xf.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xb1a8, `lbu` at 0xb1b0.
  The `lbu` at 0xb244 loads 1 byte from a1 (arg1 at entry) +0xe.
  The `sb` at 0xb25c stores 1 byte to ?.
  The `jalr` at 0xb0e8 calls .text+43944 with a0=a0 at entry (arg0), a1=[sym(mvppath_table)], a2=0x8, a3=a3 at entry (arg3).
  The `jalr` at 0xb134 calls .text+43944 with a0=a0 at entry (arg0), a1=[sym(mvppath_table)], a2=0x80000, a3=?, a7=[a1+15]:1.
  The `jalr` at 0xb230 calls .text+44044 with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=sym(mvppath_free_memnode).
  The `bne` branch at 0xb050 targets 0xb0f4, is taken when at(=[a1+4]) < 0x3 (signed), and falls through when at(=[a1+4]) >= 0x3 (signed).
  The `beq` branch at 0xb060 targets 0xb228, is taken when a0(=[a1+12]:1) == v0(=0x1), and falls through when a0(=[a1+12]:1) != v0(=0x1).
  The `beq` branch at 0xb068 targets 0xb210, is taken when v0(=0x2) == a0(=[a1+12]:1), and falls through when v0(=0x2) != a0(=[a1+12]:1).
  The `beq` branch at 0xb084 targets 0xb09c and is always taken.
  The `beq` branch at 0xb094 targets 0xb0f0, is taken when s0(?) >= 0x40 (signed), and falls through when s0(?) < 0x40 (signed).
  The `beq` branch at 0xb09c targets 0xb08c, is taken when a0(=[a0+1128]:2) == s0(?), and falls through when a0(=[a0+1128]:2) != s0(?).
  The `beq` branch at 0xb0a8 targets 0xb08c, is taken when a1(=[sym(mvppath_table)]) == 0, and falls through when a1(=[sym(mvppath_table)]) != 0.
  The `beq` branch at 0xb0b8 targets 0xb08c, is taken when (t9(=[[sym(mvppath_table)]+1126]:1) & 0x4) == 0, and falls through when (t9(=[[sym(mvppath_table)]+1126]:1) & 0x4) != 0.
  The `bne` branch at 0xb0c4 targets 0xb08c, is taken when s4(=one of 0x2, 0x3) != ra(=[[sym(mvppath_table)]+1132]:1), and falls through when s4(=one of 0x2, 0x3) == ra(=[[sym(mvppath_table)]+1132]:1).
  The `beq` branch at 0xb0d0 targets 0xb220, is taken when v0(=[[sym(mvppath_table)]+1184]) == s3(=0x4), and falls through when v0(=[[sym(mvppath_table)]+1184]) != s3(=0x4).
  The `bne` branch at 0xb0d8 targets 0xb08c, is taken when v0(=[[sym(mvppath_table)]+1184]) != a2(=0x3), and falls through when v0(=[[sym(mvppath_table)]+1184]) == a2(=0x3).
  The `bne` branch at 0xb108 targets 0xb1e0, is taken when v0(=[a1+8]) < 0x3 (signed), and falls through when v0(=[a1+8]) >= 0x3 (signed).
  The `beq` branch at 0xb120 targets 0xb14c and is always taken.
  The `beq` branch at 0xb12c targets 0xb218, is taken when t8(=[[sym(mvppath_table)]+1188]) == s3(=0x4), and falls through when t8(=[[sym(mvppath_table)]+1188]) != s3(=0x4).
  The `beq` branch at 0xb144 targets 0xb1e0, is taken when s0(?) >= 0x40 (signed), and falls through when s0(?) < 0x40 (signed).
  The `beq` branch at 0xb150 targets 0xb13c, is taken when ra(=[a0+1128]:2) == s0(?), and falls through when ra(=[a0+1128]:2) != s0(?).
  The `beq` branch at 0xb15c targets 0xb13c, is taken when a1(=[sym(mvppath_table)]) == 0, and falls through when a1(=[sym(mvppath_table)]) != 0.
  The `beq` branch at 0xb16c targets 0xb13c, is taken when (at(=[[sym(mvppath_table)]+1126]:1) & 0x4) == 0, and falls through when (at(=[[sym(mvppath_table)]+1126]:1) & 0x4) != 0.
  The `bne` branch at 0xb174 targets 0xb188, is taken when s4(?) != 0, and falls through when s4(?) == 0.
  The `bne` branch at 0xb180 targets 0xb13c, is taken when v0(=[[sym(mvppath_table)]+1188]) != s3(=0x4), and falls through when v0(=[[sym(mvppath_table)]+1188]) == s3(=0x4).
  The `blez` branch at 0xb190 targets 0xb13c, is taken when t2(=[[sym(mvppath_table)]+1195]:1) <= 0 (signed), and falls through when t2(=[[sym(mvppath_table)]+1195]:1) > 0 (signed).
  The `blez` branch at 0xb19c targets 0xb1c8, is taken when a7(=[a1+15]:1) <= 0 (signed), and falls through when a7(=[a1+15]:1) > 0 (signed).
  The `beq` branch at 0xb1b8 targets 0xb128, is taken when v1(?) == t0(?), and falls through when v1(?) != t0(?).
  The `bne` branch at 0xb1c0 targets 0xb1b0, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0xb1d0 targets 0xb19c, is taken when t1(?) < t2(=[[sym(mvppath_table)]+1195]:1) (signed), and falls through when t1(?) >= t2(=[[sym(mvppath_table)]+1195]:1) (signed).
  The `beq` branch at 0xb1d8 targets 0xb140 and is always taken.
  The `beq` branch at 0xb210 targets 0xb074 and is always taken.
  The `beq` branch at 0xb218 targets 0xb1e4 and is always taken.
  The `beq` branch at 0xb220 targets 0xb1e4 and is always taken.
  The `beq` branch at 0xb23c targets 0xb260, is taken when v0(=ret(.text+44044)) == a4(=-0x1), and falls through when v0(=ret(.text+44044)) != a4(=-0x1).
  The `beq` branch at 0xb258 targets 0xb0f0 and is always taken.
  The `beq` branch at 0xb260 targets 0xb1e4 and is always taken.
  The return at 0xb208 has v0 = one of -0x1, 0x0.

- `mvppath_setup` in `usr/cpu/sysgen/IP32boot/mvp.o` at 0xb268 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/mvp.o`.
  Range: 0xb268-0xb4fc (660 bytes).
  It occupies 660 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lw` at 0xb2a8, `lw` at 0xb3e8.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0xb2c0, `lw` at 0xb3e0.
  The `lw` at 0xb2d4 loads 4 bytes from a0 (arg0 at entry) +0x4a4.
  The `lw` at 0xb2e0 loads 4 bytes from a0 (arg0 at entry) +0x4a0.
  The `sw` at 0xb2f0 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lbu` at 0xb30c loads 1 byte from a0 (arg0 at entry) +0x466.
  The `sb` at 0xb324 stores 1 byte to a0 (arg0 at entry) +0x466.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7b0, including `lw` at 0xb328, `lw` at 0xb37c.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0xb34c, `sw` at 0xb358, `sw` at 0xb364.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xb350, `lw` at 0xb390, `lw` at 0xb39c.
  The `lbu` at 0xb3ac loads 1 byte from ?.
  The `sw` at 0xb4ec stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `sw` at 0xb4f0 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `sw` at 0xb4f8 stores 4 bytes to a0 (arg0 at entry) +0x7b0.
  The `jalr` at 0xb290 calls bzero with a0=a0+1968, a1=0x204, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xb2a0 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xb2f8 calls bcopy with a0=a1 at entry (arg1), a1=a0+1180, a2=0xdc, a3=?.
  The `jalr` at 0xb320 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jalr` at 0xb344 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xb360 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jalr` at 0xb374 calls mvppath_send_events with a0=?, a1=?, a2=?, a3=sym(mvppath_send_events).
  The `jalr` at 0xb3c0 calls mvptransfer_shutdown with a0=?, a1=?, a2=?, a3=sym(mvppath_send_events), a4=[a0+1968].
  The `jalr` at 0xb460 calls mvppath_send_available with a0=a0 at entry (arg0), a1=one of 0x20, 0x100000, 0x100020, a2=?, a3=sym(mvppath_send_available), a4=0x100000.
  The `jalr` at 0xb4a8 calls .text+45084 with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a4=sym(mvppath_check_conflicts).
  The `beq` branch at 0xb2b8 targets 0xb49c, is taken when t8(=[a1+4]) >= 0x3 (signed), and falls through when t8(=[a1+4]) < 0x3 (signed).
  The `beq` branch at 0xb2c8 targets 0xb4a0, is taken when t9(=[a1+8]) >= 0x3 (signed), and falls through when t9(=[a1+8]) < 0x3 (signed).
  The `blez` branch at 0xb334 targets 0xb3e0, is taken when a4(=[a0+1968]) <= 0 (signed), and falls through when a4(=[a0+1968]) > 0 (signed).
  The `beq` branch at 0xb33c targets 0xb390 and is always taken.
  The `beq` branch at 0xb388 targets 0xb3e0, is taken when s2(?) >= a4(=[a0+1968]) (signed), and falls through when s2(?) < a4(=[a0+1968]) (signed).
  The `beq` branch at 0xb394 targets 0xb3d0, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0xb3a4 targets 0xb36c, is taken when (s7(?) & 0x8) == 0, and falls through when (s7(?) & 0x8) != 0.
  The `bne` branch at 0xb3b4 targets 0xb344, is taken when a7(?) < 0x4 (signed), and falls through when a7(?) >= 0x4 (signed).
  The `beq` branch at 0xb3c8 targets 0xb344 and is always taken.
  The `bne` branch at 0xb3d8 targets 0xb390, is taken when s2(?) < a4(=[a0+1968]) (signed), and falls through when s2(?) >= a4(=[a0+1968]) (signed).
  The `beq` branch at 0xb404 targets 0xb434, is taken when a2(=[a1+4]) >= 0x3 (signed), and falls through when a2(=[a1+4]) < 0x3 (signed).
  The `bne` branch at 0xb40c targets 0xb4c4, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0xb414 targets 0xb4dc, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xb424 targets 0xb4dc, is taken when a2(=[a0+1188]) < 0x3 (signed), and falls through when a2(=[a0+1188]) >= 0x3 (signed).
  The `beq` branch at 0xb42c targets 0xb44c and is always taken.
  The `beq` branch at 0xb434 targets 0xb46c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xb43c targets 0xb46c, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0xb44c targets 0xb46c, is taken when s2(=one of 0x100000, 0x100020) == 0, and falls through when s2(=one of 0x100000, 0x100020) != 0.
  The `beq` branch at 0xb4b4 targets 0xb4e4, is taken when v0(=ret(.text+45084)) == a5(=-0x1), and falls through when v0(=ret(.text+45084)) != a5(=-0x1).
  The `beq` branch at 0xb4bc targets 0xb2d4 and is always taken.
  The `beq` branch at 0xb4c4 targets 0xb46c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xb4cc targets 0xb468, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0xb4d4 targets 0xb44c and is always taken.
  The `beq` branch at 0xb4dc targets 0xb454 and is always taken.
  The `beq` branch at 0xb4f4 targets 0xb2d4 and is always taken.
  The return at 0xb494 has v0 = one of 0x0, 0xd.

- `mvpreg_setpassthru` in `usr/cpu/sysgen/IP32boot/mvp.o` at 0xb910
  **Inferred.** Loads fields of its pointer argument at offsets 0x61, 0x74, 0x9c, 0xc8, 0x258, 0x268 and 0x2b0. It also makes stores at 0xba94 (byte, +0x6b), 0xba98 (byte, +0x6a), 0xbb30 to 0xbb58 (doubleword stores, some conditional on the loaded values being nonzero or differing) and 0xbd0c (byte, +0x6e); the facts do not show which base register those stores use. It calls mvpavio_preset_genlock at 0xb954, then splhi at 0xb978, then mvpavio_select_input at 0xb9d8, mvpavio_change_timing at 0xb9f0, mvpavio_preset_output at 0xba70 and splx at 0xbb70, followed by mvpavio_change_timing at 0xbb80, mvpavio_select_genlock at 0xbba8 and 0xbc18 and mvpavio_select_output at 0xbbc8, with a second splx at 0xbc8c; which calls run on which path depends on the branches shown. mvpavio_preset_genlock is called before splhi, and the later calls follow the splx at 0xbb70. The name suggests it sets up the video pass-through path, but the rendered facts do not show what the pass-through state is, so the role is only partly derived.
  Reviewed: 2026-11-12

- `move_mipmap` in `usr/cpu/sysgen/IP32boot/mvp.o` at 0xcb90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/mvp.o`.
  Range: 0xcb90-0xce2c (668 bytes).
  It occupies 668 bytes.
  The `lw` at 0xcb9c loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xcbbc loads 4 bytes from a1 (arg1 at entry) +0x0.
  10 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0xcc04, `lhu` at 0xcc08, `lhu` at 0xcc0c.
  The `lw` at 0xcc1c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xcc24 loads 4 bytes from ?.
  12 such `ld` accesses load 8 bytes from ?, including `ld` at 0xcc3c, `ld` at 0xcc44, `ld` at 0xcc58.
  12 such `sd` accesses store 8 bytes to ?, including `sd` at 0xcc40, `sd` at 0xcc50, `sd` at 0xcc60.
  The `lhu` at 0xce28 loads 2 bytes from [a1+4] +0x8.
  The `jalr` at 0xcd68 calls bcopy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xcda0 calls bcopy with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xcbdc targets 0xcde0, is taken when a5(=[a1]) <= 0 (signed), and falls through when a5(=[a1]) > 0 (signed).
  The `beq` branch at 0xcbe4 targets 0xce20 and is always taken.
  The `blez` branch at 0xcbfc targets 0xcde0, is taken when a7(?) <= 0 (signed), and falls through when a7(?) > 0 (signed).
  The `blez` branch at 0xcc2c targets 0xcbec, is taken when t9(?) <= 0 (signed), and falls through when t9(?) > 0 (signed).
  The `beq` branch at 0xcc34 targets 0xce14 and is always taken.
  The `beq` branch at 0xcc88 targets 0xcbec, is taken when s4(?) >= a3(?) (signed), and falls through when s4(?) < a3(?) (signed).
  The `beq` branch at 0xcca0 targets 0xcd54, is taken when a2(?) >= 0x21 (signed), and falls through when a2(?) < 0x21 (signed).
  The `beq` branch at 0xcca8 targets 0xcd20, is taken when s7(=0x20) == a2(?), and falls through when s7(=0x20) != a2(?).
  The `beq` branch at 0xccb0 targets 0xcd38, is taken when t0(=0x10) == a2(?), and falls through when t0(=0x10) != a2(?).
  The `beq` branch at 0xccb8 targets 0xcd48, is taken when t1(=0x8) == a2(?), and falls through when t1(=0x8) != a2(?).
  The `beq` branch at 0xccc0 targets 0xcdbc, is taken when t2(=0x4) == a2(?), and falls through when t2(=0x4) != a2(?).
  The `beq` branch at 0xccc8 targets 0xcdc8, is taken when t3(=0x2) == a2(?), and falls through when t3(=0x2) != a2(?).
  The `beq` branch at 0xccd0 targets 0xcc6c, is taken when s8(=a2) == 0, and falls through when s8(=a2) != 0.
  The `beq` branch at 0xccec targets 0xcc3c, is taken when a4(?) == s7(=0x20), and falls through when a4(?) != s7(=0x20).
  The `beq` branch at 0xccf4 targets 0xcc54, is taken when a4(?) == t0(=0x10), and falls through when a4(?) != t0(=0x10).
  The `beq` branch at 0xccfc targets 0xcc64, is taken when a4(?) == t1(=0x8), and falls through when a4(?) != t1(=0x8).
  The `beq` branch at 0xcd04 targets 0xcdd4, is taken when a4(?) == t2(=0x4), and falls through when a4(?) != t2(=0x4).
  The `bne` branch at 0xcd0c targets 0xcc6c, is taken when a4(?) != t3(=0x2), and falls through when a4(?) == t3(=0x2).
  The `beq` branch at 0xcd18 targets 0xcc6c and is always taken.
  The `beq` branch at 0xcd4c targets 0xccd0 and is always taken.
  The `beq` branch at 0xcd7c targets 0xcc6c, is taken when s8(=a2) == 0, and falls through when s8(=a2) != 0.
  The `beq` branch at 0xcdb4 targets 0xcc6c and is always taken.
  The `beq` branch at 0xcdc0 targets 0xccd0 and is always taken.
  The `beq` branch at 0xcdcc targets 0xccd0 and is always taken.
  The `beq` branch at 0xcdd8 targets 0xcc6c and is always taken.
  The `beq` branch at 0xce18 targets 0xcc94 and is always taken.
  The `beq` branch at 0xce24 targets 0xcc08 and is always taken.
  The return at 0xce0c has v0 = 0x0.

- `mvpmipmap_move_mipmap` in `usr/cpu/sysgen/IP32boot/mvp.o` at 0xce2c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/mvp.o`.
  Range: 0xce2c-0xd0a4 (632 bytes).
  It occupies 632 bytes.
  The `lbu` at 0xce34 loads 1 byte from a0 (arg0 at entry) +0xbe2.
  4 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xbdf, including `lbu` at 0xce94, `lbu` at 0xcf38, `lbu` at 0xcf9c.
  4 such `lw` accesses load 4 bytes from (a1 + ([a0+3039]:1 << 0x2)) +0x0, including `lw` at 0xceb0, `lw` at 0xcf54, `lw` at 0xcfb8.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xbe0, including `lbu` at 0xceb8, `lbu` at 0xcfc0, `lbu` at 0xd044.
  3 such `lw` accesses load 4 bytes from (a1 + ([a0+3040]:1 << 0x2)) +0x0, including `lw` at 0xcecc, `lw` at 0xcfd4, `lw` at 0xd058.
  The `lbu` at 0xced4 loads 1 byte from a0 (arg0 at entry) +0xbe1.
  The `lw` at 0xcee8 loads 4 bytes from (a1 + ([a0+3041]:1 << 0x2)) +0x0.
  The `jalr` at 0xceac calls tile_mapin with a0=[(a1 + ([a0+3039]:1 << 0x2))], a1=0x11, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[a0+3042]:1.
  The `jalr` at 0xcec8 calls tile_mapin with a0=[(a1 + ([a0+3040]:1 << 0x2))], a1=0x11, a2=?, a3=?.
  The `jalr` at 0xcee4 calls tile_mapin with a0=[(a1 + ([a0+3041]:1 << 0x2))], a1=0x11, a2=?, a3=?.
  The `jalr` at 0xcf04 calls .text+52112 with a0=sp-48, a1=sym(.data)+3232, a2=0x0, a3=sym(move_mipmap).
  The `jalr` at 0xcf18 calls tile_mapout with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf20 calls tile_mapout with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf28 calls tile_mapout with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf50 calls tile_mapin with a0=[(a1 + ([a0+3039]:1 << 0x2))], a1=0x11, a2=sym(tile_mapin), a3=a3 at entry (arg3), a4=[a0+3042]:1.
  The `jalr` at 0xcf78 calls .text+52112 with a0=sp-48, a1=sym(.data)+3208, a2=0x1, a3=sym(move_mipmap).
  The `jalr` at 0xcf8c calls tile_mapout with a0=?, a1=?, a2=?, a3=?, a4=sym(tile_mapout).
  The `jalr` at 0xcfb4 calls tile_mapin with a0=[(a1 + ([a0+3039]:1 << 0x2))], a1=0x11, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[a0+3042]:1.
  The `jalr` at 0xcfd0 calls tile_mapin with a0=[(a1 + ([a0+3040]:1 << 0x2))], a1=0x11, a2=?, a3=?.
  The `jalr` at 0xcff4 calls .text+52112 with a0=sp-48, a1=sym(.data)+3216, a2=0x1, a3=sym(move_mipmap).
  The `jalr` at 0xd008 calls tile_mapout with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd010 calls tile_mapout with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd038 calls tile_mapin with a0=[(a1 + ([a0+3039]:1 << 0x2))], a1=0x11, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[a0+3042]:1.
  The `jalr` at 0xd054 calls tile_mapin with a0=[(a1 + ([a0+3040]:1 << 0x2))], a1=0x11, a2=?, a3=?.
  The `jalr` at 0xd078 calls .text+52112 with a0=sp-48, a1=sym(.data)+3224, a2=0x0, a3=sym(move_mipmap).
  The `jalr` at 0xd08c calls tile_mapout with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd094 calls tile_mapout with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xce50 targets 0xcf38, is taken when a4(=[a0+3042]:1) == at(=0x2), and falls through when a4(=[a0+3042]:1) != at(=0x2).
  The `beq` branch at 0xce5c targets 0xcf9c, is taken when a4(=[a0+3042]:1) == v0(=0x1), and falls through when a4(=[a0+3042]:1) != v0(=0x1).
  The `beq` branch at 0xce64 targets 0xd020, is taken when a4(=[a0+3042]:1) == v1(=0x3), and falls through when a4(=[a0+3042]:1) != v1(=0x3).
  The `beq` branch at 0xce70 targets 0xce94, is taken when a4(=[a0+3042]:1) == a0(=0x4), and falls through when a4(=[a0+3042]:1) != a0(=0x4).
  The `beq` branch at 0xcf30 targets 0xce7c and is always taken.
  The `beq` branch at 0xcf94 targets 0xce7c and is always taken.
  The `beq` branch at 0xd018 targets 0xce7c and is always taken.
  The `beq` branch at 0xd09c targets 0xce7c and is always taken.
  The return at 0xce8c has v0 = one of 0x16, ret(.text+52112).
