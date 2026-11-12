# O2 MACE Ethernet: Fast-Ethernet block registers and DMA formats

This page covers the MACE Fast-Ethernet block: the MAC and interrupt registers,
the transmit ring and receive cluster FIFO, the PHY bus, the address filter and
the message formats in memory. The register offsets, widths, reset values and
field positions are in `defs/mace_ethernet.toml`, and this page does not repeat
them. The page covers what the defs cannot say: behaviour, timing, interactions
and what the specification leaves open. The transmit queue diagnostic registers,
the backoff seed, the incoming message queue and the multicast hash algorithm
are not covered yet.

Grades follow [AGENTS.md](../AGENTS.md): **established** (the published
document states it, with the page), **inferred** (a reasoned reading, with the
reasoning) or **unknown**.

Source:

- **[mace]** SGI, *MACE I/O ASIC Specification*, chip revision 2.0, July 16,
  1996. Stored as `docs/sources/specs/mace-2.0-specification.pdf`. Page numbers
  are the printed ones.

No driver, capture or other source is used for the facts below.

## Block and access

- The Fast-Ethernet block is at `0x1f280000`. Its PIO select is `101` and its
  CRIME PIO tag is `0x08` (established, [mace] 181). The block is 512 KiB, and
  the registers that exist repeat across it (established, [mace] 181).
- Every register is 64-bit aligned and is accessed with 64-bit programmed I/O
  (established, [mace] 70). Bits the table does not define read as zero
  (established, [mace] 70). Whether narrower accesses work is not stated
  (unknown).
- Offset `0x58` has one address and two meanings. A write is the Interrupt
  Request port, write-only, bits 31:0. A read is the Last Transmit Vector,
  read-only, bits 63:0 (established, [mace] 70).

## MAC control

- The MAC core reset is bit 0. It is set at reset and holds the core in reset
  while set (established, [mace] 71).
- The destination filter mode selects which addresses the receive filter
  passes: physical only, physical plus broadcast and multicast matches, physical
  plus broadcast and all multicast, or any packet (established, [mace] 71).
- Link-failure scanning is off by default. When enabled, the hardware scans the
  PHY and raises the link-failure interrupt (established, [mace] 71 and 72).
- The inter-packet gap counters count in units of two transmit clock periods:
  40 ns at 100 Mbit and 400 ns at 10 Mbit (established, [mace] 71).
- The revision field is read-only. It reads 1 for the first revision with
  improved transmit concatenation support (established, [mace] 71).

## Interrupt status

- Flags 0 to 7 are cleared by writing one to the bit. Writing zero leaves a flag
  unchanged (established, [mace] 72).
- The interface drives CRIME interrupt slot 3 (established, [mace] 179).
- Flags 3, 4 and 7 each stop DMA and are called fatal (established, [mace] 72).
  Flag 6 means a packet arrived while the cluster FIFO was empty and could not
  be queued (established, [mace] 72).
- The specification names no receive memory-error flag. Whether a receive DMA
  memory error sets any flag is unknown.
- Bit 30 is a debug bit that latches the hash-select output while receive DMA is
  disabled. The page names the select as DMA control bits 14 to 9, which overlap
  the start offset and interrupt fields, so the select is unknown (unknown).

## DMA control and receive threshold

- Transmit DMA runs when bit 1 is set. Bit 0 makes the interrupt output follow an
  empty transmit ring (established, [mace] 73).
- Receive DMA runs when bit 15 is set. Clearing it masks the receive interrupt
  (established, [mace] 73).
- Gathering is requested with bit 11. The page calls it an attempt to gather
  back-to-back packets into one cluster. The packing and close rules are not
  stated (established, [mace] 80).
- Runt packets, shorter than 64 bytes, are received only when bit 10 is set
  (established, [mace] 73).
- The receive threshold is compared with the cluster FIFO count. The prose on
  pages 73 and 74 says equal disables the output and unequal enables it
  (established). The Boolean printed on page 73 says the reverse. The polarity
  is therefore unresolved, and the prose reading is kept as inferred.
- The page gives a threshold range of 0 to 16 (established, [mace] 80). Values
  above 16 are not described (unknown).
- The threshold is also written through an alias at `0x28`, which sets the same
  two fields in one write (established, [mace] 74). The alias cannot be read
  back in any way the page describes.

## Interrupt delay

- The delay count is in 30.69 microsecond ticks, up to about 2 ms (established,
  [mace] 73).
- A new received packet starts the count-down. Expiry delivers the pending
  receive threshold condition to interrupt status (established, [mace] 73).
- The count ends early when the cluster FIFO drops below four entries
  (established, [mace] 73 and 80).
- Whether each new packet restarts the count-down is not stated (unknown).

## Transmit ring

- The ring size is 8, 16, 32 or 64 KiB, selected by DMA control bits 3:2
  (established, [mace] 73). Each entry is 128 bytes, so the ring holds 64, 128,
  256 or 512 entries (established, [mace] 78).
- The ring is empty when the read and write pointers are equal. It is full when
  the write pointer is one entry behind the read pointer, so one entry is never
  used (established, [mace] 74 and 78).
- Software writes only the write pointer. The read pointer can be reset to zero
  only through a DMA reset control. The table gives no such bit, so whether one
  exists is unknown (unknown, [mace] 74).
- Each ring message starts on a 128-byte boundary. Its first doubleword is the
  command header (established, [mace] 78 and 79).

## Transmit command and pointers

- The command header holds the packet length minus one in bits 15:0, and an
  inline start offset in bits 22:16 (established, [mace] 79).
- A zero inline start skips the data area and takes the first bytes from the
  first pointer. Other valid starts are at least eight (established, [mace] 79).
- Bits 27 to 25 mark which of pointers 1 to 3 are valid. Bit 25 is pointer 1 and
  bit 27 is pointer 3, so the table lists them in the reverse order
  (established, [mace] 79).
- Bit 24 asks for a user interrupt after the packet is sent. Bit 23 asks for
  transmit DMA to stop on an abort (established, [mace] 79).
- Each concatenation pointer holds a physical start address in bits 31:3 and a
  length minus one in bits 47:32. Bits 2:0 and 63:48 should be zero
  (established, [mace] 79).
- Inline data must end on an eight-byte boundary (established, [mace] 78).
- The MAC overwrites the command doubleword with the status vector after
  transmission and sets bit 63. The vector layout is in the `TX_STATUS_VECTOR`
  word in the defs (established, [mace] 78 and 79).
- Abort is called fatal on page 72, but bit 23 makes termination conditional on
  page 79. Which one applies is unresolved (unknown).

## Receive clusters and FIFO

- The receive FIFO holds 16 cluster addresses. Each address names a 4 KiB
  cluster and only bits 31:12 are kept (established, [mace] 75 and 80).
- Software pushes addresses by PIO writes. Hardware pops one when DMA into that
  cluster completes, and then the event interrupt is raised (established, [mace]
  75).
- Reset clears the indexes and the count only. The address contents are not
  initialised (established, [mace] 75).
- Hardware does not stop software from overrunning or underflowing the FIFO
  through PIO. Hardware never underflows it itself (established, [mace] 75).
- Software should not read the FIFO while receive DMA is enabled (established,
  [mace] 75).
- The 32 data locations at `0x100` to `0x1f8` are aliases of one port with no
  index (established, [mace] 75).
- The count and both indexes are updated atomically, so they are safe to read
  during operation (established, [mace] 75).
- The generation bits sit beside the read and write indexes. The page does not
  say what they count, so their meaning is inferred from the layout only
  (inferred).

## Receive packets, buckets and status

- Each packet starts on a 256-byte bucket boundary (established, [mace] 80).
- The first doubleword of the first bucket holds the status vector, and the
  packet data follows. Doublewords before the start offset are padding, and
  two more bytes of padding sit before the packet (established, [mace] 73 and 80).
- A status vector holds the length in bits 15:0, status flags, a 5-bit sequence
  number, a 16-bit partial checksum and a set bit 63 (established, [mace] 81).
- The page does not say whether the length includes the four-byte check
  sequence. The checksum does include it, so it is in the summed bytes (see
  below). Whether the check sequence is counted in the length is unknown.
- The sequence number tells software whether a cluster holds more than one
  packet. It can be compared between consecutive clusters, or against the value
  in interrupt status (established, [mace] 81 and 72).

## Receive checksum

- The partial checksum is an uncomplemented 16-bit end-around-carry sum of all
  valid packet bytes, excluding the preamble and including the CRC. Any final
  carry is folded back in (established, [mace] 80 and 81).
- Software removes the header bytes and the CRC itself (established, [mace] 81).
- The byte pairing into 16-bit words is not stated. Whether odd-length frames
  pad the last byte into the high half is unknown (unknown).

## Receive gathering

- With gathering on, one cluster may hold several back-to-back packets. The
  second packet starts at a later bucket boundary and has its own status
  (established, [mace] 80).
- The example shows a second packet landing after a short first packet while the
  interrupt delay has not expired (established, [mace] 80).
- The packing and close rules are not stated (unknown).

## Address filter

- The physical station address is 48 bits. Byte n of the address sits in bits
  8n+7 to 8n, and bit 0 of the first byte is the first bit on the wire
  (established, [mace] 77).
- The receive filter has two physical station addresses, the broadcast address
  and a 64-bit multicast hash mask (established, [mace] 77).
- Broadcast is all ones in the destination address (established, [mace] 77).
- A multicast destination has the low bit of its first byte set. The six most
  significant bits of a 32-bit CRC over the address index the mask. The mask is
  not an exact filter (established, [mace] 77).
- The page gives a reference routine for the hash (established, [mace] 77). It
  is not reproduced here.

## PHY bus

- To read, wait until the busy bit clears, write the device and register
  addresses, then write any value to the read-start register. Poll busy again.
  The data register then holds the value read (established, [mace] 76).
- To write, wait for busy to clear, write the addresses, write the value to the
  data register and poll busy until it clears (established, [mace] 76).
- The read-start reset value is not given (unknown, [mace] 76).

## Reset

- At reset the MAC core reset bit is set and the revision reads 1 (established,
  [mace] 71).
- At reset DMA control, interrupt status, the interrupt delay, both ring
  pointers and the FIFO indexes and count read zero (established, [mace] 72
  through 75).
- The cluster FIFO address contents are not initialised (established, [mace] 75).
- Reset values are not given for the station addresses, the multicast mask, the
  ring base, the secondary address or the read-start register (unknown, [mace]
  70 and 76).

## Diagnostic interrupt request and transmit status vector

- A write sends one interrupt update packet. Its command is INT and its source
  tag is `0x0c`, the Ethernet interrupt update (established, [mace] 173 and
  175).
- The packet carries a 16-bit write-enable field and a 16-bit value field,
  in bits 31:16 and 15:0 of the packet (established, [mace] 175). The defs name
  the register's low half the same way. Table 37 does not say the register bits
  feed those fields, so that mapping is inferred from the matching layout.
- For slot `j` from 0 to 15, a set enable bit writes value bit `j` into
  interrupt slot `j`. A clear enable bit leaves slot `j` alone. A write with no
  enable bits changes no slot. The packet field names support this reading;
  the specification gives no per-bit text for the register (inferred).
- Slot 3 is the Fast-Ethernet interface (established, [mace] 179, Table 90).
  Packet bit `j` being slot `j` is inferred: the packet and the table both
  number sixteen slots.
- The chip sends the interrupt group to CRIME whenever its level changes
  (established, [mace] 179). A value written by the diagnostic port stays in
  CRIME until the group changes again (inferred from that rule; the
  specification does not describe the case directly).
- The chip sends one interrupt packet at a time (established, [mace] 172).
- The specification gives two ordering rules that do not agree. Page 172 calls
  interrupt packets out of band, so they bypass pending memory writes. Page 179
  says interrupt messages must be ordered with DMA writes from the same source
  and that no out-of-band signalling is allowed (established, both pages).
  Which rule applies to a diagnostic write is unknown.
- A read returns the transmit status vector. It is written over the first
  doubleword of the transmit message after transmission (established, [mace] 70,
  78 and 79).
- Unknown: the reset value of the vector. The table gives none.
- Unknown: whether a transmit that fails before the MAC runs, for example on a
  bad descriptor or a failed payload read, changes the vector.
- Unknown: whether a failure in the later status write to memory changes the
  vector.
- Unknown: whether a read has any effect. The table labels the register
  read-only and says nothing more.

## Open

- Unknown: whether a diagnostic write feeds back into the Ethernet condition
  that drives the group, and whether the chip ever sends the group value again
  without a change.
- Unknown: whether any reset clears a diagnostic value that was written.
- Unknown: the effect of the upper 32 bits of a 64-bit write, and of accesses
  narrower than 64 bits. The specification gives only the 64-bit access rule.
- Unknown: the receive DMA memory-error event. The specification gives a
  transmit memory-error flag and a receive FIFO overflow flag, but no receive
  memory-error flag.
- Unknown: the DMA reset control that the pointer section refers to.
- Unknown: whether a physical capture matches the packet mapping above. No
  capture of this register is in the repository.
