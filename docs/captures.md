# Open items and the capture that would settle each

Everything here is **unknown** from the binaries and public sources read so far. Each entry names the owning file, what is unknown, and the capture or measurement on real hardware that would settle it. A capture means an observation of a running machine: a register read, a bus or video trace, or a memory dump while a stated program runs. Rows of `docs/coverage.md` are marked done once their remaining unknowns are listed here.

Rendering engine and memory transfer engine

| Item | Owner | Capture |
|---|---|---|
| Role of the engine register at `+0x408` (written 0 first in initialisation and during error recovery; no public source names it) | `docs/reset.md` | Queue several primitives with the stall level high, write `+0x408`, then read RE status (`+0x4000`), the fill level in status bits 24:18, and a drawn frame. Repeat after writing a TLB entry before the `+0x408` write, to see whether the TLBs survive. |
| Reset values of the rendering and MTE registers | `docs/reset.md` | Read every register of the group from the PROM monitor right after power-on, before any graphics software runs; the registers readable by the CPU only (IB_CTL is write-only). |
| Whether the MTE shares the interface buffer's order with rendering primitives, and whether MTE reads see linear-TLB entries changed while a primitive is in flight | `docs/reset.md` | Queue a rendering primitive that writes memory, then an MTE copy of that region, then rewrite a linear TLB entry; compare the copy with the two possible orders. |
| Whether the hardware raises an interrupt for MTE completion. Linux names engine-idle interrupts at inputs 24 (edge) and 27 (level) in `arch/mips/include/asm/ip32/crime.h`; whether they cover the MTE is not stated | `docs/reset.md`, `CRIME.h` | Unmask input 27, run only an MTE fill, and read INTSTAT when the fill ends, with a rendering primitive absent. |
| Behaviour for an MTE start column that is not a multiple of the transfer width, and bit 16 of an end word | `docs/mte.md` | MTE copy of a few bytes at odd columns into a pre-filled buffer; read the buffer back. |
| Row unit of the MTE (16 rows at 16 bit, 8 at 32 bit in the X server's split) | `docs/mte.md` | Copy rectangles of 1 to 20 rows through the MTE only and see which heights complete. |
| Stipple repeat period of the MTE stipple mode (8 or 32 bits) | `docs/mte.md` | MTE stippled fill with a known `+0x3010` pattern across a row; read the result. |
| Subtile ordering inside a 64 KiB tile, and whether 32-bit texels are ever subtiled | `MTE.h` | Dump a texture memory tile after a texture download of a recognisable 64 by 64 16-bit image, then of a 32-bit one. |
| Whether hardware treats `0x20d0` as non-global and `0x21f0` as global, as the kernel's save logic assumes; meaning of address-word bit 45 in the saved interface buffer | `docs/context.md` | Dump the interface buffer entries after writing each of the two registers and during a stalled queue. |
| What the engine does to a primitive that has begun when the context is switched mid-primitive | `docs/context.md` | Not available from software the kernel runs; needs a logic-analyser capture on the CRIME rendering bus across a forced switch. |
| Whether the CRIME on a shipped O2 reads ID `0xb1` or another value that IRIX 6.5.30 accepts (family `0xA`, revision non-zero) | `CRIME.h` | Read `0x14000000` on a stock O2. |
| Which of the two CRIME error interrupts (input 20 or 21) is the CPU error and which is the memory error; whether edge-source bits clear on read, on write to `+0x28`, or both | `docs/memory.md`, `CRIME.h` | Provoke a CPU bus error and a memory ECC error on separate runs with both inputs unmasked; read INTSTAT; then read it twice and write `+0x28`. |
| The function of CONTROL bits 13:12 and 9 and of the write to `+0x10` | `docs/memory.md` | Read CONTROL after PROM start, write each bit alone, read back. |
| Which TLB entry bit marks validity; behaviour of a lookup through an invalid entry | `docs/memory.md` | Draw through a frame-buffer TLB entry with each of bits 15 and 31 cleared in turn and observe whether the memory controller faults. |
| Which GL entry points call the kernel pixel DMA request (ioctl `0x55f2`) | `docs/pixel-transfer.md` | Trace the graphics ioctls issued by a GL program calling DrawPixels, ReadPixels and CopyPixels. |
| Whether step registers count bytes or pixels in hardware; overlap of copy source and destination | `docs/pixel-transfer.md` | Run a pixel transfer with a step of 2 on a 16-bit and then a 32-bit buffer; copy a rectangle onto an overlapping one in each direction. |
| Which flag bit 5 of ioctl `0x5605` does, and why an odd start page with 32 pages fails | `docs/pixel-transfer.md` | Issue the ioctl with bit 5 set and unset on the same buffer, and with an odd start page of 31 and 32 pages, and read the linear TLB afterwards. |

Display back end

| Item | Owner | Capture |
|---|---|---|
| Batch size of the colour-map FIFO writes the X module issues against the free-slot count | `docs/gbe.md` | Trace GBE colour-map writes (`+0x...` FIFO port and the free-count field) while the X server installs a 256-entry map. |
| Meaning of the bits of the window flag word that the reserved window-ID slots compare against (the third word `0x3c0n`) and of the two mask words | `docs/gbe.md` | Read the X server's window records and slot table header from a running server with one window of each visual type open. |
| Overlay compositing rule and any transparent value | `docs/gbe.md` | On a real display, put known values in the overlay plane over a known frame buffer and read back the video output for overlay value zero and non-zero. |
| How a window is assigned a window-ID index in the display-ID plane; whether the x in a DID entry is the start or the end of a run | `docs/gbe.md` | Dump the DID tile list (`DID_CONTROL` pointer, one 512-byte slot per line) with two windows of different visuals side by side. |
| Real depth of the rendering FIFO (64 inferred from the kernel overflow check, 128 in the specification text) | `CRIME_RE.h` | Stall the engine with the stall level high, queue single register writes and read the fill level in RE status bits 24:18 until the queue refuses writes. |
| Depth and blend arithmetic: precision and rounding of window z (25.12 inferred 24-bit depth with 12 fraction bits), of the vertex 13.6 bits 18:0 limit, and of the blend factors | `CRIME_RE.h`, `docs/rendering.md` | Draw two overlapping triangles whose z differ by one least-significant step and read the depth buffer; blend a known source over a known destination for each factor pair and read back. |

CRIME memory controller

| Item | Owner | Capture |
|---|---|---|
| Reset value of CONTROL (`+0x08`), the watchdog register (`+0x30`) and the memory control register (`+0x200`) before any software runs; what the two SysAD bits (13:12) change | `docs/memory.md` | Read the three registers from the PROM monitor at power-on, write each CONTROL bit alone and read back; with bit 13 or 12 toggled, observe whether system-bus parity checking changes (a deliberately corrupted write with a logic analyser on the bus). |
| Whether the memory-control write of 1 enables ECC checking on reads and nothing else; behaviour of `+0x270` (ECC replacement) | `docs/memory.md`, `CRIME.h` | With ECC off then on, write a word through the no-ECC alias with a flipped check bit, read it through the normal alias and read `+0x250`, `+0x258`, `+0x260`, `+0x268`, `+0x270`. |
| What each set bit of the CPU and memory error status means in the rev 0 and rev 1 layouts (IRIX prints a message per bit but the text is not in the listings) | `docs/memory.md` | Provoke each error type in turn (an access to unmapped physical space, a bad-parity write, a correctable and an uncorrectable ECC error) and read `+0x048` and `+0x250` after each. |
| Whether hardware treats a TLB entry with bit 15 or 31 clear as invalid and what a lookup through it does (already listed above); how the texture level start table is derived | `docs/memory.md` | Dump the texture TLB (`+0x1600`) after binding a texture with 6 mip levels of known sizes and a second, larger texture; compare the start index of each level. |

libGLcore command stream and rendering state

| Item | Owner | Capture |
|---|---|---|
| Names of the dirty-word bits at gc+11756 and of the "role unknown" enable bits of the word at gc+1792 | `docs/opengl.md` | Under a debugger, enable one GL capability at a time and read gc+1792, gc+11756 and gc+30436 before and after the next draw call. |
| What the objects at gc+30656 and gc+30660 (method at offset 160) do in the pick routine | `docs/opengl.md` | Break on the method during a buffer change and read the object. |
| The blend of fog colour and pixel colour in the hardware fog stage, whether the 8.12 stepper is clamped, and the roles of state-word bits `0x8` and `0x10` | `docs/opengl.md` | Draw a one-pixel-wide span with hardware fog and known steppers (start 0, 0.5 and 1.0) over a known colour and read back the result. |
| How the AA line stage combines slope, position and the two end coverage fractions, and how coverage meets alpha blending; whether DrawMode bit 13 is ever set by shipped software | `docs/opengl.md` | Draw one anti-aliased line with the AA register pair at known values over a black frame, read back the coverage per pixel; repeat with blending on. |
| Texture format choice: what gc+0xCC0, +0xCB8 and +0xCBC count; the values of the two global flags that pick RGB8 against RGB5 and decide the subtiled bit; the fall-through formats `GL_RGB4` and `GL_RGB5` | `docs/opengl.md` | Under a debugger, call glTexImage2D with each internal format and read the hardware format record that crmComputeTexLevelSize fills, on a stock O2. |
| Bit order of 16-bit RGB5_A1 and RGBA4 texels in memory | `docs/opengl.md` | Dump a texture tile after downloading a texture with one known texel of each channel value. |
| Texel filter weights, precision and rounding (listed with the rendering items) | `CRIME_RE.h` | Draw a magnified two-texel texture and read back the intermediate pixels. |
