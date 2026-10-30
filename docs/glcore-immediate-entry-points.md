# libGLcore immediate-mode entry points

How the O2 OpenGL library takes a colour, normal, colour index, texture coordinate or vertex handed to it one call at a time, and how it replays the recorded display-list forms of the vector-state calls. Both builds are covered: the N32 library (`usr/gfx/arch/IP32CRM32/libGLcore.so`) and the o32 library (`usr/gfx/arch/IP32CRM/libGLcore.so`). Every entry below was written from the routine's own disassembly, N32 first, then o32. Public OpenGL names and the public sample implementation say what each call is for; the offsets are this library's own.

## Context layout these routines use

Established from the disassembly of the routines below. Every entry point loads the current-context pointer from the fixed absolute address 0x1010 (a load from register zero plus 4112), so there is no context argument. The words it touches in that context are:

| Context offset | Used as |
|---|---|
| 0xd0, 0xd4, 0xd8 | current normal x, y, z (floats) |
| 0xe0, 0xe4, 0xe8, 0xec | current texture coordinate s, t, r, q (floats) |
| 0x1b0, 0x1b4, 0x1b8, 0x1bc | current colour red, green, blue, alpha (floats) |
| 0x1c0 | current colour index (float) |
| 0xdd8 | float constant read as the default alpha and the default q; inferred to be 1.0 from that use |
| 0xde0, 0xde8, 0xdf0 | float scale for signed or unsigned byte, short and int colour components |
| 0xef0 | 256-entry float table indexed by an unsigned byte |
| 0x17b8 | pointer to the vertex dispatch table; entries at +0x534, +0x554 and +0x574 take a pointer to two, three or four floats |
| 0x2ee0 | hook that every colour entry point calls after storing, with the context in a0 |

The display-list replay routines (`__glle_*`) use a second fixed table instead: they load their target from an absolute address between 0x107c and 0x1550 (a load from register zero plus the slot offset), which is the library's table of immediate-mode entry points.

## Colour entry points, N32 build

Constants in the N32 integer forms come from the library's read-only data: for the signed int forms the multiply-add uses the pair 1.0 and 2.0, so each component becomes (2x+1) times the int scale.

- `__glim_Color3b` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  takes three signed bytes in a0, a1 and a2 and turns each into a float colour component by doubling, adding one, converting and multiplying by the byte scale at context offset 0xde0.
  It stores red, green and blue at 0x1b0, 0x1b4 and 0x1b8, takes alpha from the word at 0xdd8, and calls the hook at 0x2ee0.
  The body is 36 instructions at 0xd9c8780 with a 16-byte frame.
  Established.
- `__glim_Color3bv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  the pointer form; it loads the three signed bytes through a0 at offsets 0, 1 and 2 with sign-extending byte loads and applies the same double, add one, convert and byte-scale step, one component at a time and storing as it goes.
  Alpha again comes from 0xdd8, and the hook at 0x2ee0 is called last.
  The body is 38 instructions at 0xd9c8810.
  Established.
- `__glim_Color3ub` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  converts three unsigned bytes without arithmetic, by indexing the 256-entry float table at context offset 0xef0 with each byte times four.
  The three looked-up floats go to 0x1b0, 0x1b4 and 0x1b8, alpha comes from 0xdd8, and the hook at 0x2ee0 follows.
  The body is 28 instructions at 0xd9c8690, the shortest of the three-component colour routines of this build, with a 16-byte frame.
  Established.
- `__glim_Color3ubv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  loads each of three unsigned bytes through a0 at offsets 0, 1 and 2 with zero-extending loads and replaces each with its entry in the float table at 0xef0 of the context.
  The table lookup means no scale is applied.
  It stores at 0x1b0, 0x1b4 and 0x1b8, sets alpha from 0xdd8 and calls the hook at 0x2ee0.
  The body is 32 instructions at 0xd9c8700.
  Established.
- `__glim_Color3s` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  takes three signed shorts in a0, a1 and a2 and maps each to a float with the same double, add one and scale as the byte form, but with the short scale held at context offset 0xde8.
  Red, green and blue go to 0x1b0, 0x1b4 and 0x1b8 and alpha is copied from 0xdd8 before the hook at 0x2ee0 is called.
  The body is 36 instructions at 0xd9c8be0.
  Established.
- `__glim_Color3sv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  reads signed halfwords through a0 at byte offsets 0, 2 and 4, doubles, adds one, converts and multiplies each by the short scale at 0xde8, storing red, green and blue in turn before copying alpha from 0xdd8 and calling the hook at 0x2ee0.
  It is 38 instructions at 0xd9c8c70, the pointer twin of the by-value short routine.
  Established.
- `__glim_Color3us` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  takes three unsigned shorts in registers; because the calling convention already zero-extends them it moves each straight into the floating-point unit, converts and multiplies by the short scale at 0xde8, with no doubling or increment.
  It stores at 0x1b0, 0x1b4 and 0x1b8, copies alpha from 0xdd8 and calls the hook at 0x2ee0.
  The body is 29 instructions at 0xd9c8d10, shorter than the signed short routine for lack of the double-and-add.
  Established.
- `__glim_Color3usv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  loads three zero-extended halfwords through a0 at offsets 0, 2 and 4, converts each and multiplies it by the short scale at 0xde8; there is no double-and-add because the value is unsigned.
  It stores the three components at 0x1b0 to 0x1b8, sets alpha from 0xdd8 and calls the hook at 0x2ee0.
  The body is 32 instructions at 0xd9c8d90.
  Established.
- `__glim_Color3i` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  takes three signed ints in registers and converts each to float, then forms one plus two times the value with a multiply-add against the constants 1.0 and 2.0 fetched through the global pointer, and multiplies by the int scale held at context offset 0xdf0.
  Results go to 0x1b0, 0x1b4 and 0x1b8, alpha comes from 0xdd8, and the hook at 0x2ee0 is called.
  The body is 34 instructions at 0xd9c8980.
  Established.
- `__glim_Color3iv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  loads three words through a0 at offsets 0, 4 and 8, converts each to float, applies the multiply-add of two times the value plus one and then the int scale at 0xdf0, storing each result as it is made.
  Alpha is read from 0xdd8 and the hook at 0x2ee0 is called.
  The body is 37 instructions at 0xd9c8a10.
  Established.
- `__glim_Color3ui` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  takes three unsigned ints; because a 32-bit unsigned value does not fit the signed word conversion, each argument is cleared in its upper half with a left and a right 32-bit shift, moved as a 64-bit integer and converted from a long, then multiplied by the int scale at 0xdf0.
  Results are stored at 0x1b0, 0x1b4 and 0x1b8, alpha from 0xdd8, and the hook at 0x2ee0 follows.
  The body is 36 instructions at 0xd9c8ab0.
  Established.
- `__glim_Color3uiv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  reads three words through a0 at offsets 0, 4 and 8 and clears the upper half of each in a 64-bit register before converting from a long and multiplying by the int scale at 0xdf0.
  It stores red, green and blue, takes alpha from 0xdd8 and calls the hook at 0x2ee0.
  The body is 38 instructions at 0xd9c8b40.
  Established.
- `__glim_Color3d` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  takes three doubles in the floating-point argument registers $f12, $f13 and $f14 and narrows each to single precision; there is no scaling, because a float or double colour is already in range.
  It stores at 0x1b0, 0x1b4 and 0x1b8, loads alpha from 0xdd8 and calls the hook at 0x2ee0 with the context in a0.
  The body is 22 instructions at 0xd9c88b0, the shortest colour routine with a hook call in this build.
  Established.
- `__glim_Color3dv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  loads three doubles through a0 at offsets 0, 8 and 16 and narrows each to float with no scale, storing at 0x1b0, 0x1b4 and 0x1b8.
  Alpha comes from the word at 0xdd8 and the hook at 0x2ee0 is called.
  The body is 25 instructions at 0xd9c8910.
  Established.
- `__glim_Color4b` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  takes four signed bytes in a0 to a3 and scales all four, alpha included, by doubling, adding one, converting and multiplying with the byte scale at context offset 0xde0.
  The stores go out alpha first, 0x1bc, then 0x1b8, 0x1b4 and 0x1b0, and the hook at 0x2ee0 is called with no default alpha read.
  The body is 40 instructions at 0xd9c8f20 with a 16-byte frame.
  Established.
- `__glim_Color4bv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  loads four sign-extended bytes through a0 at offsets 0, 1, 2 and 3 and runs each through double, add one, convert and byte scale, storing red, green, blue and alpha in ascending order at 0x1b0, 0x1b4, 0x1b8 and 0x1bc.
  It then calls the hook at 0x2ee0.
  The body is 44 instructions at 0xd9c8fc0, the longest signed-byte colour routine of this build.
  Established.
- `__glim_Color4ub` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  looks all four unsigned bytes up in the float table at context offset 0xef0 and stores the floats, alpha too, at 0x1b0, 0x1b4, 0x1b8 and 0x1bc before calling the hook at 0x2ee0.
  Because alpha is an argument it reads no default from 0xdd8.
  The body is 30 instructions at 0xd9c8e10.
  Established.
- `__glim_Color4ubv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  reads four unsigned bytes through a0 at offsets 0 to 3, looks each up in the float table at 0xef0 and stores them in order at 0x1b0 to 0x1bc, then calls the hook at 0x2ee0.
  The body is 34 instructions at 0xd9c8e90, four more than the by-value routine for the byte loads.
  Established.
- `__glim_Color4s` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  takes four signed shorts in registers and applies double, add one, convert and the short scale at context offset 0xde8 to each, alpha included, storing alpha at 0x1bc first and red at 0x1b0 last.
  The hook at 0x2ee0 is called afterwards.
  The body is 40 instructions at 0xd9c93e0.
  Established.
- `__glim_Color4sv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  reads signed halfwords through a0 at offsets 0, 2, 4 and 6 and converts each with double, add one and the short scale at 0xde8, storing the four results in ascending order at 0x1b0 to 0x1bc before calling the hook at 0x2ee0.
  The body is 44 instructions at 0xd9c9480.
  Established.
- `__glim_Color4us` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  moves four zero-extended unsigned shorts directly to the floating-point unit, converts and multiplies by the short scale at 0xde8, with no doubling; all four results, alpha included, are stored and the hook at 0x2ee0 is called.
  The body is 32 instructions at 0xd9c9530.
  Established.
- `__glim_Color4usv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  loads four zero-extended halfwords through a0 at offsets 0, 2, 4 and 6, converts each and multiplies by the short scale at 0xde8, storing at 0x1b0 to 0x1bc in order and then calling the hook at 0x2ee0.
  The body is 36 instructions at 0xd9c95b0.
  Established.
- `__glim_Color4i` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  converts four signed ints from registers, forms two times the value plus one with a multiply-add against the constants 2.0 and 1.0 held in read-only data, and multiplies by the int scale at context offset 0xdf0; alpha is converted the same way rather than defaulted.
  The hook at 0x2ee0 is called after the four stores.
  The body is 37 instructions at 0xd9c9140.
  Established.
- `__glim_Color4iv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  loads four words through a0 at offsets 0, 4, 8 and 12, converts each to float, applies the multiply-add of two times the value plus one and the int scale at 0xdf0, and stores red to alpha in ascending order at 0x1b0 to 0x1bc.
  It then calls the hook at 0x2ee0.
  The body is 41 instructions at 0xd9c91e0.
  Established.
- `__glim_Color4ui` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  takes four unsigned ints, zero-extends each into a 64-bit register with a pair of 32-bit shifts, converts from a long and multiplies by the int scale at 0xdf0, writing alpha first at 0x1bc and red last at 0x1b0 before the hook at 0x2ee0.
  The body is 40 instructions at 0xd9c9290.
  Established.
- `__glim_Color4uiv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  loads four words through a0 at offsets 0, 4, 8 and 12, clears the upper half of each as a 64-bit value, converts from a long and multiplies by the int scale at 0xdf0, storing in ascending order from 0x1b0 to 0x1bc and then calling the hook at 0x2ee0.
  The body is 44 instructions at 0xd9c9330, the longest colour routine of this build.
  Established.
- `__glim_Color4d` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  takes four doubles in the floating-point argument registers $f12 to $f15 and narrows each to float with no scaling, storing alpha at 0x1bc through red at 0x1b0 and then calling the hook at 0x2ee0.
  The body is 22 instructions at 0xd9c9070, as short as the three-component double routine because alpha is passed rather than defaulted.
  Established.
- `__glim_Color4dv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  loads four doubles through a0 at offsets 0, 8, 16 and 24, narrows each to single precision and stores them at 0x1b0, 0x1b4, 0x1b8 and 0x1bc without scaling, then calls the hook at 0x2ee0.
  The body is 26 instructions at 0xd9c90d0.
  Established.

## Colour entry points, o32 build

The o32 routines do the same conversions as the N32 ones but differ in how the compiler arranged them: the context pointer is kept in a0 itself (so the hook call at context offset 0x2ee0 needs no move), each routine saves the return address and global pointer in a 32-byte frame, narrow integer arguments are extended with shifts or masks rather than arriving extended, and unsigned ints are converted as signed and corrected by adding 2^32 (the constant 0x4f800000) when the sign bit is set. The signed int forms rebuild the constants 2.0 and 1.0 with immediate loads instead of reading them from data.

- `__glim_Color3b` in usr/gfx/arch/IP32CRM/libGLcore.so:
  sign-extends each of the three byte arguments with a shift left and an arithmetic shift right by 24, spills a0, a1 and a2 to the stack, then doubles, adds one, converts and multiplies by the byte scale at context offset 0xde0.
  Red, green and blue go to 0x1b0, 0x1b4 and 0x1b8, alpha from 0xdd8 goes to 0x1bc, and the hook at 0x2ee0 is called.
  The body is 43 instructions at 0xd9ca240 with a 32-byte frame.
  Established.
- `__glim_Color3bv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  copies a0 to a1, loads the context pointer into a0, and reads three bytes through a1 at offsets 0, 1 and 2, each followed by double, add one, convert and the byte scale at 0xde0; the hook address is loaded between the second and third component.
  Stores land at 0x1b0, 0x1b4 and 0x1b8, alpha from 0xdd8 at 0x1bc.
  The body is 42 instructions at 0xd9ca2ec.
  Established.
- `__glim_Color3ub` in usr/gfx/arch/IP32CRM/libGLcore.so:
  masks each argument with 0xff and looks it up in the float table at context offset 0xef0 by four times the byte; a0, a1 and a2 are first spilled to the stack.
  The three floats go to 0x1b0, 0x1b4 and 0x1b8, alpha from 0xdd8 to 0x1bc, and the hook at 0x2ee0 is called.
  The body is 33 instructions at 0xd9ca140.
  Established.
- `__glim_Color3ubv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  reads three unsigned bytes through a1 (a copy of a0) at offsets 0, 1 and 2 and indexes the table at 0xef0 of the context with each, so no arithmetic is done on the components.
  Alpha is read first from 0xdd8 and stored last, and the hook at 0x2ee0 follows.
  The body is 31 instructions at 0xd9ca1c4, the shortest three-component colour routine of the o32 build.
  Established.
- `__glim_Color3s` in usr/gfx/arch/IP32CRM/libGLcore.so:
  sign-extends the three short arguments with shifts, then doubles, adds one, converts and multiplies by the short scale at context offset 0xde8, storing at 0x1b0, 0x1b4 and 0x1b8, alpha from 0xdd8 at 0x1bc, before calling the hook at 0x2ee0.
  Its three arguments are spilled to the stack first.
  The body is 43 instructions at 0xd9ca700.
  Established.
- `__glim_Color3sv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads signed halfwords through a1 at offsets 0, 2 and 4 and gives each the double, add one and short scale at 0xde8; the stores at 0x1b0, 0x1b4 and 0x1b8 are interleaved with the hook-address and alpha loads.
  Alpha is copied from 0xdd8 and the hook at 0x2ee0 is called.
  The body is 42 instructions at 0xd9ca7ac.
  Established.
- `__glim_Color3us` in usr/gfx/arch/IP32CRM/libGLcore.so:
  masks each short argument with 0xffff, converts it as a signed word, and, because the compiler does not know the masked value is non-negative, still tests the sign and adds 2^32 when it is set (a branch that cannot be taken here); it then multiplies by the short scale at 0xde8.
  Stores go to 0x1b0 to 0x1b8, alpha from 0xdd8 to 0x1bc, then the hook at 0x2ee0.
  The body is 49 instructions at 0xd9ca854.
  Established.
- `__glim_Color3usv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  reads three zero-extended halfwords through a1 at offsets 0, 2 and 4 and converts each as a signed word, adding 2^32 on a sign test that can never fire for a halfword, before multiplying by the short scale at 0xde8.
  It stores three components, alpha from 0xdd8, and calls the hook at 0x2ee0.
  The body is 47 instructions at 0xd9ca918.
  Established.
- `__glim_Color3i` in usr/gfx/arch/IP32CRM/libGLcore.so:
  takes the first int in a3 (a copy of a0) and the others in a1 and a2, converts each to float, builds the constants 2.0 and 1.0 with immediate loads of 0x40000000 and 0x3f800000 and forms one plus two times the value with a multiply-add, then multiplies by the int scale at 0xdf0.
  The three results go to 0x1b0, 0x1b4 and 0x1b8, alpha from 0xdd8, and the hook at 0x2ee0 is called.
  The body is 38 instructions at 0xd9ca454.
  Established.
- `__glim_Color3iv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  reads three words through a1 at offsets 0, 4 and 8, converts each and applies the multiply-add of two times the value plus one with the constants built by immediate loads, then the int scale at 0xdf0.
  The hook address is loaded early; the alpha load from 0xdd8 sits between the second and third component.
  The body is 41 instructions at 0xd9ca4ec.
  Established.
- `__glim_Color3ui` in usr/gfx/arch/IP32CRM/libGLcore.so:
  converts three unsigned ints as signed words and, for each, tests the sign and adds 2^32 (0x4f800000 as a float) when it is set, then multiplies by the int scale at 0xdf0.
  Stores at 0x1b0, 0x1b4 and 0x1b8, alpha from 0xdd8 at 0x1bc, and the hook at 0x2ee0 follow.
  The body is 45 instructions at 0xd9ca590.
  Established.
- `__glim_Color3uiv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads three words through a1 at offsets 0, 4 and 8, converts each as signed with a sign test that adds 2^32 for large values, and scales by the int scale at 0xdf0 before storing at 0x1b0, 0x1b4 and 0x1b8.
  Alpha is copied from 0xdd8 and the hook at 0x2ee0 is called.
  The body is 47 instructions at 0xd9ca644.
  Established.
- `__glim_Color3d` in usr/gfx/arch/IP32CRM/libGLcore.so:
  narrows the first two doubles, which arrive in $f12 and $f14, and reads the third from the caller's stack at offset 48 of its own frame, since the o32 convention passes only two doubles in registers.
  It stores at 0x1b0, 0x1b4 and 0x1b8, loads alpha from 0xdd8 and calls the hook at 0x2ee0.
  The body is 23 instructions at 0xd9ca394.
  Established.
- `__glim_Color3dv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads three doubles through a1 at offsets 0, 8 and 16, narrows each to float and stores them unscaled at 0x1b0, 0x1b4 and 0x1b8, with alpha from 0xdd8, and calls the hook at 0x2ee0.
  The body is 25 instructions at 0xd9ca3f0.
  Established.
- `__glim_Color4b` in usr/gfx/arch/IP32CRM/libGLcore.so:
  spills the four byte arguments to the stack, sign-extends each with shifts, and converts all four, alpha included, with double, add one and the byte scale at context offset 0xde0, storing at 0x1b0 to 0x1bc before calling the hook at 0x2ee0.
  The body is 49 instructions at 0xd9caaf4.
  Established.
- `__glim_Color4bv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  reads four signed bytes through a1 at offsets 0 to 3 and gives each double, add one and the byte scale at 0xde0, storing in ascending order at 0x1b0, 0x1b4, 0x1b8 and 0x1bc and then calling the hook at 0x2ee0.
  The body is 47 instructions at 0xd9cabb8.
  Established.
- `__glim_Color4ub` in usr/gfx/arch/IP32CRM/libGLcore.so:
  spills a0 to a3 to the stack and takes the first component back as a byte from the spilled word (offset 35 of its frame, big-endian low byte), masks the other three with 0xff, and replaces each with its entry in the float table at context offset 0xef0.
  Four stores go to 0x1b0 to 0x1bc and the hook at 0x2ee0 follows.
  The body is 37 instructions at 0xd9ca9d4.
  Established.
- `__glim_Color4ubv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  reads four unsigned bytes through a1 at offsets 0 to 3, looks each up in the table at 0xef0 and stores them at 0x1b0 to 0x1bc, then calls the hook at 0x2ee0.
  No default alpha is read.
  The body is 35 instructions at 0xd9caa68.
  Established.
- `__glim_Color4s` in usr/gfx/arch/IP32CRM/libGLcore.so:
  spills the four short arguments, extends the last three with shifts and the first by reloading its halfword, and gives each of the four components double, add one and the short scale at context offset 0xde8; stores run from 0x1b0 to 0x1bc and the hook at 0x2ee0 is called.
  The body is 49 instructions at 0xd9cb048.
  Established.
- `__glim_Color4sv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads four signed halfwords through a1 at offsets 0, 2, 4 and 6, doubles, adds one, converts and scales by 0xde8, storing red to alpha at 0x1b0 to 0x1bc in order before calling the hook at 0x2ee0.
  The body is 47 instructions at 0xd9cb10c.
  Established.
- `__glim_Color4us` in usr/gfx/arch/IP32CRM/libGLcore.so:
  masks the four short arguments with 0xffff, converts each as signed and adds 2^32 on a sign test that is dead for masked values, then multiplies by the short scale at 0xde8, with the four stores at 0x1b0 to 0x1bc and the hook at 0x2ee0.
  At 58 instructions at 0xd9cb1c8 it is the longest immediate colour routine in either build.
  Established.
- `__glim_Color4usv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  reads four zero-extended halfwords through a1 at offsets 0, 2, 4 and 6, converts them as signed words with the same dead sign correction and scales by 0xde8, storing at 0x1b0 to 0x1bc before calling the hook at 0x2ee0.
  The body is 55 instructions at 0xd9cb2b0.
  Established.
- `__glim_Color4i` in usr/gfx/arch/IP32CRM/libGLcore.so:
  converts the four ints, with a0 spilled and reloaded, applies two times the value plus one with constants built from immediate loads and multiplies by the int scale at 0xdf0, including alpha, then stores at 0x1b0 to 0x1bc and calls the hook at 0x2ee0.
  The body is 43 instructions at 0xd9cad3c.
  Established.
- `__glim_Color4iv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads four words through a1 at offsets 0, 4, 8 and 12, converts each, forms two times the value plus one and scales by 0xdf0, storing in ascending order at 0x1b0 to 0x1bc and then calling the hook at 0x2ee0.
  The body is 45 instructions at 0xd9cade8.
  Established.
- `__glim_Color4ui` in usr/gfx/arch/IP32CRM/libGLcore.so:
  converts four unsigned ints as signed words with a sign test and an add of 2^32 for each, and multiplies by the int scale at 0xdf0; the stores run 0x1b0 to 0x1bc and the hook at 0x2ee0 follows.
  The body is 52 instructions at 0xd9cae9c.
  Established.
- `__glim_Color4uiv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads four words through a1 at offsets 0, 4, 8 and 12, converts each as signed with an add of 2^32 for words with the top bit set, scales by 0xdf0 and stores at 0x1b0 to 0x1bc, then calls the hook at 0x2ee0.
  The body is 55 instructions at 0xd9caf6c.
  Established.
- `__glim_Color4d` in usr/gfx/arch/IP32CRM/libGLcore.so:
  narrows the doubles in $f12 and $f14, and reads the third and fourth from the stack at offsets 48 and 56 of its own frame, storing all four unscaled at 0x1b0 to 0x1bc before calling the hook at 0x2ee0.
  The body is 23 instructions at 0xd9cac74.
  Established.
- `__glim_Color4dv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads four doubles through a1 at offsets 0, 8, 16 and 24, narrows each to float and stores them at 0x1b0, 0x1b4, 0x1b8 and 0x1bc without scaling, then calls the hook at 0x2ee0.
  The body is 27 instructions at 0xd9cacd0.
  Established.

## Colour index entry points

The colour index is a single float at context offset 0x1c0. None of these routines calls a hook or builds a frame: each loads the context pointer from the absolute address 0x1010, converts its argument and returns with the store in the branch delay slot.

- `__glim_Indexi` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  converts one signed int from a0 to float and stores it unscaled at context offset 0x1c0, five instructions at 0xd9c9660.
  Established.
- `__glim_Indexs` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  moves a signed short from a0 straight into the floating-point unit (the calling convention has already sign-extended it), converts and stores it at 0x1c0 of the context, five instructions at 0xd9c9680; apart from its address it is indistinguishable from the int routine.
  Established.
- `__glim_Indexub` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  takes an unsigned byte in a0, already zero-extended, converts it as a signed word and stores it at 0x1c0; because the value is at most 255 no 2^32 correction is needed, and none is present.
  The body is five instructions at 0xd9c9710.
  Established.
- `__glim_Indexiv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  loads one word through a0 at offset 0, converts it to float and stores it at context offset 0x1c0, six instructions at 0xd9c96d0.
  Established.
- `__glim_Indexsv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  loads one sign-extended halfword through a0 at offset 0, converts it and stores the float at 0x1c0, six instructions at 0xd9c96f0.
  Established.
- `__glim_Indexubv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  loads one unsigned byte through a0 at offset 0, converts it and stores the float at 0x1c0, six instructions at 0xd9c9730.
  Established.
- `__glim_Indexd` in usr/gfx/arch/IP32CRM/libGLcore.so:
  narrows the double passed in $f12 to single precision and stores it at context offset 0x1c0; the body is four instructions at 0xd9cb38c, with the store in the return delay slot.
  Established.
- `__glim_Indexf` in usr/gfx/arch/IP32CRM/libGLcore.so:
  stores the float argument, which arrives in $f12, at 0x1c0 of the context without conversion, four instructions at 0xd9cb39c.
  Established.
- `__glim_Indexi` in usr/gfx/arch/IP32CRM/libGLcore.so:
  converts the int in a0 to float and stores it at 0x1c0, seven instructions at 0xd9cb3ac; the two extra instructions against the N32 routine are no-operations, one after the move into the floating-point unit and one in the return delay slot.
  Established.
- `__glim_Indexs` in usr/gfx/arch/IP32CRM/libGLcore.so:
  saves a0 on the stack, sign-extends the short with a shift left and an arithmetic shift right by 16, converts it and stores the float at 0x1c0, eight instructions at 0xd9cb3c8.
  Established.
- `__glim_Indexub` in usr/gfx/arch/IP32CRM/libGLcore.so:
  masks a0 with 0xff, converts it and then tests the sign of the converted value to add 2^32 when it is set, a branch that cannot be taken for a masked byte; the float is stored at 0x1c0.
  The body is 15 instructions at 0xd9cb440.
  Established.
- `__glim_Indexdv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads one double through a0 at offset 0, narrows it and stores the float at 0x1c0 of the context, six instructions at 0xd9cb3e8.
  Established.
- `__glim_Indexfv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  copies the single float at a0 plus 0 to context offset 0x1c0, four instructions at 0xd9cb400.
  Established.
- `__glim_Indexiv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads one word through a0 at offset 0, converts it to float and stores it at 0x1c0, six instructions at 0xd9cb410.
  Established.
- `__glim_Indexsv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads one sign-extended halfword through a0 at offset 0, converts it and stores the float at 0x1c0, six instructions at 0xd9cb428.
  Established.
- `__glim_Indexubv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads one unsigned byte through a0 at offset 0, converts it with the sign test that adds 2^32 (never taken here) and stores the float at 0x1c0.
  The body is 14 instructions at 0xd9cb47c.
  Established.

## Normal entry points

The current normal is three floats at context offsets 0xd0, 0xd4 and 0xd8. Like the index routines these are leaf routines without a frame or hook call. Integer components are mapped to the range minus one to one by the same (2x+1) scale as colours, which GL specifies for normals as well.

- `__glim_Normal3b` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  doubles each of three signed byte arguments, adds one, converts and multiplies by the byte scale at context offset 0xde0, storing z, y and x in that order at 0xd8, 0xd4 and 0xd0.
  The body is 21 instructions at 0xd9f4a20.
  Established.
- `__glim_Normal3bv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  reads three signed bytes through a0 at offsets 0, 1 and 2, gives each double, add one, convert and the byte scale at 0xde0 and stores x, y and z in order at 0xd0, 0xd4 and 0xd8.
  The body is 24 instructions at 0xd9f4a80.
  Established.
- `__glim_Normal3s` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  the same operation on three short arguments with the short scale at 0xde8: double, add one, convert, multiply, then store z, y, x at 0xd8, 0xd4, 0xd0.
  The body is 21 instructions at 0xd9f4ae0.
  Established.
- `__glim_Normal3sv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  reads signed halfwords through a0 at offsets 0, 2 and 4, converts each with double, add one and the short scale at 0xde8 and stores x, y, z at 0xd0, 0xd4, 0xd8.
  The body is 24 instructions at 0xd9f4b40.
  Established.
- `__glim_Normal3i` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  converts three ints and applies two times the value plus one with the constants 2.0 and 1.0 from read-only data, then the int scale at 0xdf0, storing z, y, x at 0xd8, 0xd4, 0xd0.
  The body is 24 instructions at 0xd9f4ba0.
  Established.
- `__glim_Normal3iv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  loads three words through a0 at offsets 0, 4 and 8, converts and scales each by two times the value plus one and the int scale at 0xdf0, and stores x, y, z at 0xd0, 0xd4, 0xd8.
  The body is 26 instructions at 0xd9f4c00.
  Established.
- `__glim_Normal3d` in usr/gfx/arch/IP32CRM/libGLcore.so:
  narrows the doubles in $f12 and $f14 and the third from the caller's argument area at offset 16 of the stack pointer (no frame is built, so this is the caller's slot) and stores x, y, z unscaled at 0xd0, 0xd4, 0xd8.
  The body is 10 instructions at 0xd9f2d20.
  Established.
- `__glim_Normal3dv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads three doubles through a0 at offsets 0, 8 and 16, narrows each to float and stores them unscaled at 0xd0, 0xd4 and 0xd8, 12 instructions at 0xd9f2d48.
  Established.
- `__glim_Normal3b` in usr/gfx/arch/IP32CRM/libGLcore.so:
  saves the three byte arguments to the stack, sign-extends each with a shift left and an arithmetic shift right by 24, and applies double, add one, convert and the byte scale at 0xde0 before storing x, y, z at 0xd0, 0xd4, 0xd8.
  The body is 30 instructions at 0xd9f2d78.
  Established.
- `__glim_Normal3bv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  reads three signed bytes through a0 at offsets 0 to 2 and scales each with double, add one and the byte scale at 0xde0, then stores at 0xd0, 0xd4, 0xd8.
  The body is 27 instructions at 0xd9f2df0.
  Established.
- `__glim_Normal3s` in usr/gfx/arch/IP32CRM/libGLcore.so:
  saves the three short arguments, sign-extends them with 16-bit shifts and applies double, add one, convert and the short scale at 0xde8, storing x, y, z at 0xd0, 0xd4, 0xd8.
  The body is 30 instructions at 0xd9f2e5c.
  Established.
- `__glim_Normal3sv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  reads three signed halfwords through a0 at offsets 0, 2 and 4, doubles, adds one, converts and scales by 0xde8, and stores at 0xd0, 0xd4, 0xd8.
  The body is 27 instructions at 0xd9f2ed4.
  Established.
- `__glim_Normal3i` in usr/gfx/arch/IP32CRM/libGLcore.so:
  converts the three ints, builds 2.0 and 1.0 from immediate loads of 0x40000000 and 0x3f800000, forms one plus two times the value with a multiply-add and multiplies by the int scale at 0xdf0, storing at 0xd0, 0xd4, 0xd8.
  The body is 26 instructions at 0xd9f2f40.
  Established.
- `__glim_Normal3iv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads three words through a0 at offsets 0, 4 and 8 and converts each with the multiply-add and the int scale at 0xdf0, storing x, y, z at 0xd0, 0xd4, 0xd8.
  The body is 31 instructions at 0xd9f2fa8.
  Established.

## Texture coordinate entry points

These set the coordinates of the first texture unit: four floats at context offsets 0xe0, 0xe4, 0xe8 and 0xec (s, t, r, q). A call with fewer than four components fills the missing ones with the GL defaults, zero for r and t and, for q, the word at context offset 0xdd8 that the colour routines also use as their default alpha. Integer components are converted but not scaled, as GL requires for texture coordinates. None of these routines builds a frame or calls a hook.

- `__glim_TexCoord1iv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  loads one word through a0 at offset 0, converts it to float for s at context offset 0xe0, writes zero to t and r at 0xe4 and 0xe8 and takes q from 0xdd8 for 0xec.
  The body is 12 instructions at 0xda13ea0.
  Established.
- `__glim_TexCoord1sv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  loads one sign-extended halfword through a0 at offset 0 and converts it for s; t and r are zeroed and q comes from 0xdd8.
  The body is 12 instructions at 0xda13ed0.
  Established.
- `__glim_TexCoord2i` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  converts the ints in a0 and a1 to s and t at 0xe0 and 0xe4, zeroes r at 0xe8 and copies q from 0xdd8 into 0xec; the body is 12 instructions at 0xda13f30.
  Established.
- `__glim_TexCoord2s` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  converts the shorts in a0 and a1 (already sign-extended by the calling convention) to s and t, zeroes r and takes q from 0xdd8; the body is 12 instructions at 0xda13f60, the same shape as the int routine.
  Established.
- `__glim_TexCoord2dv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  loads two doubles through a0 at offsets 0 and 8, narrows them to s and t, zeroes r and copies q from 0xdd8 into 0xec; the body is 12 instructions at 0xda13f90.
  Established.
- `__glim_TexCoord2iv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  loads two words through a0 at offsets 0 and 4, converts them to s and t, zeroes r at 0xe8 and fills q from 0xdd8; the body is 14 instructions at 0xda13fc0.
  Established.
- `__glim_TexCoord2sv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  loads two halfwords through a0 at offsets 0 and 2, converts them to s and t and defaults r to zero and q to the word at 0xdd8; the body is 14 instructions at 0xda14000.
  Established.
- `__glim_TexCoord3i` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  converts three ints from a0, a1 and a2 into s, t and r at 0xe0, 0xe4 and 0xe8 and copies q from 0xdd8 into 0xec; the body is 13 instructions at 0xda14090.
  Established.
- `__glim_TexCoord3s` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  converts three shorts from registers into s, t and r and defaults q from the word at 0xdd8; the body is 13 instructions at 0xda140d0.
  Established.
- `__glim_TexCoord3dv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  loads three doubles through a0 at offsets 0, 8 and 16, narrows them into s, t and r, and defaults q from 0xdd8; the body is 13 instructions at 0xda14110.
  Established.
- `__glim_TexCoord3iv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  loads three words through a0 at offsets 0, 4 and 8, converts them into s, t and r and sets q from 0xdd8; the body is 16 instructions at 0xda14180.
  Established.
- `__glim_TexCoord3sv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  loads three halfwords through a0 at offsets 0, 2 and 4, converts them into s, t and r and sets q from 0xdd8; the body is 16 instructions at 0xda141c0.
  Established.
- `__glim_TexCoord4i` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  converts four ints from a0 to a3 into s, t, r and q at 0xe0 to 0xec, storing q first; no default is read, and the body is 14 instructions at 0xda14250.
  Established.
- `__glim_TexCoord4s` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  converts four shorts from registers into s, t, r and q at 0xe0 to 0xec, storing q first; the body is 14 instructions at 0xda14290.
  Established.
- `__glim_TexCoord4dv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  loads four doubles through a0 at offsets 0, 8, 16 and 24, narrows each and stores them in ascending order at 0xe0 to 0xec; the body is 14 instructions at 0xda142d0.
  Established.
- `__glim_TexCoord4iv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  loads four words through a0 at offsets 0, 4, 8 and 12, converts and stores them at 0xe0 to 0xec; the body is 18 instructions at 0xda14340.
  Established.
- `__glim_TexCoord4sv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  loads four halfwords through a0 at offsets 0, 2, 4 and 6, converts and stores them at 0xe0 to 0xec; the body is 18 instructions at 0xda14390.
  Established.
- `__glim_TexCoord1d` in usr/gfx/arch/IP32CRM/libGLcore.so:
  narrows the double in $f12 to s at context offset 0xe0, zeroes t and r and copies the q default from 0xdd8; the body is 13 instructions at 0xda13210, including a global-pointer setup that the routine never uses.
  Established.
- `__glim_TexCoord1f` in usr/gfx/arch/IP32CRM/libGLcore.so:
  stores the float in $f12 to s at 0xe0, zeroes t and r and copies q from 0xdd8; the body is 11 instructions at 0xda13244.
  Established.
- `__glim_TexCoord1i` in usr/gfx/arch/IP32CRM/libGLcore.so:
  converts the int in a0 to s, zeroes t and r and sets q from 0xdd8; the body is 13 instructions at 0xda13270.
  Established.
- `__glim_TexCoord1s` in usr/gfx/arch/IP32CRM/libGLcore.so:
  saves a0 to the stack, sign-extends the short with 16-bit shifts and converts it to s, zeroing t and r and copying q from 0xdd8; the body is 17 instructions at 0xda132a4.
  Established.
- `__glim_TexCoord1dv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads one double through a0 at offset 0, narrows it to s, zeroes t and r and copies q from 0xdd8; the body is 13 instructions at 0xda132e8.
  Established.
- `__glim_TexCoord1fv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  copies the float at a0 plus 0 to s and defaults the other three: t and r to zero and q to the word at 0xdd8; the body is 13 instructions at 0xda1331c.
  Established.
- `__glim_TexCoord1iv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads one word through a0 at offset 0, converts it to s and defaults t, r and q as above; the body is 15 instructions at 0xda13350.
  Established.
- `__glim_TexCoord1sv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads one halfword through a0 at offset 0, converts it to s and defaults t, r and q; the body is 15 instructions at 0xda1338c.
  Established.
- `__glim_TexCoord2d` in usr/gfx/arch/IP32CRM/libGLcore.so:
  narrows the doubles in $f12 and $f14 to s and t, zeroes r and defaults q from 0xdd8; the body is 13 instructions at 0xda133c8.
  Established.
- `__glim_TexCoord2i` in usr/gfx/arch/IP32CRM/libGLcore.so:
  converts the ints in a0 and a1 to s and t, zeroes r and fills q from 0xdd8; the body is 15 instructions at 0xda133fc.
  Established.
- `__glim_TexCoord2s` in usr/gfx/arch/IP32CRM/libGLcore.so:
  saves a0 and a1, sign-extends both shorts with 16-bit shifts, converts them to s and t and defaults r and q; the body is 21 instructions at 0xda13438.
  Established.
- `__glim_TexCoord2dv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads two doubles through a0 at offsets 0 and 8, narrows them to s and t, zeroes r and defaults q; the body is 15 instructions at 0xda1348c.
  Established.
- `__glim_TexCoord2iv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads two words through a0 at offsets 0 and 4, converts them to s and t and defaults r and q; the body is 17 instructions at 0xda134c8.
  Established.
- `__glim_TexCoord2sv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads two halfwords through a0 at offsets 0 and 2, converts them to s and t and defaults r and q; the body is 17 instructions at 0xda1350c.
  Established.
- `__glim_TexCoord3d` in usr/gfx/arch/IP32CRM/libGLcore.so:
  narrows the doubles in $f12 and $f14 for s and t and the third, which the convention passes on the stack at offset 16, for r; q comes from 0xdd8.
  The body is 12 instructions at 0xda13550.
  Established.
- `__glim_TexCoord3f` in usr/gfx/arch/IP32CRM/libGLcore.so:
  stores the floats in $f12 and $f14 as s and t and the third float, which the o32 convention puts in the integer register a2, after a spill and reload through the stack, as r; q is defaulted from 0xdd8.
  The body is 10 instructions at 0xda13580.
  Established.
- `__glim_TexCoord3i` in usr/gfx/arch/IP32CRM/libGLcore.so:
  converts three ints into s, t and r and defaults q from 0xdd8; the body is 14 instructions at 0xda135a8.
  Established.
- `__glim_TexCoord3s` in usr/gfx/arch/IP32CRM/libGLcore.so:
  saves the three short arguments, sign-extends them with 16-bit shifts, converts into s, t and r and defaults q; the body is 22 instructions at 0xda135e0.
  Established.
- `__glim_TexCoord3dv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads three doubles through a0 at offsets 0, 8 and 16, narrows them into s, t and r and defaults q; the body is 14 instructions at 0xda13638.
  Established.
- `__glim_TexCoord3fv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  copies three floats through a0 at offsets 0, 4 and 8 to s, t and r and sets q from 0xdd8; the body is 10 instructions at 0xda13670.
  Established.
- `__glim_TexCoord3iv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads three words through a0 at offsets 0, 4 and 8, converts them into s, t and r and defaults q; the body is 18 instructions at 0xda13698.
  Established.
- `__glim_TexCoord3sv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads three halfwords through a0 at offsets 0, 2 and 4, converts them into s, t and r and defaults q; the body is 18 instructions at 0xda136e0.
  Established.
- `__glim_TexCoord4d` in usr/gfx/arch/IP32CRM/libGLcore.so:
  narrows the doubles in $f12 and $f14 for s and t and reads r and q from the stack at offsets 16 and 24; there is no default.
  The body is 12 instructions at 0xda13728.
  Established.
- `__glim_TexCoord4f` in usr/gfx/arch/IP32CRM/libGLcore.so:
  stores the floats in $f12 and $f14 as s and t and takes r and q from the integer registers a2 and a3, spilled and reloaded through the stack.
  The body is 10 instructions at 0xda13758.
  Established.
- `__glim_TexCoord4i` in usr/gfx/arch/IP32CRM/libGLcore.so:
  converts four ints from a0 to a3 into s, t, r and q; the body is 14 instructions at 0xda13780.
  Established.
- `__glim_TexCoord4s` in usr/gfx/arch/IP32CRM/libGLcore.so:
  saves the four short arguments, sign-extends each with 16-bit shifts, converts and stores them in order at 0xe0 to 0xec; the body is 26 instructions at 0xda137b8.
  Established.
- `__glim_TexCoord4dv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads four doubles through a0 at offsets 0, 8, 16 and 24, narrows each and stores them at 0xe0 to 0xec; the body is 14 instructions at 0xda13820.
  Established.
- `__glim_TexCoord4fv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  copies four floats through a0 at offsets 0, 4, 8 and 12 to 0xe0 to 0xec; the body is 10 instructions at 0xda13858.
  Established.
- `__glim_TexCoord4iv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads four words through a0 at offsets 0, 4, 8 and 12, converts them and stores them at 0xe0 to 0xec; the body is 21 instructions at 0xda13880.
  Established.
- `__glim_TexCoord4sv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads four halfwords through a0 at offsets 0, 2, 4 and 6, converts them and stores them at 0xe0 to 0xec; the body is 21 instructions at 0xda138d4.
  Established.

## Vertex entry points

A vertex call does no work of its own. Each routine puts its two, three or four components into a float array in its own frame, loads the vertex dispatch table pointer from the current context at offset 0x17b8 and calls through the table, passing the address of the array in a0. The table slot depends only on the component count: offset 0x534 for two components, 0x554 for three and 0x574 for four, which are, inferred from how they are used, the pointer-taking vertex handlers that the library installs for the current primitive state. Integer components are converted without scaling.

- `__glim_Vertex2f` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  stores the two floats, which arrive in $f12 and $f13, at offsets 0 and 4 of a 32-byte frame and calls the two-component handler at table offset 0x534 with a0 pointing at them.
  The body is 18 instructions at 0xda32b90.
  Established.
- `__glim_Vertex2d` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  narrows the doubles in $f12 and $f13 to float, stores them at offsets 0 and 4 of the frame and calls the handler at table offset 0x534.
  The body is 20 instructions at 0xda32be0.
  Established.
- `__glim_Vertex2dv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  loads two doubles through a0 at offsets 0 and 8, narrows them, stores them at offsets 0 and 4 of the frame and calls the handler at 0x534.
  The body is 22 instructions at 0xda32c30.
  Established.
- `__glim_Vertex2i` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  converts the ints in a0 and a1 to float and stores them in the frame array before the call through table offset 0x534.
  The body is 22 instructions at 0xda32c90.
  Established.
- `__glim_Vertex2iv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  reads two words through a0 at offsets 0 and 4, converts them and stores the array before calling the handler at 0x534.
  The body is 24 instructions at 0xda32cf0.
  Established.
- `__glim_Vertex2s` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  converts the shorts in a0 and a1, already sign-extended by the calling convention, with the same frame array and call to table offset 0x534 as the int routine; the body is 22 instructions at 0xda32d50 and differs from it only in address.
  Established.
- `__glim_Vertex2sv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  reads two sign-extended halfwords through a0 at offsets 0 and 2, converts them and calls the handler at 0x534.
  The body is 24 instructions at 0xda32db0.
  Established.
- `__glim_Vertex3f` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  stores the floats in $f12, $f13 and $f14 at offsets 0, 4 and 8 of the frame and calls the three-component handler at table offset 0x554.
  The body is 20 instructions at 0xda32e10.
  Established.
- `__glim_Vertex3d` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  narrows the doubles in $f12 to $f14 to float, stores them in the frame array and calls the handler at 0x554.
  The body is 22 instructions at 0xda32e60.
  Established.
- `__glim_Vertex3dv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  loads three doubles through a0 at offsets 0, 8 and 16, narrows them and calls the handler at 0x554.
  The body is 25 instructions at 0xda32ec0.
  Established.
- `__glim_Vertex3i` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  converts the three ints in a0, a1 and a2 to float and calls the handler at 0x554.
  The body is 25 instructions at 0xda32f30.
  Established.
- `__glim_Vertex3iv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  loads three words through a0 at offsets 0, 4 and 8, converts them and calls the handler at 0x554.
  The body is 28 instructions at 0xda32fa0.
  Established.
- `__glim_Vertex3s` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  converts the three shorts from registers and calls the handler at 0x554.
  The body is 25 instructions at 0xda33010.
  Established.
- `__glim_Vertex3sv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  loads three halfwords through a0 at offsets 0, 2 and 4, converts them and calls the handler at 0x554.
  The body is 28 instructions at 0xda33080.
  Established.
- `__glim_Vertex4f` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  stores the floats in $f12 to $f15 at offsets 0 to 12 of the frame and calls the four-component handler at table offset 0x574.
  The body is 20 instructions at 0xda330f0.
  Established.
- `__glim_Vertex4d` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  narrows the doubles in $f12 to $f15 and calls the handler at 0x574, 24 instructions at 0xda33140.
  Established.
- `__glim_Vertex4dv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  loads four doubles through a0 at offsets 0, 8, 16 and 24, narrows them and calls the handler at 0x574.
  The body is 28 instructions at 0xda331a0.
  Established.
- `__glim_Vertex4i` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  converts the four ints in a0 to a3 and calls the handler at 0x574; the body is 28 instructions at 0xda33210.
  Established.
- `__glim_Vertex4iv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  loads four words through a0 at offsets 0, 4, 8 and 12, converts them and calls the handler at 0x574; the body is 32 instructions at 0xda33280, the longest vertex routine of this build.
  Established.
- `__glim_Vertex4s` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  converts the four shorts in registers and calls the handler at 0x574; the body is 28 instructions at 0xda33300.
  Established.
- `__glim_Vertex4sv` in usr/gfx/arch/IP32CRM32/libGLcore.so:
  loads four halfwords through a0 at offsets 0, 2, 4 and 6, converts them and calls the handler at 0x574; the body is 32 instructions at 0xda33370.
  Established.
- `__glim_Vertex2f` in usr/gfx/arch/IP32CRM/libGLcore.so:
  stores the float in $f12 and $f14 at offsets 48 and 52 of a 56-byte frame and calls the two-component handler at table offset 0x534; the instruction that adds 0x528 to the table pointer afterwards is dead.
  The body is 19 instructions at 0xda31ec4.
  Established.
- `__glim_Vertex2d` in usr/gfx/arch/IP32CRM/libGLcore.so:
  narrows the doubles in $f12 and $f14 to float, stores them at offsets 48 and 52 of the frame and calls the handler at 0x534.
  The body is 21 instructions at 0xda31f10.
  Established.
- `__glim_Vertex2dv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads two doubles through a0 at offsets 0 and 8, narrows them, stores them at offsets 48 and 52 of a 64-byte frame and calls the handler at 0x534.
  The body is 23 instructions at 0xda31f64.
  Established.
- `__glim_Vertex2i` in usr/gfx/arch/IP32CRM/libGLcore.so:
  converts the ints in a0 and a1 and stores them at offsets 48 and 52 before calling table offset 0x534; a0 itself is first copied to a3 for the conversion.
  The body is 23 instructions at 0xda31fc0.
  Established.
- `__glim_Vertex2iv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads two words through a0 at offsets 0 and 4, converts them, stores them at offsets 48 and 52 of a 64-byte frame and calls the handler at 0x534.
  The body is 25 instructions at 0xda3201c.
  Established.
- `__glim_Vertex2s` in usr/gfx/arch/IP32CRM/libGLcore.so:
  saves a0 and a1 and sign-extends both shorts with 16-bit shifts, converts both and calls the handler at 0x534.
  The body is 29 instructions at 0xda32080.
  Established.
- `__glim_Vertex2sv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads two halfwords through a0 at offsets 0 and 2, converts them and calls the handler at 0x534, using a 64-byte frame.
  The body is 25 instructions at 0xda320f4.
  Established.
- `__glim_Vertex3f` in usr/gfx/arch/IP32CRM/libGLcore.so:
  stores the floats in $f12 and $f14 at offsets 44 and 48 of a 56-byte frame, takes the third float, which arrives in the integer register a2, back from a spill at offset 64 and stores it at 52, then calls the handler at table offset 0x554.
  The body is 21 instructions at 0xda32158.
  Established.
- `__glim_Vertex3d` in usr/gfx/arch/IP32CRM/libGLcore.so:
  narrows $f12 and $f14 and the third double, which it loads from the caller's argument area at offset 72 of its frame, stores the three floats at offsets 44 to 52 and calls the handler at 0x554.
  The body is 23 instructions at 0xda321ac.
  Established.
- `__glim_Vertex3dv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads three doubles through a0 at offsets 0, 8 and 16, narrows them, stores them at offsets 48, 52 and 56 of a 72-byte frame and calls the handler at 0x554.
  The body is 25 instructions at 0xda32208.
  Established.
- `__glim_Vertex3i` in usr/gfx/arch/IP32CRM/libGLcore.so:
  converts the three ints, spilling a0 on the way, stores them at offsets 44, 48 and 52 of a 56-byte frame and calls the handler at 0x554.
  The body is 27 instructions at 0xda3226c.
  Established.
- `__glim_Vertex3iv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads three words through a0 at offsets 0, 4 and 8, converts them, stores them at offsets 48 to 56 of a 72-byte frame and calls the handler at 0x554.
  The body is 29 instructions at 0xda322d8.
  Established.
- `__glim_Vertex3s` in usr/gfx/arch/IP32CRM/libGLcore.so:
  spills the three short arguments, sign-extends two of them with shifts and the first by a halfword reload, converts all three, stores them at offsets 44 to 52 and calls the handler at 0x554.
  The body is 33 instructions at 0xda3234c.
  Established.
- `__glim_Vertex3sv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads three halfwords through a0 at offsets 0, 2 and 4, converts them and calls the handler at 0x554 from a 72-byte frame.
  The body is 29 instructions at 0xda323d0.
  Established.
- `__glim_Vertex4f` in usr/gfx/arch/IP32CRM/libGLcore.so:
  stores the floats in $f12 and $f14 at offsets 48 and 52 and the third and fourth, which arrive in a2 and a3, back from spill slots at offsets 72 and 76 and stores them at 56 and 60, then calls the handler at 0x574.
  The body is 25 instructions at 0xda32444.
  Established.
- `__glim_Vertex4d` in usr/gfx/arch/IP32CRM/libGLcore.so:
  narrows $f12 and $f14 and the two doubles it loads from the caller's argument area at offsets 80 and 88 of its frame, stores four floats at offsets 48 to 60 of a 64-byte frame and calls the handler at 0x574.
  The body is 27 instructions at 0xda324a8.
  Established.
- `__glim_Vertex4dv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads four doubles through a0 at offsets 0, 8, 16 and 24, narrows them, stores them in an 80-byte frame at offsets 48 to 60 and calls the handler at 0x574.
  The body is 29 instructions at 0xda32514.
  Established.
- `__glim_Vertex4i` in usr/gfx/arch/IP32CRM/libGLcore.so:
  converts the four ints in a0 to a3 into the frame array and calls the handler at 0x574; the body is 31 instructions at 0xda32588.
  Established.
- `__glim_Vertex4iv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads four words through a0 at offsets 0, 4, 8 and 12, converts them and calls the handler at 0x574 from an 80-byte frame.
  The body is 33 instructions at 0xda32604.
  Established.
- `__glim_Vertex4s` in usr/gfx/arch/IP32CRM/libGLcore.so:
  spills the four short arguments, reloads the first as a halfword, sign-extends the others with shifts, converts all four and calls the handler at 0x574.
  At 39 instructions at 0xda32688 it is the longest vertex routine of either build.
  Established.
- `__glim_Vertex4sv` in usr/gfx/arch/IP32CRM/libGLcore.so:
  loads four halfwords through a0 at offsets 0, 2, 4 and 6, converts them and calls the handler at 0x574 from an 80-byte frame.
  The body is 33 instructions at 0xda32724.
  Established.

## Display-list replay entry points (the `__glle_` routines)

A display list is a chain of records; to run one the library calls the replay routine of each record in turn. A replay routine receives the address of the record's payload in a0, calls the library's own entry for the recorded call with the payload's contents, and returns the address of the next record, which sits immediately after the payload. The entry it calls is found in a table at a fixed low address, one word per call: each routine loads its target with a single load from register zero plus the slot offset shown, so the table needs no context pointer. The identity of the slot (for example that 0x1090 is the entry of the fog-vector call) is inferred from the routine's own name and from the size routine it uses, which carries the same name; it is not read from the table's initialiser.

The 43 routines of each build fall into exactly four shapes. Comparing every routine's listing with the others, with the slot offset, the size routine and the add constants masked out, leaves four distinct instruction sequences in the N32 build and the same four in the o32 build, so each shape was read once in full and checked against all the others of its group. The size routines (`__glFogfv_size` and so on) are the library's own: each takes the parameter-name word and returns how many words of values the record holds, which the replay routine turns into the length of the payload.

- Records with no payload (9 routines): the replay routine passes the payload address through untouched and returns it unchanged, because no data follows the record header.
- Records with a pair of vectors (the four rectangle-vector calls): the first vector is at the payload address and the second is a fixed number of bytes after it, 16 for doubles, 8 for floats and ints, 4 for shorts; the next record follows both.
- Records that begin with one parameter-name word (11 routines): the name is at offset 0 and the values start at offset 4; the size routine, called with the name, gives the value count, and the next record is at offset 4 plus four times that count.
- Records that begin with a target word and a parameter-name word (19 routines): the target (for example the light or face number) is at offset 0, the name at offset 4 and the values at offset 8; the next record is at offset 8 plus four times the count, or eight times it for the double-precision texture-generation call.

In the N32 build each routine keeps the record address in a callee-saved register across the slot call, in a 32-byte frame; in the o32 build it spills the record address to the stack at offset 32 and reloads it afterwards. The tables give each routine's own slot, size routine, size and address. Each row was checked against the grouped listing described above, and the label is Established because the whole listing of each shape, not a sample, was compared.

### N32 build

Records with no payload.

| Routine | Slot | Effect | Reads from record | Next record at | Instructions | Frame | Address | Label |
|---|---|---|---|---|---|---|---|---|
| `__glle_End` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x107c | calls slot, hands record back | nothing, no payload | the same address | 16 | 32 | 0xd98a1a0 | Established |
| `__glle_InitNames` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x113c | calls slot, hands record back | nothing, no payload | the same address | 16 | 32 | 0xd98bc20 | Established |
| `__glle_PopName` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x1148 | calls slot, hands record back | nothing, no payload | the same address | 16 | 32 | 0xd98bd00 | Established |
| `__glle_PopAttrib` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x1190 | calls slot, hands record back | nothing, no payload | the same address | 16 | 32 | 0xd98c150 | Established |
| `__glle_LoadIdentity` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x12b0 | calls slot, hands record back | nothing, no payload | the same address | 16 | 32 | 0xd98cb30 | Established |
| `__glle_PopMatrix` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x12cc | calls slot, hands record back | nothing, no payload | the same address | 16 | 32 | 0xd98cd60 | Established |
| `__glle_PushMatrix` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x12d0 | calls slot, hands record back | nothing, no payload | the same address | 16 | 32 | 0xd98cda0 | Established |
| `__glle_TagSampleBufferSGIX` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x13f4 | calls slot, hands record back | nothing, no payload | the same address | 16 | 32 | 0xd98d850 | Established |
| `__glle_StartInstrumentsSGIX` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x1464 | calls slot, hands record back | nothing, no payload | the same address | 16 | 32 | 0xd98dde0 | Established |

Records that hold one or two vectors.

| Routine | Slot | Effect | Reads from record | Next record at | Instructions | Frame | Address | Label |
|---|---|---|---|---|---|---|---|---|
| `__glle_Rectdv` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x178c | calls slot with both vectors | two vectors, second at +16 | +32 bytes | 18 | 32 | 0xd98a870 | Established |
| `__glle_Rectfv` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x1794 | calls slot with both vectors | two vectors, second at +8 | +16 bytes | 18 | 32 | 0xd98a8c0 | Established |
| `__glle_Rectiv` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x179c | calls slot with both vectors | two vectors, second at +8 | +16 bytes | 18 | 32 | 0xd98a910 | Established |
| `__glle_Rectsv` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x17a4 | calls slot with both vectors | two vectors, second at +4 | +8 bytes | 18 | 32 | 0xd98a960 | Established |

Records that start with one parameter-name word.

| Routine | Slot | Effect | Reads from record | Size routine | Next record at | Instructions | Frame | Address | Label |
|---|---|---|---|---|---|---|---|---|---|
| `__glle_Fogfv` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x1090 | calls slot, then sizes payload | name at +0, values at +4 | `__glFogfv_size` | +4 plus 4 per value | 24 | 32 | 0xd98b3b0 | Established |
| `__glle_Fogiv` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x1098 | calls slot, then sizes payload | name at +0, values at +4 | `__glFogiv_size` | +4 plus 4 per value | 24 | 32 | 0xd98b460 | Established |
| `__glle_LightModelfv` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x10b8 | calls slot, then sizes payload | name at +0, values at +4 | `__glLightModelfv_size` | +4 plus 4 per value | 24 | 32 | 0xd98b620 | Established |
| `__glle_LightModeliv` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x10c0 | calls slot, then sizes payload | name at +0, values at +4 | `__glLightModeliv_size` | +4 plus 4 per value | 24 | 32 | 0xd98b680 | Established |
| `__glle_SpriteParameterfvSGIX` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x1434 | calls slot, then sizes payload | name at +0, values at +4 | `__glSpriteParameterfvSGIX_size` | +4 plus 4 per value | 24 | 32 | 0xd98db10 | Established |
| `__glle_SpriteParameterivSGIX` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x143c | calls slot, then sizes payload | name at +0, values at +4 | `__glSpriteParameterivSGIX_size` | +4 plus 4 per value | 24 | 32 | 0xd98dbc0 | Established |
| `__glle_PointParameterfvSGIS` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x144c | calls slot, then sizes payload | name at +0, values at +4 | `__glPointParameterfvSGIS_size` | +4 plus 4 per value | 24 | 32 | 0xd98dcd0 | Established |
| `__glle_PixelTexGenParameterivSGIS` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x14b8 | calls slot, then sizes payload | name at +0, values at +4 | `__glPixelTexGenParameterivSGIS_size` | +4 plus 4 per value | 24 | 32 | 0xd98e060 | Established |
| `__glle_PixelTexGenParameterfvSGIS` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x14c0 | calls slot, then sizes payload | name at +0, values at +4 | `__glPixelTexGenParameterfvSGIS_size` | +4 plus 4 per value | 24 | 32 | 0xd98e110 | Established |
| `__glle_FragmentLightModelfvSGIX` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x14fc | calls slot, then sizes payload | name at +0, values at +4 | `__glFragmentLightModelfvSGIX_size` | +4 plus 4 per value | 24 | 32 | 0xd98e3c0 | Established |
| `__glle_FragmentLightModelivSGIX` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x1504 | calls slot, then sizes payload | name at +0, values at +4 | `__glFragmentLightModelivSGIX_size` | +4 plus 4 per value | 24 | 32 | 0xd98e470 | Established |

Records that start with a target word and a parameter-name word.

| Routine | Slot | Effect | Reads from record | Size routine | Next record at | Instructions | Frame | Address | Label |
|---|---|---|---|---|---|---|---|---|---|
| `__glle_Lightfv` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x10a8 | calls slot, then sizes payload | target +0, name +4, values +8 | `__glLightfv_size` | +8 plus 4 per value | 24 | 32 | 0xd98b560 | Established |
| `__glle_Lightiv` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x10b0 | calls slot, then sizes payload | target +0, name +4, values +8 | `__glLightiv_size` | +8 plus 4 per value | 24 | 32 | 0xd98b5c0 | Established |
| `__glle_Materialfv` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x10d0 | calls slot, then sizes payload | target +0, name +4, values +8 | `__glMaterialfv_size` | +8 plus 4 per value | 24 | 32 | 0xd98b780 | Established |
| `__glle_Materialiv` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x10d8 | calls slot, then sizes payload | target +0, name +4, values +8 | `__glMaterialiv_size` | +8 plus 4 per value | 24 | 32 | 0xd98b7e0 | Established |
| `__glle_TexParameterfv` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x10f4 | calls slot, then sizes payload | target +0, name +4, values +8 | `__glTexParameterfv_size` | +8 plus 4 per value | 24 | 32 | 0xd98b980 | Established |
| `__glle_TexParameteriv` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x10fc | calls slot, then sizes payload | target +0, name +4, values +8 | `__glTexParameteriv_size` | +8 plus 4 per value | 24 | 32 | 0xd98b9e0 | Established |
| `__glle_TexEnvfv` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x110c | calls slot, then sizes payload | target +0, name +4, values +8 | `__glTexEnvfv_size` | +8 plus 4 per value | 24 | 32 | 0xd98ba40 | Established |
| `__glle_TexEnviv` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x1114 | calls slot, then sizes payload | target +0, name +4, values +8 | `__glTexEnviv_size` | +8 plus 4 per value | 24 | 32 | 0xd98baa0 | Established |
| `__glle_TexGendv` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x111c | calls slot, then sizes payload | target +0, name +4, values +8 | `__glTexGendv_size` | +8 plus 8 per value | 24 | 32 | 0xd98bb00 | Established |
| `__glle_TexGenfv` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x1124 | calls slot, then sizes payload | target +0, name +4, values +8 | `__glTexGenfv_size` | +8 plus 4 per value | 24 | 32 | 0xd98bb60 | Established |
| `__glle_TexGeniv` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x112c | calls slot, then sizes payload | target +0, name +4, values +8 | `__glTexGeniv_size` | +8 plus 4 per value | 24 | 32 | 0xd98bbc0 | Established |
| `__glle_ConvolutionParameterfvEXT` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x1310 | calls slot, then sizes payload | target +0, name +4, values +8 | `__glConvolutionParameterfvEXT_size` | +8 plus 4 per value | 24 | 32 | 0xd98d150 | Established |
| `__glle_ConvolutionParameterivEXT` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x1318 | calls slot, then sizes payload | target +0, name +4, values +8 | `__glConvolutionParameterivEXT_size` | +8 plus 4 per value | 24 | 32 | 0xd98d200 | Established |
| `__glle_ColorTableParameterfvSGI` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x140c | calls slot, then sizes payload | target +0, name +4, values +8 | `__glColorTableParameterfvSGI_size` | +8 plus 4 per value | 24 | 32 | 0xd98d950 | Established |
| `__glle_ColorTableParameterivSGI` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x1410 | calls slot, then sizes payload | target +0, name +4, values +8 | `__glColorTableParameterivSGI_size` | +8 plus 4 per value | 24 | 32 | 0xd98d9b0 | Established |
| `__glle_FragmentLightfvSGIX` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x14ec | calls slot, then sizes payload | target +0, name +4, values +8 | `__glFragmentLightfvSGIX_size` | +8 plus 4 per value | 24 | 32 | 0xd98e260 | Established |
| `__glle_FragmentLightivSGIX` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x14f4 | calls slot, then sizes payload | target +0, name +4, values +8 | `__glFragmentLightivSGIX_size` | +8 plus 4 per value | 24 | 32 | 0xd98e310 | Established |
| `__glle_FragmentMaterialfvSGIX` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x150c | calls slot, then sizes payload | target +0, name +4, values +8 | `__glFragmentMaterialfvSGIX_size` | +8 plus 4 per value | 24 | 32 | 0xd98e520 | Established |
| `__glle_FragmentMaterialivSGIX` in usr/gfx/arch/IP32CRM32/libGLcore.so | 0x1514 | calls slot, then sizes payload | target +0, name +4, values +8 | `__glFragmentMaterialivSGIX_size` | +8 plus 4 per value | 24 | 32 | 0xd98e5d0 | Established |

### o32 build

Records with no payload.

| Routine | Slot | Effect | Reads from record | Next record at | Instructions | Frame | Address | Label |
|---|---|---|---|---|---|---|---|---|
| `__glle_End` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x107c | calls slot, hands record back | nothing, no payload | the same address | 14 | 32 | 0xd98a48c | Established |
| `__glle_InitNames` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x113c | calls slot, hands record back | nothing, no payload | the same address | 14 | 32 | 0xd98bb10 | Established |
| `__glle_PopName` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x1148 | calls slot, hands record back | nothing, no payload | the same address | 14 | 32 | 0xd98bbcc | Established |
| `__glle_PopAttrib` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x1190 | calls slot, hands record back | nothing, no payload | the same address | 14 | 32 | 0xd98bf7c | Established |
| `__glle_LoadIdentity` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x12b0 | calls slot, hands record back | nothing, no payload | the same address | 14 | 32 | 0xd98c860 | Established |
| `__glle_PopMatrix` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x12cc | calls slot, hands record back | nothing, no payload | the same address | 14 | 32 | 0xd98ca2c | Established |
| `__glle_PushMatrix` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x12d0 | calls slot, hands record back | nothing, no payload | the same address | 14 | 32 | 0xd98ca64 | Established |
| `__glle_TagSampleBufferSGIX` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x13f4 | calls slot, hands record back | nothing, no payload | the same address | 14 | 32 | 0xd98d4a0 | Established |
| `__glle_StartInstrumentsSGIX` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x1464 | calls slot, hands record back | nothing, no payload | the same address | 14 | 32 | 0xd98d9f8 | Established |

Records that hold one or two vectors.

| Routine | Slot | Effect | Reads from record | Next record at | Instructions | Frame | Address | Label |
|---|---|---|---|---|---|---|---|---|
| `__glle_Rectdv` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x178c | calls slot with both vectors | two vectors, second at +16 | +32 bytes | 16 | 32 | 0xd98a9b0 | Established |
| `__glle_Rectfv` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x1794 | calls slot with both vectors | two vectors, second at +8 | +16 bytes | 16 | 32 | 0xd98a9f0 | Established |
| `__glle_Rectiv` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x179c | calls slot with both vectors | two vectors, second at +8 | +16 bytes | 16 | 32 | 0xd98aa30 | Established |
| `__glle_Rectsv` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x17a4 | calls slot with both vectors | two vectors, second at +4 | +8 bytes | 16 | 32 | 0xd98aa70 | Established |

Records that start with one parameter-name word.

| Routine | Slot | Effect | Reads from record | Size routine | Next record at | Instructions | Frame | Address | Label |
|---|---|---|---|---|---|---|---|---|---|
| `__glle_Fogfv` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x1090 | calls slot, then sizes payload | name at +0, values at +4 | `__glFogfv_size` | +4 plus 4 per value | 26 | 32 | 0xd98b254 | Established |
| `__glle_Fogiv` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x1098 | calls slot, then sizes payload | name at +0, values at +4 | `__glFogiv_size` | +4 plus 4 per value | 26 | 32 | 0xd98b304 | Established |
| `__glle_LightModelfv` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x10b8 | calls slot, then sizes payload | name at +0, values at +4 | `__glLightModelfv_size` | +4 plus 4 per value | 26 | 32 | 0xd98b4cc | Established |
| `__glle_LightModeliv` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x10c0 | calls slot, then sizes payload | name at +0, values at +4 | `__glLightModeliv_size` | +4 plus 4 per value | 26 | 32 | 0xd98b534 | Established |
| `__glle_SpriteParameterfvSGIX` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x1434 | calls slot, then sizes payload | name at +0, values at +4 | `__glSpriteParameterfvSGIX_size` | +4 plus 4 per value | 26 | 32 | 0xd98d740 | Established |
| `__glle_SpriteParameterivSGIX` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x143c | calls slot, then sizes payload | name at +0, values at +4 | `__glSpriteParameterivSGIX_size` | +4 plus 4 per value | 26 | 32 | 0xd98d7f0 | Established |
| `__glle_PointParameterfvSGIS` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x144c | calls slot, then sizes payload | name at +0, values at +4 | `__glPointParameterfvSGIS_size` | +4 plus 4 per value | 26 | 32 | 0xd98d8fc | Established |
| `__glle_PixelTexGenParameterivSGIS` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x14b8 | calls slot, then sizes payload | name at +0, values at +4 | `__glPixelTexGenParameterivSGIS_size` | +4 plus 4 per value | 26 | 32 | 0xd98dc0c | Established |
| `__glle_PixelTexGenParameterfvSGIS` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x14c0 | calls slot, then sizes payload | name at +0, values at +4 | `__glPixelTexGenParameterfvSGIS_size` | +4 plus 4 per value | 26 | 32 | 0xd98dcbc | Established |
| `__glle_FragmentLightModelfvSGIX` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x14fc | calls slot, then sizes payload | name at +0, values at +4 | `__glFragmentLightModelfvSGIX_size` | +4 plus 4 per value | 26 | 32 | 0xd98df64 | Established |
| `__glle_FragmentLightModelivSGIX` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x1504 | calls slot, then sizes payload | name at +0, values at +4 | `__glFragmentLightModelivSGIX_size` | +4 plus 4 per value | 26 | 32 | 0xd98e014 | Established |

Records that start with a target word and a parameter-name word.

| Routine | Slot | Effect | Reads from record | Size routine | Next record at | Instructions | Frame | Address | Label |
|---|---|---|---|---|---|---|---|---|---|
| `__glle_Lightfv` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x10a8 | calls slot, then sizes payload | target +0, name +4, values +8 | `__glLightfv_size` | +8 plus 4 per value | 27 | 32 | 0xd98b3f4 | Established |
| `__glle_Lightiv` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x10b0 | calls slot, then sizes payload | target +0, name +4, values +8 | `__glLightiv_size` | +8 plus 4 per value | 27 | 32 | 0xd98b460 | Established |
| `__glle_Materialfv` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x10d0 | calls slot, then sizes payload | target +0, name +4, values +8 | `__glMaterialfv_size` | +8 plus 4 per value | 27 | 32 | 0xd98b628 | Established |
| `__glle_Materialiv` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x10d8 | calls slot, then sizes payload | target +0, name +4, values +8 | `__glMaterialiv_size` | +8 plus 4 per value | 27 | 32 | 0xd98b694 | Established |
| `__glle_TexParameterfv` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x10f4 | calls slot, then sizes payload | target +0, name +4, values +8 | `__glTexParameterfv_size` | +8 plus 4 per value | 27 | 32 | 0xd98b81c | Established |
| `__glle_TexParameteriv` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x10fc | calls slot, then sizes payload | target +0, name +4, values +8 | `__glTexParameteriv_size` | +8 plus 4 per value | 27 | 32 | 0xd98b888 | Established |
| `__glle_TexEnvfv` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x110c | calls slot, then sizes payload | target +0, name +4, values +8 | `__glTexEnvfv_size` | +8 plus 4 per value | 27 | 32 | 0xd98b8f4 | Established |
| `__glle_TexEnviv` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x1114 | calls slot, then sizes payload | target +0, name +4, values +8 | `__glTexEnviv_size` | +8 plus 4 per value | 27 | 32 | 0xd98b960 | Established |
| `__glle_TexGendv` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x111c | calls slot, then sizes payload | target +0, name +4, values +8 | `__glTexGendv_size` | +8 plus 8 per value | 27 | 32 | 0xd98b9cc | Established |
| `__glle_TexGenfv` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x1124 | calls slot, then sizes payload | target +0, name +4, values +8 | `__glTexGenfv_size` | +8 plus 4 per value | 27 | 32 | 0xd98ba38 | Established |
| `__glle_TexGeniv` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x112c | calls slot, then sizes payload | target +0, name +4, values +8 | `__glTexGeniv_size` | +8 plus 4 per value | 27 | 32 | 0xd98baa4 | Established |
| `__glle_ConvolutionParameterfvEXT` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x1310 | calls slot, then sizes payload | target +0, name +4, values +8 | `__glConvolutionParameterfvEXT_size` | +8 plus 4 per value | 27 | 32 | 0xd98cdd0 | Established |
| `__glle_ConvolutionParameterivEXT` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x1318 | calls slot, then sizes payload | target +0, name +4, values +8 | `__glConvolutionParameterivEXT_size` | +8 plus 4 per value | 27 | 32 | 0xd98ce88 | Established |
| `__glle_ColorTableParameterfvSGI` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x140c | calls slot, then sizes payload | target +0, name +4, values +8 | `__glColorTableParameterfvSGI_size` | +8 plus 4 per value | 27 | 32 | 0xd98d588 | Established |
| `__glle_ColorTableParameterivSGI` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x1410 | calls slot, then sizes payload | target +0, name +4, values +8 | `__glColorTableParameterivSGI_size` | +8 plus 4 per value | 27 | 32 | 0xd98d5f4 | Established |
| `__glle_FragmentLightfvSGIX` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x14ec | calls slot, then sizes payload | target +0, name +4, values +8 | `__glFragmentLightfvSGIX_size` | +8 plus 4 per value | 27 | 32 | 0xd98ddf8 | Established |
| `__glle_FragmentLightivSGIX` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x14f4 | calls slot, then sizes payload | target +0, name +4, values +8 | `__glFragmentLightivSGIX_size` | +8 plus 4 per value | 27 | 32 | 0xd98deb0 | Established |
| `__glle_FragmentMaterialfvSGIX` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x150c | calls slot, then sizes payload | target +0, name +4, values +8 | `__glFragmentMaterialfvSGIX_size` | +8 plus 4 per value | 27 | 32 | 0xd98e0c8 | Established |
| `__glle_FragmentMaterialivSGIX` in usr/gfx/arch/IP32CRM/libGLcore.so | 0x1514 | calls slot, then sizes payload | target +0, name +4, values +8 | `__glFragmentMaterialivSGIX_size` | +8 plus 4 per value | 27 | 32 | 0xd98e180 | Established |
