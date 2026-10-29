# Graphics ioctl interface (IRIX 6.5.30, O2)

The requests the kernel graphics driver accepts and the requests libGLcore and the X module send. Labels: **established** (read from the cited listing), **inferred**, **unknown**. Sources: `crime_kernel/decomp/crime.c` (`crimeIoctl`, the dispatcher starting near `arg2 >= 0x5603`; matched against `crime_kernel/disasm/crime/crime.text.s`), `crime_kernel/disasm/rrm/rrm.text.s` (`RRM_Dispatch` and its relocated handler table), `libglcore/asm/CRIME/crm_context.s`, `crm_pixel.s`, `crm_igloo.s`. `k:` is the kernel, `gl:` N32 `libGLcore`. Request numbers are the ones the dispatcher compares against; the argument size is the `copyin` or `copyout` length.

## Driver requests (`crimeIoctl`)

Failures return a small number: 11, 12, 14, 16, 19 or 22 (established as the constants the code returns; reading them as the usual errno meanings busy, no memory, bad address, in use, no device and invalid is an inference).

| Request | Arg bytes | Kernel function | What it does |
|---|---|---|---|
| `0x5213` | 12 | `crime_i2cfp_command` | flat-panel I2C command; needs a probed panel (board byte `+0x2e`) |
| `0x55f1` | 4 | `crimePositionCursor` | cursor position; the two halfwords are stored in the board record and the position is applied through `CRS_POS` (see `docs/gbe.md`) |
| `0x55f2` | 0x28 | `crimePixelDma` | pixel DMA request (`docs/pixel-transfer.md`) |
| `0x55f3` | 4 out | `crmMapPages` | map the client's 0x288-byte shadow record, return its address (`docs/context.md`) |
| `0x55f4` | 8 | `crimeSetDisplayMode` | write window-ID entry: index word, value word (`docs/gbe.md`) |
| `0x55f5` | 0x304 | `crimeSetGammaRamp` | load the gamma map (0x304 bytes: four header bytes and 256 triples; layout inferred from the size and the three-byte GMAP entries) |
| `0x55f6` | 0x30 | `crimeLoadTimingTable` | load the 0x30-byte timing record (`docs/gbe.md`) |
| `0x55f7` | 8 | `crime_load_fbtlb` | select a frame-buffer TLB set (below) |
| `0x55f8` | 0 | `crmUnmapPages` | unmap the shadow record of `0x55f3` |
| `0x55f9` | 0 | `crmUnmapChunk`, `crmUnmapPages` | unmap the block `0x55fc` mapped |
| `0x55fc` | 4 out | `crmMapPages`, `crmMapChunk` | map the 0x600-byte GBE block of `docs/gbe.md` and four 64 KiB chunks; return the block's address |
| `0x55fd` | 8 | `crmFindFreeDidTbl` | when the first word is 1, return a free DID table in the second word (used by the X module's `gbeLoadDIDTable`) |
| `0x55fe` | 0x14 | `crimeOpenPbuf` | open a pixel buffer |
| `0x55ff` | 0x118 | `crimeValidateDDClip` | validate a drawable's clip |
| `0x5600` | 8 | `crimeClosePbuf` | close a pixel buffer |
| `0x5601` | 0x10 | `crmAllocTex` | allocate texture memory, returns the 0x10-byte record |
| `0x5602` | | `crmDeallocTex` | free it |
| `0x5603` | 0x24 | `crmDefineTex` | define a texture (`docs/memory.md`, texture TLB) |
| `0x5604` | 4 out | (inline) | create a drawable record (0x220 bytes), give it the next id from a board counter, link it on a board list, return the id |
| `0x5605` | 0xc | `crime_load_linear_tlb` | `docs/pixel-transfer.md` |
| `0x5606` | 0xc | `crime_clear_buffer` | clear a buffer through the transfer engine (`docs/mte.md`) |
| `0x5607` | 8 | `crime_i2cProbe` | read the monitor identification data over I2C (up to 0x80 bytes out) |
| `0x5608` | 0x102 | `crimeUpdateBackTiles` | rebuild a drawable's back-buffer tile list |
| `0x5609` | 0x10 | `crm_enablesz`, `crm_enableovl` | bind a drawable id: the third word of the argument (+8) is a flag word and the fourth (+0xc) the id; bit 0 attaches depth, bit 2 attaches the overlay (`docs/gbe.md`); then the id is looked up in the board list and attached to the client |
| `0x560a` | 4 | `crimeUnSchedSwapBuf` | cancel a scheduled swap |
| `0x560b` | 0x10 | `crime_i2c_cmd` | general I2C command; result returned in the status path |
| `0x560c` | 0x20 out | `crimeFrameInfo` | copy out frame-buffer information |
| `0x560d` | 0x38 | `crmInitialize` | first-time driver initialisation for the board; the board record must have bit 0 of byte `+0x98` set |
| `0x560e` | 0x14 out | | copies out 0x14 bytes of data the listing builds on the stack (content not decoded) |
| `0x560f` | 0 | `crime_i2cFpProbe` | re-probe the flat panel |
| `0x5610` | 4 | `crimeBlankscreen` | blank or unblank; the word selects (`docs/gbe.md`, blanking) |
| `0x564f` | 0 | | logs a message and returns success |
| `0x5650` | 4 | `crmLoadTexTlb` | select texture set `n` (below 0x80) for the client and reload the texture TLB |
| `0x5651` | 0 | `crimeInitSpecialDDRN`, `crmSwapBufd` | X-server mode: stores `0x84` in the shadow flag word, builds the special render node and swaps (`docs/context.md`); returns busy if already running |

Unknown request numbers return 22 after logging. Established: the table above covers every compare in the dispatcher; the order of the compare chain is a binary tree, not the numeric order.

### `0x55f7`: frame-buffer TLB set selection

Argument bytes (established from the dispatcher reads): byte 0 the buffer kind (0, 1 or 2 are handled; others fail with "invalid"), byte 1 which drawable of the pair (0 or 1; other values fail), byte 2 the TLB slot (0 to 2, the A, B and C frame-buffer TLBs of `docs/memory.md`; a larger value fails), word at +4 an identifier the kernel compares with the kind's tile set. The kernel stores the chosen tile set into the drawable's slot, brackets the TLB reload with `crmSavePP` and `crmRestorePP`, and rewrites shadow register `0x2050` from the drawable (established). Inferred: libGLcore picks the draw and read buffer by choosing which tile set sits behind each frame-buffer TLB; the rendering registers carry only the TLB selector.

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
- `0x5604` in `MakeCurrentRead` (the conditions are not decoded): create a drawable id, stored at offset 4 of the record that gc+32560 points to; `0x5609` binds it with a flag word that carries bit `0x2` when the context byte at gc+3385 is non-zero and bit `0x8` when the word at gc+3460 equals 1 (the dispatcher tests only bits 0 and 2, so the kernel meaning of these two bits is not decoded). After a successful bind it stores `0x7d` in the context copy and in the shadow slot of register `0x21f0`.
- `0x55f7` from `__glCrmSetDrawBuffer`, `__glCrmSetReadBuffer` and `__glCrmSetCurrentBuffers`: change the draw or read buffer (above). Argument bytes are built from a per-visual table of buffer kinds (table walk not decoded).
- Swapping, `SwapBuffers`: toggles the context's front/back index (gc+32048, 0 or 1), mirrors it in bit `0x4` of gc+32040, and sends RRM command 1005 (`RRM_SwapBuf`) with a three-word argument: a drawable key (gc+31508), the new index and the flag word. If bit 1 of the word at gc+0x80cc is set it first reselects the read and draw buffers from the values saved at gc+11764 and gc+11760 (the meaning of that bit is not decoded). The device is the descriptor at gc+31504.
- `DecoupleSwapBuffers` (the "no retrace wait" form) does not use the resource manager: it sends `0x55f4` with window-ID index 10 and value `0x11 + index`, that is `BUF` 1 (lower half) or 2 (upper half) with `TYP` 4 (the 5-bit RGB format), CM 0, gamma enabled. So it flips a window-ID entry directly (established arithmetic; the reading of index 10 as the window-ID table slot comes from `crimeSetDisplayMode`'s argument layout in `docs/gbe.md`). If the ioctl fails it falls back to `__glCrmSetDrawBuffer` with a constant argument (not decoded).
- Finishing, `Finish`: `__glCrmFlushAndConfirm` writes 0 to register `0x21f8` through the engine pointer in the context and spins until status `0x4000` bit 28 is set; `Flush` is an empty function. `LoseCurrent` flushes the same way under conditions not decoded (a context type test and a pixel-buffer test), then calls `__glLoseCurrentBuffers` and clears the global current-context pointer.
- Pixel and pixel-buffer paths (`crm_pixel.s`, `crm_igloo.s`, `vice_pbuffer.s`) use `0x55f2`, `0x5605`, `0x55fe` and `0x5600` in the way `docs/pixel-transfer.md` describes.

Unknown: which libGLcore call sites send `0x560a`, `0x5608`, `0x55ff`, `0x5650` and the texture allocation requests `0x5601` to `0x5603` (searched `crm_texture.s` and `crm_context.s`: the texture requests appear only in the texture code through library entry points not traced), the layout of the argument bytes of `0x5609` beyond the flag word, and the role of the render node.
