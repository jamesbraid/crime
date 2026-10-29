# Binaries in scope

What each file in the inventory is and why it is read, for the IRIX 6.5.30 O2 configuration. The routines inside each file are indexed in [functions.md](functions.md), [xmodule.md](xmodule.md) and [gl-entry-points.md](gl-entry-points.md). Labels: **established** (read from the file's own imports, exports, strings or code), **inferred** (from its name or install path). Imports and exports were read with `readelf --dyn-syms` (shared objects and executables) and `nm -u` (kernel objects).

## Kernel objects (`usr/cpu/sysgen/IP32boot/`)

- `crime.a`, `mace.o`: the O2 graphics driver and the MACE interrupt mask; indexed by member in [functions.md](functions.md).
- `gfx.o` (also shipped as the member `gfx.o` of `gfxs.a`, a separately built copy with the same 55 functions): the board-independent graphics device layer every SGI graphics driver plugs into. It defines the graphics device's open, close, ioctl and fault entries and the per-thread graphics state that the CRIME driver looks up (`gthread_find`); its routines are indexed in [functions.md](functions.md). Established from its exports and from the CRIME driver's imports of them.
- `gfx_debug.o`, a member of `gfxs.a`: an empty object of 964 bytes with no symbols at all (established, `nm`), so it contributes no code to the 6.5.30 kernel.
- `rrm.o`: the rendering resource manager, the board-independent layer that owns render nodes, binds them to processes and windows, and schedules swaps. Its command table is in [ioctls.md](ioctls.md) (established from `RRM_Dispatch` and its relocations).
- `tile.o`, the one member read from `os.a`: the kernel's 64 KiB tile pool, which the CRIME driver and `mvp.o` use for frame buffer, texture and video buffers (established: `mvp.o` imports `tile_mapin` and `tile_mapout`).
- `kernel.o`: the base kernel. Read only for the routines the graphics objects call.
- `mvp.o`: the O2 video kernel driver. It is in scope because it couples to the graphics driver: it imports `crime_getustmsc`, `crime_retrace_callback` and `crime_video_info` from `crime.a`, `dms_block_get_tile_list` and the tile pool, and installs CRIME interrupt handlers through `setcrimevector` and `unsetcrimevector` (established, `nm -u`). Its own routines manage the video transfer paths (`mvptransfer_*`).
- `a3_dd.o`: the O2 audio driver (`a3_probe`, `a3_init_codec`, `a3_write_output_gain`). Its only coupling to this workspace is a CRIME interrupt: it imports `setcrimevector` and `unsetcrimevector` and nothing else from the graphics objects (established, `nm -u`).

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
- `vicedv.so`, `vicejpeg.so`, `vicempeg.so`, `vicers.so` (each under `dmedia/imageconverters/` of `usr/lib` and `usr/lib32`, with debug builds of the first, second and fourth under `debug/`): digital-media image converters for DV, JPEG, MPEG and a resampling converter, each a plug-in exporting `dmICInitDso` and built on `libvice.so` and `libdmedia.so` (established, exports and `DT_NEEDED`; the reading of `rs` as resampling is inferred from the name).
- `mvp.so` (`dmedia/video/` and `dmedia/video/debug/` of `usr/lib` and `usr/lib32`): the user-space video library module for the O2 video hardware, with routines that open video, build and decode paths (`mvpOpenVideo`, `mvpCreatePath`, `mvpDecodePath`); established, exports.
