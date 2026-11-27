<!-- generated from devices/ad1843/registers.toml by defs-gen - do not edit, change the source -->
<!-- defs-gen 4 -->
<!-- input sha256 8c5aee84504454f4cf65a84aedb87a4571f16f099bea697abb6e49f5efe9deda -->

# Analog Devices AD1843 stereo codec: the 29 internal registers

The AD1843 serial-port codec used by the O2 MACE audio interface. Register numbers are the codec's own, not MACE byte offsets, and are reached through the MACE codec command register (mace_audio.toml, codec_cmd). Each register is 16 bits. Field masks follow the published register table; bits the table does not define are not listed.

Unit `ad1843`, macro prefix `AD1843`.
Default source: Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages..

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Address spaces

| Space | Offset unit | Description |
|---|---|---|
| codec_reg | register index | Codec register numbers. Offsets in this unit are register numbers, not bytes. |

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `status_id` | 0x0 | r | 16 |  | codec_reg | 0xc001 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `underrun_peak` | 0x1 | rw | 16 |  | codec_reg | 0x0 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `adc_input` | 0x2 | rw | 16 |  | codec_reg | 0x0 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `dac2_to_dac1_mix` | 0x3 | rw | 16 |  | codec_reg | 0x8888 | inferred | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `aux1_mix` | 0x4 | rw | 16 |  | codec_reg | 0x8888 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `aux2_mix` | 0x5 | rw | 16 |  | codec_reg | 0x8888 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `aux3_mix` | 0x6 | rw | 16 |  | codec_reg | 0x8888 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `mic_mix` | 0x7 | rw | 16 |  | codec_reg | 0x8888 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `mono_control` | 0x8 | rw | 16 |  | codec_reg | 0x8868 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `dac1_output` | 0x9 | rw | 16 |  | codec_reg | 0x8888 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `dac2_output` | 0xa | rw | 16 |  | codec_reg | 0x8888 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `dac1_digital_attenuation` | 0xb | rw | 16 |  | codec_reg | 0x0 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `dac2_digital_attenuation` | 0xc | rw | 16 |  | codec_reg | 0x0 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `adc_to_dac1_mix` | 0xd | rw | 16 |  | codec_reg | 0x8080 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `adc_to_dac2_mix` | 0xe | rw | 16 |  | codec_reg | 0x8080 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `clock_select` | 0xf | rw | 16 |  | codec_reg | 0x0 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `clock1_mode` | 0x10 | rw | 16 |  | codec_reg | 0xff | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `clock1_hz` | 0x11 | rw | 16 |  | codec_reg | 0xbb80 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `clock1_phase` | 0x12 | rw | 16 |  | codec_reg | 0x0 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `clock2_mode` | 0x13 | rw | 16 |  | codec_reg | 0xff | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `clock2_hz` | 0x14 | rw | 16 |  | codec_reg | 0xbb80 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `clock2_phase` | 0x15 | rw | 16 |  | codec_reg | 0x0 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `clock3_mode` | 0x16 | rw | 16 |  | codec_reg | 0xff | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `clock3_hz` | 0x17 | rw | 16 |  | codec_reg | 0xbb80 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `clock3_phase` | 0x18 | rw | 16 |  | codec_reg | 0x0 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `digital_filter` | 0x19 | rw | 16 |  | codec_reg | 0x0 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `format_lock` | 0x1a | rw | 16 |  | codec_reg | 0x0 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `enables` | 0x1b | rw | 16 |  | codec_reg | 0xc0 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `power_clock` | 0x1c | rw | 16 |  | codec_reg | 0xc400 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |

### Register `status_id`

INIT, the converter power-down state and the silicon revision. Read-only ([AD1843 REV.0 page 28]). Reset sets INIT and power-down, so the codec starts in initialisation. The revision field is read-only and resets to 1, the first-silicon value in the table; the revision of a fitted part is not measured here (established, register pages 28-50 and summary page 52).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15 | `init` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | INIT. Blocks control writes while it is set. |
| 14 | `pdno` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | Holds the registers 1 to 15, 25 and 27 at their reset values and blocks their writes. |
| 3:0 | `id` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | Read-only silicon revision. |

### Register `underrun_peak`

DAC underrun flags and the peak level of each ADC channel. A read returns the status and clears all of it. Any write clears all of it too, so this register is not write-one-to-clear (established, register pages 28-50).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 9 | `su2` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 8 | `su1` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 3:2 | `ovr` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | Largest right ADC level since the last clear: more than 1 dB below full scale, within 1 dB below, 0 to 1 dB above, more than 1 dB above, in increasing order. |
| 1:0 | `ovl` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | Largest left ADC level since the last clear, same four levels as ovr. |

### Register `adc_input`

Analog source, microphone boost and gain for each ADC channel. The gain steps are 1.5 dB per code and the microphone boost adds 20 dB (established, register pages 28-50 and the routing text).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15:13 | `lss` | established | analog_source (line=0, mic=1, aux1=2, aux2=3, aux3=4, mono_in=5, dac1_out=6, dac2_out=7) | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 12 | `lmge` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 11:8 | `lig` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 7:5 | `rss` | established | analog_source (line=0, mic=1, aux1=2, aux2=3, aux3=4, mono_in=5, dac1_out=6, dac2_out=7) | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 4 | `rmge` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 3:0 | `rig` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |

### Register `dac2_to_dac1_mix`

Analog mix of DAC2 into the DAC1 output. Page 53 identifies the register as DAC2-to-DAC1 mixing; the summary's own names for it differ (inferred). Gain is 12 minus 1.5 times the code, in dB. The mute bits are separate from the gain.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15 | `ld2mm` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 12:8 | `ld2m` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 7 | `rd2mm` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 4:0 | `rd2m` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |

### Register `aux1_mix`

Analog mix of the AUX1 input. Same layout and gain law as dac2_to_dac1_mix (established, register pages 28-50).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15 | `lx1mm` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 12:8 | `lx1m` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 7 | `rx1mm` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 4:0 | `rx1m` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |

### Register `aux2_mix`

Analog mix of the AUX2 input. Same layout and gain law as dac2_to_dac1_mix (established, register pages 28-50).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15 | `lx2mm` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 12:8 | `lx2m` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 7 | `rx2mm` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 4:0 | `rx2m` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |

### Register `aux3_mix`

Analog mix of the AUX3 input. Same layout and gain law as dac2_to_dac1_mix (established, register pages 28-50).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15 | `lx3mm` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 12:8 | `lx3m` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 7 | `rx3mm` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 4:0 | `rx3m` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |

### Register `mic_mix`

Analog mix of the microphone input. Same layout and gain law as dac2_to_dac1_mix (established, register pages 28-50).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15 | `lmcmm` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 12:8 | `lmcm` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 7 | `rmcmm` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 4:0 | `rmcm` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |

### Register `mono_control`

Mono mix gain and mute in the upper byte. The lower byte holds the all-mix mute, the mono and headphone mutes, the output swing, the sum mute and the gain-change timing of each DAC (established, register page 33). The all-mix mute is read from the detailed diagram as covering the DAC2, AUX1 to AUX3 and microphone analog contributions only (inferred). The prose describes it more broadly, and the two readings conflict (see devices/mace_audio/mace-audio.md).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15 | `mnmm` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 12:8 | `mnm` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 7 | `allmm` | inferred |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | Scope from the diagram, see the register doc. |
| 6 | `mnom` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 5 | `hpom` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 4 | `hpos` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | Headphone output voltage swing, both channels: 0 is 2 V peak-to-peak, 1 is 4 V peak-to-peak. |
| 3 | `summ` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | Mute of the external SUML and SUMR inputs, which enter through the SUMM node. |
| 1 | `dac2t` | established | gain_timing (zero_cross=0, immediate=1) | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 0 | `dac1t` | established | gain_timing (zero_cross=0, immediate=1) | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |

### Register `dac1_output`

DAC1 output gain and mute, left and right. Gain is six bits, mute is separate. Resets muted (established, register pages 28-50).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15 | `lda1gm` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 13:8 | `lda1g` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 7 | `rda1gm` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 5:0 | `rda1g` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |

### Register `dac2_output`

DAC2 output gain and mute, left and right. Same layout as dac1_output. Gain and mute here control the separate DAC2 output branch. The DAC2 contribution into the DAC1 mix is taken before this gain (inferred from the routing diagram, page 53).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15 | `lda2gm` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 13:8 | `lda2g` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 7 | `rda2gm` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 5:0 | `rda2g` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |

### Register `dac1_digital_attenuation`

DAC1 digital attenuation and mute, left and right. Attenuation is 1.5 dB per code and code 63 is finite attenuation, not mute (established, register pages 28-50 and the routing text).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15 | `lda1am` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 13:8 | `lda1a` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 7 | `rda1am` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 5:0 | `rda1a` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |

### Register `dac2_digital_attenuation`

DAC2 digital attenuation and mute, left and right. Same layout and law as dac1_digital_attenuation (established, register pages 28-50).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15 | `lda2am` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 13:8 | `lda2a` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 7 | `rda2am` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 5:0 | `rda2a` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |

### Register `adc_to_dac1_mix`

Digital mix of the ADC data into DAC1, attenuation and mute per channel. Code 63 is full mute here, unlike the ordinary DAC attenuator (established, register pages 28-50 and the routing text).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15 | `lad1mm` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 13:8 | `lad1m` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 7 | `rad1mm` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 5:0 | `rad1m` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |

### Register `adc_to_dac2_mix`

Digital mix of the ADC data into DAC2. Same layout and code-63 rule as adc_to_dac1_mix (established, register pages 28-50).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15 | `lad2mm` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 13:8 | `lad2m` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 7 | `rad2mm` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 5:0 | `rad2m` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |

### Register `clock_select`

Sample-rate source of each DAC and ADC: 0 is the fixed 48 kHz clock and 1 to 3 are generators 1 to 3. The published table lists code 1 twice for the ADC selectors. Page 53 reads the right ADC code 2 as clock 2, as for the other three selectors (inferred).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 11:10 | `da2c` | established | clock_select (fixed48k=0, gen1=1, gen2=2, gen3=3) | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 9:8 | `da1c` | established | clock_select (fixed48k=0, gen1=1, gen2=2, gen3=3) | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 3:2 | `adrc` | inferred | clock_select (fixed48k=0, gen1=1, gen2=2, gen3=3) | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 1:0 | `adlc` | established | clock_select (fixed48k=0, gen1=1, gen2=2, gen3=3) | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |

### Register `clock1_mode`

Mode of generator 1. Clock 2 and clock 3 use the same layout at registers 19 and 22. Bits 9 and 8 are not defined (established, register pages 38 to 43).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15 | `c1ref` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | Reference select. 0 references the generator to the XTALI crystal or master clock input, with the sample rate from the hz register and the phase shiftable. 1 references it to the SYNC pin, with the sample phase locked and the hz and phase registers ignored (AD1843 REV.0 page 37). |
| 14 | `c1vid` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | Video lock mode, used only when the reference is the SYNC pin and written zero otherwise. 0 is normal lock with a bit clock. 1 is video lock, where the conversion rate comes from the clock modifier bits and no bit clock is produced (AD1843 REV.0 page 38). |
| 13 | `c1pllg` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | PLL loop gain. 0 selects finite loop gain, the nominal setting. 1 selects infinite gain, which may help locking to some SYNC inputs and may add conversion noise (AD1843 REV.0 page 38). |
| 12 | `c1p200` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | Adds 200 Hz to the BIT rate. The scaling order is an interpretation (see devices/mace_audio/mace-audio.md). |
| 11 | `c1x8_7` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | Scales the conversion rate by 8/7. |
| 10 | `c1c128` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | Scales the CONV output by 128. |
| 7:4 | `c1m_7_4` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | Conversion code, see the BIT and CONV table in devices/mace_audio/mace-audio.md. |
| 3:0 | `c1m_3_0` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | BIT code, see the BIT and CONV table in devices/mace_audio/mace-audio.md. |

### Register `clock1_hz`

Nominal rate of generator 1 in Hz. Reset is 48000 (established, register pages 28-50). Clock 2 and clock 3 use registers 20 and 23.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15:0 | `c1c` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |

### Register `clock1_phase`

Phase work for generator 1. A write replaces the remaining work. Units are 1/3000 of a conversion cycle (0.12 degrees). Direction 0 advances the phase and 1 retards it. Clock 2 and clock 3 use registers 21 and 24 (established, register pages 39, 42 and 45, and the phase section).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 8 | `c1pd` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 7:0 | `c1p` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |

### Register `clock2_mode`

Mode of generator 2, same layout and reset as clock1_mode (established, register pages 38 to 43). The source notes that a description citing registers 17 and 18 for clock 2 means 20 and 21 (inferred).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15 | `c2ref` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 14 | `c2vid` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 13 | `c2pllg` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 12 | `c2p200` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 11 | `c2x8_7` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 10 | `c2c128` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 7:4 | `c2m_7_4` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 3:0 | `c2m_3_0` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |

### Register `clock2_hz`

Nominal rate of generator 2 in Hz. Reset is 48000 (established, register pages 28-50).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15:0 | `c2c` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |

### Register `clock2_phase`

Phase work for generator 2, same units and direction rule as clock1_phase (established, register pages 39, 42 and 45).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 8 | `c2pd` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 7:0 | `c2p` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |

### Register `clock3_mode`

Mode of generator 3, same layout and reset as clock1_mode (established, register pages 38 to 43).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15 | `c3ref` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 14 | `c3vid` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 13 | `c3pllg` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 12 | `c3p200` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 11 | `c3x8_7` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 10 | `c3c128` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 7:4 | `c3m_7_4` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 3:0 | `c3m_3_0` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |

### Register `clock3_hz`

Nominal rate of generator 3 in Hz. Reset is 48000 (established, register pages 28-50).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15:0 | `c3c` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |

### Register `clock3_phase`

Phase work for generator 3, same units and direction rule as clock1_phase (established, register pages 39, 42 and 45).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 8 | `c3pd` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 7:0 | `c3p` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |

### Register `digital_filter`

Digital ADC source, resample filter and DAC mix mode. The resample filter and DAC mix mode change only while the converters they affect are off (established, register pages 28-50 and the constraints text).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15 | `drsflt` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 14 | `damix` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | Mixes the two DAC contributions into one stream before conversion. Requires both DACs off to change. |
| 9 | `da2flt` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 8 | `da1flt` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 7:6 | `daadr` | established | digital_source (analog=0, reserved=1, dac1=2, dac2=3) | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 5:4 | `daadl` | established | digital_source (analog=0, reserved=1, dac1=2, dac2=3) | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 1 | `adrflt` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 0 | `adlflt` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |

### Register `format_lock`

Sample format, mono mode, the frame-rate and SDFS options and the ADC lock. Bits 7 to 5 are the SCF, FRS and FRST controls (established, register pages 28-50 and the serial-frame section).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15 | `da2sm` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | Mono DAC2 mode: duplicates the left input and ignores the right. |
| 14 | `da1sm` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | Mono DAC1 mode: duplicates the left input and ignores the right. |
| 11:10 | `da2f` | established | pcm_format (unsigned8=0, signed16=1, mulaw=2, alaw=3) | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 9:8 | `da1f` | established | pcm_format (unsigned8=0, signed16=1, mulaw=2, alaw=3) | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 7 | `scf` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | Selects the 16.384 MHz serial clock instead of the 12.288 MHz reset clock. |
| 6 | `frs` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | 0 gives 32 serial slots per SDFS frame, 1 gives 16. |
| 5 | `frst` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | 1 requests an immediate change of the frame size, 0 applies it after the current frame. |
| 4 | `adtlk` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | ADC transmit lock mode. 1 sends a left and right ADC sample in a frame only when both are ready, so the pair stays together; 0 sends each as it becomes ready. Set it only while both ADCs are off and program both to the same rate once they are enabled. While it is set, enable and disable both ADCs together. |
| 3:2 | `adrf` | established | pcm_format (unsigned8=0, signed16=1, mulaw=2, alaw=3) | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 1:0 | `adlf` | established | pcm_format (unsigned8=0, signed16=1, mulaw=2, alaw=3) | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |

### Register `enables`

Power and enable bits for the converters, ADCs, analog paths and headphone output. Registers 1 to 15, 25 and 27 are held at reset while converter power-down is set (established, register pages 28-50).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15 | `dfree` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | Digital resource free. 1 leaves the digital resources of powered-down channels available to the enabled ones, which allows conversion rates above the 49 kHz limit with all four converters running. 0 powers them down completely. |
| 12 | `ddmen` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | DAC2-to-DAC1 mix enable and power down. 0 powers the mix down and clears register 3 (dac2_to_dac1_mix), which then cannot be written; 1 enables it. |
| 9 | `da2en` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 8 | `da1en` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 7 | `anaen` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 6 | `hpen` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | Powers only the stereo headphone driver. The mono output is separate. |
| 4 | `aamen` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 1 | `adren` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 0 | `adlen` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |

### Register `power_clock`

Converter power, auto-calibration, generator enables, clock output and the line input modes. Bit 15 is PDNI, which resets to 1. Clearing it starts converter startup. Auto-calibration cannot be cleared before the first completed startup (established, register pages 28-50 and the initialisation text).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15 | `pdni` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 14 | `acen` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 13 | `c3en` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 12 | `c2en` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 11 | `c1en` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 10 | `enclko` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | Drives the external CLKOUT pin. It does not gate the MACE serial clock. |
| 9:8 | `xctl` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | Drive the independent TTL outputs XCTL1 and XCTL0. They do not control the crystal oscillator. |
| 7 | `encv3` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | CONV3 pin enable. Zero three-states the pin. |
| 6 | `enbt3` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | BIT3 pin enable. Zero three-states the pin. |
| 5 | `encv2` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | CONV2 pin enable. Zero three-states the pin. |
| 4 | `enbt2` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | BIT2 pin enable. Zero three-states the pin. |
| 3 | `encv1` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | CONV1 pin enable. Zero three-states the pin. |
| 2 | `enbt1` | established |  | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. | BIT1 pin enable. Zero three-states the pin. |
| 1 | `linrsd` | established | line_mode (single_ended=0, differential=1) | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |
| 0 | `linlsd` | established | line_mode (single_ended=0, differential=1) | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |  |

## Enums

### Enum `analog_source`

ADC analog input selection, one per channel.

| Label | Value | Grade | Source |
|---|---|---|---|
| `line` | 0 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `mic` | 1 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `aux1` | 2 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `aux2` | 3 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `aux3` | 4 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `mono_in` | 5 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `dac1_out` | 6 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `dac2_out` | 7 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |

### Enum `clock_select`

Sample-rate source for a converter or ADC.

| Label | Value | Grade | Source |
|---|---|---|---|
| `fixed48k` | 0 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `gen1` | 1 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `gen2` | 2 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `gen3` | 3 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |

### Enum `digital_source`

ADC digital source. Code 1 is reserved.

| Label | Value | Grade | Source |
|---|---|---|---|
| `analog` | 0 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `reserved` | 1 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `dac1` | 2 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `dac2` | 3 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |

### Enum `gain_timing`

When a DAC gain change takes effect.

| Label | Value | Grade | Source |
|---|---|---|---|
| `zero_cross` | 0 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `immediate` | 1 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |

### Enum `line_mode`

Line input wiring for one channel.

| Label | Value | Grade | Source |
|---|---|---|---|
| `single_ended` | 0 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `differential` | 1 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |

### Enum `pcm_format`

Serial sample format of a converter or ADC.

| Label | Value | Grade | Source |
|---|---|---|---|
| `unsigned8` | 0 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `signed16` | 1 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `mulaw` | 2 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
| `alaw` | 3 | established | Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. Every register layout and reset value was checked against those pages. |
