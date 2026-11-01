# Functions by role

What each routine of the IRIX 6.5.30 graphics kernel objects does, grouped by what it serves. Sources: the objects `crime.o`, `crime_tiles.o`, `crime_db.o`, `crime_zbuf.o`, `crime_retrace.o`, `crime_tp.o`, `crime_init.o`, `crime_i2c.o` (members of `crime.a`) and `mace.o`, and the shared kernel objects `gfx.o`, `rrm.o` and `tile.o` (a member of `os.a`), read from `objdump -d` and the decompilation in `crime_kernel/decomp/`, whose function names are the symbols of the objects. Labels: **established** (read from the function's own code and calls), **inferred** (from its name and its callers). Argument layouts are given only where the code shows them. Register-level behaviour has its own chapters: [context.md](context.md), [memory.md](memory.md), [mte.md](mte.md), [gbe.md](gbe.md).

## Board entry points and set-up (`crime.o`)

- `crimeInitialize`: registers the board with the kernel's hardware tree (one call to `htp_register_board`, which this object does not define) and marks the board record as initialised (a byte at `+0x98`). Established.
- `crimeStart`: the second start-up step. It first blanks the screen (`gbeBlankScreen`), then visits each display channel: a channel whose size field (halfword `+0x22` of its record) is still zero is probed over DDC (`crime_i2cProbe`) and the result validated (`crime_validate_ddc_data`); a channel of type 3 whose size is unknown has its flat-panel identification read (`i2cfp_DMI2_KernelEDID`), with `i2cfp_DMI2_FailedEDID` supplying a default when that read fails. Last, it sets bit 2 of the byte at `+0x98` of the board record (`crimeInitialize` sets that byte to 1). Established.
- `crimeDownload`: returns 0 and does nothing. This family has no microcode to load, so the entry exists only to fill the graphics driver's table. Established.
- `crime_earlyinit`: the one-time start-up called before the first client. It probes CRIME and GBE (`crimeProbe`, `gbeProbe`), fills the board information record (`crimeInitInfo`), initialises the hardware (`crimeInitHW`), the textport (`crmInitTp`) and the tile allocator (`crmFirstInit`), looks for a flat-panel or dual-channel option board (`i2cfp_DualChannelProbe` and the panel routines), allocates the overlay buffer, clears the frame buffer, registers with `htp_register_board` and starts video timing (`gbeRun`). Established from its call list; the branch conditions among those steps are not fully decoded.
- `crmFirstInit`: allocates the GBE table chunk (`crmAllocGbeTables`) and initialises the tile classes (`crm_tileclassinit`). Established.
- `crimeInfo`: copies the board information record to user space, at most `0x1f0` bytes; returns error 14 if the copy fails. Established.
- `crimeAttach`: maps the board's `0x86000`-byte user window into the calling process (`gfxdd_mmap`, after trying `gfxdd_recycle` for an existing mapping), requires a page-aligned offset (error 22 otherwise, 12 on failure), and counts one more attach in the board record at `+0x140`. Established. `crimeDetach` removes the mapping (`gfxdd_munmap`). Established from its call.
- `crime_regmatch`: called when a mapping is re-registered; if there is an old mapping it unmaps the graphics window (`crimeUnMapGfx`), clears the handle word and destroys the old handle (`ddv_destroy_handle`), then records the new handle. Established.
- `crimeUnMapGfx` revokes the user mapping of the graphics window: it looks up the calling thread's graphics state (`gthread_find`, `thread_issproc`), calls `ddv_invalphys_fal` and `crimeInvalTLB`. `crimeInvalTLB` is the thin wrapper around `ddv_invaltlb`. Established from the calls; the conditions that select the thread are not decoded.

## Drawables and render nodes (`crime.o`)

A drawable is the kernel's per-window record: origin, size, clip list, tile lists, buffer chunks and a clip serial. A render node (DDRN) is the per-client kernel context that owns drawables and a shadow record ([context.md](context.md)).

- `crm_createdrawable` allocates and zeroes one drawable record. `crm_finddrawable` looks a drawable up by id (word `+8`) in a doubly linked list kept in increasing id order, under the table's mutex, and creates and links one in the right place when the id is absent; `crm_mapcliptodraw` is the same search without the creation and returns nothing for an unknown id. `crm_freedrawable` zeroes and frees a record. Established.
- `crm_destroydrawable` tears a drawable down under its lock: frees its pixel buffer (`crmDestroyPbuffer`), its depth tiles (`crmSubtractZ`) and finally the record (`crm_freedrawable`). `crm_unbinddrawable` detaches a drawable from a render node and may destroy it (it is the only caller of `crm_destroydrawable`). Established from the call; the reference counting was not decoded.
- `crimeCreateDDRN` allocates the kernel memory for a new render node (`kern_malloc`, `kvpalloc`), zeroes it and calls `crimeInitSpecialDDRN` (the X-server mode of ioctl `0x5651`, see [ioctls.md](ioctls.md)) for the special node. `crimeDestroyDDRN` reverses it: closes retrace users (`crimeRetraceCloseRN`), frees textures (`crmFreeTex`), unmaps chunks and pages, unbinds every drawable, unpins the scratch buffer (`crmunpinscratch`, one `fast_undma` call) and frees the memory. Established.
- `crimeSetNullClip` fills a clip descriptor with the empty clip: no rectangles, a bounding box of `-1`, and two words set to 1; used for a window with nothing visible. Established.
- `crm_makecurrentpbuf` allocates the tile list of a pixel buffer that is being made current (`crmAllocPbufTiles`). `crmAllocGfxBuffers` allocates, per drawable, the back buffer, colour-index buffer, frame buffer and overlay as needed for its visual (`crmAllocBackbuffer`, `crmAllocCid`, `crmAllocFrameBuffer`, `crmAllocOverlayBuffer`), frees a previous set and creates the buffer's lock (`sema_alloc`). Established.
- `crmNextIncarnation` returns the next value of a global counter with interrupts raised; every tile chunk and drawable change stamps itself with it so the TLB loaders can tell whether a cached load is current (`crmLoadTlbABC` compares it). Established.
- `crmunpinscratch` releases a user buffer pinned for DMA (`fast_undma`). Established.

## Video channel services (`crime.o`)

- `crime_present` answers the video driver's "is the board there" question: 1 when the board record exists, 0 when it does not, and -1 for any board number other than 0. Established.
- `crime_channel_info` returns the active video channel's width and height from the board record's timing pointer (halfwords at `+8` and `+0xa`), doubling the height when a flag byte at `+0x2d` is non-zero, and returns that flag byte. Inferred: the flag is the interlace or field-sequential indicator, because the height is doubled for it.
- `crime_resync_sched` stores a callback and its argument into slot `n` (64-byte slots) of a table, and `crm_callvideo` finds the slot whose field `+4` equals the given id and calls that callback with its argument. `gbeRun` calls `crm_callvideo` after restarting timing, so the callbacks are notified of a video re-start. Established; which driver registers one was not traced.

## Tile allocation (`crime_tiles.o`)

A chunk is the record of one tile allocation: tile count at `+4`, a 16-bit tile-number table at `+8`, flags at `+0xc` (bit 0: the table is a sparse 256-entry ring, bit 5: tiles pinned from the dynamic memory service), an incarnation at `+0x10`, a class byte at `+0x15`, and for a drawable buffer the tile grid size in bytes at `+0x18` (columns) and `+0x19` (rows). A tile is 64 KiB; a grid row is 128 pixel rows. Established from the allocators below.

- `crm_tileclassinit` fills the kernel's per-class tile masks from the number of tile classes the memory system reports (`tile_nclasses`); with two classes the masks are the fixed values 1 and 2. Established. Why those classes exist is a property of the page-colouring allocator in `tile.o`, which this chapter does not cover.
- `crmAllocChunk` fills a chunk record, asks the tile allocator for its tiles (`crmAllocTiles`) when the count is non-zero, stamps the incarnation and adds the count to two 16-bit totals (one global, one per class); it returns 0 on success. `crmFreeChunk` is its inverse: clears the incarnation, compacts a sparse table, returns pinned tiles to the dynamic memory service (`crm_get_dms_tiles` with an empty record) or frees them (`crmFreeTiles`), zeroes the table and the count. Established.
- `crmFreeTiles` converts 16-bit tile numbers to page-frame numbers (times 16), waits for the rendering FIFO to drain when the calling thread owns the graphics context (`crmFifoWait`, 1,000,000 polls) so no queued write can still target the pages, frees them (`tile_free`) and subtracts the count from the totals. Established.
- `crmAllocFrameBuffer` allocates the tiles of a window's colour buffer: columns are the width divided, rounded up, by the pixels in a 512-byte tile row for the pixel size (8, 16 or 32 bit), rows are the height rounded up to 128; class 2. `crmAllocBackbuffer` does the same for a back buffer (16- and 32-bit only, class 3) and also allocates a private 512-byte tile table. Established.
- `crmAllocOverlayBuffer` allocates the 8-bit overlay with 512 pixels per tile row (one byte per pixel), class 5. `crmAllocCid` allocates the clip-ID buffer: one tile per 128 rows, or a fixed set of 16 when its first argument is `0x500`. `crmAllocGbeTables` allocates the chunk that holds the display back end's tile lists ([gbe.md](gbe.md)). Established; the meaning of `0x500` is not decoded.
- `crmAllocZbuffer` creates the depth buffer record for a drawable (a 0x28-byte chunk with a 512-byte table, class 4, or 8 when its first argument is non-null) with the tile grid computed from the size, four bytes per pixel. Established.
- `crmAllocPbuffer` computes the tile grid of a pixel buffer for an 8-, 16- or 32-bit pixel (class 0) without allocating tiles; `crmAllocPbufTiles` allocates the table and the tiles (class 8), or, when asked for the second form, marks the chunk as pinned dynamic-memory tiles (flag bit 5, class 9). `crmDestroyPbuffer` frees a pixel buffer's chunks under the semaphore of its owner, reporting an error (`cmn_err`) if the semaphore cannot be taken. Established.
- `resizechunk` copies a chunk's tile table into a table for a new grid size (`bcopy`, with a fresh incarnation) after a window resize, and `crmResizeFb` applies it to a frame buffer's chunks, allocating extra tiles (`crmAllocTiles`) as needed. Established from the calls; the tile-by-tile copy pattern was not traced.
- `crmFreeTex` frees a texture's chunks and its lock; `crmCreateRegion` creates the user memory region for a mapping (`gfxdd_mmap_mem`). `crm_update_sz_tiles` copies the non-zero entries of a chunk's tile table (up to 256 of them) into a flat array and returns the count; `crm_tile_list` returns a chunk's tile numbers as a flat array, using that routine for a chunk whose table is sparse (flag bit 0) and a straight copy otherwise. `crmMapChunk` uses the first to build the page list it maps. Established.
- `crime_tileaddr_for_vice` translates, in place, an array of packed tile coordinates (column in bits 3:0, row in bits 15:4 of each 16-bit entry) of a drawable into the 16-bit tile numbers behind them, using the drawable's tile table (the low 16 bits of the id index a table of 0x74-byte drawable records; the full id must match); it returns 19 for an unknown id, 22 for a coordinate outside the grid and 14 for an unallocated tile, and 0 on success. The name says the caller is the video compression engine's driver (inferred). Established as to the translation.

## Depth and back-buffer tile accounting (`crime_zbuf.o`, `crime_db.o`)

- `crmAddZ` gives a drawable depth tiles: it allocates the tiles of the covered area (`crmAllocTiles`), merges them with the drawable's existing depth record and stamps a new incarnation; if the allocation fails it removes what it had added (`crmSubtractZ`). `crmSubtractZ` frees depth tiles that no longer lie under any window (`crmFreeTiles`) and restamps. Established from the calls; the overlap bookkeeping is not decoded.
- `crmAddBackTiles` and `crmSubtractBackTiles` do the same for a window's back-buffer tiles when it moves or is clipped. Established from the calls. `crimeUpdateBackTiles` and `crmRecomputeSZ` ([context.md](context.md)) call them.

## Retrace and swap scheduling (`crime_retrace.o`)

- `crimeRetraceInit` allocates and zeroes the retrace state and its mutex at board start. Established.
- `crimeSchedSwapBuf` queues a buffer swap for a window slot (0 to 31, one record of `0x18` bytes each, in the table at board record `+0x8c`) to run at the next retrace: it sets a state byte (`+0x39`), a pending-retrace count (`+0x30`, the request's field when that is at least 2, otherwise 1) and clears a second word (`+0x34`). `crimeSchedMgrSwapBuf` does the same for the swap manager's own queue, after validating the fault state (`RRM_CheckValidFault`). Established from the stores; the state encodings are not fully decoded. The thread that consumes the queue, `crmSwapBufd`, is described in [mte.md](mte.md).
- `crimeSchedRetraceEvent` appends a retrace-event record (linked through its word at `+0x24`, list head at board record `+0x340`) under the mutex at `+0x348` unless it is already on the list. `crimeRetraceCloseRN` and `crmRetraceCloseAllRn` remove one or all of a render node's queued swaps and events when it closes, the latter also cancelling a pending timeout (`untimeout`). Established.
- `crm_getustmsc` fills a result record for a retrace-synchronised time stamp: it copies the frame counter and rate fields from the timing record, reads the system time (`update_ust`, `get_ust_nano`) at raised priority together with the current line from VT_XY (`+0x10000` of GBE, bits 23:12), and corrects the time by the fraction of the frame the beam has covered, using the timing record's totals. Established; the exact scaling was not decoded.
- `crime_getustmsc` is the exported entry the video driver `mvp.o` imports: it takes a channel number and a result record, finds the channel's board record in a table of 64-byte slots, and calls `crm_getustmsc` with that board's GBE register pointer (`+0x80`), its timing record (through `+0x7c`, then `+0x30`) and its state (`+0x8c`); it always returns 0. Established.
- `crime_FpSchedForRetrace` records, in the word at board record `+0x344`, whether the flat panel is to be switched on (2) or off (1) at the next retrace; it records a request only when it differs from the panel's current state (the byte at `+0x28` of the board information). `crime_i2cFpGbeRetrace` consumes that word from the retrace handler. Established for the first; the second's state machine was not decoded.

## Kernel textport (`crime_tp.o`)

The textport is the console used before and without the X server; it draws with the pixel pipeline directly.

- `crime_sboxfi` fills a rectangle with the current colour: it waits for seven free FIFO entries (`crmFifoWait`), writes DrawMode `0x2f8` and the foreground colour `0x20d0` (taken from a word in the object's data), picks the Primitive word (`0x03020000`, or `0x03000000` when the box's end coordinate lies before its start), writes the vertex pair `0x2070` and the Primitive through the alias, flushes (`0x21f8`) and waits for idle. Established. `crime_pnt2i` draws a single pixel the same way (Primitive `0x0`, vertex written as one 32-bit word) and `crime_cmov2i` stores the current raster position (two words of the object's data). Established.
- `crime_drawbitmap` draws one glyph bitmap at the current raster position through the stipple path, row by row; it is the textport's character drawing routine. Established as to purpose from its register writes (`0x20c0`, `0x20c4`, vertex pair); the row loop is long and unrolled and was not decoded.
- `crime_clearfb` clears the screen for the textport. It zeroes the textport's shadow record, loads the board's size (halfwords `+0x20` and `+0x22` of the information record, height halved when its flag byte `+0x2d` is set), sets colour 0 to black (`crime_mapcolor`), waits for idle, and then writes a fixed register set to hardware and shadow: window offsets `0x2050`, `0x2058` = 0, ClipMode `0x2010` = `0x21`, screen mask 0 `0x2020` = the whole screen, LogicOp `0x21b0` = 3 (copy), and both BufMode registers `0x2000`, `0x2008` = `0x800` (tiled buffer through frame-buffer TLB C, 8-bit colour index). It ends with a box fill of the whole screen (`crime_sboxfi`). Established. The ClipMode value `0x21` is the same word the window clip set-up writes for one rectangle ([context.md](context.md)), which supports the driver's bit pairing recorded there.
- `crime_positioncursor` writes the hardware cursor position (`+0x70000` of GBE) as the x coordinate in bits 11:0 and the y coordinate in bits 27:16, and returns 0. `crime_unblank` calls `gbeBlankScreen` to turn the picture back on. `crime_getdesc` answers a descriptor query: 1 for descriptor number 1, otherwise 0. Established.

## Timing record and start of video (`crime_init.o`)

- `getNvramTiming` reads the monitor timing name stored in the PROM's non-volatile options (`kopt_find`) and returns the matching format number. `gbeRun` is the single entry that starts video: it loads the tile lists (`crmLoadGbelists`), caches the vertical timing (`gbeCacheVtInfo`), writes the timing registers (`gbeSetTimingRegs`), starts timing (`gbeStartVideoTiming`) and calls the registered video callbacks (`crm_callvideo`); on the stop path it calls `gbeStop` first. Established from the calls; the NVRAM key is not decoded.

## Monitor and flat-panel bus (`crime_i2c.o`)

The monitor is probed over the DDC bus of the display connector, and the optional flat panel and dual-channel board over a second I2C port. Both are driven by bit-banging through GBE's I2C registers ([gbe.md](gbe.md)).

- Bus primitives: `i2_start` and `i2_start_addr` generate a start condition (the second also sends the address byte), `i2_stop` the stop condition, `i2_sync_clk` one clock pulse with the data held, `i2_sendbyte` and `i2_master_recvbyte` move a byte as master, `i2_slave_recvbyte` receives a byte as a slave (at raised priority, with `i2_spin_for`), `i2_wait_for_bus`, `i2_wait_for_stop` and `i2_spin_for` wait on the bus state with a bounded spin, and `crime_i2cReset`, `crime_i2cFixupAfterErr` and `crime_i2cfpFixupAfterErr` bring the bus back to idle after an error (stop conditions and delays). Established from the calls and delays (`us_delay`).
- Monitor identification: `crime_i2cSetMonitor` records the monitor, `crime_i2cProbe` reads the monitor's identification block over DDC, `crime_EdidCksum` computes the block's checksum, `crime_i2cValidEdid` checks the block's header and checksum, `sgiEdid` tests whether the manufacturer code in bytes 8 and 9 of the block is `0x4c` followed by `0xf8` or `0xe9`, and `crmFixupSony24` applies a correction when the product code in bytes 10 and 11 is `0x0001` and the horizontal size in byte 21 is `0x30` (48 cm), the signature of one 24-inch Sony model (inferred; the correction itself was not decoded), and `crime_validate_ddc_data` combines these into the accept-or-reject decision `crimeStart` uses. Established as to the tests; the roles of the results follow from their names (inferred).
- Flat-panel option board: `crime_i2cFpProbe` identifies the panel (`i2cfp_PanelID`, which reads the panel's ID port through `i2cfp_PortRead`) and records it in the hardware inventory (`add_to_inventory`, `replace_in_inventory`); `crime_i2cFpHotProbe` repeats the probe on a timer (`timeout`) and, when the state changed, switches the panel on (`i2cfp_PanelOn`) or schedules the change for retrace (`crime_FpSchedForRetrace`). `i2cfp_PortRead` and `i2cfp_PortWrite` access the port-expander registers, `i2cfp_SetBit` writes one bit of them, `i2cfp_PanelOn` and `i2cfp_PanelOff` run the panel power sequences (the first also calls the audio and backlight routines below and `crime_setvideotiming`), `i2cfp_BlUp` and `i2cfp_BlDown` step the backlight, `i2cfp_AudioVolLeft`, `i2cfp_AudioVolRight`, `i2cfp_AudioBass`, `i2cfp_AudioTreble` and `i2cfp_AudioSwitch` write the panel's audio chip, and `i2cfp_DualChannelCommand` sends a command to the dual-channel board. Established from the calls and the order of writes; the register contents were not decoded.
- Panel-controller (DMI2) services for user programs: `i2cfp_DMI2_BkltWrapper` and `i2cfp_DMI2_BkltFuncs` serve a user program's backlight requests (copying arguments in and out), `i2cfp_DMI2_SensorFuncs` its sensor requests, `i2cfp_DMI2_EDIDFuncs` its requests to read or write the panel's EDID block, `i2cfp_DMI2_KernelEDID` reads it for the kernel's own use, `i2cfp_DMI2_EnableSequel` and `i2cfp_DMI2_DisableSequel` run the enable and disable sequences, and `i2cfp_DMI2_FailedEDID` supplies the fallback record when reading fails. Established as to the calls and the copy-in and copy-out; each routine's command numbers were not decoded, and the expansion of "DMI2" is not known.
- Command channel: `crime_copyin_cmd` copies a command from user space, `crime_i2c_cmd` dispatches it, and `crime_Probe2AB`, `crime_2abCmdWrapper`, `crime_2abSendCmd` and `crime_2abGetReply` talk to the device the object calls 2AB: a probe compares a reply with a string (`strncmp`), a send writes a command with start, bytes and stop, and a reply is read as an I2C slave with bounded waits. Established from the calls; what the device is was not established.

## MACE interrupt mask (`mace.o`)

- `mace_mask_enable`, `mace_mask_disable`, `mace_mask_update`, `mace_mask_read` and `mace_mask_write` read and write the 64-bit register at physical `0x1f310018` (KSEG1 `0xbf310018`): enable ORs the given bits in, disable clears them, update replaces the bits selected by its first argument with its second argument, read and write transfer the whole value. Each does so at the highest interrupt priority (`spl7`) so the read-modify-write is atomic. Established. The register is the ISA interrupt mask of MACE's peripheral control block (Linux `mace.h`, `struct mace_isactrl`, member `imask`, 32 sources: audio, real-time clock, keyboard, mouse, timers, parallel and the two serial ports).
- `mace_tbl_init` initialises the table that maps those 32 bits to handlers. `mace_is_thd` tells whether a source is handled by an interrupt thread. `setmaceisavector` installs a handler for a bit, choosing between a direct vector and an interrupt thread (`xthread_setup`), and hooks it to the CRIME input that carries the MACE ISA interrupt (`setcrimevector`). `mace_intr` is the dispatcher: it reads the MACE interrupt status register, masks the sources it will run, and wakes the thread (`vsema`). `mace_stray` reports an interrupt no handler claimed (`cmn_err`). `macevec_intrd_setup` creates the interrupt thread for a source (named with `fetch_kname`) and `macevec_intrd` is its body, waiting on a semaphore (`ipsema`). Established from the calls; the handler table layout was not decoded.

## Kernel tile pool (`tile.o`)

`tile.o` is a member of `os.a`, not of `crime.a`. It provides the 64 KB physically contiguous tiles that the frame buffer and texture memory are built from ([memory.md](memory.md)). Each tile has a record in `tile_data` (one record per 16 pages) with a count of locked pages, a bitmap of which are locked, a memory-bank class and queue links; the records sit on queues indexed by the number of locked pages (queue 0 holds wholly free tiles; further queues hold full, low-memory, hole and stale-ECC tiles).

- `tile_init`: the one-time set-up called from memory initialisation. It registers the two debugger commands (`idbg_addfunc` for `tile_dump` and `tileq_dump`), computes the first and last whole tile in the page range, marks the unusable pages of a partial first or last tile and of memory holes as locked (`tilepages_to_frag`), gives each tile a class number that changes at every memory-bank boundary (`addr_to_ibank`), queues each tile (`tq_enqti`, tiles below `tile_lowmem` on the low-memory queue), derives the thresholds used by the allocator from `maxmem` and `dcache_size`, and creates the allocation semaphore and the queue spinlock (`init_sema`, `spinlock_init`). Established.
- `tile_mapin`: gives a tile a kernel address. A tile that lies in the direct-mapped cached (or, for an uncached request, uncached) kernel window is returned at that address; otherwise it allocates a run of 16 pages of kernel virtual space of the right cache colour (`kvalloc`), fills the page-table entries (`kptbl`, cache attributes from `pte_cachebits`) and returns the mapped address. With cache-alias avoidance on it validates each page's colour (`color_validation`). `tile_mapout` frees the address with `kvfree` only when it was a mapped one. Established.
- `tiled` is the body of the tile daemon: it sleeps on its semaphore, takes the allocation semaphore so that it never runs against a tile allocation, calls `do_tiled` and adds the page count it moved to a statistics word. `do_tiled` walks the partly-locked queues from the fullest down, and for each unlocked, unqueued page of a tile allocates a replacement page (`pagealloc`) and migrates the contents (`migr_migrate_frame`), then frees the old page; the aim is to put free pages back into partly-filled tiles. It stops when `tiled_hiwat` says there is enough. Established.
- `tiled_lowat` and `tiled_hiwat` are the start and stop conditions of the daemon. Both compare the free memory in whole-or-potential tiles (free pages of the tile node plus the counts on the fragmented and unfragmented page lists, `tphead`) against `tune`'s `t_gpgshi`, and the share of movable and free pages among the locked tiles against fixed ratios; `tiled_lowat` is true when the daemon should run, `tiled_hiwat` when it may stop. Established.
- `tile_cache_clean` writes back and invalidates the data and instruction caches for a list of tiles: when more tiles are listed than a threshold (half the data cache, set in `tile_init`) it flushes the whole cache (`flush_cache`), else page by page with `_bclean_caches` (or `color_validation` with alias avoidance). `tile_ecc_clean` takes a tile whose pages carry the stale-ECC mark: maps it (`tile_mapin`), zeroes it (`bzero`), unmaps it, flushes it with `tile_cache_clean` so the memory controller writes correct check bits, and clears the mark. Established.
- `tile_pagelock` and `tile_pageunlock` record that an ordinary page inside a tile has become fixed or movable again. Each takes the queue lock (`splhi`), removes the tile from its queue (`tq_deqi`), sets or clears the page's bit and the locked count, and requeues it by the new count (`tq_enqti`); the first lock on a tile moves its pages to the fragmented list (`tilepages_to_frag`), the last unlock back (`tilepages_to_unfrag`). `tile_pagelock` finishes by waking the daemon (`cvsema`) when `tiled_lowat` holds. Established.
- `tile_pageselect`: given a free-page list, picks which page the page allocator should take. For a movable request it examines the first few pages and prefers one in a tile with the fewest locked pages, so that tile may become whole again; for a fixed request it prefers a tile that already has the most. It looks at more pages when few whole tiles remain or a tile allocation is under way. Reads `pfd_lowmem` to skip low pages for DMA requests. Established.
- `tq_enqhi` and `tq_enqti` put a tile at the head or at the tail of the queue whose index is given; `tq_deqi` removes it. All three update the queue's tile count and the totals in `tileinfo` (tiles fragmented, locked pages in fragmented tiles, tiles available, tiles full) and the free count of the tile's memory-bank class. Established.
- `tile_evict` asks the large-page layer to evict whatever occupies a tile (`lpage_evict`) and counts one more forced move. `tile_migr_pagealloc` allocates the destination page when a page is migrated out of a tile (`_pagealloc_size_node`, one movable, stale-allowed 4 KB page, of the source page's colour when alias avoidance is on) and validates its colour. Established.
- `tile_print` prints one tile record (queue index, class, locked count and bitmap, links and the page record) with `qprintf`; `tile_dump` takes a tile index, page record, page frame number or record address and prints that tile, or all of them for -1; `tileq_print` prints one queue's counts and, for the unlocked queue, the per-class counts and the tiles holding kernel dump pages; `tileq_dump` prints every non-empty queue, or the one named. These are the debugger commands `tile` and `tileq` registered by `tile_init`. Established.

## Graphics device layer (`gfx.o`)

`gfx.o` is the board-independent half of the graphics driver: it keeps the table of boards, the per-process and per-share-group records, the device records created by `open`, the STREAMS side that carries messages to the X server, and the entry points that pass requests to the resource manager ([ioctls.md](ioctls.md)) or to the board's own methods. The symbols are those of the 6.5.30 object (also linked into `gfxs.a`). Record layouts are given only for the fields the code reads.

- A **thread record** (20 bytes, `gthread_*`) holds the thread handle (`+0`), a flag word (`+4`; `0x2` marks a member of the opener's share group, `0x4` a thread that is exiting), the shared device list (`+8`), the group record (`+12`) and the hash-chain link (`+16`). A **group record** (20 bytes, `gfx_group_*`) holds the thread-group handle (`+0`), a count of attached threads (`+4`), a spinlock (`+12`) and a chain link (`+16`). A **device list** is a 20-byte record: a reference count (`+0`), a reader count (`+4`), a sleep variable (`+8`), a spinlock (`+12`) and the first device record (`+16`). A **device record** (60 bytes, made by `gfxopen`) has flags (`+4`), the board record (`+8`), the owner thread handle (`+12`), the next device in the list (`+16`), the board's method table (`+20`) and state (`+24`), both copied from the board record (`+28`, `+32`), and a per-device semaphore (`+44`). A **board record** is 36 bytes, held in `GfxBoards`; its word at `+4` is the control stream that manages the board. The **board state** at device `+24` carries a spinlock (`+28`), a semaphore that serialises use of the board (`+32`), the device that currently owns the board (`+40`), and a busy count (`+44`) and flag (`+60`) that other code waits on. Established from the field uses below.

### Lookup tables

- `gfxtable_readerlock` and `gfxtable_readerunlock` add one to and take one from a reader count held in the first word of the lock they are given, with interrupts raised around the update (`splhi`, `splx`). `gfxtable_writerlock` raises the level and, while the reader count is positive, restores the level, sleeps 1000 ns (`nano_delay`) and tries again; it returns the old level with the lock held by virtue of the raised level, and `gfxtable_writerunlock` restores it. Established.
- `init_gfx_group_table` allocates once a 64-byte table of 16 chain heads (`kern_malloc`), zeroes it and initialises the table lock. `gfx_group_find` maps a thread handle to its group handle (`threadhandle_to_threadgrouphandle`) and walks the chain of the bucket given by the group handle's low four bits (its bits 12 to 15 if those are zero) under the reader lock, returning the group record or none. `gfx_group_create` allocates a group record for the calling thread's group, initialises its lock and links it at the head of its bucket under the writer lock; `gfx_group_destroy` unlinks it, destroys the lock (`spinlock_destroy`) and frees it. Established.
- `init_gthread_table` allocates once a 192-byte table of 16 buckets of 12 bytes (a reader count, a spinlock and a chain head). The bucket of a thread handle is a multiply-by-29 fold of its upper three bytes, masked to four bits (code in `gthread_create`, `gthread_destroy` and `gthread_find`). `gthread_create` allocates a thread record, attaches it to its group if one exists (`gfx_group_find`, `gthread_attach_group`) and links it into its bucket under the writer lock; `gthread_destroy` unlinks and frees one by handle. Established.
- `gthread_attach_list` points a thread record at a device list and counts a reference; given no list it allocates a fresh one with a count of 1, a sleep variable (`init_sv`) and a spinlock. `gthread_detach_list` clears the pointer, drops the count and frees the list (`spinlock_destroy`, `sv_destroy`, `kern_free`) at zero. `gthread_attach_group` and `gthread_detach_group` set or clear the group pointer of a thread record and adjust the group's thread count with interrupts raised. Established.
- `gthread_find_gfxp` returns the first device of a thread's device list (`+16` of the list), or none; it is `gthread_find` plus that one load. Established.
- `gthread_scan` runs a callback over every thread record, in three phases passed as the third argument: 0 once before any lock is taken, 1 for each record whose exiting flag is clear (all 16 buckets locked for reading, `gfxtable_readerlock`), 2 once after unlocking; a non-zero return from phase 0 or 1 stops the scan and is returned. `gfxopen`, `gfxclose`, `GfxOpen` and `GfxUnmanage` use it with the callbacks below. Established.

### Boards

- `GfxRegisterBoard`: called by a board's start-up code. If `GfxNumberOfBoards` is below `GfxBoardLimit` it allocates a 36-byte board record in the next `GfxBoards` slot, stores the caller's method table at `+28`, the board state at `+32`, one further argument at `+0` and the board's index at `+12`, runs `RRM_Init` on the state and counts the board; otherwise it logs through `cmn_err`. Established; the meaning of the argument stored at `+0` is not decoded.
- `GfxAddHwgraphEdge`: finds the registered board whose state pointer equals its second argument, labels the given hardware-graph vertex with that board's index (`graph_info_add_LBL`) and adds an edge to it named from the index (`sprintf`, `hwgraph_edge_add`), under a vertex created once with `hwgraph_path_add` from the graph root. Established.
- `gfx_frs_valid_pipenum` returns whether its argument is below `GfxNumberOfBoards`, the validity test for a pipe number from the frame-rate scheduler. Established for the comparison; the caller is inferred from the name.

### Process hooks

- `gfx_disp`: the dispatch-time check for a thread. It finds the thread's record, walks its device list and, for each device whose board is active (`+60` of the state positive), calls a method of the device's table and tests the board owner (`+40`), the busy count (`+44`) and the board semaphore with `valusema`; it returns 1 when nothing stops the thread and 0 otherwise. Inferred: the loop and the data it reads are established, the exact conditions that select 0 are not decoded.
- `gfx_fault` is the fault hook for the graphics mapping: it finds the calling thread's record (returning 1 if there is none), takes the device's semaphore (`+44`, unless the device is flagged `0x8`), calls the device's method at `+56` when the device is flagged `0x1`, calls `RRM_ValidFault` on the device and returns 0 if that succeeded, 1 if not. Established.
- `gfx_exit` is the process-exit hook: it sets the exiting flag in the thread record and, if the thread is not in a share group, calls each device method at `+28` that the board's table provides; in a share group, under the list reader lock (`GfxListReaderLock`), when the thread is the last in its group (`threadgroup_refcnt` equal to 1) it makes each device that owns its board release it (method at `+96`, then clears the owner and `vsema`). Established.
- `gfx_shcheck` is the teardown for a thread leaving a share group: it releases any board a device of the thread owns (method `+96`, clear the owner, `vsema`), clears the handles held in the thread's devices (`ddv_destroy_handle`), then detaches the list and group, clears the scheduler registration (`cleargfxsched_thread`) and destroys the thread record (`gthread_destroy`), using the list writer lock when the list is shared. Established from its calls.
- `gfx_shdup`: on a fork or share, creates a record for the new thread (`gthread_create`), gives it the parent's device list (`gthread_attach_list`) and registers it with the scheduler (`setgfxsched_thread`); it does nothing when the parent has no device or its first device is flagged `0x8`. Established.
- `gfx_shalloc` creates a group record for the calling thread (`gfx_group_create`), attaches the thread to it, and stores the caller's value (`+52`) into every device of the thread's list under the list writer lock. `gfx_shfree` finds the calling thread's group and destroys it (`gfx_group_find`, `gfx_group_destroy`). Established; what the value at `+52` means is not decoded.
- `GfxKiller` is the scan callback that evicts other users of a board: in phase 1 it looks at each thread whose device list holds a device on the same board state as the message names (list under the reader lock), skips the caller's own group, and sends the signal named in the message (9, kill, from `GfxOpen` and `GfxUnmanage`) to that thread's process (`threadhandle_to_proc`, `psignal`). Established.
- `gfx_conflict_scan` is the callback `gfxopen` uses to refuse a clash: for each other thread's device on the same board it takes and releases the device's semaphore (`psema`, `vsema`) and, if that device is in the conflicting mode (flag `0x8` test), sets the message's result to 3, on which `gfxopen` fails. Established for the structure; the two modes it distinguishes (1 and 2 in the message) are inferred to be exclusive and shared opens.
- `irisgl_sproc_setup_scan` and `irisgl_sproc_cleanup` are callbacks over the opener's share group (`curthreadgroup_scan`, `gthread_scan`). The first gives each member that has no record one (`gthread_create`), marks it as a member (flag `0x2`), attaches the opener's device list under the writer lock and registers it with the scheduler; the second undoes this for the members of one group (`cleargfxsched_thread`, the two detach routines, clear the flag). Established.

### Device entry points

- `gfxopen` is the character-device open: under the device semaphore (`GfxDevSema`) it checks the minor number, finds a free slot of `GfxDev` (`GfxDevLimit` entries), reuses or creates the thread and group records, refuses a conflicting user with `gfx_conflict_scan`, allocates and zeroes a 60-byte device record (`kern_malloc`, `bzero`), initialises its lock and semaphore (`init_spinlock`, `init_sema`), links it into the shared device list, registers the thread with the scheduler and, for the first user of a share group, runs `irisgl_sproc_setup_scan` so all siblings share it. Failures return 19, 12 or 6 and log through `cmn_err_tag`. Established from its calls; the minor-number layout (low 16 bits the slot, `0x20000` a kernel-internal open) is read from the masks.
- `gfxclose` is the matching close: it finds the device, calls `GfxDetach`, unlinks the device from its list under the writer lock, frees the semaphore (`freesema`), detaches and destroys the thread record when it is the last, runs `irisgl_sproc_cleanup` over the group when the shared list empties, and releases the STREAMS side (`gfxcleanup`). A path for a process found with unexpected state logs its name and pid (`proc_name`, `proc_pid`) and signals it. Established from its calls; that last path's trigger is not decoded.
- `gfxread`, `gfxwrite`, `gfxmap` and `gfxunmap` each return the constant 54 and use none of their arguments; the device is driven only by `gfxioctl`. Established.
- `gfxioctl` is the request entry: it counts the call in the `gfxinfo` record, finds the device by the low 16 bits of the minor number (error 13 or 19 when absent), serialises on the device semaphore, and dispatches by request number. Numbers 1000 to 9999 go to `RRM_Dispatch`, numbers of 10000 and above to the board's own method (table entry at `+100`, the board's ioctl handler, for example `crimeIoctl`), and the numbers 101 to 113 are handled here: 101 returns `GfxNumberOfBoards`; 104 detaches (`GfxDetach`), refused with 16 when the thread's group has other members; 105 reports whether the board's stream is attached; 103 and 112 bind the device to a board by index (copy the board's table and state into the device, call its method at `+4`, undo on failure; 103 refuses a device that is already bound with error 16); 113 requires privilege (`drv_priv`) and sets flag `0x4` on the device; 106 to 111, 102 and the rest take or release the board's owner (`ddv_lock`, `ddv_unlock`, `psema` on the state, `us_delay` while the busy flag is set) and call board methods, including `rrmUnMapGfx` for a mapped device. Established for the dispatch ranges and for 101, 103, 104, 105, 112 and 113; inferred for the others, whose copy sizes (`copyin` of 4, 8, 12, 16 or 32 bytes) are read but whose purposes are not decoded.

### Locks on the device list

- `GfxListReaderLock` and `GfxListReaderUnlock` raise the level, add one to or take one from the list's reader count (`+4`) and, on unlock, wake a waiting writer (`sv_signal` on `+8`). `GfxListWriterLock` raises the level and, while the reader count is positive, sleeps on the list's sleep variable (`sv_wait`) until it is zero; `GfxListWriterUnlock` restores the level. Established.

### STREAMS side

- `GfxOpen` is the STREAMS open of the control stream; only a clone open (the fourth argument equal to 2) is accepted, else it returns 19. It looks for the calling thread's device, signals every other holder of the board with `GfxKiller` (signal 9, `gthread_scan`), drops the streams lock for 100 ticks (`streams_unlock`, `delay`) while they leave, then installs its queue record as the board's control stream (`+4` of the board record), resets the board's panes (`RRM_init_panes`), marks the stream as attached (flag `0x1` at `+32` of the queue's record) and returns a device number built from the board's major number (`getemajor`, `makedevice`). Established from its calls.
- `GfxUnmanage` releases a board from its control stream: it clears the stream pointers in the board record, signals the other users (`GfxKiller`), makes the device take the board's semaphore, wait for the busy flag to clear (`us_delay`) and release it through the method at `+96`, and re-initialises the console (`cn_init`) when the closing stream was the board's. `GfxClose` is the STREAMS close: it calls `GfxUnmanage` when the queue is the board's stream, clears the attached flag and frees the record (`gfxcleanup`). `gfxcleanup` destroys the record's lock and frees it. Established from calls; the console re-initialisation condition is inferred.
- `GfxDetach` ends a board binding: if the device is bound it validates the old handle (`gfxdd_lookup`), calls `RRM_Exit`, and, when the stream is still the board's, calls `GfxUnmanage`; it then clears the board record's stream pointers if they were this device's and zeroes the device's board links under the streams lock, destroying the handle (`ddv_destroy_handle`). Established.
- `GfxWput` is the write-side put procedure: protocol messages (types 1 and 131) go to `GfxProto`, a flush message flushes the write queue when its write bit is set (`flushq`) and is freed, and anything else is logged (`cmn_err`). `GfxProto` reads a tag from the message's first word: tags 102 and `SHIQ` call a method of the board's table with two words from the message and reply with a message of type 138; tag `SHMQ` copies two halfwords of the message into the board's record (`+24`, `+26` of the queue data), rewrites the tag to `QMHS` and replies (`qreply`); an unknown tag is logged and freed. Established for the tags and actions; the meaning of the exchange is inferred to be the X server's query for the board's identity.
- `sendMsg` builds the message the server receives: it zeroes a block and fills it with the queue's identifying halfwords, then queues it (`putq`). `GfxSendMessage` allocates a buffer for a message (`allocb`); when none is free it copies the message to a heap block and retries from a buffer callback (`bufcall`, `GfxDelayedMessage`), sleeping (`sleep`) unless called from interrupt level. `GfxDelayedMessage` is that callback: it allocates, sends (`sendMsg`), wakes the sleeper (`wakeup`) and frees the copy. `GfxMessage` is `GfxSendMessage` from process level and `GfxIntrMessage` the same from interrupt level (second argument 1). Established.
- `GfxRqService` is the queue's service procedure: it takes each queued message (`getq`) and passes it to the next module's put procedure when `canput` allows, putting it back (`putbq`) otherwise. Established.

## Resource manager (`rrm.o`)

`rrm.o` is the kernel's resource manager: it owns the render nodes (RN, one per GLX hardware context, [ioctls.md](ioctls.md)) and the panes that tie a window to a board, and decides who may touch the hardware. The names are those of the 6.5.30 object. The routines that `RRM_Dispatch` reaches directly through its command table (`RRM_OpenRN`, `RRM_CloseRN`, `RRM_SwapBuf` and the rest) are listed with their commands in [ioctls.md](ioctls.md); this section covers the routines behind them. Layouts are given for the fields the code reads.

- A **render node** is a 116-byte record in the table `RRMrn` (`rrm_maxrn` slots, slot 0 unused, one call semaphore per slot, `RRMcall_sema`). Fields: a generation count (`+0`, kept below `0x8000`), the resource mask the node asks for (`+4`) and the part of it currently valid (`+6`), a sleep variable for retrace waits (`+40`), the device that owns it (`+44`), the board's hardware context number (`+56`, -1 when it has none), a free flag (`+58`), a reload flag (`+59`), the links of the board's most-recently-used list (`+64`, `+68`), a spinlock (`+72`), and its draw and read panes (`+80`, `+84`).
- A **pane** is a 132-byte record in `rrm_pane` (`max_pane` slots) shared by every node bound to one window on one board: the window key (`+4`), a clip serial (`+8`), a mask of valid parts (`+12`) and of the parts a waiter needs (`+14`), a use count (`+16`), the swap value (`+20`), the swap interval (`+24`) and the retrace count at which the next swap is due (`+28`), a semaphore that serialises validation (`+36`) and the device validating (`+44`), sleep variables for clip waiters (`+48`) and buffer waiters (`+52`), a spinlock (`+56`), the board state (`+60`), the clip descriptor (`+64`), a pointer to a 224-byte clip copy (`+92`) and the swap group (`+120`). The bits of the valid mask are: `0x2` clip, `0x4` buffer, `0x8` swap, `0x40` read pane, `0x80` bound. Established from the uses below.

### Panes

- `pane_gc` refills a cache of up to eight free pane slot numbers by scanning `rrm_pane`, from a rotating start, for records whose use count is zero. `bind_pane` takes the table semaphore and finds the pane with the given window key and board state (reusing it), otherwise takes a slot from the cache (running `pane_gc` when the cache is empty), initialises it with a use count and key, removes that slot from the cache, counts one more user and flags the pane bound (`0x80`), or `0x4` for a fresh pane. `unbind_pane` takes one user away under the same semaphore. `clip2pane` is the lookup alone: the pane whose key and board state match, or none. Established.
- `pane_cleanup` clears a pane's key, its waiter and valid bits and any owner, wakes the waiters (`vsema`, `sv_signal`) and breaks its swap group (`rrmSwapUnGroup`). `pane_setnullclip` replaces the pane's clip by the empty clip through the device's method at `+44` and sets the valid bits for it, counting one clip change in the serial (`+8`). `pane_validmask` returns the valid mask. Established.
- `invalidate_pane` and `invalidate_pane_buffer` look the pane up (`clip2pane`) and clear the named bits from its valid mask with interrupts raised, adding the read-pane bit `0x40` when the clip bit is named. Established.
- `validate_pane_clip` accepts a clip from the X server (command 1011, [ioctls.md](ioctls.md)): it finds the pane, allocates the 224-byte clip copy once (`kern_malloc`), copies up to 224 bytes of user data into it (`copyin`), copies the 14-word clip descriptor into the pane (`+64`), counts a clip change, sets the valid bits `0x2` and `0x40` and wakes the clip waiters (`sv_signal` on `+48`); it releases the validation semaphore and returns 14 when the copy fails. `validate_pane_swapbuf` stores the swap value at `+20`, sets bit `0x8` and wakes a swap waiter. `validate_pane_buffer` sets bit `0x4` and wakes every buffer waiter (`sv_broadcast` on `+52`). Established.
- `validate_my_pane_buffer` makes the caller wait, interruptibly (`hold_nonfatalsig`, `sv_wait_sig`, `release_nonfatalsig`), until the pane's buffer bit is set; it returns -1 when a signal ends the wait. `validate_my_pane_resources` brings one pane up to the mask a caller needs: it waits for the buffer, then for the missing clip and swap bits it takes the pane's validation semaphore (`cpsema`, falling back to `psema`), asks the X server for them by message (`GfxMessage`, request flags built from the missing bits), sleeps until they arrive, and substitutes the empty clip (`pane_setnullclip`) when no server is attached. A process that fails these steps is logged (`cmn_err_tag` 2129 to 2131, with its pid) and killed (`psignal`, signal 9). Established.
- `init_panes` initialises the pane table semaphore and, for every pane, its validation semaphore, its two sleep variables and its spinlock. `RRM_init_panes` clears the valid and waiter masks and the owner of every pane of one board state, releases a validation semaphore left held and breaks any swap group (`rrmSwapUnGroup`); `GfxOpen` calls it for a new control stream. Established.

### Set-up and tear-down

- `RRM_init` marks render node slots 1 to `rrm_maxrn - 1` free (byte `+58`), gives each a call semaphore (`init_sema`), then initialises the pane table with `max_pane` set to `rrm_maxrn`. `RRM_Init` prepares one board's state record: it initialises the spinlock at `+28` and the board semaphore at `+32`; `GfxRegisterBoard` calls it. `RRM_Exit` is the close of a device: it closes every node the device owns, each under its call semaphore (`rrmCloseRN`, `rrmUnbindProcFromRN`), releases the board if the device owns it (method at `+96`, clear the owner, `vsema`) and logs through `cmn_err` if a close fails. Established.
- `rrmCloseRN` destroys one render node: it waits until the device owns the board (`psema`, `us_delay` while the busy flag is set), calls the board's method at `+36`, unbinds the process if the node was the current one (`rrmUnbindProcFromRN`), removes the node from the board's lists, bumps the generation count, unbinds the node's two panes (`unbind_pane`), destroys its sleep variable and spinlock, marks the slot free, clears the board's context table entry, and counts one node fewer on the board and the device. `rrmUnbindProcFromRN` unmaps the graphics window if the device is not private (`rrmDoUnMapGfx`), clears the board's owner and releases the thread's device list lock (`GfxListWriterLock`, `GfxListWriterUnlock`). Established from calls; the list manipulations were read, not named.
- `rrmDoUnMapGfx` sets a flag on the device (`0x10`), calls the board's method at `+52` (the unmap of the graphics window; on the CRIME board `crimeUnMapGfx`) and clears the flag. `rrmUnMapGfx` does so for the calling thread when the board provides that method and the device is not private. The effect is that the next access faults into `gfx_fault`, which revalidates. Established.
- `rrmGetResourceMask` returns the node's requested mask. `rrmSetResourceMask` stores a new mask (adding the pane's valid bits when the clip is requested) and calls `rrmUnMapGfx` when any newly requested part is not valid, forcing the next access to fault. `rrmInvalidateRN` clears named bits from a node's valid mask; when the device does not already own the board it first takes the board semaphore and waits out the busy flag. Established.
- `rrmSuspend` and `rrmResume` stop and restart every device of the calling thread, walking its list under the reader lock (`GfxListReaderLock`). Suspend calls the board's method at `+88` for each device, takes ownership and records the counts; resume calls `+92`, unmaps the window (`rrmDoUnMapGfx`) and restores the flags, with `cpsema` to take the board without sleeping. Inferred for purpose (a graphics-aware context switch), established for the calls.

### Validation on a fault

- `RRM_ValidFault` is what `gfx_fault` calls. If the device owns the board's context state it first runs `rrmValidateMyPcx` for the context, then, for each of the node's draw and read panes, waits for retrace if asked (`rrmValidateMyRetrace`), brings the pane up to the node's mask (`validate_my_pane_resources`), takes the board (`ddv_lock`) and calls the board's method at `+48` with the node's context number to load the state, and unlocks. Nodes with inconsistent state are logged (2132, `cmn_err`) and killed with signal 9. Established; the order of the checks follows the code and some branch conditions are not decoded.
- `rrmAllocPcxid` gives a node a hardware context number: if the board has one context it does nothing; otherwise it takes the first free entry of the board's context table (`+16`), or, when none is free, the number of the least recently used node, and moves the node to the head of the board's most-recently-used list (`+20`, `+24`). `rrmValidateMyPcx` makes sure the calling node has a context: it allocates one (`rrmAllocPcxid`), asks the board to load it through its method at `+64`, records the node as the board's current one (`+4`), counts the load in `gfxinfo`, invalidates the previous node (`rrmInvalidateRN`) and pane (`invalidate_pane`) when it has to steal. Established.
- `rrmValidateBuffer`, `rrmValidateMyRetrace` and `rrmValidateRetrace`: `rrmValidateBuffer`, when the board keeps a retrace counter, sets the pane's due count (`+28`) to the board's counter (`+100` of the state) plus the pane's swap interval (`+24`), then calls `validate_pane_buffer`; `rrmValidateMyRetrace` sleeps on the node's retrace variable (`sv_wait`) until its retrace bit (`0x10`) is valid, and `rrmValidateRetrace` sets that bit and wakes it (`sv_signal`). Established.

### Swap and video-sync waits

- `rrmSwapWait` returns at once when the board's retrace counter plus one has reached the pane's due count; otherwise it queues the node on the board's list of pending swaps (`+104` of the state), ordered by due count, and sleeps interruptibly (`sv_wait_sig`) until the retrace handler wakes it, returning -1 if a signal ends the wait. `rrmSwapUnGroup` removes a pane from its swap group: it takes the group count down, relinks the group's pane chain, clears the board's table entries that named the group and frees the group record (`kern_free`) at zero. Established.
- `rrmValidateMGRSwapBufSTREAM` sends the X server a message of type 9 carrying the swap value through the interrupt-safe path (`GfxIntrMessage`); `rrmValidateMGRSwapBuf` schedules it 100 ticks ahead when the queue exists (`streams_timeout`), which is how a swap completed in interrupt context is reported. `rrmGenlockNotifySTREAM` and `rrmGenlockNotify` do the same with message type 12 for a genlock change. Established.
- `rrmWaitVideoSync` checks its arguments (error 22 unless the count is positive and the target is below it), queues the node on the board's video-sync list and sleeps interruptibly until woken. `rrmValidateVideoSync` runs at a vertical retrace: it wakes each queued video-sync waiter whose remainder equals the count modulo its divisor (`divu`, `mfhi`, `sv_signal`), then wakes the waiters on the swap list whose due count has been reached. Established for the structure; which board word supplies the count in the first loop is not decoded.

# Kernel routines, one entry each (`crime.o`)

Each entry names one routine of the 6.5.30 `crime.o` (a member of `crime.a`), says what it does to the board or the kernel, and cites the routines it calls or the offsets it reads, from `objdump -d -r` and `crime_kernel/disasm/crime/crime.text.s`. Every entry carries a label.

## Interrupt and FIFO handlers

- `crimeFifoEmptyHandler` in `crime.o`: the handler for interrupt input 25, raised when the engine's command FIFO falls to its empty level. Established.
  It reads the wait-state word at +0x220 of the board record: state 2 means a thread sleeps in `crmFifoWait`.
  For state 2 it cancels the timer stored at +0x228 with `untimeout`, signals the sleep variable at +0x22c with `sv_signal` and clears the state.
  State 1 cancels the timer at +0x13c, decrements a counter reached through the pointer at +0x28, and any other state logs through `cmn_err` at level 5.
- `crimeEmptyWaitTimeout` in `crime.o`: the timer routine that guards a wait for the FIFO-empty interrupt. Established.
  If the wait state at +0x220 is still set it masks input 25 with `crime_intr_disable` under `splhi` and clears the timer word at +0x13c.
  It then calls `crimeError` with the engine's register pointer from +0x78, clears +0x220 and +0x3c, and decrements the same counter behind +0x28.
- `crimeFifoFullHandler` in `crime.o`: the handler for interrupt input 26, raised while the command FIFO is above its full level. Established.
  It reads the FIFO level from bits 24:18 of the status word at +0x4000 and tests bit 26 of the interrupt status register.
  It brackets its wait with `gfx_waitf_on` and `gfx_waitf_off` and polls with `us_delay` for 1 microsecond up to 100 times before it gives up.
- `crimeFifoWaitTimeout` in `crime.o`: the timer routine for the sleep inside `crmFifoWait`. Established.
  It logs through `cmn_err` at level 4, masks input 25 with `crime_intr_disable`, and stores 1 in the timeout flag at +0x224.
  It then wakes the sleeper on the sleep variable at +0x22c with `sv_signal` under `splhi`.
- `crmFifoWait` in `crime.o`: waits until the interface buffer holds at most a given level, with a poll limit in its third argument. Established.
  It first polls bits 24:18 of the status word up to 100 times with `us_delay` for 1 microsecond each.
  If the level stays high it writes the empty threshold into bits 20:14 of the control word (mask 0xffe03fff), enables input 25 with `crime_intr_enable`, arms `timeout` and sleeps with `sv_wait` on +0x22c.
- `crmIdleWait` in `crime.o`: waits for the engine to go idle, polling up to its second argument times 1 microsecond. Established.
  Each pass reads the status word at +0x4000 and ends when bit 28 is set and the FIFO level in bits 24:18 is zero, calling `us_delay` otherwise.
  When the count runs out it reports through `cmn_err` and returns failure.
- `crimeError` in `crime.o`: the recovery after a drain or idle wait times out. Established.
  It prints a level-4 warning with `cmn_err`, writes 0 to the engine's reset register at +0x408 and pauses 10 microseconds with `us_delay`.
  It then rebuilds the interface-buffer control word from four kernel threshold variables (count, stall at bit 7, empty at bit 14, full at bit 21), writes it to +0x400 and calls `flushbus`.
- `crimeInterrupt` in `crime.o`: the interrupt entry for the display-line inputs of the video back end. Established.
  It tests the input number for the two GBE lines and hands the line number (the input minus 16) and the board record to `crime_hli_handler`.
  Any other input returns without a call.

## Board entry points and start-up

- `crimeInitialize` in `crime.o`: registers the board with the kernel's hardware tree and marks it initialised. Established.
  It makes one call to `htp_register_board`, which this object does not define, and sets the byte at +0x98 of the board record.
- `crimeStart` in `crime.o`: the second start-up step, which prepares each display channel. Established.
  It blanks the screen through `gbeBlankScreen` and probes a channel whose size halfword at +0x22 is still zero over DDC with `crime_i2cProbe`.
  It then checks the data with `crime_validate_ddc_data` and, for a flat-panel channel of type 3, reads the panel identification with `i2cfp_DMI2_KernelEDID`.
- `crmInitialize` in `crime.o`: the first-time driver initialisation for the board, reached by ioctl 0x560d. Established.
  It stops the display with `gbeStop`, invalidates the timing with `crmInvalidVideoTiming` and allocates the buffers with `crmAllocGfxBuffers` and the tile lists with `crmInitGbeData`.
  It then re-runs `crimeInitHW`, reloads the TLBs with `crmLoadTlbABC` and `crmLoadCidTlb` for the owning thread, and re-probes the flat panel with `crime_i2cFpProbe`.
- `crimeDownload` in `crime.o`: returns 0 and does nothing. Established.
  This family has no microcode, so the 8-byte routine at offset 0xa6c only fills the graphics driver's method table.
- `crime_earlyinit` in `crime.o`: the one-time start-up before the first client. Established.
  It probes the chip with `crimeProbe`, stops the display with `gbeStop` and fills the board record with `crimeInitInfo`.
  It then calls `crimeInitHW`, `gbeRun` and `crmInitTp`, which start the engine, the video timing and the kernel textport.
- `crime_init` in `crime.o`: the board registration called from the kernel's hardware inventory pass. Established.
  It allocates the board record with `kern_malloc`, adds the board to the inventory with `add_to_inventory` and initialises its mutex, lock and sleep variable.
  It then calls `crimeRetraceInit`, registers with `GfxRegisterBoard` and installs interrupt vectors with `setcrimevector` before the first monitor probe.
- `crmFirstInit` in `crime.o`: the allocation step before any client exists. Established.
  It calls `crmAllocGbeTables` for the display back end's tile lists and `crm_tileclassinit` for the per-class tile masks.
- `crimeInfo` in `crime.o`: copies the board information record to user space. Established.
  It calls `copyout` with at most 0x1f0 bytes and returns error 14 if the copy fails.
- `crimeAttach` in `crime.o`: maps the board's 0x86000-byte window into the calling process. Established.
  It first tries `gfxdd_recycle` for an existing mapping and then `gfxdd_mmap`, and answers 22 for an offset that is not page aligned and 12 on failure.
  A successful attach counts one more in the board record at +0x140.
- `crimeDetach` in `crime.o`: removes the user mapping of the graphics window with `gfxdd_munmap`. Established from its single call in `crime.o`.
- `crime_regmatch` in `crime.o`: the callback for a mapping that is being re-registered. Established.
  If an old mapping exists it unmaps the graphics window with `crimeUnMapGfx`, clears the handle word and destroys the old handle through `ddv_destroy_handle`.
  It then records the new handle.
- `crimeMapGfx` in `crime.o`: gives the caller a kernel-virtual address for the graphics pages. Established.
  It obtains the physical address with `ddv_getaddr` and maps the segment with `v_mapkvsegment`.
- `crimeUnMapGfx` in `crime.o`: revokes the user mapping of the graphics window. Established from its calls.
  It finds the calling thread's state with `thread_issproc` and `gthread_find`, then calls `ddv_invalphys_fal` and `crimeInvalTLB`.
- `crimeInvalTLB` in `crime.o`: a thin wrapper that invalidates the processor TLB for the graphics mapping. Established.
  Its only call is `ddv_invaltlb`.
- `crimeSuspend` in `crime.o`: a method-table hook that clears the word at +0x48 of the board record. Established.
  The 36-byte routine at offset 0x36d8 returns 0 at once for a null board, and leaves a board whose word at +0x3c is non-zero unchanged.
- `crimeResume` in `crime.o`: the matching hook that undoes the +0x48 flag and reschedules. Established.
  When the word at +0x48 is non-zero it calls `force_resched` and then clears it, so threads parked by the suspend run again; a null board returns 0.
- `crimeLockOut` in `crime.o`: the lock-out query of the graphics method table; it returns 1 without using any argument. Established.
  The 8-byte body at offset 0x36c8 means this board never refuses the lock request.
- `crimePcxSwitch` in `crime.o`: the context-switch query of the method table; it returns 0 without using any argument. Established.
  The 8-byte body at offset 0x36d0 leaves the real switch to `crimePcxSwap`, which the resource manager calls separately.

## Drawables and render nodes

- `crm_createdrawable` in `crime.o`: allocates one drawable record. Established.
  It takes the memory from `kern_malloc` and clears it with `bzero`, so a new record starts with no tiles, clip or id.
- `crm_freedrawable` in `crime.o`: releases a drawable record. Established.
  It clears the whole record with `bzero` before handing it to `kern_free`.
- `crm_finddrawable` in `crime.o`: looks a drawable up by its id, the word at +0x8, and creates it when the id is absent. Established.
  The records sit on a doubly linked list in increasing id order, searched under the table's lock with `mutex_lock` and `mutex_unlock`.
  A missing id is created in order by `crm_createdrawable`.
- `crm_mapcliptodraw` in `crime.o`: the same list search without the creation step. Established.
  The 92-byte routine at offset 0xba0 returns nothing for an id that is not on the list and makes no lock call.
- `crm_destroydrawable` in `crime.o`: tears a drawable down under its lock, which `mutex_mine` confirms the caller holds. Established.
  It frees the pixel buffer with `crmDestroyPbuffer` and the depth tiles with `crmSubtractZ`.
  Finally it releases the record through `crm_freedrawable`.
- `crm_unbinddrawable` in `crime.o`: detaches a drawable from a render node and may destroy it. Established from the call.
  Its only callee is `crm_destroydrawable`, and it is that routine's only caller; the reference counting before the call was not read.
- `crimeInitSpecialDDRN` in `crime.o`: prepares the render node used in the X-server mode of ioctl 0x5651. Established from its call.
  Its 34 instructions call `crm_finddrawable` once.
- `crimeCreateDDRN` in `crime.o`: allocates the kernel memory for a new render node. Established.
  It takes the node from `kern_malloc` and a second area from `kvpalloc`, clears them with `bzero` and runs `crimeInitSpecialDDRN` for the special node.
- `crimeDestroyDDRN` in `crime.o`: reverses node creation when a client closes. Established.
  It closes the node's retrace users with `crimeRetraceCloseRN`, frees its textures with `crmFreeTex` and unpins the scratch buffer with `crmunpinscratch`.
  It then unmaps the pages and chunks with `crmUnmapPages` and `crmUnmapChunk` and unbinds every drawable through `crm_unbinddrawable`.
- `crmunpinscratch` in `crime.o`: releases a user buffer that was pinned for DMA. Established.
  Its only call is `fast_undma`, which drops the pin taken when the buffer was mapped.
- `crm_enableovl` in `crime.o`: attaches the overlay planes to a drawable, the bit 2 case of ioctl 0x5609. Established.
  When `RRM_CheckValidFault` says the caller owns the engine it saves queued writes with `crmSavePP`, reloads the frame-buffer TLBs with `crmLoadTlbABC` and replays the writes with `crmRestorePP`.
- `crm_enablesz` in `crime.o`: attaches the depth buffer to a drawable, the bit 0 case of ioctl 0x5609. Established.
  It allocates the record with `kern_malloc` and `crmAllocZbuffer` and adds the covered depth tiles with `crmAddZ` between `psema` and `vsema`.
  The TLB reload follows the same `crmSavePP`, `crmLoadTlbABC` and `crmRestorePP` sequence as the overlay case.
- `crmRecomputeSZ` in `crime.o`: recomputes the depth tiles under a drawable's window after its clip changed. Established from its calls.
  It takes the buffer semaphore with `psema`, drops the old coverage with `crmSubtractZ` and adds the new with `crmAddZ`.
  The semaphore is released with `vsema` after the second call.
- `crm_changedrawables` in `crime.o`: changes the drawables bound to a render node. Established from its calls.
  Its 145 instructions call `crm_finddrawable` to resolve ids, `crm_makecurrentpbuf` for a pixel buffer and `crm_unbinddrawable` for a binding that ends.
- `crm_makecurrentpbuf` in `crime.o`: allocates the tile list of a pixel buffer that is being made current. Established.
  Its only call is `crmAllocPbufTiles`.
- `crimeSetNullClip` in `crime.o`: fills a clip descriptor with the empty clip. Established.
  The 56-byte routine at offset 0xa74 gives the descriptor no rectangles, a bounding box of -1 and two words set to 1, for a window with nothing visible.
- `crimeValidateClip` in `crime.o`: rewrites the clip-related engine registers when a window's clip list changes. Established.
  It updates the drawables with `crm_changedrawables` and the depth coverage with `crmRecomputeSZ`, and reloads the TLBs with `crmLoadTlbABC`.
  Pending writes are saved and replayed around the update with `crmSavePP` and `crmRestorePP`, and the new ClipMode, screen masks and window offsets go to +0x2010 to +0x2058.
- `crimeValidateDDClip` in `crime.o`: the kernel side of ioctl 0x55ff, which validates a drawable's clip region for the X server. Established.
  It copies the 0x118-byte request in with `copyin` and finds the drawable with `crm_finddrawable`.
  It builds the kernel's copy of the clip with `kern_malloc`, `bzero` and `bcopy` and releases the earlier copy with `kern_free`.
- `crimeUpdateBackTiles` in `crime.o`: rebuilds a drawable's back-buffer tile list, the kernel side of ioctl 0x5608. Established.
  It adds and removes tiles with `crmAddBackTiles` and `crmSubtractBackTiles` and takes a lock with `mrupdatef` and `mrunlock`.
  It saves and replays queued writes with `crmSavePP` and `crmRestorePP` around the TLB reload.
- `crimeOpenPbuf` in `crime.o`: the kernel side of ioctl 0x55fe, which opens a pixel buffer. Established.
  It finds or creates the drawable with `crm_finddrawable`, allocates with `kern_malloc` and computes the tile grid with `crmAllocPbuffer`.
  It calls `crm_destroydrawable` when a step after the drawable exists fails.
- `crimeClosePbuf` in `crime.o`: the kernel side of ioctl 0x5600, which closes a pixel buffer. Established.
  It finds the drawable with `crm_mapcliptodraw` between `mutex_lock` and `mutex_unlock` and removes it with `crm_destroydrawable`.
  `RRM_CheckValidFault` decides whether the engine state needs saving first.
- `crmAllocGfxBuffers` in `crime.o`: allocates the per-drawable buffers that its visual needs. Established.
  It can call `crmAllocFrameBuffer`, `crmAllocBackbuffer`, `crmAllocOverlayBuffer` and `crmAllocCid` and frees the previous set with `crmFreeChunk`.
  Each result is stamped with `crmNextIncarnation` and the buffer's lock comes from `sema_alloc`.
- `crmNextIncarnation` in `crime.o`: returns the next value of a global counter. Established.
  It raises the interrupt level with `splhi`, increments the counter and restores the level with `splx`, so each tile chunk and drawable change gets a unique stamp.
- `crime_load_fbtlb` in `crime.o`: the kernel side of ioctl 0x55f7, which selects a frame-buffer TLB set. Established.
  It calls `crm_changedrawables`, takes the dynamic-memory tiles with `crm_get_dms_tiles` and reloads the TLBs inside the `crmSavePP` and `crmRestorePP` pair.
  `RRM_CheckValidFault` decides whether the caller owns the engine.

## Context switch and engine state

- `crimePcxSwap` in `crime.o`: switches the engine from one client's context to another. Established.
  It brackets the switch with `gfx_waitc_on` and `gfx_waitc_off`, saves the outgoing client with `crmSavePP` and waits for idle with `crmIdleWait`.
  It then validates clip and drawable with `crimeValidateClip` and `crmValidateDrawable`, loads the shadow registers with `crmLoadGlobalsFromShadow` and `crmLoadNonglobalsFromShadow`, and replays the incoming client's saved writes with `crmRestorePP`.
- `crmSavePP` in `crime.o`: saves the pixel-pipe writes the engine has queued but not yet committed. Established.
  It drains committed work with `crmFifoWait` and reads each entry's address and data words from the interface buffer between the start pointer (bits 5:0) and the write pointer (bits 11:6) of the status word.
  A timeout there goes to `crimeError`, and the loop wraps its slot index at 64.
- `crmRestorePP` in `crime.o`: replays the writes that `crmSavePP` saved. Established.
  For each saved address word it rebuilds the register offset from the byte in bits 39:32 and the three bits in 42:40, then the width code in bits 44:43 selects the store.
  Code 2 stores the first data word, code 1 the second data word at offset +0x4, and code 3 a doubleword; any other code is logged with `cmn_err`.
- `crmLoadGlobalsFromShadow` in `crime.o`: reloads the global engine registers from a client's shadow record on a context switch. Established.
  Its 83 instructions store, in order, the buffer modes at +0x2000 and +0x2008, ClipMode, DrawMode, the five 64-bit screen masks and the window offsets, followed by the flagged groups.
  It makes no call, because every store goes to the engine window.
- `crmLoadNonglobalsFromShadow` in `crime.o`: reloads the per-primitive registers from the shadow record. Established.
  It begins with Primitive at +0x2060 and the transfer addresses, and replays the GL vertex words +0x2080 to +0x2094 unless flag 0x80 selects the X-server vertex form.
  It makes no call, so every store goes straight to the engine window.
- `restore_linear` in `crime.o`: copies saved doublewords back into one linear TLB. Established.
  Its loop walks the 16 doublewords of the table two bits of a mask at a time, copies each selected doubleword from the saved image to the engine through KSEG1 and clears the mask bits it has served.
  The 104-byte routine at offset 0x357c stops early once the mask is empty.
- `crimeRestore` in `crime.o`: restores the engine after the engine state was lost. Established.
  It rewrites a list of transfer-engine registers from the shadow image at +0x3000 and reloads linear TLB A at +0x1700 and B at +0x1780 through `restore_linear`.
  It then writes 0 to +0x4008 and, when saved writes exist, replays them with `crmRestorePP`.

## Dispatch, cursor and video services

- `crimePrivate` in `crime.o`: the driver's private ioctl dispatcher, 1086 instructions long. Established.
  It narrows the request number through a binary tree of `sltiu` tests and copies each argument in or out with `copyin` and `copyout`.
  Unrecognised request numbers log through `cmn_err` and fail with 22, and the handlers it calls include `crmMapPages`, `crmDefineTex` and `crimeSetGammaRamp`.
- `crimeLoadTimingTable` in `crime.o`: the kernel side of ioctl 0x55f6. Established.
  It passes the user's 0x30-byte timing record and the board's information pointer at +0x7c to `crime_setvideotiming`.
- `crimePositionCursor` in `crime.o`: the kernel side of ioctl 0x55f1, which moves the hardware cursor. Established.
  It stores the requested x and y at +0x9c and +0xa0 of the board record and packs the cursor word at +0x94 as x minus the hot-spot byte at +0x9a in bits 11:0 and y minus the byte at +0x9b in bits 27:16.
  It sets the pending flag at +0x99, and when bit 1 of the video format flags at +0x38 is set it subtracts 512 from a y above 512 first.
- `crime_present` in `crime.o`: answers the video driver's question whether the board exists. Established.
  The 40-byte routine at offset 0x58f4 returns -1 for any board number other than 0, and for board 0 returns 1 when the board table's record at +0x8 is set and 0 when it is not.
- `crime_video_info` in `crime.o`: fills a video-information record for the video driver. Established.
  It copies the three bytes at +0x28 to +0x2a of the channel's record to the output, adds 500 to the word at +0x40 and divides by 1000 for the fourth byte, and copies the halfwords at +0x3c and +0x3e.
  It then sets bit 1 of the flag halfword at +0x8 of the output from bit 1 of the record's flags at +0x38, and bit 0 once the board's mapped-GBE word at +0x88 is set.
- `crime_resync_sched` in `crime.o`: lets another driver register a video re-start callback. Established.
  It stores the callback pointer at +0x18 and its argument at +0x1c of the 64-byte slot for the channel number and returns 0.
- `crm_callvideo` in `crime.o`: calls the registered video re-start callback. Established.
  It checks the 64-byte slot for board 0, whose id word at +0x4 must equal the argument, and jumps through the pointer at +0x18 with the argument from +0x1c.
  `gbeRun` calls it after restarting the video timing, so the video driver learns of every re-start.

# Kernel routines, one entry each (`crime_init.o` and `crime_retrace.o`)

Each entry names one routine of the 6.5.30 `crime_init.o` or `crime_retrace.o` (members of `crime.a`), says what it does to GBE, the engine or the retrace machinery, and cites callees, offsets or sites, from `objdump -d -r` and the listings under `crime_kernel/disasm/`. Every entry carries a label.

## Chip probe and display start (`crime_init.o`)

- `gbeProbe` in `crime_init.o`: the GBE presence check and first set-up. Established.
  It loads the device-identification word at +0x14 of the register window and goes on only when it equals 0x666.
  It then stores 0x30000000 to the control word at +0x0 and, when bit 31 of the timing word at +0x10000 is set, stores 0 there to start the counters.
- `crimeProbe` in `crime_init.o`: the CRIME presence check. Established.
  It loads the identity doubleword at 0xb4000000, keeps the low byte and returns 0 for a high nibble other than 0xa or for exactly 0xa0.
  Any later revision of the family returns 1, which `crime_earlyinit` takes as success.
- `getNvramTiming` in `crime_init.o`: reads the monitor timing choice the PROM stored. Established.
  It looks the option up with `kopt_find` and returns the format number 9 when its first character is `h` or `H`, 4 when it is `l` or `L`, and 0 otherwise.
  The 29-instruction routine finds nothing when the option is absent and returns 0.
- `crimeInitInfo` in `crime_init.o`: fills the board information record from the chip. Established.
  It rewrites the GBE control word as the old clock select ORed with 0xaa000, reads the four strap bits and stores them at +0x28 with the chip revision at +0x2a.
  It then calls `getNvramTiming` for the monitor format, copies the name with `strncpy` and, for a flat-panel channel, reads the panel's EDID through `i2cfp_DMI2_KernelEDID`.
- `gbeSetTimingRegs` in `crime_init.o`: writes the video timing registers from a 0x30-byte timing record. Established.
  It computes the horizontal and vertical totals, sync, blank and pixel-enable windows into +0x10004 to +0x1004c, with the dot-clock word at +0x4.
  It calls `flushbus` after the stores and `i2cfp_DualChannelCommand` for the dual-channel option, and pauses with `us_delay` while the PLL settles.
- `gbeStartVideoTiming` in `crime_init.o`: releases the timing counters once the registers are written. Established.
  It clears bit 16 of CRIME's hardware-interrupt register (mask 0xfffeffff) through `flushbus`, pulses the FIFO reset bits 13 and 15 of the overlay and frame width words, and writes the pixel-enable windows last.
  It waits with `us_delay` before clearing the freeze bit of the counter at +0x10000.
- `crimeInitHW` in `crime_init.o`: the rendering-engine initialisation. Established.
  It writes 0 to +0x408, switches the cursor off through GBE +0x70004 and sets the interface-buffer control word at +0x400 to 0x0fefff0a.
  It clears the three frame-buffer TLBs with `crmFifoWait` pauses, clears linear TLBs A and B and the texture TLB, then selects thresholds by the CPU module that `get_cpu_irr` reports.
  It finishes with `crmIdleWait`, the final control word and `flushbus`, and loads the gamma map with `gbeGmapInit`.
- `crmInitTp` in `crime_init.o`: prepares the kernel textport. Established.
  It programs window-ID entry 0 with the value 3 and translates the textport's buffers with `kvtophys`, writing them back with `dki_dcache_wb`.
  It loads the text colours and the cursor through GBE and waits with `crmIdleWait` and `us_delay` between the steps.
- `crmInvalidVideoTiming` in `crime_init.o`: validates the dot-clock fields of a user timing record. Established.
  It reads the halfwords at +0x28, +0x2a and +0x2c and accepts 1 to 256 for the multiplier, 1 to 64 for the divider and 0 to 3 for the post-scaler.
  It returns 0 for a valid record and 1 otherwise.
- `crime_setvideotiming` in `crime_init.o`: the kernel side of loading a timing record, ioctl 0x55f6. Established.
  It rejects format id 13 unless the board's flag byte at +0x98 has bit 1 set, sends custom records through `crmInvalidVideoTiming` and reapplies the information with `crimeInitInfo`.
  When the frame size changed it resizes the frame buffer with `crmResizeFb` and restarts video with `gbeRun`, logging a failure through `cmn_err`.
- `gbeGmapInit` in `crime_init.o`: loads the gamma map. Established.
  When a driver flag is non-zero it writes 256 entries at +0x60000 from a 256-byte table in the object's data, each byte replicated into the three colour bytes.
  When the flag is clear it writes a linear ramp whose step is 0x01010100.
- `gbeRun` in `crime_init.o`: the single entry that starts video. Established.
  It loads the tile lists with `crmLoadGbelists`, caches the vertical timing with `gbeCacheVtInfo` and writes the timing registers with `gbeSetTimingRegs`.
  It then calls `gbeStartVideoTiming` and `crm_callvideo`, and on the stop path calls `gbeStop` first.
- `gbeStop` in `crime_init.o`: stops the display. Established.
  It saves the three DMA control words, clears their enable bits, waits up to 20000 times 10 microseconds with `us_delay` for the live copies to follow, and calls `flushbus` after each store.
  `gbeCacheVtInfo` refreshes the cached timing values before the DMA enables are touched.

## Retrace and swap scheduling (`crime_retrace.o`)

- `crimeRetraceInit` in `crime_retrace.o`: allocates the retrace state at board start. Established.
  It takes the memory with `kern_malloc`, clears it with `bzero` and initialises the mutex with `init_mutex`.
- `gbeCacheVtInfo` in `crime_retrace.o`: computes the two interrupt lines of the current video mode. Established.
  It puts the pre-blank line 32 before vertical blank and the retrace line 4 after it, and stores them in the cache under the retrace mutex.
  The lines go to the interrupt register `+0x10020` through `flushbus`, written twice for the two latch stages.
- `crmInitGbeData` in `crime_retrace.o`: builds the kernel's tables for GBE. Established.
  It clears the window-ID and display-ID tables with `bzero` and gets the physical addresses of its blocks with `kvtophys`.
  The first of the three display-ID tables is selected for the screen.
- `crmLoadGbelists` in `crime_retrace.o`: writes the tile lists that GBE reads. Established.
  It copies the frame, overlay and display-ID tile pointers into the GBE-visible block with `bcopy` and sets the three DMA control words.
  Each entry is the 16-bit tile number of a 64 KiB tile, in a list at most 13 bits wide.
- `crimeBlankscreen` in `crime_retrace.o`: the kernel side of ioctl 0x5610. Established.
  It stores the argument in byte +0x19 of the state record at board offset +0x8c.
  Unless a driver flag is zero or the panel byte at +0x2e equals 132, it stores a flat-panel vertical drive word to GBE +0x1002c: argument 2 gives 0xfff001, any other value a word built from the halfword at +0xe of the timing record.
- `crime_retrace_callback` in `crime_retrace.o`: registers a retrace callback for another driver. Established.
  The 16-byte routine at offset 0xb70 stores its second and third arguments in two kernel globals and returns 0, with no call.
- `crimeRetraceHandler` in `crime_retrace.o`: the handler of GBE line 0, the retrace interrupt. Established.
  It clears bit 16 of CRIME's hardware-interrupt register, validates swaps with `rrmValidateBuffer` and `rrmValidateRetrace`, and notifies video-sync waiters with `rrmValidateVideoSync`.
  It rewrites the window-ID buffer bits for a swap, calls `crime_i2cFpGbeRetrace` for a pending panel change and reports a finished swap through `rrmValidateMGRSwapBuf`.
- `crime_i2cFpGbeRetrace` in `crime_retrace.o`: carries out a flat-panel switch that was scheduled for retrace. Established.
  It reads the request word that `crimeRetraceHandler` passes from +0x344: request 2 loads a linear ramp into the gamma map at +0x60000 and clears a driver flag.
  Request 1 loads a 256-byte table into the same map and sets the flag, and either request clears the word.
- `crime_FpSchedForRetrace` in `crime_retrace.o`: records a flat-panel on or off request. Established.
  It clears the word at +0x344 of the retrace record, then stores 2 for an on request when the panel state byte at +0x28 is zero.
  An off request stores 1 only when that state byte is non-zero.
- `crimePreblankHandler` in `crime_retrace.o`: the handler of GBE line 1, the pre-blank interrupt. Established.
  It clears bit 17 of CRIME's hardware-interrupt register and then maps and unmaps tiles with `tile_mapin` and `tile_mapout`.
  It stamps results with `crmNextIncarnation`, copies with `bcopy`, and takes the swap lock with `mrtryaccess` and `mrunlock`.
- `crm_copy_swap_boxes` in `crime_retrace.o`: copies the window rectangles of a buffer swap with the transfer engine. Established.
  It waits for room with `crmFifoWait` and writes the source corners at +0x3020 and +0x3028 and the destination at +0x3030 and +0x3038 for each swap box.
- `crmSwapBufd` in `crime_retrace.o`: the swap daemon, which carries out queued swaps outside interrupt context. Established.
  It sleeps on a semaphore from `init_sema`, reloads the TLBs with `crmLoadTlbABC` and copies with `crm_copy_swap_boxes`.
  It waits for idle with `crmIdleWait` and reports completion through `rrmValidateMGRSwapBuf`.
- `crimeSchedSwapBuf` in `crime_retrace.o`: queues a buffer swap for a window slot. Established.
  It uses slot 0 to 31 of the 0x18-byte records at board offset +0x8c, setting the state byte at +0x39 and the retrace count at +0x30.
  It takes the lock with `mutex_lock` and logs a bad slot through `cmn_err`.
- `crimeUnSchedSwapBuf` in `crime_retrace.o`: the kernel side of ioctl 0x560a. Established.
  It removes a queued swap under the retrace mutex and invalidates the render node with `rrmInvalidateRN`.
  It then calls `rrmDoUnMapGfx` so the next access validates again.
- `crimeSchedMgrSwapBuf` in `crime_retrace.o`: queues a swap for the swap manager's own list. Established.
  It first asks `RRM_CheckValidFault` for the fault state and then records the swap under the mutex, logging a bad request through `cmn_err`.
- `crimeSchedRetraceEvent` in `crime_retrace.o`: appends a retrace-event record to the board's list. Established.
  The head is at +0x340 and the link word of a record at +0x24, appended under the mutex at +0x348 unless the record is already on the list.
- `crimeRetraceCloseRN` in `crime_retrace.o`: removes a closing render node's queued swaps and events. Established.
  It walks the lists under `mutex_lock` and unlinks every record owned by the node in 83 instructions.
- `crmRetraceCloseAllRn` in `crime_retrace.o`: the same removal for all render nodes at once. Established.
  It clears the lists with `bzero` under `mutex_lock` and cancels the pending timeout with `untimeout`.
- `crimeSetDisplayMode` in `crime_retrace.o`: the kernel side of ioctl 0x55f4, which writes one window-ID entry. Established.
  It returns -22 unless the index is 0 to 31, clears bit 10 of the value when a driver flag is set, and stores it at +0x48000 plus four times the index.
  The same value goes into the 24-byte slot of the state record at offset +0x24, and byte +0x3a of the slot is set when the low two bits are zero.
- `crimeSetGammaRamp` in `crime_retrace.o`: the kernel side of ioctl 0x55f5, which loads the gamma map. Established.
  It reads the red, green and blue bytes from three 256-byte planes of the request and passes each through a 256-byte lookup table.
  It packs the results as red in bits 31:24, green in 23:16 and blue in 15:8 into the 256 entries at +0x60000.
- `crmFindFreeDidTbl` in `crime_retrace.o`: the kernel side of ioctl 0x55fd. Established.
  It searches the three display-ID tables under `mutex_lock` for an unused one and returns its index.
- `crime_hli_handler` in `crime_retrace.o`: the dispatcher for GBE lines 2 and 3, at offset 0x2a64. Established.
  It calls every request on the line's chain, then moves pending requests onto the hardware line and rewrites the line field of the interrupt register at +0x10024.
  It ends by clearing bit 16 plus the line number of CRIME's hardware-interrupt register.
- `crime_schedule_hli` in `crime_retrace.o`: places a line request on a hardware line, at offset 0x2c70. Established.
  It tries line 2 then line 3, programs a free line at once, joins a busy line within three lines, and else queues the request pending.
- `crime_hli_sched` in `crime_retrace.o`: adds a line request, at offset 0x2e1c. Established.
  It allocates a 24-byte record with `kern_malloc`, gives it the next id from +0x324 and adds 40 to the line when relative, then calls `crime_schedule_hli`.
- `crime_hli_unsched` in `crime_retrace.o`: removes a line request by id, at offset 0x2ee0. Established.
  It frees the record with `kern_free` and parks an emptied hardware line at 0xfff; an id that is not on any chain returns 6.
- `crime_hli_update` in `crime_retrace.o`: moves a request to a new line and span, at offset 0x3048. Established.
  It unlinks the request, stores the line and span and schedules it again with `crime_schedule_hli`; a request alone on its chain is never matched and returns 6.
- `crm_getustmsc` in `crime_retrace.o`: fills a retrace-synchronised time stamp record. Established.
  It reads the system time with `update_ust` and `get_ust_nano` at raised priority from `splprof`, with the line count from bits 23:12 of the timing word at +0x10000.
  It corrects the time by the fraction of the frame the beam has covered.
- `crime_getustmsc` in `crime_retrace.o`: the entry the video driver imports. Established.
  It takes a channel number and a record, finds the board in a 64-byte slot table and calls `crm_getustmsc` with the register pointer at +0x80 and the state at +0x8c.
- `crimeFrameInfo` in `crime_retrace.o`: fills the 32-byte record for ioctl 0x560c. Established.
  It sets byte 26 when the caller's swap slot is active and byte 27 from the client's object, under `mutex_lock`, and fills the rest through `crm_getustmsc`.

# Kernel routines, one entry each (`crime_tp.o`, `crime_tiles.o` and the smaller objects)

Each entry names one routine of the 6.5.30 `crime_tp.o`, `crime_tiles.o`, `crime_dma.o`, `crime_zbuf.o`, `crime_db.o` or `crime_debug.o` (members of `crime.a`), says what it does to the engine or the tile pool, and cites callees or offsets, from `objdump -d -r` and `crime_kernel/disasm/`. Every entry carries a label.

## Kernel textport (`crime_tp.o`)

- `crime_color` in `crime_tp.o`: sets the textport's current drawing colour. Established.
  The 44-byte routine at offset 0x0 takes the colour index plus one, capped at 255, replicates that byte into all four bytes of a word and stores it in the object's data.
  `crime_sboxfi` and `crime_pnt2i` take their foreground colour from that word.
- `crime_mapcolor` in `crime_tp.o`: writes one colour-map entry for the textport. Established.
  It polls the free count in bits 5:0 of the colour-map FIFO at +0x58000 and pauses 1 microsecond with `us_delay` per poll, then stores red, green and blue as `r << 24 | g << 16 | b << 8`.
  The store goes to the overlay-group entry at +0x54404 plus four times the index, which is map entry 0x1101 plus the index.
- `crime_sboxfi` in `crime_tp.o`: fills a rectangle with the current colour. Established.
  It waits for seven free FIFO entries with `crmFifoWait`, writes DrawMode 0x2f8 and the foreground colour at +0x20d0, and picks Primitive 0x03020000, or 0x03000000 when the end lies before the start.
  It writes the vertex pair at +0x2070 and the Primitive through the start alias, flushes at +0x21f8 and waits with `crmIdleWait`.
- `crime_pnt2i` in `crime_tp.o`: draws a single pixel. Established.
  It waits with `crmFifoWait` as the box fill does, writes Primitive 0x0 and the vertex as one 32-bit word, then waits with `crmIdleWait`.
- `crime_cmov2i` in `crime_tp.o`: stores the textport's current raster position. Established.
  The 20-byte routine at offset 0x2b0 saves its x and y arguments into two adjacent words of the object's data and makes no call.
- `crime_drawbitmap` in `crime_tp.o`: draws one glyph bitmap at the raster position, the textport's character routine. Established.
  It waits for FIFO room with `crmFifoWait` and writes the stipple mode at +0x20c0 and pattern at +0x20c4 with the vertex pair, row by row.
  The 1664-byte body at offset 0x2c4 is unrolled for the glyph rows and ends in `crmIdleWait`.
- `crime_unblank` in `crime_tp.o`: turns the picture back on for the textport. Established.
  Its only call is `gbeBlankScreen`, made from 52 bytes at offset 0x944.
- `crime_getdesc` in `crime_tp.o`: answers a descriptor query from the console layer. Established.
  The 24-byte routine at offset 0x978 returns 1 for descriptor number 1 and 0 for any other number.
- `crime_positioncursor` in `crime_tp.o`: moves the hardware cursor for the textport. Established.
  It writes GBE +0x70000 with x in bits 11:0 and y in bits 27:16 in 44 bytes at offset 0x990 and returns 0.
- `crime_clearfb` in `crime_tp.o`: clears the screen for the textport. Established.
  It zeroes the shadow record with `bzero`, takes the screen size from the halfwords at +0x20 and +0x22 of the information record and sets colour 0 to black with `crime_mapcolor`.
  It waits with `crmIdleWait` and loads window offsets 0, ClipMode 0x21, LogicOp 3 and both BufMode words 0x800, then fills the whole screen with `crime_sboxfi`.
- `crime_tpinit` in `crime_tp.o`: loads the hardware cursor before the textport first blanks the screen. Established.
  It stores colour 1 0xffffff00 and colour 2 0xff000000, position 0 and the glyph words, then control 1.
  It then calls `gbeBlankScreen` and waits for the engine with `crmIdleWait`.

## Tile allocation (`crime_tiles.o`)

- `crime_tileaddr_for_vice` in `crime_tiles.o`: converts packed tile coordinates to tile numbers for the video engine. Established.
  It treats each 16-bit entry as a column in bits 3:0 and a row in bits 15:4 and looks the tile up in the drawable's table.
  The 260-byte routine at offset 0x0 returns 19 for an id with no drawable, 22 for a coordinate outside the grid and 14 for an unallocated tile, and makes no call.
- `crm_get_dms_tiles` in `crime_tiles.o`: takes tiles from the dynamic memory service for video import. Established.
  It opens a block with `dms_open`, reads its description with `dms_block_info` and its tile list with `dms_block_get_tile_list`.
  A request to release closes it with `dms_close`, and `dms_block_start_dma` starts the transfer into the tiles.
- `crm_tileclassinit` in `crime_tiles.o`: sets up the per-class tile masks. Established.
  It asks the memory system for the number of tile classes with `tile_nclasses`, and with two classes the masks are the fixed values 1 and 2.
- `crmAllocTiles` in `crime_tiles.o`: allocates the tiles for a chunk. Established.
  It allocates a scratch array with `kern_malloc`, takes the tiles from `tile_alloc` in the chunk's class and stores each page frame shifted right by 4 as a 16-bit tile number.
  The scratch array is released with `kern_free` afterwards.
- `crmFreeTiles` in `crime_tiles.o`: returns tiles to the pool. Established.
  It multiplies each 16-bit tile number by 16 to get page frames, drains the FIFO with `crmFifoWait` when the calling thread owns the graphics context, and frees the pages with `tile_free`.
  It then subtracts the count from the two usage totals.
- `crmFreeChunk` in `crime_tiles.o`: releases a chunk's tiles and clears its record. Established.
  It zeroes the incarnation with `bzero`, returns pinned dynamic-memory tiles through `crm_get_dms_tiles` with an empty record and frees ordinary tiles with `crmFreeTiles`.
- `crmAllocChunk` in `crime_tiles.o`: fills a chunk record and allocates its tiles. Established.
  It calls `crmAllocTiles` when the count is non-zero, stamps the incarnation with `crmNextIncarnation` and adds the count to the global and per-class totals.
  It returns 0 on success.
- `resizechunk` in `crime_tiles.o`: builds a tile table for a new grid size after a window resize. Established.
  It allocates the new table with `kern_malloc`, copies the old entries with `bcopy` and stamps a new incarnation through `crmNextIncarnation`.
  The old table is released with `kern_free`.
- `crmResizeFb` in `crime_tiles.o`: applies a resize to the frame buffer's chunks. Established.
  It rebuilds each table with `resizechunk` and allocates the extra tiles with `crmAllocTiles` for the added rows and columns.
- `crmAllocBackbuffer` in `crime_tiles.o`: allocates the tiles of a window's back buffer. Established.
  It supports 16-bit and 32-bit pixels only, uses class 3 through `crmAllocChunk` and also allocates a private 512-byte tile table with `kern_malloc`.
- `crmAllocPbuffer` in `crime_tiles.o`: computes the tile grid of a pixel buffer. Established.
  It supports 8-bit, 16-bit and 32-bit pixels in class 0 and fills the chunk through `crmAllocChunk` without allocating any tiles.
- `crmAllocPbufTiles` in `crime_tiles.o`: allocates the table and tiles of a pixel buffer. Established.
  It allocates class 8 through `crmAllocChunk` or, for the second form, marks the chunk as pinned dynamic-memory tiles in class 9.
  It clears the table with `bzero` and frees scratch memory with `kern_free`.
- `crmDestroyPbuffer` in `crime_tiles.o`: frees a pixel buffer's chunks. Established.
  It holds the owner's semaphore with `psema` and `vsema` around `crmFreeChunk`, and reports an inconsistent state through `cmn_err`.
- `crmAllocFrameBuffer` in `crime_tiles.o`: allocates the tiles of a window's colour buffer. Established.
  Columns are the width rounded up by the pixels in a 512-byte tile row for the pixel size, rows are the height rounded up to 128, and it uses class 2 through `crmAllocChunk`.
- `crmAllocOverlayBuffer` in `crime_tiles.o`: allocates the 8-bit overlay. Established.
  It uses 512 pixels per tile row at one byte per pixel and class 5, through `crmAllocChunk`.
- `crmAllocCid` in `crime_tiles.o`: allocates the clip-ID buffer. Established.
  It takes one tile per 128 rows, or a fixed set of 16 when its first argument is 0x500, through `crmAllocChunk`, and clears the table with `bzero`.
- `crmAllocGbeTables` in `crime_tiles.o`: allocates the chunk that holds the display back end's tile lists. Established.
  Its 11 instructions make one call to `crmAllocChunk` for the block that `crmInitGbeData` fills.
- `crmAllocZbuffer` in `crime_tiles.o`: creates a drawable's depth-buffer record. Established.
  It allocates a 0x28-byte chunk with a 512-byte table through `kern_malloc` and `crmAllocChunk`, class 4 or 8 when its first argument is set, with four bytes per pixel.
- `crmAllocTex` in `crime_tiles.o`: allocates texture memory for ioctl 0x5601. Established.
  It allocates the texture record with `kern_malloc` and `bzero`, takes tiles through `crmAllocChunk` or `crm_get_dms_tiles`, and maps them for the client with `crmMapChunk`.
  The texture lock comes from `psema` and `vsema`.
- `crmFreeTex` in `crime_tiles.o`: frees a texture and its lock. Established.
  It releases the chunks with `crmFreeChunk`, unmaps them with `crmUnmapChunk` and frees the lock with `freesema` and `kmem_free`.
- `crmDeallocTex` in `crime_tiles.o`: the kernel side of ioctl 0x5602. Established.
  It frees the texture memory that `crmAllocTex` made under `psema`, unmapping with `crmUnmapChunk` and releasing with `crmFreeChunk`.
- `crmDefineTex` in `crime_tiles.o`: defines a texture and builds its TLB image for ioctl 0x5603. Established.
  It allocates the image with `kmem_alloc` and `bzero`, fills the level start table that `crmLoadTexTlb` writes, and allocates tiles with `crmAllocTex`.
  `RRM_CheckValidFault` decides whether the engine has to be saved around the load.
- `crmLoadTexTlb` in `crime_tiles.o`: writes the texture TLB. Established.
  The 100-byte routine at offset 0x1d28 writes all 28 doublewords from the texture's image on every bind and makes no call.
- `crmMapPages` in `crime_tiles.o`: maps kernel pages into a client. Established.
  It creates the region with `crmCreateRegion` and maps the pages under `ddv_lock` with `ddv_mappages`, undoing the mapping with `gfxdd_munmap` on failure.
- `crmUnmapPages` in `crime_tiles.o`: removes a page mapping. Established.
  Its only call is `gfxdd_munmap`, made from 12 instructions at offset 0x1e24.
- `crmMapChunk` in `crime_tiles.o`: maps a chunk's tiles into the client. Established.
  It flattens the table with `crm_update_sz_tiles`, creates a region with `crmCreateRegion` and maps the frames with `ddv_mappfns`.
  It undoes the mapping with `gfxdd_munmap` and returns the address from `ddv_getaddr`.
- `crmCreateRegion` in `crime_tiles.o`: creates the user memory region for a mapping. Established.
  Its only call is `gfxdd_mmap_mem`.
- `crm_update_sz_tiles` in `crime_tiles.o`: flattens a chunk's tile table. Established.
  The 132-byte routine at offset 0x2018 copies the non-zero entries, at most 256, into a flat array and returns the count, without any call.
- `crm_tile_list` in `crime_tiles.o`: returns a chunk's tile numbers as a flat array. Established.
  It uses `crm_update_sz_tiles` for a sparse chunk (flag bit 0) and a straight copy for the others.
- `crmUnmapChunk` in `crime_tiles.o`: removes a chunk mapping. Established.
  Its only call is `gfxdd_munmap`, in 12 instructions.
- `crmValidateDrawable` in `crime_tiles.o`: loads the TLBs for the drawable of the incoming client. Established.
  It calls `crmLoadTlbABC` for the frame-buffer tables and `crmLoadTexTlb` when the drawable has a texture, with the linear tables copied in its own loop.
- `crmLoadTlbABC` in `crime_tiles.o`: loads the three frame-buffer TLBs from a drawable. Established.
  It copies a ready 64-bit image or builds one from the tile list and rectangle, writing 64 registers at each of +0x1000, +0x1200 and +0x1400.
- `crmLoadCidTlb` in `crime_tiles.o`: loads the colour-index TLB. Established.
  It packs up to 16 entries into the four registers at +0x16e0 and ends with a write of 0 to +0x4008.

## Pixel transfer and buffer clear (`crime_dma.o`)

- `crm_curproc_vtop` in `crime_dma.o`: translates a user address of the current process to a physical frame. Established.
  Its only call is `curproc_vtop`, and the 128-byte routine at offset 0x0 is used for every page of a pinned buffer.
- `crmpixdma` in `crime_dma.o`: the register sequence for one pixel-DMA request when the caller owns the engine. Established.
  It converts the coordinates, loads the linear TLB through `loadLinearTlb` and writes the transfer source, destination and step registers.
- `crimePixelDma` in `crime_dma.o`: the kernel side of ioctl 0x55f2. Established.
  It pins the user buffer with `fast_userdma`, translates it with `crm_curproc_vtop` and runs the transfer through `crmpixdma`.
  It waits with `crmIdleWait`, unpins with `fast_undma` and reports a hang through `crimeError`.
- `loadLinearTlb` in `crime_dma.o`: writes one linear TLB from a table of page frames. Established.
  The 264-byte routine at offset 0x6b4 places the even page in bits 63:32 and the odd page in bits 31:0 of register `(page >> 1) & 15` with bit 31 set in each entry.
- `crime_load_linear_tlb` in `crime_dma.o`: the kernel side of ioctl 0x5605. Established.
  It pins a user buffer with `fast_userdma`, clears a 0x80-byte shadow image with `bzero`, fills it per page and writes it with `loadLinearTlb`.
  Flag bit 6 commits through the start alias of +0x21f0 and waits with `crmIdleWait` before `fast_undma`.
- `crime_clear_buffer` in `crime_dma.o`: the kernel side of ioctl 0x5606, which clears a buffer with the transfer engine. Established.
  It starts one rectangle per step at +0x3018 and +0x3030 and ends with a write of 0 to +0x3078 and a wait with `crmIdleWait`.
  `RRM_CheckValidFault` decides whether the engine state must be saved first.

## Depth and back-buffer tile accounting

- `crmAddZ` in `crime_zbuf.o`: gives a drawable depth tiles. Established.
  It allocates the tiles of the covered area with `crmAllocTiles`, merges them into the drawable's depth record and stamps `crmNextIncarnation`.
  If the allocation fails it removes what it had added with `crmSubtractZ`.
- `crmSubtractZ` in `crime_zbuf.o`: frees depth tiles that no longer lie under any window. Established.
  It rebuilds the record with `kern_malloc`, releases the tiles with `crmFreeTiles` and restamps with `crmNextIncarnation`.
- `crmAddBackTiles` in `crime_db.o`: adds back-buffer tiles when a window grows or moves. Established.
  It allocates the new tiles with `crmAllocTiles` and restamps the record with `crmNextIncarnation`.
- `crmSubtractBackTiles` in `crime_db.o`: releases back-buffer tiles a window no longer covers. Established.
  It rebuilds the record with `kern_malloc`, frees tiles with `crmFreeTiles` and stamps `crmNextIncarnation`.
- `crmIsGlobalRegWrite` in `crime_debug.o`: classifies a saved register write. Established.
  It indexes a 128-byte table with `(offset >> 2) & 0x3ff` for offsets 0x2000 to 0x21ff and answers 1 for every other offset.
- `crmFindPP` in `crime_debug.o`: finds where the uncommitted writes begin. Established.
  It walks backward through the 64-entry ring and stops at an entry with bit 45 set or one that `crmIsGlobalRegWrite` calls global.

# Kernel routines, one entry each (`crime_i2c.o` and `mace.o`)

Each entry names one routine of the 6.5.30 `crime_i2c.o` (a member of `crime.a`) or `mace.o`, says what it does on the I2C buses behind GBE or on the MACE interrupt mask, and cites callees or offsets, from `objdump -d -r`. Every entry carries a label.

## Bus primitives (`crime_i2c.o`)

- `i2_start` in `crime_i2c.o`: generates an I2C start condition on one of the two GBE buses. Established.
  A selector of 1 picks the flat-panel register at GBE +0x10 and any other value the monitor register at +0x8.
  It writes 0, calls `i2_sync_clk`, then writes 1 and 3, reading each value back and pausing with `us_delay` for a time held in a kernel global.
- `i2_start_addr` in `crime_i2c.o`: a start condition followed by the address byte. Established.
  It calls `i2_start` and then `i2_sendbyte` with the address, and returns 1 when the second call reports success and 0 when it does not.
- `i2_stop` in `crime_i2c.o`: generates the stop condition on the selected bus. Inferred from its structure.
  Its 106 instructions write the bus register at +0x8 or +0x10 in several steps and call only `us_delay` between the writes.
- `i2_sync_clk` in `crime_i2c.o`: waits for the clock line of the selected bus to read high. Established.
  It polls bit 1 of the register at +0x8, or +0x10 for selector 1, up to 61 times with `us_delay` of 1 microsecond between reads.
  It returns 1 when the line rose and 0 on time-out, and `i2_start`, `i2_sendbyte` and `i2_master_recvbyte` all call it.
- `i2_sendbyte` in `crime_i2c.o`: sends one byte as bus master. Inferred from its structure.
  Its 311 instructions repeat a write to the bus register, a call to `i2_sync_clk` and a delay with `us_delay`, once for each bit.
- `i2_master_recvbyte` in `crime_i2c.o`: receives one byte as bus master. Inferred from its structure.
  Its 254 instructions pair reads of the bus register with calls to `i2_sync_clk` and `us_delay`, repeated for each bit.
- `i2_slave_recvbyte` in `crime_i2c.o`: receives one byte while the device drives the clock. Inferred from its structure.
  It raises the priority with `splprof`, waits on the bus lines with `i2_spin_for` for each bit and restores the level with `splx`.
- `i2_wait_for_bus` in `crime_i2c.o`: waits until the selected bus reads idle before a command. Established.
  It writes 0 to the bus register, then polls the inverted low two bits with `us_delay` of 100 microseconds per step, up to a count held in a kernel global.
- `i2_spin_for` in `crime_i2c.o`: polls the bus lines until they show a wanted value. Established.
  It reads the bus register of the selected bus at +0x8 or +0x10, inverts it and keeps the low two bits, and compares them under a mask with the wanted value.
  It stores the sampled byte through an optional pointer and returns 1 when the value was seen before the count ran out.
- `i2_wait_for_stop` in `crime_i2c.o`: waits for the master's stop condition after a slave read. Inferred from its call.
  Its only call is `i2_spin_for`, made in 39 instructions.
## Monitor identification (`crime_i2c.o`)

- `crime_i2cSetMonitor` in `crime_i2c.o`: selects which monitor channel the bus routines address. Established.
  It reads the 32-bit register whose address is its first argument, masks it with one kernel word and ORs in one of two other words chosen by its second argument.
  The 36-byte routine at offset 0x0 writes the result back and makes no call.
- `crime_i2cReset` in `crime_i2c.o`: returns the monitor bus to idle. Inferred from its structure.
  Its 149 instructions write the bus register several times with `us_delay` pauses between the writes and call nothing else.
- `crime_i2cFixupAfterErr` in `crime_i2c.o`: recovers the monitor bus after a failed transfer. Established from its calls.
  It waits with `us_delay` and then sends a stop condition with `i2_stop`.
- `crime_i2cfpFixupAfterErr` in `crime_i2c.o`: the same recovery for the flat-panel bus. Established from its calls.
  It waits with `us_delay` and then issues `i2_stop`, in 30 instructions.
- `crime_i2cProbe` in `crime_i2c.o`: reads the monitor identification block over DDC, the kernel side of ioctl 0x5607. Established.
  It takes the bus mutex with `mutex_lock`, selects the monitor with `crime_i2cSetMonitor` and clears the buffer with `bzero`.
  It then addresses the monitor with `i2_start` and `i2_sendbyte`, reads the bytes with `i2_master_recvbyte` and checks them with `crime_EdidCksum`.
- `crime_validate_ddc_data` in `crime_i2c.o`: accepts or rejects a monitor identification block. Established from its calls.
  It tests the block with `crime_i2cValidEdid`, asks `sgiEdid` whether the maker is the vendor's, applies `crmFixupSony24`, and copies the result with `bcopy`.
- `i2cfp_DMI2_FailedEDID` in `crime_i2c.o`: records that reading a channel's panel identification failed. Established.
  It stores 1 in the halfword at +0x32 of the channel's 8-byte table entry and clears the halfword at +0x1ec of the board information record.
- `crime_EdidCksum` in `crime_i2c.o`: computes the checksum of an identification block. Established.
  The 76-byte routine at offset 0x70c adds the 128 bytes of the block modulo 256 in a loop that takes two bytes per pass, and a valid block sums to 0.
- `crime_i2cValidEdid` in `crime_i2c.o`: checks an identification block's header. Established.
  It requires bytes 0 to 7 to be 00 ff ff ff ff ff ff 00, stores 1 in the halfword at +0x4 of the monitor record and returns 1 when the halfword at +0x6 is zero.
- `sgiEdid` in `crime_i2c.o`: tests the manufacturer code of an identification block. Established.
  The 56-byte routine at offset 0x7e8 returns 1 when byte 8 is 0x4c and byte 9 is 0xf8 or 0xe9, with no call.
- `crmFixupSony24` in `crime_i2c.o`: patches the identification block of one Sony 24-inch monitor model. Established.
  The 72-byte routine at offset 0x820 acts when bytes 10, 11 and 21 are 0, 1 and 0x30: it sets byte 11 to 0x11 and lowers the checksum byte at 127 by 16.
## Command channel (`crime_i2c.o`)

- `crime_copyin_cmd` in `crime_i2c.o`: copies a user's bus command into the kernel. Established from its call.
  Its only call is `copyin`, made in 45 instructions.
- `crime_i2c_cmd` in `crime_i2c.o`: the kernel side of ioctl 0x560b, the general I2C command. Established.
  It takes the bus mutex, copies the command with `crime_copyin_cmd` and sends the bytes with `i2_start` and `i2_sendbyte`.
  A device-specific command goes through `crime_Probe2AB` or `crime_2abCmdWrapper`, and the reply goes out with `copyout`.
- `crime_Probe2AB` in `crime_i2c.o`: detects the 2AB device on the monitor bus. Established.
  It resets the bus with `crime_i2cReset`, sends a command with `crime_2abSendCmd`, reads the reply with `crime_2abGetReply` and compares it with `strncmp`.
- `crime_2abCmdWrapper` in `crime_i2c.o`: sends a command to the 2AB device and collects the reply. Established.
  It calls `crime_2abSendCmd` and then `crime_2abGetReply`, with a `us_delay` pause for the device to answer.
- `crime_2abSendCmd` in `crime_i2c.o`: writes a command to the 2AB device. Established.
  It waits for the bus with `i2_wait_for_bus`, sends a start and the bytes with `i2_start` and `i2_sendbyte` and ends with `i2_stop`.
  A failed byte goes to `crime_i2cFixupAfterErr`.
- `crime_2abGetReply` in `crime_i2c.o`: reads a reply from the 2AB device as a bus slave. Established.
  It raises the priority with `splprof`, receives bytes with `i2_slave_recvbyte` and waits for the stop with `i2_wait_for_stop`.
  It restores the level with `splx` and recovers a failed transfer with `crime_i2cFixupAfterErr`.

## Flat-panel option board (`crime_i2c.o`)

- `crime_i2cFpProbe` in `crime_i2c.o`: identifies the flat panel and records it. Established.
  It reads the identification with `i2cfp_PanelID` and records the result in the hardware inventory with `add_to_inventory`.
  It updates an existing record through `find_inventory` and `replace_in_inventory`, and ends the transfer with `i2_stop`.
- `crime_i2cFpHotProbe` in `crime_i2c.o`: repeats the panel probe on a timer. Established.
  It calls `crime_i2cFpProbe` and, when the panel state changed, switches the panel on with `i2cfp_PanelOn` or schedules the change with `crime_FpSchedForRetrace`.
  It re-arms itself with `timeout` and logs through `cmn_err`.
- `i2cfp_PortRead` in `crime_i2c.o`: reads one byte from a device on the flat-panel bus. Established from its calls.
  It addresses the device with `i2_start_addr`, receives with `i2_master_recvbyte` and ends with `i2_stop`.
- `i2cfp_PortWrite` in `crime_i2c.o`: writes one byte to a device on the flat-panel bus. Established from its calls.
  It addresses the device with `i2_start_addr`, sends with `i2_sendbyte` and ends with `i2_stop`.
- `i2cfp_PanelID` in `crime_i2c.o`: reads the panel type. Established.
  It reads the port at bus address 0x70 with `i2cfp_PortRead`, and on success stores bits 7:5 of the byte through its output pointer and returns 1.
- `i2cfp_DualChannelProbe` in `crime_i2c.o`: probes the dual-channel option. Established.
  It reads the port at bus address 0x7e with `i2cfp_PortRead`, writes 0xff with `i2cfp_PortWrite` and reads bits 6:5 back.
- `i2cfp_DualChannelCommand` in `crime_i2c.o`: sends a command byte to the dual-channel option. Established.
  It writes its argument to the port at bus address 0x7e through `i2cfp_PortWrite`, in 10 instructions.
- `i2cfp_SetBit` in `crime_i2c.o`: switches one control line of the panel port. Established.
  It writes 0xef through `i2cfp_PortWrite` to bus address 0x70 and sets a driver flag to 1 for an on request.
  An off request writes 0xe7 there and clears the flag.
- `i2cfp_PanelOn` in `crime_i2c.o`: switches the flat panel on. Established.
  It reapplies the video timing with `crime_setvideotiming`, sets the control bits with `i2cfp_PortWrite` and `i2cfp_SetBit` and raises the backlight with `i2cfp_BlUp`.
  It also restores the audio controls with `i2cfp_AudioVolLeft`, `i2cfp_AudioVolRight` and the tone routines.
- `i2cfp_PanelOff` in `crime_i2c.o`: switches the flat panel off. Inferred from its structure.
  It makes reads through `i2cfp_PortRead` and writes through `i2cfp_PortWrite` in 45 instructions.
- `i2cfp_BlUp` in `crime_i2c.o`: raises the panel backlight. Inferred from its structure.
  Its only call is `i2cfp_PortWrite`, made in 91 instructions.
- `i2cfp_BlDown` in `crime_i2c.o`: lowers the panel backlight. Inferred from its structure.
  Its only call is `i2cfp_PortWrite`, made in 99 instructions.
- `i2cfp_AudioVolLeft` in `crime_i2c.o`: sets one audio control of the panel's chip over the bus. Inferred from its structure.
  Its 46 instructions call `i2_start_addr`, `i2_sendbyte` and `i2_stop` in that order.
- `i2cfp_AudioVolRight` in `crime_i2c.o`: sets a second audio control of the panel's chip. Inferred from its structure.
  Its 46 instructions are the same `i2_start_addr`, `i2_sendbyte`, `i2_stop` sequence at a different address in the object.
- `i2cfp_AudioBass` in `crime_i2c.o`: sets a third audio control of the panel's chip. Inferred from its structure.
  Another 46-instruction copy of the same three-call sequence, reached from `i2cfp_PanelOn`.
- `i2cfp_AudioTreble` in `crime_i2c.o`: sets a fourth audio control of the panel's chip. Inferred from its structure.
  The fourth 46-instruction copy of the three-call sequence, also reached from `i2cfp_PanelOn`.
- `i2cfp_AudioSwitch` in `crime_i2c.o`: sets a switch control of the panel's audio chip. Inferred from its structure.
  Its 52 instructions run the same `i2_start_addr`, `i2_sendbyte`, `i2_stop` sequence with six more instructions of set-up.
- `crime_i2cfp_command` in `crime_i2c.o`: the kernel side of ioctl 0x5213, the flat-panel command. Established from its calls.
  It reaches `i2cfp_PanelOn`, `i2cfp_PanelOff` and `i2cfp_SetBit`, and the audio and panel-controller routines, in 172 instructions.
- `i2cfp_DMI2_BkltWrapper` in `crime_i2c.o`: serves a user program's backlight request. Established.
  It copies the argument in with `copyin`, runs `i2cfp_DMI2_BkltFuncs` and returns the result with `copyout`.
- `i2cfp_DMI2_BkltFuncs` in `crime_i2c.o`: reads or writes the panel controller's backlight registers. Established.
  It addresses the controller with `i2_start_addr`, exchanges bytes with `i2_sendbyte` and `i2_master_recvbyte` and ends with `i2_stop`.
- `i2cfp_DMI2_SensorFuncs` in `crime_i2c.o`: serves a user program's sensor request. Established.
  It copies the request in and the result out, reads the sensor registers over the same bus, and logs a bad command with `cmn_err`.
- `i2cfp_DMI2_EnableSequel` in `crime_i2c.o`: runs the panel controller's enable sequence. Inferred from its structure.
  It makes one read with `i2cfp_PortRead` and one write with `i2cfp_PortWrite`, in 27 instructions.
- `i2cfp_DMI2_DisableSequel` in `crime_i2c.o`: runs the panel controller's disable sequence. Inferred from its structure.
  It makes one read with `i2cfp_PortRead` and one write with `i2cfp_PortWrite`, in 28 instructions.
- `i2cfp_DMI2_KernelEDID` in `crime_i2c.o`: reads the panel's identification block for the kernel's own use. Established.
  It takes the bus mutex, clears a buffer with `bzero`, reads the block with `i2_start`, `i2_sendbyte` and `i2_master_recvbyte` and checks it with `crime_EdidCksum`.
- `i2cfp_DMI2_EDIDFuncs` in `crime_i2c.o`: serves a user program's request to read or write the panel's identification block. Established.
  It copies the request in with `copyin`, takes the bus mutex and uses `i2cfp_PortRead`, `i2cfp_PortWrite` and the byte routines for the transfer.

## MACE interrupt mask (`mace.o`)

- `mace_mask_enable` in `mace.o`: sets interrupt-mask bits in MACE. Established.
  It raises the level with `spl7`, reads the 64-bit mask at 0xbf310018 with `pciio_pio_read64` and writes it back ORed with the argument through `pciio_pio_write64`.
- `mace_mask_disable` in `mace.o`: clears interrupt-mask bits in MACE. Established.
  It reads the mask with `pciio_pio_read64` under `spl7` and writes it back with the given bits cleared using `pciio_pio_write64`.
- `mace_mask_update` in `mace.o`: replaces the selected mask bits. Established.
  It reads the mask under `spl7`, keeps the bits its first argument does not select and ORs in the second argument, then writes it with `pciio_pio_write64`.
- `mace_mask_read` in `mace.o`: returns the current mask. Established.
  It reads the 64-bit register at 0xbf310018 with `pciio_pio_read64` under `spl7` and returns the value.
- `mace_mask_write` in `mace.o`: stores a whole new mask. Established.
  It writes its argument to the register at 0xbf310018 with `pciio_pio_write64` under `spl7`.
- `mace_stray` in `mace.o`: the handler for a MACE interrupt that has no registered source. Established.
  Its only call is `cmn_err`, at level 4, with the address of `intr` as an argument.
- `mace_tbl_init` in `mace.o`: initialises the table of MACE interrupt handlers. Established.
  It walks 10 slots of 56 bytes each, storing the address of `mace_stray` as the handler and clearing the other fields, with no call.
- `mace_is_thd` in `mace.o`: tells whether a source is served by an interrupt thread. Established.
  The 64-byte routine at offset 0x1ec returns 1 when any of bits 19:16 of its second argument is set and 0 otherwise, with no call.
- `setmaceisavector` in `mace.o`: installs a handler for one MACE bit. Established.
  It chooses a direct vector or a thread with `mace_is_thd` and `xthread_setup`, and ties the bit to the CRIME input through `setcrimevector`.
  It formats the thread's name with `sprintf` and calls `panic` for an input other than 4 or 5.
- `mace_intr` in `mace.o`: the common MACE interrupt entry. Inferred from its calls.
  It reads the 64-bit register with `pciio_pio_read64`, masks the source with `mace_mask_disable` and wakes the handler with `vsema`.
- `macevec_intrd_setup` in `mace.o`: prepares the interrupt thread for a MACE source. Inferred from its calls.
  It sets the thread's function with `xthread_set_func`, copies a name with `fetch_kname` and `strncpy`, and waits on `ipsema`.
- `macevec_intrd` in `mace.o`: the body of a MACE interrupt thread. Inferred from its call.
  Its 15 instructions call `ipsema` to sleep until the interrupt wakes the thread.

# Kernel routines, one entry each (`kernel.o`, CRIME and GBE users)

Each entry names one routine of the 6.5.30 base kernel object `kernel.o` that touches CRIME, GBE or the CRIME interrupt path, says what it does to the registers, and cites offsets or callees, from `objdump -d -r` and `crime_kernel/disasm/kernel/kernel.text.s`. Every entry carries a label.

## Start-up and revision

- `mlreset` in `kernel.o`: the machine-level reset run at start-up, a 672-byte routine at offset 0x8738. Established.
  It rewrites the CPU interface control register, a doubleword at +0x8, with the watchdog enable cleared and, for processor implementations from 0x23, the two SysAD bits set.
  It zeroes the interrupt status, enable and error registers and the watchdog at +0x30, and registers the handlers for inputs 28, 29, 21 and 20 with `setcrimevector`.
- `get_crimerev` in `kernel.o`: derives a revision code from the CRIME identity doubleword, a 96-byte routine at offset 0x11838. Established.
  A non-zero low nibble gives 17, an upper word of 1 gives 19 and any other non-zero upper word gives 20, cached in a kernel word after the first read.
- `__sysad_wbflush` in `kernel.o`: drains the CPU write buffer, a 16-byte routine at offset 0x13e0. Established.
  It executes `sync` and then loads the CRIME identity register at 0xb4000000, so the load completes only after earlier writes have left the processor.
- `flushbus` in `kernel.o`: forces earlier register writes out to CRIME, a 44-byte routine at offset 0x11ccc. Established.
  It loads the CPU interface control register at +0x8 and discards the value, which is the read-back ordering that `mlreset` and the GBE routines rely on.
- `add_ioboard` in `kernel.o`: resets the video engine and registers it with the hardware inventory, a 8-byte routine at offset 0x8160. Established.
  It writes 4 to the VICE register at 0xb700e014 and 0 to 0xb70001bc with `us_delay` of 10 microseconds after each, VICE being the 0x17000000 window.
  It then tests bit 31 of the CRIME interrupt status, the VICE line, and when it is set calls `add_to_inventory`.
## Bus-error probes

- `badaddr` in `kernel.o`: probes whether a physical address responds, a 312-byte routine at offset 0x14270. Established.
  It clears the CPU and memory error status at +0x48 and +0x250 and the MACE error register at 0xbf080004, sets a flag halfword at +194 of the current thread, and loads 1, 2, 4 or 8 bytes from the address.
  It then reads +0x8 as a barrier and tests +0x28 against mask 0x300080; a set bit sends it to the failure exit.
- `badaddr_val` in `kernel.o`: the same probe that also returns the loaded value, a 380-byte routine at offset 0x143a8. Established.
  It stores the 1, 2, 4 or 8 bytes read through its third argument, after the same clearing of the error registers, and calls `cmn_err` for any other width.
- `wbadaddr` in `kernel.o`: the write counterpart of the probe, a 356-byte routine at offset 0x14524. Established.
  It stores a zero of the requested width, 1, 2, 4 or 8 bytes, to the address instead of loading from it, and uses the same error-register clearing and checks as `badaddr`.
- `wbadaddr_val` in `kernel.o`: the write probe that takes a value, a 384-byte routine at offset 0x14688. Inferred from its structure.
  It shares the clearing and the +0x28 check of the other probes and calls `cmn_err` for a width other than 1, 2, 4 or 8.
- `earlybadaddr` in `kernel.o`: the probe used before the thread record exists, a 296-byte routine at offset 0x14808. Established.
  It clears the same error registers as `badaddr` but stores 9 in a kernel word where `badaddr` sets a flag halfword in the thread record.
  It keeps the same +0x28 test against 0x300080 after the load.
- `baerror` in `kernel.o`: the failure exit shared by the probes, a 100-byte routine at offset 0x149a8. Established.
  It clears +0x48 and +0x250 and the MACE register at 0xbf080004, restores the saved status register and clears the thread flag at +194 before it returns 1.
- `earlybaerror` in `kernel.o`: the failure exit of the early probe, a 88-byte routine at offset 0x14a0c. Established.
  It clears the same registers, restores the status register, stores 0 in the kernel word that `earlybadaddr` set to 9, and returns 1.
- `VEC_dbe` in `kernel.o`: the data bus error vector, a 132-byte routine at offset 0x1c2d4. Established.
  It copies +0x48, +0x40, +0x250, +0x258 and +0x58 into kernel globals, clears +0x250 and +0x48 and the MACE register, and jumps to `VEC_trap`.
- `VEC_ibe` in `kernel.o`: the instruction bus error vector, a 156-byte routine at offset 0x20dc0. Established.
  It takes the same register snapshot as the data vector, clears the same error registers and also jumps to `VEC_trap`.
- `dobuserr` in `kernel.o`: the entry that reports a bus error, a 60-byte routine at offset 0x102b0. Inferred from its structure.
  It calls one unnamed local routine, which the revision code of `get_crimerev` steers to `print_buserr_rev1` or `print_buserr_rev0`.
- `dobuserre` in `kernel.o`: the error-exit helper of the bus-error path, a 68-byte routine at offset 0x1026c. Established.
  It returns 0 when its third argument is 1, and otherwise reads the ECC syndrome at +0x260 and check bits at +0x268 into globals before calling an unnamed decoder.
- `print_buserr_rev1` in `kernel.o`: prints the CPU and memory error registers of revision 1 and later parts, a 272-byte routine at offset 0x102ec. Established.
  Its only call is `cmn_err`, with the status bits of tables 5-17 and 6-16 of the CRIME specification.
- `print_buserr_rev0` in `kernel.o`: prints the ten error bits of the revision-0 part, a 456-byte routine at offset 0x103fc. Established.
  It tests bits 0 to 9 of the status word and calls `cmn_err` at 0x104d0 and 0x10538; it does not call `vice_err`, `log_ecc_err`, `ecc_error_correction` or `print_buserr_rev1`.
## Memory and ECC

- `ecc_enable` in `kernel.o`: turns on ECC checking, a 84-byte routine at offset 0x920c. Established.
  It writes 1 to the memory control register at +0x200, but only when the kernel option consulted through `is_enabled` is set.
- `ecc_disable` in `kernel.o`: turns off ECC checking, a 12-byte routine at offset 0x9260. Established.
  It stores 0 to the memory control register at +0x200 and nothing else.
- `ecc_handler` in `kernel.o`: the correctable memory error handler, a 1368-byte routine at offset 0xd894. Established.
  It reads +0x48, +0x250, +0x40, +0x258 and +0x260 and calls `ecc_fixctag` and `ecc_fixcdata` for errors in the processor's caches.
  It also calls `timeout` and `kthread_get_pid`, and clears +0x48 once the error has been recorded.
- `ecc_error_correction` in `kernel.o`: rewrites the faulty memory word, a 160-byte routine at offset 0xff50. Established.
  It maps the physical address with `map_physaddr`, rewrites the memory with `scrub_memory` and clears +0x250 before it calls `unmap_physaddr`.
- `unmap_physaddr` in `kernel.o`: releases the temporary mapping and captures the error state, a 100-byte routine at offset 0xfea4. Established.
  It reads +0x48, +0x40, +0x250, +0x258, +0x58, +0x268 and +0x260 into globals, clears +0x48 and +0x250, and frees the TLB entry with `unmaptlb`.

## Interrupts and timers

- `VEC_int` in `kernel.o`: the interrupt vector, a 512-byte routine at offset 0x0. Established.
  It saves the interrupt enable register at +0x18 in the frame, installs the mask for the highest level from a table, and calls `intr`.
- `intr` in `kernel.o`: the generic interrupt dispatcher, a 588-byte routine at offset 0xa578. Established.
  It reads the CRIME interrupt status at +0x10 and runs the vectors in priority order, calling `splint` and `getcause` and logging with `log_tstamp_event`.
  It reads and writes the software interrupt register at +0x20 at its end.
- `setcrimevector` in `kernel.o`: registers a handler on a CRIME interrupt input, a 624-byte routine at offset 0xaaf8. Established.
  It rejects inputs above 32 and priorities above 5, then creates or joins a gang with `create_crimegang` and `join_crimegang`.
  It sets the level masks with `setsplmasks` and calls `crimevec_thread_setup` for a threaded handler.
- `crime_intr_enable` in `kernel.o`: enables one CRIME interrupt input, a 64-byte routine at offset 0xa248. Established.
  It raises the level with `spl7` and sets bit n of the level-0 mask in the table at -23880($zero), so the hardware mask changes on the next level change.
- `crime_intr_disable` in `kernel.o`: disables one CRIME interrupt input, a 68-byte routine at offset 0xa288. Established.
  It calls `spl7` to raise the level, clears bit n of the level-0 mask at address -23880, then calls `splx` with the level that `spl7` returned. It is 17 instructions.
- `synthclock` in `kernel.o`: raises the synthesised clock interrupt, a 220-byte routine at offset 0x9ff8. Inferred from its register use and calls.
  It reads and writes the software interrupt register at +0x20 under `spl7` and runs `clock` and `hwperf_intr`.
- `synthackkgclock` in `kernel.o`: acknowledges the synthesised clock interrupt, a 216-byte routine at offset 0xa0d4. Inferred from its register use.
  It reads and writes the software interrupt register at +0x20 under `spl7`.
- `crimegang` in `kernel.o`: the entry of a ganged interrupt, a 108-byte routine at offset 0xa1dc. Inferred from its size.
  Its 30 instructions run the handlers that `join_crimegang` chained on one input.
- `spl0` in `kernel.o`: drops to interrupt level 0, a 80-byte routine at offset 0xb1cc. Established.
  It stores the first entry of the mask table at -23880 into the interrupt enable register at +0x18 and writes 0 to the level word at -23840.
  It sets the interrupt-enable bits of the processor status register and returns the old level in bits 15:8 of the old status.
- `spl7` in `kernel.o`: raises to level 24, the highest software level, a 132-byte routine at offset 0xb38c. Established.
  It acts only when the level word at -23840 is below 24, then stores table entry 24 into +0x18 with the processor interrupt bit masked off.
  The old level comes back in bits 15:8 of the returned status.
- `splx` in `kernel.o`: restores a level saved by an earlier `spl` call, a 100-byte routine at offset 0xb450. Established.
  It takes the level from bits 15:8 of its argument, loads that level's processor status bits from a table at offset 3120 and its mask from the table at -23880.
  It stores the mask into +0x18 and the level into the word at -23840, then restores the argument as the status register.
- `splhi` in `kernel.o`: raises to level 8, a 132-byte routine at offset 0xb21c. Established.
  It acts only when the level word at -23840 is below 8, then stores table entry 8 into +0x18 and 8 into the level word.
  A call made at a higher level changes nothing and returns the current level.
- `splint` in `kernel.o`: sets the level given by its argument for the duration of an interrupt handler, a 72-byte routine at offset 0xb4b4. Established.
  It stores the table entry for that argument into +0x18 without testing the current level and records it in the word at -23840.
  It leaves the processor interrupt-enable bit set in the status register it returns.
- `splprof` in `kernel.o`: raises to level 16, the profiling-clock level, a 132-byte routine at offset 0xb308. Established.
  It acts only when the level word at -23840 is below 16, then stores table entry 16 into +0x18.
  It returns the old level in bits 15:8 of the status, like the other raising routines.
- `setkgvector` in `kernel.o`: registers the kernel-graphics handler, a 8-byte routine at offset 0xa7c4. Established.
  It stores its first argument in a kernel global at gp-32680 and does nothing else.
- `_cpuclkper100ticks` in `kernel.o`: calibrates the processor count register against the CRIME timer, a 172-byte routine at offset 0x140f8. Established.
  It stores 0 to the timer at +0x38, polls its sign-extended low word until it reaches 23496 and sums the count register over four passes.
- `_ticksper1024inst` in `kernel.o`: times a fixed instruction loop with the CRIME timer, a 56-byte routine at offset 0x140c0. Established.
  It reads +0x38 before and after a loop of 512 iterations, over two passes, and returns the difference.
- `delay_calibrate` in `kernel.o`: sets the microsecond delay loop count, a 132-byte routine at offset 0x141a4. Established.
  It measures a spin loop with two reads of +0x38, multiplies the difference by 15, divides by 100000 and stores the result in a kernel word.
- `absolute_rtc_current_time` in `kernel.o`: returns the free-running time, a 24-byte routine at offset 0x11820. Established.
  It loads the 64-bit CRIME timer at +0x38 and masks it to 32 bits.
- `query_cyclecntr` in `kernel.o`: reports the cycle counter's address and resolution, a 20-byte routine at offset 0x1180c. Established.
  It stores 15000 as the resolution and returns the address 0xb400003c of the timer's low word.
- `early_gbe_stop` in `kernel.o`: stops GBE before the kernel hands the machine back to the PROM, a 564-byte routine at offset 0x8504. Established.
  It clears the DMA enables at +0x30008, +0x20008 and +0x40004, bumps each shadow word by 32, waits up to 400000 reads, and writes 0x80000000 to +0x10000.
  It clears bit 20 of the dot-clock word at +0x4 last, with `flushbus` after each store.

<!-- rrm.o:begin -->
# Kernel routines, one entry each (`rrm.o`)

- `pane_gc` in `rrm.o`: refills the cache of free pane slot numbers, a 312-byte routine at offset 0x0. Established.
  It scans the 132-byte records of the pane table from a rotating start index and picks those whose use count (halfword +0x10) is zero.
  It stores up to 8 slot numbers into a halfword cache array.
- `bind_pane` in `rrm.o`: finds or creates the pane for a window key on a board, a 456-byte routine at offset 0x138. Established.
  It takes the pane table semaphore with `psema` at priority 25 and scans for a record whose key (+0x4) and board word (+0x3c) match.
  A new pane comes from the slot cache after `pane_gc` refills it; the use count at +0x10 is raised and the semaphore released with `vsema`.
- `unbind_pane` in `rrm.o`: drops one use of a pane, a 64-byte routine at offset 0x300. Established.
  It takes the pane table semaphore at priority 25 with `psema`, lowers the use count halfword at +0x10 by one and releases it with `vsema`.
- `clip2pane` in `rrm.o`: maps a window key and board to its pane, a 100-byte routine at offset 0x340. Established.
  It scans the pane table for a record with the key at +0x4 and the board word at +0x3c equal to the second argument's field +0x18.
  It returns the record address, or 0 when none matches.
- `pane_cleanup` in `rrm.o`: clears a pane when its window goes away, a 164-byte routine at offset 0x3a4. Established.
  It finds the pane with `clip2pane`, clears the key at +0x4 and the valid-mask bits 1, 3 and 6 of the halfword at +0xc under `splhi`.
  When a waiter bit is set it clears the owner at +0x2c, releases the validation semaphore at +0x24 and wakes the sleepers with `sv_signal`.
  A pane in a swap group is removed from it with `rrmSwapUnGroup`.
- `pane_setnullclip` in `rrm.o`: gives a pane the empty clip, a 72-byte routine at offset 0x448. Established.
  It calls the device method at +0x2c of the board's method table with the pane's clip descriptor at +0x40.
  It then sets valid-mask bits 0xca in the halfword at +0xc and adds one to the clip serial at +0x8.
- `pane_validmask` in `rrm.o`: returns a pane's valid mask, an 8-byte routine at offset 0x490. Established.
  It loads the halfword at +0xc of the pane and returns it.
- `invalidate_pane` in `rrm.o`: clears named bits from a pane's valid mask, a 132-byte routine at offset 0x498. Established.
  It finds the pane with `clip2pane`, adds bit 0x40 to the mask when the clip bit (0x2) is among those named, and clears them in the halfword at +0xc under `splhi`.
  It returns the old mask, or 0 when no pane exists.
- `invalidate_pane_buffer` in `rrm.o`: the same clearing for a buffer change, a 116-byte routine at offset 0x51c. Established.
  It finds the pane with `clip2pane`, adds bit 0x40 when bit 0x2 is named and clears the named bits in the halfword at +0xc under `splhi`.
  It returns 0.
- `validate_pane_clip` in `rrm.o`: takes a clip from the window system into a pane, a 472-byte routine at offset 0x590. Established.
  It finds the pane with `clip2pane`, allocates a 224-byte copy once with `kern_malloc` (stored at +0x5c) and copies up to 224 bytes of the caller's clip with `copyin`.
  It copies the descriptor into the pane, adds one to the clip serial at +0x8 and sets valid bits 0x2 and 0x40 under `splhi`.
  It wakes the clip waiters with `sv_signal` and releases the validation semaphore with `vsema`; an error path calls `cmn_err`.
- `validate_pane_swapbuf` in `rrm.o`: records a completed swap in a pane, a 152-byte routine at offset 0x768. Established.
  It finds the pane with `clip2pane`, stores the swap value at +0x14 and sets valid bit 0x8 in the halfword at +0xc under `splhi`.
  If a waiter bit 0x8 was set it clears it, wakes the sleepers with `sv_signal`, releases the validation semaphore with `vsema` and clears the owner at +0x2c.
- `validate_pane_buffer` in `rrm.o`: marks a pane's buffer valid, a 68-byte routine at offset 0x800. Established.
  It sets bit 0x4 in the halfword at +0xc under `splhi` and wakes every sleeper on the buffer variable at +0x34 with `sv_broadcast`.
- `validate_my_pane_buffer` in `rrm.o`: waits until a pane's buffer bit is valid, a 160-byte routine at offset 0x844. Established.
  It tests bit 0x4 of the requested mask against the halfword at +0xc under `splhi` and, when missing, sleeps with `sv_wait_sig` on +0x34.
  It brackets the sleep with `hold_nonfatalsig` and `release_nonfatalsig`, and returns -1 when a signal ends the wait.
- `validate_my_pane_resources` in `rrm.o`: brings a pane up to the mask a caller needs, a 1072-byte routine at offset 0x8e4. Established.
  It waits for the buffer with `validate_my_pane_buffer`, then for each missing clip or swap bit takes the validation semaphore at +0x24 with `cpsema`.
  When it must ask the window system for the part it sends `GfxMessage` with a code from 2129 to 2131 and sleeps interruptibly for the answer.
  A pane with a null clip is given the empty clip with `pane_setnullclip`.
- `init_panes` in `rrm.o`: sets up the pane table once, a 248-byte routine at offset 0xd14. Established.
  It initialises the table semaphore, and for every pane the validation semaphore (`init_sema`), two sleep variables (`init_sv`) and a spinlock (`spinlock_init`).
  Each pane's owner word is set to -1.
- `RRM_init_panes` in `rrm.o`: resets every pane of one board, a 212-byte routine at offset 0xe0c. Established.
  It clears the valid mask (+0xc), waiter mask (+0xe) and owner (+0x2c) of each pane whose board word at +0x3c matches.
  A held validation semaphore is released with `vsema` and a pane in a swap group leaves it through `rrmSwapUnGroup`.
- `RRM_init` in `rrm.o`: prepares the render node table at start-up, a 160-byte routine at offset 0xee0. Established.
  It marks node slots 1 up to the node limit free (byte +0x3a of each 116-byte record) and gives each a call semaphore with `init_sema`.
  It then calls `init_panes` and sets the pane count to the node limit.
- `RRM_Init` in `rrm.o`: prepares one board's state record, a 72-byte routine at offset 0xf80. Established.
  It initialises the spinlock at +0x1c with `spinlock_init` and the board semaphore at +0x20 with `init_sema`.
- `rrmDoUnMapGfx` in `rrm.o`: unmaps the graphics window of a device, a 100-byte routine at offset 0xfc8. Established.
  Under `splhi` it sets flag 0x10 in the device's word at +0x4, calls the board method at +0x34 and clears the flag again.
  The next access to the window then faults and is revalidated.
- `rrmUnMapGfx` in `rrm.o`: unmaps the graphics window for the calling thread, a 136-byte routine at offset 0x102c. Established.
  It acts only when the board provides the unmap method (+0x34) and the device is not private (flag 0x8 clear).
  It finds the thread with `curthreadhandle` and `gthread_find`, and calls `rrmDoUnMapGfx` under `splhi` when the thread has a device list.
- `rrmInvalidateRN` in `rrm.o`: clears named bits from a render node's valid mask, a 188-byte routine at offset 0x10b4. Established.
  When the device already owns the board (owner word +0x28 of the board record equal to the device) it clears the bits in the halfword at +0x6 of the node under `splhi`.
  Otherwise it takes the board semaphore at +0x20 with `psema` at priority 537, records the device as owner and waits with `us_delay` while the busy word at +0x3c is non-zero.
- `RRM_InvalidateRN` in `rrm.o`: the handler for the invalidate request of the resource manager, a 400-byte routine at offset 0x1170. Established.
  It checks the node number and mask it is given, clears pane parts with `invalidate_pane`, marks the buffer with `validate_pane_buffer` and clears the node's own bits with `rrmInvalidateRN`.
  A change to the resource mask forces the next access to fault through `rrmUnMapGfx`, and the result is returned to the caller with `copyout`.
- `rrmUnbindProcFromRN` in `rrm.o`: ends the current process's binding to a node, a 176-byte routine at offset 0x1300. Established.
  It looks the thread up with `curthreadhandle` and `gthread_find` and takes the device list writer lock (`GfxListWriterLock`) when the thread has one.
  It unmaps the graphics window with `rrmDoUnMapGfx` when the device is private, clears the board's current-node word at +0x28 and unlocks.
- `RRM_BindProcToRN` in `rrm.o`: binds the calling process to a render node, a 244-byte routine at offset 0x13b0. Established.
  It acts only for a private device (flag 0x8) and, when the device already has a different current node (+0x28), takes that node's call semaphore with `psema` at priority 25.
  The old node is destroyed with `rrmCloseRN` if it has no owner device left (word +0x2c zero), otherwise unbound with `rrmUnbindProcFromRN`; the semaphore is released with `vsema`.
  The new node gets the device at +0x30 and a busy byte of 1 at +0x3c, becomes the device's current node, and a held board semaphore is tested with `valusema`, yielding through `force_resched`.
- `RRM_BindRNToReadAndClip` in `rrm.o`: binds a render node to a draw window and a read window, a 776-byte routine at offset 0x14a4. Established.
  It finds or creates the panes for the two window keys with `bind_pane`, releases any old ones with `unbind_pane` and waits for the buffer with `validate_my_pane_buffer`.
  It stores the pane pointers in the node (+0x50 draw, +0x54 read), clears the node's valid bits for the changed part, and returns the clip serial with `copyout`.
- `RRM_BindRNToClip` in `rrm.o`: the single-window form of the bind, a 156-byte routine at offset 0x17ac. Established.
  It copies the caller's window key into a local record, calls `RRM_BindRNToReadAndClip` with no read window and, when the device is private (flag 0x8), copies a 12-byte answer back.
  Any failure of the copy returns error 14.
- `RRM_UnbindRNFromClip` in `rrm.o`: unbinds a window from a node, a 36-byte routine at offset 0x1848. Established.
  It calls `pane_cleanup` with the window key at +0x4 of its request and returns 0.
- `RRM_OpenRN` in `rrm.o`: allocates a render node for a device, a 736-byte routine at offset 0x186c. Established.
  Under the node table semaphore (`psema`, priority 25) it finds a free 116-byte slot, zeroes it with `bzero` and sets its owner device at +0x2c and its context number at +0x38 to -1.
  It creates the node's sleep variable (`init_sv`) and spinlock (`spinlock_init`), waits for the board with `us_delay`, and returns the node number.
- `rrmCloseRN` in `rrm.o`: destroys one render node, a 796-byte routine at offset 0x1b4c. Established.
  It waits for ownership of the board (`psema`, `us_delay` while busy), unbinds the node's two panes with `unbind_pane` and bumps the generation count at +0x0 under `splhi`.
  It then destroys the node's sleep variable and spinlock (`sv_destroy`, `spinlock_destroy`), marks the slot free at +0x3a and frees any attached memory with `kern_free`.
- `RRM_CloseRN` in `rrm.o`: the request handler for closing a node, a 32-byte routine at offset 0x1e68. Established.
  It calls `rrmCloseRN` and returns 0.
- `RRM_Exit` in `rrm.o`: closes every node a device owns when the device closes, a 600-byte routine at offset 0x1e88. Established.
  It walks the node table up to the node limit, and for each node whose owner (+0x2c) is the device takes its call semaphore (`psema`, priority 25) and calls `rrmCloseRN`.
  It unbinds the process with `rrmUnbindProcFromRN` when a node was current and releases the semaphores with `vsema`.
- `rrmGetResourceMask` in `rrm.o`: returns a node's requested resource mask, an 8-byte routine at offset 0x20e0. Established.
  It loads the halfword at +0x4 of the node and returns it.
- `rrmSetResourceMask` in `rrm.o`: changes a node's requested resource mask, a 164-byte routine at offset 0x28cc. Established.
  Under `splhi` it reads the old mask (+0x4) and the valid bits (+0x6), adding the pane's valid mask from `pane_validmask` when the clip is requested.
  When a newly requested part is not valid it calls `rrmUnMapGfx` so the next access faults; it then stores the new mask at +0x4.
- `rrmSuspend` in `rrm.o`: stops every graphics device of the calling thread, a 936-byte routine at offset 0x20e8. Established.
  It finds the thread with `gthread_find` and walks its device list under the reader lock, `GfxListReaderLock`.
  For each device it calls the board's suspend method at +0x58, takes ownership of the board under `splhi` and records the device's counts at +0x28.
- `rrmResume` in `rrm.o`: restarts the devices that `rrmSuspend` stopped, a 1084-byte routine at offset 0x2490. Established.
  It walks the thread's device list under `GfxListReaderLock` and calls the board's resume method at +0x5c for each.
  It unmaps the graphics window with `rrmDoUnMapGfx`, takes the board without sleeping with `cpsema` and restores the device flags.
- `RRM_ValidateSwapBuf` in `rrm.o`: the request that records a finished swap, a 72-byte routine at offset 0x2970. Established.
  It calls `RRM_CheckValidFault` first and returns error 14 when that fails.
  Otherwise it passes the window key at +0x4 and the swap value at +0x8 of the request to `validate_pane_swapbuf`.
- `rrmValidateBuffer` in `rrm.o`: marks a node's pane buffer valid and sets its swap due count, a 68-byte routine at offset 0x29b8. Established.
  When the board keeps a retrace counter (state word +0x60) it stores the counter at +0x64 plus the pane's swap interval (+0x18) into the pane's due count at +0x1c.
  It then calls `validate_pane_buffer` for the node's draw pane at +0x50.
- `RRM_ValidateMessage` in `rrm.o`: the request that answers a validation message from the window system, an 84-byte routine at offset 0x29fc. Established.
  It briefly raises and restores the level (`splhi`, `splx`), reads the mask halfword at +0x6 of the node and tests bit 0x20.
  It calls `rrmValidateBuffer` for the node and returns 22 or 0 by that test.
- `RRM_SetDisplayMode` in `rrm.o`: the request that selects a display mode, a 200-byte routine at offset 0x2a50. Established.
  It runs `RRM_CheckValidFault` and returns 14 on failure, then builds a message with type 11 (type 139 for a private device) carrying the mode number at +0x10 of the node and the request's two words.
  It sends it with `GfxMessage`, clears pane bit 8 with `invalidate_pane` and unmaps the window with `rrmUnMapGfx`.
- `RRM_LoadDisplayMode` in `rrm.o`: the request that loads a display mode for a window, a 336-byte routine at offset 0x2b18. Established.
  It finds the node's pane with `clip2pane`, checks the arguments (error 22 when invalid) and clears the node's mode bit with `rrmInvalidateRN`.
  It then unmaps the window with `rrmUnMapGfx` so the next access reloads the mode.
- `RRM_GetDisplayModes` in `rrm.o`: copies the list of display modes to the caller, an 88-byte routine at offset 0x2c68. Established.
  The board state holds a mode count at +0x34 and a pointer at +0x38; the list is four bytes per mode.
  It returns 22 when the caller's buffer is shorter, otherwise copies the list with `copyout` and returns 14 if the copy fails.
- `rrmValidateMyRetrace` in `rrm.o`: waits for a retrace, a 100-byte routine at offset 0x2cc0. Established.
  Under `splhi` it tests bit 0x10 of the requested mask (+0x4) against the valid mask (+0x6) of the node.
  When the bit is missing it sleeps with `sv_wait` on the node's variable at +0x28 until `rrmValidateRetrace` wakes it.
- `rrmValidateRetrace` in `rrm.o`: marks a node's retrace valid, a 68-byte routine at offset 0x2d24. Established.
  Under `splhi` it sets bit 0x10 in the halfword at +0x6 of the node and wakes the sleeper on +0x28 with `sv_signal`.
- `rrmAllocPcxid` in `rrm.o`: gives a node a hardware context number, a 360-byte routine at offset 0x2d68. Established.
  A board with one context (count 1 at +0xc of the state) needs nothing. Otherwise it takes the first zero entry of the board's context table at +0x10 as the node's number (+0x38 of the node).
  When none is free it takes the number of the node at the tail of the most-recently-used list (+0x18) and moves the requester to the head (+0x14).
- `rrmValidateMyPcx` in `rrm.o`: makes sure the calling node has a hardware context, a 580-byte routine at offset 0x2ed0. Established.
  It allocates a number with `rrmAllocPcxid` when the node (+0x38) has none, and when the number was taken from another node it clears that node's valid bits with `rrmInvalidateRN`.
  It clears the pane's clip with `invalidate_pane`, and touches the shared `gfxinfo` statistics record.
- `RRM_ValidateClip` in `rrm.o`: the request that accepts a window clip from the window system, a 256-byte routine at offset 0x3114. Established.
  It runs `RRM_CheckValidFault` and then `validate_pane_clip` with the window key at +0x4 of the request.
  When the device does not own the board it takes the board semaphore (`psema`, priority 537) and waits with `us_delay` while the busy word at +0x3c is set.
- `RRM_ValidFault` in `rrm.o`: revalidates a node after the unmapped graphics window faults, an 872-byte routine at offset 0x3214. Established.
  It first gives the node a hardware context with `rrmValidateMyPcx`, waits for the retrace and for each pane's missing parts, and takes the board with `ddv_lock`.
  It then loads the context through the board's method at +0x30 and releases with `ddv_unlock`; a failure prints the process id with `cmn_err_tag` and sends the process signal 9 with `psignal`.
- `RRM_CheckValidFault` in `rrm.o`: the fault check that the render requests make first, a 96-byte routine at offset 0x357c. Established.
  It tests flags 0x4 and 0x1 in the device's word at +0x4 and returns -1 when the device has no node.
  Otherwise it calls `RRM_ValidFault` with a zero second argument and returns -1 on failure, 0 on success.
- `rrmSwapWait` in `rrm.o`: makes a swap wait for its retrace, a 224-byte routine at offset 0x35dc. Established.
  It returns at once when the board's retrace counter (+0x64) plus one has reached the pane's due count at +0x1c.
  Otherwise it queues the node on the board's list at +0x68 ordered by due count and sleeps with `sv_wait_sig` between `hold_nonfatalsig` and `release_nonfatalsig`, returning -1 on a signal.
- `RRM_SwapBuf` in `rrm.o`: the swap-buffers request, a 648-byte routine at offset 0x36bc. Established.
  It fetches the node's mask with `rrmGetResourceMask`, checks the fault state with `RRM_CheckValidFault` and clears the pane's buffer bits with `invalidate_pane`.
  It sets the swap value and due count, marks the buffer valid with `validate_pane_buffer`, waits with `rrmSwapWait` and counts the swap in the `gfxinfo` record.
- `rrmSwapUnGroup` in `rrm.o`: removes a pane from its swap group, a 236-byte routine at offset 0x3944. Established.
  It unlinks the pane from the group list through the words at +0x7c and +0x80 of the group record and lowers the group count.
  The last member frees the group record with `kern_free` and clears the pane's group pointer at +0x78.
- `RRM_SwapUnGroup` in `rrm.o`: the request that leaves a swap group, a 120-byte routine at offset 0x3a30. Established.
  Under the pane table semaphore (`psema`, priority 25) it finds the pane with `clip2pane` and returns error 2 when none exists and 15 when the pane has no group.
  Otherwise it removes it with `rrmSwapUnGroup` and returns 0.
- `RRM_SwapGroup` in `rrm.o`: the request that joins one pane to another's swap group, a 304-byte routine at offset 0x3aa8. Established.
  It finds the pane of the first window key (error 2 if none) and, when it is already in a group, leaves it with `rrmSwapUnGroup`.
  It finds the pane of the second key and refuses with error 6 when the two are on different boards or 15 when it is missing.
  A second pane without a group gets a new 12-byte group record from `kern_malloc` and `bzero`; the first pane then links in at +0x78 and +0x7c and the group count at +0x0 rises by one.
- `RRM_SwapReady` in `rrm.o`: the request that marks a swap-group slot ready or clears it, a 340-byte routine at offset 0x3bd8. Established.
  The board state holds a slot count at +0x6c and a table of group pointers at +0x70; a slot number at or above the count returns 37.
  It finds the pane with `clip2pane` (error 2 if none, 6 on another board, 15 when it has no group) and takes the board with `psema` at priority 537 and `us_delay`.
  A set request stores the pane's group in the slot, with 17 when another group holds it; a clear request empties the slot, with 9 when it holds a different group.
- `RRM_CushionBuffer` in `rrm.o`: the request that sets a pane's cushion-buffer flag, a 164-byte routine at offset 0x3d2c. Established.
  It finds the pane with `clip2pane` and returns error 2 when none exists and 6 when the pane belongs to another board.
  It returns 19 when the board lacks the method at +0x74, and otherwise stores the request's flag in byte +0x81 of the pane.
- `RRM_MGR_SwapBuf` in `rrm.o`: the swap request of the window manager, request 1020, a 196-byte routine at offset 0x3dd0. Established.
  It runs `RRM_CheckValidFault`, returning 14 on failure. A slot number (+0x4) below the board's slot count (+0x34) stores the request's value (+0x10) in the board's table at +0x38.
  It then calls the board's method at +0x54 with the slot and the request's words and returns its error negated.
  A larger slot number finds the pane of the key at +0x8 with `clip2pane` and sets the pane's halfword +0x12 to whether bit 4 of the value is clear.
- `rrmValidateMGRSwapBufSTREAM` in `rrm.o`: the interrupt-time sender of the swap-done message, a 76-byte routine at offset 0x3e94. Established.
  When a stream exists (+0x8 of the board record) it builds a message with type byte 9, length 3 and the swap value, and sends it with `GfxIntrMessage`.
- `rrmValidateMGRSwapBuf` in `rrm.o`: schedules the swap-done message, a 68-byte routine at offset 0x3ee0. Established.
  With a stream present it arms `streams_timeout` for `rrmValidateMGRSwapBufSTREAM` after a delay of 100 ticks, so the message leaves from a safe context.
- `rrmGenlockNotifySTREAM` in `rrm.o`: the interrupt-time sender of the genlock-change message, a 72-byte routine at offset 0x3f24. Established.
  It builds a message with type byte 12 and length 2 carrying one word and sends it with `GfxIntrMessage` when the board has a stream.
- `rrmGenlockNotify` in `rrm.o`: schedules the genlock-change message, a 68-byte routine at offset 0x3f6c. Established.
  It arms `streams_timeout` for `rrmGenlockNotifySTREAM` with a delay of 100 ticks when the board has a stream.
- `RRM_WaitForRetrace` in `rrm.o`: the wait-for-retrace request, request 1007, a 108-byte routine at offset 0x3fb0. Established.
  It runs `RRM_CheckValidFault` (error 14 on failure), clears the node's retrace bit 0x10 with `rrmInvalidateRN` and calls the board's method at +0x4c.
  It then unmaps the window with `rrmUnMapGfx` so the next access sleeps until the retrace handler marks it valid.
- `RRM_SetSwapInterval` in `rrm.o`: sets how many retraces a swap waits, request 1006, a 40-byte routine at offset 0x401c. Established.
  It returns 22 when the interval in the request (+0x4) is negative and otherwise stores it at +0x1c of the node record and at +0x18 of the node's pane.
- `RRM_Message` in `rrm.o`: the request that forwards a client message to the window system, request 1009, a 248-byte routine at offset 0x4044. Established.
  It reads the pane's valid mask with `pane_validmask` under `splhi`, clears the node's bit with `rrmInvalidateRN` and the pane's with `invalidate_pane`.
  It copies the message with `bcopy`, sends it with `GfxMessage` and unmaps the window with `rrmUnMapGfx`.
- `RRM_SetVideoSync` in `rrm.o`: stores the video-sync divisor, request 1021, a 20-byte routine at offset 0x413c. Established.
  It copies the word at +0x4 of the request into +0x50 of the board state and returns 0.
- `RRM_GetVideoSync` in `rrm.o`: reads the video-sync divisor, request 1022, a 68-byte routine at offset 0x4150. Established.
  It copies +0x50 of the board state into the request and returns it to the caller with `copyout` of 8 bytes, or error 14 when the copy fails.
- `RRM_WaitVideoSync` in `rrm.o`: waits for a video-sync count, request 1023, a 108-byte routine at offset 0x4194. Established.
  It passes the request's divisor (+0x4) and target (+0x8) to `rrmWaitVideoSync`.
  After a successful wait it copies a 16-byte answer that includes a counter word read from the board state back with `copyout`, or returns error 14 when the copy fails.
- `rrmWaitVideoSync` in `rrm.o`: queues a node for a video-sync count, a 212-byte routine at offset 0x4200. Established.
  It returns 22 unless the divisor is positive and the target is below it, stores them at +0x60 and +0x64 of the node and links the node on the board's list at +0x54 through +0x6c.
  It sleeps with `sv_wait_sig` between `hold_nonfatalsig` and `release_nonfatalsig` and returns -1 when a signal ends the wait.
- `rrmValidateVideoSync` in `rrm.o`: wakes the video-sync waiters at a retrace, a 308-byte routine at offset 0x42d4. Established.
  Under `splhi` it walks the board's video-sync list at +0x54 and wakes with `sv_signal` each node whose target (+0x64) equals the sync count (+0x50) modulo its divisor (+0x60).
  It then walks the swap list at +0x68 and wakes, and unlinks, each node whose pane's due count (+0x1c) the retrace count (+0x64) plus one has reached.
- `RRM_MapClipToSwapbufID` in `rrm.o`: maps a window key to its swap-buffer id, request 1025, a 120-byte routine at offset 0x4408. Established.
  It finds the pane with `clip2pane`, stores the pane's swap value (+0x14) in the answer at +0x8, or -1 when no pane exists.
  A caller with an answer buffer receives 12 bytes through `copyout`, error 14 when the copy fails.
- `RRM_Dispatch` in `rrm.o`: the entry point of the resource-manager requests, a 1104-byte routine at offset 0x4480. Established.
  It takes requests 1000 to 1099 through a table of 16-byte entries in `.data` and copies the argument block in with `copyin`, returning 14 or 22 for a bad pointer or number.
  It serialises with the node's call semaphore (`psema`, priority 25) for the requests that name a node, waits for board ownership with `us_delay`, and releases with `vsema`.
<!-- rrm.o:end -->

<!-- gfx.o:begin -->
# Kernel routines, one entry each (`gfx.o`)

- `gfxtable_readerlock` in `gfx.o`: takes a read hold on a table lock, a 56-byte routine at offset 0x0. Established.
  Under `splhi` it adds one to the reader count in the first word of the lock it is given, then restores the level with `splx`.
- `gfxtable_readerunlock` in `gfx.o`: drops a read hold, a 56-byte routine at offset 0x38. Established.
  Under `splhi` it subtracts one from the reader count in the first word of the lock and restores the level with `splx`.
- `gfxtable_writerlock` in `gfx.o`: takes the write side of a table lock, a 112-byte routine at offset 0x70. Established.
  It raises the level with `splhi` and, while the reader count is positive, restores it, sleeps 1000 nanoseconds with `nano_delay` and raises it again.
  It returns the old level, which `gfxtable_writerunlock` restores.
- `gfxtable_writerunlock` in `gfx.o`: releases the write side of a table lock, a 28-byte routine at offset 0xe0. Established.
  It passes the saved level in its second argument to `splx`.
- `init_gfx_group_table` in `gfx.o`: creates the thread-group lookup table once, a 160-byte routine at offset 0xfc. Established.
  When no table exists it allocates 64 bytes (16 chain heads) with `kern_malloc`, zeroes them and initialises the table lock with `spinlock_init`.
  An allocation failure is reported with `cmn_err`.
- `gfx_group_find` in `gfx.o`: finds the group record of a thread, a 180-byte routine at offset 0x19c. Established.
  It maps the thread handle to its group handle with `threadhandle_to_threadgrouphandle` and picks the chain from the handle's low four bits (bits 12 to 15 when those are zero).
  It walks the chain under `gfxtable_readerlock`, comparing the handle at +0x0 of each record, and returns the match or none.
- `gfx_group_create` in `gfx.o`: makes a group record for a thread, a 184-byte routine at offset 0x250. Established.
  It allocates 20 bytes with `kern_malloc`, stores the group handle at +0x0, zeroes the attach count at +0x4 and the word at +0x8 and initialises the spinlock at +0xc.
  It links the record at the head of its chain, link at +0x10, under `gfxtable_writerlock`.
- `gfx_group_destroy` in `gfx.o`: removes and frees a group record, a 204-byte routine at offset 0x308. Established.
  Under `gfxtable_writerlock` it unlinks the record from its chain through the link at +0x10.
  It then destroys the record's spinlock (`spinlock_destroy`) and frees it with `kern_free`.
- `init_gthread_table` in `gfx.o`: creates the thread lookup table once, a 164-byte routine at offset 0x3d4. Established.
  It allocates 192 bytes (16 buckets of 12) with `kern_malloc`, zeroes them with `bzero` and initialises each bucket's spinlock at +0x4 with `spinlock_init`.
  An allocation failure is reported with `cmn_err`.
- `gthread_create` in `gfx.o`: makes the record of a thread, a 256-byte routine at offset 0x478. Established.
  It allocates 20 bytes with `kern_malloc`, stores the handle at +0x0 and zeroes the flags (+0x4), device list (+0x8) and group (+0xc).
  The bucket comes from a multiply-by-29 fold of the handle's upper three bytes masked to four bits; the record is linked at +0x10 under `gfxtable_writerlock`, and a thread with a group is attached with `gthread_attach_group`.
- `gthread_destroy` in `gfx.o`: removes and frees the record of a thread, a 248-byte routine at offset 0x578. Established.
  Under `gfxtable_writerlock` it unlinks the record from its bucket chain through the link at +0x10.
  It then frees it with `kern_free`.
- `gthread_attach_list` in `gfx.o`: points a thread at a device list, a 160-byte routine at offset 0x670. Established.
  Given a list it adds one to its reference count at +0x0 and stores it at +0x8 of the thread.
  Given none it allocates a 20-byte list with `kern_malloc`, with count 1, a sleep variable at +0x8 (`init_sv`) and a spinlock at +0xc (`spinlock_init`).
- `gthread_detach_list` in `gfx.o`: drops a thread's device list, an 84-byte routine at offset 0x710. Established.
  It clears the thread's list pointer at +0x8 and lowers the list's count at +0x0.
  At zero it destroys the spinlock at +0xc (`spinlock_destroy`) and the sleep variable at +0x8 (`sv_destroy`) and frees the list with `kern_free`.
- `gthread_attach_group` in `gfx.o`: attaches a thread to a group, a 76-byte routine at offset 0x764. Established.
  Under `splhi` it adds one to the group's attach count at +0x4 and stores the group at +0xc of the thread.
- `gthread_detach_group` in `gfx.o`: detaches a thread from its group, an 80-byte routine at offset 0x7b0. Established.
  When the thread has a group (+0xc) it clears the pointer and lowers the group's attach count at +0x4 under `splhi`.
- `gthread_find` in `gfx.o`: finds the record of a thread, a 224-byte routine at offset 0x800. Established.
  It folds the handle's upper three bytes, multiplied by 29, into one of 16 buckets and walks the chain through the link at +0x10 under `gfxtable_readerlock`.
  It returns the record whose handle (+0x0) matches, or none.
- `gthread_find_gfxp` in `gfx.o`: returns a thread's first device, a 56-byte routine at offset 0x8e0. Established.
  It calls `gthread_find`, follows the device list pointer at +0x8 and returns the word at +0x10 of the list, or 0 when either is missing.
- `gthread_scan` in `gfx.o`: runs a callback over every thread record, a 348-byte routine at offset 0x918. Established.
  The callback gets phase 0 once before any lock, phase 1 for each record whose exiting flag (+0x4) is clear with all buckets read-locked, and phase 2 once afterwards.
  A non-zero return from phase 0 or 1 stops the scan and is returned.
- `GfxRegisterBoard` in `gfx.o`: adds a board to the table of boards, a 256-byte routine at offset 0xa74. Established.
  When the board count `GfxNumberOfBoards` is below `GfxBoardLimit` it allocates a 36-byte record with `kern_malloc` and stores the caller's method table at +0x1c and the state at +0x20.
  It runs `RRM_Init` on the state; when the table is full it reports through `cmn_err`.
- `GfxAddHwgraphEdge` in `gfx.o`: publishes a board in the hardware graph, a 232-byte routine at offset 0xb74. Established.
  It finds the board record whose state word (+0x20) equals its second argument and labels the given vertex with the board's index through `graph_info_add_LBL`.
  It formats a name from the index with `sprintf`, creates the parent vertex once with `hwgraph_path_add` and adds the edge with `hwgraph_edge_add`.
- `gfx_disp` in `gfx.o`: the dispatch-time check for a thread, a 308-byte routine at offset 0xc5c. Established.
  It finds the thread with `gthread_find` and walks its device list; for each device whose board is active (state word +0x3c positive) it tests the owner (+0x28) and busy count (+0x2c).
  It tests the board semaphore at +0x20 with `valusema` and returns 1 when nothing stops the thread, 0 otherwise.
- `gfx_fault` in `gfx.o`: the fault hook of the graphics mapping, a 216-byte routine at offset 0xd90. Established.
  It finds the calling thread's record with `curthreadhandle` and `gthread_find` and returns 1 when there is none.
  It takes the device semaphore (+0x2c, unless the device flag 0x8 is set), calls the board method at +0x38 for a flag-0x1 device and revalidates through `RRM_ValidFault`.
  It returns 0 when that succeeded and 1 when not.
- `gfx_exit` in `gfx.o`: the process-exit hook, a 420-byte routine at offset 0xe68. Established.
  It sets the exiting flag in the thread record (+0x4) and, outside a share group, calls each device's board method at +0x1c.
  In a group, under `GfxListReaderLock`, the last thread (`threadgroup_refcnt` equal to 1) makes each owning device release its board through the method at +0x60 and `vsema`.
- `gfx_shcheck` in `gfx.o`: tears down a thread that leaves a share group, a 576-byte routine at offset 0x100c. Established.
  It releases the board a device of the thread owns (method +0x60, clear owner, `vsema`) and destroys the thread's handles with `ddv_destroy_handle`.
  It detaches the list and group with `gthread_detach_list` and `gthread_detach_group`, clears the scheduler entry (`cleargfxsched_thread`) and destroys the record with `gthread_destroy`.
- `gfx_shdup` in `gfx.o`: duplicates the graphics state on a fork or share, a 124-byte routine at offset 0x124c. Established.
  It does nothing when the parent has no device or its first device is flagged 0x8; otherwise it creates a record for the child with `gthread_create`.
  It gives the child the parent's list with `gthread_attach_list` and registers it with `setgfxsched_thread`.
- `GfxKiller` in `gfx.o`: the scan callback that evicts other users of a board, a 252-byte routine at offset 0x12c8. Established.
  In phase 1 it looks at each thread whose device list (under `GfxListReaderLock`) holds a device on the board state named in the message and skips the caller's own group.
  It sends the signal named in the message (+0x10, 9 from its callers) to that thread's process with `threadhandle_to_proc` and `psignal`.
- `gfxcleanup` in `gfx.o`: releases the streams side of a device record, a 52-byte routine at offset 0x13c4. Established.
  When the record's lock word at +0x20 is set it destroys the spinlock with `spinlock_destroy`, then frees the record with `kern_free`.
- `GfxOpen` in `gfx.o`: the streams open of the control stream, a 368-byte routine at offset 0x13f8. Established.
  Only a clone open (fourth argument 2) is accepted, else it returns 19; it finds the caller's device with `curthreadhandle` and `gthread_find_gfxp`.
  It evicts other holders with `gthread_scan` and `GfxKiller`, drops the streams lock for 100 ticks (`streams_unlock`, `delay`), and makes the device number from `getemajor` and `makedevice`.
  It then installs the queue as the board's control stream and resets its panes with `RRM_init_panes`.
- `GfxUnmanage` in `gfx.o`: releases a board from its control stream, a 392-byte routine at offset 0x1568. Established.
  It clears the stream pointers in the board record, signals the other users with `gthread_scan` and `GfxKiller`, and makes the device take the board semaphore with `psema`, 537 priority.
  It waits for the busy flag to clear with `us_delay`, releases the board with `vsema`, and re-initialises the console with `cn_init` when the closing stream was the board's.
- `GfxClose` in `gfx.o`: the streams close, a 108-byte routine at offset 0x16f0. Established.
  When the device is not bound it clears bit 0 of the device flags at +0x20 and calls `gfxcleanup`; otherwise it calls `GfxUnmanage`.
- `GfxProto` in `gfx.o`: handles a protocol message on the write side, a 260-byte routine at offset 0x175c. Established.
  It reads a tag from the message's first word: tag 102 calls a board method with two words from the message and answers with a message of type 138 through `qreply`.
  Other tags are answered or freed (`freemsg`), and an unknown message is logged with `cmn_err`.
- `GfxWput` in `gfx.o`: the write-side put procedure, a 156-byte routine at offset 0x1860. Established.
  Messages of type 1 and 131 go to `GfxProto`; a flush message (type 134) flushes the write queue with `flushq` when its write bit (0x2) is set and is freed with `freemsg`.
  Anything else is logged with `cmn_err`.
- `sendMsg` in `gfx.o`: builds the message the window system receives and queues it, a 260-byte routine at offset 0x18fc. Established.
  It zeroes the block with `bzero`, fills it with the queue's identifying halfwords and the caller's type, length and words, and puts it on the queue with `putq`.
- `GfxDelayedMessage` in `gfx.o`: the buffer-call retry for a message that found no buffer, a 164-byte routine at offset 0x1a00. Established.
  It tries `allocb` again and, on success, sends the message with `sendMsg`, wakes the sleeping sender with `wakeup` and frees the heap copy with `kern_free`.
  When the buffer is still missing it re-arms `bufcall`, and logs a failure with `cmn_err`.
- `GfxSendMessage` in `gfx.o`: the common sender of messages to the window system, a 352-byte routine at offset 0x1aa4. Established.
  It allocates a message buffer with `allocb`; when none is free it copies the message to a block from `kern_malloc` with `bcopy` and retries from `bufcall` through `GfxDelayedMessage`.
  Outside interrupt context it sleeps with `sleep` (dropping the streams lock) until the retry has run.
- `GfxMessage` in `gfx.o`: the task-level entry for sending a message, a 28-byte routine at offset 0x1c04. Established.
  It calls `GfxSendMessage` with a zero second argument, meaning it may sleep.
- `GfxIntrMessage` in `gfx.o`: the interrupt-level entry for sending a message, a 28-byte routine at offset 0x1c20. Established.
  It calls `GfxSendMessage` with a second argument of 1, meaning it must not sleep.
- `GfxRqService` in `gfx.o`: the service procedure of the read queue, a 124-byte routine at offset 0x1c3c. Established.
  It takes each queued message with `getq` and hands it to the next module's put procedure when `canput` allows.
  Otherwise it returns the message with `putbq` and stops.
- `GfxDetach` in `gfx.o`: ends a device's binding to a board, a 244-byte routine at offset 0x1cb8. Established.
  When the device is bound it validates the old handle with `gfxdd_lookup`, closes its render nodes with `RRM_Exit` and calls `GfxUnmanage` if the stream is still the board's.
  Under the streams lock it clears the board record's stream pointers if they were this device's and zeroes the device's board links; the handle is destroyed with `ddv_destroy_handle`.
- `gfxinit` in `gfx.o`: the driver's one-time initialisation, a 204-byte routine at offset 0x1dac. Established.
  It initialises the board semaphore and the device semaphore with `init_sema`, creates the group and thread tables (`init_gfx_group_table`, `init_gthread_table`) and allocates the device table of `GfxDevLimit` entries with `kern_calloc`.
  It registers the `gfxinfo` record with `ksym_add` and logs an allocation failure with `cmn_err`.
- `gfx_conflict_scan` in `gfx.o`: the scan callback that refuses a clash between graphics users, a 240-byte routine at offset 0x1e78. Established.
  For each other thread's device on the same board it takes and releases the device semaphore with `psema` and `vsema`.
  A device in the conflicting mode sets the message's result to 3, on which `gfxopen` fails.
- `irisgl_sproc_setup_scan` in `gfx.o`: gives a share-group member the opener's devices, a 148-byte routine at offset 0x1f68. Established.
  For a member other than the opener that has no record it creates one with `gthread_create` and sets flag 0x2 in its word at +0x4.
  It attaches the opener's device list under `GfxListWriterLock` and registers the thread with `setgfxsched_thread`.
- `gfxopen` in `gfx.o`: the character-device open, a 1120-byte routine at offset 0x1ffc. Established.
  Under the device semaphore (`psema`) it checks the minor number, finds a free slot of the device table and reuses or creates the thread and group records (`gthread_create`, `gfx_group_find`).
  It refuses a conflicting user with `gfx_conflict_scan`, allocates and zeroes a 60-byte device record (`kern_malloc`, `bzero`) with its lock and semaphore (`init_spinlock`, `init_sema`).
  A user of the older interface also runs `irisgl_sproc_setup_scan` over its share group with `curthreadgroup_scan`.
- `irisgl_sproc_cleanup` in `gfx.o`: undoes the setup scan for one group, a 104-byte routine at offset 0x245c. Established.
  In phase 1 it takes each member of the group (word +0xc equal to the group) off the scheduler with `cleargfxsched_thread`.
  It detaches its list and group (`gthread_detach_list`, `gthread_detach_group`) and clears flag 0x2 at +0x4.
- `gfxclose` in `gfx.o`: the character-device close, a 1396-byte routine at offset 0x24c4. Established.
  Under the device semaphore it finds the device, calls `GfxDetach`, unlinks it from its list under `GfxListWriterLock`, frees its semaphore with `freesema` and destroys the thread record when it was the last.
  When the shared list empties it runs `irisgl_sproc_cleanup` through `gthread_scan` and releases the streams side with `gfxcleanup`.
  A thread found with unexpected state is logged with its process name and id and signalled with `psignal`.
- `GfxListWriterLock` in `gfx.o`: takes the write side of a device list lock, a 116-byte routine at offset 0x2a38. Established.
  It raises the level with `splhi` and, while the reader count at +0x4 is positive, sleeps with `sv_wait` on the variable at +0x8.
  It returns the old level.
- `GfxListWriterUnlock` in `gfx.o`: releases the write side, a 28-byte routine at offset 0x2aac. Established.
  It restores the saved level from its second argument with `splx`.
- `GfxListReaderLock` in `gfx.o`: takes a read hold on a device list, a 56-byte routine at offset 0x2ac8. Established.
  Under `splhi` it adds one to the reader count at +0x4 of the list and restores the level with `splx`.
- `GfxListReaderUnlock` in `gfx.o`: drops a read hold, a 68-byte routine at offset 0x2b00. Established.
  Under `splhi` it lowers the reader count at +0x4 and wakes a waiting writer with `sv_signal` on the variable at +0x8.
- `gfxread` in `gfx.o`: the character-device read, an 8-byte routine at offset 0x2b44. Established.
  It returns the constant 54 and uses none of its arguments, so the device cannot be read.
- `gfxwrite` in `gfx.o`: the character-device write, an 8-byte routine at offset 0x2b4c. Established.
  It returns the constant 54 and uses none of its arguments, so the device cannot be written.
- `gfxmap` in `gfx.o`: the character-device map entry, an 8-byte routine at offset 0x32c8. Established.
  It returns the constant 54 without touching its arguments; the graphics window is mapped through the board's own request instead.
- `gfxunmap` in `gfx.o`: the character-device unmap entry, an 8-byte routine at offset 0x32d0. Established.
  It returns the constant 54 without touching its arguments.
- `gfxioctl` in `gfx.o`: the request entry of the driver, a 1908-byte routine at offset 0x2b54. Established.
  It counts the call in the `gfxinfo` record, finds the device by the low 16 bits of the minor number and serialises on the device semaphore with `psema`.
  Requests 1000 to 9999 go to `RRM_Dispatch`, requests of 10000 and above to the board method at +0x64, and the generic board requests are served in place with `copyin`.
- `gfx_shalloc` in `gfx.o`: creates a share group for the calling thread, a 192-byte routine at offset 0x32d8. Established.
  It makes a group record with `gfx_group_create`, attaches the thread to it with `gthread_attach_group` and stores the caller's value at +0x34 of each device on the thread's list under `splhi`.
- `gfx_shfree` in `gfx.o`: destroys the calling thread's share group, a 44-byte routine at offset 0x3398. Established.
  It finds the group of the thread with `curthreadhandle` and `gfx_group_find` and passes it to `gfx_group_destroy`.
- `gfx_frs_valid_pipenum` in `gfx.o`: tests a pipe number for the frame-rate scheduler, a 12-byte routine at offset 0x33c4. Established.
  It compares its argument with the board count `GfxNumberOfBoards` and returns 1 when it is smaller.
<!-- gfx.o:end -->

<!-- tile.o:begin -->
# Kernel routines, one entry each (`tile.o`)

- `tile_init` in `tile.o`: the one-time set-up of the tile pool, a 1692-byte routine at offset 0x0. Established.
  It registers the debugger commands `tile_dump` and `tileq_dump` with `idbg_addfunc` and computes the first and last whole tile of the page range.
  Pages of a partial first or last tile and of memory holes are marked locked through `tilepages_to_frag`.
  Each tile gets a class number that changes at every memory-bank boundary (`addr_to_ibank`) and is queued with `tq_enqti`; a semaphore and a spinlock are initialised and the cache-clean threshold is set from `dcache_size`.
- `tile_alloc` in `tile.o`: allocates a run of 64 KB tiles, a 2656-byte routine at offset 0x69c. Established.
  It takes the tile allocation semaphore (`psema`, or `cpsema` without sleeping), reserves 16 pages per tile of the global pool with `reservemem`, and takes tiles from the class queues allowed by the class mask in its third argument.
  Tiles come from `_pagealloc_size_node` on a node of `Nodepdaindr`, or by evicting a user of a tile with `tile_evict` and requeueing it with `tq_deqi` and `tq_enqti`.
  A failure frees what it took (`tile_free`) and calls `setsxbrk`; flag bit 2 zeroes each tile through `tile_mapin`, `bzero` and `tile_mapout`, then `tile_cache_clean`, and `tiled_lowat` decides whether to wake the tile daemon with `cvsema`.
- `tile_free` in `tile.o`: returns tiles to the pool, a 596-byte routine at offset 0x10fc. Established.
  For each tile number it cleans stale ECC state with `tile_ecc_clean`, moves the tile to the head of its queue (`tq_deqi`, `tq_enqhi`) under `splhi` and frees its pages with `pagefree_size`.
  It gives the reservation back with `unreservemem` and logs the event with `log_tstamp_event`.
- `tile_mapin` in `tile.o`: gives a tile a kernel address, a 592-byte routine at offset 0x1350. Established.
  A tile in the direct-mapped window is returned at that address; otherwise it takes 16 pages of kernel virtual space of the right cache colour with `kvalloc`.
  It fills the page-table entries in `kptbl` with the cache bits from `pte_cachebits` and checks colour with `color_validation` when `vce_avoidance` is set.
- `tile_mapout` in `tile.o`: releases the address that `tile_mapin` gave, a 56-byte routine at offset 0x15a0. Established.
  An address outside the direct-mapped windows (below 0xc0000000 or at 0xff600000 and above) is returned with `kvfree` for 16 pages; others need nothing.
- `do_tiled` in `tile.o`: one pass of the tile daemon, a 780-byte routine at offset 0x15d8. Established.
  It walks the partly-locked tile queues from the fullest down and, for each unlocked page, allocates a replacement with `pagealloc_size` and moves the contents with `migr_migrate_frame`.
  It then frees the old page with `pagefree_size`, requeues the tile with `tq_deqi` and `tq_enqti` and stops when `tiled_hiwat` says enough whole tiles exist.
- `tiled` in `tile.o`: the body of the tile daemon, a 104-byte routine at offset 0x18e4. Established.
  It initialises its wake-up semaphore with `init_sema` and loops: sleep on it with `psema`, take the allocation semaphore, run `do_tiled`, release it with `vsema`.
  The page count `do_tiled` returns is added to a statistics word.
- `tiled_lowat` in `tile.o`: tells whether the tile daemon should start, a 224-byte routine at offset 0x194c. Established.
  It compares the free memory in whole or potential tiles (the node's free pages from `Nodepdaindr` plus the page-list counts at `tphead`) against the tuned threshold in `tune`.
  It returns 1 when the daemon should run.
- `tiled_hiwat` in `tile.o`: tells whether the tile daemon may stop, a 224-byte routine at offset 0x1a2c. Established.
  It makes the same free-memory comparison as `tiled_lowat` with the tuned high-water value in `tune`, so the daemon stops once enough whole tiles are free.
- `tile_cache_clean` in `tile.o`: writes back and invalidates the caches for a list of tiles, a 280-byte routine at offset 0x1b0c. Established.
  When more tiles are listed than the threshold set in `tile_init` it flushes the whole cache with `flush_cache`.
  Otherwise it cleans page by page with `_bclean_caches`, or with `color_validation` when `vce_avoidance` is set.
- `tile_nclasses` in `tile.o`: reports the number of tile classes, a 12-byte routine at offset 0x1c24. Established.
  It loads the highest class number kept in the pool's small-data variable at gp-30692 and returns it plus one.
- `tile_ecc_clean` in `tile.o`: clears the stale-ECC state of a tile, a 208-byte routine at offset 0x1c30. Established.
  When a page carries the stale mark it maps the tile with `tile_mapin`, zeroes it with `bzero` and unmaps it with `tile_mapout`.
  It then flushes it with `tile_cache_clean`.
- `tile_pagelock` in `tile.o`: records that an ordinary page inside a tile has become fixed, a 524-byte routine at offset 0x1d00. Established.
  Under `splhi` it removes the tile from its queue (`tq_deqi`), sets the page's bit and raises the locked count at +0x4, and requeues it by the new count with `tq_enqti`.
  The first lock on a tile moves its pages to the fragmented list with `tilepages_to_frag`, and `tiled_lowat` may wake the daemon with `cvsema`.
- `tile_pageunlock` in `tile.o`: records that a page has become movable again, a 644-byte routine at offset 0x1f0c. Established.
  Under `splhi` it removes the tile from its queue, clears the page's bit and lowers the locked count at +0x4 and requeues it with `tq_enqti`.
  The last unlock returns the tile's pages to the whole list with `tilepages_to_unfrag`.
- `tile_pageselect` in `tile.o`: picks which free page the page allocator takes, a 528-byte routine at offset 0x2190. Established.
  For a movable request it examines the first few pages of the list and prefers one in the tile with the fewest locked pages; for a fixed request it prefers the tile with the most.
  It reads more pages when few whole tiles remain, and uses `pfd_lowmem` to skip low-memory pages.
- `tq_enqhi` in `tile.o`: puts a tile at the head of a queue, a 252-byte routine at offset 0x23a0. Established.
  It links the tile record into the queue given by its index and raises the queue's count at +0x28.
  It also updates the free count of the tile's memory-bank class at +0xc8.
- `tq_enqti` in `tile.o`: puts a tile at the tail of a queue, a 256-byte routine at offset 0x249c. Established.
  It links the tile at the tail of the queue given by its index and raises the count at +0x28 of the queue table.
  It also updates the free count of the tile's class at +0xc8.
- `tq_deqi` in `tile.o`: removes a tile from its queue, a 304-byte routine at offset 0x259c. Established.
  It unlinks the tile record through its forward and back links, lowers the queue's count at +0x28 and clears the tile's queue number.
  It also lowers the free count of the tile's class at +0xc8.
- `tile_evict` in `tile.o`: asks the large-page layer to evict a tile's occupant, a 204-byte routine at offset 0x26cc. Established.
  It maps the tile to its large-page index with `lpage_size_to_index`, calls `lpage_evict` and counts one more forced move in a statistics word at +0x20.
- `tile_migr_pagealloc` in `tile.o`: allocates the destination page for a page migrated out of a tile, a 152-byte routine at offset 0x2798. Established.
  It calls `_pagealloc_size_node` for one movable 4 KB page, of the source page's colour when `vce_avoidance` is set, and validates the colour with `color_validation`.
- `tile_print` in `tile.o`: prints one tile record, a 268-byte routine at offset 0x2830. Established.
  It prints the queue index, class, locked count and bitmap, links and the page record with `qprintf`.
- `tile_dump` in `tile.o`: the debugger command that prints tiles, a 756-byte routine at offset 0x293c. Established.
  It accepts a tile index, page record, page frame number or record address and prints that tile with `tile_print`.
  An argument of -1 prints every tile.
- `tileq_print` in `tile.o`: prints one tile queue, a 920-byte routine at offset 0x2c30. Established.
  It prints the queue's counts at +0x28 and, for the unlocked queue, the per-class counts and the tiles that hold kernel dump pages, calling `tile_print` for them.
- `tileq_dump` in `tile.o`: the debugger command that prints every non-empty tile queue, a 160-byte routine at offset 0x2fc8. Established.
  It calls `tileq_print` for each queue in turn, or only the one named by its argument.
<!-- tile.o:end -->

<!-- a3_dd.o:begin -->
# Kernel routines, one entry each (`a3_dd.o`)

- `a3_probe` in `a3_dd.o`: detects the audio hardware and registers the audio subsystem, a 312-byte routine at offset 0x0. Established.
  It probes the part with 64-bit register reads and writes (`pciio_pio_read64`, `pciio_pio_write64`) separated by `us_delay`, flushing with `wbflush`.
  It allocates the 5928-byte subsystem record with `kmem_alloc`, records it in the hardware inventory (`add_to_inventory`) and adds it to the audio framework with `kdsp_add_subsys`.
- `a3_start_subsys` in `a3_dd.o`: starts the audio subsystem, a 784-byte routine at offset 0x138. Established.
  It sets up the codec (`a3_init_codec`), checks for the video option (`a3_check_for_video`) and creates devices, master clocks, clock generators and interfaces with the `a3_create_` routines.
  It registers the error interrupt handler `a3_err_intr` with `setcrimevector` and writes the interrupt enables with `pciio_pio_write64` under `splhi`; the sample rate it starts from is 48000 (0xbb80).
- `a3_create_ifs` in `a3_dd.o`: builds the analog input and output interface resources, a 1116-byte routine at offset 0x448. Established.
  It initialises 272-byte resource records with `kdsp_init_resource`, attaches them (`kdsp_add_subresource`) and maps them with `kdsp_map_resource`.
  The set and get method pointers are `a3_set_analog_out_if_params` and `a3_get_analog_out_if_params`, and the matching input pair; initial gains are written with `a3_write_output_gain` and `a3_write_input_gain`.
- `a3_create_mclks` in `a3_dd.o`: builds the master-clock resources, a 340-byte routine at offset 0x8a4. Established.
  It initialises three 288-byte resource records with `kdsp_init_resource`, one per master clock, and maps each with `kdsp_map_resource`.
  The record stores the 375 divisor constant used by the clock arithmetic.
- `a3_create_clockgen` in `a3_dd.o`: builds a clock-generator resource, a 448-byte routine at offset 0x9f8. Established.
  It names the resource with `sprintf`, initialises a 352-byte record (`kdsp_init_resource`) and selects it with `kdsp_select_clockgen`.
  It computes the starting divider with `a3_calculate_rate_frac`, programs it with `a3_set_clockgen` and registers the set and commit methods `a3_set_clockgen_params` and `a3_commit_clockgen_params`.
- `a3_create_device` in `a3_dd.o`: builds a sample-buffer device, a 576-byte routine at offset 0xbb8. Established.
  It finds the device's DMA ring buffer with `a3_get_dma_rb_addr`, initialises a 528-byte resource (`kdsp_init_resource`) and creates and adds the device with `kdsp_create_device` and `kdsp_add_device`.
  It installs the methods `a3_start_dma`, `a3_stop_dma`, `a3_update_dev` and `a3_writeback_rb`; a failure destroys the devices and logs through `cmn_err`.
- `a3_destroy_devices` in `a3_dd.o`: destroys the subsystem's devices, a 224-byte routine at offset 0xdf8. Established.
  It calls `kdsp_destroy_device` for the three devices at +0x698, +0x8a8 and +0xa48 of the subsystem record.
  It then releases the ring-buffer mappings with `page_mapout`.
- `a3_edtinit` in `a3_dd.o`: the driver's registration entry, a 28-byte routine at offset 0xed8. Established.
  It calls `a3_probe` and returns.
- `a3_init_codec` in `a3_dd.o`: resets and programs the audio codec, a 568-byte routine at offset 0xef4. Established.
  It writes the control register with `pciio_pio_write64`, waits with `us_delay`, and reads and writes the codec's registers with `do_read_codec_reg` and `do_write_codec_reg`.
  The values written include 2056 (0x808), 3338 (0xd0a) and 15 for the clock and data formats; an option string is parsed with `atoi` when the boot argument names one.
- `a3_get_dma_rb_addr` in `a3_dd.o`: finds the DMA ring-buffer memory of a device, a 244-byte routine at offset 0x112c. Established.
  It obtains the physical buffer address with `get_isa_dma_buf_addr` for each of its two halves and maps the pages into kernel space with `page_mapin_pfn`.
- `a3_write_input_source` in `a3_dd.o`: selects the analog input source, a 124-byte routine at offset 0x1220. Established.
  It writes the codec's input-source register with `write_codec_reg` (value 771 for the line-and-microphone combination) and reconfigures the connection list with `connlist_reconfig`.
- `a3_write_input_gain` in `a3_dd.o`: sets the input gain, a 132-byte routine at offset 0x129c. Established.
  It limits each channel's gain value to 63 and writes the left and right values to the codec with `write_codec_reg`.
- `a3_write_output_gain` in `a3_dd.o`: sets the output gain, a 76-byte routine at offset 0x1320. Established.
  It takes the left and right values from the caller's two words and writes them with `write_codec_reg` at the codec offset held in the subsystem.
- `a3_initial_val` in `a3_dd.o`: fills in the default parameter values of a resource, a 212-byte routine at offset 0x136c. Established.
  It stores the defaults of the three interfaces' parameter tables at +0x1e8, +0x2a0 and +0xc30 and following of the subsystem record.
- `a3_set_device_params` in `a3_dd.o`: applies a device's changed parameters, a 488-byte routine at offset 0x1440. Established.
  It finds the interface resource a device is connected to (`kdsp_find_resource_in_list`, `kdsp_select_interface`) and rewrites the input source and gain with `a3_write_input_source` and `a3_write_input_gain`.
  The codec words it writes include 0xe0e0 and 0xc0c0 for muted channels.
- `a3_cg_update_hrb` in `a3_dd.o`: the clock-generator hook for a ring-buffer update, an 8-byte routine at offset 0x1628. Established.
  It is a single return instruction with its delay slot, so the hook does no work.
- `a3_set_analog_in_if_params` in `a3_dd.o`: applies the input interface's parameters, a 576-byte routine at offset 0x1630. Established.
  It fetches the caller's parameter values (`kdsp_fetch_external`), converts decibel gains to register values with `kdsp_db_gain_to_regval` and writes them with `write_codec_reg`.
  Input gain changes call `a3_write_input_gain`; the gain limit is 63.
- `a3_get_analog_in_if_params` in `a3_dd.o`: reads back the input interface's parameters, a 440-byte routine at offset 0x1870. Established.
  It converts the stored register gain values to decibels with `kdsp_regval_to_db_gain` and returns them to the caller with `kdsp_put_external`.
- `a3_set_analog_out_if_params` in `a3_dd.o`: applies the output interface's parameters, a 544-byte routine at offset 0x1a28. Established.
  It fetches the caller's values (`kdsp_fetch_external`), converts decibel gains with `kdsp_db_gain_to_regval` and writes the codec with `write_codec_reg`.
  The output gain goes through `a3_write_output_gain`, with a limit of 63.
- `a3_get_analog_out_if_params` in `a3_dd.o`: reads back the output interface's parameters, a 340-byte routine at offset 0x1c48. Established.
  It converts the stored register gain values to decibels with `kdsp_regval_to_db_gain` and returns them with `kdsp_put_external` after `kdsp_find_param_info`.
- `a3_set_clockgen_params` in `a3_dd.o`: applies a clock generator's parameters, a 420-byte routine at offset 0x1d9c. Established.
  It finds each parameter with `kdsp_find_param_info` and the clock-source resource with `kdsp_find_resource_in_list`, and stores the divider and source words at +0x110 to +0x128 of the record.
- `a3_commit_device_params` in `a3_dd.o`: the device's commit hook, an 8-byte routine at offset 0x1f40. Established.
  It returns immediately with no work.
- `a3_calculate_rate_frac` in `a3_dd.o`: computes a clock generator's rate fraction, a 264-byte routine at offset 0x1f48. Established.
  It reduces the ratio of the master-clock rate and the requested rate to numerator and denominator limited to 0xffff with `kdsp_reduce_frac`, with the master-clock constant 375.
- `a3_commit_clockgen_params` in `a3_dd.o`: commits a clock generator's new parameters, a 112-byte routine at offset 0x2050. Established.
  It recomputes the rate fraction with `a3_calculate_rate_frac`, selects the master clock with `kdsp_select_mclk`, programs it with `a3_set_clockgen` and tells the users with `kdsp_update_cg_users`.
- `a3_do_volume` in `a3_dd.o`: applies a volume change requested from the hardware control, a 1128-byte routine at offset 0x20c0. Established.
  It reads the volume control register with `pciio_pio_read64`, writes it back to clear the event under `splhi`, and converts the register values with `kdsp_regval_to_db_gain`.
  It updates the parameter lists with `kdsp_pv_list_op` and re-arms itself with `itimeout`.
- `a3_timewrap_watchdog` in `a3_dd.o`: keeps the audio timestamp from wrapping, a 156-byte routine at offset 0x2528. Established.
  At the profile level (`splprof`) it refreshes the three devices' timestamp offsets with `a3_update_timestamp_offsets` and re-arms itself with `itimeout` for 60000 ticks.
- `a3_update_timestamp_offsets` in `a3_dd.o`: refreshes one subsystem's timestamp base, an 84-byte routine at offset 0x25c4. Established.
  It reads the 64-bit timer with `pciio_pio_read64` and stores it in the offset words at +0x1fc and +0x200 of the subsystem record.
- `a3_err_intr` in `a3_dd.o`: the audio error interrupt handler, a 144-byte routine at offset 0x2618. Established.
  It reads the status with `pciio_pio_read64`, writes back the bits it handled with `pciio_pio_write64` and schedules `a3_do_volume` with `itimeout`.
- `a3_shutdown` in `a3_dd.o`: stops the audio subsystem, a 200-byte routine at offset 0x26a8. Established.
  It cancels the two timeouts with `untimeout`, masks the interrupt enables with `pciio_pio_write64`, removes the interrupt vector with `unsetcrimevector`, unmaps its resources and destroys the devices with `a3_destroy_devices`.
- `do_read_codec_reg` in `a3_dd.o`: reads one codec register, a 148-byte routine at offset 0x2770. Established.
  It writes the register number and read command to the control word with `pciio_pio_write64`, waits with `us_delay` and returns the data read back with `pciio_pio_read64`.
- `write_codec_reg` in `a3_dd.o`: writes one codec register under the timeout level, a 132-byte routine at offset 0x2804. Established.
  Under `spltimeout` it writes the register through `do_write_codec_reg` and may read it back with `do_read_codec_reg` to check; it restores the level with `splx`.
- `do_write_codec_reg` in `a3_dd.o`: writes one codec register, a 96-byte routine at offset 0x2888. Established.
  It writes the register number and the 16-bit value (masked with 0xffff) to the control word with `pciio_pio_write64`, flushes with `wbflush` and waits with `us_delay`.
- `a3_start_dma` in `a3_dd.o`: starts a device's audio DMA, a 464-byte routine at offset 0x28e8. Established.
  It writes the codec's format register with `write_codec_reg`, zeroes the ring buffer with `bzero` and writes it back with `dki_dcache_wb`.
  It programs the ring-buffer registers with `pciio_pio_write64`, starts the DMA and arms `a3_timewrap_watchdog` with `itimeout`.
- `a3_stop_dma` in `a3_dd.o`: stops a device's audio DMA, a 48-byte routine at offset 0x2ab8. Established.
  It writes zero to the device's DMA control register, whose handle is kept at +0x1e0 of the device record, with `pciio_pio_write64`.
  It then clears the running byte at +0x1b0.
- `a3_pre_connect` in `a3_dd.o`: the hook run before a device connects, a 52-byte routine at offset 0x2ae8. Established.
  It tests whether the device is the one at +0x568 of the subsystem record and whether the connected resource's type word at +0x9c equals 0x2000000d.
  It returns 4 for a match and 0 otherwise.
- `a3_set_clockgen` in `a3_dd.o`: programs the codec's sample-rate clock, a 444-byte routine at offset 0x2b1c. Established.
  It picks the master clock and rate fraction from the generator record and writes the codec's clock registers with `write_codec_reg`.
  The video-locked rates use `a3_set_video_rate` and the timing tables `mvpaudio_input_timing` and `mvpaudio_output_timing`.
- `a3_set_video_rate` in `a3_dd.o`: sets a video-locked audio rate, a 288-byte routine at offset 0x2cd8. Established.
  It looks the rate up in a table in `.data` (words at +0x1d18 to +0x1d24) and writes the codec's clock divider with `write_codec_reg`.
- `a3_update_subsys` in `a3_dd.o`: refreshes the subsystem's counters, a 116-byte routine at offset 0x2df8. Established.
  It reads the hardware timer with `pciio_pio_read64` and updates the three devices' counter words in the subsystem record.
- `a3_update_dev` in `a3_dd.o`: refreshes one device's ring-buffer view, a 224-byte routine at offset 0x2e6c. Established.
  It invalidates the data cache over the ring-buffer area with `dki_dcache_inval` and updates the read and write positions at +0x118 and +0x130 of the device.
- `a3_writeback_rb` in `a3_dd.o`: writes a ring buffer back for the hardware, an 88-byte routine at offset 0x2f4c. Established.
  It calls `kdsp_writeback_rb` and then writes the new tail position with `pciio_pio_write64`.
- `a3_get_rb_mscust` in `a3_dd.o`: returns a ring buffer's media-stream timestamp, a 156-byte routine at offset 0x2fa4. Established.
  It reads the timer with `pciio_pio_read64`, extends it with `fill_ust_highbits` and converts it to nanoseconds with `ust_to_nano`.
- `a3_idbg_dump_codec_regs` in `a3_dd.o`: the debugger command that prints the codec registers, a 116-byte routine at offset 0x3040. Established.
  It prints each register read with `do_read_codec_reg` through `qprintf`.
- `a3_idbg_dump_subsys` in `a3_dd.o`: the debugger command that prints the subsystem record, a 252-byte routine at offset 0x30b4. Established.
  It prints the record's fields from +0x150 on and the timing tables `mvpaudio_input_timing` and `mvpaudio_output_timing` with `qprintf`.
- `a3_idbg_dump_device` in `a3_dd.o`: the debugger command that prints a device record, a 96-byte routine at offset 0x31b0. Established.
  It prints the device's fields at +0x1e0 to +0x1f4 with `qprintf`.
- `a3_idbg_dump_clockgen` in `a3_dd.o`: the debugger command that would print a clock generator, an 8-byte routine at offset 0x3210. Established.
  It returns immediately with no output.
- `a3_idbg_dump_hw` in `a3_dd.o`: the debugger command that prints the hardware registers, a 504-byte routine at offset 0x3218. Established.
  It reads each audio register with `pciio_pio_read64` and prints its value with `qprintf`.
- `a3_idbg_addfuncs` in `a3_dd.o`: registers the debugger commands, a 216-byte routine at offset 0x3410. Established.
  It adds the five commands (codec registers, subsystem, device, clock generator and hardware) with `idbg_addfunc`.
- `a3_idbg_delfuncs` in `a3_dd.o`: removes the debugger commands, a 100-byte routine at offset 0x34e8. Established.
  It removes the same five commands with `idbg_delfunc`.
- `_mvpi2c_wait_for_xfer_done` in `a3_dd.o`: polls the two-wire bus for the end of a transfer, a 56-byte routine at offset 0x354c. Established.
  It reads the 64-bit status register at the kernel address 0xbf330010 up to 200 times and returns 0 as soon as bit 4 is set.
  It returns 5 when the count runs out.
- `_mvpi2c_wait_for_ack` in `a3_dd.o`: waits for the acknowledge of a byte, a 136-byte routine at offset 0x3584. Established.
  It reads the status register at 0xbf330010 and, when bit 4 shows a transfer under way, waits for it with `_mvpi2c_wait_for_xfer_done`.
  It then polls up to 200 times for bit 5 to clear and returns 0 on success, 5 on timeout and -1 when the transfer wait fails.
- `_mvpi2c_force_bus_idle` in `a3_dd.o`: forces the bus to idle, a 124-byte routine at offset 0x360c. Established.
  When bit 0 of the control and status word at 0xbf330010 shows the bus busy it writes that word back with bit 0 cleared and polls up to 200 times for bit 0 to drop.
  It returns 0 when idle and 5 when the bus stays busy.
- `mvpi2c_read_reg` in `a3_dd.o`: reads one register of the video-port chip over the two-wire bus, a 400-byte routine at offset 0x3688. Established.
  It forces the bus idle with `_mvpi2c_force_bus_idle`, sends the device address and register number, waits for acknowledges with `_mvpi2c_wait_for_ack` and reads the byte back.
- `mvp_i2c_reg` in `a3_dd.o`: finds a chip's entry in the video-port bus table, a 96-byte routine at offset 0x3818. Established.
  It searches the table of 4-byte entries at +0xc of its first argument, between the indices held in bytes +0x3 and +0x4, for an entry whose first byte equals its second argument.
  It returns the entry's address, or 0 when none matches.
- `a3_mvp_probe` in `a3_dd.o`: probes for the video-port chip, a 104-byte routine at offset 0x3878. Established.
  It takes the chip's table entry from `mvp_i2c_reg` (register index from the halfword at +0x6, or -2 when unset) and reads one register with `mvpi2c_read_reg`.
  It returns 1 when the read did not answer -1 and 0 otherwise.
- `a3_check_for_video` in `a3_dd.o`: notes whether the video option answers, a 72-byte routine at offset 0x38e0. Established.
  It sets the video-present word at +0x1e8 of the subsystem record, calls `a3_mvp_probe` on the video chip's table and clears the word again when the probe fails.
  It returns the word.
<!-- a3_dd.o:end -->

<!-- kernel.o:begin -->
# Kernel routines, one entry each (`mvp.o`, register routines)

Routines of the video kernel driver that touch MACE video or GBE capture registers, read from the 6.5.30 object. Register meanings, the controller record and the `MACEVCH` window are in [mace-video.md](mace-video.md#driver-access). Callee names come from the object's relocations; the driver's static routines have no symbol, so they are named by the routine table.

- `mvpreg_init` in `mvp.o`: publishes the register pointers of the video hardware and sets its defaults, a 188-byte routine at offset 0xbdb0. Established.
  It stores five pointers into the controller record it is given: `0xbf100000`, `0xbf180000`, `0xbf200000`, `0xb6080000` and `0xbf330000` at record `+192`, `+196`, `+200`, `+204` and `+208` (stores at `0xbdb4`, `0xbdbc`, `0xbdc4`, `0xbdcc`, `0xbdd8`).
  It then calls `mvpavio_preset_status` with the record. A result other than -1 goes straight to the last step; a result of -1 first calls `mvpreg_initmace` for cases 0, 1, 2 and 3 in that order, with the byte at record `+98` as the third argument and 0 as the fourth.
  The last step is `mvpreg_setpassthru` with the record, 1 and 1, and its result is the routine's result.
- `mvpreg_initmace` in `mvp.o`: writes default timing and format constants to one video channel or clears the GBE capture block, a 536-byte routine at offset 0xb6a8. Established.
  The second argument chooses the case (0 or 1 an input channel, 2 the output channel, 3 the capture block, anything else nothing); bit 0 of the third chooses one of two constant sets in `.data`; a nonzero fourth skips the configuration register. It runs at the raised interrupt level (`splhi`, restored with `splx` on every path).
  The input case stores nine doublewords in the order `+0x30`, `+0x48`, `+0x38`, `+0x50`, `+0x28`, `+0x40`, `+0x58`, `+0x20`, `+0x10`; the output case stores `+0x30`, `+0x40`, `+0x38`, `+0x48`, `+0x28`, `+0x20`, `+0x50`, `+0x10`; case 3 stores nine zero words to GBE `+0x80000` to `+0x80020`, each preceded by a zero word of the controller record. The values and sites are in [mace-video.md](mace-video.md#defaults-written-by-mvpreg_initmace).
- `mvpreg_setup_timing` in `mvp.o`: sets a channel's timing without touching its configuration register, a 36-byte routine at offset 0xb8c0. Established.
  It calls `mvpreg_initmace` with its own first three arguments and a fourth of 1.
- `mvpreg_cdto_wait` in `mvp.o`: waits for the hardware to settle, a 44-byte routine at offset 0xb8e4. Established.
  It calls `delay` with the word `mvpcdto_wait_time` (loaded at `0xb8fc` in the call's delay slot) and returns 1.
- `mvpprobe` in `mvp.o`: reads the MACE chip revision, a 48-byte routine at offset 0x7348. Established.
  It reads the doubleword at `0xbf200058`, `VOUT.VHW_CFG`, with `pciio_pio_read64` and returns bits 35:32 of it, the shift by 32 (`dsrl32`) and the mask `0xf` being in the return sequence.
- `mvpinterrupt_clear` in `mvp.o`: silences one video channel, a 60-byte routine at offset 0x95c4. Established.
  The argument is the channel number. It reads the channel's `+0x8` status doubleword and discards it, clears the low nine bits of the shadow at record `+216 + 192n` and writes that value to the channel's `+0x0` control register in the return's delay slot.
- `mvptransfer_enablechannel` in `mvp.o`: sets or leaves a channel's interrupt and DMA enables, a 172-byte routine at offset 0x17d8. Established.
  A path whose type byte (`+1192`) is 2 does nothing. Otherwise, under `splhi`, it takes the channel from the byte at path `+1132` and replaces the low nine bits of the control shadow with the low nine bits of the second argument, or keeps the shadow when the argument is -1. It stores the new value to the shadow and to the register (`0x185c`, `0x1860`) only when it differs.
- `mvptransfer_fix_output` in `mvp.o`: restarts the output channel's descriptor chain, a 160-byte routine at offset 0x21cc. Established.
  Under `splhi` it clears bit 0 of the output control shadow and register when set (`0x2214`, `0x2218`), writes zero to the output `+0x18` (`0x221c`), sets bit 0 again (`0x2230`, `0x2234`) and finally writes the word at path `+1160`, zero-extended, to `+0x18` (`0x2254`).
- `mvptransfer_cleardma` in `mvp.o`: resets the output channel's DMA, a 164-byte routine at offset 0x226c. Established.
  It returns at once for a path whose type byte (`+1192`) is not 0. Otherwise, under `splhi`, it zeroes the output `+0x20` register and its shadow when the shadow is nonzero (`0x22bc`, `0x22c0`), then writes the output control register with bit 0 cleared (`0x22d0`), zero to `+0x18` (`0x22d4`), bit 0 set (`0x22e0`) and bit 0 cleared again (`0x22f4`, in the delay slot of the call that reads the status doubleword, `0x22f0`). The shadow ends with bit 0 clear.
- `mvptransfer_stop_dma` in `mvp.o`: stops the transfer of a path, a 196-byte routine at offset 0x87c. Established.
  Under `splhi` it does nothing when the state byte at path `+1127` is below 3. Otherwise it sets the byte to 3 and, for a path of type 2, writes zero to `VC_0` to `VC_3` of the capture block (`0x920`, `0x928`, `0x930`, `0x93c`) and to four words of the controller record from `+792`; for any other path it clears the low nine bits of the channel's control shadow and writes the result to the control register (`0x8ec`, `0x8f0`). The state byte is 2 on every path when the routine restores the level, and the return value is 0.
- `mvptransfer_start_dma` in `mvp.o`: starts a transfer on a path, an 856-byte routine at offset 0x524. Inferred.
  Read in full, but the routines it calls are not: `mvptransfer_nextiep` (`0x250`, called at `0x564`), `mvptransfer_nextcep` (`0x3b8`, `0x734`), `mvptransfer_stop` (`0x57c`, `0x74c`), `mvptransfer_too_many_errors` (`0x34`, at `0x65c` when the low bit of the doubleword at `+208` of the transfer record differs from the third argument, and at `0x834`) and `gbe_too_late` (offset 0, `0x808`, after the capture registers are written).
  For a path of type 2 it writes `VC_3` (`0x7e4`), optionally copies five words into `VC_4` to `VC_8`, and sets bit 0 of `VC_2` (`0x7fc`); for any other path it writes the channel's `+0x20` (`0x6f8`) and `+0x18` (`0x70c`) doublewords.
- `mvpreg_setpassthru` in `mvp.o`: rebuilds the output channel's configuration word and the chip-level `VHW_CFG` word for a genlocked or free-running output and writes them, a 1184-byte routine at offset 0xb910. Established.
  The arguments are the controller record, an input flag and an output flag. It works from the shadows of `VOUT.CONFIG` (record `+616`) and `VHW_CFG` (`+688`). With the output flag set it first calls `mvpavio_preset_genlock`; its result, or -1 when the flag is clear, is the genlock source the routine may force.
  The configuration word it builds always has the format bits 16:14 at `010` (YUV 4:2:2, 8 bit), the genlock precision bit clear and the genlock reset bit (bit 5) set. With the input flag set it calls `mvpavio_select_input` and `mvpavio_change_timing` for the input named by the byte at record `+97`, sets the odd start-of-field count to 3, the clamping field to `10` (legal range) and interleave and memory mode to field and linear, and switches on that byte through the eight-word jump table at `.rodata` `0x15b4`. Indexes 1, 4 and 6 set the genlock source to port CD and clear the port CD select bit of `VHW_CFG` (bit 3); 2, 3 and 5 set port AB and clear bit 1; 7 clears the source; 0 leaves it. A preset result other than -1 replaces the source with its low two bits, and when the result is -1 the source ends up in the byte at record `+110`. Both output ports are then set to pass the genlock input through (`01` in bits 2:1 and 4:3).
  With the output flag set it sets both ports to the YUV stream and calls `mvpavio_preset_output`: a result of 1 turns both ports to pass-through, any other result leaves both on YUV, and every result stores 2 in the bytes at record `+106` and `+107`. The result also gives the index later passed to `mvpavio_select_output`: 1 for results 0 and 1, 2 for result 2, none otherwise.
  When either flag is set, `VHW_CFG` gets bit 0 and bit 2 (port AB and port CD resets released), the GBE framelock start-of-field counts (even 2, odd 2 when bit 0 of the byte at `+156` is set and 3 otherwise) and, for an output request, the framelock source set to external sync with correction on and its reset held (bit 9 clear), and the audio-sync source set to external sync with correction on and its reset released. The writes come last and in this order: zero to `VOUT.CONTROL` when the control shadow at `+600` is nonzero (`0xbb34`), the `VHW_CFG` word to `+0x58` when it differs from its shadow (`0xbb48`) and the configuration word to `+0x10` when it differs (`0xbb5c`); each shadow is updated before its store, and the level is restored afterwards. It then calls `mvpavio_change_timing` with 10, `mvpavio_select_genlock` with the source and a flag of 1 when any start-of-field, precision, error-correction or source bit changed (0 otherwise), `mvpavio_select_output` when an index was chosen, and `mvpreg_cdto_wait`; when that returns nonzero it calls `mvpavio_select_genlock` again with a flag of 2. With both flags clear it writes no register but still runs that last wait and call.
  Cases and bit positions are read from the instructions and the output-configuration and `VHW_CFG` tables of the MACE specification. The callees were not read, so the meaning of the input index and of the preset results is inferred from their names.
- `mvpreg_syncdevice_controls` in `mvp.o`: applies a device-control record to `VHW_CFG`, the output configuration and the genlock delay, a 960-byte routine at offset 0xc5f4. Established.
  It takes a path record, reads the record of device settings at controller `+88`, the output shadows from `+600` and the output register pointer from `+200`, and works under `splhi`. A small local routine at `0xc564` returns one byte of the settings record chosen by a source number; its bit 0 selects the odd start-of-field count (2 when set, 3 otherwise) for every source it is asked about.
  First `VHW_CFG`: the general-purpose output bit (bit 18) is set from bit 0 of the settings byte at `+24`; when the byte at `+12` differs from its copy at `+13` the copy is updated and the GBE framelock reset (bit 9) is cleared; when the audio-sync source (bits 6:5) differs from the byte at `+1` the audio-sync reset (bit 4) is cleared. It stores that word to `+0x58` when it changed (`0xc6b0`). Unless the byte at `+12` is 8, it then sets the framelock source (bits 11:10) from that byte, releases the framelock reset and sets the odd and even start-of-field counts; with 8 the framelock stays in reset. It sets the audio-sync source from the byte at `+1`, enables correction, clears the precision bit, releases the reset and stores again when changed (`0xc760`).
  Then the output configuration: ports E and F from the bytes at `+18` and `+19`, the notch filter from bit 0 of `+17`, the genlock source from `+14`, the odd start-of-field count from the local routine, clamping set to `10` (legal range) and interleave and memory mode cleared. When a start-of-field count, precision, error-correction or source bit changed it stores the word to `+0x10` twice, first with the genlock reset (bit 5) clear (`0xc850`) and then with it set (`0xc868`); otherwise it stores once when the word differs. After restoring the level it calls `mvpavio_select_genlock` with the word at path `+1120`, the byte at `+14` and a flag of 1 when a genlock field changed, writes the halfword at `+26` as a doubleword to the genlock delay register `+0x50` when it differs from the shadow at record `+680` (`0xc8bc`), runs `mvpreg_cdto_wait` and, if that returns nonzero, calls `mvpavio_select_genlock` with a flag of 2. It returns 0.
- `mvpreg_syncpath_controls` in `mvp.o`: copies the register image held in a path record into the hardware, storing only the registers whose value differs from the shadow, a 1776-byte routine at offset 0xbe74. Inferred.
  Every branch was read, but three things are inferred rather than established: the meaning of mode 0, 1 and 2 of the second argument (the code only skips registers by it), the purpose of bit 32 of the configuration image, which the routine strips from some stores, and the callees' behaviour. The path record holds the image at `+3048` (configuration, with software bit 32) and doublewords at `+3056`, `+3064`, `+3072`, `+3080` and `+3088`; it runs under `splhi`.
  For a path of type 1 (byte `+1192`) the channel `n` is the byte at `+1132`; the routine compares each image word with the shadow in the state record at `+216 + 192n` and stores to the register and the shadow when they differ: `+0x28` from `+3056`, `+0x30` from `+3064`, `+0x38` from `+3072`, `+0x40` from `+3088`, then `+0x48` from `+3064`, `+0x50` from `+3080` and `+0x58` from `+3088` (these three only in mode 1 and 2), then `+0x10` from `+3048`. In mode 2 it first rewrites the configuration with its low two bits clear when bit 32 is set, and afterwards sets bit 0 or bit 2 of `VHW_CFG` and clears bit 1 or bit 3 from the bytes at `+3044` and `+3045` (port AB or port CD, store `0xc220`), zeroes `+0x20` and its shadow, and calls `mvpavio_select_input` and `mvpavio_change_timing`.
  For a path of type 2 it updates the GBE capture words through the pointer at record `+204`: `VC_0` from the word at `+3048`, `VC_1` from `+3052` and `VC_2` from `+3056` with its bit 0 kept from the shadow at `+800`. For type 0, the output channel, it uses the pointer at `+200` and the output shadows at `+600`: `+0x28` from `+3056`, `+0x30` from `+3064` and `+0x38` from `+3072` (the pair skipped in mode 1), `+0x40` from `+3064` and `+0x48` from `+3080` (mode 1 and 2 only), then `+0x10`, rebuilt from `+3048` with the port, notch and genlock fields taken from the settings record at `+88`. Mode 2 on the output zeroes `+0x20` with its shadow, calls `mvpavio_select_output` with 1 and `mvpavio_change_timing` with 10, and ends with the same genlock calls as the two routines above.


# Kernel routines, one entry each (`mvp.o`, video input and output selection)

Routines of the video driver's `mvpavio_*` layer, which chooses the video source, genlock and output and hands the work to the chip driver of the attached video-port chip. Read from the 6.5.30 object. Five of them turn a driver argument string into a number; the other six forward a call to the chip driver. None of them touches a MACE register itself. Callee and variable names come from the object's relocations.

- `mvpavio_preset_status` in `mvp.o`: reports whether the firmware says the video hardware is already set up, a 172-byte routine at offset 0x5e30. Established.
  It tests with `is_specified` whether the string `arg_videostatus` was given; when it was not it returns -1. Otherwise it reports the argument through `mvperrprintf` and compares it, ignoring case (`strcasecmp`), with `inited` and `initialized`; either returns 1, anything else -1. `mvpreg_init` skips its register defaults when the result is not -1.
- `mvpavio_preset_timing` in `mvp.o`: turns the video-timing argument into a standard number, a 204-byte routine at offset 0x5edc. Established.
  An absent `arg_videotiming` gives -1; `ntsc` gives 2 and `pal` gives 3 (compared without case); any other text is reported through `cmn_err` at level 6 as an unknown video-timing argument and gives -1.
- `mvpavio_preset_input` in `mvp.o`: turns the video-input argument into an input index, a 324-byte routine at offset 0x5fa8. Established.
  An absent `arg_videoinput` gives -1. The text, compared without case, maps to `camera` 1, `composite` 2, `svideo` 3, `digital` 4, `primary` 5, `secondary` 6 and `loopback` 7; anything else is reported through `cmn_err` at level 6 and gives -1. The numbers are the indexes that `mvpreg_setpassthru` switches on through the byte at controller `+97`, so camera is port CD, composite and svideo are port AB, digital and secondary are port CD, primary is port AB and loopback has no genlock source.
- `mvpavio_preset_output` in `mvp.o`: turns the video-output argument into an output mode, a 228-byte routine at offset 0x60ec. Established.
  An absent `arg_videooutput` gives -1; `black` gives 0, `image` 1 and `colorbars` 2; any other text is reported through `cmn_err` at level 6 and gives -1. `mvpreg_setpassthru` takes 1 to mean "pass the input through" and the other two to mean the generated YUV stream.
- `mvpavio_preset_genlock` in `mvp.o`: turns the genlock argument into the two-bit genlock source, a 300-byte routine at offset 0x61d0. Established.
  An absent `arg_videogenlock` gives -1. `internal` gives 0, `external` 1, `analog` 2, `digital` 3, `primary` 2 and `secondary` 3; anything else is reported through `cmn_err` at level 6 and gives -1. The numbers are the values of the genlock source field of the output configuration (bits 7:6): none, external sync, port AB and port CD.
- `mvpavio_setup` in `mvp.o`: forwards the set-up request to the chip driver, a 56-byte routine at offset 0x5a58. Established.
  It returns -1 when its second argument is zero; otherwise it reads that object's word at `+20`, takes the first word of the table that points to and calls it with its own arguments unchanged.
- `mvpavio_select_input` in `mvp.o`: forwards an input selection to the chip driver, a 60-byte routine at offset 0x5a90. Established.
  It reads the object at controller `+20`; with none it returns -1. Otherwise it takes the table at that object's `+20` and calls its second word with the object as first argument and the others unchanged, returning the result.
- `mvpavio_select_output` in `mvp.o`: forwards an output selection to the chip driver, a 60-byte routine at offset 0x5b08. Established.
  The same as `mvpavio_select_input` but through the third word of the table, with -1 when there is no object.
- `mvpavio_select_genlock` in `mvp.o`: forwards a genlock selection to the chip driver, a 60-byte routine at offset 0x5acc. Established.
  The same through the fourth word of the table, with -1 when there is no object.
- `mvpavio_sense_timing` in `mvp.o`: asks the chip driver which timing the incoming signal has, a 60-byte routine at offset 0x5b44. Established.
  The same through the fifth word of the table; with no object it returns 0.
- `mvpavio_change_timing` in `mvp.o`: tells the chip driver the timing changed, a 60-byte routine at offset 0x5b80. Established.
  The same through the sixth word of the table, with -1 when there is no object.


# Kernel routines, one entry each (`mvp.o`, video interrupts)

The video driver takes the three MACE video interrupts through CRIME inputs 0, 1 and 2 (video input 1, video input 2 and video output) and calls a registered routine per channel. It reads CRIME's interrupt status through a pointer held in its data section: the word at data `+0xa20` is `0xb4000000`, the KSEG1 address of the CRIME registers. Read from the 6.5.30 object; offsets are bytes, and the controller record is the one in [mace-video.md](mace-video.md#driver-access).

- `mvpinterrupt` in `mvp.o`: the CRIME vector handler of the three video channels, a 556-byte routine at offset 0x9600. Established.
  Its second argument is the vector number it was registered with. It takes the driver mutex and loops: it reads the doubleword at CRIME `+0x10` (the interrupt status) at `0x96a0`, keeps bits 2:0 and leaves the loop when they are zero. For each set bit, in the order bit 2 (video output), bit 0 (video input 1) and bit 1 (video input 2), it calls the routine registered for that channel, whose word is at controller `+176 + 4n` with its argument from `+160 + 4n` and the channel number as the second argument. A channel with no routine registered is silenced with `mvpinterrupt_clear`. After each pass the status is read again. It adds the number of interrupts handled to a running total and, when the channel whose vector fired was not among those handled, adds one to that channel's counter in `mvptransfer_stats` (or to a global counter when the vector number is outside 0 to 3).
- `mvpinterrupt_setup` in `mvp.o`: registers or removes the routine of one video channel, a 248-byte routine at offset 0x982c. Established.
  The arguments are the routine's argument, the channel (0 to 3), an enable flag and the routine. Under `splhi` it stores the argument at controller `+160 + 4n` and the routine at `+176 + 4n` when enabled; when disabled it clears the argument word only if it still holds the same argument. For channel 3 it also passes the routine and argument to `crime_retrace_callback` (with zeros when disabled and the argument matched), which is how the driver hooks the display retrace; a disable whose argument differs changes nothing and skips that call. It returns 0.
- `mvpinterrupt_init` in `mvp.o`: installs the video interrupt handler, a 240-byte routine at offset 0x9924. Established.
  It initialises the driver mutex and, for CRIME inputs 0, 1 and 2, clears the channel's registered routine with `mvpinterrupt_setup`, installs `mvpinterrupt` for the input with `setcrimevector`, and reads the CRIME doubleword at `+0x18` (the interrupt mask) at the loop's branch delay slot, discarding the value. It clears the nesting count.
- `mvpinterrupt_unload` in `mvp.o`: removes the video interrupt handler, a 184-byte routine at offset 0x9a14. Established.
  For CRIME inputs 0, 1 and 2 it calls `unsetcrimevector` with `mvpinterrupt`, reads the CRIME doubleword at `+0x18` in the loop's delay slot with the value discarded, destroys the driver mutex and clears the nesting count.


# Kernel routines, one entry each (`kernel.o`, graphics and timing support)

- `ust_init` in `kernel.o`: sets the constants that convert the unadjusted system time, a 36-byte routine at offset 0x418c. Inferred.
  It stores 417 and 0x61bc1 (400321) in two small-data words, so one tick converts as 400321 over 417, and stores 0xfe500 (1041664) in `ust_freq`.
  The tick is the 1.04 MHz time register that `update_ust` reads.
- `update_ust` in `kernel.o`: extends the hardware time register to a 64-bit time, a 64-byte routine at offset 0x4250. Inferred.
  It reads the 64-bit register at the kernel address 0xbf340000, keeps its low 32 bits, and adds the change since the previous reading in `ust_val` (+0x8) to the 64-bit sum at +0x0.
  It carries into the upper word when the low word wraps.
- `update_ust_i` in `kernel.o`: the interrupt-safe wrapper of `update_ust`, a 56-byte routine at offset 0x4088. Inferred.
  It raises the level with `spl7`, calls `update_ust` and restores the level with `splx`.
- `get_ust` in `kernel.o`: returns the last 64-bit time without reading the hardware, a 12-byte routine at offset 0x411c. Inferred.
  It stores the 64-bit word `ust_val` at the address in its first argument.
- `get_updated_ust_i` in `kernel.o`: returns a freshly updated 64-bit time, a 60-byte routine at offset 0x4128. Inferred.
  It raises the level with `spl7`, calls `update_ust`, reads the 64-bit `ust_val` and restores the level with `splx`.
- `get_ust_nano` in `kernel.o`: returns the last time in nanoseconds, a 48-byte routine at offset 0x40c0. Inferred.
  It multiplies `ust_val` by the numerator word at gp-32728 and divides by the denominator word at gp-32724, storing the 64-bit result through its argument.
  A zero denominator traps.
- `ust_to_nano` in `kernel.o`: converts a tick count to nanoseconds, a 44-byte routine at offset 0x40f0. Inferred.
  It multiplies its first argument by the numerator word at gp-32728, divides by the denominator word at gp-32724 and stores the 64-bit result through its second argument.
- `nano_to_ust` in `kernel.o`: converts nanoseconds to ticks, a 40-byte routine at offset 0x4164. Inferred.
  It multiplies its argument by the denominator word at gp-32724 and divides by the numerator word at gp-32728, returning the 64-bit result.
- `fill_ust_highbits` in `kernel.o`: rebuilds the upper half of a 32-bit time stamp, a 160-byte routine at offset 0x41b0. Inferred.
  It stores the 32-bit stamp as a 64-bit value and compares it with the low word of `ust_val`, read at the profile level (`splprof`, `splx`).
  A stamp more than 0x80000000 ahead or behind gets the upper word of the current time minus or plus one, otherwise the same upper word.
- `isa_dma_buf_init` in `kernel.o`: allocates the audio DMA buffer once, a 116-byte routine at offset 0x9010. Inferred.
  It obtains 0x1800110 bytes of contiguous memory with `contig_memalloc` (eight pages, eight-page aligned), stores the physical address in `isa_dma_buf_addr` and panics when no memory is available.
  It clears the buffer with `scrub_memory` and writes the address, aligned to 32 KB, to the register at the kernel address 0xbf310000 after `flushbus`.
- `get_isa_dma_buf_addr` in `kernel.o`: returns the audio DMA buffer address, a 68-byte routine at offset 0x117c8. Inferred.
  It calls `isa_dma_buf_init` when `isa_dma_buf_addr` is still zero and reports through `cmn_err` when the allocation failed, then returns the word.
- `crimestray` in `kernel.o`: the default handler of a CRIME interrupt input, a 52-byte routine at offset 0x9f20. Inferred.
  It logs the input number through `cmn_err` at level 4 and adds one to the stray-interrupt counter at gp-32628.
- `crime_intr` in `kernel.o`: the dispatcher of the CRIME interrupt inputs, a 684-byte routine at offset 0xa2cc. Inferred.
  It reads the interrupt status at the kernel address 0xb4000010, masks it with the thread's enabled mask held at +0x138 of its argument, and builds the list of set bits in order.
  For each it calls the handler at +0x0 of the 48-byte vector entry with the argument at +0x4, bracketed by `splint`; a flag bit 4 at +0xe makes it clear the input from the mask while the handler runs.
- `create_crimegang` in `kernel.o`: turns a vector entry into a gang of handlers, a 200-byte routine at offset 0xa934. Inferred.
  It sets the entry's handler to `crimegang`, allocates 768 bytes (16 members of 48) with `kmem_zalloc` the first time and stores the first member's function, argument, mask and flags.
  It returns 2 on success.
- `join_crimegang` in `kernel.o`: adds a handler to an input's gang, a 144-byte routine at offset 0xa9fc. Inferred.
  It refuses with 1 when the new handler's mask (+0x8) differs from the gang's, scans the 16 member slots for an empty one and stores function, argument, mask and flags there.
  It returns 0 when added and 2 when the gang is full.
- `bust_crimegang` in `kernel.o`: dissolves a gang with one member left, an 80-byte routine at offset 0xaf38. Established.
  It copies the remaining member's function, argument, mask and flags back into the input's vector entry (48 bytes per input) and clears the member's record.
- `leave_crimegang` in `kernel.o`: removes one handler from an input's gang, a 348-byte routine at offset 0xaf88. Inferred.
  Under `spl7` it finds the member with the handler address, closes the gap by moving the later members down, and clears the last slot.
  When one member is left it calls `bust_crimegang`; it returns 1 when the handler was found and 0 otherwise.
- `crimevec_thread_setup` in `kernel.o`: creates the interrupt thread of a threaded handler, an 88-byte routine at offset 0xadf8. Inferred.
  It names the thread with `sprintf` from the input and creates it with `xthread_setup`, starting at `crimevec_intrd_init` with a record at +0x18 of the vector entry.
- `crimevec_intrd_init` in `kernel.o`: the start-up of an interrupt thread, an 88-byte routine at offset 0xae50. Inferred.
  It sets the thread function to `crimevec_intrd` with `xthread_set_func`, sets flag 0x400 in the thread's word at +0x18 and sleeps on the semaphore at +0x1c with `ipsema`.
- `crimevec_intrd` in `kernel.o`: the body of a threaded interrupt handler, a 144-byte routine at offset 0xaea8. Inferred.
  It calls the handler at +0x0 of the entry with the argument at +0x4 and, unless flag bit 4 at +0xe is set, ORs the input's 64-bit mask from +0x10 back into the level-mask table under `splhi`.
  It then sleeps on the semaphore at +0x1c with `ipsema` until the next interrupt.
- `unsetcrimevector` in `kernel.o`: removes a handler from a CRIME input, a 196-byte routine at offset 0xb0e4. Inferred.
  A gang input is handled by `leave_crimegang`; otherwise, under `spl7`, it restores the default handler `crimestray` with the input's default priority from `getcvpriority`.
  It then recomputes the level masks with `setsplmasks` and returns 1.
- `mte_copy` in `kernel.o`: copies memory with the memory transfer engine, a 380-byte routine at offset 0x9a34. Inferred.
  It saves the engine's mode, source and destination registers (+0x3000, +0x3020, +0x3028, +0x3030 and +0x3038) with `crmSavePP`, and maps each chunk of source and destination into the engine's linear TLB with `mte_set_tlb`.
  Per chunk it waits with `mte_fifo_wait`, writes the source and destination start and end, sets the byte mask (+0x3008) to all ones and starts with the mode value 2199 (0x897) at +0x3800.
  It then restores the registers with `crimeRestore`.
- `mte_zero` in `kernel.o`: clears memory with the memory transfer engine, a 280-byte routine at offset 0x9bb0. Inferred.
  It saves the mode and destination registers with `crmSavePP`, maps each chunk with `mte_set_tlb` and waits with `mte_fifo_wait`.
  Per chunk it writes the destination start and end (+0x3030, +0x3038), the fill value (+0x3018) as zero and the byte mask (+0x3008) as all ones, and starts with mode 17 at +0x3800; `crimeRestore` undoes the saves.
- `mte_delay` in `kernel.o`: estimates how long the engine needs to drain, an 84-byte routine at offset 0x9cc8. Inferred.
  It calls `crimeLockOut` and returns 0xffffff when that reports the engine locked out.
  Otherwise it reads the status at +0x4000, returns 0 when bit 25 is clear and else the FIFO level (bits 24:18) times 256 plus 768.
- `err_save_regs` in `kernel.o`: saves the CRIME error registers, a 72-byte routine at offset 0xff08. Inferred.
  It copies the processor error status (+0x48) and address (+0x40), the memory error status (+0x250), address (+0x258), ECC check bits (+0x268) and syndrome (+0x260), and the VICE error address (+0x58) into kernel words.
  It then writes zero to the processor and memory error status registers.
- `dobuserr_common` in `kernel.o`: the common bus-error handler, a 796-byte routine at offset 0x10754. Inferred.
  It disables the secondary cache on the 4600 module (`_r4600sc_disable_scache`) and decodes the saved CRIME status for the revision it finds with `get_crimerev` (`print_buserr_rev0` or `print_buserr_rev1`).
  It reports the VICE error with `vice_err`, logs memory errors with `log_ecc_err` and calls `ecc_error_correction`.
  When that returns zero, unless a saved value equals 2 and a process is current, it calls `ecc_disable` and logs a tagged message; in the exception it logs a different tagged message naming the process. The secondary cache is re-enabled on the paths that disabled it.
- `enable_ithreads` in `kernel.o`: switches CRIME inputs to threaded handlers, a 144-byte routine at offset 0xad68. Inferred.
  Under `spl7` it sets `ithreads_enabled` and, for each of the 32 vector entries whose flag word (+0x18) has bit 9 (0x200) set, calls `crimevec_thread_setup` with the level halfword at +0x28.
- `ecc_meminit` in `kernel.o`: clears a range of memory pages to set its ECC, a 304-byte routine at offset 0x90dc. Established.
  Its arguments are the first and the end page number. On a CRIME revision above 0 it stops GBE first with `early_gbe_stop` when the stop flag is set, and when the PROM already initialised ECC (`prom_does_eccinit`) it caps the end page at 16384.
  With the engine allowed (`ecc_use_mte`) on a revision above 0 it clears the range with `early_mte_zero`, starting 0x40000000 higher when the end page is 0x50000 or more, and records the end page in `ecc_meminited`.
  Otherwise it clears the range with `bzero` through the cached window only when the end page is below 0x50000, records it, and returns 1; it returns 0 when it cleared nothing.
- `add_cpuboard` in `kernel.o`: adds the CPU board to the hardware inventory, a 216-byte routine at offset 0x81e4. Inferred.
  It adds the processor, floating-point and cache entries with `add_to_inventory`, with the clock rating from `cpu_mhz_rating` and the flash version from `flash_version`.
  It stores the CRIME revision from `get_crimerev` in `crime_rev` and the processor id from `get_cpu_irr` in `cpu_prid`, logging an unknown revision through `cmn_err`.
- `prom_autoboot` in `kernel.o`: returns to the PROM for an automatic boot, a 140-byte routine at offset 0x2b4. Inferred.
  It disables the 4600 secondary cache, writes the environment to flash (`flash_write_env`), turns ECC off with `ecc_disable` and stops GBE with `early_gbe_stop`.
  It then updates the flash version and jumps into the PROM at 0xbfc00000 (or +0x100 for a flash version of 2 or more) with reason 6.
- `prom_reinit` in `kernel.o`: returns to the PROM for a reinitialisation, a 120-byte routine at offset 0x340. Inferred.
  It writes the flash environment, sets the auto-power-on flag, powers down with `cpu_powerdown` when `power_off_flag` is set, and otherwise turns ECC off and stops GBE like `prom_autoboot`.
  It jumps into the PROM at 0xbfc00000 (or +0x100) with reason 5.
- `onesec_maint` in `kernel.o`: the once-a-second housekeeping, a 184-byte routine at offset 0xb8ac. Inferred.
  It refreshes the 64-bit time with `update_ust_i`, runs the TLB's once-a-second actions with `tlb_onesec_actions` and writes the time of day back to the clock (`wtodc`).
  It then runs the drift check `chktimedrift`.
- `fastick_maint` in `kernel.o`: the fast clock tick handler, a 392-byte routine at offset 0xb964. Inferred.
  It acknowledges the clock with `ackkgclock` and, under nested spinlocks, calls the fast profile and timer pokes (`fast_user_prof`, `prfintr`, `fast_timepoke`).
  It also calls the audio, MIDI and serial timer callbacks that drivers such as `kdsp` registered in the `*_timercallback_ptr` words.
- `early_mte_zero` in `kernel.o`: clears memory with the transfer engine during early start-up, a 212-byte routine at offset 0x9960. Inferred.
  It works in chunks of at most 0x20000 bytes: each is mapped into the engine's linear TLB with `mte_set_tlb` and the FIFO is given room with `mte_fifo_wait`.
  Per chunk it writes destination start and end (+0x3030, +0x3038), the fill value (+0x3018) as zero and the byte mask (+0x3008) as all ones, starts with mode 17 at +0x3800 and waits with `mte_spin`.
- `mte_spin` in `kernel.o`: waits for the engine to go idle, an 84-byte routine at offset 0x9d1c. Inferred.
  It reads the status word at +0x4000 of the engine and loops with `us_delay` of 1 microsecond while the idle bit, bit 25 of the status, is clear.
- `mte_set_tlb` in `kernel.o`: loads the engine's linear TLB for a memory range, a 272-byte routine at offset 0x9d70. Inferred.
  It splits the range into 4 KB pages, waits for enough FIFO room with `mte_fifo_wait` and writes the page frame numbers, two to a 64-bit word with the valid bit 0x80000000 set, into the TLB at +0x1000 plus the base given in its third argument.
  It returns a bit mask of the TLB words it used and the covered length through its fourth argument.
- `mte_fifo_wait` in `kernel.o`: waits until the engine's FIFO has room for a number of words, a 112-byte routine at offset 0x9e80. Inferred.
  It reads the FIFO level from bits 24:18 of the status at +0x4000 and polls with `us_delay` of 1 microsecond until 64 minus the level is at least the request.
  On a timeout it logs through `cmn_err` and counts one more stray event in a kernel word at gp-32632.
- `crmerr_intr` in `kernel.o`: a panic handler for a CRIME or VICE error, a 36-byte routine at offset 0x9f54. Established.
  It reads no register: it passes level 0, the highest severity, and the text "CRIME/VICE error" from the read-only data to `cmn_err`, so the kernel panics. No instruction of `kernel.o` takes its address; `mlreset` installs `buserror_intr` for the error inputs instead.
- `vice_err` in `kernel.o`: the VICE error hook, an 8-byte routine at offset 0x1d554. Established.
  It returns zero at once. Its one caller in this object, `print_buserr_rev0`, passes the saved VICE error address and the saved CPU error status, and takes the zero as "not a VICE fault".
- `kpreemption` in `kernel.o`: the tail of the interrupt exit that switches threads when a kernel thread was preempted, a 100-byte routine at offset 0x19c. Established.
  It calls `kpswtch`, rebuilds the status as bit 0 plus the bits 16 and 2 of the saved status, restores the saved level into the level word, stores that level's mask to the CRIME interrupt enable register at +0x18 and leaves through `exception_leave`. Its other path loads the kernel stack and reports an error through `cmn_err`.
- `proc1` in `kernel.o`: drops to user mode for the first process, a 76-byte routine at offset 0x1b54. Established.
  It stores the level-0 mask of the table at -23880 to the CRIME interrupt enable register at +0x18, zeroes the level word, writes the status 0x8713, clears the byte at -24513, sets the exception program counter to 0x10000000 and executes `eret`.
- `bank_size` in `kernel.o`: the size of one memory bank from its control word, a 24-byte routine at offset 0x10f74. Established.
  It returns 0x8000000 (128 MB) when bit 8 of the control word is set and 0x2000000 (32 MB) when it is clear.
- `addr_to_ibank` in `kernel.o`: gives the internal memory bank of a physical address, a 32-byte routine at offset 0x11104. Established.
  It calls the unnamed bank locator at 0x10f8c with a stack slot for the second result and returns that slot. The locator strips bits 31 and 30 of the address, walks the eight CRIME bank control registers from +0x208 (skipping a register equal to bank 0's), and returns the bank whose base and size cover the address, with `2 * bank` plus one when bit 26 (128 MB parts) or bit 24 (32 MB parts) of the address is set; for an address in no bank it returns -1. Source:
- `szmem` in `kernel.o`: sizes main memory from the CRIME bank registers, a 324-byte routine at offset 0x8e18. Established.
  Unless the size word is already set, it reads the eight bank control registers at +0x208 to +0x240 through the uncached window, adds `bank_size` of bank 0 and of each later bank whose register differs from bank 0's, and stores the total. It then splits the total into the part within the first 256 MB and the rest, converts both and the total to 4 KB pages, clamps them to the page limit in its second argument when that is non-zero, and stores them to the three memory-size words. It returns the total in pages. The first 256 MB are also mapped at 0x40000000, which is why the split is there.
- `last_phys_pfn` in `kernel.o`: the page number just past the last physical page, a 180-byte routine at offset 0x8f5c. Established.
  It sums the bank sizes exactly as `szmem` does, adds 0x40000000 when the sum exceeds 256 MB, adds 4095 and shifts right by 12 to give pages.
- `mace_hwgraph_lookup` in `kernel.o`: finds the MACE device vertex of the hardware graph, an 88-byte routine at offset 0x926c. Established.
  It formats the path "node/io/mace" from three read-only strings and a "%s/%s/%s" pattern, then walks it from the graph root, returning the vertex through its argument.
- `hpc_hwgraph_lookup` in `kernel.o`: finds the HPC vertex, a 96-byte routine at offset 0x1aa08. Established.
  It builds "node/io/gio/hpc" from four strings and walks it from the root the same way, returning the vertex through its argument.
- `gio_hwgraph_lookup` in `kernel.o`: finds the vertex of a GIO slot from its bus address, a 168-byte routine at offset 0x1aa68. Established.
  The address 0xbf000000 selects slot 2, 0xbf400000 slot 0 and 0xbf600000 slot 1, each walked as "node/io/gio/N"; any other address goes to the HPC lookup above.
- `init_all_devices` in `kernel.o`: builds the hardware graph of the board and attaches the on-board devices, a 440-byte routine at offset 0x8a30. Established.
  It adds the vertices "node", then "memory" and "io" below it and "mace" below "io", registers the processor with `add_cpu`, attaches the PCI host, the ISA DMA buffer, the 16550 serial ports and the PC keyboard and mouse under "io", and adds the root-level vertices "scsi", "scsi_ctlr" and "disk". Each failed addition reports "Hardware graph FAILURE" with the name through `cmn_err`. Source:
- `us_delay` in `kernel.o`: busy-waits for a number of microseconds, a 192-byte routine at offset 0x13a68. Established.
  Unless the early-delay flag is clear it uses the loop count from the word at -23992, else 7. It turns the argument into nanoseconds (times 1000) after halving it until it is at most 0x20c49b, and calls `delayloop` once more than the number of halvings.
- `us_delaybus` in `kernel.o`: waits for the bus to drain and then delays, a 52-byte routine at offset 0x13b28. Established.
  It calls `flushbus` first and, if its argument is non-zero, `us_delay` with the argument less one.
- `wbflush` in `kernel.o`: flushes the write buffer, a 16-byte routine at offset 0x11cf8. Established.
  It jumps to `__sysad_wbflush`, the SysAD write-buffer drain that the board's reset code also uses.
- `pte_cachebits` in `kernel.o`: gives the cache attribute of a page-table entry, an 8-byte routine at offset 0x10df0. Established.
  It returns 24, which puts 3 (cached, not coherent) in the three-bit cache field of a MIPS entry.
- `get_cpu_irr` in `kernel.o`: reads the processor identification, a 28-byte routine at offset 0x13610. Established.
  It returns the coprocessor 0 processor-revision register unchanged.
- `flush_cache` in `kernel.o`: writes back and invalidates the primary data cache, a 96-byte routine at offset 0x7d70. Established.
  It calls `__cache_wb_inval` with the base 0x80000000 and a size chosen from the word at -23888 when set, else the primary data cache size, replaced by the two-set cache size when that is non-zero and the other cache flag is clear.
- `copyin` in `kernel.o`: copies from user space, a 88-byte routine at offset 0x3238. Established.
  It fails when the length or the user address is negative or when address plus length passes 0x7fff8000. It sets the halfword at +194 of the current thread (pointed to by -24552) to 2, calls `bcopy`, clears the halfword and returns zero.
- `copyout` in `kernel.o`: copies to user space, a 88-byte routine at offset 0x3290. Established.
  It makes the same checks on the destination, sets and clears the same halfword around a call to `bcopy`, and returns zero.
- `stkscr3` in `kernel.o`: the kernel-stack overflow trap, a 148-byte routine at offset 0x1945c. Established.
  It stores the stack pointer in the overflow word, prints the exception program counter, the stack pointer and the saved frame register, switches to the kernel stack held at -24156 from register zero and prints the return address and the old byte at -24513, which it set to 3. It then selects level 24, stores that level's mask from the table at -23880 to the CRIME interrupt enable register at +0x18, sets bit 0 plus the bits 16 and 2 of the current status, calls `panic` with a fixed message and, if that returns, jumps to `_baduk`.
## Programmed-I/O map routines (`kernel.o`)

The routines below are the kernel's programmed-I/O window layer, the one the driver-writer's manual documents as the `pio_` family. Only the adapter type 10 is served in this build. Each routine was read in full from the 6.5.30 object; the access routines they call (`orb_rmw`, `badaddr`, `wbadaddr` and their siblings) are the bus probes of the section above.

- `pio_mapalloc` in `kernel.o`: builds a window record for a bus address range, a 352-byte routine at offset 0x13710. Established.
  It returns 0 unless its first argument is 10. It then takes a 60-byte zeroed record (`kern_calloc(1, 60)`) and fills it: the adapter type at +0 and the adapter number at +4, the space-kind byte of the caller's space descriptor at +8, the descriptor's base address at +12 and size at +16, the caller's flag word at +24, -1 at +28 and the first seven characters of the caller's name string at +32. A space kind other than 0 or 1 frees the record and returns 0. Otherwise it reserves `(size + 4095) >> 12` kernel pages with `kvalloc(pages, 16, 0)`, stores that address at +20, and writes one entry per page into the kernel page table `kptbl`, at the index of the mapped page (the mapped address plus 0x40000000, shifted right by 12). The entry is the window's bus address masked with -64 and advanced by 4096 per page, or-ed with the flag word `0x40000017`.
- `pio_mapaddr` in `kernel.o`: translates a bus address inside a window to its kernel address, a 44-byte routine at offset 0x13870. Established.
  It loads the window base from +12 and the size from +16 of the record, returns 0 when the address is above base plus size, and otherwise returns the mapped base from +20 plus the distance of the address from the window base. It does not test the address against the lower end of the window; `pio_bcopyin` and `pio_bcopyout` test that themselves, and the six read-modify-write wrappers do not.
- `pio_mapfree` in `kernel.o`: releases a window record and its pages, a 68-byte routine at offset 0x1389c. Established.
  A null record returns at once. Otherwise it frees `(size + 4095) >> 12` kernel pages at the mapped address from +20 with `kvfree` and then frees the record with `kern_free`; it does not clear the page-table entries that `pio_mapalloc` wrote.
- `pio_orb_rmw` in `kernel.o`: the byte OR on a bus address through a window, a 48-byte routine at offset 0x59a4. Established.
  It maps the address with `pio_mapaddr` and passes the result and the mask to `orb_rmw` (offset 0x138e0), which raises the interrupt level with `spl7`, loads the byte, ORs the mask in, and restores the level with `splx` after the store is issued.
- `pio_orh_rmw` in `kernel.o`: the half-word form of the OR wrapper, 48 bytes at offset 0x59d4. Established.
  The body is the same three steps as the byte form, with the half-word routine `orh_rmw` as the target, so the access is a 16-bit load, OR and store under `spl7`.
- `pio_orw_rmw` in `kernel.o`: the word form of the OR wrapper, 48 bytes at offset 0x5a04. Established.
  It differs from the other two OR wrappers only in calling `orw_rmw`, whose access is a 32-bit load, OR and store.
- `pio_andb_rmw` in `kernel.o`: the byte AND on a bus address, 48 bytes at offset 0x5a34. Established.
  After mapping the address it calls `andb_rmw`, which performs a byte load, an AND with the mask and a store inside an `spl7` and `splx` pair, clearing the bits that the mask has at 0.
- `pio_andh_rmw` in `kernel.o`: the half-word AND, 48 bytes at offset 0x5a64. Established.
  It maps the address, then calls `andh_rmw`, the 16-bit counterpart of the byte AND routine, so a half-word of the window is read, masked and written back.
- `pio_andw_rmw` in `kernel.o`: the word AND, 48 bytes at offset 0x5a94. Established.
  It maps the address and calls `andw_rmw` (offset 0x13a28), whose body loads a 32-bit word, ANDs the mask and stores it under `spl7`.
- `pio_badaddr` in `kernel.o`: probes whether a bus address answers a read, 48 bytes at offset 0x5ac4. Established.
  It maps the address through the window and calls `badaddr` with the access size, so the CRIME error status and the MACE error flags are cleared, the probe is read and the error state is checked, as in the bus-error probe section; the result is the probe's return value.
- `pio_badaddr_val` in `kernel.o`: the probing read that also returns the value, 56 bytes at offset 0x5af4. Established.
  It saves the fourth argument (the result pointer), maps the address, and calls `badaddr_val` with the size and that pointer, so the value read is stored through the caller's pointer when the access did not fault.
- `pio_wbadaddr` in `kernel.o`: probes whether a bus address accepts a write of zero, 48 bytes at offset 0x5b2c. Established.
  It maps the address and calls `wbadaddr`, which stores a zero of the given width inside the same error-clearing sequence as `badaddr`.
- `pio_wbadaddr_val` in `kernel.o`: the probing write of a caller-chosen value, 64 bytes at offset 0x5b5c. Established.
  It spills the value to the stack at +44, maps the address, and calls `wbadaddr_val` with a pointer to that copy adjusted by the size, so the routine writes the caller's value, not zero, to the mapped address; subtracting the size and adding 4 points at the low-order end of the stored word, which is where a big-endian value of that width sits.
- `pio_bcopyin` in `kernel.o`: copies from a bus window to kernel memory, a 132-byte routine at offset 0x589c. Established.
  It returns 0 when the bus address is below the window base or at or above base plus size, clips the count to the bytes left in the window, maps the address, and calls a local copy helper (offset 0x5814) that switches on the item size 1, 2, 4 or 8 to a loop of that width and returns -1 for any other size.
- `pio_bcopyout` in `kernel.o`: copies from kernel memory to a bus window, 132 bytes at offset 0x5920. Established.
  It applies the same range test and count clip as `pio_bcopyin`, but passes the mapped bus address as the destination argument of the same width-switching helper, so the data flows the other way.

## Cache-error, idle-wait and PCI-error routines (`kernel.o`)

These routines run on the R10000-class cache-error path and the idle loop of the board's CPU; they reach CRIME only through the shared error and interrupt registers noted in each entry. Read in full from the 6.5.30 object with relocations resolved.

- `early_ecc_init` in `kernel.o`: records where the cache-error stack lives before the allocator runs, a 12-byte routine at offset 0x4a54. Established.
  Its only action is to store its argument into the word at `.bss+0x940`, the slot 0 pointer that `ecc_init` overwrites later and that `ecc_log` reads.
- `ecc_init` in `kernel.o`: sets up the save area for the cache-error handler, a 124-byte routine at offset 0x49d8. Established.
  It allocates 4096 zeroed bytes (`kmem_zalloc(4096, 2304)`), cleans the buffer out of the caches with the local helper at offset 0x4988 (`ecc_cleanRegion` in `r10k_cacherr.c`, called there with the same length), stores the buffer's uncached alias (the address or-ed with 0xa0000000) into the table word at `.bss+0x940`, and cleans that word's 512-byte table as well. A failed allocation prints "Unable to allocate ECCF" through `cmn_err` and returns with the pointer unset.
- `ecc_bitcount` in `kernel.o`: counts the one bits of a 64-bit value, a 68-byte routine at offset 0x55a0. Established.
  It loops, each time clearing the lowest set bit with `x & (x - 1)` (a 64-bit `daddu` with -1) and adding one to the result, and returns 0 at once for a zero argument; the cache-error code uses the count to see whether a syndrome names one bit or several.
- `ecc_same_cache_block` in `kernel.o`: tells whether two physical addresses lie in one cache block of a given cache, a 60-byte routine at offset 0xfb60. Established.
  It calls the helper at offset 0xfaf4 for the block mask of the cache named by its first argument, ANDs both addresses with that mask and returns 1 when the two results are equal, otherwise 0.
- `ecc_force_cache_line_invalid` in `kernel.o`: invalidates one line of the secondary cache, a 92-byte routine at offset 0x4a60. Established.
  It builds a cache-operation record on its stack with the tag fields and check bits zero and the address or-ed with the way number, then calls `cacheOP` twice: first with the operation field set to the caller's type plus 8 and then with the type plus 28, the tag store and the data store of the same line.
- `ecc_log` in `kernel.o`: prints the recoverable cache errors that the handler queued, a 184-byte routine at offset 0x51b4. Established.
  It clears the pending-error byte of the per-CPU area at -23704, takes the frame pointer from `.bss+0x940`, and warns "Some recoverable cache errors may not have been logged" when the 16-entry ring is full (the put index plus 15, masked with 15, equals the trace index). It then walks the ring from the put index to the trace index, passing each 32-byte record to the display helper at offset 0x464c with the label "recoverable" and the flags 276, and stores the trace index back as the new put index.
- `cer_to_hex` in `kernel.o`: formats a cache-error register value as text, a 148-byte routine at offset 0x4abc. Established.
  It converts the value to hexadecimal digits from the table "0123456789abcdef" in `.rodata`, least significant digit first onto a 16-byte stack buffer, appends "x" and "0", and copies the buffer reversed into the caller's buffer, which therefore receives "0x" followed by the digits with no terminator.
- `getecc` in `kernel.o`: reads the CPU's cache-error check-bit register, a 12-byte routine at offset 0x7bf4. Established.
  The body is one `mfc0` from coprocessor-0 register 26 into the return value; `setecc` is its write twin.
- `setecc` in `kernel.o`: writes the CPU's cache-error check-bit register, a 12-byte routine at offset 0x7c00. Established.
  It moves its argument into coprocessor-0 register 26 with `mtc0` and returns; the cache-error code uses it when it injects or rewrites check bits.
- `sendintr` in `kernel.o`: the cross-processor interrupt stub of this uniprocessor board, a 36-byte routine at offset 0xb1a8. Established.
  It sends nothing: it calls `cmn_err` at level 0 with the string "sendintr" and returns. Other boards' versions write an interrupt register; this one has none to write.
- `allowintrs` in `kernel.o`: the hook other boards use to re-enable interrupts after the first processor starts, an 8-byte routine at offset 0xb51c. Established.
  The body is a bare return, so the call does nothing on this board.
- `wait_for_interrupt` in `kernel.o`: idles the CPU until an interrupt arrives, a 160-byte routine at offset 0x1534. Established.
  It reads the processor-revision register and masks the implementation byte; only the values 0x20, 0x21, 0x23, 0x27 and 0x28 take the wait path, and every other CPU returns at once. On those it saves the status register, clears it to disable interrupts, loads the idle flag byte at the address in its argument, and restores the status register and returns when the flag is set; when the flag is clear it continues at `wait_for_interrupt_fix_loc`.
- `wait_for_interrupt_fix_loc` in `kernel.o`: the two instructions that end the idle wait, a 40-byte tail at offset 0x15ac. Established.
  It writes the saved status register back and executes the processor's `wait` instruction in the next slot, so an interrupt cannot arrive between them and be lost.
- `pci_error_intr` in `kernel.o`: the handler for a PCI error interrupt from MACE, a 112-byte routine at offset 0x10b48. Established.
  It reads the 32-bit flag word at 0xbf080004 and the word at 0xbf080000 with `pciio_pio_read32`, and when any of the flag bits under 0x3d000000 is set prints "catastrophic error on PCI bus.flags = 0x%x addr 0x%x" with both words through `cmn_err`. In every case it then writes the register at 0xbf080004 back with `pciio_pio_write32`. That 0xbf080000 is the PCI error address and 0xbf080004 the flag word is inferred from the Linux `struct mace_pci`; the five bits are the data-parity, retry, illegal-command, system-error and parity flags of Linux `mace.h`, which leaves master and target abort out because the bus probes cause them on purpose.
- `idle_err` in `kernel.o`: reports an exception taken on the idle stack, a 164-byte routine at offset 0x10a70. Established.
  It masks the exception code of its second argument; for codes 6 and 7 (instruction and data bus error) it calls `dobuserre`, and for any other code with bit 20 of that argument set it calls `dobuserr`. It always reads the faulting address with `getbadvaddr` and then prints "exception on IDLE stack k1:0x%x epc:0x%x cause:0x%w32x sp:0x%x badvaddr: 0x%x" with `cmn_err` and returns.

- `ecc_compute_sctag_ecc` in `kernel.o`: computes the check bits of a secondary-cache tag, a 120-byte routine at offset 0x5368. Established.
  It walks seven eight-byte mask words from `.data+0x3b8`, ANDs each with the 64-bit tag, calls `ecc_bitcount` on the result and shifts the parity (low bit of the count) into the result, so the seven returned bits are the parities of the seven mask groups, first mask in the top bit.
- `ecc_compute_scdata_ecc` in `kernel.o`: computes the nine check bits and the overall parity of a 128-bit secondary-cache data word, a 168-byte routine at offset 0x54f8. Established.
  For each of nine 24-byte table entries at `.data+0x400` it ANDs the high word with the mask at +8 and the low word with the mask at +16, XORs the two, and shifts the parity of the bit count into the result. It then counts the nine bits and, when that count is odd, sets bit 9 (0x200) of the result.
- `ecc_scache_bits_in_error` in `kernel.o`: classifies a secondary-cache syndrome as one bad bit or more, an 84-byte routine at offset 0x55e4. Established.
  A syndrome of 0 returns 0; otherwise it counts the set bits and returns 1 when the count is 1, 3 or 5 and 2 for any other count.
- `scache_data_bit_error` in `kernel.o`: finds which bit of a secondary-cache data word a syndrome points at, a 280-byte routine at offset 0x53e0. Established.
  It masks the syndrome to nine bits (0x1ff), then tries each bit position 0 to 135 in turn (64 low data bits, 64 high data bits, eight further check bits): for each it builds the syndrome that a one-bit error there would give from the nine table entries at `.data+0x400` (masks at +16, +8 and +0 for the three ranges), returns the position on the first match, and returns -1 when none matches.
<!-- kernel.o:end -->
