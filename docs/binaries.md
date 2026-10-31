# Binaries in scope

What each file in the inventory is and why it is read, for the IRIX 6.5.30 O2 configuration. The routines inside each file are indexed in [functions.md](functions.md), [xmodule.md](xmodule.md) and [gl-entry-points.md](gl-entry-points.md). Labels: **established** (read from the file's own imports, exports, strings or code), **inferred** (from its name or install path). Imports and exports were read with `readelf --dyn-syms` (shared objects and executables) and `nm -u` (kernel objects).

## Kernel objects (`usr/cpu/sysgen/IP32boot/`)

- `crime.a`, `mace.o`: the O2 graphics driver and the MACE interrupt mask; indexed by member in [functions.md](functions.md).
- `usr/cpu/sysgen/IP32boot/gfx.o`: the board-independent graphics device layer every SGI graphics driver plugs into, 40296 bytes with 57 routines (established from its exports and the CRIME driver's imports of them).
  It defines the graphics device's open, close, ioctl and fault entries and the per-thread graphics state that the CRIME driver looks up (`gthread_find`); its routines are indexed in [functions.md](functions.md). The member of the same name in `gfxs.a` holds these same 40296 bytes followed by 12 zero bytes, and both have 57 routines (see the member entry below).
- `gfx_debug.o`, a member of `gfxs.a`: an empty object of 964 bytes with no symbols at all (established, `nm`), so it contributes no code to the 6.5.30 kernel.
- `rrm.o`: the rendering resource manager, the board-independent layer that owns render nodes, binds them to processes and windows, and schedules swaps (inferred from its routine names; its command table is in [ioctls.md](ioctls.md)).
  Its entry point for the resource-manager requests is `RRM_Dispatch` at 0x4480 (1104 bytes). It takes the command number in a1 and serves only commands 1000 to 1099. It returns 22 for any other command, and also when the first word of the command's table entry is zero (established, branch order and the delay slot of the branch at 0x44d8).
  The table is in `.data`, 16 bytes per command, starting at command 1000: the handler word is at the entry's offset 0, and the words at offsets 4 and 8 are read too (established, the `lui` and `addiu` relocations `.data` at 0x44c4 and 0x44c8 and the loads at offsets -16000, -15996 and -15992 from the entry pointer).
  The argument is copied in with `copyin` (established, R_MIPS_26 relocations at 0x4500, 0x4694 and 0x4700). The call at 0x4500 is on the path for commands other than 1011 and 1016; the path for 1016 calls `copyin` at 0x4694 and the path for 1011 calls it at 0x4700. All three pass the user pointer in a0 and the stack buffer at 0(sp) in a1, and a nonzero result returns 14 (established, instructions at 0x4500 to 0x4514, 0x4694 to 0x46a8 and 0x4700 to 0x4714). The rest of the 1011 path after the copy is not read in this entry.
  One call of the handler is a `jalr` through the table word at 0x466c (established, instruction at 0x466c). The lines read here do not show a register access of this object. The handlers' own register use is not read in this entry.
- `tile.o`, the one member read from `os.a`: the kernel's 64 KiB tile pool, which the CRIME driver and `mvp.o` use for frame buffer, texture and video buffers (established: `mvp.o` imports `tile_mapin` and `tile_mapout`).
- `kernel.o`: the base kernel object (n32). Read here only for the routines the graphics objects import (inferred from the object's role in the set; the import list is established).
  The graphics objects leave 27 names undefined that this object defines, found by comparing the undefined names of the graphics objects with the names this object defines (established, `nm -u` and `nm -g`).
  Among them, `copyin` at 0x3238 (88 bytes), `copyout` at 0x3290 (88 bytes) and `bzero` at 0x3518 (180 bytes) are listed by address only; their bodies are not read here.
  `setcrimevector` at 0xaaf8 (624 bytes) and `unsetcrimevector` at 0xb0e4 (196 bytes) are, by name, the install and removal of the CRIME interrupt vector; their bodies are not read here.
  `crime_intr_enable` at 0xa248 (64 bytes) and `crime_intr_disable` at 0xa288 (68 bytes) each call `spl7` and `splx` (established, R_MIPS_26 relocations at 0xa254, 0xa270, 0xa294 and 0xa2b4).
  Each one reads the doubleword at 0xffffa2b8 (`ld` with the immediate -23880 on `zero`) between the two calls, and stores it back in the delay slot of the `splx` call (established, instructions at 0xa25c and 0xa274 and at 0xa2a4 and 0xa2b8).
  `crime_intr_enable` ORs in bit (argument & 31), and `crime_intr_disable` clears that bit (established, `sllv` on the argument, `or` at 0xa26c and `nor` and `and` at 0xa2ac and 0xa2b0).
  Neither routine reads or writes a board register window: the only memory they touch are the stack and that doubleword (established, the instructions of both routines). The use of the doubleword at 0xffffa2b8 elsewhere is not read here.
  `us_delay` at 0x13a68 (192 bytes), `intr` at 0xa578 (588 bytes) and `get_cpu_irr` at 0x13610 (28 bytes) are also imported and are not read in this entry.
- `mvp.o`: the O2 video kernel driver. It is in scope because it couples to the graphics driver: it imports `crime_getustmsc`, `crime_retrace_callback` and `crime_video_info` from `crime.a`, `dms_block_get_tile_list` and the tile pool, and installs CRIME interrupt handlers through `setcrimevector` and `unsetcrimevector` (established, `nm -u`). Its own routines manage the video transfer paths (`mvptransfer_*`).
- `a3_dd.o`: the O2 audio driver, 53544 bytes with 55 routines (inferred).
  The audio role is inferred from its codec routine `a3_init_codec` at 0xef4. Its imports tie it to the CRIME interrupt only: it imports `setcrimevector` and `unsetcrimevector` and nothing else from the graphics objects (established, `nm -u`). Its own symbols include an I2C helper set, `mvpi2c_read_reg` at 0x3688 and `a3_mvp_probe` at 0x3878 (established, symbol table); their bodies are not read here, and whether `a3_check_for_video` at 0x38e0 uses that path is unknown until that routine is read in full.

The members of `crime.a`, `gfxs.a` and the single object `mace.o` have their own entries below. Each member entry gives the routines by address and size, what each one does to the hardware (through a mapped window, a physical address the code builds, or not at all), and the label.

- `crime.a(crime_busts.o)`: no graphics role, 980 bytes with 0 routines.
  Its disassembly has no instructions at all. Its `.debug_info` section is 48 bytes at file offset 0x1b0, and the other sections are metadata: `.comment`, `.MIPS.options`, `.reginfo` and two more debug sections (established, `objdump -d` and `objdump -h`). It contributes nothing to the driver.
- `crime.a(crime_dma.o)`: the pixel-DMA request, the linear-TLB loaders and the transfer-engine clear, 11268 bytes with 6 routines (inferred).
  The routines are read in full except the flag-bit paths of `crime_clear_buffer`, and the meaning of the request fields is read from the range checks, so the field names are inferred. Calls are named from the relocations (`objdump -dr`), which give the target of each `jal`.
  `crm_curproc_vtop` at 0x0 (128 bytes) calls `curproc_vtop` at 0x14 with the buffer address, the length, a page-table array and the constant 4. It returns 0 when that call returns nonzero and every page-table word for the page count of (address offset + length) is nonzero, and 14 otherwise (established, `objdump -dr`).
  `crmpixdma` at 0x80 (888 bytes) builds the row-group descriptors of a transfer. It stores the descriptor words into its first argument at offsets 8304, 8320, 8328, 8352 and 8364 (established, store instructions). Its one call is `loadLinearTlb` at 0x208 (established, relocation).
  `crimePixelDma` at 0x3f8 (700 bytes) is the entry for the pixel DMA request ([pixel-transfer.md](pixel-transfer.md)). It returns 22 unless the request words at +4, +8 and +12 satisfy: +4 is at least +8, +8 is in 0 to 8192, +12 is in 0 to 2048, and +8 plus (+4 times (+12 minus 1)) is at most 0x180000 (established, branch order). It tests flag byte +37 against 8. It calls `fast_userdma` at 0x520, `kern_malloc` at 0x558 and `kern_free` at 0x57c for a page list, `crm_curproc_vtop` at 0x56c, `RRM_CheckValidFault` at 0x598, `crmpixdma` at 0x5e8, `crmIdleWait` at 0x604 with the constant 0x7a120, and `fast_undma` at 0x64c, 0x684 and 0x6a4. It returns 14 when the page list cannot be built and 4 when `RRM_CheckValidFault` returns a negative value. Its error text is a `.rodata` string passed to `crimeError` at 0x66c (established, relocations).
  `loadLinearTlb` at 0x6b4 (264 bytes) turns a page-table array into up to 32 TLB words, each with bit 31 set (`or` with 0x80000000), and stores them as 64-bit words in the slots at 0xa0000000 OR (the first argument plus 5888), the uncached alias of that offset (established, instructions and constants). It returns 0 or -1 (established, branch order); the -1 paths are not tied to one count here.
  `crime_load_linear_tlb` at 0x7bc (896 bytes) is the entry for request 0x5605 ([ioctls.md](ioctls.md)). It returns 22 when the page count is 33 or more, clears 16 doublewords at the uncached alias of offset 5888 of the pointer at its third argument's +120, builds a page-table array with `kern_malloc` at 0x9c8, fills it with `crm_curproc_vtop` at 0x9dc, and calls `loadLinearTlb` at 0xaa4 (established, relocations and constants). It calls `undma` at 0x824 and 0x870 to release an earlier mapping, `fast_userdma` at 0x960 on the path with flag bit 3, `bzero` at 0x884 and 0xa20, `RRM_CheckValidFault` at 0x8ac and 0xa7c, `crmIdleWait` at 0xafc and `fast_undma` at 0xb1c.
  `crime_clear_buffer` at 0xb3c (1028 bytes) is the entry for request 0x5606 ([mte.md](mte.md)). It checks the request with `RRM_CheckValidFault` at 0xb60 and returns 4 when it is negative. It returns 22 when the type byte at +8 of its fourth argument is not 1, 2 or 4, and -1 when bit 0x800 of the word at +16 of the record its second argument points to at +8 is set (established, branch order). It stores words into offsets 512, 520, 536, 560, 568 and 584 of that record, and into 12288, 12296, 12312, 12336 and 12360 of its third argument, and waits with `crmIdleWait` at 0xec8 (established, store instructions and relocations). The register meaning of those stores is left to [mte.md](mte.md).
- `crime.a(crime_db.o)`: tile-use bookkeeping for the back buffer. It touches kernel memory only and no board register (established, both routines read in full). Two routines:
  `crmAddBackTiles` at 0x0 (252 bytes) takes a record, a count and an array of byte slots. It calls `crmAllocTiles` for the count; adds the count to the halfwords at +2 and +6 of `crm_tileusage`; stores each returned tile number into the record's 16-bit table at the slot the byte array gives; adds the count to the word at record +4; calls `crmNextIncarnation` and keeps its result at record +16. It returns 0, or 1 when `crmAllocTiles` fails.
  `crmSubtractBackTiles` at 0xfc (220 bytes) calls `kern_malloc` for a scratch array of two bytes per slot and moves each nonzero table entry into it, clearing the entry. It always ends with `kern_free` on that array. When any entry moved, it subtracts the moved count from record +4, calls `crmNextIncarnation`, and calls `crmFreeTiles` on the scratch array with the moved count, keeping its result at record +16.
- `crime.a(crime_debug.o)`: register-window classification and a table search. Inferred: the routines are read in full, but the meaning of the record bits and the return values of `crmFindPP` are read from its branches, not from a specification.
  `crmIsGlobalRegWrite` at 0x0 (56 bytes) returns 1 for register offsets below 0x2000 and for offsets from 0x2200 up. For offsets 0x2000 to 0x21ff it returns the byte at this object's `.data` +0, indexed by (offset >> 2) & 0x3ff, so the 512-byte window uses indexes 0 to 127 of that table, one flag byte per word.
  `crmFindPP` at 0x38 (296 bytes) walks a ring of 64 two-word records at the base it is given plus 512, starting at the record before its count argument and stepping backwards, wrapping from 0 to 63 (a count of 0 starts at 63). A record stops the walk when its word has bit 13 set, or when `crmIsGlobalRegWrite` returns nonzero for the register offset built from the low byte (times 8) and bits 8 to 10 (shifted up by 12). What it returns depends on where it stopped: a stop at the first record examined returns -1, a stop at any later record returns the index after that record (0 after record 63), and if the record at the count index itself is reached without a stop it returns -1 (established, branch order and delay slots).
- `crime.a(crime_zbuf.o)`: a 16-bit mask merge over tile-use records, 5876 bytes with 2 routines (inferred).
  The calls and the merge loop are read in full, but the bit meaning of the masks is inferred from the operations, not from a specification. `crmAddZ` at 0x0 (772 bytes) calls `kern_malloc` at 0x14c, `crmAllocTiles` at 0x168, `crmSubtractZ` at 0x1c8, `kern_free` at 0x1d0 and `crmNextIncarnation` at 0x244. Its second loop (0x180 to 0x1c0) XORs halfwords from the array at its argument into the stack scratch array, two per iteration. `crmSubtractZ` at 0x304 (376 bytes) calls `kern_malloc` at 0x324, `crmNextIncarnation` at 0x424, `crmFreeTiles` at 0x444 and `kern_free` at 0x458. The object's `.bss` table `crmzbuffer` (1032 bytes) is named by no relocation in either routine.
- `crime.a(crime_tp.o)`: the textport and colour-map routines of the CRIME driver, 11412 bytes with 11 routines (inferred).
  `crime_color` and `crime_mapcolor` are read in full, and the rest of the routines are listed by address and size only. `crime_color` at 0x0 (44 bytes) takes its argument plus one (or 255 when the argument is 255 or more), copies that byte into all four bytes of a 32-bit word and stores the word at `.bss` +8. `crime_mapcolor` at 0x2c (164 bytes) takes the board base from the word at `crimeBoards` +4 and reads the status word at board +0x58000. Its wait calls `us_delay(1)` at 0x6c, but that call cannot run: the wait is entered only when the status word's low six bits are nonzero, and the test at 0x64 then skips it because the whole word is nonzero (established, branch order). The routine stores a 32-bit colour word at board +0x54404 plus 4 times its index argument. `crime_sboxfi` at 0xd0 (296 bytes) calls `crmFifoWait` at 0x110 with count 7 and the constant 0x000abcde, and `crmIdleWait` at 0x1cc with the same constant. The routines `crime_pnt2i` at 0x1f8 (184 bytes), `crime_cmov2i` at 0x2b0 (20 bytes), `crime_drawbitmap` at 0x2c4 (1664 bytes), `crime_unblank` at 0x944 (52 bytes), `crime_getdesc` at 0x978 (24 bytes), `crime_positioncursor` at 0x990 (44 bytes), `crime_clearfb` at 0x9bc (284 bytes) and `crime_tpinit` at 0xad8 (232 bytes) are listed but not read here.
- `crime.a(crime_init.o)`: board probe, timing and start-up routines, 19972 bytes with 14 routines (inferred).
  `gbeProbe` and `crimeProbe` are read in full, and the remaining routines are listed by address and size only. `gbeProbe` at 0x0 (68 bytes) takes the window base; when the word at +0x14 equals 0x666 it stores 0x30000000 at offset 0, then if bit 31 of the word at offset 0x10000 is set it stores zero there, and it returns 1 in both cases; otherwise it returns 0. `crimeProbe` at 0x44 (68 bytes) loads the 64-bit word at address 0xb4000000 (built with `lui` 0xb400) and returns 1 when the low byte has high nibble 0xa and is not 0xa0, and 0 otherwise. The other routines are `getNvramTiming` at 0x88, `crimeInitInfo` at 0xec (940 bytes), `crimeInitHW` at 0xb90 (596 bytes), `crmInitTp` at 0xde4 (864 bytes), `crmInvalidVideoTiming` at 0x1144, `crime_setvideotiming` at 0x119c (732 bytes), `gbeBlankScreen` at 0x15d0 (300 bytes), `gbeRun` at 0x1510 (192 bytes) and `gbeStop` at 0x16fc (420 bytes). The three local routines `gbeSetTimingRegs` at 0x498 (1244 bytes), `gbeStartVideoTiming` at 0x974 (540 bytes) and `gbeGmapInit` at 0x1478 (152 bytes) are also listed by address and size only (established, symbol table). The `crimeVTimings` table is 768 bytes of `.data`.
- `crime.a(crime.o)`: the CRIME driver core, 61572 bytes with 65 routines (inferred). It dispatches the device requests, takes the CRIME interrupt, starts the board and creates, binds and destroys drawables and render nodes.
  The request dispatcher is `crimePrivate` at 0x3bd0 (3880 bytes). It is read as the dispatcher because its callees are `copyin`, `copyout`, `gfxdd_lookup`, `kern_malloc` and `crmMapPages` (established from relocations).
  The interrupt entry is `crimeInterrupt` at 0x4af8 (68 bytes).
  The board start-up is `crime_init` at 0x5364 (1136 bytes).
  The drawable and render-node routines run from `crm_createdrawable` at 0xb58 to `crm_destroydrawable` at 0x124c (established, symbol table and relocations).
  How it reaches the board: through the board record. The config names two board-record fields for this object: +120 (the rendering-engine window, 0x15000000) and +128 (the display window, 0x16000000) (established for the field meanings, from [scripts/inventory-config.json](../scripts/inventory-config.json)); the object loads both. `crmFifoWait` at 0x2b94 (552 bytes) waits with `us_delay`, `splhi`/`splx`, `timeout` and `sv_wait`, and calls `cmn_err` on its failure path; the message is not read here (established, relocations). `crmIdleWait` at 0x2dbc (152 bytes) waits with `us_delay` and reports through `cmn_err` (established, relocations).
  Context switching: `crmSavePP` at 0x2ff8 (288 bytes) calls `crmFifoWait`, `crmFindPP` and `crimeError`, and `crmRestorePP` at 0x3118 (296 bytes) calls `cmn_err` (established, relocations); `crimePcxSwap` at 0x2e54 (420 bytes) calls `crmIdleWait`, `crmSavePP`, `crmRestorePP`, `crmLoadGlobalsFromShadow` and `crmLoadNonglobalsFromShadow` (established, relocations). `crimeRestore` at 0x35e4 (228 bytes) calls `restore_linear` twice and `crmRestorePP` (established, relocations). The register meanings are in [context.md](context.md).
  `crimeValidateClip` at 0x21b0 (964 bytes) calls `crm_changedrawables`, `crmRecomputeSZ`, `crmLoadTlbABC` (in `crime_tiles.o`), `crmRestorePP` and `crmSavePP` (established, relocations).
- `crime.a(crime_retrace.o)`: the vertical-retrace and swap scheduler, 32916 bytes with 29 routines (inferred). Its routines are listed in [functions.md](functions.md#retrace-and-swap-scheduling-crime_retraceo).
  The retrace interrupt handler `crimeRetraceHandler` at 0xb80 (1120 bytes), the pre-blank handler `crimePreblankHandler` at 0x10d4 (2320 bytes), `crimeBlankscreen` at 0xae8 (136 bytes) and `crimeSetGammaRamp` at 0x28a0 (204 bytes) each load the board-record word at +128, the display window pointer the config names (established, `lw` in the object). The register meanings of those stores are in [gbe.md](gbe.md).
  `crimeInterrupt` in `crime.a(crime.o)` passes the high-level interrupt to `crime_hli_handler` at 0x2a64 (524 bytes) in this object (established, relocation `R_MIPS_26 crime_hli_handler`). The scheduler `crime_schedule_hli` (0x2c70), `crime_hli_sched` (0x2e1c), `crime_hli_unsched` (0x2ee0) and `crime_hli_update` (0x3048) manage its entries.
  The swap path is `crimeSchedSwapBuf` at 0x20f0 (504 bytes), `crmSwapBufd` at 0x1cdc (1044 bytes) and `crm_copy_swap_boxes` at 0x19e4 (760 bytes). `crm_copy_swap_boxes` stores words at offsets 12320, 12328 and 12336 of two base registers, and a doubleword at offset 8304 of `v0` (established, `sw` and `sd` in the object). Read as the copy-engine setup, that is inferred from the offsets; the register meanings are in [mte.md](mte.md).
  The count query routines are `crm_getustmsc` at 0x316c (264 bytes) and `crime_getustmsc` at 0x3274 (68 bytes); their names are from the symbol table and their bodies are not read here (established, symbol table).
- `crime.a(crime_tiles.o)`: the tile allocator and the texture, frame-buffer and drawable tile tables, 26388 bytes with 33 routines (inferred). The routines are listed in [functions.md](functions.md#tile-allocation-crime_tileso).
  Its tiles come from the kernel tile pool: `crmAllocTiles` at 0x3c0 (244 bytes) calls `tile_alloc` (established, relocation), and `crmFreeTiles` at 0x4b4 (300 bytes) calls `tile_free` and `crmFifoWait` (established, relocations).
  The table loads write through the rendering-engine window. `crmLoadCidTlb` at 0x2464 (156 bytes) takes the window pointer as its first argument. It packs 16-bit entries, read through a pointer at +8 of its second argument, four to a doubleword and stores each doubleword at offset 5856 (0x16e0) plus 8 per group, then ends with a word store of zero at offset 16392 (0x4008). `crmLoadTlbABC` at 0x22b4 (432 bytes) loads the window from +120 of its first argument and picks window offset 4096, 4608 or 5120 by its third argument. It writes doublewords through an address built from 0xa0000000 and ends with the same zero store at 0x4008. `crmValidateDrawable` at 0x2164 (336 bytes) loads the same window from +120 of its first argument. Its second argument is the drawable record, whose doublewords it copies into the window at offsets 5888 (0x1700) and 6008 (0x1778) with a stride of 8 (zeroing both 16-doubleword tables instead when the drawable has none and the board record's linear-loaded word at +180 is set), and it then stores zero at 0x4008 (established, `lw`, `sw` and `sd` operands in the object; the register meanings are in [context.md](context.md)). Texture binding is `crmDefineTex` at 0x18d0 (1112 bytes), which calls `crmAllocTex`, `crm_get_dms_tiles` and `kmem_alloc` (established, relocations).
- `crime.a(crime_i2c.o)`: the I2C layer for the monitor (DDC), the command channel and the flat-panel option board, 45284 bytes with 52 routines (inferred). The routines are listed in [functions.md](functions.md#monitor-identification-crime_i2co), [functions.md](functions.md#command-channel-crime_i2co) and [functions.md](functions.md#flat-panel-option-board-crime_i2co).
  How it reaches the board: the bus primitives write and read the two I2C registers at offsets +8 and +16 of a base pointer that the caller passes. `i2_start` at 0x1aa4 (328 bytes) takes that pointer in `a1` and a selector in `a0`: selector 1 writes the register at +16 and any other value writes the register at +8 (established, branch targets and stores in the object). `i2_stop` at 0x1c38, `i2_sendbyte` at 0x1e50, `i2_master_recvbyte` at 0x2884 and `i2_slave_recvbyte` at 0x255c use the same two offsets (established, `sw` and `lw` in the object). The bit timing is `us_delay` and `i2_sync_clk` calls between the writes (established, relocations).
  `crime_i2cProbe` at 0x2cc (608 bytes) reads a monitor's EDID over that bus. It calls `i2_start`, `i2_sendbyte`, `i2_master_recvbyte` and `i2_stop`, checks the block with `crime_EdidCksum` at 0x70c, and repairs the bus with `crime_i2cFixupAfterErr` at 0x214 on error (established, relocations).
  `crime_i2c_cmd` at 0x8fc (764 bytes) is the command-channel entry. It copies the request in with `crime_copyin_cmd` at 0x868 and runs either the two-wire command path through `crime_2abCmdWrapper` at 0xecc or the bus primitives directly, then copies the reply out with `copyout` (established, relocations). `crime_2abSendCmd` at 0x1004 (604 bytes) sends one command and `crime_2abGetReply` at 0x1260 (560 bytes) reads its reply (established, relocations).
  `i2cfp_DualChannelProbe` at 0x19c0 (196 bytes) probes the dual-channel option board at bus address 126 (0x7e). Through `i2cfp_PortRead` and `i2cfp_PortWrite` it reads the port, writes 0xff, reads it, writes 0x7f, reads it, then writes the value read with 0x70 set, and it returns the id plus one (established, `li` constants, branch order and relocations). `crime_i2cFpProbe` at 0x1490 (584 bytes) reads the panel identifier through `i2cfp_PanelID` at 0x1978 and records it in a list with `find_inventory` and `add_to_inventory` (established, relocations).
  `i2cfp_PanelOn` at 0x31b0 (784 bytes) calls `crime_setvideotiming` (in `crime_init.o`) and the audio and backlight routines. `i2cfp_BlUp` at 0x355c (332 bytes) and `i2cfp_BlDown` at 0x36a8 (360 bytes) write the backlight through `i2cfp_PortWrite` (established, relocations).
- `mace.o`: the MACE interrupt mask and interrupt vector, 9704 bytes with 12 routines (inferred).
  The five mask routines are read in full, `setmaceisavector` is read for its calls and constants, and `mace_intr` at 0x40c (220 bytes) is not read here. Every mask routine brackets its work with `spl7` and `splx` and reads or writes a 64-bit register at address 0xbf310018 (built as `lui` 0xbf31 plus `ori` 0x18) through `pciio_pio_read64` and `pciio_pio_write64` (established). `mace_mask_disable` at 0x0 (80 bytes) clears the bits given in its argument; `mace_mask_enable` at 0x50 (76 bytes) sets them; `mace_mask_update` at 0x9c (92 bytes) sets the bits of its second argument and keeps the other bits outside its first argument's mask; `mace_mask_read` at 0xf8 (64 bytes) returns the register; `mace_mask_write` at 0x138 (64 bytes) stores its argument. `setmaceisavector` at 0x22c (480 bytes) calls `mace_tbl_init` (at 0x1a4, 72 bytes, which installs the default handler `mace_stray`, 44 bytes at 0x178, that reports through `cmn_err`) and registers `mace_intr` with `setcrimevector` at 0x3a4 and 0x3e0. After a test with `mace_is_thd` at 0x31c it calls `xthread_setup` at 0x35c with `macevec_intrd_setup` as the argument.
- `gfxs.a(gfx.o)`: the same object as `gfx.o`, with 12 zero bytes appended. Established: `cmp` finds the first 40296 bytes identical to `gfx.o`, the member is 40308 bytes, and both have 57 function rows in `functions.tsv`. Its routines and their roles are the ones of `gfx.o` above, with no change in the member itself.

## OpenGL and the X server

- `libGLcore.so` (N32 under `usr/gfx/arch/IP32CRM32/`, o32 under `usr/gfx/arch/IP32CRM/`): the OpenGL renderer that drives the rendering engine; [opengl.md](opengl.md), [gl-entry-points.md](gl-entry-points.md).
- `libGL.so`, in the same two directories: the client OpenGL library and its GLX window-system layer. It needs `libGLcore.so`, `libXsgivc.so`, `libXext.so` and `libX11` (established, `DT_NEEDED`), and it owns the render node: it sends resource-manager commands 1000 to 1003, 1006, 1022 to 1024 ([ioctls.md](ioctls.md), established from its call sites).
- `Xsgi`: the board-independent X server. It loads the board module and holds the resource-manager client side (`rrmSetReservedDID`, `rrmInit`), the input-device streams of [ioctls.md](ioctls.md) and the generic overlay-visual code ([gbe.md](gbe.md)).
- `crm.so`: the O2 X server module; [xmodule.md](xmodule.md).
- `glx.so`: the X server's GLX extension, which renders indirect GLX contexts inside the server. It needs `libGLcore.so` (established, `DT_NEEDED`), so indirect rendering on the O2 uses the same renderer as direct rendering.

## Display configuration tools

- `gfxinit`: run at start-up to configure the graphics. It opens the graphics device, queries every video-control property of the screen through `libXsgivc.so` (output gain, sync, pedestal, blanking, phase, gamma maps, monitor name) and holds the paths of the per-channel timing table files (`Crm_TimingTableFiles`, `/usr/gfx/ucode/`); established from its imports and strings. It holds no format-file conversion code ([gbe.md](gbe.md)).
- `gfxinfo`: on the 6.5.30 media a link to `gfxinit`, which picks its behaviour from its name. For this board its `crime_info` routine (`usr/gfx/gfxinit`, 0x1000ddd4, 412 bytes) prints the frame-buffer depth (`%d + %d bitplanes` when the board's byte at +0x2b is non-zero, otherwise `%d bitplanes`), then `board revision %d, CRM revision %c, GBE revision %c`, the dual-channel option line and the timing-table flags (full-screen stereo, quad-buffer stereo, sync on green), and the monitor names (established, disassembly). The board number is the byte at +0x28 of the board information structure, the CRM letter is 'A' plus the byte at +0x29, the GBE letter is 'A' plus the byte at +0x2a. The kernel's `crimeInitInfo` fills them: +0x28 from the four strap bits read from the GBE pin pairs, +0x29 from the low nibble of the CRIME identity word at 0xb4000000 plus one when bit 0 of the word at +0x400 of the register block passed to it is set, +0x2a from the GBE control register's revision nibble (established; what the +0x400 bit means is unknown).
  - Established (published output, 56 `gfxinfo` dumps for the CRM board): the depth line is `32 bitplanes` (35 dumps), `32 + 32 bitplanes` (17), `16 bitplanes` (2) or `16 + 16 bitplanes` (1), so all four forms are printed by real boards; the revision line is `board revision 2, CRM revision C, GBE revision B` in 53 dumps and, in three posts from the IRIX 6.3 era, `Board version 2, CRM revision C, GBE revision B`; no other revision combination is printed. The smallest main memory among the 283 O2 `hinv` dumps is 64 MB, and `32 + 32` and plain `32` both occur at 64, 128, 256, 512 and 1024 MB.
- `setmon`: the monitor-format selection tool. One routine per board family; `crm_setmon` is the O2 path ([gbe.md](gbe.md)); `ng1_setmon` and the others serve other families ([ioctls.md](ioctls.md)).
- `libXsgivc.so` (o32 `usr/lib/`, N32 `usr/lib32/`, 64-bit `usr/lib64/`): the client side of the X video-control extension; [gbe.md](gbe.md) (established: it imports only the Xlib transport).
- The video format files under `usr/gfx/ucode/CRM/vof/`: compiled formats in the container described in [gbe.md](gbe.md). Each file names its output as `O2_GBE` and carries a format title (established, file strings). The X module reads their timing scalars and PLL values and turns them into the kernel timing record ([gbe.md](gbe.md)).

| File | Title in the file |
|---|---|
| `640x480_60.vfo` | (no plain title string) |
| `800x600_60.vfo` | `800x600_60` |
| `800x600_72.vfo` | `800x600_72` |
| `1024x768_60.vfo` | `1024x768_60` |
| `1024x768_60p.vfo` | `1024x768_60p@N` |
| `1024x768_70.vfo` | `1024x768_70` |
| `1024x768_75.vfo` | `1024x768_75` |
| `1024x768_96s.vfo` | `1024x768_96 Stereo Window` |
| `1280x492_120s.vfo` | `1280x492_120 Stereo` |
| `1280x1024_48.vfo` | `1280x1024_48@H` |
| `1280x1024_50.vfo` | `1280x1024_50@I` |
| `1280x1024_60.vfo` | `1280x1024_60@M` |
| `1280x1024_60p.vfo` | `1280x1024_60p` |
| `1280x1024_72.vfo` | `1280x1024_72@R` |
| `1280x1024_75.vfo` | `1280x1024_75@R` |
| `1600x1024_48p.vfo` | `1600x1024_48p` |
| `1600x1024_50p.vfo` | `1600x1024_50p` |
| `1600x1024_60p.vfo` | `1600x1024_60p` |
| `2@1024x768_60.vfo` | `1024x768_60 Dual Channel@N` |
| `2@1024x768_70.vfo` | `1024x768_70 Dual Channel@Q` |
| `2@1024x768_75.vfo` | `1024x768_75 Dual Channel@R` |
| `2@1280x1024_48.vfo` | `1280x1024_48 Dual Channel` |
| `2@1280x1024_50.vfo` | `1280x1024_50 Dual Channel` |
| `2@1280x1024_60.vfo` | `1280x1024_60 Dual Channel` |
| `2@1280x1024_72.vfo` | `1280x1024_72 Dual Channel` |
| `2@1280x1024_75.vfo` | `1280x1024_75 Dual Channel` |

The `2@` files are the formats of the dual-channel display option (established, title strings); the `s` files are the two stereo formats ([gbe.md](gbe.md)). The `@` letter after some titles and the `p` suffix are not decoded: no O2 reader parses the title (inferred from the readers named in [gbe.md](gbe.md), which read named scalars only).

### Format file entries (`usr/gfx/ucode/CRM/vof/`)

The 26 format files have no entry points of their own. The X module reads each one: `crmReadVideoFormat..FC` at 0x593e70 in `crm.so` opens it with `SDBreadOpenDatabase` (inferred from the routine's name and calls, [xmodule.md](xmodule.md)); `crmLoadTimingTable` builds a 0x30-byte timing record from the format, and ioctl 0x55f6 sends that record to `crimeLoadTimingTable` in the kernel, which programs the GBE timing registers (established from the disassembly, [gbe.md](gbe.md) and [ioctls.md](ioctls.md)). No format file reaches a register directly.

Each row gives one file, read from its own bytes (established by reading the words at the offsets shown; offsets are hexadecimal file offsets). The clock is the 32-bit big-endian word that [gbe.md](gbe.md) reads as the pixel clock. The PLL scalars `M`, `N` and `P` are the three words 20 bytes before the three words 5, 5, 1, which occur once in every file; for the 16 files that gbe.md lists, these are the values it gives (established by comparison). VCO is 20 MHz times `M` divided by `N`; output is the VCO divided by 2 to the `P` (established by arithmetic, the formula gbe.md uses). The last column is the output minus the clock word, in parts per million.

| File | Bytes | Title | Clock, Hz (offset) | M, N, P (offset) | VCO, MHz | Output, MHz | Output minus clock word, ppm |
|---|---|---|---|---|---|---|---|
| `usr/gfx/ucode/CRM/vof/640x480_60.vfo` | 12416 | none | 25174800 (0x1b70) | 5, 1, 2 (0x2bc) | 100.000 | 25.000 | -6943.5 |
| `usr/gfx/ucode/CRM/vof/800x600_60.vfo` | 12424 | `800x600_60` | 40000304 (0x1b78) | 8, 1, 2 (0x2c4) | 160.000 | 40.000 | -7.6 |
| `usr/gfx/ucode/CRM/vof/800x600_72.vfo` | 12424 | `800x600_72` | 50000296 (0x1b78) | 5, 1, 1 (0x2c4) | 100.000 | 50.000 | -5.9 |
| `usr/gfx/ucode/CRM/vof/1024x768_60.vfo` | 12424 | `1024x768_60` | 65000173 (0x1b78) | 13, 2, 1 (0x2c4) | 130.000 | 65.000 | -2.7 |
| `usr/gfx/ucode/CRM/vof/1024x768_60p.vfo` | 12436 | `1024x768_60p@N` | 65000173 (0x1b84) | 13, 2, 1 (0x2d0) | 130.000 | 65.000 | -2.7 |
| `usr/gfx/ucode/CRM/vof/1024x768_70.vfo` | 12424 | `1024x768_70` | 74999615 (0x1b78) | 15, 2, 1 (0x2c4) | 150.000 | 75.000 | +5.1 |
| `usr/gfx/ucode/CRM/vof/1024x768_75.vfo` | 12424 | `1024x768_75` | 78750438 (0x1b78) | 39, 5, 1 (0x2c4) | 156.000 | 78.000 | -9529.3 |
| `usr/gfx/ucode/CRM/vof/1024x768_96s.vfo` | 12748 | `1024x768_96 Stereo Window` | 103502592 (0x1ba0) | 31, 3, 1 (0x2ec) | 206.667 | 103.333 | -1635.3 |
| `usr/gfx/ucode/CRM/vof/1280x1024_48.vfo` | 12424 | `1280x1024_48@H` | 85881600 (0x1b78) | 30, 7, 0 (0x2c4) | 85.714 | 85.714 | -1948.2 |
| `usr/gfx/ucode/CRM/vof/1280x1024_50.vfo` | 12424 | `1280x1024_50@I` | 89460000 (0x1b78) | 9, 1, 1 (0x2c4) | 180.000 | 90.000 | +6036.2 |
| `usr/gfx/ucode/CRM/vof/1280x1024_60.vfo` | 12424 | `1280x1024_60@M` | 107244648 (0x1b78) | 16, 3, 0 (0x2c4) | 106.667 | 106.667 | -5389.4 |
| `usr/gfx/ucode/CRM/vof/1280x1024_60p.vfo` | 12440 | `1280x1024_60p` | 107244648 (0x1b88) | 16, 3, 0 (0x2d4) | 106.667 | 106.667 | -5389.4 |
| `usr/gfx/ucode/CRM/vof/1280x1024_72.vfo` | 12424 | `1280x1024_72@R` | 129467520 (0x1b78) | 13, 2, 0 (0x2c4) | 130.000 | 130.000 | +4112.8 |
| `usr/gfx/ucode/CRM/vof/1280x1024_75.vfo` | 12424 | `1280x1024_75@R` | 135000585 (0x1b78) | 27, 4, 0 (0x2c4) | 135.000 | 135.000 | -4.3 |
| `usr/gfx/ucode/CRM/vof/1280x492_120s.vfo` | 12740 | `1280x492_120 Stereo` | 107143949 (0x1b98) | 16, 3, 0 (0x2e4) | 106.667 | 106.667 | -4454.6 |
| `usr/gfx/ucode/CRM/vof/1600x1024_48p.vfo` | 12440 | `1600x1024_48p` | 97219200 (0x1b88) | 34, 7, 0 (0x2d4) | 97.143 | 97.143 | -785.3 |
| `usr/gfx/ucode/CRM/vof/1600x1024_50p.vfo` | 12440 | `1600x1024_50p` | 101270000 (0x1b88) | 5, 1, 0 (0x2d4) | 100.000 | 100.000 | -12540.7 |
| `usr/gfx/ucode/CRM/vof/1600x1024_60p.vfo` | 12440 | `1600x1024_60p` | 108732000 (0x1b88) | 38, 7, 0 (0x2d4) | 108.571 | 108.571 | -1476.8 |
| `usr/gfx/ucode/CRM/vof/2@1024x768_60.vfo` | 12440 | `1024x768_60 Dual Channel@N` | 65000173 (0x1b88) | 13, 2, 1 (0x2d4) | 130.000 | 65.000 | -2.7 |
| `usr/gfx/ucode/CRM/vof/2@1024x768_70.vfo` | 12440 | `1024x768_70 Dual Channel@Q` | 74999615 (0x1b88) | 15, 2, 1 (0x2d4) | 150.000 | 75.000 | +5.1 |
| `usr/gfx/ucode/CRM/vof/2@1024x768_75.vfo` | 12440 | `1024x768_75 Dual Channel@R` | 78750438 (0x1b88) | 39, 5, 1 (0x2d4) | 156.000 | 78.000 | -9529.3 |
| `usr/gfx/ucode/CRM/vof/2@1280x1024_48.vfo` | 12444 | `1280x1024_48 Dual Channel` | 85881600 (0x1b8c) | 30, 7, 0 (0x2d8) | 85.714 | 85.714 | -1948.2 |
| `usr/gfx/ucode/CRM/vof/2@1280x1024_50.vfo` | 12444 | `1280x1024_50 Dual Channel` | 89460000 (0x1b8c) | 9, 1, 1 (0x2d8) | 180.000 | 90.000 | +6036.2 |
| `usr/gfx/ucode/CRM/vof/2@1280x1024_60.vfo` | 12444 | `1280x1024_60 Dual Channel` | 107244648 (0x1b8c) | 16, 3, 0 (0x2d8) | 106.667 | 106.667 | -5389.4 |
| `usr/gfx/ucode/CRM/vof/2@1280x1024_72.vfo` | 12444 | `1280x1024_72 Dual Channel` | 129467520 (0x1b8c) | 13, 2, 0 (0x2d8) | 130.000 | 130.000 | +4112.8 |
| `usr/gfx/ucode/CRM/vof/2@1280x1024_75.vfo` | 12444 | `1280x1024_75 Dual Channel` | 135000585 (0x1b8c) | 27, 4, 0 (0x2d8) | 135.000 | 135.000 | -4.3 |

Notes on the table (established from the same reads). `640x480_60.vfo` is the only file with a `VGA` string. The `1024x768_96s` and `1280x492_120s` files are the stereo formats, whose layout is in [gbe.md](gbe.md). The `1024x768_60p` and `1280x1024_60p` files repeat the clock and PLL values of their single-channel bases, and each `2@` file repeats those of its single-channel format; they differ from the base in offset and length only, and their extra leading words are not decoded. The `1600x1024` `p` files have no single-channel base in the set.

One entry per format file, in table order. Each gives the clock word at its offset and the table's output against it. Each ppm figure is the difference between the two divided by the clock word, as in the table above, so "above" and "below" name the clock word's side of the output. A script read all 26 files' sizes, clock words and 5-5-1 anchors at the table's offsets, and every file matched (established). The PLL words are in the table.

- `usr/gfx/ucode/CRM/vof/640x480_60.vfo` (12416 bytes): the 640x480 format, the only one with a `VGA` string and no plain title string (established, `strings`). Its clock word 25174800 Hz at 0x1b70 is 6943.5 ppm above its 25.000 MHz output (established by arithmetic); the 60 Hz rate is from the name (inferred).
- `usr/gfx/ucode/CRM/vof/800x600_60.vfo` (12424 bytes), title `800x600_60`: the 800x600 at 60 Hz. Clock word 40000304 Hz at 0x1b78. It is 7.6 ppm above the 40.000 MHz output (established).
- `usr/gfx/ucode/CRM/vof/800x600_72.vfo` (12424 bytes), title `800x600_72`: the 800x600 at 72 Hz. Clock word 50000296 Hz at 0x1b78. It is 5.9 ppm above the 50.000 MHz output (established).
- `usr/gfx/ucode/CRM/vof/1024x768_60.vfo` (12424 bytes), title `1024x768_60`: the 1024x768 at 60 Hz. Clock word 65000173 Hz at 0x1b78. It is 2.7 ppm above the 65.000 MHz output (established).
- `usr/gfx/ucode/CRM/vof/1024x768_60p.vfo` (12436 bytes), title `1024x768_60p@N`: the 1024x768_60 values, 12 bytes later, with clock word 65000173 Hz at 0x1b84. The `p` and `@N` parts of the title are not decoded.
- `usr/gfx/ucode/CRM/vof/1024x768_70.vfo` (12424 bytes), title `1024x768_70`: the 1024x768 at 70 Hz. Clock word 74999615 Hz at 0x1b78. It is 5.1 ppm below the 75.000 MHz output (established).
- `usr/gfx/ucode/CRM/vof/1024x768_75.vfo` (12424 bytes), title `1024x768_75`: the 1024x768 at 75 Hz. Clock word 78750438 Hz at 0x1b78, and the output is 78.000 MHz, 9529.3 ppm lower, about 0.95 percent (established). Which of the two the board uses is unknown.
- `usr/gfx/ucode/CRM/vof/1024x768_96s.vfo` (12748 bytes), title `1024x768_96 Stereo Window`: a stereo format. Clock word 103502592 Hz at 0x1ba0, and the 103.333 MHz output is 1635.3 ppm lower (established). The stereo layout is in [gbe.md](gbe.md).
- `usr/gfx/ucode/CRM/vof/1280x1024_48.vfo` (12424 bytes), title `1280x1024_48@H`: the 1280x1024 at 48 Hz. Clock word 85881600 Hz at 0x1b78. It is 1948.2 ppm above the 85.714 MHz output, which equals the VCO because P is 0 (established).
- `usr/gfx/ucode/CRM/vof/1280x1024_50.vfo` (12424 bytes), title `1280x1024_50@I`: the 1280x1024 at 50 Hz. Clock word 89460000 Hz at 0x1b78. It is 6036.2 ppm below the 90.000 MHz output (established).
- `usr/gfx/ucode/CRM/vof/1280x1024_60.vfo` (12424 bytes), title `1280x1024_60@M`: the 1280x1024 at 60 Hz. Clock word 107244648 Hz at 0x1b78. It is 5389.4 ppm above the 106.667 MHz output (established).
- `usr/gfx/ucode/CRM/vof/1280x1024_60p.vfo` (12440 bytes), title `1280x1024_60p`: the 1280x1024_60 values, 16 bytes later, with clock word 107244648 Hz at 0x1b88. Its extra leading words are not decoded.
- `usr/gfx/ucode/CRM/vof/1280x1024_72.vfo` (12424 bytes), title `1280x1024_72@R`: the 1280x1024 at 72 Hz. Clock word 129467520 Hz at 0x1b78. It is 4112.8 ppm below the 130.000 MHz output (established).
- `usr/gfx/ucode/CRM/vof/1280x1024_75.vfo` (12424 bytes), title `1280x1024_75@R`: the 1280x1024 at 75 Hz. Clock word 135000585 Hz at 0x1b78. It is 4.3 ppm above the 135.000 MHz output (established).
- `usr/gfx/ucode/CRM/vof/1280x492_120s.vfo` (12740 bytes), title `1280x492_120 Stereo`: the second stereo format. Clock word 107143949 Hz at 0x1b98. It is 4454.6 ppm above the 106.667 MHz output (established).
- `usr/gfx/ucode/CRM/vof/1600x1024_48p.vfo` (12440 bytes), title `1600x1024_48p`: no single-channel base in the set. Clock word 97219200 Hz at 0x1b88. It is 785.3 ppm above the 97.143 MHz output (established).
- `usr/gfx/ucode/CRM/vof/1600x1024_50p.vfo` (12440 bytes), title `1600x1024_50p`: no single-channel base in the set. Clock word 101270000 Hz at 0x1b88, and the 100.000 MHz output is 12540.7 ppm lower, about 1.25 percent (established). Which of the two the board uses is unknown.
- `usr/gfx/ucode/CRM/vof/1600x1024_60p.vfo` (12440 bytes), title `1600x1024_60p`: no single-channel base in the set. Clock word 108732000 Hz at 0x1b88. It is 1476.8 ppm above the 108.571 MHz output (established).
- `usr/gfx/ucode/CRM/vof/2@1024x768_60.vfo` (12440 bytes), title `1024x768_60 Dual Channel@N`: the dual-channel 1024x768 at 60 Hz. Clock word 65000173 Hz at 0x1b88, the base file's value 16 bytes later (established). The `@N` suffix is not decoded.
- `usr/gfx/ucode/CRM/vof/2@1024x768_70.vfo` (12440 bytes), title `1024x768_70 Dual Channel@Q`: the dual-channel 1024x768 at 70 Hz. Clock word 74999615 Hz at 0x1b88, the base file's value (established).
- `usr/gfx/ucode/CRM/vof/2@1024x768_75.vfo` (12440 bytes), title `1024x768_75 Dual Channel@R`: the dual-channel 1024x768 at 75 Hz. Clock word 78750438 Hz at 0x1b88, with the same 9529.3 ppm gap to its output as the base file (established).
- `usr/gfx/ucode/CRM/vof/2@1280x1024_48.vfo` (12444 bytes), title `1280x1024_48 Dual Channel`: the dual-channel 1280x1024 at 48 Hz. Clock word 85881600 Hz at 0x1b8c, the base file's value 20 bytes later (established).
- `usr/gfx/ucode/CRM/vof/2@1280x1024_50.vfo` (12444 bytes), title `1280x1024_50 Dual Channel`: the dual-channel 1280x1024 at 50 Hz. Clock word 89460000 Hz at 0x1b8c, the base file's value (established).
- `usr/gfx/ucode/CRM/vof/2@1280x1024_60.vfo` (12444 bytes), title `1280x1024_60 Dual Channel`: the dual-channel 1280x1024 at 60 Hz. Clock word 107244648 Hz at 0x1b8c, the base file's value (established).
- `usr/gfx/ucode/CRM/vof/2@1280x1024_72.vfo` (12444 bytes), title `1280x1024_72 Dual Channel`: the dual-channel 1280x1024 at 72 Hz. Clock word 129467520 Hz at 0x1b8c, the base file's value (established).
- `usr/gfx/ucode/CRM/vof/2@1280x1024_75.vfo` (12444 bytes), title `1280x1024_75 Dual Channel`: the dual-channel 1280x1024 at 75 Hz. Clock word 135000585 Hz at 0x1b8c, the base file's value (established).

## Diagnostics

- `ide.IP32`, `symmon.IP32` and the PROM image `ip32prom.image`: the stand-alone diagnostics, the stand-alone kernel debugger (`symmon_brkhandler`, `symmon_exceptnorm`, the exception and breakpoint entries) and the boot firmware. `ide.IP32` carries the graphics and memory tests read in [gbe.md](gbe.md) and [memory.md](memory.md).
- `dualchannel` (`usr/sbin/Confidence/`): the confidence test for the dual-channel display option. It opens the X display, checks the extension version and reads and writes the channel gamma maps through `libXsgivc.so` (`XSGIvcQueryChannelGammaMap`, `XSGIvcStoreGammaColors16`), and refuses to run unless the frame buffer is 32 bits deep (established, imports and strings). Its messages report a DRAM test of the option board.

## Video and image-conversion libraries

These serve the O2's VICE media coprocessor and video, not CRIME rendering. They are in scope because VICE and the video paths address frame buffer tiles ([functions.md](functions.md), `crime_tileaddr_for_vice`).

- `libvice.so` (`usr/lib/internal/`, `usr/lib32/internal/`): the user-space VICE access library. It opens the device, maps it and drives it with `ioctl` (established imports), with routines to open, lock, program the VICE TLB (`vice_settlb`, `vice_updatetlb`) and copy host data (`vice_bcopyhto`).
- `vicedv.so`, `vicejpeg.so`, `vicempeg.so`, `vicers.so` (each under `dmedia/imageconverters/` of `usr/lib` and `usr/lib32`, with debug builds of the first, second and fourth under `debug/`): digital-media image converters for DV, JPEG, MPEG and a resampling converter, each a plug-in exporting `dmICInitDso` and built on `libvice.so` and `libdmedia.so` (established, exports and `DT_NEEDED`; the reading of `rs` as resampling is inferred from the export names).
- `usr/lib/dmedia/video/mvp.so` (331920 bytes, o32): the user-space library for the O2 video module, established from its dynamic symbols.
  It reaches the board only through `ioctl` on a video descriptor. It imports `open`, `close` and `ioctl`, and no `mmap` (established, `readelf --dyn-syms`). Its routines by address include `mvpOpenVideo` at 0x403a14 (336 bytes), `mvpCreatePath` at 0x403c44 (1016 bytes) and `mvpGetDeviceControls` at 0x4073cc (216 bytes). The export table has no `mvpDecodePath`, which the earlier text of this page named (established, `readelf --dyn-syms`).
  `mvpGetDeviceControls` clears a 144-byte request at its frame offset 40 with `bzero` (`jalr` at 0x40741c), stores the halfword 0x1fa at the request's +0 and calls `mvpControlIOCTL` at 0x406c4c with its first argument, the request and 0 (established, `objdump -d`; the call target is the GOT slot at 0x41d264, which holds 0x400000, plus 0x6c4c). `mvpControlIOCTL` has no dynamic symbol. It stores 0x90 at the request's +2, then calls `ioctl` with the word at +40 of its first argument as the descriptor, request 0x6d767005 and the request as the buffer (established, `objdump -d`). A -1 result runs `oserror`, then `mvpRevisionError` when `oserror` returns 7, then `mvpPrintf`, and the routine returns 17; any other result returns 0 (established, branch order and delay slots). `mvpGetDeviceControls` then copies 72 bytes from the request at +24 into its first argument's +288 (`bcopy` call at 0x407478; the first argument of `bcopy` is the source).
  `mvpOpenVideo` at 0x403a14 clears a 108-byte record at frame offset 52 (call at 0x403a90), calls `mvpCreatePath` at 0x403ab4 and `mvpSetupPath` at 0x403adc with the constants 2 and 1, then calls `mvpGetDeviceControls` at 0x403b0c. It returns 0 when that call returns 0. Otherwise it calls `mvpPanic` at 0x403b2c and returns the word at 48(sp), which the branch delay slot at 0x403b3c loads into v0 (established, `objdump -d`).
  Inferred: `mvpOpenVideo` is read through its calls and return path, and the other exports are listed by address only.
- `usr/lib/dmedia/video/debug/mvp.so` (332104 bytes, o32): the debug build of `usr/lib/dmedia/video/mvp.so`.
  Its `.text` section is byte-identical to the release build's, 0x10440 bytes at file offset 0x3270 (established, `cmp`), so the routine addresses and the `ioctl` path of the release entry hold for this file. The two differ in `.mdebug`, 0x2f888 bytes here against 0x2f7d0 (established, `readelf -S`). Inferred: the debug file was compared with the release file by `cmp`, not disassembled.
- `usr/lib32/dmedia/video/mvp.so` (308624 bytes, n32): the N32 build of the same library, with its own code at other addresses.
  Its `.text` is 0x11ba0 bytes at 0x403a60, and it has no `.mdebug` section, only `.debug_info` of 0x1ad7d bytes (established, `readelf -S`). Its device I/O imports are the same `open`, `close` and `ioctl`, again with no `mmap`; its full undefined-symbol list is shorter than the o32 build's (established, `readelf --dyn-syms`). Its exports are at N32 addresses: `mvpOpenVideo` at 0x404280 (396 bytes), `mvpCreatePath` at 0x404510 (1060 bytes) and `mvpGetDeviceControls` at 0x4080d0 (216 bytes). The request path under `mvpGetDeviceControls` is not read in this build. Inferred.
- `usr/lib32/dmedia/video/debug/mvp.so` (308656 bytes, n32): the debug build of the N32 `usr/lib32/dmedia/video/mvp.so`.
  Its `.text` section is byte-identical to that build's, 0x11ba0 bytes at 0x403a60 (established, `cmp`), and its `.debug_info` is 0x1ad8d bytes against 0x1ad7d (established, `readelf -S`). The routine addresses are those of the release entry above. Inferred, for the same reason as the o32 debug entry.

Per-file entries for the o32 image-converter plug-ins under `usr/lib/dmedia/imageconverters/`. Each file's `dmICInitDso` routine was read in full with `objdump -d` through the MIPS toolchain, with callees named from the PIC GOT slots. Imports are from `readelf --dyn-syms`.

- `usr/lib/dmedia/imageconverters/vicedv.so` (566344 bytes): the DV converter plug-in.
  `dmICInitDso` at 0x403bd0 (268 bytes) copies a converter descriptor from `.data` to its frame in 12-byte steps.
  It calls `dmICRegisterConverter` at 0x403c34 and 0x403c90, and `dmSetError` at 0x403cb4 (established, `objdump -d`).
  Its DV coding routines include `buildQM` at 0x4073d0 and `codeBuffer` at 0x408200 (inferred from the export names).
  It reaches the VICE media processor only through `libvice.so`: it imports `vice_open`, `vice_load_msp_code` and `vice_load_bsp_code` (established, dynamic symbols).
  It also imports `vice_load_bsp_table`, `vice_dmbuf_send` and `vice_dmbuf_recv` from `libvice.so` (established, dynamic symbols).
- `usr/lib/dmedia/imageconverters/vicejpeg.so` (78576 bytes): the JPEG converter plug-in.
  `dmICInitDso` at 0x40248c (268 bytes) calls `dmICRegisterConverter` at 0x4024f0 and 0x40254c, and `dmSetError` at 0x402570 (established, `objdump -d`).
  Its table builders are `jhead_make` at 0x406af8 (420 bytes), `jhead_luma_make` at 0x406c9c (348 bytes) and `vjpeg_qfmt` at 0x406e00 (340 bytes) (established, dynamic symbols; the roles are inferred from the export names).
  It maps VICE memory and programs the VICE TLB: it imports `vice_alloc`, `vice_mmap` and `vice_settlb` from `libvice.so` (established, dynamic symbols).
  It loads microcode with `vice_load_msp_code`, `vice_load_bsp_code` and `vice_load_bsp_table` (established, dynamic symbols).
- `usr/lib/dmedia/imageconverters/vicempeg.so` (29696 bytes): the MPEG converter plug-in and its only export, `dmICInitDso` at 0x401020 (356 bytes).
  The routine has a 176-byte frame and calls `dmICRegisterConverter` once, at 0x401158 (established, `objdump -d`).
  It sends and receives buffers with `vice_dmbuf_msend` and `vice_dmbuf_recv` from `libvice.so` (established, dynamic symbols).
  It loads microcode with `vice_load_msp_code`, `vice_load_bsp_code` and `vice_load_bsp_table` (established, dynamic symbols).
- `usr/lib/dmedia/imageconverters/vicers.so` (31008 bytes): the resampling converter plug-in, and its only export is `dmICInitDso` at 0x40187c (144 bytes).
  The routine copies a 76-byte descriptor from `.data` onto its frame, in six 12-byte steps and one word.
  It passes the first four words to `dmICRegisterConverter` at 0x4018e0 and returns -1 when that call returns a negative value, otherwise 0 (established, `objdump -d`).
  The reading of `rs` as resampling is inferred from the export names.
  It imports the VICE open and load routines of `libvice.so`: `vice_open`, `vice_file` and `vice_load_msp_code` (established, dynamic symbols).
  It transfers buffers with `vice_dmbuf_send`, `vice_dmbuf_recv` and `vice_dms_geterrs` (established, dynamic symbols).
- `usr/lib/dmedia/imageconverters/debug/vicedv.so` (643984 bytes): the debug build of `vicedv.so`, with the same DV exports and VICE imports.
  Its `dmICInitDso` at 0x403c88 (280 bytes) calls `dmICRegisterConverter` at 0x403cec and 0x403d48, and `dmSetError` at 0x403d6c (established, `objdump -d`).
  Its `.mdebug` section is 0x1e200 bytes against 0xb2b8 in the release build, and its `.text` is 0xc710 bytes against 0xc200 (established, `objdump -h`).
  Its string table holds `dvNoiseMode`, which the release build's table holds too (established, `strings`).
- `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` (136276 bytes): the debug build of `vicejpeg.so`, with the same JPEG exports.
  Its `dmICInitDso` at 0x4025a8 (280 bytes) calls `dmICRegisterConverter` at 0x40260c and 0x402668, and `dmSetError` at 0x40268c (established, `objdump -d`).
  Its imports are the release build's VICE imports, `vice_mmap` and `vice_settlb` included (established, dynamic symbols).
- `usr/lib/dmedia/imageconverters/debug/vicers.so` (64972 bytes): the debug build of `vicers.so`, with the same single export.
  Its `dmICInitDso` at 0x401928 (156 bytes) calls `dmICRegisterConverter` once, at 0x40198c, and does not call `dmSetError` (established, `objdump -d`).
  Its VICE imports are the release build's, from `vice_open` through `vice_dmbuf_recv` (established, dynamic symbols).

The N32 plug-ins under `usr/lib32/dmedia/imageconverters/` are separate builds, at other addresses and with their own code.
Each `dmICInitDso` below was read in full with `objdump -d`.
Callees are named through the GOT. A global callee's slot is `PLTGOT + 4 × (MIPS_LOCAL_GOTNO + dynsym index − MIPS_GOTSYM)` (established, `readelf -d` and `readelf --dyn-syms`).
Each file's `gp` is the value its prologue computes with `addu gp,t9,…` (established).
A local GOT pointer's value is not read, so descriptor entries are given by their offset from that pointer.
None of the seven N32 plug-ins has a `.mdebug` section (established, `readelf -S`).
- `usr/lib32/dmedia/imageconverters/vicedv.so` (559968 bytes): the N32 DV converter plug-in.
  It exports `dmICInitDso` at 0x403ac0 and the DV coding routines named in the o32 entry above (established, `readelf --dyn-syms`). The roles of the DV routines are inferred from their export names.
  `dmICInitDso` is 224 bytes at 0x403ac0 with gp 0x483b74 (established, `objdump -d`).
  It calls `dmICRegisterConverter` twice, through slot 0x47bc40 (dynsym index 63).
  It calls `dmSetError` through slot 0x47bc1c (index 54) on failure (established, slot formula).
  The descriptor pointer is the local GOT slot 0x47bbbc plus 1880.
  The first call passes the doublewords at +80 to +136 in `a0` to `a7`.
  The ninth argument is the doubleword at +144, and the tenth is the word at +152 (established, loads in the body).
  The second call passes +0 to +56 in `a0` to `a7`, the doubleword at +64 as the ninth argument and the word at +72 as the tenth (established).
  A negative result from either call takes the path at 0x403b74. That path calls `dmSetError` with code 6004 (0x1774) and returns -1.
  Otherwise the function returns 0 (established, branch order).
- `usr/lib32/dmedia/imageconverters/vicejpeg.so` (69880 bytes): the N32 JPEG converter plug-in.
  It exports `dmICInitDso` at 0x4022b4 (232 bytes) and `vjpeg_qfmt` at 0x405670 (104 bytes).
  It also exports `jhead_make` at 0x405410 (336 bytes) and `jhead_luma_make` at 0x405560 (272 bytes).
  It exports the table `Qtab` (15360 bytes) and `qtoi` (101 bytes) (established, `readelf --dyn-syms`; the roles of the table builders are inferred from their export names).
  `dmICInitDso` runs with gp 0x4148d0 (established, `objdump -d`).
  It calls `dmICRegisterConverter` twice, through slot 0x40c974.
  It calls `dmSetError` through slot 0x40c994 on failure (established, slot formula).
  The descriptor base is the local GOT slot 0x40c918 value minus 14376.
  The first call passes +0 to +56 in `a0` to `a7`, the doubleword at +64 as the ninth argument and the word at +72 as the tenth (established, loads in the body).
  The second call passes +80 to +136 in `a0` to `a7`, the doubleword at +144 as the ninth argument and the word at +152 as the tenth (established).
  On failure the function builds two addresses from the same slot, at offsets −32664 and −32424, calls `dmSetError` with 6004, and returns -1.
  Success returns 0 (established, branch order).
- `usr/lib32/dmedia/imageconverters/vicempeg.so` (23764 bytes): the N32 MPEG converter plug-in and its only export, `dmICInitDso` at 0x401020 (344 bytes).
  It imports the VICE routines of `libvice.so`, among them `vice_open`, `vice_file` and `vice_dmbuf_msend` (established, dynamic symbols).
  It also imports the buffer routines `dmBufferGetUSTMSCpair` and `dmBufferSetUSTMSCpair` (established, dynamic symbols).
  `dmICInitDso` runs with gp 0x40c17c and a 112-byte frame (established, `objdump -d`).
  It calls `dmICRegisterConverter` once, through slot 0x404208. It does not call `dmSetError`.
  Before the call it stores 18 words, one at each 4-byte offset from 16(sp) through 84(sp).
  Each is a local GOT slot value plus a constant (established, `sw` instructions).
  The call takes the doublewords at 16(sp) through 72(sp) in `a0` to `a7`.
  The ninth argument is the doubleword at 80(sp), and the tenth is loaded from 88(sp) (established, loads in the body).
  No store in this routine writes 88(sp) (established, store list), so the tenth argument is whatever the frame held.
  A negative result returns -1 through 0x401164. Otherwise the function returns 0.
- `usr/lib32/dmedia/imageconverters/vicers.so` (24656 bytes): the N32 resampling converter plug-in and its only export, `dmICInitDso` at 0x401894 (132 bytes).
  It imports the VICE open, load and transfer routines, among them `vice_open`, `vice_dmbuf_send` and `vice_dms_geterrs` (established, dynamic symbols).
  The resampling reading is inferred from the export name.
  `dmICInitDso` runs with gp 0x40c28c and a 32-byte frame (established, `objdump -d`).
  It calls `dmICRegisterConverter` once, through slot 0x404340, and does not call `dmSetError`.
  The descriptor base is the local GOT slot 0x4042d0 value plus 16976.
  The call passes +0 to +56 in `a0` to `a7`, the doubleword at +64 as the ninth argument and the word at +72 as the tenth (established, loads in the body).
  A negative result returns -1. Any other result returns 0.
- `usr/lib32/dmedia/imageconverters/debug/vicedv.so` (595700 bytes): the debug build of `vicedv.so`, with the same DV exports.
  `dmICInitDso` at 0x403e60 is 260 bytes with gp 0x487bac (established, `objdump -d`).
  It calls `dmICRegisterConverter` twice, through slot 0x47fc7c.
  It calls `dmSetError` through slot 0x47fc58 on failure (established, slot formula).
  Both descriptors come from the local GOT slot 0x47fbf4: the first call uses that slot plus 18400, the second that slot plus 18320.
  Each call passes +0 to +56 in `a0` to `a7`, the doubleword at +64 as the ninth argument and the word at +72 as the tenth (established, loads in the body).
  The first descriptor is therefore 80 bytes past the second.
  A failure from either call goes to 0x403f18. That path calls `dmSetError` with 6004 and stores -1 as the return value.
  Success stores 0 (established, branch order and stores).
- `usr/lib32/dmedia/imageconverters/debug/vicejpeg.so` (97368 bytes): the debug build of `vicejpeg.so`, with the same JPEG exports.
  `dmICInitDso` at 0x4027c0 is 264 bytes with gp 0x4188d0 (established, `objdump -d`).
  It calls `dmICRegisterConverter` twice, through slot 0x410988.
  It calls `dmSetError` through slot 0x410960 on failure (established, slot formula).
  The descriptor base is the local GOT slot 0x410918 plus 2008.
  The first call passes +0 to +56 in `a0` to `a7`, the doubleword at +64 as the ninth argument and the word at +72 as the tenth.
  The second call uses the same layout at that slot plus 2088, which is 80 bytes further on (established, loads in the body).
  A failure from either call goes to 0x402878. That path calls `dmSetError` with 6004 and stores -1 as the return value.
  Success stores 0 (established, branch order).
- `usr/lib32/dmedia/imageconverters/debug/vicers.so` (31332 bytes): the debug build of `vicers.so`, with the same single export.
  Its `dmICInitDso` is 152 bytes at 0x401b80 with gp 0x40c28c (established, `objdump -d`).
  It calls `dmICRegisterConverter` once, through slot 0x404338, and does not call `dmSetError`.
  The descriptor base is the local GOT slot 0x4042d0 value plus 16976, and the call passes the same layout as the release build (established, loads in the body).
  A negative result stores -1 as the return value. Any other result stores 0 (established, branch order and stores).
The X video-control client library and the VICE library, one entry per build.
Export addresses and sizes are from `readelf --dyn-syms`, and imports are from the same table (established).
Roles are inferred from the export names unless a routine is read in full.
- `usr/lib/libXsgivc.so` (74804 bytes, o32): the X video-control client library.
  Its soname is `libXsgivc.so`, and it needs `libXext.so`, `libX11.so.1` and `libc.so.1` (established, `readelf -d`).
  It has a `.mdebug` section (established, `readelf -S`).
  Its exports include `XSGIvcQueryVersion` at 0x0f4022d4 (480 bytes) and `XSGIvcLoadVideoFormat` at 0x0f4036e4 (688 bytes).
  They also include `XSGIvcQueryChannelInfo` at 0x0f403f1c (1724 bytes) and `XSGIvcSetOutputGain` at 0x0f4049d8 (316 bytes).
  Its imports are the Xlib and Xext transport only.
  They are `XextCreateExtension`, `XextFindDisplay` and `_XSend`.
  The others are `_XReply` and `_XRead`.
  It imports no `open`, `ioctl`, `mmap` or other device call (established, dynamic symbols).
  So it reaches the board only through the X server's extension requests, and the server's module does the device work (inferred from the imports and the export names).
- `usr/lib32/libXsgivc.so` (76084 bytes, n32): the N32 build of the same client library.
  It needs the same three libraries (established, `readelf -d`).
  It has no `.mdebug` section, only `.debug_info` (established, `readelf -S`).
  Its exports include `XSGIvcQueryChannelInfo` at 0x0f402b30 (1616 bytes) and `XSGIvcSendMonitorCommand` at 0x0f403b70 (440 bytes).
  They also include `XSGIvcNVLoadVideoFormatCombination` at 0x0f403500 (748 bytes) and `XSGIvcStoreGammaColors16` at 0x0f404bb0 (452 bytes).
  Its imports are the same Xlib and Xext transport set, with no device call (established, dynamic symbols).
  Its role is inferred as for the o32 build, and no routine body is read here.
- `usr/lib64/libXsgivc.so` (80696 bytes, n64): the 64-bit build of the same client library.
  It needs the same three libraries (established, `readelf -d`).
  It has `.debug_info` and no `.mdebug` (established, `readelf -S`).
  Its exports include `XSGIvcQueryChannelInfo` at 0x2003250 (1712 bytes) and `XSGIvcSendMonitorCommand` at 0x2004350 (456 bytes).
  They also include `XSGIvcListVideoFormats` at 0x20048f0 (908 bytes).
  Its imports are the Xlib transport set plus `_XData32`, with no device call (established, dynamic symbols).
  Its role is inferred as for the o32 build, and no routine body is read here.
- `usr/lib/internal/libvice.so` (39368 bytes, o32): the user-space VICE access library.
  It needs `libc.so.1` and `libdmedia.so` (established, `readelf -d`) and has a `.mdebug` section (established, `readelf -S`).
  Its exports include `vice_open` at 0x0d00198c (668 bytes), `vice_mmap` at 0x0d002284 (184 bytes) and `vice_close` at 0x0d001c94 (228 bytes).
  It imports `open`, `ioctl` and `close`.
  It also imports `mmap`, `munmap` and `stat`.
  Those are established from dynamic symbols, so it reaches the VICE device through a file descriptor and a mapping.
  No routine body is read in this build, so the device sequence is not stated here; the N32 build's `vice_open` is read below.
- `usr/lib32/internal/libvice.so` (35156 bytes, n32): the N32 build of the same library.
  It has no `.mdebug` section (established, `readelf -S`).
  Its exports include `vice_open` at 0x0d00198c (568 bytes) and `vice_mmap` at 0x0d002194 (144 bytes).
  It imports `open`, `ioctl` and `mmap`.
  It also imports `munmap`, `stat` and `creat`.
  These are established from dynamic symbols.
  `vice_open` is read in full with `objdump -d`, and its GOT callees are named by the slot formula (established).
  It calls `getenv` and stores the pointer it returns in the word that the `_vicenoise` slot names, then calls `_vice_unit_find` (established, the store sits in the delay slot of the second call).
  When the find result is -1 and that stored word is nonzero, it prints through `printf` and returns -1 (established, branch order).
  Otherwise it calls `open` with `a0` as the device path and flags 2 (`O_RDWR`).
  A negative descriptor is not closed. The routine calls `_vice_unit_unfind`, after a `printf` when the stored word is nonzero, and returns -1 (established, branch order).
  A usable descriptor gets `ioctl` with request 0x7678001f and argument 0.
  If bits 16 to 31 of the result are not 27514 (0x6b7a), it calls `_vice_unit_unfind`, closes the descriptor and returns -1.
  If they are 27514 and the word that the `_viceid` slot names is nonzero, it goes on to `mmap` (established, branch order).
  If that word is zero, it calls `ioctl` with request 0x76782000 and stores the result in `_viceid`, unless the result is -1, which closes the descriptor and returns -1 (established, branch order and stores).
  The `mmap` call takes address 0, length 0x14000, protection 3, flags 1, the descriptor and offset 0 (established, constants).
  A map result of -1 calls `_vice_unit_unfind`, closes the descriptor and returns -1.
  Otherwise the routine stores the descriptor in `_vicefd` and the map address in `_vice_base`, each at 4 times the unit index, and returns the unit index (established, stores and the `move v0,s1` in a delay slot).
