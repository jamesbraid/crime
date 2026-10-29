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
| Meaning of the bits of the window flag word that the reserved window-ID slots compare against (the third word `0x3c0n`) and of the two mask words | `docs/gbe.md` | Read the X server's window records and slot table header from a running server with one window of each visual type open. |
| Overlay compositing rule and any transparent value | `docs/gbe.md` | On a real display, put known values in the overlay plane over a known frame buffer and read back the video output for overlay value zero and non-zero. |
| How a window is assigned a window-ID index in the display-ID plane; whether the x in a DID entry is the start or the end of a run | `docs/gbe.md` | Dump the DID tile list (`DID_CONTROL` pointer, one 512-byte slot per line) with two windows of different visuals side by side. |
