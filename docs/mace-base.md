# O2 MACE base: PCI bridge, interrupt routing, serial and RTC frontends

This page covers the parts of the O2 MACE I/O ASIC that the register sources
in `devices/mace_pci/registers.toml`, `devices/mace_periph/registers.toml` and `devices/mace_timer/registers.toml`
do not state in prose: where the PCI devices sit and which CRIME bits they
reach, how PCI byte positions and bus-master windows map, the CPU apertures
onto PCI memory, the PCI reset path, the external serial and RTC
frontends, and the Misc Control register with its Number-In-a-Can line.
Register offsets, widths and reset values live in the defs; this
page does not repeat them.

Grades follow [AGENTS.md](../AGENTS.md): **established** (a published document
states it, with the page), **inferred** (a reasoned reading, with the
reasoning) or **unknown**.

Sources:

- **[mace]** SGI, *MACE I/O ASIC Specification*, chip revision 2.0, July 16,
  1996. Stored as `docs/sources/specs/mace-2.0-specification.pdf`. Page
  numbers are the printed ones.
- **[o2ref]** SGI, *O2 Workstation Hardware Reference Guide*, 007-3275-003,
  stored as `docs/sources/manuals/007-3275-003.pdf`. Printed pages 34 and 43
  are the PCI board installation sections.
- **[guide]** SGI, *IRIX 6.3 for O2 Device Driver Programming Guide*,
  007-3443-002. A published guide, not stored in this repository (see
  [published-sources.md](published-sources.md)). Its PCI pages are cited
  below as read for this page.
- Public driver code: Linux `arch/mips/pci/fixup-ip32.c` and
  `arch/mips/pci/ops-mace.c`, OpenBSD `sys/arch/sgi/pci/macepcibridge.c`.
  These show what software expects. They do not prove hardware behaviour.

## Address map

| Block | Physical base | Grade |
|---|---:|---|
| MACE register window | `0x1f000000` | established ([mace] 181, primary address map) |
| PCI host bridge control | `0x1f080000`, 524 KiB, six registers | established ([mace] 161, 181) |
| Peripheral controller | `0x1f300000` | established ([mace] 181) |
| External ISA I/O | `0x1f380000` | established ([mace] 181) |
| Serial port 1 (COM 1) | `0x1f390000` | established ([mace] 133, ISA base plus `0x10000`) |
| Serial port 2 (COM 2) | `0x1f398000` | established ([mace] 133, ISA base plus `0x18000`) |
| Calendar clock | `0x1f3a0000` | established ([mace] 133, ISA base plus `0x20000`) |

The MACE primary address map (printed page 181) gives the window base
`0x1f000000`. [docs/mace-video.md](mace-video.md) grades that base as
inferred. The address map states it, so that grade is out of date. This page
does not edit that page.

Within the peripheral controller, the three timer compare registers repeat at
`0x1f350000`, `0x1f360000` and `0x1f370000` (established, [mace] 181). Only
the PCI block's six registers fail to repeat (established, [mace] 161).

## PCI bridge and expansion bus

- The PCI bus runs at 33.33 MHz. The bridge is a rev 2.1 host with the 64-bit
  extensions and is designed for three 64-bit expansion slots and two onboard
  SCSI devices at a minimum (established, [mace] 157 to 158).
- The O2 has one PCI option position, in the PCI tray. The O2 reference guide
  describes installing one board there (established, [o2ref] printed pages 34
  and 43). The chip's three slot positions do not all fit this machine.
- Slot width and signalling voltage are unknown. The guides read here do not
  state them.
- The bridge does not accept a dual-address cycle as a target. A 64-bit data
  width therefore does not give a PCI address above 32 bits (established,
  [mace] 157 to 158 and 161).
- The O2 PCI adapter does not respond to REQ64#. A 64-bit logical transfer
  runs as two 32-bit data phases (established, [guide] 379). The chip text
  describes 32-bit and 64-bit target transfers ([mace] 157). The guide is the
  O2-specific statement, and the chip revision it describes is unknown.

### Device numbers

PCI device numbers are not given by the chip. The chip's interrupt table
names the devices by slot. The numbering below is the one the public drivers
use.

- Devices 1 and 2 are the two onboard AIC-7880 SCSI functions, at bus 0 devfn
  `0x08` and `0x10` (inferred: Linux's O2 PCI quirk and OpenBSD's O2 map agree).
- Device 3 is the option board, devfn `0x18` (inferred: Linux
  `fixup-ip32.c` and OpenBSD `macepcibridge.c` agree; the board's IDSEL
  wiring is not documented here).
- Devices 4 and 5 are the chip's slots one and two. The stock O2 board has no
  slot there (inferred from the guides and from driver comments).
- The onboard AIC functions use vendor and device ID `9004:8078` (inferred:
  public AIC drivers). Their revision and subsystem IDs are unknown.

### Interrupt routing

The chip's external interrupt table (printed page 166) and its CRIME bit
assignments (printed page 179) fix the route from each PCI INTx line to a
CRIME bit. The device column is the inferred numbering above.

| PCI device | INTA | INTB | INTC | INTD | Grade |
|---|---|---|---|---|---|
| 1, SCSI controller 0 | CRIME 8 (input 0) | unrouted | unrouted | unrouted | INTA established; B to D unrouted inferred (OpenBSD maps none, NetBSD refuses them) |
| 2, SCSI controller 1 | CRIME 9 (input 1) | unrouted | unrouted | unrouted | INTA established; B to D unrouted inferred |
| 3, option board | CRIME 10 (input 2) | CRIME 13 (input 5) | CRIME 14 (input 6) | CRIME 15 (input 7) | chip wiring established; the connector wiring on the O2 board is inferred |
| 4, slot one | CRIME 11 (input 3) | CRIME 15 (input 7) | CRIME 13 (input 5) | CRIME 14 (input 6) | chip wiring established; no stock slot inferred |
| 5, slot two | CRIME 12 (input 4) | CRIME 14 (input 6) | CRIME 15 (input 7) | CRIME 13 (input 5) | chip wiring established; no stock slot inferred |

- Input 0 is "SCSI Controller INTA#" and input 1 is "SCSI Controller 1" in the
  control and CRIME tables (established, [mace] 164 and 179). Table 87 (printed
  page 166) labels input 1 "SCSI Controller INTB#". The route to CRIME bit 9
  is established by the other two tables. Which physical pin the second SCSI
  chip uses on the board is unknown.
- Linux's `irq_tab_mace` and NetBSD rotate INTB to INTD for devices 4 and 5
  the other way. The chip table is followed here. The disagreement is recorded
  in the sources and is not resolved.
- A card that raises INTA on the option board should set CRIME bit 10 and no
  other PCI bit. The O2 reference guide and PROM enumeration should find it at
  devfn `0x18`.

The PCI error condition reaches CRIME bit 7, and the MACE PCI control enables
for inputs 0 to 7 are described in `devices/mace_pci/registers.toml`.

## PCI byte positions

The chip's PCI section has no table for byte positions. The rules below come
from the published O2 driver guide and from the public drivers. They describe
how software sees PCI programmed I/O and bus-master memory on this bridge.

### CPU programmed I/O

| CPU access width | Effect | Grade |
|---|---|---|
| 8-bit | A PCI byte at offset `p` is reached at CPU offset `p ^ 3`. The value is not swapped. | established for PCI programmed I/O ([guide] 398, Table 15-3) |
| 16-bit | Offset `p ^ 2`. The halfword value is not swapped. | the offset rule is established ([guide] Table 15-3). The no-swap reading follows from [guide] 397 and the table, which gives only address bits |
| 32-bit | Address and value unchanged. | established ([guide] 397) |
| 64-bit | Not specified. Drivers do not swap it, and the bridge issues only 32-bit cycles. | unknown |
| I/O space against memory space | The same rule at each width. | inferred (the guide and all three driver lineages treat them alike) |

Software sees 32-bit words unchanged, with the XOR on sub-word offsets and no
value swap. The public drivers' ordinary accessors follow the same rule. Only
their string helpers byte-swap, and that is driver code, not hardware.

### Bus-master memory windows

The bridge gives PCI masters a 4 GiB memory space. The lower 2 GiB reach host
RAM, and the upper 2 GiB are for PCI-to-PCI memory (established, [mace] 159).
The lower 2 GiB split into two views of the first 1 GiB of host RAM.

| PCI address | View | Behaviour | Grade |
|---|---|---|---|
| `0x00000000` to `0x3fffffff` | byte swapped | Window existence established ([mace] 159). A fully enabled, aligned 64-bit write of `0x0807060504030201` delivers `0x0102030405060708` to memory ([guide] 380). | window established; the 64-bit example established |
| same | byte swapped | For device-to-memory transfers, the byte at PCI address `A+i` lands at RAM byte `r+i` at every width (the ordered-stream mode, [guide] 558). Memory-to-device reads follow the same window but have no document of their own. Linux, OpenBSD and NetBSD use this window for ordinary PCI DMA. | inferred |
| `0x40000000` to `0x7fffffff` | native | Window existence established ([mace] 159). Values keep their numeric value. A byte at offset `p` sits at `p ^ 3`, a halfword at `p ^ 2`, and the two halves of a 64-bit value arrive swapped ([guide] 558 to 559). | window established; per-byte rule inferred (the guide names two modes, not these windows) |
| `0x80000000` and up | PCI-to-PCI | Not host RAM (established, [mace] 159 to 160). PCI device memory BARs belong here (established, [mace] 159). | established |
| partial or disabled byte enables, other reverse-direction cases | unknown | | unknown |

A 64-bit native-view write with disabled byte positions can store bad data
(revision 0 only, established, [mace] 167). Revision 0 is covered below.

### CPU apertures onto PCI memory

| CPU physical | PCI memory | Relation | Grade |
|---|---|---|---|
| `0x280000000` to `0x2ffffffff` | `0x80000000` to `0xffffffff` | CPU = PCI + `0x200000000` | established from the drawn address figure ([mace] 159 to 160); values as printed in the figure |
| `0x1a000000` to `0x1bffffff` | `0x80000000` to `0x81ffffff` | CPU = PCI - `0x80000000` + `0x1a000000` | the 32 MiB span is drawn (established); the span that works depends on the CRIME revision |

On the Petty Crime CRIME variant, PCI low memory at `0x1b000000` to
`0x1bffffff` hangs the system. The range `0x1a000000` to `0x1affffff` aliases
correctly (established, [mace] 167). The fitted O2's CRIME revision is
unknown, so the low alias size is unknown too. The MACE host-bridge revision
readback cannot tell the two CRIME variants apart.

### Revision 0 errata

The specification lists these under revision 0 and gives no status for later
revisions. The MACE 2.0 register readback is 1 (see `devices/mace_pci/registers.toml`).

- The bridge gives PCI I/O cycles a 4-byte-aligned address. Byte and halfword
  I/O accesses may miss on a device that decodes the full address (established,
  [mace] 167).
- A 64-bit native-view write with disabled byte positions can store bad data
  (established, [mace] 167). This does not affect 32-bit masters.

## Bursts and read-ahead

- A burst ends at a 128-byte line boundary. The bridge disconnects there, and
  a master that continues must start another transaction. The chip text's
  example is a 256-byte read: a 128-byte burst, a disconnect at the line end,
  and another transaction for the rest (established, [mace] 158). PCI 2.1
  (printed pages 41 to 43) treats Disconnect as a normal target termination
  that can fall on a resource boundary.
- The bridge's virtual PCI cache line is at most 128 bytes. A device's
  configured cache-line size may be smaller (established, [mace] 158 to 159).
- Memory Read and Memory Read Line get the same read-ahead. Memory Read
  Multiple gets read-ahead only when PCI Control bit 11 is set, and then only
  when the master reads across a 128-byte boundary. See `devices/mace_pci/registers.toml`
  (established, [mace] 158 and 164).
- Read-ahead is a prefetch hint. It is not hardware cache coherency.
- A PCI memory write invalidates buffered reads for the same 128-byte region
  (established, [mace] 159). The specification does not say that a CPU store
  to RAM does the same, so that is unknown.
- Capacity, replacement order, latency, initial contents, and the effect of
  an interrupt that arrives during an outstanding prefetch are not documented
  (unknown). An implementation without retained prefetch data must say so and
  test the behaviour it claims.

## Interrupt delivery

- PCI inputs are level sensitive. MACE sends a new value to CRIME when an
  input's level changes (established, [mace] 179).
- The peripheral controller ORs each group of sources and sends the result
  to CRIME whenever the group's level changes (established, [mace] 179). Status
  bits 0 to 7 feed CRIME bit 6, bits 8 to 15 feed CRIME bit 5, and bits 16 to 31
  feed CRIME bit 4 (established, [mace] 179).
- The PCI inputs reach CRIME bits 8 to 15 when enabled, and the PCI error
  condition reaches CRIME bit 7 (established, [mace] 179).
- MACE interrupt messages must be strongly ordered with the DMA writes posted
  by the same source. The processor must not see a completion interrupt before
  that DMA data is visible in memory. This applies to PCI storage DMA and to any
  MACE DMA engine (established, [mace] 179). The rule does not settle the
  byte-swap view above.
- A timer interrupt is acknowledged by writing its compare register. RTC and
  UART interrupts are acknowledged in those devices, and then the peripheral
  group falls (established, [mace] 147 and 125 to 126).
- Peripheral mask bits gate delivery. They do not clear the device condition
  behind a status bit (established, [mace] 125 and 147).

## PCI reset

| Fact | Grade | Source |
|---|---|---|
| `PCIRst_N` is a PCI-group output in the chip's pin table. It is the only PCI-group reset signal there. | established | [mace] 188 |
| No bit of the six PCI host registers drives it. The control register holds interrupt enables, SERR and parity response, arbiter setup and error enables. The flags register holds latches. The revision register is a flush write. | established | [mace] 161 to 165, Tables 85 and 86 |
| Ring-base bit 0 resets the external serial and parallel controllers through the `RstISA` pin in the ISA pin group, not a PCI pin. | established | [mace] 123 and 185 |
| Linux and OpenBSD never reset the PCI bus. | established for those drivers only; a driver that never resets says nothing about the hardware | public Linux and OpenBSD sources |
| The IRIX O2 driver guide's PCI chapter has no bus reset call. | established as an absence in that guide | [guide] chapter 15 |
| On an O2, the specified way to assert PCI RST# is whatever asserts the board's cold reset. | inferred | the pin names and the absence of any other reset control |
| `PCIRst_N` follows the chip's `SysReset` input, which is a CRIME-facing input. | the two pins exist (established, [mace] 194); whether they are connected, and the reset timing and polarity, are unknown | |
| What a PCI reset clears inside the bridge (error latches, read buffers, configuration state) | unknown | |

The specification shows no warm PCI reset register. Only a machine reset, which
returns the bridge and all PCI devices to power-on state, is specified as
resetting the PCI bus.

## Serial frontends

- Two external 16C550-compatible UARTs sit at `0x1f390000` and `0x1f398000`,
  with byte registers on a 256-byte stride (established, [mace] 133). The
  registers have the standard 16550 meanings, and the chip's serial mode is
  described as behaving exactly like a National 16550 (established, [mace] 129).
- The TI IR and clock register sits at the 16550 scratch-register position.
  It can be read and written only while LCR DLAB is set (established, [mace]
  126, Table 55).
- In that register, bit 7 selects the IR encoder and decoder. Bits 5:0 are a
  clock prescaler that divides the input clock by 0 to 31.5 in steps of 0.5
  (established, [mace] 126).
- With a 22 MHz input, prescaler 3 gives a 7.33 MHz baud-rate base, and 5.5
  gives the 4.00 MHz MIDI base (established, [mace] 126).
- Public Linux and OpenBSD code register the UART input clock as 1,843,200 Hz
  (inferred, a software expectation). That value is not what the 22 MHz path
  above produces by itself. Which clock feeds the 16550 is unresolved.
- Device interrupts reach peripheral status bit 20 (port 1) and bit 26 (port 2),
  then CRIME bit 4 (established, [mace] 125 to 126 and 179).
- The TL16PIR552PH data sheet controls the port's external interrupt output with
  modem control bit 3, which master reset clears (inferred, TI SLLS222A printed
  pages 25 and 30). The part's identity in the O2 is not established, so this
  stays inferred until it is. The register items are in
  `devices/mace_uart/registers.toml`.
- The same data sheet puts the infrared select on bit 6 of the scratch-position
  register, with the prescaler in bits 5:0, and after reset makes UART 0 an
  infrared channel and UART 1 an ordinary UART (inferred, TI SLLS222A printed
  page 33). That conflicts with the MACE specification's bit 7 above. The data
  sheet's UART 0 and UART 1 are not mapped to MACE ports 1 and 2 here, since
  that wiring is unknown. See the unresolved list.
- The MACE serial DMA channels are a separate feature, covered in
  [mace-serial-dma.md](mace-serial-dma.md). A PIO-only frontend must not claim
  DMA support.

## RTC frontend

- The external Dallas DS1687 calendar clock is reached through directly
  addressed byte registers on a 256-byte stride, at `0x1f3a0000` (established,
  [mace] 121 and 133). It is not an IOC3-style address and data pair.
- The MACE supplies the clock's alarm interrupt to peripheral status bit 8, and
  the clock has no DMA channel (established, [mace] 121, 125 and 133).
- Deassertion must come from the clock's own status acknowledgment. The MACE
  has no separate response (established, [mace] 125 to 126).
- The contents of battery-backed RAM and the power-on calendar value are unknown.
  Register meanings belong to the clock's own contract, which this repository
  does not yet hold.

## Misc Control and the Number-In-a-Can line

- Misc Control sits at offset `0x08` of the peripheral block, beside the ring
  base and the interrupt status and mask (established, [mace] 122). It holds the
  Flash-ROM write enable, the Number-In-a-Can line control, the LED enables,
  the DP-RAM write enable and the timer test mode (established, [mace] 124).
  Its fields are in `devices/mace_periph/registers.toml`.
- The specification lists a "simple interface to Number-In-a-Can serial PROM"
  among the ISA features (established, [mace] 121). The register drives one
  bidirectional line. Bit 2 holds it low when clear and releases it when set.
  Bit 3 reads its current level (established, [mace] 124).
- The protocol on that line, its timing, the part on the other end and the
  bytes it holds are not in the specification (unknown).
- The specification puts the system serial number and the Ethernet address in
  the Dallas calendar module, which has a unique 56-bit silicon serial number
  embedded in it (established, [mace] 121). Nothing in the Misc Control
  description assigns the address to the Number-In-a-Can line, so the line is
  not a source for the address on the specification's evidence (established as
  an absence in [mace] 121 to 124).
- The specification says every register is read and written by 64-bit
  programmed I/O (established, [mace] 122). It does not say what a narrower
  access to Misc Control does, and it does not place a 32-bit word of the
  register in either half of the 64-bit value (unknown).

## Unresolved

- The `PCIRst_N` timing and what a PCI reset clears (see the reset table).
- Partial and disabled byte enables, and the 64-bit programmed I/O rule.
- The PCI error flags reset word. The register summary gives the flags register
  a reset of zero (printed page 162). The detailed table (Table 84, printed
  page 163) gives DEVSEL timing at bits 3:2 with reset 1, and fast back-to-back
  capable at bit 1 with reset 1. Public Linux and OpenBSD headers put DEVSEL at
  bits 7:6. Until that conflict is settled, no complete reset word and no
  DEVSEL bit placement is asserted.
- Which clock feeds the 16550s (the 22 MHz path or the 1,843,200 Hz software
  clock).
- Which part the O2's two external UARTs are. The TI data sheet is the only
  source for the modem control bit and the scratch reset above, so those stay
  inferred until the part is identified.
- The infrared select bit in the scratch-position register: bit 7 in the MACE
  specification (printed page 126) and bit 6 in the TI data sheet (printed page
  33). The MACE reading is established as printed, so the conflict is recorded,
  not settled.
- Whether the scratch value survives the MACE external reset from ring-base bit
  0. The TI data sheet says master reset has no effect on it, but nothing shows
  that the MACE reset pin is a master reset.
- The physical pin that the second onboard SCSI controller uses (the table
  label and the route to CRIME bit 9 disagree on the label).
- The serial DMA channel blocks, which [mace-serial-dma.md](mace-serial-dma.md)
  covers, and their open questions.
- The Number-In-a-Can line protocol, timing, part and contents (see the Misc
  Control section above).
- Narrow access to Misc Control (see the same section).
- Slot width and signalling voltage.
- Read-buffer capacity, replacement, latency and initial contents, and whether
  a CPU store invalidates read buffers (see the bursts and read-ahead section).
- Whether PCI Control bit 16 invalidates only prefetch buffers or all read
  buffers, as the printed table's split suggests (see `devices/mace_pci/registers.toml`).
- Bus grant timing under PCI Control bit 15 (park on host or on the last master
  in use). The published text names the two parking targets and nothing about
  when a grant moves between them (unknown).
