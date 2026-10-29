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
- Differences from the labels in `CRIME_RE.h` (the labels there came from the specification): the kernel treats `0x20d0` (foreground colour) as non-global and `0x21f0` (PixPipeNull) as global. The kernel's view is what its save logic assumes; whether the hardware distinguishes them is unknown.
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

The kernel memory-transfer helpers `mte_copy` and `mte_zero` (kernel.o) call `crmSavePP`, program the memory-transfer registers directly, and call `crimeRestore` with the saved entries (established). `crimeRestore` (crime.o) writes a list of MTE-group registers from the shadow record at `0x200 + offset`, reloads linear TLBs A and B for the entries named in two bit masks, writes 0 to `0x4008` and replays the entries (established). **Unknown**: the caller in `kernel.o` passes one more leading argument than this definition consumes and lists register offsets that already include the `0x3000` that the callee adds; the two do not agree as read, so what `crimeRestore` restores for the MTE helpers is unresolved.

## GBE and the clip state

GBE registers are not part of the switch (see Summary). Per-drawable display state that follows a drawable, not a client, is the window-ID table and tile lists in `docs/gbe.md`.

## Unknown

- Whether hardware treats `0x20d0` and `0x21f0` as the kernel assumes.
- The meaning of address-word bit 45.
- What happens to a primitive that has begun when the engine is reloaded (the kernel only switches after the idle wait; no mid-primitive save exists).
- Whether the kernel reads back anything else on the O2 with a different CPU module.
