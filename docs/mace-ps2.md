# O2 MACE PS/2 keyboard and mouse ports

The MACE I/O ASIC has two PS/2 serial ports, one for a keyboard and one for
a mouse. Each port is an IBM PS/2 auxiliary-device interface. The register
offsets, widths and bit meanings live in `devices/mace_ps2/registers.toml`; this page
covers what the specification says in prose, the interrupt levels, and the
open questions.

Grades follow [AGENTS.md](../AGENTS.md): **established** (a published document
states it, with the page), **inferred** (a reasoned reading, with the
reasoning) or **unknown**.

Sources:

- **[mace]** SGI, *MACE I/O ASIC Specification*, chip revision 2.0, July 16,
  1996. Stored as `docs/sources/specs/mace-2.0-specification.pdf`. Page
  numbers are the printed ones.
- Public Linux driver `drivers/input/serio/maceps2.c` at
  `db2ddb87143519e20a95aa36c60b36107b736a58`, and
  `arch/mips/include/asm/ip32/mace.h` at the same revision. These show what
  software expects. They do not prove hardware behaviour. The driver was not
  re-read against that revision for this page; the claims below are the
  ones recorded when the page was written.

## Address map and serial frame

- The keyboard and mouse share a 64 KiB slice of the peripheral controller at
  `0x1f320000`. Address bit 5 selects the port: zero is the keyboard bank at
  `0x1f320000` and one is the mouse bank at `0x1f320020` (established,
  [mace] 181, tables 92 and 93).
- Within a bank, address bits 4:3 select the register. Existing registers repeat
  through the rest of the block (established, [mace] 122 and 181).
- Each serial stream is 11 bits: a start bit of zero, eight data bits least
  significant first, odd parity, and a stop bit of one (established, [mace] 139,
  table 69). The auxiliary device supplies the serial clock, and the port
  shifts out on its falling edge (established, [mace] 141). The external clock
  line is open-collector, and the port's clock-enable output can inhibit it
  (established, [mace] 141).
- The auxiliary device polls the clock at 100 microsecond intervals, so software
  must allow settling time after it changes clock permit (established, [mace] 141).
  The specification does not give a full clock period. The clock frequency and
  bit timing are unknown.

## Receive, transmit and flow control

- The port does not start another inbound stream until the receive buffer has
  been cleared and no output byte is waiting (established, [mace] 140).
- Setting the inhibit-after-transmit bit releases the clock after the next
  stream is sent (established, [mace] 141). The bit and its effect are in the
  defs.
- A timeout exists in the transmit-enable description, and the specification
  says its zero state disables it. It does not say how long the timeout is.
  The timeout is unknown.
- The receive and transmit procedure sections of the specification are
  placeholders (established, [mace] 142). The procedures that tie the bits
  together are therefore not given (see Unknown).

## Interrupt requests

- The port requests an interrupt when its transmit buffer is empty and transmit
  interrupts are enabled (established, [mace] 141).
- It requests an interrupt when its receive buffer is full and receive
  interrupts are enabled (established, [mace] 141).
- The two causes are summed into the peripheral status group. Keyboard
  requests use bit 9, keyboard poll bit 10, mouse requests bit 11 and mouse
  poll bit 12. The four bits are read only and feed CRIME interrupt slot 5
  (established, [mace] 125 and 179).
- The poll bits are the unmasked, non-interrupt version of the request.
  The specification does not say how the port's local enables affect them.
  Reading them as the OR of the transmit-empty and receive-full conditions is
  inferred from that description, so a poll bit can be set with both
  interrupt enables clear.
- Masking a peripheral source does not clear the device condition behind it
  (established, [mace] 125 and 147).

## Software expectations

These come from the public Linux driver. They are inferred expectations, not
hardware evidence.

- The driver waits for the transmit buffer to report empty before it writes a
  byte. It reads the receive buffer when the receive-full condition is set.
  Reading the receive buffer clears that condition well enough for the next
  byte to arrive.
- The driver asserts and then releases the controller reset before it enables
  reception.
- A transmit buffer on an idle, initialised port becomes empty after reset.
  This is what the driver expects. The specification's reset table prints the
  transmit-empty bit as zero (see below).

## Reset

- Control resets to `0x10` (established, [mace] 141).
- The status register's reset table gives clock permitted a reset of one, and
  transmit empty a reset of zero. It leaves the clock level unfixed
  (established, [mace] 142).
- The specification's reset table and the driver's expectation disagree
  about the transmit-empty bit after reset. Which one the silicon does is
  unknown.
- The receive buffer and its status alias reset to zero (established, [mace] 140).
  The status table resets status bit 1, which the alias mirrors at bit 9, to
  one (established, [mace] 142). The two tables conflict on bit 9 after reset.
  Which level the silicon takes is unknown.
- The reset behaviour of the external device clock line at power-up is
  unknown.

## Unknown

- The clock frequency and the bit-level timing of the serial stream.
- The length of the transmit-enable timeout.
- What a narrower access than 64 bits does, and what a read or write in the
  wrong direction does.
- When the parity and framing error flags are cleared.
- The reset level of the transmit-empty bit at power-up (see Reset).
- Revision-specific reset behaviour of the port.
- How an interrupt is acknowledged. The specification folds the transmit-empty
  and receive-full causes into one request bit per device and does not say how
  software tells them apart or clears them.
- When the receive-full condition clears, what happens to a byte that arrives
  while one is waiting, and what a transmit write does while the buffer is
  busy. The specification's procedure sections do not give these.
- What happens when reset is asserted during a frame in flight.
- Whether a register or width the specification does not define causes a bus
  error. The specification defines no fault for these accesses.
- The host's inhibit and resume sequence on the clock line. Settling it needs
  an IBM PS/2 electrical or protocol source that is not in the repository yet.
