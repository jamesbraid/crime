# CRIME coverage map

Map of what the O2 (CRIME and GBE) workspace has covered. It is the index later readers fill: each row is one area of one block. Block names follow `AGENTS.md`; a block's facts are labelled established, inferred or unknown in its header and docs, and this file says how far each area has got.

## Status key

`none`: nothing derived yet. `partial`: some facts written with their derivation, gaps remain. `done`: every fact in the area is written and labelled, with nothing known to be missing. A reader who changes a row updates it in the same commit as the doc or header that backs it.

"Owner" is the header or doc that holds the facts (a planned name until the file exists). "Datasheet topic" is the kind of hardware specification the area feeds. "Seed" records what public sources already report so a reader can aim at it: it is a lead to verify against the binaries, not a finding of this repository.

## Priority

Open problems, most important first. Opus readers take these in order.

1. **Rendering engine command grammar, texture and filtering.** The public specification's rendering chapter has explicit holes for translation, rasterization, texel lookup and filtering. Recover the register writes for every primitive, the texture formats and addressing, and the filter and depth arithmetic from libGLcore emission, the kernel driver and the X module. This blocks any accurate textured, depth-tested OpenGL.
2. **libGLcore to CRIME command stream.** How software-transformed and lit vertices become rendering-register writes: start-alias use, state snapshot and flush ordering, FIFO flow control and the stall interrupt, and the rendering TLB set-up. Start from FIFO accesses at the rendering window `0x15000000` found by `analyze_fifo.py`.
3. **Shipped CRIME revision and the specification conflicts.** The ID of the silicon in shipping O2s is unknown, as are the FIFO depth (128 in the text, 64 in NetBSD) and the memory-error interrupt numbering (prose 20, table 21). Read the ID checks, the FIFO threshold constants and the interrupt dispatch in the kernel driver.
4. **Memory transfer engine and frame buffer tiling.** MTE operations (copy, fill, transfers to and from host memory), their ordering against rendering, and the tiled layout of the frame and depth buffers behind the `0x10000000` and `0x12000000` apertures.
5. **GBE colormap FIFO and display programming.** The colormap FIFO free-count encoding (64 entries against a six-bit count with reset 0), blanking-time latching of base addresses, and how the X module and kernel program modes, overlay, cursor and gamma.

## Blocks

### CRIME rendering engine

Rasterizer, pixel pipeline, texture and depth, fed by the host through the rendering register groups at `0x15000000`.

| Area | Status | Owner | Datasheet topic | Seed |
|---|---|---|---|---|
| Registers and fields | partial | `CRIME_RE.h`, `docs/rendering.md` | rendering engine | group bases (translation, pixel state, memory transfer, status) and the NetBSD start alias from public sources; individual registers beyond the groups not yet mapped. Found: full map from the specification plus driver-derived DrawMode, Primitive, Texture.mode/format, AlphaTest, LogicOp, Depth.func and Stencil.mode encodings in `CRIME_RE.h`; DrawMode bits 8 and 9 swapped against the specification |
| Command and FIFO formats | partial | `CRIME_RE.h`, `docs/rendering.md` | rendering engine | start-alias snapshot, in-order execution, flush semantics; 9.12 RGBA stepper format; FIFO depth conflict (128 against 64). Found: start alias commits through any register; IntfBuf control layout and IRIX thresholds; FIFO depth 64 inferred from the kernel overflow check; libGLcore never reads the level Pass 2: status bits 5:0 mark uncommitted entries; crmSavePP saves them and writes +0x4008 (inferred discard). |
| DMA | partial | `CRIME_RE.h`, `docs/pixel-transfer.md` | rendering engine | no separate DMA engine seen; transfers are the pixel pipe's transfer mode through the linear TLBs. Found: linear TLB load ioctl and entry format, DrawPixels and ReadPixels register sequences, kernel pixel-DMA request (`docs/pixel-transfer.md`); step-register encoding differs between kernel and libGLcore, ioctl number unread |
| Interrupts | partial | `CRIME_RE.h`, `docs/rendering.md` | rendering engine | FIFO threshold stall and interrupt; numbering conflict unresolved. Found: IRIX registers inputs 25 (empty level) and 26 (full level); handler protocol in `CRIME_RE.h` |
| Reset | partial | `CRIME_RE.h`, `docs/reset.md` | rendering engine | Found: kernel initialisation order (+0x408, cursor control off, IB_CTL, TLB clears, final thresholds) and error recovery (+0x408 write then IB_CTL rewrite); the +0x408 role is inferred, register reset values unknown (`docs/reset.md`) |
| Context save and restore | partial | `CRIME_RE.h`, `docs/context.md` | rendering engine | Found: the kernel saves uncommitted interface-buffer entries (address and data) on a context switch, then writes +0x4008 (crmSavePP). Pass 2: full switch sequence, shadow record layout and flag word, global versus non-global register table, replay encoding (`docs/context.md`); `crimeRestore` argument mismatch decoded: the kernel MTE helpers pass an extra leading argument, so as shipped only the +0x4008 write takes effect (inferred effect, `docs/context.md`) |
| Texture formats and filtering (incl. precision) | partial | `CRIME_RE.h`, `docs/rendering.md` | rendering engine | specification text is explicitly unfinished here. Found: mode fields and filter codes match the specification; wrap codes do not (border clamp sent as 1); format word gives 4 sub-texel bits and a 1024 maximum (inferred); filter arithmetic unknown Pass 2: blend codes match the spec; filter weights cannot be recovered from the binaries; texture TLB reloaded wholesale; texels written by the CPU into mapped tiles. |
| Depth and pixel arithmetic | partial | `CRIME_RE.h`, `docs/rendering.md` | rendering engine | Found: vertex float-bias encoding, 9.12 colour scale 4096, depth scale 64, stencil and depth-function words; window-z range and blend arithmetic unread Pass 2: window z 0..0x3fffffff so Zs carries a 24-bit depth with 12 fraction bits; Depth.func low bits are the clear value; the rasteriser reads at most vertex bits 18:0 as unsigned 13.6 (inferred from the biased integer clear path). |

### MTE

Memory transfer engine: copies, fills and transfers between the frame buffer, depth buffer and host memory.

| Area | Status | Owner | Datasheet topic | Seed |
|---|---|---|---|---|
| Registers and fields | partial | `MTE.h` | memory transfer | transfer group at +0x3000 of the rendering window from public sources. Found: register map, mode fields and buffer codes in `MTE.h` |
| Command and FIFO formats | partial | `MTE.h`, `docs/mte.md` | memory transfer | Found: byte-column address word, X server copy and fill sequences, split between MTE and transfer path (`docs/mte.md`); kernel clear sequence (set-up, DST0, DST1 through the start alias, flush) and X copy mode 0x820; frame-buffer tile geometry; 16-bit subtiled texture layout inferred Pass 2: no 8-bit texels exist; subtile stepping is byte-based, 32-bit use unknown. |
| DMA | partial | `MTE.h`, `docs/reset.md` | memory transfer | Found: no separate engine; host memory goes through the linear TLBs (selects 4 and 5), kernel clear and copy sequences, TLB entry packing and the 128 KiB window per load (`docs/reset.md`) |
| Interrupts | partial | `MTE.h`, `docs/reset.md` | memory transfer | Found: IRIX uses no MTE-specific interrupt, only buffer empty and full levels; hardware MTE-done interrupt unknown (`docs/reset.md`) |
| Reset | partial | `MTE.h`, `docs/reset.md` | memory transfer | Found: no MTE-specific reset in the kernel; only the engine-wide +0x408 write (`docs/reset.md`) |
| Context save and restore | partial | `MTE.h`, `docs/context.md` | memory transfer | Found: MTE registers sit in the shadow record at 0x200 + offset and are reloaded only when flag bit 0x04 is set (globals 0x3000, 0x3008, 0x3018, 0x3020, 0x3028, 0x3040, 0x3048; non-globals 0x3010, 0x3030, 0x3038); kernel `mte_copy`/`mte_zero` save and replay around their own use; `crimeRestore` call convention decoded (`docs/context.md`) |

### CRIME memory, TLB and interrupts

The CPU interface, ECC memory controller, rendering TLB and interrupt controller, as far as graphics touches them.

| Area | Status | Owner | Datasheet topic | Seed |
|---|---|---|---|---|
| CPU windows and aliases | partial | `CRIME.h`, `docs/memory.md` | memory controller | low, high, full and no-ECC aliases, frame and depth apertures, GBE DMA window from public sources |
| Registers and fields | partial | `CRIME.h`, `docs/memory.md` | memory controller | ID, control and error-status offsets, eight bank controls, 64-bit access rule; shipped revision unknown. Found: ID accepted by IRIX 6.5.30 is family 0xA, revision non-zero; 0xb1 would be refused (`CRIME.h`) |
| Rendering TLB | partial | `CRIME_RE.h`, `docs/memory.md` | memory controller | translation group at +0x1000 of the rendering window. Found: formats for every client (frame buffer, texture, colour index, linear) in `docs/memory.md`; valid-bit meaning and miss behaviour unknown. Earlier: frame-buffer TLB packs four 16-bit tile numbers per register, linear TLB two 32-bit entries with valid bit 31 (`CRIME_RE.h`). Pass 3: bit 15 is inferred to be physical address bit 31 into the no-ECC alias (`docs/memory.md`) |
| Interrupts | partial | `CRIME.h`, `docs/memory.md` | memory controller | GBE sources route to inputs 16-19; rendering and memory-error numbering conflicts open. Found: IRIX vectors 16-19 (GBE), 25, 26; GBE acks clear bits in +0x028; IRIX installs one bus-error handler on both 20 and 21 and reads CPU status at +0x048, memory status at +0x250, so IRIX cannot tell which input is which; silicon assignment still unknown (`CRIME.h`). Also found: inputs 4/5 (MACE), 28/29 (priority 1 and 2), dispatcher and mask-table scheme, boot-time CONTROL write (`docs/memory.md`) |
| Reset | partial | `CRIME.h`, `docs/memory.md` | memory controller | control register reset bits and watchdog behaviour differ between revisions |
| ECC and error reporting | partial | `CRIME.h`, `docs/memory.md` | memory controller | no-ECC alias semantics only; error injection and status decode unknown. Found: the registers IRIX captures and clears on a bus error, and revision-specific decoders (`CRIME.h`) |

### GBE

Display back end: frame buffer scanout from system memory, overlay, cursor, colormap, gamma and video timing.

| Area | Status | Owner | Datasheet topic | Seed |
|---|---|---|---|---|
| Registers and fields | partial | `GBE.h`, `docs/gbe.md` | display back end | register map and tile layout from the public specification and the Linux driver; reset values partly inferred. Found: timing register formulas from the kernel record, DOTCLOCK, DID/CRS/VC start registers, and the timing numbers of 14 `.vfo` files (`docs/gbe.md`); stereo `.vfo` layouts and the conversion from format description to kernel record now read (`docs/gbe.md`); the state tables of the format files remain undecoded. Earlier: IRIX use of control, timing, plane, mode, colour-map, gamma and cursor registers in `GBE.h` |
| Command and FIFO formats | partial | `GBE.h`, `docs/gbe.md` | display back end | Found: no command stream; the only FIFO is the colour-map write FIFO. Entry format `RR GG BB 00` per index, the software copy, the revision-dependent wait and the special index 0x1102 (`docs/gbe.md`); batch size unknown. Pass 3: entry 0x1102 is the kernel textport colour 1 (inferred reason for the skip) |
| DMA | partial | `GBE.h`, `docs/gbe.md` | display back end | 64 KiB tile scanout from the full RAM window |
| Interrupts | partial | `GBE.h` | display back end | routes to CRIME inputs 16-19, latched and cleared by writing zero. Found: line 0 retrace, line 1 pre-blank, 2-3 HLI; acknowledged by clearing CRIME +0x028 bits |
| Reset | partial | `GBE.h`, `docs/gbe.md` | display back end | device ID and revision candidates; I2C released-line value |
| Context save and restore | partial | `GBE.h`, `docs/context.md` | display back end | Found: no GBE register is saved or restored by the rendering context switch (absence in `crimePcxSwap` and the shadow loaders); per-drawable window-ID state is in `docs/gbe.md` |
| Display and scanout | done | `GBE.h`, `docs/gbe.md` | display back end | Found: window ID table writes and the tile lists IRIX builds for frame, overlay and display-ID planes (`docs/gbe.md`); Pass 2: public TYP codes, the four X-module WID tables with their selection and kernel path (`docs/gbe.md`); the third table word, DID plane fill and overlay and underlay compositing remain unknown. Earlier: CONTROL to INHWCTRL copy is asynchronous and polled; blanking deselects the pixel clock; buffer swaps flip the WID mode buffer bits at retrace. Pass 3: DID entries are `WID << 11 | x`, one 512-byte slot per line, 128 lines per 64 KiB tile; the third WID word and overlay compositing remain unknown (`docs/gbe.md`) Pass 4: the third WID word is a software matching key compared with window flag words (`StealID`, `crmInvalidate`) and never reaches the hardware; overlay is a per-drawable rendering target in the kernel and no register carries a transparency value. Unknown, each with its capture: bits of the key, overlay compositing rule, window to WID selection, run start or end in a DID entry (`docs/gbe.md`) |
| Colormap FIFO | partial | `GBE.h` | display back end | Found: X server waits for 48 free slots, accepting 0 only on revisions before 2; Linux reads the field the opposite way (conflict recorded in `GBE.h`) |

### libGLcore to CRIME command stream

The OpenGL driver's software transform and lighting and its emission of rendering commands, plus the kernel and X module paths that share the engine.

| Area | Status | Owner | Datasheet topic | Seed |
|---|---|---|---|---|
| Command and FIFO formats | partial | `CRIME_RE.h`, `libglcore/include/glcore_crime.h`, `docs/opengl.md`, `docs/pixel-transfer.md` | command grammar | pixel transfer path read (`docs/pixel-transfer.md`). N32 libGLcore has names and lines, no types. Found: triangle emission order, start-alias commits, dual hardware/shadow writes, no level polling; see `docs/opengl.md` |
| Software transform and lighting | partial | `libglcore/include/glcore_crime.h`, `docs/opengl.md` | command grammar | CRIME has no geometry engine, so the host path owns this. Found: matrix transform convention, the six-plane clip mask and the window-coordinate formula with its context offsets (`docs/opengl.md`); lighting, polygon clipping and the variant dispatch unread. Pass 3: lighting and clamp on the CPU, frustum and viewport-box clipping in software, triangle procedure chaining (`docs/opengl.md`) |
| Context save and restore | partial | `docs/context.md`, `libglcore/include/glcore_crime.h` | command grammar | Found: libGLcore mirrors every global register write into a kernel-provided shadow page, keeps a flag word at shadow offset 0x1f0 that gates which register groups the kernel reloads (0x7d after make-current), and spins for idle before clearing the stipple bit; kernel reload order in `docs/context.md` |
| Texture formats and filtering (incl. precision) | partial | `CRIME_RE.h`, `docs/opengl.md` | command grammar | Found: GL enum to Texture.mode and Texture.format mapping in `CRIME_RE.h`; texel download and tiling unread |
| Display and scanout | partial | `GBE.h`, `docs/gbe.md` | command grammar | Found: the X module builds the kernel timing record from a format description plus the format file's PLL symbols and sends it by ioctl 0x55f6, programs the window ID table by ioctl 0x55f4 from per-revision tables, and installs colour maps entry by entry (`docs/gbe.md`); overlay programming and the DID plane fill unread |
