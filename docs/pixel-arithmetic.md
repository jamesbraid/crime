# Pixel arithmetic: depth, blending and texel filtering

The arithmetic an emulator needs for the depth stepper and test, the blender and the texel filter of the CRIME rendering engine: bit widths, rounding and the order of operations. Register offsets and field layouts are in [CRIME_RE.h](../CRIME_RE.h).

Labels: **established** (read from the cited source or code), **inferred** (reasoned, with the reasoning), **unknown**. Sources:

- [spec]: the CRIME 1.5 Specification, revision 0.3 (PDF page numbers).
- [hdr]They declare each pixel-pipe register as a bit-field structure; the field names are cited, the layout restated in our own words.
- [gl]: IRIX 6.5.30 N32 `libGLcore` (`usr/gfx/arch/IP32CRM32`), by unit under `libglcore/asm/` and function. The software rasteriser units under `libglcore/asm/soft/` are the generic OpenGL fallback; they show the formula the library computes when it draws without the engine, not the engine's arithmetic.
- [ide]: the IP32 stand-alone diagnostics, 6.5.30 `stand/ide.IP32` (binary).

## Depth

### Vertex position (the 13.6 field)

- Established ([gl] `crm_astri`, `crm_context`): the library adds a bias of 135168.0 (`0x21000`, that is 4096 plus 0x20000) to every window x and y in single precision, so each value lies in [131072, 262144) where one unit in the last place is 1/64. The bias is part of the viewport centre, so the add happens in the viewport transform itself.
- Established ([gl], no `ctc1` anywhere in the extracted `libGLcore`): the library never changes the FPU rounding mode, so the process default applies. IRIX starts processes in round-to-nearest-even (inferred from the absence of any other setting; not read from the kernel).
- So each vertex coordinate written to Vertex.GL is the window coordinate rounded to the nearest 1/64, ties to even (inferred, from the two facts above). The engine reads bits 18:0 of the stored word as an unsigned 13.6 value holding `coordinate + 4096` (inferred strongly; see the Vertex.GL note in `CRIME_RE.h`).

### Window z and the Zs, dz/dx, dz/dy words

- Established ([gl] `soft/so_xform` `SetDepthRange`, `crm_context`): window z is `scale * z_ndc + centre`, computed in single precision, with `scale = 0.5 * (far - near) * M` and `centre = 0.5 * (near + far) * M`, where `M` is the depth maximum `0x3fffffff` the CRIME context stores. Window z therefore spans 0 to 2^30 - 1.
- Established ([gl] `crm_astri` `__glCrmFlatZTriangle`, `__glCrmSmoothCIZTriangle`, `__glCrmSmoothRGBZTriangle`, `__glCrmSmoothRGBAZTriangle`): the set-up computes the plane slopes A and B in single precision from the three vertices ([spec] PDF 199, equations 7 to 9), evaluates the start value at the integer pixel corner `(Xs, Ys)` found by clearing the low six bits of the start vertex's 13.6 words, as `Zs = z + A * (Xs - x) + B * (Ys - y)` (two multiply-adds, in that order), multiplies Zs, A and B by 64.0 and converts each to a 64-bit integer by truncation toward zero (`trunc.l.s`). Zs goes to `+0x21c8`, dz/dx to `+0x21d0`, dz/dy to `+0x21d8`.
- Established ([spec] PDF 212-213): the engine steps depth with a 25.12 two's complement stepper, `z(Xs + m, Ys + n) = Zs + m * dz/dx + n * dz/dy` ([spec] PDF 198-200, equation 6). The fragment's 24-bit depth is the stepper value with its 12 fraction bits truncated, then clamped to [0, 2^24). The specification tells the host to add 0.5 to Zs to get rounded rather than truncated depths.
- Established ([gl], same four routines): the 6.5.30 driver does not add that half unit. Zs, dz/dx and dz/dy are stored straight from the truncating conversion. A model must truncate, not round, to match the depths IRIX produces.
- Units, by construction: window z times 64 is 2^36 at the top of the range, so the register value is the 24-bit depth-buffer value (window z / 64) with 12 fraction bits, which is exactly the specification's 25.12 (inferred, from the agreement of the two scales; the clear value below uses the same units).
- Precision (established arithmetic): window z is a single-precision float, which carries 24 significant bits. For depth-buffer values of 2^12 and above, the float has fewer than 12 fraction bits left, so the low fraction bits of Zs are zero; at the top of the range the float's resolution is one depth-buffer unit. The slopes are rounded to single precision before scaling.
- Stepper width and the upper bits (inferred): the driver writes full 64-bit words, but every value it can produce fits in 37 bits (sign plus 24 integer plus 12 fraction). Whether silicon keeps more than 37 bits is unknown: no shipped software or published source depends on it.
- Where the stepper samples (inferred): Zs is the plane's value at the integer corner below and to the left of the start vertex, and the stepper moves in whole-pixel steps from there, so the depth of pixel (x, y) is the plane evaluated at the integer point (x, y), not at x + 0.5, y + 0.5. No source states whether the engine adds a half-pixel step before the first fragment; the driver supplies no half-slope term, which suggests it does not.

### Clamping (established, [spec] PDF 212)

After truncation the integer part is clamped to [0, 2^24): negative results become 0 and results of 2^24 or more become 2^24 - 1. The specification states the range but not the mechanism; for colour it describes a test of the top two bits of a 9-bit result ([spec] PDF 200-201), and whether depth uses an equivalent top-bits test (which would wrap results more than 2^24 out of range) is unknown: no shipped software or published source depends on it, because the driver's planes stay inside the clip volume.

### The depth buffer and the test

- Established ([gl] `crm_pixel`, see `docs/pixel-transfer.md`): depth sits in bytes 2:0 of the 32-bit depth/stencil pixel and stencil in byte 3.
- Established ([spec] PDF 213, table 7-25): the test compares the fragment depth zs with the stored zd using the function in Depth.func bits 27:25 (NEVER, LESS, EQUAL, LEQUAL, GREATER, NOTEQUAL, GEQUAL, ALWAYS, codes 0 to 7). Both operands are 24-bit values in [0, 2^24) after clamping, so the comparison is an unsigned 24-bit compare (inferred, by construction).
- Established ([hdr] `CrmDepthMode`): Depth.func is laid out as 4 reserved bits (31:28), `func` (27:25), `enTagClear` (24) and `clear` (23:0). The driver sets bit 24 only when depth testing is on and the drawable has no depth buffer, the stencil-only case already recorded in `CRIME_RE.h` ([gl] `crm_depth` `__glCrmPassDepthFunc`). The header's name says bit 24 enables a "tag clear"; what the engine does with it is unknown: no shipped software or published source depends on more than the driver's one use.
- Established ([gl] `__glCrmPassDepthFunc`): the clear value in bits 23:0 is `(int)(M * clear_depth) >> 6` in double precision with truncation, masked to 24 bits, so `glClearDepth(1.0)` gives `0xffffff`. It uses the same units as the Zs integer part.

## Blending

- Established ([spec] PDF 208-210, equation 12): with DrawMode bit 10 set, each of R, G, B and A becomes `Cs * S op Cd * D`, where op is Blend.func bits 11:8 (ADD 0, MIN 1, MAX 2, SUBTRACT 3, REVERSE_SUBTRACT 4) and MIN and MAX ignore the factors. The factor codes (Blend.func bits 7:4 source, 3:0 destination) are the specification's tables; [hdr] `crimedef.h` lists the same values, with SRC_ALPHA_SATURATE as source code 12. Blending applies to RGB(A) pixels only, after the antialiasing coverage stage and before dithering and the logic op ([spec] PDF 208-210).
- Established ([gl] `crm_attrib` `__glCrmPassBlendFunc`; see `CRIME_RE.h`): on a drawable without alpha bits the driver rewrites DST_ALPHA to ONE and ONE_MINUS_DST_ALPHA and SRC_ALPHA_SATURATE to ZERO, so the engine never reads a missing destination alpha.
- The operands (established): the source colour reaching the blender is 8 bits per component. Flat colours are truncated from the float colour by the driver; smooth colours come from 9.12 steppers whose fraction is truncated and whose 9-bit integer is clamped to [0, 255] ([spec] PDF 200-201). The triangle set-up adds no half unit to the colour starts either ([gl] `crm_astri`: each start is stored as `trunc(c * 4096)` with no add after the conversion), so a smooth colour is truncated unless the vertex colour already carries a bias, which no routine read here adds. Destination components are the 8-bit fields of the stored pixel.
- The intended formula (established for the software path only): the generic software blender ([gl] `soft/so_blend`, `__glDoBlend_SA_MSA`, `__glDoBlendSourceSA`, `__glBlendSpan_SA_MSA`) works on single-precision floats: it scales alpha by the reciprocal of the alpha range (gc+30812), forms the factors in float, and computes `Cs * f + Cd * (1 - f)` (for the SRC_ALPHA, ONE_MINUS_SRC_ALPHA pair) as a multiply-add; conversion to the stored integer happens later in the span store. This is the OpenGL formula, not the engine's.
- Unknown: no shipped software or published source depends on it: how the engine multiplies an 8-bit component by an 8-bit factor (whether a factor of 255 means exactly 1.0, the width of the product and the rounding of the result), and whether ADD and SUBTRACT saturate or wrap. The only factor conversion the specification states for this engine is fog's: an 8-bit factor above 128 is incremented by one, so that 255 becomes 256 and the 1.8 product with 256 returns the colour unchanged ([spec] PDF 206). Whether the blender uses the same rule is unknown; it is the rule a model would most plausibly reuse (inferred, weakly, from the shared design). Saturating ADD and SUBTRACT to [0, 255] is what OpenGL requires and what the software path does through its clamped store; the specification is silent.

Routes tried for the blend arithmetic: the specification (equation 12 and the factor tables only; its dithering section is "TBD"); [hdr] (field layout and codes, no arithmetic); [ide] (the 6.5.30 `ide.IP32` strings: the visual tests draw flat points, lines and rectangles and compare a CRC of the frame buffer; none enables blending, depth, fog or texture); [gl] hardware set-up (selects codes only) and software path (float OpenGL formula); Linux `gbefb`, NetBSD `crmfb`, MAME `crime.cpp` and GXemul `dev_sgi_re.c` (none models the pixel pipe's blender, depth or texture stages). Not read: the O2 libraries of IRIX 6.3; they cannot change the answer, because the blend is computed in the engine after the driver has selected codes.

## Texel filtering

### Coordinates reaching the filter

- Established ([spec] PDF 203-204, figure 7-15 and table 7-17): the engine steps s/w, t/w and 1/w as 36.12, 36.12 and 18.12 values, divides, maps (s, t) to (u, v), computes a level of detail, looks texels up and filters them.
- Established ([gl] `crm_astextri` `__glCrmFillTriangle`): the driver scales s/w and t/w by 2^43 (or 2^39 for a coordinate flagged in `+0x2134`) and 1/w by 2^29, truncates each start and slope toward zero, and then adds 2048 to each of the three starts (`+0x2120` sq, `+0x2128` tq, `+0x2130` q) but not to the slopes. 2048 is one half in the steppers' 12-bit fraction, so the driver applies the specification's half-unit rule to the texture steppers, and the engine's truncation of their fractions then rounds to nearest. It does not do so for depth or colour (above).
- Established ([hdr] `CrmTextureReg`): the 32-bit word at `+0x2134` is named `stShift`, which agrees with the reading in `docs/opengl.md` that its two bits select a four-bit shift of the s and t steppers.
- Inferred ([gl] scales, as in `CRIME_RE.h`): after the divide a texture coordinate of 1.0 is 2^14. Texture.format shifts it right by `10 - log2(size)` (the `uShift` and `vShift` fields, so named in [hdr]), leaving a texel coordinate with 4 fraction bits, and the index masks keep `log2(size) + 4` bits, which implements GL_REPEAT by masking. The maximum size is therefore 1024 texels per side, which [hdr] `crimedef.h` states as a maximum level of detail of 10 and [spec] PDF 202 as 1k by 1k.
- Established ([gl] `__glCrmFillTriangle`): the driver applies no half-texel offset to s or t for linear filtering; no constant 0.5 enters the set-up.

### Level of detail

- Established ([spec] PDF 204, figure 7-16): the engine takes the four differences of u and v between a fragment and its right and upper neighbours and computes `rho = max(du/dx, dv/dx, du/dy, dv/dy)` and `LOD = log2(rho)` (the magnitudes are implied, inferred). This is not the generic software formula: [gl] `soft/so_texture` `__glComputePolygonRho` sums squared u and v derivatives per axis before taking the larger, the OpenGL length form.
- Unknown: no shipped software or published source depends on it: the precision of the LOD (integer only or with a fraction), how the fraction weights the two levels in the MIPMAP_LINEAR modes, and the magnification-to-minification switch point. The specification's sections on texel look-up and on minification and magnification filtering are "TBD" ([spec] PDF 205).

### Filter weights

- Established ([spec] PDF 202, [hdr] `crimedef.h`): the filter codes are NEAREST 0, LINEAR 1, NEAREST_MIPMAP_NEAREST 2, LINEAR_MIPMAP_NEAREST 3, NEAREST_MIPMAP_LINEAR 4, LINEAR_MIPMAP_LINEAR 5 (Texture.mode bits 9:7), with magnification NEAREST or LINEAR in bit 6.
- Inferred (from the 4 fraction bits above): a bilinear weight has at most 4 bits, sixteen steps per texel.
- The intended formula (established for the software path only): [gl] `soft/so_texture` `__glLinearFilter2` computes `u = s * width - 0.5` (after clamping s for the clamp modes), `i0 = floor(u)`, `i1 = i0 + 1`, `a = frac(u)`, likewise `b` for v, fetches the four texels as floats and returns `(1-a)(1-b) t00 + a(1-b) t10 + (1-a) b t01 + a b t11` in single precision, with no quantisation of the weights. `__glLMLFilter` filters both levels and blends them as `(1 - f) * level_a + f * level_b`, where f is the fraction of the level of detail (`__glFrac`), again in float.
- Unknown: no shipped software or published source depends on it: whether the engine applies the half-texel offset itself (the driver does not, so a conformant engine must), how the 4-bit weights are formed (truncation of the coordinate fraction is the plain reading), the order and width of the products and the rounding of the filtered 8-bit components, and the arithmetic of texture application (MODULATE, DECAL, BLEND, REPLACE; [spec] PDF 205 names them only).

Routes tried for the filter: as for blending, plus the generic software texture unit and the format and mode headers. A model that truncates the 4-bit fractions, weights the four texels with products of those fractions and truncates the result is consistent with every established field, but it is a choice, not a finding.
