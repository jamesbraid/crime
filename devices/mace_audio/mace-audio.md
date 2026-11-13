# MACE audio interface and AD1843 codec

The O2 has no audio chip of its own. MACE, the I/O ASIC, runs a single serial bus
to one Analog Devices AD1843 codec, and three stereo DMA channels move samples
between that bus and main memory. This page covers what the register defs cannot
carry: serial timing, sample formats, codec timing and routing, and the places
where the sources disagree. Register fields live in
[devices/mace_audio/registers.toml](registers.toml) (controller), [devices/ad1843/registers.toml](../ad1843/registers.toml)
(codec), [devices/mace_timer/registers.toml](../mace_timer/registers.toml) (audio time stamps) and
[devices/mace_periph/registers.toml](../mace_periph/registers.toml) (audio interrupt causes).

Ratings follow [AGENTS.md](../../AGENTS.md): **established** means read in the cited
passage, **inferred** is a reasoned reading, **unknown** means the sources do not settle it.

## Sources

- **[mace]** SGI, *MACE I/O ASIC Specification*, chip revision 2.0, 1996. The
  audio chapter is printed pages 61 to 66, the peripheral registers 122 to 125,
  the timer 147 and 148, and the sub-address map 179. A stored copy is
  [references/documents/specs/mace-2.0-specification.pdf](../../references/documents/specs/mace-2.0-specification.pdf).
  The pages cited here were checked against that copy.
- **[ad1843]** Analog Devices, *AD1843 Serial-Port 16-Bit SoundComm Codec*,
  REV.0, 1996. Register pages 28 to 50, the register summary on page 52, and the
  serial, reset and routing text. The PDF is not stored here, and the codec
  facts were not re-checked against it. Where this page cites a codec page
  number, it is the number the source gives.
- **[g711]** ITU-T G.711 (11/1988), tables 1a/1b (A-law) and 2a/2b (mu-law).

## Controller

- The audio registers start at `0x1f300000`. Every register is a 64-bit word
  on a 64-bit boundary, read and written with 64-bit programmed I/O
  (established, [mace] 61 and 62, table 26). The block decodes at the sub-address
  map's block 000 (established, [mace] 179).
- Three stereo DMA channels: one stereo input (capture) and two stereo outputs
  (established, [mace] 61). The blocks sit at `0x20` (capture), `0x40`
  (playback 1) and `0x60` (playback 2), each with control, read pointer, write
  pointer and depth at +0, +8, +0x10 and +0x18 (established, [mace] table 26).
- **Channel labels conflict.** The ring IDs in table 35 and the timer table
  call the `0x40` block output channel #1. Tables 26 and 27 and the interrupt
  table call it output channel #2. The block offset, the ring page number and
  the timer pair addresses agree with one another, so this page and the defs
  use the block offset. The printed numbers are not reconciled (unknown which
  label is meant).

### Codec command and response

- The command word repeats on every serial frame until it is replaced. A write
  reloads the codec every frame. A read request makes the codec's reply appear
  in the response register (established, [mace] 63, table 28).
- The response register holds the last 16-bit word the codec returned,
  whichever register was addressed (established, [mace] 63, table 30).
- The codec-present bit is set while the serial clock runs, so it shows that
  a codec is attached and clocking, not that it has been configured (established,
  [mace] 62, table 27).

### Interrupts

- Every audio cause is a read-only bit in the peripheral status register at
  `0x1f310010`, bits 0 to 7, and the group drives CRIME interrupt slot 6
  (established, [mace] 125 and 147). The CRIME side is already recorded in
  [devices/crime/registers.toml](../crime/registers.toml) as `IP5_CAUSES` bit 6.
- Software reads the peripheral master status, dispatches to the audio
  subsystem, and that subsystem clears its own cause (established, [mace] 61,
  section 3.2.1).
- A threshold cause follows the ring level set by its threshold field. Channel
  reset holds the channel's interrupt output inactive (established, [mace] 64,
  table 33).
- The codec-response cause is set when the masked bits of the last response
  are nonzero (established, [mace] 61, table 29).
- The volume cause is latched on a rising edge of either push-button input.
  Software clears a latch by writing zero to its bit and keeps it by writing one.
  The table does not say which button drives which bit (established, [mace] 62).

## DMA rings

- Ring address: the shared base in bits 31:15 of the ring-base register, then
  the ring ID in bits 14:12, then the block index in bits 11:5, then five zero
  bits. Ring ID 0 is capture and IDs 1 and 2 are the two playback channels
  (established, [mace] 65 and 66, table 35). Each ring is 4 KiB and holds 128
  blocks of 32 bytes.
- Empty is read equal to write. Full is write equal to read minus one, so one
  block is never used (established, [mace] 66).
- Ownership: capture owns the write pointer, and each playback channel owns
  its read pointer. Software owns the other pointer of each channel
  (established, [mace] 66). The register tables mark both pointers read/write,
  so whether an engine-owned pointer ignores software writes while DMA runs is
  unknown.
- DMA starts as soon as software moves the software-owned pointer off empty
  or full, provided DMA is enabled (established, [mace] 66).
- Playback with an empty ring sends zero stereo pairs to the codec. This holds
  whatever the DMA state is, so the outputs stay quiet until software fills a
  ring (established, [mace] 66).
- A playback underflow, where the ring is not empty and the outgoing FIFO was
  not refilled in time, is fatal. No pointer moves, DMA does not restart on
  late data, and only a channel reset clears it (established, [mace] 66).
- Channel reset holds the control register at `0x400` and clears the registers,
  the FIFO and the MSC count. Disabling DMA freezes the channel state without
  changing it (established, [mace] 64, table 33).

## Sample words in memory

- A capture word is 64 bits and holds one stereo pair. Bits 55:40 carry the
  left sample and bits 23:8 the right. Bits 63:56 and 31:24 hold the sign
  extension of each sample. Bytes 39:32 and 7:0 are `0xff` tags (established, [mace] 65).
  Capture writes four pairs, 32 bytes, in one memory transaction
  (established, [mace] 65).
- A playback word has the same sample positions. Bits 39:32 and 7:0 are ignored
  (established, [mace] 65).
- Clipping: each 24-bit sample is reduced to 16 bits. The published test
  compares bit 31 with bits 30:24. When they disagree, the 16-bit output is all
  ones (established, [mace] 65, section 3.5.2.1). The test is not an ordinary
  signed-overflow check. The rule is reproduced as printed. Whether silicon
  behaves this way for every input is unknown.

## Serial link

- The codec is the bus master. It supplies SCLK and SDFS, and MACE does not
  generate them (established, [mace] 61 diagram and [ad1843] bus-master pages).
- Each serial slot is 16 bits, most significant bit first. SCLK is 12.288 MHz
  after reset and 16.384 MHz when register 26 bit 7 (SCF) is set
  (established, [ad1843] serial pages).
- Register 26 bit 6 (FRS) sets the frame: 32 slots per SDFS frame when clear,
  16 when set. SDFS is SCLK divided by 16 times the slot count, so 24 kHz for
  12.288 MHz SCLK and 32 slots (established, [ad1843] serial pages).
- Ownership groups are six slots, at slots 0 to 5 and, in 32-slot mode, at
  slots 16 to 21. The group rate is SCLK divided by 256, so 48 kHz at 12.288 MHz
  (established, [ad1843] serial pages).
- Slot roles in each group (established, [ad1843] serial pages):

  | Slot | Into the codec | From the codec |
  |---:|---|---|
  | 0 | address, read/write and DAC valid bits | ADC valid bits and DAC requests |
  | 1 | register write data | delayed register response |
  | 2, 3 | DAC1 left and right | ADC left and right |
  | 4, 5 | DAC2 left and right | reserved, zero |

- The codec takes a playback pair only when it asked for that channel. The
  request depends on how full the codec's four-pair FIFO is, including a valid
  write in the same group (established, [ad1843] serial pages).
- Phase registers report the work still pending at the start of master slot 0.
  Pages 39, 42 and 45 give this (established, [ad1843] 39, 42, 45).
- The source describes the 32-slot-mode response timing as a selected
  approximation. Its exact latency is unknown.

## Reset and startup

- RESET and PWRDWN are asynchronous and need at least 100 ns of assertion
  (established, [ad1843] initial-state text).
- A hardware RESET or PWRDWN returns every register to its reset value and blocks
  writes (established, [ad1843] register pages 28 to 50).
- INIT clears about 600 µs after reset release with the reference present. The
  published typical interval is 400 to 800 µs (established, [ad1843]
  initialisation text).
- Clearing PDNI starts converter startup. PDNO stays asserted until startup or
  power-down completes. Power-down takes 5 ms (established, [ad1843]
  initialisation text).
- Calibration: a hardware reset or power-down invalidates it, and the next startup
  calibrates regardless of the auto-calibration bit (inferred, [ad1843] register
  28 and initialisation text).
- Startup and calibration durations: the source gives 470 ms, 474 ms and 4 ms,
  and says it selected them. No published figure is quoted, so the true values
  are unknown.
- The delay from a converter enable to its first conversion: the source selects
  one and gives no published figure (unknown).

## Sample rates

- Selector 0 is a fixed 48 kHz clock. Selectors 1 to 3 are generators 1 to 3
  (established, [ad1843] register 15, pages 28 to 50).
- Normal rates run from 4 to 49 kHz with all resources on. Rates up to 54 kHz
  need the resource-free mode and either one DAC pair or both ADCs off
  (established, [ad1843] register 27 and the rate text).
- The introduction gives the internal rate as 512 times the reference. That
  conflicts with the explicit conditions above. The explicit conditions govern
  here (unknown which the silicon follows).
- Phase work is in units of 1/3000 of a conversion cycle, which is 0.12 degrees.
  Direction 0 advances the phase and 1 retards it (established, [ad1843]
  register pages 28 to 50 and the phase section).
- ADC-to-DAC digital mixing needs the same generator on both sides and an SDFS
  rate at least as high as the conversion rate in bus-master mode (established,
  [ad1843] page 36). At 48 kHz with 12.288 MHz SCLK and 32 slots
  the SDFS is 24 kHz, so that combination is ineligible.

### BIT and CONV rate codes

The low nibble of the generator mode is the BIT code and the high nibble the
conversion basis (established, [ad1843] pages 38, 41 and 43). Values in hertz:

| Code | BIT (low nibble) | CONV basis (high nibble) |
|---:|---:|---:|
| 0 | 2400 | 7200 |
| 1 | 4800 | 8400 |
| 2 | 7200 | 9000 |
| 3 | 9600 | 9600 |
| 4 | 12000 | 11200 |
| 5 | 14400 | 12000 |
| 6 | 16800 | 12800 |
| 7 | 19200 | 7200 × 8/7 |
| 8 | 21600 | 9000 × 8/7 |
| 9 | 24000 | 9600 × 8/7 |
| A | 26400 | 12000 × 8/7 |
| B | 28800 | reserved |
| C, D, E | reserved | reserved |
| F | special, only when both nibbles are F | special, only when both nibbles are F |

- For ordinary codes the BIT rate is the table value times the conversion rate
  f, divided by the CONV basis, plus 200 Hz when the P200 bit is set. f includes
  the 8/7 factor when that is selected. The source publishes the table values and
  the matching-rate behaviour. The scaling direction and the order of the 200 Hz
  step are the source's reading (inferred).
- Code F gives a BIT rate of 128 times f. Whether P200 applies to code F is
  unknown.
- The CONV output is f, or 128 times f when bit 10 (C128) is set. C128 does not
  change BIT (established, [ad1843] pages 38 to 43).
- The BIT and CONV outputs do not pace MACE DMA (established, [ad1843] pages 38 to 43).

## PCM formats and law coding

- Format codes: 0 unsigned 8-bit linear, 1 signed 16-bit two's complement,
  2 mu-law, 3 A-law (established, [ad1843] register 26, page 46 and the format text).
- An 8-bit code occupies serial bits 15:8. Playback ignores the low byte. Capture
  produces zero in the low byte (established, [ad1843] format text).
- Mono DAC mode duplicates the left input and ignores the right (established,
  [ad1843] register 26).
- Mu-law and A-law codes use the G.711 characters, interval by interval, from
  [g711] tables 1 and 2 (inferred from the source's G.711 citation; the codec
  page does not print the tables).

## Analog routing and levels

- ADC analog source codes 0 to 7 are line, microphone, AUX1, AUX2, AUX3,
  mono input, DAC1 analog output and DAC2 analog output. Each channel selects its
  own source (established, [ad1843] register 2).
- Microphone boost adds 20 dB. ADC gain steps are 1.5 dB per code. Analog mix
  gain is 12 minus 1.5 times the code, in dB. Digital attenuation is 1.5 dB per
  code (established, [ad1843] register 2, the mix registers and the routing text).
- Digital mix attenuation code 63 is a full mute. Digital DAC attenuation code
  63 is finite attenuation, not a mute (established, [ad1843] registers 11 to 14).
- Each mute is separate from its gain (established, [ad1843] registers 3 to 14).
- Line inputs: mode 0 is single-ended and reads the positive input against its
  reference. Mode 1 is differential and reads positive minus negative
  (established, [ad1843] register 28).
- Source 6 reads the DAC1 analog output after its gain and mute. Source 7 reads
  the DAC2 analog output after its gain and mute. The exact physical junction
  relative to the final output stages is not established (inferred).
- The DAC2 contribution into the DAC1 analog mix is taken before the DAC2 output
  gain and mute. The DAC2 mix has its own gain and mute (inferred, [ad1843] page 53
  routing diagram).
- The all-mix mute covers the DAC2, AUX1 to AUX3 and microphone analog
  contributions in the diagram. The prose says it covers more, which conflicts
  with the diagram. The diagram reading is used in the defs as inferred (unknown
  which is right).
- Headphone enable powers only the stereo headphone driver. Its mute is separate
  from the mono-output mute (established, [ad1843] register 27 and the routing text).
- The PDMNFT input, when high with the analog mixer off, lets the MIN input feed
  through to the mono output. When low it mutes that feed-through
  (established, [ad1843] pin text). The board wiring of this input is not
  established.
- Gain changes on a DAC take effect at a zero crossing or after a timeout when
  the timing bit is 0, and at the register write when it is 1 (established,
  [ad1843] register 8). The timeout is 384 conversion samples in one passage and
  10 to 12 ms in another, and the sources do not reconcile them (unknown).
- DAC mix mode combines the two DAC contributions into one stream before
  conversion. Changing the mode needs both DACs off (established, [ad1843]
  register 25 and the constraints text).

## Digital ADC sources and filters

- Register 25 digital ADC sources: 0 is the analog ADC, 1 is reserved, 2 is the
  DAC1 digital stream and 3 is the DAC2 digital stream, selected per channel
  (established, [ad1843] page 46).
- The resample filter and the DAC mix mode change only while the converters
  they affect are off (established, [ad1843] register 25 and the constraints text).
- Enhanced resampling needs DAC2 off (established, [ad1843] register 25 and
  the constraints text).

## Power and register writes

- While converter power-down is set, registers 1 to 15, 25 and 27 hold their reset
  values and reject writes. Registers 16 to 24, 26 and 28 stay writable, subject
  to their own rules (established, [ad1843] register pages 28 to 50).
- Clearing a DAC's enable clears its underrun flag, and clearing an ADC's enable
  clears its peak flag (inferred, from the power-domain notes in [ad1843] pages
  28 to 50).
- Register 1 reads return the status and clear it. A write of any value clears it
  too (established, [ad1843] register 1). It is not write-one-to-clear.
- Peak levels, in increasing order: more than 1 dB below full scale, within
  1 dB below, 0 to 1 dB above, more than 1 dB above. A field keeps the largest level
  since its last clear (established, [ad1843] register 1).

## Time stamps

- MSC is the sample pair count and UST is the 960 ns counter. Each counted
  event snaps UST and increments MSC (established, [mace] 61 and 63; UST is
  the counter on page 147).
- MSC counts when the codec delivers or requests a pair, including when the ring
  is full or empty. It does not count in the channel reset state. MSC is writable
  (established, [mace] 63).
- Playback MSC counts each DA request from the codec (established, [mace] 63
  and [ad1843] pages 20, 22 and 24).
- Pair addresses: capture at `0x1f340020`, playback 1 at `0x1f340028` and playback
  2 at `0x1f340030`. A 64-bit read returns UST in bits 63:32 and MSC in bits 31:0.
  Section 7.2.1 of the timer chapter swaps the offsets in its prose. The table and
  the figure on page 63 agree with the layout here (established, [mace] 63 and 147).

## Codec topology

- The codec's sync inputs take the video-output horizontal sync and the
  video-input horizontal sync, plus one external source. Table 36 numbers them
  Sync[3] to Sync[1] and the diagram draws Sync[2:0]. Which pin is which is
  unknown (established for the connections, unknown for the labels).
- Photographs cited by the source identify an AD1843JS on an analog option board
  (AV1, 030-0728-004, rev C) and a digital board (AV2, 030-1223, rev B). The
  photographs are not stored here. The link from these boards to the O2 board
  is not established (inferred for the chip identity, unknown for the
  connection).

## Open questions

- Which MACE channel label is printed correctly (see Controller).
- Whether an engine-owned pointer ignores software writes while DMA runs.
- The DAC gain-change timeout: 384 conversion samples or 10 to 12 ms.
- The internal rate as a multiple of the reference (512 times, or the explicit
  conditions).
- Published startup and calibration durations, which the sources do not give.
- The silicon revision of a fitted codec. The table reset gives 1, the first silicon
  revision. A fitted part has not been read.
- Whether silicon applies the 24-to-16-bit clip rule as printed for every input.
- The codec's sync pin labels (Sync[3] to Sync[1] or Sync[2:0]).
