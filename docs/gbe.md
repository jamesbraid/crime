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
- Sync and blank limits (spec registers `VT_2`, `VT_3`, `VT_4`): `VT_VSYNC` (`+0x10008`) takes the line where vertical sync turns off in bits 11:0 and where it turns on in bits 23:12, `F26 | F24 << 12`; `VT_HSYNC` (`+0x1000c`) holds the pixel counts at which horizontal sync turns off and on, `F1c | F1a << 12`; `VT_VBLANK` (`+0x10010`) holds the lines where vertical blank turns off and on, `F22 | F20 << 12`. The off value is the low field in all three, as the specification's field tables give it.
- `VT_HBLANK` (`+0x10014`): `(F18 - 3) | ((F16 + F14 - 5) mod F14) << 12`. When `crm_dc_board_installed` is below 9 and the board-description byte at `+45` is non-zero, `VT_VBLANK` and `VT_HBLANK` are rewritten as `F0a << 12 | 0xfff` and `F08 << 12 | 0xfff` (established, `gbeSetTimingRegs` `0x55c` to `0x59c`, re-read). That variable is 0 when no dual-channel option is fitted, so the rewrite also runs without the option; it is skipped only for option ids of 8 and above. The byte at `+45` is the one that halves the frame height written to `FRM_SIZE_PIXEL` (`0x7a4` to `0x7bc`), so it is the interlace flag (inferred from that use). What the rewrite is for is unknown: no shipped software or published source depends on it. Routes tried: the disassembly of `crime_init.o`; [gbe-spec] was not re-read for it.
- Colour-map write window (spec registers `VT_15` and `VT_16`): `VT_HCMAP` (`+0x1003c`) holds the pixel counts that clear and set the colour-map write enable, `F18 | F16 << 12`, and `VT_VCMAP` (`+0x10040`) the lines that do the same vertically, `F22 | F20 << 12`. The specification's field table calls the high field of `VT_HCMAP` `vt_vcmap_on`, which reads as a typographical slip for `vt_hcmap_on`, the name the same specification uses in its timing description (inferred).
- `VT_FLAGS` (`+0x10018`): 0 for a CRT format.
- `VT_F2RF_LOCK` (`+0x1001c`): with flags `& 0x12`, `F20 | F20 << 12`; otherwise `F20 << 12 | 0xfff`.
- `DID_START_XY` (`+0x10044`): the vertical field (23:12) is `v & 0xfff` where `v = F20 - F22 - 1`, negated when positive; the low field is `F18 - 20`, plus `F14` when that is negative. `CRS_START_XY` (`+0x10048`): the same vertical field, plus one line, and `F18 - G` modulo `F14`, where `G` is the same per-revision kernel global as above. `VC_START_XY` (`+0x1004c`): the vertical field with `F18 - 4`. The names are Linux's.
- `FP_HDRV`, `FP_VDRV`, `FP_DE` (`+0x10028`, `+0x1002c`, `+0x10030`): parked at `0xfff`/`0x1fff` for a CRT format; filled from the flat-panel set-up on a panel (established for the CRT case only). Layout settled in the 2026-11 pass (established, [gbe-spec] pages 39 and 40, the register tables VT_10 to VT_12): bits 11:0 hold the "off" count, which clears the signal, and bits 23:12 the "on" count, which sets it, so the parked words are off 4095 with on 0 (`FP_HDRV`), off 4095 with on 1 (`FP_VDRV`) and 4095 for both halves of `FP_DE`; the fixed-panel word for byte 130 is off 806, on 771. `DID_START_XY`, `CRS_START_XY` and `VC_START_XY` (VT_17 to VT_19, same pages) have the horizontal start in bits 11:0 and the vertical start in bits 23:12, as the same tables give them. These offsets were "inferred" in [GBE_DECODE.h](../GBE_DECODE.h) because only Linux named them; the specification states them, so they are established now. One conflict is open: the specification compares both halves of `FP_DE` with the horizontal counter (page 39, "when vt_x=fp_de_off"), yet the kernel's fixed-panel values (off 806 and on 771 for the 1024 by 768 panel; off 1065 and on 1024 for the 1280 by 1024 panel) have the size of line counts: 806 is the usual total line count of a 1024 by 768 timing and 1024 the active line count of the other panel, and a horizontal pair 771 to 806 would fall inside the 1024 active pixels, where a display-enable signal cannot be off. Inferred: `FP_DE` is compared with the vertical counter and the specification text is a copy of the horizontal registers' wording; the kernel's numbers are the only support. Test that settles it on silicon: with a known CRT timing running, write `FP_DE` with on 100 and off 300, probe the flat-panel enable pin, and count transitions over one frame. Two per line (twice the total line count per frame) means the horizontal counter; two per frame means the vertical one.
- `FRM_SIZE_TILE` (`+0x30000`): width in whole tiles at 12:5, remainder in 32-byte units at 4:0, depth at 14:13 (16-bit 1, otherwise 2). A tile is 256 pixels wide at 16 bits and 128 at 32 bits. `gbeSetTimingRegs` in `crime_init.o` writes it from two fields of its second argument, the board record (not the timing record, which is the pointer at +48 of it): the width halfword at +32 and a depth byte at +47. When that byte is 32 the whole-tile count is width / 128, the remainder is the leftover pixels times 4 bytes divided by 32, and 0x4000 is ored in; any other value takes the 16-bit path (width / 256, leftover pixels times 2 bytes divided by 32, 0x2000). The divisions are signed and round toward zero. The remainder is therefore the leftover pixels times bytes per pixel over 32, as the entry says. The OpenBSD count (leftover pixels shifted right by depth over 16, then divided by 32) is a quarter of that at 16 bits and a sixteenth at 32 bits. `FRM_SIZE_PIXEL` (`+0x30004`): `height << 16`, halved for an interlaced record. `OVR_WIDTH_TILE` (`+0x20000`): width in 512-pixel tiles at 12:5 and the remainder in 32-byte units at 4:0 (the overlay is 8 bit). Layout agrees with Linux.
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

The computed refresh equals the file name for every row, which supports the field order. The `2@` files repeat the numbers of the matching single-channel formats (1024x768 at 60, 70 and 75 Hz; 1280x1024 at 48, 50, 60, 72 and 75 Hz); the `p` files differ from their base only in the file layout (the block starts a few words later). Established differences (word-by-word comparison of all eight `2@` files against their single-channel bases, 6.5.30 set, 2026-11-10): a `2@` file has the base's timing, clock and PLL words unchanged, and differs in exactly three places. The title is the base title followed by the text ` Dual Channel` (13 bytes, padded to the next word); the word at file offset `0xf0` is the title length in bytes without the terminator (0xb to 0x18 for the 1024x768 files, 0xc to 0x19 for the 1280x1024 files; every single-channel file holds its own title length there: 640x480_60 holds 3, 800x600 holds 0xa); and the option-hardware name is `O2_DCD` (length word 6) where the base has `None` (length word 4). Every other changed word is a file offset that moved by the inserted bytes (12 or 16 bytes after the title in the 1024x768 files, 16 or 20 in the 1280x1024 files, depending on whether the word lies before or after the option-hardware name). So the dual-channel formats carry no alternate-field timing, no second-channel origin and no refresh change: each channel runs the base format's timing (established). The `p` files were not compared word by word in this pass; their extra leading words stay unknown (low value: no reader parses them).

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
- Unknown: what 0x2d..0x2f of the board structure mean beyond the uses above, whether any shipped stereo mode uses the stereo emitter output, and the library that builds the description and fills the vertical table. Settling test: list every video-format file shipped with the O2 diagnostics and graphics init, decode the stereo-related flag word of each, and check whether any sets the stereo emitter bit; a shipped mode that sets it settles the first question, and none setting it leaves the output unused by shipped modes (still unknown for hardware).

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
- Established in Pass 4: the third word is a software matching key and never reaches the hardware. Pass 9 settles the masks it is compared under and the origin of its bits. Pass 3 text: its low two bits do not track `TYP` consistently across tables (for I12 it is 0 in the 16-bit tables and 2 in the 24-bit ones; for ARGB5 it is 1 and 3). The constant `0x3c` in bits 15:10 and the stored halfword 13 are also unexplained.
- Settled in pass 9 ("Display-ID table construction" near the end of this file): how a window gets its WID index and how the display-ID table is filled. Earlier text: how the window ID plane (display-ID plane) is filled per window was unknown.
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
- Established (`crmInstallPseudoColorMap`, the write loop at `0x473ae0..0x473bf0`): the loop counts entries in a register compared with 32 after each write and resets it to 0 after each wait, so it writes 33 entries per check, each check waiting until the count reads 48 or more (or, before revision 2, also accepting 0). Each entry goes to GBE `+0x50000 + 4 x index` as `R << 24 | G << 16 | B << 8` and to the module's software copy; index `0x1102` is skipped while the screen flag is set. 33 writes after a guaranteed 48 free never overrun the 64-entry FIFO (inferred).
- Unknown: whether the hardware drains the FIFO in strict write order; no shipped software reads a colour-map entry back, so none depends on it.

## Pass 3: display IDs, the third WID word, overlays, entry 0x1102 and libXsgivc

### How the DID plane is filled (`crm.so` `gbeLoadDispIDs`)

- Established: the routine builds 16-bit entries. The terminating entry of a line is `(t0 & 0xf800) | (width - 1)`, where `width` is the screen width halfword at +3472 of the screen record. Other entries are built with a shift of the window ID by 11 (`sll ..., 0xb`). So an entry is `WID << 11 | x`, with an 11-bit x.
- Established: `t0` is chosen by the same revision word (+3476) as the colour-map FIFO test: `0x2fff` (WID 5) below revision 2 and `0x37ff` (WID 6) at revision 2 or above. In both reserved tables that index is the RG3B2 entry (`0x00b`), so the line ends in the same format whichever table is loaded.
- Corrected in pass 9: the counter that stops at 128 is the 512-byte block number inside one 64 KiB table, not a line count. Line tables are packed several to a block, one per horizontal band of identical lines, not one 512-byte slot per display line (see "Display-ID table construction" in pass 9).
- Inferred: an entry gives the window ID that applies from (or up to) column x on that line, and the last entry covers the rest of the line to `width - 1`. Whether x marks a run's start or its end was not settled. Which of the three DID tile lists `gbeLoadDIDTable` selects (ioctl `0x55fd`) is displayed is per buffer state, as recorded above.

### The third WID word `0x3c0n`

Pass 3 found no reader. Pass 4 (end of this file) settles what the word is: a software matching key that never reaches the hardware. The meaning of its bits stays open there, with the next route in `docs/open-questions.md`.

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
- Settled in pass 9 ("The window-ID matching key"): the two masks are `0xffffffff` and `0x7fc`, so the key must match exactly and the value only in `TYP`, `CM` and `GM`.

### Overlay and underlay

- Established (kernel `crm_enableovl`, `crime.c` line 1042): the only overlay code in the kernel driver changes a drawable's rendering state, not a GBE register. It sets the drawable word at `+0x18` to `0x228`, and if that is the current drawable it saves the pixel pipe, reloads the three rendering TLBs for the drawable (`crmLoadTlbABC`), and restores. It is reached from ioctl `0x5609` with bit 4 of the user flags; bit 1 of the same flags selects the sibling `crm_enablesz` (z buffer). Inferred: overlay planes are a per-drawable rendering target (extra tile set) that the rasteriser writes, with the scanout side set up by `OVR_*` and its tile list as already recorded.
- Established: nothing in `crm.so`, `Xsgi`, the kernel or Linux/NetBSD writes a transparent value, a key colour or an overlay-to-window-ID map to a GBE register. The X module's overlay code is the generic `nfbInitServerOverlayVisualsProperty`, which sets the X property only.
- Settled in pass 6: the overlay composites over the normal planes and value 0 is transparent (rev 1.1 specification). Earlier text, kept as the reasoning before the specification was read: the GBE register set in `GBE.h` (and Linux `gbe.h`) has no register that could carry the key, which suggests the compositing rule is fixed in hardware (inferred, from the register list only).

### Display-ID plane fill, the remaining unknowns

- Settled in pass 9: `gbeLoadDispIDs` does not choose indices. It receives one screen region per WID index and rasterises them; the index is the window's slot in the 32-entry window-ID slot table.
- Settled in pass 6 (rev 1.1 specification, field `xend`): the x in a DID entry is the end of a run. Earlier text: whether the x in a DID entry marks the start or the end of a run. The last entry of a line carries `width - 1` (established above), which fits an end-of-run reading (inferred), but no read code shows GBE's comparison.

# Pass 6: cross-read against the GBE specification and the remaining kernel globals

Sources: [gbe-spec] "GBE ASIC spec for REV1.1", 18 July 1996, 50 pages (page numbers below are the document's own "n of 50"); the kernel `crime_init.o` listing and its symbol and relocation tables (`readelf -s`, `readelf -r`). The specification describes revision 1.1 silicon only (its `CTRLSTAT` chip-id field resets to 1) and IRIX tests a revision word against 2, so everything taken from it below is labelled "rev 1.1". Whether a later revision differs is unknown wherever IRIX shows a revision gate.

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

Settled in pass 7 (below): the revision nibble tells the rev 1.1 part (1) from its successor (2); the strap's only use is the gamma workaround, and its other meanings are labelled. Reset values after revision 1.1 are labelled there. What `io_0` to `io_2` and `io_7` to `io_9` drive is unknown: no shipped software or published source depends on it (routes in pass 7).

## Colour-map FIFO (settles the conflict in `GBE.h`)

Established, rev 1.1 ([gbe-spec] p. 18, p. 45): the colour map is single-ported, so writes go through a 64-deep FIFO that drains during horizontal and vertical blanking; `CMFIFO` bits 5:0 report the number of free entries; the true free count may be higher than the value read but never lower; software must never have more than 64 writes outstanding and may fill an empty FIFO with 64 writes then poll for a low-water mark. This is the X server's reading (free slots, wait for 48) and contradicts the Linux driver, which waits while the field is 63 or more (an occupancy reading). The specification and IRIX agree; Linux disagrees for rev 1.1 and its behaviour on real silicon is unknown here.

Inferred: a six-bit field cannot hold 64, so an empty FIFO on rev 1.1 reads 0 (64 wrapped); this explains the X server's extra "accept 0" test for revisions below 2 and the spec's reset value 0. Settled in pass 7 from the shipped diagnostics: an empty FIFO reads 63 on revision 2 and 0 on revision 1; revision 2 is inferred to queue at most 63, so its 0 means full, while revision 1's 0 means empty or full.

Unknown: whether revision 2 queues at most 63 entries (so that its 0 means full) rests only on inference above. The shipped diagnostics' wait loop on this field is the binary read that would settle it; the loop's compare value and its handling of revisions 1 and 2 were not re-read for this note.

## Overlay, cursor and display-mode compositing (settles earlier unknowns)

Established, rev 1.1 ([gbe-spec] pp. 14-17, 21, 44):

- Priority at the output: an opaque cursor pixel wins; otherwise a non-zero overlay pixel; otherwise the normal planes. Overlay value 0 is transparent. The overlay is 8 bits per pixel, always a colour index into the last 256-entry window of the colour map (entries 4352 to 4607 of the 4608-entry rev 1.1 map, which is the `CM` group `0x11` that IRIX's textport and X module use), always passes the gamma map, and has no window-ID bits of its own. A zero tile-pointer entry in the overlay list suppresses the fetch and yields zero (transparent) pixels; the overlay can be disabled outright with its enable bit. Cursor pixels bypass the gamma map.
- This settles the overlay compositing rule asked about above (`Overlay and underlay`) for rev 1.1: the rule is fixed in hardware and no register carries a key colour, as that section inferred. An "underlay" does not exist in the spec; the X module's underlay visual wording is software only (inferred, from the absence of any hardware path).
- Colour-map entry `0x1102` (group `0x11`, index 2) is therefore overlay value 2 in rev 1.1 terms, which fits its use as textport colour 1 (established above); why the X module skips the hardware write while the screen flag is set is still unknown.
- Window-ID table entry ([gbe-spec] p. 44): `BUF` 1:0 (`01` lower half, `10` upper half, `11` both of a double-buffered pixel), `TYP` 4:2 (0 I8, 1 I12, 2 RG3B2, 3 RGB4, 4 RGB5, 5 RGB8), `CM` 9:5 (upper five bits of the colour-map index for I8, or the per-component direct-colour map selector for RGB8 when non-zero), `GM` 10 (1 disables gamma), `AUX` 12:11 (drives the digital pixel bus for the flat-panel adapter). `BUF` 0 is not defined by the spec; IRIX's use of it is an inference recorded in the first window-ID section. RG3B2, RGB4 and RGB5 pixels are widened to eight bits per channel by bit replication before the colour map. The pixel formats are 8, 16 and 32 bits deep; the spec's format diagram shows I8 in 7:0, I12 in 11:0, RG3B2 as 3:3:2 in 7:0, RGB4 as four 4-bit fields (15:12, 11:8, 7:4, 3:0), RGB5 as 5:5:5 in 14:0 and RGB8 as four 8-bit fields (31:24 to 7:0); which field is which colour is not labelled in the extracted text (unknown here, and not needed for the register contract).
- Established ([gbe-spec] p. 17 and its diagram 1 on p. 18; the O2 technical report, section 9.5, says the same): pixels of types RG3B2, RGB4 and RGB5 are expanded to RGB8 by bit replication before the colour map or the gamma stage. Reading the diagram from the most significant bit down, a 2-bit component is its two bits repeated four times, a 3-bit component is bits 2:0, 2:0 and 2:1, a 4-bit component is bits 3:0 twice, and a 5-bit component is bits 4:0 followed by bits 4:2. With the colour-map index field `CM` zero the RGB8 result goes straight to the gamma stage; otherwise `CM` is joined to each component as the upper five bits of a 13-bit colour-map index ([gbe-spec] p. 17).
- Double buffering by `BUF`: with a 16- or 32-bit pixel split into two buffers the XMAP stage picks the front or back half per pixel by `BUF`; 8+8 and 16+16 double buffering use this ([gbe-spec] pp. 1, 14, 17). Established: the retrace-time `BUF` rewrite in `GBE.h` is therefore a buffer flip with no frame-pointer change, as `GBE.h` inferred.
- The spec's colour map has 4608 entries; Linux and IRIX's later window tables (`ar` set, groups up to 23) use 6144. Settled in pass 7: the `ar` set belongs to revision nibble 2, the successor part, so the 6144-entry map is that revision's (inferred from the table selection, which is established).

## Display-ID (DID) tables ([gbe-spec] pp. 15-16, 44)

Established, rev 1.1:

- `DID_CONTROL` (`+0x40004`, live twin `+0x40000`) holds `did_base` in bits 15:0 (the upper 16 bits of the physical address of one 64 KiB table, aligned on 64 KiB) and the DMA enable in bit 16. The kernel's retrace handler writes `0x10000 | entry` where `entry` is a 16-bit element of a board table of three (the retrace source, near the `0x40004` store), so the kernel keeps three DID tables and selects one per state. This corrects the wording earlier in this file where `DID_CONTROL` was said to point at a 64-entry list: it holds one 64 KiB table's tile number, and the 64-entry list at `+0xa0` is a different object (its entries are copies of one tile number; its consumer is not shown).
- The table holds a frame table of 32-bit entries followed (anywhere in the same 64 KiB) by line tables of 16-bit entries. Frame entry: `yend` 10:0 (last line of a vertical run, line 0 the first active line), `offset` 18:11 (16-bit units into the block), `block` 25:19 (512-byte block number), 31:26 unused. The line table address is `did_base + 512 * block + 2 * offset`, and one must not cross a 512-byte boundary (at most 256 entries). A frame entry repeats its line table until `yend` matches, then moves on. Line entry: `xend` 10:0 (last pixel of a horizontal run), `did` 15:11 (an index into the 32-entry window table); the last entry of a line must carry `xend` 2047.
- This settles which end `x` marks: `xend`, the end of a run. IRIX's entry `WID << 11 | x` is exactly this layout, and its terminating entry carries `width - 1` (the screen width minus one, not 2047; the spec asks for 2047, so the X module's value is accepted by silicon in practice, reason unknown). `did_startx`/`did_starty` (`VT_17`) preset the counters so that `xend` 0 is the left edge of the active raster.
- Settled in pass 9: IRIX puts the frame table in the first 8 KiB of the 64 KiB table (blocks 0 to 15) and packs line tables into blocks 16 to 127. The earlier reading of one 512-byte slot per display line was wrong.

## Tile lists and DMA ([gbe-spec] pp. 4-7, 14, 17)

Established, rev 1.1:

- Normal and overlay tile lists are arrays of 16-bit entries holding the upper 16 bits of the tile's physical address (64 KiB tiles, aligned); the list base is 32-byte aligned and must not cross an 8 KiB DRAM page; GBE reads the whole list into on-chip RAM at the beginning of vertical blanking, so a list rewritten during the active period takes effect the next frame; entries run in raster order, top-left first. The list RAMs hold 128 entries (normal) and, by the text, 32 (overlay; the block diagram shows twice that, a conflict inside the spec). The kernel's frame lists at `+0x200`/`+0x300` are 0x100 bytes (128 entries) and its overlay lists 0x40 bytes (32 entries), which fit those sizes (established sizes; the fit is the inference). A 128-tile limit also bounds the largest 32-bit screen: 1600 by 1024 needs 13 by 8 = 104 tiles, 1600 by 1200 would need 130 (inferred; the largest format file IRIX ships is 1600 by 1024).
- Pixels are fetched from system memory only. GBE sends read requests of a count of 256-bit words, 512-byte aligned, never crossing an 8 KiB DRAM page; CRIME answers in request order; up to eight requests may be outstanding; CRIME keeps a 16-entry memory request queue and 16-entry by 256-bit read buffers; GBE video-capture writes need a done message before the next write ([gbe-spec] pp. 5-7, 9). All register access from the CPU is 32 bits, uncached, with a 24-bit address and no wait states; only the colour-map FIFO needs software flow control.
- Pixels within a tile: 128 lines of 512 bytes, 8-bit pixels 512 wide, 16-bit 256, 32-bit 128, laid out big-endian within the 256-bit memory word with the lowest word the leftmost pixel ([gbe-spec] pp. 13-14). Matches the kernel's tile geometry above.
- Address window: the CRIME specification's GBE address table lists only `0x40000000` to `0x7fffffff` (the full RAM alias) as memory and marks `0` to `0x3fffffff` and `0x80000000` upwards reserved ([spec] PDF 49, table 3-3). IRIX's tile lists hold tile numbers below `0x2000` (13 bits, `& 0x1fff`) and Linux builds tile entries as `phys >> 16` of low memory, so both put GBE addresses below `0x40000000` on the bus. Settled in pass 7: Linux `gbefb` also fills its tile list with low CPU physical tile numbers (`gbe_mem_phys >> 16`, from `dma_to_phys`), while it gives the tile-list pointer as a DMA address. IRIX 6.5.30 and Linux both scan out correctly on O2s, so GBE fetches tiles at low physical addresses (inferred from the working software; the specification's reserved marking does not describe the shipped decode). Whether the low addresses and the `0x40000000` window reach the same memory through one decoder or two is unknown: no shipped software or published source depends on it. Tile-entry bit 15 on the GBE side: IRIX masks entries to 13 bits and Linux never sets it, so its meaning is unknown: no shipped software or published source depends on it. Routes tried: [spec] PDF 49, the 6.5.30 kernel (`crmLoadGbelists`), the X module, Linux `gbefb`, NetBSD `crmfb`, MAME.

## Interrupts ([gbe-spec] pp. 20, 7)

Established, rev 1.1: four vertical interrupts `vt_intr0` to `vt_intr3` (`VT_8` bits 23:12 and 11:0, `VT_9` likewise) fire when `vt_y` equals the programmed line; each is latched in CRIME as a one-shot, and software can only clear them by writing CRIME (the interrupt message carries a 4-bit mask; a set bit sets the CRIME latch, a clear bit changes nothing). `vt_y` is readable at any time. This agrees with the IRIX acknowledgement by clearing CRIME `+0x28` bits and with GBE having no clear register.

Established (`gbeCacheVtInfo`, `crimeRetraceHandler`): per mode IRIX computes two lines from the record: line 1 at `F20 - 0x20` (32 lines before vertical blank starts, the "pre-blank" interrupt), line 0 at `F20 + 4`, wrapped by `F1e` when it passes the frame total (4 lines after vertical blank starts, the retrace interrupt). It writes `VT_INTR01 = line1 | line0 << 12`, writes it again from the handler each frame, and parks lines 2 and 3 (and both of 0 and 1 when no display is open) at `0xfff`/`0xffffff`. The handler clears CRIME `+0x28` bit 16 first and rewrites the register. Lines 2 and 3 belong to the high-level interrupt scheduler below.

### High-level interrupt scheduler (lines 2 and 3)

Established by reading `crime_retrace.o` (IRIX 6.5.30, `.text` 0x2a64-0x316c: `crime_hli_handler` 0x2a64, `crime_schedule_hli` 0x2c70, `crime_hli_sched` 0x2e1c, `crime_hli_unsched` 0x2ee0, `crime_hli_update` 0x3048) and the dispatcher `crimeInterrupt` (`crime.o` 0x4af8-0x4b3c):

- Lines 2 and 3 carry software requests for "call me when the beam reaches line L". The kernel keeps, in the GBE state record (offset 140 of the board record): a request counter at +804, a software copy of `VT_INTR23` at +808, one chain of requests per hardware line at +812 + 4n (n = 0 to 3; the scheduler uses only n = 2 and 3), and a pending chain at +828.
- `crime_hli_sched(board, fn, arg, line, span, relative)` allocates a 24-byte request {id, fn, arg, line, span, next}, gives it the next id from +804, adds 40 to `line` when `relative` is 1, and calls `crime_schedule_hli`. It returns the id.
- `crime_schedule_hli` tries line 2 and then line 3. A free line takes the request and is programmed at once: line 2 into `VT_INTR23` bits 23:12 (the copy at +808 is masked with `0xff000fff`, the `.lit8` constant at offset 8), line 3 into bits 11:0, each from `line & 0xfff`, and the copy is written to GBE `+0x10024`. A busy line accepts the request only when its line falls within three lines after the line already programmed (`L <= line < L + 3`); it then joins that chain, ordered by `line + span`. A request no line accepts joins the pending chain in the same order. So two hardware lines serve any number of requests, three lines of slack per hardware line.
- `crimeInterrupt` sends CRIME inputs 18 and 19 to `crime_hli_handler(board, input - 16)`, so input 18 is GBE line 2 and input 19 line 3. The handler calls every request on that line's chain (`fn(arg)`), then, when the pending chain is not empty, moves the pending head and every following request with a line below head + 3 onto the hardware line, programs the head's line into the same `VT_INTR23` field, and puts the chain that just fired at the end of the pending chain. Requests therefore repeat every frame until removed, rotating through the two lines. Last, it reads CRIME `+0x28`, clears bit 16 + n and writes it back (bits 16 to 19 for lines 0 to 3).
- `crime_hli_unsched(board, id)` unlinks the request and frees it; when the chain of line 2 or 3 becomes empty it parks that field at `0xfff` (ORs `0xfff000` or `0xfff` into the copy and writes `VT_INTR23`). It returns 6 for an unknown id. `crime_hli_update(board, id, line, span)` unlinks a request, stores the new line and span and schedules it again; as written it never matches a request that is alone on its chain (it skips chains whose head has no successor), and returns 6 then.
- No object in this workspace calls `crime_hli_sched`, `crime_hli_unsched` or `crime_hli_update` (an `nm` scan of every object and archive under `root/` finds them only as definitions); they are exported for kernel modules that are not part of the graphics files listed in IRIX_FILES.md. Which modules use them, and with which lines, is outside this workspace, not a hardware question. With no caller, a stock graphics session leaves lines 2 and 3 at `0xfff`.

Whether a line interrupt fires when its line is rewritten to the line the beam is on, or fires again after being rewritten behind the beam: unknown: no shipped software or published source depends on it. Routes tried: the rev 1.1 GBE specification (it says only that a match generates the interrupt and that the lines may be reprogrammed in real time for any number of interrupt points per frame), the 6.5.30 kernel scheduler above (it never programs a line within three lines of one already programmed, and reprograms a fired line only for the next frame), Linux `gbefb` (parks every line at `0xffffffff`), NetBSD `crmfb` and MAME (no line interrupts). A model should fire on the transition of `vt_y` into the programmed line, which satisfies every caller.

## Kernel globals behind the timing code (`crime_init.o` symbols and relocations)

The decompiler prints every global-pointer-relative load as the same name; resolving each load against the object's `R_MIPS_GPREL16` relocations gives the real variables (established, `readelf -r` in order against the listing; counts match 37 to 37):

- In `gbeSetTimingRegs`, the tests "below 9", "non-zero" and "9 or more" use `crm_dc_board_installed` (initial 0 in `crime.o`); the cursor-start offset `G` used in `CRS_START_XY` is `gbemn`, a separate kernel variable with initial value 54 (`.sdata` word at offset 0xc of `crime_init.o`). So the per-revision global in the "Register values" list above is `gbemn` for the cursor and `crm_dc_board_installed` for the three gates. Settled in pass 7: `crm_dc_board_installed` holds the dual-channel display option's board id plus one (0 when absent), and 54 is the cursor's fixed horizontal lead.
- In `crimeInitInfo`: `crm_fbdepth` (initial 32): 16 selects a 16-bit frame buffer, anything else 32 (board byte `+0x2f` receives 16 or 32); `physmem`: when it is 8192 or less the board byte `+0x2b` is cleared and the depth forced to 16 (pages; established the number, inferred that the page unit is 4 KiB so the threshold is 32 MiB of RAM); `crm_default_vtiming` (initial 9) is the format id used when no NVRAM timing is set, so the default mode is built-in record 9, 1280 by 1024 at 60 Hz (established from the id table above).
- `VT_XYMAX`: the spec says the counters reset when `vt_x == vt_maxx` and `vt_y == vt_maxy` ([gbe-spec] p. 19), so a register value of N gives a period of N + 1. The kernel writes `F14 | F1e << 12`, and the conversion above makes `F14` and `F1e` the exact totals (800 and 525 for 640 by 480). Taken together, the programmed period is one clock and one line longer than the stated format (inferred from those two established facts, not observed); the kernel's other timing fields carry small offsets (for example `F18 - 3`), so a deliberate allowance is possible. Settled in pass 7 as a driver expectation: the frame period is the programmed total.

# Pass 7: the diagnostics and the remaining display questions

Sources: the shipped IRIX 6.5.30 stand-alone diagnostics `ide.IP32` (`diags/ide.IP32`, stripped; `ide:ADDR` is a virtual address in its `objdump -d` listing); the 6.5.30 kernel objects `crime_i2c.o`, `crime_init.o` and `crime.o` (`objdump -d -r`); the X module `crm.so` and `setmon` strings; `mvp.o` (`nm`); the rev 1.1 GBE specification ([gbe-spec]); Linux `gbefb`.

## Chip revision and the colour-map FIFO

- Established (`ide:0xa00e2c54`): the diagnostics read GBE `CTRLSTAT` once, keep bits 3:0 and cache them; every colour-map wait branches on that value being below 2. The rev 1.1 specification's part resets this field to 1 (pass 6), so 1 is that part and 2 its successor. This is the same "below 2" gate the X module applies to its colour-map wait and its window tables (sections above), so the X module's R is this nibble (was inferred; now established by the agreement of the two readers).
- Established (`ide:0xa00d2674` to `0xa00d2788`, two routines, `CMFIFO` at GBE `+0x58000`, field `& 0x3f`): the wait for room, on revision 2, spins while the field is below 17; on revision 1 it stops when the field is 0 or 17 and above. The wait for an empty FIFO, on revision 2, spins until the field reads 63; on revision 1 until it reads 0. So the software reads the field as free entries on both revisions; on revision 2 an empty FIFO reads 63, and on revision 1 it reads 0.
- Inferred from those waits: revision 2 queues at most 63 entries, so its count never wraps and 0 means full; revision 1 queues 64, so its six-bit count wraps and 0 means either empty or full, which is why the revision-1 wait for room also accepts 0. This settles the reading: free entries (the specification and the X server were right; Linux's occupancy reading is wrong).
- Inferred from the revision-gated window tables (`gbeHWCmaps` for revision 1, `arHWCmaps` for revision 2, established above): the 6144-entry colour map is revision 2's. Both table sets put the overlay at group `0x11` (entries `0x1100` to `0x11ff`), and the kernel textport writes its colours there (above), so the overlay's colour-map window is the same on both parts (established as the software's use). Whether revision 2 keeps the rev 1.1 overlay priority rule: unknown: no shipped software or published source depends on a difference. Routes tried: [gbe-spec] (revision 1.1 only), the 6.5.30 kernel, X module and `ide.IP32` (no revision gate touches overlay compositing), Linux and NetBSD (no overlay).

## Board strap and the dual-channel option

- Established (`ide:0xa00e2be4` to `0xa00e2c48`): the diagnostics gather `CTRLSTAT` bits 12, 14, 16 and 18 into a 4-bit value (bit 12 as bit 0 up to bit 18 as bit 3) exactly as the kernel does, after writing `0x020aa000` to `CTRLSTAT` when the clock-select and pin bits (`& 0x300aa000`) read all zero. The kernel's only use of the value is the gamma workaround on value 0 (above). What the codes mean beyond that is unknown: no shipped software or published source depends on more. Routes tried: `ide.IP32`, the 6.5.30 kernel (`crimeInitInfo`, `gbeGmapInit`), [gbe-spec] p. 36, Linux, NetBSD, MAME.
- Established (`crime_i2c.o` `i2cfp_DualChannelProbe`, `0x19c0` to `0x1a7c`; `crime.o` `0x521c` to `0x5224`): the dual-channel display option is probed on the flat-panel I2C bus as an 8-bit port at bus address `0x7e`. The probe reads the port (no answer gives 0), writes `0xff` and reads bits 6:5 as the id's high half, writes `0x7f` and reads bits 6:5 as the low half, writes back the byte of its first read with `0x70` ORed in (the original byte, not a fresh read), and returns the 4-bit id plus one. `crime.o` stores the result in `crm_dc_board_installed`, so that variable is 0 without the option and id + 1 with it.
- Established (`crime_init.o` `gbeSetTimingRegs` `0x634` to `0x6a8`): with the option present the kernel sends it `0x7f`, or `0xff` when the record's pixel clock exceeds 100000 (kHz), then programs `FP_HDRV` (`+0x10028`) as `(width + d) << 12 | d` and `FP_VDRV` (`+0x1002c`) as `(height + 1) << 12 | 1`, with d = 2 for values below 9 (ids 0 to 7) and 0 otherwise. The `d` test (`0x66c`) is a different test from the "below 9" gate that rewrites `VT_VBLANK` and `VT_HBLANK` (`0x560`): the two share the constant 9 and the variable, but the second is also true when the option is absent, so "two families need different delays" explains only the first (inferred; it does not explain the second).
- Established (`crime_init.o` `gbeSetTimingRegs` `0x600` to `0x6a8` and `0x8a0` to `0x96c`, re-read): the flat-panel drive registers are set in one of four ways, chosen by the board-description byte at `+46`. Values 130 and 131 pick a fixed panel, 132 picks the 1600 by 1024 panel, and anything else is the CRT default. (a) Default with no option fitted: `FP_HDRV` = `0xfff`, `FP_VDRV` = `0x1fff`, `FP_DE` (`+0x10030`) = `0xffffff`, all parked. (b) Default with the option fitted: the command and `FP_HDRV`/`FP_VDRV` described above; this routine does not write `FP_DE`. (c) Byte 130, 1024 by 768 panel, and byte 131, 1280 by 1024 panel, with no option fitted: `FP_DE` = `806 | 771 << 12` for 130 and `1065 | 1024 << 12` for 131; `FP_HDRV` = 1025 and 1281 (the width plus one), `FP_VDRV` = `(769 | 0x1000)` and `(1025 | 0x1000)` (the height plus one, with bit 12 set). With the option fitted these two bytes take path (b) with the same two fixed numbers unused. (d) Byte 132, 1600 by 1024 panel: `FP_HDRV` = 1600, `FP_VDRV` = `1025 | 0x1000`, and then `VT_FLAGS` (`+0x10018`) is rewritten as `(old & 0x7d) | v`, where v is 0 when the kernel option lookup for the string `crt_option` (read-only data `0x10`) finds a value whose first character is `1`, and 2 when it finds any other value; when the lookup finds nothing the code takes the word at stack offset 4, which the routine never stores to, so v is undefined in that case (read at `0x93c` to `0x968`). This path ignores whether the dual-channel option is fitted. What bit 1 of `VT_FLAGS` does is unknown here: the object only sets it, and the specification page for this register was not re-read in this pass. Next route: the `VT_FLAGS` field list in [gbe-spec] against the Linux and OpenBSD names (bit 5 is sync-on-green off, above).
- Established ([linux] `include/video/gbe.h` `GBE_CRS_MAGIC` 54, used by `gbefb` exactly as the kernel uses `gbemn`): 54 is the cursor's fixed horizontal lead before the end of horizontal blank, a property of the cursor pipeline, not of a board.
- Unknown: no shipped software or published source depends on what `io_0` to `io_2` and `io_7` to `io_9` drive. Routes tried: [gbe-spec] p. 36 (pin pairs only), `ide.IP32` and the kernel (they write the pins as a pattern and read back only the four strap bits), Linux, NetBSD, MAME.

## Video timing period

- Established: the kernel's built-in record for 640 by 480 (`crime_init.o` data at `0x22fc`, the same bytes at `ide.IP32` file offset `0xb1824` and in `ip32prom.image`) holds a field rate of 59940 (mHz), a pixel clock of 25175 (kHz) and totals of 800 by 525, so its authors computed the rate as clock / (htotal x vtotal). Every writer programs `VT_XYMAX` with the plain totals: the 6.5.30 kernel (`F14 | F1e << 12`) and Linux `gbefb` (`htotal`, `vtotal`); both set the vertical blank's end and the vertical pixel enable's start to the total itself (`VT_VBLANK` off = `VT_VPIXEN` on = `vtotal`).
- Inferred: the frame period is exactly the programmed total in both directions, with `vt_y` passing through the value equal to the total at the wrap (a comparison against the total must match, or blanking would never end). The specification's VHDL sketch, which it calls partial, shows a counter that holds the maximum for a full line and would give total + 1. The software's expectation, its own rate table and the blank comparisons all need period = total, so a model should use that. Whether silicon is one line or one clock longer is unknown: no shipped software or published source depends on it; software reads `VT_XY` only to test whether the beam is inside a blanking range. Routes tried: [gbe-spec] p. 19, `ide.IP32`, the 6.5.30 kernel, Linux, NetBSD, MAME; published refresh rates name the nominal rate only.
- The interrupt lines fire on a `vt_y` match ([gbe-spec] p. 20), so IRIX's lines `F20 - 32` and `F20 + 4` (above) fire at those line numbers counted from the top of the active area; established as specification plus kernel, nothing more to settle.

## Dot-clock coefficients of the shipped formats

Each `.vfo` file carries the three PLL scalars `DacPll_M`, `DacPll_N` and `DacPll_P` next to its nominal pixel clock (established: the schema lists the three names with a file offset each, and the values at those offsets were read as 32-bit big-endian words; the `p` and `2@` variants repeat the values of their base format). The output frequency is `M x f_ref / (N x 2^P)` with `f_ref` = 20 MHz ([gbe-spec] pp. 30-31, section 2.13, a 20 MHz crystal; rev 1.1). Established by arithmetic: with 20 MHz every shipped format lands within 1.3 percent of its nominal clock, and with 27 MHz none does (`640x480_60` would run at 33.75 MHz). Inferred: IRIX 6.5.30 assumes the 20 MHz reference on every board it supports, since neither `crmLoadTimingTable` nor `crmInvalidVideoTiming` selects a crystal by GBE revision (the kernel only range-checks the fields, see above); the 27 MHz reference that the Linux driver uses for revision 2 and later has no counterpart in the shipped IRIX code.

| File | M | N | P | VCO MHz (M x 20 / N) | Output MHz | Nominal MHz | Difference |
|---|---|---|---|---|---|---|---|
| `640x480_60` | 5 | 1 | 2 | 100.0 | 25.000 | 25.175 | -0.69 % |
| `800x600_60` | 8 | 1 | 2 | 160.0 | 40.000 | 40.000 | 0.00 % |
| `800x600_72` | 5 | 1 | 1 | 100.0 | 50.000 | 50.000 | 0.00 % |
| `1024x768_60` | 13 | 2 | 1 | 130.0 | 65.000 | 65.000 | 0.00 % |
| `1024x768_70` | 15 | 2 | 1 | 150.0 | 75.000 | 75.000 | 0.00 % |
| `1024x768_75` | 39 | 5 | 1 | 156.0 | 78.000 | 78.750 | -0.95 % |
| `1024x768_96s` | 31 | 3 | 1 | 206.7 | 103.333 | 103.503 | -0.16 % |
| `1280x1024_48` | 30 | 7 | 0 | 85.7 | 85.714 | 85.882 | -0.19 % |
| `1280x1024_50` | 9 | 1 | 1 | 180.0 | 90.000 | 89.460 | +0.60 % |
| `1280x1024_60` | 16 | 3 | 0 | 106.7 | 106.667 | 107.245 | -0.54 % |
| `1280x1024_72` | 13 | 2 | 0 | 130.0 | 130.000 | 129.468 | +0.41 % |
| `1280x1024_75` | 27 | 4 | 0 | 135.0 | 135.000 | 135.001 | 0.00 % |
| `1280x492_120s` | 16 | 3 | 0 | 106.7 | 106.667 | 107.144 | -0.45 % |
| `1600x1024_48p` | 34 | 7 | 0 | 97.1 | 97.143 | 97.219 | -0.08 % |
| `1600x1024_50p` | 5 | 1 | 0 | 100.0 | 100.000 | 101.270 | -1.25 % |
| `1600x1024_60p` | 38 | 7 | 0 | 108.6 | 108.571 | 108.732 | -0.15 % |

- Established: of the 15 built-in kernel records (`crime_init.o` `.data` from file offset 0x22e8, 0x30 bytes each), records 12 and 14 are all zero and the others carry the same M, N and P as the matching files at offsets 0x28, 0x2a and 0x2c, with two exceptions: record 13 (the stereo timing) carries M=27, N=5, P=0, not the 16, 3, 0 of `1280x492_120s`, and record 15 carries the 5, 1, 0 of `1600x1024_50p`, not the 34, 7, 0 of `1600x1024_48p`. For example id 1, 640 by 480, M=5, N=1, P=2, so the kernel's own table has the same 0.7 percent offset from 25.175 MHz.
- Established: the specification's own example coefficients are different and closer to nominal (25.175 MHz is M=146, N=29, P=4 with output 25.172 MHz; 135.000 MHz is M=216, N=32, P=1), and IRIX uses neither those nor a fixed set: it uses small integer M and N chosen once per format. A model that accepts any M, N and P in range and derives the pixel clock from them reproduces both.
- Established: the specification's ceiling is a 140 MHz dot clock and it lists 1600 by 1200 at 60 Hz (162 MHz) as not supported by the current GBE ([gbe-spec] pp. 1 and 32); the fastest shipped format is `1280x1024_75` at 135.0 MHz, and the largest VCO frequency is 206.7 MHz (`1024x768_96s`), so every shipped VCO frequency lies from 85.7 to 206.7 MHz. Unknown: whether silicon locks above 140 MHz; no shipped software or published source depends on it. Routes tried: [gbe-spec], the 26 format files, the kernel table, `crmInvalidVideoTiming`.
- Established (public Linux `gbefb.c`, read at its current revision): for the flat panel it hardcodes M=4, N=1, P=0 (80 MHz at 20 MHz), whereas the shipped `1600x1024` formats run at 97.1, 100.0 and 108.6 MHz and Linux's own default panel mode has a 9353 ps pixel clock (106.9 MHz). Unknown which value the panel needs; the panel formats here are the only IRIX evidence and are consistent with each other.

## Dot clock bit 20

Established: the kernel clears bit 20 before loading a new PLL value, writes the value with bit 20 set, and waits 11 ms (timing section above); Linux sets the same bit with the PLL value. The rev 1.1 specification leaves bit 20 undefined. Inferred: bit 20 runs the pixel-clock PLL (or enables its output); with it clear the clock stops. Anything finer is unknown: no shipped software or published source depends on it. Routes tried: [gbe-spec], the 6.5.30 kernel and X module, `ide.IP32`, Linux, NetBSD, MAME.

## Reset values on revision 2

Unknown: no shipped software or published source depends on them. The kernel probe reads only `DEVICE_ID`, `CTRLSTAT` and `VT_XY` bit 31 before writing, and the kernel and X module load every other register before use. Routes tried: [gbe-spec] (revision 1.1 values, used above), the 6.5.30 kernel and X module, `ide.IP32`, Linux, NetBSD, MAME. A model of revision 2 can take the rev 1.1 values.

## Video capture block

Established ([gbe-spec] pp. 47-48): `VC_0` (`+0x80000`) left 11:0 and right 23:12 of the capture region, inclusive; `VC_1` (`+0x80004`) top 11:0 and bottom 23:12; `VC_2` (`+0x80008`) DMA enable 0, flicker filter 1, automatic field advance 2, full-screen output 3, colour-space bypass 4; `VC_3` (`+0x8000c`) field select 0, descriptor-list DMA enable 1 (not working on rev 1.1), field-corrupt 2, end-of-field 3, current field 4 (read only), descriptor pointer 31:5; the descriptor list that `vc_descr_ptr` points at is also held in registers, ten 16-bit tile addresses two to a register with the earlier one in bits 31:16, as in the list below; `VC_8` is write-only.
Tile-address registers of the capture block, in order (established, [gbe-spec] pp. 47-48; each holds two tile addresses of the descriptor list, the first in bits 31:16 and the second in bits 15:0):

- `VC_4` at `+0x80010`: tile addresses 1 and 2.
- `VC_5` at `+0x80014`: tile addresses 3 and 4.
- `VC_6` at `+0x80018`: tile addresses 5 and 6.
- `VC_7` at `+0x8001c`: tile addresses 7 and 8.
- `VC_8` at `+0x80020`: tile addresses 9 and 10, write only.

Established (the instructions of `mvp.o`, see [mace-video.md](mace-video.md#driver-access)): the O2 video kernel driver programs this block. `mvpreg_initmace` clears `VC_0` to `VC_8`, `mvptransfer_stop_dma` clears `VC_0` to `VC_3`, and `mvptransfer_start_dma` writes `VC_3`, optionally copies five tile-address words into `VC_4` to `VC_8` and sets the DMA enable in `VC_2`; `mvptransfer_screen_interrupt` reads `VC_3`. The pointer the driver uses is the controller record word at `+204`, `0xb6080000`. The X module and the 6.5.30 graphics objects never reach `+0x80000`; `libXsgivc` has no GBE access. What the block does to the picture beyond the register layout is unknown: no shipped software or published source depends on it. Routes tried: [gbe-spec], `mvp.o`, `libXsgivc`, the 6.5.30 kernel and X module, Linux, NetBSD, MAME.

## Format-file state tables

Established as absence: the X module reads only named scalars from a `.vfo` file (`FormatInfo_*` porch, sync, active, clock, stereo and interlace fields, `DacPll_M`, `_N`, `_P`, `ActivePixelsPerLine`, `VerticalRetraceRate`, from `crm.so` strings), and `setmon`'s O2 path names the same format directory, a scalar reader and the timing ioctl (strings). No O2 reader names a line-type or edge table. Inferred: the tables are the format compiler's generic output for boards with a programmable timing sequencer, which GBE lacks (its timing is counters and compare registers, [gbe-spec] p. 19). On the O2 they drive nothing: no shipped software or published source depends on them. Routes tried: the 6.5.30 kernel, X module, `setmon`, `gfxinit`, `dualchannel`, [gbe-spec].

## Kernel textport cursor set-up

Established (`crime_tp.o` `crime_tpinit`, 6.5.30): the kernel textport loads the hardware cursor before it blanks the screen: cursor colour 1 (`+0x70008`) = `0xffffff00` (white) and colour 2 (`+0x7000c`) = `0xff000000` (red), position (`+0x70000`) = 0, glyph words 0 to 31 (`+0x78000` to `+0x7807c`) from a 32-word table in the object's data, glyph words 32 to 63 (`+0x78080` to `+0x780fc`, first three `+0x78080`, `+0x78084`, `+0x78088`) = 0, then control (`+0x70004`) = 1, cursor on. Colours use the `RR GG BB 00` layout of the colour map. Sixty-four 32-bit glyph words for a 32 by 32 cursor give two bits per pixel, the two-bit value selecting transparent or colour 1 to 3 (inferred, as `GBE.h` and Linux describe the glyph); the textport draws only with the first 32 words, the top half.

## What remains open for the display back end

Listed with routes in [open-questions.md](open-questions.md): the GBE address window for low memory. The DID table layout and the window-ID key masks are settled in pass 9; the meaning of the individual key bits that arrive from the kernel is recorded there as unknown with its routes.

# Pass 9: display-ID table construction and the window-ID key

Binaries: IRIX 6.5.30 `crm.so` (`usr/lib/X11/dyDDX/crm.so`, gp `0x5b0ea0`) and `Xsgi` (`usr/gfx/arch/GENERIC/Xsgi`, gp `0x102cd5a0`), addresses as `objdump -d` prints them. The layout below comes from the X module alone.

## Display-ID table construction

- Read (`gbeLoadDIDTable`, `0x45b440..0x45b590`): the screen keeps three 64 KiB DID tables, each with a user mapping (an array of three pointers at gp `-28208 + 1848`) and an in-use word in a 12-byte record per table. The routine takes the first free table; when all three are busy it asks the kernel with ioctl `0x55fd` which one it may reuse, and prints "can't find valid did resource" if the answer is out of range or an "ioctl failed" message naming the resource request if the call fails. It then calls `gbeLoadDispIDs(screen, regions, table)`, marks the table busy and stamps it with an incrementing sequence number (gp `+14720`).
- Established (`gbeLoadDispIDs`, `0x45a350`): the `regions` argument is an array of 32 X regions of 12 bytes each (box extents plus a data pointer whose `+4` word is the rectangle count, a null pointer meaning one rectangle), one per window-ID index. The routine never looks at windows: index `i` is simply the position of region `i` in that array (the loop at `0x45a720..0x45a7c0` tags every rectangle of region `i` with `i`).
- Established (`0x45a814..0x45ab78`): the rectangles of all 32 regions are merged into a list of horizontal bands, each band a run of display lines `[y1, y2)` that crosses the same rectangles. The first band is `[0, screen height)`, and a band is split whenever a rectangle starts or ends inside it.
- Established (`0x45ad7c..0x45ae7c` and `0x45ae90..0x45afd8`): each band gets one line table. Every rectangle of the band contributes one 16-bit entry `index << 11 | (x2 - 1)`, that is `did` in bits 15:11 and `xend` = the rectangle's last column. When the band holds two or more rectangles the entries are sorted by `xend`.
- Established (`0x45b004..0x45b048` and `0x45abdc`): when the X screen width (`ScreenRec` halfword `+8`) differs from the display width held in the screen private (halfword `+3472`, called W here), the sorted list is cut after the first entry that reaches column `W - 1`, and an entry beyond it is clamped to `xend = W - 1`. When the two widths match no clamp is applied; the root window's region reaches `x2 = W`, so the last entry of every visible line still ends at `W - 1`.
- Established (`0x45abb8..0x45ac34`, `0x45b264..0x45b298`): the first frame entry is written at the table's start and line tables start at byte `0x2000` (block 16). Line tables are packed one after another in 16-bit units inside a 512-byte block; when the next table would run past entry 256 of the block, packing moves to the start of the next block. Block 128 is the end of the 64 KiB table: on reaching it the routine prints "Warning!! GBE line table overflowed." and finishes the table early. So blocks 0 to 15 (8 KiB, room for 2048 frame entries) hold the frame table and blocks 16 to 127 hold the line tables.
- Read (`0x45ad0c..0x45ad6c`): for each band, after its line table is placed, the routine appends one 32-bit frame entry `block << 19 | offset << 11 | (y2 - y0 - 1)`, where `block` and `offset` locate the start of that band's line table and `y2 - y0 - 1` is the band's last line. This is the specification's frame-entry layout (`yend` 10:0, `offset` 18:11, `block` 25:19). The entry is skipped for a band that ends at or above `y0`. `y0` is 0 unless a mode word at `+220` of a record the screen points to (screen `+116`) equals 1, in which case it is the halfword at `+226` of that record (direct reading; what the mode means is unknown, and IRIX normally runs with it 0).
- Established (`0x45b058..0x45b0a0`): the table ends with one last band that covers every line below the screen. Its line table is a single entry with `xend` 2047 and `did` 5 (`0x2fff`) when the GBE revision byte at screen-private `+0xd94` is below 2, or `did` 6 (`0x37ff`) otherwise; its frame entry carries `yend` 2047 (`| 0x7ff`). Index 5 of the `gbe` tables and index 6 of the `ar` tables are the RG3B2 window ID `0x00b` (see the window-ID table above), so the area past the last line is described with a reserved 8-bit format.
- Why the visible lines end at `W - 1` rather than 2047: the routine emits one entry per rectangle and the rectangles never extend past the screen, so the last run of a visible line ends at the last visible column; only the off-screen band carries 2047. The specification asks for 2047 at the end of each line table. Inferred: GBE stops consuming a line table at the end of the active line, so an `xend` equal to the last active pixel ends the line as well as 2047 does. IRIX's shipped display relies on this, which makes it the driver's expectation of the hardware; no source states the comparison GBE makes. An emulator that ends a line at the first entry whose `xend` is at or past the last active column matches both forms.

## How a window gets its window-ID index

- Established (`mergeDIDLists`, `0x5618d0`): a window's index is its slot in the window-ID slot table. When slots are merged, every window on the source slot's list (chained through `+0x30` of the window's rrm private record) gets the destination slot number stored in its rrm private record at `+0x14` and in its nfb private record at `+4`, and is moved to the destination slot's list.
- Established (`crmInvalidate`, `0x45fb34..0x45fb78`): the window's slot number is read back from rrm private `+0x14` (negative means none), and the slot at `screen_rrm_private + 36 * slot` receives the window's key and value.
- Established (`crmValidateVisual`, `0x4598b0..0x459a6c`, then the call to `gbeLoadDIDTable` at `0x45a250`): the screen's DDX private holds two arrays of 12-byte regions indexed by slot, one at `+0x5c` (being built) and one at `+0x60` (the last loaded), with the slot count at `+0x54`. The routine compares them slot by slot through the screen's region operations and then loads a fresh DID table from the `+0x60` array. Inferred: each slot's region is the union of the visible clip regions of the windows on that slot's list; the per-window union step itself was not traced instruction by instruction.
- So windows that share a pixel format, colour map and gamma setting (see the key match below) share one window ID, and the display-ID table is a map of slot regions, not of windows.

## The window-ID matching key

- Established (Xsgi `rrmInit`, `0x101ec4d0..0x101ec6a8`; `crm.so` `crmInit`, the call at `0x48ab84`): `rrmInit` allocates the screen's rrm private record (`152 + 36 * count` bytes) and copies into it the leading 47 words of a record the DDX module passes in. The X module passes a static record in `.sdata` at `0x5ab1b8`: `+0` slot count 32, `+4` 2, `+8` 5, `+0xc` 3, `+0x10` key mask `0xffffffff`, `+0x14` value mask `0x7fc`, then the module's callbacks (`+0x20` is `crmInvalidate`, `+0x34` `rrmBindRNToClip`). No code in `crm.so` writes the two mask words afterwards (searched for gp-relative stores to `0x5ab1c8` and `0x5ab1cc`).
- Established (`StealID`, `0x55e8e8..0x55e938`): two slots are interchangeable when `window_key == slot_key` over all 32 bits and `(window_value ^ slot_value) & 0x7fc == 0`, and only after two halfword tests pass. The candidate scan (`0x55e850..0x55e860`) takes a slot only when the halfword at slot `+0xaa` equals the halfword at `+2` of the requesting window's record and the flag halfword at slot `+0xa8` has neither bit `0x04` nor bit `0x10` set (the mask is `0x14`). The compare loop (`0x55e8e8..0x55e938`) repeats the first test against the record of the window that owns the candidate slot (`0x55e8f0..0x55e904`, the halfword at its `+2` against each other slot's `+0xaa`), and tests bit `0x04` of each slot's flag halfword separately (`0x55e908`, used after the compare, not as a skip). What those halfwords hold was not read. The value mask covers bits 10:2 of a window-ID table entry, which are `TYP` (4:2), `CM` (9:5) and `GM` (10). `BUF` (1:0) is left out, because the retrace handler rewrites it on every swap, and so is `AUX` (12:11).
- Established (`ValidateMode`, `0x562020..0x5620a0`): a window's key (rrm private `+0x20`) and value (`+0x24`) are stored together from the two words of a request, with value bits 14:13 kept from the old value. (`0x6000` lies outside the 13-bit window-ID entry, so those two bits are software state.) Established (Xsgi `rrmEvent`, `0x101e9ff0..0x101ea250`): the request words come unchanged from a kernel event record (words at `+0xc` and `+0x10`), passed to the handler the event type selects. So the key's bits are set by the kernel's rendering-resource code and the GL client that asks it for a window mode, not by the X module.
- Established, the bits the X module itself touches: bit 1 is set and bit 2 cleared when a window becomes double-buffered (`rrmDoubleBufferWindow`, `0x48685c..0x48686c`, which starts from the key of the window's current slot); bit 0 is cleared before the rebind callback (`rrmBindRNToClip` `0x5602f4`, `rrmOGLBindRNToClip` `0x4865b8`, `rrmDoubleBufferWindow` `0x4868ac`); bit 2 is replaced from bit 2 of the kernel's reply to rrm ioctl 1010 (`crmInvalidate` `0x45facc..0x45fb00`) and stored inverted into the slot key (`^ 4`). Inferred: bit 2 marks a slot whose key no longer matches its owner until the next validation, so `StealID` will not hand it out as a free match.
- Established: the reserved keys `0x3c00` to `0x3c03` appear only in the `gbeModeTable*`/`arModeTable*` data. No IP32 binary searched builds them from an immediate (`crm.so`, `Xsgi`, `glx.so`, N32 `libGL.so` and `libGLcore.so`, the `crime.a` objects and `rrm.o`), so a window matches a reserved slot only when the kernel hands the X module that exact word.
- Established (the shipped header `sys/rrm.h`, 6.5.5 `root/usr/include/sys/rrm.h`): the resource manager's swap and display-mode requests carry two mode words, one described as a hardware-dependent register value and one as a hardware-independent description of the display mode, and its invalidate request returns the hardware-independent word the window wants. The window record's value (`+0x24`) is the first kind (it is the window-ID table entry), and the key (`+0x20`) is the second.
- Read (`libGLcore` `SwapBuffers`, the context module `0x0d944b90..0x0d944c88`): the GL client sends resource-manager command 1005 with the render node, the new buffer index (0 or 1) as the hardware-dependent word and the context word gc+32040 as the hardware-independent word. The only change any `libGLcore` code makes to gc+32040 is bit 2: set when buffer 1 becomes current, cleared otherwise (the two stores in `SwapBuffers` and the two in `DecoupleSwapBuffers` are the only stores to that word in the library). This is the same bit 2 the X module copies from the kernel's 1010 reply.
- Settled for the hardware contract: the key is a software description of the window's mode, compared only as a whole word (mask `0xffffffff`, above) and never written to GBE or to the kernel's window-ID ioctl. The reserved keys `0x3c00` to `0x3c03` are words no client builds (the immediate search above), so a GL window never shares a reserved slot. Unknown: no shipped software or published source depends on the meaning of individual key bits 13:10 or of the low field `n`; every reader compares the word whole. Routes tried: the X module and Xsgi (writers and readers listed above), `libGLcore` and N32 `libGL.so` (immediate search and the gc+32040 stores), the kernel objects including `rrm.o` (immediate search), and the shipped the CRIME stack header 23 (names the word, defines no bits).

## Registers the base kernel touches at shutdown (`early_gbe_stop`)

`early_gbe_stop` in the 6.5.30 `kernel.o` (`.text` `0x8504`, 564 bytes) stops GBE before the kernel hands the machine back to the PROM; its callers are the restart and power-down paths beside `ecc_disable`. Established from its code:

| Offset | Register | What `early_gbe_stop` does with it | Label |
|---|---|---|---|
| `+0x3000c` | FRM_3 (`FRM_CONTROL`) | clears bit 0, the frame DMA enable, then adds 32 to bump the tile-list pointer by one unit and waits for the live copy to follow | established |
| `+0x20008` | OVR_2 (`OVR_CONTROL`) | clears bit 0, the overlay DMA enable, then adds 32 in the same way as the frame control word | established |
| `+0x40004` | DID_SHADOW (`DID_CONTROL`) | clears bit 16 (the display-ID DMA enable) of the word it reads back, keeps every other bit, and writes that, then adds 32 in the same way (the code ands with the complement of bit 16) | established |
| `+0x20004` | OVR_1, the live overlay control | polled, up to 400,000 reads, until its bit 0 clears, then until it equals the bumped control word, a fence for one blanking edge | established |
| `+0x40000` | DID, the live display-ID control | polled the same way: first for bit 16 clear, then for equality with the bumped `DID_CONTROL` word | established |
| `+0x4` | DOTCLK | last, after writing `0x80000000` to the timing register at `+0x10000` to freeze it, clears bit 20 of the dot-clock word, keeps every other bit, and writes it back (the code ands with the complement of bit 20) | established |

## Specification registers by IRIX use

One row per GBE register of the revision 1.1 specification that the sections above describe only as part of a group. The spec name comes first, then the offset and the Linux name, then what IRIX writes. Sources: the kernel listings under `crime_kernel/`, the X module and [gbe-spec].

| Spec name | Offset | Role and IRIX use | Label |
|---|---|---|---|
| VT_1 | `+0x10004` | VT_XYMAX, the frame size: total pixels per line in 11:0, total lines in 23:12; it is cleared first, then `gbeStartVideoTiming` in `crime_init.o` writes the format's totals | established |
| VT_2 | `+0x10008` | VT_VSYNC, the lines where vertical sync turns off (11:0) and on (23:12), written from the timing record by `gbeSetTimingRegs` in `crime_init.o` | established |
| VT_3 | `+0x1000c` | VT_HSYNC, the pixel counts where horizontal sync turns off and on, written from the timing record by `gbeSetTimingRegs` in `crime_init.o` | established |
| VT_4 | `+0x10010` | VT_VBLANK, the lines where vertical blanking turns off and on, written by `gbeSetTimingRegs` in `crime_init.o` and rewritten for interlace on early revisions | established |
| VT_5 | `+0x10014` | VT_HBLANK, the pixel counts where horizontal blanking turns off and on, with the three- and five-pixel pipeline offsets `gbeSetTimingRegs` in `crime_init.o` applies | established |
| VT_6 | `+0x10018` | VT_FLAGS, sync polarity and stereo flags: 0 for a CRT format, and bit 6 pulsed each stereo field by `crimeRetraceHandler` in `crime.o` | established |
| VT_7 | `+0x1001c` | VT_F2RF_LOCK, the line of the field-to-frame lock, written by `gbeSetTimingRegs` in `crime_init.o` from the record's interlace flags | established |
| VT_8 | `+0x10020` | VT_INTR01, the lines of the first two GBE interrupts; parked off-screen at start-up and rewritten by `crimeRetraceHandler` in `crime.o` each frame | established |
| VT_9 | `+0x10024` | VT_INTR23, the lines of the last two GBE interrupts; parked off-screen by `crime_init` code in `crime_init.o` and rewritten by the retrace handler | established |
| VT_13 | `+0x10034` | VT_HPIXEN, the horizontal pixel-enable window; parked at 0xffffff, then set last by `gbeStartVideoTiming` in `crime_init.o` once the timing runs | established |
| VT_14 | `+0x10038` | VT_VPIXEN, the vertical pixel-enable window, the lines where active video starts and stops, set last by `gbeStartVideoTiming` in `crime_init.o` | established |
| VT_15 | `+0x1003c` | VT_HCMAP, the pixel counts that clear and set the colour-map write enable, written from the record by `gbeSetTimingRegs` in `crime_init.o` | established |
| VT_16 | `+0x10040` | VT_VCMAP, the lines that clear and set the colour-map write enable, written from the record by `gbeSetTimingRegs` in `crime_init.o` | established |
| VT_17 | `+0x10044` | DID_START_XY, where the display-ID fetch starts relative to the sync edges, computed by `gbeSetTimingRegs` in `crime_init.o` from the record | established |
| VT_18 | `+0x10048` | CRS_START_XY, where the cursor fetch starts, one line after the display-ID start, computed by `gbeSetTimingRegs` in `crime_init.o` | established |
| VT_19 | `+0x1004c` | VC_START_XY, where the capture block's window starts, computed by `gbeSetTimingRegs` in `crime_init.o` with the same vertical field | established |
| OVR_0 | `+0x20000` | OVR_WIDTH_TILE, the overlay width in 512-pixel tiles plus a remainder; `gbeStartVideoTiming` in `crime_init.o` pulses bit 13 to reset the overlay FIFO | established |
| FRM_0 | `+0x30000` | FRM_SIZE_TILE, the frame width in tiles, remainder and pixel depth; `gbeStartVideoTiming` in `crime_init.o` pulses bit 15 to reset the frame FIFO | established |
| FRM_1 | `+0x30004` | FRM_SIZE_PIXEL, the frame height in lines in bits 31:16, halved for an interlaced format, written by `gbeSetTimingRegs` in `crime_init.o` | established |
| WID[32] | `+0x48000` | the 32-entry window-ID table; `crimeSetDisplayMode` in `crime.o` writes one entry per ioctl `0x55f4`, and the retrace handler rewrites the buffer bits on a swap | established |
| CMFIFO | `+0x58000` | the colour-map FIFO free count in bits 5:0; the X module in `crm.so` polls it and waits for at least 48 free entries before a batch of colour-map writes | established |
| GMAP[256] | `+0x60000` | the 256-entry gamma map, one red, green and blue byte per entry; `crimeSetGammaRamp` in `crime.o` loads it for ioctl `0x55f5` | established |
| I2C | `+0x8` | the monitor DDC bus, two open-drain lines driven by bit-banging; the DDC probe `crime_i2cProbe` in `crime_i2c.o` reads the monitor identification through it | established |

The capture block registers `VC_0` to `VC_8` have their own entries under "GBE registers by access site" below.

# GBE registers by access site (6.5.30)

One entry per register that the shipped 6.5.30 code reaches, or that the revision 1.1 specification lists and nothing reaches, from `crime_kernel/disasm/` and `root/spec/gbe.txt` (register tables on pages 36 to 48). Every entry carries a label.

- `CTRLSTAT` at `+0x0`: the general control word, with chip revision in bits 3:0, ten two-bit pin pairs and the pixel-clock select in bits 29:28. Established.
  `gbeProbe` in `crime_init.o` stores 0x30000000 to it once the identity check passes, which selects the internal dot-clock PLL and drives every pin low.
  The word is written with a single 32-bit store, the only store `gbeProbe` makes before the freeze test.
  `gbeBlankScreen` alternates between 0x000aa000 and 0x300aa000 to drop and restore the clock select.
- `DEVICE_ID` at `+0x14`: the fixed chip identification word, reset value 0x666 and the same as the JTAG identification (page 37). Established.
  `gbeProbe` in `crime_init.o` loads it with `lw v0,20(a0)` and exclusive-ors with 0x666.
  Only an exact match lets the probe continue, so a different value or an absent chip makes it return without writing anything.
- `I2C` at `+0x8`: the monitor DDC bus, bit 0 the open-drain data line and bit 1 the clock line, both resetting to 1 (page 37). Established.
  `i2_start` in `crime_i2c.o` takes a bus selector and the GBE base: selector 1 picks the register at `+0x10`, any other value this one.
  It writes 0, calls `i2_sync_clk`, then writes 1 and 3, reading each value back and pausing with `us_delay` for a time held in a kernel global.
- `I2CFP` at `+0x10`: the flat-panel bus with the same two open-drain lines at bits 0 and 1 (page 37). Established.
  `i2_start` in `crime_i2c.o` selects it when its first argument is 1, with the same write sequence of 0, 1 and 3 as for `+0x8`.
  `i2cfp_DualChannelProbe` probes the 8-bit port of the dual-channel option at bus address 0x7e through it.
- `SYSCLK` at `+0xc`: the system PLL test controls, with `tm(0)` the only bit set at reset and gain and divider fields in bits 14:8 (page 37). Established.
  The inventory scan resolves no access at this offset in any of the 82 in-scope binaries.
  Inferred: the PLL keeps its reset test configuration for the whole run, because no in-scope code writes the register.
- `VT_0` at `+0x10000`: the video timing counter pair, `vt_x` in bits 11:0, `vt_y` in bits 23:12 and the freeze flag in bit 31, set at reset (page 38). Established.
  `gbeProbe` in `crime_init.o` stores 0 to it only when bit 31 reads set, which starts the counters.
  `early_gbe_stop` in `kernel.o` stores 0x80000000 to it after the DMA enables are clear, freezing video timing before the hand-off to the PROM.
  The routine at offset 0 of `mvp.o` loads it, shifts right by 12, masks 12 bits and returns 1 when the current line is below 1024.
- `VT_10` at `+0x10028`: the flat-panel horizontal drive window, with the clear count in bits 11:0 and the set count in bits 23:12 (page 39). Established.
  The inventory scan finds no site here, while `gbeSetTimingRegs` in `crime_init.o` writes the counters `+0x10004` to `+0x10024` and `+0x10034` onward.
  Inferred: the 6.5.30 kernel leaves the flat-panel horizontal drive at its reset value.
- `VT_11` at `+0x1002c`: the flat-panel vertical drive window in lines, clear in bits 11:0 and set in bits 23:12 (page 39). Established.
  `crimeBlankscreen` in `crime_retrace.o` stores `((halfword at +0xe of the timing record) + 1 & 0xfff) << 12 | 1` to unblank.
  Blanking with argument 2 stores 0xfff001, which parks the window's set count at the last line.
  It skips both stores when a kernel flag word is zero or when the byte at +0x2e of the record behind board offset +0x7c equals 132.
- `VT_12` at `+0x10030`: the flat-panel data-enable window along a line, clear in bits 11:0 and set in bits 23:12 (page 40). Established.
  `crimePreblankHandler` in `crime_retrace.o` stores one of two kernel-held words to it on each pre-blank interrupt.
  The choice follows a flag byte at +0x18 of the swap state that the same handler inverts every pass, at `xori ra,ra,0x1`.
- `OVR_1` at `+0x20004`: the live overlay control, tile-list pointer in bits 31:5 and DMA enable in bit 0 (page 42). Established.
  `early_gbe_stop` in `kernel.o` polls its bit 0 until it clears, with a bound of 0x61a80 (400000) reads.
  It then polls until the register equals the bumped shadow word, as a fence for one blanking edge.
  A set bit 0 here also makes the routine run the full stop sequence when the frame control is already clear.
- `OVR_2` at `+0x20008`: the overlay shadow word, copied into the live register at the start of blanking (page 42). Established.
  `early_gbe_stop` in `kernel.o` loads it, clears bit 0 (mask -2) and stores it back behind a `flushbus` call.
  After the wait it adds 32 to the word, advancing the tile-list pointer by one 32-byte unit so that the copy is retriggered.
- `FRM_2` at `+0x30008`: the live normal-plane control, tile pointer in bits 31:5 and DMA enable in bit 0 (page 43). Established.
  `early_gbe_stop` in `kernel.o` tests bit 0 first with `andi at,at,1`.
  When it is clear the routine tests `+0x20004` and `+0x40000` and returns at `.L000086ec` if neither display DMA is running.
  The same register is polled in the wait loops of the stop sequence.
- `FRM_3` at `+0x3000c`: the normal-plane shadow, copied into the live register at the start of blanking (page 43). Established.
  `early_gbe_stop` in `kernel.o` loads it, clears bit 0 and stores it back before it touches the overlay word.
  After the wait loop it adds 32 and stores again, then waits for `+0x30008` to equal the new word.
- `DID` at `+0x40000`: the live display-ID control, `did_base` in bits 15:0 and the DMA enable in bit 16 (page 44). Established.
  `early_gbe_stop` in `kernel.o` tests bit 16 with `and a5,a5,s2` using 0x10000.
  The second wait loop compares the register with the bumped shadow word.
- `DID_SHADOW` at `+0x40004`: the display-ID shadow, loaded into the live register at the start of blanking (page 44). Established.
  `early_gbe_stop` in `kernel.o` clears bit 16 by anding with the complement of 0x10000.
  It later adds 32 to the whole word, the same pointer bump used for the frame and overlay shadows.
- `CMAP` at `+0x50000`: the colour map, 4608 entries of 32 bits on revision 1.1 (page 45). Established.
  `crmStorePseudoColors` at 0x479140 in `crm.so` stores `red << 24 | green << 16 | blue << 8` at `+0x50000 + 4 * index` after a FIFO check.
  `crmInstallDirectColorMap` stores whole groups the same way.
  The 6.5.30 kernel never writes the map.
- `CMFIFO` at `+0x58000`: the colour-map write FIFO free count in bits 5:0, 64 deep on revision 1.1 (page 45). Established.
  `crmInstallPseudoColorMap` at 0x473890 in `crm.so` reads it and waits for a count of 48 before each batch of 33 entries.
  `ide.IP32` masks it with 0x3f at 0xa00d2674 and waits for 17 on revision 2.
- `GMAP[256]` at `+0x60000`, entry 1 at `+0x60004`: the gamma map, one word per entry in `RR GG BB 00` order. Established.
  `crime_i2cFpGbeRetrace` in `crime_retrace.o` writes a linear ramp (a running value that starts at 0 and gains 0x01010100 per entry) for a flat-panel request of 2, two entries per pass of an unrolled loop.
  The second store of the first pass, `sw a4,-4(a6)` at offset 0x1034 after the pointer has advanced by 8, is the word at `+0x60004`; the later passes cover the rest of the map up to entry 255.
  A request of 1 copies a 256-byte table through the same window with one byte replicated into the three colour fields.
- `CRS_0` at `+0x70000`: the cursor position, x in bits 15:0 and y in bits 31:16 (page 46). Established.
  `crime_tpinit` in `crime_tp.o` stores `zero` to it with `sw zero,0(t1)` after loading the colours, parking the cursor at the top left.
  No other graphics kernel object writes the register.
- `CRS_1` at `+0x70004`: the cursor control word, bit 0 the enable and zero at reset (page 46). Established.
  `crime_tpinit` in `crime_tp.o` stores 1 at the end of its set-up (`sw v0,4(t1)` with `li v0,1`), then calls `gbeBlankScreen`.
  The cursor therefore comes on before the screen is blanked.
- `CRS_CM` at `+0x70008`: the three cursor colours, each in the colour-map byte order `RR GG BB 00` (page 46). Established.
  `crime_tpinit` in `crime_tp.o` writes colour 1 at `+0x70008` with -256, that is 0xffffff00 (white).
  It writes colour 2 at `+0x7000c` with `lui at,0xff00`, that is 0xff000000 (red).
  The third colour is never written by the kernel.
- `CRS_GLY` at `+0x78000`: the 64 words of the 32 by 32 cursor glyph, two bits per pixel (page 46). Established.
  `crime_tpinit` in `crime_tp.o` copies the first 32 words from a table in its data section in a counted loop to `+0x78000` onward.
  It then clears words 32 to 63 from `+0x78080`, three stores to `+0x78080`, `+0x78084` and `+0x78088` per loop pass.
- `VC_0` at `+0x80000`: the capture region's horizontal bounds, the left edge in bits 11:0 and the right edge in bits 23:12 (page 47). Established.
  `mvpreg_initmace` (`mvp.o`, case 3) stores zero here at `0xb7cc`, and `mvptransfer_stop_dma` stores zero at `0x920` for a capture path. Established (the instructions). No routine of `mvp.o` stores a nonzero value here; a nonzero capture window is not written by any shipped software read so far.
  Routes tried: the 6.5.30 kernel objects, the X module, `libXsgivc`, `mvp.o` and the specification.
- `VC_1` at `+0x80004`: the capture region's vertical bounds, top line in bits 11:0 and bottom line in bits 23:12 (page 47). Established.
  `mvpreg_initmace` stores zero here at `0xb7d4` and `mvptransfer_stop_dma` at `0x928`. Established (the instructions). No routine of `mvp.o` stores a nonzero value here.
  Routes tried: `mvp.o`, `libXsgivc`, `crm.so` and the specification table.
- `VC_2` at `+0x80008`: the capture mode word, DMA enable in bit 0, flicker filter in bit 1, automatic field advance in bit 2, full-screen output in bit 3 and colour-space bypass in bit 4 (page 47). Established.
  `mvpreg_initmace` stores zero here at `0xb7dc` and `mvptransfer_stop_dma` at `0x930`; `mvptransfer_start_dma` sets bit 0, the capture DMA enable, at `0x7fc`, keeping its copy of the word at controller record `+800` and writing the register only when the bit was clear. Established (the instructions).
  The reset value 3 comes from the flicker filter and automatic field advance bits. Routes tried: every graphics kernel object, `crm.so` and the video drivers.
- `VC_3` at `+0x8000c`: the capture sequencing word, field select in bit 0 and the descriptor-list DMA enable in bit 1, which the specification marks as not working on revision 1.1 (page 47). Established.
  `mvpreg_initmace` stores zero here at `0xb7e4` and `mvptransfer_stop_dma` at `0x93c`; `mvptransfer_start_dma` stores a word at `0x7e4` made of a flag byte from the path and, unless the driver's copy mode is on, the physical address of the path's descriptor block; `mvptransfer_screen_interrupt` loads the word at `0x1a4c`. Established (the instructions); the meaning of the flag byte is inferred.
  Bits 31:5 point at the descriptor list, and bits 4:2 report field-corrupt, end-of-field and the current field. Routes tried: the 6.5.30 kernel and X module, `mvp.o` and the specification.
- `VC_4` at `+0x80010`: the first pair of capture tile addresses, tile 1 in bits 31:16 and tile 2 in bits 15:0 (page 47). Established.
  `mvpreg_initmace` stores zero here at `0xb7ec`; `mvptransfer_start_dma` stores a word read from the physical descriptor block at `0x7bc` when the driver's copy mode (the word at data `+8`) is on. Established (the instructions).
  The five tile registers `+0x80010` to `+0x80020` together hold the ten tiles of one captured field. Routes tried: the inventory scan, `mvp.o` and `libXsgivc`.
- `VC_5` at `+0x80014`: the second pair of capture tile addresses, tiles 3 and 4, the earlier one in the upper half (page 48). Established.
  `mvpreg_initmace` stores zero here at `0xb7f4`; `mvptransfer_start_dma` copies the second word of the descriptor block here at `0x7c4` in copy mode. Established (the instructions).
  It follows `+0x80010` at a four-byte step, as each register holds two 16-bit entries.
- `VC_6` at `+0x80018`: the third pair of capture tile addresses, tiles 5 and 6 (page 48). Established.
  `mvpreg_initmace` stores zero here at `0xb7fc`; `mvptransfer_start_dma` copies the third word here at `0x7cc` in copy mode. Established (the instructions).
  The middle register of the five, it sits between `+0x80014` and `+0x8001c`.
- `VC_7` at `+0x8001c`: the fourth pair of capture tile addresses, tiles 7 and 8 (page 48). Established.
  `mvpreg_initmace` stores zero here at `0xb804`; `mvptransfer_start_dma` copies the fourth word here at `0x7d4` in copy mode. Established (the instructions).
  Only tiles 9 and 10 in `+0x80020` follow it in the descriptor list.
- `VC_8` at `+0x80020`: the last pair of capture tile addresses, tiles 9 and 10, write only (page 48). Established.
  `mvpreg_initmace` stores zero here at `0xb810`; `mvptransfer_start_dma` copies the fifth word here at `0x7e0` in copy mode. Established (the instructions).
  A read returns no defined value because the register has no read path; the driver never reads it.
- `WID` at `+0x48004`: the second of 32 window-ID entries, the one for swap slot 1 (page 44). Established.
  `crimeRetraceHandler` in `crime_retrace.o` walks the 32 swap slots of 24 bytes each and advances its table pointer by 4 bytes per slot.
  For a slot whose swap is due it rewrites the buffer bits of that slot's entry, the pair of low bits of the word.
  `crimeSetDisplayMode` writes the same entry for ioctl 0x55f4 with index 1.

# Public driver cross-check

Two public sources were added after the passes above. Both are second opinions on the register contract, not hardware evidence.

- `openbsd/` pins the last commit before the OpenBSD sgi port was retired (7011342f6a72, May 2021). Its O2 framebuffer driver is `sys/arch/sgi/dev/gbe.c` with `gbereg.h`; the rendering-engine offsets sit in the same header, and the CRIME bus registers are in `sys/arch/sgi/localbus/crimebus.h`. It drives the display in 8-bit colour only (`gbe.c:294`, `gbe.c:1360`) and uses the rendering engine for rectangle fill, copy and the cursor. Its drawing code follows the same register layout as the NetBSD `crmfb` driver this repository already cites, so agreement with NetBSD is weak support.
- `gxemul/` pins a mirror of the GXemul source (234a181a1711, August 2021). The O2 rendering engine is the emulator-side device model source unit 2 and the display chip is the emulator-side device model source unit 1. Their own header says they are guesswork based on how Linux, NetBSD and OpenBSD use the hardware (`the emulator-side device model source unit 2:31-33`). What they model shows what an emulator author needed for those guests to run, so a match is a consistency check and a difference is a lead.

Labels: **agrees** means the public source and the entry say the same thing; **adds** is a fact not recorded above; **differs** points at `docs/open-questions.md`.

## What OpenBSD programs, against the entries above

| Public driver (file and line) | Existing entry | Result |
|---|---|---|
| `gbereg.h:23-24` GBE window at `0x16000000`, 0x100000 bytes; `gbe.c:278` and `gbe.c:1345` read the chip revision from the low four bits of `0x0` | `GBE.h` `GBE_CTRLSTAT` revision field | **agrees** |
| `gbe.c:281-286` takes the screen width and height from the "on" counts in bits 23:12 of `VT_HCMAP` and `VT_VCMAP` (`gbereg.h:62-65`) and refuses to attach when either is zero | "Register values": `VT_HCMAP` holds the pixel counts that clear and set the colour-map write enable | **adds**: the driver relies on firmware leaving the "set" count equal to the active width and height, which the timing record entry does not say (GXemul's model assumes the same, `the emulator-side device model source unit 1:535-551`) |
| `gbe.c:549-563` enable: set bit 20 of `DOTCLOCK` and poll it, write 0 to `VT_XY` to clear the freeze bit and poll bit 31, then write `FB_CTRL` with the tile list address and bit 0 (`gbe.c:583-586`) | "Start-up order" and `GBE.h` (`GBE_DOTCLOCK_RUN`, `FRM_CONTROL`: list pointer plus DMA enable) | **agrees** on the bits; the order differs only in doing less than `gbeStartVideoTiming`, since the firmware has already programmed the timing |
| `gbereg.h:80-82`, `gbe.c:583-585` the frame-buffer control word is `(tile-list physical address >> 9) << 9` plus bit 0 (Linux `gbefb.c` writes the same list address shifted right by 9 into a field whose least significant bit is 9) | Specification page 43 (`FRM_2`): `frm_tile_ptr` in bits 31:5, list on a 32-byte boundary not crossing an 8 KiB DRAM page; kernel `gbeStop` bumps the word by 0x20 | **agrees, with a clarification**: the "shift 9" is the position of the public drivers' field, not a scaling. The register holds the list's physical address in place, so both drivers write it with its low nine bits clear because they allocate the list on 512 bytes (OpenBSD aligns the tile map allocation to 64 KiB, `gbe.c:306`). The hardware field is wider (bits 31:5, 32-byte granularity, established by the specification and by the IRIX bump of 0x20). The chip revision is bits 3:0 of `CTRLSTAT` (specification page 36, field `chipid`, reset value 1), as both public drivers read it. The 16 by 16 TLB geometry agrees with the row for `gbe.c:792-797` below. |
| `gbe.c:575-581`, `gbereg.h:55` writes bit 5 of `VT_FLAGS` (`GBE_VT_SYNC_LOW`) to turn sync-on-green off and 0 to turn it on | `VT_FLAGS` entries mention only bit 6 pulsed per stereo field | **adds**: bit 5 of `VT_FLAGS` controls sync on green, low meaning off |
| `gbe.c:589-680` stop: clear the overlay, cursor and DID controls, clear the DMA enable of `OVERLAY_CTRL` and `FB_CTRL`, poll the three live twins (`0x20004`, `0x30008`, `0x40000`), wait for `VT_XY` to cross the vertical pixel-off line from below and then above, freeze `VT_XY`, clear the dot clock run bit, pulse bit 15 of `FRM_SIZE_TILE` | "Stopping the display (`gbeStop`)" | **agrees** on the control and twin registers and the FIFO pulse; **adds** the freeze of `VT_XY` (bit 31) after the wait for the frame boundary and the clearing of the dot-clock run bit, neither of which the `gbeStop` entry lists |
| `gbe.c:725-757`, `gbereg.h:73-78` `FRM_SIZE_TILE` with the pixel depth at bit 13 (0 for 8-bit, 1 for 16-bit, 2 for 32-bit), whole tiles at bit 5; `FRM_SIZE_PIXEL` with the height at bit 16 | "Colour-map writes" and the `FRM_SIZE_TILE` entry: width in whole tiles at 12:5, depth at 14:13 (16-bit 1, otherwise 2) | **agrees**; **adds** depth 0 for 8-bit pixels. The remainder field at 4:0 differs at 16 and 32 bits: the IRIX writer counts leftover pixels times bytes per pixel in 32-byte units (the `FRM_SIZE_TILE` entry above), so the OpenBSD count is wrong there and never showed because the driver runs at 8 bits |
| `gbe.c:761-764`, `gbereg.h:85-86,100-111` window-ID table: all 32 entries at `0x48000` written `(mode << 2) \| 3` with mode 0 I8, 1 I12, 2 RG3B2, 3 RGB4, 4 ARGB5, 5 RGB8, 6 RGBA5, 7 RGB10 | "Window ID type and colour-map codes": TYP at 4:2 with the same codes, BUF 3 for both buffers | **agrees** (the names match Linux `gbe.h`, so this is not independent of it) |
| `gbereg.h:87-92`, `gbe.c:785-791` colour map at `0x50000` with 6144 entries, colour-map FIFO at `0x58000` with 63 entries, gamma map at `0x60000` with 256 entries written `(i << 24) \| (i << 16) \| (i << 8)`; entry format `r << 24 \| g << 16 \| b << 8` (`gbe.c:1022-1024`) | `GBE.h` `GBE_CMAP` (4608 entries on revision 1, 6144 on revision 2, the latter inferred), `GBE_CMAP_FIFO_DEPTH` (63 on revision 2, inferred), `GBE_GMAP` (256) | **agrees**, and the 6144 and 63 are the revision 2 numbers; the driver does not say which revision it ran on, so this supports the inference only if the machine had a revision 2 part |
| `gbe.c:1007-1020` waits until the FIFO field at `0x58000` reads below 63 before each colour write | "Colour-map FIFO": the specification and IRIX read the field as free entries; Linux reads it as occupancy | **differs** from the specification and IRIX, the same way Linux does; see `docs/open-questions.md`, "Colour-map FIFO polarity" |
| `crimebus.h:54-85` CRIME interrupt bits: 16 to 19 the four GBE lines, 20 CPU error, 21 memory error, 22 to 24 rendering-engine empty, full and idle edges, 25 to 27 the level forms; `crimebus.h:108-109` memory error status and address at `0x250` and `0x258` | `CRIME.h` interrupt numbers 16 to 27 and `CRIME_MEM_ERROR_STAT` and `_ADDR` | **agrees** for every one, including the empty, full, idle order of both groups |
| `gbereg.h:119-130`, `gbe.c:793-825` rendering engine at `0x15000000`; TLB A, B, C at `0x1000`, `0x1200`, `0x1400`, texture at `0x1600`, clip-id at `0x16e0`, linear A and B at `0x1700`, `0x1780`; tile entries are the physical address shifted right by 16 with bit 15 set, four to a 64-bit register with tile column 0 in the top 16 bits | `CRIME_RE.h` TLB group and `docs/memory.md` | **agrees** on the offsets and the layout (OpenBSD sets bit 15 on every entry, as `docs/memory.md` records for NetBSD) |
| `gbe.c:792-797,808-819` the driver loads only 128 tile entries (eight rows of sixteen) into TLB A and one tile into TLB B for the rasops glyph row | `CRIME_RE.h`: sixty-four registers give 16 x 16 tiles | **agrees**; the 128 matches the list RAM size in "Tile lists and DMA" |
| `gbereg.h:121`, `gbe.c:1095,1149,1173` writes to `RE_PP_VERTEX_X_1 \| RE_START`, that is `0x2074 \| 0x800`, start the primitive | `CRIME_RE.h` `RE_START` 0x0800: a write to the start alias commits | **agrees**; the primitive's vertices and state are written to the plain addresses first, then the last vertex to the start alias |
| `gbereg.h:133-171` pixel pipeline registers: buffer mode source and destination at `0x2000` and `0x2008`, clip mode `0x2010`, draw mode `0x2018`, window offsets `0x2050` and `0x2058`, primitive `0x2060`, vertices `0x2070`, `0x2074`, `0x2078`, transfer source `0x20a0`, steps `0x20a8` and `0x20ac`, stipple `0x20c0` and `0x20c4`, foreground and background `0x20d0` and `0x20d8`, logic op `0x21b0`, colour mask `0x21b8`, null `0x21f0`, flush `0x21f8` | `CRIME_RE.h` pixel pipeline group, same offsets | **agrees** for every register |
| `gbereg.h:137-145` draw mode bits: 0 stencil, 1 depth mask, 2 depth test, 6:3 byte mask, 7 bit mask, 8 dither, 9 logic op, 10 alpha blend, 21 pixel transfer | `CRIME_RE.h` `DM_*` and its note that bits 9 and 8 are logic op and dither against the specification | **agrees**, including the bit 9 and bit 8 reading; OpenBSD joins NetBSD and libGLcore against the specification |
| `gbereg.h:148-156` primitive word: operation at bit 24 (point 0, line 1, triangle 2, rectangle 3), edge order at bit 16 (0 left-right bottom-top, 1 right-left bottom-top, 2 left-right top-bottom, 3 right-left top-bottom) | `CRIME_RE.h` `PRIM_*` | **agrees** |
| `gbe.c:1100-1158` copy chooses one of the four edge orders from the relative position of source and destination so that overlapping copies run in a safe direction, starting the source and the first vertex at the matching corner | `docs/pixel-transfer.md` (source x in 31:16 and y in 15:0, steps) | **agrees** on the source encoding; **adds** a worked rule for overlapping copies: source start and first vertex move to the far corner for the reversed axes |
| `gbereg.h:173-176,187-200`, `gbe.c:696-716` buffer mode word: pixel depth at bit 2, pixel type at bit 4 (0 colour index, 1 RGB, 2 RGBA, 3 ABGR), buffer depth at bit 8, buffer type at bit 10 (0, 1, 2 the three tiled TLBs, 4 and 5 the linear TLBs); the console uses 0 for 8-bit colour index | `CRIME_RE.h` buffer mode note (type in 12:10, depth in 9:8) and `docs/opengl.md` and `docs/mte.md` buffer mode values (`0x1228`, `0x504`) | **agrees** with the shifts and with the values already decoded; **adds** pixel type codes 1 (RGB) and 3 (ABGR) and the pixel depth field at 3:2 |
| `gbe.c:1081-1098,1178-1190`, `gbereg.h:167` the cursor inverts a cell with a pixel-transfer rectangle from and to the same position, draw mode logic op and transfer, and logic op 12 | `CRIME_RE.h` logic op: bits 3:0 are the GL operation minus `GL_CLEAR`, identity for all 16 | **agrees**: 12 is `GL_COPY_INVERTED` |
| `gbe.c:1161-1176` fill: draw mode bit mask plus byte mask only, colour in `0x20d0`, rectangle from the first vertex to the last with inclusive end coordinates (`x + w - 1`, `y + h - 1`) | `CRIME_RE.h` `PP_FG_COLOR` and `PRIM_RECT` | **agrees**; **adds** that a rectangle's end vertex is inclusive |
| `gbe.c:828-846`, `gbereg.h:179-181` polls status `0x4000` for bit 28 before each operation; `RE_PP_STATUS_READY` is bit 25 | `CRIME_RE.h` `ST_IDLE` bit 28 and `ST_MTE_IDLE` bit 25 | bit 28 **agrees**; bit 25 is named "ready" here and "transfer engine idle" in the NetBSD-derived name, and the driver never reads it |

## What GXemul models, against the entries above

| Model (file and line) | Existing entry | Result |
|---|---|---|
| `the emulator-side device model source unit 2:31-37` four blocks at `0x1000`, `0x2000`, `0x3000`, `0x4000` | `CRIME_RE.h` group map | **agrees** |
| `the emulator-side device model source unit 2:109-120` tile of 512 bytes by 128 rows, 16 tiles per row, coordinates masked to 11 bits (`the emulator-side device model source unit 2:496-500`) | `docs/memory.md` tile geometry, `docs/pixel-transfer.md` 11-bit source position | **agrees**; the author notes it is unknown whether the vertex space is -2048 to 2047 or 0 to 2047 (`the emulator-side device model source unit 2:490-495`), a point the entries do not address |
| `the emulator-side device model source unit 2:122-151` tile entry shifted left by 16 and bit 31 of the result (bit 15 of the entry) required to be set, then cleared before use | `docs/memory.md`: bit 15 is a valid bit and also physical address bit 31 (the no-ECC alias) | partly **agrees** (valid bit); **differs** on the alias: IRIX allocates frame-buffer tiles through the no-ECC alias (`docs/memory.md`, "Bit 15 and the no-ECC alias"), while the model clears the bit and addresses the tile directly. Both reach the same RAM, so the public guests with low memory cannot tell them apart |
| `the emulator-side device model source unit 2:128-136` linear TLB of 32 entries, entry shifted left by 12 as a 4 KiB frame; the transfer engine accepts an entry only with bit 31 set (`the emulator-side device model source unit 2:1165-1167`) | `CRIME_RE.h` `TLB_LIN_VALID`, `docs/memory.md`: 32 pages per linear TLB, valid bit 31 | **agrees**; the drawing path ignores the valid bit while the transfer path checks it, which is the model's inconsistency, not a hardware fact |
| `the emulator-side device model source unit 2:668-670,1197-1199` an access with address bit 11 (`0x800`) set is the start alias | `CRIME_RE.h` `RE_START` | **agrees** |
| `the emulator-side device model source unit 2:1352-1356` status always reads the four idle bits (28 to 25) and no FIFO counters; `the emulator-side device model source unit 2:1363` leaves `0x4008` as unknown | `CRIME_RE.h` status bits and the `0x4008` note | **agrees** on the idle bits; the model has no FIFO pointers or level, so it is no source for the depth |
| `the emulator-side device model source unit 2:540-548,608-616` only copy, XOR and copy-inverted logic ops are drawn | `CRIME_RE.h` logic op encoding | **agrees** for the three values; nothing for the other thirteen |
| `the emulator-side device model source unit 1:583-594` `FRM_SIZE_TILE` depth at 14:13 as `8 << field`, width in tiles at 12:5, remainder at 4:0 in units of 32 bytes (`rem * 32 * 8 / depth` pixels) | "Window ID type and colour-map codes" entry for `FRM_SIZE_TILE` | **agrees**, and matches the IRIX writer at 16 and 32 bits, where OpenBSD's count differs |
| `the emulator-side device model source unit 1:603-607` reads of `0x30008` return `FRM_CONTROL` with bit 5 randomly toggled, commented as something IRIX wants | "Stopping the display": `gbeStop` stores the control word plus 0x20 and waits for `0x30008` to equal it | **agrees**: the model's hack is the observable effect of `gbeStop`'s bump of the tile pointer's low bit |
| `the emulator-side device model source unit 1:461-463` device id register returns the fixed value `0x666` | `GBE_ID_VALUE` | **agrees** |
| `the emulator-side device model source unit 1:535-551` `VT_HCMAP` and `VT_VCMAP` writes keep the "on" count as the screen size | "Register values" and OpenBSD above | **adds**: the same reading as the OpenBSD driver, which the timing entry does not state |

Neither public source carries the specification's holes (translation, rasterisation, texel lookup, filtering): OpenBSD only fills and copies, and GXemul draws only points, lines and rectangles with a fixed colour and no shading, texture, depth or blending.

## Second sources from the MACE specification, the handbook and the reference guide

Sources: [mace] is the MACE I/O ASIC Specification ([mace-video.md](mace-video.md)); the handbook and the reference guide are sources 9 and 10 of [published-sources.md](published-sources.md). Labels as above.

- Established ([gbe-spec] PDF 19-20; [mace] PDF 19-20, 53-55): GBE's frame-lock input pin is driven by MACE from a chosen source (the video output ports, either input port or an external sync) and presets only the vertical counter to the frame-lock line, so the picture follows the external frame rate without pixel lock. MACE counts field-start lines for that source in `VHW_CFG`. The specification's timing table shows the frame-lock line `vt_frmlock` in bits 11:0 of one word beside the field-to-frame line `vt_f2rf` in bits 23:12 ([gbe-spec] PDF 21); that is the layout of `VT_F2RF_LOCK` (`+0x1001c`) above, which the kernel fills with the same pair (inferred from the shared name part and the pairing). No kernel routine read reaches the MACE video window, so how IRIX arms the source is open ([open-questions.md](open-questions.md)).
- Established ([gbe-spec] PDF 23; [mace] PDF 13-14): the video capture block at `+0x80000` ("Video capture block" above) writes the display's pixels back to memory, limited to NTSC and PAL data rates, as square pixels; the square-to-non-square conversion for output is done in MACE. This is the producer side for the output channel's input data.
- Established (handbook PDF 167, reference guide revision 003 PDF 216-217): pins 12 and 15 of the 15-pin monitor connector are the I2C data and clock lines to the monitor, and pin 9 carries +5 V limited to 0.5 A. That is the wiring the `I2C` register at `+0x8` drives by bit-banging; no document names GBE for it, so the link between the pins and that register is inferred from the register's role.
- Established (data sheet 2019 PDF 1, [published-sources.md](published-sources.md) source 12): the dual display option splits the single graphics channel over two 1280 by 1024 monitors at 75 Hz with a 38 Hz graphics update rate. Inferred: this is what the `2@` dual-channel formats above carry.
