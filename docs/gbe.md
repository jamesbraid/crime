# GBE display timing

How IRIX 6.5.30 turns a video format into GBE timing registers, and what the shipped `.vfo` format files hold. Registers are in [GBE.h](../GBE.h); field layouts agree with Linux `include/video/gbe.h` where cited. Labels: **established** (read from the cited code or file), **inferred**, **unknown**. Kernel sources: `crime_kernel/decomp/crime_init.c` (`gbeSetTimingRegs`, `gbeStartVideoTiming`), `crime_kernel/decomp/crime.c` (`crimeLoadTimingTable`) and the matching disassembly. Format files: `root/usr/gfx/ucode/CRM/vof/*.vfo` (26 files, linked as `diags/crm_vof`); only the numbers derived below are committed.

## Kernel timing record

The kernel holds each video format as a record of 16-bit fields (a built-in table of 15 records, 0x30 bytes each, plus one user-supplied slot loaded by `crimeLoadTimingTable`). Offsets and the register each feeds (established from the stores in `gbeSetTimingRegs` and `gbeStartVideoTiming`; roles inferred from the Linux field names, which these registers share):

| Offset | Role | Used for |
|---|---|---|
| 0x00 (32-bit) | format id: 1 to 15 for built-in records, 0 for a record the X module built (see the stereo and conversion section) | selects the record |
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
| 0x28, 0x2a | PLL M, N | `DOTCLOCK` |
| 0x2c | PLL P (the kernel masks it with 3 and `crmInvalidVideoTiming` accepts 0 to 3) | `DOTCLOCK` |

`crmInvalidVideoTiming` accepts a user record only if 1 <= M <= 256, 1 <= N <= 64 and 0 <= P <= 3 (established). Format id 13 is rejected with a message and ids 1 to 15 select the built-in table (established).

Correction (established, `gbeSetTimingRegs`): the byte tests at 0x2d, 0x2e and 0x2f in that function are on the board's information structure (the same one `crimeInitInfo` fills: width and height halfwords at 0x20 and 0x22, a panel-type byte at 0x2e, the frame buffer pixel size byte at 0x2f, 0x20 meaning 32 bit), not on the 0x30-byte timing record, which `gbeSetTimingRegs` reaches through a pointer in that structure. An earlier version of the table above listed those bytes as record fields. For the record, offset 0x2c holds PLL P. The meaning of the byte at 0x2d of the board structure (called the interlace flag above) is inferred from its use (`VT_VBLANK` and `VT_HBLANK` rewrite, double height at `crimeInitInfo`) and not otherwise established.

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

Stereo formats, decoded below: `1024x768_96s` and `1280x492_120s`.
 The `1600x1024_60p` horizontal numbers are odd (back porch 45, sync 35) and sum to the stated total; the format is likely a panel mode.

## Stereo format files and the conversion to the kernel record

Sources: the two stereo `.vfo` files, `ddx/crm.so` (`crmLoadTimingTable`, dynsym-visible, 0x48c5d0), the kernel built-in table in `crime_kernel/crime_init.o` (`.data`, 15 records of 0x30 bytes from file offset 0x22e8), kernel `crime_setvideotiming`. `gfxinit` only holds the paths `/var/X11/Xvc/Crm0_TimingTable` and `Crm1_TimingTable` and a monitor-info reader, and no vfo conversion code (strings and dynsym checked); the conversion lives in the X module, which reads the format file through the `SDB` read routines it imports.

### Layout of the stereo files (established by position and arithmetic)

The numeric block sits after the state-table fill (runs of 1, 2, 3, 4) as in the mono files: pixel clock, then H back, sync, front, active in pixel clocks, then the active line count and the vertical group. A mono file lists the vertical group once, in pixel clocks (lines times line length): back porch, sync width, sync width plus the horizontal sync width, active, front porch. A stereo file lists the same group twice, each repetition preceded by the active line count, and the second repetition is identical to the first:

| File | Pixel clock Hz | H back, sync, front, active | Per-field V back, sync, active, front (lines) | Lines per frame | Frame rate |
|---|---|---|---|---|---|
| 1024x768_96s | 103,502,592 | 182, 104, 26, 1024 (total 1336) | 33, 3, 768, 3 (807 per field) | 1614 | 48.00 Hz (96 fields) |
| 1280x492_120s | 107,143,949 | 250, 120, 30, 1280 (total 1680) | 34, 3, 492, 3 (532 per field) | 1064 | 59.94 Hz (119.88 fields) |

Verified by dividing the pixel counts by the line length (for example 44088 = 33 x 1336 and 4112 = 4008 + 104 in the first file; 57120 = 34 x 1680, 5160 = 5040 + 120 in the second) and by the clock: 103,502,592 / (1336 x 1614) = 48.00, 107,143,949 / (1680 x 1064) = 59.94. The header words differ from a mono file only in the active height at +0x98 (1536 and 984, twice the field height) and a count of 2 at +0xc0 (also at +0xbc in the first file); the per-field line count repeats at +0xc4 and +0xc8; the files carry an `OptionHardware` value `None` (string at about +0x190); a name string follows (`1024x768_96 Stereo Window` for the first file), and the frame rate double is the full-frame rate. Unknown: the meaning of the second occurrence of each header word, and what the "sync plus hsync" entry feeds; the stereo files also carry the line-type and edge tables that are not decoded.

### Conversion in `crmLoadTimingTable` (established from the disassembly)

The function takes an in-memory format description (not the file layout; it is built by a library this workspace does not hold) and an open format file, and builds a 0x30-byte kernel record on its stack, then sends it with ioctl `0x55f6` to `crimeLoadTimingTable`. From the stores, with `W`, `H` the description's width and height words (+0x104, +0x100), `T` total pixels per line (+0x10c), `L` total lines (+0x108), `rate` the float at +0x110, `clk` the integer at +0x118, `hb`, `hs`, `hf` the three horizontal words at +0x11c, +0x120, +0x124, and `vb`, `vs`, `vf` the three vertical pixel counts at offsets +8, +0xc, +0x14 of the table the description points to (+0x130):

| Record field | Value |
|---|---|
| 0x08, 0x0a | W, H |
| 0x0c | rate x 1000, truncated |
| 0x10 | clk / 1000, truncated |
| 0x14, 0x16, 0x18 | T, W, W + hf + hs + hb |
| 0x1a, 0x1c | W + hf, W + hf + hs |
| 0x1e | L |
| 0x20, 0x22 | H, H + (vb + vs + vf) / T |
| 0x24, 0x26 | H + vf / T, that + vs / T |
| 0x28, 0x2a, 0x2c | the file's `DacPll_M`, `DacPll_N`, `DacPll_P` (read with `SDBgetSymbolValueScalar`) |
| 0x04 | flags: 0x02 when the description's class word (+0x134) is 4, 0x10 when it is 1, otherwise from the file's `OptionHardware` string: `None` 0, `Presenter_1024` 0x100, `Presenter_1280` 0x200, `Flatpanel_1600SW` 0x400, `O2_DCD` 0x800; any other name prints an error |
| 0x00 | format id, 0 when the three PLL symbols are present |

Cross-check (established): applying these rules to the numbers of 13 of the 14 mono files, and to `1280x492_120s`, reproduces fields 0x14 to 0x26 of a kernel built-in record exactly (640x480_60 id 1, 800x600_60 and _72 ids 2 and 3, 1024x768 at 60, 70 and 75 ids 4 to 6, 1280x1024 at 48, 50, 60, 72 and 75 ids 7 to 11, 1280x492_120s id 13, 1600x1024_48p and _50p id 15, the `p` variants the same as their bases). Not reproduced: `1024x768_96s` (no built-in record) and `1600x1024_60p` (no built-in record).

- Stereo specifics (established from the stereo file and built-in id 13): the line total at 0x1e and the vertical numbers at 0x20 to 0x26 are per field (532 lines for `1280x492_120s`, not 1064); the record rate at 0x0c is the field rate (119,880) and the flags word is 2 (the stereo class code). The kernel-held pixel clock 107,072 kHz differs from the file's 107,143.9 kHz by 0.07 percent; the kernel's number is not the file's divided by 1000. Reason unknown.
- Fallback (established): when any of the three `DacPll` symbols is missing, the function instead picks a built-in id from the width, height and rounded rate (640x480 at 60: id 1; 800x600 at 60, 72: 2, 3; 1024x768 at 60, 70, 75: 4 to 6; 1280x1024 at 48, 50, 60, 72, 75: 7 to 11; 1280x492 at 60: 13) and sends that. Inferred: for the shipped files the PLL symbols exist (the files carry `DacPll_M/N/P`), so the id is 0 and the kernel gets a fully custom record; `1024x768_96s` and the 1600-wide files take this path because they match no built-in id.
- Kernel side (established, `crime_setvideotiming`): id 13 is only accepted when the board's flag byte (+0x98 bit 1) is set or no board is named, and then only if a byte at +0x2b of the board structure is clear; otherwise the call returns "invalid". Inferred: that flag marks a stereo-capable output path. A custom record (id 0) goes through `crmInvalidVideoTiming` (1 <= M <= 256, 1 <= N <= 64, P below 4).
- Unknown: what 0x2d..0x2f of the board structure mean beyond the uses above, whether any shipped stereo mode uses the stereo emitter output, and the library that builds the description and fills the vertical table.

## Unknown

- How the state tables (the 28 line types and signal edge tables) of a format file map to anything: the conversion below uses only the timing numbers and the PLL values.
- The value of the per-revision kernel global `G` and what it counts.
- Whether `VT_XYMAX` takes totals or totals minus one (the kernel passes `F14` and `F1e`; whether those are totals is not shown).

# Window ID table and the tile lists

Sources: `crime_kernel/decomp/crime_retrace.c` (`crimeSetDisplayMode`, `crmInitGbeData`, `crmLoadGbelists`), `crime_kernel/decomp/crime_init.c` (`crmInitTp`), Linux `include/video/gbe.h`. Labels as above.

## Window ID table (`+0x48000`)

- Established (Linux `gbe.h`): 32 entries; fields `BUF` 1:0, `TYP` 4:2, `CM` 9:5 (colour map selector), `GAMMA` 10, `AUX` 12:11.
- Established (`crimeSetDisplayMode`): the kernel takes an index below 0x20 and a 32-bit value from the X module, writes the value to table entry `index` and to a per-index shadow record (24 bytes per entry, value at +0x24 of the board's record), and returns "invalid" for an index of 0x20 or more. When the same per-revision kernel flag as in the timing code is non-zero it clears bit 10 (`GAMMA`) first. If the low two bits (`BUF`) of the value are 0, it also marks that entry's record (flag byte +0x3a = 1) and sets a board-wide flag (+0x1c = 1).
- Established (`crmInitTp`): the text port programs entry 0 with the value 3 (buffer 3, type 0).
- Inferred: the `BUF` value 0 means "no buffer", which the kernel notes so the retrace handler does not flip it; values 1 and 2 are the two double-buffer halves that the retrace handler swaps (see GBE.h).
- Settled in pass 6 for `BUF`, `TYP`, `CM`, gamma and `AUX` (rev 1.1 specification, see below). Earlier text: the meaning of each `TYP` and `CM` code as IRIX uses it. The X module writes the table through this ioctl; its value construction was not traced in the stripped module.

## Window ID type and colour-map codes

Sources: Linux `include/video/gbe.h` and `gbefb.c`, NetBSD `crmfbreg.h` and `crmfb.c`, the X module `ddx/crm.so` (dynsym-visible data and `gbeInit`), Xsgi's `rrmSetReservedDID`, kernel `crimeSetDisplayMode`. MAME's `o2.cpp` and `crime.cpp` model no GBE window table (checked: no WID, overlay or mode-register code), so it adds nothing here.

- Established (Linux `gbe.h`, NetBSD `crmfbreg.h`): `TYP` (bits 4:2) codes are 0 I8, 1 I12, 2 RG3B2, 3 RGB4, 4 ARGB5, 5 RGB8; Linux also names 6 RGBA5 and 7 RGB10 (NetBSD stops at 5). `BUF` 3 means "both buffers" in both drivers. `CM` (bits 9:5) is a colour-map selector; NetBSD calls bits 12:11 `FP_ENABLE` (two bits) where Linux calls them `AUX`; neither driver sets them. Both drivers write all 32 entries with one value (TYP chosen from the pixel depth, `BUF` 3).
- Established (data in `crm.so`, objects `gbeModeTable16`, `gbeModeTable24`, `arModeTable16`, `arModeTable24`, 32 twelve-byte records each, `.sdata` at `0x5b4220`, `0x5b43a0`, `0x5b4520`, `0x5b46a0`): the X module programs a small table of window IDs at start-up. Each record is three big-endian words: the WID index, the WID value, and a third word of the form `0x3c0n` (n = 0 to 3). Only the first 8 to 11 records are non-zero.
- Established (`gbeInit`): the table is chosen by two things: a byte the module copies into the screen record at +0xd94 (called R below) and the colour depth (the word at +0x24 equals 16 or not). R below 2 selects the `gbe` tables (8 records at depth 16, 10 at the other depth); R of 2 or more selects the `ar` tables (9 and 11 records). The same R below 2 test is the one the colour-map FIFO code uses (see the colormap row in `GBE.h`), so R is probably the GBE revision (inferred, from the shared threshold only). `gbeInit` copies the chosen table into the screen record (+0x378), then for each record calls the kernel ioctl `0x55f4` with the index and value (the kernel's `crimeSetDisplayMode` above) and calls Xsgi's `rrmSetReservedDID(screen, index, third word, value)`; on an ioctl failure it prints an error through `ErrorF`.
- Established (`rrmSetReservedDID` disassembly): it stores the value at offsets +0xa4 and +0xb4, the third word at +0xa0 and +0xb0, the halfword 13 at +0xa8 and the flag 1 at +0xb8 of a 36-byte per-index record in the screen record. Two copies of each field are kept (inferred: one for the front and one for the back buffer, because the kernel flips `BUF`; no code read says so).

Decoded records (value fields: `BUF` / `TYP` / `CM` / `GAMMA`; every record has `BUF` 3 and `AUX` 0):

| Table | Index: value, `TYP`, `CM`, third word |
|---|---|
| `gbe` 16-bit (8 records) | 0: `0x203` I8 CM 16, `0x3c02`; 1: `0x1e3` I8 CM 15, `0x3c02`; 2: `0x1c3` I8 CM 14, `0x3c02`; 3: `0x1a3` I8 CM 13, `0x3c02`; 4: `0x183` I8 CM 12, `0x3c02`; 5: `0x00b` RG3B2, `0x3c03`; 6: `0x007` I12, `0x3c00`; 7: `0x013` ARGB5, `0x3c01` |
| `gbe` 24-bit (10 records) | indices 0 to 5 as above; 6: `0x007` I12, `0x3c02`; 7: `0x013` ARGB5, `0x3c03`; 8: `0x577` RGB8 CM 11 GAMMA 1, `0x3c01`; 9: `0x017` RGB8 CM 0, `0x3c01` |
| `ar` 16-bit (9 records) | 0 to 5: I8 with CM 18 to 23 (`0x243`, `0x263`, `0x283`, `0x2a3`, `0x2c3`, `0x2e3`), `0x3c02`; 6: `0x00b` RG3B2, `0x3c03`; 7: `0x007` I12, `0x3c00`; 8: `0x013` ARGB5, `0x3c01` |
| `ar` 24-bit (11 records) | indices 0 to 6 as the 16-bit `ar` table; 7: `0x007` I12, `0x3c02`; 8: `0x013` ARGB5, `0x3c03`; 9: `0x577` RGB8 CM 11 GAMMA 1, `0x3c01`; 10: `0x017` RGB8, `0x3c01` |

- Established (`gbeHWCmaps`, `arHWCmaps` objects): the `CM` value times 256 is the first colour-map entry of the group the record selects (the records hold `0x1000`, `0xf00`, `0xe00`, `0xd00`, `0xc00`, `0xb00`, `0x1100` for the `gbe` set and `0x1200` to `0x1700`, `0xb00`, `0x1100` for the `ar` set). With 6144 colour-map entries that gives 24 groups of 256, which fits a 5-bit field that only reaches 24 in use.
- Inferred: the 8-bit index windows (TYP I8) each get their own 256-entry colour map (five groups at `gbe`, six at `ar`); a 12-bit index type, RG3B2 and ARGB5 windows use no group; the 24-bit RGB8 window of the `gbe` and `ar` 24-bit tables is the gamma-corrected one (`GAMMA` 1) with CM 11, and a second RGB8 entry has gamma off. Basis: the tables above, and that `GAMMA` is the only record that sets bit 10.
- Established in Pass 4 (end of file): the third word is a software matching key and never reaches the hardware; its bit meaning stays unknown. Pass 3 text: its low two bits do not track `TYP` consistently across tables (for I12 it is 0 in the 16-bit tables and 2 in the 24-bit ones; for ARGB5 it is 1 and 3). The constant `0x3c` in bits 15:10 and the stored halfword 13 are also unexplained.
- Unknown: how the window ID plane (display-ID plane) is filled per window. `gbeLoadDispIDs` (`crm.so`) walks the window clip regions with a heavily unrolled loop and `gbeLoadDIDTable` picks one of three DID tile lists through ioctl `0x55fd`; the mapping from X window to WID index, and from an index to a pixel format in a frame buffer that holds mixed formats, was not traced.
- Unknown: overlay and underlay compositing. No read code shows the overlay plane's pixel value selecting or replacing a window ID, nor transparency. The X module carries the generic overlay-visual strings (`SERVER_OVERLAY_VISUALS`, `TRANSPARENT_PIXEL`, `FRAME_BUFFER_LAYER`) in its generic server code, which is not evidence that O2 hardware uses them. Neither Linux nor NetBSD enables the overlay plane (both write `OVR_WIDTH_TILE` as 0). The kernel's own overlay path (`crm_enableovl`) rewrites a drawable's tile table, not a GBE register, as far as the decompilation shows.

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

## Colour-map writes and the FIFO (`crmInstallPseudoColorMap`)

Sources: `ddx/crm.so` `crmInstallPseudoColorMap` (dynsym-visible, 0x473890), GBE.h. GBE has no command stream; the only FIFO a driver sees is the colour-map write FIFO at `+0x58000`. Labels as above.

- Established: the X module installs a pseudo-colour map one entry at a time from a list of 8-byte records (a 16-bit index at +2, red, green, blue bytes at +4, +5, +6). Each entry becomes one 32-bit store to `GBE + 0x50000 + 4 * index` of `red << 24 | green << 16 | blue << 8`, the layout `GBE_CMAP_ENTRY` gives. The index is the global entry number, so a window's colour-map group (the `CM` value of its window ID times 256, see above) is part of the index.
- Established: alongside each hardware store it keeps a software copy of the entry as `blue << 16 | green << 8 | red` in a table the screen record points at (offset +0x40).
- Established: the entry with index `0x1102` (4354, in group 17) is not written to the hardware, only to the software copy, when a screen flag (+0x18 of the same record) is non-zero; otherwise it is treated like any other entry. The reason is unknown.
- Established: between entries the module checks the FIFO count with the revision-dependent test recorded in `GBE.h` (wait while the count is below 48 for revision 2 or later; before that wait while it is non-zero and below 48), at the start of the list and after a batch of entries.
- Unknown: the batch size between FIFO checks (kept in a register the disassembly does not pin down), and whether the hardware drains the FIFO in strict write order.

## Pass 3: display IDs, the third WID word, overlays, entry 0x1102 and libXsgivc

### How the DID plane is filled (`crm.so` `gbeLoadDispIDs`)

- Established: the routine builds 16-bit entries. The terminating entry of a line is `(t0 & 0xf800) | (width - 1)`, where `width` is the screen width halfword at +3472 of the screen record. Other entries are built with a shift of the window ID by 11 (`sll ..., 0xb`). So an entry is `WID << 11 | x`, with an 11-bit x.
- Established: `t0` is chosen by the same revision word (+3476) as the colour-map FIFO test: `0x2fff` (WID 5) below revision 2 and `0x37ff` (WID 6) at revision 2 or above. In both reserved tables that index is the RG3B2 entry (`0x00b`), so the line ends in the same format whichever table is loaded.
- Established: each display line owns a 512-byte slot (`line * 512`) that holds up to 256 entries; the routine counts lines up to 128 per 64 KiB block before moving to the next block. That is one 64 KiB DID tile per 128 lines.
- Inferred: an entry gives the window ID that applies from (or up to) column x on that line, and the last entry covers the rest of the line to `width - 1`. Whether x marks a run's start or its end was not settled. Which of the three DID tile lists `gbeLoadDIDTable` selects (ioctl `0x55fd`) is displayed is per buffer state, as recorded above.

### The third WID word `0x3c0n`

Pass 3 found no reader. Pass 4 (end of this file) settles what the word is: a software matching key that never reaches the hardware. The meaning of its bits stays unknown there, with the capture that would settle it.

### Overlay and underlay compositing

Settled for GBE revision 1.1 by the specification (see "Overlay, cursor and display-mode compositing" in pass 6 below): overlay value 0 is transparent, the cursor wins over the overlay and the overlay over the normal planes, and no register carries a key. The bounded search of the binaries found that neither the X module nor the kernel writes an overlay-to-WID mapping or a transparency value to any GBE register. The overlay plane is set up only through `OVR_WIDTH_TILE`, `OVR_CONTROL` and its tile list.

### Colour-map entry `0x1102`

- Established (`crime_tp`): the kernel textport draws colour c as pixel value `c + 1` (`crime_color` replicates `c + 1` into all four bytes) and loads that colour into map entry `0x1100 + c + 1` (`crime_mapcolor` writes at `+0x54404 + 4c`). So entry `0x1102` is the textport's colour 1.
- Inferred: the X module skips `0x1102` while its screen flag (+0x18) is set so as not to overwrite the colour the kernel textport is using. What sets that flag was not traced.

### libXsgivc (`ddx/libXsgivc_n32.so`)

- Established: the library is only the client side of the `SGI-VIDEO-CONTROL` X extension. It imports Xlib transport functions (`_XSend`, `_XReply`, `_XRead`) and no file functions, so it never reads `.vfo` files. `XSGIvcLoadVideoFormat` and its variants only send requests to the server, which builds the kernel record (see the vfo conversion above).
- Established (`ReadFormatInfo`, DWARF names): the server describes a format in a 48-byte reply record. The library unpacks it into the caller's structure: four 16-bit values (stored at +260, +256, +268, +264), two 32-bit rates divided by 1000.0 into floats (+272, +276), seven more 32-bit values, a name whose length is in the record, and a count of 36-byte field records read by `ReadFieldInfo`.
- Unknown: the meaning of each value. The DWARF has names and lines but no types.

## Pass 4: the third WID word and overlay, read again

Binaries: IRIX 6.5.30 `ddx/crm.so`, `ddx/Xsgi`, and the kernel `crime.o` decompilation. Addresses are the virtual addresses shown by `objdump -d` of each file.

### What the third word is

- Established (`rrmSetReservedDID`, Xsgi `0x1015ce50`; `gbeInit`): the record `gbeInit` hands over is `(index, key = third word, value)`. The function writes `key` at `+0xa0` and `+0xb0`, `value` at `+0xa4` and `+0xb4`, the halfword 13 at `+0xa8` and 1 at `+0xb8` of a 36-byte slot inside the per-screen record, slot number = index. The kernel is told only `index` and `value` (ioctl `0x55f4`), never the key. So the key is not a hardware field: it never reaches a GBE register or the kernel.
- Established (`StealID`, `crm.so` `0x55e7b0`, the loop at `0x55e8e8..0x55e938` and the repeat at `0x55ee7c..0x55eec8`): when the X module needs a window ID it scans these 36-byte slots and calls two slots interchangeable when `(window[+0x20] & maskA) == (slot.key & maskA)` and `(window[+0x24] & maskB) == (slot.value & maskB)`, where `window` is the window's private record and the two masks are the words at `+0x10` and `+0x14` of the slot table header (the header also holds the slot count at `+0`). The same loop compares a halfword of each slot at `+0xaa` with a halfword at `+2` of the window record and skips slots whose flag halfword at `+0xa8` has bit 0x14 set (or, in the second loop, bit 0x8 clear).
- Established (`crmInvalidate`, `crm.so` `0x45fb64..0x45fb78`): a window's slot is filled by `key = window[+0x20] ^ 4` and `value = window[+0x24]`.
- Inferred: so the third word is the window's flag word (`+0x20`) in the form that a reserved slot expects, and the reserved slots gbeInit installs are pre-made entries that any window whose flags match under the mask may reuse for free. The pairing of the key's low two bits with pixel format (see the tables above) is then a property of those window flags, not of GBE.
- Established: `0x3c0n` does not appear as an immediate anywhere else in `crm.so` or `Xsgi` (searched for `addiu ...,zero,0x3c0n` and `ori ...,0x3c0n`), so it is only ever compared through the masks, never tested by name.
- Unknown: the meaning of the bits of window `+0x20` (the `0x3c` in bits 15:10 and the `n` field), and the two mask values. Needs a capture: dump the window records and the slot table header of a running X server (for example a core of `Xsgi` or a debugger read at `rrmInit` exit) with windows of each visual open.

### Overlay and underlay

- Established (kernel `crm_enableovl`, `crime.c` line 1042): the only overlay code in the kernel driver changes a drawable's rendering state, not a GBE register. It sets the drawable word at `+0x18` to `0x228`, and if that is the current drawable it saves the pixel pipe, reloads the three rendering TLBs for the drawable (`crmLoadTlbABC`), and restores. It is reached from ioctl `0x5609` with bit 4 of the user flags; bit 1 of the same flags selects the sibling `crm_enablesz` (z buffer). Inferred: overlay planes are a per-drawable rendering target (extra tile set) that the rasteriser writes, with the scanout side set up by `OVR_*` and its tile list as already recorded.
- Established: nothing in `crm.so`, `Xsgi`, the kernel or Linux/NetBSD writes a transparent value, a key colour or an overlay-to-window-ID map to a GBE register. The X module's overlay code is the generic `nfbInitServerOverlayVisualsProperty`, which sets the X property only.
- Settled in pass 6: the overlay composites over the normal planes and value 0 is transparent (rev 1.1 specification). Earlier text, kept as the reasoning before the specification was read: the GBE register set in `GBE.h` (and Linux `gbe.h`) has no register that could carry the key, which suggests the compositing rule is fixed in hardware (inferred, from the register list only). Needs a capture: write a known value into the overlay plane over a known frame buffer on a real O2 and read the pixels back through the video output, once for each of overlay value 0 and non-zero.

### Display-ID plane fill, the remaining unknowns

- Unknown: how `gbeLoadDispIDs` (`crm.so` `0x45a350`) maps an X window to a window ID index. The routine is a long unrolled walk over clip-region rectangles (a first part at `0x45a3d8..0x45a700` only counts them and sizes a stack buffer); the selection of the index per window was not followed. Needs a capture: dump the DID tile list of a running system (`DID_CONTROL` pointer, one 512-byte slot per line) with two windows of different visuals side by side.
- Settled in pass 6 (rev 1.1 specification, field `xend`): the x in a DID entry is the end of a run. Earlier text: whether the x in a DID entry marks the start or the end of a run. The last entry of a line carries `width - 1` (established above), which fits an end-of-run reading (inferred), but no read code shows GBE's comparison. Needs the same capture, or a Linux/NetBSD-independent GBE datasheet, which this workspace does not have.

# Pass 6: cross-read against the GBE specification and the remaining kernel globals

Sources: [gbe-spec] "GBE ASIC spec for REV1.1", 18 July 1996, 50 pages (page numbers below are the document's own "n of 50"); the kernel `crime_init.o` listing and its symbol and relocation tables (`readelf -s`, `readelf -r`); `crime_retrace.c`. The specification describes revision 1.1 silicon only (its `CTRLSTAT` chip-id field resets to 1) and IRIX tests a revision word against 2, so everything taken from it below is labelled "rev 1.1". Whether a later revision differs is unknown wherever IRIX shows a revision gate.

## Reset state (rev 1.1, [gbe-spec] pp. 36-47)

Established, rev 1.1: reset values of the registers a driver sees.

| Register | Reset |
|---|---|
| `CTRLSTAT` (`+0x00`) | chip id 1 in 3:0; all ten `io_n` pin pairs `11` (data 1, output-enable-bar 1, so every pin is an input); `half_phase` 0; `csync_polarity` 0; pixel-clock select (29:28) `00`, the external TTL clock input |
| `DOTCLK` (`+0x04`) | all fields 0 |
| `I2C` (`+0x08`), `I2CFP` (`+0x10`) | data and clock both 1 (open-drain released) |
| `SYSCLK` (`+0x0c`) | `tm(0)` 1, every other defined bit 0 |
| `DEVICE_ID` (`+0x14`) | `0x666` |
| `VT_XY` (`+0x10000`) | `vt_freeze` 1 (counters stopped), counters 0; every other timing register 0 |
| `OVR_*`, `FRM_*`, `DID*` | 0 (every DMA-enable bit clear); `WID`, `CMAP`, `GMAP`, cursor RAM and registers have no stated reset |
| `CMFIFO` (`+0x58000`) | 0 |
| `CRS_1` (`+0x70004`) | 0 (cursor off) |
| `VC_2` (`+0x80008`) | flicker filter 1, auto field 1, others 0; `VC_3` `vc_oddeven` 1 |

How this meets IRIX (established from `gbeProbe`, `gbeStop`, `crimeInitInfo`):

- `gbeProbe` accepts a device only when `+0x14` reads `0x666`, then writes `CTRLSTAT = 0x30000000` (internal dot-clock PLL selected, all ten `io_n` pins set to outputs driving 0) and writes 0 to `VT_XY` only if its freeze bit (31) reads set, which starts the counters at the reset (all-zero) limits. The bit-31 read matches the reset value above.
- `crimeInitInfo` then rewrites `CTRLSTAT` as `(old & 0x30000000) | 0xaa000`: the clock select is kept and bits 13, 15, 17, 19 become 1, which turns `io_3` to `io_6` back into inputs and leaves `io_0` to `io_2` and `io_7` to `io_9` as outputs driving 0 (the pin pairs are data/output-enable-bar per [gbe-spec] p. 36).
- The same function then reads the four data bits of `io_3` to `io_6` (register bits 12, 14, 16, 18) as a 4-bit board strap value, stored at board offset `+0x28`, and the chip revision nibble (3:0) at `+0x2a` (established). What each strap code means is unknown here; one use is established: when all four read 0 the global `gbe_gammawar` (initial value 1, `.sdata` of `crime_init.o`) becomes 1, and when any is non-zero it becomes 0 (the code only writes it while it is non-zero). `gbeGmapInit` loads the alternative gamma table when it is 1 (see `GBE.h`).
- `gbeBlankScreen` blanks by writing `0x000aa000` (clock select 0, the external clock input, which is not driven) and unblanks with `0x300aa000` (established). Inferred: blanking is a clock deselect, as `GBE.h` says.
- Stopping the display (`gbeStop`, established): save `FRM_CONTROL`, `OVR_CONTROL`, `DID_CONTROL`; clear the DMA-enable bit of each (bit 0, bit 0, bit 16); wait up to 20,000 times 10 microseconds (0x4e20 polls) for the live twins to follow; then write `FRM_CONTROL = (saved without bit 0) + 0x20` and wait for `FRM_INHWCTRL` to equal it. The spec makes sense of this: the `*_CONTROL` registers are shadows (spec names `FRM_3`, `OVR_2`, `DID_SHADOW`) copied into the live twin (`FRM_2`, `OVR_1`, `DID`) at the beginning of blanking ([gbe-spec] pp. 42-44, established). The `+0x20` bumps the tile-list pointer by one 32-byte unit, because the pointer field is bits 31:5 ([gbe-spec] p. 43): a changed pointer is visible in the live register once the copy happened, so the loop is a fence that waits for one more blanking edge (inferred reason). Linux writes the pointer shifted by 9 (`gbefb.c`), a coarser alignment than the 32 bytes the spec and IRIX use; both are acceptable to the hardware if the list is 512-byte aligned.

Unknown: reset values on revisions after 1.1; the meaning of the strap codes; what `io_0` to `io_2` and `io_7` to `io_9` drive on the O2 board.

## Colour-map FIFO (settles the conflict in `GBE.h`)

Established, rev 1.1 ([gbe-spec] p. 18, p. 45): the colour map is single-ported, so writes go through a 64-deep FIFO that drains during horizontal and vertical blanking; `CMFIFO` bits 5:0 report the number of free entries; the true free count may be higher than the value read but never lower; software must never have more than 64 writes outstanding and may fill an empty FIFO with 64 writes then poll for a low-water mark. This is the X server's reading (free slots, wait for 48) and contradicts the Linux driver, which waits while the field is 63 or more (an occupancy reading). The specification and IRIX agree; Linux disagrees for rev 1.1 and its behaviour on real silicon is unknown here.

Inferred: a six-bit field cannot hold 64, so an empty FIFO on rev 1.1 reads 0 (64 wrapped); this explains the X server's extra "accept 0" test for revisions below 2 and the spec's reset value 0. Later revisions apparently never report 0 for an empty FIFO. A capture still settles it (listed): read the register at reset and after a burst.

## Overlay, cursor and display-mode compositing (settles earlier unknowns)

Established, rev 1.1 ([gbe-spec] pp. 14-17, 21, 44):

- Priority at the output: an opaque cursor pixel wins; otherwise a non-zero overlay pixel; otherwise the normal planes. Overlay value 0 is transparent. The overlay is 8 bits per pixel, always a colour index into the last 256-entry window of the colour map (entries 4352 to 4607 of the 4608-entry rev 1.1 map, which is the `CM` group `0x11` that IRIX's textport and X module use), always passes the gamma map, and has no window-ID bits of its own. A zero tile-pointer entry in the overlay list suppresses the fetch and yields zero (transparent) pixels; the overlay can be disabled outright with its enable bit. Cursor pixels bypass the gamma map.
- This settles the overlay compositing rule asked about above (`Overlay and underlay`) for rev 1.1: the rule is fixed in hardware and no register carries a key colour, as that section inferred. An "underlay" does not exist in the spec; the X module's underlay visual wording is software only (inferred, from the absence of any hardware path).
- Colour-map entry `0x1102` (group `0x11`, index 2) is therefore overlay value 2 in rev 1.1 terms, which fits its use as textport colour 1 (established above); why the X module skips the hardware write while the screen flag is set is still unknown.
- Window-ID table entry ([gbe-spec] p. 44): `BUF` 1:0 (`01` lower half, `10` upper half, `11` both of a double-buffered pixel), `TYP` 4:2 (0 I8, 1 I12, 2 RG3B2, 3 RGB4, 4 RGB5, 5 RGB8), `CM` 9:5 (upper five bits of the colour-map index for I8, or the per-component direct-colour map selector for RGB8 when non-zero), `GM` 10 (1 disables gamma), `AUX` 12:11 (drives the digital pixel bus for the flat-panel adapter). `BUF` 0 is not defined by the spec; IRIX's use of it is an inference recorded in the first window-ID section. RG3B2, RGB4 and RGB5 pixels are widened to eight bits per channel by bit replication before the colour map. The pixel formats are 8, 16 and 32 bits deep; the spec's format diagram shows I8 in 7:0, I12 in 11:0, RG3B2 as 3:3:2 in 7:0, RGB4 as four 4-bit fields (15:12, 11:8, 7:4, 3:0), RGB5 as 5:5:5 in 14:0 and RGB8 as four 8-bit fields (31:24 to 7:0); which field is which colour is not labelled in the extracted text (unknown here, and not needed for the register contract).
- Double buffering by `BUF`: with a 16- or 32-bit pixel split into two buffers the XMAP stage picks the front or back half per pixel by `BUF`; 8+8 and 16+16 double buffering use this ([gbe-spec] pp. 1, 14, 17). Established: the retrace-time `BUF` rewrite in `GBE.h` is therefore a buffer flip with no frame-pointer change, as `GBE.h` inferred.
- The spec's colour map has 4608 entries; Linux and IRIX's later window tables (`ar` set, groups up to 23) use 6144. Inferred: the larger map belongs to a later GBE revision, which would also explain the revision split between the two table sets; unknown which revision.

## Display-ID (DID) tables ([gbe-spec] pp. 15-16, 44)

Established, rev 1.1:

- `DID_CONTROL` (`+0x40004`, live twin `+0x40000`) holds `did_base` in bits 15:0 (the upper 16 bits of the physical address of one 64 KiB table, aligned on 64 KiB) and the DMA enable in bit 16. The kernel's retrace handler writes `0x10000 | entry` where `entry` is a 16-bit element of a board table of three (`crime_retrace.c`, near the `0x40004` store), so the kernel keeps three DID tables and selects one per state. This corrects the wording earlier in this file where `DID_CONTROL` was said to point at a 64-entry list: it holds one 64 KiB table's tile number, and the 64-entry list at `+0xa0` is a different object (its entries are copies of one tile number; its consumer is not established).
- The table holds a frame table of 32-bit entries followed (anywhere in the same 64 KiB) by line tables of 16-bit entries. Frame entry: `yend` 10:0 (last line of a vertical run, line 0 the first active line), `offset` 18:11 (16-bit units into the block), `block` 25:19 (512-byte block number), 31:26 unused. The line table address is `did_base + 512 * block + 2 * offset`, and one must not cross a 512-byte boundary (at most 256 entries). A frame entry repeats its line table until `yend` matches, then moves on. Line entry: `xend` 10:0 (last pixel of a horizontal run), `did` 15:11 (an index into the 32-entry window table); the last entry of a line must carry `xend` 2047.
- This settles which end `x` marks: `xend`, the end of a run. IRIX's entry `WID << 11 | x` is exactly this layout, and its terminating entry carries `width - 1` (the screen width minus one, not 2047; the spec asks for 2047, so the X module's value is accepted by silicon in practice, reason unknown). `did_startx`/`did_starty` (`VT_17`) preset the counters so that `xend` 0 is the left edge of the active raster.
- The spec says a frame table and line tables share one 64 KiB table. IRIX's `gbeLoadDispIDs` gives every display line its own 512-byte slot and counts 128 lines per 64 KiB block. A 64 KiB table filled with 128 line slots has no room for a frame table, so either the X module places the frame table in a block it counts separately, or the counting is of line tables only; the layout actually produced is not decoded. Unknown, with a capture listed.

## Tile lists and DMA ([gbe-spec] pp. 4-7, 14, 17)

Established, rev 1.1:

- Normal and overlay tile lists are arrays of 16-bit entries holding the upper 16 bits of the tile's physical address (64 KiB tiles, aligned); the list base is 32-byte aligned and must not cross an 8 KiB DRAM page; GBE reads the whole list into on-chip RAM at the beginning of vertical blanking, so a list rewritten during the active period takes effect the next frame; entries run in raster order, top-left first. The list RAMs hold 128 entries (normal) and, by the text, 32 (overlay; the block diagram shows twice that, a conflict inside the spec). The kernel's frame lists at `+0x200`/`+0x300` are 0x100 bytes (128 entries) and its overlay lists 0x40 bytes (32 entries), which fit those sizes (established sizes; the fit is the inference). A 128-tile limit also bounds the largest 32-bit screen: 1600 by 1024 needs 13 by 8 = 104 tiles, 1600 by 1200 would need 130 (inferred; the largest format file IRIX ships is 1600 by 1024).
- Pixels are fetched from system memory only. GBE sends read requests of a count of 256-bit words, 512-byte aligned, never crossing an 8 KiB DRAM page; CRIME answers in request order; up to eight requests may be outstanding; CRIME keeps a 16-entry memory request queue and 16-entry by 256-bit read buffers; GBE video-capture writes need a done message before the next write ([gbe-spec] pp. 5-7, 9). All register access from the CPU is 32 bits, uncached, with a 24-bit address and no wait states; only the colour-map FIFO needs software flow control.
- Pixels within a tile: 128 lines of 512 bytes, 8-bit pixels 512 wide, 16-bit 256, 32-bit 128, laid out big-endian within the 256-bit memory word with the lowest word the leftmost pixel ([gbe-spec] pp. 13-14). Matches the kernel's tile geometry above.
- Address window: the CRIME specification's GBE address table lists only `0x40000000` to `0x7fffffff` (the full RAM alias) as memory and marks `0` to `0x3fffffff` and `0x80000000` upwards reserved ([spec] PDF 49, table 3-3). IRIX's tile lists hold tile numbers below `0x2000` (13 bits, `& 0x1fff`) and Linux builds tile entries as `phys >> 16` of low memory, so both put GBE addresses below `0x40000000` on the bus. So the reserved-range note does not describe the shipped decode, or CRIME maps low addresses for GBE as it does for the CPU; which is unknown (listed).

## Interrupts ([gbe-spec] pp. 20, 7)

Established, rev 1.1: four vertical interrupts `vt_intr0` to `vt_intr3` (`VT_8` bits 23:12 and 11:0, `VT_9` likewise) fire when `vt_y` equals the programmed line; each is latched in CRIME as a one-shot, and software can only clear them by writing CRIME (the interrupt message carries a 4-bit mask; a set bit sets the CRIME latch, a clear bit changes nothing). `vt_y` is readable at any time. This agrees with the IRIX acknowledgement by clearing CRIME `+0x28` bits and with GBE having no clear register.

Established (`gbeCacheVtInfo`, `crimeRetraceHandler`, `crime_retrace.c`): per mode IRIX computes two lines from the record: line 1 at `F20 - 0x20` (32 lines before vertical blank starts, the "pre-blank" interrupt), line 0 at `F20 + 4`, wrapped by `F1e` when it passes the frame total (4 lines after vertical blank starts, the retrace interrupt). It writes `VT_INTR01 = line1 | line0 << 12`, writes it again from the handler each frame, and parks lines 2 and 3 (and both of 0 and 1 when no display is open) at `0xfff`/`0xffffff`. The handler clears CRIME `+0x28` bit 16 first and rewrites the register. Lines 2 and 3 belong to the high-level interrupt scheduler below.

### High-level interrupt scheduler (lines 2 and 3)

Established by reading `crime_retrace.o` (IRIX 6.5.30, `.text` 0x2a64-0x316c: `crime_hli_handler` 0x2a64, `crime_schedule_hli` 0x2c70, `crime_hli_sched` 0x2e1c, `crime_hli_unsched` 0x2ee0, `crime_hli_update` 0x3048) and the dispatcher `crimeInterrupt` (`crime.o` 0x4af8-0x4b3c):

- Lines 2 and 3 carry software requests for "call me when the beam reaches line L". The kernel keeps, in the GBE state record (offset 140 of the board record): a request counter at +804, a software copy of `VT_INTR23` at +808, one chain of requests per hardware line at +812 + 4n (n = 0 to 3; the scheduler uses only n = 2 and 3), and a pending chain at +828.
- `crime_hli_sched(board, fn, arg, line, span, relative)` allocates a 24-byte request {id, fn, arg, line, span, next}, gives it the next id from +804, adds 40 to `line` when `relative` is 1, and calls `crime_schedule_hli`. It returns the id.
- `crime_schedule_hli` tries line 2 and then line 3. A free line takes the request and is programmed at once: line 2 into `VT_INTR23` bits 23:12 (the copy at +808 is masked with `0xff000fff`, the `.lit8` constant at offset 8), line 3 into bits 11:0, each from `line & 0xfff`, and the copy is written to GBE `+0x10024`. A busy line accepts the request only when its line falls within three lines after the line already programmed (`L <= line < L + 3`); it then joins that chain, ordered by `line + span`. A request no line accepts joins the pending chain in the same order. So two hardware lines serve any number of requests, three lines of slack per hardware line.
- `crimeInterrupt` sends CRIME inputs 18 and 19 to `crime_hli_handler(board, input - 16)`, so input 18 is GBE line 2 and input 19 line 3. The handler calls every request on that line's chain (`fn(arg)`), then, when the pending chain is not empty, moves the pending head and every following request with a line below head + 3 onto the hardware line, programs the head's line into the same `VT_INTR23` field, and puts the chain that just fired at the end of the pending chain. Requests therefore repeat every frame until removed, rotating through the two lines. Last, it reads CRIME `+0x28`, clears bit 16 + n and writes it back (bits 16 to 19 for lines 0 to 3).
- `crime_hli_unsched(board, id)` unlinks the request and frees it; when the chain of line 2 or 3 becomes empty it parks that field at `0xfff` (ORs `0xfff000` or `0xfff` into the copy and writes `VT_INTR23`). It returns 6 for an unknown id. `crime_hli_update(board, id, line, span)` unlinks a request, stores the new line and span and schedules it again; as written it never matches a request that is alone on its chain (it skips chains whose head has no successor), and returns 6 then.
- No object in this workspace calls `crime_hli_sched`, `crime_hli_unsched` or `crime_hli_update` (an `nm` scan of every object and archive under `root/` finds them only as definitions); they are exported for kernel modules that are not part of the graphics files listed in IRIX_FILES.md. Which modules use them, and with which lines, is outside this workspace, not a hardware question. With no caller, a stock graphics session leaves lines 2 and 3 at `0xfff`.

Unknown, with a capture listed: whether a line interrupt can fire twice for one `vt_y` match when the line is reprogrammed past the beam.

## Kernel globals behind the timing code (`crime_init.o` symbols and relocations)

The decompiler prints every global-pointer-relative load as the same name; resolving each load against the object's `R_MIPS_GPREL16` relocations gives the real variables (established, `readelf -r` in order against the listing; counts match 37 to 37):

- In `gbeSetTimingRegs`, the tests "below 9", "non-zero" and "9 or more" use `crm_dc_board_installed` (initial 0 in `crime.o`); the cursor-start offset `G` used in `CRS_START_XY` is `gbemn`, a separate kernel variable with initial value 54 (`.sdata` word at offset 0xc of `crime_init.o`). So the per-revision global in the "Register values" list above is `gbemn` for the cursor and `crm_dc_board_installed` for the three gates. The name `crm_dc_board_installed` is the only evidence that the gate tests a board option; its value set elsewhere is unknown.
- In `crimeInitInfo`: `crm_fbdepth` (initial 32): 16 selects a 16-bit frame buffer, anything else 32 (board byte `+0x2f` receives 16 or 32); `physmem`: when it is 8192 or less the board byte `+0x2b` is cleared and the depth forced to 16 (pages; established the number, inferred that the page unit is 4 KiB so the threshold is 32 MiB of RAM); `crm_default_vtiming` (initial 9) is the format id used when no NVRAM timing is set, so the default mode is built-in record 9, 1280 by 1024 at 60 Hz (established from the id table above).
- `VT_XYMAX`: the spec says the counters reset when `vt_x == vt_maxx` and `vt_y == vt_maxy` ([gbe-spec] p. 19), so a register value of N gives a period of N + 1. The kernel writes `F14 | F1e << 12`, and the conversion above makes `F14` and `F1e` the exact totals (800 and 525 for 640 by 480). Taken together, the programmed period is one clock and one line longer than the stated format (inferred from those two established facts, not observed); the kernel's other timing fields carry small offsets (for example `F18 - 3`), so a deliberate allowance is possible. Unknown, with a capture listed: the measured frame rate against the stated 59.94 Hz.

## What remains unknown for the display back end

Every item below is listed with its capture in [captures.md](captures.md): the colour-map FIFO reading on real silicon; later-revision reset values and the 6144-entry map; the DID table layout the X module produces and why `xend` is `width - 1`; the GBE address window for low memory; the frame period against `VT_XYMAX`; the meaning of the board strap codes and of `crm_dc_board_installed`; the third window-ID word (settled as a software key, bits unknown); the video-capture block (`VC_*`), which IRIX never touches in the files read.
