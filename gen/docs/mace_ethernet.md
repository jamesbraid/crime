# O2 MACE Fast-Ethernet block: registers, DMA message formats and diagnostic port

<!-- generated from defs/mace_ethernet.toml by defs-gen - do not edit, change the source -->

The MACE Fast-Ethernet block: MAC control, interrupt status, transmit and receive DMA control, the transmit ring, the receive cluster FIFO, the PHY bus and the station-address filter. Offsets are from the block base (constant BLOCK_BASE). Diagnostic transmit queue registers, the backoff seed and the incoming message queue have no entry yet.

Unit `mace_ethernet`, macro prefix `MACE_ETHERNET`.
Default source: published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181).

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `mac_control` | 0x0 | rw | 64 |  |  | 0x20000001 | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) |
| `interrupt_status` | 0x8 | rw | 64 |  |  | 0x0 | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) |
| `dma_control` | 0x10 | rw | 64 |  |  | 0x0 | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) |
| `interrupt_delay` | 0x18 | rw | 64 |  |  | 0x0 | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) |
| `tx_interrupt_alias` | 0x20 | w | 64 |  |  | 0x0 | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) |
| `rx_interrupt_alias` | 0x28 | w | 64 |  |  | 0x0 | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) |
| `tx_ring_pointers` | 0x30 | rw | 64 | 2 |  | 0x0 | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) |
| `rx_fifo_pointers` | 0x40 | r | 64 | 3 |  | 0x0 | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) |
| `interrupt_request` | 0x58 | w | 64 |  |  | unknown | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) |
| `phy_data` | 0x60 | rw | 64 |  |  | 0x0 | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) |
| `phy_address` | 0x68 | rw | 64 |  |  | 0x0 | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) |
| `phy_read_start` | 0x70 | w | 64 |  |  | unknown | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) |
| `station_address` | 0xa0 | rw | 64 |  |  | unknown | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) |
| `secondary_station_address` | 0xa8 | rw | 64 |  |  | unknown | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) |
| `multicast_filter` | 0xb0 | rw | 64 |  |  | unknown | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) |
| `tx_ring_base` | 0xb8 | rw | 64 |  |  | unknown | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) |
| `rx_fifo_data` | 0x100 | rw | 64 | 32 |  | unknown | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) |

### Register `mac_control`

MAC configuration and the MAC core reset. Bits not listed read zero (printed page 70). Reset sets core reset (bit 0) and the read-only revision field to 1, so the reset value is 0x20000001 (printed page 71).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:29 | `revision` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Read-only implementation revision. 0 is the initial implementation and 1 is the first with improved transmit concatenation support (printed page 71). |
| 28:22 | `ipg_r2` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Gap before transmitting after the chip has received a packet. The value may need adjusting for PHY delay (printed page 71). |
| 21:15 | `ipg_r1` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Resets the gap timer when carrier sense goes active within two thirds of the gap period after a receive, since that carrier may be a collision fragment (printed page 71). |
| 14:8 | `ipg_t` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Inter-packet gap for back-to-back transmits. Each count is two transmit clock periods, 40 ns at 100 Mbit and 400 ns at 10 Mbit (printed page 71). |
| 7 | `link_failure_enable` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | 1 makes the hardware scan the external PHY for link failure. Each failure raises the link-failure interrupt (printed pages 71 and 72). |
| 6:5 | `dest_filter_mode` | established | dest_filter_mode (physical_only=0, physical_broadcast_multicast=1, physical_broadcast_all_multicast=2, any_packet=3) | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Which destination addresses the receive filter passes (printed page 71). |
| 4 | `m10t_sia_select` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | 0 selects the MII bus, 1 the SIA bus. In internal loopback the bit forces a collision indication instead, which can provoke retries and aborts in a test (printed page 71). |
| 3 | `speed_100` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | 1 selects 100 Mbit operation, 0 selects 10 Mbit (printed page 71). |
| 2 | `loopback_internal` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | 1 selects internal loopback on the internal MII bus, and the speed and interface selects are then ignored (printed page 71). |
| 1 | `full_duplex` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | 1 enables full-duplex operation (printed page 71). |
| 0 | `core_reset` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | 1 holds the MAC core in global reset. 0 runs it. Resets to 1 (printed page 71). |

### Register `interrupt_status`

Interrupt event flags for the Fast-Ethernet interface, with read-only pointer and sequence aliases. Writing one to a flag bit clears it. Writing zero leaves it unchanged (printed page 72). The interface drives CRIME interrupt slot 3 (printed page 179). Bits not listed read zero.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 30 | `multicast_hash_output` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Read-only test and debug bit. It latches the hash-select output while receive DMA is disabled. The page names the select as DMA control bits 14 to 9, which overlap the start offset and interrupt fields. The select is unknown (printed page 72). |
| 29:25 | `rx_sequence` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Read-only. Starting sequence number of the cluster at the head of the receive FIFO (printed page 72). |
| 24:16 | `tx_read_pointer` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Read-only alias of the transmit ring read pointer (printed page 72). |
| 12:8 | `rx_cluster_read_pointer` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Read-only alias of the receive cluster FIFO read index (printed page 72). |
| 7 | `rx_dma_fifo_overflow` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Set when the internal receive DMA FIFO overflowed. DMA stops, and the page calls this fatal (printed page 72). |
| 6 | `rx_cluster_fifo_underflow` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Set when the receive cluster FIFO was empty and a packet arrived that could not be queued (printed page 72). |
| 5 | `rx_threshold` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Set when the selected receive threshold condition is valid (printed page 72). |
| 4 | `tx_abort` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Set when the transmitter aborts. DMA stops, the page calls this fatal, and software should read the transmit status vector for the reason (printed page 72). |
| 3 | `tx_memory_error` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Set on a memory error during a transmit DMA transaction. DMA stops, and the page calls this fatal (printed page 72). |
| 2 | `tx_link_failure` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Set when the external PHY reports a link failure. Only raised when link-failure scanning is enabled (printed page 72). |
| 1 | `tx_user_request` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Set when a transmit message with its completion-interrupt bit set has been sent (printed page 72). |
| 0 | `tx_ring_empty` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Set when the transmit ring read and write pointers are equal (printed page 72). |

### Register `dma_control`

Transmit and receive DMA control. Bits not listed read zero (printed pages 73 and 74). The table lists no DMA reset bit, although the transmit pointer section refers to one (unknown, printed page 74).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15 | `rx_dma_enable` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | 1 runs the receive channel. 0 inactivates it and masks the receive interrupts (printed page 73). |
| 14:12 | `rx_start_offset` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Index of the doubleword where receive DMA starts filling the first bucket of each packet. Doublewords before it are padding. Zero is not recommended (printed page 73). |
| 11 | `rx_gather_enable` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | 1 asks for back-to-back packets to be gathered into one 4 KiB cluster. The packing and close rules are not stated (printed page 80). |
| 10 | `rx_runt_enable` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | 1 receives packets shorter than 64 bytes. 0 discards them (printed page 73). |
| 9 | `rx_interrupt_enable` | inferred |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | 1 enables the receive interrupt output. The prose on pages 73 and 74 says the output is active when the threshold differs from the FIFO count. The Boolean printed on page 73 says the reverse, equal means active, so the polarity is unresolved and the prose reading is kept as inferred. |
| 8:4 | `rx_interrupt_threshold` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Water mark compared with the receive cluster FIFO count. Equal disables the output and unequal enables it, per the prose on pages 73 and 74. The page gives a range of 0 to 16 (printed page 80). Values above 16 are not described. |
| 3:2 | `tx_ring_size` | established | tx_ring_size (kib8=0, kib16=1, kib32=2, kib64=3) | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Transmit ring size, 8, 16, 32 or 64 KiB (printed pages 73 and 78). |
| 1 | `tx_dma_enable` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | 1 runs the transmit channel. 0 masks the non-fatal transmit interrupts (printed page 73). |
| 0 | `tx_interrupt_enable` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | 1 makes the interrupt output follow an empty transmit ring. 0 keeps it inactive (printed page 73). |

### Register `interrupt_delay`

Receive interrupt delay. The count is in 30.69 microsecond ticks, so the 63 maximum is about 2 ms (printed page 73). A new packet starts the count-down. Expiry delivers the pending receive threshold condition to interrupt status. The count ends early when the receive FIFO drops below four entries (printed pages 73 and 80). Restart-on-each-packet behaviour is not stated (unknown).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 5:0 | `count` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Count-down value in 30.69 microsecond ticks (printed page 73). |

### Register `tx_interrupt_alias`

Write-only alias of the transmit interrupt enable in DMA control (printed page 74). Reads are not described.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 0 | `tx_interrupt_enable` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Same meaning as the DMA control bit (printed page 74). |

### Register `rx_interrupt_alias`

Write-only alias of the receive interrupt enable and threshold in DMA control (printed page 74). Reads are not described.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 9 | `rx_interrupt_enable` | inferred |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Same meaning as the DMA control bit, with the same unresolved polarity (see DMA control). |
| 8:4 | `rx_interrupt_threshold` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Same meaning as the DMA control field (printed page 74). |

### Register `tx_ring_pointers`

Transmit ring read and write pointers. The ring is empty when the two are equal and full when the write pointer is one entry behind the read pointer, so one entry is never used (printed pages 74 and 78). Software writes only the write pointer. The read pointer can be reset to zero only through a DMA reset control whose bit the table does not give (unknown). The second element is an alias (printed page 70).

Array of 2 registers, stride 8.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 24:16 | `read_pointer` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Read-only. Current ring read pointer (printed page 74). |
| 8:0 | `write_pointer` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Writable producer index. Nine bits cover a 512-entry ring (printed page 74). |

### Register `rx_fifo_pointers`

Receive cluster FIFO count and read and write indexes. Hardware updates them atomically. The FIFO holds 16 cluster addresses (printed pages 75 and 80). Reset clears the indexes and count only (printed page 75). Software should not read the FIFO while receive DMA is enabled (printed page 75). The second and third elements are aliases (printed page 70).

Array of 3 registers, stride 8.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 20 | `write_generation` | inferred |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Generation bit listed beside the write index. The page does not say what it counts. |
| 19:16 | `write_index` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Write index (printed page 75). |
| 12 | `read_generation` | inferred |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Generation bit listed beside the read index. The page does not say what it counts. |
| 11:8 | `read_index` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Read index (printed page 75). |
| 4:0 | `count` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Number of cluster addresses queued (printed page 75). |

### Register `interrupt_request`

Write-only diagnostic port. Each write generates one interrupt update packet for the Ethernet tag, carrying bits 31:0 of the write (established, printed page 70). Reads at this offset return the last transmit status vector instead, see TX_STATUS_VECTOR (established, printed page 70). No reset value is given (printed page 70). All registers in the block are accessed as 64-bit programmed I/O (established, printed page 70). Whether the upper 32 bits of a 64-bit write are used, and whether narrower accesses work, is not stated.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:16 | `write_enable` | inferred |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Enable for each of the sixteen interrupt slots. Bit 16 + j enables slot j. The packet layout names these bits 'Interrupt Bit Write Enables' (established, printed page 175); the register's own table does not say it feeds the packet, so the mapping is inferred. |
| 15:0 | `value` | inferred |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | New value for each enabled slot: bit j is written to slot j. The packet layout names these bits 'Interrupt Bits' (established, printed page 175); the mapping from the register is inferred as above. |

### Register `phy_data`

PHY serial bus data. A write sets the outgoing value. After a read, the field holds the value read from the PHY (printed page 76).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 16 | `busy` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Read-only. 1 while incoming data is still being assembled, so the data is not yet valid (printed page 76). |
| 15:0 | `data` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Read: incoming value. Write: outgoing value (printed page 76). |

### Register `phy_address`

PHY device and register address for the next access (printed page 76).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 9:5 | `device_address` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | PHY device address (printed page 76). |
| 4:0 | `register_address` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | PHY internal register address (printed page 76). |

### Register `phy_read_start`

Writing any value starts an external PHY read at the addresses in the PHY address register (printed page 76). Reset value is not given (printed page 76).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 0 | `start` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | The written value is not examined (printed page 76). |

### Register `station_address`

Physical station address, 48 bits. The receive filter compares the address one byte at a time. Address byte n sits in bits 8n+7 to 8n, and the first byte is the first byte received from the wire. Bit 0 of the first byte is the first bit on the wire (printed page 77). Reset value is not given (printed page 70).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 47:40 | `address_byte_5` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Sixth byte (printed page 77). |
| 39:32 | `address_byte_4` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Fifth byte (printed page 77). |
| 31:24 | `address_byte_3` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Fourth byte (printed page 77). |
| 23:16 | `address_byte_2` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Third byte (printed page 77). |
| 15:8 | `address_byte_1` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Second byte (printed page 77). |
| 7:0 | `address_byte_0` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | First byte on the wire (printed page 77). |

### Register `secondary_station_address`

48-bit secondary station address. The table calls it a secondary physical or multicast address (printed page 70). The filter section describes two physical station addresses (printed page 77). Reset value is not given (printed page 70).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 47:0 | `address` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Secondary station address (printed pages 70 and 77). |

### Register `multicast_filter`

64-bit multicast hash mask. A multicast destination address reduces to a six-bit index, the six most significant bits of a 32-bit CRC over the 48-bit address. The packet passes if the mask bit at that index is set. The mask is not an exact address filter, so software must still check the address (printed page 77). Reset value is not given (printed page 70).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 63:0 | `mask` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Hash mask, one bit per index (printed page 77). |

### Register `tx_ring_base`

Physical base address of the transmit ring in main memory. Bits 12 to 0 are not defined, so they read zero (printed page 70). Reset value is not given (printed page 70).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:13 | `base` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Ring base address (printed page 70). |

### Register `rx_fifo_data`

Receive cluster FIFO data port. A write pushes a cluster base address, and the low 12 bits are not kept, so they read back as zero (printed page 75). The 32 locations are aliases of one port with no index (printed page 75). Contents are not initialized at reset (printed page 75).

Array of 32 registers, stride 8.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:12 | `cluster_base` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Cluster base address, 4 KiB aligned (printed pages 75 and 80). |
| 11:0 | `zero_low` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Read as zero (printed page 75). |

## Words

| Word | Width | Grade | Source |
|---|---|---|---|
| `RX_STATUS_VECTOR` | 64 | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) |
| `TX_COMMAND` | 64 | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) |
| `TX_CONCAT_POINTER` | 64 | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) |
| `TX_STATUS_VECTOR` | 64 | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) |

### Word `RX_STATUS_VECTOR`

Receive status vector. It occupies the first doubleword of the first 256-byte bucket of each packet (printed pages 80 and 81).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 63 | `always_one` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Always one (printed page 81). |
| 62:48 | `zero_filled` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Always zero (printed page 81). |
| 47:32 | `partial_checksum` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Partial Internet checksum: an uncomplemented 16-bit end-around-carry sum of the valid packet bytes, from the first byte after the preamble through the CRC (printed pages 80 and 81). Byte pairing is not stated (unknown). |
| 31:27 | `sequence` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | 5-bit receive sequence number (printed pages 80 and 81). |
| 26 | `physical_address_match` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Physical address filter match (printed page 81). |
| 25 | `multicast_filter_match` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Multicast filter match (printed page 81). |
| 24 | `carrier_event_seen` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Carrier event previously seen (printed page 81). |
| 23 | `bad_packet` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Received bad packet (printed page 81). |
| 22 | `long_event_seen` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Long event previously seen (printed page 81). |
| 21 | `invalid_preamble` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Invalid preamble, length or code (printed page 81). |
| 20 | `broadcast_packet` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Broadcast packet (printed page 81). |
| 19 | `multicast_packet` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Multicast packet (printed page 81). |
| 18 | `crc_error` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | CRC error (printed page 81). |
| 17 | `dribble_nibble` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Dribble nibble (printed page 81). |
| 16 | `code_violation` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Receive code violation (printed page 81). |
| 15:0 | `length` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Receive length in bytes (printed page 81). The page does not say whether the four-byte check sequence is counted. |

### Word `TX_COMMAND`

Transmit command header, the first doubleword of a transmit ring message. Each message starts on a 128-byte boundary (printed page 78). The MAC overwrites this word with the status vector after transmit (printed pages 78 and 79).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 63:28 | `must_be_zero` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Should be filled with zeros (printed page 79). |
| 27 | `pointer3_valid` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Concatenation pointer 3 is valid (printed page 79). |
| 26 | `pointer2_valid` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Concatenation pointer 2 is valid (printed page 79). |
| 25 | `pointer1_valid` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Concatenation pointer 1 is valid (printed page 79). |
| 24 | `completion_interrupt` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | 1 raises the user transmit interrupt after the packet is sent (printed page 79). |
| 23 | `stop_on_abort` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | 1 asks for transmit DMA to stop on an abort (printed page 79). Page 72 calls every abort fatal, so whether bit 23 changes that is unresolved. |
| 22:16 | `inline_start` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Byte offset of the inline data within the message data area. Zero skips the data area and starts from the first pointer. Other valid starts are at least eight (printed page 79). |
| 15:0 | `length_minus_one` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Length of the packet data in bytes, minus one (printed page 79). |

### Word `TX_CONCAT_POINTER`

Transmit concatenation pointer: the physical address and length of a buffer that holds the rest of the packet (printed page 79). The buffer lies inside a 4 KiB aligned area (printed page 78).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 63:48 | `zero_high` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Should be filled with zeros (printed page 79). |
| 47:32 | `length_minus_one` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Length of the buffer data in bytes, minus one (printed page 79). |
| 31:3 | `address` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Physical start address of the buffer data (printed page 79). |
| 2:0 | `zero_low` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Should be filled with zeros (printed page 79). |

### Word `TX_STATUS_VECTOR`

Transmit status vector. The MAC unit supplies it after each transmit, and it is written over the first doubleword of the transmit message in the ring (established, printed pages 78 and 79). A read of Interrupt Request at offset 0x58 returns it (established, printed page 70). The published layout is below. No reset value is given, and which failures update the vector is not stated (printed pages 70 and 79).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 63 | `one_filled` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Always one (established, printed page 79). |
| 62:29 | `zero_filled` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Always zero (established, printed page 79). |
| 28 | `late_collision_drop` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Transmit dropped for late collision (established, printed page 79). |
| 27 | `excessive_deferral` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Transmit canceled for excessive deferral (established, printed page 79). |
| 26 | `excess_collisions` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Transmit dropped for excess collisions (established, printed page 79). |
| 25 | `underrun` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Transmit aborted for underrun (established, printed page 79). |
| 24 | `excessive_length` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Transmit aborted for excessive length (established, printed page 79). |
| 23 | `completed` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Transmit completed successfully (established, printed page 79). |
| 22 | `deferred` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Packet deferred on at least one attempt (established, printed page 79). |
| 21 | `crc_error` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | CRC error seen on at least one attempt (established, printed page 79). |
| 20 | `late_collision` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Late collision seen on at least one attempt (established, printed page 79). |
| 19:16 | `collision_retries` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | Collision retry count. The table prints this field as 16:19 (established, printed page 79). |
| 15:0 | `length` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | True transmit length in bytes (established, printed page 79). |

## Enums

### Enum `dest_filter_mode`

Destination address filter mode in MAC control.

| Label | Value | Grade | Source |
|---|---|---|---|
| `physical_only` | 0 | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) |
| `physical_broadcast_multicast` | 1 | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) |
| `physical_broadcast_all_multicast` | 2 | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) |
| `any_packet` | 3 | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) |

### Enum `tx_ring_size`

Transmit ring size select in DMA control. Each ring entry is 128 bytes.

| Label | Value | Grade | Source |
|---|---|---|---|
| `kib8` | 0 | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) |
| `kib16` | 1 | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) |
| `kib32` | 2 | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) |
| `kib64` | 3 | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) |

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `BLOCK_BASE` | 0x1f280000 | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | physical base of the Fast-Ethernet block, PIO select 101 and CRIME PIO tag 0x08 (printed page 181). The block is 512 KiB and its registers repeat across it (printed page 181). |
| `INTERRUPT_DELAY_TICK_NS` | 0x77e2 | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | one interrupt delay count, 30.69 microseconds (printed page 73) |
| `INTERRUPT_SLOT` | 0x3 | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | MACE interrupt slot of the Fast-Ethernet interface (printed page 179, Table 90) |
| `INTERRUPT_UPDATE_TAG` | 0xc | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | source tag of the Ethernet interrupt update packet (printed page 173) |
| `RX_BUCKET_BYTES` | 0x100 | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | size of a receive bucket, and each packet starts on one (printed page 80) |
| `RX_CLUSTER_BYTES` | 0x1000 | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | size of a receive cluster buffer (printed pages 75 and 80) |
| `RX_CLUSTER_FIFO_DEPTH` | 0x10 | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | entries in the receive cluster address FIFO (printed page 75) |
| `TX_ENTRY_BYTES` | 0x80 | established | published MACE 2.0 I/O ASIC specification (printed pages 70 to 81, 173, 175, 179 and 181) | size of one transmit ring message (printed page 78) |
