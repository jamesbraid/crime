# SGI 1600SW flat panel adapter (O2)

How IRIX 6.5.30 on an O2 decides that an SGI 1600SW flat panel is fitted, which timing it drives the panel with, and what else keys on that decision. The question this page answers: what a model must present on GBE's flat-panel I2C bus so that the kernel, the PROM and the X server treat a 1600SW as attached. Registers are in [GBE.h](GBE.h); the general timing path is in [gbe.md](gbe.md).

Grades: **established** (read in full from a shipped binary or the IRIX 6.5.7 source tree, cited by path or address), **software expectation** (what IRIX needs the adapter or panel to answer; the hardware behind it is not documented, so it is not a hardware measurement), **inferred** (reasoned, with the reasoning) and **unknown** (with the evidence that would settle it). Binaries are the IRIX 6.5.30 O2 set (`crime.a`, `crm.so`, `ide.IP32`, `ip32prom.image`); addresses are file offsets in the object (`crime_i2c.o`, `crime_init.o`) or virtual addresses (`crm.so`, `ide.IP32`).

## Names

The O2 option is a plug-in adapter card with one connector for the panel. IRIX calls it the "1600SW Flat Panel adapter board" (`hinv` text, kernel inventory types `INV_7of9_BOARD` 4 and `INV_7of9_PANEL` 5, both in the shipped `sys/invent.h`). Its internal board name is `7of9`, its panel type code in the kernel is `0x84` (132), and the video-format option name is `Flatpanel_1600SW`. Established: strings of `hinv`, `ide.IP32`, `crime.a`, `crm.so`; IRIX 6.5.7 `stand/arcs/include/crm_gfx.h` and `irix/cmd/hinv/hinv.c` agree on the code and the text.

"Multilink" is not an IRIX name for this card. No shipped IRIX binary contains it. The Library holds a separate `Silicon Graphics MultiLink Owner's Guide` (007-4113-001) and Usenet posts describing the MultiLink adapter (MLA) as an external box that converts DVI or VGA to the 1600SW's OpenLDI input and sends the panel an EDID, which the O2 card does not do (inferred from those post titles and snippets; the manual text could not be extracted, `pdftotext` fails on the page). The O2 card is documented in `O2: Silicon Graphics 1600SW Flat Panel Monitor Adapter Installation Guide` (007-3921-001, scanned, not text-searchable). A photograph of the card in the Library (`o2_1600sw_fpa_front.jpg`) reads "O2/LVD FP ADAPTER", assembly 030-1170, 1998, with two National DS90C383A LVDS transmitters, two TI ALVCH162268 registers and a Motorola MC88915 clock driver (inferred reading of the photo; the I2C parts were not identified).

## How the guest detects it

The 1600SW is identified by a one-byte I2C read from an 8-bit port on the flat-panel bus. It is not an EDID match and not a monitor-ID pin.

### The bus (`I2CFP`, GBE offset `0x10`)

- Bit 0 is the data line (SDA), bit 1 the clock line (SCL). Both are active low in the register: a written 1 pulls the line low, a written 0 releases it, and a read returns the line state with 1 meaning low. Established from `i2_start`, `i2_stop`, `i2_sendbyte` and `i2_sync_clk` in `crime_i2c.o` (0x1aa4, 0x1c38, 0x1e50, 0x1da0) and from the same routines in the IRIX 6.5.7 stand-alone library (`stand/arcs/lib/libsk/graphics/CRIME/crm_i2c.c`, which names the four line states).
- START is the write sequence 0, 1, 3. STOP is 2, 3, 1, 0. A data 1 bit is 2 then 0; a data 0 bit is 3 then 1. Data goes MSB first. The acknowledge is read after a 2 then 0 pair: SDA low (read bit 0 set) is ACK. After releasing SCL the software polls read bit 1 until it reads 0, up to 61 tries of 1 microsecond (clock-stretch wait).
- Idle is a read of 0 in both low bits. This settles the polarity question left open in the `I2C and pin pairs` section of [gbe.md](gbe.md): the specification's reset value of 1 for both bits pulls both lines low until the first write of 0, and the external driver is an inverting open-collector part (the specification names an F06). The same polarity applies to the monitor DDC register at `+0x08`, which `i2_start` addresses with the same sequence (selector 1 picks `+0x10`, any other value `+0x08`).

### The probe (`crime_i2cFpProbe`)

Established, `crime_i2c.o` 0x1490 to 0x1978; the PROM carries an identical routine at file offset 0x196d4 (virtual 0x810103d4) and `ide.IP32` at 0xa00ecb24; IRIX 6.5.7 `crm_i2c.c` has the source.

1. If the dual-channel display option was found (`crm_dc_board_installed` nonzero, see [gbe.md](gbe.md)), the probe records "no panel" (state 2) and returns 0 without touching the bus. A device answering at 8-bit address `0x7e` therefore hides the 1600SW.
2. It sends a STOP, then reads `I2CFP`. It repeats STOP and read up to 26 more times until both low bits read 0. If the bus never idles it records "no panel" and returns 0.
3. It reads one byte from the device at 8-bit address `0x70` (7-bit `0x38`): START, address byte `0x71`, one data byte with no ACK from the master, STOP. A missing ACK on the address returns 0.
4. It keeps bits 7:5 of that byte as the panel id (`byte >> 5 & 7`). Bits 4:0 are not looked at by the probe.
5. The id selects the result:

| Id (bits 7:5) | Byte | Panel type returned | Meaning (kernel and PROM strings) |
|---|---|---|---|
| 5 | `0xa0` to `0xbf` | `0x84` | 1600SW (`7of9`); `ide.IP32` and the PROM print "Flat panel found: Mitsubishi 7of9" |
| 4 | `0x80` to `0x9f` | `0x83` | Presenter 1280 adapter ("ichiban") |
| 2 or 3 | `0x40` to `0x7f` | `0x82` | Presenter 1024 adapter ("Corona") |
| 0, 1, 6, 7 | other | 0 | no panel; the debug build prints "Unknown panel id" |

6. For a found panel the probe sets the probe-state variable `crmFpPrbState` to 3 and records an `INV_DISPLAY` inventory entry through `find_inventory`, `replace_in_inventory` and `add_to_inventory`: type 5 (`1600SW Flat Panel adapter board and display.` in `hinv`) for id 5, replacing a type 4 entry if one exists; type 1 for the two Presenter ids. For no panel it sets state 2.

Everything above is established as IRIX behaviour. That a real adapter returns exactly these id bits is a software expectation. The second Mitsubishi names ("Corona", "ichiban") are the debug strings' names for the other two ids; the types 0x80 and 0x81 that `crm.so` also names ("Sharp Flatpanel", "NEC Flatpanel") are never returned by this probe (established by the probe's four return values).

### What happens to the result

- `crimeInitInfo` (`crime_init.o` 0xec, at 0x354) calls the probe when `crmFpPrbState` is 0 and stores the result in board-information byte `+0x2e`. `crime.o` calls it again from a re-probe path (0x4478 to 0x447c) and arms `crime_i2cFpHotProbe` on a 3000-tick timer (0xa04 to 0xa14) when `+0x2e` is not `0x84`, no dual-channel option is fitted and no timer is armed yet (0x894 to 0xa14). A board already at `0x84` is never re-probed (`crime_i2c.o` 0x1708 returns at once; the object carries the message "Hot Probe of 7of9/DCD not allowed"). The 1600SW has to be present at boot.
- With `+0x2e` = `0x84` and the current timing record not already marked as a 1600SW format (flags word `0x400`), `crimeInitInfo` selects built-in timing record 15 (see below). Types `0x82` and `0x83` select built-in records 4 and 9 (1024 by 768 at 60 Hz and 1280 by 1024 at 60 Hz). It then reads the panel's EDID through `i2cfp_DMI2_KernelEDID` when the channel's read-done halfword at `crimeBoards+0x32` is 0.
- `gbeBlankScreen`, `i2cfp_PanelOn` and `i2cfp_PanelOff` act on the panel for any nonzero `+0x2e`. For `0x84` the panel switch is a read-modify-write of bit 2 of the port at `0x70` (set to enable, clear to power-save), with the other bits written back as read (`crime_i2c.o` 0x31b0 and 0x34c0; the 6.5.7 stand-alone `crm_i2c.c` has the same two operations). `i2cfp_PanelOn` re-reads the port until bit 2 reads back as written, so the port must latch bit 2. The retrace handler runs the switch through `crime_FpSchedForRetrace` (request 2 on, 1 off); the on request also loads the plain gamma ramp, see "gamma" in [gbe.md](gbe.md).
- After bit 2 is set `i2cfp_PanelOn` writes the panel's backlight potentiometer chip over the same bus (`i2cfp_DMI2_BkltFuncs`, two transfers with instruction bytes `0x80` and `0x10`, then a 15.7 ms delay). The chip is an Xicor X9221 dual digital potentiometer at 8-bit address `0x50` (6.5.7 `crm_gfx.h`; the kernel's address byte is `0x50` in `i2cfp_DMI2_BkltFuncs`, 0x2d10). If it does not answer the kernel prints "Could not set 1600SW backlighting defaults" and carries on (string in `crime.a`; whether the X server's own backlight call (`crmSetBacklight`, ioctl `0x5213`) fails visibly is not read). Established for the register traffic, software expectation for the chip.

### EDID on the panel bus (separate, optional)

`i2cfp_DMI2_KernelEDID` (`crime_i2c.o` 0x3810) reads 128 bytes from a standard DDC EEPROM on the same `I2CFP` bus: START, `0xa0`, word address `0x00`, repeated START, `0xa1`, 127 reads with ACK and a last read with NACK, STOP; up to three attempts. It stores the byte sum (a valid block sums to 0 modulo 256) at `crimeBoards+0x36+8*channel`, marks read-done (2) at `+0x30` and checksum-good (2) at `+0x32`, and copies the block to the board record at `+0x16c`. Nothing in the kernel compares its content. The block is only handed to user programs through the panel EDID ioctl. The name `gfxinfo` prints for the panel, "SGI Flat Panel 1600SW", comes from byte `+0x2e` in `crmQryMonitor`, not from the block; the manufacturer bytes `4c f8` or `4c e9` that `sgiEdid` tests belong to the CRT path on `I2C` (`+0x08`) and are not used here. Established. A model may leave the EEPROM absent: the kernel then records a failed read and continues (inferred from the `i2cfp_DMI2_FailedEDID` path, which clears the status halfword; not exercised).

### Minimal contract for a model

Established that the following is enough for the probe, kernel and X server to see a 1600SW (no EDID needed):

- `I2CFP` at GBE `+0x10` as an open-drain bit-banged bus with the polarity above and idle reading 0.
- No device acknowledging address `0x7e`.
- One device at 8-bit address `0x70` (7-bit `0x38`) that ACKs and returns a byte with bits 7:5 = `101`. A read always returns bits 7:5 as `101` whatever was written there. Software writes 1s there except in the power-switch read-modify-write, which writes back what it read. Bits 4:0 are control outputs: bit 2 latches and reads back as written (software expectation; other bits unused for `0x84` except bit 3, below).
- Optional: a device at 8-bit address `0x50` (X9221 potentiometer) so that `i2cfp_PanelOn` and the backlight request succeed; an EEPROM at 8-bit address `0xa0` with a valid 128-byte block.
- `crmFpPrbState` and the board byte are kernel state; the model does not provide them.

## Timing and register settings for the panel

### Formats

Three shipped format files carry `OptionHardware` = `Flatpanel_1600SW`: `1600x1024_48p`, `1600x1024_50p` and `1600x1024_60p` (`root/usr/gfx/ucode/CRM/vof/`, established). Their numbers are in [gbe.md](gbe.md) (video format files, dot-clock table) and repeated here for the panel.

| Format | Pixel clock | Horizontal back, sync, front, active | Vertical back, sync, front, active | Totals | PLL M, N, P (output at 20 MHz reference) |
|---|---|---|---|---|---|
| `1600x1024_48p` | 97,219,200 Hz | 170, 100, 30, 1600 | 36, 3, 3, 1024 | 1900 x 1066 | 34, 7, 0 (97.143 MHz) |
| `1600x1024_50p` | 101,270,000 Hz | 170, 100, 30, 1600 | 36, 3, 3, 1024 | 1900 x 1066 | 5, 1, 0 (100.000 MHz) |
| `1600x1024_60p` | 108,732,000 Hz | 45, 35, 20, 1600 | 36, 3, 3, 1024 | 1700 x 1066 | 38, 7, 0 (108.571 MHz) |

Established (file bytes and the conversion in `crmLoadTimingTable`). Kernel built-in record 15 is the 50 Hz format: rate 50.000 Hz, clock 101,270 kHz, totals 1900 by 1066, active 1600 by 1024, horizontal front 30 and sync 100, vertical front 3 and sync 3, PLL 5, 1, 0 (established, `crime_init.o` `.data` record at offset 0x2d0, and the same record in the PROM). The PROM drives a 1600SW at this one mode only. Sync polarity is not recorded in a place this workspace has decoded (the state tables of the `.vfo` files are not decoded, see [gbe.md](gbe.md)).

Public confirmation of the 60 Hz timing, not a source for it: NetBSD `sys/dev/videomode/modelines` lists "1600x1024 @ 60Hz (SGI 1600SW)" as 106.910 MHz, 1600 1620 1640 1670 / 1024 1027 1030 1067, negative syncs, and Linux `gbefb.c` has a panel mode of 9353 ps (106.9 MHz) with margins 20, 30, 37, 3 and syncs 20, 3, while programming its PLL for 80 MHz (M=4, N=1, P=0). IRIX's own 60 Hz format (1700 by 1066 at 108.7 MHz) differs from both. Usenet posts by SGI staff (2000-12-06, comp.sys.sgi.graphics) call the 1600SW native sync polarity negative for both syncs and give a different modeline, 103.125 MHz with totals 1664 by 1030; these confirm only that the panel accepts a range of timings. What range is unknown (below).

### Registers written for a `0x84` panel

Established in `crime_init.o` `gbeSetTimingRegs` 0x8a0 to 0x96c (re-read) and in the PROM and `ide.IP32` copies; the 6.5.7 stand-alone source (`crm_init.c`) agrees.

- `FP_HDRV` (`+0x10028`) = `0x640`: off at pixel 1600, on at 0.
- `FP_VDRV` (`+0x1002c`) = `0x1401`: off at line 1025, on at line 1.
- `FP_DE` (`+0x10030`) is not written for this panel by the kernel, the PROM or the stand-alone source (it stays at the parked `0xffffff`). Linux writes it off 1600, on 0. Inferred from the numbers 1600 and 1025: for this panel `FP_HDRV` and `FP_VDRV` are active-area windows, not sync pulses, so the panel runs in data-enable mode; the register layout is in [gbe.md](gbe.md).
- `VT_FLAGS` (`+0x10018`) is rewritten as `(old & 0x7d) | v`. In the 6.5.7 stand-alone source `0x7d` and `2` are the power-save mask and the power-save-on value for the CRT: bit 1 is the CRT power-save bit (the vertical drive held low, named `VDRV_LOW` by Linux). The PROM leaves it clear so the CRT stays on beside the panel. The kernel sets it (v = 2) unless the kernel option `crt_option` is set and starts with `1` (v = 0). This settles the open question in [gbe.md](gbe.md) about bit 1: it blanks the CRT output while the panel runs. `crt_option` is an IP32 kernel option read from a PROM environment variable (`irix/kern/os/kopt.c`, a 10-byte buffer; the name is in the PROM image string table at file offset 0x53b58). With no variable set the kernel code takes an uninitialised stack word (established from the disassembly, 0x93c to 0x968). The PROM's default value for it is not resolved (inferred "1" from the adjacent string; the table entry was not parsed). A model should set `crt_option` to `1` in its PROM environment.
- The diagnostic `ide.IP32` additionally sets the half-phase bit of `CTRLSTAT` for a `0x84` panel (writes `0x340aa000` instead of `0x300aa000`; message "Altered the half-phase bit for Flat Panel 1600SW."). No `CTRLSTAT` write of `0x340aa000` was found in the kernel objects or the PROM (searched by constant), so a normal boot does not set it (inferred from that search).

### Pixel format, depth, size

- No fixed pixel format or depth. `crimeInitInfo` takes the frame-buffer depth (16 or 32 bits) from `crm_fbdepth` and physical memory, independent of the panel byte. 1600 pixels at 32 bits are 12 whole 128-pixel tiles plus a 64-pixel remainder. Established for the kernel; the panel data path is 24-bit RGB (inferred from the two 24-bit LVDS transmitters in the photograph). The panel's uncorrected gamma is 1.8 (help text, `FlatPanel_Help`).
- `crmAttachXvc` (`crm.so` 0x48b87c to 0x48bf68) gives the screen a fixed physical size by panel type: `0x84` is 370 by 237 mm, `0x83` 260 by 206 mm, `0x82` and the unreachable `0x80` and `0x81` 246 by 184 mm; any other nonzero value prints "crmAttachXvc: Unrecognized flatpanel type '%d'". Established.

## What else depends on it

| Consumer | Behaviour | Grade |
|---|---|---|
| IP32 PROM (version 4.18, the 6.5.30 set) | Same probe; for `0x84` selects built-in record 15 and switches the panel on; sets the CRT not to power-save; prints "Flat panel found: Mitsubishi 7of9". The Usenet advice from SGI requires PROM 4.10 or later for the 1600SW. | established; Usenet confirms |
| Kernel | Inventory entry, built-in record choice, panel power and backlight, gamma ramp on panel switch, hot-probe exclusion; no check of the format's option flags in `crime_setvideotiming` (no comparison against `+0x2e` in its body). | established |
| `hinv` | Prints "1600SW Flat Panel adapter board and display." for inventory type 5 and "1600SW Flat Panel adapter board." for type 4. Real O2 `hinv` posts on Usenet show the first line. | established; Usenet confirms |
| Xsgi (`crm.so`) | `crmReadVideoFormat` calls `crmCanLoadOptionHW` (0x594800) for each format and skips the format when it returns 0. With `+0x2e` = `0x84` only `Flatpanel_1600SW` formats pass; with `0x82` only `Presenter_1024`, `0x83` only `Presenter_1280`; with 0 only `None`, or `None` and `O2_DCD` when the dual-channel board id (`+0x2c`) is nonzero; any other byte prints "crmCanLoadOptionHW: unknown flat panel type ID = 0x%x" and fails. So without the panel byte, none of the three 1600-wide formats loads or lists. | established (control flow read in `crmReadVideoFormat` 0x594424 to 0x594438) |
| Xsgi startup | `crmDefaultTTExists` picks the format when `/var/X11/Xvc/Crm0_TimingTable` is absent: `0x82` gives `1024x768_60p.vfo`, `0x83` `1280x1024_60p.vfo`, `0x84` `1600x1024_50p.vfo` (strings at 0x5a35b0 and neighbours, the three branches at 0x48eeac, 0x48ef50, 0x48efd0). A startup format whose `OptionHardware` is not `Flatpanel_1600SW` on a `0x84` board prints "Format file '%s' can't drive Flatpanel 1600SW"; the server dies on it at startup and warns later (inferred from the two branches at 0x48ea34 to 0x48ea5c). | established for the defaults, inferred for the failure |
| `gfxinfo` | "Monitor Type:" shows "SGI Flat Panel 1600SW" from `+0x2e` (`crmQryMonitor` 0x48d900); the panel EDID is not used. | established |
| `setmon` | Contains no 1600SW string. For the O2 it changes the startup format through the X server (`crmSetPltParam`, which rewrites `Crm0_TimingTable`). Its `presenter` and `presenter1280` aliases belong to its generic multi-board table. | established (strings) |
| `fp_1600sw` Confidence test | Opens `/dev/opengl`, reads the board-information byte `+0x2e` and runs only when it is `0x84`; any other value ends the test silently. | established |
| `/usr/sbin/flatpanel` | Gamma, colour temperature and intensity control panel (help book `FlatPanel_Help`); uses the X video-control extension and ioctl `0x5213` for the backlight. No separate detection. | established (strings, imports) |
| Config files | `/var/X11/Xvc/Crm0_TimingTable` (and `Crm1_TimingTable` for a second channel) name the startup format and depth on separate lines (see [xmodule.md](../../software/xsgi/xmodule.md)); `/var/X11/Xvc/moninfo` has no 1600SW entry. No `.vfc` or `.vfs` source for the CRM formats is shipped; the compiled `.vfo` files are in `/usr/gfx/ucode/CRM/vof/`. | established |
| `ircam` | No object named `ircam` exists in the 6.5.30 media set held here. Not applicable to the O2 as far as shipped files show. | established (file search) |

## Unknown

- The adapter's I2C parts and the meaning of port bits 4:0 beyond bit 2 (and bit 3, which `i2cfp_DMI2_EnableSequel` clears and `i2cfp_DMI2_DisableSequel` sets for a `0x84` panel; purpose not decoded). Software never reads them. Routes tried: `crime_i2c.o`, `ide.IP32`, the PROM, the 6.5.7 stand-alone source, the Library photographs (markings not legible). Settling evidence: the adapter schematic or the scanned guide 007-3921-001 read by eye (no text layer), or a higher-resolution photo of the I2C parts. A model does not need it.
- The panel's EDID content, if the adapter has an EEPROM at `0xa0` at all. No shipped software compares it. Settling evidence: a published EDID dump from an O2 with a 1600SW (none found in the Library or Usenet in this pass).
- Sync polarity and the accepted pixel-clock range of the panel. The `.vfo` state tables are undecoded; the public numbers conflict (80, 97.1, 100.0, 106.9, 108.6 MHz). Settling evidence: the 1600SW owner's guide (007-3869) specification table read by eye, or decoding the `.vfo` state tables.
- The PROM's default value of `crt_option`, and whether a stock O2 PROM sets it. Settling evidence: parse the variable table entry at file offset `0x5e730` of the image and its initialiser.
- Whether the X server's backlight call fails visibly when the X9221 does not answer. Settling evidence: the error path of `crmSetBacklight` (`crm.so` 0x5987e0) and the ioctl `0x5213` handler's return values.

## Sources

IRIX 6.5.30 `crime.a` (`crime_i2c.o`, `crime_init.o`, `crime.o`, `crime_retrace.o`), `crm.so`, `ide.IP32`, `ip32prom.image`, `hinv`, `setmon`, `gfxinit`, `fp_1600sw`, the CRM `.vfo` files and `usr/include/sys/invent.h`; IRIX 6.5.7 source `stand/arcs/lib/libsk/graphics/CRIME/crm_i2c.c`, `crm_init.c`, `stand/arcs/include/crm_gfx.h`, `irix/cmd/hinv/hinv.c`, `irix/kern/os/kopt.c`; Linux `drivers/video/fbdev/gbefb.c` and `include/video/gbe.h`; NetBSD `sys/dev/videomode/modelines`; comp.sys.sgi.hardware and comp.sys.sgi.graphics posts (hinv output, PROM and patch requirements, MLA); the Library photograph `photos/bukosek-o2/o2_1600sw_fpa_front.jpg`.
