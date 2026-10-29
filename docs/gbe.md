# GBE display timing

How IRIX 6.5.30 turns a video format into GBE timing registers, and what the shipped `.vfo` format files hold. Registers are in [GBE.h](../GBE.h); field layouts agree with Linux `include/video/gbe.h` where cited. Labels: **established** (read from the cited code or file), **inferred**, **unknown**. Kernel sources: `crime_kernel/decomp/crime_init.c` (`gbeSetTimingRegs`, `gbeStartVideoTiming`), `crime_kernel/decomp/crime.c` (`crimeLoadTimingTable`) and the matching disassembly. Format files: `root/usr/gfx/ucode/CRM/vof/*.vfo` (26 files, linked as `diags/crm_vof`); only the numbers derived below are committed.

## Kernel timing record

The kernel holds each video format as a record of 16-bit fields (a built-in table of 15 records, 0x30 bytes each, plus one user-supplied slot loaded by `crimeLoadTimingTable`). Offsets and the register each feeds (established from the stores in `gbeSetTimingRegs` and `gbeStartVideoTiming`; roles inferred from the Linux field names, which these registers share):

| Offset | Role | Used for |
|---|---|---|
| 0x04 (32-bit) | flags; bits 1 and 4 (`& 0x12`) select the frame-lock line | `VT_F2RF_LOCK` |
| 0x08, 0x0a | active width, active height (inferred) | flat-panel drive registers; copied to drawables |
| 0x0c (32-bit) | frame rate (inferred) | copied to drawables |
| 0x10 (32-bit) | pixel clock; the flat-panel code tests it against 100000 | flat-panel set-up only |
| 0x14 | total pixels per line | `VT_XYMAX` low field, modulus in `VT_HBLANK`, `VT_HPIXEN` |
| 0x16, 0x18 | horizontal blank bounds | `VT_HBLANK`, `VT_HCMAP`, start addresses |
| 0x1a, 0x1c | hsync on and off | `VT_HSYNC` |
| 0x1e | total lines per frame | `VT_XYMAX` high field |
| 0x20, 0x22 | vertical blank bounds | `VT_VBLANK`, `VT_VCMAP`, `VT_VPIXEN` |
| 0x24, 0x26 | vsync on and off | `VT_VSYNC` |
| 0x28, 0x2a, 0x2c | PLL M, N, P | `DOTCLOCK` |
| 0x2d, 0x2e, 0x2f (bytes) | interlace flag, panel type, frame buffer pixel size (0x20 = 32 bit) | see below |

`crmInvalidVideoTiming` accepts a user record only if 1 <= M <= 256, 1 <= N <= 64 and 0 <= P <= 3 (established). Format id 13 is rejected with a message and ids 1 to 15 select the built-in table (established).

## Register values

All values are 32-bit register writes, two 12-bit fields packed as `a << 12 | b` unless noted (established; `F` is a record field):

- `DOTCLOCK` (`+0x04`): `(M - 1) | (N - 1) << 8 | P << 14 | 1 << 20`. The loader first clears bit 20 (PLL stop), writes the rest, then waits 11000 microseconds. The register is the same layout Linux uses (`M` 7:0, `N` 13:8, `P` 15:14, run 20).
- `VT_XYMAX` (`+0x10004`): written 0 in `gbeSetTimingRegs`, then `F14 | F1e << 12` in `gbeStartVideoTiming`.
- `VT_VSYNC` (`+0x10008`): `F26 | F24 << 12`. `VT_HSYNC` (`+0x1000c`): `F1c | F1a << 12`. `VT_VBLANK` (`+0x10010`): `F22 | F20 << 12`.
- `VT_HBLANK` (`+0x10014`): `(F18 - 3) | ((F16 + F14 - 5) mod F14) << 12`. For some GBE revisions (a kernel-global below 9) with the interlace flag set, `VT_VBLANK` and `VT_HBLANK` are rewritten as `F0a << 12 | 0xfff` and `F08 << 12 | 0xfff` (established; which revision a given value means is unknown).
- `VT_HCMAP` (`+0x1003c`): `F18 | F16 << 12`. `VT_VCMAP` (`+0x10040`): `F22 | F20 << 12`.
- `VT_FLAGS` (`+0x10018`): 0 for a CRT format.
- `VT_F2RF_LOCK` (`+0x1001c`): with flags `& 0x12`, `F20 | F20 << 12`; otherwise `F20 << 12 | 0xfff`.
- `DID_START_XY` (`+0x10044`): the vertical field (23:12) is `v & 0xfff` where `v = F20 - F22 - 1`, negated when positive; the low field is `F18 - 20`, plus `F14` when that is negative. `CRS_START_XY` (`+0x10048`): the same vertical field, plus one line, and `F18 - G` modulo `F14`, where `G` is the same per-revision kernel global as above. `VC_START_XY` (`+0x1004c`): the vertical field with `F18 - 4`. The names are Linux's.
- `FP_HDRV`, `FP_VDRV`, `FP_DE` (`+0x10028`, `+0x1002c`, `+0x10030`): parked at `0xfff`/`0x1fff` for a CRT format; filled from the flat-panel set-up on a panel (established for the CRT case only).
- `FRM_SIZE_TILE` (`+0x30000`): width in whole tiles at 12:5, remainder in 32-byte units at 4:0, depth at 14:13 (16-bit 1, otherwise 2). A tile is 256 pixels wide at 16 bits and 128 at 32 bits. `FRM_SIZE_PIXEL` (`+0x30004`): `height << 16`, halved for an interlaced record. `OVR_WIDTH_TILE` (`+0x20000`): width in 512-pixel tiles at 12:5 and the remainder in 32-byte units at 4:0 (the overlay is 8 bit). Layout agrees with Linux.
- `VT_HPIXEN` (`+0x10034`) and `VT_VPIXEN` (`+0x10038`): parked at `0xffffff`, then set at the end of `gbeStartVideoTiming`: `HPIXEN = ((F08 + v - 2) mod F14) | v << 12` with `v = F18 - 0x13` (plus `F14` when negative); `VPIXEN = F20 | F22 << 12`. Nothing here says why the `VPIXEN` halves are in the opposite order from `VT_VBLANK`.
- `VT_INTR01` and `VT_INTR23` (`+0x10020`, `+0x10024`): `crime_init` parks both at `0xffffff` (both lines at 0xfff, off the visible frame) and the retrace handler rewrites them (see GBE.h).

Start-up order (established, `gbeStartVideoTiming`): clear CRIME HARDINT bit 16, park `HPIXEN` and `VPIXEN`, write `XYMAX`, pulse `FRM_SIZE_TILE` bit 15 and `OVR_WIDTH_TILE` bit 13 (FIFO resets), write `FRM_CONTROL`, `OVR_CONTROL`, `DID_CONTROL`, poll the two `INHWCTRL` registers' bit 0 until they match, wait until `VT_XY` crosses `F20` from above and then from below, and write the pixel-enable registers.

## Video format files (`.vfo`)

Established from the file bytes:

- Big-endian container, magic `sdb ` after a 4-byte version word (4), producer string `VideoFormatCompiler`, an embedded revision string `$Revision: 1.6 $` in `640x480_60.vfo`, and a schema near the end of the file listing about 100 field names (`ActiveBlankingLeft` ... `VerticalStateCount`, `TransitionLineTypesUsing00000` ... `00027`, `FormatInfo_*`, `DacPll_M/N/P`, `PFD*`). One block names the output as `O2_GBE`, another is `VGA`. Files are 12,416 to 12,748 bytes, mostly zero fill. The schema offsets and the state-table sections (28 line types, signal edge tables) are not decoded.
- The leading pointer arithmetic of the schema is not understood, so the values are read by position.

A fixed block of 32-bit values inside each file holds the timing in the order below (established by position; each file's pixel clock is the word before `H back porch` and the sums reproduce the file name, see the table). `V` columns are counted in pixel clocks; dividing by the line length gives lines.

| File | Pixel clock Hz | H back, sync, front, active | Active lines | V back, sync, front (lines) | Total | Refresh |
|---|---|---|---|---|---|---|
| 640x480_60 | 25,174,800 | 48, 96, 16, 640 | 480 | 33, 2, 10 | 800 x 525 | 59.94 |
| 800x600_60 | 40,000,304 | 88, 128, 40, 800 | 600 | 23, 4, 1 | 1056 x 628 | 60.32 |
| 800x600_72 | 50,000,296 | 64, 120, 56, 800 | 600 | 23, 6, 37 | 1040 x 666 | 72.19 |
| 1024x768_60 | 65,000,173 | 160, 136, 24, 1024 | 768 | 29, 6, 3 | 1344 x 806 | 60.00 |
| 1024x768_70 | 74,999,615 | 144, 136, 24, 1024 | 768 | 29, 6, 3 | 1328 x 806 | 70.07 |
| 1024x768_75 | 78,750,438 | 176, 96, 16, 1024 | 768 | 28, 3, 1 | 1312 x 800 | 75.03 |
| 1280x1024_48 | 85,881,600 | 200, 120, 80, 1280 | 1024 | 34, 3, 4 | 1680 x 1065 | 48.00 |
| 1280x1024_50 | 89,460,000 | 200, 120, 80, 1280 | 1024 | 35, 3, 3 | 1680 x 1065 | 50.00 |
| 1280x1024_60 | 107,244,648 | 250, 120, 30, 1280 | 1024 | 35, 3, 3 | 1680 x 1065 | 59.94 |
| 1280x1024_72 | 129,467,520 | 240, 140, 30, 1280 | 1024 | 34, 3, 3 | 1690 x 1064 | 72.00 |
| 1280x1024_75 | 135,000,585 | 248, 144, 16, 1280 | 1024 | 38, 3, 1 | 1688 x 1066 | 75.03 |
| 1600x1024_48p | 97,219,200 | 170, 100, 30, 1600 | 1024 | 36, 3, 3 | 1900 x 1066 | 48.00 |
| 1600x1024_50p | 101,270,000 | 170, 100, 30, 1600 | 1024 | 36, 3, 3 | 1900 x 1066 | 50.00 |
| 1600x1024_60p | 108,732,000 | 45, 35, 20, 1600 | 1024 | 36, 3, 3 | 1700 x 1066 | 60.00 |

The computed refresh equals the file name for every row, which supports the field order. The `2@` files repeat the numbers of the matching single-channel formats (1024x768 at 60, 70 and 75 Hz; 1280x1024 at 48, 50, 60, 72 and 75 Hz); the `p` files differ from their base only in the file layout (the block starts a few words later). Established differences: the `2@` and `p` files carry extra leading words; their meaning is unknown.

Rows with no entry: `1024x768_96s` and `1280x492_120s` (the stereo formats) hold a different block layout and were not decoded. The `1600x1024_60p` horizontal numbers are odd (back porch 45, sync 35) and sum to the stated total; the format is likely a panel mode.

## Unknown

- How the format file's state tables map to the kernel record, and which program (the X module or `gfxinit`; both are stripped) does the conversion.
- The value of the per-revision kernel global `G` and what it counts.
- Whether `VT_XYMAX` takes totals or totals minus one (the kernel passes `F14` and `F1e`; whether those are totals is not shown).
- The stereo format layouts.

# Window ID table and the tile lists

Sources: `crime_kernel/decomp/crime_retrace.c` (`crimeSetDisplayMode`, `crmInitGbeData`, `crmLoadGbelists`), `crime_kernel/decomp/crime_init.c` (`crmInitTp`), Linux `include/video/gbe.h`. Labels as above.

## Window ID table (`+0x48000`)

- Established (Linux `gbe.h`): 32 entries; fields `BUF` 1:0, `TYP` 4:2, `CM` 9:5 (colour map selector), `GAMMA` 10, `AUX` 12:11.
- Established (`crimeSetDisplayMode`): the kernel takes an index below 0x20 and a 32-bit value from the X module, writes the value to table entry `index` and to a per-index shadow record (24 bytes per entry, value at +0x24 of the board's record), and returns "invalid" for an index of 0x20 or more. When the same per-revision kernel flag as in the timing code is non-zero it clears bit 10 (`GAMMA`) first. If the low two bits (`BUF`) of the value are 0, it also marks that entry's record (flag byte +0x3a = 1) and sets a board-wide flag (+0x1c = 1).
- Established (`crmInitTp`): the text port programs entry 0 with the value 3 (buffer 3, type 0).
- Inferred: the `BUF` value 0 means "no buffer", which the kernel notes so the retrace handler does not flip it; values 1 and 2 are the two double-buffer halves that the retrace handler swaps (see GBE.h).
- Unknown: the meaning of each `TYP` and `CM` code as IRIX uses it. The X module writes the table through this ioctl; its value construction was not traced in the stripped module.

## Tile lists (`crmInitGbeData`, `crmLoadGbelists`)

Established: the offsets, the 13-bit tile entry format and the pointer words below. Inferred (the decompiler's loops are ambiguous): which list belongs to which plane, and the interlaced split. The kernel keeps one 0x600-byte block per GBE with these parts:

| Offset | Content | How built |
|---|---|---|
| +0x00, +0x04, +0x08 | physical addresses of the lists at +0x160, +0x120 and +0x0a0 | `kvtophys` |
| +0x4c, +0x50, +0x54, +0x58 | physical addresses of the lists at +0x200, +0x300, +0x400, +0x500 | `kvtophys` |
| +0x0a0 | 64 entries, one per 4 bytes, each a copy of the same 13-bit tile number in the high halfword (the fourth tile of the colour-index chunk) | `crmInitGbeData` |
| +0x120, +0x160 | contiguous 16-bit tile numbers, 13 bits each (`& 0x1fff`), from the overlay chunk, in two copies (the second copy starts at the half way tile row for interlaced or field-doubled modes) | both functions |
| +0x200, +0x300 | contiguous 16-bit tile numbers from the frame buffer chunk, `ceil(width / (512 / bytes per pixel))` entries per row, in row-major order, the second list starting half way for interlaced modes | both functions |
| +0x400, +0x500 | not filled by the two functions read; whether another path fills them is unknown | |

`crmLoadGbelists` rebuilds the frame and overlay lists after a mode change, copies 0x200 bytes of the overlay list into a kernel-supplied buffer, and then sets bit 0 in each of the seven pointer words. Inferred: bit 0 is the DMA-enable bit of the corresponding `*_CONTROL` register when the word is loaded there (GBE.h says `FRM_CONTROL` carries the pointer and enable); the kernel passes the words to `gbeStartVideoTiming` as the three control register values.

Established tile geometry: a frame-buffer tile row is 512 bytes wide, so a tile is 128 pixels wide at 32 bits and 256 pixels at 16 bits; the overlay (8 bits) uses 512-pixel tiles; the CRIME tile number in the list is the 64 KiB tile number as in `docs/memory.md`. Rows of a list hold exactly the tiles of one tile row of the surface (128 pixel rows).

## Overlay and underlay planes

Established: the overlay plane is an 8-bit plane described by `OVR_WIDTH_TILE`, `OVR_CONTROL` and its own tile list; the display-ID plane (`DID_CONTROL`) points at the 64-entry list above. Unknown: the pixel-to-window-ID mapping (which overlay values select which table entry), underlay plane behaviour, and whether the overlay is composited above or below the frame buffer; no decoded code states either.
