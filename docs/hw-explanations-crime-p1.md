# Hardware-facing routine explanations, CRIME and its neighbours on IP32, pilot 1

Each entry says what one routine does to the hardware and cites the instruction addresses it rests on. The facts come from the routine bodies in the shipped binaries and from the linked register and ioctl rows of the inventory. Meanings that come from a datasheet or a callee are marked Inferred, and open points are marked Unknown with the route that would settle them.

- `AccumulateLoad` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9380fc (o32).
  Inferred: `crmReadPixelsXfer` copies the frame buffer into user memory, according to its callee
  note, and the call inside this routine's loop (`jalr` at 0xd9383a0) gives it a stack buffer at
  sp-716, so this routine is part of the pixel read-back.
  Before the loop it zeroes the word at +0x7dd8 and the word at +0x7e58 and the byte at +0x7dce of
  the structure at [a0], stores bytes at +0x7e26 and +0x7e27, and copies the word at +0x2df4 to
  +0x7e28 (`sw` at 0xd9382d8 and 0xd9382e4, `sb` at 0xd9382e0, `sw` at 0xd9382f0).
  It stores 1 to +0x40, 0x8000 to +0x68 and 0x1c to +0x6c of the structure at [[a0]+0x80f8] (`sw` at
  0xd938434, 0xd938438 and 0xd93843c).
  Each pass writes seven words of the buffer that `vice_etc_dramp` returns (`sw` at 0xd938484 through
  0xd9384b4), calls `cacheflush` on that buffer with length 0x24 and argument 3 (`jalr` at
  0xd9384bc), and calls `vice_put` on the structure (`jalr` at 0xd9384d4).
  The return is 0 when the word at abs 0xda4c000 is nonzero (`bnel` at 0xd9382f8), 1 when the value
  in v1 is not positive (`blezl` at 0xd938300), and 1 at the normal exit (constant at 0xd938500).
  The loop counter s4 starts at 1 (constant at 0xd938318), steps at 0xd9384fc, and runs until it
  equals the word reloaded from the stack at +0x284 (`bne` at 0xd9384f8).
  Unknown: the value that sets the loop bound, the stack word at +0x284 reloaded at 0xd9384f0; the
  bundle shows only that `ra` was stored there at 0xd938330.
  Unknown: whether `vice_dmbuf_settlb`, `vice_etc_dramp` and `vice_put` touch device registers,
  since no notes for any of them appear in the bundle.
  Settling test: disassemble the three routines in the library that contains them and check whether
  any load or store uses an address in the 0x17000000 VICE window or a register-indirect base derived
  from it; absence of such accesses settles the question for software, not for hardware.
  Evidence grade: inferred.
- `AccumulateLoad` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd9396b0 (n32).
  Inferred: reads frame-buffer pixels back in passes and hands them to the vice buffer calls, because
  the first call is crmReadPixelsXfer, whose committed note (for the o32 build) reads the frame buffer
  into user memory, and the later calls are vice_dmbuf_settlb, vice_etc_dramp, cacheflush and vice_put.
  Before its test it stores 0 at +0x7e58 and +0x7dd8 and a zero byte at offset 0x7dce of the structure
  at [a0] (the `sw` at 0xd9397dc and 0xd9397f4, the `sb` at 0xd9397ec) and copies the word at +0x2df4
  into +0x7e28 (the `sw` at 0xd93980c). It also rewrites the word at +0x7e24: the word loaded at
  0xd9397cc is cleared with the masks -0xf1, -0x301, -0xd and -0x3 and set with 0x20, 0x200 and 0x8,
  and the result, not the loaded word, is stored back (the `sw` at 0xd939820).
  It returns 0 at 0xd939840 when the word at 0xda4b5f8 is non-zero (the `beq` at 0xd93981c), and
  returns 1 at 0xd939a68 when a2 is not positive (the `blez` at 0xd93986c).
  When the word at 0xda4b5f8 is zero and a2 is positive, the block from 0xd9398e0 to 0xd939a34 loops.
  The counter s4 starts at 1 (0xd9398cc), grows by 1 each pass (0xd939a14) and the loop ends when it
  equals a5, the frame word at sp+0x228 reloaded at 0xd939a18 (the `bne` at 0xd939a30). Each pass
  reloads the structure pointer [a0] from the frame word at sp+0x248 (0xd9398e0), loads its words at
  +0xe78 and +0xe50 (0xd9398e4, 0xd9398e8), and calls crmReadPixelsXfer with a0 = [a0] and a1 = the
  base of its own frame (the `jalr` at 0xd93990c); the frame holds 0x1908 at sp+0x50, 4 at sp+0x64 and
  two floating-point words at sp+0xbc and sp+0xc0 (0xd9397b8, 0xd9397c0, 0xd9397a4, 0xd939910).
  It then calls vice_dmbuf_settlb twice (the `jalr` at 0xd939928 and 0xd93997c), vice_etc_dramp (the
  `jalr` at 0xd93999c) and vice_put (the `jalr` at 0xd939a04).
  Before the cacheflush of 0x24 bytes at the pointer that vice_etc_dramp returns (the `jalr` at
  0xd9399f4), it stores words at +0x0 through +0x18 of that block (the `sw` at 0xd9399a8 through
  0xd9399f8), and it writes 0x8000, 0x1c and 1 into the sub-structure at [[a0]+0x80f8] at +0x68,
  +0x6c and +0x40 (the `sw` at 0xd93998c, 0xd939994 and 0xd9399a0).
  Unknown: the values a2 and a3 carry into crmReadPixelsXfer at 0xd93990c; the route is the o32
  note for that routine plus the instructions that last write a2 and a3.
  Unknown: the size of the area that crmReadPixelsXfer fills through its a1, since the bundle gives only
  the frame base and the frame size.
  Evidence grade: inferred.
- `EndPolygon` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd96404c (o32).
  Inferred: `__glCrmDownloadCurrentColor`, per its callee note, sends the current colour to the
  engine, and the final call at 0xd964094 reaches it, so any engine contact comes through that
  callee.
  On its own the routine only writes the structure at a0 and a stack slot: it stores zero to the
  byte at +0x8088 (`sb` at 0xd964068), copies the word at +0x80ac to +0x2f24 (`lw` at 0xd964070,
  `sw` at 0xd964074), and calls through the word at +0x2f24 (`lw` at 0xd96407c, `jalr` at
  0xd964080) with its four argument registers passed on.
  After that call it reloads a0 from the stack (`lw` at 0xd96408c), calls
  `__glCrmDownloadCurrentColor` with it (`jalr` at 0xd964094), and returns that callee's result
  (`jr ra` at 0xd9640a4).
  The code from 0xd9640ac to 0xd964110 is not reached from the entry, so the bundle says nothing
  about it.
  Unknown: the target of the indirect call, the pointer at +0x2f24, which the bundle traces only as
  the word copied from +0x80ac; tracing the writers of +0x80ac would fix that target.
  Evidence grade: inferred.
- `ReadRGBASpan` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd967db4 (o32).
  Inferred: the frame-buffer read into user memory that the note on `crmReadPixelsXfer` describes is
  what the call at 0xd967f50 performs, with a stack buffer at sp-512 as destination, so the routine
  reads pixels that it then stores as floats.
  Outside that call, the stores land in the structure at [a0]: 0xc02 to +0x7dd8, zero to +0x7dce and
  +0x7e58, and the entry a0 to +0x7e28 (`sw` at 0xd967e14, `sb` at 0xd967e18, `sw` at 0xd967e1c and
  0xd967e20).
  It tests the byte at +0x7b41 of the structure at [a0] against 1 (`bne` at 0xd967e38) and the word
  at +0xc of the entry a0 against 8 and 16 (`beq` at 0xd967ea0, `bne` at 0xd967eac), and the paths
  store byte values to +0x7e26 and +0x7e27 (`sb` at 0xd967e5c through 0xd967f34).
  It calls `crmReadPixelsXfer` with the word at [a0] as a0, a1 at sp-512, and the entry a2 and a3
  passed through (`jalr` at 0xd967f50).
  A loop follows, with a1 counting up from 0 (`or` at 0xd968018, `addiu` at 0xd968030) until it
  equals t7 (`bne` at 0xd968204); each pass reads the table words at table(0x80b0), table(0x80b4) and
  table(0x80b8) and the float at +0x80 of the entry a0, and stores floats through a3 (`swc1` at
  0xd968078 and 0xd968098).
  It returns 0 (`jr ra` at 0xd968220, with `or v0,zero,zero` in the delay slot).
  Unknown: the pixel component each float store through a3 holds, and which path picks the byte
  values at +0x7e26 and +0x7e27; the field layout of [a0] is not in the bundle.
  Unknown: the contents of the table words at table(0x80b0), table(0x80b4) and table(0x80b8), and of
  the float at +0x80 of a0; finding the writer of those table words would fix them.
  Evidence grade: inferred.
- `__glCrmEnableAlphaTest` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd940200 (n32).
  Sets bits in words of the object at a0; on one branch it calls `__glCrmPassAlphaFunc` with that
  object.
  An early exit returns the byte at +0xc94 when that byte is zero (return at 0xd940274).
  The word at +0x700 decides the store: with bit 0x1 set, the `sw` at 0xd940238 writes the word at
  +0x7d58 ORed with 0x800; with it clear, the code goes to 0xd94027c, loads -0x801 into `a2`, and
  writes the word read from +0x7d58 back at 0xd940288.
  The `bltz` at 0xd940240 sits on both paths; its taken branch goes to the call at 0xd940290, which
  passes the object as a0 with a1 and a3 as received, and the return passes on that call's v0.
  All paths but the early exit end by writing 2 to abs 0x1018 (`sw` at 0xd94024c) and ORing 0x1 into
  the word at +0x2dec (`sw` at 0xd94025c).
  Unknown: what v1 holds at the `bltz` at 0xd940240 (`?` in the bundle), which leaves open what
  selects the call.
  Unknown: the test register of the `bgezall` at 0xd940290 is not in the bundle, so the call's
  condition stays open.
  Unknown: the instruction that combines -0x801 with a0 between 0xd94027c and 0xd940288 is absent
  from the bundle.
  Unknown: what the word at abs 0x1018 holds; the bundle lists the store at 0xd94024c under
  memory-mapped I/O, and no mmio row or published specification excerpt names it.
  Evidence grade: established.
- `__glCrmEnableBlend` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd93e6f4 (o32).
  Inferred: the callee notes place the blend equation, the two blend factors and the constant
  colour in the engine through `__glCrmPassBlendFunc` and `__glCrmPassBlendColor`, and this routine
  calls both with the structure at a0, so it forwards blend state from that structure.
  If the byte at +0xc94 of the structure is zero, it returns at once (`beql` at 0xd93e710).
  Otherwise it tests bit 0x800 of the word at +0x704 (`beql` at 0xd93e720), and when that bit is
  clear it tests bit 0x2 of the word at +0x700 (`beql` at 0xd93e748).
  Each path writes the byte at +0x7d5a: twice when bit 0x800 is set (`sb` at 0xd93e730 and
  0xd93e73c), twice when bit 0x2 is clear (`sb` at 0xd93e7a4 and 0xd93e7ac), and when bit 0x2 is
  set the word at +0x72c is tested for 0xbf1 (`bnel` at 0xd93e758), with the byte written at
  0xd93e770 and 0xd93e77c on a match and at 0xd93e788 and 0xd93e794 otherwise.
  The paths meet at 0xd93e7b0, where both passes are called only when the word at +0x7d58 shifted
  left by 0x15 is negative (`bgezl` at 0xd93e7b8).
  The tail finishes by storing 2 to abs 0x1018 (`sw` at 0xd93e7f0) and setting bit 0 of the word
  at +0x2dec (`sw` at 0xd93e7fc), then returns.
  Unknown: which field the byte at +0x7d5a is, and the values written by the `sb` at 0xd93e730 and
  0xd93e73c, since no value is given for those two stores; a linked row naming the field and a
  trace of their source registers would settle both.
  Unknown: whether abs 0x1018 is a hardware register; a linked mmio row for that address, or a
  published specification line naming it, would settle it. Settling test: check the base register of the
  accesses at the two stores (a base of zero means a literal low address, which still has to be
  mapped to a device to be a register) and search the CRIME and MACE register tables for an offset 0x1018.
  Evidence grade: inferred.
- `__glCrmEnableBlend` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd940320 (n32).
  Writes words +0x7d58 and +0x2dec of the object at a0, and on one branch calls the pass routines
  `__glCrmPassBlendFunc` and `__glCrmPassBlendColor`.
  If the byte at +0xc94 is zero, the routine leaves at once with that byte as v0 (return at
  0xd940398).
  The word at +0x704 decides first: with bit 0x800 set, the word at +0x7d58 is stored at 0xd940360
  after `a1` takes -0x401 at 0xd940354 and the immediate 0x200 appears at 0xd94035c.
  Clear bit 0x800 sends the code to 0xd9403a0, which tests bit 0x2 of the word at +0x700 (`beq` at
  0xd9403ac) and then compares the word at +0x72c with 0xbf1 (`beq` at 0xd9403b8); those tests
  choose one of three stores into +0x7d58, at 0xd9403cc, 0xd940404 and 0xd94041c.
  The `bltz` at 0xd940368 leads to two calls: 0xd9403d8 gets a0 = object, a1 = -0x401 or -0x201 by
  path, a3 as received, and a4 = 2; 0xd9403e4 gets a0 = object; then control jumps back to
  0xd94036c, just before the common tail.
  The common tail sets 2 in abs 0x1018 (`sw` at 0xd940370); it also stores +0x2dec back with bit 0x1
  set (`sw` at 0xd940380, value `[a0+11756] | 0x1`), then returns at 0xd940388 with a v0 the bundle
  gives as `?`.
  Unknown: a2 at the `bltz` at 0xd940368 (`?` in the bundle) is what decides whether the two pass
  calls run.
  Unknown: the store values at 0xd940360, 0xd9403cc, 0xd940404 and 0xd94041c are absent from the
  bundle, because the instructions that compute them are not listed.
  Unknown: whether each of the `bgezall` calls at 0xd9403d8 and 0xd9403e4 runs on every path is
  open, because the bundle omits the register each one tests.
  Evidence grade: established.
- `__glCrmSpanReadDepth2` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd9665a0 (o32).
  Inferred: the frame-buffer read is `crmReadPixelsXfer`, which its callee note describes as copying
  the frame buffer into user memory; this routine prepares that read from the structure at a0 and
  the record at a1, then loops over a count taken from the record.
  Before the call it writes 0xc02 to +0x7dd8 (`sw` at 0xd9665f8), 1 to +0x7dce (`sb` at
  0xd9665fc), zero to +0x7e58 (`sw` at 0xd966600) and the pointer a0+31228 to +0x7e28 (`sw` at
  0xd966604); after the call it zeroes +0x7dce and +0x7dd8 (`sb` at 0xd966630, `sw` at 0xd966634).
  The call at 0xd966618 passes the stack buffer at sp-508, arg2 and a0+31228; after it, a zero or
  negative word at +0xa8 of the record ends the routine (`blez` at 0xd966680).
  Otherwise the loop runs until its counter in a1 equals that word (`bnel` at 0xd966900), loading
  the double at +0x668 (`ldc1` at 0xd9666bc) and storing single-precision values through pointers
  (`swc1` at 0xd9666c4 and 0xd96670c).
  Unknown: which buffer the `swc1` stores in the loop write to, because their base register is not
  traced; a trace of the loop's pointer setup would settle it.
  Unknown: which fields the word at +0x7dd8, the byte at +0x7dce and the word at +0x7e28 hold; a
  committed entry for the structure would name them.
  Unknown: whether `crmReadPixelsXfer` writes to a device register; its committed entry gives
  offsets from a base it does not name, so a committed entry that names that base would settle it.
  Evidence grade: inferred.
- `__glcrmim_AlphaFunc` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd93bcb0 (n32).
  Checks `a0` and `a1` and calls `__glSetError` when a check fails; on the normal path it copies the
  word at +0xdd8 to +0x720 and stores `a0` at +0x71c of the object at [0x1010], then calls
  `__glCrmPassAlphaFunc`.
  Inferred: the object at [0x1010] is the GL context, because the committed `__glSetError` note says
  the current context is read from address 4112.
  Inferred: a 1 in abs 0x1018 sends the code (`beq` at 0xd93bcd8) to a `__glSetError` call with
  0x502 (`jalr` at 0xd93bd7c), whose result is returned; the committed note for that callee gates
  the store of the code into +3208 on that word being zero.
  A0 below 0x200 (`bne` at 0xd93bce4) and an a1 of zero (`beq` at 0xd93bcec) both lead to
  `__glSetError` with 0x500 (`jalr` at 0xd93bd68), where the callee's result comes back.
  On the normal path the call at 0xd93bd1c is followed by 2 written to abs 0x1018 (`sw` at
  0xd93bd2c); before the return, the words at +0x2de8 and +0x2dec of the object reached through `a5`
  are stored (`sw` at 0xd93bd48 and 0xd93bd54), and the value returned is the one from that call
  (return at 0xd93bd50).
  Unknown: the pointer in `a5` at 0xd93bd38 is `?` in the bundle, although `a5` is reloaded from the
  stack slot written from [0x1010] at 0xd93bcf0, so the object behind +0x2de8 and +0x2dec is open.
  Unknown: the values stored at 0xd93bd48 and 0xd93bd54, since the bundle gives an immediate 1 at
  0xd93bd44 and 0xd93bd4c but not the instructions that use it.
  Unknown: whether the call at 0xd93bd1c is conditional stays open, because the bundle lacks the
  register its `bgezall` tests.
  Evidence grade: inferred.
- `__glcrmim_ColorMask` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd93c1c0 (n32).
  Records four colour-mask flags in the current context and forwards them to `__glCrmPassColorMask`.
  It loads the words at abs 0x1018 and abs 0x1010 (the `lw` at 0xd93c1c4 and 0xd93c1c8). When the word at
  abs 0x1018 equals 1 (the `beq` at 0xd93c1e4) it stores nothing: it calls `__glSetError` with 0x502 (the
  `jalr` at 0xd93c21c) and returns that result (0xd93c224, 0xd93c210).
  Otherwise it stores one byte from each argument into the context at [0x1010]: a3 at +0x75f, a2 at
  +0x75e, a1 at +0x75d and a0 at +0x75c (the `sb` at 0xd93c1ec, 0xd93c1f4, 0xd93c1f8 and, in the delay
  slot of the call, 0xd93c204). It then calls `__glCrmPassColorMask` at 0xd93c200 (a `bgezall` on the
  zero register, so always taken) with the context as a0, a1 to a3 unchanged, the entry a0 in a5 and the
  context again in a6, and returns its result (0xd93c208, 0xd93c210).
  Inferred: the word at abs 0x1010 is the GL context pointer, since the committed `__glSetError`
  note keeps the current context at address 4112, which is 0x1010.
  Inferred: 0x502 is the error code that the word at abs 0x1018 produces, since `__glSetError` records
  the first GL error code of the current context and stores it in the word at +3208 only while that
  word is zero.
  Unknown: which code leaves the word at abs 0x1018 equal to 1, since no store to that word is in
  this routine and the bundle links no caller; the stores to that word elsewhere in the library
  would settle it.
  Unknown: which engine registers `__glCrmPassColorMask` writes from the four flags, since it has no
  committed note; its own body would settle it.
  Evidence grade: inferred.
- `__glcrmim_DepthFunc` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd93ae1c (o32).
  Inferred: `__glCrmPassDepthFunc` takes the depth comparison and range, per its callee note, and
  `__glSetError` records the first GL error code, so this routine validates arg0 and either
  reports an error or forwards the comparison.
  A word at abs 0x1018 equal to 1 sends it down the error path, where `__glSetError` gets 0x502,
  the pointer loaded from abs 0x1010 as a1 and arg3, and the routine returns (`jalr` at 0xd93ae54).
  Otherwise arg0, held in a2, must be at least 0x200 and below 0x208 (the bounds 0x200 at 0xd93ae64
  and 0x208 at 0xd93ae6c); a value outside that range reports 0x500 and returns (`jalr` at
  0xd93ae80).
  In range, the pointer from abs 0x1010 receives arg0 at +0x660 (`sw` at 0xd93ae90), abs 0x1018
  gets 2 (`sw` at 0xd93ae94), the word at +0x2dec gets bit 0 ORed in (`sw` at 0xd93aea4), and
  `__glCrmPassDepthFunc` is called with that pointer as a0 and a1 (`jalr` at 0xd93aeac).
  Inferred: the callee note takes the word at +0x660, through its low three bits, as the depth
  comparison, so the arg0 stored there is the comparison the engine receives.
  Unknown: which condition the value 1 at abs 0x1018 indicates, since this routine writes only 2 to
  that word (`sw` at 0xd93ae94); a published specification line for that address would settle it.
  Unknown: which field the OR with 1 sets in the word at +0x2dec; a field table for the owning
  structure would settle it.
  Evidence grade: inferred.
- `__glcrmim_LogicOp` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd93ce70 (n32).
  The normal path acts on the object at [0x1010], storing `a0` at +0x740 and calling
  `__glCrmPassLogicOp` with that object.
  A check of abs 0x1018 against 1 (`beq` at 0xd93ce98) routes to a call of `__glSetError` with 0x502
  (`jalr` at 0xd93cee8); a0 under 0x1500 (`bne` at 0xd93cea4) or a1 of zero (the fall-through of
  `bne` at 0xd93ceac) routes to `__glSetError` with 0x500 (`jalr` at 0xd93ceb4).
  `a0` is in place at +0x740 before `__glCrmPassLogicOp` starts, because the `sw` at 0xd93ced8
  occupies the slot after the `bgezall` at 0xd93ced4; the routine returns that call's value (return
  at 0xd93cec4).
  Unknown: the field at +0x740 of that object, since the bundle has no field table for it and no
  published specification excerpt names it.
  Unknown: what `a1` holds at the `bne` at 0xd93ceac; the bundle gives no value for it.
  Unknown: the register tested by the `bgezall` at 0xd93ced4, if that call is conditional at all.
  Evidence grade: established.
- `__glcrmim_StencilFunc` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd93bbb8 (o32).
  Inferred: the callee note for `__glCrmPassStencilMode` describes it as handing the stencil test
  setup to the engine, and according to its note `__glSetError` is the error recorder, so the
  routine checks arg0 before it stores its arguments for the engine.
  If the word at abs 0x1018 holds 1, the code at 0xd93bbf0 calls `__glSetError` with 0x502, arg1,
  arg2, and the pointer from abs 0x1010 as a3, and returns.
  If arg0 is below 0x200, or is 0x208 or above (the bounds 0x200 at 0xd93bc04 and 0x208 at
  0xd93bc0c), it reports 0x500 (`jalr` at 0xd93bc20) and returns.
  In range, arg1 is set to zero when negative (`bgez` at 0xd93bc30, zero at 0xd93bc38), v0 is
  tested against arg1 (`beq` at 0xd93bc50), arg1 is stored as a halfword at +0x686 (`sh` at
  0xd93bc60), and v0 ANDed with arg2 is stored as a halfword at +0x688 (`sh` at 0xd93bc64, with the
  `and` at 0xd93bc54).
  Then arg0 goes to +0x680 (`sw` at 0xd93bc5c), 2 goes to abs 0x1018 (`sw` at 0xd93bc6c), bit 0 and
  bit 1 are ORed into the words at +0x2dec and +0x2de8 (`sw` at 0xd93bc80 and 0xd93bc84), and
  `__glCrmPassStencilMode` is called with the pointer as a0 and a3 and arg2 as a2 (`jalr` at
  0xd93bc90).
  Inferred: the stencil mode word is built from the halfwords at +0x686 and +0x688 (its callee note
  reads them as bytes) and from the low three bits of the word at +0x680, so the stores above feed
  that word.
  Unknown: whether v0 at the test at 0xd93bc50 is the 0x1000 set at 0xd93bbd4 or a different value;
  a trace of every write to v0 on that path would settle it.
  Unknown: whether the single instruction at 0xd93bc58, which runs only when the test at 0xd93bc50
  falls through, changes a1 or t3 before the stores at 0xd93bc60 and 0xd93bc64; a trace of that
  instruction would settle it.
  Evidence grade: inferred.
- `__glcrmim_StencilMask` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd93d090 (n32).
  Inferred: the routine updates the stencil write mask, which is the halfword at +0x68a of the
  structure that the word at 0x1010 points to, because the callee note for
  `__glCrmPassStencilMask` names +0x68a as that mask.
  The word at 0x1018 is loaded and compared with 1 (`beq` at 0xd93d0b4); when it is not 1, the
  routine stores 2 to 0x1018 (`sw` at 0xd93d0d8) and stores the halfword in a4 to +0x68a (`sh` at
  0xd93d0d0), where a4 was set to 1 at 0xd93d09c.
  It then loads the word at +0xcb0 (`lw` at 0xd93d0bc), ORs 2 into the word at +0x2de8 and 1 into
  the word at +0x2dec (`sw` at 0xd93d0ec and 0xd93d0f8), and calls `__glCrmPassStencilMask`
  (`jalr` at 0xd93d0f4) with the pointer in a0 and a3, the ORed word in a1, 2 in a2 and the +0xcb0
  word in a5; the `sw` at 0xd93d0f8 sits in the call's delay slot.
  When the word at 0x1018 is 1, the routine calls `__glSetError` with code 0x502, its entry a0 in
  a2 and its entry a1 in a1 (`jalr` at 0xd93d110), and it makes none of those stores.
  Both paths return at 0xd93d104 with the value of the callee they ran.
  Inferred: the callee note for `__glCrmPassStencilMask` says it writes the halfword at +0x68a to
  the mask register at +0x21e8 of both mappings only when the byte at +0x7d09 and bit 15 of the
  word at +0x700 are set.
  Unknown: the device register, if any, at the absolute addresses 0x1018 and 0x1010; no published specification
  excerpt in the bundle names either address. Settling test: the same base-register check as for
  0x1018 on the stores to both addresses, plus a search of the register tables for offsets 0x1010
  and 0x1018; if neither a register row nor a mapping to a device window appears, the question stays unknown.
  Evidence grade: inferred.
- `crmTexSubImageRead` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd977418 (o32).
  Inferred: `__glInitReadImageSrcInfo` sets up the source side and `__glClipReadPixels` clips the
  rectangle, both per their callee notes, and the copy into user memory happens in
  `crmReadPixelsXfer`; this routine chains those steps on the structure at a0 and then calls
  `crmTexSubImageStore` with a0, arg1 and arg2 (`jalr` at 0xd9777fc).
  The words at +0xe74 and +0xe78 are saved to the stack and replaced with the words at +0x7d40 and
  +0x7d44 when the byte at offset 0xdd0 is zero (`sw` at 0xd977478 and 0xd97747c), and after the clip they
  are restored if that byte is still zero (`sw` at 0xd977530 and 0xd977538).
  It calls `__glInitReadImageSrcInfo` (`jalr` at 0xd9774a4) and then `__glClipReadPixels`
  (`jalr` at 0xd97750c); a zero clip result, which its callee note says reports whether pixels
  remain, makes the routine return 0 (`bnel` at 0xd977540, with the `or` at 0xd977544).
  The word at +0x7d3c of a0 is a pointer P and the word at +4 of P is a pointer Q; `crmReadPixelsXfer`
  is called (`jalr` at 0xd9776e8) unless the word at P+0 is 4 (`bne` at 0xd9776ac), the byte at +4
  of Q is nonzero (`beq` at 0xd9776bc), and either the word at +0x28 of Q is 0x10 (`beql` at
  0xd9776cc) or the word at +0x2c of Q is zero (`beql` at 0xd9776d8), in which case
  `viceReadPixels` is called instead (`jalr` at 0xd977710).
  Around that choice the word at +0x7dd8 is set to 1 (`sw` at 0xd977628) and zeroed after the store
  call (`sw` at 0xd97781c), and the path that reaches the store call returns 1 (`v0` set at
  0xd977818).
  Unknown: what the value in t1 selects among the jump-table targets at 0xd977604, 0xd977624 and
  0xd977580 (`jr t1` at 0xd977578, table at 0xda439c8); the table holds addresses only, so a trace
  of where t1 is set would settle it.
  Unknown: which fields the word at P+0, the word at Q+0x28, the word at Q+0x2c and the byte at Q+4
  hold; a committed entry for the owning structure would name them.
  Unknown: the destinations that `viceReadPixels` and `crmTexSubImageStore` write, since neither has
  a committed entry; their own entries would settle it.
  Evidence grade: inferred.
- `reallocScratch` in `usr/gfx/arch/IP32CRM32/libGLcore.so` at 0xd953250 (n32).
  Inferred: the messages at 0xda41d40, 0xda41dc0 and 0xda41d70 name a scratch buffer, its
  allocation and its reset, so the routine works on the scratch-buffer record in the structure at a0.
  Every load and store in the body goes to the structure at a0, the stack or the globals at
  0xda4b93c and 0xda4b944, and none goes to an absolute address.
  When a1 is not positive (`blez` at 0xd953274), every path stores zero to +0x7e3c (`sw` at
  0xd953428 or 0xd95353c) and to +0x7e30 (`sw` at 0xd95342c).
  When a1 is negative and the word at +0x7e40 is nonzero, it calls `cachectl` with that word,
  0x20000 and 0 (`jalr` at 0xd953478), prints `GL ERROR: cachectl CACHEABLE ` through `perror` when
  the call returns nonzero (`jalr` at 0xd953490), unmaps with `unmapScratch` (`bgezall` at
  0xd9534a4), and stores zero to +0x7e40 and +0x7e34 (`sw` at 0xd9534ac and 0xd9534b0).
  Inferred: `__glCrmFlushAndConfirm`, per its callee note, stores zero to the flush register at
  +0x21f8 and polls the status word at +0x4000 until bit 28 is set; the call at 0xd9533b8 runs when
  a1 is between 1 and 0x20000, the word at +0x7e40 is nonzero, and the sum of the word at +0x7e34 and
  a1 exceeds 0x20000 (`bne` at 0xd9532a4).
  The return at 0xd9534c8 yields 0, reached from the `bgez` at 0xd953430 when a1 is not negative and
  after the cleanup at 0xd9534b4.
  Unknown: the field names for the words at +0x7e30, +0x7e34, +0x7e3c and +0x7e40 of the structure
  at a0, which a field table for that structure would supply.
  Unknown: the device-side work of `mapScratch`, `unmapScratch`, `pinBuffer`, `unpinBuffer` and
  `LoadLinearTlb`, and the targets of the three register-indirect calls at 0xd953504, 0xd95351c and
  0xd953530; the notes for those routines, once written, would cover them. Settling test: disassemble
  each routine and list the stores to uncached device windows; resolve the three indirect calls by
  reading the function-pointer table they load from (a dynamic-symbol or relocation read).
  Evidence grade: inferred.
- `sgiInitKeymapInfo..JFC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10194160 (n32).
  Inferred: gets the keymap description for the keymap entry in a1 from the driver through request
  0x5308, because the failure text at 0x10297690 names GETKEYMAPDESC for the request it reports, and the
  other texts name a keymap description (0x102976f8) and an ignored keymap (0x10297728).
  It calls `Xalloc` with 0x10 in a0 (the `jal` at 0x1019417c) and stores the result at a1 +0x4c on
  both paths (the `sw` at 0x10194188).
  A zero result passes the 0x102976f8 text and then the 0x10297728 text, with the name at a1 +0x2c,
  to `ErrorF`, clears bit 0 of the byte at a1 +0x47 (`lbu` at 0x10194200, mask -0x2 formed at 0x10194208,
  `sb` at 0x10194210), and leaves through the return at 0x10194218 with the value from the last
  `ErrorF`.
  A non-zero result builds a request block in the caller's buffer, the entry's a2: the constant
  0xffffffffc0106902 at +0x0 (the `sw` at 0x10194198), zero at +0x4 (0x101941ac), 0x10 at +0x8
  (0x101941a8) and the allocated record pointer, the word at a1 +0x4c, at +0xc (0x101941c0). It then
  calls `ioctl` with the entry a0 as its first argument, request 0x5308 and that buffer as its third
  (the `jalr` at 0x101941bc).
  A non-negative `ioctl` result is handed back (the return at 0x101941d4). A negative one (the `bltz`
  at 0x101941c4) sends the 0x10297690 text, with the name at a1 +0x2c, to `ErrorF`, sends the
  0x102976c0 text the same way, and copies the bytes at 0x102976e8 through 0x102976f4 ('SGI Standard'
  and the zero byte after it) into the allocated record at +0x0 through +0xc, so the record holds a
  default name; the routine leaves through the return at 0x10194274.
  Inferred: the record pointer at +0xc of the request block is where the driver is meant to put the
  description, because the failure path fills the same record locally with a name.
  Unknown: which bytes the 0x5308 request writes into the record on success; the route is the driver
  side of the request, since the linked ioctl row for 0x5308 is missing.
  Evidence grade: inferred.
- `shmiqLink` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10094120 (n32).
  Inferred: links a stream device to the shmiq, whose descriptor word is at 0x102cc0e8, because the
  texts say "Must open shmiq before linking devices" (0x10297210) and name I_LINK (0x102972a8) and
  I_UNLINK (0x102972e0).
  A negative descriptor word at 0x102cc0e8 (`shmiqfds`) exits at once with -1 after the 0x10297210
  text goes to `ErrorF` (the `bltz` at 0x1009413c).
  Otherwise it issues request 0x530c with the entry a0 as its argument (the `jalr` at 0x10094154);
  a negative result sends the 0x102972a8 text to `ErrorF` and returns the value -1 (the `bltz` at
  0x1009415c).
  A non-negative result leads to request 0x5308 with a buffer at sp-96 (the `jalr` at 0x10094194);
  a non-zero result from it sends the 0x10297270 text to `ErrorF` and returns the value -1 (the `bne`
  at 0x1009419c).
  The `beq` at 0x100941b0 sends control to the block at 0x10094258, which issues request 0x530d (the
  `jalr` at 0x1009427c); otherwise it stores three words into the table at 0x102c5d40 at +0x4848,
  +0x4844 and +0x4840 (the `sw` at 0x100941ec, 0x100941f0 and 0x100941f8) and calls `close` with the
  entry a0 as its first argument (the `jalr` at 0x100941f4).
  Unknown: the condition on the `beq` at 0x100941b0, since the bundle gives its register as a0
  against zero in the instruction and as the value in v0 against 0x20 in the condition.
  On the path of that block that sends the 0x102972e0 text to `ErrorF` (0x10094294), the routine keeps the
  table pointer 0x102c5d40 in the frame (the `sd` at 0x10094274, reloaded at 0x1009429c), clears the same three words that the other path fills: 8 bytes from
  +0x4840 (the `sdl` and `sdr` at 0x100942a0 and 0x100942a8) and 4 bytes from +0x4848 (the `swl` and
  `swr` at 0x100942b4 and 0x100942b8), and then issues request 0x530d again (the `jalr` at
  0x100942bc).
  Unknown: whether request 0x5308 is QIOCGETINDX, as the 0x10297270 text names it, since the failure
  texts for the same number in the sgiInitKeymapInfo..JFC and simpleConstrainValuator entries name
  GETKEYMAPDESC and SETVALUATORDESC; the handler for that request on the shmiq descriptor would
  settle it.
  Evidence grade: inferred.
- `simpleConstrainValuator` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10182410 (n32).
  Inferred: updates valuator entry a1 through request 0x5308 on the shmiq descriptor, because the
  failure text at 0x102984e0 names SETVALUATORDESC for that request and says the valuators may be
  unchanged.
  It returns 0 without storing anything when the pointer at +0x94 of a0 is null (the `beq` at
  0x10182438) and when a1 is at least the halfword at +0x10 of that record (the `beq` at 0x10182448).
  Otherwise element a1 is addressed at [[a0+0x94]+0xc] plus ((a1 << 0x2) + a1) << 0x2, and the
  stores at 0x101824f0 and 0x10182510 write a2 at +0xc and a3 at +0x10 of that element.
  When the word at +0x18 of [[a0]+0x7c] is zero or negative, the routine skips the ioctl (the `blez`
  at 0x10182454); otherwise it calls ioctl on the shmiq descriptor with request 0x5308 and a stack
  buffer at sp-72 (the `jalr` at 0x101824bc).
  A negative value in v1 at the `bltz` at 0x101824d0 leaves through a call that sends the 0x102984e0
  text to `ErrorF`, returning 0 (the return at 0x1018254c); otherwise it returns 1 (the return at
  0x1018250c).
  Unknown: the source of v1 at the `bltz` at 0x101824d0, which the bundle reports with no value.
  Unknown: whether the `beq` at 0x10182448 tests a7 against zero or a1 against a7, because the bundle
  gives both forms for that branch.
  Evidence grade: inferred.
- `simpleSetResolution` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10134620 (n32).
  Takes a first index in a1, a count in a2 and a pointer in a3 to that many words, and sends one request
  per index on the descriptor held in `shmiqfds` (0x102cc0e8). It returns 1 when every request
  succeeded and 0 when a check or a request fails.
  The range is refused with 0 when a1 is negative or a1 plus a2 is not below the halfword at +0x3e of
  [[a0]+0x7c] (the `bltz` at 0x1013464c, the `beq` at 0x10134670). Each of the a2 words is then compared
  with the first two words of a 0x1c-byte row of the table at +0x48 of [[a0]+0x7c], row a1 for the first
  word and one row further for each next one (row step at 0x1013469c, word step 4 at 0x101346a0): a word
  below the row's first word (the `bne` at 0x101346a4) or above its second word (the `bne` at 0x101346ac)
  returns 0 at once (0x1013475c). A zero or negative word at +0x18 of the same structure also returns 0
  (the `blez` at 0x101346c0).
  For each index the routine then builds a 0x28-byte request block at sp-72 and calls `ioctl` with the
  descriptor, request 0x5308 and that block (the `jalr` at 0x10134734). The block holds the word at
  +0x14 of [[a0]+0x7c] at +0x0 (the `sw` at 0x10134738), 0xffffffff8020690e at +0x4 (0x10134704), the
  index as a halfword at +0x8 (0x101346ec), the halfword 1 at +0xa (0x101346cc), the low halfword of the
  next word from a3 at +0x1e (0x101346f4), 0xffffffff80085107 at +0x28 (0x1013472c), zero at +0x2c
  (0x10134708), 0x28 at +0x30 (0x10134710) and its own address at +0x34 (0x10134720). The index starts
  at a1 and grows by one each time (0x101346d0, 0x101346e8).
  A negative `ioctl` result ends the loop and returns 0; a non-negative one goes on to the next index
  (the `beq` at 0x10134744, taken when the result is not below zero), and after the last index the
  routine returns 1 (the `xori` with 0x1 at 0x10134748 inverts the result-below-zero flag).
  Unknown: the fields that the 0x5308 request changes on the descriptor; the route is the handler for
  that number, and the linked ioctl row for it has none.
  Unknown: which field of the device record the first two words of each 0x1c-byte row are; the route is
  the code that fills the table at +0x48.
  Evidence grade: established.
