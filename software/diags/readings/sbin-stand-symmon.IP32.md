# Readings: `sbin/stand/symmon.IP32`

One entry per routine, filed here from the reading batches by binary.

- `symmon_exceptnorm` in `sbin/stand/symmon.IP32` at 0xa0010370 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0010370-0xa001038c (28 bytes).
  It occupies 28 bytes.
  The `lw` at 0xa0010378 loads 4 bytes from abs 0xffffffffa0058e00.
  The `sd` at 0xa001037c stores 8 bytes to [0xffffffffa0058e00] +0x8.
  The `sw` at 0xa0010388 stores 4 bytes to abs 0xffffffffa0058e40.
  Calls exception [0xa001041c] via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xa0010384).

- `symmon_exceptutlb` in `sbin/stand/symmon.IP32` at 0xa001038c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001038c-0xa00103a8 (28 bytes).
  It occupies 28 bytes.
  The `lw` at 0xa0010394 loads 4 bytes from abs 0xffffffffa0058e00.
  The `sd` at 0xa0010398 stores 8 bytes to [0xffffffffa0058e00] +0x8.
  The `sw` at 0xa00103a4 stores 4 bytes to abs 0xffffffffa0058e40.
  Calls exception [0xa001041c] via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xa00103a0).

- `symmon_exceptxut` in `sbin/stand/symmon.IP32` at 0xa00103a8 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00103a8-0xa00103c4 (28 bytes).
  It occupies 28 bytes.
  The `lw` at 0xa00103b0 loads 4 bytes from abs 0xffffffffa0058e00.
  The `sd` at 0xa00103b4 stores 8 bytes to [0xffffffffa0058e00] +0x8.
  The `sw` at 0xa00103c0 stores 4 bytes to abs 0xffffffffa0058e40.
  Calls exception [0xa001041c] via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xa00103bc).

- `exceptecc` in `sbin/stand/symmon.IP32` at 0xa00103c4 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00103c4-0xa00103e0 (28 bytes).
  It occupies 28 bytes.
  The `lw` at 0xa00103cc loads 4 bytes from abs 0xffffffffa0058e00.
  The `sd` at 0xa00103d0 stores 8 bytes to [0xffffffffa0058e00] +0x8.
  The `sw` at 0xa00103dc stores 4 bytes to abs 0xffffffffa0058e40.
  Calls exception [0xa001041c] via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xa00103d8).

- `symmon_spl` in `sbin/stand/symmon.IP32` at 0xa0010e6c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0010e6c-0xa0010e9c (48 bytes).
  It occupies 48 bytes.
  The return at 0xa0010e94 has v0 = ?.

- `_kernel_bp` in `sbin/stand/symmon.IP32` at 0xa0011004 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0011004-0xa001101c (24 bytes).
  It occupies 24 bytes.
  The return at 0xa0011008 has v0 = ?.
  The instructions from 0xa0011010 to 0xa0011018 are not reached by any path from the entry, and their branches are not listed.

- `_j_exceptnorm` in `sbin/stand/symmon.IP32` at 0xa0011060
  **Inferred.** A 28-byte stub with no body of its own: it jumps through a register at 0xa0011068 to the address held in the constant 0xffffffffa0010370, passing its four argument registers unchanged. The name suggests the normal exception entry, which this forwards to, but the rendered facts do not show what lives at the target.
  Reviewed: 2026-11-12

- `_j_exceptutlb` in `sbin/stand/symmon.IP32` at 0xa001107c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001107c-0xa0011098 (28 bytes).
  It occupies 28 bytes.
  Calls (unnamed) [0xffffffffa001038c] via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xa0011084).
  The instructions from 0xa001108c to 0xa0011094 are not reached by any path from the entry, and their branches are not listed.

- `_j_exceptxut` in `sbin/stand/symmon.IP32` at 0xa0011098 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0011098-0xa00110b4 (28 bytes).
  It occupies 28 bytes.
  Calls (unnamed) [0xffffffffa00103a8] via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xa00110a0).
  The instructions from 0xa00110a8 to 0xa00110b0 are not reached by any path from the entry, and their branches are not listed.

- `_j_exceptecc` in `sbin/stand/symmon.IP32` at 0xa00110b4 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00110b4-0xa00110d0 (28 bytes).
  It occupies 28 bytes.
  Calls (unnamed) [0xffffffffa00103c4] via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xa00110bc).
  The instructions from 0xa00110c4 to 0xa00110cc are not reached by any path from the entry, and their branches are not listed.

- `init_brkpt_lock` in `sbin/stand/symmon.IP32` at 0xa00114b8 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00114b8-0xa00114d8 (32 bytes).
  It occupies 32 bytes.
  The `jal` at 0xa00114c4 calls initlock [0xa002a74c] with a0=0xffffffffa003cc28, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa00114d0 has v0 = ret(initlock).

- `_autostop` in `sbin/stand/symmon.IP32` at 0xa00114d8 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00114d8-0xa0011574 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xa001150c loads 4 bytes from abs 0xffffffffa0037ec8.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lw` at 0xa001153c, `lw` at 0xa0011558.
  The `lbu` at 0xa0011540 loads 1 byte from ret(atob) +0x0.
  The `jal` at 0xa001151c calls printf [0xa002e620] with a0=0xffffffffa00319b0, a1=[0xffffffffa0037ec8], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa0011538 calls atob [0xa002bea0] with a0=[a1+4], a1=0xffffffffa0037ec8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa0011554 calls _dbg_error [0xa0018428] with a0=0xffffffffa0031a10, a1=[a1+4], a2=?, a3=?.
  The `jal` at 0xa0011564 calls printf [0xa002e620] with a0=0xffffffffa00319e0, a1=[0xffffffffa0037ec8], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xa00114e4 targets 0xa0011508, is taken when a0 == at(=0x1), and falls through when a0 != at(=0x1).
  The `beq` branch at 0xa00114f0 targets 0xa001152c, is taken when a0 == v1(=0x2), and falls through when a0 != v1(=0x2).
  The `beq` branch at 0xa0011510 targets 0xa0011564, is taken when a1(=[0xffffffffa0037ec8]) == 0, and falls through when a1(=[0xffffffffa0037ec8]) != 0.
  The `beq` branch at 0xa0011524 targets 0xa00114fc and is always taken.
  The `beq` branch at 0xa0011544 targets 0xa00114f8, is taken when a1(=[ret(atob)]:1) == 0, and falls through when a1(=[ret(atob)]:1) != 0.
  The `beq` branch at 0xa001155c targets 0xa00114fc and is always taken.
  The `beq` branch at 0xa001156c targets 0xa0011524 and is always taken.
  The return at 0xa0011500 has v0 = 0x0.

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

- `single_step` in `sbin/stand/symmon.IP32` at 0xa0011eac (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0011eac-0xa0011ed4 (40 bytes).
  It occupies 40 bytes.
  The `sw` at 0xa0011ec4 stores 4 bytes to abs 0xffffffffa0058e58.
  The `jal` at 0xa0011ec0 calls (unnamed) [0xa0011ce0] with a0=0x3, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa0011ecc has v0 = ret(0xa0011ce0).

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

- `_do_continue` in `sbin/stand/symmon.IP32` at 0xa0012344 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0012344-0xa0012364 (32 bytes).
  It occupies 32 bytes.
  The `sw` at 0xa0012354 stores 4 bytes to abs 0xffffffffa0058e54.
  The `jal` at 0xa0012350 calls (unnamed) [0xa00123c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa001235c has v0 = ret(0xa00123c0).

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

- `validate_brkpts` in `sbin/stand/symmon.IP32` at 0xa00127f4 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00127f4-0xa001288c (152 bytes).
  It occupies 152 bytes.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xa001283c, `lw` at 0xa0012854.
  The `lw` at 0xa0012858 loads 4 bytes from abs 0xffffffffa0011004.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xa0012868, `sw` at 0xa0012870.
  The `jal` at 0xa0012850 calls _get_memory [0xa001b0d0] with a0=?, a1=0x4, a2=?, a3=?.
  The `beq` branch at 0xa0012824 targets 0xa001283c and is always taken.
  The `beql` branch at 0xa0012834 targets 0xa0012874, is taken when s0(?) >= s1(=0xffffffffa003cc28) (unsigned), and falls through when s0(?) < s1(=0xffffffffa003cc28) (unsigned); its branch-likely delay slot `ld s0,8(sp)` at 0xa0012838 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xa0012840 targets 0xa0012830, is taken when a1(?) == 0, and falls through when a1(?) != 0; its branch-likely delay slot `addiu s0,s0,20` at 0xa0012844 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa0012848 targets 0xa001282c, is taken when a1(?) == s3(=0x1), and falls through when a1(?) != s3(=0x1).
  The `beql` branch at 0xa0012860 targets 0xa0012830, is taken when t9(=[0xffffffffa0011004]) == ra(=(ret(_get_memory) << 0x0)), and falls through when t9(=[0xffffffffa0011004]) != ra(=(ret(_get_memory) << 0x0)); its branch-likely delay slot `addiu s0,s0,20` at 0xa0012864 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa001286c targets 0xa001282c and is always taken.
  The return at 0xa0012884 has v0 = ?.

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

- `getinst` in `sbin/stand/symmon.IP32` at 0xa0012918 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0012918-0xa0012934 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0xa0012920 calls (unnamed) [0xa001288c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa001292c has v0 = ret(0xa001288c).

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

- `old_brkpt` in `sbin/stand/symmon.IP32` at 0xa0012984 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0012984-0xa00129fc (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xa00129ac, `lw` at 0xa00129b8.
  The `lwu` at 0xa00129d4 loads 4 bytes from ?.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xa00129e4, `sw` at 0xa00129e8.
  The `jal` at 0xa00129d8 calls _set_memory [0xa001b140] with a0=?, a1=0x4, a2=?, a3=?.
  The `beq` branch at 0xa0012994 targets 0xa00129ac and is always taken.
  The `beql` branch at 0xa00129a4 targets 0xa00129f0, is taken when s0(?) >= v0(=0xffffffffa003cc28) (unsigned), and falls through when s0(?) < v0(=0xffffffffa003cc28) (unsigned); its branch-likely delay slot `addiu v0,zero,-1` at 0xa00129a8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xa00129b0 targets 0xa00129a0, is taken when a3(?) == 0, and falls through when a3(?) != 0; its branch-likely delay slot `addiu s0,s0,20` at 0xa00129b4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xa00129bc targets 0xa00129a0, is taken when a5(?) != a0, and falls through when a5(?) == a0; its branch-likely delay slot `addiu s0,s0,20` at 0xa00129c0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa00129c8 targets 0xa00129e0, is taken when a3(?) == t9(=0x1), and falls through when a3(?) != t9(=0x1).
  The return at 0xa00129f4 has v0 = one of -0x1, 0x0.
  The instructions from 0xa001299c to 0xa001299c are not reached by any path from the entry, and their branches are not listed.

- `is_branch` in `sbin/stand/symmon.IP32` at 0xa0012e7c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0012e7c-0xa0012f00 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xa0012e98 loads 4 bytes from table(0xffffffffa0031cf0) +0x0.
  The `beq` branch at 0xa0012e90 targets 0xa0012ea8, is taken when v1(?) >= 0x18 (unsigned), and falls through when v1(?) < 0x18 (unsigned).
  The return at 0xa0012eac has v0 = 0x0.
  The instructions from 0xa0012eb4 to 0xa0012efc are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xa0012ea0 uses a jump table whose successors are unresolved.

- `is_jal` in `sbin/stand/symmon.IP32` at 0xa0012f00 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0012f00-0xa0012f8c (140 bytes).
  It occupies 140 bytes.
  The `beq` branch at 0xa0012f04 targets 0xa0012f2c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xa0012f10 targets 0xa0012f40, is taken when v0(?) == at(=0x1), and falls through when v0(?) != at(=0x1).
  The `beq` branch at 0xa0012f1c targets 0xa0012f70, is taken when v0(?) == v1(=0x3), and falls through when v0(?) != v1(=0x3).
  The `bne` branch at 0xa0012f30 targets 0xa0012f24, is taken when a1(?) != a2(=0x9), and falls through when a1(?) == a2(=0x9).
  The `beq` branch at 0xa0012f38 targets 0xa0012f80 and is always taken.
  The `beq` branch at 0xa0012f48 targets 0xa0012f78, is taken when v0(?) == a3(=0x10), and falls through when v0(?) != a3(=0x10).
  The `beq` branch at 0xa0012f50 targets 0xa0012f78, is taken when v0(?) == v1(=0x11), and falls through when v0(?) != v1(=0x11).
  The `beq` branch at 0xa0012f58 targets 0xa0012f78, is taken when v0(?) == a0(=0x12), and falls through when v0(?) != a0(=0x12).
  The `beq` branch at 0xa0012f60 targets 0xa0012f78, is taken when v0(?) == a1(=0x13), and falls through when v0(?) != a1(=0x13).
  The return at 0xa0012f24 has v0 = 0x0.
  The return at 0xa0012f68 has v0 = 0x0.
  The return at 0xa0012f70 has v0 = 0x1.
  The return at 0xa0012f78 has v0 = 0x1.
  The return at 0xa0012f84 has v0 = 0x1.

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

- `_tlbpid` in `sbin/stand/symmon.IP32` at 0xa0015cf0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0015cf0-0xa0015d94 (164 bytes).
  It occupies 164 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lw` at 0xa0015d18, `lw` at 0xa0015d34.
  The `lbu` at 0xa0015d1c loads 1 byte from ret(atob) +0x0.
  The `jal` at 0xa0015d14 calls atob [0xa002bea0] with a0=[a1+4], a1=sp-32, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa0015d3c calls printf [0xa002e620] with a0=0xffffffffa0032940, a1=[a1+4], a2=?, a3=?.
  The `jal` at 0xa0015d64 calls set_tlbpid [0xa00247c8] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa0015d74 calls get_tlbpid [0xa00247b0] with a0=a0 at entry (arg0), a1=sp-32, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa0015d84 calls printf [0xa002e620] with a0=0xffffffffa00329e8, a1=ret(get_tlbpid), a2=?, a3=?.
  The `beq` branch at 0xa0015d00 targets 0xa0015d58, is taken when a0 >= 0x3 (signed), and falls through when a0 < 0x3 (signed).
  The `beq` branch at 0xa0015d0c targets 0xa0015d74, is taken when a0 == v0(=0x1), and falls through when a0 != v0(=0x1).
  The `bne` branch at 0xa0015d20 targets 0xa0015d34, is taken when v1(=[ret(atob)]:1) != 0, and falls through when v1(=[ret(atob)]:1) == 0.
  The `beq` branch at 0xa0015d2c targets 0xa0015d64, is taken when v0(?) == a0(?), and falls through when v0(?) != a0(?).
  The `beq` branch at 0xa0015d5c targets 0xa0015d48 and is always taken.
  The `beq` branch at 0xa0015d6c targets 0xa0015d48 and is always taken.
  The `beq` branch at 0xa0015d8c targets 0xa0015d48 and is always taken.
  The return at 0xa0015d50 has v0 = one of 0x0, 0x1.

- `_cacheflush` in `sbin/stand/symmon.IP32` at 0xa0016390 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0016390-0xa0016420 (144 bytes).
  It occupies 144 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lw` at 0xa00163c0, `lw` at 0xa00163f0.
  The `jal` at 0xa00163bc calls parse_sym_range [0xa001c428] with a0=[a1+4], a1=sp-32, a2=sp-24, a3=0x4.
  The `jal` at 0xa00163fc calls FlushAllCaches [0xa0023994] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x4.
  The `jal` at 0xa0016410 calls printf [0xa002e620] with a0=0xffffffffa0032de0, a1=[a1+4], a2=?, a3=?.
  The `beq` branch at 0xa00163a0 targets 0xa00163dc, is taken when a0 >= 0x3 (signed), and falls through when a0 < 0x3 (signed).
  The `beq` branch at 0xa00163ac targets 0xa00163fc, is taken when a0 == v0(=0x1), and falls through when a0 != v0(=0x1).
  The `beq` branch at 0xa00163c4 targets 0xa00163e8, is taken when v0(=ret(parse_sym_range)) == 0, and falls through when v0(=ret(parse_sym_range)) != 0.
  The `beq` branch at 0xa00163e0 targets 0xa00163cc and is always taken.
  The `bltzl` branch at 0xa00163ec targets 0xa001640c, is taken when v1(?) < 0 (signed), and falls through when v1(?) >= 0 (signed); its branch-likely delay slot `lw a1,4(s0)` at 0xa00163f0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa00163f4 targets 0xa00163cc and is always taken.
  The `beq` branch at 0xa0016404 targets 0xa00163f4 and is always taken.
  The `beq` branch at 0xa0016418 targets 0xa00163cc and is always taken.
  The return at 0xa00163d4 has v0 = one of 0x0, 0x1.

- `clear` in `sbin/stand/symmon.IP32` at 0xa0016b68 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0016b68-0xa0016b8c (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0xa0016b74 calls puts [0xa002e4d4] with a0=0xffffffffa0032f50, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa0016b84 has v0 = 0x0.

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

- `dumpPrimaryInstLine` in `sbin/stand/symmon.IP32` at 0xa0018058 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0018058-0xa00180d4 (124 bytes).
  It occupies 124 bytes.
  The `jal` at 0xa001806c calls iCacheSize [0xa0023dbc] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa00180b4 calls iLine [0xa0023df4] with a0=?, a1=sp-192, a2=?, a3=0xffffffff80000000.
  The `jal` at 0xa00180c4 calls (unnamed) [0xa0017c44] with a0=sp-192, a1=?, a2=a2 at entry (arg2), a3=?.
  The `bne` branch at 0xa001807c targets 0xa0018094, is taken when s0(=a0) < at(?) (unsigned), and falls through when s0(=a0) >= at(?) (unsigned).
  The `beq` branch at 0xa00180cc targets 0xa0018084 and is always taken.
  The return at 0xa001808c has v0 = one of 0x0, 0x1.

- `dumpPrimaryDataLine` in `sbin/stand/symmon.IP32` at 0xa001812c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001812c-0xa00181a8 (124 bytes).
  It occupies 124 bytes.
  The `jal` at 0xa0018140 calls dCacheSize [0xa0023dd8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa0018188 calls dLine [0xa0023e54] with a0=?, a1=sp-96, a2=0xffffffff80000000, a3=?.
  The `jal` at 0xa0018198 calls (unnamed) [0xa0017d70] with a0=sp-96, a1=?, a2=a2 at entry (arg2), a3=?.
  The `bne` branch at 0xa0018150 targets 0xa0018168, is taken when s0(=a0) < at(?) (unsigned), and falls through when s0(=a0) >= at(?) (unsigned).
  The `beq` branch at 0xa00181a0 targets 0xa0018158 and is always taken.
  The return at 0xa0018160 has v0 = one of 0x0, 0x1.

- `_dump_sline` in `sbin/stand/symmon.IP32` at 0xa00182c8 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00182c8-0xa001832c (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xa00182d0 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `jal` at 0xa00182dc calls parse_sym_range [0xa001c428] with a0=[a1+4], a1=sp-16, a2=0x0, a3=0x0.
  The `jal` at 0xa00182f0 calls printf [0xa002e620] with a0=0xffffffffa00332d8, a1=?, a2=0x1, a3=?.
  The `jal` at 0xa001830c calls dumpSecondaryLineAddr [0xa0018004] with a0=?, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0xa001831c calls dumpSecondaryLineAddr [0xa0018004] with a0=?, a1=0x1, a2=0x1, a3=?.
  The `beq` branch at 0xa00182e4 targets 0xa0018308, is taken when v0(=ret(parse_sym_range)) == 0, and falls through when v0(=ret(parse_sym_range)) != 0.
  The `beq` branch at 0xa0018324 targets 0xa00182fc and is always taken.
  The return at 0xa0018300 has v0 = one of 0x0, 0x1.

- `_dump_dline` in `sbin/stand/symmon.IP32` at 0xa001832c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001832c-0xa0018390 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xa0018334 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `jal` at 0xa0018340 calls parse_sym_range [0xa001c428] with a0=[a1+4], a1=sp-16, a2=0x0, a3=0x0.
  The `jal` at 0xa0018354 calls printf [0xa002e620] with a0=0xffffffffa00332d8, a1=?, a2=0x1, a3=?.
  The `jal` at 0xa0018370 calls dumpPrimaryDataLineAddr [0xa00181a8] with a0=?, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0xa0018380 calls dumpPrimaryDataLineAddr [0xa00181a8] with a0=?, a1=0x1, a2=0x1, a3=?.
  The `beq` branch at 0xa0018348 targets 0xa001836c, is taken when v0(=ret(parse_sym_range)) == 0, and falls through when v0(=ret(parse_sym_range)) != 0.
  The `beq` branch at 0xa0018388 targets 0xa0018360 and is always taken.
  The return at 0xa0018364 has v0 = one of 0x0, 0x1.

- `_dump_iline` in `sbin/stand/symmon.IP32` at 0xa0018390 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0018390-0xa00183f4 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xa0018398 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `jal` at 0xa00183a4 calls parse_sym_range [0xa001c428] with a0=[a1+4], a1=sp-16, a2=0x0, a3=0x0.
  The `jal` at 0xa00183b8 calls printf [0xa002e620] with a0=0xffffffffa00332d8, a1=?, a2=0x1, a3=?.
  The `jal` at 0xa00183d4 calls dumpPrimaryInstLineAddr [0xa00180d4] with a0=?, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0xa00183e4 calls dumpPrimaryInstLineAddr [0xa00180d4] with a0=?, a1=0x1, a2=0x1, a3=?.
  The `beq` branch at 0xa00183ac targets 0xa00183d0, is taken when v0(=ret(parse_sym_range)) == 0, and falls through when v0(=ret(parse_sym_range)) != 0.
  The `beq` branch at 0xa00183ec targets 0xa00183c4 and is always taken.
  The return at 0xa00183c8 has v0 = one of 0x0, 0x1.

- `_dbg_error` in `sbin/stand/symmon.IP32` at 0xa0018428 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0018428-0xa00184a0 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffa0058e04, including `lw` at 0xa0018468, `lw` at 0xa0018488.
  The `sw` at 0xa0018494 stores 4 bytes to abs 0xffffffffa0058e04.
  The `jal` at 0xa0018440 calls printf [0xa002e620] with a0=0xffffffffa0033700, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa001844c calls printf [0xa002e620] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0xa0018458 calls putchar [0xa002dd70] with a0=0xa, a1=?, a2=?, a3=?.
  The `jal` at 0xa0018474 calls _restart [0xa00184a0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa0018490 calls longjmp [0xa0030318] with a0=[0xffffffffa0058e04], a1=0x1, a2=?, a3=0xffffffffa0058db8.
  The `bne` branch at 0xa001846c targets 0xa0018488, is taken when a1(=[0xffffffffa0058e04]) != 0, and falls through when a1(=[0xffffffffa0058e04]) == 0.
  The `beq` branch at 0xa0018498 targets 0xa0018474 and is always taken.
  The return at 0xa0018480 has v0 = ret(_restart).

- `close_on_exception` in `sbin/stand/symmon.IP32` at 0xa00184e0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00184e0-0xa0018510 (48 bytes).
  It occupies 48 bytes.
  The `lw` at 0xa00184e4 loads 4 bytes from abs 0xffffffffa003ccd0.
  The `sw` at 0xa00184f8 stores 4 bytes to abs 0xffffffffa003ccd0.
  The `sw` at 0xa0018504 stores 4 bytes to ([0xffffffffa003ccd0]+1 << 0x2) -0x5ffc332c.
  The `beq` branch at 0xa00184ec targets 0xa0018508, is taken when a2(=[0xffffffffa003ccd0]) >= 0x3 (signed), and falls through when a2(=[0xffffffffa003ccd0]) < 0x3 (signed).
  The return at 0xa0018508 has v0 = one of ?, ([0xffffffffa003ccd0]+1 << 0x2)+0xffffffffa003ccd0.

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

- `do_it2` in `sbin/stand/symmon.IP32` at 0xa001a3e4 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001a3e4-0xa001a474 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xa001a410 loads 4 bytes from abs 0xffffffffa003cd68.
  The `lw` at 0xa001a450 loads 4 bytes from ?.
  The `jal` at 0xa001a3f4 calls (unnamed) [0xa001a0e4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa001a40c calls (unnamed) [0xa001a71c] with a0=a0 at entry (arg0), a1=[0xffffffffa003cd68], a2=sp-64, a3=?.
  The `jal` at 0xa001a464 calls (unnamed) [0xa001a224] with a0=0x3, a1=sp-56, a2=?, a3=0x0, a4=a1 at entry (arg1), a5=a2 at entry (arg2).
  The `beq` branch at 0xa001a3fc targets 0xa001a430, is taken when v0(=ret(0xa001a0e4)) == 0, and falls through when v0(=ret(0xa001a0e4)) != 0.
  The `beq` branch at 0xa001a418 targets 0xa001a43c, is taken when v0(=ret(0xa001a71c)) == a2(=0x1), and falls through when v0(=ret(0xa001a71c)) != a2(=0x1).
  The `beq` branch at 0xa001a434 targets 0xa001a420 and is always taken.
  The `beq` branch at 0xa001a46c targets 0xa001a420 and is always taken.
  The return at 0xa001a428 has v0 = one of 0x1, ret(0xa001a224).

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

- `map_k2seg_addr` in `sbin/stand/symmon.IP32` at 0xa001af10 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001af10-0xa001afac (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xa001af2c loads 4 bytes from abs 0xffffffffa003cd68.
  The `lw` at 0xa001af78 loads 4 bytes from ?.
  The `jal` at 0xa001af1c calls (unnamed) [0xa001a0e4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa001af38 calls (unnamed) [0xa001a71c] with a0=0xffffffffa0035200, a1=[0xffffffffa003cd68], a2=sp-32, a3=?.
  The `jal` at 0xa001af54 calls _dbg_error [0xa0018428] with a0=0xffffffffa0035250, a1=a0 at entry (arg0), a2=0x1, a3=?.
  The `jal` at 0xa001af74 calls _do_it [0xa0010e9c] with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=sp-24.
  The `jal` at 0xa001af9c calls _dbg_error [0xa0018428] with a0=0xffffffffa0035280, a1=a0 at entry (arg0), a2=?, a3=?.
  The `beq` branch at 0xa001af44 targets 0xa001af5c, is taken when v0(=ret(0xa001a71c)) == a2(=0x1), and falls through when v0(=ret(0xa001a71c)) != a2(=0x1).
  The `beq` branch at 0xa001af7c targets 0xa001af90, is taken when v0(=ret(_do_it)) == 0, and falls through when v0(=ret(_do_it)) != 0.
  The `beq` branch at 0xa001afa4 targets 0xa001af84 and is always taken.
  The return at 0xa001af88 has v0 = one of ret(_do_it), ret(_dbg_error).

- `begin_cell` in `sbin/stand/symmon.IP32` at 0xa001afac (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001afac-0xa001b034 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xa001afcc loads 4 bytes from abs 0xffffffffa0038fa0.
  The `lw` at 0xa001aff0 loads 4 bytes from abs 0xffffffffa003cd68.
  The `lw` at 0xa001b01c loads 4 bytes from ?.
  The `sw` at 0xa001b030 stores 4 bytes to abs 0xffffffffa0038fa0.
  The `jal` at 0xa001afb4 calls (unnamed) [0xa001a0e4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa001aff4 calls (unnamed) [0xa001a71c] with a0=0xffffffffa00352a8, a1=[0xffffffffa003cd68], a2=sp-16, a3=?.
  The `jal` at 0xa001b018 calls _do_it [0xa0010e9c] with a0=sp-12, a1=?, a2=0x1, a3=0x0.
  The `beq` branch at 0xa001afbc targets 0xa001afdc, is taken when v0(=ret(0xa001a0e4)) == 0, and falls through when v0(=ret(0xa001a0e4)) != 0.
  The `beq` branch at 0xa001afd4 targets 0xa001afe4, is taken when at(=[0xffffffffa0038fa0]) == v0(=-0x1), and falls through when at(=[0xffffffffa0038fa0]) != v0(=-0x1).
  The `bne` branch at 0xa001b000 targets 0xa001afdc, is taken when v0(=ret(0xa001a71c)) != a2(=0x1), and falls through when v0(=ret(0xa001a71c)) == a2(=0x1).
  The `beq` branch at 0xa001b02c targets 0xa001afd8 and is always taken.
  The return at 0xa001afdc has v0 = one of ret(0xa001a0e4), -0x1, ?, ret(0xa001a71c).

- `end_cell` in `sbin/stand/symmon.IP32` at 0xa001b034 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001b034-0xa001b0d0 (156 bytes).
  It occupies 156 bytes.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffa0038fa0, including `lw` at 0xa001b054, `lw` at 0xa001b098.
  The `lw` at 0xa001b06c loads 4 bytes from abs 0xffffffffa003cd68.
  2 such `sw` accesses store 4 bytes to abs 0xffffffffa0038fa0, including `sw` at 0xa001b0a8, `sw` at 0xa001b0cc.
  The `lw` at 0xa001b0b8 loads 4 bytes from ?.
  The `jal` at 0xa001b03c calls (unnamed) [0xa001a0e4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa001b070 calls (unnamed) [0xa001a71c] with a0=0xffffffffa00352b8, a1=[0xffffffffa003cd68], a2=sp-16, a3=?.
  The `jal` at 0xa001b0b4 calls _do_it [0xa0010e9c] with a0=sp-12, a1=?, a2=0x1, a3=0x0, a4=0xffffffffa0038f98, a5=[0xffffffffa0038fa0].
  The `beq` branch at 0xa001b044 targets 0xa001b084, is taken when v0(=ret(0xa001a0e4)) == 0, and falls through when v0(=ret(0xa001a0e4)) != 0.
  The `bltz` branch at 0xa001b058 targets 0xa001b084, is taken when at(=[0xffffffffa0038fa0]) < 0 (signed), and falls through when at(=[0xffffffffa0038fa0]) >= 0 (signed).
  The `beq` branch at 0xa001b07c targets 0xa001b08c, is taken when v0(=ret(0xa001a71c)) == a2(=0x1), and falls through when v0(=ret(0xa001a71c)) != a2(=0x1).
  The `beq` branch at 0xa001b0c8 targets 0xa001b080 and is always taken.
  The return at 0xa001b084 has v0 = one of ret(0xa001a0e4), ret(0xa001a71c), ?.

- `_get_memory` in `sbin/stand/symmon.IP32` at 0xa001b0d0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001b0d0-0xa001b140 (112 bytes).
  It occupies 112 bytes.
  The `lbu` at 0xa001b12c loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lhu` at 0xa001b134 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `lwu` at 0xa001b13c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jal` at 0xa001b100 calls _dbg_error [0xa0018428] with a0=0xffffffffa00352c8, a1=0x0, a2=0x8, a3=a3 at entry (arg3).
  The `jal` at 0xa001b118 calls load_double [0xa0024b38] with a0=a0 at entry (arg0), a1=0x0, a2=0x8, a3=a3 at entry (arg3).
  The `beq` branch at 0xa001b0d8 targets 0xa001b128, is taken when a1 == at(=0x1), and falls through when a1 != at(=0x1).
  The `beq` branch at 0xa001b0e4 targets 0xa001b130, is taken when a1 == v0(=0x2), and falls through when a1 != v0(=0x2).
  The `beq` branch at 0xa001b0ec targets 0xa001b138, is taken when a1 == v1(=0x4), and falls through when a1 != v1(=0x4).
  The `beq` branch at 0xa001b0f4 targets 0xa001b118, is taken when a1 == a2(=0x8), and falls through when a1 != a2(=0x8).
  The `beq` branch at 0xa001b120 targets 0xa001b108 and is always taken.
  The `beq` branch at 0xa001b128 targets 0xa001b108 and is always taken.
  The `beq` branch at 0xa001b130 targets 0xa001b108 and is always taken.
  The `beq` branch at 0xa001b138 targets 0xa001b108 and is always taken.
  The return at 0xa001b110 has v0 = one of ?, ret(load_double), [a0]:1, [a0]:2, [a0].

- `_set_memory` in `sbin/stand/symmon.IP32` at 0xa001b140 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001b140-0xa001b1c8 (136 bytes).
  It occupies 136 bytes.
  The `sd` at 0xa001b1ac stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `sb` at 0xa001b1b4 stores 1 byte to a0 (arg0 at entry) +0x0.
  The `sh` at 0xa001b1bc stores 2 bytes to a0 (arg0 at entry) +0x0.
  The `sw` at 0xa001b1c4 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `jal` at 0xa001b180 calls _fatal_error [0xa00183f4] with a0=0xffffffffa00352e8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa001b18c calls (unnamed) [0xa001b270] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `beq` branch at 0xa001b158 targets 0xa001b1b0, is taken when a1 == at(=0x1), and falls through when a1 != at(=0x1).
  The `beq` branch at 0xa001b164 targets 0xa001b1b8, is taken when a1 == v0(=0x2), and falls through when a1 != v0(=0x2).
  The `beq` branch at 0xa001b16c targets 0xa001b1c0, is taken when a1 == v1(=0x4), and falls through when a1 != v1(=0x4).
  The `beq` branch at 0xa001b178 targets 0xa001b1a8, is taken when a1 == a0(=0x8), and falls through when a1 != a0(=0x8).
  The `beq` branch at 0xa001b1a8 targets 0xa001b188 and is always taken.
  The `beq` branch at 0xa001b1b0 targets 0xa001b188 and is always taken.
  The `beq` branch at 0xa001b1b8 targets 0xa001b188 and is always taken.
  The `beq` branch at 0xa001b1c0 targets 0xa001b188 and is always taken.
  The return at 0xa001b1a0 has v0 = ret(0xa001b270).

- `init_symmon_gpda` in `sbin/stand/symmon.IP32` at 0xa001b394 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001b394-0xa001b408 (116 bytes).
  It occupies 116 bytes.
  The `sw` at 0xa001b3b8 stores 4 bytes to abs 0xffffffffa0058e48.
  The `sw` at 0xa001b3bc stores 4 bytes to abs 0xffffffffa0058e04.
  The `sw` at 0xa001b3c0 stores 4 bytes to abs 0xffffffffa0058e58.
  The `sw` at 0xa001b3c4 stores 4 bytes to abs 0xffffffffa0058e30.
  The `sw` at 0xa001b3d0 stores 4 bytes to abs 0xffffffffa0058e4c.
  The `sw` at 0xa001b3e0 stores 4 bytes to abs 0xffffffffa0058e64.
  The `sw` at 0xa001b3e4 stores 4 bytes to abs 0xffffffffa0058e50.
  The `sw` at 0xa001b3ec stores 4 bytes to abs 0xffffffffa0058e44.
  2 such `sw` accesses store 4 bytes to abs 0xffffffffa0058e38, including `sw` at 0xa001b3f4, `sw` at 0xa001b404.
  The `jal` at 0xa001b39c calls cpuid [0xa0020c5c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xa001b3e8 targets 0xa001b400, is taken when v0(=ret(cpuid)) == 0, and falls through when v0(=ret(cpuid)) != 0.
  The `beq` branch at 0xa001b400 targets 0xa001b3f8 and is always taken.
  The return at 0xa001b3f8 has v0 = one of 0x1, ret(cpuid).

- `_argvize` in `sbin/stand/symmon.IP32` at 0xa001b614 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001b614-0xa001b698 (132 bytes).
  It occupies 132 bytes.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x0, including `lbu` at 0xa001b638, `lbu` at 0xa001b660.
  The `jal` at 0xa001b62c calls init_str [0xa002b39c] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa001b644 calls (unnamed) [0xa001b698] with a0=sp-12, a1=?, a2=?, a3=?.
  The `jal` at 0xa001b654 calls new_str1 [0xa002b5dc] with a0=ret(0xa001b698), a1=a1 at entry (arg1), a2=?, a3=?.
  The `beq` branch at 0xa001b63c targets 0xa001b67c, is taken when at(=[a0]:1) == 0, and falls through when at(=[a0]:1) != 0.
  The `beq` branch at 0xa001b64c targets 0xa001b674, is taken when v0(=ret(0xa001b698)) == 0, and falls through when v0(=ret(0xa001b698)) != 0.
  The `bne` branch at 0xa001b664 targets 0xa001b644, is taken when v0(=[a0]:1) != 0, and falls through when v0(=[a0]:1) == 0.
  The `beq` branch at 0xa001b66c targets 0xa001b680 and is always taken.
  The `beq` branch at 0xa001b674 targets 0xa001b680 and is always taken.
  The return at 0xa001b690 has v0 = one of ?, 0x0.

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

- `usage` in `sbin/stand/symmon.IP32` at 0xa001b8c4 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001b8c4-0xa001b8e8 (36 bytes).
  It occupies 36 bytes.
  The `lw` at 0xa001b8c4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `jal` at 0xa001b8d4 calls printf [0xa002e620] with a0=0xffffffffa0035358, a1=[a0+8], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa001b8e0 has v0 = ret(printf).

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

- `parse_range` in `sbin/stand/symmon.IP32` at 0xa001bac0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001bac0-0xa001bb34 (116 bytes).
  It occupies 116 bytes.
  3 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `sw` at 0xa001baf4, `sw` at 0xa001bb00, `sw` at 0xa001bb30.
  The `sw` at 0xa001bb14 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `sw` at 0xa001bb1c stores 4 bytes to a2 (arg2 at entry) +0x8.
  The `jal` at 0xa001bae0 calls parse_sym_range [0xa001c428] with a0=a0 at entry (arg0), a1=sp-40, a2=sp-48, a3=a1 at entry (arg1).
  The `beq` branch at 0xa001baec targets 0xa001bb00, is taken when v0(=ret(parse_sym_range)) == 0, and falls through when v0(=ret(parse_sym_range)) != 0.
  The `beq` branch at 0xa001baf8 targets 0xa001bb20 and is always taken.
  The `beq` branch at 0xa001bb10 targets 0xa001bb2c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xa001bb2c targets 0xa001bb18 and is always taken.
  The return at 0xa001bb24 has v0 = one of 0x0, 0x1.

- `main_intr` in `sbin/stand/symmon.IP32` at 0xa001bdf4 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001bdf4-0xa001be20 (44 bytes).
  It occupies 44 bytes.
  The `sw` at 0xa001be08 stores 4 bytes to abs 0xffffffffa0058e38.
  The `lw` at 0xa001be10 loads 4 bytes from abs 0xffffffffa0058e44.
  The `jal` at 0xa001be0c calls longjmp [0xa0030318] with a0=[0xffffffffa0058e44], a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa001be18 has v0 = ret(longjmp).

- `_save_vectors` in `sbin/stand/symmon.IP32` at 0xa001be54 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001be54-0xa001be78 (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0xa001be5c calls _save_exceptions [0xa00297d4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa001be64 calls _hook_exceptions [0xa0029a60] with a0=?, a1=?, a2=?, a3=?.
  The return at 0xa001be70 has v0 = ret(_hook_exceptions).

- `_restore_vectors` in `sbin/stand/symmon.IP32` at 0xa001be78 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001be78-0xa001be94 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0xa001be80 calls _restore_exceptions [0xa0029928] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa001be8c has v0 = ret(_restore_exceptions).

- `p_curson` in `sbin/stand/symmon.IP32` at 0xa001be94 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001be94-0xa001bec4 (48 bytes).
  It occupies 48 bytes.
  The `jal` at 0xa001be9c calls isgraphic [0xa002b028] with a0=0x1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa001beb0 calls puts [0xa002e4d4] with a0=0xffffffffa00354f0, a1=?, a2=?, a3=?.
  The `beq` branch at 0xa001bea4 targets 0xa001bebc, is taken when v0(=ret(isgraphic)) == 0, and falls through when v0(=ret(isgraphic)) != 0.
  The return at 0xa001bebc has v0 = one of ret(isgraphic), ret(puts).

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

- `nmtohx` in `sbin/stand/symmon.IP32` at 0xa001c298 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001c298-0xa001c334 (156 bytes).
  It occupies 156 bytes.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xa001c2e4, `lw` at 0xa001c2f4.
  The `jal` at 0xa001c2d0 calls printf [0xa002e620] with a0=0xffffffffa0035bc0, a1=?, a2=?, a3=?.
  The `jal` at 0xa001c2e8 calls parse_sym [0xa001c728] with a0=?, a1=sp-48, a2=?, a3=?.
  The `jal` at 0xa001c2fc calls printf [0xa002e620] with a0=0xffffffffa0035bb0, a1=?, a2=?, a3=?.
  The `beq` branch at 0xa001c2b0 targets 0xa001c328, is taken when a0 == at(=0x1), and falls through when a0 != at(=0x1).
  The `blez` branch at 0xa001c2bc targets 0xa001c30c, is taken when s2(=a0-1) <= 0 (signed), and falls through when s2(=a0-1) > 0 (signed).
  The `beq` branch at 0xa001c2c8 targets 0xa001c2e0 and is always taken.
  The `beq` branch at 0xa001c2dc targets 0xa001c30c, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `bne` branch at 0xa001c2f0 targets 0xa001c2d0, is taken when v0(=ret(parse_sym)) != 0, and falls through when v0(=ret(parse_sym)) == 0.
  The `beq` branch at 0xa001c304 targets 0xa001c2d8 and is always taken.
  The `beq` branch at 0xa001c32c targets 0xa001c314 and is always taken.
  The return at 0xa001c320 has v0 = one of 0x0, 0x1.

- `parse_sym` in `sbin/stand/symmon.IP32` at 0xa001c728 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001c728-0xa001c748 (32 bytes).
  It occupies 32 bytes.
  The `jal` at 0xa001c734 calls parse_sym_range [0xa001c428] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x0, a3=0x0.
  The return at 0xa001c740 has v0 = ret(parse_sym_range).

- `init_proto` in `sbin/stand/symmon.IP32` at 0xa001ca0c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001ca0c-0xa001ca30 (36 bytes).
  It occupies 36 bytes.
  The `sw` at 0xa001ca14 stores 4 bytes to abs 0xffffffffa003e558.
  The `sw` at 0xa001ca1c stores 4 bytes to abs 0xffffffffa003e56c.
  The `sw` at 0xa001ca20 stores 4 bytes to abs 0xffffffffa003e570.
  The `sw` at 0xa001ca24 stores 4 bytes to abs 0xffffffffa003e560.
  The `sw` at 0xa001ca2c stores 4 bytes to abs 0xffffffffa003e55c.
  The return at 0xa001ca28 has v0 = -0x1.

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
  The `jalr` at 0xa001eca0 calls (unknown callee) with a0=[a0+4], a1=[a0+90]:2+2, a2=?, a3=([a0+90]:2+2 + (([a0+96]:2 << 0x3) + [a0+96]:2))-1.
  The `jalr` at 0xa001ecb4 calls (unknown callee) with a0=[a0+4], a1=[a0+90]:2+2, a2=?, a3=?.
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
  The `jalr` at 0xa001f300 calls (unknown callee) with a0=[a0+4], a1=([a0+90]:2 + (([a0+100]:2 << 0x3) + [a0+100]:2))+2, a2=?, a3=([a0+90]:2 + (([a0+100]:2 << 0x3) + [a0+100]:2))+10, a5=[[a0]+12].
  The `jalr` at 0xa001f31c calls (unknown callee) with a0=[a0+4], a1=([a0+90]:2 + (([a0+100]:2 << 0x3) + [a0+100]:2))+2, a2=?, a3=?, a4=[[a0]+20].
  The `jalr` at 0xa001f32c calls (unknown callee) with a0=[a0+4], a1=[a0+60], a2=?, a3=?, a5=[[a0]+4].
  The `jal` at 0xa001f354 calls txOutcharmap [0xa00313e8] with a0=a0 at entry (arg0), a1=0x2, a2=0x1, a3=[([(a0 + ([a0+98]:2 << 0x2))+116] + ([a0+100]:2 + [a0+100]:2))+2]:2.
  The `jal` at 0xa001f374 calls txOutcharmap [0xa00313e8] with a0=a0 at entry (arg0), a1=?, a2=0x0, a3=[([(a0 + ([a0+98]:2 << 0x2))+116] + ([a0+100]:2 + [a0+100]:2))+2]:2.
  The `jal` at 0xa001f394 calls txOutcharmap [0xa00313e8] with a0=a0 at entry (arg0), a1=0x2, a2=0x1, a3=[([(a0 + ([a0+98]:2 << 0x2))+116] + ([a0+100]:2 + [a0+100]:2))+2]:2.
  The `jal` at 0xa001f3a4 calls txOutcharmap [0xa00313e8] with a0=a0 at entry (arg0), a1=0x5, a2=0x1, a3=?.
  The `jalr` at 0xa001f3c0 calls (unknown callee) with a0=[a0+4], a1=[a0+60], a2=?, a3=[a0+100]:2, a5=[[a0]+4], a6=[[(a0 + ([a0+98]:2 << 0x2))+116]+1]:1, a7=(a1 | [a0+114]:2).
  The `jalr` at 0xa001f3ec calls (unknown callee) with a0=[a0+4], a1=([a0+90]:2 + (([a0+100]:2 << 0x3) + [a0+100]:2))+2, a2=?, a3=([a0+90]:2 + (([a0+100]:2 << 0x3) + [a0+100]:2))+10, a5=[[a0]+12].
  The `jalr` at 0xa001f408 calls (unknown callee) with a0=[a0+4], a1=([a0+90]:2 + (([a0+100]:2 << 0x3) + [a0+100]:2))+2, a2=?, a3=?, a4=[[a0]+20].
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

- `htp_init` in `sbin/stand/symmon.IP32` at 0xa001fda0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa001fda0-0xa001fe18 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xa001fdb0 loads 4 bytes from abs 0xffffffffa005a3e0.
  4 such `lw` accesses load 4 bytes from abs 0xffffffffa003aa98, including `lw` at 0xa001fdc0, `lw` at 0xa001fdd4, `lw` at 0xa001fde8.
  The `sb` at 0xa001fe04 stores 1 byte to [0xffffffffa003aa98] +0x58.
  The `jal` at 0xa001fdc4 calls txConfig [0xa001e4bc] with a0=[0xffffffffa003aa98], a1=0x4703, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa001fdcc calls initFonts [0xa001fd4c] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa001fddc calls (unnamed) [0xa001e634] with a0=[0xffffffffa003aa98], a1=0x0, a2=0x0, a3=?.
  The `jal` at 0xa001fde4 calls (unnamed) [0xa001eb8c] with a0=[0xffffffffa003aa98], a1=?, a2=?, a3=?.
  The `jal` at 0xa001fe08 calls txConfig [0xa001e4bc] with a0=[0xffffffffa003aa98], a1=0x4702, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xa001fdbc targets 0xa001fe08, is taken when at(=[0xffffffffa005a3e0]) == 0, and falls through when at(=[0xffffffffa005a3e0]) != 0.
  The `beq` branch at 0xa001fe10 targets 0xa001fdcc and is always taken.
  The return at 0xa001fe00 has v0 = 0x2.

- `getHtpPs` in `sbin/stand/symmon.IP32` at 0xa0020020 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0020020-0xa0020030 (16 bytes).
  It occupies 16 bytes.
  The `lw` at 0xa0020024 loads 4 bytes from abs 0xffffffffa003aa98.
  The `lh` at 0xa002002c loads 2 bytes from [0xffffffffa003aa98] +0x5e.
  The return at 0xa0020028 has v0 = [[0xffffffffa003aa98]+94]:2.

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

- `mace_errputc` in `sbin/stand/symmon.IP32` at 0xa0020ad4 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0020ad4-0xa0020b40 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xa0020ad8 loads 4 bytes from abs 0xffffffffa0058438.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffa003aabc, including `lw` at 0xa0020af4, `lw` at 0xa0020b08.
  2 such `lbu` accesses load 1 byte from [0xffffffffa003aabc] +0x0, including `lbu` at 0xa0020af8, `lbu` at 0xa0020b0c.
  The `lw` at 0xa0020b1c loads 4 bytes from abs 0xffffffffa003aaa8.
  The `sb` at 0xa0020b28 stores 1 byte to [0xffffffffa003aaa8] +0x0.
  The `jal` at 0xa0020b2c calls (unnamed) [0xa00203dc] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xa0020ae4 targets 0xa0020b2c, is taken when at(=[0xffffffffa0058438]) == 0, and falls through when at(=[0xffffffffa0058438]) != 0.
  The `bne` branch at 0xa0020b00 targets 0xa0020b1c, is taken when (v0(=[[0xffffffffa003aabc]]:1) & 0x20) != 0, and falls through when (v0(=[[0xffffffffa003aabc]]:1) & 0x20) == 0.
  The `beq` branch at 0xa0020b14 targets 0xa0020b08, is taken when (a3(=[[0xffffffffa003aabc]]:1) & 0x20) == 0, and falls through when (a3(=[[0xffffffffa003aabc]]:1) & 0x20) != 0.
  The `beq` branch at 0xa0020b38 targets 0xa0020aec and is always taken.
  The return at 0xa0020b24 has v0 = ?.

- `cpu_savecfg` in `sbin/stand/symmon.IP32` at 0xa0020c38 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0020c38-0xa0020c54 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0xa0020c44 calls _errputs [0xa002a79c] with a0=0xffffffffa0036bd0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xa0020c4c targets 0xa0020c4c and is always taken.

- `get_memory` in `sbin/stand/symmon.IP32` at 0xa0020d4c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0020d4c-0xa0020dc0 (116 bytes).
  It occupies 116 bytes.
  The `lbu` at 0xa0020dac loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lhu` at 0xa0020db4 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `lwu` at 0xa0020dbc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jal` at 0xa0020d7c calls mem_error [0xa00215c4] with a0=0xffffffffa0036c08, a1=a1 at entry (arg1), a2=0x8, a3=a3 at entry (arg3).
  The `jal` at 0xa0020d98 calls load_double [0xa0024b38] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x8, a3=a3 at entry (arg3).
  The `beq` branch at 0xa0020d54 targets 0xa0020da8, is taken when a1 == at(=0x1), and falls through when a1 != at(=0x1).
  The `beq` branch at 0xa0020d60 targets 0xa0020db0, is taken when a1 == v0(=0x2), and falls through when a1 != v0(=0x2).
  The `beq` branch at 0xa0020d68 targets 0xa0020db8, is taken when a1 == v1(=0x4), and falls through when a1 != v1(=0x4).
  The `beq` branch at 0xa0020d70 targets 0xa0020d98, is taken when a1 == a2(=0x8), and falls through when a1 != a2(=0x8).
  The `beq` branch at 0xa0020da0 targets 0xa0020d88 and is always taken.
  The `beq` branch at 0xa0020da8 targets 0xa0020d88 and is always taken.
  The `beq` branch at 0xa0020db0 targets 0xa0020d88 and is always taken.
  The `beq` branch at 0xa0020db8 targets 0xa0020d88 and is always taken.
  The return at 0xa0020d90 has v0 = one of 0x0, ret(load_double), [a0]:1, [a0]:2, [a0].

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

- `mem_error` in `sbin/stand/symmon.IP32` at 0xa00215c4 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00215c4-0xa00215e8 (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0xa00215d4 calls printf [0xa002e620] with a0=0xffffffffa0036d30, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa00215e0 has v0 = ret(printf).

- `_r4600sc_disable_scache` in `sbin/stand/symmon.IP32` at 0xa0021600
  **Inferred.** Tests the register t2 at 0xa0021628, 0xa0021634 and 0xa0021640, and on the nonzero path reaches a block at 0xa0021680 that loads a word at 0xa002168c and stores a word at 0xa0021698 before returning at 0xa0021694. The name suggests it turns off the secondary cache on an R4600, but the rendered facts do not resolve the addresses behind the load and store or the meaning of t2, so the cache effect is not derived.
  Reviewed: 2026-11-12

- `_r4600sc_disable_scache` in `sbin/stand/symmon.IP32` at 0xa0021600
  **Inferred.** Tests t2 at 0xa0021628, 0xa0021634 and 0xa0021640, and on the nonzero path reaches a block at 0xa0021680 that loads a word at 0xa002168c, stores a word at 0xa0021698, and returns at 0xa0021694. The name suggests it disables the secondary cache on an R4600, but the rendered facts do not resolve the addresses behind the load and store or what t2 holds.
  Reviewed: 2026-11-12

- `_r4600sc_vtop` in `sbin/stand/symmon.IP32` at 0xa0021840
  **Inferred.** Branches on the sign of a0 at 0xa0021840 and of a0 shifted left by one at 0xa0021848, and on bit 0 of a register at 0xa00218ac, then ends with jumps through a register at 0xa0021854 and 0xa00218dc back to its own entry 0xa0021840. The shape is an address-class dispatch that re-enters itself, which fits a virtual-to-physical lookup by its name. The rendered facts do not show the table or mapping it reads, so the translation rule is not derived.
  Reviewed: 2026-11-12

- `_r4600sc_vtop` in `sbin/stand/symmon.IP32` at 0xa0021840
  **Inferred.** Branches on the sign of a0 at 0xa0021840 and of a0 shifted left by one at 0xa0021848, then tail-jumps through a register at 0xa0021854 and 0xa00218dc back to its own entry 0xa0021840. The self-re-entry with the arguments passed through fits an address-translation lookup, as the name says, but the table and result register are not in the rendered facts.
  Reviewed: 2026-11-12

- `_r4600sc_cache_index` in `sbin/stand/symmon.IP32` at 0xa00218e4
  **Inferred.** A 28-byte stub that sets a7 to the constant 0x9000000000000000 and jumps through a register at 0xa00218f8 back to its own entry 0xa00218e4, passing its arguments unchanged. The name suggests an index-form cache operation, but the rendered facts show no cache instruction, so the operation itself is not derived.
  Reviewed: 2026-11-12

- `_r4600sc_cache_index` in `sbin/stand/symmon.IP32` at 0xa00218e4
  **Inferred.** Passes a0 to a3 at entry through unchanged, sets a7 to the constant 0x9000000000000000 and jumps back to its own entry 0xa00218e4 at 0xa00218f8 (a tail call to itself). Role (from name): forms a cache-index address from its arguments; the facts show neither the index arithmetic nor what the constant is used for.
  Reviewed: 2026-11-12

- `size_2nd_cache` in `sbin/stand/symmon.IP32` at 0xa0023458
  **Inferred.** Tests a value in t0 (its source is not resolved in the facts) at 0xa0023474 through 0xa00234a4, and tests it against the bit mask 0x20000 at 0xa00234bc. It makes a word store at 0xa00234e4 whose base register is not shown, and ends with a tail jump at 0xa00234f0 to sCacheSize when the branch at 0xa00234a4 is taken. A second exit at 0xa00234fc returns 0 or an unresolved value. The facts do not show what the store holds or how a size is computed, so the role (a front end that hands off to sCacheSize) is inferred from the name and the tail jump only.
  Reviewed: 2026-11-12

- `_c_hwb` in `sbin/stand/symmon.IP32` at 0xa0023504
  **Inferred.** Dispatches on a0 with an unsigned compare against 1 at 0xa002350c (taken when a0 is 0), an equality test with 1 at 0xa0023514 and one with 3 at 0xa0023520, and has a single return at 0xa002355c whose value is -1, 0 or unresolved. It is a small mode switch. The name suggests a cache writeback, but the rendered facts show no cache instruction and do not say what each mode does, so the operation is not derived.
  Reviewed: 2026-11-12

- `_c_hwb` in `sbin/stand/symmon.IP32` at 0xa0023504
  **Inferred.** Tests a0 against 0 at 0xa002350c, against 1 at 0xa0023514 and against 3 at 0xa0023520. The routine has one return at 0xa002355c that yields -1, 0 or an unknown value; the facts do not show which test leads to which value. Role (from name): a cache writeback mode switch that returns a status code; the cache operation issued on each path is not in the rendered facts.
  Reviewed: 2026-11-12

- `_c_hwb` in `sbin/stand/symmon.IP32` at 0xa0023504
  **Inferred.** Selects one of three paths on the value in a0: a0 below 0x1 (unsigned) leaves through the bne at 0xa002350c, a0 equal to 0x1 leaves through the beq at 0xa0023514, and a0 equal to 0x3 leaves through the beq at 0xa0023520. Every path joins the exit at 0xa002355c, whose return value is an unknown register, -0x1 or 0x0. The routine makes no calls and writes no memory, so it reads as a pure selector over its argument.
  Reviewed: 2026-11-12

- `_c_hwbinv` in `sbin/stand/symmon.IP32` at 0xa002358c
  **Inferred.** Makes compares like _c_hwb: an unsigned compare against 1 at 0xa0023594, equality tests with 1 at 0xa002359c and 3 at 0xa00235a8, and a single return at 0xa00235e4 whose value is -1, 0 or unresolved. Unlike _c_hwb, the a0 == 3 branch goes to the same target (0xa00235ec) as the a0 < 1 branch. The name suggests writeback followed by invalidate, but the rendered facts contain no cache instruction, so what it does is not derived.
  Reviewed: 2026-11-12

- `_c_hwbinv` in `sbin/stand/symmon.IP32` at 0xa002358c
  **Inferred.** Tests a0 against 0 at 0xa0023594, against 1 at 0xa002359c and against 3 at 0xa00235a8, the same tests as the routine at 0xa0023504. It has one return at 0xa00235e4 that yields -1, 0 or an unknown value; the facts do not show which test leads to which value. Role (from name): writeback and invalidate; the operation on each path is not rendered.
  Reviewed: 2026-11-12

- `_c_hwbinv` in `sbin/stand/symmon.IP32` at 0xa002358c
  **Inferred.** Three compares on a0: below 0x1 (unsigned) at 0xa0023594, equal to 0x1 at 0xa002359c and equal to 0x3 at 0xa00235a8, with the shared exit at 0xa00235e4. Unlike `_c_hwb` at 0xa0023504, whose three compares go to three different targets, here the branches at 0xa0023594 and 0xa00235a8 both go to 0xa00235ec and only a0 equal to 0x1 goes to 0xa00235f4. Its return value is an unknown register, -0x1 or 0x0. Role (from name): the name suggests the inverting counterpart of `_c_hwb`; the facts show only the compare shape above.
  Reviewed: 2026-11-12

- `_c_hinv` in `sbin/stand/symmon.IP32` at 0xa0023604
  **Inferred.** Dispatches on a0 with an unsigned compare against 1 at 0xa002360c and an equality test with 1 at 0xa0023614, and returns through the single exit at 0xa0023650 with 0 or an unknown value. It has no -1 return, which separates it from _c_hwb and _c_hwbinv. The name suggests a cache invalidate, but the rendered facts show no cache instruction, so the operation is not derived.
  Reviewed: 2026-11-12

- `_c_hinv` in `sbin/stand/symmon.IP32` at 0xa0023604
  **Inferred.** Tests a0 against 0 at 0xa002360c and against 1 at 0xa0023614, then the paths join a return at 0xa0023650 that yields 0 or an unknown value. Role (from name): an invalidate-style operation selected by a0; the operation itself is not in the rendered facts.
  Reviewed: 2026-11-12

- `_c_hinv` in `sbin/stand/symmon.IP32` at 0xa0023604
  **Inferred.** Two compares on a0, below 0x1 at 0xa002360c and equal to 0x1 at 0xa0023614, lead to a shared exit at 0xa0023650. Its return value is an unknown register or 0x0, so it has no -0x1 result. It makes no calls, which matches the two sibling checks at 0xa0023504 and 0xa002358c.
  Reviewed: 2026-11-12

- `_c_ilt_n_ecc` in `sbin/stand/symmon.IP32` at 0xa0023678
  **Inferred.** Dispatches on a0 with the same compares against 1 at 0xa0023680 and 0xa0023688 as the other cache-line helpers, makes word stores at 0xa00236d0 and 0xa00236d8 (offset 0 from base registers the facts do not resolve), and returns 0 at 0xa00236d4. The name suggests a line-table read with error-correction handling, which the rendered facts do not show, so the ECC part and the stored values are not derived.
  Reviewed: 2026-11-12

- `_c_ilt_n_ecc` in `sbin/stand/symmon.IP32` at 0xa0023678
  **Inferred.** Tests a0 against 0 at 0xa0023680 (taken when a0 is below 1, unsigned) and against 1 at 0xa0023688. It stores a word at 0xa00236d0, returns 0 at 0xa00236d4 and stores a word at 0xa00236d8; the facts give neither the base registers nor the stored values. Role (from name): reports ECC result words, possibly through out-parameters; this rests on the name alone.
  Reviewed: 2026-11-12

- `_c_ilt` in `sbin/stand/symmon.IP32` at 0xa00236fc
  **Inferred.** Dispatches on a0 with compares against 1 at 0xa0023704 and 0xa002370c, makes one word store at 0xa0023740 (offset 0 from a base register the facts do not resolve), and returns 0 at 0xa0023744. Its shape matches _c_ilt_n_ecc with the second store removed, so the two are probably variants of one read. The name suggests a line-table read, which the rendered facts do not establish.
  Reviewed: 2026-11-12

- `_c_ist` in `sbin/stand/symmon.IP32` at 0xa002376c
  **Inferred.** Loads a word at offset 0 from a base register the facts do not resolve at 0xa0023770, dispatches on a0 with compares against 1 at 0xa0023790 and 0xa0023798, and returns 0 from three exits at 0xa00237b0, 0xa00237c8 and 0xa00237e0. The rendered facts do not show what the loaded word is or means, so the role is not derived.
  Reviewed: 2026-11-12

- `runcached` in `sbin/stand/symmon.IP32` at 0xa0023818
  **Inferred.** A 28-byte stub that jumps through a register at 0xa002382c and passes its four argument registers unchanged to whatever address the register holds. The rendered facts do not resolve that target, so this is a pass-through to a callee chosen at run time. The name suggests it runs a routine in the cached address window, which the facts do not confirm.
  Reviewed: 2026-11-12

- `uncached` in `sbin/stand/symmon.IP32` at 0xa0023834
  **Inferred.** The same 28-byte pass-through as runcached: it jumps through a register at 0xa0023848 and passes its four argument registers unchanged. The name suggests it runs a routine in the uncached window, the counterpart of runcached, but the rendered facts do not resolve the target.
  Reviewed: 2026-11-12

- `flush_cache` in `sbin/stand/symmon.IP32` at 0xa0023994 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0023994-0xa0023a00 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xa00239a4 loads 4 bytes from abs 0xffffffffa005a660.
  The `lw` at 0xa00239bc loads 4 bytes from abs 0xffffffffa005a6f0.
  The `lw` at 0xa00239cc loads 4 bytes from abs 0xffffffffa005a730.
  The `lw` at 0xa00239d8 loads 4 bytes from abs 0xffffffffa005a670.
  The `jal` at 0xa00239e8 calls __cache_wb_inval [0xa0022ba0] with a0=0xffffffff80000000, a1=[one of 0xffffffffa005a660, 0xffffffffa005a670, 0xffffffffa005a730], a2=?, a3=a3 at entry (arg3).
  The `bne` branch at 0xa00239ac targets 0xa00239e8, is taken when a1(=[0xffffffffa005a660]) != 0, and falls through when a1(=[0xffffffffa005a660]) == 0.
  The `bne` branch at 0xa00239c8 targets 0xa00239e8, is taken when a2(=[0xffffffffa005a6f0]) != 0, and falls through when a2(=[0xffffffffa005a6f0]) == 0.
  The `beq` branch at 0xa00239dc targets 0xa00239e8, is taken when a2(=[0xffffffffa005a670]) == 0, and falls through when a2(=[0xffffffffa005a670]) != 0.
  The return at 0xa00239f8 has v0 = ret(__cache_wb_inval).

- `invalidate_sc_line` in `sbin/stand/symmon.IP32` at 0xa0023ac4 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0023ac4-0xa0023b48 (132 bytes).
  It occupies 132 bytes.
  The `beq` branch at 0xa0023ad4 targets 0xa0023b08, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xa0023ae0 targets 0xa0023b08, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xa0023aec targets 0xa0023b08, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xa0023b1c targets 0xa0023b2c, is taken when (t0(?) & at(=0x20000)) == 0, and falls through when (t0(?) & at(=0x20000)) != 0.
  The return at 0xa0023b00 has v0 = ?.
  The return at 0xa0023b24 has v0 = ?.
  The return at 0xa0023b40 has v0 = ?.

- `invalidate_caches` in `sbin/stand/symmon.IP32` at 0xa0023b48 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0023b48-0xa0023bb4 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xa0023b60 loads 4 bytes from abs 0xffffffffa005a640.
  The `lw` at 0xa0023b68 loads 4 bytes from abs 0xffffffffa005a610.
  The `lw` at 0xa0023b7c loads 4 bytes from abs 0xffffffffa005a650.
  The `lw` at 0xa0023b84 loads 4 bytes from abs 0xffffffffa005a620.
  The `lw` at 0xa0023b98 loads 4 bytes from abs 0xffffffffa005a660.
  The `lw` at 0xa0023ba0 loads 4 bytes from abs 0xffffffffa005a630.
  The `jal` at 0xa0023b64 calls invalidate_icache [0xa0023bb4] with a0=[0xffffffffa005a640], a1=[0xffffffffa005a610], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa0023b80 calls invalidate_dcache [0xa0023c3c] with a0=[0xffffffffa005a650], a1=[0xffffffffa005a620], a2=?, a3=?.
  The `jal` at 0xa0023b9c calls invalidate_scache [0xa0023cc4] with a0=[0xffffffffa005a660], a1=[0xffffffffa005a630], a2=?, a3=?.
  The return at 0xa0023bac has v0 = ret(invalidate_scache).

- `invalidate_icache` in `sbin/stand/symmon.IP32` at 0xa0023bb4 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0023bb4-0xa0023c3c (136 bytes).
  It occupies 136 bytes.
  The `beq` branch at 0xa0023be4 targets 0xa0023c20, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0xa0023bec targets 0xa0023c20, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0xa0023bf4 targets 0xa0023c20, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0xa0023c10 targets 0xa0023bfc, is taken when t0(?) < a0(=a0+0xffffffff80000000) (unsigned), and falls through when t0(?) >= a0(=a0+0xffffffff80000000) (unsigned).
  The `bne` branch at 0xa0023c2c targets 0xa0023c20, is taken when t0(?) < a0(=a0+0xffffffff80000000) (unsigned), and falls through when t0(?) >= a0(=a0+0xffffffff80000000) (unsigned).
  The return at 0xa0023c18 has v0 = ?.
  The return at 0xa0023c34 has v0 = ?.

- `invalidate_dcache` in `sbin/stand/symmon.IP32` at 0xa0023c3c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0023c3c-0xa0023cc4 (136 bytes).
  It occupies 136 bytes.
  The `beq` branch at 0xa0023c6c targets 0xa0023ca8, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0xa0023c74 targets 0xa0023ca8, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0xa0023c7c targets 0xa0023ca8, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0xa0023c98 targets 0xa0023c84, is taken when t0(?) < a0(=a0+0xffffffff80000000) (unsigned), and falls through when t0(?) >= a0(=a0+0xffffffff80000000) (unsigned).
  The `bne` branch at 0xa0023cb4 targets 0xa0023ca8, is taken when t0(?) < a0(=a0+0xffffffff80000000) (unsigned), and falls through when t0(?) >= a0(=a0+0xffffffff80000000) (unsigned).
  The return at 0xa0023ca0 has v0 = ?.
  The return at 0xa0023cbc has v0 = ?.

- `iCacheSize` in `sbin/stand/symmon.IP32` at 0xa0023dbc (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0023dbc-0xa0023dd8 (28 bytes).
  It occupies 28 bytes.
  The return at 0xa0023dd0 has v0 = ?.

- `dCacheSize` in `sbin/stand/symmon.IP32` at 0xa0023dd8 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0023dd8-0xa0023df4 (28 bytes).
  It occupies 28 bytes.
  The return at 0xa0023dec has v0 = ?.

- `sLine` in `sbin/stand/symmon.IP32` at 0xa0023ea8 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0023ea8-0xa0023f30 (136 bytes).
  It occupies 136 bytes.
  The `sd` at 0xa0023ec4 stores 8 bytes to a1 (arg1 at entry) +0x0.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xa0023eec, `sw` at 0xa0023ef4, `sw` at 0xa0023f08.
  The `sh` at 0xa0023efc stores 2 bytes to ?.
  The `jal` at 0xa0023ecc calls sCacheSize [0xa0023d7c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgtz` branch at 0xa0023f20 targets 0xa0023ee4, is taken when v0(?) > 0 (signed), and falls through when v0(?) <= 0 (signed).
  The return at 0xa0023f28 has v0 = ?.

- `init_cfgtree` in `sbin/stand/symmon.IP32` at 0xa0024084 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0024084-0xa0024128 (164 bytes).
  It occupies 164 bytes.
  2 such `sw` accesses store 4 bytes to abs 0xffffffffa0058c78, including `sw` at 0xa0024098, `sw` at 0xa00240c0.
  2 such `sw` accesses store 4 bytes to abs 0xffffffffa0058c7c, including `sw` at 0xa00240a4, `sw` at 0xa00240d4.
  The `sw` at 0xa00240b0 stores 4 bytes to abs 0xffffffffa0058c88.
  The `sw` at 0xa00240b8 stores 4 bytes to abs 0xffffffffa0058c8c.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffa0058c78, including `lw` at 0xa00240bc, `lw` at 0xa002410c.
  2 such `sw` accesses store 4 bytes to abs 0xffffffffa0058c80, including `sw` at 0xa00240c4, `sw` at 0xa00240f4.
  The `lw` at 0xa00240d0 loads 4 bytes from abs 0xffffffffa0058c7c.
  The `sw` at 0xa00240dc stores 4 bytes to abs 0xffffffffa0058c84.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xa00240e0, `lw` at 0xa00240ec, `lw` at 0xa00240f0.
  The `lw` at 0xa0024100 loads 4 bytes from abs 0xffffffffa0058c80.
  The `lw` at 0xa0024108 loads 4 bytes from [0xffffffffa0058c80] +0x8.
  The `jal` at 0xa00240a0 calls cpu_makecfgroot [0xa0027b68] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa00240b4 calls (unnamed) [0xa0024594] with a0=0x1, a1=ret(cpu_makecfgroot), a2=?, a3=?.
  The `jalr` at 0xa00240e8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa00240f8 calls free [0xa002fd18] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xa00240d8 targets 0xa0024110, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bnel` branch at 0xa0024104 targets 0xa00240e4, is taken when a2(=[0xffffffffa0058c80]) != 0, and falls through when a2(=[0xffffffffa0058c80]) == 0; its branch-likely delay slot `lw t9,8(a2)` at 0xa0024108 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xa0024110 targets 0xa00240c0, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The return at 0xa0024120 has v0 = ?.

- `RegisterDriverStrategy` in `sbin/stand/symmon.IP32` at 0xa0024128 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0024128-0xa0024134 (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0xa0024128 stores 4 bytes to a0 (arg0 at entry) +0x30.
  The return at 0xa002412c has v0 = 0x0.

- `RegisterInstall` in `sbin/stand/symmon.IP32` at 0xa0024134 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0024134-0xa00241c0 (140 bytes).
  It occupies 140 bytes.
  2 such `sw` accesses store 4 bytes to ret(malloc) +0x0, including `sw` at 0xa0024160, `sw` at 0xa00241bc.
  The `sw` at 0xa0024168 stores 4 bytes to ret(malloc) +0x8.
  The `sw` at 0xa002416c stores 4 bytes to ret(malloc) +0x4.
  The `lw` at 0xa0024174 loads 4 bytes from abs 0xffffffffa0058c78.
  The `sw` at 0xa002418c stores 4 bytes to abs 0xffffffffa0058c78.
  The `lw` at 0xa0024190 loads 4 bytes from abs 0xffffffffa0058c7c.
  The `sw` at 0xa0024194 stores 4 bytes to [0xffffffffa0058c7c] +0x4.
  The `sw` at 0xa002419c stores 4 bytes to abs 0xffffffffa0058c7c.
  The `jal` at 0xa0024150 calls malloc [0xa002fb10] with a0=0xc, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa00241b0 calls panic [0xa002af8c] with a0=0xffffffffa0036d60, a1=?, a2=?, a3=?.
  The `beq` branch at 0xa0024158 targets 0xa00241ac, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `bne` branch at 0xa0024180 targets 0xa0024190, is taken when at(=[0xffffffffa0058c78]) != 0, and falls through when at(=[0xffffffffa0058c78]) == 0.
  The `beq` branch at 0xa0024188 targets 0xa0024198 and is always taken.
  The `beq` branch at 0xa00241b8 targets 0xa0024164 and is always taken.
  The return at 0xa00241a4 has v0 = 0x0.

- `GetChild` in `sbin/stand/symmon.IP32` at 0xa00241c8 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00241c8-0xa00241e4 (28 bytes).
  It occupies 28 bytes.
  The `lw` at 0xa00241d4 loads 4 bytes from abs 0xffffffffa0058c8c.
  The `lw` at 0xa00241d8 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `bne` branch at 0xa00241c8 targets 0xa00241d8, is taken when a0 != 0, and falls through when a0 == 0.
  The return at 0xa00241d0 has v0 = [0xffffffffa0058c8c].
  The return at 0xa00241dc has v0 = [a0+44].

- `SaveConfiguration` in `sbin/stand/symmon.IP32` at 0xa0024578 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0024578-0xa0024594 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0xa0024580 calls cpu_savecfg [0xa0020c38] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa002458c has v0 = ret(cpu_savecfg).

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

- `get_pgmask` in `sbin/stand/symmon.IP32` at 0xa002474c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002474c-0xa002475c (16 bytes).
  It occupies 16 bytes.
  The return at 0xa0024754 has v0 = ?.

- `get_tlbpid` in `sbin/stand/symmon.IP32` at 0xa00247b0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00247b0-0xa00247c8 (24 bytes).
  It occupies 24 bytes.
  The return at 0xa00247c0 has v0 = table(0x0).

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

- `issig` in `sbin/stand/symmon.IP32` at 0xa0024a1c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0024a1c-0xa0024a48 (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0xa0024a2c loads 4 bytes from abs 0xffffffffa0058ce0.
  The `jal` at 0xa0024a28 calls ffs [0xa0024a90] with a0=[0xffffffffa0058ce0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `blez` branch at 0xa0024a30 targets 0xa0024a40, is taken when v0(=ret(ffs)) <= 0 (signed), and falls through when v0(=ret(ffs)) > 0 (signed).
  The `beq` branch at 0xa0024a40 targets 0xa0024a38 and is always taken.
  The return at 0xa0024a38 has v0 = one of ret(ffs), 0x0.

- `r4k_getconfig` in `sbin/stand/symmon.IP32` at 0xa0024b00 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0024b00-0xa0024b10 (16 bytes).
  It occupies 16 bytes.
  The return at 0xa0024b08 has v0 = ?.

- `r4k_getprid` in `sbin/stand/symmon.IP32` at 0xa0024b10 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0024b10-0xa0024b24 (20 bytes).
  It occupies 20 bytes.
  The return at 0xa0024b1c has v0 = ?.

- `r4k_get_fpirr` in `sbin/stand/symmon.IP32` at 0xa0024b24 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0024b24-0xa0024b38 (20 bytes).
  It occupies 20 bytes.
  The return at 0xa0024b30 has v0 = ?.

- `load_double` in `sbin/stand/symmon.IP32` at 0xa0024b38 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0024b38-0xa0024b40 (8 bytes).
  It occupies 8 bytes.
  The `ld` at 0xa0024b3c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The return at 0xa0024b38 has v0 = [a0]:8.

- `set_watchlo` in `sbin/stand/symmon.IP32` at 0xa0024bf0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0024bf0-0xa0024c70 (128 bytes).
  It occupies 128 bytes.
  The `beq` branch at 0xa0024c0c targets 0xa0024c30, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xa0024c18 targets 0xa0024c30, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xa0024c20 targets 0xa0024c30, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xa0024c28 targets 0xa0024c38, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The return at 0xa0024c30 has v0 = ?.
  The return at 0xa0024c68 has v0 = ?.

- `set_watchhi` in `sbin/stand/symmon.IP32` at 0xa0024c70 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0024c70-0xa0024ce4 (116 bytes).
  It occupies 116 bytes.
  The `beq` branch at 0xa0024c8c targets 0xa0024cb0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xa0024c98 targets 0xa0024cb0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xa0024ca0 targets 0xa0024cb0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xa0024ca8 targets 0xa0024cb8, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The return at 0xa0024cb0 has v0 = ?.
  The return at 0xa0024cdc has v0 = ?.

- `atomicAddInt` in `sbin/stand/symmon.IP32` at 0xa0024ce4 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0024ce4-0xa0024d80 (156 bytes).
  It occupies 156 bytes.
  The `ll` at 0xa0024ce4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0xa0024cec stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0xa0024d70 targets 0xa0024ce4, is taken when t1(=([a0] + a1)) == 0, and falls through when t1(=([a0] + a1)) != 0.
  The return at 0xa0024d78 has v0 = ([a0] + a1).

- `_init_alarm` in `sbin/stand/symmon.IP32` at 0xa0024d80 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0024d80-0xa0024d8c (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0xa0024d88 stores 4 bytes to abs 0xffffffffa0058ce8.
  The return at 0xa0024d84 has v0 = ?.

- `alarm` in `sbin/stand/symmon.IP32` at 0xa0024d8c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0024d8c-0xa0024dfc (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xa0024da8 loads 4 bytes from abs 0xffffffffa0058ce8.
  The `lw` at 0xa0024db4 loads 4 bytes from abs 0xffffffffa0058ce4.
  The `sw` at 0xa0024de4 stores 4 bytes to abs 0xffffffffa0058ce8.
  The `sw` at 0xa0024df8 stores 4 bytes to abs 0xffffffffa0058ce4.
  The `jal` at 0xa0024d98 calls GetRelativeTime [0xa002adc8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa0024dbc calls _max [0xa002f908] with a0=?, a1=0x1, a2=?, a3=?, a4=0xffffffffa0060000, a5=0xffffffffa0058ce4.
  The `beq` branch at 0xa0024dac targets 0xa0024dd4, is taken when at(=[0xffffffffa0058ce8]) == 0, and falls through when at(=[0xffffffffa0058ce8]) != 0.
  The `beq` branch at 0xa0024dcc targets 0xa0024dd8 and is always taken.
  The return at 0xa0024df4 has v0 = one of ret(_max), 0x0.

- `Close` in `sbin/stand/symmon.IP32` at 0xa00255a0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00255a0-0xa002564c (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0xa00255bc loads 4 bytes from ret(get_eiob) +0x2c.
  The `lw` at 0xa00255c8 loads 4 bytes from ret(get_eiob) +0x58.
  The `sw` at 0xa00255e4 stores 4 bytes to ret(get_eiob) +0x38.
  The `lw` at 0xa00255f0 loads 4 bytes from ret(get_eiob) +0x30.
  The `lw` at 0xa00255f8 loads 4 bytes from ret(get_eiob) +0x34.
  The `sw` at 0xa0025600 stores 4 bytes to ret(get_eiob) +0x0.
  The `lw` at 0xa0025610 loads 4 bytes from ret(get_eiob) +0x20.
  The `jal` at 0xa00255ac calls get_eiob [0xa0026e48] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xa00255e0 calls (unknown callee) with a0=ret(get_eiob)+56, a1=?, a2=?, a3=?, a4=0x2.
  The `jalr` at 0xa00255fc calls (unknown callee) with a0=[ret(get_eiob)+52], a1=ret(get_eiob), a2=[ret(get_eiob)+48], a3=?, a4=0x2.
  The `jal` at 0xa002561c calls free_eiob [0xa0026e78] with a0=ret(get_eiob), a1=?, a2=?, a3=?.
  The `beq` branch at 0xa00255b4 targets 0xa002563c, is taken when v0(=ret(get_eiob)) == 0, and falls through when v0(=ret(get_eiob)) != 0.
  The `beq` branch at 0xa00255c0 targets 0xa002563c, is taken when at(=[ret(get_eiob)+44]) == 0, and falls through when at(=[ret(get_eiob)+44]) != 0.
  The `beq` branch at 0xa00255d0 targets 0xa00255f0, is taken when v0(=[ret(get_eiob)+88]) == 0, and falls through when v0(=[ret(get_eiob)+88]) != 0.
  The `beq` branch at 0xa0025608 targets 0xa002561c, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0xa0025614 targets 0xa0025644, is taken when s1(=[ret(get_eiob)+32]) == 0, and falls through when s1(=[ret(get_eiob)+32]) != 0.
  The `beq` branch at 0xa002563c targets 0xa0025624 and is always taken.
  The `beq` branch at 0xa0025644 targets 0xa002561c and is always taken.
  The return at 0xa0025634 has v0 = one of ?, 0x4.

- `GetTime` in `sbin/stand/symmon.IP32` at 0xa00257b0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00257b0-0xa00257e0 (48 bytes).
  It occupies 48 bytes.
  The `jal` at 0xa00257c0 calls cpu_get_tod [0xa002a0c0] with a0=0xffffffffa0058d00, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa00257d8 has v0 = 0xffffffffa0058d00.

- `_init_systemid` in `sbin/stand/symmon.IP32` at 0xa00257e0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00257e0-0xa0025874 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xa00257fc loads 4 bytes from abs 0xffffffffa0036e80.
  The `sw` at 0xa0025808 stores 4 bytes to abs 0xffffffffa0058cf0.
  The `lbu` at 0xa0025828 loads 1 byte from ret(getenv) +0x6.
  The `sb` at 0xa0025830 stores 1 byte to abs 0xffffffffa0058cf8.
  The `lbu` at 0xa0025834 loads 1 byte from ret(getenv) +0x7.
  The `sb` at 0xa0025838 stores 1 byte to abs 0xffffffffa0058cf9.
  The `lbu` at 0xa002583c loads 1 byte from ret(getenv) +0x9.
  The `sb` at 0xa0025840 stores 1 byte to abs 0xffffffffa0058cfa.
  The `lbu` at 0xa0025844 loads 1 byte from ret(getenv) +0xa.
  The `sb` at 0xa0025848 stores 1 byte to abs 0xffffffffa0058cfb.
  The `lbu` at 0xa002584c loads 1 byte from ret(getenv) +0xc.
  The `sb` at 0xa0025850 stores 1 byte to abs 0xffffffffa0058cfc.
  The `lbu` at 0xa0025854 loads 1 byte from ret(getenv) +0xd.
  The `sb` at 0xa0025858 stores 1 byte to abs 0xffffffffa0058cfd.
  The `lbu` at 0xa002585c loads 1 byte from ret(getenv) +0xf.
  The `sb` at 0xa0025860 stores 1 byte to abs 0xffffffffa0058cfe.
  The `lbu` at 0xa0025864 loads 1 byte from ret(getenv) +0x10.
  The `sb` at 0xa0025868 stores 1 byte to abs 0xffffffffa0058cff.
  The `jal` at 0xa0025804 calls bzero [0xa002cfa8] with a0=0xffffffffa0058cf8, a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa0025814 calls getenv [0xa002ba5c] with a0=0xffffffffa0036e88, a1=?, a2=?, a3=?.
  The `beq` branch at 0xa002581c targets 0xa002586c, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The return at 0xa002586c has v0 = ret(getenv).

- `GetSystemId` in `sbin/stand/symmon.IP32` at 0xa0025874 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0025874-0xa0025880 (12 bytes).
  It occupies 12 bytes.
  The return at 0xa0025878 has v0 = 0xffffffffa0058cf0.

- `Mount` in `sbin/stand/symmon.IP32` at 0xa0025938 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0025938-0xa00259d4 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xa0025988 loads 4 bytes from ret(new_eiob) +0x34.
  The `lw` at 0xa0025990 loads 4 bytes from ret(new_eiob) +0x30.
  The `sw` at 0xa0025998 stores 4 bytes to ret(new_eiob) +0x0.
  The `sw` at 0xa00259a0 stores 4 bytes to ret(new_eiob) +0x10.
  The `lw` at 0xa00259ac loads 4 bytes from ret(new_eiob) +0x20.
  The `jal` at 0xa0025948 calls new_eiob [0xa0026db0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa002595c calls parse_path [0xa0026048] with a0=a0 at entry (arg0), a1=ret(new_eiob), a2=?, a3=?.
  The `jal` at 0xa002596c calls free_eiob [0xa0026e78] with a0=ret(new_eiob), a1=ret(new_eiob), a2=?, a3=?.
  The `jalr` at 0xa002599c calls (unknown callee) with a0=[ret(new_eiob)+52], a1=ret(new_eiob), a2=?, a3=?.
  The `jal` at 0xa00259b4 calls free_eiob [0xa0026e78] with a0=ret(new_eiob), a1=?, a2=?, a3=?.
  The `beq` branch at 0xa0025950 targets 0xa00259c4, is taken when v0(=ret(new_eiob)) == 0, and falls through when v0(=ret(new_eiob)) != 0.
  The `beq` branch at 0xa0025964 targets 0xa0025988, is taken when v0(=ret(parse_path)) == 0, and falls through when v0(=ret(parse_path)) != 0.
  The `beq` branch at 0xa00259a4 targets 0xa00259cc, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0xa00259bc targets 0xa0025978 and is always taken.
  The `beq` branch at 0xa00259c4 targets 0xa0025978 and is always taken.
  The `beq` branch at 0xa00259cc targets 0xa00259b4 and is always taken.
  The return at 0xa0025980 has v0 = one of 0x7, ?, 0xa.

- `SetEnvironmentVariable` in `sbin/stand/symmon.IP32` at 0xa00259d4 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00259d4-0xa00259f0 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0xa00259dc calls _setenv [0xa001bef4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x0, a3=a3 at entry (arg3).
  The return at 0xa00259e8 has v0 = ret(_setenv).

- `GetEnvironmentVariable` in `sbin/stand/symmon.IP32` at 0xa00259f0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00259f0-0xa0025a0c (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0xa00259f8 calls getenv [0xa002ba5c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa0025a04 has v0 = ret(getenv).

- `GetFileInformation` in `sbin/stand/symmon.IP32` at 0xa0025a0c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0025a0c-0xa0025aa8 (156 bytes).
  It occupies 156 bytes.
  The `sw` at 0xa0025a30 stores 4 bytes to ret(get_eiob) +0x20.
  The `lw` at 0xa0025a38 loads 4 bytes from ret(get_eiob) +0x58.
  The `sw` at 0xa0025a40 stores 4 bytes to ret(get_eiob) +0x10.
  The `sw` at 0xa0025a48 stores 4 bytes to ret(get_eiob) +0xc.
  The `sw` at 0xa0025a58 stores 4 bytes to ret(get_eiob) +0x38.
  2 such `lw` accesses load 4 bytes from ret(get_eiob) +0x20, including `lw` at 0xa0025a64, `lw` at 0xa0025a9c.
  The `lw` at 0xa0025a84 loads 4 bytes from ret(get_eiob) +0x30.
  The `lw` at 0xa0025a88 loads 4 bytes from ret(get_eiob) +0x34.
  The `sw` at 0xa0025a94 stores 4 bytes to ret(get_eiob) +0x0.
  The `jal` at 0xa0025a18 calls get_eiob [0xa0026e48] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa0025a28 calls _scandevs [0xa0026cd8] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xa0025a54 calls (unknown callee) with a0=ret(get_eiob)+56, a1=0x7, a2=?, a3=?.
  The `jalr` at 0xa0025a90 calls (unknown callee) with a0=[ret(get_eiob)+52], a1=ret(get_eiob), a2=0x11, a3=[ret(get_eiob)+48].
  The `beq` branch at 0xa0025a20 targets 0xa0025a78, is taken when v0(=ret(get_eiob)) == 0, and falls through when v0(=ret(get_eiob)) != 0.
  The `beq` branch at 0xa0025a44 targets 0xa0025a80, is taken when v0(=[ret(get_eiob)+88]) == 0, and falls through when v0(=[ret(get_eiob)+88]) != 0.
  The `beq` branch at 0xa0025a5c targets 0xa0025aa0, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0xa0025a78 targets 0xa0025a68 and is always taken.
  The `bnel` branch at 0xa0025a98 targets 0xa0025a68, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0; its branch-likely delay slot `lw v0,32(s0)` at 0xa0025a9c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa0025aa0 targets 0xa0025a68 and is always taken.
  The return at 0xa0025a70 has v0 = one of [ret(get_eiob)+32], 0x4, 0x0.

- `SetFileInformation` in `sbin/stand/symmon.IP32` at 0xa0025aa8 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0025aa8-0xa0025ac8 (32 bytes).
  It occupies 32 bytes.
  The `jal` at 0xa0025ab0 calls _scandevs [0xa0026cd8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa0025ac0 has v0 = 0x7.

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
  The `jalr` at 0xa0025e50 calls (unknown callee) with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=ret(index), a3=?.
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

- `fs_register` in `sbin/stand/symmon.IP32` at 0xa0026388 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0026388-0xa0026420 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xa00263ec loads 4 bytes from abs 0xffffffffa0058d14.
  The `sw` at 0xa00263f0 stores 4 bytes to abs 0xffffffffa0058d14.
  The `sw` at 0xa00263f4 stores 4 bytes to ret(malloc) +0x4.
  The `sw` at 0xa00263f8 stores 4 bytes to ret(malloc) +0x0.
  The `sw` at 0xa00263fc stores 4 bytes to ret(malloc) +0x1c.
  The `jal` at 0xa00263a4 calls malloc [0xa002fb10] with a0=0x20, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa00263b4 calls strlen [0xa00309ac] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0xa00263c8 calls free [0xa002fd18] with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jal` at 0xa00263d8 calls strcpy [0xa0030978] with a0=ret(malloc)+8, a1=a1 at entry (arg1), a2=?, a3=?.
  The `beq` branch at 0xa00263ac targets 0xa0026418, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `bne` branch at 0xa00263c0 targets 0xa00263d8, is taken when v0(=ret(strlen)) < 0x11 (unsigned), and falls through when v0(=ret(strlen)) >= 0x11 (unsigned).
  The `beq` branch at 0xa00263d0 targets 0xa0026404 and is always taken.
  The `beq` branch at 0xa0026418 targets 0xa0026404 and is always taken.
  The return at 0xa0026410 has v0 = one of 0x0, 0xc, 0x10.

- `fs_unregister` in `sbin/stand/symmon.IP32` at 0xa0026420 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0026420-0xa00264c8 (168 bytes).
  It occupies 168 bytes.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffa0058d14, including `lw` at 0xa002643c, `lw` at 0xa002647c.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xa0026468, `lw` at 0xa0026484.
  The `sw` at 0xa002648c stores 4 bytes to abs 0xffffffffa0058d14.
  The `sw` at 0xa0026490 stores 4 bytes to ?.
  The `jal` at 0xa0026458 calls strcmp [0xa0030938] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0xa0026494 calls free [0xa002fd18] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xa002644c targets 0xa0026478, is taken when at(=[0xffffffffa0058d14]) == 0, and falls through when at(=[0xffffffffa0058d14]) != 0.
  The `beq` branch at 0xa0026460 targets 0xa0026478, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `bne` branch at 0xa0026470 targets 0xa0026454, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0xa0026478 targets 0xa00264bc, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0xa0026480 targets 0xa0026490, is taken when t9(=[0xffffffffa0058d14]) != s0(?), and falls through when t9(=[0xffffffffa0058d14]) == s0(?).
  The `beq` branch at 0xa0026488 targets 0xa0026494 and is always taken.
  The `beq` branch at 0xa00264c0 targets 0xa00264a4 and is always taken.
  The return at 0xa00264b4 has v0 = one of 0x0, 0x7.

- `fs_match` in `sbin/stand/symmon.IP32` at 0xa00265bc (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00265bc-0xa002664c (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xa00265d8 loads 4 bytes from abs 0xffffffffa0058d14.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xa0026608, `lw` at 0xa0026640, `lw` at 0xa0026648.
  The `jal` at 0xa00265f8 calls strncmp [0xa0030d60] with a0=a0 at entry (arg0), a1=?, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0xa0026634 calls strlen [0xa00309ac] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xa00265e4 targets 0xa0026614, is taken when at(=[0xffffffffa0058d14]) == 0, and falls through when at(=[0xffffffffa0058d14]) != 0.
  The `beq` branch at 0xa0026600 targets 0xa0026634, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `bne` branch at 0xa002660c targets 0xa00265f0, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `bnel` branch at 0xa002663c targets 0xa002660c, is taken when s1(=a1) != v0(=ret(strlen)), and falls through when s1(=a1) == v0(=ret(strlen)); its branch-likely delay slot `lw s0,28(s0)` at 0xa0026640 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa0026644 targets 0xa0026618 and is always taken.
  The return at 0xa002662c has v0 = one of 0x0, ?.

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

- `_free_iobbuf` in `sbin/stand/symmon.IP32` at 0xa0026b84 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0026b84-0xa0026ba0 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0xa0026b8c calls dmabuf_free [0xa002ffe8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa0026b98 has v0 = ret(dmabuf_free).

- `new_eiob` in `sbin/stand/symmon.IP32` at 0xa0026db0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0026db0-0xa0026e48 (152 bytes).
  It occupies 152 bytes.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xa0026dd0, `lw` at 0xa0026e38, `lw` at 0xa0026e44.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xa0026e08, `sw` at 0xa0026e3c.
  The `jal` at 0xa0026df0 calls malloc [0xa002fb10] with a0=0x64, a1=?, a2=0x14, a3=a3 at entry (arg3).
  The `jal` at 0xa0026e30 calls bzero [0xa002cfa8] with a0=ret(malloc), a1=0x64, a2=?, a3=?.
  The `beq` branch at 0xa0026dd4 targets 0xa0026de4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xa0026ddc targets 0xa0026dd0, is taken when s0(?) != v0(=0xffffffffa0058d78), and falls through when s0(?) == v0(=0xffffffffa0058d78).
  The `beq` branch at 0xa0026de8 targets 0xa0026e14, is taken when s1(?) == a2(=0x14), and falls through when s1(?) != a2(=0x14).
  The `bne` branch at 0xa0026e0c targets 0xa0026e2c, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xa0026e40 targets 0xa0026e18 and is always taken.
  The return at 0xa0026e24 has v0 = one of 0x0, ?.

- `get_eiob` in `sbin/stand/symmon.IP32` at 0xa0026e48 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0026e48-0xa0026e78 (48 bytes).
  It occupies 48 bytes.
  The `lw` at 0xa0026e6c loads 4 bytes from (a0 << 0x2) -0x5ffa72d8.
  The `bne` branch at 0xa0026e4c targets 0xa0026e60, is taken when a0 < 0x14 (unsigned), and falls through when a0 >= 0x14 (unsigned).
  The return at 0xa0026e58 has v0 = 0x0.
  The return at 0xa0026e70 has v0 = [(a0 << 0x2)-1610248920].

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

- `_init_spb` in `sbin/stand/symmon.IP32` at 0xa00271fc (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00271fc-0xa0027294 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xa0027200 loads 4 bytes from abs 0xffffffffa005a3e0.
  The `sw` at 0xa002725c stores 4 bytes to abs 0xffffffffa0001024.
  The `sw` at 0xa0027260 stores 4 bytes to abs 0xffffffffa000101c.
  The `sw` at 0xa002727c stores 4 bytes to abs 0xffffffffa0001028.
  The `sw` at 0xa0027280 stores 4 bytes to abs 0xffffffffa0001020.
  The `sw` at 0xa0027284 stores 4 bytes to abs 0xffffffffa0001018.
  The `sw` at 0xa0027288 stores 4 bytes to abs 0xffffffffa0001014.
  The `jal` at 0xa0027220 calls bcopy [0xa002ca40] with a0=0xffffffffa003bf28, a1=0xffffffffa0001800, a2=0x8c, a3=a3 at entry (arg3).
  The `jal` at 0xa002723c calls bcopy [0xa002ca40] with a0=0xffffffffa003bfb8, a1=0xffffffffa0001c00, a2=0x48, a3=?.
  The `jal` at 0xa0027244 calls (unnamed) [0xa00271ac] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xa0027208 targets 0xa002728c, is taken when at(=[0xffffffffa005a3e0]) == 0, and falls through when at(=[0xffffffffa005a3e0]) != 0.
  The return at 0xa002728c has v0 = one of ?, ret(0xa00271ac).

- `cpu_errputc` in `sbin/stand/symmon.IP32` at 0xa0027294 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0027294-0xa00272b0 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0xa002729c calls mace_errputc [0xa0020ad4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa00272a8 has v0 = ret(mace_errputc).

- `cpu_get_disp_str` in `sbin/stand/symmon.IP32` at 0xa00272e4 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00272e4-0xa00272f0 (12 bytes).
  It occupies 12 bytes.
  The return at 0xa00272e8 has v0 = 0xffffffffa0037188.

- `cpu_get_serial` in `sbin/stand/symmon.IP32` at 0xa00272f0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00272f0-0xa00272fc (12 bytes).
  It occupies 12 bytes.
  The return at 0xa00272f4 has v0 = 0xffffffffa0037190.

- `cpu_get_kbd_str` in `sbin/stand/symmon.IP32` at 0xa00272fc (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00272fc-0xa0027308 (12 bytes).
  It occupies 12 bytes.
  The return at 0xa0027300 has v0 = 0xffffffffa00371a0.

- `cpu_get_mouse` in `sbin/stand/symmon.IP32` at 0xa0027308 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0027308-0xa0027314 (12 bytes).
  It occupies 12 bytes.
  The return at 0xa002730c has v0 = 0xffffffffa00371b0.

- `htoa` in `sbin/stand/symmon.IP32` at 0xa0027350 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0027350-0xa0027374 (36 bytes).
  It occupies 36 bytes.
  The `bne` branch at 0xa0027354 targets 0xa0027364, is taken when a0 < 0xa (signed), and falls through when a0 >= 0xa (signed).
  The return at 0xa002735c has v0 = ?.
  The return at 0xa002736c has v0 = ?.

- `cpu_get_eaddr_str` in `sbin/stand/symmon.IP32` at 0xa0027374 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0027374-0xa0027410 (156 bytes).
  It occupies 156 bytes.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xa00273a4, `lbu` at 0xa00273c0.
  3 such `sb` accesses store 1 byte to ?, including `sb` at 0xa00273bc, `sb` at 0xa00273e0, `sb` at 0xa00273e8.
  The `jal` at 0xa0027390 calls ds2502_get_eaddr [0xa0028de4] with a0=sp-48, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa00273b4 calls htoa [0xa0027350] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa00273cc calls htoa [0xa0027350] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xa00273dc targets 0xa00273ec, is taken when s0(?) >= s2(=a0+15) (signed), and falls through when s0(?) < s2(=a0+15) (signed).
  The `bne` branch at 0xa00273ec targets 0xa00273a4, is taken when s1(?) != s3(=sp-42), and falls through when s1(?) == s3(=sp-42).
  The return at 0xa0027408 has v0 = ret(htoa).

- `cpu_hardreset` in `sbin/stand/symmon.IP32` at 0xa0027410 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0027410-0xa0027438 (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0xa0027418 calls crm_hardreset [0xa00285b8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa0027424 calls panic [0xa002af8c] with a0=0xffffffffa00371c0, a1=?, a2=?, a3=?.
  The return at 0xa0027430 has v0 = ret(panic).

- `cpu_softreset` in `sbin/stand/symmon.IP32` at 0xa0027438 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0027438-0xa0027460 (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0xa0027440 calls crm_softreset [0xa002859c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa002744c calls panic [0xa002af8c] with a0=0xffffffffa00371e8, a1=?, a2=?, a3=?.
  The return at 0xa0027458 has v0 = ret(panic).

- `cpu_rtcinit` in `sbin/stand/symmon.IP32` at 0xa0027468 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0027468-0xa00274e8 (128 bytes).
  It occupies 128 bytes.
  2 such `lbu` accesses load 1 byte from abs 0xffffffffbf3a0a07, including `lbu` at 0xa0027470, `lbu` at 0xa00274bc.
  2 such `sb` accesses store 1 byte to abs 0xffffffffbf3a0a07, including `sb` at 0xa0027488, `sb` at 0xa00274cc.
  2 such `lbu` accesses load 1 byte from abs 0xffffffffbf3a4b07, including `lbu` at 0xa0027490, `lbu` at 0xa00274a0.
  2 such `sb` accesses store 1 byte to abs 0xffffffffbf3a4b07, including `sb` at 0xa002749c, `sb` at 0xa00274a8.
  The `lbu` at 0xa00274ac loads 1 byte from abs 0xffffffffbf3a4a07.
  The `sb` at 0xa00274b8 stores 1 byte to abs 0xffffffffbf3a4a07.
  The `sw` at 0xa00274e4 stores 4 bytes to abs 0xffffffffa003c004.
  The `jal` at 0xa0027484 calls flushbus [0xa0028520] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa00274c8 calls flushbus [0xa0028520] with a0=?, a1=?, a2=-0x11, a3=0xffffffffbf3a0000, a4=-0x4, a5=([0xffffffffbf3a4b07]:1 | 0x81), a7=-0x3.
  The return at 0xa00274e0 has v0 = ret(flushbus).

- `cpu_scandevs` in `sbin/stand/symmon.IP32` at 0xa00275ec (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00275ec-0xa0027690 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xa00275f0 loads 4 bytes from abs 0xffffffffa003c004.
  The `lbu` at 0xa0027604 loads 1 byte from abs 0xffffffffbf3a0c07.
  2 such `lbu` accesses load 1 byte from abs 0xffffffffbf3a0a07, including `lbu` at 0xa0027614, `lbu` at 0xa002763c.
  2 such `sb` accesses store 1 byte to abs 0xffffffffbf3a0a07, including `sb` at 0xa0027620, `sb` at 0xa0027650.
  2 such `lbu` accesses load 1 byte from abs 0xffffffffbf3a4a07, including `lbu` at 0xa0027628, `lbu` at 0xa002762c.
  The `sb` at 0xa0027638 stores 1 byte to abs 0xffffffffbf3a4a07.
  The `lw` at 0xa002767c loads 4 bytes from abs 0xffffffffa005a3e0.
  The `jal` at 0xa002761c calls flushbus [0xa0028520] with a0=a0 at entry (arg0), a1=0xffffffffbf3a0000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa002764c calls flushbus [0xa0028520] with a0=?, a1=?, a2=-0x11, a3=0xffffffffbf3a0000, a4=-0x4, a5=[0xffffffffbf3a4a07]:1.
  The `jal` at 0xa0027664 calls cpu_powerdown [0xa00274e8] with a0=0x0, a1=?, a2=?, a3=?.
  The `beq` branch at 0xa00275f8 targets 0xa0027678, is taken when at(=[0xffffffffa003c004]) == 0, and falls through when at(=[0xffffffffa003c004]) != 0.
  The `beq` branch at 0xa002760c targets 0xa0027670, is taken when (v0(=[0xffffffffbf3a0c07]:1) & 0x80) == 0, and falls through when (v0(=[0xffffffffbf3a0c07]:1) & 0x80) != 0.
  The `beq` branch at 0xa002765c targets 0xa0027670, is taken when (a6(=[0xffffffffbf3a4a07]:1) & 0x1) == 0, and falls through when (a6(=[0xffffffffbf3a4a07]:1) & 0x1) != 0.
  The `bne` branch at 0xa0027680 targets 0xa0027670, is taken when a7(=[0xffffffffa005a3e0]) != 0, and falls through when a7(=[0xffffffffa005a3e0]) == 0.
  The `beq` branch at 0xa0027688 targets 0xa0027604 and is always taken.
  The return at 0xa0027670 has v0 = one of ?, ret(flushbus), ret(cpu_powerdown).

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

- `ip32_set_cpuled` in `sbin/stand/symmon.IP32` at 0xa0028004 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0028004-0xa0028028 (36 bytes).
  It occupies 36 bytes.
  The `ld` at 0xa002800c loads 8 bytes from abs 0xffffffffbf310008.
  The `sd` at 0xa0028024 stores 8 bytes to abs 0xffffffffbf310008.
  The return at 0xa0028020 has v0 = 0xffffffffbf310000.

- `is_protected_adrs` in `sbin/stand/symmon.IP32` at 0xa0028028 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0028028-0xa0028058 (48 bytes).
  It occupies 48 bytes.
  The `bne` branch at 0xa0028030 targets 0xa0028050, is taken when a1 < at(=0xffffffffbfc00000) (unsigned), and falls through when a1 >= at(=0xffffffffbfc00000) (unsigned).
  The `bne` branch at 0xa0028040 targets 0xa0028050, is taken when v0(=0xffffffffbfc70000) < a0 (unsigned), and falls through when v0(=0xffffffffbfc70000) >= a0 (unsigned).
  The return at 0xa0028048 has v0 = 0x1.
  The return at 0xa0028050 has v0 = 0x0.

- `init_pci` in `sbin/stand/symmon.IP32` at 0xa0028184 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0028184-0xa00281a8 (36 bytes).
  It occupies 36 bytes.
  The `sw` at 0xa0028194 stores 4 bytes to abs 0xffffffffa00596ec.
  The `sw` at 0xa002819c stores 4 bytes to abs 0xffffffffbf080004.
  The `sw` at 0xa00281a4 stores 4 bytes to abs 0xffffffffbf080008.
  The return at 0xa00281a0 has v0 = 0xffffffffbf080000.

- `setup_idarr` in `sbin/stand/symmon.IP32` at 0xa002821c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002821c-0xa002822c (16 bytes).
  It occupies 16 bytes.
  The `sw` at 0xa002821c stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0xa0028228 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The return at 0xa0028224 has v0 = 0x1.

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

- `_intr_init` in `sbin/stand/symmon.IP32` at 0xa00283dc (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00283dc-0xa002840c (48 bytes).
  It occupies 48 bytes.
  The `lw` at 0xa00283e4 loads 4 bytes from abs 0xffffffffa0058d9c.
  The `lw` at 0xa00283e8 loads 4 bytes from abs 0xffffffffa003c1c8.
  The `sw` at 0xa00283f4 stores 4 bytes to abs 0xffffffffa0058d20.
  The `sw` at 0xa0028400 stores 4 bytes to abs 0xffffffffa0058d9c.
  The `bne` branch at 0xa00283f0 targets 0xa0028404, is taken when v1(=[0xffffffffa0058d9c]) != 0, and falls through when v1(=[0xffffffffa0058d9c]) == 0.
  The return at 0xa0028404 has v0 = one of 0xffffffffa002822c, 0xffffffffa0060000.

- `_circ_nread` in `sbin/stand/symmon.IP32` at 0xa00284c4 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00284c4-0xa00284ec (40 bytes).
  It occupies 40 bytes.
  The `lw` at 0xa00284c4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xa00284c8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `bltz` branch at 0xa00284d0 targets 0xa00284e0, is taken when a3(?) < 0 (signed), and falls through when a3(?) >= 0 (signed).
  The return at 0xa00284d8 has v0 = ?.
  The return at 0xa00284e4 has v0 = ?.

- `read_reg64` in `sbin/stand/symmon.IP32` at 0xa00284f4 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00284f4-0xa0028508 (20 bytes).
  It occupies 20 bytes.
  The `ld` at 0xa00284f4 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The return at 0xa0028500 has v0 = ?.

- `write_reg64` in `sbin/stand/symmon.IP32` at 0xa0028508 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0028508-0xa0028520 (24 bytes).
  It occupies 24 bytes.
  The `sd` at 0xa002851c stores 8 bytes to a2 (arg2 at entry) +0x0.
  The return at 0xa0028518 has v0 = ?.

- `Read_C0_LLADDR` in `sbin/stand/symmon.IP32` at 0xa0028540 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0028540-0xa0028554 (20 bytes).
  It occupies 20 bytes.
  The return at 0xa002854c has v0 = ?.

- `Read_C0_Config` in `sbin/stand/symmon.IP32` at 0xa0028554 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0028554-0xa0028560 (12 bytes).
  It occupies 12 bytes.
  The return at 0xa0028558 has v0 = ?.

- `Write_C0_Config` in `sbin/stand/symmon.IP32` at 0xa0028560 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0028560-0xa002856c (12 bytes).
  It occupies 12 bytes.
  The return at 0xa0028564 has v0 = ?.

- `Read_C0_PRId` in `sbin/stand/symmon.IP32` at 0xa002856c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002856c-0xa002859c (48 bytes).
  It occupies 48 bytes.
  The `bne` branch at 0xa0028580 targets 0xa0028594, is taken when t0(?) != t1(=0x28), and falls through when t0(?) == t1(=0x28).
  The return at 0xa0028594 has v0 = ?.

- `crm_deadloop` in `sbin/stand/symmon.IP32` at 0xa00285d4 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00285d4-0xa0028600 (44 bytes).
  It occupies 44 bytes.
  The `ld` at 0xa00285d8 loads 8 bytes from abs 0xffffffffbf310008.
  The `sd` at 0xa00285e8 stores 8 bytes to abs 0xffffffffbf310008.
  The `bgtz` branch at 0xa00285f0 targets 0xa00285f0, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The return at 0xa00285f8 has v0 = ?.

- `cpuclkper100ticks` in `sbin/stand/symmon.IP32` at 0xa00286b8 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00286b8-0xa0028768 (176 bytes).
  It occupies 176 bytes.
  The `sd` at 0xa00286f0 stores 8 bytes to abs 0xffffffffb4000038.
  The `ld` at 0xa00286f8 loads 8 bytes from abs 0xffffffffb4000038.
  Calls (unnamed) [0xffffffffa00286d0] via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xa0028758).
  The `beq` branch at 0xa00286c8 targets 0xa00286d8 and is always taken.
  The `bne` branch at 0xa002870c targets 0xa00286f8, is taken when t2(?) < t0(=0x5bc8) (unsigned), and falls through when t2(?) >= t0(=0x5bc8) (unsigned).
  The `bne` branch at 0xa002871c targets 0xa00286ec, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `bne` branch at 0xa0028734 targets 0xa0028740 and is always taken.
  The `bne` branch at 0xa002874c targets 0xa0028758 and is always taken.
  The instructions from 0xa00286d0 to 0xa00286d4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xa002873c to 0xa002873c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xa0028754 to 0xa0028754 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xa0028760 to 0xa0028764 are not reached by any path from the entry, and their branches are not listed.

- `Crc16` in `sbin/stand/symmon.IP32` at 0xa0028768 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0028768-0xa00287d0 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xa002876c loads 4 bytes from abs 0xffffffffa0058da8.
  2 such `lw` accesses load 4 bytes from table(0xffffffffa003c1d8) +0x0, including `lw` at 0xa002879c, `lw` at 0xa00287a0.
  The `sw` at 0xa00287cc stores 4 bytes to abs 0xffffffffa0058da8.
  The `beq` branch at 0xa00287ac targets 0xa00287b8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The return at 0xa00287c8 has v0 = ?.

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

- `ds2502_init` in `sbin/stand/symmon.IP32` at 0xa0028818 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0028818-0xa0028898 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xa0028844 loads 4 bytes from abs 0xffffffffa003c1d0.
  The `ld` at 0xa0028848 loads 8 bytes from [0xffffffffa003c1d0] +0x0.
  The `jal` at 0xa0028820 calls (unnamed) [0xa00287d0] with a0=0x1f4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa0028830 calls usecwait [0xa0029f54] with a0=0xf, a1=?, a2=?, a3=?.
  The `jal` at 0xa0028858 calls usecwait [0xa0029f54] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0xa0028888 calls usecwait [0xa0029f54] with a0=0x3e8, a1=?, a2=?, a3=?.
  The `beq` branch at 0xa0028850 targets 0xa0028880, is taken when (t8(=[[0xffffffffa003c1d0]]:8) & 0x8) == 0, and falls through when (t8(=[[0xffffffffa003c1d0]]:8) & 0x8) != 0.
  The `bne` branch at 0xa0028864 targets 0xa0028844, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0xa0028880 targets 0xa002886c, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xa0028890 targets 0xa002886c and is always taken.
  The return at 0xa0028878 has v0 = one of 0x0, 0x1.

- `ds2502_write` in `sbin/stand/symmon.IP32` at 0xa0028898 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0028898-0xa0028944 (172 bytes).
  It occupies 172 bytes.
  The `lbu` at 0xa00288d8 loads 1 byte from ?.
  The `jal` at 0xa00288dc calls (unnamed) [0xa00287d0] with a0=0x8, a1=?, a2=?, a3=?.
  The `jal` at 0xa00288e4 calls usecwait [0xa0029f54] with a0=0x3c, a1=?, a2=?, a3=?.
  The `jal` at 0xa0028908 calls (unnamed) [0xa00287d0] with a0=0x5a, a1=?, a2=?, a3=?.
  The `blez` branch at 0xa00288b0 targets 0xa0028918, is taken when a1 <= 0 (signed), and falls through when a1 > 0 (signed).
  The `beq` branch at 0xa00288c0 targets 0xa0028938 and is always taken.
  The `beq` branch at 0xa00288cc targets 0xa0028918, is taken when s2(?) == s4(=(a1 + a0)), and falls through when s2(?) != s4(=(a1 + a0)).
  The `beq` branch at 0xa00288d4 targets 0xa00288fc and is always taken.
  The `beq` branch at 0xa00288f4 targets 0xa00288c8, is taken when s1(?) == s3(=0x8), and falls through when s1(?) != s3(=0x8).
  The `bne` branch at 0xa0028900 targets 0xa00288dc, is taken when (s0(?) & 0x1) != 0, and falls through when (s0(?) & 0x1) == 0.
  The `beq` branch at 0xa0028910 targets 0xa00288f0 and is always taken.
  The `beq` branch at 0xa002893c targets 0xa00288d4 and is always taken.
  The return at 0xa0028930 has v0 = ?.

- `check_gpdas` in `sbin/stand/symmon.IP32` at 0xa0028ffc (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0028ffc-0xa0029004 (8 bytes).
  It occupies 8 bytes.
  The return at 0xa0028ffc has v0 = ?.

- `_timerticksper1024inst` in `sbin/stand/symmon.IP32` at 0xa0029144 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0029144-0xa0029174 (48 bytes).
  It occupies 48 bytes.
  The `bgtz` branch at 0xa002914c targets 0xa002914c, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `bltz` branch at 0xa0029164 targets 0xa0029144, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The return at 0xa002916c has v0 = ?.

- `delayloop` in `sbin/stand/symmon.IP32` at 0xa0029280
  **Inferred.** A self-branching loop: the branch at 0xa0029284 returns to itself while a0 is positive (signed), and the routine returns with an unknown value at 0xa002928c. The decrement that ends the loop is not among the rendered facts, so the cost per pass is not derived. The name suggests a busy-wait delay, which matches the loop shape.
  Reviewed: 2026-11-12

- `delayloop` in `sbin/stand/symmon.IP32` at 0xa0029280
  **Inferred.** A one-instruction loop at 0xa0029284 that branches back to itself while a0 is greater than zero (signed), then returns at 0xa002928c. It has no loads, stores or calls. The facts do not show how a0 changes inside the loop; the name fits a busy-wait delay.
  Reviewed: 2026-11-12

- `findFlashSegmentHdr` in `sbin/stand/symmon.IP32` at 0xa0029cf4 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0029cf4-0xa0029d84 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xa0029d44 loads 4 bytes from ret(nextSegment) +0x10.
  The `jal` at 0xa0029d10 calls nextSegment [0xa0029ddc] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa0029d2c calls nextSegment [0xa0029ddc] with a0=a0 at entry (arg0), a1=ret(nextSegment), a2=?, a3=?.
  The `jal` at 0xa0029d3c calls strlen [0xa00309ac] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0xa0029d58 calls strncmp [0xa0030d60] with a0=a1 at entry (arg1), a1=ret(nextSegment)+20, a2=?, a3=?.
  The `bne` branch at 0xa0029d18 targets 0xa0029d3c, is taken when v0(=ret(nextSegment)) != 0, and falls through when v0(=ret(nextSegment)) == 0.
  The `beq` branch at 0xa0029d20 targets 0xa0029d68 and is always taken.
  The `beq` branch at 0xa0029d34 targets 0xa0029d68, is taken when v0(=ret(nextSegment)) == 0, and falls through when v0(=ret(nextSegment)) != 0.
  The `bne` branch at 0xa0029d4c targets 0xa0029d2c, is taken when v0(=ret(strlen)) != a2(?), and falls through when v0(=ret(strlen)) == a2(?).
  The `bne` branch at 0xa0029d60 targets 0xa0029d2c, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The return at 0xa0029d7c has v0 = ret(nextSegment).
  The instructions from 0xa0029d28 to 0xa0029d28 are not reached by any path from the entry, and their branches are not listed.

- `validHdr` in `sbin/stand/symmon.IP32` at 0xa0029ee8 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0029ee8-0xa0029f54 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xa0029ee8 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xa0029efc loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0xa0029f10 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lw` at 0xa0029f34 loads 4 bytes from ?.
  The `bne` branch at 0xa0029ef4 targets 0xa0029f24, is taken when (a1 & at(=[a0+8]-1)) != 0, and falls through when (a1 & at(=[a0+8]-1)) == 0.
  The `bne` branch at 0xa0029f08 targets 0xa0029f24, is taken when v0(=[a1+8]) != v1(=0x53484452), and falls through when v0(=[a1+8]) == v1(=0x53484452).
  The `beq` branch at 0xa0029f18 targets 0xa0029f2c, is taken when (a0(=[a1+12]) & 0x3) == 0, and falls through when (a0(=[a1+12]) & 0x3) != 0.
  The `beq` branch at 0xa0029f2c targets 0xa0029f4c, is taken when v0(=a1+64) == a1, and falls through when v0(=a1+64) != a1.
  The `bne` branch at 0xa0029f3c targets 0xa0029f34, is taken when v0(=a1+64) != a1(?), and falls through when v0(=a1+64) == a1(?).
  The `beq` branch at 0xa0029f4c targets 0xa0029f44 and is always taken.
  The return at 0xa0029f24 has v0 = 0x0.
  The return at 0xa0029f44 has v0 = one of ?, 0x1.

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

- `cpu_restart_rtc` in `sbin/stand/symmon.IP32` at 0xa002a65c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002a65c-0xa002a67c (32 bytes).
  It occupies 32 bytes.
  The `jal` at 0xa002a664 calls cpu_get_tod [0xa002a0c0] with a0=sp-32, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa002a674 has v0 = 0x0.

- `get_SR` in `sbin/stand/symmon.IP32` at 0xa002a67c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002a67c-0xa002a68c (16 bytes).
  It occupies 16 bytes.
  The return at 0xa002a684 has v0 = ?.

- `set_SR` in `sbin/stand/symmon.IP32` at 0xa002a68c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002a68c-0xa002a6a4 (24 bytes).
  It occupies 24 bytes.
  The return at 0xa002a69c has v0 = ?.

- `get_CAUSE` in `sbin/stand/symmon.IP32` at 0xa002a6a4 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002a6a4-0xa002a6b8 (20 bytes).
  It occupies 20 bytes.
  The return at 0xa002a6b0 has v0 = ?.

- `set_CAUSE` in `sbin/stand/symmon.IP32` at 0xa002a6b8 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002a6b8-0xa002a6d0 (24 bytes).
  It occupies 24 bytes.
  The return at 0xa002a6c8 has v0 = ?.

- `get_prid` in `sbin/stand/symmon.IP32` at 0xa002a6d0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002a6d0-0xa002a700 (48 bytes).
  It occupies 48 bytes.
  The `bne` branch at 0xa002a6e4 targets 0xa002a6f4, is taken when t0(?) != t1(=0x28), and falls through when t0(?) == t1(=0x28).
  The return at 0xa002a6f8 has v0 = ?.

- `set_FPSR` in `sbin/stand/symmon.IP32` at 0xa002a70c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002a70c-0xa002a724 (24 bytes).
  It occupies 24 bytes.
  The return at 0xa002a71c has v0 = ?.

- `arcsGetMemDesc` in `sbin/stand/symmon.IP32` at 0xa002a724 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002a724-0xa002a74c (40 bytes).
  It occupies 40 bytes.
  The `lw` at 0xa002a728 loads 4 bytes from abs 0xffffffffa0001020.
  The `lw` at 0xa002a72c loads 4 bytes from [0xffffffffa0001020] +0x48.
  The `jalr` at 0xa002a738 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa002a744 has v0 = ret(?).

- `splockspl` in `sbin/stand/symmon.IP32` at 0xa002a764 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002a764-0xa002a780 (28 bytes).
  It occupies 28 bytes.
  The `jalr` at 0xa002a76c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa002a778 has v0 = ret(?).

- `spunlockspl` in `sbin/stand/symmon.IP32` at 0xa002a780 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002a780-0xa002a79c (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0xa002a788 calls cpsema [0xa00311a0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa002a794 has v0 = ret(cpsema).

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

- `_init_htp` in `sbin/stand/symmon.IP32` at 0xa002aa10 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002aa10-0xa002aa90 (128 bytes).
  It occupies 128 bytes.
  3 such `lw` accesses load 4 bytes from abs 0xffffffffa0058d1c, including `lw` at 0xa002aa2c, `lw` at 0xa002aa44, `lw` at 0xa002aa7c.
  The `lw` at 0xa002aa40 loads 4 bytes from abs 0xffffffffa003aa98.
  The `sw` at 0xa002aa70 stores 4 bytes to abs 0xffffffffa0058d1c.
  The `jal` at 0xa002aa20 calls _init_ttyputc [0xa002e9b4] with a0=0xffffffffa002a9d4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa002aa3c calls initGfxGui [0xa001bf0c] with a0=[0xffffffffa003aa98], a1=?, a2=?, a3=?.
  The `jal` at 0xa002aa58 calls (unnamed) [0xa002a898] with a0=0x0, a1=?, a2=?, a3=?.
  The `jal` at 0xa002aa74 calls htp_init [0xa001fda0] with a0=?, a1=?, a2=-0x1, a3=?.
  The `beq` branch at 0xa002aa30 targets 0xa002aa58, is taken when t8(=[0xffffffffa0058d1c]) == 0, and falls through when t8(=[0xffffffffa0058d1c]) != 0.
  The `beq` branch at 0xa002aa6c targets 0xa002aa7c, is taken when v0(=ret(0xa002a898)) == a2(=-0x1), and falls through when v0(=ret(0xa002a898)) != a2(=-0x1).
  The `bne` branch at 0xa002aa80 targets 0xa002aa3c, is taken when v0(=[0xffffffffa0058d1c]) != 0, and falls through when v0(=[0xffffffffa0058d1c]) == 0.
  The `beq` branch at 0xa002aa88 targets 0xa002aa4c and is always taken.
  The return at 0xa002aa50 has v0 = [0xffffffffa0058d1c].

- `txPrint` in `sbin/stand/symmon.IP32` at 0xa002aa90 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002aa90-0xa002aabc (44 bytes).
  It occupies 44 bytes.
  The `jal` at 0xa002aa98 calls htp_write [0xa001fe18] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xa002aaa0 targets 0xa002aab4, is taken when v0(=ret(htp_write)) == 0, and falls through when v0(=ret(htp_write)) != 0.
  The `beq` branch at 0xa002aab4 targets 0xa002aaac and is always taken.
  The return at 0xa002aaac has v0 = one of 0x0, 0x1.

- `_gfx_strat` in `sbin/stand/symmon.IP32` at 0xa002ad30 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002ad30-0xa002adc8 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xa002ad30 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `sw` at 0xa002ad64 stores 4 bytes to a1 (arg1 at entry) +0x20.
  The `jal` at 0xa002ad78 calls (unnamed) [0xa002ac94] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=0x10, a3=a3 at entry (arg3), a4=0x7.
  The `jal` at 0xa002ad88 calls (unnamed) [0xa002aabc] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa002ad98 calls (unnamed) [0xa002aacc] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa002ada8 calls (unnamed) [0xa002ac3c] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa002adb8 calls (unnamed) [0xa002ac18] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=0x10, a3=a3 at entry (arg3).
  The `beq` branch at 0xa002ad38 targets 0xa002ad88, is taken when v0(=[a1]) == 0, and falls through when v0(=[a1]) != 0.
  The `beq` branch at 0xa002ad44 targets 0xa002ad98, is taken when v0(=[a1]) == at(=0x1), and falls through when v0(=[a1]) != at(=0x1).
  The `beq` branch at 0xa002ad4c targets 0xa002ada8, is taken when v0(=[a1]) == v1(=0x4), and falls through when v0(=[a1]) != v1(=0x4).
  The `beq` branch at 0xa002ad54 targets 0xa002adb8, is taken when v0(=[a1]) == a0(=0x2), and falls through when v0(=[a1]) != a0(=0x2).
  The `beq` branch at 0xa002ad5c targets 0xa002ad78, is taken when v0(=[a1]) == a2(=0x10), and falls through when v0(=[a1]) != a2(=0x10).
  The `beq` branch at 0xa002ad80 targets 0xa002ad68 and is always taken.
  The `beq` branch at 0xa002ad90 targets 0xa002ad68 and is always taken.
  The `beq` branch at 0xa002ada0 targets 0xa002ad68 and is always taken.
  The `beq` branch at 0xa002adb0 targets 0xa002ad68 and is always taken.
  The `beq` branch at 0xa002adc0 targets 0xa002ad68 and is always taken.
  The return at 0xa002ad70 has v0 = one of 0x7, ret(0xa002ac94), ret(0xa002aabc), ret(0xa002aacc), ret(0xa002ac3c), ret(0xa002ac18).

- `getack_andexit` in `sbin/stand/symmon.IP32` at 0xa002aefc (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002aefc-0xa002af8c (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xa002af00 loads 4 bytes from abs 0xffffffffa0001010.
  The `sw` at 0xa002af68 stores 4 bytes to abs 0xffffffffa00597b8.
  The `jal` at 0xa002af18 calls printf [0xa002e620] with a0=0xffffffffa00376e0, a1=?, a2=?, a3=?.
  The `jal` at 0xa002af20 calls getchar [0xa002d310] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa002af40 calls getchar [0xa002d310] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa002af64 calls EnterInteractiveMode [0xa0031758] with a0=?, a1=0xffffffffa0060000, a2=?, a3=?.
  The `jal` at 0xa002af7c calls debug [0xa002d2e0] with a0=0xffffffffa00376d8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xa002af08 targets 0xa002af78, is taken when at(=[0xffffffffa0001010]) != 0, and falls through when at(=[0xffffffffa0001010]) == 0.
  The `beq` branch at 0xa002af2c targets 0xa002af58, is taken when v0(=ret(getchar)) == s0(=0xa), and falls through when v0(=ret(getchar)) != s0(=0xa).
  The `beql` branch at 0xa002af38 targets 0xa002af5c, is taken when v0(=ret(getchar)) == s1(=0xd), and falls through when v0(=ret(getchar)) != s1(=0xd); its branch-likely delay slot `ld s0,0(sp)` at 0xa002af3c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa002af48 targets 0xa002af58, is taken when v0(=ret(getchar)) == s0(=0xa), and falls through when v0(=ret(getchar)) != s0(=0xa).
  The `bne` branch at 0xa002af50 targets 0xa002af40, is taken when v0(=ret(getchar)) != s1(=0xd), and falls through when v0(=ret(getchar)) == s1(=0xd).
  The `beq` branch at 0xa002af84 targets 0xa002af14 and is always taken.
  The return at 0xa002af70 has v0 = ret(EnterInteractiveMode).

- `panic` in `sbin/stand/symmon.IP32` at 0xa002af8c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002af8c-0xa002b028 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xa002afb8 loads 4 bytes from abs 0xffffffffa00597b8.
  The `sw` at 0xa002afcc stores 4 bytes to abs 0xffffffffa00597b8.
  The `jal` at 0xa002afe4 calls _errputs [0xa002a79c] with a0=0xffffffffa0037708, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa002aff8 calls _errputs [0xa002a79c] with a0=0xffffffffa0037718, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa002b004 calls vprintf [0xa002e77c] with a0=a0 at entry (arg0), a1=sp-56, a2=?, a3=?.
  The `jal` at 0xa002b00c calls putchar [0xa002dd70] with a0=0xa, a1=?, a2=?, a3=?.
  The `jal` at 0xa002b014 calls getack_andexit [0xa002aefc] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xa002afc8 targets 0xa002aff4, is taken when t1(=[0xffffffffa00597b8]+1) == at(=0x1), and falls through when t1(=[0xffffffffa00597b8]+1) != at(=0x1).
  The `beq` branch at 0xa002afd4 targets 0xa002afe4, is taken when t1(=[0xffffffffa00597b8]+1) == v1(=0x2), and falls through when t1(=[0xffffffffa00597b8]+1) != v1(=0x2).
  The `beq` branch at 0xa002afdc targets 0xa002afdc and is always taken.
  The `beq` branch at 0xa002afec targets 0xa002afdc and is always taken.
  The return at 0xa002b020 has v0 = ret(getack_andexit).

- `isgraphic` in `sbin/stand/symmon.IP32` at 0xa002b028 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002b028-0xa002b0ac (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xa002b02c loads 4 bytes from abs 0xffffffffa005a3e4.
  The `lbu` at 0xa002b08c loads 1 byte from ret(getenv) +0x0.
  The `jal` at 0xa002b054 calls ioctl [0xa0026ba0] with a0=a0 at entry (arg0), a1=0x7409, a2=sp-16, a3=a3 at entry (arg3).
  The `jal` at 0xa002b07c calls getenv [0xa002ba5c] with a0=0xffffffffa0037728, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xa002b034 targets 0xa002b050, is taken when at(=[0xffffffffa005a3e4]) != 0, and falls through when at(=[0xffffffffa005a3e4]) == 0.
  The `beq` branch at 0xa002b040 targets 0xa002b078, is taken when a0 == v0(=0x1), and falls through when a0 != v0(=0x1).
  The `beq` branch at 0xa002b048 targets 0xa002b068 and is always taken.
  The `bltz` branch at 0xa002b05c targets 0xa002b070, is taken when v0(=ret(ioctl)) < 0 (signed), and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `beq` branch at 0xa002b070 targets 0xa002b064 and is always taken.
  The `beql` branch at 0xa002b084 targets 0xa002b048, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0; its branch-likely delay slot `or v0,zero,zero` at 0xa002b088 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa002b094 targets 0xa002b0a4, is taken when a0(=[ret(getenv)]:1) == a1(=0x67), and falls through when a0(=[ret(getenv)]:1) != a1(=0x67).
  The `bne` branch at 0xa002b09c targets 0xa002b048, is taken when a0(=[ret(getenv)]:1) != a2(=0x47), and falls through when a0(=[ret(getenv)]:1) == a2(=0x47).
  The `beq` branch at 0xa002b0a4 targets 0xa002b048 and is always taken.
  The return at 0xa002b068 has v0 = one of 0x0, 0x1, ?.

- `init_str` in `sbin/stand/symmon.IP32` at 0xa002b39c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002b39c-0xa002b3b0 (20 bytes).
  It occupies 20 bytes.
  The `sw` at 0xa002b39c stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `sw` at 0xa002b3a0 stores 4 bytes to a0 (arg0 at entry) +0x604.
  The `sw` at 0xa002b3ac stores 4 bytes to a0 (arg0 at entry) +0x600.
  The return at 0xa002b3a8 has v0 = ?.

- `delete_str` in `sbin/stand/symmon.IP32` at 0xa002b408 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002b408-0xa002b424 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0xa002b410 calls (unnamed) [0xa002b424] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x0, a3=a3 at entry (arg3).
  The return at 0xa002b41c has v0 = ret(0xa002b424).

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

- `_copystrings` in `sbin/stand/symmon.IP32` at 0xa002b9b8 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002b9b8-0xa002ba24 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xa002b9e0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xa002ba00 loads 4 bytes from ?.
  The `jal` at 0xa002b9d0 calls init_str [0xa002b39c] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa002b9ec calls new_str1 [0xa002b5dc] with a0=?, a1=a1 at entry (arg1), a2=?, a3=?.
  The `beql` branch at 0xa002b9d8 targets 0xa002ba10, is taken when s0(=a0) == 0, and falls through when s0(=a0) != 0; its branch-likely delay slot `ld s0,0(sp)` at 0xa002b9dc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xa002b9e4 targets 0xa002ba10, is taken when a0(=[a0]) == 0, and falls through when a0(=[a0]) != 0; its branch-likely delay slot `ld s0,0(sp)` at 0xa002b9e8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa002b9f8 targets 0xa002ba0c, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0xa002ba04 targets 0xa002b9ec, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The return at 0xa002ba1c has v0 = a1.

- `setenv` in `sbin/stand/symmon.IP32` at 0xa002ba24 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002ba24-0xa002ba40 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0xa002ba2c calls _setenv [0xa001bef4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x0, a3=a3 at entry (arg3).
  The return at 0xa002ba38 has v0 = ret(_setenv).

- `syssetenv` in `sbin/stand/symmon.IP32` at 0xa002ba40 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002ba40-0xa002ba5c (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0xa002ba48 calls _setenv [0xa001bef4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=a3 at entry (arg3).
  The return at 0xa002ba54 has v0 = ret(_setenv).

- `getenv` in `sbin/stand/symmon.IP32` at 0xa002ba5c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002ba5c-0xa002bad8 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xa002ba68 loads 4 bytes from abs 0xffffffffa00597c8.
  The `lw` at 0xa002ba80 loads 4 bytes from [0xffffffffa00597c8] +0x0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xa002ba8c, `lw` at 0xa002baa4.
  The `jal` at 0xa002ba94 calls (unnamed) [0xa002bad8] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xa002ba74 targets 0xa002bacc, is taken when s0(=[0xffffffffa00597c8]) == 0, and falls through when s0(=[0xffffffffa00597c8]) != 0.
  The `beq` branch at 0xa002ba84 targets 0xa002bac4, is taken when t8(=[[0xffffffffa00597c8]]) == 0, and falls through when t8(=[[0xffffffffa00597c8]]) != 0.
  The `bne` branch at 0xa002ba9c targets 0xa002baac, is taken when v0(=ret(0xa002bad8)) != 0, and falls through when v0(=ret(0xa002bad8)) == 0.
  The `bne` branch at 0xa002baa8 targets 0xa002ba8c, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0xa002bac4 targets 0xa002bab0 and is always taken.
  The `beq` branch at 0xa002bad0 targets 0xa002baac and is always taken.
  The return at 0xa002babc has v0 = one of ret(0xa002bad8), ?, 0x0.

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

- `getargv` in `sbin/stand/symmon.IP32` at 0xa002bc98 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002bc98-0xa002bd28 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xa002bcb4 loads 4 bytes from abs 0xffffffffa005a3dc.
  The `lw` at 0xa002bce0 loads 4 bytes from ?.
  The `jal` at 0xa002bcf0 calls (unnamed) [0xa002bad8] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xa002bcc0 targets 0xa002bd08, is taken when a1(=[0xffffffffa005a3dc]) == 0, and falls through when a1(=[0xffffffffa005a3dc]) != 0.
  The `beq` branch at 0xa002bccc targets 0xa002bce0 and is always taken.
  The `beq` branch at 0xa002bcd8 targets 0xa002bd0c, is taken when s1(?) == s2(=-0x1), and falls through when s1(?) != s2(=-0x1).
  The `beql` branch at 0xa002bce4 targets 0xa002bcd8, is taken when a1(?) == 0, and falls through when a1(?) != 0; its branch-likely delay slot `addiu s1,s1,-1` at 0xa002bce8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa002bcf8 targets 0xa002bcd8, is taken when v0(=ret(0xa002bad8)) == 0, and falls through when v0(=ret(0xa002bad8)) != 0.
  The `beq` branch at 0xa002bd00 targets 0xa002bd10 and is always taken.
  The return at 0xa002bd20 has v0 = one of ret(0xa002bad8), 0x0.
  The instructions from 0xa002bcd4 to 0xa002bcd4 are not reached by any path from the entry, and their branches are not listed.

- `Halt` in `sbin/stand/symmon.IP32` at 0xa002bd28 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002bd28-0xa002bd50 (40 bytes).
  It occupies 40 bytes.
  The `lw` at 0xa002bd2c loads 4 bytes from abs 0xffffffffa0001020.
  The `lw` at 0xa002bd30 loads 4 bytes from [0xffffffffa0001020] +0xc.
  The `jalr` at 0xa002bd3c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa002bd48 has v0 = ret(?).

- `PowerDown` in `sbin/stand/symmon.IP32` at 0xa002bd50 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002bd50-0xa002bd78 (40 bytes).
  It occupies 40 bytes.
  The `lw` at 0xa002bd54 loads 4 bytes from abs 0xffffffffa0001020.
  The `lw` at 0xa002bd58 loads 4 bytes from [0xffffffffa0001020] +0x10.
  The `jalr` at 0xa002bd64 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa002bd70 has v0 = ret(?).

- `Restart` in `sbin/stand/symmon.IP32` at 0xa002bd78 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002bd78-0xa002bda0 (40 bytes).
  It occupies 40 bytes.
  The `lw` at 0xa002bd7c loads 4 bytes from abs 0xffffffffa0001020.
  The `lw` at 0xa002bd80 loads 4 bytes from [0xffffffffa0001020] +0x14.
  The `jalr` at 0xa002bd8c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa002bd98 has v0 = ret(?).

- `Reboot` in `sbin/stand/symmon.IP32` at 0xa002bda0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002bda0-0xa002bdc8 (40 bytes).
  It occupies 40 bytes.
  The `lw` at 0xa002bda4 loads 4 bytes from abs 0xffffffffa0001020.
  The `lw` at 0xa002bda8 loads 4 bytes from [0xffffffffa0001020] +0x18.
  The `jalr` at 0xa002bdb4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa002bdc0 has v0 = ret(?).

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

- `atob_ptr` in `sbin/stand/symmon.IP32` at 0xa002c0bc (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002c0bc-0xa002c0d8 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0xa002c0c4 calls atob [0xa002bea0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa002c0d0 has v0 = ret(atob).

- `atoi` in `sbin/stand/symmon.IP32` at 0xa002c30c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002c30c-0xa002c32c (32 bytes).
  It occupies 32 bytes.
  The `jal` at 0xa002c314 calls atob [0xa002bea0] with a0=a0 at entry (arg0), a1=sp-16, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa002c324 has v0 = ?.

- `atohex` in `sbin/stand/symmon.IP32` at 0xa002c32c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002c32c-0xa002c3d0 (164 bytes).
  It occupies 164 bytes.
  The `lbu` at 0xa002c380 loads 1 byte from abs 0xffffffffa00377ba.
  The `lhu` at 0xa002c388 loads 2 bytes from abs 0xffffffffa00377b8.
  The `jal` at 0xa002c354 calls strncmp [0xa0030d60] with a0=a0 at entry (arg0), a1=0xffffffffa00377b8, a2=0x2, a3=a3 at entry (arg3).
  The `jal` at 0xa002c36c calls strncmp [0xa0030d60] with a0=a0 at entry (arg0), a1=0xffffffffa00377bc, a2=0x2, a3=?.
  The `jal` at 0xa002c390 calls strcat [0xa00308f0] with a0=sp-48, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0xa002c39c calls atob [0xa002bea0] with a0=sp-48, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0xa002c3c0 calls atob [0xa002bea0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `beq` branch at 0xa002c35c targets 0xa002c3c0, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0xa002c374 targets 0xa002c3c0, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0xa002c3c8 targets 0xa002c3a8 and is always taken.
  The return at 0xa002c3b4 has v0 = ret(atob).
  The instructions from 0xa002c3bc to 0xa002c3bc are not reached by any path from the entry, and their branches are not listed.

- `atohex_L` in `sbin/stand/symmon.IP32` at 0xa002c3d0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002c3d0-0xa002c46c (156 bytes).
  It occupies 156 bytes.
  The `lbu` at 0xa002c41c loads 1 byte from abs 0xffffffffa00377ba.
  The `lhu` at 0xa002c424 loads 2 bytes from abs 0xffffffffa00377b8.
  The `jal` at 0xa002c3f8 calls strncmp [0xa0030d60] with a0=a0 at entry (arg0), a1=0xffffffffa00377b8, a2=0x2, a3=a3 at entry (arg3).
  The `jal` at 0xa002c40c calls strncmp [0xa0030d60] with a0=a0 at entry (arg0), a1=0xffffffffa00377bc, a2=0x2, a3=?.
  The `jal` at 0xa002c42c calls strcat [0xa00308f0] with a0=sp-64, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0xa002c438 calls atob_L [0xa002c0d8] with a0=sp-64, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0xa002c45c calls atob_L [0xa002c0d8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `beq` branch at 0xa002c400 targets 0xa002c458, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0xa002c414 targets 0xa002c458, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0xa002c464 targets 0xa002c444 and is always taken.
  The return at 0xa002c450 has v0 = ret(atob_L).

- `atohex_ptr` in `sbin/stand/symmon.IP32` at 0xa002c46c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002c46c-0xa002c488 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0xa002c474 calls atohex [0xa002c32c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa002c480 has v0 = ret(atohex).

- `iscloseonexec` in `sbin/stand/symmon.IP32` at 0xa002ca18 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002ca18-0xa002ca40 (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0xa002ca28 calls ioctl [0xa0026ba0] with a0=a0 at entry (arg0), a1=0x6602, a2=sp-16, a3=a3 at entry (arg3).
  The return at 0xa002ca38 has v0 = ?.

- `_cksum1` in `sbin/stand/symmon.IP32` at 0xa002d1a0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002d1a0-0xa002d218 (120 bytes).
  It occupies 120 bytes.
  The `lbu` at 0xa002d1b4 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lhu` at 0xa002d1c8 loads 2 bytes from ?.
  The `lbu` at 0xa002d1ec loads 1 byte from ?.
  The `beq` branch at 0xa002d1a0 targets 0xa002d210, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0xa002d1ac targets 0xa002d1d8, is taken when (a0 & 0x1) == 0, and falls through when (a0 & 0x1) != 0.
  The `beq` branch at 0xa002d1c0 targets 0xa002d1d8 and is always taken.
  The `beq` branch at 0xa002d1dc targets 0xa002d1c8, is taken when a1(?) >= 0x2 (signed), and falls through when a1(?) < 0x2 (signed).
  The `beq` branch at 0xa002d1e4 targets 0xa002d1f8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The return at 0xa002d210 has v0 = one of a2, ?.

- `nuxi_s` in `sbin/stand/symmon.IP32` at 0xa002d218 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002d218-0xa002d230 (24 bytes).
  It occupies 24 bytes.
  The return at 0xa002d228 has v0 = ?.

- `nuxi_l` in `sbin/stand/symmon.IP32` at 0xa002d230 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002d230-0xa002d258 (40 bytes).
  It occupies 40 bytes.
  The return at 0xa002d250 has v0 = ?.

- `swaps` in `sbin/stand/symmon.IP32` at 0xa002d2a0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002d2a0-0xa002d2d0 (48 bytes).
  It occupies 48 bytes.
  The `lhu` at 0xa002d2a8 loads 2 bytes from ?.
  The `sh` at 0xa002d2bc stores 2 bytes to ?.
  The `beq` branch at 0xa002d2a0 targets 0xa002d2c8, is taken when a1 == 0, and falls through when a1 != 0.
  The `bne` branch at 0xa002d2c0 targets 0xa002d2a8, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The return at 0xa002d2c8 has v0 = ?.

- `getpc` in `sbin/stand/symmon.IP32` at 0xa002d2d0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002d2d0-0xa002d2d8 (8 bytes).
  It occupies 8 bytes.
  The return at 0xa002d2d0 has v0 = ra.

- `get_sp` in `sbin/stand/symmon.IP32` at 0xa002d2d8 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002d2d8-0xa002d2e0 (8 bytes).
  It occupies 8 bytes.
  The return at 0xa002d2d8 has v0 = sp.

- `exec_brkpt` in `sbin/stand/symmon.IP32` at 0xa002d2e0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002d2e0-0xa002d2ec (12 bytes).
  It occupies 12 bytes.
  The return at 0xa002d2e4 has v0 = ?.

- `quiet_debug` in `sbin/stand/symmon.IP32` at 0xa002d2ec (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002d2ec-0xa002d300 (20 bytes).
  It occupies 20 bytes.
  The return at 0xa002d2f8 has v0 = ?.

- `memcpy` in `sbin/stand/symmon.IP32` at 0xa002d300
  **Inferred.** A 16-byte forwarder: it tail-jumps to bcopy at 0xa002d308 with its first two arguments swapped, so a1 becomes bcopy's first argument and a0 its second, and a2 and a3 pass through. Its return is whatever bcopy returns. The swap turns memcpy's destination-first order into the source-first order that bcopy takes, but the rendered facts do not show bcopy's own contract, so the direction is inferred from the name.
  Reviewed: 2026-11-12

- `memcpy` in `sbin/stand/symmon.IP32` at 0xa002d300
  **Inferred.** Swaps a0 and a1 in the argument registers and jumps to bcopy at 0xa002ca40 (the jump is at 0xa002d308), keeping a2 as the length. The swap fits a bcopy that takes source before destination, turning the destination-first memcpy argument order into that order, which matches the name; the rendered facts do not show bcopy's own contract.
  Reviewed: 2026-11-12

- `gets` in `sbin/stand/symmon.IP32` at 0xa002dd50 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002dd50-0xa002dd70 (32 bytes).
  It occupies 32 bytes.
  The `jal` at 0xa002dd5c calls fgets [0xa002d3bc] with a0=a0 at entry (arg0), a1=0x100, a2=0x0, a3=a3 at entry (arg3).
  The return at 0xa002dd68 has v0 = ret(fgets).

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

- `sprintf` in `sbin/stand/symmon.IP32` at 0xa002e920 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002e920-0xa002e9b4 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xa002e944 loads 4 bytes from abs 0xffffffffa005a3e4.
  The `lw` at 0xa002e978 loads 4 bytes from abs 0xffffffffa003c910.
  The `sw` at 0xa002e988 stores 4 bytes to ?.
  The `jal` at 0xa002e958 calls cpuid [0xa0020c5c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa002e98c calls (unnamed) [0xa002ecb0] with a0=0xffffffffa002e8c0, a1=a1 at entry (arg1), a2=sp-48, a3=?.
  The `jal` at 0xa002e994 calls (unnamed) [0xa002e8c0] with a0=0x0, a1=?, a2=?, a3=?.
  The `jal` at 0xa002e99c calls strlen [0xa00309ac] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xa002e950 targets 0xa002e968, is taken when at(=[0xffffffffa005a3e4]) == 0, and falls through when at(=[0xffffffffa005a3e4]) != 0.
  The `beq` branch at 0xa002e960 targets 0xa002e96c and is always taken.
  The return at 0xa002e9ac has v0 = ret(strlen).

- `_init_ttyputc` in `sbin/stand/symmon.IP32` at 0xa002e9b4 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002e9b4-0xa002e9c0 (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0xa002e9bc stores 4 bytes to abs 0xffffffffa005a3ec.
  The return at 0xa002e9b8 has v0 = ?.

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

- `sprintL` in `sbin/stand/symmon.IP32` at 0xa002f510 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002f510-0xa002f590 (128 bytes).
  It occupies 128 bytes.
  The `lbu` at 0xa002f53c loads 1 byte from table(0xffffffffa0037b90) +0x0.
  3 such `sb` accesses store 1 byte to ?, including `sb` at 0xa002f548, `sb` at 0xa002f564, `sb` at 0xa002f568.
  The `lbu` at 0xa002f558 loads 1 byte from ?.
  The `sb` at 0xa002f58c stores 1 byte to a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0xa002f510 targets 0xa002f574, is taken when a2 < 0 (signed), and falls through when a2 >= 0 (signed).
  The `bne` branch at 0xa002f544 targets 0xa002f524, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0xa002f560 targets 0xa002f550, is taken when a1(=sp-80) < a4(?) (unsigned), and falls through when a1(=sp-80) >= a4(?) (unsigned).
  The `bgez` branch at 0xa002f574 targets 0xa002f518, is taken when a1 >= 0 (signed), and falls through when a1 < 0 (signed).
  The `beq` branch at 0xa002f588 targets 0xa002f518 and is always taken.
  The return at 0xa002f56c has v0 = ?.

- `sprintn` in `sbin/stand/symmon.IP32` at 0xa002f590 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002f590-0xa002f60c (124 bytes).
  It occupies 124 bytes.
  The `lbu` at 0xa002f5b8 loads 1 byte from table(0xffffffffa0037b90) +0x0.
  3 such `sb` accesses store 1 byte to ?, including `sb` at 0xa002f5c4, `sb` at 0xa002f5e0, `sb` at 0xa002f5e4.
  The `lbu` at 0xa002f5d4 loads 1 byte from ?.
  The `sb` at 0xa002f608 stores 1 byte to a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0xa002f590 targets 0xa002f5f0, is taken when a2 < 0 (signed), and falls through when a2 >= 0 (signed).
  The `bne` branch at 0xa002f5c0 targets 0xa002f5a4, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0xa002f5dc targets 0xa002f5cc, is taken when a1(=sp-48) < a4(?) (unsigned), and falls through when a1(=sp-48) >= a4(?) (unsigned).
  The `bgez` branch at 0xa002f5f0 targets 0xa002f598, is taken when a1 >= 0 (signed), and falls through when a1 < 0 (signed).
  The `beq` branch at 0xa002f604 targets 0xa002f598 and is always taken.
  The return at 0xa002f5e8 has v0 = ?.

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

- `_min` in `sbin/stand/symmon.IP32` at 0xa002f8f0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002f8f0-0xa002f908 (24 bytes).
  It occupies 24 bytes.
  The `bne` branch at 0xa002f8f4 targets 0xa002f900, is taken when a0 < a1 (signed), and falls through when a0 >= a1 (signed).
  The return at 0xa002f900 has v0 = one of a0, a1.

- `_max` in `sbin/stand/symmon.IP32` at 0xa002f908 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002f908-0xa002f920 (24 bytes).
  It occupies 24 bytes.
  The `bne` branch at 0xa002f90c targets 0xa002f918, is taken when a1 < a0 (signed), and falls through when a1 >= a0 (signed).
  The return at 0xa002f918 has v0 = one of a0, a1.

- `setscalable` in `sbin/stand/symmon.IP32` at 0xa002f920 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002f920-0xa002f948 (40 bytes).
  It occupies 40 bytes.
  2 such `sw` accesses store 4 bytes to abs 0xffffffffa003c76c, including `sw` at 0xa002f92c, `sw` at 0xa002f944.
  The `beq` branch at 0xa002f924 targets 0xa002f938, is taken when a0 == at(=0x8), and falls through when a0 != at(=0x8).
  The return at 0xa002f930 has v0 = 0xffffffffa0040000.
  The return at 0xa002f940 has v0 = 0xffffffffa0040000.

- `getscalable` in `sbin/stand/symmon.IP32` at 0xa002f948 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002f948-0xa002f964 (28 bytes).
  It occupies 28 bytes.
  The `lw` at 0xa002f94c loads 4 bytes from abs 0xffffffffa003c76c.
  The `beq` branch at 0xa002f950 targets 0xa002f95c, is taken when at(=[0xffffffffa003c76c]) == 0, and falls through when at(=[0xffffffffa003c76c]) != 0.
  The return at 0xa002f95c has v0 = one of 0x4, 0x8.

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

- `free` in `sbin/stand/symmon.IP32` at 0xa002fd18 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002fd18-0xa002fd8c (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xa002fd28 loads 4 bytes from a0 (arg0 at entry) -0x4.
  The `lw` at 0xa002fd44 loads 4 bytes from abs 0xffffffffa0039370.
  The `lw` at 0xa002fd58 loads 4 bytes from a0 (arg0 at entry) -0x8.
  The `sw` at 0xa002fd5c stores 4 bytes to a0 (arg0 at entry) -0x4.
  The `lw` at 0xa002fd60 loads 4 bytes from [a0-8] +0x4.
  The `sw` at 0xa002fd68 stores 4 bytes to abs 0xffffffffa005a3fc.
  The `lw` at 0xa002fd6c loads 4 bytes from [a0-8] +0x0.
  The `sw` at 0xa002fd70 stores 4 bytes to a0 (arg0 at entry) -0x8.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xa002fd74, `lw` at 0xa002fd78, `lw` at 0xa002fd80.
  The `beq` branch at 0xa002fd1c targets 0xa002fd84, is taken when a0 == 0, and falls through when a0 != 0.
  The `bne` branch at 0xa002fd30 targets 0xa002fd84, is taken when at(=[a0-4]) != v0(=0xbeefed), and falls through when at(=[a0-4]) == v0(=0xbeefed).
  The `bne` branch at 0xa002fd3c targets 0xa002fd84, is taken when a3(=a0-8) < a2(=0xffffffffa003e660) (unsigned), and falls through when a3(=a0-8) >= a2(=0xffffffffa003e660) (unsigned).
  The `beq` branch at 0xa002fd50 targets 0xa002fd84, is taken when a3(=a0-8) >= a4(=[0xffffffffa0039370]+0xffffffffa003e660) (unsigned), and falls through when a3(=a0-8) < a4(=[0xffffffffa0039370]+0xffffffffa003e660) (unsigned).
  The `bne` branch at 0xa002fd64 targets 0xa002fd84, is taken when a6(=[[a0-8]+4]) != 0, and falls through when a6(=[[a0-8]+4]) == 0.
  The `beql` branch at 0xa002fd7c targets 0xa002fd70, is taken when a7(?) == 0, and falls through when a7(?) != 0; its branch-likely delay slot `lw t0,0(a2)` at 0xa002fd80 runs only when taken and is annulled on fall-through.
  The return at 0xa002fd84 has v0 = one of ?, 0xbeefed.

- `calloc` in `sbin/stand/symmon.IP32` at 0xa002fe54 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002fe54-0xa002fe70 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0xa002fe5c calls kern_calloc [0xa002fe70] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa002fe68 has v0 = ret(kern_calloc).

- `align_free` in `sbin/stand/symmon.IP32` at 0xa002ffa8 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002ffa8-0xa002ffc4 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0xa002ffb0 calls free [0xa002fd18] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa002ffbc has v0 = ret(free).

- `dmabuf_malloc` in `sbin/stand/symmon.IP32` at 0xa002ffc4 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002ffc4-0xa002ffe8 (36 bytes).
  It occupies 36 bytes.
  The `lw` at 0xa002ffcc loads 4 bytes from abs 0xffffffffa005a404.
  The `jal` at 0xa002ffd4 calls align_malloc [0xa002febc] with a0=a0 at entry (arg0), a1=[0xffffffffa005a404]+1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa002ffe0 has v0 = ret(align_malloc).

- `dmabuf_free` in `sbin/stand/symmon.IP32` at 0xa002ffe8 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa002ffe8-0xa0030004 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0xa002fff0 calls free [0xa002fd18] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa002fffc has v0 = ret(free).

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
  The `lbu` at 0xa00300d0 loads 1 byte from ret(getcomponent) +0x0.
  The `lw` at 0xa00300e0 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `jal` at 0xa0030090 calls GetParent [0xa00241e4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa00300a0 calls walk_path [0xa0030074] with a0=ret(GetParent), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0xa00300ac calls getcomponent [0xa0030004] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xa00300bc calls strcat [0xa00308f0] with a0=ret(walk_path), a1=ret(getcomponent), a2=?, a3=?.
  The `jal` at 0xa00300c4 calls strlen [0xa00309ac] with a0=ret(walk_path), a1=?, a2=?, a3=?.
  The `jal` at 0xa00300e8 calls sprintf [0xa002e920] with a0=(ret(strlen) + ret(walk_path)), a1=0xffffffffa0037bd0, a2=[a0+16], a3=?.
  The `jal` at 0xa00300f0 calls strlen [0xa00309ac] with a0=(ret(strlen) + ret(walk_path)), a1=?, a2=?, a3=?.
  The `beq` branch at 0xa0030088 targets 0xa0030100, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0xa00300d4 targets 0xa00300fc, is taken when at(=[ret(getcomponent)]:1) == 0, and falls through when at(=[ret(getcomponent)]:1) != 0.
  The return at 0xa0030110 has v0 = one of a1, ?.

- `tolower` in `sbin/stand/symmon.IP32` at 0xa003015c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa003015c-0xa0030184 (40 bytes).
  It occupies 40 bytes.
  The `lbu` at 0xa0030168 loads 1 byte from a0 (arg0 at entry) -0x5ffc3ad7.
  The `lbu` at 0xa0030178 loads 1 byte from a0 (arg0 at entry) -0x5ffc39d6.
  The `beq` branch at 0xa0030170 targets 0xa003017c, is taken when (at(=[a0-1610365655]:1) & 0x1) == 0, and falls through when (at(=[a0-1610365655]:1) & 0x1) != 0.
  The return at 0xa003017c has v0 = one of a0, [a0-1610365398]:1.

- `strcasecmp` in `sbin/stand/symmon.IP32` at 0xa0030184 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0030184-0xa0030224 (160 bytes).
  It occupies 160 bytes.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x0, including `lbu` at 0xa0030190, `lbu` at 0xa00301bc.
  The `lbu` at 0xa00301b0 loads 1 byte from a1 (arg1 at entry) +0x0.
  5 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xa00301c8, `lbu` at 0xa00301dc, `lbu` at 0xa00301e4.
  The `jal` at 0xa00301a0 calls tolower [0xa003015c] with a0=[a0]:1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa00301ac calls tolower [0xa003015c] with a0=[a1]:1, a1=?, a2=?, a3=?.
  The `jal` at 0xa00301cc calls tolower [0xa003015c] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa00301d8 calls tolower [0xa003015c] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa00301e8 calls tolower [0xa003015c] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa00301f4 calls tolower [0xa003015c] with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0xa00301b4 targets 0xa00301e8, is taken when s2(=ret(tolower)) != v0(=ret(tolower)), and falls through when s2(=ret(tolower)) == v0(=ret(tolower)).
  The `beq` branch at 0xa00301c0 targets 0xa003021c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beql` branch at 0xa00301e0 targets 0xa00301c0, is taken when s2(=ret(tolower)) == v0(=ret(tolower)), and falls through when s2(=ret(tolower)) != v0(=ret(tolower)); its branch-likely delay slot `lbu at,0(s1)` at 0xa00301e4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa003021c targets 0xa0030200 and is always taken.
  The return at 0xa0030214 has v0 = one of ?, 0x0.

- `inv_findcpu` in `sbin/stand/symmon.IP32` at 0xa0030360 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0030360-0xa00303d8 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xa0030398 loads 4 bytes from ret(GetChild) +0x20.
  The `jal` at 0xa0030368 calls GetChild [0xa00241c8] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa0030378 calls kl_inv_find [0xa0030eb8] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa00303a0 calls strncmp [0xa0030d60] with a0=[ret(GetChild)+32], a1=0xffffffffa0037bd8, a2=0x3, a3=?.
  The `bne` branch at 0xa0030370 targets 0xa0030390, is taken when v0(=ret(GetChild)) != 0, and falls through when v0(=ret(GetChild)) == 0.
  The `beq` branch at 0xa0030380 targets 0xa00303cc, is taken when v0(=ret(kl_inv_find)) == 0, and falls through when v0(=ret(kl_inv_find)) != 0.
  The `beq` branch at 0xa0030388 targets 0xa00303bc and is always taken.
  The `bne` branch at 0xa00303a8 targets 0xa00303b8, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0xa00303d0 targets 0xa00303bc and is always taken.
  The return at 0xa00303c4 has v0 = one of ret(kl_inv_find)+4, ?, 0x0.

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

- `find_type` in `sbin/stand/symmon.IP32` at 0xa00307c8 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00307c8-0xa0030864 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xa00307e4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `jal` at 0xa0030808 calls GetChild [0xa00241c8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa0030814 calls find_type [0xa00307c8] with a0=ret(GetChild), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0xa0030834 calls GetPeer [0xa00241c0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xa0030840 calls find_type [0xa00307c8] with a0=ret(GetPeer), a1=a1 at entry (arg1), a2=?, a3=?.
  The `beq` branch at 0xa00307dc targets 0xa003082c, is taken when a0 == 0, and falls through when a0 != 0.
  The `bne` branch at 0xa00307e8 targets 0xa0030808, is taken when at(=[a0+4]) != a1, and falls through when at(=[a0+4]) == a1.
  The `beq` branch at 0xa003081c targets 0xa0030834, is taken when v0(=ret(find_type)) == 0, and falls through when v0(=ret(find_type)) != 0.
  The `beq` branch at 0xa0030824 targets 0xa00307f0 and is always taken.
  The `beq` branch at 0xa003082c targets 0xa00307f0 and is always taken.
  The `beq` branch at 0xa0030848 targets 0xa0030858, is taken when v0(=ret(find_type)) == 0, and falls through when v0(=ret(find_type)) != 0.
  The `beq` branch at 0xa0030850 targets 0xa00307f4 and is always taken.
  The `beq` branch at 0xa003085c targets 0xa00307f4 and is always taken.
  The return at 0xa0030800 has v0 = one of ?, ret(find_type), 0x0.

- `count_type` in `sbin/stand/symmon.IP32` at 0xa0030864 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0030864-0xa00308f0 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xa0030890 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `jal` at 0xa0030898 calls GetChild [0xa00241c8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa00308a4 calls count_type [0xa0030864] with a0=ret(GetChild), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0xa00308b8 calls GetPeer [0xa00241c0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xa00308c4 calls count_type [0xa0030864] with a0=ret(GetPeer), a1=a1 at entry (arg1), a2=?, a3=?.
  The `bne` branch at 0xa003087c targets 0xa0030890, is taken when a0 != 0, and falls through when a0 == 0.
  The `beq` branch at 0xa0030888 targets 0xa00308d8 and is always taken.
  The `beq` branch at 0xa00308ac targets 0xa00308b8, is taken when v0(=ret(count_type)) == 0, and falls through when v0(=ret(count_type)) != 0.
  The `beq` branch at 0xa00308cc targets 0xa00308d8, is taken when v0(=ret(count_type)) == 0, and falls through when v0(=ret(count_type)) != 0.
  The return at 0xa00308e8 has v0 = one of 0x0, ?.

- `strlen` in `sbin/stand/symmon.IP32` at 0xa00309ac
  **Inferred.** A byte loop: it loads the byte at a0 at 0xa00309ac, exits at 0xa00309d0 when that byte is zero (branch at 0xa00309b4), and otherwise loops at 0xa00309c0 while the loaded byte is nonzero (branch at 0xa00309c8). The exit returns 0 or an unknown value. The loop is a NUL-terminated string scan, but the rendered facts do not show the return as a length, so the return value is not derived.
  Reviewed: 2026-11-12

- `strlen` in `sbin/stand/symmon.IP32` at 0xa00309ac
  **Inferred.** Loads a byte from a0 at 0xa00309ac and leaves at 0xa00309d0 when that byte is zero (the beq at 0xa00309b4). A second byte load at 0xa00309c0 sits in a loop closed by the bne at 0xa00309c8, taken while v1 is nonzero; the base of that load is not in the rendered facts. It returns 0 or an unknown value at 0xa00309d0. Role (from name): string length; a byte-at-a-time scan that stops at a zero byte matches it, but how the length is counted is not in the rendered facts.
  Reviewed: 2026-11-12

- `strlen` in `sbin/stand/symmon.IP32` at 0xa00309ac
  **Inferred.** Scans a byte string from a0: the first lbu at 0xa00309ac reads from a0, and the beq at 0xa00309b4 leaves for the return at 0xa00309d0 when that byte is zero. The loop body is the second lbu at 0xa00309c0, and its back-edge at 0xa00309c8 tests v1, whose value is an unknown register. The return at 0xa00309d0 yields 0x0 or an unknown register.
  Reviewed: 2026-11-12

- `strstr` in `sbin/stand/symmon.IP32` at 0xa0030a24 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0030a24-0xa0030ad0 (172 bytes).
  It occupies 172 bytes.
  The `lbu` at 0xa0030a2c loads 1 byte from a1 (arg1 at entry) +0x0.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x0, including `lbu` at 0xa0030a38, `lbu` at 0xa0030acc.
  5 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xa0030a54, `lbu` at 0xa0030a58, `lbu` at 0xa0030a74.
  The `lbu` at 0xa0030a94 loads 1 byte from a1 (arg1 at entry) +0x1.
  The `lbu` at 0xa0030ab0 loads 1 byte from a1 (arg1 at entry) +0x2.
  The `beq` branch at 0xa0030a24 targets 0xa0030ab8, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0xa0030a30 targets 0xa0030ab8, is taken when a7(=[a1]:1) == 0, and falls through when a7(=[a1]:1) != 0.
  The `beq` branch at 0xa0030a3c targets 0xa0030ab4, is taken when at(=[a0]:1) == 0, and falls through when at(=[a0]:1) != 0.
  The `beq` branch at 0xa0030a44 targets 0xa0030ac8 and is always taken.
  The `beq` branch at 0xa0030a4c targets 0xa0030ac0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xa0030a60 targets 0xa0030a4c, is taken when v1(?) == a4(?), and falls through when v1(?) != a4(?).
  The `beq` branch at 0xa0030a68 targets 0xa0030ac0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xa0030a78 targets 0xa0030ab4, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xa0030a88 targets 0xa0030a74, is taken when a2(?) != a4(=[a1]:1), and falls through when a2(?) == a4(=[a1]:1).
  The `bne` branch at 0xa0030a9c targets 0xa0030a68, is taken when a3(?) != a4(=[a1+1]:1), and falls through when a3(?) == a4(=[a1+1]:1).
  The `beq` branch at 0xa0030aa4 targets 0xa0030ac0, is taken when a4(=[a1+1]:1) == 0, and falls through when a4(=[a1+1]:1) != 0.
  The `beq` branch at 0xa0030aac targets 0xa0030a58 and is always taken.
  The `beq` branch at 0xa0030ac8 targets 0xa0030a84 and is always taken.
  The return at 0xa0030ab8 has v0 = one of a0, 0x0.
  The return at 0xa0030ac0 has v0 = ?.

- `strchr` in `sbin/stand/symmon.IP32` at 0xa0030ad0 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0030ad0-0xa0030b00 (48 bytes).
  It occupies 48 bytes.
  The `lbu` at 0xa0030ad0 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lbu` at 0xa0030ae4 loads 1 byte from ?.
  The `beq` branch at 0xa0030ad4 targets 0xa0030af4, is taken when at(=[a0]:1) == 0, and falls through when at(=[a0]:1) != 0.
  The `beq` branch at 0xa0030adc targets 0xa0030af8, is taken when a1 == v0(?), and falls through when a1 != v0(?).
  The `bne` branch at 0xa0030aec targets 0xa0030adc, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The return at 0xa0030af8 has v0 = one of ?, 0x0.

- `index` in `sbin/stand/symmon.IP32` at 0xa0030e70 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0030e70-0xa0030e94 (36 bytes).
  It occupies 36 bytes.
  The `lbu` at 0xa0030e74 loads 1 byte from ?.
  The `beq` branch at 0xa0030e78 targets 0xa0030e8c, is taken when a1 == a0(?), and falls through when a1 != a0(?).
  The `bne` branch at 0xa0030e80 targets 0xa0030e74, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The return at 0xa0030e8c has v0 = one of ?, 0x0.

- `rindex` in `sbin/stand/symmon.IP32` at 0xa0030e94 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0030e94-0xa0030eb8 (36 bytes).
  It occupies 36 bytes.
  The `lbu` at 0xa0030e98 loads 1 byte from ?.
  The `bne` branch at 0xa0030e9c targets 0xa0030ea8, is taken when a1 != a4(?), and falls through when a1 == a4(?).
  The `bne` branch at 0xa0030ea8 targets 0xa0030e98, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The return at 0xa0030eb0 has v0 = ?.

- `addlarge` in `sbin/stand/symmon.IP32` at 0xa00310b4 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00310b4-0xa0031140 (140 bytes).
  It occupies 140 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lw` at 0xa00310b4, `lw` at 0xa00310dc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xa00310b8, `lw` at 0xa00310cc.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0xa00310bc, `lw` at 0xa00310f4.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xa00310c0, `lw` at 0xa00310f0, `lw` at 0xa003113c.
  The `sw` at 0xa00310c8 stores 4 bytes to a2 (arg2 at entry) +0x4.
  The `sw` at 0xa0031104 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `bnel` branch at 0xa00310d4 targets 0xa00310f0, is taken when a5(=([a0+4] + [a1+4])) < at(=[a0+4]) (unsigned), and falls through when a5(=([a0+4] + [a1+4])) >= at(=[a0+4]) (unsigned); its branch-likely delay slot `addiu a5,zero,1` at 0xa00310d8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa00310e4 targets 0xa0031138, is taken when a5(=([a0+4] + [a1+4])) >= t0(=[a1+4]) (unsigned), and falls through when a5(=([a0+4] + [a1+4])) < t0(=[a1+4]) (unsigned).
  The `bltz` branch at 0xa0031100 targets 0xa0031120, is taken when a7(=[a0]) < 0 (signed), and falls through when a7(=[a0]) >= 0 (signed).
  The `bltz` branch at 0xa0031108 targets 0xa0031118, is taken when v0(=[a1]) < 0 (signed), and falls through when v0(=[a1]) >= 0 (signed).
  The `bltz` branch at 0xa0031110 targets 0xa0031130, is taken when a6(=(([a0] + [a1]) + one of 0x0, 0x1)) < 0 (signed), and falls through when a6(=(([a0] + [a1]) + one of 0x0, 0x1)) >= 0 (signed).
  The `bgez` branch at 0xa0031120 targets 0xa0031118, is taken when v0(=[a1]) >= 0 (signed), and falls through when v0(=[a1]) < 0 (signed).
  The `bltz` branch at 0xa0031128 targets 0xa0031118, is taken when a6(=(([a0] + [a1]) + one of 0x0, 0x1)) < 0 (signed), and falls through when a6(=(([a0] + [a1]) + one of 0x0, 0x1)) >= 0 (signed).
  The `beq` branch at 0xa0031138 targets 0xa00310f4 and is always taken.
  The return at 0xa0031118 has v0 = 0x0.
  The return at 0xa0031130 has v0 = 0x1.

- `longtolarge` in `sbin/stand/symmon.IP32` at 0xa0031178 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0031178-0xa0031194 (28 bytes).
  It occupies 28 bytes.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0xa0031180, `sw` at 0xa0031190.
  The `sw` at 0xa0031188 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `bltz` branch at 0xa0031178 targets 0xa003118c, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0xa003118c targets 0xa0031184 and is always taken.
  The return at 0xa0031184 has v0 = ?.

- `init_rb` in `sbin/stand/symmon.IP32` at 0xa00311b8 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00311b8-0xa003125c (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xa00311f4 loads 4 bytes from ?.
  6 such `sw` accesses store 4 bytes to ?, including `sw` at 0xa0031204, `sw` at 0xa0031218, `sw` at 0xa0031220.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0xa003121c, `sh` at 0xa0031224.
  The `jal` at 0xa00311c0 calls getcpuid [0xa002b274] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa00311d0 calls get_cpu_rb [0xa00312dc] with a0=ret(getcpuid), a1=?, a2=?, a3=?.
  The `jal` at 0xa00311e0 calls (unnamed) [0xa003125c] with a0=ret(getcpuid), a1=?, a2=?, a3=?.
  The `jal` at 0xa00311fc calls bzero [0xa002cfa8] with a0=?, a1=0x228, a2=?, a3=?.
  The `jal` at 0xa003123c calls checksum_rb [0xa0031310] with a0=?, a1=0xa, a2=0x200, a3=?.
  The `bne` branch at 0xa00311d8 targets 0xa00311f0, is taken when v0(=ret(get_cpu_rb)) != 0, and falls through when v0(=ret(get_cpu_rb)) == 0.
  The `beq` branch at 0xa00311e8 targets 0xa0031248, is taken when v0(=ret(0xa003125c)) == 0, and falls through when v0(=ret(0xa003125c)) != 0.
  The return at 0xa0031254 has v0 = one of ret(0xa003125c), ret(checksum_rb).

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

- `atobu` in `sbin/stand/symmon.IP32` at 0xa00314dc (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa00314dc-0xa0031580 (164 bytes).
  It occupies 164 bytes.
  The `lbu` at 0xa00314f4 loads 1 byte from ret(atob) +0x0.
  5 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0xa0031518, `lw` at 0xa0031524, `lw` at 0xa003152c.
  3 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0xa003154c, `sw` at 0xa003156c, `sw` at 0xa003157c.
  The `jal` at 0xa00314e8 calls atob [0xa002bea0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xa0031500 targets 0xa0031544, is taken when a2(=[ret(atob)]:1) == at(=0x4b), and falls through when a2(=[ret(atob)]:1) != at(=0x4b).
  The `beq` branch at 0xa003150c targets 0xa0031544, is taken when a2(=[ret(atob)]:1) == v0(=0x6b), and falls through when a2(=[ret(atob)]:1) != v0(=0x6b).
  The `beql` branch at 0xa0031514 targets 0xa0031574, is taken when a2(=[ret(atob)]:1) == v1(=0x4d), and falls through when a2(=[ret(atob)]:1) != v1(=0x4d); its branch-likely delay slot `lw a7,0(s0)` at 0xa0031518 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xa0031520 targets 0xa0031574, is taken when a2(=[ret(atob)]:1) == a0(=0x6d), and falls through when a2(=[ret(atob)]:1) != a0(=0x6d); its branch-likely delay slot `lw a7,0(s0)` at 0xa0031524 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xa0031528 targets 0xa0031564, is taken when a2(=[ret(atob)]:1) == a1(=0x50), and falls through when a2(=[ret(atob)]:1) != a1(=0x50); its branch-likely delay slot `lw a6,0(s0)` at 0xa003152c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa0031534 targets 0xa0031560, is taken when a2(=[ret(atob)]:1) == a4(=0x70), and falls through when a2(=[ret(atob)]:1) != a4(=0x70).
  The `beq` branch at 0xa003153c targets 0xa0031558 and is always taken.
  The `beq` branch at 0xa0031568 targets 0xa0031550 and is always taken.
  The `beq` branch at 0xa0031578 targets 0xa0031550 and is always taken.
  The return at 0xa0031558 has v0 = one of ret(atob), ret(atob)+1.
  The instructions from 0xa0031570 to 0xa0031570 are not reached by any path from the entry, and their branches are not listed.

- `atobu_ptr` in `sbin/stand/symmon.IP32` at 0xa0031580 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0031580-0xa003159c (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0xa0031588 calls atobu [0xa00314dc] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa0031594 has v0 = ret(atobu).

- `atobu_L` in `sbin/stand/symmon.IP32` at 0xa003159c (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa003159c-0xa003163c (160 bytes).
  It occupies 160 bytes.
  The `lbu` at 0xa00315b4 loads 1 byte from ret(atob_L) +0x0.
  5 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x0, including `ld` at 0xa00315e0, `ld` at 0xa00315f0, `ld` at 0xa0031600.
  3 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x0, including `sd` at 0xa0031608, `sd` at 0xa0031628, `sd` at 0xa0031638.
  The `jal` at 0xa00315a8 calls atob_L [0xa002c0d8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xa00315c0 targets 0xa0031600, is taken when a2(=[ret(atob_L)]:1) == at(=0x4b), and falls through when a2(=[ret(atob_L)]:1) != at(=0x4b).
  The `beq` branch at 0xa00315cc targets 0xa0031600, is taken when a2(=[ret(atob_L)]:1) == v0(=0x6b), and falls through when a2(=[ret(atob_L)]:1) != v0(=0x6b).
  The `beq` branch at 0xa00315d4 targets 0xa003162c, is taken when a2(=[ret(atob_L)]:1) == v1(=0x4d), and falls through when a2(=[ret(atob_L)]:1) != v1(=0x4d).
  The `beql` branch at 0xa00315dc targets 0xa0031630, is taken when a2(=[ret(atob_L)]:1) == a0(=0x6d), and falls through when a2(=[ret(atob_L)]:1) != a0(=0x6d); its branch-likely delay slot `ld a7,0(s0)` at 0xa00315e0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa00315e4 targets 0xa003161c, is taken when a2(=[ret(atob_L)]:1) == a1(=0x50), and falls through when a2(=[ret(atob_L)]:1) != a1(=0x50).
  The `beql` branch at 0xa00315ec targets 0xa0031620, is taken when a2(=[ret(atob_L)]:1) == a4(=0x70), and falls through when a2(=[ret(atob_L)]:1) != a4(=0x70); its branch-likely delay slot `ld a6,0(s0)` at 0xa00315f0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xa00315f8 targets 0xa0031614 and is always taken.
  The `beq` branch at 0xa0031624 targets 0xa003160c and is always taken.
  The `beq` branch at 0xa0031634 targets 0xa003160c and is always taken.
  The return at 0xa0031614 has v0 = one of ret(atob_L), ret(atob_L)+1.

- `EnterInteractiveMode` in `sbin/stand/symmon.IP32` at 0xa0031758 (n32).
  Evidence grade: inferred.
  Exact binary: `sbin/stand/symmon.IP32`.
  Range: 0xa0031758-0xa0031780 (40 bytes).
  It occupies 40 bytes.
  The `lw` at 0xa003175c loads 4 bytes from abs 0xffffffffa0001020.
  The `lw` at 0xa0031760 loads 4 bytes from [0xffffffffa0001020] +0x1c.
  The `jalr` at 0xa003176c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa0031778 has v0 = ret(?).
