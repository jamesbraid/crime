# Tier-2 batch 1 routine readings

- `__glCrmPickPointProcs` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd95cf2c
  **Inferred.** Tests a flag word at a0+30436 and a byte at a0+3221, then calls `__glGenericPickPointProcs` through the pointer at 0xd9f37a8 (calls at 0xd95d024 and 0xd95d044) with arguments a0 to a3 passed through unchanged. Many other context fields are loaded and stored at offsets such as +0x7dc0 and +0x30d0 without names, so the exact selection rule is not derived. Reads like a pick-point dispatcher that filters on context state before handing off to the generic path.

- `crmSpanDoubleStore` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd964300
  **Inferred.** Reads and writes span state in the context at a0+0x7d58 to +0x7e58 and in the caller's block a1+0xd0 and a1+0xdc. Calls `__glCrmSetDrawBuffer` at 0xd96437c and 0xd964450 with the buffer pointer at a0+11760, and makes two indirect calls at 0xd964434 and 0xd964504 whose targets are not named. Byte flags at a0+1674 and a0+30652 pick between paths. Reads like a double-precision span store for the CRM path; the indirect targets and the span format are unresolved.

- `ReturnRGBASpan` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd967878
  **Inferred.** Loads float values from a0+0x7820 to +0x7848 and from a0+0x7ad8 to +0x7ae4, updates byte and word fields at +0x7d58 to +0x7e58, and ends by calling `crmDrawPixelsXfer` at 0xd967d4c with a2 set to [a0]+32088 and a3 set to a byte from [[a0]+32202]. The return value is that call's result. Reads like the RGBA span path that prepares state and hands the pixels to `crmDrawPixelsXfer`; the pixel format is not derived.

- `crmDoDoubleStore_SD` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd970a6c
  **Inferred.** Calls `__d_to_ll` at 0xd970b38, which converts a double, then makes two indirect calls at 0xd970b84 and 0xd970c08 with a1 and [a0]+32088 as arguments. Returns the value of an unnamed callee at 0xd970c18. Reads like the double store for the SD path: it converts the value to a 64-bit integer and passes it on through a pointer chain. The indirect targets are not identified.

- `__glDlistBlockStateInit` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97aee0
  **Inferred.** Stores zero into eleven words of a block-state record through an unresolved base, calls an unnamed function at 0xd97af2c with a1 set to 4 and a0 passed through, and returns 0 or 1 depending on whether that call returned zero (branch at 0xd97af3c). Reads like the setup of a display-list block state that reports success or failure.

- `__glDlistBlockStateFree` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97af6c
  **Inferred.** Reads list pointers from the block-state argument at a1+0x0, +0x4, +0xc, +0x14, +0x18 and +0x24, and calls three unnamed functions at 0xd97afac, 0xd97afd8 and 0xd97aff0 with a1+20, a1+24 and a1+36 as the first argument. Returns 0 or 1 after the -1 test at 0xd97afc4. Reads like the teardown that releases each list of a block state, one call per list, reporting failure as 0.

- `block_grow_region` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97b010
  **Inferred.** Calls three unnamed functions at 0xd97b058, 0xd97b098 and 0xd97b0c8, the latter two with the global pointer at 0x1010 as arg0 and a1+24 or a1+36 as arg1. Returns 0 or 1 at 0xd97b178. Reads like the routine that grows a display-list block region by adding sub-blocks to a list. The growth size and the callee roles are not derived.

- `__glDlistPreallocBlocks` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97b180
  **Inferred.** Compares the count at a0+28 with a1 (unsigned, branch at 0xd97b1a4). When there is already room it returns 1. Otherwise it calls `block_grow_region` at 0xd97b1c0 with the same a0 and returns that call's result. Reads like an on-demand preallocation of display-list blocks; the 1 and the grow result are the only return values in the facts.

- `__glDlistAllocBlock` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97b1e4
  **Inferred.** Walks the block fields at a0+0x4, +0x8, +0xc, +0x14, +0x18 and +0x1c, calls an unnamed function at 0xd97b21c with a0 set to 0, and calls `block_grow_region` at 0xd97b25c when no block is free. Returns -1 on failure (0xd97b234 and 0xd97b26c) and otherwise a block value that the facts do not name. Reads like an allocator that takes a block from a free list and grows the region when the list is empty.

- `__glDlistFreeBlock` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97b32c
  **Inferred.** Reads the fields at a0+0x0, +0x8, +0x18 and +0x1c, updates the word at a0+0x1c, and branches on whether the word at [a0] is non-zero (0xd97b344). It makes no calls. Reads like the step that returns one block to the free list by linking it into the list head at +0x1c; the link direction is only partly visible.

- `__glDlistCompactBlocks` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97b390
  **Inferred.** Calls three unnamed functions at 0xd97b530, 0xd97b56c and 0xd97b5ac; the last takes the global pointer at 0x1010 as arg0 and a0+24 as arg1. Returns 0 or 1 at 0xd97b5d8. Reads like a compaction pass over display-list blocks that moves live blocks together. The steps are not derived in detail.

- `__glDlistIsBlock` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97b5e0
  **Inferred.** Reads a0+0x0, +0x4 and +0x8 and tests a value for zero at 0xd97b5ec before returning. The facts show three field loads and one zero test, with no comparison of the pointer against a bound, so the role is not derived. The return expression is also not derived from the facts.

- `__glDoInterpret` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97b890
  **Inferred.** Makes seven indirect calls, at 0xd97b8a8 to 0xd97b908, and each one after the first takes the previous return value plus 4 as arg0. Reads like a loop that steps through a stream of 4-byte words and dispatches each one through a callback. The callbacks are unnamed.

- `__glle_Sentinel` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97b91c
  **Inferred.** A 20-byte routine with no calls and no branches; it returns an unresolved value at 0xd97b928. The facts do not show what it does beyond that, so its role is unknown here and it may stay at located.

- `__glim_NewList` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97b930
  **Inferred.** Calls `__glSetError` at 0xd97b96c, 0xd97b9a0, 0xd97b9c8, 0xd97b9e8 and 0xd97ba48 with error codes 0x500 to 0x505 when inputs fail checks. Otherwise it calls an unnamed function at 0xd97ba20 and `__glMipsCopyDispatch` at 0xd97ba80 and 0xd97ba98 with table offsets +9864 and +6080 from the context at 0x1010. Reads like the immediate-mode new-list entry: it checks the list name and mode, raises an error on bad input, and otherwise sets up the list through the dispatch table.

- `__glce_EndList` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97bb20
  **Established.** Calls `glEndList` at 0xd97bb44 with all four argument registers passed through unchanged, and returns that call's result. It is a forwarding entry that does nothing else.

- `DoCallList` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97bcd0
  **Inferred.** Calls `__glNamesLockData` at 0xd97bd14 with the context field at [0x1010]+4928 and the argument a0, then an unnamed function at 0xd97bd48, then `__glNamesUnlockData` at 0xd97bd70. Its return is one of those results. Reads like executing a display list by name under the names lock, locking before the run and unlocking after. The middle call and the list lookup are not derived.

- `__gllc_CallList` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97bd8c
  **Inferred.** On a bad argument calls `__gllc_InvalidEnum` at 0xd97bdb8. Otherwise it allocates a 4-byte op with `__glDlistAllocOp2` at 0xd97bdd4 and appends it with `__glDlistAppendOp` at 0xd97be04, with 0xd97be20 (`__glle_CallList`) as the handler address. Reads like the compile-time path for CallList: it records an op into the list being built instead of running it.

- `__glle_CallList` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97be20
  **Inferred.** Calls `DoCallList` at 0xd97be44 with the first word of a0 as arg0 and the other arguments passed through, then returns a0+4. Reads like the execution step for a recorded CallList op: it reads the list name from the op and advances past the 4-byte op.

- `__glce_CallList` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97be64
  **Inferred.** Calls `__glMipsCopyDispatch` at 0xd97bed0, 0xd97befc, 0xd97bf30 and 0xd97bf50, which copy in both directions with the constant 0x1050 and the context offsets +6080 and +9864 from the context at 0x1010. Between them it calls `glCallList` at 0xd97bee4 and 0xd97bf18. Returns the copy dispatch result at 0xd97bf64. Reads like a compiled-context glCallList entry that copies its argument into the dispatch table, runs the list, and copies the result back. The meaning of 0x1050 is not derived.

- `__glce_CallLists` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97bf6c
  **Inferred.** The same copy-dispatch pattern as `__glce_CallList` (`__glMipsCopyDispatch` at 0xd97bfe0, 0xd97c010, 0xd97c048 and 0xd97c068 with constant 0x1050), with `glCallLists` called at 0xd97bff8 and 0xd97c030. Returns the copy dispatch result at 0xd97c07c. Reads like the compiled-context glCallLists entry, the batch form of the entry above.

- `__glim_CallList` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97c084
  **Inferred.** On a failed check calls `__glSetError` at 0xd97c0ac with error code 0x501. Otherwise it calls `DoCallList` at 0xd97c0c8 with all four argument registers passed through. Returns either the error call's result or the value at [0x1010]. Reads like the immediate-mode glCallList: validate, then run the list.

- `DoCallLists` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97c0ec
  **Inferred.** Calls `__glNamesLockDataList` at 0xd97c1c8 with the context field at [0x1010]+4928, an unnamed function at 0xd97c1f0, and `__glNamesUnlockDataList` at 0xd97c210 with a local buffer at sp-1024. Reads like the multi-list form of DoCallList: lock the names data for the list of names, run them, then unlock. The buffer contents and the per-name lookup are not derived.

- `__gllc_CallLists` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97c278
  **Inferred.** On a bad argument calls `__gllc_InvalidValue` at 0xd97c2b0 or `__gllc_InvalidEnum` at 0xd97c310. Otherwise it allocates an op with `__glDlistAllocOp2` at 0xd97c32c, copies a2 bytes from the caller into the op at +24 with `memcpy` at 0xd97c364, and appends it with `__glDlistAppendOp` at 0xd97c37c, with 0xd97c398 (`__glle_CallLists`) as the handler. Reads like the compile-time path for CallLists, the variable-length form of the CallList recorder.

- `__glle_CallLists` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97c398
  **Inferred.** Calls `DoCallLists` at 0xd97c3c8 with the word at a0 as arg0, the word at a0+4 as arg1, a0+8 as arg2, and a0 as arg3. Its return value is not derived. Reads like the execution step for a recorded CallLists op, which hands the recorded count and names to `DoCallLists`.
