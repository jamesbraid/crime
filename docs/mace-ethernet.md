# O2 MACE Ethernet: diagnostic interrupt request and transmit status vector

This page covers the diagnostic register at offset `0x58` of the MACE
Fast-Ethernet block. The register and the status vector layout are in
`defs/mace_ethernet.toml`. This page covers what the defs cannot say: what a
write does to the interrupt tree, what a read returns, and what the
specification leaves open. Register offsets, widths and field positions live
in the defs and are not repeated here. The rest of the Fast-Ethernet block
(MAC control, DMA, receive FIFO, PHY) has no contract in this repository yet.

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
  CRIME PIO tag is `0x08` (established, [mace] 181).
- Every register in the block is 64-bit aligned and is accessed with 64-bit
  programmed I/O (established, [mace] 70).
- Offset `0x58` has one address and two meanings. A write is the Interrupt
  Request port, write-only, bits 31:0. A read is the Last Transmit Vector,
  read-only, bits 63:0 (established, [mace] 70).

## Write: interrupt update packet

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

## Read: last transmit vector

- A read returns the transmit status vector. The bit layout is in the
  `TX_STATUS_VECTOR` word in the defs (established, [mace] 79).
- The MAC unit supplies the vector. The chip writes it over the first
  doubleword of the transmit message after transmission (established, [mace]
  78 and 79).
- Unknown: the reset value. The table gives none.
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
- Unknown: whether a physical capture matches the packet mapping above. No
  capture of this register is in the repository.
