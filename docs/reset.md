# Rendering engine initialisation and error recovery, and the kernel's use of the memory transfer engine

What the IRIX 6.5.30 kernel writes to bring the rendering engine to a known state, how it recovers after an engine error, and how its own bulk-memory helpers drive the memory transfer engine (MTE). Register names are in [CRIME_RE.h](../CRIME_RE.h) and [MTE.h](../MTE.h). Labels: **established** (read from the cited function in the decompilation under `crime_kernel/decomp/` and checked against the object disassembly), **inferred**, **unknown**. `k:` is the kernel (`crime_init.o`, `crime.o`, `kernel.o`).

## Initialisation (`k:crime_init:crimeInitHW`)

Order of the writes (established):
1. Write `+0x408` with 0. Write GBE `+0x70004` (cursor control, `GBE_CRS_CTL`; bit 0 enables) with 0.
2. Write the interface-buffer control register (`IB_CTL`, `+0x400`) with the boot value `0x0fefff0a` (fields in `CRIME_RE.h`).
3. Clear the three frame-buffer TLBs (`+0x1000`, `+0x1200`, `+0x1400`, 64 doublewords each), pausing after every eighth entry to wait for the interface buffer to drain (`crmFifoWait`, 4096 polls) and writing 0 to `+0x4008`.
4. Clear linear TLBs A and B (`+0x1700`, `+0x1780`, 16 doublewords each), wait for the buffer to drain and write `+0x4008` with 0.
5. Clear the texture TLB (`+0x1600`, 28 doublewords) and write `+0x4008` with 0.
6. If the caller asks for it, program the thresholds for the CPU module (values in `CRIME_RE.h`: below implementation 0x23 or equal to 0x27 the full level is 20 and the empty level 0; other implementations 48 and 24), wait for idle (`crmIdleWait`, 4096 polls), write the final `IB_CTL` and flush the bus.

The colour-index TLB (`+0x16e0`) is not cleared by this routine (established as an absence in the function). The reset state of every register is unknown from the kernel: it never reads any of them back before writing.

Inferred: the `+0x408` write is a soft reset or flush of the rendering engine and its interface buffer. Basis: it is the first write of initialisation, and `crimeError` below writes it and then has to reprogram `IB_CTL` (a write-only register), which suggests the reset returns `IB_CTL` to its power-on value. Neither claim is shown by a source here; NetBSD does not name `+0x408` (its `crimereg.h` only has the CRIME control soft and hard reset bits at `0x0400` and `0x0800`, which this routine does not touch).

## Error recovery (`k:crime:crimeError`)

Called when a drain or idle wait times out (`crmSavePP`, `crimePcxSwap`) and when the timeout that guards the wait for the buffer-empty interrupt (input 25) expires (`crimeEmptyWaitTimeout`), established: print a driver warning at level 4, write `+0x408` with 0, delay 10 microseconds, rebuild the control word from the kernel's four threshold variables as `count | stall << 7 | empty << 14 | full << 21` and write it to `IB_CTL`, flush the bus. It does not clear the TLBs, re-run `crimeInitHW`, or touch the shadow record, so state that was queued is lost without notice (inferred from the function's body, which is short and shows no other writes).

## Kernel bulk zero and copy through the MTE

The kernel uses the MTE to clear and copy host memory (`early_mte_zero`, `mte_zero`, `mte_copy`, `mte_set_tlb`, `mte_fifo_wait`, `mte_spin`, `mte_delay` in `kernel.o`, `crime_kernel/disasm/kernel/kernel.text.s`). The MTE reads and writes host memory only through the linear TLBs (established: both source and destination select codes in the mode words below are the linear codes of `MTE.h`).

- Clear (`early_mte_zero`, `mte_zero`; established): mode `0x11` (clear, destination select 4 = linear A, destination ECC bit 1) is written through the start alias (`+0x3800`) after BYTEMASK (`+0x3008`) = -1, FG (`+0x3018`) = 0, DST0 (`+0x3030`) = the start address, DST1 (`+0x3038`) = start + length - 1. Each pass covers at most `0x20000` bytes; the loop repeats with the next chunk. Before each pass it waits for 5 free interface-buffer slots (`mte_fifo_wait`).
- Copy (`mte_copy`; established): mode `0x897` (copy, source select 4 = linear A, destination select 5 = linear B, both ECC bits, 8-bit depth field 0): source in linear A, destination in linear B. It writes SRC0 (`+0x3020`), DST0 (`+0x3030`), SRC1 (`+0x3028`) = SRC0 + n - 1, DST1 (`+0x3038`) = DST0 + n - 1, BYTEMASK = -1, then the mode through the start alias. It waits for 6 free slots first. The chunk is the smaller of the remaining length and what both TLBs mapped.
- Address given to the MTE (established): the SRC and DST words carry the same address the kernel passes in as the host address (no translation by the kernel) and the TLB is loaded to translate that address back to itself; the function takes `address >> 12` as the page number. Inferred: the callers pass physical addresses (the code uses no `kvtophys`, and `early_mte_zero` runs before virtual memory); that these words are plain host addresses and not tile addresses is therefore implied only for linear-select operations. The byte-column and row form of the address word (`docs/mte.md`) is for tile selects and does not appear here.
- Linear TLB loading (`mte_set_tlb`; established): the TLB index is `(page >> 1) & 15`, so address bits 16:13 select one of 16 doublewords at `+0x1700` (A) or `+0x1780` (B). Each doubleword holds two entries, the even page in bits 63:32 and the odd page in bits 31:0, each `0x80000000 | page number`; the mapping covers 32 pages (128 KiB) per load, which is why the chunk is `0x20000`. A start address with an odd page number loads the preceding even page too. The function returns a bit mask of the doublewords it wrote and a byte count (8192 per doubleword) and the caller passes the masks to `crimeRestore` afterwards (see `docs/context.md`). It waits for enough free interface-buffer slots (`mte_fifo_wait`, one per doubleword) before writing.
- Waiting (`mte_fifo_wait`; established): the free-slot test is `64 - ((status >> 18) & 0x7f) >= n`, polling every microsecond, which confirms a 64-entry interface buffer and that status bits 24:18 are the fill level.
- Completion (established from the object code, inferred as to intent): `mte_spin` compiles to a test of `(status < 1)` ANDed with `0x02000000`, which is always zero, so it never waits. The constant is status bit 25, the MTE-idle bit NetBSD names `CRIME_DE_MTE_IDLE`; the intended wait for it is not effective as shipped. `mte_delay` returns `0xffffff` unconditionally because `crimeLockOut` always returns 1.

## Answers for the MTE rows

- DMA: the MTE has no separate engine for host memory; host transfers are MTE operations with a linear-TLB source or destination (established). Kernel use is above. Whether the MTE reads through the same TLB entries when a rendering primitive is in flight is unknown.
- Interrupts: the kernel registers no MTE-specific interrupt. The only engine interrupts IRIX uses are the interface-buffer empty and full levels (inputs 25 and 26, `CRIME.h`); MTE operations use the same buffer and are paced by `mte_fifo_wait`, not by an interrupt (established as an absence in `k:crime`, `kernel.o`). Whether the hardware raises its own MTE-done interrupt is unknown.
- Reset: no MTE-specific reset is written (established as an absence); the engine-wide `+0x408` write in `crimeInitHW` and `crimeError` is the only candidate (inferred).

## Unknown

- The register at `+0x408` by name, and which units it resets.
- Reset values of the rendering and MTE registers.
- Whether the MTE's linear TLB lookup tags the address or simply indexes by bits 16:13.
