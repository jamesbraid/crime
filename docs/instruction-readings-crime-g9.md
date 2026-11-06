# Instruction readings from hostfacts

Each entry records selected software behavior from its exact binary range. The readings are established for those binaries and do not establish hardware behavior.

- `ecc_fixmem` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xddec (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xddec-0xde60 (116 bytes).
  It occupies 116 bytes.
  The `ld` at 0xde18 loads 8 bytes from table(sym(.bss)+6144) +0x68.
  The `lw` at 0xde1c loads 4 bytes from table(sym(.bss)+6144) +0x7c.
  2 such `sd` accesses store 8 bytes to a2 (arg2 at entry) +0x8, including `sd` at 0xde28, `sd` at 0xde5c.
  The `lw` at 0xde2c loads 4 bytes from table(sym(.bss)+6144) +0x80.
  The `sw` at 0xde30 stores 4 bytes to table(sym(.bss)+6144) +0x84.
  The `sw` at 0xde34 stores 4 bytes to table(sym(.bss)+6144) +0x88.
  The `ld` at 0xde3c loads 8 bytes from abs 0xffffffffb4000260.
  The `sw` at 0xde48 stores 4 bytes to table(sym(.bss)+6144) +0x8c.
  The `lw` at 0xde4c loads 4 bytes from table(sym(.bss)+6144) +0x78.
  The `bgez` branch at 0xde14 targets 0xde4c, is taken when v0(=([sym(r4000_config)] << 0x2e)) >= 0 (signed), and falls through when v0(=([sym(r4000_config)] << 0x2e)) < 0 (signed).
  The `beq` branch at 0xde58 targets 0xde2c and is always taken.
  The return at 0xde44 has v0 = 0x1.
- `ecc_print_msg` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xe930 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xe930-0xea4c (284 bytes).
  It occupies 284 bytes.
  The `lw` at 0xe9b8 loads 4 bytes from ((a0 << 0x2) + sym(real_data_eccsyns+312)) +0x17a0.
  The `lw` at 0xe9c0 loads 4 bytes from ([((a0 << 0x2) + sym(real_data_eccsyns+312))+6048] + (a1 << 0x2)) +0x0.
  The `lw` at 0xe9d4 loads 4 bytes from ((a0 << 0x2) + sym(real_data_eccsyns+312)) +0x1790.
  The `sw` at 0xe9ec stores 4 bytes to ([((a0 << 0x2) + sym(real_data_eccsyns+312))+6048] + (a1 << 0x2)) +0x0.
  The `jalr` at 0xe9dc calls (unknown callee) with a0=sym(.rodata)+8352, a1=?, a2=[([((a0 << 0x2) + sym(real_data_eccsyns+312))+6048] + (a1 << 0x2))], a3=?, a4=sym(real_data_eccsyns+312), a7=-0x1.
  The `jal` at 0xea24 calls ecc_print_msg [0xe930] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xe974 targets 0xe980, is taken when at(=[sym(pm_use_qprintf)]) == 0, and falls through when at(=[sym(pm_use_qprintf)]) != 0.
  The `beq` branch at 0xe984 targets 0xea10, is taken when a0 == a7(=-0x1), and falls through when a0 != a7(=-0x1).
  The `beq` branch at 0xe98c targets 0xe9b0, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0xe994 targets 0xe9b0, is taken when a0 == a1(=0x1), and falls through when a0 != a1(=0x1).
  The `beq` branch at 0xe99c targets 0xe9b0, is taken when a0 == t1(=0x2), and falls through when a0 != t1(=0x2).
  The `beq` branch at 0xe9a4 targets 0xe9f8 and is always taken.
  The `beq` branch at 0xe9c4 targets 0xe9f0, is taken when a2(=[([((a0 << 0x2) + sym(real_data_eccsyns+312))+6048] + (a1 << 0x2))]) == 0, and falls through when a2(=[([((a0 << 0x2) + sym(real_data_eccsyns+312))+6048] + (a1 << 0x2))]) != 0.
  The `beq` branch at 0xe9cc targets 0xea44, is taken when s3(=a3) == 0, and falls through when s3(=a3) != 0.
  The `beq` branch at 0xe9e4 targets 0xe9f4, is taken when s2(=a2) == 0, and falls through when s2(=a2) != 0.
  The `bne` branch at 0xea34 targets 0xea18, is taken when s0(?) < 0x3 (signed), and falls through when s0(?) >= 0x3 (signed).
  The `beq` branch at 0xea3c targets 0xe9f4 and is always taken.
  The `beq` branch at 0xea44 targets 0xe9d8 and is always taken.
  The return at 0xea08 has v0 = one of -0x1, 0x0.
  The instructions from 0xe9ac to 0xe9ac are not reached by any path from the entry, and their branches are not listed.
- `step1` in `sbin/stand/symmon.IP32` at 0xa0011ce0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0011ce0-0xa0011eac (460 bytes).
  It occupies 460 bytes.
  8 such `lw` accesses load 4 bytes from abs 0xffffffffa0058e00, including `lw` at 0xa0011cfc, `lw` at 0xa0011d20, `lw` at 0xa0011d58.
  3 such `lw` accesses load 4 bytes from [0xffffffffa0058e00] +0x204, including `lw` at 0xa0011d08, `lw` at 0xa0011d64, `lw` at 0xa0011d6c.
  3 such `ld` accesses load 8 bytes from [0xffffffffa0058e00] +0x200, including `ld` at 0xa0011d24, `ld` at 0xa0011dc0, `ld` at 0xa0011e78.
  The `sw` at 0xa0011de8 stores 4 bytes to abs 0xffffffffa0058e5c.
  5 such `lw` accesses load 4 bytes from abs 0xffffffffa0037ed0, including `lw` at 0xa0011dec, `lw` at 0xa0011dfc, `lw` at 0xa0011e08.
  The `sw` at 0xa0011e48 stores 4 bytes to abs 0xffffffffa0037ed0.
  2 such `ld` accesses load 8 bytes from [0xffffffffa0058e00] +0x218, including `ld` at 0xa0011e50, `ld` at 0xa0011e60.
  The `sw` at 0xa0011e58 stores 4 bytes to abs 0xffffffffa0037ed4.
  The `sd` at 0xa0011e6c stores 8 bytes to [0xffffffffa0058e00] +0x218.
  The `jal` at 0xa0011d04 calls getinst [0xa0012918] with a0=[[0xffffffffa0058e00]+516], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa0011d10 calls is_branch [0xa0012e7c] with a0=ret(getinst), a1=?, a2=?, a3=?.
  The `jal` at 0xa0011d30 calls getinst [0xa0012918] with a0=([[0xffffffffa0058e00]+512]:8+4 << 0x0), a1=0x4, a2=?, a3=?.
  The `jal` at 0xa0011d38 calls is_branch [0xa0012e7c] with a0=ret(getinst), a1=?, a2=?, a3=?.
  The `jal` at 0xa0011d50 calls _dbg_error [0xa0018428] with a0=0xffffffffa0031b08, a1=0x0, a2=?, a3=?.
  The `jal` at 0xa0011d60 calls branch_target [0xa00130ec] with a0=ret(getinst), a1=[[0xffffffffa0058e00]+516], a2=?, a3=?.
  The `jal` at 0xa0011d78 calls is_conditional [0xa001306c] with a0=ret(getinst), a1=?, a2=[[0xffffffffa0058e00]+516], a3=?.
  The `jal` at 0xa0011d8c calls printf [0xa002e620] with a0=0xffffffffa0031b28, a1=?, a2=?, a3=?, a4=0xffffffffa00319b0.
  The `jal` at 0xa0011da0 calls new_brkpt [0xa00124b0] with a0=ret(branch_target), a1=a0 at entry (arg0), a2=0x1, a3=?.
  The `jal` at 0xa0011da8 calls is_conditional [0xa001306c] with a0=ret(getinst), a1=?, a2=?, a3=?.
  The `jal` at 0xa0011dd0 calls new_brkpt [0xa00124b0] with a0=([[0xffffffffa0058e00]+512]:8+8 << 0x0), a1=a0 at entry (arg0), a2=0x1, a3=0x8.
  The `jal` at 0xa0011e2c calls bp_continue [0xa00123c0] with a0=0x0, a1=[0xffffffffa0037ed0], a2=?, a3=[0xffffffffa0037ed0], a6=-0x2.
  The `jal` at 0xa0011e88 calls new_brkpt [0xa00124b0] with a0=([[0xffffffffa0058e00]+512]:8+4 << 0x0), a1=a0 at entry (arg0), a2=0x1, a3=0x4.
  The `jal` at 0xa0011e9c calls _dbg_error [0xa0018428] with a0=0xffffffffa0031b50, a1=0x0, a2=?, a3=?, a4=0xffffffffa00319b0.
  The `beq` branch at 0xa0011d18 targets 0xa0011e70, is taken when v0(=ret(is_branch)) == 0, and falls through when v0(=ret(is_branch)) != 0.
  The `beq` branch at 0xa0011d40 targets 0xa0011d58, is taken when v0(=ret(is_branch)) == 0, and falls through when v0(=ret(is_branch)) != 0.
  The `bne` branch at 0xa0011d70 targets 0xa0011d9c, is taken when v0(=ret(branch_target)) != a2(=[[0xffffffffa0058e00]+516]), and falls through when v0(=ret(branch_target)) == a2(=[[0xffffffffa0058e00]+516]).
  The `beq` branch at 0xa0011d84 targets 0xa0011e98, is taken when v0(=ret(is_conditional)) == 0, and falls through when v0(=ret(is_conditional)) != 0.
  The `beq` branch at 0xa0011d94 targets 0xa0011da8 and is always taken.
  The `beq` branch at 0xa0011db0 targets 0xa0011ddc, is taken when v0(=ret(is_conditional)) == 0, and falls through when v0(=ret(is_conditional)) != 0.
  The `beq` branch at 0xa0011df4 targets 0xa0011e20, is taken when a1(=[0xffffffffa0037ed0]) == a0(=-0x1), and falls through when a1(=[0xffffffffa0037ed0]) != a0(=-0x1).
  The `beq` branch at 0xa0011e00 targets 0xa0011e20, is taken when v1(=[0xffffffffa0037ed0]) == 0, and falls through when v1(=[0xffffffffa0037ed0]) != 0.
  The `beq` branch at 0xa0011e0c targets 0xa0011e20, is taken when a1(=[0xffffffffa0037ed0]) == a0(=-0x1), and falls through when a1(=[0xffffffffa0037ed0]) != a0(=-0x1).
  The `bne` branch at 0xa0011e18 targets 0xa0011e08, is taken when a2(=[0xffffffffa0037ed0]) != 0, and falls through when a2(=[0xffffffffa0037ed0]) == 0.
  The `beq` branch at 0xa0011e24 targets 0xa0011e48, is taken when a3(=[0xffffffffa0037ed0]) == a0(=-0x1), and falls through when a3(=[0xffffffffa0037ed0]) != a0(=-0x1).
  The `beq` branch at 0xa0011e68 targets 0xa0011e28 and is always taken.
  The `beq` branch at 0xa0011e90 targets 0xa0011ddc and is always taken.
  The `beq` branch at 0xa0011ea4 targets 0xa0011da8 and is always taken.
  The return at 0xa0011e40 has v0 = ret(bp_continue).
- `step2` in `sbin/stand/symmon.IP32` at 0xa0011f98 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0011f98-0xa0012130 (408 bytes).
  It occupies 408 bytes.
  7 such `lw` accesses load 4 bytes from abs 0xffffffffa0058e00, including `lw` at 0xa0011fb4, `lw` at 0xa0011fd8, `lw` at 0xa0012020.
  3 such `lw` accesses load 4 bytes from [0xffffffffa0058e00] +0x204, including `lw` at 0xa0011fc0, `lw` at 0xa0012078, `lw` at 0xa0012080.
  4 such `ld` accesses load 8 bytes from [0xffffffffa0058e00] +0x200, including `ld` at 0xa0011fdc, `ld` at 0xa0012028, `ld` at 0xa00120d4.
  The `sw` at 0xa0012058 stores 4 bytes to abs 0xffffffffa0058e5c.
  The `jal` at 0xa0011fbc calls getinst [0xa0012918] with a0=[[0xffffffffa0058e00]+516], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa0011fc8 calls is_branch [0xa0012e7c] with a0=ret(getinst), a1=?, a2=?, a3=?.
  The `jal` at 0xa0011fe8 calls getinst [0xa0012918] with a0=([[0xffffffffa0058e00]+512]:8+4 << 0x0), a1=0x4, a2=?, a3=?.
  The `jal` at 0xa0011ff0 calls is_branch [0xa0012e7c] with a0=ret(getinst), a1=?, a2=?, a3=?.
  The `jal` at 0xa0012008 calls _dbg_error [0xa0018428] with a0=0xffffffffa0031b08, a1=0x0, a2=?, a3=?.
  The `jal` at 0xa0012010 calls is_jal [0xa0012f00] with a0=ret(getinst), a1=?, a2=?, a3=?.
  The `jal` at 0xa0012038 calls new_brkpt [0xa00124b0] with a0=([[0xffffffffa0058e00]+512]:8+8 << 0x0), a1=a0 at entry (arg0), a2=0x1, a3=0x8.
  The `jal` at 0xa0012054 calls bp_continue [0xa00123c0] with a0=0x0, a1=0xffffffffa0011f98, a2=?, a3=?.
  The `jal` at 0xa0012074 calls branch_target [0xa00130ec] with a0=ret(getinst), a1=[[0xffffffffa0058e00]+516], a2=?, a3=?.
  The `jal` at 0xa001208c calls is_conditional [0xa001306c] with a0=ret(getinst), a1=?, a2=[[0xffffffffa0058e00]+516], a3=?.
  The `jal` at 0xa00120a0 calls printf [0xa002e620] with a0=0xffffffffa0031b70, a1=?, a2=?, a3=?, a4=0xffffffffa00319b0.
  The `jal` at 0xa00120b4 calls new_brkpt [0xa00124b0] with a0=ret(branch_target), a1=a0 at entry (arg0), a2=0x1, a3=?.
  The `jal` at 0xa00120bc calls is_conditional [0xa001306c] with a0=ret(getinst), a1=?, a2=?, a3=?.
  The `jal` at 0xa00120e4 calls new_brkpt [0xa00124b0] with a0=([[0xffffffffa0058e00]+512]:8+8 << 0x0), a1=a0 at entry (arg0), a2=0x1, a3=0x8.
  The `jal` at 0xa001210c calls new_brkpt [0xa00124b0] with a0=([[0xffffffffa0058e00]+512]:8+4 << 0x0), a1=a0 at entry (arg0), a2=0x1, a3=0x4.
  The `jal` at 0xa0012120 calls _dbg_error [0xa0018428] with a0=0xffffffffa0031b50, a1=0x0, a2=?, a3=?, a4=0xffffffffa00319b0.
  The `beq` branch at 0xa0011fd0 targets 0xa00120f4, is taken when v0(=ret(is_branch)) == 0, and falls through when v0(=ret(is_branch)) != 0.
  The `beq` branch at 0xa0011ff8 targets 0xa0012010, is taken when v0(=ret(is_branch)) == 0, and falls through when v0(=ret(is_branch)) != 0.
  The `beq` branch at 0xa0012018 targets 0xa001206c, is taken when v0(=ret(is_jal)) == 0, and falls through when v0(=ret(is_jal)) != 0.
  The `bne` branch at 0xa0012084 targets 0xa00120b0, is taken when v0(=ret(branch_target)) != a2(=[[0xffffffffa0058e00]+516]), and falls through when v0(=ret(branch_target)) == a2(=[[0xffffffffa0058e00]+516]).
  The `beq` branch at 0xa0012098 targets 0xa001211c, is taken when v0(=ret(is_conditional)) == 0, and falls through when v0(=ret(is_conditional)) != 0.
  The `beq` branch at 0xa00120a8 targets 0xa00120bc and is always taken.
  The `beql` branch at 0xa00120c4 targets 0xa0012044, is taken when v0(=ret(is_conditional)) == 0, and falls through when v0(=ret(is_conditional)) != 0; its branch-likely delay slot `ld s1,0(sp)` at 0xa00120c8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa00120ec targets 0xa0012044 and is always taken.
  The `beq` branch at 0xa0012114 targets 0xa0012044 and is always taken.
  The `beq` branch at 0xa0012128 targets 0xa00120bc and is always taken.
  The return at 0xa0012064 has v0 = ret(bp_continue).
- `bp_continue` in `sbin/stand/symmon.IP32` at 0xa00123c0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00123c0-0xa00124b0 (240 bytes).
  It occupies 240 bytes.
  The `lw` at 0xa00123d8 loads 4 bytes from abs 0xffffffffa0058e00.
  The `lw` at 0xa00123e4 loads 4 bytes from [0xffffffffa0058e00] +0x204.
  The `lw` at 0xa00123e8 loads 4 bytes from abs 0xffffffffa0001010.
  The `sw` at 0xa0012460 stores 4 bytes to abs 0xffffffffa0058e3c.
  The `lw` at 0xa0012478 loads 4 bytes from [0xffffffffa0001010] +0x14.
  The `sw` at 0xa0012488 stores 4 bytes to [0xffffffffa0001010] +0x14.
  The `jal` at 0xa00123ec calls getinst_nolock [0xa001288c] with a0=[[0xffffffffa0058e00]+516], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa00123fc calls is_brkpt [0xa0012f8c] with a0=[[0xffffffffa0058e00]+516], a1=?, a2=?, a3=?.
  The `jal` at 0xa0012408 calls is_branch [0xa0012e7c] with a0=ret(getinst_nolock), a1=?, a2=?, a3=?.
  The `jal` at 0xa0012418 calls is_brkpt [0xa0012f8c] with a0=[[0xffffffffa0058e00]+516]+4, a1=?, a2=?, a3=?.
  The `jal` at 0xa0012430 calls suspend_brkpt [0xa0013228] with a0=[[0xffffffffa0058e00]+516], a1=?, a2=?, a3=?.
  The `jal` at 0xa0012440 calls suspend_brkpt [0xa0013228] with a0=[[0xffffffffa0058e00]+516]+4, a1=?, a2=?, a3=?.
  The `jal` at 0xa0012448 calls step1 [0xa0011ce0] with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0xa001245c calls FlushAllCaches [0xa0023994] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa001248c calls _resume_brkpt [0xa0010998] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xa0012410 targets 0xa00124a0, is taken when v0(=ret(is_branch)) == 0, and falls through when v0(=ret(is_branch)) != 0.
  The `beq` branch at 0xa0012420 targets 0xa00124a0, is taken when v0(=ret(is_brkpt)) == 0, and falls through when v0(=ret(is_brkpt)) != 0.
  The `beq` branch at 0xa0012428 targets 0xa0012438, is taken when s2(=ret(is_brkpt)) == 0, and falls through when s2(=ret(is_brkpt)) != 0.
  The `beq` branch at 0xa0012438 targets 0xa0012448, is taken when s4(=one of 0x0, 0x1) == 0, and falls through when s4(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xa001246c targets 0xa001248c, is taken when s1(=[0xffffffffa0001010]) == 0, and falls through when s1(=[0xffffffffa0001010]) != 0.
  The `beq` branch at 0xa0012480 targets 0xa001248c, is taken when (v0(=[[0xffffffffa0001010]+20]) & 0x1) == 0, and falls through when (v0(=[[0xffffffffa0001010]+20]) & 0x1) != 0.
  The `bne` branch at 0xa00124a0 targets 0xa0012430, is taken when s2(=ret(is_brkpt)) != 0, and falls through when s2(=ret(is_brkpt)) == 0.
  The `beq` branch at 0xa00124a8 targets 0xa0012454 and is always taken.
  The return at 0xa0012498 has v0 = ret(_resume_brkpt).
- `getinst_nolock` in `sbin/stand/symmon.IP32` at 0xa001288c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001288c-0xa0012918 (140 bytes).
  It occupies 140 bytes.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xa00128bc, `lw` at 0xa00128c8, `lw` at 0xa00128d8.
  The `jal` at 0xa00128dc calls _inst_vec [0xa0029b9c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0xa0012908 calls _get_memory [0xa001b0d0] with a0=a0 at entry (arg0), a1=0x4, a2=?, a3=?, a7=-0x1.
  The `beq` branch at 0xa00128a4 targets 0xa00128bc and is always taken.
  The `beq` branch at 0xa00128b4 targets 0xa00128dc, is taken when a3(?) >= v0(=0xffffffffa003cc28) (unsigned), and falls through when a3(?) < v0(=0xffffffffa003cc28) (unsigned).
  The `beql` branch at 0xa00128c0 targets 0xa00128b0, is taken when a5(?) == 0, and falls through when a5(?) != 0; its branch-likely delay slot `addiu a3,a3,20` at 0xa00128c4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xa00128cc targets 0xa00128b0, is taken when a6(?) != s0(=a0), and falls through when a6(?) == s0(=a0); its branch-likely delay slot `addiu a3,a3,20` at 0xa00128d0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa00128d4 targets 0xa00128f0 and is always taken.
  The `beq` branch at 0xa00128e8 targets 0xa0012904, is taken when v0(=ret(_inst_vec)) == a7(=-0x1), and falls through when v0(=ret(_inst_vec)) != a7(=-0x1).
  The `beq` branch at 0xa0012910 targets 0xa00128f0 and is always taken.
  The return at 0xa00128fc has v0 = one of ?, ret(_inst_vec), (ret(_get_memory) << 0x0).
  The instructions from 0xa00128ac to 0xa00128ac are not reached by any path from the entry, and their branches are not listed.
- `lookup_bptype` in `sbin/stand/symmon.IP32` at 0xa0012934 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0012934-0xa0012984 (80 bytes).
  It occupies 80 bytes.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xa0012954, `lw` at 0xa0012960, `lw` at 0xa0012980.
  The `beq` branch at 0xa001293c targets 0xa0012954 and is always taken.
  The `beq` branch at 0xa001294c targets 0xa0012974, is taken when a3(?) >= a4(=0xffffffffa003cc28) (unsigned), and falls through when a3(?) < a4(=0xffffffffa003cc28) (unsigned).
  The `beql` branch at 0xa0012958 targets 0xa0012948, is taken when v0(?) == 0, and falls through when v0(?) != 0; its branch-likely delay slot `addiu a3,a3,20` at 0xa001295c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xa0012964 targets 0xa0012944, is taken when a6(?) != a0, and falls through when a6(?) == a0.
  The `beq` branch at 0xa001296c targets 0xa001297c, is taken when v0(?) == a7(=0x1), and falls through when v0(?) != a7(=0x1).
  The return at 0xa0012974 has v0 = one of 0x0, ?.
  The return at 0xa001297c has v0 = ?.
- `is_brkpt` in `sbin/stand/symmon.IP32` at 0xa0012f8c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0012f8c-0xa001306c (224 bytes).
  It occupies 224 bytes.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xa0012ffc, `lw` at 0xa0013004, `lw` at 0xa001300c.
  The `jal` at 0xa0013028 calls _fatal_error [0xa00183f4] with a0=0xffffffffa0031d50, a1=?, a2=?, a3=?.
  The `beq` branch at 0xa0012fdc targets 0xa0012ffc and is always taken.
  The `beq` branch at 0xa0012fe8 targets 0xa0013064, is taken when t8(?) == s6(=a0), and falls through when t8(?) != s6(=a0).
  The `beq` branch at 0xa0012ff4 targets 0xa0013038, is taken when s0(?) >= s1(=0xffffffffa003cc28) (unsigned), and falls through when s0(?) < s1(=0xffffffffa003cc28) (unsigned).
  The `beql` branch at 0xa0013000 targets 0xa0012fe8, is taken when v0(?) == s2(=0x2), and falls through when v0(?) != s2(=0x2); its branch-likely delay slot `lw t8,0(s0)` at 0xa0013004 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xa0013008 targets 0xa0012fe8, is taken when v0(?) == s3(=0x3), and falls through when v0(?) != s3(=0x3); its branch-likely delay slot `lw t8,0(s0)` at 0xa001300c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xa0013010 targets 0xa0012fe8, is taken when v0(?) == s4(=0x4), and falls through when v0(?) != s4(=0x4); its branch-likely delay slot `lw t8,0(s0)` at 0xa0013014 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xa0013018 targets 0xa0012ff0, is taken when v0(?) == 0, and falls through when v0(?) != 0; its branch-likely delay slot `addiu s0,s0,20` at 0xa001301c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xa0013020 targets 0xa0012ff0, is taken when v0(?) == s7(=0x1), and falls through when v0(?) != s7(=0x1); its branch-likely delay slot `addiu s0,s0,20` at 0xa0013024 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa0013030 targets 0xa0012ff0 and is always taken.
  The `beq` branch at 0xa0013064 targets 0xa0013038 and is always taken.
  The return at 0xa001305c has v0 = one of 0x0, 0x1.
  The instructions from 0xa0012fe4 to 0xa0012fe4 are not reached by any path from the entry, and their branches are not listed.
- `is_conditional` in `sbin/stand/symmon.IP32` at 0xa001306c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001306c-0xa00130ec (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xa001308c loads 4 bytes from table(0xffffffffa0031d60) +0x0.
  The `beq` branch at 0xa0013080 targets 0xa0013098, is taken when v1(?) >= 0x18 (unsigned), and falls through when v1(?) < 0x18 (unsigned).
  The return at 0xa001309c has v0 = 0x0.
  The instructions from 0xa00130a4 to 0xa00130e8 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xa0013090 uses a jump table whose successors are unresolved.
- `branch_target` in `sbin/stand/symmon.IP32` at 0xa00130ec (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00130ec-0xa0013228 (316 bytes).
  It occupies 316 bytes.
  The `lw` at 0xa0013110 loads 4 bytes from table(0xffffffffa0031e20) +0x0.
  The `jal` at 0xa0013120 calls _fatal_error [0xa00183f4] with a0=0xffffffffa0031e10, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xa0013108 targets 0xa001311c, is taken when v1(?) >= 0x18 (unsigned), and falls through when v1(?) < 0x18 (unsigned).
  The return at 0xa001312c has v0 = ret(_fatal_error).
  The instructions from 0xa0013134 to 0xa0013224 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xa0013114 uses a jump table whose successors are unresolved.
- `suspend_brkpt` in `sbin/stand/symmon.IP32` at 0xa0013228 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0013228-0xa001335c (308 bytes).
  It occupies 308 bytes.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xa0013290, `lw` at 0xa001329c, `lw` at 0xa001330c.
  The `lw` at 0xa00132f8 loads 4 bytes from abs 0xffffffffa0011004.
  2 such `lwu` accesses load 4 bytes from ?, including `lwu` at 0xa0013304, `lwu` at 0xa0013358.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xa0013314, `sw` at 0xa001331c.
  The `jal` at 0xa00132c8 calls _fatal_error [0xa00183f4] with a0=0xffffffffa0031ed0, a1=?, a2=?, a3=?.
  The `jal` at 0xa00132d8 calls _fatal_error [0xa00183f4] with a0=0xffffffffa0031ee0, a1=?, a2=?, a3=?.
  The `jal` at 0xa00132ec calls _get_memory [0xa001b0d0] with a0=a0 at entry (arg0), a1=0x4, a2=?, a3=?.
  The `jal` at 0xa0013318 calls _set_memory [0xa001b140] with a0=?, a1=0x4, a2=?, a3=?.
  The `jal` at 0xa001334c calls _fatal_error [0xa00183f4] with a0=0xffffffffa0031f00, a1=?, a2=?, a3=?.
  The `beq` branch at 0xa0013278 targets 0xa0013290 and is always taken.
  The `beq` branch at 0xa0013288 targets 0xa00132d8, is taken when s0(?) >= s1(=0xffffffffa003cc28) (unsigned), and falls through when s0(?) < s1(=0xffffffffa003cc28) (unsigned).
  The `beql` branch at 0xa0013294 targets 0xa0013284, is taken when a2(?) == 0, and falls through when a2(?) != 0; its branch-likely delay slot `addiu s0,s0,20` at 0xa0013298 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xa00132a0 targets 0xa0013284, is taken when t9(?) != s2(=a0), and falls through when t9(?) == s2(=a0); its branch-likely delay slot `addiu s0,s0,20` at 0xa00132a4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa00132a8 targets 0xa00132ec, is taken when a2(?) == s4(=0x3), and falls through when a2(?) != s4(=0x3).
  The `beq` branch at 0xa00132b0 targets 0xa00132ec, is taken when a2(?) == s5(=0x4), and falls through when a2(?) != s5(=0x4).
  The `beq` branch at 0xa00132b8 targets 0xa00132c8, is taken when a2(?) == s3(=0x1), and falls through when a2(?) != s3(=0x1).
  The `bnel` branch at 0xa00132c0 targets 0xa0013284, is taken when a2(?) != s6(=0x2), and falls through when a2(?) == s6(=0x2); its branch-likely delay slot `addiu s0,s0,20` at 0xa00132c4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa00132d0 targets 0xa0013284 and is always taken.
  The `beq` branch at 0xa00132e0 targets 0xa0013320 and is always taken.
  The `bne` branch at 0xa00132fc targets 0xa001334c, is taken when ra(=[0xffffffffa0011004]) != v0(=ret(_get_memory)), and falls through when ra(=[0xffffffffa0011004]) == v0(=ret(_get_memory)).
  The `beq` branch at 0xa0013354 targets 0xa0013308 and is always taken.
  The return at 0xa0013344 has v0 = one of ret(_fatal_error), ret(_set_memory).
  The instructions from 0xa0013280 to 0xa0013280 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xa00132e8 to 0xa00132e8 are not reached by any path from the entry, and their branches are not listed.
- `_pdbx_clean` in `sbin/stand/symmon.IP32` at 0xa001341c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001341c-0xa00134f8 (220 bytes).
  It occupies 220 bytes.
  3 such `lw` accesses load 4 bytes from abs 0xffffffffa0058e00, including `lw` at 0xa0013424, `lw` at 0xa0013444, `lw` at 0xa00134ec.
  The `lw` at 0xa0013428 loads 4 bytes from [0xffffffffa0058e00] +0x224.
  The `ld` at 0xa0013448 loads 8 bytes from [0xffffffffa0058e00] +0x200.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xa00134a4, `lw` at 0xa00134c4.
  The `lw` at 0xa00134f4 loads 4 bytes from [0xffffffffa0058e00] +0x204.
  The `jal` at 0xa0013464 calls lookup_bptype [0xa0012934] with a0=?, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa00134c0 calls old_brkpt [0xa0012984] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xa0013438 targets 0xa00134ec, is taken when (at(=[[0xffffffffa0058e00]+548]) & v1(=0xffffffff80000000)) == 0, and falls through when (at(=[[0xffffffffa0058e00]+548]) & v1(=0xffffffff80000000)) != 0.
  The `beq` branch at 0xa0013484 targets 0xa00134a4 and is always taken.
  The `beq` branch at 0xa001348c targets 0xa00134c0, is taken when a0(?) == s2(=0x2), and falls through when a0(?) != s2(=0x2).
  The `beql` branch at 0xa001349c targets 0xa00134d0, is taken when s0(?) >= s1(=0xffffffffa003cc28) (unsigned), and falls through when s0(?) < s1(=0xffffffffa003cc28) (unsigned); its branch-likely delay slot `ld s0,32(sp)` at 0xa00134a0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xa00134a8 targets 0xa0013498, is taken when a0(?) == 0, and falls through when a0(?) != 0; its branch-likely delay slot `addiu s0,s0,20` at 0xa00134ac runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xa00134b0 targets 0xa001348c, is taken when a0(?) != s3(=0x3), and falls through when a0(?) == s3(=0x3).
  The `beq` branch at 0xa00134b8 targets 0xa001348c, is taken when s4(=ret(lookup_bptype)) == s2(=0x2), and falls through when s4(=ret(lookup_bptype)) != s2(=0x2).
  The `beq` branch at 0xa00134c8 targets 0xa0013498 and is always taken.
  The `beq` branch at 0xa00134f0 targets 0xa0013454 and is always taken.
  The return at 0xa00134e4 has v0 = ?.
- `handle_wp` in `sbin/stand/symmon.IP32` at 0xa0013808 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0013808-0xa00138c0 (184 bytes).
  It occupies 184 bytes.
  The `ld` at 0xa001382c loads 8 bytes from abs 0xffffffffa003cc38.
  The `lw` at 0xa001383c loads 4 bytes from abs 0xffffffffa003cc48.
  The `sw` at 0xa0013848 stores 4 bytes to abs 0xffffffffa003cc48.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffa0058e00, including `lw` at 0xa001386c, `lw` at 0xa0013884.
  The `lw` at 0xa0013878 loads 4 bytes from [0xffffffffa0058e00] +0x204.
  The `ld` at 0xa0013890 loads 8 bytes from [0xffffffffa0058e00] +0x200.
  The `sw` at 0xa00138ac stores 4 bytes to abs 0xffffffffa003cc34.
  The `jal` at 0xa0013834 calls printf [0xa002e620] with a0=0xffffffffa0032008, a1=?, a2=-0x8, a3=a3 at entry (arg3).
  The `jal` at 0xa001384c calls _set_register [0xa001b218] with a0=0x54, a1=0x0, a2=?, a3=?.
  The `jal` at 0xa0013858 calls _set_register [0xa001b218] with a0=0x55, a1=0x0, a2=?, a3=?.
  The `jal` at 0xa0013874 calls _PrintInstruction [0xa0018650] with a0=[[0xffffffffa0058e00]+516], a1=a0 at entry (arg0), a2=0x1, a3=?.
  The `jal` at 0xa00138a8 calls new_brkpt [0xa00124b0] with a0=([[0xffffffffa0058e00]+512]:8+4 << 0x0), a1=0x3, a2=0x1, a3=([[0xffffffffa0058e00]+512]:8+4 << 0x0), a4=0x4.
  The return at 0xa00138b8 has v0 = ret(new_brkpt).
- `reset_wp` in `sbin/stand/symmon.IP32` at 0xa00138c0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00138c0-0xa0013938 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xa00138d0 loads 4 bytes from abs 0xffffffffa003cc48.
  The `ld` at 0xa00138e0 loads 8 bytes from abs 0xffffffffa003cc38.
  The `sw` at 0xa00138f4 stores 4 bytes to abs 0xffffffffa003cc48.
  The `ld` at 0xa00138f8 loads 8 bytes from abs 0xffffffffa003cc40.
  The `lw` at 0xa0013908 loads 4 bytes from abs 0xffffffffa0058e58.
  The `jal` at 0xa00138f0 calls _set_register [0xa001b218] with a0=0x54, a1=[0xffffffffa003cc38]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa00138fc calls _set_register [0xa001b218] with a0=0x55, a1=[0xffffffffa003cc40]:8, a2=?, a3=?.
  The `beq` branch at 0xa00138d8 targets 0xa0013924, is taken when (v0(=[0xffffffffa003cc48]) & 0x2) == 0, and falls through when (v0(=[0xffffffffa003cc48]) & 0x2) != 0.
  The `beq` branch at 0xa0013910 targets 0xa001392c, is taken when t9(=[0xffffffffa0058e58]) == 0, and falls through when t9(=[0xffffffffa0058e58]) != 0.
  The `beq` branch at 0xa0013924 targets 0xa0013918 and is always taken.
  The `beq` branch at 0xa0013930 targets 0xa0013918 and is always taken.
  The return at 0xa001391c has v0 = one of 0x0, 0x1.
- `txtsrch` in `sbin/stand/symmon.IP32` at 0xa0013db0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0013db0-0xa0013f14 (356 bytes).
  It occupies 356 bytes.
  3 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xa0013e08, `sw` at 0xa0013ed8, `sw` at 0xa0013ee0.
  The `sw` at 0xa0013ec8 stores 4 bytes to a5 (arg5 at entry) +0x0.
  The `lw` at 0xa0013ee4 loads 4 bytes from abs 0xffffffffa0037f30.
  The `jal` at 0xa0013e44 calls fetch_text [0xa0013fd8] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa0013ef8 calls printf [0xa002e620] with a0=0xffffffffa00321e0, a1=ret(fetch_text), a2=one of 0x0, 0x1, a3=?, a4=[0xffffffffa0037f30].
  The `beq` branch at 0xa0013de8 targets 0xa0013f08, is taken when a7 == t2(=0x1), and falls through when a7 != t2(=0x1).
  The `beq` branch at 0xa0013e04 targets 0xa0013e80, is taken when s0(=a0) == s1(=a6), and falls through when s0(=a0) != s1(=a6).
  The `beq` branch at 0xa0013e1c targets 0xa0013e44 and is always taken.
  The `beq` branch at 0xa0013e28 targets 0xa0013eb8, is taken when s5(=a4) == 0, and falls through when s5(=a4) != 0.
  The `blez` branch at 0xa0013e30 targets 0xa0013ec0, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `beql` branch at 0xa0013e3c targets 0xa0013e84, is taken when s0(?) == s1(=a6), and falls through when s0(?) != s1(=a6); its branch-likely delay slot `addiu s0,zero,-1` at 0xa0013e40 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xa0013e50 targets 0xa0013e28, is taken when a0(?) == s3(=a1), and falls through when a0(?) != s3(=a1); its branch-likely delay slot `dsll32 a0,v0,0x10` at 0xa0013e54 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa0013e58 targets 0xa0013e24, is taken when a0(?) == s6(=a2), and falls through when a0(?) != s6(=a2).
  The `bne` branch at 0xa0013e70 targets 0xa0013e3c, is taken when a1(?) < 0x3e9 (signed), and falls through when a1(?) >= 0x3e9 (signed).
  The `beq` branch at 0xa0013e78 targets 0xa0013e84 and is always taken.
  The `bltz` branch at 0xa0013eb8 targets 0xa0013e38, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `bne` branch at 0xa0013ec4 targets 0xa0013edc, is taken when s6(=a2) != s7(?), and falls through when s6(=a2) == s7(?).
  The `beq` branch at 0xa0013ed4 targets 0xa0013ee4 and is always taken.
  The `beq` branch at 0xa0013ee8 targets 0xa0013f00, is taken when a4(=[0xffffffffa0037f30]) == 0, and falls through when a4(=[0xffffffffa0037f30]) != 0.
  The `beq` branch at 0xa0013f00 targets 0xa0013e88 and is always taken.
  The `beq` branch at 0xa0013f0c targets 0xa0013df4 and is always taken.
  The return at 0xa0013eb0 has v0 = one of -0x1, ?.
- `fetch_text` in `sbin/stand/symmon.IP32` at 0xa0013fd8 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0013fd8-0xa0013ff4 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0xa0013fe0 calls getinst [0xa0012918] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa0013fec has v0 = ret(getinst).
- `pri` in `sbin/stand/symmon.IP32` at 0xa00140e4 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00140e4-0xa001413c (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xa00140e8 loads 4 bytes from abs 0xffffffffa0037f34.
  The `lbu` at 0xa00140ec loads 1 byte from [0xffffffffa0037f34] +0x0.
  The `lbu` at 0xa0014104 loads 1 byte from ?.
  The `sw` at 0xa0014120 stores 4 bytes to abs 0xffffffffa003cca8.
  The `beq` branch at 0xa00140f0 targets 0xa0014118, is taken when v0(=[[0xffffffffa0037f34]]:1) == 0, and falls through when v0(=[[0xffffffffa0037f34]]:1) != 0.
  The `beq` branch at 0xa00140fc targets 0xa001412c, is taken when a0 == v0(?), and falls through when a0 != v0(?).
  The `bne` branch at 0xa001410c targets 0xa00140fc, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The return at 0xa0014124 has v0 = 0x0.
  The return at 0xa0014134 has v0 = ?.
- `push` in `sbin/stand/symmon.IP32` at 0xa001413c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001413c-0xa0014170 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0xa0014144 loads 4 bytes from abs 0xffffffffa003cc98.
  The `sw` at 0xa001415c stores 4 bytes to abs 0xffffffffa003cca8.
  The `sw` at 0xa0014160 stores 4 bytes to [0xffffffffa003cc98] +0x0.
  The `sw` at 0xa0014164 stores 4 bytes to abs 0xffffffffa003cc98.
  The `bne` branch at 0xa001414c targets 0xa0014160, is taken when a3(=[0xffffffffa003cc98]) != at(=0xffffffffa003cc98), and falls through when a3(=[0xffffffffa003cc98]) == at(=0xffffffffa003cc98).
  The return at 0xa0014158 has v0 = ?.
  The return at 0xa0014168 has v0 = ?.
- `pop` in `sbin/stand/symmon.IP32` at 0xa0014170 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0014170-0xa00141a4 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0xa0014178 loads 4 bytes from abs 0xffffffffa003cc98.
  The `sw` at 0xa001418c stores 4 bytes to abs 0xffffffffa003cca8.
  The `lw` at 0xa0014194 loads 4 bytes from [0xffffffffa003cc98] -0x4.
  The `sw` at 0xa0014198 stores 4 bytes to abs 0xffffffffa003cc98.
  The `bne` branch at 0xa001417c targets 0xa0014190, is taken when a3(=[0xffffffffa003cc98]) != a2(=0xffffffffa003cc58), and falls through when a3(=[0xffffffffa003cc98]) == a2(=0xffffffffa003cc58).
  The return at 0xa0014188 has v0 = 0x0.
  The return at 0xa001419c has v0 = [[0xffffffffa003cc98]-4].
- `doop` in `sbin/stand/symmon.IP32` at 0xa00141a4 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00141a4-0xa00142e4 (320 bytes).
  It occupies 320 bytes.
  The `lw` at 0xa00141f8 loads 4 bytes from (a0-37 << 0x2) -0x5ffcdde0.
  The `jal` at 0xa00141cc calls pop [0xa0014170] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  Calls (unknown callee) via register with a0=ret(pop), a1=?, a2=?, a3=(a0-37 << 0x2)+0xffffffffa0032220, a4=[(a0-37 << 0x2)-1610407392] (`jr` at 0xa00141fc).
  The `jal` at 0xa0014210 calls push [0xa001413c] with a0=ret(pop), a1=?, a2=?, a3=(a0-37 << 0x2)+0xffffffffa0032220, a4=(a0-37 << 0x2).
  The `beq` branch at 0xa00141b8 targets 0xa0014218, is taken when a0 == at(=0x28), and falls through when a0 != at(=0x28).
  The `beq` branch at 0xa00141c4 targets 0xa001421c, is taken when a0 == v0(=0x29), and falls through when a0 != v0(=0x29).
  The `beq` branch at 0xa00141f0 targets 0xa0014210, is taken when a4(=a0-37) >= 0x5a (unsigned), and falls through when a4(=a0-37) < 0x5a (unsigned).
  The return at 0xa0014224 has v0 = one of 0x29, ?.
  The instructions from 0xa0014204 to 0xa001420c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xa001422c to 0xa00142e0 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xa00141fc uses a jump table whose successors are unresolved.
- `symtoull` in `sbin/stand/symmon.IP32` at 0xa00142e4 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00142e4-0xa00143a8 (196 bytes).
  It occupies 196 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xa00142e4, `lw` at 0xa0014334.
  3 such `lbu` accesses load 1 byte from [a0] +0x0, including `lbu` at 0xa00142e8, `lbu` at 0xa001432c, `lbu` at 0xa0014338.
  2 such `lbu` accesses load 1 byte from [[a0]]:1 -0x5ffc3ad7, including `lbu` at 0xa00142f8, `lbu` at 0xa0014340.
  The `sw` at 0xa0014328 stores 4 bytes to a0 (arg0 at entry) +0x0.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0xa0014330, `sb` at 0xa0014364.
  The `sw` at 0xa001437c stores 4 bytes to abs 0xffffffffa003cca8.
  The `jal` at 0xa0014360 calls parse_sym [0xa001c728] with a0=sp-80, a1=sp-16, a2=[a0], a3=?, a4=[[a0]]:1, a5=0xffffffffa003c528, a7=0x5f.
  The `beq` branch at 0xa0014308 targets 0xa0014398, is taken when (at(=[[[a0]]:1-1610365655]:1) & 0x4007) == 0, and falls through when (at(=[[[a0]]:1-1610365655]:1) & 0x4007) != 0.
  The `beq` branch at 0xa0014314 targets 0xa0014324 and is always taken.
  The `beq` branch at 0xa0014320 targets 0xa0014358, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0xa0014348 targets 0xa001431c, is taken when (t1(=[[[a0]]:1-1610365655]:1) & 0x4007) != 0, and falls through when (t1(=[[[a0]]:1-1610365655]:1) & 0x4007) == 0.
  The `beq` branch at 0xa0014350 targets 0xa0014320, is taken when a7(=0x5f) == a4(=[[a0]]:1), and falls through when a7(=0x5f) != a4(=[[a0]]:1).
  The `beq` branch at 0xa0014368 targets 0xa001438c, is taken when v0(=ret(parse_sym)) == 0, and falls through when v0(=ret(parse_sym)) != 0.
  The `beq` branch at 0xa0014390 targets 0xa0014380 and is always taken.
  The `beq` branch at 0xa0014398 targets 0xa0014310, is taken when a7(=0x5f) == a4(=[[a0]]:1), and falls through when a7(=0x5f) != a4(=[[a0]]:1).
  The `beq` branch at 0xa00143a0 targets 0xa001435c and is always taken.
  The return at 0xa0014384 has v0 = one of 0x0, ?.
- `lookup_reg` in `sbin/stand/symmon.IP32` at 0xa00152e0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00152e0-0xa0015348 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xa00152f0 loads 4 bytes from abs 0xffffffffa0037f38.
  The `lw` at 0xa0015318 loads 4 bytes from ?.
  The `jal` at 0xa0015308 calls strcmp [0xa0030938] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `beq` branch at 0xa00152fc targets 0xa0015324, is taken when a1(=[0xffffffffa0037f38]) == 0, and falls through when a1(=[0xffffffffa0037f38]) != 0.
  The `beq` branch at 0xa0015310 targets 0xa0015340, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `bne` branch at 0xa001531c targets 0xa0015308, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0xa0015340 targets 0xa001532c and is always taken.
  The return at 0xa0015338 has v0 = one of 0x0, ?.
- `printPrimaryInstructionCacheLine` in `sbin/stand/symmon.IP32` at 0xa0017c44 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0017c44-0xa0017d70 (300 bytes).
  It occupies 300 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0xa0017c94, `ld` at 0xa0017ce4.
  The `lw` at 0xa0017cc4 loads 4 bytes from table(0xffffffffa00385e8) +0x0.
  The `lw` at 0xa0017ce0 loads 4 bytes from table(0xffffffffa0038608) +0x0.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xa0017d1c, `lbu` at 0xa0017d20, `lbu` at 0xa0017d24.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0xa0017d28, `ld` at 0xa0017d2c, `ld` at 0xa0017d30.
  The `jal` at 0xa0017c64 calls iCacheSize [0xa0023dbc] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa0017cdc calls printf [0xa002e620] with a0=0xffffffffa00331a8, a1=[a0]:8, a2=?, a3=?, a4=entry(0xffffffffa0038608), a6=entry(0xffffffffa00385e8).
  The `jal` at 0xa0017d00 calls printf [0xa002e620] with a0=0xffffffffa00331d8, a1=?, a2=?, a3=?.
  The `jal` at 0xa0017d3c calls printf [0xa002e620] with a0=0xffffffffa00331f0, a1=?, a2=?, a3=?.
  The `beq` branch at 0xa0017d08 targets 0xa0017d50, is taken when s5(=a2) == 0, and falls through when s5(=a2) != 0.
  The `bne` branch at 0xa0017d48 targets 0xa0017d18, is taken when s1(?) != s3(=a0+128), and falls through when s1(?) == s3(=a0+128).
  The return at 0xa0017d68 has v0 = ret(printf).
- `printPrimaryDataCacheLine` in `sbin/stand/symmon.IP32` at 0xa0017d70 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0017d70-0xa0017e9c (300 bytes).
  It occupies 300 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0xa0017dc0, `ld` at 0xa0017e10.
  The `lw` at 0xa0017df0 loads 4 bytes from table(0xffffffffa0038618) +0x0.
  The `lw` at 0xa0017e0c loads 4 bytes from table(0xffffffffa0038638) +0x0.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xa0017e48, `lbu` at 0xa0017e4c, `lbu` at 0xa0017e50.
  4 such `lwu` accesses load 4 bytes from ?, including `lwu` at 0xa0017e54, `lwu` at 0xa0017e58, `lwu` at 0xa0017e5c.
  The `jal` at 0xa0017d90 calls dCacheSize [0xa0023dd8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa0017e08 calls printf [0xa002e620] with a0=0xffffffffa00331a8, a1=[a0]:8, a2=?, a3=?, a4=entry(0xffffffffa0038638), a6=entry(0xffffffffa0038618).
  The `jal` at 0xa0017e2c calls printf [0xa002e620] with a0=0xffffffffa00331d8, a1=?, a2=?, a3=?.
  The `jal` at 0xa0017e68 calls printf [0xa002e620] with a0=0xffffffffa0033230, a1=?, a2=?, a3=?.
  The `beq` branch at 0xa0017e34 targets 0xa0017e7c, is taken when s5(=a2) == 0, and falls through when s5(=a2) != 0.
  The `bne` branch at 0xa0017e74 targets 0xa0017e44, is taken when s1(?) != s3(=a0+32), and falls through when s1(?) == s3(=a0+32).
  The return at 0xa0017e94 has v0 = ret(printf).
- `printSecondaryCacheLine` in `sbin/stand/symmon.IP32` at 0xa0017e9c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0017e9c-0xa0017fb0 (276 bytes).
  It occupies 276 bytes.
  The `ld` at 0xa0017ed0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xa0017f08 loads 4 bytes from table(0xffffffffa00385d8) +0x0.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0xa0017f64, `ld` at 0xa0017f68.
  The `lhu` at 0xa0017f80 loads 2 bytes from ?.
  The `jal` at 0xa0017ebc calls sCacheSize [0xa0023d7c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa0017f48 calls printf [0xa002e620] with a0=0xffffffffa0033270, a1=[a0]:8, a2=?, a3=?, a4=entry(0xffffffffa00385d8).
  The `jal` at 0xa0017f7c calls printf [0xa002e620] with a0=0xffffffffa00332b0, a1=?, a2=?, a3=?.
  The `beq` branch at 0xa0017f50 targets 0xa0017f90, is taken when s1(=a2) == 0, and falls through when s1(=a2) != 0.
  The `bne` branch at 0xa0017f88 targets 0xa0017f64, is taken when s0(?) != s4(=0x8), and falls through when s0(?) == s4(=0x8).
  The return at 0xa0017fa8 has v0 = ret(printf).
- `exception_close` in `sbin/stand/symmon.IP32` at 0xa0018510 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0018510-0xa0018564 (84 bytes).
  It occupies 84 bytes.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffa003ccd0, including `lw` at 0xa001851c, `lw` at 0xa0018544.
  2 such `sw` accesses store 4 bytes to abs 0xffffffffa003ccd0, including `sw` at 0xa0018530, `sw` at 0xa0018554.
  The `lw` at 0xa0018540 loads 4 bytes from ([0xffffffffa003ccd0]-1 << 0x2) -0x5ffc3328.
  The `jal` at 0xa001853c calls Close [0xa00255a0] with a0=[([0xffffffffa003ccd0]-1 << 0x2)-1610363688], a1=?, a2=[0xffffffffa003ccd0], a3=?.
  The `blez` branch at 0xa0018524 targets 0xa0018550, is taken when a2(=[0xffffffffa003ccd0]) <= 0 (signed), and falls through when a2(=[0xffffffffa003ccd0]) > 0 (signed).
  The `bgtz` branch at 0xa0018548 targets 0xa0018530, is taken when a2(=[0xffffffffa003ccd0]) > 0 (signed), and falls through when a2(=[0xffffffffa003ccd0]) <= 0 (signed).
  The return at 0xa001855c has v0 = one of ?, ret(Close).
- `register_name` in `sbin/stand/symmon.IP32` at 0xa0018564 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0018564-0xa00185d8 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xa0018564 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lw` at 0xa0018580 loads 4 bytes from ?.
  The `sw` at 0xa00185a8 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `sw` at 0xa00185ac stores 4 bytes to (([a2] << 0x2) + a3) +0x0.
  The `lw` at 0xa00185cc loads 4 bytes from ((a0 + (a1 << 0x5)) << 0x2) -0x5ffc71f8.
  The `blez` branch at 0xa0018568 targets 0xa00185d0, is taken when t0(=[a2]) <= 0 (signed), and falls through when t0(=[a2]) > 0 (signed).
  The `beq` branch at 0xa0018588 targets 0xa0018598, is taken when at(?) == a0, and falls through when at(?) != a0.
  The `bne` branch at 0xa0018590 targets 0xa0018580, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0xa001859c targets 0xa00185b0, is taken when a6(?) < t0(=[a2]) (signed), and falls through when a6(?) >= t0(=[a2]) (signed).
  The `beq` branch at 0xa00185d0 targets 0xa00185a4 and is always taken.
  The return at 0xa00185c8 has v0 = [((a0 + (a1 << 0x5)) << 0x2)-1610379768].
- `fp_register_name` in `sbin/stand/symmon.IP32` at 0xa00185d8 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00185d8-0xa00185f0 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0xa00185ec loads 4 bytes from (a0 << 0x2) -0x5ffc70f8.
  The return at 0xa00185e8 has v0 = [(a0 << 0x2)-1610379512].
- `c0_register_name` in `sbin/stand/symmon.IP32` at 0xa00185f0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00185f0-0xa0018608 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0xa0018604 loads 4 bytes from (a0 << 0x2) -0x5ffc73b8.
  The return at 0xa0018600 has v0 = [(a0 << 0x2)-1610380216].
- `printhex` in `sbin/stand/symmon.IP32` at 0xa0019ed0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0019ed0-0xa0019f3c (108 bytes).
  It occupies 108 bytes.
  The `jal` at 0xa0019ef4 calls putchar [0xa002dd70] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xa0019eec targets 0xa0019f04 and is always taken.
  The `beq` branch at 0xa0019f00 targets 0xa0019f24, is taken when s0(?) == s2(=-0x4), and falls through when s0(?) != s2(=-0x4).
  The `beq` branch at 0xa0019f10 targets 0xa0019ef4, is taken when a2(?) >= 0xa (signed), and falls through when a2(?) < 0xa (signed).
  The `beq` branch at 0xa0019f1c targets 0xa0019ef4 and is always taken.
  The return at 0xa0019f34 has v0 = ret(putchar).
- `bad_addr` in `sbin/stand/symmon.IP32` at 0xa001a08c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001a08c-0xa001a0e4 (88 bytes).
  It occupies 88 bytes.
  4 such `lw` accesses load 4 bytes from (ret(cpuid) << 0x9) -0x5ffa7200, including `lw` at 0xa001a0b0, `lw` at 0xa001a0b8, `lw` at 0xa001a0c0.
  The `ld` at 0xa001a0bc loads 8 bytes from [(ret(cpuid) << 0x9)-1610248704] +0x238.
  The `ld` at 0xa001a0c4 loads 8 bytes from [(ret(cpuid) << 0x9)-1610248704] +0x220.
  The `ld` at 0xa001a0cc loads 8 bytes from [(ret(cpuid) << 0x9)-1610248704] +0x200.
  The `ld` at 0xa001a0d4 loads 8 bytes from [(ret(cpuid) << 0x9)-1610248704] +0xf8.
  The `jal` at 0xa001a094 calls cpuid [0xa0020c5c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa001a0d0 calls printf [0xa002e620] with a0=0xffffffffa0035078, a1=[[(ret(cpuid) << 0x9)-1610248704]+568]:8, a2=[[(ret(cpuid) << 0x9)-1610248704]+544]:8, a3=[[(ret(cpuid) << 0x9)-1610248704]+512]:8, a4=[[(ret(cpuid) << 0x9)-1610248704]+248]:8, a5=(ret(cpuid) << 0x9).
  The return at 0xa001a0dc has v0 = ret(printf).
- `isidbg` in `sbin/stand/symmon.IP32` at 0xa001a0e4 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001a0e4-0xa001a174 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xa001a0e8 loads 4 bytes from abs 0xffffffffa0001010.
  The `lw` at 0xa001a0fc loads 4 bytes from [0xffffffffa0001010] +0x8.
  The `lw` at 0xa001a134 loads 4 bytes from [[0xffffffffa0001010]+8] +0x0.
  2 such `sw` accesses store 4 bytes to abs 0xffffffffa003cd68, including `sw` at 0xa001a140, `sw` at 0xa001a15c.
  The `lw` at 0xa001a148 loads 4 bytes from [[0xffffffffa0001010]+8] +0x4.
  The `sd` at 0xa001a150 stores 8 bytes to abs 0xffffffffa003cd58.
  The `beq` branch at 0xa001a0f0 targets 0xa001a154, is taken when a3(=[0xffffffffa0001010]) == 0, and falls through when a3(=[0xffffffffa0001010]) != 0.
  The `bne` branch at 0xa001a104 targets 0xa001a120, is taken when a2(=[[0xffffffffa0001010]+8]) < at(=0xffffffff80000000) (unsigned), and falls through when a2(=[[0xffffffffa0001010]+8]) >= at(=0xffffffff80000000) (unsigned).
  The `beq` branch at 0xa001a110 targets 0xa001a12c, is taken when a2(=[[0xffffffffa0001010]+8]) >= v0(=0xffffffffa0000000) (unsigned), and falls through when a2(=[[0xffffffffa0001010]+8]) < v0(=0xffffffffa0000000) (unsigned).
  The `beq` branch at 0xa001a118 targets 0xa001a134 and is always taken.
  The `bne` branch at 0xa001a124 targets 0xa001a154, is taken when a2(=[[0xffffffffa0001010]+8]) < v0(=0xffffffffa0000000) (unsigned), and falls through when a2(=[[0xffffffffa0001010]+8]) >= v0(=0xffffffffa0000000) (unsigned).
  The `beq` branch at 0xa001a12c targets 0xa001a154, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xa001a13c targets 0xa001a168, is taken when a5(=[[[0xffffffffa0001010]+8]]) != a6(=0x45454545), and falls through when a5(=[[[0xffffffffa0001010]+8]]) == a6(=0x45454545).
  The return at 0xa001a14c has v0 = 0x1.
  The return at 0xa001a160 has v0 = 0x0.
  The return at 0xa001a16c has v0 = 0x0.
- `do_it` in `sbin/stand/symmon.IP32` at 0xa001a224 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001a224-0xa001a3e4 (448 bytes).
  It occupies 448 bytes.
  The `lw` at 0xa001a250 loads 4 bytes from abs 0xffffffffa0001010.
  The `lw` at 0xa001a270 loads 4 bytes from [0xffffffffa0001010] +0xc.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lw` at 0xa001a27c, `lw` at 0xa001a28c.
  The `lbu` at 0xa001a2a0 loads 1 byte from ret(atob_L) +0x0.
  3 such `lw` accesses load 4 bytes from abs 0xffffffffa0058e4c, including `lw` at 0xa001a2ec, `lw` at 0xa001a388, `lw` at 0xa001a3a8.
  3 such `lw` accesses load 4 bytes from abs 0xffffffffa0058e00, including `lw` at 0xa001a2f4, `lw` at 0xa001a380, `lw` at 0xa001a3b0.
  3 such `sw` accesses store 4 bytes to [0xffffffffa0001010] +0xc, including `sw` at 0xa001a2fc, `sw` at 0xa001a378, `sw` at 0xa001a3a4.
  3 such `sw` accesses store 4 bytes to abs 0xffffffffa0058e04, including `sw` at 0xa001a30c, `sw` at 0xa001a37c, `sw` at 0xa001a3b8.
  The `lw` at 0xa001a3a0 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `jal` at 0xa001a24c calls isidbg [0xa001a0e4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa001a284 calls atob_L [0xa002c0d8] with a0=[a1+4], a1=sp-192, a2=?, a3=?, a6=[a1+4].
  The `jal` at 0xa001a2b0 calls printf [0xa002e620] with a0=0xffffffffa00350b8, a1=[a1+4], a2=?, a3=?, a6=[a1+4].
  The `jal` at 0xa001a2c4 calls setjmp [0xa00302dc] with a0=sp-184, a1=?, a2=?, a3=?.
  The `jal` at 0xa001a2d4 calls symmon_spl [0xa0010e6c] with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0xa001a2dc calls bad_addr [0xa001a08c] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa001a2f0 calls copyregs [0xa001ad98] with a0=[0xffffffffa0058e4c], a1=[0xffffffffa0058e00], a2=?, a3=?.
  The `jal` at 0xa001a308 calls Signal [0xa002495c] with a0=0x2, a1=0xffffffffa001bdf4, a2=?, a3=?.
  The `jal` at 0xa001a35c calls Signal [0xa002495c] with a0=0x2, a1=0xffffffffa001a1c8, a2=?, a3=?.
  The `jal` at 0xa001a384 calls copyregs [0xa001ad98] with a0=[0xffffffffa0058e00], a1=[0xffffffffa0058e4c], a2=sp-184, a3=0xffffffffa001101c.
  The `jal` at 0xa001a39c calls _do_it [0xa0010e9c] with a0=?, a1=[a2+4], a2=a0-1, a3=a1+4.
  The `jal` at 0xa001a3ac calls copyregs [0xa001ad98] with a0=[0xffffffffa0058e4c], a1=[0xffffffffa0058e00], a2=?, a3=?.
  The `jal` at 0xa001a3c0 calls Signal [0xa002495c] with a0=0x2, a1=0xffffffffa001bdf4, a2=?, a3=?.
  The `beq` branch at 0xa001a25c targets 0xa001a3d0, is taken when v0(=ret(isidbg)) == 0, and falls through when v0(=ret(isidbg)) != 0.
  The `beq` branch at 0xa001a264 targets 0xa001a3d8, is taken when s1(=a0) == 0, and falls through when s1(=a0) != 0.
  The `beq` branch at 0xa001a26c targets 0xa001a34c, is taken when s1(=a0) == s5(=0x1), and falls through when s1(=a0) != s5(=0x1).
  The `beq` branch at 0xa001a278 targets 0xa001a2c0, is taken when t8(=a3) == 0, and falls through when t8(=a3) != 0.
  The `beq` branch at 0xa001a290 targets 0xa001a340, is taken when v0(=ret(atob_L)) == a6(=[a1+4]), and falls through when v0(=ret(atob_L)) != a6(=[a1+4]).
  The `beq` branch at 0xa001a298 targets 0xa001a338, is taken when v0(=ret(atob_L)) == 0, and falls through when v0(=ret(atob_L)) != 0.
  The `beq` branch at 0xa001a2a4 targets 0xa001a338, is taken when t9(=[ret(atob_L)]:1) == 0, and falls through when t9(=[ret(atob_L)]:1) != 0.
  The `beq` branch at 0xa001a2b8 targets 0xa001a314 and is always taken.
  The `beq` branch at 0xa001a2cc targets 0xa001a358, is taken when v0(=ret(setjmp)) == 0, and falls through when v0(=ret(setjmp)) != 0.
  The `beq` branch at 0xa001a338 targets 0xa001a2c4 and is always taken.
  The `beq` branch at 0xa001a344 targets 0xa001a2c4 and is always taken.
  The `beq` branch at 0xa001a350 targets 0xa001a2c4 and is always taken.
  The `beq` branch at 0xa001a3c8 targets 0xa001a314 and is always taken.
  The `beq` branch at 0xa001a3d0 targets 0xa001a314 and is always taken.
  The `beq` branch at 0xa001a3dc targets 0xa001a318 and is always taken.
  The return at 0xa001a330 has v0 = one of 0x0, 0x1.
- `ffunc` in `sbin/stand/symmon.IP32` at 0xa001a71c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001a71c-0xa001aa5c (832 bytes).
  It occupies 832 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x14, including `lw` at 0xa001a768, `lw` at 0xa001a7dc.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x18, including `lw` at 0xa001a778, `lw` at 0xa001a7ec.
  22 such `lw` accesses load 4 bytes from ?, including `lw` at 0xa001a77c, `lw` at 0xa001a788, `lw` at 0xa001a794.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xa001a838, `lbu` at 0xa001a97c.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0xa001a86c, `sw` at 0xa001a940.
  The `lw` at 0xa001aa2c loads 4 bytes from [a1+24] +0x14.
  The `jal` at 0xa001a760 calls printf [0xa002e620] with a0=0xffffffffa0035140, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa001a780 calls printf [0xa002e620] with a0=0xffffffffa0035158, a1=?, a2=?, a3=?.
  The `jal` at 0xa001a7b0 calls strlen [0xa00309ac] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa001a7c0 calls strlen [0xa00309ac] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xa001a804 calls strncmp [0xa0030d60] with a0=a0 at entry (arg0), a1=?, a2=0xc, a3=?.
  The `jal` at 0xa001a818 calls strncmp [0xa0030d60] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xa001a8b0 calls probe_tlb [0xa00247dc] with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0xa001a8c4 calls printf [0xa002e620] with a0=0xffffffffa0035158, a1=?, a2=?, a3=?.
  The `jal` at 0xa001a8f4 calls printf [0xa002e620] with a0=0xffffffffa003515c, a1=?, a2=?, a3=?.
  The `jal` at 0xa001a954 calls map_k2seg_addr [0xa001af10] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa001a98c calls strncmp [0xa0030d60] with a0=a0 at entry (arg0), a1=?, a2=0xc, a3=?.
  The `jal` at 0xa001a9a0 calls strncmp [0xa0030d60] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xa001a9d4 calls probe_tlb [0xa00247dc] with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0xa001a9e4 calls map_k2seg_addr [0xa001af10] with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0xa001a74c targets 0xa001a7b0, is taken when a0 != 0, and falls through when a0 == 0.
  The `beql` branch at 0xa001a774 targets 0xa001a798, is taken when t8(=[a1+20]) == s1(=0x54545454), and falls through when t8(=[a1+20]) != s1(=0x54545454); its branch-likely delay slot `lw s1,4(s0)` at 0xa001a778 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xa001a78c targets 0xa001a77c, is taken when t8(?) != s1(=0x54545454), and falls through when t8(?) == s1(=0x54545454).
  The `beq` branch at 0xa001a7a0 targets 0xa001a8f4, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0xa001a7a8 targets 0xa001a8d8 and is always taken.
  The `beq` branch at 0xa001a7b8 targets 0xa001a94c, is taken when v0(=ret(strlen)) == 0, and falls through when v0(=ret(strlen)) != 0.
  The `bne` branch at 0xa001a7cc targets 0xa001a7d8, is taken when v0(=ret(strlen)) < 0xd (unsigned), and falls through when v0(=ret(strlen)) >= 0xd (unsigned).
  The `beql` branch at 0xa001a7e8 targets 0xa001aa2c, is taken when t9(=[a1+20]) == s1(=0x54545454), and falls through when t9(=[a1+20]) != s1(=0x54545454); its branch-likely delay slot `lw s1,24(s3)` at 0xa001a7ec runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa001a7fc targets 0xa001a834 and is always taken.
  The `beq` branch at 0xa001a80c targets 0xa001a904, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0xa001a820 targets 0xa001a918, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0xa001a82c targets 0xa001a854, is taken when t8(?) == s1(=0x54545454), and falls through when t8(?) != s1(=0x54545454).
  The `bne` branch at 0xa001a83c targets 0xa001a804, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `bne` branch at 0xa001a84c targets 0xa001a834, is taken when ra(?) != s1(=0x54545454), and falls through when ra(?) == s1(=0x54545454).
  The `beql` branch at 0xa001a854 targets 0xa001a964, is taken when s4(?) == 0, and falls through when s4(?) != 0; its branch-likely delay slot `lw s1,4(v0)` at 0xa001a858 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa001a85c targets 0xa001a938, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0xa001a868 targets 0xa001a944, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beql` branch at 0xa001a8a4 targets 0xa001a8c4, is taken when v0(=one of 0x0, 0x1) == 0, and falls through when v0(=one of 0x0, 0x1) != 0; its branch-likely delay slot `lw a1,8(s1)` at 0xa001a8a8 runs only when taken and is annulled on fall-through.
  The `bltz` branch at 0xa001a8b8 targets 0xa001a954, is taken when v0(=ret(probe_tlb)) < 0 (signed), and falls through when v0(=ret(probe_tlb)) >= 0 (signed).
  The `beq` branch at 0xa001a8d0 targets 0xa001a8f4, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0xa001a8d8 targets 0xa001a8a0, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xa001a8e0 targets 0xa001a8a4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xa001a8ec targets 0xa001a8a4 and is always taken.
  The `beq` branch at 0xa001a8fc targets 0xa001a870 and is always taken.
  The `beq` branch at 0xa001a904 targets 0xa001aa1c, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `beq` branch at 0xa001a910 targets 0xa001a814 and is always taken.
  The `beq` branch at 0xa001a918 targets 0xa001aa24, is taken when s6(?) == 0, and falls through when s6(?) != 0.
  The `beq` branch at 0xa001a924 targets 0xa001a82c and is always taken.
  The `bne` branch at 0xa001a93c targets 0xa001a870, is taken when s3(?) != 0, and falls through when s3(?) == 0.
  The `beq` branch at 0xa001a944 targets 0xa001a870 and is always taken.
  The `beq` branch at 0xa001a94c targets 0xa001a870 and is always taken.
  The `beq` branch at 0xa001a95c targets 0xa001a8c4 and is always taken.
  The `beq` branch at 0xa001a968 targets 0xa001a85c, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0xa001a970 targets 0xa001a9b8 and is always taken.
  The `beql` branch at 0xa001a980 targets 0xa001a9b4, is taken when t8(?) == 0, and falls through when t8(?) != 0; its branch-likely delay slot `lw s1,20(s1)` at 0xa001a984 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa001a994 targets 0xa001a9f4, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0xa001a9a8 targets 0xa001aa08, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0xa001a9b4 targets 0xa001a85c, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bnel` branch at 0xa001a9bc targets 0xa001a97c, is taken when t9(?) != 0, and falls through when t9(?) == 0; its branch-likely delay slot `lw a1,8(s1)` at 0xa001a9c0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xa001a9c8 targets 0xa001a97c, is taken when s1(?) >= s8(=0xffffffffff600000) (unsigned), and falls through when s1(?) < s8(=0xffffffffff600000) (unsigned); its branch-likely delay slot `lw a1,8(s1)` at 0xa001a9cc runs only when taken and is annulled on fall-through.
  The `bgezl` branch at 0xa001a9dc targets 0xa001a97c, is taken when v0(=ret(probe_tlb)) >= 0 (signed), and falls through when v0(=ret(probe_tlb)) < 0 (signed); its branch-likely delay slot `lw a1,8(s1)` at 0xa001a9e0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa001a9ec targets 0xa001a97c and is always taken.
  The `beq` branch at 0xa001a9f4 targets 0xa001aa4c, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `beq` branch at 0xa001aa00 targets 0xa001a99c and is always taken.
  The `beq` branch at 0xa001aa08 targets 0xa001aa54, is taken when s6(?) == 0, and falls through when s6(?) != 0.
  The `beq` branch at 0xa001aa14 targets 0xa001a9b4 and is always taken.
  The `beq` branch at 0xa001aa1c targets 0xa001a90c and is always taken.
  The `beq` branch at 0xa001aa24 targets 0xa001a920 and is always taken.
  The `beql` branch at 0xa001aa30 targets 0xa001a92c, is taken when s1(=[[a1+24]+20]) == 0, and falls through when s1(=[[a1+24]+20]) != 0; its branch-likely delay slot `ld s5,80(sp)` at 0xa001aa34 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa001aa44 targets 0xa001a96c and is always taken.
  The `beq` branch at 0xa001aa4c targets 0xa001a9fc and is always taken.
  The `beq` branch at 0xa001aa54 targets 0xa001aa10 and is always taken.
  The return at 0xa001a898 has v0 = one of ?, -0x1, 0x0.
  The instructions from 0xa001a978 to 0xa001a978 are not reached by any path from the entry, and their branches are not listed.
- `_ubt` in `sbin/stand/symmon.IP32` at 0xa001aa5c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001aa5c-0xa001ac7c (544 bytes).
  It occupies 544 bytes.
  The `lw` at 0xa001aa84 loads 4 bytes from abs 0xffffffffa0001010.
  The `lw` at 0xa001aa90 loads 4 bytes from [0xffffffffa0001010] +0xc.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0xa001aaa8, `lw` at 0xa001ab00, `lw` at 0xa001aba4.
  The `lw` at 0xa001ab14 loads 4 bytes from a2 (arg2 at entry) +0x8.
  3 such `sw` accesses store 4 bytes to [0xffffffffa0001010] +0xc, including `sw` at 0xa001ab64, `sw` at 0xa001ac38, `sw` at 0xa001ac48.
  3 such `lw` accesses load 4 bytes from abs 0xffffffffa0058e4c, including `lw` at 0xa001ab70, `lw` at 0xa001ac20, `lw` at 0xa001ac4c.
  6 such `lw` accesses load 4 bytes from abs 0xffffffffa0058e00, including `lw` at 0xa001ab78, `lw` at 0xa001abcc, `lw` at 0xa001abd4.
  3 such `sw` accesses store 4 bytes to abs 0xffffffffa0058e04, including `sw` at 0xa001ab7c, `sw` at 0xa001ac14, `sw` at 0xa001ac5c.
  The `lbu` at 0xa001ab88 loads 1 byte from [a2+4] +0x0.
  The `ld` at 0xa001abd0 loads 8 bytes from [0xffffffffa0058e00] +0x200.
  The `ld` at 0xa001abdc loads 8 bytes from [0xffffffffa0058e00] +0xe8.
  The `ld` at 0xa001abf0 loads 8 bytes from [0xffffffffa0058e00] +0xf8.
  The `lw` at 0xa001ac40 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `jal` at 0xa001aa80 calls isidbg [0xa001a0e4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa001aabc calls printf [0xa002e620] with a0=0xffffffffa0035160, a1=?, a2=?, a3=?.
  The `jal` at 0xa001aac4 calls printf [0xa002e620] with a0=0xffffffffa0035180, a1=?, a2=?, a3=?.
  The `jal` at 0xa001aacc calls printf [0xa002e620] with a0=0xffffffffa00351a8, a1=?, a2=?, a3=?.
  The `jal` at 0xa001aad4 calls printf [0xa002e620] with a0=0xffffffffa00351d0, a1=?, a2=?, a3=?.
  The `jal` at 0xa001aafc calls atob_L [0xa002c0d8] with a0=[a2+4], a1=sp-176, a2=?, a3=?.
  The `jal` at 0xa001ab10 calls atob_L [0xa002c0d8] with a0=[a2+8], a1=sp-176, a2=?, a3=?.
  The `jal` at 0xa001ab4c calls setjmp [0xa00302dc] with a0=sp-160, a1=0xffffffffa003c9a8, a2=?, a3=?.
  The `jal` at 0xa001ab60 calls symmon_spl [0xa0010e6c] with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0xa001ab68 calls bad_addr [0xa001a08c] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa001ab74 calls copyregs [0xa001ad98] with a0=[0xffffffffa0058e4c], a1=[0xffffffffa0058e00], a2=?, a3=?.
  The `jal` at 0xa001aba0 calls atob_L [0xa002c0d8] with a0=[a2+4], a1=sp-176, a2=?, a3=?.
  The `jal` at 0xa001ac04 calls Signal [0xa002495c] with a0=0x2, a1=0xffffffffa001a1c8, a2=?, a3=?.
  The `jal` at 0xa001ac1c calls copyregs [0xa001ad98] with a0=[0xffffffffa0058e00], a1=[0xffffffffa0058e4c], a2=sp-160, a3=?.
  The `jal` at 0xa001ac3c calls _do_it [0xa0010e9c] with a0=sp-192, a1=[a0+4], a2=0x1, a3=sp-168, a4=0xffffffffa001101c.
  The `jal` at 0xa001ac50 calls copyregs [0xa001ad98] with a0=[0xffffffffa0058e4c], a1=[0xffffffffa0058e00], a2=?, a3=?.
  The `jal` at 0xa001ac64 calls Signal [0xa002495c] with a0=0x2, a1=0xffffffffa001bdf4, a2=?, a3=?.
  The `beq` branch at 0xa001aa88 targets 0xa001ac74, is taken when v0(=ret(isidbg)) == 0, and falls through when v0(=ret(isidbg)) != 0.
  The `beq` branch at 0xa001aa98 targets 0xa001abc4, is taken when s0(=a1) == t8(=0x1), and falls through when s0(=a1) != t8(=0x1).
  The `beql` branch at 0xa001aaa4 targets 0xa001ab88, is taken when s0(=a1) == ra(=0x2), and falls through when s0(=a1) != ra(=0x2); its branch-likely delay slot `lw t9,4(s2)` at 0xa001aaa8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa001aab0 targets 0xa001aaf8, is taken when s0(=a1) == at(=0x3), and falls through when s0(=a1) != at(=0x3).
  The `beq` branch at 0xa001ab54 targets 0xa001ac00, is taken when v0(=ret(setjmp)) == 0, and falls through when v0(=ret(setjmp)) != 0.
  The `beq` branch at 0xa001ab80 targets 0xa001aae0 and is always taken.
  The `beq` branch at 0xa001ab90 targets 0xa001aab4, is taken when t9(=[[a2+4]]:1) == ra(=0x3f), and falls through when t9(=[[a2+4]]:1) != ra(=0x3f).
  The `beq` branch at 0xa001abbc targets 0xa001ab30 and is always taken.
  The `beq` branch at 0xa001abf8 targets 0xa001ab40 and is always taken.
  The `beq` branch at 0xa001ac6c targets 0xa001aae0 and is always taken.
  The `beq` branch at 0xa001ac74 targets 0xa001aae0 and is always taken.
  The return at 0xa001aaf0 has v0 = one of 0x0, 0x1.
- `copyregs` in `sbin/stand/symmon.IP32` at 0xa001ad98 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001ad98-0xa001adc0 (40 bytes).
  It occupies 40 bytes.
  The `ld` at 0xa001ada8 loads 8 bytes from ?.
  The `sd` at 0xa001adb4 stores 8 bytes to ?.
  The `bne` branch at 0xa001adb0 targets 0xa001ada0, is taken when a3(?) != a4(=0x5d), and falls through when a3(?) == a4(=0x5d).
  The return at 0xa001adb8 has v0 = ?.
- `get_word` in `sbin/stand/symmon.IP32` at 0xa001b698 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001b698-0xa001b864 (460 bytes).
  It occupies 460 bytes.
  The `lw` at 0xa001b698 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lbu` at 0xa001b69c loads 1 byte from [a0] +0x0.
  The `lbu` at 0xa001b6ac loads 1 byte from [[a0]]:1 -0x5ffc3ad7.
  12 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xa001b6c4, `lbu` at 0xa001b6cc, `lbu` at 0xa001b728.
  4 such `lbu` accesses load 1 byte from table(0xffffffffa003c529) +0x0, including `lbu` at 0xa001b6ec, `lbu` at 0xa001b748, `lbu` at 0xa001b764.
  3 such `sb` accesses store 1 byte to ?, including `sb` at 0xa001b730, `sb` at 0xa001b7a8, `sb` at 0xa001b83c.
  The `sw` at 0xa001b7a0 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `jal` at 0xa001b7c4 calls printf [0xa002e620] with a0=0xffffffffa0035348, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0xffffffffa003c528, a4=0xffffffff80000008.
  The `beq` branch at 0xa001b6bc targets 0xa001b6dc, is taken when (a4(=0xffffffff80000008) & a6(=[[[a0]]:1-1610365655]:1)) == 0, and falls through when (a4(=0xffffffff80000008) & a6(=[[[a0]]:1-1610365655]:1)) != 0.
  The `bne` branch at 0xa001b6d4 targets 0xa001b6c4, is taken when (a4(=0xffffffff80000008) & a6(?)) != 0, and falls through when (a4(=0xffffffff80000008) & a6(?)) == 0.
  The `beq` branch at 0xa001b6e0 targets 0xa001b7e0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0xa001b6f4 targets 0xa001b770, is taken when (a4(=0xffffffff80000008) & a7(=entry(0xffffffffa003c529))) != 0, and falls through when (a4(=0xffffffff80000008) & a7(=entry(0xffffffffa003c529))) == 0.
  The `beql` branch at 0xa001b718 targets 0xa001b7f8, is taken when t0(?) == t2(=0x22), and falls through when t0(?) != t2(=0x22); its branch-likely delay slot `addiu v0,v0,1` at 0xa001b71c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa001b720 targets 0xa001b7f4, is taken when t0(?) == t3(=0x27), and falls through when t0(?) != t3(=0x27).
  The `beq` branch at 0xa001b73c targets 0xa001b760, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0xa001b750 targets 0xa001b760, is taken when (a4(=0xffffffff80000008) & t8(=entry(0xffffffffa003c529))) != 0, and falls through when (a4(=0xffffffff80000008) & t8(=entry(0xffffffffa003c529))) == 0.
  The `bne` branch at 0xa001b758 targets 0xa001b718, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0xa001b768 targets 0xa001b77c and is always taken.
  The `beql` branch at 0xa001b77c targets 0xa001b7a0, is taken when a6(?) == 0, and falls through when a6(?) != 0; its branch-likely delay slot `sd ra,8(sp)` at 0xa001b780 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xa001b794 targets 0xa001b784, is taken when (a4(=0xffffffff80000008) & t8(=entry(0xffffffffa003c529))) != 0, and falls through when (a4(=0xffffffff80000008) & t8(=entry(0xffffffffa003c529))) == 0.
  The `beq` branch at 0xa001b7a4 targets 0xa001b7c0, is taken when t1(=0xffffffffa003e4e7) == a7(?), and falls through when t1(=0xffffffffa003e4e7) != a7(?).
  The `bne` branch at 0xa001b7b0 targets 0xa001b7d4, is taken when a7(?) != t9(=0xffffffffa003e3e8), and falls through when a7(?) == t9(=0xffffffffa003e3e8).
  The `beq` branch at 0xa001b7b8 targets 0xa001b7d4 and is always taken.
  The `beq` branch at 0xa001b7ec targets 0xa001b77c and is always taken.
  The `beq` branch at 0xa001b7fc targets 0xa001b81c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beql` branch at 0xa001b804 targets 0xa001b828, is taken when t0(?) == a5(?), and falls through when t0(?) != a5(?); its branch-likely delay slot `lbu a5,1(v0)` at 0xa001b808 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa001b80c targets 0xa001b81c, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xa001b814 targets 0xa001b83c and is always taken.
  The `bne` branch at 0xa001b81c targets 0xa001b73c, is taken when t0(?) != a5(?), and falls through when t0(?) == a5(?).
  The `beq` branch at 0xa001b828 targets 0xa001b73c and is always taken.
  The `beq` branch at 0xa001b830 targets 0xa001b81c, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xa001b84c targets 0xa001b81c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0xa001b854 targets 0xa001b830, is taken when t0(?) != a5(?), and falls through when t0(?) == a5(?).
  The `beq` branch at 0xa001b85c targets 0xa001b828 and is always taken.
  The return at 0xa001b7d8 has v0 = one of 0xffffffffa003e3e8, 0x0.
- `repeat_command` in `sbin/stand/symmon.IP32` at 0xa001ba68 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001ba68-0xa001bac0 (88 bytes).
  It occupies 88 bytes.
  The `lbu` at 0xa001ba68 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lbu` at 0xa001ba90 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `jal` at 0xa001ba9c calls strcmp [0xa0030938] with a0=a0 at entry (arg0), a1=0xffffffffa0035458, a2=?, a3=a3 at entry (arg3).
  The `beq` branch at 0xa001ba74 targets 0xa001ba90, is taken when v0(=[a0]:1) == at(=0x73), and falls through when v0(=[a0]:1) != at(=0x73).
  The `beq` branch at 0xa001ba80 targets 0xa001ba90, is taken when v0(=[a0]:1) == v1(=0x53), and falls through when v0(=[a0]:1) != v1(=0x53).
  The `bne` branch at 0xa001ba88 targets 0xa001ba9c, is taken when v0(=[a0]:1) != a1(=0x63), and falls through when v0(=[a0]:1) == a1(=0x63).
  The `beq` branch at 0xa001ba94 targets 0xa001bab8, is taken when a2(=[a0+1]:1) == 0, and falls through when a2(=[a0+1]:1) != 0.
  The `beq` branch at 0xa001baa4 targets 0xa001bab8, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0xa001bab8 targets 0xa001baac and is always taken.
  The return at 0xa001bab0 has v0 = one of 0x0, 0x1.
- `fetch_pd_addr` in `sbin/stand/symmon.IP32` at 0xa001c230 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001c230-0xa001c298 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xa001c240 loads 4 bytes from abs 0xffffffffa0037eb8.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xa001c26c, `lw` at 0xa001c294.
  The `jal` at 0xa001c25c calls strcmp [0xa0030938] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `beq` branch at 0xa001c24c targets 0xa001c278, is taken when v0(=[0xffffffffa0037eb8]) == 0, and falls through when v0(=[0xffffffffa0037eb8]) != 0.
  The `beq` branch at 0xa001c264 targets 0xa001c290, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `bne` branch at 0xa001c270 targets 0xa001c25c, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0xa001c290 targets 0xa001c27c and is always taken.
  The return at 0xa001c288 has v0 = one of 0x0, ?.
- `csum_getc` in `sbin/stand/symmon.IP32` at 0xa001ccc8 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001ccc8-0xa001cdcc (260 bytes).
  It occupies 260 bytes.
  The `lw` at 0xa001ccec loads 4 bytes from abs 0xffffffffa003e564.
  The `sw` at 0xa001cd00 stores 4 bytes to abs 0xffffffffa003e564.
  The `jal` at 0xa001ccd4 calls getc [0xa002d368] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa001cd20 calls csum_getc [0xa001ccc8] with a0=a0 at entry (arg0), a1=0x10, a2=?, a3=?.
  The `jal` at 0xa001cd60 calls printf [0xa002e620] with a0=0xffffffffa0035d58, a1=ret(csum_getc), a2=0x53, a3=0x44, a4=0x43, a5=0x73, a6=0x71.
  The `jal` at 0xa001cd80 calls __dprintf [0xa001d148] with a0=0xffffffffa0035d40, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0xa001cd94 calls longjmp [0xa0030318] with a0=0xffffffffa003e578, a1=0x1, a2=?, a3=?.
  The `beq` branch at 0xa001ccfc targets 0xa001cd70, is taken when a0(?) == a1(=0x16), and falls through when a0(?) != a1(=0x16).
  The `beq` branch at 0xa001cd08 targets 0xa001cd20, is taken when a0(?) == a1(=0x10), and falls through when a0(?) != a1(=0x10).
  The `beq` branch at 0xa001cd2c targets 0xa001cdac, is taken when v0(=ret(csum_getc)) == a2(=0x53), and falls through when v0(=ret(csum_getc)) != a2(=0x53).
  The `beq` branch at 0xa001cd38 targets 0xa001cdb4, is taken when v0(=ret(csum_getc)) == a3(=0x44), and falls through when v0(=ret(csum_getc)) != a3(=0x44).
  The `beq` branch at 0xa001cd40 targets 0xa001cdbc, is taken when v0(=ret(csum_getc)) == a4(=0x43), and falls through when v0(=ret(csum_getc)) != a4(=0x43).
  The `beq` branch at 0xa001cd48 targets 0xa001cdc4, is taken when v0(=ret(csum_getc)) == a5(=0x73), and falls through when v0(=ret(csum_getc)) != a5(=0x73).
  The `beq` branch at 0xa001cd50 targets 0xa001cda4, is taken when v0(=ret(csum_getc)) == a6(=0x71), and falls through when v0(=ret(csum_getc)) != a6(=0x71).
  The `beq` branch at 0xa001cd68 targets 0xa001cd10 and is always taken.
  The `beq` branch at 0xa001cd9c targets 0xa001cd04 and is always taken.
  The `beq` branch at 0xa001cda4 targets 0xa001cd0c and is always taken.
  The `beq` branch at 0xa001cdac targets 0xa001cd0c and is always taken.
  The `beq` branch at 0xa001cdb4 targets 0xa001cd0c and is always taken.
  The `beq` branch at 0xa001cdbc targets 0xa001cd0c and is always taken.
  The `beq` branch at 0xa001cdc4 targets 0xa001cd0c and is always taken.
  The return at 0xa001cd18 has v0 = one of ?, ret(csum_getc).
- `rexmit_handler` in `sbin/stand/symmon.IP32` at 0xa001cdcc (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001cdcc-0xa001cdf0 (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0xa001cddc calls longjmp [0xa0030318] with a0=0xffffffffa003e5e0, a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa001cde8 has v0 = ret(longjmp).
- `csum_putc` in `sbin/stand/symmon.IP32` at 0xa001d024 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001d024-0xa001d148 (292 bytes).
  It occupies 292 bytes.
  6 such `lw` accesses load 4 bytes from abs 0xffffffffa003e568, including `lw` at 0xa001d06c, `lw` at 0xa001d09c, `lw` at 0xa001d0c0.
  6 such `sw` accesses store 4 bytes to abs 0xffffffffa003e568, including `sw` at 0xa001d080, `sw` at 0xa001d0ac, `sw` at 0xa001d0d0.
  The `jal` at 0xa001d07c calls putc [0xa001d208] with a0=?, a1=a1 at entry (arg1), a2=?, a3=?, a4=0xffffffffa003e558.
  The `jal` at 0xa001d0a8 calls putc [0xa001d208] with a0=0x10, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[0xffffffffa003e568]+16, a6=0xffffffffa003e558.
  The `jal` at 0xa001d0cc calls putc [0xa001d208] with a0=0x10, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=[0xffffffffa003e568]+16.
  The `jal` at 0xa001d0ec calls putc [0xa001d208] with a0=0x10, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa001d114 calls putc [0xa001d208] with a0=0x10, a1=a1 at entry (arg1), a2=0x11, a3=a3 at entry (arg3).
  The `jal` at 0xa001d138 calls putc [0xa001d208] with a0=0x10, a1=a1 at entry (arg1), a2=0x11, a3=a3 at entry (arg3).
  The `beq` branch at 0xa001d034 targets 0xa001d094, is taken when a0 == at(=0x16), and falls through when a0 != at(=0x16).
  The `beq` branch at 0xa001d040 targets 0xa001d0b8, is taken when a0 == v0(=0x10), and falls through when a0 != v0(=0x10).
  The `beq` branch at 0xa001d048 targets 0xa001d0dc, is taken when a0 == v1(=0x3), and falls through when a0 != v1(=0x3).
  The `beq` branch at 0xa001d054 targets 0xa001d0fc, is taken when a0 == a1(=0x13), and falls through when a0 != a1(=0x13).
  The `beq` branch at 0xa001d05c targets 0xa001d124, is taken when a0 == a2(=0x11), and falls through when a0 != a2(=0x11).
  The `beq` branch at 0xa001d0b0 targets 0xa001d064 and is always taken.
  The `beq` branch at 0xa001d0d4 targets 0xa001d064 and is always taken.
  The `beq` branch at 0xa001d0f4 targets 0xa001d064 and is always taken.
  The `beq` branch at 0xa001d11c targets 0xa001d064 and is always taken.
  The `beq` branch at 0xa001d140 targets 0xa001d064 and is always taken.
  The return at 0xa001d08c has v0 = ret(putc).
- `error_reply` in `sbin/stand/symmon.IP32` at 0xa001d8e0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001d8e0-0xa001dbdc (764 bytes).
  It occupies 764 bytes.
  The `lw` at 0xa001d8f4 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lbu` at 0xa001d900 loads 1 byte from [a1+4] +0x0.
  The `lw` at 0xa001d920 loads 4 bytes from ([[a1+4]]:1-68 << 0x2) -0x5ffca060.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x6, a4=([[a1+4]]:1-68 << 0x2), a5=[([[a1+4]]:1-68 << 0x2)-1610391648] (`jr` at 0xa001d924).
  The `beq` branch at 0xa001d918 targets 0xa001d938, is taken when a4(=[[a1+4]]:1-68) >= 0x35 (unsigned), and falls through when a4(=[[a1+4]]:1-68) < 0x35 (unsigned).
  The return at 0xa001d948 has v0 = ?.
  The instructions from 0xa001d92c to 0xa001d934 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xa001d950 to 0xa001dbd8 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xa001d924 uses a jump table whose successors are unresolved.
- `mk_status` in `sbin/stand/symmon.IP32` at 0xa001dbdc (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001dbdc-0xa001dbf0 (20 bytes).
  It occupies 20 bytes.
  The return at 0xa001dbe8 has v0 = ?.
- `g_reply` in `sbin/stand/symmon.IP32` at 0xa001dbf0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001dbf0-0xa001dd14 (292 bytes).
  It occupies 292 bytes.
  The `lw` at 0xa001dc00 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lbu` at 0xa001dc10 loads 1 byte from ret(atob) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffa0058e00, including `lw` at 0xa001dc70, `lw` at 0xa001dcb4.
  The `ld` at 0xa001dc78 loads 8 bytes from [0xffffffffa0058e00] +0x200.
  The `ld` at 0xa001dcc0 loads 8 bytes from ?.
  The `jal` at 0xa001dc08 calls atob [0xa002bea0] with a0=[a1+8], a1=sp-1104, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa001dc28 calls send_reply [0xa001dd14] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=-0x1, a3=0x7.
  The `jal` at 0xa001dc40 calls GetReadStatus [0xa0025880] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xa001dc74 calls btoh [0xa001ddec] with a0=[[0xffffffffa0058e00]+512]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xa001dc80 calls append [0xa001ddb0] with a0=sp-1096, a1=ret(btoh), a2=?, a3=?.
  The `jal` at 0xa001dcbc calls btoh [0xa001ddec] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa001dcc8 calls append [0xa001ddb0] with a0=sp-1096, a1=ret(btoh), a2=?, a3=?.
  The `jal` at 0xa001dcdc calls strlen [0xa00309ac] with a0=sp-1096, a1=?, a2=?, a3=?.
  The `jal` at 0xa001dd04 calls putpkt [0xa001cdf0] with a0=a0 at entry (arg0), a1=sp-1096, a2=ret(strlen), a3=0x0.
  The `beql` branch at 0xa001dc14 targets 0xa001dc40, is taken when v0(=[ret(atob)]:1) == 0, and falls through when v0(=[ret(atob)]:1) != 0; its branch-likely delay slot `sb zero,8(sp)` at 0xa001dc18 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa001dc60 targets 0xa001dc88, is taken when (v1(?) & 0x1) == 0, and falls through when (v1(?) & 0x1) != 0.
  The `beql` branch at 0xa001dcac targets 0xa001dcd4, is taken when (t8(?) & t9(?)) == 0, and falls through when (t8(?) & t9(?)) != 0; its branch-likely delay slot `addiu s0,s0,1` at 0xa001dcb0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xa001dcd4 targets 0xa001dca0, is taken when s0(?) != s5(=0x20), and falls through when s0(?) == s5(=0x20).
  The `beq` branch at 0xa001dd0c targets 0xa001dc34 and is always taken.
  The return at 0xa001dc38 has v0 = one of ret(send_reply), ret(putpkt).
- `send_reply` in `sbin/stand/symmon.IP32` at 0xa001dd14 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001dd14-0xa001ddb0 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xa001dd38 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xa001dd44 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `jal` at 0xa001dd30 calls GetReadStatus [0xa0025880] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa001dd3c calls strcpy [0xa0030978] with a0=sp-1072, a1=[a1], a2=?, a3=?.
  The `jal` at 0xa001dd48 calls append [0xa001ddb0] with a0=sp-1072, a1=[a1+4], a2=?, a3=?.
  The `jal` at 0xa001dd54 calls btoh [0xa001ddec] with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `jal` at 0xa001dd64 calls append [0xa001ddb0] with a0=sp-1072, a1=ret(btoh), a2=?, a3=?.
  The `jal` at 0xa001dd6c calls btoh [0xa001ddec] with a0=a3 at entry (arg3), a1=?, a2=?, a3=?.
  The `jal` at 0xa001dd78 calls append [0xa001ddb0] with a0=sp-1072, a1=ret(btoh), a2=?, a3=?.
  The `jal` at 0xa001dd84 calls strlen [0xa00309ac] with a0=sp-1072, a1=?, a2=?, a3=?.
  The `jal` at 0xa001dd98 calls putpkt [0xa001cdf0] with a0=a0 at entry (arg0), a1=sp-1072, a2=ret(strlen), a3=0x0.
  The return at 0xa001dda8 has v0 = ret(putpkt).
- `append` in `sbin/stand/symmon.IP32` at 0xa001ddb0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001ddb0-0xa001ddec (60 bytes).
  It occupies 60 bytes.
  The `jal` at 0xa001ddc8 calls strcat [0xa00308f0] with a0=a0 at entry (arg0), a1=0xffffffffa0036138, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa001ddd4 calls strcat [0xa00308f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The return at 0xa001dde4 has v0 = ret(strcat).
- `btoh` in `sbin/stand/symmon.IP32` at 0xa001ddec (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001ddec-0xa001de70 (132 bytes).
  It occupies 132 bytes.
  The `sb` at 0xa001de14 stores 1 byte to abs 0xffffffffa003e648.
  The `sb` at 0xa001de28 stores 1 byte to abs 0xffffffffa003e649.
  3 such `sb` accesses store 1 byte to ?, including `sb` at 0xa001de38, `sb` at 0xa001de64, `sb` at 0xa001de6c.
  The `bne` branch at 0xa001ddf8 targets 0xa001de10, is taken when (at(?) & 0xf) != 0, and falls through when (at(?) & 0xf) == 0.
  The `bne` branch at 0xa001de04 targets 0xa001ddf4, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `bltz` branch at 0xa001de24 targets 0xa001de68, is taken when a3(?) < 0 (signed), and falls through when a3(?) >= 0 (signed).
  The `beq` branch at 0xa001de2c targets 0xa001de48 and is always taken.
  The `bltz` branch at 0xa001de40 targets 0xa001de68, is taken when a3(?) < 0 (signed), and falls through when a3(?) >= 0 (signed).
  The `bne` branch at 0xa001de50 targets 0xa001de34, is taken when a5(?) < 0xa (signed), and falls through when a5(?) >= 0xa (signed).
  The `beq` branch at 0xa001de60 targets 0xa001de3c and is always taken.
  The return at 0xa001de68 has v0 = 0xffffffffa003e648.
- `get_mapreg` in `sbin/stand/symmon.IP32` at 0xa001de70 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001de70-0xa001ded8 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xa001de78 loads 4 bytes from abs 0xffffffffa00391d4.
  The `lw` at 0xa001de88 loads 4 bytes from abs 0xffffffffa00391d0.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xa001de98, `lw` at 0xa001dea4, `lw` at 0xa001dea8.
  The `beq` branch at 0xa001de7c targets 0xa001ded0, is taken when at(=[0xffffffffa00391d4]) == 0, and falls through when at(=[0xffffffffa00391d4]) != 0.
  The `beq` branch at 0xa001de84 targets 0xa001de9c and is always taken.
  The `beq` branch at 0xa001de90 targets 0xa001decc, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bnel` branch at 0xa001dea0 targets 0xa001de90, is taken when a0 < a4(?) (signed), and falls through when a0 >= a4(?) (signed); its branch-likely delay slot `lw a4,16(a3)` at 0xa001dea4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xa001deb4 targets 0xa001de90, is taken when a0 >= a6(?) (signed), and falls through when a0 < a6(?) (signed); its branch-likely delay slot `lw a4,16(a3)` at 0xa001deb8 runs only when taken and is annulled on fall-through.
  The return at 0xa001dec4 has v0 = ?.
  The return at 0xa001ded0 has v0 = -0x1.
  The instructions from 0xa001de8c to 0xa001de8c are not reached by any path from the entry, and their branches are not listed.
- `txhexcolor` in `sbin/stand/symmon.IP32` at 0xa001df40 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001df40-0xa001dfd0 (144 bytes).
  It occupies 144 bytes.
  The `lbu` at 0xa001df40 loads 1 byte from a0 (arg0 at entry) +0x0.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x1, including `lbu` at 0xa001df80, `lbu` at 0xa001df88.
  The `bne` branch at 0xa001df48 targets 0xa001df68, is taken when a3(=[a0]:1) < 0x30 (signed), and falls through when a3(=[a0]:1) >= 0x30 (signed).
  The `beq` branch at 0xa001df54 targets 0xa001df68, is taken when a3(=[a0]:1) >= 0x3a (signed), and falls through when a3(=[a0]:1) < 0x3a (signed).
  The `beq` branch at 0xa001df5c targets 0xa001df88 and is always taken.
  The `bne` branch at 0xa001df68 targets 0xa001df88, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xa001df74 targets 0xa001df84, is taken when a3(=[a0]:1) >= 0x67 (signed), and falls through when a3(=[a0]:1) < 0x67 (signed).
  The `beq` branch at 0xa001df7c targets 0xa001df8c and is always taken.
  The `bne` branch at 0xa001df90 targets 0xa001dfa4, is taken when a3(=[a0+1]:1) < 0x30 (signed), and falls through when a3(=[a0+1]:1) >= 0x30 (signed).
  The `bnel` branch at 0xa001df9c targets 0xa001dfc8, is taken when a3(=[a0+1]:1) < 0x3a (signed), and falls through when a3(=[a0+1]:1) >= 0x3a (signed); its branch-likely delay slot `addu v0,v0,a3` at 0xa001dfa0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xa001dfa8 targets 0xa001dfc0, is taken when a3(=[a0+1]:1) < 0x61 (signed), and falls through when a3(=[a0+1]:1) >= 0x61 (signed).
  The `beq` branch at 0xa001dfb0 targets 0xa001dfc0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The return at 0xa001dfc0 has v0 = ?.
  The return at 0xa001dfc8 has v0 = ?.
  The instructions from 0xa001df64 to 0xa001df64 are not reached by any path from the entry, and their branches are not listed.
- `txGetenv_col` in `sbin/stand/symmon.IP32` at 0xa001dfd0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001dfd0-0xa001e048 (120 bytes).
  It occupies 120 bytes.
  The `sw` at 0xa001e014 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0xa001e024 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `sw` at 0xa001e030 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `jal` at 0xa001dfe4 calls getenv [0xa002ba5c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa001e000 calls txhexcolor [0xa001df40] with a0=ret(getenv), a1=?, a2=?, a3=?.
  The `jal` at 0xa001e010 calls txhexcolor [0xa001df40] with a0=ret(getenv)+2, a1=?, a2=?, a3=?.
  The `jal` at 0xa001e020 calls txhexcolor [0xa001df40] with a0=ret(getenv)+4, a1=?, a2=?, a3=?.
  The `bne` branch at 0xa001dfec targets 0xa001e000, is taken when v0(=ret(getenv)) != 0, and falls through when v0(=ret(getenv)) == 0.
  The `beq` branch at 0xa001dff8 targets 0xa001e034 and is always taken.
  The return at 0xa001e040 has v0 = one of 0x0, 0x1.
- `txMaxcontrast` in `sbin/stand/symmon.IP32` at 0xa001e048 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001e048-0xa001e0d8 (144 bytes).
  It occupies 144 bytes.
  The `beq` branch at 0xa001e0bc targets 0xa001e0d0, is taken when at(?) >= v0(?) (signed), and falls through when at(?) < v0(?) (signed).
  The return at 0xa001e0c8 has v0 = 0x0.
  The return at 0xa001e0d0 has v0 = 0x7.
- `txInit` in `sbin/stand/symmon.IP32` at 0xa001e428 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001e428-0xa001e4bc (148 bytes).
  It occupies 148 bytes.
  The `sh` at 0xa001e434 stores 2 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xa001e438 stores 2 bytes to a0 (arg0 at entry) +0x62.
  The `lw` at 0xa001e43c loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lh` at 0xa001e440 loads 2 bytes from a0 (arg0 at entry) +0x5e.
  The `sh` at 0xa001e444 stores 2 bytes to a0 (arg0 at entry) +0x72.
  The `sb` at 0xa001e450 stores 1 byte to a0 (arg0 at entry) +0x58.
  The `lh` at 0xa001e454 loads 2 bytes from a0 (arg0 at entry) +0x60.
  The `lw` at 0xa001e458 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0xa001e45c loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `sh` at 0xa001e47c stores 2 bytes to a0 (arg0 at entry) +0x5a.
  The `sh` at 0xa001e498 stores 2 bytes to a0 (arg0 at entry) +0x5c.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0xa001e4a0, `sb` at 0xa001e4a4.
  The `sw` at 0xa001e4a8 stores 4 bytes to ?.
  The `bne` branch at 0xa001e4ac targets 0xa001e49c, is taken when a3(?) != a4(=a0-4), and falls through when a3(?) == a4(=a0-4).
  The return at 0xa001e4b4 has v0 = ?.
- `txReset` in `sbin/stand/symmon.IP32` at 0xa001e634 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001e634-0xa001e698 (100 bytes).
  It occupies 100 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xa001e638, `lw` at 0xa001e660.
  The `lw` at 0xa001e644 loads 4 bytes from [a0] +0x4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xa001e654, `lw` at 0xa001e664.
  The `lw` at 0xa001e668 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0xa001e66c loads 4 bytes from [a0] +0xc.
  The `lw` at 0xa001e670 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jalr` at 0xa001e650 calls (unknown callee) with a0=[a0+4], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xa001e678 calls (unknown callee) with a0=[a0+4], a1=0x0, a2=0x0, a3=[a0+40]-1, a4=[a0+44]-1, a5=[[a0]+12].
  The `jal` at 0xa001e680 calls txInit [0xa001e428] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0xa001e690 has v0 = ret(txInit).
- `txOutline` in `sbin/stand/symmon.IP32` at 0xa001e698 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001e698-0xa001e758 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0xa001e6c0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  4 such `lw` accesses load 4 bytes from [a0] +0xc, including `lw` at 0xa001e6cc, `lw` at 0xa001e6e8, `lw` at 0xa001e704.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xa001e6dc, `lw` at 0xa001e6f8, `lw` at 0xa001e714.
  The `jalr` at 0xa001e6d8 calls (unknown callee) with a0=[a0+4], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a1 at entry (arg1).
  The `jalr` at 0xa001e6f4 calls (unknown callee) with a0=[a0+4], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a2 at entry (arg2).
  The `jalr` at 0xa001e710 calls (unknown callee) with a0=[a0+4], a1=a3 at entry (arg3), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xa001e730 calls (unknown callee) with a0=[a0+4], a1=a1 at entry (arg1), a2=a4 at entry (arg4), a3=a3 at entry (arg3).
  The return at 0xa001e750 has v0 = ret(?).
- `txShdOutline` in `sbin/stand/symmon.IP32` at 0xa001e758 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001e758-0xa001eb8c (1076 bytes).
  It occupies 1076 bytes.
  The `lh` at 0xa001e788 loads 2 bytes from a0 (arg0 at entry) +0x70.
  The `lw` at 0xa001e7ac loads 4 bytes from a0 (arg0 at entry) +0x0.
  9 such `lw` accesses load 4 bytes from [a0] +0x4, including `lw` at 0xa001e7b0, `lw` at 0xa001e890, `lw` at 0xa001e8e4.
  21 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xa001e7b8, `lw` at 0xa001e7c4, `lw` at 0xa001e800.
  12 such `lw` accesses load 4 bytes from [a0] +0xc, including `lw` at 0xa001e7d8, `lw` at 0xa001e804, `lw` at 0xa001e820.
  8 such `lw` accesses load 4 bytes from ?, including `lw` at 0xa001e894, `lw` at 0xa001e8e8, `lw` at 0xa001e94c.
  The `jalr` at 0xa001e7bc calls (unknown callee) with a0=[a0+4], a1=0x27, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xa001e7ec calls (unknown callee) with a0=[a0+4], a1=a3+3, a2=a2-3, a3=a3+11, a4=a4+3.
  The `jalr` at 0xa001e810 calls (unknown callee) with a0=[a0+4], a1=a1-11, a2=a2-3, a3=a1-3, a4=a4+3.
  The `jalr` at 0xa001e82c calls (unknown callee) with a0=[a0+4], a1=a1-11, a2=a4+3, a3=a3+11, a4=a4+11.
  The `jalr` at 0xa001e848 calls (unknown callee) with a0=[a0+4], a1=a1-11, a2=?, a3=a3+11, a4=a2-3.
  The `jalr` at 0xa001e898 calls (unknown callee) with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0xa001e8b4 calls (unknown callee) with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0xa001e8ec calls (unknown callee) with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0xa001e908 calls (unknown callee) with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0xa001e950 calls (unknown callee) with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0xa001e96c calls (unknown callee) with a0=[a0+4], a1=?, a2=?, a3=?, a5=[[a0]+12].
  The `jalr` at 0xa001e9a0 calls (unknown callee) with a0=[a0+4], a1=?, a2=?, a3=?, a6=[[a0]+4].
  The `jalr` at 0xa001e9bc calls (unknown callee) with a0=[a0+4], a1=?, a2=?, a3=?, a7=[[a0]+12].
  The `jalr` at 0xa001ea0c calls (unknown callee) with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0xa001ea28 calls (unknown callee) with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0xa001ea5c calls (unknown callee) with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0xa001ea78 calls (unknown callee) with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0xa001eac4 calls (unknown callee) with a0=[a0+4], a1=?, a2=[[a0]+4], a3=?.
  The `jalr` at 0xa001eae0 calls (unknown callee) with a0=[a0+4], a1=?, a2=?, a3=?, a5=[[a0]+12].
  The `jalr` at 0xa001eb14 calls (unknown callee) with a0=[a0+4], a1=?, a2=?, a3=?, a6=[[a0]+4].
  The `jalr` at 0xa001eb30 calls (unknown callee) with a0=[a0+4], a1=?, a2=?, a3=?, a7=[[a0]+12].
  The `beq` branch at 0xa001e798 targets 0xa001eb7c, is taken when (at(=[a0+112]:2) & 0x10) == 0, and falls through when (at(=[a0+112]:2) & 0x10) != 0.
  The `bne` branch at 0xa001e8c8 targets 0xa001e890, is taken when s0(?) != s7(=sp-144), and falls through when s0(?) == s7(=sp-144).
  The `bne` branch at 0xa001e91c targets 0xa001e8e4, is taken when s0(?) != s7(=sp-144), and falls through when s0(?) == s7(=sp-144).
  The `bne` branch at 0xa001e980 targets 0xa001e948, is taken when s0(?) != s7(=sp-144), and falls through when s0(?) == s7(=sp-144).
  The `bne` branch at 0xa001e9d0 targets 0xa001e998, is taken when s0(?) != s7(=sp-144), and falls through when s0(?) == s7(=sp-144).
  The `bne` branch at 0xa001ea3c targets 0xa001ea04, is taken when s0(?) != s7(=sp-148), and falls through when s0(?) == s7(=sp-148).
  The `bne` branch at 0xa001ea8c targets 0xa001ea54, is taken when s0(?) != s7(=sp-148), and falls through when s0(?) == s7(=sp-148).
  The `bne` branch at 0xa001eaf4 targets 0xa001eabc, is taken when s0(?) != s7(=sp-148), and falls through when s0(?) == s7(=sp-148).
  The `bne` branch at 0xa001eb44 targets 0xa001eb0c, is taken when s0(?) != s7(=sp-148), and falls through when s0(?) == s7(=sp-148).
  The `beq` branch at 0xa001eb84 targets 0xa001e7ac and is always taken.
  The return at 0xa001eb74 has v0 = ret(?).
- `txPaint` in `sbin/stand/symmon.IP32` at 0xa001eb8c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001eb8c-0xa001efdc (1104 bytes).
  It occupies 1104 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xa001eb9c, `lw` at 0xa001ec88, `lw` at 0xa001ed34.
  3 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x5e, including `lh` at 0xa001ebb0, `lh` at 0xa001ec20, `lh` at 0xa001edd0.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0xa001ebb4, `lw` at 0xa001ec40, `lw` at 0xa001ec70.
  6 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x5a, including `lh` at 0xa001ebcc, `lh` at 0xa001ee40, `lh` at 0xa001ef0c.
  6 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x5c, including `lh` at 0xa001ebd0, `lh` at 0xa001ee50, `lh` at 0xa001ef08.
  3 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x60, including `lh` at 0xa001ebd4, `lh` at 0xa001ee10, `lh` at 0xa001ef10.
  The `sb` at 0xa001ec18 stores 1 byte to ?.
  5 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x58, including `lbu` at 0xa001ec3c, `lbu` at 0xa001edc4, `lbu` at 0xa001ee1c.
  The `lw` at 0xa001ec44 loads 4 bytes from ?.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xa001ec50, `lbu` at 0xa001ecbc.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x3c, including `lw` at 0xa001ec64, `lw` at 0xa001ed58, `lw` at 0xa001ef48.
  12 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xa001ec68, `lw` at 0xa001eca4, `lw` at 0xa001ecb8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x34, including `lw` at 0xa001ec6c, `lw` at 0xa001eec8.
  7 such `lw` accesses load 4 bytes from [a0] +0x4, including `lw` at 0xa001ec74, `lw` at 0xa001ed1c, `lw` at 0xa001ed54.
  3 such `lw` accesses load 4 bytes from [a0] +0xc, including `lw` at 0xa001ec94, `lw` at 0xa001ed40, `lw` at 0xa001ee78.
  2 such `lw` accesses load 4 bytes from [a0] +0x14, including `lw` at 0xa001eca8, `lw` at 0xa001eec4.
  5 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0xa001ecf0, `lhu` at 0xa001ed14, `lhu` at 0xa001ed64.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0xa001ed18, `lw` at 0xa001eeb4.
  The `lh` at 0xa001edb4 loads 2 bytes from a0 (arg0 at entry) +0x70.
  The `sb` at 0xa001edf8 stores 1 byte to a0 (arg0 at entry) +0x58.
  3 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x64, including `lh` at 0xa001ee0c, `lh` at 0xa001ee9c, `lh` at 0xa001eed8.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x62, including `lh` at 0xa001ee20, `lh` at 0xa001ee8c.
  The `lw` at 0xa001ee98 loads 4 bytes from (a0 + ([a0+98]:2 << 0x2)) +0x74.
  The `lbu` at 0xa001eea0 loads 1 byte from [(a0 + ([a0+98]:2 << 0x2))+116] +0x0.
  The `lbu` at 0xa001eef0 loads 1 byte from ([(a0 + ([a0+98]:2 << 0x2))+116] + ([a0+100]:2 + [a0+100]:2)) +0x3.
  The `jal` at 0xa001ec5c calls _mspoll [0xa001df20] with a0=?, a1=[a0+88]:1, a2=[a0+94]:2, a3=?.
  The `jalr` at 0xa001ec80 calls (unknown callee) with a0=[a0+4], a1=[a0+60], a2=?, a3=?.
  The `jalr` at 0xa001eca0 calls (unknown callee) with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0xa001ecb4 calls (unknown callee) with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jal` at 0xa001ece8 calls txOutcharmap [0xa00313e8] with a0=a0 at entry (arg0), a1=0x2, a2=0x1, a3=?.
  The `jal` at 0xa001ecfc calls txOutcharmap [0xa00313e8] with a0=a0 at entry (arg0), a1=?, a2=0x0, a3=?.
  The `jalr` at 0xa001ed2c calls (unknown callee) with a0=[a0+4], a1=[a0+64], a2=?, a3=?, a6=[[a0]+4].
  The `jalr` at 0xa001ed4c calls (unknown callee) with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0xa001ed5c calls (unknown callee) with a0=[a0+4], a1=[a0+60], a2=?, a3=?.
  The `jal` at 0xa001ed84 calls txOutcharmap [0xa00313e8] with a0=a0 at entry (arg0), a1=0x2, a2=0x1, a3=?.
  The `jal` at 0xa001ed94 calls txOutcharmap [0xa00313e8] with a0=a0 at entry (arg0), a1=0x5, a2=0x1, a3=?.
  The `jalr` at 0xa001eda4 calls (unknown callee) with a0=[a0+4], a1=[a0+64], a2=?, a3=?, a6=[[a0]+4].
  The `jalr` at 0xa001ee60 calls (unknown callee) with a0=[a0+4], a1=0x2, a2=[a0+94]:2, a3=[a0+100]:2.
  The `jalr` at 0xa001ee84 calls (unknown callee) with a0=[a0+4], a1=([a0+90]:2 + (([a0+100]:2 << 0x3) + [a0+100]:2))+2, a2=?, a3=([a0+90]:2 + (([a0+100]:2 << 0x3) + [a0+100]:2))+10, a5=[[a0]+12].
  The `jalr` at 0xa001eeb8 calls (unknown callee) with a0=[a0+4], a1=[a0+64], a2=?, a3=?, a6=[[(a0 + ([a0+98]:2 << 0x2))+116]]:1.
  The `jalr` at 0xa001eed0 calls (unknown callee) with a0=[a0+4], a1=([a0+90]:2 + (([a0+100]:2 << 0x3) + [a0+100]:2))+2, a2=?, a3=[[a0]+20].
  The `jal` at 0xa001eeec calls txOutcharmap [0xa00313e8] with a0=a0 at entry (arg0), a1=[([(a0 + ([a0+98]:2 << 0x2))+116] + ([a0+100]:2 + [a0+100]:2))+3]:1, a2=0x0, a3=?.
  The `jal` at 0xa001ef3c calls txShdOutline [0xa001e758] with a0=a0 at entry (arg0), a1=[a0+90]:2-2, a2=[a0+92]:2-2, a3=([a0+90]:2 + (([a0+96]:2 << 0x3) + [a0+96]:2)+4)+1.
  The `jalr` at 0xa001ef4c calls (unknown callee) with a0=[a0+4], a1=[a0+60], a2=?, a3=?.
  The `jal` at 0xa001ef6c calls txOutline [0xa001e698] with a0=a0 at entry (arg0), a1=[a0+90]:2-1, a2=[a0+92]:2-1, a3=([a0+90]:2 + (([a0+96]:2 << 0x3) + [a0+96]:2)+4).
  The `jalr` at 0xa001ef7c calls (unknown callee) with a0=[a0+4], a1=[a0+60], a2=?, a3=[[a0]+4].
  The `jal` at 0xa001efa4 calls txOutline [0xa001e698] with a0=a0 at entry (arg0), a1=[a0+90]:2, a2=[a0+92]:2, a3=([a0+90]:2 + (([a0+96]:2 << 0x3) + [a0+96]:2)+4)-1.
  The `jal` at 0xa001efcc calls txOutline [0xa001e698] with a0=a0 at entry (arg0), a1=[a0+90]:2+1, a2=[a0+92]:2+1, a3=([a0+90]:2 + (([a0+96]:2 << 0x3) + [a0+96]:2)+4)-2.
  The `blez` branch at 0xa001ebfc targets 0xa001edb4, is taken when a2(=[a0+94]:2) <= 0 (signed), and falls through when a2(=[a0+94]:2) > 0 (signed).
  The `beq` branch at 0xa001ec08 targets 0xa001ec38 and is always taken.
  The `beq` branch at 0xa001ec30 targets 0xa001edb4, is taken when v1(?) >= a2(=[a0+94]:2) (signed), and falls through when v1(?) < a2(=[a0+94]:2) (signed).
  The `bne` branch at 0xa001ec48 targets 0xa001ec5c, is taken when a1(=[a0+88]:1) != 0, and falls through when a1(=[a0+88]:1) == 0.
  The `beq` branch at 0xa001ec54 targets 0xa001ec14, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `blez` branch at 0xa001ecc0 targets 0xa001ec10, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `beq` branch at 0xa001ecd8 targets 0xa001ed14 and is always taken.
  The `beq` branch at 0xa001ed0c targets 0xa001ec10, is taken when s1(?) == s5(?), and falls through when s1(?) != s5(?).
  The `beq` branch at 0xa001ed24 targets 0xa001eda4, is taken when (t8(?) & 0x200) == 0, and falls through when (t8(?) & 0x200) != 0.
  The `bne` branch at 0xa001ed6c targets 0xa001ece0, is taken when (a6(?) & 0x100) != 0, and falls through when (a6(?) & 0x100) == 0.
  The `beq` branch at 0xa001ed74 targets 0xa001ecf8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xa001ed9c targets 0xa001ecf4 and is always taken.
  The `beq` branch at 0xa001edac targets 0xa001ed68 and is always taken.
  The `beq` branch at 0xa001edbc targets 0xa001ee08, is taken when (a0(=[a0+112]:2) & 0x1) == 0, and falls through when (a0(=[a0+112]:2) & 0x1) != 0.
  The `beql` branch at 0xa001edcc targets 0xa001eefc, is taken when a2(=[a0+88]:1) == a3(=0x1), and falls through when a2(=[a0+88]:1) != a3(=0x1); its branch-likely delay slot `lh t8,94(s0)` at 0xa001edd0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xa001ee08 targets 0xa001ee20, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beql` branch at 0xa001ee18 targets 0xa001edc8, is taken when a3(=[a0+100]:2) >= a5(=[a0+96]:2) (signed), and falls through when a3(=[a0+100]:2) < a5(=[a0+96]:2) (signed); its branch-likely delay slot `lbu a2,88(s0)` at 0xa001ee1c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xa001eea8 targets 0xa001edc8, is taken when a5(=[a0+100]:2) >= a6(=[[(a0 + ([a0+98]:2 << 0x2))+116]]:1) (signed), and falls through when a5(=[a0+100]:2) < a6(=[[(a0 + ([a0+98]:2 << 0x2))+116]]:1) (signed); its branch-likely delay slot `lbu a2,88(s0)` at 0xa001eeac runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa001eef4 targets 0xa001edc8 and is always taken.
  The `beq` branch at 0xa001efd4 targets 0xa001edd8 and is always taken.
  The return at 0xa001ee00 has v0 = one of ?, ret(txOutline).
- `txRscroll` in `sbin/stand/symmon.IP32` at 0xa001efdc (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001efdc-0xa001f040 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xa001eff0 loads 4 bytes from (a0 + (a2 << 0x2)) +0x74.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xa001f000, `lw` at 0xa001f028.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xa001f00c, `sw` at 0xa001f020.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0xa001f014, `sb` at 0xa001f030.
  The `sb` at 0xa001f024 stores 1 byte to [(a0 + (a2 << 0x2))+116] +0x1.
  The `beq` branch at 0xa001efec targets 0xa001f034, is taken when a1 >= a2 (signed), and falls through when a1 < a2 (signed).
  The `bne` branch at 0xa001f010 targets 0xa001f000, is taken when a5(?) != a6(=((a1 << 0x2) + a0)), and falls through when a5(?) == a6(=((a1 << 0x2) + a0)).
  The `beq` branch at 0xa001f038 targets 0xa001f018 and is always taken.
  The return at 0xa001f02c has v0 = ?.
- `txFscroll` in `sbin/stand/symmon.IP32` at 0xa001f040 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001f040-0xa001f0a4 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xa001f054 loads 4 bytes from (a0 + (a1 << 0x2)) +0x74.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xa001f064, `lw` at 0xa001f08c.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xa001f06c, `sw` at 0xa001f084.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0xa001f074, `sb` at 0xa001f094.
  The `sb` at 0xa001f088 stores 1 byte to [(a0 + (a1 << 0x2))+116] +0x1.
  The `beq` branch at 0xa001f050 targets 0xa001f098, is taken when a1 >= a2 (signed), and falls through when a1 < a2 (signed).
  The `bne` branch at 0xa001f070 targets 0xa001f064, is taken when a4(?) != a5(=((a2 << 0x2) + a0)), and falls through when a4(?) == a5(=((a2 << 0x2) + a0)).
  The `beq` branch at 0xa001f09c targets 0xa001f07c and is always taken.
  The return at 0xa001f090 has v0 = ?.
- `txNewline` in `sbin/stand/symmon.IP32` at 0xa001f0a4 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001f0a4-0xa001f124 (128 bytes).
  It occupies 128 bytes.
  The `lh` at 0xa001f0b0 loads 2 bytes from a0 (arg0 at entry) +0x62.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x5e, including `lh` at 0xa001f0b8, `lh` at 0xa001f110.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x62, including `sh` at 0xa001f0d0, `sh` at 0xa001f120.
  The `lh` at 0xa001f0d4 loads 2 bytes from a0 (arg0 at entry) +0x70.
  The `lw` at 0xa001f0f4 loads 4 bytes from ?.
  The `sb` at 0xa001f100 stores 1 byte to ?.
  The `jal` at 0xa001f108 calls txFscroll [0xa001f040] with a0=a0 at entry (arg0), a1=0x0, a2=[a0+94]:2-1, a3=a3 at entry (arg3), a4=[a0+94]:2.
  The `beq` branch at 0xa001f0cc targets 0xa001f104, is taken when a2(?) >= a4(=[a0+94]:2) (signed), and falls through when a2(?) < a4(=[a0+94]:2) (signed).
  The `beq` branch at 0xa001f0dc targets 0xa001f0f0, is taken when (a3(=[a0+112]:2) & 0x1) == 0, and falls through when (a3(=[a0+112]:2) & 0x1) != 0.
  The `beq` branch at 0xa001f0fc targets 0xa001f0e4 and is always taken.
  The `beq` branch at 0xa001f11c targets 0xa001f0e4 and is always taken.
  The return at 0xa001f0e8 has v0 = one of ?, ret(txFscroll).
- `txStuff` in `sbin/stand/symmon.IP32` at 0xa001f124 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001f124-0xa001f428 (772 bytes).
  It occupies 772 bytes.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x62, including `lh` at 0xa001f12c, `lh` at 0xa001f274.
  The `lw` at 0xa001f13c loads 4 bytes from (a0 + ([a0+98]:2 << 0x2)) +0x74.
  11 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x64, including `lh` at 0xa001f144, `lh` at 0xa001f188, `lh` at 0xa001f1d8.
  2 such `lbu` accesses load 1 byte from [(a0 + ([a0+98]:2 << 0x2))+116] +0x0, including `lbu` at 0xa001f148, `lbu` at 0xa001f1ec.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xa001f150, `lw` at 0xa001f2e8, `lw` at 0xa001f3d4.
  The `sh` at 0xa001f184 stores 2 bytes to ([(a0 + ([a0+98]:2 << 0x2))+116] + ([[(a0 + ([a0+98]:2 << 0x2))+116]]:1 + [[(a0 + ([a0+98]:2 << 0x2))+116]]:1)) +0x2.
  The `sh` at 0xa001f1a4 stores 2 bytes to ?.
  3 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x70, including `lh` at 0xa001f1a8, `lh` at 0xa001f1f8, `lh` at 0xa001f200.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x60, including `lh` at 0xa001f1b4, `lh` at 0xa001f214.
  2 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x72, including `lhu` at 0xa001f1b8, `lhu` at 0xa001f244.
  The `sh` at 0xa001f1c8 stores 2 bytes to ([(a0 + ([a0+98]:2 << 0x2))+116] + ([a0+100]:2 + [a0+100]:2)) +0x2.
  The `lbu` at 0xa001f1cc loads 1 byte from [(a0 + ([a0+98]:2 << 0x2))+116] +0x1.
  The `lbu` at 0xa001f1d4 loads 1 byte from a0 (arg0 at entry) +0x58.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x64, including `sh` at 0xa001f1e8, `sh` at 0xa001f220.
  The `sb` at 0xa001f1fc stores 1 byte to [(a0 + ([a0+98]:2 << 0x2))+116] +0x0.
  3 such `lw` accesses load 4 bytes from [a0] +0x4, including `lw` at 0xa001f268, `lw` at 0xa001f324, `lw` at 0xa001f410.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xa001f26c, `lw` at 0xa001f2e4, `lw` at 0xa001f318.
  The `lh` at 0xa001f270 loads 2 bytes from a0 (arg0 at entry) +0x5a.
  The `lh` at 0xa001f278 loads 2 bytes from a0 (arg0 at entry) +0x5e.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0xa001f280, `lw` at 0xa001f2f0, `lw` at 0xa001f3dc.
  4 such `lhu` accesses load 2 bytes from ([(a0 + ([a0+98]:2 << 0x2))+116] + ([a0+100]:2 + [a0+100]:2)) +0x2, including `lhu` at 0xa001f2a0, `lhu` at 0xa001f340, `lhu` at 0xa001f368.
  The `lh` at 0xa001f2b8 loads 2 bytes from a0 (arg0 at entry) +0x5c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0xa001f2d8, `lw` at 0xa001f414.
  2 such `lw` accesses load 4 bytes from [a0] +0xc, including `lw` at 0xa001f2f4, `lw` at 0xa001f3e0.
  2 such `lw` accesses load 4 bytes from [a0] +0x14, including `lw` at 0xa001f310, `lw` at 0xa001f3fc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x34, including `lw` at 0xa001f314, `lw` at 0xa001f400.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x3c, including `lw` at 0xa001f328, `lw` at 0xa001f3c4.
  The `jal` at 0xa001f250 calls txNewline [0xa001f0a4] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+96]:2.
  The `jalr` at 0xa001f2d4 calls (unknown callee) with a0=[a0+4], a1=[a0+64], a2=?, a3=[a0+100]:2, a5=[[a0]+4], a6=[[(a0 + ([a0+98]:2 << 0x2))+116]+1]:1, a7=(a1 | [a0+114]:2).
  The `jalr` at 0xa001f300 calls (unknown callee) with a0=[a0+4], a1=?, a2=?, a3=?, a5=[[a0]+12].
  The `jalr` at 0xa001f31c calls (unknown callee) with a0=[a0+4], a1=?, a2=?, a3=?, a4=[[a0]+20].
  The `jalr` at 0xa001f32c calls (unknown callee) with a0=[a0+4], a1=[a0+60], a2=?, a3=?, a5=[[a0]+4].
  The `jal` at 0xa001f354 calls txOutcharmap [0xa00313e8] with a0=a0 at entry (arg0), a1=0x2, a2=0x1, a3=[([(a0 + ([a0+98]:2 << 0x2))+116] + ([a0+100]:2 + [a0+100]:2))+2]:2.
  The `jal` at 0xa001f374 calls txOutcharmap [0xa00313e8] with a0=a0 at entry (arg0), a1=?, a2=0x0, a3=[([(a0 + ([a0+98]:2 << 0x2))+116] + ([a0+100]:2 + [a0+100]:2))+2]:2.
  The `jal` at 0xa001f394 calls txOutcharmap [0xa00313e8] with a0=a0 at entry (arg0), a1=0x2, a2=0x1, a3=[([(a0 + ([a0+98]:2 << 0x2))+116] + ([a0+100]:2 + [a0+100]:2))+2]:2.
  The `jal` at 0xa001f3a4 calls txOutcharmap [0xa00313e8] with a0=a0 at entry (arg0), a1=0x5, a2=0x1, a3=?.
  The `jalr` at 0xa001f3c0 calls (unknown callee) with a0=[a0+4], a1=[a0+60], a2=?, a3=[a0+100]:2, a5=[[a0]+4], a6=[[(a0 + ([a0+98]:2 << 0x2))+116]+1]:1, a7=(a1 | [a0+114]:2).
  The `jalr` at 0xa001f3ec calls (unknown callee) with a0=[a0+4], a1=?, a2=?, a3=?, a5=[[a0]+12].
  The `jalr` at 0xa001f408 calls (unknown callee) with a0=[a0+4], a1=?, a2=?, a3=?, a4=[[a0]+20].
  The `jalr` at 0xa001f418 calls (unknown callee) with a0=[a0+4], a1=[a0+64], a2=?, a3=?, a5=[[a0]+4].
  The `beq` branch at 0xa001f158 targets 0xa001f1a8, is taken when a5(=[[(a0 + ([a0+98]:2 << 0x2))+116]]:1) >= a3(=[a0+100]:2) (signed), and falls through when a5(=[[(a0 + ([a0+98]:2 << 0x2))+116]]:1) < a3(=[a0+100]:2) (signed).
  The `beq` branch at 0xa001f17c targets 0xa001f1a8, is taken when a2(=([(a0 + ([a0+98]:2 << 0x2))+116] + ([[(a0 + ([a0+98]:2 << 0x2))+116]]:1 + [[(a0 + ([a0+98]:2 << 0x2))+116]]:1))+2) >= t8(=([(a0 + ([a0+98]:2 << 0x2))+116] + ([a0+100]:2 + [a0+100]:2))+2) (unsigned), and falls through when a2(=([(a0 + ([a0+98]:2 << 0x2))+116] + ([[(a0 + ([a0+98]:2 << 0x2))+116]]:1 + [[(a0 + ([a0+98]:2 << 0x2))+116]]:1))+2) < t8(=([(a0 + ([a0+98]:2 << 0x2))+116] + ([a0+100]:2 + [a0+100]:2))+2) (unsigned).
  The `bnel` branch at 0xa001f1a0 targets 0xa001f188, is taken when a2(?) < a4(=([(a0 + ([a0+98]:2 << 0x2))+116] + ([a0+100]:2 + [a0+100]:2))+2) (unsigned), and falls through when a2(?) >= a4(=([(a0 + ([a0+98]:2 << 0x2))+116] + ([a0+100]:2 + [a0+100]:2))+2) (unsigned); its branch-likely delay slot `sh a0,0(a2)` at 0xa001f1a4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xa001f1b0 targets 0xa001f23c, is taken when (a5(=[a0+112]:2) & 0x4) == 0, and falls through when (a5(=[a0+112]:2) & 0x4) != 0; its branch-likely delay slot `lh a7,96(s0)` at 0xa001f1b4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xa001f1d0 targets 0xa001f260, is taken when a6(=[[(a0 + ([a0+98]:2 << 0x2))+116]+1]:1) == 0, and falls through when a6(=[[(a0 + ([a0+98]:2 << 0x2))+116]+1]:1) != 0; its branch-likely delay slot `lbu t0,88(s0)` at 0xa001f1d4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xa001f1f4 targets 0xa001f204, is taken when t0(=[[(a0 + ([a0+98]:2 << 0x2))+116]]:1) >= a3(?) (signed), and falls through when t0(=[[(a0 + ([a0+98]:2 << 0x2))+116]]:1) < a3(?) (signed); its branch-likely delay slot `lh a4,112(s0)` at 0xa001f1f8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa001f208 targets 0xa001f228, is taken when (a4(=[a0+112]:2) & 0x4) == 0, and falls through when (a4(=[a0+112]:2) & 0x4) != 0.
  The `beql` branch at 0xa001f21c targets 0xa001f250, is taken when a5(=[a0+100]:2) >= a6(=[a0+96]:2) (signed), and falls through when a5(=[a0+100]:2) < a6(=[a0+96]:2) (signed); its branch-likely delay slot `sh zero,100(s0)` at 0xa001f220 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xa001f240 targets 0xa001f1bc, is taken when a3(=[a0+100]:2) < a7(=[a0+96]:2) (signed), and falls through when a3(=[a0+100]:2) >= a7(=[a0+96]:2) (signed); its branch-likely delay slot `lhu a7,114(s0)` at 0xa001f244 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa001f248 targets 0xa001f228 and is always taken.
  The `beq` branch at 0xa001f258 targets 0xa001f228 and is always taken.
  The `bnel` branch at 0xa001f260 targets 0xa001f1dc, is taken when t0(=[a0+88]:1) != 0, and falls through when t0(=[a0+88]:1) == 0; its branch-likely delay slot `lh a3,100(s0)` at 0xa001f264 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa001f2cc targets 0xa001f3c0, is taken when (t1(=[([(a0 + ([a0+98]:2 << 0x2))+116] + ([a0+100]:2 + [a0+100]:2))+2]:2) & 0x200) == 0, and falls through when (t1(=[([(a0 + ([a0+98]:2 << 0x2))+116] + ([a0+100]:2 + [a0+100]:2))+2]:2) & 0x200) != 0.
  The `beq` branch at 0xa001f348 targets 0xa001f384, is taken when (a3(=[([(a0 + ([a0+98]:2 << 0x2))+116] + ([a0+100]:2 + [a0+100]:2))+2]:2) & 0x100) == 0, and falls through when (a3(=[([(a0 + ([a0+98]:2 << 0x2))+116] + ([a0+100]:2 + [a0+100]:2))+2]:2) & 0x100) != 0.
  The `beq` branch at 0xa001f37c targets 0xa001f1dc and is always taken.
  The `beq` branch at 0xa001f388 targets 0xa001f36c, is taken when (a3(=[([(a0 + ([a0+98]:2 << 0x2))+116] + ([a0+100]:2 + [a0+100]:2))+2]:2) & 0x400) == 0, and falls through when (a3(=[([(a0 + ([a0+98]:2 << 0x2))+116] + ([a0+100]:2 + [a0+100]:2))+2]:2) & 0x400) != 0.
  The `beq` branch at 0xa001f3b8 targets 0xa001f36c and is always taken.
  The `beq` branch at 0xa001f420 targets 0xa001f338 and is always taken.
  The return at 0xa001f234 has v0 = one of ?, ret(txNewline).
- `txGetAparamv` in `sbin/stand/symmon.IP32` at 0xa001f428 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001f428-0xa001f44c (36 bytes).
  It occupies 36 bytes.
  The `lh` at 0xa001f428 loads 2 bytes from a0 (arg0 at entry) +0x6e.
  The `lh` at 0xa001f440 loads 2 bytes from (a0 + (a1 + a1)) +0x66.
  The `bne` branch at 0xa001f430 targets 0xa001f444, is taken when at(=[a0+110]:2) < a1 (signed), and falls through when at(=[a0+110]:2) >= a1 (signed).
  The return at 0xa001f444 has v0 = one of 0x0, [(a0 + (a1 + a1))+102]:2.
- `txAcup` in `sbin/stand/symmon.IP32` at 0xa001f44c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001f44c-0xa001f4e0 (148 bytes).
  It occupies 148 bytes.
  The `lh` at 0xa001f44c loads 2 bytes from a0 (arg0 at entry) +0x70.
  The `lh` at 0xa001f460 loads 2 bytes from a0 (arg0 at entry) +0x5e.
  The `lh` at 0xa001f47c loads 2 bytes from a0 (arg0 at entry) +0x60.
  The `sh` at 0xa001f494 stores 2 bytes to a0 (arg0 at entry) +0x62.
  The `sh` at 0xa001f4a0 stores 2 bytes to a0 (arg0 at entry) +0x64.
  The `lh` at 0xa001f4c4 loads 2 bytes from a0 (arg0 at entry) +0x62.
  The `lw` at 0xa001f4d0 loads 4 bytes from (a0 + ([a0+98]:2 << 0x2)) +0x74.
  The `sb` at 0xa001f4dc stores 1 byte to [(a0 + ([a0+98]:2 << 0x2))+116] +0x1.
  The `beq` branch at 0xa001f454 targets 0xa001f4c4, is taken when (at(=[a0+112]:2) & 0x1) == 0, and falls through when (at(=[a0+112]:2) & 0x1) != 0.
  The `blez` branch at 0xa001f45c targets 0xa001f4a4, is taken when a1 <= 0 (signed), and falls through when a1 > 0 (signed).
  The `beq` branch at 0xa001f468 targets 0xa001f478, is taken when a4(=[a0+94]:2) >= a1 (signed), and falls through when a4(=[a0+94]:2) < a1 (signed).
  The `blez` branch at 0xa001f478 targets 0xa001f4b4, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `beql` branch at 0xa001f484 targets 0xa001f494, is taken when a4(=[a0+96]:2) >= a2 (signed), and falls through when a4(=[a0+96]:2) < a2 (signed); its branch-likely delay slot `addiu sp,sp,32` at 0xa001f488 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xa001f4a4 targets 0xa001f470, is taken when a4(=[a0+94]:2) <= 0 (signed), and falls through when a4(=[a0+94]:2) > 0 (signed).
  The `beq` branch at 0xa001f4ac targets 0xa001f478 and is always taken.
  The `blez` branch at 0xa001f4b4 targets 0xa001f48c, is taken when a4(=[a0+96]:2) <= 0 (signed), and falls through when a4(=[a0+96]:2) > 0 (signed).
  The `beq` branch at 0xa001f4bc targets 0xa001f494 and is always taken.
  The `beq` branch at 0xa001f4d8 targets 0xa001f45c and is always taken.
  The return at 0xa001f49c has v0 = ?.
- `txCsistuff` in `sbin/stand/symmon.IP32` at 0xa001f4e0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001f4e0-0xa001fb34 (1620 bytes).
  It occupies 1620 bytes.
  The `sh` at 0xa001f524 stores 2 bytes to ?.
  The `sb` at 0xa001f528 stores 1 byte to a0 (arg0 at entry) +0x59.
  The `sh` at 0xa001f52c stores 2 bytes to a0 (arg0 at entry) +0x6e.
  The `lw` at 0xa001f548 loads 4 bytes from (a1-32 << 0x2) -0x5ffc9eb0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xa001f54c).
  The `bne` branch at 0xa001f50c targets 0xa001f548, is taken when v1(=a1-32) < 0x4e (unsigned), and falls through when v1(=a1-32) >= 0x4e (unsigned).
  The `bne` branch at 0xa001f520 targets 0xa001f51c, is taken when v0(?) != a0(=a0+8), and falls through when v0(?) == a0(=a0+8).
  The return at 0xa001f540 has v0 = ?.
  The instructions from 0xa001f554 to 0xa001fb30 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xa001f54c uses a jump table whose successors are unresolved.
- `txRindex` in `sbin/stand/symmon.IP32` at 0xa001fb34 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001fb34-0xa001fb84 (80 bytes).
  It occupies 80 bytes.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x62, including `lh` at 0xa001fb34, `lh` at 0xa001fb4c.
  The `lw` at 0xa001fb40 loads 4 bytes from (a0 + ([a0+98]:2 << 0x2)) +0x74.
  The `sb` at 0xa001fb48 stores 1 byte to [(a0 + ([a0+98]:2 << 0x2))+116] +0x1.
  The `sh` at 0xa001fb60 stores 2 bytes to a0 (arg0 at entry) +0x62.
  The `lh` at 0xa001fb6c loads 2 bytes from a0 (arg0 at entry) +0x5e.
  The `jal` at 0xa001fb74 calls txRscroll [0xa001efdc] with a0=a0 at entry (arg0), a1=0x0, a2=[a0+94]:2-1, a3=a3 at entry (arg3).
  The `blez` branch at 0xa001fb54 targets 0xa001fb6c, is taken when a2(=[a0+98]:2) <= 0 (signed), and falls through when a2(=[a0+98]:2) > 0 (signed).
  The `beq` branch at 0xa001fb7c targets 0xa001fb64 and is always taken.
  The return at 0xa001fb64 has v0 = one of [(a0 + ([a0+98]:2 << 0x2))+116], ret(txRscroll).
- `txEscstuff` in `sbin/stand/symmon.IP32` at 0xa001fb84 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001fb84-0xa001fbd8 (84 bytes).
  It occupies 84 bytes.
  The `sb` at 0xa001fba8 stores 1 byte to a0 (arg0 at entry) +0x59.
  The `jal` at 0xa001fbb8 calls txRindex [0xa001fb34] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa001fbc8 calls txNewline [0xa001f0a4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xa001fb94 targets 0xa001fbc8, is taken when a1 == at(=0x44), and falls through when a1 != at(=0x44).
  The `beq` branch at 0xa001fba0 targets 0xa001fbb8, is taken when a1 == v0(=0x4d), and falls through when a1 != v0(=0x4d).
  The `beq` branch at 0xa001fbc0 targets 0xa001fba8 and is always taken.
  The `beq` branch at 0xa001fbd0 targets 0xa001fba8 and is always taken.
  The return at 0xa001fbb0 has v0 = one of 0x4d, ret(txRindex), ret(txNewline).
- `txCtrlstuff` in `sbin/stand/symmon.IP32` at 0xa001fbd8 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001fbd8-0xa001fd4c (372 bytes).
  It occupies 372 bytes.
  The `lw` at 0xa001fc04 loads 4 bytes from (a1 << 0x2) -0x5ffc9d78.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(a1 << 0x2)+0xffffffffa0036288, a4=[(a1 << 0x2)-1610390904], a5=0x1 (`jr` at 0xa001fc08).
  The `beq` branch at 0xa001fbf8 targets 0xa001fc1c, is taken when a1 >= 0xe (unsigned), and falls through when a1 < 0xe (unsigned).
  The return at 0xa001fc24 has v0 = ?.
  The instructions from 0xa001fc10 to 0xa001fc18 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xa001fc2c to 0xa001fd48 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xa001fc08 uses a jump table whose successors are unresolved.
- `n16c550Open` in `sbin/stand/symmon.IP32` at 0xa0020058 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0020058-0xa00200d4 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xa0020060 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0xa0020070 loads 4 bytes from abs 0xffffffffa0058438.
  The `lw` at 0xa0020080 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x20, including `sw` at 0xa0020094, `sw` at 0xa00200ac.
  The `sw` at 0xa00200b4 stores 4 bytes to a0 (arg0 at entry) +0x2c.
  The `jal` at 0xa00200b8 calls getBaud [0xa00205a4] with a0=[a0+36], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jal` at 0xa00200c0 calls configurePort [0xa0020734] with a0=[a0+36], a1=?, a2=?, a3=?.
  The `bltz` branch at 0xa0020064 targets 0xa00200a4, is taken when s0(=[a0+36]) < 0 (signed), and falls through when s0(=[a0+36]) >= 0 (signed).
  The `beq` branch at 0xa0020078 targets 0xa00200a8, is taken when s0(=[a0+36]) >= at(=[0xffffffffa0058438]) (signed), and falls through when s0(=[a0+36]) < at(=[0xffffffffa0058438]) (signed).
  The `beq` branch at 0xa0020088 targets 0xa00200b0, is taken when (v0(=[a0+44]) & 0x1000) == 0, and falls through when (v0(=[a0+44]) & 0x1000) != 0.
  The `beq` branch at 0xa00200a8 targets 0xa0020098 and is always taken.
  The `beq` branch at 0xa00200cc targets 0xa0020098 and is always taken.
  The return at 0xa002009c has v0 = one of 0x0, 0x7, 0x14.
- `n16c550Poll` in `sbin/stand/symmon.IP32` at 0xa00200d4 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00200d4-0xa002014c (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24, including `lw` at 0xa00200e8, `lw` at 0xa0020124.
  The `lw` at 0xa0020108 loads 4 bytes from ((([a0+36] << 0x3) + [a0+36]) << 0x2) -0x5ffc5538.
  The `sw` at 0xa002013c stores 4 bytes to a0 (arg0 at entry) +0x20.
  The `jal` at 0xa0020104 calls consgetc [0xa00208fc] with a0=[a0+36], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa0020118 calls _ttyinput [0xa00282a4] with a0=[((([a0+36] << 0x3) + [a0+36]) << 0x2)-1610372408], a1=?, a2=?, a3=?.
  The `jal` at 0xa0020120 calls consgetc [0xa00208fc] with a0=[a0+36], a1=?, a2=?, a3=?.
  The `beql` branch at 0xa0020110 targets 0xa0020138, is taken when (v0(=ret(consgetc)) & 0xff) == 0, and falls through when (v0(=ret(consgetc)) & 0xff) != 0; its branch-likely delay slot `ld s1,0(sp)` at 0xa0020114 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xa002012c targets 0xa0020118, is taken when (v0(=ret(consgetc)) & 0xff) != 0, and falls through when (v0(=ret(consgetc)) & 0xff) == 0.
  The return at 0xa0020144 has v0 = ret(consgetc).
- `n16c550Ioctl` in `sbin/stand/symmon.IP32` at 0xa002014c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002014c-0xa0020284 (312 bytes).
  It occupies 312 bytes.
  The `lw` at 0xa0020158 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xa0020160 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0xa0020180 loads 4 bytes from ((([a0+36] << 0x3) + [a0+36]) << 0x2) -0x5ffc5538.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0xa002018c, `lw` at 0xa0020208.
  4 such `lw` accesses load 4 bytes from [((([a0+36] << 0x3) + [a0+36]) << 0x2)-1610372408] +0x0, including `lw` at 0xa00201c8, `lw` at 0xa00201e0, `lw` at 0xa0020214.
  4 such `sw` accesses store 4 bytes to [((([a0+36] << 0x3) + [a0+36]) << 0x2)-1610372408] +0x0, including `sw` at 0xa002021c, `sw` at 0xa0020238, `sw` at 0xa0020260.
  The `sw` at 0xa0020248 stores 4 bytes to [((([a0+36] << 0x3) + [a0+36]) << 0x2)-1610372408] +0x4.
  The `sw` at 0xa0020250 stores 4 bytes to [((([a0+36] << 0x3) + [a0+36]) << 0x2)-1610372408] +0x8.
  The `jal` at 0xa00201b8 calls __assert [0xa0027fc8] with a0=0xffffffffa00362f0, a1=0xffffffffa0036300, a2=0xc7, a3=a3 at entry (arg3).
  The `jal` at 0xa00201d8 calls _scandevs [0xa0026cd8] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa0020274 calls n16c550Open [0xa0020058] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xa002017c targets 0xa0020208, is taken when v0(=[a0+12]) == at(=0x7401), and falls through when v0(=[a0+12]) != at(=0x7401).
  The `beql` branch at 0xa0020188 targets 0xa0020228, is taken when v0(=[a0+12]) == t8(=0x7405), and falls through when v0(=[a0+12]) != t8(=0x7405); its branch-likely delay slot `lw a5,16(a0)` at 0xa002018c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xa0020194 targets 0xa0020244, is taken when v0(=[a0+12]) == t9(=0x7402), and falls through when v0(=[a0+12]) != t9(=0x7402); its branch-likely delay slot `or a0,zero,zero` at 0xa0020198 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa00201a0 targets 0xa0020274, is taken when v0(=[a0+12]) == ra(=0x7404), and falls through when v0(=[a0+12]) != ra(=0x7404).
  The `beq` branch at 0xa00201a8 targets 0xa00201c8, is taken when v0(=[a0+12]) == at(=0x740d), and falls through when v0(=[a0+12]) != at(=0x740d).
  The `beq` branch at 0xa00201c0 targets 0xa00201f4 and is always taken.
  The `beq` branch at 0xa00201d0 targets 0xa00201f4, is taken when (a1(=[[((([a0+36] << 0x3) + [a0+36]) << 0x2)-1610372408]]) & 0x2) == 0, and falls through when (a1(=[[((([a0+36] << 0x3) + [a0+36]) << 0x2)-1610372408]]) & 0x2) != 0.
  The `bne` branch at 0xa00201e8 targets 0xa00201d8, is taken when (a2(=[[((([a0+36] << 0x3) + [a0+36]) << 0x2)-1610372408]]) & 0x2) != 0, and falls through when (a2(=[[((([a0+36] << 0x3) + [a0+36]) << 0x2)-1610372408]]) & 0x2) == 0.
  The `beq` branch at 0xa0020210 targets 0xa0020254, is taken when a3(=[a0+16]) == 0, and falls through when a3(=[a0+16]) != 0.
  The `beq` branch at 0xa0020220 targets 0xa00201f8 and is always taken.
  The `beq` branch at 0xa002022c targets 0xa0020264, is taken when a5(=[a0+16]) == 0, and falls through when a5(=[a0+16]) != 0.
  The `beq` branch at 0xa002023c targets 0xa00201f8 and is always taken.
  The `beq` branch at 0xa002024c targets 0xa00201f4 and is always taken.
  The `beq` branch at 0xa002025c targets 0xa0020220 and is always taken.
  The `beq` branch at 0xa002026c targets 0xa002023c and is always taken.
  The `beq` branch at 0xa002027c targets 0xa00201f4 and is always taken.
  The return at 0xa0020200 has v0 = one of ?, 0x0.
- `n16c550Strategy` in `sbin/stand/symmon.IP32` at 0xa0020284 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0020284-0xa00203dc (344 bytes).
  It occupies 344 bytes.
  The `lw` at 0xa0020298 loads 4 bytes from a0 (arg0 at entry) +0xc.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0xa00202a0, `lw` at 0xa00202d4, `lw` at 0xa0020370.
  5 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x10, including `sw` at 0xa00202c0, `sw` at 0xa00202e0, `sw` at 0xa00202e4.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24, including `lw` at 0xa00202c4, `lw` at 0xa0020314, `lw` at 0xa0020384.
  The `lbu` at 0xa00202c8 loads 1 byte from ?.
  The `sw` at 0xa00202f4 stores 4 bytes to a0 (arg0 at entry) +0x20.
  The `lw` at 0xa0020334 loads 4 bytes from ((([a0+36] << 0x3) + [a0+36]) << 0x2) -0x5ffc5538.
  2 such `lw` accesses load 4 bytes from [((([a0+36] << 0x3) + [a0+36]) << 0x2)-1610372408] +0x8, including `lw` at 0xa0020350, `lw` at 0xa00203b0.
  2 such `lw` accesses load 4 bytes from [((([a0+36] << 0x3) + [a0+36]) << 0x2)-1610372408] +0x4, including `lw` at 0xa0020354, `lw` at 0xa00203bc.
  The `sb` at 0xa002036c stores 1 byte to ?.
  The `lw` at 0xa00203ac loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `jal` at 0xa00202cc calls consputc [0xa0020a24] with a0=?, a1=[a0+36], a2=?, a3=?.
  The `jal` at 0xa0020348 calls _scandevs [0xa0026cd8] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa0020364 calls _circ_getc [0xa002840c] with a0=[((([a0+36] << 0x3) + [a0+36]) << 0x2)-1610372408], a1=?, a2=?, a3=?.
  The `jal` at 0xa0020380 calls consgetc [0xa00208fc] with a0=[a0+36], a1=?, a2=?, a3=?.
  The `jal` at 0xa0020394 calls _ttyinput [0xa00282a4] with a0=[((([a0+36] << 0x3) + [a0+36]) << 0x2)-1610372408], a1=?, a2=?, a3=?, a4=ret(consgetc).
  The `jal` at 0xa002039c calls consgetc [0xa00208fc] with a0=[a0+36], a1=?, a2=?, a3=?.
  The `beq` branch at 0xa00202a8 targets 0xa0020314, is taken when a1 == at(=0x1), and falls through when a1 != at(=0x1).
  The `bne` branch at 0xa00202b4 targets 0xa00202f0, is taken when a1 != v0(=0x2), and falls through when a1 == v0(=0x2).
  The `blez` branch at 0xa00202bc targets 0xa00202e4, is taken when s3(=[a0+16]) <= 0 (signed), and falls through when s3(=[a0+16]) > 0 (signed).
  The `bgtz` branch at 0xa00202dc targets 0xa00202c4, is taken when a1(=[a0+16]) > 0 (signed), and falls through when a1(=[a0+16]) <= 0 (signed).
  The `beq` branch at 0xa00202e8 targets 0xa00202f8 and is always taken.
  The `bgtz` branch at 0xa0020330 targets 0xa0020380, is taken when s3(=[a0+16]) > 0 (signed), and falls through when s3(=[a0+16]) <= 0 (signed).
  The `beq` branch at 0xa0020338 targets 0xa00202e4 and is always taken.
  The `bnel` branch at 0xa0020340 targets 0xa0020364, is taken when v0(=[[((([a0+36] << 0x3) + [a0+36]) << 0x2)-1610372408]+4]) != a0(=[[((([a0+36] << 0x3) + [a0+36]) << 0x2)-1610372408]+8]), and falls through when v0(=[[((([a0+36] << 0x3) + [a0+36]) << 0x2)-1610372408]+4]) == a0(=[[((([a0+36] << 0x3) + [a0+36]) << 0x2)-1610372408]+8]); its branch-likely delay slot `addiu s1,s1,1` at 0xa0020344 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa0020358 targets 0xa0020348, is taken when t8(=[[((([a0+36] << 0x3) + [a0+36]) << 0x2)-1610372408]+4]) == t9(=[[((([a0+36] << 0x3) + [a0+36]) << 0x2)-1610372408]+8]), and falls through when t8(=[[((([a0+36] << 0x3) + [a0+36]) << 0x2)-1610372408]+4]) != t9(=[[((([a0+36] << 0x3) + [a0+36]) << 0x2)-1610372408]+8]).
  The `blez` branch at 0xa0020378 targets 0xa00202e4, is taken when ra(=[a0+16]-1) <= 0 (signed), and falls through when ra(=[a0+16]-1) > 0 (signed).
  The `beq` branch at 0xa0020388 targets 0xa00203ac, is taken when v0(=ret(consgetc)) == 0, and falls through when v0(=ret(consgetc)) != 0.
  The `bne` branch at 0xa00203a4 targets 0xa0020390, is taken when v0(=ret(consgetc)) != 0, and falls through when v0(=ret(consgetc)) == 0.
  The `beq` branch at 0xa00203b8 targets 0xa0020340, is taken when (at(=[a0+44]) & 0x4) == 0, and falls through when (at(=[a0+44]) & 0x4) != 0.
  The `bne` branch at 0xa00203c0 targets 0xa0020364, is taken when v0(=[[((([a0+36] << 0x3) + [a0+36]) << 0x2)-1610372408]+4]) != a0(=[[((([a0+36] << 0x3) + [a0+36]) << 0x2)-1610372408]+8]), and falls through when v0(=[[((([a0+36] << 0x3) + [a0+36]) << 0x2)-1610372408]+4]) == a0(=[[((([a0+36] << 0x3) + [a0+36]) << 0x2)-1610372408]+8]).
  The `beq` branch at 0xa00203d4 targets 0xa00202f8 and is always taken.
  The return at 0xa002030c has v0 = one of 0x0, 0x7.
- `n16c550Init` in `sbin/stand/symmon.IP32` at 0xa00203dc (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00203dc-0xa0020480 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xa00203f0 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xa00203f8 loads 4 bytes from abs 0xffffffffa0058c60.
  The `sw` at 0xa0020400 stores 4 bytes to abs 0xffffffffa0058c60.
  3 such `lw` accesses load 4 bytes from abs 0xffffffffa0058438, including `lw` at 0xa0020418, `lw` at 0xa0020438, `lw` at 0xa002046c.
  The `sw` at 0xa002047c stores 4 bytes to abs 0xffffffffa0058438.
  The `jal` at 0xa0020410 calls bzero [0xa002cfa8] with a0=0xffffffffa0058440, a1=0x818, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa0020428 calls getBaud [0xa00205a4] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa0020430 calls configurePort [0xa0020734] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xa00203e4 targets 0xa0020464, is taken when a0 == 0, and falls through when a0 != 0.
  The `bnel` branch at 0xa00203fc targets 0xa002040c, is taken when at(=[0xffffffffa0058c60]) != v0(=[a0+16]), and falls through when at(=[0xffffffffa0058c60]) == v0(=[a0+16]); its branch-likely delay slot `sw v0,2088(s1)` at 0xa0020400 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa0020404 targets 0xa0020454 and is always taken.
  The `blez` branch at 0xa002041c targets 0xa002044c, is taken when t8(=[0xffffffffa0058438]) <= 0 (signed), and falls through when t8(=[0xffffffffa0058438]) > 0 (signed).
  The `bne` branch at 0xa0020444 targets 0xa0020428, is taken when s0(?) < t9(=[0xffffffffa0058438]) (signed), and falls through when s0(?) >= t9(=[0xffffffffa0058438]) (signed).
  The `bne` branch at 0xa0020470 targets 0xa002040c, is taken when ra(=[0xffffffffa0058438]) != 0, and falls through when ra(=[0xffffffffa0058438]) == 0.
  The `beq` branch at 0xa0020478 targets 0xa002040c and is always taken.
  The return at 0xa002045c has v0 = 0x0.
- `n16c550ReadStat` in `sbin/stand/symmon.IP32` at 0xa0020480 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0020480-0xa00204dc (92 bytes).
  It occupies 92 bytes.
  The `lw` at 0xa0020490 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0xa00204b0 loads 4 bytes from ((([a0+36] << 0x3) + [a0+36]) << 0x2) -0x5ffc5538.
  The `sw` at 0xa00204bc stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0xa00204d8 stores 4 bytes to a0 (arg0 at entry) +0x20.
  The `jal` at 0xa00204ac calls _circ_nread [0xa00284c4] with a0=[((([a0+36] << 0x3) + [a0+36]) << 0x2)-1610372408], a1=((([a0+36] << 0x3) + [a0+36]) << 0x2), a2=[a0+36], a3=a3 at entry (arg3).
  The `beq` branch at 0xa00204b8 targets 0xa00204d0, is taken when v0(=ret(_circ_nread)) == 0, and falls through when v0(=ret(_circ_nread)) != 0.
  The `beq` branch at 0xa00204d4 targets 0xa00204c4 and is always taken.
  The return at 0xa00204c8 has v0 = one of 0x0, 0x3.
- `n16c550_strat` in `sbin/stand/symmon.IP32` at 0xa00204dc (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00204dc-0xa00205a4 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xa00204e8 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xa0020508 loads 4 bytes from ([a1] << 0x2) -0x5ffc9cf0.
  The `sw` at 0xa0020518 stores 4 bytes to a1 (arg1 at entry) +0x20.
  Calls (unknown callee) via register with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x0 (`jr` at 0xa002050c).
  The `beq` branch at 0xa00204fc targets 0xa0020514, is taken when v1(=[a1]) >= 0x11 (unsigned), and falls through when v1(=[a1]) < 0x11 (unsigned).
  The return at 0xa0020524 has v0 = 0x7.
  The instructions from 0xa002052c to 0xa00205a0 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xa002050c uses a jump table whose successors are unresolved.
- `getBaud` in `sbin/stand/symmon.IP32` at 0xa00205a4 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00205a4-0xa0020734 (400 bytes).
  It occupies 400 bytes.
  The `lbu` at 0xa002061c loads 1 byte from ret(atob) +0x0.
  2 such `sw` accesses store 4 bytes to (a0 << 0x2) -0x5ffa73a8, including `sw` at 0xa0020630, `sw` at 0xa00206c0.
  The `lw` at 0xa0020638 loads 4 bytes from abs 0xffffffffa00597c8.
  The `lw` at 0xa00206f8 loads 4 bytes from (a0 << 0x2) -0x5ffa73a8.
  The `jal` at 0xa00205c4 calls getenv [0xa002ba5c] with a0=0xffffffffa0036358, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa00205f0 calls checkSerialBaudRate [0xa0020884] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa0020614 calls atob [0xa002bea0] with a0=ret(checkSerialBaudRate), a1=(a0 << 0x2)+0xffffffffa0058c58, a2=?, a3=?.
  The `jal` at 0xa0020654 calls printf [0xa002e620] with a0=0xffffffffa0036398, a1=one of 0xffffffffa0036380, 0xffffffffa0036390, a2=ret(checkSerialBaudRate), a3=?.
  The `jal` at 0xa0020680 calls __assert [0xa0027fc8] with a0=0xffffffffa0036360, a1=0xffffffffa0036300, a2=0x16c, a3=?.
  The `jal` at 0xa0020698 calls strcmp [0xa0030938] with a0=ret(getenv), a1=0xffffffffa0036378, a2=?, a3=?.
  The `jal` at 0xa00206a8 calls getenv [0xa002ba5c] with a0=0xffffffffa0036390, a1=?, a2=?, a3=?.
  The `jal` at 0xa00206cc calls strcmp [0xa0030938] with a0=ret(getenv), a1=0xffffffffa0036378, a2=?, a3=?.
  The `jal` at 0xa00206dc calls getenv [0xa002ba5c] with a0=0xffffffffa0036380, a1=?, a2=?, a3=?.
  The `jal` at 0xa00206f4 calls mapBaud [0xa00208e0] with a0=[(a0 << 0x2)-1610249128], a1=?, a2=?, a3=?.
  The `jal` at 0xa002070c calls getenv [0xa002ba5c] with a0=0xffffffffa0036380, a1=?, a2=?, a3=?.
  The `jal` at 0xa0020724 calls getenv [0xa002ba5c] with a0=0xffffffffa0036390, a1=?, a2=?, a3=?.
  The `bltz` branch at 0xa00205cc targets 0xa0020678, is taken when s1(=a0) < 0 (signed), and falls through when s1(=a0) >= 0 (signed).
  The `beq` branch at 0xa00205d8 targets 0xa002067c, is taken when s1(=a0) >= 0x2 (signed), and falls through when s1(=a0) < 0x2 (signed).
  The `beq` branch at 0xa00205e0 targets 0xa0020690, is taken when s1(=a0) == 0, and falls through when s1(=a0) != 0.
  The `beq` branch at 0xa00205e8 targets 0xa00206c4, is taken when s1(=a0) == t9(=0x1), and falls through when s1(=a0) != t9(=0x1).
  The `beq` branch at 0xa0020608 targets 0xa0020628, is taken when v0(=ret(checkSerialBaudRate)) == 0, and falls through when v0(=ret(checkSerialBaudRate)) != 0.
  The `beq` branch at 0xa0020620 targets 0xa00206f4, is taken when t8(=[ret(atob)]:1) == 0, and falls through when t8(=[ret(atob)]:1) != 0.
  The `beq` branch at 0xa0020628 targets 0xa00206b8, is taken when s1(=a0) == 0, and falls through when s1(=a0) != 0.
  The `beql` branch at 0xa002063c targets 0xa0020660, is taken when ra(=[0xffffffffa00597c8]) == 0, and falls through when ra(=[0xffffffffa00597c8]) != 0; its branch-likely delay slot `ld s3,24(sp)` at 0xa0020640 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa0020644 targets 0xa0020650, is taken when s1(=a0) == 0, and falls through when s1(=a0) != 0.
  The `bne` branch at 0xa0020688 targets 0xa00205e8, is taken when s1(=a0) != 0, and falls through when s1(=a0) == 0.
  The `beq` branch at 0xa0020690 targets 0xa00206a8, is taken when s2(=ret(getenv)) == 0, and falls through when s2(=ret(getenv)) != 0.
  The `beq` branch at 0xa00206a0 targets 0xa002070c, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0xa00206b0 targets 0xa00205f0 and is always taken.
  The `beq` branch at 0xa00206bc targets 0xa0020634 and is always taken.
  The `beq` branch at 0xa00206c4 targets 0xa00206dc, is taken when s2(=ret(getenv)) == 0, and falls through when s2(=ret(getenv)) != 0.
  The `beq` branch at 0xa00206d4 targets 0xa0020724, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `bne` branch at 0xa00206e4 targets 0xa00205f0, is taken when v0(=ret(getenv)) != 0, and falls through when v0(=ret(getenv)) == 0.
  The `beq` branch at 0xa00206ec targets 0xa00205f0 and is always taken.
  The `bgtzl` branch at 0xa00206fc targets 0xa0020660, is taken when v0(=ret(mapBaud)) > 0 (signed), and falls through when v0(=ret(mapBaud)) <= 0 (signed); its branch-likely delay slot `ld s3,24(sp)` at 0xa0020700 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa0020704 targets 0xa0020628 and is always taken.
  The `bne` branch at 0xa0020714 targets 0xa00205f0, is taken when v0(=ret(getenv)) != 0, and falls through when v0(=ret(getenv)) == 0.
  The `beq` branch at 0xa002071c targets 0xa00205f0 and is always taken.
  The `beq` branch at 0xa002072c targets 0xa00205f0 and is always taken.
  The return at 0xa0020670 has v0 = one of ?, ret(printf), ret(mapBaud).
- `configurePort` in `sbin/stand/symmon.IP32` at 0xa0020734 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0020734-0xa0020854 (288 bytes).
  It occupies 288 bytes.
  The `sd` at 0xa0020768 stores 8 bytes to abs 0xffffffffbf310000.
  2 such `lw` accesses load 4 bytes from (((a0 << 0x3) + a0) << 0x2) -0x5ffc554c, including `lw` at 0xa0020780, `lw` at 0xa00207dc.
  2 such `sb` accesses store 1 byte to [(((a0 << 0x3) + a0) << 0x2)-1610372428] +0x0, including `sb` at 0xa002078c, `sb` at 0xa00207e8.
  The `lw` at 0xa0020794 loads 4 bytes from (((a0 << 0x3) + a0) << 0x2) -0x5ffc553c.
  The `sb` at 0xa00207a0 stores 1 byte to [(((a0 << 0x3) + a0) << 0x2)-1610372412] +0x0.
  2 such `lw` accesses load 4 bytes from (a0 << 0x2) -0x5ffa73a8, including `lw` at 0xa00207a8, `lw` at 0xa00207b8.
  The `lw` at 0xa00207ac loads 4 bytes from (((a0 << 0x3) + a0) << 0x2) -0x5ffc5558.
  The `sb` at 0xa00207b0 stores 1 byte to [(((a0 << 0x3) + a0) << 0x2)-1610372440] +0x0.
  2 such `lw` accesses load 4 bytes from (((a0 << 0x3) + a0) << 0x2) -0x5ffc5554, including `lw` at 0xa00207c8, `lw` at 0xa00207f0.
  2 such `sb` accesses store 1 byte to [(((a0 << 0x3) + a0) << 0x2)-1610372436] +0x0, including `sb` at 0xa00207d4, `sb` at 0xa00207fc.
  The `lw` at 0xa0020804 loads 4 bytes from (((a0 << 0x3) + a0) << 0x2) -0x5ffc5548.
  The `sb` at 0xa0020810 stores 1 byte to [(((a0 << 0x3) + a0) << 0x2)-1610372424] +0x0.
  The `lw` at 0xa0020818 loads 4 bytes from (((a0 << 0x3) + a0) << 0x2) -0x5ffc5550.
  The `sb` at 0xa0020824 stores 1 byte to [(((a0 << 0x3) + a0) << 0x2)-1610372432] +0x0.
  The `sw` at 0xa0020828 stores 4 bytes to table(0xffffffffa0058444) +0x0.
  The `sw` at 0xa0020830 stores 4 bytes to table(0xffffffffa0058448) +0x0.
  The `jal` at 0xa00207a4 calls mapBaud [0xa00208e0] with a0=[(a0 << 0x2)-1610249128], a1=0x18, a2=[(((a0 << 0x3) + a0) << 0x2)-1610372412], a3=[(((a0 << 0x3) + a0) << 0x2)-1610372428].
  The `jal` at 0xa00207b4 calls mapBaud [0xa00208e0] with a0=[(a0 << 0x2)-1610249128], a1=[(((a0 << 0x3) + a0) << 0x2)-1610372440], a2=?, a3=?.
  The `jal` at 0xa0020844 calls __assert [0xa0027fc8] with a0=0xffffffffa0036360, a1=0xffffffffa0036300, a2=0x19c, a3=a3 at entry (arg3).
  The `bltz` branch at 0xa0020748 targets 0xa0020834, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0xa0020754 targets 0xa0020834, is taken when a0 >= 0x2 (signed), and falls through when a0 < 0x2 (signed).
  The `beq` branch at 0xa002084c targets 0xa002075c and is always taken.
  The return at 0xa002082c has v0 = ret(mapBaud).
- `nextBaud` in `sbin/stand/symmon.IP32` at 0xa0020854 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0020854-0xa0020884 (48 bytes).
  It occupies 48 bytes.
  The `lw` at 0xa0020864 loads 4 bytes from ?.
  The `lw` at 0xa0020878 loads 4 bytes from abs 0xffffffffa003aaf0.
  The `bne` branch at 0xa002086c targets 0xa002087c, is taken when a0 < v0(?) (signed), and falls through when a0 >= v0(?) (signed).
  The `bne` branch at 0xa0020874 targets 0xa0020864, is taken when a3(?) != a4(=0xffffffffa003ab14), and falls through when a3(?) == a4(=0xffffffffa003ab14).
  The return at 0xa002087c has v0 = one of ?, [0xffffffffa003aaf0].
- `checkSerialBaudRate` in `sbin/stand/symmon.IP32` at 0xa0020884 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0020884-0xa00208e0 (92 bytes).
  It occupies 92 bytes.
  The `lw` at 0xa00208b4 loads 4 bytes from abs 0xffffffffa003aaf0.
  The `lw` at 0xa00208c4 loads 4 bytes from ?.
  The `jal` at 0xa0020898 calls atoi [0xa002c30c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xa0020890 targets 0xa00208c8, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0xa00208b8 targets 0xa00208d8, is taken when a5(?) == v0(=ret(atoi)), and falls through when a5(?) != v0(=ret(atoi)).
  The `bnel` branch at 0xa00208c0 targets 0xa00208b8, is taken when a3(?) != a4(=0xffffffffa003ab14), and falls through when a3(?) == a4(=0xffffffffa003ab14); its branch-likely delay slot `lw a5,0(a3)` at 0xa00208c4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa00208d8 targets 0xa00208cc and is always taken.
  The return at 0xa00208d0 has v0 = one of 0x0, a0.
- `mapBaud` in `sbin/stand/symmon.IP32` at 0xa00208e0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00208e0-0xa00208fc (28 bytes).
  It occupies 28 bytes.
  The return at 0xa00208f4 has v0 = ?.
- `sign_extend` in `sbin/stand/symmon.IP32` at 0xa0021134 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0021134-0xa0021164 (48 bytes).
  It occupies 48 bytes.
  The `beq` branch at 0xa0021138 targets 0xa002115c, is taken when a1 == at(=0x1), and falls through when a1 != at(=0x1).
  The `beql` branch at 0xa0021144 targets 0xa0021154, is taken when a1 == v1(=0x2), and falls through when a1 != v1(=0x2); its branch-likely delay slot `dsll32 v0,a0,0x10` at 0xa0021148 runs only when taken and is annulled on fall-through.
  The return at 0xa002114c has v0 = a0.
  The return at 0xa0021154 has v0 = ?.
  The return at 0xa002115c has v0 = ?.
- `bc` in `sbin/stand/symmon.IP32` at 0xa0021164 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0021164-0xa00212cc (360 bytes).
  It occupies 360 bytes.
  The `jal` at 0xa00211b0 calls mem_error [0xa00215c4] with a0=0xffffffffa0036d10, a1=0x8, a2=0x1, a3=0x2.
  The `jal` at 0xa0021200 calls mem_error [0xa00215c4] with a0=0xffffffffa0036d10, a1=0x8, a2=?, a3=?.
  The `jal` at 0xa0021248 calls mem_error [0xa00215c4] with a0=0xffffffffa0036d10, a1=0x1, a2=a2 at entry (arg2), a3=0x2, a4=0x4, a5=0x8.
  The `beq` branch at 0xa0021174 targets 0xa0021268, is taken when a0 == at(=0x10), and falls through when a0 != at(=0x10).
  The `beq` branch at 0xa0021180 targets 0xa0021224, is taken when a0 == v0(=-0xa), and falls through when a0 != v0(=-0xa).
  The `beql` branch at 0xa002118c targets 0xa00211d8, is taken when a0 == v1(=0xa), and falls through when a0 != v1(=0xa); its branch-likely delay slot `addiu a0,zero,1` at 0xa0021190 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa0021198 targets 0xa0021208, is taken when a0 == a1(=0x8), and falls through when a0 != a1(=0x8).
  The `beq` branch at 0xa00211a0 targets 0xa0021284, is taken when a0 == a2(=0x1), and falls through when a0 != a2(=0x1).
  The `beq` branch at 0xa00211a8 targets 0xa00211cc, is taken when a0 == a3(=0x2), and falls through when a0 != a3(=0x2).
  The `beq` branch at 0xa00211d0 targets 0xa00211c0 and is always taken.
  The `beq` branch at 0xa00211e0 targets 0xa002129c, is taken when s0(=a1) == a0(=0x1), and falls through when s0(=a1) != a0(=0x1).
  The `beq` branch at 0xa00211e8 targets 0xa00212a4, is taken when s0(=a1) == v1(=0x2), and falls through when s0(=a1) != v1(=0x2).
  The `beq` branch at 0xa00211f0 targets 0xa00212ac, is taken when s0(=a1) == a0(=0x4), and falls through when s0(=a1) != a0(=0x4).
  The `beq` branch at 0xa00211f8 targets 0xa0021260, is taken when s0(=a1) == a1(=0x8), and falls through when s0(=a1) != a1(=0x8).
  The `beq` branch at 0xa002121c targets 0xa00211c0 and is always taken.
  The `beq` branch at 0xa0021224 targets 0xa00212b4, is taken when s0(=a1) == a1(=0x1), and falls through when s0(=a1) != a1(=0x1).
  The `beq` branch at 0xa002122c targets 0xa00212bc, is taken when s0(=a1) == a3(=0x2), and falls through when s0(=a1) != a3(=0x2).
  The `beq` branch at 0xa0021234 targets 0xa00212c4, is taken when s0(=a1) == a4(=0x4), and falls through when s0(=a1) != a4(=0x4).
  The `beq` branch at 0xa002123c targets 0xa0021290, is taken when s0(=a1) == a5(=0x8), and falls through when s0(=a1) != a5(=0x8).
  The `beq` branch at 0xa0021258 targets 0xa00211e0 and is always taken.
  The `beq` branch at 0xa0021260 targets 0xa00211bc and is always taken.
  The `beq` branch at 0xa002127c targets 0xa00211bc and is always taken.
  The `beq` branch at 0xa0021288 targets 0xa00211c0 and is always taken.
  The `beq` branch at 0xa0021294 targets 0xa00211c0 and is always taken.
  The `beq` branch at 0xa002129c targets 0xa00211bc and is always taken.
  The `beq` branch at 0xa00212a4 targets 0xa00211bc and is always taken.
  The `beq` branch at 0xa00212ac targets 0xa00211bc and is always taken.
  The `beq` branch at 0xa00212b4 targets 0xa00211bc and is always taken.
  The `beq` branch at 0xa00212bc targets 0xa00211bc and is always taken.
  The `beq` branch at 0xa00212c4 targets 0xa00211bc and is always taken.
  The return at 0xa00211c4 has v0 = one of ?, (a1 << 0x3), (a1 << 0x2), 0x15.
- `dprint` in `sbin/stand/symmon.IP32` at 0xa00212cc (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00212cc-0xa002159c (720 bytes).
  It occupies 720 bytes.
  The `lbu` at 0xa0021324 loads 1 byte from table(0xffffffffa0036d18) +0x0.
  20 such `sb` accesses store 1 byte to ?, including `sb` at 0xa0021330, `sb` at 0xa002143c, `sb` at 0xa0021484.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xa002139c, `lbu` at 0xa00213b0.
  The `lbu` at 0xa0021454 loads 1 byte from table(0xffffffffa003c529) +0x0.
  The `jal` at 0xa0021360 calls putchar [0xa002dd70] with a0=one of 0x20, 0x30, a1=?, a2=?, a3=?.
  The `jal` at 0xa0021390 calls putchar [0xa002dd70] with a0=0x2d, a1=?, a2=?, a3=?.
  The `jal` at 0xa00213a0 calls putchar [0xa002dd70] with a0=?, a1=?, a2=?, a3=?.
  The `bltz` branch at 0xa00212ec targets 0xa00213d0, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `beq` branch at 0xa00212fc targets 0xa00213ec, is taken when a1(?) == a2(=0x1), and falls through when a1(?) != a2(=0x1).
  The `bne` branch at 0xa002132c targets 0xa002130c, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0xa0021340 targets 0xa002134c, is taken when s5(=one of 0x0, 0x1) == 0, and falls through when s5(=one of 0x0, 0x1) != 0.
  The `bltz` branch at 0xa0021350 targets 0xa0021388, is taken when s1(?) < 0 (signed), and falls through when s1(?) >= 0 (signed).
  The `beq` branch at 0xa0021358 targets 0xa0021370 and is always taken.
  The `beq` branch at 0xa002136c targets 0xa0021388, is taken when s1(?) == s4(=-0x1), and falls through when s1(?) != s4(=-0x1).
  The `bne` branch at 0xa0021374 targets 0xa0021360, is taken when s2(=a3) != 0, and falls through when s2(=a3) == 0.
  The `beq` branch at 0xa0021380 targets 0xa0021360 and is always taken.
  The `beq` branch at 0xa0021388 targets 0xa0021398, is taken when s5(=one of 0x0, 0x1) == 0, and falls through when s5(=one of 0x0, 0x1) != 0.
  The `bnel` branch at 0xa00213ac targets 0xa00213a0, is taken when s3(=sp-128) < s0(?) (unsigned), and falls through when s3(=sp-128) >= s0(?) (unsigned); its branch-likely delay slot `lbu a0,-1(s0)` at 0xa00213b0 runs only when taken and is annulled on fall-through.
  The `bltz` branch at 0xa00213d8 targets 0xa0021588, is taken when a6(=(a0 << 0x0)) < 0 (signed), and falls through when a6(=(a0 << 0x0)) >= 0 (signed).
  The `beq` branch at 0xa00213e4 targets 0xa00212fc and is always taken.
  The `blez` branch at 0xa00213fc targets 0xa0021594, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `beq` branch at 0xa0021434 targets 0xa0021448 and is always taken.
  The `beq` branch at 0xa0021444 targets 0xa0021570, is taken when a1(?) == a6(?), and falls through when a1(?) != a6(?).
  The `bne` branch at 0xa002145c targets 0xa002143c, is taken when (a4(=entry(0xffffffffa003c529)) & 0xc0d7) != 0, and falls through when (a4(=entry(0xffffffffa003c529)) & 0xc0d7) == 0.
  The `bne` branch at 0xa002146c targets 0xa0021494, is taken when a2(?) < 0xc (signed), and falls through when a2(?) >= 0xc (signed).
  The `beq` branch at 0xa0021478 targets 0xa00214b4, is taken when a2(?) >= 0xd (signed), and falls through when a2(?) < 0xd (signed).
  The `beq` branch at 0xa002148c targets 0xa0021444 and is always taken.
  The `bne` branch at 0xa0021494 targets 0xa00214d8, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0xa002149c targets 0xa0021518, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xa00214ac targets 0xa0021444 and is always taken.
  The `bne` branch at 0xa00214b4 targets 0xa0021534, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xa00214bc targets 0xa0021554, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xa00214d0 targets 0xa0021444 and is always taken.
  The `beql` branch at 0xa00214d8 targets 0xa0021578, is taken when a2(?) == t0(=0x8), and falls through when a2(?) != t0(=0x8); its branch-likely delay slot `sb ra,0(s0)` at 0xa00214dc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa0021510 targets 0xa0021444 and is always taken.
  The `bnel` branch at 0xa0021518 targets 0xa00214e4, is taken when a2(?) != t3(=0xa), and falls through when a2(?) == t3(=0xa); its branch-likely delay slot `addiu s0,s0,4` at 0xa002151c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa002152c targets 0xa0021444 and is always taken.
  The `bnel` branch at 0xa0021534 targets 0xa00214e4, is taken when a2(?) != t2(=0xd), and falls through when a2(?) == t2(=0xd); its branch-likely delay slot `addiu s0,s0,4` at 0xa0021538 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa002154c targets 0xa0021444 and is always taken.
  The `bnel` branch at 0xa0021554 targets 0xa00214e4, is taken when a2(?) != a7(=0x5c), and falls through when a2(?) == a7(=0x5c); its branch-likely delay slot `addiu s0,s0,4` at 0xa0021558 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa0021568 targets 0xa0021444 and is always taken.
  The `beq` branch at 0xa0021570 targets 0xa0021338 and is always taken.
  The `beq` branch at 0xa0021580 targets 0xa0021444 and is always taken.
  The `beq` branch at 0xa002158c targets 0xa00212fc and is always taken.
  The `beq` branch at 0xa0021594 targets 0xa0021334 and is always taken.
  The return at 0xa00213c8 has v0 = ret(putchar).
- `fms` in `sbin/stand/symmon.IP32` at 0xa002159c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002159c-0xa00215c4 (40 bytes).
  It occupies 40 bytes.
  The `beq` branch at 0xa002159c targets 0xa00215bc, is taken when a0 == 0, and falls through when a0 != 0.
  The `blez` branch at 0xa00215a4 targets 0xa00215bc, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `bgtz` branch at 0xa00215b4 targets 0xa00215b0, is taken when a0(?) > 0 (signed), and falls through when a0(?) <= 0 (signed).
  The return at 0xa00215bc has v0 = one of 0x0, 0x1f, ?.
- `runstandcfg` in `sbin/stand/symmon.IP32` at 0xa0024594 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0024594-0xa0024670 (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0xa00245ac loads 4 bytes from abs 0xffffffffa0039348.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xa0024610, `lw` at 0xa002461c, `lw` at 0xa0024624.
  The `jal` at 0xa00245d8 calls GetPeer [0xa00241c0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa00245f0 calls runstandcfg [0xa0024594] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa00245fc calls GetPeer [0xa00241c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xa0024630 calls (unknown callee) with a0=a1 at entry (arg1), a1=0x0, a2=?, a3=?.
  The `jal` at 0xa0024640 calls GetChild [0xa00241c8] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `beq` branch at 0xa00245c0 targets 0xa0024650, is taken when at(=[0xffffffffa0039348]) == 0, and falls through when at(=[0xffffffffa0039348]) != 0.
  The `beq` branch at 0xa00245d0 targets 0xa002461c and is always taken.
  The `beql` branch at 0xa00245e4 targets 0xa0024610, is taken when s1(?) == 0, and falls through when s1(?) != 0; its branch-likely delay slot `or s1,s2,zero` at 0xa00245e8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xa0024604 targets 0xa00245ec, is taken when v0(=ret(GetPeer)) != 0, and falls through when v0(=ret(GetPeer)) == 0.
  The `beq` branch at 0xa0024614 targets 0xa0024650, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bnel` branch at 0xa0024620 targets 0xa0024614, is taken when a5(?) != s3(=a0), and falls through when a5(?) == s3(=a0); its branch-likely delay slot `lw a4,12(s0)` at 0xa0024624 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xa0024638 targets 0xa00245d8, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `beq` branch at 0xa0024648 targets 0xa00245e4 and is always taken.
  The return at 0xa0024668 has v0 = ?.
- `sigdefault` in `sbin/stand/symmon.IP32` at 0xa00249bc (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00249bc-0xa00249d8 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0xa00249c4 calls EnterInteractiveMode [0xa0031758] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa00249d0 has v0 = ret(EnterInteractiveMode).
- `sigignore` in `sbin/stand/symmon.IP32` at 0xa00249d8 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00249d8-0xa00249e0 (8 bytes).
  It occupies 8 bytes.
  The return at 0xa00249d8 has v0 = ?.
- `checkaliases` in `sbin/stand/symmon.IP32` at 0xa0025bcc (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0025bcc-0xa0025ce0 (276 bytes).
  It occupies 276 bytes.
  The `lw` at 0xa0025c04 loads 4 bytes from abs 0xffffffffa003bee0.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xa0025c28, `lw` at 0xa0025c58, `lw` at 0xa0025c68.
  The `sw` at 0xa0025cdc stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jal` at 0xa0025be4 calls index [0xa0030e70] with a0=a0 at entry (arg0), a1=0x28, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa0025c18 calls strncmp [0xa0030d60] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0xa0025c54 calls parseargs [0xa0025ac8] with a0=?, a1=?, a2=sp-80, a3=?.
  The `jal` at 0xa0025c64 calls strlen [0xa00309ac] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa0025c74 calls strlen [0xa00309ac] with a0=ret(parseargs), a1=?, a2=?, a3=?.
  The `jal` at 0xa0025c98 calls malloc [0xa002fb10] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa0025cb8 calls sprintf [0xa002e920] with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jal` at 0xa0025cc8 calls strcat [0xa00308f0] with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `beq` branch at 0xa0025bf0 targets 0xa0025c34, is taken when v0(=ret(index)) == 0, and falls through when v0(=ret(index)) != 0.
  The `beq` branch at 0xa0025bf8 targets 0xa0025c34, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0xa0025c08 targets 0xa0025c34, is taken when a0(=[0xffffffffa003bee0]) == 0, and falls through when a0(=[0xffffffffa003bee0]) != 0.
  The `beq` branch at 0xa0025c20 targets 0xa0025c50, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `bne` branch at 0xa0025c2c targets 0xa0025c14, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0xa0025c5c targets 0xa0025c34, is taken when v0(=ret(parseargs)) == 0, and falls through when v0(=ret(parseargs)) != 0.
  The `beq` branch at 0xa0025ca0 targets 0xa0025c34, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `beq` branch at 0xa0025cd8 targets 0xa0025c34 and is always taken.
  The return at 0xa0025c48 has v0 = one of a0, ret(malloc).
- `next` in `sbin/stand/symmon.IP32` at 0xa0025ce0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0025ce0-0xa0025d98 (184 bytes).
  It occupies 184 bytes.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0xa0025d48, `sw` at 0xa0025d68.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xa0025d50, `sw` at 0xa0025d6c.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0xa0025d60, `sw` at 0xa0025d70.
  The `jal` at 0xa0025d0c calls index [0xa0030e70] with a0=a0 at entry (arg0), a1=0x28, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa0025d24 calls index [0xa0030e70] with a0=ret(index), a1=0x29, a2=?, a3=?.
  The `jal` at 0xa0025d38 calls atob [0xa002bea0] with a0=ret(index)+1, a1=sp-64, a2=?, a3=?.
  The `beq` branch at 0xa0025d18 targets 0xa0025d64, is taken when v0(=ret(index)) == 0, and falls through when v0(=ret(index)) != 0.
  The `beq` branch at 0xa0025d2c targets 0xa0025d64, is taken when v0(=ret(index)) == 0, and falls through when v0(=ret(index)) != 0.
  The `bne` branch at 0xa0025d40 targets 0xa0025d64, is taken when v0(=ret(atob)) != s5(=ret(index)), and falls through when v0(=ret(atob)) == s5(=ret(index)).
  The `beq` branch at 0xa0025d5c targets 0xa0025d74 and is always taken.
  The return at 0xa0025d90 has v0 = one of a0, 0x0.
- `checkpseudo` in `sbin/stand/symmon.IP32` at 0xa0025d98 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0025d98-0xa0025e60 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xa0025dd0 loads 4 bytes from abs 0xffffffffa003beb8.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xa0025de8, `lw` at 0xa0025df4, `lw` at 0xa0025e00.
  The `jal` at 0xa0025db4 calls index [0xa0030e70] with a0=a0 at entry (arg0), a1=0x28, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa0025e04 calls strncmp [0xa0030d60] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xa0025e50 calls (unknown callee) with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=?, a3=?.
  The `beq` branch at 0xa0025dc0 targets 0xa0025e40, is taken when v0(=ret(index)) == 0, and falls through when v0(=ret(index)) != 0.
  The `beq` branch at 0xa0025dc8 targets 0xa0025e40, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0xa0025dd4 targets 0xa0025e20, is taken when t8(=[0xffffffffa003beb8]) == 0, and falls through when t8(=[0xffffffffa003beb8]) != 0.
  The `beq` branch at 0xa0025ddc targets 0xa0025df4 and is always taken.
  The `beq` branch at 0xa0025dec targets 0xa0025e24, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0xa0025df8 targets 0xa0025de4, is taken when ra(?) != s1(?), and falls through when ra(?) == s1(?).
  The `beql` branch at 0xa0025e0c targets 0xa0025e48, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0; its branch-likely delay slot `lw v0,8(s0)` at 0xa0025e10 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xa0025e1c targets 0xa0025df4, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xa0025e40 targets 0xa0025e24 and is always taken.
  The `beq` branch at 0xa0025e58 targets 0xa0025e24 and is always taken.
  The return at 0xa0025e38 has v0 = one of 0x0, ret(?).
- `walk` in `sbin/stand/symmon.IP32` at 0xa0025e60 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0025e60-0xa0025fe8 (392 bytes).
  It occupies 392 bytes.
  The `lw` at 0xa0025e9c loads 4 bytes from a0 (arg0 at entry) +0x4.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0xa0025ea4, `lw` at 0xa0025f24, `lw` at 0xa0025fcc.
  The `lw` at 0xa0025ea8 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xa0025ed0 loads 4 bytes from abs 0xffffffffa003c778.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xa0025ee8, `lw` at 0xa0025efc, `lw` at 0xa0025f8c.
  The `sw` at 0xa0025f18 stores 4 bytes to abs 0xffffffffa0058d10.
  The `lw` at 0xa0025f3c loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jal` at 0xa0025ebc calls next [0xa0025ce0] with a0=a3 at entry (arg3), a1=sp-80, a2=sp-76, a3=sp-72.
  The `jal` at 0xa0025f30 calls walk [0xa0025e60] with a0=[a0+44], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa0025f70 calls walk [0xa0025e60] with a0=[a0+40], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa0025f88 calls strncmp [0xa0030d60] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa0025fc8 calls walk [0xa0025e60] with a0=[a0+44], a1=?, a2=?, a3=?.
  The `beq` branch at 0xa0025e88 targets 0xa0025f44, is taken when a0 == 0, and falls through when a0 != 0.
  The `beql` branch at 0xa0025e94 targets 0xa0025eb4, is taken when a1 == s0(=0x2b), and falls through when a1 != s0(=0x2b); its branch-likely delay slot `or a0,s3,zero` at 0xa0025e98 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xa0025ea0 targets 0xa0025f28, is taken when at(=[a0+4]) != a1, and falls through when at(=[a0+4]) == a1; its branch-likely delay slot `lw a0,44(s1)` at 0xa0025ea4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xa0025eac targets 0xa0025f24, is taken when v0(=[a0+16]) != a2, and falls through when v0(=[a0+16]) == a2.
  The `beql` branch at 0xa0025ec4 targets 0xa0025f10, is taken when v0(=ret(next)) == 0, and falls through when v0(=ret(next)) != 0; its branch-likely delay slot `lui v0,0xa006` at 0xa0025ec8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa0025ed4 targets 0xa0025f0c, is taken when t8(=[0xffffffffa003c778]) == 0, and falls through when t8(=[0xffffffffa003c778]) != 0.
  The `beq` branch at 0xa0025ef0 targets 0xa0025f88, is taken when a2(?) >= t9(?) (unsigned), and falls through when a2(?) < t9(?) (unsigned).
  The `bne` branch at 0xa0025f00 targets 0xa0025ee8, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `bne` branch at 0xa0025f08 targets 0xa0025f24, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xa0025f14 targets 0xa0025fb8, is taken when s2(=a1) == v1(=0x2b), and falls through when s2(=a1) != v1(=0x2b).
  The `beq` branch at 0xa0025f1c targets 0xa0025f48 and is always taken.
  The `beql` branch at 0xa0025f38 targets 0xa0025f68, is taken when v0(=ret(walk)) == 0, and falls through when v0(=ret(walk)) != 0; its branch-likely delay slot `lw a0,40(s1)` at 0xa0025f3c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa0025f78 targets 0xa0025fb0, is taken when v0(=ret(walk)) == 0, and falls through when v0(=ret(walk)) != 0.
  The `beq` branch at 0xa0025f80 targets 0xa0025f44 and is always taken.
  The `beq` branch at 0xa0025f90 targets 0xa0025fc0, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `bne` branch at 0xa0025fa0 targets 0xa0025ee8, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0xa0025fa8 targets 0xa0025f08 and is always taken.
  The `beq` branch at 0xa0025fb0 targets 0xa0025f44 and is always taken.
  The `beq` branch at 0xa0025fb8 targets 0xa0025f1c and is always taken.
  The `bne` branch at 0xa0025fd0 targets 0xa0025fe0, is taken when v0(=ret(walk)) != 0, and falls through when v0(=ret(walk)) == 0.
  The `beq` branch at 0xa0025fd8 targets 0xa0025f98 and is always taken.
  The `beq` branch at 0xa0025fe0 targets 0xa0025f44 and is always taken.
  The return at 0xa0025f60 has v0 = ?.
- `init_walk` in `sbin/stand/symmon.IP32` at 0xa0026790 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0026790-0xa0026834 (164 bytes).
  It occupies 164 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0xa00267a8, `lw` at 0xa00267d4.
  The `lw` at 0xa00267c8 loads 4 bytes from abs 0xffffffffa0058d90.
  The `sw` at 0xa00267cc stores 4 bytes to ret(new_eiob) +0x0.
  The `sw` at 0xa00267d0 stores 4 bytes to ret(new_eiob) +0x10.
  The `lw` at 0xa00267ec loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xa00267f4 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0xa00267b4 calls new_eiob [0xa0026db0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xa00267dc calls (unknown callee) with a0=a0 at entry (arg0), a1=ret(new_eiob), a2=?, a3=?.
  The `jal` at 0xa00267f8 calls free_eiob [0xa0026e78] with a0=ret(new_eiob), a1=?, a2=?, a3=?.
  The `jal` at 0xa0026800 calls GetChild [0xa00241c8] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xa0026808 calls init_walk [0xa0026790] with a0=ret(GetChild), a1=?, a2=?, a3=?.
  The `jal` at 0xa0026810 calls GetPeer [0xa00241c0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xa0026818 calls init_walk [0xa0026790] with a0=ret(GetPeer), a1=?, a2=?, a3=?.
  The `beq` branch at 0xa00267a0 targets 0xa0026820, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0xa00267ac targets 0xa0026800, is taken when at(=[a0+48]) == 0, and falls through when at(=[a0+48]) != 0.
  The `beq` branch at 0xa00267bc targets 0xa0026820, is taken when v0(=ret(new_eiob)) == 0, and falls through when v0(=ret(new_eiob)) != 0.
  The `beq` branch at 0xa00267e4 targets 0xa00267f8, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The return at 0xa002682c has v0 = one of ?, ret(new_eiob), ret(init_walk).
- `_init_devices` in `sbin/stand/symmon.IP32` at 0xa0026834 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0026834-0xa002686c (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0xa0026840 loads 4 bytes from abs 0xffffffffa0058d90.
  The `sw` at 0xa0026854 stores 4 bytes to abs 0xffffffffa0058d90.
  The `jal` at 0xa0026850 calls GetChild [0xa00241c8] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa0026858 calls init_walk [0xa0026790] with a0=ret(GetChild), a1=?, a2=?, a3=?.
  The return at 0xa0026864 has v0 = ret(init_walk).
- `_init_stdio` in `sbin/stand/symmon.IP32` at 0xa002686c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002686c-0xa00269f8 (396 bytes).
  It occupies 396 bytes.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffa003bf1c, including `lw` at 0xa00268c8, `lw` at 0xa0026984.
  The `lbu` at 0xa00268e4 loads 1 byte from ret(getenv) +0x0.
  The `sw` at 0xa00269b8 stores 4 bytes to abs 0xffffffffa005a3e4.
  The `jal` at 0xa00268c4 calls printf [0xa002e620] with a0=[0xffffffffa003bf1c], a1=ret(getenv), a2=0xffffffffa0037008, a3=?.
  The `jal` at 0xa00268d4 calls getenv [0xa002ba5c] with a0=0xffffffffa0037010, a1=?, a2=?, a3=?.
  The `jal` at 0xa00268f8 calls setenv [0xa002ba24] with a0=0xffffffffa0037018, a1=0xffffffffa0037028, a2=?, a3=?.
  The `jal` at 0xa0026900 calls init_consenv [0xa00269f8] with a0=0xffffffffa0037040, a1=?, a2=?, a3=?.
  The `jal` at 0xa002690c calls Close [0xa00255a0] with a0=0x0, a1=?, a2=?, a3=?.
  The `jal` at 0xa0026914 calls Close [0xa00255a0] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0xa002691c calls getenv [0xa002ba5c] with a0=0xffffffffa0036fb0, a1=?, a2=?, a3=?.
  The `jal` at 0xa0026928 calls getenv [0xa002ba5c] with a0=0xffffffffa0036fc0, a1=?, a2=?, a3=?.
  The `jal` at 0xa0026944 calls Open [0xa0024e50] with a0=ret(getenv), a1=0x0, a2=sp-80, a3=?.
  The `jal` at 0xa0026960 calls Open [0xa0024e50] with a0=ret(getenv), a1=0x1, a2=sp-80, a3=?.
  The `jal` at 0xa0026980 calls printf [0xa002e620] with a0=[0xffffffffa003bf1c], a1=ret(getenv), a2=0xffffffffa0037000, a3=?.
  The `jal` at 0xa0026990 calls init_consenv [0xa00269f8] with a0=0x0, a1=?, a2=?, a3=?.
  The `jal` at 0xa00269a0 calls printf [0xa002e620] with a0=0xffffffffa0036fd0, a1=?, a2=0xffffffffa0037008, a3=?.
  The `jal` at 0xa00269e8 calls panic [0xa002af8c] with a0=0xffffffffa0037048, a1=?, a2=?, a3=?.
  The `beq` branch at 0xa00268b0 targets 0xa002690c and is always taken.
  The `beq` branch at 0xa00268b8 targets 0xa00269a0, is taken when v0(=ret(Open)) == s7(=0xd), and falls through when v0(=ret(Open)) != s7(=0xd).
  The `beq` branch at 0xa00268cc targets 0xa0026990, is taken when s2(=one of 0x0, 0x1, 0x2) == 0, and falls through when s2(=one of 0x0, 0x1, 0x2) != 0.
  The `beq` branch at 0xa00268dc targets 0xa00269e8, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `beq` branch at 0xa00268e8 targets 0xa00269e8, is taken when s5(=0x64) == t8(=[ret(getenv)]:1), and falls through when s5(=0x64) != t8(=[ret(getenv)]:1).
  The `beq` branch at 0xa00268f0 targets 0xa00269e8, is taken when s2(=one of 0x0, 0x1, 0x2) == s6(=0x2), and falls through when s2(=one of 0x0, 0x1, 0x2) != s6(=0x2).
  The `beq` branch at 0xa0026930 targets 0xa00268cc, is taken when s1(=ret(getenv)) == 0, and falls through when s1(=ret(getenv)) != 0.
  The `beq` branch at 0xa0026938 targets 0xa00268cc, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `bne` branch at 0xa002694c targets 0xa00268b8, is taken when v0(=ret(Open)) != 0, and falls through when v0(=ret(Open)) == 0.
  The `bne` branch at 0xa0026954 targets 0xa00268b8, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `bne` branch at 0xa0026968 targets 0xa0026978, is taken when v0(=ret(Open)) != 0, and falls through when v0(=ret(Open)) == 0.
  The `beq` branch at 0xa0026974 targets 0xa00269b0, is taken when ra(=0x1) == at(?), and falls through when ra(=0x1) != at(?).
  The `beq` branch at 0xa0026988 targets 0xa00268cc and is always taken.
  The `beq` branch at 0xa0026998 targets 0xa002690c and is always taken.
  The `beq` branch at 0xa00269a8 targets 0xa00268c0 and is always taken.
  The `beq` branch at 0xa00269f0 targets 0xa00269c0 and is always taken.
  The return at 0xa00269e0 has v0 = one of 0x1, ret(panic).
- `_init_eiob` in `sbin/stand/symmon.IP32` at 0xa0026b2c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0026b2c-0xa0026b50 (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0xa0026b3c calls bzero [0xa002cfa8] with a0=0xffffffffa0058d28, a1=0x50, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa0026b48 has v0 = ret(bzero).
- `_setup_spb` in `sbin/stand/symmon.IP32` at 0xa00271ac (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00271ac-0xa00271fc (80 bytes).
  It occupies 80 bytes.
  The `sw` at 0xa00271bc stores 4 bytes to abs 0xffffffffa000100c.
  The `sh` at 0xa00271c0 stores 2 bytes to abs 0xffffffffa000100a.
  The `sh` at 0xa00271c4 stores 2 bytes to abs 0xffffffffa0001008.
  The `sw` at 0xa00271c8 stores 4 bytes to abs 0xffffffffa0001004.
  The `sw` at 0xa00271d4 stores 4 bytes to abs 0xffffffffa0001000.
  The `lw` at 0xa00271dc loads 4 bytes from abs 0xffffffffa005a3e0.
  The `sw` at 0xa00271ec stores 4 bytes to abs 0xffffffffa0001010.
  The `sw` at 0xa00271f8 stores 4 bytes to abs 0xffffffffa000102c.
  The `beq` branch at 0xa00271e4 targets 0xa00271f4, is taken when at(=[0xffffffffa005a3e0]) == v0(=0x3), and falls through when at(=[0xffffffffa005a3e0]) != v0(=0x3).
  The return at 0xa00271f4 has v0 = 0x3.
- `flashWrite` in `sbin/stand/symmon.IP32` at 0xa002777c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002777c-0xa00277c4 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xa002778c loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `sb` at 0xa00277a0 stores 1 byte to ?.
  The `lbu` at 0xa00277a8 loads 1 byte from ?.
  The `sw` at 0xa00277c0 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `bne` branch at 0xa002779c targets 0xa00277b4, is taken when a6(?) != t0(=0x100), and falls through when a6(?) == t0(=0x100).
  The `bne` branch at 0xa00277ac targets 0xa00277a8, is taken when at(?) != a3(?), and falls through when at(?) == a3(?).
  The `bne` branch at 0xa00277b4 targets 0xa0027790, is taken when a5(?) != t1(=-0x8), and falls through when a5(?) == t1(=-0x8).
  The return at 0xa00277bc has v0 = ?.
- `flashFlush` in `sbin/stand/symmon.IP32` at 0xa00277c4 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00277c4-0xa00277cc (8 bytes).
  It occupies 8 bytes.
  The return at 0xa00277c4 has v0 = ?.
- `flashEnable` in `sbin/stand/symmon.IP32` at 0xa00277cc (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00277cc-0xa0027800 (52 bytes).
  It occupies 52 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffbf310008, including `ld` at 0xa00277d8, `ld` at 0xa00277ec.
  2 such `sd` accesses store 8 bytes to abs 0xffffffffbf310008, including `sd` at 0xa00277e0, `sd` at 0xa00277fc.
  The `beq` branch at 0xa00277d0 targets 0xa00277ec, is taken when a0 == 0, and falls through when a0 != 0.
  The return at 0xa00277e4 has v0 = ?.
  The return at 0xa00277f8 has v0 = ?.
- `log2` in `sbin/stand/symmon.IP32` at 0xa0027800 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0027800-0xa002782c (44 bytes).
  It occupies 44 bytes.
  The `bne` branch at 0xa0027804 targets 0xa0027824, is taken when a0 < 0x2 (signed), and falls through when a0 >= 0x2 (signed).
  The `bne` branch at 0xa002781c targets 0xa0027814, is taken when a3(?) < a0 (signed), and falls through when a3(?) >= a0 (signed).
  The return at 0xa0027824 has v0 = one of 0x0, ?.
- `setCPUSpecifics` in `sbin/stand/symmon.IP32` at 0xa0027878 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0027878-0xa0027944 (204 bytes).
  It occupies 204 bytes.
  The `lw` at 0xa00278b0 loads 4 bytes from table(0xffffffffa00372c8) +0x0.
  The `sw` at 0xa00278c4 stores 4 bytes to a0 (arg0 at entry) +0x20.
  The `sw` at 0xa00278c8 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `jal` at 0xa0027884 calls Read_C0_PRId [0xa002856c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xa00278a8 targets 0xa00278bc, is taken when a1(?) >= 0x24 (unsigned), and falls through when a1(?) < 0x24 (unsigned).
  The return at 0xa00278d0 has v0 = ret(Read_C0_PRId).
  The instructions from 0xa00278d8 to 0xa0027940 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xa00278b4 uses a jump table whose successors are unresolved.
- `setFPUSpecifics` in `sbin/stand/symmon.IP32` at 0xa0027944 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0027944-0xa0027a0c (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xa002797c loads 4 bytes from table(0xffffffffa00373d8) +0x0.
  The `sw` at 0xa0027990 stores 4 bytes to a0 (arg0 at entry) +0x20.
  The `jal` at 0xa0027950 calls Read_C0_PRId [0xa002856c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xa0027974 targets 0xa0027988, is taken when a1(?) >= 0x24 (unsigned), and falls through when a1(?) < 0x24 (unsigned).
  The return at 0xa0027998 has v0 = ret(Read_C0_PRId).
  The instructions from 0xa00279a0 to 0xa0027a08 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xa0027980 uses a jump table whose successors are unresolved.
- `setMemorySpecifics` in `sbin/stand/symmon.IP32` at 0xa0027a0c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0027a0c-0xa0027a40 (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0xa0027a30 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `jal` at 0xa0027a18 calls cpu_mem_init [0xa0027eac] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa0027a20 calls cpu_get_memsize [0xa0027e40] with a0=?, a1=?, a2=?, a3=?.
  The return at 0xa0027a38 has v0 = ret(cpu_get_memsize).
- `setCacheSpecifics` in `sbin/stand/symmon.IP32` at 0xa0027a40 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0027a40-0xa0027b68 (296 bytes).
  It occupies 296 bytes.
  The `lw` at 0xa0027a48 loads 4 bytes from a0 (arg0 at entry) +0x4.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffa005a630, including `lw` at 0xa0027a7c, `lw` at 0xa0027af0.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffa005a660, including `lw` at 0xa0027a84, `lw` at 0xa0027af8.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffa005a720, including `lw` at 0xa0027a9c, `lw` at 0xa0027abc.
  The `lw` at 0xa0027ab0 loads 4 bytes from abs 0xffffffffa005a710.
  The `sw` at 0xa0027ae4 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `lw` at 0xa0027b1c loads 4 bytes from abs 0xffffffffa005a610.
  The `lw` at 0xa0027b24 loads 4 bytes from abs 0xffffffffa005a6b0.
  The `lw` at 0xa0027b48 loads 4 bytes from abs 0xffffffffa005a620.
  The `lw` at 0xa0027b50 loads 4 bytes from abs 0xffffffffa005a7c0.
  The `jal` at 0xa0027a78 calls log2 [0xa0027800] with a0=[0xffffffffa005a630], a1=0xffffffffa0060000, a2=[a0+4], a3=0x1.
  The `jal` at 0xa0027a8c calls log2 [0xa0027800] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa0027aac calls log2 [0xa0027800] with a0=[0xffffffffa005a710], a1=[0xffffffffa005a720], a2=[a0+4], a3=0x1.
  The `jal` at 0xa0027ac4 calls log2 [0xa0027800] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa0027aec calls log2 [0xa0027800] with a0=[0xffffffffa005a630], a1=[0xffffffffa005a720], a2=[a0+4], a3=0x1.
  The `jal` at 0xa0027b00 calls log2 [0xa0027800] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa0027b18 calls log2 [0xa0027800] with a0=[0xffffffffa005a610], a1=a1 at entry (arg1), a2=[a0+4], a3=0x1.
  The `jal` at 0xa0027b2c calls log2 [0xa0027800] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa0027b44 calls log2 [0xa0027800] with a0=[0xffffffffa005a620], a1=a1 at entry (arg1), a2=[a0+4], a3=0x1.
  The `jal` at 0xa0027b58 calls log2 [0xa0027800] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xa0027a54 targets 0xa0027b10, is taken when a2(=[a0+4]) == at(=0x3), and falls through when a2(=[a0+4]) != at(=0x3).
  The `beq` branch at 0xa0027a60 targets 0xa0027b3c, is taken when a2(=[a0+4]) == v1(=0x4), and falls through when a2(=[a0+4]) != v1(=0x4).
  The `beq` branch at 0xa0027a68 targets 0xa0027a9c, is taken when a2(=[a0+4]) == a0(=0x7), and falls through when a2(=[a0+4]) != a0(=0x7).
  The `beq` branch at 0xa0027a94 targets 0xa0027ad0 and is always taken.
  The `beq` branch at 0xa0027aa0 targets 0xa0027ae8, is taken when a1(=[0xffffffffa005a720]) == 0, and falls through when a1(=[0xffffffffa005a720]) != 0.
  The `beq` branch at 0xa0027b08 targets 0xa0027ad0 and is always taken.
  The `beq` branch at 0xa0027b34 targets 0xa0027ad0 and is always taken.
  The `beq` branch at 0xa0027b60 targets 0xa0027ad0 and is always taken.
  The return at 0xa0027ae0 has v0 = ret(log2).
- `cpu_get_membase` in `sbin/stand/symmon.IP32` at 0xa0027e38 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0027e38-0xa0027e40 (8 bytes).
  It occupies 8 bytes.
  The return at 0xa0027e38 has v0 = 0x0.
- `generic_intr_func` in `sbin/stand/symmon.IP32` at 0xa002822c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002822c-0xa00282a4 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xa0028230 loads 4 bytes from abs 0xffffffffa0058d20.
  The `lbu` at 0xa0028248 loads 1 byte from [0xffffffffa0058d20] +0x0.
  The `lbu` at 0xa0028268 loads 1 byte from ?.
  The `jal` at 0xa0028274 calls psignal [0xa00249e0] with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0xa0028294 calls psignal [0xa00249e0] with a0=0x1, a1=a1 at entry (arg1), a2=?, a3=?, a5=0x1b.
  The `beq` branch at 0xa002823c targets 0xa0028288, is taken when a3(=[0xffffffffa0058d20]) == 0, and falls through when a3(=[0xffffffffa0058d20]) != 0.
  The `beql` branch at 0xa002824c targets 0xa002828c, is taken when v0(=[[0xffffffffa0058d20]]:1) == 0, and falls through when v0(=[[0xffffffffa0058d20]]:1) != 0; its branch-likely delay slot `or v0,zero,zero` at 0xa0028250 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa0028254 targets 0xa0028264 and is always taken.
  The `beq` branch at 0xa002825c targets 0xa0028288, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bnel` branch at 0xa0028264 targets 0xa002825c, is taken when a3(?) != v0(?), and falls through when a3(?) == v0(?); its branch-likely delay slot `lbu v0,1(a2)` at 0xa0028268 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa002826c targets 0xa0028294, is taken when a4(?) == a5(=0x1b), and falls through when a4(?) != a5(=0x1b).
  The `beq` branch at 0xa0028280 targets 0xa002828c and is always taken.
  The `beq` branch at 0xa002829c targets 0xa0028274 and is always taken.
  The return at 0xa002828c has v0 = one of 0x0, 0x1.
- `deassert` in `sbin/stand/symmon.IP32` at 0xa00287d0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00287d0-0xa0028818 (72 bytes).
  It occupies 72 bytes.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffa003c1d0, including `lw` at 0xa00287d4, `lw` at 0xa00287fc.
  2 such `ld` accesses load 8 bytes from [0xffffffffa003c1d0] +0x0, including `ld` at 0xa00287dc, `ld` at 0xa0028800.
  2 such `sd` accesses store 8 bytes to [0xffffffffa003c1d0] +0x0, including `sd` at 0xa00287f0, `sd` at 0xa0028814.
  The `jal` at 0xa00287ec calls usecwait [0xa0029f54] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa0028810 has v0 = ret(usecwait).
- `check_gpdas` in `sbin/stand/symmon.IP32` at 0xa0028ffc (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0028ffc-0xa0029004 (8 bytes).
  It occupies 8 bytes.
  The return at 0xa0028ffc has v0 = ?.
- `fromBcd` in `sbin/stand/symmon.IP32` at 0xa002a464 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002a464-0xa002a484 (32 bytes).
  It occupies 32 bytes.
  The return at 0xa002a47c has v0 = ?.
- `toBcd` in `sbin/stand/symmon.IP32` at 0xa002a484 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002a484-0xa002a4b4 (48 bytes).
  It occupies 48 bytes.
  The `beq` branch at 0xa002a488 targets 0xa002a4ac, is taken when a0 >= 0x64 (unsigned), and falls through when a0 < 0x64 (unsigned).
  The return at 0xa002a4ac has v0 = one of 0x99, ?.
- `clockAccess` in `sbin/stand/symmon.IP32` at 0xa002a4b4 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002a4b4-0xa002a5c4 (272 bytes).
  It occupies 272 bytes.
  5 such `lbu` accesses load 1 byte from abs 0xffffffffbf3a0a07, including `lbu` at 0xa002a4b8, `lbu` at 0xa002a4d8, `lbu` at 0xa002a4e8.
  The `lbu` at 0xa002a520 loads 1 byte from a1 (arg1 at entry) +0x7.
  The `lbu` at 0xa002a524 loads 1 byte from a1 (arg1 at entry) +0x6.
  The `lbu` at 0xa002a528 loads 1 byte from a1 (arg1 at entry) +0x5.
  The `lbu` at 0xa002a52c loads 1 byte from a1 (arg1 at entry) +0x4.
  The `lbu` at 0xa002a530 loads 1 byte from a1 (arg1 at entry) +0x3.
  The `lbu` at 0xa002a534 loads 1 byte from a1 (arg1 at entry) +0x0.
  The `lbu` at 0xa002a538 loads 1 byte from a1 (arg1 at entry) +0x1.
  The `lbu` at 0xa002a53c loads 1 byte from a1 (arg1 at entry) +0x2.
  The `sb` at 0xa002a540 stores 1 byte to abs 0xffffffffbf3a0007.
  The `sb` at 0xa002a544 stores 1 byte to abs 0xffffffffbf3a0207.
  The `sb` at 0xa002a548 stores 1 byte to abs 0xffffffffbf3a0407.
  The `sb` at 0xa002a54c stores 1 byte to abs 0xffffffffbf3a0707.
  The `sb` at 0xa002a550 stores 1 byte to abs 0xffffffffbf3a0807.
  The `sb` at 0xa002a554 stores 1 byte to abs 0xffffffffbf3a0907.
  The `sb` at 0xa002a558 stores 1 byte to abs 0xffffffffbf3a4807.
  The `sb` at 0xa002a55c stores 1 byte to abs 0xffffffffbf3a0607.
  The `lbu` at 0xa002a568 loads 1 byte from abs 0xffffffffbf3a0007.
  The `lbu` at 0xa002a56c loads 1 byte from abs 0xffffffffbf3a0207.
  The `lbu` at 0xa002a570 loads 1 byte from abs 0xffffffffbf3a0407.
  The `sb` at 0xa002a574 stores 1 byte to a1 (arg1 at entry) +0x1.
  The `sb` at 0xa002a578 stores 1 byte to a1 (arg1 at entry) +0x2.
  The `lbu` at 0xa002a57c loads 1 byte from abs 0xffffffffbf3a0707.
  The `sb` at 0xa002a580 stores 1 byte to a1 (arg1 at entry) +0x0.
  The `lbu` at 0xa002a584 loads 1 byte from abs 0xffffffffbf3a0807.
  The `sb` at 0xa002a588 stores 1 byte to a1 (arg1 at entry) +0x3.
  The `lbu` at 0xa002a58c loads 1 byte from abs 0xffffffffbf3a0907.
  The `sb` at 0xa002a590 stores 1 byte to a1 (arg1 at entry) +0x4.
  The `lbu` at 0xa002a594 loads 1 byte from abs 0xffffffffbf3a4807.
  The `sb` at 0xa002a598 stores 1 byte to a1 (arg1 at entry) +0x5.
  The `lbu` at 0xa002a59c loads 1 byte from abs 0xffffffffbf3a0607.
  The `sb` at 0xa002a5a0 stores 1 byte to a1 (arg1 at entry) +0x6.
  The `sb` at 0xa002a5a8 stores 1 byte to a1 (arg1 at entry) +0x7.
  The `sb` at 0xa002a5b8 stores 1 byte to abs 0xffffffffbf3a0a07.
  The `beq` branch at 0xa002a4c4 targets 0xa002a4d8, is taken when at(?) == v1(=0x20), and falls through when at(?) != v1(=0x20).
  The `beq` branch at 0xa002a4e0 targets 0xa002a5ac, is taken when (v1(=[0xffffffffbf3a0a07]:1) & 0x10) == 0, and falls through when (v1(=[0xffffffffbf3a0a07]:1) & 0x10) != 0.
  The `beq` branch at 0xa002a4f4 targets 0xa002a518, is taken when (a2(=[0xffffffffbf3a0a07]:1) & 0x80) == 0, and falls through when (a2(=[0xffffffffbf3a0a07]:1) & 0x80) != 0.
  The `beq` branch at 0xa002a500 targets 0xa002a5bc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xa002a510 targets 0xa002a500, is taken when (v1(=[0xffffffffbf3a0a07]:1) & 0x80) != 0, and falls through when (v1(=[0xffffffffbf3a0a07]:1) & 0x80) == 0.
  The `beq` branch at 0xa002a518 targets 0xa002a568, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0xa002a5a4 targets 0xa002a560 and is always taken.
  The `beq` branch at 0xa002a5b4 targets 0xa002a4e8 and is always taken.
  The return at 0xa002a4d0 has v0 = 0x1.
  The return at 0xa002a560 has v0 = 0x0.
  The return at 0xa002a5bc has v0 = 0x1.
- `resetClock` in `sbin/stand/symmon.IP32` at 0xa002a5c4 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002a5c4-0xa002a65c (152 bytes).
  It occupies 152 bytes.
  2 such `lbu` accesses load 1 byte from abs 0xffffffffbf3a0b07, including `lbu` at 0xa002a5fc, `lbu` at 0xa002a62c.
  2 such `sb` accesses store 1 byte to abs 0xffffffffbf3a0b07, including `sb` at 0xa002a610, `sb` at 0xa002a640.
  The `lbu` at 0xa002a614 loads 1 byte from abs 0xffffffffbf3a0a07.
  The `sb` at 0xa002a628 stores 1 byte to abs 0xffffffffbf3a0a07.
  The `jal` at 0xa002a63c calls clockAccess [0xa002a4b4] with a0=0x1, a1=sp-16, a2=0x1, a3=?, a4=-0x41, a6=-0x5, a7=0x2.
  The `jal` at 0xa002a648 calls printf [0xa002e620] with a0=0xffffffffa0037678, a1=?, a2=?, a3=?.
  The return at 0xa002a654 has v0 = ret(printf).
- `htp_gfx_init` in `sbin/stand/symmon.IP32` at 0xa002a898 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002a898-0xa002a9d4 (316 bytes).
  It occupies 316 bytes.
  The `lw` at 0xa002a8ac loads 4 bytes from abs 0xffffffffa005972c.
  The `lw` at 0xa002a8cc loads 4 bytes from abs 0xffffffffa0039348.
  The `sw` at 0xa002a8d0 stores 4 bytes to abs 0xffffffffa0059728.
  The `lw` at 0xa002a8e0 loads 4 bytes from abs 0xffffffffa0039350.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0xa002a8f4, `lw` at 0xa002a904, `lw` at 0xa002a910.
  7 such `lw` accesses load 4 bytes from abs 0xffffffffa003aa98, including `lw` at 0xa002a950, `lw` at 0xa002a96c, `lw` at 0xa002a970.
  The `sw` at 0xa002a954 stores 4 bytes to [0xffffffffa003aa98] +0x4.
  The `sw` at 0xa002a960 stores 4 bytes to abs 0xffffffffa005972c.
  2 such `lw` accesses load 4 bytes from [0xffffffffa003aa98] +0x0, including `lw` at 0xa002a974, `lw` at 0xa002a990.
  The `lw` at 0xa002a978 loads 4 bytes from [[0xffffffffa003aa98]] +0x20.
  The `lw` at 0xa002a994 loads 4 bytes from [[0xffffffffa003aa98]] +0x0.
  The `sw` at 0xa002a9ac stores 4 bytes to [0xffffffffa003aa98] +0x28.
  The `sw` at 0xa002a9b8 stores 4 bytes to [0xffffffffa003aa98] +0x2c.
  The `jalr` at 0xa002a8e4 calls (unknown callee) with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0xa002a8f8 calls (unknown callee) with a0=sp-56, a1=?, a2=?, a3=?.
  The `jalr` at 0xa002a968 calls (unknown callee) with a0=[0xffffffffa003aa98], a1=?, a2=0x1, a3=[0xffffffffa003aa98].
  The `jalr` at 0xa002a984 calls (unknown callee) with a0=ret(?), a1=sp-64, a2=sp-60, a3=?, a4=[[[0xffffffffa003aa98]]+32].
  The `jalr` at 0xa002a99c calls (unknown callee) with a0=ret(?), a1=0x1, a2=?, a3=?, a5=[[[0xffffffffa003aa98]]].
  The `jal` at 0xa002a9bc calls txMap [0xa001e0d8] with a0=[0xffffffffa003aa98], a1=?, a2=?, a3=?, a7=[0xffffffffa003aa98].
  The `beq` branch at 0xa002a8b8 targets 0xa002a8c8, is taken when at(=[0xffffffffa005972c]) == 0, and falls through when at(=[0xffffffffa005972c]) != 0.
  The `beq` branch at 0xa002a8c0 targets 0xa002a9cc, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0xa002a8d4 targets 0xa002a92c, is taken when t8(=[0xffffffffa0039348]) == 0, and falls through when t8(=[0xffffffffa0039348]) != 0.
  The `beq` branch at 0xa002a8dc targets 0xa002a914 and is always taken.
  The `bne` branch at 0xa002a8ec targets 0xa002a94c, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0xa002a908 targets 0xa002a930, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `bne` branch at 0xa002a914 targets 0xa002a8e4, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bnel` branch at 0xa002a924 targets 0xa002a914, is taken when at(?) != 0, and falls through when at(?) == 0; its branch-likely delay slot `lw v0,8(s0)` at 0xa002a928 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa002a9c4 targets 0xa002a930 and is always taken.
  The `beq` branch at 0xa002a9cc targets 0xa002a934 and is always taken.
  The return at 0xa002a944 has v0 = one of -0x1, 0x0.
- `_ttyputc` in `sbin/stand/symmon.IP32` at 0xa002a9d4 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002a9d4-0xa002aa10 (60 bytes).
  It occupies 60 bytes.
  The `jal` at 0xa002a9ec calls cpu_errputc [0xa0027294] with a0=?, a1=?, a2=a0 at entry (arg0), a3=?.
  The `jal` at 0xa002aa00 calls cpu_errputc [0xa0027294] with a0=0xd, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xa002a9e4 targets 0xa002aa00, is taken when a0 == at(=0xa), and falls through when a0 != at(=0xa).
  The `beq` branch at 0xa002aa08 targets 0xa002a9ec and is always taken.
  The return at 0xa002a9f8 has v0 = ret(cpu_errputc).
- `garbage_collect` in `sbin/stand/symmon.IP32` at 0xa002b93c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002b93c-0xa002b9b8 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xa002b958 loads 4 bytes from a0 (arg0 at entry) +0x0.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xa002b96c, `lw` at 0xa002b98c, `lw` at 0xa002b998.
  The `jal` at 0xa002b950 calls init_str [0xa002b39c] with a0=sp-1568, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa002b964 calls new_str1 [0xa002b5dc] with a0=?, a1=sp-1568, a2=?, a3=?.
  The `jal` at 0xa002b978 calls init_str [0xa002b39c] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xa002b990 calls new_str1 [0xa002b5dc] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `beq` branch at 0xa002b95c targets 0xa002b978, is taken when a0(=[a0]) == 0, and falls through when a0(=[a0]) != 0.
  The `bne` branch at 0xa002b970 targets 0xa002b964, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0xa002b984 targets 0xa002b9a4, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xa002b99c targets 0xa002b98c, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The return at 0xa002b9b0 has v0 = one of ret(init_str), ?.
- `nvmatch` in `sbin/stand/symmon.IP32` at 0xa002bad8 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002bad8-0xa002bb94 (188 bytes).
  It occupies 188 bytes.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x0, including `lbu` at 0xa002bae4, `lbu` at 0xa002bb14.
  The `lbu` at 0xa002bb04 loads 1 byte from a1 (arg1 at entry) +0x0.
  5 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xa002bb28, `lbu` at 0xa002bb3c, `lbu` at 0xa002bb44.
  The `jal` at 0xa002baf4 calls tolower [0xa003015c] with a0=[a0]:1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa002bb00 calls tolower [0xa003015c] with a0=[a1]:1, a1=?, a2=?, a3=?.
  The `jal` at 0xa002bb2c calls tolower [0xa003015c] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa002bb38 calls tolower [0xa003015c] with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0xa002bb08 targets 0xa002bb48, is taken when s2(=ret(tolower)) != v0(=ret(tolower)), and falls through when s2(=ret(tolower)) == v0(=ret(tolower)).
  The `beq` branch at 0xa002bb18 targets 0xa002bb84, is taken when s3(=0x3d) == v0(?), and falls through when s3(=0x3d) != v0(?).
  The `beq` branch at 0xa002bb20 targets 0xa002bb84, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beql` branch at 0xa002bb40 targets 0xa002bb18, is taken when s2(=ret(tolower)) == v0(=ret(tolower)), and falls through when s2(=ret(tolower)) != v0(=ret(tolower)); its branch-likely delay slot `lbu v0,0(s0)` at 0xa002bb44 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xa002bb4c targets 0xa002bb60, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xa002bb58 targets 0xa002bb8c, is taken when v0(?) == v1(=0x3d), and falls through when v0(?) != v1(=0x3d).
  The `beq` branch at 0xa002bb84 targets 0xa002bb68 and is always taken.
  The `beq` branch at 0xa002bb8c targets 0xa002bb68 and is always taken.
  The return at 0xa002bb7c has v0 = one of 0x0, ?.
- `_xdigit` in `sbin/stand/symmon.IP32` at 0xa002be18 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002be18-0xa002bea0 (136 bytes).
  It occupies 136 bytes.
  The `lbu` at 0xa002be24 loads 1 byte from a0 (arg0 at entry) -0x5ffc3ad7.
  The `beq` branch at 0xa002be30 targets 0xa002be44, is taken when (at(=[a0-1610365655]:1) & 0x4) == 0, and falls through when (at(=[a0-1610365655]:1) & 0x4) != 0.
  The `beq` branch at 0xa002be44 targets 0xa002be94, is taken when a1 == 0, and falls through when a1 != 0.
  The `bne` branch at 0xa002be4c targets 0xa002be5c, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0xa002be54 targets 0xa002be88, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xa002be5c targets 0xa002be80, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0xa002be64 targets 0xa002be78, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The return at 0xa002be3c has v0 = a0-48.
  The return at 0xa002be70 has v0 = a0-55.
  The return at 0xa002be78 has v0 = 0xf423f.
  The return at 0xa002be80 has v0 = 0xf423f.
  The return at 0xa002be8c has v0 = a0-87.
  The return at 0xa002be98 has v0 = 0xf423f.
- `fputflush` in `sbin/stand/symmon.IP32` at 0xa002ded4 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002ded4-0xa002e1dc (776 bytes).
  It occupies 776 bytes.
  15 such `lw` accesses load 4 bytes from abs 0xffffffffa005a3e4, including `lw` at 0xa002dee4, `lw` at 0xa002df08, `lw` at 0xa002df44.
  10 such `lw` accesses load 4 bytes from abs 0xffffffffa003c910, including `lw` at 0xa002df24, `lw` at 0xa002dfa8, `lw` at 0xa002dff8.
  11 such `lw` accesses load 4 bytes from ?, including `lw` at 0xa002df2c, `lw` at 0xa002dfb8, `lw` at 0xa002dfc8.
  2 such `lw` accesses load 4 bytes from ([0xffffffffa003c910] + (ret(cpuid) << 0x7)) +0x4, including `lw` at 0xa002df38, `lw` at 0xa002e17c.
  The `lw` at 0xa002e020 loads 4 bytes from ([0xffffffffa003c910] + (ret(cpuid) << 0x7)) +0x0.
  2 such `lw` accesses load 4 bytes from [0xffffffffa003c910] +0x4, including `lw` at 0xa002e044, `lw` at 0xa002e1a4.
  The `lw` at 0xa002e058 loads 4 bytes from [0xffffffffa003c910] +0x0.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xa002e068, `lbu` at 0xa002e124.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xa002e0a8, `sw` at 0xa002e0d8.
  The `jal` at 0xa002def8 calls cpuid [0xa0020c5c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[0xffffffffa005a3e4], a3=a3 at entry (arg3).
  The `jal` at 0xa002df18 calls cpuid [0xa0020c5c] with a0=?, a1=?, a2=[0xffffffffa005a3e4], a3=?.
  The `jal` at 0xa002df50 calls cpuid [0xa0020c5c] with a0=?, a1=?, a2=[0xffffffffa005a3e4], a3=?.
  The `jal` at 0xa002df6c calls cpuid [0xa0020c5c] with a0=?, a1=?, a2=[0xffffffffa005a3e4], a3=?.
  The `jal` at 0xa002df84 calls cpuid [0xa0020c5c] with a0=?, a1=?, a2=[0xffffffffa005a3e4], a3=?.
  The `jal` at 0xa002dfd0 calls Write [0xa002545c] with a0=0x1, a1=?, a2=?, a3=sp-64.
  The `jal` at 0xa002dfe8 calls cpuid [0xa0020c5c] with a0=?, a1=?, a2=[0xffffffffa005a3e4], a3=?, a4=0x0.
  The `jal` at 0xa002e00c calls cpuid [0xa0020c5c] with a0=?, a1=?, a2=[0xffffffffa005a3e4], a3=[0xffffffffa003c910].
  The `jal` at 0xa002e078 calls cpuid [0xa0020c5c] with a0=?, a1=?, a2=[0xffffffffa005a3e4], a3=?.
  The `jal` at 0xa002e0f0 calls cpuid [0xa0020c5c] with a0=?, a1=?, a2=[0xffffffffa005a3e4], a3=?.
  The `jal` at 0xa002e100 calls cpuid [0xa0020c5c] with a0=?, a1=?, a2=[0xffffffffa005a3e4], a3=?.
  The `jal` at 0xa002e128 calls _errputc [0xa002a854] with a0=?, a1=?, a2=[0xffffffffa005a3e4], a3=?.
  The `jal` at 0xa002e14c calls cpuid [0xa0020c5c] with a0=?, a1=?, a2=[0xffffffffa005a3e4], a3=0x0.
  The `jal` at 0xa002e164 calls cpuid [0xa0020c5c] with a0=?, a1=?, a2=[0xffffffffa005a3e4], a3=?.
  The `jal` at 0xa002e1c4 calls cpuid [0xa0020c5c] with a0=?, a1=?, a2=[0xffffffffa005a3e4], a3=[0xffffffffa003c910], a5=0x0.
  The `beq` branch at 0xa002def0 targets 0xa002df0c, is taken when a2(=[0xffffffffa005a3e4]) == 0, and falls through when a2(=[0xffffffffa005a3e4]) != 0.
  The `beq` branch at 0xa002df04 targets 0xa002df10 and is always taken.
  The `beq` branch at 0xa002df10 targets 0xa002e034, is taken when a2(=[0xffffffffa005a3e4]) == 0, and falls through when a2(=[0xffffffffa005a3e4]) != 0.
  The `beq` branch at 0xa002df3c targets 0xa002e050, is taken when t8(?) == t9(=[([0xffffffffa003c910] + (ret(cpuid) << 0x7))+4]), and falls through when t8(?) != t9(=[([0xffffffffa003c910] + (ret(cpuid) << 0x7))+4]).
  The `beq` branch at 0xa002df48 targets 0xa002df7c, is taken when a2(=[0xffffffffa005a3e4]) == 0, and falls through when a2(=[0xffffffffa005a3e4]) != 0.
  The `bne` branch at 0xa002df5c targets 0xa002df84, is taken when a2(=[0xffffffffa005a3e4]) != 0, and falls through when a2(=[0xffffffffa005a3e4]) == 0.
  The `beq` branch at 0xa002df64 targets 0xa002df98, is taken when a2(=[0xffffffffa005a3e4]) == 0, and falls through when a2(=[0xffffffffa005a3e4]) != 0.
  The `beq` branch at 0xa002df74 targets 0xa002df9c and is always taken.
  The `beq` branch at 0xa002df7c targets 0xa002df64, is taken when a2(=[0xffffffffa005a3e4]) == 0, and falls through when a2(=[0xffffffffa005a3e4]) != 0.
  The `bne` branch at 0xa002df90 targets 0xa002df6c, is taken when a2(=[0xffffffffa005a3e4]) != 0, and falls through when a2(=[0xffffffffa005a3e4]) == 0.
  The `beq` branch at 0xa002dfd8 targets 0xa002e144, is taken when v0(=ret(Write)) == 0, and falls through when v0(=ret(Write)) != 0.
  The `beq` branch at 0xa002dfe0 targets 0xa002dff8, is taken when a2(=[0xffffffffa005a3e4]) == 0, and falls through when a2(=[0xffffffffa005a3e4]) != 0.
  The `beq` branch at 0xa002e004 targets 0xa002e058, is taken when a2(=[0xffffffffa005a3e4]) == 0, and falls through when a2(=[0xffffffffa005a3e4]) != 0.
  The `bne` branch at 0xa002e024 targets 0xa002e064, is taken when t8(=[([0xffffffffa003c910] + (ret(cpuid) << 0x7))]) != s2(?), and falls through when t8(=[([0xffffffffa003c910] + (ret(cpuid) << 0x7))]) == s2(?).
  The `beq` branch at 0xa002e02c targets 0xa002e070 and is always taken.
  The `bne` branch at 0xa002e048 targets 0xa002df48, is taken when t8(?) != t9(=[[0xffffffffa003c910]+4]), and falls through when t8(?) == t9(=[[0xffffffffa003c910]+4]).
  The `beq` branch at 0xa002e050 targets 0xa002e0b0 and is always taken.
  The `beq` branch at 0xa002e05c targets 0xa002e070, is taken when t9(=[[0xffffffffa003c910]]) == s2(?), and falls through when t9(=[[0xffffffffa003c910]]) != s2(?).
  The `beq` branch at 0xa002e064 targets 0xa002e128 and is always taken.
  The `beq` branch at 0xa002e070 targets 0xa002e0e8, is taken when a2(=[0xffffffffa005a3e4]) == 0, and falls through when a2(=[0xffffffffa005a3e4]) != 0.
  The `bne` branch at 0xa002e084 targets 0xa002e0f0, is taken when a2(=[0xffffffffa005a3e4]) != 0, and falls through when a2(=[0xffffffffa005a3e4]) == 0.
  The `bne` branch at 0xa002e0e0 targets 0xa002e078, is taken when a2(=[0xffffffffa005a3e4]) != 0, and falls through when a2(=[0xffffffffa005a3e4]) == 0.
  The `beq` branch at 0xa002e0e8 targets 0xa002e08c, is taken when a2(=[0xffffffffa005a3e4]) == 0, and falls through when a2(=[0xffffffffa005a3e4]) != 0.
  The `beq` branch at 0xa002e0f8 targets 0xa002e090 and is always taken.
  The `beq` branch at 0xa002e11c targets 0xa002e06c, is taken when a0(?) == s2(?), and falls through when a0(?) != s2(?).
  The `bne` branch at 0xa002e134 targets 0xa002e100, is taken when a2(=[0xffffffffa005a3e4]) != 0, and falls through when a2(=[0xffffffffa005a3e4]) == 0.
  The `beq` branch at 0xa002e13c targets 0xa002e10c and is always taken.
  The `beq` branch at 0xa002e144 targets 0xa002e15c, is taken when a2(=[0xffffffffa005a3e4]) == 0, and falls through when a2(=[0xffffffffa005a3e4]) != 0.
  The `beq` branch at 0xa002e15c targets 0xa002e19c, is taken when a2(=[0xffffffffa005a3e4]) == 0, and falls through when a2(=[0xffffffffa005a3e4]) != 0.
  The `beq` branch at 0xa002e18c targets 0xa002e1bc, is taken when a4(?) == a5(?), and falls through when a4(?) != a5(?).
  The `beq` branch at 0xa002e194 targets 0xa002dfe0 and is always taken.
  The `bne` branch at 0xa002e1b4 targets 0xa002dfe0, is taken when a4(?) != a6(?), and falls through when a4(?) == a6(?).
  The `beq` branch at 0xa002e1bc targets 0xa002e0c8, is taken when a2(=[0xffffffffa005a3e4]) == 0, and falls through when a2(=[0xffffffffa005a3e4]) != 0.
  The `beq` branch at 0xa002e1d4 targets 0xa002e0c8 and is always taken.
  The return at 0xa002e0c0 has v0 = one of 0x0, ?.
- `fputchar` in `sbin/stand/symmon.IP32` at 0xa002e1dc (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002e1dc-0xa002e4d4 (760 bytes).
  It occupies 760 bytes.
  9 such `lw` accesses load 4 bytes from abs 0xffffffffa005a3e4, including `lw` at 0xa002e1f8, `lw` at 0xa002e244, `lw` at 0xa002e284.
  8 such `lw` accesses load 4 bytes from abs 0xffffffffa003c910, including `lw` at 0xa002e22c, `lw` at 0xa002e29c, `lw` at 0xa002e2f4.
  The `lw` at 0xa002e230 loads 4 bytes from abs 0xffffffffa005a3e0.
  The `lbu` at 0xa002e268 loads 1 byte from a0 (arg0 at entry) -0x5ffc3ad7.
  10 such `lw` accesses load 4 bytes from ?, including `lw` at 0xa002e278, `lw` at 0xa002e2a8, `lw` at 0xa002e2fc.
  7 such `sw` accesses store 4 bytes to ?, including `sw` at 0xa002e280, `sw` at 0xa002e2b4, `sw` at 0xa002e3f8.
  3 such `sb` accesses store 1 byte to ?, including `sb` at 0xa002e2b8, `sb` at 0xa002e47c, `sb` at 0xa002e4b8.
  The `lw` at 0xa002e308 loads 4 bytes from ([0xffffffffa003c910] + (ret(cpuid) << 0x7)) +0x4.
  The `lw` at 0xa002e378 loads 4 bytes from [0xffffffffa003c910] +0x4.
  The `lw` at 0xa002e3c4 loads 4 bytes from ([0xffffffffa003c910] + (ret(cpuid) << 0x7)) +0x0.
  The `sw` at 0xa002e3cc stores 4 bytes to ([0xffffffffa003c910] + (ret(cpuid) << 0x7)) +0x0.
  The `sb` at 0xa002e3d0 stores 1 byte to [([0xffffffffa003c910] + (ret(cpuid) << 0x7))] +0x0.
  The `lw` at 0xa002e408 loads 4 bytes from [0xffffffffa003c910] +0x0.
  The `sw` at 0xa002e410 stores 4 bytes to [0xffffffffa003c910] +0x0.
  The `sb` at 0xa002e414 stores 1 byte to [[0xffffffffa003c910]] +0x0.
  The `jal` at 0xa002e20c calls cpuid [0xa0020c5c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa002e290 calls cpuid [0xa0020c5c] with a0=0x0, a1=?, a2=?, a3=[0xffffffffa003c910], a5=0x9.
  The `jal` at 0xa002e2c8 calls cpuid [0xa0020c5c] with a0=[0xffffffffa005a3e4], a1=?, a2=?, a3=?.
  The `jal` at 0xa002e2ec calls cpuid [0xa0020c5c] with a0=[0xffffffffa005a3e4], a1=?, a2=?, a3=?.
  The `jal` at 0xa002e330 calls fputflush [0xa002ded4] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa002e360 calls cpuid [0xa0020c5c] with a0=[0xffffffffa005a3e4], a1=?, a2=?, a3=?.
  The `jal` at 0xa002e3b0 calls cpuid [0xa0020c5c] with a0=?, a1=?, a2=?, a3=?, a4=[0xffffffffa005a3e4].
  The `jal` at 0xa002e458 calls cpuid [0xa0020c5c] with a0=0x0, a1=?, a2=?, a3=[0xffffffffa003c910], a5=0x9.
  The `jal` at 0xa002e48c calls cpuid [0xa0020c5c] with a0=0x0, a1=?, a2=?, a3=[0xffffffffa003c910].
  The `jal` at 0xa002e4c4 calls putchar [0xa002dd70] with a0=a0 at entry (arg0), a1=?, a2=?, a3=[0xffffffffa003c910], a4=[0xffffffffa005a3e4].
  The `beq` branch at 0xa002e204 targets 0xa002e21c, is taken when at(=[0xffffffffa005a3e4]) == 0, and falls through when at(=[0xffffffffa005a3e4]) != 0.
  The `beq` branch at 0xa002e214 targets 0xa002e220 and is always taken.
  The `beq` branch at 0xa002e23c targets 0xa002e24c, is taken when s3(=[0xffffffffa005a3e0]) == 0, and falls through when s3(=[0xffffffffa005a3e0]) != 0.
  The `beq` branch at 0xa002e248 targets 0xa002e4c4, is taken when a4(=[0xffffffffa005a3e4]) == 0, and falls through when a4(=[0xffffffffa005a3e4]) != 0.
  The `beq` branch at 0xa002e250 targets 0xa002e448, is taken when s2(=a0) == s4(=0xa), and falls through when s2(=a0) != s4(=0xa).
  The `beq` branch at 0xa002e258 targets 0xa002e3a8, is taken when s2(=a0) == a5(=0x9), and falls through when s2(=a0) != a5(=0x9).
  The `beq` branch at 0xa002e270 targets 0xa002e284, is taken when (a6(=[a0-1610365655]:1) & 0xc0d7) == 0, and falls through when (a6(=[a0-1610365655]:1) & 0xc0d7) != 0.
  The `beq` branch at 0xa002e288 targets 0xa002e29c, is taken when t0(=[0xffffffffa005a3e4]) == 0, and falls through when t0(=[0xffffffffa005a3e4]) != 0.
  The `beq` branch at 0xa002e2c0 targets 0xa002e358, is taken when a0(=[0xffffffffa005a3e4]) == 0, and falls through when a0(=[0xffffffffa005a3e4]) != 0.
  The `bne` branch at 0xa002e2d4 targets 0xa002e360, is taken when a0(=[0xffffffffa005a3e4]) != 0, and falls through when a0(=[0xffffffffa005a3e4]) == 0.
  The `beq` branch at 0xa002e2e4 targets 0xa002e374, is taken when a0(=[0xffffffffa005a3e4]) == 0, and falls through when a0(=[0xffffffffa005a3e4]) != 0.
  The `beq` branch at 0xa002e320 targets 0xa002e330, is taken when t8(?) >= t9(?) (unsigned), and falls through when t8(?) < t9(?) (unsigned).
  The `beq` branch at 0xa002e328 targets 0xa002e33c, is taken when s4(=one of 0x0, 0x1) == 0, and falls through when s4(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xa002e358 targets 0xa002e2e0, is taken when a0(=[0xffffffffa005a3e4]) == 0, and falls through when a0(=[0xffffffffa005a3e4]) != 0.
  The `beq` branch at 0xa002e36c targets 0xa002e2e0 and is always taken.
  The `bne` branch at 0xa002e398 targets 0xa002e328, is taken when ra(?) < at(?) (unsigned), and falls through when ra(?) >= at(?) (unsigned).
  The `beq` branch at 0xa002e3a0 targets 0xa002e330 and is always taken.
  The `beq` branch at 0xa002e3a8 targets 0xa002e3fc and is always taken.
  The `beq` branch at 0xa002e3f4 targets 0xa002e440, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xa002e400 targets 0xa002e3b0, is taken when a4(=[0xffffffffa005a3e4]) != 0, and falls through when a4(=[0xffffffffa005a3e4]) == 0.
  The `bne` branch at 0xa002e438 targets 0xa002e3fc, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0xa002e440 targets 0xa002e2bc and is always taken.
  The `beq` branch at 0xa002e450 targets 0xa002e468, is taken when t2(=[0xffffffffa005a3e4]) == 0, and falls through when t2(=[0xffffffffa005a3e4]) != 0.
  The `beq` branch at 0xa002e484 targets 0xa002e498, is taken when t3(=[0xffffffffa005a3e4]) == 0, and falls through when t3(=[0xffffffffa005a3e4]) != 0.
  The `beq` branch at 0xa002e4bc targets 0xa002e2bc and is always taken.
  The `beq` branch at 0xa002e4cc targets 0xa002e33c and is always taken.
  The return at 0xa002e350 has v0 = one of ?, ret(fputflush), ret(putchar).
- `putstr` in `sbin/stand/symmon.IP32` at 0xa002e5bc (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002e5bc-0xa002e620 (100 bytes).
  It occupies 100 bytes.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xa002e5d8, `lbu` at 0xa002e5f0.
  The `jalr` at 0xa002e5e8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xa002e5d0 targets 0xa002e614, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0xa002e5e0 targets 0xa002e600, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xa002e5f8 targets 0xa002e5e8, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xa002e618 targets 0xa002e5d8 and is always taken.
  The return at 0xa002e60c has v0 = ?.
- `poke` in `sbin/stand/symmon.IP32` at 0xa002e8c0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002e8c0-0xa002e920 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0xa002e8c8 loads 4 bytes from abs 0xffffffffa005a3e4.
  The `lw` at 0xa002e8f8 loads 4 bytes from abs 0xffffffffa003c910.
  The `lw` at 0xa002e904 loads 4 bytes from ?.
  The `sw` at 0xa002e90c stores 4 bytes to ?.
  The `sb` at 0xa002e910 stores 1 byte to ?.
  The `jal` at 0xa002e8dc calls cpuid [0xa0020c5c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xa002e8d4 targets 0xa002e8f0, is taken when at(=[0xffffffffa005a3e4]) == 0, and falls through when at(=[0xffffffffa005a3e4]) != 0.
  The `beq` branch at 0xa002e8e8 targets 0xa002e8f4 and is always taken.
  The return at 0xa002e918 has v0 = one of [([0xffffffffa003c910] + (ret(cpuid) << 0x7))+20], [[0xffffffffa003c910]+20].
- `prf` in `sbin/stand/symmon.IP32` at 0xa002ec78 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002ec78-0xa002ecb0 (56 bytes).
  It occupies 56 bytes.
  The `jal` at 0xa002ec9c calls vprf [0xa002ecb0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-48, a3=a3 at entry (arg3).
  The return at 0xa002eca8 has v0 = ret(vprf).
- `vprf` in `sbin/stand/symmon.IP32` at 0xa002ecb0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002ecb0-0xa002f510 (2144 bytes).
  It occupies 2144 bytes.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffa003c770, including `lw` at 0xa002ecfc, `lw` at 0xa002ed30.
  The `sw` at 0xa002ed1c stores 4 bytes to abs 0xffffffffa005a3e8.
  19 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xa002ed20, `lbu` at 0xa002ed3c, `lbu` at 0xa002ed48.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xa002ee20, `lw` at 0xa002ef80, `lw` at 0xa002efa0.
  The `lw` at 0xa002ee48 loads 4 bytes from abs 0xffffffffa005a3e8.
  2 such `lbu` accesses load 1 byte from table(0xffffffffa003c529) +0x0, including `lbu` at 0xa002eebc, `lbu` at 0xa002eee4.
  The `lw` at 0xa002ef48 loads 4 bytes from abs 0xffffffffa003c76c.
  The `jal` at 0xa002ed0c calls splockspl [0xa002a764] with a0=[0xffffffffa003c770], a1=0xffffffffa00311a0, a2=?, a3=?.
  The `jalr` at 0xa002ed34 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  Calls (unknown callee) via register with a0=one of 0x0, 0x1, a1=one of 0x0, 0x1, a2=?, a3=? (`jr` at 0xa002ee2c).
  The `jal` at 0xa002ee44 calls spunlockspl [0xa002a780] with a0=[0xffffffffa003c770], a1=[0xffffffffa005a3e8], a2=?, a3=?.
  The `beq` branch at 0xa002ed00 targets 0xa002ed20, is taken when a0(=[0xffffffffa003c770]) == 0, and falls through when a0(=[0xffffffffa003c770]) != 0.
  The `beq` branch at 0xa002ed24 targets 0xa002ed48, is taken when a0(?) == s5(=0x25), and falls through when a0(?) != s5(=0x25).
  The `beql` branch at 0xa002ed2c targets 0xa002ee34, is taken when a0(?) == 0, and falls through when a0(?) != 0; its branch-likely delay slot `lw a0,0(s7)` at 0xa002ed30 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xa002ed40 targets 0xa002ed2c, is taken when a0(?) != s5(=0x25), and falls through when a0(?) == s5(=0x25).
  The `bne` branch at 0xa002ed58 targets 0xa002ee7c, is taken when a2(?) < 0x1 (unsigned), and falls through when a2(?) >= 0x1 (unsigned).
  The `bne` branch at 0xa002ed6c targets 0xa002ee88, is taken when a0(?) < 0x1 (unsigned), and falls through when a0(?) >= 0x1 (unsigned).
  The `beq` branch at 0xa002ed7c targets 0xa002ee94, is taken when (a1(?) & 0x4) == 0, and falls through when (a1(?) & 0x4) != 0.
  The `beq` branch at 0xa002ed84 targets 0xa002ef24, is taken when s1(?) == a3(=0x30), and falls through when s1(?) != a3(=0x30).
  The `bne` branch at 0xa002edb4 targets 0xa002ed90, is taken when (a4(?) & 0x4) != 0, and falls through when (a4(?) & 0x4) == 0.
  The `beq` branch at 0xa002edc4 targets 0xa002eea8, is taken when s1(?) == a3(=0x2e), and falls through when s1(?) != a3(=0x2e).
  The `bne` branch at 0xa002edcc targets 0xa002ef00, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beql` branch at 0xa002edd4 targets 0xa002ef08, is taken when s1(?) == a5(=0x6c), and falls through when s1(?) != a5(=0x6c); its branch-likely delay slot `lbu a7,0(s0)` at 0xa002edd8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xa002ede0 targets 0xa002ef2c, is taken when s1(?) == a7(=0x77), and falls through when s1(?) != a7(=0x77); its branch-likely delay slot `lbu t1,0(s0)` at 0xa002ede4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa002edec targets 0xa002ef40, is taken when s1(?) == t0(=0x49), and falls through when s1(?) != t0(=0x49).
  The `beq` branch at 0xa002edf4 targets 0xa002ef60, is taken when s1(?) == t1(=0x4c), and falls through when s1(?) != t1(=0x4c).
  The `beq` branch at 0xa002ee18 targets 0xa002ecfc, is taken when a4(?) >= 0x54 (unsigned), and falls through when a4(?) < 0x54 (unsigned).
  The `beq` branch at 0xa002ee34 targets 0xa002ee50, is taken when a0(=[0xffffffffa003c770]) == 0, and falls through when a0(=[0xffffffffa003c770]) != 0.
  The `beq` branch at 0xa002ee80 targets 0xa002ed60 and is always taken.
  The `beq` branch at 0xa002ee8c targets 0xa002ed70 and is always taken.
  The `beq` branch at 0xa002ee98 targets 0xa002ef6c, is taken when s1(?) == a3(=0x2a), and falls through when s1(?) != a3(=0x2a).
  The `beq` branch at 0xa002eea0 targets 0xa002edc0 and is always taken.
  The `beq` branch at 0xa002eeb0 targets 0xa002ef8c, is taken when s1(?) == a4(=0x2a), and falls through when s1(?) != a4(=0x2a).
  The `beq` branch at 0xa002eec4 targets 0xa002efdc, is taken when (a5(=entry(0xffffffffa003c529)) & 0x4) == 0, and falls through when (a5(=entry(0xffffffffa003c529)) & 0x4) != 0.
  The `bne` branch at 0xa002eef0 targets 0xa002eecc, is taken when (a4(=entry(0xffffffffa003c529)) & 0x4) != 0, and falls through when (a4(=entry(0xffffffffa003c529)) & 0x4) == 0.
  The `beq` branch at 0xa002eef8 targets 0xa002edcc and is always taken.
  The `beq` branch at 0xa002ef00 targets 0xa002edd0 and is always taken.
  The `beq` branch at 0xa002ef10 targets 0xa002efac, is taken when a5(=0x6c) == a7(?), and falls through when a5(=0x6c) != a7(?).
  The `beq` branch at 0xa002ef1c targets 0xa002ee04 and is always taken.
  The `beq` branch at 0xa002ef24 targets 0xa002ed8c and is always taken.
  The `beq` branch at 0xa002ef30 targets 0xa002efbc, is taken when t0(=0x33) == t1(?), and falls through when t0(=0x33) != t1(?).
  The `beq` branch at 0xa002ef38 targets 0xa002ee04 and is always taken.
  The `beq` branch at 0xa002ef50 targets 0xa002efd4, is taken when t2(=[0xffffffffa003c76c]) == 0, and falls through when t2(=[0xffffffffa003c76c]) != 0.
  The `beq` branch at 0xa002ef58 targets 0xa002ee00 and is always taken.
  The `beq` branch at 0xa002ef64 targets 0xa002ee00 and is always taken.
  The `beq` branch at 0xa002ef84 targets 0xa002eea0 and is always taken.
  The `beq` branch at 0xa002efa4 targets 0xa002eef8 and is always taken.
  The `beq` branch at 0xa002efb4 targets 0xa002ef1c and is always taken.
  The `beq` branch at 0xa002efc4 targets 0xa002efe4, is taken when t9(=0x32) == ra(?), and falls through when t9(=0x32) != ra(?).
  The `beq` branch at 0xa002efcc targets 0xa002ef38 and is always taken.
  The `beq` branch at 0xa002efd4 targets 0xa002ee00 and is always taken.
  The `beq` branch at 0xa002efdc targets 0xa002eef8 and is always taken.
  The `beq` branch at 0xa002efe8 targets 0xa002ef38 and is always taken.
  The return at 0xa002ee74 has v0 = one of ?, ret(spunlockspl).
  The instructions from 0xa002eff0 to 0xa002f50c are not reached by any path from the entry, and their branches are not listed.
- `sputs` in `sbin/stand/symmon.IP32` at 0xa002f60c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002f60c-0xa002f730 (292 bytes).
  It occupies 292 bytes.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xa002f654, `lbu` at 0xa002f6a8, `lbu` at 0xa002f6bc.
  The `jalr` at 0xa002f684 calls (unknown callee) with a0=a4 at entry (arg4), a1=?, a2=?, a3=?.
  The `jalr` at 0xa002f6ac calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xa002f6d8 calls (unknown callee) with a0=a4 at entry (arg4), a1=?, a2=?, a3=?.
  The `jal` at 0xa002f720 calls strlen [0xa00309ac] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xa002f638 targets 0xa002f714, is taken when a1 == 0, and falls through when a1 != 0.
  The `blez` branch at 0xa002f640 targets 0xa002f720, is taken when a3 <= 0 (signed), and falls through when a3 > 0 (signed).
  The `beq` branch at 0xa002f658 targets 0xa002f668, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xa002f660 targets 0xa002f654, is taken when a6(?) != a0(?), and falls through when a6(?) == a0(?).
  The `blez` branch at 0xa002f668 targets 0xa002f698, is taken when s5(=a2) <= 0 (signed), and falls through when s5(=a2) > 0 (signed).
  The `bltz` branch at 0xa002f678 targets 0xa002f69c, is taken when s0(?) < 0 (signed), and falls through when s0(?) >= 0 (signed).
  The `bne` branch at 0xa002f690 targets 0xa002f684, is taken when s0(?) != s2(=-0x1), and falls through when s0(?) == s2(=-0x1).
  The `bltz` branch at 0xa002f69c targets 0xa002f6c0, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `bnel` branch at 0xa002f6b8 targets 0xa002f6ac, is taken when s0(?) != s2(=-0x1), and falls through when s0(?) == s2(=-0x1); its branch-likely delay slot `lbu a0,0(s3)` at 0xa002f6bc runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0xa002f6c0 targets 0xa002f6ec, is taken when s5(=a2) >= 0 (signed), and falls through when s5(=a2) < 0 (signed).
  The `bltz` branch at 0xa002f6d0 targets 0xa002f6ec, is taken when v1(?) < 0 (signed), and falls through when v1(?) >= 0 (signed).
  The `bne` branch at 0xa002f6e4 targets 0xa002f6d8, is taken when s0(?) != s2(=-0x1), and falls through when s0(?) == s2(=-0x1).
  The `beq` branch at 0xa002f718 targets 0xa002f640 and is always taken.
  The `beq` branch at 0xa002f728 targets 0xa002f668 and is always taken.
  The return at 0xa002f70c has v0 = one of ?, ret(?).
- `getblock` in `sbin/stand/symmon.IP32` at 0xa002fccc (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002fccc-0xa002fd18 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xa002fce0 loads 4 bytes from abs 0xffffffffa0039370.
  The `lw` at 0xa002fcec loads 4 bytes from abs 0xffffffffa005a400.
  The `sw` at 0xa002fd0c stores 4 bytes to abs 0xffffffffa005a400.
  The `beql` branch at 0xa002fd00 targets 0xa002fd10, is taken when a3(?) >= at(=[0xffffffffa0039370]+0xffffffffa003e660) (unsigned), and falls through when a3(?) < at(=[0xffffffffa0039370]+0xffffffffa003e660) (unsigned); its branch-likely delay slot `or v0,zero,zero` at 0xa002fd04 runs only when taken and is annulled on fall-through.
  The return at 0xa002fd08 has v0 = [0xffffffffa005a400].
  The return at 0xa002fd10 has v0 = 0x0.
- `getcomponent` in `sbin/stand/symmon.IP32` at 0xa0030004 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0030004-0xa0030074 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xa0030004 loads 4 bytes from a0 (arg0 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffa003c778, including `lw` at 0xa003001c, `lw` at 0xa0030038.
  The `lw` at 0xa0030044 loads 4 bytes from a0 (arg0 at entry) +0x4.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xa0030048, `lw` at 0xa0030054, `lw` at 0xa0030070.
  The `beq` branch at 0xa003000c targets 0xa0030038, is taken when v0(=[a0]) == at(=0x6), and falls through when v0(=[a0]) != at(=0x6).
  The `beq` branch at 0xa0030018 targets 0xa003003c, is taken when v0(=[a0]) == v1(=0x4), and falls through when v0(=[a0]) != v1(=0x4).
  The `beq` branch at 0xa0030024 targets 0xa0030038, is taken when v0(=[a0]) == a1(=0x5), and falls through when v0(=[a0]) != a1(=0x5).
  The `beq` branch at 0xa003003c targets 0xa0030060, is taken when a4(=[0xffffffffa003c778]) == 0, and falls through when a4(=[0xffffffffa003c778]) != 0.
  The `beq` branch at 0xa003004c targets 0xa003006c, is taken when a5(?) == v0(=[a0+4]), and falls through when a5(?) != v0(=[a0+4]).
  The `bne` branch at 0xa0030058 targets 0xa0030048, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The return at 0xa0030030 has v0 = 0xffffffffa0037bc0.
  The return at 0xa0030064 has v0 = 0xffffffffa0037bc8.
  The return at 0xa003006c has v0 = ?.
- `walk_path` in `sbin/stand/symmon.IP32` at 0xa0030074 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0030074-0xa0030118 (164 bytes).
  It occupies 164 bytes.
  The `lbu` at 0xa00300d0 loads 1 byte from ?.
  The `lw` at 0xa00300e0 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `jal` at 0xa0030090 calls GetParent [0xa00241e4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa00300a0 calls walk_path [0xa0030074] with a0=ret(GetParent), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0xa00300ac calls getcomponent [0xa0030004] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xa00300bc calls strcat [0xa00308f0] with a0=ret(walk_path), a1=ret(getcomponent), a2=?, a3=?.
  The `jal` at 0xa00300c4 calls strlen [0xa00309ac] with a0=ret(walk_path), a1=?, a2=?, a3=?.
  The `jal` at 0xa00300e8 calls sprintf [0xa002e920] with a0=(ret(strlen) + ret(walk_path)), a1=0xffffffffa0037bd0, a2=[a0+16], a3=?.
  The `jal` at 0xa00300f0 calls strlen [0xa00309ac] with a0=(ret(strlen) + ret(walk_path)), a1=?, a2=?, a3=?.
  The `beq` branch at 0xa0030088 targets 0xa0030100, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0xa00300d4 targets 0xa00300fc, is taken when at(?) == 0, and falls through when at(?) != 0.
  The return at 0xa0030110 has v0 = one of a1, ?.
- `look_tape` in `sbin/stand/symmon.IP32` at 0xa0030700 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0030700-0xa00307c8 (200 bytes).
  It occupies 200 bytes.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffa005a550, including `lw` at 0xa003071c, `lw` at 0xa003079c.
  The `lw` at 0xa003072c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xa003073c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xa00307a4 stores 4 bytes to abs 0xffffffffa005a550.
  The `sw` at 0xa00307b4 stores 4 bytes to ([0xffffffffa005a550]+1 << 0x2) -0x5ffa5af4.
  The `jal` at 0xa0030754 calls GetChild [0xa00241c8] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xa003075c calls look_tape [0xa0030700] with a0=ret(GetChild), a1=?, a2=?, a3=?.
  The `jal` at 0xa0030764 calls GetPeer [0xa00241c0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xa003076c calls look_tape [0xa0030700] with a0=ret(GetPeer), a1=?, a2=?, a3=?.
  The `jal` at 0xa0030784 calls GetChild [0xa00241c8] with a0=a0 at entry (arg0), a1=[a0], a2=0x5, a3=0xf, a4=0x10.
  The `jal` at 0xa00307b0 calls GetPeer [0xa00241c0] with a0=?, a1=?, a2=?, a3=?, a5=([0xffffffffa005a550]+1 << 0x2)+0xffffffffa005a508, a6=([0xffffffffa005a550]+1 << 0x2).
  The `beq` branch at 0xa003070c targets 0xa0030774, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0xa0030724 targets 0xa0030778, is taken when at(=[0xffffffffa005a550]) >= 0x10 (signed), and falls through when at(=[0xffffffffa005a550]) < 0x10 (signed).
  The `bne` branch at 0xa0030734 targets 0xa0030754, is taken when a1(=[a0]) != a2(=0x5), and falls through when a1(=[a0]) == a2(=0x5).
  The `beq` branch at 0xa0030744 targets 0xa0030784, is taken when a0(=[a0+4]) == a3(=0xf), and falls through when a0(=[a0+4]) != a3(=0xf).
  The `beq` branch at 0xa003074c targets 0xa0030784, is taken when a0(=[a0+4]) == a4(=0x10), and falls through when a0(=[a0+4]) != a4(=0x10).
  The `beq` branch at 0xa003078c targets 0xa0030754, is taken when v0(=ret(GetChild)) == 0, and falls through when v0(=ret(GetChild)) != 0.
  The `bne` branch at 0xa00307b8 targets 0xa0030794, is taken when v0(=ret(GetPeer)) != 0, and falls through when v0(=ret(GetPeer)) == 0.
  The `beq` branch at 0xa00307c0 targets 0xa0030754 and is always taken.
  The return at 0xa003077c has v0 = ?.
- `create_rb` in `sbin/stand/symmon.IP32` at 0xa003125c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa003125c-0xa0031294 (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0xa0031280 loads 4 bytes from abs 0xffffffffa000100c.
  The `sw` at 0xa0031284 stores 4 bytes to ret(malloc) +0xc.
  The `sw` at 0xa0031288 stores 4 bytes to abs 0xffffffffa000100c.
  The `jal` at 0xa0031264 calls malloc [0xa002fb10] with a0=0x228, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xa003126c targets 0xa003127c, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xa0031274 targets 0xa003128c and is always taken.
  The return at 0xa003128c has v0 = one of 0x0, ret(malloc).
- `_init` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8434a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP32CRM32/libGL.so`.
  Range: 0xd8434a0-0xd8434d8 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0xd8434c0 calls __glXInit [0xd80e1b8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd8434d0 has v0 = ret(__glXInit).

Skipped no routines.
