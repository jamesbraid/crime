# Context save and restore (IRIX 6.5.30, O2)

How the IRIX kernel driver moves the rendering engine between clients, and how libGLcore cooperates. Register names are in [CRIME_RE.h](../CRIME_RE.h) and [MTE.h](../MTE.h). Labels: **established** (read from the cited function in the committed decompilation under `crime_kernel/decomp/` and checked against the object disassembly), **inferred**, **unknown**. `k:` means the kernel `crime.o`/`crime_debug.o`/`crime_tiles.o`, `gl:` means N32 `libGLcore.so`.

## Summary

- The engine has no hardware context. The kernel keeps, per client, a shadow record of the engine registers that libGLcore maintains itself, and reloads the engine from it on a switch (established).
- GBE is not saved or restored per client (established as an absence: none of the switch routines below touches a GBE address; the only per-drawable display writes are the window-ID table updates in `docs/gbe.md`).
- Three kinds of state move: the register image (global and non-global), the rendering TLBs, and the uncommitted entries in the interface buffer.

## The shadow record

- libGLcore asks the kernel for it with ioctl `0x55f3` (kernel `crimeIoctl`); the kernel maps pages for the client (`crmMapPages(..., 0x288, ...)`) and returns the user address (established). libGLcore stores the result minus `0x2000` (`gl:crm_context`, MakeCurrent), so the shadow of pixel-pipe register `0x2000 + x` sits at record offset `x` (established).
- Pixel-pipe registers `0x2000` to `0x21e8` use that mapping. The memory-transfer registers `0x3000 + x` (x up to `0x48`) sit at record offset `0x200 + x` (established, `crmLoadGlobalsFromShadow`, `crmLoadNonglobalsFromShadow`).
- Record offset `0x1f0` (the slot of register `0x21f0`, PixPipeNull, which is never read back) holds a software flag word instead (established, `k:crmLoadGlobalsFromShadow`, `gl:crm_context`, `gl:crm_pick`). Nothing in the engine reads it.
- libGLcore writes every global register to the hardware and to the shadow with the same value; non-global registers go to the hardware only (see `libglcore/include/glcore_crime.h`).

## The flag word at record offset 0x1f0

libGLcore writes it, the kernel reads it to decide which register groups exist (established). Bits, with the libGLcore derivation:

| Bit | Kernel loads when set | libGLcore sets it when | Label |
|---|---|---|---|
| `0x01` | polygon-stipple mode `0x20c0` and pattern `0x20c4`; also the kernel reads `0x20c4` back at switch-out | bitmap or stipple draw (`gl:crm_pick`: DrawMode bit 19 set, bitmap pickers) | established |
| `0x04` | the memory-transfer group (see below) | never by libGLcore's pick path (it clears the word to 0 first); the kernel's own ioctl `0x5651` stores `0x84` | established |
| `0x08` | texture group | textures enabled and DrawMode bit 15 (`DM_TEXTURE`) set | established |
| `0x10` | smooth-shading steppers `0x20e0`-`0x210c` | shading enable bit (bit 1 of the pick mask) | established that the bit gates those registers, inferred that it means smooth shading |
| `0x20` | depth steppers `0x21c8`-`0x21d8`, depth function `0x21c0`, stencil `0x21e0`/`0x21e8` | depth or stencil enabled (pick mask bits 2 and 5) | established gating, inferred meaning |
| `0x40` | fog, alpha-test, blend registers, anti-alias steppers | alpha, blend, fog or anti-alias enabled (pick mask `0x2300`, `unk700 & 0xa00`) | established gating, inferred meaning |
| `0x80` | selects the X-server vertex registers `0x2070`-`0x2078` instead of the GL vertex registers `0x2080`-`0x2094`; `0x2048` (scissor) is then not reloaded | never by libGLcore; kernel ioctl `0x5651` stores `0x84` | established |

After MakeCurrent succeeds libGLcore stores `0x7d` (every bit except `0x02` and `0x80`) and keeps a copy in the context at offset `0x7dc0`; each validation recomputes the copy and stores it (established, `gl:crm_context` after ioctl `0x5609`, `gl:crm_pick` end). When the old word had bit `0x01` and the new one does not, libGLcore first spins until status `0x4000` bit 28 (`0x10000000`) is set before storing the word (established, `gl:crm_pick` tail). Inferred: bit 28 is the engine-idle flag (the kernel's `crmIdleWait` waits for it together with a zero level field), and the wait keeps the kernel from saving a stipple pattern the engine is still consuming.

## Global and non-global registers

`k:crmIsGlobalRegWrite` (crime_debug.o) indexes a 128-byte table with `(offset >> 2) & 0x3ff` for offsets `0x2000` to `0x21ff` and answers 1 for every other offset (established). The table, per 4-byte slot, is non-zero for global registers. Decoded per 8-byte register (zero means non-global):

- Non-global (zero): `0x2060` Primitive, `0x2070`-`0x2078` X vertices, `0x2080`-`0x209c` GL vertices, `0x20a0`, `0x20a8`-`0x20b4` transfer, `0x20c0`, `0x20c4` stipple, `0x20d0` foreground colour, `0x20e0`-`0x20fc` and `0x2100`-`0x210c` shade steppers, `0x2120`-`0x215c` texture steppers, `0x2178`-`0x218c` fog steppers, `0x2190`, `0x2194` anti-alias, `0x21c8`-`0x21d8` depth steppers.
- Global (non-zero): `0x2000`-`0x2058` (buffer modes, clip mode, DrawMode, screen masks, scissor, window offsets), `0x20d8` background colour, `0x2110` and `0x2118` texture mode and format, `0x2160` and `0x2168`, `0x2170` fog colour, `0x2198`-`0x21bc` alpha test, blend, logic op, colour mask, `0x21c0`, `0x21e0`, `0x21e8`, `0x21f0`, `0x21f8`.
- Against the specification's pixel-pipe table ([spec] PDF 165-166, table 7-3, which marks each register G or NG): `0x20d0` (foreground colour) is NG there too, so the kernel agrees with the hardware classification. `0x21f0` (PixPipeNull) is NG in the specification and global in the kernel's table; it is a write-only register with no state, and the kernel uses its shadow slot as the flag word (above), so the difference changes only where `crmFindPP` stops walking back (a null commit is treated as a boundary), never what is replayed (inferred). Settled: no hardware difference to model.
- Values 1 and 2 in the table appear to mark the even and odd 32-bit halves of a register (inferred from the repeating `1,2` pairs on 32-bit registers and `1,1` pairs on 64-bit ones). Only the even half is ever consulted (established, `crmFindPP`).

## Switch sequence (`k:crimePcxSwap`)

Order read from the function (established, with the helper functions below). It receives the outgoing and incoming clients; either may be absent.

Outgoing client:
1. `gfx_waitc_on`.
2. `crmSavePP` (below), storing the number of saved entries at the client's context offset `+0x48`.
3. If the flag word has bit `0x01`: wait for idle (`crmIdleWait`, 1,000,000 polls of 1 microsecond; failure raises a driver error), then copy the live stipple pattern `0x20c4` into shadow offset `0xc4`. This is the only register the kernel reads back; every other value is trusted from the shadow.
4. Write 0 to `0x4008`.

Incoming client:
1. Wait for idle.
2. Record the client's saved-count word as the current one (board offset `0x90`).
3. If the client's flags halfword (at `+4`) has bit 1 set and its two clip serials differ from the cached ones, run `crimeValidateClip`; a negative result aborts the switch.
4. `crmValidateDrawable`: load the three frame-buffer TLBs A, B, C from the drawable's tile tables (`crmLoadTlbABC`, skipped for a slot whose cached serial already matches the board's, board offsets `0xa4`-`0xac`); load linear TLBs A and B (`0x1700`, `0x1780`, 16 doublewords each) from the drawable's copies, or zero them once if it has none; write 0 to `0x4008`; if the drawable has a texture, reload the texture TLB (`crmLoadTexTlb`) and write 0 to `0x4008` again.
5. `crmLoadGlobalsFromShadow`, then `crmLoadNonglobalsFromShadow` (register order below).
6. Write 0 to `0x4008`.
7. If the client saved entries, `crmRestorePP` replays them.
8. `gfx_waitc_off`.

Order within `crmLoadGlobalsFromShadow` (all 32-bit stores unless noted): `0x2000`, `0x2008`, `0x2010`, `0x2018`, `0x2020` to `0x2040` (five 64-bit mask registers), `0x2050`, `0x2058`, `0x21b0`, `0x21b8`, `0x20d8`; with flag `0x04`: `0x3000`, `0x3008`, `0x3018`, `0x3020`, `0x3028`, `0x3040`, `0x3048`; unless flag `0x80`: `0x2048` (64-bit) then, per flag, `0x40`: `0x2170`, `0x21a0`, `0x21a8`, `0x2198`; `0x20`: `0x21c0`, `0x21e0`, `0x21e8`; `0x08`: `0x2110`, `0x2118` (64-bit), `0x2160`, `0x2168`.

Order within `crmLoadNonglobalsFromShadow`: `0x2060`, `0x20a0`, `0x20a8`, `0x20ac`, `0x20b0`, `0x20b4`, `0x20d0`; flag `0x01`: `0x20c0`, `0x20c4`; flag `0x04`: `0x3010`, `0x3030`, `0x3038`; flag `0x80`: `0x2070`, `0x2074`, `0x2078`; otherwise `0x2080`-`0x2094` (six words), then flag `0x40`: `0x2178`, `0x2180`, `0x2188`, `0x2190`, `0x2194`; flag `0x20`: `0x21c8`, `0x21d0`, `0x21d8` (64-bit); flag `0x10`: `0x20e0`-`0x210c` (twelve words); flag `0x08`: `0x2120`, `0x2128` (64-bit), `0x2130`, `0x2134`, `0x2138`-`0x2150` (64-bit), `0x2158`, `0x215c`.

Note: the loaders do not reload the texture TLB, the Zs/stepper state of an unfinished primitive, or MTE registers when flag `0x04` is clear; the rest of the engine is assumed clean after the idle wait (inferred).

### Linear TLB load in `crmValidateDrawable`

Established (6.5.30 `crime_tiles.o`, the tail of `crmValidateDrawable`): the loop copies 16 doublewords from the drawable's descriptor, one pair per pass, linear A from descriptor `+0x50` onward into `0x1700 + 8i` (`0x1700`, `0x1708`, `0x1710`, `0x1718` and so on) and linear B from `+0xd0` onward into `0x1780 + 8i` (`0x1780`, `0x1788`, `0x1790`, `0x1798` and so on). It does this when the descriptor's word at `+0x24` or `+0x34` is non-zero, and then sets a "linear TLBs loaded" word in the board record (`+0xb4`). When both are zero the loop instead zeroes all 32 doublewords, but only if that board word is set, and clears it; so a drawable without linear pages costs one clear, not one per switch. Either way the function then writes 0 to `0x4008`.

## Saving and replaying uncommitted writes

`crmSavePP` (established):
1. Read status `+0x4000`: start pointer bits 5:0, write pointer bits 11:6.
2. If they differ, use that span (add 64 when negative). If they are equal, call `crmFindPP` with the start pointer, which walks backward through the 64-entry ring, one entry at a time, stopping at an entry whose address word has bit 45 set or whose register is global (via `crmIsGlobalRegWrite`); it returns the index after the stop, so entries written since the last global or flagged entry are re-saved (established as code, inferred as purpose: recover non-global parameters already queued but not yet consumed by a start). It returns -1 if it hits the start again, and `crmSavePP` then saves nothing.
3. `crmFifoWait` until the committed entries drain (1,000,000 polls); timeout reports a driver error and saves nothing.
4. Copy each entry: 64-bit address word from `IB_ADDR(i)` (`+0x200 + 8i`) and the two data words from `IB_DATA(i)` (`+8i`), into the client context at `+0x150` (addresses, 64 doublewords) and `+0x350` (data, 64 doublewords). Ring wraps at 64.
5. Write 0 to `+0x4008`.

Interface-buffer address word, as decoded by `crmRestorePP` and `crmFindPP` (established as software decoding; the hardware meaning of the byte-lane field is inferred): bits 39:32 register index in doublewords within the group, bits 42:40 group (0 interface, 1 TLB, 2 pixel pipe, 3 memory transfer, per `CRIME_RE.h`), bits 44:43 lane code, bit 45 used by `crmFindPP` as a stop flag (role unknown; the start alias at offset `0x800` cannot be among the decoded bits, so inferred that bit 45 may mark an entry that carried it, unverified). Replay computes `window + ((index * 8) | (group << 12))` and writes through the uncached alias: lane code 3 stores the 64-bit data word, 2 stores data word 0 at the register address (high word in big-endian layout), 1 stores data word 1 at register address + 4, 0 prints a driver warning and writes nothing.

## Other users of the save and replay

The same `crmSavePP`, `crmRestorePP` pair brackets the kernel's own rendering: overlay or drawable changes (`crm_enableovl`, `crm_enablesz`, `crmRecomputeSZ`, `crm_changedrawables`, `crimeValidateClip`, `crimeUpdateBackTiles`) and the TLB loaders; each saves the pending entries, rewrites the TLB, and replays them (established). `crimePcxSwitch` returns 0 and `crimeLockOut` returns 1, doing nothing (established). `crimeSuspend` clears the client's reschedule word at `+0x48` unless a lock word at `+0x3c` is set; `crimeResume` forces a reschedule if that word was non-zero (established).

The kernel memory-transfer helpers `mte_copy` and `mte_zero` (kernel.o) call `crmSavePP`, program the memory-transfer registers directly, and call `crimeRestore` with the saved entries (established). `crimeRestore` (crime.o) writes a list of MTE-group registers from the shadow record at `0x200 + offset`, reloads linear TLBs A and B for the entries named in two bit masks, writes 0 to `0x4008` and replays the entries (established). The two objects disagree on the argument list (established, pass 3):

- `crimeRestore` (crime.o, `0x35e4`) takes, in N32 argument registers a0 to a6: linear-A mask, linear-B mask, pointer to a list of MTE register offsets, list length, saved address array, saved data array, entry count. It adds `0x3000` to each listed offset, then calls `restore_linear` for each non-zero mask, writes 0 to `+0x4008`, and replays the entries when the count is above zero.
- `mte_copy` (kernel.o, 0x9a34; its call to `crimeRestore` at `0x9b80`) passes: a0 = the rendering-engine base pointer it last loaded, a1 = linear-A mask, a2 = linear-B mask, a3 = the stack address of its offset list, a4 = 5, a5 and a6 = its saved arrays, a7 = the saved entry count. Its offset list already holds full offsets such as `0x3020`. `mte_zero` has the same shape.

Inferred effect as shipped (from the callee's code applied to those registers): the base pointer is used as the linear-A mask, so the linear-A doublewords chosen are those whose two-bit groups are non-zero in the pointer's low 32 bits; linear B is restored with the caller's linear-A mask; the list pointer is a kernel stack address, negative as a 32-bit count, so the register loop is skipped; the replay count is a stack address, also negative, so no saved entry is replayed. Only the `+0x4008` write happens as intended. So after a kernel MTE copy or clear, the interrupted client's uncommitted entries are discarded rather than restored, and the linear TLBs hold a mixture. The kernel object was evidently built against a different `crimeRestore` with an extra leading base argument. Whether this mismatch ever matters depends on whether a client had uncommitted entries when the kernel used the MTE (unknown).

## Window clip set-up in the kernel (`crimeValidateClip`)

Sources: 6.5.30 `crime.o` (`crimeValidateClip`, `objdump -d` and `crime_kernel/decomp/crime.c`); the ClipMode, ScrMask and WinOffset tables of the CRIME 1.5 specification. Labels as above.

Established: when a window's clip list changes, the kernel rewrites the clip-related global registers of the client that owns it, from a descriptor holding the window origin (words at `+0x8`, `+0xc`), the bounding width and height (`+0x10`, `+0x14`), a rectangle count (`+0x18`) and a pointer to the list (`+0x1c`), each rectangle being four words: x, y, width, height. The new values always go into the client's shadow record; when the caller says the client is the one loaded on the engine, they also go to the hardware, with the pending writes saved and replayed around the update (`crmSavePP`, `crmRestorePP`): `0x2010` (ClipMode), the five 64-bit screen masks `0x2020`, `0x2028`, `0x2030`, `0x2038` and `0x2040`, and `0x2050`, `0x2058` (window offsets), followed by a write of 0 to `0x4008`.

- Screen mask `n` (at `0x2020 + 8n`) is one rectangle, with x start in bits 63:48, y start in 47:32, x end (exclusive) in 31:16 and y end in 15:0. A list of one to five rectangles fills masks 0 to 4 in list order. A rectangle that starts left of or above the origin is cut there: its start becomes 0 and its end stays at the original start plus the size.
- With no rectangles in the list, mask 0 (`0x2020`) takes the window's bounding box in the same form, and the other masks keep their old contents.
- The two window offsets are `(x - 0x1000) << 16 | (y - 0x1000) & 0xffff` from the origin words. `0x2058` (destination) gets the drawing window's, `0x2050` (source) the read window's, which differs only when the two drawables differ. The bias is 4096 pixels: window-relative coordinates sent to the engine carry that bias (inferred from the subtraction; the arithmetic is established).
- ClipMode: for each rectangle `i` the kernel sets bits `5 + i` and `i` (`0x21 << i`), so one rectangle gives `0x21`, two `0x63`, three `0xe7`, four `0x1ef` and five `0x3ff`. With no rectangles it writes `0x21`, or `0x821` when the descriptor's word at `+0x24` is non-zero (clip-ID testing, bit 11), plus bit 10 (`0x400`, clip-ID map select) when the word at `+0x20` equals 1. With more than five rectangles it writes `0x21` and no mask; the shadow keeps its earlier mask 0 (the caller that handles such lists was not traced).
- Discrepancy with the specification's table: the table assigns bit 9 to the enable of mask 0 and bit 4 to its inside/outside mode, descending to bits 5 and 0 for mask 4. The kernel pairs bit `5 + i` (enable) with bit `i` (mode, 1 = pass inside) for the mask it loads at `0x2020 + 8i`, which is the table's bits for mask `4 - i`. Each enable and its mode bit are the same mask in both numberings, so only the pairing with a register differs. Inferred: the table's mask numbering runs opposite to the register order, or its bit labels are mirrored; the driver's pairing is the one shipped software relies on. The table also gives all five ScrMask rows the description "screen mask 0", which supports the view that its numbering was copied carelessly.

## The libGLcore side (pass 6)

Sources: N32 `libGLcore` the CRIME GL driver context assembly unit (`MakeCurrentRead`, `LoseCurrent`, `Finish`, `__glCrmFlushAndConfirm`, `DestroyHWContext`), the CRIME GL driver picking assembly unit, a scan of every N32 libGLcore function for stores through the two pointers described below; request numbers in [ioctls.md](ioctls.md). Labels as above.

- Established: the context holds two bases to the engine registers: gc+32184 (`0x7db8`), the pointer libGLcore stores hardware writes through, and gc+32188 (`0x7dbc`), the shadow record address minus `0x2000` (so a register offset is the same immediate on both). `MakeCurrentRead` sets the second from the `0x55f3` reply (`reply - 0x2000`) and the first from the result of the context method at gc+36 (established from the delay-slot stores near `0x0d947208` in `crm_context.s`; an earlier reading named gc+40, which instead returns the device descriptor kept at gc+31504, `docs/ioctls.md`). The method belongs to libGL's window-system layer, so the page it maps is chosen there, not in libGLcore.
- Established: `MakeCurrentRead` asks for a drawable (`0x5604`, id stored at offset 4 of the record gc+32560 points to), binds it (`0x5609`), loads the draw and read buffer TLB sets (`0x55f7`), then stores `0x7d` as the flag word through the shadow pointer (`sw 125, 8688(shadow)`, and the same value in gc+32192): the same value the kernel starts from. Nothing in libGLcore ever stores flag bit `0x80`; the kernel does through `0x5651` (X server).
- Established: libGLcore never saves or restores engine state itself on a switch. The kernel does it all (`crimePcxSwap` above); libGLcore only keeps the shadow and the flag word current and issues `0x55f7` when it changes a buffer. `Finish` writes 0 to register `0x21f8` through the hardware pointer and waits for status `0x4000` bit 28 (idle); `Flush` does nothing; `LoseCurrent` flushes under the conditions given in `docs/ioctls.md`, calls `__glLoseCurrentBuffers`, and clears the global current-context pointer; `DestroyHWContext` frees library state only (it sends no ioctl; a drawable's kernel record is released when the descriptor closes, inferred, not read).
- Established by scan (a linear scan of the listings that tracks which register holds the hardware or the shadow pointer and records each store immediate in `0x2000` to `0x21ff`; stores through a pointer copied by `move` are missed, so absence is weak): libGLcore stores through the shadow pointer, besides the global registers, also the non-global ones the kernel reloads from the shadow: Primitive `0x2060`, stipple `0x20c0` and `0x20c4`, foreground colour `0x20d0`, shade steppers `0x20e0` to `0x20ec`, `0x20f0`, `0x20f8`, `0x2100`, `0x2108`, fog steppers `0x2178` to `0x2188`, depth steppers `0x21c8` to `0x21d8`. Registers the scan found stored to the hardware only: the GL vertex registers `0x2080` to `0x2090` (the shadow takes `0x2084` and `0x208c` in three places), the odd halves of the shade steppers, the texture steppers `0x2120` to `0x215c`, `0x2190` and `0x21f8`. The kernel reloads the texture steppers from the shadow when flag bit `0x08` is set, so either libGLcore stores them through a pointer the scan lost or the shadow copy of them is stale after a switch; unresolved, listed in `captures.md`.
- Inferred: because the kernel's global table and libGLcore's shadow writes do not coincide (libGLcore also shadows the non-globals above), the table is the kernel's replay classification (what must be kept across an interface-buffer save), not a list of what libGLcore mirrors. Both views are recorded; the hardware meaning of "global" stays as the first Unknown below.

Texture steppers and the shadow (established; a per-function scan of the N32 listings that follows registers loaded from gc+32184 and gc+32188 and records stores at `0x2120` to `0x215c`): the triangle, span and textured-line set-up (`__glCrmFillTriangle`, `__glCrmDumpSpan` and its variants, `__glCrmTexturedLine`, `FillAASubTriangle`, `RenderPointTextured`) write the texture steppers to the hardware only. Three paths also write them to the shadow: `__glCrmSetupPixelRenderOps` (`0x0d956910..0x0d956cd4`, all of `0x2120` to `0x215c`), `RenderAntiAliasedPoint` (`0x0d95d560..0x0d95dc84`, `0x2120` to `0x2134`) and `__glCrmStoreLine` (`0x0d94e020..0x0d94f0dc`, `0x2138` to `0x215c`). So a switch with flag `0x08` set reloads the steppers last written by one of those three paths, not the current triangle's; since the kernel switches only after an idle wait, the stale values matter only to a primitive the next context sends without rewriting them (inferred).

## GBE and the clip state

GBE registers are not part of the switch (see Summary). Per-drawable display state that follows a drawable, not a client, is the window-ID table and tile lists in `docs/gbe.md`.

## Unknown

- Address-word bit 45: inferred to be the start flag, set on an entry written through the start alias (`+0x800`). Reasoning: bits 39:32 hold the register's doubleword index (address bits 10:3) and bits 42:40 its group (address bits 14:12), so address bit 11, the start alias, is the one address bit the decoded fields leave out, and `crmFindPP` stops at it exactly where a committed primitive ends. A model must set it on start-alias entries for the kernel's save to stop at the right place. Beyond that: unknown: no shipped software or published source depends on it. Routes tried: [spec] (the interface-buffer chapter gives the address RAM without a layout, PDF 163-164, 185-186), the 6.5.30 kernel, NetBSD, Linux, MAME.
- A primitive that has begun when the engine is reloaded: unknown: no shipped software or published source depends on it. The kernel switches only after its idle wait and never saves mid-primitive state, and the specification says committed primitives run to completion atomically ([spec] PDF 186). Routes tried: [spec], the 6.5.30 kernel (`crimePcxSwap`, `crmSavePP`), NetBSD, Linux, MAME.
- Whether the kernel reads back anything else on the O2 with a different CPU module.

## Rendering-engine registers by access site (6.5.30)

One entry per rendering-engine register the shipped 6.5.30 code reaches, or that the CRIME 1.5 specification lists and no code reaches, from `crime_kernel/disasm/`, `libglcore/asm/CRIME/` and the register tables of `root/spec/crime.txt` (tables 7-1 to 7-3). Offsets are from the rendering-engine window. Every entry carries a label.

- `IntfBuf.data` at `+0x0`: 128 doubleword slots of the host interface buffer, which hold the data half of each register write waiting for the engine (table 7-1). Established.
  `crmSavePP` in `crime.o` reads the low and high words of slot `s` at byte `8 * s` of the window and the matching address from `+0x200 + 8 * s`.
  Its loop wraps the slot index back to 0 when it reaches 64, so IRIX treats the ring as 64 entries even though the table lists 128.
- `TLB.fbB` at `+0x1200`: 64 registers of the second frame-buffer translation table, four 16-bit tile numbers each (table 7-2). Established.
  `crmLoadTlbABC` in `crime_tiles.o` writes it together with the A and C tables from the drawable's tile list, shifting the physical address right by 16.
  A write of 0 to `+0x4008` ends every such batch.
- `TLB.fbC` at `+0x1400`: the third frame-buffer table, the same 64-register shape as `+0x1200` and `+0x1000` (table 7-2). Established.
  The kernel skips the load for a slot whose cached serial equals the board's, by comparing words at board offsets 0xa4 to 0xac inside `crmValidateDrawable`.
  A drawable whose cached serial matches the board's leaves it as it was.
- `TLB.tex` at `+0x1600`: 28 registers of the texture table, four 16-bit tile numbers each (table 7-2). Established.
  `crmLoadTexTlb` in `crime_tiles.o` rewrites all 28 doublewords on every texture bind from the 0x1d0-byte image `crmDefineTex` built.
  Each entry is the physical address shifted right by 16, ORed with 0x8000.
- `+0x16e0` TLB.cid: four registers of 16-bit colour-index tile entries (table 7-2). Established.
  `crmLoadCidTlb` in `crime_tiles.o` takes the entry count from word `+4` of the descriptor and entry halfwords through the list pointer at `+8`.
  It packs four entries per doubleword with entry 0 in the top halfword, stores each full doubleword at `+0x16e0` plus 8 per group of four, and ends with a write of 0 to `+0x4008` (`sw zero,16392`).
- `+0x1708` TLB.linearA: the second doubleword of the 16-register linear table A, which holds two 32-bit page entries (table 7-2). Established.
  The 16-pass copy loop of `crmValidateDrawable` in `crime_tiles.o` fills it on its second pass with the doubleword at descriptor offset `+0x58`.
  Each pass of that loop stores one doubleword of table A, and bit 31 of each 32-bit entry is the valid bit.
- `+0x1780` TLB.linearB: the first doubleword of linear table B, the host-memory table used for the destination of a read-back (table 7-2). Established.
  `crmValidateDrawable` in `crime_tiles.o` fills it from descriptor offset `+0xd0` when the descriptor's word at `+0x24` or `+0x34` is non-zero.
  Otherwise it zeroes all 32 linear doublewords once, and only if the board's loaded flag at `+0xb4` is set.
- `+0x1788` TLB.linearB: the second doubleword of linear table B, taking descriptor offset `+0xd8` (table 7-2). Established.
  The same second pass that writes `+0x1708` loads the doubleword at descriptor offset `+0xd8` into it.
  Of its two 32-bit entries the upper one holds the even page and the lower one the odd page.
- `+0x2020` ScrMask[0]: the first 64-bit screen mask, x start in bits 63:48, y start in 47:32, x end (exclusive) in 31:16 and y end in 15:0 (table 7-3). Established.
  `crimeValidateClip` in `crime.o` writes the first clip rectangle here, and with an empty list writes the window's bounding box here and leaves the other four masks alone.
  In the kernel's ClipMode word this register pairs with enable bit 5 and mode bit 0.
- `+0x2028` ScrMask[1]: the second screen mask, same field layout as the first (table 7-3). Established.
  `crmLoadGlobalsFromShadow` in `crime.o` reloads it second in its run of five 64-bit mask stores on a context switch.
  It pairs with ClipMode enable bit 6 and mode bit 1 (the `0x21 << 1` term of the kernel's mask).
- `+0x2030` ScrMask[2]: the third screen mask (table 7-3). Established.
  `crmSetSmask` in `crm.so` stores it with a doubleword store for X clip rectangles, and mirrors the value at shadow offset `+0x30`, the register offset minus 0x2000.
  Three rectangles make the kernel write ClipMode 0xe7, so this register's enable is bit 7 and its mode bit 2.
- `+0x2038` ScrMask[3]: the fourth screen mask (table 7-3). Established.
  A four-rectangle clip list makes `crimeValidateClip` in `crime.o` set ClipMode 0x1ef, which enables this mask through bit 8 and sets its mode bit 3.
  A rectangle starting left of or above the origin is cut there before the 64-bit store, its end staying at start plus size.
- `+0x2040` ScrMask[4]: the fifth and last screen mask (table 7-3). Established.
  Only a clip list with five rectangles reaches it, giving ClipMode 0x3ff, so the enable is bit 9 and the mode bit 4 that the specification pairs with its own mask 0.
  A list of more than five rectangles makes `crimeValidateClip` in `crime.o` write 0x21 and none of the masks.
- `+0x2080` Vertex.GL[0].x: the start x of the first GL vertex pair, 13.6 fixed point, written with its y as one 64-bit store (table 7-3). Established.
  `__glCrmFlatTriangle` and `__glCrmSmoothRGBTriangle` in `libGLcore.so` store the biased float window coordinates through it.
  `__glCrmAntiAliasLineRGB` stores the raw float bits, whose low six bits are the sixty-fourths of a pixel.
- `+0x2084` Vertex.GL[0].y: the start y of the first pair, a 32-bit word whose value is the line number shifted left by 6 and masked (table 7-3). Established.
  `StoreRGBA` in `libGLcore.so` stores the shifted y word of a point here, directly after x at `+0x2080`.
  `__glCrmDumpPerPixelSpan` in `libGLcore.so` stores it twice at sites 2472 and 2474 of `crm_span.s`.
- `+0x2088` Vertex.GL[1].x: the end x of a line or the second corner of a triangle, 13.6 fixed point (table 7-3). Established.
  `__glCrmDepthLine` and `__glCrmColorOptLine` in `libGLcore.so` write the end point of a line here.
  The routine `crmLoadNonglobalsFromShadow` in `crime.o` replays it in its run of six vertex words.
- `+0x208c` Vertex.GL[1].y: the end y of a line, a 32-bit word shifted left by 6 (table 7-3). Established.
  `__glCrmDumpPerPixelSpan` in `libGLcore.so` writes it to the hardware and to the shadow record at offset 8332 in a back-to-back pair.
  The first store goes through the hardware pointer and the second through the shadow pointer, both at the same offset.
- `+0x20b4` PixelXfer.dst.linStride: the destination row step of a pixel read-back into host memory, in bytes (table 7-3). Established.
  `crmReadPixelsXfer` in `libGLcore.so` stores the pixel size plus the stride excess here (offset 8372), and writes the same word to the shadow.
  `crmLoadNonglobalsFromShadow` in `crime.o` reloads it just after the destination address at `+0x20b0`.
- `+0x20e4` Shade.Gs: the start value of green for Gouraud shading, 9.12 fixed point (table 7-3). Established.
  `__glCrmSmoothRGBLine` in `libGLcore.so` stores it together with red as one 64-bit word, from the float-bias trick that leaves the component times 4096 in the low bits.
  The triangle routines `__glCrmSmoothRGBTriangle` and `__glCrmSmoothRGBATriangle` store it as a single float word.
- `+0x20e8` Shade.Bs: the start value of blue, 9.12 fixed point (table 7-3). Established.
  `__glCrmSmoothRGBLine` in `libGLcore.so` stores it as a 32-bit word of its own, apart from the red and green pair.
  `__glCrmDumpSpan` writes it with the alpha start as one doubleword (`sdc1`) so that a span sets both together.
- `+0x20ec` Shade.As: the start value of alpha, which also carries the colour index of an indexed-colour primitive (table 7-3). Established.
  `__glCrmSmoothCIZTriangle` in `libGLcore.so` stores the index here instead of a blue or alpha value.
  `__glCrmFillTriangle` in `libGLcore.so` stores it at three separate sites, lines 304, 355 and 406 of `crm_astextri.s`.
- `+0x20f4` Shade.dgdx: the green slope along x, 9.12 per pixel step (table 7-3). Established.
  `__glCrmSmoothRGBLine` in `libGLcore.so` stores it as a float word truncated to an integer, at line 310 of `crm_linedrawasm.s` on the x-major path.
  That path writes the red slope at `+0x20f0` and the blue slope at `+0x2100` beside it, then commits through the start alias at `+0x2904`.
- `+0x20fc` Shade.dgdy: the green slope along y (table 7-3). Established.
  `__glCrmSmoothRGBLine` in `libGLcore.so` writes it on the y-major path at label `.L0d938014`, with the red slope at `+0x20f8` and the blue slope at `+0x2108`.
  `__glCrmAntiAliasLineRGB` zeroes it on the minor axis, so a stale triangle slope never survives into a line.
- `+0x2170` Fog.color: the fog colour as `red << 24 | green << 16 | blue << 8` (table 7-3). Established.
  `__glCrmPassFog` in `libGLcore.so` truncates the three floats, shifts and ORs them, and stores the word to the hardware and, through the pointer at context offset 32188, to the shadow.
  `crmLoadGlobalsFromShadow` reloads it under flag 0x40.
- `+0x2190` Antialias.line: the antialiased-line step, a 2.14 slope in bits 31:16 and the ideal minor coordinate in bits 15:0 (table 7-3). Established.
  `__glCrmAntiAliasLineRGB` in `libGLcore.so` computes the slope as the minor delta times 16384.0 times the reciprocal of the major delta.
  `__glCrmTexturedLine` writes the pair as one 64-bit store (`sdc1` at offset 8592).
- `+0x21c8` Depth.Zs: the 25.12 start depth, a 64-bit register (table 7-3). Established.
  `__glCrmDepthLine` and `__glCrmFlatZTriangle` in `libGLcore.so` store the start depth here with a doubleword store.
  `crmLoadNonglobalsFromShadow` reloads it with the two slope registers when flag 0x20 is set.
- `+0x4008` write-zero register: the register the kernel writes 0 to after each batch of engine state. Established.
  `crimePcxSwap` in `crime.o` stores it after saving the outgoing client with `crmSavePP`, and again after the incoming client's loads.
  `crmLoadCidTlb` in `crime_tiles.o` ends with it (`sw zero,16392`), and so does `crime_load_linear_tlb` in `crime_dma.o`.
