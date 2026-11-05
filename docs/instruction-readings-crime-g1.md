# Instruction readings from hostfacts

Each entry records selected software behavior from its exact binary range. The readings are established for those binaries and do not establish hardware behavior.

- `VEC_int` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x0-0x200 (512 bytes).
  It occupies 512 bytes.
  The `lw` at 0x4 loads 4 bytes from abs 0xffffffffffffa2e0.
  The `ld` at 0xc loads 8 bytes from abs 0xffffffffb4000018.
  The `sd` at 0x18 stores 8 bytes to ?.
  3 such `sw` accesses store 4 bytes to abs 0xffffffffffffa2e0, including `sw` at 0x20, `sw` at 0x54, `sw` at 0x1c8.
  The `ld` at 0x24 loads 8 bytes from abs 0xffffffffffffa2d0.
  3 such `sd` accesses store 8 bytes to abs 0xffffffffb4000018, including `sd` at 0x2c, `sd` at 0x64, `sd` at 0x1d8.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x58, `ld` at 0x1cc.
  The `lw` at 0x84 loads 4 bytes from abs 0xffffffffffffa020.
  2 such `lb` accesses load 1 byte from abs 0xffffffffffffa03e, including `lb` at 0xa8, `lb` at 0x178.
  The `lw` at 0xb4 loads 4 bytes from abs 0xffffffffffffa014.
  The `lw` at 0xb8 loads 4 bytes from [-0x5fec] +0x280.
  The `lw` at 0xc0 loads 4 bytes from [[-0x5fec]+640] +0x0.
  3 such `sb` accesses store 1 byte to abs 0xffffffffffffa03f, including `sb` at 0xd8, `sb` at 0x128, `sb` at 0x16c.
  3 such `lw` accesses load 4 bytes from abs 0xffffffffffffa018, including `lw` at 0xe0, `lw` at 0x100, `lw` at 0x160.
  The `ld` at 0xec loads 8 bytes from a0 (arg0 at entry) +0xf8.
  The `ld` at 0xfc loads 8 bytes from a0 (arg0 at entry) +0x118.
  The `lb` at 0x118 loads 1 byte from abs 0xffffffffffffa043.
  The `lb` at 0x12c loads 1 byte from abs 0xffffffffffffa040.
  The `sb` at 0x130 stores 1 byte to abs 0xffffffffffffa043.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffa1a4, including `lw` at 0x140, `lw` at 0x1f4.
  The `sb` at 0x154 stores 1 byte to abs 0xffffffffffffa040.
  The `sw` at 0x164 stores 4 bytes to [-0x5fe8] +0x15c.
  The `jal` at 0x48 calls intr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=s0 at entry, a3=a3 at entry (arg3).
  Calls backtouser via direct with a0=[[[-0x5fec]+640]], a1=?, a2=?, a3=? (`j` at 0xcc).
  The `jal` at 0xe4 calls ktimer_switch with a0=[-0x5fe8], a1=0x1, a2=?, a3=?.
  Calls soft_trap via direct with a0=a0 at entry (arg0), a1=0x84, a2=?, a3=[a0+280]:8 (`j` at 0xf8).
  The `jal` at 0x110 calls ktimer_switch with a0=[-0x5fe8], a1=s7 at entry, a2=?, a3=?.
  The `jal` at 0x13c calls splhi with a0=?, a1=?, a2=?, a3=?.
  Calls resumeidle via direct with a0=0x0, a1=?, a2=?, a3=? (`j` at 0x158).
  The `jal` at 0x184 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x19c calls kpswtch with a0=?, a1=?, a2=?, a3=?.
  Calls exception_leave via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x1e0).
  The `jal` at 0x1f8 calls cmn_err with a0=0x0, a1=sym(.data), a2=sp, a3=?.
  The `bne` branch at 0x8c targets 0x1e0, is taken when sp(=sp) < k0(=[-0x5fe0]) (unsigned), and falls through when sp(=sp) >= k0(=[-0x5fe0]) (unsigned).
  The `bne` branch at 0x94 targets 0x1e8, is taken when sp(=sp) != k0(=[-0x5fe0]), and falls through when sp(=sp) == k0(=[-0x5fe0]).
  The `beq` branch at 0xa0 targets 0x100, is taken when (s0 & 0x18) == 0, and falls through when (s0 & 0x18) != 0.
  The `bne` branch at 0xac targets 0xd4, is taken when a0(=[-0x5fc2]:1) != 0, and falls through when a0(=[-0x5fc2]:1) == 0.
  The `bne` branch at 0xc4 targets 0xd4, is taken when a0(=[[[-0x5fec]+640]]) != 0, and falls through when a0(=[[[-0x5fec]+640]]) == 0.
  The `beq` branch at 0x108 targets 0x118, is taken when a0(=[-0x5fe8]) == 0, and falls through when a0(=[-0x5fe8]) != 0.
  The `beq` branch at 0x11c targets 0x160, is taken when k0(=[-0x5fbd]:1) == 0, and falls through when k0(=[-0x5fbd]:1) != 0.
  The `beq` branch at 0x134 targets 0x1e0, is taken when k0(=[-0x5fc0]:1) == 0, and falls through when k0(=[-0x5fc0]:1) != 0.
  The `beq` branch at 0x170 targets 0x1e0, is taken when s3(=ret(intr)) == 0, and falls through when s3(=ret(intr)) != 0.
  The `beq` branch at 0x17c targets 0x1e0, is taken when v0(=[-0x5fc2]:1) == 0, and falls through when v0(=[-0x5fc2]:1) != 0.
- `tfp_special_int_exit` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x84 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x84-0x19c (280 bytes).
  It occupies 280 bytes.
  The `lw` at 0x84 loads 4 bytes from abs 0xffffffffffffa020.
  2 such `lb` accesses load 1 byte from abs 0xffffffffffffa03e, including `lb` at 0xa8, `lb` at 0x178.
  The `lw` at 0xb4 loads 4 bytes from abs 0xffffffffffffa014.
  The `lw` at 0xb8 loads 4 bytes from [-0x5fec] +0x280.
  The `lw` at 0xc0 loads 4 bytes from [[-0x5fec]+640] +0x0.
  3 such `sb` accesses store 1 byte to abs 0xffffffffffffa03f, including `sb` at 0xd8, `sb` at 0x128, `sb` at 0x16c.
  3 such `lw` accesses load 4 bytes from abs 0xffffffffffffa018, including `lw` at 0xe0, `lw` at 0x100, `lw` at 0x160.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0xec, `ld` at 0xfc.
  The `lb` at 0x118 loads 1 byte from abs 0xffffffffffffa043.
  The `lb` at 0x12c loads 1 byte from abs 0xffffffffffffa040.
  The `sb` at 0x130 stores 1 byte to abs 0xffffffffffffa043.
  The `lw` at 0x140 loads 4 bytes from abs 0xffffffffffffa1a4.
  The `sb` at 0x154 stores 1 byte to abs 0xffffffffffffa040.
  The `sw` at 0x164 stores 4 bytes to [-0x5fe8] +0x15c.
  Calls backtouser via direct with a0=[[[-0x5fec]+640]], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xcc).
  The `jal` at 0xe4 calls ktimer_switch with a0=[-0x5fe8], a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  Calls soft_trap via direct with a0=?, a1=0x84, a2=?, a3=? (`j` at 0xf8).
  The `jal` at 0x110 calls ktimer_switch with a0=[-0x5fe8], a1=s7 at entry, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x13c calls splhi with a0=?, a1=?, a2=?, a3=?.
  Calls resumeidle via direct with a0=0x0, a1=?, a2=?, a3=? (`j` at 0x158).
  The `jal` at 0x184 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x8c targets 0x1e0, is taken when sp(=sp) < k0(=[-0x5fe0]) (unsigned), and falls through when sp(=sp) >= k0(=[-0x5fe0]) (unsigned).
  The `bne` branch at 0x94 targets 0x1e8, is taken when sp(=sp) != k0(=[-0x5fe0]), and falls through when sp(=sp) == k0(=[-0x5fe0]).
  The `beq` branch at 0xa0 targets 0x100, is taken when (s0 & 0x18) == 0, and falls through when (s0 & 0x18) != 0.
  The `bne` branch at 0xac targets 0xd4, is taken when a0(=[-0x5fc2]:1) != 0, and falls through when a0(=[-0x5fc2]:1) == 0.
  The `bne` branch at 0xc4 targets 0xd4, is taken when a0(=[[[-0x5fec]+640]]) != 0, and falls through when a0(=[[[-0x5fec]+640]]) == 0.
  The `beq` branch at 0x108 targets 0x118, is taken when a0(=[-0x5fe8]) == 0, and falls through when a0(=[-0x5fe8]) != 0.
  The `beq` branch at 0x11c targets 0x160, is taken when k0(=[-0x5fbd]:1) == 0, and falls through when k0(=[-0x5fbd]:1) != 0.
  The `beq` branch at 0x134 targets 0x1e0, is taken when k0(=[-0x5fc0]:1) == 0, and falls through when k0(=[-0x5fc0]:1) != 0.
  The `beq` branch at 0x170 targets 0x1e0, is taken when s3 == 0, and falls through when s3 != 0.
  The `beq` branch at 0x17c targets 0x1e0, is taken when v0(=[-0x5fc2]:1) == 0, and falls through when v0(=[-0x5fc2]:1) != 0.
- `arcs_write` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x200 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x200-0x224 (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0x210 calls mh16550_console_write with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=a3 at entry (arg3), a3=a3 at entry (arg3).
  The return at 0x21c has v0 = ret(mh16550_console_write).
- `arcs_load` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x224 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x224-0x2b4 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0x264 loads 4 bytes from abs 0xffffffffa0001020.
  The `lw` at 0x278 loads 4 bytes from [0xffffffffa0001020] +0x0.
  The `jal` at 0x27c calls call_prom_cached with a0=?, a1=a1 at entry (arg1), a2=?, a3=?, a4=[[0xffffffffa0001020]], a6=a0 at entry (arg0), a7=a2 at entry (arg2).
  The `jal` at 0x298 calls cmn_err with a0=0x0, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=a0 at entry (arg0), a7=a2 at entry (arg2).
  The `bne` branch at 0x248 targets 0x290, is taken when at(=[sym(_prom_cleared)]) != 0, and falls through when at(=[sym(_prom_cleared)]) == 0.
  The `beq` branch at 0x2ac targets 0x250 and is always taken.
  The return at 0x288 has v0 = ret(call_prom_cached).
- `arcs_setuproot` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x3b8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x3b8-0x404 (76 bytes).
  It occupies 76 bytes.
  The `jal` at 0x3c4 calls kopt_find with a0=sym(.rodata)+96, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3d8 calls .text with a0=ret(kopt_find), a1=sp-32, a2=?, a3=?.
  The `jal` at 0x3f0 calls kopt_set with a0=sym(.rodata)+128, a1=sp-32, a2=?, a3=?.
  The `beq` branch at 0x3cc targets 0x3fc, is taken when v0(=ret(kopt_find)) == 0, and falls through when v0(=ret(kopt_find)) != 0.
  The `beq` branch at 0x3e0 targets 0x3fc, is taken when v0(=ret(.text)) == 0, and falls through when v0(=ret(.text)) != 0.
  The return at 0x3fc has v0 = one of ret(kopt_find), ret(.text), ret(kopt_set).
- `arcs_getenv` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x404 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x404-0x448 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x41c loads 4 bytes from abs 0xffffffffa0001020.
  The `lw` at 0x438 loads 4 bytes from [0xffffffffa0001020] +0x78.
  The `jal` at 0x434 calls call_prom_cached with a0=?, a1=0x0, a2=0x0, a3=0x0, a4=[[0xffffffffa0001020]+120], a5=0xffffffff80000000, a6=0x1fffffff.
  The return at 0x440 has v0 = ret(call_prom_cached).
- `arcs_nvram_tab` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x448 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x448-0x488 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x45c loads 4 bytes from abs 0xffffffffa0001028.
  The `lw` at 0x478 loads 4 bytes from [0xffffffffa0001028] +0x4.
  The `jal` at 0x474 calls call_prom_cached with a0=?, a1=a1 at entry (arg1), a2=0x0, a3=0x0, a4=[[0xffffffffa0001028]+4], a5=0xffffffff80000000, a6=0x1fffffff.
  The return at 0x480 has v0 = ret(call_prom_cached).
- `arcs_eaddr` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x488 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x488-0x4b0 (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0x49c calls bcopy with a0=sym(eaddr), a1=a0 at entry (arg0), a2=0x6, a3=a3 at entry (arg3).
  The return at 0x4a8 has v0 = ret(bcopy).
- `prom_eaddr` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x4b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x4b0-0x4cc (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x4b8 calls arcs_eaddr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x4c4 has v0 = ret(arcs_eaddr).
- `exception_exit` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x70c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x70c-0x800 (244 bytes).
  It occupies 244 bytes.
  The `lb` at 0x720 loads 1 byte from abs 0xffffffffffffa03e.
  The `lw` at 0x72c loads 4 bytes from abs 0xffffffffffffa014.
  The `lw` at 0x730 loads 4 bytes from [-0x5fec] +0x280.
  The `lw` at 0x738 loads 4 bytes from [[-0x5fec]+640] +0x0.
  22 such `ld` accesses load 8 bytes from ?, including `ld` at 0x758, `ld` at 0x764, `ld` at 0x768.
  Calls backtouser via direct with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x744).
  Calls soft_trap via direct with a0=?, a1=0x84, a2=a2 at entry (arg2), a3=? (`j` at 0x754).
  The `jal` at 0x75c calls tfi_restore with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x718 targets 0x75c, is taken when (s0 & 0x18) == 0, and falls through when (s0 & 0x18) != 0.
  The `bne` branch at 0x724 targets 0x74c, is taken when k0(=[-0x5fc2]:1) != 0, and falls through when k0(=[-0x5fc2]:1) == 0.
  The `bne` branch at 0x73c targets 0x74c, is taken when k0(=[[[-0x5fec]+640]]) != 0, and falls through when k0(=[[[-0x5fec]+640]]) == 0.
- `exception_leave` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x75c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x75c-0x800 (164 bytes).
  It occupies 164 bytes.
  21 such `ld` accesses load 8 bytes from ?, including `ld` at 0x764, `ld` at 0x768, `ld` at 0x76c.
  The `jal` at 0x75c calls tfi_restore with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
- `unmaptlb` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x800 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x800-0x8ac (172 bytes).
  It occupies 172 bytes.
  The `lbu` at 0x830 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `beq` branch at 0x828 targets 0x834, is taken when a0 == 0, and falls through when a0 != 0.
  The `bltz` branch at 0x874 targets 0x89c, is taken when t3(?) < 0 (signed), and falls through when t3(?) >= 0 (signed).
  The return at 0x8a4 has v0 = one of 0x0, ?.
- `tlbdropin` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x9ac (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x9ac-0xaf0 (324 bytes).
  It occupies 324 bytes.
  The `lbu` at 0x9f4 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `beq` branch at 0x9dc targets 0x9f8, is taken when a0 == 0, and falls through when a0 != 0.
  The `bne` branch at 0x9e4 targets 0x9f4, is taken when a0 != at(=0x1), and falls through when a0 == at(=0x1).
  The `beq` branch at 0x9ec targets 0x9f8 and is always taken.
  The `bltz` branch at 0xa40 targets 0xab0, is taken when t3(?) < 0 (signed), and falls through when t3(?) >= 0 (signed).
  The `beq` branch at 0xa54 targets 0xa70, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0xa68 targets 0xa80 and is always taken.
  The `beq` branch at 0xab0 targets 0xac8, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0xac0 targets 0xad8 and is always taken.
  The return at 0xaa8 has v0 = ?.
  The return at 0xae8 has v0 = 0x0.
- `tlbfind` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xc84 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xc84-0xd38 (180 bytes).
  It occupies 180 bytes.
  The `sw` at 0xd08 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `sw` at 0xd10 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `bltz` branch at 0xcec targets 0xd1c, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `beq` branch at 0xd14 targets 0xd20 and is always taken.
  The return at 0xd30 has v0 = one of ?, -0x1.
- `save` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xed0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xed0-0xf0c (60 bytes).
  It occupies 60 bytes.
  The `sd` at 0xed4 stores 8 bytes to a0 (arg0 at entry) +0x50.
  The `sd` at 0xed8 stores 8 bytes to a0 (arg0 at entry) +0x40.
  The `sd` at 0xedc stores 8 bytes to a0 (arg0 at entry) +0x48.
  The `sd` at 0xee0 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `sd` at 0xee4 stores 8 bytes to a0 (arg0 at entry) +0x8.
  The `sd` at 0xee8 stores 8 bytes to a0 (arg0 at entry) +0x10.
  The `sd` at 0xeec stores 8 bytes to a0 (arg0 at entry) +0x18.
  The `sd` at 0xef0 stores 8 bytes to a0 (arg0 at entry) +0x58.
  The `sd` at 0xef4 stores 8 bytes to a0 (arg0 at entry) +0x20.
  The `sd` at 0xef8 stores 8 bytes to a0 (arg0 at entry) +0x28.
  The `sd` at 0xefc stores 8 bytes to a0 (arg0 at entry) +0x30.
  The `sd` at 0xf00 stores 8 bytes to a0 (arg0 at entry) +0x38.
  The return at 0xf04 has v0 = 0x0.
- `resume` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xf0c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xf0c-0x1064 (344 bytes).
  It occupies 344 bytes.
  The `sb` at 0xf24 stores 1 byte to abs 0xffffffffffffa03f.
  The `sb` at 0xf28 stores 1 byte to a1 (arg1 at entry) +0x72.
  The `sb` at 0xf2c stores 1 byte to a0 (arg0 at entry) +0x72.
  The `sw` at 0xf30 stores 4 bytes to abs 0xffffffffffffa018.
  The `sw` at 0xf34 stores 4 bytes to abs 0xffffffffffffa014.
  The `lw` at 0xf38 loads 4 bytes from a0 (arg0 at entry) +0x284.
  The `sw` at 0xf3c stores 4 bytes to abs 0xffffffffffffa244.
  The `lw` at 0xf68 loads 4 bytes from abs 0xffffffffffffa35c.
  The `lw` at 0xf74 loads 4 bytes from abs 0xffffffffffffa240.
  The `lw` at 0xf78 loads 4 bytes from abs 0xffffffffffffa354.
  The `sw` at 0xf7c stores 4 bytes to abs 0xffffffffffffa35c.
  The `lw` at 0xfbc loads 4 bytes from a0 (arg0 at entry) +0x280.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xfd0, `lw` at 0xfd4, `lw` at 0xfd8.
  The `ld` at 0x1018 loads 8 bytes from a0 (arg0 at entry) +0x50.
  The `ld` at 0x101c loads 8 bytes from a0 (arg0 at entry) +0x40.
  The `ld` at 0x1020 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x1024 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ld` at 0x1028 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x102c loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ld` at 0x1030 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0x1034 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x1038 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x103c loads 8 bytes from a0 (arg0 at entry) +0x58.
  The `ld` at 0x1040 loads 8 bytes from a0 (arg0 at entry) +0x30.
  The `ld` at 0x1044 loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `beq` branch at 0xf20 targets 0xf2c, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0xf6c targets 0xfbc, is taken when t1(=[-0x5ca4]) == 0, and falls through when t1(=[-0x5ca4]) != 0.
  The `bne` branch at 0x1010 targets 0xfd0, is taken when t3(?) != s0(=0xa), and falls through when t3(?) == s0(=0xa).
  The return at 0x105c has v0 = 0x1.
- `resumethread` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1064 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1064-0x10f0 (140 bytes).
  It occupies 140 bytes.
  The `sb` at 0x108c stores 1 byte to a0 (arg0 at entry) +0x72.
  The `sw` at 0x1090 stores 4 bytes to abs 0xffffffffffffa018.
  The `sw` at 0x1094 stores 4 bytes to abs 0xffffffffffffa014.
  The `sb` at 0x1098 stores 1 byte to abs 0xffffffffffffa03f.
  The `ld` at 0x10a0 loads 8 bytes from a0 (arg0 at entry) +0x40.
  The `sb` at 0x10a8 stores 1 byte to a1 (arg1 at entry) +0x72.
  The `ld` at 0x10ac loads 8 bytes from a0 (arg0 at entry) +0x50.
  The `ld` at 0x10b0 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x10b4 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ld` at 0x10b8 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x10bc loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ld` at 0x10c0 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0x10c4 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x10c8 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x10cc loads 8 bytes from a0 (arg0 at entry) +0x30.
  The `ld` at 0x10d0 loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `beq` branch at 0x109c targets 0x10ac, is taken when a0 == a1, and falls through when a0 != a1.
  The `bnel` branch at 0x10a4 targets 0x10ac, is taken when a1 != 0, and falls through when a1 == 0; its branch-likely delay slot `sb zero,114(a1)` at 0x10a8 runs only when taken and is annulled on fall-through.
- `restartxthread` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x10f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x10f0-0x114c (92 bytes).
  It occupies 92 bytes.
  The `sb` at 0x1110 stores 1 byte to a0 (arg0 at entry) +0x72.
  The `sw` at 0x1114 stores 4 bytes to abs 0xffffffffffffa018.
  The `sw` at 0x1118 stores 4 bytes to abs 0xffffffffffffa014.
  The `sb` at 0x111c stores 1 byte to abs 0xffffffffffffa03f.
  The `sb` at 0x112c stores 1 byte to a2 (arg2 at entry) +0x72.
  Calls xthread_prologue via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1144).
  The `beq` branch at 0x1120 targets 0x1130, is taken when a0 == a2, and falls through when a0 != a2.
  The `bnel` branch at 0x1128 targets 0x1130, is taken when a2 != 0, and falls through when a2 == 0; its branch-likely delay slot `sb zero,114(a2)` at 0x112c runs only when taken and is annulled on fall-through.
- `loopxthread` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x114c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x114c-0x1154 (8 bytes).
  It occupies 8 bytes.
  Calls xthread_loop_prologue via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x114c).
- `sthread_launch` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1154 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1154-0x1178 (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0x1154 calls spl0 with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1168 calls (unknown callee) with a0=s0 at entry, a1=s1 at entry, a2=s2 at entry, a3=s3 at entry.
  The `jal` at 0x1170 calls sthread_exit with a0=?, a1=?, a2=?, a3=?.
- `p0_launch` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1178 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1178-0x1190 (24 bytes).
  It occupies 24 bytes.
  The `jal` at 0x1178 calls spl0 with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1180 calls p0 with a0=?, a1=?, a2=?, a3=?.
  Calls proc1 via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x1188).
- `resumeidle` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1190 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1190-0x11fc (108 bytes).
  It occupies 108 bytes.
  The `sb` at 0x11b8 stores 1 byte to abs 0xffffffffffffa03f.
  The `lw` at 0x11bc loads 4 bytes from abs 0xffffffffffffa1a4.
  The `sb` at 0x11c8 stores 1 byte to a0 (arg0 at entry) +0x72.
  The `sw` at 0x11cc stores 4 bytes to abs 0xffffffffffffa018.
  The `sw` at 0x11d0 stores 4 bytes to abs 0xffffffffffffa014.
  The `jal` at 0x11e8 calls idle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x11f4 calls resumenewthread with a0=ret(idle), a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x11c0 targets 0x11cc, is taken when a0 == 0, and falls through when a0 != 0.
- `toidlestk` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x11fc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x11fc-0x1260 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x1224 loads 4 bytes from abs 0xffffffffffffa1a4.
  The `sb` at 0x1228 stores 1 byte to abs 0xffffffffffffa03f.
  The `sw` at 0x122c stores 4 bytes to abs 0xffffffffffffa018.
  The `sw` at 0x1230 stores 4 bytes to abs 0xffffffffffffa014.
  The `sb` at 0x1234 stores 1 byte to a0 (arg0 at entry) +0x72.
  Calls (unknown callee) via register with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x1258).
- `dummy_func` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x12f8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x12f8-0x1300 (8 bytes).
  It occupies 8 bytes.
  The return at 0x12f8 has v0 = ?.
- `dki_dcache_wb` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1300 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1300-0x130c (12 bytes).
  It occupies 12 bytes.
  Calls cache_operation via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x21002, a3=a3 at entry (arg3) (`j` at 0x1304).
- `dcache_wbinval` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x130c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x130c-0x1314 (8 bytes).
  It occupies 8 bytes.
  Calls dki_dcache_wbinval via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x130c).
- `_dki_dcache_wbinval` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1314 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1314-0x1320 (12 bytes).
  It occupies 12 bytes.
  Calls cache_operation via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x21003, a3=a3 at entry (arg3) (`j` at 0x1318).
- `_dki_dcache_inval` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1320 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1320-0x132c (12 bytes).
  It occupies 12 bytes.
  Calls cache_operation via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x21001, a3=a3 at entry (arg3) (`j` at 0x1324).
- `__cdx_blkfill` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x132c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x132c-0x1358 (44 bytes).
  It occupies 44 bytes.
  4 such `sd` accesses store 8 bytes to ?, including `sd` at 0x1338, `sd` at 0x133c, `sd` at 0x1340.
  The `beq` branch at 0x132c targets 0x1350, is taken when a1 == 0, and falls through when a1 != 0.
  The `bnel` branch at 0x1348 targets 0x1338, is taken when a0(?) != v0(=(a0 + a1)-32), and falls through when a0(?) == v0(=(a0 + a1)-32); its branch-likely delay slot `addiu a0,a0,32` at 0x134c runs only when taken and is annulled on fall-through.
  The return at 0x1350 has v0 = one of (a0 + a1), (a0 + a1)-32.
- `__cdx_blkcopy` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1358 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1358-0x13e0 (136 bytes).
  It occupies 136 bytes.
  8 such `ld` accesses load 8 bytes from ?, including `ld` at 0x136c, `ld` at 0x1370, `ld` at 0x1378.
  8 such `sd` accesses store 8 bytes to ?, including `sd` at 0x1374, `sd` at 0x137c, `sd` at 0x1384.
  The `beq` branch at 0x135c targets 0x1398, is taken when a2 == 0, and falls through when a2 != 0.
  The `bne` branch at 0x1364 targets 0x13a0, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bnel` branch at 0x1390 targets 0x136c, is taken when a1(?) != v0(=(a1 + a2)), and falls through when a1(?) == v0(=(a1 + a2)); its branch-likely delay slot `addiu a0,a0,32` at 0x1394 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0x13d0 targets 0x13ac, is taken when a1(?) != v0(=a1), and falls through when a1(?) == v0(=a1); its branch-likely delay slot `addi a0,a0,-32` at 0x13d4 runs only when taken and is annulled on fall-through.
  The return at 0x1398 has v0 = a1.
  The return at 0x13d8 has v0 = a1.
- `dummyret0_func` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x13f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x13f0-0x13f8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x13f0 has v0 = 0x0.
- `dummyret1_func` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x13f8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x13f8-0x1400 (8 bytes).
  It occupies 8 bytes.
  The return at 0x13f8 has v0 = 0x1.
- `_get_timestamp` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1400 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1400-0x1408 (8 bytes).
  It occupies 8 bytes.
  Calls get_r4k_counter via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1400).
- `scrub_memory` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1408 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1408-0x1414 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x1408 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sd` at 0x1410 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The return at 0x140c has v0 = ?.
- `getcachesz` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1494 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1494-0x14b4 (32 bytes).
  It occupies 32 bytes.
  The return at 0x14ac has v0 = ?.
- `get_r10k_config` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x14b4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x14b4-0x14c0 (12 bytes).
  It occupies 12 bytes.
  The return at 0x14b8 has v0 = ?.
- `set_r10k_config` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x14c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x14c0-0x14cc (12 bytes).
  It occupies 12 bytes.
  The return at 0x14c4 has v0 = ?.
- `_get_r4k_counter` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1500 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1500-0x151c (28 bytes).
  It occupies 28 bytes.
  The return at 0x1514 has v0 = ?.
- `get_r4k_config` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1528 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1528-0x1534 (12 bytes).
  It occupies 12 bytes.
  The return at 0x152c has v0 = ?.
- `in_cksum_sub` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x15d4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x15d4-0x1a04 (1072 bytes).
  It occupies 1072 bytes.
  The `lbu` at 0x1600 loads 1 byte from a0 (arg0 at entry) +0x0.
  3 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x1624, `lhu` at 0x164c, `lhu` at 0x1984.
  3 such `lwu` accesses load 4 bytes from ?, including `lwu` at 0x1668, `lwu` at 0x1690, `lwu` at 0x195c.
  31 such `ld` accesses load 8 bytes from ?, including `ld` at 0x16ec, `ld` at 0x16fc, `ld` at 0x170c.
  The `lbu` at 0x19ac loads 1 byte from ?.
  The `bne` branch at 0x15d8 targets 0x15e8, is taken when a1 != 0, and falls through when a1 == 0.
  The `beq` branch at 0x15e8 targets 0x16dc, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x15f0 targets 0x165c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x15f8 targets 0x1618, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x161c targets 0x19a4, is taken when a1(?) < 0x2 (signed), and falls through when a1(?) >= 0x2 (signed).
  The `bne` branch at 0x1638 targets 0x19a4, is taken when a1(?) < 0x2 (signed), and falls through when a1(?) >= 0x2 (signed).
  The `beq` branch at 0x1644 targets 0x165c, is taken when (a0(?) & 0x2) == 0, and falls through when (a0(?) & 0x2) != 0.
  The `bne` branch at 0x1660 targets 0x197c, is taken when a1(?) < 0x4 (signed), and falls through when a1(?) >= 0x4 (signed).
  The `bne` branch at 0x167c targets 0x197c, is taken when a1(?) < 0x4 (signed), and falls through when a1(?) >= 0x4 (signed).
  The `beq` branch at 0x1688 targets 0x16a0, is taken when (a0(?) & 0x4) == 0, and falls through when (a0(?) & 0x4) != 0.
  The `bne` branch at 0x16e0 targets 0x1804, is taken when a1(?) < 0x80 (signed), and falls through when a1(?) >= 0x80 (signed).
  The `beq` branch at 0x17f4 targets 0x16e8, is taken when a1(?) >= 0x80 (signed), and falls through when a1(?) < 0x80 (signed).
  The `beq` branch at 0x17fc targets 0x19c4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1804 targets 0x189c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1894 targets 0x19c4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x189c targets 0x18f4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x18ec targets 0x19c4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x18f4 targets 0x192c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1924 targets 0x19c4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x192c targets 0x1954, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x194c targets 0x19c4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1954 targets 0x197c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1974 targets 0x19c4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x197c targets 0x19a4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x199c targets 0x19c4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x19a4 targets 0x19c4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The return at 0x15e0 has v0 = a2.
  The return at 0x19fc has v0 = ?.
- `in_cksum_pref` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x16e8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x16e8-0x1a10 (808 bytes).
  It occupies 808 bytes.
  31 such `ld` accesses load 8 bytes from ?, including `ld` at 0x16ec, `ld` at 0x16fc, `ld` at 0x170c.
  The `lwu` at 0x195c loads 4 bytes from ?.
  The `lhu` at 0x1984 loads 2 bytes from ?.
  The `lbu` at 0x19ac loads 1 byte from ?.
  The `beq` branch at 0x17f4 targets 0x16e8, is taken when a1(?) >= 0x80 (signed), and falls through when a1(?) < 0x80 (signed).
  The `beq` branch at 0x17fc targets 0x19c4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1804 targets 0x189c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1894 targets 0x19c4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x189c targets 0x18f4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x18ec targets 0x19c4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x18f4 targets 0x192c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1924 targets 0x19c4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x192c targets 0x1954, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x194c targets 0x19c4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1954 targets 0x197c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1974 targets 0x19c4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x197c targets 0x19a4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x199c targets 0x19c4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x19a4 targets 0x19c4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The return at 0x19fc has v0 = ?.
  The instructions from 0x1a04 to 0x1a0c are not reached by any path from the entry, and their branches are not listed.
- `mlclosure` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1ba0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1ba0-0x1be8 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0x1ba8 loads 4 bytes from sym(sysent) +0x0.
  The `lw` at 0x1bb4 loads 4 bytes from sym(biomove) +0x0.
  The `lw` at 0x1bc0 loads 4 bytes from sym(uuid_create) +0x0.
  The `lw` at 0x1bcc loads 4 bytes from sym(setmask) +0x0.
  The `lw` at 0x1bd8 loads 4 bytes from sym(reclock) +0x0.
  The `lw` at 0x1be4 loads 4 bytes from sym(ddi_lock) +0x0.
- `silence_all_audio` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1be8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1be8-0x1bf0 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1be8 has v0 = ?.
- `icode` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1bf0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1bf0-0x1c50 (96 bytes).
  It occupies 96 bytes.
  The `sw` at 0x1c28 stores 4 bytes to table(0x10000200) +0x0.
  The `beq` branch at 0x1c44 targets 0x1c44 and is always taken.
  The instructions from 0x1c4c to 0x1c4c are not reached by any path from the entry, and their branches are not listed.
- `eicode` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1c4c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1c4c-0x1c50 (4 bytes).
  It occupies 4 bytes.
- `call_prom_cached` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1c50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1c50-0x1d40 (240 bytes).
  It occupies 240 bytes.
  11 such `sd` accesses store 8 bytes to ?, including `sd` at 0x1c64, `sd` at 0x1c68, `sd` at 0x1c6c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x1cb8).
  The instructions from 0x1cc0 to 0x1d3c are not reached by any path from the entry, and their branches are not listed.
- `init_flash_rom` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x2350 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x2350-0x237c (44 bytes).
  It occupies 44 bytes.
  The `jal` at 0x2358 calls flash_sync_globals with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2368 calls bzero with a0=sym(.bss), a1=0x93c, a2=?, a3=?.
  The return at 0x2374 has v0 = ret(bzero).
- `update_flash_version` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x24f4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x24f4-0x2510 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x24fc calls .text with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2508 has v0 = ret(.text).
- `load_nvram_tab` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x2510 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x2510-0x252c (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x2518 calls init_flash_rom with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2524 has v0 = ret(init_flash_rom).
- `flash_version` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x252c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x252c-0x2540 (20 bytes).
  It occupies 20 bytes.
  The `beq` branch at 0x252c targets 0x2538, is taken when a0 == 0, and falls through when a0 != 0.
  The return at 0x2538 has v0 = one of [sym(.sbss)+16], [sym(.sbss)+20].
- `flash_write_sector` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x2574 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x2574-0x2694 (288 bytes).
  It occupies 288 bytes.
  The `lbu` at 0x25bc loads 1 byte from ?.
  2 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0xff, including `lbu` at 0x2608, `lbu` at 0x2630.
  The `jal` at 0x259c calls splecc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x25a8 calls .text with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x25c0 calls pciio_pio_write8 with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x25dc calls .text with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x25e8 calls splxecc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x25f0 calls us_delay with a0=0x1b58, a1=?, a2=?, a3=?.
  The `jal` at 0x2600 calls pciio_pio_read8 with a0=a0+255, a1=?, a2=?, a3=?.
  The `jal` at 0x2618 calls us_delay with a0=0x3e8, a1=?, a2=?, a3=?.
  The `jal` at 0x2628 calls pciio_pio_read8 with a0=a0+255, a1=?, a2=?, a3=?.
  The `jal` at 0x2668 calls cmn_err with a0=0x4, a1=sym(.rodata)+1104, a2=a0 at entry (arg0), a3=?.
  The `jal` at 0x2684 calls cmn_err with a0=0x4, a1=sym(.rodata)+1024, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `bne` branch at 0x2594 targets 0x2678, is taken when (a0 & 0xff) != 0, and falls through when (a0 & 0xff) == 0.
  The `bne` branch at 0x25d4 targets 0x25bc, is taken when s2(?) < 0x100 (signed), and falls through when s2(?) >= 0x100 (signed).
  The `beq` branch at 0x2610 targets 0x2640, is taken when v1(=[a1+255]:1) == a0(?), and falls through when v1(=[a1+255]:1) != a0(?).
  The `beq` branch at 0x2620 targets 0x265c, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x2638 targets 0x2618, is taken when a1(=[a1+255]:1) != a2(?), and falls through when a1(=[a1+255]:1) == a2(?).
  The `beq` branch at 0x2670 targets 0x2640 and is always taken.
  The `beq` branch at 0x268c targets 0x2640 and is always taken.
  The return at 0x2654 has v0 = one of 0x0, 0x1.
- `flash_read_sector` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x2694 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x2694-0x2700 (108 bytes).
  It occupies 108 bytes.
  The `sb` at 0x26f4 stores 1 byte to ?.
  The `jal` at 0x26d8 calls pciio_pio_read8 with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x26ac targets 0x26cc, is taken when (a0 & 0xff) == 0, and falls through when (a0 & 0xff) != 0.
  The `bne` branch at 0x26f0 targets 0x26d8, is taken when s2(?) < 0x100 (signed), and falls through when s2(?) >= 0x100 (signed).
  The `beq` branch at 0x26f8 targets 0x26b4 and is always taken.
  The return at 0x26c4 has v0 = one of 0x0, 0x1.
- `set_nvram` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x29e8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x29e8-0x2b84 (412 bytes).
  It occupies 412 bytes.
  The `lw` at 0x2a30 loads 4 bytes from sym(.bss) +0x934.
  2 such `lw` accesses load 4 bytes from sym(.bss) +0x928, including `lw` at 0x2a48, `lw` at 0x2a6c.
  2 such `lw` accesses load 4 bytes from sym(.data) +0x1d0, including `lw` at 0x2a88, `lw` at 0x2aa8.
  The `lw` at 0x2b08 loads 4 bytes from sym(.bss) +0x20.
  The `sw` at 0x2b80 stores 4 bytes to sym(.bss) +0x934.
  The `jal` at 0x2a08 calls strcmp with a0=a0 at entry (arg0), a1=sym(.rodata)+240, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2a3c calls .text with a0=sym(.bss), a1=sym(.rodata)+120, a2=?, a3=[sym(.bss)+2356].
  The `jal` at 0x2a60 calls strcmp with a0=sym(.bss), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x2a98 calls strcmp with a0=[sym(cache_desc+16)], a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x2ab8 calls kopt_find with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x2acc calls .text with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x2b0c calls strcmp with a0=[sym(.bss)+32], a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x2b24 calls strlen with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x2b3c calls .text with a0=?, a1=?, a2=[sym(.sdata)+12], a3=?.
  The `jal` at 0x2b54 calls kopt_set with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x2b70 calls cmn_err with a0=0x1, a1=sym(.rodata)+240, a2=?, a3=?.
  The `beq` branch at 0x2a18 targets 0x2b24, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x2a24 targets 0x2b3c, is taken when a2(=[sym(.sdata)+12]) == 0, and falls through when a2(=[sym(.sdata)+12]) != 0.
  The `beq` branch at 0x2a34 targets 0x2b68, is taken when a3(=[sym(.bss)+2356]) == 0, and falls through when a3(=[sym(.bss)+2356]) != 0.
  The `bne` branch at 0x2a44 targets 0x2b64, is taken when v0(=ret(.text)) != 0, and falls through when v0(=ret(.text)) == 0.
  The `blez` branch at 0x2a4c targets 0x2a84, is taken when t8(=[sym(.bss)+2344]) <= 0 (signed), and falls through when t8(=[sym(.bss)+2344]) > 0 (signed).
  The `beq` branch at 0x2a68 targets 0x2b08, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `bne` branch at 0x2a78 targets 0x2a5c, is taken when s3(?) < t9(=[sym(.bss)+2344]) (signed), and falls through when s3(?) >= t9(=[sym(.bss)+2344]) (signed).
  The `beq` branch at 0x2a8c targets 0x2ab8, is taken when ra(=[sym(cache_desc+16)]) == 0, and falls through when ra(=[sym(cache_desc+16)]) != 0.
  The `beq` branch at 0x2aa0 targets 0x2acc, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `bne` branch at 0x2ab0 targets 0x2a98, is taken when at(=[sym(cache_desc+16)]) != 0, and falls through when at(=[sym(cache_desc+16)]) == 0.
  The `beq` branch at 0x2ac0 targets 0x2b00, is taken when v0(=ret(kopt_find)) == 0, and falls through when v0(=ret(kopt_find)) != 0.
  The `beq` branch at 0x2ad4 targets 0x2b54, is taken when v0(=ret(.text)) == 0, and falls through when v0(=ret(.text)) != 0.
  The `beq` branch at 0x2b00 targets 0x2ae0 and is always taken.
  The `bne` branch at 0x2b14 targets 0x2acc, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x2b1c targets 0x2ae0 and is always taken.
  The `beq` branch at 0x2b2c targets 0x2a24, is taken when v0(=ret(strlen)) == 0, and falls through when v0(=ret(strlen)) != 0.
  The `beq` branch at 0x2b34 targets 0x2ae0 and is always taken.
  The `beq` branch at 0x2b4c targets 0x2a28 and is always taken.
  The `beq` branch at 0x2b5c targets 0x2ae0 and is always taken.
  The `beq` branch at 0x2b7c targets 0x2ae0 and is always taken.
  The return at 0x2af8 has v0 = one of -0x2, -0x1, 0x0.
- `flash_body_cksum` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x2d18 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x2d18-0x2d6c (84 bytes).
  It occupies 84 bytes.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x2d2c, `lw` at 0x2d40, `lw` at 0x2d54.
  The `beq` branch at 0x2d1c targets 0x2d64, is taken when a0 >= a1 (unsigned), and falls through when a0 < a1 (unsigned).
  The `beq` branch at 0x2d38 targets 0x2d64, is taken when a0(?) >= a1 (unsigned), and falls through when a0(?) < a1 (unsigned).
  The `beq` branch at 0x2d4c targets 0x2d64, is taken when a0(?) >= a1 (unsigned), and falls through when a0(?) < a1 (unsigned).
  The `bne` branch at 0x2d5c targets 0x2d28, is taken when a0(?) < a1 (unsigned), and falls through when a0(?) >= a1 (unsigned).
  The return at 0x2d64 has v0 = one of 0x0, ?.
- `flash_write_env` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x2d6c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x2d6c-0x3030 (708 bytes).
  It occupies 708 bytes.
  The `lw` at 0x2da4 loads 4 bytes from sym(.bss) +0x938.
  2 such `lw` accesses load 4 bytes from [sym(flash_env_seg)] +0xc, including `lw` at 0x2db0, `lw` at 0x2e10.
  The `lw` at 0x2df4 loads 4 bytes from sym(.bss) +0x934.
  3 such `lw` accesses load 4 bytes from ret(kmem_alloc) +0xc, including `lw` at 0x2e20, `lw` at 0x2e98, `lw` at 0x2ec4.
  The `lbu` at 0x2e2c loads 1 byte from sym(.bss) +0x0.
  The `lw` at 0x2e60 loads 4 bytes from sym(.bss) +0x20.
  The `lbu` at 0x2e88 loads 1 byte from sym(.bss) +0x24.
  The `sw` at 0x2ef0 stores 4 bytes to ?.
  The `sw` at 0x2f14 stores 4 bytes to sym(.bss) +0x938.
  The `jal` at 0x2dd0 calls kmem_alloc with a0=?, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2dec calls bzero with a0=ret(kmem_alloc), a1=?, a2=?, a3=?.
  The `jal` at 0x2e00 calls .text with a0=sym(.bss), a1=?, a2=?, a3=?.
  The `jal` at 0x2e18 calls .text with a0=ret(kmem_alloc), a1=[[sym(flash_env_seg)]+12]-64, a2=?, a3=?.
  The `jal` at 0x2e50 calls strlen with a0=sym(.bss), a1=?, a2=?, a3=?.
  The `jal` at 0x2e5c calls strlen with a0=[sym(.bss)+32], a1=?, a2=?, a3=?.
  The `jal` at 0x2e80 calls .text with a0=?, a1=sym(.bss), a2=?, a3=?.
  The `jal` at 0x2ebc calls flash_body_cksum with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2ef8 calls flash_write_sector with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2f18 calls .text with a0=sym(.bss), a1=?, a2=?, a3=?.
  The `jal` at 0x2f24 calls kmem_free with a0=ret(kmem_alloc), a1=?, a2=?, a3=?.
  The `jal` at 0x2f5c calls flash_write_sector with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2f7c calls kmem_free with a0=ret(kmem_alloc), a1=?, a2=?, a3=?.
  The `jal` at 0x2f90 calls cmn_err with a0=0x1, a1=sym(.rodata)+1856, a2=?, a3=?.
  The `jal` at 0x2f9c calls kmem_free with a0=ret(kmem_alloc), a1=?, a2=?, a3=?.
  The `jal` at 0x2fb4 calls cmn_err with a0=0x1, a1=sym(.rodata)+1968, a2=?, a3=?.
  The `jal` at 0x2fd0 calls cmn_err with a0=0x1, a1=sym(.rodata)+240, a2=?, a3=?.
  The `jal` at 0x3000 calls cmn_err with a0=0x1, a1=sym(.rodata)+1664, a2=?, a3=?.
  The `jal` at 0x3014 calls cmn_err with a0=0x1, a1=sym(.rodata)+240, a2=?, a3=?.
  The `jal` at 0x3020 calls kmem_free with a0=ret(kmem_alloc), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2d94 targets 0x2f2c, is taken when at(=[sym(.sdata)+12]) == 0, and falls through when at(=[sym(.sdata)+12]) != 0.
  The `beq` branch at 0x2da8 targets 0x2f2c, is taken when v0(=[sym(.bss)+2360]) == 0, and falls through when v0(=[sym(.bss)+2360]) != 0.
  The `beq` branch at 0x2dd8 targets 0x2ff8, is taken when v0(=ret(kmem_alloc)) == 0, and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` branch at 0x2df8 targets 0x2fc8, is taken when t9(=[sym(.bss)+2356]) == 0, and falls through when t9(=[sym(.bss)+2356]) != 0.
  The `bne` branch at 0x2e08 targets 0x2fc4, is taken when v0(=ret(.text)) != 0, and falls through when v0(=ret(.text)) == 0.
  The `beq` branch at 0x2e44 targets 0x2eb4, is taken when a2(=[sym(.bss)]:1) == 0, and falls through when a2(=[sym(.bss)]:1) != 0.
  The `beq` branch at 0x2e74 targets 0x2f8c, is taken when t9(?) >= s6(?) (unsigned), and falls through when t9(?) < s6(?) (unsigned).
  The `bne` branch at 0x2e90 targets 0x2e50, is taken when ra(=[sym(.bss)+36]:1) != 0, and falls through when ra(=[sym(.bss)+36]:1) == 0.
  The `beq` branch at 0x2eec targets 0x2f14, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x2f00 targets 0x2fac, is taken when v0(=ret(flash_write_sector)) != 0, and falls through when v0(=ret(flash_write_sector)) == 0.
  The `bne` branch at 0x2f0c targets 0x2ef4, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `bne` branch at 0x2f64 targets 0x3010, is taken when v0(=ret(flash_write_sector)) != 0, and falls through when v0(=ret(flash_write_sector)) == 0.
  The `bne` branch at 0x2f70 targets 0x2f58, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `beq` branch at 0x2f84 targets 0x2f30 and is always taken.
  The `beq` branch at 0x2fa4 targets 0x2f30 and is always taken.
  The `beq` branch at 0x2fbc targets 0x2f30 and is always taken.
  The `bne` branch at 0x2fe8 targets 0x2f58, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x2ff0 targets 0x2f7c and is always taken.
  The `beq` branch at 0x3008 targets 0x2f30 and is always taken.
  The `beq` branch at 0x3028 targets 0x2f30 and is always taken.
  The return at 0x2f50 has v0 = one of ?, ret(kmem_free), ret(cmn_err).
- `flash_set_nvram_changed` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x3030 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x3030-0x3070 (64 bytes).
  It occupies 64 bytes.
  The `sw` at 0x3040 stores 4 bytes to sym(.bss) +0x1270.
  The `jal` at 0x3054 calls .text with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x3044 targets 0x3054, is taken when at(=[sym(.sdata)+12]) == 0, and falls through when at(=[sym(.sdata)+12]) != 0.
  The `beq` branch at 0x3068 targets 0x304c and is always taken.
  The return at 0x304c has v0 = one of 0x1, ret(.text).
- `prom_does_eccinit` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x3070 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x3070-0x30a0 (48 bytes).
  It occupies 48 bytes.
  The `jal` at 0x3090 calls .text with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x3078 targets 0x308c, is taken when at(=[sym(.sdata)+20]) == 0, and falls through when at(=[sym(.sdata)+20]) != 0.
  The `beq` branch at 0x3098 targets 0x3080 and is always taken.
  The return at 0x3084 has v0 = 0x0.
- `flash_sync_globals` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x30a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x30a0-0x3198 (248 bytes).
  It occupies 248 bytes.
  The `lw` at 0x30c0 loads 4 bytes from ret(.text) +0xc.
  The `jal` at 0x30ac calls .text with a0=sym(.rodata)+1648, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x30d8 calls update_flash_version with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x30fc calls find_inventory with a0=0x0, a1=0x3, a2=0x15, a3=-0x1, a4=-0x1, a5=0x0.
  The `jal` at 0x310c calls flash_version with a0=0x0, a1=?, a2=?, a3=?.
  The `jal` at 0x3118 calls flash_version with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x3134 calls replace_in_inventory with a0=?, a1=0x3, a2=0x15, a3=?, a4=ret(flash_version), a5=0x0.
  The `jal` at 0x3148 calls flash_version with a0=0x0, a1=?, a2=?, a3=?.
  The `jal` at 0x3154 calls flash_version with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x316c calls add_to_inventory with a0=0x3, a1=0x15, a2=?, a3=ret(flash_version), a4=0x0.
  The `jal` at 0x3184 calls cmn_err with a0=0x1, a1=sym(.rodata)+2208, a2=ret(.text)+64, a3=?.
  The `beq` branch at 0x30b8 targets 0x317c, is taken when v0(=ret(.text)) == 0, and falls through when v0(=ret(.text)) != 0.
  The `beq` branch at 0x30e4 targets 0x313c, is taken when a2(=[sym(.sdata)+12]) == 0, and falls through when a2(=[sym(.sdata)+12]) != 0.
  The `beq` branch at 0x3104 targets 0x3148, is taken when v0(=ret(find_inventory)) == 0, and falls through when v0(=ret(find_inventory)) != 0.
  The `beq` branch at 0x3174 targets 0x3140 and is always taken.
  The `beq` branch at 0x3190 targets 0x30d8 and is always taken.
  The return at 0x3140 has v0 = one of ?, ret(add_to_inventory).
- `dump_nvram_vars` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x3198 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x3198-0x3238 (160 bytes).
  It occupies 160 bytes.
  3 such `lw` accesses load 4 bytes from sym(.bss) +0x928, including `lw` at 0x31c0, `lw` at 0x31c4, `lw` at 0x3210.
  The `lw` at 0x3208 loads 4 bytes from ?.
  The `jal` at 0x31bc calls cmn_err with a0=0x6, a1=sym(.rodata)+240, a2=[sym(.bss)+2344], a3=a3 at entry (arg3).
  The `jal` at 0x3204 calls cmn_err with a0=0x6, a1=sym(.rodata)+240, a2=?, a3=?.
  The `bgtz` branch at 0x31c8 targets 0x31e0, is taken when a2(=[sym(.bss)+2344]) > 0 (signed), and falls through when a2(=[sym(.bss)+2344]) <= 0 (signed).
  The `bne` branch at 0x3228 targets 0x31e8, is taken when a2(?) < a3(=[sym(.bss)+2344]) (signed), and falls through when a2(?) >= a3(=[sym(.bss)+2344]) (signed).
  The `beq` branch at 0x3230 targets 0x31d0 and is always taken.
  The return at 0x31d8 has v0 = 0x1.
- `swcopyin` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x32e8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x32e8-0x3340 (88 bytes).
  It occupies 88 bytes.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffa018, including `lw` at 0x3314, `lw` at 0x3324.
  2 such `sh` accesses store 2 bytes to [-0x5fe8] +0xc2, including `sh` at 0x3320, `sh` at 0x332c.
  The `jal` at 0x331c calls swbcopy with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bltz` branch at 0x32ec targets 0x33f0, is taken when a2 < 0 (signed), and falls through when a2 >= 0 (signed).
  The `bltz` branch at 0x32f4 targets 0x33f0, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `bne` branch at 0x330c targets 0x33f0, is taken when t0(=0x7fff8000) < v0(=(a0 + a2)) (unsigned), and falls through when t0(=0x7fff8000) >= v0(=(a0 + a2)) (unsigned).
  The return at 0x3338 has v0 = 0x0.
- `swcopyout` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x3340 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x3340-0x3398 (88 bytes).
  It occupies 88 bytes.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffa018, including `lw` at 0x336c, `lw` at 0x337c.
  2 such `sh` accesses store 2 bytes to [-0x5fe8] +0xc2, including `sh` at 0x3378, `sh` at 0x3384.
  The `jal` at 0x3374 calls swbcopy with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bltz` branch at 0x3344 targets 0x33f0, is taken when a2 < 0 (signed), and falls through when a2 >= 0 (signed).
  The `bltz` branch at 0x334c targets 0x33f0, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `bne` branch at 0x3364 targets 0x33f0, is taken when t0(=0x7fff8000) < v0(=(a1 + a2)) (unsigned), and falls through when t0(=0x7fff8000) >= v0(=(a1 + a2)) (unsigned).
  The return at 0x3390 has v0 = 0x0.
- `uzero` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x3398 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x3398-0x33f0 (88 bytes).
  It occupies 88 bytes.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffa018, including `lw` at 0x33c4, `lw` at 0x33d4.
  2 such `sh` accesses store 2 bytes to [-0x5fe8] +0xc2, including `sh` at 0x33d0, `sh` at 0x33dc.
  The `jal` at 0x33cc calls bzero with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bltz` branch at 0x339c targets 0x33f0, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `bltz` branch at 0x33a4 targets 0x33f0, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `bne` branch at 0x33bc targets 0x33f0, is taken when t0(=0x7fff8000) < v0(=(a0 + a1)) (unsigned), and falls through when t0(=0x7fff8000) >= v0(=(a0 + a1)) (unsigned).
  The return at 0x33e8 has v0 = 0x0.
- `cerror` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x33f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x33f0-0x3404 (20 bytes).
  It occupies 20 bytes.
  The return at 0x33fc has v0 = -0x1.
- `bzero` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x3518 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x3518-0x35cc (180 bytes).
  It occupies 180 bytes.
  The `sdl` at 0x353c stores 8 bytes to a0 (arg0 at entry) +0x0.
  7 such `sd` accesses store 8 bytes to ?, including `sd` at 0x3560, `sd` at 0x3564, `sd` at 0x3568.
  The `sdr` at 0x35ac stores 8 bytes to ?.
  The `sb` at 0x35c0 stores 1 byte to ?.
  The `bne` branch at 0x3520 targets 0x3530 and is always taken.
  The `bne` branch at 0x3534 targets 0x35b0, is taken when a1 < 0x8 (signed), and falls through when a1 >= 0x8 (signed).
  The `beq` branch at 0x3554 targets 0x3574, is taken when (a1(?) & at(=-0x20)) == 0, and falls through when (a1(?) & at(=-0x20)) != 0.
  The `bne` branch at 0x356c targets 0x355c, is taken when a0(?) != a3(?), and falls through when a0(?) == a3(?).
  The `beq` branch at 0x3578 targets 0x358c, is taken when (a1(?) & 0x10) == 0, and falls through when (a1(?) & 0x10) != 0.
  The `beq` branch at 0x358c targets 0x359c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x35a0 targets 0x35c4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `blez` branch at 0x35b0 targets 0x35c4, is taken when a1 <= 0 (signed), and falls through when a1 > 0 (signed).
  The `bne` branch at 0x35bc targets 0x35b8, is taken when a0(?) != a3(=(a0 + a1)), and falls through when a0(?) == a3(=(a0 + a1)).
  The return at 0x35a8 has v0 = ?.
  The return at 0x35c4 has v0 = ?.
  The instructions from 0x3528 to 0x352c are not reached by any path from the entry, and their branches are not listed.
- `bzero_cdx_entry` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x351c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x351c-0x35cc (176 bytes).
  It occupies 176 bytes.
  The `sdl` at 0x353c stores 8 bytes to a0 (arg0 at entry) +0x0.
  7 such `sd` accesses store 8 bytes to ?, including `sd` at 0x3560, `sd` at 0x3564, `sd` at 0x3568.
  The `sdr` at 0x35ac stores 8 bytes to ?.
  The `sb` at 0x35c0 stores 1 byte to ?.
  The `bne` branch at 0x3520 targets 0x3530 and is always taken.
  The `bne` branch at 0x3534 targets 0x35b0, is taken when a1 < 0x8 (signed), and falls through when a1 >= 0x8 (signed).
  The `beq` branch at 0x3554 targets 0x3574, is taken when (a1(?) & at(=-0x20)) == 0, and falls through when (a1(?) & at(=-0x20)) != 0.
  The `bne` branch at 0x356c targets 0x355c, is taken when a0(?) != a3(?), and falls through when a0(?) == a3(?).
  The `beq` branch at 0x3578 targets 0x358c, is taken when (a1(?) & 0x10) == 0, and falls through when (a1(?) & 0x10) != 0.
  The `beq` branch at 0x358c targets 0x359c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x35a0 targets 0x35c4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `blez` branch at 0x35b0 targets 0x35c4, is taken when a1 <= 0 (signed), and falls through when a1 > 0 (signed).
  The `bne` branch at 0x35bc targets 0x35b8, is taken when a0(?) != a3(=(a0 + a1)), and falls through when a0(?) == a3(=(a0 + a1)).
  The return at 0x35a8 has v0 = ?.
  The return at 0x35c4 has v0 = ?.
  The instructions from 0x3528 to 0x352c are not reached by any path from the entry, and their branches are not listed.
- `bzerror` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x35cc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x35cc-0x35d4 (8 bytes).
  It occupies 8 bytes.
  The return at 0x35cc has v0 = ?.
- `bcmp` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x35d4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x35d4-0x3790 (444 bytes).
  It occupies 444 bytes.
  The `lwl` at 0x35f8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwl` at 0x35fc loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwr` at 0x3600 loads 4 bytes from a0 (arg0 at entry) +0x3.
  The `lwr` at 0x3604 loads 4 bytes from a1 (arg1 at entry) +0x3.
  15 such `lw` accesses load 4 bytes from ?, including `lw` at 0x3628, `lw` at 0x362c, `lw` at 0x3640.
  3 such `lwl` accesses load 4 bytes from ?, including `lwl` at 0x36dc, `lwl` at 0x36e0, `lwl` at 0x373c.
  3 such `lwr` accesses load 4 bytes from ?, including `lwr` at 0x36e4, `lwr` at 0x36e8, `lwr` at 0x3744.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x3708, `lbu` at 0x370c, `lbu` at 0x3768.
  The `bne` branch at 0x35d8 targets 0x3760, is taken when a2 < 0xb (signed), and falls through when a2 >= 0xb (signed).
  The `bne` branch at 0x35e4 targets 0x36f4, is taken when (v0(?) & 0x3) != 0, and falls through when (v0(?) & 0x3) == 0.
  The `beq` branch at 0x35f0 targets 0x3618, is taken when (t8(?) & 0x3) == 0, and falls through when (t8(?) & 0x3) != 0.
  The `bne` branch at 0x3610 targets 0x36ec, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `beq` branch at 0x3620 targets 0x367c, is taken when (a2(?) & at(=-0x10)) == 0, and falls through when (a2(?) & at(=-0x10)) != 0.
  The `bne` branch at 0x3638 targets 0x36ec, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x364c targets 0x36ec, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x365c targets 0x36ec, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x366c targets 0x36ec, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x3674 targets 0x3628, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x3680 targets 0x36b0, is taken when (a2(?) & 0x8) == 0, and falls through when (a2(?) & 0x8) != 0.
  The `bne` branch at 0x3698 targets 0x36ec, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x36a8 targets 0x36ec, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `beq` branch at 0x36b0 targets 0x36d0, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x36c8 targets 0x36ec, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `beq` branch at 0x36d0 targets 0x3788, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x36fc targets 0x3728, is taken when (a3(?) & 0x3) == 0, and falls through when (a3(?) & 0x3) != 0.
  The `bne` branch at 0x3718 targets 0x36ec, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x3720 targets 0x3708, is taken when a0(?) != a3(?), and falls through when a0(?) == a3(?).
  The `beq` branch at 0x3730 targets 0x3760, is taken when (a2(?) & at(=-0x4)) == 0, and falls through when (a2(?) & at(=-0x4)) != 0.
  The `bne` branch at 0x3750 targets 0x36ec, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x3758 targets 0x373c, is taken when a0(?) != a3(?), and falls through when a0(?) == a3(?).
  The `blez` branch at 0x3760 targets 0x3788, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `bne` branch at 0x3778 targets 0x36ec, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x3780 targets 0x3768, is taken when a0(?) != a3(?), and falls through when a0(?) == a3(?).
  The return at 0x36ec has v0 = ?.
  The return at 0x3788 has v0 = 0x0.
- `addupc` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x3790 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x3790-0x3888 (248 bytes).
  It occupies 248 bytes.
  The `lw` at 0x3790 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x37a0 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lw` at 0x37d0 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0x37d8 loads 4 bytes from a1 (arg1 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffa018, including `lw` at 0x37fc, `lw` at 0x3854.
  3 such `sh` accesses store 2 bytes to [-0x5fe8] +0xc2, including `sh` at 0x3804, `sh` at 0x385c, `sh` at 0x3874.
  2 such `ll` accesses load 4 bytes from ?, including `ll` at 0x381c, `ll` at 0x3860.
  2 such `sc` accesses store 4 bytes to ?, including `sc` at 0x3824, `sc` at 0x3868.
  The `bltz` branch at 0x3798 targets 0x3880, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `bne` branch at 0x37a8 targets 0x37b8, is taken when v0(=[a1+12]) != at(=0x2), and falls through when v0(=[a1+12]) == at(=0x2).
  The `beq` branch at 0x37b0 targets 0x37d0 and is always taken.
  The `bne` branch at 0x37d4 targets 0x3834, is taken when a3 != 0, and falls through when a3 == 0.
  The `beq` branch at 0x37e8 targets 0x3880, is taken when v0(?) >= v1(=[a1+4]) (unsigned), and falls through when v0(?) < v1(=[a1+4]) (unsigned).
  The `bltz` branch at 0x37f4 targets 0x3888, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `bne` branch at 0x3810 targets 0x381c, is taken when (v0(?) & 0x2) != 0, and falls through when (v0(?) & 0x2) == 0.
  The `beq` branch at 0x3828 targets 0x381c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x3830 targets 0x3874 and is always taken.
  The `beq` branch at 0x3840 targets 0x3880, is taken when v0(?) >= v1(=[a1+4]) (unsigned), and falls through when v0(?) < v1(=[a1+4]) (unsigned).
  The `bltz` branch at 0x384c targets 0x3888, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `beq` branch at 0x386c targets 0x3860, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The return at 0x3878 has v0 = 0x0.
  The return at 0x3880 has v0 = -0x1.
- `adderr` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x3888 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x3888-0x3894 (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0x3890 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The return at 0x388c has v0 = 0x0.
- `fubyte` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x3894 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x3894-0x38b0 (28 bytes).
  It occupies 28 bytes.
  The `lw` at 0x3898 loads 4 bytes from abs 0xffffffffffffa018.
  2 such `sh` accesses store 2 bytes to [-0x5fe8] +0xc2, including `sh` at 0x38a0, `sh` at 0x38ac.
  The `lbu` at 0x38a4 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0x3894 targets 0x3a10, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The return at 0x38a8 has v0 = [a0]:1.
- `upath` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x38b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x38b0-0x38f4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x38b4 loads 4 bytes from abs 0xffffffffffffa018.
  2 such `sh` accesses store 2 bytes to [-0x5fe8] +0xc2, including `sh` at 0x38bc, `sh` at 0x38f0.
  The `lbu` at 0x38c4 loads 1 byte from ?.
  The `sb` at 0x38d0 stores 1 byte to ?.
  The `bltz` branch at 0x38b0 targets 0x3a10, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0x38cc targets 0x38e8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x38d8 targets 0x38c4, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x38e0 targets 0x38ec and is always taken.
  The return at 0x38ec has v0 = one of -0x2, ?.
- `subyte` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x38f4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x38f4-0x3914 (32 bytes).
  It occupies 32 bytes.
  The `lw` at 0x38f8 loads 4 bytes from abs 0xffffffffffffa018.
  2 such `sh` accesses store 2 bytes to [-0x5fe8] +0xc2, including `sh` at 0x3900, `sh` at 0x3908.
  The `sb` at 0x3904 stores 1 byte to a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0x38f4 targets 0x3a10, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The return at 0x390c has v0 = 0x0.
- `fuword` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x3914 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x3914-0x3934 (32 bytes).
  It occupies 32 bytes.
  The `lw` at 0x3918 loads 4 bytes from abs 0xffffffffffffa018.
  2 such `sh` accesses store 2 bytes to [-0x5fe8] +0xc2, including `sh` at 0x3920, `sh` at 0x3928.
  The `lw` at 0x3924 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0x3914 targets 0x3a10, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The return at 0x392c has v0 = [a0].
- `sfu32v` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x3934 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x3934-0x3968 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x3938 loads 4 bytes from abs 0xffffffffffffa018.
  2 such `sh` accesses store 2 bytes to [-0x5fe8] +0xc2, including `sh` at 0x3940, `sh` at 0x395c.
  The `lw` at 0x3944 loads 4 bytes from ?.
  The `sw` at 0x394c stores 4 bytes to ?.
  The `bltz` branch at 0x3934 targets 0x39a8, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `bne` branch at 0x3954 targets 0x3944, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The return at 0x3960 has v0 = 0x1.
- `sfu32` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x3968 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x3968-0x3988 (32 bytes).
  It occupies 32 bytes.
  The `lw` at 0x396c loads 4 bytes from abs 0xffffffffffffa018.
  2 such `sh` accesses store 2 bytes to [-0x5fe8] +0xc2, including `sh` at 0x3974, `sh` at 0x397c.
  The `lw` at 0x3978 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `bltz` branch at 0x3968 targets 0x39a8, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The return at 0x3980 has v0 = [a1].
- `spu32` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x3988 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x3988-0x39a8 (32 bytes).
  It occupies 32 bytes.
  The `lw` at 0x398c loads 4 bytes from abs 0xffffffffffffa018.
  2 such `sh` accesses store 2 bytes to [-0x5fe8] +0xc2, including `sh` at 0x3994, `sh` at 0x399c.
  The `sw` at 0x3998 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `bltz` branch at 0x3988 targets 0x39a8, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The return at 0x39a0 has v0 = 0x1.
- `suerror` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x39a8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x39a8-0x39b8 (16 bytes).
  It occupies 16 bytes.
  The `sw` at 0x39ac stores 4 bytes to a0 (arg0 at entry) +0x0.
  The return at 0x39b0 has v0 = 0x0.
- `suword` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x39b8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x39b8-0x39d8 (32 bytes).
  It occupies 32 bytes.
  The `lw` at 0x39bc loads 4 bytes from abs 0xffffffffffffa018.
  2 such `sh` accesses store 2 bytes to [-0x5fe8] +0xc2, including `sh` at 0x39c4, `sh` at 0x39cc.
  The `sw` at 0x39c8 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0x39b8 targets 0x3a10, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The return at 0x39d0 has v0 = 0x0.
- `suhalf` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x39d8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x39d8-0x39f8 (32 bytes).
  It occupies 32 bytes.
  The `lw` at 0x39dc loads 4 bytes from abs 0xffffffffffffa018.
  2 such `sh` accesses store 2 bytes to [-0x5fe8] +0xc2, including `sh` at 0x39e4, `sh` at 0x39ec.
  The `sh` at 0x39e8 stores 2 bytes to a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0x39d8 targets 0x3a10, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The return at 0x39f0 has v0 = 0x0.
- `fkiword` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x39f8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x39f8-0x3a10 (24 bytes).
  It occupies 24 bytes.
  2 such `sw` accesses store 4 bytes to abs 0xffffffffffffa1d8, including `sw` at 0x39fc, `sw` at 0x3a04.
  The `lw` at 0x3a00 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The return at 0x3a08 has v0 = [a0].
- `uerror` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x3a10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x3a10-0x3a18 (8 bytes).
  It occupies 8 bytes.
  The return at 0x3a10 has v0 = -0x1.
- `strlen` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x3a18 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x3a18-0x3a38 (32 bytes).
  It occupies 32 bytes.
  The `lb` at 0x3a1c loads 1 byte from ?.
  The `bne` branch at 0x3a24 targets 0x3a1c, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The return at 0x3a30 has v0 = ?.
- `uload_word` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x3a38 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x3a38-0x3a5c (36 bytes).
  It occupies 36 bytes.
  The `lw` at 0x3a38 loads 4 bytes from abs 0xffffffffffffa018.
  2 such `sh` accesses store 2 bytes to [-0x5fe8] +0xc2, including `sh` at 0x3a40, `sh` at 0x3a4c.
  The `lwl` at 0x3a44 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwr` at 0x3a48 loads 4 bytes from a0 (arg0 at entry) +0x3.
  The `sd` at 0x3a50 stores 8 bytes to a1 (arg1 at entry) +0x0.
  The return at 0x3a54 has v0 = 0x0.
- `uload_half` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x3a5c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x3a5c-0x3a88 (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0x3a5c loads 4 bytes from abs 0xffffffffffffa018.
  2 such `sh` accesses store 2 bytes to [-0x5fe8] +0xc2, including `sh` at 0x3a64, `sh` at 0x3a78.
  The `lb` at 0x3a68 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lbu` at 0x3a6c loads 1 byte from a0 (arg0 at entry) +0x1.
  The `sd` at 0x3a7c stores 8 bytes to a1 (arg1 at entry) +0x0.
  The return at 0x3a80 has v0 = 0x0.
- `uload_uhalf` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x3a88 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x3a88-0x3ab4 (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0x3a88 loads 4 bytes from abs 0xffffffffffffa018.
  2 such `sh` accesses store 2 bytes to [-0x5fe8] +0xc2, including `sh` at 0x3a90, `sh` at 0x3aa4.
  The `lbu` at 0x3a94 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lbu` at 0x3a98 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `sd` at 0x3aa8 stores 8 bytes to a1 (arg1 at entry) +0x0.
  The return at 0x3aac has v0 = 0x0.
- `uload_uword` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x3ab4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x3ab4-0x3ae0 (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0x3ab4 loads 4 bytes from abs 0xffffffffffffa018.
  2 such `sh` accesses store 2 bytes to [-0x5fe8] +0xc2, including `sh` at 0x3abc, `sh` at 0x3ad0.
  The `lwl` at 0x3ac0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwr` at 0x3ac4 loads 4 bytes from a0 (arg0 at entry) +0x3.
  The `sd` at 0x3ad4 stores 8 bytes to a1 (arg1 at entry) +0x0.
  The return at 0x3ad8 has v0 = 0x0.
- `uload_double` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x3ae0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x3ae0-0x3b04 (36 bytes).
  It occupies 36 bytes.
  The `lw` at 0x3ae0 loads 4 bytes from abs 0xffffffffffffa018.
  2 such `sh` accesses store 2 bytes to [-0x5fe8] +0xc2, including `sh` at 0x3ae8, `sh` at 0x3af4.
  The `ldl` at 0x3aec loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ldr` at 0x3af0 loads 8 bytes from a0 (arg0 at entry) +0x7.
  The `sd` at 0x3af8 stores 8 bytes to a1 (arg1 at entry) +0x0.
  The return at 0x3afc has v0 = 0x0.
- `ustore_double` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x3b04 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x3b04-0x3b24 (32 bytes).
  It occupies 32 bytes.
  The `lw` at 0x3b04 loads 4 bytes from abs 0xffffffffffffa018.
  2 such `sh` accesses store 2 bytes to [-0x5fe8] +0xc2, including `sh` at 0x3b0c, `sh` at 0x3b18.
  The `sdl` at 0x3b10 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `sdr` at 0x3b14 stores 8 bytes to a0 (arg0 at entry) +0x7.
  The return at 0x3b1c has v0 = 0x0.
- `ustore_word` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x3b24 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x3b24-0x3b44 (32 bytes).
  It occupies 32 bytes.
  The `lw` at 0x3b24 loads 4 bytes from abs 0xffffffffffffa018.
  2 such `sh` accesses store 2 bytes to [-0x5fe8] +0xc2, including `sh` at 0x3b2c, `sh` at 0x3b38.
  The `swl` at 0x3b30 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `swr` at 0x3b34 stores 4 bytes to a0 (arg0 at entry) +0x3.
  The return at 0x3b3c has v0 = 0x0.
- `ustore_half` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x3b44 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x3b44-0x3b68 (36 bytes).
  It occupies 36 bytes.
  The `lw` at 0x3b44 loads 4 bytes from abs 0xffffffffffffa018.
  2 such `sh` accesses store 2 bytes to [-0x5fe8] +0xc2, including `sh` at 0x3b4c, `sh` at 0x3b5c.
  The `sb` at 0x3b50 stores 1 byte to a0 (arg0 at entry) +0x1.
  The `sb` at 0x3b58 stores 1 byte to a0 (arg0 at entry) +0x0.
  The return at 0x3b60 has v0 = 0x0.
- `fixade_error` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x3b68 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x3b68-0x3b70 (8 bytes).
  It occupies 8 bytes.
  The return at 0x3b68 has v0 = gp.
- `memcpy` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x3b70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x3b70-0x3fd0 (1120 bytes).
  It occupies 1120 bytes.
  The `ldl` at 0x3bd4 loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `sdl` at 0x3be0 stores 8 bytes to a0 (arg0 at entry) +0x0.
  8 such `ld` accesses load 8 bytes from ?, including `ld` at 0x3c00, `ld` at 0x3c04, `ld` at 0x3c08.
  8 such `sd` accesses store 8 bytes to ?, including `sd` at 0x3c28, `sd` at 0x3c2c, `sd` at 0x3c30.
  The `lwl` at 0x3c6c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `swl` at 0x3c78 stores 4 bytes to a0 (arg0 at entry) +0x0.
  28 such `lw` accesses load 4 bytes from ?, including `lw` at 0x3c98, `lw` at 0x3c9c, `lw` at 0x3ca0.
  35 such `sw` accesses store 4 bytes to ?, including `sw` at 0x3cc0, `sw` at 0x3cc4, `sw` at 0x3cc8.
  8 such `lwr` accesses load 4 bytes from ?, including `lwr` at 0x3d64, `lwr` at 0x3db8, `lwr` at 0x3dc0.
  The `swr` at 0x3d74 stores 4 bytes to ?.
  3 such `lb` accesses load 1 byte from ?, including `lb` at 0x3d8c, `lb` at 0x3e44, `lb` at 0x3e94.
  3 such `sb` accesses store 1 byte to ?, including `sb` at 0x3d9c, `sb` at 0x3e54, `sb` at 0x3ea4.
  7 such `lwl` accesses load 4 bytes from ?, including `lwl` at 0x3db4, `lwl` at 0x3dbc, `lwl` at 0x3dc8.
  2 such `lb` accesses load 1 byte from (a1 + a2) -0x1, including `lb` at 0x3ec8, `lb` at 0x3ef8.
  2 such `sb` accesses store 1 byte to (a0 + a2) -0x1, including `sb` at 0x3edc, `sb` at 0x3f0c.
  The `lh` at 0x3ee0 loads 2 bytes from (a1 + a2) -0x2.
  The `sh` at 0x3ef4 stores 2 bytes to (a0 + a2) -0x2.
  The `lh` at 0x3efc loads 2 bytes from (a1 + a2) -0x3.
  The `sh` at 0x3f10 stores 2 bytes to (a0 + a2) -0x3.
  The `bne` branch at 0x3b8c targets 0x3b9c and is always taken.
  The `beq` branch at 0x3ba0 targets 0x3bb0, is taken when a0(=a1) >= a1(=a0) (signed), and falls through when a0(=a1) < a1(=a0) (signed).
  The `bne` branch at 0x3bac targets 0x3e60, is taken when a1(=a0) < v0(=(a1 + a2)) (signed), and falls through when a1(=a0) >= v0(=(a1 + a2)) (signed).
  The `bne` branch at 0x3bb4 targets 0x3e3c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x3bc4 targets 0x3c54, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x3bcc targets 0x3bec, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x3bf4 targets 0x3c84, is taken when (a2(?) & at(=-0x40)) == 0, and falls through when (a2(?) & at(=-0x40)) != 0.
  The `bne` branch at 0x3c44 targets 0x3c00, is taken when a3(?) != a1(?), and falls through when a3(?) == a1(?).
  The `beq` branch at 0x3c4c targets 0x3c84 and is always taken.
  The `bne` branch at 0x3c5c targets 0x3d78, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x3c64 targets 0x3c84, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x3c8c targets 0x3ce4, is taken when (a2(?) & at(=-0x20)) == 0, and falls through when (a2(?) & at(=-0x20)) != 0.
  The `bne` branch at 0x3cdc targets 0x3c98, is taken when a3(?) != a1(?), and falls through when a3(?) == a1(?).
  The `beq` branch at 0x3ce8 targets 0x3d18, is taken when (a2(?) & 0x10) == 0, and falls through when (a2(?) & 0x10) != 0.
  The `beq` branch at 0x3d1c targets 0x3d3c, is taken when (a2(?) & 0x8) == 0, and falls through when (a2(?) & 0x8) != 0.
  The `beq` branch at 0x3d40 targets 0x3d58, is taken when (a2(?) & 0x4) == 0, and falls through when (a2(?) & 0x4) != 0.
  The `beq` branch at 0x3d5c targets 0x3e58, is taken when (a2(?) & 0x3) == 0, and falls through when (a2(?) & 0x3) != 0.
  The `beq` branch at 0x3d78 targets 0x3da0, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x3d98 targets 0x3d8c, is taken when a1(?) != a3(?), and falls through when a1(?) == a3(?).
  The `beq` branch at 0x3da8 targets 0x3df0, is taken when (a2(?) & at(=-0x10)) == 0, and falls through when (a2(?) & at(=-0x10)) != 0.
  The `bne` branch at 0x3de8 targets 0x3db4, is taken when a3(?) != a1(?), and falls through when a3(?) == a1(?).
  The `beq` branch at 0x3df4 targets 0x3e1c, is taken when (a2(?) & 0x8) == 0, and falls through when (a2(?) & 0x8) != 0.
  The `beq` branch at 0x3e20 targets 0x3e3c, is taken when (a2(?) & 0x4) == 0, and falls through when (a2(?) & 0x4) != 0.
  The `beq` branch at 0x3e3c targets 0x3e58, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x3e50 targets 0x3e44, is taken when a0(?) != a3(?), and falls through when a0(?) == a3(?).
  The `bne` branch at 0x3e68 targets 0x3e80, is taken when a2 < 0xc (signed), and falls through when a2 >= 0xc (signed).
  The `beq` branch at 0x3e78 targets 0x3eb0, is taken when v0(?) == v1(?), and falls through when v0(?) != v1(?).
  The `beq` branch at 0x3e80 targets 0x3e58, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x3ea0 targets 0x3e94, is taken when a0(?) != v1(?), and falls through when a0(?) == v1(?).
  The `beq` branch at 0x3eb0 targets 0x3f14, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x3eb8 targets 0x3ef8, is taken when v0(?) == at(=0x3), and falls through when v0(?) != at(=0x3).
  The `beq` branch at 0x3ec0 targets 0x3ee0, is taken when v0(?) == at(=0x2), and falls through when v0(?) != at(=0x2).
  The `beq` branch at 0x3ed8 targets 0x3f14 and is always taken.
  The `beq` branch at 0x3ef0 targets 0x3f14 and is always taken.
  The `bne` branch at 0x3f18 targets 0x3f70, is taken when a2(?) < 0x20 (signed), and falls through when a2(?) >= 0x20 (signed).
  The `beq` branch at 0x3f68 targets 0x3f14 and is always taken.
  The `bne` branch at 0x3f74 targets 0x3fac, is taken when a2(?) < 0x10 (signed), and falls through when a2(?) >= 0x10 (signed).
  The `beq` branch at 0x3fa4 targets 0x3f70 and is always taken.
  The `bne` branch at 0x3fb0 targets 0x3e80, is taken when a2(?) < 0x4 (signed), and falls through when a2(?) >= 0x4 (signed).
  The `beq` branch at 0x3fc8 targets 0x3fac and is always taken.
  The return at 0x3d70 has v0 = a0.
  The return at 0x3e58 has v0 = a0.
  The return at 0x3ea8 has v0 = a0.
  The instructions from 0x3b94 to 0x3b98 are not reached by any path from the entry, and their branches are not listed.
- `bcopy` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x3b7c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x3b7c-0x3b88 (12 bytes).
  It occupies 12 bytes.
- `bcopy_cdx_entry` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x3b88 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x3b88-0x3fd0 (1096 bytes).
  It occupies 1096 bytes.
  The `ldl` at 0x3bd4 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdl` at 0x3be0 stores 8 bytes to a1 (arg1 at entry) +0x0.
  8 such `ld` accesses load 8 bytes from ?, including `ld` at 0x3c00, `ld` at 0x3c04, `ld` at 0x3c08.
  8 such `sd` accesses store 8 bytes to ?, including `sd` at 0x3c28, `sd` at 0x3c2c, `sd` at 0x3c30.
  The `lwl` at 0x3c6c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swl` at 0x3c78 stores 4 bytes to a1 (arg1 at entry) +0x0.
  28 such `lw` accesses load 4 bytes from ?, including `lw` at 0x3c98, `lw` at 0x3c9c, `lw` at 0x3ca0.
  35 such `sw` accesses store 4 bytes to ?, including `sw` at 0x3cc0, `sw` at 0x3cc4, `sw` at 0x3cc8.
  8 such `lwr` accesses load 4 bytes from ?, including `lwr` at 0x3d64, `lwr` at 0x3db8, `lwr` at 0x3dc0.
  The `swr` at 0x3d74 stores 4 bytes to ?.
  3 such `lb` accesses load 1 byte from ?, including `lb` at 0x3d8c, `lb` at 0x3e44, `lb` at 0x3e94.
  3 such `sb` accesses store 1 byte to ?, including `sb` at 0x3d9c, `sb` at 0x3e54, `sb` at 0x3ea4.
  7 such `lwl` accesses load 4 bytes from ?, including `lwl` at 0x3db4, `lwl` at 0x3dbc, `lwl` at 0x3dc8.
  2 such `lb` accesses load 1 byte from (a0 + a2) -0x1, including `lb` at 0x3ec8, `lb` at 0x3ef8.
  2 such `sb` accesses store 1 byte to (a1 + a2) -0x1, including `sb` at 0x3edc, `sb` at 0x3f0c.
  The `lh` at 0x3ee0 loads 2 bytes from (a0 + a2) -0x2.
  The `sh` at 0x3ef4 stores 2 bytes to (a1 + a2) -0x2.
  The `lh` at 0x3efc loads 2 bytes from (a0 + a2) -0x3.
  The `sh` at 0x3f10 stores 2 bytes to (a1 + a2) -0x3.
  The `bne` branch at 0x3b8c targets 0x3b9c and is always taken.
  The `beq` branch at 0x3ba0 targets 0x3bb0, is taken when a0 >= a1 (signed), and falls through when a0 < a1 (signed).
  The `bne` branch at 0x3bac targets 0x3e60, is taken when a1 < v0(=(a0 + a2)) (signed), and falls through when a1 >= v0(=(a0 + a2)) (signed).
  The `bne` branch at 0x3bb4 targets 0x3e3c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x3bc4 targets 0x3c54, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x3bcc targets 0x3bec, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x3bf4 targets 0x3c84, is taken when (a2(?) & at(=-0x40)) == 0, and falls through when (a2(?) & at(=-0x40)) != 0.
  The `bne` branch at 0x3c44 targets 0x3c00, is taken when a3(?) != a1(?), and falls through when a3(?) == a1(?).
  The `beq` branch at 0x3c4c targets 0x3c84 and is always taken.
  The `bne` branch at 0x3c5c targets 0x3d78, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x3c64 targets 0x3c84, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x3c8c targets 0x3ce4, is taken when (a2(?) & at(=-0x20)) == 0, and falls through when (a2(?) & at(=-0x20)) != 0.
  The `bne` branch at 0x3cdc targets 0x3c98, is taken when a3(?) != a1(?), and falls through when a3(?) == a1(?).
  The `beq` branch at 0x3ce8 targets 0x3d18, is taken when (a2(?) & 0x10) == 0, and falls through when (a2(?) & 0x10) != 0.
  The `beq` branch at 0x3d1c targets 0x3d3c, is taken when (a2(?) & 0x8) == 0, and falls through when (a2(?) & 0x8) != 0.
  The `beq` branch at 0x3d40 targets 0x3d58, is taken when (a2(?) & 0x4) == 0, and falls through when (a2(?) & 0x4) != 0.
  The `beq` branch at 0x3d5c targets 0x3e58, is taken when (a2(?) & 0x3) == 0, and falls through when (a2(?) & 0x3) != 0.
  The `beq` branch at 0x3d78 targets 0x3da0, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x3d98 targets 0x3d8c, is taken when a1(?) != a3(?), and falls through when a1(?) == a3(?).
  The `beq` branch at 0x3da8 targets 0x3df0, is taken when (a2(?) & at(=-0x10)) == 0, and falls through when (a2(?) & at(=-0x10)) != 0.
  The `bne` branch at 0x3de8 targets 0x3db4, is taken when a3(?) != a1(?), and falls through when a3(?) == a1(?).
  The `beq` branch at 0x3df4 targets 0x3e1c, is taken when (a2(?) & 0x8) == 0, and falls through when (a2(?) & 0x8) != 0.
  The `beq` branch at 0x3e20 targets 0x3e3c, is taken when (a2(?) & 0x4) == 0, and falls through when (a2(?) & 0x4) != 0.
  The `beq` branch at 0x3e3c targets 0x3e58, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x3e50 targets 0x3e44, is taken when a0(?) != a3(?), and falls through when a0(?) == a3(?).
  The `bne` branch at 0x3e68 targets 0x3e80, is taken when a2 < 0xc (signed), and falls through when a2 >= 0xc (signed).
  The `beq` branch at 0x3e78 targets 0x3eb0, is taken when v0(?) == v1(?), and falls through when v0(?) != v1(?).
  The `beq` branch at 0x3e80 targets 0x3e58, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x3ea0 targets 0x3e94, is taken when a0(?) != v1(?), and falls through when a0(?) == v1(?).
  The `beq` branch at 0x3eb0 targets 0x3f14, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x3eb8 targets 0x3ef8, is taken when v0(?) == at(=0x3), and falls through when v0(?) != at(=0x3).
  The `beq` branch at 0x3ec0 targets 0x3ee0, is taken when v0(?) == at(=0x2), and falls through when v0(?) != at(=0x2).
  The `beq` branch at 0x3ed8 targets 0x3f14 and is always taken.
  The `beq` branch at 0x3ef0 targets 0x3f14 and is always taken.
  The `bne` branch at 0x3f18 targets 0x3f70, is taken when a2(?) < 0x20 (signed), and falls through when a2(?) >= 0x20 (signed).
  The `beq` branch at 0x3f68 targets 0x3f14 and is always taken.
  The `bne` branch at 0x3f74 targets 0x3fac, is taken when a2(?) < 0x10 (signed), and falls through when a2(?) >= 0x10 (signed).
  The `beq` branch at 0x3fa4 targets 0x3f70 and is always taken.
  The `bne` branch at 0x3fb0 targets 0x3e80, is taken when a2(?) < 0x4 (signed), and falls through when a2(?) >= 0x4 (signed).
  The `beq` branch at 0x3fc8 targets 0x3fac and is always taken.
  The return at 0x3d70 has v0 = t8.
  The return at 0x3e58 has v0 = t8.
  The return at 0x3ea8 has v0 = t8.
  The instructions from 0x3b94 to 0x3b98 are not reached by any path from the entry, and their branches are not listed.
- `swbcopy` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x3fd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x3fd0-0x4008 (56 bytes).
  It occupies 56 bytes.
  2 such `lb` accesses load 1 byte from ?, including `lb` at 0x3fe0, `lb` at 0x3fe4.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x3ff4, `sb` at 0x3ffc.
  The `beq` branch at 0x3fd0 targets 0x4000, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x3fd8 targets 0x4000, is taken when a0 == a1, and falls through when a0 != a1.
  The `bgtz` branch at 0x3ff8 targets 0x3fe0, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The return at 0x4000 has v0 = ?.
- `rtlock_ownerstamp` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x4008 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x4008-0x4038 (48 bytes).
  It occupies 48 bytes.
  The `lw` at 0x400c loads 4 bytes from abs 0xffffffffffffa018.
  2 such `sh` accesses store 2 bytes to [-0x5fe8] +0xc2, including `sh` at 0x4014, `sh` at 0x402c.
  The `ll` at 0x4018 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x4020 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0x4008 targets 0x3a10, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0x4024 targets 0x4018, is taken when t1(=a1) == 0, and falls through when t1(=a1) != 0.
  The return at 0x4030 has v0 = 0x0.
- `dumpcopy` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x4038 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x4038-0x4088 (80 bytes).
  It occupies 80 bytes.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffa018, including `lw` at 0x4040, `lw` at 0x4060.
  2 such `sh` accesses store 2 bytes to [-0x5fe8] +0xc2, including `sh` at 0x4050, `sh` at 0x4070.
  2 such `sw` accesses store 4 bytes to abs 0xffffffffffffa1d8, including `sw` at 0x4054, `sw` at 0x4074.
  The `jal` at 0x4058 calls bcopy with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x4044 targets 0x4054, is taken when t0(=[-0x5fe8]) == 0, and falls through when t0(=[-0x5fe8]) != 0.
  The `beq` branch at 0x404c targets 0x4058 and is always taken.
  The `beq` branch at 0x4064 targets 0x4074, is taken when t0(=[-0x5fe8]) == 0, and falls through when t0(=[-0x5fe8]) != 0.
  The `beq` branch at 0x406c targets 0x4078 and is always taken.
  The return at 0x4080 has v0 = 0x0.
- `ecc_exception` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x4290 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x4290-0x446c (476 bytes).
  It occupies 476 bytes.
  The `sd` at 0x4290 stores 8 bytes to abs 0xf60 (resume+84).
  The `sd` at 0x4294 stores 8 bytes to abs 0xf68 (resume+92).
  The `sd` at 0x42bc stores 8 bytes to abs 0xe98 (tlb_probe+168).
  The `sd` at 0x42c0 stores 8 bytes to abs 0xf90 (resume+132).
  The `sd` at 0x42c4 stores 8 bytes to abs 0xeb0 (tlb_probe+192).
  The `sd` at 0x42c8 stores 8 bytes to abs 0xeb8 (tlb_probe+200).
  The `sd` at 0x42cc stores 8 bytes to abs 0xec0 (tlb_probe+208).
  The `sd` at 0x42d0 stores 8 bytes to abs 0xec8 (tlb_probe+216).
  The `sd` at 0x42d4 stores 8 bytes to abs 0xed0 (save).
  The `sd` at 0x42d8 stores 8 bytes to abs 0xed8 (save+8).
  The `sd` at 0x42dc stores 8 bytes to abs 0xee0 (save+16).
  The `sd` at 0x42e0 stores 8 bytes to abs 0xee8 (save+24).
  The `sd` at 0x42ec stores 8 bytes to abs 0xfb0 (resume+164).
  The `sd` at 0x42f0 stores 8 bytes to abs 0xf10 (resume+4).
  The `sd` at 0x42f4 stores 8 bytes to abs 0xf18 (resume+12).
  The `sd` at 0x42f8 stores 8 bytes to abs 0xf20 (resume+20).
  The `sd` at 0x42fc stores 8 bytes to abs 0xf28 (resume+28).
  The `sd` at 0x4300 stores 8 bytes to abs 0xf30 (resume+36).
  The `sd` at 0x4304 stores 8 bytes to abs 0xf38 (resume+44).
  The `sd` at 0x4308 stores 8 bytes to abs 0xf40 (resume+52).
  The `sd` at 0x430c stores 8 bytes to abs 0xf48 (resume+60).
  The `sd` at 0x4310 stores 8 bytes to abs 0xfb8 (r10k_sr_desc).
  The `sd` at 0x4314 stores 8 bytes to abs 0xff8 (r10k_sr_desc+64).
  The `sd` at 0x431c stores 8 bytes to abs 0xf70 (resume+100).
  The `sd` at 0x4320 stores 8 bytes to abs 0xf88 (resume+124).
  The `sd` at 0x4324 stores 8 bytes to abs 0xf78 (resume+108).
  The `sd` at 0x432c stores 8 bytes to abs 0xfa8 (resume+156).
  The `sd` at 0x4354 stores 8 bytes to abs 0xe68 (tlb_probe+120).
  The `sd` at 0x4358 stores 8 bytes to abs 0xe80 (tlb_probe+144).
  The `sd` at 0x435c stores 8 bytes to abs 0xe70 (tlb_probe+128).
  The `sd` at 0x4360 stores 8 bytes to abs 0xe78 (tlb_probe+136).
  The `sd` at 0x4364 stores 8 bytes to abs 0xe90 (tlb_probe+160).
  The `sd` at 0x436c stores 8 bytes to abs 0xe88 (tlb_probe+152).
  The `ld` at 0x4378 loads 8 bytes from abs 0xe78 (tlb_probe+136).
  The `ld` at 0x437c loads 8 bytes from abs 0xe70 (tlb_probe+128).
  2 such `ld` accesses load 8 bytes from abs 0xe68 (tlb_probe+120), including `ld` at 0x4380, `ld` at 0x444c.
  The `ld` at 0x4398 loads 8 bytes from abs 0xeb0 (tlb_probe+192).
  The `ld` at 0x439c loads 8 bytes from abs 0xeb8 (tlb_probe+200).
  The `ld` at 0x43a0 loads 8 bytes from abs 0xec0 (tlb_probe+208).
  The `ld` at 0x43a4 loads 8 bytes from abs 0xec8 (tlb_probe+216).
  The `ld` at 0x43a8 loads 8 bytes from abs 0xed0 (save).
  The `ld` at 0x43ac loads 8 bytes from abs 0xed8 (save+8).
  The `ld` at 0x43b0 loads 8 bytes from abs 0xee0 (save+16).
  The `ld` at 0x43b4 loads 8 bytes from abs 0xee8 (save+24).
  The `ld` at 0x43b8 loads 8 bytes from abs 0xf10 (resume+4).
  The `ld` at 0x43bc loads 8 bytes from abs 0xf18 (resume+12).
  The `ld` at 0x43c0 loads 8 bytes from abs 0xf20 (resume+20).
  The `ld` at 0x43c4 loads 8 bytes from abs 0xf28 (resume+28).
  The `ld` at 0x43c8 loads 8 bytes from abs 0xf30 (resume+36).
  The `ld` at 0x43cc loads 8 bytes from abs 0xf38 (resume+44).
  The `ld` at 0x43d0 loads 8 bytes from abs 0xf40 (resume+52).
  The `ld` at 0x43d4 loads 8 bytes from abs 0xf48 (resume+60).
  The `ld` at 0x43d8 loads 8 bytes from abs 0xf88 (resume+124).
  The `ld` at 0x43dc loads 8 bytes from abs 0xe98 (tlb_probe+168).
  The `ld` at 0x43e0 loads 8 bytes from abs 0xf78 (resume+108).
  The `ld` at 0x43e4 loads 8 bytes from abs 0xf70 (resume+100).
  The `ld` at 0x43e8 loads 8 bytes from abs 0xf90 (resume+132).
  The `ld` at 0x4404 loads 8 bytes from abs 0xf60 (resume+84).
  The `ld` at 0x4408 loads 8 bytes from abs 0xf68 (resume+92).
  The `sw` at 0x442c stores 4 bytes to sym(eccword) +0x0.
  The `lw` at 0x4430 loads 4 bytes from abs 0xffffffffffffa1a4.
  The `sb` at 0x4438 stores 1 byte to abs 0xffffffffffffa03f.
  The `ld` at 0x4454 loads 8 bytes from abs 0xe80 (tlb_probe+144).
  The `jal` at 0x4334 calls tfi_save with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x4368 calls ecc_handler with a0=0xe98, a1=0xe68, a2=?, a3=?.
  The `jal` at 0x4390 calls tfi_restore with a0=?, a1=[0xe68]:8, a2=[0xe70]:8, a3=?.
  The `jal` at 0x4450 calls ecc_panic with a0=[0xe68]:8, a1=[0xe80]:8, a2=0xe68, a3=?.
  The `jal` at 0x4460 calls cmn_err with a0=0x0, a1=sym(cache_desc+272), a2=?, a3=?.
  The `bne` branch at 0x4370 targets 0x4424, is taken when v0(=ret(ecc_handler)) != 0, and falls through when v0(=ret(ecc_handler)) == 0.
- `eccword` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x4468 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x4468-0x446c (4 bytes).
  It occupies 4 bytes.
- `r10k_ecc_exception` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x446c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x446c-0x45ec (384 bytes).
  It occupies 384 bytes.
  25 such `sd` accesses store 8 bytes to ?, including `sd` at 0x446c, `sd` at 0x4470, `sd` at 0x4474.
  The `lb` at 0x44f4 loads 1 byte from ?.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x4500, `sb` at 0x45dc.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4510, `sw` at 0x4518, `sw` at 0x4520.
  The `lw` at 0x453c loads 4 bytes from abs 0xffffffffffffa1a4.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4568, `lw` at 0x4570.
  23 such `ld` accesses load 8 bytes from ?, including `ld` at 0x4580, `ld` at 0x458c, `ld` at 0x4590.
  The `jal` at 0x44c0 calls tfi_save with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x452c calls r10k_ecc_handler with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x4560 calls r10k_ecc_panic with a0=ret(r10k_ecc_handler), a1=?, a2=?, a3=?.
  The `jal` at 0x4578 calls tfi_restore with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x44f8 targets 0x4504, is taken when k0(?) != 0, and falls through when k0(?) == 0.
  The `beq` branch at 0x4534 targets 0x4568, is taken when v0(=ret(r10k_ecc_handler)) == 0, and falls through when v0(=ret(r10k_ecc_handler)) != 0.
- `r10k_ecc_handler` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x4b50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x4b50-0x5158 (1544 bytes).
  It occupies 1544 bytes.
  The `lwu` at 0x4b60 loads 4 bytes from a1 (arg1 at entry) +0x18.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x238, including `lw` at 0x4ba0, `lw` at 0x4bec.
  The `lw` at 0x4ba4 loads 4 bytes from a1 (arg1 at entry) +0x23c.
  The `sw` at 0x4be0 stores 4 bytes to ?.
  The `ld` at 0x4be4 loads 8 bytes from a1 (arg1 at entry) +0x0.
  14 such `sd` accesses store 8 bytes to ?, including `sd` at 0x4be8, `sd` at 0x4c54, `sd` at 0x4c5c.
  The `sw` at 0x4bfc stores 4 bytes to a1 (arg1 at entry) +0x238.
  The `sd` at 0x4c10 stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `sd` at 0x4c18 stores 8 bytes to a1 (arg1 at entry) +0x10.
  4 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x8, including `ld` at 0x4c50, `ld` at 0x4e18, `ld` at 0x4ff4.
  4 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x10, including `ld` at 0x4c58, `ld` at 0x4e20, `ld` at 0x4ffc.
  4 such `sb` accesses store 1 byte to abs 0xffffffffffffa368, including `sb` at 0x4c68, `sb` at 0x4e2c, `sb` at 0x5008.
  The `lbu` at 0x4c6c loads 1 byte from a1 (arg1 at entry) +0x26.
  The `sb` at 0x4c88 stores 1 byte to a1 (arg1 at entry) +0x26.
  The `ld` at 0x4c98 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sd` at 0x4ca4 stores 8 bytes to a0 (arg0 at entry) +0x3b8.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x4cb0, `ld` at 0x4cc4.
  The `lw` at 0x4d44 loads 4 bytes from a1 (arg1 at entry) +0x28.
  The `sw` at 0x4d60 stores 4 bytes to a1 (arg1 at entry) +0x28.
  The `lw` at 0x4e40 loads 4 bytes from a1 (arg1 at entry) +0x2c.
  The `sw` at 0x4e58 stores 4 bytes to a1 (arg1 at entry) +0x2c.
  The `lw` at 0x4f88 loads 4 bytes from a1 (arg1 at entry) +0x30.
  The `sw` at 0x4f98 stores 4 bytes to a1 (arg1 at entry) +0x30.
  The `lw` at 0x4fa4 loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `sw` at 0x4fb8 stores 4 bytes to a1 (arg1 at entry) +0x34.
  The `jal` at 0x4b90 calls cer_to_hex with a0=sym(.rodata)+3184, a1=([a1+24] << 0x0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4ce8 calls .text with a0=0x13, a1=?, a2=?, a3=?.
  The `jal` at 0x4d70 calls .text with a0=0x4, a1=?, a2=?, a3=?.
  The `jal` at 0x4dc8 calls .text with a0=0x0, a1=?, a2=?, a3=?.
  The `jal` at 0x4dd8 calls .text with a0=0x0, a1=?, a2=?, a3=?.
  The `jal` at 0x4df0 calls ecc_force_cache_line_invalid with a0=?, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x4e00 calls ecc_force_cache_line_invalid with a0=?, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x4e9c calls .text with a0=0x1, a1=?, a2=?, a3=?, a4=0x2.
  The `jal` at 0x4ed0 calls .text with a0=0x5, a1=?, a2=?, a3=?.
  The `jal` at 0x5070 calls .text with a0=0x7, a1=?, a2=?, a3=?, a4=one of 0x1, 0x80000000.
  The `jal` at 0x509c calls .text with a0=0x3, a1=?, a2=0x3, a3=?.
  The `jal` at 0x50ac calls ecc_force_cache_line_invalid with a0=?, a1=?, a2=0x3, a3=?.
  The `bgez` branch at 0x4b7c targets 0x4ba0, is taken when at(=([a1+24] << 0x22)) >= 0 (signed), and falls through when at(=([a1+24] << 0x22)) < 0 (signed).
  The `beq` branch at 0x4b98 targets 0x4d00 and is always taken.
  The `beq` branch at 0x4bb0 targets 0x4c00, is taken when t8(=[a1+572]) == t9(?), and falls through when t8(=[a1+572]) != t9(?).
  The `bne` branch at 0x4bc4 targets 0x4bd8, is taken when s3(=[a1+568]) < 0x11 (signed), and falls through when s3(=[a1+568]) >= 0x11 (signed).
  The `beq` branch at 0x4bf8 targets 0x4c04 and is always taken.
  The `beq` branch at 0x4c14 targets 0x4d28, is taken when (a1(=0xc0000000) & s1(=[a1+24])) == 0, and falls through when (a1(=0xc0000000) & s1(=[a1+24])) != 0.
  The `beq` branch at 0x4c20 targets 0x4e38, is taken when v0(?) == a2(=0x40000000), and falls through when v0(?) != a2(=0x40000000).
  The `beq` branch at 0x4c2c targets 0x4f88, is taken when a4(=0x80000000) == v0(?), and falls through when a4(=0x80000000) != v0(?).
  The `beq` branch at 0x4c34 targets 0x4f9c, is taken when a1(=0xc0000000) == v0(?), and falls through when a1(=0xc0000000) != v0(?).
  The `bltz` branch at 0x4c40 targets 0x4c64, is taken when s3(?) < 0 (signed), and falls through when s3(?) >= 0 (signed).
  The `beq` branch at 0x4c64 targets 0x4cd4, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x4c74 targets 0x4cd4, is taken when at(=0x2) == v0(=[a1+38]:1), and falls through when at(=0x2) != v0(=[a1+38]:1).
  The `bgtz` branch at 0x4ccc targets 0x4ca8, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `bne` branch at 0x4cf8 targets 0x4cdc, is taken when s1(?) < 0x1000 (unsigned), and falls through when s1(?) >= 0x1000 (unsigned).
  The `beq` branch at 0x4d5c targets 0x4da0 and is always taken.
  The `beq` branch at 0x4d64 targets 0x4db0, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x4d98 targets 0x4dc4, is taken when at(?) >= 0x2 (unsigned), and falls through when at(?) < 0x2 (unsigned).
  The `beq` branch at 0x4da0 targets 0x4d64, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `bne` branch at 0x4da8 targets 0x4d6c, is taken when s5(?) != 0, and falls through when s5(?) == 0.
  The `bne` branch at 0x4dbc targets 0x4da0, is taken when s2(?) < 0x2 (unsigned), and falls through when s2(?) >= 0x2 (unsigned).
  The `bltz` branch at 0x4e08 targets 0x4e2c, is taken when s3(?) < 0 (signed), and falls through when s3(?) >= 0 (signed).
  The `beq` branch at 0x4e30 targets 0x4cd4 and is always taken.
  The `beq` branch at 0x4e54 targets 0x5014, is taken when (s1(=[a1+24]) & v0(=0x5500000)) == 0, and falls through when (s1(=[a1+24]) & v0(=0x5500000)) != 0.
  The `beq` branch at 0x4e90 targets 0x4ebc and is always taken.
  The `beq` branch at 0x4eb4 targets 0x4f70, is taken when s2(?) >= 0x2 (unsigned), and falls through when s2(?) < 0x2 (unsigned).
  The `beq` branch at 0x4ebc targets 0x4f60, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x4ec4 targets 0x4ea8, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `beq` branch at 0x4ef8 targets 0x4f10, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x4f08 targets 0x4fc4, is taken when a1(=0x3) == a3(?), and falls through when a1(=0x3) != a3(?).
  The `beq` branch at 0x4f10 targets 0x4f20, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x4f18 targets 0x4fd4, is taken when a4(=0x2) == a7(?), and falls through when a4(=0x2) != a7(?).
  The `beq` branch at 0x4f20 targets 0x4e9c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x4f30 targets 0x4e9c, is taken when a1(=0x3) != t1(?), and falls through when a1(=0x3) == t1(?).
  The `bne` branch at 0x4f38 targets 0x4e9c, is taken when a4(=0x2) != a5(?), and falls through when a4(=0x2) == a5(?).
  The `bgez` branch at 0x4f50 targets 0x4c40, is taken when t8(=([a1+24] << 0x23)) >= 0 (signed), and falls through when t8(=([a1+24] << 0x23)) < 0 (signed).
  The `beq` branch at 0x4f58 targets 0x4c40 and is always taken.
  The `bne` branch at 0x4f60 targets 0x4ed0, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0x4f68 targets 0x4ea8 and is always taken.
  The `bltz` branch at 0x4f78 targets 0x4f58, is taken when t8(=([a1+24] << 0x23)) < 0 (signed), and falls through when t8(=([a1+24] << 0x23)) >= 0 (signed).
  The `beq` branch at 0x4f80 targets 0x4fe4 and is always taken.
  The `beq` branch at 0x4f94 targets 0x4c40 and is always taken.
  The `bne` branch at 0x4fb4 targets 0x4c40, is taken when (s1(=[a1+24]) & t9(=0x3800000)) != 0, and falls through when (s1(=[a1+24]) & t9(=0x3800000)) == 0.
  The `beq` branch at 0x4fbc targets 0x5030 and is always taken.
  The `beq` branch at 0x4fcc targets 0x4f4c and is always taken.
  The `beq` branch at 0x4fdc targets 0x4f4c and is always taken.
  The `bltz` branch at 0x4fe4 targets 0x5008, is taken when s3(?) < 0 (signed), and falls through when s3(?) >= 0 (signed).
  The `beq` branch at 0x500c targets 0x4cd4 and is always taken.
  The `bne` branch at 0x5014 targets 0x4e5c, is taken when s5(?) != 0, and falls through when s5(?) == 0.
  The `bgez` branch at 0x501c targets 0x5150, is taken when at(=([a1+24] << 0x23)) >= 0 (signed), and falls through when at(=([a1+24] << 0x23)) < 0 (signed).
  The `beq` branch at 0x5028 targets 0x4c40 and is always taken.
  The `bgez` branch at 0x5044 targets 0x513c, is taken when t8(=([a1+24] << 0x25)) >= 0 (signed), and falls through when t8(=([a1+24] << 0x25)) < 0 (signed).
  The `beq` branch at 0x5064 targets 0x50cc and is always taken.
  The `beq` branch at 0x5088 targets 0x50b4, is taken when (a1(?) & 0x3) == 0, and falls through when (a1(?) & 0x3) != 0.
  The `beq` branch at 0x5094 targets 0x5130, is taken when a2(=0x3) == a1(?), and falls through when a2(=0x3) != a1(?).
  The `beq` branch at 0x50c4 targets 0x5104, is taken when s2(=table(0x1)) >= 0x2 (unsigned), and falls through when s2(=table(0x1)) < 0x2 (unsigned).
  The `beq` branch at 0x50cc targets 0x50e4, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `bne` branch at 0x50d4 targets 0x5070, is taken when s5(?) != 0, and falls through when s5(?) == 0.
  The `beq` branch at 0x50dc targets 0x50f0 and is always taken.
  The `bne` branch at 0x50e4 targets 0x5070, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x50fc targets 0x50cc, is taken when s2(?) < 0x2 (unsigned), and falls through when s2(?) >= 0x2 (unsigned).
  The `bltz` branch at 0x5104 targets 0x5120, is taken when s3(?) < 0 (signed), and falls through when s3(?) >= 0 (signed).
  The `beq` branch at 0x5128 targets 0x4cd4 and is always taken.
  The `beq` branch at 0x5134 targets 0x4c40 and is always taken.
  The `bltz` branch at 0x5140 targets 0x504c, is taken when t8(=([a1+24] << 0x24)) < 0 (signed), and falls through when t8(=([a1+24] << 0x24)) >= 0 (signed).
  The `beq` branch at 0x5148 targets 0x4c40 and is always taken.
  The `beq` branch at 0x5150 targets 0x4c40 and is always taken.
  The return at 0x4d20 has v0 = one of sym(.rodata)+3184, ?.
  The instructions from 0x4e98 to 0x4e98 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x506c to 0x506c are not reached by any path from the entry, and their branches are not listed.
- `r10k_ecc_panic` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x5158 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x5158-0x51b4 (92 bytes).
  It occupies 92 bytes.
  The `lw` at 0x515c loads 4 bytes from a2 (arg2 at entry) +0x18.
  The `ld` at 0x5160 loads 8 bytes from a2 (arg2 at entry) +0x0.
  The `jal` at 0x5180 calls .text with a0=0x14, a1=a0 at entry (arg0), a2=[a2+24], a3=[a2]:8, a4=a2+8.
  The `jal` at 0x519c calls cmn_err with a0=0x10, a1=sym(.rodata)+4208, a2=a0 at entry (arg0), a3=a1+952.
  The return at 0x51ac has v0 = ret(cmn_err).
- `ecc_printPending` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x526c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x526c-0x5368 (252 bytes).
  It occupies 252 bytes.
  The `lw` at 0x52b8 loads 4 bytes from sym(.bss) +0x1280.
  The `lw` at 0x52c4 loads 4 bytes from [sym(default_aux+80)] +0x19c.
  The `lw` at 0x52c8 loads 4 bytes from [sym(default_aux+80)] +0x198.
  The `lw` at 0x52cc loads 4 bytes from [sym(default_aux+80)] +0x194.
  The `lw` at 0x52d8 loads 4 bytes from [sym(default_aux+80)] +0x190.
  2 such `lw` accesses load 4 bytes from [sym(default_aux+80)] +0x3a0, including `lw` at 0x52e4, `lw` at 0x5328.
  The `lw` at 0x52e8 loads 4 bytes from [sym(default_aux+80)] +0x3a4.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x52fc, `ld` at 0x5300, `ld` at 0x5304.
  The `lwu` at 0x5310 loads 4 bytes from ?.
  The `jalr` at 0x52dc calls (unknown callee) with a0=sym(.rodata)+3184, a1=?, a2=[[sym(default_aux+80)]+400], a3=[[sym(default_aux+80)]+404], a4=[[sym(default_aux+80)]+408], a5=[[sym(default_aux+80)]+412], a7=[sym(default_aux+80)].
  The `jalr` at 0x530c calls (unknown callee) with a0=sym(.rodata)+3184, a1=?, a2=?, a3=?.
  The `beq` branch at 0x52a0 targets 0x52b8 and is always taken.
  The `beq` branch at 0x52b0 targets 0x5344, is taken when s5(?) >= 0x80 (signed), and falls through when s5(?) < 0x80 (signed).
  The `beq` branch at 0x52bc targets 0x52a8, is taken when a7(=[sym(default_aux+80)]) == 0, and falls through when a7(=[sym(default_aux+80)]) != 0.
  The `beq` branch at 0x52ec targets 0x52a8, is taken when s0(=[[sym(default_aux+80)]+932]) == t9(=[[sym(default_aux+80)]+928]), and falls through when s0(=[[sym(default_aux+80)]+932]) != t9(=[[sym(default_aux+80)]+928]).
  The `bne` branch at 0x5334 targets 0x52f8, is taken when s0(?) != a2(=[[sym(default_aux+80)]+928]), and falls through when s0(?) == a2(=[[sym(default_aux+80)]+928]).
  The `beq` branch at 0x533c targets 0x52ac and is always taken.
  The return at 0x5360 has v0 = ?.
- `warn` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x5638 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x5638-0x5684 (76 bytes).
  It occupies 76 bytes.
  The `jal` at 0x5670 calls icmn_err_tag with a0=0x0, a1=0x14, a2=a0 at entry (arg0), a3=sp-56.
  The return at 0x567c has v0 = ret(icmn_err_tag).
- `engr_dvt_thread` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x5684 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x5684-0x56b0 (44 bytes).
  It occupies 44 bytes.
  The `jal` at 0x5694 calls cmn_err with a0=0x5, a1=sym(.rodata)+4624, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x569c calls sthread_exit with a0=?, a1=?, a2=?, a3=?.
  The return at 0x56a8 has v0 = ret(sthread_exit).
- `_r4600sc_disable_scache` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x5b9c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x5b9c-0x5c3c (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0x5c2c loads 4 bytes from ?.
  The `sw` at 0x5c38 stores 4 bytes to ?.
  The `beq` branch at 0x5bc4 targets 0x5be4, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x5bd0 targets 0x5be4, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x5bdc targets 0x5c20, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x5c18 targets 0x5c20 and is always taken.
  The return at 0x5c34 has v0 = ?.
- `_r4600sc_vtop` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x5dec (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x5dec-0x5e94 (168 bytes).
  It occupies 168 bytes.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=(a0 << 0x1) (`jr` at 0x5e00).
  Calls .text via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x5e64).
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x5e8c).
  The `bgez` branch at 0x5dec targets 0x5e08, is taken when a0 >= 0 (signed), and falls through when a0 < 0 (signed).
  The `bltz` branch at 0x5df4 targets 0x5e08, is taken when a5(=(a0 << 0x1)) < 0 (signed), and falls through when a5(=(a0 << 0x1)) >= 0 (signed).
  The `bltz` branch at 0x5e44 targets 0x5e88, is taken when t3(?) < 0 (signed), and falls through when t3(?) >= 0 (signed).
  The `bne` branch at 0x5e5c targets 0x5e6c, is taken when (t8(?) & 0x1) != 0, and falls through when (t8(?) & 0x1) == 0.
- `_r4600sc_cache_index` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x5e94 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x5e94-0x5eb0 (28 bytes).
  It occupies 28 bytes.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=0x9000000000000000 (`jr` at 0x5ea8).
- `size_2nd_cache` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x77f4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x77f4-0x7910 (284 bytes).
  It occupies 284 bytes.
  The `lw` at 0x78b0 loads 4 bytes from ?.
  The `beq` branch at 0x7810 targets 0x7878, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x781c targets 0x7878, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x7828 targets 0x7848, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x7834 targets 0x7848, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x7840 targets 0x7880, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `bne` branch at 0x7858 targets 0x7908, is taken when (t0(?) & at(=0x20000)) != 0, and falls through when (t0(?) & at(=0x20000)) == 0.
  The `beq` branch at 0x7870 targets 0x7908 and is always taken.
  The `beq` branch at 0x7878 targets 0x7908 and is always taken.
  The `bne` branch at 0x7888 targets 0x7898 and is always taken.
  The `beq` branch at 0x78ac targets 0x7898, is taken when at(=0x1000000) >= v0(?) (signed), and falls through when at(=0x1000000) < v0(?) (signed).
  The `beq` branch at 0x78ec targets 0x7908, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x7900 targets 0x78d0, is taken when v0(?) < at(=0x1000000) (signed), and falls through when v0(?) >= at(=0x1000000) (signed).
  The return at 0x7908 has v0 = one of ?, 0x0.
  The instructions from 0x7890 to 0x7894 are not reached by any path from the entry, and their branches are not listed.
- `_c_hwb` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x7910 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x7910-0x7998 (136 bytes).
  It occupies 136 bytes.
  The `bne` branch at 0x7918 targets 0x7978, is taken when a0 < t0(=0x1) (unsigned), and falls through when a0 >= t0(=0x1) (unsigned).
  The `beq` branch at 0x7920 targets 0x7988, is taken when a0 == t0(=0x1), and falls through when a0 != t0(=0x1).
  The `beq` branch at 0x792c targets 0x7970, is taken when a0 == t0(=0x3), and falls through when a0 != t0(=0x3).
  The `beq` branch at 0x7970 targets 0x7968 and is always taken.
  The `beq` branch at 0x7980 targets 0x7968 and is always taken.
  The `beq` branch at 0x7990 targets 0x7968 and is always taken.
  The return at 0x7968 has v0 = one of ?, -0x1, 0x0.
- `_c_hwbinv` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x7998 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x7998-0x7a10 (120 bytes).
  It occupies 120 bytes.
  The `bne` branch at 0x79a0 targets 0x79f8, is taken when a0 < t0(=0x1) (unsigned), and falls through when a0 >= t0(=0x1) (unsigned).
  The `beq` branch at 0x79a8 targets 0x7a00, is taken when a0 == t0(=0x1), and falls through when a0 != t0(=0x1).
  The `beq` branch at 0x79b4 targets 0x79f8, is taken when a0 == t0(=0x3), and falls through when a0 != t0(=0x3).
  The `beq` branch at 0x79f8 targets 0x79f0 and is always taken.
  The `beq` branch at 0x7a08 targets 0x79f0 and is always taken.
  The return at 0x79f0 has v0 = one of ?, -0x1, 0x0.
- `_c_hinv` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x7a10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x7a10-0x7a84 (116 bytes).
  It occupies 116 bytes.
  The `bne` branch at 0x7a18 targets 0x7a64, is taken when a0 < t0(=0x1) (unsigned), and falls through when a0 >= t0(=0x1) (unsigned).
  The `beq` branch at 0x7a20 targets 0x7a74, is taken when a0 == t0(=0x1), and falls through when a0 != t0(=0x1).
  The `beq` branch at 0x7a6c targets 0x7a5c and is always taken.
  The `beq` branch at 0x7a7c targets 0x7a5c and is always taken.
  The return at 0x7a5c has v0 = one of ?, 0x0.
- `_c_ilt_n_ecc` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x7a84 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x7a84-0x7b08 (132 bytes).
  It occupies 132 bytes.
  The `sw` at 0x7adc stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `sw` at 0x7ae4 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `bne` branch at 0x7a8c targets 0x7ae8, is taken when a0 < t0(=0x1) (unsigned), and falls through when a0 >= t0(=0x1) (unsigned).
  The `beq` branch at 0x7a94 targets 0x7af8, is taken when a0 == t0(=0x1), and falls through when a0 != t0(=0x1).
  The `beq` branch at 0x7af0 targets 0x7aa4 and is always taken.
  The `beq` branch at 0x7b00 targets 0x7aa4 and is always taken.
  The return at 0x7ae0 has v0 = 0x0.
- `_c_ilt` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x7b08 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x7b08-0x7b78 (112 bytes).
  It occupies 112 bytes.
  The `sw` at 0x7b4c stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `bne` branch at 0x7b10 targets 0x7b58, is taken when a0 < t0(=0x1) (unsigned), and falls through when a0 >= t0(=0x1) (unsigned).
  The `beq` branch at 0x7b18 targets 0x7b68, is taken when a0 == t0(=0x1), and falls through when a0 != t0(=0x1).
  The `beq` branch at 0x7b60 targets 0x7b28 and is always taken.
  The `beq` branch at 0x7b70 targets 0x7b28 and is always taken.
  The return at 0x7b50 has v0 = 0x0.
- `_c_ist` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x7b78 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x7b78-0x7bf4 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0x7b7c loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `bne` branch at 0x7b9c targets 0x7bc4, is taken when a0 < t0(=0x1) (unsigned), and falls through when a0 >= t0(=0x1) (unsigned).
  The `beq` branch at 0x7ba4 targets 0x7bdc, is taken when a0 == t0(=0x1), and falls through when a0 != t0(=0x1).
  The return at 0x7bbc has v0 = 0x0.
  The return at 0x7bd4 has v0 = 0x0.
  The return at 0x7bec has v0 = 0x0.
- `runcached` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x7c0c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x7c0c-0x7c1c (16 bytes).
  It occupies 16 bytes.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x7c14).
- `uncached` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x7c1c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x7c1c-0x7c2c (16 bytes).
  It occupies 16 bytes.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x7c24).
- `_munge_decc` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x7c2c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x7c2c-0x7cb8 (140 bytes).
  It occupies 140 bytes.
  The return at 0x7cb0 has v0 = ?.
- `__prefetch_store` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x7f3c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x7f3c-0x7f68 (44 bytes).
  It occupies 44 bytes.
  The `blez` branch at 0x7f3c targets 0x7f60, is taken when a1 <= 0 (signed), and falls through when a1 > 0 (signed).
  The `bgez` branch at 0x7f58 targets 0x7f50, is taken when a1(?) >= 0 (signed), and falls through when a1(?) < 0 (signed).
  The return at 0x7f60 has v0 = ?.
- `__prefetch_load` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x7f68 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x7f68-0x7f94 (44 bytes).
  It occupies 44 bytes.
  The `blez` branch at 0x7f68 targets 0x7f8c, is taken when a1 <= 0 (signed), and falls through when a1 > 0 (signed).
  The `bgez` branch at 0x7f84 targets 0x7f7c, is taken when a1(?) >= 0 (signed), and falls through when a1(?) < 0 (signed).
  The return at 0x7f8c has v0 = ?.
- `sw_cachesynch_patch_insts` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x7f94 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x7f94-0x7fa8 (20 bytes).
  It occupies 20 bytes.
- `cache_sync_bp_start` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x7fa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x7fa0-0x7fa8 (8 bytes).
  It occupies 8 bytes.
- `cache_sync` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x7fa8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x7fa8-0x80ac (260 bytes).
  It occupies 260 bytes.
  The `sd` at 0x7fa8 stores 8 bytes to abs 0xffffffffffffa030.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffa028, including `ld` at 0x8054, `ld` at 0x809c.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffa030, including `ld` at 0x805c, `ld` at 0x80a0.
  Calls longway via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x7fbc).
  Calls longway via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x7fd8).
  Calls longway via direct with a0=?, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x8058).
  The `blez` branch at 0x7fac targets 0x808c, is taken when a1 <= 0 (signed), and falls through when a1 > 0 (signed).
  The `bne` branch at 0x7fb4 targets 0x7fc4, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x7fd0 targets 0x7fe0, is taken when t0(=(a0 + a1)-1) != 0, and falls through when t0(=(a0 + a1)-1) == 0.
  The `beq` branch at 0x8020 targets 0x802c, is taken when a1(?) >= t0(?) (signed), and falls through when a1(?) < t0(?) (signed).
  The `bgez` branch at 0x804c targets 0x8060, is taken when at(?) >= 0 (signed), and falls through when at(?) < 0 (signed).
  The `bne` branch at 0x8074 targets 0x803c, is taken when k0(?) < k1(?) (unsigned), and falls through when k0(?) >= k1(?) (unsigned).
  The `bne` branch at 0x8084 targets 0x7fe0, is taken when a1(?) != 0, and falls through when a1(?) == 0.
- `sw_cachesynch_op1` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x8030 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x8030-0x8034 (4 bytes).
  It occupies 4 bytes.
- `sw_cachesynch_op2` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x8034 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x8034-0x803c (8 bytes).
  It occupies 8 bytes.
- `sw_cachesynch_op4` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x803c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x803c-0x8078 (60 bytes).
  It occupies 60 bytes.
  The `ld` at 0x8054 loads 8 bytes from abs 0xffffffffffffa028.
  The `ld` at 0x805c loads 8 bytes from abs 0xffffffffffffa030.
  Calls longway via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x8058).
  The `bgez` branch at 0x804c targets 0x8060, is taken when at(?) >= 0 (signed), and falls through when at(?) < 0 (signed).
  The `bne` branch at 0x8074 targets 0x803c, is taken when k0(?) < k1(?) (unsigned), and falls through when k0(?) >= k1(?) (unsigned).
- `sw_cachesynch_op3` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x8078 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x8078-0x80ac (52 bytes).
  It occupies 52 bytes.
  The `ld` at 0x809c loads 8 bytes from abs 0xffffffffffffa028.
  The `ld` at 0x80a0 loads 8 bytes from abs 0xffffffffffffa030.
  The `bne` branch at 0x8084 targets 0x7fe0, is taken when a1(?) != 0, and falls through when a1(?) == 0.
- `cache_tag_ecc` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x80ac (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x80ac-0x810c (96 bytes).
  It occupies 96 bytes.
  The `ld` at 0x80b4 loads 8 bytes from sym(.rodata) +0x1410.
  The `ld` at 0x80bc loads 8 bytes from sym(.rodata) +0x1420.
  The `lwu` at 0x80cc loads 4 bytes from ?.
  The `beq` branch at 0x80c0 targets 0x8104, is taken when a1(?) == a2(=0x736f667466705f61), and falls through when a1(?) != a2(=0x736f667466705f61).
  The `beq` branch at 0x80d4 targets 0x80ec, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x80e4 targets 0x80d4 and is always taken.
  The `beq` branch at 0x80fc targets 0x80b8 and is always taken.
  The return at 0x8104 has v0 = ?.
- `VEC_trap` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x810c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x810c-0x8160 (84 bytes).
  It occupies 84 bytes.
  The `jal` at 0x8138 calls trap with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=s0 at entry, a3=a3 at entry (arg3).
  Calls exception_exit via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x8158).
- `init_sysid` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x82bc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x82bc-0x83c8 (268 bytes).
  It occupies 268 bytes.
  The `jal` at 0x82c8 calls kopt_find with a0=sym(.rodata)+5312, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x82d4 calls etoh with a0=ret(kopt_find), a1=?, a2=?, a3=?.
  The `jal` at 0x8368 calls sprintf with a0=sym(arg_eaddr), a1=sym(.rodata)+5248, a2=0x0, a3=0x8, a4=0x0, a5=0x0, a6=0xa, a7=0xa.
  The `jal` at 0x8378 calls etoh with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x8388 calls bcopy with a0=ret(etoh), a1=sym(eaddr), a2=0x6, a3=?.
  The `bne` branch at 0x82dc targets 0x8378, is taken when v0(=ret(etoh)) != 0, and falls through when v0(=ret(etoh)) == 0.
  The `beq` branch at 0x8370 targets 0x83c0 and is always taken.
  The return at 0x83c0 has v0 = one of ret(sprintf), ret(bcopy).
- `timestamp_init` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x89d8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x89d8-0x8a30 (88 bytes).
  It occupies 88 bytes.
  The `jal` at 0x89e0 calls findcpufreq_raw with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x8a28 has v0 = ret(findcpufreq_raw).
- `allowboot` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x8be8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x8be8-0x8cb0 (200 bytes).
  It occupies 200 bytes.
  The `sw` at 0x8c14 stores 4 bytes to sym(bdevsw) +0x4.
  The `sw` at 0x8c24 stores 4 bytes to sym(bdevsw) +0x38.
  The `sw` at 0x8c3c stores 4 bytes to sym(bdevsw) -0x30.
  The `sw` at 0x8c54 stores 4 bytes to sym(cdevsw) +0x4.
  The `sw` at 0x8c64 stores 4 bytes to sym(cdevsw) +0x50.
  The `sw` at 0x8c7c stores 4 bytes to sym(cdevsw) -0x48.
  The `jal` at 0x8c80 calls get_cpu_irr with a0=a0 at entry (arg0), a1=?, a2=sym(cdevsw), a3=[sym(cdevcnt)], a4=[sym(bdevcnt)], a5=sym(cdevsw).
  The `jal` at 0x8ca0 calls init_mfhi_war with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x8c00 targets 0x8c40, is taken when a4(=[sym(bdevcnt)]) <= 0 (signed), and falls through when a4(=[sym(bdevcnt)]) > 0 (signed).
  The `beq` branch at 0x8c18 targets 0x8c40, is taken when a1(?) >= a4(=[sym(bdevcnt)]) (signed), and falls through when a1(?) < a4(=[sym(bdevcnt)]) (signed).
  The `beq` branch at 0x8c28 targets 0x8c40, is taken when a1(?) >= a4(=[sym(bdevcnt)]) (signed), and falls through when a1(?) < a4(=[sym(bdevcnt)]) (signed).
  The `bne` branch at 0x8c38 targets 0x8c0c, is taken when a1(?) < a4(=[sym(bdevcnt)]) (signed), and falls through when a1(?) >= a4(=[sym(bdevcnt)]) (signed).
  The `blez` branch at 0x8c44 targets 0x8c80, is taken when a3(=[sym(cdevcnt)]) <= 0 (signed), and falls through when a3(=[sym(cdevcnt)]) > 0 (signed).
  The `beq` branch at 0x8c58 targets 0x8c80, is taken when a1(?) >= a3(=[sym(cdevcnt)]) (signed), and falls through when a1(?) < a3(=[sym(cdevcnt)]) (signed).
  The `beq` branch at 0x8c68 targets 0x8c80, is taken when a1(?) >= a3(=[sym(cdevcnt)]) (signed), and falls through when a1(?) < a3(=[sym(cdevcnt)]) (signed).
  The `bne` branch at 0x8c78 targets 0x8c4c, is taken when a1(?) < a3(=[sym(cdevcnt)]) (signed), and falls through when a1(?) >= a3(=[sym(cdevcnt)]) (signed).
  The `bne` branch at 0x8c90 targets 0x8ca0, is taken when t8(?) < 0x23 (signed), and falls through when t8(?) >= 0x23 (signed).
  The `beq` branch at 0x8ca8 targets 0x8c98 and is always taken.
  The return at 0x8c98 has v0 = one of ret(get_cpu_irr), ret(init_mfhi_war).
- `setupbadmem` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x8cb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x8cb0-0x8e18 (360 bytes).
  It occupies 360 bytes.
  3 such `lw` accesses load 4 bytes from sym(.bss) +0x1684, including `lw` at 0x8cf0, `lw` at 0x8d20, `lw` at 0x8d38.
  6 such `sh` accesses store 2 bytes to ?, including `sh` at 0x8d1c, `sh` at 0x8d34, `sh` at 0x8db0.
  The `jal` at 0x8cd4 calls flush_tlb with a0=0x1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x8ce0 calls flush_tlb with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x8d50 calls extk0_avail_alloc with a0=a1 at entry (arg1), a1=[sym(pfdat)], a2=?, a3=?, a5=sym(.bss)+5760, a7=[sym(.bss)+5764].
  The `beq` branch at 0x8d04 targets 0x8e08, is taken when a7(=[sym(.bss)+5764]) == 0, and falls through when a7(=[sym(.bss)+5764]) != 0.
  The `bne` branch at 0x8d14 targets 0x8e00, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x8d2c targets 0x8d4c, is taken when a4(?) >= a7(=[sym(.bss)+5764]) (signed), and falls through when a4(?) < a7(=[sym(.bss)+5764]) (signed).
  The `bne` branch at 0x8d44 targets 0x8d1c, is taken when a4(?) < a7(=[sym(.bss)+5764]) (signed), and falls through when a4(?) >= a7(=[sym(.bss)+5764]) (signed).
  The `beq` branch at 0x8d8c targets 0x8e10, is taken when t2(=[sym(seg1_maxmem)]) == 0, and falls through when t2(=[sym(seg1_maxmem)]) != 0.
  The `beq` branch at 0x8da4 targets 0x8dd4, is taken when t1(=[sym(seg0_maxmem)]) == t2(=0x50000), and falls through when t1(=[sym(seg0_maxmem)]) != t2(=0x50000).
  The `beq` branch at 0x8db4 targets 0x8dd4, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x8dc0 targets 0x8dd4, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x8dcc targets 0x8dac, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x8e00 targets 0x8d4c and is always taken.
  The `beq` branch at 0x8e08 targets 0x8d5c and is always taken.
  The `beq` branch at 0x8e10 targets 0x8dd8 and is always taken.
  The return at 0x8df8 has v0 = one of ?, table(0x1).
- `is_extk0_pfn` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x92c4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x92c4-0x9324 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x92e0 loads 4 bytes from sym(.bss) +0x1688.
  The `jal` at 0x92d0 calls get_cpu_irr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x92f4 targets 0x9318, is taken when at(?) >= 0x23 (signed), and falls through when at(?) < 0x23 (signed).
  The `bne` branch at 0x92fc targets 0x9318, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x9304 targets 0x9318, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x9310 targets 0x931c and is always taken.
  The return at 0x931c has v0 = one of 0x0, 0x1.
- `extk0_pages_added` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x9324 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x9324-0x9438 (276 bytes).
  It occupies 276 bytes.
  2 such `lw` accesses load 4 bytes from sym(.bss) +0x1680, including `lw` at 0x9328, `lw` at 0x93f8.
  The `lw` at 0x93a4 loads 4 bytes from table(0xffffffffffd00000) +0x0.
  The `jal` at 0x93b4 calls bad_vfn with a0=?, a1=?, a2=table(0xffffffffffd00000), a3=0xc0000, a4=0xffffffffffd00000, a6=[sym(kptbl)].
  The `jal` at 0x93dc calls get_cpu_irr with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x933c targets 0x93dc, is taken when a0(?) >= at(=0x80000) (unsigned), and falls through when a0(?) < at(=0x80000) (unsigned).
  The `bne` branch at 0x9368 targets 0x938c, is taken when a0(?) < a1(=0xa0000) (unsigned), and falls through when a0(?) >= a1(=0xa0000) (unsigned).
  The `bne` branch at 0x937c targets 0x938c, is taken when t3(=0xbffff) < a0(?) (unsigned), and falls through when t3(=0xbffff) >= a0(?) (unsigned).
  The `beq` branch at 0x9384 targets 0x93c8 and is always taken.
  The `bne` branch at 0x9394 targets 0x93b4, is taken when a0(?) < a3(=0xc0000) (unsigned), and falls through when a0(?) >= a3(=0xc0000) (unsigned).
  The `bne` branch at 0x939c targets 0x93b4, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x93ac targets 0x93c0 and is always taken.
  The `beq` branch at 0x9400 targets 0x941c, is taken when a1(?) >= 0x23 (signed), and falls through when a1(?) < 0x23 (signed).
  The `bne` branch at 0x940c targets 0x9344, is taken when a3(=0x807ff) < a0(?) (unsigned), and falls through when a3(=0x807ff) >= a0(?) (unsigned).
  The `beq` branch at 0x9414 targets 0x93c8 and is always taken.
  The `bne` branch at 0x9428 targets 0x9348, is taken when a4(=0x8ffff) < a0(?) (unsigned), and falls through when a4(=0x8ffff) >= a0(?) (unsigned).
  The `beq` branch at 0x9430 targets 0x9414 and is always taken.
  The return at 0x93d4 has v0 = ?.
- `extk0_wiremem` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x9438 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x9438-0x950c (212 bytes).
  It occupies 212 bytes.
  2 such `lw` accesses load 4 bytes from sym(.bss) +0x168c, including `lw` at 0x9480, `lw` at 0x94ac.
  2 such `lw` accesses load 4 bytes from sym(.bss) +0x1690, including `lw` at 0x9494, `lw` at 0x94a8.
  The `lw` at 0x9498 loads 4 bytes from sym(.bss) +0x169c.
  The `jal` at 0x9458 calls flush_tlb with a0=0x3, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x94a0 calls tlbwired with a0=?, a1=0x0, a2=?, a3=([sym(.bss)+5772] << 0x20), a4=([sym(.bss)+5776] << 0x20), a5=[sym(.bss)+5788], a7=[sym(.bss)+5772].
  The `beq` branch at 0x9484 targets 0x94e8, is taken when a7(=[sym(.bss)+5772]) == 0, and falls through when a7(=[sym(.bss)+5772]) != 0.
  The `bne` branch at 0x94e0 targets 0x9480, is taken when s4(?) < 0x2 (unsigned), and falls through when s4(?) >= 0x2 (unsigned).
  The return at 0x9504 has v0 = one of ?, ret(tlbwired).
- `extk0_mem_alloc` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x950c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x950c-0x9630 (292 bytes).
  It occupies 292 bytes.
  3 such `lw` accesses load 4 bytes from sym(.bss) +0x1680, including `lw` at 0x9514, `lw` at 0x95c8, `lw` at 0x95dc.
  The `lw` at 0x951c loads 4 bytes from sym(sptbitmap) +0x10.
  2 such `lw` accesses load 4 bytes from sym(.bss) +0x1688, including `lw` at 0x9558, `lw` at 0x95a4.
  2 such `sw` accesses store 4 bytes to sym(.bss) +0x1684, including `sw` at 0x9564, `sw` at 0x9580.
  2 such `sw` accesses store 4 bytes to sym(.bss) +0x1680, including `sw` at 0x9568, `sw` at 0x95ec.
  2 such `lw` accesses load 4 bytes from sym(.bss) +0x1684, including `lw` at 0x958c, `lw` at 0x95d8.
  The `sw` at 0x95a0 stores 4 bytes to ?.
  2 such `sw` accesses store 4 bytes to sym(.bss) +0x1688, including `sw` at 0x95ac, `sw` at 0x95e4.
  The `jal` at 0x9584 calls pte_cachebits with a0=?, a1=?, a2=?, a3=?, a6=[sym(.bss)+5760].
  The `jal` at 0x95c0 calls kvalloc with a0=0x1, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x9620 calls kvalloc with a0=0x1800, a1=0x0, a2=0x0, a3=[sym(.bss)+5760], a4=sym(.bss)+2880.
  The `beq` branch at 0x9540 targets 0x9610, is taken when at(=[sym(kptbl)]) == 0, and falls through when at(=[sym(kptbl)]) != 0.
  The `beq` branch at 0x9548 targets 0x9610, is taken when v0(=[sym(sptbitmap)+16]) == 0, and falls through when v0(=[sym(sptbitmap)+16]) != 0.
  The `beq` branch at 0x9550 targets 0x9618, is taken when a3(=[sym(.bss)+5760]) == 0, and falls through when a3(=[sym(.bss)+5760]) != 0.
  The `beq` branch at 0x955c targets 0x95b0 and is always taken.
  The `bne` branch at 0x95b4 targets 0x95dc, is taken when s1(=a0) < a3(?) (signed), and falls through when s1(=a0) >= a3(?) (signed).
  The `beq` branch at 0x95cc targets 0x9564, is taken when a6(=[sym(.bss)+5760]) == 0, and falls through when a6(=[sym(.bss)+5760]) != 0.
  The `beq` branch at 0x95d4 targets 0x956c and is always taken.
  The `beq` branch at 0x9610 targets 0x95f0 and is always taken.
  The `beq` branch at 0x9628 targets 0x9558 and is always taken.
  The return at 0x9608 has v0 = one of [sym(.bss)+5760], 0x0.
- `extk0_avail_alloc` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x9630 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x9630-0x9960 (816 bytes).
  It occupies 816 bytes.
  The `lw` at 0x9640 loads 4 bytes from sym(.bss) +0x1680.
  8 such `lw` accesses load 4 bytes from sym(.bss) +0x1684, including `lw` at 0x9660, `lw` at 0x96d0, `lw` at 0x96e0.
  The `sw` at 0x96b4 stores 4 bytes to sym(.bss) +0x1680.
  2 such `sw` accesses store 4 bytes to sym(.bss) +0x1684, including `sw` at 0x96dc, `sw` at 0x9848.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x9700, `sw` at 0x9860.
  The `sw` at 0x9758 stores 4 bytes to sym(.bss) +0x169c.
  The `sw` at 0x9770 stores 4 bytes to sym(.bss) +0x1678.
  The `sw` at 0x97a4 stores 4 bytes to sym(.bss) +0x167c.
  The `jal` at 0x96c8 calls kvalloc with a0=0x1, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x96d8 calls pte_cachebits with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x9754 calls pte_cachebits with a0=?, a1=?, a2=?, a3=one of 0x400000, 0x1000000.
  The `jal` at 0x976c calls pte_cachebits with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x9830 calls kvalloc with a0=0x1, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x9844 calls pte_cachebits with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x98d0 calls extk0_wiremem with a0=?, a1=?, a2=?, a3=0xfff7fff, a4=0xfffffffffff7ffff.
  The `jal` at 0x98dc calls kvfree with a0=0xffffffffc0000000, a1=0x1800, a2=?, a3=?.
  The `bne` branch at 0x969c targets 0x96a8, is taken when a3(=(([sym(nproc)] + [sym(nproc)]) + a0)-2048) < v1(?) (signed), and falls through when a3(=(([sym(nproc)] + [sym(nproc)]) + a0)-2048) >= v1(?) (signed).
  The `blez` branch at 0x96b8 targets 0x9708, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `bgtz` branch at 0x96fc targets 0x96c0, is taken when s3(?) > 0 (signed), and falls through when s3(?) <= 0 (signed).
  The `blez` branch at 0x9728 targets 0x9948, is taken when a0(=([sym(.bss)+5764]-2048 << 0xc)) <= 0 (signed), and falls through when a0(=([sym(.bss)+5764]-2048 << 0xc)) > 0 (signed).
  The `beq` branch at 0x9738 targets 0x97ac and is always taken.
  The `beq` branch at 0x9744 targets 0x9918, is taken when s5(?) == a1(=0x1), and falls through when s5(?) != a1(=0x1).
  The `beq` branch at 0x97a0 targets 0x980c, is taken when s5(?) >= 0x2 (signed), and falls through when s5(?) < 0x2 (signed).
  The `blez` branch at 0x97a8 targets 0x980c, is taken when s2(?) <= 0 (signed), and falls through when s2(?) > 0 (signed).
  The `beq` branch at 0x97b4 targets 0x97d0, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `beq` branch at 0x97c0 targets 0x9744, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x97c8 targets 0x97dc and is always taken.
  The `beq` branch at 0x97d4 targets 0x9744, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x97dc targets 0x97f4 and is always taken.
  The `beq` branch at 0x97ec targets 0x98fc, is taken when a2(?) >= s2(?) (signed), and falls through when a2(?) < s2(?) (signed).
  The `bne` branch at 0x97fc targets 0x97e4, is taken when a3(=one of 0x400000, 0x1000000) != a2(?), and falls through when a3(=one of 0x400000, 0x1000000) == a2(?).
  The `beq` branch at 0x9804 targets 0x9754 and is always taken.
  The `beq` branch at 0x9814 targets 0x9874, is taken when a2(=[sym(.bss)+5764]) >= s3(?) (signed), and falls through when a2(=[sym(.bss)+5764]) < s3(?) (signed).
  The `bne` branch at 0x986c targets 0x982c, is taken when a2(=[sym(.bss)+5764]) < s3(?) (signed), and falls through when a2(=[sym(.bss)+5764]) >= s3(?) (signed).
  The `bne` branch at 0x98fc targets 0x9750, is taken when s5(?) != a5(=0x1), and falls through when s5(?) == a5(=0x1).
  The `beq` branch at 0x9908 targets 0x9750, is taken when a6(?) >= s2(?) (signed), and falls through when a6(?) < s2(?) (signed).
  The `beq` branch at 0x9910 targets 0x9934 and is always taken.
  The `bne` branch at 0x9924 targets 0x9940, is taken when s2(?) < 0x2001 (signed), and falls through when s2(?) >= 0x2001 (signed).
  The `beq` branch at 0x9938 targets 0x9750 and is always taken.
  The `beq` branch at 0x9940 targets 0x9754 and is always taken.
  The `beq` branch at 0x9950 targets 0x9878, is taken when a2(=[sym(.bss)+5764]) >= 0x800 (signed), and falls through when a2(=[sym(.bss)+5764]) < 0x800 (signed).
  The `beq` branch at 0x9958 targets 0x981c and is always taken.
  The return at 0x98f4 has v0 = ret(kvfree).
  The instructions from 0x9740 to 0x9740 are not reached by any path from the entry, and their branches are not listed.
- `set_hwperf_intr` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x9f78 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x9f78-0x9ff8 (128 bytes).
  It occupies 128 bytes.
  The `jal` at 0x9f84 calls r1nkperf_control_register_set with a0=0x0, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x9f90 calls r1nkperf_control_register_set with a0=0x1, a1=0x0, a2=?, a3=?.
  The `jal` at 0x9f98 calls get_cpu_irr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x9fb0 calls get_cpu_irr with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x9fdc calls r1nkperf_control_register_set with a0=0x2, a1=0x0, a2=?, a3=?.
  The `jal` at 0x9fe8 calls r1nkperf_control_register_set with a0=0x3, a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x9fa8 targets 0x9fdc, is taken when at(?) == v0(=0xe), and falls through when at(?) != v0(=0xe).
  The `beq` branch at 0x9fc0 targets 0x9fd8, is taken when v1(?) == a0(=0xf), and falls through when v1(?) != a0(=0xf).
  The `beq` branch at 0x9ff0 targets 0x9fc8 and is always taken.
  The return at 0x9fd0 has v0 = one of ret(get_cpu_irr), ret(r1nkperf_control_register_set).
- `getcvpriority` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xa7cc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xa7cc-0xa934 (360 bytes).
  It occupies 360 bytes.
  2 such `lh` accesses load 2 bytes from sym(.data) +0xb0c, including `lh` at 0xa7f4, `lh` at 0xa820.
  6 such `sw` accesses store 4 bytes to ?, including `sw` at 0xa810, `sw` at 0xa83c, `sw` at 0xa8a8.
  10 such `lw` accesses load 4 bytes from ?, including `lw` at 0xa88c, `lw` at 0xa890, `lw` at 0xa894.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0xa8fc, `sh` at 0xa914.
  The `lh` at 0xa928 loads 2 bytes from table(sym(.data)+2816) +0x9c.
  The `beq` branch at 0xa818 targets 0xa848, is taken when a3(?) >= 0x20 (signed), and falls through when a3(?) < 0x20 (signed).
  The `bne` branch at 0xa840 targets 0xa7f4, is taken when a3(?) < 0x20 (signed), and falls through when a3(?) >= 0x20 (signed).
  The `beq` branch at 0xa848 targets 0xa864 and is always taken.
  The `bltz` branch at 0xa854 targets 0xa8ec, is taken when a6(?) < 0 (signed), and falls through when a6(?) >= 0 (signed).
  The `bne` branch at 0xa85c targets 0xa8ec, is taken when t0(=one of 0x0, 0x1) != 0, and falls through when t0(=one of 0x0, 0x1) == 0.
  The `blez` branch at 0xa864 targets 0xa8ec, is taken when a6(?) <= 0 (signed), and falls through when a6(?) > 0 (signed).
  The `beq` branch at 0xa878 targets 0xa88c and is always taken.
  The `bne` branch at 0xa880 targets 0xa850, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0xa8a0 targets 0xa8b4, is taken when a7(?) >= at(?) (signed), and falls through when a7(?) < at(?) (signed).
  The `bne` branch at 0xa8b4 targets 0xa850, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0xa8d0 targets 0xa880, is taken when v0(?) >= v1(?) (signed), and falls through when v0(?) < v1(?) (signed).
  The `beq` branch at 0xa8e0 targets 0xa880 and is always taken.
  The `bltz` branch at 0xa904 targets 0xa920, is taken when t2(?) < 0 (signed), and falls through when t2(?) >= 0 (signed).
  The `bgez` branch at 0xa918 targets 0xa8f4, is taken when t2(?) >= 0 (signed), and falls through when t2(?) < 0 (signed).
  The return at 0xa92c has v0 = [table(sym(.data)+2816)+156]:2.
  The instructions from 0xa8e8 to 0xa8e8 are not reached by any path from the entry, and their branches are not listed.
- `setsplmasks` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xaa8c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xaa8c-0xaaf8 (108 bytes).
  It occupies 108 bytes.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0xaaa8, `ld` at 0xaad8.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0xaabc, `sd` at 0xaaec.
  The `blez` branch at 0xaa8c targets 0xaac0, is taken when a1 <= 0 (signed), and falls through when a1 > 0 (signed).
  The `bne` branch at 0xaab8 targets 0xaaa4, is taken when a4(?) < a1 (signed), and falls through when a4(?) >= a1 (signed).
  The `beq` branch at 0xaacc targets 0xaaf0, is taken when a1 >= 0x5 (signed), and falls through when a1 < 0x5 (signed).
  The `bne` branch at 0xaae8 targets 0xaad4, is taken when a1(?) < 0x5 (signed), and falls through when a1(?) >= 0x5 (signed).
  The return at 0xaaf0 has v0 = ?.
- `issplhi` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xb2a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xb2a0-0xb2d4 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0xb2b8 loads 4 bytes from abs 0xffffffffffffa2e0.
  The `beq` branch at 0xb2a8 targets 0xb2b8, is taken when v1(?) == a0(=0x1), and falls through when v1(?) != a0(=0x1).
  The `beq` branch at 0xb2b0 targets 0xb2cc and is always taken.
  The `bne` branch at 0xb2c0 targets 0xb2cc, is taken when v1(=[-0x5d20]) < 0x8 (signed), and falls through when v1(=[-0x5d20]) >= 0x8 (signed).
  The return at 0xb2cc has v0 = one of 0x0, 0x1.
- `issplprof` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xb2d4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xb2d4-0xb308 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0xb2ec loads 4 bytes from abs 0xffffffffffffa2e0.
  The `beq` branch at 0xb2dc targets 0xb2ec, is taken when v1(?) == a0(=0x1), and falls through when v1(?) != a0(=0x1).
  The `beq` branch at 0xb2e4 targets 0xb300 and is always taken.
  The `bne` branch at 0xb2f4 targets 0xb300, is taken when v1(=[-0x5d20]) < 0x10 (signed), and falls through when v1(=[-0x5d20]) >= 0x10 (signed).
  The return at 0xb300 has v0 = one of 0x0, 0x1.
- `splecc` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xb410 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xb410-0xb450 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xb42c loads 4 bytes from abs 0xffffffffffffa2e0.
  The `sw` at 0xb444 stores 4 bytes to abs 0xffffffffffffa2e0.
  The return at 0xb448 has v0 = ?.
- `isspl0` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xb4fc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xb4fc-0xb51c (32 bytes).
  It occupies 32 bytes.
  The `bne` branch at 0xb504 targets 0xb514, is taken when a0(?) != v1(=0x8701), and falls through when a0(?) == v1(=0x8701).
  The return at 0xb50c has v0 = 0x1.
  The return at 0xb514 has v0 = 0x0.
- `startrtclock` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xb594 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xb594-0xb5c4 (48 bytes).
  It occupies 48 bytes.
  The `jal` at 0xb5a4 calls .text with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xb5b0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xb59c targets 0xb5ac, is taken when at(=[sym(.sdata)+156]) == 0, and falls through when at(=[sym(.sdata)+156]) != 0.
  The return at 0xb5bc has v0 = ret(?).
- `stopclocks` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xb5c4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xb5c4-0xb5f4 (48 bytes).
  It occupies 48 bytes.
  The `jal` at 0xb5d4 calls .text with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xb5e0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xb5cc targets 0xb5dc, is taken when at(=[sym(.sdata)+156]) == 0, and falls through when at(=[sym(.sdata)+156]) != 0.
  The return at 0xb5ec has v0 = ret(?).
- `startkgclock` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xb5f4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xb5f4-0xb624 (48 bytes).
  It occupies 48 bytes.
  The `jal` at 0xb604 calls .text with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xb610 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xb5fc targets 0xb60c, is taken when at(=[sym(.sdata)+156]) == 0, and falls through when at(=[sym(.sdata)+156]) != 0.
  The return at 0xb61c has v0 = ret(?).
- `slowkgclock` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xb624 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xb624-0xb654 (48 bytes).
  It occupies 48 bytes.
  The `jal` at 0xb634 calls .text with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xb640 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xb62c targets 0xb63c, is taken when at(=[sym(.sdata)+156]) == 0, and falls through when at(=[sym(.sdata)+156]) != 0.
  The return at 0xb64c has v0 = ret(?).
- `r4kcount_intr` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xb654 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xb654-0xb718 (196 bytes).
  It occupies 196 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffa100, including `ld` at 0xb654, `ld` at 0xb6a8.
  The `jal` at 0xb67c calls .text with a0=[sym(power_button_changed_to_crash_dump)], a1=?, a2=?, a3=?.
  The `jalr` at 0xb6a0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[sym(.sbss)+128], a3=?.
  The `jal` at 0xb6c4 calls power_dump with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0xb6e8 calls log_tstamp_event with a0=0x6c, a1=0x0, a2=0x0, a3=0x0, a4=0x0.
  The `jal` at 0xb708 calls log_tstamp_event with a0=0x65, a1=0x6c, a2=0x0, a3=0x0, a4=0x0.
  The `bne` branch at 0xb668 targets 0xb6d8, is taken when (at(=[-0x5f00]:8) & 0x20) != 0, and falls through when (at(=[-0x5f00]:8) & 0x20) == 0.
  The `beq` branch at 0xb674 targets 0xb688, is taken when v0(=[sym(.sdata)+156]) == 0, and falls through when v0(=[sym(.sdata)+156]) != 0.
  The `beq` branch at 0xb68c targets 0xb69c, is taken when a0(=[sym(power_button_changed_to_crash_dump)]) == 0, and falls through when a0(=[sym(power_button_changed_to_crash_dump)]) != 0.
  The `beq` branch at 0xb694 targets 0xb6c4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xb6b0 targets 0xb6f8, is taken when (a3(=[-0x5f00]:8) & 0x20) != 0, and falls through when (a3(=[-0x5f00]:8) & 0x20) == 0.
  The `beq` branch at 0xb6d0 targets 0xb69c and is always taken.
  The `beq` branch at 0xb6f0 targets 0xb674 and is always taken.
  The `beq` branch at 0xb710 targets 0xb6bc and is always taken.
  The return at 0xb6bc has v0 = one of ret(?), ret(log_tstamp_event).
- `ackkgclock` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xb718 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xb718-0xb748 (48 bytes).
  It occupies 48 bytes.
  The `jal` at 0xb728 calls .text with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xb734 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xb720 targets 0xb730, is taken when at(=[sym(.sdata)+156]) == 0, and falls through when at(=[sym(.sdata)+156]) != 0.
  The return at 0xb740 has v0 = ret(?).
- `ackrtclock` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xb748 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xb748-0xb778 (48 bytes).
  It occupies 48 bytes.
  The `jal` at 0xb758 calls .text with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xb764 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xb750 targets 0xb760, is taken when at(=[sym(.sdata)+156]) == 0, and falls through when at(=[sym(.sdata)+156]) != 0.
  The return at 0xb770 has v0 = ret(?).
- `tick_maint` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xb778 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xb778-0xb8ac (308 bytes).
  It occupies 308 bytes.
  The `sw` at 0xb794 stores 4 bytes to sym(.bss) +0x17e4.
  3 such `lw` accesses load 4 bytes from sym(.bss) +0x17d4, including `lw` at 0xb798, `lw` at 0xb7a8, `lw` at 0xb7cc.
  2 such `sw` accesses store 4 bytes to sym(.bss) +0x17d4, including `sw` at 0xb7a0, `sw` at 0xb7dc.
  2 such `lw` accesses load 4 bytes from sym(.bss) +0x17d0, including `lw` at 0xb7c0, `lw` at 0xb7e0.
  The `sw` at 0xb7c8 stores 4 bytes to sym(.bss) +0x17d0.
  The `lw` at 0xb854 loads 4 bytes from sym(.bss) +0x17e4.
  The `sw` at 0xb860 stores 4 bytes to sym(.bss) +0x17e0.
  The `jal` at 0xb780 calls _get_timestamp with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xb7b8 targets 0xb7e8, is taken when at(=[sym(.bss)+6100]) < v0(=0x3b9aca00) (signed), and falls through when at(=[sym(.bss)+6100]) >= v0(=0x3b9aca00) (signed).
  The `beq` branch at 0xb7ec targets 0xb850, is taken when a1(=[sym(.sdata)+132]) == 0, and falls through when a1(=[sym(.sdata)+132]) != 0.
  The `bne` branch at 0xb7f4 targets 0xb84c, is taken when a1(=[sym(.sdata)+132]-1) != 0, and falls through when a1(=[sym(.sdata)+132]-1) == 0.
  The `beq` branch at 0xb838 targets 0xb864, is taken when a1(=[sym(timetrim)]) >= a4(?) (signed), and falls through when a1(=[sym(timetrim)]) < a4(?) (signed).
  The `beq` branch at 0xb844 targets 0xb874 and is always taken.
  The `beq` branch at 0xb864 targets 0xb874, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bltz` branch at 0xb880 targets 0xb89c, is taken when a3(?) < 0 (signed), and falls through when a3(?) >= 0 (signed).
  The `beq` branch at 0xb894 targets 0xb850 and is always taken.
  The `beq` branch at 0xb8a4 targets 0xb88c and is always taken.
  The return at 0xb85c has v0 = 0x3b9aca00.
- `tick_actions` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xbaec (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xbaec-0xbb50 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xbb00 loads 4 bytes from [sym(calltodo)] +0x10.
  The `ld` at 0xbb0c loads 8 bytes from [[sym(calltodo)]+16] +0x0.
  The `sd` at 0xbb1c stores 8 bytes to [[sym(calltodo)]+16] +0x0.
  The `jal` at 0xbaf8 calls splprof with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xbb24 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xbb2c calls tlb_tick_actions with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xbb40 calls timepoke with a0=[[sym(calltodo)]+16], a1=?, a2=?, a3=?.
  The `beq` branch at 0xbb04 targets 0xbb20, is taken when a0(=[[sym(calltodo)]+16]) == 0, and falls through when a0(=[[sym(calltodo)]+16]) != 0.
  The `blez` branch at 0xbb18 targets 0xbb40, is taken when at(=[[[sym(calltodo)]+16]]:8-1) <= 0 (signed), and falls through when at(=[[[sym(calltodo)]+16]]:8-1) > 0 (signed).
  The `beq` branch at 0xbb48 targets 0xbb20 and is always taken.
  The return at 0xbb38 has v0 = ret(tlb_tick_actions).
- `timeout_get_queuehead` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xbb50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xbb50-0xbc3c (236 bytes).
  It occupies 236 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc, including `lw` at 0xbb78, `lw` at 0xbbb8.
  The `lw` at 0xbb94 loads 4 bytes from ?.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xbbb4, `sw` at 0xbc1c.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0xc, including `sw` at 0xbbc8, `sw` at 0xbbec.
  The `ld` at 0xbbd4 loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `sd` at 0xbc38 stores 8 bytes to a1 (arg1 at entry) +0x0.
  The `beq` branch at 0xbb68 targets 0xbbf8, is taken when a0 == t3(=0x1), and falls through when a0 != t3(=0x1).
  The `beq` branch at 0xbb70 targets 0xbbfc, is taken when a0 == v0(=0x4), and falls through when a0 != v0(=0x4).
  The `beq` branch at 0xbbb0 targets 0xbc0c, is taken when (t8(=0xffffff) & t1(?)) == 0, and falls through when (t8(=0xffffff) & t1(?)) != 0.
  The `beq` branch at 0xbbc4 targets 0xbc04, is taken when a0 == t3(=0x1), and falls through when a0 != t3(=0x1).
  The `beq` branch at 0xbbcc targets 0xbc04, is taken when a0 == t0(=0x4), and falls through when a0 != t0(=0x4).
  The `blez` branch at 0xbbe8 targets 0xbc28, is taken when a4(=[a1]:8) <= 0 (signed), and falls through when a4(=[a1]:8) > 0 (signed).
  The `beq` branch at 0xbbfc targets 0xbb90 and is always taken.
  The `beq` branch at 0xbc04 targets 0xbbd4 and is always taken.
  The `beq` branch at 0xbc20 targets 0xbbb8 and is always taken.
  The return at 0xbbf0 has v0 = ?.
  The return at 0xbc34 has v0 = ?.
- `chktimeout_tick` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xbc3c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xbc3c-0xbd0c (208 bytes).
  It occupies 208 bytes.
  The `jal` at 0xbcb0 calls do_chktimeout_tick with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xbcfc calls do_chktimeout_tick with a0=[sym(fastcatodo)], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=[sym(maxcpus)].
  The `beq` branch at 0xbc70 targets 0xbcf0, is taken when a0 == at(=0x1), and falls through when a0 != at(=0x1).
  The `beq` branch at 0xbc78 targets 0xbcf4, is taken when a0 == v0(=0x4), and falls through when a0 != v0(=0x4).
  The `blez` branch at 0xbc80 targets 0xbce8, is taken when a7(=[sym(maxcpus)]) <= 0 (signed), and falls through when a7(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0xbc88 targets 0xbca0 and is always taken.
  The `beq` branch at 0xbc9c targets 0xbcc4, is taken when s1(?) >= a0(=[sym(maxcpus)]) (signed), and falls through when s1(?) < a0(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0xbcbc targets 0xbc90, is taken when v0(=ret(do_chktimeout_tick)) == 0, and falls through when v0(=ret(do_chktimeout_tick)) != 0.
  The `beq` branch at 0xbce8 targets 0xbcc8 and is always taken.
  The `beq` branch at 0xbd04 targets 0xbcc4 and is always taken.
  The return at 0xbce0 has v0 = one of ret(do_chktimeout_tick), ?.
- `fast_timeout` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xbd0c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xbd0c-0xbda0 (148 bytes).
  It occupies 148 bytes.
  The `jal` at 0xbd3c calls callout_get_pri with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xbd5c calls dotimeout with a0=0x0, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=ret(callout_get_pri), a5=0x1, a6=sp-40.
  The `jal` at 0xbd78 calls enable_fastclock with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xbd90 calls cmn_err with a0=0x0, a1=sym(.rodata)+6400, a2=?, a3=?.
  The `beq` branch at 0xbd34 targets 0xbd78, is taken when at(=[sym(fastclock)]) == 0, and falls through when at(=[sym(fastclock)]) != 0.
  The `beq` branch at 0xbd64 targets 0xbd88, is taken when v0(=ret(dotimeout)) == 0, and falls through when v0(=ret(dotimeout)) != 0.
  The `beq` branch at 0xbd80 targets 0xbd3c and is always taken.
  The `beq` branch at 0xbd98 targets 0xbd6c and is always taken.
  The return at 0xbd70 has v0 = one of ret(dotimeout), ?.
- `fast_timeout_nothrd` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xbda0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xbda0-0xbe40 (160 bytes).
  It occupies 160 bytes.
  The `jal` at 0xbdf4 calls dotimeout with a0=0x0, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=0x0, a5=0x4, a6=sp-40.
  The `jal` at 0xbe10 calls enable_fastclock with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xbe30 calls cmn_err with a0=0x0, a1=sym(.rodata)+6400, a2=?, a3=?.
  The `beq` branch at 0xbdd4 targets 0xbe10, is taken when at(=[sym(fastclock)]) == 0, and falls through when at(=[sym(fastclock)]) != 0.
  The `beq` branch at 0xbdfc targets 0xbe28, is taken when v0(=ret(dotimeout)) == 0, and falls through when v0(=ret(dotimeout)) != 0.
  The `beq` branch at 0xbe20 targets 0xbddc and is always taken.
  The `beq` branch at 0xbe38 targets 0xbe04 and is always taken.
  The return at 0xbe08 has v0 = one of ret(dotimeout), ?.
- `set_timer_intr` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xbe40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xbe40-0xbe8c (76 bytes).
  It occupies 76 bytes.
  The `jal` at 0xbe64 calls timepoke with a0=a0 at entry (arg0), a1=0x4, a2=a2 at entry (arg2), a3=0x1.
  The `jal` at 0xbe7c calls fast_timepoke with a0=a0 at entry (arg0), a1=0x4, a2=a2 at entry (arg2), a3=0x1.
  The `bne` branch at 0xbe48 targets 0xbe6c, is taken when a1 != 0, and falls through when a1 == 0.
  The `beq` branch at 0xbe54 targets 0xbe7c, is taken when a2 == a3(=0x1), and falls through when a2 != a3(=0x1).
  The `beq` branch at 0xbe5c targets 0xbe7c, is taken when a2 == a1(=0x4), and falls through when a2 != a1(=0x4).
  The `beq` branch at 0xbe84 targets 0xbe70 and is always taken.
  The return at 0xbe74 has v0 = 0x0.
- `callout_time_to_hz` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xbe8c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xbe8c-0xbed8 (76 bytes).
  It occupies 76 bytes.
  The `blez` branch at 0xbe8c targets 0xbec4, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0xbe94 targets 0xbecc, is taken when a2 == 0, and falls through when a2 != 0.
  The return at 0xbec4 has v0 = one of 0x1, ?.
  The return at 0xbed0 has v0 = (a0 << 0x0).
- `timein_body` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xbed8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xbed8-0xbfdc (260 bytes).
  It occupies 260 bytes.
  The `lw` at 0xbf00 loads 4 bytes from [a0+16] +0x8.
  The `sw` at 0xbf08 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `ld` at 0xbf0c loads 8 bytes from [[a0+16]+8] +0x0.
  2 such `ld` accesses load 8 bytes from [a0+16] +0x0, including `ld` at 0xbf10, `ld` at 0xbf78.
  The `sd` at 0xbf18 stores 8 bytes to [[a0+16]+8] +0x0.
  The `lh` at 0xbf1c loads 2 bytes from [a0+16] +0x2a.
  The `lw` at 0xbf2c loads 4 bytes from [a0+16] +0xc.
  The `sd` at 0xbf34 stores 8 bytes to a0 (arg0 at entry) +0x38.
  The `sw` at 0xbf40 stores 4 bytes to a0 (arg0 at entry) +0x44.
  The `lw` at 0xbf6c loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `jal` at 0xbf3c calls splx with a0=ret(splprof), a1=?, a2=[[a0+16]+12], a3=0x1, a4=[[a0+16]]:8.
  The `jal` at 0xbf44 calls timein_entry with a0=[a0+16], a1=?, a2=?, a3=?.
  The `jal` at 0xbf54 calls test_and_set_int64 with a0=a0+56, a1=0x0, a2=?, a3=?.
  The `jal` at 0xbf64 calls splprof with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xbf84 calls splx with a0=ret(splprof), a1=?, a2=?, a3=?.
  The `jal` at 0xbfa8 calls timein_entry_ithrd with a0=a0 at entry (arg0), a1=[a0+16], a2=ret(splprof), a3=?, a4=[[a0+16]]:8.
  The `jal` at 0xbfb8 calls splprof with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xbfc4 calls sv_broadcast with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xbfcc calls splx with a0=ret(splprof), a1=?, a2=?, a3=?.
  The `beq` branch at 0xbef8 targets 0xbf64 and is always taken.
  The `beq` branch at 0xbf04 targets 0xbf1c, is taken when a1(=[[a0+16]+8]) == 0, and falls through when a1(=[[a0+16]+8]) != 0.
  The `beq` branch at 0xbf24 targets 0xbfa4, is taken when (a1(=[[a0+16]+42]:2) & 0x2) == 0, and falls through when (a1(=[[a0+16]+42]:2) & 0x2) != 0.
  The `beq` branch at 0xbf5c targets 0xbfb8, is taken when v0(=ret(test_and_set_int64)) == s0(=0x2), and falls through when v0(=ret(test_and_set_int64)) != s0(=0x2).
  The `beq` branch at 0xbf70 targets 0xbf84, is taken when s0(=[a0+16]) == 0, and falls through when s0(=[a0+16]) != 0.
  The `blez` branch at 0xbf7c targets 0xbf00, is taken when a4(=[[a0+16]]:8) <= 0 (signed), and falls through when a4(=[[a0+16]]:8) > 0 (signed).
  The `beq` branch at 0xbfb0 targets 0xbf64 and is always taken.
  The `beq` branch at 0xbfd4 targets 0xbf64 and is always taken.
  The return at 0xbf9c has v0 = ret(splx).
- `timein` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xbfdc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xbfdc-0xc0d0 (244 bytes).
  It occupies 244 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffa100, including `ld` at 0xbfdc, `ld` at 0xc060.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffa238, including `lw` at 0xbff8, `lw` at 0xc018.
  2 such `sw` accesses store 4 bytes to abs 0xffffffffffffa238, including `sw` at 0xc00c, `sw` at 0xc02c.
  The `jal` at 0xbff0 calls siroff with a0=0x100, a1=?, a2=?, a3=?.
  The `jal` at 0xc010 calls timein_body with a0=[sym(fastcatodo)], a1=?, a2=?, a3=?.
  The `jal` at 0xc030 calls timein_body with a0=[sym(calltodo)], a1=?, a2=?, a3=?.
  The `jal` at 0xc038 calls splecc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc058 calls splxecc with a0=ret(splecc), a1=?, a2=?, a3=[sym(call_cleanup)].
  The `jal` at 0xc078 calls splxecc with a0=ret(splecc), a1=?, a2=?, a3=[sym(call_cleanup)], a4=[sym(in_cleanup)].
  The `jal` at 0xc080 calls ecc_cleanup with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc0a0 calls log_tstamp_event with a0=0x6d, a1=0x0, a2=0x0, a3=0x0, a4=0x0.
  The `jal` at 0xc0c0 calls log_tstamp_event with a0=0x65, a1=0x6d, a2=0x0, a3=0x0, a4=0x0.
  The `bne` branch at 0xbfe8 targets 0xc090, is taken when (at(=[-0x5f00]:8) & 0x20) != 0, and falls through when (at(=[-0x5f00]:8) & 0x20) == 0.
  The `beq` branch at 0xc000 targets 0xc01c, is taken when (v0(=[-0x5dc8]) & 0x2) == 0, and falls through when (v0(=[-0x5dc8]) & 0x2) != 0.
  The `beq` branch at 0xc020 targets 0xc038, is taken when (v0(=[-0x5dc8]) & 0x1) == 0, and falls through when (v0(=[-0x5dc8]) & 0x1) != 0.
  The `beq` branch at 0xc044 targets 0xc058, is taken when a3(=[sym(call_cleanup)]) == 0, and falls through when a3(=[sym(call_cleanup)]) != 0.
  The `beq` branch at 0xc050 targets 0xc078, is taken when a4(=[sym(in_cleanup)]) == 0, and falls through when a4(=[sym(in_cleanup)]) != 0.
  The `bne` branch at 0xc068 targets 0xc0b0, is taken when (a5(=[-0x5f00]:8) & 0x20) != 0, and falls through when (a5(=[-0x5f00]:8) & 0x20) == 0.
  The `beq` branch at 0xc088 targets 0xc060 and is always taken.
  The `beq` branch at 0xc0a8 targets 0xbff0 and is always taken.
  The `beq` branch at 0xc0c8 targets 0xc070 and is always taken.
  The return at 0xc070 has v0 = one of ?, ret(log_tstamp_event).
- `settimetrim` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xc0d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xc0d0-0xc158 (136 bytes).
  It occupies 136 bytes.
  The `jal` at 0xc0e0 calls cap_able with a0=0x8000000, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xc11c calls splhi with a0=[sym(maxtrim_nsec)], a1=?, a2=?, a3=?.
  The `jal` at 0xc138 calls splx with a0=ret(splhi), a1=[sym(.sdata)+132], a2=?, a3=0x1.
  The `beq` branch at 0xc0e8 targets 0xc150, is taken when v0(=ret(cap_able)) == 0, and falls through when v0(=ret(cap_able)) != 0.
  The `bne` branch at 0xc0fc targets 0xc10c, is taken when s0(=a0) < at(?) (signed), and falls through when s0(=a0) >= at(?) (signed).
  The `beq` branch at 0xc104 targets 0xc11c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xc130 targets 0xc148, is taken when a1(=[sym(.sdata)+132]) == 0, and falls through when a1(=[sym(.sdata)+132]) != 0.
  The `beq` branch at 0xc140 targets 0xc10c and is always taken.
  The `beq` branch at 0xc148 targets 0xc138 and is always taken.
  The `beq` branch at 0xc150 targets 0xc10c and is always taken.
  The return at 0xc114 has v0 = one of 0x0, 0x1, 0x16.
- `gettimetrim` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xc158 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xc158-0xc160 (8 bytes).
  It occupies 8 bytes.
  The return at 0xc158 has v0 = [sym(timetrim)].
- `doadjtime` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xc160 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xc160-0xc2dc (380 bytes).
  It occupies 380 bytes.
  The `jal` at 0xc1a8 calls splhi with a0=0x4650, a1=?, a2=a2 at entry (arg2), a3=0x190, a4=0x1.
  The `jal` at 0xc1f0 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?, a4=[sym(.sdata)+144], a5=0x1.
  The `jal` at 0xc280 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x190.
  The `jal` at 0xc2a8 calls splx with a0=ret(splhi), a1=?, a2=?, a3=[sym(.sdata)+140], a4=[sym(.sdata)+144].
  The `beq` branch at 0xc178 targets 0xc280, is taken when a0 == 0, and falls through when a0 != 0.
  The `bltz` branch at 0xc184 targets 0xc258, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0xc194 targets 0xc224, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xc1a0 targets 0xc260, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xc1bc targets 0xc268, is taken when a3(=[sym(.sdata)+140]) == 0, and falls through when a3(=[sym(.sdata)+140]) != 0.
  The `bne` branch at 0xc230 targets 0xc248, is taken when a1(=0xafc80) < s0(?) (signed), and falls through when a1(=0xafc80) >= s0(?) (signed).
  The `beq` branch at 0xc240 targets 0xc1a0 and is always taken.
  The `beq` branch at 0xc250 targets 0xc1a0 and is always taken.
  The `beq` branch at 0xc258 targets 0xc188 and is always taken.
  The `beq` branch at 0xc260 targets 0xc1a8 and is always taken.
  The `beq` branch at 0xc278 targets 0xc1d4 and is always taken.
  The `beq` branch at 0xc290 targets 0xc2c4, is taken when a3(=[sym(.sdata)+140]) == 0, and falls through when a3(=[sym(.sdata)+140]) != 0.
  The `beq` branch at 0xc2bc targets 0xc210 and is always taken.
  The `beq` branch at 0xc2d4 targets 0xc2a8 and is always taken.
  The return at 0xc21c has v0 = ?.
- `nanotime_syscall` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xc2dc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xc2dc-0xc470 (404 bytes).
  It occupies 404 bytes.
  The `lw` at 0xc310 loads 4 bytes from sym(.bss) +0x17e0.
  The `lw` at 0xc314 loads 4 bytes from sym(.bss) +0x17d0.
  The `lw` at 0xc318 loads 4 bytes from sym(.bss) +0x17d4.
  The `lw` at 0xc31c loads 4 bytes from sym(.bss) +0x17e4.
  3 such `lw` accesses load 4 bytes from sym(.bss) +0x17d8, including `lw` at 0xc3c8, `lw` at 0xc3f0, `lw` at 0xc40c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `sw` at 0xc3d8, `sw` at 0xc414.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `sw` at 0xc3e0, `sw` at 0xc418.
  2 such `lw` accesses load 4 bytes from sym(.bss) +0x17dc, including `lw` at 0xc3fc, `lw` at 0xc410.
  The `sw` at 0xc42c stores 4 bytes to sym(.bss) +0x17d8.
  The `sw` at 0xc430 stores 4 bytes to sym(.bss) +0x17dc.
  The `lw` at 0xc464 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xc46c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jal` at 0xc2f0 calls spl7 with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xc328 calls _get_timestamp with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc334 calls nested_spinlock with a0=sym(timelock), a1=?, a2=?, a3=?.
  The `jal` at 0xc434 calls splx with a0=ret(spl7), a1=?, a2=?, a3=?.
  The `bne` branch at 0xc320 targets 0xc310, is taken when t8(=[sym(.bss)+6116]) != s2(=[sym(.bss)+6112]), and falls through when t8(=[sym(.bss)+6116]) == s2(=[sym(.bss)+6112]).
  The `beq` branch at 0xc370 targets 0xc3b0, is taken when t9(=[sym(.sdata)+132]) == 0, and falls through when t9(=[sym(.sdata)+132]) != 0.
  The `bne` branch at 0xc3e8 targets 0xc40c, is taken when a7(?) < t0(=[sym(.bss)+6104]) (signed), and falls through when a7(?) >= t0(=[sym(.bss)+6104]) (signed).
  The `bne` branch at 0xc3f4 targets 0xc458, is taken when t2(=[sym(.bss)+6104]) != a7(?), and falls through when t2(=[sym(.bss)+6104]) == a7(?).
  The `beq` branch at 0xc404 targets 0xc458, is taken when a5(?) >= t3(=[sym(.bss)+6108]) (signed), and falls through when a5(?) < t3(=[sym(.bss)+6108]) (signed).
  The `beq` branch at 0xc458 targets 0xc420, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xc468 targets 0xc41c and is always taken.
  The return at 0xc44c has v0 = ret(splx).
  The instructions from 0xc454 to 0xc454 are not reached by any path from the entry, and their branches are not listed.
- `nanotime` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xc470 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xc470-0xc4d8 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xc498 loads 4 bytes from sym(.bss) +0x17e0.
  The `lw` at 0xc49c loads 4 bytes from sym(.bss) +0x17d0.
  The `lw` at 0xc4a0 loads 4 bytes from sym(.bss) +0x17d4.
  The `lw` at 0xc4a4 loads 4 bytes from sym(.bss) +0x17e4.
  The `sw` at 0xc4b8 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `sw` at 0xc4c4 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `jal` at 0xc484 calls spl7 with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xc4b0 calls splx with a0=ret(spl7), a1=?, a2=?, a3=sym(.bss)+6096, a4=[sym(.bss)+6116], a5=[sym(.bss)+6112].
  The `bne` branch at 0xc4a8 targets 0xc498, is taken when a4(=[sym(.bss)+6116]) != a5(=[sym(.bss)+6112]), and falls through when a4(=[sym(.bss)+6116]) == a5(=[sym(.bss)+6112]).
  The return at 0xc4d0 has v0 = ret(splx).
- `microtime` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xc4d8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xc4d8-0xc51c (68 bytes).
  It occupies 68 bytes.
  The `sw` at 0xc4f4 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `sw` at 0xc50c stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `jal` at 0xc4e8 calls nanotime_syscall with a0=sp-32, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xc514 has v0 = ?.
- `settime` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xc51c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xc51c-0xc5b0 (148 bytes).
  It occupies 148 bytes.
  The `sw` at 0xc568 stores 4 bytes to sym(.bss) +0x17e4.
  The `sw` at 0xc574 stores 4 bytes to sym(.bss) +0x17d4.
  The `sw` at 0xc578 stores 4 bytes to sym(.bss) +0x17d0.
  The `lw` at 0xc57c loads 4 bytes from sym(.bss) +0x17d0.
  The `sw` at 0xc580 stores 4 bytes to sym(.bss) +0x17d8.
  The `lw` at 0xc584 loads 4 bytes from sym(.bss) +0x17d4.
  The `sw` at 0xc588 stores 4 bytes to sym(.bss) +0x17dc.
  The `lw` at 0xc590 loads 4 bytes from sym(.bss) +0x17e4.
  The `sw` at 0xc598 stores 4 bytes to sym(.bss) +0x17e0.
  The `jal` at 0xc530 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xc53c calls _get_timestamp with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc594 calls splx with a0=?, a1=[sym(.bss)+6096], a2=?, a3=?.
  The return at 0xc5a8 has v0 = ret(splx).
- `clkset` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xc5b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xc5b0-0xc5cc (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0xc5b8 calls inittodr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xc5c4 has v0 = ret(inittodr).
- `startprfclk` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xc5cc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xc5cc-0xc628 (92 bytes).
  It occupies 92 bytes.
  The `lw` at 0xc5cc loads 4 bytes from abs 0xffffffffffffa2a0.
  The `sw` at 0xc5e0 stores 4 bytes to abs 0xffffffffffffa2a0.
  The `lw` at 0xc5f0 loads 4 bytes from abs 0xffffffffffffa038.
  The `jal` at 0xc608 calls enable_fastclock with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xc618 calls startkgclock with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0xc5dc targets 0xc600, is taken when at(=[-0x5d60]+1) != v0(=0x1), and falls through when at(=[-0x5d60]+1) == v0(=0x1).
  The `beq` branch at 0xc5e8 targets 0xc608, is taken when v0(=[sym(fastclock)]) == 0, and falls through when v0(=[sym(fastclock)]) != 0.
  The `beq` branch at 0xc5f8 targets 0xc618, is taken when (v1(=[-0x5fc8]) & 0x8) == 0, and falls through when (v1(=[-0x5fc8]) & 0x8) != 0.
  The `beq` branch at 0xc610 targets 0xc5f0 and is always taken.
  The `beq` branch at 0xc620 targets 0xc600 and is always taken.
  The return at 0xc600 has v0 = one of 0x1, ?, ret(startkgclock).
- `stopprfclk` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xc628 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xc628-0xc680 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xc638 loads 4 bytes from abs 0xffffffffffffa2a0.
  The `sw` at 0xc648 stores 4 bytes to abs 0xffffffffffffa2a0.
  The `lw` at 0xc64c loads 4 bytes from abs 0xffffffffffffa038.
  The `jal` at 0xc630 calls spl7 with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xc65c calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc670 calls slowkgclock with a0=[-0x5d60]-1, a1=?, a2=?, a3=?.
  The `beq` branch at 0xc63c targets 0xc65c, is taken when a0(=[-0x5d60]) == 0, and falls through when a0(=[-0x5d60]) != 0.
  The `bne` branch at 0xc644 targets 0xc65c, is taken when a0(=[-0x5d60]-1) != 0, and falls through when a0(=[-0x5d60]-1) == 0.
  The `beq` branch at 0xc654 targets 0xc670, is taken when (a1(=[-0x5fc8]) & 0x8) == 0, and falls through when (a1(=[-0x5fc8]) & 0x8) != 0.
  The `beq` branch at 0xc678 targets 0xc65c and is always taken.
  The return at 0xc668 has v0 = ret(splx).
- `enable_fastclock` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xc680 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xc680-0xc6d4 (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0xc69c loads 4 bytes from abs 0xffffffffffffa038.
  The `sw` at 0xc6b0 stores 4 bytes to abs 0xffffffffffffa038.
  The `jal` at 0xc688 calls spl7 with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xc6ac calls setkgvector with a0=sym(fastick_maint), a1=0x1, a2=?, a3=?.
  The `jal` at 0xc6b4 calls startkgclock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc6bc calls splx with a0=ret(spl7), a1=?, a2=?, a3=?.
  The return at 0xc6cc has v0 = ret(splx).
- `query_cyclecntr_size` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xc6d4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xc6d4-0xc6dc (8 bytes).
  It occupies 8 bytes.
  The return at 0xc6d4 has v0 = 0x20.
- `timepoke` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xc6f8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xc6f8-0xc720 (40 bytes).
  It occupies 40 bytes.
  The `lw` at 0xc6fc loads 4 bytes from abs 0xffffffffffffa238.
  The `sw` at 0xc710 stores 4 bytes to abs 0xffffffffffffa238.
  The `jal` at 0xc70c calls siron with a0=0x100, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xc718 has v0 = ret(siron).
- `fast_timepoke` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xc720 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xc720-0xc748 (40 bytes).
  It occupies 40 bytes.
  The `lw` at 0xc724 loads 4 bytes from abs 0xffffffffffffa238.
  The `sw` at 0xc738 stores 4 bytes to abs 0xffffffffffffa238.
  The `jal` at 0xc734 calls siron with a0=0x100, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xc740 has v0 = ret(siron).
- `inithrestime` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xc748 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xc748-0xc7a0 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xc768 stores 4 bytes to sym(.bss) +0x17e4.
  The `lw` at 0xc76c loads 4 bytes from sym(.bss) +0x17e4.
  The `sw` at 0xc774 stores 4 bytes to sym(.bss) +0x17e0.
  The `jal` at 0xc750 calls _get_timestamp with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xc770 targets 0xc780, is taken when a0(=[sym(fastick)]) == 0, and falls through when a0(=[sym(fastick)]) != 0.
  The `beq` branch at 0xc798 targets 0xc778 and is always taken.
  The return at 0xc778 has v0 = ret(_get_timestamp).
- `atomicAddInt` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xc7a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xc7a0-0xc7bc (28 bytes).
  It occupies 28 bytes.
  The `ll` at 0xc7a0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0xc7a8 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0xc7ac targets 0xc7a0, is taken when t1(=([a0] + a1)) == 0, and falls through when t1(=([a0] + a1)) != 0.
  The return at 0xc7b4 has v0 = ([a0] + a1).
- `atomicSetCpumask` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xc7bc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xc7bc-0xc7dc (32 bytes).
  It occupies 32 bytes.
  The `lw` at 0xc7bc loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `ll` at 0xc7c0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0xc7c8 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0xc7cc targets 0xc7c0, is taken when t2(=([a0] | [a1])) == 0, and falls through when t2(=([a0] | [a1])) != 0.
  The return at 0xc7d4 has v0 = [a0].
- `atomicClearInt` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xc7dc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xc7dc-0xc7fc (32 bytes).
  It occupies 32 bytes.
  The `ll` at 0xc7e0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0xc7e8 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0xc7ec targets 0xc7e0, is taken when (v0(=[a0]) & a1(?)) == 0, and falls through when (v0(=[a0]) & a1(?)) != 0.
  The return at 0xc7f4 has v0 = [a0].
- `atomicClearInt64` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xc7fc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xc7fc-0xc81c (32 bytes).
  It occupies 32 bytes.
  The `ll` at 0xc800 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0xc808 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0xc80c targets 0xc800, is taken when (v0(=[a0]) & a1(?)) == 0, and falls through when (v0(=[a0]) & a1(?)) != 0.
  The return at 0xc814 has v0 = [a0].
- `atomicFieldAssignLong` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xc81c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xc81c-0xc840 (36 bytes).
  It occupies 36 bytes.
  The `ll` at 0xc820 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0xc82c stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0xc830 targets 0xc820, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The return at 0xc838 has v0 = [a0].
- `atomicFieldAssignUint` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xc840 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xc840-0xc864 (36 bytes).
  It occupies 36 bytes.
  The `ll` at 0xc844 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0xc850 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0xc854 targets 0xc844, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The return at 0xc85c has v0 = [a0].
- `atomicClearCpumask` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xc864 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xc864-0xc888 (36 bytes).
  It occupies 36 bytes.
  The `lw` at 0xc864 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `ll` at 0xc86c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0xc874 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0xc878 targets 0xc86c, is taken when (v0(=[a0]) & a1(?)) == 0, and falls through when (v0(=[a0]) & a1(?)) != 0.
  The return at 0xc880 has v0 = [a0].
- `atomicAddInt64` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xc888 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xc888-0xc8a4 (28 bytes).
  It occupies 28 bytes.
  The `lld` at 0xc888 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0xc890 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0xc894 targets 0xc888, is taken when t1(=([a0]:8 + a1)) == 0, and falls through when t1(=([a0]:8 + a1)) != 0.
  The return at 0xc89c has v0 = ([a0]:8 + a1).
- `atomicPush` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xc8a4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xc8a4-0xc8cc (40 bytes).
  It occupies 40 bytes.
  The `lw` at 0xc8a4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xc8a8 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `ll` at 0xc8ac loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0xc8b8 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0xc8b0 targets 0xc8a4, is taken when v0(=[a0]) != t0(=[a0]), and falls through when v0(=[a0]) == t0(=[a0]).
  The `beq` branch at 0xc8bc targets 0xc8a4, is taken when t2(=a1) == 0, and falls through when t2(=a1) != 0.
  The return at 0xc8c4 has v0 = [a0].
- `atomicPull` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xc8cc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xc8cc-0xc8e8 (28 bytes).
  It occupies 28 bytes.
  The `ll` at 0xc8cc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0xc8d4 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0xc8d8 targets 0xc8cc and is always taken.
  The instructions from 0xc8e0 to 0xc8e4 are not reached by any path from the entry, and their branches are not listed.
- `atomicIncWithWrap` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xc8e8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xc8e8-0xc910 (40 bytes).
  It occupies 40 bytes.
  The `ll` at 0xc8e8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0xc8fc stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0xc8f0 targets 0xc8fc, is taken when t1(=[a0]+1) != a1, and falls through when t1(=[a0]+1) == a1.
  The `beq` branch at 0xc900 targets 0xc8e8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The return at 0xc908 has v0 = [a0].
- `atomicAddWithWrap` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xc910 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xc910-0xc93c (44 bytes).
  It occupies 44 bytes.
  The `ll` at 0xc910 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0xc928 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0xc91c targets 0xc928, is taken when t1(=([a0] + a1)) < a2 (signed), and falls through when t1(=([a0] + a1)) >= a2 (signed).
  The `beq` branch at 0xc92c targets 0xc910, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The return at 0xc934 has v0 = [a0].
- `bitlock_set` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xc93c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xc93c-0xc958 (28 bytes).
  It occupies 28 bytes.
  The `ll` at 0xc93c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0xc944 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0xc948 targets 0xc93c, is taken when t2(=([a0] | a2)) == 0, and falls through when t2(=([a0] | a2)) != 0.
  The return at 0xc950 has v0 = [a0].
- `bitlock_clr` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xc958 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xc958-0xc978 (32 bytes).
  It occupies 32 bytes.
  The `ll` at 0xc95c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0xc964 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0xc968 targets 0xc95c, is taken when (v0(=[a0]) & a2(?)) == 0, and falls through when (v0(=[a0]) & a2(?)) != 0.
  The return at 0xc970 has v0 = [a0].
- `bitlock_acquire` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xc978 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xc978-0xc99c (36 bytes).
  It occupies 36 bytes.
  The `ll` at 0xc978 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0xc988 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0xc980 targets 0xc978, is taken when (v0(=[a0]) & a1) != 0, and falls through when (v0(=[a0]) & a1) == 0.
  The `beq` branch at 0xc98c targets 0xc978, is taken when t2(=([a0] | a1)) == 0, and falls through when t2(=([a0] | a1)) != 0.
  The return at 0xc994 has v0 = [a0].
- `bitlock_acquire_32bit` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xc99c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xc99c-0xc9c0 (36 bytes).
  It occupies 36 bytes.
  The `ll` at 0xc99c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0xc9ac stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0xc9a4 targets 0xc99c, is taken when (v0(=[a0]) & a1) != 0, and falls through when (v0(=[a0]) & a1) == 0.
  The `beq` branch at 0xc9b0 targets 0xc99c, is taken when t2(=([a0] | a1)) == 0, and falls through when t2(=([a0] | a1)) != 0.
  The return at 0xc9b8 has v0 = [a0].
- `bitlock_condacq` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xc9c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xc9c0-0xca14 (84 bytes).
  It occupies 84 bytes.
  The `ll` at 0xc9d0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0xc9e0 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0xc9c8 targets 0xca0c, is taken when t3(?) < 0 (signed), and falls through when t3(?) >= 0 (signed).
  The `bne` branch at 0xc9d8 targets 0xc9f4, is taken when (v0(=[a0]) & a1) != 0, and falls through when (v0(=[a0]) & a1) == 0.
  The `beq` branch at 0xc9e4 targets 0xc9d0, is taken when t2(=([a0] | a1)) == 0, and falls through when t2(=([a0] | a1)) != 0.
  The `bgez` branch at 0xc9fc targets 0xc9f8, is taken when a5(?) >= 0 (signed), and falls through when a5(?) < 0 (signed).
  The `beq` branch at 0xca04 targets 0xc9c4 and is always taken.
  The return at 0xc9ec has v0 = 0x0.
  The return at 0xca0c has v0 = 0x1.
- `bitlock_condacq_32bit` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xca14 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xca14-0xca68 (84 bytes).
  It occupies 84 bytes.
  The `ll` at 0xca24 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0xca34 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0xca1c targets 0xca60, is taken when t3(?) < 0 (signed), and falls through when t3(?) >= 0 (signed).
  The `bne` branch at 0xca2c targets 0xca48, is taken when (v0(=[a0]) & a1) != 0, and falls through when (v0(=[a0]) & a1) == 0.
  The `beq` branch at 0xca38 targets 0xca24, is taken when t2(=([a0] | a1)) == 0, and falls through when t2(=([a0] | a1)) != 0.
  The `bgez` branch at 0xca50 targets 0xca4c, is taken when a5(?) >= 0 (signed), and falls through when a5(?) < 0 (signed).
  The `beq` branch at 0xca58 targets 0xca18 and is always taken.
  The return at 0xca40 has v0 = 0x0.
  The return at 0xca60 has v0 = 0x1.
- `mutex_set_always` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xca68 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xca68-0xca84 (28 bytes).
  It occupies 28 bytes.
  The `ll` at 0xca68 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0xca70 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0xca74 targets 0xca68, is taken when t0(=a1) == 0, and falls through when t0(=a1) != 0.
  The return at 0xca7c has v0 = [a0].
- `test_and_set_int` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xca84 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xca84-0xcaa0 (28 bytes).
  It occupies 28 bytes.
  The `ll` at 0xca84 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0xca8c stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0xca90 targets 0xca84, is taken when t2(=a1) == 0, and falls through when t2(=a1) != 0.
  The return at 0xca98 has v0 = [a0].
- `test_and_set_int64` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xcaa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xcaa0-0xcabc (28 bytes).
  It occupies 28 bytes.
  The `lld` at 0xcaa0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0xcaa8 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0xcaac targets 0xcaa0, is taken when t2(=a1) == 0, and falls through when t2(=a1) != 0.
  The return at 0xcab4 has v0 = [a0]:8.
- `swap_int` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xcabc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xcabc-0xcad8 (28 bytes).
  It occupies 28 bytes.
  The `ll` at 0xcabc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0xcac4 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0xcac8 targets 0xcabc, is taken when t0(=a1) == 0, and falls through when t0(=a1) != 0.
  The return at 0xcad0 has v0 = [a0].
- `compare_and_swap_int` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xcad8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xcad8-0xcb00 (40 bytes).
  It occupies 40 bytes.
  The `ll` at 0xcad8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0xcae4 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0xcadc targets 0xcaf8, is taken when t0(=[a0]) != a1, and falls through when t0(=[a0]) == a1.
  The `beq` branch at 0xcae8 targets 0xcad8, is taken when v0(=a2) == 0, and falls through when v0(=a2) != 0.
  The return at 0xcaf0 has v0 = a2.
  The return at 0xcaf8 has v0 = 0x0.
- `compare_and_inc_int_gt_zero` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xcb00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xcb00-0xcb28 (40 bytes).
  It occupies 40 bytes.
  The `ll` at 0xcb00 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0xcb0c stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `blez` branch at 0xcb04 targets 0xcb20, is taken when v0(=[a0]) <= 0 (signed), and falls through when v0(=[a0]) > 0 (signed).
  The `beq` branch at 0xcb10 targets 0xcb00, is taken when v0(=[a0]+1) == 0, and falls through when v0(=[a0]+1) != 0.
  The return at 0xcb18 has v0 = [a0]+1.
  The return at 0xcb20 has v0 = 0x0.
- `compare_and_dec_int_gt` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xcb28 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xcb28-0xcb58 (48 bytes).
  It occupies 48 bytes.
  The `ll` at 0xcb28 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0xcb3c stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0xcb34 targets 0xcb50, is taken when v0(=[a0]-1) < a1 (signed), and falls through when v0(=[a0]-1) >= a1 (signed).
  The `beq` branch at 0xcb40 targets 0xcb28, is taken when v0(=[a0]-1) == 0, and falls through when v0(=[a0]-1) != 0.
  The return at 0xcb48 has v0 = [a0]-1.
  The return at 0xcb50 has v0 = 0x0.
- `swap_int64` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xcb58 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xcb58-0xcb74 (28 bytes).
  It occupies 28 bytes.
  The `lld` at 0xcb58 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0xcb60 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0xcb64 targets 0xcb58, is taken when t0(=a1) == 0, and falls through when t0(=a1) != 0.
  The return at 0xcb6c has v0 = [a0]:8.
- `compare_and_swap_int64` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xcb74 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xcb74-0xcb9c (40 bytes).
  It occupies 40 bytes.
  The `lld` at 0xcb74 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0xcb80 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0xcb78 targets 0xcb94, is taken when t0(=[a0]:8) != a1, and falls through when t0(=[a0]:8) == a1.
  The `beq` branch at 0xcb84 targets 0xcb74, is taken when v0(=a2) == 0, and falls through when v0(=a2) != 0.
  The return at 0xcb8c has v0 = a2.
  The return at 0xcb94 has v0 = 0x0.
- `comparegt_and_swap_int` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xcb9c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xcb9c-0xcbc8 (44 bytes).
  It occupies 44 bytes.
  The `ll` at 0xcb9c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0xcbac stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0xcba4 targets 0xcbc0, is taken when a1 >= t1(=[a0]) (signed), and falls through when a1 < t1(=[a0]) (signed).
  The `beq` branch at 0xcbb0 targets 0xcb9c, is taken when v0(=a2) == 0, and falls through when v0(=a2) != 0.
  The return at 0xcbb8 has v0 = a2.
  The return at 0xcbc0 has v0 = 0x0.
- `store_atomic` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xcbc8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xcbc8-0xcbe0 (24 bytes).
  It occupies 24 bytes.
  The `ll` at 0xcbc8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0xcbcc stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0xcbd0 targets 0xcbc8, is taken when a4(=[a0]) == 0, and falls through when a4(=[a0]) != 0.
  The return at 0xcbd8 has v0 = ?.
- `atomicIncPort` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xcbe0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xcbe0-0xcc0c (44 bytes).
  It occupies 44 bytes.
  The `ll` at 0xcbe0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0xcbf8 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0xcbec targets 0xcbf8, is taken when a1 >= t1(=[a0]+1) (signed), and falls through when a1 < t1(=[a0]+1) (signed).
  The `beq` branch at 0xcbfc targets 0xcbe0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The return at 0xcc04 has v0 = [a0].
- `startrtclock_r4000` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xcc0c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xcc0c-0xcc78 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xcc4c loads 4 bytes from abs 0xffffffffffffa038.
  The `jal` at 0xcc14 calls spl7 with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xcc30 calls get_r4k_counter with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xcc44 calls set_r4k_compare with a0=([sym(t0interval)] + ret(get_r4k_counter)), a1=?, a2=?, a3=?.
  The `jal` at 0xcc5c calls inithrestime with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xcc64 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xcc54 targets 0xcc64, is taken when (a1(=[-0x5fc8]) & 0x2) == 0, and falls through when (a1(=[-0x5fc8]) & 0x2) != 0.
  The return at 0xcc70 has v0 = ret(splx).
- `stopclocks_r4000` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xcc78 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xcc78-0xccb0 (56 bytes).
  It occupies 56 bytes.
  The `jal` at 0xcc90 calls ackrtclock with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xcc98 calls ackkgclock with a0=?, a1=?, a2=?, a3=?.
  The return at 0xcca8 has v0 = ret(ackkgclock).
- `startkgclock_r4000` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xccb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xccb0-0xce80 (464 bytes).
  It occupies 464 bytes.
  The `sw` at 0xcd44 stores 4 bytes to abs 0xffffffffffffa23c.
  The `jal` at 0xcd40 calls spl7 with a0=?, a1=?, a2=?, a3=?, a4=[sym(timer_freq)].
  The `jal` at 0xcd78 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xcdb0 calls get_r4k_counter with a0=[sym(t0timer)], a1=?, a2=?, a3=?, a6=[sym(t0interval)], a7=[sym(fasthz)].
  The `jal` at 0xcdc4 calls set_r4k_compare with a0=([sym(t1interval)] + ret(get_r4k_counter)), a1=?, a2=?, a3=?.
  The `jal` at 0xcde0 calls cmn_err with a0=0x4, a1=sym(.rodata)+6528, a2=[sym(fasthz)], a3=a3 at entry (arg3).
  The `jal` at 0xcdfc calls cmn_err with a0=0x6, a1=sym(.rodata)+6528, a2=0x1f4, a3=?.
  The `jal` at 0xce18 calls cmn_err with a0=0x4, a1=sym(.rodata)+6528, a2=[sym(fasthz)], a3=a3 at entry (arg3).
  The `jal` at 0xce34 calls cmn_err with a0=0x6, a1=sym(.rodata)+6528, a2=0x9c4, a3=?.
  The `jal` at 0xce54 calls cmn_err with a0=0x4, a1=sym(.rodata)+6528, a2=[sym(fasthz)], a3=a3 at entry (arg3).
  The `jal` at 0xce70 calls cmn_err with a0=0x6, a1=sym(.rodata)+6528, a2=0x3e8, a3=?.
  The `beq` branch at 0xccc8 targets 0xcd8c, is taken when s0(=[sym(fasthz)]) == 0, and falls through when s0(=[sym(fasthz)]) != 0.
  The `bne` branch at 0xccd0 targets 0xcdd4, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xccd8 targets 0xce0c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xccf8 targets 0xce44, is taken when at(=[sym(timer_freq)]) != v0(?), and falls through when at(=[sym(timer_freq)]) == v0(?).
  The `beq` branch at 0xcd04 targets 0xcd14, is taken when a0(=[sym(fastick)]) == 0, and falls through when a0(=[sym(fastick)]) != 0.
  The `beq` branch at 0xcd0c targets 0xcd34, is taken when s0(=[sym(fasthz)]) == v0(=[sym(fasthz)]), and falls through when s0(=[sym(fasthz)]) != v0(=[sym(fasthz)]).
  The `beq` branch at 0xcd68 targets 0xcdb0, is taken when a6(=[sym(t0interval)]) == 0, and falls through when a6(=[sym(t0interval)]) != 0.
  The `beq` branch at 0xcd98 targets 0xcd14, is taken when t1(=[sym(fastick)]) == 0, and falls through when t1(=[sym(fastick)]) != 0.
  The `bne` branch at 0xcda0 targets 0xcd18, is taken when s0(=[sym(fasthz)]) != a0(=0x3e8), and falls through when s0(=[sym(fasthz)]) == a0(=0x3e8).
  The `beq` branch at 0xcda8 targets 0xcd34 and is always taken.
  The `beq` branch at 0xcdcc targets 0xcd74 and is always taken.
  The `beq` branch at 0xce04 targets 0xcd04 and is always taken.
  The `beq` branch at 0xce3c targets 0xcd04 and is always taken.
  The `beq` branch at 0xce78 targets 0xcd04 and is always taken.
  The return at 0xcd84 has v0 = ret(splx).
- `slowkgclock_r4000` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xce80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xce80-0xcee8 (104 bytes).
  It occupies 104 bytes.
  The `sw` at 0xceb4 stores 4 bytes to abs 0xffffffffffffa23c.
  The `jal` at 0xce88 calls spl7 with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xcea8 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xceb0 calls ackkgclock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xcec4 calls get_r4k_counter with a0=[sym(t0timer)], a1=?, a2=?, a3=?.
  The `jal` at 0xced8 calls set_r4k_compare with a0=([sym(t1interval)] + ret(get_r4k_counter)), a1=?, a2=?, a3=?.
  The `beq` branch at 0xce9c targets 0xcec4, is taken when at(=[sym(t0interval)]) == 0, and falls through when at(=[sym(t0interval)]) != 0.
  The `beq` branch at 0xcee0 targets 0xcea8 and is always taken.
  The return at 0xcebc has v0 = ret(ackkgclock).
- `r4kcount_intr_r4000` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xcee8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xcee8-0xd0e4 (508 bytes).
  It occupies 508 bytes.
  The `jal` at 0xcef8 calls get_cpu_irr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xcf28 calls set_r4k_compare with a0=[sym(r4k_compare_shadow)], a1=?, a2=?, a3=?, a5=[sym(t0interval)].
  The `jal` at 0xd054 calls set_r4k_compare with a0=?, a1=?, a2=?, a3=?, a6=[sym(t1interval)].
  The `jal` at 0xd060 calls _get_r4k_counter with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd08c calls set_r4k_compare with a0=[sym(r4k_compare_shadow)], a1=?, a2=?, a3=?, a5=[sym(t0interval)], a7=ret(_get_r4k_counter).
  The `jal` at 0xd094 calls get_r4k_counter with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd0c4 calls hwperf_overflowed_intr with a0=?, a1=?, a2=?, a3=?, a5=[sym(t0interval)].
  The `jal` at 0xd0d4 calls hwperf_intr with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[sym(t0interval)].
  The `bne` branch at 0xcf08 targets 0xd0c4, is taken when at(?) < 0x23 (signed), and falls through when at(?) >= 0x23 (signed).
  The `beq` branch at 0xcf18 targets 0xcf38, is taken when a6(=[sym(t1interval)]) >= a5(=[sym(t0interval)]) (unsigned), and falls through when a6(=[sym(t1interval)]) < a5(=[sym(t0interval)]) (unsigned).
  The `bne` branch at 0xcf20 targets 0xcf40, is taken when a5(=[sym(t0interval)]) != 0, and falls through when a5(=[sym(t0interval)]) == 0.
  The `beq` branch at 0xcf30 targets 0xd0b4 and is always taken.
  The `beq` branch at 0xcf38 targets 0xcf28, is taken when a6(=[sym(t1interval)]) == 0, and falls through when a6(=[sym(t1interval)]) != 0.
  The `beq` branch at 0xcf40 targets 0xd060 and is always taken.
  The `beq` branch at 0xcf4c targets 0xcfc0, is taken when a5(=[sym(t0interval)]) == 0, and falls through when a5(=[sym(t0interval)]) != 0.
  The `beq` branch at 0xcf60 targets 0xcfbc, is taken when a3(?) >= s0(?) (unsigned), and falls through when a3(?) < s0(?) (unsigned).
  The `beq` branch at 0xcf78 targets 0xcf90, is taken when a3(?) >= s0(?) (unsigned), and falls through when a3(?) < s0(?) (unsigned).
  The `bne` branch at 0xcf88 targets 0xcf68, is taken when a3(?) < s0(?) (unsigned), and falls through when a3(?) >= s0(?) (unsigned).
  The `beq` branch at 0xcf98 targets 0xcfbc, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0xcfa4 targets 0xcfbc, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xcfd0 targets 0xd054, is taken when a6(=[sym(t1interval)]) == 0, and falls through when a6(=[sym(t1interval)]) != 0.
  The `beq` branch at 0xcfe0 targets 0xd040, is taken when a3(?) >= s0(?) (unsigned), and falls through when a3(?) < s0(?) (unsigned).
  The `beq` branch at 0xcff8 targets 0xd010, is taken when a3(?) >= s0(?) (unsigned), and falls through when a3(?) < s0(?) (unsigned).
  The `bne` branch at 0xd008 targets 0xcfe8, is taken when a3(?) < s0(?) (unsigned), and falls through when a3(?) >= s0(?) (unsigned).
  The `beq` branch at 0xd018 targets 0xd03c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0xd024 targets 0xd03c, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0xd044 targets 0xd054, is taken when at(?) < s0(?) (unsigned), and falls through when at(?) >= s0(?) (unsigned).
  The `bne` branch at 0xd078 targets 0xcf4c, is taken when v0(?) < s0(?) (unsigned), and falls through when v0(?) >= s0(?) (unsigned).
  The `beq` branch at 0xd080 targets 0xd0b0, is taken when s1(=one of 0x0, 0x1) == 0, and falls through when s1(=one of 0x0, 0x1) != 0.
  The `bne` branch at 0xd0a8 targets 0xcf48, is taken when a1(?) < s0(?) (unsigned), and falls through when a1(?) >= s0(?) (unsigned).
  The `beq` branch at 0xd0cc targets 0xcf10, is taken when v0(=ret(hwperf_overflowed_intr)) == 0, and falls through when v0(=ret(hwperf_overflowed_intr)) != 0.
  The `beq` branch at 0xd0dc targets 0xd0b4 and is always taken.
  The return at 0xd0bc has v0 = one of ret(set_r4k_compare), ?, ret(hwperf_intr).
- `ackkgclock_r4000` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xd0e4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xd0e4-0xd0ec (8 bytes).
  It occupies 8 bytes.
  The return at 0xd0e4 has v0 = ?.
- `ackrtclock_r4000` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xd0ec (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xd0ec-0xd0f4 (8 bytes).
  It occupies 8 bytes.
  The return at 0xd0ec has v0 = ?.
- `ecc_cleanup` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xd0f4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xd0f4-0xd430 (828 bytes).
  It occupies 828 bytes.
  2 such `sw` accesses store 4 bytes to sym(.bss) +0x1804, including `sw` at 0xd134, `sw` at 0xd210.
  5 such `lw` accesses load 4 bytes from sym(.bss) +0x1804, including `lw` at 0xd138, `lw` at 0xd1e0, `lw` at 0xd1f4.
  2 such `lw` accesses load 4 bytes from sym(.bss) +0x180c, including `lw` at 0xd13c, `lw` at 0xd2d8.
  The `sw` at 0xd14c stores 4 bytes to sym(.bss) +0x180c.
  4 such `lw` accesses load 4 bytes from table(sym(.bss)+6144) +0x98, including `lw` at 0xd168, `lw` at 0xd1b0, `lw` at 0xd1c8.
  3 such `lh` accesses load 2 bytes from table(sym(.bss)+6144) +0xa4, including `lh` at 0xd17c, `lh` at 0xd1a4, `lh` at 0xd30c.
  The `lw` at 0xd194 loads 4 bytes from table(sym(.bss)+6144) +0x60.
  The `lw` at 0xd198 loads 4 bytes from table(sym(.bss)+6144) +0x64.
  The `lw` at 0xd19c loads 4 bytes from table(sym(.bss)+6144) +0x8c.
  2 such `ld` accesses load 8 bytes from table(sym(.bss)+6144) +0x68, including `ld` at 0xd1a0, `ld` at 0xd410.
  2 such `lw` accesses load 4 bytes from sym(.bss) +0x1800, including `lw` at 0xd1dc, `lw` at 0xd2e4.
  The `ld` at 0xd214 loads 8 bytes from sym(.bss) +0x1818.
  3 such `ld` accesses load 8 bytes from table(sym(.bss)+6144) +0x58, including `ld` at 0xd218, `ld` at 0xd334, `ld` at 0xd3b0.
  3 such `lw` accesses load 4 bytes from table(sym(.bss)+6144) +0xa0, including `lw` at 0xd22c, `lw` at 0xd248, `lw` at 0xd2bc.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0xd260, `lw` at 0xd2d4.
  The `lw` at 0xd264 loads 4 bytes from [-0x5fec] +0x280.
  The `sw` at 0xd268 stores 4 bytes to [[-0x5fec]+640] +0x0.
  The `sw` at 0xd26c stores 4 bytes to table(sym(.bss)+6144) +0x98.
  The `sw` at 0xd274 stores 4 bytes to table(sym(.bss)+6144) +0xa0.
  The `lw` at 0xd328 loads 4 bytes from table(sym(.bss)+6144) +0x50.
  2 such `lw` accesses load 4 bytes from table(sym(.bss)+6144) +0x78, including `lw` at 0xd388, `lw` at 0xd3a4.
  The `lw` at 0xd3ac loads 4 bytes from table(sym(.bss)+6144) +0x80.
  The `lw` at 0xd3bc loads 4 bytes from table(sym(.bss)+6144) +0x84.
  The `lw` at 0xd3c0 loads 4 bytes from table(sym(.bss)+6144) +0x88.
  The `lw` at 0xd3c4 loads 4 bytes from table(sym(.bss)+6144) +0xa8.
  The `lw` at 0xd3cc loads 4 bytes from table(sym(.bss)+6144) +0xac.
  2 such `ld` accesses load 8 bytes from table(sym(.bss)+6144) +0x48, including `ld` at 0xd3f4, `ld` at 0xd408.
  The `ld` at 0xd414 loads 8 bytes from table(sym(.bss)+6144) +0x70.
  The `jal` at 0xd148 calls splxecc with a0=ret(splecc), a1=?, a2=?, a3=?.
  The `jal` at 0xd180 calls .text with a0=0x2, a1=[sym(.bss)+6148], a2=0x1, a3=0x1, a4=[table(sym(.bss)+6144)+164]:2.
  The `jal` at 0xd1a8 calls .text with a0=[table(sym(.bss)+6144)+96], a1=[table(sym(.bss)+6144)+100], a2=[table(sym(.bss)+6144)+140], a3=[table(sym(.bss)+6144)+104]:8, a4=0x1, a5=[table(sym(.bss)+6144)+164]:2.
  The `jal` at 0xd1d4 calls splecc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd224 calls dobuserr with a0=([sym(.bss)+6168]:8 << 0x0), a1=([table(sym(.bss)+6144)+88]:8 << 0x0), a2=0x2, a3=?.
  The `jal` at 0xd24c calls sigtopid with a0=[table(sym(.bss)+6144)+160], a1=0xa, a2=0x12, a3=0x0, a4=0x0, a5=0x0.
  The `jal` at 0xd27c calls splxecc with a0=ret(splecc), a1=?, a2=?, a3=?.
  The `jal` at 0xd2c0 calls sigtopid with a0=[table(sym(.bss)+6144)+160], a1=0xa, a2=0x12, a3=0x0, a4=0x0, a5=0x0.
  The `jal` at 0xd2e8 calls cmn_err with a0=0x6, a1=sym(.rodata)+6896, a2=[sym(.bss)+6156], a3=[sym(.bss)+6148], a4=[sym(.bss)+6144].
  The `jal` at 0xd310 calls .text with a0=?, a1=[sym(.bss)+6148], a2=0x1, a3=0x1, a4=[table(sym(.bss)+6144)+164]:2.
  The `jal` at 0xd338 calls cmn_err with a0=0x6, a1=sym(.rodata)+6896, a2=[table(sym(.bss)+6144)+80], a3=sym(real_data_eccsyns+312), a4=[table(sym(.bss)+6144)+88]:8.
  The `jal` at 0xd358 calls get_cpu_irr with a0=?, a1=?, a2=?, a3=?, a7=[table(sym(.bss)+6144)+152].
  The `jal` at 0xd378 calls cmn_err with a0=0x4, a1=sym(.rodata)+6896, a2=[table(sym(.bss)+6144)+160], a3=?.
  The `jal` at 0xd3b4 calls cmn_err with a0=0x6, a1=sym(.rodata)+6896, a2=[table(sym(.bss)+6144)+120], a3=sym(real_data_eccsyns+312), a5=[table(sym(.bss)+6144)+128], a6=[table(sym(.bss)+6144)+88]:8.
  The `jal` at 0xd3d0 calls cmn_err with a0=0x6, a1=sym(.rodata)+6896, a2=[table(sym(.bss)+6144)+132], a3=[table(sym(.bss)+6144)+136], a4=[table(sym(.bss)+6144)+168], a5=[table(sym(.bss)+6144)+172].
  The `jal` at 0xd3d8 calls get_cpu_irr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd418 calls cmn_err with a0=0x6, a1=sym(.rodata)+6896, a2=[table(sym(.bss)+6144)+72]:8, a3=sym(real_data_eccsyns+312), a5=[table(sym(.bss)+6144)+104]:8, a6=[table(sym(.bss)+6144)+112]:8.
  The `beq` branch at 0xd12c targets 0xd1d4 and is always taken.
  The `bne` branch at 0xd160 targets 0xd2d8, is taken when t8(=[sym(verbose_ecc)]) != 0, and falls through when t8(=[sym(verbose_ecc)]) == 0.
  The `bne` branch at 0xd16c targets 0xd2d8, is taken when t8(=[table(sym(.bss)+6144)+152]) != 0, and falls through when t8(=[table(sym(.bss)+6144)+152]) == 0.
  The `beq` branch at 0xd18c targets 0xd1b0, is taken when t9(=[sym(syslog_ecctype)]) == 0, and falls through when t9(=[sym(syslog_ecctype)]) != 0.
  The `bne` branch at 0xd1b4 targets 0xd2fc, is taken when ra(=[table(sym(.bss)+6144)+152]) != 0, and falls through when ra(=[table(sym(.bss)+6144)+152]) == 0.
  The `bne` branch at 0xd1c0 targets 0xd2fc, is taken when at(=[sym(verbose_ecc)]) != 0, and falls through when at(=[sym(verbose_ecc)]) == 0.
  The `bne` branch at 0xd1cc targets 0xd214, is taken when v0(=[table(sym(.bss)+6144)+152]) != 0, and falls through when v0(=[table(sym(.bss)+6144)+152]) == 0.
  The `beq` branch at 0xd1e4 targets 0xd278, is taken when v1(=[sym(.bss)+6144]) == a0(=[sym(.bss)+6148]), and falls through when v1(=[sym(.bss)+6144]) != a0(=[sym(.bss)+6148]).
  The `beq` branch at 0xd1fc targets 0xd134, is taken when a1(=[sym(.bss)+6148]) >= 0x9 (signed), and falls through when a1(=[sym(.bss)+6148]) < 0x9 (signed).
  The `beq` branch at 0xd20c targets 0xd138 and is always taken.
  The `beq` branch at 0xd230 targets 0xd378, is taken when a2(=[table(sym(.bss)+6144)+160]) == 0, and falls through when a2(=[table(sym(.bss)+6144)+160]) != 0.
  The `beq` branch at 0xd258 targets 0xd2a8, is taken when v0(=ret(sigtopid)) == a3(=0xb), and falls through when v0(=ret(sigtopid)) != a3(=0xb).
  The `beq` branch at 0xd270 targets 0xd1d4 and is always taken.
  The `beq` branch at 0xd2c8 targets 0xd2ac, is taken when v0(=ret(sigtopid)) == s2(=0xb), and falls through when v0(=ret(sigtopid)) != s2(=0xb).
  The `beq` branch at 0xd2d0 targets 0xd264 and is always taken.
  The `beq` branch at 0xd2f0 targets 0xd174 and is always taken.
  The `bgez` branch at 0xd320 targets 0xd300, is taken when a6(?) >= 0 (signed), and falls through when a6(?) < 0 (signed).
  The `bne` branch at 0xd344 targets 0xd358, is taken when a7(=[table(sym(.bss)+6144)+152]) != 0, and falls through when a7(=[table(sym(.bss)+6144)+152]) == 0.
  The `beq` branch at 0xd350 targets 0xd1c8, is taken when t0(=[sym(verbose_ecc)]) == 0, and falls through when t0(=[sym(verbose_ecc)]) != 0.
  The `beq` branch at 0xd368 targets 0xd388, is taken when t1(?) >= 0x23 (signed), and falls through when t1(?) < 0x23 (signed).
  The `beq` branch at 0xd370 targets 0xd388 and is always taken.
  The `beq` branch at 0xd380 targets 0xd26c and is always taken.
  The `beq` branch at 0xd38c targets 0xd3a0, is taken when t2(=[table(sym(.bss)+6144)+120]) == 0, and falls through when t2(=[table(sym(.bss)+6144)+120]) != 0.
  The `beq` branch at 0xd398 targets 0xd3a4 and is always taken.
  The `beq` branch at 0xd3e8 targets 0xd3f4, is taken when a5(?) >= 0x23 (signed), and falls through when a5(?) < 0x23 (signed).
  The `beq` branch at 0xd3f8 targets 0xd428, is taken when a6(=[table(sym(.bss)+6144)+72]:8) == 0, and falls through when a6(=[table(sym(.bss)+6144)+72]:8) != 0.
  The `beq` branch at 0xd420 targets 0xd1c8 and is always taken.
  The `beq` branch at 0xd428 targets 0xd408 and is always taken.
  The return at 0xd2a0 has v0 = ret(splxecc).
  The instructions from 0xd2f8 to 0xd2f8 are not reached by any path from the entry, and their branches are not listed.
- `ecc_panic` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xd430 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xd430-0xd668 (568 bytes).
  It occupies 568 bytes.
  The `lw` at 0xd440 loads 4 bytes from sym(.bss) +0x1800.
  3 such `lw` accesses load 4 bytes from sym(.bss) +0x1810, including `lw` at 0xd444, `lw` at 0xd494, `lw` at 0xd4bc.
  2 such `lh` accesses load 2 bytes from table(sym(.bss)+6144) +0xa4, including `lh` at 0xd50c, `lh` at 0xd538.
  3 such `lw` accesses load 4 bytes from table(sym(.bss)+6144) +0x60, including `lw` at 0xd510, `lw` at 0xd51c, `lw` at 0xd528.
  The `lw` at 0xd52c loads 4 bytes from table(sym(.bss)+6144) +0x64.
  The `lw` at 0xd530 loads 4 bytes from table(sym(.bss)+6144) +0x8c.
  2 such `ld` accesses load 8 bytes from table(sym(.bss)+6144) +0x68, including `ld` at 0xd534, `ld` at 0xd5a0.
  The `lw` at 0xd54c loads 4 bytes from table(sym(.bss)+6144) +0x50.
  The `ld` at 0xd580 loads 8 bytes from table(sym(.bss)+6144) +0x48.
  The `ld` at 0xd584 loads 8 bytes from table(sym(.bss)+6144) +0x58.
  The `ld` at 0xd58c loads 8 bytes from sym(.bss) +0x1818.
  The `ld` at 0xd590 loads 8 bytes from sym(.bss) +0x1820.
  The `ld` at 0xd5a4 loads 8 bytes from table(sym(.bss)+6144) +0x70.
  The `lw` at 0xd5b0 loads 4 bytes from table(sym(.bss)+6144) +0x80.
  The `lw` at 0xd5b8 loads 4 bytes from table(sym(.bss)+6144) +0x84.
  The `lw` at 0xd5bc loads 4 bytes from table(sym(.bss)+6144) +0x88.
  The `lw` at 0xd5cc loads 4 bytes from table(sym(.bss)+6144) +0xa8.
  The `lw` at 0xd5d0 loads 4 bytes from table(sym(.bss)+6144) +0xac.
  2 such `lw` accesses load 4 bytes from table(sym(.bss)+6144) +0x78, including `lw` at 0xd5dc, `lw` at 0xd5f8.
  2 such `lw` accesses load 4 bytes from table(sym(.bss)+6144) +0x90, including `lw` at 0xd604, `lw` at 0xd610.
  The `jal` at 0xd46c calls cmn_err with a0=0xe, a1=sym(.rodata)+6896, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xd48c calls cmn_err with a0=0xe, a1=sym(.rodata)+6896, a2=0x0, a3=a3 at entry (arg3).
  The `jal` at 0xd4d4 calls cmn_err with a0=0x6, a1=sym(.rodata)+6896, a2=sym(real_data_eccsyns+312), a3=sym(real_data_eccsyns+312), a4=sym(real_data_eccsyns+312).
  The `jal` at 0xd508 calls .text with a0=-0x1, a1=?, a2=0x0, a3=0x1, a4=[table(sym(.bss)+6144)+164]:2.
  The `jal` at 0xd53c calls .text with a0=[table(sym(.bss)+6144)+96], a1=[table(sym(.bss)+6144)+100], a2=[table(sym(.bss)+6144)+140], a3=[table(sym(.bss)+6144)+104]:8, a4=0x1, a5=[table(sym(.bss)+6144)+164]:2.
  The `jal` at 0xd550 calls cmn_err with a0=0x6, a1=sym(.rodata)+6896, a2=[table(sym(.bss)+6144)+80], a3=sym(real_data_eccsyns+312).
  The `jal` at 0xd558 calls get_cpu_irr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd57c calls cmn_err with a0=0x6, a1=sym(.rodata)+6896, a2=[table(sym(.bss)+6144)+72]:8, a3=sym(real_data_eccsyns+312).
  The `jal` at 0xd594 calls cmn_err with a0=0x6, a1=sym(.rodata)+6896, a2=[table(sym(.bss)+6144)+88]:8, a3=[sym(.bss)+6168]:8, a4=[sym(.bss)+6176]:8.
  The `jal` at 0xd5a8 calls cmn_err with a0=0x6, a1=sym(.rodata)+6896, a2=[table(sym(.bss)+6144)+104]:8, a3=[table(sym(.bss)+6144)+112]:8.
  The `jal` at 0xd5c0 calls cmn_err with a0=0x6, a1=sym(.rodata)+6896, a2=[table(sym(.bss)+6144)+128], a3=[table(sym(.bss)+6144)+132], a4=[table(sym(.bss)+6144)+136].
  The `jal` at 0xd5d4 calls cmn_err with a0=0x6, a1=sym(.rodata)+6896, a2=[table(sym(.bss)+6144)+168], a3=[table(sym(.bss)+6144)+172].
  The `jal` at 0xd5fc calls cmn_err with a0=0x6, a1=sym(.rodata)+6896, a2=[table(sym(.bss)+6144)+120], a3=sym(real_data_eccsyns+312).
  The `jal` at 0xd614 calls cmn_err with a0=0x6, a1=sym(.rodata)+6896, a2=[table(sym(.bss)+6144)+144], a3=?, a5=[table(sym(.bss)+6144)+144].
  The `jal` at 0xd62c calls cmn_err with a0=0x6, a1=sym(.rodata)+8336, a2=?, a3=?, a5=[table(sym(.bss)+6144)+144].
  The `jal` at 0xd648 calls cmn_err_tag with a0=0x49, a1=0x0, a2=sym(.rodata)+6896, a3=?.
  The `beq` branch at 0xd458 targets 0xd47c, is taken when (at(=[sym(.bss)+6160]) & 0x2) == 0, and falls through when (at(=[sym(.bss)+6160]) & 0x2) != 0.
  The `beq` branch at 0xd474 targets 0xd494 and is always taken.
  The `beq` branch at 0xd4b4 targets 0xd4dc, is taken when (t8(=[sym(.bss)+6160]) & 0x3) == 0, and falls through when (t8(=[sym(.bss)+6160]) & 0x3) != 0.
  The `beq` branch at 0xd4c4 targets 0xd4d0, is taken when (a5(=[sym(.bss)+6160]) & 0x1) == 0, and falls through when (a5(=[sym(.bss)+6160]) & 0x1) != 0.
  The `beq` branch at 0xd514 targets 0xd544, is taken when t8(=[table(sym(.bss)+6144)+96]) == 0, and falls through when t8(=[table(sym(.bss)+6144)+96]) != 0.
  The `beq` branch at 0xd520 targets 0xd548, is taken when t9(=[table(sym(.bss)+6144)+96]) == ra(=0x1), and falls through when t9(=[table(sym(.bss)+6144)+96]) != ra(=0x1).
  The `bne` branch at 0xd568 targets 0xd574, is taken when at(?) < 0x23 (signed), and falls through when at(?) >= 0x23 (signed).
  The `beq` branch at 0xd5e8 targets 0xd660, is taken when v0(=[table(sym(.bss)+6144)+120]) == 0, and falls through when v0(=[table(sym(.bss)+6144)+120]) != 0.
  The `beq` branch at 0xd608 targets 0xd624, is taken when a5(=[table(sym(.bss)+6144)+144]) == 0, and falls through when a5(=[table(sym(.bss)+6144)+144]) != 0.
  The `beq` branch at 0xd61c targets 0xd634 and is always taken.
  The `beq` branch at 0xd660 targets 0xd5f0 and is always taken.
  The return at 0xd658 has v0 = ret(cmn_err_tag).
- `ecc_find_bad_cline` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xe09c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xe09c-0xe124 (136 bytes).
  It occupies 136 bytes.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0xe0d4, `sw` at 0xe118.
  The `jal` at 0xe0b8 calls _read_tag with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-48, a3=a3 at entry (arg3).
  The `jal` at 0xe0c0 calls .text with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xe0f4 calls _read_tag with a0=a0 at entry (arg0), a1=?, a2=sp-48, a3=?.
  The `jal` at 0xe0fc calls .text with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xe0c8 targets 0xe0ec, is taken when v0(=ret(.text)) == 0, and falls through when v0(=ret(.text)) != 0.
  The `beq` branch at 0xe104 targets 0xe11c, is taken when v0(=ret(.text)) == 0, and falls through when v0(=ret(.text)) != 0.
  The `beq` branch at 0xe114 targets 0xe0d8 and is always taken.
  The `beq` branch at 0xe11c targets 0xe0d8 and is always taken.
  The return at 0xe0e4 has v0 = one of 0x0, 0x1.
- `ecc_fixctag` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xe124 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xe124-0xe51c (1016 bytes).
  It occupies 1016 bytes.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffa2b0, including `lw` at 0xe150, `lw` at 0xe3f8.
  The `lw` at 0xe158 loads 4 bytes from table(sym(.bss)+6144) +0x7c.
  3 such `lw` accesses load 4 bytes from table(sym(.bss)+6144) +0x78, including `lw` at 0xe15c, `lw` at 0xe3c4, `lw` at 0xe444.
  2 such `lw` accesses load 4 bytes from table(sym(.bss)+6144) +0x50, including `lw` at 0xe160, `lw` at 0xe248.
  2 such `ld` accesses load 8 bytes from table(sym(.bss)+6144) +0x68, including `ld` at 0xe16c, `ld` at 0xe3f0.
  3 such `ld` accesses load 8 bytes from table(sym(.bss)+6144) +0x70, including `ld` at 0xe178, `ld` at 0xe344, `ld` at 0xe40c.
  The `lw` at 0xe2f8 loads 4 bytes from table(sym(.bss)+6144) +0x80.
  The `sw` at 0xe2fc stores 4 bytes to table(sym(.bss)+6144) +0x9c.
  The `sw` at 0xe300 stores 4 bytes to table(sym(.bss)+6144) +0x80.
  The `sw` at 0xe30c stores 4 bytes to table(sym(.bss)+6144) +0x8c.
  The `sw` at 0xe3c0 stores 4 bytes to table(sym(.bss)+6144) +0x78.
  The `sd` at 0xe3ec stores 8 bytes to table(sym(.bss)+6144) +0x68.
  The `sd` at 0xe400 stores 8 bytes to table(sym(.bss)+6144) +0x70.
  The `sw` at 0xe434 stores 4 bytes to table(sym(.bss)+6144) +0x7c.
  The `jal` at 0xe1d0 calls ecc_find_bad_cline with a0=a0 at entry (arg0), a1=(0xffffffff80000000 | ([table(sym(.bss)+6144)+112]:8 << 0x0)), a2=sp-112, a3=a3 at entry (arg3), a4=[table(sym(.bss)+6144)+120].
  The `jal` at 0xe1e4 calls _c_ist with a0=a0 at entry (arg0), a1=?, a2=sp-104, a3=?.
  The `jal` at 0xe1f8 calls .text with a0=0x0, a1=a1 at entry (arg1), a2=sym(.data)+19088, a3=?.
  The `jal` at 0xe22c calls _c_ist with a0=a0 at entry (arg0), a1=(0xffffffff80000000 | ([table(sym(.bss)+6144)+112]:8 << 0x0)), a2=sp-104, a3=a3 at entry (arg3), a4=[table(sym(.bss)+6144)+120].
  The `jal` at 0xe240 calls _c_ist with a0=a0 at entry (arg0), a1=?, a2=sp-104, a3=?.
  The `jal` at 0xe26c calls _read_tag with a0=a0 at entry (arg0), a1=(0xffffffff80000000 | ([table(sym(.bss)+6144)+112]:8 << 0x0)), a2=sp-72, a3=?.
  The `jal` at 0xe294 calls _read_tag with a0=a0 at entry (arg0), a1=?, a2=sp-72, a3=?.
  The `jal` at 0xe2d0 calls _c_ilt with a0=a0 at entry (arg0), a1=?, a2=sp-104, a3=a3 at entry (arg3), a4=[table(sym(.bss)+6144)+120].
  The `jal` at 0xe2ec calls calc_err_info with a0=0x2, a1=sp-96, a2=?, a3=?, a4=0x80.
  The `jal` at 0xe330 calls .text with a0=[table(sym(.bss)+6144)+124], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[table(sym(.bss)+6144)+120].
  The `jal` at 0xe374 calls _c_ist with a0=a0 at entry (arg0), a1=(0xffffffff80000000 | ([table(sym(.bss)+6144)+112]:8 << 0x0)), a2=sp-104, a3=?.
  The `jal` at 0xe384 calls _c_ilt with a0=a0 at entry (arg0), a1=(0xffffffff80000000 | ([table(sym(.bss)+6144)+112]:8 << 0x0)), a2=sp-104, a3=?.
  The `jal` at 0xe38c calls .text with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xe3ac calls xlate_bit with a0=?, a1=?, a2=?, a3=?, a4=0x2, a6=[table(sym(.bss)+6144)+128], a7=0x2.
  The `jal` at 0xe428 calls _c_ilt with a0=0x0, a1=(0xffffffff80000000 | ([table(sym(.bss)+6144)+112]:8 << 0x0)), a2=sp-104, a3=[sym(picache_size)]-1, a5=-0x2000.
  The `jal` at 0xe44c calls _c_ist with a0=a0 at entry (arg0), a1=?, a2=sp-104, a3=?, a7=[table(sym(.bss)+6144)+120].
  The `jal` at 0xe45c calls _c_ilt with a0=a0 at entry (arg0), a1=?, a2=sp-104, a3=?.
  The `jal` at 0xe470 calls calc_err_info with a0=0x2, a1=sp-96, a2=?, a3=?.
  The `jal` at 0xe488 calls .text with a0=0x0, a1=a1 at entry (arg1), a2=sym(.data)+19168, a3=?.
  The `jal` at 0xe4a0 calls _c_ist with a0=a0 at entry (arg0), a1=?, a2=sp-104, a3=?, a4=0x80.
  The `jal` at 0xe4b4 calls _c_ist with a0=a0 at entry (arg0), a1=?, a2=sp-104, a3=?.
  The `jal` at 0xe4d8 calls .text with a0=0x2, a1=a1 at entry (arg1), a2=sym(.data)+18992, a3=?, a4=0x2, a6=[table(sym(.bss)+6144)+128].
  The `jal` at 0xe4e4 calls .text with a0=0x7, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0xe500 calls .text with a0=0x2, a1=a1 at entry (arg1), a2=sym(.data)+18896, a3=?.
  The `jal` at 0xe50c calls .text with a0=0x7, a1=a1 at entry (arg1), a2=?, a3=?.
  The `beq` branch at 0xe1a8 targets 0xe2c4, is taken when a0 == at(=0x3), and falls through when a0 != at(=0x3).
  The `bgez` branch at 0xe1c0 targets 0xe330, is taken when t8(=([sym(r4000_config)] << 0x2e)) >= 0 (signed), and falls through when t8(=([sym(r4000_config)] << 0x2e)) < 0 (signed).
  The `beq` branch at 0xe1c8 targets 0xe228, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0xe1d8 targets 0xe264, is taken when v0(=ret(ecc_find_bad_cline)) == 0, and falls through when v0(=ret(ecc_find_bad_cline)) != 0.
  The `bne` branch at 0xe254 targets 0xe1f0, is taken when (a2(=[table(sym(.bss)+6144)+80]) & a3(=0xffffffff82000000)) != 0, and falls through when (a2(=[table(sym(.bss)+6144)+80]) & a3(=0xffffffff82000000)) == 0.
  The `beq` branch at 0xe25c targets 0xe204 and is always taken.
  The `beq` branch at 0xe280 targets 0xe498, is taken when a4(=0x80) == a5(?), and falls through when a4(=0x80) != a5(?).
  The `beq` branch at 0xe2a8 targets 0xe4b0, is taken when a2(=0x80) == a3(?), and falls through when a2(=0x80) != a3(?).
  The `bne` branch at 0xe2b4 targets 0xe248, is taken when s4(=one of 0x0, 0x1, 0x2) < 0x2 (signed), and falls through when s4(=one of 0x0, 0x1, 0x2) >= 0x2 (signed).
  The `beq` branch at 0xe2bc targets 0xe204 and is always taken.
  The `beq` branch at 0xe308 targets 0xe4cc, is taken when v0(=ret(calc_err_info)) == 0, and falls through when v0(=ret(calc_err_info)) != 0.
  The `beq` branch at 0xe318 targets 0xe3ac, is taken when a0(?) == s1(=0x1), and falls through when a0(?) != s1(=0x1).
  The `beq` branch at 0xe320 targets 0xe438, is taken when a0(?) == a7(=0x2), and falls through when a0(?) != a7(=0x2).
  The `beq` branch at 0xe328 targets 0xe208 and is always taken.
  The `beq` branch at 0xe338 targets 0xe4f4, is taken when v0(=ret(.text)) == 0, and falls through when v0(=ret(.text)) != 0.
  The `beq` branch at 0xe358 targets 0xe3a4, is taken when a0(?) == a1(=0x1000), and falls through when a0(?) != a1(=0x1000).
  The `bne` branch at 0xe394 targets 0xe1f0, is taken when v0(=ret(.text)) != 0, and falls through when v0(=ret(.text)) == 0.
  The `beq` branch at 0xe39c targets 0xe204 and is always taken.
  The `beq` branch at 0xe3a4 targets 0xe364 and is always taken.
  The `beq` branch at 0xe478 targets 0xe4c4, is taken when v0(=ret(calc_err_info)) == 0, and falls through when v0(=ret(calc_err_info)) != 0.
  The `beq` branch at 0xe490 targets 0xe204 and is always taken.
  The `beq` branch at 0xe4a8 targets 0xe288 and is always taken.
  The `beq` branch at 0xe4bc targets 0xe2b0 and is always taken.
  The `beq` branch at 0xe4c4 targets 0xe204 and is always taken.
  The `beq` branch at 0xe4ec targets 0xe204 and is always taken.
  The `beq` branch at 0xe514 targets 0xe204 and is always taken.
  The return at 0xe220 has v0 = one of 0x0, 0x1, 0x2.
- `ecc_fixcdata` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xe51c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xe51c-0xe8b0 (916 bytes).
  It occupies 916 bytes.
  The `lw` at 0xe540 loads 4 bytes from abs 0xffffffffffffa2b0.
  3 such `ld` accesses load 8 bytes from table(sym(.bss)+6144) +0x70, including `ld` at 0xe558, `ld` at 0xe5d4, `ld` at 0xe5ec.
  3 such `ld` accesses load 8 bytes from table(sym(.bss)+6144) +0x68, including `ld` at 0xe564, `ld` at 0xe610, `ld` at 0xe70c.
  The `sd` at 0xe5e8 stores 8 bytes to table(sym(.bss)+6144) +0x70.
  3 such `lw` accesses load 4 bytes from (0xffffffff80000000 | ([table(sym(.bss)+6144)+112]:8 << 0x0)) +0x0, including `lw` at 0xe66c, `lw` at 0xe734, `lw` at 0xe7ec.
  3 such `lw` accesses load 4 bytes from (0xffffffff80000000 | ([table(sym(.bss)+6144)+112]:8 << 0x0)) +0x4, including `lw` at 0xe67c, `lw` at 0xe748, `lw` at 0xe800.
  The `sw` at 0xe698 stores 4 bytes to table(sym(.bss)+6144) +0x78.
  The `lw` at 0xe69c loads 4 bytes from table(sym(.bss)+6144) +0x80.
  3 such `sw` accesses store 4 bytes to table(sym(.bss)+6144) +0x9c, including `sw` at 0xe6a4, `sw` at 0xe78c, `sw` at 0xe844.
  The `sw` at 0xe6b0 stores 4 bytes to table(sym(.bss)+6144) +0x80.
  The `sw` at 0xe6b4 stores 4 bytes to table(sym(.bss)+6144) +0x8c.
  The `sw` at 0xe6c0 stores 4 bytes to table(sym(.bss)+6144) +0x84.
  The `sw` at 0xe6c4 stores 4 bytes to table(sym(.bss)+6144) +0x88.
  The `sw` at 0xe6c8 stores 4 bytes to table(sym(.bss)+6144) +0xac.
  The `sw` at 0xe6d0 stores 4 bytes to table(sym(.bss)+6144) +0xa8.
  The `sd` at 0xe71c stores 8 bytes to a2 (arg2 at entry) +0x28.
  2 such `sw` accesses store 4 bytes to table(sym(.bss)+6144) +0x90, including `sw` at 0xe798, `sw` at 0xe850.
  The `jal` at 0xe5fc calls _c_ilt with a0=a0 at entry (arg0), a1=(0xffffffff80000000 | ([table(sym(.bss)+6144)+112]:8 << 0x0)), a2=sp-112, a3=?.
  The `jal` at 0xe648 calls .text with a0=0x2, a1=a1 at entry (arg1), a2=sym(.data)+19264, a3=?.
  The `jal` at 0xe654 calls .text with a0=0x7, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0xe684 calls _c_ilt_n_ecc with a0=a0 at entry (arg0), a1=?, a2=sp-112, a3=sp-80, a4=[(0xffffffff80000000 | ([table(sym(.bss)+6144)+112]:8 << 0x0))+4], a5=[(0xffffffff80000000 | ([table(sym(.bss)+6144)+112]:8 << 0x0))].
  The `jal` at 0xe6ac calls calc_err_info with a0=0x1, a1=sp-104, a2=?, a3=?, a7=[table(sym(.bss)+6144)+128].
  The `jal` at 0xe718 calls .text with a0=0x0, a1=a1 at entry (arg1), a2=sym(.data)+19872, a3=?.
  The `jal` at 0xe72c calls _c_hwbinv with a0=0x3, a1=?, a2=?, a3=?.
  The `jal` at 0xe750 calls _c_ilt_n_ecc with a0=a0 at entry (arg0), a1=?, a2=sp-112, a3=sp-80, a4=[(0xffffffff80000000 | ([table(sym(.bss)+6144)+112]:8 << 0x0))+4], a5=[(0xffffffff80000000 | ([table(sym(.bss)+6144)+112]:8 << 0x0))].
  The `jal` at 0xe764 calls calc_err_info with a0=0x1, a1=sp-104, a2=?, a3=?.
  The `jal` at 0xe780 calls .text with a0=0x0, a1=a1 at entry (arg1), a2=sym(.data)+19664, a3=?.
  The `jal` at 0xe7b0 calls .text with a0=0x0, a1=a1 at entry (arg1), a2=sym(.data)+19968, a3=?.
  The `jal` at 0xe7cc calls .text with a0=0x1, a1=a1 at entry (arg1), a2=sym(.data)+19776, a3=?.
  The `jal` at 0xe7dc calls _c_hinv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xe808 calls _c_ilt_n_ecc with a0=a0 at entry (arg0), a1=?, a2=sp-112, a3=sp-80, a4=[(0xffffffff80000000 | ([table(sym(.bss)+6144)+112]:8 << 0x0))+4], a5=[(0xffffffff80000000 | ([table(sym(.bss)+6144)+112]:8 << 0x0))].
  The `jal` at 0xe81c calls calc_err_info with a0=0x1, a1=sp-104, a2=?, a3=?.
  The `jal` at 0xe838 calls .text with a0=0x0, a1=a1 at entry (arg1), a2=sym(.data)+19456, a3=?.
  The `jal` at 0xe860 calls .text with a0=0x2, a1=a1 at entry (arg1), a2=sym(.data)+19360, a3=?.
  The `jal` at 0xe86c calls .text with a0=0x7, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0xe888 calls .text with a0=0x1, a1=a1 at entry (arg1), a2=sym(.data)+19568, a3=?.
  The `jal` at 0xe8a0 calls .text with a0=0x2, a1=a1 at entry (arg1), a2=sym(.data)+20224, a3=?.
  The `bgez` branch at 0xe584 targets 0xe5b0, is taken when at(=([sym(r4000_config)] << 0x2e)) >= 0 (signed), and falls through when at(=([sym(r4000_config)] << 0x2e)) < 0 (signed).
  The `beq` branch at 0xe5b0 targets 0xe79c, is taken when a0 == 0, and falls through when a0 != 0.
  The `bne` branch at 0xe5b8 targets 0xe664, is taken when t8(=0x1) != a0, and falls through when t8(=0x1) == a0.
  The `beq` branch at 0xe630 targets 0xe7a4, is taken when v1(?) == a2(?), and falls through when v1(?) != a2(?).
  The `beq` branch at 0xe638 targets 0xe5d4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xe65c targets 0xe590 and is always taken.
  The `beq` branch at 0xe6cc targets 0xe854, is taken when v0(=ret(calc_err_info)) == 0, and falls through when v0(=ret(calc_err_info)) != 0.
  The `beq` branch at 0xe6d8 targets 0xe7dc, is taken when s1(=a0) == t3(=0x3), and falls through when s1(=a0) != t3(=0x3).
  The `beq` branch at 0xe6e4 targets 0xe72c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xe6f0 targets 0xe72c, is taken when v0(?) == t8(=0x1), and falls through when v0(?) != t8(=0x1).
  The `beq` branch at 0xe6fc targets 0xe728, is taken when v0(?) == t9(=0x2), and falls through when v0(?) != t9(=0x2).
  The `beq` branch at 0xe720 targets 0xe590 and is always taken.
  The `beq` branch at 0xe76c targets 0xe7c0, is taken when v0(=ret(calc_err_info)) == 0, and falls through when v0(=ret(calc_err_info)) != 0.
  The `beq` branch at 0xe794 targets 0xe590 and is always taken.
  The `beq` branch at 0xe79c targets 0xe5c4 and is always taken.
  The `beq` branch at 0xe7b8 targets 0xe590 and is always taken.
  The `beq` branch at 0xe7d4 targets 0xe590 and is always taken.
  The `beq` branch at 0xe7e4 targets 0xe898, is taken when v0(=ret(_c_hinv)) == 0, and falls through when v0(=ret(_c_hinv)) != 0.
  The `beq` branch at 0xe824 targets 0xe87c, is taken when v0(=ret(calc_err_info)) == 0, and falls through when v0(=ret(calc_err_info)) != 0.
  The `beq` branch at 0xe84c targets 0xe590 and is always taken.
  The `beq` branch at 0xe874 targets 0xe590 and is always taken.
  The `beq` branch at 0xe890 targets 0xe590 and is always taken.
  The `beq` branch at 0xe8a8 targets 0xe590 and is always taken.
  The return at 0xe5a8 has v0 = one of -0x1, 0x0, 0x1.
- `ecc_swap_s_tag` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xed64 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xed64-0xee10 (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0xed70 loads 4 bytes from a1 (arg1 at entry) +0x0.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0xc, including `sw` at 0xedbc, `sw` at 0xedec.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x4, including `sw` at 0xedd0, `sw` at 0xee0c.
  The `sw` at 0xedfc stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `jal` at 0xed9c calls printf with a0=sym(.rodata)+8400, a1=a0 at entry (arg0), a2=?, a3=?, a4=[a1], a5=0x2.
  The `beq` branch at 0xed74 targets 0xedd4, is taken when a0 == at(=0x1), and falls through when a0 != at(=0x1).
  The `beq` branch at 0xed8c targets 0xedb4, is taken when v0(=a0) == a5(=0x2), and falls through when v0(=a0) != a5(=0x2).
  The `beq` branch at 0xedcc targets 0xedac and is always taken.
  The `beq` branch at 0xee08 targets 0xedac and is always taken.
  The return at 0xedac has v0 = one of -0x1, 0x0.
- `xlate_bit` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xee10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xee10-0xee38 (40 bytes).
  It occupies 40 bytes.
  The `lw` at 0xee2c loads 4 bytes from (sym(.data)+20480 + (a1 << 0x2)) +0x0.
  The `beq` branch at 0xee20 targets 0xee30, is taken when a0 == a6(=0x2), and falls through when a0 != a6(=0x2).
  The return at 0xee30 has v0 = one of a1, [(sym(.data)+20480 + (a1 << 0x2))].
- `print_ecc_info` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xee38 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xee38-0xf31c (1252 bytes).
  It occupies 1252 bytes.
  The `ld` at 0xeea4 loads 8 bytes from sym(.bss) +0x1818.
  The `ld` at 0xeea8 loads 8 bytes from sym(.bss) +0x1820.
  2 such `lw` accesses load 4 bytes from sym(.bss) +0x1800, including `lw` at 0xeeb4, `lw` at 0xf214.
  2 such `lw` accesses load 4 bytes from sym(.bss) +0x1804, including `lw` at 0xeeb8, `lw` at 0xf20c.
  The `lw` at 0xeebc loads 4 bytes from sym(.bss) +0x1808.
  The `lw` at 0xeec0 loads 4 bytes from sym(.bss) +0x180c.
  The `lw` at 0xeec4 loads 4 bytes from sym(.bss) +0x1810.
  The `lw` at 0xeefc loads 4 bytes from sym(.bss) +0x1828.
  The `lw` at 0xef04 loads 4 bytes from sym(.data) +0x18c0.
  34 such `lw` accesses load 4 bytes from ?, including `lw` at 0xef58, `lw` at 0xef68, `lw` at 0xef6c.
  8 such `ld` accesses load 8 bytes from ?, including `ld` at 0xef78, `ld` at 0xef7c, `ld` at 0xf074.
  2 such `lh` accesses load 2 bytes from ?, including `lh` at 0xf020, `lh` at 0xf064.
  The `jal` at 0xee9c calls qprintf with a0=sym(.rodata)+6896, a1=?, a2=?, a3=a3 at entry (arg3).
  The `jal` at 0xeeac calls qprintf with a0=sym(.rodata)+6896, a1=[sym(.bss)+6168]:8, a2=[sym(.bss)+6176]:8, a3=?.
  The `jal` at 0xeec8 calls qprintf with a0=sym(.rodata)+6896, a1=[sym(.bss)+6144], a2=[sym(.bss)+6148], a3=[sym(.bss)+6152], a4=[sym(.bss)+6156], a5=[sym(.bss)+6160].
  The `jal` at 0xeed0 calls qprintf with a0=sym(.rodata)+6896, a1=?, a2=?, a3=?.
  The `jal` at 0xef08 calls qprintf with a0=sym(.rodata)+9552, a1=[sym(real_data_eccsyns+312)], a2=[sym(.bss)+6184], a3=?.
  The `jal` at 0xef28 calls qprintf with a0=sym(.rodata)+9568, a1=?, a2=?, a3=?.
  The `jal` at 0xef70 calls qprintf with a0=sym(.rodata)+6896, a1=?, a2=sym(real_data_eccsyns+312), a3=?, a5=sym(real_data_eccsyns+312).
  The `jal` at 0xef8c calls qprintf with a0=sym(.rodata)+6896, a1=?, a2=?, a3=?.
  The `jal` at 0xefa4 calls qprintf with a0=sym(.rodata)+6896, a1=?, a2=?, a3=?.
  The `jal` at 0xefbc calls qprintf with a0=sym(.rodata)+6896, a1=?, a2=?, a3=?.
  The `jal` at 0xf024 calls .text with a0=?, a1=?, a2=?, a3=?, a4=0x1.
  The `jal` at 0xf04c calls qprintf with a0=sym(.rodata)+6896, a1=?, a2=?, a3=?.
  The `jal` at 0xf068 calls .text with a0=-0x1, a1=?, a2=0x0, a3=0x1.
  The `jal` at 0xf0bc calls qprintf with a0=sym(.rodata)+6896, a1=?, a2=?, a3=?.
  The `jal` at 0xf0c4 calls get_cpu_irr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xf0e4 calls qprintf with a0=sym(.rodata)+6896, a1=?, a2=sym(real_data_eccsyns+312), a3=?.
  The `jal` at 0xf0f8 calls qprintf with a0=sym(.rodata)+6896, a1=?, a2=sym(real_data_eccsyns+312), a3=?.
  The `jal` at 0xf100 calls get_cpu_irr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xf134 calls qprintf with a0=sym(.rodata)+6896, a1=?, a2=?, a3=?.
  The `jal` at 0xf17c calls qprintf with a0=sym(.rodata)+8336, a1=?, a2=?, a3=?.
  The `jal` at 0xf198 calls qprintf with a0=sym(.rodata)+6896, a1=?, a2=sym(real_data_eccsyns+312), a3=?.
  The `jal` at 0xf1b8 calls qprintf with a0=sym(.rodata)+6896, a1=?, a2=?, a3=?.
  The `jal` at 0xf1c8 calls get_cpu_irr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xf1f4 calls qprintf with a0=sym(.rodata)+6896, a1=?, a2=sym(real_data_eccsyns+312), a3=?.
  The `jal` at 0xf24c calls qprintf with a0=sym(.rodata)+6896, a1=?, a2=?, a3=a3 at entry (arg3).
  The `beq` branch at 0xee58 targets 0xf204, is taken when a0 == at(=-0x1), and falls through when a0 != at(=-0x1).
  The `bltz` branch at 0xee64 targets 0xf218, is taken when s3(?) < 0 (signed), and falls through when s3(?) >= 0 (signed).
  The `bltz` branch at 0xee70 targets 0xf25c, is taken when s5(?) < 0 (signed), and falls through when s5(?) >= 0 (signed).
  The `bne` branch at 0xee78 targets 0xf26c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0xee80 targets 0xf28c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0xef1c targets 0xeefc, is taken when s6(?) < 0x8 (signed), and falls through when s6(?) >= 0x8 (signed).
  The `bne` branch at 0xef34 targets 0xf144, is taken when s5(?) < s3(?) (signed), and falls through when s5(?) >= s3(?) (signed).
  The `beq` branch at 0xef50 targets 0xf040 and is always taken.
  The `beq` branch at 0xef5c targets 0xf174, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xef98 targets 0xefac, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xefb0 targets 0xf17c, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0xefc8 targets 0xf1a8, is taken when s4(=0x1) == at(?), and falls through when s4(=0x1) != at(?).
  The `beq` branch at 0xefd4 targets 0xf1c8, is taken when v0(?) == s8(=0x3), and falls through when v0(?) != s8(=0x3).
  The `beq` branch at 0xefe0 targets 0xf190, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xefec targets 0xf190, is taken when a0(?) == s4(=0x1), and falls through when a0(?) != s4(=0x1).
  The `beq` branch at 0xeff8 targets 0xf128, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xf004 targets 0xf128, is taken when a2(?) == s4(=0x1), and falls through when a2(?) != s4(=0x1).
  The `bne` branch at 0xf038 targets 0xf144, is taken when s5(?) < s3(?) (signed), and falls through when s5(?) >= s3(?) (signed).
  The `beq` branch at 0xf044 targets 0xf130, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bltz` branch at 0xf084 targets 0xf094, is taken when a6(?) < 0 (signed), and falls through when a6(?) >= 0 (signed).
  The `bne` branch at 0xf08c targets 0xf098, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0xf09c targets 0xf0a8, is taken when s4(=0x1) == a5(?), and falls through when s4(=0x1) != a5(?).
  The `beq` branch at 0xf0d4 targets 0xf0e0, is taken when a2(?) >= 0x23 (signed), and falls through when a2(?) < 0x23 (signed).
  The `beq` branch at 0xf118 targets 0xef58, is taken when a3(?) >= 0x23 (signed), and falls through when a3(?) < 0x23 (signed).
  The `beq` branch at 0xf120 targets 0xef58 and is always taken.
  The `beq` branch at 0xf128 targets 0xf00c and is always taken.
  The `beq` branch at 0xf13c targets 0xf034 and is always taken.
  The `beq` branch at 0xf174 targets 0xef64 and is always taken.
  The `beq` branch at 0xf184 targets 0xefc4 and is always taken.
  The `beq` branch at 0xf1a0 targets 0xeff4 and is always taken.
  The `beq` branch at 0xf1c0 targets 0xeff4 and is always taken.
  The `bne` branch at 0xf1d8 targets 0xf1e4, is taken when a1(?) < 0x23 (signed), and falls through when a1(?) >= 0x23 (signed).
  The `beq` branch at 0xf1fc targets 0xeff4 and is always taken.
  The `beq` branch at 0xf210 targets 0xee60 and is always taken.
  The `bltz` branch at 0xf218 targets 0xf2cc, is taken when s5(?) < 0 (signed), and falls through when s5(?) >= 0 (signed).
  The `bne` branch at 0xf224 targets 0xf234, is taken when s5(?) < 0xa (signed), and falls through when s5(?) >= 0xa (signed).
  The `beq` branch at 0xf22c targets 0xf23c and is always taken.
  The `beq` branch at 0xf234 targets 0xf2ec, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `beq` branch at 0xf254 targets 0xeea4 and is always taken.
  The `bne` branch at 0xf25c targets 0xf2a4, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0xf264 targets 0xee90 and is always taken.
  The `bne` branch at 0xf26c targets 0xf2d8, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0xf274 targets 0xf2ac, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xf27c targets 0xf2fc, is taken when s3(?) == a0(=0x9), and falls through when s3(?) != a0(=0x9).
  The `beq` branch at 0xf284 targets 0xf240 and is always taken.
  The `beq` branch at 0xf290 targets 0xf2bc, is taken when s5(?) >= 0x9 (signed), and falls through when s5(?) < 0x9 (signed).
  The `beq` branch at 0xf29c targets 0xee90 and is always taken.
  The `blez` branch at 0xf2a4 targets 0xf304, is taken when s3(?) <= 0 (signed), and falls through when s3(?) > 0 (signed).
  The `beq` branch at 0xf2ac targets 0xee94, is taken when s5(?) == s3(?), and falls through when s5(?) != s3(?).
  The `beq` branch at 0xf2b4 targets 0xf240 and is always taken.
  The `beq` branch at 0xf2bc targets 0xf2f4, is taken when s5(?) == a0(=0x9), and falls through when s5(?) != a0(=0x9).
  The `beq` branch at 0xf2c4 targets 0xf240 and is always taken.
  The `beq` branch at 0xf2d0 targets 0xee90 and is always taken.
  The `beq` branch at 0xf2dc targets 0xf2ac, is taken when s5(?) >= s3(?) (signed), and falls through when s5(?) < s3(?) (signed).
  The `beq` branch at 0xf2e4 targets 0xf2ac and is always taken.
  The `beq` branch at 0xf2ec targets 0xee90 and is always taken.
  The `beq` branch at 0xf2f4 targets 0xee90 and is always taken.
  The `beq` branch at 0xf2fc targets 0xee90 and is always taken.
  The `beq` branch at 0xf304 targets 0xf314, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0xf30c targets 0xf23c and is always taken.
  The `beq` branch at 0xf314 targets 0xee90 and is always taken.
  The return at 0xf16c has v0 = one of ret(qprintf), ?.
  The instructions from 0xf18c to 0xf18c are not reached by any path from the entry, and their branches are not listed.
- `idbg_ecc_info` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xf31c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xf31c-0xf39c (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xf350 loads 4 bytes from sym(.bss) +0x1828.
  The `lw` at 0xf358 loads 4 bytes from sym(.data) +0x4740.
  The `jal` at 0xf334 calls qprintf with a0=sym(.rodata)+9616, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xf35c calls qprintf with a0=sym(.rodata)+9552, a1=[sym(.data)+18240], a2=[sym(.bss)+6184], a3=?.
  The `jal` at 0xf37c calls qprintf with a0=sym(.rodata)+9568, a1=?, a2=?, a3=?.
  The `bne` branch at 0xf370 targets 0xf350, is taken when s2(?) < 0x8 (signed), and falls through when s2(?) >= 0x8 (signed).
  The return at 0xf394 has v0 = ret(qprintf).
- `softfp_adderr` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xf5f8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xf5f8-0xf620 (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0xf608 calls cmn_err with a0=0x0, a1=sym(.rodata)+10304, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xf618 has v0 = 0x0.
- `softfp_insterr` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xf620 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xf620-0xf648 (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0xf630 calls cmn_err with a0=0x0, a1=sym(.rodata)+10368, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xf640 has v0 = 0x0.
- `error_mark_page` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xf924 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xf924-0xf948 (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0xf934 calls cmn_err with a0=0x5, a1=sym(.rodata)+10960, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xf940 has v0 = ret(cmn_err).
- `error_reclaim_page` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xf948 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xf948-0xf970 (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0xf958 calls cmn_err with a0=0x5, a1=sym(.rodata)+11024, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xf968 has v0 = 0x0.
- `tlb_to_phys` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xf970 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xf970-0xfa6c (252 bytes).
  It occupies 252 bytes.
  3 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0xf9cc, `sw` at 0xf9f4, `sw` at 0xfa44.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0xf9f8, `sw` at 0xfa50.
  The `jal` at 0xfa24 calls tlbgetlo with a0=?, a1=(a0 << 0x0), a2=?, a3=?.
  The `jal` at 0xfa54 calls tlbgetpid with a0=?, a1=?, a2=?, a3=a3 at entry (arg3), a5=0xffffffffa0000000, a6=0xffffffffc0000000.
  The `bne` branch at 0xf9a8 targets 0xf9d0, is taken when s0(=(a0 << 0x0)) < at(=0xffffffff80000000) (unsigned), and falls through when s0(=(a0 << 0x0)) >= at(=0xffffffff80000000) (unsigned).
  The `beq` branch at 0xf9bc targets 0xf9dc, is taken when s0(=(a0 << 0x0)) >= a5(=0xffffffffa0000000) (unsigned), and falls through when s0(=(a0 << 0x0)) < a5(=0xffffffffa0000000) (unsigned).
  The `beq` branch at 0xf9c8 targets 0xf9f8 and is always taken.
  The `bne` branch at 0xf9d8 targets 0xfa14, is taken when s0(=(a0 << 0x0)) < a5(=0xffffffffa0000000) (unsigned), and falls through when s0(=(a0 << 0x0)) >= a5(=0xffffffffa0000000) (unsigned).
  The `beq` branch at 0xf9ec targets 0xfa1c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0xfa14 targets 0xfa54, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0xfa1c targets 0xfa54, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0xfa34 targets 0xfa64, is taken when v0(=ret(tlbgetlo)) == a2(=-0x1), and falls through when v0(=ret(tlbgetlo)) != a2(=-0x1).
  The `beq` branch at 0xfa4c targets 0xf9fc and is always taken.
  The `beq` branch at 0xfa5c targets 0xfa24 and is always taken.
  The `beq` branch at 0xfa64 targets 0xf9fc and is always taken.
  The return at 0xfa0c has v0 = one of 0x0, 0x1.
- `r_phys_word_erl` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xfa6c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xfa6c-0xfa74 (8 bytes).
  It occupies 8 bytes.
  The `lw` at 0xfa70 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The return at 0xfa6c has v0 = [a0].
- `decode_inst` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0xfb9c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0xfb9c-0xfddc (576 bytes).
  It occupies 576 bytes.
  The `ld` at 0xfbb4 loads 8 bytes from ?.
  The `sd` at 0xfbdc stores 8 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0xfbe8 loads 4 bytes from table(sym(.rodata)+12720) +0x0.
  The `beq` branch at 0xfba4 targets 0xfbb8, is taken when (v0(?) & 0x1f) == 0, and falls through when (v0(?) & 0x1f) != 0.
  The `beq` branch at 0xfbe0 targets 0xfbf4, is taken when a5(?) >= 0x26 (unsigned), and falls through when a5(?) < 0x26 (unsigned).
  The return at 0xfbf8 has v0 = 0x0.
  The instructions from 0xfc00 to 0xfdd8 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xfbec uses a jump table whose successors are unresolved.
- `log_ecc_err` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x100a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x100a0-0x1026c (460 bytes).
  It occupies 460 bytes.
  The `lw` at 0x100f0 loads 4 bytes from sym(.rodata) +0x33c0.
  The `sw` at 0x100f4 stores 4 bytes to sym(.bss) +0x2240.
  The `lbu` at 0x10100 loads 1 byte from sym(.rodata) +0x33c6.
  The `sb` at 0x10104 stores 1 byte to sym(.bss) +0x2246.
  The `lhu` at 0x1010c loads 2 bytes from sym(.rodata) +0x33c4.
  The `sh` at 0x10114 stores 2 bytes to sym(.bss) +0x2244.
  The `sb` at 0x10120 stores 1 byte to sym(.bss) +0x2245.
  The `lw` at 0x10224 loads 4 bytes from sym(.rodata) +0x3210.
  The `lbu` at 0x10228 loads 1 byte from sym(.rodata) +0x3214.
  The `ld` at 0x10230 loads 8 bytes from sym(.rodata) +0x3208.
  The `sd` at 0x10238 stores 8 bytes to sym(.bss) +0x2240.
  The `sb` at 0x1023c stores 1 byte to sym(.bss) +0x224c.
  The `sw` at 0x10244 stores 4 bytes to sym(.bss) +0x2248.
  The `jal` at 0x100c0 calls addr_to_bank with a0=?, a1=-0x20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1017c calls .text with a0=?, a1=sym(.rodata)+6640, a2=?, a3=?, a5=sym(bad_slot_string).
  The `jal` at 0x10190 calls .text with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x101ac calls .text with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x101d4 calls cmn_err_tag with a0=0x37, a1=0x1, a2=sym(.rodata)+12592, a3=?, a4=sym(.bss)+8768.
  The `jal` at 0x101f0 calls cmn_err_tag with a0=0x38, a1=0x1, a2=sym(.rodata)+12592, a3=?, a4=sym(.bss)+8768, a5=sym(bad_slot_string).
  The `bltz` branch at 0x100e4 targets 0x1021c, is taken when v0(=ret(addr_to_bank)) < 0 (signed), and falls through when v0(=ret(addr_to_bank)) >= 0 (signed).
  The `beq` branch at 0x10130 targets 0x10248, is taken when (v0(=ret(addr_to_bank)) & 0x1) == 0, and falls through when (v0(=ret(addr_to_bank)) & 0x1) != 0.
  The `bne` branch at 0x1013c targets 0x101e4, is taken when s1(=a2) != 0, and falls through when s1(=a2) == 0.
  The `beq` branch at 0x10148 targets 0x10250, is taken when (s0(=a1) & 0xffff) == 0, and falls through when (s0(=a1) & 0xffff) != 0.
  The `beq` branch at 0x10150 targets 0x10258, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x10158 targets 0x1017c, is taken when s2(?) != 0, and falls through when s2(?) == 0.
  The `beq` branch at 0x1016c targets 0x10264, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x10174 targets 0x10168, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `bne` branch at 0x10188 targets 0x101ac, is taken when v0(=ret(.text)) < 0x2 (signed), and falls through when v0(=ret(.text)) >= 0x2 (signed).
  The `beq` branch at 0x101a4 targets 0x101c4 and is always taken.
  The `beq` branch at 0x101dc targets 0x101f8 and is always taken.
  The `beq` branch at 0x10240 targets 0x10124 and is always taken.
  The `beq` branch at 0x10248 targets 0x1013c and is always taken.
  The `beq` branch at 0x10250 targets 0x10150 and is always taken.
  The `beq` branch at 0x1025c targets 0x1017c and is always taken.
  The `beq` branch at 0x10264 targets 0x1017c and is always taken.
  The return at 0x10214 has v0 = ret(cmn_err_tag).
- `earlynofault` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x10b14 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x10b14-0x10b48 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x10b30 loads 4 bytes from a0 (arg0 at entry) +0x124.
  The `jal` at 0x10b34 calls dobuserre with a0=a0 at entry (arg0), a1=[a0+292], a2=0x1, a3=a3 at entry (arg3).
  The `beq` branch at 0x10b1c targets 0x10b30, is taken when a1 == at(=0x1c), and falls through when a1 != at(=0x1c).
  The `beq` branch at 0x10b40 targets 0x10b28 and is always taken.
  The return at 0x10b28 has v0 = one of 0x0, 0x1.
- `etoh` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x10bb8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x10bb8-0x10cf0 (312 bytes).
  It occupies 312 bytes.
  The `lbu` at 0x10bb8 loads 1 byte from a0 (arg0 at entry) +0x0.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10c04, `lbu` at 0x10c88.
  The `sb` at 0x10c84 stores 1 byte to sym(flash_env_seg) +0xf7.
  The `beq` branch at 0x10bc0 targets 0x10ce8, is taken when v0(=[a0]:1) == 0, and falls through when v0(=[a0]:1) != 0.
  The `beq` branch at 0x10bd4 targets 0x10cbc, is taken when a6(=0x3a) == v0(?), and falls through when a6(=0x3a) != v0(?).
  The `bne` branch at 0x10be0 targets 0x10bf0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x10bec targets 0x10c04, is taken when v0(?) < 0x67 (signed), and falls through when v0(?) >= 0x67 (signed).
  The `bne` branch at 0x10bf4 targets 0x10cc4, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x10bfc targets 0x10ccc, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x10c24 targets 0x10c34, is taken when a6(?) < 0x61 (signed), and falls through when a6(?) >= 0x61 (signed).
  The `bne` branch at 0x10c2c targets 0x10c44, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `bne` branch at 0x10c34 targets 0x10cac, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x10c3c targets 0x10cd4, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x10c44 targets 0x10cdc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x10c4c targets 0x10c5c, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0x10c54 targets 0x10c60, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `bne` branch at 0x10c60 targets 0x10c7c, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x10c68 targets 0x10c78, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x10c70 targets 0x10c80 and is always taken.
  The `bne` branch at 0x10c8c targets 0x10bd0, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x10c9c targets 0x10cb4, is taken when a2(?) == t9(=0x6), and falls through when a2(?) != t9(=0x6).
  The `beq` branch at 0x10cbc targets 0x10c88 and is always taken.
  The `beq` branch at 0x10cc4 targets 0x10cb0 and is always taken.
  The `beq` branch at 0x10ccc targets 0x10cb0 and is always taken.
  The `beq` branch at 0x10cd4 targets 0x10cb0 and is always taken.
  The `beq` branch at 0x10ce8 targets 0x10ca4 and is always taken.
  The return at 0x10ca4 has v0 = 0x0.
  The return at 0x10cb4 has v0 = one of sym(.sbss)+248, 0x0.
  The return at 0x10ce0 has v0 = 0x0.
- `getsysid` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x10cf0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x10cf0-0x10d40 (80 bytes).
  It occupies 80 bytes.
  The `sw` at 0x10cf4 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `sdl` at 0x10cf8 stores 8 bytes to a0 (arg0 at entry) +0x4.
  The `sdr` at 0x10cfc stores 8 bytes to a0 (arg0 at entry) +0xb.
  The `sdl` at 0x10d00 stores 8 bytes to a0 (arg0 at entry) +0xc.
  The `sdr` at 0x10d04 stores 8 bytes to a0 (arg0 at entry) +0x13.
  The `sdl` at 0x10d08 stores 8 bytes to a0 (arg0 at entry) +0x14.
  The `sdr` at 0x10d0c stores 8 bytes to a0 (arg0 at entry) +0x1b.
  The `sdl` at 0x10d10 stores 8 bytes to a0 (arg0 at entry) +0x1c.
  The `sdr` at 0x10d14 stores 8 bytes to a0 (arg0 at entry) +0x23.
  The `sdl` at 0x10d18 stores 8 bytes to a0 (arg0 at entry) +0x24.
  The `sdr` at 0x10d1c stores 8 bytes to a0 (arg0 at entry) +0x2b.
  The `sdl` at 0x10d20 stores 8 bytes to a0 (arg0 at entry) +0x2c.
  The `sdr` at 0x10d24 stores 8 bytes to a0 (arg0 at entry) +0x33.
  The `sdl` at 0x10d28 stores 8 bytes to a0 (arg0 at entry) +0x34.
  The `sdr` at 0x10d2c stores 8 bytes to a0 (arg0 at entry) +0x3b.
  The `swl` at 0x10d30 stores 4 bytes to a0 (arg0 at entry) +0x3c.
  The `swr` at 0x10d3c stores 4 bytes to a0 (arg0 at entry) +0x3f.
  The return at 0x10d38 has v0 = 0x0.
- `pg_setcachable` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x10d84 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x10d84-0x10df0 (108 bytes).
  It occupies 108 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x10d88, `lw` at 0x10db8.
  2 such `ll` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `ll` at 0x10d94, `ll` at 0x10dc4.
  2 such `sc` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `sc` at 0x10da4, `sc` at 0x10dd4.
  The `bne` branch at 0x10d98 targets 0x10db0, is taken when at(=[a0]) != v0(=[a0]), and falls through when at(=[a0]) == v0(=[a0]).
  The `beql` branch at 0x10da8 targets 0x10d94, is taken when at(?) == 0, and falls through when at(?) != 0; its branch-likely delay slot `nop` at 0x10dac runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x10db0 targets 0x10de8, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x10dc8 targets 0x10de0, is taken when a1(=[a0]) != a3(=[a0]), and falls through when a1(=[a0]) == a3(=[a0]).
  The `beql` branch at 0x10dd8 targets 0x10dc4, is taken when a1(?) == 0, and falls through when a1(?) != 0; its branch-likely delay slot `nop` at 0x10ddc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x10de0 targets 0x10d88, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The return at 0x10de8 has v0 = [a0].
- `reset_leds` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x10df8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x10df8-0x10e24 (44 bytes).
  It occupies 44 bytes.
  The `ld` at 0x10e00 loads 8 bytes from abs 0xffffffffbf310008.
  The `sd` at 0x10e14 stores 8 bytes to abs 0xffffffffbf310008.
  The `jal` at 0x10e10 calls set_leds with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10e1c has v0 = ret(set_leds).
- `sys_setled` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x10e24 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x10e24-0x10e40 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x10e2c calls set_leds with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10e38 has v0 = ret(set_leds).
- `bump_leds` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x10e40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x10e40-0x10eac (108 bytes).
  It occupies 108 bytes.
  The `ld` at 0x10e60 loads 8 bytes from abs 0xffffffffbf310008.
  The `jal` at 0x10e80 calls set_leds with a0=0x0, a1=[sym(last_bump_time)], a2=[0xffffffffbf310008]:8, a3=[sym(time)], a4=[sym(do_bump_leds)].
  The `jal` at 0x10e94 calls set_leds with a0=?, a1=[sym(last_bump_time)], a2=[0xffffffffbf310008]:8, a3=[sym(time)], a4=[sym(do_bump_leds)].
  The `bne` branch at 0x10e44 targets 0x10e6c, is taken when at(=[sym(power_off_flag)]) != 0, and falls through when at(=[sym(power_off_flag)]) == 0.
  The `beq` branch at 0x10e5c targets 0x10e74, is taken when a4(=[sym(do_bump_leds)]) == 0, and falls through when a4(=[sym(do_bump_leds)]) != 0.
  The `bne` branch at 0x10e64 targets 0x10e90, is taken when a3(=[sym(time)]) != a1(=[sym(last_bump_time)]), and falls through when a3(=[sym(time)]) == a1(=[sym(last_bump_time)]).
  The `bne` branch at 0x10e78 targets 0x10e6c, is taken when (a2(=[0xffffffffbf310008]:8) & 0x10) != 0, and falls through when (a2(=[0xffffffffbf310008]:8) & 0x10) == 0.
  The `beq` branch at 0x10e88 targets 0x10e6c and is always taken.
  The `beq` branch at 0x10ea4 targets 0x10e6c and is always taken.
  The return at 0x10e6c has v0 = one of ?, ret(set_leds).
- `set_leds` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x10eac (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x10eac-0x10ee0 (52 bytes).
  It occupies 52 bytes.
  The `ld` at 0x10eb4 loads 8 bytes from abs 0xffffffffbf310008.
  The `sd` at 0x10ed0 stores 8 bytes to abs 0xffffffffbf310008.
  The `beq` branch at 0x10eb8 targets 0x10ed4, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10ed8 targets 0x10ec4 and is always taken.
  The return at 0x10ecc has v0 = ?.
- `get_except_norm` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x10ee0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x10ee0-0x10eec (12 bytes).
  It occupies 12 bytes.
  The return at 0x10ee4 has v0 = sym(exception).
- `cpu_isvalid` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x10eec (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x10eec-0x10f30 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10f10 loads 4 bytes from (sym(pdaindr) + (a0 << 0x3)) +0x0.
  The `bltz` branch at 0x10ef0 targets 0x10f24, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0x10f00 targets 0x10f24, is taken when a0 >= v0(=[sym(maxcpus)]) (signed), and falls through when a0 < v0(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x10f14 targets 0x10f28, is taken when v0(=[(sym(pdaindr) + (a0 << 0x3))]) == v1(=-0x1), and falls through when v0(=[(sym(pdaindr) + (a0 << 0x3))]) != v1(=-0x1).
  The return at 0x10f1c has v0 = 0x1.
  The return at 0x10f28 has v0 = 0x0.
- `debug_stop_all_cpus` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x10f30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x10f30-0x10f38 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10f30 has v0 = ?.
- `pmem_getfirstclick` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x10f38 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x10f38-0x10f40 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10f38 has v0 = 0x0.
- `node_getfirstfree` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x10f40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x10f40-0x10f48 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10f40 has v0 = 0x0.
- `node_getmaxclick` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x10f48 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x10f48-0x10f74 (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10f54 targets 0x10f68, is taken when a3(=[sym(seg1_maxmem)]) == 0, and falls through when a3(=[sym(seg1_maxmem)]) != 0.
  The return at 0x10f60 has v0 = [sym(seg1_maxmem)]+327679.
  The return at 0x10f6c has v0 = [sym(memsize)]-1.
- `addr_to_bank` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x110e8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x110e8-0x11104 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x110f0 calls .text with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x110fc has v0 = ret(.text).
- `cpu_waitforreset` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1121c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1121c-0x112e0 (196 bytes).
  It occupies 196 bytes.
  2 such `lbu` accesses load 1 byte from abs 0xffffffffbf3a0a07, including `lbu` at 0x1126c, `lbu` at 0x11294.
  2 such `sb` accesses store 1 byte to abs 0xffffffffbf3a0a07, including `sb` at 0x11278, `sb` at 0x1129c.
  The `lbu` at 0x1127c loads 1 byte from abs 0xffffffffbf3a4a07.
  The `ld` at 0x112b0 loads 8 bytes from abs 0xffffffffbf310010.
  The `lbu` at 0x112c0 loads 1 byte from abs 0xffffffffbf3a0c07.
  The `jal` at 0x11238 calls flash_write_env with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x11274 calls flushbus with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1128c calls cpu_powerdown with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x112a0 calls splx with a0=ret(spl7), a1=?, a2=?, a3=?.
  The `jal` at 0x112a8 calls spl7 with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x112d0 calls cmn_err with a0=0x4, a1=sym(.rodata)+15792, a2=?, a3=?.
  The `beq` branch at 0x11264 targets 0x112a8 and is always taken.
  The `beq` branch at 0x11284 targets 0x11294, is taken when (t9(=[0xffffffffbf3a4a07]:1) & 0x1) == 0, and falls through when (t9(=[0xffffffffbf3a4a07]:1) & 0x1) != 0.
  The `beq` branch at 0x112b8 targets 0x112a0, is taken when (at(=[0xffffffffbf310010]:8) & 0x100) == 0, and falls through when (at(=[0xffffffffbf310010]:8) & 0x100) != 0.
  The `bne` branch at 0x112c8 targets 0x1126c, is taken when (v0(=[0xffffffffbf3a0c07]:1) & 0x80) != 0, and falls through when (v0(=[0xffffffffbf3a0c07]:1) & 0x80) == 0.
  The `beq` branch at 0x112d8 targets 0x1126c and is always taken.
- `power_dump` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x112e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x112e0-0x11410 (304 bytes).
  It occupies 304 bytes.
  The `ld` at 0x1130c loads 8 bytes from abs 0xffffffffbf310010.
  The `jal` at 0x112f0 calls splprof with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x11328 calls us_delay with a0=0x7a120, a1=?, a2=?, a3=?.
  The `jal` at 0x11338 calls pciio_pio_read8 with a0=0xffffffffbf3a0a07, a1=?, a2=?, a3=?.
  The `jal` at 0x11348 calls pciio_pio_write8 with a0=?, a1=0xffffffffbf3a0a07, a2=?, a3=?.
  The `jal` at 0x11350 calls flushbus with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x11360 calls pciio_pio_read8 with a0=0xffffffffbf3a4a07, a1=?, a2=?, a3=?.
  The `jal` at 0x1136c calls pciio_pio_read8 with a0=0xffffffffbf3a4a07, a1=?, a2=?, a3=?.
  The `jal` at 0x11380 calls pciio_pio_write8 with a0=?, a1=0xffffffffbf3a4a07, a2=?, a3=?.
  The `jal` at 0x11388 calls pciio_pio_read8 with a0=0xffffffffbf3a0a07, a1=?, a2=?, a3=?.
  The `jal` at 0x1139c calls pciio_pio_write8 with a0=?, a1=0xffffffffbf3a0a07, a2=?, a3=?.
  The `jal` at 0x113a4 calls flushbus with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x113c8 calls cmn_err_tag with a0=0x3d, a1=0x0, a2=sym(.rodata)+15792, a3=sym(.rodata)+15792.
  The `jal` at 0x113d0 calls splx with a0=ret(splprof), a1=?, a2=?, a3=?.
  The `jal` at 0x11400 calls splx with a0=ret(splprof), a1=?, a2=?, a3=?.
  The `beq` branch at 0x11304 targets 0x11318, is taken when s2(=a0) == 0, and falls through when s2(=a0) != 0.
  The `beq` branch at 0x11314 targets 0x11400, is taken when (at(=[0xffffffffbf310010]:8) & 0x100) == 0, and falls through when (at(=[0xffffffffbf310010]:8) & 0x100) != 0.
  The `beq` branch at 0x113ac targets 0x113f4, is taken when s2(=a0) == 0, and falls through when s2(=a0) != 0.
  The `beq` branch at 0x113f8 targets 0x113c0 and is always taken.
  The `beq` branch at 0x11408 targets 0x113dc and is always taken.
  The return at 0x113ec has v0 = ret(splx).
- `powerintr` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x11410 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x11410-0x115e8 (472 bytes).
  It occupies 472 bytes.
  The `ld` at 0x11414 loads 8 bytes from abs 0xffffffffbf310010.
  The `lbu` at 0x11444 loads 1 byte from abs 0xffffffffbf3a0c07.
  The `jal` at 0x11438 calls power_dump with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1145c calls pciio_pio_read8 with a0=0xffffffffbf3a0a07, a1=?, a2=?, a3=?.
  The `jal` at 0x1146c calls pciio_pio_write8 with a0=?, a1=0xffffffffbf3a0a07, a2=?, a3=?.
  The `jal` at 0x11474 calls flushbus with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x11484 calls pciio_pio_read8 with a0=0xffffffffbf3a4a07, a1=?, a2=?, a3=?.
  The `jal` at 0x11490 calls pciio_pio_read8 with a0=0xffffffffbf3a4a07, a1=?, a2=?, a3=?.
  The `jal` at 0x114a4 calls pciio_pio_write8 with a0=?, a1=0xffffffffbf3a4a07, a2=?, a3=?.
  The `jal` at 0x114b0 calls pciio_pio_read8 with a0=0xffffffffbf3a0a07, a1=?, a2=?, a3=?.
  The `jal` at 0x114c4 calls pciio_pio_write8 with a0=?, a1=0xffffffffbf3a0a07, a2=?, a3=?.
  The `jal` at 0x114cc calls flushbus with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x11508 calls .text with a0=0x3, a1=0x1, a2=?, a3=?.
  The `jal` at 0x11524 calls sigtopid with a0=0x1, a1=0x2, a2=0x12, a3=0x0, a4=0x0, a5=0x0.
  The `jal` at 0x1154c calls timeout with a0=sym(inittodr+268), a1=0x0, a2=?, a3=[sym(clean_shutdown_time)].
  The `jal` at 0x1155c calls set_autopoweron with a0=?, a1=?, a2=?, a3=[sym(lbolt)]+100.
  The `jal` at 0x11578 calls cmn_err with a0=0x4, a1=sym(.rodata)+15792, a2=?, a3=?.
  The `jal` at 0x11594 calls cmn_err with a0=0x4, a1=sym(.rodata)+15792, a2=?, a3=?.
  The `jal` at 0x115ac calls cmn_err with a0=0x4, a1=sym(.rodata)+15792, a2=ret(pciio_pio_read8), a3=?.
  The `jal` at 0x115bc calls us_delay with a0=0x2710, a1=0x1, a2=?, a3=?.
  The `jal` at 0x115d0 calls cmn_err with a0=0x5, a1=sym(.rodata)+15792, a2=?, a3=?.
  The `jal` at 0x115d8 calls cpu_powerdown with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x11428 targets 0x114f8, is taken when (at(=[0xffffffffbf310010]:8) & 0x100) == 0, and falls through when (at(=[0xffffffffbf310010]:8) & 0x100) != 0.
  The `beq` branch at 0x11430 targets 0x11444, is taken when v0(=[sym(power_button_changed_to_crash_dump)]) == 0, and falls through when v0(=[sym(power_button_changed_to_crash_dump)]) != 0.
  The `beq` branch at 0x1144c targets 0x1156c, is taken when (v0(=[0xffffffffbf3a0c07]:1) & 0x80) == 0, and falls through when (v0(=[0xffffffffbf3a0c07]:1) & 0x80) != 0.
  The `beq` branch at 0x114dc targets 0x11588, is taken when (s2(=ret(pciio_pio_read8)) & 0x1) == 0, and falls through when (s2(=ret(pciio_pio_read8)) & 0x1) != 0.
  The `beq` branch at 0x114e8 targets 0x11508, is taken when a0(=[sym(.sbss)+260]) == 0, and falls through when a0(=[sym(.sbss)+260]) != 0.
  The `bne` branch at 0x114f4 targets 0x115bc, is taken when a0(=[sym(.sbss)+260]) < v0(=[sym(lbolt)]) (signed), and falls through when a0(=[sym(.sbss)+260]) >= v0(=[sym(lbolt)]) (signed).
  The `beq` branch at 0x11564 targets 0x114fc and is always taken.
  The `beq` branch at 0x11580 targets 0x11454 and is always taken.
  The `beq` branch at 0x115b4 targets 0x114fc and is always taken.
  The `beq` branch at 0x115e0 targets 0x114fc and is always taken.
  The return at 0x11500 has v0 = one of [sym(lbolt)], [sym(power_button_changed_to_crash_dump)], ret(set_autopoweron), ret(cmn_err), ret(cpu_powerdown).
- `readadapters` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x115e8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x115e8-0x11620 (56 bytes).
  It occupies 56 bytes.
  The `beq` branch at 0x115f4 targets 0x1160c, is taken when a0 == at(=0x3), and falls through when a0 != at(=0x3).
  The `beq` branch at 0x115fc targets 0x1160c, is taken when a0 == a3(=0x4), and falls through when a0 != a3(=0x4).
  The `beq` branch at 0x11604 targets 0x11614, is taken when a0 == a4(=0xa), and falls through when a0 != a4(=0xa).
  The return at 0x1160c has v0 = one of 0x0, 0x1.
  The return at 0x11618 has v0 = 0x1.
- `cpuboard` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x11620 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x11620-0x11628 (8 bytes).
  It occupies 8 bytes.
  The return at 0x11620 has v0 = 0x12.
- `fp_find` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x11628 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x11628-0x11670 (72 bytes).
  It occupies 72 bytes.
  2 such `sw` accesses store 4 bytes to abs 0xffffffffffffa1d4, including `sw` at 0x1164c, `sw` at 0x1166c.
  The `jal` at 0x11630 calls get_fpc_irr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x11648 targets 0x11658, is taken when at(?) == v1(=0x28), and falls through when at(?) != v1(=0x28).
  The `beq` branch at 0x11668 targets 0x11650 and is always taken.
  The return at 0x11650 has v0 = ret(get_fpc_irr).
- `fp_init` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x11670 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x11670-0x1168c (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x11678 calls set_fpc_csr with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x11684 has v0 = ret(set_fpc_csr).
- `dprintf` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1168c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1168c-0x117c8 (316 bytes).
  It occupies 316 bytes.
  The `lw` at 0x11694 loads 4 bytes from abs 0xffffffffa0001010.
  The `lw` at 0x116c0 loads 4 bytes from [0xffffffffa0001010] +0xc.
  The `jalr` at 0x11728 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1173c calls cn_is_inited with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x117b8 calls cmn_err with a0=0x6, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a3 at entry (arg3), a5=a4 at entry (arg4), a6=a5 at entry (arg5), a7=a6 at entry (arg6).
  The `beq` branch at 0x116b8 targets 0x1173c, is taken when t1(=[0xffffffffa0001010]) == 0, and falls through when t1(=[0xffffffffa0001010]) != 0.
  The `beq` branch at 0x116c4 targets 0x1173c, is taken when t2(=[[0xffffffffa0001010]+12]) == 0, and falls through when t2(=[[0xffffffffa0001010]+12]) != 0.
  The `beq` branch at 0x11744 targets 0x11734, is taken when v0(=ret(cn_is_inited)) == 0, and falls through when v0(=ret(cn_is_inited)) != 0.
  The `beq` branch at 0x117c0 targets 0x11734 and is always taken.
  The return at 0x11734 has v0 = one of ret(?), ret(cn_is_inited), ret(cmn_err).
- `tfi_save` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x118f4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x118f4-0x1192c (56 bytes).
  It occupies 56 bytes.
  11 such `sd` accesses store 8 bytes to ?, including `sd` at 0x118f4, `sd` at 0x118f8, `sd` at 0x11904.
  The return at 0x11924 has v0 = ?.
- `tfi_restore` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1192c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1192c-0x11964 (56 bytes).
  It occupies 56 bytes.
  11 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1192c, `ld` at 0x11930, `ld` at 0x11934.
  The return at 0x1195c has v0 = ?.
- `assbuffer` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x11964 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x11964-0x11968 (4 bytes).
  It occupies 4 bytes.
- `assfail` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x11968 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x11968-0x11b5c (500 bytes).
  It occupies 500 bytes.
  The `sd` at 0x11974 stores 8 bytes to sym(_assregs) +0x8.
  The `lw` at 0x11980 loads 4 bytes from sym(panic_cpu) +0x0.
  The `lh` at 0x11990 loads 2 bytes from abs 0xffffffffffffa190.
  The `sw` at 0x1199c stores 4 bytes to sym(panic_cpu) +0x0.
  The `sd` at 0x119a8 stores 8 bytes to sym(_assregs) +0xd8.
  2 such `sd` accesses store 8 bytes to sym(_assregs) +0xf8, including `sd` at 0x119b8, `sd` at 0x11b34.
  The `sd` at 0x119c4 stores 8 bytes to sym(_assregs) +0xe0.
  The `sd` at 0x119d0 stores 8 bytes to sym(_assregs) +0x10.
  The `sd` at 0x119dc stores 8 bytes to sym(_assregs) +0x30.
  The `sd` at 0x119e8 stores 8 bytes to sym(_assregs) +0x38.
  The `sd` at 0x119f4 stores 8 bytes to sym(_assregs) +0x40.
  The `sd` at 0x11a00 stores 8 bytes to sym(_assregs) +0x48.
  The `sd` at 0x11a0c stores 8 bytes to sym(_assregs) +0x50.
  The `sd` at 0x11a18 stores 8 bytes to sym(_assregs) +0x58.
  The `sd` at 0x11a24 stores 8 bytes to sym(_assregs) +0x60.
  The `sd` at 0x11a30 stores 8 bytes to sym(_assregs) +0x68.
  The `sd` at 0x11a3c stores 8 bytes to sym(_assregs) +0x70.
  The `sd` at 0x11a48 stores 8 bytes to sym(_assregs) +0x78.
  The `sd` at 0x11a54 stores 8 bytes to sym(_assregs) +0x80.
  The `sd` at 0x11a60 stores 8 bytes to sym(_assregs) +0x88.
  The `sd` at 0x11a6c stores 8 bytes to sym(_assregs) +0x90.
  The `sd` at 0x11a78 stores 8 bytes to sym(_assregs) +0x98.
  The `sd` at 0x11a84 stores 8 bytes to sym(_assregs) +0xa0.
  The `sd` at 0x11a90 stores 8 bytes to sym(_assregs) +0xa8.
  The `sd` at 0x11a9c stores 8 bytes to sym(_assregs) +0xb0.
  The `sd` at 0x11aa8 stores 8 bytes to sym(_assregs) +0xb8.
  The `sd` at 0x11ab4 stores 8 bytes to sym(_assregs) +0xc0.
  The `sd` at 0x11ac0 stores 8 bytes to sym(_assregs) +0xc8.
  The `sd` at 0x11acc stores 8 bytes to sym(_assregs) +0xd0.
  The `sd` at 0x11ad8 stores 8 bytes to sym(_assregs) +0xe8.
  The `sd` at 0x11ae4 stores 8 bytes to sym(_assregs) +0xf0.
  The `sd` at 0x11af4 stores 8 bytes to sym(_assregs) +0x100.
  The `sd` at 0x11b04 stores 8 bytes to sym(_assregs) +0x108.
  The `sd` at 0x11b14 stores 8 bytes to sym(_assregs) +0x118.
  The `sd` at 0x11b24 stores 8 bytes to sym(_assregs) +0x110.
  The `sd` at 0x11b44 stores 8 bytes to sym(_assregs) +0x120.
  The `sd` at 0x11b50 stores 8 bytes to sym(_assregs) +0x160.
  Calls _assfail via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x11b54).
  The `bne` branch at 0x11988 targets 0x11b54, is taken when v0(=[sym(panic_cpu)]) != at(=-0x1), and falls through when v0(=[sym(panic_cpu)]) == at(=-0x1).
- `getsr` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x11b5c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x11b5c-0x11b68 (12 bytes).
  It occupies 12 bytes.
  The return at 0x11b60 has v0 = ?.
- `setsr` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x11b68 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x11b68-0x11b8c (36 bytes).
  It occupies 36 bytes.
  The return at 0x11b84 has v0 = ?.
- `getpc` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x11b8c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x11b8c-0x11b94 (8 bytes).
  It occupies 8 bytes.
  The return at 0x11b8c has v0 = ra.
- `getsp` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x11b94 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x11b94-0x11b9c (8 bytes).
  It occupies 8 bytes.
  The return at 0x11b94 has v0 = sp.
- `getpcsp` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x11b9c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x11b9c-0x11ba8 (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0x11b9c stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `sw` at 0x11ba4 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The return at 0x11ba0 has v0 = ?.
- `getgp` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x11ba8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x11ba8-0x11bb0 (8 bytes).
  It occupies 8 bytes.
  The return at 0x11ba8 has v0 = gp.
- `getcause` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x11bb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x11bb0-0x11bbc (12 bytes).
  It occupies 12 bytes.
  The return at 0x11bb4 has v0 = ?.
- `setcause` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x11bbc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x11bbc-0x11bc8 (12 bytes).
  It occupies 12 bytes.
  The return at 0x11bc0 has v0 = ?.
- `getbadvaddr` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x11bc8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x11bc8-0x11be4 (28 bytes).
  It occupies 28 bytes.
  The return at 0x11bdc has v0 = ?.
- `get_sr` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x11be4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x11be4-0x11c00 (28 bytes).
  It occupies 28 bytes.
  The return at 0x11bf8 has v0 = ?.
- `set_sr` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x11c00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x11c00-0x11c1c (28 bytes).
  It occupies 28 bytes.
  The return at 0x11c14 has v0 = ?.
- `get_lladdr` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x11c1c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x11c1c-0x11c28 (12 bytes).
  It occupies 12 bytes.
  The return at 0x11c20 has v0 = ?.
- `set_lladdr` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x11c28 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x11c28-0x11c34 (12 bytes).
  It occupies 12 bytes.
  The return at 0x11c2c has v0 = ?.
- `do_sync_instruction` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x11c34 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x11c34-0x11c40 (12 bytes).
  It occupies 12 bytes.
  The return at 0x11c38 has v0 = ?.
- `siron` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x11c40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x11c40-0x11c88 (72 bytes).
  It occupies 72 bytes.
  The return at 0x11c80 has v0 = ?.
- `siroff` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x11c88 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x11c88-0x11ccc (68 bytes).
  It occupies 68 bytes.
  The return at 0x11cc4 has v0 = ?.
- `ip26_enable_ucmem` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x11d08 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x11d08-0x11d10 (8 bytes).
  It occupies 8 bytes.
  The return at 0x11d08 has v0 = ?.
- `exception_endfast` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x11e08 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x11e08-0x11e90 (136 bytes).
  It occupies 136 bytes.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x11e20, `lw` at 0x11e54, `lw` at 0x11e78.
  The `lw` at 0x11e84 loads 4 bytes from sym(kernelbp) +0x0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x11e58).
  The `beq` branch at 0x11e14 targets 0x11e60, is taken when (k0(?) & 0x18) == 0, and falls through when (k0(?) & 0x18) != 0.
  The `beq` branch at 0x11e30 targets 0x11de8, is taken when (k1(?) & 0x200) == 0, and falls through when (k1(?) & 0x200) != 0.
  The `beq` branch at 0x11e40 targets 0x11de8, is taken when k1(?) >= 0xc (signed), and falls through when k1(?) < 0xc (signed).
  The `bgez` branch at 0x11e68 targets 0x11e74, is taken when k0(?) >= 0 (signed), and falls through when k0(?) < 0 (signed).
  The `bne` branch at 0x11e88 targets 0x11de8, is taken when at(=[sym(kernelbp)]) != k0(?), and falls through when at(=[sym(kernelbp)]) == k0(?).
- `handle_watch` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x11e90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x11e90-0x11eb8 (40 bytes).
  It occupies 40 bytes.
  The `lw` at 0x11e98 loads 4 bytes from abs 0xffffffff80001010.
  The `lw` at 0x11ea4 loads 4 bytes from [0xffffffff80001010] +0x4.
  The `ld` at 0x11eac loads 8 bytes from abs 0xffffffffffffa028.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x11eb0).
  The `beq` branch at 0x11e9c targets 0x11de8, is taken when at(=[0xffffffff80001010]) == 0, and falls through when at(=[0xffffffff80001010]) != 0.
  The `beq` branch at 0x11ea8 targets 0x11de8, is taken when at(=[[0xffffffff80001010]+4]) == 0, and falls through when at(=[[0xffffffff80001010]+4]) != 0.
- `kmiss` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x11eb8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x11eb8-0x121f4 (828 bytes).
  It occupies 828 bytes.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x11efc, `lw` at 0x12044.
  2 such `lh` accesses load 2 bytes from [-0x5fec] +0x380, including `lh` at 0x11f10, `lh` at 0x12048.
  The `lw` at 0x11f1c loads 4 bytes from [-0x5fec] +0x378.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x11f28, `lw` at 0x11f88, `lw` at 0x12064.
  2 such `lw` accesses load 4 bytes from sym(kptbl) +0x0, including `lw` at 0x11f74, `lw` at 0x120d0.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffa028, including `ld` at 0x11fbc, `ld` at 0x11ff4, `ld` at 0x12144.
  2 such `lw` accesses load 4 bytes from sym(tlb_loop_cntr) +0x0, including `lw` at 0x11fc8, `lw` at 0x12118.
  2 such `sw` accesses store 4 bytes to sym(tlb_loop_cntr) +0x0, including `sw` at 0x11fd4, `sw` at 0x12124.
  The `lw` at 0x12054 loads 4 bytes from [-0x5fec] +0x37c.
  2 such `lw` accesses load 4 bytes from sym(syssegsz) +0x0, including `lw` at 0x120b0, `lw` at 0x1218c.
  The `sd` at 0x121b8 stores 8 bytes to sym(_assregs) +0x18.
  The `sd` at 0x121c4 stores 8 bytes to sym(_assregs) +0x20.
  The `sd` at 0x121d0 stores 8 bytes to sym(_assregs) +0x28.
  Calls longway via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1208c).
  Calls assfail via direct with a0=sym(.data)+20760, a1=sym(.data)+20798, a2=0x0, a3=a3 at entry (arg3) (`j` at 0x121e8).
  Calls longway via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x121ec).
  The `bne` branch at 0x11ec4 targets 0x121ec, is taken when k0(?) < at(=0xffffffffff600000) (unsigned), and falls through when k0(?) >= at(=0xffffffffff600000) (unsigned).
  The `bltz` branch at 0x11ed8 targets 0x12028, is taken when k0(?) < 0 (signed), and falls through when k0(?) >= 0 (signed).
  The `beq` branch at 0x11ee4 targets 0x12094, is taken when k0(?) >= at(=0x200000) (unsigned), and falls through when k0(?) < at(=0x200000) (unsigned).
  The `beq` branch at 0x11ef8 targets 0x121ec, is taken when (at(?) & 0x18) == 0, and falls through when (at(?) & 0x18) != 0.
  The `beq` branch at 0x11f08 targets 0x121ec, is taken when at(=[-0x5fec]) == 0, and falls through when at(=[-0x5fec]) != 0.
  The `beq` branch at 0x11f14 targets 0x1208c, is taken when k1(=[[-0x5fec]+896]:2) == 0, and falls through when k1(=[[-0x5fec]+896]:2) != 0.
  The `beql` branch at 0x11f2c targets 0x1207c, is taken when k0(?) == 0, and falls through when k0(?) != 0; its branch-likely delay slot `nop` at 0x11f30 runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0x11f40 targets 0x11f54, is taken when k1(?) >= 0 (signed), and falls through when k1(?) < 0 (signed).
  The `beq` branch at 0x11f4c targets 0x11f6c and is always taken.
  The `beq` branch at 0x11f9c targets 0x11fb0, is taken when (k0(?) & 0x1000) == 0, and falls through when (k0(?) & 0x1000) != 0.
  The `beq` branch at 0x11fa8 targets 0x11fb8 and is always taken.
  The `bgez` branch at 0x11fb8 targets 0x12010, is taken when k0(?) >= 0 (signed), and falls through when k0(?) < 0 (signed).
  The `beq` branch at 0x11fd8 targets 0x11ff4, is taken when (k0(=[sym(tlb_loop_cntr)]+1) & 0x7) == 0, and falls through when (k0(=[sym(tlb_loop_cntr)]+1) & 0x7) != 0.
  The `beq` branch at 0x11fe0 targets 0x11ff4, is taken when k0(?) == 0, and falls through when k0(?) != 0.
  The `beq` branch at 0x11fe8 targets 0x11ff4, is taken when k0(?) == 0, and falls through when k0(?) != 0.
  The `beq` branch at 0x12038 targets 0x121ec, is taken when (at(?) & 0x18) == 0, and falls through when (at(?) & 0x18) != 0.
  The `beq` branch at 0x1204c targets 0x1208c, is taken when k1(=[[-0x5fec]+896]:2) == 0, and falls through when k1(=[[-0x5fec]+896]:2) != 0.
  The `beq` branch at 0x1205c targets 0x1208c, is taken when k0(=[[-0x5fec]+892]) == 0, and falls through when k0(=[[-0x5fec]+892]) != 0.
  The `bne` branch at 0x1206c targets 0x11f34, is taken when k0(?) != 0, and falls through when k0(?) == 0.
  The `beq` branch at 0x12074 targets 0x1208c and is always taken.
  The `beq` branch at 0x12084 targets 0x12044 and is always taken.
  The `bltz` branch at 0x120a0 targets 0x121ec, is taken when k0(?) < 0 (signed), and falls through when k0(?) >= 0 (signed).
  The `beq` branch at 0x120c0 targets 0x12168, is taken when k0(?) >= at(=[sym(syssegsz)]) (unsigned), and falls through when k0(?) < at(=[sym(syssegsz)]) (unsigned).
  The `beq` branch at 0x120e8 targets 0x120f4, is taken when (k0(?) & 0x1000) == 0, and falls through when (k0(?) & 0x1000) != 0.
  The `beq` branch at 0x12128 targets 0x12144, is taken when (k0(=[sym(tlb_loop_cntr)]+1) & 0x7) == 0, and falls through when (k0(=[sym(tlb_loop_cntr)]+1) & 0x7) != 0.
  The `beq` branch at 0x12130 targets 0x12144, is taken when k0(?) == 0, and falls through when k0(?) != 0.
  The `beq` branch at 0x12138 targets 0x12144, is taken when k0(?) == 0, and falls through when k0(?) != 0.
  The `bgez` branch at 0x12174 targets 0x121ec, is taken when k0(?) >= 0 (signed), and falls through when k0(?) < 0 (signed).
  The `bltz` branch at 0x1217c targets 0x121ec, is taken when k0(?) < 0 (signed), and falls through when k0(?) >= 0 (signed).
  The `blez` branch at 0x1219c targets 0x121ec, is taken when at(?) <= 0 (signed), and falls through when at(?) > 0 (signed).
  The `beq` branch at 0x121a4 targets 0x121ac and is always taken.
- `kmissnxt` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x12094 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x12094-0x121a4 (272 bytes).
  It occupies 272 bytes.
  2 such `lw` accesses load 4 bytes from sym(syssegsz) +0x0, including `lw` at 0x120b0, `lw` at 0x1218c.
  The `lw` at 0x120d0 loads 4 bytes from sym(kptbl) +0x0.
  The `lw` at 0x12118 loads 4 bytes from sym(tlb_loop_cntr) +0x0.
  The `sw` at 0x12124 stores 4 bytes to sym(tlb_loop_cntr) +0x0.
  The `ld` at 0x12144 loads 8 bytes from abs 0xffffffffffffa028.
  The `bltz` branch at 0x120a0 targets 0x121ec, is taken when k0(?) < 0 (signed), and falls through when k0(?) >= 0 (signed).
  The `beq` branch at 0x120c0 targets 0x12168, is taken when k0(?) >= at(=[sym(syssegsz)]) (unsigned), and falls through when k0(?) < at(=[sym(syssegsz)]) (unsigned).
  The `beq` branch at 0x120e8 targets 0x120f4, is taken when (k0(?) & 0x1000) == 0, and falls through when (k0(?) & 0x1000) != 0.
  The `beq` branch at 0x12128 targets 0x12144, is taken when (k0(=[sym(tlb_loop_cntr)]+1) & 0x7) == 0, and falls through when (k0(=[sym(tlb_loop_cntr)]+1) & 0x7) != 0.
  The `beq` branch at 0x12130 targets 0x12144, is taken when k0(?) == 0, and falls through when k0(?) != 0.
  The `beq` branch at 0x12138 targets 0x12144, is taken when k0(?) == 0, and falls through when k0(?) != 0.
  The `bgez` branch at 0x12174 targets 0x121ec, is taken when k0(?) >= 0 (signed), and falls through when k0(?) < 0 (signed).
  The `bltz` branch at 0x1217c targets 0x121ec, is taken when k0(?) < 0 (signed), and falls through when k0(?) >= 0 (signed).
  The `blez` branch at 0x1219c targets 0x121ec, is taken when at(?) <= 0 (signed), and falls through when at(?) > 0 (signed).
- `kvmiss_hit` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x121a4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x121a4-0x122b4 (272 bytes).
  It occupies 272 bytes.
  The `sd` at 0x121b8 stores 8 bytes to sym(_assregs) +0x18.
  The `sd` at 0x121c4 stores 8 bytes to sym(_assregs) +0x20.
  The `sd` at 0x121d0 stores 8 bytes to sym(_assregs) +0x28.
  Calls assfail via direct with a0=sym(.data)+20760, a1=sym(.data)+20798, a2=0x0, a3=a3 at entry (arg3) (`j` at 0x121e8).
  The `beq` branch at 0x121a4 targets 0x121ac and is always taken.
  The instructions from 0x121f0 to 0x122b0 are not reached by any path from the entry, and their branches are not listed.
- `inittodr` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x122b4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x122b4-0x124ac (504 bytes).
  It occupies 504 bytes.
  The `jal` at 0x122c4 calls splprof with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x122d0 calls nested_spinlock with a0=sym(timelock), a1=?, a2=?, a3=?.
  The `jal` at 0x122d8 calls .text with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x122e0 calls rtodc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x122f0 calls settime with a0=ret(rtodc), a1=0x0, a2=?, a3=?.
  The `jal` at 0x12304 calls nested_spinunlock with a0=sym(timelock), a1=?, a2=?, a3=?.
  The `jal` at 0x1230c calls splx with a0=ret(splprof), a1=?, a2=?, a3=?.
  The `jal` at 0x12338 calls cmn_err_tag with a0=0x42, a1=0x4, a2=sym(.rodata)+16592, a3=?, a5=sym(.rodata)+8512.
  The `jal` at 0x12340 calls .text with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x12354 calls cmn_err_tag with a0=0x43, a1=0x4, a2=sym(.rodata)+16592, a3=?.
  The `jal` at 0x12360 calls nested_spinunlock with a0=sym(timelock), a1=?, a2=?, a3=?.
  The `jal` at 0x12368 calls splx with a0=ret(splprof), a1=?, a2=?, a3=?.
  The `jal` at 0x12388 calls .text with a0=ret(rtodc), a1=?, a2=?, a3=?.
  The `jal` at 0x12398 calls .text with a0=0x0, a1=sp-64, a2=?, a3=?.
  The `jal` at 0x123e0 calls cmn_err_tag with a0=0x3f, a1=0x4, a2=sym(.rodata)+16592, a3=?.
  The `jal` at 0x12400 calls cmn_err_tag with a0=0x41, a1=0x4, a2=sym(.rodata)+16592, a3=?, a5=0x20000.
  The `jal` at 0x1240c calls settime with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jal` at 0x12414 calls resettodr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1241c calls .text with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x12474 calls cmn_err_tag with a0=0x40, a1=0x4, a2=sym(.rodata)+16592, a3=?.
  The `jal` at 0x1247c calls .text with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x12494 calls .text with a0=0x1, a1=sp-64, a2=?, a3=?.
  The `beq` branch at 0x122fc targets 0x12388, is taken when at(=[sym(miniroot)]:1) == 0, and falls through when at(=[sym(miniroot)]:1) != 0.
  The `beq` branch at 0x12314 targets 0x12374 and is always taken.
  The `beq` branch at 0x12348 targets 0x1235c, is taken when v0(=ret(.text)) == 0, and falls through when v0(=ret(.text)) != 0.
  The `bne` branch at 0x123a8 targets 0x1248c, is taken when v0(?) != a0(?), and falls through when v0(?) == a0(?).
  The `beq` branch at 0x123c0 targets 0x123f0, is taken when s1(=ret(rtodc)) >= t8(=0x4000000) (unsigned), and falls through when s1(=ret(rtodc)) < t8(=0x4000000) (unsigned).
  The `beq` branch at 0x123c8 targets 0x12468, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x123e8 targets 0x12408 and is always taken.
  The `beq` branch at 0x123f0 targets 0x12428, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bltz` branch at 0x1243c targets 0x124a4, is taken when a3(?) < 0 (signed), and falls through when a3(?) >= 0 (signed).
  The `beq` branch at 0x12448 targets 0x12340, is taken when a0(=0x2a300) >= v0(?) (unsigned), and falls through when a0(=0x2a300) < v0(?) (unsigned).
  The `beq` branch at 0x12458 targets 0x1231c, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x12460 targets 0x1231c and is always taken.
  The `beq` branch at 0x12484 targets 0x12428 and is always taken.
  The `beq` branch at 0x1249c targets 0x123b4 and is always taken.
  The `beq` branch at 0x124a4 targets 0x12444 and is always taken.
  The return at 0x12380 has v0 = ret(splx).
- `resettodr` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x124ac (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x124ac-0x124c8 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x124b4 calls wtodc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x124c0 has v0 = ret(wtodc).
- `rtodc` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x124c8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x124c8-0x126dc (532 bytes).
  It occupies 532 bytes.
  The `lw` at 0x12630 loads 4 bytes from sym(.data) +0x5150.
  2 such `lw` accesses load 4 bytes from sym(.data) +0x5154, including `lw` at 0x12654, `lw` at 0x126c0.
  2 such `sw` accesses store 4 bytes to sym(.data) +0x5154, including `sw` at 0x126cc, `sw` at 0x126d8.
  The `jal` at 0x124d4 calls .text with a0=0x0, a1=sp-16, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x125f4 targets 0x126b8, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `beq` branch at 0x12628 targets 0x12650, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x12648 targets 0x12630, is taken when a5(?) >= a2(?) (unsigned), and falls through when a5(?) < a2(?) (unsigned).
  The `beq` branch at 0x12650 targets 0x126d0, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x1265c targets 0x126a8, is taken when a6(?) < 0x7b2 (unsigned), and falls through when a6(?) >= 0x7b2 (unsigned).
  The `beq` branch at 0x12668 targets 0x12674 and is always taken.
  The `bne` branch at 0x12670 targets 0x126a8, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x12684 targets 0x126b0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x12690 targets 0x126a8, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x12698 targets 0x12670, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x126a0 targets 0x12670 and is always taken.
  The `beq` branch at 0x126b0 targets 0x1268c and is always taken.
  The `beq` branch at 0x126c8 targets 0x125fc and is always taken.
  The `beq` branch at 0x126d4 targets 0x12658 and is always taken.
  The return at 0x126a8 has v0 = ?.
- `wtodc` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x126dc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x126dc-0x129e8 (780 bytes).
  It occupies 780 bytes.
  2 such `lw` accesses load 4 bytes from sym(.data) +0x5150, including `lw` at 0x1275c, `lw` at 0x12784.
  3 such `lw` accesses load 4 bytes from sym(.data) +0x5154, including `lw` at 0x1278c, `lw` at 0x127bc, `lw` at 0x129cc.
  2 such `sw` accesses store 4 bytes to sym(.data) +0x5154, including `sw` at 0x129d8, `sw` at 0x129e4.
  The `jal` at 0x126ec calls .text with a0=[sym(time)], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x12990 calls .text with a0=0x1, a1=sp-32, a2=?, a3=?, a7=0x64.
  The `jal` at 0x12998 calls .text with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1270c targets 0x1271c and is always taken.
  The `beq` branch at 0x1273c targets 0x129b0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x12744 targets 0x12714, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x1274c targets 0x129c8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x12774 targets 0x127b8, is taken when s0(?) < a7(?) (unsigned), and falls through when s0(?) >= a7(?) (unsigned).
  The `beq` branch at 0x127b0 targets 0x12784, is taken when s0(?) >= a7(?) (unsigned), and falls through when s0(?) < a7(?) (unsigned).
  The `beq` branch at 0x127b8 targets 0x129dc, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x127c8 targets 0x127f8, is taken when s0(?) < a2(=0x15180) (unsigned), and falls through when s0(?) >= a2(=0x15180) (unsigned).
  The `bne` branch at 0x127e0 targets 0x127f8, is taken when s0(=table(0xfffffffffffeae80)) < a2(=0x15180) (unsigned), and falls through when s0(=table(0xfffffffffffeae80)) >= a2(=0x15180) (unsigned).
  The `beq` branch at 0x127f0 targets 0x127d4, is taken when s0(=table(0xfffffffffffd5d00)) >= a2(=0x15180) (unsigned), and falls through when s0(=table(0xfffffffffffd5d00)) < a2(=0x15180) (unsigned).
  The `bne` branch at 0x127fc targets 0x1282c, is taken when s0(?) < 0xe10 (unsigned), and falls through when s0(?) >= 0xe10 (unsigned).
  The `bne` branch at 0x12814 targets 0x1282c, is taken when s0(?) < 0xe10 (unsigned), and falls through when s0(?) >= 0xe10 (unsigned).
  The `beq` branch at 0x12824 targets 0x12808, is taken when s0(?) >= 0xe10 (unsigned), and falls through when s0(?) < 0xe10 (unsigned).
  The `bne` branch at 0x12830 targets 0x12860, is taken when s0(?) < 0x3c (unsigned), and falls through when s0(?) >= 0x3c (unsigned).
  The `bne` branch at 0x12848 targets 0x12860, is taken when s0(?) < 0x3c (unsigned), and falls through when s0(?) >= 0x3c (unsigned).
  The `beq` branch at 0x12858 targets 0x1283c, is taken when s0(?) >= 0x3c (unsigned), and falls through when s0(?) < 0x3c (unsigned).
  The `bne` branch at 0x129b8 targets 0x1274c, is taken when s0(?) < t0(=0x1e28500) (signed), and falls through when s0(?) >= t0(=0x1e28500) (signed).
  The `beq` branch at 0x129c0 targets 0x12718 and is always taken.
  The `beq` branch at 0x129d4 targets 0x12754 and is always taken.
  The `beq` branch at 0x129e0 targets 0x127c0 and is always taken.
  The return at 0x129a8 has v0 = ret(.text).
- `read_dallas_nvram` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x12c28 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x12c28-0x12d00 (216 bytes).
  It occupies 216 bytes.
  The `sb` at 0x12ccc stores 1 byte to ?.
  The `jal` at 0x12c58 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x12c68 calls pciio_pio_read8 with a0=0xffffffffbf3a0a07, a1=?, a2=?, a3=?.
  The `jal` at 0x12c84 calls pciio_pio_write8 with a0=?, a1=0xffffffffbf3a0a07, a2=?, a3=?.
  The `jal` at 0x12cb4 calls pciio_pio_read8 with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x12cd8 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x12c44 targets 0x12cf8, is taken when at(=(a1 + a2)) >= 0x72 (signed), and falls through when at(=(a1 + a2)) < 0x72 (signed).
  The `blez` branch at 0x12c50 targets 0x12cf8, is taken when a1 <= 0 (signed), and falls through when a1 > 0 (signed).
  The `beq` branch at 0x12ca0 targets 0x12cd0, is taken when s1(=a2-1) == s3(=-0x1), and falls through when s1(=a2-1) != s3(=-0x1).
  The `bne` branch at 0x12cc8 targets 0x12cb4, is taken when s1(?) != s3(=-0x1), and falls through when s1(?) == s3(=-0x1).
  The `beq` branch at 0x12cf8 targets 0x12cec and is always taken.
  The return at 0x12cf0 has v0 = one of 0x0, 0x1.
- `write_dallas_nvram` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x12d00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x12d00-0x12dd8 (216 bytes).
  It occupies 216 bytes.
  The `lbu` at 0x12d8c loads 1 byte from ?.
  The `jal` at 0x12d30 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x12d40 calls pciio_pio_read8 with a0=0xffffffffbf3a0a07, a1=?, a2=?, a3=?.
  The `jal` at 0x12d5c calls pciio_pio_write8 with a0=?, a1=0xffffffffbf3a0a07, a2=?, a3=?.
  The `jal` at 0x12d90 calls pciio_pio_write8 with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x12db0 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x12d1c targets 0x12dd0, is taken when at(=(a1 + a2)) >= 0x72 (signed), and falls through when at(=(a1 + a2)) < 0x72 (signed).
  The `blez` branch at 0x12d28 targets 0x12dd0, is taken when a1 <= 0 (signed), and falls through when a1 > 0 (signed).
  The `beq` branch at 0x12d74 targets 0x12da8, is taken when s2(=a2-1) == s3(=-0x1), and falls through when s2(=a2-1) != s3(=-0x1).
  The `bne` branch at 0x12da0 targets 0x12d8c, is taken when s2(?) != s3(=-0x1), and falls through when s2(?) == s3(=-0x1).
  The `beq` branch at 0x12dd0 targets 0x12dc4 and is always taken.
  The return at 0x12dc8 has v0 = one of 0x0, 0x1.
- `set_autopoweron` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x12f20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x12f20-0x131d8 (696 bytes).
  It occupies 696 bytes.
  2 such `lw` accesses load 4 bytes from sym(.data) +0x5150, including `lw` at 0x12fa0, `lw` at 0x12fc0.
  3 such `lw` accesses load 4 bytes from sym(.data) +0x5154, including `lw` at 0x12fc8, `lw` at 0x12ff4, `lw` at 0x130f4.
  2 such `sw` accesses store 4 bytes to sym(.data) +0x5154, including `sw` at 0x13100, `sw` at 0x1310c.
  The `jal` at 0x12f44 calls .text with a0=[sym(autopoweron_alarm)], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1312c calls pciio_pio_write8 with a0=?, a1=0xffffffffbf3a0307, a2=?, a3=?.
  The `jal` at 0x13150 calls pciio_pio_write8 with a0=?, a1=0xffffffffbf3a0507, a2=?, a3=?.
  The `jal` at 0x13160 calls pciio_pio_read8 with a0=0xffffffffbf3a0a07, a1=?, a2=?, a3=?.
  The `jal` at 0x13174 calls pciio_pio_write8 with a0=?, a1=0xffffffffbf3a0a07, a2=?, a3=?.
  The `jal` at 0x13198 calls pciio_pio_write8 with a0=?, a1=0xffffffffbf3a4907, a2=?, a3=?.
  The `jal` at 0x131a8 calls pciio_pio_write8 with a0=0xc0, a1=0xffffffffbf3a0107, a2=?, a3=?.
  The `jal` at 0x131b8 calls pciio_pio_read8 with a0=0xffffffffbf3a4b07, a1=?, a2=?, a3=?.
  The `jal` at 0x131c8 calls pciio_pio_write8 with a0=?, a1=0xffffffffbf3a4b07, a2=?, a3=?.
  The `bne` branch at 0x12f3c targets 0x130bc, is taken when a0(=[sym(autopoweron_alarm)]) < at(=[sym(time)]) (unsigned), and falls through when a0(=[sym(autopoweron_alarm)]) >= at(=[sym(time)]) (unsigned).
  The `beq` branch at 0x12f5c targets 0x12f68 and is always taken.
  The `beq` branch at 0x12f8c targets 0x130d4, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x12f94 targets 0x12f64, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x12fb4 targets 0x12ff0, is taken when s0(?) < a5(?) (unsigned), and falls through when s0(?) >= a5(?) (unsigned).
  The `beq` branch at 0x12fe8 targets 0x12fc0, is taken when s0(?) >= a2(?) (unsigned), and falls through when s0(?) < a2(?) (unsigned).
  The `beq` branch at 0x12ff0 targets 0x13104, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x13008 targets 0x13038, is taken when s0(?) < a0(=0x15180) (unsigned), and falls through when s0(?) >= a0(=0x15180) (unsigned).
  The `bne` branch at 0x13020 targets 0x13038, is taken when s0(=table(0xfffffffffffeae80)) < a0(=0x15180) (unsigned), and falls through when s0(=table(0xfffffffffffeae80)) >= a0(=0x15180) (unsigned).
  The `beq` branch at 0x13030 targets 0x13014, is taken when s0(=table(0xfffffffffffd5d00)) >= a0(=0x15180) (unsigned), and falls through when s0(=table(0xfffffffffffd5d00)) < a0(=0x15180) (unsigned).
  The `bne` branch at 0x1303c targets 0x1306c, is taken when s0(?) < 0xe10 (unsigned), and falls through when s0(?) >= 0xe10 (unsigned).
  The `bne` branch at 0x13054 targets 0x1306c, is taken when s0(?) < 0xe10 (unsigned), and falls through when s0(?) >= 0xe10 (unsigned).
  The `beq` branch at 0x13064 targets 0x13048, is taken when s0(?) >= 0xe10 (unsigned), and falls through when s0(?) < 0xe10 (unsigned).
  The `bne` branch at 0x13074 targets 0x130ac, is taken when s0(?) < 0x3c (unsigned), and falls through when s0(?) >= 0x3c (unsigned).
  The `bne` branch at 0x1308c targets 0x130a0, is taken when s0(?) < 0x3c (unsigned), and falls through when s0(?) >= 0x3c (unsigned).
  The `beq` branch at 0x13098 targets 0x13080, is taken when s0(?) >= 0x3c (unsigned), and falls through when s0(?) < 0x3c (unsigned).
  The `beq` branch at 0x130a4 targets 0x130c0, is taken when a4(?) >= 0x3c (signed), and falls through when a4(?) < 0x3c (signed).
  The `beq` branch at 0x130ac targets 0x130c0, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x130b4 targets 0x13110, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x130dc targets 0x130ec, is taken when s0(?) < t0(=0x1e28500) (signed), and falls through when s0(?) >= t0(=0x1e28500) (signed).
  The `beq` branch at 0x130e4 targets 0x12f68 and is always taken.
  The `beq` branch at 0x130fc targets 0x12f98 and is always taken.
  The `beq` branch at 0x13108 targets 0x12ff8 and is always taken.
  The `beq` branch at 0x131d0 targets 0x130c0 and is always taken.
  The return at 0x130cc has v0 = one of ret(.text), ?, ret(pciio_pio_write8).
- `chktimedrift` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x132dc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x132dc-0x13330 (84 bytes).
  It occupies 84 bytes.
  The `jal` at 0x132e4 calls rtodc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x13320 calls doadjtime with a0=?, a1=?, a2=?, a3=?, a4=0xf4240.
  The `beq` branch at 0x132f8 targets 0x13310, is taken when a3(?) >= 0x3 (signed), and falls through when a3(?) < 0x3 (signed).
  The `bne` branch at 0x13300 targets 0x13310, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x13328 targets 0x13308 and is always taken.
  The return at 0x13308 has v0 = one of ret(rtodc), ret(doadjtime).
- `systrap` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x13380 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x13380-0x13598 (536 bytes).
  It occupies 536 bytes.
  The `lw` at 0x13394 loads 4 bytes from abs 0xffffffffffffa244.
  4 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x133c0, `lw` at 0x13488, `lw` at 0x13520.
  4 such `lw` accesses load 4 bytes from [-0x5fec] +0x280, including `lw` at 0x133c4, `lw` at 0x1348c, `lw` at 0x13524.
  The `sd` at 0x133cc stores 8 bytes to [[-0x5fec]+640] +0x228.
  The `sd` at 0x133d4 stores 8 bytes to [[-0x5fec]+640] +0x230.
  The `sd` at 0x133dc stores 8 bytes to [[-0x5fec]+640] +0x168.
  The `sd` at 0x133e0 stores 8 bytes to [[-0x5fec]+640] +0x170.
  The `sd` at 0x133e4 stores 8 bytes to [[-0x5fec]+640] +0x178.
  The `sd` at 0x133e8 stores 8 bytes to [[-0x5fec]+640] +0x180.
  The `sd` at 0x133ec stores 8 bytes to [[-0x5fec]+640] +0x188.
  The `sd` at 0x133f0 stores 8 bytes to [[-0x5fec]+640] +0x190.
  The `sd` at 0x133f4 stores 8 bytes to [[-0x5fec]+640] +0x198.
  The `sd` at 0x133f8 stores 8 bytes to [[-0x5fec]+640] +0x1a0.
  The `sd` at 0x13400 stores 8 bytes to [[-0x5fec]+640] +0x1c8.
  The `sd` at 0x13404 stores 8 bytes to [[-0x5fec]+640] +0x1d0.
  The `sd` at 0x13408 stores 8 bytes to [[-0x5fec]+640] +0x1d8.
  The `sd` at 0x1340c stores 8 bytes to [[-0x5fec]+640] +0x1e0.
  The `sd` at 0x13410 stores 8 bytes to [[-0x5fec]+640] +0x1e8.
  The `sd` at 0x13414 stores 8 bytes to [[-0x5fec]+640] +0x1f0.
  The `sd` at 0x13418 stores 8 bytes to [[-0x5fec]+640] +0x1f8.
  The `sd` at 0x1341c stores 8 bytes to [[-0x5fec]+640] +0x200.
  The `sd` at 0x13420 stores 8 bytes to [[-0x5fec]+640] +0x240.
  The `sd` at 0x1342c stores 8 bytes to [[-0x5fec]+640] +0x270.
  The `sd` at 0x13430 stores 8 bytes to [[-0x5fec]+640] +0x2b0.
  The `sd` at 0x13434 stores 8 bytes to [[-0x5fec]+640] +0x158.
  The `sd` at 0x13438 stores 8 bytes to [[-0x5fec]+640] +0x160.
  The `sd` at 0x1343c stores 8 bytes to [[-0x5fec]+640] +0x238.
  The `sd` at 0x13440 stores 8 bytes to [[-0x5fec]+640] +0x248.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffa018, including `lw` at 0x13448, `lw` at 0x1349c.
  2 such `ld` accesses load 8 bytes from [[-0x5fec]+640] +0x158, including `ld` at 0x13454, `ld` at 0x134a8.
  2 such `sb` accesses store 1 byte to abs 0xffffffffffffa03f, including `sb` at 0x1345c, `sb` at 0x134b4.
  The `ld` at 0x134ac loads 8 bytes from [[-0x5fec]+640] +0x160.
  The `ld` at 0x134b0 loads 8 bytes from [[-0x5fec]+640] +0x238.
  The `ld` at 0x134b8 loads 8 bytes from [[-0x5fec]+640] +0x228.
  The `ld` at 0x134bc loads 8 bytes from [[-0x5fec]+640] +0x1a0.
  The `ld` at 0x134c0 loads 8 bytes from [[-0x5fec]+640] +0x198.
  The `ld` at 0x134c4 loads 8 bytes from [[-0x5fec]+640] +0x190.
  The `ld` at 0x134c8 loads 8 bytes from [[-0x5fec]+640] +0x188.
  The `ld` at 0x134cc loads 8 bytes from [[-0x5fec]+640] +0x180.
  The `ld` at 0x134d0 loads 8 bytes from [[-0x5fec]+640] +0x178.
  The `ld` at 0x134d4 loads 8 bytes from [[-0x5fec]+640] +0x170.
  The `ld` at 0x134d8 loads 8 bytes from [[-0x5fec]+640] +0x168.
  The `ld` at 0x134e4 loads 8 bytes from [[-0x5fec]+640] +0x248.
  The `ld` at 0x134e8 loads 8 bytes from [[-0x5fec]+640] +0x270.
  The `ld` at 0x134ec loads 8 bytes from [[-0x5fec]+640] +0x1c8.
  The `ld` at 0x134f4 loads 8 bytes from [[-0x5fec]+640] +0x1d0.
  The `ld` at 0x134f8 loads 8 bytes from [[-0x5fec]+640] +0x1d8.
  The `ld` at 0x134fc loads 8 bytes from [[-0x5fec]+640] +0x1e0.
  The `ld` at 0x13504 loads 8 bytes from [[-0x5fec]+640] +0x1e8.
  The `ld` at 0x13508 loads 8 bytes from [[-0x5fec]+640] +0x1f0.
  The `ld` at 0x1350c loads 8 bytes from [[-0x5fec]+640] +0x1f8.
  The `ld` at 0x13510 loads 8 bytes from [[-0x5fec]+640] +0x200.
  The `ld` at 0x13514 loads 8 bytes from [[-0x5fec]+640] +0x240.
  The `ld` at 0x13518 loads 8 bytes from [[-0x5fec]+640] +0x230.
  The `lw` at 0x13528 loads 4 bytes from [[-0x5fec]+640] +0x2bc.
  The `lw` at 0x1352c loads 4 bytes from [[-0x5fec]+640] +0x2b8.
  The `lw` at 0x1354c loads 4 bytes from [[-0x5fec]+640] +0x2f0.
  The `jal` at 0x1344c calls ktimer_switch with a0=[-0x5fe8], a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1346c calls syscall with a0=[[[-0x5fec]+640]+344]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x134a0 calls ktimer_switch with a0=[-0x5fe8], a1=0x0, a2=?, a3=?.
  Calls _baduk via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x13588).
  Calls exception_exit via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x13590).
  The `beq` branch at 0x133b8 targets 0x13588, is taken when (k1(?) & 0x2) == 0, and falls through when (k1(?) & 0x2) != 0.
  The `bne` branch at 0x13494 targets 0x13590, is taken when v0(=ret(syscall)) != 0, and falls through when v0(=ret(syscall)) == 0.
- `VEC_syscall` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x13598 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x13598-0x135a8 (16 bytes).
  It occupies 16 bytes.
  The `jal` at 0x135a0 calls cmn_err with a0=0x0, a1=sym(.data)+20912, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
- `get_fpc_csr` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x135a8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x135a8-0x135d8 (48 bytes).
  It occupies 48 bytes.
  The return at 0x135d0 has v0 = ?.
- `set_fpc_csr` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x135d8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x135d8-0x13610 (56 bytes).
  It occupies 56 bytes.
  The return at 0x13608 has v0 = ?.
- `get_fpc_irr` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1362c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1362c-0x13664 (56 bytes).
  It occupies 56 bytes.
  2 such `sw` accesses store 4 bytes to abs 0xffffffffffffa1d8, including `sw` at 0x13638, `sw` at 0x13654.
  The return at 0x1365c has v0 = ?.
- `reviderror` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x13664 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x13664-0x13674 (16 bytes).
  It occupies 16 bytes.
  The return at 0x1366c has v0 = 0x0.
- `VEC_fpe` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x13674 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x13674-0x13710 (156 bytes).
  It occupies 156 bytes.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x136a4, `ld` at 0x136a8.
  The `lw` at 0x136ac loads 4 bytes from abs 0xffffffffffffa014.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x136b0, `lw` at 0x136bc.
  The `sw` at 0x136b8 stores 4 bytes to [-0x5fec] +0x350.
  The `sw` at 0x136c0 stores 4 bytes to [-0x5fec] +0x354.
  The `jal` at 0x1369c calls trap with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=s0 at entry, a3=a3 at entry (arg3).
  The `jal` at 0x136e8 calls fp_intr with a0=?, a1=?, a2=?, a3=?.
  Calls exception_exit via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x13708).
  The `bne` branch at 0x13678 targets 0x136a4, is taken when (s0 & 0x18) != 0, and falls through when (s0 & 0x18) == 0.
  The `bgez` branch at 0x136b4 targets 0x136c4, is taken when t0(?) >= 0 (signed), and falls through when t0(?) < 0 (signed).
- `orb_rmw` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x138e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x138e0-0x13920 (64 bytes).
  It occupies 64 bytes.
  The `lbu` at 0x13900 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0x1390c stores 1 byte to a0 (arg0 at entry) +0x0.
  The `jal` at 0x138f0 calls spl7 with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x13908 calls splx with a0=ret(spl7), a1=?, a2=?, a3=?.
  The return at 0x13918 has v0 = ret(splx).
- `orh_rmw` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x13920 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x13920-0x13964 (68 bytes).
  It occupies 68 bytes.
  The `lhu` at 0x13940 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0x13950 stores 2 bytes to a0 (arg0 at entry) +0x0.
  The `jal` at 0x13930 calls spl7 with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1394c calls splx with a0=ret(spl7), a1=?, a2=?, a3=?.
  The return at 0x1395c has v0 = ret(splx).
- `orw_rmw` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x13964 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x13964-0x139a4 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x13984 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0x13990 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `jal` at 0x13974 calls spl7 with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1398c calls splx with a0=ret(spl7), a1=?, a2=?, a3=?.
  The return at 0x1399c has v0 = ret(splx).
- `andb_rmw` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x139a4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x139a4-0x139e4 (64 bytes).
  It occupies 64 bytes.
  The `lbu` at 0x139c4 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0x139d0 stores 1 byte to a0 (arg0 at entry) +0x0.
  The `jal` at 0x139b4 calls spl7 with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x139cc calls splx with a0=ret(spl7), a1=?, a2=?, a3=?.
  The return at 0x139dc has v0 = ret(splx).
- `andh_rmw` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x139e4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x139e4-0x13a28 (68 bytes).
  It occupies 68 bytes.
  The `lhu` at 0x13a04 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0x13a14 stores 2 bytes to a0 (arg0 at entry) +0x0.
  The `jal` at 0x139f4 calls spl7 with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x13a10 calls splx with a0=ret(spl7), a1=?, a2=?, a3=?.
  The return at 0x13a20 has v0 = ret(splx).
- `andw_rmw` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x13a28 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x13a28-0x13a68 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x13a48 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0x13a54 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `jal` at 0x13a38 calls spl7 with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x13a50 calls splx with a0=ret(spl7), a1=?, a2=?, a3=?.
  The return at 0x13a60 has v0 = ret(splx).
- `cache_preempt_limit` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x13b5c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x13b5c-0x13b78 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x13b64 calls _ticksper1024inst with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x13b70 has v0 = ret(_ticksper1024inst).
- `findcpufreq_raw` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x13b78 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x13b78-0x13e08 (656 bytes).
  It occupies 656 bytes.
  The `lw` at 0x13c50 loads 4 bytes from sym(.data) +0x51d0.
  The `lw` at 0x13c8c loads 4 bytes from sym(.data) +0x51d4.
  The `lw` at 0x13cf4 loads 4 bytes from table(sym(.data)+20944) +0x0.
  6 such `lw` accesses load 4 bytes from sym(.data) +0x5268, including `lw` at 0x13d10, `lw` at 0x13d10, `lw` at 0x13d60.
  The `jal` at 0x13b80 calls get_cpu_irr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x13b8c calls _cpuclkper100ticks with a0=sp-96, a1=?, a2=?, a3=?.
  The `beq` branch at 0x13c1c targets 0x13c50 and is always taken.
  The `beq` branch at 0x13c24 targets 0x13cc4, is taken when a4(?) == t0(=-0x1), and falls through when a4(?) != t0(=-0x1).
  The `beq` branch at 0x13c30 targets 0x13c40, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x13c48 targets 0x13cd0, is taken when a3(?) >= 0x27 (unsigned), and falls through when a3(?) < 0x27 (unsigned).
  The `beq` branch at 0x13c58 targets 0x13ca8, is taken when a7(=[sym(.data)+20944]) >= a6(?) (signed), and falls through when a7(=[sym(.data)+20944]) < a6(?) (signed).
  The `beq` branch at 0x13c60 targets 0x13cb0, is taken when a4(?) == t0(=-0x1), and falls through when a4(?) != t0(=-0x1).
  The `beq` branch at 0x13c6c targets 0x13c7c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x13c84 targets 0x13cd0, is taken when a3(?) >= 0x27 (unsigned), and falls through when a3(?) < 0x27 (unsigned).
  The `beq` branch at 0x13c98 targets 0x13cbc, is taken when a7(=[sym(.data)+20948]) >= a6(?) (signed), and falls through when a7(=[sym(.data)+20948]) < a6(?) (signed).
  The `beq` branch at 0x13ca0 targets 0x13c24 and is always taken.
  The `bne` branch at 0x13ca8 targets 0x13c6c, is taken when a4(?) != t0(=-0x1), and falls through when a4(?) == t0(=-0x1).
  The `beq` branch at 0x13cb4 targets 0x13c7c and is always taken.
  The `bne` branch at 0x13cbc targets 0x13c30, is taken when a4(?) != t0(=-0x1), and falls through when a4(?) == t0(=-0x1).
  The `beq` branch at 0x13cc8 targets 0x13c40 and is always taken.
  The `beq` branch at 0x13cf0 targets 0x13d40, is taken when a2(?) == a3(=0x9), and falls through when a2(?) != a3(=0x9).
  The `beq` branch at 0x13cf8 targets 0x13d44, is taken when a2(?) == t3(=0xe), and falls through when a2(?) != t3(=0xe).
  The `beq` branch at 0x13d00 targets 0x13d44, is taken when a2(?) == t9(=0xf), and falls through when a2(?) != t9(=0xf).
  The `beq` branch at 0x13d0c targets 0x13d88, is taken when a2(?) == v1(=0x23), and falls through when a2(?) != v1(=0x23).
  The `beq` branch at 0x13d18 targets 0x13d34, is taken when a2(=[sym(.data)+21096]) >= a6(?) (signed), and falls through when a2(=[sym(.data)+21096]) < a6(?) (signed).
  The `beq` branch at 0x13d28 targets 0x13d38, is taken when a4(=0x3d0900) >= a2(?) (signed), and falls through when a4(=0x3d0900) < a2(?) (signed).
  The `bne` branch at 0x13d48 targets 0x13d64, is taken when v0(=entry(sym(.data)+20944)) != a5(=0x55d4a80), and falls through when v0(=entry(sym(.data)+20944)) == a5(=0x55d4a80).
  The `beq` branch at 0x13d54 targets 0x13db8, is taken when a2(?) == a4(=0x23), and falls through when a2(?) != a4(=0x23).
  The `beq` branch at 0x13d5c targets 0x13d14 and is always taken.
  The `bne` branch at 0x13d6c targets 0x13dc4, is taken when v0(=entry(sym(.data)+20944)) != a3(=0x5f957b8), and falls through when v0(=entry(sym(.data)+20944)) == a3(=0x5f957b8).
  The `beq` branch at 0x13d78 targets 0x13de8, is taken when a2(?) == a5(=0x23), and falls through when a2(?) != a5(=0x23).
  The `beq` branch at 0x13d80 targets 0x13d14 and is always taken.
  The `beq` branch at 0x13da8 targets 0x13ddc, is taken when a7(=0x52f83c0) >= v0(=entry(sym(.data)+20944)) (signed), and falls through when a7(=0x52f83c0) < v0(=entry(sym(.data)+20944)) (signed).
  The `beq` branch at 0x13db0 targets 0x13de0, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x13dbc targets 0x13d10 and is always taken.
  The `bne` branch at 0x13dc4 targets 0x13d08, is taken when v0(=entry(sym(.data)+20944)) != a4(=0x8f5fdb8), and falls through when v0(=entry(sym(.data)+20944)) == a4(=0x8f5fdb8).
  The `beq` branch at 0x13dcc targets 0x13dfc, is taken when a2(?) == v1(=0x23), and falls through when a2(?) != v1(=0x23).
  The `beq` branch at 0x13dd4 targets 0x13d14 and is always taken.
  The `bne` branch at 0x13de0 targets 0x13df4, is taken when v0(=entry(sym(.data)+20944)) != a0(=0x5d6a4e8), and falls through when v0(=entry(sym(.data)+20944)) == a0(=0x5d6a4e8).
  The `beq` branch at 0x13dec targets 0x13d10 and is always taken.
  The `bne` branch at 0x13df4 targets 0x13d14, is taken when v0(=entry(sym(.data)+20944)) != a4(=0x8f61528), and falls through when v0(=entry(sym(.data)+20944)) == a4(=0x8f61528).
  The `beq` branch at 0x13e00 targets 0x13d10 and is always taken.
  The return at 0x13d38 has v0 = ?.
- `findcpufreq` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x13e08 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x13e08-0x13e44 (60 bytes).
  It occupies 60 bytes.
  The `jal` at 0x13e10 calls findcpufreq_raw with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x13e3c has v0 = ?.
- `cpu_mhz_rating` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x13e44 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x13e44-0x140c0 (636 bytes).
  It occupies 636 bytes.
  The `jal` at 0x13e4c calls findcpufreq_raw with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x13e7c targets 0x13e94, is taken when v0(=ret(findcpufreq_raw)) < at(=0x5c81a40) (signed), and falls through when v0(=ret(findcpufreq_raw)) >= at(=0x5c81a40) (signed).
  The `beq` branch at 0x13e90 targets 0x14044, is taken when v1(=0x5d75c80) >= v0(=ret(findcpufreq_raw)) (signed), and falls through when v1(=0x5d75c80) < v0(=ret(findcpufreq_raw)) (signed).
  The `bne` branch at 0x13eb0 targets 0x13ecc, is taken when v0(=ret(findcpufreq_raw)) < t0(=0x7641700) (signed), and falls through when v0(=ret(findcpufreq_raw)) >= t0(=0x7641700) (signed).
  The `beq` branch at 0x13ec4 targets 0x14078, is taken when t2(=0x7829b80) >= v0(=ret(findcpufreq_raw)) (signed), and falls through when t2(=0x7829b80) < v0(=ret(findcpufreq_raw)) (signed).
  The `bne` branch at 0x13ef8 targets 0x13f04, is taken when v0(=ret(findcpufreq_raw)) < at(=0x82a7440) (signed), and falls through when v0(=ret(findcpufreq_raw)) >= at(=0x82a7440) (signed).
  The `beq` branch at 0x13f00 targets 0x14088, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x13f28 targets 0x13f40, is taken when v0(=ret(findcpufreq_raw)) < v1(=0x8d24d00) (signed), and falls through when v0(=ret(findcpufreq_raw)) >= v1(=0x8d24d00) (signed).
  The `bne` branch at 0x13f30 targets 0x13f4c, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x13f38 targets 0x1404c and is always taken.
  The `bne` branch at 0x13f44 targets 0x13f5c, is taken when v0(=ret(findcpufreq_raw)) < a3(=0x8e18f40) (signed), and falls through when v0(=ret(findcpufreq_raw)) >= a3(=0x8e18f40) (signed).
  The `beq` branch at 0x13f54 targets 0x14080, is taken when a3(=0x90013c0) >= v0(=ret(findcpufreq_raw)) (signed), and falls through when a3(=0x90013c0) < v0(=ret(findcpufreq_raw)) (signed).
  The `bne` branch at 0x13f8c targets 0x13fac, is taken when v0(=ret(findcpufreq_raw)) < at(=0x9e4f580) (signed), and falls through when v0(=ret(findcpufreq_raw)) >= at(=0x9e4f580) (signed).
  The `beq` branch at 0x13fa4 targets 0x14090, is taken when a0(=0x9f437c0) >= v0(=ret(findcpufreq_raw)) (signed), and falls through when a0(=0x9f437c0) < v0(=ret(findcpufreq_raw)) (signed).
  The `bne` branch at 0x13fd8 targets 0x13ff0, is taken when v0(=ret(findcpufreq_raw)) < a1(=0xa5f0780) (signed), and falls through when v0(=ret(findcpufreq_raw)) >= a1(=0xa5f0780) (signed).
  The `beq` branch at 0x13fe8 targets 0x1409c, is taken when a3(=0xa7d8c00) >= v0(=ret(findcpufreq_raw)) (signed), and falls through when a3(=0xa7d8c00) < v0(=ret(findcpufreq_raw)) (signed).
  The `bne` branch at 0x13ff0 targets 0x14000, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x13ff8 targets 0x140a4, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x14000 targets 0x14010, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x14008 targets 0x140b0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x14010 targets 0x14020, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x14018 targets 0x140b8, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x14028 targets 0x1404c, is taken when v0(=ret(findcpufreq_raw)) < a3(=0xee6b280) (signed), and falls through when v0(=ret(findcpufreq_raw)) >= a3(=0xee6b280) (signed).
  The `bne` branch at 0x14034 targets 0x14050, is taken when a4(=0xf053700) < v0(=ret(findcpufreq_raw)) (signed), and falls through when a4(=0xf053700) >= v0(=ret(findcpufreq_raw)) (signed).
  The `beq` branch at 0x1403c targets 0x1404c and is always taken.
  The `beq` branch at 0x14078 targets 0x1404c and is always taken.
  The `beq` branch at 0x14080 targets 0x1404c and is always taken.
  The `beq` branch at 0x14088 targets 0x1404c and is always taken.
  The `beq` branch at 0x14094 targets 0x1404c and is always taken.
  The `beq` branch at 0x1409c targets 0x1404c and is always taken.
  The `beq` branch at 0x140a8 targets 0x1404c and is always taken.
  The `beq` branch at 0x140b0 targets 0x1404c and is always taken.
  The `beq` branch at 0x140b8 targets 0x1404c and is always taken.
  The return at 0x14070 has v0 = ?.
- `delayloop` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x14240 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x14240-0x14270 (48 bytes).
  It occupies 48 bytes.
  The `bgtz` branch at 0x14260 targets 0x14244, is taken when a0(?) > 0 (signed), and falls through when a0(?) <= 0 (signed).
  The return at 0x14268 has v0 = ?.
- `wbadmemaddr` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x14930 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x14930-0x149a8 (120 bytes).
  It occupies 120 bytes.
  2 such `sw` accesses store 4 bytes to sym(nofault) +0x0, including `sw` at 0x1496c, `sw` at 0x14980.
  The `sw` at 0x14970 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `lw` at 0x14974 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The return at 0x149a0 has v0 = 0x0.
- `VEC_breakpoint` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x14a64 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x14a64-0x14a70 (12 bytes).
  It occupies 12 bytes.
  Calls VEC_trap via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x14a64).
  The instructions from 0x14a6c to 0x14a6c are not reached by any path from the entry, and their branches are not listed.
- `kernelbp` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x14a6c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x14a6c-0x14a70 (4 bytes).
  It occupies 4 bytes.
- `sstepbp` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x14ab8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x14ab8-0x14abc (4 bytes).
  It occupies 4 bytes.
- `intrnorm` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x14abc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x14abc-0x14ea8 (1004 bytes).
  It occupies 1004 bytes.
  The `lb` at 0x14abc loads 1 byte from abs 0xffffffffffffa390.
  The `lw` at 0x14ac8 loads 4 bytes from abs 0xffffffffffffa208.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x14ad0, `lw` at 0x14b4c.
  The `lb` at 0x14ae8 loads 1 byte from abs 0xffffffffffffa03f.
  3 such `sb` accesses store 1 byte to abs 0xffffffffffffa03f, including `sb` at 0x14b08, `sb` at 0x14b94, `sb` at 0x14bc0.
  The `lw` at 0x14b24 loads 4 bytes from abs 0xffffffffffffa244.
  The `lw` at 0x14b50 loads 4 bytes from [-0x5fec] +0x280.
  The `sd` at 0x14b58 stores 8 bytes to [[-0x5fec]+640] +0x230.
  3 such `lw` accesses load 4 bytes from abs 0xffffffffffffa020, including `lw` at 0x14b5c, `lw` at 0x14bac, `lw` at 0x14bc4.
  The `sd` at 0x14b60 stores 8 bytes to [[-0x5fec]+640] +0x228.
  The `lw` at 0x14b7c loads 4 bytes from abs 0xffffffffffffa1a4.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x14ba4, `sd` at 0x14c00.
  The `lw` at 0x14ba8 loads 4 bytes from abs 0xffffffffffffa018.
  The `sw` at 0x14bb0 stores 4 bytes to [-0x5fe8] +0x15c.
  The `sd` at 0x14bcc stores 8 bytes to [-0x5fe0] +0xe0.
  The `sb` at 0x14bd0 stores 1 byte to abs 0xffffffffffffa043.
  The `lb` at 0x14bd4 loads 1 byte from abs 0xffffffffffffa040.
  The `sd` at 0x14c10 stores 8 bytes to abs 0xffffffffffffa028.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x14c94, `lw` at 0x14db4, `lw` at 0x14e58.
  The `lw` at 0x14cb0 loads 4 bytes from abs 0xffffffffffffa3b0.
  The `sw` at 0x14cbc stores 4 bytes to [-0x5c50] +0x4.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffa028, including `ld` at 0x14ccc, `ld` at 0x14ea4.
  2 such `sd` accesses store 8 bytes to abs 0xffffffffffffa3a0, including `sd` at 0x14cd4, `sd` at 0x14d18.
  The `sd` at 0x14cdc stores 8 bytes to abs 0xffffffffffffa3a8.
  The `ld` at 0x14ce8 loads 8 bytes from abs 0xffffffffffffa3a8.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffa3a0, including `ld` at 0x14cf8, `ld` at 0x14de0, `ld` at 0x14e20.
  The `lw` at 0x14e7c loads 4 bytes from abs 0xffffffffffffa398.
  The `sw` at 0x14e84 stores 4 bytes to abs 0xffffffffffffa398.
  The `lw` at 0x14e90 loads 4 bytes from abs 0xffffffffffffa394.
  The `sw` at 0x14e9c stores 4 bytes to abs 0xffffffffffffa394.
  Calls ecommon via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x14b6c).
  Calls assfail via direct with a0=sym(.data)+21392, a1=sym(.data)+21418, a2=0x0, a3=a3 at entry (arg3) (`j` at 0x14b88).
  Calls ecommon via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x14bb4).
  Calls ecommon_allsaved via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x14be4).
  Calls ecommon via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x14bec).
  Calls ecommon via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x14c08).
  The `jalr` at 0x14ce0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  Calls .text via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x14d00).
  Calls .text via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x14ea0).
  The `beq` branch at 0x14ac4 targets 0x14ae8, is taken when k1(?) == 0, and falls through when k1(?) != 0.
  The `beq` branch at 0x14acc targets 0x14ae8, is taken when k1(=[-0x5df8]) == 0, and falls through when k1(=[-0x5df8]) != 0.
  The `bne` branch at 0x14ad4 targets 0x14ae8, is taken when k1(=[-0x5df8]) != k0(=[-0x5fec]), and falls through when k1(=[-0x5df8]) == k0(=[-0x5fec]).
  The `bgez` branch at 0x14ae0 targets 0x14c10, is taken when k1(?) >= 0 (signed), and falls through when k1(?) < 0 (signed).
  The `beq` branch at 0x14af0 targets 0x14bf4, is taken when k0(=[-0x5fc1]:1-2) == 0, and falls through when k0(=[-0x5fc1]:1-2) != 0.
  The `beq` branch at 0x14af8 targets 0x14b90, is taken when k0(=[-0x5fc1]:1-1) == 0, and falls through when k0(=[-0x5fc1]:1-1) != 0.
  The `beq` branch at 0x14b00 targets 0x14bbc, is taken when k0(=[-0x5fc1]:1-3) == 0, and falls through when k0(=[-0x5fc1]:1-3) != 0.
  The `beq` branch at 0x14b44 targets 0x14b74, is taken when (k1(?) & 0x2) == 0, and falls through when (k1(?) & 0x2) != 0.
  The `beq` branch at 0x14bdc targets 0x14bec, is taken when k0(=[-0x5fc0]:1) == 0, and falls through when k0(=[-0x5fc0]:1) != 0.
  The `bltz` branch at 0x14c38 targets 0x14ea0, is taken when k0(?) < 0 (signed), and falls through when k0(?) >= 0 (signed).
  The `bne` branch at 0x14c60 targets 0x14c74, is taken when (k0(?) & k1(?)) != 0, and falls through when (k0(?) & k1(?)) == 0.
  The `beq` branch at 0x14c6c targets 0x14c78 and is always taken.
  The `beq` branch at 0x14c84 targets 0x14ea0, is taken when (k0(?) & 0x2) == 0, and falls through when (k0(?) & 0x2) != 0.
  The `bne` branch at 0x14c9c targets 0x14ea0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x14ca8 targets 0x14ea0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x14cb4 targets 0x14ea0, is taken when k1(=[-0x5c50]) == 0, and falls through when k1(=[-0x5c50]) != 0.
  The `beq` branch at 0x14cf4 targets 0x14d08, is taken when k0(=[-0x5c58]:8) == k1(?), and falls through when k0(=[-0x5c58]:8) != k1(?).
  The `bne` branch at 0x14d0c targets 0x14d18, is taken when k0(=[-0x5c60]:8) != k1(?), and falls through when k0(=[-0x5c60]:8) == k1(?).
  The `bne` branch at 0x14d2c targets 0x14db4, is taken when (k0(?) & 0xfff) != 0, and falls through when (k0(?) & 0xfff) == 0.
  The `bltzl` branch at 0x14d58 targets 0x14e70, is taken when k0(?) < 0 (signed), and falls through when k0(?) >= 0 (signed); its branch-likely delay slot `addiu at,zero,4` at 0x14d5c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x14d80 targets 0x14d94, is taken when (k0(?) & k1(?)) != 0, and falls through when (k0(?) & k1(?)) == 0.
  The `beq` branch at 0x14d8c targets 0x14d98 and is always taken.
  The `beql` branch at 0x14da4 targets 0x14e70, is taken when (k0(?) & 0x2) == 0, and falls through when (k0(?) & 0x2) != 0; its branch-likely delay slot `addiu at,zero,4` at 0x14da8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x14dbc targets 0x14df4, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x14dcc targets 0x14e70, is taken when k0(?) == 0, and falls through when k0(?) != 0.
  The `bne` branch at 0x14dd8 targets 0x14e70, is taken when k0(?) != 0, and falls through when k0(?) == 0.
  The `bne` branch at 0x14de4 targets 0x14ea0, is taken when at(=[-0x5c60]:8) != 0, and falls through when at(=[-0x5c60]:8) == 0.
  The `beq` branch at 0x14dec targets 0x14e70 and is always taken.
  The `bne` branch at 0x14df8 targets 0x14e14, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x14e04 targets 0x14e70, is taken when (k0(?) & 0x8) == 0, and falls through when (k0(?) & 0x8) != 0.
  The `beq` branch at 0x14e0c targets 0x14e70 and is always taken.
  The `bne` branch at 0x14e18 targets 0x14e34, is taken when k0(=0x2) != at(?), and falls through when k0(=0x2) == at(?).
  The `bne` branch at 0x14e24 targets 0x14ea0, is taken when at(=[-0x5c60]:8) != 0, and falls through when at(=[-0x5c60]:8) == 0.
  The `beq` branch at 0x14e2c targets 0x14e70 and is always taken.
  The `beq` branch at 0x14e38 targets 0x14e48, is taken when at(?) >= 0x8 (unsigned), and falls through when at(?) < 0x8 (unsigned).
  The `beq` branch at 0x14e40 targets 0x14e70 and is always taken.
  The `beq` branch at 0x14e50 targets 0x14e70, is taken when k0(?) == 0, and falls through when k0(?) != 0.
  The `beq` branch at 0x14e64 targets 0x14e70, is taken when k0(?) == 0, and falls through when k0(?) != 0.
  The `bne` branch at 0x14e8c targets 0x14ea0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x14e98 targets 0x14ea0 and is always taken.
- `ecommon` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x14ea8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x14ea8-0x14f60 (184 bytes).
  It occupies 184 bytes.
  The `ld` at 0x14ea8 loads 8 bytes from abs 0xffffffffffffa028.
  23 such `sd` accesses store 8 bytes to ?, including `sd` at 0x14eac, `sd` at 0x14eb0, `sd` at 0x14eb4.
  The `lw` at 0x14ef8 loads 4 bytes from abs 0xffffffffffffa018.
  The `lw` at 0x14f10 loads 4 bytes from [-0x5fe8] +0x1d8.
  The `lw` at 0x14f50 loads 4 bytes from sym(causevec) +0x0.
  The `jal` at 0x14ef0 calls tfi_save with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x14f14 calls ktimer_switch with a0=[-0x5fe8], a1=?, a2=?, a3=?.
  Calls (unknown callee) via register with a0=?, a1=?, a2=[sym(causevec)], a3=? (`jr` at 0x14f58).
  The `beq` branch at 0x14f00 targets 0x14f1c, is taken when a0(=[-0x5fe8]) == 0, and falls through when a0(=[-0x5fe8]) != 0.
  The `bne` branch at 0x14f0c targets 0x14f1c, is taken when (k0(?) & 0x100) != 0, and falls through when (k0(?) & 0x100) == 0.
- `ecommon_allsaved` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x14ef8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x14ef8-0x14f60 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x14ef8 loads 4 bytes from abs 0xffffffffffffa018.
  The `lw` at 0x14f10 loads 4 bytes from [-0x5fe8] +0x1d8.
  5 such `sd` accesses store 8 bytes to ?, including `sd` at 0x14f24, `sd` at 0x14f30, `sd` at 0x14f34.
  The `lw` at 0x14f50 loads 4 bytes from sym(causevec) +0x0.
  The `jal` at 0x14f14 calls ktimer_switch with a0=[-0x5fe8], a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  Calls (unknown callee) via register with a0=?, a1=?, a2=[sym(causevec)], a3=? (`jr` at 0x14f58).
  The `beq` branch at 0x14f00 targets 0x14f1c, is taken when a0(=[-0x5fe8]) == 0, and falls through when a0(=[-0x5fe8]) != 0.
  The `bne` branch at 0x14f0c targets 0x14f1c, is taken when (k0(?) & 0x100) != 0, and falls through when (k0(?) & 0x100) == 0.
- `sw_cachesynch_patch` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1547c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1547c-0x154f0 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0x154a8 loads 4 bytes from sym(.data) +0x53c0.
  The `lw` at 0x154bc loads 4 bytes from sym(sw_cachesynch_patch_insts) +0x0.
  The `sw` at 0x154c0 stores 4 bytes to ?.
  The `lw` at 0x154c4 loads 4 bytes from sym(.data) +0x53c4.
  The `lw` at 0x154d0 loads 4 bytes from sym(sw_cachesynch_patch_insts) +0x4.
  The `sw` at 0x154d4 stores 4 bytes to [sym(.data)+21444] +0x0.
  The `lw` at 0x154d8 loads 4 bytes from sym(.data) +0x53c8.
  The `jal` at 0x15484 calls get_cpu_irr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x15498 targets 0x154e8, is taken when at(?) != v0(=0x4), and falls through when at(?) == v0(=0x4).
  The `beq` branch at 0x154b4 targets 0x154e8, is taken when v0(=[sym(.data)+21440]) == 0, and falls through when v0(=[sym(.data)+21440]) != 0.
  The `beq` branch at 0x154c8 targets 0x154e8, is taken when a1(=[sym(.data)+21444]) == 0, and falls through when a1(=[sym(.data)+21444]) != 0.
  The `bne` branch at 0x154e0 targets 0x154bc, is taken when a1(=[sym(.data)+21448]) != 0, and falls through when a1(=[sym(.data)+21448]) == 0.
  The return at 0x154e8 has v0 = one of 0x4, [sym(.data)+21440].
- `utlbmiss_prolog_up` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x15500 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x15500-0x1550c (12 bytes).
  It occupies 12 bytes.
- `eutlbmiss_prolog_up` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1550c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1550c-0x15580 (116 bytes).
  It occupies 116 bytes.
- `utlbmiss` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x15580 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x15580-0x155b0 (48 bytes).
  It occupies 48 bytes.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x15580, `lw` at 0x15584.
- `eutlbmiss` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x155b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x155b0-0x15600 (80 bytes).
  It occupies 80 bytes.
- `utlbmiss2` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x15600 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x15600-0x1564c (76 bytes).
  It occupies 76 bytes.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x15600, `lw` at 0x15604.
  Calls utlbmiss_sharedseg1 via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1563c).
  Calls utlbmiss_sharedseg2 via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x15644).
  The `beq` branch at 0x15624 targets 0x1563c, is taken when k1(?) == 0, and falls through when k1(?) != 0.
  The `beq` branch at 0x1562c targets 0x15644, is taken when k0(?) == 0, and falls through when k0(?) != 0.
- `utlbmiss_sharedseg1` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1564c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1564c-0x156b4 (104 bytes).
  It occupies 104 bytes.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1565c, `lw` at 0x15660, `lw` at 0x15694.
  The `bne` branch at 0x1564c targets 0x1568c, is taken when k0(?) != 0, and falls through when k0(?) == 0.
- `utlbmiss_sharedseg2a` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x156b4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x156b4-0x156b8 (4 bytes).
  It occupies 4 bytes.
- `utlbmiss_sharedseg2` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x156b8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x156b8-0x156e0 (40 bytes).
  It occupies 40 bytes.
  The `lw` at 0x156c0 loads 4 bytes from ?.
- `utlbmiss1` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x156e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x156e0-0x1570c (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0x156ec loads 4 bytes from abs 0xffffffffffffa24c.
  The `sw` at 0x156f8 stores 4 bytes to abs 0xffffffffffffa24c.
  The `lw` at 0x156fc loads 4 bytes from abs 0xffffffffffffa250.
  The `sw` at 0x15708 stores 4 bytes to abs 0xffffffffffffa250.
  Calls utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x156f4).
  Calls utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x15704).
  The `beq` branch at 0x156e8 targets 0x156fc, is taken when (k1(?) & 0x10) == 0, and falls through when (k1(?) & 0x10) != 0.
- `utlbmiss3` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1570c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1570c-0x15738 (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0x15718 loads 4 bytes from abs 0xffffffffffffa24c.
  The `sw` at 0x15724 stores 4 bytes to abs 0xffffffffffffa24c.
  The `lw` at 0x15728 loads 4 bytes from abs 0xffffffffffffa250.
  The `sw` at 0x15734 stores 4 bytes to abs 0xffffffffffffa250.
  Calls utlbmiss2 via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x15720).
  Calls utlbmiss2 via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x15730).
  The `beq` branch at 0x15714 targets 0x15728, is taken when (k1(?) & 0x10) == 0, and falls through when (k1(?) & 0x10) != 0.
- `utlbmiss_prolog_r4600` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x15738 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x15738-0x15740 (8 bytes).
  It occupies 8 bytes.
- `utlbmiss_r4600` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x15740 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x15740-0x15774 (52 bytes).
  It occupies 52 bytes.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x15740, `lw` at 0x15744.
- `utlbmiss_r4600_1` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x15774 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x15774-0x15784 (16 bytes).
  It occupies 16 bytes.
  The `lw` at 0x15774 loads 4 bytes from abs 0xffffffffffffa24c.
  The `sw` at 0x15780 stores 4 bytes to abs 0xffffffffffffa24c.
  Calls utlbmiss_r4600 via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1577c).
- `utlbmiss_r5000` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x15784 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x15784-0x157d4 (80 bytes).
  It occupies 80 bytes.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x15784, `lw` at 0x15788.
  Calls (unnamed) [0xffffffff80000180] via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x157cc).
  The `bgez` branch at 0x157a8 targets 0x157c4, is taken when k1(?) >= 0 (signed), and falls through when k1(?) < 0 (signed).
- `utlbmiss2_r5000` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x157d4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x157d4-0x1583c (104 bytes).
  It occupies 104 bytes.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x157d4, `lw` at 0x157d8.
  Calls (unnamed) [0xffffffff80000180] via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x15820).
  Calls utlbmiss_sharedseg2_r5000 via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1582c).
  Calls utlbmiss_sharedseg1_r5000 via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x15834).
  The `beq` branch at 0x157f8 targets 0x15834, is taken when k1(?) == 0, and falls through when k1(?) != 0.
  The `beq` branch at 0x15808 targets 0x1582c, is taken when k0(?) == 0, and falls through when k0(?) != 0.
  The `bltzl` branch at 0x15810 targets 0x15824, is taken when k1(?) < 0 (signed), and falls through when k1(?) >= 0 (signed); its branch-likely delay slot `tlbwr ` at 0x15814 runs only when taken and is annulled on fall-through.
- `utlbmiss_sharedseg1_r5000` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1583c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1583c-0x15888 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x15848 loads 4 bytes from ?.
  Calls (unnamed) [0xffffffff80000180] via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x1587c).
  The `beq` branch at 0x15864 targets 0x15888, is taken when k1(?) == 0, and falls through when k1(?) != 0.
  The `bltzl` branch at 0x1586c targets 0x15880, is taken when k0(?) < 0 (signed), and falls through when k0(?) >= 0 (signed); its branch-likely delay slot `tlbwr ` at 0x15870 runs only when taken and is annulled on fall-through.
- `utlbmiss_sharedseg2a_r5000` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x15888 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x15888-0x1588c (4 bytes).
  It occupies 4 bytes.
- `utlbmiss_sharedseg2_r5000` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1588c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1588c-0x158d0 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x15894 loads 4 bytes from ?.
  Calls (unnamed) [0xffffffff80000180] via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x158c4).
  The `bltzl` branch at 0x158b4 targets 0x158c8, is taken when k0(?) < 0 (signed), and falls through when k0(?) >= 0 (signed); its branch-likely delay slot `tlbwr ` at 0x158b8 runs only when taken and is annulled on fall-through.
- `utlbmiss1_r5000` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x158d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x158d0-0x158e0 (16 bytes).
  It occupies 16 bytes.
  The `lw` at 0x158d0 loads 4 bytes from abs 0xffffffffffffa24c.
  The `sw` at 0x158dc stores 4 bytes to abs 0xffffffffffffa24c.
  Calls utlbmiss_r5000 via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x158d8).
- `utlbmiss3_r5000` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x158e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x158e0-0x158f0 (16 bytes).
  It occupies 16 bytes.
  The `lw` at 0x158e0 loads 4 bytes from abs 0xffffffffffffa24c.
  The `sw` at 0x158ec stores 4 bytes to abs 0xffffffffffffa24c.
  Calls utlbmiss2_r5000 via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x158e8).
- `utlbmiss_prolog_patch` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x158f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x158f0-0x158f4 (4 bytes).
  It occupies 4 bytes.
  The `lw` at 0x158f0 loads 4 bytes from abs 0xffffffffffffa258.
- `utlbmissj` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x158f4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x158f4-0x15914 (32 bytes).
  It occupies 32 bytes.
  Calls utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x15904).
  The instructions from 0x1590c to 0x15910 are not reached by any path from the entry, and their branches are not listed.
- `_j_exceptnorm` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x15914 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x15914-0x15924 (16 bytes).
  It occupies 16 bytes.
  Calls exception via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1591c).
- `_exceptnorm_prolog` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x15924 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x15924-0x15934 (16 bytes).
  It occupies 16 bytes.
- `_ecc_errorvec` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x15934 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x15934-0x15964 (48 bytes).
  It occupies 48 bytes.
  Calls ecc_exception via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x15944).
  The instructions from 0x1594c to 0x15960 are not reached by any path from the entry, and their branches are not listed.
- `_ecc_end` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1594c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1594c-0x15964 (24 bytes).
  It occupies 24 bytes.
  Calls r10k_ecc_exception via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1595c).
- `is_in_pfdat` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x15964 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x15964-0x15ce0 (892 bytes).
  It occupies 892 bytes.
  The `bne` branch at 0x15994 targets 0x159a4, is taken when a7(?) < at(?) (signed), and falls through when a7(?) >= at(?) (signed).
  The `bne` branch at 0x1599c targets 0x159bc, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bne` branch at 0x159a4 targets 0x159b4, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0x159ac targets 0x159bc, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The return at 0x159b4 has v0 = 0x0.
  The return at 0x159bc has v0 = 0x1.
  The instructions from 0x159c4 to 0x15cdc are not reached by any path from the entry, and their branches are not listed.
- `clean_icache` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x15ce0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x15ce0-0x15e60 (384 bytes).
  It occupies 384 bytes.
  The `lw` at 0x15d70 loads 4 bytes from ?.
  The `jal` at 0x15d3c calls is_in_pfdat with a0=a2 at entry (arg2), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=0xffffffffa0000000.
  The `jal` at 0x15db0 calls .text with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x15dd4 calls __icache_inval with a0=?, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x15e18 calls get_cpu_irr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x15e50 calls __cache_wb_inval with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=0xffffffffa0000000.
  The `beq` branch at 0x15d08 targets 0x15ddc, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x15d14 targets 0x15d34, is taken when (a3 & 0x100) == 0, and falls through when (a3 & 0x100) != 0.
  The `bne` branch at 0x15d24 targets 0x15d34, is taken when s0(=a0) < at(=0xffffffff80000000) (unsigned), and falls through when s0(=a0) >= at(=0xffffffff80000000) (unsigned).
  The `bne` branch at 0x15d2c targets 0x15e4c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x15d34 targets 0x15df8, is taken when s1(=a2) == 0, and falls through when s1(=a2) != 0.
  The `beq` branch at 0x15d48 targets 0x15df8, is taken when v0(=ret(is_in_pfdat)) == 0, and falls through when v0(=ret(is_in_pfdat)) != 0.
  The `bltz` branch at 0x15d80 targets 0x15d9c, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `bne` branch at 0x15d88 targets 0x15d98, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x15d90 targets 0x15e10, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x15d98 targets 0x15e18, is taken when a3(=[sym(vce_avoidance)]) == 0, and falls through when a3(=[sym(vce_avoidance)]) != 0.
  The `beq` branch at 0x15db8 targets 0x15de0 and is always taken.
  The `beq` branch at 0x15dc0 targets 0x15d9c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x15e00 targets 0x15e18, is taken when s0(=a0) < a3(=0xffffffff80000000) (unsigned), and falls through when s0(=a0) >= a3(=0xffffffff80000000) (unsigned).
  The `bne` branch at 0x15e08 targets 0x15e18, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x15e10 targets 0x15dd4 and is always taken.
  The `beq` branch at 0x15e34 targets 0x15dc0, is taken when a3(?) >= 0x23 (signed), and falls through when a3(?) < 0x23 (signed).
  The `bne` branch at 0x15e3c targets 0x15dc8, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x15e44 targets 0x15da0 and is always taken.
  The `beq` branch at 0x15e58 targets 0x15de0 and is always taken.
  The return at 0x15df0 has v0 = one of ret(.text), ?, ret(__cache_wb_inval).
- `clean_dcache` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x15e60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x15e60-0x1605c (508 bytes).
  It occupies 508 bytes.
  The `lw` at 0x15ee8 loads 4 bytes from ?.
  The `jal` at 0x15eb8 calls is_in_pfdat with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x15f30 calls .text with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x15f44 calls __sysad_wbflush with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x15f88 calls get_cpu_irr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x15fec calls __dcache_inval with a0=?, a1=a1 at entry (arg1), a2=?, a3=?, a4=0x3.
  The `jal` at 0x16000 calls __sysad_wbflush with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x16018 calls __dcache_wb with a0=?, a1=a1 at entry (arg1), a2=?, a3=?, a4=0x3.
  The `jal` at 0x16028 calls __cache_wb_inval with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1603c calls __sysad_wbflush with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1604c calls __dcache_wb_inval with a0=?, a1=a1 at entry (arg1), a2=?, a3=?, a4=0x3.
  The `beq` branch at 0x15e84 targets 0x15f4c, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x15e90 targets 0x15eb0, is taken when (a3 & 0x100) == 0, and falls through when (a3 & 0x100) != 0.
  The `bne` branch at 0x15e9c targets 0x15eb0, is taken when s0(=a0) < at(=0xffffffff80000000) (unsigned), and falls through when s0(=a0) >= at(=0xffffffff80000000) (unsigned).
  The `bne` branch at 0x15ea8 targets 0x16028, is taken when s0(=a0) < v0(=0xffffffffa0000000) (unsigned), and falls through when s0(=a0) >= v0(=0xffffffffa0000000) (unsigned).
  The `beq` branch at 0x15eb0 targets 0x15f68, is taken when s1(=a2) == 0, and falls through when s1(=a2) != 0.
  The `beq` branch at 0x15ec0 targets 0x15f68, is taken when v0(=ret(is_in_pfdat)) == 0, and falls through when v0(=ret(is_in_pfdat)) != 0.
  The `bltz` branch at 0x15f00 targets 0x15f1c, is taken when v1(?) < 0 (signed), and falls through when v1(?) >= 0 (signed).
  The `bne` branch at 0x15f08 targets 0x15f18, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x15f10 targets 0x15f80, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x15f18 targets 0x15f88, is taken when a2(=[sym(vce_avoidance)]) == 0, and falls through when a2(=[sym(vce_avoidance)]) != 0.
  The `beq` branch at 0x15f3c targets 0x15f50, is taken when (s2(=a3) & 0x1000) == 0, and falls through when (s2(=a3) & 0x1000) != 0.
  The `bne` branch at 0x15f70 targets 0x15f88, is taken when s0(=a0) < a5(=0xffffffff80000000) (unsigned), and falls through when s0(=a0) >= a5(=0xffffffff80000000) (unsigned).
  The `bne` branch at 0x15f78 targets 0x15f88, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x15f80 targets 0x15fd0 and is always taken.
  The `beq` branch at 0x15fa4 targets 0x15fbc, is taken when a3(?) >= 0x23 (signed), and falls through when a3(?) < 0x23 (signed).
  The `bne` branch at 0x15fac targets 0x15fc4, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x15fb4 targets 0x15f20 and is always taken.
  The `beq` branch at 0x15fbc targets 0x15f1c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x15fdc targets 0x1604c, is taken when a3(?) == a4(=0x3), and falls through when a3(?) != a4(=0x3).
  The `beq` branch at 0x15fe4 targets 0x16010, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x15ff8 targets 0x15f50, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x16008 targets 0x15f50 and is always taken.
  The `beq` branch at 0x16010 targets 0x15ff8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x16020 targets 0x15ff8 and is always taken.
  The `beq` branch at 0x16034 targets 0x15f50, is taken when (s2(=a3) & 0x1000) == 0, and falls through when (s2(=a3) & 0x1000) != 0.
  The `beq` branch at 0x16044 targets 0x15f50 and is always taken.
  The `beq` branch at 0x16054 targets 0x15ff8 and is always taken.
  The return at 0x15f60 has v0 = one of ret(.text), ?, ret(__sysad_wbflush), ret(__cache_wb_inval).
- `__vm_dcache_inval` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1605c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1605c-0x160c4 (104 bytes).
  It occupies 104 bytes.
  The `jal` at 0x16070 calls get_cpu_irr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x16098 calls invalidate_range_references with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x61001, a3=0x2.
  The `jal` at 0x160a8 calls __dcache_inval with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `beq` branch at 0x16080 targets 0x160a8, is taken when at(?) >= 0x23 (signed), and falls through when at(?) < 0x23 (signed).
  The `beq` branch at 0x160a0 targets 0x160b0 and is always taken.
  The return at 0x160bc has v0 = one of ret(invalidate_range_references), ret(__dcache_inval).
- `__vm_dcache_wb_inval` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x160c4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x160c4-0x1612c (104 bytes).
  It occupies 104 bytes.
  The `jal` at 0x160d8 calls get_cpu_irr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x160fc calls invalidate_range_references with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x61003, a3=0x2.
  The `jal` at 0x16110 calls __dcache_wb_inval with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `beq` branch at 0x160e8 targets 0x1610c, is taken when at(?) >= 0x23 (signed), and falls through when at(?) < 0x23 (signed).
  The `beq` branch at 0x16104 targets 0x16118 and is always taken.
  The return at 0x16124 has v0 = one of ret(invalidate_range_references), ret(__dcache_wb_inval).
- `VEC_addrerr` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1612c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1612c-0x16134 (8 bytes).
  It occupies 8 bytes.
  Calls VEC_trap via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1612c).
- `VEC_tlbmiss` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x16134 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x16134-0x16198 (100 bytes).
  It occupies 100 bytes.
  The `ld` at 0x16134 loads 8 bytes from ?.
  The `ld` at 0x1615c loads 8 bytes from a0 (arg0 at entry) +0xf8.
  The `ld` at 0x16194 loads 8 bytes from a0 (arg0 at entry) +0x118.
  The `jal` at 0x16154 calls tlbmiss with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  Calls exception_exit via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x16180).
  Calls soft_trap via direct with a0=a0 at entry (arg0), a1=ret(tlbmiss), a2=?, a3=[a0+280]:8 (`j` at 0x16190).
  The `bne` branch at 0x16160 targets 0x16188, is taken when v0(=ret(tlbmiss)) != 0, and falls through when v0(=ret(tlbmiss)) == 0.
- `fp_intr` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x16240 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x16240-0x16370 (304 bytes).
  It occupies 304 bytes.
  The `lw` at 0x16248 loads 4 bytes from abs 0xffffffffffffa014.
  The `lw` at 0x16264 loads 4 bytes from [-0x5fec] +0x1fc.
  The `lbu` at 0x16268 loads 1 byte from [[-0x5fec]+508] +0x149.
  2 such `sb` accesses store 1 byte to [[-0x5fec]+508] +0x149, including `sb` at 0x1627c, `sb` at 0x1635c.
  The `ld` at 0x16280 loads 8 bytes from a0 (arg0 at entry) +0x118.
  2 such `lw` accesses load 4 bytes from [-0x5fec] +0x350, including `lw` at 0x162a8, `lw` at 0x162c4.
  The `lw` at 0x162bc loads 4 bytes from [-0x5fec] +0x354.
  The `ld` at 0x162c0 loads 8 bytes from a0 (arg0 at entry) +0x120.
  The `sd` at 0x16340 stores 8 bytes to a0 (arg0 at entry) +0x160.
  The `sd` at 0x16348 stores 8 bytes to a0 (arg0 at entry) +0x120.
  The `jal` at 0x16298 calls load_fpcsr with a0=[[[-0x5fec]+508]+329]:1, a1=[[-0x5fec]+508], a2=0x4, a3=0x1.
  The `jal` at 0x162ac calls emulate_branch with a0=a0 at entry (arg0), a1=[[-0x5fec]+848], a2=ret(load_fpcsr), a3=sp-48.
  The `jal` at 0x162f0 calls .text with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x13, a4=0x23.
  The `jal` at 0x16304 calls checkfp with a0=[-0x5fec], a1=0x2, a2=?, a3=?.
  The `jal` at 0x16314 calls .text with a0=[-0x5fec], a1=?, a2=?, a3=0x13, a4=0x23.
  The `jal` at 0x1634c calls .text with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x4, a3=0x1.
  The `jal` at 0x16360 calls .text with a0=[-0x5fec], a1=[[-0x5fec]+508], a2=0x4, a3=0x1, a7=0x2.
  The `beq` branch at 0x1625c targets 0x1634c, is taken when s0(=[-0x5fec]) == 0, and falls through when s0(=[-0x5fec]) != 0.
  The `beq` branch at 0x1626c targets 0x16280, is taken when a0(=[[[-0x5fec]+508]+329]:1) == 0, and falls through when a0(=[[[-0x5fec]+508]+329]:1) != 0.
  The `beq` branch at 0x16274 targets 0x1635c, is taken when a0(=[[[-0x5fec]+508]+329]:1) == a3(=0x1), and falls through when a0(=[[[-0x5fec]+508]+329]:1) != a3(=0x1).
  The `beq` branch at 0x16290 targets 0x162c0, is taken when (at(=[a0+280]:8) & v0(=0x80000000)) == 0, and falls through when (at(=[a0+280]:8) & v0(=0x80000000)) != 0.
  The `beq` branch at 0x162b8 targets 0x162d0 and is always taken.
  The `beq` branch at 0x162e0 targets 0x16330, is taken when a0(?) == a5(=0x11), and falls through when a0(?) != a5(=0x11).
  The `bne` branch at 0x162e8 targets 0x16314, is taken when a0(?) != a3(=0x13), and falls through when a0(?) == a3(=0x13).
  The `beq` branch at 0x162f8 targets 0x16340, is taken when v0(=ret(.text)) == 0, and falls through when v0(=ret(.text)) != 0.
  The `beq` branch at 0x1630c targets 0x16320 and is always taken.
  The `bne` branch at 0x16330 targets 0x162e8, is taken when a5(?) != a4(=0x23), and falls through when a5(?) == a4(=0x23).
  The `beq` branch at 0x16338 targets 0x162f0 and is always taken.
  The `beq` branch at 0x16344 targets 0x1631c and is always taken.
  The `beq` branch at 0x16354 targets 0x16320 and is always taken.
  The `beq` branch at 0x16368 targets 0x16320 and is always taken.
  The return at 0x16328 has v0 = one of ret(checkfp), ret(.text).
- `_rsqrt_sd` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x16dec (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x16dec-0x17144 (856 bytes).
  It occupies 856 bytes.
  The `lw` at 0x16e30 loads 4 bytes from ((a0 << 0x2) + sym(EXP_INF)) +0x0.
  6 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x16e44, `lw` at 0x16e5c, `lw` at 0x16fc4.
  6 such `lw` accesses load 4 bytes from [-0x5fec] +0x34c, including `lw` at 0x16e4c, `lw` at 0x16e60, `lw` at 0x16fc8.
  3 such `sw` accesses store 4 bytes to [-0x5fec] +0x34c, including `sw` at 0x16e58, `sw` at 0x16fd0, `sw` at 0x1703c.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x16ebc, `ld` at 0x1709c.
  The `ld` at 0x16f0c loads 8 bytes from ((a0 << 0x3) + sym(IMP_1BIT)) +0x0.
  The `lw` at 0x16f14 loads 4 bytes from ((a0 << 0x2) + sym(EXP_BIAS)) +0x0.
  The `lw` at 0x16f38 loads 4 bytes from ((a0 << 0x2) + sym(EXP_SHIFT)) +0x0.
  2 such `ld` accesses load 8 bytes from (sym(QUIETNAN) + (a0 << 0x3)) +0x0, including `ld` at 0x17014, `ld` at 0x170e4.
  The `lw` at 0x1707c loads 4 bytes from ((a0 << 0x2) + sym(renorm)) +0x0.
  The `lw` at 0x170a4 loads 4 bytes from ((a0 << 0x2) + sym(EXP_MIN)) +0x0.
  The `lw` at 0x170a8 loads 4 bytes from ?.
  The `lw` at 0x1710c loads 4 bytes from ((a0 << 0x2) + sym(SIGN_SHIFT)) +0x0.
  The `ld` at 0x17114 loads 8 bytes from (sym(INFINITY) + (a0 << 0x3)) +0x0.
  The `jal` at 0x16e10 calls breakout_and_test_sd with a0=a0 at entry (arg0), a1=sp-8, a2=sp-96, a3=sp-92, a4=sp-88.
  The `jal` at 0x16e70 calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=0x10040, a3=?.
  The `jal` at 0x16e78 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x16eb8 calls _div_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x16fe8 calls post_sig with a0=0x8, a1=?, a2=?, a3=?, a4=(a0 << 0x3).
  The `jal` at 0x16ff0 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x17010 calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=?.
  The `jal` at 0x17018 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x17054 calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=?, a3=([[-0x5fec]+844] | 0x10040), a4=[-0x5fec], a5=0x10040.
  The `jal` at 0x1705c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x17080 calls (unknown callee) with a0=sp-88, a1=?, a2=((a0 << 0x3) + sym(IMP_1BIT)), a3=?, a4=0x1, a6=[((a0 << 0x2) + sym(renorm))].
  The `jal` at 0x170b8 calls fpstore_sd with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jal` at 0x170c0 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x170e0 calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=([[-0x5fec]+844] | 0x10040), a4=[-0x5fec], a5=0x10040.
  The `jal` at 0x170e8 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x17120 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))], a4=(a0 << 0x3).
  The `jal` at 0x17128 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x16e18 targets 0x16ec0, is taken when v0(=ret(breakout_and_test_sd)) != 0, and falls through when v0(=ret(breakout_and_test_sd)) == 0.
  The `bne` branch at 0x16e34 targets 0x16ed4, is taken when at(=[((a0 << 0x2) + sym(EXP_INF))]) != t2(?), and falls through when at(=[((a0 << 0x2) + sym(EXP_INF))]) == t2(?).
  The `beq` branch at 0x16e3c targets 0x170b8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x16e68 targets 0x17000, is taken when (v1(=[[-0x5fec]+844]) & 0x800) == 0, and falls through when (v1(=[[-0x5fec]+844]) & 0x800) != 0.
  The `beq` branch at 0x16e80 targets 0x16ec4 and is always taken.
  The `beq` branch at 0x16ed4 targets 0x16fb8, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x16ee0 targets 0x17028, is taken when a3(?) == a4(=0x1), and falls through when a3(?) != a4(=0x1).
  The `beq` branch at 0x16f04 targets 0x17074, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bltz` branch at 0x16f60 targets 0x1706c, is taken when t0(=[((a0 << 0x2) + sym(EXP_SHIFT))]+1) < 0 (signed), and falls through when t0(=[((a0 << 0x2) + sym(EXP_SHIFT))]+1) >= 0 (signed).
  The `beq` branch at 0x16f6c targets 0x17138 and is always taken.
  The `bne` branch at 0x16f90 targets 0x16e88, is taken when t0(=[((a0 << 0x2) + sym(EXP_SHIFT))]+1) < a2(?) (signed), and falls through when t0(=[((a0 << 0x2) + sym(EXP_SHIFT))]+1) >= a2(?) (signed).
  The `bgez` branch at 0x16fa4 targets 0x16f74, is taken when a6(?) >= 0 (signed), and falls through when a6(?) < 0 (signed).
  The `beq` branch at 0x16fb0 targets 0x16f7c and is always taken.
  The `bne` branch at 0x16fbc targets 0x16edc, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x16fe0 targets 0x170f8, is taken when (a7(=[[-0x5fec]+844]) & 0x400) == 0, and falls through when (a7(=[[-0x5fec]+844]) & 0x400) != 0.
  The `beq` branch at 0x16ff8 targets 0x16ec4 and is always taken.
  The `beq` branch at 0x17020 targets 0x16ec4 and is always taken.
  The `beq` branch at 0x1704c targets 0x170d0, is taken when (a2(=[[-0x5fec]+844]) & 0x800) == 0, and falls through when (a2(=[[-0x5fec]+844]) & 0x800) != 0.
  The `beq` branch at 0x17064 targets 0x16ec4 and is always taken.
  The `beq` branch at 0x1706c targets 0x16e88 and is always taken.
  The `beq` branch at 0x170b0 targets 0x16f28 and is always taken.
  The `beq` branch at 0x170c8 targets 0x16ec4 and is always taken.
  The `beq` branch at 0x170f0 targets 0x16ec4 and is always taken.
  The `beq` branch at 0x17130 targets 0x16ec4 and is always taken.
  The `beq` branch at 0x1713c targets 0x16f9c and is always taken.
  The return at 0x16ecc has v0 = one of ret(store_fpcsr), ?.
- `_cvtsd_l` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x17144 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x17144-0x172b4 (368 bytes).
  It occupies 368 bytes.
  3 such `lb` accesses load 1 byte from ?, including `lb` at 0x171b4, `lb` at 0x1722c, `lb` at 0x17294.
  The `lw` at 0x171dc loads 4 bytes from (sym(round) + (a0 << 0x2)) +0x0.
  The `ld` at 0x17250 loads 8 bytes from (sym(MTWOP63) + (a0 << 0x3)) +0x0.
  The `jalr` at 0x171e0 calls (unknown callee) with a0=one of 0x0, 0x1, a1=?, a2=?, a3=?, a4=[(sym(round) + (a0 << 0x2))], a5=(a0 << 0x2).
  The `jal` at 0x1724c calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(MTWOP63) + (a0 << 0x3))]:8, a2=a1 at entry (arg1), a3=(a0 << 0x3), a6=sym(.data)+10736.
  The `jal` at 0x17254 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x17264 calls renorm_d with a0=sp-8, a1=a1 at entry (arg1), a2=?, a3=-0x1, a6=sym(.data)+10736.
  The `jal` at 0x1729c calls fpstore_sd with a0=a0 at entry (arg0), a1=0x0, a2=a1 at entry (arg1), a3=-0x1, a6=sym(.data)+10736.
  The `jal` at 0x172a4 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x17160 targets 0x17298, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x1716c targets 0x17238, is taken when a1 == at(=0x8000000000000000), and falls through when a1 != at(=0x8000000000000000).
  The `bltz` branch at 0x17174 targets 0x171fc, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `beq` branch at 0x17188 targets 0x17264, is taken when (a2(?) & v0(=0xffe0000000000000)) == 0, and falls through when (a2(?) & v0(=0xffe0000000000000)) != 0.
  The `beq` branch at 0x171a0 targets 0x17208, is taken when (a2(?) & v1(=0xf000000000000000)) == 0, and falls through when (a2(?) & v1(=0xf000000000000000)) != 0.
  The `beq` branch at 0x17200 targets 0x17180 and is always taken.
  The `beq` branch at 0x1721c targets 0x17280, is taken when (a2(?) & a6(=0xff00000000000000)) == 0, and falls through when (a2(?) & a6(=0xff00000000000000)) != 0.
  The `beq` branch at 0x17230 targets 0x171bc and is always taken.
  The `beq` branch at 0x1725c targets 0x171ec and is always taken.
  The `beq` branch at 0x17278 targets 0x171d0 and is always taken.
  The `beq` branch at 0x17290 targets 0x171bc and is always taken.
  The `beq` branch at 0x172ac targets 0x171ec and is always taken.
  The return at 0x171f4 has v0 = one of ret(?), ret(store_fpcsr).
- `fpstore_sd` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x172b4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x172b4-0x17300 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x172b4 loads 4 bytes from abs 0xffffffffffffa014.
  The `lbu` at 0x172bc loads 1 byte from [-0x5fec] +0x359.
  The `lbu` at 0x172c8 loads 1 byte from [-0x5fec] +0x35a.
  The `jal` at 0x172d8 calls fpstore_d with a0=a1 at entry (arg1), a1=[[-0x5fec]+858]:1, a2=?, a3=a3 at entry (arg3), a4=a1 at entry (arg1), a5=[[-0x5fec]+858]:1.
  The `jal` at 0x172f0 calls fpstore_s with a0=a1 at entry (arg1), a1=[[-0x5fec]+858]:1, a2=?, a3=a3 at entry (arg3), a4=a1 at entry (arg1), a5=[[-0x5fec]+858]:1.
  The `beq` branch at 0x172cc targets 0x172ec, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x172f8 targets 0x172e4 and is always taken.
  The return at 0x172e4 has v0 = one of ret(fpstore_d), ret(fpstore_s).
- `fpstore_d` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x17300 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x17300-0x173ec (236 bytes).
  It occupies 236 bytes.
  The `lw` at 0x1732c loads 4 bytes from abs 0xffffffffffffa208.
  3 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x17330, `lw` at 0x17398, `lw` at 0x173d0.
  2 such `lw` accesses load 4 bytes from [-0x5fec] +0x280, including `lw` at 0x1739c, `lw` at 0x173d4.
  2 such `sd` accesses store 8 bytes to ((a1 << 0x3) + [[-0x5fec]+640]) +0x28, including `sd` at 0x173b0, `sd` at 0x173cc.
  The `sd` at 0x173e8 stores 8 bytes to ([[-0x5fec]+640] + (a1 << 0x3)) +0x30.
  The `jal` at 0x17320 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x17348 calls getsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x17354 calls setsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x17364 calls fpunit_fpstore_d with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x1736c calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x17390 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `bne` branch at 0x17334 targets 0x17390, is taken when at(=[-0x5fec]) != v0(=[-0x5df8]), and falls through when at(=[-0x5fec]) == v0(=[-0x5df8]).
  The `beq` branch at 0x1733c targets 0x173b4, is taken when s0(=a2) == 0, and falls through when s0(=a2) != 0.
  The `beq` branch at 0x173a4 targets 0x173c0, is taken when s0(=a2) == 0, and falls through when s0(=a2) != 0.
  The `beq` branch at 0x173ac targets 0x17374 and is always taken.
  The `beq` branch at 0x173b8 targets 0x17348 and is always taken.
  The `beq` branch at 0x173e4 targets 0x17374 and is always taken.
  The return at 0x17388 has v0 = one of ret(splx), ((a1 << 0x3) + [[-0x5fec]+640]).
- `fpstore_s` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x173ec (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x173ec-0x17494 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x17414 loads 4 bytes from abs 0xffffffffffffa208.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x17418, `lw` at 0x1747c.
  The `lw` at 0x17480 loads 4 bytes from [-0x5fec] +0x280.
  The `sd` at 0x17490 stores 8 bytes to ([[-0x5fec]+640] + (a1 << 0x3)) +0x28.
  The `jal` at 0x17408 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x17434 calls getsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1743c calls setsr with a0=(one of 0x20000000, 0x24000000 | ret(getsr)), a1=?, a2=?, a3=?.
  The `jal` at 0x17448 calls fpunit_fpstore_s with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x17450 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x17474 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `bne` branch at 0x17420 targets 0x17474, is taken when at(=[-0x5fec]) != v0(=[-0x5df8]), and falls through when at(=[-0x5fec]) == v0(=[-0x5df8]).
  The `beq` branch at 0x17428 targets 0x17434, is taken when v1(=a2) == 0, and falls through when v1(=a2) != 0.
  The `beq` branch at 0x1748c targets 0x17458 and is always taken.
  The return at 0x1746c has v0 = ret(splx).
- `fpload_d` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x17494 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x17494-0x17570 (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0x174b8 loads 4 bytes from abs 0xffffffffffffa208.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x174bc, `lw` at 0x17524.
  The `lw` at 0x17528 loads 4 bytes from [-0x5fec] +0x280.
  The `ld` at 0x17538 loads 8 bytes from ((a0 << 0x3) + [[-0x5fec]+640]) +0x28.
  The `ld` at 0x17554 loads 8 bytes from ((a0 << 0x3) + [[-0x5fec]+640]) +0x30.
  The `jal` at 0x174ac calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x174d4 calls getsr with a0=?, a1=?, a2=?, a3=0x20000000.
  The `jal` at 0x174e0 calls setsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x174ec calls fpunit_fpload_d with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x174f8 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x1751c calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `bne` branch at 0x174c0 targets 0x1751c, is taken when at(=[-0x5fec]) != v0(=[-0x5df8]), and falls through when at(=[-0x5fec]) == v0(=[-0x5df8]).
  The `beq` branch at 0x174c8 targets 0x17548, is taken when s0(=a1) == 0, and falls through when s0(=a1) != 0.
  The `beq` branch at 0x17534 targets 0x17550, is taken when s0(=a1) == 0, and falls through when s0(=a1) != 0.
  The `beq` branch at 0x17540 targets 0x17508 and is always taken.
  The `beq` branch at 0x17548 targets 0x174d4 and is always taken.
  The `beq` branch at 0x17568 targets 0x17540 and is always taken.
  The return at 0x17514 has v0 = one of ret(fpunit_fpload_d), ?.
- `fpload_s` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x17570 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x17570-0x17620 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0x17590 loads 4 bytes from abs 0xffffffffffffa208.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x17594, `lw` at 0x175f4.
  The `lw` at 0x175f8 loads 4 bytes from [-0x5fec] +0x280.
  The `ld` at 0x17608 loads 8 bytes from ([[-0x5fec]+640] + (a0 << 0x3)) +0x28.
  The `jal` at 0x17584 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x175ac calls getsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x175b4 calls setsr with a0=(one of 0x20000000, 0x24000000 | ret(getsr)), a1=?, a2=?, a3=?.
  The `jal` at 0x175c0 calls fpunit_fpload_s with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x175cc calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x175ec calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `bne` branch at 0x17598 targets 0x175ec, is taken when at(=[-0x5fec]) != v0(=[-0x5df8]), and falls through when at(=[-0x5fec]) == v0(=[-0x5df8]).
  The `beq` branch at 0x175a0 targets 0x17618, is taken when v1(=a1) == 0, and falls through when v1(=a1) != 0.
  The `beq` branch at 0x17610 targets 0x175d8 and is always taken.
  The `beq` branch at 0x17618 targets 0x175ac and is always taken.
  The return at 0x175e4 has v0 = one of ret(fpunit_fpload_s), ?.
- `store_fpcsr` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x17620 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x17620-0x176d4 (180 bytes).
  It occupies 180 bytes.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x17620, `lw` at 0x17648.
  2 such `lbu` accesses load 1 byte from [-0x5fec] +0x359, including `lbu` at 0x17624, `lbu` at 0x1764c.
  The `lw` at 0x1763c loads 4 bytes from [-0x5fec] +0x34c.
  The `lw` at 0x1765c loads 4 bytes from [-0x5fec] +0x280.
  The `sw` at 0x17660 stores 4 bytes to [[-0x5fec]+640] +0x130.
  The `lw` at 0x1767c loads 4 bytes from abs 0xffffffffffffa208.
  The `lw` at 0x176ac loads 4 bytes from [-0x5fec] +0x348.
  The `jal` at 0x17640 calls splhi with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[-0x5fec].
  The `jal` at 0x17668 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x17688 calls getsr with a0=?, a1=[-0x5df8], a2=?, a3=[-0x5fec].
  The `jal` at 0x17694 calls setsr with a0=(ret(getsr) | 0x20000000), a1=?, a2=?, a3=?.
  The `jal` at 0x1769c calls set_fpc_csr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x17638 targets 0x176ac, is taken when (at(=[[-0x5fec]+857]:1) & 0x10) == 0, and falls through when (at(=[[-0x5fec]+857]:1) & 0x10) != 0.
  The `beq` branch at 0x17654 targets 0x1767c, is taken when (v1(=[[-0x5fec]+857]:1) & 0x10) == 0, and falls through when (v1(=[[-0x5fec]+857]:1) & 0x10) != 0.
  The `bne` branch at 0x17680 targets 0x1765c, is taken when a1(=[-0x5df8]) != a3(=[-0x5fec]), and falls through when a1(=[-0x5df8]) == a3(=[-0x5fec]).
  The `beq` branch at 0x176a4 targets 0x17664 and is always taken.
  The `beq` branch at 0x176b8 targets 0x17640, is taken when a4(=[[-0x5fec]+840]) == 0, and falls through when a4(=[[-0x5fec]+840]) != 0.
  The `beq` branch at 0x176cc targets 0x17640 and is always taken.
  The return at 0x17674 has v0 = ret(splx).
- `load_fpcsr` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x176d4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x176d4-0x17744 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x176e8 loads 4 bytes from abs 0xffffffffffffa014.
  The `lw` at 0x176ec loads 4 bytes from abs 0xffffffffffffa208.
  The `lw` at 0x176f8 loads 4 bytes from [-0x5fec] +0x280.
  The `lw` at 0x176fc loads 4 bytes from [[-0x5fec]+640] +0x130.
  The `jal` at 0x176e0 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x17700 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x17720 calls getsr with a0=[-0x5fec], a1=?, a2=?, a3=?.
  The `jal` at 0x1772c calls setsr with a0=(ret(getsr) | 0x20000000), a1=?, a2=?, a3=?.
  The `jal` at 0x17734 calls get_fpc_csr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x176f0 targets 0x17720, is taken when at(=[-0x5df8]) == a0(=[-0x5fec]), and falls through when at(=[-0x5df8]) != a0(=[-0x5fec]).
  The `beq` branch at 0x1773c targets 0x17700 and is always taken.
  The return at 0x17718 has v0 = ?.
- `post_sig` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x17744 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x17744-0x17794 (80 bytes).
  It occupies 80 bytes.
  3 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x17744, `lw` at 0x17770, `lw` at 0x17788.
  2 such `lbu` accesses load 1 byte from [-0x5fec] +0x359, including `lbu` at 0x17748, `lbu` at 0x17774.
  The `lw` at 0x17764 loads 4 bytes from [-0x5fec] +0x34c.
  The `lw` at 0x1776c loads 4 bytes from [-0x5fec] +0x344.
  The `sb` at 0x1777c stores 1 byte to [-0x5fec] +0x359.
  The `jal` at 0x17768 calls softfp_psignal with a0=a0 at entry (arg0), a1=[[-0x5fec]+844], a2=[[-0x5fec]+836], a3=a3 at entry (arg3), a4=[-0x5fec].
  The `jal` at 0x17784 calls checkfp with a0=[-0x5fec], a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x17754 targets 0x17764, is taken when (at(=[[-0x5fec]+857]:1) & 0x10) == 0, and falls through when (at(=[[-0x5fec]+857]:1) & 0x10) != 0.
  The `beq` branch at 0x1778c targets 0x1775c and is always taken.
  The return at 0x1775c has v0 = one of ?, ret(checkfp).
- `fp_init_glob` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x17794 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x17794-0x177e0 (76 bytes).
  It occupies 76 bytes.
  6 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x1779c, `lw` at 0x177a8, `lw` at 0x177b0.
  The `sw` at 0x177a4 stores 4 bytes to [-0x5fec] +0x344.
  The `sw` at 0x177ac stores 4 bytes to [-0x5fec] +0x34c.
  The `sw` at 0x177b4 stores 4 bytes to [-0x5fec] +0x348.
  The `sb` at 0x177c0 stores 1 byte to [-0x5fec] +0x358.
  The `sb` at 0x177d0 stores 1 byte to [-0x5fec] +0x359.
  The `sb` at 0x177dc stores 1 byte to [-0x5fec] +0x35a.
  The `beq` branch at 0x17798 targets 0x177a4, is taken when a1 == 0, and falls through when a1 != 0.
  The return at 0x177d8 has v0 = ((one of 0x0, 0x20 | a4) | 0x4).
- `breakout_sd` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x177e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x177e0-0x178c4 (228 bytes).
  It occupies 228 bytes.
  3 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x0, including `ld` at 0x177e8, `ld` at 0x17820, `ld` at 0x17844.
  The `lw` at 0x177f0 loads 4 bytes from ((a0 << 0x2) + sym(EXP_SHIFT)) +0x0.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x17804, `sw` at 0x17818.
  The `lw` at 0x17808 loads 4 bytes from ((a0 << 0x2) + sym(EXP_MASK)) +0x0.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(SIGN_SHIFT)) +0x0, including `lw` at 0x1781c, `lw` at 0x1787c.
  The `sw` at 0x1783c stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `ld` at 0x17840 loads 8 bytes from (sym(FRAC_MASK) + (a0 << 0x3)) +0x0.
  2 such `sd` accesses store 8 bytes to a4 (arg4 at entry) +0x0, including `sd` at 0x1784c, `sd` at 0x17878.
  3 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x17850, `lw` at 0x1788c, `lw` at 0x1789c.
  The `lbu` at 0x17854 loads 1 byte from [-0x5fec] +0x359.
  The `lw` at 0x17864 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `lwu` at 0x17880 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `sd` at 0x17888 stores 8 bytes to a1 (arg1 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [-0x5fec] +0x34c, including `lw` at 0x17890, `lw` at 0x178a0.
  The `sw` at 0x17898 stores 4 bytes to [-0x5fec] +0x34c.
  The `jal` at 0x178b0 calls post_sig with a0=0x8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=((a0 << 0x2) + sym(SIGN_SHIFT)).
  The `beq` branch at 0x1785c targets 0x178bc, is taken when (at(=[[-0x5fec]+857]:1) & 0x1) == 0, and falls through when (at(=[[-0x5fec]+857]:1) & 0x1) != 0.
  The `bne` branch at 0x17868 targets 0x178bc, is taken when t8(=[a3]) != 0, and falls through when t8(=[a3]) == 0.
  The `beq` branch at 0x17870 targets 0x178bc, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x178a8 targets 0x178bc, is taken when (t9(=[[-0x5fec]+844]) & 0x80) == 0, and falls through when (t9(=[[-0x5fec]+844]) & 0x80) != 0.
  The return at 0x178bc has v0 = one of ?, [-0x5fec], ret(post_sig).
- `screen_nan_sd` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x178c4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x178c4-0x17994 (208 bytes).
  It occupies 208 bytes.
  The `lw` at 0x178d0 loads 4 bytes from (sym(EXP_NAN) + (a0 << 0x2)) +0x0.
  The `ld` at 0x178f4 loads 8 bytes from ((a0 << 0x3) + sym(SNANBIT_MASK)) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x17904, `lw` at 0x17914.
  2 such `lw` accesses load 4 bytes from [-0x5fec] +0x34c, including `lw` at 0x17908, `lw` at 0x17918.
  The `sw` at 0x17910 stores 4 bytes to [-0x5fec] +0x34c.
  The `ld` at 0x17988 loads 8 bytes from ((a0 << 0x3) + sym(QUIETNAN)) +0x0.
  The `jal` at 0x17928 calls post_sig with a0=0x8, a1=?, a2=([[-0x5fec]+844] | 0x10040), a3=[-0x5fec], a4=0x10040, a6=sym(SNANBIT_MASK).
  The `jal` at 0x17930 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1795c calls fpstore_sd with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x10040, a6=sym(SNANBIT_MASK).
  The `jal` at 0x17964 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x17984 calls fpstore_sd with a0=a0 at entry (arg0), a1=[((a0 << 0x3) + sym(QUIETNAN))]:8, a2=([[-0x5fec]+844] | 0x10040), a3=[-0x5fec], a4=0x10040, a6=sym(SNANBIT_MASK).
  The `bne` branch at 0x178e8 targets 0x17948, is taken when at(=[(sym(EXP_NAN) + (a0 << 0x2))]) != a2, and falls through when at(=[(sym(EXP_NAN) + (a0 << 0x2))]) == a2.
  The `beq` branch at 0x178fc targets 0x17950, is taken when (v1(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8) & a3) == 0, and falls through when (v1(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8) & a3) != 0.
  The `beq` branch at 0x17920 targets 0x17978, is taken when (a1(=[[-0x5fec]+844]) & 0x800) == 0, and falls through when (a1(=[[-0x5fec]+844]) & 0x800) != 0.
  The `beq` branch at 0x17948 targets 0x17940 and is always taken.
  The `beq` branch at 0x17954 targets 0x17940, is taken when a3 == 0, and falls through when a3 != 0.
  The `beq` branch at 0x17970 targets 0x17940 and is always taken.
  The `beq` branch at 0x1798c targets 0x17930 and is always taken.
  The return at 0x17940 has v0 = one of 0x0, 0x1.
- `breakout_and_test_sd` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x17994 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x17994-0x179f4 (96 bytes).
  It occupies 96 bytes.
  The `ld` at 0x179c0 loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x179c4 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x179d0 loads 8 bytes from a4 (arg4 at entry) +0x0.
  The `jal` at 0x179ac calls breakout_sd with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x179cc calls screen_nan_sd with a0=a0 at entry (arg0), a1=[a1]:8, a2=[a3], a3=[a4]:8.
  The `beq` branch at 0x179d8 targets 0x179ec, is taken when v0(=ret(screen_nan_sd)) == 0, and falls through when v0(=ret(screen_nan_sd)) != 0.
  The `beq` branch at 0x179ec targets 0x179e4 and is always taken.
  The return at 0x179e4 has v0 = one of 0x0, 0x1.
- `breakout_and_test2_sd` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x179f4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x179f4-0x17b98 (420 bytes).
  It occupies 420 bytes.
  The `lw` at 0x17a58 loads 4 bytes from (sym(EXP_NAN) + (a0 << 0x2)) +0x0.
  The `lw` at 0x17a5c loads 4 bytes from a3 (arg3 at entry) +0x0.
  2 such `ld` accesses load 8 bytes from a4 (arg4 at entry) +0x0, including `ld` at 0x17a80, `ld` at 0x17b1c.
  2 such `ld` accesses load 8 bytes from ((a0 << 0x3) + sym(SNANBIT_MASK)) +0x0, including `ld` at 0x17a88, `ld` at 0x17ab0.
  The `lw` at 0x17a98 loads 4 bytes from a7 (arg7 at entry) +0x0.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x17aa8, `ld` at 0x17b50.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x17ac0, `lw` at 0x17ad0.
  2 such `lw` accesses load 4 bytes from [-0x5fec] +0x34c, including `lw` at 0x17ac4, `lw` at 0x17ad4.
  The `sw` at 0x17acc stores 4 bytes to [-0x5fec] +0x34c.
  The `ld` at 0x17b34 loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0x17b60 loads 8 bytes from a5 (arg5 at entry) +0x0.
  The `ld` at 0x17b8c loads 8 bytes from ((a0 << 0x3) + sym(QUIETNAN)) +0x0.
  The `jal` at 0x17a28 calls breakout_sd with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x17a40 calls breakout_sd with a0=a0 at entry (arg0), a1=a5 at entry (arg5), a2=a6 at entry (arg6), a3=a7 at entry (arg7).
  The `jal` at 0x17ae4 calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=(a0 << 0x3), a3=[a3].
  The `jal` at 0x17aec calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x17b30 calls fpstore_sd with a0=a0 at entry (arg0), a1=[a1]:8, a2=(a0 << 0x3), a3=[a3], a4=[a7], a5=sym(SNANBIT_MASK).
  The `jal` at 0x17b38 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x17b5c calls fpstore_sd with a0=a0 at entry (arg0), a1=[a5]:8, a2=?, a3=[a3], a4=[a7], a5=sym(SNANBIT_MASK).
  The `jal` at 0x17b64 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x17b88 calls fpstore_sd with a0=a0 at entry (arg0), a1=[((a0 << 0x3) + sym(QUIETNAN))]:8, a2=(a0 << 0x3), a3=[a3].
  The `bne` branch at 0x17a78 targets 0x17a98, is taken when a3(=[a3]) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]), and falls through when a3(=[a3]) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  The `bne` branch at 0x17a90 targets 0x17ac0, is taken when (a5(=[a4]:8) & a6(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) != 0, and falls through when (a5(=[a4]:8) & a6(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) == 0.
  The `bne` branch at 0x17aa0 targets 0x17b14, is taken when a4(=[a7]) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]), and falls through when a4(=[a7]) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  The `beq` branch at 0x17ab8 targets 0x17b14, is taken when (a7(?) & t0(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) == 0, and falls through when (a7(?) & t0(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) != 0.
  The `beq` branch at 0x17adc targets 0x17b7c, is taken when (t1(=[[-0x5fec]+844]) & 0x800) == 0, and falls through when (t1(=[[-0x5fec]+844]) & 0x800) != 0.
  The `bne` branch at 0x17b14 targets 0x17b48, is taken when a3(=[a3]) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]), and falls through when a3(=[a3]) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  The `beq` branch at 0x17b20 targets 0x17b48, is taken when t9(=[a4]:8) == 0, and falls through when t9(=[a4]:8) != 0.
  The `beq` branch at 0x17b40 targets 0x17af8 and is always taken.
  The `bne` branch at 0x17b48 targets 0x17b74, is taken when a4(=[a7]) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]), and falls through when a4(=[a7]) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  The `beq` branch at 0x17b54 targets 0x17b74, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x17b6c targets 0x17af8 and is always taken.
  The `beq` branch at 0x17b74 targets 0x17af8 and is always taken.
  The `beq` branch at 0x17b90 targets 0x17aec and is always taken.
  The return at 0x17b0c has v0 = one of 0x0, 0x1.
- `breakout_and_test3_sd` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x17b98 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x17b98-0x17dac (532 bytes).
  It occupies 532 bytes.
  The `lw` at 0x17c10 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `lw` at 0x17c18 loads 4 bytes from (sym(EXP_NAN) + (a0 << 0x2)) +0x0.
  2 such `ld` accesses load 8 bytes from a4 (arg4 at entry) +0x0, including `ld` at 0x17c38, `ld` at 0x17d04.
  3 such `ld` accesses load 8 bytes from ((a0 << 0x3) + sym(SNANBIT_MASK)) +0x0, including `ld` at 0x17c40, `ld` at 0x17cc4, `ld` at 0x17ce8.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x17c50, `lw` at 0x17c68.
  2 such `lw` accesses load 4 bytes from [-0x5fec] +0x34c, including `lw` at 0x17c58, `lw` at 0x17c6c.
  The `sw` at 0x17c64 stores 4 bytes to [-0x5fec] +0x34c.
  The `lw` at 0x17cb0 loads 4 bytes from a7 (arg7 at entry) +0x0.
  5 such `ld` accesses load 8 bytes from ?, including `ld` at 0x17cc8, `ld` at 0x17cec, `ld` at 0x17d34.
  The `lw` at 0x17cd8 loads 4 bytes from ?.
  The `ld` at 0x17d18 loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0x17d44 loads 8 bytes from a5 (arg5 at entry) +0x0.
  The `ld` at 0x17da0 loads 8 bytes from ((a0 << 0x3) + sym(QUIETNAN)) +0x0.
  The `jal` at 0x17bcc calls breakout_sd with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x17be4 calls breakout_sd with a0=a0 at entry (arg0), a1=a5 at entry (arg5), a2=a6 at entry (arg6), a3=a7 at entry (arg7).
  The `jal` at 0x17c00 calls breakout_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x17c7c calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=(a0 << 0x3), a3=?, a5=([[-0x5fec]+844] | 0x10040), a6=[-0x5fec], a7=0x10040.
  The `jal` at 0x17c84 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x17d14 calls fpstore_sd with a0=a0 at entry (arg0), a1=[a1]:8, a2=(a0 << 0x3), a3=?, a5=[a7], a6=[a3], a7=((a0 << 0x3) + sym(SNANBIT_MASK)).
  The `jal` at 0x17d1c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x17d40 calls fpstore_sd with a0=a0 at entry (arg0), a1=[a5]:8, a2=?, a3=?, a5=[a7], a6=[a3], a7=((a0 << 0x3) + sym(SNANBIT_MASK)).
  The `jal` at 0x17d48 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x17d70 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a7], a6=[a3], a7=((a0 << 0x3) + sym(SNANBIT_MASK)).
  The `jal` at 0x17d78 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x17d9c calls fpstore_sd with a0=a0 at entry (arg0), a1=[((a0 << 0x3) + sym(QUIETNAN))]:8, a2=(a0 << 0x3), a3=?, a5=([[-0x5fec]+844] | 0x10040), a6=[-0x5fec], a7=0x10040.
  The `bne` branch at 0x17c30 targets 0x17cb0, is taken when a6(=[a3]) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]), and falls through when a6(=[a3]) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  The `beq` branch at 0x17c48 targets 0x17cb0, is taken when (a1(=[a4]:8) & a3(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) == 0, and falls through when (a1(=[a4]:8) & a3(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) != 0.
  The `beq` branch at 0x17c74 targets 0x17d90, is taken when (a4(=[[-0x5fec]+844]) & 0x800) == 0, and falls through when (a4(=[[-0x5fec]+844]) & 0x800) != 0.
  The `bne` branch at 0x17cbc targets 0x17cd8, is taken when a5(=[a7]) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]), and falls through when a5(=[a7]) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  The `bne` branch at 0x17cd0 targets 0x17c50, is taken when (t0(?) & t1(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) != 0, and falls through when (t0(?) & t1(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) == 0.
  The `bne` branch at 0x17ce0 targets 0x17cfc, is taken when t2(?) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]), and falls through when t2(?) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  The `bne` branch at 0x17cf4 targets 0x17c50, is taken when (t3(?) & t8(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) != 0, and falls through when (t3(?) & t8(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) == 0.
  The `bne` branch at 0x17cfc targets 0x17d2c, is taken when a6(=[a3]) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]), and falls through when a6(=[a3]) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  The `beq` branch at 0x17d08 targets 0x17d2c, is taken when t8(=[a4]:8) == 0, and falls through when t8(=[a4]:8) != 0.
  The `beq` branch at 0x17d24 targets 0x17c90 and is always taken.
  The `bne` branch at 0x17d2c targets 0x17d58, is taken when a5(=[a7]) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]), and falls through when a5(=[a7]) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  The `beq` branch at 0x17d38 targets 0x17d58, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x17d50 targets 0x17c90 and is always taken.
  The `bne` branch at 0x17d58 targets 0x17d88, is taken when t2(?) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]), and falls through when t2(?) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  The `beq` branch at 0x17d64 targets 0x17d88, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x17d80 targets 0x17c90 and is always taken.
  The `beq` branch at 0x17d88 targets 0x17c90 and is always taken.
  The `beq` branch at 0x17da4 targets 0x17c84 and is always taken.
  The return at 0x17ca8 has v0 = one of 0x0, 0x1.
- `_cvtsd_w` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x17dac (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x17dac-0x17e50 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0x17df4 loads 4 bytes from (sym(round) + (a0 << 0x2)) +0x0.
  The `jal` at 0x17de0 calls renorm_d with a0=sp-8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0x17e08 calls (unknown callee) with a0=one of 0x0, 0x1, a1=?, a2=?, a3=0x0, a4=[(sym(round) + (a0 << 0x2))], a5=(a0 << 0x2).
  The `jal` at 0x17e38 calls fpstore_sd with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a1 at entry (arg1).
  The `jal` at 0x17e40 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x17dc4 targets 0x17e34, is taken when a1 == 0, and falls through when a1 != 0.
  The `bltz` branch at 0x17dd4 targets 0x17e24, is taken when a3(?) < 0 (signed), and falls through when a3(?) >= 0 (signed).
  The `beq` branch at 0x17e2c targets 0x17de0 and is always taken.
  The `beq` branch at 0x17e48 targets 0x17e14 and is always taken.
  The return at 0x17e1c has v0 = one of ret(?), ret(store_fpcsr).
- `_nmsub_sd` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x17e50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x17e50-0x17f14 (196 bytes).
  It occupies 196 bytes.
  The `lw` at 0x17e60 loads 4 bytes from abs 0xffffffffffffa014.
  The `lbu` at 0x17e6c loads 1 byte from [-0x5fec] +0x359.
  The `sb` at 0x17e84 stores 1 byte to [-0x5fec] +0x359.
  The `jal` at 0x17ebc calls breakout_and_test3_sd with a0=a0 at entry (arg0), a1=sp-24, a2=sp-96, a3=sp-92, a4=sp-88, a5=sp-16, a6=sp-80, a7=sp-76.
  The `jal` at 0x17f04 calls madd with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x17ec4 targets 0x17ed8, is taken when v0(=ret(breakout_and_test3_sd)) == 0, and falls through when v0(=ret(breakout_and_test3_sd)) != 0.
  The `beq` branch at 0x17f0c targets 0x17ed0 and is always taken.
  The return at 0x17ed0 has v0 = one of ret(breakout_and_test3_sd), ret(madd).
- `_cvtw_sd` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x17f14 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x17f14-0x180d4 (448 bytes).
  It occupies 448 bytes.
  The `lw` at 0x17f4c loads 4 bytes from ((a0 << 0x2) + sym(EXP_BIAS)) +0x0.
  3 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x17f78, `lw` at 0x17f88, `lw` at 0x180ac.
  2 such `lw` accesses load 4 bytes from [-0x5fec] +0x34c, including `lw` at 0x17f7c, `lw` at 0x17f8c.
  The `sw` at 0x17f84 stores 4 bytes to [-0x5fec] +0x34c.
  The `ld` at 0x17fbc loads 8 bytes from (sym(IMP_1BIT) + (a0 << 0x3)) +0x0.
  The `lw` at 0x18040 loads 4 bytes from ((a0 << 0x2) + sym(renorm)) +0x0.
  The `lw` at 0x18058 loads 4 bytes from ?.
  2 such `lbu` accesses load 1 byte from [-0x5fec] +0x359, including `lbu` at 0x18078, `lbu` at 0x180b0.
  2 such `lbu` accesses load 1 byte from [-0x5fec] +0x35a, including `lbu` at 0x18080, `lbu` at 0x180b8.
  The `jal` at 0x17f38 calls breakout_sd with a0=a0 at entry (arg0), a1=sp-8, a2=sp-64, a3=sp-60, a4=sp-56.
  The `jal` at 0x17f9c calls post_sig with a0=0x8, a1=?, a2=(a0 << 0x2), a3=(a0 << 0x3), a4=[-0x5fec], a5=[((a0 << 0x2) + sym(EXP_BIAS))], a7=([[-0x5fec]+844] | 0x10040).
  The `jal` at 0x17fa4 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x18014 calls round_w with a0=?, a1=?, a2=?, a3=0x34.
  The `jalr` at 0x18044 calls (unknown callee) with a0=sp-56, a1=?, a2=(a0 << 0x2), a3=[((a0 << 0x2) + sym(renorm))], a4=sym(renorm), a5=[((a0 << 0x2) + sym(EXP_BIAS))], a6=(sym(IMP_1BIT) + (a0 << 0x3)), a7=sym(IMP_1BIT).
  The `jal` at 0x18084 calls fpstore_s with a0=0x7fffffff, a1=[[-0x5fec]+858]:1, a2=?, a3=(a0 << 0x3), a4=[-0x5fec], a5=[((a0 << 0x2) + sym(EXP_BIAS))], a7=([[-0x5fec]+844] | 0x10040).
  The `jal` at 0x1808c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x180bc calls fpstore_s with a0=0x0, a1=[[-0x5fec]+858]:1, a2=?, a3=(a0 << 0x3), a5=[((a0 << 0x2) + sym(EXP_BIAS))], a6=(sym(IMP_1BIT) + (a0 << 0x3)), a7=sym(IMP_1BIT).
  The `jal` at 0x180c4 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x17f70 targets 0x17fb4, is taken when a4(?) < at(=[((a0 << 0x2) + sym(EXP_BIAS))]+32) (signed), and falls through when a4(?) >= at(=[((a0 << 0x2) + sym(EXP_BIAS))]+32) (signed).
  The `beq` branch at 0x17f94 targets 0x18078, is taken when (a6(=[[-0x5fec]+844]) & 0x800) == 0, and falls through when (a6(=[[-0x5fec]+844]) & 0x800) != 0.
  The `beq` branch at 0x17fac targets 0x18020 and is always taken.
  The `beq` branch at 0x17fb4 targets 0x1802c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x17fdc targets 0x18068, is taken when s0(=a0) == 0, and falls through when s0(=a0) != 0.
  The `beq` branch at 0x17fe4 targets 0x17ffc, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x17ff4 targets 0x18014 and is always taken.
  The `beq` branch at 0x18000 targets 0x1809c, is taken when a4(?) == a5(=-0x1), and falls through when a4(?) != a5(=-0x1).
  The `beq` branch at 0x1802c targets 0x180ac, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x18060 targets 0x17fd0 and is always taken.
  The `beq` branch at 0x18070 targets 0x17fe4 and is always taken.
  The `beq` branch at 0x18094 targets 0x18020 and is always taken.
  The `beq` branch at 0x180a4 targets 0x18014 and is always taken.
  The `beq` branch at 0x180cc targets 0x18020 and is always taken.
  The return at 0x18024 has v0 = one of ret(store_fpcsr), ret(round_w).
- `_cvtl_sd` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x180d4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x180d4-0x18304 (560 bytes).
  It occupies 560 bytes.
  The `ld` at 0x18114 loads 8 bytes from ((a0 << 0x3) + sym(MTWOP63)) +0x0.
  The `lw` at 0x18134 loads 4 bytes from ((a0 << 0x2) + sym(EXP_BIAS)) +0x0.
  4 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x1814c, `lw` at 0x18164, `lw` at 0x18230.
  2 such `lw` accesses load 4 bytes from [-0x5fec] +0x34c, including `lw` at 0x18154, `lw` at 0x18168.
  The `sw` at 0x18160 stores 4 bytes to [-0x5fec] +0x34c.
  The `ld` at 0x18198 loads 8 bytes from ((a0 << 0x3) + sym(IMP_1BIT)) +0x0.
  3 such `lbu` accesses load 1 byte from [-0x5fec] +0x359, including `lbu` at 0x18238, `lbu` at 0x182a8, `lbu` at 0x182e0.
  3 such `lbu` accesses load 1 byte from [-0x5fec] +0x35a, including `lbu` at 0x18240, `lbu` at 0x182b0, `lbu` at 0x182e8.
  The `lw` at 0x18270 loads 4 bytes from ((a0 << 0x2) + sym(renorm)) +0x0.
  The `lw` at 0x18288 loads 4 bytes from ?.
  The `jal` at 0x180f8 calls breakout_sd with a0=a0 at entry (arg0), a1=sp-8, a2=sp-64, a3=sp-60, a4=sp-56.
  The `jal` at 0x18178 calls post_sig with a0=0x8, a1=?, a2=(a0 << 0x2), a3=((a0 << 0x3) + sym(IMP_1BIT)), a4=[-0x5fec], a5=[((a0 << 0x2) + sym(EXP_BIAS))], a7=([[-0x5fec]+844] | 0x10040).
  The `jal` at 0x18180 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x181d0 calls round_l with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x18244 calls fpstore_d with a0=0x8000000000000000, a1=[[-0x5fec]+858]:1, a2=?, a3=((a0 << 0x3) + sym(IMP_1BIT)), a6=sym(IMP_1BIT), a7=(a0 << 0x3).
  The `jal` at 0x1824c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x18274 calls (unknown callee) with a0=sp-56, a1=[((a0 << 0x2) + sym(renorm))], a2=sym(renorm), a3=((a0 << 0x3) + sym(IMP_1BIT)), a5=[((a0 << 0x2) + sym(EXP_BIAS))], a6=sym(IMP_1BIT), a7=(a0 << 0x3).
  The `jal` at 0x182b4 calls fpstore_d with a0=0x7fffffffffffffff, a1=[[-0x5fec]+858]:1, a2=?, a3=((a0 << 0x3) + sym(IMP_1BIT)), a4=[-0x5fec], a5=[((a0 << 0x2) + sym(EXP_BIAS))], a7=([[-0x5fec]+844] | 0x10040).
  The `jal` at 0x182bc calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x182ec calls fpstore_d with a0=0x0, a1=[[-0x5fec]+858]:1, a2=?, a3=((a0 << 0x3) + sym(IMP_1BIT)), a5=[((a0 << 0x2) + sym(EXP_BIAS))], a6=sym(IMP_1BIT), a7=(a0 << 0x3).
  The `jal` at 0x182f4 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x18120 targets 0x18230, is taken when at(=[((a0 << 0x3) + sym(MTWOP63))]:8) == v0(=a1), and falls through when at(=[((a0 << 0x3) + sym(MTWOP63))]:8) != v0(=a1).
  The `bne` branch at 0x18144 targets 0x18190, is taken when a4(?) < v0(=[((a0 << 0x2) + sym(EXP_BIAS))]+63) (signed), and falls through when a4(?) >= v0(=[((a0 << 0x2) + sym(EXP_BIAS))]+63) (signed).
  The `beq` branch at 0x18170 targets 0x182a8, is taken when (a6(=[[-0x5fec]+844]) & 0x800) == 0, and falls through when (a6(=[[-0x5fec]+844]) & 0x800) != 0.
  The `beq` branch at 0x18188 targets 0x181dc and is always taken.
  The `beq` branch at 0x18190 targets 0x1825c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x181ac targets 0x18298, is taken when s0(=a0) == 0, and falls through when s0(=a0) != 0.
  The `beq` branch at 0x181c4 targets 0x181e8, is taken when a4(?) >= -0x1 (signed), and falls through when a4(?) < -0x1 (signed).
  The `beq` branch at 0x181f4 targets 0x182cc, is taken when a4(?) == a6(=-0x1), and falls through when a4(?) != a6(=-0x1).
  The `beq` branch at 0x181fc targets 0x18210, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x18208 targets 0x181d0 and is always taken.
  The `beq` branch at 0x18210 targets 0x18228, is taken when a4(?) == a3(=0x34), and falls through when a4(?) != a3(=0x34).
  The `beq` branch at 0x18228 targets 0x181d0 and is always taken.
  The `beq` branch at 0x18254 targets 0x181dc and is always taken.
  The `beq` branch at 0x1825c targets 0x182dc, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x18290 targets 0x181ac and is always taken.
  The `beq` branch at 0x182a0 targets 0x181b0 and is always taken.
  The `beq` branch at 0x182c4 targets 0x181dc and is always taken.
  The `beq` branch at 0x182d4 targets 0x181d0 and is always taken.
  The `beq` branch at 0x182fc targets 0x181dc and is always taken.
  The return at 0x181e0 has v0 = one of ret(store_fpcsr), ret(round_l).
- `_comp_sd` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x18304 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x18304-0x18548 (580 bytes).
  It occupies 580 bytes.
  The `lw` at 0x18318 loads 4 bytes from ((a0 << 0x2) + sym(EXP_SHIFT)) +0x0.
  The `lw` at 0x18328 loads 4 bytes from ((a0 << 0x2) + sym(SIGN_SHIFT)) +0x0.
  The `ld` at 0x18344 loads 8 bytes from ((a0 << 0x3) + sym(FRAC_MASK)) +0x0.
  The `lw` at 0x1835c loads 4 bytes from ((a0 << 0x2) + sym(EXP_MASK)) +0x0.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(EXP_NAN)) +0x0, including `lw` at 0x18394, `lw` at 0x183ec.
  4 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x183c8, `lw` at 0x18434, `lw` at 0x1844c.
  4 such `lw` accesses load 4 bytes from [-0x5fec] +0x34c, including `lw` at 0x183e0, `lw` at 0x1843c, `lw` at 0x18450.
  8 such `sw` accesses store 4 bytes to [-0x5fec] +0x34c, including `sw` at 0x183e8, `sw` at 0x18448, `sw` at 0x184cc.
  2 such `ld` accesses load 8 bytes from ((a0 << 0x3) + sym(SNANBIT_MASK)) +0x0, including `ld` at 0x183fc, `ld` at 0x1841c.
  The `jal` at 0x18460 calls post_sig with a0=0x8, a1=[-0x5fec], a2=0x10040, a3=a3 at entry (arg3), a6=[((a0 << 0x2) + sym(EXP_NAN))].
  The `jal` at 0x18468 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x184d0 calls store_fpcsr with a0=[-0x5fec], a1=?, a2=?, a3=a3 at entry (arg3), a6=[[-0x5fec]+844].
  The `beq` branch at 0x18380 targets 0x1838c, is taken when a4 == 0, and falls through when a4 != 0.
  The `bne` branch at 0x183a0 targets 0x183b0, is taken when a6(=[((a0 << 0x2) + sym(EXP_NAN))]) != t0(?), and falls through when a6(=[((a0 << 0x2) + sym(EXP_NAN))]) == t0(?).
  The `bne` branch at 0x183a8 targets 0x183c8, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bne` branch at 0x183b4 targets 0x18478, is taken when a6(=[((a0 << 0x2) + sym(EXP_NAN))]) != t1(?), and falls through when a6(=[((a0 << 0x2) + sym(EXP_NAN))]) == t1(?).
  The `beq` branch at 0x183bc targets 0x18478, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x183dc targets 0x18500, is taken when (a3 & 0x1) == 0, and falls through when (a3 & 0x1) != 0.
  The `bne` branch at 0x183f0 targets 0x1840c, is taken when a6(=[((a0 << 0x2) + sym(EXP_NAN))]) != t0(?), and falls through when a6(=[((a0 << 0x2) + sym(EXP_NAN))]) == t0(?).
  The `bne` branch at 0x18404 targets 0x18434, is taken when (at(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8) & t2(?)) != 0, and falls through when (at(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8) & t2(?)) == 0.
  The `bne` branch at 0x1840c targets 0x1842c, is taken when a6(=[((a0 << 0x2) + sym(EXP_NAN))]) != t1(?), and falls through when a6(=[((a0 << 0x2) + sym(EXP_NAN))]) == t1(?).
  The `bne` branch at 0x18424 targets 0x18434, is taken when (v0(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8) & t8(?)) != 0, and falls through when (v0(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8) & t8(?)) == 0.
  The `beq` branch at 0x1842c targets 0x18468, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x18458 targets 0x18468, is taken when (v1(=[[-0x5fec]+844]) & 0x800) == 0, and falls through when (v1(=[[-0x5fec]+844]) & 0x800) != 0.
  The `beq` branch at 0x18470 targets 0x184dc and is always taken.
  The `beq` branch at 0x18478 targets 0x18520, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x18480 targets 0x18498, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x1849c targets 0x184b4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x184b8 targets 0x184e4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x184c4 targets 0x1852c, is taken when (a3 & 0x4) == 0, and falls through when (a3 & 0x4) != 0.
  The `bne` branch at 0x184e4 targets 0x18510, is taken when a1(?) != a2(?), and falls through when a1(?) == a2(?).
  The `beq` branch at 0x184f0 targets 0x1853c, is taken when (a3 & 0x2) == 0, and falls through when (a3 & 0x2) != 0.
  The `beq` branch at 0x184f8 targets 0x184d0 and is always taken.
  The `beq` branch at 0x18508 targets 0x183ec and is always taken.
  The `beq` branch at 0x18518 targets 0x184d0 and is always taken.
  The `beq` branch at 0x18524 targets 0x1847c and is always taken.
  The `beq` branch at 0x18534 targets 0x184d0 and is always taken.
  The `beq` branch at 0x18540 targets 0x184d0 and is always taken.
  The return at 0x184dc has v0 = ret(store_fpcsr).
- `_nmadd_sd` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x18548 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x18548-0x18610 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0x18558 loads 4 bytes from abs 0xffffffffffffa014.
  The `lbu` at 0x18564 loads 1 byte from [-0x5fec] +0x359.
  The `sb` at 0x1857c stores 1 byte to [-0x5fec] +0x359.
  The `jal` at 0x185b4 calls breakout_and_test3_sd with a0=a0 at entry (arg0), a1=sp-24, a2=sp-96, a3=sp-92, a4=sp-88, a5=sp-16, a6=sp-80, a7=sp-76.
  The `jal` at 0x18600 calls madd with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x185bc targets 0x185d0, is taken when v0(=ret(breakout_and_test3_sd)) == 0, and falls through when v0(=ret(breakout_and_test3_sd)) != 0.
  The `beq` branch at 0x18608 targets 0x185c8 and is always taken.
  The return at 0x185c8 has v0 = one of ret(breakout_and_test3_sd), ret(madd).
- `_madd_sd` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x18610 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x18610-0x186d0 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0x18620 loads 4 bytes from abs 0xffffffffffffa014.
  The `lbu` at 0x1862c loads 1 byte from [-0x5fec] +0x359.
  The `sb` at 0x18644 stores 1 byte to [-0x5fec] +0x359.
  The `jal` at 0x1867c calls breakout_and_test3_sd with a0=a0 at entry (arg0), a1=sp-24, a2=sp-96, a3=sp-92, a4=sp-88, a5=sp-16, a6=sp-80, a7=sp-76.
  The `jal` at 0x186c0 calls madd with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x18684 targets 0x18698, is taken when v0(=ret(breakout_and_test3_sd)) == 0, and falls through when v0(=ret(breakout_and_test3_sd)) != 0.
  The `beq` branch at 0x186c8 targets 0x18690 and is always taken.
  The return at 0x18690 has v0 = one of ret(breakout_and_test3_sd), ret(madd).
- `_sqrt_sd` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x186d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x186d0-0x189b8 (744 bytes).
  It occupies 744 bytes.
  The `lw` at 0x18714 loads 4 bytes from ((a0 << 0x2) + sym(EXP_INF)) +0x0.
  4 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x18740, `lw` at 0x18758, `lw` at 0x188f0.
  4 such `lw` accesses load 4 bytes from [-0x5fec] +0x34c, including `lw` at 0x18748, `lw` at 0x1875c, `lw` at 0x188f8.
  2 such `sw` accesses store 4 bytes to [-0x5fec] +0x34c, including `sw` at 0x18754, `sw` at 0x18904.
  The `lw` at 0x187c0 loads 4 bytes from ((a0 << 0x2) + sym(round)) +0x0.
  The `lw` at 0x187fc loads 4 bytes from ((a0 << 0x2) + sym(EXP_BIAS)) +0x0.
  The `ld` at 0x18800 loads 8 bytes from (sym(IMP_1BIT) + (a0 << 0x3)) +0x0.
  The `lw` at 0x18824 loads 4 bytes from ((a0 << 0x2) + sym(EXP_SHIFT)) +0x0.
  2 such `ld` accesses load 8 bytes from (sym(QUIETNAN) + (a0 << 0x3)) +0x0, including `ld` at 0x188dc, `ld` at 0x1899c.
  The `lw` at 0x18944 loads 4 bytes from ((a0 << 0x2) + sym(renorm)) +0x0.
  The `lw` at 0x1895c loads 4 bytes from ((a0 << 0x2) + sym(EXP_MIN)) +0x0.
  The `jal` at 0x186f4 calls breakout_and_test_sd with a0=a0 at entry (arg0), a1=sp-8, a2=sp-64, a3=sp-60, a4=sp-56.
  The `jal` at 0x1876c calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=0x10040, a3=((a0 << 0x2) + sym(EXP_BIAS)), a5=sym(IMP_1BIT), a6=sym(IMP_1BIT), a7=sym(EXP_BIAS).
  The `jal` at 0x18774 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x187c4 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?, a4=[((a0 << 0x2) + sym(round))].
  The `jal` at 0x188b0 calls fpstore_sd with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(a0 << 0x3), a3=((a0 << 0x2) + sym(EXP_BIAS)), a5=sym(IMP_1BIT), a6=sym(IMP_1BIT), a7=sym(EXP_BIAS).
  The `jal` at 0x188b8 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x188d8 calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=((a0 << 0x2) + sym(EXP_BIAS)), a5=sym(IMP_1BIT), a6=sym(IMP_1BIT), a7=sym(EXP_BIAS).
  The `jal` at 0x188e0 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1891c calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=?, a3=([[-0x5fec]+844] | 0x10040), a4=[-0x5fec], a5=0x10040, a6=sym(IMP_1BIT), a7=sym(EXP_BIAS).
  The `jal` at 0x18924 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x18948 calls (unknown callee) with a0=sp-56, a1=?, a2=(a0 << 0x3), a3=((a0 << 0x2) + sym(EXP_BIAS)), a5=sym(IMP_1BIT), a6=[((a0 << 0x2) + sym(renorm))], a7=sym(EXP_BIAS).
  The `jal` at 0x18970 calls fpstore_sd with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(a0 << 0x3), a3=((a0 << 0x2) + sym(EXP_BIAS)), a5=sym(IMP_1BIT), a6=sym(IMP_1BIT), a7=sym(EXP_BIAS).
  The `jal` at 0x18978 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x18998 calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=([[-0x5fec]+844] | 0x10040), a4=[-0x5fec], a5=0x10040, a6=sym(IMP_1BIT), a7=sym(EXP_BIAS).
  The `jal` at 0x189a0 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x186fc targets 0x187cc, is taken when v0(=ret(breakout_and_test_sd)) != 0, and falls through when v0(=ret(breakout_and_test_sd)) == 0.
  The `bne` branch at 0x1872c targets 0x187e0, is taken when at(=[((a0 << 0x2) + sym(EXP_INF))]) != a1(?), and falls through when at(=[((a0 << 0x2) + sym(EXP_INF))]) == a1(?).
  The `beq` branch at 0x18738 targets 0x18970, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x18764 targets 0x188c8, is taken when (v1(=[[-0x5fec]+844]) & 0x800) == 0, and falls through when (v1(=[[-0x5fec]+844]) & 0x800) != 0.
  The `beq` branch at 0x1877c targets 0x187d0 and is always taken.
  The `beq` branch at 0x1878c targets 0x187a0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x187a0 targets 0x187bc, is taken when s0(=a0) != 0, and falls through when s0(=a0) == 0.
  The `beq` branch at 0x187e0 targets 0x188a4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x187ec targets 0x188f0, is taken when a0(?) == t0(=0x1), and falls through when a0(?) != t0(=0x1).
  The `beq` branch at 0x187f4 targets 0x1893c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bltz` branch at 0x18850 targets 0x18934, is taken when t1(=[((a0 << 0x2) + sym(EXP_SHIFT))]+1) < 0 (signed), and falls through when t1(=[((a0 << 0x2) + sym(EXP_SHIFT))]+1) >= 0 (signed).
  The `beq` branch at 0x18858 targets 0x189b0 and is always taken.
  The `bne` branch at 0x1887c targets 0x18784, is taken when t1(=[((a0 << 0x2) + sym(EXP_SHIFT))]+1) < a2(?) (signed), and falls through when t1(=[((a0 << 0x2) + sym(EXP_SHIFT))]+1) >= a2(?) (signed).
  The `bgez` branch at 0x18890 targets 0x18860, is taken when a7(?) >= 0 (signed), and falls through when a7(?) < 0 (signed).
  The `beq` branch at 0x1889c targets 0x18868 and is always taken.
  The `bne` branch at 0x188a8 targets 0x187e4, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x188c0 targets 0x187d0 and is always taken.
  The `beq` branch at 0x188e8 targets 0x187d0 and is always taken.
  The `beq` branch at 0x18914 targets 0x18988, is taken when (a2(=[[-0x5fec]+844]) & 0x800) == 0, and falls through when (a2(=[[-0x5fec]+844]) & 0x800) != 0.
  The `beq` branch at 0x1892c targets 0x187d0 and is always taken.
  The `beq` branch at 0x18934 targets 0x18784 and is always taken.
  The `beq` branch at 0x18968 targets 0x18814 and is always taken.
  The `beq` branch at 0x18980 targets 0x187d0 and is always taken.
  The `beq` branch at 0x189a8 targets 0x187d0 and is always taken.
  The `beq` branch at 0x189b0 targets 0x18888 and is always taken.
  The return at 0x187d8 has v0 = one of ret(store_fpcsr), ?.
- `_msub_sd` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x189b8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x189b8-0x18a7c (196 bytes).
  It occupies 196 bytes.
  The `lw` at 0x189c8 loads 4 bytes from abs 0xffffffffffffa014.
  The `lbu` at 0x189d4 loads 1 byte from [-0x5fec] +0x359.
  The `sb` at 0x189ec stores 1 byte to [-0x5fec] +0x359.
  The `jal` at 0x18a24 calls breakout_and_test3_sd with a0=a0 at entry (arg0), a1=sp-24, a2=sp-96, a3=sp-92, a4=sp-88, a5=sp-16, a6=sp-80, a7=sp-76.
  The `jal` at 0x18a6c calls madd with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x18a2c targets 0x18a40, is taken when v0(=ret(breakout_and_test3_sd)) == 0, and falls through when v0(=ret(breakout_and_test3_sd)) != 0.
  The `beq` branch at 0x18a74 targets 0x18a38 and is always taken.
  The return at 0x18a38 has v0 = one of ret(breakout_and_test3_sd), ret(madd).
- `_cvts_d` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x18a7c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x18a7c-0x18c38 (444 bytes).
  It occupies 444 bytes.
  5 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x18af8, `lw` at 0x18b10, `lw` at 0x18b88.
  2 such `lw` accesses load 4 bytes from [-0x5fec] +0x34c, including `lw` at 0x18b00, `lw` at 0x18b14.
  The `sw` at 0x18b0c stores 4 bytes to [-0x5fec] +0x34c.
  4 such `lbu` accesses load 1 byte from [-0x5fec] +0x359, including `lbu` at 0x18b8c, `lbu` at 0x18bac, `lbu` at 0x18bd8.
  4 such `lbu` accesses load 1 byte from [-0x5fec] +0x35a, including `lbu` at 0x18b90, `lbu` at 0x18bb4, `lbu` at 0x18be0.
  The `jal` at 0x18a98 calls breakout_sd with a0=0x1, a1=sp-16, a2=sp-48, a3=sp-44, a4=sp-40.
  The `jal` at 0x18ad0 calls round_s with a0=?, a1=?, a2=?, a3=0x0.
  The `jal` at 0x18b24 calls post_sig with a0=0x8, a1=[-0x5fec], a2=0x10040, a3=?, a4=[-0x5fec].
  The `jal` at 0x18b2c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x18b44 calls renorm_d with a0=sp-40, a1=?, a2=?, a3=?, a4=0x1.
  The `jal` at 0x18b94 calls fpstore_s with a0=?, a1=[[-0x5fec]+858]:1, a2=?, a3=?, a4=0x1.
  The `jal` at 0x18b9c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x18bb8 calls fpstore_s with a0=0x7fbfffff, a1=[[-0x5fec]+858]:1, a2=?, a3=?, a4=[-0x5fec].
  The `jal` at 0x18bc0 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x18be4 calls fpstore_s with a0=?, a1=[[-0x5fec]+858]:1, a2=?, a3=?, a4=0x1.
  The `jal` at 0x18bec calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x18c20 calls fpstore_s with a0=?, a1=[[-0x5fec]+858]:1, a2=?, a3=0x7f800000, a4=0x1.
  The `jal` at 0x18c28 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x18ab0 targets 0x18ae4, is taken when a1(?) == at(=0x7ff), and falls through when a1(?) != at(=0x7ff).
  The `beq` branch at 0x18ab8 targets 0x18b3c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x18af0 targets 0x18b60, is taken when (a2(?) & v0(=0x8000000000000)) == 0, and falls through when (a2(?) & v0(=0x8000000000000)) != 0.
  The `beq` branch at 0x18b1c targets 0x18bac, is taken when (v1(=[[-0x5fec]+844]) & 0x800) == 0, and falls through when (v1(=[[-0x5fec]+844]) & 0x800) != 0.
  The `beq` branch at 0x18b34 targets 0x18adc and is always taken.
  The `beq` branch at 0x18b3c targets 0x18bd0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x18b58 targets 0x18acc and is always taken.
  The `beq` branch at 0x18b60 targets 0x18c08, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x18b6c targets 0x18bfc, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x18ba4 targets 0x18adc and is always taken.
  The `beq` branch at 0x18bc8 targets 0x18adc and is always taken.
  The `beq` branch at 0x18bf4 targets 0x18adc and is always taken.
  The `beq` branch at 0x18c00 targets 0x18b88 and is always taken.
  The `beq` branch at 0x18c30 targets 0x18adc and is always taken.
  The return at 0x18adc has v0 = one of ret(round_s), ret(store_fpcsr).
- `checkfp` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x18c38 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x18c38-0x18e38 (512 bytes).
  It occupies 512 bytes.
  The `lw` at 0x18c50 loads 4 bytes from abs 0xffffffffffffa208.
  The `lw` at 0x18c74 loads 4 bytes from a0 (arg0 at entry) +0x1fc.
  The `lw` at 0x18c78 loads 4 bytes from a0 (arg0 at entry) +0x280.
  The `lb` at 0x18c7c loads 1 byte from [a0+508] +0x5c.
  The `sw` at 0x18ccc stores 4 bytes to [a0+640] +0x130.
  The `swc1` at 0x18cd8 stores 4 bytes to [a0+640] +0x124.
  The `swc1` at 0x18cdc stores 4 bytes to [a0+640] +0x11c.
  The `swc1` at 0x18ce0 stores 4 bytes to [a0+640] +0x114.
  The `swc1` at 0x18ce4 stores 4 bytes to [a0+640] +0x10c.
  The `swc1` at 0x18ce8 stores 4 bytes to [a0+640] +0x104.
  The `swc1` at 0x18cec stores 4 bytes to [a0+640] +0xfc.
  The `swc1` at 0x18cf0 stores 4 bytes to [a0+640] +0xf4.
  The `swc1` at 0x18cf4 stores 4 bytes to [a0+640] +0xec.
  The `swc1` at 0x18cf8 stores 4 bytes to [a0+640] +0xe4.
  The `swc1` at 0x18cfc stores 4 bytes to [a0+640] +0xdc.
  The `swc1` at 0x18d00 stores 4 bytes to [a0+640] +0xd4.
  The `swc1` at 0x18d04 stores 4 bytes to [a0+640] +0xcc.
  The `swc1` at 0x18d08 stores 4 bytes to [a0+640] +0xc4.
  The `swc1` at 0x18d0c stores 4 bytes to [a0+640] +0xbc.
  The `swc1` at 0x18d10 stores 4 bytes to [a0+640] +0xb4.
  The `swc1` at 0x18d14 stores 4 bytes to [a0+640] +0xac.
  The `swc1` at 0x18d18 stores 4 bytes to [a0+640] +0xa4.
  The `swc1` at 0x18d1c stores 4 bytes to [a0+640] +0x9c.
  The `swc1` at 0x18d20 stores 4 bytes to [a0+640] +0x94.
  The `swc1` at 0x18d24 stores 4 bytes to [a0+640] +0x8c.
  The `swc1` at 0x18d28 stores 4 bytes to [a0+640] +0x84.
  The `swc1` at 0x18d2c stores 4 bytes to [a0+640] +0x7c.
  The `swc1` at 0x18d30 stores 4 bytes to [a0+640] +0x74.
  The `swc1` at 0x18d34 stores 4 bytes to [a0+640] +0x6c.
  The `swc1` at 0x18d38 stores 4 bytes to [a0+640] +0x64.
  The `swc1` at 0x18d3c stores 4 bytes to [a0+640] +0x5c.
  The `swc1` at 0x18d40 stores 4 bytes to [a0+640] +0x54.
  The `swc1` at 0x18d44 stores 4 bytes to [a0+640] +0x4c.
  The `swc1` at 0x18d48 stores 4 bytes to [a0+640] +0x44.
  The `swc1` at 0x18d4c stores 4 bytes to [a0+640] +0x3c.
  The `swc1` at 0x18d50 stores 4 bytes to [a0+640] +0x34.
  The `swc1` at 0x18d58 stores 4 bytes to [a0+640] +0x2c.
  The `sdc1` at 0x18d5c stores 8 bytes to [a0+640] +0x120.
  The `sdc1` at 0x18d60 stores 8 bytes to [a0+640] +0x118.
  The `sdc1` at 0x18d64 stores 8 bytes to [a0+640] +0x110.
  The `sdc1` at 0x18d68 stores 8 bytes to [a0+640] +0x108.
  The `sdc1` at 0x18d6c stores 8 bytes to [a0+640] +0x100.
  The `sdc1` at 0x18d70 stores 8 bytes to [a0+640] +0xf8.
  The `sdc1` at 0x18d74 stores 8 bytes to [a0+640] +0xf0.
  The `sdc1` at 0x18d78 stores 8 bytes to [a0+640] +0xe8.
  The `sdc1` at 0x18d7c stores 8 bytes to [a0+640] +0xe0.
  The `sdc1` at 0x18d80 stores 8 bytes to [a0+640] +0xd8.
  The `sdc1` at 0x18d84 stores 8 bytes to [a0+640] +0xd0.
  The `sdc1` at 0x18d88 stores 8 bytes to [a0+640] +0xc8.
  The `sdc1` at 0x18d8c stores 8 bytes to [a0+640] +0xc0.
  The `sdc1` at 0x18d90 stores 8 bytes to [a0+640] +0xb8.
  The `sdc1` at 0x18d94 stores 8 bytes to [a0+640] +0xb0.
  The `sdc1` at 0x18d98 stores 8 bytes to [a0+640] +0xa8.
  The `sdc1` at 0x18d9c stores 8 bytes to [a0+640] +0xa0.
  The `sdc1` at 0x18da0 stores 8 bytes to [a0+640] +0x98.
  The `sdc1` at 0x18da4 stores 8 bytes to [a0+640] +0x90.
  The `sdc1` at 0x18da8 stores 8 bytes to [a0+640] +0x88.
  The `sdc1` at 0x18dac stores 8 bytes to [a0+640] +0x80.
  The `sdc1` at 0x18db0 stores 8 bytes to [a0+640] +0x78.
  The `sdc1` at 0x18db4 stores 8 bytes to [a0+640] +0x70.
  The `sdc1` at 0x18db8 stores 8 bytes to [a0+640] +0x68.
  The `sdc1` at 0x18dbc stores 8 bytes to [a0+640] +0x60.
  The `sdc1` at 0x18dc0 stores 8 bytes to [a0+640] +0x58.
  The `sdc1` at 0x18dc4 stores 8 bytes to [a0+640] +0x50.
  The `sdc1` at 0x18dc8 stores 8 bytes to [a0+640] +0x48.
  The `sdc1` at 0x18dcc stores 8 bytes to [a0+640] +0x40.
  The `sdc1` at 0x18dd0 stores 8 bytes to [a0+640] +0x38.
  The `sdc1` at 0x18dd4 stores 8 bytes to [a0+640] +0x30.
  The `sdc1` at 0x18dd8 stores 8 bytes to [a0+640] +0x28.
  The `lw` at 0x18df4 loads 4 bytes from abs 0xffffffffffffa014.
  The `sw` at 0x18df8 stores 4 bytes to abs 0xffffffffffffa208.
  The `lw` at 0x18e04 loads 4 bytes from [-0x5fec] +0x280.
  The `ld` at 0x18e10 loads 8 bytes from [[-0x5fec]+640] +0x248.
  The `sd` at 0x18e1c stores 8 bytes to [[-0x5fec]+640] +0x248.
  The `jal` at 0x18c44 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x18e20 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `beq` branch at 0x18c5c targets 0x18e20, is taken when v0(=[-0x5df8]) == 0, and falls through when v0(=[-0x5df8]) != 0.
  The `bne` branch at 0x18c64 targets 0x18e20, is taken when a0 != v0(=[-0x5df8]), and falls through when a0 == v0(=[-0x5df8]).
  The `beq` branch at 0x18c6c targets 0x18df4, is taken when a1 == at(=0x1), and falls through when a1 != at(=0x1).
  The `beq` branch at 0x18c84 targets 0x18c90, is taken when (t0(=[[a0+508]+92]:1) & 0xc) == 0, and falls through when (t0(=[[a0+508]+92]:1) & 0xc) != 0.
  The `beq` branch at 0x18cb4 targets 0x18cd0, is taken when a1 == at(=0x2), and falls through when a1 != at(=0x2).
  The `bne` branch at 0x18cd0 targets 0x18d5c, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x18d54 targets 0x18ddc and is always taken.
  The `beq` branch at 0x18dfc targets 0x18e20, is taken when t1(=[-0x5fec]) == 0, and falls through when t1(=[-0x5fec]) != 0.
  The return at 0x18e30 has v0 = ret(splx).
- `fpunit_fpstore_s` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x18e38 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x18e38-0x18fd0 (408 bytes).
  It occupies 408 bytes.
  The `lw` at 0x18e44 loads 4 bytes from sym(.rodata) +0x2470.
  Calls .text+101968 via reloc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x18e48).
  The instructions from 0x18e50 to 0x18fcc are not reached by any path from the entry, and their branches are not listed.
- `fpunit_fpstore_d` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x18fd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x18fd0-0x192c4 (756 bytes).
  It occupies 756 bytes.
  The `lw` at 0x18fe4 loads 4 bytes from sym(.rodata) +0x24f0.
  The `lw` at 0x18ff8 loads 4 bytes from sym(.rodata) +0x2530.
  Calls .text+102404 via reloc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x18fe8).
  Calls .text+102724 via reloc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x18ffc).
  The `bne` branch at 0x18fd0 targets 0x18ff0, is taken when a2 != 0, and falls through when a2 == 0.
  The instructions from 0x19004 to 0x192c0 are not reached by any path from the entry, and their branches are not listed.
- `longway` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x192c4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x192c4-0x194f0 (556 bytes).
  It occupies 556 bytes.
  2 such `lb` accesses load 1 byte from abs 0xffffffffffffa03f, including `lb` at 0x192c4, `lb` at 0x19480.
  9 such `sd` accesses store 8 bytes to ?, including `sd` at 0x192e8, `sd` at 0x192ec, `sd` at 0x192f0.
  The `lw` at 0x19364 loads 4 bytes from sym(dump_in_progress) +0x0.
  The `lw` at 0x19370 loads 4 bytes from abs 0xffffffffffffa018.
  The `lw` at 0x1937c loads 4 bytes from [-0x5fe8] +0xb4.
  The `lw` at 0x193d0 loads 4 bytes from abs 0xffffffffffffa244.
  The `lw` at 0x193f8 loads 4 bytes from abs 0xffffffffffffa014.
  The `lw` at 0x193fc loads 4 bytes from [-0x5fec] +0x280.
  The `sd` at 0x19404 stores 8 bytes to [[-0x5fec]+640] +0x220.
  The `sd` at 0x1940c stores 8 bytes to [[-0x5fec]+640] +0x228.
  The `sd` at 0x19410 stores 8 bytes to [[-0x5fec]+640] +0x230.
  2 such `sb` accesses store 1 byte to abs 0xffffffffffffa03f, including `sb` at 0x19420, `sb` at 0x1948c.
  The `sw` at 0x19470 stores 4 bytes to sym(ovflwword) +0x0.
  The `lw` at 0x19494 loads 4 bytes from abs 0xffffffffffffa1a4.
  The `sw` at 0x194b0 stores 4 bytes to abs 0xffffffffffffa2e0.
  The `ld` at 0x194b4 loads 8 bytes from abs 0xffffffffffffa2d0.
  The `sd` at 0x194c0 stores 8 bytes to abs 0xffffffffb4000018.
  Calls ecommon via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x192fc).
  Calls ecommon via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x19324).
  Calls ecommon via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x193ac).
  Calls ecommon via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x19424).
  The `jal` at 0x19490 calls printf with a0=sym(.data)+21504, a1=?, a2=sp, a3=?.
  The `jal` at 0x194a4 calls printf with a0=sym(.data)+22120, a1=ra at entry, a2=[-0x5fc1]:1, a3=?.
  The `jal` at 0x194e0 calls panic with a0=sym(.data)+22160, a1=?, a2=?, a3=?.
  Calls _baduk via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x194e8).
  The `beq` branch at 0x192c8 targets 0x193b4, is taken when k0(=[-0x5fc1]:1) == 0, and falls through when k0(=[-0x5fc1]:1) != 0.
  The `beq` branch at 0x192d0 targets 0x1935c, is taken when k0(=[-0x5fc1]:1-1) == 0, and falls through when k0(=[-0x5fc1]:1-1) != 0.
  The `bne` branch at 0x192d8 targets 0x19304, is taken when k0(=[-0x5fc1]:1-2) != 0, and falls through when k0(=[-0x5fc1]:1-2) == 0.
  The `bne` branch at 0x19368 targets 0x1938c, is taken when k0(=[sym(dump_in_progress)]) != 0, and falls through when k0(=[sym(dump_in_progress)]) == 0.
  The `beq` branch at 0x19374 targets 0x1938c, is taken when k0(=[-0x5fe8]) == 0, and falls through when k0(=[-0x5fe8]) != 0.
  The `beq` branch at 0x19384 targets 0x1942c, is taken when k0(=[[-0x5fe8]+180]) >= sp(=sp) (unsigned), and falls through when k0(=[[-0x5fe8]+180]) < sp(=sp) (unsigned).
  The `beq` branch at 0x193f0 targets 0x194e8, is taken when (k0(?) & 0x2) == 0, and falls through when (k0(?) & 0x2) != 0.
  The `beq` branch at 0x19430 targets 0x19468 and is always taken.
  The instructions from 0x1932c to 0x19358 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x19438 to 0x19464 are not reached by any path from the entry, and their branches are not listed.
- `stkovflw` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1942c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1942c-0x19438 (12 bytes).
  It occupies 12 bytes.
  The `beq` branch at 0x19430 targets 0x19468 and is always taken.
- `stkundflw` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x19438 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x19438-0x19444 (12 bytes).
  It occupies 12 bytes.
  The `beq` branch at 0x1943c targets 0x19468 and is always taken.
- `stkscr1` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x19444 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x19444-0x19450 (12 bytes).
  It occupies 12 bytes.
  The `beq` branch at 0x19448 targets 0x19468 and is always taken.
- `stkscr2` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x19450 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x19450-0x1945c (12 bytes).
  It occupies 12 bytes.
  The `beq` branch at 0x19454 targets 0x19468 and is always taken.
- `_cvtd_s` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x194f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x194f0-0x1969c (428 bytes).
  It occupies 428 bytes.
  4 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x19530, `lw` at 0x19578, `lw` at 0x19594.
  4 such `lbu` accesses load 1 byte from [-0x5fec] +0x359, including `lbu` at 0x19544, `lbu` at 0x195f8, `lbu` at 0x19634.
  4 such `lbu` accesses load 1 byte from [-0x5fec] +0x35a, including `lbu` at 0x19554, `lbu` at 0x19604, `lbu` at 0x19638.
  2 such `lw` accesses load 4 bytes from [-0x5fec] +0x34c, including `lw` at 0x19584, `lw` at 0x19598.
  The `sw` at 0x19590 stores 4 bytes to [-0x5fec] +0x34c.
  The `jal` at 0x1950c calls breakout_sd with a0=0x0, a1=sp-16, a2=sp-48, a3=sp-44, a4=sp-40.
  The `jal` at 0x19558 calls fpstore_d with a0=?, a1=[[-0x5fec]+858]:1, a2=?, a3=?.
  The `jal` at 0x19560 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x195a8 calls post_sig with a0=0x8, a1=0x10000, a2=?, a3=[-0x5fec], a4=[-0x5fec], a6=([[-0x5fec]+844] | 0x10040), a7=0x10040.
  The `jal` at 0x195b0 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x195c8 calls renorm_s with a0=sp-40, a1=?, a2=?, a3=?.
  The `jal` at 0x1961c calls fpstore_d with a0=?, a1=[[-0x5fec]+858]:1, a2=?, a3=[-0x5fec], a4=0x7ff0000000000000.
  The `jal` at 0x19624 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x19640 calls fpstore_d with a0=0x7ff7ffffffffffff, a1=[[-0x5fec]+858]:1, a2=?, a3=[-0x5fec], a4=[-0x5fec], a6=([[-0x5fec]+844] | 0x10040), a7=0x10040.
  The `jal` at 0x19648 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1966c calls fpstore_d with a0=?, a1=[[-0x5fec]+858]:1, a2=?, a3=?.
  The `jal` at 0x19674 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x19684 calls fpstore_d with a0=?, a1=[[-0x5fec]+858]:1, a2=?, a3=[-0x5fec], a4=0x7ff0000000000000.
  The `jal` at 0x1968c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1951c targets 0x19574, is taken when a4(?) == at(=0xff), and falls through when a4(?) != at(=0xff).
  The `beq` branch at 0x19524 targets 0x195c0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bgez` branch at 0x1957c targets 0x195f4, is taken when a4(?) >= 0 (signed), and falls through when a4(?) < 0 (signed).
  The `beq` branch at 0x195a0 targets 0x19634, is taken when (a5(=[[-0x5fec]+844]) & 0x800) == 0, and falls through when (a5(=[[-0x5fec]+844]) & 0x800) != 0.
  The `beq` branch at 0x195b8 targets 0x1956c and is always taken.
  The `beq` branch at 0x195c0 targets 0x19658, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x195ec targets 0x19530 and is always taken.
  The `beq` branch at 0x1960c targets 0x19684, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x1962c targets 0x1956c and is always taken.
  The `beq` branch at 0x19650 targets 0x1956c and is always taken.
  The `beq` branch at 0x1967c targets 0x1956c and is always taken.
  The `beq` branch at 0x19694 targets 0x1956c and is always taken.
  The return at 0x1956c has v0 = ret(store_fpcsr).
- `round_w` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1969c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1969c-0x19800 (356 bytes).
  It occupies 356 bytes.
  4 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x196e0, `lw` at 0x1975c, `lw` at 0x197a0.
  The `lbu` at 0x196f4 loads 1 byte from [-0x5fec] +0x358.
  The `lb` at 0x19718 loads 1 byte from ?.
  4 such `lw` accesses load 4 bytes from [-0x5fec] +0x34c, including `lw` at 0x19750, `lw` at 0x19760, `lw` at 0x19794.
  2 such `sw` accesses store 4 bytes to [-0x5fec] +0x34c, including `sw` at 0x19758, `sw` at 0x1979c.
  2 such `lbu` accesses load 1 byte from [-0x5fec] +0x359, including `lbu` at 0x197c0, `lbu` at 0x197e4.
  2 such `lbu` accesses load 1 byte from [-0x5fec] +0x35a, including `lbu` at 0x197c8, `lbu` at 0x197ec.
  The `jal` at 0x19770 calls post_sig with a0=0x8, a1=0x7fff0000, a2=?, a3=?, a4=[-0x5fec], a7=([[-0x5fec]+844] | 0x10040).
  The `jal` at 0x19778 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x197b4 calls post_sig with a0=0x8, a1=0x7fff0000, a2=?, a3=?, a4=[-0x5fec], a6=(a0 << 0x3), a7=0xffffffff80000000.
  The `jal` at 0x197cc calls fpstore_s with a0=?, a1=[[-0x5fec]+858]:1, a2=?, a3=?, a4=[-0x5fec].
  The `jal` at 0x197d4 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x197f0 calls fpstore_s with a0=0x7fffffff, a1=[[-0x5fec]+858]:1, a2=?, a3=?, a4=[-0x5fec], a7=([[-0x5fec]+844] | 0x10040).
  The `beq` branch at 0x196c4 targets 0x196dc, is taken when (a2 & at(=0x7fffffffffffffff)) == 0, and falls through when (a2 & at(=0x7fffffffffffffff)) != 0.
  The `beq` branch at 0x19724 targets 0x19730, is taken when a0 == 0, and falls through when a0 != 0.
  The `bne` branch at 0x19740 targets 0x19750, is taken when s0(?) < a7(=0xffffffff80000000) (signed), and falls through when s0(?) >= a7(=0xffffffff80000000) (signed).
  The `beq` branch at 0x19748 targets 0x1978c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x19768 targets 0x197e4, is taken when (a6(=[[-0x5fec]+844]) & 0x800) == 0, and falls through when (a6(=[[-0x5fec]+844]) & 0x800) != 0.
  The `beq` branch at 0x1978c targets 0x197c0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x197ac targets 0x197c0, is taken when (t1(=[[-0x5fec]+844]) & 0x80) == 0, and falls through when (t1(=[[-0x5fec]+844]) & 0x80) != 0.
  The `beq` branch at 0x197dc targets 0x19784 and is always taken.
  The `beq` branch at 0x197f8 targets 0x19778 and is always taken.
  The return at 0x19784 has v0 = ret(store_fpcsr).
- `round_s` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x19800 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x19800-0x1a104 (2308 bytes).
  It occupies 2308 bytes.
  21 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x19894, `lw` at 0x198f0, `lw` at 0x19918.
  3 such `lbu` accesses load 1 byte from [-0x5fec] +0x358, including `lbu` at 0x198ac, `lbu` at 0x1992c, `lbu` at 0x19cc4.
  9 such `lbu` accesses load 1 byte from [-0x5fec] +0x359, including `lbu` at 0x198b0, `lbu` at 0x1998c, `lbu` at 0x19a2c.
  The `lb` at 0x198d8 loads 1 byte from (((a0 << 0x3) + ([[-0x5fec]+856]:1 << 0x4)) + sym(underflow_tab)) +0x0.
  19 such `lw` accesses load 4 bytes from [-0x5fec] +0x34c, including `lw` at 0x198e4, `lw` at 0x198f4, `lw` at 0x1997c.
  12 such `sw` accesses store 4 bytes to [-0x5fec] +0x34c, including `sw` at 0x198ec, `sw` at 0x19984, `sw` at 0x19ab8.
  7 such `lb` accesses load 1 byte from ?, including `lb` at 0x1994c, `lb` at 0x19a9c, `lb` at 0x19b88.
  6 such `lbu` accesses load 1 byte from [-0x5fec] +0x35a, including `lbu` at 0x199bc, `lbu` at 0x19b04, `lbu` at 0x19c3c.
  3 such `lw` accesses load 4 bytes from [-0x5fec] +0x280, including `lw` at 0x199d4, `lw` at 0x19c4c, `lw` at 0x19d5c.
  3 such `sd` accesses store 8 bytes to [[-0x5fec]+640] +0x128, including `sd` at 0x199e0, `sd` at 0x19c50, `sd` at 0x19d60.
  The `lwu` at 0x19bfc loads 4 bytes from (sym(.data)+22240 + ((a0 + ([[-0x5fec]+856]:1 + [[-0x5fec]+856]:1)) << 0x2)) +0x0.
  The `lb` at 0x19d90 loads 1 byte from (sym(round_bit) + ((a0 << 0x3) + ([[-0x5fec]+856]:1 << 0x4))) +0x1.
  The `jal` at 0x19904 calls post_sig with a0=0x8, a1=?, a2=([[-0x5fec]+844] | 0x2008), a3=?, a5=[-0x5fec].
  The `jal` at 0x199c0 calls fpstore_s with a0=?, a1=[[-0x5fec]+858]:1, a2=?, a3=?, a5=[-0x5fec], a7=(a1 + one of 0xc0, 0xc1).
  The `jal` at 0x199e4 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x19ad0 calls post_sig with a0=0x8, a1=?, a2=?, a3=?, a5=[-0x5fec].
  The `jal` at 0x19b08 calls fpstore_s with a0=?, a1=[[-0x5fec]+858]:1, a2=?, a3=[[-0x5fec]+857]:1, a5=[-0x5fec].
  The `jal` at 0x19b10 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x19c00 calls post_sig with a0=0x8, a1=[[-0x5fec]+856]:1, a2=?, a3=?, a5=[-0x5fec], a6=sym(round_bit).
  The `jal` at 0x19c40 calls fpstore_s with a0=?, a1=[[-0x5fec]+858]:1, a2=?, a3=?, a5=[-0x5fec].
  The `jal` at 0x19c6c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x19c9c calls post_sig with a0=0x8, a1=[[-0x5fec]+844], a2=?, a3=?, a5=[-0x5fec], a6=sym(round_bit).
  The `jal` at 0x19d50 calls fpstore_s with a0=?, a1=[[-0x5fec]+858]:1, a2=?, a3=[[-0x5fec]+857]:1, a5=[-0x5fec], a7=(a1 + one of 0xc0, 0xc1).
  The `jal` at 0x19d64 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x19dec calls fpstore_s with a0=?, a1=[[-0x5fec]+858]:1, a2=?, a3=[[-0x5fec]+857]:1, a5=[-0x5fec].
  The `jal` at 0x19df4 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x19e20 calls post_sig with a0=0x8, a1=[[-0x5fec]+856]:1, a2=?, a3=?, a5=[-0x5fec], a6=sym(round_bit).
  The `jal` at 0x19e4c calls fpstore_s with a0=[(sym(.data)+22240 + ((a0 + ([[-0x5fec]+856]:1 + [[-0x5fec]+856]:1)) << 0x2))], a1=[[-0x5fec]+858]:1, a2=?, a3=[[-0x5fec]+857]:1, a5=[-0x5fec].
  The `jal` at 0x19e54 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x19fcc calls post_sig with a0=0x8, a1=?, a2=?, a3=?, a5=[-0x5fec], a6=sym(round_bit).
  The `beq` branch at 0x19838 targets 0x19858, is taken when (a6(=0x7fffffffffffffff) & a3) == 0, and falls through when (a6(=0x7fffffffffffffff) & a3) != 0.
  The `beq` branch at 0x1986c targets 0x1988c, is taken when (a6(=0x7fffffffffffffff) & s1(?)) == 0, and falls through when (a6(=0x7fffffffffffffff) & s1(?)) != 0.
  The `beq` branch at 0x198a8 targets 0x19a1c, is taken when s3(=a1) >= -0x96 (signed), and falls through when s3(=a1) < -0x96 (signed).
  The `beq` branch at 0x198b8 targets 0x19d7c, is taken when (v0(=[[-0x5fec]+857]:1) & 0x2) == 0, and falls through when (v0(=[[-0x5fec]+857]:1) & 0x2) != 0.
  The `beq` branch at 0x198dc targets 0x19d74, is taken when v1(=[(((a0 << 0x3) + ([[-0x5fec]+856]:1 << 0x4)) + sym(underflow_tab))]:1) == 0, and falls through when v1(=[(((a0 << 0x3) + ([[-0x5fec]+856]:1 << 0x4)) + sym(underflow_tab))]:1) != 0.
  The `beq` branch at 0x198fc targets 0x19ab8, is taken when (a0(=[[-0x5fec]+844]) & 0x100) == 0, and falls through when (a0(=[[-0x5fec]+844]) & 0x100) != 0.
  The `bgez` branch at 0x19964 targets 0x19974, is taken when a3(?) >= 0 (signed), and falls through when a3(?) < 0 (signed).
  The `beq` branch at 0x19974 targets 0x1998c, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x19994 targets 0x199e4, is taken when (a3(=[[-0x5fec]+857]:1) & 0x4) == 0, and falls through when (a3(=[[-0x5fec]+857]:1) & 0x4) != 0.
  The `beq` branch at 0x19a20 targets 0x19b20, is taken when s3(=a1) >= -0x7e (signed), and falls through when s3(=a1) < -0x7e (signed).
  The `beq` branch at 0x19a44 targets 0x19eb0, is taken when (a3(=[[-0x5fec]+857]:1) & 0x2) == 0, and falls through when (a3(=[[-0x5fec]+857]:1) & 0x2) != 0.
  The `bne` branch at 0x19a58 targets 0x198c4, is taken when s0(?) < t8(=0x7fffff) (unsigned), and falls through when s0(?) >= t8(=0x7fffff) (unsigned).
  The `beq` branch at 0x19a94 targets 0x19f58, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x19aa0 targets 0x19fe0, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x19aa8 targets 0x19ff0, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x19ac8 targets 0x19adc, is taken when (t0(=[[-0x5fec]+844]) & 0x80) == 0, and falls through when (t0(=[[-0x5fec]+844]) & 0x80) != 0.
  The `bne` branch at 0x19ae4 targets 0x19af8, is taken when (a3(=[[-0x5fec]+857]:1) & 0x4) != 0, and falls through when (a3(=[[-0x5fec]+857]:1) & 0x4) == 0.
  The `bne` branch at 0x19af0 targets 0x19b10, is taken when (a3(=[[-0x5fec]+857]:1) & 0x8) != 0, and falls through when (a3(=[[-0x5fec]+857]:1) & 0x8) == 0.
  The `beq` branch at 0x19b18 targets 0x199f0 and is always taken.
  The `beq` branch at 0x19b20 targets 0x19f3c, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x19b2c targets 0x19b50, is taken when (a6(=0x7fffffffffffffff) & s4(?)) == 0, and falls through when (a6(=0x7fffffffffffffff) & s4(?)) != 0.
  The `beq` branch at 0x19b94 targets 0x19f44, is taken when s3(=a1) == a3(=-0x7f), and falls through when s3(=a1) != a3(=-0x7f).
  The `bgez` branch at 0x19ba0 targets 0x19bb8, is taken when t9(?) >= 0 (signed), and falls through when t9(?) < 0 (signed).
  The `beq` branch at 0x19bb8 targets 0x19e64, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x19bc0 targets 0x19c7c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x19bf8 targets 0x19e04, is taken when (a0(=[[-0x5fec]+844]) & 0x200) == 0, and falls through when (a0(=[[-0x5fec]+844]) & 0x200) != 0.
  The `beq` branch at 0x19c14 targets 0x19c54, is taken when (a3(=[[-0x5fec]+857]:1) & 0x4) == 0, and falls through when (a3(=[[-0x5fec]+857]:1) & 0x4) != 0.
  The `beq` branch at 0x19c54 targets 0x19c6c, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x19c74 targets 0x199f0 and is always taken.
  The `beq` branch at 0x19c8c targets 0x19dc0, is taken when (a1(=[[-0x5fec]+844]) & 0x100) == 0, and falls through when (a1(=[[-0x5fec]+844]) & 0x100) != 0.
  The `bgez` branch at 0x19cfc targets 0x19d0c, is taken when t9(?) >= 0 (signed), and falls through when t9(?) < 0 (signed).
  The `beq` branch at 0x19d0c targets 0x19d24, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x19d2c targets 0x19d64, is taken when (a3(=[[-0x5fec]+857]:1) & 0x4) == 0, and falls through when (a3(=[[-0x5fec]+857]:1) & 0x4) != 0.
  The `beq` branch at 0x19d6c targets 0x199f0 and is always taken.
  The `beq` branch at 0x19d74 targets 0x198e4 and is always taken.
  The `bgez` branch at 0x19da0 targets 0x19f88, is taken when a4(?) >= 0 (signed), and falls through when a4(?) < 0 (signed).
  The `beq` branch at 0x19db8 targets 0x19bb4 and is always taken.
  The `beq` branch at 0x19dc4 targets 0x19ff8, is taken when a0(=one of 0x0, 0x1) == a2(=0x1), and falls through when a0(=one of 0x0, 0x1) != a2(=0x1).
  The `bne` branch at 0x19dd4 targets 0x19de8, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `bne` branch at 0x19de0 targets 0x19df4, is taken when (a3(=[[-0x5fec]+857]:1) & 0x8) != 0, and falls through when (a3(=[[-0x5fec]+857]:1) & 0x8) == 0.
  The `beq` branch at 0x19dfc targets 0x199f0 and is always taken.
  The `beq` branch at 0x19e18 targets 0x19e2c, is taken when (ra(=[[-0x5fec]+844]) & 0x80) == 0, and falls through when (ra(=[[-0x5fec]+844]) & 0x80) != 0.
  The `bne` branch at 0x19e34 targets 0x19e48, is taken when (a3(=[[-0x5fec]+857]:1) & 0x4) != 0, and falls through when (a3(=[[-0x5fec]+857]:1) & 0x4) == 0.
  The `bne` branch at 0x19e40 targets 0x19e54, is taken when (a3(=[[-0x5fec]+857]:1) & 0x8) != 0, and falls through when (a3(=[[-0x5fec]+857]:1) & 0x8) == 0.
  The `beq` branch at 0x19e5c targets 0x199f0 and is always taken.
  The `bne` branch at 0x19e64 targets 0x19bc8, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x19e94 targets 0x1a0a4, is taken when (t9(=[[-0x5fec]+844]) & 0x100) == 0, and falls through when (t9(=[[-0x5fec]+844]) & 0x100) != 0.
  The `bne` branch at 0x19ea0 targets 0x19dcc, is taken when a0(=one of 0x0, 0x1) != a2(=0x1), and falls through when a0(=one of 0x0, 0x1) == a2(=0x1).
  The `beq` branch at 0x19ea8 targets 0x19fb0 and is always taken.
  The `beq` branch at 0x19ec4 targets 0x1a00c, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x19ecc targets 0x19ef0, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x19f2c targets 0x1a07c, is taken when (a0(=0x800000) & s0(?)) == 0, and falls through when (a0(=0x800000) & s0(?)) != 0.
  The `beq` branch at 0x19f34 targets 0x19db4 and is always taken.
  The `beq` branch at 0x19f3c targets 0x19b28 and is always taken.
  The `bltz` branch at 0x19f48 targets 0x19db4, is taken when a7(?) < 0 (signed), and falls through when a7(?) >= 0 (signed).
  The `beq` branch at 0x19f50 targets 0x19ba0 and is always taken.
  The `beq` branch at 0x19f5c targets 0x1a0ac, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x19f64 targets 0x1a0d4, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x19f6c targets 0x19ab0, is taken when a0(?) != t1(=0x1), and falls through when a0(?) == t1(=0x1).
  The `bltz` branch at 0x19f78 targets 0x19ab0, is taken when t2(?) < 0 (signed), and falls through when t2(?) >= 0 (signed).
  The `beq` branch at 0x19f80 targets 0x198e4 and is always taken.
  The `bne` branch at 0x19f98 targets 0x19c94, is taken when (a1(=[[-0x5fec]+844]) & 0x100) != 0, and falls through when (a1(=[[-0x5fec]+844]) & 0x100) == 0.
  The `beq` branch at 0x19fc4 targets 0x19fd8, is taken when (t9(=[[-0x5fec]+844]) & 0x80) == 0, and falls through when (t9(=[[-0x5fec]+844]) & 0x80) != 0.
  The `beq` branch at 0x19fd8 targets 0x19dd0 and is always taken.
  The `beq` branch at 0x19fe0 targets 0x1a0cc, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x19fe8 targets 0x198e4 and is always taken.
  The `beq` branch at 0x19ff0 targets 0x198e4 and is always taken.
  The `bne` branch at 0x19ffc targets 0x19dcc, is taken when a0(=one of 0x0, 0x1) != a2(=0x1), and falls through when a0(=one of 0x0, 0x1) == a2(=0x1).
  The `beq` branch at 0x1a004 targets 0x19fb0 and is always taken.
  The `beq` branch at 0x1a00c targets 0x1a030, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x1a06c targets 0x1a0dc, is taken when (a0(=0x800000) & s0(?)) == 0, and falls through when (a0(=0x800000) & s0(?)) != 0.
  The `beq` branch at 0x1a074 targets 0x19f34 and is always taken.
  The `bne` branch at 0x1a08c targets 0x19c94, is taken when (a1(=[[-0x5fec]+844]) & 0x100) != 0, and falls through when (a1(=[[-0x5fec]+844]) & 0x100) == 0.
  The `beq` branch at 0x1a09c targets 0x19fac and is always taken.
  The `beq` branch at 0x1a0a4 targets 0x19ea0 and is always taken.
  The `beq` branch at 0x1a0ac targets 0x1a0fc, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x1a0b4 targets 0x19fe8, is taken when a0(?) != t9(=0x1), and falls through when a0(?) == t9(=0x1).
  The `bltz` branch at 0x1a0bc targets 0x19fe8, is taken when ra(?) < 0 (signed), and falls through when ra(?) >= 0 (signed).
  The `beq` branch at 0x1a0c4 targets 0x198e4 and is always taken.
  The `beq` branch at 0x1a0cc targets 0x198e4 and is always taken.
  The `beq` branch at 0x1a0d4 targets 0x198e4 and is always taken.
  The `bne` branch at 0x1a0ec targets 0x19c94, is taken when (a1(=[[-0x5fec]+844]) & 0x100) != 0, and falls through when (a1(=[[-0x5fec]+844]) & 0x100) == 0.
  The `beq` branch at 0x1a0f4 targets 0x19dd4 and is always taken.
  The `beq` branch at 0x1a0fc targets 0x198e4 and is always taken.
  The return at 0x19a14 has v0 = ret(store_fpcsr).
- `maddrnd_s` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1a104 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1a104-0x1a798 (1684 bytes).
  It occupies 1684 bytes.
  12 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x1a188, `lw` at 0x1a1e4, `lw` at 0x1a384.
  The `lbu` at 0x1a19c loads 1 byte from [-0x5fec] +0x358.
  5 such `lbu` accesses load 1 byte from [-0x5fec] +0x359, including `lbu` at 0x1a1a0, `lbu` at 0x1a244, `lbu` at 0x1a3bc.
  The `lb` at 0x1a1c4 loads 1 byte from ((([[-0x5fec]+856]:1 << 0x4) + (a0 << 0x3)) + sym(underflow_tab)) +0x0.
  15 such `lw` accesses load 4 bytes from [-0x5fec] +0x34c, including `lw` at 0x1a1d8, `lw` at 0x1a1e8, `lw` at 0x1a378.
  10 such `sw` accesses store 4 bytes to [-0x5fec] +0x34c, including `sw` at 0x1a1e0, `sw` at 0x1a380, `sw` at 0x1a3d8.
  5 such `lb` accesses load 1 byte from ?, including `lb` at 0x1a2b4, `lb` at 0x1a338, `lb` at 0x1a5b8.
  The `lwu` at 0x1a3ac loads 4 bytes from (sym(.data)+22240 + ((a0 + ([[-0x5fec]+856]:1 + [[-0x5fec]+856]:1)) << 0x2)) +0x0.
  3 such `sb` accesses store 1 byte to [-0x5fec] +0x359, including `sb` at 0x1a3c8, `sb` at 0x1a420, `sb` at 0x1a450.
  The `lb` at 0x1a4c0 loads 1 byte from ((([[-0x5fec]+856]:1 << 0x4) + (a0 << 0x3)) + sym(round_bit)) +0x1.
  The `jal` at 0x1a1f8 calls post_sig with a0=0x8, a1=?, a2=[-0x5fec], a3=?, a5=([[-0x5fec]+844] | 0x1004).
  The `jal` at 0x1a3b0 calls post_sig with a0=0x8, a1=?, a2=[-0x5fec], a3=?.
  The `jal` at 0x1a408 calls post_sig with a0=0x8, a1=?, a2=?, a3=?.
  The `jal` at 0x1a43c calls post_sig with a0=0x8, a1=([[-0x5fec]+844] | 0x2008), a2=[-0x5fec], a3=?.
  The `jal` at 0x1a520 calls post_sig with a0=0x8, a1=?, a2=[-0x5fec], a3=?.
  The `jal` at 0x1a628 calls post_sig with a0=0x8, a1=([[-0x5fec]+844] | 0x1004), a2=[-0x5fec], a3=?.
  The `beq` branch at 0x1a130 targets 0x1a150, is taken when (v0(=0x7fffffffffffffff) & a3) == 0, and falls through when (v0(=0x7fffffffffffffff) & a3) != 0.
  The `beq` branch at 0x1a160 targets 0x1a180, is taken when (v0(=0x7fffffffffffffff) & s1(?)) == 0, and falls through when (v0(=0x7fffffffffffffff) & s1(?)) != 0.
  The `beq` branch at 0x1a198 targets 0x1a234, is taken when s2(=a1) >= -0x96 (signed), and falls through when s2(=a1) < -0x96 (signed).
  The `beq` branch at 0x1a1a8 targets 0x1a4a8, is taken when (v0(=[[-0x5fec]+857]:1) & 0x2) == 0, and falls through when (v0(=[[-0x5fec]+857]:1) & 0x2) != 0.
  The `beq` branch at 0x1a1c8 targets 0x1a4a0, is taken when v1(=[((([[-0x5fec]+856]:1 << 0x4) + (a0 << 0x3)) + sym(underflow_tab))]:1) == 0, and falls through when v1(=[((([[-0x5fec]+856]:1 << 0x4) + (a0 << 0x3)) + sym(underflow_tab))]:1) != 0.
  The `beq` branch at 0x1a1f0 targets 0x1a200, is taken when (a4(=[[-0x5fec]+844]) & 0x80) == 0, and falls through when (a4(=[[-0x5fec]+844]) & 0x80) != 0.
  The `beq` branch at 0x1a200 targets 0x1a3e4, is taken when s1(=one of 0x0, 0x1) == s5(=0x1), and falls through when s1(=one of 0x0, 0x1) != s5(=0x1).
  The `beq` branch at 0x1a238 targets 0x1a2d4, is taken when s2(=a1) >= -0x7e (signed), and falls through when s2(=a1) < -0x7e (signed).
  The `beq` branch at 0x1a25c targets 0x1a550, is taken when (t9(=[[-0x5fec]+857]:1) & 0x2) == 0, and falls through when (t9(=[[-0x5fec]+857]:1) & 0x2) != 0.
  The `bne` branch at 0x1a270 targets 0x1a1b0, is taken when s0(?) < t9(=0x7fffff) (unsigned), and falls through when s0(?) >= t9(=0x7fffff) (unsigned).
  The `beq` branch at 0x1a2ac targets 0x1a638, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1a2b8 targets 0x1a664, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x1a2c0 targets 0x1a67c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1a2cc targets 0x1a1d8 and is always taken.
  The `beq` branch at 0x1a2d4 targets 0x1a5dc, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x1a2e0 targets 0x1a2fc, is taken when (v0(=0x7fffffffffffffff) & s1(?)) == 0, and falls through when (v0(=0x7fffffffffffffff) & s1(?)) != 0.
  The `beq` branch at 0x1a344 targets 0x1a5e4, is taken when s2(=a1) == a3(=-0x7f), and falls through when s2(=a1) != a3(=-0x7f).
  The `bgez` branch at 0x1a350 targets 0x1a368, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `beq` branch at 0x1a368 targets 0x1a530, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1a370 targets 0x1a424, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1a3a8 targets 0x1a504, is taken when (v0(=[[-0x5fec]+844]) & 0x200) == 0, and falls through when (v0(=[[-0x5fec]+844]) & 0x200) != 0.
  The `beq` branch at 0x1a3c4 targets 0x1a3dc, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x1a3dc targets 0x1a210 and is always taken.
  The `beq` branch at 0x1a400 targets 0x1a208, is taken when (at(=[[-0x5fec]+844]) & 0x100) == 0, and falls through when (at(=[[-0x5fec]+844]) & 0x100) != 0.
  The `beq` branch at 0x1a41c targets 0x1a204 and is always taken.
  The `beq` branch at 0x1a42c targets 0x1a4f4, is taken when (v0(=[[-0x5fec]+844]) & 0x100) == 0, and falls through when (v0(=[[-0x5fec]+844]) & 0x100) != 0.
  The `beq` branch at 0x1a454 targets 0x1a604, is taken when s4(=one of 0x0, 0x1) == s5(=0x1), and falls through when s4(=one of 0x0, 0x1) != s5(=0x1).
  The `bne` branch at 0x1a45c targets 0x1a490, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x1a484 targets 0x1a498 and is always taken.
  The `beq` branch at 0x1a498 targets 0x1a210 and is always taken.
  The `beq` branch at 0x1a4a0 targets 0x1a1d0 and is always taken.
  The `bgez` branch at 0x1a4d0 targets 0x1a68c, is taken when a1(?) >= 0 (signed), and falls through when a1(?) < 0 (signed).
  The `beq` branch at 0x1a4ec targets 0x1a364 and is always taken.
  The `bne` branch at 0x1a4f4 targets 0x1a458, is taken when s4(=one of 0x0, 0x1) != s5(=0x1), and falls through when s4(=one of 0x0, 0x1) == s5(=0x1).
  The `beq` branch at 0x1a4fc targets 0x1a454 and is always taken.
  The `beq` branch at 0x1a518 targets 0x1a528, is taken when (t9(=[[-0x5fec]+844]) & 0x80) == 0, and falls through when (t9(=[[-0x5fec]+844]) & 0x80) != 0.
  The `beq` branch at 0x1a528 targets 0x1a210 and is always taken.
  The `bne` branch at 0x1a530 targets 0x1a378, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x1a540 targets 0x1a72c, is taken when (at(=[[-0x5fec]+844]) & 0x100) == 0, and falls through when (at(=[[-0x5fec]+844]) & 0x100) != 0.
  The `beq` branch at 0x1a548 targets 0x1a454 and is always taken.
  The `beq` branch at 0x1a564 targets 0x1a6a4, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x1a56c targets 0x1a58c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x1a5cc targets 0x1a710, is taken when (a1(=0x800000) & s0(?)) == 0, and falls through when (a1(=0x800000) & s0(?)) != 0.
  The `beq` branch at 0x1a5d4 targets 0x1a4e8 and is always taken.
  The `beq` branch at 0x1a5dc targets 0x1a2dc and is always taken.
  The `bltz` branch at 0x1a5e8 targets 0x1a4e8, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `beq` branch at 0x1a5f0 targets 0x1a350 and is always taken.
  The `beq` branch at 0x1a620 targets 0x1a45c, is taken when (a0(=[[-0x5fec]+844]) & 0x80) == 0, and falls through when (a0(=[[-0x5fec]+844]) & 0x80) != 0.
  The `beq` branch at 0x1a630 targets 0x1a45c and is always taken.
  The `beq` branch at 0x1a63c targets 0x1a734, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1a644 targets 0x1a75c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x1a64c targets 0x1a2c8, is taken when s5(=0x1) != v0(?), and falls through when s5(=0x1) == v0(?).
  The `bltz` branch at 0x1a654 targets 0x1a2cc, is taken when a4(?) < 0 (signed), and falls through when a4(?) >= 0 (signed).
  The `beq` branch at 0x1a65c targets 0x1a684 and is always taken.
  The `beq` branch at 0x1a664 targets 0x1a754, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1a674 targets 0x1a1d8 and is always taken.
  The `beq` branch at 0x1a684 targets 0x1a1d8 and is always taken.
  The `beq` branch at 0x1a694 targets 0x1a5f8, is taken when (v0(=[[-0x5fec]+844]) & 0x100) == 0, and falls through when (v0(=[[-0x5fec]+844]) & 0x100) != 0.
  The `beq` branch at 0x1a69c targets 0x1a434 and is always taken.
  The `beq` branch at 0x1a6a4 targets 0x1a6c0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x1a700 targets 0x1a764, is taken when (a1(=0x800000) & s0(?)) == 0, and falls through when (a1(=0x800000) & s0(?)) != 0.
  The `beq` branch at 0x1a708 targets 0x1a5d4 and is always taken.
  The `beq` branch at 0x1a718 targets 0x1a784, is taken when (v0(=[[-0x5fec]+844]) & 0x100) == 0, and falls through when (v0(=[[-0x5fec]+844]) & 0x100) != 0.
  The `beq` branch at 0x1a724 targets 0x1a434 and is always taken.
  The `beq` branch at 0x1a72c targets 0x1a454 and is always taken.
  The `beq` branch at 0x1a734 targets 0x1a790, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x1a73c targets 0x1a670, is taken when s5(=0x1) != v0(?), and falls through when s5(=0x1) == v0(?).
  The `bltz` branch at 0x1a744 targets 0x1a674, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `beq` branch at 0x1a74c targets 0x1a684 and is always taken.
  The `beq` branch at 0x1a754 targets 0x1a684 and is always taken.
  The `beq` branch at 0x1a75c targets 0x1a684 and is always taken.
  The `beq` branch at 0x1a76c targets 0x1a490, is taken when (v0(=[[-0x5fec]+844]) & 0x100) == 0, and falls through when (v0(=[[-0x5fec]+844]) & 0x100) != 0.
  The `beq` branch at 0x1a77c targets 0x1a434 and is always taken.
  The `beq` branch at 0x1a788 targets 0x1a604 and is always taken.
  The `beq` branch at 0x1a790 targets 0x1a684 and is always taken.
  The return at 0x1a22c has v0 = one of ?, [(sym(.data)+22240 + ((a0 + ([[-0x5fec]+856]:1 + [[-0x5fec]+856]:1)) << 0x2))].
  The instructions from 0x1a48c to 0x1a48c are not reached by any path from the entry, and their branches are not listed.
- `add_cpu` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1ab10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1ab10-0x1ab90 (128 bytes).
  It occupies 128 bytes.
  The `jal` at 0x1ab28 calls hwgraph_path_add with a0=a0 at entry (arg0), a1=sym(.rodata)+19600, a2=sp-32, a3=a3 at entry (arg3).
  The `jal` at 0x1ab40 calls hwgraph_path_add with a0=?, a1=sym(.rodata)+19608, a2=sp-28, a3=?.
  The `jal` at 0x1ab4c calls mark_cpuvertex_as_cpu with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x1ab58 calls device_master_set with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x1ab80 calls cmn_err with a0=0x0, a1=sym(.rodata)+19296, a2=sym(.rodata)+19600, a3=?.
  The `bne` branch at 0x1ab30 targets 0x1ab70, is taken when v0(=ret(hwgraph_path_add)) != 0, and falls through when v0(=ret(hwgraph_path_add)) == 0.
  The `beq` branch at 0x1ab88 targets 0x1ab38 and is always taken.
  The return at 0x1ab68 has v0 = ret(device_master_set).
- `devnamefromarcs` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1ab90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1ab90-0x1ad34 (420 bytes).
  It occupies 420 bytes.
  The `lbu` at 0x1abcc loads 1 byte from sym(.rodata) +0x4c34.
  The `lbu` at 0x1abd0 loads 1 byte from sym(.rodata) +0x4c18.
  The `lbu` at 0x1abd4 loads 1 byte from sym(.rodata) +0x4c35.
  The `ld` at 0x1abd8 loads 8 bytes from sym(.rodata) +0x4c28.
  The `ld` at 0x1abdc loads 8 bytes from sym(.rodata) +0x4c20.
  The `ld` at 0x1abe0 loads 8 bytes from sym(.rodata) +0x4c00.
  The `lw` at 0x1abe4 loads 4 bytes from sym(.rodata) +0x4c08.
  The `lhu` at 0x1abe8 loads 2 bytes from sym(.rodata) +0x4c0c.
  The `lbu` at 0x1abec loads 1 byte from sym(.rodata) +0x4c0e.
  The `lbu` at 0x1ac00 loads 1 byte from a0 (arg0 at entry) +0x3.
  The `ld` at 0x1ac08 loads 8 bytes from sym(.rodata) +0x4c10.
  The `lbu` at 0x1ac10 loads 1 byte from sym(.rodata) +0x4c36.
  The `lw` at 0x1ac1c loads 4 bytes from sym(.rodata) +0x4c30.
  9 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1ac20, `lbu` at 0x1ac34, `lbu` at 0x1ac4c.
  13 such `sb` accesses store 1 byte to ?, including `sb` at 0x1ac30, `sb` at 0x1ac48, `sb` at 0x1ac70.
  3 such `sdl` accesses store 8 bytes to ?, including `sdl` at 0x1ac40, `sdl` at 0x1ac80, `sdl` at 0x1ac88.
  3 such `sdr` accesses store 8 bytes to ?, including `sdr` at 0x1ac44, `sdr` at 0x1ac84, `sdr` at 0x1ac8c.
  2 such `swl` accesses store 4 bytes to ?, including `swl` at 0x1ac90, `swl` at 0x1ad08.
  2 such `swr` accesses store 4 bytes to ?, including `swr` at 0x1ac94, `swr` at 0x1ad0c.
  The `lw` at 0x1ad04 loads 4 bytes from sym(.rodata) +0x4d20.
  The `lbu` at 0x1ad10 loads 1 byte from sym(.rodata) +0x4d25.
  The `lbu` at 0x1ad14 loads 1 byte from sym(.rodata) +0x4d24.
  The `jal` at 0x1aba8 calls strncmp with a0=a0 at entry (arg0), a1=sym(.rodata)+19728, a2=0x3, a3=a3 at entry (arg3).
  The `jal` at 0x1ad24 calls strcpy with a0=a0 at entry (arg0), a1=sp-272, a2=?, a3=?, a6=[sym(.rodata)+19748]:1, a7=[sym(.rodata)+19749]:1.
  The `beq` branch at 0x1abb0 targets 0x1abc4, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0x1ac18 targets 0x1ac40, is taken when a0(=0x64) == a6(=[a0+3]:1), and falls through when a0(=0x64) != a6(=[a0+3]:1).
  The `beq` branch at 0x1ac2c targets 0x1abb4, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x1ac38 targets 0x1ac20, is taken when a0(=0x64) != ra(?), and falls through when a0(=0x64) == ra(?).
  The `beq` branch at 0x1ac58 targets 0x1ac80, is taken when a0(=0x73) == at(?), and falls through when a0(=0x73) != at(?).
  The `beq` branch at 0x1ac6c targets 0x1abb4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x1ac78 targets 0x1ac60, is taken when a0(=0x73) != v1(?), and falls through when a0(=0x73) == v1(?).
  The `beq` branch at 0x1acb0 targets 0x1acf4, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1acc4 targets 0x1acf4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1acd8 targets 0x1acf4, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x1acec targets 0x1acb8, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x1ad2c targets 0x1abb8 and is always taken.
  The return at 0x1abbc has v0 = one of ret(strncmp), ?, ret(strcpy).
- `round_l` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1ad34 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1ad34-0x1ae1c (232 bytes).
  It occupies 232 bytes.
  3 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x1ad7c, `lw` at 0x1add4, `lw` at 0x1adf0.
  The `lbu` at 0x1ad90 loads 1 byte from [-0x5fec] +0x358.
  The `lb` at 0x1adb0 loads 1 byte from ?.
  2 such `lw` accesses load 4 bytes from [-0x5fec] +0x34c, including `lw` at 0x1adc8, `lw` at 0x1add8.
  The `sw` at 0x1add0 stores 4 bytes to [-0x5fec] +0x34c.
  The `lbu` at 0x1adf4 loads 1 byte from [-0x5fec] +0x359.
  The `lbu` at 0x1adfc loads 1 byte from [-0x5fec] +0x35a.
  The `jal` at 0x1ade8 calls post_sig with a0=0x8, a1=a1 at entry (arg1), a2=?, a3=?, a4=[-0x5fec], a5=(a0 << 0x3), a7=0x1.
  The `jal` at 0x1ae00 calls fpstore_d with a0=?, a1=[[-0x5fec]+858]:1, a2=?, a3=?, a4=[-0x5fec].
  The `jal` at 0x1ae08 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1ad60 targets 0x1ad78, is taken when (a2 & at(=0x7fffffffffffffff)) == 0, and falls through when (a2 & at(=0x7fffffffffffffff)) != 0.
  The `beq` branch at 0x1adb4 targets 0x1adc0, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x1adc0 targets 0x1adf4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1ade0 targets 0x1adf4, is taken when (ra(=[[-0x5fec]+844]) & 0x80) == 0, and falls through when (ra(=[[-0x5fec]+844]) & 0x80) != 0.
  The return at 0x1ae14 has v0 = ret(store_fpcsr).
- `round_d` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1ae1c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1ae1c-0x1b708 (2284 bytes).
  It occupies 2284 bytes.
  22 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x1ae80, `lw` at 0x1aee4, `lw` at 0x1af0c.
  3 such `lbu` accesses load 1 byte from [-0x5fec] +0x358, including `lbu` at 0x1ae98, `lbu` at 0x1af20, `lbu` at 0x1b2b8.
  9 such `lbu` accesses load 1 byte from [-0x5fec] +0x359, including `lbu` at 0x1ae9c, `lbu` at 0x1af88, `lbu` at 0x1b02c.
  The `lb` at 0x1aec8 loads 1 byte from (((a0 << 0x3) + ([[-0x5fec]+856]:1 << 0x4)) + sym(underflow_tab)) +0x0.
  20 such `lw` accesses load 4 bytes from [-0x5fec] +0x34c, including `lw` at 0x1aed8, `lw` at 0x1aee8, `lw` at 0x1af78.
  13 such `sw` accesses store 4 bytes to [-0x5fec] +0x34c, including `sw` at 0x1aee0, `sw` at 0x1af80, `sw` at 0x1afe0.
  7 such `lb` accesses load 1 byte from ?, including `lb` at 0x1af40, `lb` at 0x1b098, `lb` at 0x1b180.
  6 such `lbu` accesses load 1 byte from [-0x5fec] +0x35a, including `lbu` at 0x1afb0, `lbu` at 0x1b0fc, `lbu` at 0x1b234.
  3 such `lw` accesses load 4 bytes from [-0x5fec] +0x280, including `lw` at 0x1afc0, `lw` at 0x1b244, `lw` at 0x1b354.
  3 such `sd` accesses store 8 bytes to [[-0x5fec]+640] +0x128, including `sd` at 0x1afc8, `sd` at 0x1b248, `sd` at 0x1b358.
  The `ld` at 0x1b1fc loads 8 bytes from (sym(.data)+22304 + ((a0 + ([[-0x5fec]+856]:1 + [[-0x5fec]+856]:1)) << 0x3)) +0x0.
  The `lb` at 0x1b38c loads 1 byte from (sym(round_bit) + ((a0 << 0x3) + ([[-0x5fec]+856]:1 << 0x4))) +0x1.
  The `jal` at 0x1aef8 calls post_sig with a0=0x8, a1=[[-0x5fec]+856]:1, a2=?, a3=?, a5=[-0x5fec].
  The `jal` at 0x1afb4 calls fpstore_d with a0=?, a1=[[-0x5fec]+858]:1, a2=?, a3=[[-0x5fec]+857]:1, a5=[-0x5fec], a7=(a1 + one of 0x600, 0x601).
  The `jal` at 0x1afe4 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b0d0 calls post_sig with a0=0x8, a1=[[-0x5fec]+856]:1, a2=?, a3=?, a5=[-0x5fec].
  The `jal` at 0x1b100 calls fpstore_d with a0=(one of 0x0, 0x10000000000000 | (a0 << 0x3f)), a1=[[-0x5fec]+858]:1, a2=?, a3=[[-0x5fec]+857]:1, a5=[-0x5fec].
  The `jal` at 0x1b108 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b200 calls post_sig with a0=0x8, a1=[[-0x5fec]+856]:1, a2=?, a3=?, a5=[-0x5fec], a6=sym(round_bit).
  The `jal` at 0x1b238 calls fpstore_d with a0=?, a1=[[-0x5fec]+858]:1, a2=?, a3=?, a5=[-0x5fec].
  The `jal` at 0x1b264 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b290 calls post_sig with a0=0x8, a1=[[-0x5fec]+844], a2=?, a3=?, a5=[-0x5fec], a6=sym(round_bit).
  The `jal` at 0x1b348 calls fpstore_d with a0=?, a1=[[-0x5fec]+858]:1, a2=?, a3=[[-0x5fec]+857]:1, a5=[-0x5fec], a7=(a1 + one of 0x600, 0x601).
  The `jal` at 0x1b35c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b3f0 calls fpstore_d with a0=?, a1=[[-0x5fec]+858]:1, a2=?, a3=[[-0x5fec]+857]:1, a5=[-0x5fec].
  The `jal` at 0x1b3f8 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b424 calls post_sig with a0=0x8, a1=[[-0x5fec]+856]:1, a2=?, a3=?, a5=[-0x5fec], a6=sym(round_bit).
  The `jal` at 0x1b450 calls fpstore_d with a0=[(sym(.data)+22304 + ((a0 + ([[-0x5fec]+856]:1 + [[-0x5fec]+856]:1)) << 0x3))]:8, a1=[[-0x5fec]+858]:1, a2=?, a3=[[-0x5fec]+857]:1, a5=[-0x5fec].
  The `jal` at 0x1b458 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b5d4 calls post_sig with a0=0x8, a1=?, a2=?, a3=?, a5=[-0x5fec], a6=sym(round_bit).
  The `beq` branch at 0x1ae54 targets 0x1ae74, is taken when (a6(=0x7fffffffffffffff) & a3) == 0, and falls through when (a6(=0x7fffffffffffffff) & a3) != 0.
  The `beq` branch at 0x1ae94 targets 0x1b01c, is taken when s3(=a1) >= -0x433 (signed), and falls through when s3(=a1) < -0x433 (signed).
  The `beq` branch at 0x1aea4 targets 0x1b374, is taken when (v0(=[[-0x5fec]+857]:1) & 0x2) == 0, and falls through when (v0(=[[-0x5fec]+857]:1) & 0x2) != 0.
  The `beq` branch at 0x1aecc targets 0x1b36c, is taken when t8(=[(((a0 << 0x3) + ([[-0x5fec]+856]:1 << 0x4)) + sym(underflow_tab))]:1) == 0, and falls through when t8(=[(((a0 << 0x3) + ([[-0x5fec]+856]:1 << 0x4)) + sym(underflow_tab))]:1) != 0.
  The `beq` branch at 0x1aef0 targets 0x1b0b8, is taken when (a0(=[[-0x5fec]+844]) & 0x100) == 0, and falls through when (a0(=[[-0x5fec]+844]) & 0x100) != 0.
  The `beq` branch at 0x1af60 targets 0x1af70, is taken when (a6(?) & ra(=0x20000000000000)) == 0, and falls through when (a6(?) & ra(=0x20000000000000)) != 0.
  The `beq` branch at 0x1af70 targets 0x1af88, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x1af90 targets 0x1afcc, is taken when (a3(=[[-0x5fec]+857]:1) & 0x4) == 0, and falls through when (a3(=[[-0x5fec]+857]:1) & 0x4) != 0.
  The `beq` branch at 0x1afcc targets 0x1afe4, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x1b020 targets 0x1b118, is taken when s3(=a1) >= -0x3fe (signed), and falls through when s3(=a1) < -0x3fe (signed).
  The `beq` branch at 0x1b044 targets 0x1b4ac, is taken when (a3(=[[-0x5fec]+857]:1) & 0x2) == 0, and falls through when (a3(=[[-0x5fec]+857]:1) & 0x2) != 0.
  The `bne` branch at 0x1b058 targets 0x1aeb0, is taken when s0(?) < t8(=0xfffffffffffff) (unsigned), and falls through when s0(?) >= t8(=0xfffffffffffff) (unsigned).
  The `beq` branch at 0x1b090 targets 0x1b560, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1b09c targets 0x1b5e8, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x1b0a4 targets 0x1b5f8, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1b0c8 targets 0x1b0dc, is taken when (t8(=[[-0x5fec]+844]) & 0x80) == 0, and falls through when (t8(=[[-0x5fec]+844]) & 0x80) != 0.
  The `bne` branch at 0x1b0e4 targets 0x1b0f8, is taken when (a3(=[[-0x5fec]+857]:1) & 0x4) != 0, and falls through when (a3(=[[-0x5fec]+857]:1) & 0x4) == 0.
  The `bne` branch at 0x1b0f0 targets 0x1b108, is taken when (a3(=[[-0x5fec]+857]:1) & 0x8) != 0, and falls through when (a3(=[[-0x5fec]+857]:1) & 0x8) == 0.
  The `beq` branch at 0x1b110 targets 0x1aff0 and is always taken.
  The `beq` branch at 0x1b118 targets 0x1b53c, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x1b124 targets 0x1b148, is taken when (a6(=0x7fffffffffffffff) & s4(?)) == 0, and falls through when (a6(=0x7fffffffffffffff) & s4(?)) != 0.
  The `beq` branch at 0x1b18c targets 0x1b544, is taken when s3(=a1) == a3(=-0x3ff), and falls through when s3(=a1) != a3(=-0x3ff).
  The `beq` branch at 0x1b1a0 targets 0x1b1b8, is taken when (s0(?) & t9(=0x20000000000000)) == 0, and falls through when (s0(?) & t9(=0x20000000000000)) != 0.
  The `beq` branch at 0x1b1b8 targets 0x1b468, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1b1c0 targets 0x1b274, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1b1f8 targets 0x1b408, is taken when (a0(=[[-0x5fec]+844]) & 0x200) == 0, and falls through when (a0(=[[-0x5fec]+844]) & 0x200) != 0.
  The `beq` branch at 0x1b214 targets 0x1b24c, is taken when (a3(=[[-0x5fec]+857]:1) & 0x4) == 0, and falls through when (a3(=[[-0x5fec]+857]:1) & 0x4) != 0.
  The `beq` branch at 0x1b24c targets 0x1b264, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x1b26c targets 0x1aff0 and is always taken.
  The `beq` branch at 0x1b280 targets 0x1b3c4, is taken when (a1(=[[-0x5fec]+844]) & 0x100) == 0, and falls through when (a1(=[[-0x5fec]+844]) & 0x100) != 0.
  The `beq` branch at 0x1b2f8 targets 0x1b308, is taken when (a6(?) & t1(=0x20000000000000)) == 0, and falls through when (a6(?) & t1(=0x20000000000000)) != 0.
  The `beq` branch at 0x1b308 targets 0x1b320, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x1b328 targets 0x1b35c, is taken when (a3(=[[-0x5fec]+857]:1) & 0x4) == 0, and falls through when (a3(=[[-0x5fec]+857]:1) & 0x4) != 0.
  The `beq` branch at 0x1b364 targets 0x1aff0 and is always taken.
  The `beq` branch at 0x1b36c targets 0x1aed8 and is always taken.
  The `beq` branch at 0x1b3a4 targets 0x1b594, is taken when (s0(?) & a2(=0x10000000000000)) == 0, and falls through when (s0(?) & a2(=0x10000000000000)) != 0.
  The `beq` branch at 0x1b3bc targets 0x1b1b4 and is always taken.
  The `beq` branch at 0x1b3c8 targets 0x1b604, is taken when a0(=one of 0x0, 0x1) == a2(=0x1), and falls through when a0(=one of 0x0, 0x1) != a2(=0x1).
  The `bne` branch at 0x1b3d8 targets 0x1b3ec, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `bne` branch at 0x1b3e4 targets 0x1b3f8, is taken when (a3(=[[-0x5fec]+857]:1) & 0x8) != 0, and falls through when (a3(=[[-0x5fec]+857]:1) & 0x8) == 0.
  The `beq` branch at 0x1b400 targets 0x1aff0 and is always taken.
  The `beq` branch at 0x1b41c targets 0x1b430, is taken when (ra(=[[-0x5fec]+844]) & 0x80) == 0, and falls through when (ra(=[[-0x5fec]+844]) & 0x80) != 0.
  The `bne` branch at 0x1b438 targets 0x1b44c, is taken when (a3(=[[-0x5fec]+857]:1) & 0x4) != 0, and falls through when (a3(=[[-0x5fec]+857]:1) & 0x4) == 0.
  The `bne` branch at 0x1b444 targets 0x1b458, is taken when (a3(=[[-0x5fec]+857]:1) & 0x8) != 0, and falls through when (a3(=[[-0x5fec]+857]:1) & 0x8) == 0.
  The `beq` branch at 0x1b460 targets 0x1aff0 and is always taken.
  The `bne` branch at 0x1b468 targets 0x1b1c8, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x1b490 targets 0x1b6ac, is taken when (t9(=[[-0x5fec]+844]) & 0x100) == 0, and falls through when (t9(=[[-0x5fec]+844]) & 0x100) != 0.
  The `bne` branch at 0x1b49c targets 0x1b3d0, is taken when a0(=one of 0x0, 0x1) != a2(=0x1), and falls through when a0(=one of 0x0, 0x1) == a2(=0x1).
  The `beq` branch at 0x1b4a4 targets 0x1b5b8 and is always taken.
  The `beq` branch at 0x1b4c4 targets 0x1b618, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x1b4cc targets 0x1b4f0, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x1b52c targets 0x1b688, is taken when (a0(=0x10000000000000) & s0(?)) == 0, and falls through when (a0(=0x10000000000000) & s0(?)) != 0.
  The `beq` branch at 0x1b534 targets 0x1b3b8 and is always taken.
  The `beq` branch at 0x1b53c targets 0x1b120 and is always taken.
  The `bne` branch at 0x1b550 targets 0x1b3b8, is taken when (s0(?) & a7(=0x10000000000000)) != 0, and falls through when (s0(?) & a7(=0x10000000000000)) == 0.
  The `beq` branch at 0x1b558 targets 0x1b198 and is always taken.
  The `beq` branch at 0x1b564 targets 0x1b6b4, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x1b56c targets 0x1b6dc, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x1b578 targets 0x1b0ac, is taken when a0(?) != t1(=0x1), and falls through when a0(?) == t1(=0x1).
  The `bltz` branch at 0x1b584 targets 0x1b0a8, is taken when t2(?) < 0 (signed), and falls through when t2(?) >= 0 (signed).
  The `beq` branch at 0x1b58c targets 0x1aed8 and is always taken.
  The `bne` branch at 0x1b5a0 targets 0x1b288, is taken when (a1(=[[-0x5fec]+844]) & 0x100) != 0, and falls through when (a1(=[[-0x5fec]+844]) & 0x100) == 0.
  The `beq` branch at 0x1b5cc targets 0x1b5e0, is taken when (ra(=[[-0x5fec]+844]) & 0x80) == 0, and falls through when (ra(=[[-0x5fec]+844]) & 0x80) != 0.
  The `beq` branch at 0x1b5e0 targets 0x1b3d4 and is always taken.
  The `beq` branch at 0x1b5e8 targets 0x1b6d4, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1b5f0 targets 0x1aed8 and is always taken.
  The `beq` branch at 0x1b5fc targets 0x1aed8 and is always taken.
  The `bne` branch at 0x1b608 targets 0x1b3d0, is taken when a0(=one of 0x0, 0x1) != a2(=0x1), and falls through when a0(=one of 0x0, 0x1) == a2(=0x1).
  The `beq` branch at 0x1b610 targets 0x1b5b8 and is always taken.
  The `beq` branch at 0x1b618 targets 0x1b63c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x1b678 targets 0x1b6e4, is taken when (a0(=0x10000000000000) & s0(?)) == 0, and falls through when (a0(=0x10000000000000) & s0(?)) != 0.
  The `beq` branch at 0x1b680 targets 0x1b534 and is always taken.
  The `bne` branch at 0x1b694 targets 0x1b288, is taken when (a1(=[[-0x5fec]+844]) & 0x100) != 0, and falls through when (a1(=[[-0x5fec]+844]) & 0x100) == 0.
  The `beq` branch at 0x1b6a4 targets 0x1b5b4 and is always taken.
  The `beq` branch at 0x1b6ac targets 0x1b49c and is always taken.
  The `beq` branch at 0x1b6b4 targets 0x1b700, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x1b6bc targets 0x1b5f0, is taken when a0(?) != t1(=0x1), and falls through when a0(?) == t1(=0x1).
  The `bltz` branch at 0x1b6c4 targets 0x1b5f0, is taken when t2(?) < 0 (signed), and falls through when t2(?) >= 0 (signed).
  The `beq` branch at 0x1b6cc targets 0x1aed8 and is always taken.
  The `beq` branch at 0x1b6d4 targets 0x1aed8 and is always taken.
  The `beq` branch at 0x1b6dc targets 0x1aed8 and is always taken.
  The `bne` branch at 0x1b6f0 targets 0x1b288, is taken when (a1(=[[-0x5fec]+844]) & 0x100) != 0, and falls through when (a1(=[[-0x5fec]+844]) & 0x100) == 0.
  The `beq` branch at 0x1b6f8 targets 0x1b3d8 and is always taken.
  The `beq` branch at 0x1b700 targets 0x1aed8 and is always taken.
  The return at 0x1b014 has v0 = ret(store_fpcsr).
- `maddrnd_d` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1b708 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1b708-0x1bd7c (1652 bytes).
  It occupies 1652 bytes.
  12 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x1b75c, `lw` at 0x1b7bc, `lw` at 0x1b960.
  The `lbu` at 0x1b770 loads 1 byte from [-0x5fec] +0x358.
  5 such `lbu` accesses load 1 byte from [-0x5fec] +0x359, including `lbu` at 0x1b774, `lbu` at 0x1b818, `lbu` at 0x1b998.
  The `lb` at 0x1b798 loads 1 byte from ((([[-0x5fec]+856]:1 << 0x4) + (a0 << 0x3)) + sym(underflow_tab)) +0x0.
  15 such `lw` accesses load 4 bytes from [-0x5fec] +0x34c, including `lw` at 0x1b7b0, `lw` at 0x1b7c0, `lw` at 0x1b954.
  10 such `sw` accesses store 4 bytes to [-0x5fec] +0x34c, including `sw` at 0x1b7b8, `sw` at 0x1b95c, `sw` at 0x1b9b4.
  5 such `lb` accesses load 1 byte from ?, including `lb` at 0x1b884, `lb` at 0x1b90c, `lb` at 0x1bb90.
  The `ld` at 0x1b988 loads 8 bytes from (sym(.data)+22304 + ((a0 + ([[-0x5fec]+856]:1 + [[-0x5fec]+856]:1)) << 0x3)) +0x0.
  3 such `sb` accesses store 1 byte to [-0x5fec] +0x359, including `sb` at 0x1b9a4, `sb` at 0x1b9fc, `sb` at 0x1ba2c.
  The `lb` at 0x1ba8c loads 1 byte from ((([[-0x5fec]+856]:1 << 0x4) + (a0 << 0x3)) + sym(round_bit)) +0x1.
  The `jal` at 0x1b7d0 calls post_sig with a0=0x8, a1=?, a2=[-0x5fec], a3=?.
  The `jal` at 0x1b98c calls post_sig with a0=0x8, a1=?, a2=[-0x5fec], a3=?, a6=0x7fffffffffffffff.
  The `jal` at 0x1b9e4 calls post_sig with a0=0x8, a1=?, a2=?, a3=?.
  The `jal` at 0x1ba18 calls post_sig with a0=0x8, a1=([[-0x5fec]+844] | 0x2008), a2=[-0x5fec], a3=?, a6=0x7fffffffffffffff.
  The `jal` at 0x1baf4 calls post_sig with a0=0x8, a1=?, a2=[-0x5fec], a3=?, a6=0x7fffffffffffffff.
  The `jal` at 0x1bc08 calls post_sig with a0=0x8, a1=?, a2=([[-0x5fec]+844] | 0x1004), a3=?.
  The `beq` branch at 0x1b734 targets 0x1b754, is taken when (a6(=0x7fffffffffffffff) & a3) == 0, and falls through when (a6(=0x7fffffffffffffff) & a3) != 0.
  The `beq` branch at 0x1b76c targets 0x1b808, is taken when s2(=a1) >= -0x433 (signed), and falls through when s2(=a1) < -0x433 (signed).
  The `beq` branch at 0x1b77c targets 0x1ba74, is taken when (v0(=[[-0x5fec]+857]:1) & 0x2) == 0, and falls through when (v0(=[[-0x5fec]+857]:1) & 0x2) != 0.
  The `beq` branch at 0x1b79c targets 0x1ba6c, is taken when v1(=[((([[-0x5fec]+856]:1 << 0x4) + (a0 << 0x3)) + sym(underflow_tab))]:1) == 0, and falls through when v1(=[((([[-0x5fec]+856]:1 << 0x4) + (a0 << 0x3)) + sym(underflow_tab))]:1) != 0.
  The `beq` branch at 0x1b7c8 targets 0x1b7d8, is taken when (t8(=[[-0x5fec]+844]) & 0x80) == 0, and falls through when (t8(=[[-0x5fec]+844]) & 0x80) != 0.
  The `beq` branch at 0x1b7d8 targets 0x1b9c0, is taken when s1(=one of 0x0, 0x1) == s5(=0x1), and falls through when s1(=one of 0x0, 0x1) != s5(=0x1).
  The `beq` branch at 0x1b80c targets 0x1b8a8, is taken when s2(=a1) >= -0x3fe (signed), and falls through when s2(=a1) < -0x3fe (signed).
  The `beq` branch at 0x1b830 targets 0x1bb24, is taken when (t9(=[[-0x5fec]+857]:1) & 0x2) == 0, and falls through when (t9(=[[-0x5fec]+857]:1) & 0x2) != 0.
  The `bne` branch at 0x1b844 targets 0x1b780, is taken when s0(?) < t9(=0xfffffffffffff) (unsigned), and falls through when s0(?) >= t9(=0xfffffffffffff) (unsigned).
  The `beq` branch at 0x1b87c targets 0x1bc18, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1b888 targets 0x1bc44, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x1b890 targets 0x1bc58, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1b8a0 targets 0x1b7b0 and is always taken.
  The `beq` branch at 0x1b8a8 targets 0x1bbb4, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x1b8b4 targets 0x1b8d0, is taken when (a6(=0x7fffffffffffffff) & s1(?)) == 0, and falls through when (a6(=0x7fffffffffffffff) & s1(?)) != 0.
  The `beq` branch at 0x1b918 targets 0x1bbbc, is taken when s2(=a1) == a1(=-0x3ff), and falls through when s2(=a1) != a1(=-0x3ff).
  The `beq` branch at 0x1b92c targets 0x1b944, is taken when (s0(?) & v1(=0x20000000000000)) == 0, and falls through when (s0(?) & v1(=0x20000000000000)) != 0.
  The `beq` branch at 0x1b944 targets 0x1bb04, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1b94c targets 0x1ba00, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1b984 targets 0x1bad8, is taken when (v0(=[[-0x5fec]+844]) & 0x200) == 0, and falls through when (v0(=[[-0x5fec]+844]) & 0x200) != 0.
  The `beq` branch at 0x1b9a0 targets 0x1b9b8, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x1b9b8 targets 0x1b7e4 and is always taken.
  The `beq` branch at 0x1b9dc targets 0x1b7e0, is taken when (at(=[[-0x5fec]+844]) & 0x100) == 0, and falls through when (at(=[[-0x5fec]+844]) & 0x100) != 0.
  The `beq` branch at 0x1b9f8 targets 0x1b7dc and is always taken.
  The `beq` branch at 0x1ba08 targets 0x1bac8, is taken when (v0(=[[-0x5fec]+844]) & 0x100) == 0, and falls through when (v0(=[[-0x5fec]+844]) & 0x100) != 0.
  The `beq` branch at 0x1ba30 targets 0x1bbe4, is taken when s4(=one of 0x0, 0x1) == s5(=0x1), and falls through when s4(=one of 0x0, 0x1) != s5(=0x1).
  The `bne` branch at 0x1ba38 targets 0x1ba5c, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x1ba54 targets 0x1ba64 and is always taken.
  The `beq` branch at 0x1ba64 targets 0x1b7e4 and is always taken.
  The `beq` branch at 0x1ba6c targets 0x1b7a8 and is always taken.
  The `beq` branch at 0x1baa4 targets 0x1bc6c, is taken when (s0(?) & a3(=0x10000000000000)) == 0, and falls through when (s0(?) & a3(=0x10000000000000)) != 0.
  The `beq` branch at 0x1bac0 targets 0x1b940 and is always taken.
  The `bne` branch at 0x1bac8 targets 0x1ba34, is taken when s4(=one of 0x0, 0x1) != s5(=0x1), and falls through when s4(=one of 0x0, 0x1) == s5(=0x1).
  The `beq` branch at 0x1bad0 targets 0x1ba30 and is always taken.
  The `beq` branch at 0x1baec targets 0x1bafc, is taken when (t9(=[[-0x5fec]+844]) & 0x80) == 0, and falls through when (t9(=[[-0x5fec]+844]) & 0x80) != 0.
  The `beq` branch at 0x1bafc targets 0x1b7e4 and is always taken.
  The `bne` branch at 0x1bb04 targets 0x1b954, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x1bb14 targets 0x1bd08, is taken when (at(=[[-0x5fec]+844]) & 0x100) == 0, and falls through when (at(=[[-0x5fec]+844]) & 0x100) != 0.
  The `beq` branch at 0x1bb1c targets 0x1ba30 and is always taken.
  The `beq` branch at 0x1bb3c targets 0x1bc84, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x1bb44 targets 0x1bb64, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1bba4 targets 0x1bcf0, is taken when (v0(=0x10000000000000) & s0(?)) == 0, and falls through when (v0(=0x10000000000000) & s0(?)) != 0.
  The `beq` branch at 0x1bbac targets 0x1babc and is always taken.
  The `beq` branch at 0x1bbb4 targets 0x1b8b0 and is always taken.
  The `bne` branch at 0x1bbc8 targets 0x1babc, is taken when (s0(?) & v1(=0x10000000000000)) != 0, and falls through when (s0(?) & v1(=0x10000000000000)) == 0.
  The `beq` branch at 0x1bbd0 targets 0x1b924 and is always taken.
  The `beq` branch at 0x1bc00 targets 0x1ba38, is taken when (a1(=[[-0x5fec]+844]) & 0x80) == 0, and falls through when (a1(=[[-0x5fec]+844]) & 0x80) != 0.
  The `beq` branch at 0x1bc10 targets 0x1ba38 and is always taken.
  The `beq` branch at 0x1bc1c targets 0x1bd10, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1bc24 targets 0x1bd3c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x1bc2c targets 0x1b898, is taken when s5(=0x1) != v0(?), and falls through when s5(=0x1) == v0(?).
  The `bltz` branch at 0x1bc34 targets 0x1b898, is taken when a4(?) < 0 (signed), and falls through when a4(?) >= 0 (signed).
  The `beq` branch at 0x1bc3c targets 0x1bc64 and is always taken.
  The `beq` branch at 0x1bc44 targets 0x1bd30, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1bc50 targets 0x1b7b0 and is always taken.
  The `beq` branch at 0x1bc64 targets 0x1b7b0 and is always taken.
  The `beq` branch at 0x1bc74 targets 0x1bbd8, is taken when (v0(=[[-0x5fec]+844]) & 0x100) == 0, and falls through when (v0(=[[-0x5fec]+844]) & 0x100) != 0.
  The `beq` branch at 0x1bc7c targets 0x1ba10 and is always taken.
  The `beq` branch at 0x1bc84 targets 0x1bca0, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1bce0 targets 0x1bd48, is taken when (v0(=0x10000000000000) & s0(?)) == 0, and falls through when (v0(=0x10000000000000) & s0(?)) != 0.
  The `beq` branch at 0x1bce8 targets 0x1bbac and is always taken.
  The `beq` branch at 0x1bcf8 targets 0x1bd64, is taken when (v0(=[[-0x5fec]+844]) & 0x100) == 0, and falls through when (v0(=[[-0x5fec]+844]) & 0x100) != 0.
  The `beq` branch at 0x1bd00 targets 0x1ba10 and is always taken.
  The `beq` branch at 0x1bd08 targets 0x1ba30 and is always taken.
  The `beq` branch at 0x1bd10 targets 0x1bd74, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x1bd18 targets 0x1bc4c, is taken when s5(=0x1) != v0(?), and falls through when s5(=0x1) == v0(?).
  The `bltz` branch at 0x1bd20 targets 0x1bc50, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `beq` branch at 0x1bd28 targets 0x1bc64 and is always taken.
  The `beq` branch at 0x1bd34 targets 0x1bc64 and is always taken.
  The `beq` branch at 0x1bd40 targets 0x1bc64 and is always taken.
  The `beq` branch at 0x1bd50 targets 0x1ba5c, is taken when (v0(=[[-0x5fec]+844]) & 0x100) == 0, and falls through when (v0(=[[-0x5fec]+844]) & 0x100) != 0.
  The `beq` branch at 0x1bd5c targets 0x1ba10 and is always taken.
  The `beq` branch at 0x1bd6c targets 0x1bbe4 and is always taken.
  The `beq` branch at 0x1bd74 targets 0x1bc64 and is always taken.
  The return at 0x1b800 has v0 = one of (one of 0x0, 0x10000000000000 | (a0 << 0x3f)), [(sym(.data)+22304 + ((a0 + ([[-0x5fec]+856]:1 + [[-0x5fec]+856]:1)) << 0x3))]:8, ?.
- `VEC_unexp` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1bd7c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1bd7c-0x1bd8c (16 bytes).
  It occupies 16 bytes.
  The `jal` at 0x1bd84 calls cmn_err with a0=0x0, a1=sym(.data)+22432, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
- `backtouser` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1bd8c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1bd8c-0x1be98 (268 bytes).
  It occupies 268 bytes.
  The `lw` at 0x1bd8c loads 4 bytes from abs 0xffffffffffffa018.
  The `sb` at 0x1bd98 stores 1 byte to abs 0xffffffffffffa03f.
  22 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1bd9c, `ld` at 0x1bdf8, `ld` at 0x1bdfc.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x1bda0, `lw` at 0x1bdcc.
  2 such `lw` accesses load 4 bytes from [-0x5fec] +0x280, including `lw` at 0x1bda4, `lw` at 0x1bdd0.
  The `lw` at 0x1bda8 loads 4 bytes from [[-0x5fec]+640] +0x2bc.
  The `lw` at 0x1bdac loads 4 bytes from [[-0x5fec]+640] +0x2b8.
  The `lw` at 0x1bdd4 loads 4 bytes from [[-0x5fec]+640] +0x2f0.
  The `jal` at 0x1bd90 calls ktimer_switch with a0=[-0x5fe8], a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1bdf0 calls tfi_restore with a0=?, a1=?, a2=?, a3=?.
- `migrate_timeouts` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1be98 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1be98-0x1bea0 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1be98 has v0 = ?.
- `fpunit_fpload_s` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1bea0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1bea0-0x1c1b8 (792 bytes).
  It occupies 792 bytes.
  The `lw` at 0x1beac loads 4 bytes from sym(.rodata) +0x2698.
  Calls .text+114360 via reloc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x1beb0).
  The instructions from 0x1beb8 to 0x1c1b4 are not reached by any path from the entry, and their branches are not listed.
- `renorm_d` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1c1b8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1c1b8-0x1c2d4 (284 bytes).
  It occupies 284 bytes.
  The `ld` at 0x1c1b8 loads 8 bytes from a0 (arg0 at entry) +0x0.
  7 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x0, including `sd` at 0x1c218, `sd` at 0x1c230, `sd` at 0x1c24c.
  The `lb` at 0x1c2b8 loads 1 byte from table(sym(.data)+22480) +0x0.
  The `beq` branch at 0x1c1d0 targets 0x1c2cc, is taken when (a3(=[a0]:8) & v1(=0x1fffffffffffff)) == 0, and falls through when (a3(=[a0]:8) & v1(=0x1fffffffffffff)) != 0.
  The `beq` branch at 0x1c1d8 targets 0x1c1ec, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x1c200 targets 0x1c258, is taken when (a5(=0xfff0000000000) & a3(=[a0]:8)) != 0, and falls through when (a5(=0xfff0000000000) & a3(=[a0]:8)) == 0.
  The `bne` branch at 0x1c21c targets 0x1c250, is taken when (a5(=0xfff0000000000) & a3(?)) != 0, and falls through when (a5(=0xfff0000000000) & a3(?)) == 0.
  The `bne` branch at 0x1c234 targets 0x1c250, is taken when (a5(=0xfff0000000000) & a3(?)) != 0, and falls through when (a5(=0xfff0000000000) & a3(?)) == 0.
  The `beq` branch at 0x1c248 targets 0x1c20c, is taken when (a5(=0xfff0000000000) & a3(?)) == 0, and falls through when (a5(=0xfff0000000000) & a3(?)) != 0.
  The `beq` branch at 0x1c250 targets 0x1c25c and is always taken.
  The `bne` branch at 0x1c25c targets 0x1c2ac, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `bne` branch at 0x1c274 targets 0x1c2a8, is taken when (v0(=0xf000000000000) & a3(?)) != 0, and falls through when (v0(=0xf000000000000) & a3(?)) == 0.
  The `bne` branch at 0x1c28c targets 0x1c2a8, is taken when (v0(=0xf000000000000) & a3(?)) != 0, and falls through when (v0(=0xf000000000000) & a3(?)) == 0.
  The `beq` branch at 0x1c2a0 targets 0x1c264, is taken when (v0(=0xf000000000000) & a3(?)) == 0, and falls through when (v0(=0xf000000000000) & a3(?)) != 0.
  The return at 0x1c1e4 has v0 = 0x0.
  The return at 0x1c2c4 has v0 = ?.
  The return at 0x1c2cc has v0 = 0x0.
- `renorm_s` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1c358 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1c358-0x1c428 (208 bytes).
  It occupies 208 bytes.
  The `ld` at 0x1c358 loads 8 bytes from a0 (arg0 at entry) +0x0.
  5 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x0, including `sd` at 0x1c3a4, `sd` at 0x1c3bc, `sd` at 0x1c3d8.
  The `lb` at 0x1c3fc loads 1 byte from table(sym(.data)+22512) +0x0.
  The `beq` branch at 0x1c368 targets 0x1c420, is taken when (a3(=[a0]:8) & at(=0xffffff)) == 0, and falls through when (a3(=[a0]:8) & at(=0xffffff)) != 0.
  The `bgez` branch at 0x1c370 targets 0x1c384, is taken when a4(=([a0]:8 << 0x28)) >= 0 (signed), and falls through when a4(=([a0]:8 << 0x28)) < 0 (signed).
  The `bne` branch at 0x1c38c targets 0x1c3e4, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x1c3a8 targets 0x1c3dc, is taken when (v0(=0xff0000) & a3(?)) != 0, and falls through when (v0(=0xff0000) & a3(?)) == 0.
  The `bne` branch at 0x1c3c0 targets 0x1c3dc, is taken when (v0(=0xff0000) & a3(?)) != 0, and falls through when (v0(=0xff0000) & a3(?)) == 0.
  The `beq` branch at 0x1c3d4 targets 0x1c398, is taken when (v0(=0xff0000) & a3(?)) == 0, and falls through when (v0(=0xff0000) & a3(?)) != 0.
  The `beq` branch at 0x1c3dc targets 0x1c3e8 and is always taken.
  The `beq` branch at 0x1c3e8 targets 0x1c410, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x1c418 targets 0x1c3f0 and is always taken.
  The return at 0x1c37c has v0 = 0x0.
  The return at 0x1c408 has v0 = ?.
  The return at 0x1c420 has v0 = 0x0.
- `_add_sd` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1c428 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1c428-0x1c49c (116 bytes).
  It occupies 116 bytes.
  The `jal` at 0x1c45c calls breakout_and_test2_sd with a0=a0 at entry (arg0), a1=sp-24, a2=sp-80, a3=sp-76, a4=sp-72, a5=sp-16, a6=sp-64, a7=sp-60.
  The `jal` at 0x1c48c calls add with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1c464 targets 0x1c478, is taken when v0(=ret(breakout_and_test2_sd)) == 0, and falls through when v0(=ret(breakout_and_test2_sd)) != 0.
  The `beq` branch at 0x1c494 targets 0x1c470 and is always taken.
  The return at 0x1c470 has v0 = one of ret(breakout_and_test2_sd), ret(add).
- `fpunit_fpload_d` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1c49c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1c49c-0x1c8d0 (1076 bytes).
  It occupies 1076 bytes.
  The `lw` at 0x1c4b0 loads 4 bytes from sym(.rodata) +0x2718.
  The `lw` at 0x1c4c4 loads 4 bytes from sym(.rodata) +0x2758.
  Calls .text+115920 via reloc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x1c4b4).
  Calls .text+116432 via reloc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x1c4c8).
  The `bne` branch at 0x1c49c targets 0x1c4bc, is taken when a1 != 0, and falls through when a1 == 0.
  The instructions from 0x1c4d0 to 0x1c8cc are not reached by any path from the entry, and their branches are not listed.
- `_sub_sd` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1c8d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1c8d0-0x1c948 (120 bytes).
  It occupies 120 bytes.
  The `jal` at 0x1c904 calls breakout_and_test2_sd with a0=a0 at entry (arg0), a1=sp-24, a2=sp-80, a3=sp-76, a4=sp-72, a5=sp-16, a6=sp-64, a7=sp-60.
  The `jal` at 0x1c938 calls add with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1c90c targets 0x1c920, is taken when v0(=ret(breakout_and_test2_sd)) == 0, and falls through when v0(=ret(breakout_and_test2_sd)) != 0.
  The `beq` branch at 0x1c940 targets 0x1c918 and is always taken.
  The return at 0x1c918 has v0 = one of ret(breakout_and_test2_sd), ret(add).
- `_mul_sd` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1c948 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1c948-0x1cd2c (996 bytes).
  It occupies 996 bytes.
  The `lw` at 0x1c9a0 loads 4 bytes from ((a0 << 0x2) + sym(EXP_INF)) +0x0.
  4 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x1c9cc, `lw` at 0x1c9e4, `lw` at 0x1ca6c.
  4 such `lw` accesses load 4 bytes from [-0x5fec] +0x34c, including `lw` at 0x1c9d4, `lw` at 0x1c9e8, `lw` at 0x1ca70.
  2 such `sw` accesses store 4 bytes to [-0x5fec] +0x34c, including `sw` at 0x1c9e0, `sw` at 0x1ca7c.
  4 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(SIGN_SHIFT)) +0x0, including `lw` at 0x1ca1c, `lw` at 0x1cbac, `lw` at 0x1cbe0.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(EXP_BIAS)) +0x0, including `lw` at 0x1cad8, `lw` at 0x1cb00.
  2 such `ld` accesses load 8 bytes from (sym(IMP_1BIT) + (a0 << 0x3)) +0x0, including `ld` at 0x1cae0, `ld` at 0x1cb08.
  The `lw` at 0x1cb8c loads 4 bytes from ((a0 << 0x2) + sym(round)) +0x0.
  2 such `ld` accesses load 8 bytes from (sym(QUIETNAN) + (a0 << 0x3)) +0x0, including `ld` at 0x1cc80, `ld` at 0x1cd18.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(renorm)) +0x0, including `lw` at 0x1cc9c, `lw` at 0x1ccd8.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(EXP_MIN)) +0x0, including `lw` at 0x1ccb8, `lw` at 0x1ccf0.
  The `jal` at 0x1c984 calls breakout_and_test2_sd with a0=a0 at entry (arg0), a1=sp-24, a2=sp-112, a3=sp-108, a4=sp-104, a5=sp-16, a6=sp-96, a7=sp-92.
  The `jal` at 0x1c9f8 calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=?, a3=([[-0x5fec]+844] | 0x10040), a4=[-0x5fec], a5=0x10040.
  The `jal` at 0x1ca00 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1ca2c calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x1ca34 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1ca94 calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=?, a3=sym(SIGN_SHIFT), a6=([[-0x5fec]+844] | 0x10040), a7=[-0x5fec].
  The `jal` at 0x1ca9c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1cb3c calls mul64 with a0=?, a1=?, a2=sp-80, a3=?.
  The `jal` at 0x1cb48 calls renorm_d with a0=sp-72, a1=?, a2=?, a3=?.
  The `jalr` at 0x1cb90 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?, a6=[((a0 << 0x2) + sym(round))].
  The `jal` at 0x1cbbc calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x1cbc4 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1cbf0 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x1cbf8 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1cc40 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=[((a0 << 0x2) + sym(SIGN_SHIFT))], a3=?.
  The `jal` at 0x1cc48 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1cc7c calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=([[-0x5fec]+844] | 0x10040), a4=[-0x5fec], a5=0x10040.
  The `jal` at 0x1cc84 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1cca0 calls (unknown callee) with a0=sp-104, a1=?, a2=[((a0 << 0x2) + sym(renorm))], a3=?.
  The `jalr` at 0x1ccdc calls (unknown callee) with a0=sp-88, a1=?, a2=sym(EXP_BIAS), a3=?, a7=[((a0 << 0x2) + sym(renorm))].
  The `jal` at 0x1cd14 calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=sym(SIGN_SHIFT), a6=([[-0x5fec]+844] | 0x10040), a7=[-0x5fec].
  The `jal` at 0x1cd1c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x1c98c targets 0x1ca3c, is taken when v0(=ret(breakout_and_test2_sd)) != 0, and falls through when v0(=ret(breakout_and_test2_sd)) == 0.
  The `bne` branch at 0x1c9a8 targets 0x1ca50, is taken when a0(=[((a0 << 0x2) + sym(EXP_INF))]) != a6(?), and falls through when a0(=[((a0 << 0x2) + sym(EXP_INF))]) == a6(?).
  The `beq` branch at 0x1c9b0 targets 0x1cbd4, is taken when a0(=[((a0 << 0x2) + sym(EXP_INF))]) == a3(?), and falls through when a0(=[((a0 << 0x2) + sym(EXP_INF))]) != a3(?).
  The `bne` branch at 0x1c9b8 targets 0x1ca14, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `bne` branch at 0x1c9c4 targets 0x1ca14, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x1c9f0 targets 0x1cc6c, is taken when (a2(=[[-0x5fec]+844]) & 0x800) == 0, and falls through when (a2(=[[-0x5fec]+844]) & 0x800) != 0.
  The `beq` branch at 0x1ca08 targets 0x1ca40 and is always taken.
  The `bne` branch at 0x1ca50 targets 0x1caac, is taken when a0(=[((a0 << 0x2) + sym(EXP_INF))]) != a3(?), and falls through when a0(=[((a0 << 0x2) + sym(EXP_INF))]) == a3(?).
  The `bne` branch at 0x1ca58 targets 0x1cba4, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x1ca64 targets 0x1cba0, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x1ca8c targets 0x1cd04, is taken when (a5(=[[-0x5fec]+844]) & 0x800) == 0, and falls through when (a5(=[[-0x5fec]+844]) & 0x800) != 0.
  The `beq` branch at 0x1caa4 targets 0x1ca40 and is always taken.
  The `beq` branch at 0x1caac targets 0x1cc08, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x1cab4 targets 0x1cc18, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1cabc targets 0x1cc94, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x1caf0 targets 0x1ccd0, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1cb20 targets 0x1cc58, is taken when s0(=a0) == 0, and falls through when s0(=a0) != 0.
  The `bne` branch at 0x1cb78 targets 0x1cb84, is taken when v0(=ret(renorm_d)) != t1(=0xb), and falls through when v0(=ret(renorm_d)) == t1(=0xb).
  The `beq` branch at 0x1cb98 targets 0x1ca40 and is always taken.
  The `beq` branch at 0x1cbcc targets 0x1ca40 and is always taken.
  The `beq` branch at 0x1cc00 targets 0x1ca40 and is always taken.
  The `bne` branch at 0x1cc08 targets 0x1cab4, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x1cc10 targets 0x1cc20 and is always taken.
  The `bne` branch at 0x1cc18 targets 0x1cabc, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x1cc50 targets 0x1ca40 and is always taken.
  The `beq` branch at 0x1cc64 targets 0x1cb28 and is always taken.
  The `beq` branch at 0x1cc8c targets 0x1ca40 and is always taken.
  The `bne` branch at 0x1ccc8 targets 0x1caf8, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x1ccfc targets 0x1cb20 and is always taken.
  The `beq` branch at 0x1cd24 targets 0x1ca40 and is always taken.
  The return at 0x1ca48 has v0 = one of ret(store_fpcsr), ?, ret(?).
  The instructions from 0x1ca10 to 0x1ca10 are not reached by any path from the entry, and their branches are not listed.
- `_abs_sd` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1cd2c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1cd2c-0x1cdd0 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0x1cd50 loads 4 bytes from ((a0 << 0x2) + sym(EXP_SHIFT)) +0x0.
  The `ld` at 0x1cd60 loads 8 bytes from ((a0 << 0x3) + sym(FRAC_MASK)) +0x0.
  The `lw` at 0x1cd68 loads 4 bytes from ((a0 << 0x2) + sym(EXP_MASK)) +0x0.
  The `ld` at 0x1cda8 loads 8 bytes from ?.
  The `jal` at 0x1cd80 calls screen_nan_sd with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a5=a1 at entry (arg1), a6=sym(EXP_MASK).
  The `jal` at 0x1cdb8 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=sym(SIGNBIT).
  The `jal` at 0x1cdc0 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1cd88 targets 0x1cd9c, is taken when v0(=ret(screen_nan_sd)) == 0, and falls through when v0(=ret(screen_nan_sd)) != 0.
  The `beq` branch at 0x1cdc8 targets 0x1cd94 and is always taken.
  The return at 0x1cd94 has v0 = one of ret(screen_nan_sd), ret(store_fpcsr).
- `_neg_sd` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1cdd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1cdd0-0x1ce70 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0x1cdf4 loads 4 bytes from ((a0 << 0x2) + sym(EXP_SHIFT)) +0x0.
  The `ld` at 0x1ce04 loads 8 bytes from ((a0 << 0x3) + sym(FRAC_MASK)) +0x0.
  The `lw` at 0x1ce0c loads 4 bytes from ((a0 << 0x2) + sym(EXP_MASK)) +0x0.
  The `ld` at 0x1ce50 loads 8 bytes from ?.
  The `jal` at 0x1ce24 calls screen_nan_sd with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a5=a1 at entry (arg1), a6=sym(EXP_MASK).
  The `jal` at 0x1ce58 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0x1ce60 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1ce2c targets 0x1ce40, is taken when v0(=ret(screen_nan_sd)) == 0, and falls through when v0(=ret(screen_nan_sd)) != 0.
  The `beq` branch at 0x1ce68 targets 0x1ce38 and is always taken.
  The return at 0x1ce38 has v0 = one of ret(screen_nan_sd), ret(store_fpcsr).
- `_div_sd` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1ce70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1ce70-0x1d310 (1184 bytes).
  It occupies 1184 bytes.
  The `lw` at 0x1cec8 loads 4 bytes from ((a0 << 0x2) + sym(EXP_INF)) +0x0.
  6 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x1cee0, `lw` at 0x1cef8, `lw` at 0x1d128.
  6 such `lw` accesses load 4 bytes from [-0x5fec] +0x34c, including `lw` at 0x1cee8, `lw` at 0x1cefc, `lw` at 0x1d12c.
  3 such `sw` accesses store 4 bytes to [-0x5fec] +0x34c, including `sw` at 0x1cef4, `sw` at 0x1d134, `sw` at 0x1d258.
  The `lw` at 0x1cf58 loads 4 bytes from ((a0 << 0x2) + sym(round)) +0x0.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(EXP_BIAS)) +0x0, including `lw` at 0x1cfa8, `lw` at 0x1cfd0.
  2 such `ld` accesses load 8 bytes from (sym(IMP_1BIT) + (a0 << 0x3)) +0x0, including `ld` at 0x1cfb0, `ld` at 0x1cfd8.
  The `lw` at 0x1d014 loads 4 bytes from ((a0 << 0x2) + sym(MANTWIDTH)) +0x0.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(renorm)) +0x0, including `lw` at 0x1d0b0, `lw` at 0x1d0ec.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(EXP_MIN)) +0x0, including `lw` at 0x1d0cc, `lw` at 0x1d104.
  2 such `ld` accesses load 8 bytes from (sym(QUIETNAN) + (a0 << 0x3)) +0x0, including `ld` at 0x1d178, `ld` at 0x1d2ec.
  4 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(SIGN_SHIFT)) +0x0, including `lw` at 0x1d194, `lw` at 0x1d1d8, `lw` at 0x1d21c.
  The `ld` at 0x1d2b0 loads 8 bytes from (sym(INFINITY) + (a0 << 0x3)) +0x0.
  The `jal` at 0x1ceac calls breakout_and_test2_sd with a0=a0 at entry (arg0), a1=sp-24, a2=sp-96, a3=sp-92, a4=sp-88, a5=sp-16, a6=sp-80, a7=sp-76.
  The `jal` at 0x1cf0c calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=?, a3=([[-0x5fec]+844] | 0x10040), a4=[-0x5fec], a5=0x10040.
  The `jal` at 0x1cf14 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1cf60 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?, a5=[((a0 << 0x2) + sym(round))], a6=one of 0x1, 0x4000000000000000.
  The `jalr` at 0x1d0b4 calls (unknown callee) with a0=sp-88, a1=?, a2=?, a3=?, a4=[((a0 << 0x2) + sym(renorm))].
  The `jalr` at 0x1d0f0 calls (unknown callee) with a0=sp-72, a1=sym(IMP_1BIT), a2=?, a3=[((a0 << 0x2) + sym(renorm))].
  The `jal` at 0x1d14c calls post_sig with a0=0x8, a1=?, a2=?, a3=([[-0x5fec]+844] | 0x8020), a4=[-0x5fec].
  The `jal` at 0x1d154 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1d174 calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=([[-0x5fec]+844] | 0x10040), a4=[-0x5fec], a5=0x10040.
  The `jal` at 0x1d17c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1d1a4 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x1d1ac calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1d1e0 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=[((a0 << 0x2) + sym(SIGN_SHIFT))], a3=?.
  The `jal` at 0x1d1e8 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1d224 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=[((a0 << 0x2) + sym(SIGN_SHIFT))], a3=?, a4=sym(renorm).
  The `jal` at 0x1d22c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1d270 calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=?, a3=?, a5=([[-0x5fec]+844] | 0x10040), a6=[-0x5fec], a7=0x10040.
  The `jal` at 0x1d278 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1d2c0 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))], a4=(a0 << 0x3).
  The `jal` at 0x1d2c8 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1d2e8 calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=?, a5=([[-0x5fec]+844] | 0x10040), a6=[-0x5fec], a7=0x10040.
  The `jal` at 0x1d2f0 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x1ceb4 targets 0x1cf68, is taken when v0(=ret(breakout_and_test2_sd)) != 0, and falls through when v0(=ret(breakout_and_test2_sd)) == 0.
  The `bne` branch at 0x1ced0 targets 0x1cf7c, is taken when a1(=[((a0 << 0x2) + sym(EXP_INF))]) != a2(?), and falls through when a1(=[((a0 << 0x2) + sym(EXP_INF))]) == a2(?).
  The `bne` branch at 0x1ced8 targets 0x1d18c, is taken when a1(=[((a0 << 0x2) + sym(EXP_INF))]) != a0(?), and falls through when a1(=[((a0 << 0x2) + sym(EXP_INF))]) == a0(?).
  The `beq` branch at 0x1cf04 targets 0x1d164, is taken when (a2(=[[-0x5fec]+844]) & 0x800) == 0, and falls through when (a2(=[[-0x5fec]+844]) & 0x800) != 0.
  The `beq` branch at 0x1cf1c targets 0x1cf6c and is always taken.
  The `beq` branch at 0x1cf24 targets 0x1cf34, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x1cf34 targets 0x1cf50, is taken when s1(=a0) != 0, and falls through when s1(=a0) == 0.
  The `beq` branch at 0x1cf7c targets 0x1d1bc, is taken when a1(=[((a0 << 0x2) + sym(EXP_INF))]) == a0(?), and falls through when a1(=[((a0 << 0x2) + sym(EXP_INF))]) != a0(?).
  The `beq` branch at 0x1cf84 targets 0x1d118, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1cf8c targets 0x1d0a4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1cfc0 targets 0x1d0e4, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1cff8 targets 0x1d00c, is taken when a5(?) >= a6(?) (unsigned), and falls through when a5(?) < a6(?) (unsigned).
  The `bltz` branch at 0x1d018 targets 0x1d1f8, is taken when a7(=[((a0 << 0x2) + sym(MANTWIDTH))]) < 0 (signed), and falls through when a7(=[((a0 << 0x2) + sym(MANTWIDTH))]) >= 0 (signed).
  The `beq` branch at 0x1d020 targets 0x1d300 and is always taken.
  The `bne` branch at 0x1d034 targets 0x1d084, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `bne` branch at 0x1d044 targets 0x1d058, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bne` branch at 0x1d060 targets 0x1d084, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `bne` branch at 0x1d06c targets 0x1d028, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x1d07c targets 0x1d028 and is always taken.
  The `bne` branch at 0x1d088 targets 0x1cf24, is taken when a5(?) < a6(?) (unsigned), and falls through when a5(?) >= a6(?) (unsigned).
  The `beq` branch at 0x1d09c targets 0x1cf24 and is always taken.
  The `beq` branch at 0x1d0a4 targets 0x1d200, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x1d0dc targets 0x1cfc8, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x1d110 targets 0x1cff0 and is always taken.
  The `bne` branch at 0x1d118 targets 0x1cf8c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x1d120 targets 0x1d23c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1d144 targets 0x1d288, is taken when (a2(=[[-0x5fec]+844]) & 0x400) == 0, and falls through when (a2(=[[-0x5fec]+844]) & 0x400) != 0.
  The `beq` branch at 0x1d15c targets 0x1cf6c and is always taken.
  The `beq` branch at 0x1d184 targets 0x1cf6c and is always taken.
  The `beq` branch at 0x1d1b4 targets 0x1cf6c and is always taken.
  The `beq` branch at 0x1d1f0 targets 0x1cf6c and is always taken.
  The `beq` branch at 0x1d1f8 targets 0x1d084 and is always taken.
  The `beq` branch at 0x1d234 targets 0x1cf6c and is always taken.
  The `bne` branch at 0x1d23c targets 0x1d128, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x1d268 targets 0x1d2d8, is taken when (a4(=[[-0x5fec]+844]) & 0x800) == 0, and falls through when (a4(=[[-0x5fec]+844]) & 0x800) != 0.
  The `beq` branch at 0x1d280 targets 0x1cf6c and is always taken.
  The `beq` branch at 0x1d2d0 targets 0x1cf6c and is always taken.
  The `beq` branch at 0x1d2f8 targets 0x1cf6c and is always taken.
  The `beq` branch at 0x1d308 targets 0x1d040 and is always taken.
  The return at 0x1cf74 has v0 = one of ret(store_fpcsr), ?.
- `dumptlb` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1d310 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1d310-0x1d480 (368 bytes).
  It occupies 368 bytes.
  The `sw` at 0x1d39c stores 4 bytes to ([sym(tlbdumptbl)] + (((a0 << 0x7) + a0) << 0x3)) +0x0.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1d3e0, `ld` at 0x1d420.
  The `ld` at 0x1d47c loads 8 bytes from ([sym(tlbdumptbl)] + (((a0 << 0x7) + a0) << 0x3)) +0x8.
  The `jal` at 0x1d370 calls tlbgetent with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1d458 calls printf with a0=sym(.rodata)+20400, a1=a0 at entry (arg0), a2=?, a3=?, a5=0xffffffff80000000.
  The `beq` branch at 0x1d338 targets 0x1d460, is taken when a3(=[sym(tlbdumptbl)]) == 0, and falls through when a3(=[sym(tlbdumptbl)]) != 0.
  The `blez` branch at 0x1d354 targets 0x1d394, is taken when a1(=[sym(ntlbentries)]) <= 0 (signed), and falls through when a1(=[sym(ntlbentries)]) > 0 (signed).
  The `bne` branch at 0x1d38c targets 0x1d364, is taken when s0(?) < a3(=[sym(ntlbentries)]) (signed), and falls through when s0(?) >= a3(=[sym(ntlbentries)]) (signed).
  The `bne` branch at 0x1d3c4 targets 0x1d460, is taken when t0(=[sym(ntlbentries)]) < 0x2 (signed), and falls through when t0(=[sym(ntlbentries)]) >= 0x2 (signed).
  The `beq` branch at 0x1d3d8 targets 0x1d478 and is always taken.
  The `beq` branch at 0x1d3ec targets 0x1d3fc, is taken when a5(=0xffffffff80000000) == at(?), and falls through when a5(=0xffffffff80000000) != at(?).
  The `beq` branch at 0x1d3f4 targets 0x1d450, is taken when a7(?) == a6(?), and falls through when a7(?) != a6(?).
  The `bne` branch at 0x1d404 targets 0x1d3e0, is taken when a3(?) < t0(=[sym(ntlbentries)]) (signed), and falls through when a3(?) >= t0(=[sym(ntlbentries)]) (signed).
  The `beq` branch at 0x1d418 targets 0x1d460, is taken when s0(?) >= ra(=[sym(ntlbentries)]-1) (signed), and falls through when s0(?) < ra(=[sym(ntlbentries)]-1) (signed).
  The `beq` branch at 0x1d438 targets 0x1d40c, is taken when a5(=0xffffffff80000000) == a0(?), and falls through when a5(=0xffffffff80000000) != a0(?).
  The `bne` branch at 0x1d440 targets 0x1d3e0, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x1d448 targets 0x1d410 and is always taken.
  The `beq` branch at 0x1d478 targets 0x1d424 and is always taken.
  The return at 0x1d470 has v0 = one of ?, ret(printf).
- `checkAllTlbsDumped` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1d480 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1d480-0x1d514 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0x1d4b0 loads 4 bytes from ?.
  The `jal` at 0x1d4f0 calls printf with a0=sym(.rodata)+20400, a1=?, a2=?, a3=[sym(maxcpus)].
  The `beq` branch at 0x1d494 targets 0x1d4d0, is taken when at(=[sym(tlbdumptbl)]) == 0, and falls through when at(=[sym(tlbdumptbl)]) != 0.
  The `blez` branch at 0x1d4a0 targets 0x1d4d0, is taken when a3(=[sym(maxcpus)]) <= 0 (signed), and falls through when a3(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x1d4bc targets 0x1d4e4, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x1d4c8 targets 0x1d4b0, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x1d504 targets 0x1d4a8, is taken when s1(?) < a3(=[sym(maxcpus)]) (signed), and falls through when s1(?) >= a3(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x1d50c targets 0x1d4d4 and is always taken.
  The return at 0x1d4dc has v0 = one of ?, ret(printf).
- `flash_getenv` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1d514 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1d514-0x1d54c (56 bytes).
  It occupies 56 bytes.
  The `jal` at 0x1d528 calls strncmp with a0=sym(.rodata)+20608, a1=a0 at entry (arg0), a2=0x5, a3=a3 at entry (arg3).
  The `beq` branch at 0x1d530 targets 0x1d544, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0x1d544 targets 0x1d53c and is always taken.
  The return at 0x1d53c has v0 = one of 0x0, sym(.rodata)+10312.
- `flash_nvram_tab` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1d54c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1d54c-0x1d554 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1d54c has v0 = ?.
- `VEC_nofault` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1d55c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1d55c-0x1d570 (20 bytes).
  It occupies 20 bytes.
  The `jal` at 0x1d560 calls trap_nofault with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=s0 at entry, a3=a3 at entry (arg3).
  Calls exception_exit via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x1d568).
- `VEC_cpfault` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1d570 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1d570-0x1d8f4 (900 bytes).
  It occupies 900 bytes.
  3 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x1d594, `lw` at 0x1d720, `lw` at 0x1d8a0.
  2 such `lw` accesses load 4 bytes from [-0x5fec] +0x280, including `lw` at 0x1d5a0, `lw` at 0x1d724.
  The `sw` at 0x1d5a4 stores 4 bytes to [[-0x5fec]+640] +0x138.
  The `sd` at 0x1d5a8 stores 8 bytes to ?.
  The `lw` at 0x1d5ac loads 4 bytes from abs 0xffffffffffffa208.
  The `lw` at 0x1d5c4 loads 4 bytes from [-0x5df8] +0x1fc.
  The `lb` at 0x1d5c8 loads 1 byte from [[-0x5df8]+508] +0x5c.
  The `lw` at 0x1d5f8 loads 4 bytes from [-0x5df8] +0x280.
  The `sw` at 0x1d60c stores 4 bytes to [[-0x5df8]+640] +0x130.
  The `swc1` at 0x1d618 stores 4 bytes to [[-0x5df8]+640] +0x124.
  The `swc1` at 0x1d61c stores 4 bytes to [[-0x5df8]+640] +0x11c.
  The `swc1` at 0x1d620 stores 4 bytes to [[-0x5df8]+640] +0x114.
  The `swc1` at 0x1d624 stores 4 bytes to [[-0x5df8]+640] +0x10c.
  The `swc1` at 0x1d628 stores 4 bytes to [[-0x5df8]+640] +0x104.
  The `swc1` at 0x1d62c stores 4 bytes to [[-0x5df8]+640] +0xfc.
  The `swc1` at 0x1d630 stores 4 bytes to [[-0x5df8]+640] +0xf4.
  The `swc1` at 0x1d634 stores 4 bytes to [[-0x5df8]+640] +0xec.
  The `swc1` at 0x1d638 stores 4 bytes to [[-0x5df8]+640] +0xe4.
  The `swc1` at 0x1d63c stores 4 bytes to [[-0x5df8]+640] +0xdc.
  The `swc1` at 0x1d640 stores 4 bytes to [[-0x5df8]+640] +0xd4.
  The `swc1` at 0x1d644 stores 4 bytes to [[-0x5df8]+640] +0xcc.
  The `swc1` at 0x1d648 stores 4 bytes to [[-0x5df8]+640] +0xc4.
  The `swc1` at 0x1d64c stores 4 bytes to [[-0x5df8]+640] +0xbc.
  The `swc1` at 0x1d650 stores 4 bytes to [[-0x5df8]+640] +0xb4.
  The `swc1` at 0x1d654 stores 4 bytes to [[-0x5df8]+640] +0xac.
  The `swc1` at 0x1d658 stores 4 bytes to [[-0x5df8]+640] +0xa4.
  The `swc1` at 0x1d65c stores 4 bytes to [[-0x5df8]+640] +0x9c.
  The `swc1` at 0x1d660 stores 4 bytes to [[-0x5df8]+640] +0x94.
  The `swc1` at 0x1d664 stores 4 bytes to [[-0x5df8]+640] +0x8c.
  The `swc1` at 0x1d668 stores 4 bytes to [[-0x5df8]+640] +0x84.
  The `swc1` at 0x1d66c stores 4 bytes to [[-0x5df8]+640] +0x7c.
  The `swc1` at 0x1d670 stores 4 bytes to [[-0x5df8]+640] +0x74.
  The `swc1` at 0x1d674 stores 4 bytes to [[-0x5df8]+640] +0x6c.
  The `swc1` at 0x1d678 stores 4 bytes to [[-0x5df8]+640] +0x64.
  The `swc1` at 0x1d67c stores 4 bytes to [[-0x5df8]+640] +0x5c.
  The `swc1` at 0x1d680 stores 4 bytes to [[-0x5df8]+640] +0x54.
  The `swc1` at 0x1d684 stores 4 bytes to [[-0x5df8]+640] +0x4c.
  The `swc1` at 0x1d688 stores 4 bytes to [[-0x5df8]+640] +0x44.
  The `swc1` at 0x1d68c stores 4 bytes to [[-0x5df8]+640] +0x3c.
  The `swc1` at 0x1d690 stores 4 bytes to [[-0x5df8]+640] +0x34.
  The `swc1` at 0x1d694 stores 4 bytes to [[-0x5df8]+640] +0x2c.
  The `sdc1` at 0x1d6a0 stores 8 bytes to [[-0x5df8]+640] +0x120.
  The `sdc1` at 0x1d6a4 stores 8 bytes to [[-0x5df8]+640] +0x118.
  The `sdc1` at 0x1d6a8 stores 8 bytes to [[-0x5df8]+640] +0x110.
  The `sdc1` at 0x1d6ac stores 8 bytes to [[-0x5df8]+640] +0x108.
  The `sdc1` at 0x1d6b0 stores 8 bytes to [[-0x5df8]+640] +0x100.
  The `sdc1` at 0x1d6b4 stores 8 bytes to [[-0x5df8]+640] +0xf8.
  The `sdc1` at 0x1d6b8 stores 8 bytes to [[-0x5df8]+640] +0xf0.
  The `sdc1` at 0x1d6bc stores 8 bytes to [[-0x5df8]+640] +0xe8.
  The `sdc1` at 0x1d6c0 stores 8 bytes to [[-0x5df8]+640] +0xe0.
  The `sdc1` at 0x1d6c4 stores 8 bytes to [[-0x5df8]+640] +0xd8.
  The `sdc1` at 0x1d6c8 stores 8 bytes to [[-0x5df8]+640] +0xd0.
  The `sdc1` at 0x1d6cc stores 8 bytes to [[-0x5df8]+640] +0xc8.
  The `sdc1` at 0x1d6d0 stores 8 bytes to [[-0x5df8]+640] +0xc0.
  The `sdc1` at 0x1d6d4 stores 8 bytes to [[-0x5df8]+640] +0xb8.
  The `sdc1` at 0x1d6d8 stores 8 bytes to [[-0x5df8]+640] +0xb0.
  The `sdc1` at 0x1d6dc stores 8 bytes to [[-0x5df8]+640] +0xa8.
  The `sdc1` at 0x1d6e0 stores 8 bytes to [[-0x5df8]+640] +0xa0.
  The `sdc1` at 0x1d6e4 stores 8 bytes to [[-0x5df8]+640] +0x98.
  The `sdc1` at 0x1d6e8 stores 8 bytes to [[-0x5df8]+640] +0x90.
  The `sdc1` at 0x1d6ec stores 8 bytes to [[-0x5df8]+640] +0x88.
  The `sdc1` at 0x1d6f0 stores 8 bytes to [[-0x5df8]+640] +0x80.
  The `sdc1` at 0x1d6f4 stores 8 bytes to [[-0x5df8]+640] +0x78.
  The `sdc1` at 0x1d6f8 stores 8 bytes to [[-0x5df8]+640] +0x70.
  The `sdc1` at 0x1d6fc stores 8 bytes to [[-0x5df8]+640] +0x68.
  The `sdc1` at 0x1d700 stores 8 bytes to [[-0x5df8]+640] +0x60.
  The `sdc1` at 0x1d704 stores 8 bytes to [[-0x5df8]+640] +0x58.
  The `sdc1` at 0x1d708 stores 8 bytes to [[-0x5df8]+640] +0x50.
  The `sdc1` at 0x1d70c stores 8 bytes to [[-0x5df8]+640] +0x48.
  The `sdc1` at 0x1d710 stores 8 bytes to [[-0x5df8]+640] +0x40.
  The `sdc1` at 0x1d714 stores 8 bytes to [[-0x5df8]+640] +0x38.
  The `sdc1` at 0x1d718 stores 8 bytes to [[-0x5df8]+640] +0x30.
  The `sdc1` at 0x1d71c stores 8 bytes to [[-0x5df8]+640] +0x28.
  The `lw` at 0x1d728 loads 4 bytes from [-0x5fec] +0x1fc.
  The `lb` at 0x1d72c loads 1 byte from [[-0x5fec]+508] +0x5c.
  The `lwc1` at 0x1d768 loads 4 bytes from [[-0x5fec]+640] +0x2c.
  The `lwc1` at 0x1d76c loads 4 bytes from [[-0x5fec]+640] +0x34.
  The `lwc1` at 0x1d770 loads 4 bytes from [[-0x5fec]+640] +0x3c.
  The `lwc1` at 0x1d774 loads 4 bytes from [[-0x5fec]+640] +0x44.
  The `lwc1` at 0x1d778 loads 4 bytes from [[-0x5fec]+640] +0x4c.
  The `lwc1` at 0x1d77c loads 4 bytes from [[-0x5fec]+640] +0x54.
  The `lwc1` at 0x1d780 loads 4 bytes from [[-0x5fec]+640] +0x5c.
  The `lwc1` at 0x1d784 loads 4 bytes from [[-0x5fec]+640] +0x64.
  The `lwc1` at 0x1d788 loads 4 bytes from [[-0x5fec]+640] +0x6c.
  The `lwc1` at 0x1d78c loads 4 bytes from [[-0x5fec]+640] +0x74.
  The `lwc1` at 0x1d790 loads 4 bytes from [[-0x5fec]+640] +0x7c.
  The `lwc1` at 0x1d794 loads 4 bytes from [[-0x5fec]+640] +0x84.
  The `lwc1` at 0x1d798 loads 4 bytes from [[-0x5fec]+640] +0x8c.
  The `lwc1` at 0x1d79c loads 4 bytes from [[-0x5fec]+640] +0x94.
  The `lwc1` at 0x1d7a0 loads 4 bytes from [[-0x5fec]+640] +0x9c.
  The `lwc1` at 0x1d7a4 loads 4 bytes from [[-0x5fec]+640] +0xa4.
  The `lwc1` at 0x1d7a8 loads 4 bytes from [[-0x5fec]+640] +0xac.
  The `lwc1` at 0x1d7ac loads 4 bytes from [[-0x5fec]+640] +0xb4.
  The `lwc1` at 0x1d7b0 loads 4 bytes from [[-0x5fec]+640] +0xbc.
  The `lwc1` at 0x1d7b4 loads 4 bytes from [[-0x5fec]+640] +0xc4.
  The `lwc1` at 0x1d7b8 loads 4 bytes from [[-0x5fec]+640] +0xcc.
  The `lwc1` at 0x1d7bc loads 4 bytes from [[-0x5fec]+640] +0xd4.
  The `lwc1` at 0x1d7c0 loads 4 bytes from [[-0x5fec]+640] +0xdc.
  The `lwc1` at 0x1d7c4 loads 4 bytes from [[-0x5fec]+640] +0xe4.
  The `lwc1` at 0x1d7c8 loads 4 bytes from [[-0x5fec]+640] +0xec.
  The `lwc1` at 0x1d7cc loads 4 bytes from [[-0x5fec]+640] +0xf4.
  The `lwc1` at 0x1d7d0 loads 4 bytes from [[-0x5fec]+640] +0xfc.
  The `lwc1` at 0x1d7d4 loads 4 bytes from [[-0x5fec]+640] +0x104.
  The `lwc1` at 0x1d7d8 loads 4 bytes from [[-0x5fec]+640] +0x10c.
  The `lwc1` at 0x1d7dc loads 4 bytes from [[-0x5fec]+640] +0x114.
  The `lwc1` at 0x1d7e0 loads 4 bytes from [[-0x5fec]+640] +0x11c.
  The `lwc1` at 0x1d7e4 loads 4 bytes from [[-0x5fec]+640] +0x124.
  The `ldc1` at 0x1d7f0 loads 8 bytes from [[-0x5fec]+640] +0x28.
  The `ldc1` at 0x1d7f4 loads 8 bytes from [[-0x5fec]+640] +0x30.
  The `ldc1` at 0x1d7f8 loads 8 bytes from [[-0x5fec]+640] +0x38.
  The `ldc1` at 0x1d7fc loads 8 bytes from [[-0x5fec]+640] +0x40.
  The `ldc1` at 0x1d800 loads 8 bytes from [[-0x5fec]+640] +0x48.
  The `ldc1` at 0x1d804 loads 8 bytes from [[-0x5fec]+640] +0x50.
  The `ldc1` at 0x1d808 loads 8 bytes from [[-0x5fec]+640] +0x58.
  The `ldc1` at 0x1d80c loads 8 bytes from [[-0x5fec]+640] +0x60.
  The `ldc1` at 0x1d810 loads 8 bytes from [[-0x5fec]+640] +0x68.
  The `ldc1` at 0x1d814 loads 8 bytes from [[-0x5fec]+640] +0x70.
  The `ldc1` at 0x1d818 loads 8 bytes from [[-0x5fec]+640] +0x78.
  The `ldc1` at 0x1d81c loads 8 bytes from [[-0x5fec]+640] +0x80.
  The `ldc1` at 0x1d820 loads 8 bytes from [[-0x5fec]+640] +0x88.
  The `ldc1` at 0x1d824 loads 8 bytes from [[-0x5fec]+640] +0x90.
  The `ldc1` at 0x1d828 loads 8 bytes from [[-0x5fec]+640] +0x98.
  The `ldc1` at 0x1d82c loads 8 bytes from [[-0x5fec]+640] +0xa0.
  The `ldc1` at 0x1d830 loads 8 bytes from [[-0x5fec]+640] +0xa8.
  The `ldc1` at 0x1d834 loads 8 bytes from [[-0x5fec]+640] +0xb0.
  The `ldc1` at 0x1d838 loads 8 bytes from [[-0x5fec]+640] +0xb8.
  The `ldc1` at 0x1d83c loads 8 bytes from [[-0x5fec]+640] +0xc0.
  The `ldc1` at 0x1d840 loads 8 bytes from [[-0x5fec]+640] +0xc8.
  The `ldc1` at 0x1d844 loads 8 bytes from [[-0x5fec]+640] +0xd0.
  The `ldc1` at 0x1d848 loads 8 bytes from [[-0x5fec]+640] +0xd8.
  The `ldc1` at 0x1d84c loads 8 bytes from [[-0x5fec]+640] +0xe0.
  The `ldc1` at 0x1d850 loads 8 bytes from [[-0x5fec]+640] +0xe8.
  The `ldc1` at 0x1d854 loads 8 bytes from [[-0x5fec]+640] +0xf0.
  The `ldc1` at 0x1d858 loads 8 bytes from [[-0x5fec]+640] +0xf8.
  The `ldc1` at 0x1d85c loads 8 bytes from [[-0x5fec]+640] +0x100.
  The `ldc1` at 0x1d860 loads 8 bytes from [[-0x5fec]+640] +0x108.
  The `ldc1` at 0x1d864 loads 8 bytes from [[-0x5fec]+640] +0x110.
  The `ldc1` at 0x1d868 loads 8 bytes from [[-0x5fec]+640] +0x118.
  The `ldc1` at 0x1d86c loads 8 bytes from [[-0x5fec]+640] +0x120.
  The `lw` at 0x1d874 loads 4 bytes from [[-0x5fec]+640] +0x130.
  The `sw` at 0x1d8a8 stores 4 bytes to abs 0xffffffffffffa208.
  The `ld` at 0x1d8e0 loads 8 bytes from ?.
  Calls exception_exit via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=[-0x5fec] (`j` at 0x1d8c4).
  Calls exception_exit via direct with a0=a0 at entry (arg0), a1=[-0x5fec], a2=[-0x5df8], a3=a3 at entry (arg3) (`j` at 0x1d8cc).
  Calls VEC_trap via direct with a0=a0 at entry (arg0), a1=0x8c, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1d8d4).
  The `jal` at 0x1d8ec calls cmn_err with a0=0x0, a1=sym(.data)+22544, a2=?, a3=?.
  The `beq` branch at 0x1d574 targets 0x1d8dc, is taken when (s0 & 0x18) == 0, and falls through when (s0 & 0x18) != 0.
  The `bne` branch at 0x1d58c targets 0x1d8d4, is taken when a1(?) != at(=0x1), and falls through when a1(?) == at(=0x1).
  The `beq` branch at 0x1d5b4 targets 0x1d8cc, is taken when a2(=[-0x5df8]) == a1(=[-0x5fec]), and falls through when a2(=[-0x5df8]) != a1(=[-0x5fec]).
  The `beq` branch at 0x1d5bc targets 0x1d720, is taken when a2(=[-0x5df8]) == 0, and falls through when a2(=[-0x5df8]) != 0.
  The `beq` branch at 0x1d5d0 targets 0x1d5dc, is taken when (t0(=[[[-0x5df8]+508]+92]:1) & 0xc) == 0, and falls through when (t0(=[[[-0x5df8]+508]+92]:1) & 0xc) != 0.
  The `bne` branch at 0x1d610 targets 0x1d6a0, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x1d698 targets 0x1d720 and is always taken.
  The `beq` branch at 0x1d738 targets 0x1d744, is taken when (t0(=[[[-0x5fec]+508]+92]:1) & 0xc) == 0, and falls through when (t0(=[[[-0x5fec]+508]+92]:1) & 0xc) != 0.
  The `bne` branch at 0x1d760 targets 0x1d7f0, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x1d7e8 targets 0x1d870 and is always taken.
- `hwperf_init` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1d8f4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1d8f4-0x1d9fc (264 bytes).
  It occupies 264 bytes.
  The `sw` at 0x1d944 stores 4 bytes to sym(.bss) +0x2440.
  The `sh` at 0x1d950 stores 2 bytes to sym(.bss) +0x2448.
  The `sh` at 0x1d95c stores 2 bytes to sym(.bss) +0x244a.
  The `sw` at 0x1d968 stores 4 bytes to sym(.bss) +0x244c.
  3 such `lw` accesses load 4 bytes from sym(pdaindr) +0x4, including `lw` at 0x1d974, `lw` at 0x1d980, `lw` at 0x1d9e4.
  The `sw` at 0x1d97c stores 4 bytes to [sym(pdaindr)+4] +0x360.
  The `lw` at 0x1d988 loads 4 bytes from [sym(pdaindr)+4] +0x360.
  The `jal` at 0x1d8fc calls get_cpu_irr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1d92c calls spinlock_init with a0=sym(.bss)+9280, a1=sym(.rodata)+20672, a2=?, a3=?.
  The `jal` at 0x1d96c calls .text with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1d994 calls init_mutex with a0=[[sym(pdaindr)+4]+864]+28, a1=0x0, a2=sym(.rodata)+20672, a3=?.
  The `jal` at 0x1d9b4 calls .text with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1d9d8 calls cmn_err with a0=0x0, a1=sym(.rodata)+20672, a2=?, a3=?.
  The `jal` at 0x1d9ec calls cmn_err with a0=0x0, a1=sym(.rodata)+20672, a2=?, a3=?.
  The `beq` branch at 0x1d90c targets 0x1d9c4, is taken when at(?) >= 0x23 (signed), and falls through when at(?) < 0x23 (signed).
  The `blez` branch at 0x1d964 targets 0x1d9b0, is taken when a1(=[sym(maxcpus)]) <= 0 (signed), and falls through when a1(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x1d978 targets 0x1d9d4, is taken when v0(=ret(.text)) == 0, and falls through when v0(=ret(.text)) != 0.
  The `bne` branch at 0x1d9a8 targets 0x1d96c, is taken when s1(?) < a1(=[sym(maxcpus)]) (signed), and falls through when s1(?) >= a1(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x1d9bc targets 0x1d9e8, is taken when v0(=ret(.text)) == 0, and falls through when v0(=ret(.text)) != 0.
  The `beq` branch at 0x1d9e0 targets 0x1d984 and is always taken.
  The `beq` branch at 0x1d9f4 targets 0x1d9c8 and is always taken.
  The return at 0x1d9cc has v0 = one of ?, ret(cmn_err).
- `hwperf_overflowed_intr` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1d9fc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1d9fc-0x1da4c (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x1d9fc loads 4 bytes from abs 0xffffffffffffa1d0.
  The `jal` at 0x1da20 calls r10k_perf_overflow_intr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `jal` at 0x1da3c calls r12k_perf_overflow_intr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `beq` branch at 0x1da10 targets 0x1da3c, is taken when a2(?) == at(=0xe), and falls through when a2(?) != at(=0xe).
  The `beq` branch at 0x1da18 targets 0x1da3c, is taken when a2(?) == v0(=0xf), and falls through when a2(?) != v0(=0xf).
  The `beq` branch at 0x1da44 targets 0x1da2c and is always taken.
  The return at 0x1da34 has v0 = one of ret(r10k_perf_overflow_intr), ret(r12k_perf_overflow_intr).
- `hwperf_enable_sys_counters` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1da4c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1da4c-0x1da80 (52 bytes).
  It occupies 52 bytes.
  The `jal` at 0x1da6c calls hwperf_enable_counters with a0=[sym(sys_hwperf_mon)], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=(a2 | 0x8), a4=a3 at entry (arg3).
  The return at 0x1da78 has v0 = ret(hwperf_enable_counters).
- `hwperf_enable_counters` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1da80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1da80-0x1dc3c (444 bytes).
  It occupies 444 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc0, including `lw` at 0x1dad4, `lw` at 0x1dbac.
  The `lh` at 0x1db1c loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0x1dbb0 stores 2 bytes to a0 (arg0 at entry) +0x16.
  The `sh` at 0x1dbb4 stores 2 bytes to a0 (arg0 at entry) +0xc.
  The `lw` at 0x1dbb8 loads 4 bytes from ?.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0x1dbc8, `sw` at 0x1dc28.
  3 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x0, including `sh` at 0x1dbd8, `sh` at 0x1dbe0, `sh` at 0x1dbf8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x18, including `lw` at 0x1dc08, `lw` at 0x1dc18.
  The `sw` at 0x1dc14 stores 4 bytes to a4 (arg4 at entry) +0x0.
  The `jal` at 0x1dab0 calls cap_able with a0=0x2000000000, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1db14 calls mutex_lock with a0=a0+28, a1=0x19, a2=?, a3=?.
  The `jal` at 0x1db2c calls mutex_unlock with a0=a0+28, a1=?, a2=?, a3=?.
  The `jal` at 0x1db48 calls hwperf_get_access with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=?, a3=?.
  The `jal` at 0x1db58 calls mutex_unlock with a0=a0+28, a1=?, a2=?, a3=?.
  The `jal` at 0x1db78 calls r1nk_perf_init_counters with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x1db94 calls hwperf_release_access with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1db9c calls mutex_unlock with a0=a0+28, a1=?, a2=?, a3=?.
  The `jal` at 0x1dbf4 calls hwperf_initiate_startup with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1dc00 calls mutex_unlock with a0=a0+28, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1dabc targets 0x1dacc, is taken when (s1(=a3) & 0x8) == 0, and falls through when (s1(=a3) & 0x8) != 0.
  The `beq` branch at 0x1dac4 targets 0x1db68, is taken when v0(=ret(cap_able)) == 0, and falls through when v0(=ret(cap_able)) != 0.
  The `beq` branch at 0x1dacc targets 0x1db3c, is taken when s3(=a2) == 0, and falls through when s3(=a2) != 0.
  The `bltz` branch at 0x1dad8 targets 0x1dae8, is taken when v0(=[a1+192]) < 0 (signed), and falls through when v0(=[a1+192]) >= 0 (signed).
  The `bne` branch at 0x1dae0 targets 0x1db0c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x1db24 targets 0x1db48, is taken when (a2(=[a0]:2) & 0x8) == 0, and falls through when (a2(=[a0]:2) & 0x8) != 0.
  The `beq` branch at 0x1db34 targets 0x1daec and is always taken.
  The `beq` branch at 0x1db40 targets 0x1dad4 and is always taken.
  The `beq` branch at 0x1db50 targets 0x1db70, is taken when v0(=ret(hwperf_get_access)) == 0, and falls through when v0(=ret(hwperf_get_access)) != 0.
  The `beq` branch at 0x1db60 targets 0x1daec and is always taken.
  The `beq` branch at 0x1db68 targets 0x1daec and is always taken.
  The `beq` branch at 0x1db8c targets 0x1dbac, is taken when v0(=ret(r1nk_perf_init_counters)) == 0, and falls through when v0(=ret(r1nk_perf_init_counters)) != 0.
  The `beq` branch at 0x1dba4 targets 0x1daec and is always taken.
  The `beq` branch at 0x1dbbc targets 0x1dc18, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1dbc4 targets 0x1dc2c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1dbd4 targets 0x1dbe4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1dc10 targets 0x1daec and is always taken.
  The `bltz` branch at 0x1dc1c targets 0x1dc34, is taken when a1(=[a0+24]) < 0 (signed), and falls through when a1(=[a0+24]) >= 0 (signed).
  The `bne` branch at 0x1dc24 targets 0x1dbcc, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x1dc2c targets 0x1dbd0 and is always taken.
  The `beq` branch at 0x1dc34 targets 0x1dc24 and is always taken.
  The return at 0x1db04 has v0 = one of 0x16, 0x10, ?, 0x1, 0x0.
- `hwperf_disable_sys_counters` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1dc3c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1dc3c-0x1dc58 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x1dc44 calls hwperf_disable_counters with a0=[sym(sys_hwperf_mon)], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1dc50 has v0 = ret(hwperf_disable_counters).
- `hwperf_disable_counters` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1dc58 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1dc58-0x1dd48 (240 bytes).
  It occupies 240 bytes.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x0, including `lh` at 0x1dc7c, `lh` at 0x1dcf4.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x0, including `sh` at 0x1dca0, `sh` at 0x1dd34.
  The `lw` at 0x1dcb4 loads 4 bytes from sym(pdaindr) +0x4.
  The `lw` at 0x1dcb8 loads 4 bytes from [sym(pdaindr)+4] +0x360.
  The `lh` at 0x1dcbc loads 2 bytes from [[sym(pdaindr)+4]+864] +0x0.
  The `sh` at 0x1dcc4 stores 2 bytes to [[sym(pdaindr)+4]+864] +0x0.
  The `lw` at 0x1dd04 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `sw` at 0x1dd0c stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `jal` at 0x1dc74 calls mutex_lock with a0=a0+28, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1dcdc calls hwperf_read_counters with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=one of -0x89, -0x9, a5=sym(pdaindr).
  The `jal` at 0x1dce4 calls hwperf_check_release with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1dcec calls hwperf_release_access with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1dd10 calls mutex_unlock with a0=a0+28, a1=?, a2=?, a3=?.
  The `jal` at 0x1dd38 calls mutex_unlock with a0=a0+28, a1=?, a2=?, a3=?, a4=-0x89, a5=sym(pdaindr).
  The `beq` branch at 0x1dc94 targets 0x1dd38, is taken when (a3(=[a0]:2) & 0xf) == 0, and falls through when (a3(=[a0]:2) & 0xf) != 0.
  The `beq` branch at 0x1dc9c targets 0x1dcdc, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `blez` branch at 0x1dca8 targets 0x1dcdc, is taken when a6(=[sym(maxcpus)]) <= 0 (signed), and falls through when a6(=[sym(maxcpus)]) > 0 (signed).
  The `bne` branch at 0x1dcd4 targets 0x1dcb4, is taken when a3(?) < a7(=[sym(maxcpus)]) (signed), and falls through when a3(?) >= a7(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x1dcfc targets 0x1dd30, is taken when (v0(=[a0]:2) & 0x40) == 0, and falls through when (v0(=[a0]:2) & 0x40) != 0.
  The `beq` branch at 0x1dd30 targets 0x1dd04 and is always taken.
  The `beq` branch at 0x1dd40 targets 0x1dd1c and is always taken.
  The return at 0x1dd28 has v0 = 0x0.
- `hwperf_parent_accumulates` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1dd48 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1dd48-0x1dd7c (52 bytes).
  It occupies 52 bytes.
  The `lh` at 0x1dd50 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0x1dd60 stores 2 bytes to a0 (arg0 at entry) +0x0.
  The `lw` at 0x1dd64 loads 4 bytes from a0 (arg0 at entry) +0x18.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0x1dd68, `sw` at 0x1dd78.
  The `beq` branch at 0x1dd48 targets 0x1dd74, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x1dd58 targets 0x1dd64, is taken when (a3(=[a0]:2) & 0xf) == 0, and falls through when (a3(=[a0]:2) & 0xf) != 0.
  The `beq` branch at 0x1dd74 targets 0x1dd6c and is always taken.
  The return at 0x1dd6c has v0 = 0x0.
- `hwperf_change_sys_control` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1dd7c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1dd7c-0x1ddac (48 bytes).
  It occupies 48 bytes.
  The `jal` at 0x1dd98 calls hwperf_change_control with a0=[sym(sys_hwperf_mon)], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The return at 0x1dda4 has v0 = ret(hwperf_change_control).
- `cpumon_alloc` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1ddac (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1ddac-0x1ded0 (292 bytes).
  It occupies 292 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2d4, including `lw` at 0x1ddac, `lw` at 0x1de38, `lw` at 0x1deb4.
  The `lw` at 0x1dde4 loads 4 bytes from a0 (arg0 at entry) +0x1fc.
  The `sw` at 0x1ddf0 stores 4 bytes to a0 (arg0 at entry) +0x2d4.
  The `lw` at 0x1de48 loads 4 bytes from ?.
  The `lw` at 0x1de54 loads 4 bytes from ret(.text) +0x4.
  The `lh` at 0x1de58 loads 2 bytes from ret(.text) +0x0.
  The `sw` at 0x1de60 stores 4 bytes to ret(.text) +0x4.
  The `sh` at 0x1de68 stores 2 bytes to ret(.text) +0x0.
  The `sw` at 0x1de74 stores 4 bytes to ?.
  The `jal` at 0x1de04 calls get_cpu_irr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1de1c calls .text with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1de30 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1de70 calls splx with a0=ret(splhi), a1=?, a2=([ret(.text)+4] | 0x2), a3=([ret(.text)]:2 | 0x10).
  The `jal` at 0x1de80 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x1de90 calls hwperf_cpu_monitor_info_free with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1dec0 calls cmn_err with a0=0x0, a1=sym(.rodata)+20672, a2=?, a3=?.
  The `beq` branch at 0x1ddb8 targets 0x1ddcc, is taken when v0(=[a0+724]) == 0, and falls through when v0(=[a0+724]) != 0.
  The `beq` branch at 0x1dde8 targets 0x1de00 and is always taken.
  The `beq` branch at 0x1ddfc targets 0x1de80, is taken when s0(=one of 0x0, 0x1) == 0, and falls through when s0(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1de14 targets 0x1deb8, is taken when v0(?) >= 0x23 (signed), and falls through when v0(?) < 0x23 (signed).
  The `beq` branch at 0x1de28 targets 0x1de00, is taken when v0(=ret(.text)) == 0, and falls through when v0(=ret(.text)) != 0.
  The `bne` branch at 0x1de40 targets 0x1ddfc, is taken when v1(=[a0+724]) != 0, and falls through when v1(=[a0+724]) == 0.
  The `bne` branch at 0x1de4c targets 0x1ddf0, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x1de78 targets 0x1ddf8 and is always taken.
  The `beq` branch at 0x1de88 targets 0x1de9c, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x1deb0 targets 0x1ddc0 and is always taken.
  The `beq` branch at 0x1dec8 targets 0x1de1c and is always taken.
  The return at 0x1ddc4 has v0 = [a0+724].
- `hwperf_change_control` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1ded0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1ded0-0x1df2c (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x1dee4 calls hwperf_disable_counters with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1df0c calls hwperf_enable_counters with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x0, a3=a2 at entry (arg2), a4=a3 at entry (arg3).
  The `beq` branch at 0x1deec targets 0x1df00, is taken when v0(=ret(hwperf_disable_counters)) == 0, and falls through when v0(=ret(hwperf_disable_counters)) != 0.
  The `beq` branch at 0x1df14 targets 0x1df24, is taken when v0(=ret(hwperf_enable_counters)) == 0, and falls through when v0(=ret(hwperf_enable_counters)) != 0.
  The `beq` branch at 0x1df1c targets 0x1def8 and is always taken.
  The `beq` branch at 0x1df24 targets 0x1def4 and is always taken.
  The return at 0x1def8 has v0 = one of ?, ret(hwperf_enable_counters).
- `hwperf_sys_control_info` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1df2c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1df2c-0x1df5c (48 bytes).
  It occupies 48 bytes.
  The `jal` at 0x1df48 calls hwperf_control_info with a0=[sym(sys_hwperf_mon)], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The return at 0x1df54 has v0 = ret(hwperf_control_info).
- `hwperf_control_info` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1df5c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1df5c-0x1e0bc (352 bytes).
  It occupies 352 bytes.
  The `lh` at 0x1df90 loads 2 bytes from a0 (arg0 at entry) +0x0.
  6 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x60, including `lh` at 0x1dfa8, `lh` at 0x1dfbc, `lh` at 0x1dfd8.
  2 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x1dfb4, `lhu` at 0x1dfd0.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x1dfb8, `sh` at 0x1dfd4.
  The `lh` at 0x1dff8 loads 2 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0x1dffc stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1e01c, `sw` at 0x1e044.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1e034, `lw` at 0x1e05c.
  The `lw` at 0x1e074 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `sw` at 0x1e080 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0x1e0b8 loads 4 bytes from a0 (arg0 at entry) +0xa4.
  The `jal` at 0x1df88 calls mutex_lock with a0=a0+28, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1e07c calls mutex_unlock with a0=a0+28, a1=?, a2=?, a3=?.
  The `jal` at 0x1e0a0 calls mutex_unlock with a0=a0+28, a1=?, a2=?, a3=?, a5=a1 at entry (arg1), a6=a0 at entry (arg0).
  The `beq` branch at 0x1dfa0 targets 0x1e0a0, is taken when (at(=[a0]:2) & 0xf) == 0, and falls through when (at(=[a0]:2) & 0xf) != 0.
  The `blez` branch at 0x1dfac targets 0x1dff0, is taken when v0(=[a0+96]:2) <= 0 (signed), and falls through when v0(=[a0+96]:2) > 0 (signed).
  The `beq` branch at 0x1dfc8 targets 0x1dff0, is taken when v0(?) >= v1(=[a0+96]:2) (signed), and falls through when v0(?) < v1(=[a0+96]:2) (signed).
  The `bne` branch at 0x1dfe8 targets 0x1dfb4, is taken when v0(?) < a1(=[a0+96]:2) (signed), and falls through when v0(?) >= a1(=[a0+96]:2) (signed).
  The `beq` branch at 0x1dff0 targets 0x1e074, is taken when s1(=a2) == 0, and falls through when s1(=a2) != 0.
  The `blez` branch at 0x1e004 targets 0x1e070, is taken when a3(=[a0+96]:2) <= 0 (signed), and falls through when a3(=[a0+96]:2) > 0 (signed).
  The `beq` branch at 0x1e010 targets 0x1e0b0 and is always taken.
  The `beq` branch at 0x1e02c targets 0x1e070, is taken when v0(?) >= a7(=[a0+96]:2) (signed), and falls through when v0(?) < a7(=[a0+96]:2) (signed).
  The `beq` branch at 0x1e038 targets 0x1e044, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x1e054 targets 0x1e070, is taken when v0(?) >= t1(=[a0+96]:2) (signed), and falls through when v0(?) < t1(=[a0+96]:2) (signed).
  The `bne` branch at 0x1e060 targets 0x1e018, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x1e068 targets 0x1e01c and is always taken.
  The `beq` branch at 0x1e0a8 targets 0x1e088 and is always taken.
  The `beq` branch at 0x1e0b4 targets 0x1e038 and is always taken.
  The return at 0x1e098 has v0 = one of 0x0, 0x16.
- `hwperf_get_cpu_counters` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1e0bc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1e0bc-0x1e120 (100 bytes).
  It occupies 100 bytes.
  The `lhu` at 0x1e0c0 loads 2 bytes from sym(.bss) +0x2450.
  The `lw` at 0x1e0e0 loads 4 bytes from (sym(pdaindr) + (a0 << 0x3)) +0x4.
  The `lw` at 0x1e0e4 loads 4 bytes from [(sym(pdaindr) + (a0 << 0x3))+4] +0x360.
  The `jal` at 0x1e10c calls hwperf_get_counters with a0=[[(sym(pdaindr) + (a0 << 0x3))+4]+864], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=0x16.
  The `bne` branch at 0x1e0c8 targets 0x1e0fc, is taken when at(=[sym(.bss)+9296]:2) != v0(=0x8), and falls through when at(=[sym(.bss)+9296]:2) == v0(=0x8).
  The `bne` branch at 0x1e0ec targets 0x1e10c, is taken when v0(=[[(sym(pdaindr) + (a0 << 0x3))+4]+864]) != 0, and falls through when v0(=[[(sym(pdaindr) + (a0 << 0x3))+4]+864]) == 0.
  The `beq` branch at 0x1e0f4 targets 0x1e104 and is always taken.
  The `beq` branch at 0x1e118 targets 0x1e100 and is always taken.
  The return at 0x1e104 has v0 = one of 0x16, ?.
- `hwperf_get_sys_counters` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1e120 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1e120-0x1e148 (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0x1e134 calls hwperf_get_counters with a0=[sym(sys_hwperf_mon)], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The return at 0x1e140 has v0 = ret(hwperf_get_counters).
- `hwperf_get_counters` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1e148 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1e148-0x1e1fc (180 bytes).
  It occupies 180 bytes.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x60, including `lh` at 0x1e178, `lh` at 0x1e1c8.
  The `ld` at 0x1e198 loads 8 bytes from ?.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x1e19c, `sd` at 0x1e1c4.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1e1a0, `lw` at 0x1e1b0.
  The `lw` at 0x1e1dc loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `sw` at 0x1e1e4 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jal` at 0x1e168 calls mutex_lock with a0=a0+28, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1e170 calls hwperf_read_counters with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1e1e0 calls mutex_unlock with a0=?, a1=[a0+24], a2=a2 at entry (arg2), a3=?.
  The `blez` branch at 0x1e190 targets 0x1e1dc, is taken when at(=[a0+96]:2) <= 0 (signed), and falls through when at(=[a0+96]:2) > 0 (signed).
  The `beq` branch at 0x1e1a8 targets 0x1e1c8, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x1e1d4 targets 0x1e198, is taken when a6(?) < v1(=[a0+96]:2) (signed), and falls through when a6(?) >= v1(=[a0+96]:2) (signed).
  The return at 0x1e1f4 has v0 = 0x0.
- `hwperf_plus_counters` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1e1fc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1e1fc-0x1e2c8 (204 bytes).
  It occupies 204 bytes.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x60, including `lh` at 0x1e230, `lh` at 0x1e280.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1e24c, `lw` at 0x1e25c.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1e258, `ld` at 0x1e274.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x1e270, `sd` at 0x1e27c.
  The `lw` at 0x1e298 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x1e29c loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `sw` at 0x1e2ac stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jal` at 0x1e220 calls mutex_lock with a0=a0+28, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1e228 calls hwperf_read_counters with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1e2b4 calls mutex_unlock with a0=?, a1=?, a2=[a0+24], a3=?.
  The `blez` branch at 0x1e244 targets 0x1e298, is taken when at(=[a0+96]:2) <= 0 (signed), and falls through when at(=[a0+96]:2) > 0 (signed).
  The `beq` branch at 0x1e254 targets 0x1e274, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x1e290 targets 0x1e24c, is taken when a6(?) < v1(=[a0+96]:2) (signed), and falls through when a6(?) >= v1(=[a0+96]:2) (signed).
  The `beq` branch at 0x1e2a4 targets 0x1e2b4, is taken when a3(=[a2]) >= a2(=[a0+24]) (signed), and falls through when a3(=[a2]) < a2(=[a0+24]) (signed).
  The return at 0x1e2c0 has v0 = ret(mutex_unlock).
- `hwperf_set_counters` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1e2c8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1e2c8-0x1e378 (176 bytes).
  It occupies 176 bytes.
  3 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x60, including `lh` at 0x1e2f4, `lh` at 0x1e310, `lh` at 0x1e32c.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1e308, `ld` at 0x1e324.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x1e30c, `sd` at 0x1e328.
  The `lw` at 0x1e344 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x1e348 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `sw` at 0x1e358 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jal` at 0x1e2ec calls mutex_lock with a0=a0+28, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1e364 calls mutex_unlock with a0=?, a1=?, a2=[a0+24], a3=?.
  The `blez` branch at 0x1e300 targets 0x1e344, is taken when at(=[a0+96]:2) <= 0 (signed), and falls through when at(=[a0+96]:2) > 0 (signed).
  The `beq` branch at 0x1e31c targets 0x1e344, is taken when a3(?) >= v0(=[a0+96]:2) (signed), and falls through when a3(?) < v0(=[a0+96]:2) (signed).
  The `bne` branch at 0x1e33c targets 0x1e308, is taken when a3(?) < a0(=[a0+96]:2) (signed), and falls through when a3(?) >= a0(=[a0+96]:2) (signed).
  The `beq` branch at 0x1e350 targets 0x1e360, is taken when a3(=[a2]) >= a2(=[a0+24]) (signed), and falls through when a3(=[a2]) < a2(=[a0+24]) (signed).
  The return at 0x1e370 has v0 = ret(mutex_unlock).
- `hwperf_setup_counters` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1e378 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1e378-0x1e3c8 (80 bytes).
  It occupies 80 bytes.
  The `lhu` at 0x1e37c loads 2 bytes from sym(.bss) +0x2450.
  The `lw` at 0x1e390 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lh` at 0x1e394 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0x1e39c stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `sh` at 0x1e3ac stores 2 bytes to a0 (arg0 at entry) +0x0.
  The `sw` at 0x1e3bc stores 4 bytes to abs 0xffffffffffffa364.
  The `jal` at 0x1e3b8 calls r1nk_perf_start_counters with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1e388 targets 0x1e3b8, is taken when at(=[sym(.bss)+9296]:2) == v0(=0x4), and falls through when at(=[sym(.bss)+9296]:2) != v0(=0x4).
  The `beq` branch at 0x1e3c0 targets 0x1e3b0 and is always taken.
  The return at 0x1e3b0 has v0 = one of ?, ret(r1nk_perf_start_counters).
- `hwperf_multiplex_events` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1e3c8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1e3c8-0x1e490 (200 bytes).
  It occupies 200 bytes.
  The `lh` at 0x1e3f4 loads 2 bytes from a0 (arg0 at entry) +0x0.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x24, including `lh` at 0x1e404, `lh` at 0x1e42c.
  The `sh` at 0x1e424 stores 2 bytes to ?.
  The `lh` at 0x1e448 loads 2 bytes from ?.
  The `jal` at 0x1e3d4 calls r1nk_perf_update_counters with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1e3dc calls .text with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1e41c calls .text with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1e470 calls r1nk_perf_start_counters with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1e3ec targets 0x1e478, is taken when v0(=ret(.text)) == 0, and falls through when v0(=ret(.text)) != 0.
  The `beq` branch at 0x1e3fc targets 0x1e47c, is taken when (at(=[a0]:2) & 0x8) == 0, and falls through when (at(=[a0]:2) & 0x8) != 0.
  The `blez` branch at 0x1e408 targets 0x1e470, is taken when a0(=[a0+36]:2) <= 0 (signed), and falls through when a0(=[a0+36]:2) > 0 (signed).
  The `beq` branch at 0x1e410 targets 0x1e444 and is always taken.
  The `beq` branch at 0x1e43c targets 0x1e470, is taken when s0(?) >= a0(=[a0+36]:2) (signed), and falls through when s0(?) < a0(=[a0+36]:2) (signed).
  The `beq` branch at 0x1e450 targets 0x1e418, is taken when t8(?) >= 0x2 (signed), and falls through when t8(?) < 0x2 (signed).
  The `bne` branch at 0x1e468 targets 0x1e444, is taken when s0(?) < a0(=[a0+36]:2) (signed), and falls through when s0(?) >= a0(=[a0+36]:2) (signed).
  The return at 0x1e488 has v0 = one of ret(.text), ?.
- `hwperf_add_counters` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1e490 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1e490-0x1e504 (116 bytes).
  It occupies 116 bytes.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x60, including `lh` at 0x1e490, `lh` at 0x1e4e4.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1e4a8, `lw` at 0x1e4b8.
  The `ld` at 0x1e4b4 loads 8 bytes from ?.
  The `lld` at 0x1e4cc loads 8 bytes from ?.
  The `scd` at 0x1e4d8 stores 8 bytes to ?.
  The `blez` branch at 0x1e498 targets 0x1e4fc, is taken when at(=[a0+96]:2) <= 0 (signed), and falls through when at(=[a0+96]:2) > 0 (signed).
  The `beq` branch at 0x1e4b0 targets 0x1e4cc, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beql` branch at 0x1e4dc targets 0x1e4cc, is taken when a7(?) == 0, and falls through when a7(?) != 0; its branch-likely delay slot `nop` at 0x1e4e0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x1e4f4 targets 0x1e4a8, is taken when a6(?) < v1(=[a0+96]:2) (signed), and falls through when a6(?) >= v1(=[a0+96]:2) (signed).
  The return at 0x1e4fc has v0 = ?.
- `hwperf_fork_counters` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1e504 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1e504-0x1e5c4 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0x1e50c loads 4 bytes from a0 (arg0 at entry) +0x2d4.
  The `lh` at 0x1e530 loads 2 bytes from [a0+724] +0x0.
  The `lh` at 0x1e55c loads 2 bytes from ?.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x1e568, `sh` at 0x1e570.
  The `ll` at 0x1e588 loads 4 bytes from sym(.bss) +0x2458.
  The `sc` at 0x1e594 stores 4 bytes to sym(.bss) +0x2458.
  The `jal` at 0x1e528 calls mutex_lock with a0=[a0+724]+28, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1e540 calls cpumon_alloc with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x1e550 calls hwperf_copy_cmp with a0=[a0+724], a1=ret(cpumon_alloc), a2=?, a3=?.
  The `jal` at 0x1e574 calls mutex_unlock with a0=[a0+724]+28, a1=-0x1, a2=?, a3=?.
  The `jal` at 0x1e5b4 calls mutex_unlock with a0=[a0+724]+28, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1e518 targets 0x1e5a0, is taken when s0(=[a0+724]) == 0, and falls through when s0(=[a0+724]) != 0.
  The `beq` branch at 0x1e538 targets 0x1e5b4, is taken when (at(=[[a0+724]]:2) & 0xf) == 0, and falls through when (at(=[[a0+724]]:2) & 0xf) != 0.
  The `beql` branch at 0x1e598 targets 0x1e588, is taken when a5(=[sym(.bss)+9304]+1) == 0, and falls through when a5(=[sym(.bss)+9304]+1) != 0; its branch-likely delay slot `nop` at 0x1e59c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x1e5bc targets 0x1e5a4 and is always taken.
  The return at 0x1e5ac has v0 = one of ?, ret(mutex_unlock).
- `hwperf_intr` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1e5c4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1e5c4-0x1e5e0 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x1e5cc calls r1nk_perf_intr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1e5d8 has v0 = ret(r1nk_perf_intr).
- `hwperf_sys_counters` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1e5e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1e5e0-0x1e69c (188 bytes).
  It occupies 188 bytes.
  The `lw` at 0x1e5f0 loads 4 bytes from abs 0xffffffffffffa364.
  The `lh` at 0x1e5fc loads 2 bytes from [-0x5c9c] +0x0.
  The `lw` at 0x1e610 loads 4 bytes from [-0x5c9c] +0x18.
  The `sh` at 0x1e618 stores 2 bytes to [-0x5c9c] +0x0.
  The `sw` at 0x1e620 stores 4 bytes to [-0x5c9c] +0x18.
  The `lw` at 0x1e630 loads 4 bytes from abs 0xffffffffffffa360.
  The `sw` at 0x1e63c stores 4 bytes to abs 0xffffffffffffa364.
  The `lh` at 0x1e644 loads 2 bytes from ?.
  The `sh` at 0x1e65c stores 2 bytes to ?.
  The `lh` at 0x1e66c loads 2 bytes from abs 0xffffffffffffa190.
  The `ll` at 0x1e680 loads 4 bytes from sym(flash_env_seg) +0x118.
  The `sc` at 0x1e688 stores 4 bytes to sym(flash_env_seg) +0x118.
  The `jal` at 0x1e5e8 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1e624 calls r1nk_perf_update_counters with a0=[-0x5c9c], a1=[[-0x5c9c]]:2, a2=-0x9, a3=?.
  The `jal` at 0x1e638 calls hwperf_copy_cmp with a0=a0 at entry (arg0), a1=[-0x5ca0], a2=?, a3=?.
  The `jal` at 0x1e658 calls r1nk_perf_start_counters with a0=?, a1=?, a2=?, a3=?, a4=-0x3.
  The `jal` at 0x1e660 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1e5f4 targets 0x1e62c, is taken when a0(=[-0x5c9c]) == 0, and falls through when a0(=[-0x5c9c]) != 0.
  The `beq` branch at 0x1e604 targets 0x1e624, is taken when (a1(=[[-0x5c9c]]:2) & 0x8) == 0, and falls through when (a1(=[[-0x5c9c]]:2) & 0x8) != 0.
  The `beql` branch at 0x1e68c targets 0x1e680, is taken when (a5(=[sym(.sbss)+280]) & a7(?)) == 0, and falls through when (a5(=[sym(.sbss)+280]) & a7(?)) != 0; its branch-likely delay slot `nop` at 0x1e690 runs only when taken and is annulled on fall-through.
  The return at 0x1e694 has v0 = ret(splx).
- `hwperf_get_access` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1e69c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1e69c-0x1e77c (224 bytes).
  It occupies 224 bytes.
  The `lw` at 0x1e6c8 loads 4 bytes from sym(.bss) +0x2440.
  The `lhu` at 0x1e6d8 loads 2 bytes from sym(.bss) +0x2448.
  2 such `sh` accesses store 2 bytes to sym(.bss) +0x2448, including `sh` at 0x1e73c, `sh` at 0x1e754.
  The `sw` at 0x1e74c stores 4 bytes to sym(.bss) +0x2440.
  The `ll` at 0x1e75c loads 4 bytes from sym(.bss) +0x2440.
  The `sc` at 0x1e768 stores 4 bytes to sym(.bss) +0x2440.
  The `jal` at 0x1e6ac calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1e6f4 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?, a6=sym(.bss)+9280.
  The `beq` branch at 0x1e6d4 targets 0x1e710, is taken when (s0(=a1) & 0x8) == 0, and falls through when (s0(=a1) & 0x8) != 0.
  The `beq` branch at 0x1e6e0 targets 0x1e728, is taken when a4(=[sym(.bss)+9288]:2) == v0(=0x2), and falls through when a4(=[sym(.bss)+9288]:2) != v0(=0x2).
  The `beq` branch at 0x1e6ec targets 0x1e738, is taken when a4(=[sym(.bss)+9288]:2) == v1(=0x1), and falls through when a4(=[sym(.bss)+9288]:2) != v1(=0x1).
  The `beq` branch at 0x1e710 targets 0x1e754, is taken when a4(=[sym(.bss)+9288]:2) == a1(=0x1), and falls through when a4(=[sym(.bss)+9288]:2) != a1(=0x1).
  The `bne` branch at 0x1e718 targets 0x1e6f4, is taken when t0(=0x4) != a4(=[sym(.bss)+9288]:2), and falls through when t0(=0x4) == a4(=[sym(.bss)+9288]:2).
  The `beq` branch at 0x1e720 targets 0x1e750 and is always taken.
  The `bne` branch at 0x1e728 targets 0x1e6f4, is taken when a5(=[sym(.bss)+9280]) != a1(=a0), and falls through when a5(=[sym(.bss)+9280]) == a1(=a0).
  The `beq` branch at 0x1e730 targets 0x1e73c and is always taken.
  The `beq` branch at 0x1e748 targets 0x1e6f4 and is always taken.
  The `beql` branch at 0x1e76c targets 0x1e75c, is taken when t1(=[sym(.bss)+9280]+1) == 0, and falls through when t1(=[sym(.bss)+9280]+1) != 0; its branch-likely delay slot `nop` at 0x1e770 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x1e774 targets 0x1e6f4 and is always taken.
  The return at 0x1e708 has v0 = one of 0x0, 0x10.
- `hwperf_check_release` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1e77c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1e77c-0x1e8e8 (364 bytes).
  It occupies 364 bytes.
  The `lh` at 0x1e794 loads 2 bytes from a0 (arg0 at entry) +0x0.
  3 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x16, including `lh` at 0x1e7b8, `lh` at 0x1e7cc, `lh` at 0x1e828.
  2 such `lw` accesses load 4 bytes from sym(pdaindr) +0x4, including `lw` at 0x1e824, `lw` at 0x1e848.
  The `lw` at 0x1e84c loads 4 bytes from [sym(pdaindr)+4] +0x360.
  The `lh` at 0x1e858 loads 2 bytes from [[sym(pdaindr)+4]+864] +0x16.
  The `jal` at 0x1e7c4 calls nano_delay with a0=sp-64, a1=a1 at entry (arg1), a2=[a0]:2, a3=a3 at entry (arg3).
  The `jal` at 0x1e86c calls nano_delay with a0=sp-64, a1=[[[sym(pdaindr)+4]+864]+22]:2, a2=[sym(maxcpus)], a3=?.
  The `jal` at 0x1e8a4 calls assfail with a0=sym(.rodata)+20672, a1=sym(.rodata)+20672, a2=0x384, a3=?.
  The `jal` at 0x1e8c0 calls assfail with a0=sym(.rodata)+20672, a1=sym(.rodata)+20672, a2=0x378, a3=?.
  The `jal` at 0x1e8d8 calls assfail with a0=sym(.rodata)+20672, a1=sym(.rodata)+20672, a2=0x389, a3=?, a4=sym(pdaindr).
  The `beq` branch at 0x1e7b0 targets 0x1e7f4, is taken when (a2(=[a0]:2) & 0x1) == 0, and falls through when (a2(=[a0]:2) & 0x1) != 0.
  The `beq` branch at 0x1e7bc targets 0x1e7d8, is taken when v1(=[a0+22]:2) == s3(=-0x1), and falls through when v1(=[a0+22]:2) != s3(=-0x1).
  The `bne` branch at 0x1e7d0 targets 0x1e8b4, is taken when a0(=[a0+22]:2) != s3(=-0x1), and falls through when a0(=[a0+22]:2) == s3(=-0x1).
  The `beq` branch at 0x1e810 targets 0x1e884, is taken when (a2(=[a0]:2) & 0x2) == 0, and falls through when (a2(=[a0]:2) & 0x2) != 0.
  The `blez` branch at 0x1e818 targets 0x1e7d8, is taken when a2(=[sym(maxcpus)]) <= 0 (signed), and falls through when a2(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x1e820 targets 0x1e84c and is always taken.
  The `bne` branch at 0x1e82c targets 0x1e894, is taken when a2(=[a0+22]:2) != s3(=-0x1), and falls through when a2(=[a0+22]:2) == s3(=-0x1).
  The `beq` branch at 0x1e840 targets 0x1e87c, is taken when s2(?) >= a2(=[sym(maxcpus)]) (signed), and falls through when s2(?) < a2(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x1e850 targets 0x1e838, is taken when a0(=[[sym(pdaindr)+4]+864]) == 0, and falls through when a0(=[[sym(pdaindr)+4]+864]) != 0.
  The `beq` branch at 0x1e85c targets 0x1e838, is taken when a1(=[[[sym(pdaindr)+4]+864]+22]:2) == s3(=-0x1), and falls through when a1(=[[[sym(pdaindr)+4]+864]+22]:2) != s3(=-0x1).
  The `bne` branch at 0x1e864 targets 0x1e828, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x1e874 targets 0x1e828 and is always taken.
  The `beq` branch at 0x1e87c targets 0x1e7dc and is always taken.
  The `bne` branch at 0x1e884 targets 0x1e7dc, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x1e88c targets 0x1e8d0 and is always taken.
  The `beq` branch at 0x1e8ac targets 0x1e834 and is always taken.
  The `beq` branch at 0x1e8c8 targets 0x1e7dc and is always taken.
  The `beq` branch at 0x1e8e0 targets 0x1e7dc and is always taken.
  The return at 0x1e7ec has v0 = one of ?, 0x2faf080, ret(assfail).
- `hwperf_release_access` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1e8e8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1e8e8-0x1e9b4 (204 bytes).
  It occupies 204 bytes.
  3 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x0, including `lh` at 0x1e8fc, `lh` at 0x1e92c, `lh` at 0x1e98c.
  The `lw` at 0x1e918 loads 4 bytes from sym(.bss) +0x244c.
  3 such `sh` accesses store 2 bytes to sym(.bss) +0x2448, including `sh` at 0x1e928, `sh` at 0x1e9a0, `sh` at 0x1e9b0.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x0, including `sh` at 0x1e934, `sh` at 0x1e998.
  The `sw` at 0x1e938 stores 4 bytes to sym(.bss) +0x2440.
  The `ll` at 0x1e964 loads 4 bytes from sym(.bss) +0x2440.
  The `sc` at 0x1e970 stores 4 bytes to sym(.bss) +0x2440.
  The `lhu` at 0x1e988 loads 2 bytes from sym(.bss) +0x2448.
  The `jal` at 0x1e8f4 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1e93c calls splx with a0=ret(splhi), a1=?, a2=?, a3=sym(.bss)+9280, a6=one of -0x1, 0x4.
  The `beq` branch at 0x1e90c targets 0x1e950, is taken when (a5(=[a0]:2) & 0x2) == 0, and falls through when (a5(=[a0]:2) & 0x2) != 0.
  The `beq` branch at 0x1e920 targets 0x1e99c, is taken when v0(=[sym(.bss)+9292]) == 0, and falls through when v0(=[sym(.bss)+9292]) != 0.
  The `beq` branch at 0x1e95c targets 0x1e93c, is taken when (a5(=[a0]:2) & 0x1) == 0, and falls through when (a5(=[a0]:2) & 0x1) != 0.
  The `beql` branch at 0x1e974 targets 0x1e964, is taken when t0(=[sym(.bss)+9280]-1) == 0, and falls through when t0(=[sym(.bss)+9280]-1) != 0; its branch-likely delay slot `nop` at 0x1e978 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x1e984 targets 0x1e9a4, is taken when a7(=[sym(.bss)+9280]-1) == 0, and falls through when a7(=[sym(.bss)+9280]-1) != 0.
  The `beq` branch at 0x1e994 targets 0x1e93c and is always taken.
  The `beq` branch at 0x1e99c targets 0x1e92c and is always taken.
  The `bne` branch at 0x1e9a4 targets 0x1e98c, is taken when a4(=[sym(.bss)+9288]:2) != a5(=0x4), and falls through when a4(=[sym(.bss)+9288]:2) == a5(=0x4).
  The `beq` branch at 0x1e9ac targets 0x1e98c and is always taken.
  The return at 0x1e948 has v0 = ret(splx).
- `hwperf_find_cpu` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1e9b4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1e9b4-0x1ea10 (92 bytes).
  It occupies 92 bytes.
  2 such `lw` accesses load 4 bytes from sym(pdaindr) +0x4, including `lw` at 0x1e9cc, `lw` at 0x1e9e0.
  The `lw` at 0x1e9e4 loads 4 bytes from [sym(pdaindr)+4] +0x14.
  The `lw` at 0x1e9f0 loads 4 bytes from [[sym(pdaindr)+4]+20] +0x2d4.
  The `blez` branch at 0x1e9bc targets 0x1ea04, is taken when a5(=[sym(maxcpus)]) <= 0 (signed), and falls through when a5(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x1e9c8 targets 0x1e9e4 and is always taken.
  The `beq` branch at 0x1e9d8 targets 0x1ea04, is taken when v0(?) >= a5(=[sym(maxcpus)]) (signed), and falls through when v0(?) < a5(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x1e9e8 targets 0x1e9d0, is taken when a4(=[[sym(pdaindr)+4]+20]) == 0, and falls through when a4(=[[sym(pdaindr)+4]+20]) != 0.
  The `bnel` branch at 0x1e9f4 targets 0x1e9d4, is taken when a6(=[[[sym(pdaindr)+4]+20]+724]) != a0, and falls through when a6(=[[[sym(pdaindr)+4]+20]+724]) == a0; its branch-likely delay slot `addiu v0,v0,1` at 0x1e9f8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x1e9fc targets 0x1ea08 and is always taken.
  The return at 0x1ea08 has v0 = one of ?, -0x1.
- `hwperf_initiate_startup` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1ea10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1ea10-0x1eb5c (332 bytes).
  It occupies 332 bytes.
  The `lh` at 0x1ea18 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x1ea8c loads 4 bytes from sym(pdaindr) +0x4.
  The `lh` at 0x1ea90 loads 2 bytes from [sym(pdaindr)+4] +0x190.
  The `ll` at 0x1ea9c loads 4 bytes from sym(flash_env_seg) +0x118.
  The `sc` at 0x1eaa4 stores 4 bytes to sym(flash_env_seg) +0x118.
  The `jal` at 0x1ea70 calls cpuaction with a0=?, a1=sym(hwperf_sys_counters), a2=0x1, a3=a0 at entry (arg0).
  The `jal` at 0x1eab8 calls hwperf_sys_counters with a0=a0 at entry (arg0), a1=sym(hwperf_sys_counters), a2=[sym(.sbss)+280], a3=sym(.sbss)+280.
  The `jal` at 0x1eb14 calls hwperf_find_cpu with a0=a0 at entry (arg0), a1=sym(hwperf_sys_counters), a2=a2 at entry (arg2), a3=sym(pdaindr).
  The `jal` at 0x1eb3c calls cpuaction with a0=?, a1=sym(hwperf_proc_counters), a2=0x1, a3=?.
  The `jal` at 0x1eb4c calls hwperf_proc_counters with a0=?, a1=?, a2=0x1, a3=?.
  The `beq` branch at 0x1ea40 targets 0x1eb14, is taken when (at(=[a0]:2) & 0x2) == 0, and falls through when (at(=[a0]:2) & 0x2) != 0.
  The `blez` branch at 0x1ea54 targets 0x1eac8, is taken when v0(=[sym(maxcpus)]) <= 0 (signed), and falls through when v0(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x1ea5c targets 0x1ea8c and is always taken.
  The `beq` branch at 0x1ea84 targets 0x1eac8, is taken when s0(?) >= a1(=[sym(maxcpus)]) (signed), and falls through when s0(?) < a1(=[sym(maxcpus)]) (signed).
  The `beql` branch at 0x1eaa8 targets 0x1ea9c, is taken when a5(?) == 0, and falls through when a5(?) != 0; its branch-likely delay slot `nop` at 0x1eaac runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x1eab0 targets 0x1ea64, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x1eac0 targets 0x1ea7c and is always taken.
  The `beq` branch at 0x1ead0 targets 0x1eafc, is taken when a5(=[sym(.sbss)+280]) == 0, and falls through when a5(=[sym(.sbss)+280]) != 0.
  The `beq` branch at 0x1eadc targets 0x1eafc, is taken when a6(=[sym(.sbss)+280]) == 0, and falls through when a6(=[sym(.sbss)+280]) != 0.
  The `beq` branch at 0x1eae8 targets 0x1eafc, is taken when a7(=[sym(.sbss)+280]) == 0, and falls through when a7(=[sym(.sbss)+280]) != 0.
  The `bne` branch at 0x1eaf4 targets 0x1ead8, is taken when t0(=[sym(.sbss)+280]) != 0, and falls through when t0(=[sym(.sbss)+280]) == 0.
  The `beq` branch at 0x1eb20 targets 0x1eb00, is taken when v0(=ret(hwperf_find_cpu)) == t1(=-0x1), and falls through when v0(=ret(hwperf_find_cpu)) != t1(=-0x1).
  The `beq` branch at 0x1eb28 targets 0x1eb4c, is taken when v0(=ret(hwperf_find_cpu)) == 0, and falls through when v0(=ret(hwperf_find_cpu)) != 0.
  The `beq` branch at 0x1eb44 targets 0x1eb00 and is always taken.
  The `beq` branch at 0x1eb54 targets 0x1eb00 and is always taken.
  The return at 0x1eb0c has v0 = one of ?, ret(hwperf_find_cpu), ret(cpuaction), ret(hwperf_proc_counters).
- `hwperf_proc_counters` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1eb5c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1eb5c-0x1ebc8 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x1eb6c loads 4 bytes from abs 0xffffffffffffa014.
  The `lw` at 0x1eb78 loads 4 bytes from [-0x5fec] +0x2d4.
  The `lh` at 0x1eb84 loads 2 bytes from [[-0x5fec]+724] +0x0.
  The `lw` at 0x1eb94 loads 4 bytes from abs 0xffffffffffffa364.
  The `jal` at 0x1eb64 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1eba0 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x1ebb8 calls hwperf_setup_counters with a0=[[-0x5fec]+724], a1=?, a2=?, a3=[-0x5fec].
  The `beq` branch at 0x1eb70 targets 0x1eba0, is taken when a3(=[-0x5fec]) == 0, and falls through when a3(=[-0x5fec]) != 0.
  The `beq` branch at 0x1eb7c targets 0x1eba0, is taken when a0(=[[-0x5fec]+724]) == 0, and falls through when a0(=[[-0x5fec]+724]) != 0.
  The `beq` branch at 0x1eb8c targets 0x1eba0, is taken when (at(=[[[-0x5fec]+724]]:2) & 0x8) == 0, and falls through when (at(=[[[-0x5fec]+724]]:2) & 0x8) != 0.
  The `beq` branch at 0x1eb98 targets 0x1ebb8, is taken when v0(=[-0x5c9c]) == 0, and falls through when v0(=[-0x5c9c]) != 0.
  The `beq` branch at 0x1ebc0 targets 0x1eba0 and is always taken.
  The return at 0x1ebb0 has v0 = ret(splx).
- `hwperf_update_counters` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1ebc8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1ebc8-0x1ec0c (68 bytes).
  It occupies 68 bytes.
  The `lh` at 0x1ebd8 loads 2 bytes from abs 0xffffffffffffa190.
  The `ll` at 0x1ebf0 loads 4 bytes from sym(flash_env_seg) +0x118.
  The `sc` at 0x1ebf8 stores 4 bytes to sym(flash_env_seg) +0x118.
  The `jal` at 0x1ebd0 calls r1nk_perf_update_counters with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0x1ebfc targets 0x1ebf0, is taken when (at(=[sym(.sbss)+280]) & v1(?)) == 0, and falls through when (at(=[sym(.sbss)+280]) & v1(?)) != 0; its branch-likely delay slot `nop` at 0x1ec00 runs only when taken and is annulled on fall-through.
  The return at 0x1ec04 has v0 = sym(.sbss)+280.
- `hwperf_update_counters_async` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1ec0c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1ec0c-0x1ec50 (68 bytes).
  It occupies 68 bytes.
  The `lh` at 0x1ec1c loads 2 bytes from abs 0xffffffffffffa190.
  The `ll` at 0x1ec34 loads 4 bytes from sym(flash_env_seg) +0x11c.
  The `sc` at 0x1ec3c stores 4 bytes to sym(flash_env_seg) +0x11c.
  The `jal` at 0x1ec14 calls r1nk_perf_update_counters with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0x1ec40 targets 0x1ec34, is taken when (at(=[sym(.sbss)+284]) & v1(?)) == 0, and falls through when (at(=[sym(.sbss)+284]) & v1(?)) != 0; its branch-likely delay slot `nop` at 0x1ec44 runs only when taken and is annulled on fall-through.
  The return at 0x1ec48 has v0 = sym(.sbss)+284.
- `hwperf_read_counters` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1ec50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1ec50-0x1eed4 (644 bytes).
  It occupies 644 bytes.
  The `lh` at 0x1ec5c loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x1ecd0 loads 4 bytes from sym(pdaindr) +0x4.
  The `lh` at 0x1ecd4 loads 2 bytes from [sym(pdaindr)+4] +0x190.
  The `ll` at 0x1ece0 loads 4 bytes from sym(flash_env_seg) +0x118.
  The `sc` at 0x1ece8 stores 4 bytes to sym(flash_env_seg) +0x118.
  4 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x60, including `lh` at 0x1ed18, `lh` at 0x1ed64, `lh` at 0x1ed84.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x1ed58, `sd` at 0x1ed78, `sd` at 0x1edd8.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1ed5c, `lw` at 0x1ed7c, `lw` at 0x1eddc.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1ed60, `sw` at 0x1ed80, `sw` at 0x1edfc.
  The `lw` at 0x1edac loads 4 bytes from sym(pdaindr) -0x4.
  The `lw` at 0x1edbc loads 4 bytes from [sym(pdaindr)-4] +0x360.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1edcc, `ld` at 0x1edd0.
  The `lh` at 0x1ee50 loads 2 bytes from a0 (arg0 at entry) +0x16.
  2 such `lw` accesses load 4 bytes from (sym(pdaindr) + ([a0+22]:2 << 0x3)) +0x4, including `lw` at 0x1ee74, `lw` at 0x1ee94.
  2 such `lh` accesses load 2 bytes from [(sym(pdaindr) + ([a0+22]:2 << 0x3))+4] +0x190, including `lh` at 0x1ee78, `lh` at 0x1ee98.
  The `ll` at 0x1ee80 loads 4 bytes from sym(flash_env_seg) +0x11c.
  The `sc` at 0x1ee88 stores 4 bytes to sym(flash_env_seg) +0x11c.
  The `jal` at 0x1ecb4 calls cpuaction with a0=?, a1=sym(hwperf_update_counters), a2=0x1, a3=0x0.
  The `jal` at 0x1ecfc calls hwperf_update_counters with a0=[sym(maxcpus)], a1=sym(hwperf_update_counters), a2=[sym(.sbss)+280], a3=sym(.sbss)+280.
  The `jal` at 0x1eeb4 calls cpuaction with a0=[a0+22]:2, a1=sym(hwperf_update_counters_async), a2=0x1, a3=0x0, a4=sym(.sbss)+284.
  The `jal` at 0x1eec4 calls r1nk_perf_update_counters with a0=0x0, a1=([a0+22]:2 << 0x3), a2=(sym(pdaindr) + ([a0+22]:2 << 0x3)), a3=sym(pdaindr), a4=sym(.sbss)+284.
  The `beq` branch at 0x1ec88 targets 0x1ee50, is taken when (at(=[a0]:2) & 0x2) == 0, and falls through when (at(=[a0]:2) & 0x2) != 0.
  The `blez` branch at 0x1ec98 targets 0x1ed0c, is taken when a0(=[sym(maxcpus)]) <= 0 (signed), and falls through when a0(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x1eca0 targets 0x1ecd0 and is always taken.
  The `beq` branch at 0x1ecc8 targets 0x1ed0c, is taken when s1(?) >= a0(=[sym(maxcpus)]) (signed), and falls through when s1(?) < a0(=[sym(maxcpus)]) (signed).
  The `beql` branch at 0x1ecec targets 0x1ece0, is taken when a5(?) == 0, and falls through when a5(?) != 0; its branch-likely delay slot `nop` at 0x1ecf0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x1ecf4 targets 0x1eca8, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `beq` branch at 0x1ed04 targets 0x1ecc0 and is always taken.
  The `beq` branch at 0x1ed1c targets 0x1ed48, is taken when t8(=[sym(.sbss)+280]) == 0, and falls through when t8(=[sym(.sbss)+280]) != 0.
  The `beq` branch at 0x1ed28 targets 0x1ed48, is taken when t9(=[sym(.sbss)+280]) == 0, and falls through when t9(=[sym(.sbss)+280]) != 0.
  The `beq` branch at 0x1ed34 targets 0x1ed48, is taken when ra(=[sym(.sbss)+280]) == 0, and falls through when ra(=[sym(.sbss)+280]) != 0.
  The `bne` branch at 0x1ed40 targets 0x1ed24, is taken when at(=[sym(.sbss)+280]) != 0, and falls through when at(=[sym(.sbss)+280]) == 0.
  The `blez` branch at 0x1ed48 targets 0x1eda0, is taken when a7(=[a0+96]:2) <= 0 (signed), and falls through when a7(=[a0+96]:2) > 0 (signed).
  The `beq` branch at 0x1ed70 targets 0x1eda0, is taken when a3(?) >= a7(=[a0+96]:2) (signed), and falls through when a3(?) < a7(=[a0+96]:2) (signed).
  The `bne` branch at 0x1ed94 targets 0x1ed58, is taken when a3(?) < a7(=[a0+96]:2) (signed), and falls through when a3(?) >= a7(=[a0+96]:2) (signed).
  The `blez` branch at 0x1eda0 targets 0x1ee30, is taken when a0(=[sym(maxcpus)]) <= 0 (signed), and falls through when a0(=[sym(maxcpus)]) > 0 (signed).
  The `blez` branch at 0x1edb8 targets 0x1ee20, is taken when a7(=[a0+96]:2) <= 0 (signed), and falls through when a7(=[a0+96]:2) > 0 (signed).
  The `beq` branch at 0x1ede0 targets 0x1ee00, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x1ee14 targets 0x1edcc, is taken when a3(?) < a7(=[a0+96]:2) (signed), and falls through when a3(?) >= a7(=[a0+96]:2) (signed).
  The `bne` branch at 0x1ee28 targets 0x1edac, is taken when s1(?) < a0(=[sym(maxcpus)]) (signed), and falls through when s1(?) >= a0(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x1ee64 targets 0x1ee30, is taken when a0(=[a0+22]:2) == at(=-0x1), and falls through when a0(=[a0+22]:2) != at(=-0x1).
  The `beq` branch at 0x1ee6c targets 0x1eec4, is taken when a0(=[a0+22]:2) == 0, and falls through when a0(=[a0+22]:2) != 0.
  The `beql` branch at 0x1ee8c targets 0x1ee80, is taken when a7(?) == 0, and falls through when a7(?) != 0; its branch-likely delay slot `nop` at 0x1ee90 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x1eea4 targets 0x1ee30, is taken when (v0(=[sym(.sbss)+284]) & v1(?)) != 0, and falls through when (v0(=[sym(.sbss)+284]) & v1(?)) == 0.
  The `beq` branch at 0x1eebc targets 0x1ee34 and is always taken.
  The `beq` branch at 0x1eecc targets 0x1ee34 and is always taken.
  The return at 0x1ee48 has v0 = one of ?, ret(cpuaction), ret(r1nk_perf_update_counters).
- `hwperf_copy_cmp` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1eed4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1eed4-0x1ef94 (192 bytes).
  It occupies 192 bytes.
  2 such `lh` accesses load 2 bytes from a1 (arg1 at entry) +0x60, including `lh` at 0x1eed4, `lh` at 0x1ef10.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1eef4, `lw` at 0x1eefc.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1eef8, `sw` at 0x1ef00.
  The `sd` at 0x1ef04 stores 8 bytes to ?.
  The `lhu` at 0x1ef08 loads 2 bytes from ?.
  4 such `sh` accesses store 2 bytes to ?, including `sh` at 0x1ef0c, `sh` at 0x1ef5c, `sh` at 0x1ef64.
  The `lw` at 0x1ef34 loads 4 bytes from a0 (arg0 at entry) +0x18.
  2 such `lh` accesses load 2 bytes from a1 (arg1 at entry) +0x24, including `lh` at 0x1ef38, `lh` at 0x1ef70.
  The `sw` at 0x1ef3c stores 4 bytes to a1 (arg1 at entry) +0x18.
  The `lh` at 0x1ef48 loads 2 bytes from a0 (arg0 at entry) +0xc.
  The `sh` at 0x1ef54 stores 2 bytes to a1 (arg1 at entry) +0xc.
  3 such `lh` accesses load 2 bytes from ?, including `lh` at 0x1ef58, `lh` at 0x1ef60, `lh` at 0x1ef68.
  The `lh` at 0x1ef88 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0x1ef90 stores 2 bytes to a1 (arg1 at entry) +0x0.
  The `blez` branch at 0x1eedc targets 0x1ef34, is taken when at(=[a1+96]:2) <= 0 (signed), and falls through when at(=[a1+96]:2) > 0 (signed).
  The `bne` branch at 0x1ef2c targets 0x1eef4, is taken when a3(?) < v0(=[a1+96]:2) (signed), and falls through when a3(?) >= v0(=[a1+96]:2) (signed).
  The `blez` branch at 0x1ef50 targets 0x1ef88, is taken when t3(=[a1+36]:2) <= 0 (signed), and falls through when t3(=[a1+36]:2) > 0 (signed).
  The `bne` branch at 0x1ef80 targets 0x1ef58, is taken when a3(?) < t9(=[a1+36]:2) (signed), and falls through when a3(?) >= t9(=[a1+36]:2) (signed).
  The return at 0x1ef8c has v0 = ?.
- `hwperf_arch_nosupport` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1ef94 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1ef94-0x1ef9c (8 bytes).
  It occupies 8 bytes.
  The return at 0x1ef94 has v0 = 0x59.
- `hwperf_arch_fatal` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1ef9c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1ef9c-0x1efc0 (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0x1efac calls cmn_err with a0=0x0, a1=sym(.rodata)+21088, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1efb8 has v0 = ret(cmn_err).
- `hwperf_cpu_monitor_info_free` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1f094 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1f094-0x1f0b8 (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0x1f0a8 calls kern_free with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x1f098 targets 0x1f0a8, is taken when a0 != 0, and falls through when a0 == 0.
  The `beq` branch at 0x1f0b0 targets 0x1f0a0 and is always taken.
  The return at 0x1f0a0 has v0 = one of ?, ret(kern_free).
- `r1nk_perf_intr` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1f1a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1f1a0-0x1f364 (452 bytes).
  It occupies 452 bytes.
  The `lw` at 0x1f1a8 loads 4 bytes from abs 0xffffffffffffa364.
  6 such `lh` accesses load 2 bytes from [-0x5c9c] +0x24, including `lh` at 0x1f1b8, `lh` at 0x1f1e8, `lh` at 0x1f210.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1f200, `sw` at 0x1f2f4.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1f22c, `lw` at 0x1f268, `lw` at 0x1f2c0.
  The `lld` at 0x1f278 loads 8 bytes from ?.
  The `scd` at 0x1f284 stores 8 bytes to ?.
  The `lh` at 0x1f2ac loads 2 bytes from ?.
  The `jal` at 0x1f1d8 calls r1nkperf_data_register_get with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1f208 calls r1nk_perf_stop_counters with a0=[-0x5c9c], a1=?, a2=?, a3=?.
  The `jal` at 0x1f228 calls r1nkperf_data_register_set with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x1f320 calls r1nk_perf_intr_action with a0=a0 at entry (arg0), a1=[-0x5c9c], a2=one of 0x0, 0x1, a3=?.
  The `jal` at 0x1f32c calls r1nk_perf_start_counters with a0=[-0x5c9c], a1=?, a2=?, a3=?.
  The `jal` at 0x1f354 calls assfail with a0=sym(.rodata)+21200, a1=sym(.rodata)+21200, a2=0x65, a3=a3 at entry (arg3).
  The `beq` branch at 0x1f1b0 targets 0x1f334, is taken when s1(=[-0x5c9c]) == 0, and falls through when s1(=[-0x5c9c]) != 0.
  The `beq` branch at 0x1f1c0 targets 0x1f348, is taken when a1(=[[-0x5c9c]+36]:2) >= 0x4 (signed), and falls through when a1(=[[-0x5c9c]+36]:2) < 0x4 (signed).
  The `blez` branch at 0x1f1cc targets 0x1f204, is taken when a1(=[[-0x5c9c]+36]:2) <= 0 (signed), and falls through when a1(=[[-0x5c9c]+36]:2) > 0 (signed).
  The `bne` branch at 0x1f1fc targets 0x1f1d8, is taken when s0(?) < a0(=[[-0x5c9c]+36]:2) (signed), and falls through when s0(?) >= a0(=[[-0x5c9c]+36]:2) (signed).
  The `blez` branch at 0x1f214 targets 0x1f318, is taken when a2(=[[-0x5c9c]+36]:2) <= 0 (signed), and falls through when a2(=[[-0x5c9c]+36]:2) > 0 (signed).
  The `bne` branch at 0x1f244 targets 0x1f21c, is taken when s0(?) < a1(=[[-0x5c9c]+36]:2) (signed), and falls through when s0(?) >= a1(=[[-0x5c9c]+36]:2) (signed).
  The `blez` branch at 0x1f24c targets 0x1f318, is taken when a1(=[[-0x5c9c]+36]:2) <= 0 (signed), and falls through when a1(=[[-0x5c9c]+36]:2) > 0 (signed).
  The `beq` branch at 0x1f25c targets 0x1f2a4 and is always taken.
  The `beql` branch at 0x1f288 targets 0x1f278, is taken when at(?) == 0, and falls through when at(?) != 0; its branch-likely delay slot `nop` at 0x1f28c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x1f29c targets 0x1f320, is taken when s0(?) >= a1(=[[-0x5c9c]+36]:2) (signed), and falls through when s0(?) < a1(=[[-0x5c9c]+36]:2) (signed).
  The `beq` branch at 0x1f2b0 targets 0x1f2f8, is taken when a4(?) == t0(=-0x1), and falls through when a4(?) != t0(=-0x1).
  The `beq` branch at 0x1f2d8 targets 0x1f264, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x1f2e4 targets 0x1f264, is taken when a5(?) < a7(=0xffffffff80000000) (unsigned), and falls through when a5(?) >= a7(=0xffffffff80000000) (unsigned).
  The `beq` branch at 0x1f2f0 targets 0x1f264 and is always taken.
  The `bne` branch at 0x1f308 targets 0x1f2a8, is taken when s0(?) < a1(=[[-0x5c9c]+36]:2) (signed), and falls through when s0(?) >= a1(=[[-0x5c9c]+36]:2) (signed).
  The `beq` branch at 0x1f310 targets 0x1f320 and is always taken.
  The `beq` branch at 0x1f35c targets 0x1f1c8 and is always taken.
  The return at 0x1f340 has v0 = one of ?, ret(r1nk_perf_start_counters).
- `r1nk_perf_intr_action` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1f364 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1f364-0x1f450 (236 bytes).
  It occupies 236 bytes.
  The `lh` at 0x1f364 loads 2 bytes from a1 (arg1 at entry) +0x0.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xf8, including `ld` at 0x1f38c, `ld` at 0x1f3f0.
  The `lw` at 0x1f390 loads 4 bytes from a0 (arg0 at entry) +0xf4.
  The `lw` at 0x1f394 loads 4 bytes from a0 (arg0 at entry) +0xe4.
  The `lw` at 0x1f39c loads 4 bytes from a0 (arg0 at entry) +0x124.
  The `lw` at 0x1f3a8 loads 4 bytes from abs 0xffffffffffffa018.
  The `lbu` at 0x1f3b4 loads 1 byte from [-0x5fe8] +0x70.
  The `lh` at 0x1f3d0 loads 2 bytes from a1 (arg1 at entry) +0xc.
  4 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x1f3e0, `lw` at 0x1f404, `lw` at 0x1f420.
  2 such `lw` accesses load 4 bytes from [-0x5fec] +0x280, including `lw` at 0x1f408, `lw` at 0x1f440.
  2 such `sw` accesses store 4 bytes to [[-0x5fec]+640] +0x0, including `sw` at 0x1f414, `sw` at 0x1f44c.
  The `lw` at 0x1f424 loads 4 bytes from [-0x5fec] +0x208.
  The `sw` at 0x1f438 stores 4 bytes to [-0x5fec] +0x208.
  The `jal` at 0x1f398 calls prfintr with a0=[a0+292], a1=[a0+228], a2=[a0+244], a3=[a0+248]:8, a5=a0 at entry (arg0), a6=0x3.
  The `jal` at 0x1f3e4 calls sigtouthread with a0=[-0x5fec], a1=[a1+12]:2, a2=0x0, a3=a3 at entry (arg3), a4=[a1+12]:2, a5=a0 at entry (arg0), a6=0x3.
  The `jal` at 0x1f418 calls splhi with a0=[-0x5fe8], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[[-0x5fe8]+112]:1, a6=0x3.
  The `jal` at 0x1f434 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1f37c targets 0x1f3c8, is taken when (a4(=[a1]:2) & 0x80) == 0, and falls through when (a4(=[a1]:2) & 0x80) != 0.
  The `beq` branch at 0x1f384 targets 0x1f3a8, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1f3a0 targets 0x1f3c0 and is always taken.
  The `beq` branch at 0x1f3ac targets 0x1f3c0, is taken when a0(=[-0x5fe8]) == 0, and falls through when a0(=[-0x5fe8]) != 0.
  The `beq` branch at 0x1f3b8 targets 0x1f418, is taken when a5(=[[-0x5fe8]+112]:1) == a6(=0x3), and falls through when a5(=[[-0x5fe8]+112]:1) != a6(=0x3).
  The `beq` branch at 0x1f3c8 targets 0x1f3c0, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x1f3d4 targets 0x1f3bc, is taken when a4(=[a1+12]:2) == 0, and falls through when a4(=[a1+12]:2) != 0.
  The `bne` branch at 0x1f3fc targets 0x1f3c0, is taken when a7(?) != t0(=0x10), and falls through when a7(?) == t0(=0x10).
  The `beq` branch at 0x1f410 targets 0x1f3bc and is always taken.
  The `beq` branch at 0x1f448 targets 0x1f3bc and is always taken.
  The return at 0x1f3c0 has v0 = one of ret(prfintr), ?, ret(sigtouthread).
- `r1nk_perf_update_counters` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1f450 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1f450-0x1f5c4 (372 bytes).
  It occupies 372 bytes.
  5 such `lh` accesses load 2 bytes from ?, including `lh` at 0x1f478, `lh` at 0x1f4b0, `lh` at 0x1f4cc.
  The `lw` at 0x1f49c loads 4 bytes from ?.
  The `sw` at 0x1f4a8 stores 4 bytes to ?.
  The `lld` at 0x1f534 loads 8 bytes from ?.
  The `scd` at 0x1f540 stores 8 bytes to ?.
  The `lw` at 0x1f564 loads 4 bytes from abs 0xffffffffffffa364.
  The `lh` at 0x1f574 loads 2 bytes from [-0x5c9c] +0x0.
  The `sh` at 0x1f5a8 stores 2 bytes to ?.
  The `sw` at 0x1f5b0 stores 4 bytes to abs 0xffffffffffffa364.
  The `jal` at 0x1f470 calls r1nk_perf_check_architecture with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1f48c calls r1nkperf_data_register_get with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1f508 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1f54c calls r1nkperf_data_register_set with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x1f55c calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1f58c calls r1nk_perf_stop_counters with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1f5b4 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1f464 targets 0x1f55c, is taken when a0 == 0, and falls through when a0 != 0.
  The `blez` branch at 0x1f47c targets 0x1f4f0, is taken when v0(?) <= 0 (signed), and falls through when v0(?) > 0 (signed).
  The `beq` branch at 0x1f484 targets 0x1f4c4 and is always taken.
  The `beq` branch at 0x1f4a0 targets 0x1f528, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x1f4c0 targets 0x1f4f0, is taken when s0(?) >= v0(?) (signed), and falls through when s0(?) < v0(?) (signed).
  The `bgez` branch at 0x1f4d0 targets 0x1f48c, is taken when s2(?) >= 0 (signed), and falls through when s2(?) < 0 (signed).
  The `bne` branch at 0x1f4e8 targets 0x1f4c8, is taken when s0(?) < v0(?) (signed), and falls through when s0(?) >= v0(?) (signed).
  The `beq` branch at 0x1f4f8 targets 0x1f58c, is taken when (t8(?) & 0x8) == 0, and falls through when (t8(?) & 0x8) != 0.
  The `beq` branch at 0x1f500 targets 0x1f510, is taken when s3(=one of 0x0, 0x1) == 0, and falls through when s3(=one of 0x0, 0x1) != 0.
  The `beql` branch at 0x1f544 targets 0x1f534, is taken when at(?) == 0, and falls through when at(?) != 0; its branch-likely delay slot `nop` at 0x1f548 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x1f554 targets 0x1f4b0 and is always taken.
  The `beq` branch at 0x1f56c targets 0x1f5b4, is taken when s1(=[-0x5c9c]) == 0, and falls through when s1(=[-0x5c9c]) != 0.
  The `beq` branch at 0x1f57c targets 0x1f5b4, is taken when (at(=[[-0x5c9c]]:2) & 0xf) == 0, and falls through when (at(=[[-0x5c9c]]:2) & 0xf) != 0.
  The `beq` branch at 0x1f584 targets 0x1f470 and is always taken.
  The `beq` branch at 0x1f5a0 targets 0x1f5ac, is taken when (v0(?) & 0x4) == 0, and falls through when (v0(?) & 0x4) != 0.
  The `beq` branch at 0x1f5ac targets 0x1f500 and is always taken.
  The `beq` branch at 0x1f5bc targets 0x1f514 and is always taken.
  The return at 0x1f520 has v0 = one of ?, ret(splx).
- `r1nk_perf_start_counters` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1f5c4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1f5c4-0x1f740 (380 bytes).
  It occupies 380 bytes.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x0, including `lh` at 0x1f5f4, `lh` at 0x1f73c.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x24, including `lh` at 0x1f60c, `lh` at 0x1f660.
  The `sh` at 0x1f618 stores 2 bytes to a0 (arg0 at entry) +0x16.
  2 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x1f630, `lhu` at 0x1f6b0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1f644, `lw` at 0x1f650.
  The `lh` at 0x1f67c loads 2 bytes from ?.
  The `lw` at 0x1f688 loads 4 bytes from abs 0xffffffffffffa1d0.
  The `jal` at 0x1f5d0 calls getsr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1f5d8 calls issplhi with a0=ret(getsr), a1=?, a2=?, a3=?.
  The `jal` at 0x1f604 calls r1nk_perf_check_architecture with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1f634 calls r1nkperf_control_register_set with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1f654 calls r1nkperf_data_register_set with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1f730 calls assfail with a0=sym(.rodata)+21200, a1=sym(.rodata)+21200, a2=0x119, a3=?.
  The `beq` branch at 0x1f5ec targets 0x1f720, is taken when v0(=ret(issplhi)) == 0, and falls through when v0(=ret(issplhi)) != 0.
  The `beq` branch at 0x1f5fc targets 0x1f6fc, is taken when (at(=[a0]:2) & 0x8) == 0, and falls through when (at(=[a0]:2) & 0x8) != 0.
  The `blez` branch at 0x1f620 targets 0x1f6f8, is taken when a0(=[a0+36]:2) <= 0 (signed), and falls through when a0(=[a0+36]:2) > 0 (signed).
  The `beq` branch at 0x1f628 targets 0x1f678 and is always taken.
  The `beq` branch at 0x1f648 targets 0x1f718, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1f670 targets 0x1f6f8, is taken when s0(?) >= a0(=[a0+36]:2) (signed), and falls through when s0(?) < a0(=[a0+36]:2) (signed).
  The `bltz` branch at 0x1f680 targets 0x1f6e0, is taken when s2(?) < 0 (signed), and falls through when s2(?) >= 0 (signed).
  The `beq` branch at 0x1f694 targets 0x1f6a0, is taken when a1(?) == s3(=0xe), and falls through when a1(?) != s3(=0xe).
  The `bne` branch at 0x1f69c targets 0x1f630, is taken when a1(?) != s4(=0xf), and falls through when a1(?) == s4(=0xf).
  The `bne` branch at 0x1f6a4 targets 0x1f630, is taken when s0(?) != a2(=0x1), and falls through when s0(?) == a2(=0x1).
  The `beq` branch at 0x1f6d8 targets 0x1f634 and is always taken.
  The `bne` branch at 0x1f6f0 targets 0x1f678, is taken when s0(?) < a0(=[a0+36]:2) (signed), and falls through when s0(?) >= a0(=[a0+36]:2) (signed).
  The `beq` branch at 0x1f718 targets 0x1f654 and is always taken.
  The `beq` branch at 0x1f738 targets 0x1f5f8 and is always taken.
  The return at 0x1f710 has v0 = ?.
- `r1nk_perf_stop_counters` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1f740 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1f740-0x1f7dc (156 bytes).
  It occupies 156 bytes.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x24, including `lh` at 0x1f76c, `lh` at 0x1f794.
  The `sh` at 0x1f774 stores 2 bytes to a0 (arg0 at entry) +0x16.
  The `jal` at 0x1f74c calls getsr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1f754 calls issplhi with a0=ret(getsr), a1=?, a2=?, a3=?.
  The `jal` at 0x1f764 calls r1nk_perf_check_architecture with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1f788 calls r1nkperf_control_register_set with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x1f7cc calls assfail with a0=sym(.rodata)+21200, a1=sym(.rodata)+21200, a2=0x15e, a3=?.
  The `beq` branch at 0x1f75c targets 0x1f7c0, is taken when v0(=ret(issplhi)) == 0, and falls through when v0(=ret(issplhi)) != 0.
  The `blez` branch at 0x1f778 targets 0x1f7ac, is taken when at(=[a0+36]:2) <= 0 (signed), and falls through when at(=[a0+36]:2) > 0 (signed).
  The `bne` branch at 0x1f7a4 targets 0x1f788, is taken when s0(?) < v1(=[a0+36]:2) (signed), and falls through when s0(?) >= v1(=[a0+36]:2) (signed).
  The `beq` branch at 0x1f7d4 targets 0x1f764 and is always taken.
  The return at 0x1f7b8 has v0 = one of -0x1, ret(r1nkperf_control_register_set).
- `r1nk_perf_init_counters` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1f7dc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1f7dc-0x1fa34 (600 bytes).
  It occupies 600 bytes.
  5 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x24, including `lh` at 0x1f808, `lh` at 0x1f848, `lh` at 0x1f870.
  10 such `sh` accesses store 2 bytes to ?, including `sh` at 0x1f838, `sh` at 0x1f840, `sh` at 0x1f860.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x60, including `lh` at 0x1f884, `lh` at 0x1f8a0.
  3 such `lh` accesses load 2 bytes from ?, including `lh` at 0x1f8c8, `lh` at 0x1f978, `lh` at 0x1f9bc.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1f8f0, `sw` at 0x1f950, `sw` at 0x1f954.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1f8f4, `ld` at 0x1f99c.
  The `sd` at 0x1f900 stores 8 bytes to ?.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1f918, `lw` at 0x1f9d4.
  The `ld` at 0x1fa14 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `jal` at 0x1f800 calls cap_able with a0=0x2000000000, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `blez` branch at 0x1f828 targets 0x1f884, is taken when a1(=[a0+36]:2) <= 0 (signed), and falls through when a1(=[a0+36]:2) > 0 (signed).
  The `beq` branch at 0x1f854 targets 0x1f884, is taken when a4(?) >= a2(=[a0+36]:2) (signed), and falls through when a4(?) < a2(=[a0+36]:2) (signed).
  The `bne` branch at 0x1f87c targets 0x1f834, is taken when a4(?) < a6(=[a0+36]:2) (signed), and falls through when a4(?) >= a6(=[a0+36]:2) (signed).
  The `blez` branch at 0x1f88c targets 0x1fa00, is taken when a6(=[a0+96]:2) <= 0 (signed), and falls through when a6(=[a0+96]:2) > 0 (signed).
  The `beq` branch at 0x1f894 targets 0x1fa18 and is always taken.
  The `beq` branch at 0x1f8bc targets 0x1fa00, is taken when a7(?) >= t0(=[a0+96]:2) (signed), and falls through when a7(?) < t0(=[a0+96]:2) (signed).
  The `beq` branch at 0x1f904 targets 0x1f89c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x1f914 targets 0x1f920, is taken when (a5(?) & 0x2) == 0, and falls through when (a5(?) & 0x2) != 0.
  The `beq` branch at 0x1f91c targets 0x1fa08, is taken when v0(=ret(cap_able)) == 0, and falls through when v0(=ret(cap_able)) != 0.
  The `bltz` branch at 0x1f924 targets 0x1f9d8, is taken when t2(?) < 0 (signed), and falls through when t2(?) >= 0 (signed).
  The `beq` branch at 0x1f92c targets 0x1f9d8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x1f934 targets 0x1f9d8, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bltz` branch at 0x1f93c targets 0x1f9d8, is taken when a4(?) < 0 (signed), and falls through when a4(?) >= 0 (signed).
  The `beq` branch at 0x1f944 targets 0x1f9d0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `blez` branch at 0x1f968 targets 0x1f89c, is taken when a6(=[a0+36]:2) <= 0 (signed), and falls through when a6(=[a0+36]:2) > 0 (signed).
  The `beq` branch at 0x1f970 targets 0x1fa10 and is always taken.
  The `beq` branch at 0x1f994 targets 0x1f89c, is taken when a4(?) >= a6(=[a0+36]:2) (signed), and falls through when a4(?) < a6(=[a0+36]:2) (signed).
  The `beq` branch at 0x1f9b4 targets 0x1f98c, is taken when (a3(?) & t0(?)) == 0, and falls through when (a3(?) & t0(?)) != 0.
  The `bne` branch at 0x1f9c0 targets 0x1f978, is taken when a6(?) != t3(=-0x1), and falls through when a6(?) == t3(=-0x1).
  The `beq` branch at 0x1f9c8 targets 0x1f978 and is always taken.
  The `beq` branch at 0x1f9d0 targets 0x1f954 and is always taken.
  The `beq` branch at 0x1fa00 targets 0x1f9dc and is always taken.
  The `beq` branch at 0x1fa08 targets 0x1f9dc and is always taken.
  The `beq` branch at 0x1fa10 targets 0x1f9a0 and is always taken.
  The `beq` branch at 0x1fa2c targets 0x1f8c8 and is always taken.
  The return at 0x1f9f8 has v0 = one of 0x0, 0x1, 0x16.
- `r1nk_perf_architecture` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1fa34 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1fa34-0x1fab0 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0x1fa34 loads 4 bytes from abs 0xffffffffffffa1d0.
  The `jal` at 0x1faa0 calls cmn_err with a0=0x0, a1=sym(.rodata)+21344, a2=0x0, a3=[-0x5e30], a4=0x9.
  The `beq` branch at 0x1fa54 targets 0x1fa8c, is taken when v0(?) == at(=0xe), and falls through when v0(?) != at(=0xe).
  The `beq` branch at 0x1fa5c targets 0x1fa8c, is taken when v0(?) == a2(=0xf), and falls through when v0(?) != a2(=0xf).
  The `bne` branch at 0x1fa64 targets 0x1fa94, is taken when v0(?) != a4(=0x9), and falls through when v0(?) == a4(=0x9).
  The `bne` branch at 0x1fa70 targets 0x1fa84, is taken when a5(?) < 0x3 (unsigned), and falls through when a5(?) >= 0x3 (unsigned).
  The `beq` branch at 0x1fa84 targets 0x1fa7c and is always taken.
  The `beq` branch at 0x1fa8c targets 0x1fa7c and is always taken.
  The `beq` branch at 0x1faa8 targets 0x1fa7c and is always taken.
  The return at 0x1fa7c has v0 = one of 0x2, 0x1, 0x4, ret(cmn_err).
- `r1nk_perf_check_architecture` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1fab0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1fab0-0x1fb34 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0x1fac4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x14, including `lh` at 0x1fad0, `lh` at 0x1fb30.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x1fadc, `lw` at 0x1fb00.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x1faf4, `lw` at 0x1fb20.
  The `sw` at 0x1fb08 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `jal` at 0x1fabc calls r1nk_perf_architecture with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1faf8 calls signal with a0=[a0+16], a1=[a0+20]:2, a2=[a0+20]:2, a3=?.
  The `jal` at 0x1fb24 calls cmn_err with a0=0x5, a1=sym(.rodata)+21472, a2=[a0+20]:2, a3=[a0+16].
  The `beq` branch at 0x1fac8 targets 0x1fb0c, is taken when at(=[a0+8]) == v0(=ret(r1nk_perf_architecture)), and falls through when at(=[a0+8]) != v0(=ret(r1nk_perf_architecture)).
  The `beq` branch at 0x1fad4 targets 0x1fb10, is taken when a2(=[a0+20]:2) == 0, and falls through when a2(=[a0+20]:2) != 0.
  The `bne` branch at 0x1fae4 targets 0x1fb10, is taken when (v0(=[a0+4]) & 0x1) != 0, and falls through when (v0(=[a0+4]) & 0x1) == 0.
  The `bne` branch at 0x1faec targets 0x1fb1c, is taken when a0(=[sym(perfcnt_arch_swtch_msg)]) != 0, and falls through when a0(=[sym(perfcnt_arch_swtch_msg)]) == 0.
  The `beq` branch at 0x1fb2c targets 0x1faf4 and is always taken.
  The return at 0x1fb14 has v0 = one of ret(r1nk_perf_architecture), ?.
- `read_branch_diag` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1fb34 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1fb34-0x1fb40 (12 bytes).
  It occupies 12 bytes.
  The return at 0x1fb38 has v0 = ?.
- `write_branch_diag` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1fb40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1fb40-0x1fb4c (12 bytes).
  It occupies 12 bytes.
  The return at 0x1fb44 has v0 = ?.
- `branch_prediction_off` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1fb4c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1fb4c-0x1fb70 (36 bytes).
  It occupies 36 bytes.
  The return at 0x1fb68 has v0 = ?.
- `branch_prediction_on` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1fb70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1fb70-0x1fb8c (28 bytes).
  It occupies 28 bytes.
  The return at 0x1fb84 has v0 = ?.
- `branch_prediction_taken` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1fb8c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1fb8c-0x1fbb0 (36 bytes).
  It occupies 36 bytes.
  The return at 0x1fba8 has v0 = ?.
- `branch_prediction_fwd_not_taken` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1fbb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1fbb0-0x1fbc8 (24 bytes).
  It occupies 24 bytes.
  The return at 0x1fbc0 has v0 = ?.
- `r12k_perf_overflow_intr` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1fbc8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1fbc8-0x1fc28 (96 bytes).
  It occupies 96 bytes.
  The `beq` branch at 0x1fbd4 targets 0x1fbe4, is taken when t0(?) >= 0 (signed), and falls through when t0(?) < 0 (signed).
  The `beq` branch at 0x1fbe4 targets 0x1fbf0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x1fc00 targets 0x1fc10, is taken when t0(?) >= 0 (signed), and falls through when t0(?) < 0 (signed).
  The `beq` branch at 0x1fc10 targets 0x1fc1c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The return at 0x1fc20 has v0 = ?.
- `r10k_perf_overflow_intr` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1fc28 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1fc28-0x1fc58 (48 bytes).
  It occupies 48 bytes.
  The `beq` branch at 0x1fc34 targets 0x1fc44, is taken when t0(?) >= 0 (signed), and falls through when t0(?) < 0 (signed).
  The `beq` branch at 0x1fc44 targets 0x1fc50, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The return at 0x1fc50 has v0 = ?.
- `r1nkperf_data_register_get` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1fc58 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1fc58-0x1fcc0 (104 bytes).
  It occupies 104 bytes.
  The `bne` branch at 0x1fc58 targets 0x1fc6c, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x1fc70 targets 0x1fc84, is taken when a0 != at(=0x1), and falls through when a0 == at(=0x1).
  The `bne` branch at 0x1fc88 targets 0x1fc9c, is taken when a0 != at(=0x2), and falls through when a0 == at(=0x2).
  The `bne` branch at 0x1fca0 targets 0x1fcb4, is taken when a0 != at(=0x3), and falls through when a0 == at(=0x3).
  The return at 0x1fc64 has v0 = ?.
  The return at 0x1fc7c has v0 = ?.
  The return at 0x1fc94 has v0 = ?.
  The return at 0x1fcac has v0 = ?.
  The return at 0x1fcb8 has v0 = 0x0.
- `r1nkperf_control_register_get` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1fcc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1fcc0-0x1fd28 (104 bytes).
  It occupies 104 bytes.
  The `bne` branch at 0x1fcc0 targets 0x1fcd4, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x1fcd8 targets 0x1fcec, is taken when a0 != at(=0x1), and falls through when a0 == at(=0x1).
  The `bne` branch at 0x1fcf0 targets 0x1fd04, is taken when a0 != at(=0x2), and falls through when a0 == at(=0x2).
  The `bne` branch at 0x1fd08 targets 0x1fd1c, is taken when a0 != at(=0x3), and falls through when a0 == at(=0x3).
  The return at 0x1fccc has v0 = ?.
  The return at 0x1fce4 has v0 = ?.
  The return at 0x1fcfc has v0 = ?.
  The return at 0x1fd14 has v0 = ?.
  The return at 0x1fd20 has v0 = 0x0.
- `r1nkperf_data_register_set` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1fd28 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1fd28-0x1fd8c (100 bytes).
  It occupies 100 bytes.
  The `bne` branch at 0x1fd28 targets 0x1fd3c, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x1fd40 targets 0x1fd54, is taken when a0 != at(=0x1), and falls through when a0 == at(=0x1).
  The `bne` branch at 0x1fd58 targets 0x1fd6c, is taken when a0 != at(=0x2), and falls through when a0 == at(=0x2).
  The `bne` branch at 0x1fd70 targets 0x1fd84, is taken when a0 != at(=0x3), and falls through when a0 == at(=0x3).
  The return at 0x1fd34 has v0 = ?.
  The return at 0x1fd4c has v0 = ?.
  The return at 0x1fd64 has v0 = ?.
  The return at 0x1fd7c has v0 = ?.
  The return at 0x1fd84 has v0 = ?.
- `r1nkperf_control_register_set` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1fd8c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1fd8c-0x1fdf0 (100 bytes).
  It occupies 100 bytes.
  The `bne` branch at 0x1fd8c targets 0x1fda0, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x1fda4 targets 0x1fdb8, is taken when a0 != at(=0x1), and falls through when a0 == at(=0x1).
  The `bne` branch at 0x1fdbc targets 0x1fdd0, is taken when a0 != at(=0x2), and falls through when a0 == at(=0x2).
  The `bne` branch at 0x1fdd4 targets 0x1fde8, is taken when a0 != at(=0x3), and falls through when a0 == at(=0x3).
  The return at 0x1fd98 has v0 = ?.
  The return at 0x1fdb0 has v0 = ?.
  The return at 0x1fdc8 has v0 = ?.
  The return at 0x1fde0 has v0 = ?.
  The return at 0x1fde8 has v0 = ?.
- `handle_ii` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x1fdf0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x1fdf0-0x20150 (864 bytes).
  It occupies 864 bytes.
  The `sd` at 0x1fe28 stores 8 bytes to abs 0xffffffffffffa030.
  2 such `lwu` accesses load 4 bytes from ?, including `lwu` at 0x1fe38, `lwu` at 0x1fe3c.
  The `ld` at 0x1fe74 loads 8 bytes from abs 0xffffffffffffa030.
  The `sd` at 0x1fea8 stores 8 bytes to abs 0xffffffffffffa1b0.
  Calls longway via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1fe14).
  Calls longway via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1fe70).
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x1febc).
  The `beq` branch at 0x1fe0c targets 0x1fe1c, is taken when k1(?) == 0, and falls through when k1(?) != 0.
  The `beql` branch at 0x1fe34 targets 0x1fe40, is taken when (k0(?) & at(=0x80000000)) == 0, and falls through when (k0(?) & at(=0x80000000)) != 0; its branch-likely delay slot `lwu t0,0(k1)` at 0x1fe38 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x1fe5c targets 0x1fe78, is taken when k1(?) == 0, and falls through when k1(?) != 0.
  The `beq` branch at 0x1fe68 targets 0x1fe78, is taken when k1(?) == 0, and falls through when k1(?) != 0.
  The `bne` branch at 0x1fe84 targets 0x1fe70, is taken when (k0(?) & at(=0x80000000)) != 0, and falls through when (k0(?) & at(=0x80000000)) == 0.
  The `beq` branch at 0x1fe98 targets 0x1fe70, is taken when (k0(?) & at(=0x20000000)) == 0, and falls through when (k0(?) & at(=0x20000000)) != 0.
  The instructions from 0x1fec4 to 0x2014c are not reached by any path from the entry, and their branches are not listed.
- `VEC_ii` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x20150 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x20150-0x201d8 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0x20158 loads 4 bytes from sym(R5000_cvt_war) +0x0.
  The `ld` at 0x20174 loads 8 bytes from a0 (arg0 at entry) +0x120.
  The `lwu` at 0x20180 loads 4 bytes from [a0+288]:8 +0x0.
  The `lwu` at 0x20184 loads 4 bytes from [a0+288]:8 +0x4.
  The `sd` at 0x201d4 stores 8 bytes to a0 (arg0 at entry) +0x118.
  Calls VEC_trap via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x20164).
  Calls VEC_trap via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x201b8).
  Calls VEC_fpe via direct with a0=a0 at entry (arg0), a1=0x3c, a2=a2 at entry (arg2), a3=? (`j` at 0x201d0).
  The `bne` branch at 0x2015c targets 0x2016c, is taken when t0(=[sym(R5000_cvt_war)]) != 0, and falls through when t0(=[sym(R5000_cvt_war)]) == 0.
  The `beql` branch at 0x2017c targets 0x20188, is taken when (a3 & at(=0x80000000)) == 0, and falls through when (a3 & at(=0x80000000)) != 0; its branch-likely delay slot `lwu t0,0(t1)` at 0x20180 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x201a4 targets 0x201c0, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x201b0 targets 0x201c0, is taken when t2(?) == 0, and falls through when t2(?) != 0.
- `mul64` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x201d8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x201d8-0x201f0 (24 bytes).
  It occupies 24 bytes.
  The `sd` at 0x201e0 stores 8 bytes to a2 (arg2 at entry) +0x0.
  The return at 0x201e8 has v0 = ?.
- `madd` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x201f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x201f0-0x207d4 (1508 bytes).
  It occupies 1508 bytes.
  The `lw` at 0x20220 loads 4 bytes from ((a0 << 0x2) + sym(EXP_INF)) +0x0.
  8 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x20260, `lw` at 0x20278, `lw` at 0x20300.
  6 such `lw` accesses load 4 bytes from [-0x5fec] +0x34c, including `lw` at 0x20268, `lw` at 0x2027c, `lw` at 0x20308.
  3 such `sw` accesses store 4 bytes to [-0x5fec] +0x34c, including `sw` at 0x20274, `sw` at 0x20314, `sw` at 0x204b8.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(EXP_BIAS)) +0x0, including `lw` at 0x2036c, `lw` at 0x20398.
  2 such `ld` accesses load 8 bytes from (sym(IMP_1BIT) + (a0 << 0x3)) +0x0, including `ld` at 0x20374, `ld` at 0x203a0.
  The `lw` at 0x2042c loads 4 bytes from ((a0 << 0x2) + sym(maddrnd)) +0x0.
  5 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(EXP_SHIFT)) +0x0, including `lw` at 0x20500, `lw` at 0x20690, `lw` at 0x206d4.
  6 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(SIGN_SHIFT)) +0x0, including `lw` at 0x20508, `lw` at 0x20578, `lw` at 0x20698.
  The `lbu` at 0x20560 loads 1 byte from [-0x5fec] +0x358.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(renorm)) +0x0, including `lw` at 0x205c4, `lw` at 0x205fc.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(EXP_MIN)) +0x0, including `lw` at 0x205e0, `lw` at 0x20610.
  3 such `ld` accesses load 8 bytes from (sym(QUIETNAN) + (a0 << 0x3)) +0x0, including `ld` at 0x20634, `ld` at 0x2066c, `ld` at 0x2075c.
  The `jal` at 0x2028c calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=?, a3=sym(EXP_SHIFT).
  The `jal` at 0x20294 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2032c calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=?, a3=?, a6=([[-0x5fec]+844] | 0x10040), a7=[-0x5fec].
  The `jal` at 0x20334 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x203d8 calls mul64 with a0=?, a1=?, a2=sp-144, a3=?.
  The `jal` at 0x203e8 calls renorm_d with a0=sp-152, a1=?, a2=?, a3=?.
  The `jalr` at 0x20430 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?, a6=[((a0 << 0x2) + sym(maddrnd))].
  The `jal` at 0x2044c calls breakout_sd with a0=a0 at entry (arg0), a1=sp-160, a2=sp-52, a3=sp-44, a4=sp-40.
  The `jal` at 0x2046c calls add with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=a7 at entry (arg7).
  The `jal` at 0x204d0 calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=?, a3=?.
  The `jal` at 0x204d8 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2051c calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x20524 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x20590 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=[((a0 << 0x2) + sym(SIGN_SHIFT))], a3=[[-0x5fec]+856]:1, a4=0x3.
  The `jal` at 0x20598 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x205c8 calls (unknown callee) with a0=sp-40, a1=a1 at entry (arg1), a2=[((a0 << 0x2) + sym(renorm))], a3=?.
  The `jalr` at 0x20600 calls (unknown callee) with a0=sp-16, a1=sym(EXP_BIAS), a2=sym(renorm), a3=?.
  The `jal` at 0x20630 calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=sym(EXP_SHIFT).
  The `jal` at 0x20638 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x20668 calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=?, a6=([[-0x5fec]+844] | 0x10040), a7=[-0x5fec].
  The `jal` at 0x20670 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x206a8 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(EXP_SHIFT))], a4=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x206b0 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x206ec calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))], a4=((a0 << 0x2) + sym(SIGN_SHIFT)).
  The `jal` at 0x206f4 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x20730 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(EXP_SHIFT))], a4=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x20738 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x20758 calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=?.
  The `jal` at 0x20760 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x207a4 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[((a0 << 0x2) + sym(EXP_SHIFT))], a5=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x207ac calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x20240 targets 0x202a4, is taken when t1(=[((a0 << 0x2) + sym(EXP_INF))]) != a2, and falls through when t1(=[((a0 << 0x2) + sym(EXP_INF))]) == a2.
  The `bne` branch at 0x20248 targets 0x202e0, is taken when t1(=[((a0 << 0x2) + sym(EXP_INF))]) != a5, and falls through when t1(=[((a0 << 0x2) + sym(EXP_INF))]) == a5.
  The `bne` branch at 0x20250 targets 0x206c0, is taken when t1(=[((a0 << 0x2) + sym(EXP_INF))]) != a2(?), and falls through when t1(=[((a0 << 0x2) + sym(EXP_INF))]) == a2(?).
  The `beq` branch at 0x20258 targets 0x20680, is taken when a3(?) == a7, and falls through when a3(?) != a7.
  The `beq` branch at 0x20284 targets 0x20624, is taken when (t2(=[[-0x5fec]+844]) & 0x800) == 0, and falls through when (t2(=[[-0x5fec]+844]) & 0x800) != 0.
  The `beq` branch at 0x2029c targets 0x20478 and is always taken.
  The `bne` branch at 0x202a4 targets 0x202e0, is taken when t1(=[((a0 << 0x2) + sym(EXP_INF))]) != a5, and falls through when t1(=[((a0 << 0x2) + sym(EXP_INF))]) == a5.
  The `bne` branch at 0x202e0 targets 0x20344, is taken when t1(=[((a0 << 0x2) + sym(EXP_INF))]) != t2(?), and falls through when t1(=[((a0 << 0x2) + sym(EXP_INF))]) == t2(?).
  The `bne` branch at 0x202e8 targets 0x20494, is taken when t1(=[((a0 << 0x2) + sym(EXP_INF))]) != a2(?), and falls through when t1(=[((a0 << 0x2) + sym(EXP_INF))]) == a2(?).
  The `beq` branch at 0x202f0 targets 0x20648, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x202f8 targets 0x20704, is taken when s4(=a7) == a4(?), and falls through when s4(=a7) != a4(?).
  The `beq` branch at 0x20324 targets 0x20658, is taken when (a5(=[[-0x5fec]+844]) & 0x800) == 0, and falls through when (a5(=[[-0x5fec]+844]) & 0x800) != 0.
  The `beq` branch at 0x2033c targets 0x20478 and is always taken.
  The `beq` branch at 0x20344 targets 0x20534, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x2034c targets 0x20544, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x20354 targets 0x205bc, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x20388 targets 0x205f8, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x203b4 targets 0x205a8, is taken when s1(=a0) == 0, and falls through when s1(=a0) != 0.
  The `bne` branch at 0x20418 targets 0x20424, is taken when v0(=ret(renorm_d)) != t3(=0xb), and falls through when v0(=ret(renorm_d)) == t3(=0xb).
  The `bne` branch at 0x20494 targets 0x204ec, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `bne` branch at 0x2049c targets 0x204ec, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x204c8 targets 0x20748, is taken when (a7(=[[-0x5fec]+844]) & 0x800) == 0, and falls through when (a7(=[[-0x5fec]+844]) & 0x800) != 0.
  The `beq` branch at 0x204e0 targets 0x20478 and is always taken.
  The `beq` branch at 0x2052c targets 0x20478 and is always taken.
  The `bne` branch at 0x20534 targets 0x2034c, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x2053c targets 0x2054c and is always taken.
  The `bne` branch at 0x20544 targets 0x20354, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x2054c targets 0x20770, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x20554 targets 0x20774, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x20574 targets 0x207bc, is taken when a3(=[[-0x5fec]+856]:1) == a4(=0x3), and falls through when a3(=[[-0x5fec]+856]:1) != a4(=0x3).
  The `beq` branch at 0x205a0 targets 0x20478 and is always taken.
  The `beq` branch at 0x205b4 targets 0x203bc and is always taken.
  The `bne` branch at 0x205f0 targets 0x20390, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x2061c targets 0x203b4 and is always taken.
  The `beq` branch at 0x20640 targets 0x20478 and is always taken.
  The `bne` branch at 0x20648 targets 0x202f8, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x20650 targets 0x20304 and is always taken.
  The `beq` branch at 0x20678 targets 0x20478 and is always taken.
  The `beq` branch at 0x206b8 targets 0x20478 and is always taken.
  The `beq` branch at 0x206fc targets 0x20478 and is always taken.
  The `beq` branch at 0x20740 targets 0x20478 and is always taken.
  The `beq` branch at 0x20768 targets 0x20478 and is always taken.
  The `beq` branch at 0x207b4 targets 0x20478 and is always taken.
  The `beq` branch at 0x207cc targets 0x20590 and is always taken.
  The return at 0x2048c has v0 = one of ret(store_fpcsr), ret(add).
  The instructions from 0x204e8 to 0x204e8 are not reached by any path from the entry, and their branches are not listed.
- `add` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x207d4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x207d4-0x20d60 (1420 bytes).
  It occupies 1420 bytes.
  The `lw` at 0x207fc loads 4 bytes from ((a0 << 0x2) + sym(EXP_INF)) +0x0.
  4 such `lw` accesses load 4 bytes from abs 0xffffffffffffa014, including `lw` at 0x20834, `lw` at 0x2084c, `lw` at 0x208a8.
  2 such `lw` accesses load 4 bytes from [-0x5fec] +0x34c, including `lw` at 0x2083c, `lw` at 0x20850.
  The `sw` at 0x20848 stores 4 bytes to [-0x5fec] +0x34c.
  2 such `lbu` accesses load 1 byte from [-0x5fec] +0x358, including `lbu` at 0x208ac, `lbu` at 0x20af4.
  7 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(SIGN_SHIFT)) +0x0, including `lw` at 0x208c0, `lw` at 0x20b08, `lw` at 0x20b4c.
  The `lw` at 0x209d0 loads 4 bytes from ((a0 << 0x2) + sym(round)) +0x0.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(EXP_BIAS)) +0x0, including `lw` at 0x20a1c, `lw` at 0x20a40.
  2 such `ld` accesses load 8 bytes from (sym(IMP_1BIT) + (a0 << 0x3)) +0x0, including `ld` at 0x20a24, `ld` at 0x20a48.
  5 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(EXP_SHIFT)) +0x0, including `lw` at 0x20b54, `lw` at 0x20bac, `lw` at 0x20c18.
  The `ld` at 0x20b94 loads 8 bytes from (sym(QUIETNAN) + (a0 << 0x3)) +0x0.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(renorm)) +0x0, including `lw` at 0x20c98, `lw` at 0x20ccc.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(EXP_MIN)) +0x0, including `lw` at 0x20cb0, `lw` at 0x20ce0.
  The `jal` at 0x20860 calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=0x10040, a3=a3 at entry (arg3).
  The `jal` at 0x20868 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x208d4 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x208dc calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x20994 calls renorm_d with a0=sp-144, a1=?, a2=?, a3=?.
  The `jalr` at 0x209d8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x20b1c calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=sym(SIGN_SHIFT).
  The `jal` at 0x20b24 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x20b68 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=a3 at entry (arg3), a4=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x20b70 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x20b90 calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=a3 at entry (arg3).
  The `jal` at 0x20b98 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x20bcc calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x20bd4 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x20c38 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x20c40 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x20c78 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x20c80 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x20c9c calls (unknown callee) with a0=sp-40, a1=a1 at entry (arg1), a2=[((a0 << 0x2) + sym(renorm))], a3=a3 at entry (arg3).
  The `jalr` at 0x20cd0 calls (unknown callee) with a0=sp-16, a1=sym(EXP_BIAS), a2=?, a3=?.
  The `jal` at 0x20d34 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x20d3c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x2081c targets 0x20878, is taken when v0(=[((a0 << 0x2) + sym(EXP_INF))]) != a2, and falls through when v0(=[((a0 << 0x2) + sym(EXP_INF))]) == a2.
  The `bne` branch at 0x20824 targets 0x20c10, is taken when v0(=[((a0 << 0x2) + sym(EXP_INF))]) != a5, and falls through when v0(=[((a0 << 0x2) + sym(EXP_INF))]) == a5.
  The `beq` branch at 0x2082c targets 0x20ba8, is taken when a1 == a4, and falls through when a1 != a4.
  The `beq` branch at 0x20858 targets 0x20b80, is taken when (v1(=[[-0x5fec]+844]) & 0x800) == 0, and falls through when (v1(=[[-0x5fec]+844]) & 0x800) != 0.
  The `beq` branch at 0x20870 targets 0x209e4 and is always taken.
  The `beq` branch at 0x20878 targets 0x20c50, is taken when v0(=[((a0 << 0x2) + sym(EXP_INF))]) == a5, and falls through when v0(=[((a0 << 0x2) + sym(EXP_INF))]) != a5.
  The `beq` branch at 0x20880 targets 0x20ad8, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x20888 targets 0x20b34, is taken when s0(=a5) == 0, and falls through when s0(=a5) != 0.
  The `beq` branch at 0x20890 targets 0x20a04, is taken when s3(=a1) == s4(=a4), and falls through when s3(=a1) != s4(=a4).
  The `bne` branch at 0x20898 targets 0x20a04, is taken when s1(=a2) != s0(=a5), and falls through when s1(=a2) == s0(=a5).
  The `bne` branch at 0x208a0 targets 0x20a04, is taken when a6 != a3, and falls through when a6 == a3.
  The `beq` branch at 0x208bc targets 0x20cf0, is taken when v1(=[[-0x5fec]+856]:1) == a0(=0x3), and falls through when v1(=[[-0x5fec]+856]:1) != a0(=0x3).
  The `beq` branch at 0x208e4 targets 0x209e4 and is always taken.
  The `beq` branch at 0x2090c targets 0x20ac8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x20928 targets 0x2095c, is taken when s3(=a1) == s4(=a4), and falls through when s3(=a1) != s4(=a4).
  The `beq` branch at 0x20930 targets 0x20ad0, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x20960 targets 0x20bf8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x20974 targets 0x20994, is taken when (a2(?) & a5(=0xffe0000000000000)) == 0, and falls through when (a2(?) & a5(=0xffe0000000000000)) != 0.
  The `beq` branch at 0x209a0 targets 0x209c8, is taken when v0(=ret(renorm_d)) == 0, and falls through when v0(=ret(renorm_d)) != 0.
  The `beq` branch at 0x20a04 targets 0x20c90, is taken when s1(=a2) == 0, and falls through when s1(=a2) != 0.
  The `beq` branch at 0x20a30 targets 0x20cc4, is taken when s0(=a5) == 0, and falls through when s0(=a5) != 0.
  The `beq` branch at 0x20a5c targets 0x20be4, is taken when s5(=a0) == 0, and falls through when s5(=a0) != 0.
  The `beq` branch at 0x20a6c targets 0x20a78, is taken when s0(?) >= v0(?) (signed), and falls through when s0(?) < v0(?) (signed).
  The `beq` branch at 0x20a80 targets 0x20a90, is taken when s1(?) >= v0(?) (signed), and falls through when s1(?) < v0(?) (signed).
  The `bne` branch at 0x20a90 targets 0x20ab0, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `bne` branch at 0x20a98 targets 0x208f0, is taken when s1(?) != s0(?), and falls through when s1(?) == s0(?).
  The `bne` branch at 0x20aa4 targets 0x208f0, is taken when a3(?) < a6(?) (unsigned), and falls through when a3(?) >= a6(?) (unsigned).
  The `beq` branch at 0x20ac0 targets 0x20904 and is always taken.
  The `beq` branch at 0x20ac8 targets 0x2095c, is taken when s3(=a1) == s4(=a4), and falls through when s3(=a1) != s4(=a4).
  The `beq` branch at 0x20ad0 targets 0x20938 and is always taken.
  The `bne` branch at 0x20ad8 targets 0x20888, is taken when a3 != 0, and falls through when a3 == 0.
  The `bne` branch at 0x20ae0 targets 0x20d08, is taken when a5 != 0, and falls through when a5 == 0.
  The `bne` branch at 0x20ae8 targets 0x20d08, is taken when a6 != 0, and falls through when a6 == 0.
  The `beq` branch at 0x20b04 targets 0x20d4c, is taken when v1(=[[-0x5fec]+856]:1) == a0(=0x3), and falls through when v1(=[[-0x5fec]+856]:1) != a0(=0x3).
  The `beq` branch at 0x20b2c targets 0x209e4 and is always taken.
  The `bne` branch at 0x20b34 targets 0x20890, is taken when a6 != 0, and falls through when a6 == 0.
  The `beq` branch at 0x20b78 targets 0x209e4 and is always taken.
  The `beq` branch at 0x20ba0 targets 0x209e4 and is always taken.
  The `beq` branch at 0x20bdc targets 0x209e4 and is always taken.
  The `beq` branch at 0x20bf0 targets 0x20a64 and is always taken.
  The `beq` branch at 0x20c08 targets 0x20968 and is always taken.
  The `beq` branch at 0x20c48 targets 0x209e4 and is always taken.
  The `beq` branch at 0x20c88 targets 0x209e4 and is always taken.
  The `bne` branch at 0x20cbc targets 0x20a38, is taken when s0(=a5) != 0, and falls through when s0(=a5) == 0.
  The `beq` branch at 0x20ce8 targets 0x20a5c and is always taken.
  The `beq` branch at 0x20cfc targets 0x208d4 and is always taken.
  The `beq` branch at 0x20d44 targets 0x209e4 and is always taken.
  The `beq` branch at 0x20d58 targets 0x20b1c and is always taken.
  The return at 0x209fc has v0 = one of ret(store_fpcsr), ret(?).
  The instructions from 0x208ec to 0x208ec are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x20d04 to 0x20d04 are not reached by any path from the entry, and their branches are not listed.
- `VEC_tlbmod` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x20d60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x20d60-0x20dc0 (96 bytes).
  It occupies 96 bytes.
  The `ld` at 0x20d60 loads 8 bytes from ?.
  The `ld` at 0x20dbc loads 8 bytes from a0 (arg0 at entry) +0x118.
  The `jal` at 0x20d80 calls tlbmod with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  Calls exception_exit via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x20da8).
  Calls soft_trap via direct with a0=a0 at entry (arg0), a1=ret(tlbmod), a2=?, a3=[a0+280]:8 (`j` at 0x20db8).
  The `bne` branch at 0x20d88 targets 0x20db0, is taken when v0(=ret(tlbmod)) != 0, and falls through when v0(=ret(tlbmod)) == 0.
- `btool_size` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x20e5c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x20e5c-0x20e64 (8 bytes).
  It occupies 8 bytes.
  The return at 0x20e5c has v0 = 0x0.
- `btool_getinfo` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x20e64 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x20e64-0x20e6c (8 bytes).
  It occupies 8 bytes.
  The return at 0x20e64 has v0 = 0x16.
- `btool_reinit` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x20e6c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x20e6c-0x20e74 (8 bytes).
  It occupies 8 bytes.
  The return at 0x20e6c has v0 = ?.
- `other_prda` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x20e80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x20e80-0x20e9c (28 bytes).
  It occupies 28 bytes.
  The `lw` at 0x20e84 loads 4 bytes from a0 (arg0 at entry) +0x800.
  The `sw` at 0x20e90 stores 4 bytes to a0 (arg0 at entry) +0x800.
  The `beq` branch at 0x20e88 targets 0x20e94, is taken when at(=[a0+2048]) == v0(=[sym(.sbss)+288]), and falls through when at(=[a0+2048]) != v0(=[sym(.sbss)+288]).
  The return at 0x20e94 has v0 = [sym(.sbss)+288].
- `otherprda` in `usr/cpu/sysgen/IP32boot/kernel.o` at 0x20e9c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP32boot/kernel.o`.
  Range: 0x20e9c-0x20edc (64 bytes).
  It occupies 64 bytes.
  The `sw` at 0x20eac stores 4 bytes to a0 (arg0 at entry) +0x800.
  The `jal` at 0x20ec0 calls get_host_id with a0=sp-80, a1=sp-16, a2=0x0, a3=a3 at entry (arg3).
  The `beq` branch at 0x20ea4 targets 0x20eb8, is taken when a0 == 0, and falls through when a0 != 0.
  The `bne` branch at 0x20ec8 targets 0x20eb0, is taken when v0(=ret(get_host_id)) != 0, and falls through when v0(=ret(get_host_id)) == 0.
  The `beq` branch at 0x20ed4 targets 0x20eb0 and is always taken.
  The return at 0x20eb0 has v0 = one of ?, ret(get_host_id).
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
  The `lw` at 0x2b18 loads 4 bytes from (sym(.rodata)+192 + ([a0+1127]:1 << 0x2)) +0x0.
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
  The `jalr` at 0x2624 calls .text+12552 with a0=a0 at entry (arg0), a1=sp-248, a2=?, a3=?.
  The `jalr` at 0x2794 calls .text+104 with a0=a0 at entry (arg0), a1=sym(mvptransfer_too_many_errors+52), a2=([a0+1164] | 0x800000), a3=0x800000.
  The `jalr` at 0x27d4 calls .text+8312 with a0=a0 at entry (arg0), a1=?, a2=0x0, a3=?, a5=sym(mvptransfer_screen_interrupt+1688).
  The `jalr` at 0x2868 calls mvppath_send_available with a0=a0 at entry (arg0), a1=0x10000, a2=([a0+1164] | 0x10000), a3=sym(mvppath_send_available), a4=0x10000, a5=[a0+1120].
  The `jalr` at 0x28dc calls mvptransfer_stop with a0=a0 at entry (arg0), a1=0x3, a2=[a0+1127]:1, a3=?.
  The `jalr` at 0x2900 calls sv_signal with a0=[a0+1564], a1=([a0+1164] | 0x100), a2=sym(sv_signal), a3=?.
  The `jalr` at 0x2938 calls mvpinterrupt_setup with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x0, a3=0x0, a4=sym(mvpinterrupt_setup).
  The `jalr` at 0x2a70 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2aa4 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?, a5=[a0+1120], a7=[[a0+1120]+9]:1.
  The `jalr` at 0x2af4 calls mvptransfer_enablechannel with a0=a0 at entry (arg0), a1=0x3, a2=?, a3=?, a4=sym(mvptransfer_enablechannel), a5=[a0+1148]:1, a6=(ret(pciio_pio_read64) << 0x3d).
  Calls (unknown callee) via register with a0=(sym(.rodata)+192 + ([a0+1127]:1 << 0x2)), a1=([a0+1127]:1 << 0x2), a2=?, a3=[(sym(.rodata)+192 + ([a0+1127]:1 << 0x2))], a4=(ret(pciio_pio_read64) << 0x3d) (`jr` at 0x2b1c).
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
  The `beq` branch at 0x279c targets 0x280c, is taken when v0(=ret(.text+104)) == 0, and falls through when v0(=ret(.text+104)) != 0.
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
  The return at 0x2804 has v0 = one of ?, ret(.text+8312).
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
  The `jalr` at 0x506c calls mvpi2c_read_reg with a0=[a1+16], a1=sym(.data)+3408, a2=-0x2, a3=a3 at entry (arg3).
  The `jalr` at 0x50b0 calls mvpavio_preset_timing with a0=0x80, a1=?, a2=sym(mvpavio_preset_timing), a3=?.
  The `jalr` at 0x50cc calls mvpavio_preset_input with a0=?, a1=?, a2=?, a3=sym(mvpavio_preset_input).
  The `jalr` at 0x50e8 calls mvpavio_preset_output with a0=?, a1=?, a2=?, a3=?, a5=sym(mvpavio_preset_output).
  The `jalr` at 0x5104 calls mvpavio_preset_genlock with a0=?, a1=?, a2=?, a3=?, a7=sym(mvpavio_preset_genlock).
  The `jalr` at 0x516c calls mvperrprintf with a0=0x7, a1=sym(.rodata)+320, a2=[a1+4], a3=?, a4=sym(.rodata)+320.
  The `jalr` at 0x5204 calls .text+38624 with a0=a1 at entry (arg1), a1=?, a2=sym(mvpinterrupt+224), a3=?.
  The `jalr` at 0x5228 calls .text+36248 with a0=0xf4240, a1=?, a2=sym(av1_sense_timing), a3=sym(mvpi2c_read_reg+220).
  The `jalr` at 0x523c calls .text+36728 with a0=a1 at entry (arg1), a1=?, a2=sym(mvpi2c_read_reg+700), a3=?.
  The `jalr` at 0x5334 calls mvperrprintf with a0=0x7, a1=sym(.rodata)+320, a2=[a1+4], a3=[a0+97]:1, a4=[a0+98]:1, a6=one of 0x1, 0x2.
  The `jalr` at 0x5344 calls mvpavio_setupoutput with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x5358 calls mvpav1_wiggle_ccen with a0=a1 at entry (arg1), a1=0x1, a2=?, a3=?.
  The `jalr` at 0x5488 calls .text+36320 with a0=a1 at entry (arg1), a1=0x1, a2=?, a3=?.
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
  The `bltz` branch at 0x520c targets 0x54ec, is taken when v0(=ret(.text+38624)) < 0 (signed), and falls through when v0(=ret(.text+38624)) >= 0 (signed).
  The `blez` branch at 0x5214 targets 0x5234, is taken when v0(=ret(.text+38624)) <= 0 (signed), and falls through when v0(=ret(.text+38624)) > 0 (signed).
  The `bltz` branch at 0x5244 targets 0x54e0, is taken when v0(=ret(.text+36728)) < 0 (signed), and falls through when v0(=ret(.text+36728)) >= 0 (signed).
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
  The `beq` branch at 0x5498 targets 0x54fc, is taken when v0(=ret(.text+36320)) == t9(=-0x1), and falls through when v0(=ret(.text+36320)) != t9(=-0x1).
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
  The `lbu` at 0x56b0 loads 1 byte from sym(mvp_umba) +0x1302.
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
  The `jalr` at 0x5804 calls mvperrprintf with a0=0x7, a1=sym(.rodata)+6256, a2=[a1+4], a3=?.
  The `jalr` at 0x58d4 calls mvperrprintf with a0=0x7, a1=sym(.rodata)+6256, a2=[a1+4], a3=[a0+97]:1, a4=[a0+98]:1, a5=one of 0x8, 0xf, a6=sym(mvperrprintf).
  The `jalr` at 0x58e4 calls mvpavio_setupoutput with a0=a0 at entry (arg0), a1=?, a2=sym(mvpavio_setupoutput), a3=?.
  The `jalr` at 0x59dc calls mvperrprintf with a0=0x7, a1=sym(.rodata)+6256, a2=[a1+4], a3=?, a5=sym(mvperrprintf).
  The `beq` branch at 0x56cc targets 0x5940, is taken when s3(=-0x1) == at(=[sym(.data)+4866]:1), and falls through when s3(=-0x1) != at(=[sym(.data)+4866]:1).
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
  7 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xa990, `lbu` at 0xa9cc, `lbu` at 0xa9d0.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x4ab, including `lbu` at 0xa99c, `lbu` at 0xaae4.
  The `lh` at 0xaa48 loads 2 bytes from a0 (arg0 at entry) +0x468.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xaa54, `lw` at 0xaa84, `lw` at 0xaa9c.
  The `jalr` at 0xa958 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xaac8 calls mvppath_send_events with a0=?, a1=?, a2=?, a3=sym(mvppath_send_events), a6=[a0+1195]:1.
  The `jalr` at 0xab4c calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xab90 calls mvppath_send_events with a0=?, a1=0x10000, a2=?, a3=?.
  The `beq` branch at 0xa948 targets 0xab54, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0xa988 targets 0xaa48 and is always taken.
  The `blez` branch at 0xa994 targets 0xaa30, is taken when a4(?) <= 0 (signed), and falls through when a4(?) > 0 (signed).
  The `blez` branch at 0xa9ac targets 0xaa1c, is taken when a6(=[a0+1195]:1) <= 0 (signed), and falls through when a6(=[a0+1195]:1) > 0 (signed).
  The `beq` branch at 0xa9c4 targets 0xa9e0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0xa9d4 targets 0xa9e0, is taken when a2(?) != a3(?), and falls through when a2(?) == a3(?).
  The `beq` branch at 0xa9e0 targets 0xa9fc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0xa9f0 targets 0xa9fc, is taken when a7(?) != t0(?), and falls through when a7(?) == t0(?).
  The `bne` branch at 0xa9fc targets 0xaac0, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `bne` branch at 0xaa0c targets 0xa9c4, is taken when s2(?) < a6(=[a0+1195]:1) (signed), and falls through when s2(?) >= a6(=[a0+1195]:1) (signed).
  The `bne` branch at 0xaa28 targets 0xa9ac, is taken when t2(?) < a4(?) (signed), and falls through when t2(?) >= a4(?) (signed).
  The `beq` branch at 0xaa40 targets 0xab44, is taken when s8(?) >= 0x40 (signed), and falls through when s8(?) < 0x40 (signed).
  The `beq` branch at 0xaa4c targets 0xaa30, is taken when t9(=[a0+1128]:2) == s8(?), and falls through when t9(=[a0+1128]:2) != s8(?).
  The `beq` branch at 0xaa58 targets 0xaa30, is taken when s6(?) == 0, and falls through when s6(?) != 0.
  The `beq` branch at 0xaa68 targets 0xaa30, is taken when (t8(?) & 0x4) == 0, and falls through when (t8(?) & 0x4) != 0.
  The `beq` branch at 0xaa74 targets 0xab84, is taken when t9(=a1) == ra(=0x10000), and falls through when t9(=a1) != ra(=0x10000).
  The `beq` branch at 0xaa7c targets 0xab00, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xaa8c targets 0xab20, is taken when v0(?) == v1(=0x2), and falls through when v0(?) != v1(=0x2).
  The `beq` branch at 0xaa94 targets 0xaa30, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xaaa4 targets 0xaa30, is taken when a1(?) != a2(=0x2), and falls through when a1(?) == a2(=0x2).
  The `bne` branch at 0xaab0 targets 0xa990, is taken when s5(?) != 0, and falls through when s5(?) == 0.
  The `beq` branch at 0xaab8 targets 0xaa34 and is always taken.
  The `beq` branch at 0xaadc targets 0xaa30, is taken when (s5(?) & a4(?)) == 0, and falls through when (s5(?) & a4(?)) != 0.
  The `bne` branch at 0xaaf0 targets 0xa9bc, is taken when a4(?) < a6(=[a0+1195]:1) (signed), and falls through when a4(?) >= a6(=[a0+1195]:1) (signed).
  The `beq` branch at 0xaaf8 targets 0xaa14 and is always taken.
  The `beq` branch at 0xab00 targets 0xaa30, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0xab10 targets 0xaa30, is taken when a7(?) != t0(=0x2), and falls through when a7(?) == t0(=0x2).
  The `beq` branch at 0xab18 targets 0xaaac and is always taken.
  The `beq` branch at 0xab24 targets 0xab3c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0xab34 targets 0xaba0, is taken when t2(?) == t3(=0x2), and falls through when t2(?) != t3(=0x2).
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
  The `jalr` at 0xae9c calls .text+22352 with a0=a0 at entry (arg0), a1=?, a2=0x8, a3=?.
  The `jalr` at 0xaf64 calls .text+22352 with a0=a0 at entry (arg0), a1=?, a2=0x8, a3=?, a5=sym(av2_setup+196), a6=0xc.
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
  The `jalr` at 0xb0e8 calls .text+22352 with a0=a0 at entry (arg0), a1=[sym(mvppath_table)], a2=0x8, a3=a3 at entry (arg3).
  The `jalr` at 0xb134 calls .text+22352 with a0=a0 at entry (arg0), a1=[sym(mvppath_table)], a2=0x80000, a3=?, a7=[a1+15]:1.
  The `jalr` at 0xb230 calls .text+22552 with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=sym(av2_setup+396).
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
  The `beq` branch at 0xb23c targets 0xb260, is taken when v0(=ret(.text+22552)) == a4(=-0x1), and falls through when v0(=ret(.text+22552)) != a4(=-0x1).
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
  The `jalr` at 0xb4a8 calls .text+24632 with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a4=sym(mvpavio_preset_input+144).
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
  The `bne` branch at 0xb424 targets 0xb4dc, is taken when a2(?) < 0x3 (signed), and falls through when a2(?) >= 0x3 (signed).
  The `beq` branch at 0xb42c targets 0xb44c and is always taken.
  The `beq` branch at 0xb434 targets 0xb46c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xb43c targets 0xb46c, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0xb44c targets 0xb46c, is taken when s2(=one of 0x100000, 0x100020) == 0, and falls through when s2(=one of 0x100000, 0x100020) != 0.
  The `beq` branch at 0xb4b4 targets 0xb4e4, is taken when v0(=ret(.text+24632)) == a5(=-0x1), and falls through when v0(=ret(.text+24632)) != a5(=-0x1).
  The `beq` branch at 0xb4bc targets 0xb2d4 and is always taken.
  The `beq` branch at 0xb4c4 targets 0xb46c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xb4cc targets 0xb468, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0xb4d4 targets 0xb44c and is always taken.
  The `beq` branch at 0xb4dc targets 0xb454 and is always taken.
  The `beq` branch at 0xb4f4 targets 0xb2d4 and is always taken.
  The return at 0xb494 has v0 = ?.
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
  The `jalr` at 0xcf04 calls .text+38688 with a0=sp-48, a1=sym(.data)+6464, a2=0x0, a3=sym(mvpinterrupt+288).
  The `jalr` at 0xcf18 calls tile_mapout with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf20 calls tile_mapout with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf28 calls tile_mapout with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf50 calls tile_mapin with a0=[(a1 + ([a0+3039]:1 << 0x2))], a1=0x11, a2=sym(tile_mapin), a3=a3 at entry (arg3), a4=[a0+3042]:1.
  The `jalr` at 0xcf78 calls .text+38688 with a0=sp-48, a1=sym(.data)+6416, a2=0x1, a3=sym(mvpinterrupt+288).
  The `jalr` at 0xcf8c calls tile_mapout with a0=?, a1=?, a2=?, a3=?, a4=sym(tile_mapout).
  The `jalr` at 0xcfb4 calls tile_mapin with a0=[(a1 + ([a0+3039]:1 << 0x2))], a1=0x11, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[a0+3042]:1.
  The `jalr` at 0xcfd0 calls tile_mapin with a0=[(a1 + ([a0+3040]:1 << 0x2))], a1=0x11, a2=?, a3=?.
  The `jalr` at 0xcff4 calls .text+38688 with a0=sp-48, a1=sym(.data)+6432, a2=0x1, a3=sym(mvpinterrupt+288).
  The `jalr` at 0xd008 calls tile_mapout with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd010 calls tile_mapout with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd038 calls tile_mapin with a0=[(a1 + ([a0+3039]:1 << 0x2))], a1=0x11, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[a0+3042]:1.
  The `jalr` at 0xd054 calls tile_mapin with a0=[(a1 + ([a0+3040]:1 << 0x2))], a1=0x11, a2=?, a3=?.
  The `jalr` at 0xd078 calls .text+38688 with a0=sp-48, a1=sym(.data)+6448, a2=0x0, a3=sym(mvpinterrupt+288).
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
  The return at 0xce8c has v0 = one of 0x16, ret(.text+38688).
- `__start` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1005f6a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1005f6a0-0x1005f7ac (268 bytes).
  It occupies 268 bytes.
  3 such `lw` accesses load 4 bytes from table(0x266100) +0x0, including `lw` at 0x1005f6d4, `lw` at 0x1005f6f8, `lw` at 0x1005f77c.
  2 such `lw` accesses load 4 bytes from entry(0x266100) +0x0, including `lw` at 0x1005f6e0, `lw` at 0x1005f78c.
  The `sw` at 0x1005f6fc stores 4 bytes to entry(0x266100) +0x0.
  2 such `lw` accesses load 4 bytes from table(0x266670) +0x0, including `lw` at 0x1005f708, `lw` at 0x1005f774.
  The `sw` at 0x1005f714 stores 4 bytes to entry(0x266670) +0x0.
  2 such `lw` accesses load 4 bytes from table(0x26666c) +0x0, including `lw` at 0x1005f720, `lw` at 0x1005f778.
  The `sw` at 0x1005f728 stores 4 bytes to entry(0x26666c) +0x0.
  The `lw` at 0x1005f72c loads 4 bytes from table(0x26607c) +0x0.
  The `lw` at 0x1005f744 loads 4 bytes from table(0x266258) +0x0.
  The `lw` at 0x1005f764 loads 4 bytes from table(0x266054) +0x0.
  The `lw` at 0x1005f780 loads 4 bytes from entry(0x266670) +0x0.
  The `lw` at 0x1005f784 loads 4 bytes from entry(0x26666c) +0x0.
  The `lw` at 0x1005f798 loads 4 bytes from table(0x266104) +0x0.
  The `bal` at 0x1005f6b8 calls __start+32 [0x1005f6c0] with a0=?, a1=sp+4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1005f734 calls (unknown callee) with a0=?, a1=?, a2=?, a3=[entry(0x266100)].
  The `jalr` at 0x1005f748 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005f788 calls (unknown callee) with a0=[entry(0x266670)], a1=[entry(0x26666c)], a2=[entry(0x266100)], a3=?.
  The `jalr` at 0x1005f7a0 calls (unknown callee) with a0=ret(?), a1=?, a2=?, a3=?.
  The `bne` branch at 0x1005f6ec targets 0x1005f700, is taken when a3(=[entry(0x266100)]) != 0, and falls through when a3(=[entry(0x266100)]) == 0.
- `_mcount` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1005f7ac (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1005f7ac-0x1005f7b8 (12 bytes).
  It occupies 12 bytes.
  The return at 0x1005f7b0 has v0 = ?.
- `XkbInitNames..FBF` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1005f7c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1005f7c0-0x1005fa40 (640 bytes).
  It occupies 640 bytes.
  The `lw` at 0x1005f7c4 loads 4 bytes from a0 (arg0 at entry) +0x24.
  16 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1005f814, `lw` at 0x1005f818, `lw` at 0x1005f824.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc, including `lw` at 0x1005f864, `lw` at 0x1005f8d4.
  15 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1005f894, `sw` at 0x1005f8dc, `sw` at 0x1005f8e8.
  The `jal` at 0x1005f7dc calls SrvXkbAllocNames [0x100fe690] with a0=[a0+36], a1=0x3fff, a2=0x0, a3=0x0.
  The `jal` at 0x1005f808 calls MakeAtom [0x10238200] with a0=0x1029ae78, a1=0x7, a2=0x1, a3=ret(SrvXkbAllocNames).
  The `jal` at 0x1005f918 calls initIndicatorNames..ABF [0x1023bb10] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1005f960 calls MakeAtom [0x10238200] with a0=0x1028fed0, a1=0x7, a2=0x1, a3=?.
  The `jal` at 0x1005f984 calls MakeAtom [0x10238200] with a0=0x1029ae80, a1=0x7, a2=0x1, a3=?, a4=[a1+12].
  The `jal` at 0x1005f9a8 calls MakeAtom [0x10238200] with a0=0x1029adc0, a1=0x3, a2=0x1, a3=?.
  The `jal` at 0x1005f9cc calls MakeAtom [0x10238200] with a0=0x1029ae88, a1=0xa, a2=0x1, a3=?.
  The `jal` at 0x1005f9ec calls MakeAtom [0x10238200] with a0=0x1029ae20, a1=0x9, a2=0x1, a3=?.
  The `jal` at 0x1005fa0c calls MakeAtom [0x10238200] with a0=0x1029ae30, a1=0x8, a2=0x1, a3=?.
  The `jal` at 0x1005fa2c calls MakeAtom [0x10238200] with a0=0x1029ae60, a1=0xb, a2=0x1, a3=?.
  The `beq` branch at 0x1005f7e4 targets 0x1005f7f8, is taken when v0(=ret(SrvXkbAllocNames)) == 0, and falls through when v0(=ret(SrvXkbAllocNames)) != 0.
  The `beq` branch at 0x1005f81c targets 0x1005f8e0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1005f828 targets 0x1005f8ec, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1005f834 targets 0x1005f8f4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x1005f840 targets 0x1005f8fc, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x1005f84c targets 0x1005f904, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x1005f858 targets 0x1005f90c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x1005f86c targets 0x1005f8a8, is taken when (a4(=[a1+12]) & 0x40) == 0, and falls through when (a4(=[a1+12]) & 0x40) != 0.
  The `beq` branch at 0x1005f874 targets 0x1005f914, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x1005f87c targets 0x1005f914, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x1005f888 targets 0x1005f8d8, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1005f8ac targets 0x1005f974, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x1005f8b8 targets 0x1005f998, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x1005f8c4 targets 0x1005f9bc, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x1005f8d0 targets 0x1005f870 and is always taken.
  The `beq` branch at 0x1005f8d8 targets 0x1005f898 and is always taken.
  The `beq` branch at 0x1005f8e4 targets 0x1005f824 and is always taken.
  The `beq` branch at 0x1005f8ec targets 0x1005f830 and is always taken.
  The `beq` branch at 0x1005f8f4 targets 0x1005f83c and is always taken.
  The `beq` branch at 0x1005f8fc targets 0x1005f848 and is always taken.
  The `beq` branch at 0x1005f904 targets 0x1005f854 and is always taken.
  The `beq` branch at 0x1005f90c targets 0x1005f860 and is always taken.
  The `beq` branch at 0x1005f928 targets 0x1005f9e0, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x1005f934 targets 0x1005fa00, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x1005f940 targets 0x1005fa20, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `bne` branch at 0x1005f94c targets 0x1005f880, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x1005f96c targets 0x1005f880 and is always taken.
  The `beq` branch at 0x1005f990 targets 0x1005f8b4 and is always taken.
  The `beq` branch at 0x1005f9b4 targets 0x1005f8c0 and is always taken.
  The `beq` branch at 0x1005f9d8 targets 0x1005f8cc and is always taken.
  The `beq` branch at 0x1005f9f8 targets 0x1005f930 and is always taken.
  The `beq` branch at 0x1005fa18 targets 0x1005f93c and is always taken.
  The `beq` branch at 0x1005fa38 targets 0x1005f948 and is always taken.
  The return at 0x1005f7f0 has v0 = ret(SrvXkbAllocNames).
  The return at 0x1005f8a0 has v0 = 0x0.
- `ProcXineramaDestroyWindow` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1005fa40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1005fa40-0x1005fbac (364 bytes).
  It occupies 364 bytes.
  The `lw` at 0x1005fa48 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x1005fa60 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1005fa94 loads 4 bytes from [a0+8] +0x4.
  The `lw` at 0x1005fab0 loads 4 bytes from sym(XRT_WINDOW) +0x0.
  2 such `sw` accesses store 4 bytes to sym(panoramiXMode) +0x0, including `sw` at 0x1005fad0, `sw` at 0x1005fb8c.
  The `lw` at 0x1005fb10 loads 4 bytes from sym(ProcVector) +0x10.
  3 such `sw` accesses store 4 bytes to sym(panoramiXScreen0) +0x0, including `sw` at 0x1005fb20, `sw` at 0x1005fb44, `sw` at 0x1005fb48.
  The `lw` at 0x1005fb34 loads 4 bytes from ?.
  The `sw` at 0x1005fb3c stores 4 bytes to [a0+8] +0x4.
  The `jal` at 0x1005faac calls SecurityLookupIDByType [0x100d6140] with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=[sym(XRT_WINDOW)], a3=0x4.
  The `jalr` at 0x1005fb14 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1005fb4c calls XineramaDeliverVisibilityNotify [0x10197300] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1005fb6c calls XineramaDeliverExpose [0x100e7410] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1005fa68 targets 0x1005fa94, is taken when v1(=[a0+72]) == a1(=0x2), and falls through when v1(=[a0+72]) != a1(=0x2).
  The `beq` branch at 0x1005fac0 targets 0x1005fb90, is taken when v0(=ret(SecurityLookupIDByType)) == 0, and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  The `blez` branch at 0x1005faec targets 0x1005fba4, is taken when a3(=[0x102c5f1c]) <= 0 (signed), and falls through when a3(=[0x102c5f1c]) > 0 (signed).
  The `beq` branch at 0x1005fb00 targets 0x1005fb30 and is always taken.
  The `bne` branch at 0x1005fb24 targets 0x1005fb4c, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0x1005fb2c targets 0x1005fb48, is taken when s0(?) == s6(=ret(SecurityLookupIDByType)-8), and falls through when s0(?) != s6(=ret(SecurityLookupIDByType)-8).
  The `bne` branch at 0x1005fb38 targets 0x1005fb10, is taken when s4(=ret(SecurityLookupIDByType)) != s0(?), and falls through when s4(=ret(SecurityLookupIDByType)) == s0(?).
  The `beq` branch at 0x1005fb40 targets 0x1005fb10 and is always taken.
  The `beq` branch at 0x1005fb88 targets 0x1005fa84 and is always taken.
  The `beq` branch at 0x1005fb9c targets 0x1005fa84 and is always taken.
  The `beq` branch at 0x1005fba4 targets 0x1005fb4c and is always taken.
  The return at 0x1005fa7c has v0 = 0x10.
  The return at 0x1005fa8c has v0 = one of ?, 0x3.
  The instructions from 0x1005fb08 to 0x1005fb0c are not reached by any path from the entry, and their branches are not listed.
- `ProcXkbSetIndicatorMap` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1005fbb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1005fbb0-0x1006007c (1228 bytes).
  It occupies 1228 bytes.
  The `lw` at 0x1005fbb0 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x1005fbcc loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lhu` at 0x1005fbd0 loads 2 bytes from a0 (arg0 at entry) +0x5c.
  The `lhu` at 0x1005fbe0 loads 2 bytes from [a0+8] +0x4.
  The `lw` at 0x1005fbf0 loads 4 bytes from sym(inputInfo) +0xc.
  The `lbu` at 0x1005fbf4 loads 1 byte from [sym(inputInfo)+12] +0x4c.
  8 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1005fc08, `lw` at 0x1005fc14, `lw` at 0x1005fd98.
  4 such `lw` accesses load 4 bytes from [a0+8] +0x8, including `lw` at 0x1005fc20, `lw` at 0x1005fd8c, `lw` at 0x1005fdc0.
  The `lhu` at 0x1005fc84 loads 2 bytes from [a0+8] +0x2.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0x1005fcdc, `sw` at 0x1005fe54, `sw` at 0x10060044.
  The `lw` at 0x1005fcfc loads 4 bytes from sym(inputInfo) +0x10.
  The `lw` at 0x1005fd04 loads 4 bytes from sym(inputInfo) +0x4.
  The `lbu` at 0x1005fd10 loads 1 byte from [sym(inputInfo)+16] +0x4c.
  The `lbu` at 0x1005fd4c loads 1 byte from [sym(inputInfo)+4] +0x4c.
  2 such `lw` accesses load 4 bytes from sym(inputInfo) +0x8, including `lw` at 0x1005fda0, `lw` at 0x1005fe68.
  19 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1005fda4, `lbu` at 0x1005fde8, `lbu` at 0x1005fdec.
  The `lw` at 0x1005fddc loads 4 bytes from a0 (arg0 at entry) +0x10.
  13 such `sb` accesses store 1 byte to ?, including `sb` at 0x1005fe00, `sb` at 0x1005fe04, `sb` at 0x1005fe08.
  The `lbu` at 0x1005fe7c loads 1 byte from [sym(inputInfo)+8] +0x4c.
  9 such `lw` accesses load 4 bytes from ret(XkbFindSrvLedInfo) +0x24, including `lw` at 0x1005feb4, `lw` at 0x1005ff38, `lw` at 0x1005ff48.
  2 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x1005ff9c, `lhu` at 0x1005ffb8.
  The `sh` at 0x1005ffa4 stores 2 bytes to ?.
  The `sw` at 0x1005ffb4 stores 4 bytes to ?.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28, including `lw` at 0x10060020, `lw` at 0x10060058.
  The `jal` at 0x1005fd60 calls XkbFindSrvLedInfo [0x10242bc0] with a0=?, a1=0x300, a2=0x400, a3=0x8.
  The `jal` at 0x1006000c calls XkbApplyLedMapChanges [0x101123b0] with a0=?, a1=ret(XkbFindSrvLedInfo), a2=[[a0+8]+8], a3=0x0, a4=0x0, a5=sp-72, a6=[0x102cb278], a7=0xe.
  The `bne` branch at 0x1005fbc8 targets 0x1005fd24, is taken when at(=[a0+72]) < 0x3 (unsigned), and falls through when at(=[a0+72]) >= 0x3 (unsigned).
  The `beq` branch at 0x1005fbd8 targets 0x1005fe58, is taken when (v0(=[a0+92]:2) & 0x8000) == 0, and falls through when (v0(=[a0+92]:2) & 0x8000) != 0.
  The `beq` branch at 0x1005fbec targets 0x1005fc00, is taken when a1(=[[a0+8]+4]:2) == v1(=0x100), and falls through when a1(=[[a0+8]+4]:2) != v1(=0x100).
  The `bne` branch at 0x1005fbf8 targets 0x1005fcfc, is taken when a2(=[[sym(inputInfo)+12]+76]:1) != a1(=[[a0+8]+4]:2), and falls through when a2(=[[sym(inputInfo)+12]+76]:1) == a1(=[[a0+8]+4]:2).
  The `beq` branch at 0x1005fc00 targets 0x1005fcbc, is taken when a0(=[sym(inputInfo)+12]) == 0, and falls through when a0(=[sym(inputInfo)+12]) != 0.
  The `beq` branch at 0x1005fc0c targets 0x1005fd38, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1005fc18 targets 0x1005fd38, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1005fc24 targets 0x10060054, is taken when a2(=[[a0+8]+8]) == 0, and falls through when a2(=[[a0+8]+8]) != 0.
  The `beq` branch at 0x1005fc4c targets 0x1005fc58, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x1005fc58 targets 0x1005fc68, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x1005fc68 targets 0x1005fc40, is taken when a5(?) != s0(=0x20), and falls through when a5(?) == s0(=0x20).
  The `beq` branch at 0x1005fc90 targets 0x1005fd50, is taken when t2(=[[a0+8]+2]:2) == t3(?), and falls through when t2(=[[a0+8]+2]:2) != t3(?).
  The `bne` branch at 0x1005fcb8 targets 0x1005fc08, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x1005fd08 targets 0x1005fd18, is taken when a1(=[[a0+8]+4]:2) == at(=0x200), and falls through when a1(=[[a0+8]+4]:2) != at(=0x200).
  The `bne` branch at 0x1005fd14 targets 0x1005fd40, is taken when v1(=[[sym(inputInfo)+16]+76]:1) != a1(=[[a0+8]+4]:2), and falls through when v1(=[[sym(inputInfo)+16]+76]:1) == a1(=[[a0+8]+4]:2).
  The `beq` branch at 0x1005fd1c targets 0x1005fcb8 and is always taken.
  The `beq` branch at 0x1005fd38 targets 0x1005fcc0 and is always taken.
  The `beq` branch at 0x1005fd40 targets 0x1005fe68, is taken when a2(=[sym(inputInfo)+4]) == 0, and falls through when a2(=[sym(inputInfo)+4]) != 0.
  The `beq` branch at 0x1005fd48 targets 0x1005fda8 and is always taken.
  The `beq` branch at 0x1005fd6c targets 0x10060048, is taken when v0(=ret(XkbFindSrvLedInfo)) == 0, and falls through when v0(=ret(XkbFindSrvLedInfo)) != 0.
  The `beq` branch at 0x1005fd90 targets 0x1006005c and is always taken.
  The `beq` branch at 0x1005fd9c targets 0x1005fe6c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x1005fda8 targets 0x1005fd98, is taken when a2(?) != v0(?), and falls through when a2(?) == v0(?).
  The `bne` branch at 0x1005fdb0 targets 0x1005fcb8, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x1005fdb8 targets 0x1005fcb4 and is always taken.
  The `beq` branch at 0x1005fdcc targets 0x1005fea0, is taken when a7(?) == s0(=0x20), and falls through when a7(?) != s0(=0x20).
  The `beq` branch at 0x1005fdd4 targets 0x1005fdc4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1005fde0 targets 0x1005fe18, is taken when a4(=[a0+16]) == 0, and falls through when a4(=[a0+16]) != 0.
  The `bne` branch at 0x1005fe28 targets 0x10060024, is taken when (t3(=-0xf) & t0(?)) != 0, and falls through when (t3(=-0xf) & t0(?)) == 0.
  The `beq` branch at 0x1005fe30 targets 0x1005fdc0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1005fe50 targets 0x1005fcec and is always taken.
  The `beq` branch at 0x1005fe6c targets 0x1005fcac, is taken when a7(=[sym(inputInfo)+8]) == 0, and falls through when a7(=[sym(inputInfo)+8]) != 0.
  The `beq` branch at 0x1005fe78 targets 0x1005fe90 and is always taken.
  The `beq` branch at 0x1005fe84 targets 0x1005fcac, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x1005fe90 targets 0x1005fe80, is taken when t0(?) != v0(?), and falls through when t0(?) == v0(?).
  The `beq` branch at 0x1005fe98 targets 0x1005fdb0 and is always taken.
  The `beq` branch at 0x1005fea4 targets 0x1006006c and is always taken.
  The `beq` branch at 0x1005fec0 targets 0x1005fed8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1005fed8 targets 0x1005fef0, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x1005ff00 targets 0x1005fec0, is taken when a2(?) != t2(=0x10), and falls through when a2(?) == t2(=0x10).
  The `beq` branch at 0x1005ff24 targets 0x1005ffe0, is taken when t8(?) == s0(=0x20), and falls through when t8(?) != s0(=0x20).
  The `beq` branch at 0x1005ff30 targets 0x1005ff1c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x1005ffd0 targets 0x1005feac, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x1005ffd8 targets 0x1005ff18 and is always taken.
  The `beq` branch at 0x1006001c targets 0x1005fcec and is always taken.
  The `beq` branch at 0x10060040 targets 0x1005fcec and is always taken.
  The `beq` branch at 0x1006004c targets 0x1005fcec and is always taken.
  The `beq` branch at 0x10060054 targets 0x1005fcec and is always taken.
  The `beq` branch at 0x10060064 targets 0x1005fdd4 and is always taken.
  The `beq` branch at 0x10060074 targets 0x1005ff30 and is always taken.
  The return at 0x1005fca4 has v0 = 0x10.
  The return at 0x1005fce4 has v0 = [0x102cb28c].
  The return at 0x1005fcf4 has v0 = one of 0x2, [a0+40], 0xb.
  The return at 0x1005fd30 has v0 = 0x10.
  The return at 0x1005fe60 has v0 = 0xa.
- `QueryColors` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10060080 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10060080-0x100605f4 (1396 bytes).
  It occupies 1396 bytes.
  The `lh` at 0x10060088 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x100600a4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  4 such `lhu` accesses load 2 bytes from [a0] +0x8, including `lhu` at 0x100600c4, `lhu` at 0x10060130, `lhu` at 0x10060184.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0x100600c8, `lw` at 0x100602b8.
  15 such `sw` accesses store 4 bytes to abs 0x102c60e8 (clientErrorValue), including `sw` at 0x100600e4, `sw` at 0x100601a0, `sw` at 0x10060200.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38, including `lw` at 0x100600e8, `lw` at 0x10060140, `lw` at 0x100601a4.
  The `lw` at 0x100600f8 loads 4 bytes from ([a0+56] + ((([a2] << 0x2) + [a2]) << 0x2)) +0x10.
  The `lw` at 0x10060100 loads 4 bytes from ([a0+56] + ((([a2] << 0x2) + [a2]) << 0x2)) +0x0.
  The `lhu` at 0x10060104 loads 2 bytes from [([a0+56] + ((([a2] << 0x2) + [a2]) << 0x2))] +0x0.
  3 such `sh` accesses store 2 bytes to a3 (arg3 at entry) +0x0, including `sh` at 0x10060108, `sh` at 0x100604ec, `sh` at 0x1006054c.
  The `lw` at 0x1006010c loads 4 bytes from ([a0+56] + ((([a2] << 0x2) + [a2]) << 0x2)) +0x4.
  The `lhu` at 0x10060110 loads 2 bytes from [([a0+56] + ((([a2] << 0x2) + [a2]) << 0x2))+4] +0x0.
  3 such `sh` accesses store 2 bytes to a3 (arg3 at entry) +0x2, including `sh` at 0x10060114, `sh` at 0x100604f4, `sh` at 0x100605a0.
  The `lw` at 0x10060118 loads 4 bytes from ([a0+56] + ((([a2] << 0x2) + [a2]) << 0x2)) +0x8.
  The `lhu` at 0x1006011c loads 2 bytes from [([a0+56] + ((([a2] << 0x2) + [a2]) << 0x2))+8] +0x0.
  3 such `sh` accesses store 2 bytes to a3 (arg3 at entry) +0x4, including `sh` at 0x10060120, `sh` at 0x10060500, `sh` at 0x100605f0.
  12 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10060150, `lw` at 0x10060158, `lw` at 0x10060164.
  21 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x1006015c, `lhu` at 0x10060168, `lhu` at 0x10060174.
  18 such `sh` accesses store 2 bytes to ?, including `sh` at 0x10060160, `sh` at 0x1006016c, `sh` at 0x10060178.
  3 such `lw` accesses load 4 bytes from [a0] +0xc, including `lw` at 0x10060240, `lw` at 0x10060328, `lw` at 0x10060350.
  4 such `lw` accesses load 4 bytes from [a0] +0x1c, including `lw` at 0x10060248, `lw` at 0x10060394, `lw` at 0x100603e0.
  4 such `lw` accesses load 4 bytes from [a0] +0x10, including `lw` at 0x10060254, `lw` at 0x10060390, `lw` at 0x100603dc.
  3 such `lw` accesses load 4 bytes from [a0] +0x18, including `lw` at 0x10060258, `lw` at 0x1006032c, `lw` at 0x10060354.
  4 such `lw` accesses load 4 bytes from [a0] +0x20, including `lw` at 0x1006025c, `lw` at 0x10060430, `lw` at 0x10060480.
  4 such `lw` accesses load 4 bytes from [a0] +0x14, including `lw` at 0x10060268, `lw` at 0x1006042c, `lw` at 0x1006047c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x3c, including `lw` at 0x100603a0, `lw` at 0x100603ec, `lw` at 0x1006058c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x10060444, `lw` at 0x10060494, `lw` at 0x100605d4.
  The `lhu` at 0x100604e8 loads 2 bytes from ([a0+56] + ((([a2] << 0x2) + [a2]) << 0x2)) +0x0.
  The `lhu` at 0x100604f0 loads 2 bytes from ([a0+56] + ((([a2] << 0x2) + [a2]) << 0x2)) +0x2.
  The `lhu` at 0x100604f8 loads 2 bytes from ([a0+56] + ((([a2] << 0x2) + [a2]) << 0x2)) +0x4.
  The `beq` branch at 0x100600a8 targets 0x1006023c, is taken when a4(=([a0+4]:2 | 0x1)) == a5(=0x5), and falls through when a4(=([a0+4]:2 | 0x1)) != a5(=0x5).
  The `bne` branch at 0x100600b0 targets 0x10060504, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x100600bc targets 0x10060128, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x100600d4 targets 0x100600e8, is taken when t0(=[a2]) < a5(=[[a0]+8]:2) (unsigned), and falls through when t0(=[a2]) >= a5(=[[a0]+8]:2) (unsigned).
  The `beq` branch at 0x100600e0 targets 0x10060124 and is always taken.
  The `beq` branch at 0x100600fc targets 0x100604e8, is taken when a6(=[([a0+56] + ((([a2] << 0x2) + [a2]) << 0x2))+16]) == 0, and falls through when a6(=[([a0+56] + ((([a2] << 0x2) + [a2]) << 0x2))+16]) != 0.
  The `bnel` branch at 0x1006012c targets 0x10060188, is taken when t3(?) != 0, and falls through when t3(?) == 0; its branch-likely delay slot `lhu t3,8(t1)` at 0x10060130 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x10060154 targets 0x10060204, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x1006017c targets 0x10060134, is taken when a7(?) == t2(=((a1 << 0x2) + a2)), and falls through when a7(?) != t2(=((a1 << 0x2) + a2)).
  The `bne` branch at 0x10060190 targets 0x100601a4, is taken when t0(?) < t3(=[[a0]+8]:2) (unsigned), and falls through when t0(?) >= t3(=[[a0]+8]:2) (unsigned).
  The `beq` branch at 0x1006019c targets 0x100601e0 and is always taken.
  The `beq` branch at 0x100601b8 targets 0x10060220, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x100601f0 targets 0x10060140, is taken when t0(?) < t3(=[[a0]+8]:2) (unsigned), and falls through when t0(?) >= t3(=[[a0]+8]:2) (unsigned).
  The `beq` branch at 0x100601fc targets 0x1006017c and is always taken.
  The `beq` branch at 0x10060218 targets 0x1006017c and is always taken.
  The `beq` branch at 0x10060234 targets 0x100601e0 and is always taken.
  The `bne` branch at 0x1006028c targets 0x10060580, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x100602ac targets 0x100602d8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x100602c4 targets 0x1006050c, is taken when (t8(?) & a7(=[a2])) == 0, and falls through when (t8(?) & a7(=[a2])) != 0.
  The `bne` branch at 0x100602dc targets 0x10060300, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x100602e4 targets 0x10060134 and is always taken.
  The `beq` branch at 0x100602f8 targets 0x100602e4, is taken when t0(?) == t2(=((a1 << 0x2) + a2)), and falls through when t0(?) != t2(=((a1 << 0x2) + a2)).
  The `beq` branch at 0x10060308 targets 0x10060350, is taken when (t8(?) & a7(?)) == 0, and falls through when (t8(?) & a7(?)) != 0.
  The `bne` branch at 0x10060320 targets 0x100602f0, is taken when (t8(?) & a7(?)) != 0, and falls through when (t8(?) & a7(?)) == 0.
  The `bne` branch at 0x1006033c targets 0x100603c4, is taken when a2(?) < t9(?) (unsigned), and falls through when a2(?) >= t9(?) (unsigned).
  The `beq` branch at 0x10060348 targets 0x100602f8 and is always taken.
  The `bne` branch at 0x10060364 targets 0x10060378, is taken when a2(?) < t9(?) (unsigned), and falls through when a2(?) >= t9(?) (unsigned).
  The `beq` branch at 0x10060370 targets 0x10060318 and is always taken.
  The `bne` branch at 0x100603b0 targets 0x10060410, is taken when ra(?) < a3(?) (unsigned), and falls through when ra(?) >= a3(?) (unsigned).
  The `beq` branch at 0x100603bc targets 0x10060318 and is always taken.
  The `bne` branch at 0x100603fc targets 0x10060460, is taken when ra(?) < a3(?) (unsigned), and falls through when ra(?) >= a3(?) (unsigned).
  The `beq` branch at 0x10060408 targets 0x100602f8 and is always taken.
  The `bne` branch at 0x1006044c targets 0x100604b0, is taken when a2(?) < a5(?) (unsigned), and falls through when a2(?) >= a5(?) (unsigned).
  The `beq` branch at 0x10060458 targets 0x10060318 and is always taken.
  The `bne` branch at 0x1006049c targets 0x100604cc, is taken when a2(?) < a6(?) (unsigned), and falls through when a2(?) >= a6(?) (unsigned).
  The `beq` branch at 0x100604a8 targets 0x100602f8 and is always taken.
  The `beq` branch at 0x100604c4 targets 0x10060318 and is always taken.
  The `beq` branch at 0x100604e0 targets 0x100602f8 and is always taken.
  The `beq` branch at 0x100604fc targets 0x10060124 and is always taken.
  The `bne` branch at 0x10060520 targets 0x10060534, is taken when a2(?) < t9(?) (unsigned), and falls through when a2(?) >= t9(?) (unsigned).
  The `beq` branch at 0x1006052c targets 0x100602d4 and is always taken.
  The `bne` branch at 0x10060568 targets 0x1006058c, is taken when ra(?) < a4(?) (unsigned), and falls through when ra(?) >= a4(?) (unsigned).
  The `beq` branch at 0x10060578 targets 0x100602d4 and is always taken.
  The `bne` branch at 0x100605bc targets 0x100605d0, is taken when a2(?) < a5(?) (unsigned), and falls through when a2(?) >= a5(?) (unsigned).
  The `beq` branch at 0x100605c8 targets 0x100602d4 and is always taken.
  The `beq` branch at 0x100605ec targets 0x100602d4 and is always taken.
  The return at 0x10060134 has v0 = one of 0x0, 0x2.
  The return at 0x10060504 has v0 = 0x0.
  The return at 0x10060584 has v0 = 0x0.
  The instructions from 0x1006013c to 0x1006013c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x100602ec to 0x100602ec are not reached by any path from the entry, and their branches are not listed.
- `XETSwChangePointerControl` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10060600 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10060600-0x10060644 (68 bytes).
  It occupies 68 bytes.
  The `lbu` at 0x10060600 loads 1 byte from a0 (arg0 at entry) +0x3.
  The `lbu` at 0x10060604 loads 1 byte from a0 (arg0 at entry) +0x2.
  The `lbu` at 0x10060608 loads 1 byte from a0 (arg0 at entry) +0x5.
  The `lbu` at 0x1006060c loads 1 byte from a0 (arg0 at entry) +0x4.
  The `lbu` at 0x10060610 loads 1 byte from a0 (arg0 at entry) +0x7.
  The `lbu` at 0x10060614 loads 1 byte from a0 (arg0 at entry) +0x6.
  The `lbu` at 0x10060618 loads 1 byte from a0 (arg0 at entry) +0x9.
  The `lbu` at 0x1006061c loads 1 byte from a0 (arg0 at entry) +0x8.
  The `sb` at 0x10060620 stores 1 byte to a0 (arg0 at entry) +0x9.
  The `sb` at 0x10060624 stores 1 byte to a0 (arg0 at entry) +0x8.
  The `sb` at 0x10060628 stores 1 byte to a0 (arg0 at entry) +0x7.
  The `sb` at 0x1006062c stores 1 byte to a0 (arg0 at entry) +0x6.
  The `sb` at 0x10060630 stores 1 byte to a0 (arg0 at entry) +0x5.
  The `sb` at 0x10060634 stores 1 byte to a0 (arg0 at entry) +0x4.
  The `sb` at 0x10060638 stores 1 byte to a0 (arg0 at entry) +0x3.
  The `sb` at 0x10060640 stores 1 byte to a0 (arg0 at entry) +0x2.
  The return at 0x1006063c has v0 = [a0+2]:1.
- `processShmiq..FFC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10060650 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10060650-0x10060720 (208 bytes).
  It occupies 208 bytes.
  The `lbu` at 0x10060654 loads 1 byte from a0 (arg0 at entry) +0x6.
  The `lw` at 0x100606a0 loads 4 bytes from a1 (arg1 at entry) +0x64.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x100606ac, `lw` at 0x10060700.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x5, including `lbu` at 0x100606bc, `lbu` at 0x10060710.
  The `lw` at 0x100606d0 loads 4 bytes from ?.
  The `lw` at 0x100606f4 loads 4 bytes from a1 (arg1 at entry) +0x60.
  The `jal` at 0x10060690 calls ErrorF [0x10094ec0] with a0=0x102974b8, a1=[a0+6]:1, a2=a2 at entry (arg2), a3=a1+88, a4=[a0+6]:1, a5=0x2, a6=0x1.
  The `jalr` at 0x100606dc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=0x1.
  The `beq` branch at 0x10060670 targets 0x100606c8, is taken when a4(=[a0+6]:1) == 0, and falls through when a4(=[a0+6]:1) != 0.
  The `beq` branch at 0x10060678 targets 0x100606f4, is taken when a4(=[a0+6]:1) == a5(=0x2), and falls through when a4(=[a0+6]:1) != a5(=0x2).
  The `beq` branch at 0x10060680 targets 0x100606a0, is taken when a4(=[a0+6]:1) == a6(=0x1), and falls through when a4(=[a0+6]:1) != a6(=0x1).
  The `beq` branch at 0x10060698 targets 0x100606e8 and is always taken.
  The `beq` branch at 0x100606a4 targets 0x100606e4, is taken when a4(=[a1+100]) == 0, and falls through when a4(=[a1+100]) != 0.
  The `beq` branch at 0x100606b4 targets 0x100606c8, is taken when (a2(=[a1]) & 0x20) == 0, and falls through when (a2(=[a1]) & 0x20) != 0.
  The `beq` branch at 0x100606c8 targets 0x100606e8, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x100606d4 targets 0x100606e8, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x100606f8 targets 0x100606e4, is taken when a4(=[a1+96]) == 0, and falls through when a4(=[a1+96]) != 0.
  The `beq` branch at 0x10060708 targets 0x100606c8, is taken when (a5(=[a1]) & 0x10) == 0, and falls through when (a5(=[a1]) & 0x10) != 0.
  The `beq` branch at 0x10060718 targets 0x100606c8 and is always taken.
  The return at 0x100606ec has v0 = one of ret(ErrorF), ?.
- `XvdiPutVideo` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10060720 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10060720-0x10060870 (336 bytes).
  It occupies 336 bytes.
  The `lw` at 0x10060764 loads 4 bytes from a2 (arg2 at entry) +0x18.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lw` at 0x1006076c, `lw` at 0x100607d0.
  The `lw` at 0x100607a8 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lw` at 0x100607b0 loads 4 bytes from [a2+4] +0x30.
  The `lw` at 0x100607f4 loads 4 bytes from sym(currentTime) +0x0.
  The `lw` at 0x100607f8 loads 4 bytes from sym(currentTime) +0x4.
  The `sw` at 0x100607fc stores 4 bytes to a2 (arg2 at entry) +0x20.
  The `sw` at 0x10060804 stores 4 bytes to a2 (arg2 at entry) +0x24.
  The `sw` at 0x10060830 stores 4 bytes to a2 (arg2 at entry) +0x10.
  The `jal` at 0x1006075c calls UpdateCurrentTime [0x10064a10] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100607c8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1006081c calls XvdiSendVideoNotify [0x101a7330] with a0=a2 at entry (arg2), a1=[a2+12], a2=0x3, a3=a3 at entry (arg3).
  The `jal` at 0x10060834 calls XvdiSendVideoNotify [0x101a7330] with a0=a2 at entry (arg2), a1=[a2+12], a2=0x0, a3=?.
  The `jal` at 0x1006084c calls XvdiSendVideoNotify [0x101a7330] with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=0x2, a3=?.
  The `beq` branch at 0x10060768 targets 0x10060778, is taken when a0(=[a2+24]) == 0, and falls through when a0(=[a2+24]) != 0.
  The `bne` branch at 0x10060770 targets 0x10060844, is taken when a0(=[a2+24]) != s3(=a0), and falls through when a0(=[a2+24]) == s3(=a0).
  The `beq` branch at 0x10060778 targets 0x10060788, is taken when s1(=[a2+12]) == 0, and falls through when s1(=[a2+12]) != 0.
  The `bne` branch at 0x10060780 targets 0x10060814, is taken when s1(=[a2+12]) != s2(=a1), and falls through when s1(=[a2+12]) == s2(=a1).
  The `beq` branch at 0x100607d4 targets 0x100607e0, is taken when a1(=[a2+12]) == 0, and falls through when a1(=[a2+12]) != 0.
  The `bne` branch at 0x100607dc targets 0x1006082c, is taken when s1(=[a2+12]) != s2(=a1), and falls through when s1(=[a2+12]) == s2(=a1).
  The `beq` branch at 0x10060824 targets 0x10060788 and is always taken.
  The `beq` branch at 0x1006083c targets 0x100607e4 and is always taken.
  The return at 0x1006080c has v0 = 0x0.
  The return at 0x10060868 has v0 = 0x0.
- `SProcCreatePixmap` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10060870 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10060870-0x10060934 (196 bytes).
  It occupies 196 bytes.
  The `lw` at 0x10060870 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lbu` at 0x10060874 loads 1 byte from [a0+8] +0x3.
  The `lbu` at 0x10060878 loads 1 byte from [a0+8] +0x2.
  The `sb` at 0x1006087c stores 1 byte to [a0+8] +0x3.
  The `sb` at 0x10060880 stores 1 byte to [a0+8] +0x2.
  The `lw` at 0x10060884 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lbu` at 0x100608b0 loads 1 byte from [a0+8] +0x7.
  The `lbu` at 0x100608b4 loads 1 byte from [a0+8] +0x4.
  The `lbu` at 0x100608b8 loads 1 byte from [a0+8] +0x6.
  The `lbu` at 0x100608bc loads 1 byte from [a0+8] +0x5.
  The `lbu` at 0x100608c0 loads 1 byte from [a0+8] +0xb.
  The `lbu` at 0x100608c4 loads 1 byte from [a0+8] +0x8.
  The `lbu` at 0x100608c8 loads 1 byte from [a0+8] +0xa.
  The `lbu` at 0x100608cc loads 1 byte from [a0+8] +0x9.
  The `lbu` at 0x100608d0 loads 1 byte from [a0+8] +0xd.
  The `lbu` at 0x100608d4 loads 1 byte from [a0+8] +0xc.
  The `lbu` at 0x100608d8 loads 1 byte from [a0+8] +0xf.
  The `lbu` at 0x100608e0 loads 1 byte from [a0+8] +0xe.
  The `sb` at 0x100608e4 stores 1 byte to [a0+8] +0xf.
  The `sb` at 0x100608e8 stores 1 byte to [a0+8] +0xe.
  The `sb` at 0x100608ec stores 1 byte to [a0+8] +0xd.
  The `sb` at 0x100608f0 stores 1 byte to [a0+8] +0xc.
  The `sb` at 0x100608f4 stores 1 byte to [a0+8] +0xa.
  The `sb` at 0x100608f8 stores 1 byte to [a0+8] +0x9.
  The `sb` at 0x100608fc stores 1 byte to [a0+8] +0xb.
  The `sb` at 0x10060900 stores 1 byte to [a0+8] +0x8.
  The `sb` at 0x10060904 stores 1 byte to [a0+8] +0x6.
  The `sb` at 0x10060908 stores 1 byte to [a0+8] +0x5.
  The `sb` at 0x1006090c stores 1 byte to [a0+8] +0x7.
  The `sb` at 0x10060914 stores 1 byte to [a0+8] +0x4.
  The `lw` at 0x10060918 loads 4 bytes from sym(ProcVector) +0xd4.
  The `jalr` at 0x1006091c calls (unknown callee) with a0=a0 at entry (arg0), a1=[[a0+8]+9]:1, a2=[[a0+8]+10]:1, a3=[a0+8], a4=[[a0+8]+8]:1, a5=[[a0+8]+11]:1, a6=[[a0+8]+5]:1, a7=[[a0+8]+6]:1.
  The `beq` branch at 0x1006089c targets 0x100608b0, is taken when v1(=[a0+72]) == a1(=0x4), and falls through when v1(=[a0+72]) != a1(=0x4).
  The return at 0x100608a8 has v0 = 0x10.
  The return at 0x1006092c has v0 = ret(?).
- `ProcXineramaUnmapSubwindows` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10060940 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10060940-0x10060a90 (336 bytes).
  It occupies 336 bytes.
  The `lw` at 0x10060940 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x10060948 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x1006099c loads 4 bytes from [a0+8] +0x4.
  The `lw` at 0x100609a8 loads 4 bytes from sym(XRT_WINDOW) +0x0.
  2 such `sw` accesses store 4 bytes to sym(panoramiXMode) +0x0, including `sw` at 0x100609d0, `sw` at 0x10060a6c.
  The `lw` at 0x10060a00 loads 4 bytes from ?.
  The `sw` at 0x10060a0c stores 4 bytes to ?.
  3 such `sw` accesses store 4 bytes to sym(panoramiXScreen0) +0x0, including `sw` at 0x10060a10, `sw` at 0x10060a3c, `sw` at 0x10060a80.
  The `lw` at 0x10060a18 loads 4 bytes from sym(ProcVector) +0x2c.
  The `jal` at 0x100609a4 calls SecurityLookupIDByType [0x100d6140] with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=[sym(XRT_WINDOW)], a3=0x1.
  The `jalr` at 0x10060a1c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=sym(panoramiXScreen0).
  The `jal` at 0x10060a48 calls XineramaDeliverVisibilityNotify [0x10197300] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10060a50 calls XineramaDeliverExpose [0x100e7410] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10060964 targets 0x10060988, is taken when v1(=[a0+72]) == a1(=0x2), and falls through when v1(=[a0+72]) != a1(=0x2).
  The `beq` branch at 0x100609bc targets 0x10060a70, is taken when v0(=ret(SecurityLookupIDByType)) == 0, and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  The `blez` branch at 0x100609cc targets 0x10060a84, is taken when a5(=[0x102c5f1c]) <= 0 (signed), and falls through when a5(=[0x102c5f1c]) > 0 (signed).
  The `beq` branch at 0x100609d8 targets 0x100609f0 and is always taken.
  The `beq` branch at 0x100609e8 targets 0x10060a7c, is taken when a4(?) >= a2(=[0x102c5f1c]) (signed), and falls through when a4(?) < a2(=[0x102c5f1c]) (signed).
  The `bne` branch at 0x10060a08 targets 0x10060a14, is taken when a6(?) != a5(?), and falls through when a6(?) == a5(?).
  The `beq` branch at 0x10060a40 targets 0x100609e0, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x10060a68 targets 0x10060978 and is always taken.
  The `beq` branch at 0x10060a74 targets 0x1006097c and is always taken.
  The `beq` branch at 0x10060a7c targets 0x10060a48 and is always taken.
  The `beq` branch at 0x10060a88 targets 0x10060a48 and is always taken.
  The return at 0x10060970 has v0 = 0x10.
  The return at 0x10060980 has v0 = one of ?, 0x3.
- `XkbSendActionMessage` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10060a90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10060a90-0x10060fb8 (1320 bytes).
  It occupies 1320 bytes.
  The `lw` at 0x10060aa8 loads 4 bytes from a0 (arg0 at entry) +0xbc.
  The `lw` at 0x10060ab4 loads 4 bytes from a0 (arg0 at entry) +0x90.
  The `lw` at 0x10060acc loads 4 bytes from [a0+144] +0x158.
  The `lbu` at 0x10060ae4 loads 1 byte from [[a0+144]+344] +0x18.
  The `sb` at 0x10060ae8 stores 1 byte to a1 (arg1 at entry) +0xc.
  The `lbu` at 0x10060aec loads 1 byte from [[a0+144]+344] +0x12.
  The `sb` at 0x10060af4 stores 1 byte to a1 (arg1 at entry) +0xd.
  29 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10060b10, `lw` at 0x10060b1c, `lw` at 0x10060b20.
  The `lhu` at 0x10060b30 loads 2 bytes from ?.
  The `lbu` at 0x10060b44 loads 1 byte from ?.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x4, including `sw` at 0x10060b5c, `sw` at 0x10060d78.
  2 such `sh` accesses store 2 bytes to a1 (arg1 at entry) +0x2, including `sh` at 0x10060b60, `sh` at 0x10060d5c.
  The `sb` at 0x10060b88 stores 1 byte to a1 (arg1 at entry) +0x5.
  The `sb` at 0x10060b8c stores 1 byte to a1 (arg1 at entry) +0x2.
  The `sb` at 0x10060b90 stores 1 byte to a1 (arg1 at entry) +0x3.
  The `sb` at 0x10060b94 stores 1 byte to a1 (arg1 at entry) +0x4.
  The `sb` at 0x10060b9c stores 1 byte to a1 (arg1 at entry) +0x7.
  The `sb` at 0x10060ba8 stores 1 byte to a1 (arg1 at entry) +0x6.
  The `lw` at 0x10060bcc loads 4 bytes from [0x102c727c] +0x0.
  6 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10060be0, `sw` at 0x10060c30, `sw` at 0x10060ddc.
  The `lw` at 0x10060c04 loads 4 bytes from abs 0x10291a20 (padlength..10).
  2 such `lw` accesses load 4 bytes from [0x102c7268] +0x8, including `lw` at 0x10060c60, `lw` at 0x10060f00.
  The `lw` at 0x10060cd8 loads 4 bytes from table(0x102c6750) +0x0.
  2 such `sw` accesses store 4 bytes to table(0x102c6750) +0x0, including `sw` at 0x10060cf0, `sw` at 0x10060da8.
  The `sb` at 0x10060d38 stores 1 byte to a1 (arg1 at entry) +0x1.
  The `sb` at 0x10060d44 stores 1 byte to a1 (arg1 at entry) +0x0.
  The `lbu` at 0x10060d48 loads 1 byte from a0 (arg0 at entry) +0x4c.
  The `sb` at 0x10060d4c stores 1 byte to a1 (arg1 at entry) +0x8.
  The `lbu` at 0x10060e78 loads 1 byte from a1 (arg1 at entry) +0x0.
  The `lw` at 0x10060e90 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `jalr` at 0x10060c70 calls (unknown callee) with a0=?, a1=sp-152, a2=?, a3=?, a4=0x0, a6=[0x102c7268].
  The `jalr` at 0x10060d1c calls (unknown callee) with a0=?, a1=?, a2=a1 at entry (arg1), a3=0x20.
  The `jalr` at 0x10060d60 calls times with a0=sp-168, a1=?, a2=?, a3=?, a4=0x0, a6=0x0.
  The `jalr` at 0x10060db4 calls memmove with a0=?, a1=a1 at entry (arg1), a2=0x20, a3=0x1, a6=table(0x102c5d40).
  The `jal` at 0x10060dec calls AllocateOutputBuffer [0x100c1f40] with a0=?, a1=?, a2=[0x102c727c], a3=?, a4=[0x102c727c].
  The `jalr` at 0x10060f10 calls (unknown callee) with a0=?, a1=sp-152, a2=?, a3=?, a4=0x0, a6=[0x102c7268].
  The `jal` at 0x10060f38 calls sgiCheckCloneBuffer..NM [0x1011fef0] with a0=?, a1=?, a2=ret(AllocateOutputBuffer), a3=?.
  The `jalr` at 0x10060f64 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10060f7c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10060f84 calls _XSERVTransFreeConnInfo [0x100d3a20] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10060ac8 targets 0x10060be4, is taken when s0(=[a0+188]) == 0, and falls through when s0(=[a0+188]) != 0.
  The `beq` branch at 0x10060af0 targets 0x10060b1c and is always taken.
  The `beq` branch at 0x10060af8 targets 0x10060bfc, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x10060b14 targets 0x10060be4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x10060b24 targets 0x10060b10, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x10060b34 targets 0x10060b10, is taken when a2(?) == s3(=0x102cc150), and falls through when a2(?) != s3(=0x102cc150).
  The `beq` branch at 0x10060b3c targets 0x10060b10, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10060b48 targets 0x10060b10, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x10060b50 targets 0x10060d30, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x10060b80 targets 0x10060bb0, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x10060bbc targets 0x10060af8, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x10060bc4 targets 0x10060de0, is taken when a4(=[0x102c727c]) == 0, and falls through when a4(=[0x102c727c]) != 0.
  The `bne` branch at 0x10060bd4 targets 0x10060af8, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x10060bdc targets 0x10060af8 and is always taken.
  The `beq` branch at 0x10060c08 targets 0x10060c90, is taken when t8(=[0x102c7268]) == 0, and falls through when t8(=[0x102c7268]) != 0.
  The `beq` branch at 0x10060c28 targets 0x10060e68, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x10060c3c targets 0x10060c90, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x10060c48 targets 0x10060c90, is taken when a6(=[0x102c7268]) == 0, and falls through when a6(=[0x102c7268]) != 0.
  The `beq` branch at 0x10060cdc targets 0x10060d88, is taken when t9(?) >= at(?) (signed), and falls through when t9(?) < at(?) (signed).
  The `beq` branch at 0x10060d00 targets 0x10060e14, is taken when at(=[0x102c6750]:8) == 0, and falls through when at(=[0x102c6750]:8) != 0.
  The `beq` branch at 0x10060d28 targets 0x10060b00 and is always taken.
  The `beq` branch at 0x10060d80 targets 0x10060b58 and is always taken.
  The `beq` branch at 0x10060dd8 targets 0x10060b00 and is always taken.
  The `beq` branch at 0x10060e04 targets 0x10060f34, is taken when v0(=ret(AllocateOutputBuffer)) == 0, and falls through when v0(=ret(AllocateOutputBuffer)) != 0.
  The `beq` branch at 0x10060e0c targets 0x10060bd4 and is always taken.
  The `bne` branch at 0x10060e24 targets 0x10060d08, is taken when a4(=[0x102c6758]:8) != 0, and falls through when a4(=[0x102c6758]:8) == 0.
  The `bne` branch at 0x10060e3c targets 0x10060d08, is taken when a6(=[0x102c6760]:8) != 0, and falls through when a6(=[0x102c6760]:8) == 0.
  The `bne` branch at 0x10060e54 targets 0x10060d08, is taken when t1(=[0x102c6768]:8) != 0, and falls through when t1(=[0x102c6768]:8) == 0.
  The `beq` branch at 0x10060e60 targets 0x10060d08 and is always taken.
  The `bne` branch at 0x10060e70 targets 0x10060c90, is taken when t2(?) != t3(=0x2), and falls through when t2(?) == t3(=0x2).
  The `bne` branch at 0x10060e80 targets 0x10060c90, is taken when t8(=0x1) != t9(=[a1]:1), and falls through when t8(=0x1) == t9(=[a1]:1).
  The `beq` branch at 0x10060e8c targets 0x10060ec4, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x10060edc targets 0x10060c90, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x10060ee8 targets 0x10060c90, is taken when a6(=[0x102c7268]) == 0, and falls through when a6(=[0x102c7268]) != 0.
  The `beq` branch at 0x10060f2c targets 0x10060c90 and is always taken.
  The `beq` branch at 0x10060f54 targets 0x10060fa4, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x10060fb0 targets 0x10060e0c and is always taken.
  The return at 0x10060bf4 has v0 = ?.
- `ProcPanoramiXShmGetImage..PEE` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10060fc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10060fc0-0x10062088 (4296 bytes).
  It occupies 4296 bytes.
  The `lw` at 0x10060fc0 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x10060fd0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lbu` at 0x10060ff0 loads 1 byte from [a0+8] +0x14.
  5 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0x10061028, `sw` at 0x100612b0, `sw` at 0x100612dc.
  The `lw` at 0x1006103c loads 4 bytes from [a0+8] +0x4.
  The `lw` at 0x10061048 loads 4 bytes from sym(XRC_DRAWABLE) +0x0.
  The `lw` at 0x10061058 loads 4 bytes from sym(XRT_PIXMAP) +0x0.
  The `lw` at 0x1006105c loads 4 bytes from ret(SecurityLookupIDByClass) +0x80.
  55 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1006106c, `lw` at 0x100610dc, `lw` at 0x100610ec.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0x10061070, `lw` at 0x100611fc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x74, including `lw` at 0x10061080, `lw` at 0x10061208.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0x1006108c, `lw` at 0x1006200c.
  The `lbu` at 0x100610b4 loads 1 byte from ret(SecurityLookupIDByClass) +0x0.
  The `lw` at 0x100610fc loads 4 bytes from ret(SecurityLookupIDByType) +0x14.
  The `lw` at 0x1006110c loads 4 bytes from ret(SecurityLookupIDByType) +0x10.
  21 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10061118, `lbu` at 0x10061484, `lbu` at 0x10061524.
  5 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x10061124, `lhu` at 0x10061130, `lhu` at 0x10061350.
  18 such `lh` accesses load 2 bytes from ?, including `lh` at 0x1006112c, `lh` at 0x10061134, `lh` at 0x100612ec.
  The `lw` at 0x10061144 loads 4 bytes from sym(XRT_WINDOW) +0x0.
  The `lw` at 0x10061160 loads 4 bytes from sym(WindowTable) +0x0.
  The `lw` at 0x10061168 loads 4 bytes from [sym(WindowTable)] +0x0.
  The `lw` at 0x10061170 loads 4 bytes from [[sym(WindowTable)]] +0x4.
  4 such `lw` accesses load 4 bytes from sym(panoramiXdataPtr) +0x0, including `lw` at 0x100612e8, `lw` at 0x10061754, `lw` at 0x10061a40.
  2 such `lw` accesses load 4 bytes from [sym(panoramiXdataPtr)] +0x10, including `lw` at 0x100612f0, `lw` at 0x10061e50.
  2 such `lw` accesses load 4 bytes from [sym(panoramiXdataPtr)] +0x14, including `lw` at 0x10061320, `lw` at 0x10061e64.
  The `lw` at 0x10061430 loads 4 bytes from a0 (arg0 at entry) +0x78.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10061480, `sw` at 0x10062014.
  The `lw` at 0x1006151c loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `ld` at 0x10061560 loads 8 bytes from abs 0x1028cdf0.
  The `lw` at 0x10061568 loads 4 bytes from sym(PixmapWidthPaddingInfo) +0xc.
  The `lw` at 0x10061574 loads 4 bytes from sym(PixmapWidthPaddingInfo) +0x10.
  The `lw` at 0x10061578 loads 4 bytes from sym(PixmapWidthPaddingInfo) +0x14.
  The `ld` at 0x100615b4 loads 8 bytes from abs 0x1028cdf8.
  2 such `lw` accesses load 4 bytes from sym(__us_rsthread_malloc) +0x0, including `lw` at 0x100619ec, `lw` at 0x10061ba0.
  The `lw` at 0x10061bc0 loads 4 bytes from sym(Must_have_memory) +0x0.
  10 such `sb` accesses store 1 byte to ?, including `sb` at 0x10061c44, `sb` at 0x10061c6c, `sb` at 0x10061c7c.
  The `lw` at 0x10061ef0 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x10061fb4 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jal` at 0x10061044 calls SecurityLookupIDByClass [0x10236190] with a0=a0 at entry (arg0), a1=[[a0+8]+4], a2=[sym(XRC_DRAWABLE)], a3=0x2.
  The `jal` at 0x100610a4 calls SecurityLookupIDByClass [0x10236190] with a0=a0 at entry (arg0), a1=?, a2=0x40000000, a3=0x0.
  The `jal` at 0x100610d8 calls SecurityLookupIDByType [0x100d6140] with a0=0x0, a1=?, a2=[0x102ca988], a3=0x0.
  The `jal` at 0x100613e4 calls ProcShmGetImage..BFE [0x101925c0] with a0=a0 at entry (arg0), a1=?, a2=[sym(XRT_PIXMAP)], a3=[ret(SecurityLookupIDByClass)+128].
  The `jalr` at 0x10061450 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x0, a5=0x3fffff, a6=sym(clientTable).
  The `jalr` at 0x10061780 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10061794 calls Xfree [0x101fc9c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100617a4 calls (unknown callee) with a0=sp-432, a1=?, a2=?, a3=?.
  The `jalr` at 0x100617b4 calls (unknown callee) with a0=sp-416, a1=?, a2=?, a3=?.
  The `jalr` at 0x10061858 calls (unknown callee) with a0=sp-432, a1=sp-440, a2=0x1, a3=?.
  The `jalr` at 0x10061870 calls (unknown callee) with a0=sp-416, a1=0x0, a2=0x1, a3=?.
  The `jalr` at 0x100618ec calls (unknown callee) with a0=sp-432, a1=sp-432, a2=sp-416, a3=?.
  The `jalr` at 0x100618fc calls (unknown callee) with a0=sp-432, a1=?, a2=?, a3=?.
  The `jalr` at 0x10061960 calls (unknown callee) with a0=?, a1=sp-440, a2=?, a3=?.
  The `jalr` at 0x1006198c calls (unknown callee) with a0=sp-416, a1=sp-432, a2=?, a3=?.
  The `jalr` at 0x100619d8 calls __libc_lockmalloc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100619e4 calls __malloc..ML [0x101e7680] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100619fc calls __libc_unlockmalloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10061a80 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10061b0c calls memcpy with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10061bac calls realloc [0x101a0420] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10061bcc calls FatalError [0x10094f20] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10061dcc calls memcpy with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10061e24 calls Xfree [0x101fc9c0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10061eac calls XineramaGetImageData [0x10108270] with a0=sp-544, a1=?, a2=?, a3=?.
  The `jal` at 0x10061fa4 calls WriteToClient [0x100b3500] with a0=a0 at entry (arg0), a1=0x20, a2=sp-480, a3=?.
  The `beq` branch at 0x10060fcc targets 0x10060ff0, is taken when at(=0x8) == v0(=[a0+72]), and falls through when at(=0x8) != v0(=[a0+72]).
  The `beq` branch at 0x10061000 targets 0x1006102c, is taken when v1(=0x1) == a1(=[[a0+8]+20]:1), and falls through when v1(=0x1) != a1(=[[a0+8]+20]:1).
  The `beq` branch at 0x1006100c targets 0x10061030, is taken when a1(=[[a0+8]+20]:1) == a0(=0x2), and falls through when a1(=[[a0+8]+20]:1) != a0(=0x2).
  The `beq` branch at 0x1006104c targets 0x100612b4, is taken when v0(=ret(SecurityLookupIDByClass)) == 0, and falls through when v0(=ret(SecurityLookupIDByClass)) != 0.
  The `beq` branch at 0x10061060 targets 0x100613e4, is taken when a2(=[sym(XRT_PIXMAP)]) == a3(=[ret(SecurityLookupIDByClass)+128]), and falls through when a2(=[sym(XRT_PIXMAP)]) != a3(=[ret(SecurityLookupIDByClass)+128]).
  The `bne` branch at 0x10061074 targets 0x10061098, is taken when a3(=[a0+48]) != a1(?), and falls through when a3(=[a0+48]) == a1(?).
  The `bne` branch at 0x10061084 targets 0x10061098, is taken when a4(=[a0+116]) != 0, and falls through when a4(=[a0+116]) == 0.
  The `beq` branch at 0x10061090 targets 0x100610c4 and is always taken.
  The `beq` branch at 0x100610ac targets 0x100613bc, is taken when v0(=ret(SecurityLookupIDByClass)) == 0, and falls through when v0(=ret(SecurityLookupIDByClass)) != 0.
  The `beq` branch at 0x100610bc targets 0x100613dc, is taken when a6(=[ret(SecurityLookupIDByClass)]:1) == a7(=0x2), and falls through when a6(=[ret(SecurityLookupIDByClass)]:1) != a7(=0x2).
  The `beq` branch at 0x100610e0 targets 0x100612c0, is taken when v0(=ret(SecurityLookupIDByType)) == 0, and falls through when v0(=ret(SecurityLookupIDByType)) != 0.
  The `bne` branch at 0x100610f4 targets 0x100612a0, is taken when (t3(?) & 0x3) != 0, and falls through when (t3(?) & 0x3) == 0.
  The `bne` branch at 0x10061104 targets 0x100612a0, is taken when t8(=[ret(SecurityLookupIDByType)+20]) < t3(?) (unsigned), and falls through when t8(=[ret(SecurityLookupIDByType)+20]) >= t3(?) (unsigned).
  The `beq` branch at 0x10061110 targets 0x100614cc, is taken when t9(=[ret(SecurityLookupIDByType)+16]) == 0, and falls through when t9(=[ret(SecurityLookupIDByType)+16]) != 0.
  The `bne` branch at 0x10061154 targets 0x100612e0, is taken when ra(=[sym(XRT_WINDOW)]) != at(?), and falls through when ra(=[sym(XRT_WINDOW)]) == at(?).
  The `bne` branch at 0x10061174 targets 0x100612e0, is taken when a1(=[[[sym(WindowTable)]]+4]) != a2(?), and falls through when a1(=[[[sym(WindowTable)]]+4]) == a2(?).
  The `bltz` branch at 0x10061180 targets 0x100614c4, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `bne` branch at 0x1006119c targets 0x100614c4, is taken when a4(=[0x102c5f60]) < a5(?) (signed), and falls through when a4(=[0x102c5f60]) >= a5(?) (signed).
  The `bltz` branch at 0x100611a4 targets 0x100614c4, is taken when a7(?) < 0 (signed), and falls through when a7(?) >= 0 (signed).
  The `bne` branch at 0x100611bc targets 0x100614c4, is taken when t0(=[0x102c5f64]) < t1(?) (signed), and falls through when t0(=[0x102c5f64]) >= t1(?) (signed).
  The `bne` branch at 0x100611d0 targets 0x100614d4, is taken when a7(=[0x102c5f1c]) < 0x2 (signed), and falls through when a7(=[0x102c5f1c]) >= 0x2 (signed).
  The `bne` branch at 0x10061200 targets 0x10061214, is taken when t0(=[a0+48]) != a1(?), and falls through when t0(=[a0+48]) == a1(?).
  The `beq` branch at 0x1006120c targets 0x1006200c, is taken when t1(=[a0+116]) == 0, and falls through when t1(=[a0+116]) != 0.
  The `beq` branch at 0x10061220 targets 0x100614b4, is taken when a7(?) >= 0x100 (signed), and falls through when a7(?) < 0x100 (signed).
  The `beq` branch at 0x10061238 targets 0x100614b4, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x10061248 targets 0x100616ec, is taken when a7(?) == t9(=0x6), and falls through when a7(?) != t9(=0x6).
  The `beq` branch at 0x10061254 targets 0x1006170c, is taken when a7(?) == at(=0x7), and falls through when a7(?) != at(=0x7).
  The `beq` branch at 0x1006125c targets 0x10061fb8, is taken when a7(?) == v0(=0x8), and falls through when a7(?) != v0(=0x8).
  The `beq` branch at 0x10061264 targets 0x10061fdc, is taken when a7(?) == v1(=0x9), and falls through when a7(?) != v1(=0x9).
  The `beq` branch at 0x1006126c targets 0x10061ff4, is taken when a7(?) == a2(=0xa), and falls through when a7(?) != a2(=0xa).
  The `beq` branch at 0x10061274 targets 0x10062018, is taken when a7(?) == a4(=0xb), and falls through when a7(?) != a4(=0xb).
  The `beq` branch at 0x1006128c targets 0x100614b4, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x10061294 targets 0x10061404 and is always taken.
  The `bltz` branch at 0x10061300 targets 0x100613b4, is taken when a7(?) < 0 (signed), and falls through when a7(?) >= 0 (signed).
  The `bne` branch at 0x10061318 targets 0x100613b4, is taken when t8(=[0x102c5f60]) < t9(?) (signed), and falls through when t8(=[0x102c5f60]) >= t9(?) (signed).
  The `bltz` branch at 0x10061334 targets 0x100613b4, is taken when a7(?) < 0 (signed), and falls through when a7(?) >= 0 (signed).
  The `bne` branch at 0x10061348 targets 0x100613b4, is taken when t1(=[0x102c5f64]) < t3(?) (signed), and falls through when t1(=[0x102c5f64]) >= t3(?) (signed).
  The `bne` branch at 0x10061360 targets 0x100613b4, is taken when t8(?) < t3(?) (signed), and falls through when t8(?) >= t3(?) (signed).
  The `bne` branch at 0x10061380 targets 0x100613b4, is taken when t0(?) < t1(?) (signed), and falls through when t0(?) >= t1(?) (signed).
  The `bne` branch at 0x1006138c targets 0x100613b4, is taken when t1(?) < t3(?) (signed), and falls through when t1(?) >= t3(?) (signed).
  The `beq` branch at 0x100613ac targets 0x100611c8, is taken when t3(?) >= t8(?) (signed), and falls through when t3(?) < t8(?) (signed).
  The `beq` branch at 0x100613b4 targets 0x10060fe0 and is always taken.
  The `beq` branch at 0x100613dc targets 0x10060fe0 and is always taken.
  The `beq` branch at 0x100613ec targets 0x10060fe0 and is always taken.
  The `beq` branch at 0x100613f8 targets 0x100614b4, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x10061404 targets 0x100613f4, is taken when t9(?) != a1(?), and falls through when t9(?) == a1(?).
  The `beql` branch at 0x10061414 targets 0x100613f8, is taken when (a3(=0x40000000) & a2(?)) == 0, and falls through when (a3(=0x40000000) & a2(?)) != 0; its branch-likely delay slot `lw a7,0(a7)` at 0x10061418 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x10061420 targets 0x1006147c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x10061428 targets 0x1006147c, is taken when v0(=a0) == 0, and falls through when v0(=a0) != 0.
  The `beq` branch at 0x10061434 targets 0x1006147c, is taken when t9(=[a0+120]) == 0, and falls through when t9(=[a0+120]) != 0.
  The `beq` branch at 0x1006147c targets 0x100614b0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1006148c targets 0x10062074, is taken when a7(=0x2) == t0(?), and falls through when a7(=0x2) != t0(?).
  The `bne` branch at 0x100614a0 targets 0x100611f4, is taken when a0(?) < a7(=[0x102c5f1c]) (signed), and falls through when a0(?) >= a7(=[0x102c5f1c]) (signed).
  The `beq` branch at 0x100614a8 targets 0x100614d8 and is always taken.
  The `beq` branch at 0x100614bc targets 0x10060fe0 and is always taken.
  The `beq` branch at 0x100614c4 targets 0x10060fe0 and is always taken.
  The `beq` branch at 0x100614cc targets 0x10060fe0 and is always taken.
  The `beq` branch at 0x100614dc targets 0x100614ec, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x100614e4 targets 0x10061504 and is always taken.
  The `beq` branch at 0x100614f8 targets 0x100614f0, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x10061538 targets 0x10062030, is taken when t0(?) == t1(=0x2), and falls through when t0(?) != t1(=0x2).
  The `beq` branch at 0x10061630 targets 0x10061644, is taken when at(?) >= v1(?) (unsigned), and falls through when at(?) < v1(?) (unsigned).
  The `beq` branch at 0x1006163c targets 0x10060fe0 and is always taken.
  The `beq` branch at 0x10061664 targets 0x10061ed4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10061678 targets 0x10061e80, is taken when t8(?) == t9(=0x2), and falls through when t8(?) != t9(=0x2).
  The `beq` branch at 0x100616a8 targets 0x10061ed4, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x100616e4 targets 0x100617dc and is always taken.
  The `beq` branch at 0x10061704 targets 0x1006127c and is always taken.
  The `beq` branch at 0x10061728 targets 0x1006127c and is always taken.
  The `beq` branch at 0x1006178c targets 0x1006179c, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x100617d4 targets 0x10061ed4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x100617e8 targets 0x100617d0, is taken when (v1(?) & a0(?)) == 0, and falls through when (v1(?) & a0(?)) != 0.
  The `beq` branch at 0x10061828 targets 0x10061e44, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10061880 targets 0x10061e3c, is taken when ra(?) == at(=0x1), and falls through when ra(?) != at(=0x1).
  The `blez` branch at 0x10061894 targets 0x1006179c, is taken when v1(=[0x102c5f1c]) <= 0 (signed), and falls through when v1(=[0x102c5f1c]) > 0 (signed).
  The `beq` branch at 0x100618d0 targets 0x10061948 and is always taken.
  The `beq` branch at 0x10061904 targets 0x1006178c, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x10061940 targets 0x10061788, is taken when ra(?) >= at(=[0x102c5f1c]) (signed), and falls through when ra(?) < at(=[0x102c5f1c]) (signed).
  The `beq` branch at 0x1006196c targets 0x10061730, is taken when v0(=ret(?)) == ra(=0x1), and falls through when v0(=ret(?)) != ra(=0x1).
  The `beq` branch at 0x10061974 targets 0x10061910, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x10061998 targets 0x10061e34, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x100619a4 targets 0x10061910, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x100619bc targets 0x1006207c and is always taken.
  The `beq` branch at 0x100619d0 targets 0x100619e4, is taken when v0(=[sym(__us_rsthread_malloc)]) == 0, and falls through when v0(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x100619f0 targets 0x10061a04, is taken when v1(=[sym(__us_rsthread_malloc)]) == 0, and falls through when v1(=[sym(__us_rsthread_malloc)]) != 0.
  The `beq` branch at 0x10061a04 targets 0x10061bc0, is taken when s1(=ret(__malloc..ML)) == 0, and falls through when s1(=ret(__malloc..ML)) != 0.
  The `beq` branch at 0x10061a10 targets 0x100618d8, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x10061ab4 targets 0x10061bdc, is taken when t0(?) == s0(=0x1), and falls through when t0(?) != s0(=0x1).
  The `blez` branch at 0x10061adc targets 0x10061b28, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `bne` branch at 0x10061b1c targets 0x10061b00, is taken when s2(?) != s6(?), and falls through when s2(?) == s6(?).
  The `beq` branch at 0x10061b34 targets 0x100618dc, is taken when t8(?) == t9(?), and falls through when t8(?) != t9(?).
  The `beq` branch at 0x10061b88 targets 0x10061a28, is taken when ra(?) >= s0(?) (signed), and falls through when ra(?) < s0(?) (signed).
  The `blez` branch at 0x10061b94 targets 0x10061e0c, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0x10061b9c targets 0x100619d0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x10061bb4 targets 0x10061a10, is taken when v0(=ret(realloc)) != 0, and falls through when v0(=ret(realloc)) == 0.
  The `beq` branch at 0x10061bc4 targets 0x10061bd4, is taken when ra(=[sym(Must_have_memory)]) == 0, and falls through when ra(=[sym(Must_have_memory)]) != 0.
  The `beq` branch at 0x10061bd4 targets 0x10061a10 and is always taken.
  The `beq` branch at 0x10061c08 targets 0x10061ca8, is taken when (s3(?) & 0x7) == 0, and falls through when (s3(?) & 0x7) != 0.
  The `blez` branch at 0x10061c10 targets 0x10061b28, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `beq` branch at 0x10061c2c targets 0x10061c50, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `bne` branch at 0x10061c48 targets 0x10061c34, is taken when s8(?) != 0, and falls through when s8(?) == 0.
  The `beq` branch at 0x10061c50 targets 0x10061ca8, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x10061ca0 targets 0x10061c60, is taken when t8(?) != a0(?), and falls through when t8(?) == a0(?).
  The `blez` branch at 0x10061cac targets 0x10061b24, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `beq` branch at 0x10061cdc targets 0x10061d50 and is always taken.
  The `bltz` branch at 0x10061cf0 targets 0x10061d34, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `bne` branch at 0x10061d2c targets 0x10061d00, is taken when t3(?) != s2(?), and falls through when t3(?) == s2(?).
  The `beq` branch at 0x10061d48 targets 0x10061e04, is taken when v0(?) == a0(?), and falls through when v0(?) != a0(?).
  The `beq` branch at 0x10061d50 targets 0x10061dac, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x10061d58 targets 0x10061cf0, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x10061d64 targets 0x10061d34, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x10061d9c targets 0x10061d70, is taken when t2(?) != s3(?), and falls through when t2(?) == s3(?).
  The `beq` branch at 0x10061da4 targets 0x10061d38 and is always taken.
  The `beq` branch at 0x10061dac targets 0x10061de4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10061de4 targets 0x10061d34, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x10061dfc targets 0x10061d34 and is always taken.
  The `beq` branch at 0x10061e04 targets 0x10061b28 and is always taken.
  The `beq` branch at 0x10061e0c targets 0x10061e1c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x10061e14 targets 0x10061e24, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x10061e1c targets 0x10061a10 and is always taken.
  The `beq` branch at 0x10061e2c targets 0x10061e1c and is always taken.
  The `beq` branch at 0x10061e34 targets 0x100619b0 and is always taken.
  The `beq` branch at 0x10061e3c targets 0x10061890 and is always taken.
  The `beq` branch at 0x10061e78 targets 0x10061830 and is always taken.
  The `beq` branch at 0x10061efc targets 0x10061f98, is taken when t1(=[a0+16]) == 0, and falls through when t1(=[a0+16]) != 0.
  The `beq` branch at 0x10061fb0 targets 0x10060fe0 and is always taken.
  The `beq` branch at 0x10061fd4 targets 0x1006127c and is always taken.
  The `beq` branch at 0x10061fec targets 0x1006127c and is always taken.
  The `beq` branch at 0x10062004 targets 0x1006127c and is always taken.
  The `beq` branch at 0x10062010 targets 0x10061494 and is always taken.
  The `beq` branch at 0x10062028 targets 0x1006127c and is always taken.
  The `beq` branch at 0x1006206c targets 0x1006161c and is always taken.
  The `beq` branch at 0x10062074 targets 0x10060fe0 and is always taken.
  The `beq` branch at 0x10062080 targets 0x10061b40 and is always taken.
  The return at 0x10060fd8 has v0 = 0x10.
  The return at 0x10060fe8 has v0 = one of 0x8, ret(ProcShmGetImage..BFE), 0x9, 0xa, [a0+40].
  The return at 0x10061024 has v0 = 0x2.
  The return at 0x100612ac has v0 = 0x2.
  The return at 0x100612b8 has v0 = 0x9.
  The return at 0x100612d8 has v0 = [0x102ca98c].
  The return at 0x100613d4 has v0 = 0x9.
  The instructions from 0x1006129c to 0x1006129c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x100619c4 to 0x100619cc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x10061ce4 to 0x10061cec are not reached by any path from the entry, and their branches are not listed.
- `sp_begin_sub_char_out` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10062090 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10062090-0x100620ec (92 bytes).
  It occupies 92 bytes.
  The `lbu` at 0x10062098 loads 1 byte from abs 0x102d79b5 (sp_globals+53).
  The `lh` at 0x100620a4 loads 2 bytes from abs 0x102d8d54 (sp_globals+5076).
  The `sh` at 0x100620ac stores 2 bytes to abs 0x102d8d52 (sp_globals+5074).
  The `sb` at 0x100620bc stores 1 byte to abs 0x102d79b5 (sp_globals+53).
  The `sh` at 0x100620cc stores 2 bytes to abs 0x102d8d48 (sp_globals+5064).
  The `sh` at 0x100620d8 stores 2 bytes to abs 0x102d8d4a (sp_globals+5066).
  The `sh` at 0x100620e0 stores 2 bytes to abs 0x102d8d4c (sp_globals+5068).
  The `sh` at 0x100620e8 stores 2 bytes to abs 0x102d8d4e (sp_globals+5070).
  The `beq` branch at 0x100620a8 targets 0x100620b8, is taken when v1(=[0x102d79b5]:1) == 0, and falls through when v1(=[0x102d79b5]:1) != 0.
  The return at 0x100620b0 has v0 = 0x102e0000.
  The return at 0x100620e4 has v0 = 0x102e0000.

No routines were skipped (0 total).
