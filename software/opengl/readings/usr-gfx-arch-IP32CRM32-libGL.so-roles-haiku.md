# Role readings: `usr/gfx/arch/IP32CRM32/libGL.so`

Routine roles read from the disassembly of each routine listed. An independent audit of these entries removed the ones it found wrong.

- `_stub` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80da70
  **Inferred.** A table of 89 identical trampolines that follow a leading break word. Each trampoline is five words: it loads the function pointer from the GOT slot at gp-0x7ff0, saves the return address in t7, jumps through t9, and puts its own index in t8 in the delay slot. The indices run from 0xab in the first trampoline to 0x103 in the last, one per step, so the table is a generic call-through with the index passed to the target.

- `__glXMalloc` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80e170
  **Inferred.** Returns zero for a zero size in a1. Otherwise it tail-calls malloc through the GOT slot at gp-0x7e54 with the size as the only argument, keeping gp and the return address on the stack around the call.

- `__glXInit` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80e1b8
  **Inferred.** Opens the device path at the data string base+0x4538 with flags 2 through `open`. A result of -1 sends it to `perror` on the same string and then `exit(1)`. On success it reads the page size with `getpagesize`, maps one 0x1000-byte page from the descriptor at address 0x1000 with `mmap` (protection 3), and closes the descriptor. A mapping that comes back at another address goes to `fprintf` on stderr. After that it copies doubleword entries from the `__glx_nopDispatch` address into a block at offset 0x1050, calls `__glXInitDummyContext`, and stores the block address at the cell 0x1014 in the zero page.

- `__glXCalloc` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80e3cc
  **Inferred.** Calls calloc through the GOT slot at gp-0x7e60 with count in a1 and size in a2, but only when both are nonzero. Otherwise it returns zero without calling anything.

- `__glXFindDisplay` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80e41c
  **Inferred.** Looks up the extension record for a display passed in a0. When the global `__glXExtensionInfo` is still empty it calls `XextCreateExtension` and stores the result there. It then calls `XextFindDisplay` with that record and the display. If nothing is found, it calls `XextAddDisplay` with the record, the display, an extension name table from the GOT, a table at base+0x5fb8, and the constant 0x11 in a4. It returns whatever record it ends up with.

- `__glXGetDrawableSize` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80e4d8
  **Inferred.** Reports a drawable's width and height through four output pointers in a0, a1, a2 and a3, which it saves at the top of the frame. The screen record is read from the drawable context at +0x4c and its type is read from the record at +0xe4 plus 0x2c. Types 4 and 5 ask `glXQueryGLXPbufferSGIX` for attributes 0x801d and 0x801e. Type 6 calls `XGetGeometry` on the stored drawable, and the other types call it on the drawable at +0xe0 and then `XTranslateCoordinates` with display +0xd8. A global flag at gp-0x7444 selects a shortcut path that returns two values from cached words at gp-0x743c and gp-0x7440.

- `Ioctl` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80e6a4
  **Inferred.** Takes a screen index in a0 and picks the file descriptor stored in the context table, one word per index, at context offset 4 + 4*index. It then tail-jumps to `ioctl` with that descriptor and the caller's request and argument in a1 and a2. The context pointer comes from the zero-page cell at 0x1014.

- `__glXOpenGraphicsDevice` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80e6c4
  **Inferred.** Validates a screen index in a0 against 0x41 and calls `__glXFatal` when it is out of range. If the descriptor for that index is still negative, it opens the device path at base+0x3528 with flags 0x802 and then calls `fcntl(fd, 2, 5)`. Failures of open, fcntl and the count query each go to `__glXFatal`. The count query is `ioctl(fd, 0x65, 0)`, and it sets how many entries the device reports. The count is stored at context +0x104 capped at 0x40, and a screen index above that count is fatal. The descriptor goes into the context table slot for that index.

- `__glXHWAttach` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80e850
  **Inferred.** Compares the current context's screen word at +0x108 with the screen number at +0x24 of the screen record reached from a0 +0x4c. When they differ it opens the graphics device for that screen through `__glXOpenGraphicsDevice`. It then queries the descriptor through `Ioctl` with request 0x70 (or 0x67 on the other branch) and a local buffer at its frame base. A negative result calls the error reporter from the GOT slot at +0x14 of the screen record with the message at base+0x3590 or base+0x3580. On success it stores the screen number from the record into +0x108 of the current context.

- `__glXOpenGraphics` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80e958
  **Inferred.** Opens the graphics device for the screen in the record at a0 +0x4c through `__glXOpenGraphicsDevice`, then calls `__glXHWAttach` with a0. It saves the second argument a1 at +0x28 of that record and returns the descriptor for the record's screen number, read from the context table.

- `__glXAllocHWContext` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80e9d4
  **Inferred.** Reads the descriptor for the context's screen index, which fails with -1 when that descriptor is negative. Otherwise it calls `Ioctl` with request 0x3e8 and a local word holding 2 and -1. A -1 result there goes to the error reporter with the message at base+0x35a0. A good result is stored at +0xcc of the context and returned.

- `__glXUnbindHWContextFromThread` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80eaa0
  **Inferred.** Does nothing when word 0 of the per-thread block that the cell at 0x1014 points to is zero. Otherwise it calls `Ioctl` with request 0x3ea on the descriptor at +0x24 of the screen record, then clears word 0 of that block whether or not the call succeeded.

- `__glXFreeHWContext` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80edd0
  **Inferred.** Calls `__glXHWAttach` on a0, then issues `Ioctl` with request 0x3e9 and the value at context +0xcc. When word 0 of the per-thread block at the cell 0x1014 equals that same value, the routine clears the word.

- `__glXPostError` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80ee5c
  **Inferred.** Builds an Xlib `XErrorEvent` on its stack. The display pointer is a0, the error code is in a1 and its minor code is in a2. The request code is what `__glXSetupForCommand` returns for a0. Serial is zero, and the resource id is a3. It calls the handler at `_XErrorFunction` when that is set, otherwise `_XDefaultError`.

- `__glXPostHiddenError` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80ef04
  **Inferred.** Returns at once unless the first byte of a1 is zero. It then reads the second byte. Codes 0xa and 0xb go to `__glXPostError` with that code. Other codes are dropped.

- `__glXInitVertexArrayState` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80f268
  **Inferred.** Allocates a 0xb8-byte block with malloc, stores it at +0xb4 of a0, and fills it. The routine stores zero in the flag and count words, 0x1406 in several type fields and 4 in the size fields, and zero bytes in the byte flags at offsets 0x98, 0x78, 0x5c, 0x3c, 0x20 and 0. The last two words it writes are 0x7fffffff at +0xb0 and +0xb4 of the new block.

- `__glXAddDrawableInterest` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80f374
  **Inferred.** Walks a linked list of drawable records headed by the word at gp-0x7448, comparing the drawable id in a0 with each record's first word. A match increments the count at +0x14 and returns that record. Otherwise it allocates a 0x4c-byte record with malloc and links it at the head. The drawable id is stored at +0 and +0x24, and the buffer callbacks go into +0x34 through +0x40 `__glXBufFree`, `__glXBufMalloc`, `__glXBufCalloc` and `__glXBufRealloc`. Its count starts at 1.

- `__glXInitDummyContext` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80f470
  **Inferred.** Clears a static context block at the data base plus 0x6ee8. It zeroes the words at +0x1c8, +0x1a0, +0x19c and +0x184, points the list fields at +0xc0, +0xc4 and +0xc8 back at the block, and stores 0xbc at +0xd0. The address of the block plus 0xc0 is written to +0x114 of the context found at the cell 0x1014.

- `__glx_Vertex4sv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80f4e8
  **Inferred.** Takes a pointer to four 16-bit values in a0. It writes a 12-byte render command with opcode 0x4c and copies the four halfwords into the command body. The write pointer lives at +4 of the per-thread block's +0x114 member, and when the advanced pointer passes the limit at +8, `__glXFlushRenderBuffer` runs.

- `__glx_ClipPlane` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80f570
  **Inferred.** Writes a 0x28-byte render command with opcode 0x4d. Four 8-byte `memcpy` calls move the doublewords at offsets 0, 8, 0x10 and 0x18 of the pointer in a1 into body offsets 4, 0xc, 0x14 and 0x1c. The integer in a0 goes to body offset 0x24, and the pointer bump and limit check follow.

- `__glx_PolygonMode` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80f654
  **Inferred.** Emits a 12-byte command with opcode 0x65, carrying a0 at +4 and a1 at +8. The write pointer lives at +4 of the state reached from the cell 0x1014. Overflow goes through `__glXFlushRenderBuffer`.

- `__glx_Vertex4s` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80f6c8
  **Inferred.** Packs four halfword register arguments a0 to a3 into a 12-byte command with opcode 0x4c. The halfwords sit at body offsets 4, 6, 8 and 0xa. The write pointer is then bumped by 12, and `__glXFlushRenderBuffer` runs when the buffer limit is reached.

- `__glx_Vertex4iv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80f744
  **Inferred.** Copies four 32-bit words from the pointer in a0 into a 0x14-byte command with opcode 0x4b. The words land at body offsets 4, 8, 0xc and 0x10. The write pointer advances by 0x14 with the usual limit check.

- `__glx_Vertex4i` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80f7cc
  **Inferred.** Takes four 32-bit register arguments a0 to a3 and writes them as a 0x14-byte command with opcode 0x4b. The values are stored at body offsets 4, 8, 0xc and 0x10 in argument order.

- `__glx_ColorMaterial` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80f848
  **Inferred.** Emits a 12-byte command with opcode 0x4e. It stores a0 at offset 4 and a1 at offset 8, and then runs the usual pointer bump and flush check.

- `__glx_PointSize` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80f8bc
  **Inferred.** Emits an 8-byte command with opcode 0x64. The single-precision value in f12 is stored at body offset 4 with `swc1`.

- `__glx_InitNames` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80f928
  **Inferred.** Takes no arguments. It appends a 4-byte command with opcode 0x79 and no body, then advances the write pointer.

- `__glx_LoadName` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80f990
  **Inferred.** Appends an 8-byte command with opcode 0x7a. The name in a0 is stored at body offset 4.

- `__glx_Fogf` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80f9fc
  **Inferred.** Appends a 12-byte command with opcode 0x50. The integer in a0 goes to body offset 4 and the single-precision value in f13 goes to offset 8.

- `__glx_CullFace` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80fa6c
  **Inferred.** Appends an 8-byte command with opcode 0x4f. The mode word in a0 is stored at body offset 4.

- `__glx_Vertex4fv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80fad8
  **Inferred.** Copies four single-precision values from the pointer in a0 into a 0x14-byte command with opcode 0x4a, using `lwc1` and `swc1` at body offsets 4, 8, 0xc and 0x10.

- `__glx_TexParameterf` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80fb60
  **Inferred.** Writes a 0x10-byte command with opcode 0x69. The target in a0 goes to body offset 4, the parameter name in a1 to offset 8, and the float in f14 to offset 0xc.

- `__glx_TexParameterfv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80fbd8
  **Inferred.** Asks `__glXTexParameterfv_size` for an element count from the parameter name, then writes a variable-length command with opcode 0x6a. The length field works out to 12 plus four bytes per element. The data from the pointer in a2 is copied with `memcpy` after the header.

- `__glx_TexParameteri` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80fcb8
  **Inferred.** Writes a 0x10-byte command with opcode 0x6b. The three integer arguments land at body offsets 4 (a0), 8 (a1) and 0xc (a2).

- `__glx_TexParameteriv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80fd30
  **Inferred.** Variable-length twin of the float form. It takes the element count from `__glXTexParameteriv_size`, writes opcode 0x6c, and copies count times four bytes of data from a2 after a 12-byte header.

- `__glx_TexGeni` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80fe10
  **Inferred.** Emits a 0x10-byte command with opcode 0x77, carrying three integer arguments at body offsets 4, 8 and 0xc.

- `__glx_ShadeModel` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80fe88
  **Inferred.** Emits an 8-byte command with opcode 0x68. The mode word in a0 goes to body offset 4.

- `__glx_PassThrough` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80fef4
  **Inferred.** Emits an 8-byte command with opcode 0x7b. The float in f12 is stored at body offset 4.

- `__glx_Vertex4f` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80ff60
  **Inferred.** Writes four single-precision register arguments f12 to f15 into a 0x14-byte command with opcode 0x4a, at body offsets 4, 8, 0xc and 0x10.

- `__glx_Scissor` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd80ffd8
  **Inferred.** Writes a 0x14-byte record for a scissor call. The four integer arguments a0 to a3 go to record +4, +8, +0xc and +0x10 respectively, then the halfword 0x67 goes at +2 and the length 0x14 at +0. The write pointer moves on by 0x14. If the new pointer is above the end limit, the routine calls `__glXFlushRenderBuffer` with the buffer and the new pointer.

- `__glx_Vertex4dv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd810054
  **Inferred.** Takes a0 as the address of four doubles and copies them into a 0x24-byte record. Each of the four 8-byte values is moved by `memcpy` from a0 +0, +8, +0x10 and +0x18 into record +4, +0xc, +0x14 and +0x1c. The halfword 0x49 goes at +2 and the length 0x24 at +0. Past the end limit the routine calls `__glXFlushRenderBuffer` with the buffer and the new write pointer, then returns.

- `__glx_PopName` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81012c
  **Inferred.** Takes no arguments and writes a 4-byte record with the length 4 at +0 and the halfword 0x7c at +2, then advances the write pointer by 4. The end limit at buffer +8 is compared with the new pointer, and above it the routine calls `__glXFlushRenderBuffer` with the buffer and that pointer.

- `__glx_Vertex4d` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd810194
  **Inferred.** Spills the four double arguments f12 to f15 into its frame at sp +0x20, +0x28, +0x30 and +0x38. It then copies each 8-byte value with `memcpy` into record +4, +0xc, +0x14 and +0x1c, under the header 0x24 and opcode 0x49. The pointer check follows the same pattern as the other vertex stubs, with the call to `__glXFlushRenderBuffer` on the overflow path.

- `__glx_Fogfv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd810270
  **Inferred.** Calls `__glXFogfv_size` with the pname in a0 to learn how many floats it takes, and converts that count to bytes (count times 4). The record holds the pname word at +4 and the floats copied from a1 by `memcpy` at +8. Its length is the byte count plus 11, rounded down to a multiple of 4, which is 8 plus the byte count. The opcode 0x51 goes at +2, and the write pointer moves on by that length.

- `__glx_LightModelf` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81033c
  **Inferred.** Stores the integer in a0 at record +4 and the single-precision value in f13 at +8. The record is 0xc bytes long with the halfword 0x5a at +2. If the new write pointer is past the end limit, the routine calls `__glXFlushRenderBuffer` with the buffer and the pointer.

- `__glx_Materialfv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8103ac
  **Inferred.** Calls `__glXMaterialfv_size` with the pname in a1, which it passes in a0, and multiplies the result by 4 for the byte count. The face in a0 sits at record +4, the pname at +8, and `memcpy` moves the float array from a2 to +0xc. The record length is the byte count plus 0xc, rounded to a multiple of 4, and the opcode 0x61 goes at +2. Overflow calls `__glXFlushRenderBuffer` with the buffer and the new pointer.

- `__glx_Lightiv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81048c
  **Inferred.** Gets the value count from `__glXLightiv_size` for the pname in a1 and turns it into bytes. The light in a0 is written at record +4 and the pname at +8, with the integer array copied by `memcpy` to +0xc. The length is the byte count plus 0xc, and the opcode 0x59 is stored at +2. The overflow path ends in a call to `__glXFlushRenderBuffer`.

- `__glx_Lighti` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81056c
  **Inferred.** Packs three integers into a 0x10-byte record: a0 at +4, a1 at +8 and a2 at +0xc. The opcode 0x58 goes at +2 and the length 0x10 at +0. The write pointer is moved to the end of the record and compared with the end limit, and above it the routine hands the buffer and the pointer to `__glXFlushRenderBuffer`.

- `__glx_Lightfv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8105e4
  **Inferred.** The value count for the pname in a1 comes from `__glXLightfv_size`, and the routine computes the byte count from it. The light in a0 and the pname go to record +4 and +8, and the float array goes through `memcpy` to +0xc. The length is the byte count plus 0xc, rounded to a multiple of 4, and the opcode 0x57 goes at +2. Past the end limit, the routine flushes through `__glXFlushRenderBuffer`.

- `__glx_TexEnvfv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8106c4
  **Inferred.** Sizes the parameter list with `__glXTexEnvfv_size`, using the pname in a1, then multiplies by 4. The target in a0 is stored at record +4 and the pname at +8, and `memcpy` copies the floats to +0xc. The opcode 0x70 is written at +2 and the length is the byte count plus 0xc. A pointer past the end limit leads to `__glXFlushRenderBuffer`.

- `__glx_Materialf` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8107a4
  **Inferred.** Lays out a 0x10-byte record: a0 at +4, a1 at +8 and the float in f14 at +0xc. The halfword 0x60 is written at +2 and the length 0x10 at +0. The write pointer advances by 0x10, and if it is past the buffer's end limit, the routine calls `__glXFlushRenderBuffer`.

- `__glx_LineWidth` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81081c
  **Inferred.** Stores the single float in f12 at record +4 in an 8-byte record. The opcode 0x5f goes at +2 and the length 8 at +0. The write pointer moves on by 8, and the overflow path calls `__glXFlushRenderBuffer` with the buffer and that pointer.

- `__glx_LineStipple` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd810888
  **Inferred.** Builds a 0xc-byte record with a0 as a 32-bit word at +4 and a1 as a halfword at +8. The record carries the opcode 0x5e at +2 and the length 0xc at +0. The write pointer advances by 0xc and is checked against the buffer's end limit.

- `__glx_LightModeliv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8108fc
  **Inferred.** Asks `__glXLightModeliv_size` how many integers the pname needs. The pname in a0 goes to record +4 and the integer array is copied from a1 by `memcpy` to +8. The length is the byte count plus 8, the opcode is 0x5d at +2, and the write pointer moves on by that length.

- `__glx_LightModeli` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8109c8
  **Inferred.** Writes a 0xc-byte record of two integers: a0 at +4 and a1 at +8. The opcode 0x5c is put at +2 and the length 0xc at +0. The pointer is advanced by 0xc, and past the end limit it calls `__glXFlushRenderBuffer`.

- `__glx_LightModelfv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd810a3c
  **Inferred.** The routine calls `__glXLightModelfv_size` with the pname in a0 to get the number of floats, then scales by 4. The pname is stored at record +4, the float array is copied from a1 to +8 with `memcpy`, and the record length is the byte count plus 8. The opcode 0x5b goes at +2, and a write past the limit reaches `__glXFlushRenderBuffer`.

- `__glx_TexEnvf` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd810b08
  **Inferred.** Places a0 at +4, a1 at +8 and the float f14 at +0xc in a 0x10-byte record. The record gets the opcode 0x6f at +2 and the length 0x10 at +0. The write pointer moves by 0x10 and the routine flushes if it is past the limit.

- `__glx_TexEnvi` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd810b80
  **Inferred.** Writes three integers into a 0x10-byte record: a0 at +4, a1 at +8 and a2 at +0xc. The halfword 0x71 goes at +2 and the length 0x10 at +0. Past the end limit, the buffer and the new pointer go to `__glXFlushRenderBuffer`.

- `__glx_Lightf` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd810bf8
  **Inferred.** Fills a 0x10-byte record with a0 at +4, a1 at +8 and f14 at +0xc. The opcode 0x56 is stored at +2 and the length 0x10 at +0. If the advanced write pointer exceeds the end limit at buffer +8, the routine calls `__glXFlushRenderBuffer`.

- `__glx_Hint` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd810c70
  **Inferred.** Writes a0 at record +4 and a1 at +8 in a 0xc-byte record. The record carries the opcode 0x55 at +2 and the length 0xc at +0. The pointer is advanced by 0xc, and an overflow calls `__glXFlushRenderBuffer`.

- `__glx_TexGeniv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd810ce4
  **Inferred.** Sizes the parameter list with `__glXTexGeniv_size`, called with the pname from a1, and converts the count to bytes. The coordinate in a0 goes to record +4 and the pname to +8, and `memcpy` moves the integers from a1 to +0xc. The opcode 0x78 is written at +2, and the length is the byte count plus 0xc. An overflow calls `__glXFlushRenderBuffer` with the buffer and the new write pointer.

- `__glx_FrontFace` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd810dc4
  **Inferred.** Records the single argument a0 at +4 of an 8-byte record, with the opcode 0x54 at +2 and the length 8 at +0. The write pointer moves by 8, and past the end limit the routine calls `__glXFlushRenderBuffer`.

- `__glx_Fogiv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd810e30
  **Inferred.** Calls `__glXFogiv_size` on the pname in a0 and scales the result to a byte count. The pname is written at record +4 and the integer array from a1 is copied by `memcpy` to +8. The length is the byte count plus 8, the opcode is 0x53 at +2, and an overflow goes to `__glXFlushRenderBuffer`.

- `__glx_Fogi` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd810efc
  **Inferred.** Creates a 0xc-byte record with a0 at +4 and a1 at +8. The opcode 0x52 goes at +2 and the length 0xc at +0. The routine advances the write pointer by 0xc and, when the new pointer passes the end limit, calls `__glXFlushRenderBuffer`.

- `__glx_Materialiv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd810f70
  **Inferred.** Uses `__glXMaterialiv_size` for the pname in a1 to find the integer count, then converts it to bytes. The face in a0 goes to record +4, the pname to +8, and the integer array is copied by `memcpy` to +0xc. The length is the byte count plus 0xc and the opcode 0x63 goes at +2. Past the end limit the routine calls `__glXFlushRenderBuffer`.

- `__glx_TexEnviv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd811050
  **Inferred.** Asks `__glXTexEnviv_size` for the number of integers the pname takes, then multiplies by 4. The target in a0 and the pname in a1 are written at record +4 and +8. The integer array is copied to +0xc by `memcpy`, the length is the byte count plus 0xc, and the opcode 0x72 is written at +2.

- `__glx_TexGend` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd811130
  **Inferred.** Copies the double argument f14 from its frame slot at sp +0x40 into record +4 with an 8-byte `memcpy`. The coordinate from a0 goes to +0xc and the pname from a1 to +0x10. The record is 0x14 bytes, with the opcode 0x73 at +2 and the length 0x14 at +0. The write pointer moves by 0x14, and past the limit the routine calls `__glXFlushRenderBuffer` with the buffer and the new pointer.

- `__glx_TexGendv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8111e4
  **Inferred.** Calls `__glXTexGendv_size` with the pname in a1 and multiplies the result by 8 because each value is a double. The coordinate in a0 goes to record +4 and the pname to +8, and `memcpy` moves the double array from a1 to +0xc. The length is the byte count plus 0xc, rounded to a multiple of 4, and the opcode 0x74 goes at +2.

- `__glx_TexGenf` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8112c4
  **Inferred.** Writes a0 at +4, a1 at +8 and the float f14 at +0xc of a 0x10-byte record. The opcode 0x75 is stored at +2 and the length 0x10 at +0. The pointer advances by 0x10, and an overflow calls `__glXFlushRenderBuffer`.

- `__glx_TexGenfv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81133c
  **Inferred.** Gets the float count from `__glXTexGenfv_size` for the pname in a1 and converts it to bytes. The coordinate in a0 and the pname go to record +4 and +8, the floats are copied from a1 by `memcpy` to +0xc, and the opcode 0x76 is written at +2. An overflow leads to `__glXFlushRenderBuffer`.

- `__glx_Materiali` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81141c
  **Inferred.** Packs three integers into a 0x10-byte record: a0 at +4, a1 at +8 and a2 at +0xc. The opcode 0x62 goes at +2 and the length 0x10 at +0. The write pointer is advanced by 0x10 and checked against the end limit, and past it the routine calls `__glXFlushRenderBuffer`.

- `__glx_Vertex3d` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd811494
  **Inferred.** Spills the doubles f12, f13 and f14 into the frame at sp +0x20, +0x28 and +0x30. Each is copied by `memcpy` into record +4, +0xc and +0x14 of a 0x1c-byte record with the opcode 0x45 at +2 and the length 0x1c at +0. The new pointer is compared with the end limit, and the overflow path calls `__glXFlushRenderBuffer`.

- `__glx_TexCoord1d` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd811558
  **Inferred.** Spills the double f12 to sp +0x20 and copies it with an 8-byte `memcpy` into record +4. The record is 0xc bytes with the opcode 0x31 at +2 and the length 0xc at +0. The write pointer is moved to the end of the record and checked against the end limit, and an overflow calls `__glXFlushRenderBuffer` with the buffer and that pointer.

- `__glx_Rectsv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8115ec
  **Inferred.** Loads the two signed halfwords at a0 +0 and +2 and the two at a1 +0 and +2. They are stored as halfwords at record +4, +6, +8 and +0xa in a 0xc-byte record with the opcode 0x30 at +2 and the length 0xc at +0. The overflow path calls `__glXFlushRenderBuffer`.

- `__glx_Rects` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd811678
  **Inferred.** Takes four halfword arguments a0 to a3 and stores them at record +4, +6, +8 and +0xa, in that argument order. The record is 0xc bytes, with the halfword 0x30 at +2 and the length 0xc at +0. The write pointer advances by 0xc, and if it exceeds the end limit, the routine calls `__glXFlushRenderBuffer`.

- `__glx_Rectiv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8116f4
  **Inferred.** Copies the two 32-bit words at a0 into record +4 and +8, and the two words at a1 into +0xc and +0x10. The 0x14-byte record carries the opcode 0x2f at +2 and the length 0x14 at +0. The routine calls `__glXFlushRenderBuffer` when the new pointer is above the limit at buffer +8.

- `__glx_Rectdv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd811780
  **Inferred.** Moves four doubles into a 0x24-byte record with four 8-byte `memcpy` calls: a0 +0 to record +4, a0 +8 to +0xc, a1 +0 to +0x14 and a1 +8 to +0x1c. The opcode 0x2d sits at +2 and the length 0x24 at +0. Past the end limit, the buffer and the new write pointer go to `__glXFlushRenderBuffer`.

- `__glx_Rectf` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd811864
  **Inferred.** Stores the four single floats f12, f13, f14 and f15 at record +4, +8, +0xc and +0x10. The record is 0x14 bytes with the opcode 0x2e at +2 and the length 0x14 at +0. The write pointer moves by 0x14, and past the end limit the routine calls `__glXFlushRenderBuffer`.

- `__glx_Rectfv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8118dc
  **Inferred.** Copies two single floats from a0 (offsets 0 and 4) to record +4 and +8, and two from a1 (offsets 0 and 4) to +0xc and +0x10, using `lwc1` and `swc1` with no call. The record is 0x14 bytes with the opcode 0x2e at +2 and the length 0x14 at +0. When the advanced pointer is past the end limit, the routine calls `__glXFlushRenderBuffer`.

- `__glx_Recti` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd811968
  **Inferred.** Encodes four integer arguments: a0 to a3 are stored at W+4, W+8, W+0xc and W+0x10. The header puts length 0x14 at W+0 and opcode 0x2f at W+2, and the cursor advances by 0x14. When the new cursor passes L, the flush gets the buffer in a0 and the new cursor in a1.

- `__glx_TexCoord1dv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8119e4
  **Inferred.** Takes a pointer to one double in a0 and hands its eight bytes to memcpy, destination W+4. The header is a 0xc-byte record tagged 0x31. The cursor moves to W+0xc before the limit test, and the flush receives only the buffer.

- `__glx_TexCoord2dv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd811a74
  **Inferred.** Two memcpy calls copy the doubles at a0 and a0+8 into W+4 and W+0xc. Length 0x14 and opcode 0x35 fill the header. The pointer in a0 is parked in s5 so the second source can be formed after the first call returns.

- `__glx_TexCoord2d` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd811b24
  **Inferred.** The two double arguments arrive in f12 and f13 and are spilled to 0x20(sp) and 0x28(sp). Each spill is then memcpy'd into the record, at W+4 and W+0xc, under the same 0x14 header with opcode 0x35.

- `__glx_TexCoord1sv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd811bd0
  **Inferred.** A signed halfword is read from a0 with lh and stored at W+4, and W+6 is not written. The header is an 8-byte record tagged 0x34, and the cursor advances 8 bytes.

- `__glx_TexCoord1s` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd811c40
  **Inferred.** The halfword argument in a0 goes straight to W+4 with sh, with no load, since the caller already placed it in a register. Opcode 0x34 and length 8 precede the cursor move to W+8.

- `__glx_TexCoord1f` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd811cac
  **Inferred.** Stores the float in f12 at W+4 under an 8-byte record with opcode 0x32. The buffer stays in a0 from entry onward, so the overflow call goes out without any register set-up.

- `__glx_TexCoord1fv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd811d18
  **Inferred.** Loads one single from a0 through f0 with lwc1 and writes it to W+4. The tag is 0x32, the same value the scalar entry writes, and the record is 8 bytes.

- `__glx_TexCoord1i` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd811d88
  **Inferred.** The word in a0 is stored at W+4. The header is 8 bytes with opcode 0x33. The buffer is carried in a3 and moved into a0 when the flush is needed.

- `__glx_TexCoord1iv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd811df4
  **Inferred.** A word is fetched through a0 into a2 and written to W+4. Tag 0x33 with length 8, then the limit comparison against L.

- `__glx_Rectd` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd811e64
  **Inferred.** Four doubles in f12 through f15 are spilled to frame offsets 0x20 through 0x38, then four memcpy calls place them at W+4, W+0xc, W+0x14 and W+0x1c. The 0x24-byte record carries opcode 0x2d, and the cursor advances by the same 0x24.

- `__glx_RasterPos3s` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd811f40
  **Inferred.** Three halfword arguments are stored in the order a2, a1, a0 at W+8, W+6 and W+4. The header is 0xc bytes with opcode 0x28 at W+2. On overflow the flush is passed the buffer in a0 and the new cursor in a1.

- `__glx_RasterPos3iv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd811fb8
  **Inferred.** Three words are fetched from a0 at offsets 0, 4 and 8 through t1, t0 and a2, then stored at W+4, W+8 and W+0xc. The request is 0x10 bytes tagged 0x27, and the buffer is held in a3.

- `__glx_RasterPos3i` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd812038
  **Inferred.** Integers a0, a1 and a2 land at W+4, W+8 and W+0xc, with the a2 store issued first. The length is 0x10 and the opcode 0x27. Buffer and cursor travel to the flush in t1 and t0, which become a0 and a1 at the call.

- `__glx_RasterPos3fv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8120b0
  **Inferred.** Three singles at a0 are loaded through f2, f1 and f0 with lwc1 and written with swc1 to W+4, W+8 and W+0xc. The header is 0x10 bytes long and opcode 0x26.

- `__glx_RasterPos2sv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd812130
  **Inferred.** Halfwords from a0 and a0+2 are moved through t0 and a2 into W+4 and W+6. The record is 8 bytes with opcode 0x24.

- `__glx_RasterPos3d` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8121a8
  **Inferred.** Doubles from f12, f13 and f14 go to frame slots 0x20, 0x28 and 0x30. Three memcpy calls then fill W+4, W+0xc and W+0x14 behind a 0x1c-byte header tagged 0x25.

- `__glx_RasterPos3dv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81226c
  **Inferred.** Three doubles are read through the pointer in a0, which s1 keeps across the three memcpy calls filling W+4, W+0xc and W+0x14. The record is 0x1c bytes with opcode 0x25, and the buffer is held in s2 for the limit test.

- `__glx_RasterPos3f` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd812330
  **Inferred.** The floats in f12, f13 and f14 are written with swc1 at W+4, W+8 and W+0xc. A 0x10-byte header carries opcode 0x26. The flush call reuses a0 with no argument set-up.

- `__glx_RasterPos3sv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8123a4
  **Inferred.** Halfwords at a0 offsets 0, 2 and 4 are read with lh and stored at W+4, W+6 and W+8. The header is 0xc bytes with opcode 0x28, and the cursor advances 0xc.

- `__glx_RasterPos4sv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd812424
  **Inferred.** Four halfwords are read from a0 at offsets 0 through 6 and placed at W+4 through W+0xa. The header is 0xc bytes long and carries opcode 0x2c.

- `__glx_RasterPos4s` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8124ac
  **Inferred.** The halfword register arguments a0 to a3 are packed at W+4, W+6, W+8 and W+0xa, with the a3 store first. Opcode 0x2c and length 0xc go in the header. The flush takes the buffer from t2 and the new cursor from t1.

- `__glx_RasterPos4iv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd812528
  **Inferred.** Four words at a0, a0+4, a0+8 and a0+0xc are copied to W+4 through W+0x10 using t2, t1, t0 and a2 as scratch. The request is 0x14 bytes tagged 0x2b.

- `__glx_RasterPos4i` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8125b0
  **Inferred.** Integer arguments a3, a2, a1 and a0 are written in that order to W+0x10, W+0xc, W+8 and W+4. The header holds length 0x14 and opcode 0x2b. Overflow passes buffer and cursor to the flush.

- `__glx_RasterPos4d` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81262c
  **Inferred.** The doubles in f12 through f15 are spilled to 0x20 through 0x38 of the frame. Four memcpy calls copy them to W+4, W+0xc, W+0x14 and W+0x1c, after a 0x24-byte header with opcode 0x29.

- `__glx_RasterPos4dv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd812708
  **Inferred.** Four doubles addressed from a0 at offsets 0, 8, 0x10 and 0x18 are copied by four memcpy calls. The source pointer lives in s1 across them. The record is 0x24 bytes with opcode 0x29, and the flush takes the buffer from s2.

- `__glx_RasterPos4f` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8127e0
  **Inferred.** Single-precision arguments f12 through f15 are stored with swc1 at W+4 through W+0x10. The 0x14-byte header is tagged 0x2a, and the flush call needs nothing new in a0.

- `__glx_RasterPos4fv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd812858
  **Inferred.** Loads four floats through a0 into f3, f2, f1 and f0 with lwc1, then stores them at W+4 through W+0x10. Length 0x14, opcode 0x2a.

- `__glx_TexCoord2f` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8128e0
  **Inferred.** The float arguments f12 and f13 land at W+4 and W+8. A 0xc-byte header carries opcode 0x36, and the buffer that entered in a0 is still there when the flush is called.

- `__glx_Vertex2iv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd812950
  **Inferred.** Two words, from a0 and a0+4, are copied to W+4 and W+8. The header is 0xc bytes with opcode 0x43, and the buffer comes back out of a3 for the limit test.

- `__glx_Vertex2i` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8129c8
  **Inferred.** Integers a0 and a1 are stored at W+4 and W+8, with the cursor in a3 and the buffer in t0. On overflow t0 becomes a0 and a3 becomes a1 for the flush. The header is 0xc bytes with opcode 0x43.

- `__glx_Vertex2fv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd812a3c
  **Inferred.** Floats at a0 and a0+4 are loaded with lwc1 through f1 and f0 and stored at W+4 and W+8. Header 0xc bytes, opcode 0x42.

- `__glx_Vertex2f` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd812ab4
  **Inferred.** Float register arguments f12 and f13 go to W+4 and W+8 with swc1. The 0xc-byte header is tagged 0x42, and the flush is made with the entry-time buffer in a0.

- `__glx_TexCoord4s` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd812b24
  **Inferred.** The halfword arguments a0 to a3 are stored at W+4, W+6, W+8 and W+0xa, in the order a3, a2, a1, a0. The header holds length 0xc and opcode 0x40. Overflow hands the buffer to a0 and the new cursor to a1.

- `__glx_TexCoord4sv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd812ba0
  **Inferred.** Halfwords at offsets 0, 2, 4 and 6 of a0 are loaded through t2, t1, t0 and a2 and written to W+4 through W+0xa. Opcode 0x40 with length 0xc.

- `__glx_Vertex2d` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd812c28
  **Inferred.** Two doubles spilled from f12 and f13 are placed at W+4 and W+0xc by two memcpy calls. The request is 0x14 bytes tagged 0x41, and the flush takes the buffer from s1.

- `__glx_Vertex2dv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd812cd4
  **Inferred.** The doubles at a0 and a0+8 are copied with two memcpy calls to W+4 and W+0xc, with a0 saved in s5 between them. The header is 0x14 bytes with opcode 0x41.

- `__glx_Vertex2s` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd812d84
  **Inferred.** Halfword arguments a0 and a1 are written at W+4 and W+6, and an 8-byte header tagged 0x44 is placed at W+0. Overflow passes t0 and a3 to the flush.

- `__glx_Vertex3sv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd812df8
  **Inferred.** Three halfwords from a0 at offsets 0, 2 and 4 pass through t1, t0 and a2 into W+4, W+6 and W+8. Header 0xc bytes, opcode 0x48.

- `__glx_Vertex3s` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd812e78
  **Inferred.** Three halfword arguments a0, a1 and a2 are stored at W+4, W+6 and W+8, with the a2 store first. The header is 0xc bytes with opcode 0x48, and the flush takes the buffer from t1 and the new cursor from t0.

- `__glx_Vertex3iv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd812ef0
  **Inferred.** Packs a three-integer vertex from the array at a0 into a 16-byte request. The header is the halfword 0x10 at record offset 0 and the halfword 0x47 at offset 2, and the three words land at offsets 4, 8 and 0xc. The advanced write pointer is stored back at state +4, and when it passes the limit word the routine calls `__glXFlushRenderBuffer` with the state pointer.

- `__glx_Vertex3i` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd812f70
  **Inferred.** Writes the three integer arguments a0, a1 and a2 straight into a 16-byte request at offsets 4, 8 and 0xc. The length halfword is 0x10 and the opcode halfword is 0x47. On overflow the flush routine receives the state pointer and the new write pointer, so the flush is the only call the routine makes.

- `__glx_Vertex2sv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd812fe8
  **Inferred.** Copies two shorts from the array at a0 into an 8-byte request with opcode 0x44. The short at a0+0 goes to offset 4 and the short at a0+2 to offset 6. The write pointer advances by 8 and the flush routine is called with the state pointer only.

- `__glx_Vertex3dv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd813060
  **Inferred.** Builds a 28-byte request, length 0x1c and opcode 0x45, for a three-double vertex. Three 8-byte copies, each with a2 set to 8, move the doubles at a0+0, a0+8 and a0+0x10 to record offsets 4, 0xc and 0x14 through the routine in GOT slot gp-0x7e18. The pointer advances by 0x1c and the flush routine gets the state pointer when it overruns.

- `__glx_Vertex3f` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd813124
  **Inferred.** Stores the three float arguments f12, f13 and f14 at record offsets 4, 8 and 0xc of a 16-byte request. The header is length 0x10 and opcode 0x46. The write pointer is stored back at the state word +4 before the limit check.

- `__glx_Vertex3fv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd813198
  **Inferred.** Copies a three-float vertex through float registers from the array at a0 into a 16-byte request with opcode 0x46. The destination offsets are 4, 8 and 0xc, and an overflow sends the state pointer to the flush routine.

- `__glx_TexCoord4iv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd813218
  **Inferred.** Packs a four-integer texture coordinate from a0 into a 20-byte request. The opcode halfword is 0x3f and the length halfword 0x14. Four words are written at record offsets 4, 8, 0xc and 0x10, then the pointer is advanced by 0x14 and checked against the limit.

- `__glx_TexCoord3f` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8132a0
  **Inferred.** Emits a three-float texture coordinate as a 16-byte request. f12, f13 and f14 go to offsets 4, 8 and 0xc, the opcode halfword is 0x3a, and the length halfword is 0x10. An overflow calls the flush routine with the state pointer as its only argument.

- `__glx_TexCoord3dv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd813314
  **Inferred.** Writes a three-double texture coordinate taken from the array at a0 into a 28-byte request with opcode 0x39. The three 8-byte copies go to offsets 4, 0xc and 0x14 by way of the GOT slot gp-0x7e18 routine, and the state pointer is flushed when the pointer passes the limit.

- `__glx_TexCoord3d` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8133d8
  **Inferred.** Spills the double arguments f12, f13 and f14 to the stack at sp+0x20, sp+0x28 and sp+0x30, then copies each 8-byte value into a 28-byte request at offsets 4, 0xc and 0x14. The opcode is 0x39 and the copy routine is the one in GOT slot gp-0x7e18.

- `__glx_TexCoord2sv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81349c
  **Inferred.** Fills an 8-byte request with opcode 0x38 from the two shorts at a0. Offset 4 gets the short at a0+0 and offset 6 the short at a0+2. The pointer is advanced by 8 and stored back before the limit comparison.

- `__glx_TexCoord2fv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd813514
  **Inferred.** Packs a two-float texture coordinate from a0 into a 12-byte request with opcode 0x36. The two floats are copied through f0 and f1 to offsets 4 and 8, and the routine calls `__glXFlushRenderBuffer` with the state pointer in a0 when the advanced pointer exceeds the limit.

- `__glx_TexCoord2i` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81358c
  **Inferred.** Stores the integer arguments a0 and a1 at offsets 4 and 8 of a 12-byte request, using length 0xc and opcode 0x37. The new write pointer goes back to the state word at +4, and the flush routine is used only on overflow.

- `__glx_TexCoord2iv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd813600
  **Inferred.** Reads two words from the array at a0 and writes them to offsets 4 and 8 of a 12-byte request. The header carries opcode 0x37 and length 0xc, and the pointer is advanced by 0xc before the overflow check.

- `__glx_TexCoord2s` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd813678
  **Inferred.** Places the two short arguments a0 and a1 at record offsets 4 and 6, with length halfword 8 and opcode halfword 0x38. The write pointer is stored back at state +4 and the flush routine handles an overrun.

- `__glx_TexCoord3fv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8136ec
  **Inferred.** Copies a three-float texture coordinate from the array at a0 into a 16-byte request with opcode 0x3a. The floats are moved through float registers to offsets 4, 8 and 0xc, and the flush routine is called after the pointer store when the record overruns.

- `__glx_TexCoord4dv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81376c
  **Inferred.** Builds a 36-byte request, length 0x24 and opcode 0x3d, for a four-double texture coordinate. Four 8-byte copies read a0 at offsets 0, 8, 0x10 and 0x18 and write them to record offsets 4, 0xc, 0x14 and 0x1c through the GOT slot gp-0x7e18 routine. The routine then stores the advanced pointer at state +4 and flushes on overrun.

- `__glx_TexCoord4f` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd813844
  **Inferred.** Emits a four-float texture coordinate: f12, f13, f14 and f15 land at record offsets 4, 8, 0xc and 0x10. The header is length 0x14 and opcode 0x3e, and the write pointer is advanced by 0x14 before the limit test.

- `__glx_TexCoord4fv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8138bc
  **Inferred.** Copies four floats from the array at a0 into a 20-byte request with opcode 0x3e. The copies go through f0 to f3 to offsets 4, 8, 0xc and 0x10, and an overrun flushes the state pointer.

- `__glx_TexCoord4i` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd813944
  **Inferred.** Writes the four integer arguments a0 to a3 at record offsets 4, 8, 0xc and 0x10 of a 20-byte request. The opcode halfword is 0x3f and the length halfword 0x14, and the write pointer is advanced by 0x14 and stored back at state +4.

- `__glx_TexCoord4d` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8139c0
  **Inferred.** Spills the four double arguments f12 to f15 to the stack, then copies each into a 36-byte request at offsets 4, 0xc, 0x14 and 0x1c with 8-byte copies through the GOT slot gp-0x7e18 routine. The opcode is 0x3d and the length 0x24.

- `__glx_TexCoord3i` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd813a9c
  **Inferred.** Packs the three integer arguments a0, a1 and a2 into a 16-byte request at offsets 4, 8 and 0xc. The header uses opcode 0x3b and length 0x10, and an overflow passes the new write pointer to the flush routine.

- `__glx_TexCoord3iv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd813b14
  **Inferred.** Reads three words from the array at a0 and writes them to offsets 4, 8 and 0xc of a 16-byte request with opcode 0x3b. The pointer is advanced by 0x10 and flushed through the state when it overruns.

- `__glx_TexCoord3s` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd813b94
  **Inferred.** Places the three shorts a0, a1 and a2 at record offsets 4, 6 and 8 of a 12-byte request. The opcode halfword is 0x3c and the length halfword 0xc. The advanced pointer is stored at state +4 before the limit test, and an overrun passes the state and the new pointer to the flush routine.

- `__glx_TexCoord3sv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd813c0c
  **Inferred.** Copies three shorts from the array at a0 into a 12-byte request at offsets 4, 6 and 8, with opcode 0x3c and length 0xc. The write pointer moves on by 0xc and the flush routine is the overflow path.

- `__glx_EvalCoord1fv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd813c8c
  **Inferred.** Copies one float from the pointer in a0 to offset 4 of an 8-byte request. The opcode halfword is 0x98 and the length halfword 8, and the routine stores the new write pointer before the overflow check.

- `__glx_CopyTexSubImage2DEXT` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd813cfc
  **Inferred.** Packs the copy-subimage arguments a0 to a3 into words at offsets 4 to 0x10 of a 36-byte request, with four more words at 0x14 to 0x20 taken from t0 to t3. The opcode halfword is 0x101a and the length 0x24, and the flush routine runs when the record overruns.

- `__glx_CopyTexSubImage1DEXT` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd813d88
  **Inferred.** Writes six words, a0 to a3 and then t0 and t1, into a 28-byte request whose opcode halfword is 0x1019. The length halfword is 0x1c, and the advanced pointer is kept in the state word at +4.

- `__glx_CopyTexImage2DEXT` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd813e0c
  **Inferred.** Lays out eight words from the argument registers and t0 to t3 at record offsets 4 through 0x20 of a 36-byte request. The opcode halfword is 0x1018 and the length 0x24, and the flush routine receives the state pointer on overflow.

- `__glx_CopyTexImage1DEXT` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd813e98
  **Inferred.** Writes seven words, a0 to a3 and then t0 to t2, into a 32-byte request. The header carries opcode 0x1017 and length 0x20, and the write pointer is advanced by 0x20 before the limit check.

- `__glx_CopyColorTableSGI` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd813f20
  **Inferred.** Stores five words, a0 to a3 and t0, at record offsets 4 through 0x14 with opcode halfword 0x808 and length halfword 0x18. The write pointer is stored back at state +4 and the flush routine is called when the record does not fit.

- `__glx_ColorTableParameterivSGI` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd813fa0
  **Inferred.** Calls `__glXColorTableParameterivSGI_size` with the parameter in a1 to get the element count, then sets the record length to that count times four, rounded up to a multiple of four with the 12-byte header included. The header holds opcode 0x807, the target from a0 is stored at offset 4 and the parameter at offset 8, and the data pointer in a2 is copied with the count times four bytes to offset 0xc through the GOT slot gp-0x7e18 routine.

- `__glx_CopyTexSubImage3DEXT` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd814080
  **Inferred.** Writes nine words, a0 to a3, t0 to t3 and t7, into a 40-byte request at offsets 4 through 0x24. The opcode halfword is 0x101b and the length halfword 0x28, and the flush routine handles the overrun.

- `__glx_GetMapdv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd814114
  **Inferred.** When the list-compile record at state +0xd8 is set, it flushes, runs the before-hook, and writes a 4-length request with opcode 0x78 at +1. The low byte of the word at state +0x110 goes to offset 0, the state word at +0x3c to offset 4, and the two argument words to +8 and +0xc. It then calls the GOT slot gp-0x7e38 routine with the stack slot sp+0 as its output and reads the count back from sp+0xc. A count of 1 copies one double from sp+0x10 into the caller's buffer through the copy routine, and any other count fetches count times eight bytes with the gp-0x7e10 routine.

- `__glx_GetLightiv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd814288
  **Inferred.** After the flush and the before-hook, it builds the same kind of 4-length request as GetMapdv, with opcode 0x77 in the second byte, and calls the reply routine in GOT slot gp-0x7e38 with the output at sp+0. The reply count is read from sp+0xc and the single word at sp+0x10 is stored to the caller's pointer when the count is 1. Larger counts go to the gp-0x7e10 routine with a2 set to count times four.

- `__glx_GetLightfv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8143f0
  **Inferred.** Writes a 4-length request with opcode 0x76 and calls the reply routine in GOT slot gp-0x7e38. When the count at sp+0xc is 1 the float at sp+0x10 is stored straight to the caller's pointer, and otherwise the routine copies count times four bytes through the gp-0x7e10 routine. The list-compile hook at +0x4d0 is called on both sides of the request.

- `__glx_GenLists` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd814558
  **Inferred.** When the list-compile record at state +0xd8 is nonzero, it flushes, runs the before-hook, and reserves a 12-byte record with opcode 0x68 and length 3. The range argument a0 is stored at record offset 8 and the state word at +0x3c at offset 4. It then calls the GOT slot gp-0x7e38 routine with a1 pointing at the stack and reads back the word at sp+8 as its return value. With the record pointer zero the routine returns 0 at once.

- `__glx_DeleteLists` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8146a8
  **Inferred.** Appends a 16-byte record with opcode 0x67 for a deletion when the list-compile record is set. The list argument a0 goes to offset 8 and the range argument a1 to offset 0xc, and the state word at +0x3c goes to offset 4. The record is preceded by a flush and a before-hook, and followed by the after-hook at +4 and the callback at +0x7c.

- `__glx_EndList` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8147c4
  **Inferred.** Writes an 8-byte record with opcode 0x66 (byte 1) and length 2 (halfword 2) when the list-compile record is set, and copies the state word at +0x3c into record offset 4. The routine flushes first, runs the before-hook, and calls the after-hook and the +0x7c callback at the end. The routine in GOT slot gp-0x7e4c is called when the record does not fit.

- `__glx_NewList` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8148c8
  **Inferred.** Adds a 16-byte record with opcode 0x65 and length 4 when the list-compile record at state +0xd8 is set. The list number from a0 goes to offset 8, the mode from a1 to offset 0xc, and the state word at +0x3c to offset 4. Before the record is written the routine flushes the buffer and calls the before-hook; after it, the after-hook and the +0x7c callback run.

- `__glx_ColorTableParameterfvSGI` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8149e4
  **Inferred.** Appends a variable-length render record for the colour-table float parameter call. It first calls `__glXColorTableParameterfvSGI_size` with the second argument, and the count it returns sets the record: the length halfword at +0 is four times the count plus 12, and the opcode 0x806 sits at +2. The target (a0) is stored at +4 and the parameter name (a1) at +8, then `memcpy` copies the parameter array (a2) to +12. The write pointer kept at +4 of the render state moves forward by the record length.

- `__glx_CopyConvolutionFilter2DEXT` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd814ac4
  **Inferred.** Writes a fixed 28-byte record that carries six argument words. The length halfword 0x1c goes at +0 and the opcode 0x100c at +2, and a0 through a3 land at +4, +8, +0xc and +0x10 while a4 and a5 land at +0x14 and +0x18. The render state's write pointer then advances by 28. When the limit word at +8 of the state is less than the new pointer, `__glXFlushRenderBuffer` is called with the state and the new pointer.

- `__glx_CopyConvolutionFilter1DEXT` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd814b48
  **Inferred.** Writes a 24-byte record for the one-dimensional copy: length 0x18 at +0, opcode 0x100b at +2, and five argument words stored at +4 through +0x14. The write pointer advances by 24. The flush path is the same as the two-dimensional copy: the limit word at +8 is compared with the new pointer, and an overrun sends the state and the new pointer to `__glXFlushRenderBuffer`.

- `__glx_ConvolutionParameterivEXT` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd814bc8
  **Inferred.** Encodes the integer-vector convolution parameter call as a variable-length record. The size helper `__glXConvolutionParameterivEXT_size` gives the element count, and the record length is four times that count plus 12 with opcode 0x100a. The target and parameter name are written at +4 and +8, and `memcpy` moves the integer array into the record from +12. The write pointer advances by the record length, and an overrun of the limit at +8 leads to a call to `__glXFlushRenderBuffer`.

- `__glx_ConvolutionParameteriEXT` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd814ca8
  **Inferred.** Adds a 16-byte record for the scalar integer convolution parameter. Its three words (a0, a1 and a2) sit at +4, +8 and +0xc, the opcode is 0x1009 and the length halfword is 0x10. The routine then bumps the write pointer by 16 and flushes when the limit at +8 falls behind it.

- `__glx_ConvolutionParameterfvEXT` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd814d20
  **Inferred.** The float-vector form of the convolution parameter call. It asks `__glXConvolutionParameterfvEXT_size` for the number of floats, writes length 4*count+12 and opcode 0x1008 into the record header, and stores the target and name at +4 and +8. The float data is then copied in by `memcpy` at +12, and the write pointer moves on by the record length, with the usual flush once the limit word at +8 is passed.

- `__glx_ConvolutionParameterfEXT` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd814e00
  **Inferred.** Records the scalar float convolution parameter in 16 bytes. The first two arguments, a0 and a1, go to +4 and +8, and the float argument arrives in $f14 and is stored as a single word at +0xc. The opcode is 0x1007 and the length 0x10. The write pointer advances by 16, and the routine calls `__glXFlushRenderBuffer` when the limit at +8 is below the new write pointer.

- `__glx_TagSampleBufferSGIX` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd814e78
  **Inferred.** Adds the smallest record in the set: four bytes holding only a header, length 4 at +0 and opcode 0x802 at +2, with no argument words. The write pointer moves forward by 4. The limit check at +8 is the same as in the other render records, and an overrun passes the opcode and length back to `__glXFlushRenderBuffer` as the third and fourth arguments.

- `__glx_ResetMinmaxEXT` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81522c
  **Inferred.** Writes an 8-byte record with one argument: the target in a0 goes to +4, opcode 0x1011 to +2, and length 8 to +0. The write pointer is advanced by 8, and an overrun of the limit at +8 calls `__glXFlushRenderBuffer` with the new pointer as its second argument.

- `__glx_ResetHistogramEXT` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd815298
  **Inferred.** Same 8-byte shape as the minmax reset, but with opcode 0x1010. Its single argument, a0, is written at +4, and the length halfword of 8 sits at +0. The write pointer moves by 8, and when the limit at +8 is below it the routine flushes the buffer through `__glXFlushRenderBuffer`.

- `__glx_MinmaxEXT` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd815304
  **Inferred.** Lays out a 16-byte render record for the minmax call. The first two arguments are stored as words at +4 and +8, the third (a2) is stored as a single byte at +0xc, and the opcode is 0x100f with length 0x10. The write pointer advances by 16, and the flush happens if the limit at +8 is smaller than the new pointer.

- `__glx_HistogramEXT` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd814ee0
  **Inferred.** Writes a 20-byte record for the histogram call. Arguments a0, a1 and a2 are stored as words at +4, +8 and +0xc, and the last argument, a3, goes in as one byte at +0x10. The header holds opcode 0x100e at +2 and length 0x14 at +0. After the pointer moves on by 20, an overrun of the limit at +8 sends the state and the new pointer to `__glXFlushRenderBuffer`.

- `__glx_SharpenTexFuncSGIS` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8150a4
  **Inferred.** Appends the sharpen-texture-function record, opcode 0x804, for a point count in a1 and a point array in a2. If the sign bit of a1 + a1 is set the routine returns at once without writing. Otherwise the target (a0) goes to +4, the count to +8, and `memcpy` copies 8 bytes per point from a2 to +12. The length halfword is 8 times the count plus 12. The write pointer then advances by that length, and an overrun of the limit word at +8 leads to `__glXFlushRenderBuffer`.

- `__glx_DetailTexFuncSGIS` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd815168
  **Inferred.** The detail-texture-function counterpart of the sharpen record. The same guard on a1 + a1 applies. The record carries opcode 0x803, the target at +4 and the count at +8, and copies the points with `memcpy` into +12 at eight bytes each. The length is 8 times the count plus 12, and the flush after the pointer bump follows the limit check at +8.

- `__glx_IsList` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd816950
  **Inferred.** Makes a synchronous query for whether a display list name is valid. If the display pointer read from state +0xd8 is null it returns 0 without doing anything. Otherwise it writes a 12-byte request with opcode 0x8d at +1, length 3 at +2, and the list name at +8, sends it with `_XReply` into a reply buffer on the stack, and returns the byte at reply offset 11 by parking it on the stack and reloading it on the way out. `_XFlush` ends the call.

- `__glx_GetMapfv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81537c
  **Inferred.** Synchronous request for the float map data. It flushes the render buffer first, then writes a 16-byte request with minor opcode 0x79 at +1 and length 4 at +2. The target (a0) goes to +8 and the map name (a1) to +0xc. After `_XReply`, one float store goes into the caller's pointer at a2, and the map data is read into that pointer with `_XRead`. `_XFlush` ends the request. Callees through the display's function table at +0x4d0 sit between the steps and have no names in the symbol table.

- `__glx_GetDetailTexFuncSGIS` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8154e4
  **Inferred.** Vendor-private query for the detail texture function. The request is 16 bytes: byte 0 is 0x10, byte 1 is 0x11, the vendor code 0x1000 is at +4, and the target from a0 is at +0xc. It calls `_XReply`, then reads the points into the pointer in a1 with `_XRead`, and ends with `_XFlush`. A float store into the caller's pointer sits between the reply and the read.

- `__glx_GetMinmaxParameterivEXT` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81564c
  **Inferred.** Vendor-private query for an integer minmax parameter. It writes a 20-byte request with byte 0 at 0x10, byte 1 at 0x11, the vendor code 0x0a at +4, the target at +0xc and the parameter name at +0x10. The reply is read through `_XReply` and `_XRead` into the caller's pointer at a2, with a single word store to a2 between the two calls.

- `__glx_GetMinmaxParameterfvEXT` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8157c0
  **Inferred.** The float counterpart of the minmax query. Its request layout matches the integer form, but the vendor code at +4 is 0x09. The single store to the caller's pointer after `_XReply` is a float store from $f0, and `_XRead` then fills the result into a2, with `_XFlush` after the read.

- `__glx_GetHistogramParameterivEXT` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd815934
  **Inferred.** Queries an integer histogram parameter from the server. The 20-byte request carries vendor code 0x07 at +4, the target at +0xc and the parameter at +0x10, with byte 0 set to 0x10 and byte 1 to 0x11. The reply is fetched by `_XReply`, a single word goes into the pointer at a2, `_XRead` fills the rest, and `_XFlush` is the last call.

- `__glx_GetHistogramParameterfvEXT` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd815aa8
  **Inferred.** The float histogram query. Vendor code 0x06 sits at +4 in the same 20-byte request, and the store to the caller's pointer after the reply is a float store from $f0 instead of a word.

- `__glx_GetConvolutionParameterivEXT` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd815c1c
  **Inferred.** Integer convolution parameter query. The request is 20 bytes with byte 0 0x10, byte 1 0x11 and vendor code 0x03 at +4. The target and parameter name occupy +0xc and +0x10, and the result is written through a2 after `_XReply`, with `_XRead` fetching the rest and `_XFlush` as the last call.

- `__glx_GetConvolutionParameterfvEXT` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd815d90
  **Inferred.** Float convolution parameter query, using vendor code 0x02 in the same 20-byte layout. The post-reply store into a2 is a float store from $f0.

- `__glx_GetSharpenTexFuncSGIS` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd815f04
  **Inferred.** Fetches the sharpen-texture points. The request is 16 bytes with byte 1 at 0x11, byte 0 at 0x10 and vendor code 0x1001 at +4, and the target goes to +0xc. After `_XReply` the reply is read into the points pointer in a1 with `_XRead`, and the function ends with `_XFlush` after the display function-table calls.

- `__glx_GetColorTableParameterivSGI` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81606c
  **Inferred.** Colour-table integer parameter query. It writes the 20-byte vendor-private request with vendor code 0x1004 at +4, the target at +0xc and the parameter name at +0x10. `_XReply` precedes a word store into the caller's pointer at a2, and `_XRead` plus `_XFlush` complete the call.

- `__glx_GetColorTableParameterfvSGI` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8161e0
  **Inferred.** The float form of the colour-table query, with vendor code 0x1003 at +4 in the same 20-byte request. The store into a2 after the reply is a float store from $f0.

- `__glx_GetTexEnvfv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd816aa0
  **Inferred.** Synchronous query for a texture environment value, with minor opcode 0x82. It writes a 16-byte request: byte 0 is loaded from the render state at +0x110, byte 1 is 0x82, length 4 sits at +2, and the target and pname go to +8 and +0xc. Then it calls `_XReply` and reads the result into the caller's pointer (a2) with `_XRead`, using a byte count of four times a4. A float store to a2 sits between the reply and the read.

- `__glx_GetPixelMapusv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd816c08
  **Inferred.** Reads a pixel map as unsigned shorts. It writes a 12-byte request with minor opcode 0x7f at +1 and length 3 at +2, sends it with `_XReply`, and reads the map through `_XRead`. After `_XRead` it also calls `_XEatData`, and `_XFlush` ends the call.

- `__glx_GetPixelMapuiv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd816d84
  **Inferred.** Unsigned-integer pixel map query. Its 12-byte request uses minor opcode 0x7e at +1. After `_XReply` it reads the entries with `_XRead` and ends with `_XFlush`. Unlike the short variant it makes no `_XEatData` call.

- `__glx_GetPixelMapfv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd816ee0
  **Inferred.** Float pixel map query. The 12-byte request has minor opcode 0x7d at +1 and length 3 at +2. A float store from $f0 goes to the caller's pointer between `_XReply` and `_XRead`, and `_XFlush` ends the request.

- `__glx_GetMaterialiv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81703c
  **Inferred.** Synchronous query for an integer material value. It writes a 16-byte request with minor opcode 0x7c at +1 and length 4 at +2. It sends the request with `_XReply`, stores one word into the caller's pointer at a2, and reads the rest with `_XRead` before `_XFlush`.

- `__glx_GetMaterialfv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8171a4
  **Inferred.** Float material query. The request uses minor opcode 0x7b at +1 and length 4 at +2. Argument a0 goes to +8 and a1 to +0xc. The float result is stored from $f0 into a2 after `_XReply`, and `_XRead` and `_XFlush` finish the call.

- `__glx_GetMapiv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81730c
  **Inferred.** Integer map query, with minor opcode 0x7a at +1 in a 16-byte request. Its flow matches the other map queries: a flush of the render buffer, the request, `_XReply`, one word store into a2, `_XRead` and `_XFlush`.

- `__glx_GetTexEnviv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd817474
  **Inferred.** Integer texture environment query. It builds the same 16-byte request as the float form, with minor opcode 0x83 at +1 and length 4 at +2. The integer result is written as a word to a2 after the reply and read with `_XRead`, and `_XFlush` ends the call.

- `__glx_GetTexLevelParameterfv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd817750
  **Inferred.** The float texture-level query. Its 20-byte request carries target at +8, parameter name at +0xc and level at +0x10, with minor opcode 0x8a at +1 and length 5 at +2. A float store from $f0 goes to a2 between `_XReply` and `_XRead`.

- `__glx_GetTexParameteriv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8178c4
  **Inferred.** Integer texture-parameter query. The 16-byte request has minor opcode 0x89 at +1, length 4 at +2, and the target and pname at +8 and +0xc. One word store goes to the result pointer after `_XReply`, and the call ends with `_XRead` and `_XFlush`.

- `__glx_GetTexParameterfv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd817a2c
  **Inferred.** Float texture-parameter query, minor opcode 0x88 at +1 in a 16-byte request. The result reaches the caller through a float store from $f0 into a2 after `_XReply`, followed by `_XRead`.

- `__glx_GetTexGeniv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd817b94
  **Inferred.** Integer texture-coordinate generation query. Its 16-byte request uses minor opcode 0x86 at +1 and length 4 at +2, and after the reply a word store goes into the caller's pointer before `_XRead`.

- `__glx_GetTexGenfv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd817cfc
  **Inferred.** Float texture-coordinate generation query. Minor opcode 0x85 sits at +1 of the 16-byte request, with target and pname at +8 and +0xc. A float store from $f0 goes to a2 after the reply, and `_XFlush` closes the call.

- `__glx_GetTexGendv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd817e64
  **Inferred.** Synchronous query for glGetTexGendv. The Display pointer is the word at state +0xd8, and the routine returns at once when it is null. Otherwise it flushes the render buffer, calls entry 0 of the table at Display +0x4d0 before the request, and compares Display +0x6c plus 16 with the limit at +0x70, calling `_XFlush` on overflow. The 16-byte request has the context tag from state +0x110 in byte 0, 0x84 in byte 1, length 4 in the halfword at +2, the value from state +0x3c at +4, and the target and pname at +8 and +0xc. The request counter at Display +0x60 goes up by one. `_XReply` fills a stack buffer, and if the word at reply +0xc is 1 the routine copies 8 bytes from reply +0x10 into params. Any other count is read with `_XRead` as count shifted left three bytes. Entry 1 of the +0x4d0 table runs after the reply, and the hook at Display +0x7c runs last.

- `__glx_SamplePatternSGIS` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd817fd8
  **Inferred.** Encodes glSamplePatternSGIS as an 8-byte request. The pattern argument in a0 goes into the word at +4, opcode 0x801 into the halfword at +2, and length 8 into the halfword at +0. This is the only opcode in the group above 0xbb. The cursor advances by 8 and is stored before the limit test, so an overflow flushes with the new cursor already in place.

- `__glx_EvalCoord2d` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd818044
  **Inferred.** The two doubles arrive in f12 and f13 and are spilled to the frame. Two `memcpy` calls copy them into the 20-byte request at +4 and +0xc. The header is length 0x14 with opcode 0x99. The cursor ends at +0x14.

- `__glx_EvalCoord1f` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8180f0
  **Inferred.** Stores the single float in f12 directly at +4 of an 8-byte request with opcode 0x98. The cursor advances by 8. The routine flushes when the cursor passes the limit at state +0x8.

- `__glx_EvalCoord1dv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81815c
  **Inferred.** Takes a pointer to a double in a0 and copies its 8 bytes with `memcpy` into +4 of a 12-byte request. The header is length 0xc with opcode 0x97. The cursor is kept in fp and advanced to +0xc. The routine saves and restores s0 and fp across the call.

- `__glx_EvalCoord1d` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8181ec
  **Inferred.** Spills the double in f12 to the frame and `memcpy`s it into +4 of a 12-byte request with opcode 0x97. The request is built the same way as the pointer form, but the source is the spilled register value rather than a dereferenced pointer.

- `__glx_MapGrid2f` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd818280
  **Inferred.** Stores the six arguments as words of a 28-byte request with opcode 0x96. The integer un in a0 goes to +4, u1 in f13 to +8, u2 in f14 to +0xc, vn in a3 to +0x10, v1 in f16 to +0x14, and v2 in f17 to +0x18. The cursor advances by 0x1c, and the flush call passes the state block in a0.

- `__glx_MapGrid2d` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd818300
  **Inferred.** Copies four doubles from the frame with `memcpy`: u1 from f13 to +4, u2 from f14 to +0xc, v1 from f16 to +0x14, and v2 from f17 to +0x1c. The integers are kept in s7 (un) and fp (vn) and stored at +0x24 and +0x28. The request is 44 bytes with opcode 0x95.

- `__glx_MapGrid1f` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8183fc
  **Inferred.** A 16-byte request with opcode 0x94. The integer in a0 is stored at +4, u1 from f13 at +8, and u2 from f14 at +0xc. The routine returns through the same flush-on-overflow path used by the other encoders.

- `__glx_EvalCoord2dv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd818470
  **Inferred.** Takes a pointer to a pair of doubles in a0 and copies the first 8 bytes to +4 and the next 8 bytes, read from pointer +8, to +0xc. The 20-byte request has opcode 0x99. The pointer is kept in s5 across the calls and restored from the frame on return.

- `__glx_AlphaFunc` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd818520
  **Inferred.** The comparison function in a0 goes to +4 and the float reference value in f13 to +8. The 12-byte request uses opcode 0x9f. The routine flushes on overflow and then returns with the cursor already stored.

- `__glx_EvalPoint2` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd818590
  **Inferred.** Writes the integers i in a0 and j in a1 at +4 and +8 of a 12-byte request with opcode 0x9e. On overflow it flushes with the state block in a0 and the new cursor in a1.

- `__glx_EvalMesh2` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd818604
  **Inferred.** Five integer arguments go into a 24-byte request with opcode 0x9d. The mode in a0 goes to +4, i1 in a1 to +8, i2 in a2 to +0xc, j1 in a3 to +0x10, and j2 in t0 to +0x14. The cursor advances by 0x18. On overflow it flushes with the state block in a0 and the new cursor in a1.

- `__glx_EvalPoint1` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd818684
  **Inferred.** Stores the integer in a0 at +4 of an 8-byte request with opcode 0x9c. Its flush is the common one, which passes only the state block.

- `__glx_EvalMesh1` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8186f0
  **Inferred.** The mode in a0, i1 in a1, and i2 in a2 go to +4, +8 and +0xc. The 16-byte request has opcode 0x9b. On overflow it flushes with the state block in a1 and the new cursor in a2.

- `__glx_EvalCoord2fv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd818768
  **Inferred.** Loads two single floats from the pointer in a0 with `lwc1` into f1 and f0, then stores them at +4 and +8 of a 12-byte request with opcode 0x9a. The pointer is not dereferenced further, so the request is exactly the two floats.

- `__glx_EvalCoord2f` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8187e0
  **Inferred.** The floats x in f12 and y in f13 are stored directly at +4 and +8 of a 12-byte request with opcode 0x9a. The state block is loaded into a0 for the flush call.

- `__glx_MapGrid1d` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd818850
  **Inferred.** The doubles u1 (f13) and u2 (f14) are spilled to the frame and `memcpy`d to +4 and +0xc. The integer un in a0 is kept in s7 and stored at +0x14. The 24-byte request has opcode 0x93.

- `__glx_ClearStencil` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81890c
  **Inferred.** The stencil clear value in a0 goes to +4 of an 8-byte request with opcode 0x83. The routine stores the cursor, and when the new cursor exceeds the limit it flushes through the state block.

- `__glx_ClearColor` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd818978
  **Inferred.** Four floats from f12 through f15 are stored at +4, +8, +0xc and +0x10 of a 20-byte request with opcode 0x82. The cursor advances by 0x14.

- `__glx_ClearIndex` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8189f0
  **Inferred.** The float index in f12 is stored at +4 of an 8-byte request with opcode 0x81. Like the other single-argument encoders, it does not spill the argument.

- `__glx_ClearAccum` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd818a5c
  **Inferred.** The four float accumulation colour components in f12 through f15 go to +4 through +0x10 of a 20-byte request with opcode 0x80.

- `__glx_Clear` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd818ad4
  **Inferred.** The mask in a0 is stored at +4 of an 8-byte request with opcode 0x7f. The cursor is kept in a1 during the check.

- `__glx_DrawBuffer` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd818b40
  **Inferred.** The buffer mode in a0 goes to +4 of an 8-byte request with opcode 0x7e. The routine then compares the cursor with the limit and flushes when needed.

- `__glx_PushName` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd818bac
  **Inferred.** The name in a0 is written at +4 of an 8-byte request with opcode 0x7d. The encoder ends with the usual limit check and flush.

- `__glx_ClearDepth` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd818c18
  **Inferred.** Spills the double in f12 and `memcpy`s it to +4 of a 12-byte request with opcode 0x84. The cursor is kept in fp, and the frame is restored on return.

- `__glx_PushAttrib` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd818cac
  **Inferred.** The attribute mask in a0 goes to +4 of an 8-byte request with opcode 0x8e. The layout matches the other single-word encoders.

- `__glx_PopAttrib` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd818d18
  **Inferred.** Takes no arguments and writes a 4-byte request with opcode 0x8d. The cursor advances by 4.

- `__glx_Accum` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd818d80
  **Inferred.** The operation in a0 goes to +4 and the float value in f13 to +8 of a 12-byte request with opcode 0x89.

- `__glx_IndexMask` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd818df0
  **Inferred.** The index write mask in a0 is stored at +4 of an 8-byte request with opcode 0x88.

- `__glx_DepthMask` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd818e5c
  **Inferred.** Stores the GLboolean in a0 as a single byte at +4 of an 8-byte request with opcode 0x87. The store is `sb`, not a word store, so the three bytes that follow stay as they were.

- `__glx_ColorMask` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd818ec8
  **Inferred.** Writes the four colour-write booleans from a0 through a3 as individual bytes at +4 through +7 of an 8-byte request with opcode 0x86. On overflow it flushes with the state block in a0 and the new cursor in a1.

- `__glx_StencilMask` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd818f44
  **Inferred.** The stencil write mask in a0 goes to +4 of an 8-byte request with opcode 0x85.

- `__glx_BlendFunc` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd818fb0
  **Inferred.** The source factor in a0 goes to +4 and the destination factor in a1 to +8 of a 12-byte request with opcode 0xa0. On overflow it flushes with the state block in a0 and the new cursor in a1.

- `__glx_Scaled` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd819024
  **Inferred.** Spills the three doubles in f12, f13 and f14 and copies them with `memcpy` to +4, +0xc and +0x14 of a 28-byte request with opcode 0xbb. The state block is kept in s1 for the flush call.

- `__glx_Rotatef` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8190e8
  **Inferred.** The angle in f12 and the axis components x, y and z in f13, f14 and f15 are stored at +4, +8, +0xc and +0x10 of a 20-byte request with opcode 0xba.

- `__glx_Rotated` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd819160
  **Inferred.** The four doubles in f12 through f15 are spilled and copied with `memcpy` to +4, +0xc, +0x14 and +0x1c of a 36-byte request with opcode 0xb9. The frame is 0x40 bytes.

- `__glx_PushMatrix` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81923c
  **Inferred.** Writes a 4-byte request with opcode 0xb8 and no arguments. The cursor advances by 4.

- `__glx_PopMatrix` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8192a4
  **Inferred.** Writes a 4-byte request with opcode 0xb7 and no arguments, with the same limit test and flush as PushMatrix.

- `__glx_Ortho` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81930c
  **Inferred.** Spills the six doubles in f12 through f17 and copies them with `memcpy` to +4, +0xc, +0x14, +0x1c, +0x24 and +0x2c of a 52-byte request with opcode 0xb6. The state block is kept in s1 and the cursor in s0.

- `__glx_MultMatrixd` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd819418
  **Inferred.** Queues a 4x4 double matrix as one render request. The 0x80 bytes at the pointer in a0 are copied by `memcpy` to the record at its write pointer plus 4, after a header of length 0x84 at +0 and opcode 0xb5 at +2. The advanced write pointer is stored before the overflow test against the limit at +8, and an overflow calls `__glXFlushRenderBuffer` with the state object in a0.

- `__glx_Scalef` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8194a8
  **Inferred.** Queues a scale request with three single-precision values. f12, f13 and f14 are stored as words at record +4, +8 and +0xc, and the header is length 0x10 at +0 with opcode 0xbc at +2. A record that passes the limit at state +8 is flushed through `__glXFlushRenderBuffer`.

- `__glx_SampleMaskSGIS` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81951c
  **Inferred.** Queues the sample-mask request. The float in f12 goes to record +4, the low byte of a1 goes to the single byte at +8, and the header is length 0xc with opcode 0x800. The overflow path passes the end-of-record pointer in a1 to the flush routine.

- `__glx_PolygonOffsetEXT` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81958c
  **Inferred.** Writes a polygon-offset request carrying two floats, f12 at record +4 and f13 at +8. The header is length 0xc and opcode 0x1002. Overflow goes to the flush routine with the state in a0.

- `__glx_BlendEquationEXT` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8195fc
  **Inferred.** Packs the blend-equation enumerant held in a0 into an eight-byte record, storing it at +4. The header is length 8 and opcode 0x1001. An overflow hands the state object to the flush routine through a0.

- `__glx_BlendColorEXT` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd819668
  **Inferred.** Stores four floats, f12 through f15, at record offsets +4, +8, +0xc and +0x10, for a 0x14-byte record. The header is length 0x14 with opcode 0x1000 at +2. Overflow calls the flush routine with the state in a0.

- `__glx_Viewport` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8196e0
  **Inferred.** Writes the four integer arguments a0 to a3 at record +4, +8, +0xc and +0x10 in order. The 0x14-byte record has opcode 0xbf. The state is found through the word at absolute 0x1014 as with the other routines here, and the flush gets the state in a0 and the end pointer in a1.

- `__glx_Translatef` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81975c
  **Inferred.** Emits a translate request with three floats, placed at +4 (f12), +8 (f13) and +0xc (f14). The header is length 0x10 with opcode 0xbe. A record that exceeds the state limit goes to `__glXFlushRenderBuffer` with the state object in a0.

- `__glx_Translated` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd8197d0
  **Inferred.** Spills the three doubles from f12, f13 and f14 into the frame at sp+0x20, sp+0x28 and sp+0x30, then copies each eight bytes into the record at +4, +0xc and +0x14 with `memcpy`. The record header is length 0x1c and opcode 0xbd. The routine saves s0, s1 and gp on the frame and returns through a branch to the flush call when the limit is passed.

- `__glx_MultMatrixf` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd819894
  **Inferred.** Copies a 4x4 single-precision matrix into a render request. The 0x40 bytes at a0 go through `memcpy` to record +4, under a header of length 0x44 and opcode 0xb4. The pointer advance is stored before the overflow test, and the flush call takes the state object.

- `__glx_PixelTransferi` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd819924
  **Inferred.** Records an integer pixel-transfer parameter. The parameter name in a0 is stored at +4 and the value in a1 at +8, under a 0xc-byte header with opcode 0xa7. Overflow calls the flush routine with the state in a0 and the end pointer in a1.

- `__glx_PixelTransferf` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd819998
  **Inferred.** Records a float pixel-transfer parameter: the name word from a0 goes to +4 and the float in f13 goes to +8. The header is length 0xc and opcode 0xa6. An overflow calls the flush routine, with the state passed in a0.

- `__glx_PixelZoom` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd819a08
  **Inferred.** Writes the two zoom factors, f12 at +4 and f13 at +8, into a 0xc-byte request with opcode 0xa5. The flush call is made with the state in a0 when the new pointer exceeds the limit.

- `__glx_DepthFunc` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd819a78
  **Inferred.** Appends the depth comparison function from a0 as one word at +4 of an eight-byte record with opcode 0xa4. The overflow path moves the state into a0 and calls the flush routine.

- `__glx_StencilOp` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd819ae4
  **Inferred.** Writes three words from a0, a1 and a2 at +4, +8 and +0xc of a 0x10-byte record with opcode 0xa3. Flushing passes the state in a0 and the end pointer in a1.

- `__glx_StencilFunc` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd819b5c
  **Inferred.** Builds the stencil function request from the same three argument words as the stencil operation, placed at +4, +8 and +0xc, with a 0x10-byte header and opcode 0xa2. The overflow branch hands the state and the end pointer to the flush routine in a0 and a1.

- `__glx_LogicOp` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd819bd4
  **Inferred.** Puts the logic-op enumerant from a0 at +4 of an eight-byte request. The header is length 8 with opcode 0xa1, and the state object is passed through a0 to the flush routine on overflow.

- `__glx_ReadBuffer` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd819c40
  **Inferred.** Sends the buffer selector in a0 as one word at +4 of an eight-byte record with opcode 0xab. When the record does not fit, the routine flushes with the state in a0.

- `__glx_MatrixMode` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd819cac
  **Inferred.** Sends the matrix mode from a0 as a word at +4 of an eight-byte request with opcode 0xb3. Overflow goes through `__glXFlushRenderBuffer` with the state object in a0.

- `__glx_LoadIdentity` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd819e38
  **Inferred.** Emits a payload-free request: a four-byte record with length 4 and opcode 0xb0 and no arguments. It advances the write pointer by 4 and calls the flush routine with the state, which is still in a0 from the lookup, when the limit is exceeded.

- `__glx_Frustum` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd819ea0
  **Inferred.** Carries six doubles, the frustum bounds, from the frame slots at sp+0x20 through sp+0x48 into the record at +4, +0xc, +0x14, +0x1c, +0x24 and +0x2c, each copied by `memcpy` as eight bytes. The header is length 0x34 and opcode 0xaf. The routine keeps the state in s1 and the record cursor in s0 across the copies.

- `__glx_DepthRange` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd819fac
  **Inferred.** Writes the two depth-range doubles, from f12 and f13 spilled to sp+0x20 and sp+0x28, into the record at +4 and +0xc with `memcpy`. The header is length 0x14 and opcode 0xae. A limit overflow calls the flush routine with the state object held in s1.

- `__glx_CopyPixels` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81a058
  **Inferred.** Stores five words, the arguments in a0 to a3 and the fifth argument in t0, at record offsets +4 through +0x14. The record is 0x18 bytes with opcode 0xac. Overflow calls the flush routine with the state in a0 and the end pointer in a1.

- `__glx_Indexdv` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81a0d8
  **Inferred.** Copies one double from the address in a0 into a 0xc-byte request, through `memcpy` into +4 with eight bytes. The header is length 0xc and opcode 0x18. The end pointer is stored and the flush routine is called with the state when the limit is passed.

- `__glXEvalComputeK` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81a168
  **Inferred.** Maps an evaluator target in a0 to a small count. The routine subtracts 0xd90 from a0 and, when the difference is below 0x29, jumps through a 41-word table at 0xd8446f4. The table gives 4 for 0xd90, 0xd96, 0xd98, 0xdb0, 0xdb6 and 0xdb8, 3 for 0xd92, 0xd95, 0xd97, 0xdb2, 0xdb5 and 0xdb7, 2 for 0xd94 and 0xdb4, 1 for 0xd91, 0xd93, 0xdb1 and 0xdb3, and 0 for 0xd99 through 0xdaf. Anything outside 0xd90 to 0xdb8 also returns 0. The counts match the coordinate counts of the evaluator targets.

- `__glXFillMap2d` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81a1c8
  **Inferred.** Copies a two-dimensional grid of doubles into a contiguous buffer. When the per-row count in a0 matches the stride in t0 and a3 equals a0 times a2, one `memcpy` moves a1 times a3 doubles from t1 to t2. Otherwise each of the a1 outer rows makes a2 `memcpy` calls of a0 doubles, the source advancing t0 doubles per call and a3 minus a2 times t0 doubles at the end of each row. A count of a1 or below zero copies nothing.

- `__glXFillMap2f` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81a2fc
  **Inferred.** The single-precision version of the two-dimensional fill. The contiguous fast path is a single `memcpy` of a1 times a3 floats, taken when a0 equals t0 and a3 equals a0 times a2. The general path copies each row of a0 floats in pairs with lwc1 and swc1, handling an odd leading element separately, with the same source stride arithmetic as the doubles version.

- `__glXFillMap1d` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81a41c
  **Inferred.** Copies a one-dimensional run of doubles. When a0 equals a2 the grid is contiguous and one `memcpy` moves a0 times a1 doubles from a3 to t0. Otherwise a1 rows of a0 doubles each are copied with `memcpy`, with the source stepping a2 doubles per row and the destination packed.

- `__glXFillMap1f` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81a4ec
  **Inferred.** The single-precision version of the one-dimensional fill. Equal strides in a0 and a2 give one `memcpy` of a0 times a1 floats. Otherwise the routine copies the rows element by element in pairs with lwc1 and swc1, with a one-float step for an odd count, and the destination advances a0 floats per row.

- `__glXErrorString` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81a5d0
  **Inferred.** Returns the text for a GLX error code. The index is the code in a1 minus the base word at +0xc of the structure in a2, and it must fall between 0 and 11 or the routine returns 0. Inside that range it formats a message name with `sprintf` from a format string at gp-0x7488, then calls `XGetErrorDatabaseText` with the default text from a 12-entry table and the caller's buffer in a3 with its length in t0. The return value is the buffer pointer.

- `FreeScreenConfigs` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81a684
  **Inferred.** Releases the per-screen configuration array. The count is the word at +0x88 of the structure at the first word of a0, and the array pointer is the word at +0x20 of a0. For each 0x20-byte entry the four pointers at +4, +0xc, +0x14 and +0x18 are each freed through `free` and cleared to 0. The array itself is then released with `XFree`. A count of 0 frees only the array.

- `__glXFreeDisplayPrivate` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81a75c
  **Inferred.** Tears down the GLX private block hung off a0 at +0xc. It calls `FreeScreenConfigs` on that block, frees the pointers at +0x18 and +0x1c of the block and clears each to 0, then frees the block itself with `free`. The return value is 0.

- `QueryVersion` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81a7e4
  **Inferred.** Sends a GLX QueryVersion request, minor opcode 7, with client version 1.3 in the record words at +4 and +8. The major opcode comes from a1 in byte 0. The display's optional hook block at +0x4d0 supplies a function pointer at its first word, called before the send, and one at +4, called after the reply. When the request space at +0x6c runs short the routine calls `_XFlush` and retries. After `_XReply` the routine returns 1 with the server major version written through a2 and the minor version written through a3 clamped to 3, but only when the server's major version is 1. Otherwise it returns 0.

- `__glXQueryServerString` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81a91c
  **Inferred.** Fetches a server string over GLX. It sends a request with minor opcode 0x13, the screen number from a2 at +4 and the string name from a3 at +8, using the same hook and flush handling as QueryVersion. It reads the reply's byte count at reply offset +0xc, allocates that many bytes with `malloc`, and reads them with `_XRead`. The 0 to 3 padding bytes are discarded with `_XEatData`. The routine returns the allocated buffer, or 0 when `malloc` fails, in which case the reply body is discarded.

- `GetBoardNumber` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81aa98
  **Inferred.** Reads a board number for one screen from the root window property of that screen. The Display pointer is a0, and the screen is the 80-byte entry at a0's +0x8c array indexed by a2, with its root window at +8. It interns the atom named by the string at the address held in the GOT slot at gp-0x7fdc plus 0x3670, using `XInternAtom`, then calls `XGetWindowProperty` with that atom in both the property slot and the requested-type slot. The first 32-bit item becomes the word at offset 0 of the 0x20-byte record at index a2 in the array at +0x20 of the structure in a1. When the call fails or the property is absent, the index a2 is stored in that word instead. The routine always returns 1.

- `checkExtension` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81d188
  **Inferred.** Tests whether an extension name appears in a space-separated extension list. The name is the first argument and the list is the second. It finds each occurrence with `strstr` and succeeds when the byte just after the occurrence is a space or the string's terminating 0. The byte before the occurrence is never examined, so a name that is a suffix of a longer one can match. The routine returns 1 on a match and 0 otherwise.

- `AllocAndFetchScreenConfigs` in `usr/gfx/arch/IP32CRM32/libGL.so` at 0xd81d238
  **Inferred.** Builds the per-screen configuration array for a Display. It allocates 0x20 bytes for each screen, where the count is the word at +0x88 of the Display in a0, zeroes the block and stores it at +0x20 of the structure in a1. For each screen it calls `GetBoardNumber`, then `GetVisualConfigs`, then either `GetFBConfigsSGIX` or `GetFBConfigs`, the choice depending on the words at +0x10 and +0x14 of the structure. When both of those words are positive it fetches the extension string with `__glXQueryServerString` using name 3 and tests it with `checkExtension`, a hit setting the byte at record +0x1c to 1. A failure in `GetBoardNumber`, `GetVisualConfigs` or an FB-config fetch calls `FreeScreenConfigs` and returns 0. After the last screen the routine calls the routine at 0xd81fd58 and returns 1.
