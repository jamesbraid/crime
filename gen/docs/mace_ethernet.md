# O2 MACE Fast-Ethernet diagnostic interrupt request and transmit status vector

<!-- generated from defs/mace_ethernet.toml by defs-gen - do not edit, change the source -->

The diagnostic register at offset 0x58 of the MACE Fast-Ethernet block: a write sends an interrupt update packet, and a read returns the status vector of the last transmit. Offsets are from the block base (constant BLOCK_BASE). The rest of the Fast-Ethernet block has no entry yet.

Unit `mace_ethernet`, macro prefix `MACE_ETHERNET`.
Default source: published MACE 2.0 I/O ASIC specification (printed pages 70, 78, 79, 173, 175, 179 and 181).

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `interrupt_request` | 0x58 | w | 64 |  |  | unknown | established | published MACE 2.0 I/O ASIC specification (printed pages 70, 78, 79, 173, 175, 179 and 181) |

### Register `interrupt_request`

Write-only diagnostic port. Each write generates one interrupt update packet for the Ethernet tag, carrying bits 31:0 of the write (established, printed page 70). Reads at this offset return the last transmit status vector instead, see TX_STATUS_VECTOR (established, printed page 70). No reset value is given (printed page 70). All registers in the block are accessed as 64-bit programmed I/O (established, printed page 70). Whether the upper 32 bits of a 64-bit write are used, and whether narrower accesses work, is not stated.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:16 | `write_enable` | inferred |  | published MACE 2.0 I/O ASIC specification (printed pages 70, 78, 79, 173, 175, 179 and 181) | Enable for each of the sixteen interrupt slots. Bit 16 + j enables slot j. The packet layout names these bits 'Interrupt Bit Write Enables' (established, printed page 175); the register's own table does not say it feeds the packet, so the mapping is inferred. |
| 15:0 | `value` | inferred |  | published MACE 2.0 I/O ASIC specification (printed pages 70, 78, 79, 173, 175, 179 and 181) | New value for each enabled slot: bit j is written to slot j. The packet layout names these bits 'Interrupt Bits' (established, printed page 175); the mapping from the register is inferred as above. |

## Words

| Word | Width | Grade | Source |
|---|---|---|---|
| `TX_STATUS_VECTOR` | 64 | established | published MACE 2.0 I/O ASIC specification (printed pages 70, 78, 79, 173, 175, 179 and 181) |

### Word `TX_STATUS_VECTOR`

Transmit status vector. The MAC unit supplies it after each transmit, and it is written over the first doubleword of the transmit message in the ring (established, printed pages 78 and 79). A read of Interrupt Request at offset 0x58 returns it (established, printed page 70). The published layout is below. No reset value is given, and which failures update the vector is not stated (printed pages 70 and 79).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 63 | `one_filled` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70, 78, 79, 173, 175, 179 and 181) | Always one (established, printed page 79). |
| 62:29 | `zero_filled` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70, 78, 79, 173, 175, 179 and 181) | Always zero (established, printed page 79). |
| 28 | `late_collision_drop` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70, 78, 79, 173, 175, 179 and 181) | Transmit dropped for late collision (established, printed page 79). |
| 27 | `excessive_deferral` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70, 78, 79, 173, 175, 179 and 181) | Transmit canceled for excessive deferral (established, printed page 79). |
| 26 | `excess_collisions` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70, 78, 79, 173, 175, 179 and 181) | Transmit dropped for excess collisions (established, printed page 79). |
| 25 | `underrun` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70, 78, 79, 173, 175, 179 and 181) | Transmit aborted for underrun (established, printed page 79). |
| 24 | `excessive_length` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70, 78, 79, 173, 175, 179 and 181) | Transmit aborted for excessive length (established, printed page 79). |
| 23 | `completed` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70, 78, 79, 173, 175, 179 and 181) | Transmit completed successfully (established, printed page 79). |
| 22 | `deferred` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70, 78, 79, 173, 175, 179 and 181) | Packet deferred on at least one attempt (established, printed page 79). |
| 21 | `crc_error` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70, 78, 79, 173, 175, 179 and 181) | CRC error seen on at least one attempt (established, printed page 79). |
| 20 | `late_collision` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70, 78, 79, 173, 175, 179 and 181) | Late collision seen on at least one attempt (established, printed page 79). |
| 19:16 | `collision_retries` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70, 78, 79, 173, 175, 179 and 181) | Collision retry count. The table prints this field as 16:19 (established, printed page 79). |
| 15:0 | `length` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70, 78, 79, 173, 175, 179 and 181) | True transmit length in bytes (established, printed page 79). |

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `BLOCK_BASE` | 0x1f280000 | established | published MACE 2.0 I/O ASIC specification (printed pages 70, 78, 79, 173, 175, 179 and 181) | physical base of the Fast-Ethernet block, PIO select 101 and CRIME PIO tag 0x08 (printed page 181) |
| `INTERRUPT_SLOT` | 0x3 | established | published MACE 2.0 I/O ASIC specification (printed pages 70, 78, 79, 173, 175, 179 and 181) | MACE interrupt slot of the Fast-Ethernet interface (printed page 179, Table 90) |
| `INTERRUPT_UPDATE_TAG` | 0xc | established | published MACE 2.0 I/O ASIC specification (printed pages 70, 78, 79, 173, 175, 179 and 181) | source tag of the Ethernet interrupt update packet (printed page 173) |
