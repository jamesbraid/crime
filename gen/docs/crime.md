# O2 CRIME memory controller and CPU interface registers

<!-- generated from defs/crime.toml by defs-gen - do not edit, change the source -->

CRIME memory controller and CPU-interface registers, and the interrupt input bit positions.

Unit `crime`, macro prefix `CRIME`.
Default source: published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `id` | 0x0 | r | 64 |  |  | unknown | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |
| `control` | 0x8 | rw | 64 |  |  | 0x0 | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |
| `intstat` | 0x10 | r | 64 |  |  | unknown | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |
| `intmask` | 0x18 | rw | 64 |  |  | 0x0 | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |
| `softint` | 0x20 | rw | 64 |  |  | 0x0 | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |
| `hardint` | 0x28 | rw | 64 |  |  | unknown | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |
| `watchdog` | 0x30 | rw | 64 |  |  | 0x0 | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |
| `timer` | 0x38 | rw | 64 |  |  | 0x0 | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |
| `cpu_error_addr` | 0x40 | r | 64 |  |  | unknown | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |
| `cpu_error_stat` | 0x48 | rw | 64 |  |  | 0x0 | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |
| `cpu_error_ena` | 0x50 | rw | 64 |  |  | unknown | inferred | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |
| `vice_error_addr` | 0x58 | r | 64 |  |  | unknown | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |
| `mem_control` | 0x200 | rw | 64 |  |  | 0x0 | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |
| `mem_bank_control` | 0x208 | rw | 64 | 8 |  | unknown | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |
| `mem_error_stat` | 0x250 | rw | 64 |  |  | unknown | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |
| `mem_error_addr` | 0x258 | r | 64 |  |  | unknown | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |
| `mem_error_ecc_syn` | 0x260 | r | 64 |  |  | unknown | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |
| `mem_error_ecc_chk` | 0x268 | r | 64 |  |  | unknown | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |
| `mem_error_ecc_repl` | 0x270 | rw | 64 |  |  | unknown | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |
| `cpu_error_stat_15` | 0x4048 | rw | 64 |  |  | 0x0 | inferred | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |

### Register `id`

The CPU interface registers, 0x14000000 to 0x14004048, take double-word accesses only (established, [spec] PDF 113). The same page asks, with a question mark, whether the memory control and rendering addresses follow that rule too, so the wider rule is unknown. Table 5-8 gives the 1.5 reset value as 0xb1, and its note gives the CRIME 1.1 ID as 0xa1 (established, [spec] PDF 114).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 7:4 | `family` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 3:0 | `rev` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |

### Register `control`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 13 | `sysadc_gen_enable` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 12 | `sysadc_check_enable` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 11 | `cold_reset` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 10 | `soft_reset` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 9 | `watchdog_enable` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 8 | `endian` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |

### Register `intstat`

Read-only (established, [spec] Table 5-10, PDF 116). Each bit is the OR of the matching bit of the hardware interrupt register and of the software interrupt register (established, [spec] PDF 106).

### Register `intmask`

A status bit reaches the processor only when the same bit here is set. The status register is ANDed with this one, bit for bit, to make the interrupts (established, [spec] PDF 106 and PDF 233).

### Register `softint`

### Register `hardint`

### Register `watchdog`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 20 | `warm_reset_timeout` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 19:0 | `count` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |

### Register `timer`

Free-running counter. The specification defines bits 31:0 as read/write with reset zero and gives no field above bit 31 (established, [spec] PDF 113 places it at offset 0x38 and Table 5-15 on PDF 119 defines the low 32 bits). The same page gives a nominal rate of about 66.7 MHz (established as spec prose; not an oscillator measurement). NetBSD's crime header masks 48 bits, so the width above bit 31 is open (see docs/open-questions.md).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:0 | `count` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |

### Register `cpu_error_addr`

Records address bits 33:2 of a failed CPU programmed-I/O access, in the low 32 bits (established, [spec] Table 5-16, PDF 120). The spec records it for a SysAD parity error or an invalid address. Whether clearing the status also clears this register or the interrupt cause is unknown. The spec says software would like bits 39:34 captured as well (established, [spec] PDF 233); see the status register.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:0 | `addr_33_2` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |

### Register `cpu_error_stat`

Set by hardware, cleared by software (established, [spec] Table 5-17, PDF 120). This is the CRIME 1.1 offset; the 1.5 specification gives the register's address as 0x14004048 (see cpu_error_stat_15). Bits 1 and 0 are no longer supported on 1.5 because SysADC is not used (established, PDF 120). Bits 8:3 hold address bits 39:34 on 1.5 "if it can be implemented"; whether fitted parts do is unknown. The spec does not define "invalid address", so whether a refused CPU access sets bit 2 is unknown.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 8:3 | `addr_39_34` | unknown |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 2 | `illegal_addr` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 1 | `vice_write_parity` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 0 | `cpu_write_parity` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |

### Register `cpu_error_ena`

### Register `vice_error_addr`

### Register `mem_control`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 1 | `use_repl_check` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 0 | `ecc_enable` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |

### Register `mem_bank_control`

Bits 7:5 are reserved and read as zero (established, [spec] PDF 150 and 152, CRIME 1.5 specification rev 0.3).

Array of 8 registers, stride 8.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 8 | `sdram_geometry` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 4:0 | `base_match` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |

### Register `mem_error_stat`

Reset values differ per bank, so the REG line's reset=unknown stands for none of them: bank n resets to n for n = 0 to 7
(established, [spec] table 6-14; no shipped software writes banks 2 to 7). With 32 MiB parts that puts bank n at n * 32 MiB.
#define CRIME_MEM_BANK_CONTROL_RESET_BASE 0 /* established: reset of bank 0
#define CRIME_MEM_BANK_CONTROL_RESET_STEP 1 /* established: reset of bank n is BASE + n * STEP

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 27 | `invalid_addr_rmw` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 26 | `invalid_addr_write` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 25 | `invalid_addr_read` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 24 | `ecc_error_rmw` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 23 | `ecc_error_read` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 22 | `multiple_errors` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 21 | `hard_error` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 20 | `soft_error` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 18 | `cpu_access` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 17 | `vice_access` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 16 | `gbe_access` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 15 | `re_access` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 14:8 | `re_id` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 7 | `mace_access` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 6:0 | `mace_id` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |

### Register `mem_error_addr`

### Register `mem_error_ecc_syn`

### Register `mem_error_ecc_chk`

### Register `mem_error_ecc_repl`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 7:0 | `check` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |

### Register `cpu_error_stat_15`

The CRIME 1.5 specification places the CPU error status register here, on its own 16 KiB page so that it can be mapped to user programs (established, [spec] Table 5-7 and its note, PDF 113). Bit layout as in Table 5-17 (PDF 120). The grade stays inferred: whether a fitted part implements this offset is not established.

## Words

| Word | Width | Grade | Source |
|---|---|---|---|
| `INTBIT` | 32 | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |

### Word `INTBIT`

Interrupt status bit positions, from the CRIME 1.5 specification's Table 5-5 (PDF 106 to 108; established). Each bit is ORed with others onto one R10000 interrupt line, IP2 to IP6, given by the CRIME_IP*_CAUSES constants. CRIME signals the processor when a bit in a group asserts or de-asserts (established, PDF 106). Table 5-6 (PDF 109) pairs IP2 to IP6 with cause register bits 10 to 14 and SysAD bits 0 to 4. The prose on PDF 109 and PDF 110 swaps bits 20 and 21. Table 5-5, Table 5-10 (PDF 116) and the revision note on PDF 233 do not, so bit 20 is the CPU interface error and bit 21 the memory error (established).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31 | `vice` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 30 | `syscorerr` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 29 | `soft1` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 28 | `soft0` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 27 | `re_idle` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 26 | `re_full` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 25 | `re_empty` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 24 | `re_idle_edge` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 23 | `re_full_edge` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 22 | `re_empty_edge` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 21 | `mem_error` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 20 | `cpu_error` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 19 | `gbe3` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 18 | `gbe2` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 17 | `gbe1` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 16 | `gbe0` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| 15:0 | `mace` | established |  | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `ID_FAMILY_SHIPPED` | 0xa0 | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings | family nibble of every shipped part, revision nibble 1-15 |
| `ID_LOW_BYTE_DRAFT` | 0xb1 | inferred | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings | draft specification 1.5 value, never seen on shipped parts; the spec gives it as the 1.5 reset value (established, PDF 114), but no shipped part has been read |
| `ID_LOW_BYTE_SHIPPED` | 0xa1 | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings | the only low byte accepted for graphics |
| `IP2_CAUSES` | 0x8fc00038 | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings | INTBIT bits on processor level IP2: VICE (31), rendering engine (27 to 22), MACE misc, serial and parallel, Ethernet (5, 4, 3); Table 5-5, PDF 106 to 108 |
| `IP3_CAUSES` | 0xfff07 | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings | INTBIT bits on IP3: GBE (19 to 16), MACE PCI inputs (15 to 8), MACE video (2 to 0) |
| `IP4_CAUSES` | 0x10000000 | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings | INTBIT bit on IP4: software interrupt 0 (28) |
| `IP5_CAUSES` | 0x20000040 | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings | INTBIT bits on IP5: software interrupt 1 (29), MACE audio (6) |
| `IP6_CAUSES` | 0x40300080 | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings | INTBIT bits on IP6: CPU SysCorErr (30), memory error (21), CPU interface error (20), MACE PCI error (7) |
| `MEM_BANKS` | 0x8 | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings | memory bank control registers |
| `MEM_BANK_CONTROL_RESET_BASE` | 0x0 | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings | reset of bank 0 |
| `MEM_BANK_CONTROL_RESET_STEP` | 0x1 | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings | reset of bank n is BASE + n * STEP |
| `PHYS_FULL_MEM_BASE` | 0x40000000 | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings | all memory, up to 1 GiB; the only memory window GBE and (with the no-ECC alias) VICE see |
| `PHYS_FULL_MEM_BYTES` | 0x40000000 | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| `PHYS_HIGH_ALIAS_BASE` | 0x20000000 | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings | as a window; its responder is open in the specification |
| `PHYS_HIGH_ALIAS_BYTES` | 0x20000000 | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings | 512 MiB; inferred to be the upper half of the full window |
| `PHYS_LOW_ALIAS_BASE` | 0x0 | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings | first 256 MiB, so KSEG0 needs no TLB entry |
| `PHYS_LOW_ALIAS_BYTES` | 0x10000000 | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| `PHYS_NOECC_MEM_BASE` | 0x80000000 | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings | skips ECC check and correction on reads and writes; ECC is still generated on writes |
| `PHYS_NOECC_MEM_BYTES` | 0x40000000 | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |
| `WATCHDOG_COUNT_BITS` | 0x14 | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |  |

## Test vectors

A vector is a value recorded from a source. An example only shows the layout.

| Target | Value | Kind | Decoded |
|---|---|---|---|
| `id` | 0xa1 | vector | family=10, rev=1 |
| `control` | 0x2200 | vector | sysadc_gen_enable=1, sysadc_check_enable=0, watchdog_enable=1 |
| `cpu_error_stat` | 0x4 | vector | illegal_addr=1, cpu_write_parity=0 |
| `INTBIT` | 0x10000 | vector | gbe0=1, gbe1=0, mace=0 |
| `INTBIT` | 0x4000000 | vector | re_full=1, re_empty=0 |
