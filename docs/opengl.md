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

- The rasteriser reads at most vertex bits 18:0, unsigned (inferred from the integer clear path; see `CRIME_RE.h`), and window z spans 0 to 0x3fffffff, giving a 24-bit depth with 12 fraction bits in the register (inferred). Both still want a capture to confirm.
- Fog and antialiasing set-up are decoded in the pass 5 section below.
- Texture download: texels are CPU stores into kernel-mapped tiles and the texture TLB is reloaded whole on bind (see `CRIME_RE.h`). The per-format table is decoded in pass 5 below; two environment flags in it remain unread.

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
- Established (`so_context.s` `__glEarlyInitContext`, the stores at its lines 68-69): gc+3544 is initialised to 1.0 and gc+3540 to 0.5. Established by a scan of every N32 libGLcore listing for a word, float or doubleword store at offsets 3536 to 3547: that initialiser is the only writer, so gc+3544 stays 1.0 for the life of a context; the clip, triangle and line code (`mips4_vclip.s`, `crm_ctri.s`, `crm_line.s`, `crm_linedrawasm.s`) only read it. Inferred: it is the z clip bound used by `_3_vtx` (the test is z < -bound or z > bound).
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
| 0x100 | `c` nonzero and `e & 2` | blend enabled (GL_BLEND) |
| 0x200 | `c` nonzero and `e & 1` | alpha test enabled (GL_ALPHA_TEST) |
| 0x800 | RGB mode and the four colour-write-mask bytes gc+1884 to 1887 are not all set; or, in colour-index mode, gc+1880 and gc+30736 differ | inferred: a partial colour write mask (one of the combinations the fast routines do not do) |
| 0x80 | colour-index mode and `e & 4` | colour-index logic op enabled (`e & 4` is GL_INDEX_LOGIC_OP, table below) |
| 0x20002 | gc+1392 is GL_SMOOTH (shade model) | smooth shading |
| 0x4004, then 0x40000 | RGB mode, `e & 0x10`, byte gc+3225 nonzero and bit 24 of `e` set; 0x40000 added when gc+500 or gc+504 is non-zero (two floats) | inferred: depth test with a depth buffer, plus a polygon-offset-like pair of floats; `0x4` here is what the triangle table reads as its Z bit (which therefore means depth test active, not depth write) |
| 0x10000 | `e & 0x1000` | face culling enabled (GL_CULL_FACE) |
| 0x40 | `e & 8` | dithering enabled (GL_DITHER) |
| 0x10 | `e & 0x2000` | polygon stipple enabled (GL_POLYGON_STIPPLE) |
| 0x8000 | `e & 0x100` | line stipple enabled (GL_LINE_STIPPLE) |
| 0x20 | `e & 0x8000` and byte gc+3226 nonzero | stencil test enabled (GL_STENCIL_TEST) on a visual with stencil (gc+3226 inferred to be the stencil-present byte, the neighbour of the depth-present byte gc+3225) |
| 0x400 | `e & 0x40` and byte gc+1413 nonzero | lighting enabled (GL_LIGHTING) with the light-model byte gc+1413 set (which light-model field it is: not traced) |
| 0x1000 | `e & 0x20`, and the hint word gc+1912 is GL_NICEST or the pipe has the byte gc+28216 set and drawable flag 0x8000 clear | inferred: a request for the higher quality path |
| 0x2002 | `e & 0x20` otherwise | fog enabled (GL_FOG) on the cheaper path |
| 0x80000 | `e & 2`, not `gc[0x704] & 0x800`, and a blend factor or equation in gc+0x724..0x72c is one of the constants listed above | inferred: blend features the hardware cannot do, sent to the software path |

The function stores `m` in gc+30436 and also in gc+0x7dc0-based words, and then calls validation steps through function pointers at gc+0x2e0c to +0x2e58 and `__glCrmValidate`. The call-outs are decoded in the next section.

- Established: the enable word `e` (gc+1792) bit for each capability, by running every enum from 0 to 0x87ff through `__glim_Enable` (`so_attrib.s`, `0x0d9c2a70..0x0d9c371c`; the routine is a compare tree, no jump table, so a path-by-path evaluation of the listing gives each case; `__glim_Disable` clears the same bits). GL names are the public enum values:

| `e` bit | Capability | `e` bit | Capability |
|---|---|---|---|
| 0x1 | GL_ALPHA_TEST | 0x10000 | GL_TEXTURE_1D |
| 0x2 | GL_BLEND | 0x20000 | GL_TEXTURE_2D |
| 0x4 | GL_INDEX_LOGIC_OP | 0x40000 to 0x200000 | GL_TEXTURE_GEN_S, T, R, Q |
| 0x8 | GL_DITHER | 0x400000 | GL_NORMALIZE |
| 0x10 | GL_DEPTH_TEST | 0x800000 | GL_AUTO_NORMAL |
| 0x20 | GL_FOG | 0x1000000 | GL_POLYGON_OFFSET_FILL (0x8037) |
| 0x40 | GL_LIGHTING | 0x2000000, 0x4000000, 0x8000000 | GL_CONVOLUTION_1D, _2D, GL_SEPARABLE_2D |
| 0x80 | GL_COLOR_MATERIAL | 0x10000000, 0x20000000 | GL_HISTOGRAM, GL_MINMAX |
| 0x100 | GL_LINE_STIPPLE | 0x40000000 | GL_TEXTURE_3D (0x806f) |
| 0x200 | GL_LINE_SMOOTH | 0x80000000 | GL_TEXTURE_COLOR_TABLE_SGI (0x80bc) |
| 0x400 | GL_POINT_SMOOTH | | |
| 0x800 | GL_POLYGON_SMOOTH | | |
| 0x1000 | GL_CULL_FACE | | |
| 0x2000 | GL_POLYGON_STIPPLE | | |
| 0x4000 | GL_SCISSOR_TEST | | |
| 0x8000 | GL_STENCIL_TEST | | |

  The other capabilities use neighbouring words: gc+1796 (GL_POLYGON_OFFSET_POINT 0x200, _LINE 0x400; the three colour tables 0x80d0 to 0x80d2 as bits 0 to 2), gc+1800 (GL_LIGHT0 to 7, bits 0 to 7), gc+1804 (GL_CLIP_PLANE0 to 5), gc+1808 (GL_MAP1_*), gc+1812 (GL_MAP2_*); GL_COLOR_LOGIC_OP calls `__glim_BlendEquationEXT` instead of setting a bit. The vertex-array enables (0x8074 to 0x8079) set bits of gc+5356 and gc+5344, not `e`.
- The validation call-outs are decoded below.

### Validation call-outs of `__glCrmPickAllProcs` (pass 5)

Established (disassembly of `crm_pick.s` `0x0d952800..0x0d952d40` for the calls, `crm_context.s` for the slot contents). The context initialiser stores a re-pick function in each of the gc slots below (the slots are plain function pointers, offsets decimal); `__glCrmPickAllProcs` calls them in this order when the dirty word at gc+11756 has the stated bits. Every call passes the context as its only argument and returns nothing used.

| gc slot | Function stored there | Called when dirty word (gc+11756) has | What it re-selects |
|---|---|---|---|
| +11796 | `__glCrmPickTextureProcs` | `0x21` (first call; also recomputes the byte gc+28216 from gc+3220 and word gc+28208) | texture procedure slots |
| +11864 | `__glGenericPickDepthProcs` | `0x80` | depth-test procedures |
| 30656 and 30660 objects, method at +160 | the front and back colour-buffer records: `MakeCurrentRead` (`crm_context.s`, the stores at `0x0d9465c0..0x0d9465dc`) points gc+30656 at the 220-byte record embedded at gc+30664 and, when the double-buffer byte gc+3222 is set, gc+30660 at the one at gc+30884. Offset 160 of each record is its pick routine, `PickRGBA` (`crm_rgb.s`, `0x0d9683b0..0x0d968440`, stored by `__glCrmInitRGB`) or the colour-index counterpart | always for the front record; the back one when gc+3222 is set | the buffer's span-store routine at record +164: the plain or the alternative store by the byte gc+30652, or `StoreSPBuffRGBA` / `StoreSPBuffRed` when the current drawable is a pixel buffer of type 4 with a 16-bit or wider store. `__glCrmSetDrawBuffer`'s callers choose between the two records for GL_FRONT and GL_BACK |
| +11836 | `PickBufferProcs` | always, in the `m` tail | draw-buffer selection: reads the draw-buffer enum at gc+1892 (GL_FRONT 0x404, GL_BACK 0x405, GL_LEFT 0x406, GL_RIGHT 0x407, GL_FRONT_AND_BACK 0x408) and calls `__glCrmSetCurrentBuffers` |
| +11840 | `__glCrmPickStoreProcs` | `0x2f` (last pick, direct call of the function; slot +11840 is the same function used by the re-entrant path) | pixel store (write) procedures |
| +11804 | `__glGenericPickTransformProcs` | always in the tail | transform procedures |
| `__glCrmValidate` (+11784) | calls `__glCrmUnlayerColorProcs`, the pick function in gc+11868 (`__glCrmPickAllProcs` itself, a re-entry), then `__glCrmLayerColorProcs` | always | wraps colour-procedure layering around a repick |
| +11792 | `__glGenericPickColorMaterialProcs` | always (call-site is a mangled `jal` in the disassembly; target read from the slot store) | colour-material procedures (inferred call; slot established) |
| +11788 | `__glGenericPickBlendProcs` | always | blend procedures |
| +11800 | `__glGenericPickFogProcs` | always | fog procedures |
| +11832 | `__glGenericPickParameterClipProcs` | always | parameter clip procedures |
| +11828 | `__glCrmPickClipProcs` | tail after `m` | clip procedures |
| +12656 | `__glConvertStipple`, then `__glCrmUpdatePolyStipple` | dirty bit `0x40`; the converter runs first, then bit 1 of the word at gc+32928 sets its bit 2, and `__glCrmUpdatePolyStipple` runs when bit 2 is set | polygon-stipple conversion to the engine layout |
| +11808 | `__glCrmPickPointProcs` | `0x29` | point procedures |
| +11812 | `__glCrmPickLineProcs` | `0x23` | line procedures |
| +11844 | `__glCrmPickSpanProcs` | `0x25` | span procedures |
| +11816 | `__glCrmPickTriangleProcs` | `0x25` (immediately after the span pick) | triangle procedures (decoded above) |
| +11824 | `__glCrmPickPixelProcs` | `0x31` | pixel procedures |
| +11820 | `__glCrmPickRenderBitmapProcs`, then `__glValidateAlphaTest` when bit 0 of the word gc+11752 is set | `0x21` | bitmap procedures and alpha-test validation |
| +11916 | `__glComputeClipBox` | after the bitmap pick | the clip box |
| +11848 | `__glCrmPickVertexProcs` | `0x27` | vertex procedures |

After the last call the function clears gc+11756 and gc+11752 (established, both stores of zero). Established: the dirty-word bits, by collecting every store to gc+11756 in the N32 listings with the immediate ORed in just before it (all of `asm/*/*.s`), and naming each by its setters:

| Bit | Set by | Group |
|---|---|---|
| 0x1 | every `glEnable`/`glDisable`, alpha function, blend function and equation, colour mask, clear values, depth function and mask, draw buffer, fog parameters, shade model, stencil function, mask and op, texture image, binding and parameters, viewport check | general rendering state |
| 0x2 | line stipple, line width, polygon mode, hints, the line enables | line state |
| 0x4 | cull face, front face, polygon mode, polygon offset, polygon stipple pattern, the polygon enables, stencil enable, the colour, index and stencil clears and stencil resize | polygon state |
| 0x8 | point size, polygon mode, hints, the point enables | point state |
| 0x10 | pixel store, pixel transfer, pixel zoom, read buffer, convolution filters, colour tables, the imaging enables | pixel-transfer state |
| 0x20 | light and light-model parameters, lighting and light enables | lighting state |
| 0x40 | only the context copy (0x44) and the full reset (0xff at make-current and buffer set-up); it gates the stipple conversion | stipple pattern to reconvert (inferred) |
| 0x80 | depth function, depth mask, depth-test enable, make-current, the depth clear and z-count readjust | depth state |

The second word gc+11752 carries three finer bits: 0x1 alpha function, 0x2 stencil function or mask, 0x4 stencil operation (setters `__glim_AlphaFunc`, `__glim_StencilFunc`, `__glim_StencilMask`, `__glim_StencilOp` and their `__glcrmim_` counterparts). So the gates in the table above read: texture pick on 0x21 (general or lighting), lines 0x23, spans and triangles 0x25, vertices 0x27, points 0x29, stores 0x2f, pixels 0x31.

## Fog and antialiasing set-up (pass 5)

Sources: IRIX 6.5.30 N32 `libGLcore` (`so_pick.s`, `crm_ctri.s`, `crm_astextri.s`, `crm_attrib.s`, `crm_point.s`, `crm_span.s`, `crm_aalineasm.s`, `crm_polyaa.s`, `crm_context.s`). Register offsets are in `CRIME_RE.h`; `gc` is the context. The GL meaning of a context offset is my reading unless a constant ties it.

### Fog

- Established (`__glGenericPickFogProcs`): when enable bit `0x20` of gc+1792 is set it fills three slots. gc+12536 is the per-vertex fog-factor routine: none if the hint word gc+1912 is `0x1102` (GL_NICEST), `__glFogVertexLinear` if the fog-mode word gc+1588 is `0x2601` (GL_LINEAR), otherwise `__glFogVertex`. gc+12528 is `__glFogFragmentSlow` and gc+12532 is `__glFogColorSlow` (the per-vertex colour blend). With fog disabled all three are cleared. Inferred: bit `0x20` is GL_FOG and gc+1912 is the fog hint; the constants are the GL ones.
- Established (`__glCrmPassFog`, skipped when the byte gc+3221 is nonzero): the fog colour register `+0x2170` is written (hardware and shadow copy both) with three floats from gc+1592, +1596 and +1600 truncated to integers and packed as `a << 24 | b << 16 | c << 8` with the low byte zero, where the float at +1592 is the top byte. Inferred: the three floats are the 0-255 scaled red, green and blue of the fog colour in that order (the packing is established, the order of the colour components is not tied to a GL name).
- Established (`__glCrmEnableFogTest`, `CRIME_RE.h`): DrawMode bit 14 (`DM_FOG`) turns hardware fog on.
- Established (point, line and span code, `crm_point.s`, `crm_span.s`, `crm_linespan.s`): the fog stepper registers `+0x2178` (start value), `+0x2180` and `+0x2188` (x and y gradients) are 32-bit integer stores. The start value is the vertex fog factor (a float in 0..1 at vertex offset +176, filled by gc+12536) times 255 times 4096 (a 12-bit fraction, so an 8.12 value). For a point both gradients are zero. For a triangle (`crm_astextri.s`, only when the state word gc+30436 has bit `0x2000`): the three vertex factors are scaled by 255, the plane equation is solved across the triangle with the same edge cross products used for the colour steppers, and all three results are multiplied by the float at gc+32016 (4096.0, stored by the context initialiser) and truncated.
- Established (`__glCrmFillCheapFogTriangle`, installed in slot gc+12080 on top of the base routine when the state word has bit `0x2000` set and bit `0x8` clear, per `__glCrmPickTriangleProcs`): the per-vertex colour routine in gc+12532 is called for each vertex and the three vertices' colour pointers (record offset +8) are redirected to the results on the stack; then the wrapper clears state-word bit `0x2000`, sets bit `0x20000` (smooth), clears DrawMode bit 14 and sets bit 16 (`DM_SHADE`), calls the saved base routine from gc+12084, and restores the original DrawMode, state word and colour pointers. So this "cheap fog" blends fog into the vertex colours on the CPU and draws a smooth-shaded triangle with the hardware fog stage off. When bit `0x8` is set the unwrapped path above uses the hardware stepper instead. A matching line routine `__glCrmRenderCheapFogLine` exists (installed in `crm_pick.s`; not read further). Inferred: bit `0x8` of the state word means the pipe has hardware depth in use, so hardware fog is used only with it.
- Established: the wrapper also sets DrawMode bit 0 (`DM_STENCIL`) and clears state-word bit `0x10` when state-word bit `0x10` is set and bit 1 of the word at gc+32928 is set. Inferred: bit `0x10` is a stencil-test enable (it is `e & 0x2000`, "role unknown" in the table above).
- Unknown: the exact blend formula the hardware fog stage applies between the fog colour and the pixel colour, and whether the 8.12 stepper is clamped. Routes and the next one: `docs/open-questions.md`.

### Antialiasing

- Established (`__glCrmAntiAliasLineRGB`, `crm_aalineasm.s`): the line routine does not use the triangle path. It writes the line's two endpoints and the primitive word as usual and finishes with one 64-bit store to the start alias of the AA register pair (`+0x2990`, which is `+0x2190` plus the start alias offset `0x800`), so the store both loads and commits. The high word (`+0x2190`, `PP_AA_LINE`) is `slope << 16 | position`: bits 31:16 are the minor-axis step per major-axis pixel, the line's slope scaled by the float gc+32028 (16384.0, stored by the context initialiser) and truncated; bits 15:0 are the minor-axis coordinate of the first major-axis pixel with 8 fraction bits, adjusted by the rounded product of the start offset and the slope. The low word (`+0x2194`, `PP_AA_COV`) is `a << 8 | b`, two 6-bit coverage fractions: each is the low six bits of the corresponding endpoint coordinate plus 32, or 64 minus it when the line's direction flag is set. Inferred (arithmetic, not a named field): these are the end-cap coverages. The routine selects x-major or y-major by comparing the absolute deltas (gc+8432 or +8440 in the register image for the unused axis).
- Established (`crm_linedraw.s`): the non-assembly line path writes the same register pair as one 64-bit store at `+0x2190` directly (no start alias), built from the same two-halves layout.
- Established: DrawMode bit 12 (`DM_AA_LINE`) enables the stage; bit 13 (`DM_COVERAGE`) is a separate bit. No libGLcore path was found that sets bit 13 from the AA paths read here (not searched in the X module or kernel).
- Established (`__glCrmFillAATriangle`, `crm_polyaa.s`): polygon antialiasing is done in software. Vertex window coordinates are snapped to a `1 << gc+3736` sub-pixel grid, the signed area is tested for zero, and the polygon is split into sub-triangles (`FillAASubTriangle`) plus edge pixels drawn through `__glCrmRenderPointDepthRGBA`, with the coverage weights from `Coverage` and `ComputeCoverageStuff` and an index from `__glBuildAntiAliasIndex`. Hardware registers written are the ordinary vertex, colour, fog and depth steppers; the `PP_AA_LINE` and `PP_AA_COV` registers are not written by the polygon path (no store to `+0x2190` or `+0x2194` in `crm_polyaa.s`).
- Unknown: the weighting function the AA stage applies to the coverage fractions and slope, and how coverage combines with alpha blending in the pixel pipe (the specification text is incomplete here). Routes and the next one: `docs/open-questions.md`.

## Texture format selection and download table (pass 5)

Source: IRIX 6.5.30 N32 `libGLcore`, `crm_texture.s`: `crmComputeTexLevelSize` (`0x0d970970`, 1860 bytes; called from `__glCrmPickTextureProcs` and `crmCreateLevel`), `crmSetTextureParam`, `crmCreateLevel`. Names of record fields are mine.

- Established (`crmComputeTexLevelSize`): for each level it takes the requested internal format, the level size and the border width. The usable size is the given size minus twice the border; it fails (returns -1) if either side exceeds the context limit at gc+0xE8C. It fills two records. The level record (offsets +0x40 to +0x5c) holds a GL base format, the stored internal format, and six bit counts (+0x48 red, +0x4c green, +0x50 blue, +0x54 alpha, +0x58 luminance, +0x5c intensity; the colour-to-offset naming is inferred from which counts are set for which format). The hardware record holds the texel type code at +0xC, the texel depth at +0x10 and the layout fields at +0, +4 and +8. It returns the level's storage size in bytes, `width * height << depth`.
- Established, the format table. Each requested format collapses onto one stored format; all of the stored formats are 16 or 32 bits per texel (the depth value is a log2 of bytes: 1 for 16 bit, 2 for 32 bit). GL names below are the public OpenGL 1.2 and SGIS ones that match the numeric constants in the code.

| Requested internal format (GL) | Stored format | Bits stored | Depth (log2 bytes) | Type code |
|---|---|---|---|---|
| `GL_ALPHA`, `GL_ALPHA4/8/12/16` | `GL_ALPHA16` | A 16 | 1 | 5 |
| `GL_LUMINANCE`, `GL_LUMINANCE4/8/12/16` | `GL_LUMINANCE16` | L 16 | 1 | 7 |
| `GL_LUMINANCE_ALPHA`, `GL_LUMINANCE4_ALPHA4`, `GL_LUMINANCE6_ALPHA2`, `GL_LUMINANCE8_ALPHA8`, `GL_LUMINANCE12_ALPHA4`, `GL_LUMINANCE12_ALPHA12`, `GL_LUMINANCE16_ALPHA16` | `GL_LUMINANCE8_ALPHA8` | L 8, A 8 | 1 | 8 |
| `GL_INTENSITY`, `GL_INTENSITY4/8/12/16` | `GL_INTENSITY16` | I 16 | 1 | 6 |
| `GL_RGB8`, `GL_RGB10`, `GL_RGB12`, `GL_RGB16` | `GL_RGBA8` (RGB stored in 32-bit texels) | R 8, G 8, B 8 | 2 | 1 |
| `GL_RGB2_EXT` (`0x804e`), `GL_RGB4`, `GL_RGB5`, `GL_R3_G3_B2` | `GL_RGB5_A1` tag with 5-bit RGB channels and no alpha bits | 5/5/5 | 1 | 1 |
| `GL_RGB` (3, `0x1907`) | `GL_RGBA8` or `GL_RGB5_A1`, by the size test below | 8/8/8 or 5/5/5 | 2 or 1 | 1 |
| `GL_RGBA` (4, `0x1908`) | `GL_RGBA8` or `GL_RGBA4`, by the size test below | 8/8/8/8 or 4/4/4/4 | 2 or 1 | 2 or 4 |
| `GL_RGBA8`, `GL_RGB10_A2`, `GL_RGBA12`, `GL_RGBA16` | `GL_RGBA8` | 8/8/8/8 | 2 | 2 |
| `GL_RGBA2`, `GL_RGBA4` | `GL_RGBA4` | 4/4/4/4 | 1 | 4 |
| `GL_RGB5_A1` | `GL_RGB5_A1` | 5/5/5/1 | 1 | 2 |

- Established: type code 3 is never produced by this routine. Established (`crmSetTextureParam`): the Texture.mode texel-type field (bits 23:20) receives the type code and the texel-depth field (bits 19:18) receives the depth value from the same record, so the codes above are what the hardware sees; the format record the mode is built from is the one at offset 32 of the texture object's image record (gc object +284).
- Established, the choice between stored formats for RGB and RGBA requests: it depends on a count `n` read from gc+0xCB8 plus gc+0xCBC plus gc+0xCC0 and on one global flag read gp-relative. Generic `GL_RGB` stores 8-bit channels in 32-bit texels when `n` is 16 or more or the flag is set, otherwise 5-bit channels in 16-bit texels. Generic `GL_RGBA` stores 4-bit channels (RGBA4) when `n` is below 9 and the flag is clear, otherwise RGBA8. The explicit sized formats in the table do not consult `n`.
- Established (disassembly, pass 6): `GL_RGB4` (`0x804f`) and `GL_RGB5` (`0x8050`), and `GL_RGB2_EXT` (`0x804e`) with them, take the same branch as `GL_R3_G3_B2`: base format `GL_RGB`, stored tag `GL_RGB5_A1`, red, green and blue counts 5, alpha count left 0, depth value 1 (16-bit texels), type code 1. The decompiler's jump table lost these cases; the compare chain in `crmComputeTexLevelSize` ends in `0x804e`, `0x804f` and `0x8050` tests that all jump to the shared 5/5/5 store. So there is no fall-through gap: every requested internal format in the OpenGL 1.1 list reaches a stored format.
- Established (pass 6): the two global flags are environment variables read once, on the first call of `__glCrmResetTextureState` (`crm_texture.s`; the block is guarded by a cached word whose initial value in `.sdata` is -1, and it calls `getenv` eight times, storing each result gp-relative): the flag at gp-22404 (the decompiler's "gp-5784") is set when `GLCRMTEXFORCE32` exists in the environment and the flag at gp-22408 ("gp-5788") when `GLCRMTEXUSEONCE` does. The other six are `GLCRMTEXDUMP`, `GLCRMTEXNODEALLOC`, `GLCRMTEXALLCLAMPMODES`, `GLCRMTEXUSEFASTBIND`, `GLCRMTEXUSEFULLBIND` and `GLCRMTEXNOVICE`; their uses are not decoded here. So with neither variable set, which is the default unless the user sets them: generic `GL_RGB` and `GL_RGBA` use the 16-bit forms when `n` is small, and a texture is subtiled (record flag bit 2) whenever the caller's last argument is zero. Inferred reading: `GLCRMTEXFORCE32` forces 32-bit texels; `GLCRMTEXUSEONCE` suppresses subtiling. The flag meanings come from the variable names and the branches; no shipped documentation was read.
- Established (`__glCrmInitRGB`, `crm_rgb.s` from `0x0d968470`; `so_blend.s`): gc+0xCB8, +0xCBC, +0xCC0 and +0xCC4 are the four colour component bit counts of the visual: `__glCrmInitRGB` adds all four and selects the buffer layout by the total (8, 15, 16, 24 or 32), and the blend set-up turns each into a maximum `(1 << n) - 1`. Inferred from the public context-modes order: red, green, blue, alpha. The three summed into `n` are therefore the red, green and blue counts. Gc+0xCB8 and +0xCBC are read as the red and green sizes in the pixel-buffer code (`vice_pbuffer.s`, compared with 16), gc+3268 (0xCC4) is tested for alpha in `__glCrmPassBlendFunc`, and the thresholds fit sums of component sizes (RG3B2 8, RGB5 15, RGB8 24). Consequence (inferred): a 16-bit-colour visual textures at 5-5-5-1 and a 24-bit one at 8-8-8-8.
- Established (hardware record layout fields): +0 is a flag word. Bit 0 is set when the larger level side is below 128 texels, bit 1 when it is 128 or more, and bit 2 (the subtiled flag that `crmSetTextureParam` copies to Texture.mode bit 24) is set when a second global flag at gp-5788 is zero and the caller's last argument is zero. +8 is the number of 64 KiB tile rows the level needs, `(height + 127) >> 7`; +4 is the number of tiles across, `((width << depth) + 511) >> 9`. Those two follow the frame-buffer tile geometry of 128 rows of 512 bytes per 64 KiB tile (consistent with the `CRIME_RE.h` description of unsubtiled textures). The flag at gp-22408 is `GLCRMTEXUSEONCE` (above). Established (`crm_texture.s`): `crmCreateLevel` (`0x0d9710c0..0x0d971a28`) loads its last argument as the byte at its frame +527 (the low byte of the caller's stack word +12) and passes it to `crmComputeTexLevelSize` (`0x0d970970..0x0d9710b4`), which sets bit 2 only when that byte and the `GLCRMTEXUSEONCE` flag are both zero (the test at `0x0d970a98`); the format and texel depth play no part. Its only callers, `__glcrmim_TexImage1D`, `__glcrmim_TexImage2D`, `__glcrmlei_TexImage1D`, `__glcrmlei_TexImage2D`, `__glcrmim_CopyTexImage1DEXT` and `__glcrmim_CopyTexImage2DEXT`, all store zero in that word. So every texture level the shipped library creates is subtiled, 16-bit and 32-bit alike, unless the user sets `GLCRMTEXUSEONCE`.
- Established (span converters present in `crm_texture.s`): the CPU repacks source pixels into the stored layouts with `crmSpan_A16_to_A8`, `crmSpan_XA8_to_A8`, `crmSpan_RGB5_A1_to_A1_RGB5`, `crmSpan_A1_RGB5_to_RGB5_A1`, `crmSpan_RGB5_to_RGB5_A1`, `crmSpan_RGB8_to_RGBA8`, `crmSpan_RGBX8_to_RGBA8`, `crmSpan_RGBA8_to_A1_RGB5` and `crmSpan_RGBA8_to_RGBA4`, then `crmSubtileSpan` or `crmTileSpan` writes the rows. Established by name: stored 5-5-5-1 texels are held with the alpha bit in the low or high position (`A1_RGB5` against `RGB5_A1`); which one the hardware reads is not stated by the converter names alone. Established from the download converters' arithmetic (`crmSpan_RGBA8_to_RGBA4` `0x0d972bc0..0x0d972ea8`, `crmSpan_RGBA8_to_A1_RGB5` `0x0d9728a0..0x0d972bb8`, `crmSpan_RGB5_A1_to_A1_RGB5` `0x0d971eb0..0x0d972088`): from RGBA bytes the RGBA4 texel is `R[7:4] << 12 | G[7:4] << 8 | B[7:4] << 4 | A[7:4]`, and the 5-5-5-1 texel is stored with alpha in bit 15: `A[7] << 15 | R[7:3] << 10 | G[7:3] << 5 | B[7:3]`; a GL `GL_RGB5_A1` source (alpha in bit 0) is rotated right by one bit to reach that order. Inferred: the engine reads 16-bit texels in this order, since the driver writes nothing else.

## Constant rendering words and the texture range register (pass 7)

Constant stores the inventory found without a documented meaning, decoded with the specification's field tables ([spec] PDF 171-174, tables 7-4 and the DrawMode table) and the bit names in `CRIME_RE.h`. Established as stores; the reading of each is given with it.

- `0x2000` (BufMode.src) = `0x1228` in `__glCrmUpdatePolyStipple` (o32 build): buffer type 4 (linear TLB A), buffer depth 2 (32-bit words), pixel type 2 (RGBA), pixel depth 2 (32-bit). The polygon stipple pattern is read from host memory through linear TLB A as 32-bit pixels.
- `0x2018` (DrawMode) = `0x600040` in the same routine: GL mode (bit 22), pixel transfer (bit 21) and byte-mask bit 6, which enables byte 3 of the 32-bit pixel only. With the source above, the stipple upload is a transfer that writes the top byte of each destination pixel, the stencil byte (inferred from the byte-mask rule in `CRIME_RE.h`: byte 3 is stencil).
- `0x2018` (DrawMode) = `0x400007` in `__glCrmEnableDepthTest` (o32 build): GL mode with depth test (bit 2), depth write mask (bit 1) and stencil test (bit 0) and no colour writes; a depth-and-stencil-only drawing mode.
- `0x20f0`, `0x20f8`, `0x2100`, `0x2108` (Shade.drdx, drdy, dbdx, dbdy) = `0x0` in `__glCrmAntiAliasLineRGB`, and `0x2104`, `0x210c` (Shade.dadx, dady) = `0x0` in `__glCrmSmoothCILine`: those colour slopes are zeroed for the line, so the components they step stay at their start values.
- `0x2180`, `0x2188` (Fog.dfdx, dfdy) = `0x0` and `0x21d0`, `0x21d8` (Depth.dzdx, dzdy) = `0x0` in `__glCrmAntiAliasLineRGB`: fog and depth are constant along an antialiased line as libGLcore sends it.
- `0x21e8` (Stencil.mask) = `0x0` in `__glCrmInitStencil`: stencil writes masked off at initialisation.
- `0x21f0` (PixPipeNull) = `0x0` through the start alias in `__glCrmFlatTriangle`: a commit that changes no state, used when the last parameter written does not itself go through the alias.
- `0x2158`, `0x215c` (Texture.dqdx, Texture.dqdy) = `0x0` in the textured point routine (N32 `RenderPointTextured`, `crm_point.s`; the inventory attributes the o32 build's stores to `__glCrmVertexPointFast`, whose bounds there differ): written together with `0x2138` to `0x2150` (the four s and t slopes, as 64-bit stores of zero) when the point is textured. A point has no gradient, so every texture-coordinate slope is zero and the point takes the start values written for its vertex.
- `0x2178` (Fog.Fs) = `0xff000` and `0x2180` (Fog.dfdx) = `0x0` in `__glCrmRenderCheapFogLine`: the line routine first calls the per-vertex colour blend of gc+12532 for both end points and redirects the vertices' colour pointers to the blended results (the same "cheap fog" idea as `__glCrmFillCheapFogTriangle`, which clears DrawMode bit 14), then writes a constant fog start of 255.0 in the 8.12 form described under Fog (`0xff000` = 255 << 12) and a zero gradient before drawing the line through the saved base routine at gc+12476. Unlike the triangle wrapper it does not touch DrawMode. Inferred: with a start value of 255 and no slope the hardware factor is 1.0 along the whole line, which for the GL fog factor (1 = unfogged) leaves the already-blended colour as it is; the polarity of the hardware blend is not established (the Unknown item under Fog).

`+0x2134`, between Texture.Qs (`+0x2130`) and Texture.dsqdx (`+0x2138`), is not in the specification's table, which skips from `0x130` to `0x138`. Established (`__glCrmFillTriangle`, N32 `crm_astextri.s` lines 960-1135): libGLcore computes two flags per textured triangle, one for s and one for t, each set by a range test on that coordinate's vertex values (comparisons against 7.0, and against 15.0 on the `GL_REPEAT` (`0x2901`) path after subtracting the floor of the minimum; the exact bounds per wrap mode were not traced); it writes `s_flag | t_flag << 1` to `+0x2134`, and scales the start and slope values of a flagged coordinate by 2^39 instead of 2^43 (the float constants `0x53000000` and `0x55000000`). Inferred: bit 0 and bit 1 tell the engine that the s or t steppers carry four fewer fraction bits, extending their range sixteen-fold. The register is a texture-coordinate shift control; the engine's use of it beyond that is unknown: no shipped software or published source depends on more.
