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

### Register `intmask`

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

### Register `cpu_error_stat`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
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

## Words

| Word | Width | Grade | Source |
|---|---|---|---|
| `INTBIT` | 32 | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings |

### Word `INTBIT`

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
| `ID_LOW_BYTE_DRAFT` | 0xb1 | inferred | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings | draft specification 1.5 value, never seen on shipped parts |
| `ID_LOW_BYTE_SHIPPED` | 0xa1 | established | published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings | the only low byte accepted for graphics |
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
