# Tier-2 routine readings, crime round r5 batch 0

Role entries for routines in the first 25 located targets of round r5. Each role comes from the rendered facts for that exact binary range, cited by address. Entries whose facts do not settle a role are left out.

- `__gllc_CallList` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97bd8c
  **Inferred.** When a0 is zero [@0xd97bda8 fall zero] it calls __gllc_InvalidEnum with a0 = the word at abs 0x1010 [call 1, @0xd97bda8 fall zero]; it sets no other argument, so a1 and a2 pass through from entry. When a0 is nonzero [@0xd97bda8 taken] it calls __glDlistAllocOp2 with a0 = the word at abs 0x1010 and a1 = 0x4 [call 2, @0xd97bda8 taken]. When that call returns nonzero [@0xd97bde4 fall nonzero] it stores a halfword at +0xc [@0xd97bdec] and a word at +0x10 [@0xd97bdf8] of the returned record, then calls __glDlistAppendOp with a0 = the word at abs 0x1010 and a1 = that record [call 3, @0xd97bde4 fall nonzero].
  Role (from facts): for a nonzero a0 it allocates a 4-byte operation record, fills it in and appends it to the list [call 2, call 3], and for a zero a0 it only calls __gllc_InvalidEnum [call 1, @0xd97bda8 fall zero].
  Reviewed: 2026-11-12
- `__glce_EndList` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97bb20
  **Inferred.** It reads the word at abs 0x1010 [@0xd97bb30], loads the word at +0x268c of it [@0xd97bb40] and stores that to abs 0x1054 [@0xd97bb48] in the delay slot of the call to glEndList [call 1]. It leaves a0 to a3 as they were at entry, so they pass through to glEndList [call 1], and it returns the value glEndList returns [@0xd97bb54].
  Role (from facts): copies a word from the structure at abs 0x1010 to abs 0x1054, then calls glEndList and returns its result [@0xd97bb48, call 1, @0xd97bb54].
  Reviewed: 2026-11-12
- `__glDlistPreallocBlocks` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97b180
  **Inferred.** It reads the word at +0x1c of a0 [@0xd97b198]. When that word is at least a1, unsigned [@0xd97b1a4 taken], it sets v0 to 1 on the way out [@0xd97b1dc]. When it is below a1 [@0xd97b1a4 fall], it calls block_grow_region with a1 = a0 at entry and a2 = a0 at entry [call 1, @0xd97b1a4 fall], and the return passes that call's result back [call 1, @0xd97b1dc].
  Role (from facts): when the word at +0x1c is short of a1, it grows the structure through block_grow_region [call 1, @0xd97b1a4 fall]; otherwise it reports 1 [@0xd97b1a4 taken].
  Reviewed: 2026-11-12
