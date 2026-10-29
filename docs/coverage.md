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
| Command and FIFO formats | partial | `CRIME_RE.h`, `docs/rendering.md` | rendering engine | start-alias snapshot, in-order execution, flush semantics; 9.12 RGBA stepper format; FIFO depth conflict (128 against 64). Found: start alias commits through any register; IntfBuf control layout and IRIX thresholds; FIFO depth 64 inferred from the kernel overflow check; libGLcore never reads the level |
| DMA | none | `CRIME_RE.h`, `docs/rendering.md` | rendering engine | Found:  |
| Interrupts | partial | `CRIME_RE.h`, `docs/rendering.md` | rendering engine | FIFO threshold stall and interrupt; numbering conflict unresolved. Found: IRIX registers inputs 25 (empty level) and 26 (full level); handler protocol in `CRIME_RE.h` |
| Reset | none | `CRIME_RE.h`, `docs/rendering.md` | rendering engine | Found:  |
| Context save and restore | none | `CRIME_RE.h`, `docs/rendering.md` | rendering engine | Found:  |
| Texture formats and filtering (incl. precision) | partial | `CRIME_RE.h`, `docs/rendering.md` | rendering engine | specification text is explicitly unfinished here. Found: mode fields and filter codes match the specification; wrap codes do not (border clamp sent as 1); format word gives 4 sub-texel bits and a 1024 maximum (inferred); filter arithmetic unknown |
| Depth and pixel arithmetic | partial | `CRIME_RE.h`, `docs/rendering.md` | rendering engine | Found: vertex float-bias encoding, 9.12 colour scale 4096, depth scale 64, stencil and depth-function words; window-z range and blend arithmetic unread |

### MTE

Memory transfer engine: copies, fills and transfers between the frame buffer, depth buffer and host memory.

| Area | Status | Owner | Datasheet topic | Seed |
|---|---|---|---|---|
| Registers and fields | partial | `MTE.h`, `docs/mte.md` | memory transfer | transfer group at +0x3000 of the rendering window from public sources |
| Command and FIFO formats | none | `MTE.h`, `docs/mte.md` | memory transfer |  |
| DMA | none | `MTE.h`, `docs/mte.md` | memory transfer |  |
| Interrupts | none | `MTE.h`, `docs/mte.md` | memory transfer |  |
| Reset | none | `MTE.h`, `docs/mte.md` | memory transfer |  |
| Context save and restore | none | `MTE.h`, `docs/mte.md` | memory transfer |  |

### CRIME memory, TLB and interrupts

The CPU interface, ECC memory controller, rendering TLB and interrupt controller, as far as graphics touches them.

| Area | Status | Owner | Datasheet topic | Seed |
|---|---|---|---|---|
| CPU windows and aliases | partial | `CRIME.h`, `docs/memory.md` | memory controller | low, high, full and no-ECC aliases, frame and depth apertures, GBE DMA window from public sources |
| Registers and fields | partial | `CRIME.h`, `docs/memory.md` | memory controller | ID, control and error-status offsets, eight bank controls, 64-bit access rule; shipped revision unknown. Found: ID accepted by IRIX 6.5.30 is family 0xA, revision non-zero; 0xb1 would be refused (`CRIME.h`) |
| Rendering TLB | partial | `CRIME_RE.h`, `docs/memory.md` | memory controller | translation group at +0x1000 of the rendering window; entry format and tile mapping not read. Found: frame-buffer TLB packs four 16-bit tile numbers per register, linear TLB two 32-bit entries with valid bit 31 (`CRIME_RE.h`) |
| Interrupts | partial | `CRIME.h`, `docs/memory.md` | memory controller | GBE sources route to inputs 16-19; rendering and memory-error numbering conflicts open. Found: IRIX vectors 16-19 (GBE), 25, 26; GBE acks clear bits in +0x028; memory and CPU error vectors are in the base kernel, not held here (`CRIME.h`) |
| Reset | partial | `CRIME.h`, `docs/memory.md` | memory controller | control register reset bits and watchdog behaviour differ between revisions |
| ECC and error reporting | none | `CRIME.h`, `docs/memory.md` | memory controller | no-ECC alias semantics only; error injection and status decode unknown |

### GBE

Display back end: frame buffer scanout from system memory, overlay, cursor, colormap, gamma and video timing.

| Area | Status | Owner | Datasheet topic | Seed |
|---|---|---|---|---|
| Registers and fields | partial | `GBE.h`, `docs/gbe.md` | display back end | register map and tile layout from the public specification and the Linux driver; reset values partly inferred |
| Command and FIFO formats | none | `GBE.h`, `docs/gbe.md` | display back end |  |
| DMA | partial | `GBE.h`, `docs/gbe.md` | display back end | 64 KiB tile scanout from the full RAM window |
| Interrupts | partial | `GBE.h`, `docs/gbe.md` | display back end | routes to CRIME inputs 16-19, latched and cleared by writing zero |
| Reset | partial | `GBE.h`, `docs/gbe.md` | display back end | device ID and revision candidates; I2C released-line value |
| Context save and restore | none | `GBE.h`, `docs/gbe.md` | display back end |  |
| Display and scanout | none | `GBE.h`, `docs/gbe.md` | display back end |  |
| Colormap FIFO | none | `GBE.h`, `docs/gbe.md` | display back end |  |

### libGLcore to CRIME command stream

The OpenGL driver's software transform and lighting and its emission of rendering commands, plus the kernel and X module paths that share the engine.

| Area | Status | Owner | Datasheet topic | Seed |
|---|---|---|---|---|
| Command and FIFO formats | partial | `CRIME_RE.h`, `libglcore/include/glcore_crime.h`, `docs/opengl.md` | command grammar | N32 libGLcore has names and lines, no types. Found: triangle emission order, start-alias commits, dual hardware/shadow writes, no level polling; see `docs/opengl.md` |
| Software transform and lighting | none | `libglcore/include/glcore_crime.h`, `docs/opengl.md` | command grammar | CRIME has no geometry engine, so the host path owns this |
| Context save and restore | none | `crime_kernel/include/crime_kern.h`, `docs/opengl.md` | command grammar | how the kernel shares the engine among clients unknown |
| Texture formats and filtering (incl. precision) | partial | `CRIME_RE.h`, `docs/opengl.md` | command grammar | Found: GL enum to Texture.mode and Texture.format mapping in `CRIME_RE.h`; texel download and tiling unread |
| Display and scanout | none | `GBE.h`, `ddx/include/crime_ddx.h`, `docs/opengl.md` | command grammar | mode set and overlay programming by the X module unknown |
