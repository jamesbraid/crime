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

## Transform and clip check (read pass)

Sources: `libglcore/asm/CRIME.IP32.N32_M4.O/mips4_xform.s`, `mips4_vclip.s` and the N32 `libGLcore.so` disassembly with condition-code operands (the committed listing drops them). Labels as above.

- Established (`__glMipsXForm4`): output vector at `a0`, input vector at `a1`, matrix at `a2`, all 32-bit floats. Output component `i` is the sum over `j` of `in[j] * M[4 * j + i]`, with the matrix stored column-major (`M[0]`, `M[4]`, `M[8]`, `M[12]` give the x row). The routine ends by computing `1/w` with `recip.s` into `$f8`, which the next stage consumes. Sibling entry points (`XForm2`, `XForm3`, `_W`, `_2DW`, `_2DNRW` variants, `__glMipsMultMatrix`) are named in the unit but were not read.
- Established (`__glMipsClipCheckFrustum`): takes clip-space x, y, z in `$f0`, `$f2`, `$f4`, w in `$f6`, `1/w` in `$f8`. It compares each of x, y, z with `-w` and with `w` (strict less-than) and returns the six results as a mask: bit 0 x < -w, bit 1 x > w, bit 2 y < -w, bit 3 y > w, bit 4 z < -w, bit 5 z > w (the results go to condition codes 1 to 6 and the routine reads them out of the FP status register shifted down by 25 and masked with `0x3f`). A zero mask means the vertex is inside the frustum.
- Established: the same routine then writes the window coordinates to the vertex record at offsets 128, 132 and 136 as `bias + (clip * scale) * (1/w)`, and `1/w` at offset 140. The scales and biases live in the context at offsets 1720 (x scale), 1724 (x bias), 1728 (y scale), 1732 (y bias), 1736 (z scale), 1740 (z bias).
- Not read in this pass: polygon clipping against the frustum (`so_polyclip`, `so_clip`). Pass 4 below reads the transform and clip-check variants and the triangle-variant table.

## Software transform, lighting, clipping and dispatch (pass 3)

- Lighting (established, `mips4_lighting`): `__glCalcRGBColor` and `__glFastCalcRGBColor` light in single-precision floats on the CPU. `__glClampAndScaleColor` multiplies each component by the context's per-component maximum (gc+30752, 30756, 30760, 30792) and clamps to [0, maximum], leaving 0–255 floats at vertex offsets 192–204 that the triangle routines truncate (see `CRIME_RE.h`). The hardware receives only finished colours; it does no lighting.
- Clipping (established, `mips4_vclip`, `so_xform:__glUpdateViewportTransform`): `__glMipsClipCheckFrustum` and its variants compute frustum out-codes in clip space and the window coordinates in one pass. The 2D checks compare window x and y against a box the viewport code stores at gc+29732–29744: the viewport rectangle in biased coordinates (`x + 0x21000` to `x + width + 0x21000`, likewise y). Primitives with any out-code set are clipped in software before set-up. Inferred: the rasteriser therefore only sees vertices inside the viewport, whose biased coordinates stay well inside the 13.6 field; the hardware screen masks and scissor do window and scissor clipping, not frustum or guard-band clipping.
- Variant dispatch (established, `crm_pick:__glCrmPickTriangleProcs`): the triangle procedure slot (gc+12080) gets `__glCrmFillAATriangle` for polygon antialiasing (enable bit `0x800` of gc+1792), otherwise `__glCrmFillTriangle` (the textured set-up in `crm_astextri`); fog adds the `__glCrmFillCheapFogTriangle` wrapper and two-sided or culled modes the `__glCrmFillFrontBackTriangle` wrapper, each saving the previous slot and chaining to it. The selection of the flat, flat-Z and smooth variants in `crm_astri` is in the same function and is decoded in pass 4 below. Strip and fan vertex handlers (`__glEvenTStripVertex`, `__glOddTStripVertex`) are installed alongside.

## Open

- The validation call-outs through gc+0x2e0c to +0x2e58 in `__glCrmPickAllProcs` were not followed.

- The rasteriser reads at most vertex bits 18:0, unsigned (inferred from the integer clear path; see `CRIME_RE.h`), and window z spans 0 to 0x3fffffff, giving a 24-bit depth with 12 fraction bits in the register (inferred). Both still want a capture to confirm.
- Fog factor and antialiasing set-up (`crm_ctri`, `crm_aalineasm`) are not read yet.
- Texture download: texels are CPU stores into kernel-mapped tiles and the texture TLB is reloaded whole on bind (see `CRIME_RE.h`); the per-format table that picks subtiling is not decoded.

## Transform, clip-check and triangle variants (pass 4)

Sources: IRIX 6.5.30 N32 `libGLcore` (`mips4_xform.s`, `mips4_vclip.s`, `crm_pick.s`, the `.data` table at `0x0da46358`). Names of suffixes are my reading of the arithmetic, not from a source.

### Transform variants (`__glMipsXForm{2,3,4}*`)

All take output vector `a0`, input vector `a1`, column-major matrix `a2`, single-precision floats (established, disassembly). The digit is the number of input components. The suffix tells which matrix terms are used (established from the loads of each routine; the suffix wording is inferred):

| Suffix | Matrix terms used | Output |
|---|---|---|
| none | full 4 by 4: all of M[0..15], M[48..63]; for 2 and 3 inputs the missing components are zero | x, y, z, w computed; `recip.s` of w left in `$f8` |
| `_W` | x, y, z columns plus translation M[48], M[52], M[56]; the w column is taken as (0, 0, 0, 1) | w is 1.0 for 2 and 3 inputs and the input w for 4 inputs; no reciprocal is taken for 2 and 3 inputs (the stored w is 1), 4-input `_W` takes `recip.s` of the input w |
| `_2DW` | only the x and y columns' x and y terms (M[0], M[4], M[16], M[20]) plus translation and, for 3 inputs, the z term | z is `M[56]` (2 inputs) or `M[56] + z * M[40]` (3 inputs); w is 1.0 |
| `_2DNRW` | only M[0], M[20] (no rotation or shear in x and y) plus translation M[48], M[52], M[56]; z term M[40] for 3 inputs | as `_2DW` |
| `AsmLink` (3 inputs, with `_W`) | same arithmetic as `XForm3` and `XForm3_W` but the three input components arrive in `$f10`, `$f12`, `$f14` instead of through `a1` | for assembler callers that already hold the components in registers |

Not every 4-input 2D routine was compared term by term (`__glMipsXForm4_2DW`, `__glMipsXForm3_2DW`); the pattern is inferred from their siblings and from the loads of `__glMipsXForm4_2DNRW` and `__glMipsXForm4_W`.

### Clip-check variants (`__glMipsClipCheck*`)

- Established, `__glMipsClipCheckFrustum_W` (96 bytes): the same six comparisons and window-coordinate formula as the full routine; it stores `w` into the reciprocal slot at +140 (so it is the variant for w equal to 1) and returns the six-bit mask.
- Established, `__glMipsClipCheckFrustum2D`: four comparisons only (x and y against ±w) and a mask of four bits; z is not compared and the window z is computed from the vertex z at +120 with the z scale and bias.
- Established, `__glMipsClipCheckSafe2/3/4`: for vertices known to be inside; they load clip x, y, z, w from the vertex record at +112 to +124, take the reciprocal of w and jump through a context slot (gc+11936, +11940 and +11944 for 2, 3 and 4 components), so no comparison is made.
- Established, `__glMipsClipCheckAll2/3/4`: save the caller-saved registers and call the C routines `__glClipCheckAll2/3/4`. Inferred from the name only: these also test the user clip planes (not read).
- Established, `__glMipsClipCheck2D_2/_3/_3_vtx/_4`: the transform and the window-box test in one routine. They apply the combined matrix stored at gc+29748 (terms M[0], M[4], M[16], M[20], M[48], M[52], and for 3 components M[40], M[56]) to the object-space x and y at vertex offsets +16, +20 (+24), store the window x and y at +128 and +132 and compare them with the viewport box at gc+29732 to gc+29744 (x low, y low, x high, y high). `_3_vtx` also compares the transformed z with plus and minus the value at gc+3544 and jumps through gc+11948; it writes the mask into the vertex record at +4. Return value of the others is the four-bit mask (x low, x high, y low, y high order as the FP status bits come out).
- Established (`so_context`, `0x0d9d....`): gc+3544 is initialised to 1.0 and gc+3540 to 0.5. Inferred: gc+3544 is the z clip bound used by `_3_vtx` (the test is z < -bound or z > bound). Unknown: whether any state call changes it; needs a capture of the context after a depth-range change (a debugger read of gc+3544).
- Established (`so_polyclip`, `__glDoPolygonClip` at `0x0d9fb530`, `clipToPlane` and `clipToPlaneEye`): polygon clipping is generic Sutherland-Hodgman over an on-stack vertex buffer (8 KiB frame, 400-byte vertex records). The caller's mask has the six frustum plane bits in its low six bits and one bit per user clip plane above them (`mask >> 6`; the user planes' equations are 16 bytes each from gc+1748); frustum planes clip in clip space, user planes through `clipToPlaneEye` in eye space. When the AA bit is set it clips through `__glFillAntiAliasedTriangle`. Inferred: `__glClipCheckAll2/3/4` return that combined mask.

### Which triangle routine is chosen (`__glCrmPickTriangleProcs`)

- Established (table at `0x0da46358` in `.data`, 16 pointers; routine `0x0d9514c0..0x0d9517a0`): the routine builds an index and stores `table[index]` in gc+12080. With `m` the state word at gc+30436 and `e` the word at gc+1792:
  - bit 0 of the index is `m & 1` (RGB against colour index, per the earlier note);
  - bit 1 is `m & 0x20000` (smooth shading; for flat shading both values of bit 0 point to the same flat routine);
  - bit 2 is `m & 4` (depth test, the `Z` routines);
  - bit 3 is set when `e & 3` is non-zero or the word at gc+3268 is non-zero (alpha present; this picks the `RGBA` routines).
  - Index values: 0 and 1 `__glCrmFlatTriangle`, 2 `__glCrmSmoothCITriangle`, 3 `__glCrmSmoothRGBTriangle`, 4 and 5 `__glCrmFlatZTriangle`, 6 `__glCrmSmoothCIZTriangle`, 7 `__glCrmSmoothRGBZTriangle`; 8 and 9 flat, 10 smooth CI, 11 `__glCrmSmoothRGBATriangle`, 12 and 13 flat Z, 14 smooth CI Z, 15 `__glCrmSmoothRGBAZTriangle`.
- Established: the table is used only when the byte at gc+3220 is zero or `m & 0x42008` is zero, and the byte at gc+3221 is zero or `m & 0x40000` is clear; otherwise slot gc+12080 is `__glCrmFillTriangle`, the general (textured) set-up. The conditions come from the branches at `0x0d9515ac..0x0d95169c`.
- Established: the wrappers are then chained on top as already recorded (stipple, front/back, cheap fog, left/right, slow path) and a fresh pick forces the `0x200` word at gc+32104.
### How the state word `m` (gc+30436) is built (`__glCrmPickAllProcs`)

Established from the decompilation and disassembly (`crm_pick`, `0x0d9527a0..0x0d952f78`). Inputs: `e` = gc+1792 (the enable word), `c` = the byte at gc+3220 (colour mode: nonzero is RGB, zero is colour index), and the other gc words named by offset. GL constants are matched to the public OpenGL headers: 0x1D01 is GL_SMOOTH, 0x1102 is GL_NICEST, 0x2400 and 0x2402 are the eye-linear and sphere-map texture-coordinate generation modes, 0x8001 to 0x8004 are the constant-colour and constant-alpha blend factors, 0x8007, 0x8008, 0x800a and 0x800b are the min, max, subtract and reverse-subtract blend equations, 0xbf1 is GL_INDEX_LOGIC_OP.

| `m` bit | Set when | Reading |
|---|---|---|
| 0x1 | `c` nonzero | RGB mode |
| 0x8 | `c` nonzero and byte gc+28216 nonzero (that byte is `c` and word gc+28208 both nonzero, recomputed on a state change) | established condition; role inferred as hardware depth in use |
| 0x100 | `c` nonzero and `e & 2` | inferred: blend enabled |
| 0x200 | `c` nonzero and `e & 1` | inferred: alpha test enabled |
| 0x800 | RGB mode and the four colour-write-mask bytes gc+1884 to 1887 are not all set; or, in colour-index mode, gc+1880 and gc+30736 differ | inferred: a partial colour write mask (one of the combinations the fast routines do not do) |
| 0x80 | colour-index mode and `e & 4` | colour-index and one enable bit; role unknown |
| 0x20002 | gc+1392 is GL_SMOOTH (shade model) | smooth shading |
| 0x4004, then 0x40000 | RGB mode, `e & 0x10`, byte gc+3225 nonzero and bit 24 of `e` set; 0x40000 added when gc+500 or gc+504 is non-zero (two floats) | inferred: depth test with a depth buffer, plus a polygon-offset-like pair of floats; `0x4` here is what the triangle table reads as its Z bit (which therefore means depth test active, not depth write) |
| 0x10000 | `e & 0x1000` | enable bit; role unknown |
| 0x40 | `e & 8` | enable bit; role unknown |
| 0x10 | `e & 0x2000` | enable bit; role unknown |
| 0x8000 | `e & 0x100` | enable bit; role unknown |
| 0x20 | `e & 0x8000` and byte gc+3226 nonzero | enable bit; role unknown |
| 0x400 | `e & 0x40` and byte gc+1413 nonzero | enable bit; role unknown |
| 0x1000 | `e & 0x20`, and the hint word gc+1912 is GL_NICEST or the pipe has the byte gc+28216 set and drawable flag 0x8000 clear | inferred: a request for the higher quality path |
| 0x2002 | `e & 0x20` otherwise | role unknown |
| 0x80000 | `e & 2`, not `gc[0x704] & 0x800`, and a blend factor or equation in gc+0x724..0x72c is one of the constants listed above | inferred: blend features the hardware cannot do, sent to the software path |

The function stores `m` in gc+30436 and also in gc+0x7dc0-based words, and then calls validation steps through function pointers at gc+0x2e0c to +0x2e58 and `__glCrmValidate`. Those call-outs were not read.

- Unknown: the GL meaning of the "role unknown" rows (the enable bits of `e`). Needs the public GL enable-bit layout of this context: a capture of `e` while enabling one GL capability at a time under a debugger, since the offsets are not named by any symbol.
- Outside this row: the validation call-outs through gc+0x2e0c to +0x2e58 belong to the command-format row and are listed under Open below.
