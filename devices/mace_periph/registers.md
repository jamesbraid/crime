<!-- generated from devices/mace_periph/registers.toml by defs-gen - do not edit, change the source -->

# O2 MACE peripheral ring base and interrupt status and mask

MACE peripheral block: the serial and parallel ring base with external reset, and the peripheral interrupt status and mask. Offsets are from the block base (constant BLOCK_BASE).

Unit `mace_periph`, macro prefix `MACE_PERIPH`.
Default source: published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `ring_base` | 0x0 | rw | 64 |  |  | unknown | established | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers |
| `misc_control` | 0x8 | rw | 64 |  |  | 0x20 | established | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers |
| `periph_status` | 0x10 | rw | 64 |  |  | unknown | established | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers |
| `periph_mask` | 0x18 | rw | 64 |  |  | unknown | established | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers |

### Register `ring_base`

Bit 0 asserts the external serial and parallel controller reset; it resets to one and writing zero releases it (established, printed page 123). That reset drives the RstISA pin in the ISA pin group, not a PCI pin (established, printed page 185). Bits 31:15 hold the 32 KiB-aligned base of the peripheral DMA rings (established, printed page 123). Bits 14:1 are not described.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:15 | `dma_ring_base` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers |  |
| 0 | `ext_reset` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers |  |

### Register `misc_control`

Flash-ROM, Number-In-a-Can line, LED, DP-RAM and test control. Bits 8:0 are defined and the rest read zero (established, printed page 122). Reset is 0x20: only the green LED disable bit is set (established, printed page 124). Like the other registers in the block it is 64-bit aligned and read or written by 64-bit programmed I/O. The specification does not say what a narrower access does (unknown, printed page 122).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 8 | `sa20_enable` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | 0 leaves SA20 as an address bit. 1 makes it the game port chip select. Resets to 0 (printed page 124). |
| 7 | `test_ust_timer` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | 1 selects the timer test mode. Resets to 0 (printed page 124). |
| 6 | `dpram_write_enable` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | 1 enables PIO writes to the DP-RAM. Resets to 0 (printed page 124). |
| 5 | `green_led_enable` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | 0 enables the green LED colour and 1 disables it. Resets to 1 (printed page 124). |
| 4 | `red_led_enable` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | 0 enables the red LED colour and 1 disables it. Resets to 0 (printed page 124). |
| 3 | `nic_level` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | Read-only. The current level of the Number-In-a-Can line: 0 is low, 1 is high. The reset column prints 0 (printed page 124). |
| 2 | `nic_deassert` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | Drives the Number-In-a-Can line. 0 holds the bidirectional line low. 1 is no operation, so the line is released. Resets to 0 (printed page 124). |
| 1 | `password_clear_enable` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | Read-only. 1 means the external password clear is enabled (printed page 124). |
| 0 | `flash_write_enable` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | 1 enables writes to the external Flash-ROM. 0 sends writes into a bit bucket (printed page 124). |

### Register `periph_status`

Level sources summed into CRIME interrupt groups. Bits 16, 22 and 28 are read/write for external parallel and serial-DMA edge requests; the other listed sources are read-only (established, printed page 125). Timer compares 0, 1 and 2 are bits 13, 14 and 15, the RTC is bit 8, serial device A is bit 20 and serial device B is bit 26 (established, printed page 125). Status bits 0 to 7 OR into CRIME bit 6, bits 8 to 15 into CRIME bit 5 and bits 16 to 31 into CRIME bit 4. A group signals CRIME whenever its level changes (established, printed page 179).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31 | `serial_b_rx_overrun` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | Read-only. A UART overrun was indicated during receive DMA; the channel has stopped (printed page 125). |
| 30 | `serial_b_rx_threshold` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | Read-only. The port 2 receive ring meets its interrupt threshold (printed page 125). |
| 29 | `serial_b_tx_error` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | Read-only. A memory error stopped the port 2 transmit DMA; the channel is fatally stopped (printed page 125). |
| 28 | `serial_b_tx_pair` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | Read/write. A port 2 transmit pair with its interrupt bit set has been processed (printed page 125). The write behaviour is not given; see devices/mace_serial_dma/mace-serial-dma.md. |
| 27 | `serial_b_tx_threshold` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | Read-only. The port 2 transmit ring meets its interrupt threshold (printed page 125). |
| 26 | `serial_b` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers |  |
| 25 | `serial_a_rx_overrun` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | Read-only. A UART overrun was indicated during receive DMA; the channel has stopped (printed page 125). |
| 24 | `serial_a_rx_threshold` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | Read-only. The port 1 receive ring meets its interrupt threshold (printed page 125). |
| 23 | `serial_a_tx_error` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | Read-only. A memory error stopped the port 1 transmit DMA; the channel is fatally stopped (printed page 125). |
| 22 | `serial_a_tx_pair` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | Read/write. A transmit pair with its interrupt bit set has been processed (printed page 125). The write behaviour is not given; see devices/mace_serial_dma/mace-serial-dma.md. |
| 21 | `serial_a_tx_threshold` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | Read-only. The port 1 transmit ring meets its interrupt threshold (printed page 125). |
| 20 | `serial_a` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers |  |
| 15 | `timer_cmp2` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers |  |
| 14 | `timer_cmp1` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers |  |
| 13 | `timer_cmp0` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers |  |
| 12 | `ps2_mouse_poll` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | Read-only. Unmasked mouse poll flag, the non-interrupt version of the mouse request (established, printed page 125, slot 5). |
| 11 | `ps2_mouse_irq` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | Read-only. Mouse port interrupt request (established, printed page 125, slot 5). |
| 10 | `ps2_kbd_poll` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | Read-only. Unmasked keyboard poll flag, the non-interrupt version of the keyboard request (established, printed page 125, slot 5). |
| 9 | `ps2_kbd_irq` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | Read-only. Keyboard port interrupt request (established, printed page 125, slot 5). See the PS/2 unit. |
| 8 | `rtc` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers |  |
| 7 | `audio_playback2_error` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | Read-only. A memory error on the playback 2 DMA; the channel has stopped (printed page 125, slot 6). |
| 6 | `audio_playback2_threshold` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | Read-only. The playback 2 ring meets its interrupt threshold (printed page 125, slot 6). |
| 5 | `audio_playback1_error` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | Read-only. A memory error on the playback 1 DMA; the channel has stopped (printed page 125, slot 6). |
| 4 | `audio_playback1_threshold` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | Read-only. The playback 1 ring meets its interrupt threshold (printed page 125, slot 6). |
| 3 | `audio_capture_overflow` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | Read-only. Capture DMA FIFO overflow error (printed page 125, slot 6). |
| 2 | `audio_capture_threshold` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | Read-only. The capture ring meets its interrupt threshold (printed page 125, slot 6). |
| 1 | `audio_volume` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | Read-only. A volume push button edge is latched (printed page 125, slot 6). |
| 0 | `audio_codec_mask` | established |  | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | Read-only. The last codec response ANDed with the codec response mask is nonzero (printed page 125, slot 6). |

### Register `periph_mask`

Gates delivery of the status bits. A mask bit does not clear the device condition behind a status bit (established, printed pages 125 and 147). Reset value not stated.

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `BLOCK_BASE` | 0x1f310000 | established | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | physical base of the peripheral ring and status block (printed page 123) |
| `ISA_BASE` | 0x1f380000 | established | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | physical base of the external ISA I/O space (address map, printed page 181) |
| `ISA_REG_STRIDE` | 0x100 | established | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | each external 8-bit register occupies a 256-byte slice (printed page 133) |
| `RTC_BASE` | 0x1f3a0000 | established | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | external Dallas calendar clock, at the ISA base plus 0x20000 (printed page 133); its register contents are in the clock's own contract, not here |
| `SERIAL_A_BASE` | 0x1f390000 | established | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | external 16550-compatible serial port COM 1, at the ISA base plus 0x10000 (printed page 133) |
| `SERIAL_B_BASE` | 0x1f398000 | established | published MACE 2.0 I/O ASIC specification (printed pages 123, 125 and 147), public Linux O2 interrupt code, and OpenBSD and NetBSD O2 MACE drivers | external 16550-compatible serial port COM 2, at the ISA base plus 0x18000 (printed page 133) |
