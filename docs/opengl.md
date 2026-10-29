# libGLcore to CRIME command stream

How the IRIX 6.5.30 N32 OpenGL driver (`usr/gfx/arch/IP32CRM32/libGLcore.so`) turns transformed vertices into CRIME rendering-engine writes. Register names and encodings are in [CRIME_RE.h](../CRIME_RE.h); context offsets are in [glcore_crime.h](../libglcore/include/glcore_crime.h). Labels: **established** (read from the cited function), **inferred**, **unknown**.

## Where the work happens

CRIME has no geometry engine. The `CRIME.IP32.N32_M4.O` units do transform, lighting and clipping on the CPU (`mips4_xform`, `mips4_lighting`, `mips4_vclip`), and the hand-written `crm_astri` and `crm_astextri` units set up one triangle each (established, unit names and DWARF line tables). `__glMipsClipCheckFrustum` writes the window x, y, z and 1/w floats at vertex offsets 128, 132, 136 and 140 (established).

## One flat triangle

`__glCrmFlatTriangle` (`crm_astri.s`, source lines 444-522) is the shortest complete primitive (established):

1. Write Primitive (`+0x2060`) with opcode 2 and an edge type chosen from the sign of the area term and the starting vertex.
2. Write the three Vertex.GL pairs (`+0x2080`, `+0x2088`, `+0x2090`) with 64-bit stores of the biased float window coordinates.
3. Write Shade.fgColor through the start alias (`+0x28d0`), packing RGBA 8-bit integers as `R<<24 | G<<16 | B<<8 | A`, or the colour index unchanged.
4. When bit 1 of the context word at offset 32892 is set, the routine skips step 3 and commits with a write to PixPipeNull through the start alias (`+0x29f0`) (established). Inferred: the flag means the foreground colour is already loaded.

Smooth, depth and textured variants add Shade, Depth and Texture register writes before the commit, and commit through whichever register they write last (established; see the start-alias note in `CRIME_RE.h`).

## Global state

State setters (`crm_attrib`, `crm_depth`, `crm_stencil`, `crm_texture`) build the register word in the context, compare it with the last value sent, and write it to both the hardware mapping and a shadow page (established). DrawMode is held at context offset `0x7d58`. The enable setters write it at once unless a state word (at `0x1018` in m2c's output) already reads 2, the value every setter stores when it defers work (established, `__glCrmEnableDither` and siblings); value 1 makes the API entry points raise `GL_INVALID_OPERATION`, so it marks `glBegin`/`glEnd` (inferred). Deferred words are sent later by the validation path (inferred). Inferred: the shadow lets the kernel restore global registers after another process used the engine.

## Flow control

libGLcore never reads the FIFO level (established: the only status reads in the CRIME units are idle polls in `__glCrmFlushAndConfirm` and `crm_pick`). It writes as fast as the CPU allows and relies on two hardware mechanisms the kernel configures:

- the interface buffer stalls the CPU's writes above the stall level;
- above the full level, input 26 interrupts and the kernel deschedules the writer until input 25 reports the level has fallen to the empty threshold.

The thresholds differ by CPU module: 20 for R10000-family and RM7000 modules, 48 with an empty level of 24 for other R5000-class modules (established, `crimeInitHW`). `glFinish` writes PixPipeFlush (`+0x21f8`) and spins on the status idle bit (established).

## Open

- The rasteriser reads at most vertex bits 17:0 (inferred from the integer clear path; see `CRIME_RE.h`), and window z spans 0 to 0x3fffffff, giving a 24-bit depth with 12 fraction bits in the register (inferred). Both still want a capture to confirm.
- Fog factor and antialiasing set-up (`crm_ctri`, `crm_aalineasm`) are not read yet.
- Texture download: texels are CPU stores into kernel-mapped tiles and the texture TLB is reloaded whole on bind (see `CRIME_RE.h`); the per-format table that picks subtiling is not decoded.
