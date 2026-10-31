# Binaries in scope

What each file in the inventory is and why it is read, for the IRIX 6.5.30 O2 configuration. The routines inside each file are indexed in [functions.md](functions.md), [xmodule.md](xmodule.md) and [gl-entry-points.md](gl-entry-points.md). Labels: **established** (read from the file's own imports, exports, strings or code), **inferred** (from its name or install path). Imports and exports were read with `readelf --dyn-syms` (shared objects and executables) and `nm -u` (kernel objects).

## Kernel objects (`usr/cpu/sysgen/IP32boot/`)

- `crime.a`, `mace.o`: the O2 graphics driver and the MACE interrupt mask; indexed by member in [functions.md](functions.md).
- `usr/cpu/sysgen/IP32boot/gfx.o`: the board-independent graphics device layer every SGI graphics driver plugs into, 40296 bytes with 57 routines (established from its exports and the CRIME driver's imports of them).
  It defines the graphics device's open, close, ioctl and fault entries and the per-thread graphics state that the CRIME driver looks up (`gthread_find`); its routines are indexed in [functions.md](functions.md). The member of the same name in `gfxs.a` holds these same 40296 bytes followed by 12 zero bytes, and both have 57 routines (see the member entry below).
- `gfx_debug.o`, a member of `gfxs.a`: an empty object of 964 bytes with no symbols at all (established, `nm`), so it contributes no code to the 6.5.30 kernel.
- `rrm.o`: the rendering resource manager, the board-independent layer that owns render nodes, binds them to processes and windows, and schedules swaps. Its command table is in [ioctls.md](ioctls.md) (established from `RRM_Dispatch` and its relocations).
- `tile.o`, the one member read from `os.a`: the kernel's 64 KiB tile pool, which the CRIME driver and `mvp.o` use for frame buffer, texture and video buffers (established: `mvp.o` imports `tile_mapin` and `tile_mapout`).
- `kernel.o`: the base kernel. Read only for the routines the graphics objects call.
- `mvp.o`: the O2 video kernel driver. It is in scope because it couples to the graphics driver: it imports `crime_getustmsc`, `crime_retrace_callback` and `crime_video_info` from `crime.a`, `dms_block_get_tile_list` and the tile pool, and installs CRIME interrupt handlers through `setcrimevector` and `unsetcrimevector` (established, `nm -u`). Its own routines manage the video transfer paths (`mvptransfer_*`).
- `a3_dd.o`: the O2 audio driver, 53544 bytes with 55 routines (inferred).
  The audio role is inferred from its codec routine `a3_init_codec` at 0xef4. Its imports tie it to the CRIME interrupt only: it imports `setcrimevector` and `unsetcrimevector` and nothing else from the graphics objects (established, `nm -u`). Its own symbols include an I2C helper set, `mvpi2c_read_reg` at 0x3688 and `a3_mvp_probe` at 0x3878 (established, symbol table); their bodies are not read here, and whether `a3_check_for_video` at 0x38e0 uses that path is unknown until that routine is read in full.

The members of `crime.a`, `gfxs.a` and the single object `mace.o` have their own entries below. Each member entry gives the routines by address and size, what each one does to the hardware (through a mapped window, a physical address the code builds, or not at all), and the label.

- `crime.a(crime_busts.o)`: no graphics role, 980 bytes with 0 routines.
  Its disassembly has no instructions at all. Its `.debug_info` section is 48 bytes at file offset 0x1b0, and the other sections are metadata: `.comment`, `.MIPS.options`, `.reginfo` and two more debug sections (established, `objdump -d` and `objdump -h`). It contributes nothing to the driver.
- `crime.a(crime_db.o)`: tile-use bookkeeping for the back buffer. It touches kernel memory only and no board register (established, both routines read in full). Two routines:
  `crmAddBackTiles` at 0x0 (252 bytes) takes a record, a count and an array of byte slots. It calls `crmAllocTiles` for the count; adds the count to the halfwords at +2 and +6 of `crm_tileusage`; stores each returned tile number into the record's 16-bit table at the slot the byte array gives; adds the count to the word at record +4; calls `crmNextIncarnation` and keeps its result at record +16. It returns 0, or 1 when `crmAllocTiles` fails.
  `crmSubtractBackTiles` at 0xfc (220 bytes) calls `kern_malloc` for a scratch array of two bytes per slot and moves each nonzero table entry into it, clearing the entry. It always ends with `kern_free` on that array. When any entry moved, it subtracts the moved count from record +4, calls `crmNextIncarnation`, and calls `crmFreeTiles` on the scratch array with the moved count, keeping its result at record +16.
- `crime.a(crime_debug.o)`: register-window classification and a table search. Inferred: the routines are read in full, but the meaning of the record bits and the return values of `crmFindPP` are read from its branches, not from a specification.
  `crmIsGlobalRegWrite` at 0x0 (56 bytes) returns 1 for register offsets below 0x2000 and for offsets from 0x2200 up. For offsets 0x2000 to 0x21ff it returns the byte at this object's `.data` +0, indexed by (offset >> 2) & 0x3ff, so the 512-byte window uses indexes 0 to 127 of that table, one flag byte per word.
  `crmFindPP` at 0x38 (296 bytes) walks a ring of 64 two-word records at the base it is given plus 512, from the index before its count argument backwards and wrapping from 0 to 63. A record whose word has bit 13 set ends the search with -1. Otherwise it builds a register offset from the low byte (times 8) and bits 8 to 10 (shifted up by 12) and passes it to `crmIsGlobalRegWrite`; a nonzero result also ends the search with -1. The search gives up when it returns to the count index.
- `crime.a(crime_zbuf.o)`: a 16-bit mask merge over tile-use records, 5876 bytes with 2 routines (inferred).
  The calls and the merge loop are read in full, but the bit meaning of the masks is inferred from the operations, not from a specification. `crmAddZ` at 0x0 (772 bytes) calls `kern_malloc` at 0x14c, `crmAllocTiles` at 0x168, `crmSubtractZ` at 0x1c8, `kern_free` at 0x1d0 and `crmNextIncarnation` at 0x244. Its second loop (0x180 to 0x1c0) XORs halfwords from the array at its argument into the stack scratch array, two per iteration. `crmSubtractZ` at 0x304 (376 bytes) calls `kern_malloc` at 0x324, `crmNextIncarnation` at 0x424, `crmFreeTiles` at 0x444 and `kern_free` at 0x458. The object's `.bss` table `crmzbuffer` (1032 bytes) is named by no relocation in either routine.
- `crime.a(crime_tp.o)`: the textport and colour-map routines of the CRIME driver, 11412 bytes with 11 routines (inferred).
  `crime_color` and `crime_mapcolor` are read in full, and the rest of the routines are listed by address and size only. `crime_color` at 0x0 (44 bytes) takes its argument plus one (or 255 when the argument is 255 or more), copies that byte into all four bytes of a 32-bit word and stores the word at `.bss` +8. `crime_mapcolor` at 0x2c (164 bytes) takes the board base from the word at `crimeBoards` +4 and reads the status word at board +0x58000. Its wait calls `us_delay(1)` at 0x6c, but that call cannot run: the wait is entered only when the status word's low six bits are nonzero, and the test at 0x64 then skips it because the whole word is nonzero (established, branch order). The routine stores a 32-bit colour word at board +0x54404 plus 4 times its index argument. `crime_sboxfi` at 0xd0 (296 bytes) calls `crmFifoWait` at 0x110 with count 7 and the constant 0x000abcde, and `crmIdleWait` at 0x1cc with the same constant. The routines `crime_pnt2i` at 0x1f8 (184 bytes), `crime_cmov2i` at 0x2b0 (20 bytes), `crime_drawbitmap` at 0x2c4 (1664 bytes), `crime_unblank` at 0x944 (52 bytes), `crime_getdesc` at 0x978 (24 bytes), `crime_positioncursor` at 0x990 (44 bytes), `crime_clearfb` at 0x9bc (284 bytes) and `crime_tpinit` at 0xad8 (232 bytes) are listed but not read here.
- `crime.a(crime_init.o)`: board probe, timing and start-up routines, 19972 bytes with 14 routines (inferred).
  `gbeProbe` and `crimeProbe` are read in full, and the remaining routines are listed by address and size only. `gbeProbe` at 0x0 (68 bytes) takes the window base; when the word at +0x14 equals 0x666 it stores 0x30000000 at offset 0, then if bit 31 of the word at offset 0x10000 is set it stores zero there, and it returns 1 in both cases; otherwise it returns 0. `crimeProbe` at 0x44 (68 bytes) loads the 64-bit word at address 0xb4000000 (built with `lui` 0xb400) and returns 1 when the low byte has high nibble 0xa and is not 0xa0, and 0 otherwise. The other routines are `getNvramTiming` at 0x88, `crimeInitInfo` at 0xec (940 bytes), `crimeInitHW` at 0xb90 (596 bytes), `crmInitTp` at 0xde4 (864 bytes), `crmInvalidVideoTiming` at 0x1144, `crime_setvideotiming` at 0x119c (732 bytes), `gbeBlankScreen` at 0x15d0, `gbeRun` at 0x1510 (192 bytes) and `gbeStop` at 0x16fc (420 bytes). The `crimeVTimings` table is 768 bytes of `.data`.
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

## Diagnostics

- `ide.IP32`, `symmon.IP32` and the PROM image `ip32prom.image`: the stand-alone diagnostics, the stand-alone kernel debugger (`symmon_brkhandler`, `symmon_exceptnorm`, the exception and breakpoint entries) and the boot firmware. `ide.IP32` carries the graphics and memory tests read in [gbe.md](gbe.md) and [memory.md](memory.md).
- `dualchannel` (`usr/sbin/Confidence/`): the confidence test for the dual-channel display option. It opens the X display, checks the extension version and reads and writes the channel gamma maps through `libXsgivc.so` (`XSGIvcQueryChannelGammaMap`, `XSGIvcStoreGammaColors16`), and refuses to run unless the frame buffer is 32 bits deep (established, imports and strings). Its messages report a DRAM test of the option board.

## Video and image-conversion libraries

These serve the O2's VICE media coprocessor and video, not CRIME rendering. They are in scope because VICE and the video paths address frame buffer tiles ([functions.md](functions.md), `crime_tileaddr_for_vice`).

- `libvice.so` (`usr/lib/internal/`, `usr/lib32/internal/`): the user-space VICE access library. It opens the device, maps it and drives it with `ioctl` (established imports), with routines to open, lock, program the VICE TLB (`vice_settlb`, `vice_updatetlb`) and copy host data (`vice_bcopyhto`).
- `vicedv.so`, `vicejpeg.so`, `vicempeg.so`, `vicers.so` (each under `dmedia/imageconverters/` of `usr/lib` and `usr/lib32`, with debug builds of the first, second and fourth under `debug/`): digital-media image converters for DV, JPEG, MPEG and a resampling converter, each a plug-in exporting `dmICInitDso` and built on `libvice.so` and `libdmedia.so` (established, exports and `DT_NEEDED`; the reading of `rs` as resampling is inferred from the export names).
- `mvp.so` (`dmedia/video/` and `dmedia/video/debug/` of `usr/lib` and `usr/lib32`): the user-space video library module for the O2 video hardware, with routines that open video, build and decode paths (`mvpOpenVideo`, `mvpCreatePath`, `mvpDecodePath`); established, exports.

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
  It has the `.mdebug` section the release build lacks (established, `readelf -S`).
  Its string table holds `dvNoiseMode` (established, `strings`).
- `usr/lib/dmedia/imageconverters/debug/vicejpeg.so` (136276 bytes): the debug build of `vicejpeg.so`, with the same JPEG exports.
  Its `dmICInitDso` at 0x4025a8 (280 bytes) calls `dmICRegisterConverter` at 0x40260c and 0x402668, and `dmSetError` at 0x40268c (established, `objdump -d`).
  Its imports are the release build's VICE imports, `vice_mmap` and `vice_settlb` included (established, dynamic symbols).
- `usr/lib/dmedia/imageconverters/debug/vicers.so` (64972 bytes): the debug build of `vicers.so`, with the same single export.
  Its `dmICInitDso` at 0x401928 (156 bytes) calls `dmICRegisterConverter` once, at 0x40198c, and does not call `dmSetError` (established, `objdump -d`).
  Its VICE imports are the release build's, from `vice_open` through `vice_dmbuf_recv` (established, dynamic symbols).
