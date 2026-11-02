# CRIME, MACE and GBE diagnostic messages

Text the O2 graphics kernel code prints, or passes to its error reporter, and where each message is printed. Each entry gives the message, the routine that prints it, the condition on the path, and a label. The routines come from the shipped IRIX 6.5.30 kernel objects in `usr/cpu/sysgen/IP32boot/`: `crime.a` members and `mace.o`.

Addresses are offsets from the start of the member's `.text` section, as `objdump -dr` shows them for the relocatable object. `cmn_err` is the kernel's message routine; its first argument is the level and the second the format. A message is printed only on the path named, so an unnamed branch elsewhere does not print it.

Labels: **established** means read from the instructions of that path; **inferred** means a reasoned reading that the code does not state; **unknown** means the text names something the code does not show.

## Kernel driver messages (`crime.a`, `mace.o`)

- `Unexpected empty interrupt with code %d`: `crime.a(crime.o)`, `crimeFifoEmptyHandler` (0x0), call at 0x110. **Established.** The code is the word at the handler's argument +544 (0x220), loaded at 0x8. The message prints on the path where that word is neither 2 (branch at 0x20) nor 1 (branch at 0x28). The level argument is 5.

- `Cfifo Overflow! Current level at %d (ctl 0x%x)`: `crime.a(crime.o)`, `crimeFifoFullHandler` (0x1a8), call at 0x348, level argument 0. **Established.** The path is entered from the branch at 0x1d0 when the FIFO level field is 65 or more. The field is bits 18 to 24 of the word at the CRIME register block +0x4000 (loads at 0x1b4 to 0x1bc). The second printed value is `level - 1`, stored at 0x334 (`addiu a2,v0,-1`). The third is the word at +0x400 (load at 0x344). The register block pointer comes from the handler's argument at +120 (0x1b0). **Inferred:** that the field counts FIFO entries, as the text says.

- `unexpected fifo full interrupt`: `crime.a(crime.o)`, `crimeFifoFullHandler`, call at 0x360. **Established.** Taken when the word at the handler's argument +60 (0x3c) is nonzero (test at 0x2d8, branch at 0x2dc to 0x358). The message has no argument; the path returns to 0x2e8.

- `fifo callback`: `crime.a(crime.o)`, `crimeEmptyWaitTimeout` (0x120), passed as the second argument of the `crimeError` call at 0x160. **Established.** The path is taken when the word at +544 (0x220) is nonzero (test at 0x138 and 0x13c). The reason string appears in the message below.

- `crimeError: resetting graphics from %s`: `crime.a(crime.o)`, `crimeError` (0x57d4), call at 0x57f0, level argument 4. **Established.** Printed on every call. The `%s` argument is the caller's second argument (moved to a2 at 0x57d4). After the message the routine waits 10 units, clears the word at +1032, and flushes the bus. Known caller: `fifo callback` (above).

- `Cfifo wait timeout.`: `crime.a(crime.o)`, `crimeFifoWaitTimeout` (0x2b34), call at 0x2b4c, level argument 4. **Established.** This is the first action of the routine. `crmFifoWait` registers it as the timeout callback (`timeout` call at 0x2d1c with the address of `crimeFifoWaitTimeout`). After the message the routine disables interrupt 25 and sets the word at +548 (0x224) of its argument to 1.

- `crime fifo timeout after 0x%x us`: `crime.a(crime.o)`, `crmFifoWait` (0x2b94), call at 0x2dac, level argument 4. **Established.** The value printed is the third argument on entry (saved in s4 at 0x2bcc, moved to a2 at 0x2da4). The path is the one that sets the word at +548 to 1 (store at 0x2c7c) and then branches to the message (0x2c80). The branch at 0x2c74 selects it when the register `ra` is zero, which the `slt` at 0x2c50 sets. **Inferred:** that `ra` marks the loop running out of time.

- `crime idle timeout after 0x%x us`: `crime.a(crime.o)`, `crmIdleWait` (0x2dbc), call at 0x2e44, level argument 4. **Established.** The value printed is the second argument on entry, saved at sp+8 (0x2dc0) and reloaded at 0x2e40. The message prints when the countdown in s0 (set from that argument at 0x2dd8) reaches zero at the test at 0x2e1c. Each pass calls `us_delay` with 1. The loop exits early with no message when bit 28 of the word at the CRIME register block +0x4000 is set and the FIFO level field is zero (tests at 0x2df4 and 0x2dfc). **Inferred:** that the count is in microseconds, as the text says.

- `crime: swapbufd cannot context switch`: `crime_retrace.o`, `crmSwapBufd` (0x1cdc), call at 0x20d8, level argument 1. **Established.** Reached when `RRM_CheckValidFault` (call at 0x1e54, second argument 0) returns a negative value (`bltz` at 0x1e5c). The path first calls `mrunlock` (0x20c8), then prints.

- `crimeschedswapbuf: wid %d already swapping buffers`: `crime_retrace.o`, `crimeSchedSwapBuf` (0x20f0), call at 0x22c0, level argument 4. **Established.** The `%d` is the second argument on entry (wid); the routine never writes that register. The window index must be 0 to 31 (tests at 0x2104 and 0x2110; out of range returns 22 at 0x21e8). The message prints when the byte at (table + 24 x wid + 56) is nonzero, where the table pointer is the word at the first argument +140 (tests at 0x2124 and 0x2128). The return value on this path is 16 (`li v0,16` in the delay slot at 0x22cc).

- `crm memory leak in destroypb`: `crime_tiles.o`, `crmDestroyPbuffer` (0xf5c), call at 0x1024, level argument not set on this path. **Established.** Reached when `psema` (call at 0xf7c, on the word at ([[s0+32]+28]+4)) returns nonzero (branch at 0xf84). On this path the code frees nothing and returns, while the fall-through path frees the chunks. The path does not set the level register, so the printed level is whatever `a0` holds after the call. **Inferred:** that the text names a leak is a guess from the message; the path's visible effect is a failed semaphore wait.

- `\ncrime_i2c: ERROR! Hot Probe of 7of9/DCD not allowed`: `crime_i2c.o`, `crime_i2cFpHotProbe` (0x16d8), call at 0x1860, level argument 4. **Established.** The message starts with a newline. The path is taken when the byte at the probe state +46 equals 132 (test at 0x1708), or when the byte at +44 is nonzero (test at 0x1714). The probe state pointer is the word at the argument +124 (0x16e8). **Unknown:** what 7of9 and DCD are; the code does not say.

- `mace_stray() interrupt - CRIME int = %d`: `mace.o`, `mace_stray` (0x178), call at 0x190, level argument 4. **Established.** The `%d` argument is the address of the external symbol `intr` (`addiu` at 0x194, not a load), so the printed number is that address, not an interrupt number. The routine does nothing else. **Inferred:** that the author meant the interrupt number; the code passes the address.
