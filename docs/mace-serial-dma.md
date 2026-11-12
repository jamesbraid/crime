# O2 MACE serial port DMA channels

The MACE I/O ASIC can run a DMA channel in each direction for each of its two
serial ports. A channel moves 64-bit words between a ring buffer in system
memory and the external 16550 UART, packing and unpacking control and data
bytes as it goes. The register offsets, widths and bit meanings are in
`defs/mace_serial_dma.toml`, and the interrupt causes are in
`defs/mace_periph.toml`. This page covers the ring placement, the packet
formats, the interaction with the UART, and the open questions. The UART
frontend itself is in [mace-base.md](mace-base.md).

Grades follow [AGENTS.md](../AGENTS.md): **established** (a published document
states it, with the page), **inferred** (a reasoned reading, with the
reasoning) or **unknown**.

Sources:

- **[mace]** SGI, *MACE I/O ASIC Specification*, chip revision 2.0, July 16,
  1996. Stored as `docs/sources/specs/mace-2.0-specification.pdf`. Page
  numbers are the printed ones. This page reads printed pages 122 to 130 and
  the interrupt table on page 125. Page 133 and the ordering rule on page 179
  are not reread here.
- **[crime]** SGI, *CRIME 1.5 Specification*, revision 0.3, June 2, 1997,
  stored as `docs/sources/specs/crime-1.5-specification.pdf`. Section 3.1.5
  and Table 3-4, PDF pages 47 to 50, give the address space that MACE DMA
  uses.
- Public Linux O2 interrupt code (`arch/mips/sgi-ip32/ip32-irq.c`) is cited
  below only for what software does with the pair-request status bits. It was
  not reread for this page.

## Register placement

| Block | Physical base | Grade |
|---|---:|---|
| Port 1 DMA registers | `0x1f318000` | established ([mace] 122, table 52, page 2 of the 16 KiB ISA pages) |
| Port 2 DMA registers | `0x1f31c000` | established ([mace] 122, table 52, page 3 of the 16 KiB ISA pages) |

- Each register is 64 bits wide and sits on a 64-bit boundary. Software reads
  and writes it with 64-bit programmed I/O (established, [mace] 122).
- Each functional block of registers starts on a 16 KiB boundary, and the
  space in between is aliased to existing registers (established, [mace] 122).
  The page does not say how the aliasing works, so the alias pattern is
  unknown.
- Within one port block, the transmit channel uses offsets `0x00` to `0x18`
  (control, read, write, depth) and the receive channel uses `0x20` to `0x38`
  in the same order (established, [mace] 122 and 127).

### Ring placement

The peripheral ring base register (see `defs/mace_periph.toml`) holds a
32 KiB-aligned base in bits 31:15. Eight 4 KiB rings sit in that 32 KiB block.
The serial rings use the last four (established, [mace] 123 and 128).

| Ring ID | Ring | Offset from the base |
|---:|---|---:|
| 3 (`011`) | scratch, free for software | `0x3000` |
| 4 (`100`) | serial port 1, transmit | `0x4000` |
| 5 (`101`) | serial port 1, receive | `0x5000` |
| 6 (`110`) | serial port 2, transmit | `0x6000` |
| 7 (`111`) | serial port 2, receive | `0x7000` |

The DMA engine forms each entry's address as `base[31:15] | ring ID |
pointer[11:5] | 00000` (established, [mace] 128). The pointer contributes
bits 11:5, so an entry is 32 bytes and the ring holds 128 of them. The ring
base is a DMA address for rings in system memory (established, [mace] 122
and 128).

MACE DMA reaches memory through the window in [crime] Table 3-4 (PDF
pages 47 to 50), which is established:

| MACE DMA address | Target |
|---|---|
| `0x00000000` to `0x3fffffff` | reserved |
| `0x40000000` to `0x7fffffff` | memory, through CRIME |
| `0x80000000` to `0xbfffffff` | no-ECC memory, through CRIME |
| `0xc0000000` and up | reserved |

How a ring base in the reserved low gigabyte would be decoded is unknown. The
ring address formula gives no translation for it.

## Channel control

Each direction has a control register at its channel offset. Its reset value
is `0x400` (established, [mace] 127, table 58).

- **Channel reset** (bit 10, reset 1). Asserting it makes the channel inactive,
  resets all its registers, drops its interrupt output and flushes its FIFOs
  (established, [mace] 127). This is separate from the external controller
  reset in the peripheral ring base register, which resets the external 16550
  parts through the ISA reset pin (established, [mace] 123 and 185).
- **DMA enable** (bit 9). Setting it runs the channel, and the pointers must
  already be set up. Clearing it freezes the channel and leaves its state as it
  is (established, [mace] 127).
- **Interrupt threshold** (bits 7:5). The table gives eight settings. Setting 0
  disables the interrupt. Settings 1 to 3 mean the input ring is at least 25,
  50 or 75 percent full, and for an output ring they mean the ring is below
  those levels. Settings 4 to 7 mean empty, not empty, full and not full
  (established, [mace] 127). The interrupt follows the selected condition, and
  the threshold setting is separate from the DMA enable bit (established,
  [mace] 125 and 127).

## Pointers and depth

- Read and write pointers are in 32-byte blocks, in bits 11:5. Bits 4:0 and
  15:12 read zero (established, [mace] 127, tables 56 and 57).
- Ownership: on an input channel, which is receive, the DMA engine owns the
  write pointer and software owns the read pointer. On an output channel, which
  is transmit, the DMA engine owns the read pointer and software owns the write
  pointer (established for the ownership text, [mace] 128). The register tables
  mark every pointer read/write (printed pages 122 and 127). The page 128 text
  is taken as the ownership rule here.
- When the two pointers are equal, the engine treats the ring as full on an
  input channel or empty on an output channel and stops. It resumes once
  software moves its pointer (established, [mace] 128).
- Depth is the write pointer minus the read pointer, in blocks. Zero means
  empty and all ones means full (established, [mace] 127, table 59). Page 128
  says that equal pointers mean full on input. On an input ring, depth zero is
  empty on page 127, yet equal pointers, which also give depth zero, mean full
  on page 128. Page 128 also says the engine counts 64-bit words, while page
  127 counts 32-byte blocks. The conflict is unresolved.
- Pointer width conflicts. Page 122 lists the hardware-owned pointers as bits
  11:0. Page 127 makes bits 4:0 reserved. This page uses the page 127 field.
  The distinction between internal progress and visible pointer granularity is
  unknown.

## Interrupt causes

Each port has six causes in the peripheral status register. They reach CRIME
bit 4 through the serial and parallel group, described in
[mace-base.md](mace-base.md#interrupt-delivery) (established, [mace] 125 and
179). Port 1 uses bits 20 to 25 and port 2 uses bits 26 to 31, in this order
(established, [mace] 125):

| Cause | Port 1 | Port 2 | Kind |
|---|---:|---:|---|
| UART device interrupt | 20 | 26 | Device level, from the 16550 core |
| Transmit threshold | 21 | 27 | Condition level |
| Transmit pair request | 22 | 28 | Event request, read/write in the table |
| Transmit memory error | 23 | 29 | Error; DMA stops and the channel is fatally stopped |
| Receive threshold | 24 | 30 | Condition level |
| Receive overrun | 25 | 31 | Error; DMA stops and the channel is fatally stopped |

- The pair-request bit is set when a transmit pair with its interrupt bit set
  has been processed (established, [mace] 125 and 130).
- The page does not say what a write to a pair-request bit does. The
  public Linux O2 interrupt code reads the status word and writes it back with
  the edge bit cleared. That is a software expectation, so the write behaviour
  is inferred from it and not established.

## Packet formats

Serial DMA moves 64-bit words. Each word holds four pairs, and each pair is a
control byte and a data byte.

- Byte order is big-endian. The control bytes sit in the high 32 bits and the
  data bytes in the low 32 bits (established, [mace] 129, pair packing figure).
  Pair `i` (0 to 3) has its control byte at bits `63-8i` to `56-8i` and its data
  byte at bits `31-8i` to `24-8i`.
- In memory, in increasing address order, the four control bytes come first and
  the four data bytes follow. This is the same whatever the host byte order
  (established, [mace] 129 and the packing figure).
- Pairs are packed in multiples of four. Software can mark a transmit pair
  invalid so the engine skips it, and a receive engine pads a short word with
  invalid pairs (established, [mace] 128 and 129).
- The receive engine never writes an all-zero 64-bit word. Software can
  therefore find the end of received data by reading until it sees a zero word
  (established, [mace] 129, section 5.2.3).

### Receive pairs (engine to memory)

- Control byte bit 7 is *valid*. A valid pair holds a character that the UART
  read. A pair with bit 7 clear is skipped, and its data byte is `0xff`
  (established, [mace] 130, table 61).
- Control bits 6:4 are reserved and read zero.
- Control bit 3 is break, bit 2 is framing error, bit 1 is parity error and bit
  0 is overrun (established, [mace] 130, table 61). The table's description
  column labels these one bit higher, as bits 4 to 1. This page follows the
  Bits column. The mismatch is unresolved.
- An overrun pair stops receive DMA and posts the overrun interrupt
  (established, [mace] 130 and 125).
- The data byte is the UART receive buffer character when the pair is valid,
  and `0xff` when it is not (established, [mace] 130, table 62).

### Transmit pairs (memory to engine)

- Control bits 7:6 are the command. `00` marks the pair invalid, and the engine
  ignores it. `01` writes the data byte to the UART transmit holding register.
  `10` writes the data byte to the modem control register. `11` is a delay, and
  the data byte is a count of milliseconds (established, [mace] 130, table 63).
- Control bit 5 requests a transmit interrupt after the pair is processed
  (established, [mace] 130).
- Control bits 4:0 are reserved and must be zero (established, [mace] 130).
- The data byte goes with the command as described above (established,
  [mace] 130, table 64).
- A delay pair idles the channel for the given number of milliseconds before it
  processes the next pair (established, [mace] 129, section 5.2.4).

## UART interaction

- With DMA disabled, the port behaves exactly like a standard National 16550
  (established, [mace] 129, section 5.2.1).
- With DMA enabled, software must not service the UART transmit or receive data
  interrupts itself, and must not read the IIR, RBR or LSR registers. Doing so
  confuses the DMA logic and loses data. Only the modem status change interrupt
  should be enabled (established, [mace] 129).
- When the modem interrupt line goes active, the engine halts DMA and leaves the
  transition to software (established, [mace] 129, section 5.2.5). The resume sequence is not
  given (unknown).
- Optional 16650 hardware flow control, CTS on transmit and RTS on receive, is
  described on page 128. Its detail is unknown.

## Open questions

These items are not settled by the pages read for this page:

1. Pointer width: page 122 gives 11:0 and page 127 gives 11:5 (see Pointers
   and depth).
2. Whether a software write to an engine-owned pointer is ignored, and what it
   does while DMA runs (the register tables mark it read/write).
3. Depth at zero and equal pointers, and the unit (blocks or 64-bit words).
4. Internal DMA FIFO capacity, any separate DMA receive timeout, and the rule
   for publishing short receive input. Pages 122 to 130 do not give them.
5. Behaviour on an invalid DMA address beyond "the channel stops". Whether a
   failed write is partial, and what the pointers show afterward, are not given.
6. Writes to the pointers while a transfer is running, a ring base change while
   a channel is enabled, and simultaneous DMA and programmed I/O access to the
   same UART. The pages read do not state them.
7. The modem-status resume protocol, and the detail of 16650 flow control.
8. What a ring base in the reserved low gigabyte does (see Ring placement).
9. The alias pattern inside the 16 KiB register pages (see Register placement).
10. Behaviour of a narrower access than 64 bits. Page 122 requires 64-bit
    access and does not say what anything narrower does.
