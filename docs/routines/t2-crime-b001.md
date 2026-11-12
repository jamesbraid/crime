# Tier-2 batch 1 routine readings

- `__glCrmPickPointProcs` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd95cf2c
  **Inferred.** Tests a flag word at a0+30436 and a byte at a0+3221, then calls `__glGenericPickPointProcs` through the pointer at 0xd9f37a8 (calls at 0xd95d024 and 0xd95d044) with arguments a0 to a3 passed through unchanged. Many other context fields are loaded and stored at offsets such as +0x7dc0 and +0x30d0 without names, so the exact selection rule is not derived. Reads like a pick-point dispatcher that filters on context state before handing off to the generic path.
  Reviewed: 2026-11-12 (sonnet)

- `crmSpanDoubleStore` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd964300
  **Inferred.** Loads and stores fields in the context at a0+0x7d58 to +0x7dbc and at +0x77bc, +0x2df0, +0x2018 and +0x21e8, and loads and stores fields at +0xd0 and +0xdc through a base the facts do not name. Calls `__glCrmSetDrawBuffer` at 0xd96437c and 0xd964450 with the word at a0+11760 as arg1, and makes two unresolved calls at 0xd964434 and 0xd964504 with a0 and a1 passed through. A halfword at a0+1674 is tested for zero after each draw-buffer call. Role (from name): a double-precision span store for the CRM path; the unresolved callees and the span format are not derived.
  Reviewed: 2026-11-12 (sonnet)

- `ReturnRGBASpan` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd967878
  **Inferred.** Loads floats at +0x7820 to +0x7848 from the block that [a0] points to, and at +0x7ad8 to +0x7ae4 (base not shown). Runs float comparisons in a loop (backward branch at 0xd967c38), stores byte and word fields at +0x7d58 to +0x7e58 (base not shown), makes an unresolved call at 0xd9678f4 with a0 = [a0], and calls `crmDrawPixelsXfer` at 0xd967d4c with a0 = [a0], a2 = [a0]+32088 and a3 = the byte at [[a0]+32202]. More stores follow that call. The return value is that call's result. Role (from name): return an RGBA span; the pixel format is not derived.
  Reviewed: 2026-11-12 (sonnet)

- `crmDoDoubleStore_SD` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd970a6c
  **Inferred.** Calls `__d_to_ll` at 0xd970b38, then makes unresolved calls at 0xd970b84 and 0xd970c08, both with a1 passed through from entry; only the second has a3 = [a0]+32088. Returns a callee's result (v0 = ret(?) at 0xd970c18). Role (from name): store a double on the SD path. The name `__d_to_ll` suggests a double-to-64-bit-integer conversion, but the facts do not show what is done with its result or what the unresolved callees are.
  Reviewed: 2026-11-12 (sonnet)

- `__glDlistBlockStateInit` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97aee0
  **Inferred.** Makes eleven word stores through a base the facts do not name: six before the call, one after it, and four more only on the path where the call returned nonzero. The stored values are not shown. Calls an unnamed function at 0xd97af2c with a1 = 4 and a0, a2 and a3 passed through from entry, and returns 0 or 1 according to whether that call returned zero (branch at 0xd97af3c); which value goes with which outcome is not shown. Role (from name): set up a display-list block state.
  Reviewed: 2026-11-12 (sonnet)

- `__glDlistBlockStateFree` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97af6c
  **Inferred.** Loads words from the argument a1 at +0x0, +0x4, +0xc, +0x14, +0x18 and +0x24, and calls three unnamed functions at 0xd97afac, 0xd97afd8 and 0xd97aff0 with the words at a1+20, a1+24 and a1+36 as their second argument and a1 itself as the third. The first call's result is compared with -1 (0xd97afc4); the other two calls are made only when it is not -1. Returns 0 or 1; the facts do not show which outcome gives which value. Role (from name): release the lists of a display-list block state.
  Reviewed: 2026-11-12 (sonnet)

- `block_grow_region` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97b010
  **Inferred.** Calls three unnamed functions at 0xd97b058, 0xd97b098 and 0xd97b0c8. The first gets the word at a1+20 as arg1; the other two get the global pointer at 0x1010 as arg0 and the words at a1+24 and a1+36 as arg1. The first call's result is compared with -1 and the others with 0, and a failing test branches to 0xd97b16c. The facts also show a loop of loads and stores at 0xd97b100 to 0xd97b12c. Returns 0 or 1 at 0xd97b178. Role (from name): grow a display-list block region; the growth size and the callee roles are not derived.
  Reviewed: 2026-11-12 (sonnet)

- `__glDlistPreallocBlocks` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97b180
  **Inferred.** Compares the word at a0+28 with a1 (unsigned, branch at 0xd97b1a4). When it is at least a1 the call is skipped and the return is 1, the only value in the return set besides the call result. Otherwise it calls `block_grow_region` at 0xd97b1c0 with a0 passed as arg1 and arg2, and returns that call's result. Role (from name): preallocate display-list blocks on demand.
  Reviewed: 2026-11-12 (sonnet)

- `__glDlistAllocBlock` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97b1e4
  **Inferred.** Loads and stores fields at a0+0x4, +0x8, +0xc, +0x14, +0x18 and +0x1c, with a loop at 0xd97b2a0 to 0xd97b2b4. Only when the word at a0+8 is -1 does it call an unnamed function at 0xd97b21c with a0 = 0 and a1 = [a0+20]; a result of -1 branches to 0xd97b31c. Only when the word at a0+28 is zero does it call `block_grow_region` at 0xd97b25c with arg0 = [a0+4]+32 and arg1 = a0; a zero result branches to 0xd97b31c. The return set is -1 or a value the facts do not name. Role (from name): allocate a block from a free list, growing the region when needed.
  Reviewed: 2026-11-12 (sonnet)

- `__glDlistFreeBlock` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97b32c
  **Inferred.** Loads words at offsets +0x8, +0x0, +0x18 and +0x1c, stores one word with no offset and one at +0x1c (0xd97b38c, after the return instruction), and branches on whether the word at [a0] is non-zero (0xd97b344). It makes no calls and its return value is not derived. Role (from name): return a block to a free list; how the blocks are linked is not derived.
  Reviewed: 2026-11-12 (sonnet)

- `__glDlistCompactBlocks` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97b390
  **Inferred.** Calls three unnamed functions at 0xd97b530, 0xd97b56c and 0xd97b5ac. The first is inside a loop (branch at 0xd97b548 back to 0xd97b3d4) with a2 = [a0] and a3 = [a0+20]; the last takes the global pointer at 0x1010 as arg0 and the word at a0+24 as arg1. Many nested comparisons are not resolved by the facts. Returns 0 or 1 at 0xd97b5d8. Role (from name): compact display-list blocks; the steps are not derived.
  Reviewed: 2026-11-12 (sonnet)

- `__glDlistIsBlock` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97b5e0
  **Inferred.** Reads a0+0x0, +0x4 and +0x8 and tests a value for zero at 0xd97b5ec before returning. The facts show three field loads and one zero test, with no comparison of the pointer against a bound, so the role is not derived. The return expression is also not derived from the facts.
  Reviewed: 2026-11-12 (sonnet)

- `__glDoInterpret` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97b890
  **Inferred.** Makes seven unresolved calls in a straight line, at 0xd97b8a8 to 0xd97b908, with no branches in the facts. Each call after the first takes the previous return value plus 4 as arg0. Role (from name): interpret a display-list stream. The facts show a chain of seven calls, not a loop, and the callees are unnamed.
  Reviewed: 2026-11-12 (sonnet)

- `__glle_Sentinel` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97b91c
  **Inferred.** A 20-byte routine with no calls and no branches; it returns an unresolved value at 0xd97b928. The facts do not show what it does beyond that, so its role is unknown here and it may stay at located.
  Reviewed: 2026-11-12 (sonnet)

- `__glim_NewList` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97b930
  **Inferred.** Calls `__glSetError` at 0xd97b96c, 0xd97b9a0, 0xd97b9c8, 0xd97b9e8 and 0xd97ba48 with error codes 0x502, 0x500, 0x502, 0x501 and 0x505 in that order, after tests of the word at [0x1018], of a1 against 0x1300 and 0x1301, of [[0x1010]+4988], of a0, and of an unnamed call's result. It calls an unnamed function at 0xd97ba20 only when [[0x1010]+4960] is non-zero and [[0x1010]+5012] is zero. It calls `__glMipsCopyDispatch` at 0xd97ba80 and 0xd97ba98 with [0x1010]+9864 as arg1 and [0x1010]+6080 as arg0, and makes two more unresolved calls at 0xd97bae8 and 0xd97bb04. Role (from name): the immediate-mode new-list entry; the facts do not show what the checks mean or how the list is set up.
  Reviewed: 2026-11-12 (sonnet)

- `__glce_EndList` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97bb20
  **Inferred.** Loads a word at +0x268c, calls `glEndList` at 0xd97bb44 with a0 to a3 passed through unchanged, has a word store at +0x0 at 0xd97bb48 right after the call instruction, and returns that call's result. The bases of the load and the store are not shown, so the facts do not establish that it is a pure forwarder.
  Reviewed: 2026-11-12 (sonnet)

- `DoCallList` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97bcd0
  **Inferred.** Calls `__glNamesLockData` at 0xd97bd14 with a1 = [[0x1010]+4928] and a2 = a0 from entry. Only when its result is non-zero (branch at 0xd97bd24) does it call an unnamed function at 0xd97bd48 with that result as arg1, then `__glNamesUnlockData` at 0xd97bd70 with the same result as arg1. The return is the lock result, the unlock result or a value the facts do not name. Role (from name): run a display list by name between a names lock and unlock; the middle call and the list lookup are not derived.
  Reviewed: 2026-11-12 (sonnet)

- `__gllc_CallList` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97bd8c
  **Inferred.** Calls `__gllc_InvalidEnum` at 0xd97bdb8 when a0 is zero (branch at 0xd97bda8). Otherwise it calls `__glDlistAllocOp2` at 0xd97bdd4 with a1 = 4 and, when that returns non-zero, `__glDlistAppendOp` at 0xd97be04 with the allocated op as arg1 and 0xd97be20 (`__glle_CallList`) as arg2. Role (from name): the compile-time path for CallList, which records an op instead of running the list.
  Reviewed: 2026-11-12 (sonnet)

- `__glle_CallList` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97be20
  **Inferred.** Calls `DoCallList` at 0xd97be44 with the first word of a0 as arg0 and the other arguments passed through, then returns a0+4. Reads like the execution step for a recorded CallList op: it reads the list name from the op and advances past the 4-byte op.
  Reviewed: 2026-11-12 (sonnet)

- `__glce_CallList` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97be64
  **Inferred.** Runs an 8-byte load and store loop (0xd97be90 to 0xd97beac), then calls `__glMipsCopyDispatch` at 0xd97bed0, 0xd97befc, 0xd97bf30 and 0xd97bf50 with the constant 0x1050 (arg1 in the first, second and fourth, arg0 in the third) and with [0x1010]+6080 as arg0, [0x1010]+9864 as arg0, [0x1010]+9864 as arg1 and sp-1888 as arg0 respectively. Between them it calls `glCallList` at 0xd97bee4 and 0xd97bf18 with a0 from entry. Returns the last copy dispatch result at 0xd97bf64. Role (from name): a compiled-context glCallList entry; the direction of each copy and the meaning of 0x1050 are not derived.
  Reviewed: 2026-11-12 (sonnet)

- `__glce_CallLists` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97bf6c
  **Inferred.** The same copy-dispatch pattern as `__glce_CallList` (`__glMipsCopyDispatch` at 0xd97bfe0, 0xd97c010, 0xd97c048 and 0xd97c068 with constant 0x1050), with `glCallLists` called at 0xd97bff8 and 0xd97c030. Returns the copy dispatch result at 0xd97c07c. Reads like the compiled-context glCallLists entry, the batch form of the entry above.
  Reviewed: 2026-11-12 (sonnet)

- `__glim_CallList` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97c084
  **Inferred.** On a failed check calls `__glSetError` at 0xd97c0ac with error code 0x501. Otherwise it calls `DoCallList` at 0xd97c0c8 with all four argument registers passed through. Returns either the error call's result or the value at [0x1010]. Reads like the immediate-mode glCallList: validate, then run the list.
  Reviewed: 2026-11-12 (sonnet)

- `DoCallLists` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97c0ec
  **Inferred.** Calls `__glNamesLockDataList` at 0xd97c1c8 with a1 = [[0x1010]+4928], an unnamed function at 0xd97c1f0 inside a loop (backward branch at 0xd97c1fc), and `__glNamesUnlockDataList` at 0xd97c210 with a2 = sp-1024. A further backward branch at 0xd97c22c returns to 0xd97c19c, before the lock call, so the lock, loop and unlock sequence can repeat. Role (from name): the multi-list form of DoCallList, locking the names data, running each name and unlocking. The buffer contents and the per-name lookup are not derived.
  Reviewed: 2026-11-12 (sonnet)

- `__gllc_CallLists` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97c278
  **Inferred.** On a bad argument calls `__gllc_InvalidValue` at 0xd97c2b0 or `__gllc_InvalidEnum` at 0xd97c310. Otherwise it allocates an op with `__glDlistAllocOp2` at 0xd97c32c, copies from the pointer in a2 into the op at +24 with `memcpy` at 0xd97c364 (the length is not in the rendered facts), and appends it with `__glDlistAppendOp` at 0xd97c37c, with 0xd97c398 (`__glle_CallLists`) as the handler. Reads like the compile-time path for CallLists, the variable-length form of the CallList recorder.
  Reviewed: 2026-11-12 (sonnet)

- `__glle_CallLists` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd97c398
  **Inferred.** Calls `DoCallLists` at 0xd97c3c8 with the word at a0 as arg0, the word at a0+4 as arg1, a0+8 as arg2, and a0 as arg3. Its return value is not derived. Reads like the execution step for a recorded CallLists op, which hands the recorded count and names to `DoCallLists`.
  Reviewed: 2026-11-12 (sonnet)
