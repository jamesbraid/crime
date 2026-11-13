# IRIX files needed for SGI O2 (CRIME) reverse engineering

This lists the proprietary SGI files a reader copies from their own IRIX
install into a local `root/` directory. They are not tracked in source control.
Paths only: this repository holds no file contents.

`root/` mirrors the IRIX filesystem. The top-level binary directories
(`software/kernel/`, `software/opengl/`, `software/xsgi/`, `software/diags/`) hold relative symlinks into
`root/`.

Every path below was checked against a real IRIX 6.5.30 O2 install and against the
IRIX 6.5.30 install media (section 2 has the hashes). The files are
read-only inputs: copy them, never edit them.

## 1. IRIX 6.5.30 (primary)

Target: an O2 (IP32) running `uname -R` = `6.5 6.5.30m` with the graphics
subsystem and X server installed (the `eoe` and `x_eoe` products).

```files
/usr/cpu/sysgen/IP32boot/crime.a
/usr/cpu/sysgen/IP32boot/mace.o
/usr/cpu/sysgen/IP32boot/gfx.o
/usr/cpu/sysgen/IP32boot/gfxs.a
/usr/cpu/sysgen/IP32boot/rrm.o
/usr/cpu/sysgen/IP32boot/kernel.o
/usr/cpu/sysgen/IP32boot/os.a
/usr/gfx/arch/IP32CRM/libGL.so
/usr/gfx/arch/IP32CRM/libGLcore.so
/usr/gfx/arch/IP32CRM32/libGL.so
/usr/gfx/arch/IP32CRM32/libGLcore.so
/usr/lib/X11/dyDDX/crm.so
/usr/lib/X11/dyDDX/glx.so
/usr/lib32/libXsgivc.so
/usr/gfx/arch/GENERIC/Xsgi
/usr/gfx/gfxinit
/usr/gfx/setmon
/usr/gfx/ucode/CRM/vof
/sbin/stand/ide.IP32
/sbin/stand/symmon.IP32
/usr/cpu/firmware/ip32prom.image
/usr/sbin/Confidence/dualchannel
/usr/cpu/sysgen/IP32boot/mvp.o
/usr/cpu/sysgen/IP32boot/a3_dd.o
/usr/lib/libXsgivc.so
/usr/lib64/libXsgivc.so
/usr/lib/dmedia/video/mvp.so
/usr/lib/dmedia/video/debug/mvp.so
/usr/lib32/dmedia/video/mvp.so
/usr/lib32/dmedia/video/debug/mvp.so
/usr/lib/internal/libvice.so
/usr/lib32/internal/libvice.so
/usr/lib/dmedia/imageconverters/vicedv.so
/usr/lib/dmedia/imageconverters/vicejpeg.so
/usr/lib/dmedia/imageconverters/vicempeg.so
/usr/lib/dmedia/imageconverters/vicers.so
/usr/lib32/dmedia/imageconverters/vicedv.so
/usr/lib32/dmedia/imageconverters/vicejpeg.so
/usr/lib32/dmedia/imageconverters/vicempeg.so
/usr/lib32/dmedia/imageconverters/vicers.so
/usr/lib/dmedia/imageconverters/debug/vicedv.so
/usr/lib/dmedia/imageconverters/debug/vicejpeg.so
/usr/lib/dmedia/imageconverters/debug/vicers.so
/usr/lib32/dmedia/imageconverters/debug/vicedv.so
/usr/lib32/dmedia/imageconverters/debug/vicejpeg.so
/usr/lib32/dmedia/imageconverters/debug/vicers.so
```

The `members` block lists the archive members that are in scope; an archive
not named there is in scope whole. `os.a` is the whole base kernel, so only the
tile allocator is read. `retools/tools/inventory.py` reads both blocks.

```members
/usr/cpu/sysgen/IP32boot/os.a tile.o
```

### Where each group goes

| Group | Files | Location under `root/` |
|---|---|---|
| Kernel (`software/kernel/`) | `crime.a` (11 members: `crime.o`, `crime_dma.o`, `crime_tiles.o`, `crime_zbuf.o`, ...), `mace.o`, `gfx.o`, `rrm.o`, `kernel.o` (the machine-dependent base kernel: interrupt set-up and the CRIME error handlers), `os.a` (the base kernel, read for its tile allocator `tile.o`); `gfxs.a` (`gfx.o`, `gfx_debug.o`) | `usr/cpu/sysgen/IP32boot/` |
| OpenGL core (`software/opengl/`) | `libGL.so` and `libGLcore.so`, o32 in `IP32CRM/` and N32 in `IP32CRM32/` | `usr/gfx/arch/` |
| X server modules (`software/xsgi/`) | the CRIME module `crm.so`, `glx.so`, the server `Xsgi`, the video-control client library `libXsgivc.so` in o32, N32 and 64-bit builds (product `x_eoe`) | `usr/lib/X11/dyDDX/`, `usr/gfx/arch/GENERIC/`, `usr/lib32/` |
| Diagnostics and tools (`software/diags/`) | `gfxinit`, `setmon` (the monitor-timing tool), the CRM video format files (`vof/*.vfo`), the standalone `ide.IP32` and `symmon.IP32` (the standalone debug monitor, which decodes CRIME and VICE errors), the PROM image `ip32prom.image`, `Confidence/dualchannel` (the dual-channel flat-panel test, which drives CRIME's I2C) | `usr/gfx/`, `usr/gfx/ucode/CRM/`, `sbin/stand/`, `usr/cpu/firmware/`, `usr/sbin/Confidence/` |
| Video and imaging (`software/video/`, plus `software/kernel/mvp.o`, `software/kernel/a3_dd.o`) | `mvp.o` (the O2 video-in and video-out kernel driver, which also reads GBE timing), `a3_dd.o` (the audio driver, which shares the MACE I2C and CRIME interrupt hooks), `mvp.so` (the video-library device module, release and debug, o32 and N32), `libvice.so` (the VICE imaging library) and the VICE image converters `vicedv.so`, `vicejpeg.so`, `vicempeg.so`, `vicers.so` | `usr/cpu/sysgen/IP32boot/`, `usr/lib/dmedia/video/`, `usr/lib32/dmedia/video/`, `usr/lib/internal/`, `usr/lib32/internal/`, `usr/lib*/dmedia/imageconverters/` |

CRIME has no geometry engine and no microcode: the CRM ucode directory holds
only video format files, and `libGLcore` transforms and lights on the CPU. The
O2 has no `kpm`-style state-dump tool among these files. `ide.IP32` is the
standalone diagnostic monitor; it is not installed by default (it ships in the
`nfs` product, so the installed disk below lacks it).

### How the scope was found

The scope is measured, not recalled. `instigator extract --manifest-only` listed every installed file of the three 6.5.30 discs (Installation Tools and Overlays 1 of 3, Overlays 2 of 3 and 3 of 3; 39465 paths), `instigator extract --unpack` pulled the candidate directories (`usr/cpu/sysgen/IP32boot`, `usr/gfx`, `usr/lib/X11/dyDDX`, `usr/X11R6/lib/modules`, `sbin/stand`, `usr/cpu/firmware`, `usr/lib`, `usr/lib32`, `usr/lib64`, `usr/bin`, `usr/sbin`, `usr/diags`, `stand`), and a scan of every ELF file and archive for CRIME, CRM, GBE, MACE, MVP and VICE names and strings picked the files above. The kernel link symbols of every IP32boot object were also checked: only `crime.a`, `kernel.o`, `mace.o`, `mvp.o`, `a3_dd.o`, `pcimh.o`, `gfx.o`, `rrm.o`, `os.a` (the tile allocator `tile.o` and the context-switch hooks) and a few callers reach CRIME or MACE video. The other objects that mention `setcrimevector` or `mace_mask_*` (`pcimh.o`, `adp78.o`, `if_me.o`, the serial and parallel drivers) only register interrupts or use MACE peripherals other than video, and are outside this project.

Examined and left out: the generic OpenGL libraries (`libGLC.so`, `libGLS.so`, `libGLU.so`), the IrisGL library (`usr/gfx/arch/IGLOO*/libgl.so`, which sits on OpenGL and has no CRIME code), the server-side `usr/gfx/arch/SERVER*/` libraries, the video library `libvl.so.1`, whose O2 behaviour is in `mvp.so`, `libmovieplay` and the other movie libraries, which only name VICE in strings, the MACE Ethernet driver `if_me.o`, and the `ucode` directories of other boards. The `.vfo` video format files are data; `ide.IP32` and `symmon.IP32` are in scope because they program CRIME and VICE directly. The `CRM` video format directory is the only one for this board.

## 2. Source of the files

The files in `root/` are byte-for-byte the ones on the IRIX 6.5.30 overlay
disc `Instalation_Tools_and_Overlays1.image` (SHA-256
`0e8b0610955686f3be551b73f17b80c6748ed7e6ff8898dd66766898b4c8222b`), unpacked
with their `inst` paths: kernel objects and libraries from product `eoe`, X
server files from `x_eoe`, `ide.IP32` from `nfs`.

They were checked against a completed O2 install of the same release (an 8 GiB
disk image, SHA-256
`76a7dd1e83b95d27ae5cea91bca93ef020def895a063401f4f7464171a0c08cf`). Every path above
exists on it with the same size, except `ide.IP32`. The installed `crm.so`
differs from the disc copy in about 22000 scattered bytes, the quickstart
relinking `inst` does at install time; the debug sections are untouched. Prefer the
disc copy for stable offsets, and the disk copy when a run-time address must match
a live guest.

To use a different source, tar the paths in the block above from an installed O2
and unpack with `mkdir -p root && cd root && tar -xvf /path/to/crime_root.tar`.
The symlinks from section 4 are committed; they resolve once `root/` is filled.

## 3. IRIX 6.5.0 (names and lines only)

The 6.5 Foundation 1 disc carries the same graphics files at the same paths
(`gfxinit` and `ide.IP32` were not checked there). It is not richer than 6.5.30 (section 5): the
same names-and-lines DWARF in the kernel objects and N32 libraries, `.mdebug` in
the o32 libraries, a stripped X module. Use 6.5.30; 6.5.0 is an earlier build,
useful for diffing.

## 4. Symlinks

These blocks list the committed symlinks. `archives` lines are `ARCHIVE LINKDIR`:
the archive's members are unpacked inside `root/` and linked into `LINKDIR`.
`links` lines are `LINK TARGET`, relative to the repository root, one per binary
(the same file-level style as gr4).

```archives
root/usr/cpu/sysgen/IP32boot/crime.a software/kernel
root/usr/cpu/sysgen/IP32boot/gfxs.a software/kernel/gfxs
root/usr/cpu/sysgen/IP32boot/os.a software/kernel/os
```

```links
software/kernel/mace.o root/usr/cpu/sysgen/IP32boot/mace.o
software/kernel/gfx.o root/usr/cpu/sysgen/IP32boot/gfx.o
software/kernel/rrm.o root/usr/cpu/sysgen/IP32boot/rrm.o
software/kernel/kernel.o root/usr/cpu/sysgen/IP32boot/kernel.o
software/opengl/libGL_o32.so root/usr/gfx/arch/IP32CRM/libGL.so
software/opengl/libGLcore_o32.so root/usr/gfx/arch/IP32CRM/libGLcore.so
software/opengl/libGL_n32.so root/usr/gfx/arch/IP32CRM32/libGL.so
software/opengl/libGLcore_n32.so root/usr/gfx/arch/IP32CRM32/libGLcore.so
software/xsgi/crm.so root/usr/lib/X11/dyDDX/crm.so
software/xsgi/glx.so root/usr/lib/X11/dyDDX/glx.so
software/xsgi/libXsgivc_n32.so root/usr/lib32/libXsgivc.so
software/xsgi/Xsgi root/usr/gfx/arch/GENERIC/Xsgi
software/diags/gfxinit root/usr/gfx/gfxinit
software/diags/ide.IP32 root/sbin/stand/ide.IP32
software/diags/crm_vof root/usr/gfx/ucode/CRM/vof
software/kernel/mvp.o root/usr/cpu/sysgen/IP32boot/mvp.o
software/kernel/a3_dd.o root/usr/cpu/sysgen/IP32boot/a3_dd.o
software/xsgi/libXsgivc_o32.so root/usr/lib/libXsgivc.so
software/xsgi/libXsgivc_64.so root/usr/lib64/libXsgivc.so
software/diags/setmon root/usr/gfx/setmon
software/diags/symmon.IP32 root/sbin/stand/symmon.IP32
software/diags/ip32prom.image root/usr/cpu/firmware/ip32prom.image
software/diags/dualchannel root/usr/sbin/Confidence/dualchannel
software/video/mvp_o32.so root/usr/lib/dmedia/video/mvp.so
software/video/mvp_o32_debug.so root/usr/lib/dmedia/video/debug/mvp.so
software/video/mvp_n32.so root/usr/lib32/dmedia/video/mvp.so
software/video/mvp_n32_debug.so root/usr/lib32/dmedia/video/debug/mvp.so
software/video/libvice_o32.so root/usr/lib/internal/libvice.so
software/video/libvice_n32.so root/usr/lib32/internal/libvice.so
software/video/vicedv_o32.so root/usr/lib/dmedia/imageconverters/vicedv.so
software/video/vicedv_n32.so root/usr/lib32/dmedia/imageconverters/vicedv.so
software/video/vicedv_o32_debug.so root/usr/lib/dmedia/imageconverters/debug/vicedv.so
software/video/vicedv_n32_debug.so root/usr/lib32/dmedia/imageconverters/debug/vicedv.so
software/video/vicejpeg_o32.so root/usr/lib/dmedia/imageconverters/vicejpeg.so
software/video/vicejpeg_n32.so root/usr/lib32/dmedia/imageconverters/vicejpeg.so
software/video/vicejpeg_o32_debug.so root/usr/lib/dmedia/imageconverters/debug/vicejpeg.so
software/video/vicejpeg_n32_debug.so root/usr/lib32/dmedia/imageconverters/debug/vicejpeg.so
software/video/vicempeg_o32.so root/usr/lib/dmedia/imageconverters/vicempeg.so
software/video/vicempeg_n32.so root/usr/lib32/dmedia/imageconverters/vicempeg.so
software/video/vicers_o32.so root/usr/lib/dmedia/imageconverters/vicers.so
software/video/vicers_n32.so root/usr/lib32/dmedia/imageconverters/vicers.so
software/video/vicers_o32_debug.so root/usr/lib/dmedia/imageconverters/debug/vicers.so
software/video/vicers_n32_debug.so root/usr/lib32/dmedia/imageconverters/debug/vicers.so
```

## 5. Debug information by release

Measured on the IRIX 6.5 Foundation 1 disc (6.5.0) and the 6.5.30 overlay disc with
`readelf -S` and `dwarfdump -i` (host `readelf` and `pyelftools` cannot walk this
DWARF). Releases between them were not measured for IP32. Neither release has DWARF
with types or structure members for this board: every unstripped file has compile
units, function and variable names and line tables only (`dwarfdump -i` shows no
structure, member or typedef entries; for example N32 `libGLcore.so` has 3410
subprograms, 176 variables and 164 compile units in 6.5.30, and 3280, 172 and 160 in
6.5.0). The o32 libraries hold ECOFF `.mdebug`, which carries no member or typedef
symbols either.

| File | Debug level (6.5.30) | 6.5.0 |
|---|---|---|
| `crime.a` members (all but `crime_busts.o` have lines), `gfx.o`, `mace.o`, `rrm.o`, `gfxs.a` members (`gfx_debug.o` has no lines) | symbols, DWARF with lines (names and lines, no types) | same, slightly smaller |
| `libGLcore.so`, `libGL.so` N32 (`IP32CRM32`) | DWARF with lines, no `.symtab` (no types) | same for `libGLcore.so`; `libGL.so` not measured |
| `libGLcore.so`, `libGL.so` o32 (`IP32CRM`) | symbols (`.mdebug`), no lines | `.mdebug` |
| `crm.so`, `glx.so`, `Xsgi`, `gfxinit` | stripped (`.dynsym` and unwind frames only) | `crm.so` stripped; others absent or not measured |
| `ide.IP32` | stripped | absent |
| `vof/*.vfo` | not code | not measured |

Types must come from the CRIME specification, the Linux and NetBSD drivers and these
notes, not from debug sections. Run `retools/tools/map_binaries.py` for per-file detail.
