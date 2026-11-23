# How the IRIX 6.5.30 IP32 kernel reads the CRIME memory bank registers

The kernel never programs the eight bank controls. The PROM does that before the kernel loads (see
`platforms/ip32/prom-memory.md` in the chips workspace). The kernel reads them to size memory and to say which bank a
physical address is in. This page records those readers and what they assume about the layout the PROM leaves.
Object: `usr/cpu/sysgen/IP32boot/kernel.o` of 6.5.30, `.text` offsets. The 6.5.22 and earlier kernels were not read.
No hardware, no guest run. Labels: **established** (routine read in full), **inferred**, **unknown**. The routine
descriptions are in [functions.md](functions.md) (`bank_size`, `szmem`, `last_phys_pfn`, `addr_to_ibank`).

## Register use

- The only three places that build the bank-control address (`0x14000208`, reached through the uncached window at
  `0xb4000208`) load from it: `szmem` (`0x8e18`), `last_phys_pfn` (`0x8f5c`) and the bank locator at `0x10f8c`.
  Nothing stores to the bank controls (established for these sites; a store built from another constant would not be
  found by this search, **inferred** from the register page's statement that no shipped software writes them).
- Accesses are 64-bit loads, matching the specification's doubleword rule for the memory-controller block.
- Size of a bank: 128 MiB if bit 8 is set, else 32 MiB (`bank_size`, `0x10f74`). Bits 7:5 and the selector are not
  used for the size. No bit means "valid".

## Sizing

`szmem` adds the size of bank 0, then for banks 1 to 7 adds a bank's size only if its whole 64-bit register differs
from bank 0's. This relies on the PROM writing every empty bank as a copy of bank 0 (the PROM's last pass). A
configuration where an empty bank holds any other value, for instance the reset values 1 to 7, is counted as
populated, with the size its bit 8 gives (established arithmetic). It then splits the total: pages up to 256 MiB, and
the part above 256 MiB as a second count, both clamped to a caller limit when that is nonzero.
`last_phys_pfn` sums the same way and adds `0x40000000` when the sum exceeds 256 MiB, so RAM above 256 MiB is
addressed through the CRIME full window at physical `0x40000000` plus its decode offset, and RAM below it through the
low alias (established arithmetic; the placement reading is **inferred** and agrees with the public Linux sizing
loop, which adds the same constant to any bank that ends above 256 MiB).

The kernel assumes the banks tile decode offset 0 upward with no gap. It never reads a selector to size, so a hole
between banks would be counted as RAM (inferred from the sum).

## Which bank holds an address

The locator (`0x10f8c`, behind `addr_to_bank` at `0x110e8` and `addr_to_ibank` at `0x11104`) walks banks 0 to 7,
skips any bank whose register equals bank 0's after bank 0 itself, and for each other bank compares the physical
address (top two bits stripped) with the base `selector << 25` after masking it to bits 29:25 (32 MiB part) or 29:27
(128 MiB part). It returns the bank number, or minus one when none matches.

The second result, used by the tile allocator to give each memory-bank boundary its own class, is `2 * bank` plus one
when address bit 26 (128 MiB part) or bit 24 (32 MiB part) is set, else `2 * bank`. That is an internal bank inside
the external bank, taken from an address bit, not from a register field (established arithmetic; reading it as the
SDRAM internal bank or the front/back side of a two-sided DIMM is **inferred**).

## Layout consequences for a model

- A 128 MiB bank with `0x100 | 4k` and a 32 MiB bank with `k` both work with these readers. A selector in a 128 MiB
  register whose low two bits are set would give an unaligned base here (the PROM never writes one).
- Because empty banks must read equal to bank 0's value, a model that resets banks 1 to 7 to their documented reset
  values and then runs the kernel without the PROM sees seven phantom banks.
- Bank registers written by the PROM in the order "128 MiB banks first, then 32 MiB banks" (see the chips page) put
  RAM contiguous from offset 0; the kernel's total and its 256 MiB split agree with that and with nothing else.

## Not read

The path from the sizing results to the page-frame database, and how `hinv` formats the main memory line, were not
read. `scrub_memory` is a doubleword load and store of the same location, called from the ECC error path
and from a range scrub; the kernel has no boot-time scrub of all RAM in the routines read here (**inferred**,
absence only in what was read).
