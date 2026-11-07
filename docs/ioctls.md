# Graphics ioctl interface (IRIX 6.5.30, O2)

The requests the kernel graphics driver accepts and the requests libGLcore and the X module send. Labels: **established** (read from the cited listing), **inferred**, **unknown**. Sources: `crime_kernel/decomp/crime.c` (`crimeIoctl`, the dispatcher starting near `arg2 >= 0x5603`; matched against `crime_kernel/disasm/crime/crime.text.s`), `crime_kernel/disasm/rrm/rrm.text.s` (`RRM_Dispatch` and its relocated handler table), `libglcore/asm/CRIME/crm_context.s`, the CRIME GL driver pixel assembly unit, the CRIME GL driver assembly unit 5. `k:` is the kernel, `gl:` N32 `libGLcore`. Request numbers are the ones the dispatcher compares against; the argument size is the `copyin` or `copyout` length.

## Driver requests (`crimeIoctl`)

Failures return a small number: 11, 12, 14, 16, 19 or 22 (established as the constants the code returns; reading them as the usual errno meanings busy, no memory, bad address, in use, no device and invalid is an inference).

| Request | Arg bytes | Kernel function | What it does | Derivation |
|---|---|---|---|---|
| `0x5213` | 12 | `crime_i2cfp_command` | flat-panel I2C command; needs a probed panel (board byte `+0x2e`) | established: a compare in `crimePrivate`, `crime.o` |
| `0x55f1` | 4 | `crimePositionCursor` | cursor position; the two halfwords are stored in the board record and the position is applied through `CRS_POS` (see [gbe.md](gbe.md)) | established: a compare in `crimePrivate`, `crime.o` |
| `0x55f2` | 0x28 | `crimePixelDma` | pixel DMA request ([pixel-transfer.md](pixel-transfer.md)) | established: a compare in `crimePrivate`, `crime.o` |
| `0x55f3` | 4 out | `crmMapPages` | map the client's 0x288-byte shadow record, return its address ([context.md](context.md)) | established: a compare in `crimePrivate`, `crime.o` |
| `0x55f4` | 8 | `crimeSetDisplayMode` | write window-ID entry: index word, value word ([gbe.md](gbe.md)) | established: a compare in `crimePrivate`, `crime.o` |
| `0x55f5` | 0x304 | `crimeSetGammaRamp` | load the gamma map (0x304 bytes: four header bytes and 256 triples; layout inferred from the size and the three-byte GMAP entries) | established: a compare in `crimePrivate`, `crime.o` |
| `0x55f6` | 0x30 | `crimeLoadTimingTable` | load the 0x30-byte timing record ([gbe.md](gbe.md)) | established: a compare in `crimePrivate`, `crime.o` |
| `0x55f7` | 8 | `crime_load_fbtlb` | select a frame-buffer TLB set (below) | established: a compare in `crimePrivate`, `crime.o` |
| `0x55f8` | 0 | `crmUnmapPages` | unmap the shadow record of `0x55f3` | established: a compare in `crimePrivate`, `crime.o` |
| `0x55f9` | 0 | `crmUnmapChunk`, `crmUnmapPages` | unmap the block `0x55fc` mapped | established: a compare in `crimePrivate`, `crime.o` |
| `0x55fc` | 4 out | `crmMapPages`, `crmMapChunk` | map the 0x600-byte GBE block of [gbe.md](gbe.md) and four 64 KiB chunks; return the block's address | established: the dispatcher compare in `crime.o` |
| `0x55fd` | 8 | `crmFindFreeDidTbl` | when the first word is 1, return a free DID table in the second word (used by the X module's `gbeLoadDIDTable`) | established: a compare in `crimePrivate`, `crime.o` |
| `0x55fe` | 0x14 | `crimeOpenPbuf` | open a pixel buffer; the 0x14 bytes are five words: drawable id, width, height, bytes per pixel and flags (field names unknown) | established: a compare in `crimePrivate`, `crime.o` |
| `0x55ff` | 0x118 | `crimeValidateDDClip` | validate a drawable's clip region; only the X module's clip validation and swap start send it | established: a compare in `crimePrivate`, `crime.o` |
| `0x5600` | 8 | `crimeClosePbuf` | close a pixel buffer; the two words are the drawable id and a flag word | established: a compare in `crimePrivate`, `crime.o` |
| `0x5601` | 0x10 | `crmAllocTex` | allocate texture memory, returns the 0x10-byte record | established: a compare in `crimePrivate`, `crime.o` |
| `0x5602` | | `crmDeallocTex` | free the texture memory that `0x5601` allocated | established: a compare in `crimePrivate`, `crime.o` |
| `0x5603` | 0x24 | `crmDefineTex` | define a texture ([memory.md](memory.md), texture TLB) | established: a compare in `crimePrivate`, `crime.o` |
| `0x5604` | 4 out | (inline) | create a drawable record (0x220 bytes), give it the next id from a board counter, link it on a board list, return the id | established: a compare in `crimePrivate`, `crime.o` |
| `0x5605` | 0xc | `crime_load_linear_tlb` | pin a user buffer and load linear TLB A or B with its pages ([pixel-transfer.md](pixel-transfer.md)) | established: a compare in `crimePrivate`, `crime.o` |
| `0x5606` | 0xc | `crime_clear_buffer` | clear a buffer through the transfer engine ([mte.md](mte.md)) | established: a compare in `crimePrivate`, `crime.o` |
| `0x5607` | 8 | `crime_i2cProbe` | read the monitor identification data over I2C (up to 0x80 bytes out) | established: a compare in `crimePrivate`, `crime.o` |
| `0x5608` | 0x102 | `crimeUpdateBackTiles` | rebuild a drawable's back-buffer tile list | established: a compare in `crimePrivate`, `crime.o` |
| `0x5609` | 0x10 | `crm_enablesz`, `crm_enableovl` | bind a drawable id: the third word of the argument (+8) is a flag word and the fourth (+0xc) the id; bit 0 attaches depth, bit 2 attaches the overlay ([gbe.md](gbe.md)); then the id is looked up in the board list and attached to the client | established: a compare in `crimePrivate`, `crime.o` |
| `0x560a` | 4 | `crimeUnSchedSwapBuf` | cancel a buffer swap queued for the retrace handler; the X module sends it when a window is destroyed | established: a compare in `crimePrivate`, `crime.o` |
| `0x560b` | 0x10 | `crime_i2c_cmd` | general I2C command; result returned in the status path | established: a compare in `crimePrivate`, `crime.o` |
| `0x560c` | 0x20 out | `crimeFrameInfo` | copy out frame-buffer information | established: a compare in `crimePrivate`, `crime.o` |
| `0x560d` | 0x38 | `crmInitialize` | first-time driver initialisation for the board; the board record must have bit 0 of byte `+0x98` set | established: a compare in `crimePrivate`, `crime.o` |
| `0x560e` | 0x14 out | | copies out the 0x14-byte kernel tile-use counter array `crm_tileusage` (see the entry below) | established: a compare in `crimePrivate`, `crime.o` |
| `0x560f` | 0 | `crime_i2cFpProbe` | re-probe the flat panel | established: a compare in `crimePrivate`, `crime.o` |
| `0x5610` | 4 | `crimeBlankscreen` | blank or unblank; the word selects ([gbe.md](gbe.md), blanking) | established: a compare in `crimePrivate`, `crime.o` |
| `0x5611` | | | not a request: the boundary of the dispatcher's binary search just above `0x5610`, so it takes the path for unhandled requests and fails with 22 | established: the `sltiu` against 22033 in `crimePrivate`, `crime.o` |
| `0x564f` | 0 | | logs a message and returns success | established: a compare in `crimePrivate`, `crime.o` |
| `0x5650` | 4 | `crmLoadTexTlb` | select texture set `n` (below 0x80) for the client and reload the texture TLB | established: a compare in `crimePrivate`, `crime.o` |
| `0x5651` | 0 | `crimeInitSpecialDDRN`, `crmSwapBufd` | X-server mode: stores `0x84` in the shadow flag word, builds the special render node and swaps ([context.md](context.md)); returns busy if already running | established: a compare in `crimePrivate`, `crime.o` |

Unknown request numbers return 22 after logging. Established: the table above covers every compare in the dispatcher; the order of the compare chain is a binary tree, not the numeric order.

### `0x55f7`: frame-buffer TLB set selection

Argument bytes (established from the dispatcher reads): byte 0 the buffer kind (0, 1 or 2 are handled; others fail with "invalid"), byte 1 which drawable of the pair (0 or 1; other values fail), byte 2 the TLB slot (0 to 2, the A, B and C frame-buffer TLBs of `docs/memory.md`; a larger value fails), word at +4 an identifier the kernel compares with the kind's tile set. The kernel stores the chosen tile set into the drawable's slot, brackets the TLB reload with `crmSavePP` and `crmRestorePP`, and rewrites shadow register `0x2050` from the drawable (established). Established from the senders (the CRIME GL driver context assembly unit: `__glCrmSetDrawBuffer`, `__glCrmSetReadBuffer`, `__glCrmSetCurrentBuffers`): byte 0 is 0 for GL_FRONT and GL_FRONT_AND_BACK, 1 for GL_BACK and 2 for the depth buffer (GL_DEPTH, 0x1801); byte 1 is 0 from the draw-buffer path and 1 from the read-buffer path (the draw drawable at gc+0x7D38 or the read drawable at gc+0x7D3C); byte 2 is the frame-buffer TLB slot, bits 12:10 of the buffer word the routine has just written to shadow register `0x2008` (draw) or `0x2000` (read); byte 3 is 1 and the word at +4 the pixel buffer's identifier when that drawable is a pixel buffer (object type 5), otherwise both are 0. `__glCrmSetCurrentBuffers` sends the depth form (kind 2) with the slot byte gc+0x7D08 when that byte is non-zero and the depth binding has changed. A request is sent only when the slot's cached buffer enum (gc+0x7D4C + 4 x slot) differs.

### Scheduling a swap through the resource manager

`RRM_Dispatch` takes commands 1000 to 1099 through a table of 16-byte entries that starts at command 1000 (established: the entry address is `table + (command - 1000) * 16`; the first word of each entry is a handler). The relocated handler names give the commands (established from `rrm.o`'s relocation table):

| Command | Handler | Command | Handler |
|---|---|---|---|
| 1000 | `RRM_OpenRN` | 1013 | `RRM_SwapGroup` |
| 1001 | `RRM_CloseRN` | 1014 | `RRM_SwapUnGroup` |
| 1002 | `RRM_BindProcToRN` | 1015 | `RRM_ValidateMessage` |
| 1003 | `RRM_BindRNToClip` | 1016 | `RRM_GetDisplayModes` |
| 1004 | `RRM_UnbindRNFromClip` | 1017 | `RRM_LoadDisplayMode` |
| 1005 | `RRM_SwapBuf` | 1018 | `RRM_CushionBuffer` |
| 1006 | `RRM_SetSwapInterval` | 1019 | `RRM_SwapReady` |
| 1007 | `RRM_WaitForRetrace` | 1020 | `RRM_MGR_SwapBuf` |
| 1008 | `RRM_SetDisplayMode` | 1021 | `RRM_SetVideoSync` |
| 1009 | `RRM_Message` | 1022 | `RRM_GetVideoSync` |
| 1010 | `RRM_InvalidateRN` | 1023 | `RRM_WaitVideoSync` |
| 1011 | `RRM_ValidateClip` | 1024 | `RRM_BindRNToReadAndClip` |
| 1012 | `RRM_ValidateSwapBuf` | 1025 | `RRM_MapClipToSwapbufID` |

The commands are numbered in the table's order (entries at offsets 0, 0x10, ... 0x190). "RN" is the resource manager's name for a render node; what a node is beyond the names is unknown here.

## What libGLcore sends

Established (N32 `libGLcore`, every `__glCrmIoctl` call site with its request number; `__glCrmIoctl` is a thin wrapper of `ioctl`):

- `0x55f3` once per context in `MakeCurrentRead`: the shadow record and its flag word `0x7d` (`docs/context.md`).
- `0x5604` in `MakeCurrentRead`: create a drawable id, stored at offset 4 of the record that gc+32560 points to; `0x5609` binds it with a flag word built from the two visual descriptions the context holds (the draw one from gc+0xC80, the read one 160 bytes later): bit `0x1` when the draw visual has depth (byte gc+0xC99 with depth slot gc+0x7D08 set, or gc+0xC9A with gc+0x7D09 set), bit `0x4` when the draw visual's word gc+0xCE4 is 1, and bits `0x2` and `0x8` the same two tests on the read visual (gc+0xD39/0xD3A, gc+0xD84). Established: the IRIX 6.5.30 kernel reads only bits 0 and 2 (`crimePrivate`, the two `andi` tests of the copied word at its frame +432, `crime.o`); bits `0x2` and `0x8` are sent and ignored, so read-drawable depth and overlay are never bound separately. Inferred: gc+0xCE4 equal to 1 marks an overlay-level visual, since kernel bit 2 attaches the overlay. After a successful bind it stores `0x7d` in the context copy and in the shadow slot of register `0x21f0`.
- `0x55f7` from `__glCrmSetDrawBuffer`, `__glCrmSetReadBuffer` and `__glCrmSetCurrentBuffers`: change the draw or read buffer (above). Argument bytes: see the `0x55f7` section above.
- Swapping, `SwapBuffers`: toggles the context's front/back index (gc+32048, 0 or 1), mirrors it in bit `0x4` of gc+32040, and sends RRM command 1005 (`RRM_SwapBuf`) with a three-word argument: a drawable key (gc+31508), the new index and the flag word. If bit 1 of the word at gc+0x80cc is set it first reselects the read and draw buffers from the values saved at gc+11764 and gc+11760 (the meaning of that bit is not decoded). The device is the descriptor at gc+31504.
- `DecoupleSwapBuffers` (the "no retrace wait" form) does not use the resource manager: it sends `0x55f4` with window-ID index 10 and value `0x11 + index`, that is `BUF` 1 (lower half) or 2 (upper half) with `TYP` 4 (the 5-bit RGB format), CM 0, gamma enabled. So it flips a window-ID entry directly (established arithmetic; the reading of index 10 as the window-ID table slot comes from `crimeSetDisplayMode`'s argument layout in `docs/gbe.md`). If the ioctl fails it falls back to `__glCrmSetDrawBuffer` with a constant argument (not decoded).
- Finishing, `Finish`: `__glCrmFlushAndConfirm` writes 0 to register `0x21f8` through the engine pointer in the context and spins until status `0x4000` bit 28 is set; `Flush` is an empty function. `LoseCurrent` (the CRIME GL driver context assembly unit, `0x0d944eb0..0x0d944f7c`) does nothing unless the render mode word gc+3204 is GL_RENDER (0x1C00) and the library is not inside `glBegin` (the global begin-mode word is not 1). Then, when bit 1 of gc+172 is set, the routine pointer at gc+32324 is non-zero and either gc+32316 or gc+32320 is non-zero, it calls the routine in the library slot the listing names `__glCrmFlushAndConfirm` with those three words, and then the gc+32324 routine with -1; it clears gc+32552 either way. It then calls `__glLoseCurrentBuffers`, saves the begin-mode word in gc+3200 and clears the current-context pointer. What the gc+32324 routine is: a pointer installed outside these files (not traced).
- The context's window-system methods (`MakeCurrentRead`, `crm_context.s` near `0x0d947208`): the method at gc+36 returns the mapped rendering-engine register page, kept at gc+0x7DB8 (the pointer every hardware register store goes through; the shadow copy is gc+0x7DBC); the method at gc+40, called with that page, returns the graphics device descriptor kept at gc+31504 (every `__glCrmIoctl` goes to it); the method at gc+44 returns the drawable key kept at gc+31508 (the first word of the `RRM_SwapBuf` argument). These three are supplied by libGL's window-system layer (inferred: the context's import table).
- Pixel and pixel-buffer paths (the CRIME GL driver pixel assembly unit, the CRIME GL driver assembly unit 5, the VICE pixel path pixel-buffer assembly unit) use `0x55f2`, `0x5605`, `0x55fe` and `0x5600` in the way `docs/pixel-transfer.md` describes.

Senders of the remaining requests. Established by searching every instruction of both libGLcore ABIs (`objdump -d` of `libGLcore_n32.so` and `libGLcore_o32.so`) and the X module listing (`ddx/asm/crm/crm/crm.s`) for the request constants:

- `0x5601` to `0x5603`: libGLcore texture code only (the CRIME GL driver texture assembly unit): `0x5601` (allocate) from `crmCreateLevel`, `crmUpdateSharedTiles` and `__glCrmTexIoctl`; `0x5602` (free) from `crmFreeTexImage`, `crmFreeTexObj`, `crmCreateLevel`, `crmTexSubImageCopyDMPbuffer` and `__glCrmTexIoctl`; `0x5603` (define) from `crmDefineTexture` and `__glCrmTexIoctl`.
- `0x5650`: only `texIoctlBind` (the CRIME GL driver texture assembly unit, `0x0d96e540..0x0d96e5b8`), which `crmDefineTexture` calls with the texture object's word +4 (its texture set number) when the bound texture differs from the last one (gc+0x7EF8) or was just defined.
- `0x55f2`, `0x55ff`, `0x5608`, `0x560a`: the X module only; no libGLcore build contains these constants. `0x55f2` (pixel DMA) from `crmDrawImage`, `crmReadImage8`, `crmReadImage16`, `crmReadImage16on16`, `crmReadImage16on32` and `crmReadImage24`; `0x55ff` (validate clip) from `crmValidateClip` and `crmInitiateBufferSwap`; `0x5608` (back tiles) from `crmCopyWindow`, `crmValidateSoftDB` and `crmBitBltSS__M`; `0x560a` (cancel swap) from `crmDestroyWindow`, `crmInitiateBufferSwap` and `crmUnSchedMgrSwapBuf`. So GL `DrawPixels`, `ReadPixels` and `CopyPixels` never use kernel pixel DMA; they use the linear-TLB path (`0x5605`, `docs/pixel-transfer.md`).
- Resource-manager commands: libGLcore sends only 1005 (`RRM_SwapBuf`, `SwapBuffers`). libGL's window-system layer (`libGL_n32.so`) owns the render node: `__glXAllocHWContext` opens it (1000), `__glXFreeHWContext` closes it (1001), `__glXUnbindHWContextFromThread` and `__glXBindHWContextToWindow` bind the process (1002), `__glXBindHWContextToWindow` binds it to a window's clip (1003, or 1024 for separate read and draw), `glXSwapIntervalSGI` sends 1006 and `glXGetVideoSyncSGI`/`glXWaitVideoSyncSGI` 1022/1023. The X module sends 1010 (`RRM_InvalidateRN`) and 1011 (`RRM_ValidateClip`). So a render node is the kernel's record of one GLX hardware context: created with the context, bound to the thread using it and to the window it draws, and the object swaps and video-sync waits are made against.
- `0x5609` argument: the kernel copies 16 bytes and reads only the flag word at +8 and the id at +0xc (no load of the copy's first two words in `crimePrivate`); the first eight bytes carry nothing the 6.5.30 kernel uses.

## Requests in the scan that the graphics driver never sees

The inventory's request scan matches any constant in the graphics number range, so it also picks up seven requests that go to other drivers. Established: none of them reaches the O2 graphics driver, because its dispatcher `crimePrivate` in `crime.o` has no compare for any of them; the only compare in the `0x52xx` range is `0x5213`. The STREAMS numbers below are the stream-head requests `'S' << 8` plus a small number, named in the shipped header 6.5.5 the CRIME stack header 24.

- `0x5302`: the STREAMS push ioctl, which makes the stream head insert the module named by its argument above the driver (header 6.5.5 root/usr/include/sys/stropts.h). Established.
  `sgiGetDeviceFD` in the 6.5.30 Xsgi sends it at 0x10096d34 with the module-name pointer as the argument.
  It sends it only after `sgiIsModulePresent` reports the module absent and after a pop, and a non-zero result reaches `ErrorF` with the module name.
- `0x5303`: the STREAMS pop ioctl, which removes the module nearest the stream head (same header). Established.
  `sgiGetDeviceFD` sends it at 0x10096d20 with a zero argument, directly before the push of `0x5302`.
  The pair replaces whichever module was on top of an input-device stream with the one the caller names.
- `0x5308`: the STREAMS pass-through ioctl that carries a command, timeout, length and data pointer down a stream (same header). Established.
  `ddxMultiCursorSetNoOffsets` in the 6.5.30 Xsgi sends it at 0x1007ace8 with command word 0x8008510c and a length of 8.
  `shmiqLink` sends it at 0x10094180 with command word 0xc0045108 and a 4-byte buffer holding the link identifier that `0x530c` returned.
- `0x530c`: the STREAMS link ioctl, which attaches a second stream beneath a multiplexer driver (same header). Established.
  `shmiqLink` in the 6.5.30 Xsgi sends it at 0x10094150 with a descriptor loaded from its stack frame at offset 56.
  The returned link identifier feeds the `0x5308` request that follows at 0x10094180.
- `0x530d`: the STREAMS unlink ioctl, which detaches a stream by the link identifier (same header). Established.
  `shmiqLink` sends it at 0x10094278 when the free-slot index has reached 32, using the identifier stored in the entry, and at 0x100942b0 with the fresh identifier.
  `sgiCloseDevice` sends it at 0x10062c14 for each device entry it closes, taking the identifier from the entry's word at offset 18496.
- `0x5315`: the STREAMS list ioctl, which returns the names of the modules on a stream (same header). Established.
  `sgiIsModulePresent` in the 6.5.30 Xsgi sends it first with a null argument at 0x101f6f90, and the positive return value is the module count.
  It then allocates nine bytes per module name with `__malloc..ML` (eight characters and a terminator) and calls it again to fetch the names, so it can compare each against the wanted one.
- `0x5214`: an ioctl that the O2 driver rejects with error 22. Established.
  `ng1_setmon` in the 6.5.30 setmon sends it at 0x1000f474 with a buffer at stack offset 4256, between the ioctls 104 and 110.
  No other instruction of the tool loads the constant, and the O2 route `crm_setmon` never sends it.

## Driver requests with their own entries

- `0x55f8`: the ioctl that releases the client's mapping of its 0x288-byte shadow record, sent with no argument. Established.
  `crimePrivate` in `crime.o` takes the mapping record from client offset +0x4c and returns 22 when it is absent.
  If the record's word at +0x18 is set and `gfxdd_lookup` finds nothing, the answer is 11; otherwise it calls `crmUnmapPages` and clears that word.
  `crmUnmapGbe` in `crm.so` sends it during screen tear-down.
- `0x55f9`: the ioctl that releases the 0x600-byte GBE block that `0x55fc` mapped, sent with no argument. Established.
  `crimePrivate` needs the mapping record at client offset +0x4c (else 22) and a back-link of the board list that still points at the board (else 22).
  It answers 11 while the record's mapped-address word at +0x88 is zero, then clears the four chunk entries at +0x84 and calls `crmUnmapChunk`.
  After that it calls `crmUnmapPages` on the record at +0x1cc and zeroes both words.
- `0x560c`: the ioctl that returns 32 bytes of frame information to the caller. Established.
  `crimeFrameInfo` in `crime_retrace.o` runs under the mutex at +840 of the record that board offset +140 points at.
  It scans 32 slots of 24 bytes for the calling client and sets output byte 26 when that slot's flag at +56 is non-zero.
  Output byte 27 is the byte at +1360 of the object at client offset +76, and `crm_getustmsc` fills in the rest of the record.
- `0x560e`: the ioctl that returns the driver's tile-use counters in 20 bytes. Established.
  `crimePrivate` calls `copyout` with a length of 20 on `crm_tileusage`, a ten-halfword array in `crime_tiles.o`.
  `crmAllocChunk` adds a chunk's tile count to the entry at offset 2 and to the entry of its tile class, and `crmFreeChunk` subtracts both.
  `getFBConsumption` in `crm.so` is its sender.
- `0x560f`: the ioctl that re-probes the flat panel, sent with no argument. Established.
  `crimePrivate` returns 22 unless the board has a panel record at +124 and a bus handle at +128.
  It stores 1 in a driver global, calls `crime_i2cFpProbe` with the bus handle and writes the result byte to offset +46 of the panel record.
  That byte is the probe flag that the `0x5213` command checks.
- `0x564f`: an ioctl the driver accepts and ignores, sent with no argument. Established.
  The dispatcher `crimePrivate` reaches it by the compare against 22095 and calls `cmn_err` with a fixed message.
  It returns 0, so a client that sends it sees success with no state change.
