# Tier-2 routine readings, crime batch 0

Role entries for the first 25 located routines in the tier-2 reading list. Each role comes from the rendered facts for that exact binary range, cited by address. Labels are Inferred unless the facts settle the role.

- `mvpreg_setpassthru` in `usr/cpu/sysgen/IP32boot/mvp.o` at 0xb910
  **Inferred.** Loads fields of its pointer argument at offsets 0x61, 0x74, 0x9c, 0xc8, 0x258, 0x268 and 0x2b0. It also makes stores at 0xba94 (byte, +0x6b), 0xba98 (byte, +0x6a), 0xbb30 to 0xbb58 (doubleword stores, some conditional on the loaded values being nonzero or differing) and 0xbd0c (byte, +0x6e); the facts do not show which base register those stores use. It calls mvpavio_preset_genlock at 0xb954, then splhi at 0xb978, then mvpavio_select_input at 0xb9d8, mvpavio_change_timing at 0xb9f0, mvpavio_preset_output at 0xba70 and splx at 0xbb70, followed by mvpavio_change_timing at 0xbb80, mvpavio_select_genlock at 0xbba8 and 0xbc18 and mvpavio_select_output at 0xbbc8, with a second splx at 0xbc8c; which calls run on which path depends on the branches shown. mvpavio_preset_genlock is called before splhi, and the later calls follow the splx at 0xbb70. The name suggests it sets up the video pass-through path, but the rendered facts do not show what the pass-through state is, so the role is only partly derived.
  Reviewed: 2026-11-12
- `_j_exceptnorm` in `sbin/stand/symmon.IP32` at 0xa0011060
  **Inferred.** A 28-byte stub with no body of its own: it jumps through a register at 0xa0011068 to the address held in the constant 0xffffffffa0010370, passing its four argument registers unchanged. The name suggests the normal exception entry, which this forwards to, but the rendered facts do not show what lives at the target.
  Reviewed: 2026-11-12
- `_r4600sc_disable_scache` in `sbin/stand/symmon.IP32` at 0xa0021600
  **Inferred.** Tests the register t2 at 0xa0021628, 0xa0021634 and 0xa0021640, and on the nonzero path reaches a block at 0xa0021680 that loads a word at 0xa002168c and stores a word at 0xa0021698 before returning at 0xa0021694. The name suggests it turns off the secondary cache on an R4600, but the rendered facts do not resolve the addresses behind the load and store or the meaning of t2, so the cache effect is not derived.
  Reviewed: 2026-11-12
- `_r4600sc_vtop` in `sbin/stand/symmon.IP32` at 0xa0021840
  **Inferred.** Branches on the sign of a0 at 0xa0021840 and of a0 shifted left by one at 0xa0021848, and on bit 0 of a register at 0xa00218ac, then ends with jumps through a register at 0xa0021854 and 0xa00218dc back to its own entry 0xa0021840. The shape is an address-class dispatch that re-enters itself, which fits a virtual-to-physical lookup by its name. The rendered facts do not show the table or mapping it reads, so the translation rule is not derived.
  Reviewed: 2026-11-12
- `_r4600sc_cache_index` in `sbin/stand/symmon.IP32` at 0xa00218e4
  **Inferred.** A 28-byte stub that sets a7 to the constant 0x9000000000000000 and jumps through a register at 0xa00218f8 back to its own entry 0xa00218e4, passing its arguments unchanged. The name suggests an index-form cache operation, but the rendered facts show no cache instruction, so the operation itself is not derived.
  Reviewed: 2026-11-12
- `size_2nd_cache` in `sbin/stand/symmon.IP32` at 0xa0023458
  **Inferred.** Tests a value in t0 (its source is not resolved in the facts) at 0xa0023474 through 0xa00234a4, and tests it against the bit mask 0x20000 at 0xa00234bc. It makes a word store at 0xa00234e4 whose base register is not shown, and ends with a tail jump at 0xa00234f0 to sCacheSize when the branch at 0xa00234a4 is taken. A second exit at 0xa00234fc returns 0 or an unresolved value. The facts do not show what the store holds or how a size is computed, so the role (a front end that hands off to sCacheSize) is inferred from the name and the tail jump only.
  Reviewed: 2026-11-12
- `_c_hwb` in `sbin/stand/symmon.IP32` at 0xa0023504
  **Inferred.** Dispatches on a0 with an unsigned compare against 1 at 0xa002350c (taken when a0 is 0), an equality test with 1 at 0xa0023514 and one with 3 at 0xa0023520, and has a single return at 0xa002355c whose value is -1, 0 or unresolved. It is a small mode switch. The name suggests a cache writeback, but the rendered facts show no cache instruction and do not say what each mode does, so the operation is not derived.
  Reviewed: 2026-11-12
- `_c_hwbinv` in `sbin/stand/symmon.IP32` at 0xa002358c
  **Inferred.** Makes compares like _c_hwb: an unsigned compare against 1 at 0xa0023594, equality tests with 1 at 0xa002359c and 3 at 0xa00235a8, and a single return at 0xa00235e4 whose value is -1, 0 or unresolved. Unlike _c_hwb, the a0 == 3 branch goes to the same target (0xa00235ec) as the a0 < 1 branch. The name suggests writeback followed by invalidate, but the rendered facts contain no cache instruction, so what it does is not derived.
  Reviewed: 2026-11-12
- `_c_hinv` in `sbin/stand/symmon.IP32` at 0xa0023604
  **Inferred.** Dispatches on a0 with an unsigned compare against 1 at 0xa002360c and an equality test with 1 at 0xa0023614, and returns through the single exit at 0xa0023650 with 0 or an unknown value. It has no -1 return, which separates it from _c_hwb and _c_hwbinv. The name suggests a cache invalidate, but the rendered facts show no cache instruction, so the operation is not derived.
  Reviewed: 2026-11-12
- `_c_ilt_n_ecc` in `sbin/stand/symmon.IP32` at 0xa0023678
  **Inferred.** Dispatches on a0 with the same compares against 1 at 0xa0023680 and 0xa0023688 as the other cache-line helpers, makes word stores at 0xa00236d0 and 0xa00236d8 (offset 0 from base registers the facts do not resolve), and returns 0 at 0xa00236d4. The name suggests a line-table read with error-correction handling, which the rendered facts do not show, so the ECC part and the stored values are not derived.
  Reviewed: 2026-11-12
- `_c_ilt` in `sbin/stand/symmon.IP32` at 0xa00236fc
  **Inferred.** Dispatches on a0 with compares against 1 at 0xa0023704 and 0xa002370c, makes one word store at 0xa0023740 (offset 0 from a base register the facts do not resolve), and returns 0 at 0xa0023744. Its shape matches _c_ilt_n_ecc with the second store removed, so the two are probably variants of one read. The name suggests a line-table read, which the rendered facts do not establish.
  Reviewed: 2026-11-12
- `_c_ist` in `sbin/stand/symmon.IP32` at 0xa002376c
  **Inferred.** Loads a word at offset 0 from a base register the facts do not resolve at 0xa0023770, dispatches on a0 with compares against 1 at 0xa0023790 and 0xa0023798, and returns 0 from three exits at 0xa00237b0, 0xa00237c8 and 0xa00237e0. The rendered facts do not show what the loaded word is or means, so the role is not derived.
  Reviewed: 2026-11-12
- `runcached` in `sbin/stand/symmon.IP32` at 0xa0023818
  **Inferred.** A 28-byte stub that jumps through a register at 0xa002382c and passes its four argument registers unchanged to whatever address the register holds. The rendered facts do not resolve that target, so this is a pass-through to a callee chosen at run time. The name suggests it runs a routine in the cached address window, which the facts do not confirm.
  Reviewed: 2026-11-12
- `uncached` in `sbin/stand/symmon.IP32` at 0xa0023834
  **Inferred.** The same 28-byte pass-through as runcached: it jumps through a register at 0xa0023848 and passes its four argument registers unchanged. The name suggests it runs a routine in the uncached window, the counterpart of runcached, but the rendered facts do not resolve the target.
  Reviewed: 2026-11-12
- `delayloop` in `sbin/stand/symmon.IP32` at 0xa0029280
  **Inferred.** A self-branching loop: the branch at 0xa0029284 returns to itself while a0 is positive (signed), and the routine returns with an unknown value at 0xa002928c. The decrement that ends the loop is not among the rendered facts, so the cost per pass is not derived. The name suggests a busy-wait delay, which matches the loop shape.
  Reviewed: 2026-11-12
- `memcpy` in `sbin/stand/symmon.IP32` at 0xa002d300
  **Inferred.** A 16-byte forwarder: it tail-jumps to bcopy at 0xa002d308 with its first two arguments swapped, so a1 becomes bcopy's first argument and a0 its second, and a2 and a3 pass through. Its return is whatever bcopy returns. The swap turns memcpy's destination-first order into the source-first order that bcopy takes, but the rendered facts do not show bcopy's own contract, so the direction is inferred from the name.
  Reviewed: 2026-11-12
- `strlen` in `sbin/stand/symmon.IP32` at 0xa00309ac
  **Inferred.** A byte loop: it loads the byte at a0 at 0xa00309ac, exits at 0xa00309d0 when that byte is zero (branch at 0xa00309b4), and otherwise loops at 0xa00309c0 while the loaded byte is nonzero (branch at 0xa00309c8). The exit returns 0 or an unknown value. The loop is a NUL-terminated string scan, but the rendered facts do not show the return as a length, so the return value is not derived.
  Reviewed: 2026-11-12
- `ErrorF` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10094ec0
  **Inferred.** Calls VLogError..CK at 0x101523c0 from 0x10094f00 with the constant 3 as its first argument, passes its own a0 and a3 on, and returns that callee's result at 0x10094f10. The constant 3 looks like a fixed severity level, and the name ErrorF suggests a printf-style error report, but the rendered facts do not show the callee's contract, so the level meaning is inferred.
  Reviewed: 2026-11-12
- `malloc` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100bbe30
  **Inferred.** When the flag at sym(__us_rsthread_malloc) is set, it takes a lock through __libc_lockmalloc at 0x100bbe58, calls the allocator body __malloc..ML at 0x100bbe64, and releases the lock through __libc_unlockmalloc at 0x100bbe7c. The branch at 0x100bbe4c skips the lock when the flag is zero, and the return at 0x100bbe90 gives the allocator's result. This is a lock-gated wrapper around the allocator.
  Reviewed: 2026-11-12
- `free` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1016b9e0
  **Inferred.** When the flag at sym(__us_rsthread_malloc) is nonzero it calls __libc_lockmalloc at 0x1016ba0c, before it tests its argument. The branch at 0x1016ba14 then skips to 0x1016ba68 when s0 (a0 at entry) is zero. Otherwise it loads a word at 0x1016ba2c (the facts name the value entry(0x102c71c0)) and, when that value is nonzero, calls realfree..NL at 0x1016ba38 with it; a word store follows at 0x1016ba50. At 0x1016ba68 it releases the lock through __libc_unlockmalloc at 0x1016ba74 when the flag is nonzero, and returns at 0x1016ba88. The same lock pattern as malloc suggests it is the matching release, but the rendered facts do not show the table layout or that realfree..NL receives the caller's block.
  Reviewed: 2026-11-12
- `realloc` in `usr/gfx/arch/GENERIC/Xsgi` at 0x101a0420
  **Inferred.** A 2728-byte routine that takes the same flag-gated lock (__libc_lockmalloc at 0x101a0458 and 0x101a04ac, with __libc_unlockmalloc calls at 0x101a0480, 0x101a050c and several later exits). When a0 is zero (branch at 0x101a0444) it calls the allocator body __malloc..ML at 0x101a0460 and returns its result. Otherwise it calls cleanfree..BM at 0x101a04b4 and reads the words at a0-8 and a0-16, following a chain of pointers from there, which the facts show as nested loads but not as a documented layout. On some paths it calls __malloc..ML at 0x101a0570, memcpy at 0x101a05a0 with the new block as destination and the old pointer as source, and realfree..NL at 0x101a05c4 with a value loaded from the table at 0x102c71c0 (not the old pointer). It calls memmove at 0x101a0934 and realfree..NL at 0x101a0864 on other paths. Returns shown are the old pointer (0x101a0528), the __malloc..ML result (0x101a0498 and 0x101a0618), 0 (0x101a06a4 and 0x101a06d8) and an unresolved value (0x101a0778). The facts do not show what realfree..NL releases.
  Reviewed: 2026-11-12
- `calloc` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10228250
  **Inferred.** Branches to 0x102282f4 when a0 or a1 is zero (branches at 0x1022825c and 0x10228264); the facts do not show what that target does, and the only constant return shown is 0 at 0x1022831c. Otherwise, when the flag at sym(__us_rsthread_malloc) is nonzero, it takes the lock through __libc_lockmalloc at 0x102282a4, calls __malloc..ML at 0x102282b0, releases the lock at 0x102282cc under the same flag, and calls memset at 0x10228304 with the allocation as destination and 0 as the fill value when the allocation is nonzero; otherwise it returns the allocation result at 0x102282ec. A branch at 0x10228284 on a1 against another unresolved register, going to 0x10228314, might be an overflow check, but the rendered facts show neither the multiply nor what that target does.
  Reviewed: 2026-11-12
- `crmFastDoubleStore` in `usr/gfx/arch/IP32CRM/libGLcore.so` at 0xd955d74
  **Inferred.** A 14464-byte routine that loads and stores fields of its state argument a0 at offsets such as 0x77bc, 0x7d58 to 0x7dd3, 0x7db8, 0x7dbc, 0x2018, 0x21e8 and 0x7e2c. It tests bits of the word at a0+32088 (0x7d58) and several bytes and halfwords in the state. It does a single-precision float load at 0xd955e68 and a float store at 0xd955ebc, both at offset 0xc8 from a base register the facts do not resolve. It makes an indirect call at 0xd955e88 to an unresolved callee, with a2 set to a0+32088 and a3 to the word at a0+32184. The name and the float moves suggest a double-precision store into that state, but the rendered facts do not show the destination layout or the callee, so the role is only partly derived.
  Reviewed: 2026-11-12
